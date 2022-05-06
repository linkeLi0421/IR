; ModuleID = '/llk/IR/net/ipv6/inet6_connection_sock.c_pt.bc'
source_filename = "../net/ipv6/inet6_connection_sock.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_inet6_csk_route_req:\09\09\09\09\09"
module asm "\09.asciz \09\22inet6_csk_route_req\22\09\09\09\09\09"
module asm "__kstrtabns_inet6_csk_route_req:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_inet6_csk_addr2sockaddr:\09\09\09\09\09"
module asm "\09.asciz \09\22inet6_csk_addr2sockaddr\22\09\09\09\09\09"
module asm "__kstrtabns_inet6_csk_addr2sockaddr:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_inet6_csk_xmit:\09\09\09\09\09"
module asm "\09.asciz \09\22inet6_csk_xmit\22\09\09\09\09\09"
module asm "__kstrtabns_inet6_csk_xmit:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_inet6_csk_update_pmtu:\09\09\09\09\09"
module asm "\09.asciz \09\22inet6_csk_update_pmtu\22\09\09\09\09\09"
module asm "__kstrtabns_inet6_csk_update_pmtu:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.net = type { %struct.refcount_struct, %struct.spinlock, i32, i32, i32, %struct.spinlock, %struct.atomic_t, %struct.list_head, %struct.list_head, %struct.llist_node, ptr, ptr, ptr, %struct.idr, %struct.ns_common, %struct.ref_tracker_dir, %struct.list_head, ptr, ptr, %struct.ctl_table_set, ptr, ptr, ptr, ptr, ptr, %struct.raw_notifier_head, i32, ptr, %struct.list_head, %struct.netns_core, %struct.netns_mib, %struct.netns_packet, %struct.netns_unix, %struct.netns_nexthop, [40 x i8], %struct.netns_ipv4, %struct.netns_ipv6, ptr, %struct.netns_bpf, [28 x i8], %struct.netns_xfrm, i64, %struct.netns_can, ptr, ptr, [32 x i8] }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.spinlock = type { %union.anon.12 }
%union.anon.12 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.13 }
%union.anon.13 = type { i32 }
%struct.atomic_t = type { i32 }
%struct.llist_node = type { ptr }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.ns_common = type { %struct.atomic_t, ptr, i32, %struct.refcount_struct }
%struct.ref_tracker_dir = type {}
%struct.ctl_table_set = type { ptr, %struct.ctl_dir }
%struct.ctl_dir = type { %struct.ctl_table_header, %struct.rb_root }
%struct.ctl_table_header = type { %union.anon.30, ptr, ptr, ptr, ptr, ptr, ptr, %struct.hlist_head }
%union.anon.30 = type { %struct.anon.31 }
%struct.anon.31 = type { ptr, i32, i32, i32 }
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
%struct.netns_ipv6 = type { %struct.dst_ops, %struct.netns_sysctl_ipv6, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.timer_list, ptr, ptr, %struct.list_head, %struct.rwlock_t, %struct.spinlock, i32, i32, i8, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, i32, %struct.anon.65, ptr, [60 x i8] }
%struct.dst_ops = type { i16, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [60 x i8], %struct.percpu_counter, [32 x i8] }
%struct.percpu_counter = type { %struct.raw_spinlock, i64, %struct.list_head, ptr }
%struct.netns_sysctl_ipv6 = type { ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i8, i32, i8, i8, i8, [8 x i32], ptr, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i8, i8 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32 }
%struct.hlist_node = type { ptr, ptr }
%struct.rwlock_t = type { %struct.arch_rwlock_t }
%struct.arch_rwlock_t = type { i32 }
%struct.anon.65 = type { %struct.hlist_head, %struct.spinlock, i32 }
%struct.netns_bpf = type { [2 x ptr], [2 x ptr], [2 x %struct.list_head] }
%struct.netns_xfrm = type { %struct.list_head, ptr, ptr, ptr, ptr, i32, i32, %struct.work_struct, %struct.list_head, ptr, i32, [3 x %struct.hlist_head], [3 x %struct.xfrm_policy_hash], [6 x i32], %struct.work_struct, %struct.xfrm_policy_hthresh, %struct.list_head, ptr, ptr, i32, i32, i32, i32, i8, ptr, [36 x i8], %struct.dst_ops, %struct.dst_ops, %struct.spinlock, %struct.seqcount_spinlock, %struct.seqcount_spinlock, %struct.spinlock, %struct.mutex, [28 x i8] }
%struct.xfrm_policy_hash = type { ptr, i32, i8, i8, i8, i8 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.xfrm_policy_hthresh = type { %struct.work_struct, %struct.seqlock_t, i8, i8, i8, i8 }
%struct.netns_can = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.spinlock, %struct.timer_list, ptr, ptr, %struct.hlist_head }
%struct.in6_addr = type { %union.anon.48 }
%union.anon.48 = type { [4 x i32] }
%struct.sock_common = type { %union.anon.3, %union.anon.5, %union.anon.6, i16, i8, i8, i32, %union.anon.8, ptr, %struct.possible_net_t, %struct.in6_addr, %struct.in6_addr, %struct.atomic64_t, %union.anon.138, [0 x i32], %union.anon.139, i16, i16, %union.anon.140, %struct.refcount_struct, [0 x i32], %union.anon.141 }
%union.anon.3 = type { i64 }
%union.anon.5 = type { i32 }
%union.anon.6 = type { i32 }
%union.anon.8 = type { %struct.hlist_node }
%struct.possible_net_t = type {}
%struct.atomic64_t = type { i64 }
%union.anon.138 = type { i32 }
%union.anon.139 = type { %struct.hlist_node }
%union.anon.140 = type { i32 }
%union.anon.141 = type { i32 }
%struct.inet_sock = type { %struct.sock, ptr, i32, i16, i16, ptr, i16, i16, i8, i8, i8, i8, i16, i8, i8, i32, i32, i32, ptr, %struct.inet_cork_full }
%struct.sock = type { %struct.sock_common, ptr, i32, i32, %struct.socket_lock_t, %struct.atomic_t, i32, %struct.sk_buff_head, %struct.sk_buff_head, %struct.anon.142, %struct.llist_head, i32, i32, i32, i32, i32, ptr, %union.anon.143, [2 x ptr], ptr, %struct.atomic_t, i32, i32, %struct.refcount_struct, i32, %union.anon.144, %struct.sk_buff_head, i32, i32, i32, i32, i32, %struct.timer_list, i32, i32, i32, i32, %struct.page_frag, i64, i32, i32, i32, i32, i8, i8, i16, i16, i16, i32, ptr, %struct.rwlock_t, i32, i32, i32, i32, %struct.kuid_t, i8, i16, %struct.spinlock, i32, ptr, ptr, i32, i64, %struct.seqlock_t, i16, i8, %struct.atomic_t, %struct.atomic_t, i8, i8, ptr, ptr, %struct.sock_cgroup_data, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.callback_head, %struct.netns_tracker }
%struct.socket_lock_t = type { %struct.spinlock, i32, %struct.wait_queue_head }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.anon.142 = type { %struct.atomic_t, i32, ptr, ptr }
%struct.llist_head = type { ptr }
%union.anon.143 = type { ptr }
%union.anon.144 = type { ptr }
%struct.sk_buff_head = type { %union.anon.51, i32, %struct.spinlock }
%union.anon.51 = type { %struct.anon.52 }
%struct.anon.52 = type { ptr, ptr }
%struct.page_frag = type { ptr, i16, i16 }
%struct.kuid_t = type { i32 }
%struct.sock_cgroup_data = type {}
%struct.callback_head = type { ptr, ptr }
%struct.netns_tracker = type {}
%struct.inet_cork_full = type { %struct.inet_cork, %struct.flowi }
%struct.inet_cork = type { i32, i32, ptr, i32, i32, ptr, i8, i8, i16, i8, i16, i64, i32 }
%struct.flowi = type { %union.anon.60 }
%union.anon.60 = type { %struct.flowi6 }
%struct.flowi6 = type { %struct.flowi_common, %struct.in6_addr, %struct.in6_addr, i32, %union.flowi_uli, i32 }
%struct.flowi_common = type { i32, i32, i32, i8, i8, i8, i8, i32, %struct.kuid_t, %struct.flowi_tunnel, i32 }
%struct.flowi_tunnel = type { i64 }
%union.flowi_uli = type { i32 }
%struct.ipv6_pinfo = type { %struct.in6_addr, %struct.in6_pktinfo, ptr, i32, i32, i32, i32, i32, %union.anon.187, i16, i8, i8, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.inet6_cork }
%struct.in6_pktinfo = type { %struct.in6_addr, i32 }
%union.anon.187 = type { %struct.anon.188 }
%struct.anon.188 = type { i16 }
%struct.inet6_cork = type { ptr, i8, i8 }
%struct.inet_request_sock = type { %struct.request_sock, i16, i32, %union.anon.185 }
%struct.request_sock = type { %struct.sock_common, ptr, i16, i8, i8, i32, %struct.timer_list, ptr, ptr, ptr, i32, i32 }
%union.anon.185 = type { %struct.anon.186 }
%struct.anon.186 = type { ptr, ptr }
%struct.anon.7 = type { i16, i16 }
%struct.anon.61 = type { i16, i16 }
%struct.sockaddr_in6 = type { i16, i16, i32, %struct.in6_addr, i32 }
%struct.sk_buff = type { %union.anon, %union.anon.2, %union.anon.146, [48 x i8], %union.anon.147, i32, i32, i16, i16, i16, [0 x i8], i8, i8, %union.anon.149, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon = type { %struct.anon.0 }
%struct.anon.0 = type { ptr, ptr, %union.anon.1 }
%union.anon.1 = type { ptr }
%union.anon.2 = type { ptr }
%union.anon.146 = type { i64 }
%union.anon.147 = type { %struct.anon.148 }
%struct.anon.148 = type { i32, ptr }
%union.anon.149 = type { %struct.anon.150 }
%struct.anon.150 = type { [0 x i8], i16, [0 x i8], i16, %union.anon.151, i32, i32, i32, i16, i16, %union.anon.153, %union.anon.154, %union.anon.155, i16, i16, i16, i16, i16, i16, i16 }
%union.anon.151 = type { i32 }
%union.anon.153 = type { i32 }
%union.anon.154 = type { i32 }
%union.anon.155 = type { i16 }
%struct.rt6_info = type { %struct.dst_entry, ptr, i32, %struct.rt6key, %struct.rt6key, %struct.in6_addr, ptr, i32, %struct.list_head, ptr, i16 }
%struct.dst_entry = type { ptr, ptr, i32, i32, ptr, ptr, ptr, i16, i16, i16, i16, i32, i32, ptr, %struct.callback_head, i16, i16, i32, %struct.atomic_t, %struct.netdevice_tracker }
%struct.netdevice_tracker = type {}
%struct.rt6key = type { %struct.in6_addr, i32 }
%struct.fib6_info = type { ptr, ptr, ptr, %union.anon.53, i32, %struct.refcount_struct, i32, ptr, %struct.rt6key, i32, %struct.rt6key, %struct.rt6key, i32, i8, i8, i8, i8, i8, i8, %struct.callback_head, ptr, [0 x %struct.fib6_nh] }
%union.anon.53 = type { %struct.list_head }
%struct.fib6_nh = type { %struct.fib_nh_common, i32, ptr, ptr }
%struct.fib_nh_common = type { ptr, %struct.netdevice_tracker, i32, i8, i8, i8, i8, ptr, %union.anon.56, i32, %struct.atomic_t, ptr, ptr, ptr }
%union.anon.56 = type { %struct.in6_addr }
%struct.fib6_node = type { ptr, ptr, ptr, ptr, i16, i16, i32, ptr, %struct.callback_head }

@__kstrtab_inet6_csk_route_req = external dso_local constant [0 x i8], align 1
@__kstrtabns_inet6_csk_route_req = external dso_local constant [0 x i8], align 1
@__ksymtab_inet6_csk_route_req = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @inet6_csk_route_req to i32), ptr @__kstrtab_inet6_csk_route_req, ptr @__kstrtabns_inet6_csk_route_req }, section "___ksymtab+inet6_csk_route_req", align 4
@__kstrtab_inet6_csk_addr2sockaddr = external dso_local constant [0 x i8], align 1
@__kstrtabns_inet6_csk_addr2sockaddr = external dso_local constant [0 x i8], align 1
@__ksymtab_inet6_csk_addr2sockaddr = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @inet6_csk_addr2sockaddr to i32), ptr @__kstrtab_inet6_csk_addr2sockaddr, ptr @__kstrtabns_inet6_csk_addr2sockaddr }, section "___ksymtab_gpl+inet6_csk_addr2sockaddr", align 4
@__kstrtab_inet6_csk_xmit = external dso_local constant [0 x i8], align 1
@__kstrtabns_inet6_csk_xmit = external dso_local constant [0 x i8], align 1
@__ksymtab_inet6_csk_xmit = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @inet6_csk_xmit to i32), ptr @__kstrtab_inet6_csk_xmit, ptr @__kstrtabns_inet6_csk_xmit }, section "___ksymtab_gpl+inet6_csk_xmit", align 4
@__kstrtab_inet6_csk_update_pmtu = external dso_local constant [0 x i8], align 1
@__kstrtabns_inet6_csk_update_pmtu = external dso_local constant [0 x i8], align 1
@__ksymtab_inet6_csk_update_pmtu = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @inet6_csk_update_pmtu to i32), ptr @__kstrtab_inet6_csk_update_pmtu, ptr @__kstrtabns_inet6_csk_update_pmtu }, section "___ksymtab_gpl+inet6_csk_update_pmtu", align 4
@init_net = external dso_local global %struct.net, align 64
@llvm.compiler.used = appending global [4 x ptr] [ptr @__ksymtab_inet6_csk_addr2sockaddr, ptr @__ksymtab_inet6_csk_route_req, ptr @__ksymtab_inet6_csk_update_pmtu, ptr @__ksymtab_inet6_csk_xmit], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @inet6_csk_route_req(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2, i8 noundef zeroext %3) #0 {
  %5 = alloca %struct.in6_addr, align 4
  %6 = getelementptr inbounds %struct.sock_common, ptr %0, i32 0, i32 4
  %7 = load volatile i8, ptr %6, align 2
  %8 = zext i8 %7 to i32
  %9 = shl nuw i32 1, %8
  %10 = and i32 %9, -4161
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %15, label %12

