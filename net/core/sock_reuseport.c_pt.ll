; ModuleID = '/llk/IR/net/core/sock_reuseport.c_pt.bc'
source_filename = "../net/core/sock_reuseport.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_reuseport_alloc:\09\09\09\09\09"
module asm "\09.asciz \09\22reuseport_alloc\22\09\09\09\09\09"
module asm "__kstrtabns_reuseport_alloc:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_reuseport_add_sock:\09\09\09\09\09"
module asm "\09.asciz \09\22reuseport_add_sock\22\09\09\09\09\09"
module asm "__kstrtabns_reuseport_add_sock:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_reuseport_detach_sock:\09\09\09\09\09"
module asm "\09.asciz \09\22reuseport_detach_sock\22\09\09\09\09\09"
module asm "__kstrtabns_reuseport_detach_sock:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_reuseport_stop_listen_sock:\09\09\09\09\09"
module asm "\09.asciz \09\22reuseport_stop_listen_sock\22\09\09\09\09\09"
module asm "__kstrtabns_reuseport_stop_listen_sock:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_reuseport_select_sock:\09\09\09\09\09"
module asm "\09.asciz \09\22reuseport_select_sock\22\09\09\09\09\09"
module asm "__kstrtabns_reuseport_select_sock:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_reuseport_migrate_sock:\09\09\09\09\09"
module asm "\09.asciz \09\22reuseport_migrate_sock\22\09\09\09\09\09"
module asm "__kstrtabns_reuseport_migrate_sock:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_reuseport_attach_prog:\09\09\09\09\09"
module asm "\09.asciz \09\22reuseport_attach_prog\22\09\09\09\09\09"
module asm "__kstrtabns_reuseport_attach_prog:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_reuseport_detach_prog:\09\09\09\09\09"
module asm "\09.asciz \09\22reuseport_detach_prog\22\09\09\09\09\09"
module asm "__kstrtabns_reuseport_detach_prog:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon }
%union.anon = type { i32 }
%struct.ida = type { %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.net = type { %struct.refcount_struct, %struct.spinlock, i32, i32, i32, %struct.spinlock, %struct.atomic_t, %struct.list_head, %struct.list_head, %struct.llist_node, ptr, ptr, ptr, %struct.idr, %struct.ns_common, %struct.ref_tracker_dir, %struct.list_head, ptr, ptr, %struct.ctl_table_set, ptr, ptr, ptr, ptr, ptr, %struct.raw_notifier_head, i32, ptr, %struct.list_head, %struct.netns_core, %struct.netns_mib, %struct.netns_packet, %struct.netns_unix, %struct.netns_nexthop, [40 x i8], %struct.netns_ipv4, %struct.netns_ipv6, ptr, %struct.netns_bpf, [28 x i8], %struct.netns_xfrm, i64, %struct.netns_can, ptr, ptr, [32 x i8] }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.llist_node = type { ptr }
%struct.idr = type { %struct.xarray, i32, i32 }
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
%struct.static_key_false = type { %struct.static_key }
%struct.static_key = type { %struct.atomic_t }
%struct.sock = type { %struct.sock_common, ptr, i32, i32, %struct.socket_lock_t, %struct.atomic_t, i32, %struct.sk_buff_head, %struct.sk_buff_head, %struct.anon.169, %struct.llist_head, i32, i32, i32, i32, i32, ptr, %union.anon.170, [2 x ptr], ptr, %struct.atomic_t, i32, i32, %struct.refcount_struct, i32, %union.anon.171, %struct.sk_buff_head, i32, i32, i32, i32, i32, %struct.timer_list, i32, i32, i32, i32, %struct.page_frag, i64, i32, i32, i32, i32, i8, i8, i16, i16, i16, i32, ptr, %struct.rwlock_t, i32, i32, i32, i32, %struct.kuid_t, i8, i16, %struct.spinlock, i32, ptr, ptr, i32, i64, %struct.seqlock_t, i16, i8, %struct.atomic_t, %struct.atomic_t, i8, i8, ptr, ptr, %struct.sock_cgroup_data, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.callback_head, %struct.netns_tracker }
%struct.sock_common = type { %union.anon.1, %union.anon.2, %union.anon.3, i16, i8, i8, i32, %union.anon.5, ptr, %struct.possible_net_t, %struct.in6_addr, %struct.in6_addr, %struct.atomic64_t, %union.anon.165, [0 x i32], %union.anon.166, i16, i16, %union.anon.167, %struct.refcount_struct, [0 x i32], %union.anon.168 }
%union.anon.1 = type { i64 }
%union.anon.2 = type { i32 }
%union.anon.3 = type { i32 }
%union.anon.5 = type { %struct.hlist_node }
%struct.possible_net_t = type {}
%struct.in6_addr = type { %union.anon.115 }
%union.anon.115 = type { [4 x i32] }
%struct.atomic64_t = type { i64 }
%union.anon.165 = type { i32 }
%union.anon.166 = type { %struct.hlist_node }
%union.anon.167 = type { i32 }
%union.anon.168 = type { i32 }
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
%struct.sock_reuseport = type { %struct.callback_head, i16, i16, i16, i32, i32, i8, ptr, [0 x ptr] }
%struct.bpf_prog = type { i16, i16, i32, i32, i32, i32, [8 x i8], ptr, ptr, ptr, ptr, ptr, %union.anon.103 }
%union.anon.103 = type { %struct.anon.104 }
%struct.anon.104 = type { %struct.anon.105, [0 x %struct.sock_filter] }
%struct.anon.105 = type {}
%struct.sock_filter = type { i16, i8, i8, i32 }
%struct.sk_buff = type { %union.anon.42, %union.anon.45, %union.anon.46, [48 x i8], %union.anon.47, i32, i32, i16, i16, i16, [0 x i8], i8, i8, %union.anon.49, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon.42 = type { %struct.anon.43 }
%struct.anon.43 = type { ptr, ptr, %union.anon.44 }
%union.anon.44 = type { ptr }
%union.anon.45 = type { ptr }
%union.anon.46 = type { i64 }
%union.anon.47 = type { %struct.anon.48 }
%struct.anon.48 = type { i32, ptr }
%union.anon.49 = type { %struct.anon.50 }
%struct.anon.50 = type { [0 x i8], i16, [0 x i8], i16, %union.anon.51, i32, i32, i32, i16, i16, %union.anon.53, %union.anon.54, %union.anon.55, i16, i16, i16, i16, i16, i16, i16 }
%union.anon.51 = type { i32 }
%union.anon.53 = type { i32 }
%union.anon.54 = type { i32 }
%union.anon.55 = type { i16 }
%struct.bpf_prog_stats = type { %struct.u64_stats_t, %struct.u64_stats_t, %struct.u64_stats_t, %struct.u64_stats_sync }
%struct.u64_stats_t = type { i64 }
%struct.u64_stats_sync = type { %struct.seqcount }

@reuseport_lock = dso_local global %struct.spinlock zeroinitializer, align 4
@reuseport_ida = internal global %struct.ida { %struct.xarray { %struct.spinlock zeroinitializer, i32 33554437, ptr null } }, align 4
@__kstrtab_reuseport_alloc = external dso_local constant [0 x i8], align 1
@__kstrtabns_reuseport_alloc = external dso_local constant [0 x i8], align 1
@__ksymtab_reuseport_alloc = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @reuseport_alloc to i32), ptr @__kstrtab_reuseport_alloc, ptr @__kstrtabns_reuseport_alloc }, section "___ksymtab+reuseport_alloc", align 4
@__kstrtab_reuseport_add_sock = external dso_local constant [0 x i8], align 1
@__kstrtabns_reuseport_add_sock = external dso_local constant [0 x i8], align 1
@__ksymtab_reuseport_add_sock = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @reuseport_add_sock to i32), ptr @__kstrtab_reuseport_add_sock, ptr @__kstrtabns_reuseport_add_sock }, section "___ksymtab+reuseport_add_sock", align 4
@__kstrtab_reuseport_detach_sock = external dso_local constant [0 x i8], align 1
@__kstrtabns_reuseport_detach_sock = external dso_local constant [0 x i8], align 1
@__ksymtab_reuseport_detach_sock = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @reuseport_detach_sock to i32), ptr @__kstrtab_reuseport_detach_sock, ptr @__kstrtabns_reuseport_detach_sock }, section "___ksymtab+reuseport_detach_sock", align 4
@__kstrtab_reuseport_stop_listen_sock = external dso_local constant [0 x i8], align 1
@__kstrtabns_reuseport_stop_listen_sock = external dso_local constant [0 x i8], align 1
@__ksymtab_reuseport_stop_listen_sock = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @reuseport_stop_listen_sock to i32), ptr @__kstrtab_reuseport_stop_listen_sock, ptr @__kstrtabns_reuseport_stop_listen_sock }, section "___ksymtab+reuseport_stop_listen_sock", align 4
@__kstrtab_reuseport_select_sock = external dso_local constant [0 x i8], align 1
@__kstrtabns_reuseport_select_sock = external dso_local constant [0 x i8], align 1
@__ksymtab_reuseport_select_sock = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @reuseport_select_sock to i32), ptr @__kstrtab_reuseport_select_sock, ptr @__kstrtabns_reuseport_select_sock }, section "___ksymtab+reuseport_select_sock", align 4
@__kstrtab_reuseport_migrate_sock = external dso_local constant [0 x i8], align 1
@__kstrtabns_reuseport_migrate_sock = external dso_local constant [0 x i8], align 1
@__ksymtab_reuseport_migrate_sock = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @reuseport_migrate_sock to i32), ptr @__kstrtab_reuseport_migrate_sock, ptr @__kstrtabns_reuseport_migrate_sock }, section "___ksymtab+reuseport_migrate_sock", align 4
@__kstrtab_reuseport_attach_prog = external dso_local constant [0 x i8], align 1
@__kstrtabns_reuseport_attach_prog = external dso_local constant [0 x i8], align 1
@__ksymtab_reuseport_attach_prog = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @reuseport_attach_prog to i32), ptr @__kstrtab_reuseport_attach_prog, ptr @__kstrtabns_reuseport_attach_prog }, section "___ksymtab+reuseport_attach_prog", align 4
@__kstrtab_reuseport_detach_prog = external dso_local constant [0 x i8], align 1
@__kstrtabns_reuseport_detach_prog = external dso_local constant [0 x i8], align 1
@__ksymtab_reuseport_detach_prog = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @reuseport_detach_prog to i32), ptr @__kstrtab_reuseport_detach_prog, ptr @__kstrtabns_reuseport_detach_prog }, section "___ksymtab+reuseport_detach_prog", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@init_net = external dso_local local_unnamed_addr global %struct.net, align 64
@bpf_stats_enabled_key = external dso_local global %struct.static_key_false, align 4
@llvm.compiler.used = appending global [8 x ptr] [ptr @__ksymtab_reuseport_add_sock, ptr @__ksymtab_reuseport_alloc, ptr @__ksymtab_reuseport_attach_prog, ptr @__ksymtab_reuseport_detach_prog, ptr @__ksymtab_reuseport_detach_sock, ptr @__ksymtab_reuseport_migrate_sock, ptr @__ksymtab_reuseport_select_sock, ptr @__ksymtab_reuseport_stop_listen_sock], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @reuseport_alloc(ptr noundef %0, i1 noundef zeroext %1) #0 {
  tail call void @_raw_spin_lock_bh(ptr noundef nonnull @reuseport_lock) #8
  %3 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 81
  %4 = load ptr, ptr %3, align 4
  %5 = icmp eq ptr %4, null
  br i1 %5, label %17, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.sock_reuseport, ptr %4, i32 0, i32 3
  %8 = load i16, ptr %7, align 4
  %9 = icmp eq i16 %8, 0
  br i1 %9, label %12, label %10

