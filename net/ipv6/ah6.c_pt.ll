; ModuleID = '/llk/IR/net/ipv6/ah6.c_pt.bc'
source_filename = "../net/ipv6/ah6.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.xfrm_type = type { ptr, i8, i8, ptr, ptr, ptr, ptr, ptr }
%struct.xfrm6_protocol = type { ptr, ptr, ptr, ptr, ptr, i32 }
%struct.module = type { i32, %struct.list_head, [60 x i8], %struct.module_kobject, ptr, ptr, ptr, ptr, ptr, ptr, i32, %struct.mutex, ptr, i32, i32, ptr, ptr, i8, i8, i32, ptr, ptr, [48 x i8], %struct.module_layout, %struct.module_layout, %struct.mod_arch_specific, i32, i32, %struct.list_head, ptr, ptr, %struct.mod_kallsyms, ptr, ptr, ptr, ptr, i32, ptr, i32, i32, ptr, i32, ptr, i32, ptr, ptr, i32, ptr, i32, %struct.list_head, %struct.list_head, ptr, %struct.atomic_t, [40 x i8] }
%struct.module_kobject = type { %struct.kobject, ptr, ptr, ptr, ptr }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.module_layout = type { ptr, i32, i32, i32, i32, %struct.mod_tree_node }
%struct.mod_tree_node = type { ptr, %struct.latch_tree_node }
%struct.latch_tree_node = type { [2 x %struct.rb_node] }
%struct.rb_node = type { i32, ptr, ptr }
%struct.mod_arch_specific = type { [7 x ptr], %struct.mod_plt_sec, %struct.mod_plt_sec }
%struct.mod_plt_sec = type { ptr, ptr, i32 }
%struct.mod_kallsyms = type { ptr, i32, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.atomic_t = type { i32 }
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
%struct.ctl_table_header = type { %union.anon.35, ptr, ptr, ptr, ptr, ptr, ptr, %struct.hlist_head }
%union.anon.35 = type { %struct.anon.36 }
%struct.anon.36 = type { ptr, i32, i32, i32 }
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
%struct.netns_ipv6 = type { %struct.dst_ops, %struct.netns_sysctl_ipv6, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.timer_list, ptr, ptr, %struct.list_head, %struct.rwlock_t, %struct.spinlock, i32, i32, i8, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, i32, %struct.anon.99, ptr, [60 x i8] }
%struct.dst_ops = type { i16, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [60 x i8], %struct.percpu_counter, [32 x i8] }
%struct.percpu_counter = type { %struct.raw_spinlock, i64, %struct.list_head, ptr }
%struct.netns_sysctl_ipv6 = type { ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i8, i32, i8, i8, i8, [8 x i32], ptr, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i8, i8 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32 }
%struct.hlist_node = type { ptr, ptr }
%struct.rwlock_t = type { %struct.arch_rwlock_t }
%struct.arch_rwlock_t = type { i32 }
%struct.anon.99 = type { %struct.hlist_head, %struct.spinlock, i32 }
%struct.netns_bpf = type { [2 x ptr], [2 x ptr], [2 x %struct.list_head] }
%struct.netns_xfrm = type { %struct.list_head, ptr, ptr, ptr, ptr, i32, i32, %struct.work_struct, %struct.list_head, ptr, i32, [3 x %struct.hlist_head], [3 x %struct.xfrm_policy_hash], [6 x i32], %struct.work_struct, %struct.xfrm_policy_hthresh, %struct.list_head, ptr, ptr, i32, i32, i32, i32, i8, ptr, [36 x i8], %struct.dst_ops, %struct.dst_ops, %struct.spinlock, %struct.seqcount_spinlock, %struct.seqcount_spinlock, %struct.spinlock, %struct.mutex, [28 x i8] }
%struct.xfrm_policy_hash = type { ptr, i32, i8, i8, i8, i8 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.xfrm_policy_hthresh = type { %struct.work_struct, %struct.seqlock_t, i8, i8, i8, i8 }
%struct.netns_can = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.spinlock, %struct.timer_list, ptr, ptr, %struct.hlist_head }
%struct.xfrm_state = type { %struct.possible_net_t, %union.anon.78, %struct.hlist_node, %struct.hlist_node, %struct.hlist_node, %struct.refcount_struct, %struct.spinlock, %struct.xfrm_id, %struct.xfrm_selector, %struct.xfrm_mark, i32, i32, i32, %struct.xfrm_state_walk, %struct.anon.79, %struct.xfrm_lifetime_cfg, ptr, ptr, ptr, ptr, ptr, i16, i32, i32, ptr, ptr, ptr, ptr, %struct.atomic_t, %struct.xfrm_replay_state, ptr, %struct.xfrm_replay_state, ptr, i32, i32, i32, i32, %struct.timer_list, %struct.xfrm_stats, %struct.xfrm_lifetime_cur, %struct.hrtimer, %struct.xfrm_state_offload, i32, i64, %struct.page_frag, ptr, %struct.xfrm_mode, %struct.xfrm_mode, %struct.xfrm_mode, ptr, ptr, ptr }
%struct.possible_net_t = type {}
%union.anon.78 = type { %struct.hlist_node }
%struct.xfrm_id = type { %union.xfrm_address_t, i32, i8 }
%union.xfrm_address_t = type { [4 x i32] }
%struct.xfrm_selector = type { %union.xfrm_address_t, %union.xfrm_address_t, i16, i16, i16, i16, i16, i8, i8, i8, i32, i32 }
%struct.xfrm_mark = type { i32, i32 }
%struct.xfrm_state_walk = type { %struct.list_head, i8, i8, i8, i32, ptr }
%struct.anon.79 = type { i32, i8, i8, i8, i8, i8, i8, i16, %union.xfrm_address_t, i32, i32, i32, %struct.xfrm_mark }
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
%struct.ah_data = type { i32, i32, ptr }
%struct.xfrm_algo_auth = type { [64 x i8], i32, i32, [0 x i8] }
%struct.xfrm_algo_desc = type { ptr, ptr, i8, %union.anon.149, %struct.sadb_alg }
%union.anon.149 = type { %struct.xfrm_algo_aead_info }
%struct.xfrm_algo_aead_info = type { ptr, i16 }
%struct.sadb_alg = type { i8, i8, i16, i16, i16 }
%struct.xfrm_algo_auth_info = type { i16, i16 }
%struct.crypto_ahash = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, [28 x i8], %struct.crypto_tfm }
%struct.crypto_tfm = type { i32, i32, ptr, ptr, [48 x i8], [0 x ptr] }
%struct.sk_buff = type { %union.anon.48, %union.anon.51, %union.anon.52, [48 x i8], %union.anon.53, i32, i32, i16, i16, i16, [0 x i8], i8, i8, %union.anon.55, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon.48 = type { %struct.anon.49 }
%struct.anon.49 = type { ptr, ptr, %union.anon.50 }
%union.anon.50 = type { ptr }
%union.anon.51 = type { ptr }
%union.anon.52 = type { i64 }
%union.anon.53 = type { %struct.anon.54 }
%struct.anon.54 = type { i32, ptr }
%union.anon.55 = type { %struct.anon.56 }
%struct.anon.56 = type { [0 x i8], i16, [0 x i8], i16, %union.anon.57, i32, i32, i32, i16, i16, %union.anon.59, %union.anon.60, %union.anon.61, i16, i16, i16, i16, i16, i16, i16 }
%union.anon.57 = type { i32 }
%union.anon.59 = type { i32 }
%union.anon.60 = type { i32 }
%union.anon.61 = type { i16 }
%struct.skb_shared_info = type { i8, i8, i8, i8, i16, i16, ptr, %struct.skb_shared_hwtstamps, i32, i32, %struct.atomic_t, ptr, [17 x %struct.bio_vec] }
%struct.skb_shared_hwtstamps = type { i64 }
%struct.bio_vec = type { ptr, i32, i32 }
%struct.ip_auth_hdr = type { i8, i8, i16, i32, i32, [0 x i8] }
%struct.crypto_alg = type { %struct.list_head, %struct.list_head, i32, i32, i32, i32, i32, %struct.refcount_struct, [128 x i8], [128 x i8], ptr, %union.anon.146, ptr, ptr, ptr, ptr, [48 x i8] }
%union.anon.146 = type { %struct.cipher_alg }
%struct.cipher_alg = type { i32, i32, ptr, ptr, ptr }
%struct.crypto_async_request = type { %struct.list_head, ptr, ptr, ptr, i32 }
%struct.ahash_request = type { %struct.crypto_async_request, i32, ptr, ptr, ptr, [24 x i8], [0 x ptr] }
%struct.scatterlist = type { i32, i32, i32, i32, i32 }
%struct.ipv6hdr = type { i8, [3 x i8], i16, i8, i8, %struct.in6_addr, %struct.in6_addr }
%struct.in6_addr = type { %union.anon.69 }
%union.anon.69 = type { [4 x i32] }
%struct.page = type { i32, %union.anon.1, %union.anon.125, %struct.atomic_t }
%union.anon.1 = type { %struct.anon }
%struct.anon = type { %struct.list_head, ptr, i32, i32 }
%union.anon.125 = type { %struct.atomic_t }
%struct.ipv6_opt_hdr = type { i8, i8 }
%struct.ipv6_destopt_hao = type <{ i8, i8, %struct.in6_addr }>
%struct.ipv6_rt_hdr = type { i8, i8, i8, i8 }
%struct.rt0_hdr = type { %struct.ipv6_rt_hdr, i32, [0 x %struct.in6_addr] }
%struct.skb_ext = type { %struct.refcount_struct, [1 x i8], i8, [2 x i8], [0 x i8] }
%struct.sec_path = type { i32, i32, [6 x ptr], [1 x %struct.xfrm_offload] }
%struct.xfrm_offload = type { %struct.anon.156, i32, i32, i8, i8 }
%struct.anon.156 = type { i32, i32 }
%struct.dst_entry = type { ptr, ptr, i32, i32, ptr, ptr, ptr, i16, i16, i16, i16, i32, i32, ptr, %struct.callback_head, i16, i16, i32, %struct.atomic_t, %struct.netdevice_tracker }
%struct.callback_head = type { ptr, ptr }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon.131, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, i32, i32, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [8 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, %struct.possible_net_t, ptr, i32, %union.anon.145, %struct.device, [4 x ptr], ptr, ptr, i32, i16, i16, [16 x %struct.netdev_tc_txq], [16 x i8], ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], %struct.netdevice_tracker, %struct.netdevice_tracker, [48 x i8] }
%struct.anon.131 = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%union.anon.145 = type { ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.netdev_tc_txq = type { i16, i16 }
%struct.bpf_xdp_entity = type { ptr, ptr }

@__UNIQUE_ID_license523 = internal constant [12 x i8] c"license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_alias524 = internal constant [22 x i8] c"alias=xfrm-type-10-51\00", section ".modinfo", align 1
@ah6_type = internal constant %struct.xfrm_type { ptr @__this_module, i8 51, i8 2, ptr @ah6_init_state, ptr @ah6_destroy, ptr @ah6_input, ptr @ah6_output, ptr null }, align 4
@.str = private unnamed_addr constant [33 x i8] c"\016IPv6: %s: can't add xfrm type\0A\00", align 1
@__func__.ah6_init = private unnamed_addr constant [9 x i8] c"ah6_init\00", align 1
@ah6_protocol = internal global %struct.xfrm6_protocol { ptr @xfrm6_rcv, ptr @xfrm_input, ptr @ah6_rcv_cb, ptr @ah6_err, ptr null, i32 0 }, align 4
@.str.1 = private unnamed_addr constant [32 x i8] c"\016IPv6: %s: can't add protocol\0A\00", align 1
@__this_module = external dso_local global %struct.module, align 64
@.str.2 = private unnamed_addr constant [36 x i8] c"\016IPv6: AH: %s digestsize %u != %u\0A\00", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@.str.3 = private unnamed_addr constant [48 x i8] c"\014IPv6: destopt hao: invalid header length: %u\0A\00", align 1
@mem_map = external dso_local local_unnamed_addr global ptr, align 4
@init_net = external dso_local global %struct.net, align 64
@.str.5 = private unnamed_addr constant [35 x i8] c"\016IPv6: %s: can't remove protocol\0A\00", align 1
@__func__.ah6_fini = private unnamed_addr constant [9 x i8] c"ah6_fini\00", align 1
@llvm.compiler.used = appending global [2 x ptr] [ptr @__UNIQUE_ID_alias524, ptr @__UNIQUE_ID_license523], section "llvm.metadata"

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local i32 @init_module() local_unnamed_addr #0 section ".init.text" {
  %1 = tail call i32 @xfrm_register_type(ptr noundef nonnull @ah6_type, i16 noundef zeroext 10) #11
  %2 = icmp slt i32 %1, 0
  br i1 %2, label %3, label %5

3:                                                ; preds = %0
  %4 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.ah6_init) #12
  br label %10

