; ModuleID = '/llk/IR/net/ipv4/ip_fragment.c_pt.bc'
source_filename = "../net/ipv4/ip_fragment.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ip_defrag:\09\09\09\09\09"
module asm "\09.asciz \09\22ip_defrag\22\09\09\09\09\09"
module asm "__kstrtabns_ip_defrag:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ip_check_defrag:\09\09\09\09\09"
module asm "\09.asciz \09\22ip_check_defrag\22\09\09\09\09\09"
module asm "__kstrtabns_ip_check_defrag:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.inet_frags = type { i32, ptr, ptr, ptr, ptr, ptr, %struct.rhashtable_params, %struct.refcount_struct, %struct.completion }
%struct.rhashtable_params = type { i16, i16, i16, i16, i32, i16, i8, ptr, ptr, ptr }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.list_head = type { ptr, ptr }
%struct.pernet_operations = type { %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32 }
%struct.net = type { %struct.refcount_struct, %struct.spinlock, i32, i32, i32, %struct.spinlock, %struct.atomic_t, %struct.list_head, %struct.list_head, %struct.llist_node, ptr, ptr, ptr, %struct.idr, %struct.ns_common, %struct.ref_tracker_dir, %struct.list_head, ptr, ptr, %struct.ctl_table_set, ptr, ptr, ptr, ptr, ptr, %struct.raw_notifier_head, i32, ptr, %struct.list_head, %struct.netns_core, %struct.netns_mib, %struct.netns_packet, %struct.netns_unix, %struct.netns_nexthop, [40 x i8], %struct.netns_ipv4, %struct.netns_ipv6, ptr, %struct.netns_bpf, [28 x i8], %struct.netns_xfrm, i64, %struct.netns_can, ptr, ptr, [32 x i8] }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
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
%struct.netns_ipv6 = type { %struct.dst_ops, %struct.netns_sysctl_ipv6, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.timer_list, ptr, ptr, %struct.list_head, %struct.rwlock_t, %struct.spinlock, i32, i32, i8, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, i32, %struct.anon.131, ptr, [60 x i8] }
%struct.dst_ops = type { i16, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [60 x i8], %struct.percpu_counter, [32 x i8] }
%struct.percpu_counter = type { %struct.raw_spinlock, i64, %struct.list_head, ptr }
%struct.netns_sysctl_ipv6 = type { ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i8, i32, i8, i8, i8, [8 x i32], ptr, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i8, i8 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32 }
%struct.hlist_node = type { ptr, ptr }
%struct.rwlock_t = type { %struct.arch_rwlock_t }
%struct.arch_rwlock_t = type { i32 }
%struct.anon.131 = type { %struct.hlist_head, %struct.spinlock, i32 }
%struct.netns_bpf = type { [2 x ptr], [2 x ptr], [2 x %struct.list_head] }
%struct.netns_xfrm = type { %struct.list_head, ptr, ptr, ptr, ptr, i32, i32, %struct.work_struct, %struct.list_head, ptr, i32, [3 x %struct.hlist_head], [3 x %struct.xfrm_policy_hash], [6 x i32], %struct.work_struct, %struct.xfrm_policy_hthresh, %struct.list_head, ptr, ptr, i32, i32, i32, i32, i8, ptr, [36 x i8], %struct.dst_ops, %struct.dst_ops, %struct.spinlock, %struct.seqcount_spinlock, %struct.seqcount_spinlock, %struct.spinlock, %struct.mutex, [28 x i8] }
%struct.xfrm_policy_hash = type { ptr, i32, i8, i8, i8, i8 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.xfrm_policy_hthresh = type { %struct.work_struct, %struct.seqlock_t, i8, i8, i8, i8 }
%struct.netns_can = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.spinlock, %struct.timer_list, ptr, ptr, %struct.hlist_head }
%struct.ctl_table = type { ptr, ptr, i32, i16, ptr, ptr, ptr, ptr, ptr }
%struct.frag_v4_compare_key = type { i32, i32, i32, i32, i16, i16 }
%struct.anon.76 = type { ptr, ptr, %union.anon.77 }
%union.anon.77 = type { ptr }
%struct.thread_info = type { i32, i32, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], [4 x i8], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.ipstats_mib = type { [37 x i64], %struct.u64_stats_sync }
%struct.u64_stats_sync = type { %struct.seqcount }
%struct.sk_buff = type { %union.anon.75, %union.anon.98, %union.anon.99, [48 x i8], %union.anon.100, i32, i32, i16, i16, i16, [0 x i8], i8, i8, %union.anon.102, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon.75 = type { %struct.anon.76 }
%union.anon.98 = type { ptr }
%union.anon.99 = type { i64 }
%union.anon.100 = type { %struct.anon.101 }
%struct.anon.101 = type { i32, ptr }
%union.anon.102 = type { %struct.anon.103 }
%struct.anon.103 = type { [0 x i8], i16, [0 x i8], i16, %union.anon.104, i32, i32, i32, i16, i16, %union.anon.106, %union.anon.107, %union.anon.108, i16, i16, i16, i16, i16, i16, i16 }
%union.anon.104 = type { i32 }
%union.anon.106 = type { i32 }
%union.anon.107 = type { i32 }
%union.anon.108 = type { i16 }
%struct.iphdr = type { i8, i8, i16, i16, i16, i8, i8, i16, i32, i32 }
%struct.inet_frag_queue = type { %struct.rhash_head, %union.anon.125, %struct.timer_list, %struct.spinlock, %struct.refcount_struct, %struct.rb_root, ptr, ptr, i64, i32, i32, i8, i16, ptr, %struct.callback_head }
%struct.rhash_head = type { ptr }
%union.anon.125 = type { %struct.frag_v6_compare_key }
%struct.frag_v6_compare_key = type { %struct.in6_addr, %struct.in6_addr, i32, i32, i32 }
%struct.in6_addr = type { %union.anon.96 }
%union.anon.96 = type { [4 x i32] }
%struct.callback_head = type { ptr, ptr }
%struct.fqdir = type { i32, i32, i32, i32, ptr, ptr, i8, [39 x i8], %struct.rhashtable, [40 x i8], %struct.atomic_t, %struct.work_struct, %struct.llist_node, [40 x i8] }
%struct.rhashtable = type { ptr, i32, i32, %struct.rhashtable_params, i8, %struct.work_struct, %struct.mutex, %struct.spinlock, %struct.atomic_t }
%struct.ipq = type { %struct.inet_frag_queue, i8, i16, i32, i32, ptr }
%struct.inet_peer = type { %struct.rb_node, %struct.inetpeer_addr, [17 x i32], i32, i32, i32, %union.anon.137, i32, %struct.refcount_struct }
%struct.rb_node = type { i32, ptr, ptr }
%struct.inetpeer_addr = type { %union.anon.136, i16 }
%union.anon.136 = type { %struct.in6_addr }
%union.anon.137 = type { %struct.callback_head }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon.78, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, i32, i32, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [8 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, %struct.possible_net_t, ptr, i32, %union.anon.97, %struct.device, [4 x ptr], ptr, ptr, i32, i16, i16, [16 x %struct.netdev_tc_txq], [16 x i8], ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], %struct.netdevice_tracker, %struct.netdevice_tracker, [48 x i8] }
%struct.anon.78 = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%struct.possible_net_t = type {}
%union.anon.97 = type { ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.netdev_tc_txq = type { i16, i16 }
%struct.bpf_xdp_entity = type { ptr, ptr }
%struct.netdevice_tracker = type {}
%struct.ipv4_addr_key = type { i32, i32 }
%struct.rtable = type { %struct.dst_entry, i32, i32, i16, i8, i8, i32, i8, %union.anon.139, i32, %struct.list_head, ptr }
%struct.dst_entry = type { ptr, ptr, i32, i32, ptr, ptr, ptr, i16, i16, i16, i16, i32, i32, ptr, %struct.callback_head, i16, i16, i32, %struct.atomic_t, %struct.netdevice_tracker }
%union.anon.139 = type { %struct.in6_addr }
%struct.rhashtable_compare_arg = type { ptr, ptr }

@__kstrtab_ip_defrag = external dso_local constant [0 x i8], align 1
@__kstrtabns_ip_defrag = external dso_local constant [0 x i8], align 1
@__ksymtab_ip_defrag = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ip_defrag to i32), ptr @__kstrtab_ip_defrag, ptr @__kstrtabns_ip_defrag }, section "___ksymtab+ip_defrag", align 4
@__kstrtab_ip_check_defrag = external dso_local constant [0 x i8], align 1
@__kstrtabns_ip_check_defrag = external dso_local constant [0 x i8], align 1
@__ksymtab_ip_check_defrag = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ip_check_defrag to i32), ptr @__kstrtab_ip_check_defrag, ptr @__kstrtabns_ip_check_defrag }, section "___ksymtab+ip_check_defrag", align 4
@ip4_frags = internal global %struct.inet_frags zeroinitializer, align 4
@ip_frag_cache_name = internal constant [10 x i8] c"ip4-frags\00", align 1
@ip4_rhash_params = internal unnamed_addr constant %struct.rhashtable_params { i16 0, i16 20, i16 4, i16 0, i32 0, i16 0, i8 1, ptr @ip4_key_hashfn, ptr @ip4_obj_hashfn, ptr @ip4_obj_cmpfn }, align 4
@.str = private unnamed_addr constant [40 x i8] c"IP: failed to allocate ip4_frags cache\0A\00", align 1
@ip4_frags_ops = internal global %struct.pernet_operations { %struct.list_head zeroinitializer, ptr @ipv4_frags_init_net, ptr @ipv4_frags_pre_exit_net, ptr @ipv4_frags_exit_net, ptr null, ptr null, i32 0 }, align 4
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 64
@ip_frag_ecn_table = external dso_local local_unnamed_addr constant [16 x i8], align 1
@.str.2 = private unnamed_addr constant [39 x i8] c"\016IPv4: Oversized IP packet from %pI4\0A\00", align 1
@init_net = external dso_local global %struct.net, align 64
@.str.3 = private unnamed_addr constant [9 x i8] c"net/ipv4\00", align 1
@ip4_frags_ctl_table = internal global [2 x %struct.ctl_table] [%struct.ctl_table { ptr @.str.4, ptr @ip4_frags_secret_interval_unused, i32 4, i16 420, ptr null, ptr @proc_dointvec_jiffies, ptr null, ptr null, ptr null }, %struct.ctl_table zeroinitializer], align 4
@.str.4 = private unnamed_addr constant [23 x i8] c"ipfrag_secret_interval\00", align 1
@ip4_frags_secret_interval_unused = internal global i32 0, align 4
@ip4_frags_ns_ctl_table = internal global [5 x %struct.ctl_table] [%struct.ctl_table { ptr @.str.5, ptr null, i32 4, i16 420, ptr null, ptr @proc_doulongvec_minmax, ptr null, ptr null, ptr null }, %struct.ctl_table { ptr @.str.6, ptr null, i32 4, i16 420, ptr null, ptr @proc_doulongvec_minmax, ptr null, ptr null, ptr null }, %struct.ctl_table { ptr @.str.7, ptr null, i32 4, i16 420, ptr null, ptr @proc_dointvec_jiffies, ptr null, ptr null, ptr null }, %struct.ctl_table { ptr @.str.8, ptr null, i32 4, i16 420, ptr null, ptr @proc_dointvec_minmax, ptr null, ptr @dist_min, ptr null }, %struct.ctl_table zeroinitializer], align 4
@.str.5 = private unnamed_addr constant [19 x i8] c"ipfrag_high_thresh\00", align 1
@.str.6 = private unnamed_addr constant [18 x i8] c"ipfrag_low_thresh\00", align 1
@.str.7 = private unnamed_addr constant [12 x i8] c"ipfrag_time\00", align 1
@.str.8 = private unnamed_addr constant [16 x i8] c"ipfrag_max_dist\00", align 1
@dist_min = internal global i32 0, align 4
@llvm.compiler.used = appending global [2 x ptr] [ptr @__ksymtab_ip_check_defrag, ptr @__ksymtab_ip_defrag], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @ip_defrag(ptr nocapture noundef readonly %0, ptr noundef %1, i32 noundef %2) #0 {
  %4 = alloca %struct.frag_v4_compare_key, align 4
  %5 = getelementptr inbounds %struct.anon.76, ptr %1, i32 0, i32 2
  %6 = tail call ptr @llvm.thread.pointer() #17
  %7 = getelementptr inbounds %struct.thread_info, ptr %6, i32 0, i32 1
  %8 = load volatile i32, ptr %7, align 4
  %9 = add i32 %8, 512
  store volatile i32 %9, ptr %7, align 4
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !9
  %10 = getelementptr inbounds %struct.net, ptr %0, i32 0, i32 30
  %11 = load ptr, ptr %10, align 8
  %12 = ptrtoint ptr %11 to i32
  %13 = tail call i32 @llvm.read_register.i32(metadata !0) #17
  %14 = inttoptr i32 %13 to ptr
  %15 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %14) #10, !srcloc !10
  %16 = add i32 %15, %12
  %17 = inttoptr i32 %16 to ptr
  %18 = getelementptr inbounds %struct.ipstats_mib, ptr %17, i32 0, i32 1
  %19 = load i32, ptr %18, align 4
  %20 = add i32 %19, 1
  store i32 %20, ptr %18, align 4
  tail call void asm sideeffect "dmb ishst", "~{memory}"() #17, !srcloc !11
  %21 = getelementptr [37 x i64], ptr %17, i32 0, i32 17
  %22 = load i64, ptr %21, align 8
  %23 = add i64 %22, 1
  store i64 %23, ptr %21, align 8
  tail call void asm sideeffect "dmb ishst", "~{memory}"() #17, !srcloc !12
  %24 = load i32, ptr %18, align 4
  %25 = add i32 %24, 1
  store i32 %25, ptr %18, align 4
  tail call fastcc void @local_bh_enable()
  %26 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 4, i32 0, i32 1
  %27 = load ptr, ptr %26, align 4
  %28 = icmp eq ptr %27, null
  br i1 %28, label %31, label %29