10:                                               ; preds = %6
  %11 = tail call fastcc i32 @reuseport_resurrect(ptr noundef %0, ptr noundef nonnull %4, ptr noundef null, i1 noundef zeroext %1)
  br label %36

12:                                               ; preds = %6
  br i1 %1, label %13, label %36

13:                                               ; preds = %12
  %14 = getelementptr inbounds %struct.sock_reuseport, ptr %4, i32 0, i32 6
  %15 = load i8, ptr %14, align 4
  %16 = or i8 %15, 1
  store i8 %16, ptr %14, align 4
  br label %36

17:                                               ; preds = %2
  %18 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10), align 4
  %19 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %18, i32 noundef 2848, i32 noundef 544) #9
  %20 = icmp eq ptr %19, null
  br i1 %20, label %36, label %21

21:                                               ; preds = %17
  %22 = getelementptr inbounds %struct.sock_reuseport, ptr %19, i32 0, i32 1
  store i16 128, ptr %22, align 8
  %23 = getelementptr inbounds %struct.sock_reuseport, ptr %19, i32 0, i32 7
  store volatile ptr null, ptr %23, align 4
  %24 = tail call i32 @ida_alloc_range(ptr noundef nonnull @reuseport_ida, i32 noundef 0, i32 noundef -1, i32 noundef 2592) #8
  %25 = icmp slt i32 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %21
  tail call void @kfree(ptr noundef nonnull %19) #8
  br label %36

27:                                               ; preds = %21
  %28 = getelementptr inbounds %struct.sock_reuseport, ptr %19, i32 0, i32 5
  store i32 %24, ptr %28, align 4
  %29 = getelementptr inbounds %struct.sock_reuseport, ptr %19, i32 0, i32 6
  %30 = zext i1 %1 to i8
  %31 = load i8, ptr %29, align 8
  %32 = and i8 %31, -2
  %33 = or i8 %32, %30
  store i8 %33, ptr %29, align 8
  %34 = getelementptr inbounds %struct.sock_reuseport, ptr %19, i32 0, i32 8
  store ptr %0, ptr %34, align 8
  %35 = getelementptr inbounds %struct.sock_reuseport, ptr %19, i32 0, i32 2
  store i16 1, ptr %35, align 2
  tail call void asm sideeffect "dmb ish", "~{memory}"() #8, !srcloc !9
  store volatile ptr %19, ptr %3, align 4
  br label %36

36:                                               ; preds = %27, %26, %17, %13, %12, %10
  %37 = phi i32 [ %11, %10 ], [ 0, %13 ], [ 0, %12 ], [ %24, %26 ], [ 0, %27 ], [ -12, %17 ]
  tail call void @_raw_spin_unlock_bh(ptr noundef nonnull @reuseport_lock) #8
  ret i32 %37
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @reuseport_resurrect(ptr noundef %0, ptr noundef %1, ptr noundef %2, i1 noundef zeroext %3) unnamed_addr #0 {
  %5 = icmp eq ptr %1, %2
  br i1 %5, label %6, label %37

6:                                                ; preds = %4
  %7 = getelementptr inbounds %struct.sock_reuseport, ptr %1, i32 0, i32 1
  %8 = load i16, ptr %7, align 4
  %9 = zext i16 %8 to i32
  %10 = getelementptr inbounds %struct.sock_reuseport, ptr %1, i32 0, i32 3
  %11 = load i16, ptr %10, align 4
  %12 = zext i16 %11 to i32
  %13 = sub nsw i32 %9, %12
  %14 = icmp eq i16 %11, 0
  br i1 %14, label %30, label %15

15:                                               ; preds = %20, %6
  %16 = phi i32 [ %21, %20 ], [ %13, %6 ]
  %17 = getelementptr %struct.sock_reuseport, ptr %1, i32 0, i32 8, i32 %16
  %18 = load ptr, ptr %17, align 4
  %19 = icmp eq ptr %18, %0
  br i1 %19, label %23, label %20

20:                                               ; preds = %15
  %21 = add nsw i32 %16, 1
  %22 = icmp eq i32 %21, %9
  br i1 %22, label %30, label %15

23:                                               ; preds = %15
  %24 = icmp eq i32 %16, -1
  br i1 %24, label %30, label %25

25:                                               ; preds = %23
  %26 = getelementptr %struct.sock_reuseport, ptr %1, i32 0, i32 8, i32 %13
  %27 = load ptr, ptr %26, align 4
  store ptr %27, ptr %17, align 4
  %28 = load i16, ptr %10, align 4
  %29 = add i16 %28, -1
  store volatile i16 %29, ptr %10, align 4
  br label %30

