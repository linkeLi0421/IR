; ModuleID = '/llk/IR/net/ipv6/output_core.c_pt.bc'
source_filename = "../net/ipv6/output_core.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ipv6_proxy_select_ident:\09\09\09\09\09"
module asm "\09.asciz \09\22ipv6_proxy_select_ident\22\09\09\09\09\09"
module asm "__kstrtabns_ipv6_proxy_select_ident:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ipv6_select_ident:\09\09\09\09\09"
module asm "\09.asciz \09\22ipv6_select_ident\22\09\09\09\09\09"
module asm "__kstrtabns_ipv6_select_ident:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ip6_find_1stfragopt:\09\09\09\09\09"
module asm "\09.asciz \09\22ip6_find_1stfragopt\22\09\09\09\09\09"
module asm "__kstrtabns_ip6_find_1stfragopt:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ip6_dst_hoplimit:\09\09\09\09\09"
module asm "\09.asciz \09\22ip6_dst_hoplimit\22\09\09\09\09\09"
module asm "__kstrtabns_ip6_dst_hoplimit:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___ip6_local_out:\09\09\09\09\09"
module asm "\09.asciz \09\22__ip6_local_out\22\09\09\09\09\09"
module asm "__kstrtabns___ip6_local_out:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ip6_local_out:\09\09\09\09\09"
module asm "\09.asciz \09\22ip6_local_out\22\09\09\09\09\09"
module asm "__kstrtabns_ip6_local_out:\09\09\09\09\09"
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
%struct.netns_ipv6 = type { %struct.dst_ops, %struct.netns_sysctl_ipv6, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.timer_list, ptr, ptr, %struct.list_head, %struct.rwlock_t, %struct.spinlock, i32, i32, i8, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, i32, %struct.anon.134, ptr, [60 x i8] }
%struct.dst_ops = type { i16, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [60 x i8], %struct.percpu_counter, [32 x i8] }
%struct.percpu_counter = type { %struct.raw_spinlock, i64, %struct.list_head, ptr }
%struct.netns_sysctl_ipv6 = type { ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i8, i32, i8, i8, i8, [8 x i32], ptr, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i8, i8 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32 }
%struct.hlist_node = type { ptr, ptr }
%struct.rwlock_t = type { %struct.arch_rwlock_t }
%struct.arch_rwlock_t = type { i32 }
%struct.anon.134 = type { %struct.hlist_head, %struct.spinlock, i32 }
%struct.netns_bpf = type { [2 x ptr], [2 x ptr], [2 x %struct.list_head] }
%struct.netns_xfrm = type { %struct.list_head, ptr, ptr, ptr, ptr, i32, i32, %struct.work_struct, %struct.list_head, ptr, i32, [3 x %struct.hlist_head], [3 x %struct.xfrm_policy_hash], [6 x i32], %struct.work_struct, %struct.xfrm_policy_hthresh, %struct.list_head, ptr, ptr, i32, i32, i32, i32, i8, ptr, [36 x i8], %struct.dst_ops, %struct.dst_ops, %struct.spinlock, %struct.seqcount_spinlock, %struct.seqcount_spinlock, %struct.spinlock, %struct.mutex, [28 x i8] }
%struct.xfrm_policy_hash = type { ptr, i32, i8, i8, i8, i8 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.xfrm_policy_hthresh = type { %struct.work_struct, %struct.seqlock_t, i8, i8, i8, i8 }
%struct.netns_can = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.spinlock, %struct.timer_list, ptr, ptr, %struct.hlist_head }
%struct.in6_addr = type { %union.anon.96 }
%union.anon.96 = type { [4 x i32] }
%struct.sk_buff = type { %union.anon.75, %union.anon.101, %union.anon.102, [48 x i8], %union.anon.103, i32, i32, i16, i16, i16, [0 x i8], i8, i8, %union.anon.105, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon.75 = type { %struct.anon.76 }
%struct.anon.76 = type { ptr, ptr, %union.anon.77 }
%union.anon.77 = type { ptr }
%union.anon.101 = type { ptr }
%union.anon.102 = type { i64 }
%union.anon.103 = type { %struct.anon.104 }
%struct.anon.104 = type { i32, ptr }
%union.anon.105 = type { %struct.anon.106 }
%struct.anon.106 = type { [0 x i8], i16, [0 x i8], i16, %union.anon.107, i32, i32, i32, i16, i16, %union.anon.109, %union.anon.110, %union.anon.111, i16, i16, i16, i16, i16, i16, i16 }
%union.anon.107 = type { i32 }
%union.anon.109 = type { i32 }
%union.anon.110 = type { i32 }
%union.anon.111 = type { i16 }
%struct.ipv6hdr = type { i8, [3 x i8], i16, i8, i8, %struct.in6_addr, %struct.in6_addr }
%struct.ipv6_opt_hdr = type { i8, i8 }
%struct.dst_entry = type { ptr, ptr, i32, i32, ptr, ptr, ptr, i16, i16, i16, i16, i32, i32, ptr, %struct.callback_head, i16, i16, i32, %struct.atomic_t, %struct.netdevice_tracker }
%struct.callback_head = type { ptr, ptr }
%struct.netdevice_tracker = type {}
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon.78, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, i32, i32, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [8 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, %struct.possible_net_t, ptr, i32, %union.anon.100, %struct.device, [4 x ptr], ptr, ptr, i32, i16, i16, [16 x %struct.netdev_tc_txq], [16 x i8], ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], %struct.netdevice_tracker, %struct.netdevice_tracker, [48 x i8] }
%struct.anon.78 = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%struct.possible_net_t = type {}
%union.anon.100 = type { ptr }
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
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.netdev_tc_txq = type { i16, i16 }
%struct.bpf_xdp_entity = type { ptr, ptr }
%struct.inet6_dev = type { ptr, %struct.netdevice_tracker, %struct.list_head, ptr, ptr, i8, i8, i8, i8, i32, i32, i32, i32, %struct.delayed_work, %struct.delayed_work, %struct.delayed_work, %struct.delayed_work, %struct.delayed_work, %struct.sk_buff_head, %struct.sk_buff_head, %struct.spinlock, %struct.spinlock, %struct.mutex, ptr, %struct.rwlock_t, %struct.refcount_struct, i32, i32, i32, %struct.list_head, %struct.in6_addr, ptr, %struct.ipv6_devconf, %struct.ipv6_devstat, %struct.timer_list, i32, i8, i32, %struct.callback_head, i32 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.sk_buff_head = type { %union.anon.82, i32, %struct.spinlock }
%union.anon.82 = type { %struct.anon.83 }
%struct.anon.83 = type { ptr, ptr }
%struct.ipv6_devconf = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.ipv6_stable_secret, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, ptr }
%struct.ipv6_stable_secret = type { i8, %struct.in6_addr }
%struct.ipv6_devstat = type { ptr, ptr, ptr, ptr }

