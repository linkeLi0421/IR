; ModuleID = '/llk/IR/net/dsa/tag_8021q.c_pt.bc'
source_filename = "../net/dsa/tag_8021q.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_dsa_8021q_bridge_tx_fwd_offload_vid:\09\09\09\09\09"
module asm "\09.asciz \09\22dsa_8021q_bridge_tx_fwd_offload_vid\22\09\09\09\09\09"
module asm "__kstrtabns_dsa_8021q_bridge_tx_fwd_offload_vid:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_dsa_tag_8021q_tx_vid:\09\09\09\09\09"
module asm "\09.asciz \09\22dsa_tag_8021q_tx_vid\22\09\09\09\09\09"
module asm "__kstrtabns_dsa_tag_8021q_tx_vid:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_dsa_tag_8021q_rx_vid:\09\09\09\09\09"
module asm "\09.asciz \09\22dsa_tag_8021q_rx_vid\22\09\09\09\09\09"
module asm "__kstrtabns_dsa_tag_8021q_rx_vid:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_dsa_8021q_rx_switch_id:\09\09\09\09\09"
module asm "\09.asciz \09\22dsa_8021q_rx_switch_id\22\09\09\09\09\09"
module asm "__kstrtabns_dsa_8021q_rx_switch_id:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_dsa_8021q_rx_source_port:\09\09\09\09\09"
module asm "\09.asciz \09\22dsa_8021q_rx_source_port\22\09\09\09\09\09"
module asm "__kstrtabns_dsa_8021q_rx_source_port:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_vid_is_dsa_8021q_rxvlan:\09\09\09\09\09"
module asm "\09.asciz \09\22vid_is_dsa_8021q_rxvlan\22\09\09\09\09\09"
module asm "__kstrtabns_vid_is_dsa_8021q_rxvlan:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_vid_is_dsa_8021q_txvlan:\09\09\09\09\09"
module asm "\09.asciz \09\22vid_is_dsa_8021q_txvlan\22\09\09\09\09\09"
module asm "__kstrtabns_vid_is_dsa_8021q_txvlan:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_vid_is_dsa_8021q:\09\09\09\09\09"
module asm "\09.asciz \09\22vid_is_dsa_8021q\22\09\09\09\09\09"
module asm "__kstrtabns_vid_is_dsa_8021q:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_dsa_tag_8021q_bridge_tx_fwd_offload:\09\09\09\09\09"
module asm "\09.asciz \09\22dsa_tag_8021q_bridge_tx_fwd_offload\22\09\09\09\09\09"
module asm "__kstrtabns_dsa_tag_8021q_bridge_tx_fwd_offload:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_dsa_tag_8021q_bridge_tx_fwd_unoffload:\09\09\09\09\09"
module asm "\09.asciz \09\22dsa_tag_8021q_bridge_tx_fwd_unoffload\22\09\09\09\09\09"
module asm "__kstrtabns_dsa_tag_8021q_bridge_tx_fwd_unoffload:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_dsa_tag_8021q_register:\09\09\09\09\09"
module asm "\09.asciz \09\22dsa_tag_8021q_register\22\09\09\09\09\09"
module asm "__kstrtabns_dsa_tag_8021q_register:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_dsa_tag_8021q_unregister:\09\09\09\09\09"
module asm "\09.asciz \09\22dsa_tag_8021q_unregister\22\09\09\09\09\09"
module asm "__kstrtabns_dsa_tag_8021q_unregister:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_dsa_8021q_xmit:\09\09\09\09\09"
module asm "\09.asciz \09\22dsa_8021q_xmit\22\09\09\09\09\09"
module asm "__kstrtabns_dsa_8021q_xmit:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_dsa_8021q_rcv:\09\09\09\09\09"
module asm "\09.asciz \09\22dsa_8021q_rcv\22\09\09\09\09\09"
module asm "__kstrtabns_dsa_8021q_rcv:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.dsa_port = type { %union.anon, ptr, ptr, ptr, ptr, i32, i32, ptr, ptr, [6 x i8], i8, i8, ptr, i32, ptr, %struct.devlink_port, ptr, %struct.phylink_config, ptr, ptr, %struct.list_head, ptr, ptr, %struct.mutex, %struct.list_head, %struct.list_head }
%union.anon = type { ptr }
%struct.devlink_port = type { %struct.list_head, %struct.list_head, %struct.list_head, ptr, i32, %struct.spinlock, i32, i32, ptr, %struct.devlink_port_attrs, i8, %struct.delayed_work, %struct.list_head, %struct.mutex, ptr }
%struct.spinlock = type { %union.anon.13 }
%union.anon.13 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.14 }
%union.anon.14 = type { i32 }
%struct.devlink_port_attrs = type { i8, i32, i32, %struct.netdev_phys_item_id, %union.anon.126 }
%struct.netdev_phys_item_id = type { [32 x i8], i8 }
%union.anon.126 = type { %struct.devlink_port_pci_vf_attrs }
%struct.devlink_port_pci_vf_attrs = type { i32, i16, i16, i8 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.atomic_t = type { i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32 }
%struct.hlist_node = type { ptr, ptr }
%struct.phylink_config = type { ptr, i32, i8, i8, i8, i8, ptr, [1 x i32], i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.dsa_switch = type { ptr, ptr, i32, i16, %struct.notifier_block, ptr, ptr, ptr, ptr, i32, ptr, i32, i32, ptr, ptr, i32, i32, i32, i32 }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.dsa_switch_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dsa_switch_tree = type { %struct.list_head, %struct.list_head, %struct.raw_notifier_head, i32, %struct.kref, ptr, ptr, i32, i8, ptr, %struct.list_head, i32, i32 }
%struct.raw_notifier_head = type { ptr }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.dsa_notifier_tag_8021q_vlan_info = type { i32, i32, i32, i16 }
%struct.dsa_8021q_context = type { ptr, %struct.list_head, i16 }
%struct.dsa_tag_8021q_vlan = type { %struct.list_head, i32, i16, %struct.refcount_struct }
%struct.dsa_notifier_bridge_info = type { %struct.dsa_bridge, i32, i32, i32, i8 }
%struct.dsa_bridge = type { ptr, i32, i8, %struct.refcount_struct }
%struct.sk_buff = type { %union.anon.0, %union.anon.3, %union.anon.102, [48 x i8], %union.anon.103, i32, i32, i16, i16, i16, [0 x i8], i8, i8, %union.anon.105, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon.0 = type { %struct.anon.1 }
%struct.anon.1 = type { ptr, ptr, %union.anon.2 }
%union.anon.2 = type { ptr }
%union.anon.3 = type { ptr }
%union.anon.102 = type { i64 }
%union.anon.103 = type { %struct.anon.104 }
%struct.anon.104 = type { i32, ptr }
%union.anon.105 = type { %struct.anon.106 }
%struct.anon.106 = type { [0 x i8], i16, [0 x i8], i16, %union.anon.107, i32, i32, i32, i16, i16, %union.anon.109, %union.anon.110, %union.anon.111, i16, i16, i16, i16, i16, i16, i16 }
%union.anon.107 = type { i32 }
%union.anon.109 = type { i32 }
%union.anon.110 = type { i32 }
%union.anon.111 = type { i16 }
%struct.skb_shared_info = type { i8, i8, i8, i8, i16, i16, ptr, %struct.skb_shared_hwtstamps, i32, i32, %struct.atomic_t, ptr, [17 x %struct.bio_vec] }
%struct.skb_shared_hwtstamps = type { i64 }
%struct.bio_vec = type { ptr, i32, i32 }
%struct.vlan_ethhdr = type { %union.anon.155, i16, i16, i16 }
%union.anon.155 = type { %struct.anon.156 }
%struct.anon.156 = type { [6 x i8], [6 x i8] }

@__kstrtab_dsa_8021q_bridge_tx_fwd_offload_vid = external dso_local constant [0 x i8], align 1
@__kstrtabns_dsa_8021q_bridge_tx_fwd_offload_vid = external dso_local constant [0 x i8], align 1
@__ksymtab_dsa_8021q_bridge_tx_fwd_offload_vid = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @dsa_8021q_bridge_tx_fwd_offload_vid to i32), ptr @__kstrtab_dsa_8021q_bridge_tx_fwd_offload_vid, ptr @__kstrtabns_dsa_8021q_bridge_tx_fwd_offload_vid }, section "___ksymtab_gpl+dsa_8021q_bridge_tx_fwd_offload_vid", align 4
@__kstrtab_dsa_tag_8021q_tx_vid = external dso_local constant [0 x i8], align 1
@__kstrtabns_dsa_tag_8021q_tx_vid = external dso_local constant [0 x i8], align 1
@__ksymtab_dsa_tag_8021q_tx_vid = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @dsa_tag_8021q_tx_vid to i32), ptr @__kstrtab_dsa_tag_8021q_tx_vid, ptr @__kstrtabns_dsa_tag_8021q_tx_vid }, section "___ksymtab_gpl+dsa_tag_8021q_tx_vid", align 4
@__kstrtab_dsa_tag_8021q_rx_vid = external dso_local constant [0 x i8], align 1
@__kstrtabns_dsa_tag_8021q_rx_vid = external dso_local constant [0 x i8], align 1
@__ksymtab_dsa_tag_8021q_rx_vid = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @dsa_tag_8021q_rx_vid to i32), ptr @__kstrtab_dsa_tag_8021q_rx_vid, ptr @__kstrtabns_dsa_tag_8021q_rx_vid }, section "___ksymtab_gpl+dsa_tag_8021q_rx_vid", align 4
@__kstrtab_dsa_8021q_rx_switch_id = external dso_local constant [0 x i8], align 1
@__kstrtabns_dsa_8021q_rx_switch_id = external dso_local constant [0 x i8], align 1
@__ksymtab_dsa_8021q_rx_switch_id = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @dsa_8021q_rx_switch_id to i32), ptr @__kstrtab_dsa_8021q_rx_switch_id, ptr @__kstrtabns_dsa_8021q_rx_switch_id }, section "___ksymtab_gpl+dsa_8021q_rx_switch_id", align 4
@__kstrtab_dsa_8021q_rx_source_port = external dso_local constant [0 x i8], align 1
@__kstrtabns_dsa_8021q_rx_source_port = external dso_local constant [0 x i8], align 1
@__ksymtab_dsa_8021q_rx_source_port = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @dsa_8021q_rx_source_port to i32), ptr @__kstrtab_dsa_8021q_rx_source_port, ptr @__kstrtabns_dsa_8021q_rx_source_port }, section "___ksymtab_gpl+dsa_8021q_rx_source_port", align 4
@__kstrtab_vid_is_dsa_8021q_rxvlan = external dso_local constant [0 x i8], align 1
@__kstrtabns_vid_is_dsa_8021q_rxvlan = external dso_local constant [0 x i8], align 1
@__ksymtab_vid_is_dsa_8021q_rxvlan = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @vid_is_dsa_8021q_rxvlan to i32), ptr @__kstrtab_vid_is_dsa_8021q_rxvlan, ptr @__kstrtabns_vid_is_dsa_8021q_rxvlan }, section "___ksymtab_gpl+vid_is_dsa_8021q_rxvlan", align 4
@__kstrtab_vid_is_dsa_8021q_txvlan = external dso_local constant [0 x i8], align 1
@__kstrtabns_vid_is_dsa_8021q_txvlan = external dso_local constant [0 x i8], align 1
@__ksymtab_vid_is_dsa_8021q_txvlan = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @vid_is_dsa_8021q_txvlan to i32), ptr @__kstrtab_vid_is_dsa_8021q_txvlan, ptr @__kstrtabns_vid_is_dsa_8021q_txvlan }, section "___ksymtab_gpl+vid_is_dsa_8021q_txvlan", align 4
@__kstrtab_vid_is_dsa_8021q = external dso_local constant [0 x i8], align 1
@__kstrtabns_vid_is_dsa_8021q = external dso_local constant [0 x i8], align 1
@__ksymtab_vid_is_dsa_8021q = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @vid_is_dsa_8021q to i32), ptr @__kstrtab_vid_is_dsa_8021q, ptr @__kstrtabns_vid_is_dsa_8021q }, section "___ksymtab_gpl+vid_is_dsa_8021q", align 4
@__kstrtab_dsa_tag_8021q_bridge_tx_fwd_offload = external dso_local constant [0 x i8], align 1
@__kstrtabns_dsa_tag_8021q_bridge_tx_fwd_offload = external dso_local constant [0 x i8], align 1
@__ksymtab_dsa_tag_8021q_bridge_tx_fwd_offload = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @dsa_tag_8021q_bridge_tx_fwd_offload to i32), ptr @__kstrtab_dsa_tag_8021q_bridge_tx_fwd_offload, ptr @__kstrtabns_dsa_tag_8021q_bridge_tx_fwd_offload }, section "___ksymtab_gpl+dsa_tag_8021q_bridge_tx_fwd_offload", align 4
@__kstrtab_dsa_tag_8021q_bridge_tx_fwd_unoffload = external dso_local constant [0 x i8], align 1
@__kstrtabns_dsa_tag_8021q_bridge_tx_fwd_unoffload = external dso_local constant [0 x i8], align 1
@__ksymtab_dsa_tag_8021q_bridge_tx_fwd_unoffload = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @dsa_tag_8021q_bridge_tx_fwd_unoffload to i32), ptr @__kstrtab_dsa_tag_8021q_bridge_tx_fwd_unoffload, ptr @__kstrtabns_dsa_tag_8021q_bridge_tx_fwd_unoffload }, section "___ksymtab_gpl+dsa_tag_8021q_bridge_tx_fwd_unoffload", align 4
@__kstrtab_dsa_tag_8021q_register = external dso_local constant [0 x i8], align 1
@__kstrtabns_dsa_tag_8021q_register = external dso_local constant [0 x i8], align 1
@__ksymtab_dsa_tag_8021q_register = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @dsa_tag_8021q_register to i32), ptr @__kstrtab_dsa_tag_8021q_register, ptr @__kstrtabns_dsa_tag_8021q_register }, section "___ksymtab_gpl+dsa_tag_8021q_register", align 4
@__kstrtab_dsa_tag_8021q_unregister = external dso_local constant [0 x i8], align 1
@__kstrtabns_dsa_tag_8021q_unregister = external dso_local constant [0 x i8], align 1
@__ksymtab_dsa_tag_8021q_unregister = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @dsa_tag_8021q_unregister to i32), ptr @__kstrtab_dsa_tag_8021q_unregister, ptr @__kstrtabns_dsa_tag_8021q_unregister }, section "___ksymtab_gpl+dsa_tag_8021q_unregister", align 4
@__kstrtab_dsa_8021q_xmit = external dso_local constant [0 x i8], align 1
@__kstrtabns_dsa_8021q_xmit = external dso_local constant [0 x i8], align 1
@__ksymtab_dsa_8021q_xmit = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @dsa_8021q_xmit to i32), ptr @__kstrtab_dsa_8021q_xmit, ptr @__kstrtabns_dsa_8021q_xmit }, section "___ksymtab_gpl+dsa_8021q_xmit", align 4
@__kstrtab_dsa_8021q_rcv = external dso_local constant [0 x i8], align 1
@__kstrtabns_dsa_8021q_rcv = external dso_local constant [0 x i8], align 1
@__ksymtab_dsa_8021q_rcv = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @dsa_8021q_rcv to i32), ptr @__kstrtab_dsa_8021q_rcv, ptr @__kstrtabns_dsa_8021q_rcv }, section "___ksymtab_gpl+dsa_8021q_rcv", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@dsa_tag_8021q_setup.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str = private unnamed_addr constant [20 x i8] c"net/dsa/tag_8021q.c\00", align 1
@.str.1 = private unnamed_addr constant [35 x i8] c"RTNL: assertion failed at %s (%d)\0A\00", align 1
@.str.2 = private unnamed_addr constant [47 x i8] c"Failed to setup VLAN tagging for port %d: %pe\0A\00", align 1
@.str.3 = private unnamed_addr constant [43 x i8] c"Failed to apply RX VID %d to port %d: %pe\0A\00", align 1
@.str.4 = private unnamed_addr constant [43 x i8] c"Failed to apply TX VID %d on port %d: %pe\0A\00", align 1
@dsa_tag_8021q_teardown.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@llvm.compiler.used = appending global [14 x ptr] [ptr @__ksymtab_dsa_8021q_bridge_tx_fwd_offload_vid, ptr @__ksymtab_dsa_8021q_rcv, ptr @__ksymtab_dsa_8021q_rx_source_port, ptr @__ksymtab_dsa_8021q_rx_switch_id, ptr @__ksymtab_dsa_8021q_xmit, ptr @__ksymtab_dsa_tag_8021q_bridge_tx_fwd_offload, ptr @__ksymtab_dsa_tag_8021q_bridge_tx_fwd_unoffload, ptr @__ksymtab_dsa_tag_8021q_register, ptr @__ksymtab_dsa_tag_8021q_rx_vid, ptr @__ksymtab_dsa_tag_8021q_tx_vid, ptr @__ksymtab_dsa_tag_8021q_unregister, ptr @__ksymtab_vid_is_dsa_8021q, ptr @__ksymtab_vid_is_dsa_8021q_rxvlan, ptr @__ksymtab_vid_is_dsa_8021q_txvlan], section "llvm.metadata"

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define dso_local zeroext i16 @dsa_8021q_bridge_tx_fwd_offload_vid(i32 noundef %0) #0 {
  %2 = shl i32 %0, 4
  %3 = and i32 %2, 48
  %4 = shl i32 %0, 7
  %5 = and i32 %4, 512
  %6 = or i32 %3, %5
  %7 = trunc i32 %6 to i16
  %8 = or i16 %7, 2048
  ret i16 %8
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define dso_local zeroext i16 @dsa_tag_8021q_tx_vid(ptr nocapture noundef readonly %0) #1 {
  %2 = getelementptr inbounds %struct.dsa_port, ptr %0, i32 0, i32 4
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.dsa_switch, ptr %3, i32 0, i32 2
  %5 = load i32, ptr %4, align 4
  %6 = shl i32 %5, 6
  %7 = and i32 %6, 448
  %8 = getelementptr inbounds %struct.dsa_port, ptr %0, i32 0, i32 5
  %9 = load i32, ptr %8, align 4
  %10 = and i32 %9, 15
  %11 = or i32 %7, %10
  %12 = trunc i32 %11 to i16
  %13 = or i16 %12, 2048
  ret i16 %13
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define dso_local zeroext i16 @dsa_tag_8021q_rx_vid(ptr nocapture noundef readonly %0) #1 {
  %2 = getelementptr inbounds %struct.dsa_port, ptr %0, i32 0, i32 4
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.dsa_switch, ptr %3, i32 0, i32 2
  %5 = load i32, ptr %4, align 4
  %6 = shl i32 %5, 6
  %7 = and i32 %6, 448
  %8 = getelementptr inbounds %struct.dsa_port, ptr %0, i32 0, i32 5
  %9 = load i32, ptr %8, align 4
  %10 = and i32 %9, 15
  %11 = or i32 %7, %10
  %12 = trunc i32 %11 to i16
  %13 = or i16 %12, 1024
  ret i16 %13
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define dso_local i32 @dsa_8021q_rx_switch_id(i16 noundef zeroext %0) #0 {
  %2 = lshr i16 %0, 6
  %3 = and i16 %2, 7
  %4 = zext i16 %3 to i32
  ret i32 %4
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define dso_local i32 @dsa_8021q_rx_source_port(i16 noundef zeroext %0) #0 {
  %2 = and i16 %0, 15
  %3 = zext i16 %2 to i32
  ret i32 %3
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define dso_local zeroext i1 @vid_is_dsa_8021q_rxvlan(i16 noundef zeroext %0) #0 {
  %2 = and i16 %0, 3072
  %3 = icmp eq i16 %2, 1024
  ret i1 %3
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define dso_local zeroext i1 @vid_is_dsa_8021q_txvlan(i16 noundef zeroext %0) #0 {
  %2 = and i16 %0, 3072
  %3 = icmp eq i16 %2, 2048
  ret i1 %3
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define dso_local zeroext i1 @vid_is_dsa_8021q(i16 noundef zeroext %0) #0 {
  %2 = and i16 %0, 3072
  %3 = icmp eq i16 %2, 1024
  %4 = icmp eq i16 %2, 2048
  %5 = or i1 %3, %4
  ret i1 %5
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @dsa_switch_tag_8021q_vlan_add(ptr noundef readonly %0, ptr nocapture noundef readonly %1) local_unnamed_addr #2 {
  %3 = getelementptr inbounds %struct.dsa_switch, ptr %0, i32 0, i32 8
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.dsa_switch_ops, ptr %4, i32 0, i32 102
  %6 = load ptr, ptr %5, align 4
  %7 = icmp eq ptr %6, null
  br i1 %7, label %131, label %8

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.dsa_switch, ptr %0, i32 0, i32 13
  %10 = load ptr, ptr %9, align 4
  %11 = icmp eq ptr %10, null
  br i1 %11, label %131, label %12

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct.dsa_switch, ptr %0, i32 0, i32 1
  %14 = load ptr, ptr %13, align 4
  %15 = getelementptr inbounds %struct.dsa_switch_tree, ptr %14, i32 0, i32 1
  %16 = load ptr, ptr %15, align 4
  %17 = icmp eq ptr %16, %15
  br i1 %17, label %131, label %18