30:                                               ; preds = %25, %23, %20, %6
  %31 = getelementptr inbounds %struct.sock_reuseport, ptr %1, i32 0, i32 2
  %32 = load i16, ptr %31, align 2
  %33 = zext i16 %32 to i32
  %34 = getelementptr %struct.sock_reuseport, ptr %1, i32 0, i32 8, i32 %33
  store ptr %0, ptr %34, align 4
  tail call void asm sideeffect "dmb ishst", "~{memory}"() #8, !srcloc !10
  %35 = load i16, ptr %31, align 2
  %36 = add i16 %35, 1
  store i16 %36, ptr %31, align 2
  br label %112

37:                                               ; preds = %4
  %38 = icmp eq ptr %2, null
  br i1 %38, label %39, label %56

39:                                               ; preds = %37
  %40 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10), align 4
  %41 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %40, i32 noundef 2848, i32 noundef 544) #9
  %42 = icmp eq ptr %41, null
  br i1 %42, label %112, label %43

43:                                               ; preds = %39
  %44 = getelementptr inbounds %struct.sock_reuseport, ptr %41, i32 0, i32 1
  store i16 128, ptr %44, align 8
  %45 = getelementptr inbounds %struct.sock_reuseport, ptr %41, i32 0, i32 7
  store volatile ptr null, ptr %45, align 4
  %46 = tail call i32 @ida_alloc_range(ptr noundef nonnull @reuseport_ida, i32 noundef 0, i32 noundef -1, i32 noundef 2592) #8
  %47 = icmp slt i32 %46, 0
  br i1 %47, label %48, label %49

48:                                               ; preds = %43
  tail call void @kfree(ptr noundef nonnull %41) #8
  br label %112

49:                                               ; preds = %43
  %50 = getelementptr inbounds %struct.sock_reuseport, ptr %41, i32 0, i32 5
  store i32 %46, ptr %50, align 4
  %51 = getelementptr inbounds %struct.sock_reuseport, ptr %41, i32 0, i32 6
  %52 = zext i1 %3 to i8
  %53 = load i8, ptr %51, align 8
  %54 = and i8 %53, -2
  %55 = or i8 %54, %52
  store i8 %55, ptr %51, align 8
  br label %71

56:                                               ; preds = %37
  %57 = getelementptr inbounds %struct.sock_reuseport, ptr %2, i32 0, i32 2
  %58 = load i16, ptr %57, align 2
  %59 = zext i16 %58 to i32
  %60 = getelementptr inbounds %struct.sock_reuseport, ptr %2, i32 0, i32 3
  %61 = load i16, ptr %60, align 4
  %62 = zext i16 %61 to i32
  %63 = add nuw nsw i32 %62, %59
  %64 = getelementptr inbounds %struct.sock_reuseport, ptr %2, i32 0, i32 1
  %65 = load i16, ptr %64, align 4
  %66 = zext i16 %65 to i32
  %67 = icmp eq i32 %63, %66
  br i1 %67, label %68, label %71

68:                                               ; preds = %56
  %69 = tail call fastcc ptr @reuseport_grow(ptr noundef nonnull %2)
  %70 = icmp eq ptr %69, null
  br i1 %70, label %112, label %71

71:                                               ; preds = %68, %56, %49
  %72 = phi ptr [ %69, %68 ], [ %2, %56 ], [ %41, %49 ]
  %73 = getelementptr inbounds %struct.sock_reuseport, ptr %1, i32 0, i32 1
  %74 = load i16, ptr %73, align 4
  %75 = zext i16 %74 to i32
  %76 = getelementptr inbounds %struct.sock_reuseport, ptr %1, i32 0, i32 3
  %77 = load i16, ptr %76, align 4
  %78 = zext i16 %77 to i32
  %79 = sub nsw i32 %75, %78
  %80 = icmp eq i16 %77, 0
  br i1 %80, label %96, label %81

81:                                               ; preds = %86, %71
  %82 = phi i32 [ %87, %86 ], [ %79, %71 ]
  %83 = getelementptr %struct.sock_reuseport, ptr %1, i32 0, i32 8, i32 %82
  %84 = load ptr, ptr %83, align 4
  %85 = icmp eq ptr %84, %0
  br i1 %85, label %89, label %86

86:                                               ; preds = %81
  %87 = add nsw i32 %82, 1
  %88 = icmp eq i32 %87, %75
  br i1 %88, label %96, label %81

89:                                               ; preds = %81
  %90 = icmp eq i32 %82, -1
  br i1 %90, label %96, label %91

91:                                               ; preds = %89
  %92 = getelementptr %struct.sock_reuseport, ptr %1, i32 0, i32 8, i32 %79
  %93 = load ptr, ptr %92, align 4
  store ptr %93, ptr %83, align 4
  %94 = load i16, ptr %76, align 4
  %95 = add i16 %94, -1
  store volatile i16 %95, ptr %76, align 4
  br label %96

96:                                               ; preds = %91, %89, %86, %71
  %97 = getelementptr inbounds %struct.sock_reuseport, ptr %72, i32 0, i32 2
  %98 = load i16, ptr %97, align 2
  %99 = zext i16 %98 to i32
  %100 = getelementptr %struct.sock_reuseport, ptr %72, i32 0, i32 8, i32 %99
  store ptr %0, ptr %100, align 4
  tail call void asm sideeffect "dmb ishst", "~{memory}"() #8, !srcloc !10
  %101 = load i16, ptr %97, align 2
  %102 = add i16 %101, 1
  store i16 %102, ptr %97, align 2
  tail call void asm sideeffect "dmb ish", "~{memory}"() #8, !srcloc !11
  %103 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 81
  store volatile ptr %72, ptr %103, align 4
  %104 = getelementptr inbounds %struct.sock_reuseport, ptr %1, i32 0, i32 2
  %105 = load i16, ptr %104, align 2
  %106 = zext i16 %105 to i32
  %107 = load i16, ptr %76, align 4
  %108 = zext i16 %107 to i32
  %109 = sub nsw i32 0, %108
  %110 = icmp eq i32 %106, %109
  br i1 %110, label %111, label %112

111:                                              ; preds = %96
  tail call void @call_rcu(ptr noundef %1, ptr noundef nonnull @reuseport_free_rcu) #8
  br label %112

112:                                              ; preds = %111, %96, %68, %48, %39, %30
  %113 = phi i32 [ 0, %30 ], [ -12, %68 ], [ 0, %111 ], [ 0, %96 ], [ %46, %48 ], [ -12, %39 ]
  ret i32 %113
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @reuseport_add_sock(ptr noundef %0, ptr noundef %1, i1 noundef zeroext %2) #0 {
  %4 = getelementptr inbounds %struct.sock, ptr %1, i32 0, i32 81
  %5 = load volatile ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %7, label %10

7:                                                ; preds = %3
  %8 = tail call i32 @reuseport_alloc(ptr noundef %1, i1 noundef zeroext %2)
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %58

10:                                               ; preds = %7, %3
  tail call void @_raw_spin_lock_bh(ptr noundef nonnull @reuseport_lock) #8
  %11 = load ptr, ptr %4, align 4
  %12 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 81
  %13 = load ptr, ptr %12, align 4
  %14 = icmp eq ptr %13, null
  br i1 %14, label %30, label %15

15:                                               ; preds = %10
  %16 = getelementptr inbounds %struct.sock_reuseport, ptr %13, i32 0, i32 3
  %17 = load i16, ptr %16, align 4
  %18 = icmp eq i16 %17, 0
  br i1 %18, label %25, label %19

19:                                               ; preds = %15
  %20 = getelementptr inbounds %struct.sock_reuseport, ptr %11, i32 0, i32 6
  %21 = load i8, ptr %20, align 4
  %22 = and i8 %21, 1
  %23 = icmp ne i8 %22, 0
  %24 = tail call fastcc i32 @reuseport_resurrect(ptr noundef %0, ptr noundef nonnull %13, ptr noundef %11, i1 noundef zeroext %23)
  tail call void @_raw_spin_unlock_bh(ptr noundef nonnull @reuseport_lock) #8
  br label %58

25:                                               ; preds = %15
  %26 = getelementptr inbounds %struct.sock_reuseport, ptr %13, i32 0, i32 2
  %27 = load i16, ptr %26, align 2
  %28 = icmp eq i16 %27, 1
  br i1 %28, label %30, label %29

