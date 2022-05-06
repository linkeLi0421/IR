; ModuleID = '/llk/IR/net/ipv6/xfrm6_tunnel.c_pt.bc'
source_filename = "../net/ipv6/xfrm6_tunnel.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_xfrm6_tunnel_spi_lookup:\09\09\09\09\09"
module asm "\09.asciz \09\22xfrm6_tunnel_spi_lookup\22\09\09\09\09\09"
module asm "__kstrtabns_xfrm6_tunnel_spi_lookup:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_xfrm6_tunnel_alloc_spi:\09\09\09\09\09"
module asm "\09.asciz \09\22xfrm6_tunnel_alloc_spi\22\09\09\09\09\09"
module asm "__kstrtabns_xfrm6_tunnel_alloc_spi:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.pernet_operations = type { %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32 }
%struct.list_head = type { ptr, ptr }
%struct.xfrm_type = type { ptr, i8, i8, ptr, ptr, ptr, ptr, ptr }
%struct.xfrm6_tunnel = type { ptr, ptr, ptr, ptr, i32 }
%struct.module = type { i32, %struct.list_head, [60 x i8], %struct.module_kobject, ptr, ptr, ptr, ptr, ptr, ptr, i32, %struct.mutex, ptr, i32, i32, ptr, ptr, i8, i8, i32, ptr, ptr, [48 x i8], %struct.module_layout, %struct.module_layout, %struct.mod_arch_specific, i32, i32, %struct.list_head, ptr, ptr, %struct.mod_kallsyms, ptr, ptr, ptr, ptr, i32, ptr, i32, i32, ptr, i32, ptr, i32, ptr, ptr, i32, ptr, i32, %struct.list_head, %struct.list_head, ptr, %struct.atomic_t, [40 x i8] }
%struct.module_kobject = type { %struct.kobject, ptr, ptr, ptr, ptr }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.module_layout = type { ptr, i32, i32, i32, i32, %struct.mod_tree_node }
%struct.mod_tree_node = type { ptr, %struct.latch_tree_node }
%struct.latch_tree_node = type { [2 x %struct.rb_node] }
%struct.rb_node = type { i32, ptr, ptr }
%struct.mod_arch_specific = type { [7 x ptr], %struct.mod_plt_sec, %struct.mod_plt_sec }
%struct.mod_plt_sec = type { ptr, ptr, i32 }
%struct.mod_kallsyms = type { ptr, i32, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.net = type { %struct.refcount_struct, %struct.spinlock, i32, i32, i32, %struct.spinlock, %struct.atomic_t, %struct.list_head, %struct.list_head, %struct.llist_node, ptr, ptr, ptr, %struct.idr, %struct.ns_common, %struct.ref_tracker_dir, %struct.list_head, ptr, ptr, %struct.ctl_table_set, ptr, ptr, ptr, ptr, ptr, %struct.raw_notifier_head, i32, ptr, %struct.list_head, %struct.netns_core, %struct.netns_mib, %struct.netns_packet, %struct.netns_unix, %struct.netns_nexthop, [40 x i8], %struct.netns_ipv4, %struct.netns_ipv6, ptr, %struct.netns_bpf, [28 x i8], %struct.netns_xfrm, i64, %struct.netns_can, ptr, ptr, [32 x i8] }
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
%struct.netns_ipv6 = type { %struct.dst_ops, %struct.netns_sysctl_ipv6, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.timer_list, ptr, ptr, %struct.list_head, %struct.rwlock_t, %struct.spinlock, i32, i32, i8, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, i32, %struct.anon.136, ptr, [60 x i8] }
%struct.dst_ops = type { i16, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [60 x i8], %struct.percpu_counter, [32 x i8] }
%struct.percpu_counter = type { %struct.raw_spinlock, i64, %struct.list_head, ptr }
%struct.netns_sysctl_ipv6 = type { ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i8, i32, i8, i8, i8, [8 x i32], ptr, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i8, i8 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32 }
%struct.hlist_node = type { ptr, ptr }
%struct.rwlock_t = type { %struct.arch_rwlock_t }
%struct.arch_rwlock_t = type { i32 }
%struct.anon.136 = type { %struct.hlist_head, %struct.spinlock, i32 }
%struct.netns_bpf = type { [2 x ptr], [2 x ptr], [2 x %struct.list_head] }
%struct.netns_xfrm = type { %struct.list_head, ptr, ptr, ptr, ptr, i32, i32, %struct.work_struct, %struct.list_head, ptr, i32, [3 x %struct.hlist_head], [3 x %struct.xfrm_policy_hash], [6 x i32], %struct.work_struct, %struct.xfrm_policy_hthresh, %struct.list_head, ptr, ptr, i32, i32, i32, i32, i8, ptr, [36 x i8], %struct.dst_ops, %struct.dst_ops, %struct.spinlock, %struct.seqcount_spinlock, %struct.seqcount_spinlock, %struct.spinlock, %struct.mutex, [28 x i8] }
%struct.xfrm_policy_hash = type { ptr, i32, i8, i8, i8, i8 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.xfrm_policy_hthresh = type { %struct.work_struct, %struct.seqlock_t, i8, i8, i8, i8 }
%struct.netns_can = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.spinlock, %struct.timer_list, ptr, ptr, %struct.hlist_head }
%struct.thread_info = type { i32, i32, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], [4 x i8], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.xfrm6_tunnel_spi = type { %struct.hlist_node, %struct.hlist_node, %union.xfrm_address_t, i32, %struct.refcount_struct, %struct.callback_head }
%union.xfrm_address_t = type { [4 x i32] }
%struct.callback_head = type { ptr, ptr }
%struct.xfrm6_tunnel_net = type { [256 x %struct.hlist_head], [256 x %struct.hlist_head], i32 }
%struct.xfrm_state = type { %struct.possible_net_t, %union.anon.99, %struct.hlist_node, %struct.hlist_node, %struct.hlist_node, %struct.refcount_struct, %struct.spinlock, %struct.xfrm_id, %struct.xfrm_selector, %struct.xfrm_mark, i32, i32, i32, %struct.xfrm_state_walk, %struct.anon.100, %struct.xfrm_lifetime_cfg, ptr, ptr, ptr, ptr, ptr, i16, i32, i32, ptr, ptr, ptr, ptr, %struct.atomic_t, %struct.xfrm_replay_state, ptr, %struct.xfrm_replay_state, ptr, i32, i32, i32, i32, %struct.timer_list, %struct.xfrm_stats, %struct.xfrm_lifetime_cur, %struct.hrtimer, %struct.xfrm_state_offload, i32, i64, %struct.page_frag, ptr, %struct.xfrm_mode, %struct.xfrm_mode, %struct.xfrm_mode, ptr, ptr, ptr }
%struct.possible_net_t = type {}
%union.anon.99 = type { %struct.hlist_node }
%struct.xfrm_id = type { %union.xfrm_address_t, i32, i8 }
%struct.xfrm_selector = type { %union.xfrm_address_t, %union.xfrm_address_t, i16, i16, i16, i16, i16, i8, i8, i8, i32, i32 }
%struct.xfrm_mark = type { i32, i32 }
%struct.xfrm_state_walk = type { %struct.list_head, i8, i8, i8, i32, ptr }
%struct.anon.100 = type { i32, i8, i8, i8, i8, i8, i8, i16, %union.xfrm_address_t, i32, i32, i32, %struct.xfrm_mark }
%struct.xfrm_lifetime_cfg = type { i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.xfrm_replay_state = type { i32, i32, i32 }
%struct.xfrm_stats = type { i32, i32, i32 }
%struct.xfrm_lifetime_cur = type { i64, i64, i64, i64 }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.xfrm_state_offload = type { ptr, %struct.netdevice_tracker, ptr, i32, i32, i8 }
%struct.netdevice_tracker = type {}
%struct.page_frag = type { ptr, i16, i16 }
%struct.xfrm_mode = type { i8, i8, i8 }
%struct.sk_buff = type { %union.anon.75, %union.anon.108, %union.anon.109, [48 x i8], %union.anon.110, i32, i32, i16, i16, i16, [0 x i8], i8, i8, %union.anon.112, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon.75 = type { %struct.anon.76 }
%struct.anon.76 = type { ptr, ptr, %union.anon.77 }
%union.anon.77 = type { ptr }
%union.anon.108 = type { ptr }
%union.anon.109 = type { i64 }
%union.anon.110 = type { %struct.anon.111 }
%struct.anon.111 = type { i32, ptr }
%union.anon.112 = type { %struct.anon.113 }
%struct.anon.113 = type { [0 x i8], i16, [0 x i8], i16, %union.anon.114, i32, i32, i32, i16, i16, %union.anon.116, %union.anon.117, %union.anon.118, i16, i16, i16, i16, i16, i16, i16 }
%union.anon.114 = type { i32 }
%union.anon.116 = type { i32 }
%union.anon.117 = type { i32 }
%union.anon.118 = type { i16 }
%struct.ipv6hdr = type { i8, [3 x i8], i16, i8, i8, %struct.in6_addr, %struct.in6_addr }
%struct.in6_addr = type { %union.anon.96 }
%union.anon.96 = type { [4 x i32] }

@__kstrtab_xfrm6_tunnel_spi_lookup = external dso_local constant [0 x i8], align 1
@__kstrtabns_xfrm6_tunnel_spi_lookup = external dso_local constant [0 x i8], align 1
@__ksymtab_xfrm6_tunnel_spi_lookup = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @xfrm6_tunnel_spi_lookup to i32), ptr @__kstrtab_xfrm6_tunnel_spi_lookup, ptr @__kstrtabns_xfrm6_tunnel_spi_lookup }, section "___ksymtab+xfrm6_tunnel_spi_lookup", align 4
@xfrm6_tunnel_spi_lock = internal global %struct.spinlock zeroinitializer, align 4
@__kstrtab_xfrm6_tunnel_alloc_spi = external dso_local constant [0 x i8], align 1
@__kstrtabns_xfrm6_tunnel_alloc_spi = external dso_local constant [0 x i8], align 1
@__ksymtab_xfrm6_tunnel_alloc_spi = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @xfrm6_tunnel_alloc_spi to i32), ptr @__kstrtab_xfrm6_tunnel_alloc_spi, ptr @__kstrtabns_xfrm6_tunnel_alloc_spi }, section "___ksymtab+xfrm6_tunnel_alloc_spi", align 4
@__UNIQUE_ID_license470 = internal constant [12 x i8] c"license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_alias471 = internal constant [22 x i8] c"alias=xfrm-type-10-41\00", section ".modinfo", align 1
@xfrm6_tunnel_net_id = internal global i32 0, section ".data..read_mostly", align 4
@xfrm6_tunnel_spi_kmem = internal unnamed_addr global ptr null, section ".data..read_mostly", align 4
@.str = private unnamed_addr constant [17 x i8] c"xfrm6_tunnel_spi\00", align 1
@xfrm6_tunnel_net_ops = internal global %struct.pernet_operations { %struct.list_head zeroinitializer, ptr @xfrm6_tunnel_net_init, ptr null, ptr @xfrm6_tunnel_net_exit, ptr null, ptr @xfrm6_tunnel_net_id, i32 2052 }, align 4
@xfrm6_tunnel_type = internal constant %struct.xfrm_type { ptr @__this_module, i8 41, i8 0, ptr @xfrm6_tunnel_init_state, ptr @xfrm6_tunnel_destroy, ptr @xfrm6_tunnel_input, ptr @xfrm6_tunnel_output, ptr null }, align 4
@xfrm6_tunnel_handler = internal global %struct.xfrm6_tunnel { ptr @xfrm6_tunnel_rcv, ptr null, ptr @xfrm6_tunnel_err, ptr null, i32 3 }, section ".data..read_mostly", align 4
@xfrm46_tunnel_handler = internal global %struct.xfrm6_tunnel { ptr @xfrm6_tunnel_rcv, ptr null, ptr @xfrm6_tunnel_err, ptr null, i32 3 }, section ".data..read_mostly", align 4
@xfrm6_tunnel_net_exit.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.1 = private unnamed_addr constant [24 x i8] c"net/ipv6/xfrm6_tunnel.c\00", align 1
@xfrm6_tunnel_net_exit.__already_done.2 = internal unnamed_addr global i1 false, section ".data.once", align 1
@__this_module = external dso_local global %struct.module, align 64
@init_net = external dso_local global %struct.net, align 64
@llvm.compiler.used = appending global [4 x ptr] [ptr @__UNIQUE_ID_alias471, ptr @__UNIQUE_ID_license470, ptr @__ksymtab_xfrm6_tunnel_alloc_spi, ptr @__ksymtab_xfrm6_tunnel_spi_lookup], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @xfrm6_tunnel_spi_lookup(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = tail call ptr @llvm.thread.pointer() #12
  %4 = getelementptr inbounds %struct.thread_info, ptr %3, i32 0, i32 1
  %5 = load volatile i32, ptr %4, align 4
  %6 = add i32 %5, 512
  store volatile i32 %6, ptr %4, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !8
  %7 = load i32, ptr @xfrm6_tunnel_net_id, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !9
  %8 = getelementptr inbounds %struct.net, ptr %0, i32 0, i32 37
  %9 = load volatile ptr, ptr %8, align 64
  %10 = getelementptr [0 x ptr], ptr %9, i32 0, i32 %7
  %11 = load ptr, ptr %10, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !10
  %12 = load i32, ptr %1, align 4
  %13 = getelementptr [4 x i32], ptr %1, i32 0, i32 1
  %14 = load i32, ptr %13, align 4
  %15 = xor i32 %14, %12
  %16 = getelementptr [4 x i32], ptr %1, i32 0, i32 2
  %17 = load i32, ptr %16, align 4
  %18 = xor i32 %15, %17
  %19 = getelementptr [4 x i32], ptr %1, i32 0, i32 3
  %20 = load i32, ptr %19, align 4
  %21 = xor i32 %18, %20
  %22 = lshr i32 %21, 16
  %23 = xor i32 %22, %21
  %24 = lshr i32 %23, 8
  %25 = xor i32 %24, %23
  %26 = and i32 %25, 255
  %27 = getelementptr [256 x %struct.hlist_head], ptr %11, i32 0, i32 %26
  br label %28

28:                                               ; preds = %32, %2
  %29 = phi ptr [ %27, %2 ], [ %30, %32 ]
  %30 = load volatile ptr, ptr %29, align 4
  %31 = icmp eq ptr %30, null
  br i1 %31, label %52, label %32

32:                                               ; preds = %28
  %33 = getelementptr inbounds %struct.xfrm6_tunnel_spi, ptr %30, i32 0, i32 2
  %34 = load i32, ptr %33, align 4
  %35 = xor i32 %34, %12
  %36 = getelementptr %struct.xfrm6_tunnel_spi, ptr %30, i32 0, i32 2, i32 0, i32 1
  %37 = load i32, ptr %36, align 4
  %38 = xor i32 %37, %14
  %39 = or i32 %38, %35
  %40 = getelementptr %struct.xfrm6_tunnel_spi, ptr %30, i32 0, i32 2, i32 0, i32 2
  %41 = load i32, ptr %40, align 4
  %42 = xor i32 %41, %17
  %43 = or i32 %39, %42
  %44 = getelementptr %struct.xfrm6_tunnel_spi, ptr %30, i32 0, i32 2, i32 0, i32 3
  %45 = load i32, ptr %44, align 4
  %46 = xor i32 %45, %20
  %47 = or i32 %43, %46
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %49, label %28

49:                                               ; preds = %32
  %50 = getelementptr inbounds %struct.xfrm6_tunnel_spi, ptr %30, i32 0, i32 3
  %51 = load i32, ptr %50, align 4
  br label %52

52:                                               ; preds = %49, %28
  %53 = phi i32 [ %51, %49 ], [ 0, %28 ]
  tail call fastcc void @local_bh_enable() #12
  %54 = tail call i32 @llvm.bswap.i32(i32 %53)
  ret i32 %54
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @xfrm6_tunnel_alloc_spi(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  tail call void @_raw_spin_lock_bh(ptr noundef nonnull @xfrm6_tunnel_spi_lock) #12
  %3 = load i32, ptr @xfrm6_tunnel_net_id, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !9
  %4 = getelementptr inbounds %struct.net, ptr %0, i32 0, i32 37
  %5 = load volatile ptr, ptr %4, align 64
  %6 = getelementptr [0 x ptr], ptr %5, i32 0, i32 %3
  %7 = load ptr, ptr %6, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !10
  %8 = load i32, ptr %1, align 4
  %9 = getelementptr [4 x i32], ptr %1, i32 0, i32 1
  %10 = load i32, ptr %9, align 4
  %11 = xor i32 %10, %8
  %12 = getelementptr [4 x i32], ptr %1, i32 0, i32 2
  %13 = load i32, ptr %12, align 4
  %14 = xor i32 %11, %13
  %15 = getelementptr [4 x i32], ptr %1, i32 0, i32 3
  %16 = load i32, ptr %15, align 4
  %17 = xor i32 %14, %16
  %18 = lshr i32 %17, 16
  %19 = xor i32 %18, %17
  %20 = lshr i32 %19, 8
  %21 = xor i32 %20, %19
  %22 = and i32 %21, 255
  %23 = getelementptr [256 x %struct.hlist_head], ptr %7, i32 0, i32 %22
  br label %24

24:                                               ; preds = %28, %2
  %25 = phi ptr [ %23, %2 ], [ %26, %28 ]
  %26 = load volatile ptr, ptr %25, align 4
  %27 = icmp eq ptr %26, null
  br i1 %27, label %59, label %28

28:                                               ; preds = %24
  %29 = getelementptr inbounds %struct.xfrm6_tunnel_spi, ptr %26, i32 0, i32 2
  %30 = load i32, ptr %29, align 4
  %31 = xor i32 %30, %8
  %32 = getelementptr %struct.xfrm6_tunnel_spi, ptr %26, i32 0, i32 2, i32 0, i32 1
  %33 = load i32, ptr %32, align 4
  %34 = xor i32 %33, %10
  %35 = or i32 %34, %31
  %36 = getelementptr %struct.xfrm6_tunnel_spi, ptr %26, i32 0, i32 2, i32 0, i32 2
  %37 = load i32, ptr %36, align 4
  %38 = xor i32 %37, %13
  %39 = or i32 %35, %38
  %40 = getelementptr %struct.xfrm6_tunnel_spi, ptr %26, i32 0, i32 2, i32 0, i32 3
  %41 = load i32, ptr %40, align 4
  %42 = xor i32 %41, %16
  %43 = or i32 %39, %42
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %45, label %24

45:                                               ; preds = %28
  %46 = getelementptr inbounds %struct.xfrm6_tunnel_spi, ptr %26, i32 0, i32 4
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %46) #12, !srcloc !11
  %47 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %46, ptr %46, i32 1, ptr elementtype(i32) %46) #12, !srcloc !12
  %48 = extractvalue { i32, i32, i32 } %47, 0
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %54, label %50, !prof !13

