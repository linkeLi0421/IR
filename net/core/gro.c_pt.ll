; ModuleID = '/llk/IR/net/core/gro.c_pt.bc'
source_filename = "../net/core/gro.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_dev_add_offload:\09\09\09\09\09"
module asm "\09.asciz \09\22dev_add_offload\22\09\09\09\09\09"
module asm "__kstrtabns_dev_add_offload:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_dev_remove_offload:\09\09\09\09\09"
module asm "\09.asciz \09\22dev_remove_offload\22\09\09\09\09\09"
module asm "__kstrtabns_dev_remove_offload:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_skb_eth_gso_segment:\09\09\09\09\09"
module asm "\09.asciz \09\22skb_eth_gso_segment\22\09\09\09\09\09"
module asm "__kstrtabns_skb_eth_gso_segment:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_skb_mac_gso_segment:\09\09\09\09\09"
module asm "\09.asciz \09\22skb_mac_gso_segment\22\09\09\09\09\09"
module asm "__kstrtabns_skb_mac_gso_segment:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_napi_gro_flush:\09\09\09\09\09"
module asm "\09.asciz \09\22napi_gro_flush\22\09\09\09\09\09"
module asm "__kstrtabns_napi_gro_flush:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_gro_find_receive_by_type:\09\09\09\09\09"
module asm "\09.asciz \09\22gro_find_receive_by_type\22\09\09\09\09\09"
module asm "__kstrtabns_gro_find_receive_by_type:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_gro_find_complete_by_type:\09\09\09\09\09"
module asm "\09.asciz \09\22gro_find_complete_by_type\22\09\09\09\09\09"
module asm "__kstrtabns_gro_find_complete_by_type:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_napi_gro_receive:\09\09\09\09\09"
module asm "\09.asciz \09\22napi_gro_receive\22\09\09\09\09\09"
module asm "__kstrtabns_napi_gro_receive:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_napi_get_frags:\09\09\09\09\09"
module asm "\09.asciz \09\22napi_get_frags\22\09\09\09\09\09"
module asm "__kstrtabns_napi_get_frags:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_napi_gro_frags:\09\09\09\09\09"
module asm "\09.asciz \09\22napi_gro_frags\22\09\09\09\09\09"
module asm "__kstrtabns_napi_gro_frags:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___skb_gro_checksum_complete:\09\09\09\09\09"
module asm "\09.asciz \09\22__skb_gro_checksum_complete\22\09\09\09\09\09"
module asm "__kstrtabns___skb_gro_checksum_complete:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.spinlock = type { %union.anon.7 }
%union.anon.7 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.8 }
%union.anon.8 = type { i32 }
%struct.list_head = type { ptr, ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.tracepoint = type { ptr, %struct.static_key, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.static_key = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.cpumask = type { [1 x i32] }
%struct.packet_offload = type { i16, i16, %struct.offload_callbacks, %struct.list_head }
%struct.offload_callbacks = type { ptr, ptr, ptr }
%struct.sk_buff = type { %union.anon, %union.anon.125, %union.anon.126, [48 x i8], %union.anon.127, i32, i32, i16, i16, i16, [0 x i8], i8, i8, %union.anon.129, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon = type { %struct.anon }
%struct.anon = type { ptr, ptr, %union.anon.0 }
%union.anon.0 = type { ptr }
%union.anon.125 = type { ptr }
%union.anon.126 = type { i64 }
%union.anon.127 = type { %struct.anon.128 }
%struct.anon.128 = type { i32, ptr }
%union.anon.129 = type { %struct.anon.130 }
%struct.anon.130 = type { [0 x i8], i16, [0 x i8], i16, %union.anon.131, i32, i32, i32, i16, i16, %union.anon.133, %union.anon.134, %union.anon.135, i16, i16, i16, i16, i16, i16, i16 }
%union.anon.131 = type { i32 }
%union.anon.133 = type { i32 }
%union.anon.134 = type { i32 }
%union.anon.135 = type { i16 }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon.1, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, i32, i32, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [8 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, %struct.possible_net_t, ptr, i32, %union.anon.124, %struct.device, [4 x ptr], ptr, ptr, i32, i16, i16, [16 x %struct.netdev_tc_txq], [16 x i8], ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], %struct.netdevice_tracker, %struct.netdevice_tracker, [48 x i8] }
%struct.anon.1 = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%struct.rb_root = type { ptr }
%struct.hlist_node = type { ptr, ptr }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32 }
%struct.ref_tracker_dir = type {}
%struct.possible_net_t = type {}
%union.anon.124 = type { ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.netdev_tc_txq = type { i16, i16 }
%struct.bpf_xdp_entity = type { ptr, ptr }
%struct.netdevice_tracker = type {}
%struct.skb_shared_info = type { i8, i8, i8, i8, i16, i16, ptr, %struct.skb_shared_hwtstamps, i32, i32, %struct.atomic_t, ptr, [17 x %struct.bio_vec] }
%struct.skb_shared_hwtstamps = type { i64 }
%struct.bio_vec = type { ptr, i32, i32 }
%struct.page = type { i32, %union.anon.18, %union.anon.101, %struct.atomic_t }
%union.anon.18 = type { %struct.anon.19 }
%struct.anon.19 = type { %struct.list_head, ptr, i32, i32 }
%union.anon.101 = type { %struct.atomic_t }
%struct.napi_struct = type { %struct.list_head, i32, i32, i32, i32, ptr, ptr, [8 x %struct.gro_list], ptr, %struct.list_head, i32, %struct.hrtimer, %struct.list_head, %struct.hlist_node, i32, ptr }
%struct.gro_list = type { %struct.list_head, i32 }
%struct.thread_info = type { i32, i32, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], [4 x i8], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.ethhdr = type { [6 x i8], [6 x i8], i16 }
%struct.metadata_dst = type { %struct.dst_entry, i32, %union.anon.146 }
%struct.dst_entry = type { ptr, ptr, i32, i32, ptr, ptr, ptr, i16, i16, i16, i16, i32, i32, ptr, %struct.callback_head, i16, i16, i32, %struct.atomic_t, %struct.netdevice_tracker }
%struct.callback_head = type { ptr, ptr }
%union.anon.146 = type { %struct.ip_tunnel_info }
%struct.ip_tunnel_info = type { %struct.ip_tunnel_key, %struct.dst_cache, i8, i8 }
%struct.ip_tunnel_key = type { i64, %union.anon.147, i16, i8, i8, i32, i16, i16 }
%union.anon.147 = type { %struct.anon.149 }
%struct.anon.149 = type { %struct.in6_addr, %struct.in6_addr }
%struct.in6_addr = type { %union.anon.54 }
%union.anon.54 = type { [4 x i32] }
%struct.dst_cache = type { ptr, i32 }

@gro_normal_batch = dso_local local_unnamed_addr global i32 8, section ".data..read_mostly", align 4
@offload_lock = internal global %struct.spinlock zeroinitializer, align 4
@offload_base = internal global %struct.list_head { ptr @offload_base, ptr @offload_base }, section ".data..read_mostly", align 4
@__kstrtab_dev_add_offload = external dso_local constant [0 x i8], align 1
@__kstrtabns_dev_add_offload = external dso_local constant [0 x i8], align 1
@__ksymtab_dev_add_offload = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @dev_add_offload to i32), ptr @__kstrtab_dev_add_offload, ptr @__kstrtabns_dev_add_offload }, section "___ksymtab+dev_add_offload", align 4
@__kstrtab_dev_remove_offload = external dso_local constant [0 x i8], align 1
@__kstrtabns_dev_remove_offload = external dso_local constant [0 x i8], align 1
@__ksymtab_dev_remove_offload = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @dev_remove_offload to i32), ptr @__kstrtab_dev_remove_offload, ptr @__kstrtabns_dev_remove_offload }, section "___ksymtab+dev_remove_offload", align 4
@__kstrtab_skb_eth_gso_segment = external dso_local constant [0 x i8], align 1
@__kstrtabns_skb_eth_gso_segment = external dso_local constant [0 x i8], align 1
@__ksymtab_skb_eth_gso_segment = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @skb_eth_gso_segment to i32), ptr @__kstrtab_skb_eth_gso_segment, ptr @__kstrtabns_skb_eth_gso_segment }, section "___ksymtab+skb_eth_gso_segment", align 4
@__kstrtab_skb_mac_gso_segment = external dso_local constant [0 x i8], align 1
@__kstrtabns_skb_mac_gso_segment = external dso_local constant [0 x i8], align 1
@__ksymtab_skb_mac_gso_segment = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @skb_mac_gso_segment to i32), ptr @__kstrtab_skb_mac_gso_segment, ptr @__kstrtabns_skb_mac_gso_segment }, section "___ksymtab+skb_mac_gso_segment", align 4
@__kstrtab_napi_gro_flush = external dso_local constant [0 x i8], align 1
@__kstrtabns_napi_gro_flush = external dso_local constant [0 x i8], align 1
@__ksymtab_napi_gro_flush = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @napi_gro_flush to i32), ptr @__kstrtab_napi_gro_flush, ptr @__kstrtabns_napi_gro_flush }, section "___ksymtab+napi_gro_flush", align 4
@__kstrtab_gro_find_receive_by_type = external dso_local constant [0 x i8], align 1
@__kstrtabns_gro_find_receive_by_type = external dso_local constant [0 x i8], align 1
@__ksymtab_gro_find_receive_by_type = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @gro_find_receive_by_type to i32), ptr @__kstrtab_gro_find_receive_by_type, ptr @__kstrtabns_gro_find_receive_by_type }, section "___ksymtab+gro_find_receive_by_type", align 4
@__kstrtab_gro_find_complete_by_type = external dso_local constant [0 x i8], align 1
@__kstrtabns_gro_find_complete_by_type = external dso_local constant [0 x i8], align 1
@__ksymtab_gro_find_complete_by_type = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @gro_find_complete_by_type to i32), ptr @__kstrtab_gro_find_complete_by_type, ptr @__kstrtabns_gro_find_complete_by_type }, section "___ksymtab+gro_find_complete_by_type", align 4
@__kstrtab_napi_gro_receive = external dso_local constant [0 x i8], align 1
@__kstrtabns_napi_gro_receive = external dso_local constant [0 x i8], align 1
@__ksymtab_napi_gro_receive = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @napi_gro_receive to i32), ptr @__kstrtab_napi_gro_receive, ptr @__kstrtabns_napi_gro_receive }, section "___ksymtab+napi_gro_receive", align 4
@__kstrtab_napi_get_frags = external dso_local constant [0 x i8], align 1
@__kstrtabns_napi_get_frags = external dso_local constant [0 x i8], align 1
@__ksymtab_napi_get_frags = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @napi_get_frags to i32), ptr @__kstrtab_napi_get_frags, ptr @__kstrtabns_napi_get_frags }, section "___ksymtab+napi_get_frags", align 4
@__kstrtab_napi_gro_frags = external dso_local constant [0 x i8], align 1
@__kstrtabns_napi_gro_frags = external dso_local constant [0 x i8], align 1
@__ksymtab_napi_gro_frags = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @napi_gro_frags to i32), ptr @__kstrtab_napi_gro_frags, ptr @__kstrtabns_napi_gro_frags }, section "___ksymtab+napi_gro_frags", align 4
@__kstrtab___skb_gro_checksum_complete = external dso_local constant [0 x i8], align 1
@__kstrtabns___skb_gro_checksum_complete = external dso_local constant [0 x i8], align 1
@__ksymtab___skb_gro_checksum_complete = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__skb_gro_checksum_complete to i32), ptr @__kstrtab___skb_gro_checksum_complete, ptr @__kstrtabns___skb_gro_checksum_complete }, section "___ksymtab+__skb_gro_checksum_complete", align 4
@.str = private unnamed_addr constant [36 x i8] c"\014dev_remove_offload: %p not found\0A\00", align 1
@mem_map = external dso_local local_unnamed_addr global ptr, align 4
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 64
@.str.1 = private unnamed_addr constant [15 x i8] c"net/core/gro.c\00", align 1
@__tracepoint_napi_gro_receive_entry = external dso_local global %struct.tracepoint, align 4
@__cpu_online_mask = external dso_local global %struct.cpumask, align 4
@movable_zone = external dso_local local_unnamed_addr global i32, align 4
@gro_flush_oldest.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@__tracepoint_napi_gro_receive_exit = external dso_local global %struct.tracepoint, align 4
@.str.4 = private unnamed_addr constant [39 x i8] c"\014%s: dropping impossible skb from %s\0A\00", align 1
@__func__.napi_frags_skb = private unnamed_addr constant [15 x i8] c"napi_frags_skb\00", align 1
@__tracepoint_napi_gro_frags_entry = external dso_local global %struct.tracepoint, align 4
@__tracepoint_napi_gro_frags_exit = external dso_local global %struct.tracepoint, align 4
@llvm.compiler.used = appending global [11 x ptr] [ptr @__ksymtab___skb_gro_checksum_complete, ptr @__ksymtab_dev_add_offload, ptr @__ksymtab_dev_remove_offload, ptr @__ksymtab_gro_find_complete_by_type, ptr @__ksymtab_gro_find_receive_by_type, ptr @__ksymtab_napi_get_frags, ptr @__ksymtab_napi_gro_flush, ptr @__ksymtab_napi_gro_frags, ptr @__ksymtab_napi_gro_receive, ptr @__ksymtab_skb_eth_gso_segment, ptr @__ksymtab_skb_mac_gso_segment], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @dev_add_offload(ptr noundef %0) #0 {
  tail call void @_raw_spin_lock(ptr noundef nonnull @offload_lock) #12
  %2 = getelementptr inbounds %struct.packet_offload, ptr %0, i32 0, i32 1
  br label %3

