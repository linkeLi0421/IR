; ModuleID = '/llk/IR/net/ipv6/ping.c_pt.bc'
source_filename = "../net/ipv6/ping.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_pingv6_prot:\09\09\09\09\09"
module asm "\09.asciz \09\22pingv6_prot\22\09\09\09\09\09"
module asm "__kstrtabns_pingv6_prot:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.proto = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i8, ptr, i32, i32, i32, i32, ptr, ptr, ptr, %union.anon.131, ptr, [32 x i8], %struct.list_head, ptr }
%union.anon.131 = type { ptr }
%struct.list_head = type { ptr, ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.pernet_operations = type { %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32 }
%struct.pingv6_ops = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.inet_protosw = type { %struct.list_head, i16, i16, ptr, ptr, i8 }
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
%struct.netns_ipv6 = type { %struct.dst_ops, %struct.netns_sysctl_ipv6, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.timer_list, ptr, ptr, %struct.list_head, %struct.rwlock_t, %struct.spinlock, i32, i32, i8, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, i32, %struct.anon.96, ptr, [60 x i8] }
%struct.dst_ops = type { i16, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [60 x i8], %struct.percpu_counter, [32 x i8] }
%struct.percpu_counter = type { %struct.raw_spinlock, i64, %struct.list_head, ptr }
%struct.netns_sysctl_ipv6 = type { ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i8, i32, i8, i8, i8, [8 x i32], ptr, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i8, i8 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32 }
%struct.hlist_node = type { ptr, ptr }
%struct.rwlock_t = type { %struct.arch_rwlock_t }
%struct.arch_rwlock_t = type { i32 }
%struct.anon.96 = type { %struct.hlist_head, %struct.spinlock, i32 }
%struct.netns_bpf = type { [2 x ptr], [2 x ptr], [2 x %struct.list_head] }
%struct.netns_xfrm = type { %struct.list_head, ptr, ptr, ptr, ptr, i32, i32, %struct.work_struct, %struct.list_head, ptr, i32, [3 x %struct.hlist_head], [3 x %struct.xfrm_policy_hash], [6 x i32], %struct.work_struct, %struct.xfrm_policy_hthresh, %struct.list_head, ptr, ptr, i32, i32, i32, i32, i8, ptr, [36 x i8], %struct.dst_ops, %struct.dst_ops, %struct.spinlock, %struct.seqcount_spinlock, %struct.seqcount_spinlock, %struct.spinlock, %struct.mutex, [28 x i8] }
%struct.xfrm_policy_hash = type { ptr, i32, i8, i8, i8, i8 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.xfrm_policy_hthresh = type { %struct.work_struct, %struct.seqlock_t, i8, i8, i8, i8 }
%struct.netns_can = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.spinlock, %struct.timer_list, ptr, ptr, %struct.hlist_head }
%struct.seq_operations = type { ptr, ptr, ptr, ptr }
%struct.proto_ops = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.icmp6hdr = type { i8, i8, i16, %union.anon.148 }
%union.anon.148 = type { [1 x i32] }
%struct.flowi6 = type { %struct.flowi_common, %struct.in6_addr, %struct.in6_addr, i32, %union.flowi_uli, i32 }
%struct.flowi_common = type { i32, i32, i32, i8, i8, i8, i8, i32, %struct.kuid_t, %struct.flowi_tunnel, i32 }
%struct.kuid_t = type { i32 }
%struct.flowi_tunnel = type { i64 }
%struct.in6_addr = type { %union.anon.79 }
%union.anon.79 = type { [4 x i32] }
%union.flowi_uli = type { i32 }
%struct.pingfakehdr = type { %struct.icmphdr, ptr, i16, i32 }
%struct.icmphdr = type { i8, i8, i16, %union.anon.149 }
%union.anon.149 = type { i32 }
%struct.ipcm6_cookie = type { %struct.sockcm_cookie, i16, i16, i16, i8, ptr }
%struct.sockcm_cookie = type { i64, i32, i16 }
%struct.sock_common = type { %union.anon, %union.anon.0, %union.anon.1, i16, i8, i8, i32, %union.anon.3, ptr, %struct.possible_net_t, %struct.in6_addr, %struct.in6_addr, %struct.atomic64_t, %union.anon.132, [0 x i32], %union.anon.133, i16, i16, %union.anon.134, %struct.refcount_struct, [0 x i32], %union.anon.135 }
%union.anon = type { i64 }
%union.anon.0 = type { i32 }
%union.anon.1 = type { i32 }
%union.anon.3 = type { %struct.hlist_node }
%struct.possible_net_t = type {}
%struct.atomic64_t = type { i64 }
%union.anon.132 = type { i32 }
%union.anon.133 = type { %struct.hlist_node }
%union.anon.134 = type { i32 }
%union.anon.135 = type { i32 }
%struct.inet_sock = type { %struct.sock, ptr, i32, i16, i16, ptr, i16, i16, i8, i8, i8, i8, i16, i8, i8, i32, i32, i32, ptr, %struct.inet_cork_full }
%struct.sock = type { %struct.sock_common, ptr, i32, i32, %struct.socket_lock_t, %struct.atomic_t, i32, %struct.sk_buff_head, %struct.sk_buff_head, %struct.anon.136, %struct.llist_head, i32, i32, i32, i32, i32, ptr, %union.anon.137, [2 x ptr], ptr, %struct.atomic_t, i32, i32, %struct.refcount_struct, i32, %union.anon.138, %struct.sk_buff_head, i32, i32, i32, i32, i32, %struct.timer_list, i32, i32, i32, i32, %struct.page_frag, i64, i32, i32, i32, i32, i8, i8, i16, i16, i16, i32, ptr, %struct.rwlock_t, i32, i32, i32, i32, %struct.kuid_t, i8, i16, %struct.spinlock, i32, ptr, ptr, i32, i64, %struct.seqlock_t, i16, i8, %struct.atomic_t, %struct.atomic_t, i8, i8, ptr, ptr, %struct.sock_cgroup_data, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.callback_head, %struct.netns_tracker }
%struct.socket_lock_t = type { %struct.spinlock, i32, %struct.wait_queue_head }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.anon.136 = type { %struct.atomic_t, i32, ptr, ptr }
%struct.llist_head = type { ptr }
%union.anon.137 = type { ptr }
%union.anon.138 = type { ptr }
%struct.sk_buff_head = type { %union.anon.65, i32, %struct.spinlock }
%union.anon.65 = type { %struct.anon.66 }
%struct.anon.66 = type { ptr, ptr }
%struct.page_frag = type { ptr, i16, i16 }
%struct.sock_cgroup_data = type {}
%struct.callback_head = type { ptr, ptr }
%struct.netns_tracker = type {}
%struct.inet_cork_full = type { %struct.inet_cork, %struct.flowi }
%struct.inet_cork = type { i32, i32, ptr, i32, i32, ptr, i8, i8, i16, i8, i16, i64, i32 }
%struct.flowi = type { %union.anon.91 }
%union.anon.91 = type { %struct.flowi6 }
%struct.msghdr = type { ptr, i32, %struct.iov_iter, %union.anon.130, i8, i32, i32, ptr }
%struct.iov_iter = type { i8, i8, i8, i32, i32, %union.anon.4, %union.anon.128 }
%union.anon.4 = type { ptr }
%union.anon.128 = type { i64 }
%union.anon.130 = type { ptr }
%struct.sockaddr_in6 = type { i16, i16, i32, %struct.in6_addr, i32 }
%struct.ipv6_pinfo = type { %struct.in6_addr, %struct.in6_pktinfo, ptr, i32, i32, i32, i32, i32, %union.anon.145, i16, i8, i8, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.inet6_cork }
%struct.in6_pktinfo = type { %struct.in6_addr, i32 }
%union.anon.145 = type { %struct.anon.146 }
%struct.anon.146 = type { i16 }
%struct.inet6_cork = type { ptr, i8, i8 }
%struct.anon.93 = type { i8, i8 }
%struct.icmpv6_echo = type { i16, i16 }
%struct.anon.150 = type { i16, i16 }
%struct.rt6_info = type { %struct.dst_entry, ptr, i32, %struct.rt6key, %struct.rt6key, %struct.in6_addr, ptr, i32, %struct.list_head, ptr, i16 }
%struct.dst_entry = type { ptr, ptr, i32, i32, ptr, ptr, ptr, i16, i16, i16, i16, i32, i32, ptr, %struct.callback_head, i16, i16, i32, %struct.atomic_t, %struct.netdevice_tracker }
%struct.netdevice_tracker = type {}
%struct.rt6key = type { %struct.in6_addr, i32 }
%struct.inet6_dev = type { ptr, %struct.netdevice_tracker, %struct.list_head, ptr, ptr, i8, i8, i8, i8, i32, i32, i32, i32, %struct.delayed_work, %struct.delayed_work, %struct.delayed_work, %struct.delayed_work, %struct.delayed_work, %struct.sk_buff_head, %struct.sk_buff_head, %struct.spinlock, %struct.spinlock, %struct.mutex, ptr, %struct.rwlock_t, %struct.refcount_struct, i32, i32, i32, %struct.list_head, %struct.in6_addr, ptr, %struct.ipv6_devconf, %struct.ipv6_devstat, %struct.timer_list, i32, i8, i32, %struct.callback_head, i32 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.ipv6_devconf = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.ipv6_stable_secret, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, ptr }
%struct.ipv6_stable_secret = type { i8, %struct.in6_addr }
%struct.ipv6_devstat = type { ptr, ptr, ptr, ptr }
%struct.seq_file = type { ptr, i32, i32, i32, i32, i64, i64, %struct.mutex, ptr, i32, ptr, ptr }
%struct.ping_iter_state = type { %struct.seq_net_private, i32, i16 }
%struct.seq_net_private = type {}

@pingv6_prot = dso_local global %struct.proto { ptr @ping_close, ptr null, ptr @ip6_datagram_connect_v6_only, ptr @__udp_disconnect, ptr null, ptr null, ptr @ping_init_sock, ptr null, ptr null, ptr @ipv6_setsockopt, ptr @ipv6_getsockopt, ptr null, ptr @ping_v6_sendmsg, ptr @ping_recvmsg, ptr null, ptr @ping_bind, ptr null, ptr @ping_queue_rcv_skb, ptr null, ptr null, ptr @ping_hash, ptr @ping_unhash, ptr null, ptr @ping_get_port, ptr @ping_unhash, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, i32 0, i8 0, ptr null, i32 856, i32 0, i32 0, i32 0, ptr null, ptr null, ptr null, %union.anon.131 zeroinitializer, ptr null, [32 x i8] c"PINGv6\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", %struct.list_head zeroinitializer, ptr null }, align 4
@__kstrtab_pingv6_prot = external dso_local constant [0 x i8], align 1
@__kstrtabns_pingv6_prot = external dso_local constant [0 x i8], align 1
@__ksymtab_pingv6_prot = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @pingv6_prot to i32), ptr @__kstrtab_pingv6_prot, ptr @__kstrtabns_pingv6_prot }, section "___ksymtab_gpl+pingv6_prot", align 4
@ping_v6_net_ops = internal global %struct.pernet_operations { %struct.list_head zeroinitializer, ptr @ping_v6_proc_init_net, ptr null, ptr @ping_v6_proc_exit_net, ptr null, ptr null, i32 0 }, align 4
@pingv6_ops = external dso_local local_unnamed_addr global %struct.pingv6_ops, align 4
@pingv6_protosw = internal global %struct.inet_protosw { %struct.list_head zeroinitializer, i16 2, i16 58, ptr @pingv6_prot, ptr @inet6_sockraw_ops, i8 1 }, align 4
@init_net = external dso_local local_unnamed_addr global %struct.net, align 64
@.str = private unnamed_addr constant [6 x i8] c"icmp6\00", align 1
@ping_v6_seq_ops = internal constant %struct.seq_operations { ptr @ping_v6_seq_start, ptr @ping_seq_stop, ptr @ping_seq_next, ptr @ping_v6_seq_show }, align 4
@.str.1 = private unnamed_addr constant [164 x i8] c"  sl  local_address                         remote_address                        st tx_queue rx_queue tr tm->when retrnsmt   uid  timeout inode ref pointer drops\0A\00", align 1
@inet6_sockraw_ops = external dso_local constant %struct.proto_ops, align 4
@llvm.compiler.used = appending global [1 x ptr] [ptr @__ksymtab_pingv6_prot], section "llvm.metadata"