50:                                               ; preds = %45
  %51 = add i32 %48, 1
  %52 = or i32 %51, %48
  %53 = icmp sgt i32 %52, -1
  br i1 %53, label %56, label %54, !prof !14

54:                                               ; preds = %50, %45
  %55 = phi i32 [ 2, %45 ], [ 1, %50 ]
  tail call void @refcount_warn_saturate(ptr noundef %46, i32 noundef %55) #12
  br label %56

56:                                               ; preds = %54, %50
  %57 = getelementptr inbounds %struct.xfrm6_tunnel_spi, ptr %26, i32 0, i32 3
  %58 = load i32, ptr %57, align 4
  br label %180

59:                                               ; preds = %24
  %60 = load i32, ptr @xfrm6_tunnel_net_id, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !9
  %61 = load volatile ptr, ptr %4, align 64
  %62 = getelementptr [0 x ptr], ptr %61, i32 0, i32 %60
  %63 = load ptr, ptr %62, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !10
  %64 = getelementptr inbounds %struct.xfrm6_tunnel_net, ptr %63, i32 0, i32 2
  %65 = load i32, ptr %64, align 4
  switch i32 %65, label %66 [
    i32 0, label %68
    i32 -1, label %68
  ]

66:                                               ; preds = %59
  %67 = add nuw i32 %65, 1
  br label %68