@__kstrtab_ipv6_proxy_select_ident = external dso_local constant [0 x i8], align 1
@__kstrtabns_ipv6_proxy_select_ident = external dso_local constant [0 x i8], align 1
@__ksymtab_ipv6_proxy_select_ident = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ipv6_proxy_select_ident to i32), ptr @__kstrtab_ipv6_proxy_select_ident, ptr @__kstrtabns_ipv6_proxy_select_ident }, section "___ksymtab_gpl+ipv6_proxy_select_ident", align 4
@__kstrtab_ipv6_select_ident = external dso_local constant [0 x i8], align 1
@__kstrtabns_ipv6_select_ident = external dso_local constant [0 x i8], align 1
@__ksymtab_ipv6_select_ident = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ipv6_select_ident to i32), ptr @__kstrtab_ipv6_select_ident, ptr @__kstrtabns_ipv6_select_ident }, section "___ksymtab+ipv6_select_ident", align 4
@__kstrtab_ip6_find_1stfragopt = external dso_local constant [0 x i8], align 1
@__kstrtabns_ip6_find_1stfragopt = external dso_local constant [0 x i8], align 1
@__ksymtab_ip6_find_1stfragopt = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ip6_find_1stfragopt to i32), ptr @__kstrtab_ip6_find_1stfragopt, ptr @__kstrtabns_ip6_find_1stfragopt }, section "___ksymtab+ip6_find_1stfragopt", align 4
@__kstrtab_ip6_dst_hoplimit = external dso_local constant [0 x i8], align 1
@__kstrtabns_ip6_dst_hoplimit = external dso_local constant [0 x i8], align 1
@__ksymtab_ip6_dst_hoplimit = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ip6_dst_hoplimit to i32), ptr @__kstrtab_ip6_dst_hoplimit, ptr @__kstrtabns_ip6_dst_hoplimit }, section "___ksymtab+ip6_dst_hoplimit", align 4
@__kstrtab___ip6_local_out = external dso_local constant [0 x i8], align 1
@__kstrtabns___ip6_local_out = external dso_local constant [0 x i8], align 1
@__ksymtab___ip6_local_out = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__ip6_local_out to i32), ptr @__kstrtab___ip6_local_out, ptr @__kstrtabns___ip6_local_out }, section "___ksymtab_gpl+__ip6_local_out", align 4
@__kstrtab_ip6_local_out = external dso_local constant [0 x i8], align 1
@__kstrtabns_ip6_local_out = external dso_local constant [0 x i8], align 1
@__ksymtab_ip6_local_out = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ip6_local_out to i32), ptr @__kstrtab_ip6_local_out, ptr @__kstrtabns_ip6_local_out }, section "___ksymtab_gpl+ip6_local_out", align 4
@init_net = external dso_local local_unnamed_addr global %struct.net, align 64
@llvm.compiler.used = appending global [6 x ptr] [ptr @__ksymtab___ip6_local_out, ptr @__ksymtab_ip6_dst_hoplimit, ptr @__ksymtab_ip6_find_1stfragopt, ptr @__ksymtab_ip6_local_out, ptr @__ksymtab_ipv6_proxy_select_ident, ptr @__ksymtab_ipv6_select_ident], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @ipv6_proxy_select_ident(ptr nocapture readnone %0, ptr noundef %1) #0 {
  %3 = alloca [2 x %struct.in6_addr], align 4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #6
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(32) %3, i8 0, i32 32, i1 false), !annotation !8
  %4 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 16
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 13, i32 0, i32 18
  %7 = load i16, ptr %6, align 4
  %8 = zext i16 %7 to i32
  %9 = getelementptr i8, ptr %5, i32 %8
  %10 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 17
  %11 = load ptr, ptr %10, align 4
  %12 = ptrtoint ptr %9 to i32
  %13 = ptrtoint ptr %11 to i32
  %14 = sub i32 %12, %13
  %15 = add i32 %14, 8
  %16 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 5
  %17 = load i32, ptr %16, align 8
  %18 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 6
  %19 = load i32, ptr %18, align 4
  %20 = sub i32 -8, %14
  %21 = sub i32 %17, %19
  %22 = add i32 %21, %20
  %23 = icmp sgt i32 %22, 31
  br i1 %23, label %29, label %24, !prof !9

