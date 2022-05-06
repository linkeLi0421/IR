; ModuleID = '/llk/IR/net/ipv4/datagram.c_pt.bc'
source_filename = "../net/ipv4/datagram.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___ip4_datagram_connect:\09\09\09\09\09"
module asm "\09.asciz \09\22__ip4_datagram_connect\22\09\09\09\09\09"
module asm "__kstrtabns___ip4_datagram_connect:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ip4_datagram_connect:\09\09\09\09\09"
module asm "\09.asciz \09\22ip4_datagram_connect\22\09\09\09\09\09"
module asm "__kstrtabns_ip4_datagram_connect:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ip4_datagram_release_cb:\09\09\09\09\09"
module asm "\09.asciz \09\22ip4_datagram_release_cb\22\09\09\09\09\09"
module asm "__kstrtabns_ip4_datagram_release_cb:\09\09\09\09\09"
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
%struct.netns_ipv6 = type { %struct.dst_ops, %struct.netns_sysctl_ipv6, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.timer_list, ptr, ptr, %struct.list_head, %struct.rwlock_t, %struct.spinlock, i32, i32, i8, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, i32, %struct.anon.128, ptr, [60 x i8] }
%struct.dst_ops = type { i16, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [60 x i8], %struct.percpu_counter, [32 x i8] }
%struct.percpu_counter = type { %struct.raw_spinlock, i64, %struct.list_head, ptr }
%struct.netns_sysctl_ipv6 = type { ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i8, i32, i8, i8, i8, [8 x i32], ptr, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i8, i8 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32 }
%struct.hlist_node = type { ptr, ptr }
%struct.rwlock_t = type { %struct.arch_rwlock_t }
%struct.arch_rwlock_t = type { i32 }
%struct.anon.128 = type { %struct.hlist_head, %struct.spinlock, i32 }
%struct.netns_bpf = type { [2 x ptr], [2 x ptr], [2 x %struct.list_head] }
%struct.netns_xfrm = type { %struct.list_head, ptr, ptr, ptr, ptr, i32, i32, %struct.work_struct, %struct.list_head, ptr, i32, [3 x %struct.hlist_head], [3 x %struct.xfrm_policy_hash], [6 x i32], %struct.work_struct, %struct.xfrm_policy_hthresh, %struct.list_head, ptr, ptr, i32, i32, i32, i32, i8, ptr, [36 x i8], %struct.dst_ops, %struct.dst_ops, %struct.spinlock, %struct.seqcount_spinlock, %struct.seqcount_spinlock, %struct.spinlock, %struct.mutex, [28 x i8] }
%struct.xfrm_policy_hash = type { ptr, i32, i8, i8, i8, i8 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.xfrm_policy_hthresh = type { %struct.work_struct, %struct.seqlock_t, i8, i8, i8, i8 }
%struct.netns_can = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.spinlock, %struct.timer_list, ptr, ptr, %struct.hlist_head }
%struct.sock_common = type { %union.anon, %union.anon.0, %union.anon.1, i16, i8, i8, i32, %union.anon.3, ptr, %struct.possible_net_t, %struct.in6_addr, %struct.in6_addr, %struct.atomic64_t, %union.anon.165, [0 x i32], %union.anon.166, i16, i16, %union.anon.167, %struct.refcount_struct, [0 x i32], %union.anon.168 }
%union.anon = type { i64 }
%union.anon.0 = type { i32 }
%union.anon.1 = type { i32 }
%union.anon.3 = type { %struct.hlist_node }
%struct.possible_net_t = type {}
%struct.in6_addr = type { %union.anon.115 }
%union.anon.115 = type { [4 x i32] }
%struct.atomic64_t = type { i64 }
%union.anon.165 = type { i32 }
%union.anon.166 = type { %struct.hlist_node }
%union.anon.167 = type { i32 }
%union.anon.168 = type { i32 }
%struct.sock = type { %struct.sock_common, ptr, i32, i32, %struct.socket_lock_t, %struct.atomic_t, i32, %struct.sk_buff_head, %struct.sk_buff_head, %struct.anon.169, %struct.llist_head, i32, i32, i32, i32, i32, ptr, %union.anon.170, [2 x ptr], ptr, %struct.atomic_t, i32, i32, %struct.refcount_struct, i32, %union.anon.171, %struct.sk_buff_head, i32, i32, i32, i32, i32, %struct.timer_list, i32, i32, i32, i32, %struct.page_frag, i64, i32, i32, i32, i32, i8, i8, i16, i16, i16, i32, ptr, %struct.rwlock_t, i32, i32, i32, i32, %struct.kuid_t, i8, i16, %struct.spinlock, i32, ptr, ptr, i32, i64, %struct.seqlock_t, i16, i8, %struct.atomic_t, %struct.atomic_t, i8, i8, ptr, ptr, %struct.sock_cgroup_data, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.callback_head, %struct.netns_tracker }
%struct.socket_lock_t = type { %struct.spinlock, i32, %struct.wait_queue_head }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.anon.169 = type { %struct.atomic_t, i32, ptr, ptr }
%struct.llist_head = type { ptr }
%union.anon.170 = type { ptr }
%union.anon.171 = type { ptr }
%struct.sk_buff_head = type { %union.anon.65, i32, %struct.spinlock }
%union.anon.65 = type { %struct.anon.66 }
%struct.anon.66 = type { ptr, ptr }
%struct.page_frag = type { ptr, i16, i16 }
%struct.kuid_t = type { i32 }
%struct.sock_cgroup_data = type {}
%struct.callback_head = type { ptr, ptr }
%struct.netns_tracker = type {}
%struct.inet_sock = type { %struct.sock, ptr, i32, i16, i16, ptr, i16, i16, i8, i8, i8, i8, i16, i8, i8, i32, i32, i32, ptr, %struct.inet_cork_full }
%struct.inet_cork_full = type { %struct.inet_cork, %struct.flowi }
%struct.inet_cork = type { i32, i32, ptr, i32, i32, ptr, i8, i8, i16, i8, i16, i64, i32 }
%struct.flowi = type { %union.anon.123 }
%union.anon.123 = type { %struct.flowi6 }
%struct.flowi6 = type { %struct.flowi_common, %struct.in6_addr, %struct.in6_addr, i32, %union.flowi_uli, i32 }
%struct.flowi_common = type { i32, i32, i32, i8, i8, i8, i8, i32, %struct.kuid_t, %struct.flowi_tunnel, i32 }
%struct.flowi_tunnel = type { i64 }
%union.flowi_uli = type { i32 }
%struct.sockaddr_in = type { i16, i16, %struct.in_addr, [8 x i8] }
%struct.in_addr = type { i32 }
%struct.anon.124 = type { i16, i16 }
%struct.thread_info = type { i32, i32, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], [4 x i8], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.ipstats_mib = type { [37 x i64], %struct.u64_stats_sync }
%struct.u64_stats_sync = type { %struct.seqcount }
%struct.rtable = type { %struct.dst_entry, i32, i32, i16, i8, i8, i32, i8, %union.anon.180, i32, %struct.list_head, ptr }
%struct.dst_entry = type { ptr, ptr, i32, i32, ptr, ptr, ptr, i16, i16, i16, i16, i32, i32, ptr, %struct.callback_head, i16, i16, i32, %struct.atomic_t, %struct.netdevice_tracker }
%struct.netdevice_tracker = type {}
%union.anon.180 = type { %struct.in6_addr }
%struct.anon = type { i32, i32 }
%struct.proto = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i8, ptr, i32, i32, i32, i32, ptr, ptr, ptr, %union.anon.164, ptr, [32 x i8], %struct.list_head, ptr }
%union.anon.164 = type { ptr }
%struct.sock_reuseport = type { %struct.callback_head, i16, i16, i16, i32, i32, i8, ptr, [0 x ptr] }
%struct.flowi4 = type { %struct.flowi_common, i32, i32, %union.flowi_uli }
%struct.ip_options_rcu = type { %struct.callback_head, %struct.ip_options }
%struct.ip_options = type { i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, [0 x i8] }