12:                                               ; preds = %4
  %13 = getelementptr inbounds %struct.inet_sock, ptr %0, i32 0, i32 1
  %14 = load ptr, ptr %13, align 8
  br label %15

15:                                               ; preds = %12, %4
  %16 = phi ptr [ %14, %12 ], [ null, %4 ]
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #6
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(16) %5, i8 0, i32 16, i1 false), !annotation !8
  tail call void @llvm.memset.p0.i32(ptr noundef align 8 dereferenceable(88) %1, i8 0, i32 88, i1 false)
  %17 = getelementptr inbounds %struct.flowi_common, ptr %1, i32 0, i32 5
  store i8 %3, ptr %17, align 2
  %18 = getelementptr inbounds %struct.flowi6, ptr %1, i32 0, i32 1
  %19 = getelementptr inbounds %struct.sock_common, ptr %2, i32 0, i32 10
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 8 dereferenceable(16) %18, ptr noundef align 4 dereferenceable(16) %19, i32 16, i1 false)
  tail call void asm sideeffect "", "~{memory}"() #6, !srcloc !9
  %20 = getelementptr inbounds %struct.ipv6_pinfo, ptr %16, i32 0, i32 17
  %21 = load volatile ptr, ptr %20, align 4
  %22 = call ptr @fl6_update_dst(ptr noundef %1, ptr noundef %21, ptr noundef nonnull %5) #6
  call void asm sideeffect "", "~{memory}"() #6, !srcloc !10
  %23 = getelementptr inbounds %struct.flowi6, ptr %1, i32 0, i32 2
  %24 = getelementptr inbounds %struct.sock_common, ptr %2, i32 0, i32 11
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 8 dereferenceable(16) %23, ptr noundef align 4 dereferenceable(16) %24, i32 16, i1 false)
  %25 = getelementptr inbounds %struct.sock_common, ptr %2, i32 0, i32 6
  %26 = load i32, ptr %25, align 4
  store i32 %26, ptr %1, align 8
  %27 = getelementptr inbounds %struct.inet_request_sock, ptr %2, i32 0, i32 2
  %28 = load i32, ptr %27, align 4
  %29 = getelementptr inbounds %struct.flowi_common, ptr %1, i32 0, i32 2
  store i32 %28, ptr %29, align 8
  %30 = getelementptr inbounds %struct.sock_common, ptr %2, i32 0, i32 2
  %31 = load i16, ptr %30, align 4
  %32 = getelementptr inbounds %struct.flowi6, ptr %1, i32 0, i32 4
  store i16 %31, ptr %32, align 4
  %33 = getelementptr inbounds %struct.anon.7, ptr %30, i32 0, i32 1
  %34 = load i16, ptr %33, align 2
  %35 = call i16 @llvm.bswap.i16(i16 %34)
  %36 = getelementptr inbounds %struct.anon.61, ptr %32, i32 0, i32 1
  store i16 %35, ptr %36, align 2
  %37 = getelementptr inbounds %struct.flowi_common, ptr %1, i32 0, i32 8
  %38 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 55
  %39 = load i32, ptr %38, align 4
  store i32 %39, ptr %37, align 4
  %40 = call ptr @ip6_dst_lookup_flow(ptr noundef nonnull @init_net, ptr noundef %0, ptr noundef %1, ptr noundef %22) #6
  %41 = icmp ugt ptr %40, inttoptr (i32 -4096 to ptr)
  %42 = select i1 %41, ptr null, ptr %40
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #6
  ret ptr %42
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #2

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @fl6_update_dst(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ip6_dst_lookup_flow(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @inet6_csk_addr2sockaddr(ptr nocapture noundef readonly %0, ptr noundef %1) #0 {
  store i16 10, ptr %1, align 4
  %3 = getelementptr inbounds %struct.sockaddr_in6, ptr %1, i32 0, i32 3
  %4 = getelementptr inbounds %struct.sock_common, ptr %0, i32 0, i32 10
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(16) %3, ptr noundef align 4 dereferenceable(16) %4, i32 16, i1 false)
  %5 = getelementptr inbounds %struct.sock_common, ptr %0, i32 0, i32 2
  %6 = load i16, ptr %5, align 4
  %7 = getelementptr inbounds %struct.sockaddr_in6, ptr %1, i32 0, i32 1
  store i16 %6, ptr %7, align 2
  %8 = getelementptr inbounds %struct.sockaddr_in6, ptr %1, i32 0, i32 2
  store i32 0, ptr %8, align 4
  %9 = getelementptr inbounds %struct.sock_common, ptr %0, i32 0, i32 6
  %10 = load i32, ptr %9, align 4
  %11 = tail call i32 @__ipv6_addr_type(ptr noundef %3) #6
  %12 = and i32 %11, 32
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %20

14:                                               ; preds = %2
  %15 = and i32 %11, 2
  %16 = icmp ne i32 %15, 0
  %17 = and i32 %11, 48
  %18 = icmp ne i32 %17, 0
  %19 = and i1 %16, %18
  br i1 %19, label %20, label %21

20:                                               ; preds = %14, %2
  br label %21

21:                                               ; preds = %20, %14
  %22 = phi i32 [ %10, %20 ], [ 0, %14 ]
  %23 = getelementptr inbounds %struct.sockaddr_in6, ptr %1, i32 0, i32 4
  store i32 %22, ptr %23, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @inet6_csk_xmit(ptr noundef %0, ptr noundef %1, ptr nocapture readnone %2) #0 {
  %4 = alloca %struct.flowi6, align 8
  %5 = getelementptr inbounds %struct.sock_common, ptr %0, i32 0, i32 4
  %6 = load volatile i8, ptr %5, align 2
  %7 = zext i8 %6 to i32
  %8 = shl nuw i32 1, %7
  %9 = and i32 %8, -4161
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %14, label %11

11:                                               ; preds = %3
  %12 = getelementptr inbounds %struct.inet_sock, ptr %0, i32 0, i32 1
  %13 = load ptr, ptr %12, align 8
  br label %14

14:                                               ; preds = %11, %3
  %15 = phi ptr [ %13, %11 ], [ null, %3 ]
  call void @llvm.lifetime.start.p0(i64 88, ptr nonnull %4) #6
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(88) %4, i8 0, i32 88, i1 false), !annotation !8
  %16 = call fastcc ptr @inet6_csk_route_socket(ptr noundef %0, ptr noundef nonnull %4)
  %17 = icmp ugt ptr %16, inttoptr (i32 -4096 to ptr)
  br i1 %17, label %18, label %23