; Function Attrs: null_pointer_is_valid
declare dso_local void @ping_close(ptr noundef, i32 noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ip6_datagram_connect_v6_only(ptr noundef, ptr noundef, i32 noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__udp_disconnect(ptr noundef, i32 noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ping_init_sock(ptr noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ipv6_setsockopt(ptr noundef, i32 noundef, i32 noundef, [2 x i32], i32 noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ipv6_getsockopt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) #0

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ping_v6_sendmsg(ptr noundef %0, ptr noundef %1, i32 noundef %2) #1 {
  %4 = alloca %struct.icmp6hdr, align 8
  %5 = alloca %struct.flowi6, align 8
  %6 = alloca %struct.pingfakehdr, align 4
  %7 = alloca %struct.ipcm6_cookie, align 8
  %8 = getelementptr inbounds %struct.sock_common, ptr %0, i32 0, i32 4
  %9 = load volatile i8, ptr %8, align 2
  %10 = zext i8 %9 to i32
  %11 = shl nuw i32 1, %10
  %12 = and i32 %11, -4161
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %17, label %14

14:                                               ; preds = %3
  %15 = getelementptr inbounds %struct.inet_sock, ptr %0, i32 0, i32 1
  %16 = load ptr, ptr %15, align 8
  br label %17

17:                                               ; preds = %14, %3
  %18 = phi ptr [ %16, %14 ], [ null, %3 ]
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #10
  store i64 0, ptr %4, align 8, !annotation !9
  call void @llvm.lifetime.start.p0(i64 88, ptr nonnull %5) #10
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %6) #10
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(20) %6, i8 0, i32 20, i1 false), !annotation !9
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %7) #10
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(32) %7, i8 0, i32 32, i1 false), !annotation !9
  %19 = call i32 @ping_common_sendmsg(i32 noundef 10, ptr noundef %1, i32 noundef %2, ptr noundef nonnull %4, i32 noundef 8) #10
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %198

