; ModuleID = '/llk/IR/net/sched/sch_generic.c_pt.bc'
source_filename = "../net/sched/sch_generic.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_default_qdisc_ops:\09\09\09\09\09"
module asm "\09.asciz \09\22default_qdisc_ops\22\09\09\09\09\09"
module asm "__kstrtabns_default_qdisc_ops:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_dev_trans_start:\09\09\09\09\09"
module asm "\09.asciz \09\22dev_trans_start\22\09\09\09\09\09"
module asm "__kstrtabns_dev_trans_start:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_netif_tx_lock:\09\09\09\09\09"
module asm "\09.asciz \09\22netif_tx_lock\22\09\09\09\09\09"
module asm "__kstrtabns_netif_tx_lock:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_netif_tx_unlock:\09\09\09\09\09"
module asm "\09.asciz \09\22netif_tx_unlock\22\09\09\09\09\09"
module asm "__kstrtabns_netif_tx_unlock:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___netdev_watchdog_up:\09\09\09\09\09"
module asm "\09.asciz \09\22__netdev_watchdog_up\22\09\09\09\09\09"
module asm "__kstrtabns___netdev_watchdog_up:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_netif_carrier_on:\09\09\09\09\09"
module asm "\09.asciz \09\22netif_carrier_on\22\09\09\09\09\09"
module asm "__kstrtabns_netif_carrier_on:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_netif_carrier_off:\09\09\09\09\09"
module asm "\09.asciz \09\22netif_carrier_off\22\09\09\09\09\09"
module asm "__kstrtabns_netif_carrier_off:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_netif_carrier_event:\09\09\09\09\09"
module asm "\09.asciz \09\22netif_carrier_event\22\09\09\09\09\09"
module asm "__kstrtabns_netif_carrier_event:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_noop_qdisc:\09\09\09\09\09"
module asm "\09.asciz \09\22noop_qdisc\22\09\09\09\09\09"
module asm "__kstrtabns_noop_qdisc:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_pfifo_fast_ops:\09\09\09\09\09"
module asm "\09.asciz \09\22pfifo_fast_ops\22\09\09\09\09\09"
module asm "__kstrtabns_pfifo_fast_ops:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_qdisc_create_dflt:\09\09\09\09\09"
module asm "\09.asciz \09\22qdisc_create_dflt\22\09\09\09\09\09"
module asm "__kstrtabns_qdisc_create_dflt:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_qdisc_reset:\09\09\09\09\09"
module asm "\09.asciz \09\22qdisc_reset\22\09\09\09\09\09"
module asm "__kstrtabns_qdisc_reset:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_qdisc_put:\09\09\09\09\09"
module asm "\09.asciz \09\22qdisc_put\22\09\09\09\09\09"
module asm "__kstrtabns_qdisc_put:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_qdisc_put_unlocked:\09\09\09\09\09"
module asm "\09.asciz \09\22qdisc_put_unlocked\22\09\09\09\09\09"
module asm "__kstrtabns_qdisc_put_unlocked:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_dev_graft_qdisc:\09\09\09\09\09"
module asm "\09.asciz \09\22dev_graft_qdisc\22\09\09\09\09\09"
module asm "__kstrtabns_dev_graft_qdisc:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_dev_activate:\09\09\09\09\09"
module asm "\09.asciz \09\22dev_activate\22\09\09\09\09\09"
module asm "__kstrtabns_dev_activate:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_dev_deactivate:\09\09\09\09\09"
module asm "\09.asciz \09\22dev_deactivate\22\09\09\09\09\09"
module asm "__kstrtabns_dev_deactivate:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_mq_change_real_num_tx:\09\09\09\09\09"
module asm "\09.asciz \09\22mq_change_real_num_tx\22\09\09\09\09\09"
module asm "__kstrtabns_mq_change_real_num_tx:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_psched_ratecfg_precompute:\09\09\09\09\09"
module asm "\09.asciz \09\22psched_ratecfg_precompute\22\09\09\09\09\09"
module asm "__kstrtabns_psched_ratecfg_precompute:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_psched_ppscfg_precompute:\09\09\09\09\09"
module asm "\09.asciz \09\22psched_ppscfg_precompute\22\09\09\09\09\09"
module asm "__kstrtabns_psched_ppscfg_precompute:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_mini_qdisc_pair_swap:\09\09\09\09\09"
module asm "\09.asciz \09\22mini_qdisc_pair_swap\22\09\09\09\09\09"
module asm "__kstrtabns_mini_qdisc_pair_swap:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_mini_qdisc_pair_block_init:\09\09\09\09\09"
module asm "\09.asciz \09\22mini_qdisc_pair_block_init\22\09\09\09\09\09"
module asm "__kstrtabns_mini_qdisc_pair_block_init:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_mini_qdisc_pair_init:\09\09\09\09\09"
module asm "\09.asciz \09\22mini_qdisc_pair_init\22\09\09\09\09\09"
module asm "__kstrtabns_mini_qdisc_pair_init:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.Qdisc_ops = type { ptr, ptr, [16 x i8], i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.netdev_queue = type { ptr, %struct.netdevice_tracker, ptr, ptr, %struct.kobject, i32, %struct.atomic_t, ptr, [4 x i8], %struct.spinlock, i32, i32, i32, [48 x i8], %struct.dql }
%struct.netdevice_tracker = type {}
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.list_head = type { ptr, ptr }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.spinlock = type { %union.anon.12 }
%union.anon.12 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.13 }
%union.anon.13 = type { i32 }
%struct.dql = type { i32, i32, i32, [52 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [24 x i8] }
%struct.Qdisc = type { ptr, ptr, i32, i32, ptr, ptr, %struct.hlist_node, i32, i32, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, %struct.sk_buff_head, %struct.qdisc_skb_head, %struct.gnet_stats_basic_sync, %struct.gnet_stats_queue, i32, i32, ptr, %struct.sk_buff_head, [16 x i8], %struct.spinlock, %struct.spinlock, %struct.callback_head, %struct.netdevice_tracker, [48 x i8], [0 x i32] }
%struct.hlist_node = type { ptr, ptr }
%struct.qdisc_skb_head = type { ptr, ptr, i32, %struct.spinlock }
%struct.gnet_stats_basic_sync = type { %struct.u64_stats_t, %struct.u64_stats_t, %struct.u64_stats_sync, [12 x i8] }
%struct.u64_stats_t = type { i64 }
%struct.u64_stats_sync = type { %struct.seqcount }
%struct.seqcount = type { i32 }
%struct.gnet_stats_queue = type { i32, i32, i32, i32, i32 }
%struct.sk_buff_head = type { %union.anon.58, i32, %struct.spinlock }
%union.anon.58 = type { %struct.anon.59 }
%struct.anon.59 = type { ptr, ptr }
%struct.callback_head = type { ptr, ptr }
%struct.cpumask = type { [1 x i32] }
%struct.tracepoint = type { ptr, %struct.static_key, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.static_key = type { %struct.atomic_t }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, i32, i32, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [8 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, %struct.possible_net_t, ptr, i32, %union.anon.136, %struct.device, [4 x ptr], ptr, ptr, i32, i16, i16, [16 x %struct.netdev_tc_txq], [16 x i8], ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], %struct.netdevice_tracker, %struct.netdevice_tracker, [48 x i8] }
%struct.anon = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%struct.rb_root = type { ptr }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32 }
%struct.ref_tracker_dir = type {}
%struct.possible_net_t = type {}
%union.anon.136 = type { ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
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
%struct.thread_info = type { i32, i32, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], [4 x i8], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.anon.0 = type { ptr, ptr, %union.anon.1 }
%union.anon.1 = type { ptr }
%struct.sk_buff = type { %union.anon, %union.anon.2, %union.anon.107, [48 x i8], %union.anon.108, i32, i32, i16, i16, i16, [0 x i8], i8, i8, %union.anon.110, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon = type { %struct.anon.0 }
%union.anon.2 = type { ptr }
%union.anon.107 = type { i64 }
%union.anon.108 = type { %struct.anon.109 }
%struct.anon.109 = type { i32, ptr }
%union.anon.110 = type { %struct.anon.111 }
%struct.anon.111 = type { [0 x i8], i16, [0 x i8], i16, %union.anon.112, i32, i32, i32, i16, i16, %union.anon.114, %union.anon.115, %union.anon.116, i16, i16, i16, i16, i16, i16, i16 }
%union.anon.112 = type { i32 }
%union.anon.114 = type { i32 }
%union.anon.115 = type { i32 }
%union.anon.116 = type { i16 }
%struct.skb_ext = type { %struct.refcount_struct, [1 x i8], i8, [2 x i8], [0 x i8] }
%struct.sec_path = type { i32, i32, [6 x ptr], [1 x %struct.xfrm_offload] }
%struct.xfrm_offload = type { %struct.anon.146, i32, i32, i8, i8 }
%struct.anon.146 = type { i32, i32 }
%struct.net_device_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.skb_array = type { %struct.ptr_ring }
%struct.ptr_ring = type { i32, %struct.spinlock, [56 x i8], i32, i32, %struct.spinlock, [52 x i8], i32, i32, ptr, [52 x i8] }
%struct.skb_shared_info = type { i8, i8, i8, i8, i16, i16, ptr, %struct.skb_shared_hwtstamps, i32, i32, %struct.atomic_t, ptr, [17 x %struct.bio_vec] }
%struct.skb_shared_hwtstamps = type { i64 }
%struct.bio_vec = type { ptr, i32, i32 }
%struct.tc_prio_qopt = type { i32, [16 x i8] }
%struct.tc_ratespec = type { i8, i8, i16, i16, i16, i32 }
%struct.psched_ratecfg = type { i64, i32, i16, i16, i8, i8 }
%struct.psched_pktrate = type { i64, i32, i8 }
%struct.mini_Qdisc_pair = type { %struct.mini_Qdisc, %struct.mini_Qdisc, ptr }
%struct.mini_Qdisc = type { ptr, ptr, ptr, ptr, i32 }

@pfifo_fast_ops = dso_local global %struct.Qdisc_ops { ptr null, ptr null, [16 x i8] c"pfifo_fast\00\00\00\00\00\00", i32 576, i32 288, ptr @pfifo_fast_enqueue, ptr @pfifo_fast_dequeue, ptr @pfifo_fast_peek, ptr @pfifo_fast_init, ptr @pfifo_fast_reset, ptr @pfifo_fast_destroy, ptr null, ptr null, ptr @pfifo_fast_change_tx_queue_len, ptr null, ptr @pfifo_fast_dump, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, section ".data..read_mostly", align 4
@default_qdisc_ops = dso_local global ptr @pfifo_fast_ops, align 4
@__kstrtab_default_qdisc_ops = external dso_local constant [0 x i8], align 1
@__kstrtabns_default_qdisc_ops = external dso_local constant [0 x i8], align 1
@__ksymtab_default_qdisc_ops = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @default_qdisc_ops to i32), ptr @__kstrtab_default_qdisc_ops, ptr @__kstrtabns_default_qdisc_ops }, section "___ksymtab+default_qdisc_ops", align 4
@.str = private unnamed_addr constant [26 x i8] c"\014BUG %s code %d qlen %d\0A\00", align 1
@dev_tx_weight = external dso_local local_unnamed_addr global i32, align 4
@__kstrtab_dev_trans_start = external dso_local constant [0 x i8], align 1
@__kstrtabns_dev_trans_start = external dso_local constant [0 x i8], align 1
@__ksymtab_dev_trans_start = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @dev_trans_start to i32), ptr @__kstrtab_dev_trans_start, ptr @__kstrtabns_dev_trans_start }, section "___ksymtab+dev_trans_start", align 4
@__kstrtab_netif_tx_lock = external dso_local constant [0 x i8], align 1
@__kstrtabns_netif_tx_lock = external dso_local constant [0 x i8], align 1
@__ksymtab_netif_tx_lock = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @netif_tx_lock to i32), ptr @__kstrtab_netif_tx_lock, ptr @__kstrtabns_netif_tx_lock }, section "___ksymtab+netif_tx_lock", align 4
@__kstrtab_netif_tx_unlock = external dso_local constant [0 x i8], align 1
@__kstrtabns_netif_tx_unlock = external dso_local constant [0 x i8], align 1
@__ksymtab_netif_tx_unlock = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @netif_tx_unlock to i32), ptr @__kstrtab_netif_tx_unlock, ptr @__kstrtabns_netif_tx_unlock }, section "___ksymtab+netif_tx_unlock", align 4
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 64
@__kstrtab___netdev_watchdog_up = external dso_local constant [0 x i8], align 1
@__kstrtabns___netdev_watchdog_up = external dso_local constant [0 x i8], align 1
@__ksymtab___netdev_watchdog_up = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__netdev_watchdog_up to i32), ptr @__kstrtab___netdev_watchdog_up, ptr @__kstrtabns___netdev_watchdog_up }, section "___ksymtab_gpl+__netdev_watchdog_up", align 4
@__kstrtab_netif_carrier_on = external dso_local constant [0 x i8], align 1
@__kstrtabns_netif_carrier_on = external dso_local constant [0 x i8], align 1
@__ksymtab_netif_carrier_on = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @netif_carrier_on to i32), ptr @__kstrtab_netif_carrier_on, ptr @__kstrtabns_netif_carrier_on }, section "___ksymtab+netif_carrier_on", align 4
@__kstrtab_netif_carrier_off = external dso_local constant [0 x i8], align 1
@__kstrtabns_netif_carrier_off = external dso_local constant [0 x i8], align 1
@__ksymtab_netif_carrier_off = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @netif_carrier_off to i32), ptr @__kstrtab_netif_carrier_off, ptr @__kstrtabns_netif_carrier_off }, section "___ksymtab+netif_carrier_off", align 4
@__kstrtab_netif_carrier_event = external dso_local constant [0 x i8], align 1
@__kstrtabns_netif_carrier_event = external dso_local constant [0 x i8], align 1
@__ksymtab_netif_carrier_event = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @netif_carrier_event to i32), ptr @__kstrtab_netif_carrier_event, ptr @__kstrtabns_netif_carrier_event }, section "___ksymtab_gpl+netif_carrier_event", align 4
@noop_qdisc_ops = dso_local global %struct.Qdisc_ops { ptr null, ptr null, [16 x i8] c"noop\00\00\00\00\00\00\00\00\00\00\00\00", i32 0, i32 0, ptr @noop_enqueue, ptr @noop_dequeue, ptr @noop_dequeue, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, section ".data..read_mostly", align 4
@noop_netdev_queue = internal global %struct.netdev_queue { ptr null, %struct.netdevice_tracker zeroinitializer, ptr @noop_qdisc, ptr @noop_qdisc, %struct.kobject zeroinitializer, i32 0, %struct.atomic_t zeroinitializer, ptr null, [4 x i8] undef, %struct.spinlock zeroinitializer, i32 0, i32 0, i32 0, [48 x i8] undef, %struct.dql zeroinitializer }, align 64
@noop_qdisc = dso_local global %struct.Qdisc { ptr @noop_enqueue, ptr @noop_dequeue, i32 1, i32 0, ptr @noop_qdisc_ops, ptr null, %struct.hlist_node zeroinitializer, i32 0, i32 0, ptr @noop_netdev_queue, ptr null, ptr null, ptr null, i32 0, %struct.refcount_struct zeroinitializer, %struct.sk_buff_head { %union.anon.58 { %struct.anon.59 { ptr getelementptr (i8, ptr @noop_qdisc, i64 64), ptr getelementptr (i8, ptr @noop_qdisc, i64 64) } }, i32 0, %struct.spinlock zeroinitializer }, %struct.qdisc_skb_head zeroinitializer, %struct.gnet_stats_basic_sync zeroinitializer, %struct.gnet_stats_queue zeroinitializer, i32 0, i32 0, ptr null, %struct.sk_buff_head { %union.anon.58 { %struct.anon.59 { ptr getelementptr (i8, ptr @noop_qdisc, i64 160), ptr getelementptr (i8, ptr @noop_qdisc, i64 160) } }, i32 0, %struct.spinlock zeroinitializer }, [16 x i8] undef, %struct.spinlock zeroinitializer, %struct.spinlock zeroinitializer, %struct.callback_head zeroinitializer, %struct.netdevice_tracker zeroinitializer, [48 x i8] undef, [0 x i32] zeroinitializer }, align 64
@__kstrtab_noop_qdisc = external dso_local constant [0 x i8], align 1
@__kstrtabns_noop_qdisc = external dso_local constant [0 x i8], align 1
@__ksymtab_noop_qdisc = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @noop_qdisc to i32), ptr @__kstrtab_noop_qdisc, ptr @__kstrtabns_noop_qdisc }, section "___ksymtab+noop_qdisc", align 4
@noqueue_qdisc_ops = dso_local global %struct.Qdisc_ops { ptr null, ptr null, [16 x i8] c"noqueue\00\00\00\00\00\00\00\00\00", i32 0, i32 0, ptr @noop_enqueue, ptr @noop_dequeue, ptr @noop_dequeue, ptr @noqueue_init, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, section ".data..read_mostly", align 4
@__kstrtab_pfifo_fast_ops = external dso_local constant [0 x i8], align 1
@__kstrtabns_pfifo_fast_ops = external dso_local constant [0 x i8], align 1
@__ksymtab_pfifo_fast_ops = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @pfifo_fast_ops to i32), ptr @__kstrtab_pfifo_fast_ops, ptr @__kstrtabns_pfifo_fast_ops }, section "___ksymtab+pfifo_fast_ops", align 4
@qdisc_alloc.__msg = internal constant [22 x i8] c"No device queue given\00", align 1
@__cpu_possible_mask = external dso_local global %struct.cpumask, align 4
@nr_cpu_ids = external dso_local local_unnamed_addr global i32, align 4
@__per_cpu_offset = external dso_local local_unnamed_addr global [16 x i32], align 4
@qdisc_create_dflt.__msg = internal constant [44 x i8] c"Failed to increase module reference counter\00", align 1
@__kstrtab_qdisc_create_dflt = external dso_local constant [0 x i8], align 1
@__kstrtabns_qdisc_create_dflt = external dso_local constant [0 x i8], align 1
@__ksymtab_qdisc_create_dflt = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @qdisc_create_dflt to i32), ptr @__kstrtab_qdisc_create_dflt, ptr @__kstrtabns_qdisc_create_dflt }, section "___ksymtab+qdisc_create_dflt", align 4
@__kstrtab_qdisc_reset = external dso_local constant [0 x i8], align 1
@__kstrtabns_qdisc_reset = external dso_local constant [0 x i8], align 1
@__ksymtab_qdisc_reset = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @qdisc_reset to i32), ptr @__kstrtab_qdisc_reset, ptr @__kstrtabns_qdisc_reset }, section "___ksymtab+qdisc_reset", align 4
@__kstrtab_qdisc_put = external dso_local constant [0 x i8], align 1
@__kstrtabns_qdisc_put = external dso_local constant [0 x i8], align 1
@__ksymtab_qdisc_put = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @qdisc_put to i32), ptr @__kstrtab_qdisc_put, ptr @__kstrtabns_qdisc_put }, section "___ksymtab+qdisc_put", align 4
@__kstrtab_qdisc_put_unlocked = external dso_local constant [0 x i8], align 1
@__kstrtabns_qdisc_put_unlocked = external dso_local constant [0 x i8], align 1
@__ksymtab_qdisc_put_unlocked = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @qdisc_put_unlocked to i32), ptr @__kstrtab_qdisc_put_unlocked, ptr @__kstrtabns_qdisc_put_unlocked }, section "___ksymtab+qdisc_put_unlocked", align 4
@__kstrtab_dev_graft_qdisc = external dso_local constant [0 x i8], align 1
@__kstrtabns_dev_graft_qdisc = external dso_local constant [0 x i8], align 1
@__ksymtab_dev_graft_qdisc = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @dev_graft_qdisc to i32), ptr @__kstrtab_dev_graft_qdisc, ptr @__kstrtabns_dev_graft_qdisc }, section "___ksymtab+dev_graft_qdisc", align 4
@__kstrtab_dev_activate = external dso_local constant [0 x i8], align 1
@__kstrtabns_dev_activate = external dso_local constant [0 x i8], align 1
@__ksymtab_dev_activate = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @dev_activate to i32), ptr @__kstrtab_dev_activate, ptr @__kstrtabns_dev_activate }, section "___ksymtab+dev_activate", align 4
@__kstrtab_dev_deactivate = external dso_local constant [0 x i8], align 1
@__kstrtabns_dev_deactivate = external dso_local constant [0 x i8], align 1
@__ksymtab_dev_deactivate = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @dev_deactivate to i32), ptr @__kstrtab_dev_deactivate, ptr @__kstrtabns_dev_deactivate }, section "___ksymtab+dev_deactivate", align 4
@__kstrtab_mq_change_real_num_tx = external dso_local constant [0 x i8], align 1
@__kstrtabns_mq_change_real_num_tx = external dso_local constant [0 x i8], align 1
@__ksymtab_mq_change_real_num_tx = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @mq_change_real_num_tx to i32), ptr @__kstrtab_mq_change_real_num_tx, ptr @__kstrtabns_mq_change_real_num_tx }, section "___ksymtab+mq_change_real_num_tx", align 4
@.str.1 = private unnamed_addr constant [24 x i8] c"net/sched/sch_generic.c\00", align 1
@__kstrtab_psched_ratecfg_precompute = external dso_local constant [0 x i8], align 1
@__kstrtabns_psched_ratecfg_precompute = external dso_local constant [0 x i8], align 1
@__ksymtab_psched_ratecfg_precompute = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @psched_ratecfg_precompute to i32), ptr @__kstrtab_psched_ratecfg_precompute, ptr @__kstrtabns_psched_ratecfg_precompute }, section "___ksymtab+psched_ratecfg_precompute", align 4
@__kstrtab_psched_ppscfg_precompute = external dso_local constant [0 x i8], align 1
@__kstrtabns_psched_ppscfg_precompute = external dso_local constant [0 x i8], align 1
@__ksymtab_psched_ppscfg_precompute = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @psched_ppscfg_precompute to i32), ptr @__kstrtab_psched_ppscfg_precompute, ptr @__kstrtabns_psched_ppscfg_precompute }, section "___ksymtab+psched_ppscfg_precompute", align 4
@__kstrtab_mini_qdisc_pair_swap = external dso_local constant [0 x i8], align 1
@__kstrtabns_mini_qdisc_pair_swap = external dso_local constant [0 x i8], align 1
@__ksymtab_mini_qdisc_pair_swap = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @mini_qdisc_pair_swap to i32), ptr @__kstrtab_mini_qdisc_pair_swap, ptr @__kstrtabns_mini_qdisc_pair_swap }, section "___ksymtab+mini_qdisc_pair_swap", align 4
@__kstrtab_mini_qdisc_pair_block_init = external dso_local constant [0 x i8], align 1
@__kstrtabns_mini_qdisc_pair_block_init = external dso_local constant [0 x i8], align 1
@__ksymtab_mini_qdisc_pair_block_init = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @mini_qdisc_pair_block_init to i32), ptr @__kstrtab_mini_qdisc_pair_block_init, ptr @__kstrtabns_mini_qdisc_pair_block_init }, section "___ksymtab+mini_qdisc_pair_block_init", align 4
@__kstrtab_mini_qdisc_pair_init = external dso_local constant [0 x i8], align 1
@__kstrtabns_mini_qdisc_pair_init = external dso_local constant [0 x i8], align 1
@__ksymtab_mini_qdisc_pair_init = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @mini_qdisc_pair_init to i32), ptr @__kstrtab_mini_qdisc_pair_init, ptr @__kstrtabns_mini_qdisc_pair_init }, section "___ksymtab+mini_qdisc_pair_init", align 4
@__tracepoint_qdisc_dequeue = external dso_local global %struct.tracepoint, align 4
@__cpu_online_mask = external dso_local global %struct.cpumask, align 4
@prio2band = internal unnamed_addr constant [16 x i8] c"\01\02\02\02\01\02\00\00\01\01\01\01\01\01\01\01", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@__tracepoint_qdisc_create = external dso_local global %struct.tracepoint, align 4
@__tracepoint_qdisc_reset = external dso_local global %struct.tracepoint, align 4
@__tracepoint_qdisc_destroy = external dso_local global %struct.tracepoint, align 4
@mq_qdisc_ops = external dso_local global %struct.Qdisc_ops, align 4
@.str.3 = private unnamed_addr constant [41 x i8] c"default qdisc (%s) fail, fallback to %s\0A\00", align 1
@dev_watchdog.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.4 = private unnamed_addr constant [57 x i8] c"\016NETDEV WATCHDOG: %s (%s): transmit queue %u timed out\0A\00", align 1
@__tracepoint_net_dev_xmit_timeout = external dso_local global %struct.tracepoint, align 4
@llvm.compiler.used = appending global [23 x ptr] [ptr @__ksymtab___netdev_watchdog_up, ptr @__ksymtab_default_qdisc_ops, ptr @__ksymtab_dev_activate, ptr @__ksymtab_dev_deactivate, ptr @__ksymtab_dev_graft_qdisc, ptr @__ksymtab_dev_trans_start, ptr @__ksymtab_mini_qdisc_pair_block_init, ptr @__ksymtab_mini_qdisc_pair_init, ptr @__ksymtab_mini_qdisc_pair_swap, ptr @__ksymtab_mq_change_real_num_tx, ptr @__ksymtab_netif_carrier_event, ptr @__ksymtab_netif_carrier_off, ptr @__ksymtab_netif_carrier_on, ptr @__ksymtab_netif_tx_lock, ptr @__ksymtab_netif_tx_unlock, ptr @__ksymtab_noop_qdisc, ptr @__ksymtab_pfifo_fast_ops, ptr @__ksymtab_psched_ppscfg_precompute, ptr @__ksymtab_psched_ratecfg_precompute, ptr @__ksymtab_qdisc_create_dflt, ptr @__ksymtab_qdisc_put, ptr @__ksymtab_qdisc_put_unlocked, ptr @__ksymtab_qdisc_reset], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local zeroext i1 @sch_direct_xmit(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, i1 noundef zeroext %5) local_unnamed_addr #0 {
  %7 = alloca i32, align 4
  %8 = alloca i8, align 1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #17
  store i32 16, ptr %7, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %8) #17
  store i8 0, ptr %8, align 1
  %9 = icmp eq ptr %4, null
  br i1 %9, label %13, label %10

10:                                               ; preds = %6
  tail call void asm sideeffect "dmb ish", "~{memory}"() #17, !srcloc !9
  %11 = load i16, ptr %4, align 4
  %12 = add i16 %11, 1
  store i16 %12, ptr %4, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #17, !srcloc !10
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #17, !srcloc !11
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !12
  br label %13

13:                                               ; preds = %10, %6
  br i1 %5, label %14, label %16

14:                                               ; preds = %13
  %15 = call ptr @validate_xmit_skb_list(ptr noundef %0, ptr noundef %2, ptr noundef nonnull %8) #17
  br label %16

16:                                               ; preds = %14, %13
  %17 = phi ptr [ %15, %14 ], [ %0, %13 ]
  %18 = icmp eq ptr %17, null
  br i1 %18, label %53, label %19, !prof !13

19:                                               ; preds = %16
  %20 = getelementptr inbounds %struct.net_device, ptr %2, i32 0, i32 23
  %21 = load i64, ptr %20, align 16
  %22 = and i64 %21, 4096
  %23 = icmp eq i64 %22, 0
  br i1 %23, label %24, label %30

24:                                               ; preds = %19
  %25 = tail call ptr @llvm.thread.pointer() #17
  %26 = getelementptr inbounds %struct.thread_info, ptr %25, i32 0, i32 2
  %27 = load i32, ptr %26, align 8
  %28 = getelementptr inbounds %struct.netdev_queue, ptr %3, i32 0, i32 9
  call void @_raw_spin_lock(ptr noundef %28) #17
  %29 = getelementptr inbounds %struct.netdev_queue, ptr %3, i32 0, i32 10
  store volatile i32 %27, ptr %29, align 4
  br label %30

30:                                               ; preds = %24, %19
  %31 = getelementptr inbounds %struct.netdev_queue, ptr %3, i32 0, i32 12
  %32 = load i32, ptr %31, align 4
  %33 = and i32 %32, 7
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %30
  %36 = call ptr @dev_hard_start_xmit(ptr noundef nonnull %17, ptr noundef %2, ptr noundef %3, ptr noundef nonnull %7) #17
  br label %43