5:                                                ; preds = %0
  %6 = tail call i32 @xfrm6_protocol_register(ptr noundef nonnull @ah6_protocol, i8 noundef zeroext 51) #11
  %7 = icmp slt i32 %6, 0
  br i1 %7, label %8, label %10

8:                                                ; preds = %5
  %9 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.ah6_init) #12
  tail call void @xfrm_unregister_type(ptr noundef nonnull @ah6_type, i16 noundef zeroext 10) #11
  br label %10

10:                                               ; preds = %8, %5, %3
  %11 = phi i32 [ -11, %3 ], [ -11, %8 ], [ 0, %5 ]
  ret i32 %11
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local void @cleanup_module() local_unnamed_addr #0 section ".exit.text" {
  %1 = tail call i32 @xfrm6_protocol_deregister(ptr noundef nonnull @ah6_protocol, i8 noundef zeroext 51) #11
  %2 = icmp slt i32 %1, 0
  br i1 %2, label %3, label %5

3:                                                ; preds = %0
  %4 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, ptr noundef nonnull @__func__.ah6_fini) #12
  br label %5

5:                                                ; preds = %3, %0
  tail call void @xfrm_unregister_type(ptr noundef nonnull @ah6_type, i16 noundef zeroext 10) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xfrm_register_type(ptr noundef, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xfrm6_protocol_register(ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @xfrm_unregister_type(ptr noundef, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ah6_init_state(ptr nocapture noundef %0) #3 {
  %2 = getelementptr inbounds %struct.xfrm_state, ptr %0, i32 0, i32 16
  %3 = load ptr, ptr %2, align 8
  %4 = icmp eq ptr %3, null
  br i1 %4, label %66, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.xfrm_state, ptr %0, i32 0, i32 24
  %7 = load ptr, ptr %6, align 8
  %8 = icmp eq ptr %7, null
  br i1 %8, label %9, label %66

9:                                                ; preds = %5
  %10 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %11 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %10, i32 noundef 3520, i32 noundef 12) #13
  %12 = icmp eq ptr %11, null
  br i1 %12, label %66, label %13

13:                                               ; preds = %9
  %14 = load ptr, ptr %2, align 8
  %15 = tail call ptr @crypto_alloc_ahash(ptr noundef %14, i32 noundef 0, i32 noundef 0) #11
  %16 = icmp ugt ptr %15, inttoptr (i32 -4096 to ptr)
  %17 = getelementptr inbounds %struct.ah_data, ptr %11, i32 0, i32 2
  br i1 %16, label %18, label %20

18:                                               ; preds = %13
  %19 = load ptr, ptr %17, align 8
  br label %63

20:                                               ; preds = %13
  store ptr %15, ptr %17, align 8
  %21 = load ptr, ptr %2, align 8
  %22 = getelementptr inbounds %struct.xfrm_algo_auth, ptr %21, i32 0, i32 3
  %23 = getelementptr inbounds %struct.xfrm_algo_auth, ptr %21, i32 0, i32 1
  %24 = load i32, ptr %23, align 4
  %25 = add i32 %24, 7
  %26 = lshr i32 %25, 3
  %27 = tail call i32 @crypto_ahash_setkey(ptr noundef %15, ptr noundef %22, i32 noundef %26) #11
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %63

29:                                               ; preds = %20
  %30 = load ptr, ptr %2, align 8
  %31 = tail call ptr @xfrm_aalg_get_byname(ptr noundef %30, i32 noundef 0) #11
  %32 = icmp eq ptr %31, null
  br i1 %32, label %33, label %34, !prof !8

33:                                               ; preds = %29
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22net/ipv6/ah6.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 701, 0\0A.popsection", ""() #11, !srcloc !9
  unreachable

34:                                               ; preds = %29
  %35 = getelementptr inbounds %struct.xfrm_algo_desc, ptr %31, i32 0, i32 3
  %36 = getelementptr inbounds %struct.xfrm_algo_auth_info, ptr %35, i32 0, i32 1
  %37 = load i16, ptr %36, align 2
  %38 = lshr i16 %37, 3
  %39 = zext i16 %38 to i32
  %40 = getelementptr inbounds %struct.crypto_ahash, ptr %15, i32 0, i32 10, i32 3
  %41 = load ptr, ptr %40, align 4
  %42 = getelementptr i8, ptr %41, i32 -64
  %43 = load i32, ptr %42, align 64
  %44 = icmp eq i32 %43, %39
  br i1 %44, label %48, label %45

45:                                               ; preds = %34
  %46 = load ptr, ptr %2, align 8
  %47 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, ptr noundef %46, i32 noundef %43, i32 noundef %39) #12
  br label %63

48:                                               ; preds = %34
  store i32 %39, ptr %11, align 8
  %49 = load ptr, ptr %2, align 8
  %50 = getelementptr inbounds %struct.xfrm_algo_auth, ptr %49, i32 0, i32 2
  %51 = load i32, ptr %50, align 4
  %52 = lshr i32 %51, 3
  %53 = getelementptr inbounds %struct.ah_data, ptr %11, i32 0, i32 1
  store i32 %52, ptr %53, align 4
  %54 = add nuw nsw i32 %52, 19
  %55 = and i32 %54, 1073741816
  %56 = getelementptr inbounds %struct.xfrm_state, ptr %0, i32 0, i32 14, i32 9
  store i32 %55, ptr %56, align 4
  %57 = getelementptr inbounds %struct.xfrm_state, ptr %0, i32 0, i32 14, i32 1
  %58 = load i8, ptr %57, align 4
  switch i8 %58, label %63 [
    i8 4, label %61
    i8 0, label %61
    i8 1, label %59
  ]

59:                                               ; preds = %48
  %60 = add nuw nsw i32 %55, 40
  store i32 %60, ptr %56, align 4
  br label %61

61:                                               ; preds = %59, %48, %48
  %62 = getelementptr inbounds %struct.xfrm_state, ptr %0, i32 0, i32 51
  store ptr %11, ptr %62, align 8
  br label %66

63:                                               ; preds = %48, %45, %20, %18
  %64 = phi ptr [ %19, %18 ], [ %15, %20 ], [ %15, %45 ], [ %15, %48 ]
  %65 = getelementptr inbounds %struct.crypto_ahash, ptr %64, i32 0, i32 10
  tail call void @crypto_destroy_tfm(ptr noundef %64, ptr noundef %65) #11
  tail call void @kfree(ptr noundef nonnull %11) #11
  br label %66

66:                                               ; preds = %63, %61, %9, %5, %1
  %67 = phi i32 [ 0, %61 ], [ -12, %9 ], [ -22, %63 ], [ -22, %5 ], [ -22, %1 ]
  ret i32 %67
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @ah6_destroy(ptr nocapture noundef readonly %0) #3 {
  %2 = getelementptr inbounds %struct.xfrm_state, ptr %0, i32 0, i32 51
  %3 = load ptr, ptr %2, align 8
  %4 = icmp eq ptr %3, null
  br i1 %4, label %9, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.ah_data, ptr %3, i32 0, i32 2
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.crypto_ahash, ptr %7, i32 0, i32 10
  tail call void @crypto_destroy_tfm(ptr noundef %7, ptr noundef %8) #11
  tail call void @kfree(ptr noundef nonnull %3) #11
  br label %9

9:                                                ; preds = %5, %1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ah6_input(ptr nocapture noundef readonly %0, ptr noundef %1) #3 {
  %3 = alloca ptr, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #11
  store ptr null, ptr %3, align 4, !annotation !10
  %4 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 5
  %5 = load i32, ptr %4, align 8
  %6 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 6
  %7 = load i32, ptr %6, align 4
  %8 = sub i32 %5, %7
  %9 = icmp ult i32 %8, 12
  br i1 %9, label %10, label %16, !prof !8

10:                                               ; preds = %2
  %11 = icmp ult i32 %5, 12
  br i1 %11, label %231, label %12, !prof !8

12:                                               ; preds = %10
  %13 = sub nuw nsw i32 12, %8
  %14 = tail call ptr @__pskb_pull_tail(ptr noundef %1, i32 noundef %13) #11
  %15 = icmp eq ptr %14, null
  br i1 %15, label %231, label %16

16:                                               ; preds = %12, %2
  %17 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 11
  %18 = load i8, ptr %17, align 2
  %19 = and i8 %18, 1
  %20 = icmp eq i8 %19, 0
  br i1 %20, label %31, label %21

21:                                               ; preds = %16
  %22 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 15
  %23 = load ptr, ptr %22, align 4
  %24 = getelementptr inbounds %struct.skb_shared_info, ptr %23, i32 0, i32 10
  %25 = load volatile i32, ptr %24, align 4
  %26 = and i32 %25, 65535
  %27 = icmp eq i32 %26, 1
  br i1 %27, label %31, label %28

28:                                               ; preds = %21
  %29 = tail call i32 @pskb_expand_head(ptr noundef %1, i32 noundef 0, i32 noundef 0, i32 noundef 2592) #11
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %31, label %231

31:                                               ; preds = %28, %21, %16
  %32 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 13
  %33 = load i16, ptr %32, align 8
  %34 = and i16 %33, -97
  store i16 %34, ptr %32, align 8
  %35 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 13, i32 0, i32 17
  %36 = load i16, ptr %35, align 2
  %37 = zext i16 %36 to i32
  %38 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 13, i32 0, i32 18
  %39 = load i16, ptr %38, align 4
  %40 = zext i16 %39 to i32
  %41 = sub nsw i32 %37, %40
  %42 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 17
  %43 = load ptr, ptr %42, align 4
  %44 = getelementptr inbounds %struct.xfrm_state, ptr %0, i32 0, i32 51
  %45 = load ptr, ptr %44, align 8
  %46 = getelementptr inbounds %struct.ah_data, ptr %45, i32 0, i32 2
  %47 = load ptr, ptr %46, align 4
  %48 = load i8, ptr %43, align 4
  %49 = zext i8 %48 to i32
  %50 = getelementptr inbounds %struct.ip_auth_hdr, ptr %43, i32 0, i32 1
  %51 = load i8, ptr %50, align 1
  %52 = zext i8 %51 to i32
  %53 = shl nuw nsw i32 %52, 2
  %54 = add nuw nsw i32 %53, 8
  %55 = load i32, ptr %45, align 4
  %56 = add i32 %55, 19
  %57 = and i32 %56, -8
  %58 = icmp eq i32 %54, %57
  br i1 %58, label %65, label %59

59:                                               ; preds = %31
  %60 = getelementptr inbounds %struct.ah_data, ptr %45, i32 0, i32 1
  %61 = load i32, ptr %60, align 4
  %62 = add i32 %61, 19
  %63 = and i32 %62, -8
  %64 = icmp eq i32 %54, %63
  br i1 %64, label %65, label %231

65:                                               ; preds = %59, %31
  %66 = load i32, ptr %4, align 8
  %67 = load i32, ptr %6, align 4
  %68 = sub i32 %66, %67
  %69 = icmp ugt i32 %54, %68
  br i1 %69, label %70, label %76, !prof !8

70:                                               ; preds = %65
  %71 = icmp ult i32 %66, %54
  br i1 %71, label %231, label %72, !prof !8

72:                                               ; preds = %70
  %73 = sub i32 %54, %68
  %74 = tail call ptr @__pskb_pull_tail(ptr noundef %1, i32 noundef %73) #11
  %75 = icmp eq ptr %74, null
  br i1 %75, label %231, label %76

76:                                               ; preds = %72, %65
  %77 = call i32 @skb_cow_data(ptr noundef %1, i32 noundef 0, ptr noundef nonnull %3) #11
  %78 = icmp slt i32 %77, 0
  br i1 %78, label %231, label %79

79:                                               ; preds = %76
  %80 = load ptr, ptr %42, align 4
  %81 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 16
  %82 = load ptr, ptr %81, align 8
  %83 = load i16, ptr %38, align 4
  %84 = zext i16 %83 to i32
  %85 = getelementptr i8, ptr %82, i32 %84
  %86 = and i32 %41, 65535
  %87 = call ptr @skb_push(ptr noundef %1, i32 noundef %86) #11
  %88 = getelementptr inbounds %struct.xfrm_state, ptr %0, i32 0, i32 14, i32 6
  %89 = load i8, ptr %88, align 1
  %90 = lshr i8 %89, 5
  %91 = and i8 %90, 4
  %92 = zext i8 %91 to i32
  %93 = lshr i8 %89, 7
  %94 = zext i8 %93 to i32
  %95 = add nuw i32 %77, %94
  %96 = getelementptr inbounds %struct.ah_data, ptr %45, i32 0, i32 1
  %97 = getelementptr inbounds %struct.crypto_ahash, ptr %47, i32 0, i32 10, i32 3
  %98 = getelementptr inbounds %struct.crypto_ahash, ptr %47, i32 0, i32 8
  %99 = load i32, ptr %98, align 32
  %100 = add i32 %99, 67
  %101 = add nuw nsw i32 %86, 63
  %102 = load i32, ptr %96, align 4
  %103 = add i32 %101, %102
  %104 = add i32 %103, %92
  %105 = load ptr, ptr %97, align 4
  %106 = getelementptr i8, ptr %105, i32 -64
  %107 = load i32, ptr %106, align 64
  %108 = add i32 %104, %107
  %109 = getelementptr inbounds %struct.crypto_alg, ptr %105, i32 0, i32 5
  %110 = load i32, ptr %109, align 4
  %111 = and i32 %110, -64
  %112 = add i32 %108, %111
  %113 = and i32 %112, -64
  %114 = add i32 %100, %113
  %115 = and i32 %114, -4
  %116 = mul i32 %95, 20
  %117 = add i32 %115, %116
  %118 = call noalias align 64 ptr @__kmalloc(i32 noundef %117, i32 noundef 2592) #14
  %119 = icmp eq ptr %118, null
  br i1 %119, label %231, label %120

120:                                              ; preds = %79
  %121 = load ptr, ptr %97, align 4
  %122 = getelementptr i8, ptr %121, i32 -64
  %123 = load i32, ptr %122, align 64
  %124 = getelementptr inbounds %struct.crypto_alg, ptr %121, i32 0, i32 5
  %125 = load i32, ptr %124, align 4
  %126 = load i32, ptr %96, align 4
  %127 = getelementptr i8, ptr %118, i32 %86
  %128 = getelementptr i8, ptr %127, i32 %126
  %129 = getelementptr i8, ptr %128, i32 %92
  %130 = ptrtoint ptr %129 to i32
  %131 = add i32 %125, %130
  %132 = xor i32 %125, -1
  %133 = and i32 %131, %132
  %134 = inttoptr i32 %133 to ptr
  %135 = getelementptr i8, ptr %134, i32 %123
  %136 = ptrtoint ptr %135 to i32
  %137 = add i32 %136, 63
  %138 = and i32 %137, -64
  %139 = inttoptr i32 %138 to ptr
  %140 = getelementptr inbounds %struct.crypto_ahash, ptr %47, i32 0, i32 10
  %141 = getelementptr inbounds %struct.crypto_async_request, ptr %139, i32 0, i32 3
  store ptr %140, ptr %141, align 16
  %142 = getelementptr %struct.ahash_request, ptr %139, i32 1
  %143 = ptrtoint ptr %142 to i32
  %144 = load i32, ptr %98, align 32
  %145 = add i32 %144, 3
  %146 = add i32 %145, %143
  %147 = and i32 %146, -4
  %148 = inttoptr i32 %147 to ptr
  %149 = getelementptr %struct.scatterlist, ptr %148, i32 %77
  call void @llvm.memcpy.p0.p0.i32(ptr nonnull align 64 %118, ptr align 4 %85, i32 %86, i1 false)
  %150 = getelementptr inbounds %struct.ip_auth_hdr, ptr %80, i32 0, i32 5
  %151 = load i32, ptr %96, align 4
  call void @llvm.memcpy.p0.p0.i32(ptr align 1 %127, ptr align 4 %150, i32 %151, i1 false)
  %152 = load i32, ptr %96, align 4
  call void @llvm.memset.p0.i32(ptr align 4 %150, i8 0, i32 %152, i1 false)
  %153 = call fastcc i32 @ipv6_clear_mutable_options(ptr noundef %85, i32 noundef %86, i32 noundef 0)
  %154 = icmp eq i32 %153, 0
  br i1 %154, label %155, label %229

155:                                              ; preds = %120
  %156 = load i8, ptr %85, align 4
  %157 = and i8 %156, -16
  store i8 %157, ptr %85, align 4
  %158 = getelementptr inbounds %struct.ipv6hdr, ptr %85, i32 0, i32 1
  store i8 0, ptr %158, align 1
  %159 = getelementptr %struct.ipv6hdr, ptr %85, i32 0, i32 1, i32 1
  store i8 0, ptr %159, align 1
  %160 = getelementptr %struct.ipv6hdr, ptr %85, i32 0, i32 1, i32 2
  store i8 0, ptr %160, align 1
  %161 = getelementptr inbounds %struct.ipv6hdr, ptr %85, i32 0, i32 4
  store i8 0, ptr %161, align 1
  call void @sg_init_table(ptr noundef %148, i32 noundef %95) #11
  %162 = load i32, ptr %4, align 8
  %163 = call i32 @skb_to_sgvec_nomark(ptr noundef %1, ptr noundef %148, i32 noundef 0, i32 noundef %162) #11
  %164 = icmp slt i32 %163, 0
  br i1 %164, label %229, label %165, !prof !8

165:                                              ; preds = %155
  %166 = load i8, ptr %88, align 1
  %167 = icmp sgt i8 %166, -1
  br i1 %167, label %187, label %168

168:                                              ; preds = %165
  %169 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 3, i32 32
  %170 = load i32, ptr %169, align 4
  store i32 %170, ptr %128, align 4
  %171 = load ptr, ptr @mem_map, align 4
  %172 = ptrtoint ptr %128 to i32
  %173 = add i32 %172, 1073741824
  %174 = lshr i32 %173, 12
  %175 = getelementptr %struct.page, ptr %171, i32 %174
  %176 = ptrtoint ptr %175 to i32
  %177 = and i32 %176, 3
  %178 = icmp eq i32 %177, 0
  br i1 %178, label %180, label %179, !prof !11

179:                                              ; preds = %168
  call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 112, 0\0A.popsection", ""() #11, !srcloc !12
  unreachable

180:                                              ; preds = %168
  %181 = and i32 %172, 4095
  %182 = load i32, ptr %149, align 4
  %183 = and i32 %182, 3
  %184 = or i32 %183, %176
  store i32 %184, ptr %149, align 4
  %185 = getelementptr %struct.scatterlist, ptr %148, i32 %77, i32 1
  store i32 %181, ptr %185, align 4
  %186 = getelementptr %struct.scatterlist, ptr %148, i32 %77, i32 2
  store i32 %92, ptr %186, align 4
  br label %187

187:                                              ; preds = %180, %165
  %188 = load i32, ptr %4, align 8
  %189 = add i32 %188, %92
  %190 = getelementptr inbounds %struct.ahash_request, ptr %139, i32 0, i32 2
  store ptr %148, ptr %190, align 4
  %191 = getelementptr inbounds %struct.ahash_request, ptr %139, i32 0, i32 1
  store i32 %189, ptr %191, align 8
  %192 = getelementptr inbounds %struct.ahash_request, ptr %139, i32 0, i32 3
  store ptr %134, ptr %192, align 32
  %193 = getelementptr inbounds %struct.crypto_async_request, ptr %139, i32 0, i32 1
  store ptr @ah6_input_done, ptr %193, align 8
  %194 = getelementptr inbounds %struct.crypto_async_request, ptr %139, i32 0, i32 2
  store ptr %1, ptr %194, align 4
  %195 = getelementptr inbounds %struct.crypto_async_request, ptr %139, i32 0, i32 4
  store i32 0, ptr %195, align 4
  %196 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 3, i32 36
  store ptr %118, ptr %196, align 4
  %197 = call i32 @crypto_ahash_digest(ptr noundef %139) #11
  switch i32 %197, label %229 [
    i32 0, label %198
    i32 -115, label %231
  ]

198:                                              ; preds = %187
  %199 = load i32, ptr %96, align 4
  %200 = call i32 @__crypto_memneq(ptr noundef %134, ptr noundef %127, i32 noundef %199) #11
  %201 = icmp eq i32 %200, 0
  br i1 %201, label %202, label %229

202:                                              ; preds = %198
  %203 = load i16, ptr %38, align 4
  %204 = trunc i32 %54 to i16
  %205 = add i16 %203, %204
  store i16 %205, ptr %38, align 4
  %206 = load ptr, ptr %81, align 8
  %207 = zext i16 %205 to i32
  %208 = getelementptr i8, ptr %206, i32 %207
  call void @llvm.memcpy.p0.p0.i32(ptr align 1 %208, ptr nonnull align 64 %118, i32 %86, i1 false)
  %209 = add nuw nsw i32 %54, %86
  %210 = load i32, ptr %4, align 8
  %211 = sub i32 %210, %209
  store i32 %211, ptr %4, align 8
  %212 = load i32, ptr %6, align 4
  %213 = icmp ult i32 %211, %212
  br i1 %213, label %214, label %215, !prof !8

214:                                              ; preds = %202
  call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/skbuff.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2398, 0\0A.popsection", ""() #11, !srcloc !13
  unreachable

215:                                              ; preds = %202
  %216 = load ptr, ptr %42, align 4
  %217 = getelementptr i8, ptr %216, i32 %209
  store ptr %217, ptr %42, align 4
  %218 = getelementptr inbounds %struct.xfrm_state, ptr %0, i32 0, i32 14, i32 1
  %219 = load i8, ptr %218, align 4
  %220 = icmp eq i8 %219, 1
  %221 = load ptr, ptr %81, align 8
  %222 = ptrtoint ptr %217 to i32
  %223 = ptrtoint ptr %221 to i32
  %224 = sub i32 %222, %223
  %225 = trunc i32 %224 to i16
  %226 = trunc i32 %41 to i16
  %227 = select i1 %220, i16 0, i16 %226
  %228 = sub i16 %225, %227
  store i16 %228, ptr %35, align 2
  br label %229

229:                                              ; preds = %215, %198, %187, %155, %120
  %230 = phi i32 [ %153, %120 ], [ %163, %155 ], [ -74, %198 ], [ %197, %187 ], [ %49, %215 ]
  call void @kfree(ptr noundef nonnull %118) #11
  br label %231

231:                                              ; preds = %229, %187, %79, %76, %72, %70, %59, %28, %12, %10
  %232 = phi i32 [ -12, %28 ], [ -12, %59 ], [ %77, %76 ], [ %230, %229 ], [ -12, %72 ], [ -12, %12 ], [ -12, %79 ], [ %197, %187 ], [ -12, %10 ], [ -12, %70 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #11
  ret i32 %232
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ah6_output(ptr nocapture noundef readonly %0, ptr noundef %1) #3 {
  %3 = alloca ptr, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #11
  store ptr null, ptr %3, align 4, !annotation !10
  %4 = getelementptr inbounds %struct.xfrm_state, ptr %0, i32 0, i32 51
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.ah_data, ptr %5, i32 0, i32 2
  %7 = load ptr, ptr %6, align 4
  %8 = call i32 @skb_cow_data(ptr noundef %1, i32 noundef 0, ptr noundef nonnull %3) #11
  %9 = icmp slt i32 %8, 0
  br i1 %9, label %189, label %10

10:                                               ; preds = %2
  %11 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 16
  %12 = load ptr, ptr %11, align 8
  %13 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 13, i32 0, i32 18
  %14 = load i16, ptr %13, align 4
  %15 = zext i16 %14 to i32
  %16 = getelementptr i8, ptr %12, i32 %15
  %17 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 17
  %18 = load ptr, ptr %17, align 4
  %19 = ptrtoint ptr %16 to i32
  %20 = ptrtoint ptr %18 to i32
  %21 = sub i32 %20, %19
  %22 = call ptr @skb_push(ptr noundef %1, i32 noundef %21) #11
  %23 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 13, i32 0, i32 17
  %24 = load i16, ptr %23, align 2
  %25 = zext i16 %24 to i32
  %26 = load i16, ptr %13, align 4
  %27 = zext i16 %26 to i32
  %28 = sub nsw i32 %25, %27
  %29 = icmp eq i32 %28, 40
  %30 = add nsw i32 %28, -8
  %31 = select i1 %29, i32 0, i32 %30
  %32 = getelementptr inbounds %struct.xfrm_state, ptr %0, i32 0, i32 14, i32 6
  %33 = load i8, ptr %32, align 1
  %34 = lshr i8 %33, 5
  %35 = and i8 %34, 4
  %36 = zext i8 %35 to i32
  %37 = lshr i8 %33, 7
  %38 = zext i8 %37 to i32
  %39 = add nuw i32 %8, %38
  %40 = add nsw i32 %31, 8
  %41 = getelementptr inbounds %struct.crypto_ahash, ptr %7, i32 0, i32 10, i32 3
  %42 = getelementptr inbounds %struct.crypto_ahash, ptr %7, i32 0, i32 8
  %43 = load i32, ptr %42, align 32
  %44 = add i32 %43, 67
  %45 = load ptr, ptr %41, align 4
  %46 = getelementptr i8, ptr %45, i32 -64
  %47 = load i32, ptr %46, align 64
  %48 = add i32 %47, 63
  %49 = add i32 %48, %36
  %50 = add i32 %49, %40
  %51 = getelementptr inbounds %struct.crypto_alg, ptr %45, i32 0, i32 5
  %52 = load i32, ptr %51, align 4
  %53 = and i32 %52, -64
  %54 = add i32 %50, %53
  %55 = and i32 %54, -64
  %56 = add i32 %44, %55
  %57 = and i32 %56, -4
  %58 = mul i32 %39, 20
  %59 = add i32 %57, %58
  %60 = call noalias align 64 ptr @__kmalloc(i32 noundef %59, i32 noundef 2592) #14
  %61 = icmp eq ptr %60, null
  br i1 %61, label %189, label %62

62:                                               ; preds = %10
  %63 = load ptr, ptr %41, align 4
  %64 = getelementptr i8, ptr %63, i32 -64
  %65 = load i32, ptr %64, align 64
  %66 = getelementptr inbounds %struct.crypto_alg, ptr %63, i32 0, i32 5
  %67 = load i32, ptr %66, align 4
  %68 = getelementptr i8, ptr %60, i32 8
  %69 = getelementptr i8, ptr %68, i32 %31
  %70 = getelementptr i8, ptr %69, i32 %36
  %71 = ptrtoint ptr %70 to i32
  %72 = add i32 %67, %71
  %73 = xor i32 %67, -1
  %74 = and i32 %72, %73
  %75 = inttoptr i32 %74 to ptr
  %76 = getelementptr i8, ptr %75, i32 %65
  %77 = ptrtoint ptr %76 to i32
  %78 = add i32 %77, 63
  %79 = and i32 %78, -64
  %80 = inttoptr i32 %79 to ptr
  %81 = getelementptr inbounds %struct.crypto_ahash, ptr %7, i32 0, i32 10
  %82 = getelementptr inbounds %struct.crypto_async_request, ptr %80, i32 0, i32 3
  store ptr %81, ptr %82, align 16
  %83 = getelementptr %struct.ahash_request, ptr %80, i32 1
  %84 = ptrtoint ptr %83 to i32
  %85 = load i32, ptr %42, align 32
  %86 = add i32 %85, 3
  %87 = add i32 %86, %84
  %88 = and i32 %87, -4
  %89 = inttoptr i32 %88 to ptr
  %90 = getelementptr %struct.scatterlist, ptr %89, i32 %8
  %91 = load ptr, ptr %11, align 8
  %92 = load i16, ptr %23, align 2
  %93 = zext i16 %92 to i32
  %94 = getelementptr i8, ptr %91, i32 %93
  %95 = getelementptr inbounds %struct.ip_auth_hdr, ptr %94, i32 0, i32 5
  %96 = getelementptr inbounds %struct.ah_data, ptr %5, i32 0, i32 1
  %97 = load i32, ptr %96, align 4
  call void @llvm.memset.p0.i32(ptr align 4 %95, i8 0, i32 %97, i1 false)
  %98 = load ptr, ptr %11, align 8
  %99 = load i16, ptr %13, align 4
  %100 = zext i16 %99 to i32
  %101 = getelementptr i8, ptr %98, i32 %100
  %102 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 5
  %103 = load i32, ptr %102, align 8
  %104 = trunc i32 %103 to i16
  %105 = add i16 %104, -40
  %106 = call i16 @llvm.bswap.i16(i16 %105)
  %107 = getelementptr inbounds %struct.ipv6hdr, ptr %101, i32 0, i32 2
  store i16 %106, ptr %107, align 4
  %108 = load ptr, ptr %11, align 8
  %109 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 13, i32 0, i32 19
  %110 = load i16, ptr %109, align 2
  %111 = zext i16 %110 to i32
  %112 = getelementptr i8, ptr %108, i32 %111
  %113 = load i8, ptr %112, align 1
  store i8 51, ptr %112, align 1
  %114 = load i64, ptr %101, align 4
  store i64 %114, ptr %60, align 64
  %115 = icmp eq i32 %31, 0
  br i1 %115, label %120, label %116

116:                                              ; preds = %62
  %117 = getelementptr inbounds %struct.ipv6hdr, ptr %101, i32 0, i32 5
  call void @llvm.memcpy.p0.p0.i32(ptr align 8 %68, ptr align 4 %117, i32 %31, i1 false)
  %118 = call fastcc i32 @ipv6_clear_mutable_options(ptr noundef %101, i32 noundef %40, i32 noundef 1)
  %119 = icmp eq i32 %118, 0
  br i1 %119, label %120, label %187

120:                                              ; preds = %116, %62
  store i8 %113, ptr %94, align 4
  %121 = load i8, ptr %101, align 4
  %122 = and i8 %121, -16
  store i8 %122, ptr %101, align 4
  %123 = getelementptr inbounds %struct.ipv6hdr, ptr %101, i32 0, i32 1
  store i8 0, ptr %123, align 1
  %124 = getelementptr %struct.ipv6hdr, ptr %101, i32 0, i32 1, i32 1
  store i8 0, ptr %124, align 1
  %125 = getelementptr %struct.ipv6hdr, ptr %101, i32 0, i32 1, i32 2
  store i8 0, ptr %125, align 1
  %126 = getelementptr inbounds %struct.ipv6hdr, ptr %101, i32 0, i32 4
  store i8 0, ptr %126, align 1
  %127 = load i32, ptr %96, align 4
  %128 = add i32 %127, 19
  %129 = lshr i32 %128, 2
  %130 = trunc i32 %129 to i8
  %131 = add i8 %130, -2
  %132 = and i8 %131, -2
  %133 = getelementptr inbounds %struct.ip_auth_hdr, ptr %94, i32 0, i32 1
  store i8 %132, ptr %133, align 1
  %134 = getelementptr inbounds %struct.ip_auth_hdr, ptr %94, i32 0, i32 2
  store i16 0, ptr %134, align 2
  %135 = getelementptr inbounds %struct.xfrm_state, ptr %0, i32 0, i32 7, i32 1
  %136 = load i32, ptr %135, align 8
  %137 = getelementptr inbounds %struct.ip_auth_hdr, ptr %94, i32 0, i32 3
  store i32 %136, ptr %137, align 4
  %138 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 3, i32 28
  %139 = load i32, ptr %138, align 4
  %140 = call i32 @llvm.bswap.i32(i32 %139)
  %141 = getelementptr inbounds %struct.ip_auth_hdr, ptr %94, i32 0, i32 4
  store i32 %140, ptr %141, align 4
  call void @sg_init_table(ptr noundef %89, i32 noundef %39) #11
  %142 = load i32, ptr %102, align 8
  %143 = call i32 @skb_to_sgvec_nomark(ptr noundef %1, ptr noundef %89, i32 noundef 0, i32 noundef %142) #11
  %144 = icmp slt i32 %143, 0
  br i1 %144, label %187, label %145, !prof !8

145:                                              ; preds = %120
  %146 = load i8, ptr %32, align 1
  %147 = icmp sgt i8 %146, -1
  br i1 %147, label %168, label %148

148:                                              ; preds = %145
  %149 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 3, i32 32
  %150 = load i32, ptr %149, align 4
  %151 = call i32 @llvm.bswap.i32(i32 %150)
  store i32 %151, ptr %69, align 4
  %152 = load ptr, ptr @mem_map, align 4
  %153 = ptrtoint ptr %69 to i32
  %154 = add i32 %153, 1073741824
  %155 = lshr i32 %154, 12
  %156 = getelementptr %struct.page, ptr %152, i32 %155
  %157 = ptrtoint ptr %156 to i32
  %158 = and i32 %157, 3
  %159 = icmp eq i32 %158, 0
  br i1 %159, label %161, label %160, !prof !11

160:                                              ; preds = %148
  call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 112, 0\0A.popsection", ""() #11, !srcloc !12
  unreachable

161:                                              ; preds = %148
  %162 = and i32 %153, 4095
  %163 = load i32, ptr %90, align 4
  %164 = and i32 %163, 3
  %165 = or i32 %164, %157
  store i32 %165, ptr %90, align 4
  %166 = getelementptr %struct.scatterlist, ptr %89, i32 %8, i32 1
  store i32 %162, ptr %166, align 4
  %167 = getelementptr %struct.scatterlist, ptr %89, i32 %8, i32 2
  store i32 %36, ptr %167, align 4
  br label %168

168:                                              ; preds = %161, %145
  %169 = load i32, ptr %102, align 8
  %170 = add i32 %169, %36
  %171 = getelementptr inbounds %struct.ahash_request, ptr %80, i32 0, i32 2
  store ptr %89, ptr %171, align 4
  %172 = getelementptr inbounds %struct.ahash_request, ptr %80, i32 0, i32 1
  store i32 %170, ptr %172, align 8
  %173 = getelementptr inbounds %struct.ahash_request, ptr %80, i32 0, i32 3
  store ptr %75, ptr %173, align 32
  %174 = getelementptr inbounds %struct.crypto_async_request, ptr %80, i32 0, i32 1
  store ptr @ah6_output_done, ptr %174, align 8
  %175 = getelementptr inbounds %struct.crypto_async_request, ptr %80, i32 0, i32 2
  store ptr %1, ptr %175, align 4
  %176 = getelementptr inbounds %struct.crypto_async_request, ptr %80, i32 0, i32 4
  store i32 0, ptr %176, align 4
  %177 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 3, i32 36
  store ptr %60, ptr %177, align 4
  %178 = call i32 @crypto_ahash_digest(ptr noundef %80) #11
  switch i32 %178, label %179 [
    i32 0, label %182
    i32 -115, label %189
  ]

179:                                              ; preds = %168
  %180 = icmp eq i32 %178, -28
  %181 = select i1 %180, i32 1, i32 %178
  br label %187

182:                                              ; preds = %168
  %183 = load i32, ptr %96, align 4
  call void @llvm.memcpy.p0.p0.i32(ptr align 4 %95, ptr align 1 %75, i32 %183, i1 false)
  %184 = load i64, ptr %60, align 64
  store i64 %184, ptr %101, align 4
  br i1 %115, label %187, label %185

185:                                              ; preds = %182
  %186 = getelementptr inbounds %struct.ipv6hdr, ptr %101, i32 0, i32 5
  call void @llvm.memcpy.p0.p0.i32(ptr align 4 %186, ptr align 8 %68, i32 %31, i1 false)
  br label %187

187:                                              ; preds = %185, %182, %179, %120, %116
  %188 = phi i32 [ %118, %116 ], [ %143, %120 ], [ %181, %179 ], [ 0, %185 ], [ 0, %182 ]
  call void @kfree(ptr noundef nonnull %60) #11
  br label %189

189:                                              ; preds = %187, %168, %10, %2
  %190 = phi i32 [ %8, %2 ], [ %188, %187 ], [ -12, %10 ], [ %178, %168 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #11
  ret i32 %190
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @crypto_alloc_ahash(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crypto_ahash_setkey(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @xfrm_aalg_get_byname(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @crypto_destroy_tfm(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @skb_cow_data(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_push(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #7

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #8

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @ipv6_clear_mutable_options(ptr noundef %0, i32 noundef %1, i32 noundef %2) unnamed_addr #3 {
  %4 = alloca [4 x i32], align 4
  %5 = alloca [4 x i32], align 4
  %6 = getelementptr i8, ptr %0, i32 %1
  %7 = getelementptr %struct.ipv6hdr, ptr %0, i32 1
  %8 = icmp ult ptr %7, %6
  br i1 %8, label %9, label %120

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.ipv6hdr, ptr %0, i32 0, i32 3
  %11 = getelementptr inbounds %struct.ipv6hdr, ptr %0, i32 0, i32 6
  %12 = icmp eq i32 %2, 1
  %13 = getelementptr inbounds %struct.ipv6hdr, ptr %0, i32 0, i32 5
  br label %14

14:                                               ; preds = %112, %9
  %15 = phi ptr [ %10, %9 ], [ %16, %112 ]
  %16 = phi ptr [ %7, %9 ], [ %118, %112 ]
  %17 = load i8, ptr %15, align 1
  switch i8 %17, label %120 [
    i8 60, label %18
    i8 0, label %59
    i8 43, label %93
  ]

18:                                               ; preds = %14
  br i1 %12, label %19, label %59

19:                                               ; preds = %18
  %20 = getelementptr inbounds %struct.ipv6_opt_hdr, ptr %16, i32 0, i32 1
  %21 = load i8, ptr %20, align 1
  %22 = zext i8 %21 to i32
  %23 = shl nuw nsw i32 %22, 3
  %24 = or i32 %23, 6
  br label %25

25:                                               ; preds = %54, %19
  %26 = phi i32 [ 2, %19 ], [ %56, %54 ]
  %27 = phi i32 [ %24, %19 ], [ %57, %54 ]
  %28 = getelementptr i8, ptr %16, i32 %26
  %29 = load i8, ptr %28, align 1
  %30 = icmp eq i8 %29, 0
  br i1 %30, label %54, label %31

31:                                               ; preds = %25
  %32 = icmp slt i32 %27, 2
  br i1 %32, label %59, label %33

33:                                               ; preds = %31
  %34 = add i32 %26, 1
  %35 = getelementptr i8, ptr %16, i32 %34
  %36 = load i8, ptr %35, align 1
  %37 = zext i8 %36 to i32
  %38 = add nuw nsw i32 %37, 2
  %39 = icmp ult i32 %27, %38
  br i1 %39, label %59, label %40

40:                                               ; preds = %33
  %41 = icmp eq i8 %29, -55
  br i1 %41, label %42, label %54

42:                                               ; preds = %40
  %43 = icmp eq i8 %36, 16
  br i1 %43, label %52, label %44

44:                                               ; preds = %42
  %45 = tail call i32 @net_ratelimit() #11
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %59, label %47

47:                                               ; preds = %44
  %48 = getelementptr inbounds %struct.ipv6_destopt_hao, ptr %28, i32 0, i32 1
  %49 = load i8, ptr %48, align 1
  %50 = zext i8 %49 to i32
  %51 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, i32 noundef %50) #12
  br label %59

52:                                               ; preds = %42
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5)
  %53 = getelementptr inbounds %struct.ipv6_destopt_hao, ptr %28, i32 0, i32 2
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 4 dereferenceable(16) %5, ptr noundef align 1 dereferenceable(16) %53, i32 16, i1 false) #11
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(16) %53, ptr noundef align 4 dereferenceable(16) %13, i32 16, i1 false) #11
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(16) %13, ptr noundef nonnull align 4 dereferenceable(16) %5, i32 16, i1 false) #11
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5)
  br label %54

54:                                               ; preds = %52, %40, %25
  %55 = phi i32 [ %38, %52 ], [ %38, %40 ], [ 1, %25 ]
  %56 = add i32 %55, %26
  %57 = sub i32 %27, %55
  %58 = icmp sgt i32 %57, 0
  br i1 %58, label %25, label %59

59:                                               ; preds = %54, %47, %44, %33, %31, %18, %14
  %60 = getelementptr inbounds %struct.ipv6_opt_hdr, ptr %16, i32 0, i32 1
  %61 = load i8, ptr %60, align 1
  %62 = zext i8 %61 to i32
  %63 = shl nuw nsw i32 %62, 3
  %64 = or i32 %63, 6
  br label %65

65:                                               ; preds = %86, %59
  %66 = phi i32 [ 2, %59 ], [ %88, %86 ]
  %67 = phi i32 [ %64, %59 ], [ %89, %86 ]
  %68 = getelementptr i8, ptr %16, i32 %66
  %69 = load i8, ptr %68, align 1
  %70 = icmp eq i8 %69, 0
  br i1 %70, label %86, label %71

71:                                               ; preds = %65
  %72 = icmp ult i32 %67, 2
  br i1 %72, label %120, label %73

73:                                               ; preds = %71
  %74 = add i32 %66, 1
  %75 = getelementptr i8, ptr %16, i32 %74
  %76 = load i8, ptr %75, align 1
  %77 = zext i8 %76 to i32
  %78 = add nuw nsw i32 %77, 2
  %79 = icmp ult i32 %67, %78
  br i1 %79, label %120, label %80

80:                                               ; preds = %73
  %81 = and i8 %69, 32
  %82 = icmp eq i8 %81, 0
  br i1 %82, label %86, label %83

83:                                               ; preds = %80
  %84 = add i32 %66, 2
  %85 = getelementptr i8, ptr %16, i32 %84
  tail call void @llvm.memset.p0.i32(ptr align 1 %85, i8 0, i32 %77, i1 false) #11
  br label %86

86:                                               ; preds = %83, %80, %65
  %87 = phi i32 [ %78, %83 ], [ %78, %80 ], [ 1, %65 ]
  %88 = add i32 %87, %66
  %89 = sub i32 %67, %87
  %90 = icmp sgt i32 %89, 0
  br i1 %90, label %65, label %91

91:                                               ; preds = %86
  %92 = icmp eq i32 %89, 0
  br i1 %92, label %112, label %120

93:                                               ; preds = %14
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4)
  %94 = getelementptr inbounds %struct.ipv6_rt_hdr, ptr %16, i32 0, i32 3
  %95 = load i8, ptr %94, align 1
  %96 = icmp eq i8 %95, 0
  br i1 %96, label %111, label %97

97:                                               ; preds = %93
  %98 = zext i8 %95 to i32
  store i8 0, ptr %94, align 1
  %99 = getelementptr inbounds %struct.ipv6_rt_hdr, ptr %16, i32 0, i32 1
  %100 = load i8, ptr %99, align 1
  %101 = lshr i8 %100, 1
  %102 = zext i8 %101 to i32
  %103 = getelementptr inbounds %struct.rt0_hdr, ptr %16, i32 0, i32 2
  %104 = add nsw i32 %102, -1
  %105 = getelementptr %struct.in6_addr, ptr %103, i32 %104
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 4 dereferenceable(16) %4, ptr noundef align 4 dereferenceable(16) %105, i32 16, i1 false) #11
  %106 = sub nsw i32 %102, %98
  %107 = getelementptr %struct.in6_addr, ptr %103, i32 %106
  %108 = getelementptr %struct.in6_addr, ptr %107, i32 1
  %109 = shl nuw nsw i32 %98, 4
  %110 = add nsw i32 %109, -16
  tail call void @llvm.memmove.p0.p0.i32(ptr align 4 %108, ptr align 4 %107, i32 %110, i1 false) #11
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(16) %107, ptr noundef align 4 dereferenceable(16) %11, i32 16, i1 false) #11
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(16) %11, ptr noundef nonnull align 4 dereferenceable(16) %4, i32 16, i1 false) #11
  br label %111