68:                                               ; preds = %66, %59, %59
  %69 = phi i32 [ %67, %66 ], [ 1, %59 ], [ 1, %59 ]
  store i32 %69, ptr %64, align 4
  %70 = load i32, ptr @xfrm6_tunnel_net_id, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !9
  %71 = load volatile ptr, ptr %4, align 64
  %72 = getelementptr [0 x ptr], ptr %71, i32 0, i32 %70
  %73 = load ptr, ptr %72, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !10
  %74 = and i32 %69, 255
  %75 = getelementptr %struct.xfrm6_tunnel_net, ptr %73, i32 0, i32 1, i32 %74
  %76 = load ptr, ptr %75, align 4
  %77 = icmp eq ptr %76, null
  %78 = getelementptr i8, ptr %76, i32 -8
  %79 = icmp eq ptr %78, null
  %80 = or i1 %77, %79
  br i1 %80, label %144, label %81

81:                                               ; preds = %102, %68
  %82 = phi ptr [ %112, %102 ], [ %78, %68 ]
  %83 = phi i32 [ %108, %102 ], [ %74, %68 ]
  %84 = phi i32 [ %103, %102 ], [ %69, %68 ]
  br label %85

85:                                               ; preds = %90, %81
  %86 = phi ptr [ %94, %90 ], [ %82, %81 ]
  %87 = getelementptr inbounds %struct.xfrm6_tunnel_spi, ptr %86, i32 0, i32 3
  %88 = load i32, ptr %87, align 4
  %89 = icmp eq i32 %88, %84
  br i1 %89, label %97, label %90