29:                                               ; preds = %3
  tail call void %27(ptr noundef %1) #17
  store ptr null, ptr %26, align 4
  %30 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 1
  store ptr null, ptr %30, align 4
  br label %36

31:                                               ; preds = %3
  %32 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 1
  %33 = load ptr, ptr %32, align 4
  %34 = icmp eq ptr %33, null
  br i1 %34, label %36, label %35, !prof !13

35:                                               ; preds = %31
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/skbuff.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2859, 0\0A.popsection", ""() #17, !srcloc !14
  unreachable

36:                                               ; preds = %31, %29
  %37 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 16
  %38 = load ptr, ptr %37, align 8
  %39 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 13, i32 0, i32 18
  %40 = load i16, ptr %39, align 4
  %41 = zext i16 %40 to i32
  %42 = getelementptr i8, ptr %38, i32 %41
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %4) #17
  %43 = getelementptr inbounds %struct.iphdr, ptr %42, i32 0, i32 8
  %44 = load i32, ptr %43, align 4
  store i32 %44, ptr %4, align 4
  %45 = getelementptr inbounds %struct.frag_v4_compare_key, ptr %4, i32 0, i32 1
  %46 = getelementptr inbounds %struct.iphdr, ptr %42, i32 0, i32 9
  %47 = load i32, ptr %46, align 4
  store i32 %47, ptr %45, align 4
  %48 = getelementptr inbounds %struct.frag_v4_compare_key, ptr %4, i32 0, i32 2
  store i32 %2, ptr %48, align 4
  %49 = getelementptr inbounds %struct.frag_v4_compare_key, ptr %4, i32 0, i32 3
  store i32 0, ptr %49, align 4
  %50 = getelementptr inbounds %struct.frag_v4_compare_key, ptr %4, i32 0, i32 4
  %51 = getelementptr inbounds %struct.iphdr, ptr %42, i32 0, i32 3
  %52 = load i16, ptr %51, align 4
  store i16 %52, ptr %50, align 4
  %53 = getelementptr inbounds %struct.frag_v4_compare_key, ptr %4, i32 0, i32 5
  %54 = getelementptr inbounds %struct.iphdr, ptr %42, i32 0, i32 6
  %55 = load i8, ptr %54, align 1
  %56 = zext i8 %55 to i16
  store i16 %56, ptr %53, align 2
  %57 = getelementptr inbounds %struct.net, ptr %0, i32 0, i32 35, i32 18
  %58 = load ptr, ptr %57, align 8
  %59 = call ptr @inet_frag_find(ptr noundef %58, ptr noundef nonnull %4) #17
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %4) #17
  %60 = icmp eq ptr %59, null
  br i1 %60, label %481, label %61

61:                                               ; preds = %36
  %62 = getelementptr inbounds %struct.inet_frag_queue, ptr %59, i32 0, i32 3
  call void @_raw_spin_lock(ptr noundef %62) #17
  %63 = getelementptr inbounds %struct.inet_frag_queue, ptr %59, i32 0, i32 13
  %64 = load ptr, ptr %63, align 4
  %65 = getelementptr inbounds %struct.fqdir, ptr %64, i32 0, i32 5
  %66 = load ptr, ptr %65, align 4
  %67 = getelementptr inbounds %struct.inet_frag_queue, ptr %59, i32 0, i32 11
  %68 = load i8, ptr %67, align 8
  %69 = and i8 %68, 4
  %70 = icmp eq i8 %69, 0
  br i1 %70, label %71, label %467

71:                                               ; preds = %61
  %72 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 3, i32 20
  %73 = load i16, ptr %72, align 4
  %74 = and i16 %73, 8
  %75 = icmp eq i16 %74, 0
  br i1 %75, label %76, label %149

76:                                               ; preds = %71
  %77 = getelementptr inbounds %struct.ipq, ptr %59, i32 0, i32 5
  %78 = load ptr, ptr %77, align 4
  %79 = getelementptr inbounds %struct.fqdir, ptr %64, i32 0, i32 3
  %80 = load i32, ptr %79, align 4
  %81 = icmp ne ptr %78, null
  %82 = icmp ne i32 %80, 0
  %83 = select i1 %81, i1 %82, i1 false
  br i1 %83, label %84, label %149

84:                                               ; preds = %76
  %85 = getelementptr inbounds %struct.ipq, ptr %59, i32 0, i32 4
  %86 = load i32, ptr %85, align 8
  %87 = getelementptr inbounds %struct.inet_peer, ptr %78, i32 0, i32 6
  call void asm sideeffect "dmb ish", "~{memory}"() #17, !srcloc !15
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %87) #17, !srcloc !16
  %88 = call { i32, i32 } asm sideeffect "@ atomic_add_return\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %87, ptr %87, i32 1, ptr elementtype(i32) %87) #17, !srcloc !17
  %89 = extractvalue { i32, i32 } %88, 0
  call void asm sideeffect "dmb ish", "~{memory}"() #17, !srcloc !18
  store i32 %89, ptr %85, align 8
  %90 = getelementptr inbounds %struct.inet_frag_queue, ptr %59, i32 0, i32 6
  %91 = load ptr, ptr %90, align 8
  %92 = icmp ne ptr %91, null
  %93 = sub i32 %89, %86
  %94 = icmp ugt i32 %93, %80
  %95 = select i1 %92, i1 %94, i1 false
  br i1 %95, label %96, label %149

96:                                               ; preds = %84
  %97 = load volatile i32, ptr %7, align 4
  %98 = add i32 %97, 512
  store volatile i32 %98, ptr %7, align 4
  call void asm sideeffect "", "~{memory}"() #17, !srcloc !9
  %99 = load ptr, ptr %63, align 4
  %100 = getelementptr inbounds %struct.fqdir, ptr %99, i32 0, i32 5
  %101 = load ptr, ptr %100, align 4
  %102 = getelementptr inbounds %struct.net, ptr %101, i32 0, i32 30
  %103 = load ptr, ptr %102, align 8
  %104 = ptrtoint ptr %103 to i32
  %105 = call i32 @llvm.read_register.i32(metadata !0) #17
  %106 = inttoptr i32 %105 to ptr
  %107 = call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %106) #10, !srcloc !10
  %108 = add i32 %107, %104
  %109 = inttoptr i32 %108 to ptr
  %110 = getelementptr inbounds %struct.ipstats_mib, ptr %109, i32 0, i32 1
  %111 = load i32, ptr %110, align 4
  %112 = add i32 %111, 1
  store i32 %112, ptr %110, align 4
  call void asm sideeffect "dmb ishst", "~{memory}"() #17, !srcloc !11
  %113 = getelementptr [37 x i64], ptr %109, i32 0, i32 19
  %114 = load i64, ptr %113, align 8
  %115 = add i64 %114, 1
  store i64 %115, ptr %113, align 8
  call void asm sideeffect "dmb ishst", "~{memory}"() #17, !srcloc !12
  %116 = load i32, ptr %110, align 4
  %117 = add i32 %116, 1
  store i32 %117, ptr %110, align 4
  call fastcc void @local_bh_enable() #17
  %118 = getelementptr inbounds %struct.inet_frag_queue, ptr %59, i32 0, i32 2
  %119 = load volatile i32, ptr @jiffies, align 64
  %120 = load ptr, ptr %63, align 4
  %121 = getelementptr inbounds %struct.fqdir, ptr %120, i32 0, i32 2
  %122 = load i32, ptr %121, align 8
  %123 = add i32 %122, %119
  %124 = call i32 @mod_timer(ptr noundef %118, i32 noundef %123) #17
  %125 = icmp eq i32 %124, 0
  br i1 %125, label %126, label %137