18:                                               ; preds = %14
  %19 = ptrtoint ptr %16 to i32
  %20 = sub i32 0, %19
  %21 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 52
  store i32 %20, ptr %21, align 8
  %22 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 38
  store i64 0, ptr %22, align 8
  call void @kfree_skb_reason(ptr noundef %1, i32 noundef 0) #6
  br label %51

23:                                               ; preds = %14
  call void asm sideeffect "", "~{memory}"() #6, !srcloc !9
  %24 = icmp ne ptr %16, null
  %25 = zext i1 %24 to i8
  %26 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 13, i32 0, i32 3
  %27 = load i16, ptr %26, align 2
  %28 = lshr i16 %27, 14
  %29 = trunc i16 %28 to i8
  %30 = and i8 %29, 1
  %31 = or i8 %30, %25
  %32 = zext i8 %31 to i16
  %33 = shl nuw nsw i16 %32, 14
  %34 = and i16 %27, -16385
  %35 = or i16 %33, %34
  store i16 %35, ptr %26, align 2
  %36 = ptrtoint ptr %16 to i32
  %37 = or i32 %36, 1
  %38 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 4
  store i32 %37, ptr %38, align 8
  %39 = getelementptr inbounds %struct.flowi6, ptr %4, i32 0, i32 1
  %40 = getelementptr inbounds %struct.sock_common, ptr %0, i32 0, i32 10
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 8 dereferenceable(16) %39, ptr noundef align 4 dereferenceable(16) %40, i32 16, i1 false)
  %41 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 34
  %42 = load i32, ptr %41, align 8
  %43 = getelementptr inbounds %struct.ipv6_pinfo, ptr %15, i32 0, i32 17
  %44 = load volatile ptr, ptr %43, align 4
  %45 = getelementptr inbounds %struct.ipv6_pinfo, ptr %15, i32 0, i32 11
  %46 = load i8, ptr %45, align 1
  %47 = zext i8 %46 to i32
  %48 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 33
  %49 = load i32, ptr %48, align 4
  %50 = call i32 @ip6_xmit(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %4, i32 noundef %42, ptr noundef %44, i32 noundef %47, i32 noundef %49) #6
  call void asm sideeffect "", "~{memory}"() #6, !srcloc !10
  br label %51