@__kstrtab___ip4_datagram_connect = external dso_local constant [0 x i8], align 1
@__kstrtabns___ip4_datagram_connect = external dso_local constant [0 x i8], align 1
@__ksymtab___ip4_datagram_connect = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__ip4_datagram_connect to i32), ptr @__kstrtab___ip4_datagram_connect, ptr @__kstrtabns___ip4_datagram_connect }, section "___ksymtab+__ip4_datagram_connect", align 4
@__kstrtab_ip4_datagram_connect = external dso_local constant [0 x i8], align 1
@__kstrtabns_ip4_datagram_connect = external dso_local constant [0 x i8], align 1
@__ksymtab_ip4_datagram_connect = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ip4_datagram_connect to i32), ptr @__kstrtab_ip4_datagram_connect, ptr @__kstrtabns_ip4_datagram_connect }, section "___ksymtab+ip4_datagram_connect", align 4
@__kstrtab_ip4_datagram_release_cb = external dso_local constant [0 x i8], align 1
@__kstrtabns_ip4_datagram_release_cb = external dso_local constant [0 x i8], align 1
@__ksymtab_ip4_datagram_release_cb = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ip4_datagram_release_cb to i32), ptr @__kstrtab_ip4_datagram_release_cb, ptr @__kstrtabns_ip4_datagram_release_cb }, section "___ksymtab_gpl+ip4_datagram_release_cb", align 4
@init_net = external dso_local global %struct.net, align 64
@llvm.compiler.used = appending global [3 x ptr] [ptr @__ksymtab___ip4_datagram_connect, ptr @__ksymtab_ip4_datagram_connect, ptr @__ksymtab_ip4_datagram_release_cb], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__ip4_datagram_connect(ptr noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2) #0 {
  %4 = icmp ult i32 %2, 16
  br i1 %4, label %163, label %5