3:                                                ; preds = %7, %1
  %4 = phi ptr [ @offload_base, %1 ], [ %5, %7 ]
  %5 = load ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, @offload_base
  br i1 %6, label %12, label %7

7:                                                ; preds = %3
  %8 = load i16, ptr %2, align 2
  %9 = getelementptr i8, ptr %5, i32 -14
  %10 = load i16, ptr %9, align 2
  %11 = icmp ult i16 %8, %10
  br i1 %11, label %12, label %3

12:                                               ; preds = %7, %3
  %13 = getelementptr inbounds %struct.packet_offload, ptr %0, i32 0, i32 3
  %14 = getelementptr inbounds %struct.list_head, ptr %5, i32 0, i32 1
  %15 = load ptr, ptr %14, align 4
  %16 = load ptr, ptr %15, align 4
  store ptr %16, ptr %13, align 4
  %17 = getelementptr inbounds %struct.packet_offload, ptr %0, i32 0, i32 3, i32 1
  store ptr %15, ptr %17, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #12, !srcloc !8
  store volatile ptr %13, ptr %15, align 4
  %18 = getelementptr inbounds %struct.list_head, ptr %16, i32 0, i32 1
  store ptr %13, ptr %18, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #12, !srcloc !9
  %19 = load i16, ptr @offload_lock, align 4
  %20 = add i16 %19, 1
  store i16 %20, ptr @offload_lock, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #12, !srcloc !10
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #12, !srcloc !11
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !12
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @dev_remove_offload(ptr noundef %0) #0 {
  tail call void @_raw_spin_lock(ptr noundef nonnull @offload_lock) #12
  br label %2

2:                                                ; preds = %6, %1
  %3 = phi ptr [ @offload_base, %1 ], [ %4, %6 ]
  %4 = load ptr, ptr %3, align 4
  %5 = icmp eq ptr %4, @offload_base
  br i1 %5, label %15, label %6

6:                                                ; preds = %2
  %7 = getelementptr i8, ptr %4, i32 -16
  %8 = icmp eq ptr %7, %0
  br i1 %8, label %9, label %2

9:                                                ; preds = %6
  %10 = getelementptr inbounds %struct.packet_offload, ptr %0, i32 0, i32 3
  %11 = getelementptr inbounds %struct.packet_offload, ptr %0, i32 0, i32 3, i32 1
  %12 = load ptr, ptr %11, align 4
  %13 = load ptr, ptr %10, align 4
  %14 = getelementptr inbounds %struct.list_head, ptr %13, i32 0, i32 1
  store ptr %12, ptr %14, align 4
  store volatile ptr %13, ptr %12, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %11, align 4
  br label %17

15:                                               ; preds = %2
  %16 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef %0) #13
  br label %17

17:                                               ; preds = %15, %9
  tail call void asm sideeffect "dmb ish", "~{memory}"() #12, !srcloc !9
  %18 = load i16, ptr @offload_lock, align 4
  %19 = add i16 %18, 1
  store i16 %19, ptr @offload_lock, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #12, !srcloc !10
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #12, !srcloc !11
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !12
  tail call void @synchronize_net() #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @synchronize_net() local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @skb_eth_gso_segment(ptr noundef %0, i64 noundef %1, i16 noundef zeroext %2) #0 {
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !13
  %4 = load volatile ptr, ptr @offload_base, align 4
  %5 = icmp eq ptr %4, @offload_base
  br i1 %5, label %20, label %6

6:                                                ; preds = %17, %3
  %7 = phi ptr [ %18, %17 ], [ %4, %3 ]
  %8 = getelementptr i8, ptr %7, i32 -16
  %9 = load i16, ptr %8, align 4
  %10 = icmp eq i16 %9, %2
  br i1 %10, label %11, label %17

11:                                               ; preds = %6
  %12 = getelementptr i8, ptr %7, i32 -12
  %13 = load ptr, ptr %12, align 4
  %14 = icmp eq ptr %13, null
  br i1 %14, label %17, label %15

15:                                               ; preds = %11
  %16 = tail call ptr %13(ptr noundef %0, i64 noundef %1) #12
  br label %20

17:                                               ; preds = %11, %6
  %18 = load volatile ptr, ptr %7, align 4
  %19 = icmp eq ptr %18, @offload_base
  br i1 %19, label %20, label %6

20:                                               ; preds = %17, %15, %3
  %21 = phi ptr [ %16, %15 ], [ inttoptr (i32 -93 to ptr), %3 ], [ inttoptr (i32 -93 to ptr), %17 ]
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !14
  ret ptr %21
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @skb_mac_gso_segment(ptr noundef %0, i64 noundef %1) #0 {
  %3 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #12
  %4 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 7
  %5 = load i16, ptr %4, align 8
  %6 = zext i16 %5 to i32
  store i32 %6, ptr %3, align 4
  %7 = call zeroext i16 @skb_network_protocol(ptr noundef %0, ptr noundef nonnull %3) #12
  %8 = icmp eq i16 %7, 0
  br i1 %8, label %54, label %9, !prof !15

9:                                                ; preds = %2
  %10 = load i32, ptr %3, align 4
  %11 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 5
  %12 = load i32, ptr %11, align 8
  %13 = sub i32 %12, %10
  store i32 %13, ptr %11, align 8
  %14 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 6
  %15 = load i32, ptr %14, align 4
  %16 = icmp ult i32 %13, %15
  br i1 %16, label %17, label %18, !prof !15

17:                                               ; preds = %9
  call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/skbuff.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2398, 0\0A.popsection", ""() #12, !srcloc !16
  unreachable

18:                                               ; preds = %9
  %19 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 17
  %20 = load ptr, ptr %19, align 4
  %21 = getelementptr i8, ptr %20, i32 %10
  store ptr %21, ptr %19, align 4
  call void asm sideeffect "", "~{memory}"() #12, !srcloc !13
  %22 = load volatile ptr, ptr @offload_base, align 4
  %23 = icmp eq ptr %22, @offload_base
  br i1 %23, label %38, label %24

24:                                               ; preds = %35, %18
  %25 = phi ptr [ %36, %35 ], [ %22, %18 ]
  %26 = getelementptr i8, ptr %25, i32 -16
  %27 = load i16, ptr %26, align 4
  %28 = icmp eq i16 %27, %7
  br i1 %28, label %29, label %35

29:                                               ; preds = %24
  %30 = getelementptr i8, ptr %25, i32 -12
  %31 = load ptr, ptr %30, align 4
  %32 = icmp eq ptr %31, null
  br i1 %32, label %35, label %33

33:                                               ; preds = %29
  %34 = call ptr %31(ptr noundef %0, i64 noundef %1) #12
  br label %38

35:                                               ; preds = %29, %24
  %36 = load volatile ptr, ptr %25, align 4
  %37 = icmp eq ptr %36, @offload_base
  br i1 %37, label %38, label %24

38:                                               ; preds = %35, %33, %18
  %39 = phi ptr [ %34, %33 ], [ inttoptr (i32 -93 to ptr), %18 ], [ inttoptr (i32 -93 to ptr), %35 ]
  call void asm sideeffect "", "~{memory}"() #12, !srcloc !14
  %40 = load ptr, ptr %19, align 4
  %41 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 16
  %42 = load ptr, ptr %41, align 8
  %43 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 13, i32 0, i32 19
  %44 = load i16, ptr %43, align 2
  %45 = zext i16 %44 to i32
  %46 = getelementptr i8, ptr %42, i32 %45
  %47 = ptrtoint ptr %40 to i32
  %48 = ptrtoint ptr %46 to i32
  %49 = sub i32 %47, %48
  %50 = sub i32 0, %49
  %51 = getelementptr i8, ptr %40, i32 %50
  store ptr %51, ptr %19, align 4
  %52 = load i32, ptr %11, align 8
  %53 = add i32 %49, %52
  store i32 %53, ptr %11, align 8
  br label %54