37:                                               ; preds = %30
  %38 = getelementptr inbounds %struct.Qdisc, ptr %1, i32 0, i32 19
  call void @_clear_bit(i32 noundef 2, ptr noundef %38) #17
  call void asm sideeffect "dmb ish", "~{memory}"() #17, !srcloc !14
  %39 = load i32, ptr %31, align 4
  %40 = and i32 %39, 7
  %41 = icmp eq i32 %40, 0
  %42 = select i1 %41, i32 2, i32 3
  call void @_set_bit(i32 noundef %42, ptr noundef %38) #17
  br label %43

43:                                               ; preds = %37, %35
  %44 = phi ptr [ %17, %37 ], [ %36, %35 ]
  %45 = load i64, ptr %20, align 16
  %46 = and i64 %45, 4096
  %47 = icmp eq i64 %46, 0
  br i1 %47, label %48, label %55

48:                                               ; preds = %43
  %49 = getelementptr inbounds %struct.netdev_queue, ptr %3, i32 0, i32 10
  store volatile i32 -1, ptr %49, align 4
  %50 = getelementptr inbounds %struct.netdev_queue, ptr %3, i32 0, i32 9
  call void asm sideeffect "dmb ish", "~{memory}"() #17, !srcloc !9
  %51 = load i16, ptr %50, align 4
  %52 = add i16 %51, 1
  store i16 %52, ptr %50, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #17, !srcloc !10
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #17, !srcloc !11
  call void asm sideeffect "", "~{memory}"() #17, !srcloc !12
  br label %55

53:                                               ; preds = %16
  br i1 %9, label %151, label %54

54:                                               ; preds = %53
  call void @_raw_spin_lock(ptr noundef nonnull %4) #17
  br label %151

55:                                               ; preds = %48, %43
  br i1 %9, label %57, label %56

56:                                               ; preds = %55
  call void @_raw_spin_lock(ptr noundef nonnull %4) #17
  br label %57

57:                                               ; preds = %56, %55
  %58 = load i32, ptr %7, align 4
  %59 = icmp slt i32 %58, 15
  br i1 %59, label %151, label %60

60:                                               ; preds = %57
  %61 = icmp eq i32 %58, 16
  br i1 %61, label %70, label %62, !prof !15

62:                                               ; preds = %60
  %63 = call i32 @net_ratelimit() #17
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %70, label %65

65:                                               ; preds = %62
  %66 = load i32, ptr %7, align 4
  %67 = getelementptr inbounds %struct.Qdisc, ptr %1, i32 0, i32 16, i32 2
  %68 = load i32, ptr %67, align 8
  %69 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef %2, i32 noundef %66, i32 noundef %68) #18
  br label %70

70:                                               ; preds = %65, %62, %60
  %71 = getelementptr inbounds %struct.Qdisc, ptr %1, i32 0, i32 2
  %72 = load i32, ptr %71, align 8
  %73 = and i32 %72, 256
  %74 = icmp eq i32 %73, 0
  br i1 %74, label %77, label %75

75:                                               ; preds = %70
  %76 = getelementptr inbounds %struct.Qdisc, ptr %1, i32 0, i32 16, i32 3
  call void @_raw_spin_lock(ptr noundef %76) #17
  br label %77

77:                                               ; preds = %75, %70
  %78 = phi ptr [ %76, %75 ], [ null, %70 ]
  %79 = icmp eq ptr %44, null
  br i1 %79, label %144, label %80

80:                                               ; preds = %77
  %81 = getelementptr inbounds %struct.Qdisc, ptr %1, i32 0, i32 15
  %82 = getelementptr inbounds %struct.Qdisc, ptr %1, i32 0, i32 15, i32 0, i32 0, i32 1
  %83 = getelementptr inbounds %struct.Qdisc, ptr %1, i32 0, i32 15, i32 1
  %84 = getelementptr inbounds %struct.Qdisc, ptr %1, i32 0, i32 12
  %85 = getelementptr inbounds %struct.Qdisc, ptr %1, i32 0, i32 18, i32 3
  %86 = getelementptr inbounds %struct.Qdisc, ptr %1, i32 0, i32 18, i32 1
  %87 = getelementptr inbounds %struct.Qdisc, ptr %1, i32 0, i32 16, i32 2
  br label %88

88:                                               ; preds = %142, %80
  %89 = phi ptr [ %44, %80 ], [ %90, %142 ]
  %90 = load ptr, ptr %89, align 8
  %91 = load ptr, ptr %82, align 4
  store volatile ptr %81, ptr %89, align 8
  %92 = getelementptr inbounds %struct.anon.0, ptr %89, i32 0, i32 1
  store volatile ptr %91, ptr %92, align 4
  store volatile ptr %89, ptr %82, align 4
  store volatile ptr %89, ptr %91, align 4
  %93 = load i32, ptr %83, align 4
  %94 = add i32 %93, 1
  store volatile i32 %94, ptr %83, align 4
  %95 = load i32, ptr %71, align 8
  %96 = and i32 %95, 32
  %97 = icmp eq i32 %96, 0
  br i1 %97, label %133, label %98

98:                                               ; preds = %88
  %99 = call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #17, !srcloc !16
  %100 = load ptr, ptr %84, align 4
  %101 = getelementptr inbounds %struct.gnet_stats_queue, ptr %100, i32 0, i32 3
  %102 = ptrtoint ptr %101 to i32
  %103 = call i32 @llvm.read_register.i32(metadata !0) #17
  %104 = inttoptr i32 %103 to ptr
  %105 = call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %104) #13, !srcloc !17
  %106 = add i32 %105, %102
  %107 = inttoptr i32 %106 to ptr
  %108 = load i32, ptr %107, align 4
  %109 = add i32 %108, 1
  store i32 %109, ptr %107, align 4
  call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %99) #17, !srcloc !18
  %110 = call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #17, !srcloc !16
  %111 = getelementptr inbounds %struct.sk_buff, ptr %89, i32 0, i32 3
  %112 = load i32, ptr %111, align 4
  %113 = load ptr, ptr %84, align 4
  %114 = getelementptr inbounds %struct.gnet_stats_queue, ptr %113, i32 0, i32 1
  %115 = ptrtoint ptr %114 to i32
  %116 = call i32 @llvm.read_register.i32(metadata !0) #17
  %117 = inttoptr i32 %116 to ptr
  %118 = call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %117) #13, !srcloc !17
  %119 = add i32 %118, %115
  %120 = inttoptr i32 %119 to ptr
  %121 = load i32, ptr %120, align 4
  %122 = add i32 %121, %112
  store i32 %122, ptr %120, align 4
  call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %110) #17, !srcloc !18
  %123 = call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #17, !srcloc !16
  %124 = load ptr, ptr %84, align 4
  %125 = ptrtoint ptr %124 to i32
  %126 = call i32 @llvm.read_register.i32(metadata !0) #17
  %127 = inttoptr i32 %126 to ptr
  %128 = call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %127) #13, !srcloc !17
  %129 = add i32 %128, %125
  %130 = inttoptr i32 %129 to ptr
  %131 = load i32, ptr %130, align 4
  %132 = add i32 %131, 1
  store i32 %132, ptr %130, align 4
  call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %123) #17, !srcloc !18
  br label %142

133:                                              ; preds = %88
  %134 = load i32, ptr %85, align 4
  %135 = add i32 %134, 1
  store i32 %135, ptr %85, align 4
  %136 = getelementptr inbounds %struct.sk_buff, ptr %89, i32 0, i32 3
  %137 = load i32, ptr %136, align 4
  %138 = load i32, ptr %86, align 4
  %139 = add i32 %138, %137
  store i32 %139, ptr %86, align 4
  %140 = load i32, ptr %87, align 8
  %141 = add i32 %140, 1
  store i32 %141, ptr %87, align 8
  br label %142

142:                                              ; preds = %133, %98
  %143 = icmp eq ptr %90, null
  br i1 %143, label %144, label %88

144:                                              ; preds = %142, %77
  %145 = icmp eq ptr %78, null
  br i1 %145, label %150, label %146

146:                                              ; preds = %144
  call void asm sideeffect "dmb ish", "~{memory}"() #17, !srcloc !9
  %147 = load i16, ptr %78, align 4
  %148 = add i16 %147, 1
  store i16 %148, ptr %78, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #17, !srcloc !10
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #17, !srcloc !11
  call void asm sideeffect "", "~{memory}"() #17, !srcloc !12
  %149 = getelementptr inbounds %struct.Qdisc, ptr %1, i32 0, i32 19
  call void @_set_bit(i32 noundef 2, ptr noundef %149) #17
  br label %151

150:                                              ; preds = %144
  call void @__netif_schedule(ptr noundef %1) #17
  br label %151

151:                                              ; preds = %150, %146, %57, %54, %53
  %152 = phi i1 [ true, %54 ], [ true, %53 ], [ true, %57 ], [ false, %146 ], [ false, %150 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %8) #17
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #17
  ret i1 %152
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @validate_xmit_skb_list(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dev_hard_start_xmit(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @net_ratelimit() local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @__qdisc_run(ptr noundef %0) local_unnamed_addr #0 {
  %2 = load i32, ptr @dev_tx_weight, align 4
  %3 = getelementptr inbounds %struct.Qdisc, ptr %0, i32 0, i32 9
  %4 = getelementptr inbounds %struct.Qdisc, ptr %0, i32 0, i32 15
  %5 = getelementptr inbounds %struct.Qdisc, ptr %0, i32 0, i32 2
  %6 = getelementptr inbounds %struct.Qdisc, ptr %0, i32 0, i32 16, i32 3
  %7 = getelementptr inbounds %struct.Qdisc, ptr %0, i32 0, i32 19
  %8 = getelementptr inbounds %struct.Qdisc, ptr %0, i32 0, i32 15, i32 1
  %9 = getelementptr inbounds %struct.Qdisc, ptr %0, i32 0, i32 12
  %10 = getelementptr inbounds %struct.Qdisc, ptr %0, i32 0, i32 18, i32 1
  %11 = getelementptr inbounds %struct.Qdisc, ptr %0, i32 0, i32 16, i32 2
  %12 = getelementptr inbounds %struct.Qdisc, ptr %0, i32 0, i32 22
  %13 = getelementptr inbounds %struct.Qdisc, ptr %0, i32 0, i32 22, i32 1
  %14 = getelementptr inbounds %struct.Qdisc, ptr %0, i32 0, i32 1
  %15 = getelementptr inbounds %struct.Qdisc, ptr %0, i32 0, i32 22, i32 0, i32 0, i32 1
  br label %16

16:                                               ; preds = %425, %1
  %17 = phi i32 [ %2, %1 ], [ %426, %425 ]
  %18 = load ptr, ptr %3, align 8
  %19 = load ptr, ptr %4, align 4
  %20 = icmp eq ptr %19, %4
  br i1 %20, label %132, label %21, !prof !15

21:                                               ; preds = %16
  %22 = load i32, ptr %5, align 8
  %23 = and i32 %22, 256
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %30, label %25

25:                                               ; preds = %21
  tail call void @_raw_spin_lock(ptr noundef %6) #17
  %26 = load ptr, ptr %4, align 4
  %27 = icmp eq ptr %26, %4
  %28 = icmp eq ptr %26, null
  %29 = or i1 %27, %28
  br i1 %29, label %32, label %35

30:                                               ; preds = %21
  %31 = icmp eq ptr %19, null
  br i1 %31, label %132, label %35

32:                                               ; preds = %25
  tail call void asm sideeffect "dmb ish", "~{memory}"() #17, !srcloc !9
  %33 = load i16, ptr %6, align 4
  %34 = add i16 %33, 1
  store i16 %34, ptr %6, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #17, !srcloc !10
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #17, !srcloc !11
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !12
  br label %132

35:                                               ; preds = %30, %25
  %36 = phi ptr [ %19, %30 ], [ %26, %25 ]
  %37 = phi ptr [ null, %30 ], [ %6, %25 ]
  %38 = getelementptr inbounds %struct.sk_buff, ptr %36, i32 0, i32 12
  %39 = load i8, ptr %38, align 1
  %40 = and i8 %39, 1
  %41 = icmp eq i8 %40, 0
  br i1 %41, label %62, label %42

42:                                               ; preds = %35
  %43 = getelementptr inbounds %struct.sk_buff, ptr %36, i32 0, i32 20
  %44 = load ptr, ptr %43, align 8
  %45 = getelementptr inbounds %struct.skb_ext, ptr %44, i32 0, i32 1
  %46 = load i8, ptr %45, align 1
  %47 = zext i8 %46 to i32
  %48 = shl nuw nsw i32 %47, 3
  %49 = getelementptr i8, ptr %44, i32 %48
  %50 = icmp eq ptr %49, null
  br i1 %50, label %62, label %51

51:                                               ; preds = %42
  %52 = getelementptr inbounds %struct.sec_path, ptr %49, i32 0, i32 1
  %53 = load i32, ptr %52, align 4
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %62, label %55

55:                                               ; preds = %51
  %56 = load i32, ptr %49, align 4
  %57 = icmp eq i32 %56, %53
  br i1 %57, label %58, label %62

58:                                               ; preds = %55
  %59 = add i32 %53, -1
  %60 = getelementptr %struct.sec_path, ptr %49, i32 0, i32 3, i32 %59
  %61 = icmp ne ptr %60, null
  br label %62

62:                                               ; preds = %58, %55, %51, %42, %35
  %63 = phi i1 [ %61, %58 ], [ false, %55 ], [ false, %51 ], [ false, %42 ], [ false, %35 ]
  %64 = load ptr, ptr %18, align 64
  %65 = getelementptr inbounds %struct.sk_buff, ptr %36, i32 0, i32 9
  %66 = load i16, ptr %65, align 4
  %67 = zext i16 %66 to i32
  %68 = getelementptr inbounds %struct.net_device, ptr %64, i32 0, i32 87
  %69 = load ptr, ptr %68, align 64
  %70 = getelementptr %struct.netdev_queue, ptr %69, i32 %67
  %71 = getelementptr %struct.netdev_queue, ptr %69, i32 %67, i32 12
  %72 = load i32, ptr %71, align 4
  %73 = and i32 %72, 7
  %74 = icmp eq i32 %73, 0
  br i1 %74, label %75, label %121

75:                                               ; preds = %62
  %76 = icmp eq ptr %36, %4
  %77 = select i1 %76, ptr null, ptr %36
  %78 = icmp eq ptr %77, null
  br i1 %78, label %86, label %79

79:                                               ; preds = %75
  %80 = load i32, ptr %8, align 4
  %81 = add i32 %80, -1
  store volatile i32 %81, ptr %8, align 4
  %82 = load ptr, ptr %77, align 8
  %83 = getelementptr inbounds %struct.anon.0, ptr %77, i32 0, i32 1
  %84 = load ptr, ptr %83, align 4
  store ptr null, ptr %83, align 4
  store ptr null, ptr %77, align 8
  %85 = getelementptr inbounds %struct.anon.0, ptr %82, i32 0, i32 1
  store volatile ptr %84, ptr %85, align 4
  store volatile ptr %82, ptr %84, align 8
  br label %86

86:                                               ; preds = %79, %75
  %87 = load i32, ptr %5, align 8
  %88 = and i32 %87, 32
  %89 = icmp eq i32 %88, 0
  br i1 %89, label %114, label %90

90:                                               ; preds = %86
  %91 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #17, !srcloc !16
  %92 = getelementptr inbounds %struct.sk_buff, ptr %77, i32 0, i32 3
  %93 = load i32, ptr %92, align 4
  %94 = load ptr, ptr %9, align 4
  %95 = getelementptr inbounds %struct.gnet_stats_queue, ptr %94, i32 0, i32 1
  %96 = ptrtoint ptr %95 to i32
  %97 = tail call i32 @llvm.read_register.i32(metadata !0) #17
  %98 = inttoptr i32 %97 to ptr
  %99 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %98) #13, !srcloc !17
  %100 = add i32 %99, %96
  %101 = inttoptr i32 %100 to ptr
  %102 = load i32, ptr %101, align 4
  %103 = sub i32 %102, %93
  store i32 %103, ptr %101, align 4
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %91) #17, !srcloc !18
  %104 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #17, !srcloc !16
  %105 = load ptr, ptr %9, align 4
  %106 = ptrtoint ptr %105 to i32
  %107 = tail call i32 @llvm.read_register.i32(metadata !0) #17
  %108 = inttoptr i32 %107 to ptr
  %109 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %108) #13, !srcloc !17
  %110 = add i32 %109, %106
  %111 = inttoptr i32 %110 to ptr
  %112 = load i32, ptr %111, align 4
  %113 = add i32 %112, -1
  store i32 %113, ptr %111, align 4
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %104) #17, !srcloc !18
  br label %126

114:                                              ; preds = %86
  %115 = getelementptr inbounds %struct.sk_buff, ptr %77, i32 0, i32 3
  %116 = load i32, ptr %115, align 4
  %117 = load i32, ptr %10, align 4
  %118 = sub i32 %117, %116
  store i32 %118, ptr %10, align 4
  %119 = load i32, ptr %11, align 8
  %120 = add i32 %119, -1
  store i32 %120, ptr %11, align 8
  br label %126

121:                                              ; preds = %62
  tail call void @_clear_bit(i32 noundef 2, ptr noundef %7) #17
  tail call void asm sideeffect "dmb ish", "~{memory}"() #17, !srcloc !14
  %122 = load i32, ptr %71, align 4
  %123 = and i32 %122, 7
  %124 = icmp eq i32 %123, 0
  %125 = select i1 %124, i32 2, i32 3
  tail call void @_set_bit(i32 noundef %125, ptr noundef %7) #17
  br label %126

126:                                              ; preds = %121, %114, %90
  %127 = phi ptr [ null, %121 ], [ %77, %90 ], [ %77, %114 ]
  %128 = icmp eq ptr %37, null
  br i1 %128, label %389, label %129

129:                                              ; preds = %126
  tail call void asm sideeffect "dmb ish", "~{memory}"() #17, !srcloc !9
  %130 = load i16, ptr %37, align 4
  %131 = add i16 %130, 1
  store i16 %131, ptr %37, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #17, !srcloc !10
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #17, !srcloc !11
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !12
  br label %389

132:                                              ; preds = %32, %30, %16
  %133 = load i32, ptr %5, align 8
  %134 = and i32 %133, 16
  %135 = icmp eq i32 %134, 0
  br i1 %135, label %147, label %136

136:                                              ; preds = %132
  %137 = getelementptr inbounds %struct.netdev_queue, ptr %18, i32 0, i32 12
  %138 = load i32, ptr %137, align 4
  %139 = and i32 %138, 7
  %140 = icmp eq i32 %139, 0
  br i1 %140, label %147, label %141

141:                                              ; preds = %136
  %142 = getelementptr inbounds %struct.netdev_queue, ptr %18, i32 0, i32 12
  tail call void @_clear_bit(i32 noundef 2, ptr noundef %7) #17
  tail call void asm sideeffect "dmb ish", "~{memory}"() #17, !srcloc !14
  %143 = load i32, ptr %142, align 4
  %144 = and i32 %143, 7
  %145 = icmp eq i32 %144, 0
  %146 = select i1 %145, i32 2, i32 3
  tail call void @_set_bit(i32 noundef %146, ptr noundef %7) #17
  br label %434

147:                                              ; preds = %136, %132
  %148 = load ptr, ptr %12, align 4
  %149 = icmp eq ptr %148, %12
  %150 = icmp eq ptr %148, null
  %151 = or i1 %149, %150
  br i1 %151, label %227, label %152, !prof !15

152:                                              ; preds = %147
  %153 = load ptr, ptr %3, align 8
  %154 = and i32 %133, 256
  %155 = icmp eq i32 %154, 0
  br i1 %155, label %158, label %156

156:                                              ; preds = %152
  tail call void @_raw_spin_lock(ptr noundef %6) #17
  %157 = load ptr, ptr %12, align 4
  br label %158

158:                                              ; preds = %156, %152
  %159 = phi ptr [ %157, %156 ], [ %148, %152 ]
  %160 = phi ptr [ %6, %156 ], [ null, %152 ]
  %161 = icmp eq ptr %159, %12
  %162 = icmp eq ptr %159, null
  %163 = or i1 %161, %162
  br i1 %163, label %221, label %164

164:                                              ; preds = %158
  %165 = load ptr, ptr %153, align 64
  %166 = getelementptr inbounds %struct.sk_buff, ptr %159, i32 0, i32 9
  %167 = load i16, ptr %166, align 4
  %168 = zext i16 %167 to i32
  %169 = getelementptr inbounds %struct.net_device, ptr %165, i32 0, i32 87
  %170 = load ptr, ptr %169, align 64
  %171 = getelementptr %struct.netdev_queue, ptr %170, i32 %168, i32 12
  %172 = load i32, ptr %171, align 4
  %173 = and i32 %172, 7
  %174 = icmp eq i32 %173, 0
  br i1 %174, label %175, label %216

175:                                              ; preds = %164
  %176 = load i32, ptr %13, align 4
  %177 = add i32 %176, -1
  store volatile i32 %177, ptr %13, align 4
  %178 = load ptr, ptr %159, align 8
  %179 = getelementptr inbounds %struct.anon.0, ptr %159, i32 0, i32 1
  %180 = load ptr, ptr %179, align 4
  store ptr null, ptr %179, align 4
  store ptr null, ptr %159, align 8
  %181 = getelementptr inbounds %struct.anon.0, ptr %178, i32 0, i32 1
  store volatile ptr %180, ptr %181, align 4
  store volatile ptr %178, ptr %180, align 8
  %182 = load i32, ptr %5, align 8
  %183 = and i32 %182, 32
  %184 = icmp eq i32 %183, 0
  br i1 %184, label %209, label %185

185:                                              ; preds = %175
  %186 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #17, !srcloc !16
  %187 = getelementptr inbounds %struct.sk_buff, ptr %159, i32 0, i32 3
  %188 = load i32, ptr %187, align 4
  %189 = load ptr, ptr %9, align 4
  %190 = getelementptr inbounds %struct.gnet_stats_queue, ptr %189, i32 0, i32 1
  %191 = ptrtoint ptr %190 to i32
  %192 = tail call i32 @llvm.read_register.i32(metadata !0) #17
  %193 = inttoptr i32 %192 to ptr
  %194 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %193) #13, !srcloc !17
  %195 = add i32 %194, %191
  %196 = inttoptr i32 %195 to ptr
  %197 = load i32, ptr %196, align 4
  %198 = sub i32 %197, %188
  store i32 %198, ptr %196, align 4
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %186) #17, !srcloc !18
  %199 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #17, !srcloc !16
  %200 = load ptr, ptr %9, align 4
  %201 = ptrtoint ptr %200 to i32
  %202 = tail call i32 @llvm.read_register.i32(metadata !0) #17
  %203 = inttoptr i32 %202 to ptr
  %204 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %203) #13, !srcloc !17
  %205 = add i32 %204, %201
  %206 = inttoptr i32 %205 to ptr
  %207 = load i32, ptr %206, align 4
  %208 = add i32 %207, -1
  store i32 %208, ptr %206, align 4
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %199) #17, !srcloc !18
  br label %221

209:                                              ; preds = %175
  %210 = getelementptr inbounds %struct.sk_buff, ptr %159, i32 0, i32 3
  %211 = load i32, ptr %210, align 4
  %212 = load i32, ptr %10, align 4
  %213 = sub i32 %212, %211
  store i32 %213, ptr %10, align 4
  %214 = load i32, ptr %11, align 8
  %215 = add i32 %214, -1
  store i32 %215, ptr %11, align 8
  br label %221

216:                                              ; preds = %164
  tail call void @_clear_bit(i32 noundef 2, ptr noundef %7) #17
  tail call void asm sideeffect "dmb ish", "~{memory}"() #17, !srcloc !14
  %217 = load i32, ptr %171, align 4
  %218 = and i32 %217, 7
  %219 = icmp eq i32 %218, 0
  %220 = select i1 %219, i32 2, i32 3
  tail call void @_set_bit(i32 noundef %220, ptr noundef %7) #17
  br label %221

221:                                              ; preds = %216, %209, %185, %158
  %222 = phi ptr [ inttoptr (i32 1 to ptr), %216 ], [ %159, %185 ], [ %159, %209 ], [ null, %158 ]
  %223 = icmp eq ptr %160, null
  br i1 %223, label %227, label %224

224:                                              ; preds = %221
  tail call void asm sideeffect "dmb ish", "~{memory}"() #17, !srcloc !9
  %225 = load i16, ptr %160, align 4
  %226 = add i16 %225, 1
  store i16 %226, ptr %160, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #17, !srcloc !10
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #17, !srcloc !11
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !12
  br label %227

227:                                              ; preds = %224, %221, %147
  %228 = phi ptr [ null, %147 ], [ %222, %221 ], [ %222, %224 ]
  %229 = ptrtoint ptr %228 to i32
  switch i32 %229, label %234 [
    i32 0, label %230
    i32 1, label %434
  ], !prof !19

230:                                              ; preds = %227
  %231 = load ptr, ptr %14, align 4
  %232 = tail call ptr %231(ptr noundef %0) #17
  %233 = icmp eq ptr %232, null
  br i1 %233, label %389, label %234

234:                                              ; preds = %230, %227
  %235 = phi ptr [ %232, %230 ], [ %228, %227 ]
  %236 = load i32, ptr %5, align 8
  %237 = and i32 %236, 16
  %238 = icmp eq i32 %237, 0
  br i1 %238, label %265, label %239

239:                                              ; preds = %234
  %240 = getelementptr inbounds %struct.netdev_queue, ptr %18, i32 0, i32 14
  %241 = getelementptr inbounds %struct.netdev_queue, ptr %18, i32 0, i32 14, i32 1
  %242 = load volatile i32, ptr %241, align 4
  %243 = load volatile i32, ptr %240, align 64
  %244 = getelementptr inbounds %struct.sk_buff, ptr %235, i32 0, i32 5
  %245 = load i32, ptr %244, align 8
  %246 = add i32 %243, %245
  %247 = sub i32 %242, %246
  %248 = icmp sgt i32 %247, 0
  br i1 %248, label %249, label %262

249:                                              ; preds = %256, %239
  %250 = phi i32 [ %260, %256 ], [ 1, %239 ]
  %251 = phi i32 [ %259, %256 ], [ %247, %239 ]
  %252 = phi ptr [ %254, %256 ], [ %235, %239 ]
  %253 = load ptr, ptr %14, align 4
  %254 = tail call ptr %253(ptr noundef %0) #17
  %255 = icmp eq ptr %254, null
  br i1 %255, label %262, label %256

256:                                              ; preds = %249
  %257 = getelementptr inbounds %struct.sk_buff, ptr %254, i32 0, i32 5
  %258 = load i32, ptr %257, align 8
  %259 = sub i32 %251, %258
  store ptr %254, ptr %252, align 8
  %260 = add i32 %250, 1
  %261 = icmp sgt i32 %259, 0
  br i1 %261, label %249, label %262

262:                                              ; preds = %256, %249, %239
  %263 = phi i32 [ 1, %239 ], [ %260, %256 ], [ %250, %249 ]
  %264 = phi ptr [ %235, %239 ], [ %254, %256 ], [ %252, %249 ]
  store ptr null, ptr %264, align 8
  br label %389

265:                                              ; preds = %234
  %266 = getelementptr inbounds %struct.sk_buff, ptr %235, i32 0, i32 9
  %267 = load i16, ptr %266, align 4
  %268 = load ptr, ptr %14, align 4
  %269 = tail call ptr %268(ptr noundef %0) #17
  %270 = icmp eq ptr %269, null
  br i1 %270, label %385, label %271

271:                                              ; preds = %265
  %272 = getelementptr inbounds %struct.sk_buff, ptr %269, i32 0, i32 9
  %273 = load i16, ptr %272, align 4
  %274 = icmp eq i16 %273, %267
  br i1 %274, label %328, label %275, !prof !15

275:                                              ; preds = %380, %372, %364, %356, %348, %340, %332, %271
  %276 = phi ptr [ %235, %271 ], [ %269, %332 ], [ %330, %340 ], [ %338, %348 ], [ %346, %356 ], [ %354, %364 ], [ %362, %372 ], [ %370, %380 ]
  %277 = phi i32 [ 0, %271 ], [ 1, %332 ], [ 2, %340 ], [ 3, %348 ], [ 4, %356 ], [ 5, %364 ], [ 6, %372 ], [ 7, %380 ]
  %278 = phi ptr [ %269, %271 ], [ %330, %332 ], [ %338, %340 ], [ %346, %348 ], [ %354, %356 ], [ %362, %364 ], [ %370, %372 ], [ %378, %380 ]
  %279 = load i32, ptr %5, align 8
  %280 = and i32 %279, 256
  %281 = icmp eq i32 %280, 0
  br i1 %281, label %283, label %282

282:                                              ; preds = %275
  tail call void @_raw_spin_lock(ptr noundef %6) #17
  br label %283