90:                                               ; preds = %85
  %91 = getelementptr inbounds %struct.xfrm6_tunnel_spi, ptr %86, i32 0, i32 1
  %92 = load ptr, ptr %91, align 4
  %93 = icmp eq ptr %92, null
  %94 = getelementptr i8, ptr %92, i32 -8
  %95 = icmp eq ptr %94, null
  %96 = or i1 %93, %95
  br i1 %96, label %144, label %85

97:                                               ; preds = %85
  %98 = icmp eq i32 %84, -1
  br i1 %98, label %99, label %102

99:                                               ; preds = %97
  %100 = load i32, ptr %64, align 4
  %101 = icmp ugt i32 %100, 1
  br i1 %101, label %115, label %180

102:                                              ; preds = %97
  %103 = add nuw i32 %84, 1
  %104 = load i32, ptr @xfrm6_tunnel_net_id, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !9
  %105 = load volatile ptr, ptr %4, align 64
  %106 = getelementptr [0 x ptr], ptr %105, i32 0, i32 %104
  %107 = load ptr, ptr %106, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !10
  %108 = and i32 %103, 255
  %109 = getelementptr %struct.xfrm6_tunnel_net, ptr %107, i32 0, i32 1, i32 %108
  %110 = load ptr, ptr %109, align 4
  %111 = icmp eq ptr %110, null
  %112 = getelementptr i8, ptr %110, i32 -8
  %113 = icmp eq ptr %112, null
  %114 = or i1 %111, %113
  br i1 %114, label %144, label %81

115:                                              ; preds = %140, %99
  %116 = phi i32 [ %141, %140 ], [ 1, %99 ]
  %117 = load i32, ptr @xfrm6_tunnel_net_id, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !9
  %118 = load volatile ptr, ptr %4, align 64
  %119 = getelementptr [0 x ptr], ptr %118, i32 0, i32 %117
  %120 = load ptr, ptr %119, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !10
  %121 = and i32 %116, 255
  %122 = getelementptr %struct.xfrm6_tunnel_net, ptr %120, i32 0, i32 1, i32 %121
  %123 = load ptr, ptr %122, align 4
  %124 = icmp eq ptr %123, null
  %125 = getelementptr i8, ptr %123, i32 -8
  %126 = icmp eq ptr %125, null
  %127 = or i1 %124, %126
  br i1 %127, label %144, label %128

128:                                              ; preds = %133, %115
  %129 = phi ptr [ %137, %133 ], [ %125, %115 ]
  %130 = getelementptr inbounds %struct.xfrm6_tunnel_spi, ptr %129, i32 0, i32 3
  %131 = load i32, ptr %130, align 4
  %132 = icmp eq i32 %131, %116
  br i1 %132, label %140, label %133

133:                                              ; preds = %128
  %134 = getelementptr inbounds %struct.xfrm6_tunnel_spi, ptr %129, i32 0, i32 1
  %135 = load ptr, ptr %134, align 4
  %136 = icmp eq ptr %135, null
  %137 = getelementptr i8, ptr %135, i32 -8
  %138 = icmp eq ptr %137, null
  %139 = or i1 %136, %138
  br i1 %139, label %144, label %128

140:                                              ; preds = %128
  %141 = add nuw i32 %116, 1
  %142 = load i32, ptr %64, align 4
  %143 = icmp ult i32 %141, %142
  br i1 %143, label %115, label %180