21:                                               ; preds = %17
  %22 = load ptr, ptr %1, align 8
  %23 = icmp eq ptr %22, null
  br i1 %23, label %42, label %24

24:                                               ; preds = %21
  %25 = getelementptr inbounds %struct.msghdr, ptr %1, i32 0, i32 1
  %26 = load i32, ptr %25, align 4
  %27 = icmp ult i32 %26, 28
  br i1 %27, label %198, label %28

28:                                               ; preds = %24
  %29 = load i16, ptr %22, align 4
  %30 = icmp eq i16 %29, 10
  br i1 %30, label %31, label %198

31:                                               ; preds = %28
  %32 = getelementptr inbounds %struct.sockaddr_in6, ptr %22, i32 0, i32 3
  %33 = call i32 @__ipv6_addr_type(ptr noundef %32) #10
  %34 = and i32 %33, 32
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %36, label %47

36:                                               ; preds = %31
  %37 = and i32 %33, 2
  %38 = icmp ne i32 %37, 0
  %39 = and i32 %33, 48
  %40 = icmp ne i32 %39, 0
  %41 = and i1 %38, %40
  br i1 %41, label %47, label %51

42:                                               ; preds = %21
  %43 = load volatile i8, ptr %8, align 2
  %44 = icmp eq i8 %43, 1
  br i1 %44, label %45, label %198