126:                                              ; preds = %96
  %127 = getelementptr inbounds %struct.inet_frag_queue, ptr %59, i32 0, i32 4
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %127) #17, !srcloc !16
  %128 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %127, ptr %127, i32 1, ptr elementtype(i32) %127) #17, !srcloc !19
  %129 = extractvalue { i32, i32, i32 } %128, 0
  %130 = icmp eq i32 %129, 0
  br i1 %130, label %135, label %131, !prof !20

131:                                              ; preds = %126
  %132 = add i32 %129, 1
  %133 = or i32 %132, %129
  %134 = icmp sgt i32 %133, -1
  br i1 %134, label %148, label %135, !prof !13

135:                                              ; preds = %131, %126
  %136 = phi i32 [ 2, %126 ], [ 1, %131 ]
  call void @refcount_warn_saturate(ptr noundef %127, i32 noundef %136) #17
  br label %148

137:                                              ; preds = %96
  %138 = getelementptr inbounds %struct.inet_frag_queue, ptr %59, i32 0, i32 5
  %139 = call i32 @inet_frag_rbtree_purge(ptr noundef %138) #17
  %140 = load ptr, ptr %63, align 4
  %141 = getelementptr inbounds %struct.fqdir, ptr %140, i32 0, i32 10
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %141) #17, !srcloc !16
  %142 = call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %141, ptr %141, i32 %139, ptr elementtype(i32) %141) #17, !srcloc !21
  store i8 0, ptr %67, align 8
  %143 = getelementptr inbounds %struct.inet_frag_queue, ptr %59, i32 0, i32 9
  store i32 0, ptr %143, align 8
  %144 = getelementptr inbounds %struct.inet_frag_queue, ptr %59, i32 0, i32 10
  store i32 0, ptr %144, align 4
  store ptr null, ptr %138, align 4
  store ptr null, ptr %90, align 8
  %145 = getelementptr inbounds %struct.inet_frag_queue, ptr %59, i32 0, i32 7
  store ptr null, ptr %145, align 4
  %146 = getelementptr inbounds %struct.ipq, ptr %59, i32 0, i32 3
  store i32 0, ptr %146, align 4
  %147 = getelementptr inbounds %struct.ipq, ptr %59, i32 0, i32 1
  store i8 0, ptr %147, align 8
  br label %149

148:                                              ; preds = %135, %131
  call void @inet_frag_kill(ptr noundef nonnull %59) #17
  br label %467

149:                                              ; preds = %137, %84, %76, %71
  %150 = load ptr, ptr %37, align 8
  %151 = load i16, ptr %39, align 4
  %152 = zext i16 %151 to i32
  %153 = getelementptr i8, ptr %150, i32 %152
  %154 = getelementptr inbounds %struct.iphdr, ptr %153, i32 0, i32 1
  %155 = load i8, ptr %154, align 1
  %156 = and i8 %155, 3
  %157 = shl nuw nsw i8 1, %156
  %158 = getelementptr inbounds %struct.iphdr, ptr %153, i32 0, i32 4
  %159 = load i16, ptr %158, align 2
  %160 = call i16 @llvm.bswap.i16(i16 %159) #17
  %161 = zext i16 %160 to i32
  %162 = shl nuw nsw i32 %161, 3
  %163 = and i32 %162, 65528
  %164 = load i8, ptr %153, align 4
  %165 = shl i8 %164, 2
  %166 = and i8 %165, 60
  %167 = zext i8 %166 to i32
  %168 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 5
  %169 = load i32, ptr %168, align 8
  %170 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 17
  %171 = load ptr, ptr %170, align 4
  %172 = ptrtoint ptr %153 to i32
  %173 = ptrtoint ptr %171 to i32
  %174 = sub i32 %169, %172
  %175 = add i32 %174, %163
  %176 = add i32 %175, %173
  %177 = sub i32 %176, %167
  %178 = and i32 %161, 8192
  %179 = icmp eq i32 %178, 0
  br i1 %179, label %180, label %192

180:                                              ; preds = %149
  %181 = getelementptr inbounds %struct.inet_frag_queue, ptr %59, i32 0, i32 9
  %182 = load i32, ptr %181, align 8
  %183 = icmp slt i32 %177, %182
  br i1 %183, label %447, label %184

184:                                              ; preds = %180
  %185 = load i8, ptr %67, align 8
  %186 = and i8 %185, 2
  %187 = icmp eq i8 %186, 0
  %188 = icmp eq i32 %177, %182
  %189 = select i1 %187, i1 true, i1 %188
  br i1 %189, label %190, label %447

190:                                              ; preds = %184
  %191 = or i8 %185, 2
  store i8 %191, ptr %67, align 8
  store i32 %177, ptr %181, align 8
  br label %213

192:                                              ; preds = %149
  %193 = and i32 %177, 7
  %194 = icmp eq i32 %193, 0
  br i1 %194, label %203, label %195

195:                                              ; preds = %192
  %196 = and i32 %177, -8
  %197 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 13
  %198 = load i16, ptr %197, align 8
  %199 = and i16 %198, 96
  %200 = icmp eq i16 %199, 32
  br i1 %200, label %203, label %201

201:                                              ; preds = %195
  %202 = and i16 %198, -97
  store i16 %202, ptr %197, align 8
  br label %203

203:                                              ; preds = %201, %195, %192
  %204 = phi i32 [ %196, %201 ], [ %196, %195 ], [ %177, %192 ]
  %205 = getelementptr inbounds %struct.inet_frag_queue, ptr %59, i32 0, i32 9
  %206 = load i32, ptr %205, align 8
  %207 = icmp sgt i32 %204, %206
  br i1 %207, label %208, label %213

208:                                              ; preds = %203
  %209 = load i8, ptr %67, align 8
  %210 = and i8 %209, 2
  %211 = icmp eq i8 %210, 0
  br i1 %211, label %212, label %447

212:                                              ; preds = %208
  store i32 %204, ptr %205, align 8
  br label %213

213:                                              ; preds = %212, %203, %190
  %214 = phi i32 [ %177, %190 ], [ %204, %212 ], [ %204, %203 ]
  %215 = icmp eq i32 %214, %163
  br i1 %215, label %447, label %216

216:                                              ; preds = %213
  %217 = load ptr, ptr %37, align 8
  %218 = load i16, ptr %39, align 4
  %219 = zext i16 %218 to i32
  %220 = getelementptr i8, ptr %217, i32 %219
  %221 = load ptr, ptr %170, align 4
  %222 = ptrtoint ptr %220 to i32
  %223 = ptrtoint ptr %221 to i32
  %224 = sub i32 %222, %223
  %225 = add i32 %224, %167
  %226 = load i32, ptr %168, align 8
  %227 = icmp ult i32 %226, %225
  br i1 %227, label %447, label %228, !prof !20

228:                                              ; preds = %216
  %229 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 6
  %230 = load i32, ptr %229, align 4
  %231 = sub i32 %226, %230
  %232 = icmp ugt i32 %225, %231
  br i1 %232, label %233, label %240

233:                                              ; preds = %228
  %234 = sub i32 %225, %231
  %235 = call ptr @__pskb_pull_tail(ptr noundef %1, i32 noundef %234) #17
  %236 = icmp eq ptr %235, null
  br i1 %236, label %447, label %237

237:                                              ; preds = %233
  %238 = load i32, ptr %168, align 8
  %239 = load ptr, ptr %170, align 4
  br label %240

240:                                              ; preds = %237, %228
  %241 = phi ptr [ %239, %237 ], [ %221, %228 ]
  %242 = phi i32 [ %238, %237 ], [ %226, %228 ]
  %243 = sub i32 %242, %225
  store i32 %243, ptr %168, align 8
  %244 = getelementptr i8, ptr %241, i32 %225
  store ptr %244, ptr %170, align 4
  %245 = icmp eq ptr %244, null
  br i1 %245, label %447, label %246

246:                                              ; preds = %240
  %247 = sub i32 %214, %163
  %248 = icmp ugt i32 %243, %247
  br i1 %248, label %249, label %252, !prof !20

249:                                              ; preds = %246
  %250 = call i32 @pskb_trim_rcsum_slow(ptr noundef %1, i32 noundef %247) #17
  %251 = icmp eq i32 %250, 0
  br i1 %251, label %252, label %447

252:                                              ; preds = %249, %246
  %253 = load ptr, ptr %5, align 8
  call void asm sideeffect "", "~{memory}"() #17, !srcloc !22
  %254 = getelementptr inbounds %struct.inet_frag_queue, ptr %59, i32 0, i32 6
  %255 = load ptr, ptr %254, align 8
  %256 = call i32 @inet_frag_queue_insert(ptr noundef nonnull %59, ptr noundef %1, i32 noundef %163, i32 noundef %214) #17
  switch i32 %256, label %428 [
    i32 0, label %257
    i32 1, label %427
  ]

257:                                              ; preds = %252
  %258 = icmp eq ptr %253, null
  br i1 %258, label %263, label %259

259:                                              ; preds = %257
  %260 = getelementptr inbounds %struct.net_device, ptr %253, i32 0, i32 17
  %261 = load i32, ptr %260, align 4
  %262 = getelementptr inbounds %struct.ipq, ptr %59, i32 0, i32 3
  store i32 %261, ptr %262, align 4
  br label %263

263:                                              ; preds = %259, %257
  %264 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 2
  %265 = load i64, ptr %264, align 8
  %266 = getelementptr inbounds %struct.inet_frag_queue, ptr %59, i32 0, i32 8
  store i64 %265, ptr %266, align 8
  %267 = load i32, ptr %168, align 8
  %268 = getelementptr inbounds %struct.inet_frag_queue, ptr %59, i32 0, i32 10
  %269 = load i32, ptr %268, align 4
  %270 = add i32 %269, %267
  store i32 %270, ptr %268, align 4
  %271 = getelementptr inbounds %struct.ipq, ptr %59, i32 0, i32 1
  %272 = load i8, ptr %271, align 8
  %273 = or i8 %272, %157
  store i8 %273, ptr %271, align 8
  %274 = load ptr, ptr %63, align 4
  %275 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 18
  %276 = load i32, ptr %275, align 8
  %277 = getelementptr inbounds %struct.fqdir, ptr %274, i32 0, i32 10
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %277) #17, !srcloc !16
  %278 = call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %277, ptr %277, i32 %276, ptr elementtype(i32) %277) #17, !srcloc !23
  %279 = icmp eq i32 %163, 0
  br i1 %279, label %280, label %283

280:                                              ; preds = %263
  %281 = load i8, ptr %67, align 8
  %282 = or i8 %281, 1
  store i8 %282, ptr %67, align 8
  br label %283

283:                                              ; preds = %280, %263
  %284 = load i32, ptr %168, align 8
  %285 = add i32 %284, %167
  %286 = getelementptr inbounds %struct.inet_frag_queue, ptr %59, i32 0, i32 12
  %287 = load i16, ptr %286, align 2
  %288 = zext i16 %287 to i32
  %289 = icmp ugt i32 %285, %288
  br i1 %289, label %290, label %292