283:                                              ; preds = %282, %275
  %284 = phi ptr [ %6, %282 ], [ null, %275 ]
  %285 = load ptr, ptr %15, align 4
  store volatile ptr %12, ptr %278, align 8
  %286 = getelementptr inbounds %struct.anon.0, ptr %278, i32 0, i32 1
  store volatile ptr %285, ptr %286, align 4
  store volatile ptr %278, ptr %15, align 4
  store volatile ptr %278, ptr %285, align 4
  %287 = load i32, ptr %13, align 4
  %288 = add i32 %287, 1
  store volatile i32 %288, ptr %13, align 4
  %289 = load i32, ptr %5, align 8
  %290 = and i32 %289, 32
  %291 = icmp eq i32 %290, 0
  br i1 %291, label %316, label %292

292:                                              ; preds = %283
  %293 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #17, !srcloc !16
  %294 = getelementptr inbounds %struct.sk_buff, ptr %278, i32 0, i32 3
  %295 = load i32, ptr %294, align 4
  %296 = load ptr, ptr %9, align 4
  %297 = getelementptr inbounds %struct.gnet_stats_queue, ptr %296, i32 0, i32 1
  %298 = ptrtoint ptr %297 to i32
  %299 = tail call i32 @llvm.read_register.i32(metadata !0) #17
  %300 = inttoptr i32 %299 to ptr
  %301 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %300) #13, !srcloc !17
  %302 = add i32 %301, %298
  %303 = inttoptr i32 %302 to ptr
  %304 = load i32, ptr %303, align 4
  %305 = add i32 %304, %295
  store i32 %305, ptr %303, align 4
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %293) #17, !srcloc !18
  %306 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #17, !srcloc !16
  %307 = load ptr, ptr %9, align 4
  %308 = ptrtoint ptr %307 to i32
  %309 = tail call i32 @llvm.read_register.i32(metadata !0) #17
  %310 = inttoptr i32 %309 to ptr
  %311 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %310) #13, !srcloc !17
  %312 = add i32 %311, %308
  %313 = inttoptr i32 %312 to ptr
  %314 = load i32, ptr %313, align 4
  %315 = add i32 %314, 1
  store i32 %315, ptr %313, align 4
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %306) #17, !srcloc !18
  br label %323

316:                                              ; preds = %283
  %317 = getelementptr inbounds %struct.sk_buff, ptr %278, i32 0, i32 3
  %318 = load i32, ptr %317, align 4
  %319 = load i32, ptr %10, align 4
  %320 = add i32 %319, %318
  store i32 %320, ptr %10, align 4
  %321 = load i32, ptr %11, align 8
  %322 = add i32 %321, 1
  store i32 %322, ptr %11, align 8
  br label %323

323:                                              ; preds = %316, %292
  %324 = icmp eq ptr %284, null
  br i1 %324, label %385, label %325

325:                                              ; preds = %323
  tail call void asm sideeffect "dmb ish", "~{memory}"() #17, !srcloc !9
  %326 = load i16, ptr %284, align 4
  %327 = add i16 %326, 1
  store i16 %327, ptr %284, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #17, !srcloc !10
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #17, !srcloc !11
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !12
  br label %385

328:                                              ; preds = %271
  store ptr %269, ptr %235, align 8
  %329 = load ptr, ptr %14, align 4
  %330 = tail call ptr %329(ptr noundef %0) #17
  %331 = icmp eq ptr %330, null
  br i1 %331, label %385, label %332

332:                                              ; preds = %328
  %333 = getelementptr inbounds %struct.sk_buff, ptr %330, i32 0, i32 9
  %334 = load i16, ptr %333, align 4
  %335 = icmp eq i16 %334, %267
  br i1 %335, label %336, label %275, !prof !15

336:                                              ; preds = %332
  store ptr %330, ptr %269, align 8
  %337 = load ptr, ptr %14, align 4
  %338 = tail call ptr %337(ptr noundef %0) #17
  %339 = icmp eq ptr %338, null
  br i1 %339, label %385, label %340

340:                                              ; preds = %336
  %341 = getelementptr inbounds %struct.sk_buff, ptr %338, i32 0, i32 9
  %342 = load i16, ptr %341, align 4
  %343 = icmp eq i16 %342, %267
  br i1 %343, label %344, label %275, !prof !15

344:                                              ; preds = %340
  store ptr %338, ptr %330, align 8
  %345 = load ptr, ptr %14, align 4
  %346 = tail call ptr %345(ptr noundef %0) #17
  %347 = icmp eq ptr %346, null
  br i1 %347, label %385, label %348

348:                                              ; preds = %344
  %349 = getelementptr inbounds %struct.sk_buff, ptr %346, i32 0, i32 9
  %350 = load i16, ptr %349, align 4
  %351 = icmp eq i16 %350, %267
  br i1 %351, label %352, label %275, !prof !15

352:                                              ; preds = %348
  store ptr %346, ptr %338, align 8
  %353 = load ptr, ptr %14, align 4
  %354 = tail call ptr %353(ptr noundef %0) #17
  %355 = icmp eq ptr %354, null
  br i1 %355, label %385, label %356

356:                                              ; preds = %352
  %357 = getelementptr inbounds %struct.sk_buff, ptr %354, i32 0, i32 9
  %358 = load i16, ptr %357, align 4
  %359 = icmp eq i16 %358, %267
  br i1 %359, label %360, label %275, !prof !15

360:                                              ; preds = %356
  store ptr %354, ptr %346, align 8
  %361 = load ptr, ptr %14, align 4
  %362 = tail call ptr %361(ptr noundef %0) #17
  %363 = icmp eq ptr %362, null
  br i1 %363, label %385, label %364

364:                                              ; preds = %360
  %365 = getelementptr inbounds %struct.sk_buff, ptr %362, i32 0, i32 9
  %366 = load i16, ptr %365, align 4
  %367 = icmp eq i16 %366, %267
  br i1 %367, label %368, label %275, !prof !15

368:                                              ; preds = %364
  store ptr %362, ptr %354, align 8
  %369 = load ptr, ptr %14, align 4
  %370 = tail call ptr %369(ptr noundef %0) #17
  %371 = icmp eq ptr %370, null
  br i1 %371, label %385, label %372

372:                                              ; preds = %368
  %373 = getelementptr inbounds %struct.sk_buff, ptr %370, i32 0, i32 9
  %374 = load i16, ptr %373, align 4
  %375 = icmp eq i16 %374, %267
  br i1 %375, label %376, label %275, !prof !15

376:                                              ; preds = %372
  store ptr %370, ptr %362, align 8
  %377 = load ptr, ptr %14, align 4
  %378 = tail call ptr %377(ptr noundef %0) #17
  %379 = icmp eq ptr %378, null
  br i1 %379, label %385, label %380

380:                                              ; preds = %376
  %381 = getelementptr inbounds %struct.sk_buff, ptr %378, i32 0, i32 9
  %382 = load i16, ptr %381, align 4
  %383 = icmp eq i16 %382, %267
  br i1 %383, label %384, label %275, !prof !15

384:                                              ; preds = %380
  store ptr %378, ptr %370, align 8
  br label %385

385:                                              ; preds = %384, %376, %368, %360, %352, %344, %336, %328, %325, %323, %265
  %386 = phi ptr [ %235, %265 ], [ %269, %328 ], [ %330, %336 ], [ %338, %344 ], [ %346, %352 ], [ %354, %360 ], [ %362, %368 ], [ %370, %376 ], [ %378, %384 ], [ %276, %323 ], [ %276, %325 ]
  %387 = phi i32 [ 0, %265 ], [ 1, %328 ], [ 2, %336 ], [ 3, %344 ], [ 4, %352 ], [ 5, %360 ], [ 6, %368 ], [ 7, %376 ], [ 8, %384 ], [ %277, %323 ], [ %277, %325 ]
  %388 = add nuw nsw i32 %387, 1
  store ptr null, ptr %386, align 8
  br label %389

389:                                              ; preds = %385, %262, %230, %129, %126
  %390 = phi i32 [ %388, %385 ], [ %263, %262 ], [ 1, %230 ], [ 1, %126 ], [ 1, %129 ]
  %391 = phi i1 [ true, %385 ], [ true, %262 ], [ true, %230 ], [ %63, %126 ], [ %63, %129 ]
  %392 = phi ptr [ %18, %385 ], [ %18, %262 ], [ %18, %230 ], [ %70, %126 ], [ %70, %129 ]
  %393 = phi ptr [ %235, %385 ], [ %235, %262 ], [ null, %230 ], [ %127, %126 ], [ %127, %129 ]
  %394 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_qdisc_dequeue, i32 0, i32 1), align 4
  %395 = icmp sgt i32 %394, 0
  br i1 %395, label %396, label %409

396:                                              ; preds = %389
  %397 = tail call ptr @llvm.thread.pointer() #17
  %398 = getelementptr inbounds %struct.thread_info, ptr %397, i32 0, i32 2
  %399 = load i32, ptr %398, align 8
  %400 = lshr i32 %399, 5
  %401 = getelementptr i32, ptr @__cpu_online_mask, i32 %400
  %402 = load volatile i32, ptr %401, align 4
  %403 = and i32 %399, 31
  %404 = shl nuw i32 1, %403
  %405 = and i32 %404, %402
  %406 = icmp eq i32 %405, 0
  br i1 %406, label %409, label %407

407:                                              ; preds = %396
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !20
  %408 = tail call i32 @__traceiter_qdisc_dequeue(ptr noundef null, ptr noundef %0, ptr noundef %392, i32 noundef %390, ptr noundef %393) #17
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !21
  br label %409

409:                                              ; preds = %407, %396, %389
  %410 = icmp eq ptr %393, null
  br i1 %410, label %434, label %411, !prof !13

411:                                              ; preds = %409
  %412 = load i32, ptr %5, align 8
  %413 = and i32 %412, 256
  %414 = icmp eq i32 %413, 0
  %415 = select i1 %414, ptr %6, ptr null
  %416 = load ptr, ptr %3, align 8
  %417 = load ptr, ptr %416, align 64
  %418 = getelementptr inbounds %struct.sk_buff, ptr %393, i32 0, i32 9
  %419 = load i16, ptr %418, align 4
  %420 = zext i16 %419 to i32
  %421 = getelementptr inbounds %struct.net_device, ptr %417, i32 0, i32 87
  %422 = load ptr, ptr %421, align 64
  %423 = getelementptr %struct.netdev_queue, ptr %422, i32 %420
  %424 = tail call zeroext i1 @sch_direct_xmit(ptr noundef nonnull %393, ptr noundef %0, ptr noundef %417, ptr noundef %423, ptr noundef %415, i1 noundef zeroext %391) #17
  br i1 %424, label %425, label %434

425:                                              ; preds = %411
  %426 = sub i32 %17, %390
  %427 = icmp slt i32 %426, 1
  br i1 %427, label %428, label %16

428:                                              ; preds = %425
  %429 = load i32, ptr %5, align 8
  %430 = and i32 %429, 256
  %431 = icmp eq i32 %430, 0
  br i1 %431, label %433, label %432

432:                                              ; preds = %428
  tail call void @_set_bit(i32 noundef 2, ptr noundef %7) #17
  br label %434

433:                                              ; preds = %428
  tail call void @__netif_schedule(ptr noundef %0) #17
  br label %434

434:                                              ; preds = %433, %432, %411, %409, %227, %141
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__netif_schedule(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @dev_trans_start(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 15
  %3 = load i64, ptr %2, align 16
  %4 = and i64 %3, 1
  %5 = icmp eq i64 %4, 0
  br i1 %5, label %7, label %6

6:                                                ; preds = %1
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/if_vlan.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 248, 0\0A.popsection", ""() #17, !srcloc !22
  unreachable

7:                                                ; preds = %1
  %8 = and i64 %3, 65536
  %9 = icmp eq i64 %8, 0
  br i1 %9, label %11, label %10

10:                                               ; preds = %7
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/if_macvlan.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 81, 0\0A.popsection", ""() #17, !srcloc !23
  unreachable

11:                                               ; preds = %7
  %12 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 87
  %13 = load ptr, ptr %12, align 64
  %14 = getelementptr inbounds %struct.netdev_queue, ptr %13, i32 0, i32 11
  %15 = load volatile i32, ptr %14, align 8
  %16 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 88
  %17 = load i32, ptr %16, align 4
  %18 = icmp ugt i32 %17, 1
  br i1 %18, label %19, label %31

19:                                               ; preds = %19, %11
  %20 = phi i32 [ %29, %19 ], [ 1, %11 ]
  %21 = phi i32 [ %28, %19 ], [ %15, %11 ]
  %22 = getelementptr %struct.netdev_queue, ptr %13, i32 %20, i32 11
  %23 = load volatile i32, ptr %22, align 8
  %24 = icmp ne i32 %23, 0
  %25 = sub i32 %21, %23
  %26 = icmp slt i32 %25, 0
  %27 = select i1 %24, i1 %26, i1 false
  %28 = select i1 %27, i32 %23, i32 %21
  %29 = add nuw i32 %20, 1
  %30 = icmp eq i32 %29, %17
  br i1 %30, label %31, label %19

31:                                               ; preds = %19, %11
  %32 = phi i32 [ %15, %11 ], [ %28, %19 ]
  ret i32 %32
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @netif_tx_lock(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 92
  tail call void @_raw_spin_lock(ptr noundef %2) #17
  %3 = tail call ptr @llvm.thread.pointer() #17
  %4 = getelementptr inbounds %struct.thread_info, ptr %3, i32 0, i32 2
  %5 = load i32, ptr %4, align 8
  %6 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 88
  %7 = load i32, ptr %6, align 4
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %22, label %9

9:                                                ; preds = %1
  %10 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 87
  br label %11

11:                                               ; preds = %11, %9
  %12 = phi i32 [ 0, %9 ], [ %19, %11 ]
  %13 = load ptr, ptr %10, align 64
  %14 = getelementptr %struct.netdev_queue, ptr %13, i32 %12, i32 9
  tail call void @_raw_spin_lock(ptr noundef %14) #17
  %15 = getelementptr %struct.netdev_queue, ptr %13, i32 %12, i32 10
  store volatile i32 %5, ptr %15, align 4
  %16 = getelementptr %struct.netdev_queue, ptr %13, i32 %12, i32 12
  tail call void @_set_bit(i32 noundef 2, ptr noundef %16) #17
  store volatile i32 -1, ptr %15, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #17, !srcloc !9
  %17 = load i16, ptr %14, align 4
  %18 = add i16 %17, 1
  store i16 %18, ptr %14, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #17, !srcloc !10
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #17, !srcloc !11
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !12
  %19 = add nuw i32 %12, 1
  %20 = load i32, ptr %6, align 4
  %21 = icmp ult i32 %19, %20
  br i1 %21, label %11, label %22

22:                                               ; preds = %11, %1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @netif_freeze_queues(ptr nocapture noundef readonly %0) unnamed_addr #0 {
  %2 = tail call ptr @llvm.thread.pointer() #17
  %3 = getelementptr inbounds %struct.thread_info, ptr %2, i32 0, i32 2
  %4 = load i32, ptr %3, align 8
  %5 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 88
  %6 = load i32, ptr %5, align 4
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %21, label %8

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 87
  br label %10

10:                                               ; preds = %10, %8
  %11 = phi i32 [ 0, %8 ], [ %18, %10 ]
  %12 = load ptr, ptr %9, align 64
  %13 = getelementptr %struct.netdev_queue, ptr %12, i32 %11, i32 9
  tail call void @_raw_spin_lock(ptr noundef %13) #17
  %14 = getelementptr %struct.netdev_queue, ptr %12, i32 %11, i32 10
  store volatile i32 %4, ptr %14, align 4
  %15 = getelementptr %struct.netdev_queue, ptr %12, i32 %11, i32 12
  tail call void @_set_bit(i32 noundef 2, ptr noundef %15) #17
  store volatile i32 -1, ptr %14, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #17, !srcloc !9
  %16 = load i16, ptr %13, align 4
  %17 = add i16 %16, 1
  store i16 %17, ptr %13, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #17, !srcloc !10
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #17, !srcloc !11
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !12
  %18 = add nuw i32 %11, 1
  %19 = load i32, ptr %5, align 4
  %20 = icmp ult i32 %18, %19
  br i1 %20, label %10, label %21

21:                                               ; preds = %10, %1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @netif_tx_unlock(ptr nocapture noundef %0) #0 {
  %2 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 88
  %3 = load i32, ptr %2, align 4
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %15, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 87
  br label %7

7:                                                ; preds = %7, %5
  %8 = phi i32 [ 0, %5 ], [ %12, %7 ]
  %9 = load ptr, ptr %6, align 64
  %10 = getelementptr %struct.netdev_queue, ptr %9, i32 %8
  %11 = getelementptr %struct.netdev_queue, ptr %9, i32 %8, i32 12
  tail call void @_clear_bit(i32 noundef 2, ptr noundef %11) #17
  tail call void @netif_schedule_queue(ptr noundef %10) #17
  %12 = add nuw i32 %8, 1
  %13 = load i32, ptr %2, align 4
  %14 = icmp ult i32 %12, %13
  br i1 %14, label %7, label %15

15:                                               ; preds = %7, %1
  %16 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 92
  tail call void asm sideeffect "dmb ish", "~{memory}"() #17, !srcloc !9
  %17 = load i16, ptr %16, align 4
  %18 = add i16 %17, 1
  store i16 %18, ptr %16, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #17, !srcloc !10
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #17, !srcloc !11
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @netif_unfreeze_queues(ptr nocapture noundef readonly %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 88
  %3 = load i32, ptr %2, align 4
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %15, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 87
  br label %7

7:                                                ; preds = %7, %5
  %8 = phi i32 [ 0, %5 ], [ %12, %7 ]
  %9 = load ptr, ptr %6, align 64
  %10 = getelementptr %struct.netdev_queue, ptr %9, i32 %8
  %11 = getelementptr %struct.netdev_queue, ptr %9, i32 %8, i32 12
  tail call void @_clear_bit(i32 noundef 2, ptr noundef %11) #17
  tail call void @netif_schedule_queue(ptr noundef %10) #17
  %12 = add nuw i32 %8, 1
  %13 = load i32, ptr %2, align 4
  %14 = icmp ult i32 %12, %13
  br i1 %14, label %7, label %15

15:                                               ; preds = %7, %1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @__netdev_watchdog_up(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 16
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.net_device_ops, ptr %3, i32 0, i32 19
  %5 = load ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %34, label %7

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 96
  %9 = load i32, ptr %8, align 8
  %10 = icmp slt i32 %9, 1
  br i1 %10, label %11, label %12

11:                                               ; preds = %7
  store i32 500, ptr %8, align 8
  br label %12

12:                                               ; preds = %11, %7
  %13 = phi i32 [ 500, %11 ], [ %9, %7 ]
  %14 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 95
  %15 = load volatile i32, ptr @jiffies, align 64
  %16 = add i32 %13, %15
  %17 = tail call i32 @round_jiffies(i32 noundef %16) #17
  %18 = tail call i32 @mod_timer(ptr noundef %14, i32 noundef %17) #17
  %19 = icmp ne i32 %18, 0
  %20 = icmp eq ptr %0, null
  %21 = or i1 %20, %19
  br i1 %21, label %34, label %22

22:                                               ; preds = %12
  %23 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #17, !srcloc !16
  %24 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 99
  %25 = load ptr, ptr %24, align 8
  %26 = ptrtoint ptr %25 to i32
  %27 = tail call i32 @llvm.read_register.i32(metadata !0) #17
  %28 = inttoptr i32 %27 to ptr
  %29 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %28) #13, !srcloc !17
  %30 = add i32 %29, %26
  %31 = inttoptr i32 %30 to ptr
  %32 = load i32, ptr %31, align 4
  %33 = add i32 %32, 1
  store i32 %33, ptr %31, align 4
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %23) #17, !srcloc !18
  br label %34

34:                                               ; preds = %22, %12, %1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mod_timer(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @round_jiffies(i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @netif_carrier_on(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 6
  %3 = tail call i32 @_test_and_clear_bit(i32 noundef 2, ptr noundef %2) #17
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %48, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 102
  %7 = load i8, ptr %6, align 4
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %48, label %9

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 40
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %10) #17, !srcloc !24
  %11 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %10, ptr %10, i32 1, ptr elementtype(i32) %10) #17, !srcloc !25
  tail call void @linkwatch_fire_event(ptr noundef %0) #17
  %12 = load volatile i32, ptr %2, align 4
  %13 = and i32 %12, 1
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %48, label %15

15:                                               ; preds = %9
  %16 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 16
  %17 = load ptr, ptr %16, align 8
  %18 = getelementptr inbounds %struct.net_device_ops, ptr %17, i32 0, i32 19
  %19 = load ptr, ptr %18, align 4
  %20 = icmp eq ptr %19, null
  br i1 %20, label %48, label %21

21:                                               ; preds = %15
  %22 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 96
  %23 = load i32, ptr %22, align 8
  %24 = icmp slt i32 %23, 1
  br i1 %24, label %25, label %26

25:                                               ; preds = %21
  store i32 500, ptr %22, align 8
  br label %26

26:                                               ; preds = %25, %21
  %27 = phi i32 [ 500, %25 ], [ %23, %21 ]
  %28 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 95
  %29 = load volatile i32, ptr @jiffies, align 64
  %30 = add i32 %29, %27
  %31 = tail call i32 @round_jiffies(i32 noundef %30) #17
  %32 = tail call i32 @mod_timer(ptr noundef %28, i32 noundef %31) #17
  %33 = icmp ne i32 %32, 0
  %34 = icmp eq ptr %0, null
  %35 = or i1 %34, %33
  br i1 %35, label %48, label %36

36:                                               ; preds = %26
  %37 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #17, !srcloc !16
  %38 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 99
  %39 = load ptr, ptr %38, align 8
  %40 = ptrtoint ptr %39 to i32
  %41 = tail call i32 @llvm.read_register.i32(metadata !0) #17
  %42 = inttoptr i32 %41 to ptr
  %43 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %42) #13, !srcloc !17
  %44 = add i32 %43, %40
  %45 = inttoptr i32 %44 to ptr
  %46 = load i32, ptr %45, align 4
  %47 = add i32 %46, 1
  store i32 %47, ptr %45, align 4
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %37) #17, !srcloc !18
  br label %48

48:                                               ; preds = %36, %26, %15, %9, %5, %1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @linkwatch_fire_event(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @netif_carrier_off(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 6
  %3 = tail call i32 @_test_and_set_bit(i32 noundef 2, ptr noundef %2) #17
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %12

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 102
  %7 = load i8, ptr %6, align 4
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %12, label %9

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 41
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %10) #17, !srcloc !24
  %11 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %10, ptr %10, i32 1, ptr elementtype(i32) %10) #17, !srcloc !25
  tail call void @linkwatch_fire_event(ptr noundef %0) #17
  br label %12

12:                                               ; preds = %9, %5, %1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @netif_carrier_event(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 102
  %3 = load i8, ptr %2, align 4
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %10, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 40
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %6) #17, !srcloc !24
  %7 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %6, ptr %6, i32 1, ptr elementtype(i32) %6) #17, !srcloc !25
  %8 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 41
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %8) #17, !srcloc !24
  %9 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %8, ptr %8, i32 1, ptr elementtype(i32) %8) #17, !srcloc !25
  tail call void @linkwatch_fire_event(ptr noundef %0) #17
  br label %10

10:                                               ; preds = %5, %1
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal i32 @noop_enqueue(ptr noundef %0, ptr nocapture noundef readnone %1, ptr nocapture noundef %2) #4 {
  %4 = load ptr, ptr %2, align 4
  store ptr %4, ptr %0, align 8
  store ptr %0, ptr %2, align 4
  ret i32 2
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal noalias ptr @noop_dequeue(ptr nocapture noundef readnone %0) #5 {
  ret ptr null
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn writeonly uwtable(sync)
define internal i32 @noqueue_init(ptr nocapture noundef writeonly %0, ptr nocapture noundef readnone %1, ptr nocapture noundef readnone %2) #6 {
  store ptr null, ptr %0, align 64
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @pfifo_fast_enqueue(ptr noundef %0, ptr noundef %1, ptr nocapture noundef %2) #0 {
  %4 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 13, i32 0, i32 5
  %5 = load i32, ptr %4, align 8
  %6 = and i32 %5, 15
  %7 = getelementptr [16 x i8], ptr @prio2band, i32 0, i32 %6
  %8 = load i8, ptr %7, align 1
  %9 = zext i8 %8 to i32
  %10 = getelementptr inbounds %struct.Qdisc, ptr %1, i32 0, i32 29
  %11 = getelementptr [3 x %struct.skb_array], ptr %10, i32 0, i32 %9
  %12 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 3
  %13 = load i32, ptr %12, align 4
  %14 = getelementptr inbounds %struct.ptr_ring, ptr %11, i32 0, i32 1
  tail call void @_raw_spin_lock(ptr noundef %14) #17
  %15 = getelementptr inbounds %struct.ptr_ring, ptr %11, i32 0, i32 7
  %16 = load i32, ptr %15, align 64
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %41, label %18, !prof !13

18:                                               ; preds = %3
  %19 = getelementptr inbounds %struct.ptr_ring, ptr %11, i32 0, i32 9
  %20 = load ptr, ptr %19, align 8
  %21 = load i32, ptr %11, align 64
  %22 = getelementptr ptr, ptr %20, i32 %21
  %23 = load ptr, ptr %22, align 4
  %24 = icmp eq ptr %23, null
  br i1 %24, label %25, label %44

25:                                               ; preds = %18
  tail call void asm sideeffect "dmb ishst", "~{memory}"() #17, !srcloc !26
  %26 = load ptr, ptr %19, align 8
  %27 = load i32, ptr %11, align 64
  %28 = add i32 %27, 1
  store i32 %28, ptr %11, align 64
  %29 = getelementptr ptr, ptr %26, i32 %27
  store volatile ptr %0, ptr %29, align 4
  %30 = load i32, ptr %11, align 64
  %31 = load i32, ptr %15, align 64
  %32 = icmp slt i32 %30, %31
  br i1 %32, label %34, label %33, !prof !15

33:                                               ; preds = %25
  store i32 0, ptr %11, align 64
  br label %34

34:                                               ; preds = %33, %25
  tail call void asm sideeffect "dmb ish", "~{memory}"() #17, !srcloc !9
  %35 = load i16, ptr %14, align 4
  %36 = add i16 %35, 1
  store i16 %36, ptr %14, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #17, !srcloc !10
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #17, !srcloc !11
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !12
  %37 = getelementptr inbounds %struct.Qdisc, ptr %1, i32 0, i32 2
  %38 = load i32, ptr %37, align 8
  %39 = and i32 %38, 32
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %93, label %70

41:                                               ; preds = %3
  tail call void asm sideeffect "dmb ish", "~{memory}"() #17, !srcloc !9
  %42 = load i16, ptr %14, align 4
  %43 = add i16 %42, 1
  store i16 %43, ptr %14, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #17, !srcloc !10
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #17, !srcloc !11
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !12
  br label %47

44:                                               ; preds = %18
  tail call void asm sideeffect "dmb ish", "~{memory}"() #17, !srcloc !9
  %45 = load i16, ptr %14, align 4
  %46 = add i16 %45, 1
  store i16 %46, ptr %14, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #17, !srcloc !10
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #17, !srcloc !11
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !12
  br label %47

47:                                               ; preds = %44, %41
  %48 = getelementptr inbounds %struct.Qdisc, ptr %1, i32 0, i32 2
  %49 = load i32, ptr %48, align 8
  %50 = and i32 %49, 32
  %51 = icmp eq i32 %50, 0
  %52 = load ptr, ptr %2, align 4
  store ptr %52, ptr %0, align 8
  store ptr %0, ptr %2, align 4
  br i1 %51, label %66, label %53

53:                                               ; preds = %47
  %54 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #17, !srcloc !16
  %55 = getelementptr inbounds %struct.Qdisc, ptr %1, i32 0, i32 12
  %56 = load ptr, ptr %55, align 4
  %57 = getelementptr inbounds %struct.gnet_stats_queue, ptr %56, i32 0, i32 2
  %58 = ptrtoint ptr %57 to i32
  %59 = tail call i32 @llvm.read_register.i32(metadata !0) #17
  %60 = inttoptr i32 %59 to ptr
  %61 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %60) #13, !srcloc !17
  %62 = add i32 %61, %58
  %63 = inttoptr i32 %62 to ptr
  %64 = load i32, ptr %63, align 4
  %65 = add i32 %64, 1
  store i32 %65, ptr %63, align 4
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %54) #17, !srcloc !18
  br label %100