111:                                              ; preds = %97, %93
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4)
  br label %112

112:                                              ; preds = %111, %91
  %113 = getelementptr inbounds %struct.ipv6_opt_hdr, ptr %16, i32 0, i32 1
  %114 = load i8, ptr %113, align 1
  %115 = zext i8 %114 to i32
  %116 = shl nuw nsw i32 %115, 3
  %117 = add nuw nsw i32 %116, 8
  %118 = getelementptr i8, ptr %16, i32 %117
  %119 = icmp ult ptr %118, %6
  br i1 %119, label %14, label %120

120:                                              ; preds = %112, %91, %73, %71, %14, %3
  %121 = phi i32 [ 0, %3 ], [ -22, %71 ], [ -22, %73 ], [ 0, %14 ], [ 0, %112 ], [ -22, %91 ]
  ret i32 %121
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @sg_init_table(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @skb_to_sgvec_nomark(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @ah6_input_done(ptr nocapture noundef readonly %0, i32 noundef %1) #3 {
  %3 = getelementptr inbounds %struct.crypto_async_request, ptr %0, i32 0, i32 2
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.sk_buff, ptr %4, i32 0, i32 12
  %6 = load i8, ptr %5, align 1
  %7 = and i8 %6, 1
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %17, label %9

9:                                                ; preds = %2
  %10 = getelementptr inbounds %struct.sk_buff, ptr %4, i32 0, i32 20
  %11 = load ptr, ptr %10, align 8
  %12 = getelementptr inbounds %struct.skb_ext, ptr %11, i32 0, i32 1
  %13 = load i8, ptr %12, align 1
  %14 = zext i8 %13 to i32
  %15 = shl nuw nsw i32 %14, 3
  %16 = getelementptr i8, ptr %11, i32 %15
  br label %17

17:                                               ; preds = %9, %2
  %18 = phi ptr [ %16, %9 ], [ null, %2 ]
  %19 = load i32, ptr %18, align 4
  %20 = add i32 %19, -1
  %21 = getelementptr %struct.sec_path, ptr %18, i32 0, i32 2, i32 %20
  %22 = load ptr, ptr %21, align 4
  %23 = getelementptr inbounds %struct.sk_buff, ptr %4, i32 0, i32 16
  %24 = load ptr, ptr %23, align 8
  %25 = getelementptr inbounds %struct.sk_buff, ptr %4, i32 0, i32 13, i32 0, i32 17
  %26 = load i16, ptr %25, align 2
  %27 = zext i16 %26 to i32
  %28 = getelementptr i8, ptr %24, i32 %27
  %29 = getelementptr inbounds %struct.sk_buff, ptr %4, i32 0, i32 13, i32 0, i32 18
  %30 = load i16, ptr %29, align 4
  %31 = zext i16 %30 to i32
  %32 = sub nsw i32 %27, %31
  %33 = getelementptr inbounds %struct.ip_auth_hdr, ptr %28, i32 0, i32 1
  %34 = load i8, ptr %33, align 1
  %35 = zext i8 %34 to i32
  %36 = shl nuw nsw i32 %35, 2
  %37 = add nuw nsw i32 %36, 8
  %38 = icmp eq i32 %1, 0
  br i1 %38, label %39, label %93

39:                                               ; preds = %17
  %40 = getelementptr inbounds %struct.xfrm_state, ptr %22, i32 0, i32 51
  %41 = load ptr, ptr %40, align 8
  %42 = getelementptr inbounds %struct.sk_buff, ptr %4, i32 0, i32 3, i32 36
  %43 = load ptr, ptr %42, align 4
  %44 = getelementptr i8, ptr %43, i32 %32
  %45 = getelementptr inbounds %struct.ah_data, ptr %41, i32 0, i32 2
  %46 = load ptr, ptr %45, align 4
  %47 = getelementptr inbounds %struct.ah_data, ptr %41, i32 0, i32 1
  %48 = load i32, ptr %47, align 4
  %49 = getelementptr i8, ptr %44, i32 %48
  %50 = ptrtoint ptr %49 to i32
  %51 = getelementptr inbounds %struct.crypto_ahash, ptr %46, i32 0, i32 10, i32 3
  %52 = load ptr, ptr %51, align 4
  %53 = getelementptr inbounds %struct.crypto_alg, ptr %52, i32 0, i32 5
  %54 = load i32, ptr %53, align 4
  %55 = add i32 %54, %50
  %56 = xor i32 %54, -1
  %57 = and i32 %55, %56
  %58 = inttoptr i32 %57 to ptr
  %59 = tail call i32 @__crypto_memneq(ptr noundef %58, ptr noundef %44, i32 noundef %48) #11
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %61, label %93

61:                                               ; preds = %39
  %62 = load i8, ptr %28, align 4
  %63 = load i16, ptr %29, align 4
  %64 = trunc i32 %37 to i16
  %65 = add i16 %63, %64
  store i16 %65, ptr %29, align 4
  %66 = load ptr, ptr %23, align 8
  %67 = zext i16 %65 to i32
  %68 = getelementptr i8, ptr %66, i32 %67
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 1 %68, ptr align 1 %43, i32 %32, i1 false)
  %69 = add nsw i32 %37, %32
  %70 = getelementptr inbounds %struct.sk_buff, ptr %4, i32 0, i32 5
  %71 = load i32, ptr %70, align 8
  %72 = sub i32 %71, %69
  store i32 %72, ptr %70, align 8
  %73 = getelementptr inbounds %struct.sk_buff, ptr %4, i32 0, i32 6
  %74 = load i32, ptr %73, align 4
  %75 = icmp ult i32 %72, %74
  br i1 %75, label %76, label %77, !prof !8

76:                                               ; preds = %61
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/skbuff.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2398, 0\0A.popsection", ""() #11, !srcloc !13
  unreachable

77:                                               ; preds = %61
  %78 = zext i8 %62 to i32
  %79 = getelementptr inbounds %struct.sk_buff, ptr %4, i32 0, i32 17
  %80 = load ptr, ptr %79, align 4
  %81 = getelementptr i8, ptr %80, i32 %69
  store ptr %81, ptr %79, align 4
  %82 = getelementptr inbounds %struct.xfrm_state, ptr %22, i32 0, i32 14, i32 1
  %83 = load i8, ptr %82, align 4
  %84 = icmp eq i8 %83, 1
  %85 = load ptr, ptr %23, align 8
  %86 = ptrtoint ptr %81 to i32
  %87 = ptrtoint ptr %85 to i32
  %88 = sub i32 %86, %87
  %89 = trunc i32 %88 to i16
  %90 = trunc i32 %32 to i16
  %91 = select i1 %84, i16 0, i16 %90
  %92 = sub i16 %89, %91
  store i16 %92, ptr %25, align 2
  br label %93

93:                                               ; preds = %77, %39, %17
  %94 = phi i32 [ %1, %17 ], [ -74, %39 ], [ %78, %77 ]
  %95 = getelementptr inbounds %struct.sk_buff, ptr %4, i32 0, i32 3, i32 36
  %96 = load ptr, ptr %95, align 4
  tail call void @kfree(ptr noundef %96) #11
  %97 = tail call i32 @xfrm_input_resume(ptr noundef %4, i32 noundef %94) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crypto_ahash_digest(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__pskb_pull_tail(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pskb_expand_head(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @net_ratelimit() local_unnamed_addr #1

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memmove.p0.p0.i32(ptr nocapture writeonly, ptr nocapture readonly, i32, i1 immarg) #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xfrm_input_resume(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__crypto_memneq(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #9

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #9

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @ah6_output_done(ptr nocapture noundef readonly %0, i32 noundef %1) #3 {
  %3 = getelementptr inbounds %struct.crypto_async_request, ptr %0, i32 0, i32 2
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.sk_buff, ptr %4, i32 0, i32 4
  %6 = load i32, ptr %5, align 8
  %7 = and i32 %6, -2
  %8 = inttoptr i32 %7 to ptr
  %9 = getelementptr inbounds %struct.dst_entry, ptr %8, i32 0, i32 4
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr inbounds %struct.xfrm_state, ptr %10, i32 0, i32 51
  %12 = load ptr, ptr %11, align 8
  %13 = getelementptr inbounds %struct.sk_buff, ptr %4, i32 0, i32 16
  %14 = load ptr, ptr %13, align 8
  %15 = getelementptr inbounds %struct.sk_buff, ptr %4, i32 0, i32 13, i32 0, i32 18
  %16 = load i16, ptr %15, align 4
  %17 = zext i16 %16 to i32
  %18 = getelementptr i8, ptr %14, i32 %17
  %19 = getelementptr inbounds %struct.sk_buff, ptr %4, i32 0, i32 13, i32 0, i32 17
  %20 = load i16, ptr %19, align 2
  %21 = zext i16 %20 to i32
  %22 = getelementptr i8, ptr %14, i32 %21
  %23 = sub nsw i32 %21, %17
  %24 = icmp eq i32 %23, 40
  %25 = add nsw i32 %23, -8
  %26 = select i1 %24, i32 0, i32 %25
  %27 = getelementptr inbounds %struct.sk_buff, ptr %4, i32 0, i32 3, i32 36
  %28 = load ptr, ptr %27, align 4
  %29 = getelementptr i8, ptr %28, i32 8
  %30 = getelementptr inbounds %struct.ah_data, ptr %12, i32 0, i32 2
  %31 = load ptr, ptr %30, align 4
  %32 = getelementptr i8, ptr %29, i32 %26
  %33 = ptrtoint ptr %32 to i32
  %34 = getelementptr inbounds %struct.crypto_ahash, ptr %31, i32 0, i32 10, i32 3
  %35 = load ptr, ptr %34, align 4
  %36 = getelementptr inbounds %struct.crypto_alg, ptr %35, i32 0, i32 5
  %37 = load i32, ptr %36, align 4
  %38 = add i32 %37, %33
  %39 = xor i32 %37, -1
  %40 = and i32 %38, %39
  %41 = inttoptr i32 %40 to ptr
  %42 = getelementptr inbounds %struct.ip_auth_hdr, ptr %22, i32 0, i32 5
  %43 = getelementptr inbounds %struct.ah_data, ptr %12, i32 0, i32 1
  %44 = load i32, ptr %43, align 4
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 4 %42, ptr align 1 %41, i32 %44, i1 false)
  %45 = load i64, ptr %28, align 1
  store i64 %45, ptr %18, align 4
  %46 = icmp eq i32 %26, 0
  br i1 %46, label %49, label %47

47:                                               ; preds = %2
  %48 = getelementptr inbounds %struct.ipv6hdr, ptr %18, i32 0, i32 5
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 4 %48, ptr align 4 %29, i32 %26, i1 false)
  br label %49

49:                                               ; preds = %47, %2
  %50 = load ptr, ptr %27, align 4
  tail call void @kfree(ptr noundef %50) #11
  %51 = getelementptr inbounds %struct.sk_buff, ptr %4, i32 0, i32 1
  %52 = load ptr, ptr %51, align 4
  %53 = tail call i32 @xfrm_output_resume(ptr noundef %52, ptr noundef %4, i32 noundef %1) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xfrm_output_resume(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xfrm6_rcv(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xfrm_input(ptr noundef, i32 noundef, i32 noundef, i32 noundef) #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal i32 @ah6_rcv_cb(ptr nocapture noundef readnone %0, i32 noundef %1) #10 {
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ah6_err(ptr noundef %0, ptr nocapture noundef readnone %1, i8 noundef zeroext %2, i8 noundef zeroext %3, i32 noundef %4, i32 noundef %5) #3 {
  %7 = getelementptr inbounds %struct.anon.49, ptr %0, i32 0, i32 2
  switch i8 %2, label %35 [
    i8 -119, label %8
    i8 2, label %8
  ]

8:                                                ; preds = %6, %6
  %9 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 17
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr i8, ptr %10, i32 %4
  %12 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 13, i32 0, i32 11
  %13 = load i32, ptr %12, align 4
  %14 = getelementptr inbounds %struct.ipv6hdr, ptr %10, i32 0, i32 6
  %15 = getelementptr inbounds %struct.ip_auth_hdr, ptr %11, i32 0, i32 3
  %16 = load i32, ptr %15, align 4
  %17 = tail call ptr @xfrm_state_lookup(ptr noundef nonnull @init_net, i32 noundef %13, ptr noundef %14, i32 noundef %16, i8 noundef zeroext 51, i16 noundef zeroext 10) #11
  %18 = icmp eq ptr %17, null
  br i1 %18, label %35, label %19

19:                                               ; preds = %8
  %20 = icmp eq i8 %2, -119
  br i1 %20, label %21, label %25

21:                                               ; preds = %19
  %22 = load ptr, ptr %7, align 8
  %23 = getelementptr inbounds %struct.net_device, ptr %22, i32 0, i32 17
  %24 = load i32, ptr %23, align 4
  tail call void @ip6_redirect(ptr noundef %0, ptr noundef nonnull @init_net, i32 noundef %24, i32 noundef 0, [1 x i32] zeroinitializer) #11
  br label %26

25:                                               ; preds = %19
  tail call void @ip6_update_pmtu(ptr noundef %0, ptr noundef nonnull @init_net, i32 noundef %5, i32 noundef 0, i32 noundef 0, [1 x i32] zeroinitializer) #11
  br label %26

26:                                               ; preds = %25, %21
  %27 = getelementptr inbounds %struct.xfrm_state, ptr %17, i32 0, i32 5
  tail call void asm sideeffect "dmb ish", "~{memory}"() #11, !srcloc !14
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %27) #11, !srcloc !15
  %28 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %27, ptr %27, i32 1, ptr elementtype(i32) %27) #11, !srcloc !16
  %29 = extractvalue { i32, i32, i32 } %28, 0
  %30 = icmp eq i32 %29, 1
  br i1 %30, label %34, label %31

31:                                               ; preds = %26
  %32 = icmp sgt i32 %29, 0
  br i1 %32, label %35, label %33, !prof !11

33:                                               ; preds = %31
  tail call void @refcount_warn_saturate(ptr noundef %27, i32 noundef 3) #11
  br label %35

34:                                               ; preds = %26
  tail call void asm sideeffect "dmb ish", "~{memory}"() #11, !srcloc !17
  tail call void @__xfrm_state_destroy(ptr noundef nonnull %17, i1 noundef zeroext false) #11
  br label %35

35:                                               ; preds = %34, %33, %31, %8, %6
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @xfrm_state_lookup(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ip6_redirect(ptr noundef, ptr noundef, i32 noundef, i32 noundef, [1 x i32]) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ip6_update_pmtu(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, [1 x i32]) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__xfrm_state_destroy(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xfrm6_protocol_deregister(ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #5 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { null_pointer_is_valid allocsize(0) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { argmemonly nofree nounwind willreturn }
attributes #8 = { argmemonly nofree nounwind willreturn writeonly }
attributes #9 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #10 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #11 = { nounwind }
attributes #12 = { cold nounwind }
attributes #13 = { nounwind allocsize(2) }
attributes #14 = { nounwind allocsize(0) }

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
!9 = !{i64 2156602745, i64 2156603224, i64 2156602782, i64 2156602838, i64 2156602872, i64 2156602896, i64 2156602937, i64 2156602958, i64 2156602986, i64 2156603020}
!10 = !{!"auto-init"}
!11 = !{!"branch_weights", i32 2000, i32 1}
!12 = !{i64 2153189150, i64 2153189642, i64 2153189187, i64 2153189243, i64 2153189277, i64 2153189301, i64 2153189342, i64 2153189363, i64 2153189391, i64 2153189425}
!13 = !{i64 2153406062, i64 2153406550, i64 2153406099, i64 2153406155, i64 2153406189, i64 2153406213, i64 2153406254, i64 2153406275, i64 2153406303, i64 2153406337}
!14 = !{i64 2147977093}
!15 = !{i64 300170, i64 2147801736, i64 2147801762, i64 2147801809, i64 2147801831, i64 2147801859, i64 2147801879}
!16 = !{i64 2147879252, i64 2147879284, i64 2147879313, i64 2147879347, i64 2147879378, i64 2147879401}
!17 = !{i64 2148587794}