29:                                               ; preds = %25
  tail call void @_raw_spin_unlock_bh(ptr noundef nonnull @reuseport_lock) #8
  br label %58

30:                                               ; preds = %25, %10
  %31 = getelementptr inbounds %struct.sock_reuseport, ptr %11, i32 0, i32 2
  %32 = load i16, ptr %31, align 2
  %33 = zext i16 %32 to i32
  %34 = getelementptr inbounds %struct.sock_reuseport, ptr %11, i32 0, i32 3
  %35 = load i16, ptr %34, align 4
  %36 = zext i16 %35 to i32
  %37 = add nuw nsw i32 %36, %33
  %38 = getelementptr inbounds %struct.sock_reuseport, ptr %11, i32 0, i32 1
  %39 = load i16, ptr %38, align 4
  %40 = zext i16 %39 to i32
  %41 = icmp eq i32 %37, %40
  br i1 %41, label %42, label %50

42:                                               ; preds = %30
  %43 = tail call fastcc ptr @reuseport_grow(ptr noundef %11)
  %44 = icmp eq ptr %43, null
  br i1 %44, label %49, label %45

45:                                               ; preds = %42
  %46 = getelementptr inbounds %struct.sock_reuseport, ptr %43, i32 0, i32 2
  %47 = load i16, ptr %46, align 2
  %48 = zext i16 %47 to i32
  br label %50

49:                                               ; preds = %42
  tail call void @_raw_spin_unlock_bh(ptr noundef nonnull @reuseport_lock) #8
  br label %58

50:                                               ; preds = %45, %30
  %51 = phi i32 [ %48, %45 ], [ %33, %30 ]
  %52 = phi ptr [ %43, %45 ], [ %11, %30 ]
  %53 = getelementptr inbounds %struct.sock_reuseport, ptr %52, i32 0, i32 2
  %54 = getelementptr %struct.sock_reuseport, ptr %52, i32 0, i32 8, i32 %51
  store ptr %0, ptr %54, align 4
  tail call void asm sideeffect "dmb ishst", "~{memory}"() #8, !srcloc !10
  %55 = load i16, ptr %53, align 2
  %56 = add i16 %55, 1
  store i16 %56, ptr %53, align 2
  tail call void asm sideeffect "dmb ish", "~{memory}"() #8, !srcloc !12
  store volatile ptr %52, ptr %12, align 4
  tail call void @_raw_spin_unlock_bh(ptr noundef nonnull @reuseport_lock) #8
  br i1 %14, label %58, label %57

57:                                               ; preds = %50
  tail call void @call_rcu(ptr noundef nonnull %13, ptr noundef nonnull @reuseport_free_rcu) #8
  br label %58

58:                                               ; preds = %57, %50, %49, %29, %19, %7
  %59 = phi i32 [ %24, %19 ], [ -16, %29 ], [ -12, %49 ], [ %8, %7 ], [ 0, %57 ], [ 0, %50 ]
  ret i32 %59
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc ptr @reuseport_grow(ptr noundef %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.sock_reuseport, ptr %0, i32 0, i32 1
  %3 = load i16, ptr %2, align 4
  %4 = zext i16 %3 to i32
  %5 = icmp slt i16 %3, 0
  br i1 %5, label %6, label %37

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.sock_reuseport, ptr %0, i32 0, i32 3
  %8 = load i16, ptr %7, align 4
  %9 = icmp eq i16 %8, 0
  br i1 %9, label %93, label %10

10:                                               ; preds = %6
  %11 = zext i16 %8 to i32
  %12 = sub nsw i32 %4, %11
  %13 = getelementptr %struct.sock_reuseport, ptr %0, i32 0, i32 8, i32 %12
  %14 = load ptr, ptr %13, align 4
  %15 = getelementptr inbounds %struct.sock, ptr %14, i32 0, i32 81
  store volatile ptr null, ptr %15, align 4
  %16 = load i16, ptr %2, align 4
  %17 = zext i16 %16 to i32
  %18 = load i16, ptr %7, align 4
  %19 = zext i16 %18 to i32
  %20 = sub nsw i32 %17, %19
  %21 = icmp eq i16 %18, 0
  br i1 %21, label %93, label %22

22:                                               ; preds = %27, %10
  %23 = phi i32 [ %28, %27 ], [ %20, %10 ]
  %24 = getelementptr %struct.sock_reuseport, ptr %0, i32 0, i32 8, i32 %23
  %25 = load ptr, ptr %24, align 4
  %26 = icmp eq ptr %25, %14
  br i1 %26, label %30, label %27

27:                                               ; preds = %22
  %28 = add nsw i32 %23, 1
  %29 = icmp eq i32 %28, %17
  br i1 %29, label %93, label %22

30:                                               ; preds = %22
  %31 = icmp eq i32 %23, -1
  br i1 %31, label %93, label %32

32:                                               ; preds = %30
  %33 = getelementptr %struct.sock_reuseport, ptr %0, i32 0, i32 8, i32 %20
  %34 = load ptr, ptr %33, align 4
  store ptr %34, ptr %24, align 4
  %35 = load i16, ptr %7, align 4
  %36 = add i16 %35, -1
  store volatile i16 %36, ptr %7, align 4
  br label %93

37:                                               ; preds = %1
  %38 = shl nuw nsw i32 %4, 3
  %39 = add nuw nsw i32 %38, 32
  %40 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %39, i32 noundef 2848) #10
  %41 = icmp eq ptr %40, null
  br i1 %41, label %93, label %42

42:                                               ; preds = %37
  %43 = shl nuw i16 %3, 1
  %44 = getelementptr inbounds %struct.sock_reuseport, ptr %40, i32 0, i32 1
  store i16 %43, ptr %44, align 8
  %45 = getelementptr inbounds %struct.sock_reuseport, ptr %40, i32 0, i32 7
  store volatile ptr null, ptr %45, align 4
  %46 = getelementptr inbounds %struct.sock_reuseport, ptr %0, i32 0, i32 2
  %47 = load i16, ptr %46, align 2
  %48 = getelementptr inbounds %struct.sock_reuseport, ptr %40, i32 0, i32 2
  store i16 %47, ptr %48, align 2
  %49 = getelementptr inbounds %struct.sock_reuseport, ptr %0, i32 0, i32 3
  %50 = load i16, ptr %49, align 4
  %51 = getelementptr inbounds %struct.sock_reuseport, ptr %40, i32 0, i32 3
  store i16 %50, ptr %51, align 4
  %52 = getelementptr inbounds %struct.sock_reuseport, ptr %0, i32 0, i32 7
  %53 = load ptr, ptr %52, align 4
  store ptr %53, ptr %45, align 4
  %54 = getelementptr inbounds %struct.sock_reuseport, ptr %0, i32 0, i32 5
  %55 = load i32, ptr %54, align 4
  %56 = getelementptr inbounds %struct.sock_reuseport, ptr %40, i32 0, i32 5
  store i32 %55, ptr %56, align 4
  %57 = getelementptr inbounds %struct.sock_reuseport, ptr %0, i32 0, i32 6
  %58 = load i8, ptr %57, align 4
  %59 = getelementptr inbounds %struct.sock_reuseport, ptr %40, i32 0, i32 6
  %60 = load i8, ptr %59, align 8
  %61 = and i8 %60, -4
  %62 = and i8 %58, 3
  %63 = or i8 %62, %61
  store i8 %63, ptr %59, align 8
  %64 = getelementptr inbounds %struct.sock_reuseport, ptr %40, i32 0, i32 8
  %65 = getelementptr inbounds %struct.sock_reuseport, ptr %0, i32 0, i32 8
  %66 = zext i16 %47 to i32
  %67 = shl nuw nsw i32 %66, 2
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 32 %64, ptr align 4 %65, i32 %67, i1 false)
  %68 = zext i16 %43 to i32
  %69 = zext i16 %50 to i32
  %70 = sub nsw i32 %68, %69
  %71 = getelementptr ptr, ptr %64, i32 %70
  %72 = load i16, ptr %2, align 4
  %73 = zext i16 %72 to i32
  %74 = sub nsw i32 %73, %69
  %75 = getelementptr ptr, ptr %65, i32 %74
  %76 = shl nuw nsw i32 %69, 2
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 4 %71, ptr align 4 %75, i32 %76, i1 false)
  %77 = getelementptr inbounds %struct.sock_reuseport, ptr %0, i32 0, i32 4
  %78 = load volatile i32, ptr %77, align 4
  %79 = getelementptr inbounds %struct.sock_reuseport, ptr %40, i32 0, i32 4
  store i32 %78, ptr %79, align 16
  %80 = icmp eq i16 %72, 0
  br i1 %80, label %90, label %81