45:                                               ; preds = %42
  %46 = getelementptr inbounds %struct.sock_common, ptr %0, i32 0, i32 10
  br label %51

47:                                               ; preds = %36, %31
  %48 = getelementptr inbounds %struct.sockaddr_in6, ptr %22, i32 0, i32 4
  %49 = load i32, ptr %48, align 4
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %51, label %68

51:                                               ; preds = %47, %45, %36
  %52 = phi ptr [ %46, %45 ], [ %32, %47 ], [ %32, %36 ]
  %53 = getelementptr inbounds %struct.sock_common, ptr %0, i32 0, i32 6
  %54 = load i32, ptr %53, align 4
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %56, label %68

56:                                               ; preds = %51
  %57 = getelementptr inbounds %struct.ipv6_pinfo, ptr %18, i32 0, i32 1, i32 1
  %58 = load i32, ptr %57, align 4
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %60, label %68

60:                                               ; preds = %56
  %61 = load i32, ptr %52, align 4
  %62 = and i32 %61, 255
  %63 = icmp eq i32 %62, 255
  %64 = getelementptr inbounds %struct.ipv6_pinfo, ptr %18, i32 0, i32 6
  %65 = getelementptr inbounds %struct.ipv6_pinfo, ptr %18, i32 0, i32 7
  %66 = select i1 %63, ptr %65, ptr %64
  %67 = load i32, ptr %66, align 4
  br label %68

68:                                               ; preds = %60, %56, %51, %47
  %69 = phi ptr [ %52, %56 ], [ %52, %51 ], [ %32, %47 ], [ %52, %60 ]
  %70 = phi i32 [ %58, %56 ], [ %54, %51 ], [ %49, %47 ], [ %67, %60 ]
  %71 = call i32 @__ipv6_addr_type(ptr noundef %69) #10
  %72 = and i32 %71, 32
  %73 = icmp eq i32 %72, 0
  br i1 %73, label %74, label %80

74:                                               ; preds = %68
  %75 = and i32 %71, 2
  %76 = icmp eq i32 %75, 0
  %77 = and i32 %71, 48
  %78 = icmp eq i32 %77, 0
  %79 = or i1 %76, %78
  br label %80

80:                                               ; preds = %74, %68
  %81 = phi i1 [ false, %68 ], [ %79, %74 ]
  %82 = icmp ne i32 %70, 0
  %83 = select i1 %81, i1 true, i1 %82
  %84 = and i32 %71, 4096
  %85 = icmp eq i32 %84, 0
  %86 = and i1 %85, %83
  br i1 %86, label %87, label %198

87:                                               ; preds = %80
  br i1 %82, label %88, label %94

88:                                               ; preds = %87
  %89 = getelementptr inbounds %struct.sock_common, ptr %0, i32 0, i32 6
  %90 = load i32, ptr %89, align 4
  %91 = icmp eq i32 %90, 0
  %92 = icmp eq i32 %70, %90
  %93 = select i1 %91, i1 true, i1 %92
  br i1 %93, label %94, label %198