51:                                               ; preds = %23, %18
  %52 = phi i32 [ %19, %18 ], [ %50, %23 ]
  call void @llvm.lifetime.end.p0(i64 88, ptr nonnull %4) #6
  ret i32 %52
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc ptr @inet6_csk_route_socket(ptr noundef %0, ptr noundef %1) unnamed_addr #0 {
  %3 = alloca %struct.in6_addr, align 4
  %4 = getelementptr inbounds %struct.sock_common, ptr %0, i32 0, i32 4
  %5 = load volatile i8, ptr %4, align 2
  %6 = zext i8 %5 to i32
  %7 = shl nuw i32 1, %6
  %8 = and i32 %7, -4161
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %13, label %10

10:                                               ; preds = %2
  %11 = getelementptr inbounds %struct.inet_sock, ptr %0, i32 0, i32 1
  %12 = load ptr, ptr %11, align 8
  br label %13

13:                                               ; preds = %10, %2
  %14 = phi ptr [ %12, %10 ], [ null, %2 ]
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #6
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(16) %3, i8 0, i32 16, i1 false), !annotation !8
  tail call void @llvm.memset.p0.i32(ptr noundef align 8 dereferenceable(88) %1, i8 0, i32 88, i1 false)
  %15 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 46
  %16 = load i16, ptr %15, align 4
  %17 = trunc i16 %16 to i8
  %18 = getelementptr inbounds %struct.flowi_common, ptr %1, i32 0, i32 5
  store i8 %17, ptr %18, align 2
  %19 = getelementptr inbounds %struct.flowi6, ptr %1, i32 0, i32 1
  %20 = getelementptr inbounds %struct.sock_common, ptr %0, i32 0, i32 10
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 8 dereferenceable(16) %19, ptr noundef align 4 dereferenceable(16) %20, i32 16, i1 false)
  %21 = getelementptr inbounds %struct.flowi6, ptr %1, i32 0, i32 2
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 8 dereferenceable(16) %21, ptr noundef align 4 dereferenceable(16) %14, i32 16, i1 false)
  %22 = getelementptr inbounds %struct.ipv6_pinfo, ptr %14, i32 0, i32 3
  %23 = load i32, ptr %22, align 4
  %24 = getelementptr inbounds %struct.flowi6, ptr %1, i32 0, i32 3
  store i32 %23, ptr %24, align 8
  %25 = load volatile i8, ptr %4, align 2
  %26 = zext i8 %25 to i32
  %27 = shl nuw i32 1, %26
  %28 = and i32 %27, -4161
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %33, label %30