18:                                               ; preds = %12
  %19 = getelementptr inbounds %struct.dsa_notifier_tag_8021q_vlan_info, ptr %1, i32 0, i32 1
  %20 = getelementptr inbounds %struct.dsa_notifier_tag_8021q_vlan_info, ptr %1, i32 0, i32 2
  %21 = getelementptr inbounds %struct.dsa_notifier_tag_8021q_vlan_info, ptr %1, i32 0, i32 3
  %22 = getelementptr inbounds %struct.dsa_switch, ptr %0, i32 0, i32 2
  br label %23

23:                                               ; preds = %126, %18
  %24 = phi ptr [ %14, %18 ], [ %128, %126 ]
  %25 = phi ptr [ %16, %18 ], [ %127, %126 ]
  %26 = getelementptr i8, ptr %25, i32 -264
  %27 = load ptr, ptr %26, align 4
  %28 = icmp eq ptr %27, %0
  br i1 %28, label %29, label %126

29:                                               ; preds = %23
  %30 = getelementptr i8, ptr %25, i32 -256
  %31 = load i32, ptr %30, align 4
  %32 = add i32 %31, -1
  %33 = icmp ult i32 %32, 2
  br i1 %33, label %48, label %34

34:                                               ; preds = %29
  %35 = getelementptr inbounds %struct.dsa_switch_tree, ptr %24, i32 0, i32 3
  %36 = load i32, ptr %35, align 4
  %37 = load i32, ptr %1, align 4
  %38 = icmp eq i32 %36, %37
  br i1 %38, label %39, label %126