5:                                                ; preds = %3
  %6 = load i16, ptr %1, align 4
  %7 = icmp eq i16 %6, 2
  br i1 %7, label %8, label %163

8:                                                ; preds = %5
  %9 = getelementptr inbounds %struct.sock_common, ptr %0, i32 0, i32 16
  store i16 -1, ptr %9, align 4
  %10 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 29
  store i32 0, ptr %10, align 4
  %11 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 19
  tail call void asm sideeffect "dmb ish", "~{memory}"() #7, !srcloc !9
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %11) #7, !srcloc !10
  %12 = tail call { i32, i32 } asm sideeffect "@\09__xchg4\0A1:\09ldrex\09$0, [$3]\0A\09strex\09$1, $2, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,r,r,~{memory},~{cc}"(i32 0, ptr %11) #7, !srcloc !11
  %13 = extractvalue { i32, i32 } %12, 0
  %14 = inttoptr i32 %13 to ptr
  tail call void asm sideeffect "dmb ish", "~{memory}"() #7, !srcloc !12
  tail call void @dst_release(ptr noundef %14) #7
  %15 = getelementptr inbounds %struct.sock_common, ptr %0, i32 0, i32 6
  %16 = load i32, ptr %15, align 4
  %17 = getelementptr inbounds %struct.inet_sock, ptr %0, i32 0, i32 2
  %18 = load i32, ptr %17, align 4
  %19 = getelementptr inbounds %struct.sockaddr_in, ptr %1, i32 0, i32 2
  %20 = load i32, ptr %19, align 4
  %21 = and i32 %20, 240
  %22 = icmp eq i32 %21, 224
  br i1 %22, label %23, label %34

23:                                               ; preds = %8
  %24 = icmp eq i32 %16, 0
  br i1 %24, label %25, label %28

25:                                               ; preds = %23
  %26 = getelementptr inbounds %struct.inet_sock, ptr %0, i32 0, i32 16
  %27 = load i32, ptr %26, align 8
  br label %28

28:                                               ; preds = %25, %23
  %29 = phi i32 [ %27, %25 ], [ %16, %23 ]
  %30 = icmp eq i32 %18, 0
  br i1 %30, label %31, label %34

31:                                               ; preds = %28
  %32 = getelementptr inbounds %struct.inet_sock, ptr %0, i32 0, i32 17
  %33 = load i32, ptr %32, align 4
  br label %34