290:                                              ; preds = %283
  %291 = trunc i32 %285 to i16
  store i16 %291, ptr %286, align 2
  br label %292

292:                                              ; preds = %290, %283
  %293 = load ptr, ptr %37, align 8
  %294 = load i16, ptr %39, align 4
  %295 = zext i16 %294 to i32
  %296 = getelementptr i8, ptr %293, i32 %295
  %297 = getelementptr inbounds %struct.iphdr, ptr %296, i32 0, i32 4
  %298 = load i16, ptr %297, align 2
  %299 = and i16 %298, 64
  %300 = icmp eq i16 %299, 0
  br i1 %300, label %308, label %301

301:                                              ; preds = %292
  %302 = getelementptr inbounds %struct.ipq, ptr %59, i32 0, i32 2
  %303 = load i16, ptr %302, align 2
  %304 = zext i16 %303 to i32
  %305 = icmp ugt i32 %285, %304
  br i1 %305, label %306, label %308

306:                                              ; preds = %301
  %307 = trunc i32 %285 to i16
  store i16 %307, ptr %302, align 2
  br label %308

308:                                              ; preds = %306, %301, %292
  %309 = load i8, ptr %67, align 8
  %310 = icmp eq i8 %309, 3
  br i1 %310, label %311, label %416

311:                                              ; preds = %308
  %312 = load i32, ptr %268, align 4
  %313 = getelementptr inbounds %struct.inet_frag_queue, ptr %59, i32 0, i32 9
  %314 = load i32, ptr %313, align 8
  %315 = icmp eq i32 %312, %314
  br i1 %315, label %316, label %416

316:                                              ; preds = %311
  %317 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 4
  %318 = load i32, ptr %317, align 8
  store i32 0, ptr %317, align 8
  %319 = load ptr, ptr %63, align 4
  %320 = getelementptr inbounds %struct.fqdir, ptr %319, i32 0, i32 5
  %321 = load ptr, ptr %320, align 4
  call void @inet_frag_kill(ptr noundef nonnull %59) #17
  %322 = load i8, ptr %271, align 8
  %323 = zext i8 %322 to i32
  %324 = getelementptr [16 x i8], ptr @ip_frag_ecn_table, i32 0, i32 %323
  %325 = load i8, ptr %324, align 1
  %326 = icmp eq i8 %325, -1
  br i1 %326, label %396, label %327, !prof !20

327:                                              ; preds = %316
  %328 = call ptr @inet_frag_reasm_prepare(ptr noundef nonnull %59, ptr noundef %1, ptr noundef %255) #17
  %329 = icmp eq ptr %328, null
  br i1 %329, label %396, label %330

330:                                              ; preds = %327
  %331 = load ptr, ptr %37, align 8
  %332 = load i16, ptr %39, align 4
  %333 = zext i16 %332 to i32
  %334 = getelementptr i8, ptr %331, i32 %333
  %335 = load i8, ptr %334, align 4
  %336 = shl i8 %335, 2
  %337 = and i8 %336, 60
  %338 = zext i8 %337 to i32
  %339 = load i32, ptr %313, align 8
  %340 = add i32 %339, %338
  %341 = icmp sgt i32 %340, 65535
  br i1 %341, label %390, label %342

342:                                              ; preds = %330
  %343 = getelementptr inbounds %struct.inet_frag_queue, ptr %59, i32 0, i32 1, i32 0, i32 0, i32 0, i32 0, i32 2
  %344 = load i32, ptr %343, align 4
  %345 = icmp eq i32 %344, 0
  call void @inet_frag_reasm_finish(ptr noundef nonnull %59, ptr noundef %1, ptr noundef nonnull %328, i1 noundef zeroext %345) #17
  store ptr %253, ptr %5, align 8
  %346 = getelementptr inbounds %struct.ipq, ptr %59, i32 0, i32 2
  %347 = load i16, ptr %346, align 2
  %348 = load i16, ptr %286, align 2
  %349 = call i16 @llvm.umax.i16(i16 %347, i16 %348) #17
  %350 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 3, i32 22
  store i16 %349, ptr %350, align 2
  %351 = load ptr, ptr %37, align 8
  %352 = load i16, ptr %39, align 4
  %353 = zext i16 %352 to i32
  %354 = getelementptr i8, ptr %351, i32 %353
  %355 = trunc i32 %340 to i16
  %356 = call i16 @llvm.bswap.i16(i16 %355) #17
  %357 = getelementptr inbounds %struct.iphdr, ptr %354, i32 0, i32 2
  store i16 %356, ptr %357, align 2
  %358 = getelementptr inbounds %struct.iphdr, ptr %354, i32 0, i32 1
  %359 = load i8, ptr %358, align 1
  %360 = or i8 %359, %325
  store i8 %360, ptr %358, align 1
  %361 = load i16, ptr %346, align 2
  %362 = load i16, ptr %286, align 2
  %363 = icmp eq i16 %361, %362
  br i1 %363, label %364, label %367

364:                                              ; preds = %342
  %365 = load i16, ptr %72, align 4
  %366 = or i16 %365, 64
  store i16 %366, ptr %72, align 4
  br label %367

367:                                              ; preds = %364, %342
  %368 = phi i16 [ 64, %364 ], [ 0, %342 ]
  %369 = getelementptr inbounds %struct.iphdr, ptr %354, i32 0, i32 4
  store i16 %368, ptr %369, align 2
  call void @ip_send_check(ptr noundef %354) #17
  %370 = load volatile i32, ptr %7, align 4
  %371 = add i32 %370, 512
  store volatile i32 %371, ptr %7, align 4
  call void asm sideeffect "", "~{memory}"() #17, !srcloc !9
  %372 = getelementptr inbounds %struct.net, ptr %321, i32 0, i32 30
  %373 = load ptr, ptr %372, align 8
  %374 = ptrtoint ptr %373 to i32
  %375 = call i32 @llvm.read_register.i32(metadata !0) #17
  %376 = inttoptr i32 %375 to ptr
  %377 = call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %376) #10, !srcloc !10
  %378 = add i32 %377, %374
  %379 = inttoptr i32 %378 to ptr
  %380 = getelementptr inbounds %struct.ipstats_mib, ptr %379, i32 0, i32 1
  %381 = load i32, ptr %380, align 4
  %382 = add i32 %381, 1
  store i32 %382, ptr %380, align 4
  call void asm sideeffect "dmb ishst", "~{memory}"() #17, !srcloc !11
  %383 = getelementptr [37 x i64], ptr %379, i32 0, i32 18
  %384 = load i64, ptr %383, align 8
  %385 = add i64 %384, 1
  store i64 %385, ptr %383, align 8
  call void asm sideeffect "dmb ishst", "~{memory}"() #17, !srcloc !12
  %386 = load i32, ptr %380, align 4
  %387 = add i32 %386, 1
  store i32 %387, ptr %380, align 4
  call fastcc void @local_bh_enable() #17
  %388 = getelementptr inbounds %struct.inet_frag_queue, ptr %59, i32 0, i32 5
  store ptr null, ptr %388, align 4
  store ptr null, ptr %254, align 8
  %389 = getelementptr inbounds %struct.inet_frag_queue, ptr %59, i32 0, i32 7
  store ptr null, ptr %389, align 4
  store i32 %318, ptr %317, align 8
  br label %469

390:                                              ; preds = %330
  %391 = call i32 @net_ratelimit() #17
  %392 = icmp eq i32 %391, 0
  br i1 %392, label %396, label %393

393:                                              ; preds = %390
  %394 = getelementptr inbounds %struct.inet_frag_queue, ptr %59, i32 0, i32 1
  %395 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, ptr noundef %394) #18
  br label %396

396:                                              ; preds = %393, %390, %327, %316
  %397 = phi i32 [ -7, %393 ], [ -7, %390 ], [ -22, %316 ], [ -12, %327 ]
  %398 = load volatile i32, ptr %7, align 4
  %399 = add i32 %398, 512
  store volatile i32 %399, ptr %7, align 4
  call void asm sideeffect "", "~{memory}"() #17, !srcloc !9
  %400 = getelementptr inbounds %struct.net, ptr %321, i32 0, i32 30
  %401 = load ptr, ptr %400, align 8
  %402 = ptrtoint ptr %401 to i32
  %403 = call i32 @llvm.read_register.i32(metadata !0) #17
  %404 = inttoptr i32 %403 to ptr
  %405 = call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %404) #10, !srcloc !10
  %406 = add i32 %405, %402
  %407 = inttoptr i32 %406 to ptr
  %408 = getelementptr inbounds %struct.ipstats_mib, ptr %407, i32 0, i32 1
  %409 = load i32, ptr %408, align 4
  %410 = add i32 %409, 1
  store i32 %410, ptr %408, align 4
  call void asm sideeffect "dmb ishst", "~{memory}"() #17, !srcloc !11
  %411 = getelementptr [37 x i64], ptr %407, i32 0, i32 19
  %412 = load i64, ptr %411, align 8
  %413 = add i64 %412, 1
  store i64 %413, ptr %411, align 8
  call void asm sideeffect "dmb ishst", "~{memory}"() #17, !srcloc !12
  %414 = load i32, ptr %408, align 4
  %415 = add i32 %414, 1
  store i32 %415, ptr %408, align 4
  call fastcc void @local_bh_enable() #17
  store i32 %318, ptr %317, align 8
  call void @inet_frag_kill(ptr noundef nonnull %59) #17
  br label %469

416:                                              ; preds = %311, %308
  %417 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 4
  %418 = load i32, ptr %417, align 8
  %419 = icmp eq i32 %418, 0
  br i1 %419, label %469, label %420

420:                                              ; preds = %416
  %421 = and i32 %418, 1
  %422 = icmp eq i32 %421, 0
  br i1 %422, label %423, label %426

423:                                              ; preds = %420
  %424 = and i32 %418, -2
  %425 = inttoptr i32 %424 to ptr
  call void @dst_release(ptr noundef %425) #17
  br label %426

426:                                              ; preds = %423, %420
  store i32 0, ptr %417, align 8
  br label %469

427:                                              ; preds = %252
  call void @kfree_skb_reason(ptr noundef %1, i32 noundef 0) #17
  br label %469

428:                                              ; preds = %252
  %429 = load volatile i32, ptr %7, align 4
  %430 = add i32 %429, 512
  store volatile i32 %430, ptr %7, align 4
  call void asm sideeffect "", "~{memory}"() #17, !srcloc !9
  %431 = getelementptr inbounds %struct.net, ptr %66, i32 0, i32 30
  %432 = load ptr, ptr %431, align 8
  %433 = ptrtoint ptr %432 to i32
  %434 = call i32 @llvm.read_register.i32(metadata !0) #17
  %435 = inttoptr i32 %434 to ptr
  %436 = call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %435) #10, !srcloc !10
  %437 = add i32 %436, %433
  %438 = inttoptr i32 %437 to ptr
  %439 = getelementptr inbounds %struct.ipstats_mib, ptr %438, i32 0, i32 1
  %440 = load i32, ptr %439, align 4
  %441 = add i32 %440, 1
  store i32 %441, ptr %439, align 4
  call void asm sideeffect "dmb ishst", "~{memory}"() #17, !srcloc !11
  %442 = getelementptr [37 x i64], ptr %438, i32 0, i32 36
  %443 = load i64, ptr %442, align 8
  %444 = add i64 %443, 1
  store i64 %444, ptr %442, align 8
  call void asm sideeffect "dmb ishst", "~{memory}"() #17, !srcloc !12
  %445 = load i32, ptr %439, align 4
  %446 = add i32 %445, 1
  store i32 %446, ptr %439, align 4
  call fastcc void @local_bh_enable() #17
  br label %447