39:                                               ; preds = %34
  %40 = load i32, ptr %22, align 4
  %41 = load i32, ptr %19, align 4
  %42 = icmp eq i32 %40, %41
  br i1 %42, label %43, label %126

43:                                               ; preds = %39
  %44 = getelementptr i8, ptr %25, i32 -260
  %45 = load i32, ptr %44, align 4
  %46 = load i32, ptr %20, align 4
  %47 = icmp eq i32 %45, %46
  br i1 %47, label %48, label %126

48:                                               ; preds = %43, %29
  %49 = icmp eq i32 %31, 3
  %50 = select i1 %49, i16 4, i16 0
  %51 = load i16, ptr %21, align 4
  %52 = and i16 %51, 3072
  %53 = icmp eq i16 %52, 1024
  br i1 %53, label %54, label %68

54:                                               ; preds = %48
  %55 = lshr i16 %51, 6
  %56 = and i16 %55, 7
  %57 = zext i16 %56 to i32
  %58 = load i32, ptr %22, align 4
  %59 = icmp eq i32 %58, %57
  br i1 %59, label %60, label %68

60:                                               ; preds = %54
  %61 = and i16 %51, 15
  %62 = zext i16 %61 to i32
  %63 = getelementptr i8, ptr %25, i32 -260
  %64 = load i32, ptr %63, align 4
  %65 = icmp eq i32 %64, %62
  %66 = or i16 %50, 2
  %67 = select i1 %65, i16 %66, i16 %50
  br label %68

68:                                               ; preds = %60, %54, %48
  %69 = phi i16 [ %50, %54 ], [ %50, %48 ], [ %67, %60 ]
  %70 = getelementptr i8, ptr %25, i32 -260
  %71 = load i32, ptr %70, align 4
  br i1 %33, label %72, label %120

72:                                               ; preds = %68
  %73 = load ptr, ptr %9, align 4
  %74 = getelementptr inbounds %struct.dsa_8021q_context, ptr %73, i32 0, i32 1
  %75 = load ptr, ptr %74, align 4
  %76 = icmp eq ptr %75, %74
  br i1 %76, label %102, label %77

77:                                               ; preds = %86, %72
  %78 = phi ptr [ %87, %86 ], [ %75, %72 ]
  %79 = getelementptr inbounds %struct.dsa_tag_8021q_vlan, ptr %78, i32 0, i32 2
  %80 = load i16, ptr %79, align 4
  %81 = icmp eq i16 %80, %51
  br i1 %81, label %82, label %86

82:                                               ; preds = %77
  %83 = getelementptr inbounds %struct.dsa_tag_8021q_vlan, ptr %78, i32 0, i32 1
  %84 = load i32, ptr %83, align 4
  %85 = icmp eq i32 %84, %71
  br i1 %85, label %89, label %86

86:                                               ; preds = %82, %77
  %87 = load ptr, ptr %78, align 4
  %88 = icmp eq ptr %87, %74
  br i1 %88, label %102, label %77

89:                                               ; preds = %82
  %90 = icmp eq ptr %78, null
  br i1 %90, label %102, label %91

91:                                               ; preds = %89
  %92 = getelementptr inbounds %struct.dsa_tag_8021q_vlan, ptr %78, i32 0, i32 3
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %92) #9, !srcloc !8
  %93 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %92, ptr %92, i32 1, ptr elementtype(i32) %92) #9, !srcloc !9
  %94 = extractvalue { i32, i32, i32 } %93, 0
  %95 = icmp eq i32 %94, 0
  br i1 %95, label %100, label %96, !prof !10

96:                                               ; preds = %91
  %97 = add i32 %94, 1
  %98 = or i32 %97, %94
  %99 = icmp sgt i32 %98, -1
  br i1 %99, label %126, label %100, !prof !11

100:                                              ; preds = %96, %91
  %101 = phi i32 [ 2, %91 ], [ 1, %96 ]
  tail call void @refcount_warn_saturate(ptr noundef %92, i32 noundef %101) #9
  br label %126

102:                                              ; preds = %89, %86, %72
  %103 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %104 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %103, i32 noundef 3520, i32 noundef 20) #10
  %105 = icmp eq ptr %104, null
  br i1 %105, label %131, label %106

106:                                              ; preds = %102
  %107 = load ptr, ptr %3, align 4
  %108 = getelementptr inbounds %struct.dsa_switch_ops, ptr %107, i32 0, i32 102
  %109 = load ptr, ptr %108, align 4
  %110 = tail call i32 %109(ptr noundef %0, i32 noundef %71, i16 noundef zeroext %51, i16 noundef zeroext %69) #9
  %111 = icmp eq i32 %110, 0
  br i1 %111, label %113, label %112