81:                                               ; preds = %81, %42
  %82 = phi i32 [ %86, %81 ], [ 0, %42 ]
  tail call void asm sideeffect "dmb ish", "~{memory}"() #8, !srcloc !13
  %83 = getelementptr %struct.sock_reuseport, ptr %0, i32 0, i32 8, i32 %82
  %84 = load ptr, ptr %83, align 4
  %85 = getelementptr inbounds %struct.sock, ptr %84, i32 0, i32 81
  store volatile ptr %40, ptr %85, align 4
  %86 = add nuw nsw i32 %82, 1
  %87 = load i16, ptr %2, align 4
  %88 = zext i16 %87 to i32
  %89 = icmp ult i32 %86, %88
  br i1 %89, label %81, label %90

90:                                               ; preds = %81, %42
  %91 = icmp eq ptr %0, null
  br i1 %91, label %93, label %92

92:                                               ; preds = %90
  tail call void @kvfree_call_rcu(ptr noundef nonnull %0, ptr noundef null) #8
  br label %93

93:                                               ; preds = %92, %90, %37, %32, %30, %27, %10, %6
  %94 = phi ptr [ null, %6 ], [ %40, %92 ], [ %40, %90 ], [ %0, %10 ], [ %0, %30 ], [ %0, %32 ], [ null, %37 ], [ %0, %27 ]
  ret ptr %94
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @call_rcu(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @reuseport_free_rcu(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.sock_reuseport, ptr %0, i32 0, i32 7
  %3 = load ptr, ptr %2, align 4
  tail call void @sk_reuseport_prog_free(ptr noundef %3) #8
  %4 = getelementptr inbounds %struct.sock_reuseport, ptr %0, i32 0, i32 5
  %5 = load i32, ptr %4, align 4
  tail call void @ida_free(ptr noundef nonnull @reuseport_ida, i32 noundef %5) #8
  tail call void @kfree(ptr noundef %0) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @reuseport_detach_sock(ptr noundef %0) #0 {
  tail call void @_raw_spin_lock_bh(ptr noundef nonnull @reuseport_lock) #8
  %2 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 81
  %3 = load ptr, ptr %2, align 4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %59, label %5

5:                                                ; preds = %1
  store volatile ptr null, ptr %2, align 4
  %6 = getelementptr inbounds %struct.sock_reuseport, ptr %3, i32 0, i32 1
  %7 = load i16, ptr %6, align 4
  %8 = zext i16 %7 to i32
  %9 = getelementptr inbounds %struct.sock_reuseport, ptr %3, i32 0, i32 3
  %10 = load i16, ptr %9, align 4
  %11 = zext i16 %10 to i32
  %12 = sub nsw i32 %8, %11
  %13 = icmp eq i16 %10, 0
  br i1 %13, label %31, label %14

14:                                               ; preds = %19, %5
  %15 = phi i32 [ %20, %19 ], [ %12, %5 ]
  %16 = getelementptr %struct.sock_reuseport, ptr %3, i32 0, i32 8, i32 %15
  %17 = load ptr, ptr %16, align 4
  %18 = icmp eq ptr %17, %0
  br i1 %18, label %22, label %19

19:                                               ; preds = %14
  %20 = add nsw i32 %15, 1
  %21 = icmp eq i32 %20, %8
  br i1 %21, label %31, label %14

22:                                               ; preds = %14
  %23 = icmp eq i32 %15, -1
  br i1 %23, label %31, label %24

24:                                               ; preds = %22
  %25 = getelementptr %struct.sock_reuseport, ptr %3, i32 0, i32 8, i32 %12
  %26 = load ptr, ptr %25, align 4
  store ptr %26, ptr %16, align 4
  %27 = load i16, ptr %9, align 4
  %28 = add i16 %27, -1
  store volatile i16 %28, ptr %9, align 4
  %29 = getelementptr inbounds %struct.sock_reuseport, ptr %3, i32 0, i32 2
  %30 = load i16, ptr %29, align 2
  br label %51

31:                                               ; preds = %22, %19, %5
  %32 = getelementptr inbounds %struct.sock_reuseport, ptr %3, i32 0, i32 2
  %33 = load i16, ptr %32, align 2
  %34 = zext i16 %33 to i32
  %35 = icmp eq i16 %33, 0
  br i1 %35, label %51, label %36

36:                                               ; preds = %41, %31
  %37 = phi i32 [ %42, %41 ], [ 0, %31 ]
  %38 = getelementptr %struct.sock_reuseport, ptr %3, i32 0, i32 8, i32 %37
  %39 = load ptr, ptr %38, align 4
  %40 = icmp eq ptr %39, %0
  br i1 %40, label %44, label %41

41:                                               ; preds = %36
  %42 = add nuw nsw i32 %37, 1
  %43 = icmp eq i32 %42, %34
  br i1 %43, label %51, label %36

44:                                               ; preds = %36
  %45 = add nsw i32 %34, -1
  %46 = getelementptr %struct.sock_reuseport, ptr %3, i32 0, i32 8, i32 %45
  %47 = load ptr, ptr %46, align 4
  store ptr %47, ptr %38, align 4
  %48 = load i16, ptr %32, align 2
  %49 = add i16 %48, -1
  store i16 %49, ptr %32, align 2
  %50 = load i16, ptr %9, align 4
  br label %51

51:                                               ; preds = %44, %41, %31, %24
  %52 = phi i16 [ %50, %44 ], [ %10, %31 ], [ %28, %24 ], [ %10, %41 ]
  %53 = phi i16 [ %49, %44 ], [ 0, %31 ], [ %30, %24 ], [ %33, %41 ]
  %54 = zext i16 %53 to i32
  %55 = zext i16 %52 to i32
  %56 = sub nsw i32 0, %55
  %57 = icmp eq i32 %54, %56
  br i1 %57, label %58, label %59

58:                                               ; preds = %51
  tail call void @call_rcu(ptr noundef nonnull %3, ptr noundef nonnull @reuseport_free_rcu) #8
  br label %59

59:                                               ; preds = %58, %51, %1
  tail call void @_raw_spin_unlock_bh(ptr noundef nonnull @reuseport_lock) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @reuseport_stop_listen_sock(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 46
  %3 = load i16, ptr %2, align 4
  %4 = icmp eq i16 %3, 6
  br i1 %4, label %5, label %50

5:                                                ; preds = %1
  tail call void @_raw_spin_lock_bh(ptr noundef nonnull @reuseport_lock) #8
  %6 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 81
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.sock_reuseport, ptr %7, i32 0, i32 7
  %9 = load ptr, ptr %8, align 4
  %10 = load i8, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 35, i32 56), align 8
  %11 = icmp eq i8 %10, 0
  br i1 %11, label %12, label %18

12:                                               ; preds = %5
  %13 = icmp eq ptr %9, null
  br i1 %13, label %37, label %14

14:                                               ; preds = %12
  %15 = getelementptr inbounds %struct.bpf_prog, ptr %9, i32 0, i32 3
  %16 = load i32, ptr %15, align 4
  %17 = icmp eq i32 %16, 40
  br i1 %17, label %18, label %37

18:                                               ; preds = %14, %5
  %19 = getelementptr inbounds %struct.sock_reuseport, ptr %7, i32 0, i32 2
  %20 = load i16, ptr %19, align 2
  %21 = zext i16 %20 to i32
  %22 = icmp eq i16 %20, 0
  br i1 %22, label %38, label %23

23:                                               ; preds = %28, %18
  %24 = phi i32 [ %29, %28 ], [ 0, %18 ]
  %25 = getelementptr %struct.sock_reuseport, ptr %7, i32 0, i32 8, i32 %24
  %26 = load ptr, ptr %25, align 4
  %27 = icmp eq ptr %26, %0
  br i1 %27, label %31, label %28

28:                                               ; preds = %23
  %29 = add nuw nsw i32 %24, 1
  %30 = icmp eq i32 %29, %21
  br i1 %30, label %38, label %23

31:                                               ; preds = %23
  %32 = add nsw i32 %21, -1
  %33 = getelementptr %struct.sock_reuseport, ptr %7, i32 0, i32 8, i32 %32
  %34 = load ptr, ptr %33, align 4
  store ptr %34, ptr %25, align 4
  %35 = load i16, ptr %19, align 2
  %36 = add i16 %35, -1
  store i16 %36, ptr %19, align 2
  br label %38

37:                                               ; preds = %14, %12
  tail call void @_raw_spin_unlock_bh(ptr noundef nonnull @reuseport_lock) #8
  br label %50

38:                                               ; preds = %31, %28, %18
  %39 = getelementptr inbounds %struct.sock_reuseport, ptr %7, i32 0, i32 1
  %40 = load i16, ptr %39, align 4
  %41 = zext i16 %40 to i32
  %42 = getelementptr inbounds %struct.sock_reuseport, ptr %7, i32 0, i32 3
  %43 = load i16, ptr %42, align 4
  %44 = zext i16 %43 to i32
  %45 = xor i32 %44, -1
  %46 = add nsw i32 %45, %41
  %47 = getelementptr %struct.sock_reuseport, ptr %7, i32 0, i32 8, i32 %46
  store ptr %0, ptr %47, align 4
  %48 = load i16, ptr %42, align 4
  %49 = add i16 %48, 1
  store volatile i16 %49, ptr %42, align 4
  tail call void @_raw_spin_unlock_bh(ptr noundef nonnull @reuseport_lock) #8
  br label %51

50:                                               ; preds = %37, %1
  tail call void @reuseport_detach_sock(ptr noundef %0)
  br label %51

51:                                               ; preds = %50, %38
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @reuseport_select_sock(ptr noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3) #0 {
  %5 = alloca [20 x i8], align 1
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !14
  %6 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 81
  %7 = load volatile ptr, ptr %6, align 4
  %8 = icmp eq ptr %7, null
  br i1 %8, label %139, label %9

9:                                                ; preds = %4
  %10 = getelementptr inbounds %struct.sock_reuseport, ptr %7, i32 0, i32 7
  %11 = load volatile ptr, ptr %10, align 4
  %12 = getelementptr inbounds %struct.sock_reuseport, ptr %7, i32 0, i32 2
  %13 = load volatile i16, ptr %12, align 2
  %14 = icmp eq i16 %13, 0
  br i1 %14, label %139, label %15, !prof !15

15:                                               ; preds = %9
  tail call void asm sideeffect "dmb ish", "~{memory}"() #8, !srcloc !16
  %16 = icmp ne ptr %11, null
  %17 = icmp ne ptr %2, null
  %18 = and i1 %17, %16
  br i1 %18, label %19, label %120

19:                                               ; preds = %15
  %20 = getelementptr inbounds %struct.bpf_prog, ptr %11, i32 0, i32 2
  %21 = load i32, ptr %20, align 4
  %22 = icmp eq i32 %21, 21
  br i1 %22, label %23, label %25

23:                                               ; preds = %19
  %24 = tail call ptr @bpf_run_sk_reuseport(ptr noundef nonnull %7, ptr noundef %0, ptr noundef nonnull %11, ptr noundef nonnull %2, ptr noundef null, i32 noundef %1) #8
  br label %117

25:                                               ; preds = %19
  %26 = getelementptr inbounds %struct.sk_buff, ptr %2, i32 0, i32 19
  %27 = load volatile i32, ptr %26, align 4
  %28 = icmp eq i32 %27, 1
  br i1 %28, label %32, label %29

29:                                               ; preds = %25
  %30 = tail call ptr @skb_clone(ptr noundef nonnull %2, i32 noundef 2592) #8
  %31 = icmp eq ptr %30, null
  br i1 %31, label %120, label %32

32:                                               ; preds = %29, %25
  %33 = phi ptr [ %2, %25 ], [ %30, %29 ]
  %34 = phi ptr [ null, %25 ], [ %30, %29 ]
  %35 = getelementptr inbounds %struct.sk_buff, ptr %33, i32 0, i32 5
  %36 = load i32, ptr %35, align 8
  %37 = icmp ult i32 %36, %3
  br i1 %37, label %56, label %38, !prof !15

38:                                               ; preds = %32
  %39 = getelementptr inbounds %struct.sk_buff, ptr %33, i32 0, i32 6
  %40 = load i32, ptr %39, align 4
  %41 = sub i32 %36, %40
  %42 = icmp ult i32 %41, %3
  br i1 %42, label %43, label %49

43:                                               ; preds = %38
  %44 = sub i32 %3, %41
  %45 = tail call ptr @__pskb_pull_tail(ptr noundef nonnull %33, i32 noundef %44) #8
  %46 = icmp eq ptr %45, null
  br i1 %46, label %56, label %47

47:                                               ; preds = %43
  %48 = load i32, ptr %35, align 8
  br label %49

49:                                               ; preds = %47, %38
  %50 = phi i32 [ %48, %47 ], [ %36, %38 ]
  %51 = sub i32 %50, %3
  store i32 %51, ptr %35, align 8
  %52 = getelementptr inbounds %struct.sk_buff, ptr %33, i32 0, i32 17
  %53 = load ptr, ptr %52, align 4
  %54 = getelementptr i8, ptr %53, i32 %3
  store ptr %54, ptr %52, align 4
  %55 = icmp eq ptr %54, null
  br i1 %55, label %56, label %57

56:                                               ; preds = %49, %43, %32
  tail call void @kfree_skb_reason(ptr noundef %34, i32 noundef 0) #8
  br label %120

57:                                               ; preds = %49
  tail call void @migrate_disable() #8
  %58 = getelementptr inbounds %struct.sk_buff, ptr %33, i32 0, i32 3, i32 8
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %5)
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(20) %5, i8 0, i32 20, i1 false)
  %59 = getelementptr inbounds %struct.bpf_prog, ptr %11, i32 0, i32 1
  %60 = load i16, ptr %59, align 2
  %61 = and i16 %60, 8
  %62 = icmp eq i16 %61, 0
  br i1 %62, label %64, label %63, !prof !17