447:                                              ; preds = %428, %249, %240, %233, %216, %213, %208, %184, %180
  %448 = phi i32 [ -22, %180 ], [ -22, %213 ], [ %250, %249 ], [ -22, %428 ], [ -12, %240 ], [ -22, %208 ], [ -22, %184 ], [ -12, %216 ], [ -12, %233 ]
  call void @inet_frag_kill(ptr noundef nonnull %59) #17
  %449 = load volatile i32, ptr %7, align 4
  %450 = add i32 %449, 512
  store volatile i32 %450, ptr %7, align 4
  call void asm sideeffect "", "~{memory}"() #17, !srcloc !9
  %451 = getelementptr inbounds %struct.net, ptr %66, i32 0, i32 30
  %452 = load ptr, ptr %451, align 8
  %453 = ptrtoint ptr %452 to i32
  %454 = call i32 @llvm.read_register.i32(metadata !0) #17
  %455 = inttoptr i32 %454 to ptr
  %456 = call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %455) #10, !srcloc !10
  %457 = add i32 %456, %453
  %458 = inttoptr i32 %457 to ptr
  %459 = getelementptr inbounds %struct.ipstats_mib, ptr %458, i32 0, i32 1
  %460 = load i32, ptr %459, align 4
  %461 = add i32 %460, 1
  store i32 %461, ptr %459, align 4
  call void asm sideeffect "dmb ishst", "~{memory}"() #17, !srcloc !11
  %462 = getelementptr [37 x i64], ptr %458, i32 0, i32 19
  %463 = load i64, ptr %462, align 8
  %464 = add i64 %463, 1
  store i64 %464, ptr %462, align 8
  call void asm sideeffect "dmb ishst", "~{memory}"() #17, !srcloc !12
  %465 = load i32, ptr %459, align 4
  %466 = add i32 %465, 1
  store i32 %466, ptr %459, align 4
  call fastcc void @local_bh_enable() #17
  br label %467

467:                                              ; preds = %447, %148, %61
  %468 = phi i32 [ -2, %61 ], [ %448, %447 ], [ -110, %148 ]
  call void @kfree_skb_reason(ptr noundef %1, i32 noundef 0) #17
  br label %469

469:                                              ; preds = %467, %427, %426, %416, %396, %367
  %470 = phi i32 [ %468, %467 ], [ -22, %427 ], [ %397, %396 ], [ -115, %416 ], [ -115, %426 ], [ 0, %367 ]
  call void asm sideeffect "dmb ish", "~{memory}"() #17, !srcloc !24
  %471 = load i16, ptr %62, align 4
  %472 = add i16 %471, 1
  store i16 %472, ptr %62, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #17, !srcloc !25
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #17, !srcloc !26
  call void asm sideeffect "", "~{memory}"() #17, !srcloc !27
  %473 = getelementptr inbounds %struct.inet_frag_queue, ptr %59, i32 0, i32 4
  call void asm sideeffect "dmb ish", "~{memory}"() #17, !srcloc !28
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %473) #17, !srcloc !16
  %474 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %473, ptr %473, i32 1, ptr elementtype(i32) %473) #17, !srcloc !29
  %475 = extractvalue { i32, i32, i32 } %474, 0
  %476 = icmp eq i32 %475, 1
  br i1 %476, label %480, label %477

477:                                              ; preds = %469
  %478 = icmp sgt i32 %475, 0
  br i1 %478, label %499, label %479, !prof !13

479:                                              ; preds = %477
  call void @refcount_warn_saturate(ptr noundef %473, i32 noundef 3) #17
  br label %499

480:                                              ; preds = %469
  call void asm sideeffect "dmb ish", "~{memory}"() #17, !srcloc !30
  call void @inet_frag_destroy(ptr noundef nonnull %59) #17
  br label %499

481:                                              ; preds = %36
  %482 = load volatile i32, ptr %7, align 4
  %483 = add i32 %482, 512
  store volatile i32 %483, ptr %7, align 4
  call void asm sideeffect "", "~{memory}"() #17, !srcloc !9
  %484 = load ptr, ptr %10, align 8
  %485 = ptrtoint ptr %484 to i32
  %486 = call i32 @llvm.read_register.i32(metadata !0) #17
  %487 = inttoptr i32 %486 to ptr
  %488 = call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %487) #10, !srcloc !10
  %489 = add i32 %488, %485
  %490 = inttoptr i32 %489 to ptr
  %491 = getelementptr inbounds %struct.ipstats_mib, ptr %490, i32 0, i32 1
  %492 = load i32, ptr %491, align 4
  %493 = add i32 %492, 1
  store i32 %493, ptr %491, align 4
  call void asm sideeffect "dmb ishst", "~{memory}"() #17, !srcloc !11
  %494 = getelementptr [37 x i64], ptr %490, i32 0, i32 19
  %495 = load i64, ptr %494, align 8
  %496 = add i64 %495, 1
  store i64 %496, ptr %494, align 8
  call void asm sideeffect "dmb ishst", "~{memory}"() #17, !srcloc !12
  %497 = load i32, ptr %491, align 4
  %498 = add i32 %497, 1
  store i32 %498, ptr %491, align 4
  call fastcc void @local_bh_enable()
  call void @kfree_skb_reason(ptr noundef %1, i32 noundef 0) #17
  br label %499

499:                                              ; preds = %481, %480, %479, %477
  %500 = phi i32 [ -12, %481 ], [ %470, %477 ], [ %470, %479 ], [ %470, %480 ]
  ret i32 %500
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @local_bh_enable() #2 {
  br label %1

1:                                                ; preds = %0
  tail call void @__local_bh_enable_ip(i32 noundef ptrtoint (ptr blockaddress(@local_bh_enable, %1) to i32), i32 noundef 512) #17
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @ip_check_defrag(ptr nocapture noundef readonly %0, ptr noundef %1, i32 noundef %2) #0 {
  %4 = alloca %struct.iphdr, align 4
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %4) #17
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(20) %4, i8 0, i32 20, i1 false), !annotation !31
  %5 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 13, i32 0, i32 16
  %6 = load i16, ptr %5, align 8
  %7 = icmp eq i16 %6, 8
  br i1 %7, label %8, label %75

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 16
  %10 = load ptr, ptr %9, align 8
  %11 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 13, i32 0, i32 18
  %12 = load i16, ptr %11, align 4
  %13 = zext i16 %12 to i32
  %14 = getelementptr i8, ptr %10, i32 %13
  %15 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 17
  %16 = load ptr, ptr %15, align 4
  %17 = ptrtoint ptr %14 to i32
  %18 = ptrtoint ptr %16 to i32
  %19 = sub i32 %17, %18
  %20 = call i32 @skb_copy_bits(ptr noundef %1, i32 noundef %19, ptr noundef nonnull %4, i32 noundef 20) #17
  %21 = icmp slt i32 %20, 0
  br i1 %21, label %75, label %22

22:                                               ; preds = %8
  %23 = load i8, ptr %4, align 4
  %24 = and i8 %23, 15
  %25 = icmp ugt i8 %24, 4
  %26 = and i8 %23, -16
  %27 = icmp eq i8 %26, 64
  %28 = and i1 %25, %27
  br i1 %28, label %29, label %75

29:                                               ; preds = %22
  %30 = getelementptr inbounds %struct.iphdr, ptr %4, i32 0, i32 2
  %31 = load i16, ptr %30, align 2
  %32 = call i16 @llvm.bswap.i16(i16 %31)
  %33 = zext i16 %32 to i32
  %34 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 5
  %35 = load i32, ptr %34, align 8
  %36 = add i32 %19, %33
  %37 = icmp ult i32 %35, %36
  br i1 %37, label %75, label %38

38:                                               ; preds = %29
  %39 = shl nuw nsw i8 %24, 2
  %40 = zext i8 %39 to i16
  %41 = icmp ult i16 %32, %40
  br i1 %41, label %75, label %42

42:                                               ; preds = %38
  %43 = getelementptr inbounds %struct.iphdr, ptr %4, i32 0, i32 4
  %44 = load i16, ptr %43, align 2
  %45 = and i16 %44, -193
  %46 = icmp eq i16 %45, 0
  br i1 %46, label %75, label %47

47:                                               ; preds = %42
  %48 = call fastcc ptr @skb_share_check(ptr noundef %1)
  %49 = icmp eq ptr %48, null
  br i1 %49, label %75, label %50

50:                                               ; preds = %47
  %51 = load i8, ptr %4, align 4
  %52 = shl i8 %51, 2
  %53 = and i8 %52, 60
  %54 = zext i8 %53 to i32
  %55 = add i32 %19, %54
  %56 = call fastcc zeroext i1 @pskb_may_pull(ptr noundef nonnull %48, i32 noundef %55)
  br i1 %56, label %58, label %57

57:                                               ; preds = %50
  call void @kfree_skb_reason(ptr noundef nonnull %48, i32 noundef 0) #17
  br label %75

58:                                               ; preds = %50
  %59 = getelementptr inbounds %struct.sk_buff, ptr %48, i32 0, i32 5
  %60 = load i32, ptr %59, align 8
  %61 = icmp ugt i32 %60, %36
  br i1 %61, label %62, label %66, !prof !20

62:                                               ; preds = %58
  %63 = call i32 @pskb_trim_rcsum_slow(ptr noundef nonnull %48, i32 noundef %36) #17
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %66, label %65

65:                                               ; preds = %62
  call void @kfree_skb_reason(ptr noundef nonnull %48, i32 noundef 0) #17
  br label %75

66:                                               ; preds = %62, %58
  %67 = getelementptr inbounds %struct.sk_buff, ptr %48, i32 0, i32 3
  call void @llvm.memset.p0.i32(ptr noundef align 8 dereferenceable(24) %67, i8 0, i32 24, i1 false)
  %68 = call i32 @ip_defrag(ptr noundef %0, ptr noundef nonnull %48, i32 noundef %2)
  %69 = icmp eq i32 %68, 0
  br i1 %69, label %70, label %75

70:                                               ; preds = %66
  %71 = getelementptr inbounds %struct.sk_buff, ptr %48, i32 0, i32 13, i32 0, i32 7
  store i32 0, ptr %71, align 8
  %72 = getelementptr inbounds %struct.sk_buff, ptr %48, i32 0, i32 13
  %73 = load i16, ptr %72, align 8
  %74 = and i16 %73, -769
  store i16 %74, ptr %72, align 8
  br label %75