144:                                              ; preds = %133, %115, %102, %90, %68
  %145 = phi i32 [ %69, %68 ], [ %116, %133 ], [ %116, %115 ], [ %84, %90 ], [ %103, %102 ]
  %146 = phi i32 [ %74, %68 ], [ %121, %133 ], [ %121, %115 ], [ %83, %90 ], [ %108, %102 ]
  store i32 %145, ptr %64, align 4
  %147 = load ptr, ptr @xfrm6_tunnel_spi_kmem, align 4
  %148 = tail call noalias align 8 ptr @kmem_cache_alloc(ptr noundef %147, i32 noundef 2592) #12
  %149 = icmp eq ptr %148, null
  br i1 %149, label %180, label %150

150:                                              ; preds = %144
  %151 = getelementptr inbounds %struct.xfrm6_tunnel_spi, ptr %148, i32 0, i32 2
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 8 dereferenceable(16) %151, ptr noundef align 4 dereferenceable(16) %1, i32 16, i1 false) #12
  %152 = getelementptr inbounds %struct.xfrm6_tunnel_spi, ptr %148, i32 0, i32 3
  store i32 %145, ptr %152, align 8
  %153 = getelementptr inbounds %struct.xfrm6_tunnel_spi, ptr %148, i32 0, i32 4
  store volatile i32 1, ptr %153, align 4
  %154 = getelementptr inbounds %struct.xfrm6_tunnel_spi, ptr %148, i32 0, i32 1
  %155 = getelementptr %struct.xfrm6_tunnel_net, ptr %63, i32 0, i32 1, i32 %146
  %156 = load ptr, ptr %155, align 4
  store ptr %156, ptr %154, align 8
  %157 = getelementptr inbounds %struct.xfrm6_tunnel_spi, ptr %148, i32 0, i32 1, i32 1
  store volatile ptr %155, ptr %157, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #12, !srcloc !15
  store volatile ptr %154, ptr %155, align 4
  %158 = icmp eq ptr %156, null
  br i1 %158, label %161, label %159

159:                                              ; preds = %150
  %160 = getelementptr inbounds %struct.hlist_node, ptr %156, i32 0, i32 1
  store volatile ptr %154, ptr %160, align 4
  br label %161

161:                                              ; preds = %159, %150
  %162 = load i32, ptr %1, align 4
  %163 = load i32, ptr %9, align 4
  %164 = xor i32 %163, %162
  %165 = load i32, ptr %12, align 4
  %166 = xor i32 %164, %165
  %167 = load i32, ptr %15, align 4
  %168 = xor i32 %166, %167
  %169 = lshr i32 %168, 16
  %170 = xor i32 %169, %168
  %171 = lshr i32 %170, 8
  %172 = xor i32 %171, %170
  %173 = and i32 %172, 255
  %174 = getelementptr [256 x %struct.hlist_head], ptr %63, i32 0, i32 %173
  %175 = load ptr, ptr %174, align 4
  store ptr %175, ptr %148, align 8
  %176 = getelementptr inbounds %struct.hlist_node, ptr %148, i32 0, i32 1
  store volatile ptr %174, ptr %176, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #12, !srcloc !15
  store volatile ptr %148, ptr %174, align 4
  %177 = icmp eq ptr %175, null
  br i1 %177, label %180, label %178

178:                                              ; preds = %161
  %179 = getelementptr inbounds %struct.hlist_node, ptr %175, i32 0, i32 1
  store volatile ptr %148, ptr %179, align 4
  br label %180

180:                                              ; preds = %178, %161, %144, %140, %99, %56
  %181 = phi i32 [ %58, %56 ], [ %145, %144 ], [ %145, %161 ], [ %145, %178 ], [ 0, %99 ], [ 0, %140 ]
  tail call void @_raw_spin_unlock_bh(ptr noundef nonnull @xfrm6_tunnel_spi_lock) #12
  %182 = tail call i32 @llvm.bswap.i32(i32 %181)
  ret i32 %182
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local i32 @init_module() local_unnamed_addr #2 section ".init.text" {
  %1 = tail call ptr @kmem_cache_create(ptr noundef nonnull @.str, i32 noundef 48, i32 noundef 0, i32 noundef 8192, ptr noundef null) #12
  store ptr %1, ptr @xfrm6_tunnel_spi_kmem, align 4
  %2 = icmp eq ptr %1, null
  br i1 %2, label %24, label %3

3:                                                ; preds = %0
  %4 = tail call i32 @register_pernet_subsys(ptr noundef nonnull @xfrm6_tunnel_net_ops) #12
  %5 = icmp slt i32 %4, 0
  br i1 %5, label %21, label %6

6:                                                ; preds = %3
  %7 = tail call i32 @xfrm_register_type(ptr noundef nonnull @xfrm6_tunnel_type, i16 noundef zeroext 10) #12
  %8 = icmp slt i32 %7, 0
  br i1 %8, label %19, label %9

9:                                                ; preds = %6
  %10 = tail call i32 @xfrm6_tunnel_register(ptr noundef nonnull @xfrm6_tunnel_handler, i16 noundef zeroext 10) #12
  %11 = icmp slt i32 %10, 0
  br i1 %11, label %17, label %12

12:                                               ; preds = %9
  %13 = tail call i32 @xfrm6_tunnel_register(ptr noundef nonnull @xfrm46_tunnel_handler, i16 noundef zeroext 2) #12
  %14 = icmp slt i32 %13, 0
  br i1 %14, label %15, label %24

15:                                               ; preds = %12
  %16 = tail call i32 @xfrm6_tunnel_deregister(ptr noundef nonnull @xfrm6_tunnel_handler, i16 noundef zeroext 10) #12
  br label %17

17:                                               ; preds = %15, %9
  %18 = phi i32 [ %10, %9 ], [ %13, %15 ]
  tail call void @xfrm_unregister_type(ptr noundef nonnull @xfrm6_tunnel_type, i16 noundef zeroext 10) #12
  br label %19

19:                                               ; preds = %17, %6
  %20 = phi i32 [ %7, %6 ], [ %18, %17 ]
  tail call void @unregister_pernet_subsys(ptr noundef nonnull @xfrm6_tunnel_net_ops) #12
  br label %21

21:                                               ; preds = %19, %3
  %22 = phi i32 [ %4, %3 ], [ %20, %19 ]
  %23 = load ptr, ptr @xfrm6_tunnel_spi_kmem, align 4
  tail call void @kmem_cache_destroy(ptr noundef %23) #12
  br label %24