34:                                               ; preds = %31, %28, %8
  %35 = phi i32 [ %18, %28 ], [ %33, %31 ], [ %18, %8 ]
  %36 = phi i32 [ %29, %28 ], [ %29, %31 ], [ %16, %8 ]
  %37 = getelementptr inbounds %struct.inet_sock, ptr %0, i32 0, i32 19, i32 1
  %38 = getelementptr inbounds %struct.inet_sock, ptr %0, i32 0, i32 8
  %39 = load i8, ptr %38, align 4
  %40 = and i8 %39, 30
  %41 = getelementptr inbounds %struct.sock_common, ptr %0, i32 0, i32 13
  %42 = load volatile i32, ptr %41, align 4
  %43 = lshr i32 %42, 13
  %44 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 46
  %45 = load i16, ptr %44, align 4
  %46 = trunc i16 %45 to i8
  %47 = getelementptr inbounds %struct.inet_sock, ptr %0, i32 0, i32 6
  %48 = load i16, ptr %47, align 8
  %49 = getelementptr inbounds %struct.sockaddr_in, ptr %1, i32 0, i32 1
  %50 = load i16, ptr %49, align 2
  %51 = getelementptr inbounds %struct.inet_sock, ptr %0, i32 0, i32 12
  %52 = load i16, ptr %51, align 8
  %53 = trunc i16 %52 to i8
  %54 = lshr i8 %53, 5
  %55 = and i8 %54, 1
  %56 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 34
  %57 = load i32, ptr %56, align 8
  %58 = trunc i32 %43 to i8
  %59 = and i8 %58, 1
  %60 = or i8 %59, %40
  %61 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 55
  %62 = load i32, ptr %61, align 4
  store i32 %36, ptr %37, align 8
  %63 = getelementptr inbounds %struct.inet_sock, ptr %0, i32 0, i32 19, i32 1, i32 0, i32 0, i32 0, i32 1
  store i32 1, ptr %63, align 4
  %64 = getelementptr inbounds %struct.inet_sock, ptr %0, i32 0, i32 19, i32 1, i32 0, i32 0, i32 0, i32 2
  store i32 %57, ptr %64, align 8
  %65 = getelementptr inbounds %struct.inet_sock, ptr %0, i32 0, i32 19, i32 1, i32 0, i32 0, i32 0, i32 3
  store i8 %60, ptr %65, align 4
  %66 = getelementptr inbounds %struct.inet_sock, ptr %0, i32 0, i32 19, i32 1, i32 0, i32 0, i32 0, i32 4
  store i8 0, ptr %66, align 1
  %67 = getelementptr inbounds %struct.inet_sock, ptr %0, i32 0, i32 19, i32 1, i32 0, i32 0, i32 0, i32 5
  store i8 %46, ptr %67, align 2
  %68 = getelementptr inbounds %struct.inet_sock, ptr %0, i32 0, i32 19, i32 1, i32 0, i32 0, i32 0, i32 6
  store i8 %55, ptr %68, align 1
  %69 = getelementptr inbounds %struct.inet_sock, ptr %0, i32 0, i32 19, i32 1, i32 0, i32 0, i32 0, i32 7
  store i32 0, ptr %69, align 8
  %70 = getelementptr inbounds %struct.inet_sock, ptr %0, i32 0, i32 19, i32 1, i32 0, i32 0, i32 0, i32 9
  store i64 0, ptr %70, align 8
  %71 = getelementptr inbounds %struct.inet_sock, ptr %0, i32 0, i32 19, i32 1, i32 0, i32 0, i32 0, i32 8
  store i32 %62, ptr %71, align 4
  %72 = getelementptr inbounds %struct.inet_sock, ptr %0, i32 0, i32 19, i32 1, i32 0, i32 0, i32 1, i32 0, i32 0, i32 1
  store i32 %20, ptr %72, align 4
  %73 = getelementptr inbounds %struct.inet_sock, ptr %0, i32 0, i32 19, i32 1, i32 0, i32 0, i32 1
  store i32 %35, ptr %73, align 8
  %74 = getelementptr inbounds %struct.inet_sock, ptr %0, i32 0, i32 19, i32 1, i32 0, i32 0, i32 1, i32 0, i32 0, i32 2
  store i16 %50, ptr %74, align 8
  %75 = getelementptr inbounds %struct.anon.124, ptr %74, i32 0, i32 1
  store i16 %48, ptr %75, align 2
  %76 = getelementptr inbounds %struct.inet_sock, ptr %0, i32 0, i32 19, i32 1, i32 0, i32 0, i32 0, i32 10
  store i32 0, ptr %76, align 8
  %77 = icmp ne i32 %20, 0
  %78 = icmp ne i32 %35, 0
  %79 = and i1 %77, %78
  br i1 %79, label %84, label %80

