; ModuleID = '/llk/IR/net/core/flow_offload.c_pt.bc'
source_filename = "../net/core/flow_offload.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_flow_rule_alloc:\09\09\09\09\09"
module asm "\09.asciz \09\22flow_rule_alloc\22\09\09\09\09\09"
module asm "__kstrtabns_flow_rule_alloc:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_flow_rule_match_meta:\09\09\09\09\09"
module asm "\09.asciz \09\22flow_rule_match_meta\22\09\09\09\09\09"
module asm "__kstrtabns_flow_rule_match_meta:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_flow_rule_match_basic:\09\09\09\09\09"
module asm "\09.asciz \09\22flow_rule_match_basic\22\09\09\09\09\09"
module asm "__kstrtabns_flow_rule_match_basic:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_flow_rule_match_control:\09\09\09\09\09"
module asm "\09.asciz \09\22flow_rule_match_control\22\09\09\09\09\09"
module asm "__kstrtabns_flow_rule_match_control:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_flow_rule_match_eth_addrs:\09\09\09\09\09"
module asm "\09.asciz \09\22flow_rule_match_eth_addrs\22\09\09\09\09\09"
module asm "__kstrtabns_flow_rule_match_eth_addrs:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_flow_rule_match_vlan:\09\09\09\09\09"
module asm "\09.asciz \09\22flow_rule_match_vlan\22\09\09\09\09\09"
module asm "__kstrtabns_flow_rule_match_vlan:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_flow_rule_match_cvlan:\09\09\09\09\09"
module asm "\09.asciz \09\22flow_rule_match_cvlan\22\09\09\09\09\09"
module asm "__kstrtabns_flow_rule_match_cvlan:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_flow_rule_match_ipv4_addrs:\09\09\09\09\09"
module asm "\09.asciz \09\22flow_rule_match_ipv4_addrs\22\09\09\09\09\09"
module asm "__kstrtabns_flow_rule_match_ipv4_addrs:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_flow_rule_match_ipv6_addrs:\09\09\09\09\09"
module asm "\09.asciz \09\22flow_rule_match_ipv6_addrs\22\09\09\09\09\09"
module asm "__kstrtabns_flow_rule_match_ipv6_addrs:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_flow_rule_match_ip:\09\09\09\09\09"
module asm "\09.asciz \09\22flow_rule_match_ip\22\09\09\09\09\09"
module asm "__kstrtabns_flow_rule_match_ip:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_flow_rule_match_ports:\09\09\09\09\09"
module asm "\09.asciz \09\22flow_rule_match_ports\22\09\09\09\09\09"
module asm "__kstrtabns_flow_rule_match_ports:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_flow_rule_match_tcp:\09\09\09\09\09"
module asm "\09.asciz \09\22flow_rule_match_tcp\22\09\09\09\09\09"
module asm "__kstrtabns_flow_rule_match_tcp:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_flow_rule_match_icmp:\09\09\09\09\09"
module asm "\09.asciz \09\22flow_rule_match_icmp\22\09\09\09\09\09"
module asm "__kstrtabns_flow_rule_match_icmp:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_flow_rule_match_mpls:\09\09\09\09\09"
module asm "\09.asciz \09\22flow_rule_match_mpls\22\09\09\09\09\09"
module asm "__kstrtabns_flow_rule_match_mpls:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_flow_rule_match_enc_control:\09\09\09\09\09"
module asm "\09.asciz \09\22flow_rule_match_enc_control\22\09\09\09\09\09"
module asm "__kstrtabns_flow_rule_match_enc_control:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_flow_rule_match_enc_ipv4_addrs:\09\09\09\09\09"
module asm "\09.asciz \09\22flow_rule_match_enc_ipv4_addrs\22\09\09\09\09\09"
module asm "__kstrtabns_flow_rule_match_enc_ipv4_addrs:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_flow_rule_match_enc_ipv6_addrs:\09\09\09\09\09"
module asm "\09.asciz \09\22flow_rule_match_enc_ipv6_addrs\22\09\09\09\09\09"
module asm "__kstrtabns_flow_rule_match_enc_ipv6_addrs:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_flow_rule_match_enc_ip:\09\09\09\09\09"
module asm "\09.asciz \09\22flow_rule_match_enc_ip\22\09\09\09\09\09"
module asm "__kstrtabns_flow_rule_match_enc_ip:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_flow_rule_match_enc_ports:\09\09\09\09\09"
module asm "\09.asciz \09\22flow_rule_match_enc_ports\22\09\09\09\09\09"
module asm "__kstrtabns_flow_rule_match_enc_ports:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_flow_rule_match_enc_keyid:\09\09\09\09\09"
module asm "\09.asciz \09\22flow_rule_match_enc_keyid\22\09\09\09\09\09"
module asm "__kstrtabns_flow_rule_match_enc_keyid:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_flow_rule_match_enc_opts:\09\09\09\09\09"
module asm "\09.asciz \09\22flow_rule_match_enc_opts\22\09\09\09\09\09"
module asm "__kstrtabns_flow_rule_match_enc_opts:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_flow_action_cookie_create:\09\09\09\09\09"
module asm "\09.asciz \09\22flow_action_cookie_create\22\09\09\09\09\09"
module asm "__kstrtabns_flow_action_cookie_create:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_flow_action_cookie_destroy:\09\09\09\09\09"
module asm "\09.asciz \09\22flow_action_cookie_destroy\22\09\09\09\09\09"
module asm "__kstrtabns_flow_action_cookie_destroy:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_flow_rule_match_ct:\09\09\09\09\09"
module asm "\09.asciz \09\22flow_rule_match_ct\22\09\09\09\09\09"
module asm "__kstrtabns_flow_rule_match_ct:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_flow_block_cb_alloc:\09\09\09\09\09"
module asm "\09.asciz \09\22flow_block_cb_alloc\22\09\09\09\09\09"
module asm "__kstrtabns_flow_block_cb_alloc:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_flow_block_cb_free:\09\09\09\09\09"
module asm "\09.asciz \09\22flow_block_cb_free\22\09\09\09\09\09"
module asm "__kstrtabns_flow_block_cb_free:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_flow_block_cb_lookup:\09\09\09\09\09"
module asm "\09.asciz \09\22flow_block_cb_lookup\22\09\09\09\09\09"
module asm "__kstrtabns_flow_block_cb_lookup:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_flow_block_cb_priv:\09\09\09\09\09"
module asm "\09.asciz \09\22flow_block_cb_priv\22\09\09\09\09\09"
module asm "__kstrtabns_flow_block_cb_priv:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_flow_block_cb_incref:\09\09\09\09\09"
module asm "\09.asciz \09\22flow_block_cb_incref\22\09\09\09\09\09"
module asm "__kstrtabns_flow_block_cb_incref:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_flow_block_cb_decref:\09\09\09\09\09"
module asm "\09.asciz \09\22flow_block_cb_decref\22\09\09\09\09\09"
module asm "__kstrtabns_flow_block_cb_decref:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_flow_block_cb_is_busy:\09\09\09\09\09"
module asm "\09.asciz \09\22flow_block_cb_is_busy\22\09\09\09\09\09"
module asm "__kstrtabns_flow_block_cb_is_busy:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_flow_block_cb_setup_simple:\09\09\09\09\09"
module asm "\09.asciz \09\22flow_block_cb_setup_simple\22\09\09\09\09\09"
module asm "__kstrtabns_flow_block_cb_setup_simple:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_flow_indr_dev_register:\09\09\09\09\09"
module asm "\09.asciz \09\22flow_indr_dev_register\22\09\09\09\09\09"
module asm "__kstrtabns_flow_indr_dev_register:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_flow_indr_dev_unregister:\09\09\09\09\09"
module asm "\09.asciz \09\22flow_indr_dev_unregister\22\09\09\09\09\09"
module asm "__kstrtabns_flow_indr_dev_unregister:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_flow_indr_block_cb_alloc:\09\09\09\09\09"
module asm "\09.asciz \09\22flow_indr_block_cb_alloc\22\09\09\09\09\09"
module asm "__kstrtabns_flow_indr_block_cb_alloc:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_flow_indr_dev_setup_offload:\09\09\09\09\09"
module asm "\09.asciz \09\22flow_indr_dev_setup_offload\22\09\09\09\09\09"
module asm "__kstrtabns_flow_indr_dev_setup_offload:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.26 }
%union.anon.26 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.flow_rule = type { %struct.flow_match, %struct.flow_action }
%struct.flow_match = type { ptr, ptr, ptr }
%struct.flow_action = type { i32, [0 x %struct.flow_action_entry] }
%struct.flow_action_entry = type { i32, i32, i32, ptr, ptr, %union.anon, ptr }
%union.anon = type { %struct.anon.121 }
%struct.anon.121 = type { i32, i64, i64, i64, i32 }
%struct.flow_offload_action = type { ptr, i32, i32, i32, %struct.flow_stats, %struct.flow_action }
%struct.flow_stats = type { i64, i64, i64, i64, i32, i8 }
%struct.flow_dissector = type { i32, [28 x i16] }
%struct.flow_match_meta = type { ptr, ptr }
%struct.flow_match_basic = type { ptr, ptr }
%struct.flow_match_control = type { ptr, ptr }
%struct.flow_match_eth_addrs = type { ptr, ptr }
%struct.flow_match_vlan = type { ptr, ptr }
%struct.flow_match_ipv4_addrs = type { ptr, ptr }
%struct.flow_match_ipv6_addrs = type { ptr, ptr }
%struct.flow_match_ip = type { ptr, ptr }
%struct.flow_match_ports = type { ptr, ptr }
%struct.flow_match_tcp = type { ptr, ptr }
%struct.flow_match_icmp = type { ptr, ptr }
%struct.flow_match_mpls = type { ptr, ptr }
%struct.flow_match_enc_keyid = type { ptr, ptr }
%struct.flow_match_enc_opts = type { ptr, ptr }
%struct.flow_action_cookie = type { i32, [0 x i8] }
%struct.flow_match_ct = type { ptr, ptr }
%struct.flow_block_cb = type { %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, %struct.flow_block_indr, i32 }
%struct.flow_block_indr = type { %struct.list_head, ptr, ptr, i32, ptr, ptr, ptr }
%struct.flow_block_offload = type { i32, i32, i8, i8, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.flow_indr_dev = type { %struct.list_head, ptr, ptr, %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.flow_indir_dev_info = type { ptr, ptr, ptr, i32, ptr, %struct.list_head, i32, i32, ptr }

@__kstrtab_flow_rule_alloc = external dso_local constant [0 x i8], align 1
@__kstrtabns_flow_rule_alloc = external dso_local constant [0 x i8], align 1
@__ksymtab_flow_rule_alloc = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @flow_rule_alloc to i32), ptr @__kstrtab_flow_rule_alloc, ptr @__kstrtabns_flow_rule_alloc }, section "___ksymtab+flow_rule_alloc", align 4
@__kstrtab_flow_rule_match_meta = external dso_local constant [0 x i8], align 1
@__kstrtabns_flow_rule_match_meta = external dso_local constant [0 x i8], align 1
@__ksymtab_flow_rule_match_meta = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @flow_rule_match_meta to i32), ptr @__kstrtab_flow_rule_match_meta, ptr @__kstrtabns_flow_rule_match_meta }, section "___ksymtab+flow_rule_match_meta", align 4
@__kstrtab_flow_rule_match_basic = external dso_local constant [0 x i8], align 1
@__kstrtabns_flow_rule_match_basic = external dso_local constant [0 x i8], align 1
@__ksymtab_flow_rule_match_basic = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @flow_rule_match_basic to i32), ptr @__kstrtab_flow_rule_match_basic, ptr @__kstrtabns_flow_rule_match_basic }, section "___ksymtab+flow_rule_match_basic", align 4
@__kstrtab_flow_rule_match_control = external dso_local constant [0 x i8], align 1
@__kstrtabns_flow_rule_match_control = external dso_local constant [0 x i8], align 1
@__ksymtab_flow_rule_match_control = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @flow_rule_match_control to i32), ptr @__kstrtab_flow_rule_match_control, ptr @__kstrtabns_flow_rule_match_control }, section "___ksymtab+flow_rule_match_control", align 4
@__kstrtab_flow_rule_match_eth_addrs = external dso_local constant [0 x i8], align 1
@__kstrtabns_flow_rule_match_eth_addrs = external dso_local constant [0 x i8], align 1
@__ksymtab_flow_rule_match_eth_addrs = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @flow_rule_match_eth_addrs to i32), ptr @__kstrtab_flow_rule_match_eth_addrs, ptr @__kstrtabns_flow_rule_match_eth_addrs }, section "___ksymtab+flow_rule_match_eth_addrs", align 4
@__kstrtab_flow_rule_match_vlan = external dso_local constant [0 x i8], align 1
@__kstrtabns_flow_rule_match_vlan = external dso_local constant [0 x i8], align 1
@__ksymtab_flow_rule_match_vlan = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @flow_rule_match_vlan to i32), ptr @__kstrtab_flow_rule_match_vlan, ptr @__kstrtabns_flow_rule_match_vlan }, section "___ksymtab+flow_rule_match_vlan", align 4
@__kstrtab_flow_rule_match_cvlan = external dso_local constant [0 x i8], align 1
@__kstrtabns_flow_rule_match_cvlan = external dso_local constant [0 x i8], align 1
@__ksymtab_flow_rule_match_cvlan = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @flow_rule_match_cvlan to i32), ptr @__kstrtab_flow_rule_match_cvlan, ptr @__kstrtabns_flow_rule_match_cvlan }, section "___ksymtab+flow_rule_match_cvlan", align 4
@__kstrtab_flow_rule_match_ipv4_addrs = external dso_local constant [0 x i8], align 1
@__kstrtabns_flow_rule_match_ipv4_addrs = external dso_local constant [0 x i8], align 1
@__ksymtab_flow_rule_match_ipv4_addrs = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @flow_rule_match_ipv4_addrs to i32), ptr @__kstrtab_flow_rule_match_ipv4_addrs, ptr @__kstrtabns_flow_rule_match_ipv4_addrs }, section "___ksymtab+flow_rule_match_ipv4_addrs", align 4
@__kstrtab_flow_rule_match_ipv6_addrs = external dso_local constant [0 x i8], align 1
@__kstrtabns_flow_rule_match_ipv6_addrs = external dso_local constant [0 x i8], align 1
@__ksymtab_flow_rule_match_ipv6_addrs = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @flow_rule_match_ipv6_addrs to i32), ptr @__kstrtab_flow_rule_match_ipv6_addrs, ptr @__kstrtabns_flow_rule_match_ipv6_addrs }, section "___ksymtab+flow_rule_match_ipv6_addrs", align 4
@__kstrtab_flow_rule_match_ip = external dso_local constant [0 x i8], align 1
@__kstrtabns_flow_rule_match_ip = external dso_local constant [0 x i8], align 1
@__ksymtab_flow_rule_match_ip = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @flow_rule_match_ip to i32), ptr @__kstrtab_flow_rule_match_ip, ptr @__kstrtabns_flow_rule_match_ip }, section "___ksymtab+flow_rule_match_ip", align 4
@__kstrtab_flow_rule_match_ports = external dso_local constant [0 x i8], align 1
@__kstrtabns_flow_rule_match_ports = external dso_local constant [0 x i8], align 1
@__ksymtab_flow_rule_match_ports = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @flow_rule_match_ports to i32), ptr @__kstrtab_flow_rule_match_ports, ptr @__kstrtabns_flow_rule_match_ports }, section "___ksymtab+flow_rule_match_ports", align 4
@__kstrtab_flow_rule_match_tcp = external dso_local constant [0 x i8], align 1
@__kstrtabns_flow_rule_match_tcp = external dso_local constant [0 x i8], align 1
@__ksymtab_flow_rule_match_tcp = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @flow_rule_match_tcp to i32), ptr @__kstrtab_flow_rule_match_tcp, ptr @__kstrtabns_flow_rule_match_tcp }, section "___ksymtab+flow_rule_match_tcp", align 4
@__kstrtab_flow_rule_match_icmp = external dso_local constant [0 x i8], align 1
@__kstrtabns_flow_rule_match_icmp = external dso_local constant [0 x i8], align 1
@__ksymtab_flow_rule_match_icmp = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @flow_rule_match_icmp to i32), ptr @__kstrtab_flow_rule_match_icmp, ptr @__kstrtabns_flow_rule_match_icmp }, section "___ksymtab+flow_rule_match_icmp", align 4
@__kstrtab_flow_rule_match_mpls = external dso_local constant [0 x i8], align 1
@__kstrtabns_flow_rule_match_mpls = external dso_local constant [0 x i8], align 1
@__ksymtab_flow_rule_match_mpls = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @flow_rule_match_mpls to i32), ptr @__kstrtab_flow_rule_match_mpls, ptr @__kstrtabns_flow_rule_match_mpls }, section "___ksymtab+flow_rule_match_mpls", align 4
@__kstrtab_flow_rule_match_enc_control = external dso_local constant [0 x i8], align 1
@__kstrtabns_flow_rule_match_enc_control = external dso_local constant [0 x i8], align 1
@__ksymtab_flow_rule_match_enc_control = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @flow_rule_match_enc_control to i32), ptr @__kstrtab_flow_rule_match_enc_control, ptr @__kstrtabns_flow_rule_match_enc_control }, section "___ksymtab+flow_rule_match_enc_control", align 4
@__kstrtab_flow_rule_match_enc_ipv4_addrs = external dso_local constant [0 x i8], align 1
@__kstrtabns_flow_rule_match_enc_ipv4_addrs = external dso_local constant [0 x i8], align 1
@__ksymtab_flow_rule_match_enc_ipv4_addrs = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @flow_rule_match_enc_ipv4_addrs to i32), ptr @__kstrtab_flow_rule_match_enc_ipv4_addrs, ptr @__kstrtabns_flow_rule_match_enc_ipv4_addrs }, section "___ksymtab+flow_rule_match_enc_ipv4_addrs", align 4
@__kstrtab_flow_rule_match_enc_ipv6_addrs = external dso_local constant [0 x i8], align 1
@__kstrtabns_flow_rule_match_enc_ipv6_addrs = external dso_local constant [0 x i8], align 1
@__ksymtab_flow_rule_match_enc_ipv6_addrs = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @flow_rule_match_enc_ipv6_addrs to i32), ptr @__kstrtab_flow_rule_match_enc_ipv6_addrs, ptr @__kstrtabns_flow_rule_match_enc_ipv6_addrs }, section "___ksymtab+flow_rule_match_enc_ipv6_addrs", align 4
@__kstrtab_flow_rule_match_enc_ip = external dso_local constant [0 x i8], align 1
@__kstrtabns_flow_rule_match_enc_ip = external dso_local constant [0 x i8], align 1
@__ksymtab_flow_rule_match_enc_ip = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @flow_rule_match_enc_ip to i32), ptr @__kstrtab_flow_rule_match_enc_ip, ptr @__kstrtabns_flow_rule_match_enc_ip }, section "___ksymtab+flow_rule_match_enc_ip", align 4
@__kstrtab_flow_rule_match_enc_ports = external dso_local constant [0 x i8], align 1
@__kstrtabns_flow_rule_match_enc_ports = external dso_local constant [0 x i8], align 1
@__ksymtab_flow_rule_match_enc_ports = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @flow_rule_match_enc_ports to i32), ptr @__kstrtab_flow_rule_match_enc_ports, ptr @__kstrtabns_flow_rule_match_enc_ports }, section "___ksymtab+flow_rule_match_enc_ports", align 4
@__kstrtab_flow_rule_match_enc_keyid = external dso_local constant [0 x i8], align 1
@__kstrtabns_flow_rule_match_enc_keyid = external dso_local constant [0 x i8], align 1
@__ksymtab_flow_rule_match_enc_keyid = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @flow_rule_match_enc_keyid to i32), ptr @__kstrtab_flow_rule_match_enc_keyid, ptr @__kstrtabns_flow_rule_match_enc_keyid }, section "___ksymtab+flow_rule_match_enc_keyid", align 4
@__kstrtab_flow_rule_match_enc_opts = external dso_local constant [0 x i8], align 1
@__kstrtabns_flow_rule_match_enc_opts = external dso_local constant [0 x i8], align 1
@__ksymtab_flow_rule_match_enc_opts = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @flow_rule_match_enc_opts to i32), ptr @__kstrtab_flow_rule_match_enc_opts, ptr @__kstrtabns_flow_rule_match_enc_opts }, section "___ksymtab+flow_rule_match_enc_opts", align 4
@__kstrtab_flow_action_cookie_create = external dso_local constant [0 x i8], align 1
@__kstrtabns_flow_action_cookie_create = external dso_local constant [0 x i8], align 1
@__ksymtab_flow_action_cookie_create = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @flow_action_cookie_create to i32), ptr @__kstrtab_flow_action_cookie_create, ptr @__kstrtabns_flow_action_cookie_create }, section "___ksymtab+flow_action_cookie_create", align 4
@__kstrtab_flow_action_cookie_destroy = external dso_local constant [0 x i8], align 1
@__kstrtabns_flow_action_cookie_destroy = external dso_local constant [0 x i8], align 1
@__ksymtab_flow_action_cookie_destroy = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @flow_action_cookie_destroy to i32), ptr @__kstrtab_flow_action_cookie_destroy, ptr @__kstrtabns_flow_action_cookie_destroy }, section "___ksymtab+flow_action_cookie_destroy", align 4
@__kstrtab_flow_rule_match_ct = external dso_local constant [0 x i8], align 1
@__kstrtabns_flow_rule_match_ct = external dso_local constant [0 x i8], align 1
@__ksymtab_flow_rule_match_ct = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @flow_rule_match_ct to i32), ptr @__kstrtab_flow_rule_match_ct, ptr @__kstrtabns_flow_rule_match_ct }, section "___ksymtab+flow_rule_match_ct", align 4
@__kstrtab_flow_block_cb_alloc = external dso_local constant [0 x i8], align 1
@__kstrtabns_flow_block_cb_alloc = external dso_local constant [0 x i8], align 1
@__ksymtab_flow_block_cb_alloc = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @flow_block_cb_alloc to i32), ptr @__kstrtab_flow_block_cb_alloc, ptr @__kstrtabns_flow_block_cb_alloc }, section "___ksymtab+flow_block_cb_alloc", align 4
@__kstrtab_flow_block_cb_free = external dso_local constant [0 x i8], align 1
@__kstrtabns_flow_block_cb_free = external dso_local constant [0 x i8], align 1
@__ksymtab_flow_block_cb_free = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @flow_block_cb_free to i32), ptr @__kstrtab_flow_block_cb_free, ptr @__kstrtabns_flow_block_cb_free }, section "___ksymtab+flow_block_cb_free", align 4
@__kstrtab_flow_block_cb_lookup = external dso_local constant [0 x i8], align 1
@__kstrtabns_flow_block_cb_lookup = external dso_local constant [0 x i8], align 1
@__ksymtab_flow_block_cb_lookup = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @flow_block_cb_lookup to i32), ptr @__kstrtab_flow_block_cb_lookup, ptr @__kstrtabns_flow_block_cb_lookup }, section "___ksymtab+flow_block_cb_lookup", align 4
@__kstrtab_flow_block_cb_priv = external dso_local constant [0 x i8], align 1
@__kstrtabns_flow_block_cb_priv = external dso_local constant [0 x i8], align 1
@__ksymtab_flow_block_cb_priv = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @flow_block_cb_priv to i32), ptr @__kstrtab_flow_block_cb_priv, ptr @__kstrtabns_flow_block_cb_priv }, section "___ksymtab+flow_block_cb_priv", align 4
@__kstrtab_flow_block_cb_incref = external dso_local constant [0 x i8], align 1
@__kstrtabns_flow_block_cb_incref = external dso_local constant [0 x i8], align 1
@__ksymtab_flow_block_cb_incref = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @flow_block_cb_incref to i32), ptr @__kstrtab_flow_block_cb_incref, ptr @__kstrtabns_flow_block_cb_incref }, section "___ksymtab+flow_block_cb_incref", align 4
@__kstrtab_flow_block_cb_decref = external dso_local constant [0 x i8], align 1
@__kstrtabns_flow_block_cb_decref = external dso_local constant [0 x i8], align 1
@__ksymtab_flow_block_cb_decref = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @flow_block_cb_decref to i32), ptr @__kstrtab_flow_block_cb_decref, ptr @__kstrtabns_flow_block_cb_decref }, section "___ksymtab+flow_block_cb_decref", align 4
@__kstrtab_flow_block_cb_is_busy = external dso_local constant [0 x i8], align 1
@__kstrtabns_flow_block_cb_is_busy = external dso_local constant [0 x i8], align 1
@__ksymtab_flow_block_cb_is_busy = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @flow_block_cb_is_busy to i32), ptr @__kstrtab_flow_block_cb_is_busy, ptr @__kstrtabns_flow_block_cb_is_busy }, section "___ksymtab+flow_block_cb_is_busy", align 4
@__kstrtab_flow_block_cb_setup_simple = external dso_local constant [0 x i8], align 1
@__kstrtabns_flow_block_cb_setup_simple = external dso_local constant [0 x i8], align 1
@__ksymtab_flow_block_cb_setup_simple = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @flow_block_cb_setup_simple to i32), ptr @__kstrtab_flow_block_cb_setup_simple, ptr @__kstrtabns_flow_block_cb_setup_simple }, section "___ksymtab+flow_block_cb_setup_simple", align 4
@flow_indr_block_lock = internal global %struct.mutex { %struct.atomic_t zeroinitializer, %struct.raw_spinlock zeroinitializer, %struct.optimistic_spin_queue zeroinitializer, %struct.list_head { ptr getelementptr (i8, ptr @flow_indr_block_lock, i64 12), ptr getelementptr (i8, ptr @flow_indr_block_lock, i64 12) } }, align 4
@flow_block_indr_dev_list = internal global %struct.list_head { ptr @flow_block_indr_dev_list, ptr @flow_block_indr_dev_list }, align 4
@__kstrtab_flow_indr_dev_register = external dso_local constant [0 x i8], align 1
@__kstrtabns_flow_indr_dev_register = external dso_local constant [0 x i8], align 1
@__ksymtab_flow_indr_dev_register = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @flow_indr_dev_register to i32), ptr @__kstrtab_flow_indr_dev_register, ptr @__kstrtabns_flow_indr_dev_register }, section "___ksymtab+flow_indr_dev_register", align 4
@__kstrtab_flow_indr_dev_unregister = external dso_local constant [0 x i8], align 1
@__kstrtabns_flow_indr_dev_unregister = external dso_local constant [0 x i8], align 1
@__ksymtab_flow_indr_dev_unregister = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @flow_indr_dev_unregister to i32), ptr @__kstrtab_flow_indr_dev_unregister, ptr @__kstrtabns_flow_indr_dev_unregister }, section "___ksymtab+flow_indr_dev_unregister", align 4
@flow_block_indr_list = internal global %struct.list_head { ptr @flow_block_indr_list, ptr @flow_block_indr_list }, align 4
@__kstrtab_flow_indr_block_cb_alloc = external dso_local constant [0 x i8], align 1
@__kstrtabns_flow_indr_block_cb_alloc = external dso_local constant [0 x i8], align 1
@__ksymtab_flow_indr_block_cb_alloc = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @flow_indr_block_cb_alloc to i32), ptr @__kstrtab_flow_indr_block_cb_alloc, ptr @__kstrtabns_flow_indr_block_cb_alloc }, section "___ksymtab+flow_indr_block_cb_alloc", align 4
@__kstrtab_flow_indr_dev_setup_offload = external dso_local constant [0 x i8], align 1
@__kstrtabns_flow_indr_dev_setup_offload = external dso_local constant [0 x i8], align 1
@__ksymtab_flow_indr_dev_setup_offload = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @flow_indr_dev_setup_offload to i32), ptr @__kstrtab_flow_indr_dev_setup_offload, ptr @__kstrtabns_flow_indr_dev_setup_offload }, section "___ksymtab+flow_indr_dev_setup_offload", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@flow_indir_dev_list = internal global %struct.list_head { ptr @flow_indir_dev_list, ptr @flow_indir_dev_list }, align 4
@llvm.compiler.used = appending global [36 x ptr] [ptr @__ksymtab_flow_action_cookie_create, ptr @__ksymtab_flow_action_cookie_destroy, ptr @__ksymtab_flow_block_cb_alloc, ptr @__ksymtab_flow_block_cb_decref, ptr @__ksymtab_flow_block_cb_free, ptr @__ksymtab_flow_block_cb_incref, ptr @__ksymtab_flow_block_cb_is_busy, ptr @__ksymtab_flow_block_cb_lookup, ptr @__ksymtab_flow_block_cb_priv, ptr @__ksymtab_flow_block_cb_setup_simple, ptr @__ksymtab_flow_indr_block_cb_alloc, ptr @__ksymtab_flow_indr_dev_register, ptr @__ksymtab_flow_indr_dev_setup_offload, ptr @__ksymtab_flow_indr_dev_unregister, ptr @__ksymtab_flow_rule_alloc, ptr @__ksymtab_flow_rule_match_basic, ptr @__ksymtab_flow_rule_match_control, ptr @__ksymtab_flow_rule_match_ct, ptr @__ksymtab_flow_rule_match_cvlan, ptr @__ksymtab_flow_rule_match_enc_control, ptr @__ksymtab_flow_rule_match_enc_ip, ptr @__ksymtab_flow_rule_match_enc_ipv4_addrs, ptr @__ksymtab_flow_rule_match_enc_ipv6_addrs, ptr @__ksymtab_flow_rule_match_enc_keyid, ptr @__ksymtab_flow_rule_match_enc_opts, ptr @__ksymtab_flow_rule_match_enc_ports, ptr @__ksymtab_flow_rule_match_eth_addrs, ptr @__ksymtab_flow_rule_match_icmp, ptr @__ksymtab_flow_rule_match_ip, ptr @__ksymtab_flow_rule_match_ipv4_addrs, ptr @__ksymtab_flow_rule_match_ipv6_addrs, ptr @__ksymtab_flow_rule_match_meta, ptr @__ksymtab_flow_rule_match_mpls, ptr @__ksymtab_flow_rule_match_ports, ptr @__ksymtab_flow_rule_match_tcp, ptr @__ksymtab_flow_rule_match_vlan], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @flow_rule_alloc(i32 noundef %0) #0 {
  %2 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %0, i32 72) #12
  %3 = extractvalue { i32, i1 } %2, 1
  %4 = extractvalue { i32, i1 } %2, 0
  %5 = tail call i32 @llvm.uadd.sat.i32(i32 %4, i32 24) #12
  %6 = select i1 %3, i32 -1, i32 %5
  %7 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %6, i32 noundef 3520) #13
  %8 = icmp eq ptr %7, null
  br i1 %8, label %20, label %9