75:                                               ; preds = %70, %66, %65, %57, %47, %42, %38, %29, %22, %8, %3
  %76 = phi ptr [ null, %65 ], [ null, %57 ], [ %1, %3 ], [ %1, %8 ], [ %1, %22 ], [ %1, %38 ], [ %1, %29 ], [ null, %66 ], [ %48, %70 ], [ null, %47 ], [ %1, %42 ]
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %4) #17
  ret ptr %76
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @skb_copy_bits(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #5

; Function Attrs: inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc ptr @skb_share_check(ptr noundef %0) unnamed_addr #2 {
  %2 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 19
  %3 = load volatile i32, ptr %2, align 4
  %4 = icmp eq i32 %3, 1
  br i1 %4, label %10, label %5

5:                                                ; preds = %1
  %6 = tail call ptr @skb_clone(ptr noundef %0, i32 noundef 2592) #17
  %7 = icmp eq ptr %6, null
  br i1 %7, label %9, label %8, !prof !20

8:                                                ; preds = %5
  tail call void @consume_skb(ptr noundef %0) #17
  br label %10

9:                                                ; preds = %5
  tail call void @kfree_skb_reason(ptr noundef %0, i32 noundef 0) #17
  br label %10

10:                                               ; preds = %9, %8, %1
  %11 = phi ptr [ %0, %1 ], [ null, %9 ], [ %6, %8 ]
  ret ptr %11
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc zeroext i1 @pskb_may_pull(ptr noundef %0, i32 noundef %1) unnamed_addr #2 {
  %3 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 5
  %4 = load i32, ptr %3, align 8
  %5 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 6
  %6 = load i32, ptr %5, align 4
  %7 = sub i32 %4, %6
  %8 = icmp ult i32 %7, %1
  br i1 %8, label %9, label %15, !prof !20

9:                                                ; preds = %2
  %10 = icmp ult i32 %4, %1
  br i1 %10, label %15, label %11, !prof !20

11:                                               ; preds = %9
  %12 = sub i32 %1, %7
  %13 = tail call ptr @__pskb_pull_tail(ptr noundef %0, i32 noundef %12) #17
  %14 = icmp ne ptr %13, null
  br label %15

15:                                               ; preds = %11, %9, %2
  %16 = phi i1 [ %14, %11 ], [ true, %2 ], [ false, %9 ]
  ret i1 %16
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local void @ipfrag_init() local_unnamed_addr #6 section ".init.text" {
  store ptr @ip4_frag_init, ptr getelementptr inbounds (%struct.inet_frags, ptr @ip4_frags, i32 0, i32 1), align 4
  store ptr @ip4_frag_free, ptr getelementptr inbounds (%struct.inet_frags, ptr @ip4_frags, i32 0, i32 2), align 4
  store i32 136, ptr @ip4_frags, align 4
  store ptr @ip_expire, ptr getelementptr inbounds (%struct.inet_frags, ptr @ip4_frags, i32 0, i32 3), align 4
  store ptr @ip_frag_cache_name, ptr getelementptr inbounds (%struct.inet_frags, ptr @ip4_frags, i32 0, i32 5), align 4
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(28) getelementptr inbounds (%struct.inet_frags, ptr @ip4_frags, i32 0, i32 6), ptr noundef nonnull align 4 dereferenceable(28) @ip4_rhash_params, i32 28, i1 false)
  %1 = tail call i32 @inet_frags_init(ptr noundef nonnull @ip4_frags) #17
  %2 = icmp eq i32 %1, 0
  br i1 %2, label %4, label %3

3:                                                ; preds = %0
  tail call void (ptr, ...) @panic(ptr noundef nonnull @.str) #19
  unreachable

4:                                                ; preds = %0
  %5 = tail call ptr @register_net_sysctl(ptr noundef nonnull @init_net, ptr noundef nonnull @.str.3, ptr noundef nonnull @ip4_frags_ctl_table) #17
  %6 = tail call i32 @register_pernet_subsys(ptr noundef nonnull @ip4_frags_ops) #17
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @ip4_frag_init(ptr nocapture noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = alloca %struct.inetpeer_addr, align 4
  %4 = getelementptr inbounds %struct.inet_frag_queue, ptr %0, i32 0, i32 13
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.fqdir, ptr %5, i32 0, i32 5
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.inet_frag_queue, ptr %0, i32 0, i32 1
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(20) %8, ptr noundef align 4 dereferenceable(20) %1, i32 20, i1 false)
  %9 = getelementptr inbounds %struct.ipq, ptr %0, i32 0, i32 1
  store i8 0, ptr %9, align 8
  %10 = getelementptr inbounds %struct.fqdir, ptr %5, i32 0, i32 3
  %11 = load i32, ptr %10, align 4
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %23, label %13

13:                                               ; preds = %2
  %14 = getelementptr inbounds %struct.net, ptr %7, i32 0, i32 35, i32 16
  %15 = load ptr, ptr %14, align 16
  %16 = load i32, ptr %1, align 4
  %17 = getelementptr inbounds %struct.frag_v4_compare_key, ptr %1, i32 0, i32 3
  %18 = load i32, ptr %17, align 4
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %3) #17
  %19 = getelementptr inbounds i8, ptr %3, i32 8
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(20) %19, i8 0, i32 12, i1 false) #17, !annotation !31
  store i32 %16, ptr %3, align 4
  %20 = getelementptr inbounds %struct.ipv4_addr_key, ptr %3, i32 0, i32 1
  store i32 %18, ptr %20, align 4
  %21 = getelementptr inbounds %struct.inetpeer_addr, ptr %3, i32 0, i32 1
  store i16 2, ptr %21, align 4
  %22 = call ptr @inet_getpeer(ptr noundef %15, ptr noundef nonnull %3, i32 noundef 1) #17
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %3) #17
  br label %23

23:                                               ; preds = %13, %2
  %24 = phi ptr [ %22, %13 ], [ null, %2 ]
  %25 = getelementptr inbounds %struct.ipq, ptr %0, i32 0, i32 5
  store ptr %24, ptr %25, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @ip4_frag_free(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.ipq, ptr %0, i32 0, i32 5
  %3 = load ptr, ptr %2, align 4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %6, label %5

5:                                                ; preds = %1
  tail call void @inet_putpeer(ptr noundef nonnull %3) #17
  br label %6

6:                                                ; preds = %5, %1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @ip_expire(ptr noundef %0) #0 {
  %2 = getelementptr i8, ptr %0, i32 -48
  %3 = getelementptr i8, ptr %0, i32 60
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.fqdir, ptr %4, i32 0, i32 5
  %6 = load ptr, ptr %5, align 4
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !32
  %7 = load ptr, ptr %3, align 4
  %8 = getelementptr inbounds %struct.fqdir, ptr %7, i32 0, i32 6
  %9 = load volatile i8, ptr %8, align 8, !range !33
  %10 = icmp eq i8 %9, 0
  br i1 %10, label %11, label %106

11:                                               ; preds = %1
  %12 = getelementptr i8, ptr %0, i32 20
  tail call void @_raw_spin_lock(ptr noundef %12) #17
  %13 = getelementptr i8, ptr %0, i32 56
  %14 = load i8, ptr %13, align 8
  %15 = and i8 %14, 4
  %16 = icmp eq i8 %15, 0
  br i1 %16, label %17, label %102

17:                                               ; preds = %11
  tail call void @inet_frag_kill(ptr noundef %2) #17
  %18 = tail call ptr @llvm.thread.pointer() #17
  %19 = getelementptr inbounds %struct.thread_info, ptr %18, i32 0, i32 1
  %20 = load volatile i32, ptr %19, align 4
  %21 = add i32 %20, 512
  store volatile i32 %21, ptr %19, align 4
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !9
  %22 = getelementptr inbounds %struct.net, ptr %6, i32 0, i32 30
  %23 = load ptr, ptr %22, align 8
  %24 = ptrtoint ptr %23 to i32
  %25 = tail call i32 @llvm.read_register.i32(metadata !0) #17
  %26 = inttoptr i32 %25 to ptr
  %27 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %26) #10, !srcloc !10
  %28 = add i32 %27, %24
  %29 = inttoptr i32 %28 to ptr
  %30 = getelementptr inbounds %struct.ipstats_mib, ptr %29, i32 0, i32 1
  %31 = load i32, ptr %30, align 4
  %32 = add i32 %31, 1
  store i32 %32, ptr %30, align 4
  tail call void asm sideeffect "dmb ishst", "~{memory}"() #17, !srcloc !11
  %33 = getelementptr [37 x i64], ptr %29, i32 0, i32 19
  %34 = load i64, ptr %33, align 8
  %35 = add i64 %34, 1
  store i64 %35, ptr %33, align 8
  tail call void asm sideeffect "dmb ishst", "~{memory}"() #17, !srcloc !12
  %36 = load i32, ptr %30, align 4
  %37 = add i32 %36, 1
  store i32 %37, ptr %30, align 4
  tail call fastcc void @local_bh_enable()
  %38 = load volatile i32, ptr %19, align 4
  %39 = add i32 %38, 512
  store volatile i32 %39, ptr %19, align 4
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !9
  %40 = load ptr, ptr %22, align 8
  %41 = ptrtoint ptr %40 to i32
  %42 = tail call i32 @llvm.read_register.i32(metadata !0) #17
  %43 = inttoptr i32 %42 to ptr
  %44 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %43) #10, !srcloc !10
  %45 = add i32 %44, %41
  %46 = inttoptr i32 %45 to ptr
  %47 = getelementptr inbounds %struct.ipstats_mib, ptr %46, i32 0, i32 1
  %48 = load i32, ptr %47, align 4
  %49 = add i32 %48, 1
  store i32 %49, ptr %47, align 4
  tail call void asm sideeffect "dmb ishst", "~{memory}"() #17, !srcloc !11
  %50 = getelementptr [37 x i64], ptr %46, i32 0, i32 16
  %51 = load i64, ptr %50, align 8
  %52 = add i64 %51, 1
  store i64 %52, ptr %50, align 8
  tail call void asm sideeffect "dmb ishst", "~{memory}"() #17, !srcloc !12
  %53 = load i32, ptr %47, align 4
  %54 = add i32 %53, 1
  store i32 %54, ptr %47, align 4
  tail call fastcc void @local_bh_enable()
  %55 = load i8, ptr %13, align 8
  %56 = and i8 %55, 1
  %57 = icmp eq i8 %56, 0
  br i1 %57, label %102, label %58

58:                                               ; preds = %17
  %59 = tail call ptr @inet_frag_pull_head(ptr noundef %2) #17
  %60 = icmp eq ptr %59, null
  br i1 %60, label %102, label %61