54:                                               ; preds = %38, %2
  %55 = phi ptr [ %39, %38 ], [ inttoptr (i32 -22 to ptr), %2 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #12
  ret ptr %55
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i16 @skb_network_protocol(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @skb_gro_receive(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 15
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 3, i32 8
  %6 = load i32, ptr %5, align 8
  %7 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 5
  %8 = load i32, ptr %7, align 8
  %9 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 6
  %10 = load i32, ptr %9, align 4
  %11 = sub i32 %8, %10
  %12 = sub i32 %8, %6
  %13 = getelementptr inbounds %struct.anon, ptr %0, i32 0, i32 2
  %14 = load ptr, ptr %13, align 8
  %15 = getelementptr inbounds %struct.net_device, ptr %14, i32 0, i32 79
  %16 = load volatile i32, ptr %15, align 4
  %17 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 5
  %18 = load i32, ptr %17, align 8
  %19 = add i32 %18, %12
  %20 = icmp ult i32 %19, %16
  br i1 %20, label %21, label %209, !prof !17

21:                                               ; preds = %2
  %22 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 3, i32 12
  %23 = load i16, ptr %22, align 4
  %24 = icmp eq i16 %23, 0
  br i1 %24, label %25, label %209, !prof !17

25:                                               ; preds = %21
  %26 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 3, i32 32
  %27 = load ptr, ptr %26, align 8
  %28 = getelementptr inbounds %struct.sk_buff, ptr %27, i32 0, i32 15
  %29 = load ptr, ptr %28, align 4
  %30 = icmp ult i32 %6, %11
  br i1 %30, label %79, label %31

31:                                               ; preds = %25
  %32 = getelementptr inbounds %struct.skb_shared_info, ptr %4, i32 0, i32 2
  %33 = load i8, ptr %32, align 2
  %34 = zext i8 %33 to i32
  %35 = getelementptr inbounds %struct.skb_shared_info, ptr %29, i32 0, i32 2
  %36 = load i8, ptr %35, align 2
  %37 = zext i8 %36 to i32
  %38 = add nuw nsw i32 %37, %34
  %39 = icmp ugt i32 %38, 17
  br i1 %39, label %140, label %40

40:                                               ; preds = %31
  %41 = trunc i32 %38 to i8
  store i8 %41, ptr %35, align 2
  store i8 0, ptr %32, align 2
  %42 = getelementptr inbounds %struct.skb_shared_info, ptr %29, i32 0, i32 12
  %43 = getelementptr %struct.bio_vec, ptr %42, i32 %38
  %44 = getelementptr %struct.skb_shared_info, ptr %4, i32 0, i32 12
  %45 = getelementptr %struct.bio_vec, ptr %44, i32 %34
  br label %46

46:                                               ; preds = %46, %40
  %47 = phi ptr [ %43, %40 ], [ %50, %46 ]
  %48 = phi ptr [ %45, %40 ], [ %51, %46 ]
  %49 = phi i32 [ %34, %40 ], [ %52, %46 ]
  %50 = getelementptr %struct.bio_vec, ptr %47, i32 -1
  %51 = getelementptr %struct.bio_vec, ptr %48, i32 -1
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(12) %50, ptr noundef align 4 dereferenceable(12) %51, i32 12, i1 false)
  %52 = add i32 %49, -1
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %54, label %46

54:                                               ; preds = %46
  %55 = sub i32 %6, %11
  %56 = getelementptr %struct.bio_vec, ptr %47, i32 -1, i32 2
  %57 = load i32, ptr %56, align 4
  %58 = add i32 %57, %55
  store i32 %58, ptr %56, align 4
  %59 = getelementptr %struct.bio_vec, ptr %47, i32 -1, i32 1
  %60 = load i32, ptr %59, align 4
  %61 = sub i32 %60, %55
  store i32 %61, ptr %59, align 4
  %62 = load ptr, ptr %3, align 4
  %63 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 16
  %64 = load ptr, ptr %63, align 8
  %65 = ptrtoint ptr %62 to i32
  %66 = ptrtoint ptr %64 to i32
  %67 = sub i32 %65, %66
  %68 = add i32 %67, 448
  %69 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 18
  %70 = load i32, ptr %69, align 8
  %71 = sub i32 %70, %68
  store i32 %68, ptr %69, align 8
  %72 = load i32, ptr %9, align 4
  %73 = load i32, ptr %7, align 8
  %74 = sub i32 %73, %72
  store i32 %74, ptr %7, align 8
  store i32 0, ptr %9, align 4
  %75 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 3, i32 26
  %76 = load i16, ptr %75, align 2
  %77 = and i16 %76, -193
  %78 = or i16 %77, 64
  store i16 %78, ptr %75, align 2
  br label %180

79:                                               ; preds = %25
  %80 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 11
  %81 = load i8, ptr %80, align 2
  %82 = and i8 %81, 32
  %83 = icmp eq i8 %82, 0
  br i1 %83, label %140, label %84

84:                                               ; preds = %79
  %85 = getelementptr inbounds %struct.skb_shared_info, ptr %29, i32 0, i32 2
  %86 = load i8, ptr %85, align 2
  %87 = zext i8 %86 to i32
  %88 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 16
  %89 = load ptr, ptr %88, align 8
  %90 = load ptr, ptr @mem_map, align 4
  %91 = ptrtoint ptr %89 to i32
  %92 = add i32 %91, 1073741824
  %93 = lshr i32 %92, 12
  %94 = getelementptr %struct.page, ptr %90, i32 %93, i32 1
  %95 = load volatile i32, ptr %94, align 4
  %96 = and i32 %95, 1
  %97 = icmp eq i32 %96, 0
  br i1 %97, label %100, label %98, !prof !17

98:                                               ; preds = %84
  %99 = add i32 %95, -1
  br label %103

100:                                              ; preds = %84
  %101 = getelementptr %struct.page, ptr %90, i32 %93
  %102 = ptrtoint ptr %101 to i32
  br label %103

103:                                              ; preds = %100, %98
  %104 = phi i32 [ %99, %98 ], [ %102, %100 ]
  %105 = add nuw nsw i32 %87, 1
  %106 = getelementptr inbounds %struct.skb_shared_info, ptr %4, i32 0, i32 2
  %107 = load i8, ptr %106, align 2
  %108 = zext i8 %107 to i32
  %109 = add nuw nsw i32 %105, %108
  %110 = icmp ugt i32 %109, 17
  br i1 %110, label %140, label %111

111:                                              ; preds = %103
  %112 = inttoptr i32 %104 to ptr
  %113 = sub i32 %11, %6
  %114 = getelementptr inbounds %struct.skb_shared_info, ptr %29, i32 0, i32 12
  %115 = getelementptr %struct.bio_vec, ptr %114, i32 %87
  %116 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 17
  %117 = load ptr, ptr %116, align 4
  %118 = tail call ptr @page_address(ptr noundef %112) #12
  %119 = ptrtoint ptr %117 to i32
  %120 = ptrtoint ptr %118 to i32
  %121 = add i32 %6, %119
  %122 = sub i32 %121, %120
  %123 = load i8, ptr %106, align 2
  %124 = trunc i32 %105 to i8
  %125 = add i8 %123, %124
  store i8 %125, ptr %85, align 2
  store ptr %112, ptr %115, align 4
  %126 = getelementptr %struct.bio_vec, ptr %114, i32 %87, i32 2
  store i32 %122, ptr %126, align 4
  %127 = getelementptr %struct.bio_vec, ptr %114, i32 %87, i32 1
  store i32 %113, ptr %127, align 4
  %128 = getelementptr %struct.bio_vec, ptr %115, i32 1
  %129 = getelementptr inbounds %struct.skb_shared_info, ptr %4, i32 0, i32 12
  %130 = load i8, ptr %106, align 2
  %131 = zext i8 %130 to i32
  %132 = mul nuw nsw i32 %131, 12
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 4 %128, ptr align 8 %129, i32 %132, i1 false)
  %133 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 18
  %134 = load i32, ptr %133, align 8
  %135 = add i32 %134, -192
  store i32 192, ptr %133, align 8
  %136 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 3, i32 26
  %137 = load i16, ptr %136, align 2
  %138 = and i16 %137, -193
  %139 = or i16 %138, 128
  store i16 %139, ptr %136, align 2
  br label %180

140:                                              ; preds = %103, %79, %31
  %141 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 4, i32 0, i32 1
  store ptr null, ptr %141, align 4
  %142 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 18
  %143 = load i32, ptr %142, align 8
  %144 = icmp ugt i32 %6, %11
  br i1 %144, label %145, label %157

145:                                              ; preds = %140
  %146 = sub i32 %6, %11
  %147 = getelementptr inbounds %struct.skb_shared_info, ptr %4, i32 0, i32 12, i32 0, i32 2
  %148 = load i32, ptr %147, align 4
  %149 = add i32 %148, %146
  store i32 %149, ptr %147, align 4
  %150 = getelementptr inbounds %struct.skb_shared_info, ptr %4, i32 0, i32 12, i32 0, i32 1
  %151 = load i32, ptr %150, align 4
  %152 = sub i32 %151, %146
  store i32 %152, ptr %150, align 4
  %153 = load i32, ptr %9, align 4
  %154 = sub i32 %153, %146
  store i32 %154, ptr %9, align 4
  %155 = load i32, ptr %7, align 8
  %156 = sub i32 %155, %6
  br label %157

157:                                              ; preds = %145, %140
  %158 = phi i32 [ %156, %145 ], [ %12, %140 ]
  %159 = phi i32 [ %154, %145 ], [ %10, %140 ]
  %160 = phi i32 [ %11, %145 ], [ %6, %140 ]
  store i32 %158, ptr %7, align 8
  %161 = icmp ult i32 %158, %159
  br i1 %161, label %162, label %163, !prof !15

162:                                              ; preds = %157
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/skbuff.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2398, 0\0A.popsection", ""() #12, !srcloc !16
  unreachable

163:                                              ; preds = %157
  %164 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 17
  %165 = load ptr, ptr %164, align 4
  %166 = getelementptr i8, ptr %165, i32 %160
  store ptr %166, ptr %164, align 4
  %167 = load ptr, ptr %26, align 8
  %168 = icmp eq ptr %167, %0
  br i1 %168, label %169, label %173

169:                                              ; preds = %163
  %170 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 15
  %171 = load ptr, ptr %170, align 4
  %172 = getelementptr inbounds %struct.skb_shared_info, ptr %171, i32 0, i32 6
  br label %173

173:                                              ; preds = %169, %163
  %174 = phi ptr [ %172, %169 ], [ %167, %163 ]
  store ptr %1, ptr %174, align 8
  store ptr %1, ptr %26, align 8
  %175 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 11
  %176 = load i8, ptr %175, align 2
  %177 = or i8 %176, 2
  store i8 %177, ptr %175, align 2
  %178 = load ptr, ptr %3, align 4
  %179 = getelementptr inbounds %struct.skb_shared_info, ptr %178, i32 0, i32 10
  store volatile i32 65537, ptr %179, align 4
  br label %180

180:                                              ; preds = %173, %111, %54
  %181 = phi i32 [ %71, %54 ], [ %143, %173 ], [ %135, %111 ]
  %182 = phi ptr [ %27, %54 ], [ %0, %173 ], [ %27, %111 ]
  %183 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 3, i32 16
  %184 = load i16, ptr %183, align 8
  %185 = add i16 %184, 1
  store i16 %185, ptr %183, align 8
  %186 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 6
  %187 = load i32, ptr %186, align 4
  %188 = add i32 %187, %12
  store i32 %188, ptr %186, align 4
  %189 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 18
  %190 = load i32, ptr %189, align 8
  %191 = add i32 %190, %181
  store i32 %191, ptr %189, align 8
  %192 = load i32, ptr %17, align 8
  %193 = add i32 %192, %12
  store i32 %193, ptr %17, align 8
  %194 = icmp eq ptr %182, %0
  br i1 %194, label %205, label %195

195:                                              ; preds = %180
  %196 = getelementptr inbounds %struct.sk_buff, ptr %182, i32 0, i32 6
  %197 = load i32, ptr %196, align 4
  %198 = add i32 %197, %12
  store i32 %198, ptr %196, align 4
  %199 = getelementptr inbounds %struct.sk_buff, ptr %182, i32 0, i32 18
  %200 = load i32, ptr %199, align 8
  %201 = add i32 %200, %181
  store i32 %201, ptr %199, align 8
  %202 = getelementptr inbounds %struct.sk_buff, ptr %182, i32 0, i32 5
  %203 = load i32, ptr %202, align 8
  %204 = add i32 %203, %12
  store i32 %204, ptr %202, align 8
  br label %205

205:                                              ; preds = %195, %180
  %206 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 3, i32 26
  %207 = load i16, ptr %206, align 2
  %208 = or i16 %207, 1
  store i16 %208, ptr %206, align 2
  br label %209

209:                                              ; preds = %205, %21, %2
  %210 = phi i32 [ 0, %205 ], [ -7, %21 ], [ -7, %2 ]
  ret i32 %210
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @page_address(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @napi_gro_flush(ptr noundef %0, i1 noundef zeroext %1) #0 {
  %3 = getelementptr inbounds %struct.napi_struct, ptr %0, i32 0, i32 4
  %4 = load i32, ptr %3, align 4
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %48, label %6

6:                                                ; preds = %46, %2
  %7 = phi i32 [ %12, %46 ], [ -1, %2 ]
  %8 = phi i32 [ %11, %46 ], [ %4, %2 ]
  %9 = tail call i32 @llvm.cttz.i32(i32 %8, i1 true), !range !18
  %10 = add nuw nsw i32 %9, 1
  %11 = lshr i32 %8, %10
  %12 = add i32 %10, %7
  %13 = getelementptr %struct.napi_struct, ptr %0, i32 0, i32 7, i32 %12
  %14 = getelementptr inbounds %struct.list_head, ptr %13, i32 0, i32 1
  %15 = load ptr, ptr %14, align 4
  %16 = icmp eq ptr %15, %13
  %17 = getelementptr %struct.napi_struct, ptr %0, i32 0, i32 7, i32 %12, i32 1
  br i1 %16, label %18, label %20

18:                                               ; preds = %6
  %19 = load i32, ptr %17, align 4
  br label %35

20:                                               ; preds = %29, %6
  %21 = phi ptr [ %23, %29 ], [ %15, %6 ]
  %22 = getelementptr inbounds %struct.list_head, ptr %21, i32 0, i32 1
  %23 = load ptr, ptr %22, align 4
  br i1 %1, label %24, label %29

24:                                               ; preds = %20
  %25 = getelementptr inbounds %struct.sk_buff, ptr %21, i32 0, i32 3, i32 20
  %26 = load i32, ptr %25, align 4
  %27 = load volatile i32, ptr @jiffies, align 64
  %28 = icmp eq i32 %26, %27
  br i1 %28, label %46, label %29

29:                                               ; preds = %24, %20
  %30 = load ptr, ptr %21, align 4
  %31 = getelementptr inbounds %struct.list_head, ptr %30, i32 0, i32 1
  store ptr %23, ptr %31, align 4
  store volatile ptr %30, ptr %23, align 4
  store ptr null, ptr %21, align 8
  tail call fastcc void @napi_gro_complete(ptr noundef %0, ptr noundef %21) #12
  %32 = load i32, ptr %17, align 4
  %33 = add i32 %32, -1
  store i32 %33, ptr %17, align 4
  %34 = icmp eq ptr %23, %13
  br i1 %34, label %35, label %20

35:                                               ; preds = %29, %18
  %36 = phi i32 [ %19, %18 ], [ %33, %29 ]
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %38, label %46

38:                                               ; preds = %35
  %39 = and i32 %12, 31
  %40 = shl nuw i32 1, %39
  %41 = lshr i32 %12, 5
  %42 = getelementptr i32, ptr %3, i32 %41
  %43 = xor i32 %40, -1
  %44 = load i32, ptr %42, align 4
  %45 = and i32 %44, %43
  store i32 %45, ptr %42, align 4
  br label %46

46:                                               ; preds = %38, %35, %24
  %47 = icmp eq i32 %11, 0
  br i1 %47, label %48, label %6

48:                                               ; preds = %46, %2
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.cttz.i32(i32, i1 immarg) #4

; Function Attrs: nofree norecurse nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @gro_find_receive_by_type(i16 noundef zeroext %0) #5 {
  %2 = load volatile ptr, ptr @offload_base, align 4
  %3 = icmp eq ptr %2, @offload_base
  br i1 %3, label %18, label %4

4:                                                ; preds = %13, %1
  %5 = phi ptr [ %14, %13 ], [ %2, %1 ]
  %6 = getelementptr i8, ptr %5, i32 -16
  %7 = load i16, ptr %6, align 4
  %8 = icmp eq i16 %7, %0
  br i1 %8, label %9, label %13

9:                                                ; preds = %4
  %10 = getelementptr i8, ptr %5, i32 -8
  %11 = load ptr, ptr %10, align 4
  %12 = icmp eq ptr %11, null
  br i1 %12, label %13, label %16

13:                                               ; preds = %9, %4
  %14 = load volatile ptr, ptr %5, align 4
  %15 = icmp eq ptr %14, @offload_base
  br i1 %15, label %18, label %4

16:                                               ; preds = %9
  %17 = getelementptr i8, ptr %5, i32 -16
  br label %18

18:                                               ; preds = %16, %13, %1
  %19 = phi ptr [ null, %1 ], [ %17, %16 ], [ null, %13 ]
  ret ptr %19
}

; Function Attrs: nofree norecurse nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @gro_find_complete_by_type(i16 noundef zeroext %0) #5 {
  %2 = load volatile ptr, ptr @offload_base, align 4
  %3 = icmp eq ptr %2, @offload_base
  br i1 %3, label %18, label %4

4:                                                ; preds = %13, %1
  %5 = phi ptr [ %14, %13 ], [ %2, %1 ]
  %6 = getelementptr i8, ptr %5, i32 -16
  %7 = load i16, ptr %6, align 4
  %8 = icmp eq i16 %7, %0
  br i1 %8, label %9, label %13

9:                                                ; preds = %4
  %10 = getelementptr i8, ptr %5, i32 -4
  %11 = load ptr, ptr %10, align 4
  %12 = icmp eq ptr %11, null
  br i1 %12, label %13, label %16

13:                                               ; preds = %9, %4
  %14 = load volatile ptr, ptr %5, align 4
  %15 = icmp eq ptr %14, @offload_base
  br i1 %15, label %18, label %4

16:                                               ; preds = %9
  %17 = getelementptr i8, ptr %5, i32 -16
  br label %18

18:                                               ; preds = %16, %13, %1
  %19 = phi ptr [ null, %1 ], [ %17, %16 ], [ null, %13 ]
  ret ptr %19
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @napi_gro_receive(ptr noundef %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 13, i32 0, i32 10
  %4 = load i32, ptr %3, align 8
  %5 = icmp ult i32 %4, 17
  br i1 %5, label %6, label %9

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.napi_struct, ptr %0, i32 0, i32 14
  %8 = load i32, ptr %7, align 8
  store i32 %8, ptr %3, align 8
  br label %9

9:                                                ; preds = %6, %2
  %10 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_napi_gro_receive_entry, i32 0, i32 1), align 4
  %11 = icmp sgt i32 %10, 0
  br i1 %11, label %12, label %25

12:                                               ; preds = %9
  %13 = tail call ptr @llvm.thread.pointer() #12
  %14 = getelementptr inbounds %struct.thread_info, ptr %13, i32 0, i32 2
  %15 = load i32, ptr %14, align 8
  %16 = lshr i32 %15, 5
  %17 = getelementptr i32, ptr @__cpu_online_mask, i32 %16
  %18 = load volatile i32, ptr %17, align 4
  %19 = and i32 %15, 31
  %20 = shl nuw i32 1, %19
  %21 = and i32 %20, %18
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %25, label %23

23:                                               ; preds = %12
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !19
  %24 = tail call i32 @__traceiter_napi_gro_receive_entry(ptr noundef null, ptr noundef %1) #12
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !20
  br label %25

25:                                               ; preds = %23, %12, %9
  %26 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 15
  %27 = load ptr, ptr %26, align 4
  %28 = getelementptr inbounds %struct.skb_shared_info, ptr %27, i32 0, i32 12
  %29 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 3
  %30 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 3, i32 8
  store i32 0, ptr %30, align 8
  store ptr null, ptr %29, align 8
  %31 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 3, i32 4
  store i32 0, ptr %31, align 4
  %32 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 5
  %33 = load i32, ptr %32, align 8
  %34 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 6
  %35 = load i32, ptr %34, align 4
  %36 = icmp eq i32 %33, %35
  br i1 %36, label %37, label %69

37:                                               ; preds = %25
  %38 = getelementptr inbounds %struct.skb_shared_info, ptr %27, i32 0, i32 2
  %39 = load i8, ptr %38, align 2
  %40 = icmp eq i8 %39, 0
  br i1 %40, label %69, label %41

41:                                               ; preds = %37
  %42 = load ptr, ptr %28, align 4
  %43 = load i32, ptr %42, align 4
  %44 = lshr i32 %43, 30
  %45 = icmp eq i32 %44, 2
  br i1 %45, label %69, label %46

46:                                               ; preds = %41
  %47 = icmp ne i32 %44, 3
  %48 = load i32, ptr @movable_zone, align 4
  %49 = icmp ne i32 %48, 2
  %50 = select i1 %47, i1 true, i1 %49
  br i1 %50, label %51, label %69

51:                                               ; preds = %46
  %52 = getelementptr inbounds %struct.skb_shared_info, ptr %27, i32 0, i32 12, i32 0, i32 2
  %53 = load i32, ptr %52, align 4
  %54 = and i32 %53, 3
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %56, label %69

56:                                               ; preds = %51
  %57 = tail call ptr @page_address(ptr noundef %42) #12
  %58 = load i32, ptr %52, align 4
  %59 = getelementptr i8, ptr %57, i32 %58
  store ptr %59, ptr %29, align 8
  %60 = getelementptr inbounds %struct.skb_shared_info, ptr %27, i32 0, i32 12, i32 0, i32 1
  %61 = load i32, ptr %60, align 4
  %62 = load ptr, ptr %26, align 4
  %63 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 14
  %64 = load ptr, ptr %63, align 8
  %65 = ptrtoint ptr %62 to i32
  %66 = ptrtoint ptr %64 to i32
  %67 = sub i32 %65, %66
  %68 = tail call i32 @llvm.umin.i32(i32 %61, i32 %67) #12
  store i32 %68, ptr %31, align 4
  br label %69

69:                                               ; preds = %56, %51, %46, %41, %37, %25
  %70 = tail call fastcc i32 @dev_gro_receive(ptr noundef %0, ptr noundef %1), !range !21
  switch i32 %70, label %97 [
    i32 3, label %71
    i32 1, label %84
  ]

71:                                               ; preds = %69
  %72 = getelementptr inbounds %struct.napi_struct, ptr %0, i32 0, i32 9
  %73 = getelementptr inbounds %struct.napi_struct, ptr %0, i32 0, i32 9, i32 1
  %74 = load ptr, ptr %73, align 4
  store ptr %1, ptr %73, align 4
  store ptr %72, ptr %1, align 4
  %75 = getelementptr inbounds %struct.list_head, ptr %1, i32 0, i32 1
  store ptr %74, ptr %75, align 4
  store volatile ptr %1, ptr %74, align 4
  %76 = getelementptr inbounds %struct.napi_struct, ptr %0, i32 0, i32 10
  %77 = load i32, ptr %76, align 4
  %78 = add i32 %77, 1
  store i32 %78, ptr %76, align 4
  %79 = load i32, ptr @gro_normal_batch, align 4
  %80 = icmp slt i32 %78, %79
  %81 = icmp eq i32 %78, 0
  %82 = or i1 %81, %80
  br i1 %82, label %97, label %83

83:                                               ; preds = %71
  tail call void @netif_receive_skb_list_internal(ptr noundef %72) #12
  store volatile ptr %72, ptr %72, align 4
  store ptr %72, ptr %73, align 4
  store i32 0, ptr %76, align 4
  br label %97

84:                                               ; preds = %69
  %85 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 3, i32 26
  %86 = load i16, ptr %85, align 2
  %87 = and i16 %86, 192
  %88 = icmp eq i16 %87, 128
  br i1 %88, label %89, label %90

89:                                               ; preds = %84
  tail call void @napi_skb_free_stolen_head(ptr noundef %1) #12
  br label %97

90:                                               ; preds = %84
  %91 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 11
  %92 = load i8, ptr %91, align 2
  %93 = and i8 %92, 12
  %94 = icmp eq i8 %93, 0
  br i1 %94, label %96, label %95

95:                                               ; preds = %90
  tail call void @__kfree_skb(ptr noundef %1) #12
  br label %97

96:                                               ; preds = %90
  tail call void @__kfree_skb_defer(ptr noundef %1) #12
  br label %97

97:                                               ; preds = %96, %95, %89, %83, %71, %69
  %98 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_napi_gro_receive_exit, i32 0, i32 1), align 4
  %99 = icmp sgt i32 %98, 0
  br i1 %99, label %100, label %113