30:                                               ; preds = %13
  %31 = getelementptr inbounds %struct.inet_sock, ptr %0, i32 0, i32 1
  %32 = load ptr, ptr %31, align 8
  br label %33

33:                                               ; preds = %30, %13
  %34 = phi ptr [ %32, %30 ], [ null, %13 ]
  %35 = getelementptr inbounds %struct.ipv6_pinfo, ptr %34, i32 0, i32 11
  %36 = load i8, ptr %35, align 1
  %37 = and i8 %36, 2
  %38 = icmp eq i8 %37, 0
  br i1 %38, label %41, label %39

39:                                               ; preds = %33
  %40 = or i32 %23, 8192
  store i32 %40, ptr %24, align 8
  br label %41

41:                                               ; preds = %39, %33
  %42 = getelementptr inbounds %struct.sock_common, ptr %0, i32 0, i32 6
  %43 = load i32, ptr %42, align 4
  store i32 %43, ptr %1, align 8
  %44 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 34
  %45 = load i32, ptr %44, align 8
  %46 = getelementptr inbounds %struct.flowi_common, ptr %1, i32 0, i32 2
  store i32 %45, ptr %46, align 8
  %47 = getelementptr inbounds %struct.inet_sock, ptr %0, i32 0, i32 6
  %48 = load i16, ptr %47, align 8
  %49 = getelementptr inbounds %struct.flowi6, ptr %1, i32 0, i32 4
  %50 = getelementptr inbounds %struct.anon.61, ptr %49, i32 0, i32 1
  store i16 %48, ptr %50, align 2
  %51 = getelementptr inbounds %struct.sock_common, ptr %0, i32 0, i32 2
  %52 = load i16, ptr %51, align 4
  store i16 %52, ptr %49, align 4
  %53 = getelementptr inbounds %struct.flowi_common, ptr %1, i32 0, i32 8
  %54 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 55
  %55 = load i32, ptr %54, align 4
  store i32 %55, ptr %53, align 4
  tail call void asm sideeffect "", "~{memory}"() #6, !srcloc !9
  %56 = getelementptr inbounds %struct.ipv6_pinfo, ptr %14, i32 0, i32 17
  %57 = load volatile ptr, ptr %56, align 4
  %58 = call ptr @fl6_update_dst(ptr noundef %1, ptr noundef %57, ptr noundef nonnull %3) #6
  call void asm sideeffect "", "~{memory}"() #6, !srcloc !10
  %59 = getelementptr inbounds %struct.ipv6_pinfo, ptr %14, i32 0, i32 13
  %60 = load i32, ptr %59, align 4
  %61 = call ptr @__sk_dst_check(ptr noundef %0, i32 noundef %60) #6
  %62 = icmp eq ptr %61, null
  br i1 %62, label %63, label %97