66:                                               ; preds = %47
  %67 = getelementptr inbounds %struct.Qdisc, ptr %1, i32 0, i32 18, i32 2
  %68 = load i32, ptr %67, align 4
  %69 = add i32 %68, 1
  store i32 %69, ptr %67, align 4
  br label %100

70:                                               ; preds = %34
  %71 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #17, !srcloc !16
  %72 = getelementptr inbounds %struct.Qdisc, ptr %1, i32 0, i32 12
  %73 = load ptr, ptr %72, align 4
  %74 = ptrtoint ptr %73 to i32
  %75 = tail call i32 @llvm.read_register.i32(metadata !0) #17
  %76 = inttoptr i32 %75 to ptr
  %77 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %76) #13, !srcloc !17
  %78 = add i32 %77, %74
  %79 = inttoptr i32 %78 to ptr
  %80 = load i32, ptr %79, align 4
  %81 = add i32 %80, 1
  store i32 %81, ptr %79, align 4
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %71) #17, !srcloc !18
  %82 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #17, !srcloc !16
  %83 = load ptr, ptr %72, align 4
  %84 = getelementptr inbounds %struct.gnet_stats_queue, ptr %83, i32 0, i32 1
  %85 = ptrtoint ptr %84 to i32
  %86 = tail call i32 @llvm.read_register.i32(metadata !0) #17
  %87 = inttoptr i32 %86 to ptr
  %88 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %87) #13, !srcloc !17
  %89 = add i32 %88, %85
  %90 = inttoptr i32 %89 to ptr
  %91 = load i32, ptr %90, align 4
  %92 = add i32 %91, %13
  store i32 %92, ptr %90, align 4
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %82) #17, !srcloc !18
  br label %100

93:                                               ; preds = %34
  %94 = getelementptr inbounds %struct.Qdisc, ptr %1, i32 0, i32 18, i32 1
  %95 = load i32, ptr %94, align 4
  %96 = add i32 %95, %13
  store i32 %96, ptr %94, align 4
  %97 = getelementptr inbounds %struct.Qdisc, ptr %1, i32 0, i32 16, i32 2
  %98 = load i32, ptr %97, align 8
  %99 = add i32 %98, 1
  store i32 %99, ptr %97, align 8
  br label %100

100:                                              ; preds = %93, %70, %66, %53
  %101 = phi i32 [ 1, %53 ], [ 1, %66 ], [ 0, %70 ], [ 0, %93 ]
  ret i32 %101
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal ptr @pfifo_fast_dequeue(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.Qdisc, ptr %0, i32 0, i32 19
  %3 = getelementptr inbounds %struct.Qdisc, ptr %0, i32 1, i32 18
  %4 = load i32, ptr %3, align 64
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %50, label %6, !prof !13

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.Qdisc, ptr %0, i32 1, i32 18, i32 2
  %8 = load ptr, ptr %7, align 8
  %9 = getelementptr inbounds %struct.Qdisc, ptr %0, i32 1, i32 15
  %10 = load volatile i32, ptr %9, align 64
  %11 = getelementptr ptr, ptr %8, i32 %10
  %12 = load ptr, ptr %11, align 4
  %13 = icmp eq ptr %12, null
  br i1 %13, label %50, label %14

14:                                               ; preds = %6
  %15 = load volatile ptr, ptr %11, align 4
  %16 = icmp eq ptr %15, null
  br i1 %16, label %50, label %17

17:                                               ; preds = %14
  %18 = add i32 %10, 1
  %19 = getelementptr inbounds %struct.Qdisc, ptr %0, i32 1, i32 15, i32 0, i32 0, i32 1
  %20 = load i32, ptr %19, align 4
  %21 = sub i32 %18, %20
  %22 = getelementptr inbounds %struct.Qdisc, ptr %0, i32 1, i32 18, i32 1
  %23 = load i32, ptr %22, align 4
  %24 = icmp slt i32 %21, %23
  %25 = icmp slt i32 %18, %4
  %26 = select i1 %24, i1 %25, i1 false
  br i1 %26, label %44, label %27, !prof !27

27:                                               ; preds = %17
  %28 = icmp slt i32 %10, %20
  br i1 %28, label %42, label %29, !prof !13

29:                                               ; preds = %27
  %30 = add i32 %10, -1
  store ptr null, ptr %11, align 4
  %31 = load i32, ptr %19, align 4
  %32 = icmp slt i32 %30, %31
  br i1 %32, label %40, label %33, !prof !13

33:                                               ; preds = %33, %29
  %34 = phi i32 [ %36, %33 ], [ %30, %29 ]
  %35 = load ptr, ptr %7, align 8
  %36 = add i32 %34, -1
  %37 = getelementptr ptr, ptr %35, i32 %34
  store ptr null, ptr %37, align 4
  %38 = load i32, ptr %19, align 4
  %39 = icmp slt i32 %36, %38
  br i1 %39, label %40, label %33, !prof !13

40:                                               ; preds = %33, %29
  %41 = load i32, ptr %3, align 64
  br label %42

42:                                               ; preds = %40, %27
  %43 = phi i32 [ %41, %40 ], [ %4, %27 ]
  store i32 %18, ptr %19, align 4
  br label %44

44:                                               ; preds = %42, %17
  %45 = phi i32 [ %43, %42 ], [ %4, %17 ]
  %46 = icmp slt i32 %18, %45
  br i1 %46, label %48, label %47, !prof !15

47:                                               ; preds = %44
  store i32 0, ptr %19, align 4
  br label %48

48:                                               ; preds = %47, %44
  %49 = phi i32 [ 0, %47 ], [ %18, %44 ]
  store volatile i32 %49, ptr %9, align 64
  br label %50

50:                                               ; preds = %48, %14, %6, %1
  %51 = phi ptr [ null, %6 ], [ %15, %48 ], [ null, %14 ], [ null, %1 ]
  %52 = icmp eq ptr %51, null
  br i1 %52, label %53, label %155

53:                                               ; preds = %50
  %54 = getelementptr %struct.Qdisc, ptr %0, i32 2, i32 15
  %55 = load i32, ptr %54, align 64
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %101, label %57, !prof !13

57:                                               ; preds = %53
  %58 = getelementptr %struct.Qdisc, ptr %0, i32 2, i32 15, i32 1
  %59 = load ptr, ptr %58, align 8
  %60 = getelementptr %struct.Qdisc, ptr %0, i32 2
  %61 = load volatile i32, ptr %60, align 64
  %62 = getelementptr ptr, ptr %59, i32 %61
  %63 = load ptr, ptr %62, align 4
  %64 = icmp eq ptr %63, null
  br i1 %64, label %101, label %65

65:                                               ; preds = %57
  %66 = load volatile ptr, ptr %62, align 4
  %67 = icmp eq ptr %66, null
  br i1 %67, label %101, label %68

68:                                               ; preds = %65
  %69 = add i32 %61, 1
  %70 = getelementptr %struct.Qdisc, ptr %0, i32 2, i32 1
  %71 = load i32, ptr %70, align 4
  %72 = sub i32 %69, %71
  %73 = getelementptr %struct.Qdisc, ptr %0, i32 2, i32 15, i32 0, i32 0, i32 1
  %74 = load i32, ptr %73, align 4
  %75 = icmp slt i32 %72, %74
  %76 = icmp slt i32 %69, %55
  %77 = select i1 %75, i1 %76, i1 false
  br i1 %77, label %95, label %78, !prof !27

78:                                               ; preds = %68
  %79 = icmp slt i32 %61, %71
  br i1 %79, label %93, label %80, !prof !13

80:                                               ; preds = %78
  %81 = add i32 %61, -1
  store ptr null, ptr %62, align 4
  %82 = load i32, ptr %70, align 4
  %83 = icmp slt i32 %81, %82
  br i1 %83, label %91, label %84, !prof !13

84:                                               ; preds = %84, %80
  %85 = phi i32 [ %87, %84 ], [ %81, %80 ]
  %86 = load ptr, ptr %58, align 8
  %87 = add i32 %85, -1
  %88 = getelementptr ptr, ptr %86, i32 %85
  store ptr null, ptr %88, align 4
  %89 = load i32, ptr %70, align 4
  %90 = icmp slt i32 %87, %89
  br i1 %90, label %91, label %84, !prof !13

91:                                               ; preds = %84, %80
  %92 = load i32, ptr %54, align 64
  br label %93

93:                                               ; preds = %91, %78
  %94 = phi i32 [ %92, %91 ], [ %55, %78 ]
  store i32 %69, ptr %70, align 4
  br label %95

95:                                               ; preds = %93, %68
  %96 = phi i32 [ %94, %93 ], [ %55, %68 ]
  %97 = icmp slt i32 %69, %96
  br i1 %97, label %99, label %98, !prof !15

98:                                               ; preds = %95
  store i32 0, ptr %70, align 4
  br label %99

99:                                               ; preds = %98, %95
  %100 = phi i32 [ 0, %98 ], [ %69, %95 ]
  store volatile i32 %100, ptr %60, align 64
  br label %101

101:                                              ; preds = %99, %65, %57, %53
  %102 = phi ptr [ null, %57 ], [ %66, %99 ], [ null, %65 ], [ null, %53 ]
  %103 = icmp eq ptr %102, null
  br i1 %103, label %104, label %155

104:                                              ; preds = %101
  %105 = getelementptr %struct.Qdisc, ptr %0, i32 3
  %106 = load i32, ptr %105, align 64
  %107 = icmp eq i32 %106, 0
  br i1 %107, label %152, label %108, !prof !13

108:                                              ; preds = %104
  %109 = getelementptr %struct.Qdisc, ptr %0, i32 3, i32 2
  %110 = load ptr, ptr %109, align 8
  %111 = getelementptr %struct.Qdisc, ptr %0, i32 2, i32 24
  %112 = load volatile i32, ptr %111, align 64
  %113 = getelementptr ptr, ptr %110, i32 %112
  %114 = load ptr, ptr %113, align 4
  %115 = icmp eq ptr %114, null
  br i1 %115, label %152, label %116

116:                                              ; preds = %108
  %117 = load volatile ptr, ptr %113, align 4
  %118 = icmp eq ptr %117, null
  br i1 %118, label %152, label %119

119:                                              ; preds = %116
  %120 = add i32 %112, 1
  %121 = getelementptr %struct.Qdisc, ptr %0, i32 2, i32 25
  %122 = load i32, ptr %121, align 4
  %123 = sub i32 %120, %122
  %124 = getelementptr %struct.Qdisc, ptr %0, i32 3, i32 1
  %125 = load i32, ptr %124, align 4
  %126 = icmp slt i32 %123, %125
  %127 = icmp slt i32 %120, %106
  %128 = select i1 %126, i1 %127, i1 false
  br i1 %128, label %146, label %129, !prof !27

129:                                              ; preds = %119
  %130 = icmp slt i32 %112, %122
  br i1 %130, label %144, label %131, !prof !13

131:                                              ; preds = %129
  %132 = add i32 %112, -1
  store ptr null, ptr %113, align 4
  %133 = load i32, ptr %121, align 4
  %134 = icmp slt i32 %132, %133
  br i1 %134, label %142, label %135, !prof !13

135:                                              ; preds = %135, %131
  %136 = phi i32 [ %138, %135 ], [ %132, %131 ]
  %137 = load ptr, ptr %109, align 8
  %138 = add i32 %136, -1
  %139 = getelementptr ptr, ptr %137, i32 %136
  store ptr null, ptr %139, align 4
  %140 = load i32, ptr %121, align 4
  %141 = icmp slt i32 %138, %140
  br i1 %141, label %142, label %135, !prof !13

142:                                              ; preds = %135, %131
  %143 = load i32, ptr %105, align 64
  br label %144

144:                                              ; preds = %142, %129
  %145 = phi i32 [ %143, %142 ], [ %106, %129 ]
  store i32 %120, ptr %121, align 4
  br label %146

146:                                              ; preds = %144, %119
  %147 = phi i32 [ %145, %144 ], [ %106, %119 ]
  %148 = icmp slt i32 %120, %147
  br i1 %148, label %150, label %149, !prof !15

149:                                              ; preds = %146
  store i32 0, ptr %121, align 4
  br label %150

150:                                              ; preds = %149, %146
  %151 = phi i32 [ 0, %149 ], [ %120, %146 ]
  store volatile i32 %151, ptr %111, align 64
  br label %152

152:                                              ; preds = %150, %116, %108, %104
  %153 = phi ptr [ null, %108 ], [ %117, %150 ], [ null, %116 ], [ null, %104 ]
  %154 = icmp eq ptr %153, null
  br label %155

155:                                              ; preds = %152, %101, %50
  %156 = phi ptr [ %51, %50 ], [ %102, %101 ], [ %153, %152 ]
  %157 = phi i1 [ %52, %50 ], [ %103, %101 ], [ %154, %152 ]
  br i1 %157, label %255, label %158, !prof !13

158:                                              ; preds = %412, %155
  %159 = phi ptr [ %156, %155 ], [ %413, %412 ]
  %160 = getelementptr inbounds %struct.Qdisc, ptr %0, i32 0, i32 2
  %161 = load i32, ptr %160, align 8
  %162 = and i32 %161, 32
  %163 = icmp eq i32 %162, 0
  br i1 %163, label %221, label %164

164:                                              ; preds = %158
  %165 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #17, !srcloc !16
  %166 = getelementptr inbounds %struct.sk_buff, ptr %159, i32 0, i32 3
  %167 = load i32, ptr %166, align 4
  %168 = getelementptr inbounds %struct.Qdisc, ptr %0, i32 0, i32 12
  %169 = load ptr, ptr %168, align 4
  %170 = getelementptr inbounds %struct.gnet_stats_queue, ptr %169, i32 0, i32 1
  %171 = ptrtoint ptr %170 to i32
  %172 = tail call i32 @llvm.read_register.i32(metadata !0) #17
  %173 = inttoptr i32 %172 to ptr
  %174 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %173) #13, !srcloc !17
  %175 = add i32 %174, %171
  %176 = inttoptr i32 %175 to ptr
  %177 = load i32, ptr %176, align 4
  %178 = sub i32 %177, %167
  store i32 %178, ptr %176, align 4
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %165) #17, !srcloc !18
  %179 = getelementptr inbounds %struct.Qdisc, ptr %0, i32 0, i32 11
  %180 = load ptr, ptr %179, align 16
  %181 = tail call i32 @llvm.read_register.i32(metadata !0) #17
  %182 = inttoptr i32 %181 to ptr
  %183 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %182) #13, !srcloc !17
  %184 = load i32, ptr %166, align 4
  %185 = getelementptr inbounds %struct.sk_buff, ptr %159, i32 0, i32 15
  %186 = load ptr, ptr %185, align 4
  %187 = getelementptr inbounds %struct.skb_shared_info, ptr %186, i32 0, i32 4
  %188 = load i16, ptr %187, align 4
  %189 = icmp eq i16 %188, 0
  br i1 %189, label %194, label %190

190:                                              ; preds = %164
  %191 = getelementptr inbounds %struct.skb_shared_info, ptr %186, i32 0, i32 5
  %192 = load i16, ptr %191, align 2
  %193 = zext i16 %192 to i32
  br label %194

194:                                              ; preds = %190, %164
  %195 = phi i32 [ %193, %190 ], [ 1, %164 ]
  %196 = ptrtoint ptr %180 to i32
  %197 = add i32 %183, %196
  %198 = inttoptr i32 %197 to ptr
  %199 = zext i32 %184 to i64
  %200 = getelementptr inbounds %struct.gnet_stats_basic_sync, ptr %198, i32 0, i32 2
  %201 = load i32, ptr %200, align 4
  %202 = add i32 %201, 1
  store i32 %202, ptr %200, align 4
  tail call void asm sideeffect "dmb ishst", "~{memory}"() #17, !srcloc !28
  %203 = load i64, ptr %198, align 8
  %204 = add i64 %203, %199
  store i64 %204, ptr %198, align 8
  %205 = getelementptr inbounds %struct.gnet_stats_basic_sync, ptr %198, i32 0, i32 1
  %206 = zext i32 %195 to i64
  %207 = load i64, ptr %205, align 8
  %208 = add i64 %207, %206
  store i64 %208, ptr %205, align 8
  tail call void asm sideeffect "dmb ishst", "~{memory}"() #17, !srcloc !29
  %209 = load i32, ptr %200, align 4
  %210 = add i32 %209, 1
  store i32 %210, ptr %200, align 4
  %211 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #17, !srcloc !16
  %212 = load ptr, ptr %168, align 4
  %213 = ptrtoint ptr %212 to i32
  %214 = tail call i32 @llvm.read_register.i32(metadata !0) #17
  %215 = inttoptr i32 %214 to ptr
  %216 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %215) #13, !srcloc !17
  %217 = add i32 %216, %213
  %218 = inttoptr i32 %217 to ptr
  %219 = load i32, ptr %218, align 4
  %220 = add i32 %219, -1
  store i32 %220, ptr %218, align 4
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %211) #17, !srcloc !18
  br label %415

221:                                              ; preds = %158
  %222 = getelementptr inbounds %struct.sk_buff, ptr %159, i32 0, i32 3
  %223 = load i32, ptr %222, align 4
  %224 = getelementptr inbounds %struct.Qdisc, ptr %0, i32 0, i32 18, i32 1
  %225 = load i32, ptr %224, align 4
  %226 = sub i32 %225, %223
  store i32 %226, ptr %224, align 4
  %227 = load i32, ptr %222, align 4
  %228 = getelementptr inbounds %struct.sk_buff, ptr %159, i32 0, i32 15
  %229 = load ptr, ptr %228, align 4
  %230 = getelementptr inbounds %struct.skb_shared_info, ptr %229, i32 0, i32 4
  %231 = load i16, ptr %230, align 4
  %232 = icmp eq i16 %231, 0
  br i1 %232, label %237, label %233

233:                                              ; preds = %221
  %234 = getelementptr inbounds %struct.skb_shared_info, ptr %229, i32 0, i32 5
  %235 = load i16, ptr %234, align 2
  %236 = zext i16 %235 to i32
  br label %237

237:                                              ; preds = %233, %221
  %238 = phi i32 [ %236, %233 ], [ 1, %221 ]
  %239 = getelementptr inbounds %struct.Qdisc, ptr %0, i32 0, i32 17
  %240 = zext i32 %227 to i64
  %241 = getelementptr inbounds %struct.Qdisc, ptr %0, i32 0, i32 17, i32 2
  %242 = load i32, ptr %241, align 4
  %243 = add i32 %242, 1
  store i32 %243, ptr %241, align 4
  tail call void asm sideeffect "dmb ishst", "~{memory}"() #17, !srcloc !28
  %244 = load i64, ptr %239, align 8
  %245 = add i64 %244, %240
  store i64 %245, ptr %239, align 8
  %246 = getelementptr inbounds %struct.Qdisc, ptr %0, i32 0, i32 17, i32 1
  %247 = zext i32 %238 to i64
  %248 = load i64, ptr %246, align 8
  %249 = add i64 %248, %247
  store i64 %249, ptr %246, align 8
  tail call void asm sideeffect "dmb ishst", "~{memory}"() #17, !srcloc !29
  %250 = load i32, ptr %241, align 4
  %251 = add i32 %250, 1
  store i32 %251, ptr %241, align 4
  %252 = getelementptr inbounds %struct.Qdisc, ptr %0, i32 0, i32 16, i32 2
  %253 = load i32, ptr %252, align 8
  %254 = add i32 %253, -1
  store i32 %254, ptr %252, align 8
  br label %415

255:                                              ; preds = %155
  %256 = load volatile i32, ptr %2, align 4
  %257 = and i32 %256, 12
  %258 = icmp eq i32 %257, 0
  br i1 %258, label %415, label %259

259:                                              ; preds = %255
  tail call void @_clear_bit(i32 noundef 2, ptr noundef %2) #17
  tail call void @_clear_bit(i32 noundef 3, ptr noundef %2) #17
  tail call void asm sideeffect "dmb ish", "~{memory}"() #17, !srcloc !30
  %260 = getelementptr inbounds %struct.Qdisc, ptr %0, i32 1, i32 18
  %261 = load i32, ptr %260, align 64
  %262 = icmp eq i32 %261, 0
  br i1 %262, label %307, label %263, !prof !13

263:                                              ; preds = %259
  %264 = getelementptr inbounds %struct.Qdisc, ptr %0, i32 1, i32 18, i32 2
  %265 = load ptr, ptr %264, align 8
  %266 = getelementptr inbounds %struct.Qdisc, ptr %0, i32 1, i32 15
  %267 = load volatile i32, ptr %266, align 64
  %268 = getelementptr ptr, ptr %265, i32 %267
  %269 = load ptr, ptr %268, align 4
  %270 = icmp eq ptr %269, null
  br i1 %270, label %307, label %271

271:                                              ; preds = %263
  %272 = load volatile ptr, ptr %268, align 4
  %273 = icmp eq ptr %272, null
  br i1 %273, label %307, label %274

274:                                              ; preds = %271
  %275 = add i32 %267, 1
  %276 = getelementptr inbounds %struct.Qdisc, ptr %0, i32 1, i32 15, i32 0, i32 0, i32 1
  %277 = load i32, ptr %276, align 4
  %278 = sub i32 %275, %277
  %279 = getelementptr inbounds %struct.Qdisc, ptr %0, i32 1, i32 18, i32 1
  %280 = load i32, ptr %279, align 4
  %281 = icmp slt i32 %278, %280
  %282 = icmp slt i32 %275, %261
  %283 = select i1 %281, i1 %282, i1 false
  br i1 %283, label %301, label %284, !prof !27

284:                                              ; preds = %274
  %285 = icmp slt i32 %267, %277
  br i1 %285, label %299, label %286, !prof !13

286:                                              ; preds = %284
  %287 = add i32 %267, -1
  store ptr null, ptr %268, align 4
  %288 = load i32, ptr %276, align 4
  %289 = icmp slt i32 %287, %288
  br i1 %289, label %297, label %290, !prof !13

290:                                              ; preds = %290, %286
  %291 = phi i32 [ %293, %290 ], [ %287, %286 ]
  %292 = load ptr, ptr %264, align 8
  %293 = add i32 %291, -1
  %294 = getelementptr ptr, ptr %292, i32 %291
  store ptr null, ptr %294, align 4
  %295 = load i32, ptr %276, align 4
  %296 = icmp slt i32 %293, %295
  br i1 %296, label %297, label %290, !prof !13

297:                                              ; preds = %290, %286
  %298 = load i32, ptr %260, align 64
  br label %299

299:                                              ; preds = %297, %284
  %300 = phi i32 [ %298, %297 ], [ %261, %284 ]
  store i32 %275, ptr %276, align 4
  br label %301

301:                                              ; preds = %299, %274
  %302 = phi i32 [ %300, %299 ], [ %261, %274 ]
  %303 = icmp slt i32 %275, %302
  br i1 %303, label %305, label %304, !prof !15

304:                                              ; preds = %301
  store i32 0, ptr %276, align 4
  br label %305

305:                                              ; preds = %304, %301
  %306 = phi i32 [ 0, %304 ], [ %275, %301 ]
  store volatile i32 %306, ptr %266, align 64
  br label %307

307:                                              ; preds = %305, %271, %263, %259
  %308 = phi ptr [ null, %263 ], [ %272, %305 ], [ null, %271 ], [ null, %259 ]
  %309 = icmp eq ptr %308, null
  br i1 %309, label %310, label %412

310:                                              ; preds = %307
  %311 = getelementptr %struct.Qdisc, ptr %0, i32 2, i32 15
  %312 = load i32, ptr %311, align 64
  %313 = icmp eq i32 %312, 0
  br i1 %313, label %358, label %314, !prof !13

314:                                              ; preds = %310
  %315 = getelementptr %struct.Qdisc, ptr %0, i32 2, i32 15, i32 1
  %316 = load ptr, ptr %315, align 8
  %317 = getelementptr %struct.Qdisc, ptr %0, i32 2
  %318 = load volatile i32, ptr %317, align 64
  %319 = getelementptr ptr, ptr %316, i32 %318
  %320 = load ptr, ptr %319, align 4
  %321 = icmp eq ptr %320, null
  br i1 %321, label %358, label %322

322:                                              ; preds = %314
  %323 = load volatile ptr, ptr %319, align 4
  %324 = icmp eq ptr %323, null
  br i1 %324, label %358, label %325

325:                                              ; preds = %322
  %326 = add i32 %318, 1
  %327 = getelementptr %struct.Qdisc, ptr %0, i32 2, i32 1
  %328 = load i32, ptr %327, align 4
  %329 = sub i32 %326, %328
  %330 = getelementptr %struct.Qdisc, ptr %0, i32 2, i32 15, i32 0, i32 0, i32 1
  %331 = load i32, ptr %330, align 4
  %332 = icmp slt i32 %329, %331
  %333 = icmp slt i32 %326, %312
  %334 = select i1 %332, i1 %333, i1 false
  br i1 %334, label %352, label %335, !prof !27

335:                                              ; preds = %325
  %336 = icmp slt i32 %318, %328
  br i1 %336, label %350, label %337, !prof !13

337:                                              ; preds = %335
  %338 = add i32 %318, -1
  store ptr null, ptr %319, align 4
  %339 = load i32, ptr %327, align 4
  %340 = icmp slt i32 %338, %339
  br i1 %340, label %348, label %341, !prof !13

341:                                              ; preds = %341, %337
  %342 = phi i32 [ %344, %341 ], [ %338, %337 ]
  %343 = load ptr, ptr %315, align 8
  %344 = add i32 %342, -1
  %345 = getelementptr ptr, ptr %343, i32 %342
  store ptr null, ptr %345, align 4
  %346 = load i32, ptr %327, align 4
  %347 = icmp slt i32 %344, %346
  br i1 %347, label %348, label %341, !prof !13

348:                                              ; preds = %341, %337
  %349 = load i32, ptr %311, align 64
  br label %350

350:                                              ; preds = %348, %335
  %351 = phi i32 [ %349, %348 ], [ %312, %335 ]
  store i32 %326, ptr %327, align 4
  br label %352

352:                                              ; preds = %350, %325
  %353 = phi i32 [ %351, %350 ], [ %312, %325 ]
  %354 = icmp slt i32 %326, %353
  br i1 %354, label %356, label %355, !prof !15

355:                                              ; preds = %352
  store i32 0, ptr %327, align 4
  br label %356

356:                                              ; preds = %355, %352
  %357 = phi i32 [ 0, %355 ], [ %326, %352 ]
  store volatile i32 %357, ptr %317, align 64
  br label %358

358:                                              ; preds = %356, %322, %314, %310
  %359 = phi ptr [ null, %314 ], [ %323, %356 ], [ null, %322 ], [ null, %310 ]
  %360 = icmp eq ptr %359, null
  br i1 %360, label %361, label %412

361:                                              ; preds = %358
  %362 = getelementptr %struct.Qdisc, ptr %0, i32 3
  %363 = load i32, ptr %362, align 64
  %364 = icmp eq i32 %363, 0
  br i1 %364, label %409, label %365, !prof !13

365:                                              ; preds = %361
  %366 = getelementptr %struct.Qdisc, ptr %0, i32 3, i32 2
  %367 = load ptr, ptr %366, align 8
  %368 = getelementptr %struct.Qdisc, ptr %0, i32 2, i32 24
  %369 = load volatile i32, ptr %368, align 64
  %370 = getelementptr ptr, ptr %367, i32 %369
  %371 = load ptr, ptr %370, align 4
  %372 = icmp eq ptr %371, null
  br i1 %372, label %409, label %373

373:                                              ; preds = %365
  %374 = load volatile ptr, ptr %370, align 4
  %375 = icmp eq ptr %374, null
  br i1 %375, label %409, label %376

376:                                              ; preds = %373
  %377 = add i32 %369, 1
  %378 = getelementptr %struct.Qdisc, ptr %0, i32 2, i32 25
  %379 = load i32, ptr %378, align 4
  %380 = sub i32 %377, %379
  %381 = getelementptr %struct.Qdisc, ptr %0, i32 3, i32 1
  %382 = load i32, ptr %381, align 4
  %383 = icmp slt i32 %380, %382
  %384 = icmp slt i32 %377, %363
  %385 = select i1 %383, i1 %384, i1 false
  br i1 %385, label %403, label %386, !prof !27

386:                                              ; preds = %376
  %387 = icmp slt i32 %369, %379
  br i1 %387, label %401, label %388, !prof !13

388:                                              ; preds = %386
  %389 = add i32 %369, -1
  store ptr null, ptr %370, align 4
  %390 = load i32, ptr %378, align 4
  %391 = icmp slt i32 %389, %390
  br i1 %391, label %399, label %392, !prof !13