61:                                               ; preds = %58
  %62 = getelementptr i8, ptr %0, i32 76
  %63 = load i32, ptr %62, align 4
  %64 = tail call ptr @dev_get_by_index_rcu(ptr noundef %6, i32 noundef %63) #17
  %65 = getelementptr inbounds %struct.anon.76, ptr %59, i32 0, i32 2
  store ptr %64, ptr %65, align 8
  %66 = icmp eq ptr %64, null
  br i1 %66, label %102, label %67

67:                                               ; preds = %61
  %68 = getelementptr inbounds %struct.sk_buff, ptr %59, i32 0, i32 16
  %69 = load ptr, ptr %68, align 8
  %70 = getelementptr inbounds %struct.sk_buff, ptr %59, i32 0, i32 13, i32 0, i32 18
  %71 = load i16, ptr %70, align 4
  %72 = zext i16 %71 to i32
  %73 = getelementptr i8, ptr %69, i32 %72
  %74 = getelementptr inbounds %struct.iphdr, ptr %73, i32 0, i32 9
  %75 = load i32, ptr %74, align 4
  %76 = getelementptr inbounds %struct.iphdr, ptr %73, i32 0, i32 8
  %77 = load i32, ptr %76, align 4
  %78 = getelementptr inbounds %struct.iphdr, ptr %73, i32 0, i32 1
  %79 = load i8, ptr %78, align 1
  %80 = tail call i32 @ip_route_input_noref(ptr noundef nonnull %59, i32 noundef %75, i32 noundef %77, i8 noundef zeroext %79, ptr noundef nonnull %64) #17
  %81 = icmp eq i32 %80, 0
  br i1 %81, label %82, label %102

82:                                               ; preds = %67
  %83 = getelementptr i8, ptr %0, i32 -36
  %84 = load i32, ptr %83, align 4
  %85 = icmp eq i32 %84, 196613
  %86 = and i32 %84, -131073
  %87 = add i32 %86, -2
  %88 = icmp ult i32 %87, 65536
  %89 = or i1 %85, %88
  br i1 %89, label %90, label %98

90:                                               ; preds = %82
  %91 = getelementptr inbounds %struct.sk_buff, ptr %59, i32 0, i32 4
  %92 = load i32, ptr %91, align 8
  %93 = and i32 %92, -2
  %94 = inttoptr i32 %93 to ptr
  %95 = getelementptr inbounds %struct.rtable, ptr %94, i32 0, i32 3
  %96 = load i16, ptr %95, align 4
  %97 = icmp eq i16 %96, 2
  br i1 %97, label %98, label %102

98:                                               ; preds = %90, %82
  tail call void asm sideeffect "dmb ish", "~{memory}"() #17, !srcloc !24
  %99 = load i16, ptr %12, align 4
  %100 = add i16 %99, 1
  store i16 %100, ptr %12, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #17, !srcloc !25
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #17, !srcloc !26
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !27
  %101 = getelementptr inbounds %struct.sk_buff, ptr %59, i32 0, i32 3, i32 4
  tail call void @__icmp_send(ptr noundef nonnull %59, i32 noundef 11, i32 noundef 1, i32 noundef 0, ptr noundef %101) #17
  br label %106

102:                                              ; preds = %90, %67, %61, %58, %17, %11
  %103 = phi ptr [ null, %11 ], [ %59, %67 ], [ %59, %90 ], [ %59, %61 ], [ null, %58 ], [ null, %17 ]
  tail call void asm sideeffect "dmb ish", "~{memory}"() #17, !srcloc !24
  %104 = load i16, ptr %12, align 4
  %105 = add i16 %104, 1
  store i16 %105, ptr %12, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #17, !srcloc !25
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #17, !srcloc !26
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !27
  br label %106

106:                                              ; preds = %102, %98, %1
  %107 = phi ptr [ null, %1 ], [ %103, %102 ], [ %59, %98 ]
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !34
  tail call void @kfree_skb_reason(ptr noundef %107, i32 noundef 0) #17
  %108 = getelementptr i8, ptr %0, i32 24
  tail call void asm sideeffect "dmb ish", "~{memory}"() #17, !srcloc !28
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %108) #17, !srcloc !16
  %109 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %108, ptr %108, i32 1, ptr elementtype(i32) %108) #17, !srcloc !29
  %110 = extractvalue { i32, i32, i32 } %109, 0
  %111 = icmp eq i32 %110, 1
  br i1 %111, label %115, label %112

112:                                              ; preds = %106
  %113 = icmp sgt i32 %110, 0
  br i1 %113, label %116, label %114, !prof !13

114:                                              ; preds = %112
  tail call void @refcount_warn_saturate(ptr noundef %108, i32 noundef 3) #17
  br label %116

115:                                              ; preds = %106
  tail call void asm sideeffect "dmb ish", "~{memory}"() #17, !srcloc !30
  tail call void @inet_frag_destroy(ptr noundef %2) #17
  br label %116

116:                                              ; preds = %115, %114, %112
  ret void
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @inet_frags_init(ptr noundef) local_unnamed_addr #4