80:                                               ; preds = %34
  %81 = tail call ptr @ip_route_output_key_hash(ptr noundef nonnull @init_net, ptr noundef %37, ptr noundef null) #7
  %82 = icmp ugt ptr %81, inttoptr (i32 -4096 to ptr)
  br i1 %82, label %86, label %83

83:                                               ; preds = %80
  tail call void @dst_release(ptr noundef %81) #7
  store i32 %36, ptr %37, align 8
  store i8 %60, ptr %65, align 4
  br label %84

84:                                               ; preds = %83, %34
  %85 = tail call ptr @ip_route_output_flow(ptr noundef nonnull @init_net, ptr noundef %37, ptr noundef %0) #7
  br label %86

86:                                               ; preds = %84, %80
  %87 = phi ptr [ %85, %84 ], [ %81, %80 ]
  %88 = icmp ugt ptr %87, inttoptr (i32 -4096 to ptr)
  br i1 %88, label %89, label %112

89:                                               ; preds = %86
  %90 = ptrtoint ptr %87 to i32
  %91 = icmp eq ptr %87, inttoptr (i32 -101 to ptr)
  br i1 %91, label %92, label %163

92:                                               ; preds = %89
  %93 = tail call ptr @llvm.thread.pointer() #7
  %94 = getelementptr inbounds %struct.thread_info, ptr %93, i32 0, i32 1
  %95 = load volatile i32, ptr %94, align 4
  %96 = add i32 %95, 512
  store volatile i32 %96, ptr %94, align 4
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !13
  %97 = load ptr, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 30), align 8
  %98 = ptrtoint ptr %97 to i32
  %99 = tail call i32 @llvm.read_register.i32(metadata !0) #7
  %100 = inttoptr i32 %99 to ptr
  %101 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %100) #6, !srcloc !14
  %102 = add i32 %101, %98
  %103 = inttoptr i32 %102 to ptr
  %104 = getelementptr inbounds %struct.ipstats_mib, ptr %103, i32 0, i32 1
  %105 = load i32, ptr %104, align 4
  %106 = add i32 %105, 1
  store i32 %106, ptr %104, align 4
  tail call void asm sideeffect "dmb ishst", "~{memory}"() #7, !srcloc !15
  %107 = getelementptr [37 x i64], ptr %103, i32 0, i32 15
  %108 = load i64, ptr %107, align 8
  %109 = add i64 %108, 1
  store i64 %109, ptr %107, align 8
  tail call void asm sideeffect "dmb ishst", "~{memory}"() #7, !srcloc !16
  %110 = load i32, ptr %104, align 4
  %111 = add i32 %110, 1
  store i32 %111, ptr %104, align 4
  tail call fastcc void @local_bh_enable()
  br label %163

112:                                              ; preds = %86
  %113 = getelementptr inbounds %struct.rtable, ptr %87, i32 0, i32 2
  %114 = load i32, ptr %113, align 4
  %115 = and i32 %114, 268435456
  %116 = icmp eq i32 %115, 0
  br i1 %116, label %122, label %117

117:                                              ; preds = %112
  %118 = load volatile i32, ptr %41, align 4
  %119 = and i32 %118, 64
  %120 = icmp eq i32 %119, 0
  br i1 %120, label %121, label %122

121:                                              ; preds = %117
  tail call void @dst_release(ptr noundef %87) #7
  br label %163

122:                                              ; preds = %117, %112
  %123 = load i32, ptr %17, align 4
  %124 = icmp eq i32 %123, 0
  br i1 %124, label %125, label %127

125:                                              ; preds = %122
  %126 = load i32, ptr %73, align 8
  store i32 %126, ptr %17, align 4
  br label %127

127:                                              ; preds = %125, %122
  %128 = getelementptr inbounds %struct.anon, ptr %0, i32 0, i32 1
  %129 = load i32, ptr %128, align 4
  %130 = icmp eq i32 %129, 0
  br i1 %130, label %131, label %139