392:                                              ; preds = %392, %388
  %393 = phi i32 [ %395, %392 ], [ %389, %388 ]
  %394 = load ptr, ptr %366, align 8
  %395 = add i32 %393, -1
  %396 = getelementptr ptr, ptr %394, i32 %393
  store ptr null, ptr %396, align 4
  %397 = load i32, ptr %378, align 4
  %398 = icmp slt i32 %395, %397
  br i1 %398, label %399, label %392, !prof !13

399:                                              ; preds = %392, %388
  %400 = load i32, ptr %362, align 64
  br label %401

401:                                              ; preds = %399, %386
  %402 = phi i32 [ %400, %399 ], [ %363, %386 ]
  store i32 %377, ptr %378, align 4
  br label %403

403:                                              ; preds = %401, %376
  %404 = phi i32 [ %402, %401 ], [ %363, %376 ]
  %405 = icmp slt i32 %377, %404
  br i1 %405, label %407, label %406, !prof !15

406:                                              ; preds = %403
  store i32 0, ptr %378, align 4
  br label %407

407:                                              ; preds = %406, %403
  %408 = phi i32 [ 0, %406 ], [ %377, %403 ]
  store volatile i32 %408, ptr %368, align 64
  br label %409

409:                                              ; preds = %407, %373, %365, %361
  %410 = phi ptr [ null, %365 ], [ %374, %407 ], [ null, %373 ], [ null, %361 ]
  %411 = icmp eq ptr %410, null
  br label %412

412:                                              ; preds = %409, %358, %307
  %413 = phi ptr [ %308, %307 ], [ %359, %358 ], [ %410, %409 ]
  %414 = phi i1 [ %309, %307 ], [ %360, %358 ], [ %411, %409 ]
  br i1 %414, label %415, label %158, !prof !13

415:                                              ; preds = %412, %255, %237, %194
  %416 = phi ptr [ %159, %237 ], [ %159, %194 ], [ null, %412 ], [ null, %255 ]
  ret ptr %416
}

; Function Attrs: nofree norecurse nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal ptr @pfifo_fast_peek(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.Qdisc, ptr %0, i32 1, i32 18
  %3 = load i32, ptr %2, align 64
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %12, label %5, !prof !13

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.Qdisc, ptr %0, i32 1, i32 18, i32 2
  %7 = load ptr, ptr %6, align 8
  %8 = getelementptr inbounds %struct.Qdisc, ptr %0, i32 1, i32 15
  %9 = load i32, ptr %8, align 64
  %10 = getelementptr ptr, ptr %7, i32 %9
  %11 = load volatile ptr, ptr %10, align 4
  br label %12

12:                                               ; preds = %5, %1
  %13 = phi ptr [ %11, %5 ], [ null, %1 ]
  %14 = icmp eq ptr %13, null
  br i1 %14, label %15, label %40

15:                                               ; preds = %12
  %16 = getelementptr %struct.Qdisc, ptr %0, i32 2, i32 15
  %17 = load i32, ptr %16, align 64
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %26, label %19, !prof !13

19:                                               ; preds = %15
  %20 = getelementptr %struct.Qdisc, ptr %0, i32 2, i32 15, i32 1
  %21 = load ptr, ptr %20, align 8
  %22 = getelementptr %struct.Qdisc, ptr %0, i32 2
  %23 = load i32, ptr %22, align 64
  %24 = getelementptr ptr, ptr %21, i32 %23
  %25 = load volatile ptr, ptr %24, align 4
  br label %26

26:                                               ; preds = %19, %15
  %27 = phi ptr [ %25, %19 ], [ null, %15 ]
  %28 = icmp eq ptr %27, null
  br i1 %28, label %29, label %40

29:                                               ; preds = %26
  %30 = getelementptr %struct.Qdisc, ptr %0, i32 3
  %31 = load i32, ptr %30, align 64
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %40, label %33, !prof !13

33:                                               ; preds = %29
  %34 = getelementptr %struct.Qdisc, ptr %0, i32 3, i32 2
  %35 = load ptr, ptr %34, align 8
  %36 = getelementptr %struct.Qdisc, ptr %0, i32 2, i32 24
  %37 = load i32, ptr %36, align 64
  %38 = getelementptr ptr, ptr %35, i32 %37
  %39 = load volatile ptr, ptr %38, align 4
  br label %40

40:                                               ; preds = %33, %29, %26, %12
  %41 = phi ptr [ %13, %12 ], [ %27, %26 ], [ %39, %33 ], [ null, %29 ]
  ret ptr %41
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @pfifo_fast_init(ptr nocapture noundef %0, ptr nocapture noundef readnone %1, ptr nocapture noundef readnone %2) #0 {
  %4 = getelementptr inbounds %struct.Qdisc, ptr %0, i32 0, i32 9
  %5 = load ptr, ptr %4, align 8
  %6 = load ptr, ptr %5, align 64
  %7 = getelementptr inbounds %struct.net_device, ptr %6, i32 0, i32 91
  %8 = load i32, ptr %7, align 16
  %9 = getelementptr inbounds %struct.Qdisc, ptr %0, i32 0, i32 29
  %10 = icmp eq i32 %8, 0
  br i1 %10, label %54, label %11

11:                                               ; preds = %3
  %12 = icmp ugt i32 %8, 2097152
  %13 = shl nuw nsw i32 %8, 2
  %14 = icmp ult i32 %8, 64
  %15 = select i1 %14, i32 1, i32 32
  br i1 %12, label %16, label %18

16:                                               ; preds = %11
  %17 = getelementptr inbounds %struct.Qdisc, ptr %0, i32 1, i32 18, i32 2
  store ptr null, ptr %17, align 8
  br label %54

18:                                               ; preds = %11
  %19 = tail call noalias ptr @kvmalloc_node(i32 noundef %13, i32 noundef 3520, i32 noundef -1) #19
  %20 = getelementptr inbounds %struct.Qdisc, ptr %0, i32 1, i32 18, i32 2
  store ptr %19, ptr %20, align 8
  %21 = icmp eq ptr %19, null
  br i1 %21, label %54, label %22

22:                                               ; preds = %18
  %23 = getelementptr inbounds %struct.Qdisc, ptr %0, i32 1, i32 18
  store i32 %8, ptr %23, align 64
  %24 = getelementptr inbounds %struct.Qdisc, ptr %0, i32 1, i32 18, i32 1
  store i32 %15, ptr %24, align 4
  %25 = getelementptr inbounds %struct.Qdisc, ptr %0, i32 1, i32 15, i32 0, i32 0, i32 1
  store i32 0, ptr %25, align 4
  %26 = getelementptr inbounds %struct.Qdisc, ptr %0, i32 1, i32 15
  store i32 0, ptr %26, align 64
  store i32 0, ptr %9, align 64
  %27 = getelementptr inbounds %struct.Qdisc, ptr %0, i32 1, i32 1
  store i32 0, ptr %27, align 4
  %28 = getelementptr inbounds %struct.Qdisc, ptr %0, i32 1, i32 15, i32 1
  store i32 0, ptr %28, align 8
  %29 = tail call noalias ptr @kvmalloc_node(i32 noundef %13, i32 noundef 3520, i32 noundef -1) #19
  %30 = getelementptr %struct.Qdisc, ptr %0, i32 2, i32 15, i32 1
  store ptr %29, ptr %30, align 8
  %31 = icmp eq ptr %29, null
  br i1 %31, label %54, label %32

32:                                               ; preds = %22
  %33 = getelementptr %struct.Qdisc, ptr %0, i32 1, i32 24
  %34 = getelementptr %struct.Qdisc, ptr %0, i32 2, i32 15
  store i32 %8, ptr %34, align 64
  %35 = getelementptr %struct.Qdisc, ptr %0, i32 2, i32 15, i32 0, i32 0, i32 1
  store i32 %15, ptr %35, align 4
  %36 = getelementptr %struct.Qdisc, ptr %0, i32 2, i32 1
  store i32 0, ptr %36, align 4
  %37 = getelementptr %struct.Qdisc, ptr %0, i32 2
  store i32 0, ptr %37, align 64
  store i32 0, ptr %33, align 64
  %38 = getelementptr %struct.Qdisc, ptr %0, i32 1, i32 25
  store i32 0, ptr %38, align 4
  %39 = getelementptr %struct.Qdisc, ptr %0, i32 2, i32 2
  store i32 0, ptr %39, align 8
  %40 = tail call noalias ptr @kvmalloc_node(i32 noundef %13, i32 noundef 3520, i32 noundef -1) #19
  %41 = getelementptr %struct.Qdisc, ptr %0, i32 3, i32 2
  store ptr %40, ptr %41, align 8
  %42 = icmp eq ptr %40, null
  br i1 %42, label %54, label %43

43:                                               ; preds = %32
  %44 = getelementptr %struct.Qdisc, ptr %0, i32 2, i32 18
  %45 = getelementptr %struct.Qdisc, ptr %0, i32 3
  store i32 %8, ptr %45, align 64
  %46 = getelementptr %struct.Qdisc, ptr %0, i32 3, i32 1
  store i32 %15, ptr %46, align 4
  %47 = getelementptr %struct.Qdisc, ptr %0, i32 2, i32 25
  store i32 0, ptr %47, align 4
  %48 = getelementptr %struct.Qdisc, ptr %0, i32 2, i32 24
  store i32 0, ptr %48, align 64
  store i32 0, ptr %44, align 64
  %49 = getelementptr %struct.Qdisc, ptr %0, i32 2, i32 18, i32 1
  store i32 0, ptr %49, align 4
  %50 = getelementptr %struct.Qdisc, ptr %0, i32 2, i32 26
  store i32 0, ptr %50, align 8
  %51 = getelementptr inbounds %struct.Qdisc, ptr %0, i32 0, i32 2
  %52 = load i32, ptr %51, align 8
  %53 = or i32 %52, 4
  store i32 %53, ptr %51, align 8
  br label %54

54:                                               ; preds = %43, %32, %22, %18, %16, %3
  %55 = phi i32 [ 0, %43 ], [ -22, %3 ], [ -12, %16 ], [ -12, %32 ], [ -12, %22 ], [ -12, %18 ]
  ret i32 %55
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @pfifo_fast_reset(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.Qdisc, ptr %0, i32 0, i32 29
  br label %3

3:                                                ; preds = %64, %1
  %4 = phi i32 [ 0, %1 ], [ %65, %64 ]
  %5 = getelementptr [3 x %struct.skb_array], ptr %2, i32 0, i32 %4
  %6 = getelementptr inbounds %struct.ptr_ring, ptr %5, i32 0, i32 9
  %7 = load ptr, ptr %6, align 8
  %8 = icmp eq ptr %7, null
  br i1 %8, label %64, label %9

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.ptr_ring, ptr %5, i32 0, i32 7
  %11 = load i32, ptr %10, align 64
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %64, label %13, !prof !13

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct.ptr_ring, ptr %5, i32 0, i32 3
  %15 = getelementptr inbounds %struct.ptr_ring, ptr %5, i32 0, i32 4
  %16 = getelementptr inbounds %struct.ptr_ring, ptr %5, i32 0, i32 8
  %17 = load i32, ptr %14, align 64
  %18 = getelementptr ptr, ptr %7, i32 %17
  %19 = load volatile ptr, ptr %18, align 4
  %20 = icmp eq ptr %19, null
  br i1 %20, label %64, label %21

21:                                               ; preds = %58, %13
  %22 = phi ptr [ %62, %58 ], [ %19, %13 ]
  %23 = phi ptr [ %61, %58 ], [ %18, %13 ]
  %24 = phi i32 [ %60, %58 ], [ %17, %13 ]
  %25 = phi i32 [ %56, %58 ], [ %11, %13 ]
  %26 = add i32 %24, 1
  %27 = load i32, ptr %15, align 4
  %28 = sub i32 %26, %27
  %29 = load i32, ptr %16, align 4
  %30 = icmp slt i32 %28, %29
  %31 = icmp slt i32 %26, %25
  %32 = select i1 %30, i1 %31, i1 false
  br i1 %32, label %50, label %33, !prof !27

33:                                               ; preds = %21
  %34 = icmp slt i32 %24, %27
  br i1 %34, label %48, label %35, !prof !13

35:                                               ; preds = %33
  %36 = add i32 %24, -1
  store ptr null, ptr %23, align 4
  %37 = load i32, ptr %15, align 4
  %38 = icmp slt i32 %36, %37
  br i1 %38, label %46, label %39, !prof !13

39:                                               ; preds = %39, %35
  %40 = phi i32 [ %42, %39 ], [ %36, %35 ]
  %41 = load ptr, ptr %6, align 8
  %42 = add i32 %40, -1
  %43 = getelementptr ptr, ptr %41, i32 %40
  store ptr null, ptr %43, align 4
  %44 = load i32, ptr %15, align 4
  %45 = icmp slt i32 %42, %44
  br i1 %45, label %46, label %39, !prof !13

46:                                               ; preds = %39, %35
  %47 = load i32, ptr %10, align 64
  br label %48

48:                                               ; preds = %46, %33
  %49 = phi i32 [ %47, %46 ], [ %25, %33 ]
  store i32 %26, ptr %15, align 4
  br label %50

50:                                               ; preds = %48, %21
  %51 = phi i32 [ %49, %48 ], [ %25, %21 ]
  %52 = icmp slt i32 %26, %51
  br i1 %52, label %54, label %53, !prof !15

53:                                               ; preds = %50
  store i32 0, ptr %15, align 4
  br label %54

54:                                               ; preds = %53, %50
  %55 = phi i32 [ 0, %53 ], [ %26, %50 ]
  store volatile i32 %55, ptr %14, align 64
  tail call void @kfree_skb_reason(ptr noundef nonnull %22, i32 noundef 0) #17
  %56 = load i32, ptr %10, align 64
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %64, label %58, !prof !13

58:                                               ; preds = %54
  %59 = load ptr, ptr %6, align 8
  %60 = load i32, ptr %14, align 64
  %61 = getelementptr ptr, ptr %59, i32 %60
  %62 = load volatile ptr, ptr %61, align 4
  %63 = icmp eq ptr %62, null
  br i1 %63, label %64, label %21

64:                                               ; preds = %58, %54, %13, %9, %3
  %65 = add nuw nsw i32 %4, 1
  %66 = icmp eq i32 %65, 3
  br i1 %66, label %67, label %3

67:                                               ; preds = %64
  %68 = getelementptr inbounds %struct.Qdisc, ptr %0, i32 0, i32 2
  %69 = load i32, ptr %68, align 8
  %70 = and i32 %69, 32
  %71 = icmp eq i32 %70, 0
  br i1 %71, label %90, label %72

72:                                               ; preds = %67
  %73 = tail call i32 @cpumask_next(i32 noundef -1, ptr noundef nonnull @__cpu_possible_mask) #20
  %74 = load i32, ptr @nr_cpu_ids, align 4
  %75 = icmp ult i32 %73, %74
  br i1 %75, label %76, label %90

76:                                               ; preds = %72
  %77 = getelementptr inbounds %struct.Qdisc, ptr %0, i32 0, i32 12
  br label %78

78:                                               ; preds = %78, %76
  %79 = phi i32 [ %73, %76 ], [ %87, %78 ]
  %80 = load ptr, ptr %77, align 4
  %81 = ptrtoint ptr %80 to i32
  %82 = getelementptr [16 x i32], ptr @__per_cpu_offset, i32 0, i32 %79
  %83 = load i32, ptr %82, align 4
  %84 = add i32 %83, %81
  %85 = inttoptr i32 %84 to ptr
  %86 = getelementptr inbounds %struct.gnet_stats_queue, ptr %85, i32 0, i32 1
  store i32 0, ptr %86, align 4
  store i32 0, ptr %85, align 4
  %87 = tail call i32 @cpumask_next(i32 noundef %79, ptr noundef nonnull @__cpu_possible_mask) #20
  %88 = load i32, ptr @nr_cpu_ids, align 4
  %89 = icmp ult i32 %87, %88
  br i1 %89, label %78, label %90

90:                                               ; preds = %78, %72, %67
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @pfifo_fast_destroy(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr %struct.Qdisc, ptr %0, i32 1, i32 18, i32 2
  %3 = load ptr, ptr %2, align 8
  %4 = icmp eq ptr %3, null
  br i1 %4, label %6, label %5

5:                                                ; preds = %1
  tail call void @kvfree(ptr noundef nonnull %3) #17
  br label %6

6:                                                ; preds = %5, %1
  %7 = getelementptr %struct.Qdisc, ptr %0, i32 2, i32 15, i32 1
  %8 = load ptr, ptr %7, align 8
  %9 = icmp eq ptr %8, null
  br i1 %9, label %11, label %10

10:                                               ; preds = %6
  tail call void @kvfree(ptr noundef nonnull %8) #17
  br label %11

11:                                               ; preds = %10, %6
  %12 = getelementptr %struct.Qdisc, ptr %0, i32 3, i32 2
  %13 = load ptr, ptr %12, align 8
  %14 = icmp eq ptr %13, null
  br i1 %14, label %16, label %15

15:                                               ; preds = %11
  tail call void @kvfree(ptr noundef nonnull %13) #17
  br label %16

16:                                               ; preds = %15, %11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @pfifo_fast_change_tx_queue_len(ptr noundef %0, i32 noundef %1) #0 {
  %3 = alloca [3 x ptr], align 4
  %4 = getelementptr inbounds %struct.Qdisc, ptr %0, i32 0, i32 29
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %3) #17
  store ptr %4, ptr %3, align 4
  %5 = getelementptr %struct.Qdisc, ptr %0, i32 1, i32 24
  %6 = getelementptr inbounds [3 x ptr], ptr %3, i32 0, i32 1
  store ptr %5, ptr %6, align 4
  %7 = getelementptr %struct.Qdisc, ptr %0, i32 2, i32 18
  %8 = getelementptr inbounds [3 x ptr], ptr %3, i32 0, i32 2
  store ptr %7, ptr %8, align 4
  %9 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %10 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %9, i32 noundef 3264, i32 noundef 12) #21
  %11 = icmp eq ptr %10, null
  br i1 %11, label %123, label %12

12:                                               ; preds = %2
  %13 = icmp ugt i32 %1, 2097152
  %14 = shl nuw nsw i32 %1, 2
  br i1 %13, label %15, label %16

15:                                               ; preds = %12
  store ptr null, ptr %10, align 8
  br label %121

16:                                               ; preds = %12
  %17 = tail call noalias ptr @kvmalloc_node(i32 noundef %14, i32 noundef 3520, i32 noundef -1) #19
  store ptr %17, ptr %10, align 8
  %18 = icmp eq ptr %17, null
  br i1 %18, label %121, label %19

19:                                               ; preds = %16
  %20 = tail call noalias ptr @kvmalloc_node(i32 noundef %14, i32 noundef 3520, i32 noundef -1) #19
  %21 = getelementptr ptr, ptr %10, i32 1
  store ptr %20, ptr %21, align 4
  %22 = icmp eq ptr %20, null
  br i1 %22, label %113, label %23

23:                                               ; preds = %19
  %24 = tail call noalias ptr @kvmalloc_node(i32 noundef %14, i32 noundef 3520, i32 noundef -1) #19
  %25 = getelementptr ptr, ptr %10, i32 2
  store ptr %24, ptr %25, align 8
  %26 = icmp eq ptr %24, null
  br i1 %26, label %113, label %27

27:                                               ; preds = %23
  %28 = icmp ult i32 %1, 64
  %29 = select i1 %28, i32 1, i32 32
  br label %30

30:                                               ; preds = %106, %27
  %31 = phi ptr [ %4, %27 ], [ %108, %106 ]
  %32 = phi i32 [ 0, %27 ], [ %104, %106 ]
  %33 = getelementptr inbounds %struct.ptr_ring, ptr %31, i32 0, i32 5
  %34 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %33) #17
  %35 = getelementptr inbounds %struct.ptr_ring, ptr %31, i32 0, i32 1
  tail call void @_raw_spin_lock(ptr noundef %35) #17
  %36 = getelementptr ptr, ptr %10, i32 %32
  %37 = load ptr, ptr %36, align 4
  %38 = getelementptr inbounds %struct.ptr_ring, ptr %31, i32 0, i32 9
  %39 = getelementptr inbounds %struct.ptr_ring, ptr %31, i32 0, i32 7
  %40 = load i32, ptr %39, align 64
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %94, label %42, !prof !13

42:                                               ; preds = %30
  %43 = getelementptr inbounds %struct.ptr_ring, ptr %31, i32 0, i32 3
  %44 = getelementptr inbounds %struct.ptr_ring, ptr %31, i32 0, i32 4
  %45 = getelementptr inbounds %struct.ptr_ring, ptr %31, i32 0, i32 8
  br label %46

46:                                               ; preds = %90, %42
  %47 = phi i32 [ %40, %42 ], [ %92, %90 ]
  %48 = phi i32 [ 0, %42 ], [ %91, %90 ]
  %49 = load ptr, ptr %38, align 8
  %50 = load i32, ptr %43, align 64
  %51 = getelementptr ptr, ptr %49, i32 %50
  %52 = load volatile ptr, ptr %51, align 4
  %53 = icmp eq ptr %52, null
  br i1 %53, label %94, label %54

54:                                               ; preds = %46
  %55 = add i32 %50, 1
  %56 = load i32, ptr %44, align 4
  %57 = sub i32 %55, %56
  %58 = load i32, ptr %45, align 4
  %59 = icmp slt i32 %57, %58
  %60 = icmp slt i32 %55, %47
  %61 = select i1 %59, i1 %60, i1 false
  br i1 %61, label %79, label %62, !prof !27

62:                                               ; preds = %54
  %63 = icmp slt i32 %50, %56
  br i1 %63, label %77, label %64, !prof !13

64:                                               ; preds = %62
  %65 = add i32 %50, -1
  store ptr null, ptr %51, align 4
  %66 = load i32, ptr %44, align 4
  %67 = icmp slt i32 %65, %66
  br i1 %67, label %75, label %68, !prof !13

68:                                               ; preds = %68, %64
  %69 = phi i32 [ %71, %68 ], [ %65, %64 ]
  %70 = load ptr, ptr %38, align 8
  %71 = add i32 %69, -1
  %72 = getelementptr ptr, ptr %70, i32 %69
  store ptr null, ptr %72, align 4
  %73 = load i32, ptr %44, align 4
  %74 = icmp slt i32 %71, %73
  br i1 %74, label %75, label %68, !prof !13

75:                                               ; preds = %68, %64
  %76 = load i32, ptr %39, align 64
  br label %77

77:                                               ; preds = %75, %62
  %78 = phi i32 [ %76, %75 ], [ %47, %62 ]
  store i32 %55, ptr %44, align 4
  br label %79

79:                                               ; preds = %77, %54
  %80 = phi i32 [ %78, %77 ], [ %47, %54 ]
  %81 = icmp slt i32 %55, %80
  br i1 %81, label %83, label %82, !prof !15

82:                                               ; preds = %79
  store i32 0, ptr %44, align 4
  br label %83

83:                                               ; preds = %82, %79
  %84 = phi i32 [ 0, %82 ], [ %55, %79 ]
  store volatile i32 %84, ptr %43, align 64
  %85 = icmp slt i32 %48, %1
  br i1 %85, label %86, label %89

86:                                               ; preds = %83
  %87 = add nsw i32 %48, 1
  %88 = getelementptr ptr, ptr %37, i32 %48
  store ptr %52, ptr %88, align 4
  br label %90

89:                                               ; preds = %83
  tail call void @kfree_skb_reason(ptr noundef nonnull %52, i32 noundef 0) #17
  br label %90

90:                                               ; preds = %89, %86
  %91 = phi i32 [ %87, %86 ], [ %48, %89 ]
  %92 = load i32, ptr %39, align 64
  %93 = icmp eq i32 %92, 0
  br i1 %93, label %94, label %46, !prof !13

94:                                               ; preds = %90, %46, %30
  %95 = phi i32 [ 0, %30 ], [ %48, %46 ], [ %91, %90 ]
  %96 = icmp slt i32 %95, %1
  %97 = select i1 %96, i32 %95, i32 0
  store i32 %1, ptr %39, align 64
  %98 = getelementptr inbounds %struct.ptr_ring, ptr %31, i32 0, i32 8
  store i32 %29, ptr %98, align 4
  store i32 %97, ptr %31, align 64
  %99 = getelementptr inbounds %struct.ptr_ring, ptr %31, i32 0, i32 3
  store i32 0, ptr %99, align 64
  %100 = getelementptr inbounds %struct.ptr_ring, ptr %31, i32 0, i32 4
  store i32 0, ptr %100, align 4
  %101 = load ptr, ptr %38, align 8
  store ptr %37, ptr %38, align 8
  store ptr %101, ptr %36, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #17, !srcloc !9
  %102 = load i16, ptr %35, align 4
  %103 = add i16 %102, 1
  store i16 %103, ptr %35, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #17, !srcloc !10
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #17, !srcloc !11
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !12
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %33, i32 noundef %34) #17
  %104 = add nuw nsw i32 %32, 1
  %105 = icmp eq i32 %104, 3
  br i1 %105, label %109, label %106

106:                                              ; preds = %94
  %107 = getelementptr ptr, ptr %3, i32 %104
  %108 = load ptr, ptr %107, align 4
  br label %30

109:                                              ; preds = %94
  %110 = load ptr, ptr %10, align 8
  tail call void @kvfree(ptr noundef %110) #17
  %111 = load ptr, ptr %21, align 4
  tail call void @kvfree(ptr noundef %111) #17
  %112 = load ptr, ptr %25, align 8
  tail call void @kvfree(ptr noundef %112) #17
  br label %121

113:                                              ; preds = %23, %19
  %114 = phi i32 [ 1, %23 ], [ 0, %19 ]
  %115 = getelementptr ptr, ptr %10, i32 %114
  %116 = load ptr, ptr %115, align 4
  tail call void @kvfree(ptr noundef %116) #17
  br i1 %22, label %121, label %117

117:                                              ; preds = %113
  %118 = add nsw i32 %114, -1
  %119 = getelementptr ptr, ptr %10, i32 %118
  %120 = load ptr, ptr %119, align 4
  tail call void @kvfree(ptr noundef %120) #17
  br label %121

121:                                              ; preds = %117, %113, %109, %16, %15
  %122 = phi i32 [ 0, %109 ], [ -12, %15 ], [ -12, %16 ], [ -12, %117 ], [ -12, %113 ]
  tail call void @kfree(ptr noundef nonnull %10) #17
  br label %123

123:                                              ; preds = %121, %2
  %124 = phi i32 [ -12, %2 ], [ %122, %121 ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %3) #17
  ret i32 %124
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @pfifo_fast_dump(ptr nocapture noundef readnone %0, ptr noundef %1) #0 {
  %3 = alloca %struct.tc_prio_qopt, align 4
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %3) #17
  store i32 3, ptr %3, align 4
  %4 = getelementptr inbounds %struct.tc_prio_qopt, ptr %3, i32 0, i32 1
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(16) %4, ptr noundef nonnull align 1 dereferenceable(16) @prio2band, i32 16, i1 false)
  %5 = call i32 @nla_put(ptr noundef %1, i32 noundef 2, i32 noundef 20, ptr noundef nonnull %3) #17
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %10

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 5
  %9 = load i32, ptr %8, align 8
  br label %10

10:                                               ; preds = %7, %2
  %11 = phi i32 [ %9, %7 ], [ -1, %2 ]
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %3) #17
  ret i32 %11
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @qdisc_alloc(ptr noundef %0, ptr noundef %1, ptr noundef writeonly %2) local_unnamed_addr #0 {
  %4 = icmp eq ptr %0, null
  br i1 %4, label %5, label %8

5:                                                ; preds = %3
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @qdisc_alloc.__msg) #17
  %6 = icmp eq ptr %2, null
  br i1 %6, label %86, label %7

7:                                                ; preds = %5
  store ptr @qdisc_alloc.__msg, ptr %2, align 4
  br label %86

8:                                                ; preds = %3
  %9 = load ptr, ptr %0, align 64
  %10 = getelementptr inbounds %struct.Qdisc_ops, ptr %1, i32 0, i32 3
  %11 = load i32, ptr %10, align 4
  %12 = add i32 %11, 256
  %13 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %12, i32 noundef 3520) #19
  %14 = icmp eq ptr %13, null
  br i1 %14, label %86, label %15