100:                                              ; preds = %97
  %101 = tail call ptr @llvm.thread.pointer() #12
  %102 = getelementptr inbounds %struct.thread_info, ptr %101, i32 0, i32 2
  %103 = load i32, ptr %102, align 8
  %104 = lshr i32 %103, 5
  %105 = getelementptr i32, ptr @__cpu_online_mask, i32 %104
  %106 = load volatile i32, ptr %105, align 4
  %107 = and i32 %103, 31
  %108 = shl nuw i32 1, %107
  %109 = and i32 %108, %106
  %110 = icmp eq i32 %109, 0
  br i1 %110, label %113, label %111

111:                                              ; preds = %100
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !22
  %112 = tail call i32 @__traceiter_napi_gro_receive_exit(ptr noundef null, i32 noundef %70) #12
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !23
  br label %113

113:                                              ; preds = %111, %100, %97
  ret i32 %70
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @dev_gro_receive(ptr noundef %0, ptr noundef %1) unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 13, i32 0, i32 7
  %4 = load i32, ptr %3, align 8
  %5 = and i32 %4, 7
  %6 = getelementptr %struct.napi_struct, ptr %0, i32 0, i32 7, i32 %5
  %7 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 13, i32 0, i32 16
  %8 = load i16, ptr %7, align 8
  %9 = getelementptr inbounds %struct.anon, ptr %1, i32 0, i32 2
  %10 = load ptr, ptr %9, align 8
  %11 = getelementptr inbounds %struct.net_device, ptr %10, i32 0, i32 23
  %12 = load i64, ptr %11, align 16
  %13 = and i64 %12, 16384
  %14 = icmp eq i64 %13, 0
  br i1 %14, label %300, label %15

15:                                               ; preds = %2
  %16 = getelementptr inbounds %struct.net_device, ptr %10, i32 0, i32 76
  %17 = load ptr, ptr %16, align 16
  %18 = icmp eq ptr %17, null
  br i1 %18, label %19, label %300

19:                                               ; preds = %15
  %20 = getelementptr inbounds %struct.net_device, ptr %10, i32 0, i32 19
  %21 = load i16, ptr %20, align 2
  %22 = zext i16 %21 to i32
  %23 = load ptr, ptr %6, align 4
  %24 = icmp eq ptr %23, %6
  br i1 %24, label %176, label %25

25:                                               ; preds = %19
  %26 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 13, i32 0, i32 3
  %27 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 13, i32 0, i32 9
  %28 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 15
  %29 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 16
  %30 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 13, i32 0, i32 19
  %31 = icmp eq i16 %21, 14
  %32 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 1
  br label %33

33:                                               ; preds = %173, %25
  %34 = phi ptr [ %23, %25 ], [ %174, %173 ]
  %35 = getelementptr inbounds %struct.sk_buff, ptr %34, i32 0, i32 3, i32 12
  store i16 0, ptr %35, align 4
  %36 = getelementptr inbounds %struct.sk_buff, ptr %34, i32 0, i32 13, i32 0, i32 7
  %37 = load i32, ptr %36, align 8
  %38 = icmp eq i32 %4, %37
  br i1 %38, label %43, label %39

39:                                               ; preds = %33
  %40 = getelementptr inbounds %struct.sk_buff, ptr %34, i32 0, i32 3, i32 26
  %41 = load i16, ptr %40, align 2
  %42 = and i16 %41, -2
  store i16 %42, ptr %40, align 2
  br label %173

43:                                               ; preds = %33
  %44 = getelementptr inbounds %struct.anon, ptr %34, i32 0, i32 2
  %45 = load ptr, ptr %44, align 8
  %46 = ptrtoint ptr %45 to i32
  %47 = load ptr, ptr %9, align 8
  %48 = ptrtoint ptr %47 to i32
  %49 = xor i32 %48, %46
  %50 = getelementptr inbounds %struct.sk_buff, ptr %34, i32 0, i32 13, i32 0, i32 3
  %51 = load i16, ptr %50, align 2
  %52 = trunc i16 %51 to i8
  %53 = and i8 %52, 1
  %54 = zext i8 %53 to i32
  %55 = load i16, ptr %26, align 2
  %56 = and i16 %55, 1
  %57 = zext i16 %56 to i32
  %58 = xor i32 %54, %57
  %59 = or i32 %58, %49
  %60 = icmp eq i8 %53, 0
  br i1 %60, label %68, label %61

61:                                               ; preds = %43
  %62 = getelementptr inbounds %struct.sk_buff, ptr %34, i32 0, i32 13, i32 0, i32 9
  %63 = load i16, ptr %62, align 2
  %64 = load i16, ptr %27, align 2
  %65 = xor i16 %64, %63
  %66 = zext i16 %65 to i32
  %67 = or i32 %59, %66
  br label %68

68:                                               ; preds = %61, %43
  %69 = phi i32 [ %67, %61 ], [ %59, %43 ]
  %70 = getelementptr inbounds %struct.sk_buff, ptr %34, i32 0, i32 15
  %71 = load ptr, ptr %70, align 4
  %72 = getelementptr inbounds %struct.skb_shared_info, ptr %71, i32 0, i32 1
  %73 = load i8, ptr %72, align 1
  %74 = load ptr, ptr %28, align 4
  %75 = getelementptr inbounds %struct.skb_shared_info, ptr %74, i32 0, i32 1
  %76 = load i8, ptr %75, align 1
  %77 = or i8 %76, %73
  %78 = icmp eq i8 %77, 0
  br i1 %78, label %98, label %79

79:                                               ; preds = %68
  %80 = icmp eq i8 %73, %76
  br i1 %80, label %81, label %98

81:                                               ; preds = %79
  %82 = getelementptr inbounds %struct.sk_buff, ptr %34, i32 0, i32 16
  %83 = load ptr, ptr %82, align 8
  %84 = getelementptr inbounds %struct.sk_buff, ptr %34, i32 0, i32 13, i32 0, i32 19
  %85 = load i16, ptr %84, align 2
  %86 = zext i16 %85 to i32
  %87 = getelementptr i8, ptr %83, i32 %86
  %88 = load ptr, ptr %29, align 8
  %89 = load i16, ptr %30, align 2
  %90 = zext i16 %89 to i32
  %91 = getelementptr i8, ptr %88, i32 %90
  %92 = zext i8 %73 to i32
  %93 = sub nsw i32 0, %92
  %94 = getelementptr i8, ptr %87, i32 %93
  %95 = getelementptr i8, ptr %91, i32 %93
  %96 = tail call i32 @bcmp(ptr %94, ptr %95, i32 %92) #12
  %97 = icmp ne i32 %96, 0
  br label %98