24:                                               ; preds = %21, %12, %0
  %25 = phi i32 [ %22, %21 ], [ -12, %0 ], [ 0, %12 ]
  ret i32 %25
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local void @cleanup_module() local_unnamed_addr #2 section ".exit.text" {
  %1 = tail call i32 @xfrm6_tunnel_deregister(ptr noundef nonnull @xfrm46_tunnel_handler, i16 noundef zeroext 2) #12
  %2 = tail call i32 @xfrm6_tunnel_deregister(ptr noundef nonnull @xfrm6_tunnel_handler, i16 noundef zeroext 10) #12
  tail call void @xfrm_unregister_type(ptr noundef nonnull @xfrm6_tunnel_type, i16 noundef zeroext 10) #12
  tail call void @unregister_pernet_subsys(ptr noundef nonnull @xfrm6_tunnel_net_ops) #12
  tail call void @rcu_barrier() #12
  %3 = load ptr, ptr @xfrm6_tunnel_spi_kmem, align 4
  tail call void @kmem_cache_destroy(ptr noundef %3) #12
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.thread.pointer() #3

; Function Attrs: inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @local_bh_enable() #4 {
  br label %1

1:                                                ; preds = %0
  tail call void @__local_bh_enable_ip(i32 noundef ptrtoint (ptr blockaddress(@local_bh_enable, %1) to i32), i32 noundef 512) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__local_bh_enable_ip(i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_bh(ptr noundef) local_unnamed_addr #5 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @kmem_cache_alloc(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_bh(ptr noundef) local_unnamed_addr #5 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kmem_cache_create(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_pernet_subsys(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xfrm_register_type(ptr noundef, i16 noundef zeroext) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xfrm6_tunnel_register(ptr noundef, i16 noundef zeroext) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xfrm6_tunnel_deregister(ptr noundef, i16 noundef zeroext) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @xfrm_unregister_type(ptr noundef, i16 noundef zeroext) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @unregister_pernet_subsys(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @kmem_cache_destroy(ptr noundef) local_unnamed_addr #5

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @xfrm6_tunnel_net_init(ptr noundef %0) #2 section ".init.text" {
  %2 = load i32, ptr @xfrm6_tunnel_net_id, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !9
  %3 = getelementptr inbounds %struct.net, ptr %0, i32 0, i32 37
  %4 = load volatile ptr, ptr %3, align 64
  %5 = getelementptr [0 x ptr], ptr %4, i32 0, i32 %2
  %6 = load ptr, ptr %5, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !10
  call void @llvm.memset.p0.i64(ptr noundef align 4 dereferenceable(2052) %6, i8 0, i64 2052, i1 false)
  ret i32 0
}

; Function Attrs: noinline nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @xfrm6_tunnel_net_exit(ptr noundef %0) #7 section ".ref.text" {
  %2 = load i32, ptr @xfrm6_tunnel_net_id, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !9
  %3 = getelementptr inbounds %struct.net, ptr %0, i32 0, i32 37
  %4 = load volatile ptr, ptr %3, align 64
  %5 = getelementptr [0 x ptr], ptr %4, i32 0, i32 %2
  %6 = load ptr, ptr %5, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !10
  tail call void @xfrm_flush_gc() #12
  %7 = tail call i32 @xfrm_state_flush(ptr noundef %0, i8 noundef zeroext 0, i1 noundef zeroext false, i1 noundef zeroext true) #12
  %8 = load i1, ptr @xfrm6_tunnel_net_exit.__already_done, align 1
  br label %9

9:                                                ; preds = %19, %1
  %10 = phi i1 [ %8, %1 ], [ %20, %19 ]
  %11 = phi i32 [ 0, %1 ], [ %21, %19 ]
  %12 = getelementptr [256 x %struct.hlist_head], ptr %6, i32 0, i32 %11
  %13 = load volatile ptr, ptr %12, align 4
  %14 = icmp ne ptr %13, null
  %15 = xor i1 %10, true
  %16 = select i1 %14, i1 %15, i1 false
  br i1 %16, label %17, label %19, !prof !13

17:                                               ; preds = %9
  store i1 true, ptr @xfrm6_tunnel_net_exit.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 337, i32 noundef 9, ptr noundef null) #12
  %18 = load i1, ptr @xfrm6_tunnel_net_exit.__already_done, align 1
  br label %19

19:                                               ; preds = %17, %9
  %20 = phi i1 [ %18, %17 ], [ %10, %9 ]
  %21 = add nuw nsw i32 %11, 1
  %22 = icmp eq i32 %21, 256
  br i1 %22, label %23, label %9

23:                                               ; preds = %19
  %24 = load i1, ptr @xfrm6_tunnel_net_exit.__already_done.2, align 1
  br label %25

25:                                               ; preds = %35, %23
  %26 = phi i1 [ %36, %35 ], [ %24, %23 ]
  %27 = phi i32 [ %37, %35 ], [ 0, %23 ]
  %28 = getelementptr %struct.xfrm6_tunnel_net, ptr %6, i32 0, i32 1, i32 %27
  %29 = load volatile ptr, ptr %28, align 4
  %30 = icmp ne ptr %29, null
  %31 = xor i1 %26, true
  %32 = select i1 %30, i1 %31, i1 false
  br i1 %32, label %33, label %35, !prof !13

33:                                               ; preds = %25
  store i1 true, ptr @xfrm6_tunnel_net_exit.__already_done.2, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 340, i32 noundef 9, ptr noundef null) #12
  %34 = load i1, ptr @xfrm6_tunnel_net_exit.__already_done.2, align 1
  br label %35

35:                                               ; preds = %33, %25
  %36 = phi i1 [ %34, %33 ], [ %26, %25 ]
  %37 = add nuw nsw i32 %27, 1
  %38 = icmp eq i32 %37, 256
  br i1 %38, label %39, label %25