131:                                              ; preds = %127
  %132 = load i32, ptr %73, align 8
  store i32 %132, ptr %128, align 4
  %133 = getelementptr inbounds %struct.sock_common, ptr %0, i32 0, i32 8
  %134 = load ptr, ptr %133, align 8
  %135 = getelementptr inbounds %struct.proto, ptr %134, i32 0, i32 22
  %136 = load ptr, ptr %135, align 4
  %137 = icmp eq ptr %136, null
  br i1 %137, label %139, label %138

138:                                              ; preds = %131
  tail call void %136(ptr noundef %0) #7
  br label %139

139:                                              ; preds = %138, %131, %127
  %140 = load i32, ptr %72, align 4
  store i32 %140, ptr %0, align 8
  %141 = load i16, ptr %49, align 2
  %142 = getelementptr inbounds %struct.sock_common, ptr %0, i32 0, i32 2
  store i16 %141, ptr %142, align 4
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !17
  %143 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 81
  %144 = load volatile ptr, ptr %143, align 4
  %145 = icmp eq ptr %144, null
  br i1 %145, label %150, label %146

146:                                              ; preds = %139
  %147 = getelementptr inbounds %struct.sock_reuseport, ptr %144, i32 0, i32 6
  %148 = load i8, ptr %147, align 4
  %149 = or i8 %148, 2
  store i8 %149, ptr %147, align 4
  br label %150

150:                                              ; preds = %146, %139
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !18
  %151 = getelementptr inbounds %struct.sock_common, ptr %0, i32 0, i32 4
  store volatile i8 1, ptr %151, align 2
  %152 = tail call i32 @prandom_u32() #7
  %153 = icmp eq i32 %152, 0
  %154 = select i1 %153, i32 1, i32 %152
  %155 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 42
  store volatile i32 %154, ptr %155, align 4
  %156 = tail call i32 @prandom_u32() #7
  %157 = trunc i32 %156 to i16
  %158 = getelementptr inbounds %struct.inet_sock, ptr %0, i32 0, i32 7
  store i16 %157, ptr %158, align 2
  store i16 -1, ptr %9, align 4
  store i32 0, ptr %10, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #7, !srcloc !9
  %159 = ptrtoint ptr %87 to i32
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %11) #7, !srcloc !10
  %160 = tail call { i32, i32 } asm sideeffect "@\09__xchg4\0A1:\09ldrex\09$0, [$3]\0A\09strex\09$1, $2, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,r,r,~{memory},~{cc}"(i32 %159, ptr %11) #7, !srcloc !11
  %161 = extractvalue { i32, i32 } %160, 0
  %162 = inttoptr i32 %161 to ptr
  tail call void asm sideeffect "dmb ish", "~{memory}"() #7, !srcloc !12
  tail call void @dst_release(ptr noundef %162) #7
  br label %163

163:                                              ; preds = %150, %121, %92, %89, %5, %3
  %164 = phi i32 [ -22, %3 ], [ -97, %5 ], [ -101, %92 ], [ %90, %89 ], [ 0, %150 ], [ -13, %121 ]
  ret i32 %164
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @local_bh_enable() #2 {
  br label %1

1:                                                ; preds = %0
  tail call void @__local_bh_enable_ip(i32 noundef ptrtoint (ptr blockaddress(@local_bh_enable, %1) to i32), i32 noundef 512) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @prandom_u32() local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @ip4_datagram_connect(ptr noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2) #0 {
  tail call void @lock_sock_nested(ptr noundef %0, i32 noundef 0) #7
  %4 = tail call i32 @__ip4_datagram_connect(ptr noundef %0, ptr noundef %1, i32 noundef %2)
  tail call void @release_sock(ptr noundef %0) #7
  ret i32 %4
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @release_sock(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @ip4_datagram_release_cb(ptr noundef %0) #0 {
  %2 = alloca %struct.flowi4, align 8
  %3 = load i32, ptr %0, align 8
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %2) #7
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(56) %2, i8 0, i32 56, i1 false), !annotation !19
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !17
  %4 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 19
  %5 = load volatile ptr, ptr %4, align 8
  %6 = icmp eq ptr %5, null
  br i1 %6, label %18, label %7

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.dst_entry, ptr %5, i32 0, i32 8
  %9 = load i16, ptr %8, align 2
  %10 = icmp eq i16 %9, 0
  br i1 %10, label %18, label %11