98:                                               ; preds = %81, %79, %68
  %99 = phi i1 [ false, %68 ], [ %97, %81 ], [ true, %79 ]
  %100 = zext i1 %99 to i32
  %101 = or i32 %69, %100
  br i1 %31, label %102, label %136

102:                                              ; preds = %98
  %103 = getelementptr inbounds %struct.sk_buff, ptr %34, i32 0, i32 16
  %104 = load ptr, ptr %103, align 8
  %105 = getelementptr inbounds %struct.sk_buff, ptr %34, i32 0, i32 13, i32 0, i32 19
  %106 = load i16, ptr %105, align 2
  %107 = zext i16 %106 to i32
  %108 = getelementptr i8, ptr %104, i32 %107
  %109 = load ptr, ptr %29, align 8
  %110 = load i16, ptr %30, align 2
  %111 = zext i16 %110 to i32
  %112 = getelementptr i8, ptr %109, i32 %111
  %113 = getelementptr i8, ptr %108, i32 2
  %114 = getelementptr i8, ptr %112, i32 2
  %115 = load i16, ptr %108, align 2
  %116 = load i16, ptr %112, align 2
  %117 = xor i16 %116, %115
  %118 = zext i16 %117 to i32
  %119 = load i32, ptr %113, align 4
  %120 = load i32, ptr %114, align 4
  %121 = xor i32 %120, %119
  %122 = getelementptr i8, ptr %108, i32 6
  %123 = load i32, ptr %122, align 4
  %124 = getelementptr i8, ptr %112, i32 6
  %125 = load i32, ptr %124, align 4
  %126 = xor i32 %125, %123
  %127 = getelementptr i8, ptr %108, i32 10
  %128 = load i32, ptr %127, align 4
  %129 = getelementptr i8, ptr %112, i32 10
  %130 = load i32, ptr %129, align 4
  %131 = xor i32 %130, %128
  %132 = or i32 %101, %118
  %133 = or i32 %132, %121
  %134 = or i32 %133, %126
  %135 = or i32 %134, %131
  br label %150

136:                                              ; preds = %98
  %137 = icmp eq i32 %101, 0
  br i1 %137, label %138, label %165

138:                                              ; preds = %136
  %139 = getelementptr inbounds %struct.sk_buff, ptr %34, i32 0, i32 16
  %140 = load ptr, ptr %139, align 8
  %141 = getelementptr inbounds %struct.sk_buff, ptr %34, i32 0, i32 13, i32 0, i32 19
  %142 = load i16, ptr %141, align 2
  %143 = zext i16 %142 to i32
  %144 = getelementptr i8, ptr %140, i32 %143
  %145 = load ptr, ptr %29, align 8
  %146 = load i16, ptr %30, align 2
  %147 = zext i16 %146 to i32
  %148 = getelementptr i8, ptr %145, i32 %147
  %149 = tail call i32 @memcmp(ptr noundef %144, ptr noundef %148, i32 noundef %22) #12
  br label %150

150:                                              ; preds = %138, %102
  %151 = phi i32 [ %135, %102 ], [ %149, %138 ]
  %152 = icmp eq i32 %151, 0
  br i1 %152, label %153, label %165

153:                                              ; preds = %150
  %154 = or i16 %55, %51
  %155 = and i16 %154, 16384
  %156 = icmp eq i16 %155, 0
  br i1 %156, label %165, label %157, !prof !17

157:                                              ; preds = %153
  %158 = getelementptr inbounds %struct.sk_buff, ptr %34, i32 0, i32 1
  %159 = load ptr, ptr %158, align 4
  %160 = load ptr, ptr %32, align 4
  %161 = icmp ne ptr %159, %160
  %162 = zext i1 %161 to i32
  %163 = tail call fastcc i32 @skb_metadata_dst_cmp(ptr noundef %34, ptr noundef %1) #12
  %164 = or i32 %163, %162
  br label %165

165:                                              ; preds = %157, %153, %150, %136
  %166 = phi i32 [ %151, %150 ], [ %164, %157 ], [ 0, %153 ], [ %101, %136 ]
  %167 = icmp eq i32 %166, 0
  %168 = getelementptr inbounds %struct.sk_buff, ptr %34, i32 0, i32 3, i32 26
  %169 = zext i1 %167 to i16
  %170 = load i16, ptr %168, align 2
  %171 = and i16 %170, -2
  %172 = or i16 %171, %169
  store i16 %172, ptr %168, align 2
  br label %173

173:                                              ; preds = %165, %39
  %174 = load ptr, ptr %34, align 4
  %175 = icmp eq ptr %174, %6
  br i1 %175, label %176, label %33

176:                                              ; preds = %173, %19
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !13
  %177 = load volatile ptr, ptr @offload_base, align 4
  %178 = icmp eq ptr %177, @offload_base
  br i1 %178, label %179, label %180

179:                                              ; preds = %250, %176
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !14
  br label %300

180:                                              ; preds = %250, %176
  %181 = phi ptr [ %251, %250 ], [ %177, %176 ]
  %182 = getelementptr i8, ptr %181, i32 -16
  %183 = load i16, ptr %182, align 4
  %184 = icmp eq i16 %183, %8
  br i1 %184, label %185, label %250

185:                                              ; preds = %180
  %186 = getelementptr i8, ptr %181, i32 -8
  %187 = load ptr, ptr %186, align 4
  %188 = icmp eq ptr %187, null
  br i1 %188, label %250, label %189

189:                                              ; preds = %185
  %190 = getelementptr i8, ptr %181, i32 -8
  %191 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 3, i32 8
  %192 = load i32, ptr %191, align 8
  %193 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 17
  %194 = load ptr, ptr %193, align 4
  %195 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 16
  %196 = load ptr, ptr %195, align 8
  %197 = ptrtoint ptr %194 to i32
  %198 = ptrtoint ptr %196 to i32
  %199 = sub i32 %197, %198
  %200 = trunc i32 %199 to i16
  %201 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 13, i32 0, i32 18
  %202 = trunc i32 %192 to i16
  %203 = add i16 %200, %202
  store i16 %203, ptr %201, align 4
  %204 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 13, i32 0, i32 19
  %205 = load i16, ptr %204, align 2
  %206 = sub i16 %203, %205
  %207 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 7
  store i16 %206, ptr %207, align 8
  %208 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 3, i32 26
  %209 = load i16, ptr %208, align 2
  %210 = and i16 %209, -2
  store i16 %210, ptr %208, align 2
  %211 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 15
  %212 = load ptr, ptr %211, align 4
  %213 = getelementptr inbounds %struct.skb_shared_info, ptr %212, i32 0, i32 4
  %214 = load i16, ptr %213, align 4
  %215 = icmp eq i16 %214, 0
  br i1 %215, label %216, label %220

216:                                              ; preds = %189
  %217 = getelementptr inbounds %struct.skb_shared_info, ptr %212, i32 0, i32 6
  %218 = load ptr, ptr %217, align 8
  %219 = icmp ne ptr %218, null
  br label %220

220:                                              ; preds = %216, %189
  %221 = phi i1 [ true, %189 ], [ %219, %216 ]
  %222 = zext i1 %221 to i16
  %223 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 3, i32 12
  store i16 %222, ptr %223, align 4
  %224 = and i16 %209, -32452
  %225 = or i16 %224, 1024
  %226 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 3, i32 18
  store i16 0, ptr %226, align 2
  %227 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 13
  %228 = load i16, ptr %227, align 8
  %229 = lshr i16 %228, 5
  %230 = and i16 %229, 3
  %231 = zext i16 %230 to i32
  switch i32 %231, label %248 [
    i32 2, label %232
    i32 1, label %238
  ]

232:                                              ; preds = %220
  %233 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 13, i32 0, i32 4
  %234 = load i32, ptr %233, align 4
  %235 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 3, i32 28
  store i32 %234, ptr %235, align 4
  %236 = and i16 %225, -31488
  %237 = or i16 %236, 4
  br label %253

238:                                              ; preds = %220
  %239 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 13, i32 0, i32 3
  %240 = load i16, ptr %239, align 2
  %241 = trunc i16 %240 to i8
  %242 = shl i8 %241, 1
  %243 = and i8 %242, 24
  %244 = add nuw nsw i8 %243, 8
  %245 = zext i8 %244 to i16
  %246 = and i16 %225, -31488
  %247 = or i16 %246, %245
  br label %253

248:                                              ; preds = %220
  %249 = and i16 %225, -31488
  br label %253

250:                                              ; preds = %185, %180
  %251 = load volatile ptr, ptr %181, align 4
  %252 = icmp eq ptr %251, @offload_base
  br i1 %252, label %179, label %180

253:                                              ; preds = %248, %238, %232
  %254 = phi i16 [ %249, %248 ], [ %247, %238 ], [ %237, %232 ]
  store i16 %254, ptr %208, align 2
  %255 = load ptr, ptr %190, align 4
  %256 = tail call ptr %255(ptr noundef %6, ptr noundef %1) #12
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !14
  %257 = icmp eq ptr %256, inttoptr (i32 -115 to ptr)
  br i1 %257, label %343, label %258

258:                                              ; preds = %253
  %259 = load i16, ptr %208, align 2
  %260 = and i16 %259, 1
  %261 = and i16 %259, 192
  %262 = icmp ne i16 %261, 0
  %263 = zext i1 %262 to i32
  %264 = icmp eq ptr %256, null
  br i1 %264, label %273, label %265

265:                                              ; preds = %258
  %266 = getelementptr inbounds %struct.list_head, ptr %256, i32 0, i32 1
  %267 = load ptr, ptr %266, align 4
  %268 = load ptr, ptr %256, align 4
  %269 = getelementptr inbounds %struct.list_head, ptr %268, i32 0, i32 1
  store ptr %267, ptr %269, align 4
  store volatile ptr %268, ptr %267, align 4
  store ptr null, ptr %256, align 8
  tail call fastcc void @napi_gro_complete(ptr noundef %0, ptr noundef nonnull %256)
  %270 = getelementptr %struct.napi_struct, ptr %0, i32 0, i32 7, i32 %5, i32 1
  %271 = load i32, ptr %270, align 4
  %272 = add i32 %271, -1
  store i32 %272, ptr %270, align 4
  br label %273

273:                                              ; preds = %265, %258
  %274 = icmp eq i16 %260, 0
  br i1 %274, label %275, label %343

275:                                              ; preds = %273
  %276 = load i16, ptr %223, align 4
  %277 = icmp eq i16 %276, 0
  br i1 %277, label %278, label %300

278:                                              ; preds = %275
  %279 = getelementptr %struct.napi_struct, ptr %0, i32 0, i32 7, i32 %5, i32 1
  %280 = load i32, ptr %279, align 4
  %281 = icmp sgt i32 %280, 7
  br i1 %281, label %282, label %283, !prof !15

282:                                              ; preds = %278
  tail call fastcc void @gro_flush_oldest(ptr noundef %0, ptr noundef %6)
  br label %285

283:                                              ; preds = %278
  %284 = add nsw i32 %280, 1
  store i32 %284, ptr %279, align 4
  br label %285

285:                                              ; preds = %283, %282
  %286 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 3, i32 16
  store i16 1, ptr %286, align 8
  %287 = load volatile i32, ptr @jiffies, align 64
  %288 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 3, i32 20
  store i32 %287, ptr %288, align 4
  %289 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 3, i32 32
  store ptr %1, ptr %289, align 8
  %290 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 5
  %291 = load i32, ptr %290, align 8
  %292 = load i32, ptr %191, align 8
  %293 = sub i32 %291, %292
  %294 = trunc i32 %293 to i16
  %295 = load ptr, ptr %211, align 4
  %296 = getelementptr inbounds %struct.skb_shared_info, ptr %295, i32 0, i32 4
  store i16 %294, ptr %296, align 4
  %297 = load ptr, ptr %6, align 4
  %298 = getelementptr inbounds %struct.list_head, ptr %297, i32 0, i32 1
  store ptr %1, ptr %298, align 4
  store ptr %297, ptr %1, align 4
  %299 = getelementptr inbounds %struct.list_head, ptr %1, i32 0, i32 1
  store ptr %6, ptr %299, align 4
  store volatile ptr %1, ptr %6, align 4
  br label %300

300:                                              ; preds = %285, %275, %179, %15, %2
  %301 = phi i32 [ 2, %285 ], [ 3, %275 ], [ 3, %15 ], [ 3, %179 ], [ 3, %2 ]
  %302 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 3, i32 8
  %303 = load i32, ptr %302, align 8
  %304 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 5
  %305 = load i32, ptr %304, align 8
  %306 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 6
  %307 = load i32, ptr %306, align 4
  %308 = sub i32 %307, %305
  %309 = add i32 %308, %303
  %310 = icmp sgt i32 %309, 0
  br i1 %310, label %311, label %343