9:                                                ; preds = %1
  %10 = getelementptr inbounds %struct.flow_rule, ptr %7, i32 0, i32 1
  store i32 %0, ptr %10, align 16
  %11 = icmp eq i32 %0, 0
  br i1 %11, label %20, label %12

12:                                               ; preds = %9
  %13 = getelementptr inbounds %struct.flow_rule, ptr %7, i32 1
  br label %14

14:                                               ; preds = %14, %12
  %15 = phi i32 [ 0, %12 ], [ %18, %14 ]
  %16 = getelementptr [0 x %struct.flow_action_entry], ptr %13, i32 0, i32 %15
  %17 = getelementptr inbounds %struct.flow_action_entry, ptr %16, i32 0, i32 2
  store i32 7, ptr %17, align 8
  %18 = add nuw i32 %15, 1
  %19 = icmp eq i32 %18, %0
  br i1 %19, label %20, label %14

20:                                               ; preds = %14, %9, %1
  ret ptr %7
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @offload_action_alloc(i32 noundef %0) local_unnamed_addr #0 {
  %2 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %0, i32 72) #12
  %3 = extractvalue { i32, i1 } %2, 1
  %4 = extractvalue { i32, i1 } %2, 0
  %5 = tail call i32 @llvm.uadd.sat.i32(i32 %4, i32 64) #12
  %6 = select i1 %3, i32 -1, i32 %5
  %7 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %6, i32 noundef 3520) #13
  %8 = icmp eq ptr %7, null
  br i1 %8, label %20, label %9