63:                                               ; preds = %41
  %64 = call ptr @ip6_dst_lookup_flow(ptr noundef nonnull @init_net, ptr noundef %0, ptr noundef %1, ptr noundef %58) #6
  %65 = icmp ugt ptr %64, inttoptr (i32 -4096 to ptr)
  br i1 %65, label %97, label %66

66:                                               ; preds = %63
  %67 = load volatile i8, ptr %4, align 2
  %68 = zext i8 %67 to i32
  %69 = shl nuw i32 1, %68
  %70 = and i32 %69, -4161
  %71 = icmp eq i32 %70, 0
  br i1 %71, label %75, label %72

72:                                               ; preds = %66
  %73 = getelementptr inbounds %struct.inet_sock, ptr %0, i32 0, i32 1
  %74 = load ptr, ptr %73, align 8
  br label %75

75:                                               ; preds = %72, %66
  %76 = phi ptr [ %74, %72 ], [ null, %66 ]
  %77 = getelementptr inbounds %struct.rt6_info, ptr %64, i32 0, i32 2
  %78 = load i32, ptr %77, align 4
  %79 = icmp eq i32 %78, 0
  br i1 %79, label %80, label %93

80:                                               ; preds = %75
  call void asm sideeffect "", "~{memory}"() #6, !srcloc !9
  %81 = getelementptr inbounds %struct.rt6_info, ptr %64, i32 0, i32 1
  %82 = load volatile ptr, ptr %81, align 4
  %83 = icmp eq ptr %82, null
  br i1 %83, label %91, label %84