39:                                               ; preds = %35
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @xfrm_flush_gc() local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xfrm_state_flush(ptr noundef, i8 noundef zeroext, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal i32 @xfrm6_tunnel_init_state(ptr nocapture noundef %0) #8 {
  %2 = getelementptr inbounds %struct.xfrm_state, ptr %0, i32 0, i32 14, i32 1
  %3 = load i8, ptr %2, align 4
  %4 = icmp eq i8 %3, 1
  br i1 %4, label %5, label %11

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.xfrm_state, ptr %0, i32 0, i32 24
  %7 = load ptr, ptr %6, align 8
  %8 = icmp eq ptr %7, null
  br i1 %8, label %9, label %11

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.xfrm_state, ptr %0, i32 0, i32 14, i32 9
  store i32 40, ptr %10, align 4
  br label %11

11:                                               ; preds = %9, %5, %1
  %12 = phi i32 [ 0, %9 ], [ -22, %1 ], [ -22, %5 ]
  ret i32 %12
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @xfrm6_tunnel_destroy(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.xfrm_state, ptr %0, i32 0, i32 14, i32 8
  %3 = load i32, ptr @xfrm6_tunnel_net_id, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !9
  %4 = load volatile ptr, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 37), align 64
  %5 = getelementptr [0 x ptr], ptr %4, i32 0, i32 %3
  %6 = load ptr, ptr %5, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !10
  tail call void @_raw_spin_lock_bh(ptr noundef nonnull @xfrm6_tunnel_spi_lock) #12
  %7 = load i32, ptr %2, align 4
  %8 = getelementptr %struct.xfrm_state, ptr %0, i32 0, i32 14, i32 8, i32 0, i32 1
  %9 = load i32, ptr %8, align 4
  %10 = xor i32 %9, %7
  %11 = getelementptr %struct.xfrm_state, ptr %0, i32 0, i32 14, i32 8, i32 0, i32 2
  %12 = load i32, ptr %11, align 4
  %13 = xor i32 %10, %12
  %14 = getelementptr %struct.xfrm_state, ptr %0, i32 0, i32 14, i32 8, i32 0, i32 3
  %15 = load i32, ptr %14, align 4
  %16 = xor i32 %13, %15
  %17 = lshr i32 %16, 16
  %18 = xor i32 %17, %16
  %19 = lshr i32 %18, 8
  %20 = xor i32 %19, %18
  %21 = and i32 %20, 255
  %22 = getelementptr [256 x %struct.hlist_head], ptr %6, i32 0, i32 %21
  %23 = load ptr, ptr %22, align 4
  %24 = icmp eq ptr %23, null
  br i1 %24, label %80, label %25

25:                                               ; preds = %75, %1
  %26 = phi i32 [ %79, %75 ], [ %15, %1 ]
  %27 = phi i32 [ %78, %75 ], [ %12, %1 ]
  %28 = phi i32 [ %77, %75 ], [ %9, %1 ]
  %29 = phi i32 [ %76, %75 ], [ %7, %1 ]
  %30 = phi ptr [ %31, %75 ], [ %23, %1 ]
  %31 = load ptr, ptr %30, align 4
  %32 = getelementptr inbounds %struct.xfrm6_tunnel_spi, ptr %30, i32 0, i32 2
  %33 = load i32, ptr %32, align 4
  %34 = xor i32 %33, %29
  %35 = getelementptr %struct.xfrm6_tunnel_spi, ptr %30, i32 0, i32 2, i32 0, i32 1
  %36 = load i32, ptr %35, align 4
  %37 = xor i32 %36, %28
  %38 = or i32 %37, %34
  %39 = getelementptr %struct.xfrm6_tunnel_spi, ptr %30, i32 0, i32 2, i32 0, i32 2
  %40 = load i32, ptr %39, align 4
  %41 = xor i32 %40, %27
  %42 = or i32 %38, %41
  %43 = getelementptr %struct.xfrm6_tunnel_spi, ptr %30, i32 0, i32 2, i32 0, i32 3
  %44 = load i32, ptr %43, align 4
  %45 = xor i32 %44, %26
  %46 = or i32 %42, %45
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %48, label %73

48:                                               ; preds = %25
  %49 = getelementptr inbounds %struct.xfrm6_tunnel_spi, ptr %30, i32 0, i32 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #12, !srcloc !16
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %49) #12, !srcloc !11
  %50 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %49, ptr %49, i32 1, ptr elementtype(i32) %49) #12, !srcloc !17
  %51 = extractvalue { i32, i32, i32 } %50, 0
  %52 = icmp eq i32 %51, 1
  br i1 %52, label %56, label %53

53:                                               ; preds = %48
  %54 = icmp sgt i32 %51, 0
  br i1 %54, label %73, label %55, !prof !14

55:                                               ; preds = %53
  tail call void @refcount_warn_saturate(ptr noundef %49, i32 noundef 3) #12
  br label %73

56:                                               ; preds = %48
  tail call void asm sideeffect "dmb ish", "~{memory}"() #12, !srcloc !18
  %57 = load ptr, ptr %30, align 4
  %58 = getelementptr inbounds %struct.hlist_node, ptr %30, i32 0, i32 1
  %59 = load ptr, ptr %58, align 4
  store volatile ptr %57, ptr %59, align 4
  %60 = icmp eq ptr %57, null
  br i1 %60, label %63, label %61

61:                                               ; preds = %56
  %62 = getelementptr inbounds %struct.hlist_node, ptr %57, i32 0, i32 1
  store volatile ptr %59, ptr %62, align 4
  br label %63

63:                                               ; preds = %61, %56
  store volatile ptr inttoptr (i32 290 to ptr), ptr %58, align 4
  %64 = getelementptr inbounds %struct.xfrm6_tunnel_spi, ptr %30, i32 0, i32 1
  %65 = load ptr, ptr %64, align 4
  %66 = getelementptr inbounds %struct.xfrm6_tunnel_spi, ptr %30, i32 0, i32 1, i32 1
  %67 = load ptr, ptr %66, align 4
  store volatile ptr %65, ptr %67, align 4
  %68 = icmp eq ptr %65, null
  br i1 %68, label %71, label %69

69:                                               ; preds = %63
  %70 = getelementptr inbounds %struct.hlist_node, ptr %65, i32 0, i32 1
  store volatile ptr %67, ptr %70, align 4
  br label %71

71:                                               ; preds = %69, %63
  store volatile ptr inttoptr (i32 290 to ptr), ptr %66, align 4
  %72 = getelementptr inbounds %struct.xfrm6_tunnel_spi, ptr %30, i32 0, i32 5
  tail call void @call_rcu(ptr noundef %72, ptr noundef nonnull @x6spi_destroy_rcu) #12
  br label %80

73:                                               ; preds = %55, %53, %25
  %74 = icmp eq ptr %31, null
  br i1 %74, label %80, label %75

75:                                               ; preds = %73
  %76 = load i32, ptr %2, align 4
  %77 = load i32, ptr %8, align 4
  %78 = load i32, ptr %11, align 4
  %79 = load i32, ptr %14, align 4
  br label %25