; Function Attrs: cold noreturn null_pointer_is_valid
declare dso_local void @panic(ptr noundef, ...) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_pernet_subsys(ptr noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.thread.pointer() #9

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #10

; Function Attrs: null_pointer_is_valid
declare dso_local void @__local_bh_enable_ip(i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @inet_frag_find(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #4 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @inet_frag_queue_insert(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @inet_frag_kill(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mod_timer(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @inet_frag_rbtree_purge(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__pskb_pull_tail(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @inet_frag_reasm_prepare(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @inet_frag_reasm_finish(ptr noundef, ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @ip_send_check(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @net_ratelimit() local_unnamed_addr #4

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #11

; Function Attrs: null_pointer_is_valid
declare dso_local void @dst_release(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @inet_frag_destroy(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree_skb_reason(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_clone(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @consume_skb(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pskb_trim_rcsum_slow(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @inet_getpeer(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @inet_putpeer(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @inet_frag_pull_head(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dev_get_by_index_rcu(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ip_route_input_noref(ptr noundef, i32 noundef, i32 noundef, i8 noundef zeroext, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__icmp_send(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define internal i32 @ip4_key_hashfn(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2) #12 {
  %4 = add i32 %2, -559038717
  %5 = load i32, ptr %0, align 4
  %6 = add i32 %5, %4
  %7 = getelementptr i32, ptr %0, i32 1
  %8 = load i32, ptr %7, align 4
  %9 = add i32 %8, %4
  %10 = getelementptr i32, ptr %0, i32 2
  %11 = load i32, ptr %10, align 4
  %12 = add i32 %11, %4
  %13 = sub i32 %6, %12
  %14 = tail call i32 @llvm.fshl.i32(i32 %12, i32 %12, i32 4) #17
  %15 = xor i32 %13, %14
  %16 = add i32 %12, %9
  %17 = sub i32 %9, %15
  %18 = tail call i32 @llvm.fshl.i32(i32 %15, i32 %15, i32 6) #17
  %19 = xor i32 %17, %18
  %20 = add i32 %15, %16
  %21 = sub i32 %16, %19
  %22 = tail call i32 @llvm.fshl.i32(i32 %19, i32 %19, i32 8) #17
  %23 = xor i32 %21, %22
  %24 = add i32 %19, %20
  %25 = sub i32 %20, %23
  %26 = tail call i32 @llvm.fshl.i32(i32 %23, i32 %23, i32 16) #17
  %27 = xor i32 %25, %26
  %28 = add i32 %23, %24
  %29 = sub i32 %24, %27
  %30 = tail call i32 @llvm.fshl.i32(i32 %27, i32 %27, i32 19) #17
  %31 = xor i32 %29, %30
  %32 = add i32 %27, %28
  %33 = sub i32 %28, %31
  %34 = tail call i32 @llvm.fshl.i32(i32 %31, i32 %31, i32 4) #17
  %35 = xor i32 %33, %34
  %36 = getelementptr i32, ptr %0, i32 3
  %37 = getelementptr i32, ptr %0, i32 4
  %38 = load i32, ptr %37, align 4
  %39 = add i32 %32, %38
  %40 = add i32 %39, %31
  %41 = load i32, ptr %36, align 4
  %42 = add i32 %32, %41
  %43 = xor i32 %35, %40
  %44 = tail call i32 @llvm.fshl.i32(i32 %40, i32 %40, i32 14) #17
  %45 = sub i32 %43, %44
  %46 = xor i32 %45, %42
  %47 = tail call i32 @llvm.fshl.i32(i32 %45, i32 %45, i32 11) #17
  %48 = sub i32 %46, %47
  %49 = xor i32 %48, %40
  %50 = tail call i32 @llvm.fshl.i32(i32 %48, i32 %48, i32 25) #17
  %51 = sub i32 %49, %50
  %52 = xor i32 %51, %45
  %53 = tail call i32 @llvm.fshl.i32(i32 %51, i32 %51, i32 16) #17
  %54 = sub i32 %52, %53
  %55 = xor i32 %54, %48
  %56 = tail call i32 @llvm.fshl.i32(i32 %54, i32 %54, i32 4) #17
  %57 = sub i32 %55, %56
  %58 = xor i32 %57, %51
  %59 = tail call i32 @llvm.fshl.i32(i32 %57, i32 %57, i32 14) #17
  %60 = sub i32 %58, %59
  %61 = xor i32 %60, %54
  %62 = tail call i32 @llvm.fshl.i32(i32 %60, i32 %60, i32 24) #17
  %63 = sub i32 %61, %62
  ret i32 %63
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define internal i32 @ip4_obj_hashfn(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2) #12 {
  %4 = getelementptr inbounds %struct.inet_frag_queue, ptr %0, i32 0, i32 1
  %5 = add i32 %2, -559038717
  %6 = load i32, ptr %4, align 4
  %7 = add i32 %6, %5
  %8 = getelementptr %struct.inet_frag_queue, ptr %0, i32 0, i32 1, i32 0, i32 0, i32 0, i32 0, i32 1
  %9 = load i32, ptr %8, align 4
  %10 = add i32 %9, %5
  %11 = getelementptr %struct.inet_frag_queue, ptr %0, i32 0, i32 1, i32 0, i32 0, i32 0, i32 0, i32 2
  %12 = load i32, ptr %11, align 4
  %13 = add i32 %12, %5
  %14 = sub i32 %7, %13
  %15 = tail call i32 @llvm.fshl.i32(i32 %13, i32 %13, i32 4) #17
  %16 = xor i32 %14, %15
  %17 = add i32 %13, %10
  %18 = sub i32 %10, %16
  %19 = tail call i32 @llvm.fshl.i32(i32 %16, i32 %16, i32 6) #17
  %20 = xor i32 %18, %19
  %21 = add i32 %16, %17
  %22 = sub i32 %17, %20
  %23 = tail call i32 @llvm.fshl.i32(i32 %20, i32 %20, i32 8) #17
  %24 = xor i32 %22, %23
  %25 = add i32 %20, %21
  %26 = sub i32 %21, %24
  %27 = tail call i32 @llvm.fshl.i32(i32 %24, i32 %24, i32 16) #17
  %28 = xor i32 %26, %27
  %29 = add i32 %24, %25
  %30 = sub i32 %25, %28
  %31 = tail call i32 @llvm.fshl.i32(i32 %28, i32 %28, i32 19) #17
  %32 = xor i32 %30, %31
  %33 = add i32 %28, %29
  %34 = sub i32 %29, %32
  %35 = tail call i32 @llvm.fshl.i32(i32 %32, i32 %32, i32 4) #17
  %36 = xor i32 %34, %35
  %37 = getelementptr %struct.inet_frag_queue, ptr %0, i32 0, i32 1, i32 0, i32 0, i32 0, i32 0, i32 3
  %38 = getelementptr %struct.inet_frag_queue, ptr %0, i32 0, i32 1, i32 0, i32 1
  %39 = load i32, ptr %38, align 4
  %40 = add i32 %33, %39
  %41 = add i32 %40, %32
  %42 = load i32, ptr %37, align 4
  %43 = add i32 %33, %42
  %44 = xor i32 %36, %41
  %45 = tail call i32 @llvm.fshl.i32(i32 %41, i32 %41, i32 14) #17
  %46 = sub i32 %44, %45
  %47 = xor i32 %46, %43
  %48 = tail call i32 @llvm.fshl.i32(i32 %46, i32 %46, i32 11) #17
  %49 = sub i32 %47, %48
  %50 = xor i32 %49, %41
  %51 = tail call i32 @llvm.fshl.i32(i32 %49, i32 %49, i32 25) #17
  %52 = sub i32 %50, %51
  %53 = xor i32 %52, %46
  %54 = tail call i32 @llvm.fshl.i32(i32 %52, i32 %52, i32 16) #17
  %55 = sub i32 %53, %54
  %56 = xor i32 %55, %49
  %57 = tail call i32 @llvm.fshl.i32(i32 %55, i32 %55, i32 4) #17
  %58 = sub i32 %56, %57
  %59 = xor i32 %58, %52
  %60 = tail call i32 @llvm.fshl.i32(i32 %58, i32 %58, i32 14) #17
  %61 = sub i32 %59, %60
  %62 = xor i32 %61, %55
  %63 = tail call i32 @llvm.fshl.i32(i32 %61, i32 %61, i32 24) #17
  %64 = sub i32 %62, %63
  ret i32 %64
}

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define internal i32 @ip4_obj_cmpfn(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #13 {
  %3 = getelementptr inbounds %struct.rhashtable_compare_arg, ptr %0, i32 0, i32 1
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.inet_frag_queue, ptr %1, i32 0, i32 1
  %6 = tail call i32 @bcmp(ptr noundef dereferenceable(20) %5, ptr noundef dereferenceable(20) %4, i32 20)
  %7 = icmp ne i32 %6, 0
  %8 = zext i1 %7 to i32
  ret i32 %8
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @register_net_sysctl(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @proc_dointvec_jiffies(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) #4

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @ipv4_frags_init_net(ptr noundef %0) #6 section ".init.text" {
  %2 = getelementptr inbounds %struct.net, ptr %0, i32 0, i32 35, i32 18
  %3 = tail call i32 @fqdir_init(ptr noundef %2, ptr noundef nonnull @ip4_frags, ptr noundef %0) #17
  %4 = icmp slt i32 %3, 0
  br i1 %4, label %17, label %5

5:                                                ; preds = %1
  %6 = load ptr, ptr %2, align 8
  store i32 4194304, ptr %6, align 64
  %7 = load ptr, ptr %2, align 8
  %8 = getelementptr inbounds %struct.fqdir, ptr %7, i32 0, i32 1
  store i32 3145728, ptr %8, align 4
  %9 = load ptr, ptr %2, align 8
  %10 = getelementptr inbounds %struct.fqdir, ptr %9, i32 0, i32 2
  store i32 3000, ptr %10, align 8
  %11 = load ptr, ptr %2, align 8
  %12 = getelementptr inbounds %struct.fqdir, ptr %11, i32 0, i32 3
  store i32 64, ptr %12, align 4
  %13 = tail call fastcc i32 @ip4_frags_ns_ctl_register(ptr noundef %0) #20
  %14 = icmp slt i32 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %5
  %16 = load ptr, ptr %2, align 8
  tail call void @fqdir_exit(ptr noundef %16) #17
  br label %17

17:                                               ; preds = %15, %5, %1
  %18 = phi i32 [ %3, %1 ], [ %13, %15 ], [ %13, %5 ]
  ret i32 %18
}

; Function Attrs: nofree noinline norecurse nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @ipv4_frags_pre_exit_net(ptr nocapture noundef readonly %0) #14 section ".ref.text" {
  %2 = getelementptr inbounds %struct.net, ptr %0, i32 0, i32 35, i32 18
  %3 = load ptr, ptr %2, align 8
  store volatile i32 0, ptr %3, align 64
  %4 = getelementptr inbounds %struct.fqdir, ptr %3, i32 0, i32 6
  store volatile i8 1, ptr %4, align 8
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @ipv4_frags_exit_net(ptr nocapture noundef readonly %0) #15 section ".ref.text" {
  tail call fastcc void @ip4_frags_ns_ctl_unregister(ptr noundef %0)
  %2 = getelementptr inbounds %struct.net, ptr %0, i32 0, i32 35, i32 18
  %3 = load ptr, ptr %2, align 8
  tail call void @fqdir_exit(ptr noundef %3) #17
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fqdir_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal fastcc i32 @ip4_frags_ns_ctl_register(ptr noundef %0) unnamed_addr #6 section ".init.text" {
  %2 = getelementptr inbounds %struct.net, ptr %0, i32 0, i32 35, i32 18
  %3 = load ptr, ptr %2, align 8
  store ptr %3, ptr getelementptr inbounds ([5 x %struct.ctl_table], ptr @ip4_frags_ns_ctl_table, i32 0, i32 0, i32 1), align 4
  %4 = getelementptr inbounds %struct.fqdir, ptr %3, i32 0, i32 1
  store ptr %4, ptr getelementptr inbounds ([5 x %struct.ctl_table], ptr @ip4_frags_ns_ctl_table, i32 0, i32 0, i32 7), align 4
  store ptr %4, ptr getelementptr inbounds ([5 x %struct.ctl_table], ptr @ip4_frags_ns_ctl_table, i32 0, i32 1, i32 1), align 4
  store ptr %3, ptr getelementptr inbounds ([5 x %struct.ctl_table], ptr @ip4_frags_ns_ctl_table, i32 0, i32 1, i32 8), align 4
  %5 = getelementptr inbounds %struct.fqdir, ptr %3, i32 0, i32 2
  store ptr %5, ptr getelementptr inbounds ([5 x %struct.ctl_table], ptr @ip4_frags_ns_ctl_table, i32 0, i32 2, i32 1), align 4
  %6 = getelementptr inbounds %struct.fqdir, ptr %3, i32 0, i32 3
  store ptr %6, ptr getelementptr inbounds ([5 x %struct.ctl_table], ptr @ip4_frags_ns_ctl_table, i32 0, i32 3, i32 1), align 4
  %7 = tail call ptr @register_net_sysctl(ptr noundef %0, ptr noundef nonnull @.str.3, ptr noundef nonnull @ip4_frags_ns_ctl_table) #17
  %8 = icmp eq ptr %7, null
  br i1 %8, label %11, label %9

9:                                                ; preds = %1
  %10 = getelementptr inbounds %struct.net, ptr %0, i32 0, i32 35, i32 2
  store ptr %7, ptr %10, align 4
  br label %11

11:                                               ; preds = %9, %1
  %12 = phi i32 [ 0, %9 ], [ -12, %1 ]
  ret i32 %12
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @fqdir_exit(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @proc_doulongvec_minmax(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @proc_dointvec_minmax(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) #4

; Function Attrs: noinline nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @ip4_frags_ns_ctl_unregister(ptr nocapture noundef readonly %0) unnamed_addr #15 section ".ref.text" {
  %2 = getelementptr inbounds %struct.net, ptr %0, i32 0, i32 35, i32 2
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.ctl_table_header, ptr %3, i32 0, i32 2
  %5 = load ptr, ptr %4, align 4
  tail call void @unregister_net_sysctl_table(ptr noundef %3) #17
  tail call void @kfree(ptr noundef %5) #17
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @unregister_net_sysctl_table(ptr noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.umax.i16(i16, i16) #5

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #16

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.fshl.i32(i32, i32, i32) #5

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nofree nounwind willreturn writeonly }
attributes #4 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { argmemonly nofree nounwind willreturn }
attributes #8 = { cold noreturn null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #10 = { nounwind readonly }
attributes #11 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #12 = { argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #13 = { mustprogress nofree nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #14 = { nofree noinline norecurse nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #15 = { noinline nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #16 = { argmemonly nofree nounwind readonly willreturn }
attributes #17 = { nounwind }
attributes #18 = { cold nounwind }
attributes #19 = { cold noreturn nounwind }
attributes #20 = { cold }

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
!9 = !{i64 2148874486}
!10 = !{i64 482214}
!11 = !{i64 2149398236}
!12 = !{i64 2149398537}
!13 = !{!"branch_weights", i32 2000, i32 1}
!14 = !{i64 2153299907, i64 2153300395, i64 2153299944, i64 2153300000, i64 2153300034, i64 2153300058, i64 2153300099, i64 2153300120, i64 2153300148, i64 2153300182}
!15 = !{i64 2148157068}
!16 = !{i64 557836, i64 2148047807, i64 2148047833, i64 2148047880, i64 2148047902, i64 2148047930, i64 2148047950}
!17 = !{i64 2148059906, i64 2148059938, i64 2148059967, i64 2148060001, i64 2148060032, i64 2148060055}
!18 = !{i64 2148157271}
!19 = !{i64 2148060680, i64 2148060712, i64 2148060741, i64 2148060775, i64 2148060806, i64 2148060829}
!20 = !{!"branch_weights", i32 1, i32 2000}
!21 = !{i64 2148061579, i64 2148061605, i64 2148061634, i64 2148061668, i64 2148061699, i64 2148061722}
!22 = !{i64 2155928375}
!23 = !{i64 2148059222, i64 2148059248, i64 2148059277, i64 2148059311, i64 2148059342, i64 2148059365}
!24 = !{i64 2148942361}
!25 = !{i64 2148938185}
!26 = !{i64 2148938260, i64 2148938287, i64 2148938334, i64 2148938356, i64 2148938384, i64 2148938404}
!27 = !{i64 2148965364}
!28 = !{i64 2148160902}
!29 = !{i64 2148063037, i64 2148063069, i64 2148063098, i64 2148063132, i64 2148063163, i64 2148063186}
!30 = !{i64 2149010349}
!31 = !{!"auto-init"}
!32 = !{i64 2149060716}
!33 = !{i8 0, i8 2}
!34 = !{i64 2149060933}