11:                                               ; preds = %7
  %12 = getelementptr inbounds %struct.dst_entry, ptr %5, i32 0, i32 1
  %13 = load ptr, ptr %12, align 4
  %14 = getelementptr inbounds %struct.dst_ops, ptr %13, i32 0, i32 3
  %15 = load ptr, ptr %14, align 4
  %16 = tail call ptr %15(ptr noundef nonnull %5, i32 noundef 0) #7
  %17 = icmp eq ptr %16, null
  br i1 %17, label %19, label %18

18:                                               ; preds = %11, %7, %1
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !18
  br label %90

19:                                               ; preds = %11
  %20 = getelementptr inbounds %struct.inet_sock, ptr %0, i32 0, i32 5
  %21 = load volatile ptr, ptr %20, align 4
  %22 = icmp eq ptr %21, null
  br i1 %22, label %30, label %23

23:                                               ; preds = %19
  %24 = getelementptr inbounds %struct.ip_options_rcu, ptr %21, i32 0, i32 1, i32 3
  %25 = load i8, ptr %24, align 1
  %26 = icmp eq i8 %25, 0
  br i1 %26, label %30, label %27

27:                                               ; preds = %23
  %28 = getelementptr inbounds %struct.ip_options_rcu, ptr %21, i32 0, i32 1
  %29 = load i32, ptr %28, align 4
  br label %30

30:                                               ; preds = %27, %23, %19
  %31 = phi i32 [ %29, %27 ], [ %3, %23 ], [ %3, %19 ]
  %32 = getelementptr inbounds %struct.inet_sock, ptr %0, i32 0, i32 2
  %33 = load i32, ptr %32, align 4
  %34 = getelementptr inbounds %struct.sock_common, ptr %0, i32 0, i32 2
  %35 = load i16, ptr %34, align 4
  %36 = getelementptr inbounds %struct.inet_sock, ptr %0, i32 0, i32 6
  %37 = load i16, ptr %36, align 8
  %38 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 46
  %39 = load i16, ptr %38, align 4
  %40 = trunc i16 %39 to i8
  %41 = getelementptr inbounds %struct.inet_sock, ptr %0, i32 0, i32 8
  %42 = load i8, ptr %41, align 4
  %43 = and i8 %42, 30
  %44 = getelementptr inbounds %struct.sock_common, ptr %0, i32 0, i32 13
  %45 = load volatile i32, ptr %44, align 4
  %46 = lshr i32 %45, 13
  %47 = trunc i32 %46 to i8
  %48 = and i8 %47, 1
  %49 = or i8 %48, %43
  %50 = getelementptr inbounds %struct.sock_common, ptr %0, i32 0, i32 6
  %51 = load i32, ptr %50, align 4
  %52 = icmp eq ptr %0, null
  br i1 %52, label %67, label %53

53:                                               ; preds = %30
  %54 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 34
  %55 = load i32, ptr %54, align 8
  %56 = getelementptr inbounds %struct.inet_sock, ptr %0, i32 0, i32 12
  %57 = load i16, ptr %56, align 8
  %58 = and i16 %57, 40
  %59 = icmp ne i16 %58, 0
  %60 = zext i1 %59 to i8
  %61 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 55
  %62 = load i32, ptr %61, align 4
  store i32 %51, ptr %2, align 8
  %63 = getelementptr inbounds %struct.flowi_common, ptr %2, i32 0, i32 6
  store i8 %60, ptr %63, align 1
  %64 = getelementptr inbounds %struct.flowi_common, ptr %2, i32 0, i32 7
  store i32 0, ptr %64, align 8
  %65 = getelementptr inbounds %struct.flowi_common, ptr %2, i32 0, i32 9
  store i64 0, ptr %65, align 8
  %66 = getelementptr inbounds %struct.flowi_common, ptr %2, i32 0, i32 8
  store i32 %62, ptr %66, align 4
  br label %69