112:                                              ; preds = %106
  tail call void @kfree(ptr noundef nonnull %104) #9
  br label %131

113:                                              ; preds = %106
  %114 = getelementptr inbounds %struct.dsa_tag_8021q_vlan, ptr %104, i32 0, i32 2
  store i16 %51, ptr %114, align 4
  %115 = getelementptr inbounds %struct.dsa_tag_8021q_vlan, ptr %104, i32 0, i32 1
  store i32 %71, ptr %115, align 8
  %116 = getelementptr inbounds %struct.dsa_tag_8021q_vlan, ptr %104, i32 0, i32 3
  store volatile i32 1, ptr %116, align 8
  %117 = getelementptr inbounds %struct.dsa_8021q_context, ptr %73, i32 0, i32 1, i32 1
  %118 = load ptr, ptr %117, align 4
  store ptr %104, ptr %117, align 4
  store ptr %74, ptr %104, align 8
  %119 = getelementptr inbounds %struct.list_head, ptr %104, i32 0, i32 1
  store ptr %118, ptr %119, align 4
  store volatile ptr %104, ptr %118, align 4
  br label %126

120:                                              ; preds = %68
  %121 = load ptr, ptr %3, align 4
  %122 = getelementptr inbounds %struct.dsa_switch_ops, ptr %121, i32 0, i32 102
  %123 = load ptr, ptr %122, align 4
  %124 = tail call i32 %123(ptr noundef %0, i32 noundef %71, i16 noundef zeroext %51, i16 noundef zeroext %69) #9
  %125 = icmp eq i32 %124, 0
  br i1 %125, label %126, label %131

126:                                              ; preds = %120, %113, %100, %96, %43, %39, %34, %23
  %127 = load ptr, ptr %25, align 4
  %128 = load ptr, ptr %13, align 4
  %129 = getelementptr inbounds %struct.dsa_switch_tree, ptr %128, i32 0, i32 1
  %130 = icmp eq ptr %127, %129
  br i1 %130, label %131, label %23

131:                                              ; preds = %126, %120, %112, %102, %12, %8, %2
  %132 = phi i32 [ 0, %8 ], [ 0, %2 ], [ %110, %112 ], [ 0, %12 ], [ %124, %120 ], [ 0, %126 ], [ -12, %102 ]
  ret i32 %132
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @dsa_switch_tag_8021q_vlan_del(ptr noundef readonly %0, ptr nocapture noundef readonly %1) local_unnamed_addr #2 {
  %3 = getelementptr inbounds %struct.dsa_switch, ptr %0, i32 0, i32 8
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.dsa_switch_ops, ptr %4, i32 0, i32 103
  %6 = load ptr, ptr %5, align 4
  %7 = icmp eq ptr %6, null
  br i1 %7, label %111, label %8

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.dsa_switch, ptr %0, i32 0, i32 13
  %10 = load ptr, ptr %9, align 4
  %11 = icmp eq ptr %10, null
  br i1 %11, label %111, label %12

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct.dsa_switch, ptr %0, i32 0, i32 1
  %14 = load ptr, ptr %13, align 4
  %15 = getelementptr inbounds %struct.dsa_switch_tree, ptr %14, i32 0, i32 1
  %16 = load ptr, ptr %15, align 4
  %17 = icmp eq ptr %16, %15
  br i1 %17, label %111, label %18

18:                                               ; preds = %12
  %19 = getelementptr inbounds %struct.dsa_notifier_tag_8021q_vlan_info, ptr %1, i32 0, i32 1
  %20 = getelementptr inbounds %struct.dsa_notifier_tag_8021q_vlan_info, ptr %1, i32 0, i32 2
  %21 = getelementptr inbounds %struct.dsa_notifier_tag_8021q_vlan_info, ptr %1, i32 0, i32 3
  %22 = getelementptr inbounds %struct.dsa_switch, ptr %0, i32 0, i32 2
  br label %23

23:                                               ; preds = %106, %18
  %24 = phi ptr [ %14, %18 ], [ %108, %106 ]
  %25 = phi ptr [ %16, %18 ], [ %107, %106 ]
  %26 = getelementptr i8, ptr %25, i32 -264
  %27 = load ptr, ptr %26, align 4
  %28 = icmp eq ptr %27, %0
  br i1 %28, label %29, label %106

29:                                               ; preds = %23
  %30 = getelementptr i8, ptr %25, i32 -256
  %31 = load i32, ptr %30, align 4
  %32 = add i32 %31, -1
  %33 = icmp ult i32 %32, 2
  br i1 %33, label %48, label %34

34:                                               ; preds = %29
  %35 = getelementptr inbounds %struct.dsa_switch_tree, ptr %24, i32 0, i32 3
  %36 = load i32, ptr %35, align 4
  %37 = load i32, ptr %1, align 4
  %38 = icmp eq i32 %36, %37
  br i1 %38, label %39, label %106

39:                                               ; preds = %34
  %40 = load i32, ptr %22, align 4
  %41 = load i32, ptr %19, align 4
  %42 = icmp eq i32 %40, %41
  br i1 %42, label %43, label %106

43:                                               ; preds = %39
  %44 = getelementptr i8, ptr %25, i32 -260
  %45 = load i32, ptr %44, align 4
  %46 = load i32, ptr %20, align 4
  %47 = icmp eq i32 %45, %46
  br i1 %47, label %99, label %106

48:                                               ; preds = %29
  %49 = load i16, ptr %21, align 4
  %50 = getelementptr i8, ptr %25, i32 -260
  %51 = load i32, ptr %50, align 4
  %52 = load ptr, ptr %9, align 4
  %53 = getelementptr inbounds %struct.dsa_8021q_context, ptr %52, i32 0, i32 1
  %54 = load ptr, ptr %53, align 4
  %55 = icmp eq ptr %54, %53
  br i1 %55, label %111, label %56

56:                                               ; preds = %65, %48
  %57 = phi ptr [ %66, %65 ], [ %54, %48 ]
  %58 = getelementptr inbounds %struct.dsa_tag_8021q_vlan, ptr %57, i32 0, i32 2
  %59 = load i16, ptr %58, align 4
  %60 = icmp eq i16 %59, %49
  br i1 %60, label %61, label %65

61:                                               ; preds = %56
  %62 = getelementptr inbounds %struct.dsa_tag_8021q_vlan, ptr %57, i32 0, i32 1
  %63 = load i32, ptr %62, align 4
  %64 = icmp eq i32 %63, %51
  br i1 %64, label %68, label %65

65:                                               ; preds = %61, %56
  %66 = load ptr, ptr %57, align 4
  %67 = icmp eq ptr %66, %53
  br i1 %67, label %111, label %56

68:                                               ; preds = %61
  %69 = icmp eq ptr %57, null
  br i1 %69, label %111, label %70

70:                                               ; preds = %68
  %71 = getelementptr inbounds %struct.dsa_tag_8021q_vlan, ptr %57, i32 0, i32 3
  tail call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !12
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %71) #9, !srcloc !8
  %72 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %71, ptr %71, i32 1, ptr elementtype(i32) %71) #9, !srcloc !13
  %73 = extractvalue { i32, i32, i32 } %72, 0
  %74 = icmp eq i32 %73, 1
  br i1 %74, label %78, label %75

75:                                               ; preds = %70
  %76 = icmp sgt i32 %73, 0
  br i1 %76, label %106, label %77, !prof !11

77:                                               ; preds = %75
  tail call void @refcount_warn_saturate(ptr noundef %71, i32 noundef 3) #9
  br label %106

78:                                               ; preds = %70
  tail call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !14
  %79 = load ptr, ptr %3, align 4
  %80 = getelementptr inbounds %struct.dsa_switch_ops, ptr %79, i32 0, i32 103
  %81 = load ptr, ptr %80, align 4
  %82 = tail call i32 %81(ptr noundef %0, i32 noundef %51, i16 noundef zeroext %49) #9
  %83 = icmp eq i32 %82, 0
  br i1 %83, label %94, label %84

84:                                               ; preds = %78
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %71) #9, !srcloc !8
  %85 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %71, ptr %71, i32 1, ptr elementtype(i32) %71) #9, !srcloc !9
  %86 = extractvalue { i32, i32, i32 } %85, 0
  %87 = icmp eq i32 %86, 0
  br i1 %87, label %92, label %88, !prof !10

88:                                               ; preds = %84
  %89 = add i32 %86, 1
  %90 = or i32 %89, %86
  %91 = icmp sgt i32 %90, -1
  br i1 %91, label %111, label %92, !prof !11

92:                                               ; preds = %88, %84
  %93 = phi i32 [ 2, %84 ], [ 1, %88 ]
  tail call void @refcount_warn_saturate(ptr noundef %71, i32 noundef %93) #9
  br label %111

94:                                               ; preds = %78
  %95 = getelementptr inbounds %struct.list_head, ptr %57, i32 0, i32 1
  %96 = load ptr, ptr %95, align 4
  %97 = load ptr, ptr %57, align 4
  %98 = getelementptr inbounds %struct.list_head, ptr %97, i32 0, i32 1
  store ptr %96, ptr %98, align 4
  store volatile ptr %97, ptr %96, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %57, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %95, align 4
  tail call void @kfree(ptr noundef nonnull %57) #9
  br label %106