63:                                               ; preds = %57
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 1 dereferenceable(20) %5, ptr noundef align 1 dereferenceable(20) %58, i32 20, i1 false) #8
  tail call void @llvm.memset.p0.i32(ptr noundef align 1 dereferenceable(20) %58, i8 0, i32 20, i1 false) #8
  br label %64

64:                                               ; preds = %63, %57
  %65 = load volatile i32, ptr @bpf_stats_enabled_key, align 4
  %66 = icmp sgt i32 %65, 0
  br i1 %66, label %67, label %95, !prof !15

67:                                               ; preds = %64
  %68 = tail call i64 @sched_clock() #8
  %69 = getelementptr inbounds %struct.bpf_prog, ptr %11, i32 1
  %70 = getelementptr inbounds %struct.bpf_prog, ptr %11, i32 0, i32 9
  %71 = load ptr, ptr %70, align 4
  %72 = tail call i32 %71(ptr noundef nonnull %33, ptr noundef %69) #8
  %73 = getelementptr inbounds %struct.bpf_prog, ptr %11, i32 0, i32 7
  %74 = load ptr, ptr %73, align 4
  %75 = ptrtoint ptr %74 to i32
  %76 = tail call i32 @llvm.read_register.i32(metadata !0) #8
  %77 = inttoptr i32 %76 to ptr
  %78 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %77) #7, !srcloc !18
  %79 = add i32 %78, %75
  %80 = inttoptr i32 %79 to ptr
  %81 = getelementptr inbounds %struct.bpf_prog_stats, ptr %80, i32 0, i32 3
  %82 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #8, !srcloc !19
  %83 = load i32, ptr %81, align 4
  %84 = add i32 %83, 1
  store i32 %84, ptr %81, align 4
  tail call void asm sideeffect "dmb ishst", "~{memory}"() #8, !srcloc !20
  %85 = load i64, ptr %80, align 8
  %86 = add i64 %85, 1
  store i64 %86, ptr %80, align 8
  %87 = getelementptr inbounds %struct.bpf_prog_stats, ptr %80, i32 0, i32 1
  %88 = tail call i64 @sched_clock() #8
  %89 = sub i64 %88, %68
  %90 = and i64 %89, 4294967295
  %91 = load i64, ptr %87, align 8
  %92 = add i64 %90, %91
  store i64 %92, ptr %87, align 8
  tail call void asm sideeffect "dmb ishst", "~{memory}"() #8, !srcloc !21
  %93 = load i32, ptr %81, align 4
  %94 = add i32 %93, 1
  store i32 %94, ptr %81, align 4
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %82) #8, !srcloc !22
  br label %100