84:                                               ; preds = %80
  %85 = getelementptr inbounds %struct.fib6_info, ptr %82, i32 0, i32 2
  %86 = load volatile ptr, ptr %85, align 4
  %87 = icmp eq ptr %86, null
  br i1 %87, label %91, label %88

88:                                               ; preds = %84
  %89 = getelementptr inbounds %struct.fib6_node, ptr %86, i32 0, i32 6
  %90 = load volatile i32, ptr %89, align 4
  call void asm sideeffect "dmb ish", "~{memory}"() #6, !srcloc !11
  br label %91

91:                                               ; preds = %88, %84, %80
  %92 = phi i32 [ 0, %80 ], [ 0, %84 ], [ %90, %88 ]
  call void asm sideeffect "", "~{memory}"() #6, !srcloc !10
  br label %93

93:                                               ; preds = %91, %75
  %94 = phi i32 [ %92, %91 ], [ %78, %75 ]
  %95 = getelementptr inbounds %struct.ipv6_pinfo, ptr %76, i32 0, i32 13
  store i32 %94, ptr %95, align 4
  call void @sk_setup_caps(ptr noundef %0, ptr noundef %64) #6
  %96 = getelementptr inbounds %struct.ipv6_pinfo, ptr %76, i32 0, i32 2
  store ptr null, ptr %96, align 4
  br label %97