67:                                               ; preds = %30
  store i32 %51, ptr %2, align 8
  %68 = getelementptr inbounds %struct.flowi_common, ptr %2, i32 0, i32 6
  call void @llvm.memset.p0.i64(ptr noundef align 1 dereferenceable(17) %68, i8 0, i64 17, i1 false) #7
  br label %69

69:                                               ; preds = %67, %53
  %70 = phi i32 [ 0, %67 ], [ %55, %53 ]
  %71 = getelementptr inbounds %struct.flowi_common, ptr %2, i32 0, i32 1
  store i32 1, ptr %71, align 4
  %72 = getelementptr inbounds %struct.flowi_common, ptr %2, i32 0, i32 2
  store i32 %70, ptr %72, align 8
  %73 = getelementptr inbounds %struct.flowi_common, ptr %2, i32 0, i32 3
  store i8 %49, ptr %73, align 4
  %74 = getelementptr inbounds %struct.flowi_common, ptr %2, i32 0, i32 4
  store i8 0, ptr %74, align 1
  %75 = getelementptr inbounds %struct.flowi_common, ptr %2, i32 0, i32 5
  store i8 %40, ptr %75, align 2
  %76 = getelementptr inbounds %struct.flowi4, ptr %2, i32 0, i32 2
  store i32 %31, ptr %76, align 4
  %77 = getelementptr inbounds %struct.flowi4, ptr %2, i32 0, i32 1
  store i32 %33, ptr %77, align 8
  %78 = getelementptr inbounds %struct.flowi4, ptr %2, i32 0, i32 3
  store i16 %35, ptr %78, align 8
  %79 = getelementptr inbounds %struct.anon.124, ptr %78, i32 0, i32 1
  store i16 %37, ptr %79, align 2
  %80 = getelementptr inbounds %struct.flowi_common, ptr %2, i32 0, i32 10
  store i32 0, ptr %80, align 8
  %81 = call ptr @ip_route_output_flow(ptr noundef nonnull @init_net, ptr noundef nonnull %2, ptr noundef %0) #7
  %82 = icmp ugt ptr %81, inttoptr (i32 -4096 to ptr)
  %83 = select i1 %82, ptr null, ptr %81
  %84 = getelementptr inbounds %struct.sock_common, ptr %0, i32 0, i32 16
  store i16 -1, ptr %84, align 4
  %85 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 29
  store i32 0, ptr %85, align 4
  call void asm sideeffect "dmb ish", "~{memory}"() #7, !srcloc !9
  %86 = ptrtoint ptr %83 to i32
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %4) #7, !srcloc !10
  %87 = call { i32, i32 } asm sideeffect "@\09__xchg4\0A1:\09ldrex\09$0, [$3]\0A\09strex\09$1, $2, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,r,r,~{memory},~{cc}"(i32 %86, ptr %4) #7, !srcloc !11
  %88 = extractvalue { i32, i32 } %87, 0
  %89 = inttoptr i32 %88 to ptr
  call void asm sideeffect "dmb ish", "~{memory}"() #7, !srcloc !12
  call void @dst_release(ptr noundef %89) #7
  call void asm sideeffect "", "~{memory}"() #7, !srcloc !18
  br label %90

90:                                               ; preds = %69, %18
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %2) #7
  ret void
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ip_route_output_flow(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ip_route_output_key_hash(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.thread.pointer() #5

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @__local_bh_enable_ip(i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @dst_release(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_sock_nested(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #4

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { argmemonly nofree nounwind willreturn writeonly }
attributes #5 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #6 = { nounwind readonly }
attributes #7 = { nounwind }

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
!9 = !{i64 2155291926}
!10 = !{i64 542901, i64 2148032872, i64 2148032898, i64 2148032945, i64 2148032967, i64 2148032995, i64 2148033015}
!11 = !{i64 551551, i64 551568, i64 551592, i64 551618, i64 551636}
!12 = !{i64 2155292245}
!13 = !{i64 2148859551}
!14 = !{i64 467279}
!15 = !{i64 2149383301}
!16 = !{i64 2149383602}
!17 = !{i64 2149045781}
!18 = !{i64 2149045998}
!19 = !{!"auto-init"}