95:                                               ; preds = %64
  %96 = getelementptr inbounds %struct.bpf_prog, ptr %11, i32 1
  %97 = getelementptr inbounds %struct.bpf_prog, ptr %11, i32 0, i32 9
  %98 = load ptr, ptr %97, align 4
  %99 = tail call i32 %98(ptr noundef nonnull %33, ptr noundef %96) #8
  br label %100

100:                                              ; preds = %95, %67
  %101 = phi i32 [ %72, %67 ], [ %99, %95 ]
  %102 = load i16, ptr %59, align 2
  %103 = and i16 %102, 8
  %104 = icmp eq i16 %103, 0
  br i1 %104, label %106, label %105, !prof !17

105:                                              ; preds = %100
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(20) %58, ptr noundef nonnull align 1 dereferenceable(20) %5, i32 20, i1 false) #8
  br label %106

106:                                              ; preds = %105, %100
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %5)
  tail call void @migrate_enable() #8
  %107 = load ptr, ptr %52, align 4
  %108 = sub i32 0, %3
  %109 = getelementptr i8, ptr %107, i32 %108
  store ptr %109, ptr %52, align 4
  %110 = load i32, ptr %35, align 8
  %111 = add i32 %110, %3
  store i32 %111, ptr %35, align 8
  tail call void @consume_skb(ptr noundef %34) #8
  %112 = zext i16 %13 to i32
  %113 = icmp ult i32 %101, %112
  br i1 %113, label %114, label %120

114:                                              ; preds = %106
  %115 = getelementptr %struct.sock_reuseport, ptr %7, i32 0, i32 8, i32 %101
  %116 = load ptr, ptr %115, align 4
  br label %117

117:                                              ; preds = %114, %23
  %118 = phi ptr [ %24, %23 ], [ %116, %114 ]
  %119 = icmp eq ptr %118, null
  br i1 %119, label %120, label %139

120:                                              ; preds = %117, %106, %56, %29, %15
  %121 = zext i16 %13 to i32
  %122 = zext i32 %1 to i64
  %123 = zext i16 %13 to i64
  %124 = mul nuw nsw i64 %123, %122
  %125 = lshr i64 %124, 32
  %126 = trunc i64 %125 to i32
  br label %127

127:                                              ; preds = %134, %120
  %128 = phi i32 [ %126, %120 ], [ %137, %134 ]
  %129 = getelementptr %struct.sock_reuseport, ptr %7, i32 0, i32 8, i32 %128
  %130 = load ptr, ptr %129, align 4
  %131 = getelementptr inbounds %struct.sock_common, ptr %130, i32 0, i32 4
  %132 = load volatile i8, ptr %131, align 2
  %133 = icmp eq i8 %132, 1
  br i1 %133, label %134, label %139

134:                                              ; preds = %127
  %135 = add i32 %128, 1
  %136 = icmp slt i32 %135, %121
  %137 = select i1 %136, i32 %135, i32 0
  %138 = icmp eq i32 %137, %126
  br i1 %138, label %139, label %127