99:                                               ; preds = %43
  %100 = load i16, ptr %21, align 4
  %101 = load ptr, ptr %3, align 4
  %102 = getelementptr inbounds %struct.dsa_switch_ops, ptr %101, i32 0, i32 103
  %103 = load ptr, ptr %102, align 4
  %104 = tail call i32 %103(ptr noundef %0, i32 noundef %45, i16 noundef zeroext %100) #9
  %105 = icmp eq i32 %104, 0
  br i1 %105, label %106, label %111

106:                                              ; preds = %99, %94, %77, %75, %43, %39, %34, %23
  %107 = load ptr, ptr %25, align 4
  %108 = load ptr, ptr %13, align 4
  %109 = getelementptr inbounds %struct.dsa_switch_tree, ptr %108, i32 0, i32 1
  %110 = icmp eq ptr %107, %109
  br i1 %110, label %111, label %23

111:                                              ; preds = %106, %99, %92, %88, %68, %65, %48, %12, %8, %2
  %112 = phi i32 [ 0, %8 ], [ 0, %2 ], [ %82, %92 ], [ %82, %88 ], [ 0, %12 ], [ -2, %65 ], [ %104, %99 ], [ 0, %106 ], [ -2, %68 ], [ -2, %48 ]
  ret i32 %112
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @dsa_tag_8021q_bridge_join(ptr noundef readonly %0, ptr nocapture noundef readonly %1) local_unnamed_addr #2 {
  %3 = getelementptr inbounds %struct.dsa_switch, ptr %0, i32 0, i32 13
  %4 = load ptr, ptr %3, align 4
  %5 = icmp eq ptr %4, null
  br i1 %5, label %108, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.dsa_notifier_bridge_info, ptr %1, i32 0, i32 1
  %8 = load i32, ptr %7, align 4
  %9 = getelementptr inbounds %struct.dsa_notifier_bridge_info, ptr %1, i32 0, i32 2
  %10 = load i32, ptr %9, align 4
  %11 = tail call ptr @dsa_switch_find(i32 noundef %8, i32 noundef %10) #9
  %12 = getelementptr inbounds %struct.dsa_notifier_bridge_info, ptr %1, i32 0, i32 3
  %13 = load i32, ptr %12, align 4
  %14 = getelementptr inbounds %struct.dsa_switch, ptr %11, i32 0, i32 1
  %15 = load ptr, ptr %14, align 4
  %16 = getelementptr inbounds %struct.dsa_switch_tree, ptr %15, i32 0, i32 1
  %17 = load ptr, ptr %16, align 4
  %18 = icmp eq ptr %17, %16
  br i1 %18, label %33, label %19

19:                                               ; preds = %28, %6
  %20 = phi ptr [ %29, %28 ], [ %17, %6 ]
  %21 = getelementptr i8, ptr %20, i32 -264
  %22 = load ptr, ptr %21, align 4
  %23 = icmp eq ptr %22, %11
  br i1 %23, label %24, label %28

24:                                               ; preds = %19
  %25 = getelementptr i8, ptr %20, i32 -260
  %26 = load i32, ptr %25, align 4
  %27 = icmp eq i32 %26, %13
  br i1 %27, label %31, label %28

28:                                               ; preds = %24, %19
  %29 = load ptr, ptr %20, align 4
  %30 = icmp eq ptr %29, %16
  br i1 %30, label %33, label %19

31:                                               ; preds = %24
  %32 = getelementptr i8, ptr %20, i32 -280
  br label %33

33:                                               ; preds = %31, %28, %6
  %34 = phi ptr [ %32, %31 ], [ null, %6 ], [ null, %28 ]
  %35 = getelementptr inbounds %struct.dsa_port, ptr %34, i32 0, i32 4
  %36 = load ptr, ptr %35, align 4
  %37 = getelementptr inbounds %struct.dsa_switch, ptr %36, i32 0, i32 2
  %38 = load i32, ptr %37, align 4
  %39 = shl i32 %38, 6
  %40 = and i32 %39, 448
  %41 = getelementptr inbounds %struct.dsa_port, ptr %34, i32 0, i32 5
  %42 = load i32, ptr %41, align 4
  %43 = and i32 %42, 15
  %44 = or i32 %40, %43
  %45 = trunc i32 %44 to i16
  %46 = or i16 %45, 1024
  %47 = getelementptr inbounds %struct.dsa_switch, ptr %0, i32 0, i32 1
  %48 = load ptr, ptr %47, align 4
  %49 = getelementptr inbounds %struct.dsa_switch_tree, ptr %48, i32 0, i32 1
  %50 = load ptr, ptr %49, align 4
  %51 = icmp eq ptr %50, %49
  br i1 %51, label %108, label %52

52:                                               ; preds = %33
  %53 = getelementptr inbounds %struct.dsa_switch, ptr %0, i32 0, i32 2
  br label %54

54:                                               ; preds = %103, %52
  %55 = phi ptr [ %104, %103 ], [ %48, %52 ]
  %56 = phi ptr [ %105, %103 ], [ %50, %52 ]
  %57 = getelementptr i8, ptr %56, i32 -280
  %58 = getelementptr i8, ptr %56, i32 -264
  %59 = load ptr, ptr %58, align 4
  %60 = icmp eq ptr %59, %0
  br i1 %60, label %61, label %103

61:                                               ; preds = %54
  %62 = load i32, ptr %53, align 4
  %63 = shl i32 %62, 6
  %64 = and i32 %63, 448
  %65 = getelementptr i8, ptr %56, i32 -260
  %66 = load i32, ptr %65, align 4
  %67 = and i32 %66, 15
  %68 = or i32 %64, %67
  %69 = trunc i32 %68 to i16
  %70 = or i16 %69, 1024
  %71 = getelementptr inbounds %struct.dsa_switch_tree, ptr %55, i32 0, i32 3
  %72 = load i32, ptr %71, align 4
  %73 = load i32, ptr %7, align 4
  %74 = icmp eq i32 %72, %73
  br i1 %74, label %75, label %81

75:                                               ; preds = %61
  %76 = load i32, ptr %9, align 4
  %77 = icmp eq i32 %62, %76
  br i1 %77, label %78, label %81

78:                                               ; preds = %75
  %79 = load i32, ptr %12, align 4
  %80 = icmp eq i32 %66, %79
  br i1 %80, label %103, label %81

81:                                               ; preds = %78, %75, %61
  %82 = getelementptr i8, ptr %56, i32 -256
  %83 = load i32, ptr %82, align 4
  %84 = icmp eq i32 %83, 3
  br i1 %84, label %85, label %103

85:                                               ; preds = %81
  %86 = getelementptr i8, ptr %56, i32 -228
  %87 = load ptr, ptr %86, align 4
  %88 = icmp eq ptr %87, null
  br i1 %88, label %91, label %89

89:                                               ; preds = %85
  %90 = load ptr, ptr %87, align 4
  br label %91

91:                                               ; preds = %89, %85
  %92 = phi ptr [ %90, %89 ], [ null, %85 ]
  %93 = load ptr, ptr %1, align 4
  %94 = icmp eq ptr %92, %93
  br i1 %94, label %95, label %103

95:                                               ; preds = %91
  %96 = tail call i32 @dsa_port_tag_8021q_vlan_add(ptr noundef %57, i16 noundef zeroext %46, i1 noundef zeroext true) #9
  %97 = icmp eq i32 %96, 0
  br i1 %97, label %98, label %108

98:                                               ; preds = %95
  %99 = tail call i32 @dsa_port_tag_8021q_vlan_add(ptr noundef %34, i16 noundef zeroext %70, i1 noundef zeroext true) #9
  %100 = icmp eq i32 %99, 0
  br i1 %100, label %101, label %108

101:                                              ; preds = %98
  %102 = load ptr, ptr %47, align 4
  br label %103

103:                                              ; preds = %101, %91, %81, %78, %54
  %104 = phi ptr [ %102, %101 ], [ %55, %81 ], [ %55, %78 ], [ %55, %91 ], [ %55, %54 ]
  %105 = load ptr, ptr %56, align 4
  %106 = getelementptr inbounds %struct.dsa_switch_tree, ptr %104, i32 0, i32 1
  %107 = icmp eq ptr %105, %106
  br i1 %107, label %108, label %54