311:                                              ; preds = %300
  %312 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 15
  %313 = load ptr, ptr %312, align 4
  %314 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 14
  %315 = load ptr, ptr %314, align 8
  %316 = ptrtoint ptr %313 to i32
  %317 = ptrtoint ptr %315 to i32
  %318 = sub i32 %316, %317
  %319 = icmp slt i32 %318, %309
  br i1 %319, label %320, label %321, !prof !15

320:                                              ; preds = %311
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22net/core/gro.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 427, 0\0A.popsection", ""() #12, !srcloc !24
  unreachable

321:                                              ; preds = %311
  %322 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 3
  %323 = load ptr, ptr %322, align 8
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 1 %315, ptr align 1 %323, i32 %309, i1 false) #12
  %324 = load i32, ptr %306, align 4
  %325 = sub i32 %324, %309
  store i32 %325, ptr %306, align 4
  %326 = load ptr, ptr %314, align 8
  %327 = getelementptr i8, ptr %326, i32 %309
  store ptr %327, ptr %314, align 8
  %328 = getelementptr inbounds %struct.skb_shared_info, ptr %313, i32 0, i32 12, i32 0, i32 2
  %329 = load i32, ptr %328, align 4
  %330 = add i32 %329, %309
  store i32 %330, ptr %328, align 4
  %331 = getelementptr inbounds %struct.skb_shared_info, ptr %313, i32 0, i32 12, i32 0, i32 1
  %332 = load i32, ptr %331, align 4
  %333 = sub i32 %332, %309
  store i32 %333, ptr %331, align 4
  %334 = icmp eq i32 %332, %309
  br i1 %334, label %335, label %343, !prof !15

335:                                              ; preds = %321
  %336 = getelementptr inbounds %struct.skb_shared_info, ptr %313, i32 0, i32 12
  tail call fastcc void @skb_frag_unref(ptr noundef %1) #12
  %337 = getelementptr %struct.skb_shared_info, ptr %313, i32 0, i32 12, i32 1
  %338 = getelementptr inbounds %struct.skb_shared_info, ptr %313, i32 0, i32 2
  %339 = load i8, ptr %338, align 2
  %340 = add i8 %339, -1
  store i8 %340, ptr %338, align 2
  %341 = zext i8 %340 to i32
  %342 = mul nuw nsw i32 %341, 12
  tail call void @llvm.memmove.p0.p0.i32(ptr align 8 %336, ptr align 4 %337, i32 %342, i1 false) #12
  br label %343

343:                                              ; preds = %335, %321, %300, %273, %253
  %344 = phi i32 [ %301, %300 ], [ %263, %273 ], [ 4, %253 ], [ %301, %321 ], [ %301, %335 ]
  %345 = getelementptr %struct.napi_struct, ptr %0, i32 0, i32 7, i32 %5, i32 1
  %346 = load i32, ptr %345, align 4
  %347 = icmp eq i32 %346, 0
  %348 = getelementptr inbounds %struct.napi_struct, ptr %0, i32 0, i32 4
  %349 = load volatile i32, ptr %348, align 4
  %350 = shl nuw i32 1, %5
  %351 = and i32 %349, %350
  %352 = icmp eq i32 %351, 0
  br i1 %347, label %356, label %353

353:                                              ; preds = %343
  br i1 %352, label %354, label %362

354:                                              ; preds = %353
  %355 = or i32 %349, %350
  br label %360

356:                                              ; preds = %343
  br i1 %352, label %362, label %357

357:                                              ; preds = %356
  %358 = xor i32 %350, -1
  %359 = and i32 %349, %358
  br label %360

360:                                              ; preds = %357, %354
  %361 = phi i32 [ %359, %357 ], [ %355, %354 ]
  store i32 %361, ptr %348, align 4
  br label %362

362:                                              ; preds = %360, %356, %353
  ret i32 %344
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @napi_get_frags(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.napi_struct, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = icmp eq ptr %3, null
  br i1 %4, label %5, label %15

5:                                                ; preds = %1
  %6 = tail call ptr @__napi_alloc_skb(ptr noundef %0, i32 noundef 272, i32 noundef 2592) #12
  %7 = icmp eq ptr %6, null
  br i1 %7, label %15, label %8

8:                                                ; preds = %5
  store ptr %6, ptr %2, align 8
  %9 = getelementptr inbounds %struct.sk_buff, ptr %6, i32 0, i32 13, i32 0, i32 10
  %10 = load i32, ptr %9, align 8
  %11 = icmp ult i32 %10, 17
  br i1 %11, label %12, label %15

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct.napi_struct, ptr %0, i32 0, i32 14
  %14 = load i32, ptr %13, align 8
  store i32 %14, ptr %9, align 8
  br label %15

15:                                               ; preds = %12, %8, %5, %1
  %16 = phi ptr [ %3, %1 ], [ null, %5 ], [ %6, %8 ], [ %6, %12 ]
  ret ptr %16
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @napi_gro_frags(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.napi_struct, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  store ptr null, ptr %2, align 8
  %4 = getelementptr inbounds %struct.sk_buff, ptr %3, i32 0, i32 17
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.sk_buff, ptr %3, i32 0, i32 16
  %7 = load ptr, ptr %6, align 8
  %8 = ptrtoint ptr %5 to i32
  %9 = ptrtoint ptr %7 to i32
  %10 = sub i32 %8, %9
  %11 = trunc i32 %10 to i16
  %12 = getelementptr inbounds %struct.sk_buff, ptr %3, i32 0, i32 13, i32 0, i32 19
  store i16 %11, ptr %12, align 2
  %13 = getelementptr inbounds %struct.sk_buff, ptr %3, i32 0, i32 15
  %14 = load ptr, ptr %13, align 4
  %15 = getelementptr inbounds %struct.skb_shared_info, ptr %14, i32 0, i32 12
  %16 = getelementptr inbounds %struct.sk_buff, ptr %3, i32 0, i32 3
  %17 = getelementptr inbounds %struct.sk_buff, ptr %3, i32 0, i32 3, i32 8
  store i32 0, ptr %17, align 8
  store ptr null, ptr %16, align 8
  %18 = getelementptr inbounds %struct.sk_buff, ptr %3, i32 0, i32 3, i32 4
  store i32 0, ptr %18, align 4
  %19 = getelementptr inbounds %struct.sk_buff, ptr %3, i32 0, i32 5
  %20 = load i32, ptr %19, align 8
  %21 = getelementptr inbounds %struct.sk_buff, ptr %3, i32 0, i32 6
  %22 = load i32, ptr %21, align 4
  %23 = icmp eq i32 %20, %22
  br i1 %23, label %24, label %61, !prof !25

24:                                               ; preds = %1
  %25 = getelementptr inbounds %struct.skb_shared_info, ptr %14, i32 0, i32 2
  %26 = load i8, ptr %25, align 2
  %27 = icmp eq i8 %26, 0
  br i1 %27, label %61, label %28, !prof !26

28:                                               ; preds = %24
  %29 = load ptr, ptr %15, align 4
  %30 = load i32, ptr %29, align 4
  %31 = lshr i32 %30, 30
  %32 = icmp eq i32 %31, 2
  br i1 %32, label %61, label %33, !prof !26

33:                                               ; preds = %28
  %34 = icmp ne i32 %31, 3
  %35 = load i32, ptr @movable_zone, align 4
  %36 = icmp ne i32 %35, 2
  %37 = select i1 %34, i1 true, i1 %36
  br i1 %37, label %38, label %61, !prof !25

38:                                               ; preds = %33
  %39 = getelementptr inbounds %struct.skb_shared_info, ptr %14, i32 0, i32 12, i32 0, i32 2
  %40 = load i32, ptr %39, align 4
  %41 = add i32 %40, 2
  %42 = and i32 %41, 3
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %44, label %61, !prof !25

44:                                               ; preds = %38
  %45 = tail call ptr @page_address(ptr noundef %29) #12
  %46 = load i32, ptr %39, align 4
  %47 = getelementptr i8, ptr %45, i32 %46
  store ptr %47, ptr %16, align 8
  %48 = getelementptr inbounds %struct.skb_shared_info, ptr %14, i32 0, i32 12, i32 0, i32 1
  %49 = load i32, ptr %48, align 4
  %50 = load ptr, ptr %13, align 4
  %51 = getelementptr inbounds %struct.sk_buff, ptr %3, i32 0, i32 14
  %52 = load ptr, ptr %51, align 8
  %53 = ptrtoint ptr %50 to i32
  %54 = ptrtoint ptr %52 to i32
  %55 = sub i32 %53, %54
  %56 = tail call i32 @llvm.umin.i32(i32 %49, i32 %55) #12
  store i32 %56, ptr %18, align 4
  %57 = icmp ugt i32 %56, 13
  br i1 %57, label %83, label %58, !prof !17

58:                                               ; preds = %44
  %59 = load i32, ptr %19, align 8
  %60 = load i32, ptr %21, align 4
  br label %61

61:                                               ; preds = %58, %38, %33, %28, %24, %1
  %62 = phi i32 [ %22, %1 ], [ %60, %58 ], [ %20, %24 ], [ %20, %28 ], [ %20, %33 ], [ %20, %38 ]
  %63 = phi i32 [ %20, %1 ], [ %59, %58 ], [ %20, %24 ], [ %20, %28 ], [ %20, %33 ], [ %20, %38 ]
  %64 = sub i32 %63, %62
  %65 = icmp ugt i32 %64, 13
  br i1 %65, label %72, label %66, !prof !17

66:                                               ; preds = %61
  %67 = icmp ult i32 %63, 14
  br i1 %67, label %75, label %68, !prof !15

68:                                               ; preds = %66
  %69 = sub nuw nsw i32 14, %64
  %70 = tail call ptr @__pskb_pull_tail(ptr noundef %3, i32 noundef %69) #12
  %71 = icmp eq ptr %70, null
  br i1 %71, label %75, label %72

72:                                               ; preds = %68, %61
  store ptr null, ptr %16, align 8
  store i32 0, ptr %18, align 4
  %73 = load ptr, ptr %4, align 4
  %74 = icmp eq ptr %73, null
  br i1 %74, label %75, label %138, !prof !15

75:                                               ; preds = %72, %68, %66
  %76 = tail call i32 @net_ratelimit() #12
  %77 = icmp eq i32 %76, 0
  br i1 %77, label %82, label %78

78:                                               ; preds = %75
  %79 = getelementptr inbounds %struct.napi_struct, ptr %0, i32 0, i32 6
  %80 = load ptr, ptr %79, align 4
  %81 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.napi_frags_skb, ptr noundef %80) #13
  br label %82

82:                                               ; preds = %78, %75
  tail call fastcc void @napi_reuse_skb(ptr noundef %0, ptr noundef %3) #12
  br label %151

83:                                               ; preds = %44
  %84 = load ptr, ptr %4, align 4
  %85 = icmp slt i32 %55, 14
  br i1 %85, label %86, label %87, !prof !15

86:                                               ; preds = %83
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22net/core/gro.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 427, 0\0A.popsection", ""() #12, !srcloc !24
  unreachable

87:                                               ; preds = %83
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(14) %52, ptr noundef align 1 dereferenceable(14) %47, i32 14, i1 false) #12
  %88 = load i32, ptr %21, align 4
  %89 = add i32 %88, -14
  store i32 %89, ptr %21, align 4
  %90 = load ptr, ptr %51, align 8
  %91 = getelementptr i8, ptr %90, i32 14
  store ptr %91, ptr %51, align 8
  %92 = getelementptr inbounds %struct.skb_shared_info, ptr %50, i32 0, i32 12, i32 0, i32 2
  %93 = load i32, ptr %92, align 4
  %94 = add i32 %93, 14
  store i32 %94, ptr %92, align 4
  %95 = getelementptr inbounds %struct.skb_shared_info, ptr %50, i32 0, i32 12, i32 0, i32 1
  %96 = load i32, ptr %95, align 4
  %97 = add i32 %96, -14
  store i32 %97, ptr %95, align 4
  %98 = icmp eq i32 %96, 14
  br i1 %98, label %99, label %133, !prof !15

99:                                               ; preds = %87
  %100 = getelementptr inbounds %struct.skb_shared_info, ptr %50, i32 0, i32 12
  %101 = load ptr, ptr %13, align 4
  %102 = getelementptr inbounds %struct.skb_shared_info, ptr %101, i32 0, i32 12
  %103 = getelementptr inbounds %struct.sk_buff, ptr %3, i32 0, i32 11
  %104 = load i8, ptr %103, align 2
  %105 = icmp slt i8 %104, 0
  %106 = load ptr, ptr %102, align 4
  br i1 %105, label %107, label %109

107:                                              ; preds = %99
  %108 = tail call zeroext i1 @page_pool_return_skb_page(ptr noundef %106) #12
  br i1 %108, label %126, label %109

109:                                              ; preds = %107, %99
  %110 = getelementptr inbounds %struct.page, ptr %106, i32 0, i32 1
  %111 = load volatile i32, ptr %110, align 4
  %112 = and i32 %111, 1
  %113 = icmp eq i32 %112, 0
  br i1 %113, label %116, label %114, !prof !17

114:                                              ; preds = %109
  %115 = add i32 %111, -1
  br label %118