15:                                               ; preds = %8
  %16 = getelementptr inbounds %struct.Qdisc, ptr %13, i32 0, i32 15
  store ptr %16, ptr %16, align 64
  %17 = getelementptr inbounds %struct.Qdisc, ptr %13, i32 0, i32 15, i32 0, i32 0, i32 1
  store ptr %16, ptr %17, align 4
  %18 = getelementptr inbounds %struct.Qdisc, ptr %13, i32 0, i32 15, i32 1
  store i32 0, ptr %18, align 8
  %19 = getelementptr inbounds %struct.Qdisc, ptr %13, i32 0, i32 22
  store ptr %19, ptr %19, align 32
  %20 = getelementptr inbounds %struct.Qdisc, ptr %13, i32 0, i32 22, i32 0, i32 0, i32 1
  store ptr %19, ptr %20, align 4
  %21 = getelementptr inbounds %struct.Qdisc, ptr %13, i32 0, i32 22, i32 1
  store i32 0, ptr %21, align 8
  %22 = getelementptr inbounds %struct.Qdisc, ptr %13, i32 0, i32 16
  store ptr null, ptr %22, align 16
  %23 = getelementptr inbounds %struct.Qdisc, ptr %13, i32 0, i32 16, i32 1
  store ptr null, ptr %23, align 4
  %24 = getelementptr inbounds %struct.Qdisc, ptr %13, i32 0, i32 16, i32 2
  store i32 0, ptr %24, align 8
  %25 = getelementptr inbounds %struct.Qdisc, ptr %13, i32 0, i32 17
  tail call void @gnet_stats_basic_sync_init(ptr noundef %25) #17
  %26 = getelementptr inbounds %struct.Qdisc, ptr %13, i32 0, i32 16, i32 3
  store i32 0, ptr %26, align 4
  %27 = getelementptr inbounds %struct.Qdisc_ops, ptr %1, i32 0, i32 4
  %28 = load i32, ptr %27, align 4
  %29 = and i32 %28, 32
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %58, label %31

31:                                               ; preds = %15
  %32 = tail call noalias ptr @__alloc_percpu_gfp(i32 noundef 32, i32 noundef 16, i32 noundef 3264) #19
  %33 = icmp eq ptr %32, null
  br i1 %33, label %40, label %34

34:                                               ; preds = %31
  %35 = load i32, ptr @nr_cpu_ids, align 4
  %36 = tail call i32 @cpumask_next(i32 noundef -1, ptr noundef nonnull @__cpu_possible_mask) #20
  %37 = icmp ult i32 %36, %35
  br i1 %37, label %38, label %51

38:                                               ; preds = %34
  %39 = ptrtoint ptr %32 to i32
  br label %42

40:                                               ; preds = %31
  %41 = getelementptr inbounds %struct.Qdisc, ptr %13, i32 0, i32 11
  store ptr null, ptr %41, align 16
  br label %85

42:                                               ; preds = %42, %38
  %43 = phi i32 [ %36, %38 ], [ %49, %42 ]
  %44 = getelementptr [16 x i32], ptr @__per_cpu_offset, i32 0, i32 %43
  %45 = load i32, ptr %44, align 4
  %46 = add i32 %45, %39
  %47 = inttoptr i32 %46 to ptr
  %48 = getelementptr inbounds %struct.gnet_stats_basic_sync, ptr %47, i32 0, i32 2
  store i32 0, ptr %48, align 4
  %49 = tail call i32 @cpumask_next(i32 noundef %43, ptr noundef nonnull @__cpu_possible_mask) #20
  %50 = icmp ult i32 %49, %35
  br i1 %50, label %42, label %51

51:                                               ; preds = %42, %34
  %52 = getelementptr inbounds %struct.Qdisc, ptr %13, i32 0, i32 11
  store ptr %32, ptr %52, align 16
  %53 = tail call noalias ptr @__alloc_percpu(i32 noundef 20, i32 noundef 4) #19
  %54 = getelementptr inbounds %struct.Qdisc, ptr %13, i32 0, i32 12
  store ptr %53, ptr %54, align 4
  %55 = icmp eq ptr %53, null
  br i1 %55, label %56, label %58

56:                                               ; preds = %51
  %57 = load ptr, ptr %52, align 16
  tail call void @free_percpu(ptr noundef %57) #17
  br label %85

58:                                               ; preds = %51, %15
  %59 = getelementptr inbounds %struct.Qdisc, ptr %13, i32 0, i32 24
  store i32 0, ptr %59, align 64
  %60 = getelementptr inbounds %struct.Qdisc, ptr %13, i32 0, i32 25
  store i32 0, ptr %60, align 4
  %61 = getelementptr inbounds %struct.Qdisc, ptr %13, i32 0, i32 4
  store ptr %1, ptr %61, align 16
  %62 = load i32, ptr %27, align 4
  %63 = getelementptr inbounds %struct.Qdisc, ptr %13, i32 0, i32 2
  store i32 %62, ptr %63, align 8
  %64 = getelementptr inbounds %struct.Qdisc_ops, ptr %1, i32 0, i32 5
  %65 = load ptr, ptr %64, align 4
  store ptr %65, ptr %13, align 64
  %66 = getelementptr inbounds %struct.Qdisc_ops, ptr %1, i32 0, i32 6
  %67 = load ptr, ptr %66, align 4
  %68 = getelementptr inbounds %struct.Qdisc, ptr %13, i32 0, i32 1
  store ptr %67, ptr %68, align 4
  %69 = getelementptr inbounds %struct.Qdisc, ptr %13, i32 0, i32 9
  store ptr %0, ptr %69, align 8
  %70 = icmp eq ptr %9, null
  br i1 %70, label %83, label %71

71:                                               ; preds = %58
  %72 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #17, !srcloc !16
  %73 = getelementptr inbounds %struct.net_device, ptr %9, i32 0, i32 99
  %74 = load ptr, ptr %73, align 8
  %75 = ptrtoint ptr %74 to i32
  %76 = tail call i32 @llvm.read_register.i32(metadata !0) #17
  %77 = inttoptr i32 %76 to ptr
  %78 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %77) #13, !srcloc !17
  %79 = add i32 %78, %75
  %80 = inttoptr i32 %79 to ptr
  %81 = load i32, ptr %80, align 4
  %82 = add i32 %81, 1
  store i32 %82, ptr %80, align 4
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %72) #17, !srcloc !18
  br label %83

83:                                               ; preds = %71, %58
  %84 = getelementptr inbounds %struct.Qdisc, ptr %13, i32 0, i32 14
  store volatile i32 1, ptr %84, align 4
  br label %86

85:                                               ; preds = %56, %40
  tail call void @kfree(ptr noundef nonnull %13) #17
  br label %86

86:                                               ; preds = %85, %83, %8, %7, %5
  %87 = phi ptr [ %13, %83 ], [ inttoptr (i32 -105 to ptr), %85 ], [ inttoptr (i32 -105 to ptr), %8 ], [ inttoptr (i32 -22 to ptr), %7 ], [ inttoptr (i32 -22 to ptr), %5 ]
  ret ptr %87
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @do_trace_netlink_extack(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @gnet_stats_basic_sync_init(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #8

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__alloc_percpu_gfp(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #9

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @cpumask_next(i32 noundef, ptr noundef) local_unnamed_addr #10

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__alloc_percpu(i32 noundef, i32 noundef) local_unnamed_addr #9

; Function Attrs: null_pointer_is_valid
declare dso_local void @free_percpu(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @qdisc_create_dflt(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3) #0 {
  %5 = getelementptr inbounds %struct.Qdisc_ops, ptr %1, i32 0, i32 21
  %6 = load ptr, ptr %5, align 4
  %7 = tail call zeroext i1 @try_module_get(ptr noundef %6) #17
  br i1 %7, label %11, label %8

8:                                                ; preds = %4
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @qdisc_create_dflt.__msg) #17
  %9 = icmp eq ptr %3, null
  br i1 %9, label %57, label %10

10:                                               ; preds = %8
  store ptr @qdisc_create_dflt.__msg, ptr %3, align 4
  br label %57

11:                                               ; preds = %4
  %12 = tail call ptr @qdisc_alloc(ptr noundef %0, ptr noundef %1, ptr noundef %3)
  %13 = icmp ugt ptr %12, inttoptr (i32 -4096 to ptr)
  br i1 %13, label %14, label %16

14:                                               ; preds = %11
  %15 = load ptr, ptr %5, align 4
  tail call void @module_put(ptr noundef %15) #17
  br label %57

16:                                               ; preds = %11
  %17 = getelementptr inbounds %struct.Qdisc, ptr %12, i32 0, i32 8
  store i32 %2, ptr %17, align 4
  %18 = getelementptr inbounds %struct.Qdisc_ops, ptr %1, i32 0, i32 8
  %19 = load ptr, ptr %18, align 4
  %20 = icmp eq ptr %19, null
  br i1 %20, label %24, label %21

21:                                               ; preds = %16
  %22 = tail call i32 %19(ptr noundef %12, ptr noundef null, ptr noundef %3) #17
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %41

24:                                               ; preds = %21, %16
  %25 = load ptr, ptr %0, align 64
  %26 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_qdisc_create, i32 0, i32 1), align 4
  %27 = icmp sgt i32 %26, 0
  br i1 %27, label %28, label %57

28:                                               ; preds = %24
  %29 = tail call ptr @llvm.thread.pointer() #17
  %30 = getelementptr inbounds %struct.thread_info, ptr %29, i32 0, i32 2
  %31 = load i32, ptr %30, align 8
  %32 = lshr i32 %31, 5
  %33 = getelementptr i32, ptr @__cpu_online_mask, i32 %32
  %34 = load volatile i32, ptr %33, align 4
  %35 = and i32 %31, 31
  %36 = shl nuw i32 1, %35
  %37 = and i32 %36, %34
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %57, label %39

39:                                               ; preds = %28
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !31
  %40 = tail call i32 @__traceiter_qdisc_create(ptr noundef null, ptr noundef %1, ptr noundef %25, i32 noundef %2) #17
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !32
  br label %57

41:                                               ; preds = %21
  %42 = icmp eq ptr %12, null
  br i1 %42, label %57, label %43

43:                                               ; preds = %41
  %44 = getelementptr inbounds %struct.Qdisc, ptr %12, i32 0, i32 2
  %45 = load i32, ptr %44, align 8
  %46 = and i32 %45, 1
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %48, label %57

48:                                               ; preds = %43
  %49 = getelementptr inbounds %struct.Qdisc, ptr %12, i32 0, i32 14
  tail call void asm sideeffect "dmb ish", "~{memory}"() #17, !srcloc !33
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %49) #17, !srcloc !24
  %50 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %49, ptr %49, i32 1, ptr elementtype(i32) %49) #17, !srcloc !34
  %51 = extractvalue { i32, i32, i32 } %50, 0
  %52 = icmp eq i32 %51, 1
  br i1 %52, label %56, label %53

53:                                               ; preds = %48
  %54 = icmp sgt i32 %51, 0
  br i1 %54, label %57, label %55, !prof !15

55:                                               ; preds = %53
  tail call void @refcount_warn_saturate(ptr noundef %49, i32 noundef 3) #17
  br label %57

56:                                               ; preds = %48
  tail call void asm sideeffect "dmb ish", "~{memory}"() #17, !srcloc !35
  tail call fastcc void @qdisc_destroy(ptr noundef nonnull %12) #17
  br label %57

57:                                               ; preds = %56, %55, %53, %43, %41, %39, %28, %24, %14, %10, %8
  %58 = phi ptr [ null, %14 ], [ null, %10 ], [ null, %8 ], [ %12, %24 ], [ %12, %28 ], [ %12, %39 ], [ null, %41 ], [ null, %43 ], [ null, %53 ], [ null, %55 ], [ null, %56 ]
  ret ptr %58
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @try_module_get(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @module_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @qdisc_put(ptr noundef %0) #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %17, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.Qdisc, ptr %0, i32 0, i32 2
  %5 = load i32, ptr %4, align 8
  %6 = and i32 %5, 1
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %17

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.Qdisc, ptr %0, i32 0, i32 14
  tail call void asm sideeffect "dmb ish", "~{memory}"() #17, !srcloc !33
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %9) #17, !srcloc !24
  %10 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %9, ptr %9, i32 1, ptr elementtype(i32) %9) #17, !srcloc !34
  %11 = extractvalue { i32, i32, i32 } %10, 0
  %12 = icmp eq i32 %11, 1
  br i1 %12, label %16, label %13

13:                                               ; preds = %8
  %14 = icmp sgt i32 %11, 0
  br i1 %14, label %17, label %15, !prof !15

15:                                               ; preds = %13
  tail call void @refcount_warn_saturate(ptr noundef %9, i32 noundef 3) #17
  br label %17

16:                                               ; preds = %8
  tail call void asm sideeffect "dmb ish", "~{memory}"() #17, !srcloc !35
  tail call fastcc void @qdisc_destroy(ptr noundef nonnull %0)
  br label %17

17:                                               ; preds = %16, %15, %13, %3, %1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @qdisc_reset(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.Qdisc, ptr %0, i32 0, i32 4
  %3 = load ptr, ptr %2, align 16
  %4 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_qdisc_reset, i32 0, i32 1), align 4
  %5 = icmp sgt i32 %4, 0
  br i1 %5, label %6, label %19

6:                                                ; preds = %1
  %7 = tail call ptr @llvm.thread.pointer() #17
  %8 = getelementptr inbounds %struct.thread_info, ptr %7, i32 0, i32 2
  %9 = load i32, ptr %8, align 8
  %10 = lshr i32 %9, 5
  %11 = getelementptr i32, ptr @__cpu_online_mask, i32 %10
  %12 = load volatile i32, ptr %11, align 4
  %13 = and i32 %9, 31
  %14 = shl nuw i32 1, %13
  %15 = and i32 %14, %12
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %19, label %17

17:                                               ; preds = %6
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !36
  %18 = tail call i32 @__traceiter_qdisc_reset(ptr noundef null, ptr noundef %0) #17
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !37
  br label %19

19:                                               ; preds = %17, %6, %1
  %20 = getelementptr inbounds %struct.Qdisc_ops, ptr %3, i32 0, i32 9
  %21 = load ptr, ptr %20, align 4
  %22 = icmp eq ptr %21, null
  br i1 %22, label %24, label %23

23:                                               ; preds = %19
  tail call void %21(ptr noundef %0) #17
  br label %24

24:                                               ; preds = %23, %19
  %25 = getelementptr inbounds %struct.Qdisc, ptr %0, i32 0, i32 15
  %26 = load ptr, ptr %25, align 64
  %27 = icmp eq ptr %26, %25
  br i1 %27, label %40, label %28

28:                                               ; preds = %24
  %29 = getelementptr inbounds %struct.Qdisc, ptr %0, i32 0, i32 15, i32 1
  br label %30

30:                                               ; preds = %30, %28
  %31 = phi ptr [ %26, %28 ], [ %32, %30 ]
  %32 = load ptr, ptr %31, align 8
  %33 = load i32, ptr %29, align 4
  %34 = add i32 %33, -1
  store volatile i32 %34, ptr %29, align 4
  %35 = load ptr, ptr %31, align 8
  %36 = getelementptr inbounds %struct.anon.0, ptr %31, i32 0, i32 1
  %37 = load ptr, ptr %36, align 4
  store ptr null, ptr %36, align 4
  store ptr null, ptr %31, align 8
  %38 = getelementptr inbounds %struct.anon.0, ptr %35, i32 0, i32 1
  store volatile ptr %37, ptr %38, align 4
  store volatile ptr %35, ptr %37, align 8
  tail call void @kfree_skb_list(ptr noundef %31) #17
  %39 = icmp eq ptr %32, %25
  br i1 %39, label %40, label %30

40:                                               ; preds = %30, %24
  %41 = getelementptr inbounds %struct.Qdisc, ptr %0, i32 0, i32 22
  %42 = load ptr, ptr %41, align 32
  %43 = icmp eq ptr %42, %41
  br i1 %43, label %56, label %44

44:                                               ; preds = %40
  %45 = getelementptr inbounds %struct.Qdisc, ptr %0, i32 0, i32 22, i32 1
  br label %46

46:                                               ; preds = %46, %44
  %47 = phi ptr [ %42, %44 ], [ %48, %46 ]
  %48 = load ptr, ptr %47, align 8
  %49 = load i32, ptr %45, align 4
  %50 = add i32 %49, -1
  store volatile i32 %50, ptr %45, align 4
  %51 = load ptr, ptr %47, align 8
  %52 = getelementptr inbounds %struct.anon.0, ptr %47, i32 0, i32 1
  %53 = load ptr, ptr %52, align 4
  store ptr null, ptr %52, align 4
  store ptr null, ptr %47, align 8
  %54 = getelementptr inbounds %struct.anon.0, ptr %51, i32 0, i32 1
  store volatile ptr %53, ptr %54, align 4
  store volatile ptr %51, ptr %53, align 8
  tail call void @kfree_skb_list(ptr noundef %47) #17
  %55 = icmp eq ptr %48, %41
  br i1 %55, label %56, label %46

56:                                               ; preds = %46, %40
  %57 = getelementptr inbounds %struct.Qdisc, ptr %0, i32 0, i32 16, i32 2
  store i32 0, ptr %57, align 8
  %58 = getelementptr inbounds %struct.Qdisc, ptr %0, i32 0, i32 18, i32 1
  store i32 0, ptr %58, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree_skb_list(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @qdisc_free(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.Qdisc, ptr %0, i32 0, i32 2
  %3 = load i32, ptr %2, align 8
  %4 = and i32 %3, 32
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %11, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.Qdisc, ptr %0, i32 0, i32 11
  %8 = load ptr, ptr %7, align 16
  tail call void @free_percpu(ptr noundef %8) #17
  %9 = getelementptr inbounds %struct.Qdisc, ptr %0, i32 0, i32 12
  %10 = load ptr, ptr %9, align 4
  tail call void @free_percpu(ptr noundef %10) #17
  br label %11

11:                                               ; preds = %6, %1
  tail call void @kfree(ptr noundef %0) #17
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @qdisc_destroy(ptr noundef %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.Qdisc, ptr %0, i32 0, i32 4
  %3 = load ptr, ptr %2, align 16
  %4 = getelementptr inbounds %struct.Qdisc, ptr %0, i32 0, i32 10
  tail call void @gen_kill_estimator(ptr noundef %4) #17
  tail call void @qdisc_reset(ptr noundef %0)
  %5 = getelementptr inbounds %struct.Qdisc_ops, ptr %3, i32 0, i32 10
  %6 = load ptr, ptr %5, align 4
  %7 = icmp eq ptr %6, null
  br i1 %7, label %9, label %8

8:                                                ; preds = %1
  tail call void %6(ptr noundef %0) #17
  br label %9

9:                                                ; preds = %8, %1
  %10 = getelementptr inbounds %struct.Qdisc_ops, ptr %3, i32 0, i32 21
  %11 = load ptr, ptr %10, align 4
  tail call void @module_put(ptr noundef %11) #17
  %12 = getelementptr inbounds %struct.Qdisc, ptr %0, i32 0, i32 9
  %13 = load ptr, ptr %12, align 8
  %14 = load ptr, ptr %13, align 64
  %15 = icmp eq ptr %14, null
  br i1 %15, label %28, label %16

16:                                               ; preds = %9
  %17 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #17, !srcloc !16
  %18 = getelementptr inbounds %struct.net_device, ptr %14, i32 0, i32 99
  %19 = load ptr, ptr %18, align 8
  %20 = ptrtoint ptr %19 to i32
  %21 = tail call i32 @llvm.read_register.i32(metadata !0) #17
  %22 = inttoptr i32 %21 to ptr
  %23 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %22) #13, !srcloc !17
  %24 = add i32 %23, %20
  %25 = inttoptr i32 %24 to ptr
  %26 = load i32, ptr %25, align 4
  %27 = add i32 %26, -1
  store i32 %27, ptr %25, align 4
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %17) #17, !srcloc !18
  br label %28

28:                                               ; preds = %16, %9
  %29 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_qdisc_destroy, i32 0, i32 1), align 4
  %30 = icmp sgt i32 %29, 0
  br i1 %30, label %31, label %44

31:                                               ; preds = %28
  %32 = tail call ptr @llvm.thread.pointer() #17
  %33 = getelementptr inbounds %struct.thread_info, ptr %32, i32 0, i32 2
  %34 = load i32, ptr %33, align 8
  %35 = lshr i32 %34, 5
  %36 = getelementptr i32, ptr @__cpu_online_mask, i32 %35
  %37 = load volatile i32, ptr %36, align 4
  %38 = and i32 %34, 31
  %39 = shl nuw i32 1, %38
  %40 = and i32 %39, %37
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %44, label %42

42:                                               ; preds = %31
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !38
  %43 = tail call i32 @__traceiter_qdisc_destroy(ptr noundef null, ptr noundef %0) #17
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !39
  br label %44

44:                                               ; preds = %42, %31, %28
  %45 = getelementptr inbounds %struct.Qdisc, ptr %0, i32 0, i32 26
  tail call void @call_rcu(ptr noundef %45, ptr noundef nonnull @qdisc_free_cb) #17
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @qdisc_put_unlocked(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.Qdisc, ptr %0, i32 0, i32 2
  %3 = load i32, ptr %2, align 8
  %4 = and i32 %3, 1
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %10

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.Qdisc, ptr %0, i32 0, i32 14
  %8 = tail call zeroext i1 @refcount_dec_and_rtnl_lock(ptr noundef %7) #17
  br i1 %8, label %9, label %10

9:                                                ; preds = %6
  tail call fastcc void @qdisc_destroy(ptr noundef %0)
  tail call void @rtnl_unlock() #17
  br label %10

10:                                               ; preds = %9, %6, %1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @refcount_dec_and_rtnl_lock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtnl_unlock() local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @dev_graft_qdisc(ptr noundef %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.netdev_queue, ptr %0, i32 0, i32 3
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.Qdisc, ptr %4, i32 0, i32 16, i32 3
  tail call void @_raw_spin_lock_bh(ptr noundef %5) #17
  %6 = icmp eq ptr %1, null
  %7 = select i1 %6, ptr @noop_qdisc, ptr %1
  store ptr %7, ptr %3, align 8
  tail call void asm sideeffect "dmb ish", "~{memory}"() #17, !srcloc !40
  %8 = getelementptr inbounds %struct.netdev_queue, ptr %0, i32 0, i32 2
  store volatile ptr @noop_qdisc, ptr %8, align 4
  tail call void @_raw_spin_unlock_bh(ptr noundef %5) #17
  ret ptr %4
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @dev_activate(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 90
  %3 = load ptr, ptr %2, align 4
  %4 = icmp eq ptr %3, @noop_qdisc
  br i1 %4, label %5, label %145

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 87
  %7 = load ptr, ptr %6, align 64
  %8 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 88
  %9 = load i32, ptr %8, align 4
  %10 = icmp ugt i32 %9, 1
  br i1 %10, label %11, label %16

11:                                               ; preds = %5
  %12 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 15
  %13 = load i64, ptr %12, align 16
  %14 = and i64 %13, 524288
  %15 = icmp eq i64 %14, 0
  br i1 %15, label %70, label %18

16:                                               ; preds = %5
  %17 = icmp eq i32 %9, 0
  br i1 %17, label %52, label %18

18:                                               ; preds = %16, %11
  %19 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 15
  %20 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 32
  br label %21

21:                                               ; preds = %50, %18
  %22 = phi ptr [ %7, %18 ], [ %51, %50 ]
  %23 = phi i32 [ 0, %18 ], [ %47, %50 ]
  %24 = getelementptr %struct.netdev_queue, ptr %22, i32 %23
  %25 = load i64, ptr %19, align 16
  %26 = and i64 %25, 524288
  %27 = icmp eq i64 %26, 0
  br i1 %27, label %28, label %33

28:                                               ; preds = %21
  %29 = load ptr, ptr @default_qdisc_ops, align 4
  %30 = load i16, ptr %20, align 16
  %31 = icmp eq i16 %30, 280
  %32 = select i1 %31, ptr @pfifo_fast_ops, ptr %29
  br label %33

33:                                               ; preds = %28, %21
  %34 = phi ptr [ @noqueue_qdisc_ops, %21 ], [ %32, %28 ]
  %35 = tail call ptr @qdisc_create_dflt(ptr noundef %24, ptr noundef %34, i32 noundef -1, ptr noundef null) #17
  %36 = icmp eq ptr %35, null
  br i1 %36, label %46, label %37

37:                                               ; preds = %33
  %38 = load i32, ptr %8, align 4
  %39 = icmp ugt i32 %38, 1
  br i1 %39, label %44, label %40

40:                                               ; preds = %37
  %41 = getelementptr inbounds %struct.Qdisc, ptr %35, i32 0, i32 2
  %42 = load i32, ptr %41, align 8
  %43 = or i32 %42, 80
  store i32 %43, ptr %41, align 8
  br label %44

44:                                               ; preds = %40, %37
  %45 = getelementptr %struct.netdev_queue, ptr %22, i32 %23, i32 3
  store ptr %35, ptr %45, align 8
  br label %46

46:                                               ; preds = %44, %33
  %47 = add nuw i32 %23, 1
  %48 = load i32, ptr %8, align 4
  %49 = icmp ult i32 %47, %48
  br i1 %49, label %50, label %52

50:                                               ; preds = %46
  %51 = load ptr, ptr %6, align 64
  br label %21

52:                                               ; preds = %46, %16
  %53 = getelementptr inbounds %struct.netdev_queue, ptr %7, i32 0, i32 3
  %54 = load ptr, ptr %53, align 8
  tail call void asm sideeffect "dmb ish", "~{memory}"() #17, !srcloc !41
  store volatile ptr %54, ptr %2, align 4
  %55 = getelementptr inbounds %struct.Qdisc, ptr %54, i32 0, i32 2
  %56 = load i32, ptr %55, align 8
  %57 = and i32 %56, 1
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %59, label %80

59:                                               ; preds = %52
  %60 = getelementptr inbounds %struct.Qdisc, ptr %54, i32 0, i32 14
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %60) #17, !srcloc !24
  %61 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %60, ptr %60, i32 1, ptr elementtype(i32) %60) #17, !srcloc !42
  %62 = extractvalue { i32, i32, i32 } %61, 0
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %68, label %64, !prof !13

64:                                               ; preds = %59
  %65 = add i32 %62, 1
  %66 = or i32 %65, %62
  %67 = icmp sgt i32 %66, -1
  br i1 %67, label %78, label %68, !prof !15

68:                                               ; preds = %64, %59
  %69 = phi i32 [ 2, %59 ], [ 1, %64 ]
  tail call void @refcount_warn_saturate(ptr noundef %60, i32 noundef %69) #17
  br label %78

70:                                               ; preds = %11
  %71 = tail call ptr @qdisc_create_dflt(ptr noundef %7, ptr noundef nonnull @mq_qdisc_ops, i32 noundef -1, ptr noundef null) #17
  %72 = icmp eq ptr %71, null
  br i1 %72, label %78, label %73

73:                                               ; preds = %70
  tail call void asm sideeffect "dmb ish", "~{memory}"() #17, !srcloc !43
  store volatile ptr %71, ptr %2, align 4
  %74 = getelementptr inbounds %struct.Qdisc, ptr %71, i32 0, i32 4
  %75 = load ptr, ptr %74, align 16
  %76 = getelementptr inbounds %struct.Qdisc_ops, ptr %75, i32 0, i32 12
  %77 = load ptr, ptr %76, align 4
  tail call void %77(ptr noundef nonnull %71) #17
  br label %78

78:                                               ; preds = %73, %70, %68, %64
  %79 = load ptr, ptr %2, align 4
  br label %80

80:                                               ; preds = %78, %52
  %81 = phi ptr [ %79, %78 ], [ %54, %52 ]
  %82 = icmp eq ptr %81, @noop_qdisc
  br i1 %82, label %83, label %145

83:                                               ; preds = %80
  %84 = load ptr, ptr @default_qdisc_ops, align 4
  %85 = getelementptr inbounds %struct.Qdisc_ops, ptr %84, i32 0, i32 2
  tail call void (ptr, ptr, ...) @netdev_warn(ptr noundef %0, ptr noundef nonnull @.str.3, ptr noundef %85, ptr noundef getelementptr inbounds (%struct.Qdisc_ops, ptr @noqueue_qdisc_ops, i32 0, i32 2)) #18
  %86 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 15
  %87 = load i64, ptr %86, align 16
  %88 = or i64 %87, 524288
  store i64 %88, ptr %86, align 16
  %89 = load i32, ptr %8, align 4
  %90 = icmp eq i32 %89, 0
  br i1 %90, label %124, label %91

91:                                               ; preds = %83
  %92 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 32
  br label %93

93:                                               ; preds = %122, %91
  %94 = phi i64 [ %123, %122 ], [ %88, %91 ]
  %95 = phi i32 [ %119, %122 ], [ 0, %91 ]
  %96 = load ptr, ptr %6, align 64
  %97 = getelementptr %struct.netdev_queue, ptr %96, i32 %95
  %98 = and i64 %94, 524288
  %99 = icmp eq i64 %98, 0
  br i1 %99, label %100, label %105

100:                                              ; preds = %93
  %101 = load ptr, ptr @default_qdisc_ops, align 4
  %102 = load i16, ptr %92, align 16
  %103 = icmp eq i16 %102, 280
  %104 = select i1 %103, ptr @pfifo_fast_ops, ptr %101
  br label %105

105:                                              ; preds = %100, %93
  %106 = phi ptr [ @noqueue_qdisc_ops, %93 ], [ %104, %100 ]
  %107 = tail call ptr @qdisc_create_dflt(ptr noundef %97, ptr noundef %106, i32 noundef -1, ptr noundef null) #17
  %108 = icmp eq ptr %107, null
  br i1 %108, label %118, label %109

109:                                              ; preds = %105
  %110 = load i32, ptr %8, align 4
  %111 = icmp ugt i32 %110, 1
  br i1 %111, label %116, label %112

112:                                              ; preds = %109
  %113 = getelementptr inbounds %struct.Qdisc, ptr %107, i32 0, i32 2
  %114 = load i32, ptr %113, align 8
  %115 = or i32 %114, 80
  store i32 %115, ptr %113, align 8
  br label %116

116:                                              ; preds = %112, %109
  %117 = getelementptr %struct.netdev_queue, ptr %96, i32 %95, i32 3
  store ptr %107, ptr %117, align 8
  br label %118

118:                                              ; preds = %116, %105
  %119 = add nuw i32 %95, 1
  %120 = load i32, ptr %8, align 4
  %121 = icmp ult i32 %119, %120
  br i1 %121, label %122, label %124

122:                                              ; preds = %118
  %123 = load i64, ptr %86, align 16
  br label %93

124:                                              ; preds = %118, %83
  %125 = getelementptr inbounds %struct.netdev_queue, ptr %7, i32 0, i32 3
  %126 = load ptr, ptr %125, align 8
  tail call void asm sideeffect "dmb ish", "~{memory}"() #17, !srcloc !44
  store volatile ptr %126, ptr %2, align 4
  %127 = getelementptr inbounds %struct.Qdisc, ptr %126, i32 0, i32 2
  %128 = load i32, ptr %127, align 8
  %129 = and i32 %128, 1
  %130 = icmp eq i32 %129, 0
  br i1 %130, label %131, label %142

131:                                              ; preds = %124
  %132 = getelementptr inbounds %struct.Qdisc, ptr %126, i32 0, i32 14
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %132) #17, !srcloc !24
  %133 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %132, ptr %132, i32 1, ptr elementtype(i32) %132) #17, !srcloc !42
  %134 = extractvalue { i32, i32, i32 } %133, 0
  %135 = icmp eq i32 %134, 0
  br i1 %135, label %140, label %136, !prof !13