108:                                              ; preds = %103, %98, %95, %33, %2
  %109 = phi i32 [ 0, %2 ], [ 0, %33 ], [ 0, %103 ], [ %99, %98 ], [ %96, %95 ]
  ret i32 %109
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dsa_switch_find(i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dsa_port_tag_8021q_vlan_add(ptr noundef, i16 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @dsa_tag_8021q_bridge_leave(ptr noundef readonly %0, ptr nocapture noundef readonly %1) local_unnamed_addr #2 {
  %3 = getelementptr inbounds %struct.dsa_switch, ptr %0, i32 0, i32 13
  %4 = load ptr, ptr %3, align 4
  %5 = icmp eq ptr %4, null
  br i1 %5, label %102, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.dsa_notifier_bridge_info, ptr %1, i32 0, i32 1
  %8 = load i32, ptr %7, align 4
  %9 = getelementptr inbounds %struct.dsa_notifier_bridge_info, ptr %1, i32 0, i32 2
  %10 = load i32, ptr %9, align 4
  %11 = tail call ptr @dsa_switch_find(i32 noundef %8, i32 noundef %10) #9
  %12 = getelementptr inbounds %struct.dsa_notifier_bridge_info, ptr %1, i32 0, i32 3
  %13 = load i32, ptr %12, align 4
  %14 = getelementptr inbounds %struct.dsa_switch, ptr %11, i32 0, i32 1
  %15 = load ptr, ptr %14, align 4
  %16 = getelementptr inbounds %struct.dsa_switch_tree, ptr %15, i32 0, i32 1
  %17 = load ptr, ptr %16, align 4
  %18 = icmp eq ptr %17, %16
  br i1 %18, label %33, label %19

19:                                               ; preds = %28, %6
  %20 = phi ptr [ %29, %28 ], [ %17, %6 ]
  %21 = getelementptr i8, ptr %20, i32 -264
  %22 = load ptr, ptr %21, align 4
  %23 = icmp eq ptr %22, %11
  br i1 %23, label %24, label %28

24:                                               ; preds = %19
  %25 = getelementptr i8, ptr %20, i32 -260
  %26 = load i32, ptr %25, align 4
  %27 = icmp eq i32 %26, %13
  br i1 %27, label %31, label %28

28:                                               ; preds = %24, %19
  %29 = load ptr, ptr %20, align 4
  %30 = icmp eq ptr %29, %16
  br i1 %30, label %33, label %19

31:                                               ; preds = %24
  %32 = getelementptr i8, ptr %20, i32 -280
  br label %33

33:                                               ; preds = %31, %28, %6
  %34 = phi ptr [ %32, %31 ], [ null, %6 ], [ null, %28 ]
  %35 = getelementptr inbounds %struct.dsa_port, ptr %34, i32 0, i32 4
  %36 = load ptr, ptr %35, align 4
  %37 = getelementptr inbounds %struct.dsa_switch, ptr %36, i32 0, i32 2
  %38 = load i32, ptr %37, align 4
  %39 = shl i32 %38, 6
  %40 = and i32 %39, 448
  %41 = getelementptr inbounds %struct.dsa_port, ptr %34, i32 0, i32 5
  %42 = load i32, ptr %41, align 4
  %43 = and i32 %42, 15
  %44 = or i32 %40, %43
  %45 = trunc i32 %44 to i16
  %46 = or i16 %45, 1024
  %47 = getelementptr inbounds %struct.dsa_switch, ptr %0, i32 0, i32 1
  %48 = load ptr, ptr %47, align 4
  %49 = getelementptr inbounds %struct.dsa_switch_tree, ptr %48, i32 0, i32 1
  %50 = load ptr, ptr %49, align 4
  %51 = icmp eq ptr %50, %49
  br i1 %51, label %102, label %52

52:                                               ; preds = %33
  %53 = getelementptr inbounds %struct.dsa_switch, ptr %0, i32 0, i32 2
  br label %54

54:                                               ; preds = %97, %52
  %55 = phi ptr [ %98, %97 ], [ %48, %52 ]
  %56 = phi ptr [ %99, %97 ], [ %50, %52 ]
  %57 = getelementptr i8, ptr %56, i32 -280
  %58 = getelementptr i8, ptr %56, i32 -264
  %59 = load ptr, ptr %58, align 4
  %60 = icmp eq ptr %59, %0
  br i1 %60, label %61, label %97

61:                                               ; preds = %54
  %62 = load i32, ptr %53, align 4
  %63 = shl i32 %62, 6
  %64 = and i32 %63, 448
  %65 = getelementptr i8, ptr %56, i32 -260
  %66 = load i32, ptr %65, align 4
  %67 = and i32 %66, 15
  %68 = or i32 %64, %67
  %69 = trunc i32 %68 to i16
  %70 = or i16 %69, 1024
  %71 = getelementptr inbounds %struct.dsa_switch_tree, ptr %55, i32 0, i32 3
  %72 = load i32, ptr %71, align 4
  %73 = load i32, ptr %7, align 4
  %74 = icmp eq i32 %72, %73
  br i1 %74, label %75, label %81

75:                                               ; preds = %61
  %76 = load i32, ptr %9, align 4
  %77 = icmp eq i32 %62, %76
  br i1 %77, label %78, label %81

78:                                               ; preds = %75
  %79 = load i32, ptr %12, align 4
  %80 = icmp eq i32 %66, %79
  br i1 %80, label %97, label %81

81:                                               ; preds = %78, %75, %61
  %82 = getelementptr i8, ptr %56, i32 -256
  %83 = load i32, ptr %82, align 4
  %84 = icmp eq i32 %83, 3
  br i1 %84, label %85, label %97

85:                                               ; preds = %81
  %86 = getelementptr i8, ptr %56, i32 -228
  %87 = load ptr, ptr %86, align 4
  %88 = icmp eq ptr %87, null
  br i1 %88, label %91, label %89

89:                                               ; preds = %85
  %90 = load ptr, ptr %87, align 4
  br label %91

91:                                               ; preds = %89, %85
  %92 = phi ptr [ %90, %89 ], [ null, %85 ]
  %93 = load ptr, ptr %1, align 4
  %94 = icmp eq ptr %92, %93
  br i1 %94, label %95, label %97

95:                                               ; preds = %91
  tail call void @dsa_port_tag_8021q_vlan_del(ptr noundef %57, i16 noundef zeroext %46, i1 noundef zeroext true) #9
  tail call void @dsa_port_tag_8021q_vlan_del(ptr noundef %34, i16 noundef zeroext %70, i1 noundef zeroext true) #9
  %96 = load ptr, ptr %47, align 4
  br label %97

97:                                               ; preds = %95, %91, %81, %78, %54
  %98 = phi ptr [ %55, %81 ], [ %55, %78 ], [ %96, %95 ], [ %55, %91 ], [ %55, %54 ]
  %99 = load ptr, ptr %56, align 4
  %100 = getelementptr inbounds %struct.dsa_switch_tree, ptr %98, i32 0, i32 1
  %101 = icmp eq ptr %99, %100
  br i1 %101, label %102, label %54

102:                                              ; preds = %97, %33, %2
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @dsa_port_tag_8021q_vlan_del(ptr noundef, i16 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @dsa_tag_8021q_bridge_tx_fwd_offload(ptr noundef readonly %0, i32 noundef %1, [4 x i32] %2) #2 {
  %4 = getelementptr inbounds %struct.dsa_switch, ptr %0, i32 0, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.dsa_switch_tree, ptr %5, i32 0, i32 1
  %7 = load ptr, ptr %6, align 4
  %8 = icmp eq ptr %7, %6
  br i1 %8, label %23, label %9

9:                                                ; preds = %18, %3
  %10 = phi ptr [ %19, %18 ], [ %7, %3 ]
  %11 = getelementptr i8, ptr %10, i32 -264
  %12 = load ptr, ptr %11, align 4
  %13 = icmp eq ptr %12, %0
  br i1 %13, label %14, label %18

14:                                               ; preds = %9
  %15 = getelementptr i8, ptr %10, i32 -260
  %16 = load i32, ptr %15, align 4
  %17 = icmp eq i32 %16, %1
  br i1 %17, label %21, label %18

18:                                               ; preds = %14, %9
  %19 = load ptr, ptr %10, align 4
  %20 = icmp eq ptr %19, %6
  br i1 %20, label %23, label %9

21:                                               ; preds = %14
  %22 = getelementptr i8, ptr %10, i32 -280
  br label %23

23:                                               ; preds = %21, %18, %3
  %24 = phi ptr [ %22, %21 ], [ null, %3 ], [ null, %18 ]
  %25 = extractvalue [4 x i32] %2, 1
  %26 = shl i32 %25, 4
  %27 = and i32 %26, 48
  %28 = shl i32 %25, 7
  %29 = and i32 %28, 512
  %30 = or i32 %27, %29
  %31 = trunc i32 %30 to i16
  %32 = or i16 %31, 2048
  %33 = tail call i32 @dsa_port_tag_8021q_vlan_add(ptr noundef %24, i16 noundef zeroext %32, i1 noundef zeroext true) #9
  ret i32 %33
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @dsa_tag_8021q_bridge_tx_fwd_unoffload(ptr noundef readonly %0, i32 noundef %1, [4 x i32] %2) #2 {
  %4 = getelementptr inbounds %struct.dsa_switch, ptr %0, i32 0, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.dsa_switch_tree, ptr %5, i32 0, i32 1
  %7 = load ptr, ptr %6, align 4
  %8 = icmp eq ptr %7, %6
  br i1 %8, label %23, label %9

9:                                                ; preds = %18, %3
  %10 = phi ptr [ %19, %18 ], [ %7, %3 ]
  %11 = getelementptr i8, ptr %10, i32 -264
  %12 = load ptr, ptr %11, align 4
  %13 = icmp eq ptr %12, %0
  br i1 %13, label %14, label %18

14:                                               ; preds = %9
  %15 = getelementptr i8, ptr %10, i32 -260
  %16 = load i32, ptr %15, align 4
  %17 = icmp eq i32 %16, %1
  br i1 %17, label %21, label %18

18:                                               ; preds = %14, %9
  %19 = load ptr, ptr %10, align 4
  %20 = icmp eq ptr %19, %6
  br i1 %20, label %23, label %9

21:                                               ; preds = %14
  %22 = getelementptr i8, ptr %10, i32 -280
  br label %23

23:                                               ; preds = %21, %18, %3
  %24 = phi ptr [ %22, %21 ], [ null, %3 ], [ null, %18 ]
  %25 = extractvalue [4 x i32] %2, 1
  %26 = shl i32 %25, 4
  %27 = and i32 %26, 48
  %28 = shl i32 %25, 7
  %29 = and i32 %28, 512
  %30 = or i32 %27, %29
  %31 = trunc i32 %30 to i16
  %32 = or i16 %31, 2048
  tail call void @dsa_port_tag_8021q_vlan_del(ptr noundef %24, i16 noundef zeroext %32, i1 noundef zeroext true) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @dsa_tag_8021q_register(ptr noundef %0, i16 noundef zeroext %1) #2 {
  %3 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %4 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %3, i32 noundef 3520, i32 noundef 16) #10
  %5 = icmp eq ptr %4, null
  br i1 %5, label %82, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.dsa_8021q_context, ptr %4, i32 0, i32 2
  store i16 %1, ptr %7, align 4
  store ptr %0, ptr %4, align 8
  %8 = getelementptr inbounds %struct.dsa_8021q_context, ptr %4, i32 0, i32 1
  store volatile ptr %8, ptr %8, align 4
  %9 = getelementptr inbounds %struct.dsa_8021q_context, ptr %4, i32 0, i32 1, i32 1
  store ptr %8, ptr %9, align 8
  %10 = getelementptr inbounds %struct.dsa_switch, ptr %0, i32 0, i32 13
  store ptr %4, ptr %10, align 4
  %11 = tail call i32 @rtnl_is_locked() #9
  %12 = icmp eq i32 %11, 0
  %13 = load i1, ptr @dsa_tag_8021q_setup.__already_done, align 1
  %14 = xor i1 %13, true
  %15 = select i1 %12, i1 %14, i1 false
  br i1 %15, label %16, label %17, !prof !10

16:                                               ; preds = %6
  store i1 true, ptr @dsa_tag_8021q_setup.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 504, i32 noundef 9, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str, i32 noundef 504) #9
  br label %17

17:                                               ; preds = %16, %6
  %18 = getelementptr inbounds %struct.dsa_switch, ptr %0, i32 0, i32 18
  %19 = load i32, ptr %18, align 4
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %82, label %21

21:                                               ; preds = %17
  %22 = getelementptr inbounds %struct.dsa_switch, ptr %0, i32 0, i32 1
  br label %23

23:                                               ; preds = %78, %21
  %24 = phi i32 [ 0, %21 ], [ %79, %78 ]
  %25 = load ptr, ptr %22, align 4
  %26 = getelementptr inbounds %struct.dsa_switch_tree, ptr %25, i32 0, i32 1
  %27 = load ptr, ptr %26, align 4
  %28 = icmp eq ptr %27, %26
  br i1 %28, label %43, label %29

29:                                               ; preds = %38, %23
  %30 = phi ptr [ %39, %38 ], [ %27, %23 ]
  %31 = getelementptr i8, ptr %30, i32 -264
  %32 = load ptr, ptr %31, align 4
  %33 = icmp eq ptr %32, %0
  br i1 %33, label %34, label %38

34:                                               ; preds = %29
  %35 = getelementptr i8, ptr %30, i32 -260
  %36 = load i32, ptr %35, align 4
  %37 = icmp eq i32 %36, %24
  br i1 %37, label %41, label %38

38:                                               ; preds = %34, %29
  %39 = load ptr, ptr %30, align 4
  %40 = icmp eq ptr %39, %26
  br i1 %40, label %43, label %29

41:                                               ; preds = %34
  %42 = getelementptr i8, ptr %30, i32 -280
  br label %43

43:                                               ; preds = %41, %38, %23
  %44 = phi ptr [ %42, %41 ], [ null, %23 ], [ null, %38 ]
  %45 = getelementptr inbounds %struct.dsa_port, ptr %44, i32 0, i32 4
  %46 = load ptr, ptr %45, align 4
  %47 = getelementptr inbounds %struct.dsa_switch, ptr %46, i32 0, i32 2
  %48 = load i32, ptr %47, align 4
  %49 = shl i32 %48, 6
  %50 = and i32 %49, 448
  %51 = getelementptr inbounds %struct.dsa_port, ptr %44, i32 0, i32 5
  %52 = load i32, ptr %51, align 4
  %53 = and i32 %52, 15
  %54 = or i32 %50, %53
  %55 = trunc i32 %54 to i16
  %56 = or i16 %55, 2048
  %57 = getelementptr inbounds %struct.dsa_port, ptr %44, i32 0, i32 6
  %58 = load i32, ptr %57, align 4
  %59 = icmp eq i32 %58, 3
  br i1 %59, label %60, label %78

60:                                               ; preds = %43
  %61 = or i16 %55, 1024
  %62 = tail call i32 @dsa_port_tag_8021q_vlan_add(ptr noundef %44, i16 noundef zeroext %61, i1 noundef zeroext false) #9
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %64, label %67

64:                                               ; preds = %60
  %65 = tail call i32 @dsa_port_tag_8021q_vlan_add(ptr noundef %44, i16 noundef zeroext %56, i1 noundef zeroext false) #9
  %66 = icmp eq i32 %65, 0
  br i1 %66, label %78, label %67

67:                                               ; preds = %64, %60
  %68 = phi i16 [ %61, %60 ], [ %56, %64 ]
  %69 = phi i32 [ %62, %60 ], [ %65, %64 ]
  %70 = phi ptr [ @.str.3, %60 ], [ @.str.4, %64 ]
  %71 = load ptr, ptr %0, align 4
  %72 = zext i16 %68 to i32
  %73 = inttoptr i32 %69 to ptr
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %71, ptr noundef nonnull %70, i32 noundef %72, i32 noundef %24, ptr noundef nonnull %73) #11
  %74 = icmp slt i32 %69, 0
  br i1 %74, label %75, label %78