94:                                               ; preds = %88, %87
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(88) %5, i8 0, i32 88, i1 false)
  %95 = getelementptr inbounds %struct.flowi_common, ptr %5, i32 0, i32 5
  store i8 58, ptr %95, align 2
  %96 = getelementptr inbounds %struct.flowi6, ptr %5, i32 0, i32 2
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 8 dereferenceable(16) %96, ptr noundef align 4 dereferenceable(16) %18, i32 16, i1 false)
  %97 = getelementptr inbounds %struct.flowi6, ptr %5, i32 0, i32 1
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 8 dereferenceable(16) %97, ptr noundef align 4 dereferenceable(16) %69, i32 16, i1 false)
  store i32 %70, ptr %5, align 8
  %98 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 34
  %99 = load i32, ptr %98, align 8
  %100 = getelementptr inbounds %struct.flowi_common, ptr %5, i32 0, i32 2
  store i32 %99, ptr %100, align 8
  %101 = getelementptr inbounds %struct.flowi_common, ptr %5, i32 0, i32 8
  %102 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 55
  %103 = load i32, ptr %102, align 4
  store i32 %103, ptr %101, align 4
  %104 = load i8, ptr %4, align 8
  %105 = getelementptr inbounds %struct.flowi6, ptr %5, i32 0, i32 4
  store i8 %104, ptr %105, align 4
  %106 = getelementptr inbounds %struct.icmp6hdr, ptr %4, i32 0, i32 1
  %107 = load i8, ptr %106, align 1
  %108 = getelementptr inbounds %struct.anon.93, ptr %105, i32 0, i32 1
  store i8 %107, ptr %108, align 1
  %109 = getelementptr inbounds %struct.ipv6_pinfo, ptr %18, i32 0, i32 11
  %110 = load i8, ptr %109, align 1
  %111 = zext i8 %110 to i16
  %112 = getelementptr inbounds %struct.ipv6_pinfo, ptr %18, i32 0, i32 9
  %113 = load i16, ptr %112, align 2
  %114 = lshr i16 %113, 10
  %115 = trunc i16 %114 to i8
  %116 = and i8 %115, 1
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(16) %7, i8 0, i32 16, i1 false) #10
  %117 = getelementptr inbounds i8, ptr %7, i32 16
  store i16 -1, ptr %117, align 8
  %118 = getelementptr inbounds i8, ptr %7, i32 18
  store i16 %111, ptr %118, align 2
  %119 = getelementptr inbounds i8, ptr %7, i32 20
  store i16 0, ptr %119, align 4
  %120 = getelementptr inbounds i8, ptr %7, i32 22
  store i8 %116, ptr %120, align 2
  %121 = getelementptr inbounds i8, ptr %7, i32 23
  call void @llvm.memset.p0.i32(ptr noundef align 1 dereferenceable(9) %121, i8 0, i32 9, i1 false) #10
  %122 = getelementptr inbounds %struct.sockcm_cookie, ptr %7, i32 0, i32 1
  store i32 %99, ptr %122, align 8
  %123 = zext i8 %110 to i32
  %124 = getelementptr inbounds %struct.flowi6, ptr %5, i32 0, i32 3
  %125 = shl nuw nsw i32 %123, 20
  %126 = call i32 @llvm.bswap.i32(i32 %125) #10
  store i32 %126, ptr %124, align 8
  %127 = call ptr @ip6_sk_dst_lookup_flow(ptr noundef %0, ptr noundef nonnull %5, ptr noundef %69, i1 noundef zeroext false) #10
  %128 = icmp ugt ptr %127, inttoptr (i32 -4096 to ptr)
  br i1 %128, label %129, label %131

129:                                              ; preds = %94
  %130 = ptrtoint ptr %127 to i32
  br label %198

131:                                              ; preds = %94
  %132 = load i32, ptr %5, align 8
  %133 = icmp eq i32 %132, 0
  %134 = load i32, ptr %97, align 8
  %135 = and i32 %134, 255
  br i1 %133, label %136, label %144

136:                                              ; preds = %131
  %137 = icmp eq i32 %135, 255
  br i1 %137, label %138, label %141

138:                                              ; preds = %136
  %139 = getelementptr inbounds %struct.ipv6_pinfo, ptr %18, i32 0, i32 7
  %140 = load i32, ptr %139, align 4
  store i32 %140, ptr %5, align 8
  br label %144

141:                                              ; preds = %136
  %142 = getelementptr inbounds %struct.ipv6_pinfo, ptr %18, i32 0, i32 6
  %143 = load i32, ptr %142, align 4
  store i32 %143, ptr %5, align 8
  br label %144