139:                                              ; preds = %134, %127, %117, %9, %4
  %140 = phi ptr [ %118, %117 ], [ null, %9 ], [ null, %4 ], [ %130, %127 ], [ null, %134 ]
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !23
  ret ptr %140
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @bpf_run_sk_reuseport(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @reuseport_migrate_sock(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 {
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !14
  %4 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 81
  %5 = load volatile ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %84, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.sock_reuseport, ptr %5, i32 0, i32 2
  %9 = load volatile i16, ptr %8, align 2
  %10 = icmp eq i16 %9, 0
  br i1 %10, label %86, label %11, !prof !15

11:                                               ; preds = %7
  tail call void asm sideeffect "dmb ish", "~{memory}"() #8, !srcloc !24
  %12 = getelementptr inbounds %struct.sock_common, ptr %1, i32 0, i32 1
  %13 = load i32, ptr %12, align 8
  %14 = getelementptr inbounds %struct.sock_reuseport, ptr %5, i32 0, i32 7
  %15 = load volatile ptr, ptr %14, align 4
  %16 = icmp eq ptr %15, null
  br i1 %16, label %21, label %17

17:                                               ; preds = %11
  %18 = getelementptr inbounds %struct.bpf_prog, ptr %15, i32 0, i32 3
  %19 = load i32, ptr %18, align 4
  %20 = icmp eq i32 %19, 40
  br i1 %20, label %24, label %21

21:                                               ; preds = %17, %11
  %22 = load i8, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 35, i32 56), align 8
  %23 = icmp eq i8 %22, 0
  br i1 %23, label %86, label %36

24:                                               ; preds = %17
  %25 = icmp eq ptr %2, null
  br i1 %25, label %26, label %29

26:                                               ; preds = %24
  %27 = tail call ptr @__alloc_skb(i32 noundef 0, i32 noundef 2592, i32 noundef 0, i32 noundef -1) #8
  %28 = icmp eq ptr %27, null
  br i1 %28, label %86, label %31

29:                                               ; preds = %24
  %30 = tail call ptr @bpf_run_sk_reuseport(ptr noundef nonnull %5, ptr noundef %0, ptr noundef nonnull %15, ptr noundef nonnull %2, ptr noundef %1, i32 noundef %13) #8
  br label %33

31:                                               ; preds = %26
  %32 = tail call ptr @bpf_run_sk_reuseport(ptr noundef nonnull %5, ptr noundef %0, ptr noundef nonnull %15, ptr noundef nonnull %27, ptr noundef %1, i32 noundef %13) #8
  tail call void @kfree_skb_reason(ptr noundef nonnull %27, i32 noundef 0) #8
  br label %33

33:                                               ; preds = %31, %29
  %34 = phi ptr [ %32, %31 ], [ %30, %29 ]
  %35 = icmp eq ptr %34, null
  br i1 %35, label %36, label %55

36:                                               ; preds = %33, %21
  %37 = zext i16 %9 to i32
  %38 = zext i32 %13 to i64
  %39 = zext i16 %9 to i64
  %40 = mul nuw nsw i64 %38, %39
  %41 = lshr i64 %40, 32
  %42 = trunc i64 %41 to i32
  br label %43

43:                                               ; preds = %50, %36
  %44 = phi i32 [ %42, %36 ], [ %53, %50 ]
  %45 = getelementptr %struct.sock_reuseport, ptr %5, i32 0, i32 8, i32 %44
  %46 = load ptr, ptr %45, align 4
  %47 = getelementptr inbounds %struct.sock_common, ptr %46, i32 0, i32 4
  %48 = load volatile i8, ptr %47, align 2
  %49 = icmp eq i8 %48, 1
  br i1 %49, label %50, label %55

50:                                               ; preds = %43
  %51 = add i32 %44, 1
  %52 = icmp slt i32 %51, %37
  %53 = select i1 %52, i32 %51, i32 0
  %54 = icmp eq i32 %53, %42
  br i1 %54, label %86, label %43

55:                                               ; preds = %43, %33
  %56 = phi ptr [ %34, %33 ], [ %46, %43 ]
  %57 = icmp eq ptr %56, null
  %58 = icmp ugt ptr %56, inttoptr (i32 -4096 to ptr)
  %59 = or i1 %57, %58
  br i1 %59, label %86, label %60

60:                                               ; preds = %55
  %61 = getelementptr inbounds %struct.sock_common, ptr %56, i32 0, i32 19
  %62 = load volatile i32, ptr %61, align 4
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %76, label %64

64:                                               ; preds = %74, %60
  %65 = phi i32 [ %72, %74 ], [ %62, %60 ]
  %66 = add i32 %65, 1
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %61) #8, !srcloc !25
  br label %67

67:                                               ; preds = %67, %64
  %68 = tail call { i32, i32 } asm sideeffect "@ atomic_cmpxchg\0Aldrex\09$1, [$3]\0Amov\09$0, #0\0Ateq\09$1, $4\0Astrexeq $0, $5, [$3]\0A", "=&r,=&r,=*Qo,r,Ir,r,*Qo,~{cc}"(ptr elementtype(i32) %61, ptr %61, i32 %65, i32 %66, ptr elementtype(i32) %61) #8, !srcloc !26
  %69 = extractvalue { i32, i32 } %68, 0
  %70 = icmp eq i32 %69, 0
  br i1 %70, label %71, label %67

71:                                               ; preds = %67
  %72 = extractvalue { i32, i32 } %68, 1
  %73 = icmp eq i32 %72, %65
  br i1 %73, label %76, label %74, !prof !17

74:                                               ; preds = %71
  %75 = icmp eq i32 %72, 0
  br i1 %75, label %76, label %64

76:                                               ; preds = %74, %71, %60
  %77 = phi i32 [ 0, %60 ], [ 0, %74 ], [ %65, %71 ]
  %78 = add i32 %77, 1
  %79 = or i32 %78, %77
  %80 = icmp sgt i32 %79, -1
  br i1 %80, label %82, label %81, !prof !17

81:                                               ; preds = %76
  tail call void @refcount_warn_saturate(ptr noundef %61, i32 noundef 0) #8
  br label %82

82:                                               ; preds = %81, %76
  %83 = icmp eq i32 %77, 0
  br i1 %83, label %86, label %84, !prof !15

84:                                               ; preds = %86, %82, %3
  %85 = phi ptr [ null, %86 ], [ %56, %82 ], [ null, %3 ]
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !23
  ret ptr %85

86:                                               ; preds = %82, %55, %50, %26, %21, %7
  %87 = load ptr, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 30, i32 3), align 4
  %88 = getelementptr [126 x i32], ptr %87, i32 0, i32 125
  %89 = ptrtoint ptr %88 to i32
  %90 = tail call i32 @llvm.read_register.i32(metadata !0) #8
  %91 = inttoptr i32 %90 to ptr
  %92 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %91) #7, !srcloc !18
  %93 = add i32 %92, %89
  %94 = inttoptr i32 %93 to ptr
  %95 = load i32, ptr %94, align 4
  %96 = add i32 %95, 1
  store i32 %96, ptr %94, align 4
  br label %84
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @reuseport_attach_prog(ptr noundef %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.sock_common, ptr %0, i32 0, i32 15, i32 0, i32 1
  %4 = load ptr, ptr %3, align 4
  %5 = icmp eq ptr %4, null
  br i1 %5, label %6, label %14

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.sock_common, ptr %0, i32 0, i32 5
  %8 = load i8, ptr %7, align 1
  %9 = and i8 %8, 16
  %10 = icmp eq i8 %9, 0
  br i1 %10, label %23, label %11

11:                                               ; preds = %6
  %12 = tail call i32 @reuseport_alloc(ptr noundef %0, i1 noundef zeroext false)
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %18, label %23

14:                                               ; preds = %2
  %15 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 81
  %16 = load volatile ptr, ptr %15, align 4
  %17 = icmp eq ptr %16, null
  br i1 %17, label %23, label %18

18:                                               ; preds = %14, %11
  tail call void @_raw_spin_lock_bh(ptr noundef nonnull @reuseport_lock) #8
  %19 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 81
  %20 = load ptr, ptr %19, align 4
  %21 = getelementptr inbounds %struct.sock_reuseport, ptr %20, i32 0, i32 7
  %22 = load ptr, ptr %21, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #8, !srcloc !27
  store volatile ptr %1, ptr %21, align 4
  tail call void @_raw_spin_unlock_bh(ptr noundef nonnull @reuseport_lock) #8
  tail call void @sk_reuseport_prog_free(ptr noundef %22) #8
  br label %23

23:                                               ; preds = %18, %14, %11, %6
  %24 = phi i32 [ 0, %18 ], [ %12, %11 ], [ -22, %14 ], [ -22, %6 ]
  ret i32 %24
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @sk_reuseport_prog_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @reuseport_detach_prog(ptr nocapture noundef readonly %0) #0 {
  tail call void @_raw_spin_lock_bh(ptr noundef nonnull @reuseport_lock) #8
  %2 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 81
  %3 = load ptr, ptr %2, align 4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %5, label %11

5:                                                ; preds = %1
  tail call void @_raw_spin_unlock_bh(ptr noundef nonnull @reuseport_lock) #8
  %6 = getelementptr inbounds %struct.sock_common, ptr %0, i32 0, i32 5
  %7 = load i8, ptr %6, align 1
  %8 = and i8 %7, 16
  %9 = icmp eq i8 %8, 0
  %10 = select i1 %9, i32 -22, i32 -2
  br label %25

11:                                               ; preds = %1
  %12 = getelementptr inbounds %struct.sock_common, ptr %0, i32 0, i32 15, i32 0, i32 1
  %13 = load ptr, ptr %12, align 4
  %14 = icmp eq ptr %13, null
  br i1 %14, label %15, label %20

15:                                               ; preds = %11
  %16 = getelementptr inbounds %struct.sock_reuseport, ptr %3, i32 0, i32 3
  %17 = load i16, ptr %16, align 4
  %18 = icmp eq i16 %17, 0
  br i1 %18, label %20, label %19

19:                                               ; preds = %15
  tail call void @_raw_spin_unlock_bh(ptr noundef nonnull @reuseport_lock) #8
  br label %25

20:                                               ; preds = %15, %11
  %21 = getelementptr inbounds %struct.sock_reuseport, ptr %3, i32 0, i32 7
  %22 = load ptr, ptr %21, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #8, !srcloc !28
  store volatile ptr null, ptr %21, align 4
  tail call void @_raw_spin_unlock_bh(ptr noundef nonnull @reuseport_lock) #8
  %23 = icmp eq ptr %22, null
  br i1 %23, label %25, label %24

24:                                               ; preds = %20
  tail call void @sk_reuseport_prog_free(ptr noundef nonnull %22) #8
  br label %25

25:                                               ; preds = %24, %20, %19, %5
  %26 = phi i32 [ -2, %19 ], [ 0, %24 ], [ %10, %5 ], [ -2, %20 ]
  ret i32 %26
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_bh(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ida_alloc_range(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_bh(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @kvfree_call_rcu(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ida_free(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_clone(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @consume_skb(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__pskb_pull_tail(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @migrate_disable() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @migrate_enable() local_unnamed_addr #2

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #6

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @sched_clock() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__alloc_skb(i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree_skb_reason(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #7

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { null_pointer_is_valid allocsize(0) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { argmemonly nofree nounwind willreturn }
attributes #6 = { argmemonly nofree nounwind willreturn writeonly }
attributes #7 = { nounwind readonly }
attributes #8 = { nounwind }
attributes #9 = { nounwind allocsize(2) }
attributes #10 = { nounwind allocsize(0) }

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
!9 = !{i64 2156634788}
!10 = !{i64 2156621299}
!11 = !{i64 2156681075}
!12 = !{i64 2156667506}
!13 = !{i64 2156650560}
!14 = !{i64 2149367909}
!15 = !{!"branch_weights", i32 1, i32 2000}
!16 = !{i64 2156706917}
!17 = !{!"branch_weights", i32 2000, i32 1}
!18 = !{i64 501794}
!19 = !{i64 483094, i64 483155}
!20 = !{i64 2149693928}
!21 = !{i64 2149694229}
!22 = !{i64 486111}
!23 = !{i64 2149368126}
!24 = !{i64 2156715363}
!25 = !{i64 587855, i64 2148077826, i64 2148077852, i64 2148077899, i64 2148077921, i64 2148077949, i64 2148077969}
!26 = !{i64 573918, i64 573942, i64 573963, i64 573980, i64 573997}
!27 = !{i64 2156738715}
!28 = !{i64 2156748820}