24:                                               ; preds = %2
  %25 = icmp eq ptr %1, null
  br i1 %25, label %38, label %26

26:                                               ; preds = %24
  %27 = call i32 @skb_copy_bits(ptr noundef nonnull %1, i32 noundef %15, ptr noundef nonnull %3, i32 noundef 32) #6
  %28 = icmp slt i32 %27, 0
  br i1 %28, label %38, label %32

29:                                               ; preds = %2
  %30 = getelementptr i8, ptr %11, i32 %15
  %31 = icmp eq ptr %30, null
  br i1 %31, label %38, label %32

32:                                               ; preds = %29, %26
  br label %33

33:                                               ; preds = %33, %32
  %34 = call i32 @prandom_u32() #6
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %33, label %36

36:                                               ; preds = %33
  %37 = call i32 @llvm.bswap.i32(i32 %34)
  br label %38

38:                                               ; preds = %36, %29, %26, %24
  %39 = phi i32 [ %37, %36 ], [ 0, %29 ], [ 0, %24 ], [ 0, %26 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #6
  ret i32 %39
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @ipv6_select_ident(ptr nocapture readnone %0, ptr nocapture readnone %1, ptr nocapture readnone %2) #0 {
  br label %4

4:                                                ; preds = %4, %3
  %5 = tail call i32 @prandom_u32() #6
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %4, label %7

7:                                                ; preds = %4
  %8 = tail call i32 @llvm.bswap.i32(i32 %5)
  ret i32 %8
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @ip6_find_1stfragopt(ptr noundef %0, ptr nocapture noundef %1) #0 {
  %3 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 14
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 16
  %6 = load ptr, ptr %5, align 8
  %7 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 13, i32 0, i32 18
  %8 = load i16, ptr %7, align 4
  %9 = zext i16 %8 to i32
  %10 = getelementptr i8, ptr %6, i32 %9
  %11 = ptrtoint ptr %4 to i32
  %12 = ptrtoint ptr %10 to i32
  %13 = sub i32 %11, %12
  %14 = getelementptr inbounds %struct.ipv6hdr, ptr %10, i32 0, i32 3
  br label %15

15:                                               ; preds = %32, %2
  %16 = phi ptr [ %14, %2 ], [ %37, %32 ]
  %17 = phi i32 [ 40, %2 ], [ %43, %32 ]
  %18 = phi i32 [ 0, %2 ], [ %29, %32 ]
  store ptr %16, ptr %1, align 4
  %19 = icmp ugt i32 %17, %13
  br i1 %19, label %45, label %20

20:                                               ; preds = %15
  %21 = load i8, ptr %16, align 1
  switch i8 %21, label %45 [
    i8 0, label %28
    i8 43, label %22
    i8 60, label %23
  ]

22:                                               ; preds = %20
  br label %28

23:                                               ; preds = %20
  %24 = tail call i32 @ipv6_find_tlv(ptr noundef %0, i32 noundef %17, i32 noundef 201) #6
  %25 = icmp slt i32 %24, 0
  %26 = icmp ne i32 %18, 0
  %27 = select i1 %25, i1 %26, i1 false
  br i1 %27, label %45, label %28

28:                                               ; preds = %23, %22, %20
  %29 = phi i32 [ %18, %23 ], [ 1, %22 ], [ %18, %20 ]
  %30 = or i32 %17, 2
  %31 = icmp ugt i32 %30, %13
  br i1 %31, label %45, label %32

32:                                               ; preds = %28
  %33 = load ptr, ptr %5, align 8
  %34 = load i16, ptr %7, align 4
  %35 = zext i16 %34 to i32
  %36 = getelementptr i8, ptr %33, i32 %35
  %37 = getelementptr i8, ptr %36, i32 %17
  %38 = getelementptr inbounds %struct.ipv6_opt_hdr, ptr %37, i32 0, i32 1
  %39 = load i8, ptr %38, align 1
  %40 = zext i8 %39 to i32
  %41 = shl nuw nsw i32 %40, 3
  %42 = add nuw nsw i32 %17, 8
  %43 = add nuw nsw i32 %42, %41
  %44 = icmp ugt i32 %43, 65535
  br i1 %44, label %45, label %15

45:                                               ; preds = %32, %28, %23, %20, %15
  %46 = phi i32 [ -22, %15 ], [ -22, %32 ], [ -22, %28 ], [ %17, %20 ], [ %17, %23 ]
  ret i32 %46
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ipv6_find_tlv(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @ip6_dst_hoplimit(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.dst_entry, ptr %0, i32 0, i32 2
  %3 = load i32, ptr %2, align 4
  %4 = and i32 %3, -4
  %5 = inttoptr i32 %4 to ptr
  %6 = getelementptr i32, ptr %5, i32 9
  %7 = load i32, ptr %6, align 4
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %19

9:                                                ; preds = %1
  %10 = load ptr, ptr %0, align 4
  tail call void asm sideeffect "", "~{memory}"() #6, !srcloc !10
  %11 = getelementptr inbounds %struct.net_device, ptr %10, i32 0, i32 69
  %12 = load volatile ptr, ptr %11, align 4
  %13 = icmp eq ptr %12, null
  %14 = getelementptr inbounds %struct.inet6_dev, ptr %12, i32 0, i32 32
  %15 = load ptr, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 36, i32 2), align 32
  %16 = select i1 %13, ptr %15, ptr %14
  %17 = getelementptr inbounds %struct.ipv6_devconf, ptr %16, i32 0, i32 1
  %18 = load i32, ptr %17, align 4
  tail call void asm sideeffect "", "~{memory}"() #6, !srcloc !11
  br label %19

19:                                               ; preds = %9, %1
  %20 = phi i32 [ %18, %9 ], [ %7, %1 ]
  ret i32 %20
}

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define dso_local i32 @__ip6_local_out(ptr nocapture readnone %0, ptr nocapture readnone %1, ptr noundef %2) #5 {
  %4 = getelementptr inbounds %struct.sk_buff, ptr %2, i32 0, i32 5
  %5 = load i32, ptr %4, align 8
  %6 = add i32 %5, -40
  %7 = icmp sgt i32 %6, 65535
  %8 = trunc i32 %6 to i16
  %9 = select i1 %7, i16 0, i16 %8
  %10 = tail call i16 @llvm.bswap.i16(i16 %9)
  %11 = getelementptr inbounds %struct.sk_buff, ptr %2, i32 0, i32 16
  %12 = load ptr, ptr %11, align 8
  %13 = getelementptr inbounds %struct.sk_buff, ptr %2, i32 0, i32 13, i32 0, i32 18
  %14 = load i16, ptr %13, align 4
  %15 = zext i16 %14 to i32
  %16 = getelementptr i8, ptr %12, i32 %15
  %17 = getelementptr inbounds %struct.ipv6hdr, ptr %16, i32 0, i32 2
  store i16 %10, ptr %17, align 4
  %18 = getelementptr inbounds %struct.sk_buff, ptr %2, i32 0, i32 3, i32 14
  store i16 6, ptr %18, align 2
  %19 = icmp eq ptr %2, null
  br i1 %19, label %22, label %20, !prof !12

20:                                               ; preds = %3
  %21 = getelementptr inbounds %struct.sk_buff, ptr %2, i32 0, i32 13, i32 0, i32 16
  store i16 -8826, ptr %21, align 8
  br label %22

22:                                               ; preds = %20, %3
  %23 = phi i32 [ 1, %20 ], [ 0, %3 ]
  ret i32 %23
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @ip6_local_out(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = getelementptr inbounds %struct.sk_buff, ptr %2, i32 0, i32 5
  %5 = load i32, ptr %4, align 8
  %6 = add i32 %5, -40
  %7 = icmp sgt i32 %6, 65535
  %8 = trunc i32 %6 to i16
  %9 = select i1 %7, i16 0, i16 %8
  %10 = tail call i16 @llvm.bswap.i16(i16 %9) #6
  %11 = getelementptr inbounds %struct.sk_buff, ptr %2, i32 0, i32 16
  %12 = load ptr, ptr %11, align 8
  %13 = getelementptr inbounds %struct.sk_buff, ptr %2, i32 0, i32 13, i32 0, i32 18
  %14 = load i16, ptr %13, align 4
  %15 = zext i16 %14 to i32
  %16 = getelementptr i8, ptr %12, i32 %15
  %17 = getelementptr inbounds %struct.ipv6hdr, ptr %16, i32 0, i32 2
  store i16 %10, ptr %17, align 4
  %18 = getelementptr inbounds %struct.sk_buff, ptr %2, i32 0, i32 3, i32 14
  store i16 6, ptr %18, align 2
  %19 = icmp eq ptr %2, null
  br i1 %19, label %29, label %20, !prof !12

20:                                               ; preds = %3
  %21 = getelementptr inbounds %struct.sk_buff, ptr %2, i32 0, i32 13, i32 0, i32 16
  store i16 -8826, ptr %21, align 8
  %22 = getelementptr inbounds %struct.sk_buff, ptr %2, i32 0, i32 4
  %23 = load i32, ptr %22, align 8
  %24 = and i32 %23, -2
  %25 = inttoptr i32 %24 to ptr
  %26 = getelementptr inbounds %struct.dst_entry, ptr %25, i32 0, i32 6
  %27 = load ptr, ptr %26, align 4
  %28 = tail call i32 %27(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %2) #6
  br label %29

29:                                               ; preds = %20, %3
  %30 = phi i32 [ %28, %20 ], [ 0, %3 ]
  ret i32 %30
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @skb_copy_bits(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @prandom_u32() local_unnamed_addr #4

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { argmemonly nofree nounwind willreturn writeonly }
attributes #3 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { mustprogress nofree nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
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
!9 = !{!"branch_weights", i32 2000, i32 1}
!10 = !{i64 2149354829}
!11 = !{i64 2149355046}
!12 = !{!"branch_weights", i32 1, i32 2000}