144:                                              ; preds = %141, %138, %131
  %145 = phi i32 [ %135, %141 ], [ 255, %138 ], [ %135, %131 ]
  %146 = load i8, ptr %4, align 8
  store i8 %146, ptr %6, align 4
  %147 = load i8, ptr %106, align 1
  %148 = getelementptr inbounds %struct.icmphdr, ptr %6, i32 0, i32 1
  store i8 %147, ptr %148, align 1
  %149 = getelementptr inbounds %struct.icmphdr, ptr %6, i32 0, i32 2
  store i16 0, ptr %149, align 2
  %150 = getelementptr inbounds %struct.inet_sock, ptr %0, i32 0, i32 6
  %151 = load i16, ptr %150, align 8
  %152 = getelementptr inbounds %struct.icmphdr, ptr %6, i32 0, i32 3
  store i16 %151, ptr %152, align 4
  %153 = getelementptr inbounds %struct.icmp6hdr, ptr %4, i32 0, i32 3
  %154 = getelementptr inbounds %struct.icmpv6_echo, ptr %153, i32 0, i32 1
  %155 = load i16, ptr %154, align 2
  %156 = getelementptr inbounds %struct.anon.150, ptr %152, i32 0, i32 1
  store i16 %155, ptr %156, align 2
  %157 = getelementptr inbounds %struct.pingfakehdr, ptr %6, i32 0, i32 1
  store ptr %1, ptr %157, align 4
  %158 = getelementptr inbounds %struct.pingfakehdr, ptr %6, i32 0, i32 3
  store i32 0, ptr %158, align 4
  %159 = getelementptr inbounds %struct.pingfakehdr, ptr %6, i32 0, i32 2
  store i16 10, ptr %159, align 4
  %160 = icmp eq i32 %145, 255
  %161 = getelementptr inbounds %struct.ipv6_pinfo, ptr %18, i32 0, i32 5
  %162 = load i32, ptr %161, align 4
  %163 = shl i32 %162, 16
  %164 = select i1 %160, i32 %162, i32 %163
  %165 = ashr i32 %164, 23
  %166 = icmp slt i32 %164, 0
  br i1 %166, label %167, label %169

167:                                              ; preds = %144
  %168 = call i32 @ip6_dst_hoplimit(ptr noundef %127) #10
  br label %169

169:                                              ; preds = %167, %144
  %170 = phi i32 [ %168, %167 ], [ %165, %144 ]
  %171 = trunc i32 %170 to i16
  store i16 %171, ptr %117, align 8
  call void @lock_sock_nested(ptr noundef %0, i32 noundef 0) #10
  %172 = call i32 @ip6_append_data(ptr noundef %0, ptr noundef nonnull @ping_getfrag, ptr noundef nonnull %6, i32 noundef %2, i32 noundef 0, ptr noundef nonnull %7, ptr noundef nonnull %5, ptr noundef %127, i32 noundef 64) #10
  %173 = icmp eq i32 %172, 0
  br i1 %173, label %195, label %174

174:                                              ; preds = %169
  %175 = getelementptr inbounds %struct.rt6_info, ptr %127, i32 0, i32 6
  %176 = load ptr, ptr %175, align 4
  %177 = icmp eq ptr %176, null
  br i1 %177, label %183, label %178, !prof !10

178:                                              ; preds = %174
  %179 = getelementptr inbounds %struct.inet6_dev, ptr %176, i32 0, i32 33, i32 2
  %180 = load ptr, ptr %179, align 4
  %181 = getelementptr [6 x %struct.atomic_t], ptr %180, i32 0, i32 4
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %181) #10, !srcloc !11
  %182 = call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %181, ptr %181, i32 1, ptr elementtype(i32) %181) #10, !srcloc !12
  br label %183

183:                                              ; preds = %178, %174
  %184 = call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #10, !srcloc !13
  %185 = load ptr, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 30, i32 10), align 64
  %186 = getelementptr [6 x i32], ptr %185, i32 0, i32 4
  %187 = ptrtoint ptr %186 to i32
  %188 = call i32 @llvm.read_register.i32(metadata !0) #10
  %189 = inttoptr i32 %188 to ptr
  %190 = call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %189) #8, !srcloc !14
  %191 = add i32 %190, %187
  %192 = inttoptr i32 %191 to ptr
  %193 = load i32, ptr %192, align 4
  %194 = add i32 %193, 1
  store i32 %194, ptr %192, align 4
  call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %184) #10, !srcloc !15
  call void @ip6_flush_pending_frames(ptr noundef %0) #10
  br label %196

195:                                              ; preds = %169
  call void @icmpv6_push_pending_frames(ptr noundef %0, ptr noundef nonnull %5, ptr noundef nonnull %6, i32 noundef %2) #10
  br label %196

196:                                              ; preds = %195, %183
  %197 = phi i32 [ %2, %195 ], [ %172, %183 ]
  call void @release_sock(ptr noundef %0) #10
  call void @dst_release(ptr noundef %127) #10
  br label %198