75:                                               ; preds = %67
  %76 = inttoptr i32 %69 to ptr
  %77 = load ptr, ptr %0, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %77, ptr noundef nonnull @.str.2, i32 noundef %24, ptr noundef nonnull %76) #11
  br label %82

78:                                               ; preds = %67, %64, %43
  %79 = add nuw i32 %24, 1
  %80 = load i32, ptr %18, align 4
  %81 = icmp ult i32 %79, %80
  br i1 %81, label %23, label %82

82:                                               ; preds = %78, %75, %17, %2
  %83 = phi i32 [ -12, %2 ], [ %69, %75 ], [ 0, %17 ], [ 0, %78 ]
  ret i32 %83
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @dsa_tag_8021q_unregister(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.dsa_switch, ptr %0, i32 0, i32 13
  %3 = load ptr, ptr %2, align 4
  %4 = tail call i32 @rtnl_is_locked() #9
  %5 = icmp eq i32 %4, 0
  %6 = load i1, ptr @dsa_tag_8021q_teardown.__already_done, align 1
  %7 = xor i1 %6, true
  %8 = select i1 %5, i1 %7, i1 false
  br i1 %8, label %9, label %10, !prof !10

9:                                                ; preds = %1
  store i1 true, ptr @dsa_tag_8021q_teardown.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 523, i32 noundef 9, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str, i32 noundef 523) #9
  br label %10

10:                                               ; preds = %9, %1
  %11 = getelementptr inbounds %struct.dsa_switch, ptr %0, i32 0, i32 18
  %12 = load i32, ptr %11, align 4
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %61, label %14

14:                                               ; preds = %10
  %15 = getelementptr inbounds %struct.dsa_switch, ptr %0, i32 0, i32 1
  br label %16

16:                                               ; preds = %57, %14
  %17 = phi i32 [ %12, %14 ], [ %58, %57 ]
  %18 = phi i32 [ 0, %14 ], [ %59, %57 ]
  %19 = load ptr, ptr %15, align 4
  %20 = getelementptr inbounds %struct.dsa_switch_tree, ptr %19, i32 0, i32 1
  %21 = load ptr, ptr %20, align 4
  %22 = icmp eq ptr %21, %20
  br i1 %22, label %37, label %23

23:                                               ; preds = %32, %16
  %24 = phi ptr [ %33, %32 ], [ %21, %16 ]
  %25 = getelementptr i8, ptr %24, i32 -264
  %26 = load ptr, ptr %25, align 4
  %27 = icmp eq ptr %26, %0
  br i1 %27, label %28, label %32

28:                                               ; preds = %23
  %29 = getelementptr i8, ptr %24, i32 -260
  %30 = load i32, ptr %29, align 4
  %31 = icmp eq i32 %30, %18
  br i1 %31, label %35, label %32

32:                                               ; preds = %28, %23
  %33 = load ptr, ptr %24, align 4
  %34 = icmp eq ptr %33, %20
  br i1 %34, label %37, label %23

35:                                               ; preds = %28
  %36 = getelementptr i8, ptr %24, i32 -280
  br label %37

37:                                               ; preds = %35, %32, %16
  %38 = phi ptr [ %36, %35 ], [ null, %16 ], [ null, %32 ]
  %39 = getelementptr inbounds %struct.dsa_port, ptr %38, i32 0, i32 6
  %40 = load i32, ptr %39, align 4
  %41 = icmp eq i32 %40, 3
  br i1 %41, label %42, label %57

