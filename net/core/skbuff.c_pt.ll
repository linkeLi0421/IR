; ModuleID = '/llk/IR/net/core/skbuff.c_pt.bc'
source_filename = "../net/core/skbuff.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_sysctl_max_skb_frags:\09\09\09\09\09"
module asm "\09.asciz \09\22sysctl_max_skb_frags\22\09\09\09\09\09"
module asm "__kstrtabns_sysctl_max_skb_frags:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___napi_alloc_frag_align:\09\09\09\09\09"
module asm "\09.asciz \09\22__napi_alloc_frag_align\22\09\09\09\09\09"
module asm "__kstrtabns___napi_alloc_frag_align:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___netdev_alloc_frag_align:\09\09\09\09\09"
module asm "\09.asciz \09\22__netdev_alloc_frag_align\22\09\09\09\09\09"
module asm "__kstrtabns___netdev_alloc_frag_align:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_build_skb:\09\09\09\09\09"
module asm "\09.asciz \09\22build_skb\22\09\09\09\09\09"
module asm "__kstrtabns_build_skb:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_build_skb_around:\09\09\09\09\09"
module asm "\09.asciz \09\22build_skb_around\22\09\09\09\09\09"
module asm "__kstrtabns_build_skb_around:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_napi_build_skb:\09\09\09\09\09"
module asm "\09.asciz \09\22napi_build_skb\22\09\09\09\09\09"
module asm "__kstrtabns_napi_build_skb:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___alloc_skb:\09\09\09\09\09"
module asm "\09.asciz \09\22__alloc_skb\22\09\09\09\09\09"
module asm "__kstrtabns___alloc_skb:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___netdev_alloc_skb:\09\09\09\09\09"
module asm "\09.asciz \09\22__netdev_alloc_skb\22\09\09\09\09\09"
module asm "__kstrtabns___netdev_alloc_skb:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___napi_alloc_skb:\09\09\09\09\09"
module asm "\09.asciz \09\22__napi_alloc_skb\22\09\09\09\09\09"
module asm "__kstrtabns___napi_alloc_skb:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_skb_add_rx_frag:\09\09\09\09\09"
module asm "\09.asciz \09\22skb_add_rx_frag\22\09\09\09\09\09"
module asm "__kstrtabns_skb_add_rx_frag:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_skb_coalesce_rx_frag:\09\09\09\09\09"
module asm "\09.asciz \09\22skb_coalesce_rx_frag\22\09\09\09\09\09"
module asm "__kstrtabns_skb_coalesce_rx_frag:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___kfree_skb:\09\09\09\09\09"
module asm "\09.asciz \09\22__kfree_skb\22\09\09\09\09\09"
module asm "__kstrtabns___kfree_skb:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_kfree_skb_reason:\09\09\09\09\09"
module asm "\09.asciz \09\22kfree_skb_reason\22\09\09\09\09\09"
module asm "__kstrtabns_kfree_skb_reason:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_kfree_skb_list:\09\09\09\09\09"
module asm "\09.asciz \09\22kfree_skb_list\22\09\09\09\09\09"
module asm "__kstrtabns_kfree_skb_list:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_skb_dump:\09\09\09\09\09"
module asm "\09.asciz \09\22skb_dump\22\09\09\09\09\09"
module asm "__kstrtabns_skb_dump:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_skb_tx_error:\09\09\09\09\09"
module asm "\09.asciz \09\22skb_tx_error\22\09\09\09\09\09"
module asm "__kstrtabns_skb_tx_error:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_consume_skb:\09\09\09\09\09"
module asm "\09.asciz \09\22consume_skb\22\09\09\09\09\09"
module asm "__kstrtabns_consume_skb:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_napi_consume_skb:\09\09\09\09\09"
module asm "\09.asciz \09\22napi_consume_skb\22\09\09\09\09\09"
module asm "__kstrtabns_napi_consume_skb:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_alloc_skb_for_msg:\09\09\09\09\09"
module asm "\09.asciz \09\22alloc_skb_for_msg\22\09\09\09\09\09"
module asm "__kstrtabns_alloc_skb_for_msg:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_skb_morph:\09\09\09\09\09"
module asm "\09.asciz \09\22skb_morph\22\09\09\09\09\09"
module asm "__kstrtabns_skb_morph:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_mm_account_pinned_pages:\09\09\09\09\09"
module asm "\09.asciz \09\22mm_account_pinned_pages\22\09\09\09\09\09"
module asm "__kstrtabns_mm_account_pinned_pages:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_mm_unaccount_pinned_pages:\09\09\09\09\09"
module asm "\09.asciz \09\22mm_unaccount_pinned_pages\22\09\09\09\09\09"
module asm "__kstrtabns_mm_unaccount_pinned_pages:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_msg_zerocopy_alloc:\09\09\09\09\09"
module asm "\09.asciz \09\22msg_zerocopy_alloc\22\09\09\09\09\09"
module asm "__kstrtabns_msg_zerocopy_alloc:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_msg_zerocopy_realloc:\09\09\09\09\09"
module asm "\09.asciz \09\22msg_zerocopy_realloc\22\09\09\09\09\09"
module asm "__kstrtabns_msg_zerocopy_realloc:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_msg_zerocopy_callback:\09\09\09\09\09"
module asm "\09.asciz \09\22msg_zerocopy_callback\22\09\09\09\09\09"
module asm "__kstrtabns_msg_zerocopy_callback:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_msg_zerocopy_put_abort:\09\09\09\09\09"
module asm "\09.asciz \09\22msg_zerocopy_put_abort\22\09\09\09\09\09"
module asm "__kstrtabns_msg_zerocopy_put_abort:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_skb_zerocopy_iter_dgram:\09\09\09\09\09"
module asm "\09.asciz \09\22skb_zerocopy_iter_dgram\22\09\09\09\09\09"
module asm "__kstrtabns_skb_zerocopy_iter_dgram:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_skb_zerocopy_iter_stream:\09\09\09\09\09"
module asm "\09.asciz \09\22skb_zerocopy_iter_stream\22\09\09\09\09\09"
module asm "__kstrtabns_skb_zerocopy_iter_stream:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_skb_copy_ubufs:\09\09\09\09\09"
module asm "\09.asciz \09\22skb_copy_ubufs\22\09\09\09\09\09"
module asm "__kstrtabns_skb_copy_ubufs:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_skb_clone:\09\09\09\09\09"
module asm "\09.asciz \09\22skb_clone\22\09\09\09\09\09"
module asm "__kstrtabns_skb_clone:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_skb_headers_offset_update:\09\09\09\09\09"
module asm "\09.asciz \09\22skb_headers_offset_update\22\09\09\09\09\09"
module asm "__kstrtabns_skb_headers_offset_update:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_skb_copy_header:\09\09\09\09\09"
module asm "\09.asciz \09\22skb_copy_header\22\09\09\09\09\09"
module asm "__kstrtabns_skb_copy_header:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_skb_copy:\09\09\09\09\09"
module asm "\09.asciz \09\22skb_copy\22\09\09\09\09\09"
module asm "__kstrtabns_skb_copy:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___pskb_copy_fclone:\09\09\09\09\09"
module asm "\09.asciz \09\22__pskb_copy_fclone\22\09\09\09\09\09"
module asm "__kstrtabns___pskb_copy_fclone:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_pskb_expand_head:\09\09\09\09\09"
module asm "\09.asciz \09\22pskb_expand_head\22\09\09\09\09\09"
module asm "__kstrtabns_pskb_expand_head:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_skb_realloc_headroom:\09\09\09\09\09"
module asm "\09.asciz \09\22skb_realloc_headroom\22\09\09\09\09\09"
module asm "__kstrtabns_skb_realloc_headroom:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_skb_expand_head:\09\09\09\09\09"
module asm "\09.asciz \09\22skb_expand_head\22\09\09\09\09\09"
module asm "__kstrtabns_skb_expand_head:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_skb_copy_expand:\09\09\09\09\09"
module asm "\09.asciz \09\22skb_copy_expand\22\09\09\09\09\09"
module asm "__kstrtabns_skb_copy_expand:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___skb_pad:\09\09\09\09\09"
module asm "\09.asciz \09\22__skb_pad\22\09\09\09\09\09"
module asm "__kstrtabns___skb_pad:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_pskb_put:\09\09\09\09\09"
module asm "\09.asciz \09\22pskb_put\22\09\09\09\09\09"
module asm "__kstrtabns_pskb_put:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_skb_put:\09\09\09\09\09"
module asm "\09.asciz \09\22skb_put\22\09\09\09\09\09"
module asm "__kstrtabns_skb_put:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_skb_push:\09\09\09\09\09"
module asm "\09.asciz \09\22skb_push\22\09\09\09\09\09"
module asm "__kstrtabns_skb_push:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_skb_pull:\09\09\09\09\09"
module asm "\09.asciz \09\22skb_pull\22\09\09\09\09\09"
module asm "__kstrtabns_skb_pull:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_skb_pull_data:\09\09\09\09\09"
module asm "\09.asciz \09\22skb_pull_data\22\09\09\09\09\09"
module asm "__kstrtabns_skb_pull_data:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_skb_trim:\09\09\09\09\09"
module asm "\09.asciz \09\22skb_trim\22\09\09\09\09\09"
module asm "__kstrtabns_skb_trim:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab____pskb_trim:\09\09\09\09\09"
module asm "\09.asciz \09\22___pskb_trim\22\09\09\09\09\09"
module asm "__kstrtabns____pskb_trim:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_pskb_trim_rcsum_slow:\09\09\09\09\09"
module asm "\09.asciz \09\22pskb_trim_rcsum_slow\22\09\09\09\09\09"
module asm "__kstrtabns_pskb_trim_rcsum_slow:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___pskb_pull_tail:\09\09\09\09\09"
module asm "\09.asciz \09\22__pskb_pull_tail\22\09\09\09\09\09"
module asm "__kstrtabns___pskb_pull_tail:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_skb_copy_bits:\09\09\09\09\09"
module asm "\09.asciz \09\22skb_copy_bits\22\09\09\09\09\09"
module asm "__kstrtabns_skb_copy_bits:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_skb_splice_bits:\09\09\09\09\09"
module asm "\09.asciz \09\22skb_splice_bits\22\09\09\09\09\09"
module asm "__kstrtabns_skb_splice_bits:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_skb_send_sock_locked:\09\09\09\09\09"
module asm "\09.asciz \09\22skb_send_sock_locked\22\09\09\09\09\09"
module asm "__kstrtabns_skb_send_sock_locked:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_skb_store_bits:\09\09\09\09\09"
module asm "\09.asciz \09\22skb_store_bits\22\09\09\09\09\09"
module asm "__kstrtabns_skb_store_bits:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___skb_checksum:\09\09\09\09\09"
module asm "\09.asciz \09\22__skb_checksum\22\09\09\09\09\09"
module asm "__kstrtabns___skb_checksum:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_skb_checksum:\09\09\09\09\09"
module asm "\09.asciz \09\22skb_checksum\22\09\09\09\09\09"
module asm "__kstrtabns_skb_checksum:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_skb_copy_and_csum_bits:\09\09\09\09\09"
module asm "\09.asciz \09\22skb_copy_and_csum_bits\22\09\09\09\09\09"
module asm "__kstrtabns_skb_copy_and_csum_bits:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___skb_checksum_complete_head:\09\09\09\09\09"
module asm "\09.asciz \09\22__skb_checksum_complete_head\22\09\09\09\09\09"
module asm "__kstrtabns___skb_checksum_complete_head:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___skb_checksum_complete:\09\09\09\09\09"
module asm "\09.asciz \09\22__skb_checksum_complete\22\09\09\09\09\09"
module asm "__kstrtabns___skb_checksum_complete:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_crc32c_csum_stub:\09\09\09\09\09"
module asm "\09.asciz \09\22crc32c_csum_stub\22\09\09\09\09\09"
module asm "__kstrtabns_crc32c_csum_stub:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_skb_zerocopy_headlen:\09\09\09\09\09"
module asm "\09.asciz \09\22skb_zerocopy_headlen\22\09\09\09\09\09"
module asm "__kstrtabns_skb_zerocopy_headlen:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_skb_zerocopy:\09\09\09\09\09"
module asm "\09.asciz \09\22skb_zerocopy\22\09\09\09\09\09"
module asm "__kstrtabns_skb_zerocopy:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_skb_copy_and_csum_dev:\09\09\09\09\09"
module asm "\09.asciz \09\22skb_copy_and_csum_dev\22\09\09\09\09\09"
module asm "__kstrtabns_skb_copy_and_csum_dev:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_skb_dequeue:\09\09\09\09\09"
module asm "\09.asciz \09\22skb_dequeue\22\09\09\09\09\09"
module asm "__kstrtabns_skb_dequeue:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_skb_dequeue_tail:\09\09\09\09\09"
module asm "\09.asciz \09\22skb_dequeue_tail\22\09\09\09\09\09"
module asm "__kstrtabns_skb_dequeue_tail:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_skb_queue_purge:\09\09\09\09\09"
module asm "\09.asciz \09\22skb_queue_purge\22\09\09\09\09\09"
module asm "__kstrtabns_skb_queue_purge:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_skb_queue_head:\09\09\09\09\09"
module asm "\09.asciz \09\22skb_queue_head\22\09\09\09\09\09"
module asm "__kstrtabns_skb_queue_head:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_skb_queue_tail:\09\09\09\09\09"
module asm "\09.asciz \09\22skb_queue_tail\22\09\09\09\09\09"
module asm "__kstrtabns_skb_queue_tail:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_skb_unlink:\09\09\09\09\09"
module asm "\09.asciz \09\22skb_unlink\22\09\09\09\09\09"
module asm "__kstrtabns_skb_unlink:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_skb_append:\09\09\09\09\09"
module asm "\09.asciz \09\22skb_append\22\09\09\09\09\09"
module asm "__kstrtabns_skb_append:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_skb_split:\09\09\09\09\09"
module asm "\09.asciz \09\22skb_split\22\09\09\09\09\09"
module asm "__kstrtabns_skb_split:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_skb_prepare_seq_read:\09\09\09\09\09"
module asm "\09.asciz \09\22skb_prepare_seq_read\22\09\09\09\09\09"
module asm "__kstrtabns_skb_prepare_seq_read:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_skb_seq_read:\09\09\09\09\09"
module asm "\09.asciz \09\22skb_seq_read\22\09\09\09\09\09"
module asm "__kstrtabns_skb_seq_read:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_skb_abort_seq_read:\09\09\09\09\09"
module asm "\09.asciz \09\22skb_abort_seq_read\22\09\09\09\09\09"
module asm "__kstrtabns_skb_abort_seq_read:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_skb_find_text:\09\09\09\09\09"
module asm "\09.asciz \09\22skb_find_text\22\09\09\09\09\09"
module asm "__kstrtabns_skb_find_text:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_skb_append_pagefrags:\09\09\09\09\09"
module asm "\09.asciz \09\22skb_append_pagefrags\22\09\09\09\09\09"
module asm "__kstrtabns_skb_append_pagefrags:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_skb_pull_rcsum:\09\09\09\09\09"
module asm "\09.asciz \09\22skb_pull_rcsum\22\09\09\09\09\09"
module asm "__kstrtabns_skb_pull_rcsum:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_skb_segment_list:\09\09\09\09\09"
module asm "\09.asciz \09\22skb_segment_list\22\09\09\09\09\09"
module asm "__kstrtabns_skb_segment_list:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_skb_segment:\09\09\09\09\09"
module asm "\09.asciz \09\22skb_segment\22\09\09\09\09\09"
module asm "__kstrtabns_skb_segment:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_skb_to_sgvec:\09\09\09\09\09"
module asm "\09.asciz \09\22skb_to_sgvec\22\09\09\09\09\09"
module asm "__kstrtabns_skb_to_sgvec:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_skb_to_sgvec_nomark:\09\09\09\09\09"
module asm "\09.asciz \09\22skb_to_sgvec_nomark\22\09\09\09\09\09"
module asm "__kstrtabns_skb_to_sgvec_nomark:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_skb_cow_data:\09\09\09\09\09"
module asm "\09.asciz \09\22skb_cow_data\22\09\09\09\09\09"
module asm "__kstrtabns_skb_cow_data:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_sock_queue_err_skb:\09\09\09\09\09"
module asm "\09.asciz \09\22sock_queue_err_skb\22\09\09\09\09\09"
module asm "__kstrtabns_sock_queue_err_skb:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_sock_dequeue_err_skb:\09\09\09\09\09"
module asm "\09.asciz \09\22sock_dequeue_err_skb\22\09\09\09\09\09"
module asm "__kstrtabns_sock_dequeue_err_skb:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_skb_clone_sk:\09\09\09\09\09"
module asm "\09.asciz \09\22skb_clone_sk\22\09\09\09\09\09"
module asm "__kstrtabns_skb_clone_sk:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_skb_complete_tx_timestamp:\09\09\09\09\09"
module asm "\09.asciz \09\22skb_complete_tx_timestamp\22\09\09\09\09\09"
module asm "__kstrtabns_skb_complete_tx_timestamp:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___skb_tstamp_tx:\09\09\09\09\09"
module asm "\09.asciz \09\22__skb_tstamp_tx\22\09\09\09\09\09"
module asm "__kstrtabns___skb_tstamp_tx:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_skb_tstamp_tx:\09\09\09\09\09"
module asm "\09.asciz \09\22skb_tstamp_tx\22\09\09\09\09\09"
module asm "__kstrtabns_skb_tstamp_tx:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_skb_complete_wifi_ack:\09\09\09\09\09"
module asm "\09.asciz \09\22skb_complete_wifi_ack\22\09\09\09\09\09"
module asm "__kstrtabns_skb_complete_wifi_ack:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_skb_partial_csum_set:\09\09\09\09\09"
module asm "\09.asciz \09\22skb_partial_csum_set\22\09\09\09\09\09"
module asm "__kstrtabns_skb_partial_csum_set:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_skb_checksum_setup:\09\09\09\09\09"
module asm "\09.asciz \09\22skb_checksum_setup\22\09\09\09\09\09"
module asm "__kstrtabns_skb_checksum_setup:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_skb_checksum_trimmed:\09\09\09\09\09"
module asm "\09.asciz \09\22skb_checksum_trimmed\22\09\09\09\09\09"
module asm "__kstrtabns_skb_checksum_trimmed:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___skb_warn_lro_forwarding:\09\09\09\09\09"
module asm "\09.asciz \09\22__skb_warn_lro_forwarding\22\09\09\09\09\09"
module asm "__kstrtabns___skb_warn_lro_forwarding:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_kfree_skb_partial:\09\09\09\09\09"
module asm "\09.asciz \09\22kfree_skb_partial\22\09\09\09\09\09"
module asm "__kstrtabns_kfree_skb_partial:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_skb_try_coalesce:\09\09\09\09\09"
module asm "\09.asciz \09\22skb_try_coalesce\22\09\09\09\09\09"
module asm "__kstrtabns_skb_try_coalesce:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_skb_scrub_packet:\09\09\09\09\09"
module asm "\09.asciz \09\22skb_scrub_packet\22\09\09\09\09\09"
module asm "__kstrtabns_skb_scrub_packet:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_skb_gso_validate_network_len:\09\09\09\09\09"
module asm "\09.asciz \09\22skb_gso_validate_network_len\22\09\09\09\09\09"
module asm "__kstrtabns_skb_gso_validate_network_len:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_skb_gso_validate_mac_len:\09\09\09\09\09"
module asm "\09.asciz \09\22skb_gso_validate_mac_len\22\09\09\09\09\09"
module asm "__kstrtabns_skb_gso_validate_mac_len:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_skb_vlan_untag:\09\09\09\09\09"
module asm "\09.asciz \09\22skb_vlan_untag\22\09\09\09\09\09"
module asm "__kstrtabns_skb_vlan_untag:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_skb_ensure_writable:\09\09\09\09\09"
module asm "\09.asciz \09\22skb_ensure_writable\22\09\09\09\09\09"
module asm "__kstrtabns_skb_ensure_writable:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___skb_vlan_pop:\09\09\09\09\09"
module asm "\09.asciz \09\22__skb_vlan_pop\22\09\09\09\09\09"
module asm "__kstrtabns___skb_vlan_pop:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_skb_vlan_pop:\09\09\09\09\09"
module asm "\09.asciz \09\22skb_vlan_pop\22\09\09\09\09\09"
module asm "__kstrtabns_skb_vlan_pop:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_skb_vlan_push:\09\09\09\09\09"
module asm "\09.asciz \09\22skb_vlan_push\22\09\09\09\09\09"
module asm "__kstrtabns_skb_vlan_push:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_skb_eth_pop:\09\09\09\09\09"
module asm "\09.asciz \09\22skb_eth_pop\22\09\09\09\09\09"
module asm "__kstrtabns_skb_eth_pop:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_skb_eth_push:\09\09\09\09\09"
module asm "\09.asciz \09\22skb_eth_push\22\09\09\09\09\09"
module asm "__kstrtabns_skb_eth_push:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_skb_mpls_push:\09\09\09\09\09"
module asm "\09.asciz \09\22skb_mpls_push\22\09\09\09\09\09"
module asm "__kstrtabns_skb_mpls_push:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_skb_mpls_pop:\09\09\09\09\09"
module asm "\09.asciz \09\22skb_mpls_pop\22\09\09\09\09\09"
module asm "__kstrtabns_skb_mpls_pop:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_skb_mpls_update_lse:\09\09\09\09\09"
module asm "\09.asciz \09\22skb_mpls_update_lse\22\09\09\09\09\09"
module asm "__kstrtabns_skb_mpls_update_lse:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_skb_mpls_dec_ttl:\09\09\09\09\09"
module asm "\09.asciz \09\22skb_mpls_dec_ttl\22\09\09\09\09\09"
module asm "__kstrtabns_skb_mpls_dec_ttl:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_alloc_skb_with_frags:\09\09\09\09\09"
module asm "\09.asciz \09\22alloc_skb_with_frags\22\09\09\09\09\09"
module asm "__kstrtabns_alloc_skb_with_frags:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_pskb_extract:\09\09\09\09\09"
module asm "\09.asciz \09\22pskb_extract\22\09\09\09\09\09"
module asm "__kstrtabns_pskb_extract:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_skb_ext_add:\09\09\09\09\09"
module asm "\09.asciz \09\22skb_ext_add\22\09\09\09\09\09"
module asm "__kstrtabns_skb_ext_add:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___skb_ext_del:\09\09\09\09\09"
module asm "\09.asciz \09\22__skb_ext_del\22\09\09\09\09\09"
module asm "__kstrtabns___skb_ext_del:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___skb_ext_put:\09\09\09\09\09"
module asm "\09.asciz \09\22__skb_ext_put\22\09\09\09\09\09"
module asm "__kstrtabns___skb_ext_put:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.napi_alloc_cache = type { %struct.page_frag_cache, i32, [64 x ptr] }
%struct.page_frag_cache = type { ptr, i16, i16, i32, i8 }
%struct.pipe_buf_operations = type { ptr, ptr, ptr, ptr }
%struct.skb_checksum_ops = type { ptr, ptr }
%struct.static_key_false = type { %struct.static_key }
%struct.static_key = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.tracepoint = type { ptr, %struct.static_key, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.cpumask = type { [1 x i32] }
%struct.user_namespace = type { %struct.uid_gid_map, %struct.uid_gid_map, %struct.uid_gid_map, ptr, i32, %struct.kuid_t, %struct.kgid_t, %struct.ns_common, i32, i8, %struct.list_head, ptr, %struct.rw_semaphore, %struct.work_struct, %struct.ctl_table_set, ptr, ptr, [14 x i32] }
%struct.uid_gid_map = type { i32, %union.anon.26 }
%union.anon.26 = type { [5 x %struct.uid_gid_extent] }
%struct.uid_gid_extent = type { i32, i32, i32 }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%struct.ns_common = type { %struct.atomic_t, ptr, i32, %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.8 }
%union.anon.8 = type { i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.ctl_table_set = type { ptr, %struct.ctl_dir }
%struct.ctl_dir = type { %struct.ctl_table_header, %struct.rb_root }
%struct.ctl_table_header = type { %union.anon.36, ptr, ptr, ptr, ptr, ptr, ptr, %struct.hlist_head }
%union.anon.36 = type { %struct.anon.37 }
%struct.anon.37 = type { ptr, i32, i32, i32 }
%struct.hlist_head = type { ptr }
%struct.rb_root = type { ptr }
%struct.thread_info = type { i32, i32, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], [4 x i8], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.sk_buff = type { %union.anon, %union.anon.162, %union.anon.163, [48 x i8], %union.anon.164, i32, i32, i16, i16, i16, [0 x i8], i8, i8, %union.anon.166, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon = type { %struct.anon }
%struct.anon = type { ptr, ptr, %union.anon.0 }
%union.anon.0 = type { ptr }
%union.anon.162 = type { ptr }
%union.anon.163 = type { i64 }
%union.anon.164 = type { %struct.anon.165 }
%struct.anon.165 = type { i32, ptr }
%union.anon.166 = type { %struct.anon.167 }
%struct.anon.167 = type { [0 x i8], i16, [0 x i8], i16, %union.anon.168, i32, i32, i32, i16, i16, %union.anon.170, %union.anon.171, %union.anon.172, i16, i16, i16, i16, i16, i16, i16 }
%union.anon.168 = type { i32 }
%union.anon.170 = type { i32 }
%union.anon.171 = type { i32 }
%union.anon.172 = type { i16 }
%struct.skb_shared_info = type { i8, i8, i8, i8, i16, i16, ptr, %struct.skb_shared_hwtstamps, i32, i32, %struct.atomic_t, ptr, [17 x %struct.bio_vec] }
%struct.skb_shared_hwtstamps = type { i64 }
%struct.bio_vec = type { ptr, i32, i32 }
%struct.page = type { i32, %union.anon.18, %union.anon.134, %struct.atomic_t }
%union.anon.18 = type { %struct.anon.19 }
%struct.anon.19 = type { %struct.list_head, ptr, i32, i32 }
%union.anon.134 = type { %struct.atomic_t }
%struct.sk_buff_fclones = type { %struct.sk_buff, %struct.sk_buff, %struct.refcount_struct }
%struct.napi_struct = type { %struct.list_head, i32, i32, i32, i32, ptr, ptr, [8 x %struct.gro_list], ptr, %struct.list_head, i32, %struct.hrtimer, %struct.list_head, %struct.hlist_node, i32, ptr }
%struct.gro_list = type { %struct.list_head, i32 }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.hlist_node = type { ptr, ptr }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon.1, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, i32, i32, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [8 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, %struct.possible_net_t, ptr, i32, %union.anon.161, %struct.device, [4 x ptr], ptr, ptr, i32, i16, i16, [16 x %struct.netdev_tc_txq], [16 x i8], ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], %struct.netdevice_tracker, %struct.netdevice_tracker, [48 x i8] }
%struct.anon.1 = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%struct.spinlock = type { %union.anon.7 }
%union.anon.7 = type { %struct.raw_spinlock }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32 }
%struct.ref_tracker_dir = type {}
%struct.possible_net_t = type {}
%union.anon.161 = type { ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
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
%struct.netdevice_tracker = type {}
%struct.sock_common = type { %union.anon.11, %union.anon.13, %union.anon.14, i16, i8, i8, i32, %union.anon.16, ptr, %struct.possible_net_t, %struct.in6_addr, %struct.in6_addr, %struct.atomic64_t, %union.anon.139, [0 x i32], %union.anon.140, i16, i16, %union.anon.141, %struct.refcount_struct, [0 x i32], %union.anon.142 }
%union.anon.11 = type { i64 }
%union.anon.13 = type { i32 }
%union.anon.14 = type { i32 }
%union.anon.16 = type { %struct.hlist_node }
%struct.in6_addr = type { %union.anon.55 }
%union.anon.55 = type { [4 x i32] }
%struct.atomic64_t = type { i64 }
%union.anon.139 = type { i32 }
%union.anon.140 = type { %struct.hlist_node }
%union.anon.141 = type { i32 }
%union.anon.142 = type { i32 }
%struct.sock = type { %struct.sock_common, ptr, i32, i32, %struct.socket_lock_t, %struct.atomic_t, i32, %struct.sk_buff_head, %struct.sk_buff_head, %struct.anon.143, %struct.llist_head, i32, i32, i32, i32, i32, ptr, %union.anon.144, [2 x ptr], ptr, %struct.atomic_t, i32, i32, %struct.refcount_struct, i32, %union.anon.145, %struct.sk_buff_head, i32, i32, i32, i32, i32, %struct.timer_list, i32, i32, i32, i32, %struct.page_frag, i64, i32, i32, i32, i32, i8, i8, i16, i16, i16, i32, ptr, %struct.rwlock_t, i32, i32, i32, i32, %struct.kuid_t, i8, i16, %struct.spinlock, i32, ptr, ptr, i32, i64, %struct.seqlock_t, i16, i8, %struct.atomic_t, %struct.atomic_t, i8, i8, ptr, ptr, %struct.sock_cgroup_data, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.callback_head, %struct.netns_tracker }
%struct.socket_lock_t = type { %struct.spinlock, i32, %struct.wait_queue_head }
%struct.anon.143 = type { %struct.atomic_t, i32, ptr, ptr }
%struct.llist_head = type { ptr }
%union.anon.144 = type { ptr }
%union.anon.145 = type { ptr }
%struct.sk_buff_head = type { %union.anon.5, i32, %struct.spinlock }
%union.anon.5 = type { %struct.anon.6 }
%struct.anon.6 = type { ptr, ptr }
%struct.page_frag = type { ptr, i16, i16 }
%struct.rwlock_t = type { %struct.arch_rwlock_t }
%struct.arch_rwlock_t = type { i32 }
%struct.seqlock_t = type { %struct.seqcount_spinlock, %struct.spinlock }
%struct.seqcount_spinlock = type { %struct.seqcount }
%struct.seqcount = type { i32 }
%struct.sock_cgroup_data = type {}
%struct.callback_head = type { ptr, ptr }
%struct.netns_tracker = type {}
%struct.task_struct = type { %struct.thread_info, i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [32 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, [36 x i8], %struct.sched_statistics, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i8, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.118, ptr, %struct.page_frag, i32, i32, i32, i64, i64, i32, i32, ptr, %struct.kmap_ctrl, i32, ptr, %struct.refcount_struct, %struct.thread_struct, [16 x i8] }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.45 }
%struct.llist_node = type { ptr }
%union.anon.45 = type { i32 }
%struct.sched_entity = type { %struct.load_weight, %struct.rb_node, %struct.list_head, i32, i64, i64, i64, i64, i64, [56 x i8], %struct.sched_avg }
%struct.load_weight = type { i32, i32 }
%struct.sched_avg = type { i64, i64, i64, i32, i32, i32, i32, i32, [4 x i8], %struct.util_est, [8 x i8] }
%struct.util_est = type { i32, i32 }
%struct.sched_rt_entity = type { %struct.list_head, i32, i32, i32, i16, i16, ptr }
%struct.sched_dl_entity = type { %struct.rb_node, i64, i64, i64, i64, i64, i64, i64, i32, i8, %struct.hrtimer, %struct.hrtimer, ptr }
%struct.sched_statistics = type {}
%struct.sched_info = type {}
%struct.plist_node = type { i32, %struct.list_head, %struct.list_head }
%struct.vmacache = type { i64, [4 x ptr] }
%struct.task_rss_stat = type { i32, [4 x i32] }
%struct.restart_block = type { i32, ptr, %union.anon.46 }
%union.anon.46 = type { %struct.anon.47 }
%struct.anon.47 = type { ptr, i32, i32, i32, i64, ptr }
%struct.prev_cputime = type { i64, i64, %struct.raw_spinlock }
%struct.posix_cputimers = type { [3 x %struct.posix_cputimer_base], i32, i32 }
%struct.posix_cputimer_base = type { i64, %struct.timerqueue_head }
%struct.timerqueue_head = type { %struct.rb_root_cached }
%struct.sysv_sem = type { ptr }
%struct.sysv_shm = type { %struct.list_head }
%struct.sigset_t = type { [2 x i32] }
%struct.sigpending = type { %struct.list_head, %struct.sigset_t }
%struct.seccomp = type { i32, %struct.atomic_t, ptr }
%struct.syscall_user_dispatch = type {}
%struct.wake_q_node = type { ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.task_io_accounting = type {}
%struct.tlbflush_unmap_batch = type {}
%union.anon.118 = type { %struct.callback_head }
%struct.kmap_ctrl = type { i32, [16 x i32] }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
%struct.dst_entry = type { ptr, ptr, i32, i32, ptr, ptr, ptr, i16, i16, i16, i16, i32, i32, ptr, %struct.callback_head, i16, i16, i32, %struct.atomic_t, %struct.netdevice_tracker }
%struct.signal_struct = type { %struct.refcount_struct, %struct.atomic_t, i32, %struct.list_head, %struct.wait_queue_head, ptr, %struct.sigpending, %struct.hlist_head, i32, i32, ptr, i32, i32, ptr, i8, i32, %struct.list_head, %struct.hrtimer, i64, [2 x %struct.cpu_itimer], %struct.thread_group_cputimer, %struct.posix_cputimers, [4 x ptr], ptr, i32, ptr, %struct.seqlock_t, i64, i64, i64, i64, i64, i64, %struct.prev_cputime, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.task_io_accounting, i64, [16 x %struct.rlimit], i8, i16, i16, ptr, %struct.mutex, %struct.rw_semaphore }
%struct.cpu_itimer = type { i64, i64 }
%struct.thread_group_cputimer = type { %struct.task_cputime_atomic }
%struct.task_cputime_atomic = type { %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t }
%struct.rlimit = type { i32, i32 }
%struct.cred = type { %struct.atomic_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, i32, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %union.anon.51 }
%struct.kernel_cap_struct = type { [2 x i32] }
%union.anon.51 = type { %struct.callback_head }
%struct.user_struct = type { %struct.refcount_struct, %struct.percpu_counter, i32, %struct.atomic_t, %struct.hlist_node, %struct.kuid_t, %struct.atomic_t, %struct.ratelimit_state }
%struct.percpu_counter = type { %struct.raw_spinlock, i64, %struct.list_head, ptr }
%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i32, i32 }
%struct.mmpin = type { ptr, i32 }
%struct.ubuf_info = type { ptr, %union.anon.183, %struct.refcount_struct, i8, %struct.mmpin }
%union.anon.183 = type { %struct.anon.185 }
%struct.anon.185 = type { i32, i16, i8, i32 }
%struct.msghdr = type { ptr, i32, %struct.iov_iter, %union.anon.137, i8, i32, i32, ptr }
%struct.iov_iter = type { i8, i8, i8, i32, i32, %union.anon.17, %union.anon.135 }
%union.anon.17 = type { ptr }
%union.anon.135 = type { i64 }
%union.anon.137 = type { ptr }
%struct.anon.169 = type { i16, i16 }
%struct.partial_page = type { i32, i32, i32 }
%struct.splice_pipe_desc = type { ptr, ptr, i32, i32, ptr, ptr }
%struct.kvec = type { ptr, i32 }
%struct.sk_buff_list = type { ptr, ptr }
%struct.skb_seq_state = type { i32, i32, i32, i32, ptr, ptr, ptr, i32 }
%struct.ts_state = type { i32, [48 x i8] }
%struct.ts_config = type { ptr, i32, ptr, ptr }
%struct.ts_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head }
%struct.scatterlist = type { i32, i32, i32, i32, i32 }
%struct.socket = type { i32, i16, i32, ptr, ptr, ptr, [40 x i8], %struct.socket_wq }
%struct.socket_wq = type { %struct.wait_queue_head, ptr, i32, %struct.callback_head, [36 x i8] }
%struct.iphdr = type { i8, i8, i16, i16, i16, i8, i8, i16, i32, i32 }
%struct.ipv6hdr = type { i8, [3 x i8], i16, i8, i8, %struct.in6_addr, %struct.in6_addr }
%struct.ipv6_opt_hdr = type { i8, i8 }
%struct.ip_auth_hdr = type { i8, i8, i16, i32, i32, [0 x i8] }
%struct.frag_hdr = type { i8, i8, i16, i32 }
%struct.tcphdr = type { i16, i16, i32, i32, i16, i16, i16, i16 }
%struct.vlan_hdr = type { i16, i16 }
%struct.vlan_ethhdr = type { %union.anon.192, i16, i16, i16 }
%union.anon.192 = type { %struct.anon.193 }
%struct.anon.193 = type { [6 x i8], [6 x i8] }
%struct.ethhdr = type { [6 x i8], [6 x i8], i16 }
%struct.skb_ext = type { %struct.refcount_struct, [1 x i8], i8, [2 x i8], [0 x i8] }
%struct.sec_path = type { i32, i32, [6 x ptr], [1 x %struct.xfrm_offload] }
%struct.xfrm_offload = type { %struct.anon.189, i32, i32, i8, i8 }
%struct.anon.189 = type { i32, i32 }
%struct.xfrm_state = type { %struct.possible_net_t, %union.anon.56, %struct.hlist_node, %struct.hlist_node, %struct.hlist_node, %struct.refcount_struct, %struct.spinlock, %struct.xfrm_id, %struct.xfrm_selector, %struct.xfrm_mark, i32, i32, i32, %struct.xfrm_state_walk, %struct.anon.57, %struct.xfrm_lifetime_cfg, ptr, ptr, ptr, ptr, ptr, i16, i32, i32, ptr, ptr, ptr, ptr, %struct.atomic_t, %struct.xfrm_replay_state, ptr, %struct.xfrm_replay_state, ptr, i32, i32, i32, i32, %struct.timer_list, %struct.xfrm_stats, %struct.xfrm_lifetime_cur, %struct.hrtimer, %struct.xfrm_state_offload, i32, i64, %struct.page_frag, ptr, %struct.xfrm_mode, %struct.xfrm_mode, %struct.xfrm_mode, ptr, ptr, ptr }
%union.anon.56 = type { %struct.hlist_node }
%struct.xfrm_id = type { %union.xfrm_address_t, i32, i8 }
%union.xfrm_address_t = type { [4 x i32] }
%struct.xfrm_selector = type { %union.xfrm_address_t, %union.xfrm_address_t, i16, i16, i16, i16, i16, i8, i8, i8, i32, i32 }
%struct.xfrm_mark = type { i32, i32 }
%struct.xfrm_state_walk = type { %struct.list_head, i8, i8, i8, i32, ptr }
%struct.anon.57 = type { i32, i8, i8, i8, i8, i8, i8, i16, %union.xfrm_address_t, i32, i32, i32, %struct.xfrm_mark }
%struct.xfrm_lifetime_cfg = type { i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.xfrm_replay_state = type { i32, i32, i32 }
%struct.xfrm_stats = type { i32, i32, i32 }
%struct.xfrm_lifetime_cur = type { i64, i64, i64, i64 }
%struct.xfrm_state_offload = type { ptr, %struct.netdevice_tracker, ptr, i32, i32, i8 }
%struct.xfrm_mode = type { i8, i8, i8 }
%struct.udphdr = type { i16, i16, i16, i16 }

@sysctl_max_skb_frags = dso_local global i32 17, section ".data..read_mostly", align 4
@__kstrtab_sysctl_max_skb_frags = external dso_local constant [0 x i8], align 1
@__kstrtabns_sysctl_max_skb_frags = external dso_local constant [0 x i8], align 1
@__ksymtab_sysctl_max_skb_frags = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @sysctl_max_skb_frags to i32), ptr @__kstrtab_sysctl_max_skb_frags, ptr @__kstrtabns_sysctl_max_skb_frags }, section "___ksymtab+sysctl_max_skb_frags", align 4
@napi_alloc_cache = internal global %struct.napi_alloc_cache zeroinitializer, section ".data..percpu", align 4
@__kstrtab___napi_alloc_frag_align = external dso_local constant [0 x i8], align 1
@__kstrtabns___napi_alloc_frag_align = external dso_local constant [0 x i8], align 1
@__ksymtab___napi_alloc_frag_align = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__napi_alloc_frag_align to i32), ptr @__kstrtab___napi_alloc_frag_align, ptr @__kstrtabns___napi_alloc_frag_align }, section "___ksymtab+__napi_alloc_frag_align", align 4
@netdev_alloc_cache = internal global %struct.page_frag_cache zeroinitializer, section ".data..percpu", align 4
@__kstrtab___netdev_alloc_frag_align = external dso_local constant [0 x i8], align 1
@__kstrtabns___netdev_alloc_frag_align = external dso_local constant [0 x i8], align 1
@__ksymtab___netdev_alloc_frag_align = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__netdev_alloc_frag_align to i32), ptr @__kstrtab___netdev_alloc_frag_align, ptr @__kstrtabns___netdev_alloc_frag_align }, section "___ksymtab+__netdev_alloc_frag_align", align 4
@skbuff_head_cache = dso_local local_unnamed_addr global ptr null, section ".data..ro_after_init", align 4
@__kstrtab_build_skb = external dso_local constant [0 x i8], align 1
@__kstrtabns_build_skb = external dso_local constant [0 x i8], align 1
@__ksymtab_build_skb = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @build_skb to i32), ptr @__kstrtab_build_skb, ptr @__kstrtabns_build_skb }, section "___ksymtab+build_skb", align 4
@__kstrtab_build_skb_around = external dso_local constant [0 x i8], align 1
@__kstrtabns_build_skb_around = external dso_local constant [0 x i8], align 1
@__ksymtab_build_skb_around = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @build_skb_around to i32), ptr @__kstrtab_build_skb_around, ptr @__kstrtabns_build_skb_around }, section "___ksymtab+build_skb_around", align 4
@__kstrtab_napi_build_skb = external dso_local constant [0 x i8], align 1
@__kstrtabns_napi_build_skb = external dso_local constant [0 x i8], align 1
@__ksymtab_napi_build_skb = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @napi_build_skb to i32), ptr @__kstrtab_napi_build_skb, ptr @__kstrtabns_napi_build_skb }, section "___ksymtab+napi_build_skb", align 4
@skbuff_fclone_cache = internal unnamed_addr global ptr null, section ".data..ro_after_init", align 4
@__kstrtab___alloc_skb = external dso_local constant [0 x i8], align 1
@__kstrtabns___alloc_skb = external dso_local constant [0 x i8], align 1
@__ksymtab___alloc_skb = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__alloc_skb to i32), ptr @__kstrtab___alloc_skb, ptr @__kstrtabns___alloc_skb }, section "___ksymtab+__alloc_skb", align 4
@__kstrtab___netdev_alloc_skb = external dso_local constant [0 x i8], align 1
@__kstrtabns___netdev_alloc_skb = external dso_local constant [0 x i8], align 1
@__ksymtab___netdev_alloc_skb = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__netdev_alloc_skb to i32), ptr @__kstrtab___netdev_alloc_skb, ptr @__kstrtabns___netdev_alloc_skb }, section "___ksymtab+__netdev_alloc_skb", align 4
@__kstrtab___napi_alloc_skb = external dso_local constant [0 x i8], align 1
@__kstrtabns___napi_alloc_skb = external dso_local constant [0 x i8], align 1
@__ksymtab___napi_alloc_skb = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__napi_alloc_skb to i32), ptr @__kstrtab___napi_alloc_skb, ptr @__kstrtabns___napi_alloc_skb }, section "___ksymtab+__napi_alloc_skb", align 4
@__kstrtab_skb_add_rx_frag = external dso_local constant [0 x i8], align 1
@__kstrtabns_skb_add_rx_frag = external dso_local constant [0 x i8], align 1
@__ksymtab_skb_add_rx_frag = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @skb_add_rx_frag to i32), ptr @__kstrtab_skb_add_rx_frag, ptr @__kstrtabns_skb_add_rx_frag }, section "___ksymtab+skb_add_rx_frag", align 4
@__kstrtab_skb_coalesce_rx_frag = external dso_local constant [0 x i8], align 1
@__kstrtabns_skb_coalesce_rx_frag = external dso_local constant [0 x i8], align 1
@__ksymtab_skb_coalesce_rx_frag = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @skb_coalesce_rx_frag to i32), ptr @__kstrtab_skb_coalesce_rx_frag, ptr @__kstrtabns_skb_coalesce_rx_frag }, section "___ksymtab+skb_coalesce_rx_frag", align 4
@.str = private unnamed_addr constant [18 x i8] c"net/core/skbuff.c\00", align 1
@__kstrtab___kfree_skb = external dso_local constant [0 x i8], align 1
@__kstrtabns___kfree_skb = external dso_local constant [0 x i8], align 1
@__ksymtab___kfree_skb = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__kfree_skb to i32), ptr @__kstrtab___kfree_skb, ptr @__kstrtabns___kfree_skb }, section "___ksymtab+__kfree_skb", align 4
@__kstrtab_kfree_skb_reason = external dso_local constant [0 x i8], align 1
@__kstrtabns_kfree_skb_reason = external dso_local constant [0 x i8], align 1
@__ksymtab_kfree_skb_reason = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @kfree_skb_reason to i32), ptr @__kstrtab_kfree_skb_reason, ptr @__kstrtabns_kfree_skb_reason }, section "___ksymtab+kfree_skb_reason", align 4
@__kstrtab_kfree_skb_list = external dso_local constant [0 x i8], align 1
@__kstrtabns_kfree_skb_list = external dso_local constant [0 x i8], align 1
@__ksymtab_kfree_skb_list = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @kfree_skb_list to i32), ptr @__kstrtab_kfree_skb_list, ptr @__kstrtabns_kfree_skb_list }, section "___ksymtab+kfree_skb_list", align 4
@.str.1 = private unnamed_addr constant [255 x i8] c"%sskb len=%u headroom=%u headlen=%u tailroom=%u\0Amac=(%d,%d) net=(%d,%d) trans=%d\0Ashinfo(txflags=%u nr_frags=%u gso(size=%hu type=%u segs=%hu))\0Acsum(0x%x ip_summed=%u complete_sw=%u valid=%u level=%u)\0Ahash(0x%x sw=%u l4=%u) proto=0x%04x pkttype=%u iif=%d\0A\00", align 1
@.str.2 = private unnamed_addr constant [25 x i8] c"%sdev name=%s feat=%pNF\0A\00", align 1
@.str.3 = private unnamed_addr constant [34 x i8] c"%ssk family=%hu type=%u proto=%u\0A\00", align 1
@.str.4 = private unnamed_addr constant [15 x i8] c"skb headroom: \00", align 1
@.str.5 = private unnamed_addr constant [15 x i8] c"skb linear:   \00", align 1
@.str.6 = private unnamed_addr constant [15 x i8] c"skb tailroom: \00", align 1
@.str.7 = private unnamed_addr constant [15 x i8] c"skb frag:     \00", align 1
@.str.8 = private unnamed_addr constant [15 x i8] c"skb fraglist:\0A\00", align 1
@__kstrtab_skb_dump = external dso_local constant [0 x i8], align 1
@__kstrtabns_skb_dump = external dso_local constant [0 x i8], align 1
@__ksymtab_skb_dump = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @skb_dump to i32), ptr @__kstrtab_skb_dump, ptr @__kstrtabns_skb_dump }, section "___ksymtab+skb_dump", align 4
@__kstrtab_skb_tx_error = external dso_local constant [0 x i8], align 1
@__kstrtabns_skb_tx_error = external dso_local constant [0 x i8], align 1
@__ksymtab_skb_tx_error = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @skb_tx_error to i32), ptr @__kstrtab_skb_tx_error, ptr @__kstrtabns_skb_tx_error }, section "___ksymtab+skb_tx_error", align 4
@__kstrtab_consume_skb = external dso_local constant [0 x i8], align 1
@__kstrtabns_consume_skb = external dso_local constant [0 x i8], align 1
@__ksymtab_consume_skb = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @consume_skb to i32), ptr @__kstrtab_consume_skb, ptr @__kstrtabns_consume_skb }, section "___ksymtab+consume_skb", align 4
@__kstrtab_napi_consume_skb = external dso_local constant [0 x i8], align 1
@__kstrtabns_napi_consume_skb = external dso_local constant [0 x i8], align 1
@__ksymtab_napi_consume_skb = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @napi_consume_skb to i32), ptr @__kstrtab_napi_consume_skb, ptr @__kstrtabns_napi_consume_skb }, section "___ksymtab+napi_consume_skb", align 4
@__kstrtab_alloc_skb_for_msg = external dso_local constant [0 x i8], align 1
@__kstrtabns_alloc_skb_for_msg = external dso_local constant [0 x i8], align 1
@__ksymtab_alloc_skb_for_msg = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @alloc_skb_for_msg to i32), ptr @__kstrtab_alloc_skb_for_msg, ptr @__kstrtabns_alloc_skb_for_msg }, section "___ksymtab_gpl+alloc_skb_for_msg", align 4
@__kstrtab_skb_morph = external dso_local constant [0 x i8], align 1
@__kstrtabns_skb_morph = external dso_local constant [0 x i8], align 1
@__ksymtab_skb_morph = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @skb_morph to i32), ptr @__kstrtab_skb_morph, ptr @__kstrtabns_skb_morph }, section "___ksymtab_gpl+skb_morph", align 4
@__kstrtab_mm_account_pinned_pages = external dso_local constant [0 x i8], align 1
@__kstrtabns_mm_account_pinned_pages = external dso_local constant [0 x i8], align 1
@__ksymtab_mm_account_pinned_pages = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @mm_account_pinned_pages to i32), ptr @__kstrtab_mm_account_pinned_pages, ptr @__kstrtabns_mm_account_pinned_pages }, section "___ksymtab_gpl+mm_account_pinned_pages", align 4
@__kstrtab_mm_unaccount_pinned_pages = external dso_local constant [0 x i8], align 1
@__kstrtabns_mm_unaccount_pinned_pages = external dso_local constant [0 x i8], align 1
@__ksymtab_mm_unaccount_pinned_pages = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @mm_unaccount_pinned_pages to i32), ptr @__kstrtab_mm_unaccount_pinned_pages, ptr @__kstrtabns_mm_unaccount_pinned_pages }, section "___ksymtab_gpl+mm_unaccount_pinned_pages", align 4
@msg_zerocopy_alloc.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@__kstrtab_msg_zerocopy_alloc = external dso_local constant [0 x i8], align 1
@__kstrtabns_msg_zerocopy_alloc = external dso_local constant [0 x i8], align 1
@__ksymtab_msg_zerocopy_alloc = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @msg_zerocopy_alloc to i32), ptr @__kstrtab_msg_zerocopy_alloc, ptr @__kstrtabns_msg_zerocopy_alloc }, section "___ksymtab_gpl+msg_zerocopy_alloc", align 4
@msg_zerocopy_realloc.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@__kstrtab_msg_zerocopy_realloc = external dso_local constant [0 x i8], align 1
@__kstrtabns_msg_zerocopy_realloc = external dso_local constant [0 x i8], align 1
@__ksymtab_msg_zerocopy_realloc = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @msg_zerocopy_realloc to i32), ptr @__kstrtab_msg_zerocopy_realloc, ptr @__kstrtabns_msg_zerocopy_realloc }, section "___ksymtab_gpl+msg_zerocopy_realloc", align 4
@__kstrtab_msg_zerocopy_callback = external dso_local constant [0 x i8], align 1
@__kstrtabns_msg_zerocopy_callback = external dso_local constant [0 x i8], align 1
@__ksymtab_msg_zerocopy_callback = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @msg_zerocopy_callback to i32), ptr @__kstrtab_msg_zerocopy_callback, ptr @__kstrtabns_msg_zerocopy_callback }, section "___ksymtab_gpl+msg_zerocopy_callback", align 4
@__kstrtab_msg_zerocopy_put_abort = external dso_local constant [0 x i8], align 1
@__kstrtabns_msg_zerocopy_put_abort = external dso_local constant [0 x i8], align 1
@__ksymtab_msg_zerocopy_put_abort = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @msg_zerocopy_put_abort to i32), ptr @__kstrtab_msg_zerocopy_put_abort, ptr @__kstrtabns_msg_zerocopy_put_abort }, section "___ksymtab_gpl+msg_zerocopy_put_abort", align 4
@__kstrtab_skb_zerocopy_iter_dgram = external dso_local constant [0 x i8], align 1
@__kstrtabns_skb_zerocopy_iter_dgram = external dso_local constant [0 x i8], align 1
@__ksymtab_skb_zerocopy_iter_dgram = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @skb_zerocopy_iter_dgram to i32), ptr @__kstrtab_skb_zerocopy_iter_dgram, ptr @__kstrtabns_skb_zerocopy_iter_dgram }, section "___ksymtab_gpl+skb_zerocopy_iter_dgram", align 4
@__kstrtab_skb_zerocopy_iter_stream = external dso_local constant [0 x i8], align 1
@__kstrtabns_skb_zerocopy_iter_stream = external dso_local constant [0 x i8], align 1
@__ksymtab_skb_zerocopy_iter_stream = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @skb_zerocopy_iter_stream to i32), ptr @__kstrtab_skb_zerocopy_iter_stream, ptr @__kstrtabns_skb_zerocopy_iter_stream }, section "___ksymtab_gpl+skb_zerocopy_iter_stream", align 4
@__kstrtab_skb_copy_ubufs = external dso_local constant [0 x i8], align 1
@__kstrtabns_skb_copy_ubufs = external dso_local constant [0 x i8], align 1
@__ksymtab_skb_copy_ubufs = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @skb_copy_ubufs to i32), ptr @__kstrtab_skb_copy_ubufs, ptr @__kstrtabns_skb_copy_ubufs }, section "___ksymtab_gpl+skb_copy_ubufs", align 4
@__kstrtab_skb_clone = external dso_local constant [0 x i8], align 1
@__kstrtabns_skb_clone = external dso_local constant [0 x i8], align 1
@__ksymtab_skb_clone = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @skb_clone to i32), ptr @__kstrtab_skb_clone, ptr @__kstrtabns_skb_clone }, section "___ksymtab+skb_clone", align 4
@__kstrtab_skb_headers_offset_update = external dso_local constant [0 x i8], align 1
@__kstrtabns_skb_headers_offset_update = external dso_local constant [0 x i8], align 1
@__ksymtab_skb_headers_offset_update = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @skb_headers_offset_update to i32), ptr @__kstrtab_skb_headers_offset_update, ptr @__kstrtabns_skb_headers_offset_update }, section "___ksymtab+skb_headers_offset_update", align 4
@__kstrtab_skb_copy_header = external dso_local constant [0 x i8], align 1
@__kstrtabns_skb_copy_header = external dso_local constant [0 x i8], align 1
@__ksymtab_skb_copy_header = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @skb_copy_header to i32), ptr @__kstrtab_skb_copy_header, ptr @__kstrtabns_skb_copy_header }, section "___ksymtab+skb_copy_header", align 4
@__kstrtab_skb_copy = external dso_local constant [0 x i8], align 1
@__kstrtabns_skb_copy = external dso_local constant [0 x i8], align 1
@__ksymtab_skb_copy = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @skb_copy to i32), ptr @__kstrtab_skb_copy, ptr @__kstrtabns_skb_copy }, section "___ksymtab+skb_copy", align 4
@__kstrtab___pskb_copy_fclone = external dso_local constant [0 x i8], align 1
@__kstrtabns___pskb_copy_fclone = external dso_local constant [0 x i8], align 1
@__ksymtab___pskb_copy_fclone = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__pskb_copy_fclone to i32), ptr @__kstrtab___pskb_copy_fclone, ptr @__kstrtabns___pskb_copy_fclone }, section "___ksymtab+__pskb_copy_fclone", align 4
@__kstrtab_pskb_expand_head = external dso_local constant [0 x i8], align 1
@__kstrtabns_pskb_expand_head = external dso_local constant [0 x i8], align 1
@__ksymtab_pskb_expand_head = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @pskb_expand_head to i32), ptr @__kstrtab_pskb_expand_head, ptr @__kstrtabns_pskb_expand_head }, section "___ksymtab+pskb_expand_head", align 4
@__kstrtab_skb_realloc_headroom = external dso_local constant [0 x i8], align 1
@__kstrtabns_skb_realloc_headroom = external dso_local constant [0 x i8], align 1
@__ksymtab_skb_realloc_headroom = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @skb_realloc_headroom to i32), ptr @__kstrtab_skb_realloc_headroom, ptr @__kstrtabns_skb_realloc_headroom }, section "___ksymtab+skb_realloc_headroom", align 4
@skb_expand_head.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.9 = private unnamed_addr constant [44 x i8] c"%s is expecting an increase in the headroom\00", align 1
@__func__.skb_expand_head = private unnamed_addr constant [16 x i8] c"skb_expand_head\00", align 1
@__kstrtab_skb_expand_head = external dso_local constant [0 x i8], align 1
@__kstrtabns_skb_expand_head = external dso_local constant [0 x i8], align 1
@__ksymtab_skb_expand_head = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @skb_expand_head to i32), ptr @__kstrtab_skb_expand_head, ptr @__kstrtabns_skb_expand_head }, section "___ksymtab+skb_expand_head", align 4
@__kstrtab_skb_copy_expand = external dso_local constant [0 x i8], align 1
@__kstrtabns_skb_copy_expand = external dso_local constant [0 x i8], align 1
@__ksymtab_skb_copy_expand = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @skb_copy_expand to i32), ptr @__kstrtab_skb_copy_expand, ptr @__kstrtabns_skb_copy_expand }, section "___ksymtab+skb_copy_expand", align 4
@__kstrtab___skb_pad = external dso_local constant [0 x i8], align 1
@__kstrtabns___skb_pad = external dso_local constant [0 x i8], align 1
@__ksymtab___skb_pad = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__skb_pad to i32), ptr @__kstrtab___skb_pad, ptr @__kstrtabns___skb_pad }, section "___ksymtab+__skb_pad", align 4
@__kstrtab_pskb_put = external dso_local constant [0 x i8], align 1
@__kstrtabns_pskb_put = external dso_local constant [0 x i8], align 1
@__ksymtab_pskb_put = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @pskb_put to i32), ptr @__kstrtab_pskb_put, ptr @__kstrtabns_pskb_put }, section "___ksymtab_gpl+pskb_put", align 4
@__kstrtab_skb_put = external dso_local constant [0 x i8], align 1
@__kstrtabns_skb_put = external dso_local constant [0 x i8], align 1
@__ksymtab_skb_put = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @skb_put to i32), ptr @__kstrtab_skb_put, ptr @__kstrtabns_skb_put }, section "___ksymtab+skb_put", align 4
@__kstrtab_skb_push = external dso_local constant [0 x i8], align 1
@__kstrtabns_skb_push = external dso_local constant [0 x i8], align 1
@__ksymtab_skb_push = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @skb_push to i32), ptr @__kstrtab_skb_push, ptr @__kstrtabns_skb_push }, section "___ksymtab+skb_push", align 4
@__kstrtab_skb_pull = external dso_local constant [0 x i8], align 1
@__kstrtabns_skb_pull = external dso_local constant [0 x i8], align 1
@__ksymtab_skb_pull = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @skb_pull to i32), ptr @__kstrtab_skb_pull, ptr @__kstrtabns_skb_pull }, section "___ksymtab+skb_pull", align 4
@__kstrtab_skb_pull_data = external dso_local constant [0 x i8], align 1
@__kstrtabns_skb_pull_data = external dso_local constant [0 x i8], align 1
@__ksymtab_skb_pull_data = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @skb_pull_data to i32), ptr @__kstrtab_skb_pull_data, ptr @__kstrtabns_skb_pull_data }, section "___ksymtab+skb_pull_data", align 4
@__kstrtab_skb_trim = external dso_local constant [0 x i8], align 1
@__kstrtabns_skb_trim = external dso_local constant [0 x i8], align 1
@__ksymtab_skb_trim = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @skb_trim to i32), ptr @__kstrtab_skb_trim, ptr @__kstrtabns_skb_trim }, section "___ksymtab+skb_trim", align 4
@__kstrtab____pskb_trim = external dso_local constant [0 x i8], align 1
@__kstrtabns____pskb_trim = external dso_local constant [0 x i8], align 1
@__ksymtab____pskb_trim = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @___pskb_trim to i32), ptr @__kstrtab____pskb_trim, ptr @__kstrtabns____pskb_trim }, section "___ksymtab+___pskb_trim", align 4
@__kstrtab_pskb_trim_rcsum_slow = external dso_local constant [0 x i8], align 1
@__kstrtabns_pskb_trim_rcsum_slow = external dso_local constant [0 x i8], align 1
@__ksymtab_pskb_trim_rcsum_slow = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @pskb_trim_rcsum_slow to i32), ptr @__kstrtab_pskb_trim_rcsum_slow, ptr @__kstrtabns_pskb_trim_rcsum_slow }, section "___ksymtab+pskb_trim_rcsum_slow", align 4
@__kstrtab___pskb_pull_tail = external dso_local constant [0 x i8], align 1
@__kstrtabns___pskb_pull_tail = external dso_local constant [0 x i8], align 1
@__ksymtab___pskb_pull_tail = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__pskb_pull_tail to i32), ptr @__kstrtab___pskb_pull_tail, ptr @__kstrtabns___pskb_pull_tail }, section "___ksymtab+__pskb_pull_tail", align 4
@__kstrtab_skb_copy_bits = external dso_local constant [0 x i8], align 1
@__kstrtabns_skb_copy_bits = external dso_local constant [0 x i8], align 1
@__ksymtab_skb_copy_bits = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @skb_copy_bits to i32), ptr @__kstrtab_skb_copy_bits, ptr @__kstrtabns_skb_copy_bits }, section "___ksymtab+skb_copy_bits", align 4
@nosteal_pipe_buf_ops = external dso_local constant %struct.pipe_buf_operations, align 4
@__kstrtab_skb_splice_bits = external dso_local constant [0 x i8], align 1
@__kstrtabns_skb_splice_bits = external dso_local constant [0 x i8], align 1
@__ksymtab_skb_splice_bits = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @skb_splice_bits to i32), ptr @__kstrtab_skb_splice_bits, ptr @__kstrtabns_skb_splice_bits }, section "___ksymtab_gpl+skb_splice_bits", align 4
@__kstrtab_skb_send_sock_locked = external dso_local constant [0 x i8], align 1
@__kstrtabns_skb_send_sock_locked = external dso_local constant [0 x i8], align 1
@__ksymtab_skb_send_sock_locked = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @skb_send_sock_locked to i32), ptr @__kstrtab_skb_send_sock_locked, ptr @__kstrtabns_skb_send_sock_locked }, section "___ksymtab_gpl+skb_send_sock_locked", align 4
@__kstrtab_skb_store_bits = external dso_local constant [0 x i8], align 1
@__kstrtabns_skb_store_bits = external dso_local constant [0 x i8], align 1
@__ksymtab_skb_store_bits = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @skb_store_bits to i32), ptr @__kstrtab_skb_store_bits, ptr @__kstrtabns_skb_store_bits }, section "___ksymtab+skb_store_bits", align 4
@__kstrtab___skb_checksum = external dso_local constant [0 x i8], align 1
@__kstrtabns___skb_checksum = external dso_local constant [0 x i8], align 1
@__ksymtab___skb_checksum = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__skb_checksum to i32), ptr @__kstrtab___skb_checksum, ptr @__kstrtabns___skb_checksum }, section "___ksymtab+__skb_checksum", align 4
@__const.skb_checksum.ops = private unnamed_addr constant %struct.skb_checksum_ops { ptr @csum_partial_ext, ptr @csum_block_add_ext }, align 8
@__kstrtab_skb_checksum = external dso_local constant [0 x i8], align 1
@__kstrtabns_skb_checksum = external dso_local constant [0 x i8], align 1
@__ksymtab_skb_checksum = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @skb_checksum to i32), ptr @__kstrtab_skb_checksum, ptr @__kstrtabns_skb_checksum }, section "___ksymtab+skb_checksum", align 4
@__kstrtab_skb_copy_and_csum_bits = external dso_local constant [0 x i8], align 1
@__kstrtabns_skb_copy_and_csum_bits = external dso_local constant [0 x i8], align 1
@__ksymtab_skb_copy_and_csum_bits = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @skb_copy_and_csum_bits to i32), ptr @__kstrtab_skb_copy_and_csum_bits, ptr @__kstrtabns_skb_copy_and_csum_bits }, section "___ksymtab+skb_copy_and_csum_bits", align 4
@__kstrtab___skb_checksum_complete_head = external dso_local constant [0 x i8], align 1
@__kstrtabns___skb_checksum_complete_head = external dso_local constant [0 x i8], align 1
@__ksymtab___skb_checksum_complete_head = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__skb_checksum_complete_head to i32), ptr @__kstrtab___skb_checksum_complete_head, ptr @__kstrtabns___skb_checksum_complete_head }, section "___ksymtab+__skb_checksum_complete_head", align 4
@__kstrtab___skb_checksum_complete = external dso_local constant [0 x i8], align 1
@__kstrtabns___skb_checksum_complete = external dso_local constant [0 x i8], align 1
@__ksymtab___skb_checksum_complete = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__skb_checksum_complete to i32), ptr @__kstrtab___skb_checksum_complete, ptr @__kstrtabns___skb_checksum_complete }, section "___ksymtab+__skb_checksum_complete", align 4
@default_crc32c_ops = internal constant %struct.skb_checksum_ops { ptr @warn_crc32c_csum_update, ptr @warn_crc32c_csum_combine }, align 4
@crc32c_csum_stub = dso_local global ptr @default_crc32c_ops, section ".data..read_mostly", align 4
@__kstrtab_crc32c_csum_stub = external dso_local constant [0 x i8], align 1
@__kstrtabns_crc32c_csum_stub = external dso_local constant [0 x i8], align 1
@__ksymtab_crc32c_csum_stub = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @crc32c_csum_stub to i32), ptr @__kstrtab_crc32c_csum_stub, ptr @__kstrtabns_crc32c_csum_stub }, section "___ksymtab+crc32c_csum_stub", align 4
@__kstrtab_skb_zerocopy_headlen = external dso_local constant [0 x i8], align 1
@__kstrtabns_skb_zerocopy_headlen = external dso_local constant [0 x i8], align 1
@__ksymtab_skb_zerocopy_headlen = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @skb_zerocopy_headlen to i32), ptr @__kstrtab_skb_zerocopy_headlen, ptr @__kstrtabns_skb_zerocopy_headlen }, section "___ksymtab_gpl+skb_zerocopy_headlen", align 4
@__kstrtab_skb_zerocopy = external dso_local constant [0 x i8], align 1
@__kstrtabns_skb_zerocopy = external dso_local constant [0 x i8], align 1
@__ksymtab_skb_zerocopy = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @skb_zerocopy to i32), ptr @__kstrtab_skb_zerocopy, ptr @__kstrtabns_skb_zerocopy }, section "___ksymtab_gpl+skb_zerocopy", align 4
@__kstrtab_skb_copy_and_csum_dev = external dso_local constant [0 x i8], align 1
@__kstrtabns_skb_copy_and_csum_dev = external dso_local constant [0 x i8], align 1
@__ksymtab_skb_copy_and_csum_dev = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @skb_copy_and_csum_dev to i32), ptr @__kstrtab_skb_copy_and_csum_dev, ptr @__kstrtabns_skb_copy_and_csum_dev }, section "___ksymtab+skb_copy_and_csum_dev", align 4
@__kstrtab_skb_dequeue = external dso_local constant [0 x i8], align 1
@__kstrtabns_skb_dequeue = external dso_local constant [0 x i8], align 1
@__ksymtab_skb_dequeue = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @skb_dequeue to i32), ptr @__kstrtab_skb_dequeue, ptr @__kstrtabns_skb_dequeue }, section "___ksymtab+skb_dequeue", align 4
@__kstrtab_skb_dequeue_tail = external dso_local constant [0 x i8], align 1
@__kstrtabns_skb_dequeue_tail = external dso_local constant [0 x i8], align 1
@__ksymtab_skb_dequeue_tail = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @skb_dequeue_tail to i32), ptr @__kstrtab_skb_dequeue_tail, ptr @__kstrtabns_skb_dequeue_tail }, section "___ksymtab+skb_dequeue_tail", align 4
@__kstrtab_skb_queue_purge = external dso_local constant [0 x i8], align 1
@__kstrtabns_skb_queue_purge = external dso_local constant [0 x i8], align 1
@__ksymtab_skb_queue_purge = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @skb_queue_purge to i32), ptr @__kstrtab_skb_queue_purge, ptr @__kstrtabns_skb_queue_purge }, section "___ksymtab+skb_queue_purge", align 4
@__kstrtab_skb_queue_head = external dso_local constant [0 x i8], align 1
@__kstrtabns_skb_queue_head = external dso_local constant [0 x i8], align 1
@__ksymtab_skb_queue_head = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @skb_queue_head to i32), ptr @__kstrtab_skb_queue_head, ptr @__kstrtabns_skb_queue_head }, section "___ksymtab+skb_queue_head", align 4
@__kstrtab_skb_queue_tail = external dso_local constant [0 x i8], align 1
@__kstrtabns_skb_queue_tail = external dso_local constant [0 x i8], align 1
@__ksymtab_skb_queue_tail = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @skb_queue_tail to i32), ptr @__kstrtab_skb_queue_tail, ptr @__kstrtabns_skb_queue_tail }, section "___ksymtab+skb_queue_tail", align 4
@__kstrtab_skb_unlink = external dso_local constant [0 x i8], align 1
@__kstrtabns_skb_unlink = external dso_local constant [0 x i8], align 1
@__ksymtab_skb_unlink = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @skb_unlink to i32), ptr @__kstrtab_skb_unlink, ptr @__kstrtabns_skb_unlink }, section "___ksymtab+skb_unlink", align 4
@__kstrtab_skb_append = external dso_local constant [0 x i8], align 1
@__kstrtabns_skb_append = external dso_local constant [0 x i8], align 1
@__ksymtab_skb_append = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @skb_append to i32), ptr @__kstrtab_skb_append, ptr @__kstrtabns_skb_append }, section "___ksymtab+skb_append", align 4
@__kstrtab_skb_split = external dso_local constant [0 x i8], align 1
@__kstrtabns_skb_split = external dso_local constant [0 x i8], align 1
@__ksymtab_skb_split = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @skb_split to i32), ptr @__kstrtab_skb_split, ptr @__kstrtabns_skb_split }, section "___ksymtab+skb_split", align 4
@__kstrtab_skb_prepare_seq_read = external dso_local constant [0 x i8], align 1
@__kstrtabns_skb_prepare_seq_read = external dso_local constant [0 x i8], align 1
@__ksymtab_skb_prepare_seq_read = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @skb_prepare_seq_read to i32), ptr @__kstrtab_skb_prepare_seq_read, ptr @__kstrtabns_skb_prepare_seq_read }, section "___ksymtab+skb_prepare_seq_read", align 4
@__kstrtab_skb_seq_read = external dso_local constant [0 x i8], align 1
@__kstrtabns_skb_seq_read = external dso_local constant [0 x i8], align 1
@__ksymtab_skb_seq_read = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @skb_seq_read to i32), ptr @__kstrtab_skb_seq_read, ptr @__kstrtabns_skb_seq_read }, section "___ksymtab+skb_seq_read", align 4
@__kstrtab_skb_abort_seq_read = external dso_local constant [0 x i8], align 1
@__kstrtabns_skb_abort_seq_read = external dso_local constant [0 x i8], align 1
@__ksymtab_skb_abort_seq_read = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @skb_abort_seq_read to i32), ptr @__kstrtab_skb_abort_seq_read, ptr @__kstrtabns_skb_abort_seq_read }, section "___ksymtab+skb_abort_seq_read", align 4
@__kstrtab_skb_find_text = external dso_local constant [0 x i8], align 1
@__kstrtabns_skb_find_text = external dso_local constant [0 x i8], align 1
@__ksymtab_skb_find_text = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @skb_find_text to i32), ptr @__kstrtab_skb_find_text, ptr @__kstrtabns_skb_find_text }, section "___ksymtab+skb_find_text", align 4
@__kstrtab_skb_append_pagefrags = external dso_local constant [0 x i8], align 1
@__kstrtabns_skb_append_pagefrags = external dso_local constant [0 x i8], align 1
@__ksymtab_skb_append_pagefrags = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @skb_append_pagefrags to i32), ptr @__kstrtab_skb_append_pagefrags, ptr @__kstrtabns_skb_append_pagefrags }, section "___ksymtab_gpl+skb_append_pagefrags", align 4
@__kstrtab_skb_pull_rcsum = external dso_local constant [0 x i8], align 1
@__kstrtabns_skb_pull_rcsum = external dso_local constant [0 x i8], align 1
@__ksymtab_skb_pull_rcsum = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @skb_pull_rcsum to i32), ptr @__kstrtab_skb_pull_rcsum, ptr @__kstrtabns_skb_pull_rcsum }, section "___ksymtab_gpl+skb_pull_rcsum", align 4
@__kstrtab_skb_segment_list = external dso_local constant [0 x i8], align 1
@__kstrtabns_skb_segment_list = external dso_local constant [0 x i8], align 1
@__ksymtab_skb_segment_list = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @skb_segment_list to i32), ptr @__kstrtab_skb_segment_list, ptr @__kstrtabns_skb_segment_list }, section "___ksymtab_gpl+skb_segment_list", align 4
@.str.10 = private unnamed_addr constant [46 x i8] c"\014skbuff: skb_segment: too many frags: %u %u\0A\00", align 1
@__kstrtab_skb_segment = external dso_local constant [0 x i8], align 1
@__kstrtabns_skb_segment = external dso_local constant [0 x i8], align 1
@__ksymtab_skb_segment = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @skb_segment to i32), ptr @__kstrtab_skb_segment, ptr @__kstrtabns_skb_segment }, section "___ksymtab_gpl+skb_segment", align 4
@.str.11 = private unnamed_addr constant [18 x i8] c"skbuff_head_cache\00", align 1
@.str.12 = private unnamed_addr constant [20 x i8] c"skbuff_fclone_cache\00", align 1
@__kstrtab_skb_to_sgvec = external dso_local constant [0 x i8], align 1
@__kstrtabns_skb_to_sgvec = external dso_local constant [0 x i8], align 1
@__ksymtab_skb_to_sgvec = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @skb_to_sgvec to i32), ptr @__kstrtab_skb_to_sgvec, ptr @__kstrtabns_skb_to_sgvec }, section "___ksymtab_gpl+skb_to_sgvec", align 4
@__kstrtab_skb_to_sgvec_nomark = external dso_local constant [0 x i8], align 1
@__kstrtabns_skb_to_sgvec_nomark = external dso_local constant [0 x i8], align 1
@__ksymtab_skb_to_sgvec_nomark = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @skb_to_sgvec_nomark to i32), ptr @__kstrtab_skb_to_sgvec_nomark, ptr @__kstrtabns_skb_to_sgvec_nomark }, section "___ksymtab_gpl+skb_to_sgvec_nomark", align 4
@__kstrtab_skb_cow_data = external dso_local constant [0 x i8], align 1
@__kstrtabns_skb_cow_data = external dso_local constant [0 x i8], align 1
@__ksymtab_skb_cow_data = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @skb_cow_data to i32), ptr @__kstrtab_skb_cow_data, ptr @__kstrtabns_skb_cow_data }, section "___ksymtab_gpl+skb_cow_data", align 4
@__kstrtab_sock_queue_err_skb = external dso_local constant [0 x i8], align 1
@__kstrtabns_sock_queue_err_skb = external dso_local constant [0 x i8], align 1
@__ksymtab_sock_queue_err_skb = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @sock_queue_err_skb to i32), ptr @__kstrtab_sock_queue_err_skb, ptr @__kstrtabns_sock_queue_err_skb }, section "___ksymtab+sock_queue_err_skb", align 4
@__kstrtab_sock_dequeue_err_skb = external dso_local constant [0 x i8], align 1
@__kstrtabns_sock_dequeue_err_skb = external dso_local constant [0 x i8], align 1
@__ksymtab_sock_dequeue_err_skb = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @sock_dequeue_err_skb to i32), ptr @__kstrtab_sock_dequeue_err_skb, ptr @__kstrtabns_sock_dequeue_err_skb }, section "___ksymtab+sock_dequeue_err_skb", align 4
@__kstrtab_skb_clone_sk = external dso_local constant [0 x i8], align 1
@__kstrtabns_skb_clone_sk = external dso_local constant [0 x i8], align 1
@__ksymtab_skb_clone_sk = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @skb_clone_sk to i32), ptr @__kstrtab_skb_clone_sk, ptr @__kstrtabns_skb_clone_sk }, section "___ksymtab+skb_clone_sk", align 4
@__kstrtab_skb_complete_tx_timestamp = external dso_local constant [0 x i8], align 1
@__kstrtabns_skb_complete_tx_timestamp = external dso_local constant [0 x i8], align 1
@__ksymtab_skb_complete_tx_timestamp = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @skb_complete_tx_timestamp to i32), ptr @__kstrtab_skb_complete_tx_timestamp, ptr @__kstrtabns_skb_complete_tx_timestamp }, section "___ksymtab_gpl+skb_complete_tx_timestamp", align 4
@__kstrtab___skb_tstamp_tx = external dso_local constant [0 x i8], align 1
@__kstrtabns___skb_tstamp_tx = external dso_local constant [0 x i8], align 1
@__ksymtab___skb_tstamp_tx = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__skb_tstamp_tx to i32), ptr @__kstrtab___skb_tstamp_tx, ptr @__kstrtabns___skb_tstamp_tx }, section "___ksymtab_gpl+__skb_tstamp_tx", align 4
@__kstrtab_skb_tstamp_tx = external dso_local constant [0 x i8], align 1
@__kstrtabns_skb_tstamp_tx = external dso_local constant [0 x i8], align 1
@__ksymtab_skb_tstamp_tx = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @skb_tstamp_tx to i32), ptr @__kstrtab_skb_tstamp_tx, ptr @__kstrtabns_skb_tstamp_tx }, section "___ksymtab_gpl+skb_tstamp_tx", align 4
@__kstrtab_skb_complete_wifi_ack = external dso_local constant [0 x i8], align 1
@__kstrtabns_skb_complete_wifi_ack = external dso_local constant [0 x i8], align 1
@__ksymtab_skb_complete_wifi_ack = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @skb_complete_wifi_ack to i32), ptr @__kstrtab_skb_complete_wifi_ack, ptr @__kstrtabns_skb_complete_wifi_ack }, section "___ksymtab_gpl+skb_complete_wifi_ack", align 4
@.str.13 = private unnamed_addr constant [63 x i8] c"\014skbuff: bad partial csum: csum=%u/%u headroom=%u headlen=%u\0A\00", align 1
@__kstrtab_skb_partial_csum_set = external dso_local constant [0 x i8], align 1
@__kstrtabns_skb_partial_csum_set = external dso_local constant [0 x i8], align 1
@__ksymtab_skb_partial_csum_set = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @skb_partial_csum_set to i32), ptr @__kstrtab_skb_partial_csum_set, ptr @__kstrtabns_skb_partial_csum_set }, section "___ksymtab_gpl+skb_partial_csum_set", align 4
@__kstrtab_skb_checksum_setup = external dso_local constant [0 x i8], align 1
@__kstrtabns_skb_checksum_setup = external dso_local constant [0 x i8], align 1
@__ksymtab_skb_checksum_setup = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @skb_checksum_setup to i32), ptr @__kstrtab_skb_checksum_setup, ptr @__kstrtabns_skb_checksum_setup }, section "___ksymtab+skb_checksum_setup", align 4
@__kstrtab_skb_checksum_trimmed = external dso_local constant [0 x i8], align 1
@__kstrtabns_skb_checksum_trimmed = external dso_local constant [0 x i8], align 1
@__ksymtab_skb_checksum_trimmed = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @skb_checksum_trimmed to i32), ptr @__kstrtab_skb_checksum_trimmed, ptr @__kstrtabns_skb_checksum_trimmed }, section "___ksymtab+skb_checksum_trimmed", align 4
@.str.14 = private unnamed_addr constant [73 x i8] c"\014skbuff: %s: received packets cannot be forwarded while LRO is enabled\0A\00", align 1
@__kstrtab___skb_warn_lro_forwarding = external dso_local constant [0 x i8], align 1
@__kstrtabns___skb_warn_lro_forwarding = external dso_local constant [0 x i8], align 1
@__ksymtab___skb_warn_lro_forwarding = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__skb_warn_lro_forwarding to i32), ptr @__kstrtab___skb_warn_lro_forwarding, ptr @__kstrtabns___skb_warn_lro_forwarding }, section "___ksymtab+__skb_warn_lro_forwarding", align 4
@__kstrtab_kfree_skb_partial = external dso_local constant [0 x i8], align 1
@__kstrtabns_kfree_skb_partial = external dso_local constant [0 x i8], align 1
@__ksymtab_kfree_skb_partial = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @kfree_skb_partial to i32), ptr @__kstrtab_kfree_skb_partial, ptr @__kstrtabns_kfree_skb_partial }, section "___ksymtab+kfree_skb_partial", align 4
@skb_try_coalesce.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@__kstrtab_skb_try_coalesce = external dso_local constant [0 x i8], align 1
@__kstrtabns_skb_try_coalesce = external dso_local constant [0 x i8], align 1
@__ksymtab_skb_try_coalesce = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @skb_try_coalesce to i32), ptr @__kstrtab_skb_try_coalesce, ptr @__kstrtabns_skb_try_coalesce }, section "___ksymtab+skb_try_coalesce", align 4
@__kstrtab_skb_scrub_packet = external dso_local constant [0 x i8], align 1
@__kstrtabns_skb_scrub_packet = external dso_local constant [0 x i8], align 1
@__ksymtab_skb_scrub_packet = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @skb_scrub_packet to i32), ptr @__kstrtab_skb_scrub_packet, ptr @__kstrtabns_skb_scrub_packet }, section "___ksymtab_gpl+skb_scrub_packet", align 4
@__kstrtab_skb_gso_validate_network_len = external dso_local constant [0 x i8], align 1
@__kstrtabns_skb_gso_validate_network_len = external dso_local constant [0 x i8], align 1
@__ksymtab_skb_gso_validate_network_len = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @skb_gso_validate_network_len to i32), ptr @__kstrtab_skb_gso_validate_network_len, ptr @__kstrtabns_skb_gso_validate_network_len }, section "___ksymtab_gpl+skb_gso_validate_network_len", align 4
@__kstrtab_skb_gso_validate_mac_len = external dso_local constant [0 x i8], align 1
@__kstrtabns_skb_gso_validate_mac_len = external dso_local constant [0 x i8], align 1
@__ksymtab_skb_gso_validate_mac_len = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @skb_gso_validate_mac_len to i32), ptr @__kstrtab_skb_gso_validate_mac_len, ptr @__kstrtabns_skb_gso_validate_mac_len }, section "___ksymtab_gpl+skb_gso_validate_mac_len", align 4
@__kstrtab_skb_vlan_untag = external dso_local constant [0 x i8], align 1
@__kstrtabns_skb_vlan_untag = external dso_local constant [0 x i8], align 1
@__ksymtab_skb_vlan_untag = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @skb_vlan_untag to i32), ptr @__kstrtab_skb_vlan_untag, ptr @__kstrtabns_skb_vlan_untag }, section "___ksymtab+skb_vlan_untag", align 4
@__kstrtab_skb_ensure_writable = external dso_local constant [0 x i8], align 1
@__kstrtabns_skb_ensure_writable = external dso_local constant [0 x i8], align 1
@__ksymtab_skb_ensure_writable = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @skb_ensure_writable to i32), ptr @__kstrtab_skb_ensure_writable, ptr @__kstrtabns_skb_ensure_writable }, section "___ksymtab+skb_ensure_writable", align 4
@__skb_vlan_pop.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.15 = private unnamed_addr constant [69 x i8] c"__skb_vlan_pop got skb with skb->data not at mac header (offset %d)\0A\00", align 1
@__kstrtab___skb_vlan_pop = external dso_local constant [0 x i8], align 1
@__kstrtabns___skb_vlan_pop = external dso_local constant [0 x i8], align 1
@__ksymtab___skb_vlan_pop = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__skb_vlan_pop to i32), ptr @__kstrtab___skb_vlan_pop, ptr @__kstrtabns___skb_vlan_pop }, section "___ksymtab+__skb_vlan_pop", align 4
@__kstrtab_skb_vlan_pop = external dso_local constant [0 x i8], align 1
@__kstrtabns_skb_vlan_pop = external dso_local constant [0 x i8], align 1
@__ksymtab_skb_vlan_pop = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @skb_vlan_pop to i32), ptr @__kstrtab_skb_vlan_pop, ptr @__kstrtabns_skb_vlan_pop }, section "___ksymtab+skb_vlan_pop", align 4
@skb_vlan_push.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.16 = private unnamed_addr constant [68 x i8] c"skb_vlan_push got skb with skb->data not at mac header (offset %d)\0A\00", align 1
@__kstrtab_skb_vlan_push = external dso_local constant [0 x i8], align 1
@__kstrtabns_skb_vlan_push = external dso_local constant [0 x i8], align 1
@__ksymtab_skb_vlan_push = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @skb_vlan_push to i32), ptr @__kstrtab_skb_vlan_push, ptr @__kstrtabns_skb_vlan_push }, section "___ksymtab+skb_vlan_push", align 4
@__kstrtab_skb_eth_pop = external dso_local constant [0 x i8], align 1
@__kstrtabns_skb_eth_pop = external dso_local constant [0 x i8], align 1
@__ksymtab_skb_eth_pop = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @skb_eth_pop to i32), ptr @__kstrtab_skb_eth_pop, ptr @__kstrtabns_skb_eth_pop }, section "___ksymtab+skb_eth_pop", align 4
@__kstrtab_skb_eth_push = external dso_local constant [0 x i8], align 1
@__kstrtabns_skb_eth_push = external dso_local constant [0 x i8], align 1
@__ksymtab_skb_eth_push = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @skb_eth_push to i32), ptr @__kstrtab_skb_eth_push, ptr @__kstrtabns_skb_eth_push }, section "___ksymtab+skb_eth_push", align 4
@__kstrtab_skb_mpls_push = external dso_local constant [0 x i8], align 1
@__kstrtabns_skb_mpls_push = external dso_local constant [0 x i8], align 1
@__ksymtab_skb_mpls_push = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @skb_mpls_push to i32), ptr @__kstrtab_skb_mpls_push, ptr @__kstrtabns_skb_mpls_push }, section "___ksymtab_gpl+skb_mpls_push", align 4
@__kstrtab_skb_mpls_pop = external dso_local constant [0 x i8], align 1
@__kstrtabns_skb_mpls_pop = external dso_local constant [0 x i8], align 1
@__ksymtab_skb_mpls_pop = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @skb_mpls_pop to i32), ptr @__kstrtab_skb_mpls_pop, ptr @__kstrtabns_skb_mpls_pop }, section "___ksymtab_gpl+skb_mpls_pop", align 4
@__kstrtab_skb_mpls_update_lse = external dso_local constant [0 x i8], align 1
@__kstrtabns_skb_mpls_update_lse = external dso_local constant [0 x i8], align 1
@__ksymtab_skb_mpls_update_lse = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @skb_mpls_update_lse to i32), ptr @__kstrtab_skb_mpls_update_lse, ptr @__kstrtabns_skb_mpls_update_lse }, section "___ksymtab_gpl+skb_mpls_update_lse", align 4
@__kstrtab_skb_mpls_dec_ttl = external dso_local constant [0 x i8], align 1
@__kstrtabns_skb_mpls_dec_ttl = external dso_local constant [0 x i8], align 1
@__ksymtab_skb_mpls_dec_ttl = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @skb_mpls_dec_ttl to i32), ptr @__kstrtab_skb_mpls_dec_ttl, ptr @__kstrtabns_skb_mpls_dec_ttl }, section "___ksymtab_gpl+skb_mpls_dec_ttl", align 4
@__kstrtab_alloc_skb_with_frags = external dso_local constant [0 x i8], align 1
@__kstrtabns_alloc_skb_with_frags = external dso_local constant [0 x i8], align 1
@__ksymtab_alloc_skb_with_frags = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @alloc_skb_with_frags to i32), ptr @__kstrtab_alloc_skb_with_frags, ptr @__kstrtabns_alloc_skb_with_frags }, section "___ksymtab+alloc_skb_with_frags", align 4
@__kstrtab_pskb_extract = external dso_local constant [0 x i8], align 1
@__kstrtabns_pskb_extract = external dso_local constant [0 x i8], align 1
@__ksymtab_pskb_extract = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @pskb_extract to i32), ptr @__kstrtab_pskb_extract, ptr @__kstrtabns_pskb_extract }, section "___ksymtab+pskb_extract", align 4
@skbuff_ext_cache = internal unnamed_addr global ptr null, section ".data..ro_after_init", align 4
@__kstrtab_skb_ext_add = external dso_local constant [0 x i8], align 1
@__kstrtabns_skb_ext_add = external dso_local constant [0 x i8], align 1
@__ksymtab_skb_ext_add = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @skb_ext_add to i32), ptr @__kstrtab_skb_ext_add, ptr @__kstrtabns_skb_ext_add }, section "___ksymtab+skb_ext_add", align 4
@__kstrtab___skb_ext_del = external dso_local constant [0 x i8], align 1
@__kstrtabns___skb_ext_del = external dso_local constant [0 x i8], align 1
@__ksymtab___skb_ext_del = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__skb_ext_del to i32), ptr @__kstrtab___skb_ext_del, ptr @__kstrtabns___skb_ext_del }, section "___ksymtab+__skb_ext_del", align 4
@__kstrtab___skb_ext_put = external dso_local constant [0 x i8], align 1
@__kstrtabns___skb_ext_put = external dso_local constant [0 x i8], align 1
@__ksymtab___skb_ext_put = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__skb_ext_put to i32), ptr @__kstrtab___skb_ext_put, ptr @__kstrtabns___skb_ext_put }, section "___ksymtab+__skb_ext_put", align 4
@mem_map = external dso_local local_unnamed_addr global ptr, align 4
@memalloc_socks_key = external dso_local global %struct.static_key_false, align 4
@__tracepoint_kfree_skb = external dso_local global %struct.tracepoint, align 4
@__cpu_online_mask = external dso_local global %struct.cpumask, align 4
@movable_zone = external dso_local local_unnamed_addr global i32, align 4
@pgprot_kernel = external dso_local local_unnamed_addr global i32, align 4
@__tracepoint_consume_skb = external dso_local global %struct.tracepoint, align 4
@.str.18 = private unnamed_addr constant [18 x i8] c"include/net/dst.h\00", align 1
@.str.19 = private unnamed_addr constant [23 x i8] c"include/linux/skbuff.h\00", align 1
@skb_zerocopy_clone.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@__func__.skb_over_panic = private unnamed_addr constant [15 x i8] c"skb_over_panic\00", align 1
@.str.20 = private unnamed_addr constant [82 x i8] c"\010skbuff: %s: text:%px len:%d put:%d head:%px data:%px tail:%#lx end:%#lx dev:%s\0A\00", align 1
@.str.21 = private unnamed_addr constant [7 x i8] c"<NULL>\00", align 1
@__func__.skb_under_panic = private unnamed_addr constant [16 x i8] c"skb_under_panic\00", align 1
@.str.22 = private unnamed_addr constant [62 x i8] c"\014skbuff: %s: attempt to compute crc32c without libcrc32c.ko\0A\00", align 1
@__func__.warn_crc32c_csum_update = private unnamed_addr constant [24 x i8] c"warn_crc32c_csum_update\00", align 1
@__func__.warn_crc32c_csum_combine = private unnamed_addr constant [25 x i8] c"warn_crc32c_csum_combine\00", align 1
@.str.23 = private unnamed_addr constant [17 x i8] c"skbuff_ext_cache\00", align 1
@sysctl_tstamp_allow_data = external dso_local local_unnamed_addr global i32, align 4
@init_user_ns = external dso_local global %struct.user_namespace, align 4
@.str.24 = private unnamed_addr constant [44 x i8] c"\013skbuff: Not enough bytes to eat. Want %d\0A\00", align 1
@llvm.compiler.used = appending global [112 x ptr] [ptr @__ksymtab____pskb_trim, ptr @__ksymtab___alloc_skb, ptr @__ksymtab___kfree_skb, ptr @__ksymtab___napi_alloc_frag_align, ptr @__ksymtab___napi_alloc_skb, ptr @__ksymtab___netdev_alloc_frag_align, ptr @__ksymtab___netdev_alloc_skb, ptr @__ksymtab___pskb_copy_fclone, ptr @__ksymtab___pskb_pull_tail, ptr @__ksymtab___skb_checksum, ptr @__ksymtab___skb_checksum_complete, ptr @__ksymtab___skb_checksum_complete_head, ptr @__ksymtab___skb_ext_del, ptr @__ksymtab___skb_ext_put, ptr @__ksymtab___skb_pad, ptr @__ksymtab___skb_tstamp_tx, ptr @__ksymtab___skb_vlan_pop, ptr @__ksymtab___skb_warn_lro_forwarding, ptr @__ksymtab_alloc_skb_for_msg, ptr @__ksymtab_alloc_skb_with_frags, ptr @__ksymtab_build_skb, ptr @__ksymtab_build_skb_around, ptr @__ksymtab_consume_skb, ptr @__ksymtab_crc32c_csum_stub, ptr @__ksymtab_kfree_skb_list, ptr @__ksymtab_kfree_skb_partial, ptr @__ksymtab_kfree_skb_reason, ptr @__ksymtab_mm_account_pinned_pages, ptr @__ksymtab_mm_unaccount_pinned_pages, ptr @__ksymtab_msg_zerocopy_alloc, ptr @__ksymtab_msg_zerocopy_callback, ptr @__ksymtab_msg_zerocopy_put_abort, ptr @__ksymtab_msg_zerocopy_realloc, ptr @__ksymtab_napi_build_skb, ptr @__ksymtab_napi_consume_skb, ptr @__ksymtab_pskb_expand_head, ptr @__ksymtab_pskb_extract, ptr @__ksymtab_pskb_put, ptr @__ksymtab_pskb_trim_rcsum_slow, ptr @__ksymtab_skb_abort_seq_read, ptr @__ksymtab_skb_add_rx_frag, ptr @__ksymtab_skb_append, ptr @__ksymtab_skb_append_pagefrags, ptr @__ksymtab_skb_checksum, ptr @__ksymtab_skb_checksum_setup, ptr @__ksymtab_skb_checksum_trimmed, ptr @__ksymtab_skb_clone, ptr @__ksymtab_skb_clone_sk, ptr @__ksymtab_skb_coalesce_rx_frag, ptr @__ksymtab_skb_complete_tx_timestamp, ptr @__ksymtab_skb_complete_wifi_ack, ptr @__ksymtab_skb_copy, ptr @__ksymtab_skb_copy_and_csum_bits, ptr @__ksymtab_skb_copy_and_csum_dev, ptr @__ksymtab_skb_copy_bits, ptr @__ksymtab_skb_copy_expand, ptr @__ksymtab_skb_copy_header, ptr @__ksymtab_skb_copy_ubufs, ptr @__ksymtab_skb_cow_data, ptr @__ksymtab_skb_dequeue, ptr @__ksymtab_skb_dequeue_tail, ptr @__ksymtab_skb_dump, ptr @__ksymtab_skb_ensure_writable, ptr @__ksymtab_skb_eth_pop, ptr @__ksymtab_skb_eth_push, ptr @__ksymtab_skb_expand_head, ptr @__ksymtab_skb_ext_add, ptr @__ksymtab_skb_find_text, ptr @__ksymtab_skb_gso_validate_mac_len, ptr @__ksymtab_skb_gso_validate_network_len, ptr @__ksymtab_skb_headers_offset_update, ptr @__ksymtab_skb_morph, ptr @__ksymtab_skb_mpls_dec_ttl, ptr @__ksymtab_skb_mpls_pop, ptr @__ksymtab_skb_mpls_push, ptr @__ksymtab_skb_mpls_update_lse, ptr @__ksymtab_skb_partial_csum_set, ptr @__ksymtab_skb_prepare_seq_read, ptr @__ksymtab_skb_pull, ptr @__ksymtab_skb_pull_data, ptr @__ksymtab_skb_pull_rcsum, ptr @__ksymtab_skb_push, ptr @__ksymtab_skb_put, ptr @__ksymtab_skb_queue_head, ptr @__ksymtab_skb_queue_purge, ptr @__ksymtab_skb_queue_tail, ptr @__ksymtab_skb_realloc_headroom, ptr @__ksymtab_skb_scrub_packet, ptr @__ksymtab_skb_segment, ptr @__ksymtab_skb_segment_list, ptr @__ksymtab_skb_send_sock_locked, ptr @__ksymtab_skb_seq_read, ptr @__ksymtab_skb_splice_bits, ptr @__ksymtab_skb_split, ptr @__ksymtab_skb_store_bits, ptr @__ksymtab_skb_to_sgvec, ptr @__ksymtab_skb_to_sgvec_nomark, ptr @__ksymtab_skb_trim, ptr @__ksymtab_skb_try_coalesce, ptr @__ksymtab_skb_tstamp_tx, ptr @__ksymtab_skb_tx_error, ptr @__ksymtab_skb_unlink, ptr @__ksymtab_skb_vlan_pop, ptr @__ksymtab_skb_vlan_push, ptr @__ksymtab_skb_vlan_untag, ptr @__ksymtab_skb_zerocopy, ptr @__ksymtab_skb_zerocopy_headlen, ptr @__ksymtab_skb_zerocopy_iter_dgram, ptr @__ksymtab_skb_zerocopy_iter_stream, ptr @__ksymtab_sock_dequeue_err_skb, ptr @__ksymtab_sock_queue_err_skb, ptr @__ksymtab_sysctl_max_skb_frags], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @__napi_alloc_frag_align(i32 noundef %0, i32 noundef %1) #0 {
  %3 = tail call i32 @llvm.read_register.i32(metadata !0) #21
  %4 = inttoptr i32 %3 to ptr
  %5 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %4) #20, !srcloc !9
  %6 = add i32 %5, ptrtoint (ptr @napi_alloc_cache to i32)
  %7 = inttoptr i32 %6 to ptr
  %8 = add i32 %0, 63
  %9 = and i32 %8, -64
  %10 = tail call ptr @page_frag_alloc_align(ptr noundef %7, i32 noundef %9, i32 noundef 2592, i32 noundef %1) #21
  ret ptr %10
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @page_frag_alloc_align(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @__netdev_alloc_frag_align(i32 noundef %0, i32 noundef %1) #0 {
  %3 = add i32 %0, 63
  %4 = and i32 %3, -64
  %5 = tail call ptr @llvm.thread.pointer() #21
  %6 = getelementptr inbounds %struct.thread_info, ptr %5, i32 0, i32 1
  %7 = load volatile i32, ptr %6, align 4
  %8 = and i32 %7, 983040
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %14

10:                                               ; preds = %2
  %11 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #21, !srcloc !10
  %12 = and i32 %11, 128
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %21, label %14

14:                                               ; preds = %10, %2
  %15 = tail call i32 @llvm.read_register.i32(metadata !0) #21
  %16 = inttoptr i32 %15 to ptr
  %17 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %16) #20, !srcloc !9
  %18 = add i32 %17, ptrtoint (ptr @netdev_alloc_cache to i32)
  %19 = inttoptr i32 %18 to ptr
  %20 = tail call ptr @page_frag_alloc_align(ptr noundef %19, i32 noundef %4, i32 noundef 2592, i32 noundef %1) #21
  br label %30

21:                                               ; preds = %10
  %22 = load volatile i32, ptr %6, align 4
  %23 = add i32 %22, 512
  store volatile i32 %23, ptr %6, align 4
  tail call void asm sideeffect "", "~{memory}"() #21, !srcloc !11
  %24 = tail call i32 @llvm.read_register.i32(metadata !0) #21
  %25 = inttoptr i32 %24 to ptr
  %26 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %25) #20, !srcloc !9
  %27 = add i32 %26, ptrtoint (ptr @napi_alloc_cache to i32)
  %28 = inttoptr i32 %27 to ptr
  %29 = tail call ptr @page_frag_alloc_align(ptr noundef %28, i32 noundef %4, i32 noundef 2592, i32 noundef %1) #21
  tail call fastcc void @local_bh_enable()
  br label %30

30:                                               ; preds = %21, %14
  %31 = phi ptr [ %20, %14 ], [ %29, %21 ]
  ret ptr %31
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @local_bh_enable() #3 {
  br label %1

1:                                                ; preds = %0
  tail call void @__local_bh_enable_ip(i32 noundef ptrtoint (ptr blockaddress(@local_bh_enable, %1) to i32), i32 noundef 512) #21
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @__build_skb(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = load ptr, ptr @skbuff_head_cache, align 4
  %4 = tail call noalias align 8 ptr @kmem_cache_alloc(ptr noundef %3, i32 noundef 2592) #21
  %5 = icmp eq ptr %4, null
  br i1 %5, label %24, label %6, !prof !12

6:                                                ; preds = %2
  tail call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(144) %4, i8 0, i32 144, i1 false)
  %7 = icmp eq i32 %1, 0
  br i1 %7, label %8, label %10

8:                                                ; preds = %6
  %9 = tail call i32 @ksize(ptr noundef %0) #21
  br label %10

10:                                               ; preds = %8, %6
  %11 = phi i32 [ %9, %8 ], [ %1, %6 ]
  %12 = add i32 %11, -256
  %13 = add i32 %11, 192
  %14 = getelementptr inbounds %struct.sk_buff, ptr %4, i32 0, i32 18
  store i32 %13, ptr %14, align 8
  %15 = getelementptr inbounds %struct.sk_buff, ptr %4, i32 0, i32 19
  store volatile i32 1, ptr %15, align 4
  %16 = getelementptr inbounds %struct.sk_buff, ptr %4, i32 0, i32 16
  store ptr %0, ptr %16, align 8
  %17 = getelementptr inbounds %struct.sk_buff, ptr %4, i32 0, i32 17
  store ptr %0, ptr %17, align 4
  %18 = getelementptr inbounds %struct.sk_buff, ptr %4, i32 0, i32 14
  store ptr %0, ptr %18, align 8
  %19 = getelementptr i8, ptr %0, i32 %12
  %20 = getelementptr inbounds %struct.sk_buff, ptr %4, i32 0, i32 15
  store ptr %19, ptr %20, align 4
  %21 = getelementptr inbounds %struct.sk_buff, ptr %4, i32 0, i32 13, i32 0, i32 19
  store i16 -1, ptr %21, align 2
  %22 = getelementptr inbounds %struct.sk_buff, ptr %4, i32 0, i32 13, i32 0, i32 17
  store i16 -1, ptr %22, align 2
  tail call void @llvm.memset.p0.i32(ptr noundef align 8 dereferenceable(32) %19, i8 0, i32 32, i1 false) #21
  %23 = getelementptr inbounds %struct.skb_shared_info, ptr %19, i32 0, i32 10
  store volatile i32 1, ptr %23, align 4
  br label %24

24:                                               ; preds = %10, %2
  ret ptr %4
}

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @kmem_cache_alloc(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @build_skb(ptr noundef %0, i32 noundef %1) #0 {
  %3 = load ptr, ptr @skbuff_head_cache, align 4
  %4 = tail call noalias align 8 ptr @kmem_cache_alloc(ptr noundef %3, i32 noundef 2592) #21
  %5 = icmp eq ptr %4, null
  br i1 %5, label %48, label %6, !prof !12

6:                                                ; preds = %2
  tail call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(144) %4, i8 0, i32 144, i1 false) #21
  %7 = icmp eq i32 %1, 0
  br i1 %7, label %8, label %10

8:                                                ; preds = %6
  %9 = tail call i32 @ksize(ptr noundef %0) #21
  br label %10

10:                                               ; preds = %8, %6
  %11 = phi i32 [ %9, %8 ], [ %1, %6 ]
  %12 = add i32 %11, -256
  %13 = add i32 %11, 192
  %14 = getelementptr inbounds %struct.sk_buff, ptr %4, i32 0, i32 18
  store i32 %13, ptr %14, align 8
  %15 = getelementptr inbounds %struct.sk_buff, ptr %4, i32 0, i32 19
  store volatile i32 1, ptr %15, align 4
  %16 = getelementptr inbounds %struct.sk_buff, ptr %4, i32 0, i32 16
  store ptr %0, ptr %16, align 8
  %17 = getelementptr inbounds %struct.sk_buff, ptr %4, i32 0, i32 17
  store ptr %0, ptr %17, align 4
  %18 = getelementptr inbounds %struct.sk_buff, ptr %4, i32 0, i32 14
  store ptr %0, ptr %18, align 8
  %19 = getelementptr i8, ptr %0, i32 %12
  %20 = getelementptr inbounds %struct.sk_buff, ptr %4, i32 0, i32 15
  store ptr %19, ptr %20, align 4
  %21 = getelementptr inbounds %struct.sk_buff, ptr %4, i32 0, i32 13, i32 0, i32 19
  store i16 -1, ptr %21, align 2
  %22 = getelementptr inbounds %struct.sk_buff, ptr %4, i32 0, i32 13, i32 0, i32 17
  store i16 -1, ptr %22, align 2
  tail call void @llvm.memset.p0.i32(ptr noundef align 8 dereferenceable(32) %19, i8 0, i32 32, i1 false) #21
  %23 = getelementptr inbounds %struct.skb_shared_info, ptr %19, i32 0, i32 10
  store volatile i32 1, ptr %23, align 4
  br i1 %7, label %48, label %24

24:                                               ; preds = %10
  %25 = getelementptr inbounds %struct.sk_buff, ptr %4, i32 0, i32 11
  store i8 32, ptr %25, align 2
  %26 = load ptr, ptr @mem_map, align 4
  %27 = ptrtoint ptr %0 to i32
  %28 = add i32 %27, 1073741824
  %29 = lshr i32 %28, 12
  %30 = getelementptr %struct.page, ptr %26, i32 %29, i32 1
  %31 = load volatile i32, ptr %30, align 4
  %32 = and i32 %31, 1
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %36, label %34, !prof !13

34:                                               ; preds = %24
  %35 = add i32 %31, -1
  br label %39

36:                                               ; preds = %24
  %37 = getelementptr %struct.page, ptr %26, i32 %29
  %38 = ptrtoint ptr %37 to i32
  br label %39

39:                                               ; preds = %36, %34
  %40 = phi i32 [ %35, %34 ], [ %38, %36 ]
  %41 = inttoptr i32 %40 to ptr
  %42 = getelementptr inbounds %struct.page, ptr %41, i32 0, i32 1
  %43 = load ptr, ptr %42, align 4
  %44 = ptrtoint ptr %43 to i32
  %45 = and i32 %44, 2
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %48, label %47

47:                                               ; preds = %39
  store i8 96, ptr %25, align 2
  br label %48

48:                                               ; preds = %47, %39, %10, %2
  ret ptr %4
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @build_skb_around(ptr noundef %0, ptr noundef %1, i32 noundef %2) #0 {
  %4 = icmp eq ptr %0, null
  br i1 %4, label %50, label %5, !prof !12

5:                                                ; preds = %3
  %6 = icmp eq i32 %2, 0
  br i1 %6, label %7, label %9

7:                                                ; preds = %5
  %8 = tail call i32 @ksize(ptr noundef %1) #21
  br label %9

9:                                                ; preds = %7, %5
  %10 = phi i32 [ %8, %7 ], [ %2, %5 ]
  %11 = add i32 %10, -256
  %12 = add i32 %10, 192
  %13 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 18
  store i32 %12, ptr %13, align 8
  %14 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 19
  store volatile i32 1, ptr %14, align 4
  %15 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 16
  store ptr %1, ptr %15, align 8
  %16 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 17
  store ptr %1, ptr %16, align 4
  %17 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 14
  store ptr %1, ptr %17, align 8
  %18 = getelementptr i8, ptr %1, i32 %11
  %19 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 15
  store ptr %18, ptr %19, align 4
  %20 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 13, i32 0, i32 19
  store i16 -1, ptr %20, align 2
  %21 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 13, i32 0, i32 17
  store i16 -1, ptr %21, align 2
  tail call void @llvm.memset.p0.i32(ptr noundef align 8 dereferenceable(32) %18, i8 0, i32 32, i1 false) #21
  %22 = getelementptr inbounds %struct.skb_shared_info, ptr %18, i32 0, i32 10
  store volatile i32 1, ptr %22, align 4
  br i1 %6, label %50, label %23

23:                                               ; preds = %9
  %24 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 11
  %25 = load i8, ptr %24, align 2
  %26 = or i8 %25, 32
  store i8 %26, ptr %24, align 2
  %27 = load ptr, ptr @mem_map, align 4
  %28 = ptrtoint ptr %1 to i32
  %29 = add i32 %28, 1073741824
  %30 = lshr i32 %29, 12
  %31 = getelementptr %struct.page, ptr %27, i32 %30, i32 1
  %32 = load volatile i32, ptr %31, align 4
  %33 = and i32 %32, 1
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %37, label %35, !prof !13

35:                                               ; preds = %23
  %36 = add i32 %32, -1
  br label %40

37:                                               ; preds = %23
  %38 = getelementptr %struct.page, ptr %27, i32 %30
  %39 = ptrtoint ptr %38 to i32
  br label %40

40:                                               ; preds = %37, %35
  %41 = phi i32 [ %36, %35 ], [ %39, %37 ]
  %42 = inttoptr i32 %41 to ptr
  %43 = getelementptr inbounds %struct.page, ptr %42, i32 0, i32 1
  %44 = load ptr, ptr %43, align 4
  %45 = ptrtoint ptr %44 to i32
  %46 = and i32 %45, 2
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %50, label %48

48:                                               ; preds = %40
  %49 = or i8 %25, 96
  store i8 %49, ptr %24, align 2
  br label %50

50:                                               ; preds = %48, %40, %9, %3
  ret ptr %0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @napi_build_skb(ptr noundef %0, i32 noundef %1) #0 {
  %3 = tail call i32 @llvm.read_register.i32(metadata !0) #21
  %4 = inttoptr i32 %3 to ptr
  %5 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %4) #20, !srcloc !9
  %6 = add i32 %5, ptrtoint (ptr @napi_alloc_cache to i32)
  %7 = inttoptr i32 %6 to ptr
  %8 = getelementptr inbounds %struct.napi_alloc_cache, ptr %7, i32 0, i32 1
  %9 = load i32, ptr %8, align 4
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %16, !prof !12

11:                                               ; preds = %2
  %12 = load ptr, ptr @skbuff_head_cache, align 4
  %13 = getelementptr inbounds %struct.napi_alloc_cache, ptr %7, i32 0, i32 2
  %14 = tail call i32 @kmem_cache_alloc_bulk(ptr noundef %12, i32 noundef 2592, i32 noundef 16, ptr noundef %13) #21
  store i32 %14, ptr %8, align 4
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %67, label %16, !prof !12

16:                                               ; preds = %11, %2
  %17 = phi i32 [ %14, %11 ], [ %9, %2 ]
  %18 = add i32 %17, -1
  store i32 %18, ptr %8, align 4
  %19 = getelementptr %struct.napi_alloc_cache, ptr %7, i32 0, i32 2, i32 %18
  %20 = load ptr, ptr %19, align 4
  %21 = icmp eq ptr %20, null
  br i1 %21, label %67, label %22, !prof !12

22:                                               ; preds = %16
  tail call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(144) %20, i8 0, i32 144, i1 false) #21
  %23 = icmp eq i32 %1, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %22
  %25 = tail call i32 @ksize(ptr noundef %0) #21
  br label %26

26:                                               ; preds = %24, %22
  %27 = phi i32 [ %25, %24 ], [ %1, %22 ]
  %28 = add i32 %27, -256
  %29 = add i32 %27, 192
  %30 = getelementptr inbounds %struct.sk_buff, ptr %20, i32 0, i32 18
  store i32 %29, ptr %30, align 8
  %31 = getelementptr inbounds %struct.sk_buff, ptr %20, i32 0, i32 19
  store volatile i32 1, ptr %31, align 4
  %32 = getelementptr inbounds %struct.sk_buff, ptr %20, i32 0, i32 16
  store ptr %0, ptr %32, align 8
  %33 = getelementptr inbounds %struct.sk_buff, ptr %20, i32 0, i32 17
  store ptr %0, ptr %33, align 4
  %34 = getelementptr inbounds %struct.sk_buff, ptr %20, i32 0, i32 14
  store ptr %0, ptr %34, align 8
  %35 = getelementptr i8, ptr %0, i32 %28
  %36 = getelementptr inbounds %struct.sk_buff, ptr %20, i32 0, i32 15
  store ptr %35, ptr %36, align 4
  %37 = getelementptr inbounds %struct.sk_buff, ptr %20, i32 0, i32 13, i32 0, i32 19
  store i16 -1, ptr %37, align 2
  %38 = getelementptr inbounds %struct.sk_buff, ptr %20, i32 0, i32 13, i32 0, i32 17
  store i16 -1, ptr %38, align 2
  tail call void @llvm.memset.p0.i32(ptr noundef align 8 dereferenceable(32) %35, i8 0, i32 32, i1 false) #21
  %39 = getelementptr inbounds %struct.skb_shared_info, ptr %35, i32 0, i32 10
  store volatile i32 1, ptr %39, align 4
  br i1 %23, label %67, label %40, !prof !14

40:                                               ; preds = %26
  %41 = getelementptr inbounds %struct.sk_buff, ptr %20, i32 0, i32 11
  %42 = load i8, ptr %41, align 2
  %43 = or i8 %42, 32
  store i8 %43, ptr %41, align 2
  %44 = load ptr, ptr @mem_map, align 4
  %45 = ptrtoint ptr %0 to i32
  %46 = add i32 %45, 1073741824
  %47 = lshr i32 %46, 12
  %48 = getelementptr %struct.page, ptr %44, i32 %47, i32 1
  %49 = load volatile i32, ptr %48, align 4
  %50 = and i32 %49, 1
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %54, label %52, !prof !13

52:                                               ; preds = %40
  %53 = add i32 %49, -1
  br label %57

54:                                               ; preds = %40
  %55 = getelementptr %struct.page, ptr %44, i32 %47
  %56 = ptrtoint ptr %55 to i32
  br label %57

57:                                               ; preds = %54, %52
  %58 = phi i32 [ %53, %52 ], [ %56, %54 ]
  %59 = inttoptr i32 %58 to ptr
  %60 = getelementptr inbounds %struct.page, ptr %59, i32 0, i32 1
  %61 = load ptr, ptr %60, align 4
  %62 = ptrtoint ptr %61 to i32
  %63 = and i32 %62, 2
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %67, label %65

65:                                               ; preds = %57
  %66 = or i8 %42, 96
  store i8 %66, ptr %41, align 2
  br label %67

67:                                               ; preds = %65, %57, %26, %16, %11
  %68 = phi ptr [ %20, %26 ], [ %20, %57 ], [ %20, %65 ], [ null, %16 ], [ null, %11 ]
  ret ptr %68
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @__alloc_skb(i32 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) #0 {
  %5 = and i32 %2, 1
  %6 = icmp eq i32 %5, 0
  %7 = load ptr, ptr @skbuff_fclone_cache, align 4
  %8 = load ptr, ptr @skbuff_head_cache, align 4
  %9 = select i1 %6, ptr %8, ptr %7
  %10 = load volatile i32, ptr @memalloc_socks_key, align 4
  %11 = icmp slt i32 %10, 1
  %12 = and i32 %2, 2
  %13 = icmp eq i32 %12, 0
  %14 = or i1 %13, %11
  %15 = or i32 %1, 131072
  %16 = select i1 %14, i32 %1, i32 %15
  %17 = and i32 %2, 5
  %18 = icmp eq i32 %17, 4
  br i1 %18, label %19, label %38

19:                                               ; preds = %4
  switch i32 %3, label %38 [
    i32 -1, label %20
    i32 0, label %20
  ], !prof !15

20:                                               ; preds = %19, %19
  %21 = tail call i32 @llvm.read_register.i32(metadata !0) #21
  %22 = inttoptr i32 %21 to ptr
  %23 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %22) #20, !srcloc !9
  %24 = add i32 %23, ptrtoint (ptr @napi_alloc_cache to i32)
  %25 = inttoptr i32 %24 to ptr
  %26 = getelementptr inbounds %struct.napi_alloc_cache, ptr %25, i32 0, i32 1
  %27 = load i32, ptr %26, align 4
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %33, !prof !12

29:                                               ; preds = %20
  %30 = getelementptr inbounds %struct.napi_alloc_cache, ptr %25, i32 0, i32 2
  %31 = tail call i32 @kmem_cache_alloc_bulk(ptr noundef %8, i32 noundef 2592, i32 noundef 16, ptr noundef %30) #21
  store i32 %31, ptr %26, align 4
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %94, label %33, !prof !12

33:                                               ; preds = %29, %20
  %34 = phi i32 [ %31, %29 ], [ %27, %20 ]
  %35 = add i32 %34, -1
  store i32 %35, ptr %26, align 4
  %36 = getelementptr %struct.napi_alloc_cache, ptr %25, i32 0, i32 2, i32 %35
  %37 = load ptr, ptr %36, align 4
  br label %41

38:                                               ; preds = %19, %4
  %39 = and i32 %16, -2
  %40 = tail call noalias align 8 ptr @kmem_cache_alloc(ptr noundef %9, i32 noundef %39) #21
  br label %41

41:                                               ; preds = %38, %33
  %42 = phi ptr [ %40, %38 ], [ %37, %33 ]
  %43 = icmp eq ptr %42, null
  br i1 %43, label %94, label %44, !prof !12

44:                                               ; preds = %41
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr nonnull %42) #21, !srcloc !16
  %45 = add i32 %0, 319
  %46 = and i32 %45, -64
  %47 = or i32 %16, 532480
  %48 = tail call ptr @llvm.returnaddress(i32 0) #21
  %49 = ptrtoint ptr %48 to i32
  %50 = tail call ptr @__kmalloc_track_caller(i32 noundef %46, i32 noundef %47, i32 noundef %49) #21
  %51 = icmp eq ptr %50, null
  br i1 %51, label %52, label %57

52:                                               ; preds = %44
  %53 = tail call zeroext i1 @gfp_pfmemalloc_allowed(i32 noundef %16) #21
  br i1 %53, label %54, label %93

54:                                               ; preds = %52
  %55 = tail call ptr @__kmalloc_track_caller(i32 noundef %46, i32 noundef %16, i32 noundef %49) #21
  %56 = icmp eq ptr %55, null
  br i1 %56, label %93, label %57, !prof !12

57:                                               ; preds = %54, %44
  %58 = phi i8 [ 64, %54 ], [ 0, %44 ]
  %59 = phi ptr [ %55, %54 ], [ %50, %44 ]
  %60 = tail call i32 @ksize(ptr noundef nonnull %59) #21
  %61 = add i32 %60, -256
  %62 = getelementptr i8, ptr %59, i32 %61
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %62) #21, !srcloc !16
  tail call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(144) %42, i8 0, i32 144, i1 false)
  %63 = icmp eq i32 %60, 0
  br i1 %63, label %64, label %67

64:                                               ; preds = %57
  %65 = tail call i32 @ksize(ptr noundef nonnull %59) #21
  %66 = add i32 %65, -256
  br label %67

67:                                               ; preds = %64, %57
  %68 = phi i32 [ %61, %57 ], [ %66, %64 ]
  %69 = phi i32 [ %60, %57 ], [ %65, %64 ]
  %70 = add i32 %69, 192
  %71 = getelementptr inbounds %struct.sk_buff, ptr %42, i32 0, i32 18
  store i32 %70, ptr %71, align 8
  %72 = getelementptr inbounds %struct.sk_buff, ptr %42, i32 0, i32 19
  store volatile i32 1, ptr %72, align 4
  %73 = getelementptr inbounds %struct.sk_buff, ptr %42, i32 0, i32 16
  store ptr %59, ptr %73, align 8
  %74 = getelementptr inbounds %struct.sk_buff, ptr %42, i32 0, i32 17
  store ptr %59, ptr %74, align 4
  %75 = getelementptr inbounds %struct.sk_buff, ptr %42, i32 0, i32 14
  store ptr %59, ptr %75, align 8
  %76 = getelementptr i8, ptr %59, i32 %68
  %77 = getelementptr inbounds %struct.sk_buff, ptr %42, i32 0, i32 15
  store ptr %76, ptr %77, align 4
  %78 = getelementptr inbounds %struct.sk_buff, ptr %42, i32 0, i32 13, i32 0, i32 19
  store i16 -1, ptr %78, align 2
  %79 = getelementptr inbounds %struct.sk_buff, ptr %42, i32 0, i32 13, i32 0, i32 17
  store i16 -1, ptr %79, align 2
  tail call void @llvm.memset.p0.i32(ptr noundef align 8 dereferenceable(32) %76, i8 0, i32 32, i1 false) #21
  %80 = getelementptr inbounds %struct.skb_shared_info, ptr %76, i32 0, i32 10
  store volatile i32 1, ptr %80, align 4
  %81 = getelementptr inbounds %struct.sk_buff, ptr %42, i32 0, i32 11
  %82 = load i8, ptr %81, align 2
  %83 = and i8 %82, -65
  %84 = or i8 %83, %58
  store i8 %84, ptr %81, align 2
  br i1 %6, label %94, label %85

85:                                               ; preds = %67
  %86 = and i8 %84, -13
  %87 = or i8 %86, 4
  store i8 %87, ptr %81, align 2
  %88 = getelementptr inbounds %struct.sk_buff_fclones, ptr %42, i32 0, i32 2
  store volatile i32 1, ptr %88, align 4
  %89 = getelementptr inbounds %struct.sk_buff_fclones, ptr %42, i32 0, i32 1, i32 11
  %90 = load i8, ptr %89, align 2
  %91 = and i8 %90, -13
  %92 = or i8 %91, 8
  store i8 %92, ptr %89, align 2
  br label %94

93:                                               ; preds = %54, %52
  tail call void @kmem_cache_free(ptr noundef %9, ptr noundef nonnull %42) #21
  br label %94

94:                                               ; preds = %93, %85, %67, %41, %29
  %95 = phi ptr [ null, %93 ], [ null, %41 ], [ %42, %85 ], [ %42, %67 ], [ null, %29 ]
  ret ptr %95
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ksize(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kmem_cache_free(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @__netdev_alloc_skb(ptr noundef %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = add i32 %1, -705
  %5 = icmp ult i32 %4, 3072
  %6 = and i32 %2, 1025
  %7 = icmp eq i32 %6, 0
  %8 = and i1 %5, %7
  br i1 %8, label %13, label %9

9:                                                ; preds = %3
  %10 = add i32 %1, 64
  %11 = tail call ptr @__alloc_skb(i32 noundef %10, i32 noundef %2, i32 noundef 2, i32 noundef -1)
  %12 = icmp eq ptr %11, null
  br i1 %12, label %94, label %85

13:                                               ; preds = %3
  %14 = add nuw nsw i32 %1, 383
  %15 = and i32 %14, -64
  %16 = load volatile i32, ptr @memalloc_socks_key, align 4
  %17 = icmp slt i32 %16, 1
  %18 = or i32 %2, 131072
  %19 = select i1 %17, i32 %2, i32 %18
  %20 = tail call ptr @llvm.thread.pointer() #21
  %21 = getelementptr inbounds %struct.thread_info, ptr %20, i32 0, i32 1
  %22 = load volatile i32, ptr %21, align 4
  %23 = and i32 %22, 983040
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %29

25:                                               ; preds = %13
  %26 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #21, !srcloc !10
  %27 = and i32 %26, 128
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %38, label %29

29:                                               ; preds = %25, %13
  %30 = tail call i32 @llvm.read_register.i32(metadata !0) #21
  %31 = inttoptr i32 %30 to ptr
  %32 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %31) #20, !srcloc !9
  %33 = add i32 %32, ptrtoint (ptr @netdev_alloc_cache to i32)
  %34 = inttoptr i32 %33 to ptr
  %35 = tail call ptr @page_frag_alloc_align(ptr noundef %34, i32 noundef %15, i32 noundef %19, i32 noundef -1) #21
  %36 = getelementptr inbounds %struct.page_frag_cache, ptr %34, i32 0, i32 4
  %37 = load i8, ptr %36, align 4, !range !17
  br label %49

38:                                               ; preds = %25
  %39 = load volatile i32, ptr %21, align 4
  %40 = add i32 %39, 512
  store volatile i32 %40, ptr %21, align 4
  tail call void asm sideeffect "", "~{memory}"() #21, !srcloc !11
  %41 = tail call i32 @llvm.read_register.i32(metadata !0) #21
  %42 = inttoptr i32 %41 to ptr
  %43 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %42) #20, !srcloc !9
  %44 = add i32 %43, ptrtoint (ptr @napi_alloc_cache to i32)
  %45 = inttoptr i32 %44 to ptr
  %46 = tail call ptr @page_frag_alloc_align(ptr noundef %45, i32 noundef %15, i32 noundef %19, i32 noundef -1) #21
  %47 = getelementptr inbounds %struct.page_frag_cache, ptr %45, i32 0, i32 4
  %48 = load i8, ptr %47, align 4, !range !17
  tail call fastcc void @local_bh_enable()
  br label %49

49:                                               ; preds = %38, %29
  %50 = phi ptr [ %35, %29 ], [ %46, %38 ]
  %51 = phi i8 [ %37, %29 ], [ %48, %38 ]
  %52 = icmp eq i8 %51, 0
  %53 = icmp eq ptr %50, null
  br i1 %53, label %94, label %54, !prof !12

54:                                               ; preds = %49
  %55 = load ptr, ptr @skbuff_head_cache, align 4
  %56 = tail call noalias align 8 ptr @kmem_cache_alloc(ptr noundef %55, i32 noundef 2592) #21
  %57 = icmp eq ptr %56, null
  br i1 %57, label %62, label %58, !prof !12

58:                                               ; preds = %54
  tail call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(144) %56, i8 0, i32 144, i1 false) #21
  %59 = icmp eq i32 %15, 0
  br i1 %59, label %60, label %63

60:                                               ; preds = %58
  %61 = tail call i32 @ksize(ptr noundef nonnull %50) #21
  br label %63

62:                                               ; preds = %54
  tail call void @page_frag_free(ptr noundef nonnull %50) #21
  br label %94

63:                                               ; preds = %60, %58
  %64 = phi i32 [ %61, %60 ], [ %15, %58 ]
  %65 = add i32 %64, -256
  %66 = add i32 %64, 192
  %67 = getelementptr inbounds %struct.sk_buff, ptr %56, i32 0, i32 18
  store i32 %66, ptr %67, align 8
  %68 = getelementptr inbounds %struct.sk_buff, ptr %56, i32 0, i32 19
  store volatile i32 1, ptr %68, align 4
  %69 = getelementptr inbounds %struct.sk_buff, ptr %56, i32 0, i32 16
  store ptr %50, ptr %69, align 8
  %70 = getelementptr inbounds %struct.sk_buff, ptr %56, i32 0, i32 17
  store ptr %50, ptr %70, align 4
  %71 = getelementptr inbounds %struct.sk_buff, ptr %56, i32 0, i32 14
  store ptr %50, ptr %71, align 8
  %72 = getelementptr i8, ptr %50, i32 %65
  %73 = getelementptr inbounds %struct.sk_buff, ptr %56, i32 0, i32 15
  store ptr %72, ptr %73, align 4
  %74 = getelementptr inbounds %struct.sk_buff, ptr %56, i32 0, i32 13, i32 0, i32 19
  store i16 -1, ptr %74, align 2
  %75 = getelementptr inbounds %struct.sk_buff, ptr %56, i32 0, i32 13, i32 0, i32 17
  store i16 -1, ptr %75, align 2
  tail call void @llvm.memset.p0.i32(ptr noundef align 8 dereferenceable(32) %72, i8 0, i32 32, i1 false) #21
  %76 = getelementptr inbounds %struct.skb_shared_info, ptr %72, i32 0, i32 10
  store volatile i32 1, ptr %76, align 4
  %77 = getelementptr inbounds %struct.sk_buff, ptr %56, i32 0, i32 11
  %78 = load i8, ptr %77, align 2
  br i1 %52, label %81, label %79

79:                                               ; preds = %63
  %80 = or i8 %78, 64
  store i8 %80, ptr %77, align 2
  br label %81

81:                                               ; preds = %79, %63
  %82 = phi i8 [ %80, %79 ], [ %78, %63 ]
  %83 = getelementptr inbounds %struct.sk_buff, ptr %56, i32 0, i32 11
  %84 = or i8 %82, 32
  store i8 %84, ptr %83, align 2
  br label %85

85:                                               ; preds = %81, %9
  %86 = phi ptr [ %11, %9 ], [ %56, %81 ]
  %87 = getelementptr inbounds %struct.sk_buff, ptr %86, i32 0, i32 17
  %88 = load ptr, ptr %87, align 4
  %89 = getelementptr i8, ptr %88, i32 64
  store ptr %89, ptr %87, align 4
  %90 = getelementptr inbounds %struct.sk_buff, ptr %86, i32 0, i32 14
  %91 = load ptr, ptr %90, align 8
  %92 = getelementptr i8, ptr %91, i32 64
  store ptr %92, ptr %90, align 8
  %93 = getelementptr inbounds %struct.anon, ptr %86, i32 0, i32 2
  store ptr %0, ptr %93, align 8
  br label %94

94:                                               ; preds = %85, %62, %49, %9
  %95 = phi ptr [ null, %62 ], [ null, %49 ], [ %86, %85 ], [ null, %9 ]
  ret ptr %95
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @__napi_alloc_skb(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = add i32 %1, -703
  %5 = icmp ult i32 %4, 3072
  %6 = and i32 %2, 1025
  %7 = icmp eq i32 %6, 0
  %8 = and i1 %5, %7
  br i1 %8, label %13, label %9

9:                                                ; preds = %3
  %10 = add i32 %1, 66
  %11 = tail call ptr @__alloc_skb(i32 noundef %10, i32 noundef %2, i32 noundef 6, i32 noundef -1)
  %12 = icmp eq ptr %11, null
  br i1 %12, label %88, label %77

13:                                               ; preds = %3
  %14 = tail call i32 @llvm.read_register.i32(metadata !0) #21
  %15 = inttoptr i32 %14 to ptr
  %16 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %15) #20, !srcloc !9
  %17 = add i32 %16, ptrtoint (ptr @napi_alloc_cache to i32)
  %18 = inttoptr i32 %17 to ptr
  %19 = add nuw nsw i32 %1, 385
  %20 = and i32 %19, -64
  %21 = load volatile i32, ptr @memalloc_socks_key, align 4
  %22 = icmp slt i32 %21, 1
  %23 = or i32 %2, 131072
  %24 = select i1 %22, i32 %2, i32 %23
  %25 = tail call ptr @page_frag_alloc_align(ptr noundef %18, i32 noundef %20, i32 noundef %24, i32 noundef -1) #21
  %26 = icmp eq ptr %25, null
  br i1 %26, label %88, label %27, !prof !12

27:                                               ; preds = %13
  %28 = tail call i32 @llvm.read_register.i32(metadata !0) #21
  %29 = inttoptr i32 %28 to ptr
  %30 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %29) #20, !srcloc !9
  %31 = add i32 %30, ptrtoint (ptr @napi_alloc_cache to i32)
  %32 = inttoptr i32 %31 to ptr
  %33 = getelementptr inbounds %struct.napi_alloc_cache, ptr %32, i32 0, i32 1
  %34 = load i32, ptr %33, align 4
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %36, label %41, !prof !12

36:                                               ; preds = %27
  %37 = load ptr, ptr @skbuff_head_cache, align 4
  %38 = getelementptr inbounds %struct.napi_alloc_cache, ptr %32, i32 0, i32 2
  %39 = tail call i32 @kmem_cache_alloc_bulk(ptr noundef %37, i32 noundef 2592, i32 noundef 16, ptr noundef %38) #21
  store i32 %39, ptr %33, align 4
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %51, label %41, !prof !12

41:                                               ; preds = %36, %27
  %42 = phi i32 [ %39, %36 ], [ %34, %27 ]
  %43 = add i32 %42, -1
  store i32 %43, ptr %33, align 4
  %44 = getelementptr %struct.napi_alloc_cache, ptr %32, i32 0, i32 2, i32 %43
  %45 = load ptr, ptr %44, align 4
  %46 = icmp eq ptr %45, null
  br i1 %46, label %51, label %47, !prof !12

47:                                               ; preds = %41
  tail call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(144) %45, i8 0, i32 144, i1 false) #21
  %48 = icmp eq i32 %20, 0
  br i1 %48, label %49, label %52

49:                                               ; preds = %47
  %50 = tail call i32 @ksize(ptr noundef nonnull %25) #21
  br label %52

51:                                               ; preds = %41, %36
  tail call void @page_frag_free(ptr noundef nonnull %25) #21
  br label %88

52:                                               ; preds = %49, %47
  %53 = phi i32 [ %50, %49 ], [ %20, %47 ]
  %54 = add i32 %53, -256
  %55 = add i32 %53, 192
  %56 = getelementptr inbounds %struct.sk_buff, ptr %45, i32 0, i32 18
  store i32 %55, ptr %56, align 8
  %57 = getelementptr inbounds %struct.sk_buff, ptr %45, i32 0, i32 19
  store volatile i32 1, ptr %57, align 4
  %58 = getelementptr inbounds %struct.sk_buff, ptr %45, i32 0, i32 16
  store ptr %25, ptr %58, align 8
  %59 = getelementptr inbounds %struct.sk_buff, ptr %45, i32 0, i32 17
  store ptr %25, ptr %59, align 4
  %60 = getelementptr inbounds %struct.sk_buff, ptr %45, i32 0, i32 14
  store ptr %25, ptr %60, align 8
  %61 = getelementptr i8, ptr %25, i32 %54
  %62 = getelementptr inbounds %struct.sk_buff, ptr %45, i32 0, i32 15
  store ptr %61, ptr %62, align 4
  %63 = getelementptr inbounds %struct.sk_buff, ptr %45, i32 0, i32 13, i32 0, i32 19
  store i16 -1, ptr %63, align 2
  %64 = getelementptr inbounds %struct.sk_buff, ptr %45, i32 0, i32 13, i32 0, i32 17
  store i16 -1, ptr %64, align 2
  tail call void @llvm.memset.p0.i32(ptr noundef align 8 dereferenceable(32) %61, i8 0, i32 32, i1 false) #21
  %65 = getelementptr inbounds %struct.skb_shared_info, ptr %61, i32 0, i32 10
  store volatile i32 1, ptr %65, align 4
  %66 = getelementptr inbounds %struct.page_frag_cache, ptr %18, i32 0, i32 4
  %67 = load i8, ptr %66, align 4, !range !17
  %68 = icmp eq i8 %67, 0
  %69 = getelementptr inbounds %struct.sk_buff, ptr %45, i32 0, i32 11
  %70 = load i8, ptr %69, align 2
  br i1 %68, label %73, label %71

71:                                               ; preds = %52
  %72 = or i8 %70, 64
  store i8 %72, ptr %69, align 2
  br label %73

73:                                               ; preds = %71, %52
  %74 = phi i8 [ %72, %71 ], [ %70, %52 ]
  %75 = getelementptr inbounds %struct.sk_buff, ptr %45, i32 0, i32 11
  %76 = or i8 %74, 32
  store i8 %76, ptr %75, align 2
  br label %77

77:                                               ; preds = %73, %9
  %78 = phi ptr [ %11, %9 ], [ %45, %73 ]
  %79 = getelementptr inbounds %struct.sk_buff, ptr %78, i32 0, i32 17
  %80 = load ptr, ptr %79, align 4
  %81 = getelementptr i8, ptr %80, i32 66
  store ptr %81, ptr %79, align 4
  %82 = getelementptr inbounds %struct.sk_buff, ptr %78, i32 0, i32 14
  %83 = load ptr, ptr %82, align 8
  %84 = getelementptr i8, ptr %83, i32 66
  store ptr %84, ptr %82, align 8
  %85 = getelementptr inbounds %struct.napi_struct, ptr %0, i32 0, i32 6
  %86 = load ptr, ptr %85, align 4
  %87 = getelementptr inbounds %struct.anon, ptr %78, i32 0, i32 2
  store ptr %86, ptr %87, align 8
  br label %88

88:                                               ; preds = %77, %51, %13, %9
  %89 = phi ptr [ null, %51 ], [ null, %13 ], [ %78, %77 ], [ null, %9 ]
  ret ptr %89
}

; Function Attrs: mustprogress nofree norecurse nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define dso_local void @skb_add_rx_frag(ptr nocapture noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5) #5 {
  %7 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 15
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr %struct.skb_shared_info, ptr %8, i32 0, i32 12, i32 %1
  store ptr %2, ptr %9, align 4
  %10 = getelementptr %struct.skb_shared_info, ptr %8, i32 0, i32 12, i32 %1, i32 2
  store i32 %3, ptr %10, align 4
  %11 = getelementptr %struct.skb_shared_info, ptr %8, i32 0, i32 12, i32 %1, i32 1
  store i32 %4, ptr %11, align 4
  %12 = getelementptr inbounds %struct.page, ptr %2, i32 0, i32 1
  %13 = load volatile i32, ptr %12, align 4
  %14 = and i32 %13, 1
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %18, label %16, !prof !13

16:                                               ; preds = %6
  %17 = add i32 %13, -1
  br label %20

18:                                               ; preds = %6
  %19 = ptrtoint ptr %2 to i32
  br label %20

20:                                               ; preds = %18, %16
  %21 = phi i32 [ %17, %16 ], [ %19, %18 ]
  %22 = inttoptr i32 %21 to ptr
  %23 = getelementptr inbounds %struct.page, ptr %22, i32 0, i32 1
  %24 = load ptr, ptr %23, align 4
  %25 = ptrtoint ptr %24 to i32
  %26 = and i32 %25, 2
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %32, label %28

28:                                               ; preds = %20
  %29 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 11
  %30 = load i8, ptr %29, align 2
  %31 = or i8 %30, 64
  store i8 %31, ptr %29, align 2
  br label %32

32:                                               ; preds = %28, %20
  %33 = trunc i32 %1 to i8
  %34 = add i8 %33, 1
  %35 = load ptr, ptr %7, align 4
  %36 = getelementptr inbounds %struct.skb_shared_info, ptr %35, i32 0, i32 2
  store i8 %34, ptr %36, align 2
  %37 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 5
  %38 = load i32, ptr %37, align 8
  %39 = add i32 %38, %4
  store i32 %39, ptr %37, align 8
  %40 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 6
  %41 = load i32, ptr %40, align 4
  %42 = add i32 %41, %4
  store i32 %42, ptr %40, align 4
  %43 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 18
  %44 = load i32, ptr %43, align 8
  %45 = add i32 %44, %5
  store i32 %45, ptr %43, align 8
  ret void
}

; Function Attrs: inlinehint mustprogress nofree norecurse nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal fastcc void @skb_fill_page_desc(ptr nocapture noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef %4) unnamed_addr #6 {
  %6 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 15
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr %struct.skb_shared_info, ptr %7, i32 0, i32 12, i32 %1
  store ptr %2, ptr %8, align 4
  %9 = getelementptr %struct.skb_shared_info, ptr %7, i32 0, i32 12, i32 %1, i32 2
  store i32 %3, ptr %9, align 4
  %10 = getelementptr %struct.skb_shared_info, ptr %7, i32 0, i32 12, i32 %1, i32 1
  store i32 %4, ptr %10, align 4
  %11 = getelementptr inbounds %struct.page, ptr %2, i32 0, i32 1
  %12 = load volatile i32, ptr %11, align 4
  %13 = and i32 %12, 1
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %17, label %15, !prof !13

15:                                               ; preds = %5
  %16 = add i32 %12, -1
  br label %19

17:                                               ; preds = %5
  %18 = ptrtoint ptr %2 to i32
  br label %19

19:                                               ; preds = %17, %15
  %20 = phi i32 [ %16, %15 ], [ %18, %17 ]
  %21 = inttoptr i32 %20 to ptr
  %22 = getelementptr inbounds %struct.page, ptr %21, i32 0, i32 1
  %23 = load ptr, ptr %22, align 4
  %24 = ptrtoint ptr %23 to i32
  %25 = and i32 %24, 2
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %31, label %27

27:                                               ; preds = %19
  %28 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 11
  %29 = load i8, ptr %28, align 2
  %30 = or i8 %29, 64
  store i8 %30, ptr %28, align 2
  br label %31

31:                                               ; preds = %27, %19
  %32 = trunc i32 %1 to i8
  %33 = add i8 %32, 1
  %34 = load ptr, ptr %6, align 4
  %35 = getelementptr inbounds %struct.skb_shared_info, ptr %34, i32 0, i32 2
  store i8 %33, ptr %35, align 2
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define dso_local void @skb_coalesce_rx_frag(ptr nocapture noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) #7 {
  %5 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 15
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr %struct.skb_shared_info, ptr %6, i32 0, i32 12, i32 %1, i32 1
  %8 = load i32, ptr %7, align 4
  %9 = add i32 %8, %2
  store i32 %9, ptr %7, align 4
  %10 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 5
  %11 = load i32, ptr %10, align 8
  %12 = add i32 %11, %2
  store i32 %12, ptr %10, align 8
  %13 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 6
  %14 = load i32, ptr %13, align 4
  %15 = add i32 %14, %2
  store i32 %15, ptr %13, align 4
  %16 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 18
  %17 = load i32, ptr %16, align 8
  %18 = add i32 %17, %3
  store i32 %18, ptr %16, align 8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @skb_release_head_state(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 4
  %3 = load i32, ptr %2, align 8
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %12, label %5

5:                                                ; preds = %1
  %6 = and i32 %3, 1
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %11

8:                                                ; preds = %5
  %9 = and i32 %3, -2
  %10 = inttoptr i32 %9 to ptr
  tail call void @dst_release(ptr noundef %10) #21
  br label %11

11:                                               ; preds = %8, %5
  store i32 0, ptr %2, align 8
  br label %12

12:                                               ; preds = %11, %1
  %13 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 4, i32 0, i32 1
  %14 = load ptr, ptr %13, align 4
  %15 = icmp eq ptr %14, null
  br i1 %15, label %26, label %16

16:                                               ; preds = %12
  %17 = tail call ptr @llvm.thread.pointer() #21
  %18 = getelementptr inbounds %struct.thread_info, ptr %17, i32 0, i32 1
  %19 = load volatile i32, ptr %18, align 4
  %20 = and i32 %19, 983040
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %24, label %22, !prof !13

22:                                               ; preds = %16
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 728, i32 noundef 9, ptr noundef null) #21
  %23 = load ptr, ptr %13, align 4
  br label %24

24:                                               ; preds = %22, %16
  %25 = phi ptr [ %23, %22 ], [ %14, %16 ]
  tail call void %25(ptr noundef %0) #21
  br label %26

26:                                               ; preds = %24, %12
  %27 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 12
  %28 = load i8, ptr %27, align 1
  %29 = icmp eq i8 %28, 0
  br i1 %29, label %33, label %30

30:                                               ; preds = %26
  %31 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 20
  %32 = load ptr, ptr %31, align 8
  tail call void @__skb_ext_put(ptr noundef %32) #21
  br label %33

33:                                               ; preds = %30, %26
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @__kfree_skb(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 4
  %3 = load i32, ptr %2, align 8
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %12, label %5

5:                                                ; preds = %1
  %6 = and i32 %3, 1
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %11

8:                                                ; preds = %5
  %9 = and i32 %3, -2
  %10 = inttoptr i32 %9 to ptr
  tail call void @dst_release(ptr noundef %10) #21
  br label %11

11:                                               ; preds = %8, %5
  store i32 0, ptr %2, align 8
  br label %12

12:                                               ; preds = %11, %1
  %13 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 4, i32 0, i32 1
  %14 = load ptr, ptr %13, align 4
  %15 = icmp eq ptr %14, null
  br i1 %15, label %26, label %16

16:                                               ; preds = %12
  %17 = tail call ptr @llvm.thread.pointer() #21
  %18 = getelementptr inbounds %struct.thread_info, ptr %17, i32 0, i32 1
  %19 = load volatile i32, ptr %18, align 4
  %20 = and i32 %19, 983040
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %24, label %22, !prof !13

22:                                               ; preds = %16
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 728, i32 noundef 9, ptr noundef null) #21
  %23 = load ptr, ptr %13, align 4
  br label %24

24:                                               ; preds = %22, %16
  %25 = phi ptr [ %23, %22 ], [ %14, %16 ]
  tail call void %25(ptr noundef %0) #21
  br label %26

26:                                               ; preds = %24, %12
  %27 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 12
  %28 = load i8, ptr %27, align 1
  %29 = icmp eq i8 %28, 0
  br i1 %29, label %33, label %30

30:                                               ; preds = %26
  %31 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 20
  %32 = load ptr, ptr %31, align 8
  tail call void @__skb_ext_put(ptr noundef %32) #21
  br label %33

33:                                               ; preds = %30, %26
  %34 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 16
  %35 = load ptr, ptr %34, align 8
  %36 = icmp eq ptr %35, null
  br i1 %36, label %38, label %37, !prof !12

37:                                               ; preds = %33
  tail call fastcc void @skb_release_data(ptr noundef %0) #21
  br label %38

38:                                               ; preds = %37, %33
  %39 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 11
  %40 = load i8, ptr %39, align 2
  %41 = lshr i8 %40, 2
  %42 = and i8 %41, 3
  %43 = zext i8 %42 to i32
  switch i32 %43, label %50 [
    i32 0, label %44
    i32 1, label %46
  ]

44:                                               ; preds = %38
  %45 = load ptr, ptr @skbuff_head_cache, align 4
  tail call void @kmem_cache_free(ptr noundef %45, ptr noundef %0) #21
  br label %65

46:                                               ; preds = %38
  %47 = getelementptr inbounds %struct.sk_buff_fclones, ptr %0, i32 0, i32 2
  %48 = load volatile i32, ptr %47, align 4
  %49 = icmp eq i32 %48, 1
  br i1 %49, label %62, label %52

50:                                               ; preds = %38
  %51 = getelementptr i8, ptr %0, i32 -176
  br label %52

52:                                               ; preds = %50, %46
  %53 = phi ptr [ %51, %50 ], [ %0, %46 ]
  %54 = getelementptr inbounds %struct.sk_buff_fclones, ptr %53, i32 0, i32 2
  tail call void asm sideeffect "dmb ish", "~{memory}"() #21, !srcloc !18
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %54) #21, !srcloc !16
  %55 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %54, ptr %54, i32 1, ptr elementtype(i32) %54) #21, !srcloc !19
  %56 = extractvalue { i32, i32, i32 } %55, 0
  %57 = icmp eq i32 %56, 1
  br i1 %57, label %61, label %58

58:                                               ; preds = %52
  %59 = icmp sgt i32 %56, 0
  br i1 %59, label %65, label %60, !prof !13

60:                                               ; preds = %58
  tail call void @refcount_warn_saturate(ptr noundef %54, i32 noundef 3) #21
  br label %65

61:                                               ; preds = %52
  tail call void asm sideeffect "dmb ish", "~{memory}"() #21, !srcloc !20
  br label %62

62:                                               ; preds = %61, %46
  %63 = phi ptr [ %53, %61 ], [ %0, %46 ]
  %64 = load ptr, ptr @skbuff_fclone_cache, align 4
  tail call void @kmem_cache_free(ptr noundef %64, ptr noundef %63) #21
  br label %65

65:                                               ; preds = %62, %60, %58, %44
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @skb_release_all(ptr noundef %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 4
  %3 = load i32, ptr %2, align 8
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %12, label %5

5:                                                ; preds = %1
  %6 = and i32 %3, 1
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %11

8:                                                ; preds = %5
  %9 = and i32 %3, -2
  %10 = inttoptr i32 %9 to ptr
  tail call void @dst_release(ptr noundef %10) #21
  br label %11

11:                                               ; preds = %8, %5
  store i32 0, ptr %2, align 8
  br label %12

12:                                               ; preds = %11, %1
  %13 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 4, i32 0, i32 1
  %14 = load ptr, ptr %13, align 4
  %15 = icmp eq ptr %14, null
  br i1 %15, label %26, label %16

16:                                               ; preds = %12
  %17 = tail call ptr @llvm.thread.pointer() #21
  %18 = getelementptr inbounds %struct.thread_info, ptr %17, i32 0, i32 1
  %19 = load volatile i32, ptr %18, align 4
  %20 = and i32 %19, 983040
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %24, label %22, !prof !13

22:                                               ; preds = %16
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 728, i32 noundef 9, ptr noundef null) #21
  %23 = load ptr, ptr %13, align 4
  br label %24

24:                                               ; preds = %22, %16
  %25 = phi ptr [ %23, %22 ], [ %14, %16 ]
  tail call void %25(ptr noundef %0) #21
  br label %26

26:                                               ; preds = %24, %12
  %27 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 12
  %28 = load i8, ptr %27, align 1
  %29 = icmp eq i8 %28, 0
  br i1 %29, label %33, label %30

30:                                               ; preds = %26
  %31 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 20
  %32 = load ptr, ptr %31, align 8
  tail call void @__skb_ext_put(ptr noundef %32) #21
  br label %33

33:                                               ; preds = %30, %26
  %34 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 16
  %35 = load ptr, ptr %34, align 8
  %36 = icmp eq ptr %35, null
  br i1 %36, label %38, label %37, !prof !12

37:                                               ; preds = %33
  tail call fastcc void @skb_release_data(ptr noundef %0)
  br label %38

38:                                               ; preds = %37, %33
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @kfree_skb_reason(ptr noundef %0, i32 noundef %1) #0 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %34, label %4, !prof !12

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 19
  %6 = load volatile i32, ptr %5, align 4
  %7 = icmp eq i32 %6, 1
  tail call void asm sideeffect "dmb ish", "~{memory}"() #21
  br i1 %7, label %16, label %8, !prof !13

8:                                                ; preds = %4
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %5) #21, !srcloc !16
  %9 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %5, ptr %5, i32 1, ptr elementtype(i32) %5) #21, !srcloc !19
  %10 = extractvalue { i32, i32, i32 } %9, 0
  %11 = icmp eq i32 %10, 1
  br i1 %11, label %15, label %12

12:                                               ; preds = %8
  %13 = icmp sgt i32 %10, 0
  br i1 %13, label %34, label %14, !prof !13

14:                                               ; preds = %12
  tail call void @refcount_warn_saturate(ptr noundef %5, i32 noundef 3) #21
  br label %34

15:                                               ; preds = %8
  tail call void asm sideeffect "dmb ish", "~{memory}"() #21, !srcloc !20
  br label %16

16:                                               ; preds = %15, %4
  %17 = tail call ptr @llvm.returnaddress(i32 0)
  %18 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_kfree_skb, i32 0, i32 1), align 4
  %19 = icmp sgt i32 %18, 0
  br i1 %19, label %20, label %33

20:                                               ; preds = %16
  %21 = tail call ptr @llvm.thread.pointer() #21
  %22 = getelementptr inbounds %struct.thread_info, ptr %21, i32 0, i32 2
  %23 = load i32, ptr %22, align 8
  %24 = lshr i32 %23, 5
  %25 = getelementptr i32, ptr @__cpu_online_mask, i32 %24
  %26 = load volatile i32, ptr %25, align 4
  %27 = and i32 %23, 31
  %28 = shl nuw i32 1, %27
  %29 = and i32 %28, %26
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %33, label %31

31:                                               ; preds = %20
  tail call void asm sideeffect "", "~{memory}"() #21, !srcloc !21
  %32 = tail call i32 @__traceiter_kfree_skb(ptr noundef null, ptr noundef nonnull %0, ptr noundef %17, i32 noundef %1) #21
  tail call void asm sideeffect "", "~{memory}"() #21, !srcloc !22
  br label %33

33:                                               ; preds = %31, %20, %16
  tail call void @__kfree_skb(ptr noundef nonnull %0)
  br label %34

34:                                               ; preds = %33, %14, %12, %2
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.returnaddress(i32 immarg) #8

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @kfree_skb_list(ptr noundef %0) #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %37, label %3

3:                                                ; preds = %35, %1
  %4 = phi ptr [ %5, %35 ], [ %0, %1 ]
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.sk_buff, ptr %4, i32 0, i32 19
  %7 = load volatile i32, ptr %6, align 4
  %8 = icmp eq i32 %7, 1
  tail call void asm sideeffect "dmb ish", "~{memory}"() #21
  br i1 %8, label %17, label %9, !prof !13

9:                                                ; preds = %3
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %6) #21, !srcloc !16
  %10 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %6, ptr %6, i32 1, ptr elementtype(i32) %6) #21, !srcloc !19
  %11 = extractvalue { i32, i32, i32 } %10, 0
  %12 = icmp eq i32 %11, 1
  br i1 %12, label %16, label %13

13:                                               ; preds = %9
  %14 = icmp sgt i32 %11, 0
  br i1 %14, label %35, label %15, !prof !13

15:                                               ; preds = %13
  tail call void @refcount_warn_saturate(ptr noundef %6, i32 noundef 3) #21
  br label %35

16:                                               ; preds = %9
  tail call void asm sideeffect "dmb ish", "~{memory}"() #21, !srcloc !20
  br label %17

17:                                               ; preds = %16, %3
  %18 = tail call ptr @llvm.returnaddress(i32 0) #21
  %19 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_kfree_skb, i32 0, i32 1), align 4
  %20 = icmp sgt i32 %19, 0
  br i1 %20, label %21, label %34

21:                                               ; preds = %17
  %22 = tail call ptr @llvm.thread.pointer() #21
  %23 = getelementptr inbounds %struct.thread_info, ptr %22, i32 0, i32 2
  %24 = load i32, ptr %23, align 8
  %25 = lshr i32 %24, 5
  %26 = getelementptr i32, ptr @__cpu_online_mask, i32 %25
  %27 = load volatile i32, ptr %26, align 4
  %28 = and i32 %24, 31
  %29 = shl nuw i32 1, %28
  %30 = and i32 %29, %27
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %34, label %32

32:                                               ; preds = %21
  tail call void asm sideeffect "", "~{memory}"() #21, !srcloc !21
  %33 = tail call i32 @__traceiter_kfree_skb(ptr noundef null, ptr noundef nonnull %4, ptr noundef %18, i32 noundef 0) #21
  tail call void asm sideeffect "", "~{memory}"() #21, !srcloc !22
  br label %34

34:                                               ; preds = %32, %21, %17
  tail call void @__kfree_skb(ptr noundef nonnull %4) #21
  br label %35

35:                                               ; preds = %34, %15, %13
  %36 = icmp eq ptr %5, null
  br i1 %36, label %37, label %3

37:                                               ; preds = %35, %1
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @kfree_skb(ptr noundef %0) unnamed_addr #3 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %33, label %3, !prof !12

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 19
  %5 = load volatile i32, ptr %4, align 4
  %6 = icmp eq i32 %5, 1
  tail call void asm sideeffect "dmb ish", "~{memory}"() #21
  br i1 %6, label %15, label %7, !prof !13

7:                                                ; preds = %3
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %4) #21, !srcloc !16
  %8 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %4, ptr %4, i32 1, ptr elementtype(i32) %4) #21, !srcloc !19
  %9 = extractvalue { i32, i32, i32 } %8, 0
  %10 = icmp eq i32 %9, 1
  br i1 %10, label %14, label %11

11:                                               ; preds = %7
  %12 = icmp sgt i32 %9, 0
  br i1 %12, label %33, label %13, !prof !13

13:                                               ; preds = %11
  tail call void @refcount_warn_saturate(ptr noundef %4, i32 noundef 3) #21
  br label %33

14:                                               ; preds = %7
  tail call void asm sideeffect "dmb ish", "~{memory}"() #21, !srcloc !20
  br label %15

15:                                               ; preds = %14, %3
  %16 = tail call ptr @llvm.returnaddress(i32 0) #21
  %17 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_kfree_skb, i32 0, i32 1), align 4
  %18 = icmp sgt i32 %17, 0
  br i1 %18, label %19, label %32

19:                                               ; preds = %15
  %20 = tail call ptr @llvm.thread.pointer() #21
  %21 = getelementptr inbounds %struct.thread_info, ptr %20, i32 0, i32 2
  %22 = load i32, ptr %21, align 8
  %23 = lshr i32 %22, 5
  %24 = getelementptr i32, ptr @__cpu_online_mask, i32 %23
  %25 = load volatile i32, ptr %24, align 4
  %26 = and i32 %22, 31
  %27 = shl nuw i32 1, %26
  %28 = and i32 %27, %25
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %32, label %30

30:                                               ; preds = %19
  tail call void asm sideeffect "", "~{memory}"() #21, !srcloc !21
  %31 = tail call i32 @__traceiter_kfree_skb(ptr noundef null, ptr noundef nonnull %0, ptr noundef %16, i32 noundef 0) #21
  tail call void asm sideeffect "", "~{memory}"() #21, !srcloc !22
  br label %32

32:                                               ; preds = %30, %19, %15
  tail call void @__kfree_skb(ptr noundef nonnull %0) #21
  br label %33

33:                                               ; preds = %32, %13, %11, %1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @skb_dump(ptr noundef %0, ptr noundef readonly %1, i1 noundef zeroext %2) #0 {
  %4 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 15
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.anon, ptr %1, i32 0, i32 2
  %7 = load ptr, ptr %6, align 8
  %8 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 1
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 5
  %11 = load i32, ptr %10, align 8
  %12 = tail call i32 @llvm.smin.i32(i32 %11, i32 272)
  %13 = select i1 %2, i32 %11, i32 %12
  %14 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 17
  %15 = load ptr, ptr %14, align 4
  %16 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 16
  %17 = load ptr, ptr %16, align 8
  %18 = ptrtoint ptr %15 to i32
  %19 = ptrtoint ptr %17 to i32
  %20 = sub i32 %18, %19
  %21 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 6
  %22 = load i32, ptr %21, align 4
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %30

24:                                               ; preds = %3
  %25 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 14
  %26 = load ptr, ptr %25, align 8
  %27 = ptrtoint ptr %5 to i32
  %28 = ptrtoint ptr %26 to i32
  %29 = sub i32 %27, %28
  br label %30

30:                                               ; preds = %24, %3
  %31 = phi i32 [ %29, %24 ], [ 0, %3 ]
  %32 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 13, i32 0, i32 19
  %33 = load i16, ptr %32, align 2
  %34 = icmp eq i16 %33, -1
  %35 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 13, i32 0, i32 17
  %36 = load i16, ptr %35, align 2
  %37 = icmp eq i16 %36, -1
  %38 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 5
  %39 = sub i32 %11, %22
  br i1 %34, label %40, label %44

40:                                               ; preds = %30
  %41 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 13, i32 0, i32 18
  %42 = load i16, ptr %41, align 4
  %43 = zext i16 %42 to i32
  br label %50

44:                                               ; preds = %30
  %45 = zext i16 %33 to i32
  %46 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 13, i32 0, i32 18
  %47 = load i16, ptr %46, align 4
  %48 = zext i16 %47 to i32
  %49 = sub nsw i32 %48, %45
  br label %50

50:                                               ; preds = %44, %40
  %51 = phi i32 [ %43, %40 ], [ %48, %44 ]
  %52 = phi i32 [ -1, %40 ], [ %45, %44 ]
  %53 = phi i32 [ -1, %40 ], [ %49, %44 ]
  %54 = zext i16 %36 to i32
  %55 = sub nsw i32 %54, %51
  %56 = select i1 %37, i32 -1, i32 %55
  %57 = select i1 %37, i32 -1, i32 %54
  %58 = getelementptr inbounds %struct.skb_shared_info, ptr %5, i32 0, i32 3
  %59 = load i8, ptr %58, align 1
  %60 = zext i8 %59 to i32
  %61 = getelementptr inbounds %struct.skb_shared_info, ptr %5, i32 0, i32 2
  %62 = load i8, ptr %61, align 2
  %63 = zext i8 %62 to i32
  %64 = getelementptr inbounds %struct.skb_shared_info, ptr %5, i32 0, i32 4
  %65 = load i16, ptr %64, align 4
  %66 = zext i16 %65 to i32
  %67 = getelementptr inbounds %struct.skb_shared_info, ptr %5, i32 0, i32 8
  %68 = load i32, ptr %67, align 8
  %69 = getelementptr inbounds %struct.skb_shared_info, ptr %5, i32 0, i32 5
  %70 = load i16, ptr %69, align 2
  %71 = zext i16 %70 to i32
  %72 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 13, i32 0, i32 4
  %73 = load i32, ptr %72, align 4
  %74 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 13
  %75 = load i16, ptr %74, align 8
  %76 = lshr i16 %75, 5
  %77 = and i16 %76, 3
  %78 = zext i16 %77 to i32
  %79 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 13, i32 0, i32 3
  %80 = load i16, ptr %79, align 2
  %81 = lshr i16 %80, 1
  %82 = and i16 %81, 1
  %83 = zext i16 %82 to i32
  %84 = lshr i16 %75, 15
  %85 = zext i16 %84 to i32
  %86 = lshr i16 %80, 2
  %87 = and i16 %86, 3
  %88 = zext i16 %87 to i32
  %89 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 13, i32 0, i32 7
  %90 = load i32, ptr %89, align 8
  %91 = lshr i16 %75, 9
  %92 = and i16 %91, 1
  %93 = zext i16 %92 to i32
  %94 = lshr i16 %75, 8
  %95 = and i16 %94, 1
  %96 = zext i16 %95 to i32
  %97 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 13, i32 0, i32 16
  %98 = load i16, ptr %97, align 8
  %99 = tail call i16 @llvm.bswap.i16(i16 %98)
  %100 = zext i16 %99 to i32
  %101 = and i16 %75, 7
  %102 = zext i16 %101 to i32
  %103 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 13, i32 0, i32 6
  %104 = load i32, ptr %103, align 4
  %105 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef %0, i32 noundef %11, i32 noundef %20, i32 noundef %39, i32 noundef %31, i32 noundef %52, i32 noundef %53, i32 noundef %51, i32 noundef %56, i32 noundef %57, i32 noundef %60, i32 noundef %63, i32 noundef %66, i32 noundef %68, i32 noundef %71, i32 noundef %73, i32 noundef %78, i32 noundef %83, i32 noundef %85, i32 noundef %88, i32 noundef %90, i32 noundef %93, i32 noundef %96, i32 noundef %100, i32 noundef %102, i32 noundef %104) #22
  %106 = icmp eq ptr %7, null
  br i1 %106, label %110, label %107

107:                                              ; preds = %50
  %108 = getelementptr inbounds %struct.net_device, ptr %7, i32 0, i32 23
  %109 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, ptr noundef %0, ptr noundef nonnull %7, ptr noundef %108) #22
  br label %110

110:                                              ; preds = %107, %50
  %111 = icmp eq ptr %9, null
  br i1 %111, label %123, label %112

112:                                              ; preds = %110
  %113 = getelementptr inbounds %struct.sock_common, ptr %9, i32 0, i32 3
  %114 = load i16, ptr %113, align 8
  %115 = zext i16 %114 to i32
  %116 = getelementptr inbounds %struct.sock, ptr %9, i32 0, i32 45
  %117 = load i16, ptr %116, align 2
  %118 = zext i16 %117 to i32
  %119 = getelementptr inbounds %struct.sock, ptr %9, i32 0, i32 46
  %120 = load i16, ptr %119, align 4
  %121 = zext i16 %120 to i32
  %122 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef %0, i32 noundef %115, i32 noundef %118, i32 noundef %121) #22
  br label %123

123:                                              ; preds = %112, %110
  %124 = icmp ne ptr %15, %17
  %125 = select i1 %2, i1 %124, i1 false
  br i1 %125, label %126, label %128

126:                                              ; preds = %123
  %127 = load ptr, ptr %16, align 8
  tail call void @print_hex_dump(ptr noundef %0, ptr noundef nonnull @.str.4, i32 noundef 2, i32 noundef 16, i32 noundef 1, ptr noundef %127, i32 noundef %20, i1 noundef zeroext false) #21
  br label %128

128:                                              ; preds = %126, %123
  %129 = load i32, ptr %38, align 8
  %130 = load i32, ptr %21, align 4
  %131 = sub i32 %129, %130
  %132 = tail call i32 @llvm.smin.i32(i32 %131, i32 %13)
  %133 = icmp eq i32 %132, 0
  br i1 %133, label %136, label %134

134:                                              ; preds = %128
  %135 = load ptr, ptr %14, align 4
  tail call void @print_hex_dump(ptr noundef %0, ptr noundef nonnull @.str.5, i32 noundef 2, i32 noundef 16, i32 noundef 1, ptr noundef %135, i32 noundef %132, i1 noundef zeroext false) #21
  br label %136

136:                                              ; preds = %134, %128
  %137 = sub i32 %13, %132
  %138 = icmp ne i32 %31, 0
  %139 = select i1 %2, i1 %138, i1 false
  br i1 %139, label %140, label %143

140:                                              ; preds = %136
  %141 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 14
  %142 = load ptr, ptr %141, align 8
  tail call void @print_hex_dump(ptr noundef %0, ptr noundef nonnull @.str.6, i32 noundef 2, i32 noundef 16, i32 noundef 1, ptr noundef %142, i32 noundef %31, i1 noundef zeroext false) #21
  br label %143

143:                                              ; preds = %140, %136
  %144 = icmp eq i32 %137, 0
  br i1 %144, label %216, label %145

145:                                              ; preds = %143
  %146 = load ptr, ptr %4, align 4
  %147 = getelementptr inbounds %struct.skb_shared_info, ptr %146, i32 0, i32 2
  %148 = load i8, ptr %147, align 2
  %149 = icmp eq i8 %148, 0
  br i1 %149, label %216, label %150

150:                                              ; preds = %208, %145
  %151 = phi ptr [ %211, %208 ], [ %146, %145 ]
  %152 = phi i32 [ %209, %208 ], [ %137, %145 ]
  %153 = phi i32 [ %210, %208 ], [ 0, %145 ]
  %154 = getelementptr %struct.skb_shared_info, ptr %151, i32 0, i32 12, i32 %153
  %155 = load ptr, ptr %154, align 4
  %156 = getelementptr %struct.skb_shared_info, ptr %151, i32 0, i32 12, i32 %153, i32 2
  %157 = load i32, ptr %156, align 4
  %158 = lshr i32 %157, 12
  %159 = getelementptr %struct.page, ptr %155, i32 %158
  %160 = and i32 %157, 4095
  %161 = load i32, ptr %159, align 4
  %162 = lshr i32 %161, 30
  %163 = icmp eq i32 %162, 2
  br i1 %163, label %169, label %164

164:                                              ; preds = %150
  %165 = icmp eq i32 %162, 3
  %166 = load i32, ptr @movable_zone, align 4
  %167 = icmp eq i32 %166, 2
  %168 = select i1 %165, i1 %167, i1 false
  br i1 %168, label %169, label %174

169:                                              ; preds = %164, %150
  %170 = getelementptr %struct.skb_shared_info, ptr %151, i32 0, i32 12, i32 %153, i32 1
  %171 = load i32, ptr %170, align 4
  %172 = sub nuw nsw i32 4096, %160
  %173 = tail call i32 @llvm.umin.i32(i32 %171, i32 %172)
  br label %177

174:                                              ; preds = %164
  %175 = getelementptr %struct.skb_shared_info, ptr %151, i32 0, i32 12, i32 %153, i32 1
  %176 = load i32, ptr %175, align 4
  br label %177

177:                                              ; preds = %174, %169
  %178 = phi i32 [ %171, %169 ], [ %176, %174 ]
  %179 = phi i32 [ %173, %169 ], [ %176, %174 ]
  %180 = getelementptr %struct.skb_shared_info, ptr %151, i32 0, i32 12, i32 %153, i32 1
  %181 = icmp eq i32 %178, 0
  br i1 %181, label %208, label %182

182:                                              ; preds = %201, %177
  %183 = phi i32 [ %199, %201 ], [ %152, %177 ]
  %184 = phi ptr [ %203, %201 ], [ %159, %177 ]
  %185 = phi i32 [ %202, %201 ], [ 0, %177 ]
  %186 = phi i32 [ %206, %201 ], [ %179, %177 ]
  %187 = phi i32 [ 0, %201 ], [ %160, %177 ]
  %188 = tail call i32 @llvm.smin.i32(i32 %186, i32 %183)
  %189 = load i32, ptr @pgprot_kernel, align 4
  %190 = or i32 %189, 512
  tail call void asm sideeffect "", "~{memory}"() #21, !srcloc !23
  %191 = tail call ptr @llvm.thread.pointer() #21
  %192 = getelementptr inbounds %struct.task_struct, ptr %191, i32 0, i32 149
  %193 = load i32, ptr %192, align 8
  %194 = add i32 %193, 1
  store i32 %194, ptr %192, align 8
  tail call void asm sideeffect "", "~{memory}"() #21, !srcloc !24
  %195 = tail call ptr @__kmap_local_page_prot(ptr noundef %184, i32 noundef %190) #21
  %196 = getelementptr i8, ptr %195, i32 %187
  tail call void @print_hex_dump(ptr noundef %0, ptr noundef nonnull @.str.7, i32 noundef 2, i32 noundef 16, i32 noundef 1, ptr noundef %196, i32 noundef %188, i1 noundef zeroext false) #21
  tail call void @kunmap_local_indexed(ptr noundef %195) #21
  tail call void asm sideeffect "", "~{memory}"() #21, !srcloc !25
  %197 = load i32, ptr %192, align 8
  %198 = add i32 %197, -1
  store i32 %198, ptr %192, align 8
  tail call void asm sideeffect "", "~{memory}"() #21, !srcloc !26
  %199 = sub i32 %183, %188
  %200 = icmp eq i32 %199, 0
  br i1 %200, label %216, label %201

201:                                              ; preds = %182
  %202 = add i32 %185, %186
  %203 = getelementptr %struct.page, ptr %184, i32 1
  %204 = load i32, ptr %180, align 4
  %205 = sub i32 %204, %202
  %206 = tail call i32 @llvm.umin.i32(i32 %205, i32 4096)
  %207 = icmp ugt i32 %204, %202
  br i1 %207, label %182, label %208

208:                                              ; preds = %201, %177
  %209 = phi i32 [ %152, %177 ], [ %199, %201 ]
  %210 = add nuw nsw i32 %153, 1
  %211 = load ptr, ptr %4, align 4
  %212 = getelementptr inbounds %struct.skb_shared_info, ptr %211, i32 0, i32 2
  %213 = load i8, ptr %212, align 2
  %214 = zext i8 %213 to i32
  %215 = icmp ult i32 %210, %214
  br i1 %215, label %150, label %216

216:                                              ; preds = %208, %182, %145, %143
  br i1 %2, label %217, label %232

217:                                              ; preds = %216
  %218 = load ptr, ptr %4, align 4
  %219 = getelementptr inbounds %struct.skb_shared_info, ptr %218, i32 0, i32 6
  %220 = load ptr, ptr %219, align 8
  %221 = icmp eq ptr %220, null
  br i1 %221, label %232, label %222

222:                                              ; preds = %217
  %223 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8) #22
  %224 = load ptr, ptr %4, align 4
  %225 = getelementptr inbounds %struct.skb_shared_info, ptr %224, i32 0, i32 6
  %226 = load ptr, ptr %225, align 8
  %227 = icmp eq ptr %226, null
  br i1 %227, label %232, label %228

228:                                              ; preds = %228, %222
  %229 = phi ptr [ %230, %228 ], [ %226, %222 ]
  tail call void @skb_dump(ptr noundef %0, ptr noundef nonnull %229, i1 noundef zeroext true)
  %230 = load ptr, ptr %229, align 8
  %231 = icmp eq ptr %230, null
  br i1 %231, label %232, label %228

232:                                              ; preds = %228, %222, %217, %216
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #9

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #10

; Function Attrs: null_pointer_is_valid
declare dso_local void @print_hex_dump(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @skb_tx_error(ptr noundef %0) #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %25, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 15
  %5 = load ptr, ptr %4, align 4
  %6 = load i8, ptr %5, align 8
  %7 = and i8 %6, 1
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %25, label %9

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.skb_shared_info, ptr %5, i32 0, i32 11
  %11 = load ptr, ptr %10, align 4
  %12 = icmp eq ptr %11, null
  br i1 %12, label %25, label %13

13:                                               ; preds = %9
  %14 = ptrtoint ptr %11 to i32
  %15 = and i32 %14, 1
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %21

17:                                               ; preds = %13
  %18 = load ptr, ptr %11, align 4
  tail call void %18(ptr noundef nonnull %0, ptr noundef nonnull %11, i1 noundef zeroext true) #21
  %19 = load ptr, ptr %4, align 4
  %20 = load i8, ptr %19, align 8
  br label %21

21:                                               ; preds = %17, %13
  %22 = phi i8 [ %20, %17 ], [ %6, %13 ]
  %23 = phi ptr [ %19, %17 ], [ %5, %13 ]
  %24 = and i8 %22, -8
  store i8 %24, ptr %23, align 8
  br label %25

25:                                               ; preds = %21, %9, %3, %1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @consume_skb(ptr noundef %0) #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %32, label %3, !prof !12

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 19
  %5 = load volatile i32, ptr %4, align 4
  %6 = icmp eq i32 %5, 1
  tail call void asm sideeffect "dmb ish", "~{memory}"() #21
  br i1 %6, label %15, label %7, !prof !13

7:                                                ; preds = %3
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %4) #21, !srcloc !16
  %8 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %4, ptr %4, i32 1, ptr elementtype(i32) %4) #21, !srcloc !19
  %9 = extractvalue { i32, i32, i32 } %8, 0
  %10 = icmp eq i32 %9, 1
  br i1 %10, label %14, label %11

11:                                               ; preds = %7
  %12 = icmp sgt i32 %9, 0
  br i1 %12, label %32, label %13, !prof !13

13:                                               ; preds = %11
  tail call void @refcount_warn_saturate(ptr noundef %4, i32 noundef 3) #21
  br label %32

14:                                               ; preds = %7
  tail call void asm sideeffect "dmb ish", "~{memory}"() #21, !srcloc !20
  br label %15

15:                                               ; preds = %14, %3
  %16 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_consume_skb, i32 0, i32 1), align 4
  %17 = icmp sgt i32 %16, 0
  br i1 %17, label %18, label %31

18:                                               ; preds = %15
  %19 = tail call ptr @llvm.thread.pointer() #21
  %20 = getelementptr inbounds %struct.thread_info, ptr %19, i32 0, i32 2
  %21 = load i32, ptr %20, align 8
  %22 = lshr i32 %21, 5
  %23 = getelementptr i32, ptr @__cpu_online_mask, i32 %22
  %24 = load volatile i32, ptr %23, align 4
  %25 = and i32 %21, 31
  %26 = shl nuw i32 1, %25
  %27 = and i32 %26, %24
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %31, label %29

29:                                               ; preds = %18
  tail call void asm sideeffect "", "~{memory}"() #21, !srcloc !27
  %30 = tail call i32 @__traceiter_consume_skb(ptr noundef null, ptr noundef nonnull %0) #21
  tail call void asm sideeffect "", "~{memory}"() #21, !srcloc !28
  br label %31

31:                                               ; preds = %29, %18, %15
  tail call void @__kfree_skb(ptr noundef nonnull %0)
  br label %32

32:                                               ; preds = %31, %13, %11, %1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @__consume_stateless_skb(ptr noundef %0) local_unnamed_addr #0 {
  %2 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_consume_skb, i32 0, i32 1), align 4
  %3 = icmp sgt i32 %2, 0
  br i1 %3, label %4, label %17

4:                                                ; preds = %1
  %5 = tail call ptr @llvm.thread.pointer() #21
  %6 = getelementptr inbounds %struct.thread_info, ptr %5, i32 0, i32 2
  %7 = load i32, ptr %6, align 8
  %8 = lshr i32 %7, 5
  %9 = getelementptr i32, ptr @__cpu_online_mask, i32 %8
  %10 = load volatile i32, ptr %9, align 4
  %11 = and i32 %7, 31
  %12 = shl nuw i32 1, %11
  %13 = and i32 %12, %10
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %17, label %15

15:                                               ; preds = %4
  tail call void asm sideeffect "", "~{memory}"() #21, !srcloc !27
  %16 = tail call i32 @__traceiter_consume_skb(ptr noundef null, ptr noundef %0) #21
  tail call void asm sideeffect "", "~{memory}"() #21, !srcloc !28
  br label %17

17:                                               ; preds = %15, %4, %1
  tail call fastcc void @skb_release_data(ptr noundef %0)
  %18 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 11
  %19 = load i8, ptr %18, align 2
  %20 = lshr i8 %19, 2
  %21 = and i8 %20, 3
  %22 = zext i8 %21 to i32
  switch i32 %22, label %29 [
    i32 0, label %23
    i32 1, label %25
  ]

23:                                               ; preds = %17
  %24 = load ptr, ptr @skbuff_head_cache, align 4
  tail call void @kmem_cache_free(ptr noundef %24, ptr noundef %0) #21
  br label %44

25:                                               ; preds = %17
  %26 = getelementptr inbounds %struct.sk_buff_fclones, ptr %0, i32 0, i32 2
  %27 = load volatile i32, ptr %26, align 4
  %28 = icmp eq i32 %27, 1
  br i1 %28, label %41, label %31

29:                                               ; preds = %17
  %30 = getelementptr i8, ptr %0, i32 -176
  br label %31

31:                                               ; preds = %29, %25
  %32 = phi ptr [ %30, %29 ], [ %0, %25 ]
  %33 = getelementptr inbounds %struct.sk_buff_fclones, ptr %32, i32 0, i32 2
  tail call void asm sideeffect "dmb ish", "~{memory}"() #21, !srcloc !18
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %33) #21, !srcloc !16
  %34 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %33, ptr %33, i32 1, ptr elementtype(i32) %33) #21, !srcloc !19
  %35 = extractvalue { i32, i32, i32 } %34, 0
  %36 = icmp eq i32 %35, 1
  br i1 %36, label %40, label %37

37:                                               ; preds = %31
  %38 = icmp sgt i32 %35, 0
  br i1 %38, label %44, label %39, !prof !13

39:                                               ; preds = %37
  tail call void @refcount_warn_saturate(ptr noundef %33, i32 noundef 3) #21
  br label %44

40:                                               ; preds = %31
  tail call void asm sideeffect "dmb ish", "~{memory}"() #21, !srcloc !20
  br label %41

41:                                               ; preds = %40, %25
  %42 = phi ptr [ %32, %40 ], [ %0, %25 ]
  %43 = load ptr, ptr @skbuff_fclone_cache, align 4
  tail call void @kmem_cache_free(ptr noundef %43, ptr noundef %42) #21
  br label %44

44:                                               ; preds = %41, %39, %37, %23
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @skb_release_data(ptr noundef %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 15
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 11
  %5 = load i8, ptr %4, align 2
  %6 = and i8 %5, 1
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %16, label %8

8:                                                ; preds = %1
  %9 = and i8 %5, 2
  %10 = icmp eq i8 %9, 0
  %11 = select i1 %10, i32 1, i32 65537
  %12 = getelementptr inbounds %struct.skb_shared_info, ptr %3, i32 0, i32 10
  tail call void asm sideeffect "dmb ish", "~{memory}"() #21, !srcloc !29
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %12) #21, !srcloc !16
  %13 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %12, ptr %12, i32 %11, ptr elementtype(i32) %12) #21, !srcloc !30
  %14 = extractvalue { i32, i32 } %13, 0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #21, !srcloc !31
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %123

16:                                               ; preds = %8, %1
  %17 = icmp eq ptr %0, null
  br i1 %17, label %39, label %18

18:                                               ; preds = %16
  %19 = load ptr, ptr %2, align 4
  %20 = load i8, ptr %19, align 8
  %21 = and i8 %20, 1
  %22 = icmp eq i8 %21, 0
  br i1 %22, label %39, label %23

23:                                               ; preds = %18
  %24 = getelementptr inbounds %struct.skb_shared_info, ptr %19, i32 0, i32 11
  %25 = load ptr, ptr %24, align 4
  %26 = icmp eq ptr %25, null
  br i1 %26, label %39, label %27

27:                                               ; preds = %23
  %28 = ptrtoint ptr %25 to i32
  %29 = and i32 %28, 1
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %31, label %35

31:                                               ; preds = %27
  %32 = load ptr, ptr %25, align 4
  tail call void %32(ptr noundef nonnull %0, ptr noundef nonnull %25, i1 noundef zeroext true) #21
  %33 = load ptr, ptr %2, align 4
  %34 = load i8, ptr %33, align 8
  br label %35

35:                                               ; preds = %31, %27
  %36 = phi i8 [ %34, %31 ], [ %20, %27 ]
  %37 = phi ptr [ %33, %31 ], [ %19, %27 ]
  %38 = and i8 %36, -8
  store i8 %38, ptr %37, align 8
  br label %39

39:                                               ; preds = %35, %23, %18, %16
  %40 = getelementptr inbounds %struct.skb_shared_info, ptr %3, i32 0, i32 2
  %41 = load i8, ptr %40, align 2
  %42 = icmp eq i8 %41, 0
  br i1 %42, label %73, label %43

43:                                               ; preds = %68, %39
  %44 = phi i32 [ %69, %68 ], [ 0, %39 ]
  %45 = getelementptr %struct.skb_shared_info, ptr %3, i32 0, i32 12, i32 %44
  %46 = load i8, ptr %4, align 2
  %47 = icmp slt i8 %46, 0
  %48 = load ptr, ptr %45, align 4
  br i1 %47, label %49, label %51

49:                                               ; preds = %43
  %50 = tail call zeroext i1 @page_pool_return_skb_page(ptr noundef %48) #21
  br i1 %50, label %68, label %51

51:                                               ; preds = %49, %43
  %52 = getelementptr inbounds %struct.page, ptr %48, i32 0, i32 1
  %53 = load volatile i32, ptr %52, align 4
  %54 = and i32 %53, 1
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %58, label %56, !prof !13

56:                                               ; preds = %51
  %57 = add i32 %53, -1
  br label %60

58:                                               ; preds = %51
  %59 = ptrtoint ptr %48 to i32
  br label %60

60:                                               ; preds = %58, %56
  %61 = phi i32 [ %57, %56 ], [ %59, %58 ]
  %62 = inttoptr i32 %61 to ptr
  %63 = getelementptr inbounds %struct.page, ptr %62, i32 0, i32 3
  tail call void asm sideeffect "dmb ish", "~{memory}"() #21, !srcloc !29
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %63) #21, !srcloc !16
  %64 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %63, ptr %63, i32 1, ptr elementtype(i32) %63) #21, !srcloc !30
  %65 = extractvalue { i32, i32 } %64, 0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #21, !srcloc !31
  %66 = icmp eq i32 %65, 0
  br i1 %66, label %67, label %68

67:                                               ; preds = %60
  tail call void @__put_page(ptr noundef %62) #21
  br label %68

68:                                               ; preds = %67, %60, %49
  %69 = add nuw nsw i32 %44, 1
  %70 = load i8, ptr %40, align 2
  %71 = zext i8 %70 to i32
  %72 = icmp ult i32 %69, %71
  br i1 %72, label %43, label %73

73:                                               ; preds = %68, %39
  %74 = getelementptr inbounds %struct.skb_shared_info, ptr %3, i32 0, i32 6
  %75 = load ptr, ptr %74, align 8
  %76 = icmp eq ptr %75, null
  br i1 %76, label %106, label %77

77:                                               ; preds = %104, %73
  %78 = phi ptr [ %79, %104 ], [ %75, %73 ]
  %79 = load ptr, ptr %78, align 8
  %80 = getelementptr inbounds %struct.sk_buff, ptr %78, i32 0, i32 19
  %81 = load volatile i32, ptr %80, align 4
  %82 = icmp eq i32 %81, 1
  br i1 %82, label %83, label %84, !prof !13

83:                                               ; preds = %77
  tail call void asm sideeffect "dmb ish", "~{memory}"() #21, !srcloc !32
  br label %86

84:                                               ; preds = %77
  %85 = tail call fastcc zeroext i1 @refcount_dec_and_test(ptr noundef %80) #21
  br i1 %85, label %86, label %104, !prof !12

86:                                               ; preds = %84, %83
  %87 = tail call ptr @llvm.returnaddress(i32 0) #21
  %88 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_kfree_skb, i32 0, i32 1), align 4
  %89 = icmp sgt i32 %88, 0
  br i1 %89, label %90, label %103

90:                                               ; preds = %86
  %91 = tail call ptr @llvm.thread.pointer() #21
  %92 = getelementptr inbounds %struct.thread_info, ptr %91, i32 0, i32 2
  %93 = load i32, ptr %92, align 8
  %94 = lshr i32 %93, 5
  %95 = getelementptr i32, ptr @__cpu_online_mask, i32 %94
  %96 = load volatile i32, ptr %95, align 4
  %97 = and i32 %93, 31
  %98 = shl nuw i32 1, %97
  %99 = and i32 %98, %96
  %100 = icmp eq i32 %99, 0
  br i1 %100, label %103, label %101

101:                                              ; preds = %90
  tail call void asm sideeffect "", "~{memory}"() #21, !srcloc !21
  %102 = tail call i32 @__traceiter_kfree_skb(ptr noundef null, ptr noundef nonnull %78, ptr noundef %87, i32 noundef 0) #21
  tail call void asm sideeffect "", "~{memory}"() #21, !srcloc !22
  br label %103

103:                                              ; preds = %101, %90, %86
  tail call void @__kfree_skb(ptr noundef nonnull %78) #21
  br label %104

104:                                              ; preds = %103, %84
  %105 = icmp eq ptr %79, null
  br i1 %105, label %106, label %77

106:                                              ; preds = %104, %73
  %107 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 16
  %108 = load ptr, ptr %107, align 8
  %109 = load i8, ptr %4, align 2
  %110 = and i8 %109, 32
  %111 = icmp eq i8 %110, 0
  br i1 %111, label %122, label %112

112:                                              ; preds = %106
  %113 = icmp sgt i8 %109, -1
  br i1 %113, label %121, label %114

114:                                              ; preds = %112
  %115 = load ptr, ptr @mem_map, align 4
  %116 = ptrtoint ptr %108 to i32
  %117 = add i32 %116, 1073741824
  %118 = lshr i32 %117, 12
  %119 = getelementptr %struct.page, ptr %115, i32 %118
  %120 = tail call zeroext i1 @page_pool_return_skb_page(ptr noundef %119) #21
  br i1 %120, label %123, label %121

121:                                              ; preds = %114, %112
  tail call void @page_frag_free(ptr noundef %108) #21
  br label %123

122:                                              ; preds = %106
  tail call void @kfree(ptr noundef %108) #21
  br label %123

123:                                              ; preds = %122, %121, %114, %8
  %124 = load i8, ptr %4, align 2
  %125 = and i8 %124, 127
  store i8 %125, ptr %4, align 2
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @__kfree_skb_defer(ptr noundef %0) local_unnamed_addr #0 {
  tail call fastcc void @skb_release_all(ptr noundef %0)
  %2 = tail call i32 @llvm.read_register.i32(metadata !0) #21
  %3 = inttoptr i32 %2 to ptr
  %4 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %3) #20, !srcloc !9
  %5 = add i32 %4, ptrtoint (ptr @napi_alloc_cache to i32)
  %6 = inttoptr i32 %5 to ptr
  %7 = getelementptr inbounds %struct.napi_alloc_cache, ptr %6, i32 0, i32 1
  %8 = load i32, ptr %7, align 4
  %9 = add i32 %8, 1
  store i32 %9, ptr %7, align 4
  %10 = getelementptr %struct.napi_alloc_cache, ptr %6, i32 0, i32 2, i32 %8
  store ptr %0, ptr %10, align 4
  %11 = load i32, ptr %7, align 4
  %12 = icmp eq i32 %11, 64
  br i1 %12, label %13, label %16, !prof !12

13:                                               ; preds = %1
  %14 = load ptr, ptr @skbuff_head_cache, align 4
  %15 = getelementptr %struct.napi_alloc_cache, ptr %6, i32 0, i32 2, i32 32
  tail call void @kmem_cache_free_bulk(ptr noundef %14, i32 noundef 32, ptr noundef %15) #21
  store i32 32, ptr %7, align 4
  br label %16

16:                                               ; preds = %13, %1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @napi_skb_free_stolen_head(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 13, i32 0, i32 3
  %3 = load i16, ptr %2, align 2
  %4 = and i16 %3, 16384
  %5 = icmp eq i16 %4, 0
  br i1 %5, label %38, label %6, !prof !13

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 4
  %8 = load i32, ptr %7, align 8
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %17, label %10

10:                                               ; preds = %6
  %11 = and i32 %8, 1
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %16

13:                                               ; preds = %10
  %14 = and i32 %8, -2
  %15 = inttoptr i32 %14 to ptr
  tail call void @dst_release(ptr noundef %15) #21
  br label %16

16:                                               ; preds = %13, %10
  store i32 0, ptr %7, align 8
  br label %17

17:                                               ; preds = %16, %6
  %18 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 12
  %19 = load i8, ptr %18, align 1
  %20 = icmp eq i8 %19, 0
  br i1 %20, label %24, label %21

21:                                               ; preds = %17
  %22 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 20
  %23 = load ptr, ptr %22, align 8
  tail call void @__skb_ext_put(ptr noundef %23) #21
  br label %24

24:                                               ; preds = %21, %17
  %25 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 4, i32 0, i32 1
  %26 = load ptr, ptr %25, align 4
  %27 = icmp eq ptr %26, null
  br i1 %27, label %30, label %28

28:                                               ; preds = %24
  tail call void %26(ptr noundef %0) #21
  store ptr null, ptr %25, align 4
  %29 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 1
  store ptr null, ptr %29, align 4
  br label %35

30:                                               ; preds = %24
  %31 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 1
  %32 = load ptr, ptr %31, align 4
  %33 = icmp eq ptr %32, null
  br i1 %33, label %35, label %34, !prof !13

34:                                               ; preds = %30
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/skbuff.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2859, 0\0A.popsection", ""() #21, !srcloc !33
  unreachable

35:                                               ; preds = %30, %28
  %36 = load i16, ptr %2, align 2
  %37 = and i16 %36, -16385
  store i16 %37, ptr %2, align 2
  br label %38

38:                                               ; preds = %35, %1
  %39 = tail call i32 @llvm.read_register.i32(metadata !0) #21
  %40 = inttoptr i32 %39 to ptr
  %41 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %40) #20, !srcloc !9
  %42 = add i32 %41, ptrtoint (ptr @napi_alloc_cache to i32)
  %43 = inttoptr i32 %42 to ptr
  %44 = getelementptr inbounds %struct.napi_alloc_cache, ptr %43, i32 0, i32 1
  %45 = load i32, ptr %44, align 4
  %46 = add i32 %45, 1
  store i32 %46, ptr %44, align 4
  %47 = getelementptr %struct.napi_alloc_cache, ptr %43, i32 0, i32 2, i32 %45
  store ptr %0, ptr %47, align 4
  %48 = load i32, ptr %44, align 4
  %49 = icmp eq i32 %48, 64
  br i1 %49, label %50, label %53, !prof !12

50:                                               ; preds = %38
  %51 = load ptr, ptr @skbuff_head_cache, align 4
  %52 = getelementptr %struct.napi_alloc_cache, ptr %43, i32 0, i32 2, i32 32
  tail call void @kmem_cache_free_bulk(ptr noundef %51, i32 noundef 32, ptr noundef %52) #21
  store i32 32, ptr %44, align 4
  br label %53

53:                                               ; preds = %50, %38
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @napi_consume_skb(ptr noundef %0, i32 noundef %1) #0 {
  %3 = icmp eq i32 %1, 0
  br i1 %3, label %4, label %5, !prof !12

4:                                                ; preds = %2
  tail call void @__dev_kfree_skb_any(ptr noundef %0, i32 noundef 0) #21
  br label %51

5:                                                ; preds = %2
  %6 = icmp eq ptr %0, null
  br i1 %6, label %51, label %7, !prof !12

7:                                                ; preds = %5
  %8 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 19
  %9 = load volatile i32, ptr %8, align 4
  %10 = icmp eq i32 %9, 1
  br i1 %10, label %11, label %12, !prof !13

11:                                               ; preds = %7
  tail call void asm sideeffect "dmb ish", "~{memory}"() #21, !srcloc !32
  br label %14

12:                                               ; preds = %7
  %13 = tail call fastcc zeroext i1 @refcount_dec_and_test(ptr noundef %8) #21
  br i1 %13, label %14, label %51, !prof !12

14:                                               ; preds = %12, %11
  %15 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_consume_skb, i32 0, i32 1), align 4
  %16 = icmp sgt i32 %15, 0
  br i1 %16, label %17, label %30

17:                                               ; preds = %14
  %18 = tail call ptr @llvm.thread.pointer() #21
  %19 = getelementptr inbounds %struct.thread_info, ptr %18, i32 0, i32 2
  %20 = load i32, ptr %19, align 8
  %21 = lshr i32 %20, 5
  %22 = getelementptr i32, ptr @__cpu_online_mask, i32 %21
  %23 = load volatile i32, ptr %22, align 4
  %24 = and i32 %20, 31
  %25 = shl nuw i32 1, %24
  %26 = and i32 %25, %23
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %30, label %28

28:                                               ; preds = %17
  tail call void asm sideeffect "", "~{memory}"() #21, !srcloc !27
  %29 = tail call i32 @__traceiter_consume_skb(ptr noundef null, ptr noundef nonnull %0) #21
  tail call void asm sideeffect "", "~{memory}"() #21, !srcloc !28
  br label %30

30:                                               ; preds = %28, %17, %14
  %31 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 11
  %32 = load i8, ptr %31, align 2
  %33 = and i8 %32, 12
  %34 = icmp eq i8 %33, 0
  br i1 %34, label %36, label %35

35:                                               ; preds = %30
  tail call void @__kfree_skb(ptr noundef nonnull %0)
  br label %51

36:                                               ; preds = %30
  tail call fastcc void @skb_release_all(ptr noundef nonnull %0)
  %37 = tail call i32 @llvm.read_register.i32(metadata !0) #21
  %38 = inttoptr i32 %37 to ptr
  %39 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %38) #20, !srcloc !9
  %40 = add i32 %39, ptrtoint (ptr @napi_alloc_cache to i32)
  %41 = inttoptr i32 %40 to ptr
  %42 = getelementptr inbounds %struct.napi_alloc_cache, ptr %41, i32 0, i32 1
  %43 = load i32, ptr %42, align 4
  %44 = add i32 %43, 1
  store i32 %44, ptr %42, align 4
  %45 = getelementptr %struct.napi_alloc_cache, ptr %41, i32 0, i32 2, i32 %43
  store ptr %0, ptr %45, align 4
  %46 = load i32, ptr %42, align 4
  %47 = icmp eq i32 %46, 64
  br i1 %47, label %48, label %51, !prof !12

48:                                               ; preds = %36
  %49 = load ptr, ptr @skbuff_head_cache, align 4
  %50 = getelementptr %struct.napi_alloc_cache, ptr %41, i32 0, i32 2, i32 32
  tail call void @kmem_cache_free_bulk(ptr noundef %49, i32 noundef 32, ptr noundef %50) #21
  store i32 32, ptr %42, align 4
  br label %51

51:                                               ; preds = %48, %36, %35, %12, %5, %4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @alloc_skb_for_msg(ptr noundef %0) #0 {
  %2 = tail call ptr @__alloc_skb(i32 noundef 0, i32 noundef 2592, i32 noundef 0, i32 noundef -1) #21
  %3 = icmp eq ptr %2, null
  br i1 %3, label %17, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 5
  %6 = load i32, ptr %5, align 8
  %7 = getelementptr inbounds %struct.sk_buff, ptr %2, i32 0, i32 5
  store i32 %6, ptr %7, align 8
  %8 = load i32, ptr %5, align 8
  %9 = getelementptr inbounds %struct.sk_buff, ptr %2, i32 0, i32 6
  store i32 %8, ptr %9, align 4
  %10 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 18
  %11 = load i32, ptr %10, align 8
  %12 = getelementptr inbounds %struct.sk_buff, ptr %2, i32 0, i32 18
  store i32 %11, ptr %12, align 8
  %13 = getelementptr inbounds %struct.sk_buff, ptr %2, i32 0, i32 15
  %14 = load ptr, ptr %13, align 4
  %15 = getelementptr inbounds %struct.skb_shared_info, ptr %14, i32 0, i32 6
  store ptr %0, ptr %15, align 8
  tail call fastcc void @__copy_skb_header(ptr noundef nonnull %2, ptr noundef %0)
  %16 = getelementptr inbounds %struct.sk_buff, ptr %2, i32 0, i32 4, i32 0, i32 1
  store ptr null, ptr %16, align 4
  br label %17

17:                                               ; preds = %4, %1
  ret ptr %2
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @__copy_skb_header(ptr nocapture noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 2
  %4 = load i64, ptr %3, align 8
  %5 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 2
  store i64 %4, ptr %5, align 8
  %6 = getelementptr inbounds %struct.anon, ptr %1, i32 0, i32 2
  %7 = load ptr, ptr %6, align 8
  %8 = getelementptr inbounds %struct.anon, ptr %0, i32 0, i32 2
  store ptr %7, ptr %8, align 8
  %9 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 3
  %10 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 3
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 8 dereferenceable(48) %9, ptr noundef align 8 dereferenceable(48) %10, i32 48, i1 false)
  %11 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 4
  %12 = load i32, ptr %11, align 8
  %13 = icmp ne i32 %12, 0
  %14 = zext i1 %13 to i8
  %15 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 13, i32 0, i32 3
  %16 = load i16, ptr %15, align 2
  %17 = lshr i16 %16, 14
  %18 = trunc i16 %17 to i8
  %19 = and i8 %18, 1
  %20 = or i8 %19, %14
  %21 = zext i8 %20 to i16
  %22 = shl nuw nsw i16 %21, 14
  %23 = and i16 %16, -16385
  %24 = or i16 %22, %23
  store i16 %24, ptr %15, align 2
  %25 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 4
  store i32 %12, ptr %25, align 8
  %26 = and i32 %12, 1
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %39

28:                                               ; preds = %2
  %29 = and i32 %12, -2
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %39, label %31

31:                                               ; preds = %28
  %32 = inttoptr i32 %29 to ptr
  %33 = getelementptr inbounds %struct.dst_entry, ptr %32, i32 0, i32 18
  tail call void asm sideeffect "dmb ish", "~{memory}"() #21, !srcloc !34
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %33) #21, !srcloc !16
  %34 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %33, ptr %33, i32 0, i32 1, ptr elementtype(i32) %33) #21, !srcloc !35
  %35 = extractvalue { i32, i32, i32 } %34, 0
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %38, label %37

37:                                               ; preds = %31
  tail call void asm sideeffect "dmb ish", "~{memory}"() #21, !srcloc !36
  br label %39

38:                                               ; preds = %31
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.18, i32 noundef 231, i32 noundef 9, ptr noundef null) #21
  br label %39

39:                                               ; preds = %38, %37, %28, %2
  %40 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 12
  %41 = load i8, ptr %40, align 1
  %42 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 12
  store i8 %41, ptr %42, align 1
  %43 = load i8, ptr %40, align 1
  %44 = icmp eq i8 %43, 0
  br i1 %44, label %59, label %45

45:                                               ; preds = %39
  %46 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 20
  %47 = load ptr, ptr %46, align 8
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %47) #21, !srcloc !16
  %48 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %47, ptr %47, i32 1, ptr elementtype(i32) %47) #21, !srcloc !37
  %49 = extractvalue { i32, i32, i32 } %48, 0
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %55, label %51, !prof !12

51:                                               ; preds = %45
  %52 = add i32 %49, 1
  %53 = or i32 %52, %49
  %54 = icmp sgt i32 %53, -1
  br i1 %54, label %57, label %55, !prof !13

55:                                               ; preds = %51, %45
  %56 = phi i32 [ 2, %45 ], [ 1, %51 ]
  tail call void @refcount_warn_saturate(ptr noundef %47, i32 noundef %56) #21
  br label %57

57:                                               ; preds = %55, %51
  %58 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 20
  store ptr %47, ptr %58, align 8
  br label %59

59:                                               ; preds = %57, %39
  %60 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 9
  %61 = load i16, ptr %60, align 4
  %62 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 9
  store i16 %61, ptr %62, align 4
  %63 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 13
  %64 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 13
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 8 dereferenceable(48) %63, ptr noundef align 8 dereferenceable(48) %64, i32 48, i1 false)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @skb_morph(ptr noundef returned %0, ptr nocapture noundef %1) #0 {
  tail call fastcc void @skb_release_all(ptr noundef %0)
  %3 = tail call fastcc ptr @__skb_clone(ptr noundef %0, ptr noundef %1)
  ret ptr %0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc ptr @__skb_clone(ptr noundef returned %0, ptr nocapture noundef %1) unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.anon, ptr %0, i32 0, i32 1
  store ptr null, ptr %3, align 4
  store ptr null, ptr %0, align 8
  %4 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 1
  store ptr null, ptr %4, align 4
  tail call fastcc void @__copy_skb_header(ptr noundef %0, ptr noundef %1)
  %5 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 5
  %6 = load i32, ptr %5, align 8
  %7 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 5
  store i32 %6, ptr %7, align 8
  %8 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 6
  %9 = load i32, ptr %8, align 4
  %10 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 6
  store i32 %9, ptr %10, align 4
  %11 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 7
  %12 = load i16, ptr %11, align 8
  %13 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 7
  store i16 %12, ptr %13, align 8
  %14 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 11
  %15 = load i8, ptr %14, align 2
  %16 = and i8 %15, 2
  %17 = icmp eq i8 %16, 0
  br i1 %17, label %26, label %18

18:                                               ; preds = %2
  %19 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 17
  %20 = load ptr, ptr %19, align 4
  %21 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 16
  %22 = load ptr, ptr %21, align 8
  %23 = ptrtoint ptr %20 to i32
  %24 = ptrtoint ptr %22 to i32
  %25 = sub i32 %23, %24
  br label %30

26:                                               ; preds = %2
  %27 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 8
  %28 = load i16, ptr %27, align 2
  %29 = zext i16 %28 to i32
  br label %30

30:                                               ; preds = %26, %18
  %31 = phi i32 [ %25, %18 ], [ %29, %26 ]
  %32 = trunc i32 %31 to i16
  %33 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 8
  store i16 %32, ptr %33, align 2
  %34 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 11
  %35 = load i8, ptr %34, align 2
  %36 = and i8 %35, -20
  %37 = or i8 %36, 1
  store i8 %37, ptr %34, align 2
  %38 = load i8, ptr %14, align 2
  %39 = and i8 %38, 64
  %40 = and i8 %37, -83
  %41 = or i8 %40, %39
  store i8 %41, ptr %34, align 2
  %42 = load i8, ptr %14, align 2
  %43 = and i8 %42, -128
  %44 = and i8 %41, 109
  %45 = or i8 %44, %43
  store i8 %45, ptr %34, align 2
  %46 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 4, i32 0, i32 1
  store ptr null, ptr %46, align 4
  %47 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 14
  %48 = load ptr, ptr %47, align 8
  %49 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 14
  store ptr %48, ptr %49, align 8
  %50 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 15
  %51 = load ptr, ptr %50, align 4
  %52 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 15
  store ptr %51, ptr %52, align 4
  %53 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 16
  %54 = load ptr, ptr %53, align 8
  %55 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 16
  store ptr %54, ptr %55, align 8
  %56 = load i8, ptr %14, align 2
  %57 = and i8 %56, 32
  %58 = and i8 %45, -51
  %59 = or i8 %57, %58
  store i8 %59, ptr %34, align 2
  %60 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 17
  %61 = load ptr, ptr %60, align 4
  %62 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 17
  store ptr %61, ptr %62, align 4
  %63 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 18
  %64 = load i32, ptr %63, align 8
  %65 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 18
  store i32 %64, ptr %65, align 8
  %66 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 19
  store volatile i32 1, ptr %66, align 4
  %67 = load ptr, ptr %50, align 4
  %68 = getelementptr inbounds %struct.skb_shared_info, ptr %67, i32 0, i32 10
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %68) #21, !srcloc !16
  %69 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %68, ptr %68, i32 1, ptr elementtype(i32) %68) #21, !srcloc !38
  %70 = load i8, ptr %14, align 2
  %71 = or i8 %70, 1
  store i8 %71, ptr %14, align 2
  ret ptr %0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @mm_account_pinned_pages(ptr nocapture noundef %0, i32 noundef %1) #0 {
  %3 = tail call zeroext i1 @capable(i32 noundef 14) #21
  %4 = icmp eq i32 %1, 0
  %5 = or i1 %4, %3
  br i1 %5, label %56, label %6

6:                                                ; preds = %2
  %7 = lshr i32 %1, 12
  %8 = add nuw nsw i32 %7, 2
  %9 = tail call ptr @llvm.thread.pointer() #21
  %10 = getelementptr inbounds %struct.task_struct, ptr %9, i32 0, i32 93
  %11 = load ptr, ptr %10, align 16
  %12 = getelementptr %struct.signal_struct, ptr %11, i32 0, i32 50, i32 8
  %13 = load volatile i32, ptr %12, align 8
  %14 = lshr i32 %13, 12
  %15 = load ptr, ptr %0, align 4
  %16 = icmp eq ptr %15, null
  br i1 %16, label %17, label %22

17:                                               ; preds = %6
  %18 = getelementptr inbounds %struct.task_struct, ptr %9, i32 0, i32 83
  %19 = load ptr, ptr %18, align 8
  %20 = getelementptr inbounds %struct.cred, ptr %19, i32 0, i32 20
  %21 = load ptr, ptr %20, align 4
  br label %22

22:                                               ; preds = %17, %6
  %23 = phi ptr [ %21, %17 ], [ %15, %6 ]
  %24 = getelementptr inbounds %struct.user_struct, ptr %23, i32 0, i32 6
  br label %25

25:                                               ; preds = %34, %22
  %26 = load volatile i32, ptr %24, align 4
  %27 = add i32 %26, %8
  %28 = icmp ugt i32 %27, %14
  br i1 %28, label %56, label %29

29:                                               ; preds = %25
  tail call void asm sideeffect "dmb ish", "~{memory}"() #21, !srcloc !39
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %24) #21, !srcloc !16
  br label %30

30:                                               ; preds = %30, %29
  %31 = tail call { i32, i32 } asm sideeffect "@ atomic_cmpxchg\0Aldrex\09$1, [$3]\0Amov\09$0, #0\0Ateq\09$1, $4\0Astrexeq $0, $5, [$3]\0A", "=&r,=&r,=*Qo,r,Ir,r,*Qo,~{cc}"(ptr elementtype(i32) %24, ptr %24, i32 %26, i32 %27, ptr elementtype(i32) %24) #21, !srcloc !40
  %32 = extractvalue { i32, i32 } %31, 0
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %34, label %30

34:                                               ; preds = %30
  %35 = extractvalue { i32, i32 } %31, 1
  tail call void asm sideeffect "dmb ish", "~{memory}"() #21, !srcloc !41
  %36 = icmp eq i32 %35, %26
  br i1 %36, label %37, label %25

37:                                               ; preds = %34
  %38 = load ptr, ptr %0, align 4
  %39 = icmp eq ptr %38, null
  br i1 %39, label %40, label %52

40:                                               ; preds = %37
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %23) #21, !srcloc !16
  %41 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %23, ptr %23, i32 1, ptr elementtype(i32) %23) #21, !srcloc !37
  %42 = extractvalue { i32, i32, i32 } %41, 0
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %48, label %44, !prof !12

44:                                               ; preds = %40
  %45 = add i32 %42, 1
  %46 = or i32 %45, %42
  %47 = icmp sgt i32 %46, -1
  br i1 %47, label %50, label %48, !prof !13

48:                                               ; preds = %44, %40
  %49 = phi i32 [ 2, %40 ], [ 1, %44 ]
  tail call void @refcount_warn_saturate(ptr noundef %23, i32 noundef %49) #21
  br label %50

50:                                               ; preds = %48, %44
  store ptr %23, ptr %0, align 4
  %51 = getelementptr inbounds %struct.mmpin, ptr %0, i32 0, i32 1
  store i32 %8, ptr %51, align 4
  br label %56

52:                                               ; preds = %37
  %53 = getelementptr inbounds %struct.mmpin, ptr %0, i32 0, i32 1
  %54 = load i32, ptr %53, align 4
  %55 = add i32 %54, %8
  store i32 %55, ptr %53, align 4
  br label %56

56:                                               ; preds = %52, %50, %25, %2
  %57 = phi i32 [ 0, %2 ], [ 0, %52 ], [ 0, %50 ], [ -105, %25 ]
  ret i32 %57
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @capable(i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @mm_unaccount_pinned_pages(ptr nocapture noundef readonly %0) #0 {
  %2 = load ptr, ptr %0, align 4
  %3 = icmp eq ptr %2, null
  br i1 %3, label %10, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.mmpin, ptr %0, i32 0, i32 1
  %6 = load i32, ptr %5, align 4
  %7 = getelementptr inbounds %struct.user_struct, ptr %2, i32 0, i32 6
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %7) #21, !srcloc !16
  %8 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %7, ptr %7, i32 %6, ptr elementtype(i32) %7) #21, !srcloc !42
  %9 = load ptr, ptr %0, align 4
  tail call void @free_uid(ptr noundef %9) #21
  br label %10

10:                                               ; preds = %4, %1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @free_uid(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @msg_zerocopy_alloc(ptr noundef %0, i32 noundef %1) #0 {
  %3 = tail call ptr @llvm.thread.pointer() #21
  %4 = getelementptr inbounds %struct.thread_info, ptr %3, i32 0, i32 1
  %5 = load volatile i32, ptr %4, align 4
  %6 = and i32 %5, 15728640
  %7 = load volatile i32, ptr %4, align 4
  %8 = and i32 %7, 983040
  %9 = or i32 %8, %6
  %10 = load volatile i32, ptr %4, align 4
  %11 = and i32 %10, 256
  %12 = or i32 %9, %11
  %13 = icmp ne i32 %12, 0
  %14 = load i1, ptr @msg_zerocopy_alloc.__already_done, align 1
  %15 = xor i1 %14, true
  %16 = select i1 %13, i1 %15, i1 false
  br i1 %16, label %17, label %18, !prof !12

17:                                               ; preds = %2
  store i1 true, ptr @msg_zerocopy_alloc.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1172, i32 noundef 9, ptr noundef null) #21
  br label %18

18:                                               ; preds = %17, %2
  %19 = tail call ptr @sock_omalloc(ptr noundef %0, i32 noundef 0, i32 noundef 3264) #21
  %20 = icmp eq ptr %19, null
  br i1 %20, label %78, label %21

21:                                               ; preds = %18
  %22 = getelementptr inbounds %struct.sk_buff, ptr %19, i32 0, i32 3, i32 24
  store ptr null, ptr %22, align 4
  %23 = tail call i32 @mm_account_pinned_pages(ptr noundef %22, i32 noundef %1)
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %54, label %25

25:                                               ; preds = %21
  %26 = getelementptr inbounds %struct.sk_buff, ptr %19, i32 0, i32 19
  %27 = load volatile i32, ptr %26, align 4
  %28 = icmp eq i32 %27, 1
  tail call void asm sideeffect "dmb ish", "~{memory}"() #21
  br i1 %28, label %37, label %29, !prof !13

29:                                               ; preds = %25
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %26) #21, !srcloc !16
  %30 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %26, ptr %26, i32 1, ptr elementtype(i32) %26) #21, !srcloc !19
  %31 = extractvalue { i32, i32, i32 } %30, 0
  %32 = icmp eq i32 %31, 1
  br i1 %32, label %36, label %33

33:                                               ; preds = %29
  %34 = icmp sgt i32 %31, 0
  br i1 %34, label %78, label %35, !prof !13

35:                                               ; preds = %33
  tail call void @refcount_warn_saturate(ptr noundef %26, i32 noundef 3) #21
  br label %78

36:                                               ; preds = %29
  tail call void asm sideeffect "dmb ish", "~{memory}"() #21, !srcloc !20
  br label %37

37:                                               ; preds = %36, %25
  %38 = tail call ptr @llvm.returnaddress(i32 0) #21
  %39 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_kfree_skb, i32 0, i32 1), align 4
  %40 = icmp sgt i32 %39, 0
  br i1 %40, label %41, label %53

41:                                               ; preds = %37
  %42 = getelementptr inbounds %struct.thread_info, ptr %3, i32 0, i32 2
  %43 = load i32, ptr %42, align 8
  %44 = lshr i32 %43, 5
  %45 = getelementptr i32, ptr @__cpu_online_mask, i32 %44
  %46 = load volatile i32, ptr %45, align 4
  %47 = and i32 %43, 31
  %48 = shl nuw i32 1, %47
  %49 = and i32 %48, %46
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %53, label %51

51:                                               ; preds = %41
  tail call void asm sideeffect "", "~{memory}"() #21, !srcloc !21
  %52 = tail call i32 @__traceiter_kfree_skb(ptr noundef null, ptr noundef nonnull %19, ptr noundef %38, i32 noundef 0) #21
  tail call void asm sideeffect "", "~{memory}"() #21, !srcloc !22
  br label %53

53:                                               ; preds = %51, %41, %37
  tail call void @__kfree_skb(ptr noundef nonnull %19) #21
  br label %78

54:                                               ; preds = %21
  %55 = getelementptr inbounds %struct.sk_buff, ptr %19, i32 0, i32 3
  store ptr @msg_zerocopy_callback, ptr %55, align 4
  %56 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 68
  tail call void asm sideeffect "dmb ish", "~{memory}"() #21, !srcloc !43
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %56) #21, !srcloc !16
  %57 = tail call { i32, i32 } asm sideeffect "@ atomic_add_return\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %56, ptr %56, i32 1, ptr elementtype(i32) %56) #21, !srcloc !44
  %58 = extractvalue { i32, i32 } %57, 0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #21, !srcloc !45
  %59 = add i32 %58, -1
  %60 = getelementptr inbounds %struct.sk_buff, ptr %19, i32 0, i32 3, i32 4
  store i32 %59, ptr %60, align 4
  %61 = getelementptr inbounds %struct.sk_buff, ptr %19, i32 0, i32 3, i32 8
  store i16 1, ptr %61, align 4
  %62 = getelementptr inbounds %struct.sk_buff, ptr %19, i32 0, i32 3, i32 12
  store i32 %1, ptr %62, align 4
  %63 = getelementptr inbounds %struct.sk_buff, ptr %19, i32 0, i32 3, i32 10
  %64 = load i8, ptr %63, align 2
  %65 = or i8 %64, 1
  store i8 %65, ptr %63, align 2
  %66 = getelementptr inbounds %struct.sk_buff, ptr %19, i32 0, i32 3, i32 20
  store i8 3, ptr %66, align 4
  %67 = getelementptr inbounds %struct.sk_buff, ptr %19, i32 0, i32 3, i32 16
  store volatile i32 1, ptr %67, align 4
  %68 = getelementptr inbounds %struct.sock_common, ptr %0, i32 0, i32 19
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %68) #21, !srcloc !16
  %69 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %68, ptr %68, i32 1, ptr elementtype(i32) %68) #21, !srcloc !37
  %70 = extractvalue { i32, i32, i32 } %69, 0
  %71 = icmp eq i32 %70, 0
  br i1 %71, label %76, label %72, !prof !12

72:                                               ; preds = %54
  %73 = add i32 %70, 1
  %74 = or i32 %73, %70
  %75 = icmp sgt i32 %74, -1
  br i1 %75, label %78, label %76, !prof !13

76:                                               ; preds = %72, %54
  %77 = phi i32 [ 2, %54 ], [ 1, %72 ]
  tail call void @refcount_warn_saturate(ptr noundef %68, i32 noundef %77) #21
  br label %78

78:                                               ; preds = %76, %72, %53, %35, %33, %18
  %79 = phi ptr [ null, %18 ], [ null, %33 ], [ null, %35 ], [ null, %53 ], [ %55, %72 ], [ %55, %76 ]
  ret ptr %79
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @sock_omalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @msg_zerocopy_callback(ptr nocapture readnone %0, ptr noundef %1, i1 noundef zeroext %2) #0 {
  %4 = getelementptr inbounds %struct.ubuf_info, ptr %1, i32 0, i32 1, i32 0, i32 2
  %5 = load i8, ptr %4, align 2
  %6 = zext i1 %2 to i8
  %7 = or i8 %6, -2
  %8 = and i8 %5, %7
  store i8 %8, ptr %4, align 2
  %9 = getelementptr inbounds %struct.ubuf_info, ptr %1, i32 0, i32 2
  tail call void asm sideeffect "dmb ish", "~{memory}"() #21, !srcloc !18
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %9) #21, !srcloc !16
  %10 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %9, ptr %9, i32 1, ptr elementtype(i32) %9) #21, !srcloc !19
  %11 = extractvalue { i32, i32, i32 } %10, 0
  %12 = icmp eq i32 %11, 1
  br i1 %12, label %16, label %13

13:                                               ; preds = %3
  %14 = icmp sgt i32 %11, 0
  br i1 %14, label %98, label %15, !prof !13

15:                                               ; preds = %13
  tail call void @refcount_warn_saturate(ptr noundef %9, i32 noundef 3) #21
  br label %98

16:                                               ; preds = %3
  tail call void asm sideeffect "dmb ish", "~{memory}"() #21, !srcloc !20
  %17 = getelementptr i8, ptr %1, i32 -24
  %18 = getelementptr i8, ptr %1, i32 -12
  %19 = load ptr, ptr %18, align 4
  %20 = getelementptr %struct.ubuf_info, ptr %1, i32 0, i32 4
  %21 = load ptr, ptr %20, align 4
  %22 = icmp eq ptr %21, null
  br i1 %22, label %29, label %23

23:                                               ; preds = %16
  %24 = getelementptr inbounds %struct.ubuf_info, ptr %1, i32 0, i32 4, i32 1
  %25 = load i32, ptr %24, align 4
  %26 = getelementptr inbounds %struct.user_struct, ptr %21, i32 0, i32 6
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %26) #21, !srcloc !16
  %27 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %26, ptr %26, i32 %25, ptr elementtype(i32) %26) #21, !srcloc !42
  %28 = load ptr, ptr %20, align 4
  tail call void @free_uid(ptr noundef %28) #21
  br label %29

29:                                               ; preds = %23, %16
  %30 = getelementptr inbounds %struct.ubuf_info, ptr %1, i32 0, i32 1
  %31 = getelementptr inbounds %struct.ubuf_info, ptr %1, i32 0, i32 1, i32 0, i32 1
  %32 = load i16, ptr %31, align 4
  %33 = icmp eq i16 %32, 0
  br i1 %33, label %88, label %34

34:                                               ; preds = %29
  %35 = getelementptr inbounds %struct.sock_common, ptr %19, i32 0, i32 13
  %36 = load volatile i32, ptr %35, align 4
  %37 = and i32 %36, 1
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %39, label %88

39:                                               ; preds = %34
  %40 = load i32, ptr %30, align 4
  %41 = zext i16 %32 to i32
  %42 = add nsw i32 %41, -1
  %43 = add i32 %42, %40
  %44 = load i8, ptr %4, align 2
  %45 = and i8 %44, 1
  %46 = icmp eq i8 %45, 0
  %47 = getelementptr i8, ptr %1, i32 28
  tail call void @llvm.memset.p0.i64(ptr noundef align 4 dereferenceable(48) %1, i8 0, i64 48, i1 false) #21
  store i8 5, ptr %47, align 4
  %48 = getelementptr i8, ptr %1, i32 36
  store i32 %43, ptr %48, align 4
  %49 = getelementptr i8, ptr %1, i32 32
  store i32 %40, ptr %49, align 4
  br i1 %46, label %50, label %52

50:                                               ; preds = %39
  %51 = getelementptr i8, ptr %1, i32 30
  store i8 1, ptr %51, align 2
  br label %52

52:                                               ; preds = %50, %39
  %53 = getelementptr inbounds %struct.sock, ptr %19, i32 0, i32 7
  %54 = getelementptr inbounds %struct.sock, ptr %19, i32 0, i32 7, i32 2
  %55 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %54) #21
  %56 = getelementptr inbounds %struct.sock, ptr %19, i32 0, i32 7, i32 0, i32 0, i32 1
  %57 = load volatile ptr, ptr %56, align 4
  %58 = icmp eq ptr %57, %53
  %59 = icmp eq ptr %57, null
  %60 = or i1 %58, %59
  br i1 %60, label %81, label %61

61:                                               ; preds = %52
  %62 = getelementptr inbounds %struct.sk_buff, ptr %57, i32 0, i32 3, i32 28
  %63 = load i8, ptr %62, align 4
  %64 = icmp eq i8 %63, 5
  br i1 %64, label %65, label %81

65:                                               ; preds = %61
  %66 = getelementptr inbounds %struct.sk_buff, ptr %57, i32 0, i32 3, i32 32
  %67 = load i32, ptr %66, align 4
  %68 = getelementptr inbounds %struct.sk_buff, ptr %57, i32 0, i32 3, i32 36
  %69 = load i32, ptr %68, align 4
  %70 = sub i32 %69, %67
  %71 = zext i32 %70 to i64
  %72 = zext i16 %32 to i64
  %73 = add nuw nsw i64 %72, 1
  %74 = add nuw nsw i64 %73, %71
  %75 = icmp ult i64 %74, 4294967296
  %76 = add i32 %69, 1
  %77 = icmp eq i32 %76, %40
  %78 = select i1 %75, i1 %77, i1 false
  br i1 %78, label %79, label %81

79:                                               ; preds = %65
  %80 = add i32 %69, %41
  store i32 %80, ptr %68, align 4
  br label %86

81:                                               ; preds = %65, %61, %52
  store volatile ptr %53, ptr %17, align 8
  %82 = getelementptr i8, ptr %1, i32 -20
  store volatile ptr %57, ptr %82, align 4
  store volatile ptr %17, ptr %56, align 4
  store volatile ptr %17, ptr %57, align 4
  %83 = getelementptr inbounds %struct.sock, ptr %19, i32 0, i32 7, i32 1
  %84 = load i32, ptr %83, align 4
  %85 = add i32 %84, 1
  store volatile i32 %85, ptr %83, align 4
  br label %86

86:                                               ; preds = %81, %79
  %87 = phi ptr [ null, %81 ], [ %17, %79 ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %54, i32 noundef %55) #21
  tail call void @sk_error_report(ptr noundef %19) #21
  br label %88

88:                                               ; preds = %86, %34, %29
  %89 = phi ptr [ %17, %34 ], [ %87, %86 ], [ %17, %29 ]
  tail call void @consume_skb(ptr noundef %89) #21
  %90 = getelementptr inbounds %struct.sock_common, ptr %19, i32 0, i32 19
  tail call void asm sideeffect "dmb ish", "~{memory}"() #21, !srcloc !18
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %90) #21, !srcloc !16
  %91 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %90, ptr %90, i32 1, ptr elementtype(i32) %90) #21, !srcloc !19
  %92 = extractvalue { i32, i32, i32 } %91, 0
  %93 = icmp eq i32 %92, 1
  br i1 %93, label %97, label %94

94:                                               ; preds = %88
  %95 = icmp sgt i32 %92, 0
  br i1 %95, label %98, label %96, !prof !13

96:                                               ; preds = %94
  tail call void @refcount_warn_saturate(ptr noundef %90, i32 noundef 3) #21
  br label %98

97:                                               ; preds = %88
  tail call void asm sideeffect "dmb ish", "~{memory}"() #21, !srcloc !20
  tail call void @sk_free(ptr noundef %19) #21
  br label %98

98:                                               ; preds = %97, %96, %94, %15, %13
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @msg_zerocopy_realloc(ptr noundef %0, i32 noundef %1, ptr noundef %2) #0 {
  %4 = icmp eq ptr %2, null
  br i1 %4, label %45, label %5

5:                                                ; preds = %3
  %6 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 4, i32 1
  %7 = load i32, ptr %6, align 4
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %12

9:                                                ; preds = %5
  %10 = load i1, ptr @msg_zerocopy_realloc.__already_done, align 1
  br i1 %10, label %47, label %11, !prof !13

11:                                               ; preds = %9
  store i1 true, ptr @msg_zerocopy_realloc.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1216, i32 noundef 9, ptr noundef null) #21
  br label %47

12:                                               ; preds = %5
  %13 = getelementptr inbounds %struct.ubuf_info, ptr %2, i32 0, i32 1, i32 0, i32 3
  %14 = load i32, ptr %13, align 4
  %15 = add i32 %14, %1
  %16 = getelementptr inbounds %struct.ubuf_info, ptr %2, i32 0, i32 1, i32 0, i32 1
  %17 = load i16, ptr %16, align 4
  %18 = icmp eq i16 %17, -2
  %19 = icmp ugt i32 %15, 524288
  %20 = select i1 %18, i1 true, i1 %19
  br i1 %20, label %41, label %21

21:                                               ; preds = %12
  %22 = getelementptr inbounds %struct.ubuf_info, ptr %2, i32 0, i32 1
  %23 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 68
  %24 = load volatile i32, ptr %23, align 4
  %25 = load i32, ptr %22, align 4
  %26 = zext i16 %17 to i32
  %27 = add i32 %25, %26
  %28 = icmp eq i32 %27, %24
  br i1 %28, label %29, label %45

29:                                               ; preds = %21
  %30 = getelementptr inbounds %struct.ubuf_info, ptr %2, i32 0, i32 4
  %31 = tail call i32 @mm_account_pinned_pages(ptr noundef %30, i32 noundef %1)
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %33, label %47

33:                                               ; preds = %29
  %34 = load i16, ptr %16, align 4
  %35 = add i16 %34, 1
  store i16 %35, ptr %16, align 4
  store i32 %15, ptr %13, align 4
  %36 = add i32 %24, 1
  store volatile i32 %36, ptr %23, align 4
  %37 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 45
  %38 = load i16, ptr %37, align 2
  %39 = icmp eq i16 %38, 1
  br i1 %39, label %40, label %47

40:                                               ; preds = %33
  tail call fastcc void @net_zcopy_get(ptr noundef nonnull %2)
  br label %47

41:                                               ; preds = %12
  %42 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 45
  %43 = load i16, ptr %42, align 2
  %44 = icmp eq i16 %43, 1
  br i1 %44, label %45, label %47

45:                                               ; preds = %41, %21, %3
  %46 = tail call ptr @msg_zerocopy_alloc(ptr noundef %0, i32 noundef %1)
  br label %47

47:                                               ; preds = %45, %41, %40, %33, %29, %11, %9
  %48 = phi ptr [ null, %41 ], [ %46, %45 ], [ %2, %33 ], [ %2, %40 ], [ null, %29 ], [ null, %9 ], [ null, %11 ]
  ret ptr %48
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @net_zcopy_get(ptr noundef %0) unnamed_addr #3 {
  %2 = getelementptr inbounds %struct.ubuf_info, ptr %0, i32 0, i32 2
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %2) #21, !srcloc !16
  %3 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %2, ptr %2, i32 1, ptr elementtype(i32) %2) #21, !srcloc !37
  %4 = extractvalue { i32, i32, i32 } %3, 0
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %10, label %6, !prof !12

6:                                                ; preds = %1
  %7 = add i32 %4, 1
  %8 = or i32 %7, %4
  %9 = icmp sgt i32 %8, -1
  br i1 %9, label %12, label %10, !prof !13

10:                                               ; preds = %6, %1
  %11 = phi i32 [ 2, %1 ], [ 1, %6 ]
  tail call void @refcount_warn_saturate(ptr noundef %2, i32 noundef %11) #21
  br label %12

12:                                               ; preds = %10, %6
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc zeroext i1 @refcount_dec_and_test(ptr noundef %0) unnamed_addr #3 {
  tail call void asm sideeffect "dmb ish", "~{memory}"() #21, !srcloc !18
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %0) #21, !srcloc !16
  %2 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %0, ptr %0, i32 1, ptr elementtype(i32) %0) #21, !srcloc !19
  %3 = extractvalue { i32, i32, i32 } %2, 0
  %4 = icmp eq i32 %3, 1
  br i1 %4, label %5, label %6

5:                                                ; preds = %1
  tail call void asm sideeffect "dmb ish", "~{memory}"() #21, !srcloc !20
  br label %9

6:                                                ; preds = %1
  %7 = icmp sgt i32 %3, 0
  br i1 %7, label %9, label %8, !prof !13

8:                                                ; preds = %6
  tail call void @refcount_warn_saturate(ptr noundef %0, i32 noundef 3) #21
  br label %9

9:                                                ; preds = %8, %6, %5
  ret i1 %4
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @msg_zerocopy_put_abort(ptr noundef %0, i1 noundef zeroext %1) #0 {
  %3 = getelementptr i8, ptr %0, i32 -12
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.sock, ptr %4, i32 0, i32 68
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %5) #21, !srcloc !16
  %6 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %5, ptr %5, i32 1, ptr elementtype(i32) %5) #21, !srcloc !42
  %7 = getelementptr inbounds %struct.ubuf_info, ptr %0, i32 0, i32 1, i32 0, i32 1
  %8 = load i16, ptr %7, align 4
  %9 = add i16 %8, -1
  store i16 %9, ptr %7, align 4
  br i1 %1, label %10, label %11

10:                                               ; preds = %2
  tail call void @msg_zerocopy_callback(ptr undef, ptr noundef %0, i1 noundef zeroext true)
  br label %11

11:                                               ; preds = %10, %2
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @skb_zerocopy_iter_dgram(ptr noundef %0, ptr noundef %1, i32 noundef %2) #0 {
  %4 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.msghdr, ptr %1, i32 0, i32 2
  %7 = tail call i32 @__zerocopy_sg_from_iter(ptr noundef %5, ptr noundef %0, ptr noundef %6, i32 noundef %2) #21
  ret i32 %7
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__zerocopy_sg_from_iter(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @skb_zerocopy_iter_stream(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4) #0 {
  %6 = alloca %struct.iov_iter, align 8
  %7 = icmp eq ptr %1, null
  br i1 %7, label %17, label %8

8:                                                ; preds = %5
  %9 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 15
  %10 = load ptr, ptr %9, align 4
  %11 = load i8, ptr %10, align 8
  %12 = and i8 %11, 1
  %13 = icmp eq i8 %12, 0
  br i1 %13, label %17, label %14

14:                                               ; preds = %8
  %15 = getelementptr inbounds %struct.skb_shared_info, ptr %10, i32 0, i32 11
  %16 = load ptr, ptr %15, align 4
  br label %17

17:                                               ; preds = %14, %8, %5
  %18 = phi ptr [ %16, %14 ], [ null, %8 ], [ null, %5 ]
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %6)
  %19 = getelementptr inbounds %struct.msghdr, ptr %2, i32 0, i32 2
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 8 dereferenceable(24) %6, ptr noundef align 8 dereferenceable(24) %19, i32 24, i1 false)
  %20 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 5
  %21 = load i32, ptr %20, align 8
  %22 = icmp eq ptr %18, null
  %23 = icmp eq ptr %18, %4
  %24 = or i1 %22, %23
  br i1 %24, label %25, label %70

25:                                               ; preds = %17
  %26 = tail call i32 @__zerocopy_sg_from_iter(ptr noundef %0, ptr noundef %1, ptr noundef %19, i32 noundef %3) #21
  switch i32 %26, label %34 [
    i32 -14, label %30
    i32 -90, label %27
  ]

27:                                               ; preds = %25
  %28 = load i32, ptr %20, align 8
  %29 = icmp eq i32 %28, %21
  br i1 %29, label %30, label %34

30:                                               ; preds = %27, %25
  %31 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 1
  %32 = load ptr, ptr %31, align 4
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 8 dereferenceable(24) %19, ptr noundef nonnull align 8 dereferenceable(24) %6, i32 24, i1 false)
  store ptr %0, ptr %31, align 4
  %33 = tail call i32 @___pskb_trim(ptr noundef %1, i32 noundef %21)
  store ptr %32, ptr %31, align 4
  br label %70

34:                                               ; preds = %27, %25
  %35 = icmp ne ptr %1, null
  %36 = icmp ne ptr %4, null
  %37 = and i1 %35, %36
  br i1 %37, label %38, label %67

38:                                               ; preds = %34
  %39 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 15
  %40 = load ptr, ptr %39, align 4
  %41 = load i8, ptr %40, align 8
  %42 = and i8 %41, 1
  %43 = icmp eq i8 %42, 0
  br i1 %43, label %48, label %44

44:                                               ; preds = %38
  %45 = getelementptr inbounds %struct.skb_shared_info, ptr %40, i32 0, i32 11
  %46 = load ptr, ptr %45, align 4
  %47 = icmp eq ptr %46, null
  br i1 %47, label %48, label %67

48:                                               ; preds = %44, %38
  %49 = getelementptr inbounds %struct.ubuf_info, ptr %4, i32 0, i32 2
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %49) #21, !srcloc !16
  %50 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %49, ptr %49, i32 1, ptr elementtype(i32) %49) #21, !srcloc !37
  %51 = extractvalue { i32, i32, i32 } %50, 0
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %57, label %53, !prof !12

53:                                               ; preds = %48
  %54 = add i32 %51, 1
  %55 = or i32 %54, %51
  %56 = icmp sgt i32 %55, -1
  br i1 %56, label %59, label %57, !prof !13

57:                                               ; preds = %53, %48
  %58 = phi i32 [ 2, %48 ], [ 1, %53 ]
  tail call void @refcount_warn_saturate(ptr noundef %49, i32 noundef %58) #21
  br label %59

59:                                               ; preds = %57, %53
  %60 = load ptr, ptr %39, align 4
  %61 = getelementptr inbounds %struct.skb_shared_info, ptr %60, i32 0, i32 11
  store ptr %4, ptr %61, align 4
  %62 = getelementptr inbounds %struct.ubuf_info, ptr %4, i32 0, i32 3
  %63 = load i8, ptr %62, align 4
  %64 = load ptr, ptr %39, align 4
  %65 = load i8, ptr %64, align 8
  %66 = or i8 %65, %63
  store i8 %66, ptr %64, align 8
  br label %67

67:                                               ; preds = %59, %44, %34
  %68 = load i32, ptr %20, align 8
  %69 = sub i32 %68, %21
  br label %70

70:                                               ; preds = %67, %30, %17
  %71 = phi i32 [ %26, %30 ], [ %69, %67 ], [ -17, %17 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %6)
  ret i32 %71
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #11

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @___pskb_trim(ptr noundef %0, i32 noundef %1) #0 {
  %3 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 5
  %4 = load i32, ptr %3, align 8
  %5 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 6
  %6 = load i32, ptr %5, align 4
  %7 = sub i32 %4, %6
  %8 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 15
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.skb_shared_info, ptr %9, i32 0, i32 2
  %11 = load i8, ptr %10, align 2
  %12 = zext i8 %11 to i32
  %13 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 11
  %14 = load i8, ptr %13, align 2
  %15 = and i8 %14, 1
  %16 = icmp eq i8 %15, 0
  br i1 %16, label %25, label %17

17:                                               ; preds = %2
  %18 = getelementptr inbounds %struct.skb_shared_info, ptr %9, i32 0, i32 10
  %19 = load volatile i32, ptr %18, align 4
  %20 = and i32 %19, 65535
  %21 = icmp eq i32 %20, 1
  br i1 %21, label %25, label %22

22:                                               ; preds = %17
  %23 = tail call i32 @pskb_expand_head(ptr noundef %0, i32 noundef 0, i32 noundef 0, i32 noundef 2592)
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %182, !prof !13

25:                                               ; preds = %22, %17, %2
  %26 = icmp ult i32 %7, %1
  br i1 %26, label %27, label %42

27:                                               ; preds = %25
  %28 = icmp eq i8 %11, 0
  %29 = load ptr, ptr %8, align 4
  br i1 %28, label %82, label %30

30:                                               ; preds = %38, %27
  %31 = phi i32 [ %37, %38 ], [ 0, %27 ]
  %32 = phi i32 [ %35, %38 ], [ %7, %27 ]
  %33 = getelementptr %struct.skb_shared_info, ptr %29, i32 0, i32 12, i32 %31, i32 1
  %34 = load i32, ptr %33, align 4
  %35 = add i32 %34, %32
  %36 = icmp ult i32 %35, %1
  %37 = add nuw nsw i32 %31, 1
  br i1 %36, label %38, label %40

38:                                               ; preds = %30
  %39 = icmp eq i32 %37, %12
  br i1 %39, label %82, label %30

40:                                               ; preds = %30
  %41 = sub i32 %1, %32
  store i32 %41, ptr %33, align 4
  br label %42

42:                                               ; preds = %40, %25
  %43 = phi i32 [ 0, %25 ], [ %37, %40 ]
  %44 = trunc i32 %43 to i8
  %45 = load ptr, ptr %8, align 4
  %46 = getelementptr inbounds %struct.skb_shared_info, ptr %45, i32 0, i32 2
  store i8 %44, ptr %46, align 2
  %47 = icmp slt i32 %43, %12
  br i1 %47, label %48, label %77

48:                                               ; preds = %74, %42
  %49 = phi i32 [ %75, %74 ], [ %43, %42 ]
  %50 = load ptr, ptr %8, align 4
  %51 = getelementptr %struct.skb_shared_info, ptr %50, i32 0, i32 12, i32 %49
  %52 = load i8, ptr %13, align 2
  %53 = icmp slt i8 %52, 0
  %54 = load ptr, ptr %51, align 4
  br i1 %53, label %55, label %57

55:                                               ; preds = %48
  %56 = tail call zeroext i1 @page_pool_return_skb_page(ptr noundef %54) #21
  br i1 %56, label %74, label %57

57:                                               ; preds = %55, %48
  %58 = getelementptr inbounds %struct.page, ptr %54, i32 0, i32 1
  %59 = load volatile i32, ptr %58, align 4
  %60 = and i32 %59, 1
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %64, label %62, !prof !13

62:                                               ; preds = %57
  %63 = add i32 %59, -1
  br label %66

64:                                               ; preds = %57
  %65 = ptrtoint ptr %54 to i32
  br label %66

66:                                               ; preds = %64, %62
  %67 = phi i32 [ %63, %62 ], [ %65, %64 ]
  %68 = inttoptr i32 %67 to ptr
  %69 = getelementptr inbounds %struct.page, ptr %68, i32 0, i32 3
  tail call void asm sideeffect "dmb ish", "~{memory}"() #21, !srcloc !29
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %69) #21, !srcloc !16
  %70 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %69, ptr %69, i32 1, ptr elementtype(i32) %69) #21, !srcloc !30
  %71 = extractvalue { i32, i32 } %70, 0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #21, !srcloc !31
  %72 = icmp eq i32 %71, 0
  br i1 %72, label %73, label %74

73:                                               ; preds = %66
  tail call void @__put_page(ptr noundef %68) #21
  br label %74

74:                                               ; preds = %73, %66, %55
  %75 = add nuw nsw i32 %49, 1
  %76 = icmp eq i32 %75, %12
  br i1 %76, label %77, label %48

77:                                               ; preds = %74, %42
  %78 = load ptr, ptr %8, align 4
  %79 = getelementptr inbounds %struct.skb_shared_info, ptr %78, i32 0, i32 6
  %80 = load ptr, ptr %79, align 8
  %81 = icmp eq ptr %80, null
  br i1 %81, label %130, label %127

82:                                               ; preds = %38, %27
  %83 = phi i32 [ %7, %27 ], [ %35, %38 ]
  %84 = getelementptr inbounds %struct.skb_shared_info, ptr %29, i32 0, i32 6
  br label %85

85:                                               ; preds = %102, %82
  %86 = phi ptr [ %84, %82 ], [ %103, %102 ]
  %87 = phi i32 [ %83, %82 ], [ %93, %102 ]
  %88 = load ptr, ptr %86, align 4
  %89 = icmp eq ptr %88, null
  br i1 %89, label %130, label %90

90:                                               ; preds = %85
  %91 = getelementptr inbounds %struct.sk_buff, ptr %88, i32 0, i32 5
  %92 = load i32, ptr %91, align 8
  %93 = add i32 %92, %87
  %94 = getelementptr inbounds %struct.sk_buff, ptr %88, i32 0, i32 19
  %95 = load volatile i32, ptr %94, align 4
  %96 = icmp eq i32 %95, 1
  br i1 %96, label %102, label %97

97:                                               ; preds = %90
  %98 = tail call ptr @skb_clone(ptr noundef nonnull %88, i32 noundef 2592)
  %99 = icmp eq ptr %98, null
  br i1 %99, label %182, label %100, !prof !12

100:                                              ; preds = %97
  %101 = load ptr, ptr %88, align 8
  store ptr %101, ptr %98, align 8
  tail call void @consume_skb(ptr noundef nonnull %88)
  store ptr %98, ptr %86, align 4
  br label %102

102:                                              ; preds = %100, %90
  %103 = phi ptr [ %98, %100 ], [ %88, %90 ]
  %104 = icmp ult i32 %93, %1
  br i1 %104, label %85, label %105

105:                                              ; preds = %102
  %106 = icmp ugt i32 %93, %1
  br i1 %106, label %107, label %124

107:                                              ; preds = %105
  %108 = sub i32 %1, %87
  %109 = getelementptr inbounds %struct.sk_buff, ptr %103, i32 0, i32 5
  %110 = load i32, ptr %109, align 8
  %111 = icmp ugt i32 %110, %108
  br i1 %111, label %112, label %124

112:                                              ; preds = %107
  %113 = getelementptr inbounds %struct.sk_buff, ptr %103, i32 0, i32 6
  %114 = load i32, ptr %113, align 4
  %115 = icmp eq i32 %114, 0
  br i1 %115, label %116, label %121

116:                                              ; preds = %112
  store i32 %108, ptr %109, align 8
  %117 = getelementptr inbounds %struct.sk_buff, ptr %103, i32 0, i32 17
  %118 = load ptr, ptr %117, align 4
  %119 = getelementptr i8, ptr %118, i32 %108
  %120 = getelementptr inbounds %struct.sk_buff, ptr %103, i32 0, i32 14
  store ptr %119, ptr %120, align 8
  br label %124

121:                                              ; preds = %112
  %122 = tail call i32 @___pskb_trim(ptr noundef nonnull %103, i32 noundef %108) #21
  %123 = icmp eq i32 %122, 0
  br i1 %123, label %124, label %182, !prof !13

124:                                              ; preds = %121, %116, %107, %105
  %125 = load ptr, ptr %103, align 8
  %126 = icmp eq ptr %125, null
  br i1 %126, label %130, label %127

127:                                              ; preds = %124, %77
  %128 = phi ptr [ %80, %77 ], [ %125, %124 ]
  %129 = phi ptr [ %79, %77 ], [ %103, %124 ]
  tail call void @kfree_skb_list(ptr noundef nonnull %128) #21
  store ptr null, ptr %129, align 4
  br label %130

130:                                              ; preds = %127, %124, %85, %77
  %131 = load i32, ptr %3, align 8
  %132 = load i32, ptr %5, align 4
  %133 = sub i32 %131, %132
  %134 = icmp ult i32 %133, %1
  br i1 %134, label %135, label %138

135:                                              ; preds = %130
  %136 = sub i32 %1, %131
  %137 = add i32 %136, %132
  store i32 %137, ptr %5, align 4
  store i32 %1, ptr %3, align 8
  br label %143

138:                                              ; preds = %130
  store i32 %1, ptr %3, align 8
  store i32 0, ptr %5, align 4
  %139 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 17
  %140 = load ptr, ptr %139, align 4
  %141 = getelementptr i8, ptr %140, i32 %1
  %142 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 14
  store ptr %141, ptr %142, align 8
  br label %143

143:                                              ; preds = %138, %135
  %144 = phi i32 [ 0, %138 ], [ %137, %135 ]
  %145 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 1
  %146 = load ptr, ptr %145, align 4
  %147 = icmp eq ptr %146, null
  br i1 %147, label %152, label %148

148:                                              ; preds = %143
  %149 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 4, i32 0, i32 1
  %150 = load ptr, ptr %149, align 4
  %151 = icmp eq ptr %150, @sock_edemux
  br i1 %151, label %152, label %182

152:                                              ; preds = %148, %143
  %153 = icmp eq i32 %144, 0
  br i1 %153, label %173, label %154

154:                                              ; preds = %152
  %155 = load ptr, ptr %8, align 4
  %156 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 14
  %157 = load ptr, ptr %156, align 8
  %158 = ptrtoint ptr %155 to i32
  %159 = ptrtoint ptr %157 to i32
  %160 = sub i32 %158, %159
  %161 = icmp ugt i32 %144, %160
  br i1 %161, label %182, label %162

162:                                              ; preds = %154
  %163 = load i8, ptr %13, align 2
  %164 = and i8 %163, 1
  %165 = icmp eq i8 %164, 0
  br i1 %165, label %171, label %166

166:                                              ; preds = %162
  %167 = getelementptr inbounds %struct.skb_shared_info, ptr %155, i32 0, i32 10
  %168 = load volatile i32, ptr %167, align 4
  %169 = and i32 %168, 65535
  %170 = icmp eq i32 %169, 1
  br i1 %170, label %171, label %182

171:                                              ; preds = %166, %162
  %172 = tail call ptr @__pskb_pull_tail(ptr noundef %0, i32 noundef %144) #21
  br label %173

173:                                              ; preds = %171, %152
  %174 = load ptr, ptr %8, align 4
  %175 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 16
  %176 = load ptr, ptr %175, align 8
  %177 = ptrtoint ptr %174 to i32
  %178 = ptrtoint ptr %176 to i32
  %179 = add i32 %177, 448
  %180 = sub i32 %179, %178
  %181 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 18
  store i32 %180, ptr %181, align 8
  br label %182

182:                                              ; preds = %173, %166, %154, %148, %121, %97, %22
  %183 = phi i32 [ %23, %22 ], [ 0, %148 ], [ 0, %154 ], [ 0, %166 ], [ 0, %173 ], [ %122, %121 ], [ -12, %97 ]
  ret i32 %183
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @skb_copy_ubufs(ptr noundef %0, i32 noundef %1) #0 {
  %3 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 15
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.skb_shared_info, ptr %4, i32 0, i32 2
  %6 = load i8, ptr %5, align 2
  %7 = zext i8 %6 to i32
  %8 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 19
  %9 = load volatile i32, ptr %8, align 4
  %10 = icmp eq i32 %9, 1
  br i1 %10, label %11, label %296

11:                                               ; preds = %2
  %12 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 11
  %13 = load i8, ptr %12, align 2
  %14 = and i8 %13, 1
  %15 = icmp eq i8 %14, 0
  br i1 %15, label %24, label %16

16:                                               ; preds = %11
  %17 = getelementptr inbounds %struct.skb_shared_info, ptr %4, i32 0, i32 10
  %18 = load volatile i32, ptr %17, align 4
  %19 = and i32 %18, 65535
  %20 = icmp eq i32 %19, 1
  br i1 %20, label %24, label %21

21:                                               ; preds = %16
  %22 = tail call i32 @pskb_expand_head(ptr noundef %0, i32 noundef 0, i32 noundef 0, i32 noundef %1) #21
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %296

24:                                               ; preds = %21, %16, %11
  %25 = icmp eq i8 %6, 0
  br i1 %25, label %273, label %26

26:                                               ; preds = %24
  %27 = load ptr, ptr %3, align 4
  %28 = getelementptr inbounds %struct.skb_shared_info, ptr %27, i32 0, i32 2
  %29 = load i8, ptr %28, align 2
  %30 = icmp eq i8 %29, 0
  br i1 %30, label %47, label %31

31:                                               ; preds = %26
  %32 = zext i8 %29 to i32
  br label %33

33:                                               ; preds = %33, %31
  %34 = phi i32 [ %36, %33 ], [ %32, %31 ]
  %35 = phi i32 [ %39, %33 ], [ 0, %31 ]
  %36 = add nsw i32 %34, -1
  %37 = getelementptr %struct.skb_shared_info, ptr %27, i32 0, i32 12, i32 %36, i32 1
  %38 = load i32, ptr %37, align 4
  %39 = add i32 %38, %35
  %40 = icmp ugt i32 %34, 1
  br i1 %40, label %33, label %41

41:                                               ; preds = %33
  %42 = add i32 %39, 4095
  %43 = lshr i32 %42, 12
  %44 = icmp ult i32 %42, 4096
  br i1 %44, label %47, label %45

45:                                               ; preds = %41
  %46 = tail call i32 @llvm.umax.i32(i32 %43, i32 1)
  br label %52

47:                                               ; preds = %82, %41, %26
  %48 = phi i32 [ %43, %41 ], [ 0, %26 ], [ %43, %82 ]
  %49 = phi i32 [ %42, %41 ], [ 4095, %26 ], [ %42, %82 ]
  %50 = phi ptr [ null, %41 ], [ null, %26 ], [ %55, %82 ]
  %51 = tail call i32 @llvm.smax.i32(i32 %7, i32 1)
  br label %89

52:                                               ; preds = %82, %45
  %53 = phi ptr [ %55, %82 ], [ null, %45 ]
  %54 = phi i32 [ %85, %82 ], [ 0, %45 ]
  %55 = tail call ptr @__alloc_pages(i32 noundef %1, i32 noundef 0, i32 noundef 0, ptr noundef null) #21
  %56 = icmp eq ptr %55, null
  br i1 %56, label %57, label %82

57:                                               ; preds = %52
  %58 = icmp eq ptr %53, null
  br i1 %58, label %296, label %59

59:                                               ; preds = %80, %57
  %60 = phi ptr [ %63, %80 ], [ %53, %57 ]
  %61 = getelementptr inbounds %struct.page, ptr %60, i32 0, i32 1, i32 0, i32 3
  %62 = load i32, ptr %61, align 4
  %63 = inttoptr i32 %62 to ptr
  %64 = getelementptr inbounds %struct.page, ptr %60, i32 0, i32 1
  %65 = load volatile i32, ptr %64, align 4
  %66 = and i32 %65, 1
  %67 = icmp eq i32 %66, 0
  br i1 %67, label %70, label %68, !prof !13

68:                                               ; preds = %59
  %69 = add i32 %65, -1
  br label %72

70:                                               ; preds = %59
  %71 = ptrtoint ptr %60 to i32
  br label %72

72:                                               ; preds = %70, %68
  %73 = phi i32 [ %69, %68 ], [ %71, %70 ]
  %74 = inttoptr i32 %73 to ptr
  %75 = getelementptr inbounds %struct.page, ptr %74, i32 0, i32 3
  tail call void asm sideeffect "dmb ish", "~{memory}"() #21, !srcloc !29
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %75) #21, !srcloc !16
  %76 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %75, ptr %75, i32 1, ptr elementtype(i32) %75) #21, !srcloc !30
  %77 = extractvalue { i32, i32 } %76, 0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #21, !srcloc !31
  %78 = icmp eq i32 %77, 0
  br i1 %78, label %79, label %80

79:                                               ; preds = %72
  tail call void @__put_page(ptr noundef %74) #21
  br label %80

80:                                               ; preds = %79, %72
  %81 = icmp eq i32 %62, 0
  br i1 %81, label %296, label %59

82:                                               ; preds = %52
  %83 = ptrtoint ptr %53 to i32
  %84 = getelementptr inbounds %struct.page, ptr %55, i32 0, i32 1, i32 0, i32 3
  store i32 %83, ptr %84, align 4
  %85 = add nuw nsw i32 %54, 1
  %86 = icmp eq i32 %85, %46
  br i1 %86, label %47, label %52

87:                                               ; preds = %171
  %88 = tail call i32 @llvm.umax.i32(i32 %7, i32 1)
  br label %181

89:                                               ; preds = %171, %47
  %90 = phi ptr [ %173, %171 ], [ %50, %47 ]
  %91 = phi i32 [ %174, %171 ], [ 0, %47 ]
  %92 = phi i32 [ %172, %171 ], [ 0, %47 ]
  %93 = load ptr, ptr %3, align 4
  %94 = getelementptr %struct.skb_shared_info, ptr %93, i32 0, i32 12, i32 %91
  %95 = load ptr, ptr %94, align 4
  %96 = getelementptr %struct.skb_shared_info, ptr %93, i32 0, i32 12, i32 %91, i32 2
  %97 = load i32, ptr %96, align 4
  %98 = lshr i32 %97, 12
  %99 = getelementptr %struct.page, ptr %95, i32 %98
  %100 = and i32 %97, 4095
  %101 = load i32, ptr %99, align 4
  %102 = lshr i32 %101, 30
  %103 = icmp eq i32 %102, 2
  br i1 %103, label %109, label %104

104:                                              ; preds = %89
  %105 = icmp eq i32 %102, 3
  %106 = load i32, ptr @movable_zone, align 4
  %107 = icmp eq i32 %106, 2
  %108 = select i1 %105, i1 %107, i1 false
  br i1 %108, label %109, label %114

109:                                              ; preds = %104, %89
  %110 = getelementptr %struct.skb_shared_info, ptr %93, i32 0, i32 12, i32 %91, i32 1
  %111 = load i32, ptr %110, align 4
  %112 = sub nuw nsw i32 4096, %100
  %113 = tail call i32 @llvm.umin.i32(i32 %111, i32 %112)
  br label %117

114:                                              ; preds = %104
  %115 = getelementptr %struct.skb_shared_info, ptr %93, i32 0, i32 12, i32 %91, i32 1
  %116 = load i32, ptr %115, align 4
  br label %117

117:                                              ; preds = %114, %109
  %118 = phi i32 [ %111, %109 ], [ %116, %114 ]
  %119 = phi i32 [ %113, %109 ], [ %116, %114 ]
  %120 = getelementptr %struct.skb_shared_info, ptr %93, i32 0, i32 12, i32 %91, i32 1
  %121 = icmp eq i32 %118, 0
  br i1 %121, label %171, label %122

122:                                              ; preds = %160, %117
  %123 = phi ptr [ %162, %160 ], [ %90, %117 ]
  %124 = phi i32 [ %161, %160 ], [ %92, %117 ]
  %125 = phi ptr [ %166, %160 ], [ %99, %117 ]
  %126 = phi i32 [ %165, %160 ], [ 0, %117 ]
  %127 = phi i32 [ %169, %160 ], [ %119, %117 ]
  %128 = phi i32 [ 0, %160 ], [ %100, %117 ]
  %129 = load i32, ptr @pgprot_kernel, align 4
  %130 = or i32 %129, 512
  tail call void asm sideeffect "", "~{memory}"() #21, !srcloc !23
  %131 = tail call ptr @llvm.thread.pointer() #21
  %132 = getelementptr inbounds %struct.task_struct, ptr %131, i32 0, i32 149
  %133 = load i32, ptr %132, align 8
  %134 = add i32 %133, 1
  store i32 %134, ptr %132, align 8
  tail call void asm sideeffect "", "~{memory}"() #21, !srcloc !24
  %135 = tail call ptr @__kmap_local_page_prot(ptr noundef %125, i32 noundef %130) #21
  %136 = icmp eq i32 %127, 0
  br i1 %136, label %160, label %137

137:                                              ; preds = %122
  %138 = getelementptr i8, ptr %135, i32 %128
  br label %139

139:                                              ; preds = %148, %137
  %140 = phi ptr [ %123, %137 ], [ %150, %148 ]
  %141 = phi i32 [ 0, %137 ], [ %157, %148 ]
  %142 = phi i32 [ %124, %137 ], [ %158, %148 ]
  %143 = icmp eq i32 %142, 4096
  br i1 %143, label %144, label %148

144:                                              ; preds = %139
  %145 = getelementptr inbounds %struct.page, ptr %140, i32 0, i32 1, i32 0, i32 3
  %146 = load i32, ptr %145, align 4
  %147 = inttoptr i32 %146 to ptr
  br label %148

148:                                              ; preds = %144, %139
  %149 = phi i32 [ 0, %144 ], [ %142, %139 ]
  %150 = phi ptr [ %147, %144 ], [ %140, %139 ]
  %151 = sub i32 4096, %149
  %152 = sub i32 %127, %141
  %153 = tail call i32 @llvm.umin.i32(i32 %151, i32 %152)
  %154 = tail call ptr @page_address(ptr noundef %150) #21
  %155 = getelementptr i8, ptr %154, i32 %149
  %156 = getelementptr i8, ptr %138, i32 %141
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 1 %155, ptr align 1 %156, i32 %153, i1 false)
  %157 = add i32 %153, %141
  %158 = add i32 %153, %149
  %159 = icmp ugt i32 %127, %157
  br i1 %159, label %139, label %160

160:                                              ; preds = %148, %122
  %161 = phi i32 [ %124, %122 ], [ %158, %148 ]
  %162 = phi ptr [ %123, %122 ], [ %150, %148 ]
  tail call void @kunmap_local_indexed(ptr noundef %135) #21
  tail call void asm sideeffect "", "~{memory}"() #21, !srcloc !25
  %163 = load i32, ptr %132, align 8
  %164 = add i32 %163, -1
  store i32 %164, ptr %132, align 8
  tail call void asm sideeffect "", "~{memory}"() #21, !srcloc !26
  %165 = add i32 %127, %126
  %166 = getelementptr %struct.page, ptr %125, i32 1
  %167 = load i32, ptr %120, align 4
  %168 = sub i32 %167, %165
  %169 = tail call i32 @llvm.umin.i32(i32 %168, i32 4096)
  %170 = icmp ugt i32 %167, %165
  br i1 %170, label %122, label %171

171:                                              ; preds = %160, %117
  %172 = phi i32 [ %92, %117 ], [ %161, %160 ]
  %173 = phi ptr [ %90, %117 ], [ %162, %160 ]
  %174 = add nuw nsw i32 %91, 1
  %175 = icmp eq i32 %174, %51
  br i1 %175, label %87, label %89

176:                                              ; preds = %207
  %177 = add nsw i32 %48, -1
  %178 = icmp ugt i32 %49, 8191
  br i1 %178, label %179, label %244

179:                                              ; preds = %176
  %180 = tail call i32 @llvm.smax.i32(i32 %177, i32 1)
  br label %210

181:                                              ; preds = %207, %87
  %182 = phi i32 [ %208, %207 ], [ 0, %87 ]
  %183 = load ptr, ptr %3, align 4
  %184 = getelementptr %struct.skb_shared_info, ptr %183, i32 0, i32 12, i32 %182
  %185 = load i8, ptr %12, align 2
  %186 = icmp slt i8 %185, 0
  %187 = load ptr, ptr %184, align 4
  br i1 %186, label %188, label %190

188:                                              ; preds = %181
  %189 = tail call zeroext i1 @page_pool_return_skb_page(ptr noundef %187) #21
  br i1 %189, label %207, label %190

190:                                              ; preds = %188, %181
  %191 = getelementptr inbounds %struct.page, ptr %187, i32 0, i32 1
  %192 = load volatile i32, ptr %191, align 4
  %193 = and i32 %192, 1
  %194 = icmp eq i32 %193, 0
  br i1 %194, label %197, label %195, !prof !13

195:                                              ; preds = %190
  %196 = add i32 %192, -1
  br label %199

197:                                              ; preds = %190
  %198 = ptrtoint ptr %187 to i32
  br label %199

199:                                              ; preds = %197, %195
  %200 = phi i32 [ %196, %195 ], [ %198, %197 ]
  %201 = inttoptr i32 %200 to ptr
  %202 = getelementptr inbounds %struct.page, ptr %201, i32 0, i32 3
  tail call void asm sideeffect "dmb ish", "~{memory}"() #21, !srcloc !29
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %202) #21, !srcloc !16
  %203 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %202, ptr %202, i32 1, ptr elementtype(i32) %202) #21, !srcloc !30
  %204 = extractvalue { i32, i32 } %203, 0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #21, !srcloc !31
  %205 = icmp eq i32 %204, 0
  br i1 %205, label %206, label %207

206:                                              ; preds = %199
  tail call void @__put_page(ptr noundef %201) #21
  br label %207

207:                                              ; preds = %206, %199, %188
  %208 = add nuw nsw i32 %182, 1
  %209 = icmp eq i32 %208, %88
  br i1 %209, label %176, label %181

210:                                              ; preds = %236, %179
  %211 = phi ptr [ %239, %236 ], [ %50, %179 ]
  %212 = phi i32 [ %240, %236 ], [ 0, %179 ]
  %213 = load ptr, ptr %3, align 4
  %214 = getelementptr %struct.skb_shared_info, ptr %213, i32 0, i32 12, i32 %212
  store ptr %211, ptr %214, align 4
  %215 = getelementptr %struct.skb_shared_info, ptr %213, i32 0, i32 12, i32 %212, i32 2
  store i32 0, ptr %215, align 4
  %216 = getelementptr %struct.skb_shared_info, ptr %213, i32 0, i32 12, i32 %212, i32 1
  store i32 4096, ptr %216, align 4
  %217 = getelementptr inbounds %struct.page, ptr %211, i32 0, i32 1
  %218 = load volatile i32, ptr %217, align 4
  %219 = and i32 %218, 1
  %220 = icmp eq i32 %219, 0
  br i1 %220, label %223, label %221, !prof !13

221:                                              ; preds = %210
  %222 = add i32 %218, -1
  br label %225

223:                                              ; preds = %210
  %224 = ptrtoint ptr %211 to i32
  br label %225

225:                                              ; preds = %223, %221
  %226 = phi i32 [ %222, %221 ], [ %224, %223 ]
  %227 = inttoptr i32 %226 to ptr
  %228 = getelementptr inbounds %struct.page, ptr %227, i32 0, i32 1
  %229 = load ptr, ptr %228, align 4
  %230 = ptrtoint ptr %229 to i32
  %231 = and i32 %230, 2
  %232 = icmp eq i32 %231, 0
  br i1 %232, label %236, label %233

233:                                              ; preds = %225
  %234 = load i8, ptr %12, align 2
  %235 = or i8 %234, 64
  store i8 %235, ptr %12, align 2
  br label %236

236:                                              ; preds = %233, %225
  %237 = getelementptr inbounds %struct.page, ptr %211, i32 0, i32 1, i32 0, i32 3
  %238 = load i32, ptr %237, align 4
  %239 = inttoptr i32 %238 to ptr
  %240 = add nuw nsw i32 %212, 1
  %241 = icmp eq i32 %240, %180
  br i1 %241, label %242, label %210

242:                                              ; preds = %236
  %243 = inttoptr i32 %238 to ptr
  br label %244

244:                                              ; preds = %242, %176
  %245 = phi ptr [ %50, %176 ], [ %243, %242 ]
  %246 = load ptr, ptr %3, align 4
  %247 = getelementptr %struct.skb_shared_info, ptr %246, i32 0, i32 12, i32 %177
  store ptr %245, ptr %247, align 4
  %248 = getelementptr %struct.skb_shared_info, ptr %246, i32 0, i32 12, i32 %177, i32 2
  store i32 0, ptr %248, align 4
  %249 = getelementptr %struct.skb_shared_info, ptr %246, i32 0, i32 12, i32 %177, i32 1
  store i32 %172, ptr %249, align 4
  %250 = getelementptr inbounds %struct.page, ptr %245, i32 0, i32 1
  %251 = load volatile i32, ptr %250, align 4
  %252 = and i32 %251, 1
  %253 = icmp eq i32 %252, 0
  br i1 %253, label %256, label %254, !prof !13

254:                                              ; preds = %244
  %255 = add i32 %251, -1
  br label %258

256:                                              ; preds = %244
  %257 = ptrtoint ptr %245 to i32
  br label %258

258:                                              ; preds = %256, %254
  %259 = phi i32 [ %255, %254 ], [ %257, %256 ]
  %260 = inttoptr i32 %259 to ptr
  %261 = getelementptr inbounds %struct.page, ptr %260, i32 0, i32 1
  %262 = load ptr, ptr %261, align 4
  %263 = ptrtoint ptr %262 to i32
  %264 = and i32 %263, 2
  %265 = icmp eq i32 %264, 0
  br i1 %265, label %269, label %266

266:                                              ; preds = %258
  %267 = load i8, ptr %12, align 2
  %268 = or i8 %267, 64
  store i8 %268, ptr %12, align 2
  br label %269

269:                                              ; preds = %266, %258
  %270 = trunc i32 %48 to i8
  %271 = load ptr, ptr %3, align 4
  %272 = getelementptr inbounds %struct.skb_shared_info, ptr %271, i32 0, i32 2
  store i8 %270, ptr %272, align 2
  br label %273

273:                                              ; preds = %269, %24
  %274 = icmp eq ptr %0, null
  br i1 %274, label %296, label %275

275:                                              ; preds = %273
  %276 = load ptr, ptr %3, align 4
  %277 = load i8, ptr %276, align 8
  %278 = and i8 %277, 1
  %279 = icmp eq i8 %278, 0
  br i1 %279, label %296, label %280

280:                                              ; preds = %275
  %281 = getelementptr inbounds %struct.skb_shared_info, ptr %276, i32 0, i32 11
  %282 = load ptr, ptr %281, align 4
  %283 = icmp eq ptr %282, null
  br i1 %283, label %296, label %284

284:                                              ; preds = %280
  %285 = ptrtoint ptr %282 to i32
  %286 = and i32 %285, 1
  %287 = icmp eq i32 %286, 0
  br i1 %287, label %288, label %292

288:                                              ; preds = %284
  %289 = load ptr, ptr %282, align 4
  tail call void %289(ptr noundef nonnull %0, ptr noundef nonnull %282, i1 noundef zeroext false) #21
  %290 = load ptr, ptr %3, align 4
  %291 = load i8, ptr %290, align 8
  br label %292

292:                                              ; preds = %288, %284
  %293 = phi i8 [ %291, %288 ], [ %277, %284 ]
  %294 = phi ptr [ %290, %288 ], [ %276, %284 ]
  %295 = and i8 %293, -8
  store i8 %295, ptr %294, align 8
  br label %296

296:                                              ; preds = %292, %280, %275, %273, %80, %57, %21, %2
  %297 = phi i32 [ -22, %21 ], [ -22, %2 ], [ 0, %273 ], [ 0, %275 ], [ 0, %280 ], [ 0, %292 ], [ -12, %57 ], [ -12, %80 ]
  ret i32 %297
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @page_address(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @skb_clone(ptr noundef %0, i32 noundef %1) #0 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %24, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 15
  %6 = load ptr, ptr %5, align 4
  %7 = load i8, ptr %6, align 8
  %8 = and i8 %7, 1
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %24, label %10

10:                                               ; preds = %4
  %11 = getelementptr inbounds %struct.skb_shared_info, ptr %6, i32 0, i32 11
  %12 = load ptr, ptr %11, align 4
  %13 = icmp eq ptr %12, null
  br i1 %13, label %24, label %14, !prof !13

14:                                               ; preds = %10
  %15 = ptrtoint ptr %12 to i32
  %16 = and i32 %15, 1
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %21

18:                                               ; preds = %14
  %19 = load ptr, ptr %12, align 4
  %20 = icmp eq ptr %19, @msg_zerocopy_callback
  br i1 %20, label %24, label %21

21:                                               ; preds = %18, %14
  %22 = tail call i32 @skb_copy_ubufs(ptr noundef nonnull %0, i32 noundef %1) #21
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %50

24:                                               ; preds = %21, %18, %10, %4, %2
  %25 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 11
  %26 = load i8, ptr %25, align 2
  %27 = and i8 %26, 12
  %28 = icmp eq i8 %27, 4
  br i1 %28, label %29, label %35

29:                                               ; preds = %24
  %30 = getelementptr inbounds %struct.sk_buff_fclones, ptr %0, i32 0, i32 2
  %31 = load volatile i32, ptr %30, align 4
  %32 = icmp eq i32 %31, 1
  br i1 %32, label %33, label %35

33:                                               ; preds = %29
  %34 = getelementptr inbounds %struct.sk_buff_fclones, ptr %0, i32 0, i32 1
  store volatile i32 2, ptr %30, align 4
  br label %47

35:                                               ; preds = %29, %24
  %36 = and i8 %26, 64
  %37 = zext i8 %36 to i32
  %38 = shl nuw nsw i32 %37, 11
  %39 = or i32 %38, %1
  %40 = load ptr, ptr @skbuff_head_cache, align 4
  %41 = tail call noalias align 8 ptr @kmem_cache_alloc(ptr noundef %40, i32 noundef %39) #21
  %42 = icmp eq ptr %41, null
  br i1 %42, label %50, label %43

43:                                               ; preds = %35
  %44 = getelementptr inbounds %struct.sk_buff, ptr %41, i32 0, i32 11
  %45 = load i8, ptr %44, align 2
  %46 = and i8 %45, -13
  store i8 %46, ptr %44, align 2
  br label %47

47:                                               ; preds = %43, %33
  %48 = phi ptr [ %34, %33 ], [ %41, %43 ]
  %49 = tail call fastcc ptr @__skb_clone(ptr noundef %48, ptr noundef %0)
  br label %50

50:                                               ; preds = %47, %35, %21
  %51 = phi ptr [ %48, %47 ], [ null, %21 ], [ null, %35 ]
  ret ptr %51
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define dso_local void @skb_headers_offset_update(ptr nocapture noundef %0, i32 noundef %1) #12 {
  %3 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 13
  %4 = load i16, ptr %3, align 8
  %5 = and i16 %4, 96
  %6 = icmp eq i16 %5, 96
  br i1 %6, label %9, label %7

7:                                                ; preds = %2
  %8 = trunc i32 %1 to i16
  br label %14

9:                                                ; preds = %2
  %10 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 13, i32 0, i32 4
  %11 = load i16, ptr %10, align 4
  %12 = trunc i32 %1 to i16
  %13 = add i16 %11, %12
  store i16 %13, ptr %10, align 4
  br label %14

14:                                               ; preds = %9, %7
  %15 = phi i16 [ %8, %7 ], [ %12, %9 ]
  %16 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 13, i32 0, i32 17
  %17 = load i16, ptr %16, align 2
  %18 = add i16 %17, %15
  store i16 %18, ptr %16, align 2
  %19 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 13, i32 0, i32 18
  %20 = load i16, ptr %19, align 4
  %21 = add i16 %20, %15
  store i16 %21, ptr %19, align 4
  %22 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 13, i32 0, i32 19
  %23 = load i16, ptr %22, align 2
  %24 = icmp eq i16 %23, -1
  br i1 %24, label %27, label %25

25:                                               ; preds = %14
  %26 = add i16 %23, %15
  store i16 %26, ptr %22, align 2
  br label %27

27:                                               ; preds = %25, %14
  %28 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 13, i32 0, i32 13
  %29 = load i16, ptr %28, align 2
  %30 = add i16 %29, %15
  store i16 %30, ptr %28, align 2
  %31 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 13, i32 0, i32 14
  %32 = load i16, ptr %31, align 4
  %33 = add i16 %32, %15
  store i16 %33, ptr %31, align 4
  %34 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 13, i32 0, i32 15
  %35 = load i16, ptr %34, align 2
  %36 = add i16 %35, %15
  store i16 %36, ptr %34, align 2
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @skb_copy_header(ptr nocapture noundef %0, ptr nocapture noundef readonly %1) #0 {
  tail call fastcc void @__copy_skb_header(ptr noundef %0, ptr noundef %1)
  %3 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 15
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.skb_shared_info, ptr %4, i32 0, i32 4
  %6 = load i16, ptr %5, align 4
  %7 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 15
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.skb_shared_info, ptr %8, i32 0, i32 4
  store i16 %6, ptr %9, align 4
  %10 = load ptr, ptr %3, align 4
  %11 = getelementptr inbounds %struct.skb_shared_info, ptr %10, i32 0, i32 5
  %12 = load i16, ptr %11, align 2
  %13 = load ptr, ptr %7, align 4
  %14 = getelementptr inbounds %struct.skb_shared_info, ptr %13, i32 0, i32 5
  store i16 %12, ptr %14, align 2
  %15 = load ptr, ptr %3, align 4
  %16 = getelementptr inbounds %struct.skb_shared_info, ptr %15, i32 0, i32 8
  %17 = load i32, ptr %16, align 8
  %18 = load ptr, ptr %7, align 4
  %19 = getelementptr inbounds %struct.skb_shared_info, ptr %18, i32 0, i32 8
  store i32 %17, ptr %19, align 8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @skb_copy(ptr nocapture noundef readonly %0, i32 noundef %1) #0 {
  %3 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 17
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 16
  %6 = load ptr, ptr %5, align 8
  %7 = ptrtoint ptr %4 to i32
  %8 = ptrtoint ptr %6 to i32
  %9 = sub i32 %7, %8
  %10 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 15
  %11 = load ptr, ptr %10, align 4
  %12 = ptrtoint ptr %11 to i32
  %13 = sub i32 %12, %8
  %14 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 6
  %15 = load i32, ptr %14, align 4
  %16 = add i32 %13, %15
  %17 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 11
  %18 = load i8, ptr %17, align 2
  %19 = lshr i8 %18, 5
  %20 = and i8 %19, 2
  %21 = zext i8 %20 to i32
  %22 = tail call ptr @__alloc_skb(i32 noundef %16, i32 noundef %1, i32 noundef %21, i32 noundef -1)
  %23 = icmp eq ptr %22, null
  br i1 %23, label %72, label %24

24:                                               ; preds = %2
  %25 = getelementptr inbounds %struct.sk_buff, ptr %22, i32 0, i32 17
  %26 = load ptr, ptr %25, align 4
  %27 = getelementptr i8, ptr %26, i32 %9
  store ptr %27, ptr %25, align 4
  %28 = getelementptr inbounds %struct.sk_buff, ptr %22, i32 0, i32 14
  %29 = load ptr, ptr %28, align 8
  %30 = getelementptr i8, ptr %29, i32 %9
  store ptr %30, ptr %28, align 8
  %31 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 5
  %32 = load i32, ptr %31, align 8
  %33 = getelementptr inbounds %struct.sk_buff, ptr %22, i32 0, i32 6
  %34 = load i32, ptr %33, align 4
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %37, label %36, !prof !13

36:                                               ; preds = %24
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22net/core/skbuff.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1984, 0\0A.popsection", ""() #21, !srcloc !46
  unreachable

37:                                               ; preds = %24
  %38 = getelementptr i8, ptr %30, i32 %32
  store ptr %38, ptr %28, align 8
  %39 = getelementptr inbounds %struct.sk_buff, ptr %22, i32 0, i32 5
  %40 = load i32, ptr %39, align 8
  %41 = add i32 %40, %32
  store i32 %41, ptr %39, align 8
  %42 = getelementptr inbounds %struct.sk_buff, ptr %22, i32 0, i32 15
  %43 = load ptr, ptr %42, align 4
  %44 = icmp ugt ptr %38, %43
  br i1 %44, label %45, label %47, !prof !12

45:                                               ; preds = %37
  %46 = tail call ptr @llvm.returnaddress(i32 0) #21
  tail call fastcc void @skb_over_panic(ptr noundef nonnull %22, i32 noundef %32, ptr noundef %46) #21
  unreachable

47:                                               ; preds = %37
  %48 = sub i32 0, %9
  %49 = getelementptr inbounds %struct.sk_buff, ptr %22, i32 0, i32 16
  %50 = load ptr, ptr %49, align 8
  %51 = load i32, ptr %31, align 8
  %52 = add i32 %51, %9
  %53 = tail call i32 @skb_copy_bits(ptr noundef %0, i32 noundef %48, ptr noundef %50, i32 noundef %52)
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %56, label %55, !prof !13

55:                                               ; preds = %47
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22net/core/skbuff.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1595, 0\0A.popsection", ""() #21, !srcloc !47
  unreachable

56:                                               ; preds = %47
  tail call fastcc void @__copy_skb_header(ptr noundef nonnull %22, ptr noundef %0) #21
  %57 = load ptr, ptr %10, align 4
  %58 = getelementptr inbounds %struct.skb_shared_info, ptr %57, i32 0, i32 4
  %59 = load i16, ptr %58, align 4
  %60 = load ptr, ptr %42, align 4
  %61 = getelementptr inbounds %struct.skb_shared_info, ptr %60, i32 0, i32 4
  store i16 %59, ptr %61, align 4
  %62 = load ptr, ptr %10, align 4
  %63 = getelementptr inbounds %struct.skb_shared_info, ptr %62, i32 0, i32 5
  %64 = load i16, ptr %63, align 2
  %65 = load ptr, ptr %42, align 4
  %66 = getelementptr inbounds %struct.skb_shared_info, ptr %65, i32 0, i32 5
  store i16 %64, ptr %66, align 2
  %67 = load ptr, ptr %10, align 4
  %68 = getelementptr inbounds %struct.skb_shared_info, ptr %67, i32 0, i32 8
  %69 = load i32, ptr %68, align 8
  %70 = load ptr, ptr %42, align 4
  %71 = getelementptr inbounds %struct.skb_shared_info, ptr %70, i32 0, i32 8
  store i32 %69, ptr %71, align 8
  br label %72

72:                                               ; preds = %56, %2
  ret ptr %22
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @skb_put(ptr nocapture noundef %0, i32 noundef %1) #0 {
  %3 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 14
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 6
  %6 = load i32, ptr %5, align 4
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %9, label %8, !prof !13

8:                                                ; preds = %2
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22net/core/skbuff.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1984, 0\0A.popsection", ""() #21, !srcloc !46
  unreachable

9:                                                ; preds = %2
  %10 = getelementptr i8, ptr %4, i32 %1
  store ptr %10, ptr %3, align 8
  %11 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 5
  %12 = load i32, ptr %11, align 8
  %13 = add i32 %12, %1
  store i32 %13, ptr %11, align 8
  %14 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 15
  %15 = load ptr, ptr %14, align 4
  %16 = icmp ugt ptr %10, %15
  br i1 %16, label %17, label %19, !prof !12

17:                                               ; preds = %9
  %18 = tail call ptr @llvm.returnaddress(i32 0)
  tail call fastcc void @skb_over_panic(ptr noundef %0, i32 noundef %1, ptr noundef %18)
  unreachable

19:                                               ; preds = %9
  ret ptr %4
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @skb_copy_bits(ptr nocapture noundef readonly %0, i32 noundef %1, ptr nocapture noundef writeonly %2, i32 noundef %3) #0 {
  %5 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 5
  %6 = load i32, ptr %5, align 8
  %7 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 6
  %8 = load i32, ptr %7, align 4
  %9 = sub i32 %6, %8
  %10 = sub i32 %6, %3
  %11 = icmp slt i32 %10, %1
  br i1 %11, label %170, label %12

12:                                               ; preds = %4
  %13 = sub i32 %9, %1
  %14 = icmp sgt i32 %13, 0
  br i1 %14, label %15, label %25

15:                                               ; preds = %12
  %16 = tail call i32 @llvm.smin.i32(i32 %13, i32 %3)
  %17 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 17
  %18 = load ptr, ptr %17, align 4
  %19 = getelementptr i8, ptr %18, i32 %1
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 1 %2, ptr align 1 %19, i32 %16, i1 false) #21
  %20 = sub i32 %3, %16
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %171, label %22

22:                                               ; preds = %15
  %23 = add i32 %16, %1
  %24 = getelementptr i8, ptr %2, i32 %16
  br label %25

25:                                               ; preds = %22, %12
  %26 = phi i32 [ %20, %22 ], [ %3, %12 ]
  %27 = phi ptr [ %24, %22 ], [ %2, %12 ]
  %28 = phi i32 [ %23, %22 ], [ %1, %12 ]
  %29 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 15
  %30 = load ptr, ptr %29, align 4
  %31 = getelementptr inbounds %struct.skb_shared_info, ptr %30, i32 0, i32 2
  %32 = load i8, ptr %31, align 2
  %33 = icmp eq i8 %32, 0
  br i1 %33, label %126, label %34

34:                                               ; preds = %116, %25
  %35 = phi ptr [ %121, %116 ], [ %30, %25 ]
  %36 = phi i32 [ %119, %116 ], [ %28, %25 ]
  %37 = phi ptr [ %118, %116 ], [ %27, %25 ]
  %38 = phi i32 [ %117, %116 ], [ %26, %25 ]
  %39 = phi i32 [ %48, %116 ], [ %9, %25 ]
  %40 = phi i32 [ %120, %116 ], [ 0, %25 ]
  %41 = getelementptr %struct.skb_shared_info, ptr %35, i32 0, i32 12, i32 %40
  %42 = add i32 %36, %38
  %43 = icmp sgt i32 %39, %42
  br i1 %43, label %44, label %45, !prof !12

44:                                               ; preds = %34
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 2364, i32 noundef 9, ptr noundef null) #21
  br label %45

45:                                               ; preds = %44, %34
  %46 = getelementptr %struct.skb_shared_info, ptr %35, i32 0, i32 12, i32 %40, i32 1
  %47 = load i32, ptr %46, align 4
  %48 = add i32 %47, %39
  %49 = sub i32 %48, %36
  %50 = icmp sgt i32 %49, 0
  br i1 %50, label %51, label %116

51:                                               ; preds = %45
  %52 = tail call i32 @llvm.smin.i32(i32 %49, i32 %38)
  %53 = load ptr, ptr %41, align 4
  %54 = getelementptr %struct.skb_shared_info, ptr %35, i32 0, i32 12, i32 %40, i32 2
  %55 = load i32, ptr %54, align 4
  %56 = sub i32 %36, %39
  %57 = add i32 %56, %55
  %58 = lshr i32 %57, 12
  %59 = getelementptr %struct.page, ptr %53, i32 %58
  %60 = and i32 %57, 4095
  %61 = load i32, ptr %59, align 4
  %62 = lshr i32 %61, 30
  %63 = icmp eq i32 %62, 2
  br i1 %63, label %64, label %67

64:                                               ; preds = %51
  %65 = sub nuw nsw i32 4096, %60
  %66 = tail call i32 @llvm.umin.i32(i32 %52, i32 %65)
  br label %74

67:                                               ; preds = %51
  %68 = icmp eq i32 %62, 3
  %69 = load i32, ptr @movable_zone, align 4
  %70 = icmp eq i32 %69, 2
  %71 = select i1 %68, i1 %70, i1 false
  %72 = sub nuw nsw i32 4096, %60
  %73 = tail call i32 @llvm.umin.i32(i32 %52, i32 %72)
  br i1 %71, label %74, label %76

74:                                               ; preds = %67, %64
  %75 = phi i32 [ %66, %64 ], [ %73, %67 ]
  br label %76

76:                                               ; preds = %74, %67
  %77 = phi i32 [ %75, %74 ], [ %52, %67 ]
  %78 = icmp eq i32 %52, 0
  br i1 %78, label %111, label %79

79:                                               ; preds = %76
  %80 = load i32, ptr @pgprot_kernel, align 4
  %81 = or i32 %80, 512
  tail call void asm sideeffect "", "~{memory}"() #21, !srcloc !23
  %82 = tail call ptr @llvm.thread.pointer() #21
  %83 = getelementptr inbounds %struct.task_struct, ptr %82, i32 0, i32 149
  %84 = load i32, ptr %83, align 8
  %85 = add i32 %84, 1
  store i32 %85, ptr %83, align 8
  tail call void asm sideeffect "", "~{memory}"() #21, !srcloc !24
  %86 = tail call ptr @__kmap_local_page_prot(ptr noundef %59, i32 noundef %81) #21
  %87 = getelementptr i8, ptr %86, i32 %60
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 1 %37, ptr align 1 %87, i32 %77, i1 false)
  tail call void @kunmap_local_indexed(ptr noundef %86) #21
  tail call void asm sideeffect "", "~{memory}"() #21, !srcloc !25
  %88 = load i32, ptr %83, align 8
  %89 = add i32 %88, -1
  store i32 %89, ptr %83, align 8
  tail call void asm sideeffect "", "~{memory}"() #21, !srcloc !26
  %90 = icmp ugt i32 %52, %77
  br i1 %90, label %91, label %111

91:                                               ; preds = %79
  %92 = sub i32 %52, %77
  %93 = tail call i32 @llvm.umin.i32(i32 %92, i32 4096)
  br label %94

94:                                               ; preds = %94, %91
  %95 = phi ptr [ %98, %94 ], [ %59, %91 ]
  %96 = phi i32 [ %107, %94 ], [ %77, %91 ]
  %97 = phi i32 [ %109, %94 ], [ %93, %91 ]
  %98 = getelementptr %struct.page, ptr %95, i32 1
  %99 = load i32, ptr @pgprot_kernel, align 4
  %100 = or i32 %99, 512
  tail call void asm sideeffect "", "~{memory}"() #21, !srcloc !23
  %101 = load i32, ptr %83, align 8
  %102 = add i32 %101, 1
  store i32 %102, ptr %83, align 8
  tail call void asm sideeffect "", "~{memory}"() #21, !srcloc !24
  %103 = tail call ptr @__kmap_local_page_prot(ptr noundef %98, i32 noundef %100) #21
  %104 = getelementptr i8, ptr %37, i32 %96
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 1 %104, ptr align 1 %103, i32 %97, i1 false)
  tail call void @kunmap_local_indexed(ptr noundef %103) #21
  tail call void asm sideeffect "", "~{memory}"() #21, !srcloc !25
  %105 = load i32, ptr %83, align 8
  %106 = add i32 %105, -1
  store i32 %106, ptr %83, align 8
  tail call void asm sideeffect "", "~{memory}"() #21, !srcloc !26
  %107 = add i32 %96, %97
  %108 = sub i32 %52, %107
  %109 = tail call i32 @llvm.umin.i32(i32 %108, i32 4096)
  %110 = icmp ugt i32 %52, %107
  br i1 %110, label %94, label %111, !llvm.loop !48

111:                                              ; preds = %94, %79, %76
  %112 = sub i32 %38, %52
  %113 = icmp eq i32 %112, 0
  %114 = add i32 %52, %36
  %115 = getelementptr i8, ptr %37, i32 %52
  br i1 %113, label %171, label %116

116:                                              ; preds = %111, %45
  %117 = phi i32 [ %112, %111 ], [ %38, %45 ]
  %118 = phi ptr [ %115, %111 ], [ %37, %45 ]
  %119 = phi i32 [ %114, %111 ], [ %36, %45 ]
  %120 = add nuw nsw i32 %40, 1
  %121 = load ptr, ptr %29, align 4
  %122 = getelementptr inbounds %struct.skb_shared_info, ptr %121, i32 0, i32 2
  %123 = load i8, ptr %122, align 2
  %124 = zext i8 %123 to i32
  %125 = icmp ult i32 %120, %124
  br i1 %125, label %34, label %126

126:                                              ; preds = %116, %25
  %127 = phi i32 [ %9, %25 ], [ %48, %116 ]
  %128 = phi i32 [ %26, %25 ], [ %117, %116 ]
  %129 = phi ptr [ %27, %25 ], [ %118, %116 ]
  %130 = phi i32 [ %28, %25 ], [ %119, %116 ]
  %131 = phi ptr [ %30, %25 ], [ %121, %116 ]
  %132 = getelementptr inbounds %struct.skb_shared_info, ptr %131, i32 0, i32 6
  %133 = load ptr, ptr %132, align 8
  %134 = icmp eq ptr %133, null
  br i1 %134, label %167, label %135

135:                                              ; preds = %161, %126
  %136 = phi ptr [ %165, %161 ], [ %133, %126 ]
  %137 = phi i32 [ %164, %161 ], [ %130, %126 ]
  %138 = phi ptr [ %163, %161 ], [ %129, %126 ]
  %139 = phi i32 [ %162, %161 ], [ %128, %126 ]
  %140 = phi i32 [ %147, %161 ], [ %127, %126 ]
  %141 = add i32 %137, %139
  %142 = icmp sgt i32 %140, %141
  br i1 %142, label %143, label %144, !prof !12

143:                                              ; preds = %135
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 2394, i32 noundef 9, ptr noundef null) #21
  br label %144

144:                                              ; preds = %143, %135
  %145 = getelementptr inbounds %struct.sk_buff, ptr %136, i32 0, i32 5
  %146 = load i32, ptr %145, align 8
  %147 = add i32 %146, %140
  %148 = sub i32 %147, %137
  %149 = icmp sgt i32 %148, 0
  br i1 %149, label %150, label %161

150:                                              ; preds = %144
  %151 = tail call i32 @llvm.smin.i32(i32 %148, i32 %139)
  %152 = sub i32 %137, %140
  %153 = tail call i32 @skb_copy_bits(ptr noundef nonnull %136, i32 noundef %152, ptr noundef %138, i32 noundef %151)
  %154 = icmp eq i32 %153, 0
  br i1 %154, label %155, label %170

155:                                              ; preds = %150
  %156 = sub i32 %139, %151
  %157 = icmp eq i32 %156, 0
  br i1 %157, label %171, label %158

158:                                              ; preds = %155
  %159 = add i32 %151, %137
  %160 = getelementptr i8, ptr %138, i32 %151
  br label %161

161:                                              ; preds = %158, %144
  %162 = phi i32 [ %156, %158 ], [ %139, %144 ]
  %163 = phi ptr [ %160, %158 ], [ %138, %144 ]
  %164 = phi i32 [ %159, %158 ], [ %137, %144 ]
  %165 = load ptr, ptr %136, align 8
  %166 = icmp eq ptr %165, null
  br i1 %166, label %167, label %135

167:                                              ; preds = %161, %126
  %168 = phi i32 [ %128, %126 ], [ %162, %161 ]
  %169 = icmp eq i32 %168, 0
  br i1 %169, label %171, label %170

170:                                              ; preds = %167, %150, %4
  br label %171

171:                                              ; preds = %170, %167, %155, %111, %15
  %172 = phi i32 [ -14, %170 ], [ 0, %15 ], [ 0, %167 ], [ 0, %155 ], [ 0, %111 ]
  ret i32 %172
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @__pskb_copy_fclone(ptr noundef %0, i32 noundef %1, i32 noundef %2, i1 noundef zeroext %3) #0 {
  %5 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 5
  %6 = load i32, ptr %5, align 8
  %7 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 6
  %8 = load i32, ptr %7, align 4
  %9 = add i32 %6, %1
  %10 = sub i32 %9, %8
  %11 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 11
  %12 = load i8, ptr %11, align 2
  %13 = lshr i8 %12, 5
  %14 = and i8 %13, 2
  %15 = zext i8 %14 to i32
  %16 = zext i1 %3 to i32
  %17 = or i32 %15, %16
  %18 = tail call ptr @__alloc_skb(i32 noundef %10, i32 noundef %2, i32 noundef %17, i32 noundef -1)
  %19 = icmp eq ptr %18, null
  br i1 %19, label %194, label %20

20:                                               ; preds = %4
  %21 = getelementptr inbounds %struct.sk_buff, ptr %18, i32 0, i32 17
  %22 = load ptr, ptr %21, align 4
  %23 = getelementptr i8, ptr %22, i32 %1
  store ptr %23, ptr %21, align 4
  %24 = getelementptr inbounds %struct.sk_buff, ptr %18, i32 0, i32 14
  %25 = load ptr, ptr %24, align 8
  %26 = getelementptr i8, ptr %25, i32 %1
  store ptr %26, ptr %24, align 8
  %27 = load i32, ptr %5, align 8
  %28 = load i32, ptr %7, align 4
  %29 = sub i32 %27, %28
  %30 = getelementptr inbounds %struct.sk_buff, ptr %18, i32 0, i32 6
  %31 = load i32, ptr %30, align 4
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %34, label %33, !prof !13

33:                                               ; preds = %20
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22net/core/skbuff.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1984, 0\0A.popsection", ""() #21, !srcloc !46
  unreachable

34:                                               ; preds = %20
  %35 = getelementptr i8, ptr %26, i32 %29
  store ptr %35, ptr %24, align 8
  %36 = getelementptr inbounds %struct.sk_buff, ptr %18, i32 0, i32 5
  %37 = load i32, ptr %36, align 8
  %38 = add i32 %37, %29
  store i32 %38, ptr %36, align 8
  %39 = getelementptr inbounds %struct.sk_buff, ptr %18, i32 0, i32 15
  %40 = load ptr, ptr %39, align 4
  %41 = icmp ugt ptr %35, %40
  br i1 %41, label %42, label %44, !prof !12

42:                                               ; preds = %34
  %43 = tail call ptr @llvm.returnaddress(i32 0) #21
  tail call fastcc void @skb_over_panic(ptr noundef nonnull %18, i32 noundef %29, ptr noundef %43) #21
  unreachable

44:                                               ; preds = %34
  %45 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 17
  %46 = load ptr, ptr %45, align 4
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 1 %23, ptr align 1 %46, i32 %38, i1 false) #21
  %47 = load i32, ptr %7, align 4
  %48 = getelementptr inbounds %struct.sk_buff, ptr %18, i32 0, i32 18
  %49 = load i32, ptr %48, align 8
  %50 = add i32 %49, %47
  store i32 %50, ptr %48, align 8
  %51 = load i32, ptr %7, align 4
  store i32 %51, ptr %30, align 4
  %52 = load i32, ptr %5, align 8
  store i32 %52, ptr %36, align 8
  %53 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 15
  %54 = load ptr, ptr %53, align 4
  %55 = getelementptr inbounds %struct.skb_shared_info, ptr %54, i32 0, i32 2
  %56 = load i8, ptr %55, align 2
  %57 = icmp eq i8 %56, 0
  br i1 %57, label %151, label %58

58:                                               ; preds = %44
  %59 = icmp eq ptr %0, null
  br i1 %59, label %78, label %60

60:                                               ; preds = %58
  %61 = load i8, ptr %54, align 8
  %62 = and i8 %61, 1
  %63 = icmp eq i8 %62, 0
  br i1 %63, label %78, label %64

64:                                               ; preds = %60
  %65 = getelementptr inbounds %struct.skb_shared_info, ptr %54, i32 0, i32 11
  %66 = load ptr, ptr %65, align 4
  %67 = icmp eq ptr %66, null
  br i1 %67, label %78, label %68, !prof !13

68:                                               ; preds = %64
  %69 = ptrtoint ptr %66 to i32
  %70 = and i32 %69, 1
  %71 = icmp eq i32 %70, 0
  br i1 %71, label %72, label %75

72:                                               ; preds = %68
  %73 = load ptr, ptr %66, align 4
  %74 = icmp eq ptr %73, @msg_zerocopy_callback
  br i1 %74, label %78, label %75

75:                                               ; preds = %72, %68
  %76 = tail call i32 @skb_copy_ubufs(ptr noundef nonnull %0, i32 noundef %2) #21
  %77 = icmp eq i32 %76, 0
  br i1 %77, label %78, label %86

78:                                               ; preds = %75, %72, %64, %60, %58
  %79 = tail call fastcc i32 @skb_zerocopy_clone(ptr noundef nonnull %18, ptr noundef %0, i32 noundef %2)
  %80 = icmp eq i32 %79, 0
  br i1 %80, label %81, label %86

81:                                               ; preds = %78
  %82 = load ptr, ptr %53, align 4
  %83 = getelementptr inbounds %struct.skb_shared_info, ptr %82, i32 0, i32 2
  %84 = load i8, ptr %83, align 2
  %85 = icmp eq i8 %84, 0
  br i1 %85, label %146, label %116

86:                                               ; preds = %78, %75
  %87 = getelementptr inbounds %struct.sk_buff, ptr %18, i32 0, i32 19
  %88 = load volatile i32, ptr %87, align 4
  %89 = icmp eq i32 %88, 1
  tail call void asm sideeffect "dmb ish", "~{memory}"() #21
  br i1 %89, label %98, label %90, !prof !13

90:                                               ; preds = %86
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %87) #21, !srcloc !16
  %91 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %87, ptr %87, i32 1, ptr elementtype(i32) %87) #21, !srcloc !19
  %92 = extractvalue { i32, i32, i32 } %91, 0
  %93 = icmp eq i32 %92, 1
  br i1 %93, label %97, label %94

94:                                               ; preds = %90
  %95 = icmp sgt i32 %92, 0
  br i1 %95, label %194, label %96, !prof !13

96:                                               ; preds = %94
  tail call void @refcount_warn_saturate(ptr noundef %87, i32 noundef 3) #21
  br label %194

97:                                               ; preds = %90
  tail call void asm sideeffect "dmb ish", "~{memory}"() #21, !srcloc !20
  br label %98

98:                                               ; preds = %97, %86
  %99 = tail call ptr @llvm.returnaddress(i32 0) #21
  %100 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_kfree_skb, i32 0, i32 1), align 4
  %101 = icmp sgt i32 %100, 0
  br i1 %101, label %102, label %115

102:                                              ; preds = %98
  %103 = tail call ptr @llvm.thread.pointer() #21
  %104 = getelementptr inbounds %struct.thread_info, ptr %103, i32 0, i32 2
  %105 = load i32, ptr %104, align 8
  %106 = lshr i32 %105, 5
  %107 = getelementptr i32, ptr @__cpu_online_mask, i32 %106
  %108 = load volatile i32, ptr %107, align 4
  %109 = and i32 %105, 31
  %110 = shl nuw i32 1, %109
  %111 = and i32 %110, %108
  %112 = icmp eq i32 %111, 0
  br i1 %112, label %115, label %113

113:                                              ; preds = %102
  tail call void asm sideeffect "", "~{memory}"() #21, !srcloc !21
  %114 = tail call i32 @__traceiter_kfree_skb(ptr noundef null, ptr noundef nonnull %18, ptr noundef %99, i32 noundef 0) #21
  tail call void asm sideeffect "", "~{memory}"() #21, !srcloc !22
  br label %115

115:                                              ; preds = %113, %102, %98
  tail call void @__kfree_skb(ptr noundef nonnull %18) #21
  br label %194

116:                                              ; preds = %133, %81
  %117 = phi ptr [ %139, %133 ], [ %82, %81 ]
  %118 = phi i32 [ %138, %133 ], [ 0, %81 ]
  %119 = load ptr, ptr %39, align 4
  %120 = getelementptr %struct.skb_shared_info, ptr %119, i32 0, i32 12, i32 %118
  %121 = getelementptr %struct.skb_shared_info, ptr %117, i32 0, i32 12, i32 %118
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(12) %120, ptr noundef align 4 dereferenceable(12) %121, i32 12, i1 false)
  %122 = load ptr, ptr %53, align 4
  %123 = getelementptr %struct.skb_shared_info, ptr %122, i32 0, i32 12, i32 %118
  %124 = load ptr, ptr %123, align 4
  %125 = getelementptr inbounds %struct.page, ptr %124, i32 0, i32 1
  %126 = load volatile i32, ptr %125, align 4
  %127 = and i32 %126, 1
  %128 = icmp eq i32 %127, 0
  br i1 %128, label %131, label %129, !prof !13

129:                                              ; preds = %116
  %130 = add i32 %126, -1
  br label %133

131:                                              ; preds = %116
  %132 = ptrtoint ptr %124 to i32
  br label %133

133:                                              ; preds = %131, %129
  %134 = phi i32 [ %130, %129 ], [ %132, %131 ]
  %135 = inttoptr i32 %134 to ptr
  %136 = getelementptr inbounds %struct.page, ptr %135, i32 0, i32 3
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %136) #21, !srcloc !16
  %137 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %136, ptr %136, i32 1, ptr elementtype(i32) %136) #21, !srcloc !38
  %138 = add nuw nsw i32 %118, 1
  %139 = load ptr, ptr %53, align 4
  %140 = getelementptr inbounds %struct.skb_shared_info, ptr %139, i32 0, i32 2
  %141 = load i8, ptr %140, align 2
  %142 = zext i8 %141 to i32
  %143 = icmp ult i32 %138, %142
  br i1 %143, label %116, label %144

144:                                              ; preds = %133
  %145 = trunc i32 %138 to i8
  br label %146

146:                                              ; preds = %144, %81
  %147 = phi i8 [ 0, %81 ], [ %145, %144 ]
  %148 = load ptr, ptr %39, align 4
  %149 = getelementptr inbounds %struct.skb_shared_info, ptr %148, i32 0, i32 2
  store i8 %147, ptr %149, align 2
  %150 = load ptr, ptr %53, align 4
  br label %151

151:                                              ; preds = %146, %44
  %152 = phi ptr [ %150, %146 ], [ %54, %44 ]
  %153 = getelementptr inbounds %struct.skb_shared_info, ptr %152, i32 0, i32 6
  %154 = load ptr, ptr %153, align 8
  %155 = icmp eq ptr %154, null
  br i1 %155, label %178, label %156

156:                                              ; preds = %151
  %157 = load ptr, ptr %39, align 4
  %158 = getelementptr inbounds %struct.skb_shared_info, ptr %157, i32 0, i32 6
  store ptr %154, ptr %158, align 8
  %159 = load ptr, ptr %39, align 4
  %160 = getelementptr inbounds %struct.skb_shared_info, ptr %159, i32 0, i32 6
  %161 = load ptr, ptr %160, align 8
  %162 = icmp eq ptr %161, null
  br i1 %162, label %178, label %163

163:                                              ; preds = %175, %156
  %164 = phi ptr [ %176, %175 ], [ %161, %156 ]
  %165 = getelementptr inbounds %struct.sk_buff, ptr %164, i32 0, i32 19
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %165) #21, !srcloc !16
  %166 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %165, ptr %165, i32 1, ptr elementtype(i32) %165) #21, !srcloc !37
  %167 = extractvalue { i32, i32, i32 } %166, 0
  %168 = icmp eq i32 %167, 0
  br i1 %168, label %173, label %169, !prof !12

169:                                              ; preds = %163
  %170 = add i32 %167, 1
  %171 = or i32 %170, %167
  %172 = icmp sgt i32 %171, -1
  br i1 %172, label %175, label %173, !prof !13

173:                                              ; preds = %169, %163
  %174 = phi i32 [ 2, %163 ], [ 1, %169 ]
  tail call void @refcount_warn_saturate(ptr noundef %165, i32 noundef %174) #21
  br label %175

175:                                              ; preds = %173, %169
  %176 = load ptr, ptr %164, align 8
  %177 = icmp eq ptr %176, null
  br i1 %177, label %178, label %163

178:                                              ; preds = %175, %156, %151
  tail call fastcc void @__copy_skb_header(ptr noundef nonnull %18, ptr noundef %0) #21
  %179 = load ptr, ptr %53, align 4
  %180 = getelementptr inbounds %struct.skb_shared_info, ptr %179, i32 0, i32 4
  %181 = load i16, ptr %180, align 4
  %182 = load ptr, ptr %39, align 4
  %183 = getelementptr inbounds %struct.skb_shared_info, ptr %182, i32 0, i32 4
  store i16 %181, ptr %183, align 4
  %184 = load ptr, ptr %53, align 4
  %185 = getelementptr inbounds %struct.skb_shared_info, ptr %184, i32 0, i32 5
  %186 = load i16, ptr %185, align 2
  %187 = load ptr, ptr %39, align 4
  %188 = getelementptr inbounds %struct.skb_shared_info, ptr %187, i32 0, i32 5
  store i16 %186, ptr %188, align 2
  %189 = load ptr, ptr %53, align 4
  %190 = getelementptr inbounds %struct.skb_shared_info, ptr %189, i32 0, i32 8
  %191 = load i32, ptr %190, align 8
  %192 = load ptr, ptr %39, align 4
  %193 = getelementptr inbounds %struct.skb_shared_info, ptr %192, i32 0, i32 8
  store i32 %191, ptr %193, align 8
  br label %194

194:                                              ; preds = %178, %115, %96, %94, %4
  %195 = phi ptr [ %18, %178 ], [ null, %4 ], [ null, %94 ], [ null, %96 ], [ null, %115 ]
  ret ptr %195
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @skb_zerocopy_clone(ptr noundef %0, ptr noundef readonly %1, i32 noundef %2) unnamed_addr #0 {
  %4 = icmp eq ptr %1, null
  br i1 %4, label %71, label %5

5:                                                ; preds = %3
  %6 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 15
  %7 = load ptr, ptr %6, align 4
  %8 = load i8, ptr %7, align 8
  %9 = and i8 %8, 1
  %10 = icmp eq i8 %9, 0
  br i1 %10, label %71, label %11

11:                                               ; preds = %5
  %12 = getelementptr inbounds %struct.skb_shared_info, ptr %7, i32 0, i32 11
  %13 = load ptr, ptr %12, align 4
  %14 = icmp eq ptr %13, null
  %15 = icmp eq ptr %0, null
  %16 = or i1 %15, %14
  br i1 %16, label %71, label %17

17:                                               ; preds = %11
  %18 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 15
  %19 = load ptr, ptr %18, align 4
  %20 = load i8, ptr %19, align 8
  %21 = and i8 %20, 1
  %22 = icmp eq i8 %21, 0
  br i1 %22, label %42, label %23

23:                                               ; preds = %17
  %24 = getelementptr inbounds %struct.skb_shared_info, ptr %19, i32 0, i32 11
  %25 = load ptr, ptr %24, align 4
  %26 = icmp eq ptr %25, null
  br i1 %26, label %42, label %27

27:                                               ; preds = %23
  %28 = icmp eq i32 %2, 0
  br i1 %28, label %29, label %32

29:                                               ; preds = %27
  %30 = load i1, ptr @skb_zerocopy_clone.__already_done, align 1
  br i1 %30, label %71, label %31, !prof !13

31:                                               ; preds = %29
  store i1 true, ptr @skb_zerocopy_clone.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1385, i32 noundef 9, ptr noundef null) #21
  br label %71

32:                                               ; preds = %27
  %33 = icmp eq ptr %25, %13
  br i1 %33, label %71, label %34

34:                                               ; preds = %32
  %35 = tail call i32 @skb_copy_ubufs(ptr noundef nonnull %0, i32 noundef 2592)
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %37, label %71

37:                                               ; preds = %34
  %38 = load ptr, ptr %6, align 4
  %39 = getelementptr inbounds %struct.skb_shared_info, ptr %38, i32 0, i32 11
  %40 = load ptr, ptr %39, align 4
  %41 = icmp eq ptr %40, null
  br i1 %41, label %71, label %42

42:                                               ; preds = %37, %23, %17
  %43 = phi ptr [ %40, %37 ], [ %13, %17 ], [ %13, %23 ]
  %44 = load ptr, ptr %18, align 4
  %45 = load i8, ptr %44, align 8
  %46 = and i8 %45, 1
  %47 = icmp eq i8 %46, 0
  br i1 %47, label %52, label %48

48:                                               ; preds = %42
  %49 = getelementptr inbounds %struct.skb_shared_info, ptr %44, i32 0, i32 11
  %50 = load ptr, ptr %49, align 4
  %51 = icmp eq ptr %50, null
  br i1 %51, label %52, label %71

52:                                               ; preds = %48, %42
  %53 = getelementptr inbounds %struct.ubuf_info, ptr %43, i32 0, i32 2
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %53) #21, !srcloc !16
  %54 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %53, ptr %53, i32 1, ptr elementtype(i32) %53) #21, !srcloc !37
  %55 = extractvalue { i32, i32, i32 } %54, 0
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %61, label %57, !prof !12

57:                                               ; preds = %52
  %58 = add i32 %55, 1
  %59 = or i32 %58, %55
  %60 = icmp sgt i32 %59, -1
  br i1 %60, label %63, label %61, !prof !13

61:                                               ; preds = %57, %52
  %62 = phi i32 [ 2, %52 ], [ 1, %57 ]
  tail call void @refcount_warn_saturate(ptr noundef %53, i32 noundef %62) #21
  br label %63

63:                                               ; preds = %61, %57
  %64 = load ptr, ptr %18, align 4
  %65 = getelementptr inbounds %struct.skb_shared_info, ptr %64, i32 0, i32 11
  store ptr %43, ptr %65, align 4
  %66 = getelementptr inbounds %struct.ubuf_info, ptr %43, i32 0, i32 3
  %67 = load i8, ptr %66, align 4
  %68 = load ptr, ptr %18, align 4
  %69 = load i8, ptr %68, align 8
  %70 = or i8 %69, %67
  store i8 %70, ptr %68, align 8
  br label %71

71:                                               ; preds = %63, %48, %37, %34, %32, %31, %29, %11, %5, %3
  %72 = phi i32 [ -12, %31 ], [ -12, %29 ], [ 0, %32 ], [ -5, %34 ], [ 0, %11 ], [ 0, %37 ], [ 0, %48 ], [ 0, %63 ], [ 0, %5 ], [ 0, %3 ]
  ret i32 %72
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @pskb_expand_head(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) #0 {
  %5 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 15
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 16
  %8 = load ptr, ptr %7, align 8
  %9 = ptrtoint ptr %6 to i32
  %10 = ptrtoint ptr %8 to i32
  %11 = sub i32 %9, %10
  %12 = icmp slt i32 %1, 0
  br i1 %12, label %13, label %14, !prof !12

13:                                               ; preds = %4
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22net/core/skbuff.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1691, 0\0A.popsection", ""() #21, !srcloc !50
  unreachable

14:                                               ; preds = %4
  %15 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 19
  %16 = load volatile i32, ptr %15, align 4
  %17 = icmp eq i32 %16, 1
  br i1 %17, label %19, label %18, !prof !13

18:                                               ; preds = %14
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22net/core/skbuff.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1693, 0\0A.popsection", ""() #21, !srcloc !51
  unreachable

19:                                               ; preds = %14
  %20 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 11
  %21 = load i8, ptr %20, align 2
  %22 = and i8 %21, 64
  %23 = zext i8 %22 to i32
  %24 = shl nuw nsw i32 %23, 11
  %25 = or i32 %24, %3
  %26 = add nuw i32 %1, 319
  %27 = add i32 %26, %2
  %28 = add i32 %27, %11
  %29 = and i32 %28, -64
  %30 = or i32 %25, 532480
  %31 = tail call ptr @llvm.returnaddress(i32 0) #21
  %32 = ptrtoint ptr %31 to i32
  %33 = tail call ptr @__kmalloc_track_caller(i32 noundef %29, i32 noundef %30, i32 noundef %32) #21
  %34 = icmp eq ptr %33, null
  br i1 %34, label %35, label %40

35:                                               ; preds = %19
  %36 = tail call zeroext i1 @gfp_pfmemalloc_allowed(i32 noundef %25) #21
  br i1 %36, label %37, label %236

37:                                               ; preds = %35
  %38 = tail call ptr @__kmalloc_track_caller(i32 noundef %29, i32 noundef %25, i32 noundef %32) #21
  %39 = icmp eq ptr %38, null
  br i1 %39, label %236, label %40

40:                                               ; preds = %37, %19
  %41 = phi ptr [ %38, %37 ], [ %33, %19 ]
  %42 = tail call i32 @ksize(ptr noundef nonnull %41) #21
  %43 = add i32 %42, -256
  %44 = getelementptr i8, ptr %41, i32 %1
  %45 = load ptr, ptr %7, align 8
  %46 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 14
  %47 = load ptr, ptr %46, align 8
  %48 = ptrtoint ptr %47 to i32
  %49 = ptrtoint ptr %45 to i32
  %50 = sub i32 %48, %49
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 1 %44, ptr align 1 %45, i32 %50, i1 false)
  %51 = getelementptr i8, ptr %41, i32 %43
  %52 = load ptr, ptr %5, align 4
  %53 = getelementptr inbounds %struct.skb_shared_info, ptr %52, i32 0, i32 2
  %54 = load i8, ptr %53, align 2
  %55 = zext i8 %54 to i32
  %56 = mul nuw nsw i32 %55, 12
  %57 = add nuw nsw i32 %56, 40
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 8 %51, ptr noundef align 8 %52, i32 %57, i1 false)
  %58 = load i8, ptr %20, align 2
  %59 = and i8 %58, 1
  %60 = icmp eq i8 %59, 0
  br i1 %60, label %158, label %61

61:                                               ; preds = %40
  %62 = load ptr, ptr %5, align 4
  %63 = getelementptr inbounds %struct.skb_shared_info, ptr %62, i32 0, i32 10
  %64 = load volatile i32, ptr %63, align 4
  %65 = and i32 %64, 65535
  %66 = icmp eq i32 %65, 1
  br i1 %66, label %158, label %67

67:                                               ; preds = %61
  %68 = icmp eq ptr %0, null
  br i1 %68, label %108, label %69

69:                                               ; preds = %67
  %70 = load i8, ptr %62, align 8
  %71 = and i8 %70, 1
  %72 = icmp eq i8 %71, 0
  br i1 %72, label %108, label %73

73:                                               ; preds = %69
  %74 = getelementptr inbounds %struct.skb_shared_info, ptr %62, i32 0, i32 11
  %75 = load ptr, ptr %74, align 4
  %76 = icmp eq ptr %75, null
  br i1 %76, label %108, label %77, !prof !13

77:                                               ; preds = %73
  %78 = ptrtoint ptr %75 to i32
  %79 = and i32 %78, 1
  %80 = icmp eq i32 %79, 0
  br i1 %80, label %81, label %84

81:                                               ; preds = %77
  %82 = load ptr, ptr %75, align 4
  %83 = icmp eq ptr %82, @msg_zerocopy_callback
  br i1 %83, label %96, label %84

84:                                               ; preds = %81, %77
  %85 = tail call i32 @skb_copy_ubufs(ptr noundef nonnull %0, i32 noundef %25) #21
  %86 = icmp eq i32 %85, 0
  br i1 %86, label %87, label %235

87:                                               ; preds = %84
  %88 = load ptr, ptr %5, align 4
  %89 = load i8, ptr %88, align 8
  %90 = and i8 %89, 1
  %91 = icmp eq i8 %90, 0
  br i1 %91, label %108, label %92

92:                                               ; preds = %87
  %93 = getelementptr inbounds %struct.skb_shared_info, ptr %88, i32 0, i32 11
  %94 = load ptr, ptr %93, align 4
  %95 = icmp eq ptr %94, null
  br i1 %95, label %108, label %96

96:                                               ; preds = %92, %81
  %97 = phi ptr [ %94, %92 ], [ %75, %81 ]
  %98 = getelementptr inbounds %struct.ubuf_info, ptr %97, i32 0, i32 2
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %98) #21, !srcloc !16
  %99 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %98, ptr %98, i32 1, ptr elementtype(i32) %98) #21, !srcloc !37
  %100 = extractvalue { i32, i32, i32 } %99, 0
  %101 = icmp eq i32 %100, 0
  br i1 %101, label %106, label %102, !prof !12

102:                                              ; preds = %96
  %103 = add i32 %100, 1
  %104 = or i32 %103, %100
  %105 = icmp sgt i32 %104, -1
  br i1 %105, label %108, label %106, !prof !13

106:                                              ; preds = %102, %96
  %107 = phi i32 [ 2, %96 ], [ 1, %102 ]
  tail call void @refcount_warn_saturate(ptr noundef %98, i32 noundef %107) #21
  br label %108

108:                                              ; preds = %106, %102, %92, %87, %73, %69, %67
  %109 = load ptr, ptr %5, align 4
  %110 = getelementptr inbounds %struct.skb_shared_info, ptr %109, i32 0, i32 2
  %111 = load i8, ptr %110, align 2
  %112 = icmp eq i8 %111, 0
  br i1 %112, label %137, label %113

113:                                              ; preds = %126, %108
  %114 = phi ptr [ %132, %126 ], [ %109, %108 ]
  %115 = phi i32 [ %131, %126 ], [ 0, %108 ]
  %116 = getelementptr %struct.skb_shared_info, ptr %114, i32 0, i32 12, i32 %115
  %117 = load ptr, ptr %116, align 4
  %118 = getelementptr inbounds %struct.page, ptr %117, i32 0, i32 1
  %119 = load volatile i32, ptr %118, align 4
  %120 = and i32 %119, 1
  %121 = icmp eq i32 %120, 0
  br i1 %121, label %124, label %122, !prof !13

122:                                              ; preds = %113
  %123 = add i32 %119, -1
  br label %126

124:                                              ; preds = %113
  %125 = ptrtoint ptr %117 to i32
  br label %126

126:                                              ; preds = %124, %122
  %127 = phi i32 [ %123, %122 ], [ %125, %124 ]
  %128 = inttoptr i32 %127 to ptr
  %129 = getelementptr inbounds %struct.page, ptr %128, i32 0, i32 3
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %129) #21, !srcloc !16
  %130 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %129, ptr %129, i32 1, ptr elementtype(i32) %129) #21, !srcloc !38
  %131 = add nuw nsw i32 %115, 1
  %132 = load ptr, ptr %5, align 4
  %133 = getelementptr inbounds %struct.skb_shared_info, ptr %132, i32 0, i32 2
  %134 = load i8, ptr %133, align 2
  %135 = zext i8 %134 to i32
  %136 = icmp ult i32 %131, %135
  br i1 %136, label %113, label %137

137:                                              ; preds = %126, %108
  %138 = phi ptr [ %109, %108 ], [ %132, %126 ]
  %139 = getelementptr inbounds %struct.skb_shared_info, ptr %138, i32 0, i32 6
  %140 = load ptr, ptr %139, align 8
  %141 = icmp eq ptr %140, null
  br i1 %141, label %157, label %142

142:                                              ; preds = %154, %137
  %143 = phi ptr [ %155, %154 ], [ %140, %137 ]
  %144 = getelementptr inbounds %struct.sk_buff, ptr %143, i32 0, i32 19
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %144) #21, !srcloc !16
  %145 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %144, ptr %144, i32 1, ptr elementtype(i32) %144) #21, !srcloc !37
  %146 = extractvalue { i32, i32, i32 } %145, 0
  %147 = icmp eq i32 %146, 0
  br i1 %147, label %152, label %148, !prof !12

148:                                              ; preds = %142
  %149 = add i32 %146, 1
  %150 = or i32 %149, %146
  %151 = icmp sgt i32 %150, -1
  br i1 %151, label %154, label %152, !prof !13

152:                                              ; preds = %148, %142
  %153 = phi i32 [ 2, %142 ], [ 1, %148 ]
  tail call void @refcount_warn_saturate(ptr noundef %144, i32 noundef %153) #21
  br label %154

154:                                              ; preds = %152, %148
  %155 = load ptr, ptr %143, align 8
  %156 = icmp eq ptr %155, null
  br i1 %156, label %157, label %142

157:                                              ; preds = %154, %137
  tail call fastcc void @skb_release_data(ptr noundef %0)
  br label %173

158:                                              ; preds = %61, %40
  %159 = load ptr, ptr %7, align 8
  %160 = and i8 %58, 32
  %161 = icmp eq i8 %160, 0
  br i1 %161, label %172, label %162

162:                                              ; preds = %158
  %163 = icmp sgt i8 %58, -1
  br i1 %163, label %171, label %164

164:                                              ; preds = %162
  %165 = load ptr, ptr @mem_map, align 4
  %166 = ptrtoint ptr %159 to i32
  %167 = add i32 %166, 1073741824
  %168 = lshr i32 %167, 12
  %169 = getelementptr %struct.page, ptr %165, i32 %168
  %170 = tail call zeroext i1 @page_pool_return_skb_page(ptr noundef %169) #21
  br i1 %170, label %173, label %171

171:                                              ; preds = %164, %162
  tail call void @page_frag_free(ptr noundef %159) #21
  br label %173

172:                                              ; preds = %158
  tail call void @kfree(ptr noundef %159) #21
  br label %173

173:                                              ; preds = %172, %171, %164, %157
  %174 = load ptr, ptr %7, align 8
  %175 = ptrtoint ptr %44 to i32
  %176 = ptrtoint ptr %174 to i32
  %177 = sub i32 %175, %176
  store ptr %41, ptr %7, align 8
  %178 = load i8, ptr %20, align 2
  %179 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 17
  %180 = load ptr, ptr %179, align 4
  %181 = getelementptr i8, ptr %180, i32 %177
  store ptr %181, ptr %179, align 4
  store ptr %51, ptr %5, align 4
  %182 = load ptr, ptr %46, align 8
  %183 = getelementptr i8, ptr %182, i32 %177
  store ptr %183, ptr %46, align 8
  %184 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 13
  %185 = load i16, ptr %184, align 8
  %186 = and i16 %185, 96
  %187 = icmp eq i16 %186, 96
  br i1 %187, label %190, label %188

188:                                              ; preds = %173
  %189 = trunc i32 %1 to i16
  br label %195

190:                                              ; preds = %173
  %191 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 13, i32 0, i32 4
  %192 = load i16, ptr %191, align 4
  %193 = trunc i32 %1 to i16
  %194 = add i16 %192, %193
  store i16 %194, ptr %191, align 4
  br label %195

195:                                              ; preds = %190, %188
  %196 = phi i16 [ %189, %188 ], [ %193, %190 ]
  %197 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 13, i32 0, i32 17
  %198 = load i16, ptr %197, align 2
  %199 = add i16 %198, %196
  store i16 %199, ptr %197, align 2
  %200 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 13, i32 0, i32 18
  %201 = load i16, ptr %200, align 4
  %202 = add i16 %201, %196
  store i16 %202, ptr %200, align 4
  %203 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 13, i32 0, i32 19
  %204 = load i16, ptr %203, align 2
  %205 = icmp eq i16 %204, -1
  br i1 %205, label %208, label %206

206:                                              ; preds = %195
  %207 = add i16 %204, %196
  store i16 %207, ptr %203, align 2
  br label %208

208:                                              ; preds = %206, %195
  %209 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 13, i32 0, i32 13
  %210 = load i16, ptr %209, align 2
  %211 = add i16 %210, %196
  store i16 %211, ptr %209, align 2
  %212 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 13, i32 0, i32 14
  %213 = load i16, ptr %212, align 4
  %214 = add i16 %213, %196
  store i16 %214, ptr %212, align 4
  %215 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 13, i32 0, i32 15
  %216 = load i16, ptr %215, align 2
  %217 = add i16 %216, %196
  store i16 %217, ptr %215, align 2
  %218 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 8
  store i16 0, ptr %218, align 2
  %219 = and i8 %178, -36
  store i8 %219, ptr %20, align 2
  %220 = getelementptr inbounds %struct.skb_shared_info, ptr %51, i32 0, i32 10
  store volatile i32 1, ptr %220, align 4
  %221 = load ptr, ptr %5, align 4
  %222 = getelementptr inbounds %struct.skb_shared_info, ptr %221, i32 0, i32 1
  store i8 0, ptr %222, align 1
  %223 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 1
  %224 = load ptr, ptr %223, align 4
  %225 = icmp eq ptr %224, null
  br i1 %225, label %230, label %226

226:                                              ; preds = %208
  %227 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 4, i32 0, i32 1
  %228 = load ptr, ptr %227, align 4
  %229 = icmp eq ptr %228, @sock_edemux
  br i1 %229, label %230, label %236

230:                                              ; preds = %226, %208
  %231 = sub i32 %43, %11
  %232 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 18
  %233 = load i32, ptr %232, align 8
  %234 = add i32 %231, %233
  store i32 %234, ptr %232, align 8
  br label %236

235:                                              ; preds = %84
  tail call void @kfree(ptr noundef nonnull %41) #21
  br label %236

236:                                              ; preds = %235, %230, %226, %37, %35
  %237 = phi i32 [ 0, %230 ], [ 0, %226 ], [ -12, %37 ], [ -12, %235 ], [ -12, %35 ]
  ret i32 %237
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @sock_edemux(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @skb_realloc_headroom(ptr noundef %0, i32 noundef %1) #0 {
  %3 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 17
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 16
  %6 = load ptr, ptr %5, align 8
  %7 = ptrtoint ptr %4 to i32
  %8 = ptrtoint ptr %6 to i32
  %9 = sub i32 %7, %8
  %10 = sub i32 %1, %9
  %11 = icmp slt i32 %10, 1
  br i1 %11, label %12, label %14

12:                                               ; preds = %2
  %13 = tail call ptr @__pskb_copy_fclone(ptr noundef %0, i32 noundef %9, i32 noundef 2592, i1 noundef zeroext false) #21
  br label %52

14:                                               ; preds = %2
  %15 = tail call ptr @skb_clone(ptr noundef %0, i32 noundef 2592)
  %16 = icmp eq ptr %15, null
  br i1 %16, label %52, label %17

17:                                               ; preds = %14
  %18 = add nuw i32 %10, 63
  %19 = and i32 %18, -64
  %20 = tail call i32 @pskb_expand_head(ptr noundef nonnull %15, i32 noundef %19, i32 noundef 0, i32 noundef 2592)
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %52, label %22

22:                                               ; preds = %17
  %23 = getelementptr inbounds %struct.sk_buff, ptr %15, i32 0, i32 19
  %24 = load volatile i32, ptr %23, align 4
  %25 = icmp eq i32 %24, 1
  tail call void asm sideeffect "dmb ish", "~{memory}"() #21
  br i1 %25, label %34, label %26, !prof !13

26:                                               ; preds = %22
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %23) #21, !srcloc !16
  %27 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %23, ptr %23, i32 1, ptr elementtype(i32) %23) #21, !srcloc !19
  %28 = extractvalue { i32, i32, i32 } %27, 0
  %29 = icmp eq i32 %28, 1
  br i1 %29, label %33, label %30

30:                                               ; preds = %26
  %31 = icmp sgt i32 %28, 0
  br i1 %31, label %52, label %32, !prof !13

32:                                               ; preds = %30
  tail call void @refcount_warn_saturate(ptr noundef %23, i32 noundef 3) #21
  br label %52

33:                                               ; preds = %26
  tail call void asm sideeffect "dmb ish", "~{memory}"() #21, !srcloc !20
  br label %34

34:                                               ; preds = %33, %22
  %35 = tail call ptr @llvm.returnaddress(i32 0) #21
  %36 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_kfree_skb, i32 0, i32 1), align 4
  %37 = icmp sgt i32 %36, 0
  br i1 %37, label %38, label %51

38:                                               ; preds = %34
  %39 = tail call ptr @llvm.thread.pointer() #21
  %40 = getelementptr inbounds %struct.thread_info, ptr %39, i32 0, i32 2
  %41 = load i32, ptr %40, align 8
  %42 = lshr i32 %41, 5
  %43 = getelementptr i32, ptr @__cpu_online_mask, i32 %42
  %44 = load volatile i32, ptr %43, align 4
  %45 = and i32 %41, 31
  %46 = shl nuw i32 1, %45
  %47 = and i32 %46, %44
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %51, label %49

49:                                               ; preds = %38
  tail call void asm sideeffect "", "~{memory}"() #21, !srcloc !21
  %50 = tail call i32 @__traceiter_kfree_skb(ptr noundef null, ptr noundef nonnull %15, ptr noundef %35, i32 noundef 0) #21
  tail call void asm sideeffect "", "~{memory}"() #21, !srcloc !22
  br label %51

51:                                               ; preds = %49, %38, %34
  tail call void @__kfree_skb(ptr noundef nonnull %15) #21
  br label %52

52:                                               ; preds = %51, %32, %30, %17, %14, %12
  %53 = phi ptr [ %13, %12 ], [ %15, %17 ], [ null, %14 ], [ null, %30 ], [ null, %32 ], [ null, %51 ]
  ret ptr %53
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @skb_expand_head(ptr noundef %0, i32 noundef %1) #0 {
  %3 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 17
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 16
  %6 = load ptr, ptr %5, align 8
  %7 = ptrtoint ptr %4 to i32
  %8 = ptrtoint ptr %6 to i32
  %9 = sub i32 %8, %7
  %10 = add i32 %9, %1
  %11 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 15
  %12 = load ptr, ptr %11, align 4
  %13 = ptrtoint ptr %12 to i32
  %14 = sub i32 %8, %13
  %15 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 1
  %16 = load ptr, ptr %15, align 4
  %17 = icmp slt i32 %10, 1
  %18 = load i1, ptr @skb_expand_head.__already_done, align 1
  %19 = xor i1 %18, true
  %20 = select i1 %17, i1 %19, i1 false
  br i1 %20, label %21, label %22, !prof !12

21:                                               ; preds = %2
  store i1 true, ptr @skb_expand_head.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1810, i32 noundef 9, ptr noundef nonnull @.str.9, ptr noundef nonnull @__func__.skb_expand_head) #21
  br label %22

22:                                               ; preds = %21, %2
  br i1 %17, label %114, label %23

23:                                               ; preds = %22
  %24 = add nuw i32 %10, 63
  %25 = and i32 %24, -64
  %26 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 19
  %27 = load volatile i32, ptr %26, align 4
  %28 = icmp eq i32 %27, 1
  br i1 %28, label %29, label %37

29:                                               ; preds = %23
  %30 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 4, i32 0, i32 1
  %31 = load ptr, ptr %30, align 4
  %32 = icmp eq ptr %31, @sock_wfree
  %33 = icmp eq ptr %31, @__sock_wfree
  %34 = or i1 %32, %33
  %35 = icmp eq ptr %31, @tcp_wfree
  %36 = or i1 %35, %34
  br i1 %36, label %44, label %37

37:                                               ; preds = %29, %23
  %38 = tail call ptr @skb_clone(ptr noundef %0, i32 noundef 2592)
  %39 = icmp eq ptr %38, null
  br i1 %39, label %81, label %40, !prof !12

40:                                               ; preds = %37
  %41 = icmp eq ptr %16, null
  br i1 %41, label %43, label %42

42:                                               ; preds = %40
  tail call void @skb_set_owner_w(ptr noundef nonnull %38, ptr noundef nonnull %16) #21
  br label %43

43:                                               ; preds = %42, %40
  tail call void @consume_skb(ptr noundef %0)
  br label %44

44:                                               ; preds = %43, %29
  %45 = phi ptr [ %0, %29 ], [ %38, %43 ]
  %46 = tail call i32 @pskb_expand_head(ptr noundef %45, i32 noundef %25, i32 noundef 0, i32 noundef 2592)
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %48, label %81

48:                                               ; preds = %44
  %49 = icmp eq ptr %16, null
  br i1 %49, label %114, label %50

50:                                               ; preds = %48
  %51 = getelementptr inbounds %struct.sk_buff, ptr %45, i32 0, i32 4, i32 0, i32 1
  %52 = load ptr, ptr %51, align 4
  %53 = icmp eq ptr %52, @sock_wfree
  %54 = icmp eq ptr %52, @__sock_wfree
  %55 = or i1 %53, %54
  %56 = icmp eq ptr %52, @tcp_wfree
  %57 = or i1 %56, %55
  br i1 %57, label %58, label %114

58:                                               ; preds = %50
  %59 = getelementptr inbounds %struct.sk_buff, ptr %45, i32 0, i32 15
  %60 = load ptr, ptr %59, align 4
  %61 = getelementptr inbounds %struct.sk_buff, ptr %45, i32 0, i32 16
  %62 = load ptr, ptr %61, align 8
  %63 = ptrtoint ptr %60 to i32
  %64 = ptrtoint ptr %62 to i32
  %65 = sub i32 %63, %64
  %66 = add i32 %65, %14
  %67 = getelementptr inbounds %struct.sock, ptr %16, i32 0, i32 23
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %67) #21, !srcloc !16
  %68 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %67, ptr %67, i32 %66, ptr elementtype(i32) %67) #21, !srcloc !37
  %69 = extractvalue { i32, i32, i32 } %68, 0
  %70 = icmp eq i32 %69, 0
  br i1 %70, label %75, label %71, !prof !12

71:                                               ; preds = %58
  %72 = add i32 %69, %66
  %73 = or i32 %72, %69
  %74 = icmp sgt i32 %73, -1
  br i1 %74, label %77, label %75, !prof !13

75:                                               ; preds = %71, %58
  %76 = phi i32 [ 2, %58 ], [ 1, %71 ]
  tail call void @refcount_warn_saturate(ptr noundef %67, i32 noundef %76) #21
  br label %77

77:                                               ; preds = %75, %71
  %78 = getelementptr inbounds %struct.sk_buff, ptr %45, i32 0, i32 18
  %79 = load i32, ptr %78, align 8
  %80 = add i32 %79, %66
  store i32 %80, ptr %78, align 8
  br label %114

81:                                               ; preds = %44, %37
  %82 = phi ptr [ %45, %44 ], [ %0, %37 ]
  %83 = icmp eq ptr %82, null
  br i1 %83, label %114, label %84, !prof !12

84:                                               ; preds = %81
  %85 = getelementptr inbounds %struct.sk_buff, ptr %82, i32 0, i32 19
  %86 = load volatile i32, ptr %85, align 4
  %87 = icmp eq i32 %86, 1
  tail call void asm sideeffect "dmb ish", "~{memory}"() #21
  br i1 %87, label %96, label %88, !prof !13

88:                                               ; preds = %84
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %85) #21, !srcloc !16
  %89 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %85, ptr %85, i32 1, ptr elementtype(i32) %85) #21, !srcloc !19
  %90 = extractvalue { i32, i32, i32 } %89, 0
  %91 = icmp eq i32 %90, 1
  br i1 %91, label %95, label %92

92:                                               ; preds = %88
  %93 = icmp sgt i32 %90, 0
  br i1 %93, label %114, label %94, !prof !13

94:                                               ; preds = %92
  tail call void @refcount_warn_saturate(ptr noundef %85, i32 noundef 3) #21
  br label %114

95:                                               ; preds = %88
  tail call void asm sideeffect "dmb ish", "~{memory}"() #21, !srcloc !20
  br label %96

96:                                               ; preds = %95, %84
  %97 = tail call ptr @llvm.returnaddress(i32 0) #21
  %98 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_kfree_skb, i32 0, i32 1), align 4
  %99 = icmp sgt i32 %98, 0
  br i1 %99, label %100, label %113

100:                                              ; preds = %96
  %101 = tail call ptr @llvm.thread.pointer() #21
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
  tail call void asm sideeffect "", "~{memory}"() #21, !srcloc !21
  %112 = tail call i32 @__traceiter_kfree_skb(ptr noundef null, ptr noundef nonnull %82, ptr noundef %97, i32 noundef 0) #21
  tail call void asm sideeffect "", "~{memory}"() #21, !srcloc !22
  br label %113

113:                                              ; preds = %111, %100, %96
  tail call void @__kfree_skb(ptr noundef nonnull %82) #21
  br label %114

114:                                              ; preds = %113, %94, %92, %81, %77, %50, %48, %22
  %115 = phi ptr [ %0, %22 ], [ %45, %77 ], [ %45, %50 ], [ %45, %48 ], [ null, %81 ], [ null, %92 ], [ null, %94 ], [ null, %113 ]
  ret ptr %115
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @skb_set_owner_w(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @skb_copy_expand(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) #0 {
  %5 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 5
  %6 = load i32, ptr %5, align 8
  %7 = add i32 %2, %1
  %8 = add i32 %7, %6
  %9 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 11
  %10 = load i8, ptr %9, align 2
  %11 = lshr i8 %10, 5
  %12 = and i8 %11, 2
  %13 = zext i8 %12 to i32
  %14 = tail call ptr @__alloc_skb(i32 noundef %8, i32 noundef %3, i32 noundef %13, i32 noundef -1)
  %15 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 17
  %16 = load ptr, ptr %15, align 4
  %17 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 16
  %18 = load ptr, ptr %17, align 8
  %19 = ptrtoint ptr %16 to i32
  %20 = ptrtoint ptr %18 to i32
  %21 = sub i32 %19, %20
  %22 = icmp eq ptr %14, null
  br i1 %22, label %110, label %23

23:                                               ; preds = %4
  %24 = getelementptr inbounds %struct.sk_buff, ptr %14, i32 0, i32 17
  %25 = load ptr, ptr %24, align 4
  %26 = getelementptr i8, ptr %25, i32 %1
  store ptr %26, ptr %24, align 4
  %27 = getelementptr inbounds %struct.sk_buff, ptr %14, i32 0, i32 14
  %28 = load ptr, ptr %27, align 8
  %29 = getelementptr i8, ptr %28, i32 %1
  store ptr %29, ptr %27, align 8
  %30 = load i32, ptr %5, align 8
  %31 = getelementptr inbounds %struct.sk_buff, ptr %14, i32 0, i32 6
  %32 = load i32, ptr %31, align 4
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %35, label %34, !prof !13

34:                                               ; preds = %23
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22net/core/skbuff.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1984, 0\0A.popsection", ""() #21, !srcloc !46
  unreachable

35:                                               ; preds = %23
  %36 = getelementptr i8, ptr %29, i32 %30
  store ptr %36, ptr %27, align 8
  %37 = getelementptr inbounds %struct.sk_buff, ptr %14, i32 0, i32 5
  %38 = load i32, ptr %37, align 8
  %39 = add i32 %38, %30
  store i32 %39, ptr %37, align 8
  %40 = getelementptr inbounds %struct.sk_buff, ptr %14, i32 0, i32 15
  %41 = load ptr, ptr %40, align 4
  %42 = icmp ugt ptr %36, %41
  br i1 %42, label %43, label %45, !prof !12

43:                                               ; preds = %35
  %44 = tail call ptr @llvm.returnaddress(i32 0) #21
  tail call fastcc void @skb_over_panic(ptr noundef nonnull %14, i32 noundef %30, ptr noundef %44) #21
  unreachable

45:                                               ; preds = %35
  %46 = icmp slt i32 %21, %1
  %47 = sub i32 %1, %21
  %48 = tail call i32 @llvm.smin.i32(i32 %21, i32 %1)
  %49 = select i1 %46, i32 %47, i32 0
  %50 = sub i32 0, %48
  %51 = getelementptr inbounds %struct.sk_buff, ptr %14, i32 0, i32 16
  %52 = load ptr, ptr %51, align 8
  %53 = getelementptr i8, ptr %52, i32 %49
  %54 = load i32, ptr %5, align 8
  %55 = add i32 %54, %48
  %56 = tail call i32 @skb_copy_bits(ptr noundef %0, i32 noundef %50, ptr noundef %53, i32 noundef %55)
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %59, label %58, !prof !13

58:                                               ; preds = %45
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22net/core/skbuff.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1890, 0\0A.popsection", ""() #21, !srcloc !52
  unreachable

59:                                               ; preds = %45
  tail call fastcc void @__copy_skb_header(ptr noundef nonnull %14, ptr noundef %0) #21
  %60 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 15
  %61 = load ptr, ptr %60, align 4
  %62 = getelementptr inbounds %struct.skb_shared_info, ptr %61, i32 0, i32 4
  %63 = load i16, ptr %62, align 4
  %64 = load ptr, ptr %40, align 4
  %65 = getelementptr inbounds %struct.skb_shared_info, ptr %64, i32 0, i32 4
  store i16 %63, ptr %65, align 4
  %66 = load ptr, ptr %60, align 4
  %67 = getelementptr inbounds %struct.skb_shared_info, ptr %66, i32 0, i32 5
  %68 = load i16, ptr %67, align 2
  %69 = load ptr, ptr %40, align 4
  %70 = getelementptr inbounds %struct.skb_shared_info, ptr %69, i32 0, i32 5
  store i16 %68, ptr %70, align 2
  %71 = load ptr, ptr %60, align 4
  %72 = getelementptr inbounds %struct.skb_shared_info, ptr %71, i32 0, i32 8
  %73 = load i32, ptr %72, align 8
  %74 = load ptr, ptr %40, align 4
  %75 = getelementptr inbounds %struct.skb_shared_info, ptr %74, i32 0, i32 8
  store i32 %73, ptr %75, align 8
  %76 = getelementptr inbounds %struct.sk_buff, ptr %14, i32 0, i32 13
  %77 = load i16, ptr %76, align 8
  %78 = and i16 %77, 96
  %79 = icmp eq i16 %78, 96
  br i1 %79, label %82, label %80

80:                                               ; preds = %59
  %81 = trunc i32 %47 to i16
  br label %87

82:                                               ; preds = %59
  %83 = getelementptr inbounds %struct.sk_buff, ptr %14, i32 0, i32 13, i32 0, i32 4
  %84 = load i16, ptr %83, align 4
  %85 = trunc i32 %47 to i16
  %86 = add i16 %84, %85
  store i16 %86, ptr %83, align 4
  br label %87

87:                                               ; preds = %82, %80
  %88 = phi i16 [ %81, %80 ], [ %85, %82 ]
  %89 = getelementptr inbounds %struct.sk_buff, ptr %14, i32 0, i32 13, i32 0, i32 17
  %90 = load i16, ptr %89, align 2
  %91 = add i16 %90, %88
  store i16 %91, ptr %89, align 2
  %92 = getelementptr inbounds %struct.sk_buff, ptr %14, i32 0, i32 13, i32 0, i32 18
  %93 = load i16, ptr %92, align 4
  %94 = add i16 %93, %88
  store i16 %94, ptr %92, align 4
  %95 = getelementptr inbounds %struct.sk_buff, ptr %14, i32 0, i32 13, i32 0, i32 19
  %96 = load i16, ptr %95, align 2
  %97 = icmp eq i16 %96, -1
  br i1 %97, label %100, label %98

98:                                               ; preds = %87
  %99 = add i16 %96, %88
  store i16 %99, ptr %95, align 2
  br label %100

100:                                              ; preds = %98, %87
  %101 = getelementptr inbounds %struct.sk_buff, ptr %14, i32 0, i32 13, i32 0, i32 13
  %102 = load i16, ptr %101, align 2
  %103 = add i16 %102, %88
  store i16 %103, ptr %101, align 2
  %104 = getelementptr inbounds %struct.sk_buff, ptr %14, i32 0, i32 13, i32 0, i32 14
  %105 = load i16, ptr %104, align 4
  %106 = add i16 %105, %88
  store i16 %106, ptr %104, align 4
  %107 = getelementptr inbounds %struct.sk_buff, ptr %14, i32 0, i32 13, i32 0, i32 15
  %108 = load i16, ptr %107, align 2
  %109 = add i16 %108, %88
  store i16 %109, ptr %107, align 2
  br label %110

110:                                              ; preds = %100, %4
  ret ptr %14
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__skb_pad(ptr noundef %0, i32 noundef %1, i1 noundef zeroext %2) #0 {
  %4 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 11
  %5 = load i8, ptr %4, align 2
  %6 = and i8 %5, 1
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %25, label %8

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 15
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr inbounds %struct.skb_shared_info, ptr %10, i32 0, i32 10
  %12 = load volatile i32, ptr %11, align 4
  %13 = and i32 %12, 65535
  %14 = icmp eq i32 %13, 1
  br i1 %14, label %25, label %15

15:                                               ; preds = %8
  %16 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 6
  %17 = load i32, ptr %16, align 4
  %18 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 14
  %19 = load ptr, ptr %18, align 8
  %20 = ptrtoint ptr %10 to i32
  %21 = ptrtoint ptr %19 to i32
  %22 = add i32 %17, %1
  %23 = sub i32 %22, %20
  %24 = add i32 %23, %21
  br label %56

25:                                               ; preds = %8, %3
  %26 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 6
  %27 = load i32, ptr %26, align 4
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %37

29:                                               ; preds = %25
  %30 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 15
  %31 = load ptr, ptr %30, align 4
  %32 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 14
  %33 = load ptr, ptr %32, align 8
  %34 = ptrtoint ptr %31 to i32
  %35 = ptrtoint ptr %33 to i32
  %36 = sub i32 %34, %35
  br label %37

37:                                               ; preds = %29, %25
  %38 = phi i32 [ %36, %29 ], [ 0, %25 ]
  %39 = icmp slt i32 %38, %1
  br i1 %39, label %46, label %40

40:                                               ; preds = %37
  %41 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 17
  %42 = load ptr, ptr %41, align 4
  %43 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 5
  %44 = load i32, ptr %43, align 8
  %45 = getelementptr i8, ptr %42, i32 %44
  tail call void @llvm.memset.p0.i32(ptr align 1 %45, i8 0, i32 %1, i1 false)
  br label %92

46:                                               ; preds = %37
  %47 = add i32 %27, %1
  %48 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 15
  %49 = load ptr, ptr %48, align 4
  %50 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 14
  %51 = load ptr, ptr %50, align 8
  %52 = ptrtoint ptr %49 to i32
  %53 = ptrtoint ptr %51 to i32
  %54 = sub i32 %53, %52
  %55 = add i32 %47, %54
  br i1 %7, label %65, label %56

56:                                               ; preds = %46, %15
  %57 = phi i32 [ %17, %15 ], [ %27, %46 ]
  %58 = phi i32 [ %24, %15 ], [ %55, %46 ]
  %59 = phi ptr [ %10, %15 ], [ %49, %46 ]
  %60 = phi ptr [ %16, %15 ], [ %26, %46 ]
  %61 = getelementptr inbounds %struct.skb_shared_info, ptr %59, i32 0, i32 10
  %62 = load volatile i32, ptr %61, align 4
  %63 = and i32 %62, 65535
  %64 = icmp ne i32 %63, 1
  br label %65

65:                                               ; preds = %56, %46
  %66 = phi i32 [ %27, %46 ], [ %57, %56 ]
  %67 = phi i32 [ %55, %46 ], [ %58, %56 ]
  %68 = phi ptr [ %26, %46 ], [ %60, %56 ]
  %69 = phi i1 [ false, %46 ], [ %64, %56 ]
  %70 = icmp sgt i32 %67, 0
  %71 = select i1 %69, i1 true, i1 %70
  br i1 %71, label %72, label %77, !prof !13

72:                                               ; preds = %65
  %73 = tail call i32 @pskb_expand_head(ptr noundef %0, i32 noundef 0, i32 noundef %67, i32 noundef 2592)
  %74 = icmp eq i32 %73, 0
  br i1 %74, label %75, label %89, !prof !13

75:                                               ; preds = %72
  %76 = load i32, ptr %68, align 4
  br label %77

77:                                               ; preds = %75, %65
  %78 = phi i32 [ %76, %75 ], [ %66, %65 ]
  %79 = icmp eq i32 %78, 0
  br i1 %79, label %83, label %80

80:                                               ; preds = %77
  %81 = tail call ptr @__pskb_pull_tail(ptr noundef %0, i32 noundef %78) #21
  %82 = icmp eq ptr %81, null
  br i1 %82, label %89, label %83

83:                                               ; preds = %80, %77
  %84 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 17
  %85 = load ptr, ptr %84, align 4
  %86 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 5
  %87 = load i32, ptr %86, align 8
  %88 = getelementptr i8, ptr %85, i32 %87
  tail call void @llvm.memset.p0.i32(ptr align 1 %88, i8 0, i32 %1, i1 false)
  br label %92

89:                                               ; preds = %80, %72
  %90 = phi i32 [ %73, %72 ], [ -12, %80 ]
  br i1 %2, label %91, label %92

91:                                               ; preds = %89
  tail call fastcc void @kfree_skb(ptr noundef %0)
  br label %92

92:                                               ; preds = %91, %89, %83, %40
  %93 = phi i32 [ 0, %83 ], [ 0, %40 ], [ %90, %91 ], [ %90, %89 ]
  ret i32 %93
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @pskb_put(ptr noundef %0, ptr noundef %1, i32 noundef %2) #0 {
  %4 = icmp eq ptr %1, %0
  br i1 %4, label %12, label %5

5:                                                ; preds = %3
  %6 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 6
  %7 = load i32, ptr %6, align 4
  %8 = add i32 %7, %2
  store i32 %8, ptr %6, align 4
  %9 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 5
  %10 = load i32, ptr %9, align 8
  %11 = add i32 %10, %2
  store i32 %11, ptr %9, align 8
  br label %12

12:                                               ; preds = %5, %3
  %13 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 14
  %14 = load ptr, ptr %13, align 8
  %15 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 6
  %16 = load i32, ptr %15, align 4
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %19, label %18, !prof !13

18:                                               ; preds = %12
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22net/core/skbuff.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1984, 0\0A.popsection", ""() #21, !srcloc !46
  unreachable

19:                                               ; preds = %12
  %20 = getelementptr i8, ptr %14, i32 %2
  store ptr %20, ptr %13, align 8
  %21 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 5
  %22 = load i32, ptr %21, align 8
  %23 = add i32 %22, %2
  store i32 %23, ptr %21, align 8
  %24 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 15
  %25 = load ptr, ptr %24, align 4
  %26 = icmp ugt ptr %20, %25
  br i1 %26, label %27, label %29, !prof !12

27:                                               ; preds = %19
  %28 = tail call ptr @llvm.returnaddress(i32 0) #21
  tail call fastcc void @skb_over_panic(ptr noundef %1, i32 noundef %2, ptr noundef %28) #21
  unreachable

29:                                               ; preds = %19
  ret ptr %14
}

; Function Attrs: noreturn nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @skb_over_panic(ptr nocapture noundef readonly %0, i32 noundef %1, ptr noundef %2) unnamed_addr #13 {
  %4 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 5
  %5 = load i32, ptr %4, align 8
  %6 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 16
  %7 = load ptr, ptr %6, align 8
  %8 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 17
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 14
  %11 = load ptr, ptr %10, align 8
  %12 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 15
  %13 = load ptr, ptr %12, align 4
  %14 = getelementptr inbounds %struct.anon, ptr %0, i32 0, i32 2
  %15 = load ptr, ptr %14, align 8
  %16 = icmp eq ptr %15, null
  %17 = select i1 %16, ptr @.str.21, ptr %15
  %18 = ptrtoint ptr %13 to i32
  %19 = ptrtoint ptr %11 to i32
  %20 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.20, ptr noundef nonnull @__func__.skb_over_panic, ptr noundef %2, i32 noundef %5, i32 noundef %1, ptr noundef %7, ptr noundef %9, i32 noundef %19, i32 noundef %18, ptr noundef nonnull %17) #22
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22net/core/skbuff.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 113, 0\0A.popsection", ""() #21, !srcloc !53
  unreachable
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @skb_push(ptr nocapture noundef %0, i32 noundef %1) #0 {
  %3 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 17
  %4 = load ptr, ptr %3, align 4
  %5 = sub i32 0, %1
  %6 = getelementptr i8, ptr %4, i32 %5
  store ptr %6, ptr %3, align 4
  %7 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 5
  %8 = load i32, ptr %7, align 8
  %9 = add i32 %8, %1
  store i32 %9, ptr %7, align 8
  %10 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 16
  %11 = load ptr, ptr %10, align 8
  %12 = icmp ult ptr %6, %11
  br i1 %12, label %13, label %15, !prof !12

13:                                               ; preds = %2
  %14 = tail call ptr @llvm.returnaddress(i32 0)
  tail call fastcc void @skb_under_panic(ptr noundef %0, i32 noundef %1, ptr noundef %14)
  unreachable

15:                                               ; preds = %2
  ret ptr %6
}

; Function Attrs: noreturn nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @skb_under_panic(ptr nocapture noundef readonly %0, i32 noundef %1, ptr noundef %2) unnamed_addr #13 {
  %4 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 5
  %5 = load i32, ptr %4, align 8
  %6 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 16
  %7 = load ptr, ptr %6, align 8
  %8 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 17
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 14
  %11 = load ptr, ptr %10, align 8
  %12 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 15
  %13 = load ptr, ptr %12, align 4
  %14 = getelementptr inbounds %struct.anon, ptr %0, i32 0, i32 2
  %15 = load ptr, ptr %14, align 8
  %16 = icmp eq ptr %15, null
  %17 = select i1 %16, ptr @.str.21, ptr %15
  %18 = ptrtoint ptr %13 to i32
  %19 = ptrtoint ptr %11 to i32
  %20 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.20, ptr noundef nonnull @__func__.skb_under_panic, ptr noundef %2, i32 noundef %5, i32 noundef %1, ptr noundef %7, ptr noundef %9, i32 noundef %19, i32 noundef %18, ptr noundef nonnull %17) #22
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22net/core/skbuff.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 113, 0\0A.popsection", ""() #21, !srcloc !53
  unreachable
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @skb_pull(ptr nocapture noundef %0, i32 noundef %1) #0 {
  %3 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 5
  %4 = load i32, ptr %3, align 8
  %5 = icmp ult i32 %4, %1
  br i1 %5, label %16, label %6, !prof !12

6:                                                ; preds = %2
  %7 = sub i32 %4, %1
  store i32 %7, ptr %3, align 8
  %8 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 6
  %9 = load i32, ptr %8, align 4
  %10 = icmp ult i32 %7, %9
  br i1 %10, label %11, label %12, !prof !12

11:                                               ; preds = %6
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/skbuff.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2398, 0\0A.popsection", ""() #21, !srcloc !54
  unreachable

12:                                               ; preds = %6
  %13 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 17
  %14 = load ptr, ptr %13, align 4
  %15 = getelementptr i8, ptr %14, i32 %1
  store ptr %15, ptr %13, align 4
  br label %16

16:                                               ; preds = %12, %2
  %17 = phi ptr [ %15, %12 ], [ null, %2 ]
  ret ptr %17
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @skb_pull_data(ptr nocapture noundef %0, i32 noundef %1) #0 {
  %3 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 5
  %4 = load i32, ptr %3, align 8
  %5 = icmp ult i32 %4, %1
  br i1 %5, label %16, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 17
  %8 = load ptr, ptr %7, align 4
  %9 = sub i32 %4, %1
  store i32 %9, ptr %3, align 8
  %10 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 6
  %11 = load i32, ptr %10, align 4
  %12 = icmp ult i32 %9, %11
  br i1 %12, label %13, label %14, !prof !12

13:                                               ; preds = %6
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/skbuff.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2398, 0\0A.popsection", ""() #21, !srcloc !54
  unreachable

14:                                               ; preds = %6
  %15 = getelementptr i8, ptr %8, i32 %1
  store ptr %15, ptr %7, align 4
  br label %16

16:                                               ; preds = %14, %2
  %17 = phi ptr [ %8, %14 ], [ null, %2 ]
  ret ptr %17
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @skb_trim(ptr nocapture noundef %0, i32 noundef %1) #0 {
  %3 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 5
  %4 = load i32, ptr %3, align 8
  %5 = icmp ugt i32 %4, %1
  br i1 %5, label %6, label %16

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 6
  %8 = load i32, ptr %7, align 4
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %11, label %10, !prof !13

10:                                               ; preds = %6
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.19, i32 noundef 2789, i32 noundef 9, ptr noundef null) #21
  br label %16

11:                                               ; preds = %6
  store i32 %1, ptr %3, align 8
  %12 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 17
  %13 = load ptr, ptr %12, align 4
  %14 = getelementptr i8, ptr %13, i32 %1
  %15 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 14
  store ptr %14, ptr %15, align 8
  br label %16

16:                                               ; preds = %11, %10, %2
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @skb_condense(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 6
  %3 = load i32, ptr %2, align 4
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %26, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 15
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 14
  %9 = load ptr, ptr %8, align 8
  %10 = ptrtoint ptr %7 to i32
  %11 = ptrtoint ptr %9 to i32
  %12 = sub i32 %10, %11
  %13 = icmp ugt i32 %3, %12
  br i1 %13, label %36, label %14

14:                                               ; preds = %5
  %15 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 11
  %16 = load i8, ptr %15, align 2
  %17 = and i8 %16, 1
  %18 = icmp eq i8 %17, 0
  br i1 %18, label %24, label %19

19:                                               ; preds = %14
  %20 = getelementptr inbounds %struct.skb_shared_info, ptr %7, i32 0, i32 10
  %21 = load volatile i32, ptr %20, align 4
  %22 = and i32 %21, 65535
  %23 = icmp eq i32 %22, 1
  br i1 %23, label %24, label %36

24:                                               ; preds = %19, %14
  %25 = tail call ptr @__pskb_pull_tail(ptr noundef %0, i32 noundef %3)
  br label %26

26:                                               ; preds = %24, %1
  %27 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 15
  %28 = load ptr, ptr %27, align 4
  %29 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 16
  %30 = load ptr, ptr %29, align 8
  %31 = ptrtoint ptr %28 to i32
  %32 = ptrtoint ptr %30 to i32
  %33 = add i32 %31, 448
  %34 = sub i32 %33, %32
  %35 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 18
  store i32 %34, ptr %35, align 8
  br label %36

36:                                               ; preds = %26, %19, %5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @pskb_trim_rcsum_slow(ptr noundef %0, i32 noundef %1) #0 {
  %3 = alloca %struct.skb_checksum_ops, align 8
  %4 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 13
  %5 = load i16, ptr %4, align 8
  %6 = lshr i16 %5, 5
  %7 = trunc i16 %6 to i2
  switch i2 %7, label %49 [
    i2 -2, label %8
    i2 -1, label %25
  ]

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 5
  %10 = load i32, ptr %9, align 8
  %11 = sub i32 %10, %1
  %12 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 13, i32 0, i32 4
  %13 = load i32, ptr %12, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #21
  %14 = load i64, ptr @__const.skb_checksum.ops, align 8
  store i64 %14, ptr %3, align 8
  %15 = call i32 @__skb_checksum(ptr noundef %0, i32 noundef %1, i32 noundef %11, i32 noundef 0, ptr noundef nonnull %3) #21
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #21
  %16 = xor i32 %15, -1
  %17 = and i32 %1, 1
  %18 = icmp eq i32 %17, 0
  %19 = tail call i32 @llvm.fshl.i32(i32 %16, i32 %16, i32 24) #21
  %20 = select i1 %18, i32 %16, i32 %19
  %21 = add i32 %20, %13
  %22 = icmp ult i32 %21, %20
  %23 = zext i1 %22 to i32
  %24 = add i32 %21, %23
  store i32 %24, ptr %12, align 4
  br label %49

25:                                               ; preds = %2
  %26 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 5
  %27 = load i32, ptr %26, align 8
  %28 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 6
  %29 = load i32, ptr %28, align 4
  %30 = sub i32 %27, %29
  %31 = tail call i32 @llvm.umin.i32(i32 %30, i32 %1)
  %32 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 13, i32 0, i32 4
  %33 = load i16, ptr %32, align 4
  %34 = zext i16 %33 to i32
  %35 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 17
  %36 = load ptr, ptr %35, align 4
  %37 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 16
  %38 = load ptr, ptr %37, align 8
  %39 = ptrtoint ptr %36 to i32
  %40 = ptrtoint ptr %38 to i32
  %41 = getelementptr inbounds %struct.anon.169, ptr %32, i32 0, i32 1
  %42 = load i16, ptr %41, align 2
  %43 = zext i16 %42 to i32
  %44 = add nuw nsw i32 %34, 2
  %45 = sub i32 %44, %39
  %46 = add i32 %45, %40
  %47 = add i32 %46, %43
  %48 = icmp ugt i32 %47, %31
  br i1 %48, label %61, label %49

49:                                               ; preds = %25, %8, %2
  %50 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 6
  %51 = load i32, ptr %50, align 4
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %55, label %53

53:                                               ; preds = %49
  %54 = tail call i32 @___pskb_trim(ptr noundef %0, i32 noundef %1) #21
  br label %61

55:                                               ; preds = %49
  %56 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 5
  store i32 %1, ptr %56, align 8
  %57 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 17
  %58 = load ptr, ptr %57, align 4
  %59 = getelementptr i8, ptr %58, i32 %1
  %60 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 14
  store ptr %59, ptr %60, align 8
  br label %61

61:                                               ; preds = %55, %53, %25
  %62 = phi i32 [ -22, %25 ], [ %54, %53 ], [ 0, %55 ]
  ret i32 %62
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @skb_checksum(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) #0 {
  %5 = alloca %struct.skb_checksum_ops, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #21
  %6 = load i64, ptr @__const.skb_checksum.ops, align 8
  store i64 %6, ptr %5, align 8
  %7 = call i32 @__skb_checksum(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef nonnull %5)
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #21
  ret i32 %7
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @__pskb_pull_tail(ptr noundef %0, i32 noundef %1) #0 {
  %3 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 14
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr i8, ptr %4, i32 %1
  %6 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 15
  %7 = load ptr, ptr %6, align 4
  %8 = ptrtoint ptr %5 to i32
  %9 = ptrtoint ptr %7 to i32
  %10 = sub i32 %8, %9
  %11 = icmp sgt i32 %10, 0
  br i1 %11, label %22, label %12

12:                                               ; preds = %2
  %13 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 11
  %14 = load i8, ptr %13, align 2
  %15 = and i8 %14, 1
  %16 = icmp eq i8 %15, 0
  br i1 %16, label %29, label %17

17:                                               ; preds = %12
  %18 = getelementptr inbounds %struct.skb_shared_info, ptr %7, i32 0, i32 10
  %19 = load volatile i32, ptr %18, align 4
  %20 = and i32 %19, 65535
  %21 = icmp eq i32 %20, 1
  br i1 %21, label %29, label %22

22:                                               ; preds = %17, %2
  %23 = add i32 %10, 128
  %24 = select i1 %11, i32 %23, i32 0
  %25 = tail call i32 @pskb_expand_head(ptr noundef %0, i32 noundef 0, i32 noundef %24, i32 noundef 2592)
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %265

27:                                               ; preds = %22
  %28 = load ptr, ptr %3, align 8
  br label %29

29:                                               ; preds = %27, %17, %12
  %30 = phi ptr [ %28, %27 ], [ %4, %12 ], [ %4, %17 ]
  %31 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 5
  %32 = load i32, ptr %31, align 8
  %33 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 6
  %34 = load i32, ptr %33, align 4
  %35 = sub i32 %32, %34
  %36 = tail call i32 @skb_copy_bits(ptr noundef %0, i32 noundef %35, ptr noundef %30, i32 noundef %1)
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %39, label %38, !prof !13

38:                                               ; preds = %29
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22net/core/skbuff.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2217, 0\0A.popsection", ""() #21, !srcloc !55
  unreachable

39:                                               ; preds = %29
  %40 = load ptr, ptr %6, align 4
  %41 = getelementptr inbounds %struct.skb_shared_info, ptr %40, i32 0, i32 6
  %42 = load ptr, ptr %41, align 8
  %43 = icmp eq ptr %42, null
  br i1 %43, label %167, label %44

44:                                               ; preds = %39
  %45 = getelementptr inbounds %struct.skb_shared_info, ptr %40, i32 0, i32 2
  %46 = load i8, ptr %45, align 2
  %47 = zext i8 %46 to i32
  %48 = icmp eq i8 %46, 0
  br i1 %48, label %59, label %49

49:                                               ; preds = %55, %44
  %50 = phi i32 [ %56, %55 ], [ %1, %44 ]
  %51 = phi i32 [ %57, %55 ], [ 0, %44 ]
  %52 = getelementptr %struct.skb_shared_info, ptr %40, i32 0, i32 12, i32 %51, i32 1
  %53 = load i32, ptr %52, align 4
  %54 = icmp sgt i32 %50, %53
  br i1 %54, label %55, label %167

55:                                               ; preds = %49
  %56 = sub i32 %50, %53
  %57 = add nuw nsw i32 %51, 1
  %58 = icmp eq i32 %57, %47
  br i1 %58, label %59, label %49

59:                                               ; preds = %55, %44
  %60 = phi i32 [ %1, %44 ], [ %56, %55 ]
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %167, label %62

62:                                               ; preds = %68, %59
  %63 = phi i32 [ %69, %68 ], [ %60, %59 ]
  %64 = phi ptr [ %70, %68 ], [ %42, %59 ]
  %65 = getelementptr inbounds %struct.sk_buff, ptr %64, i32 0, i32 5
  %66 = load i32, ptr %65, align 8
  %67 = icmp ult i32 %63, %66
  br i1 %67, label %72, label %68

68:                                               ; preds = %62
  %69 = sub i32 %63, %66
  %70 = load ptr, ptr %64, align 8
  %71 = icmp eq i32 %69, 0
  br i1 %71, label %144, label %62

72:                                               ; preds = %62
  %73 = getelementptr inbounds %struct.sk_buff, ptr %64, i32 0, i32 19
  %74 = load volatile i32, ptr %73, align 4
  %75 = icmp eq i32 %74, 1
  br i1 %75, label %83, label %76

76:                                               ; preds = %72
  %77 = tail call ptr @skb_clone(ptr noundef %64, i32 noundef 2592)
  %78 = icmp eq ptr %77, null
  br i1 %78, label %265, label %79

79:                                               ; preds = %76
  %80 = load ptr, ptr %64, align 8
  %81 = getelementptr inbounds %struct.sk_buff, ptr %77, i32 0, i32 5
  %82 = load i32, ptr %81, align 8
  br label %83

83:                                               ; preds = %79, %72
  %84 = phi i32 [ %82, %79 ], [ %66, %72 ]
  %85 = phi ptr [ %77, %79 ], [ %64, %72 ]
  %86 = phi ptr [ %77, %79 ], [ null, %72 ]
  %87 = phi ptr [ %80, %79 ], [ %64, %72 ]
  %88 = getelementptr inbounds %struct.sk_buff, ptr %85, i32 0, i32 5
  %89 = icmp ult i32 %84, %63
  br i1 %89, label %112, label %90, !prof !12

90:                                               ; preds = %83
  %91 = getelementptr inbounds %struct.sk_buff, ptr %85, i32 0, i32 6
  %92 = load i32, ptr %91, align 4
  %93 = sub i32 %84, %92
  %94 = icmp ugt i32 %63, %93
  br i1 %94, label %95, label %101

95:                                               ; preds = %90
  %96 = sub i32 %63, %93
  %97 = tail call ptr @__pskb_pull_tail(ptr noundef %85, i32 noundef %96) #21
  %98 = icmp eq ptr %97, null
  br i1 %98, label %112, label %99

99:                                               ; preds = %95
  %100 = load i32, ptr %88, align 8
  br label %101

101:                                              ; preds = %99, %90
  %102 = phi i32 [ %100, %99 ], [ %84, %90 ]
  %103 = sub i32 %102, %63
  store i32 %103, ptr %88, align 8
  %104 = getelementptr inbounds %struct.sk_buff, ptr %85, i32 0, i32 17
  %105 = load ptr, ptr %104, align 4
  %106 = getelementptr i8, ptr %105, i32 %63
  store ptr %106, ptr %104, align 4
  %107 = icmp eq ptr %106, null
  br i1 %107, label %112, label %108

108:                                              ; preds = %101
  %109 = load ptr, ptr %6, align 4
  %110 = getelementptr inbounds %struct.skb_shared_info, ptr %109, i32 0, i32 6
  %111 = load ptr, ptr %110, align 8
  br label %144

112:                                              ; preds = %101, %95, %83
  %113 = icmp eq ptr %86, null
  br i1 %113, label %265, label %114, !prof !12

114:                                              ; preds = %112
  %115 = getelementptr inbounds %struct.sk_buff, ptr %86, i32 0, i32 19
  %116 = load volatile i32, ptr %115, align 4
  %117 = icmp eq i32 %116, 1
  tail call void asm sideeffect "dmb ish", "~{memory}"() #21
  br i1 %117, label %126, label %118, !prof !13

118:                                              ; preds = %114
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %115) #21, !srcloc !16
  %119 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %115, ptr %115, i32 1, ptr elementtype(i32) %115) #21, !srcloc !19
  %120 = extractvalue { i32, i32, i32 } %119, 0
  %121 = icmp eq i32 %120, 1
  br i1 %121, label %125, label %122

122:                                              ; preds = %118
  %123 = icmp sgt i32 %120, 0
  br i1 %123, label %265, label %124, !prof !13

124:                                              ; preds = %122
  tail call void @refcount_warn_saturate(ptr noundef %115, i32 noundef 3) #21
  br label %265

125:                                              ; preds = %118
  tail call void asm sideeffect "dmb ish", "~{memory}"() #21, !srcloc !20
  br label %126

126:                                              ; preds = %125, %114
  %127 = tail call ptr @llvm.returnaddress(i32 0) #21
  %128 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_kfree_skb, i32 0, i32 1), align 4
  %129 = icmp sgt i32 %128, 0
  br i1 %129, label %130, label %143

130:                                              ; preds = %126
  %131 = tail call ptr @llvm.thread.pointer() #21
  %132 = getelementptr inbounds %struct.thread_info, ptr %131, i32 0, i32 2
  %133 = load i32, ptr %132, align 8
  %134 = lshr i32 %133, 5
  %135 = getelementptr i32, ptr @__cpu_online_mask, i32 %134
  %136 = load volatile i32, ptr %135, align 4
  %137 = and i32 %133, 31
  %138 = shl nuw i32 1, %137
  %139 = and i32 %138, %136
  %140 = icmp eq i32 %139, 0
  br i1 %140, label %143, label %141

141:                                              ; preds = %130
  tail call void asm sideeffect "", "~{memory}"() #21, !srcloc !21
  %142 = tail call i32 @__traceiter_kfree_skb(ptr noundef null, ptr noundef nonnull %86, ptr noundef %127, i32 noundef 0) #21
  tail call void asm sideeffect "", "~{memory}"() #21, !srcloc !22
  br label %143

143:                                              ; preds = %141, %130, %126
  tail call void @__kfree_skb(ptr noundef nonnull %86) #21
  br label %265

144:                                              ; preds = %108, %68
  %145 = phi ptr [ %111, %108 ], [ %42, %68 ]
  %146 = phi ptr [ %109, %108 ], [ %40, %68 ]
  %147 = phi ptr [ %86, %108 ], [ null, %68 ]
  %148 = phi ptr [ %87, %108 ], [ %70, %68 ]
  %149 = icmp eq ptr %145, %148
  br i1 %149, label %160, label %150

150:                                              ; preds = %144
  %151 = getelementptr inbounds %struct.skb_shared_info, ptr %146, i32 0, i32 6
  br label %152

152:                                              ; preds = %152, %150
  %153 = phi ptr [ %158, %152 ], [ %145, %150 ]
  %154 = phi ptr [ %157, %152 ], [ %151, %150 ]
  %155 = load ptr, ptr %153, align 8
  store ptr %155, ptr %154, align 8
  tail call void @consume_skb(ptr noundef %153)
  %156 = load ptr, ptr %6, align 4
  %157 = getelementptr inbounds %struct.skb_shared_info, ptr %156, i32 0, i32 6
  %158 = load ptr, ptr %157, align 8
  %159 = icmp eq ptr %158, %148
  br i1 %159, label %160, label %152

160:                                              ; preds = %152, %144
  %161 = phi ptr [ %146, %144 ], [ %156, %152 ]
  %162 = icmp eq ptr %147, null
  br i1 %162, label %167, label %163

163:                                              ; preds = %160
  store ptr %148, ptr %147, align 8
  %164 = load ptr, ptr %6, align 4
  %165 = getelementptr inbounds %struct.skb_shared_info, ptr %164, i32 0, i32 6
  store ptr %147, ptr %165, align 8
  %166 = load ptr, ptr %6, align 4
  br label %167

167:                                              ; preds = %163, %160, %59, %49, %39
  %168 = phi ptr [ %166, %163 ], [ %161, %160 ], [ %40, %59 ], [ %40, %39 ], [ %40, %49 ]
  %169 = getelementptr inbounds %struct.skb_shared_info, ptr %168, i32 0, i32 2
  %170 = load i8, ptr %169, align 2
  %171 = icmp eq i8 %170, 0
  br i1 %171, label %230, label %172

172:                                              ; preds = %167
  %173 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 11
  br label %174

174:                                              ; preds = %221, %172
  %175 = phi ptr [ %168, %172 ], [ %225, %221 ]
  %176 = phi i32 [ %1, %172 ], [ %223, %221 ]
  %177 = phi i32 [ 0, %172 ], [ %222, %221 ]
  %178 = phi i32 [ 0, %172 ], [ %224, %221 ]
  %179 = getelementptr %struct.skb_shared_info, ptr %175, i32 0, i32 12, i32 %178
  %180 = getelementptr %struct.skb_shared_info, ptr %175, i32 0, i32 12, i32 %178, i32 1
  %181 = load i32, ptr %180, align 4
  %182 = icmp slt i32 %176, %181
  br i1 %182, label %208, label %183

183:                                              ; preds = %174
  %184 = load i8, ptr %173, align 2
  %185 = icmp slt i8 %184, 0
  %186 = load ptr, ptr %179, align 4
  br i1 %185, label %187, label %189

187:                                              ; preds = %183
  %188 = tail call zeroext i1 @page_pool_return_skb_page(ptr noundef %186) #21
  br i1 %188, label %206, label %189

189:                                              ; preds = %187, %183
  %190 = getelementptr inbounds %struct.page, ptr %186, i32 0, i32 1
  %191 = load volatile i32, ptr %190, align 4
  %192 = and i32 %191, 1
  %193 = icmp eq i32 %192, 0
  br i1 %193, label %196, label %194, !prof !13

194:                                              ; preds = %189
  %195 = add i32 %191, -1
  br label %198

196:                                              ; preds = %189
  %197 = ptrtoint ptr %186 to i32
  br label %198

198:                                              ; preds = %196, %194
  %199 = phi i32 [ %195, %194 ], [ %197, %196 ]
  %200 = inttoptr i32 %199 to ptr
  %201 = getelementptr inbounds %struct.page, ptr %200, i32 0, i32 3
  tail call void asm sideeffect "dmb ish", "~{memory}"() #21, !srcloc !29
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %201) #21, !srcloc !16
  %202 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %201, ptr %201, i32 1, ptr elementtype(i32) %201) #21, !srcloc !30
  %203 = extractvalue { i32, i32 } %202, 0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #21, !srcloc !31
  %204 = icmp eq i32 %203, 0
  br i1 %204, label %205, label %206

205:                                              ; preds = %198
  tail call void @__put_page(ptr noundef %200) #21
  br label %206

206:                                              ; preds = %205, %198, %187
  %207 = sub i32 %176, %181
  br label %221

208:                                              ; preds = %174
  %209 = getelementptr %struct.skb_shared_info, ptr %175, i32 0, i32 12, i32 %177
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(12) %209, ptr noundef align 4 dereferenceable(12) %179, i32 12, i1 false)
  %210 = icmp eq i32 %176, 0
  br i1 %210, label %219, label %211

211:                                              ; preds = %208
  %212 = getelementptr %struct.skb_shared_info, ptr %175, i32 0, i32 12, i32 %177, i32 2
  %213 = load i32, ptr %212, align 4
  %214 = add i32 %213, %176
  store i32 %214, ptr %212, align 4
  %215 = getelementptr %struct.skb_shared_info, ptr %175, i32 0, i32 12, i32 %177, i32 1
  %216 = load i32, ptr %215, align 4
  %217 = sub i32 %216, %176
  store i32 %217, ptr %215, align 4
  %218 = icmp eq i32 %178, 0
  br i1 %218, label %235, label %219

219:                                              ; preds = %211, %208
  %220 = add i32 %177, 1
  br label %221

221:                                              ; preds = %219, %206
  %222 = phi i32 [ %220, %219 ], [ %177, %206 ]
  %223 = phi i32 [ 0, %219 ], [ %207, %206 ]
  %224 = add nuw nsw i32 %178, 1
  %225 = load ptr, ptr %6, align 4
  %226 = getelementptr inbounds %struct.skb_shared_info, ptr %225, i32 0, i32 2
  %227 = load i8, ptr %226, align 2
  %228 = zext i8 %227 to i32
  %229 = icmp ult i32 %224, %228
  br i1 %229, label %174, label %230

230:                                              ; preds = %221, %167
  %231 = phi ptr [ %168, %167 ], [ %225, %221 ]
  %232 = phi i32 [ 0, %167 ], [ %222, %221 ]
  %233 = getelementptr inbounds %struct.skb_shared_info, ptr %231, i32 0, i32 2
  %234 = trunc i32 %232 to i8
  store i8 %234, ptr %233, align 2
  br label %235

235:                                              ; preds = %230, %211
  %236 = load ptr, ptr %3, align 8
  %237 = getelementptr i8, ptr %236, i32 %1
  store ptr %237, ptr %3, align 8
  %238 = load i32, ptr %33, align 4
  %239 = sub i32 %238, %1
  store i32 %239, ptr %33, align 4
  %240 = icmp ne i32 %238, %1
  %241 = icmp eq ptr %0, null
  %242 = or i1 %241, %240
  br i1 %242, label %265, label %243

243:                                              ; preds = %235
  %244 = load ptr, ptr %6, align 4
  %245 = load i8, ptr %244, align 8
  %246 = and i8 %245, 1
  %247 = icmp eq i8 %246, 0
  br i1 %247, label %265, label %248

248:                                              ; preds = %243
  %249 = getelementptr inbounds %struct.skb_shared_info, ptr %244, i32 0, i32 11
  %250 = load ptr, ptr %249, align 4
  %251 = icmp eq ptr %250, null
  br i1 %251, label %265, label %252

252:                                              ; preds = %248
  %253 = ptrtoint ptr %250 to i32
  %254 = and i32 %253, 1
  %255 = icmp eq i32 %254, 0
  br i1 %255, label %256, label %260

256:                                              ; preds = %252
  %257 = load ptr, ptr %250, align 4
  tail call void %257(ptr noundef nonnull %0, ptr noundef nonnull %250, i1 noundef zeroext false) #21
  %258 = load ptr, ptr %6, align 4
  %259 = load i8, ptr %258, align 8
  br label %260

260:                                              ; preds = %256, %252
  %261 = phi i8 [ %259, %256 ], [ %245, %252 ]
  %262 = phi ptr [ %258, %256 ], [ %244, %252 ]
  %263 = and i8 %261, -8
  store i8 %263, ptr %262, align 8
  %264 = load ptr, ptr %3, align 8
  br label %265

265:                                              ; preds = %260, %248, %243, %235, %143, %124, %122, %112, %76, %22
  %266 = phi ptr [ null, %22 ], [ null, %76 ], [ %264, %260 ], [ %237, %248 ], [ %237, %243 ], [ %237, %235 ], [ null, %112 ], [ null, %122 ], [ null, %124 ], [ null, %143 ]
  ret ptr %266
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @skb_splice_bits(ptr nocapture noundef readonly %0, ptr noundef %1, i32 noundef %2, ptr noundef %3, i32 noundef %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca [17 x %struct.partial_page], align 4
  %10 = alloca [17 x ptr], align 4
  %11 = alloca %struct.splice_pipe_desc, align 4
  store i32 %2, ptr %7, align 4
  store i32 %4, ptr %8, align 4
  call void @llvm.lifetime.start.p0(i64 204, ptr nonnull %9) #21
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(204) %9, i8 0, i32 204, i1 false), !annotation !56
  call void @llvm.lifetime.start.p0(i64 68, ptr nonnull %10) #21
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(68) %10, i8 0, i32 68, i1 false), !annotation !56
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %11) #21
  store ptr %10, ptr %11, align 4
  %12 = getelementptr inbounds %struct.splice_pipe_desc, ptr %11, i32 0, i32 1
  store ptr %9, ptr %12, align 4
  %13 = getelementptr inbounds %struct.splice_pipe_desc, ptr %11, i32 0, i32 2
  store i32 0, ptr %13, align 4
  %14 = getelementptr inbounds %struct.splice_pipe_desc, ptr %11, i32 0, i32 3
  store i32 17, ptr %14, align 4
  %15 = getelementptr inbounds %struct.splice_pipe_desc, ptr %11, i32 0, i32 4
  store ptr @nosteal_pipe_buf_ops, ptr %15, align 4
  %16 = getelementptr inbounds %struct.splice_pipe_desc, ptr %11, i32 0, i32 5
  store ptr @sock_spd_release, ptr %16, align 4
  %17 = call fastcc zeroext i1 @__skb_splice_bits(ptr noundef %0, ptr noundef nonnull %7, ptr noundef nonnull %8, ptr noundef nonnull %11, ptr noundef %1)
  %18 = load i32, ptr %13, align 4
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %22, label %20

20:                                               ; preds = %6
  %21 = call i32 @splice_to_pipe(ptr noundef %3, ptr noundef nonnull %11) #21
  br label %22

22:                                               ; preds = %20, %6
  %23 = phi i32 [ %21, %20 ], [ 0, %6 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %11) #21
  call void @llvm.lifetime.end.p0(i64 68, ptr nonnull %10) #21
  call void @llvm.lifetime.end.p0(i64 204, ptr nonnull %9) #21
  ret i32 %23
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @sock_spd_release(ptr nocapture noundef readonly %0, i32 noundef %1) #0 {
  %3 = load ptr, ptr %0, align 4
  %4 = getelementptr ptr, ptr %3, i32 %1
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.page, ptr %5, i32 0, i32 1
  %7 = load volatile i32, ptr %6, align 4
  %8 = and i32 %7, 1
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %12, label %10, !prof !13

10:                                               ; preds = %2
  %11 = add i32 %7, -1
  br label %14

12:                                               ; preds = %2
  %13 = ptrtoint ptr %5 to i32
  br label %14

14:                                               ; preds = %12, %10
  %15 = phi i32 [ %11, %10 ], [ %13, %12 ]
  %16 = inttoptr i32 %15 to ptr
  %17 = getelementptr inbounds %struct.page, ptr %16, i32 0, i32 3
  tail call void asm sideeffect "dmb ish", "~{memory}"() #21, !srcloc !29
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %17) #21, !srcloc !16
  %18 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %17, ptr %17, i32 1, ptr elementtype(i32) %17) #21, !srcloc !30
  %19 = extractvalue { i32, i32 } %18, 0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #21, !srcloc !31
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %14
  tail call void @__put_page(ptr noundef %16) #21
  br label %22

22:                                               ; preds = %21, %14
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc zeroext i1 @__skb_splice_bits(ptr nocapture noundef readonly %0, ptr nocapture noundef %1, ptr nocapture noundef %2, ptr nocapture noundef %3, ptr noundef %4) unnamed_addr #0 {
  %6 = load ptr, ptr @mem_map, align 4
  %7 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 17
  %8 = load ptr, ptr %7, align 4
  %9 = ptrtoint ptr %8 to i32
  %10 = add i32 %9, 1073741824
  %11 = lshr i32 %10, 12
  %12 = getelementptr %struct.page, ptr %6, i32 %11
  %13 = and i32 %9, 4095
  %14 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 5
  %15 = load i32, ptr %14, align 8
  %16 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 6
  %17 = load i32, ptr %16, align 4
  %18 = sub i32 %15, %17
  %19 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 11
  %20 = load i8, ptr %19, align 2
  %21 = and i8 %20, 32
  %22 = icmp eq i8 %21, 0
  br i1 %22, label %33, label %23

23:                                               ; preds = %5
  %24 = and i8 %20, 1
  %25 = icmp eq i8 %24, 0
  br i1 %25, label %33, label %26

26:                                               ; preds = %23
  %27 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 15
  %28 = load ptr, ptr %27, align 4
  %29 = getelementptr inbounds %struct.skb_shared_info, ptr %28, i32 0, i32 10
  %30 = load volatile i32, ptr %29, align 4
  %31 = and i32 %30, 65535
  %32 = icmp ne i32 %31, 1
  br label %33

33:                                               ; preds = %26, %23, %5
  %34 = phi i1 [ true, %5 ], [ false, %23 ], [ %32, %26 ]
  %35 = tail call fastcc zeroext i1 @__splice_segment(ptr noundef %12, i32 noundef %13, i32 noundef %18, ptr noundef %1, ptr noundef %2, ptr noundef %3, i1 noundef zeroext %34, ptr noundef %4)
  br i1 %35, label %77, label %36

36:                                               ; preds = %33
  %37 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 15
  %38 = load ptr, ptr %37, align 4
  %39 = getelementptr inbounds %struct.skb_shared_info, ptr %38, i32 0, i32 2
  %40 = load i8, ptr %39, align 2
  %41 = icmp eq i8 %40, 0
  br i1 %41, label %59, label %49

42:                                               ; preds = %49
  %43 = add nuw nsw i32 %51, 1
  %44 = load ptr, ptr %37, align 4
  %45 = getelementptr inbounds %struct.skb_shared_info, ptr %44, i32 0, i32 2
  %46 = load i8, ptr %45, align 2
  %47 = zext i8 %46 to i32
  %48 = icmp ult i32 %43, %47
  br i1 %48, label %49, label %59

49:                                               ; preds = %42, %36
  %50 = phi ptr [ %44, %42 ], [ %38, %36 ]
  %51 = phi i32 [ %43, %42 ], [ 0, %36 ]
  %52 = getelementptr %struct.skb_shared_info, ptr %50, i32 0, i32 12, i32 %51
  %53 = load ptr, ptr %52, align 4
  %54 = getelementptr %struct.skb_shared_info, ptr %50, i32 0, i32 12, i32 %51, i32 2
  %55 = load i32, ptr %54, align 4
  %56 = getelementptr %struct.skb_shared_info, ptr %50, i32 0, i32 12, i32 %51, i32 1
  %57 = load i32, ptr %56, align 4
  %58 = tail call fastcc zeroext i1 @__splice_segment(ptr noundef %53, i32 noundef %55, i32 noundef %57, ptr noundef %1, ptr noundef %2, ptr noundef %3, i1 noundef zeroext false, ptr noundef %4)
  br i1 %58, label %77, label %42

59:                                               ; preds = %42, %36
  %60 = phi ptr [ %38, %36 ], [ %44, %42 ]
  %61 = getelementptr inbounds %struct.skb_shared_info, ptr %60, i32 0, i32 6
  %62 = load ptr, ptr %61, align 8
  %63 = icmp eq ptr %62, null
  br i1 %63, label %77, label %64

64:                                               ; preds = %74, %59
  %65 = phi ptr [ %75, %74 ], [ %62, %59 ]
  %66 = load i32, ptr %1, align 4
  %67 = getelementptr inbounds %struct.sk_buff, ptr %65, i32 0, i32 5
  %68 = load i32, ptr %67, align 8
  %69 = icmp ult i32 %66, %68
  br i1 %69, label %72, label %70

70:                                               ; preds = %64
  %71 = sub i32 %66, %68
  store i32 %71, ptr %1, align 4
  br label %74

72:                                               ; preds = %64
  %73 = tail call fastcc zeroext i1 @__skb_splice_bits(ptr noundef nonnull %65, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4)
  br i1 %73, label %77, label %74

74:                                               ; preds = %72, %70
  %75 = load ptr, ptr %65, align 8
  %76 = icmp eq ptr %75, null
  br i1 %76, label %77, label %64

77:                                               ; preds = %74, %72, %59, %49, %33
  %78 = phi i1 [ true, %33 ], [ false, %59 ], [ true, %72 ], [ false, %74 ], [ true, %49 ]
  ret i1 %78
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @splice_to_pipe(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @skb_send_sock_locked(ptr noundef %0, ptr noundef readonly %1, i32 noundef %2, i32 noundef %3) #0 {
  %5 = alloca %struct.kvec, align 8
  %6 = alloca %struct.msghdr, align 8
  %7 = getelementptr inbounds %struct.kvec, ptr %5, i32 0, i32 1
  %8 = getelementptr inbounds %struct.msghdr, ptr %6, i32 0, i32 6
  br label %9

9:                                                ; preds = %123, %4
  %10 = phi i32 [ %3, %4 ], [ %114, %123 ]
  %11 = phi i32 [ %2, %4 ], [ %113, %123 ]
  %12 = phi ptr [ %1, %4 ], [ %124, %123 ]
  %13 = getelementptr inbounds %struct.sk_buff, ptr %12, i32 0, i32 5
  %14 = getelementptr inbounds %struct.sk_buff, ptr %12, i32 0, i32 6
  %15 = load i32, ptr %13, align 8
  %16 = load i32, ptr %14, align 4
  %17 = sub i32 %15, %16
  %18 = icmp ult i32 %11, %17
  %19 = icmp ne i32 %10, 0
  %20 = select i1 %18, i1 %19, i1 false
  br i1 %20, label %21, label %42

21:                                               ; preds = %9
  %22 = getelementptr inbounds %struct.sk_buff, ptr %12, i32 0, i32 17
  br label %32

23:                                               ; preds = %32
  %24 = sub i32 %35, %40
  %25 = add i32 %40, %34
  %26 = load i32, ptr %13, align 8
  %27 = load i32, ptr %14, align 4
  %28 = sub i32 %26, %27
  %29 = icmp ult i32 %25, %28
  %30 = icmp ne i32 %24, 0
  %31 = select i1 %29, i1 %30, i1 false
  br i1 %31, label %32, label %42

32:                                               ; preds = %23, %21
  %33 = phi i32 [ %17, %21 ], [ %28, %23 ]
  %34 = phi i32 [ %11, %21 ], [ %25, %23 ]
  %35 = phi i32 [ %10, %21 ], [ %24, %23 ]
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #21
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %6) #21
  %36 = sub i32 %33, %34
  %37 = call i32 @llvm.smin.i32(i32 %35, i32 %36) #21
  %38 = load ptr, ptr %22, align 4
  %39 = getelementptr i8, ptr %38, i32 %34
  store ptr %39, ptr %5, align 8
  store i32 %37, ptr %7, align 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(56) %6, i8 0, i32 56, i1 false) #21
  store i32 64, ptr %8, align 4
  %40 = call i32 @kernel_sendmsg_locked(ptr noundef %0, ptr noundef nonnull %6, ptr noundef nonnull %5, i32 noundef 1, i32 noundef %37) #21, !callees !57
  %41 = icmp slt i32 %40, 1
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %6) #21
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #21
  br i1 %41, label %128, label %23

42:                                               ; preds = %23, %9
  %43 = phi i32 [ %10, %9 ], [ %24, %23 ]
  %44 = phi i32 [ %11, %9 ], [ %25, %23 ]
  %45 = phi i32 [ %17, %9 ], [ %28, %23 ]
  %46 = phi i1 [ %19, %9 ], [ %30, %23 ]
  br i1 %46, label %47, label %125

47:                                               ; preds = %42
  %48 = sub i32 %44, %45
  %49 = getelementptr inbounds %struct.sk_buff, ptr %12, i32 0, i32 15
  %50 = load ptr, ptr %49, align 4
  %51 = getelementptr inbounds %struct.skb_shared_info, ptr %50, i32 0, i32 2
  %52 = load i8, ptr %51, align 2
  %53 = zext i8 %52 to i32
  %54 = icmp eq i8 %52, 0
  br i1 %54, label %65, label %55

55:                                               ; preds = %61, %47
  %56 = phi i32 [ %63, %61 ], [ 0, %47 ]
  %57 = phi i32 [ %62, %61 ], [ %48, %47 ]
  %58 = getelementptr %struct.skb_shared_info, ptr %50, i32 0, i32 12, i32 %56, i32 1
  %59 = load i32, ptr %58, align 4
  %60 = icmp ult i32 %57, %59
  br i1 %60, label %65, label %61

61:                                               ; preds = %55
  %62 = sub i32 %57, %59
  %63 = add nuw nsw i32 %56, 1
  %64 = icmp eq i32 %63, %53
  br i1 %64, label %65, label %55

65:                                               ; preds = %61, %55, %47
  %66 = phi i32 [ 0, %47 ], [ %53, %61 ], [ %56, %55 ]
  %67 = phi i32 [ %48, %47 ], [ %62, %61 ], [ %57, %55 ]
  %68 = icmp eq i32 %43, 0
  br i1 %68, label %125, label %69

69:                                               ; preds = %65
  %70 = and i32 %66, 65535
  %71 = icmp ult i32 %70, %53
  br i1 %71, label %72, label %111

72:                                               ; preds = %103, %69
  %73 = phi ptr [ %104, %103 ], [ %50, %69 ]
  %74 = phi i32 [ %105, %103 ], [ %43, %69 ]
  %75 = phi i32 [ 0, %103 ], [ %67, %69 ]
  %76 = phi i32 [ %106, %103 ], [ %70, %69 ]
  %77 = getelementptr %struct.skb_shared_info, ptr %73, i32 0, i32 12, i32 %76
  %78 = getelementptr %struct.skb_shared_info, ptr %73, i32 0, i32 12, i32 %76, i32 1
  %79 = load i32, ptr %78, align 4
  %80 = sub i32 %79, %75
  %81 = call i32 @llvm.umin.i32(i32 %74, i32 %80) #21
  %82 = icmp eq i32 %81, 0
  br i1 %82, label %103, label %83

83:                                               ; preds = %72
  %84 = getelementptr %struct.skb_shared_info, ptr %73, i32 0, i32 12, i32 %76, i32 2
  br label %85

85:                                               ; preds = %94, %83
  %86 = phi i32 [ %75, %83 ], [ %96, %94 ]
  %87 = phi i32 [ %74, %83 ], [ %95, %94 ]
  %88 = phi i32 [ %81, %83 ], [ %97, %94 ]
  %89 = load ptr, ptr %77, align 4
  %90 = load i32, ptr %84, align 4
  %91 = add i32 %90, %86
  %92 = call i32 @kernel_sendpage_locked(ptr noundef %0, ptr noundef %89, i32 noundef %91, i32 noundef %88, i32 noundef 64) #21, !callees !58
  %93 = icmp slt i32 %92, 1
  br i1 %93, label %128, label %94

94:                                               ; preds = %85
  %95 = sub i32 %87, %92
  %96 = add i32 %92, %86
  %97 = sub i32 %88, %92
  %98 = icmp eq i32 %97, 0
  br i1 %98, label %99, label %85

99:                                               ; preds = %94
  %100 = icmp eq i32 %95, 0
  br i1 %100, label %125, label %101

101:                                              ; preds = %99
  %102 = load ptr, ptr %49, align 4
  br label %103

103:                                              ; preds = %101, %72
  %104 = phi ptr [ %102, %101 ], [ %73, %72 ]
  %105 = phi i32 [ %95, %101 ], [ %74, %72 ]
  %106 = add nuw nsw i32 %76, 1
  %107 = getelementptr inbounds %struct.skb_shared_info, ptr %104, i32 0, i32 2
  %108 = load i8, ptr %107, align 2
  %109 = zext i8 %108 to i32
  %110 = icmp ult i32 %106, %109
  br i1 %110, label %72, label %111

111:                                              ; preds = %103, %69
  %112 = phi ptr [ %50, %69 ], [ %104, %103 ]
  %113 = phi i32 [ %67, %69 ], [ 0, %103 ]
  %114 = phi i32 [ %43, %69 ], [ %105, %103 ]
  %115 = icmp eq ptr %12, %1
  br i1 %115, label %116, label %120

116:                                              ; preds = %111
  %117 = getelementptr inbounds %struct.skb_shared_info, ptr %112, i32 0, i32 6
  %118 = load ptr, ptr %117, align 8
  %119 = icmp eq ptr %118, null
  br i1 %119, label %125, label %123

120:                                              ; preds = %111
  %121 = load ptr, ptr %12, align 8
  %122 = icmp eq ptr %121, null
  br i1 %122, label %125, label %123

123:                                              ; preds = %120, %116
  %124 = phi ptr [ %121, %120 ], [ %118, %116 ]
  br label %9

125:                                              ; preds = %120, %116, %99, %65, %42
  %126 = phi i32 [ 0, %99 ], [ %114, %116 ], [ %114, %120 ], [ 0, %42 ], [ 0, %65 ]
  %127 = sub i32 %3, %126
  br label %134

128:                                              ; preds = %85, %32
  %129 = phi i32 [ %92, %85 ], [ %40, %32 ]
  %130 = phi i32 [ %87, %85 ], [ %35, %32 ]
  %131 = icmp eq i32 %130, %3
  %132 = sub i32 %3, %130
  %133 = select i1 %131, i32 %129, i32 %132
  br label %134

134:                                              ; preds = %128, %125
  %135 = phi i32 [ %133, %128 ], [ %127, %125 ]
  ret i32 %135
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kernel_sendmsg_locked(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kernel_sendpage_locked(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @skb_send_sock(ptr nocapture noundef readonly %0, ptr noundef readonly %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #0 {
  %5 = alloca %struct.kvec, align 8
  %6 = alloca %struct.msghdr, align 8
  %7 = getelementptr inbounds %struct.kvec, ptr %5, i32 0, i32 1
  %8 = getelementptr inbounds %struct.msghdr, ptr %6, i32 0, i32 6
  %9 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 71
  br label %10

10:                                               ; preds = %131, %4
  %11 = phi i32 [ %3, %4 ], [ %122, %131 ]
  %12 = phi i32 [ %2, %4 ], [ %121, %131 ]
  %13 = phi ptr [ %1, %4 ], [ %132, %131 ]
  %14 = getelementptr inbounds %struct.sk_buff, ptr %13, i32 0, i32 5
  %15 = getelementptr inbounds %struct.sk_buff, ptr %13, i32 0, i32 6
  %16 = load i32, ptr %14, align 8
  %17 = load i32, ptr %15, align 4
  %18 = sub i32 %16, %17
  %19 = icmp ult i32 %12, %18
  %20 = icmp ne i32 %11, 0
  %21 = select i1 %19, i1 %20, i1 false
  br i1 %21, label %22, label %47

22:                                               ; preds = %10
  %23 = getelementptr inbounds %struct.sk_buff, ptr %13, i32 0, i32 17
  br label %33

24:                                               ; preds = %44
  %25 = sub i32 %36, %45
  %26 = add i32 %45, %35
  %27 = load i32, ptr %14, align 8
  %28 = load i32, ptr %15, align 4
  %29 = sub i32 %27, %28
  %30 = icmp ult i32 %26, %29
  %31 = icmp ne i32 %25, 0
  %32 = select i1 %30, i1 %31, i1 false
  br i1 %32, label %33, label %47

33:                                               ; preds = %24, %22
  %34 = phi i32 [ %18, %22 ], [ %29, %24 ]
  %35 = phi i32 [ %12, %22 ], [ %26, %24 ]
  %36 = phi i32 [ %11, %22 ], [ %25, %24 ]
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #21
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %6) #21
  %37 = sub i32 %34, %35
  %38 = call i32 @llvm.smin.i32(i32 %36, i32 %37) #21
  %39 = load ptr, ptr %23, align 4
  %40 = getelementptr i8, ptr %39, i32 %35
  store ptr %40, ptr %5, align 8
  store i32 %38, ptr %7, align 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(56) %6, i8 0, i32 56, i1 false) #21
  store i32 64, ptr %8, align 4
  %41 = load ptr, ptr %9, align 8
  %42 = icmp eq ptr %41, null
  br i1 %42, label %43, label %44

43:                                               ; preds = %33
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %6) #21
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #21
  br label %136

44:                                               ; preds = %33
  %45 = call i32 @kernel_sendmsg(ptr noundef nonnull %41, ptr noundef nonnull %6, ptr noundef nonnull %5, i32 noundef 1, i32 noundef %38) #21
  %46 = icmp slt i32 %45, 1
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %6) #21
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #21
  br i1 %46, label %136, label %24

47:                                               ; preds = %24, %10
  %48 = phi i32 [ %11, %10 ], [ %25, %24 ]
  %49 = phi i32 [ %12, %10 ], [ %26, %24 ]
  %50 = phi i32 [ %18, %10 ], [ %29, %24 ]
  %51 = phi i1 [ %20, %10 ], [ %31, %24 ]
  br i1 %51, label %52, label %133

52:                                               ; preds = %47
  %53 = sub i32 %49, %50
  %54 = getelementptr inbounds %struct.sk_buff, ptr %13, i32 0, i32 15
  %55 = load ptr, ptr %54, align 4
  %56 = getelementptr inbounds %struct.skb_shared_info, ptr %55, i32 0, i32 2
  %57 = load i8, ptr %56, align 2
  %58 = zext i8 %57 to i32
  %59 = icmp eq i8 %57, 0
  br i1 %59, label %70, label %60

60:                                               ; preds = %66, %52
  %61 = phi i32 [ %68, %66 ], [ 0, %52 ]
  %62 = phi i32 [ %67, %66 ], [ %53, %52 ]
  %63 = getelementptr %struct.skb_shared_info, ptr %55, i32 0, i32 12, i32 %61, i32 1
  %64 = load i32, ptr %63, align 4
  %65 = icmp ult i32 %62, %64
  br i1 %65, label %70, label %66

66:                                               ; preds = %60
  %67 = sub i32 %62, %64
  %68 = add nuw nsw i32 %61, 1
  %69 = icmp eq i32 %68, %58
  br i1 %69, label %70, label %60

70:                                               ; preds = %66, %60, %52
  %71 = phi i32 [ 0, %52 ], [ %58, %66 ], [ %61, %60 ]
  %72 = phi i32 [ %53, %52 ], [ %67, %66 ], [ %62, %60 ]
  %73 = icmp eq i32 %48, 0
  br i1 %73, label %133, label %74

74:                                               ; preds = %70
  %75 = and i32 %71, 65535
  %76 = icmp ult i32 %75, %58
  br i1 %76, label %77, label %119

77:                                               ; preds = %111, %74
  %78 = phi ptr [ %112, %111 ], [ %55, %74 ]
  %79 = phi i32 [ %113, %111 ], [ %48, %74 ]
  %80 = phi i32 [ 0, %111 ], [ %72, %74 ]
  %81 = phi i32 [ %114, %111 ], [ %75, %74 ]
  %82 = getelementptr %struct.skb_shared_info, ptr %78, i32 0, i32 12, i32 %81
  %83 = getelementptr %struct.skb_shared_info, ptr %78, i32 0, i32 12, i32 %81, i32 1
  %84 = load i32, ptr %83, align 4
  %85 = sub i32 %84, %80
  %86 = call i32 @llvm.umin.i32(i32 %79, i32 %85) #21
  %87 = icmp eq i32 %86, 0
  br i1 %87, label %111, label %88

88:                                               ; preds = %77
  %89 = getelementptr %struct.skb_shared_info, ptr %78, i32 0, i32 12, i32 %81, i32 2
  br label %90

90:                                               ; preds = %102, %88
  %91 = phi i32 [ %80, %88 ], [ %104, %102 ]
  %92 = phi i32 [ %79, %88 ], [ %103, %102 ]
  %93 = phi i32 [ %86, %88 ], [ %105, %102 ]
  %94 = load ptr, ptr %9, align 8
  %95 = icmp eq ptr %94, null
  br i1 %95, label %136, label %96

96:                                               ; preds = %90
  %97 = load i32, ptr %89, align 4
  %98 = add i32 %97, %91
  %99 = load ptr, ptr %82, align 4
  %100 = call i32 @kernel_sendpage(ptr noundef nonnull %94, ptr noundef %99, i32 noundef %98, i32 noundef %93, i32 noundef 64) #21
  %101 = icmp slt i32 %100, 1
  br i1 %101, label %136, label %102

102:                                              ; preds = %96
  %103 = sub i32 %92, %100
  %104 = add i32 %100, %91
  %105 = sub i32 %93, %100
  %106 = icmp eq i32 %105, 0
  br i1 %106, label %107, label %90

107:                                              ; preds = %102
  %108 = icmp eq i32 %103, 0
  br i1 %108, label %133, label %109

109:                                              ; preds = %107
  %110 = load ptr, ptr %54, align 4
  br label %111

111:                                              ; preds = %109, %77
  %112 = phi ptr [ %110, %109 ], [ %78, %77 ]
  %113 = phi i32 [ %103, %109 ], [ %79, %77 ]
  %114 = add nuw nsw i32 %81, 1
  %115 = getelementptr inbounds %struct.skb_shared_info, ptr %112, i32 0, i32 2
  %116 = load i8, ptr %115, align 2
  %117 = zext i8 %116 to i32
  %118 = icmp ult i32 %114, %117
  br i1 %118, label %77, label %119

119:                                              ; preds = %111, %74
  %120 = phi ptr [ %55, %74 ], [ %112, %111 ]
  %121 = phi i32 [ %72, %74 ], [ 0, %111 ]
  %122 = phi i32 [ %48, %74 ], [ %113, %111 ]
  %123 = icmp eq ptr %13, %1
  br i1 %123, label %124, label %128

124:                                              ; preds = %119
  %125 = getelementptr inbounds %struct.skb_shared_info, ptr %120, i32 0, i32 6
  %126 = load ptr, ptr %125, align 8
  %127 = icmp eq ptr %126, null
  br i1 %127, label %133, label %131

128:                                              ; preds = %119
  %129 = load ptr, ptr %13, align 8
  %130 = icmp eq ptr %129, null
  br i1 %130, label %133, label %131

131:                                              ; preds = %128, %124
  %132 = phi ptr [ %129, %128 ], [ %126, %124 ]
  br label %10

133:                                              ; preds = %128, %124, %107, %70, %47
  %134 = phi i32 [ 0, %107 ], [ %122, %124 ], [ %122, %128 ], [ 0, %47 ], [ 0, %70 ]
  %135 = sub i32 %3, %134
  br label %142

136:                                              ; preds = %96, %90, %44, %43
  %137 = phi i32 [ -22, %43 ], [ -22, %90 ], [ %100, %96 ], [ %45, %44 ]
  %138 = phi i32 [ %36, %43 ], [ %92, %96 ], [ %92, %90 ], [ %36, %44 ]
  %139 = icmp eq i32 %138, %3
  %140 = sub i32 %3, %138
  %141 = select i1 %139, i32 %137, i32 %140
  br label %142

142:                                              ; preds = %136, %133
  %143 = phi i32 [ %141, %136 ], [ %135, %133 ]
  ret i32 %143
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @skb_store_bits(ptr nocapture noundef readonly %0, i32 noundef %1, ptr nocapture noundef readonly %2, i32 noundef %3) #0 {
  %5 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 5
  %6 = load i32, ptr %5, align 8
  %7 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 6
  %8 = load i32, ptr %7, align 4
  %9 = sub i32 %6, %8
  %10 = sub i32 %6, %3
  %11 = icmp slt i32 %10, %1
  br i1 %11, label %170, label %12

12:                                               ; preds = %4
  %13 = sub i32 %9, %1
  %14 = icmp sgt i32 %13, 0
  br i1 %14, label %15, label %25

15:                                               ; preds = %12
  %16 = tail call i32 @llvm.smin.i32(i32 %13, i32 %3)
  %17 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 17
  %18 = load ptr, ptr %17, align 4
  %19 = getelementptr i8, ptr %18, i32 %1
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 1 %19, ptr align 1 %2, i32 %16, i1 false) #21
  %20 = sub i32 %3, %16
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %171, label %22

22:                                               ; preds = %15
  %23 = add i32 %16, %1
  %24 = getelementptr i8, ptr %2, i32 %16
  br label %25

25:                                               ; preds = %22, %12
  %26 = phi i32 [ %20, %22 ], [ %3, %12 ]
  %27 = phi ptr [ %24, %22 ], [ %2, %12 ]
  %28 = phi i32 [ %23, %22 ], [ %1, %12 ]
  %29 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 15
  %30 = load ptr, ptr %29, align 4
  %31 = getelementptr inbounds %struct.skb_shared_info, ptr %30, i32 0, i32 2
  %32 = load i8, ptr %31, align 2
  %33 = icmp eq i8 %32, 0
  br i1 %33, label %126, label %34

34:                                               ; preds = %116, %25
  %35 = phi ptr [ %121, %116 ], [ %30, %25 ]
  %36 = phi i32 [ %119, %116 ], [ %28, %25 ]
  %37 = phi ptr [ %118, %116 ], [ %27, %25 ]
  %38 = phi i32 [ %117, %116 ], [ %26, %25 ]
  %39 = phi i32 [ %48, %116 ], [ %9, %25 ]
  %40 = phi i32 [ %120, %116 ], [ 0, %25 ]
  %41 = getelementptr %struct.skb_shared_info, ptr %35, i32 0, i32 12, i32 %40
  %42 = add i32 %36, %38
  %43 = icmp sgt i32 %39, %42
  br i1 %43, label %44, label %45, !prof !12

44:                                               ; preds = %34
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 2766, i32 noundef 9, ptr noundef null) #21
  br label %45

45:                                               ; preds = %44, %34
  %46 = getelementptr %struct.skb_shared_info, ptr %35, i32 0, i32 12, i32 %40, i32 1
  %47 = load i32, ptr %46, align 4
  %48 = add i32 %47, %39
  %49 = sub i32 %48, %36
  %50 = icmp sgt i32 %49, 0
  br i1 %50, label %51, label %116

51:                                               ; preds = %45
  %52 = tail call i32 @llvm.smin.i32(i32 %49, i32 %38)
  %53 = load ptr, ptr %41, align 4
  %54 = getelementptr %struct.skb_shared_info, ptr %35, i32 0, i32 12, i32 %40, i32 2
  %55 = load i32, ptr %54, align 4
  %56 = sub i32 %36, %39
  %57 = add i32 %56, %55
  %58 = lshr i32 %57, 12
  %59 = getelementptr %struct.page, ptr %53, i32 %58
  %60 = and i32 %57, 4095
  %61 = load i32, ptr %59, align 4
  %62 = lshr i32 %61, 30
  %63 = icmp eq i32 %62, 2
  br i1 %63, label %64, label %67

64:                                               ; preds = %51
  %65 = sub nuw nsw i32 4096, %60
  %66 = tail call i32 @llvm.umin.i32(i32 %52, i32 %65)
  br label %74

67:                                               ; preds = %51
  %68 = icmp eq i32 %62, 3
  %69 = load i32, ptr @movable_zone, align 4
  %70 = icmp eq i32 %69, 2
  %71 = select i1 %68, i1 %70, i1 false
  %72 = sub nuw nsw i32 4096, %60
  %73 = tail call i32 @llvm.umin.i32(i32 %52, i32 %72)
  br i1 %71, label %74, label %76

74:                                               ; preds = %67, %64
  %75 = phi i32 [ %66, %64 ], [ %73, %67 ]
  br label %76

76:                                               ; preds = %74, %67
  %77 = phi i32 [ %75, %74 ], [ %52, %67 ]
  %78 = icmp eq i32 %52, 0
  br i1 %78, label %111, label %79

79:                                               ; preds = %76
  %80 = load i32, ptr @pgprot_kernel, align 4
  %81 = or i32 %80, 512
  tail call void asm sideeffect "", "~{memory}"() #21, !srcloc !23
  %82 = tail call ptr @llvm.thread.pointer() #21
  %83 = getelementptr inbounds %struct.task_struct, ptr %82, i32 0, i32 149
  %84 = load i32, ptr %83, align 8
  %85 = add i32 %84, 1
  store i32 %85, ptr %83, align 8
  tail call void asm sideeffect "", "~{memory}"() #21, !srcloc !24
  %86 = tail call ptr @__kmap_local_page_prot(ptr noundef %59, i32 noundef %81) #21
  %87 = getelementptr i8, ptr %86, i32 %60
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 1 %87, ptr align 1 %37, i32 %77, i1 false)
  tail call void @kunmap_local_indexed(ptr noundef %86) #21
  tail call void asm sideeffect "", "~{memory}"() #21, !srcloc !25
  %88 = load i32, ptr %83, align 8
  %89 = add i32 %88, -1
  store i32 %89, ptr %83, align 8
  tail call void asm sideeffect "", "~{memory}"() #21, !srcloc !26
  %90 = icmp ugt i32 %52, %77
  br i1 %90, label %91, label %111

91:                                               ; preds = %79
  %92 = sub i32 %52, %77
  %93 = tail call i32 @llvm.umin.i32(i32 %92, i32 4096)
  br label %94

94:                                               ; preds = %94, %91
  %95 = phi ptr [ %98, %94 ], [ %59, %91 ]
  %96 = phi i32 [ %107, %94 ], [ %77, %91 ]
  %97 = phi i32 [ %109, %94 ], [ %93, %91 ]
  %98 = getelementptr %struct.page, ptr %95, i32 1
  %99 = load i32, ptr @pgprot_kernel, align 4
  %100 = or i32 %99, 512
  tail call void asm sideeffect "", "~{memory}"() #21, !srcloc !23
  %101 = load i32, ptr %83, align 8
  %102 = add i32 %101, 1
  store i32 %102, ptr %83, align 8
  tail call void asm sideeffect "", "~{memory}"() #21, !srcloc !24
  %103 = tail call ptr @__kmap_local_page_prot(ptr noundef %98, i32 noundef %100) #21
  %104 = getelementptr i8, ptr %37, i32 %96
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 1 %103, ptr align 1 %104, i32 %97, i1 false)
  tail call void @kunmap_local_indexed(ptr noundef %103) #21
  tail call void asm sideeffect "", "~{memory}"() #21, !srcloc !25
  %105 = load i32, ptr %83, align 8
  %106 = add i32 %105, -1
  store i32 %106, ptr %83, align 8
  tail call void asm sideeffect "", "~{memory}"() #21, !srcloc !26
  %107 = add i32 %96, %97
  %108 = sub i32 %52, %107
  %109 = tail call i32 @llvm.umin.i32(i32 %108, i32 4096)
  %110 = icmp ugt i32 %52, %107
  br i1 %110, label %94, label %111, !llvm.loop !59

111:                                              ; preds = %94, %79, %76
  %112 = sub i32 %38, %52
  %113 = icmp eq i32 %112, 0
  %114 = add i32 %52, %36
  %115 = getelementptr i8, ptr %37, i32 %52
  br i1 %113, label %171, label %116

116:                                              ; preds = %111, %45
  %117 = phi i32 [ %112, %111 ], [ %38, %45 ]
  %118 = phi ptr [ %115, %111 ], [ %37, %45 ]
  %119 = phi i32 [ %114, %111 ], [ %36, %45 ]
  %120 = add nuw nsw i32 %40, 1
  %121 = load ptr, ptr %29, align 4
  %122 = getelementptr inbounds %struct.skb_shared_info, ptr %121, i32 0, i32 2
  %123 = load i8, ptr %122, align 2
  %124 = zext i8 %123 to i32
  %125 = icmp ult i32 %120, %124
  br i1 %125, label %34, label %126

126:                                              ; preds = %116, %25
  %127 = phi i32 [ %9, %25 ], [ %48, %116 ]
  %128 = phi i32 [ %26, %25 ], [ %117, %116 ]
  %129 = phi ptr [ %27, %25 ], [ %118, %116 ]
  %130 = phi i32 [ %28, %25 ], [ %119, %116 ]
  %131 = phi ptr [ %30, %25 ], [ %121, %116 ]
  %132 = getelementptr inbounds %struct.skb_shared_info, ptr %131, i32 0, i32 6
  %133 = load ptr, ptr %132, align 8
  %134 = icmp eq ptr %133, null
  br i1 %134, label %167, label %135

135:                                              ; preds = %161, %126
  %136 = phi ptr [ %165, %161 ], [ %133, %126 ]
  %137 = phi i32 [ %164, %161 ], [ %130, %126 ]
  %138 = phi ptr [ %163, %161 ], [ %129, %126 ]
  %139 = phi i32 [ %162, %161 ], [ %128, %126 ]
  %140 = phi i32 [ %147, %161 ], [ %127, %126 ]
  %141 = add i32 %137, %139
  %142 = icmp sgt i32 %140, %141
  br i1 %142, label %143, label %144, !prof !12

143:                                              ; preds = %135
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 2796, i32 noundef 9, ptr noundef null) #21
  br label %144

144:                                              ; preds = %143, %135
  %145 = getelementptr inbounds %struct.sk_buff, ptr %136, i32 0, i32 5
  %146 = load i32, ptr %145, align 8
  %147 = add i32 %146, %140
  %148 = sub i32 %147, %137
  %149 = icmp sgt i32 %148, 0
  br i1 %149, label %150, label %161

150:                                              ; preds = %144
  %151 = tail call i32 @llvm.smin.i32(i32 %148, i32 %139)
  %152 = sub i32 %137, %140
  %153 = tail call i32 @skb_store_bits(ptr noundef nonnull %136, i32 noundef %152, ptr noundef %138, i32 noundef %151)
  %154 = icmp eq i32 %153, 0
  br i1 %154, label %155, label %170

155:                                              ; preds = %150
  %156 = sub i32 %139, %151
  %157 = icmp eq i32 %156, 0
  br i1 %157, label %171, label %158

158:                                              ; preds = %155
  %159 = add i32 %151, %137
  %160 = getelementptr i8, ptr %138, i32 %151
  br label %161

161:                                              ; preds = %158, %144
  %162 = phi i32 [ %156, %158 ], [ %139, %144 ]
  %163 = phi ptr [ %160, %158 ], [ %138, %144 ]
  %164 = phi i32 [ %159, %158 ], [ %137, %144 ]
  %165 = load ptr, ptr %136, align 8
  %166 = icmp eq ptr %165, null
  br i1 %166, label %167, label %135

167:                                              ; preds = %161, %126
  %168 = phi i32 [ %128, %126 ], [ %162, %161 ]
  %169 = icmp eq i32 %168, 0
  br i1 %169, label %171, label %170

170:                                              ; preds = %167, %150, %4
  br label %171

171:                                              ; preds = %170, %167, %155, %111, %15
  %172 = phi i32 [ -14, %170 ], [ 0, %15 ], [ 0, %167 ], [ 0, %155 ], [ 0, %111 ]
  ret i32 %172
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__skb_checksum(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, ptr nocapture noundef readonly %4) #0 {
  %6 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 5
  %7 = load i32, ptr %6, align 8
  %8 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 6
  %9 = load i32, ptr %8, align 4
  %10 = sub i32 %7, %9
  %11 = sub i32 %10, %1
  %12 = icmp sgt i32 %11, 0
  br i1 %12, label %13, label %24

13:                                               ; preds = %5
  %14 = tail call i32 @llvm.smin.i32(i32 %11, i32 %2)
  %15 = load ptr, ptr %4, align 4
  %16 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 17
  %17 = load ptr, ptr %16, align 4
  %18 = getelementptr i8, ptr %17, i32 %1
  %19 = tail call i32 %15(ptr noundef %18, i32 noundef %14, i32 noundef %3) #21
  %20 = sub i32 %2, %14
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %192, label %22

22:                                               ; preds = %13
  %23 = add i32 %14, %1
  br label %24

24:                                               ; preds = %22, %5
  %25 = phi i32 [ %14, %22 ], [ 0, %5 ]
  %26 = phi i32 [ %19, %22 ], [ %3, %5 ]
  %27 = phi i32 [ %20, %22 ], [ %2, %5 ]
  %28 = phi i32 [ %23, %22 ], [ %1, %5 ]
  %29 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 15
  %30 = load ptr, ptr %29, align 4
  %31 = getelementptr inbounds %struct.skb_shared_info, ptr %30, i32 0, i32 2
  %32 = load i8, ptr %31, align 2
  %33 = icmp eq i8 %32, 0
  br i1 %33, label %142, label %34

34:                                               ; preds = %24
  %35 = getelementptr inbounds %struct.skb_checksum_ops, ptr %4, i32 0, i32 1
  br label %36

36:                                               ; preds = %131, %34
  %37 = phi ptr [ %30, %34 ], [ %137, %131 ]
  %38 = phi i32 [ %28, %34 ], [ %135, %131 ]
  %39 = phi i32 [ %27, %34 ], [ %134, %131 ]
  %40 = phi i32 [ %26, %34 ], [ %133, %131 ]
  %41 = phi i32 [ %10, %34 ], [ %51, %131 ]
  %42 = phi i32 [ 0, %34 ], [ %136, %131 ]
  %43 = phi i32 [ %25, %34 ], [ %132, %131 ]
  %44 = getelementptr %struct.skb_shared_info, ptr %37, i32 0, i32 12, i32 %42
  %45 = add i32 %38, %39
  %46 = icmp sgt i32 %41, %45
  br i1 %46, label %47, label %48, !prof !12

47:                                               ; preds = %36
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 2845, i32 noundef 9, ptr noundef null) #21
  br label %48

48:                                               ; preds = %47, %36
  %49 = getelementptr %struct.skb_shared_info, ptr %37, i32 0, i32 12, i32 %42, i32 1
  %50 = load i32, ptr %49, align 4
  %51 = add i32 %50, %41
  %52 = sub i32 %51, %38
  %53 = icmp sgt i32 %52, 0
  br i1 %53, label %54, label %131

54:                                               ; preds = %48
  %55 = tail call i32 @llvm.smin.i32(i32 %52, i32 %39)
  %56 = load ptr, ptr %44, align 4
  %57 = getelementptr %struct.skb_shared_info, ptr %37, i32 0, i32 12, i32 %42, i32 2
  %58 = load i32, ptr %57, align 4
  %59 = sub i32 %38, %41
  %60 = add i32 %59, %58
  %61 = lshr i32 %60, 12
  %62 = getelementptr %struct.page, ptr %56, i32 %61
  %63 = and i32 %60, 4095
  %64 = load i32, ptr %62, align 4
  %65 = lshr i32 %64, 30
  %66 = icmp eq i32 %65, 2
  br i1 %66, label %67, label %70

67:                                               ; preds = %54
  %68 = sub nuw nsw i32 4096, %63
  %69 = tail call i32 @llvm.umin.i32(i32 %55, i32 %68)
  br label %77

70:                                               ; preds = %54
  %71 = icmp eq i32 %65, 3
  %72 = load i32, ptr @movable_zone, align 4
  %73 = icmp eq i32 %72, 2
  %74 = select i1 %71, i1 %73, i1 false
  %75 = sub nuw nsw i32 4096, %63
  %76 = tail call i32 @llvm.umin.i32(i32 %55, i32 %75)
  br i1 %74, label %77, label %79

77:                                               ; preds = %70, %67
  %78 = phi i32 [ %69, %67 ], [ %76, %70 ]
  br label %79

79:                                               ; preds = %77, %70
  %80 = phi i32 [ %78, %77 ], [ %55, %70 ]
  %81 = icmp eq i32 %55, 0
  br i1 %81, label %125, label %82

82:                                               ; preds = %79
  %83 = load i32, ptr @pgprot_kernel, align 4
  %84 = or i32 %83, 512
  tail call void asm sideeffect "", "~{memory}"() #21, !srcloc !23
  %85 = tail call ptr @llvm.thread.pointer() #21
  %86 = getelementptr inbounds %struct.task_struct, ptr %85, i32 0, i32 149
  %87 = load i32, ptr %86, align 8
  %88 = add i32 %87, 1
  store i32 %88, ptr %86, align 8
  tail call void asm sideeffect "", "~{memory}"() #21, !srcloc !24
  %89 = tail call ptr @__kmap_local_page_prot(ptr noundef %62, i32 noundef %84) #21
  %90 = load ptr, ptr %4, align 4
  %91 = getelementptr i8, ptr %89, i32 %63
  %92 = tail call i32 %90(ptr noundef %91, i32 noundef %80, i32 noundef 0) #21
  tail call void @kunmap_local_indexed(ptr noundef %89) #21
  tail call void asm sideeffect "", "~{memory}"() #21, !srcloc !25
  %93 = load i32, ptr %86, align 8
  %94 = add i32 %93, -1
  store i32 %94, ptr %86, align 8
  tail call void asm sideeffect "", "~{memory}"() #21, !srcloc !26
  %95 = load ptr, ptr %35, align 4
  %96 = tail call i32 %95(i32 noundef %40, i32 noundef %92, i32 noundef %43, i32 noundef %80) #21
  %97 = add i32 %80, %43
  %98 = icmp ugt i32 %55, %80
  br i1 %98, label %99, label %125

99:                                               ; preds = %82
  %100 = sub i32 %55, %80
  %101 = tail call i32 @llvm.umin.i32(i32 %100, i32 4096)
  br label %102

102:                                              ; preds = %102, %99
  %103 = phi i32 [ %119, %102 ], [ %96, %99 ]
  %104 = phi ptr [ %108, %102 ], [ %62, %99 ]
  %105 = phi i32 [ %121, %102 ], [ %80, %99 ]
  %106 = phi i32 [ %123, %102 ], [ %101, %99 ]
  %107 = phi i32 [ %120, %102 ], [ %97, %99 ]
  %108 = getelementptr %struct.page, ptr %104, i32 1
  %109 = load i32, ptr @pgprot_kernel, align 4
  %110 = or i32 %109, 512
  tail call void asm sideeffect "", "~{memory}"() #21, !srcloc !23
  %111 = load i32, ptr %86, align 8
  %112 = add i32 %111, 1
  store i32 %112, ptr %86, align 8
  tail call void asm sideeffect "", "~{memory}"() #21, !srcloc !24
  %113 = tail call ptr @__kmap_local_page_prot(ptr noundef %108, i32 noundef %110) #21
  %114 = load ptr, ptr %4, align 4
  %115 = tail call i32 %114(ptr noundef %113, i32 noundef %106, i32 noundef 0) #21
  tail call void @kunmap_local_indexed(ptr noundef %113) #21
  tail call void asm sideeffect "", "~{memory}"() #21, !srcloc !25
  %116 = load i32, ptr %86, align 8
  %117 = add i32 %116, -1
  store i32 %117, ptr %86, align 8
  tail call void asm sideeffect "", "~{memory}"() #21, !srcloc !26
  %118 = load ptr, ptr %35, align 4
  %119 = tail call i32 %118(i32 noundef %103, i32 noundef %115, i32 noundef %107, i32 noundef %106) #21
  %120 = add i32 %106, %107
  %121 = add i32 %105, %106
  %122 = sub i32 %55, %121
  %123 = tail call i32 @llvm.umin.i32(i32 %122, i32 4096)
  %124 = icmp ugt i32 %55, %121
  br i1 %124, label %102, label %125, !llvm.loop !60

125:                                              ; preds = %102, %82, %79
  %126 = phi i32 [ %43, %79 ], [ %97, %82 ], [ %120, %102 ]
  %127 = phi i32 [ %40, %79 ], [ %96, %82 ], [ %119, %102 ]
  %128 = sub i32 %39, %55
  %129 = icmp eq i32 %128, 0
  %130 = add i32 %55, %38
  br i1 %129, label %192, label %131

131:                                              ; preds = %125, %48
  %132 = phi i32 [ %126, %125 ], [ %43, %48 ]
  %133 = phi i32 [ %127, %125 ], [ %40, %48 ]
  %134 = phi i32 [ %128, %125 ], [ %39, %48 ]
  %135 = phi i32 [ %130, %125 ], [ %38, %48 ]
  %136 = add nuw nsw i32 %42, 1
  %137 = load ptr, ptr %29, align 4
  %138 = getelementptr inbounds %struct.skb_shared_info, ptr %137, i32 0, i32 2
  %139 = load i8, ptr %138, align 2
  %140 = zext i8 %139 to i32
  %141 = icmp ult i32 %136, %140
  br i1 %141, label %36, label %142

142:                                              ; preds = %131, %24
  %143 = phi i32 [ %25, %24 ], [ %132, %131 ]
  %144 = phi i32 [ %10, %24 ], [ %51, %131 ]
  %145 = phi i32 [ %26, %24 ], [ %133, %131 ]
  %146 = phi i32 [ %27, %24 ], [ %134, %131 ]
  %147 = phi i32 [ %28, %24 ], [ %135, %131 ]
  %148 = phi ptr [ %30, %24 ], [ %137, %131 ]
  %149 = getelementptr inbounds %struct.skb_shared_info, ptr %148, i32 0, i32 6
  %150 = load ptr, ptr %149, align 8
  %151 = icmp eq ptr %150, null
  br i1 %151, label %187, label %152

152:                                              ; preds = %142
  %153 = getelementptr inbounds %struct.skb_checksum_ops, ptr %4, i32 0, i32 1
  br label %154

154:                                              ; preds = %180, %152
  %155 = phi ptr [ %150, %152 ], [ %185, %180 ]
  %156 = phi i32 [ %147, %152 ], [ %184, %180 ]
  %157 = phi i32 [ %146, %152 ], [ %183, %180 ]
  %158 = phi i32 [ %145, %152 ], [ %182, %180 ]
  %159 = phi i32 [ %144, %152 ], [ %167, %180 ]
  %160 = phi i32 [ %143, %152 ], [ %181, %180 ]
  %161 = add i32 %156, %157
  %162 = icmp sgt i32 %159, %161
  br i1 %162, label %163, label %164, !prof !12

163:                                              ; preds = %154
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 2881, i32 noundef 9, ptr noundef null) #21
  br label %164

164:                                              ; preds = %163, %154
  %165 = getelementptr inbounds %struct.sk_buff, ptr %155, i32 0, i32 5
  %166 = load i32, ptr %165, align 8
  %167 = add i32 %166, %159
  %168 = sub i32 %167, %156
  %169 = icmp sgt i32 %168, 0
  br i1 %169, label %170, label %180

170:                                              ; preds = %164
  %171 = tail call i32 @llvm.smin.i32(i32 %168, i32 %157)
  %172 = sub i32 %156, %159
  %173 = tail call i32 @__skb_checksum(ptr noundef nonnull %155, i32 noundef %172, i32 noundef %171, i32 noundef 0, ptr noundef %4)
  %174 = load ptr, ptr %153, align 4
  %175 = tail call i32 %174(i32 noundef %158, i32 noundef %173, i32 noundef %160, i32 noundef %171) #21
  %176 = sub i32 %157, %171
  %177 = icmp eq i32 %176, 0
  %178 = add i32 %171, %156
  %179 = add i32 %171, %160
  br i1 %177, label %192, label %180

180:                                              ; preds = %170, %164
  %181 = phi i32 [ %179, %170 ], [ %160, %164 ]
  %182 = phi i32 [ %175, %170 ], [ %158, %164 ]
  %183 = phi i32 [ %176, %170 ], [ %157, %164 ]
  %184 = phi i32 [ %178, %170 ], [ %156, %164 ]
  %185 = load ptr, ptr %155, align 8
  %186 = icmp eq ptr %185, null
  br i1 %186, label %187, label %154

187:                                              ; preds = %180, %142
  %188 = phi i32 [ %145, %142 ], [ %182, %180 ]
  %189 = phi i32 [ %146, %142 ], [ %183, %180 ]
  %190 = icmp eq i32 %189, 0
  br i1 %190, label %192, label %191, !prof !13

191:                                              ; preds = %187
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22net/core/skbuff.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2899, 0\0A.popsection", ""() #21, !srcloc !61
  unreachable

192:                                              ; preds = %187, %170, %125, %13
  %193 = phi i32 [ %19, %13 ], [ %188, %187 ], [ %175, %170 ], [ %127, %125 ]
  ret i32 %193
}

; Function Attrs: alwaysinline nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @csum_partial_ext(ptr noundef %0, i32 noundef %1, i32 noundef %2) #14 {
  %4 = tail call i32 @csum_partial(ptr noundef %0, i32 noundef %1, i32 noundef %2) #21
  ret i32 %4
}

; Function Attrs: alwaysinline mustprogress nofree nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal i32 @csum_block_add_ext(i32 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) #15 {
  %5 = and i32 %2, 1
  %6 = icmp eq i32 %5, 0
  %7 = tail call i32 @llvm.fshl.i32(i32 %1, i32 %1, i32 24) #21
  %8 = select i1 %6, i32 %1, i32 %7
  %9 = add i32 %8, %0
  %10 = icmp ult i32 %9, %8
  %11 = zext i1 %10 to i32
  %12 = add i32 %9, %11
  ret i32 %12
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @skb_copy_and_csum_bits(ptr nocapture noundef readonly %0, i32 noundef %1, ptr noundef %2, i32 noundef %3) #0 {
  %5 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 5
  %6 = load i32, ptr %5, align 8
  %7 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 6
  %8 = load i32, ptr %7, align 4
  %9 = sub i32 %6, %8
  %10 = sub i32 %9, %1
  %11 = icmp sgt i32 %10, 0
  br i1 %11, label %12, label %23

12:                                               ; preds = %4
  %13 = tail call i32 @llvm.smin.i32(i32 %10, i32 %3)
  %14 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 17
  %15 = load ptr, ptr %14, align 4
  %16 = getelementptr i8, ptr %15, i32 %1
  %17 = tail call i32 @csum_partial_copy_nocheck(ptr noundef %16, ptr noundef %2, i32 noundef %13) #21
  %18 = sub i32 %3, %13
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %217, label %20

20:                                               ; preds = %12
  %21 = add i32 %13, %1
  %22 = getelementptr i8, ptr %2, i32 %13
  br label %23

23:                                               ; preds = %20, %4
  %24 = phi i32 [ %13, %20 ], [ 0, %4 ]
  %25 = phi i32 [ %17, %20 ], [ 0, %4 ]
  %26 = phi i32 [ %18, %20 ], [ %3, %4 ]
  %27 = phi ptr [ %22, %20 ], [ %2, %4 ]
  %28 = phi i32 [ %21, %20 ], [ %1, %4 ]
  %29 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 15
  %30 = load ptr, ptr %29, align 4
  %31 = getelementptr inbounds %struct.skb_shared_info, ptr %30, i32 0, i32 2
  %32 = load i8, ptr %31, align 2
  %33 = icmp eq i8 %32, 0
  br i1 %33, label %158, label %34

34:                                               ; preds = %146, %23
  %35 = phi ptr [ %147, %146 ], [ %30, %23 ]
  %36 = phi i32 [ %152, %146 ], [ %28, %23 ]
  %37 = phi ptr [ %151, %146 ], [ %27, %23 ]
  %38 = phi i32 [ %150, %146 ], [ %26, %23 ]
  %39 = phi i32 [ %51, %146 ], [ %9, %23 ]
  %40 = phi i32 [ %153, %146 ], [ 0, %23 ]
  %41 = phi i32 [ %149, %146 ], [ %25, %23 ]
  %42 = phi i32 [ %148, %146 ], [ %24, %23 ]
  %43 = add i32 %36, %38
  %44 = icmp sgt i32 %39, %43
  br i1 %44, label %45, label %47, !prof !12

45:                                               ; preds = %34
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 2944, i32 noundef 9, ptr noundef null) #21
  %46 = load ptr, ptr %29, align 4
  br label %47

47:                                               ; preds = %45, %34
  %48 = phi ptr [ %46, %45 ], [ %35, %34 ]
  %49 = getelementptr %struct.skb_shared_info, ptr %48, i32 0, i32 12, i32 %40, i32 1
  %50 = load i32, ptr %49, align 4
  %51 = add i32 %50, %39
  %52 = sub i32 %51, %36
  %53 = icmp sgt i32 %52, 0
  br i1 %53, label %54, label %146

54:                                               ; preds = %47
  %55 = getelementptr %struct.skb_shared_info, ptr %48, i32 0, i32 12, i32 %40
  %56 = tail call i32 @llvm.smin.i32(i32 %52, i32 %38)
  %57 = load ptr, ptr %55, align 4
  %58 = getelementptr %struct.skb_shared_info, ptr %48, i32 0, i32 12, i32 %40, i32 2
  %59 = load i32, ptr %58, align 4
  %60 = sub i32 %36, %39
  %61 = add i32 %60, %59
  %62 = lshr i32 %61, 12
  %63 = getelementptr %struct.page, ptr %57, i32 %62
  %64 = and i32 %61, 4095
  %65 = load i32, ptr %63, align 4
  %66 = lshr i32 %65, 30
  %67 = icmp eq i32 %66, 2
  br i1 %67, label %68, label %71

68:                                               ; preds = %54
  %69 = sub nuw nsw i32 4096, %64
  %70 = tail call i32 @llvm.umin.i32(i32 %56, i32 %69)
  br label %78

71:                                               ; preds = %54
  %72 = icmp eq i32 %66, 3
  %73 = load i32, ptr @movable_zone, align 4
  %74 = icmp eq i32 %73, 2
  %75 = select i1 %72, i1 %74, i1 false
  %76 = sub nuw nsw i32 4096, %64
  %77 = tail call i32 @llvm.umin.i32(i32 %56, i32 %76)
  br i1 %75, label %78, label %80

78:                                               ; preds = %71, %68
  %79 = phi i32 [ %70, %68 ], [ %77, %71 ]
  br label %80

80:                                               ; preds = %78, %71
  %81 = phi i32 [ %79, %78 ], [ %56, %71 ]
  %82 = icmp eq i32 %56, 0
  br i1 %82, label %137, label %83

83:                                               ; preds = %80
  %84 = load i32, ptr @pgprot_kernel, align 4
  %85 = or i32 %84, 512
  tail call void asm sideeffect "", "~{memory}"() #21, !srcloc !23
  %86 = tail call ptr @llvm.thread.pointer() #21
  %87 = getelementptr inbounds %struct.task_struct, ptr %86, i32 0, i32 149
  %88 = load i32, ptr %87, align 8
  %89 = add i32 %88, 1
  store i32 %89, ptr %87, align 8
  tail call void asm sideeffect "", "~{memory}"() #21, !srcloc !24
  %90 = tail call ptr @__kmap_local_page_prot(ptr noundef %63, i32 noundef %85) #21
  %91 = getelementptr i8, ptr %90, i32 %64
  %92 = tail call i32 @csum_partial_copy_nocheck(ptr noundef %91, ptr noundef %37, i32 noundef %81) #21
  tail call void @kunmap_local_indexed(ptr noundef %90) #21
  tail call void asm sideeffect "", "~{memory}"() #21, !srcloc !25
  %93 = load i32, ptr %87, align 8
  %94 = add i32 %93, -1
  store i32 %94, ptr %87, align 8
  tail call void asm sideeffect "", "~{memory}"() #21, !srcloc !26
  %95 = and i32 %42, 1
  %96 = icmp eq i32 %95, 0
  %97 = tail call i32 @llvm.fshl.i32(i32 %92, i32 %92, i32 24) #21
  %98 = select i1 %96, i32 %92, i32 %97
  %99 = add i32 %98, %41
  %100 = icmp ult i32 %99, %98
  %101 = zext i1 %100 to i32
  %102 = add i32 %99, %101
  %103 = add i32 %81, %42
  %104 = icmp ugt i32 %56, %81
  br i1 %104, label %105, label %137

105:                                              ; preds = %83
  %106 = sub i32 %56, %81
  %107 = tail call i32 @llvm.umin.i32(i32 %106, i32 4096)
  br label %108

108:                                              ; preds = %108, %105
  %109 = phi ptr [ %114, %108 ], [ %63, %105 ]
  %110 = phi i32 [ %133, %108 ], [ %81, %105 ]
  %111 = phi i32 [ %135, %108 ], [ %107, %105 ]
  %112 = phi i32 [ %131, %108 ], [ %102, %105 ]
  %113 = phi i32 [ %132, %108 ], [ %103, %105 ]
  %114 = getelementptr %struct.page, ptr %109, i32 1
  %115 = load i32, ptr @pgprot_kernel, align 4
  %116 = or i32 %115, 512
  tail call void asm sideeffect "", "~{memory}"() #21, !srcloc !23
  %117 = load i32, ptr %87, align 8
  %118 = add i32 %117, 1
  store i32 %118, ptr %87, align 8
  tail call void asm sideeffect "", "~{memory}"() #21, !srcloc !24
  %119 = tail call ptr @__kmap_local_page_prot(ptr noundef %114, i32 noundef %116) #21
  %120 = getelementptr i8, ptr %37, i32 %110
  %121 = tail call i32 @csum_partial_copy_nocheck(ptr noundef %119, ptr noundef %120, i32 noundef %111) #21
  tail call void @kunmap_local_indexed(ptr noundef %119) #21
  tail call void asm sideeffect "", "~{memory}"() #21, !srcloc !25
  %122 = load i32, ptr %87, align 8
  %123 = add i32 %122, -1
  store i32 %123, ptr %87, align 8
  tail call void asm sideeffect "", "~{memory}"() #21, !srcloc !26
  %124 = and i32 %113, 1
  %125 = icmp eq i32 %124, 0
  %126 = tail call i32 @llvm.fshl.i32(i32 %121, i32 %121, i32 24) #21
  %127 = select i1 %125, i32 %121, i32 %126
  %128 = add i32 %127, %112
  %129 = icmp ult i32 %128, %127
  %130 = zext i1 %129 to i32
  %131 = add i32 %128, %130
  %132 = add i32 %111, %113
  %133 = add i32 %110, %111
  %134 = sub i32 %56, %133
  %135 = tail call i32 @llvm.umin.i32(i32 %134, i32 4096)
  %136 = icmp ugt i32 %56, %133
  br i1 %136, label %108, label %137, !llvm.loop !62

137:                                              ; preds = %108, %83, %80
  %138 = phi i32 [ %42, %80 ], [ %103, %83 ], [ %132, %108 ]
  %139 = phi i32 [ %41, %80 ], [ %102, %83 ], [ %131, %108 ]
  %140 = sub i32 %38, %56
  %141 = icmp eq i32 %140, 0
  br i1 %141, label %217, label %142

142:                                              ; preds = %137
  %143 = getelementptr i8, ptr %37, i32 %56
  %144 = add i32 %56, %36
  %145 = load ptr, ptr %29, align 4
  br label %146

146:                                              ; preds = %142, %47
  %147 = phi ptr [ %145, %142 ], [ %48, %47 ]
  %148 = phi i32 [ %138, %142 ], [ %42, %47 ]
  %149 = phi i32 [ %139, %142 ], [ %41, %47 ]
  %150 = phi i32 [ %140, %142 ], [ %38, %47 ]
  %151 = phi ptr [ %143, %142 ], [ %37, %47 ]
  %152 = phi i32 [ %144, %142 ], [ %36, %47 ]
  %153 = add nuw nsw i32 %40, 1
  %154 = getelementptr inbounds %struct.skb_shared_info, ptr %147, i32 0, i32 2
  %155 = load i8, ptr %154, align 2
  %156 = zext i8 %155 to i32
  %157 = icmp ult i32 %153, %156
  br i1 %157, label %34, label %158

158:                                              ; preds = %146, %23
  %159 = phi i32 [ %24, %23 ], [ %148, %146 ]
  %160 = phi i32 [ %25, %23 ], [ %149, %146 ]
  %161 = phi i32 [ %9, %23 ], [ %51, %146 ]
  %162 = phi i32 [ %26, %23 ], [ %150, %146 ]
  %163 = phi ptr [ %27, %23 ], [ %151, %146 ]
  %164 = phi i32 [ %28, %23 ], [ %152, %146 ]
  %165 = phi ptr [ %30, %23 ], [ %147, %146 ]
  %166 = getelementptr inbounds %struct.skb_shared_info, ptr %165, i32 0, i32 6
  %167 = load ptr, ptr %166, align 8
  %168 = icmp eq ptr %167, null
  br i1 %168, label %212, label %169

169:                                              ; preds = %204, %158
  %170 = phi ptr [ %210, %204 ], [ %167, %158 ]
  %171 = phi i32 [ %209, %204 ], [ %164, %158 ]
  %172 = phi ptr [ %208, %204 ], [ %163, %158 ]
  %173 = phi i32 [ %207, %204 ], [ %162, %158 ]
  %174 = phi i32 [ %183, %204 ], [ %161, %158 ]
  %175 = phi i32 [ %206, %204 ], [ %160, %158 ]
  %176 = phi i32 [ %205, %204 ], [ %159, %158 ]
  %177 = add i32 %171, %173
  %178 = icmp sgt i32 %174, %177
  br i1 %178, label %179, label %180, !prof !12

179:                                              ; preds = %169
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 2981, i32 noundef 9, ptr noundef null) #21
  br label %180

180:                                              ; preds = %179, %169
  %181 = getelementptr inbounds %struct.sk_buff, ptr %170, i32 0, i32 5
  %182 = load i32, ptr %181, align 8
  %183 = add i32 %182, %174
  %184 = sub i32 %183, %171
  %185 = icmp sgt i32 %184, 0
  br i1 %185, label %186, label %204

186:                                              ; preds = %180
  %187 = tail call i32 @llvm.smin.i32(i32 %184, i32 %173)
  %188 = sub i32 %171, %174
  %189 = tail call i32 @skb_copy_and_csum_bits(ptr noundef nonnull %170, i32 noundef %188, ptr noundef %172, i32 noundef %187)
  %190 = and i32 %176, 1
  %191 = icmp eq i32 %190, 0
  %192 = tail call i32 @llvm.fshl.i32(i32 %189, i32 %189, i32 24) #21
  %193 = select i1 %191, i32 %189, i32 %192
  %194 = add i32 %193, %175
  %195 = icmp ult i32 %194, %193
  %196 = zext i1 %195 to i32
  %197 = add i32 %194, %196
  %198 = sub i32 %173, %187
  %199 = icmp eq i32 %198, 0
  br i1 %199, label %217, label %200

200:                                              ; preds = %186
  %201 = add i32 %187, %171
  %202 = getelementptr i8, ptr %172, i32 %187
  %203 = add i32 %187, %176
  br label %204

204:                                              ; preds = %200, %180
  %205 = phi i32 [ %203, %200 ], [ %176, %180 ]
  %206 = phi i32 [ %197, %200 ], [ %175, %180 ]
  %207 = phi i32 [ %198, %200 ], [ %173, %180 ]
  %208 = phi ptr [ %202, %200 ], [ %172, %180 ]
  %209 = phi i32 [ %201, %200 ], [ %171, %180 ]
  %210 = load ptr, ptr %170, align 8
  %211 = icmp eq ptr %210, null
  br i1 %211, label %212, label %169

212:                                              ; preds = %204, %158
  %213 = phi i32 [ %160, %158 ], [ %206, %204 ]
  %214 = phi i32 [ %162, %158 ], [ %207, %204 ]
  %215 = icmp eq i32 %214, 0
  br i1 %215, label %217, label %216, !prof !13

216:                                              ; preds = %212
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22net/core/skbuff.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2999, 0\0A.popsection", ""() #21, !srcloc !63
  unreachable

217:                                              ; preds = %212, %186, %137, %12
  %218 = phi i32 [ %17, %12 ], [ %213, %212 ], [ %197, %186 ], [ %139, %137 ]
  ret i32 %218
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @csum_partial_copy_nocheck(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local zeroext i16 @__skb_checksum_complete_head(ptr noundef %0, i32 noundef %1) #0 {
  %3 = alloca %struct.skb_checksum_ops, align 8
  %4 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 13, i32 0, i32 4
  %5 = load i32, ptr %4, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #21
  %6 = load i64, ptr @__const.skb_checksum.ops, align 8
  store i64 %6, ptr %3, align 8
  %7 = call i32 @__skb_checksum(ptr noundef %0, i32 noundef 0, i32 noundef %1, i32 noundef %5, ptr noundef nonnull %3) #21
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #21
  %8 = tail call i32 asm "add\09$0, $1, $1, ror #16\09@ csum_fold", "=r,r,~{cc}"(i32 %7) #23, !srcloc !64
  %9 = xor i32 %8, -1
  %10 = lshr i32 %9, 16
  %11 = trunc i32 %10 to i16
  %12 = icmp eq i16 %11, 0
  br i1 %12, label %13, label %26, !prof !13

13:                                               ; preds = %2
  %14 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 13
  %15 = load i16, ptr %14, align 8
  %16 = and i16 %15, 96
  %17 = icmp eq i16 %16, 64
  br i1 %17, label %18, label %26, !prof !12

18:                                               ; preds = %13
  %19 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 13, i32 0, i32 3
  %20 = load i16, ptr %19, align 2
  %21 = and i16 %20, 2
  %22 = icmp eq i16 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %18
  %24 = getelementptr inbounds %struct.anon, ptr %0, i32 0, i32 2
  %25 = load ptr, ptr %24, align 8
  tail call void @netdev_rx_csum_fault(ptr noundef %25, ptr noundef %0) #21
  br label %26

26:                                               ; preds = %23, %18, %13, %2
  %27 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 19
  %28 = load volatile i32, ptr %27, align 4
  %29 = icmp eq i32 %28, 1
  br i1 %29, label %30, label %36

30:                                               ; preds = %26
  %31 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 13
  %32 = load i16, ptr %31, align 8
  %33 = select i1 %12, i16 -32768, i16 0
  %34 = and i16 %32, 32767
  %35 = or i16 %34, %33
  store i16 %35, ptr %31, align 8
  br label %36

36:                                               ; preds = %30, %26
  ret i16 %11
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @netdev_rx_csum_fault(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local zeroext i16 @__skb_checksum_complete(ptr noundef %0) #0 {
  %2 = alloca %struct.skb_checksum_ops, align 8
  %3 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 5
  %4 = load i32, ptr %3, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #21
  %5 = load i64, ptr @__const.skb_checksum.ops, align 8
  store i64 %5, ptr %2, align 8
  %6 = call i32 @__skb_checksum(ptr noundef %0, i32 noundef 0, i32 noundef %4, i32 noundef 0, ptr noundef nonnull %2) #21
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #21
  %7 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 13, i32 0, i32 4
  %8 = load i32, ptr %7, align 4
  %9 = add i32 %8, %6
  %10 = icmp ult i32 %9, %6
  %11 = zext i1 %10 to i32
  %12 = add i32 %9, %11
  %13 = tail call i32 asm "add\09$0, $1, $1, ror #16\09@ csum_fold", "=r,r,~{cc}"(i32 %12) #23, !srcloc !64
  %14 = xor i32 %13, -1
  %15 = lshr i32 %14, 16
  %16 = trunc i32 %15 to i16
  %17 = icmp eq i16 %16, 0
  br i1 %17, label %18, label %31, !prof !13

18:                                               ; preds = %1
  %19 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 13
  %20 = load i16, ptr %19, align 8
  %21 = and i16 %20, 96
  %22 = icmp eq i16 %21, 64
  br i1 %22, label %23, label %31, !prof !12

23:                                               ; preds = %18
  %24 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 13, i32 0, i32 3
  %25 = load i16, ptr %24, align 2
  %26 = and i16 %25, 2
  %27 = icmp eq i16 %26, 0
  br i1 %27, label %28, label %31

28:                                               ; preds = %23
  %29 = getelementptr inbounds %struct.anon, ptr %0, i32 0, i32 2
  %30 = load ptr, ptr %29, align 8
  tail call void @netdev_rx_csum_fault(ptr noundef %30, ptr noundef %0) #21
  br label %31

31:                                               ; preds = %28, %23, %18, %1
  %32 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 19
  %33 = load volatile i32, ptr %32, align 4
  %34 = icmp eq i32 %33, 1
  br i1 %34, label %35, label %45

35:                                               ; preds = %31
  store i32 %6, ptr %7, align 4
  %36 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 13
  %37 = load i16, ptr %36, align 8
  %38 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 13, i32 0, i32 3
  %39 = load i16, ptr %38, align 2
  %40 = or i16 %39, 2
  store i16 %40, ptr %38, align 2
  %41 = select i1 %17, i16 -32768, i16 0
  %42 = and i16 %37, 32671
  %43 = or i16 %42, %41
  %44 = or i16 %43, 64
  store i16 %44, ptr %36, align 8
  br label %45

45:                                               ; preds = %35, %31
  ret i16 %16
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define dso_local i32 @skb_zerocopy_headlen(ptr nocapture noundef readonly %0) #16 {
  %2 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 11
  %3 = load i8, ptr %2, align 2
  %4 = and i8 %3, 32
  %5 = icmp eq i8 %4, 0
  %6 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 5
  %7 = load i32, ptr %6, align 8
  %8 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 6
  %9 = load i32, ptr %8, align 4
  %10 = sub i32 %7, %9
  %11 = icmp ult i32 %10, 64
  %12 = select i1 %5, i1 true, i1 %11
  br i1 %12, label %19, label %13

13:                                               ; preds = %1
  %14 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 15
  %15 = load ptr, ptr %14, align 4
  %16 = getelementptr inbounds %struct.skb_shared_info, ptr %15, i32 0, i32 2
  %17 = load i8, ptr %16, align 2
  %18 = icmp ugt i8 %17, 16
  br i1 %18, label %19, label %25

19:                                               ; preds = %13, %1
  %20 = icmp eq i32 %7, %9
  %21 = select i1 %20, i32 0, i32 %9
  %22 = sub i32 %7, %21
  %23 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 15
  %24 = load ptr, ptr %23, align 4
  br label %25

25:                                               ; preds = %19, %13
  %26 = phi ptr [ %15, %13 ], [ %24, %19 ]
  %27 = phi i32 [ 0, %13 ], [ %22, %19 ]
  %28 = getelementptr inbounds %struct.skb_shared_info, ptr %26, i32 0, i32 6
  %29 = load ptr, ptr %28, align 8
  %30 = icmp eq ptr %29, null
  %31 = select i1 %30, i32 %27, i32 %7
  ret i32 %31
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @skb_zerocopy(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) #0 {
  %5 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 11
  %6 = load i8, ptr %5, align 2
  %7 = and i8 %6, 32
  %8 = icmp eq i8 %7, 0
  %9 = icmp eq i32 %3, 0
  %10 = and i1 %9, %8
  br i1 %10, label %11, label %12, !prof !12

11:                                               ; preds = %4
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22net/core/skbuff.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 3143, 0\0A.popsection", ""() #21, !srcloc !65
  unreachable

12:                                               ; preds = %4
  %13 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 6
  %14 = load i32, ptr %13, align 4
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %25

16:                                               ; preds = %12
  %17 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 15
  %18 = load ptr, ptr %17, align 4
  %19 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 14
  %20 = load ptr, ptr %19, align 8
  %21 = ptrtoint ptr %18 to i32
  %22 = ptrtoint ptr %20 to i32
  %23 = sub i32 %21, %22
  %24 = icmp slt i32 %23, %2
  br i1 %24, label %38, label %28

25:                                               ; preds = %12
  %26 = icmp sgt i32 %2, 0
  br i1 %26, label %39, label %27

27:                                               ; preds = %25
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22net/core/skbuff.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1984, 0\0A.popsection", ""() #21, !srcloc !46
  unreachable

28:                                               ; preds = %16
  %29 = getelementptr i8, ptr %20, i32 %2
  store ptr %29, ptr %19, align 8
  %30 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 5
  %31 = load i32, ptr %30, align 8
  %32 = add i32 %31, %2
  store i32 %32, ptr %30, align 8
  %33 = icmp ugt ptr %29, %18
  br i1 %33, label %34, label %36, !prof !12

34:                                               ; preds = %28
  %35 = tail call ptr @llvm.returnaddress(i32 0) #21
  tail call fastcc void @skb_over_panic(ptr noundef %0, i32 noundef %2, ptr noundef %35) #21
  unreachable

36:                                               ; preds = %28
  %37 = tail call i32 @skb_copy_bits(ptr noundef %1, i32 noundef 0, ptr noundef %20, i32 noundef %2)
  br label %213

38:                                               ; preds = %16
  br i1 %9, label %54, label %41

39:                                               ; preds = %25
  br i1 %9, label %54, label %40

40:                                               ; preds = %39
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22net/core/skbuff.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1984, 0\0A.popsection", ""() #21, !srcloc !46
  unreachable

41:                                               ; preds = %38
  %42 = getelementptr i8, ptr %20, i32 %3
  store ptr %42, ptr %19, align 8
  %43 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 5
  %44 = load i32, ptr %43, align 8
  %45 = add i32 %44, %3
  store i32 %45, ptr %43, align 8
  %46 = icmp ugt ptr %42, %18
  br i1 %46, label %47, label %49, !prof !12

47:                                               ; preds = %41
  %48 = tail call ptr @llvm.returnaddress(i32 0) #21
  tail call fastcc void @skb_over_panic(ptr noundef %0, i32 noundef %3, ptr noundef %48) #21
  unreachable

49:                                               ; preds = %41
  %50 = tail call i32 @skb_copy_bits(ptr noundef %1, i32 noundef 0, ptr noundef %20, i32 noundef %3)
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %52, label %213, !prof !13

52:                                               ; preds = %49
  %53 = sub i32 %2, %3
  br label %123

54:                                               ; preds = %39, %38
  %55 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 5
  %56 = load i32, ptr %55, align 8
  %57 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 6
  %58 = load i32, ptr %57, align 4
  %59 = sub i32 %56, %58
  %60 = tail call i32 @llvm.smin.i32(i32 %59, i32 %2)
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %123, label %62

62:                                               ; preds = %54
  %63 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 16
  %64 = load ptr, ptr %63, align 8
  %65 = load ptr, ptr @mem_map, align 4
  %66 = ptrtoint ptr %64 to i32
  %67 = add i32 %66, 1073741824
  %68 = lshr i32 %67, 12
  %69 = getelementptr %struct.page, ptr %65, i32 %68, i32 1
  %70 = load volatile i32, ptr %69, align 4
  %71 = and i32 %70, 1
  %72 = icmp eq i32 %71, 0
  br i1 %72, label %75, label %73, !prof !13

73:                                               ; preds = %62
  %74 = add i32 %70, -1
  br label %78

75:                                               ; preds = %62
  %76 = getelementptr %struct.page, ptr %65, i32 %68
  %77 = ptrtoint ptr %76 to i32
  br label %78

78:                                               ; preds = %75, %73
  %79 = phi i32 [ %74, %73 ], [ %77, %75 ]
  %80 = inttoptr i32 %79 to ptr
  %81 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 17
  %82 = load ptr, ptr %81, align 4
  %83 = tail call ptr @page_address(ptr noundef %80) #21
  %84 = ptrtoint ptr %82 to i32
  %85 = ptrtoint ptr %83 to i32
  %86 = sub i32 %84, %85
  %87 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 15
  %88 = load ptr, ptr %87, align 4
  %89 = getelementptr %struct.skb_shared_info, ptr %88, i32 0, i32 12, i32 0
  store ptr %80, ptr %89, align 4
  %90 = getelementptr %struct.skb_shared_info, ptr %88, i32 0, i32 12, i32 0, i32 2
  store i32 %86, ptr %90, align 4
  %91 = getelementptr %struct.skb_shared_info, ptr %88, i32 0, i32 12, i32 0, i32 1
  store i32 %60, ptr %91, align 4
  %92 = getelementptr inbounds %struct.page, ptr %80, i32 0, i32 1
  %93 = load volatile i32, ptr %92, align 4
  %94 = and i32 %93, 1
  %95 = icmp eq i32 %94, 0
  %96 = inttoptr i32 %93 to ptr
  br i1 %95, label %102, label %97, !prof !13

97:                                               ; preds = %78
  %98 = add i32 %93, -1
  %99 = inttoptr i32 %98 to ptr
  %100 = getelementptr inbounds %struct.page, ptr %99, i32 0, i32 1
  %101 = load ptr, ptr %100, align 4
  br label %102

102:                                              ; preds = %97, %78
  %103 = phi ptr [ %101, %97 ], [ %96, %78 ]
  %104 = ptrtoint ptr %103 to i32
  %105 = and i32 %104, 2
  %106 = icmp eq i32 %105, 0
  br i1 %106, label %111, label %107

107:                                              ; preds = %102
  %108 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 11
  %109 = load i8, ptr %108, align 2
  %110 = or i8 %109, 64
  store i8 %110, ptr %108, align 2
  br label %111

111:                                              ; preds = %107, %102
  %112 = load volatile i32, ptr %92, align 4
  %113 = and i32 %112, 1
  %114 = icmp eq i32 %113, 0
  br i1 %114, label %118, label %115, !prof !13

115:                                              ; preds = %111
  %116 = add i32 %112, -1
  %117 = inttoptr i32 %116 to ptr
  br label %118

118:                                              ; preds = %115, %111
  %119 = phi ptr [ %80, %111 ], [ %117, %115 ]
  %120 = getelementptr inbounds %struct.page, ptr %119, i32 0, i32 3
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %120) #21, !srcloc !16
  %121 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %120, ptr %120, i32 1, ptr elementtype(i32) %120) #21, !srcloc !38
  %122 = sub i32 %2, %60
  br label %123

123:                                              ; preds = %118, %54, %52
  %124 = phi i32 [ 0, %52 ], [ %60, %118 ], [ 0, %54 ]
  %125 = phi i32 [ 0, %52 ], [ 1, %118 ], [ 0, %54 ]
  %126 = phi i32 [ %53, %52 ], [ %122, %118 ], [ %2, %54 ]
  %127 = add i32 %126, %124
  %128 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 18
  %129 = load i32, ptr %128, align 8
  %130 = add i32 %129, %127
  store i32 %130, ptr %128, align 8
  %131 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 5
  %132 = load i32, ptr %131, align 8
  %133 = add i32 %132, %127
  store i32 %133, ptr %131, align 8
  %134 = load i32, ptr %13, align 4
  %135 = add i32 %134, %127
  store i32 %135, ptr %13, align 4
  %136 = icmp eq ptr %1, null
  br i1 %136, label %158, label %137

137:                                              ; preds = %123
  %138 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 15
  %139 = load ptr, ptr %138, align 4
  %140 = load i8, ptr %139, align 8
  %141 = and i8 %140, 1
  %142 = icmp eq i8 %141, 0
  br i1 %142, label %158, label %143

143:                                              ; preds = %137
  %144 = getelementptr inbounds %struct.skb_shared_info, ptr %139, i32 0, i32 11
  %145 = load ptr, ptr %144, align 4
  %146 = icmp eq ptr %145, null
  br i1 %146, label %158, label %147, !prof !13

147:                                              ; preds = %143
  %148 = ptrtoint ptr %145 to i32
  %149 = and i32 %148, 1
  %150 = icmp eq i32 %149, 0
  br i1 %150, label %151, label %154

151:                                              ; preds = %147
  %152 = load ptr, ptr %145, align 4
  %153 = icmp eq ptr %152, @msg_zerocopy_callback
  br i1 %153, label %158, label %154

154:                                              ; preds = %151, %147
  %155 = tail call i32 @skb_copy_ubufs(ptr noundef nonnull %1, i32 noundef 2592) #21
  %156 = icmp eq i32 %155, 0
  br i1 %156, label %158, label %157, !prof !13

157:                                              ; preds = %154
  tail call void @skb_tx_error(ptr noundef nonnull %1)
  br label %213

158:                                              ; preds = %154, %151, %143, %137, %123
  %159 = tail call fastcc i32 @skb_zerocopy_clone(ptr noundef %0, ptr noundef %1, i32 noundef 2592)
  %160 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 15
  %161 = load ptr, ptr %160, align 4
  %162 = getelementptr inbounds %struct.skb_shared_info, ptr %161, i32 0, i32 2
  %163 = load i8, ptr %162, align 2
  %164 = icmp eq i8 %163, 0
  %165 = icmp eq i32 %126, 0
  %166 = select i1 %164, i1 true, i1 %165
  br i1 %166, label %207, label %167

167:                                              ; preds = %158
  %168 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 15
  br label %169

169:                                              ; preds = %193, %167
  %170 = phi ptr [ %161, %167 ], [ %200, %193 ]
  %171 = phi i32 [ %126, %167 ], [ %181, %193 ]
  %172 = phi i32 [ 0, %167 ], [ %199, %193 ]
  %173 = phi i32 [ %125, %167 ], [ %198, %193 ]
  %174 = load ptr, ptr %168, align 4
  %175 = getelementptr %struct.skb_shared_info, ptr %174, i32 0, i32 12, i32 %173
  %176 = getelementptr %struct.skb_shared_info, ptr %170, i32 0, i32 12, i32 %172
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(12) %175, ptr noundef align 4 dereferenceable(12) %176, i32 12, i1 false)
  %177 = load ptr, ptr %168, align 4
  %178 = getelementptr %struct.skb_shared_info, ptr %177, i32 0, i32 12, i32 %173, i32 1
  %179 = load i32, ptr %178, align 4
  %180 = tail call i32 @llvm.smin.i32(i32 %179, i32 %171)
  store i32 %180, ptr %178, align 4
  %181 = sub i32 %171, %180
  %182 = load ptr, ptr %168, align 4
  %183 = getelementptr %struct.skb_shared_info, ptr %182, i32 0, i32 12, i32 %173
  %184 = load ptr, ptr %183, align 4
  %185 = getelementptr inbounds %struct.page, ptr %184, i32 0, i32 1
  %186 = load volatile i32, ptr %185, align 4
  %187 = and i32 %186, 1
  %188 = icmp eq i32 %187, 0
  br i1 %188, label %191, label %189, !prof !13

189:                                              ; preds = %169
  %190 = add i32 %186, -1
  br label %193

191:                                              ; preds = %169
  %192 = ptrtoint ptr %184 to i32
  br label %193

193:                                              ; preds = %191, %189
  %194 = phi i32 [ %190, %189 ], [ %192, %191 ]
  %195 = inttoptr i32 %194 to ptr
  %196 = getelementptr inbounds %struct.page, ptr %195, i32 0, i32 3
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %196) #21, !srcloc !16
  %197 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %196, ptr %196, i32 1, ptr elementtype(i32) %196) #21, !srcloc !38
  %198 = add nuw nsw i32 %173, 1
  %199 = add nuw nsw i32 %172, 1
  %200 = load ptr, ptr %160, align 4
  %201 = getelementptr inbounds %struct.skb_shared_info, ptr %200, i32 0, i32 2
  %202 = load i8, ptr %201, align 2
  %203 = zext i8 %202 to i32
  %204 = icmp uge i32 %199, %203
  %205 = icmp eq i32 %181, 0
  %206 = select i1 %204, i1 true, i1 %205
  br i1 %206, label %207, label %169

207:                                              ; preds = %193, %158
  %208 = phi i32 [ %125, %158 ], [ %198, %193 ]
  %209 = trunc i32 %208 to i8
  %210 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 15
  %211 = load ptr, ptr %210, align 4
  %212 = getelementptr inbounds %struct.skb_shared_info, ptr %211, i32 0, i32 2
  store i8 %209, ptr %212, align 2
  br label %213

213:                                              ; preds = %207, %157, %49, %36
  %214 = phi i32 [ %37, %36 ], [ -12, %157 ], [ 0, %207 ], [ %50, %49 ]
  ret i32 %214
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @skb_copy_and_csum_dev(ptr nocapture noundef readonly %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 13
  %4 = load i16, ptr %3, align 8
  %5 = and i16 %4, 96
  %6 = icmp eq i16 %5, 96
  br i1 %6, label %13, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 5
  %9 = load i32, ptr %8, align 8
  %10 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 6
  %11 = load i32, ptr %10, align 4
  %12 = sub i32 %9, %11
  br label %32

13:                                               ; preds = %2
  %14 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 13, i32 0, i32 4
  %15 = load i16, ptr %14, align 4
  %16 = zext i16 %15 to i32
  %17 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 17
  %18 = load ptr, ptr %17, align 4
  %19 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 16
  %20 = load ptr, ptr %19, align 8
  %21 = ptrtoint ptr %18 to i32
  %22 = ptrtoint ptr %20 to i32
  %23 = sub i32 %16, %21
  %24 = add i32 %23, %22
  %25 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 5
  %26 = load i32, ptr %25, align 8
  %27 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 6
  %28 = load i32, ptr %27, align 4
  %29 = sub i32 %26, %28
  %30 = icmp ugt i32 %24, %29
  br i1 %30, label %31, label %32, !prof !12

31:                                               ; preds = %13
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22net/core/skbuff.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 3205, 0\0A.popsection", ""() #21, !srcloc !66
  unreachable

32:                                               ; preds = %13, %7
  %33 = phi i32 [ %12, %7 ], [ %24, %13 ]
  %34 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 5
  %35 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 17
  %36 = load ptr, ptr %35, align 4
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 1 %1, ptr align 1 %36, i32 %33, i1 false) #21
  %37 = load i32, ptr %34, align 8
  %38 = icmp eq i32 %37, %33
  br i1 %38, label %43, label %39

39:                                               ; preds = %32
  %40 = getelementptr i8, ptr %1, i32 %33
  %41 = sub i32 %37, %33
  %42 = tail call i32 @skb_copy_and_csum_bits(ptr noundef %0, i32 noundef %33, ptr noundef %40, i32 noundef %41)
  br label %43

43:                                               ; preds = %39, %32
  %44 = phi i32 [ %42, %39 ], [ 0, %32 ]
  %45 = load i16, ptr %3, align 8
  %46 = and i16 %45, 96
  %47 = icmp eq i16 %46, 96
  br i1 %47, label %48, label %59

48:                                               ; preds = %43
  %49 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 13, i32 0, i32 4
  %50 = getelementptr inbounds %struct.anon.169, ptr %49, i32 0, i32 1
  %51 = load i16, ptr %50, align 2
  %52 = zext i16 %51 to i32
  %53 = add i32 %33, %52
  %54 = tail call i32 asm "add\09$0, $1, $1, ror #16\09@ csum_fold", "=r,r,~{cc}"(i32 %44) #23, !srcloc !64
  %55 = xor i32 %54, -1
  %56 = lshr i32 %55, 16
  %57 = trunc i32 %56 to i16
  %58 = getelementptr i8, ptr %1, i32 %53
  store i16 %57, ptr %58, align 2
  br label %59

59:                                               ; preds = %48, %43
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @skb_dequeue(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.sk_buff_head, ptr %0, i32 0, i32 2
  %3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %2) #21
  %4 = load ptr, ptr %0, align 4
  %5 = icmp eq ptr %4, %0
  %6 = select i1 %5, ptr null, ptr %4
  %7 = icmp eq ptr %6, null
  br i1 %7, label %16, label %8

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.sk_buff_head, ptr %0, i32 0, i32 1
  %10 = load i32, ptr %9, align 4
  %11 = add i32 %10, -1
  store volatile i32 %11, ptr %9, align 4
  %12 = load ptr, ptr %6, align 8
  %13 = getelementptr inbounds %struct.anon, ptr %6, i32 0, i32 1
  %14 = load ptr, ptr %13, align 4
  store ptr null, ptr %13, align 4
  store ptr null, ptr %6, align 8
  %15 = getelementptr inbounds %struct.anon, ptr %12, i32 0, i32 1
  store volatile ptr %14, ptr %15, align 4
  store volatile ptr %12, ptr %14, align 8
  br label %16

16:                                               ; preds = %8, %1
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %2, i32 noundef %3) #21
  ret ptr %6
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @skb_dequeue_tail(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.sk_buff_head, ptr %0, i32 0, i32 2
  %3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %2) #21
  %4 = getelementptr inbounds %struct.anon.6, ptr %0, i32 0, i32 1
  %5 = load volatile ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, %0
  %7 = select i1 %6, ptr null, ptr %5
  %8 = icmp eq ptr %7, null
  br i1 %8, label %17, label %9

9:                                                ; preds = %1
  %10 = getelementptr inbounds %struct.sk_buff_head, ptr %0, i32 0, i32 1
  %11 = load i32, ptr %10, align 4
  %12 = add i32 %11, -1
  store volatile i32 %12, ptr %10, align 4
  %13 = load ptr, ptr %7, align 8
  %14 = getelementptr inbounds %struct.anon, ptr %7, i32 0, i32 1
  %15 = load ptr, ptr %14, align 4
  store ptr null, ptr %14, align 4
  store ptr null, ptr %7, align 8
  %16 = getelementptr inbounds %struct.anon, ptr %13, i32 0, i32 1
  store volatile ptr %15, ptr %16, align 4
  store volatile ptr %13, ptr %15, align 8
  br label %17

17:                                               ; preds = %9, %1
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %2, i32 noundef %3) #21
  ret ptr %7
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @skb_queue_purge(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.sk_buff_head, ptr %0, i32 0, i32 2
  %3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %2) #21
  %4 = load ptr, ptr %0, align 4
  %5 = icmp eq ptr %4, %0
  %6 = icmp eq ptr %4, null
  %7 = or i1 %5, %6
  br i1 %7, label %54, label %8

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.sk_buff_head, ptr %0, i32 0, i32 1
  br label %10

10:                                               ; preds = %48, %8
  %11 = phi ptr [ %4, %8 ], [ %50, %48 ]
  %12 = phi i32 [ %3, %8 ], [ %49, %48 ]
  %13 = load i32, ptr %9, align 4
  %14 = add i32 %13, -1
  store volatile i32 %14, ptr %9, align 4
  %15 = load ptr, ptr %11, align 8
  %16 = getelementptr inbounds %struct.anon, ptr %11, i32 0, i32 1
  %17 = load ptr, ptr %16, align 4
  store ptr null, ptr %16, align 4
  store ptr null, ptr %11, align 8
  %18 = getelementptr inbounds %struct.anon, ptr %15, i32 0, i32 1
  store volatile ptr %17, ptr %18, align 4
  store volatile ptr %15, ptr %17, align 8
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %2, i32 noundef %12) #21
  %19 = getelementptr inbounds %struct.sk_buff, ptr %11, i32 0, i32 19
  %20 = load volatile i32, ptr %19, align 4
  %21 = icmp eq i32 %20, 1
  tail call void asm sideeffect "dmb ish", "~{memory}"() #21
  br i1 %21, label %30, label %22, !prof !13

22:                                               ; preds = %10
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %19) #21, !srcloc !16
  %23 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %19, ptr %19, i32 1, ptr elementtype(i32) %19) #21, !srcloc !19
  %24 = extractvalue { i32, i32, i32 } %23, 0
  %25 = icmp eq i32 %24, 1
  br i1 %25, label %29, label %26

26:                                               ; preds = %22
  %27 = icmp sgt i32 %24, 0
  br i1 %27, label %48, label %28, !prof !13

28:                                               ; preds = %26
  tail call void @refcount_warn_saturate(ptr noundef %19, i32 noundef 3) #21
  br label %48

29:                                               ; preds = %22
  tail call void asm sideeffect "dmb ish", "~{memory}"() #21, !srcloc !20
  br label %30

30:                                               ; preds = %29, %10
  %31 = tail call ptr @llvm.returnaddress(i32 0) #21
  %32 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_kfree_skb, i32 0, i32 1), align 4
  %33 = icmp sgt i32 %32, 0
  br i1 %33, label %34, label %47

34:                                               ; preds = %30
  %35 = tail call ptr @llvm.thread.pointer() #21
  %36 = getelementptr inbounds %struct.thread_info, ptr %35, i32 0, i32 2
  %37 = load i32, ptr %36, align 8
  %38 = lshr i32 %37, 5
  %39 = getelementptr i32, ptr @__cpu_online_mask, i32 %38
  %40 = load volatile i32, ptr %39, align 4
  %41 = and i32 %37, 31
  %42 = shl nuw i32 1, %41
  %43 = and i32 %42, %40
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %47, label %45

45:                                               ; preds = %34
  tail call void asm sideeffect "", "~{memory}"() #21, !srcloc !21
  %46 = tail call i32 @__traceiter_kfree_skb(ptr noundef null, ptr noundef nonnull %11, ptr noundef %31, i32 noundef 0) #21
  tail call void asm sideeffect "", "~{memory}"() #21, !srcloc !22
  br label %47

47:                                               ; preds = %45, %34, %30
  tail call void @__kfree_skb(ptr noundef nonnull %11) #21
  br label %48

48:                                               ; preds = %47, %28, %26
  %49 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %2) #21
  %50 = load ptr, ptr %0, align 4
  %51 = icmp eq ptr %50, %0
  %52 = icmp eq ptr %50, null
  %53 = or i1 %51, %52
  br i1 %53, label %54, label %10

54:                                               ; preds = %48, %1
  %55 = phi i32 [ %3, %1 ], [ %49, %48 ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %2, i32 noundef %55) #21
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @skb_rbtree_purge(ptr noundef %0) local_unnamed_addr #0 {
  %2 = tail call ptr @rb_first(ptr noundef %0) #21
  %3 = icmp eq ptr %2, null
  br i1 %3, label %42, label %4

4:                                                ; preds = %40, %1
  %5 = phi ptr [ %7, %40 ], [ %2, %1 ]
  %6 = phi i32 [ %10, %40 ], [ 0, %1 ]
  %7 = tail call ptr @rb_next(ptr noundef nonnull %5) #21
  tail call void @rb_erase(ptr noundef nonnull %5, ptr noundef %0) #21
  %8 = getelementptr inbounds %struct.sk_buff, ptr %5, i32 0, i32 18
  %9 = load i32, ptr %8, align 8
  %10 = add i32 %9, %6
  %11 = getelementptr inbounds %struct.sk_buff, ptr %5, i32 0, i32 19
  %12 = load volatile i32, ptr %11, align 4
  %13 = icmp eq i32 %12, 1
  tail call void asm sideeffect "dmb ish", "~{memory}"() #21
  br i1 %13, label %22, label %14, !prof !13

14:                                               ; preds = %4
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %11) #21, !srcloc !16
  %15 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %11, ptr %11, i32 1, ptr elementtype(i32) %11) #21, !srcloc !19
  %16 = extractvalue { i32, i32, i32 } %15, 0
  %17 = icmp eq i32 %16, 1
  br i1 %17, label %21, label %18

18:                                               ; preds = %14
  %19 = icmp sgt i32 %16, 0
  br i1 %19, label %40, label %20, !prof !13

20:                                               ; preds = %18
  tail call void @refcount_warn_saturate(ptr noundef %11, i32 noundef 3) #21
  br label %40

21:                                               ; preds = %14
  tail call void asm sideeffect "dmb ish", "~{memory}"() #21, !srcloc !20
  br label %22

22:                                               ; preds = %21, %4
  %23 = tail call ptr @llvm.returnaddress(i32 0) #21
  %24 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_kfree_skb, i32 0, i32 1), align 4
  %25 = icmp sgt i32 %24, 0
  br i1 %25, label %26, label %39

26:                                               ; preds = %22
  %27 = tail call ptr @llvm.thread.pointer() #21
  %28 = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 2
  %29 = load i32, ptr %28, align 8
  %30 = lshr i32 %29, 5
  %31 = getelementptr i32, ptr @__cpu_online_mask, i32 %30
  %32 = load volatile i32, ptr %31, align 4
  %33 = and i32 %29, 31
  %34 = shl nuw i32 1, %33
  %35 = and i32 %34, %32
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %39, label %37

37:                                               ; preds = %26
  tail call void asm sideeffect "", "~{memory}"() #21, !srcloc !21
  %38 = tail call i32 @__traceiter_kfree_skb(ptr noundef null, ptr noundef nonnull %5, ptr noundef %23, i32 noundef 0) #21
  tail call void asm sideeffect "", "~{memory}"() #21, !srcloc !22
  br label %39

39:                                               ; preds = %37, %26, %22
  tail call void @__kfree_skb(ptr noundef nonnull %5) #21
  br label %40

40:                                               ; preds = %39, %20, %18
  %41 = icmp eq ptr %7, null
  br i1 %41, label %42, label %4

42:                                               ; preds = %40, %1
  %43 = phi i32 [ 0, %1 ], [ %10, %40 ]
  ret i32 %43
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rb_first(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rb_next(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rb_erase(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @skb_queue_head(ptr noundef %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.sk_buff_head, ptr %0, i32 0, i32 2
  %4 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %3) #21
  %5 = load ptr, ptr %0, align 4
  store volatile ptr %5, ptr %1, align 8
  %6 = getelementptr inbounds %struct.anon, ptr %1, i32 0, i32 1
  store volatile ptr %0, ptr %6, align 4
  %7 = getelementptr inbounds %struct.sk_buff_list, ptr %5, i32 0, i32 1
  store volatile ptr %1, ptr %7, align 4
  store volatile ptr %1, ptr %0, align 4
  %8 = getelementptr inbounds %struct.sk_buff_head, ptr %0, i32 0, i32 1
  %9 = load i32, ptr %8, align 4
  %10 = add i32 %9, 1
  store volatile i32 %10, ptr %8, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %3, i32 noundef %4) #21
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @skb_queue_tail(ptr noundef %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.sk_buff_head, ptr %0, i32 0, i32 2
  %4 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %3) #21
  %5 = getelementptr inbounds %struct.sk_buff_list, ptr %0, i32 0, i32 1
  %6 = load ptr, ptr %5, align 4
  store volatile ptr %0, ptr %1, align 8
  %7 = getelementptr inbounds %struct.anon, ptr %1, i32 0, i32 1
  store volatile ptr %6, ptr %7, align 4
  store volatile ptr %1, ptr %5, align 4
  store volatile ptr %1, ptr %6, align 4
  %8 = getelementptr inbounds %struct.sk_buff_head, ptr %0, i32 0, i32 1
  %9 = load i32, ptr %8, align 4
  %10 = add i32 %9, 1
  store volatile i32 %10, ptr %8, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %3, i32 noundef %4) #21
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @skb_unlink(ptr nocapture noundef %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.sk_buff_head, ptr %1, i32 0, i32 2
  %4 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %3) #21
  %5 = getelementptr inbounds %struct.sk_buff_head, ptr %1, i32 0, i32 1
  %6 = load i32, ptr %5, align 4
  %7 = add i32 %6, -1
  store volatile i32 %7, ptr %5, align 4
  %8 = load ptr, ptr %0, align 8
  %9 = getelementptr inbounds %struct.anon, ptr %0, i32 0, i32 1
  %10 = load ptr, ptr %9, align 4
  store ptr null, ptr %9, align 4
  store ptr null, ptr %0, align 8
  %11 = getelementptr inbounds %struct.anon, ptr %8, i32 0, i32 1
  store volatile ptr %10, ptr %11, align 4
  store volatile ptr %8, ptr %10, align 8
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %3, i32 noundef %4) #21
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @skb_append(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = getelementptr inbounds %struct.sk_buff_head, ptr %2, i32 0, i32 2
  %5 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %4) #21
  %6 = load ptr, ptr %0, align 4
  store volatile ptr %6, ptr %1, align 8
  %7 = getelementptr inbounds %struct.anon, ptr %1, i32 0, i32 1
  store volatile ptr %0, ptr %7, align 4
  %8 = getelementptr inbounds %struct.sk_buff_list, ptr %6, i32 0, i32 1
  store volatile ptr %1, ptr %8, align 4
  store volatile ptr %1, ptr %0, align 4
  %9 = getelementptr inbounds %struct.sk_buff_head, ptr %2, i32 0, i32 1
  %10 = load i32, ptr %9, align 4
  %11 = add i32 %10, 1
  store volatile i32 %11, ptr %9, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %4, i32 noundef %5) #21
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @skb_split(ptr noundef %0, ptr noundef %1, i32 noundef %2) #0 {
  %4 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 5
  %5 = load i32, ptr %4, align 8
  %6 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 6
  %7 = load i32, ptr %6, align 4
  %8 = sub i32 %5, %7
  %9 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 15
  %10 = load ptr, ptr %9, align 4
  %11 = load i8, ptr %10, align 8
  %12 = and i8 %11, 6
  %13 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 15
  %14 = load ptr, ptr %13, align 4
  %15 = load i8, ptr %14, align 8
  %16 = or i8 %15, %12
  store i8 %16, ptr %14, align 8
  %17 = tail call fastcc i32 @skb_zerocopy_clone(ptr noundef %1, ptr noundef %0, i32 noundef 0)
  %18 = icmp ugt i32 %8, %2
  br i1 %18, label %19, label %68

19:                                               ; preds = %3
  %20 = sub i32 %8, %2
  %21 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 14
  %22 = load ptr, ptr %21, align 8
  %23 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 6
  %24 = load i32, ptr %23, align 4
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %27, label %26, !prof !13

26:                                               ; preds = %19
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22net/core/skbuff.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1984, 0\0A.popsection", ""() #21, !srcloc !46
  unreachable

27:                                               ; preds = %19
  %28 = getelementptr i8, ptr %22, i32 %20
  store ptr %28, ptr %21, align 8
  %29 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 5
  %30 = load i32, ptr %29, align 8
  %31 = add i32 %30, %20
  store i32 %31, ptr %29, align 8
  %32 = load ptr, ptr %13, align 4
  %33 = icmp ugt ptr %28, %32
  br i1 %33, label %34, label %36, !prof !12

34:                                               ; preds = %27
  %35 = tail call ptr @llvm.returnaddress(i32 0) #21
  tail call fastcc void @skb_over_panic(ptr noundef %1, i32 noundef %20, ptr noundef %35) #21
  unreachable

36:                                               ; preds = %27
  %37 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 17
  %38 = load ptr, ptr %37, align 4
  %39 = getelementptr i8, ptr %38, i32 %2
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 1 %22, ptr align 1 %39, i32 %20, i1 false) #21
  %40 = load ptr, ptr %9, align 4
  %41 = getelementptr inbounds %struct.skb_shared_info, ptr %40, i32 0, i32 2
  %42 = load i8, ptr %41, align 2
  %43 = icmp eq i8 %42, 0
  br i1 %43, label %56, label %44

44:                                               ; preds = %44, %36
  %45 = phi ptr [ %51, %44 ], [ %40, %36 ]
  %46 = phi i32 [ %50, %44 ], [ 0, %36 ]
  %47 = load ptr, ptr %13, align 4
  %48 = getelementptr %struct.skb_shared_info, ptr %47, i32 0, i32 12, i32 %46
  %49 = getelementptr %struct.skb_shared_info, ptr %45, i32 0, i32 12, i32 %46
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(12) %48, ptr noundef align 4 dereferenceable(12) %49, i32 12, i1 false) #21
  %50 = add nuw nsw i32 %46, 1
  %51 = load ptr, ptr %9, align 4
  %52 = getelementptr inbounds %struct.skb_shared_info, ptr %51, i32 0, i32 2
  %53 = load i8, ptr %52, align 2
  %54 = zext i8 %53 to i32
  %55 = icmp ult i32 %50, %54
  br i1 %55, label %44, label %56

56:                                               ; preds = %44, %36
  %57 = phi i8 [ 0, %36 ], [ %53, %44 ]
  %58 = load ptr, ptr %13, align 4
  %59 = getelementptr inbounds %struct.skb_shared_info, ptr %58, i32 0, i32 2
  store i8 %57, ptr %59, align 2
  %60 = load ptr, ptr %9, align 4
  %61 = getelementptr inbounds %struct.skb_shared_info, ptr %60, i32 0, i32 2
  store i8 0, ptr %61, align 2
  %62 = load i32, ptr %6, align 4
  store i32 %62, ptr %23, align 4
  %63 = load i32, ptr %29, align 8
  %64 = add i32 %63, %62
  store i32 %64, ptr %29, align 8
  store i32 0, ptr %6, align 4
  store i32 %2, ptr %4, align 8
  %65 = load ptr, ptr %37, align 4
  %66 = getelementptr i8, ptr %65, i32 %2
  %67 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 14
  store ptr %66, ptr %67, align 8
  br label %140

68:                                               ; preds = %3
  %69 = load ptr, ptr %9, align 4
  %70 = getelementptr inbounds %struct.skb_shared_info, ptr %69, i32 0, i32 2
  %71 = load i8, ptr %70, align 2
  %72 = zext i8 %71 to i32
  store i8 0, ptr %70, align 2
  %73 = load i32, ptr %4, align 8
  %74 = sub i32 %73, %2
  %75 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 6
  store i32 %74, ptr %75, align 4
  %76 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 5
  store i32 %74, ptr %76, align 8
  store i32 %2, ptr %4, align 8
  %77 = sub i32 %2, %8
  store i32 %77, ptr %6, align 4
  %78 = icmp eq i8 %71, 0
  br i1 %78, label %135, label %79

79:                                               ; preds = %131, %68
  %80 = phi i32 [ %132, %131 ], [ 0, %68 ]
  %81 = phi i32 [ %133, %131 ], [ 0, %68 ]
  %82 = phi i32 [ %86, %131 ], [ %8, %68 ]
  %83 = load ptr, ptr %9, align 4
  %84 = getelementptr %struct.skb_shared_info, ptr %83, i32 0, i32 12, i32 %81, i32 1
  %85 = load i32, ptr %84, align 4
  %86 = add i32 %85, %82
  %87 = icmp ugt i32 %86, %2
  br i1 %87, label %88, label %127

88:                                               ; preds = %79
  %89 = getelementptr %struct.skb_shared_info, ptr %83, i32 0, i32 12, i32 %81
  %90 = load ptr, ptr %13, align 4
  %91 = getelementptr %struct.skb_shared_info, ptr %90, i32 0, i32 12, i32 %80
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(12) %91, ptr noundef align 4 dereferenceable(12) %89, i32 12, i1 false) #21
  %92 = icmp ult i32 %82, %2
  br i1 %92, label %93, label %125

93:                                               ; preds = %88
  %94 = load ptr, ptr %9, align 4
  %95 = getelementptr %struct.skb_shared_info, ptr %94, i32 0, i32 12, i32 %81
  %96 = load ptr, ptr %95, align 4
  %97 = getelementptr inbounds %struct.page, ptr %96, i32 0, i32 1
  %98 = load volatile i32, ptr %97, align 4
  %99 = and i32 %98, 1
  %100 = icmp eq i32 %99, 0
  br i1 %100, label %103, label %101, !prof !13

101:                                              ; preds = %93
  %102 = add i32 %98, -1
  br label %105

103:                                              ; preds = %93
  %104 = ptrtoint ptr %96 to i32
  br label %105

105:                                              ; preds = %103, %101
  %106 = phi i32 [ %102, %101 ], [ %104, %103 ]
  %107 = inttoptr i32 %106 to ptr
  %108 = getelementptr inbounds %struct.page, ptr %107, i32 0, i32 3
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %108) #21, !srcloc !16
  %109 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %108, ptr %108, i32 1, ptr elementtype(i32) %108) #21, !srcloc !38
  %110 = load ptr, ptr %13, align 4
  %111 = sub i32 %2, %82
  %112 = getelementptr inbounds %struct.skb_shared_info, ptr %110, i32 0, i32 12, i32 0, i32 2
  %113 = load i32, ptr %112, align 4
  %114 = add i32 %113, %111
  store i32 %114, ptr %112, align 4
  %115 = load ptr, ptr %13, align 4
  %116 = getelementptr inbounds %struct.skb_shared_info, ptr %115, i32 0, i32 12, i32 0, i32 1
  %117 = load i32, ptr %116, align 4
  %118 = sub i32 %117, %111
  store i32 %118, ptr %116, align 4
  %119 = load ptr, ptr %9, align 4
  %120 = getelementptr %struct.skb_shared_info, ptr %119, i32 0, i32 12, i32 %81, i32 1
  store i32 %111, ptr %120, align 4
  %121 = load ptr, ptr %9, align 4
  %122 = getelementptr inbounds %struct.skb_shared_info, ptr %121, i32 0, i32 2
  %123 = load i8, ptr %122, align 2
  %124 = add i8 %123, 1
  store i8 %124, ptr %122, align 2
  br label %125

125:                                              ; preds = %105, %88
  %126 = add i32 %80, 1
  br label %131

127:                                              ; preds = %79
  %128 = getelementptr inbounds %struct.skb_shared_info, ptr %83, i32 0, i32 2
  %129 = load i8, ptr %128, align 2
  %130 = add i8 %129, 1
  store i8 %130, ptr %128, align 2
  br label %131

131:                                              ; preds = %127, %125
  %132 = phi i32 [ %126, %125 ], [ %80, %127 ]
  %133 = add nuw nsw i32 %81, 1
  %134 = icmp eq i32 %133, %72
  br i1 %134, label %135, label %79

135:                                              ; preds = %131, %68
  %136 = phi i32 [ 0, %68 ], [ %132, %131 ]
  %137 = trunc i32 %136 to i8
  %138 = load ptr, ptr %13, align 4
  %139 = getelementptr inbounds %struct.skb_shared_info, ptr %138, i32 0, i32 2
  store i8 %137, ptr %139, align 2
  br label %140

140:                                              ; preds = %135, %56
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @skb_shift(ptr noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 5
  %5 = load i32, ptr %4, align 8
  %6 = icmp ult i32 %5, %2
  br i1 %6, label %7, label %8, !prof !12

7:                                                ; preds = %3
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22net/core/skbuff.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 3501, 0\0A.popsection", ""() #21, !srcloc !67
  unreachable

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 6
  %10 = load i32, ptr %9, align 4
  %11 = icmp eq i32 %5, %10
  br i1 %11, label %12, label %250

12:                                               ; preds = %8
  %13 = icmp eq ptr %0, null
  br i1 %13, label %24, label %14

14:                                               ; preds = %12
  %15 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 15
  %16 = load ptr, ptr %15, align 4
  %17 = load i8, ptr %16, align 8
  %18 = and i8 %17, 1
  %19 = icmp eq i8 %18, 0
  br i1 %19, label %24, label %20

20:                                               ; preds = %14
  %21 = getelementptr inbounds %struct.skb_shared_info, ptr %16, i32 0, i32 11
  %22 = load ptr, ptr %21, align 4
  %23 = icmp eq ptr %22, null
  br i1 %23, label %24, label %250

24:                                               ; preds = %20, %14, %12
  %25 = icmp eq ptr %1, null
  br i1 %25, label %26, label %28

26:                                               ; preds = %24
  %27 = load ptr, ptr inttoptr (i32 148 to ptr), align 4
  br label %38

28:                                               ; preds = %24
  %29 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 15
  %30 = load ptr, ptr %29, align 4
  %31 = load i8, ptr %30, align 8
  %32 = and i8 %31, 1
  %33 = icmp eq i8 %32, 0
  br i1 %33, label %38, label %34

34:                                               ; preds = %28
  %35 = getelementptr inbounds %struct.skb_shared_info, ptr %30, i32 0, i32 11
  %36 = load ptr, ptr %35, align 4
  %37 = icmp eq ptr %36, null
  br i1 %37, label %38, label %250

38:                                               ; preds = %34, %28, %26
  %39 = phi ptr [ %27, %26 ], [ %30, %28 ], [ %30, %34 ]
  %40 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 15
  %41 = load ptr, ptr %40, align 4
  %42 = getelementptr inbounds %struct.skb_shared_info, ptr %41, i32 0, i32 2
  %43 = load i8, ptr %42, align 2
  %44 = zext i8 %43 to i32
  %45 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 15
  %46 = icmp eq i8 %43, 0
  br i1 %46, label %95, label %47

47:                                               ; preds = %38
  %48 = getelementptr inbounds %struct.skb_shared_info, ptr %39, i32 0, i32 12
  %49 = load ptr, ptr %48, align 4
  %50 = getelementptr inbounds %struct.skb_shared_info, ptr %39, i32 0, i32 12, i32 0, i32 2
  %51 = load i32, ptr %50, align 4
  br i1 %13, label %60, label %52

52:                                               ; preds = %47
  %53 = load i8, ptr %41, align 8
  %54 = and i8 %53, 1
  %55 = icmp eq i8 %54, 0
  br i1 %55, label %60, label %56

56:                                               ; preds = %52
  %57 = getelementptr inbounds %struct.skb_shared_info, ptr %41, i32 0, i32 11
  %58 = load ptr, ptr %57, align 4
  %59 = icmp eq ptr %58, null
  br i1 %59, label %60, label %95

60:                                               ; preds = %56, %52, %47
  %61 = add nsw i32 %44, -1
  %62 = getelementptr %struct.skb_shared_info, ptr %41, i32 0, i32 12, i32 %61
  %63 = load ptr, ptr %62, align 4
  %64 = icmp eq ptr %63, %49
  br i1 %64, label %65, label %95

65:                                               ; preds = %60
  %66 = getelementptr %struct.skb_shared_info, ptr %41, i32 0, i32 12, i32 %61, i32 2
  %67 = load i32, ptr %66, align 4
  %68 = getelementptr %struct.skb_shared_info, ptr %41, i32 0, i32 12, i32 %61, i32 1
  %69 = load i32, ptr %68, align 4
  %70 = add i32 %69, %67
  %71 = icmp eq i32 %70, %51
  br i1 %71, label %72, label %95

72:                                               ; preds = %65
  %73 = getelementptr inbounds %struct.skb_shared_info, ptr %39, i32 0, i32 12, i32 0, i32 1
  %74 = load i32, ptr %73, align 4
  %75 = sub i32 %2, %74
  %76 = icmp slt i32 %75, 0
  br i1 %76, label %77, label %95

77:                                               ; preds = %72
  %78 = tail call fastcc i32 @skb_prepare_for_shift(ptr noundef %1)
  %79 = icmp eq i32 %78, 0
  br i1 %79, label %80, label %250

80:                                               ; preds = %77
  %81 = tail call fastcc i32 @skb_prepare_for_shift(ptr noundef %0)
  %82 = icmp eq i32 %81, 0
  br i1 %82, label %83, label %250

83:                                               ; preds = %80
  %84 = load ptr, ptr %45, align 4
  %85 = load ptr, ptr %40, align 4
  %86 = getelementptr %struct.skb_shared_info, ptr %85, i32 0, i32 12, i32 %61, i32 1
  %87 = load i32, ptr %86, align 4
  %88 = add i32 %87, %2
  store i32 %88, ptr %86, align 4
  %89 = getelementptr inbounds %struct.skb_shared_info, ptr %84, i32 0, i32 12, i32 0, i32 1
  %90 = load i32, ptr %89, align 4
  %91 = sub i32 %90, %2
  store i32 %91, ptr %89, align 4
  %92 = getelementptr inbounds %struct.skb_shared_info, ptr %84, i32 0, i32 12, i32 0, i32 2
  %93 = load i32, ptr %92, align 4
  %94 = add i32 %93, %2
  store i32 %94, ptr %92, align 4
  br label %227

95:                                               ; preds = %72, %65, %60, %56, %38
  %96 = phi i32 [ 0, %65 ], [ 0, %38 ], [ 1, %72 ], [ 0, %56 ], [ 0, %60 ]
  %97 = phi i32 [ -1, %65 ], [ -1, %38 ], [ %61, %72 ], [ -1, %56 ], [ -1, %60 ]
  %98 = phi i32 [ %2, %65 ], [ %2, %38 ], [ %75, %72 ], [ %2, %56 ], [ %2, %60 ]
  %99 = icmp eq i32 %5, %2
  br i1 %99, label %100, label %107

100:                                              ; preds = %95
  %101 = getelementptr inbounds %struct.skb_shared_info, ptr %39, i32 0, i32 2
  %102 = load i8, ptr %101, align 2
  %103 = zext i8 %102 to i32
  %104 = sub nsw i32 %103, %96
  %105 = sub nsw i32 17, %44
  %106 = icmp ugt i32 %104, %105
  br i1 %106, label %250, label %107

107:                                              ; preds = %100, %95
  %108 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 11
  %109 = load i8, ptr %108, align 2
  %110 = and i8 %109, 1
  %111 = icmp eq i8 %110, 0
  br i1 %111, label %122, label %112

112:                                              ; preds = %107
  %113 = getelementptr inbounds %struct.skb_shared_info, ptr %39, i32 0, i32 10
  %114 = load volatile i32, ptr %113, align 4
  %115 = and i32 %114, 65535
  %116 = icmp eq i32 %115, 1
  br i1 %116, label %122, label %117

117:                                              ; preds = %112
  %118 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 18
  %119 = load i32, ptr %118, align 8
  %120 = tail call i32 @pskb_expand_head(ptr noundef %1, i32 noundef 0, i32 noundef 0, i32 noundef 2592) #21
  store i32 %119, ptr %118, align 8
  %121 = icmp eq i32 %120, 0
  br i1 %121, label %122, label %250

122:                                              ; preds = %117, %112, %107
  %123 = tail call fastcc i32 @skb_prepare_for_shift(ptr noundef %0)
  %124 = icmp eq i32 %123, 0
  br i1 %124, label %125, label %250

125:                                              ; preds = %122
  %126 = icmp sgt i32 %98, 0
  br i1 %126, label %127, label %176

127:                                              ; preds = %145, %125
  %128 = phi i32 [ %147, %145 ], [ %98, %125 ]
  %129 = phi i32 [ %149, %145 ], [ %44, %125 ]
  %130 = phi i32 [ %148, %145 ], [ %96, %125 ]
  %131 = load ptr, ptr %45, align 4
  %132 = getelementptr inbounds %struct.skb_shared_info, ptr %131, i32 0, i32 2
  %133 = load i8, ptr %132, align 2
  %134 = zext i8 %133 to i32
  %135 = icmp ult i32 %130, %134
  br i1 %135, label %136, label %176

136:                                              ; preds = %127
  %137 = icmp eq i32 %129, 17
  br i1 %137, label %250, label %138

138:                                              ; preds = %136
  %139 = getelementptr %struct.skb_shared_info, ptr %131, i32 0, i32 12, i32 %130
  %140 = load ptr, ptr %40, align 4
  %141 = getelementptr %struct.skb_shared_info, ptr %140, i32 0, i32 12, i32 %129
  %142 = getelementptr %struct.skb_shared_info, ptr %131, i32 0, i32 12, i32 %130, i32 1
  %143 = load i32, ptr %142, align 4
  %144 = icmp ult i32 %128, %143
  br i1 %144, label %151, label %145

145:                                              ; preds = %138
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(12) %141, ptr noundef align 4 dereferenceable(12) %139, i32 12, i1 false)
  %146 = load i32, ptr %142, align 4
  %147 = sub i32 %128, %146
  %148 = add nuw nsw i32 %130, 1
  %149 = add nuw nsw i32 %129, 1
  %150 = icmp sgt i32 %147, 0
  br i1 %150, label %127, label %176

151:                                              ; preds = %138
  %152 = load ptr, ptr %139, align 4
  %153 = getelementptr inbounds %struct.page, ptr %152, i32 0, i32 1
  %154 = load volatile i32, ptr %153, align 4
  %155 = and i32 %154, 1
  %156 = icmp eq i32 %155, 0
  br i1 %156, label %159, label %157, !prof !13

157:                                              ; preds = %151
  %158 = add i32 %154, -1
  br label %161

159:                                              ; preds = %151
  %160 = ptrtoint ptr %152 to i32
  br label %161

161:                                              ; preds = %159, %157
  %162 = phi i32 [ %158, %157 ], [ %160, %159 ]
  %163 = inttoptr i32 %162 to ptr
  %164 = getelementptr inbounds %struct.page, ptr %163, i32 0, i32 3
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %164) #21, !srcloc !16
  %165 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %164, ptr %164, i32 1, ptr elementtype(i32) %164) #21, !srcloc !38
  %166 = load ptr, ptr %139, align 4
  store ptr %166, ptr %141, align 4
  %167 = getelementptr %struct.skb_shared_info, ptr %131, i32 0, i32 12, i32 %130, i32 2
  %168 = load i32, ptr %167, align 4
  %169 = getelementptr %struct.skb_shared_info, ptr %140, i32 0, i32 12, i32 %129, i32 2
  store i32 %168, ptr %169, align 4
  %170 = getelementptr %struct.skb_shared_info, ptr %140, i32 0, i32 12, i32 %129, i32 1
  store i32 %128, ptr %170, align 4
  %171 = load i32, ptr %167, align 4
  %172 = add i32 %171, %128
  store i32 %172, ptr %167, align 4
  %173 = load i32, ptr %142, align 4
  %174 = sub i32 %173, %128
  store i32 %174, ptr %142, align 4
  %175 = add nuw i32 %129, 1
  br label %176

176:                                              ; preds = %161, %145, %127, %125
  %177 = phi i32 [ %130, %161 ], [ %96, %125 ], [ %130, %127 ], [ %148, %145 ]
  %178 = phi i32 [ %175, %161 ], [ %44, %125 ], [ %129, %127 ], [ %149, %145 ]
  %179 = phi i32 [ 0, %161 ], [ %98, %125 ], [ %128, %127 ], [ %147, %145 ]
  %180 = trunc i32 %178 to i8
  %181 = load ptr, ptr %40, align 4
  %182 = getelementptr inbounds %struct.skb_shared_info, ptr %181, i32 0, i32 2
  store i8 %180, ptr %182, align 2
  %183 = icmp sgt i32 %97, -1
  br i1 %183, label %184, label %195

184:                                              ; preds = %176
  %185 = load ptr, ptr %45, align 4
  %186 = getelementptr inbounds %struct.skb_shared_info, ptr %185, i32 0, i32 12
  %187 = load ptr, ptr %40, align 4
  %188 = getelementptr inbounds %struct.skb_shared_info, ptr %185, i32 0, i32 12, i32 0, i32 1
  %189 = load i32, ptr %188, align 4
  %190 = getelementptr %struct.skb_shared_info, ptr %187, i32 0, i32 12, i32 %97, i32 1
  %191 = load i32, ptr %190, align 4
  %192 = add i32 %191, %189
  store i32 %192, ptr %190, align 4
  %193 = load i8, ptr %108, align 2
  %194 = icmp slt i8 %193, 0
  tail call fastcc void @__skb_frag_unref(ptr noundef %186, i1 noundef zeroext %194)
  br label %195

195:                                              ; preds = %184, %176
  %196 = load ptr, ptr %45, align 4
  %197 = getelementptr inbounds %struct.skb_shared_info, ptr %196, i32 0, i32 2
  %198 = load i8, ptr %197, align 2
  %199 = zext i8 %198 to i32
  %200 = icmp ult i32 %177, %199
  br i1 %200, label %201, label %216

201:                                              ; preds = %201, %195
  %202 = phi ptr [ %209, %201 ], [ %196, %195 ]
  %203 = phi i32 [ %205, %201 ], [ 0, %195 ]
  %204 = phi i32 [ %207, %201 ], [ %177, %195 ]
  %205 = add nuw nsw i32 %203, 1
  %206 = getelementptr %struct.skb_shared_info, ptr %202, i32 0, i32 12, i32 %203
  %207 = add nuw nsw i32 %204, 1
  %208 = getelementptr %struct.skb_shared_info, ptr %202, i32 0, i32 12, i32 %204
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(12) %206, ptr noundef align 4 dereferenceable(12) %208, i32 12, i1 false)
  %209 = load ptr, ptr %45, align 4
  %210 = getelementptr inbounds %struct.skb_shared_info, ptr %209, i32 0, i32 2
  %211 = load i8, ptr %210, align 2
  %212 = zext i8 %211 to i32
  %213 = icmp ult i32 %207, %212
  br i1 %213, label %201, label %214

214:                                              ; preds = %201
  %215 = trunc i32 %205 to i8
  br label %216

216:                                              ; preds = %214, %195
  %217 = phi ptr [ %196, %195 ], [ %209, %214 ]
  %218 = phi i8 [ 0, %195 ], [ %215, %214 ]
  %219 = getelementptr inbounds %struct.skb_shared_info, ptr %217, i32 0, i32 2
  store i8 %218, ptr %219, align 2
  %220 = icmp sgt i32 %179, 0
  br i1 %220, label %221, label %227

221:                                              ; preds = %216
  %222 = load ptr, ptr %45, align 4
  %223 = getelementptr inbounds %struct.skb_shared_info, ptr %222, i32 0, i32 2
  %224 = load i8, ptr %223, align 2
  %225 = icmp eq i8 %224, 0
  br i1 %225, label %226, label %227, !prof !12

226:                                              ; preds = %221
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22net/core/skbuff.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 3596, 0\0A.popsection", ""() #21, !srcloc !68
  unreachable

227:                                              ; preds = %221, %216, %83
  %228 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 13
  %229 = load i16, ptr %228, align 8
  %230 = or i16 %229, 96
  store i16 %230, ptr %228, align 8
  %231 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 13
  %232 = load i16, ptr %231, align 8
  %233 = or i16 %232, 96
  store i16 %233, ptr %231, align 8
  %234 = load i32, ptr %4, align 8
  %235 = sub i32 %234, %2
  store i32 %235, ptr %4, align 8
  %236 = load i32, ptr %9, align 4
  %237 = sub i32 %236, %2
  store i32 %237, ptr %9, align 4
  %238 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 18
  %239 = load i32, ptr %238, align 8
  %240 = sub i32 %239, %2
  store i32 %240, ptr %238, align 8
  %241 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 5
  %242 = load i32, ptr %241, align 8
  %243 = add i32 %242, %2
  store i32 %243, ptr %241, align 8
  %244 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 6
  %245 = load i32, ptr %244, align 4
  %246 = add i32 %245, %2
  store i32 %246, ptr %244, align 4
  %247 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 18
  %248 = load i32, ptr %247, align 8
  %249 = add i32 %248, %2
  store i32 %249, ptr %247, align 8
  br label %250

250:                                              ; preds = %227, %136, %122, %117, %100, %80, %77, %34, %20, %8
  %251 = phi i32 [ %2, %227 ], [ 0, %8 ], [ 0, %34 ], [ 0, %20 ], [ 0, %80 ], [ 0, %77 ], [ 0, %100 ], [ 0, %122 ], [ 0, %117 ], [ 0, %136 ]
  ret i32 %251
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @skb_prepare_for_shift(ptr noundef %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 11
  %3 = load i8, ptr %2, align 2
  %4 = and i8 %3, 1
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %17, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 15
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.skb_shared_info, ptr %8, i32 0, i32 10
  %10 = load volatile i32, ptr %9, align 4
  %11 = and i32 %10, 65535
  %12 = icmp eq i32 %11, 1
  br i1 %12, label %17, label %13

13:                                               ; preds = %6
  %14 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 18
  %15 = load i32, ptr %14, align 8
  %16 = tail call i32 @pskb_expand_head(ptr noundef %0, i32 noundef 0, i32 noundef 0, i32 noundef 2592) #21
  store i32 %15, ptr %14, align 8
  br label %17

17:                                               ; preds = %13, %6, %1
  %18 = phi i32 [ %16, %13 ], [ 0, %6 ], [ 0, %1 ]
  ret i32 %18
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @__skb_frag_unref(ptr nocapture noundef readonly %0, i1 noundef zeroext %1) unnamed_addr #3 {
  %3 = load ptr, ptr %0, align 4
  br i1 %1, label %4, label %6

4:                                                ; preds = %2
  %5 = tail call zeroext i1 @page_pool_return_skb_page(ptr noundef %3) #21
  br i1 %5, label %23, label %6

6:                                                ; preds = %4, %2
  %7 = getelementptr inbounds %struct.page, ptr %3, i32 0, i32 1
  %8 = load volatile i32, ptr %7, align 4
  %9 = and i32 %8, 1
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %13, label %11, !prof !13

11:                                               ; preds = %6
  %12 = add i32 %8, -1
  br label %15

13:                                               ; preds = %6
  %14 = ptrtoint ptr %3 to i32
  br label %15

15:                                               ; preds = %13, %11
  %16 = phi i32 [ %12, %11 ], [ %14, %13 ]
  %17 = inttoptr i32 %16 to ptr
  %18 = getelementptr inbounds %struct.page, ptr %17, i32 0, i32 3
  tail call void asm sideeffect "dmb ish", "~{memory}"() #21, !srcloc !29
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %18) #21, !srcloc !16
  %19 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %18, ptr %18, i32 1, ptr elementtype(i32) %18) #21, !srcloc !30
  %20 = extractvalue { i32, i32 } %19, 0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #21, !srcloc !31
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %15
  tail call void @__put_page(ptr noundef %17) #21
  br label %23

23:                                               ; preds = %22, %15, %4
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn writeonly uwtable(sync)
define dso_local void @skb_prepare_seq_read(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr nocapture noundef writeonly %3) #17 {
  store i32 %1, ptr %3, align 4
  %5 = getelementptr inbounds %struct.skb_seq_state, ptr %3, i32 0, i32 1
  store i32 %2, ptr %5, align 4
  %6 = getelementptr inbounds %struct.skb_seq_state, ptr %3, i32 0, i32 5
  store ptr %0, ptr %6, align 4
  %7 = getelementptr inbounds %struct.skb_seq_state, ptr %3, i32 0, i32 4
  store ptr %0, ptr %7, align 4
  %8 = getelementptr inbounds %struct.skb_seq_state, ptr %3, i32 0, i32 3
  store i32 0, ptr %8, align 4
  %9 = getelementptr inbounds %struct.skb_seq_state, ptr %3, i32 0, i32 2
  store i32 0, ptr %9, align 4
  %10 = getelementptr inbounds %struct.skb_seq_state, ptr %3, i32 0, i32 6
  store ptr null, ptr %10, align 4
  %11 = getelementptr inbounds %struct.skb_seq_state, ptr %3, i32 0, i32 7
  store i32 0, ptr %11, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @skb_seq_read(i32 noundef %0, ptr nocapture noundef writeonly %1, ptr nocapture noundef %2) #0 {
  %4 = load i32, ptr %2, align 4
  %5 = add i32 %4, %0
  %6 = getelementptr inbounds %struct.skb_seq_state, ptr %2, i32 0, i32 1
  %7 = load i32, ptr %6, align 4
  %8 = icmp ult i32 %5, %7
  br i1 %8, label %9, label %17, !prof !13

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.skb_seq_state, ptr %2, i32 0, i32 5
  %11 = getelementptr inbounds %struct.skb_seq_state, ptr %2, i32 0, i32 3
  %12 = getelementptr inbounds %struct.skb_seq_state, ptr %2, i32 0, i32 6
  %13 = getelementptr inbounds %struct.skb_seq_state, ptr %2, i32 0, i32 2
  %14 = getelementptr inbounds %struct.skb_seq_state, ptr %2, i32 0, i32 7
  %15 = getelementptr inbounds %struct.skb_seq_state, ptr %2, i32 0, i32 4
  %16 = load ptr, ptr %10, align 4
  br label %26

17:                                               ; preds = %3
  %18 = getelementptr inbounds %struct.skb_seq_state, ptr %2, i32 0, i32 6
  %19 = load ptr, ptr %18, align 4
  %20 = icmp eq ptr %19, null
  br i1 %20, label %164, label %21

21:                                               ; preds = %17
  tail call void @kunmap_local_indexed(ptr noundef nonnull %19) #21
  tail call void asm sideeffect "", "~{memory}"() #21, !srcloc !25
  %22 = tail call ptr @llvm.thread.pointer() #21
  %23 = getelementptr inbounds %struct.task_struct, ptr %22, i32 0, i32 149
  %24 = load i32, ptr %23, align 8
  %25 = add i32 %24, -1
  store i32 %25, ptr %23, align 8
  tail call void asm sideeffect "", "~{memory}"() #21, !srcloc !26
  store ptr null, ptr %18, align 4
  br label %164

26:                                               ; preds = %159, %9
  %27 = phi ptr [ %160, %159 ], [ %16, %9 ]
  %28 = getelementptr inbounds %struct.sk_buff, ptr %27, i32 0, i32 5
  %29 = load i32, ptr %28, align 8
  %30 = getelementptr inbounds %struct.sk_buff, ptr %27, i32 0, i32 6
  %31 = load i32, ptr %30, align 4
  %32 = sub i32 %29, %31
  %33 = load i32, ptr %11, align 4
  %34 = add i32 %32, %33
  %35 = icmp ugt i32 %34, %5
  br i1 %35, label %36, label %45

36:                                               ; preds = %26
  %37 = load ptr, ptr %12, align 4
  %38 = icmp eq ptr %37, null
  br i1 %38, label %39, label %45

39:                                               ; preds = %36
  %40 = getelementptr inbounds %struct.sk_buff, ptr %27, i32 0, i32 17
  %41 = load ptr, ptr %40, align 4
  %42 = sub i32 %5, %33
  %43 = getelementptr i8, ptr %41, i32 %42
  store ptr %43, ptr %1, align 4
  %44 = sub i32 %34, %5
  br label %164

45:                                               ; preds = %36, %26
  %46 = load i32, ptr %13, align 4
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %48, label %52

48:                                               ; preds = %45
  %49 = load ptr, ptr %12, align 4
  %50 = icmp eq ptr %49, null
  br i1 %50, label %51, label %52

51:                                               ; preds = %48
  store i32 %34, ptr %11, align 4
  br label %52

52:                                               ; preds = %51, %48, %45
  %53 = phi i32 [ %34, %51 ], [ %33, %48 ], [ %33, %45 ]
  %54 = getelementptr inbounds %struct.sk_buff, ptr %27, i32 0, i32 15
  %55 = load ptr, ptr %54, align 4
  %56 = getelementptr inbounds %struct.skb_shared_info, ptr %55, i32 0, i32 2
  %57 = load i8, ptr %56, align 2
  %58 = zext i8 %57 to i32
  %59 = icmp ult i32 %46, %58
  br i1 %59, label %60, label %140

60:                                               ; preds = %131, %52
  %61 = phi i32 [ %121, %131 ], [ %53, %52 ]
  %62 = phi ptr [ %135, %131 ], [ %55, %52 ]
  %63 = phi i32 [ %132, %131 ], [ %46, %52 ]
  %64 = getelementptr %struct.skb_shared_info, ptr %62, i32 0, i32 12, i32 %63
  %65 = getelementptr %struct.skb_shared_info, ptr %62, i32 0, i32 12, i32 %63, i32 2
  %66 = load i32, ptr %65, align 4
  %67 = getelementptr %struct.skb_shared_info, ptr %62, i32 0, i32 12, i32 %63, i32 1
  %68 = load i32, ptr %67, align 4
  %69 = load ptr, ptr %64, align 4
  %70 = load i32, ptr %69, align 4
  %71 = lshr i32 %70, 30
  %72 = icmp eq i32 %71, 2
  br i1 %72, label %78, label %73

73:                                               ; preds = %60
  %74 = icmp eq i32 %71, 3
  %75 = load i32, ptr @movable_zone, align 4
  %76 = icmp eq i32 %75, 2
  %77 = select i1 %74, i1 %76, i1 false
  br i1 %77, label %78, label %86

78:                                               ; preds = %73, %60
  %79 = load i32, ptr %14, align 4
  %80 = add i32 %79, %66
  %81 = lshr i32 %80, 12
  %82 = and i32 %80, 4095
  %83 = sub i32 %68, %79
  %84 = sub nuw nsw i32 4096, %82
  %85 = tail call i32 @llvm.umin.i32(i32 %83, i32 %84)
  br label %86

86:                                               ; preds = %78, %73
  %87 = phi i32 [ %81, %78 ], [ 0, %73 ]
  %88 = phi i32 [ %82, %78 ], [ %66, %73 ]
  %89 = phi i32 [ %85, %78 ], [ %68, %73 ]
  %90 = add i32 %61, %89
  %91 = icmp ugt i32 %90, %5
  %92 = load ptr, ptr %12, align 4
  %93 = icmp eq ptr %92, null
  br i1 %91, label %94, label %112

94:                                               ; preds = %86
  br i1 %93, label %95, label %105

95:                                               ; preds = %94
  %96 = getelementptr %struct.page, ptr %69, i32 %87
  %97 = load i32, ptr @pgprot_kernel, align 4
  %98 = or i32 %97, 512
  tail call void asm sideeffect "", "~{memory}"() #21, !srcloc !23
  %99 = tail call ptr @llvm.thread.pointer() #21
  %100 = getelementptr inbounds %struct.task_struct, ptr %99, i32 0, i32 149
  %101 = load i32, ptr %100, align 8
  %102 = add i32 %101, 1
  store i32 %102, ptr %100, align 8
  tail call void asm sideeffect "", "~{memory}"() #21, !srcloc !24
  %103 = tail call ptr @__kmap_local_page_prot(ptr noundef %96, i32 noundef %98) #21
  store ptr %103, ptr %12, align 4
  %104 = load i32, ptr %11, align 4
  br label %105

105:                                              ; preds = %95, %94
  %106 = phi i32 [ %61, %94 ], [ %104, %95 ]
  %107 = phi ptr [ %92, %94 ], [ %103, %95 ]
  %108 = getelementptr i8, ptr %107, i32 %88
  %109 = sub i32 %5, %106
  %110 = getelementptr i8, ptr %108, i32 %109
  store ptr %110, ptr %1, align 4
  %111 = sub i32 %90, %5
  br label %164

112:                                              ; preds = %86
  br i1 %93, label %120, label %113

113:                                              ; preds = %112
  tail call void @kunmap_local_indexed(ptr noundef nonnull %92) #21
  tail call void asm sideeffect "", "~{memory}"() #21, !srcloc !25
  %114 = tail call ptr @llvm.thread.pointer() #21
  %115 = getelementptr inbounds %struct.task_struct, ptr %114, i32 0, i32 149
  %116 = load i32, ptr %115, align 8
  %117 = add i32 %116, -1
  store i32 %117, ptr %115, align 8
  tail call void asm sideeffect "", "~{memory}"() #21, !srcloc !26
  store ptr null, ptr %12, align 4
  %118 = load i32, ptr %11, align 4
  %119 = add i32 %118, %89
  br label %120

120:                                              ; preds = %113, %112
  %121 = phi i32 [ %119, %113 ], [ %90, %112 ]
  store i32 %121, ptr %11, align 4
  %122 = load i32, ptr %14, align 4
  %123 = add i32 %122, %89
  store i32 %123, ptr %14, align 4
  %124 = load i32, ptr %67, align 4
  %125 = icmp eq i32 %123, %124
  br i1 %125, label %128, label %126

126:                                              ; preds = %120
  %127 = load i32, ptr %13, align 4
  br label %131

128:                                              ; preds = %120
  store i32 0, ptr %14, align 4
  %129 = load i32, ptr %13, align 4
  %130 = add i32 %129, 1
  store i32 %130, ptr %13, align 4
  br label %131

131:                                              ; preds = %128, %126
  %132 = phi i32 [ %127, %126 ], [ %130, %128 ]
  %133 = load ptr, ptr %10, align 4
  %134 = getelementptr inbounds %struct.sk_buff, ptr %133, i32 0, i32 15
  %135 = load ptr, ptr %134, align 4
  %136 = getelementptr inbounds %struct.skb_shared_info, ptr %135, i32 0, i32 2
  %137 = load i8, ptr %136, align 2
  %138 = zext i8 %137 to i32
  %139 = icmp ult i32 %132, %138
  br i1 %139, label %60, label %149

140:                                              ; preds = %52
  %141 = load ptr, ptr %12, align 4
  %142 = icmp eq ptr %141, null
  br i1 %142, label %149, label %143

143:                                              ; preds = %140
  tail call void @kunmap_local_indexed(ptr noundef nonnull %141) #21
  tail call void asm sideeffect "", "~{memory}"() #21, !srcloc !25
  %144 = tail call ptr @llvm.thread.pointer() #21
  %145 = getelementptr inbounds %struct.task_struct, ptr %144, i32 0, i32 149
  %146 = load i32, ptr %145, align 8
  %147 = add i32 %146, -1
  store i32 %147, ptr %145, align 8
  tail call void asm sideeffect "", "~{memory}"() #21, !srcloc !26
  store ptr null, ptr %12, align 4
  %148 = load ptr, ptr %10, align 4
  br label %149

149:                                              ; preds = %143, %140, %131
  %150 = phi ptr [ %148, %143 ], [ %27, %140 ], [ %133, %131 ]
  %151 = load ptr, ptr %15, align 4
  %152 = icmp eq ptr %151, %150
  br i1 %152, label %153, label %161

153:                                              ; preds = %149
  %154 = getelementptr inbounds %struct.sk_buff, ptr %150, i32 0, i32 15
  %155 = load ptr, ptr %154, align 4
  %156 = getelementptr inbounds %struct.skb_shared_info, ptr %155, i32 0, i32 6
  %157 = load ptr, ptr %156, align 8
  %158 = icmp eq ptr %157, null
  br i1 %158, label %161, label %159

159:                                              ; preds = %161, %153
  %160 = phi ptr [ %157, %153 ], [ %162, %161 ]
  store ptr %160, ptr %10, align 4
  store i32 0, ptr %13, align 4
  br label %26

161:                                              ; preds = %153, %149
  %162 = load ptr, ptr %150, align 8
  %163 = icmp eq ptr %162, null
  br i1 %163, label %164, label %159

164:                                              ; preds = %161, %105, %39, %21, %17
  %165 = phi i32 [ %44, %39 ], [ 0, %21 ], [ 0, %17 ], [ %111, %105 ], [ 0, %161 ]
  ret i32 %165
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @skb_abort_seq_read(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.skb_seq_state, ptr %0, i32 0, i32 6
  %3 = load ptr, ptr %2, align 4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %10, label %5

5:                                                ; preds = %1
  tail call void @kunmap_local_indexed(ptr noundef nonnull %3) #21
  tail call void asm sideeffect "", "~{memory}"() #21, !srcloc !25
  %6 = tail call ptr @llvm.thread.pointer() #21
  %7 = getelementptr inbounds %struct.task_struct, ptr %6, i32 0, i32 149
  %8 = load i32, ptr %7, align 8
  %9 = add i32 %8, -1
  store i32 %9, ptr %7, align 8
  tail call void asm sideeffect "", "~{memory}"() #21, !srcloc !26
  br label %10

10:                                               ; preds = %5, %1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @skb_find_text(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef %3) #0 {
  %5 = alloca %struct.ts_state, align 4
  call void @llvm.lifetime.start.p0(i64 52, ptr nonnull %5) #21
  %6 = getelementptr inbounds i8, ptr %5, i32 36
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(52) %6, i8 0, i32 16, i1 false), !annotation !56
  %7 = getelementptr inbounds %struct.ts_config, ptr %3, i32 0, i32 2
  store ptr @skb_ts_get_next_block, ptr %7, align 4
  %8 = getelementptr inbounds %struct.ts_config, ptr %3, i32 0, i32 3
  store ptr @skb_ts_finish, ptr %8, align 4
  %9 = getelementptr inbounds %struct.ts_state, ptr %5, i32 0, i32 1
  store i32 %1, ptr %9, align 4
  %10 = getelementptr inbounds %struct.ts_state, ptr %5, i32 0, i32 1, i32 4
  store i32 %2, ptr %10, align 4
  %11 = getelementptr inbounds %struct.ts_state, ptr %5, i32 0, i32 1, i32 20
  store ptr %0, ptr %11, align 4
  %12 = getelementptr inbounds %struct.ts_state, ptr %5, i32 0, i32 1, i32 16
  store ptr %0, ptr %12, align 4
  %13 = getelementptr inbounds %struct.ts_state, ptr %5, i32 0, i32 1, i32 12
  store i32 0, ptr %13, align 4
  %14 = getelementptr inbounds %struct.ts_state, ptr %5, i32 0, i32 1, i32 8
  store i32 0, ptr %14, align 4
  %15 = getelementptr inbounds %struct.ts_state, ptr %5, i32 0, i32 1, i32 24
  store ptr null, ptr %15, align 4
  %16 = getelementptr inbounds %struct.ts_state, ptr %5, i32 0, i32 1, i32 28
  store i32 0, ptr %16, align 4
  store i32 0, ptr %5, align 4
  %17 = load ptr, ptr %3, align 4
  %18 = getelementptr inbounds %struct.ts_ops, ptr %17, i32 0, i32 2
  %19 = load ptr, ptr %18, align 4
  %20 = call i32 %19(ptr noundef %3, ptr noundef nonnull %5) #21
  %21 = load ptr, ptr %8, align 4
  %22 = icmp eq ptr %21, null
  br i1 %22, label %24, label %23

23:                                               ; preds = %4
  call void %21(ptr noundef %3, ptr noundef nonnull %5) #21
  br label %24

24:                                               ; preds = %23, %4
  %25 = sub i32 %2, %1
  %26 = icmp ugt i32 %20, %25
  %27 = select i1 %26, i32 -1, i32 %20
  call void @llvm.lifetime.end.p0(i64 52, ptr nonnull %5) #21
  ret i32 %27
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @skb_ts_get_next_block(i32 noundef %0, ptr nocapture noundef writeonly %1, ptr nocapture noundef readnone %2, ptr nocapture noundef %3) #0 {
  %5 = getelementptr inbounds %struct.ts_state, ptr %3, i32 0, i32 1
  %6 = tail call i32 @skb_seq_read(i32 noundef %0, ptr noundef %1, ptr noundef %5)
  ret i32 %6
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @skb_ts_finish(ptr nocapture noundef readnone %0, ptr nocapture noundef readonly %1) #0 {
  %3 = getelementptr inbounds %struct.ts_state, ptr %1, i32 0, i32 1, i32 24
  %4 = load ptr, ptr %3, align 4
  %5 = icmp eq ptr %4, null
  br i1 %5, label %11, label %6

6:                                                ; preds = %2
  tail call void @kunmap_local_indexed(ptr noundef nonnull %4) #21
  tail call void asm sideeffect "", "~{memory}"() #21, !srcloc !25
  %7 = tail call ptr @llvm.thread.pointer() #21
  %8 = getelementptr inbounds %struct.task_struct, ptr %7, i32 0, i32 149
  %9 = load i32, ptr %8, align 8
  %10 = add i32 %9, -1
  store i32 %10, ptr %8, align 8
  tail call void asm sideeffect "", "~{memory}"() #21, !srcloc !26
  br label %11

11:                                               ; preds = %6, %2
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @skb_append_pagefrags(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) #0 {
  %5 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 15
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.skb_shared_info, ptr %6, i32 0, i32 2
  %8 = load i8, ptr %7, align 2
  %9 = zext i8 %8 to i32
  %10 = icmp eq ptr %0, null
  br i1 %10, label %19, label %11

11:                                               ; preds = %4
  %12 = load i8, ptr %6, align 8
  %13 = and i8 %12, 1
  %14 = icmp eq i8 %13, 0
  br i1 %14, label %19, label %15

15:                                               ; preds = %11
  %16 = getelementptr inbounds %struct.skb_shared_info, ptr %6, i32 0, i32 11
  %17 = load ptr, ptr %16, align 4
  %18 = icmp ne ptr %17, null
  br label %19

19:                                               ; preds = %15, %11, %4
  %20 = phi i1 [ %18, %15 ], [ false, %11 ], [ false, %4 ]
  %21 = icmp eq i8 %8, 0
  %22 = or i1 %21, %20
  br i1 %22, label %37, label %23

23:                                               ; preds = %19
  %24 = add nsw i32 %9, -1
  %25 = getelementptr %struct.skb_shared_info, ptr %6, i32 0, i32 12, i32 %24
  %26 = load ptr, ptr %25, align 4
  %27 = icmp eq ptr %26, %1
  br i1 %27, label %28, label %37

28:                                               ; preds = %23
  %29 = getelementptr %struct.skb_shared_info, ptr %6, i32 0, i32 12, i32 %24, i32 2
  %30 = load i32, ptr %29, align 4
  %31 = getelementptr %struct.skb_shared_info, ptr %6, i32 0, i32 12, i32 %24, i32 1
  %32 = load i32, ptr %31, align 4
  %33 = add i32 %32, %30
  %34 = icmp eq i32 %33, %2
  br i1 %34, label %35, label %37

35:                                               ; preds = %28
  %36 = add i32 %32, %3
  store i32 %36, ptr %31, align 4
  br label %80

37:                                               ; preds = %28, %23, %19
  %38 = icmp ult i8 %8, 17
  br i1 %38, label %39, label %80

39:                                               ; preds = %37
  %40 = getelementptr inbounds %struct.page, ptr %1, i32 0, i32 1
  %41 = load volatile i32, ptr %40, align 4
  %42 = and i32 %41, 1
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %46, label %44, !prof !13

44:                                               ; preds = %39
  %45 = add i32 %41, -1
  br label %48

46:                                               ; preds = %39
  %47 = ptrtoint ptr %1 to i32
  br label %48

48:                                               ; preds = %46, %44
  %49 = phi i32 [ %45, %44 ], [ %47, %46 ]
  %50 = inttoptr i32 %49 to ptr
  %51 = getelementptr inbounds %struct.page, ptr %50, i32 0, i32 3
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %51) #21, !srcloc !16
  %52 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %51, ptr %51, i32 1, ptr elementtype(i32) %51) #21, !srcloc !38
  %53 = load ptr, ptr %5, align 4
  %54 = getelementptr %struct.skb_shared_info, ptr %53, i32 0, i32 12, i32 %9
  store ptr %1, ptr %54, align 4
  %55 = getelementptr %struct.skb_shared_info, ptr %53, i32 0, i32 12, i32 %9, i32 2
  store i32 %2, ptr %55, align 4
  %56 = getelementptr %struct.skb_shared_info, ptr %53, i32 0, i32 12, i32 %9, i32 1
  store i32 %3, ptr %56, align 4
  %57 = load volatile i32, ptr %40, align 4
  %58 = and i32 %57, 1
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %62, label %60, !prof !13

60:                                               ; preds = %48
  %61 = add i32 %57, -1
  br label %64

62:                                               ; preds = %48
  %63 = ptrtoint ptr %1 to i32
  br label %64

64:                                               ; preds = %62, %60
  %65 = phi i32 [ %61, %60 ], [ %63, %62 ]
  %66 = inttoptr i32 %65 to ptr
  %67 = getelementptr inbounds %struct.page, ptr %66, i32 0, i32 1
  %68 = load ptr, ptr %67, align 4
  %69 = ptrtoint ptr %68 to i32
  %70 = and i32 %69, 2
  %71 = icmp eq i32 %70, 0
  br i1 %71, label %76, label %72

72:                                               ; preds = %64
  %73 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 11
  %74 = load i8, ptr %73, align 2
  %75 = or i8 %74, 64
  store i8 %75, ptr %73, align 2
  br label %76

76:                                               ; preds = %72, %64
  %77 = add nuw nsw i8 %8, 1
  %78 = load ptr, ptr %5, align 4
  %79 = getelementptr inbounds %struct.skb_shared_info, ptr %78, i32 0, i32 2
  store i8 %77, ptr %79, align 2
  br label %80

80:                                               ; preds = %76, %37, %35
  %81 = phi i32 [ -90, %37 ], [ 0, %76 ], [ 0, %35 ]
  ret i32 %81
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @skb_pull_rcsum(ptr nocapture noundef %0, i32 noundef %1) #0 {
  %3 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 5
  %4 = load i32, ptr %3, align 8
  %5 = icmp ult i32 %4, %1
  br i1 %5, label %6, label %7, !prof !12

6:                                                ; preds = %2
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22net/core/skbuff.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 3838, 0\0A.popsection", ""() #21, !srcloc !69
  unreachable

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 17
  %9 = load ptr, ptr %8, align 4
  %10 = sub i32 %4, %1
  store i32 %10, ptr %3, align 8
  %11 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 6
  %12 = load i32, ptr %11, align 4
  %13 = icmp ult i32 %10, %12
  br i1 %13, label %14, label %15, !prof !12

14:                                               ; preds = %7
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/skbuff.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2398, 0\0A.popsection", ""() #21, !srcloc !54
  unreachable

15:                                               ; preds = %7
  %16 = getelementptr i8, ptr %9, i32 %1
  store ptr %16, ptr %8, align 4
  %17 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 13
  %18 = load i16, ptr %17, align 8
  %19 = lshr i16 %18, 5
  %20 = trunc i16 %19 to i2
  switch i2 %20, label %41 [
    i2 -2, label %21
    i2 -1, label %28
  ]

21:                                               ; preds = %15
  %22 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 13, i32 0, i32 4
  %23 = load i32, ptr %22, align 4
  %24 = sub i32 0, %23
  %25 = tail call i32 @csum_partial(ptr noundef %9, i32 noundef %1, i32 noundef %24) #21
  %26 = sub i32 0, %25
  store i32 %26, ptr %22, align 4
  %27 = load ptr, ptr %8, align 4
  br label %41

28:                                               ; preds = %15
  %29 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 13, i32 0, i32 4
  %30 = load i16, ptr %29, align 4
  %31 = zext i16 %30 to i32
  %32 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 16
  %33 = load ptr, ptr %32, align 8
  %34 = ptrtoint ptr %16 to i32
  %35 = ptrtoint ptr %33 to i32
  %36 = sub i32 %31, %34
  %37 = add i32 %36, %35
  %38 = icmp slt i32 %37, 0
  br i1 %38, label %39, label %41

39:                                               ; preds = %28
  %40 = and i16 %18, -97
  store i16 %40, ptr %17, align 8
  br label %41

41:                                               ; preds = %39, %28, %21, %15
  %42 = phi ptr [ %16, %15 ], [ %27, %21 ], [ %16, %28 ], [ %16, %39 ]
  ret ptr %42
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @skb_segment_list(ptr noundef %0, i64 noundef %1, i32 noundef %2) #0 {
  %4 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 15
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.skb_shared_info, ptr %5, i32 0, i32 6
  %7 = load ptr, ptr %6, align 8
  %8 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 16
  %9 = load ptr, ptr %8, align 8
  %10 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 13, i32 0, i32 19
  %11 = load i16, ptr %10, align 2
  %12 = getelementptr %struct.sk_buff, ptr %0, i32 0, i32 3, i32 32
  %13 = load i32, ptr %12, align 4
  %14 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 13, i32 0, i32 18
  %15 = load i16, ptr %14, align 4
  %16 = zext i16 %15 to i32
  %17 = getelementptr i8, ptr %9, i32 %16
  %18 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 17
  %19 = load ptr, ptr %18, align 4
  %20 = ptrtoint ptr %17 to i32
  %21 = ptrtoint ptr %19 to i32
  %22 = sub i32 %21, %20
  %23 = add i32 %22, %2
  %24 = sub i32 0, %23
  %25 = getelementptr i8, ptr %19, i32 %24
  store ptr %25, ptr %18, align 4
  %26 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 5
  %27 = load i32, ptr %26, align 8
  %28 = add i32 %23, %27
  store i32 %28, ptr %26, align 8
  %29 = icmp ult ptr %25, %9
  br i1 %29, label %30, label %32, !prof !12

30:                                               ; preds = %3
  %31 = tail call ptr @llvm.returnaddress(i32 0) #21
  tail call fastcc void @skb_under_panic(ptr noundef %0, i32 noundef %23, ptr noundef %31) #21
  unreachable

32:                                               ; preds = %3
  %33 = zext i16 %11 to i32
  %34 = getelementptr i8, ptr %9, i32 %33
  %35 = ptrtoint ptr %34 to i32
  %36 = ptrtoint ptr %9 to i32
  %37 = add i32 %13, %36
  %38 = sub i32 %35, %37
  store ptr null, ptr %6, align 8
  %39 = sub i32 0, %38
  %40 = add i32 %38, %2
  %41 = and i64 %1, 64
  %42 = icmp eq i64 %41, 0
  %43 = and i64 %1, 1
  %44 = icmp eq i64 %43, 0
  br label %45

45:                                               ; preds = %201, %32
  %46 = phi ptr [ %7, %32 ], [ %50, %201 ]
  %47 = phi i32 [ 0, %32 ], [ %53, %201 ]
  %48 = phi i32 [ 0, %32 ], [ %84, %201 ]
  %49 = phi ptr [ null, %32 ], [ %75, %201 ]
  %50 = load ptr, ptr %46, align 8
  %51 = getelementptr inbounds %struct.sk_buff, ptr %46, i32 0, i32 18
  %52 = load i32, ptr %51, align 8
  %53 = add i32 %52, %47
  %54 = getelementptr inbounds %struct.sk_buff, ptr %46, i32 0, i32 19
  %55 = load volatile i32, ptr %54, align 4
  %56 = icmp eq i32 %55, 1
  br i1 %56, label %74, label %57

57:                                               ; preds = %45
  %58 = tail call ptr @skb_clone(ptr noundef %46, i32 noundef 2592)
  %59 = icmp eq ptr %58, null
  br i1 %59, label %74, label %60

60:                                               ; preds = %57
  tail call void @consume_skb(ptr noundef %46)
  %61 = getelementptr inbounds %struct.sk_buff, ptr %58, i32 0, i32 11
  %62 = load i8, ptr %61, align 2
  %63 = and i8 %62, 1
  %64 = icmp eq i8 %63, 0
  br i1 %64, label %74, label %65

65:                                               ; preds = %60
  %66 = getelementptr inbounds %struct.sk_buff, ptr %58, i32 0, i32 15
  %67 = load ptr, ptr %66, align 4
  %68 = getelementptr inbounds %struct.skb_shared_info, ptr %67, i32 0, i32 10
  %69 = load volatile i32, ptr %68, align 4
  %70 = and i32 %69, 65535
  %71 = icmp eq i32 %70, 1
  br i1 %71, label %74, label %72

72:                                               ; preds = %65
  %73 = tail call i32 @pskb_expand_head(ptr noundef nonnull %58, i32 noundef 0, i32 noundef 0, i32 noundef 2592) #21
  br label %74

74:                                               ; preds = %72, %65, %60, %57, %45
  %75 = phi ptr [ %46, %45 ], [ %46, %57 ], [ %58, %60 ], [ %58, %65 ], [ %58, %72 ]
  %76 = phi i32 [ 0, %45 ], [ -12, %57 ], [ 0, %60 ], [ 0, %65 ], [ %73, %72 ]
  %77 = icmp eq ptr %49, null
  %78 = select i1 %77, ptr %0, ptr %49
  store ptr %75, ptr %78, align 8
  %79 = icmp eq i32 %76, 0
  br i1 %79, label %81, label %80, !prof !13

80:                                               ; preds = %74
  store ptr %50, ptr %75, align 8
  br label %246

81:                                               ; preds = %74
  %82 = getelementptr inbounds %struct.sk_buff, ptr %75, i32 0, i32 5
  %83 = load i32, ptr %82, align 8
  %84 = add i32 %83, %48
  %85 = getelementptr inbounds %struct.sk_buff, ptr %75, i32 0, i32 16
  %86 = load ptr, ptr %85, align 8
  %87 = getelementptr inbounds %struct.sk_buff, ptr %75, i32 0, i32 13, i32 0, i32 18
  %88 = load i16, ptr %87, align 4
  %89 = zext i16 %88 to i32
  %90 = getelementptr i8, ptr %86, i32 %89
  %91 = getelementptr inbounds %struct.sk_buff, ptr %75, i32 0, i32 17
  %92 = load ptr, ptr %91, align 4
  %93 = ptrtoint ptr %90 to i32
  %94 = ptrtoint ptr %92 to i32
  %95 = sub i32 %94, %93
  %96 = add i32 %95, %2
  %97 = sub i32 0, %96
  %98 = getelementptr i8, ptr %92, i32 %97
  store ptr %98, ptr %91, align 4
  %99 = add i32 %96, %83
  store i32 %99, ptr %82, align 8
  %100 = icmp ult ptr %98, %86
  br i1 %100, label %101, label %103, !prof !12

101:                                              ; preds = %81
  %102 = tail call ptr @llvm.returnaddress(i32 0) #21
  tail call fastcc void @skb_under_panic(ptr noundef %75, i32 noundef %96, ptr noundef %102) #21
  unreachable

103:                                              ; preds = %81
  %104 = getelementptr inbounds %struct.sk_buff, ptr %75, i32 0, i32 4
  %105 = load i32, ptr %104, align 8
  %106 = icmp eq i32 %105, 0
  br i1 %106, label %114, label %107

107:                                              ; preds = %103
  %108 = and i32 %105, 1
  %109 = icmp eq i32 %108, 0
  br i1 %109, label %110, label %113

110:                                              ; preds = %107
  %111 = and i32 %105, -2
  %112 = inttoptr i32 %111 to ptr
  tail call void @dst_release(ptr noundef %112) #21
  br label %113

113:                                              ; preds = %110, %107
  store i32 0, ptr %104, align 8
  br label %114

114:                                              ; preds = %113, %103
  %115 = getelementptr inbounds %struct.sk_buff, ptr %75, i32 0, i32 4, i32 0, i32 1
  %116 = load ptr, ptr %115, align 4
  %117 = icmp eq ptr %116, null
  br i1 %117, label %128, label %118

118:                                              ; preds = %114
  %119 = tail call ptr @llvm.thread.pointer() #21
  %120 = getelementptr inbounds %struct.thread_info, ptr %119, i32 0, i32 1
  %121 = load volatile i32, ptr %120, align 4
  %122 = and i32 %121, 983040
  %123 = icmp eq i32 %122, 0
  br i1 %123, label %126, label %124, !prof !13

124:                                              ; preds = %118
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 728, i32 noundef 9, ptr noundef null) #21
  %125 = load ptr, ptr %115, align 4
  br label %126

126:                                              ; preds = %124, %118
  %127 = phi ptr [ %125, %124 ], [ %116, %118 ]
  tail call void %127(ptr noundef %75) #21
  br label %128

128:                                              ; preds = %126, %114
  %129 = getelementptr inbounds %struct.sk_buff, ptr %75, i32 0, i32 12
  %130 = load i8, ptr %129, align 1
  %131 = icmp eq i8 %130, 0
  br i1 %131, label %135, label %132

132:                                              ; preds = %128
  %133 = getelementptr inbounds %struct.sk_buff, ptr %75, i32 0, i32 20
  %134 = load ptr, ptr %133, align 8
  tail call void @__skb_ext_put(ptr noundef %134) #21
  br label %135

135:                                              ; preds = %132, %128
  tail call fastcc void @__copy_skb_header(ptr noundef %75, ptr noundef %0)
  %136 = load ptr, ptr %91, align 4
  %137 = load ptr, ptr %85, align 8
  %138 = ptrtoint ptr %136 to i32
  %139 = ptrtoint ptr %137 to i32
  %140 = sub i32 %138, %139
  %141 = load ptr, ptr %18, align 4
  %142 = load ptr, ptr %8, align 8
  %143 = ptrtoint ptr %141 to i32
  %144 = ptrtoint ptr %142 to i32
  %145 = sub i32 %144, %143
  %146 = add i32 %145, %140
  %147 = getelementptr inbounds %struct.sk_buff, ptr %75, i32 0, i32 13
  %148 = load i16, ptr %147, align 8
  %149 = and i16 %148, 96
  %150 = icmp eq i16 %149, 96
  br i1 %150, label %153, label %151

151:                                              ; preds = %135
  %152 = trunc i32 %146 to i16
  br label %158

153:                                              ; preds = %135
  %154 = getelementptr inbounds %struct.sk_buff, ptr %75, i32 0, i32 13, i32 0, i32 4
  %155 = load i16, ptr %154, align 4
  %156 = trunc i32 %146 to i16
  %157 = add i16 %155, %156
  store i16 %157, ptr %154, align 4
  br label %158

158:                                              ; preds = %153, %151
  %159 = phi i16 [ %152, %151 ], [ %156, %153 ]
  %160 = getelementptr inbounds %struct.sk_buff, ptr %75, i32 0, i32 13, i32 0, i32 17
  %161 = load i16, ptr %160, align 2
  %162 = add i16 %161, %159
  store i16 %162, ptr %160, align 2
  %163 = load i16, ptr %87, align 4
  %164 = add i16 %163, %159
  store i16 %164, ptr %87, align 4
  %165 = getelementptr inbounds %struct.sk_buff, ptr %75, i32 0, i32 13, i32 0, i32 19
  %166 = load i16, ptr %165, align 2
  %167 = icmp eq i16 %166, -1
  br i1 %167, label %170, label %168

168:                                              ; preds = %158
  %169 = add i16 %166, %159
  store i16 %169, ptr %165, align 2
  br label %170

170:                                              ; preds = %168, %158
  %171 = getelementptr inbounds %struct.sk_buff, ptr %75, i32 0, i32 13, i32 0, i32 13
  %172 = load i16, ptr %171, align 2
  %173 = add i16 %172, %159
  store i16 %173, ptr %171, align 2
  %174 = getelementptr inbounds %struct.sk_buff, ptr %75, i32 0, i32 13, i32 0, i32 14
  %175 = load i16, ptr %174, align 4
  %176 = add i16 %175, %159
  store i16 %176, ptr %174, align 4
  %177 = getelementptr inbounds %struct.sk_buff, ptr %75, i32 0, i32 13, i32 0, i32 15
  %178 = load i16, ptr %177, align 2
  %179 = add i16 %178, %159
  store i16 %179, ptr %177, align 2
  %180 = getelementptr i8, ptr %136, i32 %39
  %181 = load ptr, ptr %18, align 4
  %182 = getelementptr i8, ptr %181, i32 %39
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 1 %180, ptr align 1 %182, i32 %40, i1 false) #21
  %183 = getelementptr inbounds %struct.sk_buff, ptr %75, i32 0, i32 6
  %184 = load i32, ptr %183, align 4
  %185 = icmp eq i32 %184, 0
  br i1 %185, label %201, label %186

186:                                              ; preds = %170
  %187 = getelementptr inbounds %struct.sk_buff, ptr %75, i32 0, i32 15
  %188 = load ptr, ptr %187, align 4
  %189 = getelementptr inbounds %struct.skb_shared_info, ptr %188, i32 0, i32 6
  %190 = load ptr, ptr %189, align 8
  %191 = icmp ne ptr %190, null
  %192 = and i1 %42, %191
  br i1 %192, label %198, label %193

193:                                              ; preds = %186
  %194 = getelementptr inbounds %struct.skb_shared_info, ptr %188, i32 0, i32 2
  %195 = load i8, ptr %194, align 2
  %196 = icmp ne i8 %195, 0
  %197 = and i1 %44, %196
  br i1 %197, label %198, label %201

198:                                              ; preds = %193, %186
  %199 = tail call ptr @__pskb_pull_tail(ptr noundef %75, i32 noundef %184) #21
  %200 = icmp eq ptr %199, null
  br i1 %200, label %246, label %201

201:                                              ; preds = %198, %193, %170
  %202 = icmp eq ptr %50, null
  br i1 %202, label %203, label %45

203:                                              ; preds = %201
  %204 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 18
  %205 = load i32, ptr %204, align 8
  %206 = sub i32 %205, %53
  store i32 %206, ptr %204, align 8
  %207 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 6
  %208 = load i32, ptr %207, align 4
  %209 = sub i32 %208, %84
  store i32 %209, ptr %207, align 4
  %210 = load i32, ptr %26, align 8
  %211 = sub i32 %210, %84
  store i32 %211, ptr %26, align 8
  %212 = load ptr, ptr %4, align 4
  %213 = getelementptr inbounds %struct.skb_shared_info, ptr %212, i32 0, i32 4
  store i16 0, ptr %213, align 4
  %214 = load ptr, ptr %4, align 4
  %215 = getelementptr inbounds %struct.skb_shared_info, ptr %214, i32 0, i32 5
  store i16 0, ptr %215, align 2
  %216 = load ptr, ptr %4, align 4
  %217 = getelementptr inbounds %struct.skb_shared_info, ptr %216, i32 0, i32 8
  store i32 0, ptr %217, align 8
  %218 = getelementptr inbounds %struct.anon, ptr %0, i32 0, i32 1
  store ptr %75, ptr %218, align 4
  %219 = load i32, ptr %207, align 4
  %220 = icmp eq i32 %219, 0
  br i1 %220, label %235, label %221

221:                                              ; preds = %203
  %222 = load ptr, ptr %4, align 4
  %223 = getelementptr inbounds %struct.skb_shared_info, ptr %222, i32 0, i32 6
  %224 = load ptr, ptr %223, align 8
  %225 = icmp ne ptr %224, null
  %226 = and i1 %42, %225
  br i1 %226, label %232, label %227

227:                                              ; preds = %221
  %228 = getelementptr inbounds %struct.skb_shared_info, ptr %222, i32 0, i32 2
  %229 = load i8, ptr %228, align 2
  %230 = icmp ne i8 %229, 0
  %231 = and i1 %44, %230
  br i1 %231, label %232, label %235

232:                                              ; preds = %227, %221
  %233 = tail call ptr @__pskb_pull_tail(ptr noundef %0, i32 noundef %219) #21
  %234 = icmp eq ptr %233, null
  br i1 %234, label %246, label %235

235:                                              ; preds = %232, %227, %203
  %236 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 19
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %236) #21, !srcloc !16
  %237 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %236, ptr %236, i32 1, ptr elementtype(i32) %236) #21, !srcloc !37
  %238 = extractvalue { i32, i32, i32 } %237, 0
  %239 = icmp eq i32 %238, 0
  br i1 %239, label %244, label %240, !prof !12

240:                                              ; preds = %235
  %241 = add i32 %238, 1
  %242 = or i32 %241, %238
  %243 = icmp sgt i32 %242, -1
  br i1 %243, label %248, label %244, !prof !13

244:                                              ; preds = %240, %235
  %245 = phi i32 [ 2, %235 ], [ 1, %240 ]
  tail call void @refcount_warn_saturate(ptr noundef %236, i32 noundef %245) #21
  br label %248

246:                                              ; preds = %232, %198, %80
  %247 = load ptr, ptr %0, align 8
  tail call void @kfree_skb_list(ptr noundef %247)
  store ptr null, ptr %0, align 8
  br label %248

248:                                              ; preds = %246, %244, %240
  %249 = phi ptr [ inttoptr (i32 -12 to ptr), %246 ], [ %0, %240 ], [ %0, %244 ]
  ret ptr %249
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @skb_segment(ptr noundef %0, i64 noundef %1) #0 {
  %3 = alloca %struct.skb_checksum_ops, align 8
  %4 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 15
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.skb_shared_info, ptr %5, i32 0, i32 6
  %7 = load ptr, ptr %6, align 8
  %8 = getelementptr inbounds %struct.skb_shared_info, ptr %5, i32 0, i32 12
  %9 = getelementptr inbounds %struct.skb_shared_info, ptr %5, i32 0, i32 4
  %10 = load i16, ptr %9, align 4
  %11 = zext i16 %10 to i32
  %12 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 17
  %13 = load ptr, ptr %12, align 4
  %14 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 16
  %15 = load ptr, ptr %14, align 8
  %16 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 13, i32 0, i32 19
  %17 = load i16, ptr %16, align 2
  %18 = zext i16 %17 to i32
  %19 = getelementptr i8, ptr %15, i32 %18
  %20 = ptrtoint ptr %13 to i32
  %21 = ptrtoint ptr %19 to i32
  %22 = sub i32 %20, %21
  %23 = ptrtoint ptr %15 to i32
  %24 = getelementptr %struct.sk_buff, ptr %0, i32 0, i32 3, i32 32
  %25 = load i32, ptr %24, align 4
  %26 = add i32 %25, %23
  %27 = sub i32 %21, %26
  %28 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 5
  %29 = load i32, ptr %28, align 8
  %30 = getelementptr inbounds %struct.skb_shared_info, ptr %5, i32 0, i32 2
  %31 = load i8, ptr %30, align 2
  %32 = zext i8 %31 to i32
  %33 = icmp eq ptr %7, null
  br i1 %33, label %59, label %34

34:                                               ; preds = %2
  %35 = getelementptr inbounds %struct.sk_buff, ptr %7, i32 0, i32 11
  %36 = load i8, ptr %35, align 2
  %37 = and i8 %36, 32
  %38 = icmp eq i8 %37, 0
  br i1 %38, label %39, label %59

39:                                               ; preds = %34
  %40 = getelementptr inbounds %struct.sk_buff, ptr %7, i32 0, i32 5
  %41 = load i32, ptr %40, align 8
  %42 = getelementptr inbounds %struct.sk_buff, ptr %7, i32 0, i32 6
  %43 = load i32, ptr %42, align 4
  %44 = icmp eq i32 %41, %43
  br i1 %44, label %59, label %45

45:                                               ; preds = %39
  %46 = getelementptr inbounds %struct.skb_shared_info, ptr %5, i32 0, i32 8
  %47 = load i32, ptr %46, align 8
  %48 = and i32 %47, 2
  %49 = icmp ne i32 %48, 0
  %50 = icmp ne i16 %10, -1
  %51 = select i1 %49, i1 %50, i1 false
  br i1 %51, label %52, label %59

52:                                               ; preds = %45
  %53 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 6
  %54 = load i32, ptr %53, align 4
  %55 = sub i32 %29, %54
  %56 = icmp eq i32 %55, %11
  %57 = and i64 %1, -2
  %58 = select i1 %56, i64 %1, i64 %57
  br label %59

59:                                               ; preds = %52, %45, %39, %34, %2
  %60 = phi i64 [ %1, %34 ], [ %1, %45 ], [ %1, %39 ], [ %1, %2 ], [ %58, %52 ]
  %61 = sub i32 0, %22
  %62 = getelementptr i8, ptr %13, i32 %61
  store ptr %62, ptr %12, align 4
  %63 = add i32 %22, %29
  store i32 %63, ptr %28, align 8
  %64 = tail call zeroext i16 @skb_network_protocol(ptr noundef %0, ptr noundef null) #21
  %65 = icmp eq i16 %64, 0
  br i1 %65, label %846, label %66, !prof !12

66:                                               ; preds = %59
  %67 = and i64 %60, 1
  %68 = icmp eq i64 %67, 0
  %69 = icmp eq i16 %64, 1673
  br i1 %69, label %70, label %73

70:                                               ; preds = %66
  %71 = and i64 %60, 34359738368
  %72 = icmp ne i64 %71, 0
  br label %85

73:                                               ; preds = %66
  %74 = and i64 %60, 8
  %75 = icmp eq i64 %74, 0
  br i1 %75, label %76, label %85

76:                                               ; preds = %73
  switch i16 %64, label %77 [
    i16 8, label %79
    i16 -8826, label %82
  ]

77:                                               ; preds = %76
  %78 = xor i1 %68, true
  br label %141

79:                                               ; preds = %76
  %80 = and i64 %60, 2
  %81 = icmp ne i64 %80, 0
  br label %85

82:                                               ; preds = %76
  %83 = and i64 %60, 16
  %84 = icmp ne i64 %83, 0
  br label %85

85:                                               ; preds = %82, %79, %73, %70
  %86 = phi i1 [ %72, %70 ], [ %84, %82 ], [ %81, %79 ], [ true, %73 ]
  %87 = xor i1 %68, true
  %88 = icmp ne i16 %10, -1
  %89 = select i1 %87, i1 %86, i1 false
  %90 = select i1 %89, i1 %88, i1 false
  br i1 %90, label %91, label %141

91:                                               ; preds = %85
  %92 = and i64 %60, 268435456
  %93 = icmp eq i64 %92, 0
  br i1 %93, label %94, label %134

94:                                               ; preds = %91
  br i1 %33, label %141, label %95

95:                                               ; preds = %94
  %96 = load ptr, ptr %4, align 4
  %97 = getelementptr inbounds %struct.skb_shared_info, ptr %96, i32 0, i32 8
  %98 = load i32, ptr %97, align 8
  %99 = sext i32 %98 to i64
  %100 = shl nsw i64 %99, 16
  %101 = and i64 %100, %60
  %102 = icmp eq i64 %101, %100
  br i1 %102, label %103, label %141

103:                                              ; preds = %95
  %104 = getelementptr inbounds %struct.sk_buff, ptr %7, i32 0, i32 5
  %105 = load i32, ptr %104, align 8
  %106 = getelementptr inbounds %struct.skb_shared_info, ptr %96, i32 0, i32 6
  %107 = load ptr, ptr %106, align 8
  %108 = icmp eq ptr %107, null
  br i1 %108, label %131, label %109

109:                                              ; preds = %127, %103
  %110 = phi ptr [ %129, %127 ], [ %107, %103 ]
  %111 = phi i32 [ %128, %127 ], [ %29, %103 ]
  %112 = getelementptr inbounds %struct.sk_buff, ptr %110, i32 0, i32 5
  %113 = load i32, ptr %112, align 8
  %114 = icmp eq i32 %105, %113
  br i1 %114, label %118, label %115

115:                                              ; preds = %109
  %116 = load ptr, ptr %110, align 8
  %117 = icmp eq ptr %116, null
  br i1 %117, label %118, label %141

118:                                              ; preds = %115, %109
  %119 = getelementptr inbounds %struct.sk_buff, ptr %110, i32 0, i32 6
  %120 = load i32, ptr %119, align 4
  %121 = icmp eq i32 %113, %120
  br i1 %121, label %127, label %122

122:                                              ; preds = %118
  %123 = getelementptr inbounds %struct.sk_buff, ptr %110, i32 0, i32 11
  %124 = load i8, ptr %123, align 2
  %125 = and i8 %124, 32
  %126 = icmp eq i8 %125, 0
  br i1 %126, label %141, label %127

127:                                              ; preds = %122, %118
  %128 = sub i32 %111, %113
  %129 = load ptr, ptr %110, align 8
  %130 = icmp eq ptr %129, null
  br i1 %130, label %131, label %109

131:                                              ; preds = %127, %103
  %132 = phi i32 [ %29, %103 ], [ %128, %127 ]
  %133 = icmp eq i32 %132, %105
  br i1 %133, label %134, label %141

134:                                              ; preds = %131, %91
  %135 = phi i32 [ %29, %91 ], [ %105, %131 ]
  %136 = udiv i32 %135, %11
  %137 = icmp ugt i32 %136, 1
  %138 = tail call i32 @llvm.umax.i32(i32 %136, i32 1)
  %139 = mul i32 %138, %11
  %140 = select i1 %137, i32 %136, i32 0
  br label %141

141:                                              ; preds = %134, %131, %122, %115, %95, %94, %85, %77
  %142 = phi i1 [ %87, %85 ], [ true, %134 ], [ %78, %77 ], [ true, %95 ], [ true, %94 ], [ true, %131 ], [ true, %115 ], [ true, %122 ]
  %143 = phi i1 [ %86, %85 ], [ true, %134 ], [ false, %77 ], [ true, %95 ], [ true, %94 ], [ true, %131 ], [ true, %115 ], [ true, %122 ]
  %144 = phi i32 [ %11, %85 ], [ %139, %134 ], [ %11, %77 ], [ %11, %95 ], [ %11, %94 ], [ %11, %131 ], [ %11, %115 ], [ %11, %122 ]
  %145 = phi i32 [ 0, %85 ], [ %140, %134 ], [ 0, %77 ], [ 0, %95 ], [ 0, %94 ], [ 0, %131 ], [ 0, %115 ], [ 0, %122 ]
  %146 = load ptr, ptr %12, align 4
  %147 = load ptr, ptr %14, align 8
  %148 = ptrtoint ptr %146 to i32
  %149 = ptrtoint ptr %147 to i32
  %150 = sub i32 %148, %149
  %151 = load i32, ptr %28, align 8
  %152 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 6
  %153 = load i32, ptr %152, align 4
  %154 = sub i32 %151, %153
  %155 = icmp eq i32 %144, 65535
  %156 = add i32 %150, %22
  %157 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 11
  %158 = sub i32 0, %27
  %159 = add i32 %22, %27
  %160 = load i64, ptr @__const.skb_checksum.ops, align 8
  br label %161

161:                                              ; preds = %763, %141
  %162 = phi i32 [ %151, %141 ], [ %771, %763 ]
  %163 = phi ptr [ %7, %141 ], [ %764, %763 ]
  %164 = phi ptr [ %8, %141 ], [ %765, %763 ]
  %165 = phi ptr [ %0, %141 ], [ %766, %763 ]
  %166 = phi i32 [ %22, %141 ], [ %770, %763 ]
  %167 = phi i32 [ %32, %141 ], [ %767, %763 ]
  %168 = phi i32 [ 0, %141 ], [ %768, %763 ]
  %169 = phi i32 [ %154, %141 ], [ %769, %763 ]
  %170 = phi ptr [ null, %141 ], [ %393, %763 ]
  %171 = phi ptr [ null, %141 ], [ %400, %763 ]
  br i1 %155, label %172, label %175, !prof !12

172:                                              ; preds = %161
  %173 = getelementptr inbounds %struct.sk_buff, ptr %163, i32 0, i32 5
  %174 = load i32, ptr %173, align 8
  br label %178

175:                                              ; preds = %161
  %176 = sub i32 %162, %166
  %177 = tail call i32 @llvm.umin.i32(i32 %176, i32 %144)
  br label %178

178:                                              ; preds = %175, %172
  %179 = phi i32 [ %174, %172 ], [ %177, %175 ]
  %180 = load i32, ptr %152, align 4
  %181 = add i32 %166, %180
  %182 = sub i32 %162, %181
  %183 = icmp sgt i32 %182, 0
  %184 = icmp slt i32 %168, %167
  %185 = select i1 %183, i1 true, i1 %184
  br i1 %185, label %359, label %186

186:                                              ; preds = %178
  %187 = getelementptr inbounds %struct.sk_buff, ptr %163, i32 0, i32 5
  %188 = load i32, ptr %187, align 8
  %189 = getelementptr inbounds %struct.sk_buff, ptr %163, i32 0, i32 6
  %190 = load i32, ptr %189, align 4
  %191 = sub i32 %188, %190
  %192 = icmp ne i32 %188, %190
  %193 = icmp eq i32 %191, %179
  %194 = select i1 %193, i1 true, i1 %142
  %195 = select i1 %192, i1 %194, i1 false
  br i1 %195, label %196, label %359

196:                                              ; preds = %186
  %197 = icmp ugt i32 %191, %179
  br i1 %197, label %198, label %199, !prof !12

198:                                              ; preds = %196
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22net/core/skbuff.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 4066, 0\0A.popsection", ""() #21, !srcloc !70
  unreachable

199:                                              ; preds = %196
  %200 = getelementptr inbounds %struct.sk_buff, ptr %163, i32 0, i32 15
  %201 = load ptr, ptr %200, align 4
  %202 = getelementptr inbounds %struct.skb_shared_info, ptr %201, i32 0, i32 2
  %203 = load i8, ptr %202, align 2
  %204 = zext i8 %203 to i32
  %205 = getelementptr inbounds %struct.skb_shared_info, ptr %201, i32 0, i32 12
  %206 = add i32 %191, %169
  %207 = add i32 %179, %166
  %208 = icmp ult i32 %206, %207
  br i1 %208, label %209, label %224

209:                                              ; preds = %220, %199
  %210 = phi i32 [ %218, %220 ], [ %206, %199 ]
  %211 = phi i32 [ %221, %220 ], [ 0, %199 ]
  %212 = phi ptr [ %222, %220 ], [ %205, %199 ]
  %213 = icmp eq i32 %211, %204
  br i1 %213, label %214, label %215, !prof !12

214:                                              ; preds = %209
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22net/core/skbuff.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 4075, 0\0A.popsection", ""() #21, !srcloc !71
  unreachable

215:                                              ; preds = %209
  %216 = getelementptr inbounds %struct.bio_vec, ptr %212, i32 0, i32 1
  %217 = load i32, ptr %216, align 4
  %218 = add i32 %217, %210
  %219 = icmp ugt i32 %218, %207
  br i1 %219, label %224, label %220

220:                                              ; preds = %215
  %221 = add nuw nsw i32 %211, 1
  %222 = getelementptr %struct.bio_vec, ptr %212, i32 1
  %223 = icmp ult i32 %218, %207
  br i1 %223, label %209, label %224

224:                                              ; preds = %220, %215, %199
  %225 = phi ptr [ %205, %199 ], [ %212, %215 ], [ %222, %220 ]
  %226 = phi i32 [ 0, %199 ], [ %211, %215 ], [ %221, %220 ]
  %227 = phi i32 [ %206, %199 ], [ %210, %215 ], [ %218, %220 ]
  %228 = tail call ptr @skb_clone(ptr noundef %163, i32 noundef 2592)
  %229 = load ptr, ptr %163, align 8
  %230 = icmp eq ptr %228, null
  br i1 %230, label %843, label %231, !prof !12

231:                                              ; preds = %224
  %232 = getelementptr inbounds %struct.sk_buff, ptr %228, i32 0, i32 5
  %233 = load i32, ptr %232, align 8
  %234 = icmp ugt i32 %233, %179
  br i1 %234, label %235, label %248

235:                                              ; preds = %231
  %236 = getelementptr inbounds %struct.sk_buff, ptr %228, i32 0, i32 6
  %237 = load i32, ptr %236, align 4
  %238 = icmp eq i32 %237, 0
  br i1 %238, label %239, label %244

239:                                              ; preds = %235
  store i32 %179, ptr %232, align 8
  %240 = getelementptr inbounds %struct.sk_buff, ptr %228, i32 0, i32 17
  %241 = load ptr, ptr %240, align 4
  %242 = getelementptr i8, ptr %241, i32 %179
  %243 = getelementptr inbounds %struct.sk_buff, ptr %228, i32 0, i32 14
  store ptr %242, ptr %243, align 8
  br label %248

244:                                              ; preds = %235
  %245 = tail call i32 @___pskb_trim(ptr noundef nonnull %228, i32 noundef %179) #21
  %246 = icmp eq i32 %245, 0
  br i1 %246, label %248, label %247, !prof !13

247:                                              ; preds = %244
  tail call fastcc void @kfree_skb(ptr noundef nonnull %228)
  br label %843

248:                                              ; preds = %244, %239, %231
  %249 = getelementptr inbounds %struct.sk_buff, ptr %228, i32 0, i32 15
  %250 = load ptr, ptr %249, align 4
  %251 = getelementptr inbounds %struct.sk_buff, ptr %228, i32 0, i32 16
  %252 = load ptr, ptr %251, align 8
  %253 = ptrtoint ptr %250 to i32
  %254 = ptrtoint ptr %252 to i32
  %255 = sub i32 %253, %254
  %256 = getelementptr inbounds %struct.sk_buff, ptr %228, i32 0, i32 11
  %257 = load i8, ptr %256, align 2
  %258 = and i8 %257, 1
  %259 = icmp eq i8 %258, 0
  br i1 %259, label %268, label %260

260:                                              ; preds = %248
  %261 = getelementptr inbounds %struct.skb_shared_info, ptr %250, i32 0, i32 10
  %262 = load volatile i32, ptr %261, align 4
  %263 = and i32 %262, 65535
  %264 = ashr i32 %262, 16
  %265 = sub nsw i32 %263, %264
  %266 = icmp ne i32 %265, 1
  %267 = zext i1 %266 to i32
  br label %268

268:                                              ; preds = %260, %248
  %269 = phi i32 [ %267, %260 ], [ 0, %248 ]
  %270 = getelementptr inbounds %struct.sk_buff, ptr %228, i32 0, i32 17
  %271 = load ptr, ptr %270, align 4
  %272 = ptrtoint ptr %271 to i32
  %273 = sub i32 %272, %254
  %274 = tail call i32 @llvm.usub.sat.i32(i32 %156, i32 %273) #21
  %275 = or i32 %274, %269
  %276 = icmp eq i32 %275, 0
  br i1 %276, label %317, label %277

277:                                              ; preds = %268
  %278 = add i32 %274, 63
  %279 = and i32 %278, -64
  %280 = tail call i32 @pskb_expand_head(ptr noundef nonnull %228, i32 noundef %279, i32 noundef 0, i32 noundef 2592) #21
  %281 = icmp eq i32 %280, 0
  br i1 %281, label %282, label %287

282:                                              ; preds = %277
  %283 = load ptr, ptr %249, align 4
  %284 = load ptr, ptr %251, align 8
  %285 = ptrtoint ptr %283 to i32
  %286 = ptrtoint ptr %284 to i32
  br label %317

287:                                              ; preds = %277
  %288 = getelementptr inbounds %struct.sk_buff, ptr %228, i32 0, i32 19
  %289 = load volatile i32, ptr %288, align 4
  %290 = icmp eq i32 %289, 1
  tail call void asm sideeffect "dmb ish", "~{memory}"() #21
  br i1 %290, label %299, label %291, !prof !13

291:                                              ; preds = %287
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %288) #21, !srcloc !16
  %292 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %288, ptr %288, i32 1, ptr elementtype(i32) %288) #21, !srcloc !19
  %293 = extractvalue { i32, i32, i32 } %292, 0
  %294 = icmp eq i32 %293, 1
  br i1 %294, label %298, label %295

295:                                              ; preds = %291
  %296 = icmp sgt i32 %293, 0
  br i1 %296, label %843, label %297, !prof !13

297:                                              ; preds = %295
  tail call void @refcount_warn_saturate(ptr noundef %288, i32 noundef 3) #21
  br label %843

298:                                              ; preds = %291
  tail call void asm sideeffect "dmb ish", "~{memory}"() #21, !srcloc !20
  br label %299

299:                                              ; preds = %298, %287
  %300 = tail call ptr @llvm.returnaddress(i32 0) #21
  %301 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_kfree_skb, i32 0, i32 1), align 4
  %302 = icmp sgt i32 %301, 0
  br i1 %302, label %303, label %316

303:                                              ; preds = %299
  %304 = tail call ptr @llvm.thread.pointer() #21
  %305 = getelementptr inbounds %struct.thread_info, ptr %304, i32 0, i32 2
  %306 = load i32, ptr %305, align 8
  %307 = lshr i32 %306, 5
  %308 = getelementptr i32, ptr @__cpu_online_mask, i32 %307
  %309 = load volatile i32, ptr %308, align 4
  %310 = and i32 %306, 31
  %311 = shl nuw i32 1, %310
  %312 = and i32 %311, %309
  %313 = icmp eq i32 %312, 0
  br i1 %313, label %316, label %314

314:                                              ; preds = %303
  tail call void asm sideeffect "", "~{memory}"() #21, !srcloc !21
  %315 = tail call i32 @__traceiter_kfree_skb(ptr noundef null, ptr noundef nonnull %228, ptr noundef %300, i32 noundef 0) #21
  tail call void asm sideeffect "", "~{memory}"() #21, !srcloc !22
  br label %316

316:                                              ; preds = %314, %303, %299
  tail call void @__kfree_skb(ptr noundef nonnull %228) #21
  br label %843

317:                                              ; preds = %282, %268
  %318 = phi i32 [ %286, %282 ], [ %254, %268 ]
  %319 = phi i32 [ %285, %282 ], [ %253, %268 ]
  %320 = getelementptr inbounds %struct.sk_buff, ptr %228, i32 0, i32 18
  %321 = load i32, ptr %320, align 8
  %322 = add i32 %255, %318
  %323 = sub i32 %319, %322
  %324 = add i32 %323, %321
  store i32 %324, ptr %320, align 8
  %325 = getelementptr inbounds %struct.sk_buff, ptr %228, i32 0, i32 4
  %326 = load i32, ptr %325, align 8
  %327 = icmp eq i32 %326, 0
  br i1 %327, label %335, label %328

328:                                              ; preds = %317
  %329 = and i32 %326, 1
  %330 = icmp eq i32 %329, 0
  br i1 %330, label %331, label %334

331:                                              ; preds = %328
  %332 = and i32 %326, -2
  %333 = inttoptr i32 %332 to ptr
  tail call void @dst_release(ptr noundef %333) #21
  br label %334

334:                                              ; preds = %331, %328
  store i32 0, ptr %325, align 8
  br label %335

335:                                              ; preds = %334, %317
  %336 = getelementptr inbounds %struct.sk_buff, ptr %228, i32 0, i32 4, i32 0, i32 1
  %337 = load ptr, ptr %336, align 4
  %338 = icmp eq ptr %337, null
  br i1 %338, label %349, label %339

339:                                              ; preds = %335
  %340 = tail call ptr @llvm.thread.pointer() #21
  %341 = getelementptr inbounds %struct.thread_info, ptr %340, i32 0, i32 1
  %342 = load volatile i32, ptr %341, align 4
  %343 = and i32 %342, 983040
  %344 = icmp eq i32 %343, 0
  br i1 %344, label %347, label %345, !prof !13

345:                                              ; preds = %339
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 728, i32 noundef 9, ptr noundef null) #21
  %346 = load ptr, ptr %336, align 4
  br label %347

347:                                              ; preds = %345, %339
  %348 = phi ptr [ %346, %345 ], [ %337, %339 ]
  tail call void %348(ptr noundef nonnull %228) #21
  br label %349

349:                                              ; preds = %347, %335
  %350 = getelementptr inbounds %struct.sk_buff, ptr %228, i32 0, i32 12
  %351 = load i8, ptr %350, align 1
  %352 = icmp eq i8 %351, 0
  br i1 %352, label %356, label %353

353:                                              ; preds = %349
  %354 = getelementptr inbounds %struct.sk_buff, ptr %228, i32 0, i32 20
  %355 = load ptr, ptr %354, align 8
  tail call void @__skb_ext_put(ptr noundef %355) #21
  br label %356

356:                                              ; preds = %353, %349
  %357 = load ptr, ptr %270, align 4
  %358 = getelementptr i8, ptr %357, i32 %61
  store ptr %358, ptr %270, align 4
  br label %385

359:                                              ; preds = %186, %178
  %360 = tail call i32 @llvm.smax.i32(i32 %182, i32 0)
  %361 = icmp ugt i32 %360, %179
  %362 = select i1 %361, i1 true, i1 %68
  %363 = select i1 %362, i32 %179, i32 %360
  %364 = add i32 %156, %363
  %365 = load i8, ptr %157, align 2
  %366 = lshr i8 %365, 5
  %367 = and i8 %366, 2
  %368 = zext i8 %367 to i32
  %369 = tail call ptr @__alloc_skb(i32 noundef %364, i32 noundef 2592, i32 noundef %368, i32 noundef -1)
  %370 = icmp eq ptr %369, null
  br i1 %370, label %843, label %371, !prof !12

371:                                              ; preds = %359
  %372 = getelementptr inbounds %struct.sk_buff, ptr %369, i32 0, i32 17
  %373 = load ptr, ptr %372, align 4
  %374 = getelementptr i8, ptr %373, i32 %150
  store ptr %374, ptr %372, align 4
  %375 = getelementptr inbounds %struct.sk_buff, ptr %369, i32 0, i32 14
  %376 = load ptr, ptr %375, align 8
  %377 = getelementptr i8, ptr %376, i32 %150
  store ptr %377, ptr %375, align 8
  %378 = getelementptr inbounds %struct.sk_buff, ptr %369, i32 0, i32 6
  %379 = load i32, ptr %378, align 4
  %380 = icmp eq i32 %379, 0
  br i1 %380, label %382, label %381, !prof !13

381:                                              ; preds = %371
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/skbuff.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2334, 0\0A.popsection", ""() #21, !srcloc !72
  unreachable

382:                                              ; preds = %371
  %383 = getelementptr i8, ptr %377, i32 %22
  store ptr %383, ptr %375, align 8
  %384 = getelementptr inbounds %struct.sk_buff, ptr %369, i32 0, i32 5
  br label %385

385:                                              ; preds = %382, %356
  %386 = phi ptr [ %384, %382 ], [ %232, %356 ]
  %387 = phi ptr [ %163, %382 ], [ %229, %356 ]
  %388 = phi ptr [ %164, %382 ], [ %225, %356 ]
  %389 = phi ptr [ %165, %382 ], [ %163, %356 ]
  %390 = phi i32 [ %167, %382 ], [ %204, %356 ]
  %391 = phi i32 [ %168, %382 ], [ %226, %356 ]
  %392 = phi i32 [ %169, %382 ], [ %227, %356 ]
  %393 = phi ptr [ %369, %382 ], [ %228, %356 ]
  %394 = phi i32 [ %363, %382 ], [ %255, %356 ]
  %395 = load i32, ptr %386, align 8
  %396 = add i32 %395, %22
  store i32 %396, ptr %386, align 8
  %397 = icmp eq ptr %171, null
  br i1 %397, label %399, label %398

398:                                              ; preds = %385
  store ptr %393, ptr %170, align 8
  br label %399

399:                                              ; preds = %398, %385
  %400 = phi ptr [ %171, %398 ], [ %393, %385 ]
  tail call fastcc void @__copy_skb_header(ptr noundef nonnull %393, ptr noundef %0)
  %401 = getelementptr inbounds %struct.sk_buff, ptr %393, i32 0, i32 17
  %402 = load ptr, ptr %401, align 4
  %403 = getelementptr inbounds %struct.sk_buff, ptr %393, i32 0, i32 16
  %404 = load ptr, ptr %403, align 8
  %405 = ptrtoint ptr %402 to i32
  %406 = ptrtoint ptr %404 to i32
  %407 = add i32 %150, %406
  %408 = sub i32 %405, %407
  %409 = getelementptr inbounds %struct.sk_buff, ptr %393, i32 0, i32 13
  %410 = load i16, ptr %409, align 8
  %411 = and i16 %410, 96
  %412 = icmp eq i16 %411, 96
  br i1 %412, label %415, label %413

413:                                              ; preds = %399
  %414 = trunc i32 %408 to i16
  br label %420

415:                                              ; preds = %399
  %416 = getelementptr inbounds %struct.sk_buff, ptr %393, i32 0, i32 13, i32 0, i32 4
  %417 = load i16, ptr %416, align 4
  %418 = trunc i32 %408 to i16
  %419 = add i16 %417, %418
  store i16 %419, ptr %416, align 4
  br label %420

420:                                              ; preds = %415, %413
  %421 = phi i16 [ %414, %413 ], [ %418, %415 ]
  %422 = getelementptr inbounds %struct.sk_buff, ptr %393, i32 0, i32 13, i32 0, i32 17
  %423 = load i16, ptr %422, align 2
  %424 = add i16 %423, %421
  store i16 %424, ptr %422, align 2
  %425 = getelementptr inbounds %struct.sk_buff, ptr %393, i32 0, i32 13, i32 0, i32 18
  %426 = load i16, ptr %425, align 4
  %427 = add i16 %426, %421
  store i16 %427, ptr %425, align 4
  %428 = getelementptr inbounds %struct.sk_buff, ptr %393, i32 0, i32 13, i32 0, i32 19
  %429 = load i16, ptr %428, align 2
  %430 = icmp eq i16 %429, -1
  br i1 %430, label %433, label %431

431:                                              ; preds = %420
  %432 = add i16 %429, %421
  store i16 %432, ptr %428, align 2
  br label %433

433:                                              ; preds = %431, %420
  %434 = phi i16 [ -1, %420 ], [ %432, %431 ]
  %435 = getelementptr inbounds %struct.sk_buff, ptr %393, i32 0, i32 13, i32 0, i32 13
  %436 = load i16, ptr %435, align 2
  %437 = add i16 %436, %421
  store i16 %437, ptr %435, align 2
  %438 = getelementptr inbounds %struct.sk_buff, ptr %393, i32 0, i32 13, i32 0, i32 14
  %439 = load i16, ptr %438, align 4
  %440 = add i16 %439, %421
  store i16 %440, ptr %438, align 4
  %441 = getelementptr inbounds %struct.sk_buff, ptr %393, i32 0, i32 13, i32 0, i32 15
  %442 = load i16, ptr %441, align 2
  %443 = add i16 %442, %421
  store i16 %443, ptr %441, align 2
  %444 = sub i16 %427, %434
  %445 = getelementptr inbounds %struct.sk_buff, ptr %393, i32 0, i32 7
  store i16 %444, ptr %445, align 8
  %446 = getelementptr i8, ptr %402, i32 %158
  %447 = load ptr, ptr %12, align 4
  %448 = getelementptr i8, ptr %447, i32 %158
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 1 %446, ptr align 1 %448, i32 %159, i1 false) #21
  %449 = getelementptr inbounds %struct.sk_buff, ptr %393, i32 0, i32 5
  %450 = load i32, ptr %449, align 8
  %451 = add i32 %179, %22
  %452 = icmp eq i32 %450, %451
  br i1 %452, label %722, label %453

453:                                              ; preds = %433
  br i1 %68, label %454, label %506

454:                                              ; preds = %453
  br i1 %143, label %489, label %455

455:                                              ; preds = %454
  %456 = getelementptr inbounds %struct.sk_buff, ptr %393, i32 0, i32 13, i32 0, i32 3
  %457 = load i16, ptr %456, align 2
  %458 = and i16 %457, 1024
  %459 = icmp eq i16 %458, 0
  br i1 %459, label %460, label %463

460:                                              ; preds = %455
  %461 = load i16, ptr %409, align 8
  %462 = and i16 %461, -97
  store i16 %462, ptr %409, align 8
  br label %463

463:                                              ; preds = %460, %455
  %464 = getelementptr inbounds %struct.sk_buff, ptr %393, i32 0, i32 14
  %465 = load ptr, ptr %464, align 8
  %466 = getelementptr inbounds %struct.sk_buff, ptr %393, i32 0, i32 6
  %467 = load i32, ptr %466, align 4
  %468 = icmp eq i32 %467, 0
  br i1 %468, label %470, label %469, !prof !13

469:                                              ; preds = %463
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22net/core/skbuff.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1984, 0\0A.popsection", ""() #21, !srcloc !46
  unreachable

470:                                              ; preds = %463
  %471 = getelementptr i8, ptr %465, i32 %179
  store ptr %471, ptr %464, align 8
  %472 = add i32 %450, %179
  store i32 %472, ptr %449, align 8
  %473 = getelementptr inbounds %struct.sk_buff, ptr %393, i32 0, i32 15
  %474 = load ptr, ptr %473, align 4
  %475 = icmp ugt ptr %471, %474
  br i1 %475, label %476, label %478, !prof !12

476:                                              ; preds = %470
  %477 = tail call ptr @llvm.returnaddress(i32 0) #21
  tail call fastcc void @skb_over_panic(ptr noundef nonnull %393, i32 noundef %179, ptr noundef %477) #21
  unreachable

478:                                              ; preds = %470
  %479 = tail call i32 @skb_copy_and_csum_bits(ptr noundef %0, i32 noundef %166, ptr noundef %465, i32 noundef %179)
  %480 = getelementptr %struct.sk_buff, ptr %393, i32 0, i32 3, i32 40
  store i32 %479, ptr %480, align 4
  %481 = load ptr, ptr %401, align 4
  %482 = load ptr, ptr %403, align 8
  %483 = ptrtoint ptr %481 to i32
  %484 = ptrtoint ptr %482 to i32
  %485 = add i32 %22, %483
  %486 = sub i32 %485, %484
  %487 = trunc i32 %486 to i16
  %488 = getelementptr %struct.sk_buff, ptr %393, i32 0, i32 3, i32 44
  store i16 %487, ptr %488, align 4
  br label %763

489:                                              ; preds = %454
  %490 = getelementptr inbounds %struct.sk_buff, ptr %393, i32 0, i32 14
  %491 = load ptr, ptr %490, align 8
  %492 = getelementptr inbounds %struct.sk_buff, ptr %393, i32 0, i32 6
  %493 = load i32, ptr %492, align 4
  %494 = icmp eq i32 %493, 0
  br i1 %494, label %496, label %495, !prof !13

495:                                              ; preds = %489
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22net/core/skbuff.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1984, 0\0A.popsection", ""() #21, !srcloc !46
  unreachable

496:                                              ; preds = %489
  %497 = getelementptr i8, ptr %491, i32 %179
  store ptr %497, ptr %490, align 8
  %498 = add i32 %450, %179
  store i32 %498, ptr %449, align 8
  %499 = getelementptr inbounds %struct.sk_buff, ptr %393, i32 0, i32 15
  %500 = load ptr, ptr %499, align 4
  %501 = icmp ugt ptr %497, %500
  br i1 %501, label %502, label %504, !prof !12

502:                                              ; preds = %496
  %503 = tail call ptr @llvm.returnaddress(i32 0) #21
  tail call fastcc void @skb_over_panic(ptr noundef nonnull %393, i32 noundef %179, ptr noundef %503) #21
  unreachable

504:                                              ; preds = %496
  %505 = tail call i32 @skb_copy_bits(ptr noundef %0, i32 noundef %166, ptr noundef %491, i32 noundef %179)
  br label %763

506:                                              ; preds = %453
  %507 = getelementptr inbounds %struct.sk_buff, ptr %393, i32 0, i32 15
  %508 = load ptr, ptr %507, align 4
  %509 = getelementptr inbounds %struct.sk_buff, ptr %393, i32 0, i32 14
  %510 = load ptr, ptr %509, align 8
  %511 = getelementptr inbounds %struct.sk_buff, ptr %393, i32 0, i32 6
  %512 = load i32, ptr %511, align 4
  %513 = icmp eq i32 %512, 0
  br i1 %513, label %515, label %514, !prof !13

514:                                              ; preds = %506
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22net/core/skbuff.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1984, 0\0A.popsection", ""() #21, !srcloc !46
  unreachable

515:                                              ; preds = %506
  %516 = getelementptr i8, ptr %510, i32 %394
  store ptr %516, ptr %509, align 8
  %517 = add i32 %450, %394
  store i32 %517, ptr %449, align 8
  %518 = icmp ugt ptr %516, %508
  br i1 %518, label %519, label %521, !prof !12

519:                                              ; preds = %515
  %520 = tail call ptr @llvm.returnaddress(i32 0) #21
  tail call fastcc void @skb_over_panic(ptr noundef nonnull %393, i32 noundef %394, ptr noundef %520) #21
  unreachable

521:                                              ; preds = %515
  %522 = load ptr, ptr %12, align 4
  %523 = getelementptr i8, ptr %522, i32 %166
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 1 %510, ptr align 1 %523, i32 %394, i1 false) #21
  %524 = load ptr, ptr %4, align 4
  %525 = load i8, ptr %524, align 8
  %526 = and i8 %525, 2
  %527 = load ptr, ptr %507, align 4
  %528 = load i8, ptr %527, align 8
  %529 = or i8 %528, %526
  store i8 %529, ptr %527, align 8
  %530 = icmp eq ptr %389, null
  br i1 %530, label %551, label %531

531:                                              ; preds = %521
  %532 = getelementptr inbounds %struct.sk_buff, ptr %389, i32 0, i32 15
  %533 = load ptr, ptr %532, align 4
  %534 = load i8, ptr %533, align 8
  %535 = and i8 %534, 1
  %536 = icmp eq i8 %535, 0
  br i1 %536, label %551, label %537

537:                                              ; preds = %531
  %538 = getelementptr inbounds %struct.skb_shared_info, ptr %533, i32 0, i32 11
  %539 = load ptr, ptr %538, align 4
  %540 = icmp eq ptr %539, null
  br i1 %540, label %551, label %541, !prof !13

541:                                              ; preds = %537
  %542 = ptrtoint ptr %539 to i32
  %543 = and i32 %542, 1
  %544 = icmp eq i32 %543, 0
  br i1 %544, label %545, label %548

545:                                              ; preds = %541
  %546 = load ptr, ptr %539, align 4
  %547 = icmp eq ptr %546, @msg_zerocopy_callback
  br i1 %547, label %551, label %548

548:                                              ; preds = %545, %541
  %549 = tail call i32 @skb_copy_ubufs(ptr noundef nonnull %389, i32 noundef 2592) #21
  %550 = icmp eq i32 %549, 0
  br i1 %550, label %551, label %843

551:                                              ; preds = %548, %545, %537, %531, %521
  %552 = tail call fastcc i32 @skb_zerocopy_clone(ptr noundef nonnull %393, ptr noundef %389, i32 noundef 2592)
  %553 = icmp eq i32 %552, 0
  br i1 %553, label %554, label %843

554:                                              ; preds = %551
  %555 = add i32 %179, %166
  %556 = icmp ult i32 %392, %555
  br i1 %556, label %557, label %709

557:                                              ; preds = %554
  %558 = getelementptr inbounds %struct.skb_shared_info, ptr %508, i32 0, i32 12
  br label %559

559:                                              ; preds = %700, %557
  %560 = phi ptr [ %703, %700 ], [ %558, %557 ]
  %561 = phi i32 [ %698, %700 ], [ %392, %557 ]
  %562 = phi i32 [ %701, %700 ], [ %391, %557 ]
  %563 = phi i32 [ %622, %700 ], [ %390, %557 ]
  %564 = phi ptr [ %621, %700 ], [ %389, %557 ]
  %565 = phi ptr [ %702, %700 ], [ %388, %557 ]
  %566 = phi ptr [ %619, %700 ], [ %387, %557 ]
  %567 = icmp slt i32 %562, %563
  br i1 %567, label %618, label %568

568:                                              ; preds = %559
  %569 = getelementptr inbounds %struct.sk_buff, ptr %566, i32 0, i32 15
  %570 = load ptr, ptr %569, align 4
  %571 = getelementptr inbounds %struct.skb_shared_info, ptr %570, i32 0, i32 2
  %572 = load i8, ptr %571, align 2
  %573 = zext i8 %572 to i32
  %574 = getelementptr inbounds %struct.sk_buff, ptr %566, i32 0, i32 5
  %575 = load i32, ptr %574, align 8
  %576 = getelementptr inbounds %struct.sk_buff, ptr %566, i32 0, i32 6
  %577 = load i32, ptr %576, align 4
  %578 = icmp eq i32 %575, %577
  br i1 %578, label %579, label %583

579:                                              ; preds = %568
  %580 = getelementptr inbounds %struct.skb_shared_info, ptr %570, i32 0, i32 12
  %581 = icmp eq i8 %572, 0
  br i1 %581, label %582, label %591, !prof !12

582:                                              ; preds = %579
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22net/core/skbuff.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 4179, 0\0A.popsection", ""() #21, !srcloc !73
  unreachable

583:                                              ; preds = %568
  %584 = getelementptr inbounds %struct.sk_buff, ptr %566, i32 0, i32 11
  %585 = load i8, ptr %584, align 2
  %586 = and i8 %585, 32
  %587 = icmp eq i8 %586, 0
  br i1 %587, label %588, label %589, !prof !12

588:                                              ; preds = %583
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22net/core/skbuff.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 4181, 0\0A.popsection", ""() #21, !srcloc !74
  unreachable

589:                                              ; preds = %583
  %590 = getelementptr %struct.skb_shared_info, ptr %570, i32 0, i32 9
  br label %591

591:                                              ; preds = %589, %579
  %592 = phi ptr [ %590, %589 ], [ %580, %579 ]
  %593 = phi i32 [ -1, %589 ], [ 0, %579 ]
  %594 = icmp eq ptr %566, null
  br i1 %594, label %613, label %595

595:                                              ; preds = %591
  %596 = load i8, ptr %570, align 8
  %597 = and i8 %596, 1
  %598 = icmp eq i8 %597, 0
  br i1 %598, label %613, label %599

599:                                              ; preds = %595
  %600 = getelementptr inbounds %struct.skb_shared_info, ptr %570, i32 0, i32 11
  %601 = load ptr, ptr %600, align 4
  %602 = icmp eq ptr %601, null
  br i1 %602, label %613, label %603, !prof !13

603:                                              ; preds = %599
  %604 = ptrtoint ptr %601 to i32
  %605 = and i32 %604, 1
  %606 = icmp eq i32 %605, 0
  br i1 %606, label %607, label %610

607:                                              ; preds = %603
  %608 = load ptr, ptr %601, align 4
  %609 = icmp eq ptr %608, @msg_zerocopy_callback
  br i1 %609, label %613, label %610

610:                                              ; preds = %607, %603
  %611 = tail call i32 @skb_copy_ubufs(ptr noundef nonnull %566, i32 noundef 2592) #21
  %612 = icmp eq i32 %611, 0
  br i1 %612, label %613, label %843

613:                                              ; preds = %610, %607, %599, %595, %591
  %614 = tail call fastcc i32 @skb_zerocopy_clone(ptr noundef nonnull %393, ptr noundef %566, i32 noundef 2592)
  %615 = icmp eq i32 %614, 0
  br i1 %615, label %616, label %843

616:                                              ; preds = %613
  %617 = load ptr, ptr %566, align 8
  br label %618

618:                                              ; preds = %616, %559
  %619 = phi ptr [ %617, %616 ], [ %566, %559 ]
  %620 = phi ptr [ %592, %616 ], [ %565, %559 ]
  %621 = phi ptr [ %566, %616 ], [ %564, %559 ]
  %622 = phi i32 [ %573, %616 ], [ %563, %559 ]
  %623 = phi i32 [ %593, %616 ], [ %562, %559 ]
  %624 = load ptr, ptr %507, align 4
  %625 = getelementptr inbounds %struct.skb_shared_info, ptr %624, i32 0, i32 2
  %626 = load i8, ptr %625, align 2
  %627 = icmp ugt i8 %626, 16
  br i1 %627, label %628, label %633, !prof !12

628:                                              ; preds = %618
  %629 = tail call i32 @net_ratelimit() #21
  %630 = icmp eq i32 %629, 0
  br i1 %630, label %843, label %631

631:                                              ; preds = %628
  %632 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, i32 noundef %561, i32 noundef %144) #22
  br label %843

633:                                              ; preds = %618
  %634 = icmp slt i32 %623, 0
  br i1 %634, label %635, label %667

635:                                              ; preds = %633
  %636 = getelementptr inbounds %struct.sk_buff, ptr %621, i32 0, i32 16
  %637 = load ptr, ptr %636, align 8, !noalias !75
  %638 = load ptr, ptr @mem_map, align 4, !noalias !75
  %639 = ptrtoint ptr %637 to i32
  %640 = add i32 %639, 1073741824
  %641 = lshr i32 %640, 12
  %642 = getelementptr %struct.page, ptr %638, i32 %641, i32 1
  %643 = load volatile i32, ptr %642, align 4, !noalias !75
  %644 = and i32 %643, 1
  %645 = icmp eq i32 %644, 0
  br i1 %645, label %648, label %646, !prof !13

646:                                              ; preds = %635
  %647 = add i32 %643, -1
  br label %651

648:                                              ; preds = %635
  %649 = getelementptr %struct.page, ptr %638, i32 %641
  %650 = ptrtoint ptr %649 to i32
  br label %651

651:                                              ; preds = %648, %646
  %652 = phi i32 [ %647, %646 ], [ %650, %648 ]
  %653 = inttoptr i32 %652 to ptr
  %654 = getelementptr inbounds %struct.sk_buff, ptr %621, i32 0, i32 17
  %655 = load ptr, ptr %654, align 4, !noalias !75
  %656 = tail call ptr @page_address(ptr noundef %653) #21, !noalias !75
  %657 = ptrtoint ptr %655 to i32
  %658 = ptrtoint ptr %656 to i32
  %659 = sub i32 %657, %658
  %660 = getelementptr inbounds %struct.sk_buff, ptr %621, i32 0, i32 5
  %661 = load i32, ptr %660, align 8, !noalias !75
  %662 = getelementptr inbounds %struct.sk_buff, ptr %621, i32 0, i32 6
  %663 = load i32, ptr %662, align 4, !noalias !75
  %664 = sub i32 %661, %663
  store ptr %653, ptr %560, align 4
  %665 = getelementptr inbounds i8, ptr %560, i32 4
  store i32 %664, ptr %665, align 4
  %666 = getelementptr inbounds i8, ptr %560, i32 8
  store i32 %659, ptr %666, align 4
  br label %669

667:                                              ; preds = %633
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(12) %560, ptr noundef align 4 dereferenceable(12) %620, i32 12, i1 false)
  %668 = load ptr, ptr %560, align 4
  br label %669

669:                                              ; preds = %667, %651
  %670 = phi ptr [ %668, %667 ], [ %653, %651 ]
  %671 = getelementptr inbounds %struct.page, ptr %670, i32 0, i32 1
  %672 = load volatile i32, ptr %671, align 4
  %673 = and i32 %672, 1
  %674 = icmp eq i32 %673, 0
  br i1 %674, label %677, label %675, !prof !13

675:                                              ; preds = %669
  %676 = add i32 %672, -1
  br label %679

677:                                              ; preds = %669
  %678 = ptrtoint ptr %670 to i32
  br label %679

679:                                              ; preds = %677, %675
  %680 = phi i32 [ %676, %675 ], [ %678, %677 ]
  %681 = inttoptr i32 %680 to ptr
  %682 = getelementptr inbounds %struct.page, ptr %681, i32 0, i32 3
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %682) #21, !srcloc !16
  %683 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %682, ptr %682, i32 1, ptr elementtype(i32) %682) #21, !srcloc !38
  %684 = getelementptr inbounds %struct.bio_vec, ptr %560, i32 0, i32 1
  %685 = load i32, ptr %684, align 4
  %686 = icmp ugt i32 %166, %561
  br i1 %686, label %687, label %693

687:                                              ; preds = %679
  %688 = sub i32 %166, %561
  %689 = getelementptr inbounds %struct.bio_vec, ptr %560, i32 0, i32 2
  %690 = load i32, ptr %689, align 4
  %691 = add i32 %690, %688
  store i32 %691, ptr %689, align 4
  %692 = sub i32 %685, %688
  store i32 %692, ptr %684, align 4
  br label %693

693:                                              ; preds = %687, %679
  %694 = load ptr, ptr %507, align 4
  %695 = getelementptr inbounds %struct.skb_shared_info, ptr %694, i32 0, i32 2
  %696 = load i8, ptr %695, align 2
  %697 = add i8 %696, 1
  store i8 %697, ptr %695, align 2
  %698 = add i32 %685, %561
  %699 = icmp ult i32 %555, %698
  br i1 %699, label %705, label %700

700:                                              ; preds = %693
  %701 = add nsw i32 %623, 1
  %702 = getelementptr %struct.bio_vec, ptr %620, i32 1
  %703 = getelementptr %struct.bio_vec, ptr %560, i32 1
  %704 = icmp ugt i32 %555, %698
  br i1 %704, label %559, label %709

705:                                              ; preds = %693
  %706 = sub i32 %555, %698
  %707 = load i32, ptr %684, align 4
  %708 = add i32 %706, %707
  store i32 %708, ptr %684, align 4
  br label %709

709:                                              ; preds = %705, %700, %554
  %710 = phi i32 [ %561, %705 ], [ %392, %554 ], [ %698, %700 ]
  %711 = phi ptr [ %619, %705 ], [ %387, %554 ], [ %619, %700 ]
  %712 = phi ptr [ %620, %705 ], [ %388, %554 ], [ %702, %700 ]
  %713 = phi ptr [ %621, %705 ], [ %389, %554 ], [ %621, %700 ]
  %714 = phi i32 [ %622, %705 ], [ %390, %554 ], [ %622, %700 ]
  %715 = phi i32 [ %623, %705 ], [ %391, %554 ], [ %701, %700 ]
  %716 = sub i32 %179, %394
  store i32 %716, ptr %511, align 4
  %717 = load i32, ptr %449, align 8
  %718 = add i32 %717, %716
  store i32 %718, ptr %449, align 8
  %719 = getelementptr inbounds %struct.sk_buff, ptr %393, i32 0, i32 18
  %720 = load i32, ptr %719, align 8
  %721 = add i32 %720, %716
  store i32 %721, ptr %719, align 8
  br label %722

722:                                              ; preds = %709, %433
  %723 = phi ptr [ %387, %433 ], [ %711, %709 ]
  %724 = phi ptr [ %388, %433 ], [ %712, %709 ]
  %725 = phi ptr [ %389, %433 ], [ %713, %709 ]
  %726 = phi i32 [ %390, %433 ], [ %714, %709 ]
  %727 = phi i32 [ %391, %433 ], [ %715, %709 ]
  %728 = phi i32 [ %392, %433 ], [ %710, %709 ]
  br i1 %143, label %763, label %729

729:                                              ; preds = %722
  %730 = getelementptr inbounds %struct.sk_buff, ptr %393, i32 0, i32 6
  %731 = load i32, ptr %730, align 4
  %732 = icmp eq i32 %731, 0
  br i1 %732, label %742, label %733

733:                                              ; preds = %729
  %734 = getelementptr inbounds %struct.sk_buff, ptr %393, i32 0, i32 15
  %735 = load ptr, ptr %734, align 4
  %736 = load i8, ptr %735, align 8
  %737 = and i8 %736, 2
  %738 = icmp eq i8 %737, 0
  br i1 %738, label %742, label %739

739:                                              ; preds = %733
  %740 = tail call ptr @__pskb_pull_tail(ptr noundef nonnull %393, i32 noundef %731) #21
  %741 = icmp eq ptr %740, null
  br i1 %741, label %843, label %742

742:                                              ; preds = %739, %733, %729
  %743 = getelementptr inbounds %struct.sk_buff, ptr %393, i32 0, i32 13, i32 0, i32 3
  %744 = load i16, ptr %743, align 2
  %745 = and i16 %744, 1024
  %746 = icmp eq i16 %745, 0
  br i1 %746, label %747, label %750

747:                                              ; preds = %742
  %748 = load i16, ptr %409, align 8
  %749 = and i16 %748, -97
  store i16 %749, ptr %409, align 8
  br label %750

750:                                              ; preds = %747, %742
  %751 = load i32, ptr %449, align 8
  %752 = sub i32 %751, %22
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #21
  store i64 %160, ptr %3, align 8
  %753 = call i32 @__skb_checksum(ptr noundef nonnull %393, i32 noundef %22, i32 noundef %752, i32 noundef 0, ptr noundef nonnull %3) #21
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #21
  %754 = getelementptr %struct.sk_buff, ptr %393, i32 0, i32 3, i32 40
  store i32 %753, ptr %754, align 4
  %755 = load ptr, ptr %401, align 4
  %756 = load ptr, ptr %403, align 8
  %757 = ptrtoint ptr %755 to i32
  %758 = ptrtoint ptr %756 to i32
  %759 = add i32 %22, %757
  %760 = sub i32 %759, %758
  %761 = trunc i32 %760 to i16
  %762 = getelementptr %struct.sk_buff, ptr %393, i32 0, i32 3, i32 44
  store i16 %761, ptr %762, align 4
  br label %763

763:                                              ; preds = %750, %722, %504, %478
  %764 = phi ptr [ %387, %504 ], [ %387, %478 ], [ %723, %750 ], [ %723, %722 ]
  %765 = phi ptr [ %388, %504 ], [ %388, %478 ], [ %724, %750 ], [ %724, %722 ]
  %766 = phi ptr [ %389, %504 ], [ %389, %478 ], [ %725, %750 ], [ %725, %722 ]
  %767 = phi i32 [ %390, %504 ], [ %390, %478 ], [ %726, %750 ], [ %726, %722 ]
  %768 = phi i32 [ %391, %504 ], [ %391, %478 ], [ %727, %750 ], [ %727, %722 ]
  %769 = phi i32 [ %392, %504 ], [ %392, %478 ], [ %728, %750 ], [ %728, %722 ]
  %770 = add i32 %179, %166
  %771 = load i32, ptr %28, align 8
  %772 = icmp ult i32 %770, %771
  br i1 %772, label %161, label %773

773:                                              ; preds = %763
  %774 = getelementptr inbounds %struct.anon, ptr %400, i32 0, i32 1
  store ptr %393, ptr %774, align 4
  %775 = icmp eq i32 %145, 0
  br i1 %775, label %827, label %776

776:                                              ; preds = %773
  %777 = load ptr, ptr %4, align 4
  %778 = getelementptr inbounds %struct.skb_shared_info, ptr %777, i32 0, i32 8
  %779 = load i32, ptr %778, align 8
  %780 = getelementptr inbounds %struct.skb_shared_info, ptr %777, i32 0, i32 4
  %781 = load i16, ptr %780, align 4
  %782 = trunc i64 %60 to i32
  %783 = lshr i32 %782, 16
  %784 = and i32 %783, 4096
  %785 = and i32 %779, -3
  %786 = or i32 %785, %784
  %787 = trunc i32 %145 to i16
  br label %788

788:                                              ; preds = %788, %776
  %789 = phi ptr [ %400, %776 ], [ %806, %788 ]
  %790 = getelementptr inbounds %struct.sk_buff, ptr %789, i32 0, i32 15
  %791 = load ptr, ptr %790, align 4
  %792 = getelementptr inbounds %struct.skb_shared_info, ptr %791, i32 0, i32 4
  store i16 %781, ptr %792, align 4
  %793 = load ptr, ptr %790, align 4
  %794 = getelementptr inbounds %struct.skb_shared_info, ptr %793, i32 0, i32 5
  store i16 %787, ptr %794, align 2
  %795 = load ptr, ptr %790, align 4
  %796 = getelementptr inbounds %struct.skb_shared_info, ptr %795, i32 0, i32 8
  store i32 %786, ptr %796, align 8
  %797 = getelementptr inbounds %struct.sk_buff, ptr %789, i32 0, i32 17
  %798 = load ptr, ptr %797, align 4
  %799 = getelementptr inbounds %struct.sk_buff, ptr %789, i32 0, i32 16
  %800 = load ptr, ptr %799, align 8
  %801 = ptrtoint ptr %798 to i32
  %802 = ptrtoint ptr %800 to i32
  %803 = add i32 %22, %801
  %804 = sub i32 %803, %802
  %805 = getelementptr %struct.sk_buff, ptr %789, i32 0, i32 3, i32 32
  store i32 %804, ptr %805, align 4
  %806 = load ptr, ptr %789, align 8
  %807 = icmp eq ptr %806, null
  br i1 %807, label %808, label %788

808:                                              ; preds = %788
  %809 = load i32, ptr %449, align 8
  %810 = sub i32 %809, %22
  %811 = zext i16 %781 to i32
  %812 = icmp ugt i32 %810, %811
  br i1 %812, label %817, label %813

813:                                              ; preds = %808
  %814 = getelementptr inbounds %struct.sk_buff, ptr %393, i32 0, i32 15
  %815 = load ptr, ptr %814, align 4
  %816 = getelementptr inbounds %struct.skb_shared_info, ptr %815, i32 0, i32 4
  store i16 0, ptr %816, align 4
  br label %827

817:                                              ; preds = %808
  %818 = icmp eq ptr %393, %400
  br i1 %818, label %827, label %819

819:                                              ; preds = %817
  %820 = add nsw i32 %811, -1
  %821 = add i32 %820, %810
  %822 = udiv i32 %821, %811
  %823 = trunc i32 %822 to i16
  %824 = getelementptr inbounds %struct.sk_buff, ptr %393, i32 0, i32 15
  %825 = load ptr, ptr %824, align 4
  %826 = getelementptr inbounds %struct.skb_shared_info, ptr %825, i32 0, i32 5
  store i16 %823, ptr %826, align 2
  br label %827

827:                                              ; preds = %819, %817, %813, %773
  %828 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 4, i32 0, i32 1
  %829 = load ptr, ptr %828, align 4
  %830 = icmp eq ptr %829, @sock_wfree
  br i1 %830, label %831, label %846

831:                                              ; preds = %827
  %832 = getelementptr inbounds %struct.sk_buff, ptr %393, i32 0, i32 18
  %833 = load i32, ptr %832, align 8
  %834 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 18
  %835 = load i32, ptr %834, align 8
  store i32 %835, ptr %832, align 8
  store i32 %833, ptr %834, align 8
  %836 = getelementptr inbounds %struct.sk_buff, ptr %393, i32 0, i32 4, i32 0, i32 1
  %837 = load ptr, ptr %836, align 4
  %838 = load ptr, ptr %828, align 4
  store ptr %838, ptr %836, align 4
  store ptr %837, ptr %828, align 4
  %839 = getelementptr inbounds %struct.sk_buff, ptr %393, i32 0, i32 1
  %840 = load ptr, ptr %839, align 4
  %841 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 1
  %842 = load ptr, ptr %841, align 4
  store ptr %842, ptr %839, align 4
  store ptr %840, ptr %841, align 4
  br label %846

843:                                              ; preds = %739, %631, %628, %613, %610, %551, %548, %359, %316, %297, %295, %247, %224
  %844 = phi ptr [ inttoptr (i32 -12 to ptr), %316 ], [ inttoptr (i32 -12 to ptr), %297 ], [ inttoptr (i32 -12 to ptr), %295 ], [ inttoptr (i32 -22 to ptr), %628 ], [ inttoptr (i32 -22 to ptr), %631 ], [ inttoptr (i32 -12 to ptr), %247 ], [ inttoptr (i32 -12 to ptr), %610 ], [ inttoptr (i32 -12 to ptr), %613 ], [ inttoptr (i32 -12 to ptr), %739 ], [ inttoptr (i32 -12 to ptr), %548 ], [ inttoptr (i32 -12 to ptr), %551 ], [ inttoptr (i32 -12 to ptr), %359 ], [ inttoptr (i32 -12 to ptr), %224 ]
  %845 = phi ptr [ %171, %316 ], [ %171, %297 ], [ %171, %295 ], [ %400, %628 ], [ %400, %631 ], [ %171, %247 ], [ %400, %610 ], [ %400, %613 ], [ %171, %224 ], [ %171, %359 ], [ %400, %551 ], [ %400, %548 ], [ %400, %739 ]
  tail call void @kfree_skb_list(ptr noundef %845)
  br label %846

846:                                              ; preds = %843, %831, %827, %59
  %847 = phi ptr [ %844, %843 ], [ %400, %831 ], [ %400, %827 ], [ inttoptr (i32 -22 to ptr), %59 ]
  ret ptr %847
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i16 @skb_network_protocol(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @net_ratelimit() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @sock_wfree(ptr noundef) #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local void @skb_init() local_unnamed_addr #18 section ".init.text" {
  %1 = tail call ptr @kmem_cache_create_usercopy(ptr noundef nonnull @.str.11, i32 noundef 176, i32 noundef 0, i32 noundef 270336, i32 noundef 24, i32 noundef 48, ptr noundef null) #21
  store ptr %1, ptr @skbuff_head_cache, align 4
  %2 = tail call ptr @kmem_cache_create(ptr noundef nonnull @.str.12, i32 noundef 360, i32 noundef 0, i32 noundef 270336, ptr noundef null) #21
  store ptr %2, ptr @skbuff_fclone_cache, align 4
  %3 = tail call ptr @kmem_cache_create(ptr noundef nonnull @.str.23, i32 noundef 64, i32 noundef 0, i32 noundef 270336, ptr noundef null) #21
  store ptr %3, ptr @skbuff_ext_cache, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kmem_cache_create_usercopy(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kmem_cache_create(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @skb_to_sgvec(ptr nocapture noundef readonly %0, ptr nocapture noundef %1, i32 noundef %2, i32 noundef %3) #0 {
  %5 = tail call fastcc i32 @__skb_to_sgvec(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef 0)
  %6 = icmp slt i32 %5, 1
  br i1 %6, label %13, label %7

7:                                                ; preds = %4
  %8 = add nsw i32 %5, -1
  %9 = getelementptr %struct.scatterlist, ptr %1, i32 %8
  %10 = load i32, ptr %9, align 4
  %11 = and i32 %10, -4
  %12 = or i32 %11, 2
  store i32 %12, ptr %9, align 4
  br label %13

13:                                               ; preds = %7, %4
  ret i32 %5
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @__skb_to_sgvec(ptr nocapture noundef readonly %0, ptr nocapture noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) unnamed_addr #0 {
  %6 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 5
  %7 = load i32, ptr %6, align 8
  %8 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 6
  %9 = load i32, ptr %8, align 4
  %10 = sub i32 %7, %9
  %11 = sub i32 %10, %2
  %12 = icmp ugt i32 %4, 23
  br i1 %12, label %167, label %13, !prof !12

13:                                               ; preds = %5
  %14 = icmp sgt i32 %11, 0
  br i1 %14, label %15, label %40

15:                                               ; preds = %13
  %16 = tail call i32 @llvm.smin.i32(i32 %11, i32 %3)
  %17 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 17
  %18 = load ptr, ptr %17, align 4
  %19 = getelementptr i8, ptr %18, i32 %2
  %20 = load ptr, ptr @mem_map, align 4
  %21 = ptrtoint ptr %19 to i32
  %22 = add i32 %21, 1073741824
  %23 = lshr i32 %22, 12
  %24 = getelementptr %struct.page, ptr %20, i32 %23
  %25 = ptrtoint ptr %24 to i32
  %26 = and i32 %25, 3
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %29, label %28, !prof !13

28:                                               ; preds = %15
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 112, 0\0A.popsection", ""() #21, !srcloc !78
  unreachable

29:                                               ; preds = %15
  %30 = and i32 %21, 4095
  %31 = load i32, ptr %1, align 4
  %32 = and i32 %31, 3
  %33 = or i32 %32, %25
  store i32 %33, ptr %1, align 4
  %34 = getelementptr inbounds %struct.scatterlist, ptr %1, i32 0, i32 1
  store i32 %30, ptr %34, align 4
  %35 = getelementptr inbounds %struct.scatterlist, ptr %1, i32 0, i32 2
  store i32 %16, ptr %35, align 4
  %36 = sub i32 %3, %16
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %167, label %38

38:                                               ; preds = %29
  %39 = add i32 %16, %2
  br label %40

40:                                               ; preds = %38, %13
  %41 = phi i32 [ %36, %38 ], [ %3, %13 ]
  %42 = phi i32 [ 1, %38 ], [ 0, %13 ]
  %43 = phi i32 [ %39, %38 ], [ %2, %13 ]
  %44 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 15
  %45 = load ptr, ptr %44, align 4
  %46 = getelementptr inbounds %struct.skb_shared_info, ptr %45, i32 0, i32 2
  %47 = load i8, ptr %46, align 2
  %48 = icmp eq i8 %47, 0
  br i1 %48, label %110, label %49

49:                                               ; preds = %100, %40
  %50 = phi ptr [ %101, %100 ], [ %45, %40 ]
  %51 = phi i32 [ %104, %100 ], [ %43, %40 ]
  %52 = phi i32 [ %103, %100 ], [ %42, %40 ]
  %53 = phi i32 [ %105, %100 ], [ 0, %40 ]
  %54 = phi i32 [ %65, %100 ], [ %10, %40 ]
  %55 = phi i32 [ %102, %100 ], [ %41, %40 ]
  %56 = add i32 %51, %55
  %57 = icmp sgt i32 %54, %56
  br i1 %57, label %58, label %60, !prof !12

58:                                               ; preds = %49
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 4396, i32 noundef 9, ptr noundef null) #21
  %59 = load ptr, ptr %44, align 4
  br label %60

60:                                               ; preds = %58, %49
  %61 = phi ptr [ %59, %58 ], [ %50, %49 ]
  %62 = getelementptr %struct.skb_shared_info, ptr %61, i32 0, i32 12, i32 %53
  %63 = getelementptr %struct.skb_shared_info, ptr %61, i32 0, i32 12, i32 %53, i32 1
  %64 = load i32, ptr %63, align 4
  %65 = add i32 %64, %54
  %66 = sub i32 %65, %51
  %67 = icmp sgt i32 %66, 0
  br i1 %67, label %68, label %100

68:                                               ; preds = %60
  %69 = icmp eq i32 %52, 0
  br i1 %69, label %76, label %70

70:                                               ; preds = %68
  %71 = add i32 %52, -1
  %72 = getelementptr %struct.scatterlist, ptr %1, i32 %71
  %73 = load i32, ptr %72, align 4
  %74 = and i32 %73, 2
  %75 = icmp eq i32 %74, 0
  br i1 %75, label %76, label %167, !prof !13

76:                                               ; preds = %70, %68
  %77 = tail call i32 @llvm.smin.i32(i32 %66, i32 %55)
  %78 = load ptr, ptr %62, align 4
  %79 = ptrtoint ptr %78 to i32
  %80 = and i32 %79, 3
  %81 = icmp eq i32 %80, 0
  br i1 %81, label %83, label %82, !prof !13

82:                                               ; preds = %76
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 112, 0\0A.popsection", ""() #21, !srcloc !78
  unreachable

83:                                               ; preds = %76
  %84 = getelementptr %struct.skb_shared_info, ptr %61, i32 0, i32 12, i32 %53, i32 2
  %85 = load i32, ptr %84, align 4
  %86 = sub i32 %51, %54
  %87 = add i32 %86, %85
  %88 = getelementptr %struct.scatterlist, ptr %1, i32 %52
  %89 = load i32, ptr %88, align 4
  %90 = and i32 %89, 3
  %91 = or i32 %90, %79
  store i32 %91, ptr %88, align 4
  %92 = getelementptr %struct.scatterlist, ptr %1, i32 %52, i32 1
  store i32 %87, ptr %92, align 4
  %93 = getelementptr %struct.scatterlist, ptr %1, i32 %52, i32 2
  store i32 %77, ptr %93, align 4
  %94 = add i32 %52, 1
  %95 = sub i32 %55, %77
  %96 = icmp eq i32 %95, 0
  br i1 %96, label %167, label %97

97:                                               ; preds = %83
  %98 = add i32 %77, %51
  %99 = load ptr, ptr %44, align 4
  br label %100

100:                                              ; preds = %97, %60
  %101 = phi ptr [ %61, %60 ], [ %99, %97 ]
  %102 = phi i32 [ %55, %60 ], [ %95, %97 ]
  %103 = phi i32 [ %52, %60 ], [ %94, %97 ]
  %104 = phi i32 [ %51, %60 ], [ %98, %97 ]
  %105 = add nuw nsw i32 %53, 1
  %106 = getelementptr inbounds %struct.skb_shared_info, ptr %101, i32 0, i32 2
  %107 = load i8, ptr %106, align 2
  %108 = zext i8 %107 to i32
  %109 = icmp ult i32 %105, %108
  br i1 %109, label %49, label %110

110:                                              ; preds = %100, %40
  %111 = phi i32 [ %41, %40 ], [ %102, %100 ]
  %112 = phi i32 [ %10, %40 ], [ %65, %100 ]
  %113 = phi i32 [ %42, %40 ], [ %103, %100 ]
  %114 = phi i32 [ %43, %40 ], [ %104, %100 ]
  %115 = phi ptr [ %45, %40 ], [ %101, %100 ]
  %116 = getelementptr inbounds %struct.skb_shared_info, ptr %115, i32 0, i32 6
  %117 = load ptr, ptr %116, align 8
  %118 = icmp eq ptr %117, null
  br i1 %118, label %162, label %119

119:                                              ; preds = %110
  %120 = add i32 %4, 1
  br label %121

121:                                              ; preds = %156, %119
  %122 = phi ptr [ %117, %119 ], [ %160, %156 ]
  %123 = phi i32 [ %114, %119 ], [ %159, %156 ]
  %124 = phi i32 [ %113, %119 ], [ %158, %156 ]
  %125 = phi i32 [ %112, %119 ], [ %133, %156 ]
  %126 = phi i32 [ %111, %119 ], [ %157, %156 ]
  %127 = add i32 %123, %126
  %128 = icmp sgt i32 %125, %127
  br i1 %128, label %129, label %130, !prof !12

129:                                              ; preds = %121
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 4419, i32 noundef 9, ptr noundef null) #21
  br label %130

130:                                              ; preds = %129, %121
  %131 = getelementptr inbounds %struct.sk_buff, ptr %122, i32 0, i32 5
  %132 = load i32, ptr %131, align 8
  %133 = add i32 %132, %125
  %134 = sub i32 %133, %123
  %135 = icmp sgt i32 %134, 0
  br i1 %135, label %136, label %156

136:                                              ; preds = %130
  %137 = icmp eq i32 %124, 0
  br i1 %137, label %144, label %138

138:                                              ; preds = %136
  %139 = add i32 %124, -1
  %140 = getelementptr %struct.scatterlist, ptr %1, i32 %139
  %141 = load i32, ptr %140, align 4
  %142 = and i32 %141, 2
  %143 = icmp eq i32 %142, 0
  br i1 %143, label %144, label %167, !prof !13

144:                                              ; preds = %138, %136
  %145 = tail call i32 @llvm.smin.i32(i32 %134, i32 %126)
  %146 = getelementptr %struct.scatterlist, ptr %1, i32 %124
  %147 = sub i32 %123, %125
  %148 = tail call fastcc i32 @__skb_to_sgvec(ptr noundef nonnull %122, ptr noundef %146, i32 noundef %147, i32 noundef %145, i32 noundef %120)
  %149 = icmp slt i32 %148, 0
  br i1 %149, label %167, label %150, !prof !12

150:                                              ; preds = %144
  %151 = add i32 %148, %124
  %152 = sub i32 %126, %145
  %153 = icmp eq i32 %152, 0
  br i1 %153, label %167, label %154

154:                                              ; preds = %150
  %155 = add i32 %145, %123
  br label %156

156:                                              ; preds = %154, %130
  %157 = phi i32 [ %152, %154 ], [ %126, %130 ]
  %158 = phi i32 [ %151, %154 ], [ %124, %130 ]
  %159 = phi i32 [ %155, %154 ], [ %123, %130 ]
  %160 = load ptr, ptr %122, align 8
  %161 = icmp eq ptr %160, null
  br i1 %161, label %162, label %121

162:                                              ; preds = %156, %110
  %163 = phi i32 [ %111, %110 ], [ %157, %156 ]
  %164 = phi i32 [ %113, %110 ], [ %158, %156 ]
  %165 = icmp eq i32 %163, 0
  br i1 %165, label %167, label %166, !prof !13

166:                                              ; preds = %162
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22net/core/skbuff.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 4439, 0\0A.popsection", ""() #21, !srcloc !79
  unreachable

167:                                              ; preds = %162, %150, %144, %138, %83, %70, %29, %5
  %168 = phi i32 [ -90, %5 ], [ 1, %29 ], [ %164, %162 ], [ -90, %138 ], [ %148, %144 ], [ %151, %150 ], [ -90, %70 ], [ %94, %83 ]
  ret i32 %168
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @skb_to_sgvec_nomark(ptr nocapture noundef readonly %0, ptr nocapture noundef %1, i32 noundef %2, i32 noundef %3) #0 {
  %5 = tail call fastcc i32 @__skb_to_sgvec(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef 0)
  ret i32 %5
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @skb_cow_data(ptr noundef %0, i32 noundef %1, ptr nocapture noundef writeonly %2) #0 {
  %4 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 11
  %5 = load i8, ptr %4, align 2
  %6 = and i8 %5, 1
  %7 = icmp eq i8 %6, 0
  %8 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 15
  %9 = load ptr, ptr %8, align 4
  br i1 %7, label %15, label %10

10:                                               ; preds = %3
  %11 = getelementptr inbounds %struct.skb_shared_info, ptr %9, i32 0, i32 10
  %12 = load volatile i32, ptr %11, align 4
  %13 = and i32 %12, 65535
  %14 = icmp eq i32 %13, 1
  br i1 %14, label %15, label %21

15:                                               ; preds = %10, %3
  %16 = getelementptr inbounds %struct.skb_shared_info, ptr %9, i32 0, i32 2
  %17 = load i8, ptr %16, align 2
  %18 = icmp eq i8 %17, 0
  br i1 %18, label %45, label %19

19:                                               ; preds = %15
  %20 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 15
  br label %26

21:                                               ; preds = %10
  %22 = getelementptr inbounds %struct.skb_shared_info, ptr %9, i32 0, i32 2
  %23 = load i8, ptr %22, align 2
  %24 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 15
  %25 = icmp eq i8 %23, 0
  br i1 %25, label %38, label %26

26:                                               ; preds = %21, %19
  %27 = phi ptr [ %20, %19 ], [ %24, %21 ]
  %28 = phi i8 [ %17, %19 ], [ %23, %21 ]
  %29 = zext i8 %28 to i32
  br label %30

30:                                               ; preds = %30, %26
  %31 = phi i32 [ %33, %30 ], [ %29, %26 ]
  %32 = phi i32 [ %36, %30 ], [ 0, %26 ]
  %33 = add nsw i32 %31, -1
  %34 = getelementptr %struct.skb_shared_info, ptr %9, i32 0, i32 12, i32 %33, i32 1
  %35 = load i32, ptr %34, align 4
  %36 = add i32 %35, %32
  %37 = icmp ugt i32 %31, 1
  br i1 %37, label %30, label %38

38:                                               ; preds = %30, %21
  %39 = phi ptr [ %24, %21 ], [ %27, %30 ]
  %40 = phi i32 [ 0, %21 ], [ %36, %30 ]
  %41 = tail call ptr @__pskb_pull_tail(ptr noundef %0, i32 noundef %40)
  %42 = icmp eq ptr %41, null
  br i1 %42, label %197, label %43

43:                                               ; preds = %38
  %44 = load ptr, ptr %39, align 4
  br label %45

45:                                               ; preds = %43, %15
  %46 = phi ptr [ %44, %43 ], [ %9, %15 ]
  %47 = getelementptr inbounds %struct.skb_shared_info, ptr %46, i32 0, i32 6
  %48 = load ptr, ptr %47, align 8
  %49 = icmp eq ptr %48, null
  br i1 %49, label %53, label %50

50:                                               ; preds = %45
  %51 = icmp ne i32 %1, 0
  %52 = add i32 %1, 128
  br label %80

53:                                               ; preds = %45
  %54 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 6
  %55 = load i32, ptr %54, align 4
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %57, label %64

57:                                               ; preds = %53
  %58 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 14
  %59 = load ptr, ptr %58, align 8
  %60 = ptrtoint ptr %46 to i32
  %61 = ptrtoint ptr %59 to i32
  %62 = sub i32 %60, %61
  %63 = icmp slt i32 %62, %1
  br i1 %63, label %66, label %74

64:                                               ; preds = %53
  %65 = icmp sgt i32 %1, 0
  br i1 %65, label %68, label %74

66:                                               ; preds = %57
  %67 = sub i32 %61, %60
  br label %68

68:                                               ; preds = %66, %64
  %69 = phi i32 [ %67, %66 ], [ 0, %64 ]
  %70 = add i32 %1, 128
  %71 = add i32 %70, %69
  %72 = tail call i32 @pskb_expand_head(ptr noundef %0, i32 noundef 0, i32 noundef %71, i32 noundef 2592)
  %73 = icmp eq i32 %72, 0
  br i1 %73, label %74, label %197

74:                                               ; preds = %68, %64, %57
  store ptr %0, ptr %2, align 4
  br label %197

75:                                               ; preds = %196, %177, %175, %142
  %76 = phi ptr [ %84, %142 ], [ %160, %196 ], [ %160, %177 ], [ %160, %175 ]
  %77 = add i32 %82, 1
  store ptr %76, ptr %2, align 4
  %78 = load ptr, ptr %76, align 4
  %79 = icmp eq ptr %78, null
  br i1 %79, label %197, label %80

80:                                               ; preds = %75, %50
  %81 = phi ptr [ %47, %50 ], [ %76, %75 ]
  %82 = phi i32 [ 1, %50 ], [ %77, %75 ]
  %83 = phi i32 [ 0, %50 ], [ %88, %75 ]
  %84 = phi ptr [ %48, %50 ], [ %78, %75 ]
  %85 = getelementptr inbounds %struct.sk_buff, ptr %84, i32 0, i32 19
  %86 = load volatile i32, ptr %85, align 4
  %87 = icmp eq i32 %86, 1
  %88 = select i1 %87, i32 %83, i32 1
  %89 = load ptr, ptr %84, align 8
  %90 = icmp eq ptr %89, null
  %91 = and i1 %51, %90
  br i1 %91, label %92, label %116

92:                                               ; preds = %80
  %93 = getelementptr inbounds %struct.sk_buff, ptr %84, i32 0, i32 15
  %94 = load ptr, ptr %93, align 4
  %95 = getelementptr inbounds %struct.skb_shared_info, ptr %94, i32 0, i32 2
  %96 = load i8, ptr %95, align 2
  %97 = icmp eq i8 %96, 0
  br i1 %97, label %98, label %115

98:                                               ; preds = %92
  %99 = getelementptr inbounds %struct.skb_shared_info, ptr %94, i32 0, i32 6
  %100 = load ptr, ptr %99, align 8
  %101 = icmp eq ptr %100, null
  br i1 %101, label %102, label %115

102:                                              ; preds = %98
  %103 = getelementptr inbounds %struct.sk_buff, ptr %84, i32 0, i32 6
  %104 = load i32, ptr %103, align 4
  %105 = icmp eq i32 %104, 0
  br i1 %105, label %106, label %112

106:                                              ; preds = %102
  %107 = getelementptr inbounds %struct.sk_buff, ptr %84, i32 0, i32 14
  %108 = load ptr, ptr %107, align 8
  %109 = ptrtoint ptr %94 to i32
  %110 = ptrtoint ptr %108 to i32
  %111 = sub i32 %109, %110
  br label %112

112:                                              ; preds = %106, %102
  %113 = phi i32 [ %111, %106 ], [ 0, %102 ]
  %114 = icmp slt i32 %113, %1
  br i1 %114, label %115, label %116

115:                                              ; preds = %112, %98, %92
  br label %116

116:                                              ; preds = %115, %112, %80
  %117 = phi i32 [ %52, %115 ], [ 0, %112 ], [ 0, %80 ]
  %118 = icmp eq i32 %88, 0
  br i1 %118, label %119, label %146

119:                                              ; preds = %116
  %120 = getelementptr inbounds %struct.sk_buff, ptr %84, i32 0, i32 11
  %121 = load i8, ptr %120, align 2
  %122 = and i8 %121, 1
  %123 = icmp eq i8 %122, 0
  br i1 %123, label %132, label %124

124:                                              ; preds = %119
  %125 = getelementptr inbounds %struct.sk_buff, ptr %84, i32 0, i32 15
  %126 = load ptr, ptr %125, align 4
  %127 = getelementptr inbounds %struct.skb_shared_info, ptr %126, i32 0, i32 10
  %128 = load volatile i32, ptr %127, align 4
  %129 = and i32 %128, 65535
  %130 = icmp ne i32 %129, 1
  %131 = zext i1 %130 to i32
  br label %132

132:                                              ; preds = %124, %119
  %133 = phi i32 [ 0, %119 ], [ %131, %124 ]
  %134 = or i32 %133, %117
  %135 = icmp eq i32 %134, 0
  br i1 %135, label %136, label %146

136:                                              ; preds = %132
  %137 = getelementptr inbounds %struct.sk_buff, ptr %84, i32 0, i32 15
  %138 = load ptr, ptr %137, align 4
  %139 = getelementptr inbounds %struct.skb_shared_info, ptr %138, i32 0, i32 2
  %140 = load i8, ptr %139, align 2
  %141 = icmp eq i8 %140, 0
  br i1 %141, label %142, label %146

142:                                              ; preds = %136
  %143 = getelementptr inbounds %struct.skb_shared_info, ptr %138, i32 0, i32 6
  %144 = load ptr, ptr %143, align 8
  %145 = icmp eq ptr %144, null
  br i1 %145, label %75, label %146

146:                                              ; preds = %142, %136, %132, %116
  %147 = icmp eq i32 %117, 0
  br i1 %147, label %148, label %150

148:                                              ; preds = %146
  %149 = tail call ptr @skb_copy(ptr noundef nonnull %84, i32 noundef 2592)
  br label %159

150:                                              ; preds = %146
  %151 = getelementptr inbounds %struct.sk_buff, ptr %84, i32 0, i32 17
  %152 = load ptr, ptr %151, align 4
  %153 = getelementptr inbounds %struct.sk_buff, ptr %84, i32 0, i32 16
  %154 = load ptr, ptr %153, align 8
  %155 = ptrtoint ptr %152 to i32
  %156 = ptrtoint ptr %154 to i32
  %157 = sub i32 %155, %156
  %158 = tail call ptr @skb_copy_expand(ptr noundef nonnull %84, i32 noundef %157, i32 noundef %117, i32 noundef 2592)
  br label %159

159:                                              ; preds = %150, %148
  %160 = phi ptr [ %149, %148 ], [ %158, %150 ]
  %161 = icmp eq ptr %160, null
  br i1 %161, label %197, label %162, !prof !12

162:                                              ; preds = %159
  %163 = getelementptr inbounds %struct.sk_buff, ptr %84, i32 0, i32 1
  %164 = load ptr, ptr %163, align 4
  %165 = icmp eq ptr %164, null
  br i1 %165, label %167, label %166

166:                                              ; preds = %162
  tail call void @skb_set_owner_w(ptr noundef nonnull %160, ptr noundef nonnull %164) #21
  br label %167

167:                                              ; preds = %166, %162
  %168 = load ptr, ptr %84, align 8
  store ptr %168, ptr %160, align 8
  store ptr %160, ptr %81, align 4
  %169 = load volatile i32, ptr %85, align 4
  %170 = icmp eq i32 %169, 1
  tail call void asm sideeffect "dmb ish", "~{memory}"() #21
  br i1 %170, label %179, label %171, !prof !13

171:                                              ; preds = %167
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %85) #21, !srcloc !16
  %172 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %85, ptr %85, i32 1, ptr elementtype(i32) %85) #21, !srcloc !19
  %173 = extractvalue { i32, i32, i32 } %172, 0
  %174 = icmp eq i32 %173, 1
  br i1 %174, label %178, label %175

175:                                              ; preds = %171
  %176 = icmp sgt i32 %173, 0
  br i1 %176, label %75, label %177, !prof !13

177:                                              ; preds = %175
  tail call void @refcount_warn_saturate(ptr noundef %85, i32 noundef 3) #21
  br label %75

178:                                              ; preds = %171
  tail call void asm sideeffect "dmb ish", "~{memory}"() #21, !srcloc !20
  br label %179

179:                                              ; preds = %178, %167
  %180 = tail call ptr @llvm.returnaddress(i32 0) #21
  %181 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_kfree_skb, i32 0, i32 1), align 4
  %182 = icmp sgt i32 %181, 0
  br i1 %182, label %183, label %196

183:                                              ; preds = %179
  %184 = tail call ptr @llvm.thread.pointer() #21
  %185 = getelementptr inbounds %struct.thread_info, ptr %184, i32 0, i32 2
  %186 = load i32, ptr %185, align 8
  %187 = lshr i32 %186, 5
  %188 = getelementptr i32, ptr @__cpu_online_mask, i32 %187
  %189 = load volatile i32, ptr %188, align 4
  %190 = and i32 %186, 31
  %191 = shl nuw i32 1, %190
  %192 = and i32 %191, %189
  %193 = icmp eq i32 %192, 0
  br i1 %193, label %196, label %194

194:                                              ; preds = %183
  tail call void asm sideeffect "", "~{memory}"() #21, !srcloc !21
  %195 = tail call i32 @__traceiter_kfree_skb(ptr noundef null, ptr noundef nonnull %84, ptr noundef %180, i32 noundef 0) #21
  tail call void asm sideeffect "", "~{memory}"() #21, !srcloc !22
  br label %196

196:                                              ; preds = %194, %183, %179
  tail call void @__kfree_skb(ptr noundef nonnull %84) #21
  br label %75

197:                                              ; preds = %159, %75, %74, %68, %38
  %198 = phi i32 [ 1, %74 ], [ -12, %38 ], [ -12, %68 ], [ %77, %75 ], [ -12, %159 ]
  ret i32 %198
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @sock_queue_err_skb(ptr noundef %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 9
  %4 = load volatile i32, ptr %3, align 4
  %5 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 18
  %6 = load i32, ptr %5, align 8
  %7 = add i32 %6, %4
  %8 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 15
  %9 = load volatile i32, ptr %8, align 4
  %10 = icmp ult i32 %7, %9
  br i1 %10, label %11, label %74

11:                                               ; preds = %2
  %12 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 4, i32 0, i32 1
  %13 = load ptr, ptr %12, align 4
  %14 = icmp eq ptr %13, null
  br i1 %14, label %17, label %15

15:                                               ; preds = %11
  tail call void %13(ptr noundef %1) #21
  %16 = load i32, ptr %5, align 8
  br label %22

17:                                               ; preds = %11
  %18 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 1
  %19 = load ptr, ptr %18, align 4
  %20 = icmp eq ptr %19, null
  br i1 %20, label %22, label %21, !prof !13

21:                                               ; preds = %17
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/skbuff.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2859, 0\0A.popsection", ""() #21, !srcloc !33
  unreachable

22:                                               ; preds = %17, %15
  %23 = phi i32 [ %16, %15 ], [ %6, %17 ]
  %24 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 1
  store ptr %0, ptr %24, align 4
  store ptr @sock_rmem_free, ptr %12, align 4
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %3) #21, !srcloc !16
  %25 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %3, ptr %3, i32 %23, ptr elementtype(i32) %3) #21, !srcloc !38
  %26 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 13
  %27 = load i16, ptr %26, align 8
  %28 = and i16 %27, -8
  %29 = or i16 %28, 4
  store i16 %29, ptr %26, align 8
  %30 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 4
  %31 = load i32, ptr %30, align 8
  %32 = and i32 %31, 1
  %33 = icmp ne i32 %32, 0
  %34 = icmp ugt i32 %31, 1
  %35 = and i1 %34, %33
  br i1 %35, label %36, label %59

36:                                               ; preds = %22
  %37 = and i32 %31, -2
  %38 = inttoptr i32 %37 to ptr
  %39 = getelementptr inbounds %struct.dst_entry, ptr %38, i32 0, i32 18
  tail call void asm sideeffect "dmb ish", "~{memory}"() #21, !srcloc !34
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %39) #21, !srcloc !16
  %40 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %39, ptr %39, i32 0, i32 1, ptr elementtype(i32) %39) #21, !srcloc !35
  %41 = extractvalue { i32, i32, i32 } %40, 0
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %44, label %43

43:                                               ; preds = %36
  tail call void asm sideeffect "dmb ish", "~{memory}"() #21, !srcloc !36
  br label %44

44:                                               ; preds = %43, %36
  %45 = phi ptr [ null, %36 ], [ %38, %43 ]
  %46 = ptrtoint ptr %45 to i32
  store i32 %46, ptr %30, align 8
  %47 = icmp ne ptr %45, null
  %48 = zext i1 %47 to i8
  %49 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 13, i32 0, i32 3
  %50 = load i16, ptr %49, align 2
  %51 = lshr i16 %50, 14
  %52 = trunc i16 %51 to i8
  %53 = and i8 %52, 1
  %54 = or i8 %53, %48
  %55 = zext i8 %54 to i16
  %56 = shl nuw nsw i16 %55, 14
  %57 = and i16 %50, -16385
  %58 = or i16 %56, %57
  store i16 %58, ptr %49, align 2
  br label %59

59:                                               ; preds = %44, %22
  %60 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 7
  %61 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 7, i32 2
  %62 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %61) #21
  %63 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 7, i32 0, i32 0, i32 1
  %64 = load ptr, ptr %63, align 4
  store volatile ptr %60, ptr %1, align 8
  %65 = getelementptr inbounds %struct.anon, ptr %1, i32 0, i32 1
  store volatile ptr %64, ptr %65, align 4
  store volatile ptr %1, ptr %63, align 4
  store volatile ptr %1, ptr %64, align 4
  %66 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 7, i32 1
  %67 = load i32, ptr %66, align 4
  %68 = add i32 %67, 1
  store volatile i32 %68, ptr %66, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %61, i32 noundef %62) #21
  %69 = getelementptr inbounds %struct.sock_common, ptr %0, i32 0, i32 13
  %70 = load volatile i32, ptr %69, align 4
  %71 = and i32 %70, 1
  %72 = icmp eq i32 %71, 0
  br i1 %72, label %73, label %74

73:                                               ; preds = %59
  tail call void @sk_error_report(ptr noundef %0) #21
  br label %74

74:                                               ; preds = %73, %59, %2
  %75 = phi i32 [ -12, %2 ], [ 0, %73 ], [ 0, %59 ]
  ret i32 %75
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @sock_rmem_free(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 1
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 18
  %5 = load i32, ptr %4, align 8
  %6 = getelementptr inbounds %struct.sock, ptr %3, i32 0, i32 9
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %6) #21, !srcloc !16
  %7 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %6, ptr %6, i32 %5, ptr elementtype(i32) %6) #21, !srcloc !42
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @sk_error_report(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @sock_dequeue_err_skb(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 7
  %3 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 7, i32 2
  %4 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %3) #21
  %5 = load ptr, ptr %2, align 4
  %6 = icmp eq ptr %5, %2
  %7 = select i1 %6, ptr null, ptr %5
  %8 = icmp eq ptr %7, null
  br i1 %8, label %30, label %9

9:                                                ; preds = %1
  %10 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 7, i32 1
  %11 = load i32, ptr %10, align 4
  %12 = add i32 %11, -1
  store volatile i32 %12, ptr %10, align 4
  %13 = load ptr, ptr %7, align 8
  %14 = getelementptr inbounds %struct.anon, ptr %7, i32 0, i32 1
  %15 = load ptr, ptr %14, align 4
  store ptr null, ptr %14, align 4
  store ptr null, ptr %7, align 8
  %16 = getelementptr inbounds %struct.anon, ptr %13, i32 0, i32 1
  store volatile ptr %15, ptr %16, align 4
  store volatile ptr %13, ptr %15, align 8
  %17 = load ptr, ptr %2, align 4
  %18 = icmp eq ptr %17, %2
  %19 = icmp eq ptr %17, null
  %20 = or i1 %18, %19
  br i1 %20, label %31, label %21

21:                                               ; preds = %9
  %22 = getelementptr inbounds %struct.sk_buff, ptr %17, i32 0, i32 3, i32 28
  %23 = load i8, ptr %22, align 4
  %24 = and i8 %23, -2
  %25 = icmp eq i8 %24, 2
  br i1 %25, label %26, label %31

26:                                               ; preds = %21
  %27 = getelementptr inbounds %struct.sk_buff, ptr %17, i32 0, i32 3, i32 24
  %28 = load i32, ptr %27, align 8
  %29 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 51
  store i32 %28, ptr %29, align 4
  br label %31

30:                                               ; preds = %1
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %3, i32 noundef %4) #21
  br label %44

31:                                               ; preds = %26, %21, %9
  %32 = phi ptr [ null, %9 ], [ %17, %21 ], [ %17, %26 ]
  %33 = phi i1 [ false, %9 ], [ false, %21 ], [ true, %26 ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %3, i32 noundef %4) #21
  %34 = getelementptr inbounds %struct.sk_buff, ptr %7, i32 0, i32 3, i32 28
  %35 = load i8, ptr %34, align 4
  %36 = and i8 %35, -2
  %37 = icmp ne i8 %36, 2
  %38 = or i1 %33, %37
  br i1 %38, label %41, label %39

39:                                               ; preds = %31
  %40 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 51
  store i32 0, ptr %40, align 4
  br label %41

41:                                               ; preds = %39, %31
  %42 = icmp eq ptr %32, null
  br i1 %42, label %44, label %43

43:                                               ; preds = %41
  tail call void @sk_error_report(ptr noundef %0) #21
  br label %44

44:                                               ; preds = %43, %41, %30
  ret ptr %7
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @skb_clone_sk(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 1
  %3 = load ptr, ptr %2, align 4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %43, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.sock_common, ptr %3, i32 0, i32 19
  %7 = load volatile i32, ptr %6, align 4
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %21, label %9

9:                                                ; preds = %19, %5
  %10 = phi i32 [ %17, %19 ], [ %7, %5 ]
  %11 = add i32 %10, 1
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %6) #21, !srcloc !16
  br label %12

12:                                               ; preds = %12, %9
  %13 = tail call { i32, i32 } asm sideeffect "@ atomic_cmpxchg\0Aldrex\09$1, [$3]\0Amov\09$0, #0\0Ateq\09$1, $4\0Astrexeq $0, $5, [$3]\0A", "=&r,=&r,=*Qo,r,Ir,r,*Qo,~{cc}"(ptr elementtype(i32) %6, ptr %6, i32 %10, i32 %11, ptr elementtype(i32) %6) #21, !srcloc !40
  %14 = extractvalue { i32, i32 } %13, 0
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %12

16:                                               ; preds = %12
  %17 = extractvalue { i32, i32 } %13, 1
  %18 = icmp eq i32 %17, %10
  br i1 %18, label %21, label %19, !prof !13

19:                                               ; preds = %16
  %20 = icmp eq i32 %17, 0
  br i1 %20, label %21, label %9

21:                                               ; preds = %19, %16, %5
  %22 = phi i32 [ 0, %5 ], [ 0, %19 ], [ %10, %16 ]
  %23 = add i32 %22, 1
  %24 = or i32 %23, %22
  %25 = icmp sgt i32 %24, -1
  br i1 %25, label %27, label %26, !prof !13

26:                                               ; preds = %21
  tail call void @refcount_warn_saturate(ptr noundef %6, i32 noundef 0) #21
  br label %27

27:                                               ; preds = %26, %21
  %28 = icmp eq i32 %22, 0
  br i1 %28, label %43, label %29

29:                                               ; preds = %27
  %30 = tail call ptr @skb_clone(ptr noundef %0, i32 noundef 2592)
  %31 = icmp eq ptr %30, null
  br i1 %31, label %32, label %40

32:                                               ; preds = %29
  tail call void asm sideeffect "dmb ish", "~{memory}"() #21, !srcloc !18
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %6) #21, !srcloc !16
  %33 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %6, ptr %6, i32 1, ptr elementtype(i32) %6) #21, !srcloc !19
  %34 = extractvalue { i32, i32, i32 } %33, 0
  %35 = icmp eq i32 %34, 1
  br i1 %35, label %39, label %36

36:                                               ; preds = %32
  %37 = icmp sgt i32 %34, 0
  br i1 %37, label %43, label %38, !prof !13

38:                                               ; preds = %36
  tail call void @refcount_warn_saturate(ptr noundef %6, i32 noundef 3) #21
  br label %43

39:                                               ; preds = %32
  tail call void asm sideeffect "dmb ish", "~{memory}"() #21, !srcloc !20
  tail call void @sk_free(ptr noundef nonnull %3) #21
  br label %43

40:                                               ; preds = %29
  %41 = getelementptr inbounds %struct.sk_buff, ptr %30, i32 0, i32 1
  store ptr %3, ptr %41, align 4
  %42 = getelementptr inbounds %struct.sk_buff, ptr %30, i32 0, i32 4, i32 0, i32 1
  store ptr @sock_efree, ptr %42, align 4
  br label %43

43:                                               ; preds = %40, %39, %38, %36, %27, %1
  %44 = phi ptr [ %30, %40 ], [ null, %27 ], [ null, %1 ], [ null, %36 ], [ null, %38 ], [ null, %39 ]
  ret ptr %44
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @sock_efree(ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @skb_complete_tx_timestamp(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 1
  %4 = load ptr, ptr %3, align 4
  %5 = load i32, ptr @sysctl_tstamp_allow_data, align 4
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %19, !prof !12

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.sock, ptr %4, i32 0, i32 50
  tail call void @_raw_read_lock_bh(ptr noundef %8) #21
  %9 = getelementptr inbounds %struct.sock, ptr %4, i32 0, i32 71
  %10 = load ptr, ptr %9, align 8
  %11 = icmp eq ptr %10, null
  br i1 %11, label %16, label %12

12:                                               ; preds = %7
  %13 = getelementptr inbounds %struct.socket, ptr %10, i32 0, i32 3
  %14 = load ptr, ptr %13, align 4
  %15 = icmp eq ptr %14, null
  br i1 %15, label %16, label %17

16:                                               ; preds = %12, %7
  tail call void @_raw_read_unlock_bh(ptr noundef %8) #21
  br label %55

17:                                               ; preds = %12
  %18 = tail call zeroext i1 @file_ns_capable(ptr noundef nonnull %14, ptr noundef nonnull @init_user_ns, i32 noundef 13) #21
  tail call void @_raw_read_unlock_bh(ptr noundef %8) #21
  br i1 %18, label %19, label %55

19:                                               ; preds = %17, %2
  %20 = getelementptr inbounds %struct.sock_common, ptr %4, i32 0, i32 19
  %21 = load volatile i32, ptr %20, align 4
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %35, label %23

23:                                               ; preds = %33, %19
  %24 = phi i32 [ %31, %33 ], [ %21, %19 ]
  %25 = add i32 %24, 1
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %20) #21, !srcloc !16
  br label %26

26:                                               ; preds = %26, %23
  %27 = tail call { i32, i32 } asm sideeffect "@ atomic_cmpxchg\0Aldrex\09$1, [$3]\0Amov\09$0, #0\0Ateq\09$1, $4\0Astrexeq $0, $5, [$3]\0A", "=&r,=&r,=*Qo,r,Ir,r,*Qo,~{cc}"(ptr elementtype(i32) %20, ptr %20, i32 %24, i32 %25, ptr elementtype(i32) %20) #21, !srcloc !40
  %28 = extractvalue { i32, i32 } %27, 0
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %30, label %26

30:                                               ; preds = %26
  %31 = extractvalue { i32, i32 } %27, 1
  %32 = icmp eq i32 %31, %24
  br i1 %32, label %35, label %33, !prof !13

33:                                               ; preds = %30
  %34 = icmp eq i32 %31, 0
  br i1 %34, label %35, label %23

35:                                               ; preds = %33, %30, %19
  %36 = phi i32 [ 0, %19 ], [ 0, %33 ], [ %24, %30 ]
  %37 = add i32 %36, 1
  %38 = or i32 %37, %36
  %39 = icmp sgt i32 %38, -1
  br i1 %39, label %41, label %40, !prof !13

40:                                               ; preds = %35
  tail call void @refcount_warn_saturate(ptr noundef %20, i32 noundef 0) #21
  br label %41

41:                                               ; preds = %40, %35
  %42 = icmp eq i32 %36, 0
  br i1 %42, label %55, label %43, !prof !12

43:                                               ; preds = %41
  %44 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 15
  %45 = load ptr, ptr %44, align 4
  %46 = getelementptr inbounds %struct.skb_shared_info, ptr %45, i32 0, i32 7
  %47 = load i64, ptr %1, align 8
  store i64 %47, ptr %46, align 8
  tail call fastcc void @__skb_complete_tx_timestamp(ptr noundef %0, ptr noundef %4, i32 noundef 0, i1 noundef zeroext false)
  tail call void asm sideeffect "dmb ish", "~{memory}"() #21, !srcloc !18
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %20) #21, !srcloc !16
  %48 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %20, ptr %20, i32 1, ptr elementtype(i32) %20) #21, !srcloc !19
  %49 = extractvalue { i32, i32, i32 } %48, 0
  %50 = icmp eq i32 %49, 1
  br i1 %50, label %54, label %51

51:                                               ; preds = %43
  %52 = icmp sgt i32 %49, 0
  br i1 %52, label %87, label %53, !prof !13

53:                                               ; preds = %51
  tail call void @refcount_warn_saturate(ptr noundef %20, i32 noundef 3) #21
  br label %87

54:                                               ; preds = %43
  tail call void asm sideeffect "dmb ish", "~{memory}"() #21, !srcloc !20
  tail call void @sk_free(ptr noundef %4) #21
  br label %87

55:                                               ; preds = %41, %17, %16
  %56 = icmp eq ptr %0, null
  br i1 %56, label %87, label %57, !prof !12

57:                                               ; preds = %55
  %58 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 19
  %59 = load volatile i32, ptr %58, align 4
  %60 = icmp eq i32 %59, 1
  tail call void asm sideeffect "dmb ish", "~{memory}"() #21
  br i1 %60, label %69, label %61, !prof !13

61:                                               ; preds = %57
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %58) #21, !srcloc !16
  %62 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %58, ptr %58, i32 1, ptr elementtype(i32) %58) #21, !srcloc !19
  %63 = extractvalue { i32, i32, i32 } %62, 0
  %64 = icmp eq i32 %63, 1
  br i1 %64, label %68, label %65

65:                                               ; preds = %61
  %66 = icmp sgt i32 %63, 0
  br i1 %66, label %87, label %67, !prof !13

67:                                               ; preds = %65
  tail call void @refcount_warn_saturate(ptr noundef %58, i32 noundef 3) #21
  br label %87

68:                                               ; preds = %61
  tail call void asm sideeffect "dmb ish", "~{memory}"() #21, !srcloc !20
  br label %69

69:                                               ; preds = %68, %57
  %70 = tail call ptr @llvm.returnaddress(i32 0) #21
  %71 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_kfree_skb, i32 0, i32 1), align 4
  %72 = icmp sgt i32 %71, 0
  br i1 %72, label %73, label %86

73:                                               ; preds = %69
  %74 = tail call ptr @llvm.thread.pointer() #21
  %75 = getelementptr inbounds %struct.thread_info, ptr %74, i32 0, i32 2
  %76 = load i32, ptr %75, align 8
  %77 = lshr i32 %76, 5
  %78 = getelementptr i32, ptr @__cpu_online_mask, i32 %77
  %79 = load volatile i32, ptr %78, align 4
  %80 = and i32 %76, 31
  %81 = shl nuw i32 1, %80
  %82 = and i32 %81, %79
  %83 = icmp eq i32 %82, 0
  br i1 %83, label %86, label %84

84:                                               ; preds = %73
  tail call void asm sideeffect "", "~{memory}"() #21, !srcloc !21
  %85 = tail call i32 @__traceiter_kfree_skb(ptr noundef null, ptr noundef nonnull %0, ptr noundef %70, i32 noundef 0) #21
  tail call void asm sideeffect "", "~{memory}"() #21, !srcloc !22
  br label %86

86:                                               ; preds = %84, %73, %69
  tail call void @__kfree_skb(ptr noundef nonnull %0) #21
  br label %87

87:                                               ; preds = %86, %67, %65, %55, %54, %53, %51
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @__skb_complete_tx_timestamp(ptr noundef %0, ptr noundef %1, i32 noundef %2, i1 noundef zeroext %3) unnamed_addr #0 {
  %5 = zext i1 %3 to i8
  %6 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 3
  tail call void @llvm.memset.p0.i32(ptr noundef align 4 dereferenceable(48) %6, i8 0, i32 48, i1 false)
  %7 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 3, i32 24
  store i32 42, ptr %7, align 4
  %8 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 3, i32 28
  store i8 4, ptr %8, align 4
  %9 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 3, i32 32
  store i32 %2, ptr %9, align 4
  %10 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 3, i32 44
  store i8 %5, ptr %10, align 4
  %11 = getelementptr inbounds %struct.anon, ptr %0, i32 0, i32 2
  %12 = load ptr, ptr %11, align 8
  %13 = icmp eq ptr %12, null
  br i1 %13, label %17, label %14

14:                                               ; preds = %4
  %15 = getelementptr inbounds %struct.net_device, ptr %12, i32 0, i32 17
  %16 = load i32, ptr %15, align 4
  br label %17

17:                                               ; preds = %14, %4
  %18 = phi i32 [ %16, %14 ], [ 0, %4 ]
  store i32 %18, ptr %6, align 4
  %19 = getelementptr inbounds %struct.sock, ptr %1, i32 0, i32 65
  %20 = load i16, ptr %19, align 8
  %21 = and i16 %20, 128
  %22 = icmp eq i16 %21, 0
  br i1 %22, label %40, label %23

23:                                               ; preds = %17
  %24 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 15
  %25 = load ptr, ptr %24, align 4
  %26 = getelementptr inbounds %struct.skb_shared_info, ptr %25, i32 0, i32 9
  %27 = load i32, ptr %26, align 4
  %28 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 3, i32 36
  store i32 %27, ptr %28, align 4
  %29 = getelementptr inbounds %struct.sock, ptr %1, i32 0, i32 45
  %30 = load i16, ptr %29, align 2
  %31 = icmp eq i16 %30, 1
  br i1 %31, label %32, label %40

32:                                               ; preds = %23
  %33 = getelementptr inbounds %struct.sock, ptr %1, i32 0, i32 46
  %34 = load i16, ptr %33, align 4
  %35 = icmp eq i16 %34, 6
  br i1 %35, label %36, label %40

36:                                               ; preds = %32
  %37 = getelementptr inbounds %struct.sock, ptr %1, i32 0, i32 67
  %38 = load volatile i32, ptr %37, align 4
  %39 = sub i32 %27, %38
  store i32 %39, ptr %28, align 4
  br label %40

40:                                               ; preds = %36, %32, %23, %17
  %41 = tail call i32 @sock_queue_err_skb(ptr noundef %1, ptr noundef %0)
  %42 = icmp eq i32 %41, 0
  %43 = icmp eq ptr %0, null
  %44 = or i1 %43, %42
  br i1 %44, label %75, label %45, !prof !14

45:                                               ; preds = %40
  %46 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 19
  %47 = load volatile i32, ptr %46, align 4
  %48 = icmp eq i32 %47, 1
  tail call void asm sideeffect "dmb ish", "~{memory}"() #21
  br i1 %48, label %57, label %49, !prof !13

49:                                               ; preds = %45
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %46) #21, !srcloc !16
  %50 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %46, ptr %46, i32 1, ptr elementtype(i32) %46) #21, !srcloc !19
  %51 = extractvalue { i32, i32, i32 } %50, 0
  %52 = icmp eq i32 %51, 1
  br i1 %52, label %56, label %53

53:                                               ; preds = %49
  %54 = icmp sgt i32 %51, 0
  br i1 %54, label %75, label %55, !prof !13

55:                                               ; preds = %53
  tail call void @refcount_warn_saturate(ptr noundef %46, i32 noundef 3) #21
  br label %75

56:                                               ; preds = %49
  tail call void asm sideeffect "dmb ish", "~{memory}"() #21, !srcloc !20
  br label %57

57:                                               ; preds = %56, %45
  %58 = tail call ptr @llvm.returnaddress(i32 0) #21
  %59 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_kfree_skb, i32 0, i32 1), align 4
  %60 = icmp sgt i32 %59, 0
  br i1 %60, label %61, label %74

61:                                               ; preds = %57
  %62 = tail call ptr @llvm.thread.pointer() #21
  %63 = getelementptr inbounds %struct.thread_info, ptr %62, i32 0, i32 2
  %64 = load i32, ptr %63, align 8
  %65 = lshr i32 %64, 5
  %66 = getelementptr i32, ptr @__cpu_online_mask, i32 %65
  %67 = load volatile i32, ptr %66, align 4
  %68 = and i32 %64, 31
  %69 = shl nuw i32 1, %68
  %70 = and i32 %69, %67
  %71 = icmp eq i32 %70, 0
  br i1 %71, label %74, label %72

72:                                               ; preds = %61
  tail call void asm sideeffect "", "~{memory}"() #21, !srcloc !21
  %73 = tail call i32 @__traceiter_kfree_skb(ptr noundef null, ptr noundef nonnull %0, ptr noundef %58, i32 noundef 0) #21
  tail call void asm sideeffect "", "~{memory}"() #21, !srcloc !22
  br label %74

74:                                               ; preds = %72, %61, %57
  tail call void @__kfree_skb(ptr noundef nonnull %0) #21
  br label %75

75:                                               ; preds = %74, %55, %53, %40
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @__skb_tstamp_tx(ptr noundef %0, ptr noundef %1, ptr noundef readonly %2, ptr noundef %3, i32 noundef %4) #0 {
  %6 = icmp eq ptr %3, null
  br i1 %6, label %92, label %7

7:                                                ; preds = %5
  %8 = icmp eq ptr %2, null
  %9 = getelementptr inbounds %struct.sock, ptr %3, i32 0, i32 65
  %10 = load i16, ptr %9, align 8
  %11 = and i16 %10, 16384
  %12 = icmp eq i16 %11, 0
  %13 = select i1 %8, i1 %12, i1 false
  br i1 %13, label %14, label %21

14:                                               ; preds = %7
  %15 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 15
  %16 = load ptr, ptr %15, align 4
  %17 = getelementptr inbounds %struct.skb_shared_info, ptr %16, i32 0, i32 3
  %18 = load i8, ptr %17, align 1
  %19 = and i8 %18, 4
  %20 = icmp eq i8 %19, 0
  br i1 %20, label %21, label %92

21:                                               ; preds = %14, %7
  %22 = getelementptr inbounds %struct.sock, ptr %3, i32 0, i32 65
  %23 = and i16 %10, 2048
  %24 = icmp ne i16 %23, 0
  %25 = load i32, ptr @sysctl_tstamp_allow_data, align 4
  %26 = icmp ne i32 %25, 0
  %27 = or i1 %26, %24
  br i1 %27, label %40, label %28, !prof !13

28:                                               ; preds = %21
  %29 = getelementptr inbounds %struct.sock, ptr %3, i32 0, i32 50
  tail call void @_raw_read_lock_bh(ptr noundef %29) #21
  %30 = getelementptr inbounds %struct.sock, ptr %3, i32 0, i32 71
  %31 = load ptr, ptr %30, align 8
  %32 = icmp eq ptr %31, null
  br i1 %32, label %37, label %33

33:                                               ; preds = %28
  %34 = getelementptr inbounds %struct.socket, ptr %31, i32 0, i32 3
  %35 = load ptr, ptr %34, align 4
  %36 = icmp eq ptr %35, null
  br i1 %36, label %37, label %38

37:                                               ; preds = %33, %28
  tail call void @_raw_read_unlock_bh(ptr noundef %29) #21
  br label %92

38:                                               ; preds = %33
  %39 = tail call zeroext i1 @file_ns_capable(ptr noundef nonnull %35, ptr noundef nonnull @init_user_ns, i32 noundef 13) #21
  tail call void @_raw_read_unlock_bh(ptr noundef %29) #21
  br i1 %39, label %40, label %92

40:                                               ; preds = %38, %21
  br i1 %24, label %41, label %61

41:                                               ; preds = %40
  %42 = load i16, ptr %22, align 8
  %43 = and i16 %42, 4096
  %44 = icmp eq i16 %43, 0
  br i1 %44, label %55, label %45

45:                                               ; preds = %41
  %46 = getelementptr inbounds %struct.sock, ptr %3, i32 0, i32 45
  %47 = load i16, ptr %46, align 2
  %48 = icmp eq i16 %47, 1
  br i1 %48, label %49, label %55

49:                                               ; preds = %45
  %50 = getelementptr inbounds %struct.sock, ptr %3, i32 0, i32 46
  %51 = load i16, ptr %50, align 4
  %52 = icmp eq i16 %51, 6
  br i1 %52, label %53, label %55

53:                                               ; preds = %49
  %54 = tail call ptr @tcp_get_timestamping_opt_stats(ptr noundef nonnull %3, ptr noundef %0, ptr noundef %1) #21
  br label %57

55:                                               ; preds = %49, %45, %41
  %56 = tail call ptr @__alloc_skb(i32 noundef 0, i32 noundef 2592, i32 noundef 0, i32 noundef -1) #21
  br label %57

57:                                               ; preds = %55, %53
  %58 = phi ptr [ %54, %53 ], [ %56, %55 ]
  %59 = phi i1 [ true, %53 ], [ false, %55 ]
  %60 = icmp eq ptr %58, null
  br i1 %60, label %92, label %64

61:                                               ; preds = %40
  %62 = tail call ptr @skb_clone(ptr noundef %0, i32 noundef 2592)
  %63 = icmp eq ptr %62, null
  br i1 %63, label %92, label %80

64:                                               ; preds = %57
  %65 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 15
  %66 = load ptr, ptr %65, align 4
  %67 = getelementptr inbounds %struct.skb_shared_info, ptr %66, i32 0, i32 3
  %68 = load i8, ptr %67, align 1
  %69 = and i8 %68, 67
  %70 = getelementptr inbounds %struct.sk_buff, ptr %58, i32 0, i32 15
  %71 = load ptr, ptr %70, align 4
  %72 = getelementptr inbounds %struct.skb_shared_info, ptr %71, i32 0, i32 3
  %73 = load i8, ptr %72, align 1
  %74 = or i8 %73, %69
  store i8 %74, ptr %72, align 1
  %75 = load ptr, ptr %65, align 4
  %76 = getelementptr inbounds %struct.skb_shared_info, ptr %75, i32 0, i32 9
  %77 = load i32, ptr %76, align 4
  %78 = load ptr, ptr %70, align 4
  %79 = getelementptr inbounds %struct.skb_shared_info, ptr %78, i32 0, i32 9
  store i32 %77, ptr %79, align 4
  br label %80

80:                                               ; preds = %64, %61
  %81 = phi ptr [ %58, %64 ], [ %62, %61 ]
  %82 = phi i1 [ %59, %64 ], [ false, %61 ]
  br i1 %8, label %88, label %83

83:                                               ; preds = %80
  %84 = getelementptr inbounds %struct.sk_buff, ptr %81, i32 0, i32 15
  %85 = load ptr, ptr %84, align 4
  %86 = getelementptr inbounds %struct.skb_shared_info, ptr %85, i32 0, i32 7
  %87 = load i64, ptr %2, align 8
  store i64 %87, ptr %86, align 8
  br label %91

88:                                               ; preds = %80
  %89 = tail call i64 @ktime_get_with_offset(i32 noundef 0) #21
  %90 = getelementptr inbounds %struct.sk_buff, ptr %81, i32 0, i32 2
  store i64 %89, ptr %90, align 8
  br label %91

91:                                               ; preds = %88, %83
  tail call fastcc void @__skb_complete_tx_timestamp(ptr noundef nonnull %81, ptr noundef nonnull %3, i32 noundef %4, i1 noundef zeroext %82)
  br label %92

92:                                               ; preds = %91, %61, %57, %38, %37, %14, %5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @tcp_get_timestamping_opt_stats(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @skb_tstamp_tx(ptr noundef %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 1
  %4 = load ptr, ptr %3, align 4
  tail call void @__skb_tstamp_tx(ptr noundef %0, ptr noundef null, ptr noundef %1, ptr noundef %4, i32 noundef 0)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @skb_complete_wifi_ack(ptr noundef %0, i1 noundef zeroext %1) #0 {
  %3 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 1
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 13
  %6 = load i16, ptr %5, align 8
  %7 = and i16 %6, -3073
  %8 = select i1 %1, i16 3072, i16 1024
  %9 = or i16 %8, %7
  store i16 %9, ptr %5, align 8
  %10 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 3
  tail call void @llvm.memset.p0.i32(ptr noundef align 4 dereferenceable(48) %10, i8 0, i32 48, i1 false)
  %11 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 3, i32 24
  store i32 42, ptr %11, align 4
  %12 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 3, i32 28
  store i8 4, ptr %12, align 4
  %13 = getelementptr inbounds %struct.sock_common, ptr %4, i32 0, i32 19
  %14 = load volatile i32, ptr %13, align 4
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %28, label %16

16:                                               ; preds = %26, %2
  %17 = phi i32 [ %24, %26 ], [ %14, %2 ]
  %18 = add i32 %17, 1
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %13) #21, !srcloc !16
  br label %19

19:                                               ; preds = %19, %16
  %20 = tail call { i32, i32 } asm sideeffect "@ atomic_cmpxchg\0Aldrex\09$1, [$3]\0Amov\09$0, #0\0Ateq\09$1, $4\0Astrexeq $0, $5, [$3]\0A", "=&r,=&r,=*Qo,r,Ir,r,*Qo,~{cc}"(ptr elementtype(i32) %13, ptr %13, i32 %17, i32 %18, ptr elementtype(i32) %13) #21, !srcloc !40
  %21 = extractvalue { i32, i32 } %20, 0
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %19

23:                                               ; preds = %19
  %24 = extractvalue { i32, i32 } %20, 1
  %25 = icmp eq i32 %24, %17
  br i1 %25, label %28, label %26, !prof !13

26:                                               ; preds = %23
  %27 = icmp eq i32 %24, 0
  br i1 %27, label %28, label %16

28:                                               ; preds = %26, %23, %2
  %29 = phi i32 [ 0, %2 ], [ 0, %26 ], [ %17, %23 ]
  %30 = add i32 %29, 1
  %31 = or i32 %30, %29
  %32 = icmp sgt i32 %31, -1
  br i1 %32, label %34, label %33, !prof !13

33:                                               ; preds = %28
  tail call void @refcount_warn_saturate(ptr noundef %13, i32 noundef 0) #21
  br label %34

34:                                               ; preds = %33, %28
  %35 = icmp eq i32 %29, 0
  br i1 %35, label %49, label %36, !prof !12

36:                                               ; preds = %34
  %37 = tail call i32 @sock_queue_err_skb(ptr noundef %4, ptr noundef %0)
  tail call void asm sideeffect "dmb ish", "~{memory}"() #21, !srcloc !18
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %13) #21, !srcloc !16
  %38 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %13, ptr %13, i32 1, ptr elementtype(i32) %13) #21, !srcloc !19
  %39 = extractvalue { i32, i32, i32 } %38, 0
  %40 = icmp eq i32 %39, 1
  br i1 %40, label %44, label %41

41:                                               ; preds = %36
  %42 = icmp sgt i32 %39, 0
  br i1 %42, label %45, label %43, !prof !13

43:                                               ; preds = %41
  tail call void @refcount_warn_saturate(ptr noundef %13, i32 noundef 3) #21
  br label %45

44:                                               ; preds = %36
  tail call void asm sideeffect "dmb ish", "~{memory}"() #21, !srcloc !20
  tail call void @sk_free(ptr noundef %4) #21
  br label %45

45:                                               ; preds = %44, %43, %41
  %46 = icmp eq i32 %37, 0
  %47 = icmp eq ptr %0, null
  %48 = or i1 %47, %46
  br i1 %48, label %81, label %51, !prof !14

49:                                               ; preds = %34
  %50 = icmp eq ptr %0, null
  br i1 %50, label %81, label %51, !prof !12

51:                                               ; preds = %49, %45
  %52 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 19
  %53 = load volatile i32, ptr %52, align 4
  %54 = icmp eq i32 %53, 1
  tail call void asm sideeffect "dmb ish", "~{memory}"() #21
  br i1 %54, label %63, label %55, !prof !13

55:                                               ; preds = %51
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %52) #21, !srcloc !16
  %56 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %52, ptr %52, i32 1, ptr elementtype(i32) %52) #21, !srcloc !19
  %57 = extractvalue { i32, i32, i32 } %56, 0
  %58 = icmp eq i32 %57, 1
  br i1 %58, label %62, label %59

59:                                               ; preds = %55
  %60 = icmp sgt i32 %57, 0
  br i1 %60, label %81, label %61, !prof !13

61:                                               ; preds = %59
  tail call void @refcount_warn_saturate(ptr noundef %52, i32 noundef 3) #21
  br label %81

62:                                               ; preds = %55
  tail call void asm sideeffect "dmb ish", "~{memory}"() #21, !srcloc !20
  br label %63

63:                                               ; preds = %62, %51
  %64 = tail call ptr @llvm.returnaddress(i32 0) #21
  %65 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_kfree_skb, i32 0, i32 1), align 4
  %66 = icmp sgt i32 %65, 0
  br i1 %66, label %67, label %80

67:                                               ; preds = %63
  %68 = tail call ptr @llvm.thread.pointer() #21
  %69 = getelementptr inbounds %struct.thread_info, ptr %68, i32 0, i32 2
  %70 = load i32, ptr %69, align 8
  %71 = lshr i32 %70, 5
  %72 = getelementptr i32, ptr @__cpu_online_mask, i32 %71
  %73 = load volatile i32, ptr %72, align 4
  %74 = and i32 %70, 31
  %75 = shl nuw i32 1, %74
  %76 = and i32 %75, %73
  %77 = icmp eq i32 %76, 0
  br i1 %77, label %80, label %78

78:                                               ; preds = %67
  tail call void asm sideeffect "", "~{memory}"() #21, !srcloc !21
  %79 = tail call i32 @__traceiter_kfree_skb(ptr noundef null, ptr noundef nonnull %0, ptr noundef %64, i32 noundef 0) #21
  tail call void asm sideeffect "", "~{memory}"() #21, !srcloc !22
  br label %80

80:                                               ; preds = %78, %67, %63
  tail call void @__kfree_skb(ptr noundef nonnull %0) #21
  br label %81

81:                                               ; preds = %80, %61, %59, %49, %45
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local zeroext i1 @skb_partial_csum_set(ptr nocapture noundef %0, i16 noundef zeroext %1, i16 noundef zeroext %2) #0 {
  %4 = zext i16 %1 to i32
  %5 = zext i16 %2 to i32
  %6 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 17
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 16
  %9 = load ptr, ptr %8, align 8
  %10 = ptrtoint ptr %7 to i32
  %11 = ptrtoint ptr %9 to i32
  %12 = sub i32 %10, %11
  %13 = add i32 %12, %4
  %14 = icmp ugt i32 %13, 65535
  br i1 %14, label %24, label %15, !prof !12

15:                                               ; preds = %3
  %16 = add nuw nsw i32 %4, 2
  %17 = add nuw nsw i32 %16, %5
  %18 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 5
  %19 = load i32, ptr %18, align 8
  %20 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 6
  %21 = load i32, ptr %20, align 4
  %22 = sub i32 %19, %21
  %23 = icmp ugt i32 %17, %22
  br i1 %23, label %24, label %39, !prof !12

24:                                               ; preds = %15, %3
  %25 = tail call i32 @net_ratelimit() #21
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %49, label %27

27:                                               ; preds = %24
  %28 = load ptr, ptr %6, align 4
  %29 = load ptr, ptr %8, align 8
  %30 = ptrtoint ptr %28 to i32
  %31 = ptrtoint ptr %29 to i32
  %32 = sub i32 %30, %31
  %33 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 5
  %34 = load i32, ptr %33, align 8
  %35 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 6
  %36 = load i32, ptr %35, align 4
  %37 = sub i32 %34, %36
  %38 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13, i32 noundef %4, i32 noundef %5, i32 noundef %32, i32 noundef %37) #22
  br label %49

39:                                               ; preds = %15
  %40 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 13
  %41 = load i16, ptr %40, align 8
  %42 = or i16 %41, 96
  store i16 %42, ptr %40, align 8
  %43 = trunc i32 %13 to i16
  %44 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 13, i32 0, i32 4
  store i16 %43, ptr %44, align 4
  %45 = getelementptr inbounds %struct.anon.169, ptr %44, i32 0, i32 1
  store i16 %2, ptr %45, align 2
  %46 = trunc i32 %12 to i16
  %47 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 13, i32 0, i32 17
  %48 = add i16 %46, %1
  store i16 %48, ptr %47, align 2
  br label %49

49:                                               ; preds = %39, %27, %24
  %50 = phi i1 [ false, %24 ], [ false, %27 ], [ true, %39 ]
  ret i1 %50
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @skb_checksum_setup(ptr noundef %0, i1 noundef zeroext %1) #0 {
  %3 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 13, i32 0, i32 16
  %4 = load i16, ptr %3, align 8
  switch i16 %4, label %262 [
    i16 8, label %5
    i16 -8826, label %67
  ]

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 5
  %7 = load i32, ptr %6, align 8
  %8 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 6
  %9 = load i32, ptr %8, align 4
  %10 = sub i32 %7, %9
  %11 = icmp ult i32 %10, 20
  br i1 %11, label %12, label %22

12:                                               ; preds = %5
  %13 = tail call i32 @llvm.umin.i32(i32 %7, i32 128) #21
  %14 = sub nsw i32 %13, %10
  %15 = tail call ptr @__pskb_pull_tail(ptr noundef %0, i32 noundef %14) #21
  %16 = icmp eq ptr %15, null
  br i1 %16, label %262, label %17

17:                                               ; preds = %12
  %18 = load i32, ptr %6, align 8
  %19 = load i32, ptr %8, align 4
  %20 = sub i32 %18, %19
  %21 = icmp ult i32 %20, 20
  br i1 %21, label %262, label %22

22:                                               ; preds = %17, %5
  %23 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 16
  %24 = load ptr, ptr %23, align 8
  %25 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 13, i32 0, i32 18
  %26 = load i16, ptr %25, align 4
  %27 = zext i16 %26 to i32
  %28 = getelementptr i8, ptr %24, i32 %27
  %29 = getelementptr inbounds %struct.iphdr, ptr %28, i32 0, i32 4
  %30 = load i16, ptr %29, align 2
  %31 = and i16 %30, -193
  %32 = icmp eq i16 %31, 0
  %33 = load i8, ptr %28, align 4
  %34 = shl i8 %33, 2
  %35 = and i8 %34, 60
  %36 = zext i8 %35 to i32
  br i1 %32, label %37, label %262

37:                                               ; preds = %22
  %38 = getelementptr inbounds %struct.iphdr, ptr %28, i32 0, i32 6
  %39 = load i8, ptr %38, align 1
  %40 = zext i8 %39 to i32
  %41 = tail call fastcc ptr @skb_checksum_setup_ip(ptr noundef %0, i32 noundef %40, i32 noundef %36) #21
  %42 = icmp ugt ptr %41, inttoptr (i32 -4096 to ptr)
  br i1 %42, label %43, label %45

43:                                               ; preds = %37
  %44 = ptrtoint ptr %41 to i32
  br label %262

45:                                               ; preds = %37
  br i1 %1, label %46, label %262

46:                                               ; preds = %45
  %47 = load ptr, ptr %23, align 8
  %48 = load i16, ptr %25, align 4
  %49 = zext i16 %48 to i32
  %50 = getelementptr i8, ptr %47, i32 %49
  %51 = getelementptr inbounds %struct.iphdr, ptr %50, i32 0, i32 8
  %52 = load i32, ptr %51, align 4
  %53 = getelementptr inbounds %struct.iphdr, ptr %50, i32 0, i32 9
  %54 = load i32, ptr %53, align 4
  %55 = load i32, ptr %6, align 8
  %56 = sub i32 %55, %36
  %57 = getelementptr inbounds %struct.iphdr, ptr %50, i32 0, i32 6
  %58 = load i8, ptr %57, align 1
  %59 = zext i8 %58 to i32
  %60 = add i32 %56, %59
  %61 = tail call i32 asm "adds\09$0, $1, $2\09@ csum_tcpudp_nofold0\09\0A\09adcs\09$0, $0, $3, ror #8\09\09\09\0A\09adc\09$0, $0, #0", "=&r,r,r,r,~{cc}"(i32 %54, i32 %52, i32 %60) #23, !srcloc !80
  %62 = tail call i32 asm "add\09$0, $1, $1, ror #16\09@ csum_fold", "=r,r,~{cc}"(i32 %61) #23, !srcloc !64
  %63 = xor i32 %62, -1
  %64 = lshr i32 %63, 16
  %65 = trunc i32 %64 to i16
  %66 = xor i16 %65, -1
  store i16 %66, ptr %41, align 2
  br label %262

67:                                               ; preds = %2
  %68 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 5
  %69 = load i32, ptr %68, align 8
  %70 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 6
  %71 = load i32, ptr %70, align 4
  %72 = sub i32 %69, %71
  %73 = icmp ult i32 %72, 40
  br i1 %73, label %74, label %84

74:                                               ; preds = %67
  %75 = tail call i32 @llvm.umin.i32(i32 %69, i32 256) #21
  %76 = sub nsw i32 %75, %72
  %77 = tail call ptr @__pskb_pull_tail(ptr noundef %0, i32 noundef %76) #21
  %78 = icmp eq ptr %77, null
  br i1 %78, label %262, label %79

79:                                               ; preds = %74
  %80 = load i32, ptr %68, align 8
  %81 = load i32, ptr %70, align 4
  %82 = sub i32 %80, %81
  %83 = icmp ult i32 %82, 40
  br i1 %83, label %262, label %84

84:                                               ; preds = %79, %67
  %85 = phi i32 [ %71, %67 ], [ %81, %79 ]
  %86 = phi i32 [ %69, %67 ], [ %80, %79 ]
  %87 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 16
  %88 = load ptr, ptr %87, align 8
  %89 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 13, i32 0, i32 18
  %90 = load i16, ptr %89, align 4
  %91 = zext i16 %90 to i32
  %92 = getelementptr i8, ptr %88, i32 %91
  %93 = getelementptr inbounds %struct.ipv6hdr, ptr %92, i32 0, i32 3
  %94 = getelementptr inbounds %struct.ipv6hdr, ptr %92, i32 0, i32 2
  %95 = load i16, ptr %94, align 4
  %96 = tail call i16 @llvm.bswap.i16(i16 %95) #21
  %97 = zext i16 %96 to i32
  %98 = add nuw nsw i32 %97, 40
  br label %99

99:                                               ; preds = %220, %84
  %100 = phi i16 [ %90, %84 ], [ %221, %220 ]
  %101 = phi ptr [ %88, %84 ], [ %222, %220 ]
  %102 = phi i32 [ %85, %84 ], [ %223, %220 ]
  %103 = phi i32 [ %86, %84 ], [ %224, %220 ]
  %104 = phi i16 [ %90, %84 ], [ %225, %220 ]
  %105 = phi ptr [ %88, %84 ], [ %226, %220 ]
  %106 = phi i32 [ %85, %84 ], [ %227, %220 ]
  %107 = phi i32 [ %86, %84 ], [ %228, %220 ]
  %108 = phi i16 [ %90, %84 ], [ %229, %220 ]
  %109 = phi ptr [ %88, %84 ], [ %230, %220 ]
  %110 = phi i32 [ %85, %84 ], [ %231, %220 ]
  %111 = phi i32 [ %86, %84 ], [ %232, %220 ]
  %112 = phi i1 [ false, %84 ], [ %235, %220 ]
  %113 = phi i32 [ 40, %84 ], [ %234, %220 ]
  %114 = phi ptr [ %93, %84 ], [ %233, %220 ]
  %115 = load i8, ptr %114, align 1
  switch i8 %115, label %237 [
    i8 60, label %116
    i8 0, label %116
    i8 43, label %116
    i8 51, label %147
    i8 44, label %182
  ]

116:                                              ; preds = %99, %99, %99
  %117 = add i32 %113, 2
  %118 = sub i32 %103, %102
  %119 = icmp ult i32 %118, %117
  br i1 %119, label %120, label %133

120:                                              ; preds = %116
  %121 = tail call i32 @llvm.umin.i32(i32 %103, i32 256) #21
  %122 = sub i32 %121, %118
  %123 = tail call ptr @__pskb_pull_tail(ptr noundef %0, i32 noundef %122) #21
  %124 = icmp eq ptr %123, null
  br i1 %124, label %262, label %125

125:                                              ; preds = %120
  %126 = load i32, ptr %68, align 8
  %127 = load i32, ptr %70, align 4
  %128 = sub i32 %126, %127
  %129 = icmp ult i32 %128, %117
  br i1 %129, label %262, label %130

130:                                              ; preds = %125
  %131 = load ptr, ptr %87, align 8
  %132 = load i16, ptr %89, align 4
  br label %133

133:                                              ; preds = %130, %116
  %134 = phi i16 [ %132, %130 ], [ %100, %116 ]
  %135 = phi ptr [ %131, %130 ], [ %101, %116 ]
  %136 = phi i32 [ %127, %130 ], [ %102, %116 ]
  %137 = phi i32 [ %126, %130 ], [ %103, %116 ]
  %138 = zext i16 %134 to i32
  %139 = getelementptr i8, ptr %135, i32 %138
  %140 = getelementptr i8, ptr %139, i32 %113
  %141 = getelementptr inbounds %struct.ipv6_opt_hdr, ptr %140, i32 0, i32 1
  %142 = load i8, ptr %141, align 1
  %143 = zext i8 %142 to i32
  %144 = shl nuw nsw i32 %143, 3
  %145 = add i32 %113, 8
  %146 = add i32 %145, %144
  br label %220

147:                                              ; preds = %99
  %148 = add i32 %113, 12
  %149 = sub i32 %107, %106
  %150 = icmp ult i32 %149, %148
  br i1 %150, label %151, label %164

151:                                              ; preds = %147
  %152 = tail call i32 @llvm.umin.i32(i32 %107, i32 256) #21
  %153 = sub i32 %152, %149
  %154 = tail call ptr @__pskb_pull_tail(ptr noundef %0, i32 noundef %153) #21
  %155 = icmp eq ptr %154, null
  br i1 %155, label %262, label %156

156:                                              ; preds = %151
  %157 = load i32, ptr %68, align 8
  %158 = load i32, ptr %70, align 4
  %159 = sub i32 %157, %158
  %160 = icmp ult i32 %159, %148
  br i1 %160, label %262, label %161

161:                                              ; preds = %156
  %162 = load ptr, ptr %87, align 8
  %163 = load i16, ptr %89, align 4
  br label %164

164:                                              ; preds = %161, %147
  %165 = phi i16 [ %163, %161 ], [ %100, %147 ]
  %166 = phi ptr [ %162, %161 ], [ %101, %147 ]
  %167 = phi i32 [ %158, %161 ], [ %102, %147 ]
  %168 = phi i32 [ %157, %161 ], [ %103, %147 ]
  %169 = phi i16 [ %163, %161 ], [ %104, %147 ]
  %170 = phi ptr [ %162, %161 ], [ %105, %147 ]
  %171 = phi i32 [ %158, %161 ], [ %106, %147 ]
  %172 = phi i32 [ %157, %161 ], [ %107, %147 ]
  %173 = zext i16 %169 to i32
  %174 = getelementptr i8, ptr %170, i32 %173
  %175 = getelementptr i8, ptr %174, i32 %113
  %176 = getelementptr inbounds %struct.ip_auth_hdr, ptr %175, i32 0, i32 1
  %177 = load i8, ptr %176, align 1
  %178 = zext i8 %177 to i32
  %179 = shl nuw nsw i32 %178, 2
  %180 = add i32 %113, 8
  %181 = add i32 %180, %179
  br label %220

182:                                              ; preds = %99
  %183 = add i32 %113, 8
  %184 = sub i32 %111, %110
  %185 = icmp ult i32 %184, %183
  br i1 %185, label %186, label %199

186:                                              ; preds = %182
  %187 = tail call i32 @llvm.umin.i32(i32 %111, i32 256) #21
  %188 = sub i32 %187, %184
  %189 = tail call ptr @__pskb_pull_tail(ptr noundef %0, i32 noundef %188) #21
  %190 = icmp eq ptr %189, null
  br i1 %190, label %262, label %191

191:                                              ; preds = %186
  %192 = load i32, ptr %68, align 8
  %193 = load i32, ptr %70, align 4
  %194 = sub i32 %192, %193
  %195 = icmp ult i32 %194, %183
  br i1 %195, label %262, label %196

196:                                              ; preds = %191
  %197 = load ptr, ptr %87, align 8
  %198 = load i16, ptr %89, align 4
  br label %199

199:                                              ; preds = %196, %182
  %200 = phi i16 [ %198, %196 ], [ %100, %182 ]
  %201 = phi ptr [ %197, %196 ], [ %101, %182 ]
  %202 = phi i32 [ %193, %196 ], [ %102, %182 ]
  %203 = phi i32 [ %192, %196 ], [ %103, %182 ]
  %204 = phi i16 [ %198, %196 ], [ %104, %182 ]
  %205 = phi ptr [ %197, %196 ], [ %105, %182 ]
  %206 = phi i32 [ %193, %196 ], [ %106, %182 ]
  %207 = phi i32 [ %192, %196 ], [ %107, %182 ]
  %208 = phi i16 [ %198, %196 ], [ %108, %182 ]
  %209 = phi ptr [ %197, %196 ], [ %109, %182 ]
  %210 = phi i32 [ %193, %196 ], [ %110, %182 ]
  %211 = phi i32 [ %192, %196 ], [ %111, %182 ]
  %212 = zext i16 %208 to i32
  %213 = getelementptr i8, ptr %209, i32 %212
  %214 = getelementptr i8, ptr %213, i32 %113
  %215 = getelementptr inbounds %struct.frag_hdr, ptr %214, i32 0, i32 2
  %216 = load i16, ptr %215, align 2
  %217 = and i16 %216, -1537
  %218 = icmp ne i16 %217, 0
  %219 = select i1 %218, i1 true, i1 %112
  br label %220

220:                                              ; preds = %199, %164, %133
  %221 = phi i16 [ %134, %133 ], [ %165, %164 ], [ %200, %199 ]
  %222 = phi ptr [ %135, %133 ], [ %166, %164 ], [ %201, %199 ]
  %223 = phi i32 [ %136, %133 ], [ %167, %164 ], [ %202, %199 ]
  %224 = phi i32 [ %137, %133 ], [ %168, %164 ], [ %203, %199 ]
  %225 = phi i16 [ %134, %133 ], [ %169, %164 ], [ %204, %199 ]
  %226 = phi ptr [ %135, %133 ], [ %170, %164 ], [ %205, %199 ]
  %227 = phi i32 [ %136, %133 ], [ %171, %164 ], [ %206, %199 ]
  %228 = phi i32 [ %137, %133 ], [ %172, %164 ], [ %207, %199 ]
  %229 = phi i16 [ %134, %133 ], [ %169, %164 ], [ %208, %199 ]
  %230 = phi ptr [ %135, %133 ], [ %170, %164 ], [ %209, %199 ]
  %231 = phi i32 [ %136, %133 ], [ %171, %164 ], [ %210, %199 ]
  %232 = phi i32 [ %137, %133 ], [ %172, %164 ], [ %211, %199 ]
  %233 = phi ptr [ %140, %133 ], [ %175, %164 ], [ %214, %199 ]
  %234 = phi i32 [ %146, %133 ], [ %181, %164 ], [ %183, %199 ]
  %235 = phi i1 [ %112, %133 ], [ %112, %164 ], [ %219, %199 ]
  %236 = icmp ugt i32 %234, %98
  br i1 %236, label %262, label %99

237:                                              ; preds = %99
  br i1 %112, label %262, label %238

238:                                              ; preds = %237
  %239 = zext i8 %115 to i32
  %240 = tail call fastcc ptr @skb_checksum_setup_ip(ptr noundef %0, i32 noundef %239, i32 noundef %113) #21
  %241 = icmp ugt ptr %240, inttoptr (i32 -4096 to ptr)
  br i1 %241, label %242, label %244

242:                                              ; preds = %238
  %243 = ptrtoint ptr %240 to i32
  br label %262

244:                                              ; preds = %238
  br i1 %1, label %245, label %262

245:                                              ; preds = %244
  %246 = load ptr, ptr %87, align 8
  %247 = load i16, ptr %89, align 4
  %248 = zext i16 %247 to i32
  %249 = getelementptr i8, ptr %246, i32 %248
  %250 = getelementptr inbounds %struct.ipv6hdr, ptr %249, i32 0, i32 5
  %251 = getelementptr inbounds %struct.ipv6hdr, ptr %249, i32 0, i32 6
  %252 = load i32, ptr %68, align 8
  %253 = sub i32 %252, %113
  %254 = tail call i32 @llvm.bswap.i32(i32 %253) #21
  %255 = shl nuw i32 %239, 24
  %256 = tail call i32 @__csum_ipv6_magic(ptr noundef %250, ptr noundef %251, i32 noundef %254, i32 noundef %255, i32 noundef 0) #21
  %257 = tail call i32 asm "add\09$0, $1, $1, ror #16\09@ csum_fold", "=r,r,~{cc}"(i32 %256) #23, !srcloc !64
  %258 = xor i32 %257, -1
  %259 = lshr i32 %258, 16
  %260 = trunc i32 %259 to i16
  %261 = xor i16 %260, -1
  store i16 %261, ptr %240, align 2
  br label %262

262:                                              ; preds = %245, %244, %242, %237, %220, %191, %186, %156, %151, %125, %120, %79, %74, %46, %45, %43, %22, %17, %12, %2
  %263 = phi i32 [ -71, %2 ], [ %44, %43 ], [ -71, %22 ], [ 0, %46 ], [ 0, %45 ], [ -12, %12 ], [ -71, %17 ], [ %243, %242 ], [ -71, %237 ], [ 0, %245 ], [ 0, %244 ], [ -12, %74 ], [ -71, %79 ], [ -71, %220 ], [ -12, %120 ], [ -12, %151 ], [ -12, %186 ], [ -71, %125 ], [ -71, %156 ], [ -71, %191 ]
  ret i32 %263
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @skb_checksum_trimmed(ptr noundef %0, i32 noundef %1, ptr nocapture noundef readonly %2) #0 {
  %4 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 16
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 13, i32 0, i32 17
  %7 = load i16, ptr %6, align 2
  %8 = zext i16 %7 to i32
  %9 = getelementptr i8, ptr %5, i32 %8
  %10 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 17
  %11 = load ptr, ptr %10, align 4
  %12 = ptrtoint ptr %9 to i32
  %13 = ptrtoint ptr %11 to i32
  %14 = sub i32 %12, %13
  %15 = add i32 %14, %1
  %16 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 5
  %17 = load i32, ptr %16, align 8
  %18 = icmp ult i32 %17, %15
  br i1 %18, label %175, label %19

19:                                               ; preds = %3
  %20 = icmp eq i32 %17, %15
  br i1 %20, label %63, label %21

21:                                               ; preds = %19
  %22 = tail call ptr @skb_clone(ptr noundef %0, i32 noundef 2592) #21
  %23 = icmp eq ptr %22, null
  br i1 %23, label %175, label %24

24:                                               ; preds = %21
  %25 = getelementptr inbounds %struct.sk_buff, ptr %22, i32 0, i32 5
  %26 = load i32, ptr %25, align 8
  %27 = icmp ugt i32 %26, %15
  br i1 %27, label %28, label %65, !prof !12

28:                                               ; preds = %24
  %29 = tail call i32 @pskb_trim_rcsum_slow(ptr noundef nonnull %22, i32 noundef %15) #21
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %28
  %32 = load i32, ptr %25, align 8
  br label %65

33:                                               ; preds = %28
  %34 = getelementptr inbounds %struct.sk_buff, ptr %22, i32 0, i32 19
  %35 = load volatile i32, ptr %34, align 4
  %36 = icmp eq i32 %35, 1
  tail call void asm sideeffect "dmb ish", "~{memory}"() #21
  br i1 %36, label %45, label %37, !prof !13

37:                                               ; preds = %33
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %34) #21, !srcloc !16
  %38 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %34, ptr %34, i32 1, ptr elementtype(i32) %34) #21, !srcloc !19
  %39 = extractvalue { i32, i32, i32 } %38, 0
  %40 = icmp eq i32 %39, 1
  br i1 %40, label %44, label %41

41:                                               ; preds = %37
  %42 = icmp sgt i32 %39, 0
  br i1 %42, label %175, label %43, !prof !13

43:                                               ; preds = %41
  tail call void @refcount_warn_saturate(ptr noundef %34, i32 noundef 3) #21
  br label %175

44:                                               ; preds = %37
  tail call void asm sideeffect "dmb ish", "~{memory}"() #21, !srcloc !20
  br label %45

45:                                               ; preds = %44, %33
  %46 = tail call ptr @llvm.returnaddress(i32 0) #21
  %47 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_kfree_skb, i32 0, i32 1), align 4
  %48 = icmp sgt i32 %47, 0
  br i1 %48, label %49, label %62

49:                                               ; preds = %45
  %50 = tail call ptr @llvm.thread.pointer() #21
  %51 = getelementptr inbounds %struct.thread_info, ptr %50, i32 0, i32 2
  %52 = load i32, ptr %51, align 8
  %53 = lshr i32 %52, 5
  %54 = getelementptr i32, ptr @__cpu_online_mask, i32 %53
  %55 = load volatile i32, ptr %54, align 4
  %56 = and i32 %52, 31
  %57 = shl nuw i32 1, %56
  %58 = and i32 %57, %55
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %62, label %60

60:                                               ; preds = %49
  tail call void asm sideeffect "", "~{memory}"() #21, !srcloc !21
  %61 = tail call i32 @__traceiter_kfree_skb(ptr noundef null, ptr noundef nonnull %22, ptr noundef %46, i32 noundef 0) #21
  tail call void asm sideeffect "", "~{memory}"() #21, !srcloc !22
  br label %62

62:                                               ; preds = %60, %49, %45
  tail call void @__kfree_skb(ptr noundef nonnull %22) #21
  br label %175

63:                                               ; preds = %19
  %64 = icmp eq ptr %0, null
  br i1 %64, label %175, label %65

65:                                               ; preds = %63, %31, %24
  %66 = phi i32 [ %15, %63 ], [ %32, %31 ], [ %26, %24 ]
  %67 = phi ptr [ %0, %63 ], [ %22, %31 ], [ %22, %24 ]
  %68 = getelementptr inbounds %struct.sk_buff, ptr %67, i32 0, i32 5
  %69 = getelementptr inbounds %struct.sk_buff, ptr %67, i32 0, i32 6
  %70 = load i32, ptr %69, align 4
  %71 = sub i32 %66, %70
  %72 = icmp ugt i32 %14, %71
  br i1 %72, label %73, label %81, !prof !12

73:                                               ; preds = %65
  %74 = icmp ult i32 %66, %14
  br i1 %74, label %143, label %75, !prof !12

75:                                               ; preds = %73
  %76 = sub i32 %14, %71
  %77 = tail call ptr @__pskb_pull_tail(ptr noundef nonnull %67, i32 noundef %76) #21
  %78 = icmp eq ptr %77, null
  br i1 %78, label %143, label %79

79:                                               ; preds = %75
  %80 = load i32, ptr %68, align 8
  br label %81

81:                                               ; preds = %79, %65
  %82 = phi i32 [ %80, %79 ], [ %66, %65 ]
  %83 = icmp ult i32 %82, %14
  br i1 %83, label %84, label %85, !prof !12

84:                                               ; preds = %81
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22net/core/skbuff.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 3838, 0\0A.popsection", ""() #21, !srcloc !69
  unreachable

85:                                               ; preds = %81
  %86 = getelementptr inbounds %struct.sk_buff, ptr %67, i32 0, i32 17
  %87 = load ptr, ptr %86, align 4
  %88 = sub i32 %82, %14
  store i32 %88, ptr %68, align 8
  %89 = load i32, ptr %69, align 4
  %90 = icmp ult i32 %88, %89
  br i1 %90, label %91, label %92, !prof !12

91:                                               ; preds = %85
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/skbuff.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2398, 0\0A.popsection", ""() #21, !srcloc !54
  unreachable

92:                                               ; preds = %85
  %93 = getelementptr i8, ptr %87, i32 %14
  store ptr %93, ptr %86, align 4
  %94 = getelementptr inbounds %struct.sk_buff, ptr %67, i32 0, i32 13
  %95 = load i16, ptr %94, align 8
  %96 = lshr i16 %95, 5
  %97 = trunc i16 %96 to i2
  switch i2 %97, label %117 [
    i2 -2, label %98
    i2 -1, label %104
  ]

98:                                               ; preds = %92
  %99 = getelementptr inbounds %struct.sk_buff, ptr %67, i32 0, i32 13, i32 0, i32 4
  %100 = load i32, ptr %99, align 4
  %101 = sub i32 0, %100
  %102 = tail call i32 @csum_partial(ptr noundef %87, i32 noundef %14, i32 noundef %101) #21
  %103 = sub i32 0, %102
  store i32 %103, ptr %99, align 4
  br label %117

104:                                              ; preds = %92
  %105 = getelementptr inbounds %struct.sk_buff, ptr %67, i32 0, i32 13, i32 0, i32 4
  %106 = load i16, ptr %105, align 4
  %107 = zext i16 %106 to i32
  %108 = getelementptr inbounds %struct.sk_buff, ptr %67, i32 0, i32 16
  %109 = load ptr, ptr %108, align 8
  %110 = ptrtoint ptr %93 to i32
  %111 = ptrtoint ptr %109 to i32
  %112 = sub i32 %107, %110
  %113 = add i32 %112, %111
  %114 = icmp slt i32 %113, 0
  br i1 %114, label %115, label %117

115:                                              ; preds = %104
  %116 = and i16 %95, -97
  store i16 %116, ptr %94, align 8
  br label %117

117:                                              ; preds = %115, %104, %98, %92
  %118 = tail call zeroext i16 %2(ptr noundef nonnull %67) #21
  %119 = load ptr, ptr %86, align 4
  %120 = sub i32 0, %14
  %121 = getelementptr i8, ptr %119, i32 %120
  store ptr %121, ptr %86, align 4
  %122 = load i32, ptr %68, align 8
  %123 = add i32 %122, %14
  store i32 %123, ptr %68, align 8
  %124 = getelementptr inbounds %struct.sk_buff, ptr %67, i32 0, i32 16
  %125 = load ptr, ptr %124, align 8
  %126 = icmp ult ptr %121, %125
  br i1 %126, label %127, label %129, !prof !12

127:                                              ; preds = %117
  %128 = tail call ptr @llvm.returnaddress(i32 0) #21
  tail call fastcc void @skb_under_panic(ptr noundef nonnull %67, i32 noundef %14, ptr noundef %128) #21
  unreachable

129:                                              ; preds = %117
  %130 = load i16, ptr %94, align 8
  %131 = and i16 %130, 96
  %132 = icmp eq i16 %131, 64
  br i1 %132, label %133, label %141

133:                                              ; preds = %129
  %134 = getelementptr inbounds %struct.sk_buff, ptr %67, i32 0, i32 13, i32 0, i32 4
  %135 = load i32, ptr %134, align 4
  %136 = tail call i32 @csum_partial(ptr noundef %121, i32 noundef %14, i32 noundef 0) #21
  %137 = add i32 %136, %135
  %138 = icmp ult i32 %137, %136
  %139 = zext i1 %138 to i32
  %140 = add i32 %137, %139
  store i32 %140, ptr %134, align 4
  br label %141

141:                                              ; preds = %133, %129
  %142 = icmp eq i16 %118, 0
  br i1 %142, label %175, label %143

143:                                              ; preds = %141, %75, %73
  %144 = icmp eq ptr %67, %0
  br i1 %144, label %175, label %145

145:                                              ; preds = %143
  %146 = getelementptr inbounds %struct.sk_buff, ptr %67, i32 0, i32 19
  %147 = load volatile i32, ptr %146, align 4
  %148 = icmp eq i32 %147, 1
  tail call void asm sideeffect "dmb ish", "~{memory}"() #21
  br i1 %148, label %157, label %149, !prof !13

149:                                              ; preds = %145
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %146) #21, !srcloc !16
  %150 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %146, ptr %146, i32 1, ptr elementtype(i32) %146) #21, !srcloc !19
  %151 = extractvalue { i32, i32, i32 } %150, 0
  %152 = icmp eq i32 %151, 1
  br i1 %152, label %156, label %153

153:                                              ; preds = %149
  %154 = icmp sgt i32 %151, 0
  br i1 %154, label %175, label %155, !prof !13

155:                                              ; preds = %153
  tail call void @refcount_warn_saturate(ptr noundef %146, i32 noundef 3) #21
  br label %175

156:                                              ; preds = %149
  tail call void asm sideeffect "dmb ish", "~{memory}"() #21, !srcloc !20
  br label %157

157:                                              ; preds = %156, %145
  %158 = tail call ptr @llvm.returnaddress(i32 0) #21
  %159 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_kfree_skb, i32 0, i32 1), align 4
  %160 = icmp sgt i32 %159, 0
  br i1 %160, label %161, label %174

161:                                              ; preds = %157
  %162 = tail call ptr @llvm.thread.pointer() #21
  %163 = getelementptr inbounds %struct.thread_info, ptr %162, i32 0, i32 2
  %164 = load i32, ptr %163, align 8
  %165 = lshr i32 %164, 5
  %166 = getelementptr i32, ptr @__cpu_online_mask, i32 %165
  %167 = load volatile i32, ptr %166, align 4
  %168 = and i32 %164, 31
  %169 = shl nuw i32 1, %168
  %170 = and i32 %169, %167
  %171 = icmp eq i32 %170, 0
  br i1 %171, label %174, label %172

172:                                              ; preds = %161
  tail call void asm sideeffect "", "~{memory}"() #21, !srcloc !21
  %173 = tail call i32 @__traceiter_kfree_skb(ptr noundef null, ptr noundef nonnull %67, ptr noundef %158, i32 noundef 0) #21
  tail call void asm sideeffect "", "~{memory}"() #21, !srcloc !22
  br label %174

174:                                              ; preds = %172, %161, %157
  tail call void @__kfree_skb(ptr noundef nonnull %67) #21
  br label %175

175:                                              ; preds = %174, %155, %153, %143, %141, %63, %62, %43, %41, %21, %3
  %176 = phi ptr [ %67, %141 ], [ null, %63 ], [ null, %143 ], [ null, %153 ], [ null, %155 ], [ null, %174 ], [ null, %3 ], [ null, %21 ], [ null, %41 ], [ null, %43 ], [ null, %62 ]
  ret ptr %176
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @__skb_warn_lro_forwarding(ptr nocapture noundef readonly %0) #0 {
  %2 = tail call i32 @net_ratelimit() #21
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %8, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.anon, ptr %0, i32 0, i32 2
  %6 = load ptr, ptr %5, align 8
  %7 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.14, ptr noundef %6) #22
  br label %8

8:                                                ; preds = %4, %1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @kfree_skb_partial(ptr noundef %0, i1 noundef zeroext %1) #0 {
  br i1 %1, label %3, label %37

3:                                                ; preds = %2
  %4 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 4
  %5 = load i32, ptr %4, align 8
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %14, label %7

7:                                                ; preds = %3
  %8 = and i32 %5, 1
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %13

10:                                               ; preds = %7
  %11 = and i32 %5, -2
  %12 = inttoptr i32 %11 to ptr
  tail call void @dst_release(ptr noundef %12) #21
  br label %13

13:                                               ; preds = %10, %7
  store i32 0, ptr %4, align 8
  br label %14

14:                                               ; preds = %13, %3
  %15 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 4, i32 0, i32 1
  %16 = load ptr, ptr %15, align 4
  %17 = icmp eq ptr %16, null
  br i1 %17, label %28, label %18

18:                                               ; preds = %14
  %19 = tail call ptr @llvm.thread.pointer() #21
  %20 = getelementptr inbounds %struct.thread_info, ptr %19, i32 0, i32 1
  %21 = load volatile i32, ptr %20, align 4
  %22 = and i32 %21, 983040
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %26, label %24, !prof !13

24:                                               ; preds = %18
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 728, i32 noundef 9, ptr noundef null) #21
  %25 = load ptr, ptr %15, align 4
  br label %26

26:                                               ; preds = %24, %18
  %27 = phi ptr [ %25, %24 ], [ %16, %18 ]
  tail call void %27(ptr noundef %0) #21
  br label %28

28:                                               ; preds = %26, %14
  %29 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 12
  %30 = load i8, ptr %29, align 1
  %31 = icmp eq i8 %30, 0
  br i1 %31, label %35, label %32

32:                                               ; preds = %28
  %33 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 20
  %34 = load ptr, ptr %33, align 8
  tail call void @__skb_ext_put(ptr noundef %34) #21
  br label %35

35:                                               ; preds = %32, %28
  %36 = load ptr, ptr @skbuff_head_cache, align 4
  tail call void @kmem_cache_free(ptr noundef %36, ptr noundef %0) #21
  br label %38

37:                                               ; preds = %2
  tail call void @__kfree_skb(ptr noundef %0)
  br label %38

38:                                               ; preds = %37, %35
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local zeroext i1 @skb_try_coalesce(ptr noundef %0, ptr noundef readonly %1, ptr nocapture noundef writeonly %2, ptr nocapture noundef writeonly %3) #0 {
  %5 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 5
  %6 = load i32, ptr %5, align 8
  store i8 0, ptr %2, align 1
  %7 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 11
  %8 = load i8, ptr %7, align 2
  %9 = and i8 %8, 1
  %10 = icmp eq i8 %9, 0
  br i1 %10, label %18, label %11

11:                                               ; preds = %4
  %12 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 15
  %13 = load ptr, ptr %12, align 4
  %14 = getelementptr inbounds %struct.skb_shared_info, ptr %13, i32 0, i32 10
  %15 = load volatile i32, ptr %14, align 4
  %16 = and i32 %15, 65535
  %17 = icmp eq i32 %16, 1
  br i1 %17, label %18, label %226

18:                                               ; preds = %11, %4
  %19 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 11
  %20 = load i8, ptr %19, align 2
  %21 = xor i8 %20, %8
  %22 = icmp sgt i8 %21, -1
  br i1 %22, label %23, label %226

23:                                               ; preds = %18
  %24 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 6
  %25 = load i32, ptr %24, align 4
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %35

27:                                               ; preds = %23
  %28 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 15
  %29 = load ptr, ptr %28, align 4
  %30 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 14
  %31 = load ptr, ptr %30, align 8
  %32 = ptrtoint ptr %29 to i32
  %33 = ptrtoint ptr %31 to i32
  %34 = sub i32 %32, %33
  br label %35

35:                                               ; preds = %27, %23
  %36 = phi i32 [ %34, %27 ], [ 0, %23 ]
  %37 = icmp sgt i32 %6, %36
  br i1 %37, label %58, label %38

38:                                               ; preds = %35
  %39 = icmp eq i32 %6, 0
  br i1 %39, label %224, label %40

40:                                               ; preds = %38
  %41 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 14
  %42 = load ptr, ptr %41, align 8
  br i1 %26, label %44, label %43, !prof !13

43:                                               ; preds = %40
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22net/core/skbuff.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1984, 0\0A.popsection", ""() #21, !srcloc !46
  unreachable

44:                                               ; preds = %40
  %45 = getelementptr i8, ptr %42, i32 %6
  store ptr %45, ptr %41, align 8
  %46 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 5
  %47 = load i32, ptr %46, align 8
  %48 = add i32 %47, %6
  store i32 %48, ptr %46, align 8
  %49 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 15
  %50 = load ptr, ptr %49, align 4
  %51 = icmp ugt ptr %45, %50
  br i1 %51, label %52, label %54, !prof !12

52:                                               ; preds = %44
  %53 = tail call ptr @llvm.returnaddress(i32 0) #21
  tail call fastcc void @skb_over_panic(ptr noundef %0, i32 noundef %6, ptr noundef %53) #21
  unreachable

54:                                               ; preds = %44
  %55 = tail call i32 @skb_copy_bits(ptr noundef %1, i32 noundef 0, ptr noundef %42, i32 noundef %6)
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %224, label %57, !prof !13

57:                                               ; preds = %54
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22net/core/skbuff.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 5256, 0\0A.popsection", ""() #21, !srcloc !81
  unreachable

58:                                               ; preds = %35
  %59 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 15
  %60 = load ptr, ptr %59, align 4
  %61 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 15
  %62 = load ptr, ptr %61, align 4
  %63 = getelementptr inbounds %struct.skb_shared_info, ptr %60, i32 0, i32 6
  %64 = load ptr, ptr %63, align 8
  %65 = icmp eq ptr %64, null
  br i1 %65, label %66, label %226

66:                                               ; preds = %58
  %67 = getelementptr inbounds %struct.skb_shared_info, ptr %62, i32 0, i32 6
  %68 = load ptr, ptr %67, align 8
  %69 = icmp eq ptr %68, null
  br i1 %69, label %70, label %226

70:                                               ; preds = %66
  %71 = icmp eq ptr %0, null
  br i1 %71, label %80, label %72

72:                                               ; preds = %70
  %73 = load i8, ptr %60, align 8
  %74 = and i8 %73, 1
  %75 = icmp eq i8 %74, 0
  br i1 %75, label %80, label %76

76:                                               ; preds = %72
  %77 = getelementptr inbounds %struct.skb_shared_info, ptr %60, i32 0, i32 11
  %78 = load ptr, ptr %77, align 4
  %79 = icmp eq ptr %78, null
  br i1 %79, label %80, label %226

80:                                               ; preds = %76, %72, %70
  %81 = icmp eq ptr %1, null
  br i1 %81, label %90, label %82

82:                                               ; preds = %80
  %83 = load i8, ptr %62, align 8
  %84 = and i8 %83, 1
  %85 = icmp eq i8 %84, 0
  br i1 %85, label %90, label %86

86:                                               ; preds = %82
  %87 = getelementptr inbounds %struct.skb_shared_info, ptr %62, i32 0, i32 11
  %88 = load ptr, ptr %87, align 4
  %89 = icmp eq ptr %88, null
  br i1 %89, label %90, label %226

90:                                               ; preds = %86, %82, %80
  %91 = load i32, ptr %5, align 8
  %92 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 6
  %93 = load i32, ptr %92, align 4
  %94 = icmp eq i32 %91, %93
  %95 = getelementptr inbounds %struct.skb_shared_info, ptr %60, i32 0, i32 2
  %96 = load i8, ptr %95, align 2
  %97 = zext i8 %96 to i32
  %98 = getelementptr inbounds %struct.skb_shared_info, ptr %62, i32 0, i32 2
  %99 = load i8, ptr %98, align 2
  %100 = zext i8 %99 to i32
  %101 = add nuw nsw i32 %100, %97
  br i1 %94, label %148, label %102

102:                                              ; preds = %90
  %103 = icmp ugt i32 %101, 16
  %104 = and i8 %20, 32
  %105 = icmp eq i8 %104, 0
  %106 = select i1 %103, i1 true, i1 %105
  br i1 %106, label %226, label %107

107:                                              ; preds = %102
  %108 = and i8 %20, 1
  %109 = icmp eq i8 %108, 0
  br i1 %109, label %115, label %110

110:                                              ; preds = %107
  %111 = getelementptr inbounds %struct.skb_shared_info, ptr %62, i32 0, i32 10
  %112 = load volatile i32, ptr %111, align 4
  %113 = and i32 %112, 65535
  %114 = icmp eq i32 %113, 1
  br i1 %114, label %115, label %226

115:                                              ; preds = %110, %107
  %116 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 18
  %117 = load i32, ptr %116, align 8
  %118 = add i32 %117, -192
  %119 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 16
  %120 = load ptr, ptr %119, align 8
  %121 = load ptr, ptr @mem_map, align 4
  %122 = ptrtoint ptr %120 to i32
  %123 = add i32 %122, 1073741824
  %124 = lshr i32 %123, 12
  %125 = getelementptr %struct.page, ptr %121, i32 %124, i32 1
  %126 = load volatile i32, ptr %125, align 4
  %127 = and i32 %126, 1
  %128 = icmp eq i32 %127, 0
  br i1 %128, label %131, label %129, !prof !13

129:                                              ; preds = %115
  %130 = add i32 %126, -1
  br label %134

131:                                              ; preds = %115
  %132 = getelementptr %struct.page, ptr %121, i32 %124
  %133 = ptrtoint ptr %132 to i32
  br label %134

134:                                              ; preds = %131, %129
  %135 = phi i32 [ %130, %129 ], [ %133, %131 ]
  %136 = inttoptr i32 %135 to ptr
  %137 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 17
  %138 = load ptr, ptr %137, align 4
  %139 = tail call ptr @page_address(ptr noundef %136) #21
  %140 = ptrtoint ptr %138 to i32
  %141 = ptrtoint ptr %139 to i32
  %142 = sub i32 %140, %141
  %143 = load i8, ptr %95, align 2
  %144 = zext i8 %143 to i32
  %145 = load i32, ptr %5, align 8
  %146 = load i32, ptr %92, align 4
  %147 = sub i32 %145, %146
  tail call fastcc void @skb_fill_page_desc(ptr noundef %0, i32 noundef %144, ptr noundef %136, i32 noundef %142, i32 noundef %147)
  store i8 1, ptr %2, align 1
  br label %160

148:                                              ; preds = %90
  %149 = icmp ugt i32 %101, 17
  br i1 %149, label %226, label %150

150:                                              ; preds = %148
  %151 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 18
  %152 = load i32, ptr %151, align 8
  %153 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 16
  %154 = load ptr, ptr %153, align 8
  %155 = ptrtoint ptr %62 to i32
  %156 = ptrtoint ptr %154 to i32
  %157 = sub i32 -448, %155
  %158 = add i32 %157, %152
  %159 = add i32 %158, %156
  br label %160

160:                                              ; preds = %150, %134
  %161 = phi i32 [ %118, %134 ], [ %159, %150 ]
  %162 = icmp slt i32 %161, %6
  %163 = load i1, ptr @skb_try_coalesce.__already_done, align 1
  %164 = xor i1 %163, true
  %165 = select i1 %162, i1 %164, i1 false
  br i1 %165, label %166, label %167, !prof !12

166:                                              ; preds = %160
  store i1 true, ptr @skb_try_coalesce.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 5295, i32 noundef 9, ptr noundef null) #21
  br label %167

167:                                              ; preds = %166, %160
  %168 = getelementptr inbounds %struct.skb_shared_info, ptr %60, i32 0, i32 12
  %169 = getelementptr inbounds %struct.skb_shared_info, ptr %60, i32 0, i32 2
  %170 = load i8, ptr %169, align 2
  %171 = zext i8 %170 to i32
  %172 = getelementptr %struct.bio_vec, ptr %168, i32 %171
  %173 = getelementptr inbounds %struct.skb_shared_info, ptr %62, i32 0, i32 12
  %174 = getelementptr inbounds %struct.skb_shared_info, ptr %62, i32 0, i32 2
  %175 = load i8, ptr %174, align 2
  %176 = zext i8 %175 to i32
  %177 = mul nuw nsw i32 %176, 12
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 4 %172, ptr align 8 %173, i32 %177, i1 false)
  %178 = load i8, ptr %174, align 2
  %179 = load i8, ptr %169, align 2
  %180 = add i8 %179, %178
  store i8 %180, ptr %169, align 2
  %181 = load i8, ptr %19, align 2
  %182 = and i8 %181, 1
  %183 = icmp eq i8 %182, 0
  br i1 %183, label %190, label %184

184:                                              ; preds = %167
  %185 = load ptr, ptr %61, align 4
  %186 = getelementptr inbounds %struct.skb_shared_info, ptr %185, i32 0, i32 10
  %187 = load volatile i32, ptr %186, align 4
  %188 = and i32 %187, 65535
  %189 = icmp eq i32 %188, 1
  br i1 %189, label %190, label %191

190:                                              ; preds = %184, %167
  store i8 0, ptr %174, align 2
  br label %215

191:                                              ; preds = %184
  %192 = load i8, ptr %174, align 2
  %193 = icmp eq i8 %192, 0
  br i1 %193, label %215, label %194

194:                                              ; preds = %206, %191
  %195 = phi i32 [ %211, %206 ], [ 0, %191 ]
  %196 = getelementptr %struct.skb_shared_info, ptr %62, i32 0, i32 12, i32 %195
  %197 = load ptr, ptr %196, align 4
  %198 = getelementptr inbounds %struct.page, ptr %197, i32 0, i32 1
  %199 = load volatile i32, ptr %198, align 4
  %200 = and i32 %199, 1
  %201 = icmp eq i32 %200, 0
  br i1 %201, label %204, label %202, !prof !13

202:                                              ; preds = %194
  %203 = add i32 %199, -1
  br label %206

204:                                              ; preds = %194
  %205 = ptrtoint ptr %197 to i32
  br label %206

206:                                              ; preds = %204, %202
  %207 = phi i32 [ %203, %202 ], [ %205, %204 ]
  %208 = inttoptr i32 %207 to ptr
  %209 = getelementptr inbounds %struct.page, ptr %208, i32 0, i32 3
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %209) #21, !srcloc !16
  %210 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %209, ptr %209, i32 1, ptr elementtype(i32) %209) #21, !srcloc !38
  %211 = add nuw nsw i32 %195, 1
  %212 = load i8, ptr %174, align 2
  %213 = zext i8 %212 to i32
  %214 = icmp ult i32 %211, %213
  br i1 %214, label %194, label %215

215:                                              ; preds = %206, %191, %190
  %216 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 18
  %217 = load i32, ptr %216, align 8
  %218 = add i32 %217, %161
  store i32 %218, ptr %216, align 8
  %219 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 5
  %220 = load i32, ptr %219, align 8
  %221 = add i32 %220, %6
  store i32 %221, ptr %219, align 8
  %222 = load i32, ptr %24, align 4
  %223 = add i32 %222, %6
  store i32 %223, ptr %24, align 4
  br label %224

224:                                              ; preds = %215, %54, %38
  %225 = phi i32 [ %161, %215 ], [ 0, %54 ], [ 0, %38 ]
  store i32 %225, ptr %3, align 4
  br label %226

226:                                              ; preds = %224, %148, %110, %102, %86, %76, %66, %58, %18, %11
  %227 = phi i1 [ false, %11 ], [ false, %18 ], [ false, %66 ], [ false, %58 ], [ false, %86 ], [ false, %76 ], [ false, %148 ], [ false, %102 ], [ false, %110 ], [ true, %224 ]
  ret i1 %227
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @skb_scrub_packet(ptr nocapture noundef %0, i1 noundef zeroext %1) #0 {
  %3 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 13
  %4 = load i16, ptr %3, align 8
  %5 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 13, i32 0, i32 6
  store i32 0, ptr %5, align 4
  %6 = and i16 %4, -16
  store i16 %6, ptr %3, align 8
  %7 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 4
  %8 = load i32, ptr %7, align 8
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %17, label %10

10:                                               ; preds = %2
  %11 = and i32 %8, 1
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %16

13:                                               ; preds = %10
  %14 = and i32 %8, -2
  %15 = inttoptr i32 %14 to ptr
  tail call void @dst_release(ptr noundef %15) #21
  br label %16

16:                                               ; preds = %13, %10
  store i32 0, ptr %7, align 8
  br label %17

17:                                               ; preds = %16, %2
  %18 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 12
  %19 = load i8, ptr %18, align 1
  %20 = icmp eq i8 %19, 0
  br i1 %20, label %24, label %21, !prof !13

21:                                               ; preds = %17
  %22 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 20
  %23 = load ptr, ptr %22, align 8
  tail call void @__skb_ext_put(ptr noundef %23) #21
  store i8 0, ptr %18, align 1
  br label %24

24:                                               ; preds = %21, %17
  %25 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 13, i32 0, i32 3
  %26 = load i16, ptr %25, align 2
  %27 = and i16 %26, -6145
  store i16 %27, ptr %25, align 2
  br i1 %1, label %28, label %31

28:                                               ; preds = %24
  %29 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 13, i32 0, i32 11
  store i32 0, ptr %29, align 4
  %30 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 2
  store i64 0, ptr %30, align 8
  br label %31

31:                                               ; preds = %28, %24
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong uwtable(sync)
define dso_local zeroext i1 @skb_gso_validate_network_len(ptr nocapture noundef readonly %0, i32 noundef %1) #19 {
  %3 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 16
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 13, i32 0, i32 17
  %6 = load i16, ptr %5, align 2
  %7 = zext i16 %6 to i32
  %8 = getelementptr i8, ptr %4, i32 %7
  %9 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 13, i32 0, i32 18
  %10 = load i16, ptr %9, align 4
  %11 = ptrtoint ptr %8 to i32
  %12 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 15
  %13 = load ptr, ptr %12, align 4
  %14 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 13
  %15 = load i16, ptr %14, align 8
  %16 = and i16 %15, 8192
  %17 = icmp eq i16 %16, 0
  br i1 %17, label %36, label %18

18:                                               ; preds = %2
  %19 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 13, i32 0, i32 13
  %20 = load i16, ptr %19, align 2
  %21 = zext i16 %20 to i32
  %22 = getelementptr i8, ptr %4, i32 %21
  %23 = ptrtoint ptr %22 to i32
  %24 = sub i32 %23, %11
  %25 = getelementptr inbounds %struct.skb_shared_info, ptr %13, i32 0, i32 8
  %26 = load i32, ptr %25, align 8
  %27 = and i32 %26, 17
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %53, label %29, !prof !12

29:                                               ; preds = %18
  %30 = getelementptr inbounds %struct.tcphdr, ptr %22, i32 0, i32 4
  %31 = load i16, ptr %30, align 4
  %32 = lshr i16 %31, 2
  %33 = and i16 %32, 60
  %34 = zext i16 %33 to i32
  %35 = add i32 %24, %34
  br label %53

36:                                               ; preds = %2
  %37 = getelementptr inbounds %struct.skb_shared_info, ptr %13, i32 0, i32 8
  %38 = load i32, ptr %37, align 8
  %39 = and i32 %38, 17
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %47, label %41, !prof !12

41:                                               ; preds = %36
  %42 = getelementptr inbounds %struct.tcphdr, ptr %8, i32 0, i32 4
  %43 = load i16, ptr %42, align 4
  %44 = lshr i16 %43, 2
  %45 = and i16 %44, 60
  %46 = zext i16 %45 to i32
  br label %53

47:                                               ; preds = %36
  %48 = and i32 %38, 16384
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %50, label %53, !prof !13

50:                                               ; preds = %47
  %51 = lshr i32 %38, 14
  %52 = and i32 %51, 8
  br label %53

53:                                               ; preds = %50, %47, %41, %29, %18
  %54 = phi i32 [ %35, %29 ], [ %24, %18 ], [ %46, %41 ], [ 12, %47 ], [ %52, %50 ]
  %55 = zext i16 %10 to i32
  %56 = getelementptr i8, ptr %4, i32 %55
  %57 = ptrtoint ptr %56 to i32
  %58 = getelementptr inbounds %struct.skb_shared_info, ptr %13, i32 0, i32 4
  %59 = load i16, ptr %58, align 4
  %60 = zext i16 %59 to i32
  %61 = sub i32 %11, %57
  %62 = add i32 %61, %54
  %63 = add i32 %62, %60
  %64 = icmp eq i16 %59, -1
  br i1 %64, label %67, label %65

65:                                               ; preds = %53
  %66 = icmp ule i32 %63, %1
  br label %82

67:                                               ; preds = %53
  %68 = getelementptr inbounds %struct.skb_shared_info, ptr %13, i32 0, i32 6
  %69 = add i32 %63, -65535
  br label %70

70:                                               ; preds = %74, %67
  %71 = phi ptr [ %68, %67 ], [ %72, %74 ]
  %72 = load ptr, ptr %71, align 8
  %73 = icmp eq ptr %72, null
  br i1 %73, label %82, label %74

74:                                               ; preds = %70
  %75 = getelementptr inbounds %struct.sk_buff, ptr %72, i32 0, i32 5
  %76 = load i32, ptr %75, align 8
  %77 = getelementptr inbounds %struct.sk_buff, ptr %72, i32 0, i32 6
  %78 = load i32, ptr %77, align 4
  %79 = add i32 %69, %76
  %80 = sub i32 %79, %78
  %81 = icmp ugt i32 %80, %1
  br i1 %81, label %82, label %70

82:                                               ; preds = %74, %70, %65
  %83 = phi i1 [ %66, %65 ], [ %73, %74 ], [ %73, %70 ]
  ret i1 %83
}

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong uwtable(sync)
define dso_local zeroext i1 @skb_gso_validate_mac_len(ptr nocapture noundef readonly %0, i32 noundef %1) #19 {
  %3 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 16
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 13, i32 0, i32 17
  %6 = load i16, ptr %5, align 2
  %7 = zext i16 %6 to i32
  %8 = getelementptr i8, ptr %4, i32 %7
  %9 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 13, i32 0, i32 19
  %10 = load i16, ptr %9, align 2
  %11 = ptrtoint ptr %8 to i32
  %12 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 15
  %13 = load ptr, ptr %12, align 4
  %14 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 13
  %15 = load i16, ptr %14, align 8
  %16 = and i16 %15, 8192
  %17 = icmp eq i16 %16, 0
  br i1 %17, label %36, label %18

18:                                               ; preds = %2
  %19 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 13, i32 0, i32 13
  %20 = load i16, ptr %19, align 2
  %21 = zext i16 %20 to i32
  %22 = getelementptr i8, ptr %4, i32 %21
  %23 = ptrtoint ptr %22 to i32
  %24 = sub i32 %23, %11
  %25 = getelementptr inbounds %struct.skb_shared_info, ptr %13, i32 0, i32 8
  %26 = load i32, ptr %25, align 8
  %27 = and i32 %26, 17
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %53, label %29, !prof !12

29:                                               ; preds = %18
  %30 = getelementptr inbounds %struct.tcphdr, ptr %22, i32 0, i32 4
  %31 = load i16, ptr %30, align 4
  %32 = lshr i16 %31, 2
  %33 = and i16 %32, 60
  %34 = zext i16 %33 to i32
  %35 = add i32 %24, %34
  br label %53

36:                                               ; preds = %2
  %37 = getelementptr inbounds %struct.skb_shared_info, ptr %13, i32 0, i32 8
  %38 = load i32, ptr %37, align 8
  %39 = and i32 %38, 17
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %47, label %41, !prof !12

41:                                               ; preds = %36
  %42 = getelementptr inbounds %struct.tcphdr, ptr %8, i32 0, i32 4
  %43 = load i16, ptr %42, align 4
  %44 = lshr i16 %43, 2
  %45 = and i16 %44, 60
  %46 = zext i16 %45 to i32
  br label %53

47:                                               ; preds = %36
  %48 = and i32 %38, 16384
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %50, label %53, !prof !13

50:                                               ; preds = %47
  %51 = lshr i32 %38, 14
  %52 = and i32 %51, 8
  br label %53

53:                                               ; preds = %50, %47, %41, %29, %18
  %54 = phi i32 [ %35, %29 ], [ %24, %18 ], [ %46, %41 ], [ 12, %47 ], [ %52, %50 ]
  %55 = zext i16 %10 to i32
  %56 = getelementptr i8, ptr %4, i32 %55
  %57 = ptrtoint ptr %56 to i32
  %58 = getelementptr inbounds %struct.skb_shared_info, ptr %13, i32 0, i32 4
  %59 = load i16, ptr %58, align 4
  %60 = zext i16 %59 to i32
  %61 = sub i32 %11, %57
  %62 = add i32 %61, %54
  %63 = add i32 %62, %60
  %64 = icmp eq i16 %59, -1
  br i1 %64, label %67, label %65

65:                                               ; preds = %53
  %66 = icmp ule i32 %63, %1
  br label %82

67:                                               ; preds = %53
  %68 = getelementptr inbounds %struct.skb_shared_info, ptr %13, i32 0, i32 6
  %69 = add i32 %63, -65535
  br label %70

70:                                               ; preds = %74, %67
  %71 = phi ptr [ %68, %67 ], [ %72, %74 ]
  %72 = load ptr, ptr %71, align 8
  %73 = icmp eq ptr %72, null
  br i1 %73, label %82, label %74

74:                                               ; preds = %70
  %75 = getelementptr inbounds %struct.sk_buff, ptr %72, i32 0, i32 5
  %76 = load i32, ptr %75, align 8
  %77 = getelementptr inbounds %struct.sk_buff, ptr %72, i32 0, i32 6
  %78 = load i32, ptr %77, align 4
  %79 = add i32 %69, %76
  %80 = sub i32 %79, %78
  %81 = icmp ugt i32 %80, %1
  br i1 %81, label %82, label %70

82:                                               ; preds = %74, %70, %65
  %83 = phi i1 [ %66, %65 ], [ %73, %74 ], [ %73, %70 ]
  ret i1 %83
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @skb_vlan_untag(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 13, i32 0, i32 3
  %3 = load i16, ptr %2, align 2
  %4 = and i16 %3, 1
  %5 = icmp eq i16 %4, 0
  br i1 %5, label %6, label %182, !prof !13

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 19
  %8 = load volatile i32, ptr %7, align 4
  %9 = icmp eq i32 %8, 1
  br i1 %9, label %15, label %10

10:                                               ; preds = %6
  %11 = tail call ptr @skb_clone(ptr noundef %0, i32 noundef 2592) #21
  %12 = icmp eq ptr %11, null
  br i1 %12, label %14, label %13, !prof !12

13:                                               ; preds = %10
  tail call void @consume_skb(ptr noundef %0) #21
  br label %17

14:                                               ; preds = %10
  tail call fastcc void @kfree_skb(ptr noundef %0) #21
  br label %180

15:                                               ; preds = %6
  %16 = icmp eq ptr %0, null
  br i1 %16, label %180, label %17, !prof !12

17:                                               ; preds = %15, %13
  %18 = phi ptr [ %11, %13 ], [ %0, %15 ]
  %19 = getelementptr inbounds %struct.sk_buff, ptr %18, i32 0, i32 5
  %20 = load i32, ptr %19, align 8
  %21 = getelementptr inbounds %struct.sk_buff, ptr %18, i32 0, i32 6
  %22 = load i32, ptr %21, align 4
  %23 = sub i32 %20, %22
  %24 = icmp ult i32 %23, 6
  br i1 %24, label %25, label %33, !prof !12

25:                                               ; preds = %17
  %26 = icmp ult i32 %20, 6
  br i1 %26, label %180, label %27, !prof !12

27:                                               ; preds = %25
  %28 = sub nuw nsw i32 6, %23
  %29 = tail call ptr @__pskb_pull_tail(ptr noundef nonnull %18, i32 noundef %28) #21
  %30 = icmp eq ptr %29, null
  br i1 %30, label %180, label %31, !prof !12

31:                                               ; preds = %27
  %32 = load i32, ptr %19, align 8
  br label %33

33:                                               ; preds = %31, %17
  %34 = phi i32 [ %32, %31 ], [ %20, %17 ]
  %35 = getelementptr inbounds %struct.sk_buff, ptr %18, i32 0, i32 17
  %36 = load ptr, ptr %35, align 4
  %37 = load i16, ptr %36, align 2
  %38 = tail call i16 @llvm.bswap.i16(i16 %37)
  %39 = getelementptr inbounds %struct.sk_buff, ptr %18, i32 0, i32 13, i32 0, i32 16
  %40 = load i16, ptr %39, align 8
  %41 = getelementptr inbounds %struct.sk_buff, ptr %18, i32 0, i32 13, i32 0, i32 8
  store i16 %40, ptr %41, align 4
  %42 = getelementptr inbounds %struct.sk_buff, ptr %18, i32 0, i32 13, i32 0, i32 9
  store i16 %38, ptr %42, align 2
  %43 = getelementptr inbounds %struct.sk_buff, ptr %18, i32 0, i32 13, i32 0, i32 3
  %44 = load i16, ptr %43, align 2
  %45 = or i16 %44, 1
  store i16 %45, ptr %43, align 2
  %46 = icmp ult i32 %34, 4
  br i1 %46, label %47, label %48, !prof !12

47:                                               ; preds = %33
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22net/core/skbuff.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 3838, 0\0A.popsection", ""() #21, !srcloc !69
  unreachable

48:                                               ; preds = %33
  %49 = add i32 %34, -4
  store i32 %49, ptr %19, align 8
  %50 = load i32, ptr %21, align 4
  %51 = icmp ult i32 %49, %50
  br i1 %51, label %52, label %53, !prof !12

52:                                               ; preds = %48
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/skbuff.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2398, 0\0A.popsection", ""() #21, !srcloc !54
  unreachable

53:                                               ; preds = %48
  %54 = getelementptr i8, ptr %36, i32 4
  store ptr %54, ptr %35, align 4
  %55 = getelementptr inbounds %struct.sk_buff, ptr %18, i32 0, i32 13
  %56 = load i16, ptr %55, align 8
  %57 = lshr i16 %56, 5
  %58 = trunc i16 %57 to i2
  switch i2 %58, label %78 [
    i2 -2, label %59
    i2 -1, label %65
  ]

59:                                               ; preds = %53
  %60 = getelementptr inbounds %struct.sk_buff, ptr %18, i32 0, i32 13, i32 0, i32 4
  %61 = load i32, ptr %60, align 4
  %62 = sub i32 0, %61
  %63 = tail call i32 @csum_partial(ptr noundef %36, i32 noundef 4, i32 noundef %62) #21
  %64 = sub i32 0, %63
  store i32 %64, ptr %60, align 4
  br label %78

65:                                               ; preds = %53
  %66 = getelementptr inbounds %struct.sk_buff, ptr %18, i32 0, i32 13, i32 0, i32 4
  %67 = load i16, ptr %66, align 4
  %68 = zext i16 %67 to i32
  %69 = getelementptr inbounds %struct.sk_buff, ptr %18, i32 0, i32 16
  %70 = load ptr, ptr %69, align 8
  %71 = ptrtoint ptr %54 to i32
  %72 = ptrtoint ptr %70 to i32
  %73 = sub i32 %68, %71
  %74 = add i32 %73, %72
  %75 = icmp slt i32 %74, 0
  br i1 %75, label %76, label %78

76:                                               ; preds = %65
  %77 = and i16 %56, -97
  store i16 %77, ptr %55, align 8
  br label %78

78:                                               ; preds = %76, %65, %59, %53
  %79 = getelementptr inbounds %struct.vlan_hdr, ptr %36, i32 0, i32 1
  %80 = load i16, ptr %79, align 2
  %81 = and i16 %80, 254
  %82 = icmp ugt i16 %81, 5
  br i1 %82, label %87, label %83

83:                                               ; preds = %78
  %84 = load i16, ptr %54, align 2
  %85 = icmp eq i16 %84, -1
  %86 = select i1 %85, i16 256, i16 1024
  br label %87

87:                                               ; preds = %83, %78
  %88 = phi i16 [ %80, %78 ], [ %86, %83 ]
  store i16 %88, ptr %39, align 8
  %89 = getelementptr inbounds %struct.sk_buff, ptr %18, i32 0, i32 16
  %90 = getelementptr inbounds %struct.sk_buff, ptr %18, i32 0, i32 11
  %91 = load i8, ptr %90, align 2
  %92 = and i8 %91, 1
  %93 = icmp eq i8 %92, 0
  br i1 %93, label %134, label %94

94:                                               ; preds = %87
  %95 = getelementptr inbounds %struct.sk_buff, ptr %18, i32 0, i32 15
  %96 = load ptr, ptr %95, align 4
  %97 = getelementptr inbounds %struct.skb_shared_info, ptr %96, i32 0, i32 10
  %98 = load volatile i32, ptr %97, align 4
  %99 = and i32 %98, 65535
  %100 = icmp eq i32 %99, 1
  br i1 %100, label %134, label %101

101:                                              ; preds = %94
  %102 = tail call i32 @pskb_expand_head(ptr noundef nonnull %18, i32 noundef 0, i32 noundef 0, i32 noundef 2592) #21
  %103 = icmp slt i32 %102, 0
  br i1 %103, label %104, label %134

104:                                              ; preds = %101
  %105 = getelementptr inbounds %struct.sk_buff, ptr %18, i32 0, i32 19
  %106 = load volatile i32, ptr %105, align 4
  %107 = icmp eq i32 %106, 1
  tail call void asm sideeffect "dmb ish", "~{memory}"() #21
  br i1 %107, label %116, label %108, !prof !13

108:                                              ; preds = %104
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %105) #21, !srcloc !16
  %109 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %105, ptr %105, i32 1, ptr elementtype(i32) %105) #21, !srcloc !19
  %110 = extractvalue { i32, i32, i32 } %109, 0
  %111 = icmp eq i32 %110, 1
  br i1 %111, label %115, label %112

112:                                              ; preds = %108
  %113 = icmp sgt i32 %110, 0
  br i1 %113, label %180, label %114, !prof !13

114:                                              ; preds = %112
  tail call void @refcount_warn_saturate(ptr noundef %105, i32 noundef 3) #21
  br label %180

115:                                              ; preds = %108
  tail call void asm sideeffect "dmb ish", "~{memory}"() #21, !srcloc !20
  br label %116

116:                                              ; preds = %115, %104
  %117 = tail call ptr @llvm.returnaddress(i32 0) #21
  %118 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_kfree_skb, i32 0, i32 1), align 4
  %119 = icmp sgt i32 %118, 0
  br i1 %119, label %120, label %133

120:                                              ; preds = %116
  %121 = tail call ptr @llvm.thread.pointer() #21
  %122 = getelementptr inbounds %struct.thread_info, ptr %121, i32 0, i32 2
  %123 = load i32, ptr %122, align 8
  %124 = lshr i32 %123, 5
  %125 = getelementptr i32, ptr @__cpu_online_mask, i32 %124
  %126 = load volatile i32, ptr %125, align 4
  %127 = and i32 %123, 31
  %128 = shl nuw i32 1, %127
  %129 = and i32 %128, %126
  %130 = icmp eq i32 %129, 0
  br i1 %130, label %133, label %131

131:                                              ; preds = %120
  tail call void asm sideeffect "", "~{memory}"() #21, !srcloc !21
  %132 = tail call i32 @__traceiter_kfree_skb(ptr noundef null, ptr noundef nonnull %18, ptr noundef %117, i32 noundef 0) #21
  tail call void asm sideeffect "", "~{memory}"() #21, !srcloc !22
  br label %133

133:                                              ; preds = %131, %120, %116
  tail call void @__kfree_skb(ptr noundef nonnull %18) #21
  br label %180

134:                                              ; preds = %101, %94, %87
  %135 = load ptr, ptr %35, align 4
  %136 = load ptr, ptr %89, align 8
  %137 = getelementptr inbounds %struct.sk_buff, ptr %18, i32 0, i32 13, i32 0, i32 19
  %138 = load i16, ptr %137, align 2
  %139 = zext i16 %138 to i32
  %140 = getelementptr i8, ptr %136, i32 %139
  %141 = ptrtoint ptr %135 to i32
  %142 = ptrtoint ptr %140 to i32
  %143 = sub i32 %141, %142
  %144 = icmp sgt i32 %143, 6
  br i1 %144, label %145, label %148, !prof !13

145:                                              ; preds = %134
  %146 = getelementptr i8, ptr %140, i32 4
  %147 = add nsw i32 %143, -6
  tail call void @llvm.memmove.p0.p0.i32(ptr align 1 %146, ptr align 1 %140, i32 %147, i1 false) #21
  br label %148

148:                                              ; preds = %145, %134
  %149 = getelementptr inbounds %struct.sk_buff, ptr %18, i32 0, i32 15
  %150 = load ptr, ptr %149, align 4
  %151 = getelementptr inbounds %struct.skb_shared_info, ptr %150, i32 0, i32 1
  %152 = load i8, ptr %151, align 1
  %153 = icmp eq i8 %152, 0
  br i1 %153, label %163, label %154

154:                                              ; preds = %148
  %155 = zext i8 %152 to i32
  %156 = load ptr, ptr %89, align 8
  %157 = load i16, ptr %137, align 2
  %158 = zext i16 %157 to i32
  %159 = getelementptr i8, ptr %156, i32 %158
  %160 = sub nsw i32 0, %155
  %161 = getelementptr i8, ptr %159, i32 %160
  %162 = getelementptr i8, ptr %161, i32 4
  tail call void @llvm.memmove.p0.p0.i32(ptr align 1 %162, ptr align 1 %161, i32 %155, i1 false) #21
  br label %163

163:                                              ; preds = %154, %148
  %164 = load i16, ptr %137, align 2
  %165 = add i16 %164, 4
  store i16 %165, ptr %137, align 2
  %166 = load ptr, ptr %35, align 4
  %167 = load ptr, ptr %89, align 8
  %168 = ptrtoint ptr %166 to i32
  %169 = ptrtoint ptr %167 to i32
  %170 = sub i32 %168, %169
  %171 = trunc i32 %170 to i16
  %172 = getelementptr inbounds %struct.sk_buff, ptr %18, i32 0, i32 13, i32 0, i32 18
  store i16 %171, ptr %172, align 4
  %173 = getelementptr inbounds %struct.sk_buff, ptr %18, i32 0, i32 13, i32 0, i32 17
  %174 = load i16, ptr %173, align 2
  %175 = icmp eq i16 %174, -1
  br i1 %175, label %176, label %177

176:                                              ; preds = %163
  store i16 %171, ptr %173, align 2
  br label %177

177:                                              ; preds = %176, %163
  %178 = sub i16 %171, %165
  %179 = getelementptr inbounds %struct.sk_buff, ptr %18, i32 0, i32 7
  store i16 %178, ptr %179, align 8
  br label %182

180:                                              ; preds = %133, %114, %112, %27, %25, %15, %14
  %181 = phi ptr [ null, %15 ], [ %18, %27 ], [ null, %14 ], [ %18, %25 ], [ null, %112 ], [ null, %114 ], [ null, %133 ]
  tail call fastcc void @kfree_skb(ptr noundef %181)
  br label %182

182:                                              ; preds = %180, %177, %1
  %183 = phi ptr [ null, %180 ], [ %18, %177 ], [ %0, %1 ]
  ret ptr %183
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @skb_ensure_writable(ptr noundef %0, i32 noundef %1) #0 {
  %3 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 5
  %4 = load i32, ptr %3, align 8
  %5 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 6
  %6 = load i32, ptr %5, align 4
  %7 = sub i32 %4, %6
  %8 = icmp ult i32 %7, %1
  br i1 %8, label %9, label %15, !prof !12

9:                                                ; preds = %2
  %10 = icmp ult i32 %4, %1
  br i1 %10, label %48, label %11, !prof !12

11:                                               ; preds = %9
  %12 = sub i32 %1, %7
  %13 = tail call ptr @__pskb_pull_tail(ptr noundef %0, i32 noundef %12) #21
  %14 = icmp eq ptr %13, null
  br i1 %14, label %48, label %15

15:                                               ; preds = %11, %2
  %16 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 11
  %17 = load i8, ptr %16, align 2
  %18 = and i8 %17, 1
  %19 = icmp eq i8 %18, 0
  br i1 %19, label %48, label %20

20:                                               ; preds = %15
  %21 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 15
  %22 = load ptr, ptr %21, align 4
  %23 = getelementptr inbounds %struct.skb_shared_info, ptr %22, i32 0, i32 10
  %24 = load volatile i32, ptr %23, align 4
  %25 = and i32 %24, 65535
  %26 = icmp eq i32 %25, 1
  br i1 %26, label %48, label %27

27:                                               ; preds = %20
  %28 = load volatile i32, ptr %23, align 4
  %29 = and i32 %28, 65535
  %30 = ashr i32 %28, 16
  %31 = sub nsw i32 %29, %30
  %32 = icmp eq i32 %31, 1
  br i1 %32, label %33, label %46

33:                                               ; preds = %27
  %34 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 17
  %35 = load ptr, ptr %34, align 4
  %36 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 16
  %37 = load ptr, ptr %36, align 8
  %38 = ptrtoint ptr %35 to i32
  %39 = ptrtoint ptr %37 to i32
  %40 = add i32 %38, %1
  %41 = sub i32 %40, %39
  %42 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 8
  %43 = load i16, ptr %42, align 2
  %44 = zext i16 %43 to i32
  %45 = icmp ugt i32 %41, %44
  br i1 %45, label %46, label %48

46:                                               ; preds = %33, %27
  %47 = tail call i32 @pskb_expand_head(ptr noundef %0, i32 noundef 0, i32 noundef 0, i32 noundef 2592)
  br label %48

48:                                               ; preds = %46, %33, %20, %15, %11, %9
  %49 = phi i32 [ %47, %46 ], [ -12, %11 ], [ 0, %33 ], [ 0, %20 ], [ -12, %9 ], [ 0, %15 ]
  ret i32 %49
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__skb_vlan_pop(ptr noundef %0, ptr nocapture noundef writeonly %1) #0 {
  %3 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 17
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 16
  %6 = load ptr, ptr %5, align 8
  %7 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 13, i32 0, i32 19
  %8 = load i16, ptr %7, align 2
  %9 = zext i16 %8 to i32
  %10 = getelementptr i8, ptr %6, i32 %9
  %11 = icmp ne ptr %4, %10
  %12 = load i1, ptr @__skb_vlan_pop.__already_done, align 1
  %13 = xor i1 %12, true
  %14 = select i1 %11, i1 %13, i1 false
  br i1 %14, label %15, label %19, !prof !12

15:                                               ; preds = %2
  %16 = ptrtoint ptr %4 to i32
  %17 = ptrtoint ptr %10 to i32
  %18 = sub i32 %16, %17
  store i1 true, ptr @__skb_vlan_pop.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 5588, i32 noundef 9, ptr noundef nonnull @.str.15, i32 noundef %18) #21
  br label %19

19:                                               ; preds = %15, %2
  br i1 %11, label %140, label %20

20:                                               ; preds = %19
  %21 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 5
  %22 = load i32, ptr %21, align 8
  %23 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 6
  %24 = load i32, ptr %23, align 4
  %25 = sub i32 %22, %24
  %26 = icmp ult i32 %25, 18
  br i1 %26, label %27, label %33, !prof !12

27:                                               ; preds = %20
  %28 = icmp ult i32 %22, 18
  br i1 %28, label %140, label %29, !prof !12

29:                                               ; preds = %27
  %30 = sub nuw nsw i32 18, %25
  %31 = tail call ptr @__pskb_pull_tail(ptr noundef %0, i32 noundef %30) #21
  %32 = icmp eq ptr %31, null
  br i1 %32, label %140, label %33

33:                                               ; preds = %29, %20
  %34 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 11
  %35 = load i8, ptr %34, align 2
  %36 = and i8 %35, 1
  %37 = icmp eq i8 %36, 0
  br i1 %37, label %65, label %38

38:                                               ; preds = %33
  %39 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 15
  %40 = load ptr, ptr %39, align 4
  %41 = getelementptr inbounds %struct.skb_shared_info, ptr %40, i32 0, i32 10
  %42 = load volatile i32, ptr %41, align 4
  %43 = and i32 %42, 65535
  %44 = icmp eq i32 %43, 1
  br i1 %44, label %65, label %45

45:                                               ; preds = %38
  %46 = load volatile i32, ptr %41, align 4
  %47 = and i32 %46, 65535
  %48 = ashr i32 %46, 16
  %49 = sub nsw i32 %47, %48
  %50 = icmp eq i32 %49, 1
  br i1 %50, label %51, label %62

51:                                               ; preds = %45
  %52 = load ptr, ptr %3, align 4
  %53 = load ptr, ptr %5, align 8
  %54 = ptrtoint ptr %52 to i32
  %55 = ptrtoint ptr %53 to i32
  %56 = add i32 %54, 18
  %57 = sub i32 %56, %55
  %58 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 8
  %59 = load i16, ptr %58, align 2
  %60 = zext i16 %59 to i32
  %61 = icmp ugt i32 %57, %60
  br i1 %61, label %62, label %65

62:                                               ; preds = %51, %45
  %63 = tail call i32 @pskb_expand_head(ptr noundef %0, i32 noundef 0, i32 noundef 0, i32 noundef 2592) #21
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %65, label %140, !prof !13

65:                                               ; preds = %62, %51, %38, %33
  %66 = load ptr, ptr %3, align 4
  %67 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 13
  %68 = load i16, ptr %67, align 8
  %69 = lshr i16 %68, 5
  %70 = trunc i16 %69 to i2
  switch i2 %70, label %91 [
    i2 -2, label %71
    i2 -1, label %79
  ]

71:                                               ; preds = %65
  %72 = getelementptr i8, ptr %66, i32 12
  %73 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 13, i32 0, i32 4
  %74 = load i32, ptr %73, align 4
  %75 = sub i32 0, %74
  %76 = tail call i32 @csum_partial(ptr noundef %72, i32 noundef 4, i32 noundef %75) #21
  %77 = sub i32 0, %76
  store i32 %77, ptr %73, align 4
  %78 = load ptr, ptr %3, align 4
  br label %91

79:                                               ; preds = %65
  %80 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 13, i32 0, i32 4
  %81 = load i16, ptr %80, align 4
  %82 = zext i16 %81 to i32
  %83 = load ptr, ptr %5, align 8
  %84 = ptrtoint ptr %66 to i32
  %85 = ptrtoint ptr %83 to i32
  %86 = sub i32 %82, %84
  %87 = add i32 %86, %85
  %88 = icmp slt i32 %87, 0
  br i1 %88, label %89, label %91

89:                                               ; preds = %79
  %90 = and i16 %68, -97
  store i16 %90, ptr %67, align 8
  br label %91

91:                                               ; preds = %89, %79, %71, %65
  %92 = phi ptr [ %66, %65 ], [ %78, %71 ], [ %66, %79 ], [ %66, %89 ]
  %93 = getelementptr i8, ptr %92, i32 14
  %94 = load i16, ptr %93, align 2
  %95 = tail call i16 @llvm.bswap.i16(i16 %94)
  store i16 %95, ptr %1, align 2
  %96 = load ptr, ptr %3, align 4
  %97 = getelementptr i8, ptr %96, i32 4
  tail call void @llvm.memmove.p0.p0.i32(ptr noundef align 1 dereferenceable(12) %97, ptr noundef align 1 dereferenceable(12) %96, i32 12, i1 false)
  %98 = load i32, ptr %21, align 8
  %99 = add i32 %98, -4
  store i32 %99, ptr %21, align 8
  %100 = load i32, ptr %23, align 4
  %101 = icmp ult i32 %99, %100
  br i1 %101, label %102, label %103, !prof !12

102:                                              ; preds = %91
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/skbuff.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2398, 0\0A.popsection", ""() #21, !srcloc !54
  unreachable

103:                                              ; preds = %91
  %104 = load ptr, ptr %3, align 4
  %105 = getelementptr i8, ptr %104, i32 4
  store ptr %105, ptr %3, align 4
  %106 = getelementptr i8, ptr %92, i32 16
  %107 = load i16, ptr %106, align 2
  %108 = and i16 %107, 254
  %109 = icmp ugt i16 %108, 5
  br i1 %109, label %110, label %112

110:                                              ; preds = %103
  %111 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 13, i32 0, i32 16
  store i16 %107, ptr %111, align 8
  br label %119

112:                                              ; preds = %103
  %113 = getelementptr i8, ptr %92, i32 18
  %114 = load i16, ptr %113, align 2
  %115 = icmp eq i16 %114, -1
  %116 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 13, i32 0, i32 16
  br i1 %115, label %117, label %118

117:                                              ; preds = %112
  store i16 256, ptr %116, align 8
  br label %119

118:                                              ; preds = %112
  store i16 1024, ptr %116, align 8
  br label %119

119:                                              ; preds = %118, %117, %110
  %120 = load i16, ptr %7, align 2
  %121 = add i16 %120, 4
  store i16 %121, ptr %7, align 2
  %122 = load ptr, ptr %5, align 8
  %123 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 13, i32 0, i32 18
  %124 = load i16, ptr %123, align 4
  %125 = zext i16 %124 to i32
  %126 = getelementptr i8, ptr %122, i32 %125
  %127 = ptrtoint ptr %126 to i32
  %128 = ptrtoint ptr %105 to i32
  %129 = sub i32 %127, %128
  %130 = icmp slt i32 %129, 14
  br i1 %130, label %131, label %136

131:                                              ; preds = %119
  %132 = ptrtoint ptr %122 to i32
  %133 = sub i32 %128, %132
  %134 = trunc i32 %133 to i16
  %135 = add i16 %134, 14
  store i16 %135, ptr %123, align 4
  br label %136

136:                                              ; preds = %131, %119
  %137 = phi i16 [ %135, %131 ], [ %124, %119 ]
  %138 = sub i16 %137, %121
  %139 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 7
  store i16 %138, ptr %139, align 8
  br label %140

140:                                              ; preds = %136, %62, %29, %27, %19
  %141 = phi i32 [ 0, %136 ], [ -22, %19 ], [ %63, %62 ], [ -12, %29 ], [ -12, %27 ]
  ret i32 %141
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memmove.p0.p0.i32(ptr nocapture writeonly, ptr nocapture readonly, i32, i1 immarg) #11

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @skb_vlan_pop(ptr noundef %0) #0 {
  %2 = alloca i16, align 2
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %2) #21
  store i16 0, ptr %2, align 2, !annotation !56
  %3 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 13, i32 0, i32 3
  %4 = load i16, ptr %3, align 2
  %5 = and i16 %4, 1
  %6 = icmp eq i16 %5, 0
  br i1 %6, label %9, label %7, !prof !12

7:                                                ; preds = %1
  %8 = and i16 %4, -2
  store i16 %8, ptr %3, align 2
  br label %15

9:                                                ; preds = %1
  %10 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 13, i32 0, i32 16
  %11 = load i16, ptr %10, align 8
  switch i16 %11, label %27 [
    i16 -22392, label %12
    i16 129, label %12
  ]

12:                                               ; preds = %9, %9
  %13 = call i32 @__skb_vlan_pop(ptr noundef %0, ptr noundef nonnull %2)
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %27

15:                                               ; preds = %12, %7
  %16 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 13, i32 0, i32 16
  %17 = load i16, ptr %16, align 8
  switch i16 %17, label %27 [
    i16 -22392, label %18
    i16 129, label %18
  ]

18:                                               ; preds = %15, %15
  %19 = call i32 @__skb_vlan_pop(ptr noundef %0, ptr noundef nonnull %2)
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %27, !prof !13

21:                                               ; preds = %18
  %22 = load i16, ptr %2, align 2
  %23 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 13, i32 0, i32 8
  store i16 %17, ptr %23, align 4
  %24 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 13, i32 0, i32 9
  store i16 %22, ptr %24, align 2
  %25 = load i16, ptr %3, align 2
  %26 = or i16 %25, 1
  store i16 %26, ptr %3, align 2
  br label %27

27:                                               ; preds = %21, %18, %15, %12, %9
  %28 = phi i32 [ 0, %21 ], [ 0, %9 ], [ %13, %12 ], [ 0, %15 ], [ %19, %18 ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %2) #21
  ret i32 %28
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @skb_vlan_push(ptr noundef %0, i16 noundef zeroext %1, i16 noundef zeroext %2) #0 {
  %4 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 13, i32 0, i32 3
  %5 = load i16, ptr %4, align 2
  %6 = and i16 %5, 1
  %7 = icmp eq i16 %6, 0
  br i1 %7, label %99, label %8

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 17
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 16
  %12 = load ptr, ptr %11, align 8
  %13 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 13, i32 0, i32 19
  %14 = load i16, ptr %13, align 2
  %15 = zext i16 %14 to i32
  %16 = getelementptr i8, ptr %12, i32 %15
  %17 = icmp ne ptr %10, %16
  %18 = load i1, ptr @skb_vlan_push.__already_done, align 1
  %19 = xor i1 %18, true
  %20 = select i1 %17, i1 %19, i1 false
  br i1 %20, label %21, label %25, !prof !12

21:                                               ; preds = %8
  %22 = ptrtoint ptr %10 to i32
  %23 = ptrtoint ptr %16 to i32
  %24 = sub i32 %22, %23
  store i1 true, ptr @skb_vlan_push.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 5660, i32 noundef 9, ptr noundef nonnull @.str.16, i32 noundef %24) #21
  br label %25

25:                                               ; preds = %21, %8
  br i1 %17, label %104, label %26

26:                                               ; preds = %25
  %27 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 13, i32 0, i32 8
  %28 = load i16, ptr %27, align 4
  %29 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 13, i32 0, i32 9
  %30 = load i16, ptr %29, align 2
  %31 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 11
  %32 = load i8, ptr %31, align 2
  %33 = and i8 %32, 1
  %34 = icmp eq i8 %33, 0
  br i1 %34, label %45, label %35

35:                                               ; preds = %26
  %36 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 15
  %37 = load ptr, ptr %36, align 4
  %38 = getelementptr inbounds %struct.skb_shared_info, ptr %37, i32 0, i32 10
  %39 = load volatile i32, ptr %38, align 4
  %40 = and i32 %39, 65535
  %41 = ashr i32 %39, 16
  %42 = sub nsw i32 %40, %41
  %43 = icmp ne i32 %42, 1
  %44 = zext i1 %43 to i32
  br label %45

45:                                               ; preds = %35, %26
  %46 = phi i32 [ %44, %35 ], [ 0, %26 ]
  %47 = load ptr, ptr %9, align 4
  %48 = load ptr, ptr %11, align 8
  %49 = ptrtoint ptr %47 to i32
  %50 = ptrtoint ptr %48 to i32
  %51 = sub i32 %49, %50
  %52 = tail call i32 @llvm.usub.sat.i32(i32 4, i32 %51) #21
  %53 = or i32 %52, %46
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %63, label %55

55:                                               ; preds = %45
  %56 = add nuw nsw i32 %52, 63
  %57 = and i32 %56, 64
  %58 = tail call i32 @pskb_expand_head(ptr noundef %0, i32 noundef %57, i32 noundef 0, i32 noundef 2592) #21
  %59 = icmp slt i32 %58, 0
  br i1 %59, label %104, label %60

60:                                               ; preds = %55
  %61 = load ptr, ptr %9, align 4
  %62 = load ptr, ptr %11, align 8
  br label %63

63:                                               ; preds = %60, %45
  %64 = phi ptr [ %62, %60 ], [ %48, %45 ]
  %65 = phi ptr [ %61, %60 ], [ %47, %45 ]
  %66 = getelementptr i8, ptr %65, i32 -4
  store ptr %66, ptr %9, align 4
  %67 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 5
  %68 = load i32, ptr %67, align 8
  %69 = add i32 %68, 4
  store i32 %69, ptr %67, align 8
  %70 = icmp ult ptr %66, %64
  br i1 %70, label %71, label %73, !prof !12

71:                                               ; preds = %63
  %72 = tail call ptr @llvm.returnaddress(i32 0) #21
  tail call fastcc void @skb_under_panic(ptr noundef %0, i32 noundef 4, ptr noundef %72) #21
  unreachable

73:                                               ; preds = %63
  tail call void @llvm.memmove.p0.p0.i32(ptr noundef align 1 dereferenceable(12) %66, ptr noundef align 1 dereferenceable(12) %65, i32 12, i1 false) #21
  %74 = load i16, ptr %13, align 2
  %75 = add i16 %74, -4
  store i16 %75, ptr %13, align 2
  %76 = load ptr, ptr %9, align 4
  %77 = getelementptr inbounds %struct.vlan_ethhdr, ptr %76, i32 0, i32 1
  store i16 %28, ptr %77, align 2
  %78 = tail call i16 @llvm.bswap.i16(i16 %30) #21
  %79 = getelementptr inbounds %struct.vlan_ethhdr, ptr %76, i32 0, i32 2
  store i16 %78, ptr %79, align 2
  %80 = load i16, ptr %27, align 4
  %81 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 13, i32 0, i32 16
  store i16 %80, ptr %81, align 8
  %82 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 7
  %83 = load i16, ptr %82, align 8
  %84 = add i16 %83, 4
  store i16 %84, ptr %82, align 8
  %85 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 13
  %86 = load i16, ptr %85, align 8
  %87 = and i16 %86, 96
  %88 = icmp eq i16 %87, 64
  br i1 %88, label %89, label %99

89:                                               ; preds = %73
  %90 = load ptr, ptr %9, align 4
  %91 = getelementptr i8, ptr %90, i32 12
  %92 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 13, i32 0, i32 4
  %93 = load i32, ptr %92, align 4
  %94 = tail call i32 @csum_partial(ptr noundef %91, i32 noundef 4, i32 noundef 0) #21
  %95 = add i32 %94, %93
  %96 = icmp ult i32 %95, %94
  %97 = zext i1 %96 to i32
  %98 = add i32 %95, %97
  store i32 %98, ptr %92, align 4
  br label %99

99:                                               ; preds = %89, %73, %3
  %100 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 13, i32 0, i32 8
  store i16 %1, ptr %100, align 4
  %101 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 13, i32 0, i32 9
  store i16 %2, ptr %101, align 2
  %102 = load i16, ptr %4, align 2
  %103 = or i16 %102, 1
  store i16 %103, ptr %4, align 2
  br label %104

104:                                              ; preds = %99, %55, %25
  %105 = phi i32 [ 0, %99 ], [ -22, %25 ], [ -12, %55 ]
  ret i32 %105
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @skb_eth_pop(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 5
  %3 = load i32, ptr %2, align 8
  %4 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 6
  %5 = load i32, ptr %4, align 4
  %6 = sub i32 %3, %5
  %7 = icmp ult i32 %6, 14
  br i1 %7, label %8, label %14, !prof !12

8:                                                ; preds = %1
  %9 = icmp ult i32 %3, 14
  br i1 %9, label %81, label %10, !prof !12

10:                                               ; preds = %8
  %11 = sub nuw nsw i32 14, %6
  %12 = tail call ptr @__pskb_pull_tail(ptr noundef %0, i32 noundef %11) #21
  %13 = icmp eq ptr %12, null
  br i1 %13, label %81, label %14

14:                                               ; preds = %10, %1
  %15 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 13, i32 0, i32 3
  %16 = load i16, ptr %15, align 2
  %17 = and i16 %16, 1
  %18 = icmp eq i16 %17, 0
  br i1 %18, label %19, label %81

19:                                               ; preds = %14
  %20 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 13, i32 0, i32 16
  %21 = load i16, ptr %20, align 8
  switch i16 %21, label %22 [
    i16 -22392, label %81
    i16 129, label %81
  ]

22:                                               ; preds = %19
  %23 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 16
  %24 = load ptr, ptr %23, align 8
  %25 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 13, i32 0, i32 18
  %26 = load i16, ptr %25, align 4
  %27 = zext i16 %26 to i32
  %28 = getelementptr i8, ptr %24, i32 %27
  %29 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 17
  %30 = load ptr, ptr %29, align 4
  %31 = ptrtoint ptr %28 to i32
  %32 = ptrtoint ptr %30 to i32
  %33 = sub i32 %31, %32
  %34 = icmp slt i32 %33, 14
  br i1 %34, label %81, label %35

35:                                               ; preds = %22
  %36 = load i32, ptr %2, align 8
  %37 = icmp ult i32 %36, 14
  br i1 %37, label %38, label %39, !prof !12

38:                                               ; preds = %35
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22net/core/skbuff.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 3838, 0\0A.popsection", ""() #21, !srcloc !69
  unreachable

39:                                               ; preds = %35
  %40 = add i32 %36, -14
  store i32 %40, ptr %2, align 8
  %41 = load i32, ptr %4, align 4
  %42 = icmp ult i32 %40, %41
  br i1 %42, label %43, label %44, !prof !12

43:                                               ; preds = %39
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/skbuff.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2398, 0\0A.popsection", ""() #21, !srcloc !54
  unreachable

44:                                               ; preds = %39
  %45 = getelementptr i8, ptr %30, i32 14
  store ptr %45, ptr %29, align 4
  %46 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 13
  %47 = load i16, ptr %46, align 8
  %48 = lshr i16 %47, 5
  %49 = trunc i16 %48 to i2
  switch i2 %49, label %70 [
    i2 -2, label %50
    i2 -1, label %59
  ]

50:                                               ; preds = %44
  %51 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 13, i32 0, i32 4
  %52 = load i32, ptr %51, align 4
  %53 = sub i32 0, %52
  %54 = tail call i32 @csum_partial(ptr noundef %30, i32 noundef 14, i32 noundef %53) #21
  %55 = sub i32 0, %54
  store i32 %55, ptr %51, align 4
  %56 = load ptr, ptr %29, align 4
  %57 = load ptr, ptr %23, align 8
  %58 = load i16, ptr %25, align 4
  br label %70

59:                                               ; preds = %44
  %60 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 13, i32 0, i32 4
  %61 = load i16, ptr %60, align 4
  %62 = zext i16 %61 to i32
  %63 = ptrtoint ptr %45 to i32
  %64 = ptrtoint ptr %24 to i32
  %65 = sub i32 %64, %63
  %66 = add i32 %65, %62
  %67 = icmp slt i32 %66, 0
  br i1 %67, label %68, label %70

68:                                               ; preds = %59
  %69 = and i16 %47, -97
  store i16 %69, ptr %46, align 8
  br label %70

70:                                               ; preds = %68, %59, %50, %44
  %71 = phi i16 [ %26, %44 ], [ %58, %50 ], [ %26, %59 ], [ %26, %68 ]
  %72 = phi ptr [ %24, %44 ], [ %57, %50 ], [ %24, %59 ], [ %24, %68 ]
  %73 = phi ptr [ %45, %44 ], [ %56, %50 ], [ %45, %59 ], [ %45, %68 ]
  %74 = ptrtoint ptr %73 to i32
  %75 = ptrtoint ptr %72 to i32
  %76 = sub i32 %74, %75
  %77 = trunc i32 %76 to i16
  %78 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 13, i32 0, i32 19
  store i16 %77, ptr %78, align 2
  %79 = sub i16 %71, %77
  %80 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 7
  store i16 %79, ptr %80, align 8
  br label %81

81:                                               ; preds = %70, %22, %19, %19, %14, %10, %8
  %82 = phi i32 [ 0, %70 ], [ -71, %22 ], [ -71, %19 ], [ -71, %10 ], [ -71, %8 ], [ -71, %14 ], [ -71, %19 ]
  ret i32 %82
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @skb_eth_push(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) #0 {
  %4 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 16
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 13, i32 0, i32 18
  %7 = load i16, ptr %6, align 4
  %8 = zext i16 %7 to i32
  %9 = getelementptr i8, ptr %5, i32 %8
  %10 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 17
  %11 = load ptr, ptr %10, align 4
  %12 = ptrtoint ptr %11 to i32
  %13 = icmp eq ptr %9, %11
  br i1 %13, label %14, label %94

14:                                               ; preds = %3
  %15 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 13, i32 0, i32 3
  %16 = load i16, ptr %15, align 2
  %17 = and i16 %16, 1
  %18 = icmp eq i16 %17, 0
  br i1 %18, label %19, label %94

19:                                               ; preds = %14
  %20 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 11
  %21 = load i8, ptr %20, align 2
  %22 = and i8 %21, 1
  %23 = icmp eq i8 %22, 0
  br i1 %23, label %34, label %24

24:                                               ; preds = %19
  %25 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 15
  %26 = load ptr, ptr %25, align 4
  %27 = getelementptr inbounds %struct.skb_shared_info, ptr %26, i32 0, i32 10
  %28 = load volatile i32, ptr %27, align 4
  %29 = and i32 %28, 65535
  %30 = ashr i32 %28, 16
  %31 = sub nsw i32 %29, %30
  %32 = icmp ne i32 %31, 1
  %33 = zext i1 %32 to i32
  br label %34

34:                                               ; preds = %24, %19
  %35 = phi i32 [ %33, %24 ], [ 0, %19 ]
  %36 = ptrtoint ptr %5 to i32
  %37 = sub i32 %12, %36
  %38 = tail call i32 @llvm.usub.sat.i32(i32 14, i32 %37) #21
  %39 = or i32 %35, %38
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %49, label %41

41:                                               ; preds = %34
  %42 = add nuw nsw i32 %38, 63
  %43 = and i32 %42, 64
  %44 = tail call i32 @pskb_expand_head(ptr noundef %0, i32 noundef %43, i32 noundef 0, i32 noundef 2592) #21
  %45 = icmp slt i32 %44, 0
  br i1 %45, label %94, label %46

46:                                               ; preds = %41
  %47 = load ptr, ptr %10, align 4
  %48 = load ptr, ptr %4, align 8
  br label %49

49:                                               ; preds = %46, %34
  %50 = phi ptr [ %48, %46 ], [ %5, %34 ]
  %51 = phi ptr [ %47, %46 ], [ %9, %34 ]
  %52 = getelementptr i8, ptr %51, i32 -14
  store ptr %52, ptr %10, align 4
  %53 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 5
  %54 = load i32, ptr %53, align 8
  %55 = add i32 %54, 14
  store i32 %55, ptr %53, align 8
  %56 = icmp ult ptr %52, %50
  br i1 %56, label %57, label %59, !prof !12

57:                                               ; preds = %49
  %58 = tail call ptr @llvm.returnaddress(i32 0) #21
  tail call fastcc void @skb_under_panic(ptr noundef %0, i32 noundef 14, ptr noundef %58) #21
  unreachable

59:                                               ; preds = %49
  %60 = ptrtoint ptr %52 to i32
  %61 = ptrtoint ptr %50 to i32
  %62 = sub i32 %60, %61
  %63 = trunc i32 %62 to i16
  %64 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 13, i32 0, i32 19
  store i16 %63, ptr %64, align 2
  %65 = load i16, ptr %6, align 4
  %66 = sub i16 %65, %63
  %67 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 7
  store i16 %66, ptr %67, align 8
  %68 = and i32 %62, 65535
  %69 = getelementptr i8, ptr %50, i32 %68
  %70 = load i32, ptr %1, align 4
  store i32 %70, ptr %69, align 4
  %71 = getelementptr i8, ptr %1, i32 4
  %72 = load i16, ptr %71, align 2
  %73 = getelementptr i8, ptr %69, i32 4
  store i16 %72, ptr %73, align 2
  %74 = getelementptr inbounds %struct.ethhdr, ptr %69, i32 0, i32 1
  %75 = load i32, ptr %2, align 4
  store i32 %75, ptr %74, align 4
  %76 = getelementptr i8, ptr %2, i32 4
  %77 = load i16, ptr %76, align 2
  %78 = getelementptr i8, ptr %74, i32 4
  store i16 %77, ptr %78, align 2
  %79 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 13, i32 0, i32 16
  %80 = load i16, ptr %79, align 8
  %81 = getelementptr inbounds %struct.ethhdr, ptr %69, i32 0, i32 2
  store i16 %80, ptr %81, align 1
  %82 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 13
  %83 = load i16, ptr %82, align 8
  %84 = and i16 %83, 96
  %85 = icmp eq i16 %84, 64
  br i1 %85, label %86, label %94

86:                                               ; preds = %59
  %87 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 13, i32 0, i32 4
  %88 = load i32, ptr %87, align 4
  %89 = tail call i32 @csum_partial(ptr noundef %69, i32 noundef 14, i32 noundef 0) #21
  %90 = add i32 %89, %88
  %91 = icmp ult i32 %90, %89
  %92 = zext i1 %91 to i32
  %93 = add i32 %90, %92
  store i32 %93, ptr %87, align 4
  br label %94

94:                                               ; preds = %86, %59, %41, %14, %3
  %95 = phi i32 [ -71, %14 ], [ -71, %3 ], [ %44, %41 ], [ 0, %59 ], [ 0, %86 ]
  ret i32 %95
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @skb_mpls_push(ptr noundef %0, i32 noundef %1, i16 noundef zeroext %2, i32 noundef %3, i1 noundef zeroext %4) #0 {
  %6 = alloca [2 x i16], align 4
  switch i16 %2, label %134 [
    i16 18568, label %7
    i16 18312, label %7
  ]

7:                                                ; preds = %5, %5
  %8 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 13
  %9 = load i16, ptr %8, align 8
  %10 = and i16 %9, 8192
  %11 = icmp eq i16 %10, 0
  br i1 %11, label %12, label %134

12:                                               ; preds = %7
  %13 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 11
  %14 = load i8, ptr %13, align 2
  %15 = and i8 %14, 1
  %16 = icmp eq i8 %15, 0
  br i1 %16, label %27, label %17

17:                                               ; preds = %12
  %18 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 15
  %19 = load ptr, ptr %18, align 4
  %20 = getelementptr inbounds %struct.skb_shared_info, ptr %19, i32 0, i32 10
  %21 = load volatile i32, ptr %20, align 4
  %22 = and i32 %21, 65535
  %23 = ashr i32 %21, 16
  %24 = sub nsw i32 %22, %23
  %25 = icmp ne i32 %24, 1
  %26 = zext i1 %25 to i32
  br label %27

27:                                               ; preds = %17, %12
  %28 = phi i32 [ %26, %17 ], [ 0, %12 ]
  %29 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 17
  %30 = load ptr, ptr %29, align 4
  %31 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 16
  %32 = load ptr, ptr %31, align 8
  %33 = ptrtoint ptr %30 to i32
  %34 = ptrtoint ptr %32 to i32
  %35 = sub i32 %33, %34
  %36 = tail call i32 @llvm.usub.sat.i32(i32 4, i32 %35) #21
  %37 = or i32 %36, %28
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %44, label %39

39:                                               ; preds = %27
  %40 = add nuw nsw i32 %36, 63
  %41 = and i32 %40, 64
  %42 = tail call i32 @pskb_expand_head(ptr noundef %0, i32 noundef %41, i32 noundef 0, i32 noundef 2592) #21
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %44, label %134, !prof !13

44:                                               ; preds = %39, %27
  %45 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 13, i32 0, i32 12
  %46 = load i16, ptr %45, align 8
  %47 = icmp eq i16 %46, 0
  br i1 %47, label %51, label %48

48:                                               ; preds = %44
  %49 = load ptr, ptr %29, align 4
  %50 = load ptr, ptr %31, align 8
  br label %72

51:                                               ; preds = %44
  %52 = load ptr, ptr %31, align 8
  %53 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 13, i32 0, i32 18
  %54 = load i16, ptr %53, align 4
  %55 = zext i16 %54 to i32
  %56 = getelementptr i8, ptr %52, i32 %55
  %57 = load ptr, ptr %29, align 4
  %58 = ptrtoint ptr %56 to i32
  %59 = ptrtoint ptr %57 to i32
  %60 = sub i32 %58, %59
  %61 = ptrtoint ptr %52 to i32
  %62 = sub i32 %59, %61
  %63 = trunc i32 %62 to i16
  %64 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 13, i32 0, i32 14
  %65 = trunc i32 %60 to i16
  %66 = add i16 %65, %63
  store i16 %66, ptr %64, align 4
  %67 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 13, i32 0, i32 16
  %68 = load i16, ptr %67, align 8
  store i16 %68, ptr %45, align 8
  %69 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 13, i32 0, i32 3
  %70 = load i16, ptr %69, align 2
  %71 = and i16 %70, -513
  store i16 %71, ptr %69, align 2
  br label %72

72:                                               ; preds = %51, %48
  %73 = phi ptr [ %50, %48 ], [ %52, %51 ]
  %74 = phi ptr [ %49, %48 ], [ %57, %51 ]
  %75 = getelementptr i8, ptr %74, i32 -4
  store ptr %75, ptr %29, align 4
  %76 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 5
  %77 = load i32, ptr %76, align 8
  %78 = add i32 %77, 4
  store i32 %78, ptr %76, align 8
  %79 = icmp ult ptr %75, %73
  br i1 %79, label %80, label %82, !prof !12

80:                                               ; preds = %72
  %81 = tail call ptr @llvm.returnaddress(i32 0) #21
  tail call fastcc void @skb_under_panic(ptr noundef %0, i32 noundef 4, ptr noundef %81) #21
  unreachable

82:                                               ; preds = %72
  %83 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 13, i32 0, i32 19
  %84 = load i16, ptr %83, align 2
  %85 = zext i16 %84 to i32
  %86 = getelementptr i8, ptr %73, i32 %85
  %87 = getelementptr i8, ptr %86, i32 -4
  tail call void @llvm.memmove.p0.p0.i32(ptr align 1 %87, ptr align 1 %86, i32 %3, i1 false)
  %88 = load ptr, ptr %29, align 4
  %89 = load ptr, ptr %31, align 8
  %90 = ptrtoint ptr %88 to i32
  %91 = ptrtoint ptr %89 to i32
  %92 = sub i32 %90, %91
  %93 = trunc i32 %92 to i16
  store i16 %93, ptr %83, align 2
  %94 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 13, i32 0, i32 18
  %95 = trunc i32 %3 to i16
  %96 = add i16 %93, %95
  store i16 %96, ptr %94, align 4
  %97 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 7
  store i16 %95, ptr %97, align 8
  %98 = zext i16 %96 to i32
  %99 = getelementptr i8, ptr %89, i32 %98
  store i32 %1, ptr %99, align 4
  %100 = load i16, ptr %8, align 8
  %101 = and i16 %100, 96
  %102 = icmp eq i16 %101, 64
  br i1 %102, label %103, label %111

103:                                              ; preds = %82
  %104 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 13, i32 0, i32 4
  %105 = load i32, ptr %104, align 4
  %106 = tail call i32 @csum_partial(ptr noundef %99, i32 noundef 4, i32 noundef 0) #21
  %107 = add i32 %106, %105
  %108 = icmp ult i32 %107, %106
  %109 = zext i1 %108 to i32
  %110 = add i32 %107, %109
  store i32 %110, ptr %104, align 4
  br label %111

111:                                              ; preds = %103, %82
  %112 = icmp sgt i32 %3, 13
  %113 = and i1 %112, %4
  br i1 %113, label %114, label %132

114:                                              ; preds = %111
  %115 = load ptr, ptr %31, align 8
  %116 = load i16, ptr %83, align 2
  %117 = zext i16 %116 to i32
  %118 = getelementptr i8, ptr %115, i32 %117
  %119 = load i16, ptr %8, align 8
  %120 = and i16 %119, 96
  %121 = icmp eq i16 %120, 64
  br i1 %121, label %122, label %130

122:                                              ; preds = %114
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #21
  %123 = getelementptr inbounds %struct.ethhdr, ptr %118, i32 0, i32 2
  %124 = load i16, ptr %123, align 1
  %125 = xor i16 %124, -1
  store i16 %125, ptr %6, align 4
  %126 = getelementptr inbounds i16, ptr %6, i32 1
  store i16 %2, ptr %126, align 2
  %127 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 13, i32 0, i32 4
  %128 = load i32, ptr %127, align 4
  %129 = call i32 @csum_partial(ptr noundef nonnull %6, i32 noundef 4, i32 noundef %128) #21
  store i32 %129, ptr %127, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #21
  br label %130

130:                                              ; preds = %122, %114
  %131 = getelementptr inbounds %struct.ethhdr, ptr %118, i32 0, i32 2
  store i16 %2, ptr %131, align 1
  br label %132

132:                                              ; preds = %130, %111
  %133 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 13, i32 0, i32 16
  store i16 %2, ptr %133, align 8
  br label %134

134:                                              ; preds = %132, %39, %7, %5
  %135 = phi i32 [ 0, %132 ], [ -22, %5 ], [ -22, %7 ], [ %42, %39 ]
  ret i32 %135
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @skb_mpls_pop(ptr noundef %0, i16 noundef zeroext %1, i32 noundef %2, i1 noundef zeroext %3) #0 {
  %5 = alloca [2 x i16], align 4
  %6 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 13, i32 0, i32 16
  %7 = load i16, ptr %6, align 8
  switch i16 %7, label %130 [
    i16 18568, label %8
    i16 18312, label %8
  ]

8:                                                ; preds = %4, %4
  %9 = add i32 %2, 4
  %10 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 5
  %11 = load i32, ptr %10, align 8
  %12 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 6
  %13 = load i32, ptr %12, align 4
  %14 = sub i32 %11, %13
  %15 = icmp ugt i32 %9, %14
  br i1 %15, label %16, label %22, !prof !12

16:                                               ; preds = %8
  %17 = icmp ult i32 %11, %9
  br i1 %17, label %130, label %18, !prof !12

18:                                               ; preds = %16
  %19 = sub i32 %9, %14
  %20 = tail call ptr @__pskb_pull_tail(ptr noundef %0, i32 noundef %19) #21
  %21 = icmp eq ptr %20, null
  br i1 %21, label %130, label %22

22:                                               ; preds = %18, %8
  %23 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 11
  %24 = load i8, ptr %23, align 2
  %25 = and i8 %24, 1
  %26 = icmp eq i8 %25, 0
  br i1 %26, label %56, label %27

27:                                               ; preds = %22
  %28 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 15
  %29 = load ptr, ptr %28, align 4
  %30 = getelementptr inbounds %struct.skb_shared_info, ptr %29, i32 0, i32 10
  %31 = load volatile i32, ptr %30, align 4
  %32 = and i32 %31, 65535
  %33 = icmp eq i32 %32, 1
  br i1 %33, label %56, label %34

34:                                               ; preds = %27
  %35 = load volatile i32, ptr %30, align 4
  %36 = and i32 %35, 65535
  %37 = ashr i32 %35, 16
  %38 = sub nsw i32 %36, %37
  %39 = icmp eq i32 %38, 1
  br i1 %39, label %40, label %53

40:                                               ; preds = %34
  %41 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 17
  %42 = load ptr, ptr %41, align 4
  %43 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 16
  %44 = load ptr, ptr %43, align 8
  %45 = ptrtoint ptr %42 to i32
  %46 = ptrtoint ptr %44 to i32
  %47 = add i32 %9, %45
  %48 = sub i32 %47, %46
  %49 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 8
  %50 = load i16, ptr %49, align 2
  %51 = zext i16 %50 to i32
  %52 = icmp ugt i32 %48, %51
  br i1 %52, label %53, label %56

53:                                               ; preds = %40, %34
  %54 = tail call i32 @pskb_expand_head(ptr noundef %0, i32 noundef 0, i32 noundef 0, i32 noundef 2592) #21
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %56, label %130, !prof !13

56:                                               ; preds = %53, %40, %27, %22
  %57 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 16
  %58 = load ptr, ptr %57, align 8
  %59 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 13, i32 0, i32 18
  %60 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 13
  %61 = load i16, ptr %60, align 8
  %62 = lshr i16 %61, 5
  %63 = trunc i16 %62 to i2
  switch i2 %63, label %87 [
    i2 -2, label %64
    i2 -1, label %74
  ]

64:                                               ; preds = %56
  %65 = load i16, ptr %59, align 4
  %66 = zext i16 %65 to i32
  %67 = getelementptr i8, ptr %58, i32 %66
  %68 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 13, i32 0, i32 4
  %69 = load i32, ptr %68, align 4
  %70 = sub i32 0, %69
  %71 = tail call i32 @csum_partial(ptr noundef %67, i32 noundef 4, i32 noundef %70) #21
  %72 = sub i32 0, %71
  store i32 %72, ptr %68, align 4
  %73 = load ptr, ptr %57, align 8
  br label %87

74:                                               ; preds = %56
  %75 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 13, i32 0, i32 4
  %76 = load i16, ptr %75, align 4
  %77 = zext i16 %76 to i32
  %78 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 17
  %79 = load ptr, ptr %78, align 4
  %80 = ptrtoint ptr %79 to i32
  %81 = ptrtoint ptr %58 to i32
  %82 = add i32 %77, %81
  %83 = sub i32 %82, %80
  %84 = icmp slt i32 %83, 0
  br i1 %84, label %85, label %87

85:                                               ; preds = %74
  %86 = and i16 %61, -97
  store i16 %86, ptr %60, align 8
  br label %87

87:                                               ; preds = %85, %74, %64, %56
  %88 = phi ptr [ %58, %56 ], [ %73, %64 ], [ %58, %74 ], [ %58, %85 ]
  %89 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 13, i32 0, i32 19
  %90 = load i16, ptr %89, align 2
  %91 = zext i16 %90 to i32
  %92 = getelementptr i8, ptr %88, i32 %91
  %93 = getelementptr i8, ptr %92, i32 4
  tail call void @llvm.memmove.p0.p0.i32(ptr align 1 %93, ptr align 1 %92, i32 %2, i1 false)
  %94 = load i32, ptr %10, align 8
  %95 = add i32 %94, -4
  store i32 %95, ptr %10, align 8
  %96 = load i32, ptr %12, align 4
  %97 = icmp ult i32 %95, %96
  br i1 %97, label %98, label %99, !prof !12

98:                                               ; preds = %87
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/skbuff.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2398, 0\0A.popsection", ""() #21, !srcloc !54
  unreachable

99:                                               ; preds = %87
  %100 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 17
  %101 = load ptr, ptr %100, align 4
  %102 = getelementptr i8, ptr %101, i32 4
  store ptr %102, ptr %100, align 4
  %103 = load ptr, ptr %57, align 8
  %104 = ptrtoint ptr %102 to i32
  %105 = ptrtoint ptr %103 to i32
  %106 = sub i32 %104, %105
  %107 = trunc i32 %106 to i16
  store i16 %107, ptr %89, align 2
  %108 = trunc i32 %2 to i16
  %109 = add i16 %107, %108
  store i16 %109, ptr %59, align 4
  %110 = icmp sgt i32 %2, 13
  %111 = and i1 %110, %3
  br i1 %111, label %112, label %129

112:                                              ; preds = %99
  %113 = zext i16 %109 to i32
  %114 = getelementptr i8, ptr %103, i32 %113
  %115 = getelementptr i8, ptr %114, i32 -14
  %116 = load i16, ptr %60, align 8
  %117 = and i16 %116, 96
  %118 = icmp eq i16 %117, 64
  br i1 %118, label %119, label %127

119:                                              ; preds = %112
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #21
  %120 = getelementptr inbounds %struct.ethhdr, ptr %115, i32 0, i32 2
  %121 = load i16, ptr %120, align 1
  %122 = xor i16 %121, -1
  store i16 %122, ptr %5, align 4
  %123 = getelementptr inbounds i16, ptr %5, i32 1
  store i16 %1, ptr %123, align 2
  %124 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 13, i32 0, i32 4
  %125 = load i32, ptr %124, align 4
  %126 = call i32 @csum_partial(ptr noundef nonnull %5, i32 noundef 4, i32 noundef %125) #21
  store i32 %126, ptr %124, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #21
  br label %127

127:                                              ; preds = %119, %112
  %128 = getelementptr inbounds %struct.ethhdr, ptr %115, i32 0, i32 2
  store i16 %1, ptr %128, align 1
  br label %129

129:                                              ; preds = %127, %99
  store i16 %1, ptr %6, align 8
  br label %130

130:                                              ; preds = %129, %53, %18, %16, %4
  %131 = phi i32 [ 0, %129 ], [ 0, %4 ], [ %54, %53 ], [ -12, %18 ], [ -12, %16 ]
  ret i32 %131
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @skb_mpls_update_lse(ptr noundef %0, i32 noundef %1) #0 {
  %3 = alloca [2 x i32], align 8
  %4 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 13, i32 0, i32 16
  %5 = load i16, ptr %4, align 8
  switch i16 %5, label %82 [
    i16 18568, label %6
    i16 18312, label %6
  ]

6:                                                ; preds = %2, %2
  %7 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 7
  %8 = load i16, ptr %7, align 8
  %9 = zext i16 %8 to i32
  %10 = add nuw nsw i32 %9, 4
  %11 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 5
  %12 = load i32, ptr %11, align 8
  %13 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 6
  %14 = load i32, ptr %13, align 4
  %15 = sub i32 %12, %14
  %16 = icmp ugt i32 %10, %15
  br i1 %16, label %17, label %23, !prof !12

17:                                               ; preds = %6
  %18 = icmp ult i32 %12, %10
  br i1 %18, label %82, label %19, !prof !12

19:                                               ; preds = %17
  %20 = sub i32 %10, %15
  %21 = tail call ptr @__pskb_pull_tail(ptr noundef %0, i32 noundef %20) #21
  %22 = icmp eq ptr %21, null
  br i1 %22, label %82, label %23

23:                                               ; preds = %19, %6
  %24 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 11
  %25 = load i8, ptr %24, align 2
  %26 = and i8 %25, 1
  %27 = icmp eq i8 %26, 0
  br i1 %27, label %57, label %28

28:                                               ; preds = %23
  %29 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 15
  %30 = load ptr, ptr %29, align 4
  %31 = getelementptr inbounds %struct.skb_shared_info, ptr %30, i32 0, i32 10
  %32 = load volatile i32, ptr %31, align 4
  %33 = and i32 %32, 65535
  %34 = icmp eq i32 %33, 1
  br i1 %34, label %57, label %35

35:                                               ; preds = %28
  %36 = load volatile i32, ptr %31, align 4
  %37 = and i32 %36, 65535
  %38 = ashr i32 %36, 16
  %39 = sub nsw i32 %37, %38
  %40 = icmp eq i32 %39, 1
  br i1 %40, label %41, label %54

41:                                               ; preds = %35
  %42 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 17
  %43 = load ptr, ptr %42, align 4
  %44 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 16
  %45 = load ptr, ptr %44, align 8
  %46 = ptrtoint ptr %43 to i32
  %47 = ptrtoint ptr %45 to i32
  %48 = add i32 %10, %46
  %49 = sub i32 %48, %47
  %50 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 8
  %51 = load i16, ptr %50, align 2
  %52 = zext i16 %51 to i32
  %53 = icmp ugt i32 %49, %52
  br i1 %53, label %54, label %57

54:                                               ; preds = %41, %35
  %55 = tail call i32 @pskb_expand_head(ptr noundef %0, i32 noundef 0, i32 noundef 0, i32 noundef 2592) #21
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %57, label %82, !prof !13

57:                                               ; preds = %54, %41, %28, %23
  %58 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 13
  %59 = load i16, ptr %58, align 8
  %60 = and i16 %59, 96
  %61 = icmp eq i16 %60, 64
  br i1 %61, label %62, label %75

62:                                               ; preds = %57
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #21
  %63 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 16
  %64 = load ptr, ptr %63, align 8
  %65 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 13, i32 0, i32 18
  %66 = load i16, ptr %65, align 4
  %67 = zext i16 %66 to i32
  %68 = getelementptr i8, ptr %64, i32 %67
  %69 = load i32, ptr %68, align 4
  %70 = xor i32 %69, -1
  store i32 %70, ptr %3, align 8
  %71 = getelementptr inbounds i32, ptr %3, i32 1
  store i32 %1, ptr %71, align 4
  %72 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 13, i32 0, i32 4
  %73 = load i32, ptr %72, align 4
  %74 = call i32 @csum_partial(ptr noundef nonnull %3, i32 noundef 8, i32 noundef %73) #21
  store i32 %74, ptr %72, align 4
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #21
  br label %75

75:                                               ; preds = %62, %57
  %76 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 16
  %77 = load ptr, ptr %76, align 8
  %78 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 13, i32 0, i32 18
  %79 = load i16, ptr %78, align 4
  %80 = zext i16 %79 to i32
  %81 = getelementptr i8, ptr %77, i32 %80
  store i32 %1, ptr %81, align 4
  br label %82

82:                                               ; preds = %75, %54, %19, %17, %2
  %83 = phi i32 [ 0, %75 ], [ -22, %2 ], [ %55, %54 ], [ -12, %19 ], [ -12, %17 ]
  ret i32 %83
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @csum_partial(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @skb_mpls_dec_ttl(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 13, i32 0, i32 16
  %3 = load i16, ptr %2, align 8
  switch i16 %3, label %48 [
    i16 18568, label %4
    i16 18312, label %4
  ]

4:                                                ; preds = %1, %1
  %5 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 16
  %6 = load ptr, ptr %5, align 8
  %7 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 13, i32 0, i32 18
  %8 = load i16, ptr %7, align 4
  %9 = zext i16 %8 to i32
  %10 = getelementptr i8, ptr %6, i32 %9
  %11 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 17
  %12 = load ptr, ptr %11, align 4
  %13 = ptrtoint ptr %10 to i32
  %14 = ptrtoint ptr %12 to i32
  %15 = sub i32 %13, %14
  %16 = add i32 %15, 4
  %17 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 5
  %18 = load i32, ptr %17, align 8
  %19 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 6
  %20 = load i32, ptr %19, align 4
  %21 = sub i32 %18, %20
  %22 = icmp ugt i32 %16, %21
  br i1 %22, label %23, label %33, !prof !12

23:                                               ; preds = %4
  %24 = icmp ult i32 %18, %16
  br i1 %24, label %48, label %25, !prof !12

25:                                               ; preds = %23
  %26 = sub i32 %16, %21
  %27 = tail call ptr @__pskb_pull_tail(ptr noundef %0, i32 noundef %26) #21
  %28 = icmp eq ptr %27, null
  br i1 %28, label %48, label %29

29:                                               ; preds = %25
  %30 = load ptr, ptr %5, align 8
  %31 = load i16, ptr %7, align 4
  %32 = zext i16 %31 to i32
  br label %33

33:                                               ; preds = %29, %4
  %34 = phi i32 [ %32, %29 ], [ %9, %4 ]
  %35 = phi ptr [ %30, %29 ], [ %6, %4 ]
  %36 = getelementptr i8, ptr %35, i32 %34
  %37 = load i32, ptr %36, align 4
  %38 = tail call i32 @llvm.bswap.i32(i32 %37)
  %39 = trunc i32 %38 to i8
  %40 = add i8 %39, -1
  %41 = icmp eq i8 %40, 0
  br i1 %41, label %48, label %42

42:                                               ; preds = %33
  %43 = and i32 %38, -256
  %44 = zext i8 %40 to i32
  %45 = or i32 %43, %44
  %46 = tail call i32 @llvm.bswap.i32(i32 %45)
  %47 = tail call i32 @skb_mpls_update_lse(ptr noundef %0, i32 noundef %46)
  br label %48

48:                                               ; preds = %42, %33, %25, %23, %1
  %49 = phi i32 [ %47, %42 ], [ -22, %1 ], [ -12, %25 ], [ -22, %33 ], [ -12, %23 ]
  ret i32 %49
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #10

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @alloc_skb_with_frags(i32 noundef %0, i32 noundef %1, i32 noundef %2, ptr nocapture noundef writeonly %3, i32 noundef %4) #0 {
  %6 = add i32 %1, 4095
  %7 = lshr i32 %6, 12
  store i32 -90, ptr %3, align 4
  %8 = icmp ugt i32 %6, 73727
  br i1 %8, label %112, label %9

9:                                                ; preds = %5
  store i32 -105, ptr %3, align 4
  %10 = tail call ptr @__alloc_skb(i32 noundef %0, i32 noundef %4, i32 noundef 0, i32 noundef -1) #21
  %11 = icmp eq ptr %10, null
  br i1 %11, label %112, label %12

12:                                               ; preds = %9
  %13 = and i32 %6, -4096
  %14 = getelementptr inbounds %struct.sk_buff, ptr %10, i32 0, i32 18
  %15 = load i32, ptr %14, align 8
  %16 = add i32 %15, %13
  store i32 %16, ptr %14, align 8
  %17 = icmp ult i32 %6, 4096
  br i1 %17, label %112, label %18

18:                                               ; preds = %12
  %19 = and i32 %4, -271361
  %20 = or i32 %19, 270336
  %21 = getelementptr inbounds %struct.sk_buff, ptr %10, i32 0, i32 15
  %22 = getelementptr inbounds %struct.sk_buff, ptr %10, i32 0, i32 11
  br label %23

23:                                               ; preds = %72, %18
  %24 = phi i32 [ %1, %18 ], [ %77, %72 ]
  %25 = phi i32 [ %2, %18 ], [ %45, %72 ]
  %26 = phi i32 [ 0, %18 ], [ %80, %72 ]
  %27 = phi i32 [ %7, %18 ], [ %79, %72 ]
  %28 = icmp eq i32 %25, 0
  br i1 %28, label %39, label %29

29:                                               ; preds = %36, %23
  %30 = phi i32 [ %37, %36 ], [ %25, %23 ]
  %31 = shl nuw i32 1, %30
  %32 = icmp slt i32 %27, %31
  br i1 %32, label %36, label %33

33:                                               ; preds = %29
  %34 = tail call ptr @__alloc_pages(i32 noundef %20, i32 noundef %30, i32 noundef 0, ptr noundef null) #21
  %35 = icmp eq ptr %34, null
  br i1 %35, label %39, label %43

36:                                               ; preds = %29
  %37 = add i32 %30, -1
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %39, label %29

39:                                               ; preds = %36, %33, %23
  %40 = phi i32 [ 0, %23 ], [ 0, %33 ], [ %25, %36 ]
  %41 = tail call ptr @__alloc_pages(i32 noundef %4, i32 noundef 0, i32 noundef 0, ptr noundef null) #21
  %42 = icmp eq ptr %41, null
  br i1 %42, label %82, label %43

43:                                               ; preds = %39, %33
  %44 = phi i32 [ 0, %39 ], [ %30, %33 ]
  %45 = phi i32 [ %40, %39 ], [ %25, %33 ]
  %46 = phi ptr [ %41, %39 ], [ %34, %33 ]
  %47 = shl i32 4096, %44
  %48 = tail call i32 @llvm.umin.i32(i32 %24, i32 %47)
  %49 = load ptr, ptr %21, align 4
  %50 = getelementptr %struct.skb_shared_info, ptr %49, i32 0, i32 12, i32 %26
  store ptr %46, ptr %50, align 4
  %51 = getelementptr %struct.skb_shared_info, ptr %49, i32 0, i32 12, i32 %26, i32 2
  store i32 0, ptr %51, align 4
  %52 = getelementptr %struct.skb_shared_info, ptr %49, i32 0, i32 12, i32 %26, i32 1
  store i32 %48, ptr %52, align 4
  %53 = getelementptr inbounds %struct.page, ptr %46, i32 0, i32 1
  %54 = load volatile i32, ptr %53, align 4
  %55 = and i32 %54, 1
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %59, label %57, !prof !13

57:                                               ; preds = %43
  %58 = add i32 %54, -1
  br label %61

59:                                               ; preds = %43
  %60 = ptrtoint ptr %46 to i32
  br label %61

61:                                               ; preds = %59, %57
  %62 = phi i32 [ %58, %57 ], [ %60, %59 ]
  %63 = inttoptr i32 %62 to ptr
  %64 = getelementptr inbounds %struct.page, ptr %63, i32 0, i32 1
  %65 = load ptr, ptr %64, align 4
  %66 = ptrtoint ptr %65 to i32
  %67 = and i32 %66, 2
  %68 = icmp eq i32 %67, 0
  br i1 %68, label %72, label %69

69:                                               ; preds = %61
  %70 = load i8, ptr %22, align 2
  %71 = or i8 %70, 64
  store i8 %71, ptr %22, align 2
  br label %72

72:                                               ; preds = %69, %61
  %73 = trunc i32 %26 to i8
  %74 = add i8 %73, 1
  %75 = load ptr, ptr %21, align 4
  %76 = getelementptr inbounds %struct.skb_shared_info, ptr %75, i32 0, i32 2
  store i8 %74, ptr %76, align 2
  %77 = sub i32 %24, %48
  %78 = shl nsw i32 -1, %44
  %79 = add i32 %78, %27
  %80 = add i32 %26, 1
  %81 = icmp sgt i32 %79, 0
  br i1 %81, label %23, label %112

82:                                               ; preds = %39
  %83 = getelementptr inbounds %struct.sk_buff, ptr %10, i32 0, i32 19
  %84 = load volatile i32, ptr %83, align 4
  %85 = icmp eq i32 %84, 1
  tail call void asm sideeffect "dmb ish", "~{memory}"() #21
  br i1 %85, label %94, label %86, !prof !13

86:                                               ; preds = %82
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %83) #21, !srcloc !16
  %87 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %83, ptr %83, i32 1, ptr elementtype(i32) %83) #21, !srcloc !19
  %88 = extractvalue { i32, i32, i32 } %87, 0
  %89 = icmp eq i32 %88, 1
  br i1 %89, label %93, label %90

90:                                               ; preds = %86
  %91 = icmp sgt i32 %88, 0
  br i1 %91, label %112, label %92, !prof !13

92:                                               ; preds = %90
  tail call void @refcount_warn_saturate(ptr noundef %83, i32 noundef 3) #21
  br label %112

93:                                               ; preds = %86
  tail call void asm sideeffect "dmb ish", "~{memory}"() #21, !srcloc !20
  br label %94

94:                                               ; preds = %93, %82
  %95 = tail call ptr @llvm.returnaddress(i32 0) #21
  %96 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_kfree_skb, i32 0, i32 1), align 4
  %97 = icmp sgt i32 %96, 0
  br i1 %97, label %98, label %111

98:                                               ; preds = %94
  %99 = tail call ptr @llvm.thread.pointer() #21
  %100 = getelementptr inbounds %struct.thread_info, ptr %99, i32 0, i32 2
  %101 = load i32, ptr %100, align 8
  %102 = lshr i32 %101, 5
  %103 = getelementptr i32, ptr @__cpu_online_mask, i32 %102
  %104 = load volatile i32, ptr %103, align 4
  %105 = and i32 %101, 31
  %106 = shl nuw i32 1, %105
  %107 = and i32 %106, %104
  %108 = icmp eq i32 %107, 0
  br i1 %108, label %111, label %109

109:                                              ; preds = %98
  tail call void asm sideeffect "", "~{memory}"() #21, !srcloc !21
  %110 = tail call i32 @__traceiter_kfree_skb(ptr noundef null, ptr noundef nonnull %10, ptr noundef %95, i32 noundef 0) #21
  tail call void asm sideeffect "", "~{memory}"() #21, !srcloc !22
  br label %111

111:                                              ; preds = %109, %98, %94
  tail call void @__kfree_skb(ptr noundef nonnull %10) #21
  br label %112

112:                                              ; preds = %111, %92, %90, %72, %12, %9, %5
  %113 = phi ptr [ null, %5 ], [ null, %9 ], [ null, %90 ], [ null, %92 ], [ null, %111 ], [ %10, %12 ], [ %10, %72 ]
  ret ptr %113
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @pskb_extract(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) #0 {
  %5 = tail call ptr @skb_clone(ptr noundef %0, i32 noundef %3)
  %6 = icmp eq ptr %5, null
  br i1 %6, label %56, label %7

7:                                                ; preds = %4
  %8 = tail call fastcc i32 @pskb_carve(ptr noundef nonnull %5, i32 noundef %1, i32 noundef %3)
  %9 = icmp slt i32 %8, 0
  br i1 %9, label %26, label %10

10:                                               ; preds = %7
  %11 = getelementptr inbounds %struct.sk_buff, ptr %5, i32 0, i32 5
  %12 = load i32, ptr %11, align 8
  %13 = icmp ugt i32 %12, %2
  br i1 %13, label %14, label %56

14:                                               ; preds = %10
  %15 = getelementptr inbounds %struct.sk_buff, ptr %5, i32 0, i32 6
  %16 = load i32, ptr %15, align 4
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %23

18:                                               ; preds = %14
  store i32 %2, ptr %11, align 8
  %19 = getelementptr inbounds %struct.sk_buff, ptr %5, i32 0, i32 17
  %20 = load ptr, ptr %19, align 4
  %21 = getelementptr i8, ptr %20, i32 %2
  %22 = getelementptr inbounds %struct.sk_buff, ptr %5, i32 0, i32 14
  store ptr %21, ptr %22, align 8
  br label %56

23:                                               ; preds = %14
  %24 = tail call i32 @___pskb_trim(ptr noundef nonnull %5, i32 noundef %2) #21
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %56, label %26

26:                                               ; preds = %23, %7
  %27 = getelementptr inbounds %struct.sk_buff, ptr %5, i32 0, i32 19
  %28 = load volatile i32, ptr %27, align 4
  %29 = icmp eq i32 %28, 1
  tail call void asm sideeffect "dmb ish", "~{memory}"() #21
  br i1 %29, label %38, label %30, !prof !13

30:                                               ; preds = %26
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %27) #21, !srcloc !16
  %31 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %27, ptr %27, i32 1, ptr elementtype(i32) %27) #21, !srcloc !19
  %32 = extractvalue { i32, i32, i32 } %31, 0
  %33 = icmp eq i32 %32, 1
  br i1 %33, label %37, label %34

34:                                               ; preds = %30
  %35 = icmp sgt i32 %32, 0
  br i1 %35, label %56, label %36, !prof !13

36:                                               ; preds = %34
  tail call void @refcount_warn_saturate(ptr noundef %27, i32 noundef 3) #21
  br label %56

37:                                               ; preds = %30
  tail call void asm sideeffect "dmb ish", "~{memory}"() #21, !srcloc !20
  br label %38

38:                                               ; preds = %37, %26
  %39 = tail call ptr @llvm.returnaddress(i32 0) #21
  %40 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_kfree_skb, i32 0, i32 1), align 4
  %41 = icmp sgt i32 %40, 0
  br i1 %41, label %42, label %55

42:                                               ; preds = %38
  %43 = tail call ptr @llvm.thread.pointer() #21
  %44 = getelementptr inbounds %struct.thread_info, ptr %43, i32 0, i32 2
  %45 = load i32, ptr %44, align 8
  %46 = lshr i32 %45, 5
  %47 = getelementptr i32, ptr @__cpu_online_mask, i32 %46
  %48 = load volatile i32, ptr %47, align 4
  %49 = and i32 %45, 31
  %50 = shl nuw i32 1, %49
  %51 = and i32 %50, %48
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %55, label %53

53:                                               ; preds = %42
  tail call void asm sideeffect "", "~{memory}"() #21, !srcloc !21
  %54 = tail call i32 @__traceiter_kfree_skb(ptr noundef null, ptr noundef nonnull %5, ptr noundef %39, i32 noundef 0) #21
  tail call void asm sideeffect "", "~{memory}"() #21, !srcloc !22
  br label %55

55:                                               ; preds = %53, %42, %38
  tail call void @__kfree_skb(ptr noundef nonnull %5) #21
  br label %56

56:                                               ; preds = %55, %36, %34, %23, %18, %10, %4
  %57 = phi ptr [ null, %4 ], [ %5, %23 ], [ null, %34 ], [ null, %36 ], [ null, %55 ], [ %5, %10 ], [ %5, %18 ]
  ret ptr %57
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @pskb_carve(ptr noundef %0, i32 noundef %1, i32 noundef %2) unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 5
  %5 = load i32, ptr %4, align 8
  %6 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 6
  %7 = load i32, ptr %6, align 4
  %8 = sub i32 %5, %7
  %9 = icmp ugt i32 %8, %1
  %10 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 15
  %11 = load ptr, ptr %10, align 4
  %12 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 16
  %13 = load ptr, ptr %12, align 8
  %14 = ptrtoint ptr %11 to i32
  %15 = ptrtoint ptr %13 to i32
  br i1 %9, label %16, label %160

16:                                               ; preds = %3
  %17 = sub i32 %8, %1
  %18 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 11
  %19 = load i8, ptr %18, align 2
  %20 = and i8 %19, 64
  %21 = zext i8 %20 to i32
  %22 = shl nuw nsw i32 %21, 11
  %23 = or i32 %22, %2
  %24 = add i32 %14, 319
  %25 = sub i32 %24, %15
  %26 = and i32 %25, -64
  %27 = or i32 %23, 532480
  %28 = tail call ptr @llvm.returnaddress(i32 0) #21
  %29 = ptrtoint ptr %28 to i32
  %30 = tail call ptr @__kmalloc_track_caller(i32 noundef %26, i32 noundef %27, i32 noundef %29) #21
  %31 = icmp eq ptr %30, null
  br i1 %31, label %32, label %37

32:                                               ; preds = %16
  %33 = tail call zeroext i1 @gfp_pfmemalloc_allowed(i32 noundef %23) #21
  br i1 %33, label %34, label %373

34:                                               ; preds = %32
  %35 = tail call ptr @__kmalloc_track_caller(i32 noundef %26, i32 noundef %23, i32 noundef %29) #21
  %36 = icmp eq ptr %35, null
  br i1 %36, label %373, label %37

37:                                               ; preds = %34, %16
  %38 = phi ptr [ %35, %34 ], [ %30, %16 ]
  %39 = tail call i32 @ksize(ptr noundef nonnull %38) #21
  %40 = add i32 %39, -256
  %41 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 17
  %42 = load ptr, ptr %41, align 4
  %43 = getelementptr i8, ptr %42, i32 %1
  tail call void @llvm.memcpy.p0.p0.i32(ptr nonnull align 1 %38, ptr align 1 %43, i32 %17, i1 false) #21
  %44 = load i32, ptr %4, align 8
  %45 = sub i32 %44, %1
  store i32 %45, ptr %4, align 8
  %46 = getelementptr i8, ptr %38, i32 %40
  %47 = load ptr, ptr %10, align 4
  %48 = getelementptr inbounds %struct.skb_shared_info, ptr %47, i32 0, i32 2
  %49 = load i8, ptr %48, align 2
  %50 = zext i8 %49 to i32
  %51 = mul nuw nsw i32 %50, 12
  %52 = add nuw nsw i32 %51, 40
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 8 %46, ptr noundef align 8 %47, i32 %52, i1 false) #21
  %53 = load i8, ptr %18, align 2
  %54 = and i8 %53, 1
  %55 = icmp eq i8 %54, 0
  br i1 %55, label %135, label %56

56:                                               ; preds = %37
  %57 = load ptr, ptr %10, align 4
  %58 = getelementptr inbounds %struct.skb_shared_info, ptr %57, i32 0, i32 10
  %59 = load volatile i32, ptr %58, align 4
  %60 = and i32 %59, 65535
  %61 = icmp eq i32 %60, 1
  br i1 %61, label %135, label %62

62:                                               ; preds = %56
  %63 = icmp eq ptr %0, null
  br i1 %63, label %64, label %69

64:                                               ; preds = %87, %81, %73, %69, %62
  %65 = phi ptr [ %88, %87 ], [ %57, %73 ], [ %57, %81 ], [ %57, %69 ], [ %57, %62 ]
  %66 = getelementptr inbounds %struct.skb_shared_info, ptr %65, i32 0, i32 2
  %67 = load i8, ptr %66, align 2
  %68 = icmp eq i8 %67, 0
  br i1 %68, label %114, label %90

69:                                               ; preds = %62
  %70 = load i8, ptr %57, align 8
  %71 = and i8 %70, 1
  %72 = icmp eq i8 %71, 0
  br i1 %72, label %64, label %73

73:                                               ; preds = %69
  %74 = getelementptr inbounds %struct.skb_shared_info, ptr %57, i32 0, i32 11
  %75 = load ptr, ptr %74, align 4
  %76 = icmp eq ptr %75, null
  br i1 %76, label %64, label %77, !prof !13

77:                                               ; preds = %73
  %78 = ptrtoint ptr %75 to i32
  %79 = and i32 %78, 1
  %80 = icmp eq i32 %79, 0
  br i1 %80, label %81, label %84

81:                                               ; preds = %77
  %82 = load ptr, ptr %75, align 4
  %83 = icmp eq ptr %82, @msg_zerocopy_callback
  br i1 %83, label %64, label %84

84:                                               ; preds = %81, %77
  %85 = tail call i32 @skb_copy_ubufs(ptr noundef nonnull %0, i32 noundef %23) #21
  %86 = icmp eq i32 %85, 0
  br i1 %86, label %87, label %89

87:                                               ; preds = %84
  %88 = load ptr, ptr %10, align 4
  br label %64

89:                                               ; preds = %84
  tail call void @kfree(ptr noundef nonnull %38) #21
  br label %373

90:                                               ; preds = %103, %64
  %91 = phi ptr [ %109, %103 ], [ %65, %64 ]
  %92 = phi i32 [ %108, %103 ], [ 0, %64 ]
  %93 = getelementptr %struct.skb_shared_info, ptr %91, i32 0, i32 12, i32 %92
  %94 = load ptr, ptr %93, align 4
  %95 = getelementptr inbounds %struct.page, ptr %94, i32 0, i32 1
  %96 = load volatile i32, ptr %95, align 4
  %97 = and i32 %96, 1
  %98 = icmp eq i32 %97, 0
  br i1 %98, label %101, label %99, !prof !13

99:                                               ; preds = %90
  %100 = add i32 %96, -1
  br label %103

101:                                              ; preds = %90
  %102 = ptrtoint ptr %94 to i32
  br label %103

103:                                              ; preds = %101, %99
  %104 = phi i32 [ %100, %99 ], [ %102, %101 ]
  %105 = inttoptr i32 %104 to ptr
  %106 = getelementptr inbounds %struct.page, ptr %105, i32 0, i32 3
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %106) #21, !srcloc !16
  %107 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %106, ptr %106, i32 1, ptr elementtype(i32) %106) #21, !srcloc !38
  %108 = add nuw nsw i32 %92, 1
  %109 = load ptr, ptr %10, align 4
  %110 = getelementptr inbounds %struct.skb_shared_info, ptr %109, i32 0, i32 2
  %111 = load i8, ptr %110, align 2
  %112 = zext i8 %111 to i32
  %113 = icmp ult i32 %108, %112
  br i1 %113, label %90, label %114

114:                                              ; preds = %103, %64
  %115 = phi ptr [ %65, %64 ], [ %109, %103 ]
  %116 = getelementptr inbounds %struct.skb_shared_info, ptr %115, i32 0, i32 6
  %117 = load ptr, ptr %116, align 8
  %118 = icmp eq ptr %117, null
  br i1 %118, label %134, label %119

119:                                              ; preds = %131, %114
  %120 = phi ptr [ %132, %131 ], [ %117, %114 ]
  %121 = getelementptr inbounds %struct.sk_buff, ptr %120, i32 0, i32 19
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %121) #21, !srcloc !16
  %122 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %121, ptr %121, i32 1, ptr elementtype(i32) %121) #21, !srcloc !37
  %123 = extractvalue { i32, i32, i32 } %122, 0
  %124 = icmp eq i32 %123, 0
  br i1 %124, label %129, label %125, !prof !12

125:                                              ; preds = %119
  %126 = add i32 %123, 1
  %127 = or i32 %126, %123
  %128 = icmp sgt i32 %127, -1
  br i1 %128, label %131, label %129, !prof !13

129:                                              ; preds = %125, %119
  %130 = phi i32 [ 2, %119 ], [ 1, %125 ]
  tail call void @refcount_warn_saturate(ptr noundef %121, i32 noundef %130) #21
  br label %131

131:                                              ; preds = %129, %125
  %132 = load ptr, ptr %120, align 8
  %133 = icmp eq ptr %132, null
  br i1 %133, label %134, label %119

134:                                              ; preds = %131, %114
  tail call fastcc void @skb_release_data(ptr noundef %0) #21
  br label %150

135:                                              ; preds = %56, %37
  %136 = load ptr, ptr %12, align 8
  %137 = and i8 %53, 32
  %138 = icmp eq i8 %137, 0
  br i1 %138, label %149, label %139

139:                                              ; preds = %135
  %140 = icmp sgt i8 %53, -1
  br i1 %140, label %148, label %141

141:                                              ; preds = %139
  %142 = load ptr, ptr @mem_map, align 4
  %143 = ptrtoint ptr %136 to i32
  %144 = add i32 %143, 1073741824
  %145 = lshr i32 %144, 12
  %146 = getelementptr %struct.page, ptr %142, i32 %145
  %147 = tail call zeroext i1 @page_pool_return_skb_page(ptr noundef %146) #21
  br i1 %147, label %150, label %148

148:                                              ; preds = %141, %139
  tail call void @page_frag_free(ptr noundef %136) #21
  br label %150

149:                                              ; preds = %135
  tail call void @kfree(ptr noundef %136) #21
  br label %150

150:                                              ; preds = %149, %148, %141, %134
  store ptr %38, ptr %12, align 8
  store ptr %38, ptr %41, align 4
  %151 = load i8, ptr %18, align 2
  store ptr %46, ptr %10, align 4
  %152 = load i32, ptr %4, align 8
  %153 = load i32, ptr %6, align 4
  %154 = sub i32 %152, %153
  %155 = getelementptr i8, ptr %38, i32 %154
  %156 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 14
  store ptr %155, ptr %156, align 8
  %157 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 8
  store i16 0, ptr %157, align 2
  %158 = and i8 %151, -36
  store i8 %158, ptr %18, align 2
  %159 = getelementptr inbounds %struct.skb_shared_info, ptr %46, i32 0, i32 10
  store volatile i32 1, ptr %159, align 4
  br label %373

160:                                              ; preds = %3
  %161 = getelementptr inbounds %struct.skb_shared_info, ptr %11, i32 0, i32 2
  %162 = load i8, ptr %161, align 2
  %163 = zext i8 %162 to i32
  %164 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 11
  %165 = load i8, ptr %164, align 2
  %166 = and i8 %165, 64
  %167 = zext i8 %166 to i32
  %168 = shl nuw nsw i32 %167, 11
  %169 = or i32 %168, %2
  %170 = add i32 %14, 319
  %171 = sub i32 %170, %15
  %172 = and i32 %171, -64
  %173 = or i32 %169, 532480
  %174 = tail call ptr @llvm.returnaddress(i32 0) #21
  %175 = ptrtoint ptr %174 to i32
  %176 = tail call ptr @__kmalloc_track_caller(i32 noundef %172, i32 noundef %173, i32 noundef %175) #21
  %177 = icmp eq ptr %176, null
  br i1 %177, label %178, label %183

178:                                              ; preds = %160
  %179 = tail call zeroext i1 @gfp_pfmemalloc_allowed(i32 noundef %169) #21
  br i1 %179, label %180, label %373

180:                                              ; preds = %178
  %181 = tail call ptr @__kmalloc_track_caller(i32 noundef %172, i32 noundef %169, i32 noundef %175) #21
  %182 = icmp eq ptr %181, null
  br i1 %182, label %373, label %183

183:                                              ; preds = %180, %160
  %184 = phi ptr [ %181, %180 ], [ %176, %160 ]
  %185 = tail call i32 @ksize(ptr noundef nonnull %184) #21
  %186 = add i32 %185, -256
  %187 = getelementptr i8, ptr %184, i32 %186
  %188 = load ptr, ptr %10, align 4
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 8 dereferenceable(40) %187, ptr noundef align 8 dereferenceable(40) %188, i32 40, i1 false) #21
  %189 = icmp eq ptr %0, null
  br i1 %189, label %209, label %190

190:                                              ; preds = %183
  %191 = load ptr, ptr %10, align 4
  %192 = load i8, ptr %191, align 8
  %193 = and i8 %192, 1
  %194 = icmp eq i8 %193, 0
  br i1 %194, label %209, label %195

195:                                              ; preds = %190
  %196 = getelementptr inbounds %struct.skb_shared_info, ptr %191, i32 0, i32 11
  %197 = load ptr, ptr %196, align 4
  %198 = icmp eq ptr %197, null
  br i1 %198, label %209, label %199, !prof !13

199:                                              ; preds = %195
  %200 = ptrtoint ptr %197 to i32
  %201 = and i32 %200, 1
  %202 = icmp eq i32 %201, 0
  br i1 %202, label %203, label %206

203:                                              ; preds = %199
  %204 = load ptr, ptr %197, align 4
  %205 = icmp eq ptr %204, @msg_zerocopy_callback
  br i1 %205, label %209, label %206

206:                                              ; preds = %203, %199
  %207 = tail call i32 @skb_copy_ubufs(ptr noundef nonnull %0, i32 noundef %169) #21
  %208 = icmp eq i32 %207, 0
  br i1 %208, label %209, label %215

209:                                              ; preds = %206, %203, %195, %190, %183
  %210 = icmp eq i8 %162, 0
  br i1 %210, label %257, label %211

211:                                              ; preds = %209
  %212 = getelementptr inbounds %struct.skb_shared_info, ptr %187, i32 0, i32 12
  %213 = getelementptr inbounds %struct.bio_vec, ptr %212, i32 0, i32 2
  %214 = getelementptr inbounds %struct.bio_vec, ptr %212, i32 0, i32 1
  br label %216

215:                                              ; preds = %206
  tail call void @kfree(ptr noundef nonnull %184) #21
  br label %373

216:                                              ; preds = %253, %211
  %217 = phi i32 [ 0, %211 ], [ %254, %253 ]
  %218 = phi i32 [ 0, %211 ], [ %255, %253 ]
  %219 = phi i32 [ %8, %211 ], [ %223, %253 ]
  %220 = load ptr, ptr %10, align 4
  %221 = getelementptr %struct.skb_shared_info, ptr %220, i32 0, i32 12, i32 %218, i32 1
  %222 = load i32, ptr %221, align 4
  %223 = add i32 %222, %219
  %224 = icmp ugt i32 %223, %1
  br i1 %224, label %225, label %253

225:                                              ; preds = %216
  %226 = getelementptr %struct.skb_shared_info, ptr %220, i32 0, i32 12, i32 %218
  %227 = getelementptr [17 x %struct.bio_vec], ptr %212, i32 0, i32 %217
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(12) %227, ptr noundef align 4 dereferenceable(12) %226, i32 12, i1 false) #21
  %228 = icmp ult i32 %219, %1
  br i1 %228, label %229, label %235

229:                                              ; preds = %225
  %230 = sub i32 %1, %219
  %231 = load i32, ptr %213, align 4
  %232 = add i32 %231, %230
  store i32 %232, ptr %213, align 4
  %233 = load i32, ptr %214, align 4
  %234 = sub i32 %233, %230
  store i32 %234, ptr %214, align 4
  br label %235

235:                                              ; preds = %229, %225
  %236 = load ptr, ptr %10, align 4
  %237 = getelementptr %struct.skb_shared_info, ptr %236, i32 0, i32 12, i32 %218
  %238 = load ptr, ptr %237, align 4
  %239 = getelementptr inbounds %struct.page, ptr %238, i32 0, i32 1
  %240 = load volatile i32, ptr %239, align 4
  %241 = and i32 %240, 1
  %242 = icmp eq i32 %241, 0
  br i1 %242, label %245, label %243, !prof !13

243:                                              ; preds = %235
  %244 = add i32 %240, -1
  br label %247

245:                                              ; preds = %235
  %246 = ptrtoint ptr %238 to i32
  br label %247

247:                                              ; preds = %245, %243
  %248 = phi i32 [ %244, %243 ], [ %246, %245 ]
  %249 = inttoptr i32 %248 to ptr
  %250 = getelementptr inbounds %struct.page, ptr %249, i32 0, i32 3
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %250) #21, !srcloc !16
  %251 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %250, ptr %250, i32 1, ptr elementtype(i32) %250) #21, !srcloc !38
  %252 = add i32 %217, 1
  br label %253

253:                                              ; preds = %247, %216
  %254 = phi i32 [ %252, %247 ], [ %217, %216 ]
  %255 = add nuw nsw i32 %218, 1
  %256 = icmp eq i32 %255, %163
  br i1 %256, label %257, label %216

257:                                              ; preds = %253, %209
  %258 = phi i32 [ %8, %209 ], [ %223, %253 ]
  %259 = phi i32 [ 0, %209 ], [ %254, %253 ]
  %260 = trunc i32 %259 to i8
  %261 = getelementptr inbounds %struct.skb_shared_info, ptr %187, i32 0, i32 2
  store i8 %260, ptr %261, align 2
  %262 = load ptr, ptr %10, align 4
  %263 = getelementptr inbounds %struct.skb_shared_info, ptr %262, i32 0, i32 6
  %264 = load ptr, ptr %263, align 8
  %265 = icmp eq ptr %264, null
  br i1 %265, label %281, label %266

266:                                              ; preds = %278, %257
  %267 = phi ptr [ %279, %278 ], [ %264, %257 ]
  %268 = getelementptr inbounds %struct.sk_buff, ptr %267, i32 0, i32 19
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %268) #21, !srcloc !16
  %269 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %268, ptr %268, i32 1, ptr elementtype(i32) %268) #21, !srcloc !37
  %270 = extractvalue { i32, i32, i32 } %269, 0
  %271 = icmp eq i32 %270, 0
  br i1 %271, label %276, label %272, !prof !12

272:                                              ; preds = %266
  %273 = add i32 %270, 1
  %274 = or i32 %273, %270
  %275 = icmp sgt i32 %274, -1
  br i1 %275, label %278, label %276, !prof !13

276:                                              ; preds = %272, %266
  %277 = phi i32 [ 2, %266 ], [ 1, %272 ]
  tail call void @refcount_warn_saturate(ptr noundef %268, i32 noundef %277) #21
  br label %278

278:                                              ; preds = %276, %272
  %279 = load ptr, ptr %267, align 8
  %280 = icmp eq ptr %279, null
  br i1 %280, label %281, label %266

281:                                              ; preds = %278, %257
  %282 = icmp eq i32 %259, 0
  br i1 %282, label %283, label %364

283:                                              ; preds = %281
  %284 = sub i32 %1, %258
  %285 = getelementptr inbounds %struct.skb_shared_info, ptr %187, i32 0, i32 6
  %286 = load ptr, ptr %285, align 8
  br label %287

287:                                              ; preds = %297, %283
  %288 = phi i32 [ %284, %283 ], [ %298, %297 ]
  %289 = phi ptr [ %286, %283 ], [ %299, %297 ]
  %290 = icmp eq ptr %289, null
  br i1 %290, label %291, label %293

291:                                              ; preds = %287
  %292 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.24, i32 noundef %288) #22
  br label %357

293:                                              ; preds = %287
  %294 = getelementptr inbounds %struct.sk_buff, ptr %289, i32 0, i32 5
  %295 = load i32, ptr %294, align 8
  %296 = icmp ult i32 %288, %295
  br i1 %296, label %301, label %297

297:                                              ; preds = %293
  %298 = sub i32 %288, %295
  %299 = load ptr, ptr %289, align 8
  %300 = icmp eq i32 %298, 0
  br i1 %300, label %344, label %287

301:                                              ; preds = %293
  %302 = getelementptr inbounds %struct.sk_buff, ptr %289, i32 0, i32 19
  %303 = load volatile i32, ptr %302, align 4
  %304 = icmp eq i32 %303, 1
  br i1 %304, label %312, label %305

305:                                              ; preds = %301
  %306 = tail call ptr @skb_clone(ptr noundef nonnull %289, i32 noundef %169) #21
  %307 = icmp eq ptr %306, null
  br i1 %307, label %357, label %308

308:                                              ; preds = %305
  %309 = load ptr, ptr %289, align 8
  %310 = tail call fastcc i32 @pskb_carve(ptr noundef nonnull %306, i32 noundef %288, i32 noundef %169) #21
  %311 = icmp slt i32 %310, 0
  br i1 %311, label %315, label %344

312:                                              ; preds = %301
  %313 = tail call fastcc i32 @pskb_carve(ptr noundef nonnull %289, i32 noundef %288, i32 noundef %169) #21
  %314 = icmp slt i32 %313, 0
  br i1 %314, label %357, label %344

315:                                              ; preds = %308
  %316 = getelementptr inbounds %struct.sk_buff, ptr %306, i32 0, i32 19
  %317 = load volatile i32, ptr %316, align 4
  %318 = icmp eq i32 %317, 1
  tail call void asm sideeffect "dmb ish", "~{memory}"() #21
  br i1 %318, label %327, label %319, !prof !13

319:                                              ; preds = %315
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %316) #21, !srcloc !16
  %320 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %316, ptr %316, i32 1, ptr elementtype(i32) %316) #21, !srcloc !19
  %321 = extractvalue { i32, i32, i32 } %320, 0
  %322 = icmp eq i32 %321, 1
  br i1 %322, label %326, label %323

323:                                              ; preds = %319
  %324 = icmp sgt i32 %321, 0
  br i1 %324, label %357, label %325, !prof !13

325:                                              ; preds = %323
  tail call void @refcount_warn_saturate(ptr noundef %316, i32 noundef 3) #21
  br label %357

326:                                              ; preds = %319
  tail call void asm sideeffect "dmb ish", "~{memory}"() #21, !srcloc !20
  br label %327

327:                                              ; preds = %326, %315
  %328 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_kfree_skb, i32 0, i32 1), align 4
  %329 = icmp sgt i32 %328, 0
  br i1 %329, label %330, label %343

330:                                              ; preds = %327
  %331 = tail call ptr @llvm.thread.pointer() #21
  %332 = getelementptr inbounds %struct.thread_info, ptr %331, i32 0, i32 2
  %333 = load i32, ptr %332, align 8
  %334 = lshr i32 %333, 5
  %335 = getelementptr i32, ptr @__cpu_online_mask, i32 %334
  %336 = load volatile i32, ptr %335, align 4
  %337 = and i32 %333, 31
  %338 = shl nuw i32 1, %337
  %339 = and i32 %338, %336
  %340 = icmp eq i32 %339, 0
  br i1 %340, label %343, label %341

341:                                              ; preds = %330
  tail call void asm sideeffect "", "~{memory}"() #21, !srcloc !21
  %342 = tail call i32 @__traceiter_kfree_skb(ptr noundef null, ptr noundef nonnull %306, ptr noundef %174, i32 noundef 0) #21
  tail call void asm sideeffect "", "~{memory}"() #21, !srcloc !22
  br label %343

343:                                              ; preds = %341, %330, %327
  tail call void @__kfree_skb(ptr noundef nonnull %306) #21
  br label %357

344:                                              ; preds = %312, %308, %297
  %345 = phi ptr [ %306, %308 ], [ null, %312 ], [ null, %297 ]
  %346 = phi ptr [ %309, %308 ], [ %289, %312 ], [ %299, %297 ]
  %347 = load ptr, ptr %285, align 8
  %348 = icmp eq ptr %347, %346
  br i1 %348, label %354, label %349

349:                                              ; preds = %349, %344
  %350 = phi ptr [ %352, %349 ], [ %347, %344 ]
  %351 = load ptr, ptr %350, align 8
  store ptr %351, ptr %285, align 8
  tail call void @consume_skb(ptr noundef %350) #21
  %352 = load ptr, ptr %285, align 8
  %353 = icmp eq ptr %352, %346
  br i1 %353, label %354, label %349

354:                                              ; preds = %349, %344
  %355 = icmp eq ptr %345, null
  br i1 %355, label %364, label %356

356:                                              ; preds = %354
  store ptr %346, ptr %345, align 8
  store ptr %345, ptr %285, align 8
  br label %364

357:                                              ; preds = %343, %325, %323, %312, %305, %291
  %358 = load ptr, ptr %10, align 4
  %359 = getelementptr inbounds %struct.skb_shared_info, ptr %358, i32 0, i32 6
  %360 = load ptr, ptr %359, align 8
  %361 = icmp eq ptr %360, null
  br i1 %361, label %363, label %362

362:                                              ; preds = %357
  tail call void @kfree_skb_list(ptr noundef nonnull %360) #21
  br label %363

363:                                              ; preds = %362, %357
  tail call void @kfree(ptr noundef nonnull %184) #21
  br label %373

364:                                              ; preds = %356, %354, %281
  tail call fastcc void @skb_release_data(ptr noundef %0) #21
  store ptr %184, ptr %12, align 8
  %365 = load i8, ptr %164, align 2
  %366 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 17
  store ptr %184, ptr %366, align 4
  store ptr %187, ptr %10, align 4
  %367 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 14
  store ptr %184, ptr %367, align 8
  %368 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 8
  store i16 0, ptr %368, align 2
  %369 = and i8 %365, -36
  store i8 %369, ptr %164, align 2
  %370 = load i32, ptr %4, align 8
  %371 = sub i32 %370, %1
  store i32 %371, ptr %4, align 8
  store i32 %371, ptr %6, align 4
  %372 = getelementptr inbounds %struct.skb_shared_info, ptr %187, i32 0, i32 10
  store volatile i32 1, ptr %372, align 4
  br label %373

373:                                              ; preds = %364, %363, %215, %180, %178, %150, %89, %34, %32
  %374 = phi i32 [ -12, %89 ], [ 0, %150 ], [ -12, %34 ], [ -12, %32 ], [ -12, %215 ], [ -12, %363 ], [ 0, %364 ], [ -12, %180 ], [ -12, %178 ]
  ret i32 %374
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @__skb_ext_alloc(i32 noundef %0) local_unnamed_addr #0 {
  %2 = load ptr, ptr @skbuff_ext_cache, align 4
  %3 = tail call noalias align 8 ptr @kmem_cache_alloc(ptr noundef %2, i32 noundef %0) #21
  %4 = icmp eq ptr %3, null
  br i1 %4, label %7, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.skb_ext, ptr %3, i32 0, i32 1
  store i8 0, ptr %6, align 4
  store volatile i32 1, ptr %3, align 8
  br label %7

7:                                                ; preds = %5, %1
  ret ptr %3
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @__skb_ext_set(ptr nocapture noundef %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 12
  %5 = load i8, ptr %4, align 1
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %10, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 20
  %9 = load ptr, ptr %8, align 8
  tail call void @__skb_ext_put(ptr noundef %9) #21
  br label %10

10:                                               ; preds = %7, %3
  %11 = getelementptr inbounds %struct.skb_ext, ptr %2, i32 0, i32 2
  store i8 8, ptr %11, align 1
  %12 = getelementptr %struct.skb_ext, ptr %2, i32 0, i32 1, i32 %1
  store i8 1, ptr %12, align 1
  %13 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 20
  store ptr %2, ptr %13, align 8
  %14 = shl nuw i32 1, %1
  %15 = trunc i32 %14 to i8
  store i8 %15, ptr %4, align 1
  %16 = load i8, ptr %12, align 1
  %17 = zext i8 %16 to i32
  %18 = shl nuw nsw i32 %17, 3
  %19 = getelementptr i8, ptr %2, i32 %18
  ret ptr %19
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @skb_ext_add(ptr nocapture noundef %0, i32 noundef %1) #0 {
  %3 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 12
  %4 = load i8, ptr %3, align 1
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %59, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 20
  %8 = load ptr, ptr %7, align 8
  %9 = load volatile i32, ptr %8, align 4
  %10 = icmp eq i32 %9, 1
  br i1 %10, label %49, label %11

11:                                               ; preds = %6
  %12 = load ptr, ptr @skbuff_ext_cache, align 4
  %13 = tail call noalias align 8 ptr @kmem_cache_alloc(ptr noundef %12, i32 noundef 2592) #21
  %14 = icmp eq ptr %13, null
  br i1 %14, label %86, label %15

15:                                               ; preds = %11
  %16 = getelementptr inbounds %struct.skb_ext, ptr %8, i32 0, i32 2
  %17 = load i8, ptr %16, align 1
  %18 = zext i8 %17 to i32
  %19 = shl nuw nsw i32 %18, 3
  tail call void @llvm.memcpy.p0.p0.i32(ptr nonnull align 8 %13, ptr align 8 %8, i32 %19, i1 false) #21
  store volatile i32 1, ptr %13, align 8
  %20 = and i8 %4, 1
  %21 = icmp eq i8 %20, 0
  br i1 %21, label %48, label %22

22:                                               ; preds = %15
  %23 = getelementptr %struct.skb_ext, ptr %8, i32 0, i32 1, i32 0
  %24 = load i8, ptr %23, align 1
  %25 = zext i8 %24 to i32
  %26 = shl nuw nsw i32 %25, 3
  %27 = getelementptr i8, ptr %8, i32 %26
  %28 = load i32, ptr %27, align 4
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %48, label %30

30:                                               ; preds = %44, %22
  %31 = phi i32 [ %45, %44 ], [ 0, %22 ]
  %32 = getelementptr %struct.sec_path, ptr %27, i32 0, i32 2, i32 %31
  %33 = load ptr, ptr %32, align 4
  %34 = getelementptr inbounds %struct.xfrm_state, ptr %33, i32 0, i32 5
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %34) #21, !srcloc !16
  %35 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %34, ptr %34, i32 1, ptr elementtype(i32) %34) #21, !srcloc !37
  %36 = extractvalue { i32, i32, i32 } %35, 0
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %42, label %38, !prof !12

38:                                               ; preds = %30
  %39 = add i32 %36, 1
  %40 = or i32 %39, %36
  %41 = icmp sgt i32 %40, -1
  br i1 %41, label %44, label %42, !prof !13

42:                                               ; preds = %38, %30
  %43 = phi i32 [ 2, %30 ], [ 1, %38 ]
  tail call void @refcount_warn_saturate(ptr noundef %34, i32 noundef %43) #21
  br label %44

44:                                               ; preds = %42, %38
  %45 = add nuw i32 %31, 1
  %46 = load i32, ptr %27, align 4
  %47 = icmp ult i32 %45, %46
  br i1 %47, label %30, label %48

48:                                               ; preds = %44, %22, %15
  tail call void @__skb_ext_put(ptr noundef %8) #21
  br label %49

49:                                               ; preds = %48, %6
  %50 = phi ptr [ %13, %48 ], [ %8, %6 ]
  %51 = icmp eq ptr %50, null
  br i1 %51, label %86, label %52

52:                                               ; preds = %49
  %53 = getelementptr %struct.skb_ext, ptr %50, i32 0, i32 1, i32 %1
  %54 = load i8, ptr %53, align 1
  %55 = icmp eq i8 %54, 0
  br i1 %55, label %56, label %71

56:                                               ; preds = %52
  %57 = getelementptr inbounds %struct.skb_ext, ptr %50, i32 0, i32 2
  %58 = load i8, ptr %57, align 1
  br label %65

59:                                               ; preds = %2
  %60 = load ptr, ptr @skbuff_ext_cache, align 4
  %61 = tail call noalias align 8 ptr @kmem_cache_alloc(ptr noundef %60, i32 noundef 2592) #21
  %62 = icmp eq ptr %61, null
  br i1 %62, label %86, label %63

63:                                               ; preds = %59
  %64 = getelementptr inbounds %struct.skb_ext, ptr %61, i32 0, i32 1
  store i8 0, ptr %64, align 4
  store volatile i32 1, ptr %61, align 8
  br label %65

65:                                               ; preds = %63, %56
  %66 = phi ptr [ %50, %56 ], [ %61, %63 ]
  %67 = phi i8 [ %58, %56 ], [ 1, %63 ]
  %68 = add i8 %67, 7
  %69 = getelementptr inbounds %struct.skb_ext, ptr %66, i32 0, i32 2
  store i8 %68, ptr %69, align 1
  %70 = getelementptr %struct.skb_ext, ptr %66, i32 0, i32 1, i32 %1
  store i8 %67, ptr %70, align 1
  br label %71

71:                                               ; preds = %65, %52
  %72 = phi ptr [ %50, %52 ], [ %66, %65 ]
  %73 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 13, i32 0, i32 3
  %74 = load i16, ptr %73, align 2
  %75 = or i16 %74, 16384
  store i16 %75, ptr %73, align 2
  %76 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 20
  store ptr %72, ptr %76, align 8
  %77 = shl nuw i32 1, %1
  %78 = load i8, ptr %3, align 1
  %79 = trunc i32 %77 to i8
  %80 = or i8 %78, %79
  store i8 %80, ptr %3, align 1
  %81 = getelementptr %struct.skb_ext, ptr %72, i32 0, i32 1, i32 %1
  %82 = load i8, ptr %81, align 1
  %83 = zext i8 %82 to i32
  %84 = shl nuw nsw i32 %83, 3
  %85 = getelementptr i8, ptr %72, i32 %84
  br label %86

86:                                               ; preds = %71, %59, %49, %11
  %87 = phi ptr [ %85, %71 ], [ null, %49 ], [ null, %11 ], [ null, %59 ]
  ret ptr %87
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @__skb_ext_del(ptr nocapture noundef %0, i32 noundef %1) #0 {
  %3 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 20
  %4 = load ptr, ptr %3, align 8
  %5 = shl nuw i32 1, %1
  %6 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 12
  %7 = load i8, ptr %6, align 1
  %8 = trunc i32 %5 to i8
  %9 = xor i8 %8, -1
  %10 = and i8 %7, %9
  store i8 %10, ptr %6, align 1
  %11 = icmp eq i8 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %2
  store ptr null, ptr %3, align 8
  tail call void @__skb_ext_put(ptr noundef %4)
  br label %43

13:                                               ; preds = %2
  %14 = icmp eq i32 %1, 0
  br i1 %14, label %15, label %43

15:                                               ; preds = %13
  %16 = load volatile i32, ptr %4, align 4
  %17 = icmp eq i32 %16, 1
  br i1 %17, label %18, label %43

18:                                               ; preds = %15
  %19 = getelementptr %struct.skb_ext, ptr %4, i32 0, i32 1, i32 0
  %20 = load i8, ptr %19, align 1
  %21 = zext i8 %20 to i32
  %22 = shl nuw nsw i32 %21, 3
  %23 = getelementptr i8, ptr %4, i32 %22
  %24 = load i32, ptr %23, align 4
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %42, label %26

26:                                               ; preds = %38, %18
  %27 = phi i32 [ %39, %38 ], [ 0, %18 ]
  %28 = getelementptr %struct.sec_path, ptr %23, i32 0, i32 2, i32 %27
  %29 = load ptr, ptr %28, align 4
  %30 = getelementptr inbounds %struct.xfrm_state, ptr %29, i32 0, i32 5
  tail call void asm sideeffect "dmb ish", "~{memory}"() #21, !srcloc !18
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %30) #21, !srcloc !16
  %31 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %30, ptr %30, i32 1, ptr elementtype(i32) %30) #21, !srcloc !19
  %32 = extractvalue { i32, i32, i32 } %31, 0
  %33 = icmp eq i32 %32, 1
  br i1 %33, label %37, label %34

34:                                               ; preds = %26
  %35 = icmp sgt i32 %32, 0
  br i1 %35, label %38, label %36, !prof !13

36:                                               ; preds = %34
  tail call void @refcount_warn_saturate(ptr noundef %30, i32 noundef 3) #21
  br label %38

37:                                               ; preds = %26
  tail call void asm sideeffect "dmb ish", "~{memory}"() #21, !srcloc !20
  tail call void @__xfrm_state_destroy(ptr noundef %29, i1 noundef zeroext false) #21
  br label %38

38:                                               ; preds = %37, %36, %34
  %39 = add nuw i32 %27, 1
  %40 = load i32, ptr %23, align 4
  %41 = icmp ult i32 %39, %40
  br i1 %41, label %26, label %42

42:                                               ; preds = %38, %18
  store i32 0, ptr %23, align 4
  br label %43

43:                                               ; preds = %42, %15, %13, %12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @__skb_ext_put(ptr noundef %0) #0 {
  %2 = load volatile i32, ptr %0, align 4
  %3 = icmp eq i32 %2, 1
  br i1 %3, label %12, label %4

4:                                                ; preds = %1
  tail call void asm sideeffect "dmb ish", "~{memory}"() #21, !srcloc !18
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %0) #21, !srcloc !16
  %5 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %0, ptr %0, i32 1, ptr elementtype(i32) %0) #21, !srcloc !19
  %6 = extractvalue { i32, i32, i32 } %5, 0
  %7 = icmp eq i32 %6, 1
  br i1 %7, label %11, label %8

8:                                                ; preds = %4
  %9 = icmp sgt i32 %6, 0
  br i1 %9, label %40, label %10, !prof !13

10:                                               ; preds = %8
  tail call void @refcount_warn_saturate(ptr noundef %0, i32 noundef 3) #21
  br label %40

11:                                               ; preds = %4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #21, !srcloc !20
  br label %12

12:                                               ; preds = %11, %1
  %13 = getelementptr %struct.skb_ext, ptr %0, i32 0, i32 1, i32 0
  %14 = load i8, ptr %13, align 1
  %15 = icmp eq i8 %14, 0
  br i1 %15, label %38, label %16

16:                                               ; preds = %12
  %17 = zext i8 %14 to i32
  %18 = shl nuw nsw i32 %17, 3
  %19 = getelementptr i8, ptr %0, i32 %18
  %20 = load i32, ptr %19, align 4
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %38, label %22

22:                                               ; preds = %34, %16
  %23 = phi i32 [ %35, %34 ], [ 0, %16 ]
  %24 = getelementptr %struct.sec_path, ptr %19, i32 0, i32 2, i32 %23
  %25 = load ptr, ptr %24, align 4
  %26 = getelementptr inbounds %struct.xfrm_state, ptr %25, i32 0, i32 5
  tail call void asm sideeffect "dmb ish", "~{memory}"() #21, !srcloc !18
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %26) #21, !srcloc !16
  %27 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %26, ptr %26, i32 1, ptr elementtype(i32) %26) #21, !srcloc !19
  %28 = extractvalue { i32, i32, i32 } %27, 0
  %29 = icmp eq i32 %28, 1
  br i1 %29, label %33, label %30

30:                                               ; preds = %22
  %31 = icmp sgt i32 %28, 0
  br i1 %31, label %34, label %32, !prof !13

32:                                               ; preds = %30
  tail call void @refcount_warn_saturate(ptr noundef %26, i32 noundef 3) #21
  br label %34

33:                                               ; preds = %22
  tail call void asm sideeffect "dmb ish", "~{memory}"() #21, !srcloc !20
  tail call void @__xfrm_state_destroy(ptr noundef %25, i1 noundef zeroext false) #21
  br label %34

34:                                               ; preds = %33, %32, %30
  %35 = add nuw i32 %23, 1
  %36 = load i32, ptr %19, align 4
  %37 = icmp ult i32 %35, %36
  br i1 %37, label %22, label %38

38:                                               ; preds = %34, %16, %12
  %39 = load ptr, ptr @skbuff_ext_cache, align 4
  tail call void @kmem_cache_free(ptr noundef %39, ptr noundef %0) #21
  br label %40

40:                                               ; preds = %38, %10, %8
  ret void
}

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #20

; Function Attrs: null_pointer_is_valid
declare dso_local void @__local_bh_enable_ip(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kmem_cache_alloc_bulk(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__kmalloc_track_caller(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @gfp_pfmemalloc_allowed(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @page_frag_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dst_release(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_kfree_skb(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__kmap_local_page_prot(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kunmap_local_indexed(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_consume_skb(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kmem_cache_free_bulk(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dev_kfree_skb_any(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.thread.pointer() #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__alloc_pages(i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__put_page(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @page_pool_return_skb_page(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__sock_wfree(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @tcp_wfree(ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc zeroext i1 @__splice_segment(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr nocapture noundef %3, ptr nocapture noundef %4, ptr nocapture noundef %5, i1 noundef zeroext %6, ptr noundef %7) unnamed_addr #0 {
  %9 = load i32, ptr %4, align 4
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %122, label %11

11:                                               ; preds = %8
  %12 = load i32, ptr %3, align 4
  %13 = icmp ult i32 %12, %2
  br i1 %13, label %16, label %14

14:                                               ; preds = %11
  %15 = sub i32 %12, %2
  store i32 %15, ptr %3, align 4
  br label %122

16:                                               ; preds = %11
  %17 = add i32 %12, %1
  %18 = sub i32 %2, %12
  store i32 0, ptr %3, align 4
  %19 = getelementptr inbounds %struct.splice_pipe_desc, ptr %5, i32 0, i32 2
  %20 = getelementptr inbounds %struct.sock, ptr %7, i32 0, i32 41
  %21 = getelementptr inbounds %struct.sock, ptr %7, i32 0, i32 37
  %22 = getelementptr inbounds %struct.splice_pipe_desc, ptr %5, i32 0, i32 1
  %23 = load i32, ptr %4, align 4
  br label %24

24:                                               ; preds = %110, %16
  %25 = phi i32 [ %23, %16 ], [ %118, %110 ]
  %26 = phi i32 [ %18, %16 ], [ %116, %110 ]
  %27 = phi i32 [ %17, %16 ], [ %115, %110 ]
  %28 = tail call i32 @llvm.umin.i32(i32 %25, i32 %26)
  %29 = load i32, ptr %19, align 4
  %30 = icmp eq i32 %29, 17
  br i1 %30, label %122, label %31, !prof !12

31:                                               ; preds = %24
  br i1 %6, label %32, label %66

32:                                               ; preds = %31
  %33 = load i32, ptr %20, align 8
  %34 = and i32 %33, 132224
  %35 = icmp eq i32 %34, 1152
  br i1 %35, label %36, label %39

36:                                               ; preds = %32
  %37 = tail call ptr @llvm.thread.pointer() #21
  %38 = getelementptr inbounds %struct.task_struct, ptr %37, i32 0, i32 139
  br label %39

39:                                               ; preds = %36, %32
  %40 = phi ptr [ %38, %36 ], [ %21, %32 ]
  %41 = tail call zeroext i1 @sk_page_frag_refill(ptr noundef %7, ptr noundef %40) #21
  br i1 %41, label %42, label %122

42:                                               ; preds = %39
  %43 = getelementptr inbounds %struct.page_frag, ptr %40, i32 0, i32 2
  %44 = load i16, ptr %43, align 2
  %45 = zext i16 %44 to i32
  %46 = getelementptr inbounds %struct.page_frag, ptr %40, i32 0, i32 1
  %47 = load i16, ptr %46, align 4
  %48 = zext i16 %47 to i32
  %49 = sub nsw i32 %45, %48
  %50 = tail call i32 @llvm.umin.i32(i32 %28, i32 %49) #21
  %51 = load ptr, ptr %40, align 4
  %52 = tail call ptr @page_address(ptr noundef %51) #21
  %53 = load i16, ptr %46, align 4
  %54 = zext i16 %53 to i32
  %55 = getelementptr i8, ptr %52, i32 %54
  %56 = tail call ptr @page_address(ptr noundef %0) #21
  %57 = getelementptr i8, ptr %56, i32 %27
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 1 %55, ptr align 1 %57, i32 %50, i1 false) #21
  %58 = load i16, ptr %46, align 4
  %59 = trunc i32 %50 to i16
  %60 = add i16 %58, %59
  store i16 %60, ptr %46, align 4
  %61 = load ptr, ptr %40, align 4
  %62 = icmp eq ptr %61, null
  br i1 %62, label %122, label %63

63:                                               ; preds = %42
  %64 = zext i16 %58 to i32
  %65 = load i32, ptr %19, align 4
  br label %66

66:                                               ; preds = %63, %31
  %67 = phi i32 [ %50, %63 ], [ %28, %31 ]
  %68 = phi i32 [ %65, %63 ], [ %29, %31 ]
  %69 = phi i32 [ %64, %63 ], [ %27, %31 ]
  %70 = phi ptr [ %61, %63 ], [ %0, %31 ]
  %71 = icmp eq i32 %68, 0
  br i1 %71, label %86, label %72

72:                                               ; preds = %66
  %73 = load ptr, ptr %5, align 4
  %74 = add i32 %68, -1
  %75 = getelementptr ptr, ptr %73, i32 %74
  %76 = load ptr, ptr %75, align 4
  %77 = icmp eq ptr %76, %70
  br i1 %77, label %78, label %86

78:                                               ; preds = %72
  %79 = load ptr, ptr %22, align 4
  %80 = getelementptr %struct.partial_page, ptr %79, i32 %74
  %81 = load i32, ptr %80, align 4
  %82 = getelementptr %struct.partial_page, ptr %79, i32 %74, i32 1
  %83 = load i32, ptr %82, align 4
  %84 = add i32 %83, %81
  %85 = icmp eq i32 %84, %69
  br i1 %85, label %110, label %86

86:                                               ; preds = %78, %72, %66
  %87 = getelementptr inbounds %struct.page, ptr %70, i32 0, i32 1
  %88 = load volatile i32, ptr %87, align 4
  %89 = and i32 %88, 1
  %90 = icmp eq i32 %89, 0
  br i1 %90, label %93, label %91, !prof !13

91:                                               ; preds = %86
  %92 = add i32 %88, -1
  br label %95

93:                                               ; preds = %86
  %94 = ptrtoint ptr %70 to i32
  br label %95

95:                                               ; preds = %93, %91
  %96 = phi i32 [ %92, %91 ], [ %94, %93 ]
  %97 = inttoptr i32 %96 to ptr
  %98 = getelementptr inbounds %struct.page, ptr %97, i32 0, i32 3
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %98) #21, !srcloc !16
  %99 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %98, ptr %98, i32 1, ptr elementtype(i32) %98) #21, !srcloc !38
  %100 = load ptr, ptr %5, align 4
  %101 = load i32, ptr %19, align 4
  %102 = getelementptr ptr, ptr %100, i32 %101
  store ptr %70, ptr %102, align 4
  %103 = load ptr, ptr %22, align 4
  %104 = load i32, ptr %19, align 4
  %105 = getelementptr %struct.partial_page, ptr %103, i32 %104, i32 1
  store i32 %67, ptr %105, align 4
  %106 = load ptr, ptr %22, align 4
  %107 = load i32, ptr %19, align 4
  %108 = getelementptr %struct.partial_page, ptr %106, i32 %107
  store i32 %69, ptr %108, align 4
  %109 = load i32, ptr %19, align 4
  br label %110

110:                                              ; preds = %95, %78
  %111 = phi i32 [ 1, %95 ], [ %67, %78 ]
  %112 = phi i32 [ %109, %95 ], [ %83, %78 ]
  %113 = phi ptr [ %19, %95 ], [ %82, %78 ]
  %114 = add i32 %112, %111
  store i32 %114, ptr %113, align 4
  %115 = add i32 %67, %27
  %116 = sub i32 %26, %67
  %117 = load i32, ptr %4, align 4
  %118 = sub i32 %117, %67
  store i32 %118, ptr %4, align 4
  %119 = icmp ne i32 %117, %67
  %120 = icmp ne i32 %116, 0
  %121 = select i1 %119, i1 %120, i1 false
  br i1 %121, label %24, label %122

122:                                              ; preds = %110, %42, %39, %24, %14, %8
  %123 = phi i1 [ false, %14 ], [ true, %8 ], [ true, %39 ], [ true, %42 ], [ true, %24 ], [ false, %110 ]
  ret i1 %123
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @sk_page_frag_refill(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kernel_sendmsg(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kernel_sendpage(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @warn_crc32c_csum_update(ptr nocapture noundef readnone %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = tail call i32 @net_ratelimit() #21
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %8, label %6

6:                                                ; preds = %3
  %7 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.22, ptr noundef nonnull @__func__.warn_crc32c_csum_update) #22
  br label %8

8:                                                ; preds = %6, %3
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @warn_crc32c_csum_combine(i32 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) #0 {
  %5 = tail call i32 @net_ratelimit() #21
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %9, label %7

7:                                                ; preds = %4
  %8 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.22, ptr noundef nonnull @__func__.warn_crc32c_csum_combine) #22
  br label %9

9:                                                ; preds = %7, %4
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @sk_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_read_lock_bh(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @file_ns_capable(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_read_unlock_bh(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get_with_offset(i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc ptr @skb_checksum_setup_ip(ptr noundef %0, i32 noundef %1, i32 noundef %2) unnamed_addr #0 {
  switch i32 %1, label %129 [
    i32 6, label %4
    i32 17, label %67
  ]

4:                                                ; preds = %3
  %5 = add i32 %2, 20
  %6 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 5
  %7 = load i32, ptr %6, align 8
  %8 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 6
  %9 = load i32, ptr %8, align 4
  %10 = sub i32 %7, %9
  %11 = icmp ult i32 %10, %5
  br i1 %11, label %12, label %23

12:                                               ; preds = %4
  %13 = add i32 %2, 60
  %14 = tail call i32 @llvm.umin.i32(i32 %7, i32 %13) #21
  %15 = sub i32 %14, %10
  %16 = tail call ptr @__pskb_pull_tail(ptr noundef %0, i32 noundef %15) #21
  %17 = icmp eq ptr %16, null
  br i1 %17, label %129, label %18

18:                                               ; preds = %12
  %19 = load i32, ptr %6, align 8
  %20 = load i32, ptr %8, align 4
  %21 = sub i32 %19, %20
  %22 = icmp ult i32 %21, %5
  br i1 %22, label %129, label %23

23:                                               ; preds = %18, %4
  %24 = phi i32 [ %9, %4 ], [ %20, %18 ]
  %25 = phi i32 [ %7, %4 ], [ %19, %18 ]
  %26 = trunc i32 %2 to i16
  %27 = and i32 %2, 65535
  %28 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 17
  %29 = load ptr, ptr %28, align 4
  %30 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 16
  %31 = load ptr, ptr %30, align 8
  %32 = ptrtoint ptr %29 to i32
  %33 = ptrtoint ptr %31 to i32
  %34 = sub i32 %32, %33
  %35 = add i32 %34, %27
  %36 = icmp ugt i32 %35, 65535
  br i1 %36, label %41, label %37, !prof !12

37:                                               ; preds = %23
  %38 = add nuw nsw i32 %27, 18
  %39 = sub i32 %25, %24
  %40 = icmp ugt i32 %38, %39
  br i1 %40, label %41, label %54, !prof !12

41:                                               ; preds = %37, %23
  %42 = tail call i32 @net_ratelimit() #21
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %129, label %44

44:                                               ; preds = %41
  %45 = load ptr, ptr %28, align 4
  %46 = load ptr, ptr %30, align 8
  %47 = ptrtoint ptr %45 to i32
  %48 = ptrtoint ptr %46 to i32
  %49 = sub i32 %47, %48
  %50 = load i32, ptr %6, align 8
  %51 = load i32, ptr %8, align 4
  %52 = sub i32 %50, %51
  %53 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13, i32 noundef %27, i32 noundef 16, i32 noundef %49, i32 noundef %52) #22
  br label %129

54:                                               ; preds = %37
  %55 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 13
  %56 = load i16, ptr %55, align 8
  %57 = or i16 %56, 96
  store i16 %57, ptr %55, align 8
  %58 = trunc i32 %35 to i16
  %59 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 13, i32 0, i32 4
  store i16 %58, ptr %59, align 4
  %60 = getelementptr inbounds %struct.anon.169, ptr %59, i32 0, i32 1
  store i16 16, ptr %60, align 2
  %61 = trunc i32 %34 to i16
  %62 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 13, i32 0, i32 17
  %63 = add i16 %61, %26
  store i16 %63, ptr %62, align 2
  %64 = zext i16 %63 to i32
  %65 = getelementptr i8, ptr %31, i32 %64
  %66 = getelementptr inbounds %struct.tcphdr, ptr %65, i32 0, i32 6
  br label %129

67:                                               ; preds = %3
  %68 = add i32 %2, 8
  %69 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 5
  %70 = load i32, ptr %69, align 8
  %71 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 6
  %72 = load i32, ptr %71, align 4
  %73 = sub i32 %70, %72
  %74 = icmp ult i32 %73, %68
  br i1 %74, label %75, label %85

75:                                               ; preds = %67
  %76 = tail call i32 @llvm.umin.i32(i32 %70, i32 %68) #21
  %77 = sub i32 %76, %73
  %78 = tail call ptr @__pskb_pull_tail(ptr noundef %0, i32 noundef %77) #21
  %79 = icmp eq ptr %78, null
  br i1 %79, label %129, label %80

80:                                               ; preds = %75
  %81 = load i32, ptr %69, align 8
  %82 = load i32, ptr %71, align 4
  %83 = sub i32 %81, %82
  %84 = icmp ult i32 %83, %68
  br i1 %84, label %129, label %85

85:                                               ; preds = %80, %67
  %86 = phi i32 [ %72, %67 ], [ %82, %80 ]
  %87 = phi i32 [ %70, %67 ], [ %81, %80 ]
  %88 = trunc i32 %2 to i16
  %89 = and i32 %2, 65535
  %90 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 17
  %91 = load ptr, ptr %90, align 4
  %92 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 16
  %93 = load ptr, ptr %92, align 8
  %94 = ptrtoint ptr %91 to i32
  %95 = ptrtoint ptr %93 to i32
  %96 = sub i32 %94, %95
  %97 = add i32 %96, %89
  %98 = icmp ugt i32 %97, 65535
  br i1 %98, label %103, label %99, !prof !12

99:                                               ; preds = %85
  %100 = add nuw nsw i32 %89, 8
  %101 = sub i32 %87, %86
  %102 = icmp ugt i32 %100, %101
  br i1 %102, label %103, label %116, !prof !12

103:                                              ; preds = %99, %85
  %104 = tail call i32 @net_ratelimit() #21
  %105 = icmp eq i32 %104, 0
  br i1 %105, label %129, label %106

106:                                              ; preds = %103
  %107 = load ptr, ptr %90, align 4
  %108 = load ptr, ptr %92, align 8
  %109 = ptrtoint ptr %107 to i32
  %110 = ptrtoint ptr %108 to i32
  %111 = sub i32 %109, %110
  %112 = load i32, ptr %69, align 8
  %113 = load i32, ptr %71, align 4
  %114 = sub i32 %112, %113
  %115 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13, i32 noundef %89, i32 noundef 6, i32 noundef %111, i32 noundef %114) #22
  br label %129

116:                                              ; preds = %99
  %117 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 13
  %118 = load i16, ptr %117, align 8
  %119 = or i16 %118, 96
  store i16 %119, ptr %117, align 8
  %120 = trunc i32 %97 to i16
  %121 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 13, i32 0, i32 4
  store i16 %120, ptr %121, align 4
  %122 = getelementptr inbounds %struct.anon.169, ptr %121, i32 0, i32 1
  store i16 6, ptr %122, align 2
  %123 = trunc i32 %96 to i16
  %124 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 13, i32 0, i32 17
  %125 = add i16 %123, %88
  store i16 %125, ptr %124, align 2
  %126 = zext i16 %125 to i32
  %127 = getelementptr i8, ptr %93, i32 %126
  %128 = getelementptr inbounds %struct.udphdr, ptr %127, i32 0, i32 3
  br label %129

129:                                              ; preds = %116, %106, %103, %80, %75, %54, %44, %41, %18, %12, %3
  %130 = phi ptr [ %66, %54 ], [ %128, %116 ], [ inttoptr (i32 -71 to ptr), %3 ], [ inttoptr (i32 -12 to ptr), %12 ], [ inttoptr (i32 -71 to ptr), %18 ], [ inttoptr (i32 -71 to ptr), %41 ], [ inttoptr (i32 -71 to ptr), %44 ], [ inttoptr (i32 -12 to ptr), %75 ], [ inttoptr (i32 -71 to ptr), %80 ], [ inttoptr (i32 -71 to ptr), %103 ], [ inttoptr (i32 -71 to ptr), %106 ]
  ret ptr %130
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__csum_ipv6_magic(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__xfrm_state_destroy(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #10

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #10

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #10

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.fshl.i32(i32, i32, i32) #10

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #10

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.usub.sat.i32(i32, i32) #10

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { argmemonly nofree nounwind willreturn writeonly }
attributes #5 = { mustprogress nofree norecurse nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { inlinehint mustprogress nofree norecurse nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #9 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #11 = { argmemonly nofree nounwind willreturn }
attributes #12 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #13 = { noreturn nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #14 = { alwaysinline nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #15 = { alwaysinline mustprogress nofree nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #16 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #17 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #18 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #19 = { nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #20 = { nounwind readonly }
attributes #21 = { nounwind }
attributes #22 = { cold nounwind }
attributes #23 = { nounwind readnone }

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
!9 = !{i64 627856}
!10 = !{i64 611888}
!11 = !{i64 2149020128}
!12 = !{!"branch_weights", i32 1, i32 2000}
!13 = !{!"branch_weights", i32 2000, i32 1}
!14 = !{!"branch_weights", i32 2002, i32 2000}
!15 = !{!"branch_weights", i32 1, i32 2001, i32 2000}
!16 = !{i64 703478, i64 2148193449, i64 2148193475, i64 2148193522, i64 2148193544, i64 2148193572, i64 2148193592}
!17 = !{i8 0, i8 2}
!18 = !{i64 2148306544}
!19 = !{i64 2148208679, i64 2148208711, i64 2148208740, i64 2148208774, i64 2148208805, i64 2148208828}
!20 = !{i64 2149155991}
!21 = !{i64 2156761148}
!22 = !{i64 2156761320}
!23 = !{i64 2153172705}
!24 = !{i64 2151907908}
!25 = !{i64 2151908115}
!26 = !{i64 2153175330}
!27 = !{i64 2156776680}
!28 = !{i64 2156776820}
!29 = !{i64 2148305543}
!30 = !{i64 2148207905, i64 2148207937, i64 2148207966, i64 2148208000, i64 2148208031, i64 2148208054}
!31 = !{i64 2148305746}
!32 = !{i64 2153642529}
!33 = !{i64 2153716295, i64 2153716783, i64 2153716332, i64 2153716388, i64 2153716422, i64 2153716446, i64 2153716487, i64 2153716508, i64 2153716536, i64 2153716570}
!34 = !{i64 2148204371}
!35 = !{i64 690047, i64 690072, i64 690094, i64 690110, i64 690122, i64 690142, i64 690166, i64 690182, i64 690194}
!36 = !{i64 2148204497}
!37 = !{i64 2148206322, i64 2148206354, i64 2148206383, i64 2148206417, i64 2148206448, i64 2148206471}
!38 = !{i64 2148204864, i64 2148204890, i64 2148204919, i64 2148204953, i64 2148204984, i64 2148205007}
!39 = !{i64 2148318290}
!40 = !{i64 689541, i64 689565, i64 689586, i64 689603, i64 689620}
!41 = !{i64 2148318490}
!42 = !{i64 2148207221, i64 2148207247, i64 2148207276, i64 2148207310, i64 2148207341, i64 2148207364}
!43 = !{i64 2148302710}
!44 = !{i64 2148205548, i64 2148205580, i64 2148205609, i64 2148205643, i64 2148205674, i64 2148205697}
!45 = !{i64 2148302913}
!46 = !{i64 2157775140, i64 2157775623, i64 2157775177, i64 2157775233, i64 2157775267, i64 2157775291, i64 2157775332, i64 2157775353, i64 2157775381, i64 2157775415}
!47 = !{i64 2157751905, i64 2157752388, i64 2157751942, i64 2157751998, i64 2157752032, i64 2157752056, i64 2157752097, i64 2157752118, i64 2157752146, i64 2157752180}
!48 = distinct !{!48, !49}
!49 = !{!"llvm.loop.peeled.count", i32 1}
!50 = !{i64 2157759688, i64 2157760171, i64 2157759725, i64 2157759781, i64 2157759815, i64 2157759839, i64 2157759880, i64 2157759901, i64 2157759929, i64 2157759963}
!51 = !{i64 2157760707, i64 2157761190, i64 2157760744, i64 2157760800, i64 2157760834, i64 2157760858, i64 2157760899, i64 2157760920, i64 2157760948, i64 2157760982}
!52 = !{i64 2157770446, i64 2157770929, i64 2157770483, i64 2157770539, i64 2157770573, i64 2157770597, i64 2157770638, i64 2157770659, i64 2157770687, i64 2157770721}
!53 = !{i64 2157598014, i64 2157598496, i64 2157598051, i64 2157598107, i64 2157598141, i64 2157598165, i64 2157598206, i64 2157598227, i64 2157598255, i64 2157598289}
!54 = !{i64 2153702937, i64 2153703425, i64 2153702974, i64 2153703030, i64 2153703064, i64 2153703088, i64 2153703129, i64 2153703150, i64 2153703178, i64 2153703212}
!55 = !{i64 2157785199, i64 2157785682, i64 2157785236, i64 2157785292, i64 2157785326, i64 2157785350, i64 2157785391, i64 2157785412, i64 2157785440, i64 2157785474}
!56 = !{!"auto-init"}
!57 = distinct !{ptr @kernel_sendmsg_locked, null}
!58 = distinct !{ptr @kernel_sendpage_locked, null}
!59 = distinct !{!59, !49}
!60 = distinct !{!60, !49}
!61 = !{i64 2157828401, i64 2157828884, i64 2157828438, i64 2157828494, i64 2157828528, i64 2157828552, i64 2157828593, i64 2157828614, i64 2157828642, i64 2157828676}
!62 = distinct !{!62, !49}
!63 = !{i64 2157839153, i64 2157839636, i64 2157839190, i64 2157839246, i64 2157839280, i64 2157839304, i64 2157839345, i64 2157839366, i64 2157839394, i64 2157839428}
!64 = !{i64 5788052}
!65 = !{i64 2157853323, i64 2157853806, i64 2157853360, i64 2157853416, i64 2157853450, i64 2157853474, i64 2157853515, i64 2157853536, i64 2157853564, i64 2157853598}
!66 = !{i64 2157860610, i64 2157861093, i64 2157860647, i64 2157860703, i64 2157860737, i64 2157860761, i64 2157860802, i64 2157860823, i64 2157860851, i64 2157860885}
!67 = !{i64 2157876979, i64 2157877462, i64 2157877016, i64 2157877072, i64 2157877106, i64 2157877130, i64 2157877171, i64 2157877192, i64 2157877220, i64 2157877254}
!68 = !{i64 2157879166, i64 2157879649, i64 2157879203, i64 2157879259, i64 2157879293, i64 2157879317, i64 2157879358, i64 2157879379, i64 2157879407, i64 2157879441}
!69 = !{i64 2157902294, i64 2157902777, i64 2157902331, i64 2157902387, i64 2157902421, i64 2157902445, i64 2157902486, i64 2157902507, i64 2157902535, i64 2157902569}
!70 = !{i64 2157907504, i64 2157907987, i64 2157907541, i64 2157907597, i64 2157907631, i64 2157907655, i64 2157907696, i64 2157907717, i64 2157907745, i64 2157907779}
!71 = !{i64 2157908635, i64 2157909118, i64 2157908672, i64 2157908728, i64 2157908762, i64 2157908786, i64 2157908827, i64 2157908848, i64 2157908876, i64 2157908910}
!72 = !{i64 2153700533, i64 2153701021, i64 2153700570, i64 2153700626, i64 2153700660, i64 2153700684, i64 2153700725, i64 2153700746, i64 2153700774, i64 2153700808}
!73 = !{i64 2157910841, i64 2157911324, i64 2157910878, i64 2157910934, i64 2157910968, i64 2157910992, i64 2157911033, i64 2157911054, i64 2157911082, i64 2157911116}
!74 = !{i64 2157911870, i64 2157912353, i64 2157911907, i64 2157911963, i64 2157911997, i64 2157912021, i64 2157912062, i64 2157912083, i64 2157912111, i64 2157912145}
!75 = !{!76}
!76 = distinct !{!76, !77, !"skb_head_frag_to_page_desc: argument 0"}
!77 = distinct !{!77, !"skb_head_frag_to_page_desc"}
!78 = !{i64 2153524455, i64 2153524947, i64 2153524492, i64 2153524548, i64 2153524582, i64 2153524606, i64 2153524647, i64 2153524668, i64 2153524696, i64 2153524730}
!79 = !{i64 2157928727, i64 2157929210, i64 2157928764, i64 2157928820, i64 2157928854, i64 2157928878, i64 2157928919, i64 2157928940, i64 2157928968, i64 2157929002}
!80 = !{i64 5789154, i64 5789195, i64 5789281}
!81 = !{i64 2157964995, i64 2157965478, i64 2157965032, i64 2157965088, i64 2157965122, i64 2157965146, i64 2157965187, i64 2157965208, i64 2157965236, i64 2157965270}