198:                                              ; preds = %196, %129, %88, %80, %42, %28, %24, %17
  %199 = phi i32 [ %130, %129 ], [ %19, %17 ], [ -89, %42 ], [ -22, %88 ], [ -22, %80 ], [ %197, %196 ], [ -22, %24 ], [ -97, %28 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %7) #10
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %6) #10
  call void @llvm.lifetime.end.p0(i64 88, ptr nonnull %5) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #10
  ret i32 %199
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ping_recvmsg(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ping_bind(ptr noundef, ptr noundef, i32 noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ping_queue_rcv_skb(ptr noundef, ptr noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ping_hash(ptr noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @ping_unhash(ptr noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ping_get_port(ptr noundef, i16 noundef zeroext) #0

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local i32 @pingv6_init() local_unnamed_addr #2 section ".init.text" {
  %1 = tail call i32 @register_pernet_subsys(ptr noundef nonnull @ping_v6_net_ops) #10
  %2 = icmp eq i32 %1, 0
  br i1 %2, label %3, label %5

3:                                                ; preds = %0
  store ptr @ipv6_recv_error, ptr @pingv6_ops, align 4
  store ptr @ip6_datagram_recv_common_ctl, ptr getelementptr inbounds (%struct.pingv6_ops, ptr @pingv6_ops, i32 0, i32 1), align 4
  store ptr @ip6_datagram_recv_specific_ctl, ptr getelementptr inbounds (%struct.pingv6_ops, ptr @pingv6_ops, i32 0, i32 2), align 4
  store ptr @icmpv6_err_convert, ptr getelementptr inbounds (%struct.pingv6_ops, ptr @pingv6_ops, i32 0, i32 3), align 4
  store ptr @ipv6_icmp_error, ptr getelementptr inbounds (%struct.pingv6_ops, ptr @pingv6_ops, i32 0, i32 4), align 4
  store ptr @ipv6_chk_addr, ptr getelementptr inbounds (%struct.pingv6_ops, ptr @pingv6_ops, i32 0, i32 5), align 4
  %4 = tail call i32 @inet6_register_protosw(ptr noundef nonnull @pingv6_protosw) #10
  br label %5

5:                                                ; preds = %3, %0
  %6 = phi i32 [ %4, %3 ], [ %1, %0 ]
  ret i32 %6
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_pernet_subsys(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ipv6_recv_error(ptr noundef, ptr noundef, i32 noundef, ptr noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @ip6_datagram_recv_common_ctl(ptr noundef, ptr noundef, ptr noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @ip6_datagram_recv_specific_ctl(ptr noundef, ptr noundef, ptr noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @icmpv6_err_convert(i8 noundef zeroext, i8 noundef zeroext, ptr noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @ipv6_icmp_error(ptr noundef, ptr noundef, i32 noundef, i16 noundef zeroext, i32 noundef, ptr noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ipv6_chk_addr(ptr noundef, ptr noundef, ptr noundef, i32 noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @inet6_register_protosw(ptr noundef) local_unnamed_addr #0

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @pingv6_exit() local_unnamed_addr #1 {
  store ptr @dummy_ipv6_recv_error, ptr @pingv6_ops, align 4
  store ptr @dummy_ip6_datagram_recv_ctl, ptr getelementptr inbounds (%struct.pingv6_ops, ptr @pingv6_ops, i32 0, i32 1), align 4
  store ptr @dummy_ip6_datagram_recv_ctl, ptr getelementptr inbounds (%struct.pingv6_ops, ptr @pingv6_ops, i32 0, i32 2), align 4
  store ptr @dummy_icmpv6_err_convert, ptr getelementptr inbounds (%struct.pingv6_ops, ptr @pingv6_ops, i32 0, i32 3), align 4
  store ptr @dummy_ipv6_icmp_error, ptr getelementptr inbounds (%struct.pingv6_ops, ptr @pingv6_ops, i32 0, i32 4), align 4
  store ptr @dummy_ipv6_chk_addr, ptr getelementptr inbounds (%struct.pingv6_ops, ptr @pingv6_ops, i32 0, i32 5), align 4
  tail call void @unregister_pernet_subsys(ptr noundef nonnull @ping_v6_net_ops) #10
  tail call void @inet6_unregister_protosw(ptr noundef nonnull @pingv6_protosw) #10
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal i32 @dummy_ipv6_recv_error(ptr nocapture noundef readnone %0, ptr nocapture noundef readnone %1, i32 noundef %2, ptr nocapture noundef readnone %3) #4 {
  ret i32 -97
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal void @dummy_ip6_datagram_recv_ctl(ptr nocapture noundef %0, ptr nocapture noundef %1, ptr nocapture noundef %2) #4 {
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal i32 @dummy_icmpv6_err_convert(i8 noundef zeroext %0, i8 noundef zeroext %1, ptr nocapture noundef readnone %2) #4 {
  ret i32 -97
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal void @dummy_ipv6_icmp_error(ptr nocapture noundef %0, ptr nocapture noundef %1, i32 noundef %2, i16 noundef zeroext %3, i32 noundef %4, ptr nocapture noundef %5) #4 {
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal i32 @dummy_ipv6_chk_addr(ptr nocapture noundef readnone %0, ptr nocapture noundef readnone %1, ptr nocapture noundef readnone %2, i32 noundef %3) #4 {
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @unregister_pernet_subsys(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @inet6_unregister_protosw(ptr noundef) local_unnamed_addr #0

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ping_common_sendmsg(i32 noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #6

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ip6_sk_dst_lookup_flow(ptr noundef, ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ip6_append_data(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ping_getfrag(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @ip6_flush_pending_frames(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @icmpv6_push_pending_frames(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @release_sock(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @dst_release(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__ipv6_addr_type(ptr noundef) local_unnamed_addr #0

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ip6_dst_hoplimit(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_sock_nested(ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #8

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @ping_v6_proc_init_net(ptr nocapture noundef readonly %0) #2 section ".init.text" {
  %2 = getelementptr inbounds %struct.net, ptr %0, i32 0, i32 17
  %3 = load ptr, ptr %2, align 8
  %4 = tail call ptr @proc_create_net_data(ptr noundef nonnull @.str, i16 noundef zeroext 292, ptr noundef %3, ptr noundef nonnull @ping_v6_seq_ops, i32 noundef 8, ptr noundef null) #10
  %5 = icmp eq ptr %4, null
  %6 = select i1 %5, i32 -12, i32 0
  ret i32 %6
}

; Function Attrs: noinline nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @ping_v6_proc_exit_net(ptr nocapture noundef readonly %0) #9 section ".ref.text" {
  %2 = getelementptr inbounds %struct.net, ptr %0, i32 0, i32 17
  %3 = load ptr, ptr %2, align 8
  tail call void @remove_proc_entry(ptr noundef nonnull @.str, ptr noundef %3) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @proc_create_net_data(ptr noundef, i16 noundef zeroext, ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal ptr @ping_v6_seq_start(ptr noundef %0, ptr noundef %1) #1 {
  %3 = tail call ptr @ping_seq_start(ptr noundef %0, ptr noundef %1, i16 noundef zeroext 10) #10
  ret ptr %3
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ping_seq_stop(ptr noundef, ptr noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ping_seq_next(ptr noundef, ptr noundef, ptr noundef) #0

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ping_v6_seq_show(ptr noundef %0, ptr noundef %1) #1 {
  %3 = icmp eq ptr %1, inttoptr (i32 1 to ptr)
  br i1 %3, label %4, label %5

4:                                                ; preds = %2
  tail call void @seq_puts(ptr noundef %0, ptr noundef nonnull @.str.1) #10
  br label %18

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.seq_file, ptr %0, i32 0, i32 11
  %7 = load ptr, ptr %6, align 8
  %8 = getelementptr inbounds %struct.ping_iter_state, ptr %7, i32 0, i32 1
  %9 = load i32, ptr %8, align 4
  %10 = getelementptr inbounds %struct.inet_sock, ptr %1, i32 0, i32 6
  %11 = load i16, ptr %10, align 8
  %12 = tail call i16 @llvm.bswap.i16(i16 %11)
  %13 = getelementptr inbounds %struct.sock_common, ptr %1, i32 0, i32 2
  %14 = load i16, ptr %13, align 4
  %15 = tail call i16 @llvm.bswap.i16(i16 %14)
  %16 = getelementptr inbounds %struct.sock, ptr %1, i32 0, i32 9
  %17 = load volatile i32, ptr %16, align 4
  tail call void @__ip6_dgram_sock_seq_show(ptr noundef %0, ptr noundef %1, i16 noundef zeroext %12, i16 noundef zeroext %15, i32 noundef %17, i32 noundef %9) #10
  br label %18

18:                                               ; preds = %5, %4
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ping_seq_start(ptr noundef, ptr noundef, i16 noundef zeroext) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_puts(ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @__ip6_dgram_sock_seq_show(ptr noundef, ptr noundef, i16 noundef zeroext, i16 noundef zeroext, i32 noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @remove_proc_entry(ptr noundef, ptr noundef) local_unnamed_addr #0

attributes #0 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #1 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { argmemonly nofree nounwind willreturn writeonly }
attributes #6 = { argmemonly nofree nounwind willreturn }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { nounwind readonly }
attributes #9 = { noinline nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #10 = { nounwind }

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
!10 = !{!"branch_weights", i32 1, i32 2000}
!11 = !{i64 488669, i64 2147978640, i64 2147978666, i64 2147978713, i64 2147978735, i64 2147978763, i64 2147978783}
!12 = !{i64 2147990852, i64 2147990878, i64 2147990907, i64 2147990941, i64 2147990972, i64 2147990995}
!13 = !{i64 383908, i64 383969}
!14 = !{i64 402608}
!15 = !{i64 386925}