42:                                               ; preds = %37
  %43 = getelementptr inbounds %struct.dsa_port, ptr %38, i32 0, i32 4
  %44 = load ptr, ptr %43, align 4
  %45 = getelementptr inbounds %struct.dsa_switch, ptr %44, i32 0, i32 2
  %46 = load i32, ptr %45, align 4
  %47 = shl i32 %46, 6
  %48 = and i32 %47, 448
  %49 = getelementptr inbounds %struct.dsa_port, ptr %38, i32 0, i32 5
  %50 = load i32, ptr %49, align 4
  %51 = and i32 %50, 15
  %52 = or i32 %48, %51
  %53 = trunc i32 %52 to i16
  %54 = or i16 %53, 2048
  %55 = or i16 %53, 1024
  tail call void @dsa_port_tag_8021q_vlan_del(ptr noundef %38, i16 noundef zeroext %55, i1 noundef zeroext false) #9
  tail call void @dsa_port_tag_8021q_vlan_del(ptr noundef %38, i16 noundef zeroext %54, i1 noundef zeroext false) #9
  %56 = load i32, ptr %11, align 4
  br label %57

57:                                               ; preds = %42, %37
  %58 = phi i32 [ %17, %37 ], [ %56, %42 ]
  %59 = add nuw i32 %18, 1
  %60 = icmp ult i32 %59, %58
  br i1 %60, label %16, label %61

61:                                               ; preds = %57, %10
  %62 = getelementptr inbounds %struct.dsa_8021q_context, ptr %3, i32 0, i32 1
  %63 = load ptr, ptr %62, align 4
  %64 = icmp eq ptr %63, %62
  br i1 %64, label %72, label %65

65:                                               ; preds = %65, %61
  %66 = phi ptr [ %67, %65 ], [ %63, %61 ]
  %67 = load ptr, ptr %66, align 4
  %68 = getelementptr inbounds %struct.list_head, ptr %66, i32 0, i32 1
  %69 = load ptr, ptr %68, align 4
  %70 = getelementptr inbounds %struct.list_head, ptr %67, i32 0, i32 1
  store ptr %69, ptr %70, align 4
  store volatile ptr %67, ptr %69, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %66, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %68, align 4
  tail call void @kfree(ptr noundef %66) #9
  %71 = icmp eq ptr %67, %62
  br i1 %71, label %72, label %65

72:                                               ; preds = %65, %61
  store ptr null, ptr %2, align 4
  tail call void @kfree(ptr noundef %3) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @dsa_8021q_xmit(ptr noundef %0, ptr nocapture readnone %1, i16 noundef zeroext %2, i16 noundef zeroext %3) #2 {
  %5 = tail call i16 @llvm.bswap.i16(i16 %2)
  %6 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 11
  %7 = load i8, ptr %6, align 2
  %8 = and i8 %7, 1
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %20, label %10

10:                                               ; preds = %4
  %11 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 15
  %12 = load ptr, ptr %11, align 4
  %13 = getelementptr inbounds %struct.skb_shared_info, ptr %12, i32 0, i32 10
  %14 = load volatile i32, ptr %13, align 4
  %15 = and i32 %14, 65535
  %16 = ashr i32 %14, 16
  %17 = sub nsw i32 %15, %16
  %18 = icmp ne i32 %17, 1
  %19 = zext i1 %18 to i32
  br label %20

20:                                               ; preds = %10, %4
  %21 = phi i32 [ %19, %10 ], [ 0, %4 ]
  %22 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 17
  %23 = load ptr, ptr %22, align 4
  %24 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 16
  %25 = load ptr, ptr %24, align 8
  %26 = ptrtoint ptr %23 to i32
  %27 = ptrtoint ptr %25 to i32
  %28 = sub i32 %26, %27
  %29 = tail call i32 @llvm.usub.sat.i32(i32 4, i32 %28) #9
  %30 = or i32 %29, %21
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %37, label %32

32:                                               ; preds = %20
  %33 = add nuw nsw i32 %29, 63
  %34 = and i32 %33, 64
  %35 = tail call i32 @pskb_expand_head(ptr noundef %0, i32 noundef %34, i32 noundef 0, i32 noundef 2592) #9
  %36 = icmp slt i32 %35, 0
  br i1 %36, label %48, label %37

37:                                               ; preds = %32, %20
  %38 = tail call ptr @skb_push(ptr noundef %0, i32 noundef 4) #9
  %39 = load ptr, ptr %22, align 4
  %40 = getelementptr i8, ptr %39, i32 4
  tail call void @llvm.memmove.p0.p0.i32(ptr noundef align 1 dereferenceable(12) %39, ptr noundef align 1 dereferenceable(12) %40, i32 12, i1 false) #9
  %41 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 13, i32 0, i32 19
  %42 = load i16, ptr %41, align 2
  %43 = add i16 %42, -4
  store i16 %43, ptr %41, align 2
  %44 = load ptr, ptr %22, align 4
  %45 = getelementptr inbounds %struct.vlan_ethhdr, ptr %44, i32 0, i32 1
  store i16 %5, ptr %45, align 2
  %46 = tail call i16 @llvm.bswap.i16(i16 %3) #9
  %47 = getelementptr inbounds %struct.vlan_ethhdr, ptr %44, i32 0, i32 2
  store i16 %46, ptr %47, align 2
  br label %49

48:                                               ; preds = %32
  tail call void @__dev_kfree_skb_any(ptr noundef %0, i32 noundef 1) #9
  br label %49

49:                                               ; preds = %48, %37
  %50 = phi ptr [ null, %48 ], [ %0, %37 ]
  ret ptr %50
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #5

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @dsa_8021q_rcv(ptr noundef %0, ptr nocapture noundef writeonly %1, ptr nocapture noundef writeonly %2) #2 {
  %4 = alloca i16, align 2
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %4) #9
  store i16 0, ptr %4, align 2, !annotation !15
  %5 = tail call ptr @skb_push(ptr noundef %0, i32 noundef 14) #9
  %6 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 13
  %7 = load i16, ptr %6, align 8
  %8 = and i16 %7, 96
  %9 = icmp eq i16 %8, 64
  br i1 %9, label %10, label %20

10:                                               ; preds = %3
  %11 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 17
  %12 = load ptr, ptr %11, align 4
  %13 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 13, i32 0, i32 4
  %14 = load i32, ptr %13, align 4
  %15 = tail call i32 @csum_partial(ptr noundef %12, i32 noundef 14, i32 noundef 0) #9
  %16 = add i32 %15, %14
  %17 = icmp ult i32 %16, %15
  %18 = zext i1 %17 to i32
  %19 = add i32 %16, %18
  store i32 %19, ptr %13, align 4
  br label %20

20:                                               ; preds = %10, %3
  %21 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 13, i32 0, i32 3
  %22 = load i16, ptr %21, align 2
  %23 = and i16 %22, 1
  %24 = icmp eq i16 %23, 0
  br i1 %24, label %29, label %25

25:                                               ; preds = %20
  %26 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 13, i32 0, i32 9
  %27 = load i16, ptr %26, align 2
  store i16 %27, ptr %4, align 2
  %28 = and i16 %22, -2
  store i16 %28, ptr %21, align 2
  br label %31

29:                                               ; preds = %20
  %30 = call i32 @__skb_vlan_pop(ptr noundef %0, ptr noundef nonnull %4) #9
  br label %31

31:                                               ; preds = %29, %25
  %32 = call ptr @skb_pull_rcsum(ptr noundef %0, i32 noundef 14) #9
  %33 = load i16, ptr %4, align 2
  %34 = and i16 %33, 15
  %35 = zext i16 %34 to i32
  store i32 %35, ptr %1, align 4
  %36 = lshr i16 %33, 6
  %37 = and i16 %36, 7
  %38 = zext i16 %37 to i32
  store i32 %38, ptr %2, align 4
  %39 = lshr i16 %33, 13
  %40 = zext i16 %39 to i32
  %41 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 13, i32 0, i32 5
  store i32 %40, ptr %41, align 8
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %4) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__skb_vlan_pop(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_pull_rcsum(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rtnl_is_locked() local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_push(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memmove.p0.p0.i32(ptr nocapture writeonly, ptr nocapture readonly, i32, i1 immarg) #8

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pskb_expand_head(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dev_kfree_skb_any(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @csum_partial(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.usub.sat.i32(i32, i32) #5

attributes #0 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { argmemonly nofree nounwind willreturn }
attributes #9 = { nounwind }
attributes #10 = { nounwind allocsize(2) }
attributes #11 = { cold nounwind }

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
!8 = !{i64 720428, i64 2148210399, i64 2148210425, i64 2148210472, i64 2148210494, i64 2148210522, i64 2148210542}
!9 = !{i64 2148223272, i64 2148223304, i64 2148223333, i64 2148223367, i64 2148223398, i64 2148223421}
!10 = !{!"branch_weights", i32 1, i32 2000}
!11 = !{!"branch_weights", i32 2000, i32 1}
!12 = !{i64 2148323494}
!13 = !{i64 2148225629, i64 2148225661, i64 2148225690, i64 2148225724, i64 2148225755, i64 2148225778}
!14 = !{i64 2149527692}
!15 = !{!"auto-init"}