97:                                               ; preds = %93, %63, %41
  %98 = phi ptr [ %61, %41 ], [ %64, %63 ], [ %64, %93 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #6
  ret ptr %98
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ip6_xmit(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @inet6_csk_update_pmtu(ptr noundef %0, i32 noundef %1) #0 {
  %3 = alloca %struct.flowi6, align 8
  call void @llvm.lifetime.start.p0(i64 88, ptr nonnull %3) #6
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(88) %3, i8 0, i32 88, i1 false), !annotation !8
  %4 = call fastcc ptr @inet6_csk_route_socket(ptr noundef %0, ptr noundef nonnull %3)
  %5 = icmp ugt ptr %4, inttoptr (i32 -4096 to ptr)
  br i1 %5, label %14, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.dst_entry, ptr %4, i32 0, i32 1
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.dst_ops, ptr %8, i32 0, i32 11
  %10 = load ptr, ptr %9, align 4
  call void %10(ptr noundef %4, ptr noundef %0, ptr noundef null, i32 noundef %1, i1 noundef zeroext true) #6
  %11 = call fastcc ptr @inet6_csk_route_socket(ptr noundef %0, ptr noundef nonnull %3)
  %12 = icmp ugt ptr %11, inttoptr (i32 -4096 to ptr)
  %13 = select i1 %12, ptr null, ptr %11
  br label %14

14:                                               ; preds = %6, %2
  %15 = phi ptr [ %13, %6 ], [ null, %2 ]
  call void @llvm.lifetime.end.p0(i64 88, ptr nonnull %3) #6
  ret ptr %15
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__ipv6_addr_type(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__sk_dst_check(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @sk_setup_caps(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree_skb_reason(ptr noundef, i32 noundef) local_unnamed_addr #4

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { argmemonly nofree nounwind willreturn writeonly }
attributes #3 = { argmemonly nofree nounwind willreturn }
attributes #4 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { nounwind }

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
!8 = !{!"auto-init"}
!9 = !{i64 2149046909}
!10 = !{i64 2149047126}
!11 = !{i64 2156149413}