80:                                               ; preds = %73, %71, %1
  tail call void @_raw_spin_unlock_bh(ptr noundef nonnull @xfrm6_tunnel_spi_lock) #12
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define internal i32 @xfrm6_tunnel_input(ptr nocapture noundef readnone %0, ptr nocapture noundef readonly %1) #9 {
  %3 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 16
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 13, i32 0, i32 18
  %6 = load i16, ptr %5, align 4
  %7 = zext i16 %6 to i32
  %8 = getelementptr i8, ptr %4, i32 %7
  %9 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 3, i32 14
  %10 = load i16, ptr %9, align 2
  %11 = zext i16 %10 to i32
  %12 = getelementptr i8, ptr %8, i32 %11
  %13 = load i8, ptr %12, align 1
  %14 = zext i8 %13 to i32
  ret i32 %14
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @xfrm6_tunnel_output(ptr nocapture noundef readnone %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 16
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 13, i32 0, i32 18
  %6 = load i16, ptr %5, align 4
  %7 = zext i16 %6 to i32
  %8 = getelementptr i8, ptr %4, i32 %7
  %9 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 17
  %10 = load ptr, ptr %9, align 4
  %11 = ptrtoint ptr %8 to i32
  %12 = ptrtoint ptr %10 to i32
  %13 = sub i32 %12, %11
  %14 = tail call ptr @skb_push(ptr noundef %1, i32 noundef %13) #12
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @call_rcu(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @x6spi_destroy_rcu(ptr noundef %0) #0 {
  %2 = load ptr, ptr @xfrm6_tunnel_spi_kmem, align 4
  %3 = getelementptr i8, ptr %0, i32 -40
  tail call void @kmem_cache_free(ptr noundef %2, ptr noundef %3) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kmem_cache_free(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_push(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @xfrm6_tunnel_rcv(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 16
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 13, i32 0, i32 18
  %5 = load i16, ptr %4, align 4
  %6 = zext i16 %5 to i32
  %7 = getelementptr i8, ptr %3, i32 %6
  %8 = getelementptr inbounds %struct.ipv6hdr, ptr %7, i32 0, i32 5
  %9 = tail call ptr @llvm.thread.pointer() #12
  %10 = getelementptr inbounds %struct.thread_info, ptr %9, i32 0, i32 1
  %11 = load volatile i32, ptr %10, align 4
  %12 = add i32 %11, 512
  store volatile i32 %12, ptr %10, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !8
  %13 = load i32, ptr @xfrm6_tunnel_net_id, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !9
  %14 = load volatile ptr, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 37), align 64
  %15 = getelementptr [0 x ptr], ptr %14, i32 0, i32 %13
  %16 = load ptr, ptr %15, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !10
  %17 = load i32, ptr %8, align 4
  %18 = getelementptr [4 x i32], ptr %8, i32 0, i32 1
  %19 = load i32, ptr %18, align 4
  %20 = xor i32 %19, %17
  %21 = getelementptr [4 x i32], ptr %8, i32 0, i32 2
  %22 = load i32, ptr %21, align 4
  %23 = xor i32 %20, %22
  %24 = getelementptr [4 x i32], ptr %8, i32 0, i32 3
  %25 = load i32, ptr %24, align 4
  %26 = xor i32 %23, %25
  %27 = lshr i32 %26, 16
  %28 = xor i32 %27, %26
  %29 = lshr i32 %28, 8
  %30 = xor i32 %29, %28
  %31 = and i32 %30, 255
  %32 = getelementptr [256 x %struct.hlist_head], ptr %16, i32 0, i32 %31
  br label %33

33:                                               ; preds = %37, %1
  %34 = phi ptr [ %32, %1 ], [ %35, %37 ]
  %35 = load volatile ptr, ptr %34, align 4
  %36 = icmp eq ptr %35, null
  br i1 %36, label %57, label %37

37:                                               ; preds = %33
  %38 = getelementptr inbounds %struct.xfrm6_tunnel_spi, ptr %35, i32 0, i32 2
  %39 = load i32, ptr %38, align 4
  %40 = xor i32 %39, %17
  %41 = getelementptr %struct.xfrm6_tunnel_spi, ptr %35, i32 0, i32 2, i32 0, i32 1
  %42 = load i32, ptr %41, align 4
  %43 = xor i32 %42, %19
  %44 = or i32 %43, %40
  %45 = getelementptr %struct.xfrm6_tunnel_spi, ptr %35, i32 0, i32 2, i32 0, i32 2
  %46 = load i32, ptr %45, align 4
  %47 = xor i32 %46, %22
  %48 = or i32 %44, %47
  %49 = getelementptr %struct.xfrm6_tunnel_spi, ptr %35, i32 0, i32 2, i32 0, i32 3
  %50 = load i32, ptr %49, align 4
  %51 = xor i32 %50, %25
  %52 = or i32 %48, %51
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %54, label %33

54:                                               ; preds = %37
  %55 = getelementptr inbounds %struct.xfrm6_tunnel_spi, ptr %35, i32 0, i32 3
  %56 = load i32, ptr %55, align 4
  br label %57

57:                                               ; preds = %54, %33
  %58 = phi i32 [ %56, %54 ], [ 0, %33 ]
  tail call fastcc void @local_bh_enable() #12
  %59 = tail call i32 @llvm.bswap.i32(i32 %58) #12
  %60 = tail call i32 @xfrm6_rcv_spi(ptr noundef %0, i32 noundef 41, i32 noundef %59, ptr noundef null) #12
  ret i32 %60
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal i32 @xfrm6_tunnel_err(ptr nocapture noundef readnone %0, ptr nocapture noundef readnone %1, i8 noundef zeroext %2, i8 noundef zeroext %3, i32 noundef %4, i32 noundef %5) #10 {
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xfrm6_rcv_spi(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcu_barrier() local_unnamed_addr #5

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #11

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #4 = { inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { argmemonly nofree nounwind willreturn }
attributes #7 = { noinline nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #10 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #11 = { argmemonly nofree nounwind willreturn writeonly }
attributes #12 = { nounwind }

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
!8 = !{i64 2148865940}
!9 = !{i64 2149052170}
!10 = !{i64 2149052387}
!11 = !{i64 549674, i64 2148039645, i64 2148039671, i64 2148039718, i64 2148039740, i64 2148039768, i64 2148039788}
!12 = !{i64 2148052518, i64 2148052550, i64 2148052579, i64 2148052613, i64 2148052644, i64 2148052667}
!13 = !{!"branch_weights", i32 1, i32 2000}
!14 = !{!"branch_weights", i32 2000, i32 1}
!15 = !{i64 2150631119}
!16 = !{i64 2148152740}
!17 = !{i64 2148054875, i64 2148054907, i64 2148054936, i64 2148054970, i64 2148055001, i64 2148055024}
!18 = !{i64 2149001803}