116:                                              ; preds = %109
  %117 = ptrtoint ptr %106 to i32
  br label %118

118:                                              ; preds = %116, %114
  %119 = phi i32 [ %115, %114 ], [ %117, %116 ]
  %120 = inttoptr i32 %119 to ptr
  %121 = getelementptr inbounds %struct.page, ptr %120, i32 0, i32 3
  tail call void asm sideeffect "dmb ish", "~{memory}"() #12, !srcloc !27
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %121) #12, !srcloc !28
  %122 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %121, ptr %121, i32 1, ptr elementtype(i32) %121) #12, !srcloc !29
  %123 = extractvalue { i32, i32 } %122, 0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #12, !srcloc !30
  %124 = icmp eq i32 %123, 0
  br i1 %124, label %125, label %126

125:                                              ; preds = %118
  tail call void @__put_page(ptr noundef %120) #12
  br label %126

126:                                              ; preds = %125, %118, %107
  %127 = getelementptr %struct.skb_shared_info, ptr %50, i32 0, i32 12, i32 1
  %128 = getelementptr inbounds %struct.skb_shared_info, ptr %50, i32 0, i32 2
  %129 = load i8, ptr %128, align 2
  %130 = add i8 %129, -1
  store i8 %130, ptr %128, align 2
  %131 = zext i8 %130 to i32
  %132 = mul nuw nsw i32 %131, 12
  tail call void @llvm.memmove.p0.p0.i32(ptr align 8 %100, ptr align 4 %127, i32 %132, i1 false) #12
  br label %133

133:                                              ; preds = %126, %87
  %134 = load ptr, ptr %16, align 8
  %135 = getelementptr i8, ptr %134, i32 14
  store ptr %135, ptr %16, align 8
  %136 = load i32, ptr %18, align 4
  %137 = add i32 %136, -14
  store i32 %137, ptr %18, align 4
  br label %138

138:                                              ; preds = %133, %72
  %139 = phi ptr [ %73, %72 ], [ %84, %133 ]
  %140 = load i32, ptr %19, align 8
  %141 = add i32 %140, -14
  store i32 %141, ptr %19, align 8
  %142 = load i32, ptr %21, align 4
  %143 = icmp ult i32 %141, %142
  br i1 %143, label %144, label %145, !prof !15

144:                                              ; preds = %138
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/skbuff.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2398, 0\0A.popsection", ""() #12, !srcloc !16
  unreachable

145:                                              ; preds = %138
  %146 = load ptr, ptr %4, align 4
  %147 = getelementptr i8, ptr %146, i32 14
  store ptr %147, ptr %4, align 4
  %148 = getelementptr inbounds %struct.ethhdr, ptr %139, i32 0, i32 2
  %149 = load i16, ptr %148, align 1
  %150 = getelementptr inbounds %struct.sk_buff, ptr %3, i32 0, i32 13, i32 0, i32 16
  store i16 %149, ptr %150, align 8
  br label %151

151:                                              ; preds = %145, %82
  %152 = phi ptr [ null, %82 ], [ %3, %145 ]
  %153 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_napi_gro_frags_entry, i32 0, i32 1), align 4
  %154 = icmp sgt i32 %153, 0
  br i1 %154, label %155, label %168

155:                                              ; preds = %151
  %156 = tail call ptr @llvm.thread.pointer() #12
  %157 = getelementptr inbounds %struct.thread_info, ptr %156, i32 0, i32 2
  %158 = load i32, ptr %157, align 8
  %159 = lshr i32 %158, 5
  %160 = getelementptr i32, ptr @__cpu_online_mask, i32 %159
  %161 = load volatile i32, ptr %160, align 4
  %162 = and i32 %158, 31
  %163 = shl nuw i32 1, %162
  %164 = and i32 %163, %161
  %165 = icmp eq i32 %164, 0
  br i1 %165, label %168, label %166

166:                                              ; preds = %155
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !31
  %167 = tail call i32 @__traceiter_napi_gro_frags_entry(ptr noundef null, ptr noundef %152) #12
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !32
  br label %168

168:                                              ; preds = %166, %155, %151
  %169 = tail call fastcc i32 @dev_gro_receive(ptr noundef %0, ptr noundef %152), !range !21
  switch i32 %169, label %202 [
    i32 3, label %170
    i32 2, label %170
    i32 1, label %195
  ]

170:                                              ; preds = %168, %168
  %171 = getelementptr inbounds %struct.sk_buff, ptr %152, i32 0, i32 17
  %172 = load ptr, ptr %171, align 4
  %173 = getelementptr i8, ptr %172, i32 -14
  store ptr %173, ptr %171, align 4
  %174 = getelementptr inbounds %struct.sk_buff, ptr %152, i32 0, i32 5
  %175 = load i32, ptr %174, align 8
  %176 = add i32 %175, 14
  store i32 %176, ptr %174, align 8
  %177 = getelementptr inbounds %struct.anon, ptr %152, i32 0, i32 2
  %178 = load ptr, ptr %177, align 8
  %179 = tail call zeroext i16 @eth_type_trans(ptr noundef %152, ptr noundef %178) #12
  %180 = getelementptr inbounds %struct.sk_buff, ptr %152, i32 0, i32 13, i32 0, i32 16
  store i16 %179, ptr %180, align 8
  %181 = icmp eq i32 %169, 3
  br i1 %181, label %182, label %202

182:                                              ; preds = %170
  %183 = getelementptr inbounds %struct.napi_struct, ptr %0, i32 0, i32 9
  %184 = getelementptr inbounds %struct.napi_struct, ptr %0, i32 0, i32 9, i32 1
  %185 = load ptr, ptr %184, align 4
  store ptr %152, ptr %184, align 4
  store ptr %183, ptr %152, align 4
  %186 = getelementptr inbounds %struct.list_head, ptr %152, i32 0, i32 1
  store ptr %185, ptr %186, align 4
  store volatile ptr %152, ptr %185, align 4
  %187 = getelementptr inbounds %struct.napi_struct, ptr %0, i32 0, i32 10
  %188 = load i32, ptr %187, align 4
  %189 = add i32 %188, 1
  store i32 %189, ptr %187, align 4
  %190 = load i32, ptr @gro_normal_batch, align 4
  %191 = icmp slt i32 %189, %190
  %192 = icmp eq i32 %189, 0
  %193 = or i1 %192, %191
  br i1 %193, label %202, label %194

194:                                              ; preds = %182
  tail call void @netif_receive_skb_list_internal(ptr noundef %183) #12
  store volatile ptr %183, ptr %183, align 4
  store ptr %183, ptr %184, align 4
  store i32 0, ptr %187, align 4
  br label %202

195:                                              ; preds = %168
  %196 = getelementptr inbounds %struct.sk_buff, ptr %152, i32 0, i32 3, i32 26
  %197 = load i16, ptr %196, align 2
  %198 = and i16 %197, 192
  %199 = icmp eq i16 %198, 128
  br i1 %199, label %200, label %201

200:                                              ; preds = %195
  tail call void @napi_skb_free_stolen_head(ptr noundef %152) #12
  br label %202

201:                                              ; preds = %195
  tail call fastcc void @napi_reuse_skb(ptr noundef %0, ptr noundef %152) #12
  br label %202

202:                                              ; preds = %201, %200, %194, %182, %170, %168
  %203 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_napi_gro_frags_exit, i32 0, i32 1), align 4
  %204 = icmp sgt i32 %203, 0
  br i1 %204, label %205, label %218

205:                                              ; preds = %202
  %206 = tail call ptr @llvm.thread.pointer() #12
  %207 = getelementptr inbounds %struct.thread_info, ptr %206, i32 0, i32 2
  %208 = load i32, ptr %207, align 8
  %209 = lshr i32 %208, 5
  %210 = getelementptr i32, ptr @__cpu_online_mask, i32 %209
  %211 = load volatile i32, ptr %210, align 4
  %212 = and i32 %208, 31
  %213 = shl nuw i32 1, %212
  %214 = and i32 %213, %211
  %215 = icmp eq i32 %214, 0
  br i1 %215, label %218, label %216

216:                                              ; preds = %205
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !33
  %217 = tail call i32 @__traceiter_napi_gro_frags_exit(ptr noundef null, i32 noundef %169) #12
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !34
  br label %218