136:                                              ; preds = %131
  %137 = add i32 %134, 1
  %138 = or i32 %137, %134
  %139 = icmp sgt i32 %138, -1
  br i1 %139, label %142, label %140, !prof !15

140:                                              ; preds = %136, %131
  %141 = phi i32 [ 2, %131 ], [ 1, %136 ]
  tail call void @refcount_warn_saturate(ptr noundef %132, i32 noundef %141) #17
  br label %142

142:                                              ; preds = %140, %136, %124
  %143 = load i64, ptr %86, align 16
  %144 = xor i64 %143, 524288
  store i64 %144, ptr %86, align 16
  br label %145

145:                                              ; preds = %142, %80, %1
  %146 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 6
  %147 = load volatile i32, ptr %146, align 4
  %148 = and i32 %147, 4
  %149 = icmp eq i32 %148, 0
  br i1 %149, label %150, label %230

150:                                              ; preds = %145
  %151 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 88
  %152 = load i32, ptr %151, align 4
  %153 = icmp eq i32 %152, 0
  br i1 %153, label %173, label %154

154:                                              ; preds = %150
  %155 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 87
  br label %156

156:                                              ; preds = %167, %154
  %157 = phi i32 [ 0, %154 ], [ %170, %167 ]
  %158 = load ptr, ptr %155, align 64
  %159 = getelementptr %struct.netdev_queue, ptr %158, i32 %157, i32 3
  %160 = load ptr, ptr %159, align 8
  %161 = getelementptr inbounds %struct.Qdisc, ptr %160, i32 0, i32 2
  %162 = load i32, ptr %161, align 8
  %163 = and i32 %162, 1
  %164 = icmp eq i32 %163, 0
  br i1 %164, label %165, label %167

165:                                              ; preds = %156
  %166 = getelementptr inbounds %struct.Qdisc, ptr %160, i32 0, i32 19
  tail call void @_clear_bit(i32 noundef 1, ptr noundef %166) #17
  br label %167

167:                                              ; preds = %165, %156
  tail call void asm sideeffect "dmb ish", "~{memory}"() #17, !srcloc !45
  %168 = getelementptr %struct.netdev_queue, ptr %158, i32 %157, i32 2
  store volatile ptr %160, ptr %168, align 4
  %169 = getelementptr %struct.netdev_queue, ptr %158, i32 %157, i32 11
  store volatile i32 0, ptr %169, align 8
  %170 = add nuw i32 %157, 1
  %171 = load i32, ptr %151, align 4
  %172 = icmp ult i32 %170, %171
  br i1 %172, label %156, label %173

173:                                              ; preds = %167, %150
  %174 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 82
  %175 = load ptr, ptr %174, align 8
  %176 = icmp eq ptr %175, null
  br i1 %176, label %188, label %177

177:                                              ; preds = %173
  %178 = getelementptr inbounds %struct.netdev_queue, ptr %175, i32 0, i32 3
  %179 = load ptr, ptr %178, align 8
  %180 = getelementptr inbounds %struct.Qdisc, ptr %179, i32 0, i32 2
  %181 = load i32, ptr %180, align 8
  %182 = and i32 %181, 1
  %183 = icmp eq i32 %182, 0
  br i1 %183, label %184, label %186

184:                                              ; preds = %177
  %185 = getelementptr inbounds %struct.Qdisc, ptr %179, i32 0, i32 19
  tail call void @_clear_bit(i32 noundef 1, ptr noundef %185) #17
  br label %186

186:                                              ; preds = %184, %177
  tail call void asm sideeffect "dmb ish", "~{memory}"() #17, !srcloc !45
  %187 = getelementptr inbounds %struct.netdev_queue, ptr %175, i32 0, i32 2
  store volatile ptr %179, ptr %187, align 4
  br label %188

188:                                              ; preds = %186, %173
  br i1 %153, label %230, label %189

189:                                              ; preds = %188
  %190 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 87
  %191 = load ptr, ptr %190, align 64
  %192 = load volatile i32, ptr @jiffies, align 64
  %193 = getelementptr inbounds %struct.netdev_queue, ptr %191, i32 0, i32 11
  %194 = load volatile i32, ptr %193, align 8
  %195 = icmp eq i32 %194, %192
  br i1 %195, label %197, label %196

196:                                              ; preds = %189
  store volatile i32 %192, ptr %193, align 8
  br label %197

197:                                              ; preds = %196, %189
  %198 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 16
  %199 = load ptr, ptr %198, align 8
  %200 = getelementptr inbounds %struct.net_device_ops, ptr %199, i32 0, i32 19
  %201 = load ptr, ptr %200, align 4
  %202 = icmp eq ptr %201, null
  br i1 %202, label %230, label %203

203:                                              ; preds = %197
  %204 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 96
  %205 = load i32, ptr %204, align 8
  %206 = icmp slt i32 %205, 1
  br i1 %206, label %207, label %208

207:                                              ; preds = %203
  store i32 500, ptr %204, align 8
  br label %208

208:                                              ; preds = %207, %203
  %209 = phi i32 [ 500, %207 ], [ %205, %203 ]
  %210 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 95
  %211 = load volatile i32, ptr @jiffies, align 64
  %212 = add i32 %211, %209
  %213 = tail call i32 @round_jiffies(i32 noundef %212) #17
  %214 = tail call i32 @mod_timer(ptr noundef %210, i32 noundef %213) #17
  %215 = icmp ne i32 %214, 0
  %216 = icmp eq ptr %0, null
  %217 = or i1 %216, %215
  br i1 %217, label %230, label %218

218:                                              ; preds = %208
  %219 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #17, !srcloc !16
  %220 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 99
  %221 = load ptr, ptr %220, align 8
  %222 = ptrtoint ptr %221 to i32
  %223 = tail call i32 @llvm.read_register.i32(metadata !0) #17
  %224 = inttoptr i32 %223 to ptr
  %225 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %224) #13, !srcloc !17
  %226 = add i32 %225, %222
  %227 = inttoptr i32 %226 to ptr
  %228 = load i32, ptr %227, align 4
  %229 = add i32 %228, 1
  store i32 %229, ptr %227, align 4
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %219) #17, !srcloc !18
  br label %230

230:                                              ; preds = %218, %208, %197, %188, %145
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @dev_deactivate_many(ptr noundef readonly %0) local_unnamed_addr #0 {
  %2 = alloca i32, align 4
  %3 = load ptr, ptr %0, align 4
  %4 = icmp eq ptr %3, %0
  br i1 %4, label %108, label %5

5:                                                ; preds = %103, %1
  %6 = phi ptr [ %106, %103 ], [ %3, %1 ]
  %7 = getelementptr i8, ptr %6, i32 -64
  %8 = getelementptr i8, ptr %6, i32 516
  %9 = load i32, ptr %8, align 4
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %33, label %11

11:                                               ; preds = %5
  %12 = getelementptr i8, ptr %6, i32 512
  br label %13

13:                                               ; preds = %29, %11
  %14 = phi i32 [ %9, %11 ], [ %30, %29 ]
  %15 = phi i32 [ 0, %11 ], [ %31, %29 ]
  %16 = load ptr, ptr %12, align 64
  %17 = getelementptr %struct.netdev_queue, ptr %16, i32 %15, i32 2
  %18 = load ptr, ptr %17, align 4
  %19 = icmp eq ptr %18, null
  br i1 %19, label %29, label %20

20:                                               ; preds = %13
  %21 = getelementptr inbounds %struct.Qdisc, ptr %18, i32 0, i32 2
  %22 = load i32, ptr %21, align 8
  %23 = and i32 %22, 1
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %20
  %26 = getelementptr inbounds %struct.Qdisc, ptr %18, i32 0, i32 19
  tail call void @_set_bit(i32 noundef 1, ptr noundef %26) #17
  br label %27

27:                                               ; preds = %25, %20
  tail call void asm sideeffect "dmb ish", "~{memory}"() #17, !srcloc !46
  store volatile ptr @noop_qdisc, ptr %17, align 4
  %28 = load i32, ptr %8, align 4
  br label %29

29:                                               ; preds = %27, %13
  %30 = phi i32 [ %14, %13 ], [ %28, %27 ]
  %31 = add nuw i32 %15, 1
  %32 = icmp ult i32 %31, %30
  br i1 %32, label %13, label %33

33:                                               ; preds = %29, %5
  %34 = getelementptr i8, ptr %6, i32 456
  %35 = load ptr, ptr %34, align 8
  %36 = icmp eq ptr %35, null
  br i1 %36, label %49, label %37

37:                                               ; preds = %33
  %38 = getelementptr inbounds %struct.netdev_queue, ptr %35, i32 0, i32 2
  %39 = load ptr, ptr %38, align 4
  %40 = icmp eq ptr %39, null
  br i1 %40, label %49, label %41

41:                                               ; preds = %37
  %42 = getelementptr inbounds %struct.Qdisc, ptr %39, i32 0, i32 2
  %43 = load i32, ptr %42, align 8
  %44 = and i32 %43, 1
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %46, label %48

46:                                               ; preds = %41
  %47 = getelementptr inbounds %struct.Qdisc, ptr %39, i32 0, i32 19
  tail call void @_set_bit(i32 noundef 1, ptr noundef %47) #17
  br label %48

48:                                               ; preds = %46, %41
  tail call void asm sideeffect "dmb ish", "~{memory}"() #17, !srcloc !46
  store volatile ptr @noop_qdisc, ptr %38, align 4
  br label %49

49:                                               ; preds = %48, %37, %33
  %50 = tail call ptr @llvm.thread.pointer() #17
  %51 = getelementptr inbounds %struct.thread_info, ptr %50, i32 0, i32 1
  %52 = load volatile i32, ptr %51, align 4
  %53 = add i32 %52, 512
  store volatile i32 %53, ptr %51, align 4
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !47
  %54 = getelementptr i8, ptr %6, i32 532
  tail call void @_raw_spin_lock(ptr noundef %54) #17
  %55 = getelementptr inbounds %struct.thread_info, ptr %50, i32 0, i32 2
  %56 = load i32, ptr %55, align 8
  %57 = load i32, ptr %8, align 4
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %72, label %59

59:                                               ; preds = %49
  %60 = getelementptr i8, ptr %6, i32 512
  br label %61

61:                                               ; preds = %61, %59
  %62 = phi i32 [ 0, %59 ], [ %69, %61 ]
  %63 = load ptr, ptr %60, align 64
  %64 = getelementptr %struct.netdev_queue, ptr %63, i32 %62, i32 9
  tail call void @_raw_spin_lock(ptr noundef %64) #17
  %65 = getelementptr %struct.netdev_queue, ptr %63, i32 %62, i32 10
  store volatile i32 %56, ptr %65, align 4
  %66 = getelementptr %struct.netdev_queue, ptr %63, i32 %62, i32 12
  tail call void @_set_bit(i32 noundef 2, ptr noundef %66) #17
  store volatile i32 -1, ptr %65, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #17, !srcloc !9
  %67 = load i16, ptr %64, align 4
  %68 = add i16 %67, 1
  store i16 %68, ptr %64, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #17, !srcloc !10
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #17, !srcloc !11
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !12
  %69 = add nuw i32 %62, 1
  %70 = load i32, ptr %8, align 4
  %71 = icmp ult i32 %69, %70
  br i1 %71, label %61, label %72

72:                                               ; preds = %61, %49
  %73 = getelementptr i8, ptr %6, i32 548
  %74 = tail call i32 @del_timer(ptr noundef %73) #17
  %75 = icmp eq i32 %74, 0
  %76 = icmp eq ptr %7, null
  %77 = or i1 %76, %75
  br i1 %77, label %90, label %78

78:                                               ; preds = %72
  %79 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #17, !srcloc !16
  %80 = getelementptr i8, ptr %6, i32 584
  %81 = load ptr, ptr %80, align 8
  %82 = ptrtoint ptr %81 to i32
  %83 = tail call i32 @llvm.read_register.i32(metadata !0) #17
  %84 = inttoptr i32 %83 to ptr
  %85 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %84) #13, !srcloc !17
  %86 = add i32 %85, %82
  %87 = inttoptr i32 %86 to ptr
  %88 = load i32, ptr %87, align 4
  %89 = add i32 %88, -1
  store i32 %89, ptr %87, align 4
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %79) #17, !srcloc !18
  br label %90

90:                                               ; preds = %78, %72
  %91 = load i32, ptr %8, align 4
  %92 = icmp eq i32 %91, 0
  br i1 %92, label %103, label %93

93:                                               ; preds = %90
  %94 = getelementptr i8, ptr %6, i32 512
  br label %95

95:                                               ; preds = %95, %93
  %96 = phi i32 [ 0, %93 ], [ %100, %95 ]
  %97 = load ptr, ptr %94, align 64
  %98 = getelementptr %struct.netdev_queue, ptr %97, i32 %96
  %99 = getelementptr %struct.netdev_queue, ptr %97, i32 %96, i32 12
  tail call void @_clear_bit(i32 noundef 2, ptr noundef %99) #17
  tail call void @netif_schedule_queue(ptr noundef %98) #17
  %100 = add nuw i32 %96, 1
  %101 = load i32, ptr %8, align 4
  %102 = icmp ult i32 %100, %101
  br i1 %102, label %95, label %103

103:                                              ; preds = %95, %90
  tail call void asm sideeffect "dmb ish", "~{memory}"() #17, !srcloc !9
  %104 = load i16, ptr %54, align 4
  %105 = add i16 %104, 1
  store i16 %105, ptr %54, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #17, !srcloc !10
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #17, !srcloc !11
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !12
  tail call fastcc void @local_bh_enable() #17
  %106 = load ptr, ptr %6, align 4
  %107 = icmp eq ptr %106, %0
  br i1 %107, label %108, label %5

108:                                              ; preds = %103, %1
  tail call void @synchronize_net() #17
  %109 = load ptr, ptr %0, align 4
  %110 = icmp eq ptr %109, %0
  br i1 %110, label %187, label %114

111:                                              ; preds = %134
  %112 = load ptr, ptr %0, align 4
  %113 = icmp eq ptr %112, %0
  br i1 %113, label %187, label %140

114:                                              ; preds = %134, %108
  %115 = phi ptr [ %135, %134 ], [ %109, %108 ]
  %116 = getelementptr i8, ptr %115, i32 -64
  %117 = getelementptr i8, ptr %115, i32 516
  %118 = load i32, ptr %117, align 4
  %119 = icmp eq i32 %118, 0
  br i1 %119, label %129, label %120

120:                                              ; preds = %114
  %121 = getelementptr i8, ptr %115, i32 512
  br label %122

122:                                              ; preds = %122, %120
  %123 = phi i32 [ 0, %120 ], [ %126, %122 ]
  %124 = load ptr, ptr %121, align 64
  %125 = getelementptr %struct.netdev_queue, ptr %124, i32 %123
  tail call fastcc void @dev_reset_queue(ptr noundef %116, ptr noundef %125, ptr noundef null) #17
  %126 = add nuw i32 %123, 1
  %127 = load i32, ptr %117, align 4
  %128 = icmp ult i32 %126, %127
  br i1 %128, label %122, label %129

129:                                              ; preds = %122, %114
  %130 = getelementptr i8, ptr %115, i32 456
  %131 = load ptr, ptr %130, align 8
  %132 = icmp eq ptr %131, null
  br i1 %132, label %134, label %133

133:                                              ; preds = %129
  tail call fastcc void @dev_reset_queue(ptr noundef %116, ptr noundef nonnull %131, ptr noundef null)
  br label %134

134:                                              ; preds = %133, %129
  %135 = load ptr, ptr %115, align 4
  %136 = icmp eq ptr %135, %0
  br i1 %136, label %111, label %114

137:                                              ; preds = %183, %147, %140
  %138 = load ptr, ptr %141, align 4
  %139 = icmp eq ptr %138, %0
  br i1 %139, label %187, label %140

140:                                              ; preds = %137, %111
  %141 = phi ptr [ %138, %137 ], [ %112, %111 ]
  %142 = getelementptr i8, ptr %141, i32 516
  %143 = load i32, ptr %142, align 4
  %144 = icmp eq i32 %143, 0
  br i1 %144, label %137, label %145

145:                                              ; preds = %140
  %146 = getelementptr i8, ptr %141, i32 512
  br label %153

147:                                              ; preds = %177
  %148 = add nuw i32 %154, 1
  %149 = load i32, ptr %142, align 4
  %150 = icmp ult i32 %148, %149
  br i1 %150, label %151, label %137

151:                                              ; preds = %183, %147
  %152 = phi i32 [ %148, %147 ], [ 0, %183 ]
  br label %153

153:                                              ; preds = %151, %145
  %154 = phi i32 [ 0, %145 ], [ %152, %151 ]
  %155 = load ptr, ptr %146, align 64
  %156 = getelementptr %struct.netdev_queue, ptr %155, i32 %154, i32 3
  %157 = load ptr, ptr %156, align 8
  %158 = getelementptr inbounds %struct.Qdisc, ptr %157, i32 0, i32 16, i32 3
  tail call void @_raw_spin_lock_bh(ptr noundef %158) #17
  %159 = getelementptr inbounds %struct.Qdisc, ptr %157, i32 0, i32 2
  %160 = load i32, ptr %159, align 8
  %161 = and i32 %160, 256
  %162 = icmp eq i32 %161, 0
  br i1 %162, label %170, label %163

163:                                              ; preds = %153
  %164 = getelementptr inbounds %struct.Qdisc, ptr %157, i32 0, i32 25
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2)
  %165 = load volatile i32, ptr %164, align 4
  store volatile i32 %165, ptr %2, align 4
  %166 = lshr i32 %165, 16
  %167 = and i32 %165, 65535
  %168 = icmp ne i32 %167, %166
  %169 = zext i1 %168 to i32
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2)
  br label %174

170:                                              ; preds = %153
  %171 = getelementptr inbounds %struct.Qdisc, ptr %157, i32 0, i32 20
  %172 = load volatile i32, ptr %171, align 4
  %173 = and i32 %172, 1
  br label %174

174:                                              ; preds = %170, %163
  %175 = phi i32 [ %169, %163 ], [ %173, %170 ]
  %176 = icmp eq i32 %175, 0
  br i1 %176, label %177, label %182

177:                                              ; preds = %174
  %178 = getelementptr inbounds %struct.Qdisc, ptr %157, i32 0, i32 19
  %179 = load volatile i32, ptr %178, align 4
  %180 = and i32 %179, 1
  %181 = icmp eq i32 %180, 0
  tail call void @_raw_spin_unlock_bh(ptr noundef %158) #17
  br i1 %181, label %147, label %183

182:                                              ; preds = %174
  tail call void @_raw_spin_unlock_bh(ptr noundef %158) #17
  br label %183

183:                                              ; preds = %182, %177
  %184 = tail call i32 @schedule_timeout_uninterruptible(i32 noundef 1) #17
  %185 = load i32, ptr %142, align 4
  %186 = icmp eq i32 %185, 0
  br i1 %186, label %137, label %151

187:                                              ; preds = %137, %111, %108
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @synchronize_net() local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @dev_reset_queue(ptr nocapture noundef readnone %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readnone %2) unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.netdev_queue, ptr %1, i32 0, i32 3
  %5 = load ptr, ptr %4, align 8
  %6 = icmp eq ptr %5, null
  br i1 %6, label %20, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.Qdisc, ptr %5, i32 0, i32 2
  %9 = load i32, ptr %8, align 8
  %10 = and i32 %9, 256
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %16, label %12

12:                                               ; preds = %7
  %13 = getelementptr inbounds %struct.Qdisc, ptr %5, i32 0, i32 25
  tail call void @_raw_spin_lock_bh(ptr noundef %13) #17
  %14 = getelementptr inbounds %struct.Qdisc, ptr %5, i32 0, i32 16, i32 3
  tail call void @_raw_spin_lock_bh(ptr noundef %14) #17
  tail call void @qdisc_reset(ptr noundef nonnull %5)
  tail call void @_raw_spin_unlock_bh(ptr noundef %14) #17
  %15 = getelementptr inbounds %struct.Qdisc, ptr %5, i32 0, i32 19
  tail call void @_clear_bit(i32 noundef 2, ptr noundef %15) #17
  tail call void @_clear_bit(i32 noundef 3, ptr noundef %15) #17
  br label %18

16:                                               ; preds = %7
  %17 = getelementptr inbounds %struct.Qdisc, ptr %5, i32 0, i32 16, i32 3
  tail call void @_raw_spin_lock_bh(ptr noundef %17) #17
  tail call void @qdisc_reset(ptr noundef nonnull %5)
  br label %18

18:                                               ; preds = %16, %12
  %19 = phi ptr [ %13, %12 ], [ %17, %16 ]
  tail call void @_raw_spin_unlock_bh(ptr noundef %19) #17
  br label %20

20:                                               ; preds = %18, %3
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @schedule_timeout_uninterruptible(i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @dev_deactivate(ptr noundef %0) #0 {
  %2 = alloca %struct.list_head, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #17
  %3 = getelementptr inbounds %struct.list_head, ptr %2, i32 0, i32 1
  %4 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 10
  store ptr %4, ptr %3, align 4
  store ptr %2, ptr %4, align 4
  %5 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 10, i32 1
  store ptr %2, ptr %5, align 4
  store volatile ptr %4, ptr %2, align 8
  call void @dev_deactivate_many(ptr noundef nonnull %2)
  %6 = load ptr, ptr %3, align 4
  %7 = load ptr, ptr %2, align 8
  %8 = getelementptr inbounds %struct.list_head, ptr %7, i32 0, i32 1
  store ptr %6, ptr %8, align 4
  store volatile ptr %7, ptr %6, align 4
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #17
  ret void
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #11

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @dev_qdisc_change_real_num_tx(ptr nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 90
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.Qdisc, ptr %4, i32 0, i32 4
  %6 = load ptr, ptr %5, align 16
  %7 = getelementptr inbounds %struct.Qdisc_ops, ptr %6, i32 0, i32 14
  %8 = load ptr, ptr %7, align 4
  %9 = icmp eq ptr %8, null
  br i1 %9, label %11, label %10

10:                                               ; preds = %2
  tail call void %8(ptr noundef %4, i32 noundef %1) #17
  br label %11

11:                                               ; preds = %10, %2
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define dso_local void @mq_change_real_num_tx(ptr nocapture %0, i32 %1) #5 {
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @dev_qdisc_change_tx_queue_len(ptr noundef %0) local_unnamed_addr #0 {
  %2 = alloca %struct.list_head, align 8
  %3 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 14
  %4 = load i32, ptr %3, align 8
  %5 = and i32 %4, 1
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %14, label %7

7:                                                ; preds = %1
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #17
  %8 = getelementptr inbounds %struct.list_head, ptr %2, i32 0, i32 1
  %9 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 10
  store ptr %9, ptr %8, align 4
  store ptr %2, ptr %9, align 4
  %10 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 10, i32 1
  store ptr %2, ptr %10, align 4
  store volatile ptr %9, ptr %2, align 8
  call void @dev_deactivate_many(ptr noundef nonnull %2) #17
  %11 = load ptr, ptr %8, align 4
  %12 = load ptr, ptr %2, align 8
  %13 = getelementptr inbounds %struct.list_head, ptr %12, i32 0, i32 1
  store ptr %11, ptr %13, align 4
  store volatile ptr %12, ptr %11, align 4
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #17
  br label %14

14:                                               ; preds = %7, %1
  %15 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 91
  %16 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 88
  %17 = load i32, ptr %16, align 4
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %42, label %19

19:                                               ; preds = %14
  %20 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 87
  br label %21

21:                                               ; preds = %38, %19
  %22 = phi i32 [ %17, %19 ], [ %39, %38 ]
  %23 = phi i32 [ 0, %19 ], [ %40, %38 ]
  %24 = load ptr, ptr %20, align 64
  %25 = getelementptr %struct.netdev_queue, ptr %24, i32 %23, i32 3
  %26 = load ptr, ptr %25, align 8
  %27 = getelementptr inbounds %struct.Qdisc, ptr %26, i32 0, i32 4
  %28 = load ptr, ptr %27, align 16
  %29 = getelementptr inbounds %struct.Qdisc_ops, ptr %28, i32 0, i32 13
  %30 = load ptr, ptr %29, align 4
  %31 = icmp eq ptr %30, null
  br i1 %31, label %38, label %32

32:                                               ; preds = %21
  %33 = load i32, ptr %15, align 16
  %34 = call i32 %30(ptr noundef %26, i32 noundef %33) #17
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %36, label %42

36:                                               ; preds = %32
  %37 = load i32, ptr %16, align 4
  br label %38

38:                                               ; preds = %36, %21
  %39 = phi i32 [ %37, %36 ], [ %22, %21 ]
  %40 = add nuw i32 %23, 1
  %41 = icmp ult i32 %40, %39
  br i1 %41, label %21, label %42

42:                                               ; preds = %38, %32, %14
  %43 = phi i32 [ 0, %14 ], [ %34, %32 ], [ 0, %38 ]
  br i1 %6, label %45, label %44

44:                                               ; preds = %42
  call void @dev_activate(ptr noundef %0)
  br label %45

45:                                               ; preds = %44, %42
  ret i32 %43
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @dev_init_scheduler(ptr noundef %0) local_unnamed_addr #0 {
  tail call void asm sideeffect "dmb ish", "~{memory}"() #17, !srcloc !48
  %2 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 90
  store volatile ptr @noop_qdisc, ptr %2, align 4
  %3 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 88
  %4 = load i32, ptr %3, align 4
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %16, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 87
  br label %8

8:                                                ; preds = %8, %6
  %9 = phi i32 [ 0, %6 ], [ %13, %8 ]
  %10 = load ptr, ptr %7, align 64
  tail call void asm sideeffect "dmb ish", "~{memory}"() #17, !srcloc !49
  %11 = getelementptr %struct.netdev_queue, ptr %10, i32 %9, i32 2
  store volatile ptr @noop_qdisc, ptr %11, align 4
  %12 = getelementptr %struct.netdev_queue, ptr %10, i32 %9, i32 3
  store ptr @noop_qdisc, ptr %12, align 8
  %13 = add nuw i32 %9, 1
  %14 = load i32, ptr %3, align 4
  %15 = icmp ult i32 %13, %14
  br i1 %15, label %8, label %16

16:                                               ; preds = %8, %1
  %17 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 82
  %18 = load ptr, ptr %17, align 8
  %19 = icmp eq ptr %18, null
  br i1 %19, label %23, label %20

20:                                               ; preds = %16
  tail call void asm sideeffect "dmb ish", "~{memory}"() #17, !srcloc !49
  %21 = getelementptr inbounds %struct.netdev_queue, ptr %18, i32 0, i32 2
  store volatile ptr @noop_qdisc, ptr %21, align 4
  %22 = getelementptr inbounds %struct.netdev_queue, ptr %18, i32 0, i32 3
  store ptr @noop_qdisc, ptr %22, align 8
  br label %23

23:                                               ; preds = %20, %16
  %24 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 95
  tail call void @init_timer_key(ptr noundef %24, ptr noundef nonnull @dev_watchdog, i32 noundef 0, ptr noundef null, ptr noundef null) #17
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @dev_watchdog(ptr noundef %0) #0 {
  %2 = getelementptr i8, ptr %0, i32 -612
  %3 = getelementptr i8, ptr %0, i32 -16
  tail call void @_raw_spin_lock(ptr noundef %3) #17
  %4 = getelementptr i8, ptr %0, i32 -32
  %5 = load i32, ptr %4, align 4
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %78, label %7

7:                                                ; preds = %1
  %8 = getelementptr i8, ptr %0, i32 -36
  %9 = load ptr, ptr %8, align 64
  %10 = getelementptr %struct.netdev_queue, ptr %9, i32 0, i32 2
  %11 = load volatile ptr, ptr %10, align 4
  %12 = icmp eq ptr %11, @noop_qdisc
  br i1 %12, label %13, label %23

13:                                               ; preds = %17, %7
  %14 = phi i32 [ %15, %17 ], [ 0, %7 ]
  %15 = add nuw i32 %14, 1
  %16 = icmp eq i32 %15, %5
  br i1 %16, label %21, label %17

17:                                               ; preds = %13
  %18 = getelementptr %struct.netdev_queue, ptr %9, i32 %15, i32 2
  %19 = load volatile ptr, ptr %18, align 4
  %20 = icmp eq ptr %19, @noop_qdisc
  br i1 %20, label %13, label %21

21:                                               ; preds = %17, %13
  %22 = icmp ult i32 %15, %5
  br i1 %22, label %23, label %78

23:                                               ; preds = %21, %7
  %24 = getelementptr i8, ptr %0, i32 -576
  %25 = load volatile i32, ptr %24, align 4
  %26 = and i32 %25, 2
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %87, label %28

28:                                               ; preds = %23
  %29 = load volatile i32, ptr %24, align 4
  %30 = and i32 %29, 1
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %84, label %32

32:                                               ; preds = %28
  %33 = load volatile i32, ptr %24, align 4
  %34 = and i32 %33, 4
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %36, label %81

36:                                               ; preds = %32
  %37 = getelementptr i8, ptr %0, i32 20
  br label %38

38:                                               ; preds = %52, %36
  %39 = phi i32 [ 0, %36 ], [ %53, %52 ]
  %40 = getelementptr %struct.netdev_queue, ptr %9, i32 %39, i32 11
  %41 = load volatile i32, ptr %40, align 8
  %42 = getelementptr %struct.netdev_queue, ptr %9, i32 %39, i32 12
  %43 = load i32, ptr %42, align 4
  %44 = and i32 %43, 3
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %52, label %46

46:                                               ; preds = %38
  %47 = load i32, ptr %37, align 8
  %48 = add i32 %47, %41
  %49 = load volatile i32, ptr @jiffies, align 64
  %50 = sub i32 %48, %49
  %51 = icmp slt i32 %50, 0
  br i1 %51, label %55, label %52

52:                                               ; preds = %46, %38
  %53 = add nuw i32 %39, 1
  %54 = icmp eq i32 %53, %5
  br i1 %54, label %66, label %38

55:                                               ; preds = %46
  %56 = getelementptr %struct.netdev_queue, ptr %9, i32 %39, i32 6
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %56) #17, !srcloc !24
  %57 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %56, ptr %56, i32 1, ptr elementtype(i32) %56) #17, !srcloc !25
  tail call fastcc void @trace_net_dev_xmit_timeout(ptr noundef %2, i32 noundef %39)
  %58 = load i1, ptr @dev_watchdog.__already_done, align 1
  br i1 %58, label %61, label %59, !prof !15