9:                                                ; preds = %1
  %10 = getelementptr inbounds %struct.flow_offload_action, ptr %7, i32 0, i32 5
  store i32 %0, ptr %10, align 8
  %11 = icmp eq i32 %0, 0
  br i1 %11, label %20, label %12

12:                                               ; preds = %9
  %13 = getelementptr inbounds %struct.flow_offload_action, ptr %7, i32 1
  br label %14

14:                                               ; preds = %14, %12
  %15 = phi i32 [ 0, %12 ], [ %18, %14 ]
  %16 = getelementptr [0 x %struct.flow_action_entry], ptr %13, i32 0, i32 %15
  %17 = getelementptr inbounds %struct.flow_action_entry, ptr %16, i32 0, i32 2
  store i32 7, ptr %17, align 8
  %18 = add nuw i32 %15, 1
  %19 = icmp eq i32 %18, %0
  br i1 %19, label %20, label %14

20:                                               ; preds = %14, %9, %1
  ret ptr %7
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define dso_local void @flow_rule_match_meta(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #2 {
  %3 = load ptr, ptr %0, align 4
  %4 = getelementptr inbounds %struct.flow_match, ptr %0, i32 0, i32 2
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr %struct.flow_dissector, ptr %3, i32 0, i32 1, i32 25
  %7 = load i16, ptr %6, align 2
  %8 = zext i16 %7 to i32
  %9 = getelementptr i8, ptr %5, i32 %8
  store ptr %9, ptr %1, align 4
  %10 = getelementptr inbounds %struct.flow_match, ptr %0, i32 0, i32 1
  %11 = load ptr, ptr %10, align 4
  %12 = load i16, ptr %6, align 2
  %13 = zext i16 %12 to i32
  %14 = getelementptr i8, ptr %11, i32 %13
  %15 = getelementptr inbounds %struct.flow_match_meta, ptr %1, i32 0, i32 1
  store ptr %14, ptr %15, align 4
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define dso_local void @flow_rule_match_basic(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #2 {
  %3 = load ptr, ptr %0, align 4
  %4 = getelementptr inbounds %struct.flow_match, ptr %0, i32 0, i32 2
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr %struct.flow_dissector, ptr %3, i32 0, i32 1, i32 1
  %7 = load i16, ptr %6, align 2
  %8 = zext i16 %7 to i32
  %9 = getelementptr i8, ptr %5, i32 %8
  store ptr %9, ptr %1, align 4
  %10 = getelementptr inbounds %struct.flow_match, ptr %0, i32 0, i32 1
  %11 = load ptr, ptr %10, align 4
  %12 = load i16, ptr %6, align 2
  %13 = zext i16 %12 to i32
  %14 = getelementptr i8, ptr %11, i32 %13
  %15 = getelementptr inbounds %struct.flow_match_basic, ptr %1, i32 0, i32 1
  store ptr %14, ptr %15, align 4
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define dso_local void @flow_rule_match_control(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #2 {
  %3 = load ptr, ptr %0, align 4
  %4 = getelementptr inbounds %struct.flow_match, ptr %0, i32 0, i32 2
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr %struct.flow_dissector, ptr %3, i32 0, i32 1, i32 0
  %7 = load i16, ptr %6, align 2
  %8 = zext i16 %7 to i32
  %9 = getelementptr i8, ptr %5, i32 %8
  store ptr %9, ptr %1, align 4
  %10 = getelementptr inbounds %struct.flow_match, ptr %0, i32 0, i32 1
  %11 = load ptr, ptr %10, align 4
  %12 = load i16, ptr %6, align 2
  %13 = zext i16 %12 to i32
  %14 = getelementptr i8, ptr %11, i32 %13
  %15 = getelementptr inbounds %struct.flow_match_control, ptr %1, i32 0, i32 1
  store ptr %14, ptr %15, align 4
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define dso_local void @flow_rule_match_eth_addrs(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #2 {
  %3 = load ptr, ptr %0, align 4
  %4 = getelementptr inbounds %struct.flow_match, ptr %0, i32 0, i32 2
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr %struct.flow_dissector, ptr %3, i32 0, i32 1, i32 7
  %7 = load i16, ptr %6, align 2
  %8 = zext i16 %7 to i32
  %9 = getelementptr i8, ptr %5, i32 %8
  store ptr %9, ptr %1, align 4
  %10 = getelementptr inbounds %struct.flow_match, ptr %0, i32 0, i32 1
  %11 = load ptr, ptr %10, align 4
  %12 = load i16, ptr %6, align 2
  %13 = zext i16 %12 to i32
  %14 = getelementptr i8, ptr %11, i32 %13
  %15 = getelementptr inbounds %struct.flow_match_eth_addrs, ptr %1, i32 0, i32 1
  store ptr %14, ptr %15, align 4
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define dso_local void @flow_rule_match_vlan(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #2 {
  %3 = load ptr, ptr %0, align 4
  %4 = getelementptr inbounds %struct.flow_match, ptr %0, i32 0, i32 2
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr %struct.flow_dissector, ptr %3, i32 0, i32 1, i32 10
  %7 = load i16, ptr %6, align 2
  %8 = zext i16 %7 to i32
  %9 = getelementptr i8, ptr %5, i32 %8
  store ptr %9, ptr %1, align 4
  %10 = getelementptr inbounds %struct.flow_match, ptr %0, i32 0, i32 1
  %11 = load ptr, ptr %10, align 4
  %12 = load i16, ptr %6, align 2
  %13 = zext i16 %12 to i32
  %14 = getelementptr i8, ptr %11, i32 %13
  %15 = getelementptr inbounds %struct.flow_match_vlan, ptr %1, i32 0, i32 1
  store ptr %14, ptr %15, align 4
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define dso_local void @flow_rule_match_cvlan(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #2 {
  %3 = load ptr, ptr %0, align 4
  %4 = getelementptr inbounds %struct.flow_match, ptr %0, i32 0, i32 2
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr %struct.flow_dissector, ptr %3, i32 0, i32 1, i32 22
  %7 = load i16, ptr %6, align 2
  %8 = zext i16 %7 to i32
  %9 = getelementptr i8, ptr %5, i32 %8
  store ptr %9, ptr %1, align 4
  %10 = getelementptr inbounds %struct.flow_match, ptr %0, i32 0, i32 1
  %11 = load ptr, ptr %10, align 4
  %12 = load i16, ptr %6, align 2
  %13 = zext i16 %12 to i32
  %14 = getelementptr i8, ptr %11, i32 %13
  %15 = getelementptr inbounds %struct.flow_match_vlan, ptr %1, i32 0, i32 1
  store ptr %14, ptr %15, align 4
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define dso_local void @flow_rule_match_ipv4_addrs(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #2 {
  %3 = load ptr, ptr %0, align 4
  %4 = getelementptr inbounds %struct.flow_match, ptr %0, i32 0, i32 2
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr %struct.flow_dissector, ptr %3, i32 0, i32 1, i32 2
  %7 = load i16, ptr %6, align 2
  %8 = zext i16 %7 to i32
  %9 = getelementptr i8, ptr %5, i32 %8
  store ptr %9, ptr %1, align 4
  %10 = getelementptr inbounds %struct.flow_match, ptr %0, i32 0, i32 1
  %11 = load ptr, ptr %10, align 4
  %12 = load i16, ptr %6, align 2
  %13 = zext i16 %12 to i32
  %14 = getelementptr i8, ptr %11, i32 %13
  %15 = getelementptr inbounds %struct.flow_match_ipv4_addrs, ptr %1, i32 0, i32 1
  store ptr %14, ptr %15, align 4
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define dso_local void @flow_rule_match_ipv6_addrs(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #2 {
  %3 = load ptr, ptr %0, align 4
  %4 = getelementptr inbounds %struct.flow_match, ptr %0, i32 0, i32 2
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr %struct.flow_dissector, ptr %3, i32 0, i32 1, i32 3
  %7 = load i16, ptr %6, align 2
  %8 = zext i16 %7 to i32
  %9 = getelementptr i8, ptr %5, i32 %8
  store ptr %9, ptr %1, align 4
  %10 = getelementptr inbounds %struct.flow_match, ptr %0, i32 0, i32 1
  %11 = load ptr, ptr %10, align 4
  %12 = load i16, ptr %6, align 2
  %13 = zext i16 %12 to i32
  %14 = getelementptr i8, ptr %11, i32 %13
  %15 = getelementptr inbounds %struct.flow_match_ipv6_addrs, ptr %1, i32 0, i32 1
  store ptr %14, ptr %15, align 4
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define dso_local void @flow_rule_match_ip(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #2 {
  %3 = load ptr, ptr %0, align 4
  %4 = getelementptr inbounds %struct.flow_match, ptr %0, i32 0, i32 2
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr %struct.flow_dissector, ptr %3, i32 0, i32 1, i32 21
  %7 = load i16, ptr %6, align 2
  %8 = zext i16 %7 to i32
  %9 = getelementptr i8, ptr %5, i32 %8
  store ptr %9, ptr %1, align 4
  %10 = getelementptr inbounds %struct.flow_match, ptr %0, i32 0, i32 1
  %11 = load ptr, ptr %10, align 4
  %12 = load i16, ptr %6, align 2
  %13 = zext i16 %12 to i32
  %14 = getelementptr i8, ptr %11, i32 %13
  %15 = getelementptr inbounds %struct.flow_match_ip, ptr %1, i32 0, i32 1
  store ptr %14, ptr %15, align 4
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define dso_local void @flow_rule_match_ports(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #2 {
  %3 = load ptr, ptr %0, align 4
  %4 = getelementptr inbounds %struct.flow_match, ptr %0, i32 0, i32 2
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr %struct.flow_dissector, ptr %3, i32 0, i32 1, i32 4
  %7 = load i16, ptr %6, align 2
  %8 = zext i16 %7 to i32
  %9 = getelementptr i8, ptr %5, i32 %8
  store ptr %9, ptr %1, align 4
  %10 = getelementptr inbounds %struct.flow_match, ptr %0, i32 0, i32 1
  %11 = load ptr, ptr %10, align 4
  %12 = load i16, ptr %6, align 2
  %13 = zext i16 %12 to i32
  %14 = getelementptr i8, ptr %11, i32 %13
  %15 = getelementptr inbounds %struct.flow_match_ports, ptr %1, i32 0, i32 1
  store ptr %14, ptr %15, align 4
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define dso_local void @flow_rule_match_tcp(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #2 {
  %3 = load ptr, ptr %0, align 4
  %4 = getelementptr inbounds %struct.flow_match, ptr %0, i32 0, i32 2
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr %struct.flow_dissector, ptr %3, i32 0, i32 1, i32 20
  %7 = load i16, ptr %6, align 2
  %8 = zext i16 %7 to i32
  %9 = getelementptr i8, ptr %5, i32 %8
  store ptr %9, ptr %1, align 4
  %10 = getelementptr inbounds %struct.flow_match, ptr %0, i32 0, i32 1
  %11 = load ptr, ptr %10, align 4
  %12 = load i16, ptr %6, align 2
  %13 = zext i16 %12 to i32
  %14 = getelementptr i8, ptr %11, i32 %13
  %15 = getelementptr inbounds %struct.flow_match_tcp, ptr %1, i32 0, i32 1
  store ptr %14, ptr %15, align 4
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define dso_local void @flow_rule_match_icmp(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #2 {
  %3 = load ptr, ptr %0, align 4
  %4 = getelementptr inbounds %struct.flow_match, ptr %0, i32 0, i32 2
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr %struct.flow_dissector, ptr %3, i32 0, i32 1, i32 6
  %7 = load i16, ptr %6, align 2
  %8 = zext i16 %7 to i32
  %9 = getelementptr i8, ptr %5, i32 %8
  store ptr %9, ptr %1, align 4
  %10 = getelementptr inbounds %struct.flow_match, ptr %0, i32 0, i32 1
  %11 = load ptr, ptr %10, align 4
  %12 = load i16, ptr %6, align 2
  %13 = zext i16 %12 to i32
  %14 = getelementptr i8, ptr %11, i32 %13
  %15 = getelementptr inbounds %struct.flow_match_icmp, ptr %1, i32 0, i32 1
  store ptr %14, ptr %15, align 4
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define dso_local void @flow_rule_match_mpls(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #2 {
  %3 = load ptr, ptr %0, align 4
  %4 = getelementptr inbounds %struct.flow_match, ptr %0, i32 0, i32 2
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr %struct.flow_dissector, ptr %3, i32 0, i32 1, i32 19
  %7 = load i16, ptr %6, align 2
  %8 = zext i16 %7 to i32
  %9 = getelementptr i8, ptr %5, i32 %8
  store ptr %9, ptr %1, align 4
  %10 = getelementptr inbounds %struct.flow_match, ptr %0, i32 0, i32 1
  %11 = load ptr, ptr %10, align 4
  %12 = load i16, ptr %6, align 2
  %13 = zext i16 %12 to i32
  %14 = getelementptr i8, ptr %11, i32 %13
  %15 = getelementptr inbounds %struct.flow_match_mpls, ptr %1, i32 0, i32 1
  store ptr %14, ptr %15, align 4
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define dso_local void @flow_rule_match_enc_control(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #2 {
  %3 = load ptr, ptr %0, align 4
  %4 = getelementptr inbounds %struct.flow_match, ptr %0, i32 0, i32 2
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr %struct.flow_dissector, ptr %3, i32 0, i32 1, i32 17
  %7 = load i16, ptr %6, align 2
  %8 = zext i16 %7 to i32
  %9 = getelementptr i8, ptr %5, i32 %8
  store ptr %9, ptr %1, align 4
  %10 = getelementptr inbounds %struct.flow_match, ptr %0, i32 0, i32 1
  %11 = load ptr, ptr %10, align 4
  %12 = load i16, ptr %6, align 2
  %13 = zext i16 %12 to i32
  %14 = getelementptr i8, ptr %11, i32 %13
  %15 = getelementptr inbounds %struct.flow_match_control, ptr %1, i32 0, i32 1
  store ptr %14, ptr %15, align 4
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define dso_local void @flow_rule_match_enc_ipv4_addrs(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #2 {
  %3 = load ptr, ptr %0, align 4
  %4 = getelementptr inbounds %struct.flow_match, ptr %0, i32 0, i32 2
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr %struct.flow_dissector, ptr %3, i32 0, i32 1, i32 15
  %7 = load i16, ptr %6, align 2
  %8 = zext i16 %7 to i32
  %9 = getelementptr i8, ptr %5, i32 %8
  store ptr %9, ptr %1, align 4
  %10 = getelementptr inbounds %struct.flow_match, ptr %0, i32 0, i32 1
  %11 = load ptr, ptr %10, align 4
  %12 = load i16, ptr %6, align 2
  %13 = zext i16 %12 to i32
  %14 = getelementptr i8, ptr %11, i32 %13
  %15 = getelementptr inbounds %struct.flow_match_ipv4_addrs, ptr %1, i32 0, i32 1
  store ptr %14, ptr %15, align 4
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define dso_local void @flow_rule_match_enc_ipv6_addrs(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #2 {
  %3 = load ptr, ptr %0, align 4
  %4 = getelementptr inbounds %struct.flow_match, ptr %0, i32 0, i32 2
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr %struct.flow_dissector, ptr %3, i32 0, i32 1, i32 16
  %7 = load i16, ptr %6, align 2
  %8 = zext i16 %7 to i32
  %9 = getelementptr i8, ptr %5, i32 %8
  store ptr %9, ptr %1, align 4
  %10 = getelementptr inbounds %struct.flow_match, ptr %0, i32 0, i32 1
  %11 = load ptr, ptr %10, align 4
  %12 = load i16, ptr %6, align 2
  %13 = zext i16 %12 to i32
  %14 = getelementptr i8, ptr %11, i32 %13
  %15 = getelementptr inbounds %struct.flow_match_ipv6_addrs, ptr %1, i32 0, i32 1
  store ptr %14, ptr %15, align 4
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define dso_local void @flow_rule_match_enc_ip(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #2 {
  %3 = load ptr, ptr %0, align 4
  %4 = getelementptr inbounds %struct.flow_match, ptr %0, i32 0, i32 2
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr %struct.flow_dissector, ptr %3, i32 0, i32 1, i32 23
  %7 = load i16, ptr %6, align 2
  %8 = zext i16 %7 to i32
  %9 = getelementptr i8, ptr %5, i32 %8
  store ptr %9, ptr %1, align 4
  %10 = getelementptr inbounds %struct.flow_match, ptr %0, i32 0, i32 1
  %11 = load ptr, ptr %10, align 4
  %12 = load i16, ptr %6, align 2
  %13 = zext i16 %12 to i32
  %14 = getelementptr i8, ptr %11, i32 %13
  %15 = getelementptr inbounds %struct.flow_match_ip, ptr %1, i32 0, i32 1
  store ptr %14, ptr %15, align 4
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define dso_local void @flow_rule_match_enc_ports(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #2 {
  %3 = load ptr, ptr %0, align 4
  %4 = getelementptr inbounds %struct.flow_match, ptr %0, i32 0, i32 2
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr %struct.flow_dissector, ptr %3, i32 0, i32 1, i32 18
  %7 = load i16, ptr %6, align 2
  %8 = zext i16 %7 to i32
  %9 = getelementptr i8, ptr %5, i32 %8
  store ptr %9, ptr %1, align 4
  %10 = getelementptr inbounds %struct.flow_match, ptr %0, i32 0, i32 1
  %11 = load ptr, ptr %10, align 4
  %12 = load i16, ptr %6, align 2
  %13 = zext i16 %12 to i32
  %14 = getelementptr i8, ptr %11, i32 %13
  %15 = getelementptr inbounds %struct.flow_match_ports, ptr %1, i32 0, i32 1
  store ptr %14, ptr %15, align 4
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define dso_local void @flow_rule_match_enc_keyid(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #2 {
  %3 = load ptr, ptr %0, align 4
  %4 = getelementptr inbounds %struct.flow_match, ptr %0, i32 0, i32 2
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr %struct.flow_dissector, ptr %3, i32 0, i32 1, i32 14
  %7 = load i16, ptr %6, align 2
  %8 = zext i16 %7 to i32
  %9 = getelementptr i8, ptr %5, i32 %8
  store ptr %9, ptr %1, align 4
  %10 = getelementptr inbounds %struct.flow_match, ptr %0, i32 0, i32 1
  %11 = load ptr, ptr %10, align 4
  %12 = load i16, ptr %6, align 2
  %13 = zext i16 %12 to i32
  %14 = getelementptr i8, ptr %11, i32 %13
  %15 = getelementptr inbounds %struct.flow_match_enc_keyid, ptr %1, i32 0, i32 1
  store ptr %14, ptr %15, align 4
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define dso_local void @flow_rule_match_enc_opts(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #2 {
  %3 = load ptr, ptr %0, align 4
  %4 = getelementptr inbounds %struct.flow_match, ptr %0, i32 0, i32 2
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr %struct.flow_dissector, ptr %3, i32 0, i32 1, i32 24
  %7 = load i16, ptr %6, align 2
  %8 = zext i16 %7 to i32
  %9 = getelementptr i8, ptr %5, i32 %8
  store ptr %9, ptr %1, align 4
  %10 = getelementptr inbounds %struct.flow_match, ptr %0, i32 0, i32 1
  %11 = load ptr, ptr %10, align 4
  %12 = load i16, ptr %6, align 2
  %13 = zext i16 %12 to i32
  %14 = getelementptr i8, ptr %11, i32 %13
  %15 = getelementptr inbounds %struct.flow_match_enc_opts, ptr %1, i32 0, i32 1
  store ptr %14, ptr %15, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @flow_action_cookie_create(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = add i32 %1, 4
  %5 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %4, i32 noundef %2) #13
  %6 = icmp eq ptr %5, null
  br i1 %6, label %9, label %7

7:                                                ; preds = %3
  store i32 %1, ptr %5, align 64
  %8 = getelementptr inbounds %struct.flow_action_cookie, ptr %5, i32 0, i32 1
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 4 %8, ptr align 1 %0, i32 %1, i1 false)
  br label %9

9:                                                ; preds = %7, %3
  %10 = phi ptr [ %5, %7 ], [ null, %3 ]
  ret ptr %10
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @flow_action_cookie_destroy(ptr noundef %0) #0 {
  tail call void @kfree(ptr noundef %0) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define dso_local void @flow_rule_match_ct(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #2 {
  %3 = load ptr, ptr %0, align 4
  %4 = getelementptr inbounds %struct.flow_match, ptr %0, i32 0, i32 2
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr %struct.flow_dissector, ptr %3, i32 0, i32 1, i32 26
  %7 = load i16, ptr %6, align 2
  %8 = zext i16 %7 to i32
  %9 = getelementptr i8, ptr %5, i32 %8
  store ptr %9, ptr %1, align 4
  %10 = getelementptr inbounds %struct.flow_match, ptr %0, i32 0, i32 1
  %11 = load ptr, ptr %10, align 4
  %12 = load i16, ptr %6, align 2
  %13 = zext i16 %12 to i32
  %14 = getelementptr i8, ptr %11, i32 %13
  %15 = getelementptr inbounds %struct.flow_match_ct, ptr %1, i32 0, i32 1
  store ptr %14, ptr %15, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @flow_block_cb_alloc(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) #0 {
  %5 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %6 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %5, i32 noundef 3520, i32 noundef 68) #14
  %7 = icmp eq ptr %6, null
  br i1 %7, label %13, label %8

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.flow_block_cb, ptr %6, i32 0, i32 2
  store ptr %0, ptr %9, align 8
  %10 = getelementptr inbounds %struct.flow_block_cb, ptr %6, i32 0, i32 3
  store ptr %1, ptr %10, align 4
  %11 = getelementptr inbounds %struct.flow_block_cb, ptr %6, i32 0, i32 4
  store ptr %2, ptr %11, align 8
  %12 = getelementptr inbounds %struct.flow_block_cb, ptr %6, i32 0, i32 5
  store ptr %3, ptr %12, align 4
  br label %13

13:                                               ; preds = %8, %4
  %14 = phi ptr [ %6, %8 ], [ inttoptr (i32 -12 to ptr), %4 ]
  ret ptr %14
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @flow_block_cb_free(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.flow_block_cb, ptr %0, i32 0, i32 5
  %3 = load ptr, ptr %2, align 4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %8, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.flow_block_cb, ptr %0, i32 0, i32 4
  %7 = load ptr, ptr %6, align 4
  tail call void %3(ptr noundef %7) #12
  br label %8

8:                                                ; preds = %5, %1
  tail call void @kfree(ptr noundef %0) #12
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong uwtable(sync)
define dso_local ptr @flow_block_cb_lookup(ptr noundef readonly %0, ptr noundef readnone %1, ptr noundef readnone %2) #5 {
  %4 = load ptr, ptr %0, align 4
  %5 = icmp eq ptr %4, %0
  br i1 %5, label %20, label %6

6:                                                ; preds = %15, %3
  %7 = phi ptr [ %16, %15 ], [ %4, %3 ]
  %8 = getelementptr i8, ptr %7, i32 8
  %9 = load ptr, ptr %8, align 4
  %10 = icmp eq ptr %9, %1
  br i1 %10, label %11, label %15

11:                                               ; preds = %6
  %12 = getelementptr i8, ptr %7, i32 12
  %13 = load ptr, ptr %12, align 4
  %14 = icmp eq ptr %13, %2
  br i1 %14, label %18, label %15

15:                                               ; preds = %11, %6
  %16 = load ptr, ptr %7, align 4
  %17 = icmp eq ptr %16, %0
  br i1 %17, label %20, label %6

18:                                               ; preds = %11
  %19 = getelementptr i8, ptr %7, i32 -8
  br label %20

20:                                               ; preds = %18, %15, %3
  %21 = phi ptr [ %19, %18 ], [ null, %3 ], [ null, %15 ]
  ret ptr %21
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define dso_local ptr @flow_block_cb_priv(ptr nocapture noundef readonly %0) #6 {
  %2 = getelementptr inbounds %struct.flow_block_cb, ptr %0, i32 0, i32 4
  %3 = load ptr, ptr %2, align 4
  ret ptr %3
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define dso_local void @flow_block_cb_incref(ptr nocapture noundef %0) #7 {
  %2 = getelementptr inbounds %struct.flow_block_cb, ptr %0, i32 0, i32 7
  %3 = load i32, ptr %2, align 4
  %4 = add i32 %3, 1
  store i32 %4, ptr %2, align 4
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define dso_local i32 @flow_block_cb_decref(ptr nocapture noundef %0) #7 {
  %2 = getelementptr inbounds %struct.flow_block_cb, ptr %0, i32 0, i32 7
  %3 = load i32, ptr %2, align 4
  %4 = add i32 %3, -1
  store i32 %4, ptr %2, align 4
  ret i32 %4
}

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong uwtable(sync)
define dso_local zeroext i1 @flow_block_cb_is_busy(ptr noundef readnone %0, ptr noundef readnone %1, ptr noundef readonly %2) #5 {
  %4 = load ptr, ptr %2, align 4
  %5 = icmp eq ptr %4, %2
  br i1 %5, label %18, label %6

6:                                                ; preds = %15, %3
  %7 = phi ptr [ %16, %15 ], [ %4, %3 ]
  %8 = getelementptr inbounds %struct.flow_block_cb, ptr %7, i32 0, i32 2
  %9 = load ptr, ptr %8, align 4
  %10 = icmp eq ptr %9, %0
  br i1 %10, label %11, label %15

11:                                               ; preds = %6
  %12 = getelementptr inbounds %struct.flow_block_cb, ptr %7, i32 0, i32 3
  %13 = load ptr, ptr %12, align 4
  %14 = icmp eq ptr %13, %1
  br i1 %14, label %18, label %15

15:                                               ; preds = %11, %6
  %16 = load ptr, ptr %7, align 4
  %17 = icmp eq ptr %16, %2
  br i1 %17, label %18, label %6

18:                                               ; preds = %15, %11, %3
  %19 = phi i1 [ false, %3 ], [ false, %15 ], [ true, %11 ]
  ret i1 %19
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @flow_block_cb_setup_simple(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, i1 noundef zeroext %5) #0 {
  br i1 %5, label %7, label %11

7:                                                ; preds = %6
  %8 = getelementptr inbounds %struct.flow_block_offload, ptr %0, i32 0, i32 1
  %9 = load i32, ptr %8, align 4
  %10 = icmp eq i32 %9, 1
  br i1 %10, label %11, label %83

11:                                               ; preds = %7, %6
  %12 = getelementptr inbounds %struct.flow_block_offload, ptr %0, i32 0, i32 7
  store ptr %1, ptr %12, align 4
  %13 = load i32, ptr %0, align 4
  switch i32 %13, label %83 [
    i32 0, label %14
    i32 1, label %51
  ]

14:                                               ; preds = %11
  %15 = load ptr, ptr %1, align 4
  %16 = icmp eq ptr %15, %1
  br i1 %16, label %29, label %17

17:                                               ; preds = %26, %14
  %18 = phi ptr [ %27, %26 ], [ %15, %14 ]
  %19 = getelementptr inbounds %struct.flow_block_cb, ptr %18, i32 0, i32 2
  %20 = load ptr, ptr %19, align 4
  %21 = icmp eq ptr %20, %2
  br i1 %21, label %22, label %26

22:                                               ; preds = %17
  %23 = getelementptr inbounds %struct.flow_block_cb, ptr %18, i32 0, i32 3
  %24 = load ptr, ptr %23, align 4
  %25 = icmp eq ptr %24, %3
  br i1 %25, label %83, label %26

26:                                               ; preds = %22, %17
  %27 = load ptr, ptr %18, align 4
  %28 = icmp eq ptr %27, %1
  br i1 %28, label %29, label %17

29:                                               ; preds = %26, %14
  %30 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %31 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %30, i32 noundef 3520, i32 noundef 68) #14
  %32 = icmp eq ptr %31, null
  br i1 %32, label %39, label %33

33:                                               ; preds = %29
  %34 = getelementptr inbounds %struct.flow_block_cb, ptr %31, i32 0, i32 2
  store ptr %2, ptr %34, align 8
  %35 = getelementptr inbounds %struct.flow_block_cb, ptr %31, i32 0, i32 3
  store ptr %3, ptr %35, align 4
  %36 = getelementptr inbounds %struct.flow_block_cb, ptr %31, i32 0, i32 4
  store ptr %4, ptr %36, align 8
  %37 = getelementptr inbounds %struct.flow_block_cb, ptr %31, i32 0, i32 5
  store ptr null, ptr %37, align 4
  %38 = icmp ugt ptr %31, inttoptr (i32 -4096 to ptr)
  br i1 %38, label %39, label %42

39:                                               ; preds = %33, %29
  %40 = phi ptr [ %31, %33 ], [ inttoptr (i32 -12 to ptr), %29 ]
  %41 = ptrtoint ptr %40 to i32
  br label %83

42:                                               ; preds = %33
  %43 = getelementptr inbounds %struct.flow_block_cb, ptr %31, i32 0, i32 1
  %44 = getelementptr inbounds %struct.flow_block_offload, ptr %0, i32 0, i32 6
  %45 = getelementptr inbounds %struct.flow_block_offload, ptr %0, i32 0, i32 6, i32 1
  %46 = load ptr, ptr %45, align 4
  store ptr %43, ptr %45, align 4
  store ptr %44, ptr %43, align 8
  %47 = getelementptr inbounds %struct.flow_block_cb, ptr %31, i32 0, i32 1, i32 1
  store ptr %46, ptr %47, align 4
  store volatile ptr %43, ptr %46, align 4
  %48 = getelementptr inbounds %struct.list_head, ptr %1, i32 0, i32 1
  %49 = load ptr, ptr %48, align 4
  store ptr %31, ptr %48, align 4
  store ptr %1, ptr %31, align 8
  %50 = getelementptr inbounds %struct.list_head, ptr %31, i32 0, i32 1
  store ptr %49, ptr %50, align 4
  store volatile ptr %31, ptr %49, align 4
  br label %83

51:                                               ; preds = %11
  %52 = getelementptr inbounds %struct.flow_block_offload, ptr %0, i32 0, i32 5
  %53 = load ptr, ptr %52, align 4
  %54 = load ptr, ptr %53, align 4
  %55 = icmp eq ptr %54, %53
  br i1 %55, label %83, label %56

56:                                               ; preds = %65, %51
  %57 = phi ptr [ %66, %65 ], [ %54, %51 ]
  %58 = getelementptr i8, ptr %57, i32 8
  %59 = load ptr, ptr %58, align 4
  %60 = icmp eq ptr %59, %2
  br i1 %60, label %61, label %65

61:                                               ; preds = %56
  %62 = getelementptr i8, ptr %57, i32 12
  %63 = load ptr, ptr %62, align 4
  %64 = icmp eq ptr %63, %3
  br i1 %64, label %68, label %65

65:                                               ; preds = %61, %56
  %66 = load ptr, ptr %57, align 4
  %67 = icmp eq ptr %66, %53
  br i1 %67, label %83, label %56

68:                                               ; preds = %61
  %69 = getelementptr i8, ptr %57, i32 -8
  %70 = icmp eq ptr %69, null
  br i1 %70, label %83, label %71

71:                                               ; preds = %68
  %72 = getelementptr inbounds %struct.flow_block_offload, ptr %0, i32 0, i32 6
  %73 = getelementptr i8, ptr %57, i32 4
  %74 = load ptr, ptr %73, align 4
  %75 = load ptr, ptr %57, align 4
  %76 = getelementptr inbounds %struct.list_head, ptr %75, i32 0, i32 1
  store ptr %74, ptr %76, align 4
  store volatile ptr %75, ptr %74, align 4
  %77 = load ptr, ptr %72, align 4
  %78 = getelementptr inbounds %struct.list_head, ptr %77, i32 0, i32 1
  store ptr %57, ptr %78, align 4
  store ptr %77, ptr %57, align 4
  store ptr %72, ptr %73, align 4
  store volatile ptr %57, ptr %72, align 4
  %79 = getelementptr i8, ptr %57, i32 -4
  %80 = load ptr, ptr %79, align 4
  %81 = load ptr, ptr %69, align 4
  %82 = getelementptr inbounds %struct.list_head, ptr %81, i32 0, i32 1
  store ptr %80, ptr %82, align 4
  store volatile ptr %81, ptr %80, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %69, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %79, align 4
  br label %83

83:                                               ; preds = %71, %68, %65, %51, %42, %39, %22, %11, %7
  %84 = phi i32 [ 0, %71 ], [ %41, %39 ], [ 0, %42 ], [ -95, %7 ], [ -2, %68 ], [ -95, %11 ], [ -2, %51 ], [ -16, %22 ], [ -2, %65 ]
  ret i32 %84
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @flow_indr_dev_register(ptr noundef %0, ptr noundef %1) #0 {
  %3 = alloca %struct.flow_block_offload, align 4
  tail call void @mutex_lock(ptr noundef nonnull @flow_indr_block_lock) #12
  %4 = load ptr, ptr @flow_block_indr_dev_list, align 4
  %5 = icmp eq ptr %4, @flow_block_indr_dev_list
  br i1 %5, label %30, label %6

6:                                                ; preds = %27, %2
  %7 = phi ptr [ %28, %27 ], [ %4, %2 ]
  %8 = getelementptr inbounds %struct.flow_indr_dev, ptr %7, i32 0, i32 1
  %9 = load ptr, ptr %8, align 4
  %10 = icmp eq ptr %9, %0
  br i1 %10, label %11, label %27

11:                                               ; preds = %6
  %12 = getelementptr inbounds %struct.flow_indr_dev, ptr %7, i32 0, i32 2
  %13 = load ptr, ptr %12, align 4
  %14 = icmp eq ptr %13, %1
  br i1 %14, label %15, label %27

15:                                               ; preds = %11
  %16 = getelementptr inbounds %struct.flow_indr_dev, ptr %7, i32 0, i32 3
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %16) #12, !srcloc !8
  %17 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %16, ptr %16, i32 1, ptr elementtype(i32) %16) #12, !srcloc !9
  %18 = extractvalue { i32, i32, i32 } %17, 0
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %24, label %20, !prof !10

20:                                               ; preds = %15
  %21 = add i32 %18, 1
  %22 = or i32 %21, %18
  %23 = icmp sgt i32 %22, -1
  br i1 %23, label %26, label %24, !prof !11

24:                                               ; preds = %20, %15
  %25 = phi i32 [ 2, %15 ], [ 1, %20 ]
  tail call void @refcount_warn_saturate(ptr noundef %16, i32 noundef %25) #12
  br label %26

26:                                               ; preds = %24, %20
  tail call void @mutex_unlock(ptr noundef nonnull @flow_indr_block_lock) #12
  br label %78

27:                                               ; preds = %11, %6
  %28 = load ptr, ptr %7, align 4
  %29 = icmp eq ptr %28, @flow_block_indr_dev_list
  br i1 %29, label %30, label %6

30:                                               ; preds = %27, %2
  %31 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %32 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %31, i32 noundef 3264, i32 noundef 20) #14
  %33 = icmp eq ptr %32, null
  br i1 %33, label %34, label %35

34:                                               ; preds = %30
  tail call void @mutex_unlock(ptr noundef nonnull @flow_indr_block_lock) #12
  br label %78

35:                                               ; preds = %30
  %36 = getelementptr inbounds %struct.flow_indr_dev, ptr %32, i32 0, i32 1
  store ptr %0, ptr %36, align 8
  %37 = getelementptr inbounds %struct.flow_indr_dev, ptr %32, i32 0, i32 2
  store ptr %1, ptr %37, align 4
  %38 = getelementptr inbounds %struct.flow_indr_dev, ptr %32, i32 0, i32 3
  store volatile i32 1, ptr %38, align 8
  %39 = load ptr, ptr @flow_block_indr_dev_list, align 4
  %40 = getelementptr inbounds %struct.list_head, ptr %39, i32 0, i32 1
  store ptr %32, ptr %40, align 4
  store ptr %39, ptr %32, align 8
  %41 = getelementptr inbounds %struct.list_head, ptr %32, i32 0, i32 1
  store ptr @flow_block_indr_dev_list, ptr %41, align 4
  store volatile ptr %32, ptr @flow_block_indr_dev_list, align 4
  call void @llvm.lifetime.start.p0(i64 44, ptr nonnull %3) #12
  %42 = load ptr, ptr @flow_indir_dev_list, align 4
  %43 = icmp eq ptr %42, @flow_indir_dev_list
  br i1 %43, label %77, label %44

44:                                               ; preds = %35
  %45 = getelementptr inbounds %struct.flow_block_offload, ptr %3, i32 0, i32 1
  %46 = getelementptr inbounds %struct.flow_block_offload, ptr %3, i32 0, i32 6
  %47 = getelementptr inbounds %struct.flow_block_offload, ptr %3, i32 0, i32 6, i32 1
  br label %48

48:                                               ; preds = %74, %44
  %49 = phi ptr [ %42, %44 ], [ %75, %74 ]
  %50 = getelementptr i8, ptr %49, i32 -20
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(44) %3, i8 0, i32 44, i1 false) #12
  %51 = getelementptr i8, ptr %49, i32 8
  %52 = load i32, ptr %51, align 4
  store i32 %52, ptr %3, align 4
  %53 = getelementptr i8, ptr %49, i32 12
  %54 = load i32, ptr %53, align 4
  store i32 %54, ptr %45, align 4
  store volatile ptr %46, ptr %46, align 4
  store ptr %46, ptr %47, align 4
  %55 = getelementptr i8, ptr %49, i32 -16
  %56 = load ptr, ptr %55, align 4
  %57 = getelementptr i8, ptr %49, i32 -12
  %58 = load ptr, ptr %57, align 4
  %59 = getelementptr i8, ptr %49, i32 -8
  %60 = load i32, ptr %59, align 4
  %61 = load ptr, ptr %50, align 4
  %62 = getelementptr i8, ptr %49, i32 -4
  %63 = load ptr, ptr %62, align 4
  %64 = call i32 %0(ptr noundef %56, ptr noundef %58, ptr noundef %1, i32 noundef %60, ptr noundef nonnull %3, ptr noundef %61, ptr noundef %63) #12
  %65 = getelementptr i8, ptr %49, i32 16
  %66 = load ptr, ptr %65, align 4
  %67 = load volatile ptr, ptr %46, align 4
  %68 = icmp eq ptr %67, %46
  br i1 %68, label %74, label %69

69:                                               ; preds = %48
  %70 = load ptr, ptr %66, align 4
  %71 = load ptr, ptr %47, align 4
  %72 = getelementptr inbounds %struct.list_head, ptr %67, i32 0, i32 1
  store ptr %66, ptr %72, align 4
  store ptr %67, ptr %66, align 4
  store ptr %70, ptr %71, align 4
  %73 = getelementptr inbounds %struct.list_head, ptr %70, i32 0, i32 1
  store ptr %71, ptr %73, align 4
  br label %74

74:                                               ; preds = %69, %48
  %75 = load ptr, ptr %49, align 4
  %76 = icmp eq ptr %75, @flow_indir_dev_list
  br i1 %76, label %77, label %48

77:                                               ; preds = %74, %35
  call void @llvm.lifetime.end.p0(i64 44, ptr nonnull %3) #12
  call void @mutex_unlock(ptr noundef nonnull @flow_indr_block_lock) #12
  br label %78

78:                                               ; preds = %77, %34, %26
  %79 = phi i32 [ 0, %26 ], [ 0, %77 ], [ -12, %34 ]
  ret i32 %79
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @flow_indr_dev_unregister(ptr noundef readnone %0, ptr noundef readnone %1, ptr noundef readnone %2) #0 {
  %4 = alloca %struct.list_head, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #12
  store ptr %4, ptr %4, align 8
  %5 = getelementptr inbounds %struct.list_head, ptr %4, i32 0, i32 1
  store ptr %4, ptr %5, align 4
  call void @mutex_lock(ptr noundef nonnull @flow_indr_block_lock) #12
  %6 = load ptr, ptr @flow_block_indr_dev_list, align 4
  %7 = icmp eq ptr %6, @flow_block_indr_dev_list
  br i1 %7, label %34, label %8

8:                                                ; preds = %26, %3
  %9 = phi ptr [ %10, %26 ], [ %6, %3 ]
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr inbounds %struct.flow_indr_dev, ptr %9, i32 0, i32 1
  %12 = load ptr, ptr %11, align 4
  %13 = icmp eq ptr %12, %0
  br i1 %13, label %14, label %26

14:                                               ; preds = %8
  %15 = getelementptr inbounds %struct.flow_indr_dev, ptr %9, i32 0, i32 2
  %16 = load ptr, ptr %15, align 4
  %17 = icmp eq ptr %16, %1
  br i1 %17, label %18, label %26

18:                                               ; preds = %14
  %19 = getelementptr inbounds %struct.flow_indr_dev, ptr %9, i32 0, i32 3
  call void asm sideeffect "dmb ish", "~{memory}"() #12, !srcloc !12
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %19) #12, !srcloc !8
  %20 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %19, ptr %19, i32 1, ptr elementtype(i32) %19) #12, !srcloc !13
  %21 = extractvalue { i32, i32, i32 } %20, 0
  %22 = icmp eq i32 %21, 1
  br i1 %22, label %28, label %23

23:                                               ; preds = %18
  %24 = icmp sgt i32 %21, 0
  br i1 %24, label %26, label %25, !prof !11

25:                                               ; preds = %23
  call void @refcount_warn_saturate(ptr noundef %19, i32 noundef 3) #12
  br label %26

26:                                               ; preds = %25, %23, %14, %8
  %27 = icmp eq ptr %10, @flow_block_indr_dev_list
  br i1 %27, label %34, label %8

28:                                               ; preds = %18
  call void asm sideeffect "dmb ish", "~{memory}"() #12, !srcloc !14
  %29 = getelementptr inbounds %struct.list_head, ptr %9, i32 0, i32 1
  %30 = load ptr, ptr %29, align 4
  %31 = load ptr, ptr %9, align 4
  %32 = getelementptr inbounds %struct.list_head, ptr %31, i32 0, i32 1
  store ptr %30, ptr %32, align 4
  store volatile ptr %31, ptr %30, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %9, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %29, align 4
  %33 = icmp eq ptr %9, null
  br i1 %33, label %34, label %35

34:                                               ; preds = %28, %26, %3
  call void @mutex_unlock(ptr noundef nonnull @flow_indr_block_lock) #12
  br label %70

35:                                               ; preds = %28
  %36 = load ptr, ptr @flow_block_indr_list, align 4
  %37 = icmp eq ptr %36, @flow_block_indr_list
  br i1 %37, label %56, label %38

38:                                               ; preds = %54, %35
  %39 = phi ptr [ %40, %54 ], [ %36, %35 ]
  %40 = load ptr, ptr %39, align 4
  %41 = getelementptr i8, ptr %39, i32 -4
  %42 = load ptr, ptr %41, align 4
  %43 = icmp eq ptr %42, %2
  br i1 %43, label %44, label %54

44:                                               ; preds = %38
  %45 = getelementptr i8, ptr %39, i32 24
  %46 = load ptr, ptr %45, align 4
  %47 = icmp eq ptr %46, %1
  br i1 %47, label %48, label %54

48:                                               ; preds = %44
  %49 = getelementptr inbounds %struct.list_head, ptr %39, i32 0, i32 1
  %50 = load ptr, ptr %49, align 4
  %51 = getelementptr inbounds %struct.list_head, ptr %40, i32 0, i32 1
  store ptr %50, ptr %51, align 4
  store volatile ptr %40, ptr %50, align 4
  %52 = load ptr, ptr %4, align 8
  %53 = getelementptr inbounds %struct.list_head, ptr %52, i32 0, i32 1
  store ptr %39, ptr %53, align 4
  store ptr %52, ptr %39, align 4
  store ptr %4, ptr %49, align 4
  store volatile ptr %39, ptr %4, align 8
  br label %54

54:                                               ; preds = %48, %44, %38
  %55 = icmp eq ptr %40, @flow_block_indr_list
  br i1 %55, label %56, label %38

56:                                               ; preds = %54, %35
  call void @mutex_unlock(ptr noundef nonnull @flow_indr_block_lock) #12
  %57 = load ptr, ptr %4, align 8
  %58 = icmp eq ptr %57, %4
  br i1 %58, label %69, label %59

59:                                               ; preds = %59, %56
  %60 = phi ptr [ %62, %59 ], [ %57, %56 ]
  %61 = getelementptr i8, ptr %60, i32 -32
  %62 = load ptr, ptr %60, align 4
  %63 = getelementptr inbounds %struct.list_head, ptr %60, i32 0, i32 1
  %64 = load ptr, ptr %63, align 4
  %65 = getelementptr inbounds %struct.list_head, ptr %62, i32 0, i32 1
  store ptr %64, ptr %65, align 4
  store volatile ptr %62, ptr %64, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %60, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %63, align 4
  %66 = getelementptr i8, ptr %60, i32 28
  %67 = load ptr, ptr %66, align 4
  call void %67(ptr noundef %61) #12
  %68 = icmp eq ptr %62, %4
  br i1 %68, label %69, label %59

69:                                               ; preds = %59, %56
  call void @kfree(ptr noundef nonnull %9) #12
  br label %70

70:                                               ; preds = %69, %34
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #12
  ret void
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #8

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @flow_indr_block_cb_alloc(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr nocapture noundef readonly %4, ptr noundef %5, ptr noundef %6, ptr noundef %7, ptr noundef %8, ptr noundef %9) #0 {
  %11 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %12 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %11, i32 noundef 3520, i32 noundef 68) #14
  %13 = icmp eq ptr %12, null
  br i1 %13, label %33, label %14

14:                                               ; preds = %10
  %15 = getelementptr inbounds %struct.flow_block_cb, ptr %12, i32 0, i32 2
  store ptr %0, ptr %15, align 8
  %16 = getelementptr inbounds %struct.flow_block_cb, ptr %12, i32 0, i32 3
  store ptr %1, ptr %16, align 4
  %17 = getelementptr inbounds %struct.flow_block_cb, ptr %12, i32 0, i32 4
  store ptr %2, ptr %17, align 8
  %18 = getelementptr inbounds %struct.flow_block_cb, ptr %12, i32 0, i32 5
  store ptr %3, ptr %18, align 4
  %19 = icmp ugt ptr %12, inttoptr (i32 -4096 to ptr)
  br i1 %19, label %33, label %20

20:                                               ; preds = %14
  %21 = getelementptr inbounds %struct.flow_block_offload, ptr %4, i32 0, i32 1
  %22 = load i32, ptr %21, align 4
  %23 = getelementptr inbounds %struct.flow_block_cb, ptr %12, i32 0, i32 6, i32 3
  store i32 %22, ptr %23, align 8
  %24 = getelementptr inbounds %struct.flow_block_cb, ptr %12, i32 0, i32 6, i32 4
  store ptr %7, ptr %24, align 4
  %25 = getelementptr inbounds %struct.flow_block_cb, ptr %12, i32 0, i32 6, i32 5
  store ptr %8, ptr %25, align 8
  %26 = getelementptr inbounds %struct.flow_block_cb, ptr %12, i32 0, i32 6, i32 1
  store ptr %5, ptr %26, align 8
  %27 = getelementptr inbounds %struct.flow_block_cb, ptr %12, i32 0, i32 6, i32 2
  store ptr %6, ptr %27, align 4
  %28 = getelementptr inbounds %struct.flow_block_cb, ptr %12, i32 0, i32 6, i32 6
  store ptr %9, ptr %28, align 4
  %29 = getelementptr inbounds %struct.flow_block_cb, ptr %12, i32 0, i32 6
  %30 = load ptr, ptr @flow_block_indr_list, align 4
  %31 = getelementptr inbounds %struct.list_head, ptr %30, i32 0, i32 1
  store ptr %29, ptr %31, align 4
  store ptr %30, ptr %29, align 8
  %32 = getelementptr inbounds %struct.flow_block_cb, ptr %12, i32 0, i32 6, i32 0, i32 1
  store ptr @flow_block_indr_list, ptr %32, align 4
  store volatile ptr %29, ptr @flow_block_indr_list, align 4
  br label %33

33:                                               ; preds = %20, %14, %10
  %34 = phi ptr [ %12, %14 ], [ %12, %20 ], [ inttoptr (i32 -12 to ptr), %10 ]
  ret ptr %34
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @flow_indr_dev_setup_offload(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5) #0 {
  tail call void @mutex_lock(ptr noundef nonnull @flow_indr_block_lock) #12
  %7 = icmp eq ptr %4, null
  br i1 %7, label %58, label %8

8:                                                ; preds = %6
  %9 = load i32, ptr %4, align 4
  switch i32 %9, label %58 [
    i32 0, label %10
    i32 1, label %42
  ]

10:                                               ; preds = %14, %8
  %11 = phi ptr [ %12, %14 ], [ @flow_indir_dev_list, %8 ]
  %12 = load ptr, ptr %11, align 4
  %13 = icmp eq ptr %12, @flow_indir_dev_list
  br i1 %13, label %21, label %14

14:                                               ; preds = %10
  %15 = getelementptr i8, ptr %12, i32 -20
  %16 = load ptr, ptr %15, align 4
  %17 = icmp eq ptr %16, %3
  br i1 %17, label %18, label %10

18:                                               ; preds = %14
  %19 = getelementptr i8, ptr %12, i32 -20
  %20 = icmp eq ptr %19, null
  br i1 %20, label %21, label %58

21:                                               ; preds = %18, %10
  %22 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %23 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %22, i32 noundef 3520, i32 noundef 40) #14
  %24 = icmp eq ptr %23, null
  br i1 %24, label %58, label %25

25:                                               ; preds = %21
  store ptr %3, ptr %23, align 8
  %26 = getelementptr inbounds %struct.flow_indir_dev_info, ptr %23, i32 0, i32 1
  store ptr %0, ptr %26, align 4
  %27 = getelementptr inbounds %struct.flow_indir_dev_info, ptr %23, i32 0, i32 2
  store ptr %1, ptr %27, align 8
  %28 = getelementptr inbounds %struct.flow_indir_dev_info, ptr %23, i32 0, i32 3
  store i32 %2, ptr %28, align 4
  %29 = getelementptr inbounds %struct.flow_indir_dev_info, ptr %23, i32 0, i32 4
  store ptr %5, ptr %29, align 8
  %30 = load i32, ptr %4, align 4
  %31 = getelementptr inbounds %struct.flow_indir_dev_info, ptr %23, i32 0, i32 6
  store i32 %30, ptr %31, align 4
  %32 = getelementptr inbounds %struct.flow_block_offload, ptr %4, i32 0, i32 1
  %33 = load i32, ptr %32, align 4
  %34 = getelementptr inbounds %struct.flow_indir_dev_info, ptr %23, i32 0, i32 7
  store i32 %33, ptr %34, align 8
  %35 = getelementptr inbounds %struct.flow_block_offload, ptr %4, i32 0, i32 10
  %36 = load ptr, ptr %35, align 4
  %37 = getelementptr inbounds %struct.flow_indir_dev_info, ptr %23, i32 0, i32 8
  store ptr %36, ptr %37, align 4
  %38 = getelementptr inbounds %struct.flow_indir_dev_info, ptr %23, i32 0, i32 5
  %39 = load ptr, ptr @flow_indir_dev_list, align 4
  %40 = getelementptr inbounds %struct.list_head, ptr %39, i32 0, i32 1
  store ptr %38, ptr %40, align 4
  store ptr %39, ptr %38, align 4
  %41 = getelementptr inbounds %struct.flow_indir_dev_info, ptr %23, i32 0, i32 5, i32 1
  store ptr @flow_indir_dev_list, ptr %41, align 8
  store volatile ptr %38, ptr @flow_indir_dev_list, align 4
  br label %58

42:                                               ; preds = %46, %8
  %43 = phi ptr [ %44, %46 ], [ @flow_indir_dev_list, %8 ]
  %44 = load ptr, ptr %43, align 4
  %45 = icmp eq ptr %44, @flow_indir_dev_list
  br i1 %45, label %58, label %46

46:                                               ; preds = %42
  %47 = getelementptr i8, ptr %44, i32 -20
  %48 = load ptr, ptr %47, align 4
  %49 = icmp eq ptr %48, %3
  br i1 %49, label %50, label %42

50:                                               ; preds = %46
  %51 = getelementptr i8, ptr %44, i32 -20
  %52 = icmp eq ptr %51, null
  br i1 %52, label %58, label %53

53:                                               ; preds = %50
  %54 = getelementptr inbounds %struct.list_head, ptr %44, i32 0, i32 1
  %55 = load ptr, ptr %54, align 4
  %56 = load ptr, ptr %44, align 4
  %57 = getelementptr inbounds %struct.list_head, ptr %56, i32 0, i32 1
  store ptr %55, ptr %57, align 4
  store volatile ptr %56, ptr %55, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %44, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %54, align 4
  tail call void @kfree(ptr noundef nonnull %51) #12
  br label %58

58:                                               ; preds = %53, %50, %42, %25, %21, %18, %8, %6
  %59 = load ptr, ptr @flow_block_indr_dev_list, align 4
  %60 = icmp eq ptr %59, @flow_block_indr_dev_list
  br i1 %60, label %74, label %61

61:                                               ; preds = %61, %58
  %62 = phi ptr [ %72, %61 ], [ %59, %58 ]
  %63 = phi i32 [ %71, %61 ], [ 0, %58 ]
  %64 = getelementptr inbounds %struct.flow_indr_dev, ptr %62, i32 0, i32 1
  %65 = load ptr, ptr %64, align 4
  %66 = getelementptr inbounds %struct.flow_indr_dev, ptr %62, i32 0, i32 2
  %67 = load ptr, ptr %66, align 4
  %68 = tail call i32 %65(ptr noundef %0, ptr noundef %1, ptr noundef %67, i32 noundef %2, ptr noundef %4, ptr noundef %3, ptr noundef %5) #12
  %69 = icmp eq i32 %68, 0
  %70 = zext i1 %69 to i32
  %71 = add i32 %63, %70
  %72 = load ptr, ptr %62, align 4
  %73 = icmp eq ptr %72, @flow_block_indr_dev_list
  br i1 %73, label %74, label %61

74:                                               ; preds = %61, %58
  %75 = phi i32 [ 0, %58 ], [ %71, %61 ]
  tail call void @mutex_unlock(ptr noundef nonnull @flow_indr_block_lock) #12
  br i1 %7, label %80, label %76

76:                                               ; preds = %74
  %77 = getelementptr inbounds %struct.flow_block_offload, ptr %4, i32 0, i32 6
  %78 = load volatile ptr, ptr %77, align 4
  %79 = icmp eq ptr %78, %77
  br i1 %79, label %81, label %80

80:                                               ; preds = %76, %74
  br label %81

81:                                               ; preds = %80, %76
  %82 = phi i32 [ %75, %80 ], [ -95, %76 ]
  ret i32 %82
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #9

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #10

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #11

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.uadd.sat.i32(i32, i32) #9

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nofree nounwind willreturn }
attributes #4 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { argmemonly nofree nounwind willreturn writeonly }
attributes #9 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #10 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #11 = { null_pointer_is_valid allocsize(0) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #12 = { nounwind }
attributes #13 = { nounwind allocsize(0) }
attributes #14 = { nounwind allocsize(2) }

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
!8 = !{i64 424006, i64 2147913977, i64 2147914003, i64 2147914050, i64 2147914072, i64 2147914100, i64 2147914120}
!9 = !{i64 2147927647, i64 2147927679, i64 2147927708, i64 2147927742, i64 2147927773, i64 2147927796}
!10 = !{!"branch_weights", i32 1, i32 2000}
!11 = !{!"branch_weights", i32 2000, i32 1}
!12 = !{i64 2148027845}
!13 = !{i64 2147930004, i64 2147930036, i64 2147930065, i64 2147930099, i64 2147930130, i64 2147930153}
!14 = !{i64 2149287309}