218:                                              ; preds = %216, %205, %202
  ret i32 %169
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local zeroext i16 @__skb_gro_checksum_complete(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 3, i32 8
  %3 = load i32, ptr %2, align 8
  %4 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 5
  %5 = load i32, ptr %4, align 8
  %6 = sub i32 %5, %3
  %7 = tail call i32 @skb_checksum(ptr noundef %0, i32 noundef %3, i32 noundef %6, i32 noundef 0) #12
  %8 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 3, i32 28
  %9 = load i32, ptr %8, align 4
  %10 = add i32 %9, %7
  %11 = icmp ult i32 %10, %7
  %12 = zext i1 %11 to i32
  %13 = add i32 %10, %12
  %14 = tail call i32 asm "add\09$0, $1, $1, ror #16\09@ csum_fold", "=r,r,~{cc}"(i32 %13) #14, !srcloc !35
  %15 = xor i32 %14, -1
  %16 = lshr i32 %15, 16
  %17 = trunc i32 %16 to i16
  %18 = icmp eq i16 %17, 0
  br i1 %18, label %19, label %32, !prof !17

19:                                               ; preds = %1
  %20 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 13
  %21 = load i16, ptr %20, align 8
  %22 = and i16 %21, 96
  %23 = icmp eq i16 %22, 64
  br i1 %23, label %24, label %32, !prof !15

24:                                               ; preds = %19
  %25 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 13, i32 0, i32 3
  %26 = load i16, ptr %25, align 2
  %27 = and i16 %26, 2
  %28 = icmp eq i16 %27, 0
  br i1 %28, label %29, label %32

29:                                               ; preds = %24
  %30 = getelementptr inbounds %struct.anon, ptr %0, i32 0, i32 2
  %31 = load ptr, ptr %30, align 8
  tail call void @netdev_rx_csum_fault(ptr noundef %31, ptr noundef %0) #12
  br label %32

32:                                               ; preds = %29, %24, %19, %1
  store i32 %7, ptr %8, align 4
  %33 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 3, i32 26
  %34 = load i16, ptr %33, align 2
  %35 = or i16 %34, 4
  store i16 %35, ptr %33, align 2
  ret i16 %17
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @skb_checksum(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @netdev_rx_csum_fault(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @napi_gro_complete(ptr noundef %0, ptr noundef %1) unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 13, i32 0, i32 16
  %4 = load i16, ptr %3, align 8
  %5 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 3, i32 16
  %6 = load i16, ptr %5, align 8
  %7 = icmp eq i16 %6, 1
  br i1 %7, label %8, label %12

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 15
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr inbounds %struct.skb_shared_info, ptr %10, i32 0, i32 4
  store i16 0, ptr %11, align 4
  br label %32

12:                                               ; preds = %2
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !13
  %13 = load volatile ptr, ptr @offload_base, align 4
  %14 = icmp eq ptr %13, @offload_base
  br i1 %14, label %30, label %15

15:                                               ; preds = %27, %12
  %16 = phi ptr [ %28, %27 ], [ %13, %12 ]
  %17 = getelementptr i8, ptr %16, i32 -16
  %18 = load i16, ptr %17, align 4
  %19 = icmp eq i16 %18, %4
  br i1 %19, label %20, label %27

20:                                               ; preds = %15
  %21 = getelementptr i8, ptr %16, i32 -4
  %22 = load ptr, ptr %21, align 4
  %23 = icmp eq ptr %22, null
  br i1 %23, label %27, label %24

24:                                               ; preds = %20
  %25 = tail call i32 %22(ptr noundef %1, i32 noundef 0) #12
  %26 = icmp eq i32 %25, 0
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !14
  br i1 %26, label %32, label %31

27:                                               ; preds = %20, %15
  %28 = load volatile ptr, ptr %16, align 4
  %29 = icmp eq ptr %28, @offload_base
  br i1 %29, label %30, label %15

30:                                               ; preds = %27, %12
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !14
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 301, i32 noundef 9, ptr noundef null) #12
  br label %31

31:                                               ; preds = %30, %24
  tail call void @kfree_skb_reason(ptr noundef %1, i32 noundef 0) #12
  br label %47

32:                                               ; preds = %24, %8
  %33 = load i16, ptr %5, align 8
  %34 = zext i16 %33 to i32
  %35 = getelementptr inbounds %struct.napi_struct, ptr %0, i32 0, i32 9
  %36 = getelementptr inbounds %struct.napi_struct, ptr %0, i32 0, i32 9, i32 1
  %37 = load ptr, ptr %36, align 4
  store ptr %1, ptr %36, align 4
  store ptr %35, ptr %1, align 4
  %38 = getelementptr inbounds %struct.list_head, ptr %1, i32 0, i32 1
  store ptr %37, ptr %38, align 4
  store volatile ptr %1, ptr %37, align 4
  %39 = getelementptr inbounds %struct.napi_struct, ptr %0, i32 0, i32 10
  %40 = load i32, ptr %39, align 4
  %41 = add i32 %40, %34
  store i32 %41, ptr %39, align 4
  %42 = load i32, ptr @gro_normal_batch, align 4
  %43 = icmp slt i32 %41, %42
  %44 = icmp eq i32 %41, 0
  %45 = or i1 %44, %43
  br i1 %45, label %47, label %46

46:                                               ; preds = %32
  tail call void @netif_receive_skb_list_internal(ptr noundef %35) #12
  store volatile ptr %35, ptr %35, align 4
  store ptr %35, ptr %36, align 4
  store i32 0, ptr %39, align 4
  br label %47

47:                                               ; preds = %46, %32, %31
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree_skb_reason(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_receive_skb_list_internal(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_napi_gro_receive_entry(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.thread.pointer() #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @napi_skb_free_stolen_head(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__kfree_skb(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__kfree_skb_defer(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @gro_flush_oldest(ptr noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.list_head, ptr %1, i32 0, i32 1
  %4 = load ptr, ptr %3, align 4
  %5 = icmp eq ptr %4, null
  %6 = load i1, ptr @gro_flush_oldest.__already_done, align 1
  %7 = xor i1 %6, true
  %8 = select i1 %5, i1 %7, i1 false
  br i1 %8, label %9, label %10, !prof !15

9:                                                ; preds = %2
  store i1 true, ptr @gro_flush_oldest.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 453, i32 noundef 9, ptr noundef null) #12
  br label %10

10:                                               ; preds = %9, %2
  br i1 %5, label %16, label %11

11:                                               ; preds = %10
  %12 = getelementptr inbounds %struct.list_head, ptr %4, i32 0, i32 1
  %13 = load ptr, ptr %12, align 4
  %14 = load ptr, ptr %4, align 4
  %15 = getelementptr inbounds %struct.list_head, ptr %14, i32 0, i32 1
  store ptr %13, ptr %15, align 4
  store volatile ptr %14, ptr %13, align 4
  store ptr null, ptr %4, align 8
  tail call fastcc void @napi_gro_complete(ptr noundef %0, ptr noundef nonnull %4)
  br label %16

16:                                               ; preds = %11, %10
  ret void
}

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @memcmp(ptr nocapture noundef, ptr nocapture noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: inlinehint mustprogress nofree nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define internal fastcc i32 @skb_metadata_dst_cmp(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) unnamed_addr #9 {
  %3 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 4
  %4 = load i32, ptr %3, align 8
  %5 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 4
  %6 = load i32, ptr %5, align 8
  %7 = or i32 %6, %4
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %36, label %9

9:                                                ; preds = %2
  %10 = and i32 %4, -2
  %11 = inttoptr i32 %10 to ptr
  %12 = and i32 %6, -2
  %13 = inttoptr i32 %12 to ptr
  %14 = icmp ne i32 %10, 0
  %15 = icmp eq i32 %12, 0
  %16 = xor i1 %14, %15
  br i1 %16, label %17, label %36

17:                                               ; preds = %9
  %18 = getelementptr inbounds %struct.metadata_dst, ptr %11, i32 0, i32 1
  %19 = load i32, ptr %18, align 4
  %20 = getelementptr inbounds %struct.metadata_dst, ptr %13, i32 0, i32 1
  %21 = load i32, ptr %20, align 4
  %22 = icmp eq i32 %19, %21
  br i1 %22, label %23, label %36

23:                                               ; preds = %17
  switch i32 %19, label %36 [
    i32 1, label %24
    i32 0, label %28
  ]

24:                                               ; preds = %23
  %25 = getelementptr inbounds %struct.metadata_dst, ptr %11, i32 0, i32 2
  %26 = getelementptr inbounds %struct.metadata_dst, ptr %13, i32 0, i32 2
  %27 = tail call i32 @memcmp(ptr noundef dereferenceable(8) %25, ptr noundef dereferenceable(8) %26, i32 noundef 8)
  br label %36

28:                                               ; preds = %23
  %29 = getelementptr inbounds %struct.metadata_dst, ptr %11, i32 0, i32 2
  %30 = getelementptr inbounds %struct.metadata_dst, ptr %13, i32 0, i32 2
  %31 = getelementptr inbounds %struct.metadata_dst, ptr %11, i32 0, i32 2, i32 0, i32 2
  %32 = load i8, ptr %31, align 8
  %33 = zext i8 %32 to i32
  %34 = add nuw nsw i32 %33, 72
  %35 = tail call i32 @memcmp(ptr noundef %29, ptr noundef %30, i32 noundef %34)
  br label %36

36:                                               ; preds = %28, %24, %23, %17, %9, %2
  %37 = phi i32 [ %35, %28 ], [ %27, %24 ], [ 0, %2 ], [ 1, %17 ], [ 1, %9 ], [ 1, %23 ]
  ret i32 %37
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @skb_frag_unref(ptr nocapture noundef readonly %0) unnamed_addr #10 {
  %2 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 15
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.skb_shared_info, ptr %3, i32 0, i32 12
  %5 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 11
  %6 = load i8, ptr %5, align 2
  %7 = icmp slt i8 %6, 0
  %8 = load ptr, ptr %4, align 4
  br i1 %7, label %9, label %11

9:                                                ; preds = %1
  %10 = tail call zeroext i1 @page_pool_return_skb_page(ptr noundef %8) #12
  br i1 %10, label %28, label %11

11:                                               ; preds = %9, %1
  %12 = getelementptr inbounds %struct.page, ptr %8, i32 0, i32 1
  %13 = load volatile i32, ptr %12, align 4
  %14 = and i32 %13, 1
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %18, label %16, !prof !17

16:                                               ; preds = %11
  %17 = add i32 %13, -1
  br label %20

18:                                               ; preds = %11
  %19 = ptrtoint ptr %8 to i32
  br label %20

20:                                               ; preds = %18, %16
  %21 = phi i32 [ %17, %16 ], [ %19, %18 ]
  %22 = inttoptr i32 %21 to ptr
  %23 = getelementptr inbounds %struct.page, ptr %22, i32 0, i32 3
  tail call void asm sideeffect "dmb ish", "~{memory}"() #12, !srcloc !27
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %23) #12, !srcloc !28
  %24 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %23, ptr %23, i32 1, ptr elementtype(i32) %23) #12, !srcloc !29
  %25 = extractvalue { i32, i32 } %24, 0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #12, !srcloc !30
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %20
  tail call void @__put_page(ptr noundef %22) #12
  br label %28

28:                                               ; preds = %27, %20, %9
  ret void
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memmove.p0.p0.i32(ptr nocapture writeonly, ptr nocapture readonly, i32, i1 immarg) #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @page_pool_return_skb_page(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__put_page(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_napi_gro_receive_exit(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__napi_alloc_skb(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @net_ratelimit() local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @napi_reuse_skb(ptr nocapture noundef %0, ptr noundef %1) unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 11
  %4 = load i8, ptr %3, align 2
  %5 = and i8 %4, 64
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %8, label %7, !prof !17

7:                                                ; preds = %2
  tail call void @consume_skb(ptr noundef %1) #12
  br label %73

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 5
  %10 = load i32, ptr %9, align 8
  %11 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 6
  %12 = load i32, ptr %11, align 4
  %13 = sub i32 %10, %12
  store i32 %12, ptr %9, align 8
  %14 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 17
  %15 = load ptr, ptr %14, align 4
  %16 = getelementptr i8, ptr %15, i32 %13
  %17 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 16
  %18 = load ptr, ptr %17, align 8
  %19 = ptrtoint ptr %16 to i32
  %20 = ptrtoint ptr %18 to i32
  %21 = sub i32 %20, %19
  %22 = add i32 %21, 66
  %23 = getelementptr i8, ptr %16, i32 %22
  store ptr %23, ptr %14, align 4
  %24 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 14
  %25 = load ptr, ptr %24, align 8
  %26 = getelementptr i8, ptr %25, i32 %22
  store ptr %26, ptr %24, align 8
  %27 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 13, i32 0, i32 3
  %28 = load i16, ptr %27, align 2
  %29 = and i16 %28, -2
  store i16 %29, ptr %27, align 2
  %30 = getelementptr inbounds %struct.napi_struct, ptr %0, i32 0, i32 6
  %31 = load ptr, ptr %30, align 4
  %32 = getelementptr inbounds %struct.anon, ptr %1, i32 0, i32 2
  store ptr %31, ptr %32, align 8
  %33 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 13, i32 0, i32 6
  store i32 0, ptr %33, align 4
  %34 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 13
  %35 = load i16, ptr %34, align 8
  %36 = and i16 %35, -8200
  store i16 %36, ptr %34, align 8
  %37 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 15
  %38 = load ptr, ptr %37, align 4
  %39 = getelementptr inbounds %struct.skb_shared_info, ptr %38, i32 0, i32 8
  store i32 0, ptr %39, align 8
  %40 = load ptr, ptr %37, align 4
  %41 = load ptr, ptr %17, align 8
  %42 = ptrtoint ptr %40 to i32
  %43 = ptrtoint ptr %41 to i32
  %44 = add i32 %42, 448
  %45 = sub i32 %44, %43
  %46 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 18
  store i32 %45, ptr %46, align 8
  %47 = load i16, ptr %27, align 2
  %48 = and i16 %47, 16384
  %49 = icmp eq i16 %48, 0
  br i1 %49, label %71, label %50, !prof !17

50:                                               ; preds = %8
  %51 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 4, i32 0, i32 1
  %52 = load ptr, ptr %51, align 4
  %53 = icmp eq ptr %52, null
  br i1 %53, label %56, label %54

54:                                               ; preds = %50
  tail call void %52(ptr noundef %1) #12
  store ptr null, ptr %51, align 4
  %55 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 1
  store ptr null, ptr %55, align 4
  br label %61

56:                                               ; preds = %50
  %57 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 1
  %58 = load ptr, ptr %57, align 4
  %59 = icmp eq ptr %58, null
  br i1 %59, label %61, label %60, !prof !17

60:                                               ; preds = %56
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/skbuff.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2859, 0\0A.popsection", ""() #12, !srcloc !36
  unreachable

61:                                               ; preds = %56, %54
  %62 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 12
  %63 = load i8, ptr %62, align 1
  %64 = icmp eq i8 %63, 0
  br i1 %64, label %68, label %65, !prof !17

65:                                               ; preds = %61
  %66 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 20
  %67 = load ptr, ptr %66, align 8
  tail call void @__skb_ext_put(ptr noundef %67) #12
  store i8 0, ptr %62, align 1
  br label %68

68:                                               ; preds = %65, %61
  %69 = load i16, ptr %27, align 2
  %70 = and i16 %69, -16385
  store i16 %70, ptr %27, align 2
  br label %71

71:                                               ; preds = %68, %8
  %72 = getelementptr inbounds %struct.napi_struct, ptr %0, i32 0, i32 8
  store ptr %1, ptr %72, align 8
  br label %73

73:                                               ; preds = %71, %7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__pskb_pull_tail(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @consume_skb(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__skb_ext_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_napi_gro_frags_entry(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i16 @eth_type_trans(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_napi_gro_frags_exit(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #4

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #11

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { argmemonly nofree nounwind willreturn }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { nofree norecurse nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #8 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { inlinehint mustprogress nofree nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #10 = { inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #11 = { argmemonly nofree nounwind readonly willreturn }
attributes #12 = { nounwind }
attributes #13 = { cold nounwind }
attributes #14 = { nounwind readnone }

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
!8 = !{i64 2149388767}
!9 = !{i64 2149210822}
!10 = !{i64 2149206646}
!11 = !{i64 2149206721, i64 2149206748, i64 2149206795, i64 2149206817, i64 2149206845, i64 2149206865}
!12 = !{i64 2149233825}
!13 = !{i64 2149363526}
!14 = !{i64 2149363743}
!15 = !{!"branch_weights", i32 1, i32 2000}
!16 = !{i64 2153304558, i64 2153305046, i64 2153304595, i64 2153304651, i64 2153304685, i64 2153304709, i64 2153304750, i64 2153304771, i64 2153304799, i64 2153304833}
!17 = !{!"branch_weights", i32 2000, i32 1}
!18 = !{i32 0, i32 33}
!19 = !{i64 2156740033}
!20 = !{i64 2156740195}
!21 = !{i32 0, i32 5}
!22 = !{i64 2156841748}
!23 = !{i64 2156841908}
!24 = !{i64 2157072583, i64 2157073062, i64 2157072620, i64 2157072676, i64 2157072710, i64 2157072734, i64 2157072775, i64 2157072796, i64 2157072824, i64 2157072858}
!25 = !{!"branch_weights", i32 2146410443, i32 1073205}
!26 = !{!"branch_weights", i32 1073205, i32 2146410443}
!27 = !{i64 2148186310}
!28 = !{i64 583472, i64 2148073443, i64 2148073469, i64 2148073516, i64 2148073538, i64 2148073566, i64 2148073586}
!29 = !{i64 2148088696, i64 2148088728, i64 2148088757, i64 2148088791, i64 2148088822, i64 2148088845}
!30 = !{i64 2148186513}
!31 = !{i64 2156719570}
!32 = !{i64 2156719728}
!33 = !{i64 2156825726}
!34 = !{i64 2156825882}
!35 = !{i64 5207113}
!36 = !{i64 2153317916, i64 2153318404, i64 2153317953, i64 2153318009, i64 2153318043, i64 2153318067, i64 2153318108, i64 2153318129, i64 2153318157, i64 2153318191}