59:                                               ; preds = %55
  store i1 true, ptr @dev_watchdog.__already_done, align 1
  %60 = tail call ptr @netdev_drivername(ptr noundef %2) #17
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 530, i32 noundef 9, ptr noundef nonnull @.str.4, ptr noundef %2, ptr noundef %60, i32 noundef %39) #17
  br label %61

61:                                               ; preds = %59, %55
  tail call fastcc void @netif_freeze_queues(ptr noundef %2)
  %62 = getelementptr i8, ptr %0, i32 -492
  %63 = load ptr, ptr %62, align 8
  %64 = getelementptr inbounds %struct.net_device_ops, ptr %63, i32 0, i32 19
  %65 = load ptr, ptr %64, align 4
  tail call void %65(ptr noundef %2, i32 noundef %39) #17
  tail call fastcc void @netif_unfreeze_queues(ptr noundef %2)
  br label %66

66:                                               ; preds = %61, %52
  %67 = load volatile i32, ptr @jiffies, align 64
  %68 = getelementptr i8, ptr %0, i32 20
  %69 = load i32, ptr %68, align 8
  %70 = add i32 %69, %67
  %71 = tail call i32 @round_jiffies(i32 noundef %70) #17
  %72 = tail call i32 @mod_timer(ptr noundef %0, i32 noundef %71) #17
  %73 = icmp eq i32 %72, 0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #17, !srcloc !9
  %74 = load i16, ptr %3, align 4
  %75 = add i16 %74, 1
  store i16 %75, ptr %3, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #17, !srcloc !10
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #17, !srcloc !11
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !12
  %76 = icmp eq ptr %2, null
  %77 = or i1 %76, %73
  br i1 %77, label %104, label %92

78:                                               ; preds = %21, %1
  tail call void asm sideeffect "dmb ish", "~{memory}"() #17, !srcloc !9
  %79 = load i16, ptr %3, align 4
  %80 = add i16 %79, 1
  store i16 %80, ptr %3, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #17, !srcloc !10
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #17, !srcloc !11
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !12
  br label %90

81:                                               ; preds = %32
  tail call void asm sideeffect "dmb ish", "~{memory}"() #17, !srcloc !9
  %82 = load i16, ptr %3, align 4
  %83 = add i16 %82, 1
  store i16 %83, ptr %3, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #17, !srcloc !10
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #17, !srcloc !11
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !12
  br label %90

84:                                               ; preds = %28
  tail call void asm sideeffect "dmb ish", "~{memory}"() #17, !srcloc !9
  %85 = load i16, ptr %3, align 4
  %86 = add i16 %85, 1
  store i16 %86, ptr %3, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #17, !srcloc !10
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #17, !srcloc !11
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !12
  br label %90

87:                                               ; preds = %23
  tail call void asm sideeffect "dmb ish", "~{memory}"() #17, !srcloc !9
  %88 = load i16, ptr %3, align 4
  %89 = add i16 %88, 1
  store i16 %89, ptr %3, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #17, !srcloc !10
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #17, !srcloc !11
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !12
  br label %90

90:                                               ; preds = %87, %84, %81, %78
  %91 = icmp eq ptr %2, null
  br i1 %91, label %104, label %92

92:                                               ; preds = %90, %66
  %93 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #17, !srcloc !16
  %94 = getelementptr i8, ptr %0, i32 36
  %95 = load ptr, ptr %94, align 8
  %96 = ptrtoint ptr %95 to i32
  %97 = tail call i32 @llvm.read_register.i32(metadata !0) #17
  %98 = inttoptr i32 %97 to ptr
  %99 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %98) #13, !srcloc !17
  %100 = add i32 %99, %96
  %101 = inttoptr i32 %100 to ptr
  %102 = load i32, ptr %101, align 4
  %103 = add i32 %102, -1
  store i32 %103, ptr %101, align 4
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %93) #17, !srcloc !18
  br label %104

104:                                              ; preds = %92, %90, %66
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @dev_shutdown(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 88
  %3 = load i32, ptr %2, align 4
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %32, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 87
  br label %7

7:                                                ; preds = %28, %5
  %8 = phi i32 [ 0, %5 ], [ %29, %28 ]
  %9 = load ptr, ptr %6, align 64
  %10 = getelementptr %struct.netdev_queue, ptr %9, i32 %8, i32 3
  %11 = load ptr, ptr %10, align 8
  %12 = icmp eq ptr %11, null
  br i1 %12, label %28, label %13

13:                                               ; preds = %7
  tail call void asm sideeffect "dmb ish", "~{memory}"() #17, !srcloc !50
  %14 = getelementptr %struct.netdev_queue, ptr %9, i32 %8, i32 2
  store volatile ptr @noop_qdisc, ptr %14, align 4
  store ptr @noop_qdisc, ptr %10, align 8
  %15 = getelementptr inbounds %struct.Qdisc, ptr %11, i32 0, i32 2
  %16 = load i32, ptr %15, align 8
  %17 = and i32 %16, 1
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %28

19:                                               ; preds = %13
  %20 = getelementptr inbounds %struct.Qdisc, ptr %11, i32 0, i32 14
  tail call void asm sideeffect "dmb ish", "~{memory}"() #17, !srcloc !33
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %20) #17, !srcloc !24
  %21 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %20, ptr %20, i32 1, ptr elementtype(i32) %20) #17, !srcloc !34
  %22 = extractvalue { i32, i32, i32 } %21, 0
  %23 = icmp eq i32 %22, 1
  br i1 %23, label %27, label %24

24:                                               ; preds = %19
  %25 = icmp sgt i32 %22, 0
  br i1 %25, label %28, label %26, !prof !15

26:                                               ; preds = %24
  tail call void @refcount_warn_saturate(ptr noundef %20, i32 noundef 3) #17
  br label %28

27:                                               ; preds = %19
  tail call void asm sideeffect "dmb ish", "~{memory}"() #17, !srcloc !35
  tail call fastcc void @qdisc_destroy(ptr noundef nonnull %11) #17
  br label %28

28:                                               ; preds = %27, %26, %24, %13, %7
  %29 = add nuw i32 %8, 1
  %30 = load i32, ptr %2, align 4
  %31 = icmp ult i32 %29, %30
  br i1 %31, label %7, label %32

32:                                               ; preds = %28, %1
  %33 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 82
  %34 = load ptr, ptr %33, align 8
  %35 = icmp eq ptr %34, null
  br i1 %35, label %55, label %36

36:                                               ; preds = %32
  %37 = getelementptr inbounds %struct.netdev_queue, ptr %34, i32 0, i32 3
  %38 = load ptr, ptr %37, align 8
  %39 = icmp eq ptr %38, null
  br i1 %39, label %55, label %40

40:                                               ; preds = %36
  tail call void asm sideeffect "dmb ish", "~{memory}"() #17, !srcloc !50
  %41 = getelementptr inbounds %struct.netdev_queue, ptr %34, i32 0, i32 2
  store volatile ptr @noop_qdisc, ptr %41, align 4
  store ptr @noop_qdisc, ptr %37, align 8
  %42 = getelementptr inbounds %struct.Qdisc, ptr %38, i32 0, i32 2
  %43 = load i32, ptr %42, align 8
  %44 = and i32 %43, 1
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %46, label %55

46:                                               ; preds = %40
  %47 = getelementptr inbounds %struct.Qdisc, ptr %38, i32 0, i32 14
  tail call void asm sideeffect "dmb ish", "~{memory}"() #17, !srcloc !33
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %47) #17, !srcloc !24
  %48 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %47, ptr %47, i32 1, ptr elementtype(i32) %47) #17, !srcloc !34
  %49 = extractvalue { i32, i32, i32 } %48, 0
  %50 = icmp eq i32 %49, 1
  br i1 %50, label %54, label %51

51:                                               ; preds = %46
  %52 = icmp sgt i32 %49, 0
  br i1 %52, label %55, label %53, !prof !15

53:                                               ; preds = %51
  tail call void @refcount_warn_saturate(ptr noundef %47, i32 noundef 3) #17
  br label %55

54:                                               ; preds = %46
  tail call void asm sideeffect "dmb ish", "~{memory}"() #17, !srcloc !35
  tail call fastcc void @qdisc_destroy(ptr noundef nonnull %38) #17
  br label %55

55:                                               ; preds = %54, %53, %51, %40, %36, %32
  %56 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 90
  %57 = load ptr, ptr %56, align 4
  %58 = icmp eq ptr %57, null
  br i1 %58, label %73, label %59

59:                                               ; preds = %55
  %60 = getelementptr inbounds %struct.Qdisc, ptr %57, i32 0, i32 2
  %61 = load i32, ptr %60, align 8
  %62 = and i32 %61, 1
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %64, label %73

64:                                               ; preds = %59
  %65 = getelementptr inbounds %struct.Qdisc, ptr %57, i32 0, i32 14
  tail call void asm sideeffect "dmb ish", "~{memory}"() #17, !srcloc !33
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %65) #17, !srcloc !24
  %66 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %65, ptr %65, i32 1, ptr elementtype(i32) %65) #17, !srcloc !34
  %67 = extractvalue { i32, i32, i32 } %66, 0
  %68 = icmp eq i32 %67, 1
  br i1 %68, label %72, label %69

69:                                               ; preds = %64
  %70 = icmp sgt i32 %67, 0
  br i1 %70, label %73, label %71, !prof !15

71:                                               ; preds = %69
  tail call void @refcount_warn_saturate(ptr noundef %65, i32 noundef 3) #17
  br label %73

72:                                               ; preds = %64
  tail call void asm sideeffect "dmb ish", "~{memory}"() #17, !srcloc !35
  tail call fastcc void @qdisc_destroy(ptr noundef nonnull %57) #17
  br label %73

73:                                               ; preds = %72, %71, %69, %59, %55
  tail call void asm sideeffect "dmb ish", "~{memory}"() #17, !srcloc !51
  store volatile ptr @noop_qdisc, ptr %56, align 4
  %74 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 95, i32 0, i32 1
  %75 = load volatile ptr, ptr %74, align 4
  %76 = icmp eq ptr %75, null
  br i1 %76, label %78, label %77, !prof !15

77:                                               ; preds = %73
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 1484, i32 noundef 9, ptr noundef null) #17
  br label %78

78:                                               ; preds = %77, %73
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @psched_ratecfg_precompute(ptr nocapture noundef %0, ptr nocapture noundef readonly %1, i64 noundef %2) #0 {
  tail call void @llvm.memset.p0.i32(ptr noundef align 8 dereferenceable(24) %0, i8 0, i32 24, i1 false)
  %4 = getelementptr inbounds %struct.tc_ratespec, ptr %1, i32 0, i32 2
  %5 = load i16, ptr %4, align 2
  %6 = getelementptr inbounds %struct.psched_ratecfg, ptr %0, i32 0, i32 2
  store i16 %5, ptr %6, align 4
  %7 = getelementptr inbounds %struct.tc_ratespec, ptr %1, i32 0, i32 4
  %8 = load i16, ptr %7, align 2
  %9 = getelementptr inbounds %struct.psched_ratecfg, ptr %0, i32 0, i32 3
  store i16 %8, ptr %9, align 2
  %10 = getelementptr inbounds %struct.tc_ratespec, ptr %1, i32 0, i32 5
  %11 = load i32, ptr %10, align 4
  %12 = zext i32 %11 to i64
  %13 = tail call i64 @llvm.umax.i64(i64 %12, i64 %2)
  store i64 %13, ptr %0, align 8
  %14 = getelementptr inbounds %struct.tc_ratespec, ptr %1, i32 0, i32 1
  %15 = load i8, ptr %14, align 1
  %16 = and i8 %15, 15
  %17 = getelementptr inbounds %struct.psched_ratecfg, ptr %0, i32 0, i32 4
  store i8 %16, ptr %17, align 8
  %18 = getelementptr inbounds %struct.psched_ratecfg, ptr %0, i32 0, i32 1
  %19 = getelementptr inbounds %struct.psched_ratecfg, ptr %0, i32 0, i32 5
  store i32 1, ptr %18, align 4
  store i8 0, ptr %19, align 1
  %20 = icmp eq i64 %13, 0
  br i1 %20, label %35, label %21

21:                                               ; preds = %3
  %22 = tail call i64 @div64_u64(i64 noundef 1000000000, i64 noundef %13) #17
  %23 = trunc i64 %22 to i32
  store i32 %23, ptr %18, align 4
  %24 = icmp sgt i32 %23, -1
  br i1 %24, label %25, label %35

25:                                               ; preds = %25, %21
  %26 = phi i64 [ %27, %25 ], [ 1000000000, %21 ]
  %27 = shl nuw i64 %26, 1
  %28 = load i8, ptr %19, align 1
  %29 = add i8 %28, 1
  store i8 %29, ptr %19, align 1
  %30 = tail call i64 @div64_u64(i64 noundef %27, i64 noundef %13) #17
  %31 = trunc i64 %30 to i32
  store i32 %31, ptr %18, align 4
  %32 = icmp sgt i32 %31, -1
  %33 = icmp sgt i64 %27, -1
  %34 = and i1 %33, %32
  br i1 %34, label %25, label %35

35:                                               ; preds = %25, %21, %3
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @psched_ppscfg_precompute(ptr nocapture noundef %0, i64 noundef %1) #0 {
  store i64 %1, ptr %0, align 8
  %3 = getelementptr inbounds %struct.psched_pktrate, ptr %0, i32 0, i32 1
  %4 = getelementptr inbounds %struct.psched_pktrate, ptr %0, i32 0, i32 2
  store i32 1, ptr %3, align 4
  store i8 0, ptr %4, align 1
  %5 = icmp eq i64 %1, 0
  br i1 %5, label %20, label %6

6:                                                ; preds = %2
  %7 = tail call i64 @div64_u64(i64 noundef 1000000000, i64 noundef %1) #17
  %8 = trunc i64 %7 to i32
  store i32 %8, ptr %3, align 4
  %9 = icmp sgt i32 %8, -1
  br i1 %9, label %10, label %20

10:                                               ; preds = %10, %6
  %11 = phi i64 [ %12, %10 ], [ 1000000000, %6 ]
  %12 = shl nuw i64 %11, 1
  %13 = load i8, ptr %4, align 1
  %14 = add i8 %13, 1
  store i8 %14, ptr %4, align 1
  %15 = tail call i64 @div64_u64(i64 noundef %12, i64 noundef %1) #17
  %16 = trunc i64 %15 to i32
  store i32 %16, ptr %3, align 4
  %17 = icmp sgt i32 %16, -1
  %18 = icmp sgt i64 %12, -1
  %19 = and i1 %18, %17
  br i1 %19, label %10, label %20

20:                                               ; preds = %10, %6, %2
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @mini_qdisc_pair_swap(ptr noundef %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.mini_Qdisc_pair, ptr %0, i32 0, i32 2
  %4 = load ptr, ptr %3, align 4
  %5 = load ptr, ptr %4, align 4
  %6 = icmp eq ptr %1, null
  br i1 %6, label %7, label %8

7:                                                ; preds = %2
  store volatile ptr null, ptr %4, align 4
  br label %18

8:                                                ; preds = %2
  %9 = icmp eq ptr %5, %0
  %10 = getelementptr inbounds %struct.mini_Qdisc_pair, ptr %0, i32 0, i32 1
  %11 = select i1 %9, ptr %10, ptr %0
  %12 = getelementptr inbounds %struct.mini_Qdisc, ptr %11, i32 0, i32 4
  %13 = load i32, ptr %12, align 4
  %14 = tail call zeroext i1 @poll_state_synchronize_rcu(i32 noundef %13) #17
  br i1 %14, label %16, label %15

15:                                               ; preds = %8
  tail call void @synchronize_rcu_expedited() #17
  br label %16

16:                                               ; preds = %15, %8
  store ptr %1, ptr %11, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #17, !srcloc !52
  %17 = load ptr, ptr %3, align 4
  store volatile ptr %11, ptr %17, align 4
  br label %18

18:                                               ; preds = %16, %7
  %19 = icmp eq ptr %5, null
  br i1 %19, label %23, label %20

20:                                               ; preds = %18
  %21 = tail call i32 @start_poll_synchronize_rcu() #17
  %22 = getelementptr inbounds %struct.mini_Qdisc, ptr %5, i32 0, i32 4
  store i32 %21, ptr %22, align 4
  br label %23

23:                                               ; preds = %20, %18
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @poll_state_synchronize_rcu(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @synchronize_rcu_expedited() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @start_poll_synchronize_rcu() local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn writeonly uwtable(sync)
define dso_local void @mini_qdisc_pair_block_init(ptr nocapture noundef writeonly %0, ptr noundef %1) #6 {
  %3 = getelementptr inbounds %struct.mini_Qdisc, ptr %0, i32 0, i32 1
  store ptr %1, ptr %3, align 4
  %4 = getelementptr inbounds %struct.mini_Qdisc_pair, ptr %0, i32 0, i32 1, i32 1
  store ptr %1, ptr %4, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @mini_qdisc_pair_init(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, ptr noundef %2) #0 {
  %4 = getelementptr inbounds %struct.Qdisc, ptr %1, i32 0, i32 11
  %5 = load ptr, ptr %4, align 16
  %6 = getelementptr inbounds %struct.mini_Qdisc, ptr %0, i32 0, i32 2
  store ptr %5, ptr %6, align 4
  %7 = getelementptr inbounds %struct.Qdisc, ptr %1, i32 0, i32 12
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.mini_Qdisc, ptr %0, i32 0, i32 3
  store ptr %8, ptr %9, align 4
  %10 = load ptr, ptr %4, align 16
  %11 = getelementptr inbounds %struct.mini_Qdisc_pair, ptr %0, i32 0, i32 1, i32 2
  store ptr %10, ptr %11, align 4
  %12 = load ptr, ptr %7, align 4
  %13 = getelementptr inbounds %struct.mini_Qdisc_pair, ptr %0, i32 0, i32 1, i32 3
  store ptr %12, ptr %13, align 4
  %14 = tail call i32 @get_state_synchronize_rcu() #17
  %15 = getelementptr inbounds %struct.mini_Qdisc, ptr %0, i32 0, i32 4
  store i32 %14, ptr %15, align 4
  %16 = getelementptr inbounds %struct.mini_Qdisc_pair, ptr %0, i32 0, i32 1, i32 4
  store i32 %14, ptr %16, align 4
  %17 = getelementptr inbounds %struct.mini_Qdisc_pair, ptr %0, i32 0, i32 2
  store ptr %2, ptr %17, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @get_state_synchronize_rcu() local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.thread.pointer() #12

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #13

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_qdisc_dequeue(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_schedule_queue(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @kvmalloc_node(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #9

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree_skb_reason(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kvfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #9

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #14

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nla_put(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_qdisc_create(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_qdisc_reset(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @gen_kill_estimator(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @call_rcu(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @qdisc_free_cb(ptr noundef %0) #0 {
  %2 = getelementptr i8, ptr %0, i32 -192
  %3 = load i32, ptr %2, align 8
  %4 = and i32 %3, 32
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %11, label %6

6:                                                ; preds = %1
  %7 = getelementptr i8, ptr %0, i32 -152
  %8 = load ptr, ptr %7, align 16
  tail call void @free_percpu(ptr noundef %8) #17
  %9 = getelementptr i8, ptr %0, i32 -148
  %10 = load ptr, ptr %9, align 4
  tail call void @free_percpu(ptr noundef %10) #17
  br label %11

11:                                               ; preds = %6, %1
  %12 = getelementptr i8, ptr %0, i32 -200
  tail call void @kfree(ptr noundef %12) #17
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_qdisc_destroy(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_bh(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_bh(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @netdev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @del_timer(ptr noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @local_bh_enable() #15 {
  br label %1

1:                                                ; preds = %0
  tail call void @__local_bh_enable_ip(i32 noundef ptrtoint (ptr blockaddress(@local_bh_enable, %1) to i32), i32 noundef 512) #17
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__local_bh_enable_ip(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @trace_net_dev_xmit_timeout(ptr noundef %0, i32 noundef %1) unnamed_addr #15 {
  %3 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_net_dev_xmit_timeout, i32 0, i32 1), align 4
  %4 = icmp sgt i32 %3, 0
  br i1 %4, label %5, label %18

5:                                                ; preds = %2
  %6 = tail call ptr @llvm.thread.pointer() #17
  %7 = getelementptr inbounds %struct.thread_info, ptr %6, i32 0, i32 2
  %8 = load i32, ptr %7, align 8
  %9 = lshr i32 %8, 5
  %10 = getelementptr i32, ptr @__cpu_online_mask, i32 %9
  %11 = load volatile i32, ptr %10, align 4
  %12 = and i32 %8, 31
  %13 = shl nuw i32 1, %12
  %14 = and i32 %13, %11
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %18, label %16

16:                                               ; preds = %5
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !53
  %17 = tail call i32 @__traceiter_net_dev_xmit_timeout(ptr noundef null, ptr noundef %0, i32 noundef %1) #17
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !54
  br label %18

18:                                               ; preds = %16, %5, %2
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @netdev_drivername(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_net_dev_xmit_timeout(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @div64_u64(i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.umax.i64(i64, i64) #16

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nofree norecurse nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { argmemonly nofree nounwind willreturn }
attributes #9 = { null_pointer_is_valid allocsize(0) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #11 = { argmemonly nofree nounwind willreturn writeonly }
attributes #12 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #13 = { nounwind readonly }
attributes #14 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #15 = { inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #16 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #17 = { nounwind }
attributes #18 = { cold nounwind }
attributes #19 = { nounwind allocsize(0) }
attributes #20 = { nounwind readonly willreturn }
attributes #21 = { nounwind allocsize(2) }

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
!9 = !{i64 2148963562}
!10 = !{i64 2148959386}
!11 = !{i64 2148959461, i64 2148959488, i64 2148959535, i64 2148959557, i64 2148959585, i64 2148959605}
!12 = !{i64 2148986565}
!13 = !{!"branch_weights", i32 1, i32 2000}
!14 = !{i64 2157239421}
!15 = !{!"branch_weights", i32 2000, i32 1}
!16 = !{i64 295720, i64 295781}
!17 = !{i64 314420}
!18 = !{i64 298737}
!19 = !{!"branch_weights", i32 1, i32 4000, i32 1}
!20 = !{i64 2155313694}
!21 = !{i64 2155313880}
!22 = !{i64 2154713466, i64 2154713954, i64 2154713503, i64 2154713559, i64 2154713593, i64 2154713617, i64 2154713658, i64 2154713679, i64 2154713707, i64 2154713741}
!23 = !{i64 2154834540, i64 2154835030, i64 2154834577, i64 2154834633, i64 2154834667, i64 2154834691, i64 2154834732, i64 2154834753, i64 2154834781, i64 2154834815}
!24 = !{i64 400481, i64 2147890452, i64 2147890478, i64 2147890525, i64 2147890547, i64 2147890575, i64 2147890595}
!25 = !{i64 2147902664, i64 2147902690, i64 2147902719, i64 2147902753, i64 2147902784, i64 2147902807}
!26 = !{i64 2153549940}
!27 = !{!"branch_weights", i32 4000000, i32 4001}
!28 = !{i64 2149419437}
!29 = !{i64 2149419738}
!30 = !{i64 2157276389}
!31 = !{i64 2155381785}
!32 = !{i64 2155381953}
!33 = !{i64 2148004320}
!34 = !{i64 2147906479, i64 2147906511, i64 2147906540, i64 2147906574, i64 2147906605, i64 2147906628}
!35 = !{i64 2149031550}
!36 = !{i64 2155350140}
!37 = !{i64 2155350276}
!38 = !{i64 2155365524}
!39 = !{i64 2155365664}
!40 = !{i64 2157295260}
!41 = !{i64 2157303995}
!42 = !{i64 2147904122, i64 2147904154, i64 2147904183, i64 2147904217, i64 2147904248, i64 2147904271}
!43 = !{i64 2157311303}
!44 = !{i64 2157319056}
!45 = !{i64 2157326861}
!46 = !{i64 2157343289}
!47 = !{i64 2148895687}
!48 = !{i64 2157371785}
!49 = !{i64 2157364317}
!50 = !{i64 2157379636}
!51 = !{i64 2157387550}
!52 = !{i64 2157403836}
!53 = !{i64 2155473142}
!54 = !{i64 2155473326}
