; ModuleID = '/llk/IR/net/core/sock.c_pt.bc'
source_filename = "../net/core/sock.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_sk_ns_capable:\09\09\09\09\09"
module asm "\09.asciz \09\22sk_ns_capable\22\09\09\09\09\09"
module asm "__kstrtabns_sk_ns_capable:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_sk_capable:\09\09\09\09\09"
module asm "\09.asciz \09\22sk_capable\22\09\09\09\09\09"
module asm "__kstrtabns_sk_capable:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_sk_net_capable:\09\09\09\09\09"
module asm "\09.asciz \09\22sk_net_capable\22\09\09\09\09\09"
module asm "__kstrtabns_sk_net_capable:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_sysctl_wmem_max:\09\09\09\09\09"
module asm "\09.asciz \09\22sysctl_wmem_max\22\09\09\09\09\09"
module asm "__kstrtabns_sysctl_wmem_max:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_sysctl_rmem_max:\09\09\09\09\09"
module asm "\09.asciz \09\22sysctl_rmem_max\22\09\09\09\09\09"
module asm "__kstrtabns_sysctl_rmem_max:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_sysctl_optmem_max:\09\09\09\09\09"
module asm "\09.asciz \09\22sysctl_optmem_max\22\09\09\09\09\09"
module asm "__kstrtabns_sysctl_optmem_max:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_memalloc_socks_key:\09\09\09\09\09"
module asm "\09.asciz \09\22memalloc_socks_key\22\09\09\09\09\09"
module asm "__kstrtabns_memalloc_socks_key:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_sk_set_memalloc:\09\09\09\09\09"
module asm "\09.asciz \09\22sk_set_memalloc\22\09\09\09\09\09"
module asm "__kstrtabns_sk_set_memalloc:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_sk_clear_memalloc:\09\09\09\09\09"
module asm "\09.asciz \09\22sk_clear_memalloc\22\09\09\09\09\09"
module asm "__kstrtabns_sk_clear_memalloc:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___sk_backlog_rcv:\09\09\09\09\09"
module asm "\09.asciz \09\22__sk_backlog_rcv\22\09\09\09\09\09"
module asm "__kstrtabns___sk_backlog_rcv:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_sk_error_report:\09\09\09\09\09"
module asm "\09.asciz \09\22sk_error_report\22\09\09\09\09\09"
module asm "__kstrtabns_sk_error_report:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_sock_get_timeout:\09\09\09\09\09"
module asm "\09.asciz \09\22sock_get_timeout\22\09\09\09\09\09"
module asm "__kstrtabns_sock_get_timeout:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_sock_copy_user_timeval:\09\09\09\09\09"
module asm "\09.asciz \09\22sock_copy_user_timeval\22\09\09\09\09\09"
module asm "__kstrtabns_sock_copy_user_timeval:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___sock_queue_rcv_skb:\09\09\09\09\09"
module asm "\09.asciz \09\22__sock_queue_rcv_skb\22\09\09\09\09\09"
module asm "__kstrtabns___sock_queue_rcv_skb:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_sock_queue_rcv_skb:\09\09\09\09\09"
module asm "\09.asciz \09\22sock_queue_rcv_skb\22\09\09\09\09\09"
module asm "__kstrtabns_sock_queue_rcv_skb:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___sk_receive_skb:\09\09\09\09\09"
module asm "\09.asciz \09\22__sk_receive_skb\22\09\09\09\09\09"
module asm "__kstrtabns___sk_receive_skb:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___sk_dst_check:\09\09\09\09\09"
module asm "\09.asciz \09\22__sk_dst_check\22\09\09\09\09\09"
module asm "__kstrtabns___sk_dst_check:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_sk_dst_check:\09\09\09\09\09"
module asm "\09.asciz \09\22sk_dst_check\22\09\09\09\09\09"
module asm "__kstrtabns_sk_dst_check:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_sock_bindtoindex:\09\09\09\09\09"
module asm "\09.asciz \09\22sock_bindtoindex\22\09\09\09\09\09"
module asm "__kstrtabns_sock_bindtoindex:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_sk_mc_loop:\09\09\09\09\09"
module asm "\09.asciz \09\22sk_mc_loop\22\09\09\09\09\09"
module asm "__kstrtabns_sk_mc_loop:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_sock_set_reuseaddr:\09\09\09\09\09"
module asm "\09.asciz \09\22sock_set_reuseaddr\22\09\09\09\09\09"
module asm "__kstrtabns_sock_set_reuseaddr:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_sock_set_reuseport:\09\09\09\09\09"
module asm "\09.asciz \09\22sock_set_reuseport\22\09\09\09\09\09"
module asm "__kstrtabns_sock_set_reuseport:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_sock_no_linger:\09\09\09\09\09"
module asm "\09.asciz \09\22sock_no_linger\22\09\09\09\09\09"
module asm "__kstrtabns_sock_no_linger:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_sock_set_priority:\09\09\09\09\09"
module asm "\09.asciz \09\22sock_set_priority\22\09\09\09\09\09"
module asm "__kstrtabns_sock_set_priority:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_sock_set_sndtimeo:\09\09\09\09\09"
module asm "\09.asciz \09\22sock_set_sndtimeo\22\09\09\09\09\09"
module asm "__kstrtabns_sock_set_sndtimeo:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_sock_enable_timestamps:\09\09\09\09\09"
module asm "\09.asciz \09\22sock_enable_timestamps\22\09\09\09\09\09"
module asm "__kstrtabns_sock_enable_timestamps:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_sock_set_keepalive:\09\09\09\09\09"
module asm "\09.asciz \09\22sock_set_keepalive\22\09\09\09\09\09"
module asm "__kstrtabns_sock_set_keepalive:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_sock_set_rcvbuf:\09\09\09\09\09"
module asm "\09.asciz \09\22sock_set_rcvbuf\22\09\09\09\09\09"
module asm "__kstrtabns_sock_set_rcvbuf:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_sock_set_mark:\09\09\09\09\09"
module asm "\09.asciz \09\22sock_set_mark\22\09\09\09\09\09"
module asm "__kstrtabns_sock_set_mark:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_sock_setsockopt:\09\09\09\09\09"
module asm "\09.asciz \09\22sock_setsockopt\22\09\09\09\09\09"
module asm "__kstrtabns_sock_setsockopt:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_sk_alloc:\09\09\09\09\09"
module asm "\09.asciz \09\22sk_alloc\22\09\09\09\09\09"
module asm "__kstrtabns_sk_alloc:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_sk_free:\09\09\09\09\09"
module asm "\09.asciz \09\22sk_free\22\09\09\09\09\09"
module asm "__kstrtabns_sk_free:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_sk_clone_lock:\09\09\09\09\09"
module asm "\09.asciz \09\22sk_clone_lock\22\09\09\09\09\09"
module asm "__kstrtabns_sk_clone_lock:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_sk_free_unlock_clone:\09\09\09\09\09"
module asm "\09.asciz \09\22sk_free_unlock_clone\22\09\09\09\09\09"
module asm "__kstrtabns_sk_free_unlock_clone:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_sk_setup_caps:\09\09\09\09\09"
module asm "\09.asciz \09\22sk_setup_caps\22\09\09\09\09\09"
module asm "__kstrtabns_sk_setup_caps:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_sock_wfree:\09\09\09\09\09"
module asm "\09.asciz \09\22sock_wfree\22\09\09\09\09\09"
module asm "__kstrtabns_sock_wfree:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_skb_set_owner_w:\09\09\09\09\09"
module asm "\09.asciz \09\22skb_set_owner_w\22\09\09\09\09\09"
module asm "__kstrtabns_skb_set_owner_w:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_skb_orphan_partial:\09\09\09\09\09"
module asm "\09.asciz \09\22skb_orphan_partial\22\09\09\09\09\09"
module asm "__kstrtabns_skb_orphan_partial:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_sock_rfree:\09\09\09\09\09"
module asm "\09.asciz \09\22sock_rfree\22\09\09\09\09\09"
module asm "__kstrtabns_sock_rfree:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_sock_efree:\09\09\09\09\09"
module asm "\09.asciz \09\22sock_efree\22\09\09\09\09\09"
module asm "__kstrtabns_sock_efree:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_sock_pfree:\09\09\09\09\09"
module asm "\09.asciz \09\22sock_pfree\22\09\09\09\09\09"
module asm "__kstrtabns_sock_pfree:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_sock_i_uid:\09\09\09\09\09"
module asm "\09.asciz \09\22sock_i_uid\22\09\09\09\09\09"
module asm "__kstrtabns_sock_i_uid:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_sock_i_ino:\09\09\09\09\09"
module asm "\09.asciz \09\22sock_i_ino\22\09\09\09\09\09"
module asm "__kstrtabns_sock_i_ino:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_sock_wmalloc:\09\09\09\09\09"
module asm "\09.asciz \09\22sock_wmalloc\22\09\09\09\09\09"
module asm "__kstrtabns_sock_wmalloc:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_sock_kmalloc:\09\09\09\09\09"
module asm "\09.asciz \09\22sock_kmalloc\22\09\09\09\09\09"
module asm "__kstrtabns_sock_kmalloc:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_sock_kfree_s:\09\09\09\09\09"
module asm "\09.asciz \09\22sock_kfree_s\22\09\09\09\09\09"
module asm "__kstrtabns_sock_kfree_s:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_sock_kzfree_s:\09\09\09\09\09"
module asm "\09.asciz \09\22sock_kzfree_s\22\09\09\09\09\09"
module asm "__kstrtabns_sock_kzfree_s:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_sock_alloc_send_pskb:\09\09\09\09\09"
module asm "\09.asciz \09\22sock_alloc_send_pskb\22\09\09\09\09\09"
module asm "__kstrtabns_sock_alloc_send_pskb:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_sock_alloc_send_skb:\09\09\09\09\09"
module asm "\09.asciz \09\22sock_alloc_send_skb\22\09\09\09\09\09"
module asm "__kstrtabns_sock_alloc_send_skb:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___sock_cmsg_send:\09\09\09\09\09"
module asm "\09.asciz \09\22__sock_cmsg_send\22\09\09\09\09\09"
module asm "__kstrtabns___sock_cmsg_send:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_sock_cmsg_send:\09\09\09\09\09"
module asm "\09.asciz \09\22sock_cmsg_send\22\09\09\09\09\09"
module asm "__kstrtabns_sock_cmsg_send:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_skb_page_frag_refill:\09\09\09\09\09"
module asm "\09.asciz \09\22skb_page_frag_refill\22\09\09\09\09\09"
module asm "__kstrtabns_skb_page_frag_refill:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_sk_page_frag_refill:\09\09\09\09\09"
module asm "\09.asciz \09\22sk_page_frag_refill\22\09\09\09\09\09"
module asm "__kstrtabns_sk_page_frag_refill:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_sk_wait_data:\09\09\09\09\09"
module asm "\09.asciz \09\22sk_wait_data\22\09\09\09\09\09"
module asm "__kstrtabns_sk_wait_data:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___sk_mem_raise_allocated:\09\09\09\09\09"
module asm "\09.asciz \09\22__sk_mem_raise_allocated\22\09\09\09\09\09"
module asm "__kstrtabns___sk_mem_raise_allocated:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___sk_mem_schedule:\09\09\09\09\09"
module asm "\09.asciz \09\22__sk_mem_schedule\22\09\09\09\09\09"
module asm "__kstrtabns___sk_mem_schedule:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___sk_mem_reduce_allocated:\09\09\09\09\09"
module asm "\09.asciz \09\22__sk_mem_reduce_allocated\22\09\09\09\09\09"
module asm "__kstrtabns___sk_mem_reduce_allocated:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___sk_mem_reclaim:\09\09\09\09\09"
module asm "\09.asciz \09\22__sk_mem_reclaim\22\09\09\09\09\09"
module asm "__kstrtabns___sk_mem_reclaim:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_sk_set_peek_off:\09\09\09\09\09"
module asm "\09.asciz \09\22sk_set_peek_off\22\09\09\09\09\09"
module asm "__kstrtabns_sk_set_peek_off:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_sock_no_bind:\09\09\09\09\09"
module asm "\09.asciz \09\22sock_no_bind\22\09\09\09\09\09"
module asm "__kstrtabns_sock_no_bind:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_sock_no_connect:\09\09\09\09\09"
module asm "\09.asciz \09\22sock_no_connect\22\09\09\09\09\09"
module asm "__kstrtabns_sock_no_connect:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_sock_no_socketpair:\09\09\09\09\09"
module asm "\09.asciz \09\22sock_no_socketpair\22\09\09\09\09\09"
module asm "__kstrtabns_sock_no_socketpair:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_sock_no_accept:\09\09\09\09\09"
module asm "\09.asciz \09\22sock_no_accept\22\09\09\09\09\09"
module asm "__kstrtabns_sock_no_accept:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_sock_no_getname:\09\09\09\09\09"
module asm "\09.asciz \09\22sock_no_getname\22\09\09\09\09\09"
module asm "__kstrtabns_sock_no_getname:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_sock_no_ioctl:\09\09\09\09\09"
module asm "\09.asciz \09\22sock_no_ioctl\22\09\09\09\09\09"
module asm "__kstrtabns_sock_no_ioctl:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_sock_no_listen:\09\09\09\09\09"
module asm "\09.asciz \09\22sock_no_listen\22\09\09\09\09\09"
module asm "__kstrtabns_sock_no_listen:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_sock_no_shutdown:\09\09\09\09\09"
module asm "\09.asciz \09\22sock_no_shutdown\22\09\09\09\09\09"
module asm "__kstrtabns_sock_no_shutdown:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_sock_no_sendmsg:\09\09\09\09\09"
module asm "\09.asciz \09\22sock_no_sendmsg\22\09\09\09\09\09"
module asm "__kstrtabns_sock_no_sendmsg:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_sock_no_sendmsg_locked:\09\09\09\09\09"
module asm "\09.asciz \09\22sock_no_sendmsg_locked\22\09\09\09\09\09"
module asm "__kstrtabns_sock_no_sendmsg_locked:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_sock_no_recvmsg:\09\09\09\09\09"
module asm "\09.asciz \09\22sock_no_recvmsg\22\09\09\09\09\09"
module asm "__kstrtabns_sock_no_recvmsg:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_sock_no_mmap:\09\09\09\09\09"
module asm "\09.asciz \09\22sock_no_mmap\22\09\09\09\09\09"
module asm "__kstrtabns_sock_no_mmap:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_sock_no_sendpage:\09\09\09\09\09"
module asm "\09.asciz \09\22sock_no_sendpage\22\09\09\09\09\09"
module asm "__kstrtabns_sock_no_sendpage:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_sock_no_sendpage_locked:\09\09\09\09\09"
module asm "\09.asciz \09\22sock_no_sendpage_locked\22\09\09\09\09\09"
module asm "__kstrtabns_sock_no_sendpage_locked:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_sk_send_sigurg:\09\09\09\09\09"
module asm "\09.asciz \09\22sk_send_sigurg\22\09\09\09\09\09"
module asm "__kstrtabns_sk_send_sigurg:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_sk_reset_timer:\09\09\09\09\09"
module asm "\09.asciz \09\22sk_reset_timer\22\09\09\09\09\09"
module asm "__kstrtabns_sk_reset_timer:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_sk_stop_timer:\09\09\09\09\09"
module asm "\09.asciz \09\22sk_stop_timer\22\09\09\09\09\09"
module asm "__kstrtabns_sk_stop_timer:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_sk_stop_timer_sync:\09\09\09\09\09"
module asm "\09.asciz \09\22sk_stop_timer_sync\22\09\09\09\09\09"
module asm "__kstrtabns_sk_stop_timer_sync:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_sock_init_data:\09\09\09\09\09"
module asm "\09.asciz \09\22sock_init_data\22\09\09\09\09\09"
module asm "__kstrtabns_sock_init_data:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_lock_sock_nested:\09\09\09\09\09"
module asm "\09.asciz \09\22lock_sock_nested\22\09\09\09\09\09"
module asm "__kstrtabns_lock_sock_nested:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_release_sock:\09\09\09\09\09"
module asm "\09.asciz \09\22release_sock\22\09\09\09\09\09"
module asm "__kstrtabns_release_sock:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___lock_sock_fast:\09\09\09\09\09"
module asm "\09.asciz \09\22__lock_sock_fast\22\09\09\09\09\09"
module asm "__kstrtabns___lock_sock_fast:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_sock_gettstamp:\09\09\09\09\09"
module asm "\09.asciz \09\22sock_gettstamp\22\09\09\09\09\09"
module asm "__kstrtabns_sock_gettstamp:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_sock_recv_errqueue:\09\09\09\09\09"
module asm "\09.asciz \09\22sock_recv_errqueue\22\09\09\09\09\09"
module asm "__kstrtabns_sock_recv_errqueue:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_sock_common_getsockopt:\09\09\09\09\09"
module asm "\09.asciz \09\22sock_common_getsockopt\22\09\09\09\09\09"
module asm "__kstrtabns_sock_common_getsockopt:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_sock_common_recvmsg:\09\09\09\09\09"
module asm "\09.asciz \09\22sock_common_recvmsg\22\09\09\09\09\09"
module asm "__kstrtabns_sock_common_recvmsg:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_sock_common_setsockopt:\09\09\09\09\09"
module asm "\09.asciz \09\22sock_common_setsockopt\22\09\09\09\09\09"
module asm "__kstrtabns_sock_common_setsockopt:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_sk_common_release:\09\09\09\09\09"
module asm "\09.asciz \09\22sk_common_release\22\09\09\09\09\09"
module asm "__kstrtabns_sk_common_release:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_sock_prot_inuse_get:\09\09\09\09\09"
module asm "\09.asciz \09\22sock_prot_inuse_get\22\09\09\09\09\09"
module asm "__kstrtabns_sock_prot_inuse_get:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_sock_inuse_get:\09\09\09\09\09"
module asm "\09.asciz \09\22sock_inuse_get\22\09\09\09\09\09"
module asm "__kstrtabns_sock_inuse_get:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_proto_register:\09\09\09\09\09"
module asm "\09.asciz \09\22proto_register\22\09\09\09\09\09"
module asm "__kstrtabns_proto_register:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_proto_unregister:\09\09\09\09\09"
module asm "\09.asciz \09\22proto_unregister\22\09\09\09\09\09"
module asm "__kstrtabns_proto_unregister:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_sock_load_diag_module:\09\09\09\09\09"
module asm "\09.asciz \09\22sock_load_diag_module\22\09\09\09\09\09"
module asm "__kstrtabns_sock_load_diag_module:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_sk_busy_loop_end:\09\09\09\09\09"
module asm "\09.asciz \09\22sk_busy_loop_end\22\09\09\09\09\09"
module asm "__kstrtabns_sk_busy_loop_end:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_sock_bind_add:\09\09\09\09\09"
module asm "\09.asciz \09\22sock_bind_add\22\09\09\09\09\09"
module asm "__kstrtabns_sock_bind_add:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.user_namespace = type { %struct.uid_gid_map, %struct.uid_gid_map, %struct.uid_gid_map, ptr, i32, %struct.kuid_t, %struct.kgid_t, %struct.ns_common, i32, i8, %struct.list_head, ptr, %struct.rw_semaphore, %struct.work_struct, %struct.ctl_table_set, ptr, ptr, [14 x i32] }
%struct.uid_gid_map = type { i32, %union.anon.15 }
%union.anon.15 = type { [5 x %struct.uid_gid_extent] }
%struct.uid_gid_extent = type { i32, i32, i32 }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%struct.ns_common = type { %struct.atomic_t, ptr, i32, %struct.refcount_struct }
%struct.atomic_t = type { i32 }
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
%struct.ctl_table_header = type { %union.anon.25, ptr, ptr, ptr, ptr, ptr, ptr, %struct.hlist_head }
%union.anon.25 = type { %struct.anon.26 }
%struct.anon.26 = type { ptr, i32, i32, i32 }
%struct.hlist_head = type { ptr }
%struct.rb_root = type { ptr }
%struct.static_key_false = type { %struct.static_key }
%struct.static_key = type { %struct.atomic_t }
%struct.cpumask = type { [1 x i32] }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.net = type { %struct.refcount_struct, %struct.spinlock, i32, i32, i32, %struct.spinlock, %struct.atomic_t, %struct.list_head, %struct.list_head, %struct.llist_node, ptr, ptr, ptr, %struct.idr, %struct.ns_common, %struct.ref_tracker_dir, %struct.list_head, ptr, ptr, %struct.ctl_table_set, ptr, ptr, ptr, ptr, ptr, %struct.raw_notifier_head, i32, ptr, %struct.list_head, %struct.netns_core, %struct.netns_mib, %struct.netns_packet, %struct.netns_unix, %struct.netns_nexthop, [40 x i8], %struct.netns_ipv4, %struct.netns_ipv6, ptr, %struct.netns_bpf, [28 x i8], %struct.netns_xfrm, i64, %struct.netns_can, ptr, ptr, [32 x i8] }
%struct.spinlock = type { %union.anon.7 }
%union.anon.7 = type { %struct.raw_spinlock }
%struct.llist_node = type { ptr }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.ref_tracker_dir = type {}
%struct.raw_notifier_head = type { ptr }
%struct.netns_core = type { ptr, i32, ptr }
%struct.netns_mib = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.netns_packet = type { %struct.mutex, %struct.hlist_head }
%struct.netns_unix = type { i32, ptr }
%struct.netns_nexthop = type { %struct.rb_root, ptr, i32, i32, %struct.blocking_notifier_head }
%struct.blocking_notifier_head = type { %struct.rw_semaphore, ptr }
%struct.netns_ipv4 = type { %struct.inet_timewait_death_row, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, i8, i32, i32, i32, i32, %struct.local_ports, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i8, i8, i32, i8, i8, i8, i8, i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i32, i32, i32, i8, i8, i8, i8, i32, i32, i32, [3 x i32], [3 x i32], i32, i32, i32, i32, ptr, ptr, i32, %struct.atomic_t, i32, i32, i32, i8, i8, i32, i32, i32, %struct.ping_group_range, %struct.atomic_t, ptr, i32, ptr, i32, ptr, i32, %struct.atomic_t, %struct.siphash_key_t, [40 x i8] }
%struct.inet_timewait_death_row = type { %struct.atomic_t, [60 x i8], ptr, i32 }
%struct.local_ports = type { %struct.seqlock_t, [2 x i32], i8 }
%struct.seqlock_t = type { %struct.seqcount_spinlock, %struct.spinlock }
%struct.seqcount_spinlock = type { %struct.seqcount }
%struct.seqcount = type { i32 }
%struct.ping_group_range = type { %struct.seqlock_t, [2 x %struct.kgid_t] }
%struct.siphash_key_t = type { [2 x i64] }
%struct.netns_ipv6 = type { %struct.dst_ops, %struct.netns_sysctl_ipv6, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.timer_list, ptr, ptr, %struct.list_head, %struct.rwlock_t, %struct.spinlock, i32, i32, i8, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, i32, %struct.anon.138, ptr, [60 x i8] }
%struct.dst_ops = type { i16, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [60 x i8], %struct.percpu_counter, [32 x i8] }
%struct.percpu_counter = type { %struct.raw_spinlock, i64, %struct.list_head, ptr }
%struct.netns_sysctl_ipv6 = type { ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i8, i32, i8, i8, i8, [8 x i32], ptr, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i8, i8 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32 }
%struct.hlist_node = type { ptr, ptr }
%struct.rwlock_t = type { %struct.arch_rwlock_t }
%struct.arch_rwlock_t = type { i32 }
%struct.anon.138 = type { %struct.hlist_head, %struct.spinlock, i32 }
%struct.netns_bpf = type { [2 x ptr], [2 x ptr], [2 x %struct.list_head] }
%struct.netns_xfrm = type { %struct.list_head, ptr, ptr, ptr, ptr, i32, i32, %struct.work_struct, %struct.list_head, ptr, i32, [3 x %struct.hlist_head], [3 x %struct.xfrm_policy_hash], [6 x i32], %struct.work_struct, %struct.xfrm_policy_hthresh, %struct.list_head, ptr, ptr, i32, i32, i32, i32, i8, ptr, [36 x i8], %struct.dst_ops, %struct.dst_ops, %struct.spinlock, %struct.seqcount_spinlock, %struct.seqcount_spinlock, %struct.spinlock, %struct.mutex, [28 x i8] }
%struct.xfrm_policy_hash = type { ptr, i32, i8, i8, i8, i8 }
%struct.xfrm_policy_hthresh = type { %struct.work_struct, %struct.seqlock_t, i8, i8, i8, i8 }
%struct.netns_can = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.spinlock, %struct.timer_list, ptr, ptr, %struct.hlist_head }
%struct.tracepoint = type { ptr, %struct.static_key, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.softnet_data = type { %struct.list_head, %struct.sk_buff_head, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, %struct.anon.203, [4 x i8], i32, [60 x i8], %struct.__call_single_data, ptr, i32, i32, i32, %struct.sk_buff_head, %struct.napi_struct, [56 x i8] }
%struct.anon.203 = type { i16, i8 }
%struct.__call_single_data = type { %struct.__call_single_node, ptr, ptr }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.34 }
%union.anon.34 = type { i32 }
%struct.sk_buff_head = type { %union.anon.65, i32, %struct.spinlock }
%union.anon.65 = type { %struct.anon.66 }
%struct.anon.66 = type { ptr, ptr }
%struct.napi_struct = type { %struct.list_head, i32, i32, i32, i32, ptr, ptr, [8 x %struct.gro_list], ptr, %struct.list_head, i32, %struct.hrtimer, %struct.list_head, %struct.hlist_node, i32, ptr }
%struct.gro_list = type { %struct.list_head, i32 }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.lock_class_key = type {}
%struct.pernet_operations = type { %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32 }
%struct.seq_operations = type { ptr, ptr, ptr, ptr }
%struct.sock = type { %struct.sock_common, ptr, i32, i32, %struct.socket_lock_t, %struct.atomic_t, i32, %struct.sk_buff_head, %struct.sk_buff_head, %struct.anon.179, %struct.llist_head, i32, i32, i32, i32, i32, ptr, %union.anon.180, [2 x ptr], ptr, %struct.atomic_t, i32, i32, %struct.refcount_struct, i32, %union.anon.181, %struct.sk_buff_head, i32, i32, i32, i32, i32, %struct.timer_list, i32, i32, i32, i32, %struct.page_frag, i64, i32, i32, i32, i32, i8, i8, i16, i16, i16, i32, ptr, %struct.rwlock_t, i32, i32, i32, i32, %struct.kuid_t, i8, i16, %struct.spinlock, i32, ptr, ptr, i32, i64, %struct.seqlock_t, i16, i8, %struct.atomic_t, %struct.atomic_t, i8, i8, ptr, ptr, %struct.sock_cgroup_data, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.callback_head, %struct.netns_tracker }
%struct.sock_common = type { %union.anon, %union.anon.0, %union.anon.1, i16, i8, i8, i32, %union.anon.3, ptr, %struct.possible_net_t, %struct.in6_addr, %struct.in6_addr, %struct.atomic64_t, %union.anon.175, [0 x i32], %union.anon.176, i16, i16, %union.anon.177, %struct.refcount_struct, [0 x i32], %union.anon.178 }
%union.anon = type { i64 }
%union.anon.0 = type { i32 }
%union.anon.1 = type { i32 }
%union.anon.3 = type { %struct.hlist_node }
%struct.possible_net_t = type {}
%struct.in6_addr = type { %union.anon.119 }
%union.anon.119 = type { [4 x i32] }
%struct.atomic64_t = type { i64 }
%union.anon.175 = type { i32 }
%union.anon.176 = type { %struct.hlist_node }
%union.anon.177 = type { i32 }
%union.anon.178 = type { i32 }
%struct.socket_lock_t = type { %struct.spinlock, i32, %struct.wait_queue_head }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.anon.179 = type { %struct.atomic_t, i32, ptr, ptr }
%struct.llist_head = type { ptr }
%union.anon.180 = type { ptr }
%union.anon.181 = type { ptr }
%struct.page_frag = type { ptr, i16, i16 }
%struct.sock_cgroup_data = type {}
%struct.callback_head = type { ptr, ptr }
%struct.netns_tracker = type {}
%struct.socket = type { i32, i16, i32, ptr, ptr, ptr, [40 x i8], %struct.socket_wq }
%struct.socket_wq = type { %struct.wait_queue_head, ptr, i32, %struct.callback_head, [36 x i8] }
%struct.proto = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i8, ptr, i32, i32, i32, i32, ptr, ptr, ptr, %union.anon.174, ptr, [32 x i8], %struct.list_head, ptr }
%union.anon.174 = type { ptr }
%struct.task_struct = type { %struct.thread_info, i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [32 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, [36 x i8], %struct.sched_statistics, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i8, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.154, ptr, %struct.page_frag, i32, i32, i32, i64, i64, i32, i32, ptr, %struct.kmap_ctrl, i32, ptr, %struct.refcount_struct, %struct.thread_struct, [16 x i8] }
%struct.thread_info = type { i32, i32, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], [4 x i8], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
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
%struct.restart_block = type { i32, ptr, %union.anon.35 }
%union.anon.35 = type { %struct.anon.36 }
%struct.anon.36 = type { ptr, i32, i32, i32, i64, ptr }
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
%union.anon.154 = type { %struct.callback_head }
%struct.kmap_ctrl = type { i32, [16 x i32] }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
%struct.__kernel_old_timeval = type { i32, i32 }
%struct.__kernel_sock_timeval = type { i64, i64 }
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
%struct.dst_entry = type { ptr, ptr, i32, i32, ptr, ptr, ptr, i16, i16, i16, i16, i32, i32, ptr, %struct.callback_head, i16, i16, i32, %struct.atomic_t, %struct.netdevice_tracker }
%struct.netdevice_tracker = type {}
%struct.inet_sock = type { %struct.sock, ptr, i32, i16, i16, ptr, i16, i16, i8, i8, i8, i8, i16, i8, i8, i32, i32, i32, ptr, %struct.inet_cork_full }
%struct.inet_cork_full = type { %struct.inet_cork, %struct.flowi }
%struct.inet_cork = type { i32, i32, ptr, i32, i32, ptr, i8, i8, i16, i8, i16, i64, i32 }
%struct.flowi = type { %union.anon.124 }
%union.anon.124 = type { %struct.flowi6 }
%struct.flowi6 = type { %struct.flowi_common, %struct.in6_addr, %struct.in6_addr, i32, %union.flowi_uli, i32 }
%struct.flowi_common = type { i32, i32, i32, i8, i8, i8, i8, i32, %struct.kuid_t, %struct.flowi_tunnel, i32 }
%struct.flowi_tunnel = type { i64 }
%union.flowi_uli = type { i32 }
%struct.ipv6_pinfo = type { %struct.in6_addr, %struct.in6_pktinfo, ptr, i32, i32, i32, i32, i32, %union.anon.188, i16, i8, i8, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.inet6_cork }
%struct.in6_pktinfo = type { %struct.in6_addr, i32 }
%union.anon.188 = type { %struct.anon.189 }
%struct.anon.189 = type { i16 }
%struct.inet6_cork = type { ptr, i8, i8 }
%struct.tcp_sock = type { %struct.inet_connection_sock, i16, i16, i32, i64, i32, i32, i32, i32, i32, i32, i32, i32, i64, i64, i32, i32, i32, i32, i32, i32, i32, i32, %struct.list_head, %struct.list_head, i32, i32, i32, i32, i32, i32, %struct.tcp_rack, i16, i8, i8, i32, [3 x i32], i16, i8, i8, i32, i32, i64, i64, i64, i32, i32, i32, i32, i32, %struct.minmax, i32, i32, i32, i32, i16, i8, i8, i32, i32, i32, %struct.tcp_options_received, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i64, i32, i32, i32, i32, i32, i32, i32, i32, %struct.hrtimer, %struct.hrtimer, ptr, ptr, %struct.rb_root, ptr, [1 x %struct.tcp_sack_block], [4 x %struct.tcp_sack_block], [4 x %struct.tcp_sack_block], ptr, i32, i32, i32, i32, i32, i32, i64, i32, i32, i32, i32, i32, i8, i16, i32, i32, %struct.anon.193, %struct.anon.194, %struct.anon.195, i32, ptr, ptr, ptr }
%struct.inet_connection_sock = type { %struct.inet_sock, %struct.request_sock_queue, ptr, i32, %struct.timer_list, %struct.timer_list, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, %struct.hlist_node, ptr, i8, i8, i8, i8, i8, i8, i16, %struct.anon.191, %struct.anon.192, i32, i32, [13 x i64] }
%struct.request_sock_queue = type { %struct.spinlock, i8, i32, %struct.atomic_t, %struct.atomic_t, ptr, ptr, %struct.fastopen_queue }
%struct.fastopen_queue = type { ptr, ptr, %struct.spinlock, i32, i32, ptr }
%struct.anon.191 = type { i8, i8, i8, i8, i32, i32, i32, i16, i16 }
%struct.anon.192 = type { i32, i32, i32, i32 }
%struct.tcp_rack = type { i64, i32, i32, i32, i8, i8 }
%struct.minmax = type { [3 x %struct.minmax_sample] }
%struct.minmax_sample = type { i32, i32 }
%struct.tcp_options_received = type { i32, i32, i32, i32, [3 x i8], i8, i16, i16 }
%struct.tcp_sack_block = type { i32, i32 }
%struct.anon.193 = type { i32, i32, i64 }
%struct.anon.194 = type { i32, i32, i64 }
%struct.anon.195 = type { i32, i32 }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon.41, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, i32, i32, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [8 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, %struct.possible_net_t, ptr, i32, %union.anon.134, %struct.device, [4 x ptr], ptr, ptr, i32, i16, i16, [16 x %struct.netdev_tc_txq], [16 x i8], ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], %struct.netdevice_tracker, %struct.netdevice_tracker, [48 x i8] }
%struct.anon.41 = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%union.anon.134 = type { ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.netdev_tc_txq = type { i16, i16 }
%struct.bpf_xdp_entity = type { ptr, ptr }
%struct.so_timestamping = type { i32, i32 }
%struct.sock_txtime = type { i32, i32 }
%struct.linger = type { i32, i32 }
%struct.sock_fprog = type { i16, ptr }
%struct.proto_ops = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%union.anon.199 = type { %struct.__kernel_sock_timeval }
%struct.ucred = type { i32, i32, i32 }
%struct.cred = type { %struct.atomic_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, i32, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %union.anon.40 }
%struct.kernel_cap_struct = type { [2 x i32] }
%union.anon.40 = type { %struct.callback_head }
%struct.group_info = type { %struct.atomic_t, i32, [0 x %struct.kgid_t] }
%struct.page = type { i32, %union.anon.5, %union.anon.170, %struct.atomic_t }
%union.anon.5 = type { %struct.anon.6 }
%struct.anon.6 = type { %struct.list_head, ptr, i32, i32 }
%union.anon.170 = type { %struct.atomic_t }
%struct.socket_alloc = type { %struct.socket, %struct.inode, [56 x i8] }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.183, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.184, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.185, ptr, %struct.address_space, %struct.list_head, %union.anon.186, i32, i32, ptr, ptr }
%union.anon.183 = type { i32 }
%struct.timespec64 = type { i64, i32 }
%union.anon.184 = type { %struct.callback_head }
%union.anon.185 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%union.anon.186 = type { ptr }
%struct.wait_queue_entry = type { i32, ptr, ptr, %struct.list_head }
%struct.cmsghdr = type { i32, i32, i32 }
%struct.sockcm_cookie = type { i64, i32, i16 }
%struct.msghdr = type { ptr, i32, %struct.iov_iter, %union.anon.173, i8, i32, i32, ptr }
%struct.iov_iter = type { i8, i8, i8, i32, i32, %union.anon.4, %union.anon.171 }
%union.anon.4 = type { ptr }
%union.anon.171 = type { i64 }
%union.anon.173 = type { ptr }
%struct.kvec = type { ptr, i32 }
%struct.file = type { %union.anon.9, %struct.path, ptr, ptr, %struct.spinlock, i32, %struct.atomic_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, ptr, %struct.file_ra_state, i64, ptr, ptr, ptr, i32, i32 }
%union.anon.9 = type { %struct.callback_head }
%struct.path = type { ptr, ptr }
%struct.fown_struct = type { %struct.rwlock_t, ptr, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.file_ra_state = type { i32, i32, i32, i32, i32, i64 }
%struct.skb_shared_info = type { i8, i8, i8, i8, i16, i16, ptr, %struct.skb_shared_hwtstamps, i32, i32, %struct.atomic_t, ptr, [17 x %struct.bio_vec] }
%struct.skb_shared_hwtstamps = type { i64 }
%struct.bio_vec = type { ptr, i32, i32 }
%struct.prot_inuse = type { i32, [64 x i32] }
%struct.request_sock_ops = type { i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.timewait_sock_ops = type { ptr, ptr, i32, ptr, ptr }
%struct.module = type { i32, %struct.list_head, [60 x i8], %struct.module_kobject, ptr, ptr, ptr, ptr, ptr, ptr, i32, %struct.mutex, ptr, i32, i32, ptr, ptr, i8, i8, i32, ptr, ptr, [48 x i8], %struct.module_layout, %struct.module_layout, %struct.mod_arch_specific, i32, i32, %struct.list_head, ptr, ptr, %struct.mod_kallsyms, ptr, ptr, ptr, ptr, i32, ptr, i32, i32, ptr, i32, ptr, i32, ptr, ptr, i32, ptr, i32, %struct.list_head, %struct.list_head, ptr, %struct.atomic_t, [40 x i8] }
%struct.module_kobject = type { %struct.kobject, ptr, ptr, ptr, ptr }
%struct.module_layout = type { ptr, i32, i32, i32, i32, %struct.mod_tree_node }
%struct.mod_tree_node = type { ptr, %struct.latch_tree_node }
%struct.latch_tree_node = type { [2 x %struct.rb_node] }
%struct.mod_arch_specific = type { [7 x ptr], %struct.mod_plt_sec, %struct.mod_plt_sec }
%struct.mod_plt_sec = type { ptr, ptr, i32 }
%struct.mod_kallsyms = type { ptr, i32, ptr, ptr }

@__kstrtab_sk_ns_capable = external dso_local constant [0 x i8], align 1
@__kstrtabns_sk_ns_capable = external dso_local constant [0 x i8], align 1
@__ksymtab_sk_ns_capable = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @sk_ns_capable to i32), ptr @__kstrtab_sk_ns_capable, ptr @__kstrtabns_sk_ns_capable }, section "___ksymtab+sk_ns_capable", align 4
@init_user_ns = external dso_local global %struct.user_namespace, align 4
@__kstrtab_sk_capable = external dso_local constant [0 x i8], align 1
@__kstrtabns_sk_capable = external dso_local constant [0 x i8], align 1
@__ksymtab_sk_capable = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @sk_capable to i32), ptr @__kstrtab_sk_capable, ptr @__kstrtabns_sk_capable }, section "___ksymtab+sk_capable", align 4
@__kstrtab_sk_net_capable = external dso_local constant [0 x i8], align 1
@__kstrtabns_sk_net_capable = external dso_local constant [0 x i8], align 1
@__ksymtab_sk_net_capable = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @sk_net_capable to i32), ptr @__kstrtab_sk_net_capable, ptr @__kstrtabns_sk_net_capable }, section "___ksymtab+sk_net_capable", align 4
@sysctl_wmem_max = dso_local global i32 180224, section ".data..read_mostly", align 4
@__kstrtab_sysctl_wmem_max = external dso_local constant [0 x i8], align 1
@__kstrtabns_sysctl_wmem_max = external dso_local constant [0 x i8], align 1
@__ksymtab_sysctl_wmem_max = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @sysctl_wmem_max to i32), ptr @__kstrtab_sysctl_wmem_max, ptr @__kstrtabns_sysctl_wmem_max }, section "___ksymtab+sysctl_wmem_max", align 4
@sysctl_rmem_max = dso_local global i32 180224, section ".data..read_mostly", align 4
@__kstrtab_sysctl_rmem_max = external dso_local constant [0 x i8], align 1
@__kstrtabns_sysctl_rmem_max = external dso_local constant [0 x i8], align 1
@__ksymtab_sysctl_rmem_max = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @sysctl_rmem_max to i32), ptr @__kstrtab_sysctl_rmem_max, ptr @__kstrtabns_sysctl_rmem_max }, section "___ksymtab+sysctl_rmem_max", align 4
@sysctl_wmem_default = dso_local local_unnamed_addr global i32 180224, section ".data..read_mostly", align 4
@sysctl_rmem_default = dso_local local_unnamed_addr global i32 180224, section ".data..read_mostly", align 4
@sysctl_optmem_max = dso_local global i32 10240, section ".data..read_mostly", align 4
@__kstrtab_sysctl_optmem_max = external dso_local constant [0 x i8], align 1
@__kstrtabns_sysctl_optmem_max = external dso_local constant [0 x i8], align 1
@__ksymtab_sysctl_optmem_max = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @sysctl_optmem_max to i32), ptr @__kstrtab_sysctl_optmem_max, ptr @__kstrtabns_sysctl_optmem_max }, section "___ksymtab+sysctl_optmem_max", align 4
@sysctl_tstamp_allow_data = dso_local local_unnamed_addr global i32 1, section ".data..read_mostly", align 4
@memalloc_socks_key = dso_local global %struct.static_key_false zeroinitializer, align 4
@__kstrtab_memalloc_socks_key = external dso_local constant [0 x i8], align 1
@__kstrtabns_memalloc_socks_key = external dso_local constant [0 x i8], align 1
@__ksymtab_memalloc_socks_key = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @memalloc_socks_key to i32), ptr @__kstrtab_memalloc_socks_key, ptr @__kstrtabns_memalloc_socks_key }, section "___ksymtab_gpl+memalloc_socks_key", align 4
@__kstrtab_sk_set_memalloc = external dso_local constant [0 x i8], align 1
@__kstrtabns_sk_set_memalloc = external dso_local constant [0 x i8], align 1
@__ksymtab_sk_set_memalloc = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @sk_set_memalloc to i32), ptr @__kstrtab_sk_set_memalloc, ptr @__kstrtabns_sk_set_memalloc }, section "___ksymtab_gpl+sk_set_memalloc", align 4
@__kstrtab_sk_clear_memalloc = external dso_local constant [0 x i8], align 1
@__kstrtabns_sk_clear_memalloc = external dso_local constant [0 x i8], align 1
@__ksymtab_sk_clear_memalloc = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @sk_clear_memalloc to i32), ptr @__kstrtab_sk_clear_memalloc, ptr @__kstrtabns_sk_clear_memalloc }, section "___ksymtab_gpl+sk_clear_memalloc", align 4
@__kstrtab___sk_backlog_rcv = external dso_local constant [0 x i8], align 1
@__kstrtabns___sk_backlog_rcv = external dso_local constant [0 x i8], align 1
@__ksymtab___sk_backlog_rcv = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__sk_backlog_rcv to i32), ptr @__kstrtab___sk_backlog_rcv, ptr @__kstrtabns___sk_backlog_rcv }, section "___ksymtab+__sk_backlog_rcv", align 4
@__kstrtab_sk_error_report = external dso_local constant [0 x i8], align 1
@__kstrtabns_sk_error_report = external dso_local constant [0 x i8], align 1
@__ksymtab_sk_error_report = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @sk_error_report to i32), ptr @__kstrtab_sk_error_report, ptr @__kstrtabns_sk_error_report }, section "___ksymtab+sk_error_report", align 4
@__kstrtab_sock_get_timeout = external dso_local constant [0 x i8], align 1
@__kstrtabns_sock_get_timeout = external dso_local constant [0 x i8], align 1
@__ksymtab_sock_get_timeout = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @sock_get_timeout to i32), ptr @__kstrtab_sock_get_timeout, ptr @__kstrtabns_sock_get_timeout }, section "___ksymtab+sock_get_timeout", align 4
@__kstrtab_sock_copy_user_timeval = external dso_local constant [0 x i8], align 1
@__kstrtabns_sock_copy_user_timeval = external dso_local constant [0 x i8], align 1
@__ksymtab_sock_copy_user_timeval = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @sock_copy_user_timeval to i32), ptr @__kstrtab_sock_copy_user_timeval, ptr @__kstrtabns_sock_copy_user_timeval }, section "___ksymtab+sock_copy_user_timeval", align 4
@__kstrtab___sock_queue_rcv_skb = external dso_local constant [0 x i8], align 1
@__kstrtabns___sock_queue_rcv_skb = external dso_local constant [0 x i8], align 1
@__ksymtab___sock_queue_rcv_skb = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__sock_queue_rcv_skb to i32), ptr @__kstrtab___sock_queue_rcv_skb, ptr @__kstrtabns___sock_queue_rcv_skb }, section "___ksymtab+__sock_queue_rcv_skb", align 4
@__kstrtab_sock_queue_rcv_skb = external dso_local constant [0 x i8], align 1
@__kstrtabns_sock_queue_rcv_skb = external dso_local constant [0 x i8], align 1
@__ksymtab_sock_queue_rcv_skb = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @sock_queue_rcv_skb to i32), ptr @__kstrtab_sock_queue_rcv_skb, ptr @__kstrtabns_sock_queue_rcv_skb }, section "___ksymtab+sock_queue_rcv_skb", align 4
@__kstrtab___sk_receive_skb = external dso_local constant [0 x i8], align 1
@__kstrtabns___sk_receive_skb = external dso_local constant [0 x i8], align 1
@__ksymtab___sk_receive_skb = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__sk_receive_skb to i32), ptr @__kstrtab___sk_receive_skb, ptr @__kstrtabns___sk_receive_skb }, section "___ksymtab+__sk_receive_skb", align 4
@__kstrtab___sk_dst_check = external dso_local constant [0 x i8], align 1
@__kstrtabns___sk_dst_check = external dso_local constant [0 x i8], align 1
@__ksymtab___sk_dst_check = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__sk_dst_check to i32), ptr @__kstrtab___sk_dst_check, ptr @__kstrtabns___sk_dst_check }, section "___ksymtab+__sk_dst_check", align 4
@__kstrtab_sk_dst_check = external dso_local constant [0 x i8], align 1
@__kstrtabns_sk_dst_check = external dso_local constant [0 x i8], align 1
@__ksymtab_sk_dst_check = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @sk_dst_check to i32), ptr @__kstrtab_sk_dst_check, ptr @__kstrtabns_sk_dst_check }, section "___ksymtab+sk_dst_check", align 4
@__kstrtab_sock_bindtoindex = external dso_local constant [0 x i8], align 1
@__kstrtabns_sock_bindtoindex = external dso_local constant [0 x i8], align 1
@__ksymtab_sock_bindtoindex = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @sock_bindtoindex to i32), ptr @__kstrtab_sock_bindtoindex, ptr @__kstrtabns_sock_bindtoindex }, section "___ksymtab+sock_bindtoindex", align 4
@sk_mc_loop.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str = private unnamed_addr constant [16 x i8] c"net/core/sock.c\00", align 1
@__kstrtab_sk_mc_loop = external dso_local constant [0 x i8], align 1
@__kstrtabns_sk_mc_loop = external dso_local constant [0 x i8], align 1
@__ksymtab_sk_mc_loop = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @sk_mc_loop to i32), ptr @__kstrtab_sk_mc_loop, ptr @__kstrtabns_sk_mc_loop }, section "___ksymtab+sk_mc_loop", align 4
@__kstrtab_sock_set_reuseaddr = external dso_local constant [0 x i8], align 1
@__kstrtabns_sock_set_reuseaddr = external dso_local constant [0 x i8], align 1
@__ksymtab_sock_set_reuseaddr = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @sock_set_reuseaddr to i32), ptr @__kstrtab_sock_set_reuseaddr, ptr @__kstrtabns_sock_set_reuseaddr }, section "___ksymtab+sock_set_reuseaddr", align 4
@__kstrtab_sock_set_reuseport = external dso_local constant [0 x i8], align 1
@__kstrtabns_sock_set_reuseport = external dso_local constant [0 x i8], align 1
@__ksymtab_sock_set_reuseport = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @sock_set_reuseport to i32), ptr @__kstrtab_sock_set_reuseport, ptr @__kstrtabns_sock_set_reuseport }, section "___ksymtab+sock_set_reuseport", align 4
@__kstrtab_sock_no_linger = external dso_local constant [0 x i8], align 1
@__kstrtabns_sock_no_linger = external dso_local constant [0 x i8], align 1
@__ksymtab_sock_no_linger = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @sock_no_linger to i32), ptr @__kstrtab_sock_no_linger, ptr @__kstrtabns_sock_no_linger }, section "___ksymtab+sock_no_linger", align 4
@__kstrtab_sock_set_priority = external dso_local constant [0 x i8], align 1
@__kstrtabns_sock_set_priority = external dso_local constant [0 x i8], align 1
@__ksymtab_sock_set_priority = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @sock_set_priority to i32), ptr @__kstrtab_sock_set_priority, ptr @__kstrtabns_sock_set_priority }, section "___ksymtab+sock_set_priority", align 4
@__kstrtab_sock_set_sndtimeo = external dso_local constant [0 x i8], align 1
@__kstrtabns_sock_set_sndtimeo = external dso_local constant [0 x i8], align 1
@__ksymtab_sock_set_sndtimeo = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @sock_set_sndtimeo to i32), ptr @__kstrtab_sock_set_sndtimeo, ptr @__kstrtabns_sock_set_sndtimeo }, section "___ksymtab+sock_set_sndtimeo", align 4
@__kstrtab_sock_enable_timestamps = external dso_local constant [0 x i8], align 1
@__kstrtabns_sock_enable_timestamps = external dso_local constant [0 x i8], align 1
@__ksymtab_sock_enable_timestamps = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @sock_enable_timestamps to i32), ptr @__kstrtab_sock_enable_timestamps, ptr @__kstrtabns_sock_enable_timestamps }, section "___ksymtab+sock_enable_timestamps", align 4
@__kstrtab_sock_set_keepalive = external dso_local constant [0 x i8], align 1
@__kstrtabns_sock_set_keepalive = external dso_local constant [0 x i8], align 1
@__ksymtab_sock_set_keepalive = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @sock_set_keepalive to i32), ptr @__kstrtab_sock_set_keepalive, ptr @__kstrtabns_sock_set_keepalive }, section "___ksymtab+sock_set_keepalive", align 4
@__kstrtab_sock_set_rcvbuf = external dso_local constant [0 x i8], align 1
@__kstrtabns_sock_set_rcvbuf = external dso_local constant [0 x i8], align 1
@__ksymtab_sock_set_rcvbuf = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @sock_set_rcvbuf to i32), ptr @__kstrtab_sock_set_rcvbuf, ptr @__kstrtabns_sock_set_rcvbuf }, section "___ksymtab+sock_set_rcvbuf", align 4
@__kstrtab_sock_set_mark = external dso_local constant [0 x i8], align 1
@__kstrtabns_sock_set_mark = external dso_local constant [0 x i8], align 1
@__ksymtab_sock_set_mark = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @sock_set_mark to i32), ptr @__kstrtab_sock_set_mark, ptr @__kstrtabns_sock_set_mark }, section "___ksymtab+sock_set_mark", align 4
@__kstrtab_sock_setsockopt = external dso_local constant [0 x i8], align 1
@__kstrtabns_sock_setsockopt = external dso_local constant [0 x i8], align 1
@__ksymtab_sock_setsockopt = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @sock_setsockopt to i32), ptr @__kstrtab_sock_setsockopt, ptr @__kstrtabns_sock_setsockopt }, section "___ksymtab+sock_setsockopt", align 4
@__kstrtab_sk_alloc = external dso_local constant [0 x i8], align 1
@__kstrtabns_sk_alloc = external dso_local constant [0 x i8], align 1
@__ksymtab_sk_alloc = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @sk_alloc to i32), ptr @__kstrtab_sk_alloc, ptr @__kstrtabns_sk_alloc }, section "___ksymtab+sk_alloc", align 4
@sk_destruct.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@__kstrtab_sk_free = external dso_local constant [0 x i8], align 1
@__kstrtabns_sk_free = external dso_local constant [0 x i8], align 1
@__ksymtab_sk_free = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @sk_free to i32), ptr @__kstrtab_sk_free, ptr @__kstrtabns_sk_free }, section "___ksymtab+sk_free", align 4
@__kstrtab_sk_clone_lock = external dso_local constant [0 x i8], align 1
@__kstrtabns_sk_clone_lock = external dso_local constant [0 x i8], align 1
@__ksymtab_sk_clone_lock = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @sk_clone_lock to i32), ptr @__kstrtab_sk_clone_lock, ptr @__kstrtabns_sk_clone_lock }, section "___ksymtab_gpl+sk_clone_lock", align 4
@__kstrtab_sk_free_unlock_clone = external dso_local constant [0 x i8], align 1
@__kstrtabns_sk_free_unlock_clone = external dso_local constant [0 x i8], align 1
@__ksymtab_sk_free_unlock_clone = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @sk_free_unlock_clone to i32), ptr @__kstrtab_sk_free_unlock_clone, ptr @__kstrtabns_sk_free_unlock_clone }, section "___ksymtab_gpl+sk_free_unlock_clone", align 4
@__kstrtab_sk_setup_caps = external dso_local constant [0 x i8], align 1
@__kstrtabns_sk_setup_caps = external dso_local constant [0 x i8], align 1
@__ksymtab_sk_setup_caps = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @sk_setup_caps to i32), ptr @__kstrtab_sk_setup_caps, ptr @__kstrtabns_sk_setup_caps }, section "___ksymtab_gpl+sk_setup_caps", align 4
@__kstrtab_sock_wfree = external dso_local constant [0 x i8], align 1
@__kstrtabns_sock_wfree = external dso_local constant [0 x i8], align 1
@__ksymtab_sock_wfree = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @sock_wfree to i32), ptr @__kstrtab_sock_wfree, ptr @__kstrtabns_sock_wfree }, section "___ksymtab+sock_wfree", align 4
@__kstrtab_skb_set_owner_w = external dso_local constant [0 x i8], align 1
@__kstrtabns_skb_set_owner_w = external dso_local constant [0 x i8], align 1
@__ksymtab_skb_set_owner_w = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @skb_set_owner_w to i32), ptr @__kstrtab_skb_set_owner_w, ptr @__kstrtabns_skb_set_owner_w }, section "___ksymtab+skb_set_owner_w", align 4
@__kstrtab_skb_orphan_partial = external dso_local constant [0 x i8], align 1
@__kstrtabns_skb_orphan_partial = external dso_local constant [0 x i8], align 1
@__ksymtab_skb_orphan_partial = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @skb_orphan_partial to i32), ptr @__kstrtab_skb_orphan_partial, ptr @__kstrtabns_skb_orphan_partial }, section "___ksymtab+skb_orphan_partial", align 4
@__kstrtab_sock_rfree = external dso_local constant [0 x i8], align 1
@__kstrtabns_sock_rfree = external dso_local constant [0 x i8], align 1
@__ksymtab_sock_rfree = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @sock_rfree to i32), ptr @__kstrtab_sock_rfree, ptr @__kstrtabns_sock_rfree }, section "___ksymtab+sock_rfree", align 4
@__kstrtab_sock_efree = external dso_local constant [0 x i8], align 1
@__kstrtabns_sock_efree = external dso_local constant [0 x i8], align 1
@__ksymtab_sock_efree = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @sock_efree to i32), ptr @__kstrtab_sock_efree, ptr @__kstrtabns_sock_efree }, section "___ksymtab+sock_efree", align 4
@__kstrtab_sock_pfree = external dso_local constant [0 x i8], align 1
@__kstrtabns_sock_pfree = external dso_local constant [0 x i8], align 1
@__ksymtab_sock_pfree = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @sock_pfree to i32), ptr @__kstrtab_sock_pfree, ptr @__kstrtabns_sock_pfree }, section "___ksymtab+sock_pfree", align 4
@__kstrtab_sock_i_uid = external dso_local constant [0 x i8], align 1
@__kstrtabns_sock_i_uid = external dso_local constant [0 x i8], align 1
@__ksymtab_sock_i_uid = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @sock_i_uid to i32), ptr @__kstrtab_sock_i_uid, ptr @__kstrtabns_sock_i_uid }, section "___ksymtab+sock_i_uid", align 4
@__kstrtab_sock_i_ino = external dso_local constant [0 x i8], align 1
@__kstrtabns_sock_i_ino = external dso_local constant [0 x i8], align 1
@__ksymtab_sock_i_ino = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @sock_i_ino to i32), ptr @__kstrtab_sock_i_ino, ptr @__kstrtabns_sock_i_ino }, section "___ksymtab+sock_i_ino", align 4
@__kstrtab_sock_wmalloc = external dso_local constant [0 x i8], align 1
@__kstrtabns_sock_wmalloc = external dso_local constant [0 x i8], align 1
@__ksymtab_sock_wmalloc = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @sock_wmalloc to i32), ptr @__kstrtab_sock_wmalloc, ptr @__kstrtabns_sock_wmalloc }, section "___ksymtab+sock_wmalloc", align 4
@__kstrtab_sock_kmalloc = external dso_local constant [0 x i8], align 1
@__kstrtabns_sock_kmalloc = external dso_local constant [0 x i8], align 1
@__ksymtab_sock_kmalloc = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @sock_kmalloc to i32), ptr @__kstrtab_sock_kmalloc, ptr @__kstrtabns_sock_kmalloc }, section "___ksymtab+sock_kmalloc", align 4
@__kstrtab_sock_kfree_s = external dso_local constant [0 x i8], align 1
@__kstrtabns_sock_kfree_s = external dso_local constant [0 x i8], align 1
@__ksymtab_sock_kfree_s = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @sock_kfree_s to i32), ptr @__kstrtab_sock_kfree_s, ptr @__kstrtabns_sock_kfree_s }, section "___ksymtab+sock_kfree_s", align 4
@__kstrtab_sock_kzfree_s = external dso_local constant [0 x i8], align 1
@__kstrtabns_sock_kzfree_s = external dso_local constant [0 x i8], align 1
@__ksymtab_sock_kzfree_s = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @sock_kzfree_s to i32), ptr @__kstrtab_sock_kzfree_s, ptr @__kstrtabns_sock_kzfree_s }, section "___ksymtab+sock_kzfree_s", align 4
@__kstrtab_sock_alloc_send_pskb = external dso_local constant [0 x i8], align 1
@__kstrtabns_sock_alloc_send_pskb = external dso_local constant [0 x i8], align 1
@__ksymtab_sock_alloc_send_pskb = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @sock_alloc_send_pskb to i32), ptr @__kstrtab_sock_alloc_send_pskb, ptr @__kstrtabns_sock_alloc_send_pskb }, section "___ksymtab+sock_alloc_send_pskb", align 4
@__kstrtab_sock_alloc_send_skb = external dso_local constant [0 x i8], align 1
@__kstrtabns_sock_alloc_send_skb = external dso_local constant [0 x i8], align 1
@__ksymtab_sock_alloc_send_skb = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @sock_alloc_send_skb to i32), ptr @__kstrtab_sock_alloc_send_skb, ptr @__kstrtabns_sock_alloc_send_skb }, section "___ksymtab+sock_alloc_send_skb", align 4
@__kstrtab___sock_cmsg_send = external dso_local constant [0 x i8], align 1
@__kstrtabns___sock_cmsg_send = external dso_local constant [0 x i8], align 1
@__ksymtab___sock_cmsg_send = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__sock_cmsg_send to i32), ptr @__kstrtab___sock_cmsg_send, ptr @__kstrtabns___sock_cmsg_send }, section "___ksymtab+__sock_cmsg_send", align 4
@__kstrtab_sock_cmsg_send = external dso_local constant [0 x i8], align 1
@__kstrtabns_sock_cmsg_send = external dso_local constant [0 x i8], align 1
@__ksymtab_sock_cmsg_send = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @sock_cmsg_send to i32), ptr @__kstrtab_sock_cmsg_send, ptr @__kstrtabns_sock_cmsg_send }, section "___ksymtab+sock_cmsg_send", align 4
@net_high_order_alloc_disable_key = dso_local global %struct.static_key_false zeroinitializer, align 4
@__kstrtab_skb_page_frag_refill = external dso_local constant [0 x i8], align 1
@__kstrtabns_skb_page_frag_refill = external dso_local constant [0 x i8], align 1
@__ksymtab_skb_page_frag_refill = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @skb_page_frag_refill to i32), ptr @__kstrtab_skb_page_frag_refill, ptr @__kstrtabns_skb_page_frag_refill }, section "___ksymtab+skb_page_frag_refill", align 4
@__kstrtab_sk_page_frag_refill = external dso_local constant [0 x i8], align 1
@__kstrtabns_sk_page_frag_refill = external dso_local constant [0 x i8], align 1
@__ksymtab_sk_page_frag_refill = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @sk_page_frag_refill to i32), ptr @__kstrtab_sk_page_frag_refill, ptr @__kstrtabns_sk_page_frag_refill }, section "___ksymtab+sk_page_frag_refill", align 4
@__release_sock.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@__kstrtab_sk_wait_data = external dso_local constant [0 x i8], align 1
@__kstrtabns_sk_wait_data = external dso_local constant [0 x i8], align 1
@__ksymtab_sk_wait_data = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @sk_wait_data to i32), ptr @__kstrtab_sk_wait_data, ptr @__kstrtabns_sk_wait_data }, section "___ksymtab+sk_wait_data", align 4
@__kstrtab___sk_mem_raise_allocated = external dso_local constant [0 x i8], align 1
@__kstrtabns___sk_mem_raise_allocated = external dso_local constant [0 x i8], align 1
@__ksymtab___sk_mem_raise_allocated = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__sk_mem_raise_allocated to i32), ptr @__kstrtab___sk_mem_raise_allocated, ptr @__kstrtabns___sk_mem_raise_allocated }, section "___ksymtab+__sk_mem_raise_allocated", align 4
@__kstrtab___sk_mem_schedule = external dso_local constant [0 x i8], align 1
@__kstrtabns___sk_mem_schedule = external dso_local constant [0 x i8], align 1
@__ksymtab___sk_mem_schedule = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__sk_mem_schedule to i32), ptr @__kstrtab___sk_mem_schedule, ptr @__kstrtabns___sk_mem_schedule }, section "___ksymtab+__sk_mem_schedule", align 4
@__kstrtab___sk_mem_reduce_allocated = external dso_local constant [0 x i8], align 1
@__kstrtabns___sk_mem_reduce_allocated = external dso_local constant [0 x i8], align 1
@__ksymtab___sk_mem_reduce_allocated = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__sk_mem_reduce_allocated to i32), ptr @__kstrtab___sk_mem_reduce_allocated, ptr @__kstrtabns___sk_mem_reduce_allocated }, section "___ksymtab+__sk_mem_reduce_allocated", align 4
@__kstrtab___sk_mem_reclaim = external dso_local constant [0 x i8], align 1
@__kstrtabns___sk_mem_reclaim = external dso_local constant [0 x i8], align 1
@__ksymtab___sk_mem_reclaim = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__sk_mem_reclaim to i32), ptr @__kstrtab___sk_mem_reclaim, ptr @__kstrtabns___sk_mem_reclaim }, section "___ksymtab+__sk_mem_reclaim", align 4
@__kstrtab_sk_set_peek_off = external dso_local constant [0 x i8], align 1
@__kstrtabns_sk_set_peek_off = external dso_local constant [0 x i8], align 1
@__ksymtab_sk_set_peek_off = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @sk_set_peek_off to i32), ptr @__kstrtab_sk_set_peek_off, ptr @__kstrtabns_sk_set_peek_off }, section "___ksymtab_gpl+sk_set_peek_off", align 4
@__kstrtab_sock_no_bind = external dso_local constant [0 x i8], align 1
@__kstrtabns_sock_no_bind = external dso_local constant [0 x i8], align 1
@__ksymtab_sock_no_bind = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @sock_no_bind to i32), ptr @__kstrtab_sock_no_bind, ptr @__kstrtabns_sock_no_bind }, section "___ksymtab+sock_no_bind", align 4
@__kstrtab_sock_no_connect = external dso_local constant [0 x i8], align 1
@__kstrtabns_sock_no_connect = external dso_local constant [0 x i8], align 1
@__ksymtab_sock_no_connect = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @sock_no_connect to i32), ptr @__kstrtab_sock_no_connect, ptr @__kstrtabns_sock_no_connect }, section "___ksymtab+sock_no_connect", align 4
@__kstrtab_sock_no_socketpair = external dso_local constant [0 x i8], align 1
@__kstrtabns_sock_no_socketpair = external dso_local constant [0 x i8], align 1
@__ksymtab_sock_no_socketpair = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @sock_no_socketpair to i32), ptr @__kstrtab_sock_no_socketpair, ptr @__kstrtabns_sock_no_socketpair }, section "___ksymtab+sock_no_socketpair", align 4
@__kstrtab_sock_no_accept = external dso_local constant [0 x i8], align 1
@__kstrtabns_sock_no_accept = external dso_local constant [0 x i8], align 1
@__ksymtab_sock_no_accept = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @sock_no_accept to i32), ptr @__kstrtab_sock_no_accept, ptr @__kstrtabns_sock_no_accept }, section "___ksymtab+sock_no_accept", align 4
@__kstrtab_sock_no_getname = external dso_local constant [0 x i8], align 1
@__kstrtabns_sock_no_getname = external dso_local constant [0 x i8], align 1
@__ksymtab_sock_no_getname = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @sock_no_getname to i32), ptr @__kstrtab_sock_no_getname, ptr @__kstrtabns_sock_no_getname }, section "___ksymtab+sock_no_getname", align 4
@__kstrtab_sock_no_ioctl = external dso_local constant [0 x i8], align 1
@__kstrtabns_sock_no_ioctl = external dso_local constant [0 x i8], align 1
@__ksymtab_sock_no_ioctl = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @sock_no_ioctl to i32), ptr @__kstrtab_sock_no_ioctl, ptr @__kstrtabns_sock_no_ioctl }, section "___ksymtab+sock_no_ioctl", align 4
@__kstrtab_sock_no_listen = external dso_local constant [0 x i8], align 1
@__kstrtabns_sock_no_listen = external dso_local constant [0 x i8], align 1
@__ksymtab_sock_no_listen = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @sock_no_listen to i32), ptr @__kstrtab_sock_no_listen, ptr @__kstrtabns_sock_no_listen }, section "___ksymtab+sock_no_listen", align 4
@__kstrtab_sock_no_shutdown = external dso_local constant [0 x i8], align 1
@__kstrtabns_sock_no_shutdown = external dso_local constant [0 x i8], align 1
@__ksymtab_sock_no_shutdown = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @sock_no_shutdown to i32), ptr @__kstrtab_sock_no_shutdown, ptr @__kstrtabns_sock_no_shutdown }, section "___ksymtab+sock_no_shutdown", align 4
@__kstrtab_sock_no_sendmsg = external dso_local constant [0 x i8], align 1
@__kstrtabns_sock_no_sendmsg = external dso_local constant [0 x i8], align 1
@__ksymtab_sock_no_sendmsg = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @sock_no_sendmsg to i32), ptr @__kstrtab_sock_no_sendmsg, ptr @__kstrtabns_sock_no_sendmsg }, section "___ksymtab+sock_no_sendmsg", align 4
@__kstrtab_sock_no_sendmsg_locked = external dso_local constant [0 x i8], align 1
@__kstrtabns_sock_no_sendmsg_locked = external dso_local constant [0 x i8], align 1
@__ksymtab_sock_no_sendmsg_locked = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @sock_no_sendmsg_locked to i32), ptr @__kstrtab_sock_no_sendmsg_locked, ptr @__kstrtabns_sock_no_sendmsg_locked }, section "___ksymtab+sock_no_sendmsg_locked", align 4
@__kstrtab_sock_no_recvmsg = external dso_local constant [0 x i8], align 1
@__kstrtabns_sock_no_recvmsg = external dso_local constant [0 x i8], align 1
@__ksymtab_sock_no_recvmsg = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @sock_no_recvmsg to i32), ptr @__kstrtab_sock_no_recvmsg, ptr @__kstrtabns_sock_no_recvmsg }, section "___ksymtab+sock_no_recvmsg", align 4
@__kstrtab_sock_no_mmap = external dso_local constant [0 x i8], align 1
@__kstrtabns_sock_no_mmap = external dso_local constant [0 x i8], align 1
@__ksymtab_sock_no_mmap = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @sock_no_mmap to i32), ptr @__kstrtab_sock_no_mmap, ptr @__kstrtabns_sock_no_mmap }, section "___ksymtab+sock_no_mmap", align 4
@__kstrtab_sock_no_sendpage = external dso_local constant [0 x i8], align 1
@__kstrtabns_sock_no_sendpage = external dso_local constant [0 x i8], align 1
@__ksymtab_sock_no_sendpage = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @sock_no_sendpage to i32), ptr @__kstrtab_sock_no_sendpage, ptr @__kstrtabns_sock_no_sendpage }, section "___ksymtab+sock_no_sendpage", align 4
@__kstrtab_sock_no_sendpage_locked = external dso_local constant [0 x i8], align 1
@__kstrtabns_sock_no_sendpage_locked = external dso_local constant [0 x i8], align 1
@__ksymtab_sock_no_sendpage_locked = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @sock_no_sendpage_locked to i32), ptr @__kstrtab_sock_no_sendpage_locked, ptr @__kstrtabns_sock_no_sendpage_locked }, section "___ksymtab+sock_no_sendpage_locked", align 4
@__kstrtab_sk_send_sigurg = external dso_local constant [0 x i8], align 1
@__kstrtabns_sk_send_sigurg = external dso_local constant [0 x i8], align 1
@__ksymtab_sk_send_sigurg = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @sk_send_sigurg to i32), ptr @__kstrtab_sk_send_sigurg, ptr @__kstrtabns_sk_send_sigurg }, section "___ksymtab+sk_send_sigurg", align 4
@__kstrtab_sk_reset_timer = external dso_local constant [0 x i8], align 1
@__kstrtabns_sk_reset_timer = external dso_local constant [0 x i8], align 1
@__ksymtab_sk_reset_timer = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @sk_reset_timer to i32), ptr @__kstrtab_sk_reset_timer, ptr @__kstrtabns_sk_reset_timer }, section "___ksymtab+sk_reset_timer", align 4
@__kstrtab_sk_stop_timer = external dso_local constant [0 x i8], align 1
@__kstrtabns_sk_stop_timer = external dso_local constant [0 x i8], align 1
@__ksymtab_sk_stop_timer = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @sk_stop_timer to i32), ptr @__kstrtab_sk_stop_timer, ptr @__kstrtabns_sk_stop_timer }, section "___ksymtab+sk_stop_timer", align 4
@__kstrtab_sk_stop_timer_sync = external dso_local constant [0 x i8], align 1
@__kstrtabns_sk_stop_timer_sync = external dso_local constant [0 x i8], align 1
@__ksymtab_sk_stop_timer_sync = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @sk_stop_timer_sync to i32), ptr @__kstrtab_sk_stop_timer_sync, ptr @__kstrtabns_sk_stop_timer_sync }, section "___ksymtab+sk_stop_timer_sync", align 4
@sysctl_net_busy_read = external dso_local local_unnamed_addr global i32, section ".data..read_mostly", align 4
@__kstrtab_sock_init_data = external dso_local constant [0 x i8], align 1
@__kstrtabns_sock_init_data = external dso_local constant [0 x i8], align 1
@__ksymtab_sock_init_data = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @sock_init_data to i32), ptr @__kstrtab_sock_init_data, ptr @__kstrtabns_sock_init_data }, section "___ksymtab+sock_init_data", align 4
@__kstrtab_lock_sock_nested = external dso_local constant [0 x i8], align 1
@__kstrtabns_lock_sock_nested = external dso_local constant [0 x i8], align 1
@__ksymtab_lock_sock_nested = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @lock_sock_nested to i32), ptr @__kstrtab_lock_sock_nested, ptr @__kstrtabns_lock_sock_nested }, section "___ksymtab+lock_sock_nested", align 4
@__kstrtab_release_sock = external dso_local constant [0 x i8], align 1
@__kstrtabns_release_sock = external dso_local constant [0 x i8], align 1
@__ksymtab_release_sock = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @release_sock to i32), ptr @__kstrtab_release_sock, ptr @__kstrtabns_release_sock }, section "___ksymtab+release_sock", align 4
@__kstrtab___lock_sock_fast = external dso_local constant [0 x i8], align 1
@__kstrtabns___lock_sock_fast = external dso_local constant [0 x i8], align 1
@__ksymtab___lock_sock_fast = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__lock_sock_fast to i32), ptr @__kstrtab___lock_sock_fast, ptr @__kstrtabns___lock_sock_fast }, section "___ksymtab+__lock_sock_fast", align 4
@__kstrtab_sock_gettstamp = external dso_local constant [0 x i8], align 1
@__kstrtabns_sock_gettstamp = external dso_local constant [0 x i8], align 1
@__ksymtab_sock_gettstamp = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @sock_gettstamp to i32), ptr @__kstrtab_sock_gettstamp, ptr @__kstrtabns_sock_gettstamp }, section "___ksymtab+sock_gettstamp", align 4
@__kstrtab_sock_recv_errqueue = external dso_local constant [0 x i8], align 1
@__kstrtabns_sock_recv_errqueue = external dso_local constant [0 x i8], align 1
@__ksymtab_sock_recv_errqueue = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @sock_recv_errqueue to i32), ptr @__kstrtab_sock_recv_errqueue, ptr @__kstrtabns_sock_recv_errqueue }, section "___ksymtab+sock_recv_errqueue", align 4
@__kstrtab_sock_common_getsockopt = external dso_local constant [0 x i8], align 1
@__kstrtabns_sock_common_getsockopt = external dso_local constant [0 x i8], align 1
@__ksymtab_sock_common_getsockopt = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @sock_common_getsockopt to i32), ptr @__kstrtab_sock_common_getsockopt, ptr @__kstrtabns_sock_common_getsockopt }, section "___ksymtab+sock_common_getsockopt", align 4
@__kstrtab_sock_common_recvmsg = external dso_local constant [0 x i8], align 1
@__kstrtabns_sock_common_recvmsg = external dso_local constant [0 x i8], align 1
@__ksymtab_sock_common_recvmsg = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @sock_common_recvmsg to i32), ptr @__kstrtab_sock_common_recvmsg, ptr @__kstrtabns_sock_common_recvmsg }, section "___ksymtab+sock_common_recvmsg", align 4
@__kstrtab_sock_common_setsockopt = external dso_local constant [0 x i8], align 1
@__kstrtabns_sock_common_setsockopt = external dso_local constant [0 x i8], align 1
@__ksymtab_sock_common_setsockopt = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @sock_common_setsockopt to i32), ptr @__kstrtab_sock_common_setsockopt, ptr @__kstrtabns_sock_common_setsockopt }, section "___ksymtab+sock_common_setsockopt", align 4
@__kstrtab_sk_common_release = external dso_local constant [0 x i8], align 1
@__kstrtabns_sk_common_release = external dso_local constant [0 x i8], align 1
@__ksymtab_sk_common_release = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @sk_common_release to i32), ptr @__kstrtab_sk_common_release, ptr @__kstrtabns_sk_common_release }, section "___ksymtab+sk_common_release", align 4
@__cpu_possible_mask = external dso_local global %struct.cpumask, align 4
@nr_cpu_ids = external dso_local local_unnamed_addr global i32, align 4
@__per_cpu_offset = external dso_local local_unnamed_addr global [16 x i32], align 4
@__kstrtab_sock_prot_inuse_get = external dso_local constant [0 x i8], align 1
@__kstrtabns_sock_prot_inuse_get = external dso_local constant [0 x i8], align 1
@__ksymtab_sock_prot_inuse_get = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @sock_prot_inuse_get to i32), ptr @__kstrtab_sock_prot_inuse_get, ptr @__kstrtabns_sock_prot_inuse_get }, section "___ksymtab_gpl+sock_prot_inuse_get", align 4
@__kstrtab_sock_inuse_get = external dso_local constant [0 x i8], align 1
@__kstrtabns_sock_inuse_get = external dso_local constant [0 x i8], align 1
@__ksymtab_sock_inuse_get = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @sock_inuse_get to i32), ptr @__kstrtab_sock_inuse_get, ptr @__kstrtabns_sock_inuse_get }, section "___ksymtab_gpl+sock_inuse_get", align 4
@__initcall__kmod_sock__641_3598_net_inuse_init1 = internal global ptr @net_inuse_init, section ".initcall1.init", align 4
@.str.1 = private unnamed_addr constant [43 x i8] c"\012sock: %s: Can't create sock SLAB cache!\0A\00", align 1
@proto_list_mutex = internal global %struct.mutex { %struct.atomic_t zeroinitializer, %struct.raw_spinlock zeroinitializer, %struct.optimistic_spin_queue zeroinitializer, %struct.list_head { ptr getelementptr (i8, ptr @proto_list_mutex, i64 12), ptr getelementptr (i8, ptr @proto_list_mutex, i64 12) } }, align 4
@proto_list = internal global %struct.list_head { ptr @proto_list, ptr @proto_list }, align 4
@__kstrtab_proto_register = external dso_local constant [0 x i8], align 1
@__kstrtabns_proto_register = external dso_local constant [0 x i8], align 1
@__ksymtab_proto_register = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @proto_register to i32), ptr @__kstrtab_proto_register, ptr @__kstrtabns_proto_register }, section "___ksymtab+proto_register", align 4
@__kstrtab_proto_unregister = external dso_local constant [0 x i8], align 1
@__kstrtabns_proto_unregister = external dso_local constant [0 x i8], align 1
@__ksymtab_proto_unregister = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @proto_unregister to i32), ptr @__kstrtab_proto_unregister, ptr @__kstrtabns_proto_unregister }, section "___ksymtab+proto_unregister", align 4
@.str.2 = private unnamed_addr constant [27 x i8] c"net-pf-%d-proto-%d-type-%d\00", align 1
@inet_protos = external dso_local global [256 x ptr], align 4
@.str.3 = private unnamed_addr constant [30 x i8] c"net-pf-%d-proto-%d-type-%d-%d\00", align 1
@__kstrtab_sock_load_diag_module = external dso_local constant [0 x i8], align 1
@__kstrtabns_sock_load_diag_module = external dso_local constant [0 x i8], align 1
@__ksymtab_sock_load_diag_module = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @sock_load_diag_module to i32), ptr @__kstrtab_sock_load_diag_module, ptr @__kstrtabns_sock_load_diag_module }, section "___ksymtab+sock_load_diag_module", align 4
@__initcall__kmod_sock__644_3907_proto_init4 = internal global ptr @proto_init, section ".initcall4.init", align 4
@__kstrtab_sk_busy_loop_end = external dso_local constant [0 x i8], align 1
@__kstrtabns_sk_busy_loop_end = external dso_local constant [0 x i8], align 1
@__ksymtab_sk_busy_loop_end = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @sk_busy_loop_end to i32), ptr @__kstrtab_sk_busy_loop_end, ptr @__kstrtabns_sk_busy_loop_end }, section "___ksymtab+sk_busy_loop_end", align 4
@__kstrtab_sock_bind_add = external dso_local constant [0 x i8], align 1
@__kstrtabns_sock_bind_add = external dso_local constant [0 x i8], align 1
@__ksymtab_sock_bind_add = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @sock_bind_add to i32), ptr @__kstrtab_sock_bind_add, ptr @__kstrtabns_sock_bind_add }, section "___ksymtab+sock_bind_add", align 4
@init_net = external dso_local global %struct.net, align 64
@static_key_initialized = external dso_local local_unnamed_addr global i8, align 1
@.str.4 = private unnamed_addr constant [27 x i8] c"include/linux/jump_label.h\00", align 1
@.str.5 = private unnamed_addr constant [61 x i8] c"%s(): static key '%pS' used before call to jump_label_init()\00", align 1
@__func__.static_key_slow_inc = private unnamed_addr constant [20 x i8] c"static_key_slow_inc\00", align 1
@__func__.static_key_slow_dec = private unnamed_addr constant [20 x i8] c"static_key_slow_dec\00", align 1
@__tracepoint_inet_sk_error_report = external dso_local global %struct.tracepoint, align 4
@__cpu_online_mask = external dso_local global %struct.cpumask, align 4
@check_copy_size.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.7 = private unnamed_addr constant [28 x i8] c"include/linux/thread_info.h\00", align 1
@.str.8 = private unnamed_addr constant [38 x i8] c"Buffer overflow detected (%d < %lu)!\0A\00", align 1
@__tracepoint_sock_rcvqueue_full = external dso_local global %struct.tracepoint, align 4
@softnet_data = external dso_local global %struct.softnet_data, section ".data..percpu..shared_aligned", align 64
@.str.11 = private unnamed_addr constant [37 x i8] c"\013sock: %s: sock not bind to device\0A\00", align 1
@__func__.sock_timestamping_bind_phc = private unnamed_addr constant [27 x i8] c"sock_timestamping_bind_phc\00", align 1
@sock_set_timeout.warned = internal unnamed_addr global i32 0, section ".data..read_mostly", align 4
@.str.12 = private unnamed_addr constant [57 x i8] c"\016sock: %s: `%s' (pid %d) tries to set negative timeout\0A\00", align 1
@__func__.sock_set_timeout = private unnamed_addr constant [17 x i8] c"sock_set_timeout\00", align 1
@overflowuid = external dso_local local_unnamed_addr global i32, align 4
@overflowgid = external dso_local local_unnamed_addr global i32, align 4
@init_on_alloc = external dso_local global %struct.static_key_false, align 4
@sock_lock_init.__key = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.13 = private unnamed_addr constant [16 x i8] c"&sk->sk_lock.wq\00", align 1
@sock_lock_init.__key.14 = internal global %struct.lock_class_key zeroinitializer, align 1
@__sock_kfree_s.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@__tracepoint_sock_exceed_buf_limit = external dso_local global %struct.tracepoint, align 4
@movable_zone = external dso_local local_unnamed_addr global i32, align 4
@net_inuse_ops = internal global %struct.pernet_operations { %struct.list_head zeroinitializer, ptr @sock_inuse_init_net, ptr null, ptr @sock_inuse_exit_net, ptr null, ptr null, i32 0 }, align 4
@.str.438 = private unnamed_addr constant [37 x i8] c"Cannot initialize net inuse counters\00", align 1
@.str.439 = private unnamed_addr constant [16 x i8] c"request_sock_%s\00", align 1
@.str.440 = private unnamed_addr constant [51 x i8] c"\012sock: %s: Can't create request sock SLAB cache!\0A\00", align 1
@.str.441 = private unnamed_addr constant [11 x i8] c"tw_sock_%s\00", align 1
@.str.442 = private unnamed_addr constant [52 x i8] c"\012sock: %s: Can't create timewait sock SLAB cache!\0A\00", align 1
@proto_inuse_idx = internal global [2 x i32] zeroinitializer, align 4
@.str.443 = private unnamed_addr constant [34 x i8] c"\013sock: PROTO_INUSE_NR exhausted\0A\00", align 1
@proto_net_ops = internal global %struct.pernet_operations { %struct.list_head zeroinitializer, ptr @proto_init_net, ptr null, ptr @proto_exit_net, ptr null, ptr null, i32 0 }, section ".init.data", align 4
@.str.444 = private unnamed_addr constant [10 x i8] c"protocols\00", align 1
@proto_seq_ops = internal constant %struct.seq_operations { ptr @proto_seq_start, ptr @proto_seq_stop, ptr @proto_seq_next, ptr @proto_seq_show }, align 4
@.str.445 = private unnamed_addr constant [44 x i8] c"%-9s %-4s %-8s %-6s %-5s %-7s %-4s %-10s %s\00", align 1
@.str.446 = private unnamed_addr constant [9 x i8] c"protocol\00", align 1
@.str.447 = private unnamed_addr constant [5 x i8] c"size\00", align 1
@.str.448 = private unnamed_addr constant [8 x i8] c"sockets\00", align 1
@.str.449 = private unnamed_addr constant [7 x i8] c"memory\00", align 1
@.str.450 = private unnamed_addr constant [6 x i8] c"press\00", align 1
@.str.451 = private unnamed_addr constant [7 x i8] c"maxhdr\00", align 1
@.str.452 = private unnamed_addr constant [5 x i8] c"slab\00", align 1
@.str.453 = private unnamed_addr constant [7 x i8] c"module\00", align 1
@.str.454 = private unnamed_addr constant [58 x i8] c"cl co di ac io in de sh ss gs se re sp bi br ha uh gp em\0A\00", align 1
@.str.455 = private unnamed_addr constant [121 x i8] c"%-9s %4u %6d  %6ld   %-3s %6u   %-3s  %-10s %2c %2c %2c %2c %2c %2c %2c %2c %2c %2c %2c %2c %2c %2c %2c %2c %2c %2c %2c\0A\00", align 1
@.str.456 = private unnamed_addr constant [3 x i8] c"no\00", align 1
@.str.457 = private unnamed_addr constant [4 x i8] c"yes\00", align 1
@.str.458 = private unnamed_addr constant [7 x i8] c"kernel\00", align 1
@.str.459 = private unnamed_addr constant [3 x i8] c"NI\00", align 1
@llvm.compiler.used = appending global [96 x ptr] [ptr @__initcall__kmod_sock__641_3598_net_inuse_init1, ptr @__initcall__kmod_sock__644_3907_proto_init4, ptr @__ksymtab___lock_sock_fast, ptr @__ksymtab___sk_backlog_rcv, ptr @__ksymtab___sk_dst_check, ptr @__ksymtab___sk_mem_raise_allocated, ptr @__ksymtab___sk_mem_reclaim, ptr @__ksymtab___sk_mem_reduce_allocated, ptr @__ksymtab___sk_mem_schedule, ptr @__ksymtab___sk_receive_skb, ptr @__ksymtab___sock_cmsg_send, ptr @__ksymtab___sock_queue_rcv_skb, ptr @__ksymtab_lock_sock_nested, ptr @__ksymtab_memalloc_socks_key, ptr @__ksymtab_proto_register, ptr @__ksymtab_proto_unregister, ptr @__ksymtab_release_sock, ptr @__ksymtab_sk_alloc, ptr @__ksymtab_sk_busy_loop_end, ptr @__ksymtab_sk_capable, ptr @__ksymtab_sk_clear_memalloc, ptr @__ksymtab_sk_clone_lock, ptr @__ksymtab_sk_common_release, ptr @__ksymtab_sk_dst_check, ptr @__ksymtab_sk_error_report, ptr @__ksymtab_sk_free, ptr @__ksymtab_sk_free_unlock_clone, ptr @__ksymtab_sk_mc_loop, ptr @__ksymtab_sk_net_capable, ptr @__ksymtab_sk_ns_capable, ptr @__ksymtab_sk_page_frag_refill, ptr @__ksymtab_sk_reset_timer, ptr @__ksymtab_sk_send_sigurg, ptr @__ksymtab_sk_set_memalloc, ptr @__ksymtab_sk_set_peek_off, ptr @__ksymtab_sk_setup_caps, ptr @__ksymtab_sk_stop_timer, ptr @__ksymtab_sk_stop_timer_sync, ptr @__ksymtab_sk_wait_data, ptr @__ksymtab_skb_orphan_partial, ptr @__ksymtab_skb_page_frag_refill, ptr @__ksymtab_skb_set_owner_w, ptr @__ksymtab_sock_alloc_send_pskb, ptr @__ksymtab_sock_alloc_send_skb, ptr @__ksymtab_sock_bind_add, ptr @__ksymtab_sock_bindtoindex, ptr @__ksymtab_sock_cmsg_send, ptr @__ksymtab_sock_common_getsockopt, ptr @__ksymtab_sock_common_recvmsg, ptr @__ksymtab_sock_common_setsockopt, ptr @__ksymtab_sock_copy_user_timeval, ptr @__ksymtab_sock_efree, ptr @__ksymtab_sock_enable_timestamps, ptr @__ksymtab_sock_get_timeout, ptr @__ksymtab_sock_gettstamp, ptr @__ksymtab_sock_i_ino, ptr @__ksymtab_sock_i_uid, ptr @__ksymtab_sock_init_data, ptr @__ksymtab_sock_inuse_get, ptr @__ksymtab_sock_kfree_s, ptr @__ksymtab_sock_kmalloc, ptr @__ksymtab_sock_kzfree_s, ptr @__ksymtab_sock_load_diag_module, ptr @__ksymtab_sock_no_accept, ptr @__ksymtab_sock_no_bind, ptr @__ksymtab_sock_no_connect, ptr @__ksymtab_sock_no_getname, ptr @__ksymtab_sock_no_ioctl, ptr @__ksymtab_sock_no_linger, ptr @__ksymtab_sock_no_listen, ptr @__ksymtab_sock_no_mmap, ptr @__ksymtab_sock_no_recvmsg, ptr @__ksymtab_sock_no_sendmsg, ptr @__ksymtab_sock_no_sendmsg_locked, ptr @__ksymtab_sock_no_sendpage, ptr @__ksymtab_sock_no_sendpage_locked, ptr @__ksymtab_sock_no_shutdown, ptr @__ksymtab_sock_no_socketpair, ptr @__ksymtab_sock_pfree, ptr @__ksymtab_sock_prot_inuse_get, ptr @__ksymtab_sock_queue_rcv_skb, ptr @__ksymtab_sock_recv_errqueue, ptr @__ksymtab_sock_rfree, ptr @__ksymtab_sock_set_keepalive, ptr @__ksymtab_sock_set_mark, ptr @__ksymtab_sock_set_priority, ptr @__ksymtab_sock_set_rcvbuf, ptr @__ksymtab_sock_set_reuseaddr, ptr @__ksymtab_sock_set_reuseport, ptr @__ksymtab_sock_set_sndtimeo, ptr @__ksymtab_sock_setsockopt, ptr @__ksymtab_sock_wfree, ptr @__ksymtab_sock_wmalloc, ptr @__ksymtab_sysctl_optmem_max, ptr @__ksymtab_sysctl_rmem_max, ptr @__ksymtab_sysctl_wmem_max], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local zeroext i1 @sk_ns_capable(ptr nocapture noundef readonly %0, ptr noundef %1, i32 noundef %2) #0 {
  %4 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 71
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.socket, ptr %5, i32 0, i32 3
  %7 = load ptr, ptr %6, align 4
  %8 = tail call zeroext i1 @file_ns_capable(ptr noundef %7, ptr noundef %1, i32 noundef %2) #21
  br i1 %8, label %9, label %11

9:                                                ; preds = %3
  %10 = tail call zeroext i1 @ns_capable(ptr noundef %1, i32 noundef %2) #21
  br label %11

11:                                               ; preds = %9, %3
  %12 = phi i1 [ false, %3 ], [ %10, %9 ]
  ret i1 %12
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @file_ns_capable(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @ns_capable(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local zeroext i1 @sk_capable(ptr nocapture noundef readonly %0, i32 noundef %1) #0 {
  %3 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 71
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.socket, ptr %4, i32 0, i32 3
  %6 = load ptr, ptr %5, align 4
  %7 = tail call zeroext i1 @file_ns_capable(ptr noundef %6, ptr noundef nonnull @init_user_ns, i32 noundef %1) #21
  br i1 %7, label %8, label %10

8:                                                ; preds = %2
  %9 = tail call zeroext i1 @ns_capable(ptr noundef nonnull @init_user_ns, i32 noundef %1) #21
  br label %10

10:                                               ; preds = %8, %2
  %11 = phi i1 [ false, %2 ], [ %9, %8 ]
  ret i1 %11
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local zeroext i1 @sk_net_capable(ptr nocapture noundef readonly %0, i32 noundef %1) #0 {
  %3 = load ptr, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 11), align 4
  %4 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 71
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.socket, ptr %5, i32 0, i32 3
  %7 = load ptr, ptr %6, align 4
  %8 = tail call zeroext i1 @file_ns_capable(ptr noundef %7, ptr noundef %3, i32 noundef %1) #21
  br i1 %8, label %9, label %11

9:                                                ; preds = %2
  %10 = tail call zeroext i1 @ns_capable(ptr noundef %3, i32 noundef %1) #21
  br label %11

11:                                               ; preds = %9, %2
  %12 = phi i1 [ false, %2 ], [ %10, %9 ]
  ret i1 %12
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @sk_set_memalloc(ptr nocapture noundef %0) #0 {
  %2 = getelementptr inbounds %struct.sock_common, ptr %0, i32 0, i32 13
  %3 = load i32, ptr %2, align 4
  %4 = or i32 %3, 16384
  store i32 %4, ptr %2, align 4
  %5 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 41
  %6 = load i32, ptr %5, align 8
  %7 = or i32 %6, 131072
  store i32 %7, ptr %5, align 8
  %8 = load i8, ptr @static_key_initialized, align 1, !range !9
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %10, label %11, !prof !10

10:                                               ; preds = %1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 290, i32 noundef 9, ptr noundef nonnull @.str.5, ptr noundef nonnull @__func__.static_key_slow_inc, ptr noundef nonnull @memalloc_socks_key) #21
  br label %11

11:                                               ; preds = %10, %1
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr nonnull @memalloc_socks_key) #21, !srcloc !11
  %12 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) @memalloc_socks_key, ptr nonnull @memalloc_socks_key, i32 1, ptr nonnull elementtype(i32) @memalloc_socks_key) #21, !srcloc !12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @sk_clear_memalloc(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.sock_common, ptr %0, i32 0, i32 13
  %3 = load i32, ptr %2, align 4
  %4 = and i32 %3, -16385
  store i32 %4, ptr %2, align 4
  %5 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 41
  %6 = load i32, ptr %5, align 8
  %7 = and i32 %6, -131073
  store i32 %7, ptr %5, align 8
  %8 = load i8, ptr @static_key_initialized, align 1, !range !9
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %10, label %11, !prof !10

10:                                               ; preds = %1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 296, i32 noundef 9, ptr noundef nonnull @.str.5, ptr noundef nonnull @__func__.static_key_slow_dec, ptr noundef nonnull @memalloc_socks_key) #21
  br label %11

11:                                               ; preds = %10, %1
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr nonnull @memalloc_socks_key) #21, !srcloc !11
  %12 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) @memalloc_socks_key, ptr nonnull @memalloc_socks_key, i32 1, ptr nonnull elementtype(i32) @memalloc_socks_key) #21, !srcloc !13
  %13 = getelementptr inbounds %struct.sock_common, ptr %0, i32 0, i32 8
  %14 = load ptr, ptr %13, align 8
  %15 = getelementptr inbounds %struct.proto, ptr %14, i32 0, i32 30
  %16 = load ptr, ptr %15, align 4
  %17 = icmp eq ptr %16, null
  br i1 %17, label %66, label %18

18:                                               ; preds = %11
  %19 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 11
  %20 = load i32, ptr %19, align 4
  %21 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 12
  %22 = load i32, ptr %21, align 8
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %32, label %24, !prof !14

24:                                               ; preds = %18
  %25 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 22
  %26 = load i32, ptr %25, align 4
  %27 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 9
  %28 = load volatile i32, ptr %27, align 4
  %29 = add i32 %26, %28
  %30 = sub i32 %22, %29
  %31 = tail call i32 @llvm.smax.i32(i32 %30, i32 0) #21
  br label %32

32:                                               ; preds = %24, %18
  %33 = phi i32 [ %31, %24 ], [ 0, %18 ]
  %34 = sub i32 %20, %33
  %35 = icmp sgt i32 %34, 4095
  br i1 %35, label %36, label %66

36:                                               ; preds = %32
  %37 = lshr i32 %34, 12
  %38 = and i32 %34, -4096
  %39 = sub i32 %20, %38
  store i32 %39, ptr %19, align 4
  %40 = load ptr, ptr %15, align 4
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %40) #21, !srcloc !11
  %41 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %40, ptr %40, i32 %37, ptr elementtype(i32) %40) #21, !srcloc !13
  %42 = load ptr, ptr %13, align 8
  %43 = getelementptr inbounds %struct.proto, ptr %42, i32 0, i32 32
  %44 = load ptr, ptr %43, align 4
  %45 = icmp eq ptr %44, null
  br i1 %45, label %66, label %46

46:                                               ; preds = %36
  %47 = load i32, ptr %44, align 4
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %66, label %49

49:                                               ; preds = %46
  %50 = getelementptr inbounds %struct.proto, ptr %42, i32 0, i32 30
  %51 = load ptr, ptr %50, align 4
  %52 = load volatile i32, ptr %51, align 4
  %53 = getelementptr inbounds %struct.proto, ptr %42, i32 0, i32 33
  %54 = load ptr, ptr %53, align 4
  %55 = load i32, ptr %54, align 4
  %56 = icmp slt i32 %52, %55
  br i1 %56, label %57, label %66

57:                                               ; preds = %49
  %58 = getelementptr inbounds %struct.proto, ptr %42, i32 0, i32 29
  %59 = load ptr, ptr %58, align 4
  %60 = icmp eq ptr %59, null
  br i1 %60, label %62, label %61

61:                                               ; preds = %57
  tail call void %59(ptr noundef %0) #21
  br label %66

62:                                               ; preds = %57
  %63 = load volatile i32, ptr %44, align 4
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %66, label %65

65:                                               ; preds = %62
  store volatile i32 0, ptr %44, align 4
  br label %66

66:                                               ; preds = %65, %62, %61, %49, %46, %36, %32, %11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__sk_backlog_rcv(ptr noundef %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.sock_common, ptr %0, i32 0, i32 13
  %4 = load volatile i32, ptr %3, align 4
  %5 = and i32 %4, 16384
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %8, !prof !10

7:                                                ; preds = %2
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22net/core/sock.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 325, 0\0A.popsection", ""() #21, !srcloc !15
  unreachable

8:                                                ; preds = %2
  %9 = tail call ptr @llvm.thread.pointer() #21
  %10 = getelementptr inbounds %struct.task_struct, ptr %9, i32 0, i32 4
  %11 = load i32, ptr %10, align 4
  %12 = and i32 %11, 2048
  %13 = or i32 %11, 2048
  store i32 %13, ptr %10, align 4
  %14 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 79
  %15 = load ptr, ptr %14, align 4
  %16 = tail call i32 %15(ptr noundef %0, ptr noundef %1) #21
  %17 = load i32, ptr %10, align 4
  %18 = and i32 %17, -2049
  %19 = or i32 %18, %12
  store i32 %19, ptr %10, align 4
  ret i32 %16
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @sk_error_report(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 78
  %3 = load ptr, ptr %2, align 8
  tail call void %3(ptr noundef %0) #21
  %4 = getelementptr inbounds %struct.sock_common, ptr %0, i32 0, i32 3
  %5 = load i16, ptr %4, align 8
  switch i16 %5, label %22 [
    i16 2, label %6
    i16 10, label %6
  ]

6:                                                ; preds = %1, %1
  %7 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_inet_sk_error_report, i32 0, i32 1), align 4
  %8 = icmp sgt i32 %7, 0
  br i1 %8, label %9, label %22

9:                                                ; preds = %6
  %10 = tail call ptr @llvm.thread.pointer() #21
  %11 = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 2
  %12 = load i32, ptr %11, align 8
  %13 = lshr i32 %12, 5
  %14 = getelementptr i32, ptr @__cpu_online_mask, i32 %13
  %15 = load volatile i32, ptr %14, align 4
  %16 = and i32 %12, 31
  %17 = shl nuw i32 1, %16
  %18 = and i32 %17, %15
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %22, label %20

20:                                               ; preds = %9
  tail call void asm sideeffect "", "~{memory}"() #21, !srcloc !16
  %21 = tail call i32 @__traceiter_inet_sk_error_report(ptr noundef null, ptr noundef %0) #21
  tail call void asm sideeffect "", "~{memory}"() #21, !srcloc !17
  br label %22

22:                                               ; preds = %20, %9, %6, %1
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn writeonly uwtable(sync)
define dso_local i32 @sock_get_timeout(i32 noundef %0, ptr nocapture noundef writeonly %1, i1 noundef zeroext %2) #3 {
  %4 = icmp eq i32 %0, 2147483647
  br i1 %4, label %12, label %5

5:                                                ; preds = %3
  %6 = sdiv i32 %0, 100
  %7 = sext i32 %6 to i64
  %8 = mul i32 %6, 100
  %9 = sub i32 %0, %8
  %10 = mul nsw i32 %9, 10000
  %11 = sext i32 %10 to i64
  br label %12

12:                                               ; preds = %5, %3
  %13 = phi i64 [ %7, %5 ], [ 0, %3 ]
  %14 = phi i64 [ %11, %5 ], [ 0, %3 ]
  br i1 %2, label %15, label %19

15:                                               ; preds = %12
  %16 = trunc i64 %13 to i32
  %17 = trunc i64 %14 to i32
  store i32 %16, ptr %1, align 4
  %18 = getelementptr inbounds i8, ptr %1, i32 4
  store i32 %17, ptr %18, align 4
  br label %21

19:                                               ; preds = %12
  store i64 %13, ptr %1, align 8
  %20 = getelementptr inbounds i8, ptr %1, i32 8
  store i64 %14, ptr %20, align 8
  br label %21

21:                                               ; preds = %19, %15
  %22 = phi i32 [ 8, %15 ], [ 16, %19 ]
  ret i32 %22
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #4

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #5

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @sock_copy_user_timeval(ptr noundef %0, [2 x i32] %1, i32 noundef %2, i1 noundef zeroext %3) #0 {
  %5 = alloca %struct.__kernel_old_timeval, align 8
  br i1 %3, label %6, label %47

6:                                                ; preds = %4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #21
  store i64 0, ptr %5, align 8, !annotation !18
  %7 = icmp ult i32 %2, 8
  br i1 %7, label %39, label %8

8:                                                ; preds = %6
  %9 = extractvalue [2 x i32] %1, 0
  %10 = inttoptr i32 %9 to ptr
  %11 = extractvalue [2 x i32] %1, 1
  %12 = and i32 %11, 1
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %34

14:                                               ; preds = %8
  %15 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %10, i32 8, i32 -1090519040) #22, !srcloc !19
  %16 = extractvalue { i32, i32 } %15, 0
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %30, !prof !14

18:                                               ; preds = %14
  %19 = tail call ptr @llvm.thread.pointer() #21
  %20 = getelementptr inbounds %struct.thread_info, ptr %19, i32 0, i32 3
  %21 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %20) #14, !srcloc !20
  %22 = and i32 %21, -13
  %23 = or i32 %22, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %23) #21, !srcloc !21
  tail call void asm sideeffect "isb ", "~{memory}"() #21, !srcloc !22
  %24 = call i32 @arm_copy_from_user(ptr noundef nonnull %5, ptr noundef %10, i32 noundef 8) #21
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %21) #21, !srcloc !21
  call void asm sideeffect "isb ", "~{memory}"() #21, !srcloc !22
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %30, !prof !14

26:                                               ; preds = %18
  %27 = load i32, ptr %5, align 8
  %28 = getelementptr inbounds %struct.__kernel_old_timeval, ptr %5, i32 0, i32 1
  %29 = load i32, ptr %28, align 4
  br label %41

30:                                               ; preds = %18, %14
  %31 = phi i32 [ %24, %18 ], [ 8, %14 ]
  %32 = sub i32 8, %31
  %33 = getelementptr i8, ptr %5, i32 %32
  call void @llvm.memset.p0.i32(ptr align 1 %33, i8 0, i32 %31, i1 false) #21
  br label %39

34:                                               ; preds = %8
  %35 = load i64, ptr %10, align 1
  %36 = trunc i64 %35 to i32
  %37 = lshr i64 %35, 32
  %38 = trunc i64 %37 to i32
  br label %41

39:                                               ; preds = %30, %6
  %40 = phi i32 [ -14, %30 ], [ -22, %6 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #21
  br label %72

41:                                               ; preds = %34, %26
  %42 = phi i32 [ %29, %26 ], [ %38, %34 ]
  %43 = phi i32 [ %27, %26 ], [ %36, %34 ]
  %44 = sext i32 %43 to i64
  store i64 %44, ptr %0, align 8
  %45 = sext i32 %42 to i64
  %46 = getelementptr inbounds %struct.__kernel_sock_timeval, ptr %0, i32 0, i32 1
  store i64 %45, ptr %46, align 8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #21
  br label %72

47:                                               ; preds = %4
  %48 = icmp ult i32 %2, 16
  br i1 %48, label %72, label %49

49:                                               ; preds = %47
  %50 = extractvalue [2 x i32] %1, 0
  %51 = inttoptr i32 %50 to ptr
  %52 = extractvalue [2 x i32] %1, 1
  %53 = and i32 %52, 1
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %55, label %71

55:                                               ; preds = %49
  %56 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %51, i32 16, i32 -1090519040) #22, !srcloc !19
  %57 = extractvalue { i32, i32 } %56, 0
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %59, label %67, !prof !14

59:                                               ; preds = %55
  %60 = tail call ptr @llvm.thread.pointer() #21
  %61 = getelementptr inbounds %struct.thread_info, ptr %60, i32 0, i32 3
  %62 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %61) #14, !srcloc !20
  %63 = and i32 %62, -13
  %64 = or i32 %63, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %64) #21, !srcloc !21
  tail call void asm sideeffect "isb ", "~{memory}"() #21, !srcloc !22
  %65 = tail call i32 @arm_copy_from_user(ptr noundef %0, ptr noundef %51, i32 noundef 16) #21
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %62) #21, !srcloc !21
  tail call void asm sideeffect "isb ", "~{memory}"() #21, !srcloc !22
  %66 = icmp eq i32 %65, 0
  br i1 %66, label %72, label %67, !prof !14

67:                                               ; preds = %59, %55
  %68 = phi i32 [ %65, %59 ], [ 16, %55 ]
  %69 = sub i32 16, %68
  %70 = getelementptr i8, ptr %0, i32 %69
  tail call void @llvm.memset.p0.i32(ptr align 1 %70, i8 0, i32 %68, i1 false) #21
  br label %72

71:                                               ; preds = %49
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(16) %0, ptr noundef align 1 dereferenceable(16) %51, i32 16, i1 false) #21
  br label %72

72:                                               ; preds = %71, %67, %59, %47, %41, %39
  %73 = phi i32 [ -22, %47 ], [ %40, %39 ], [ -14, %67 ], [ 0, %41 ], [ 0, %71 ], [ 0, %59 ]
  ret i32 %73
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @copy_from_sockptr(ptr noundef %0, [2 x i32] %1, i32 noundef %2) unnamed_addr #6 {
  %4 = extractvalue [2 x i32] %1, 0
  %5 = inttoptr i32 %4 to ptr
  %6 = extractvalue [2 x i32] %1, 1
  %7 = and i32 %6, 1
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %33

9:                                                ; preds = %3
  %10 = icmp slt i32 %2, 0
  %11 = load i1, ptr @check_copy_size.__already_done, align 1
  %12 = xor i1 %11, true
  %13 = select i1 %10, i1 %12, i1 false
  br i1 %13, label %14, label %15, !prof !10

14:                                               ; preds = %9
  store i1 true, ptr @check_copy_size.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.7, i32 noundef 230, i32 noundef 9, ptr noundef null) #21
  br label %15

15:                                               ; preds = %14, %9
  br i1 %10, label %34, label %16, !prof !10

16:                                               ; preds = %15
  %17 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %5, i32 %2, i32 -1090519040) #22, !srcloc !19
  %18 = extractvalue { i32, i32 } %17, 0
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %27, !prof !14

20:                                               ; preds = %16
  %21 = tail call ptr @llvm.thread.pointer() #21
  %22 = getelementptr inbounds %struct.thread_info, ptr %21, i32 0, i32 3
  %23 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %22) #14, !srcloc !20
  %24 = and i32 %23, -13
  %25 = or i32 %24, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %25) #21, !srcloc !21
  tail call void asm sideeffect "isb ", "~{memory}"() #21, !srcloc !22
  %26 = tail call i32 @arm_copy_from_user(ptr noundef %0, ptr noundef %5, i32 noundef %2) #21
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %23) #21, !srcloc !21
  tail call void asm sideeffect "isb ", "~{memory}"() #21, !srcloc !22
  br label %27

27:                                               ; preds = %20, %16
  %28 = phi i32 [ %26, %20 ], [ %2, %16 ]
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %34, label %30, !prof !14

30:                                               ; preds = %27
  %31 = sub i32 %2, %28
  %32 = getelementptr i8, ptr %0, i32 %31
  tail call void @llvm.memset.p0.i32(ptr align 1 %32, i8 0, i32 %28, i1 false) #21
  br label %34

33:                                               ; preds = %3
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 1 %0, ptr align 1 %5, i32 %2, i1 false) #21
  br label %34

34:                                               ; preds = %33, %30, %27, %15
  %35 = phi i32 [ 0, %33 ], [ %2, %15 ], [ 0, %27 ], [ %28, %30 ]
  ret i32 %35
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__sock_queue_rcv_skb(ptr noundef %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 8
  %4 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 9
  %5 = load volatile i32, ptr %4, align 4
  %6 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 15
  %7 = load i32, ptr %6, align 4
  %8 = icmp slt i32 %5, %7
  br i1 %8, label %27, label %9

9:                                                ; preds = %2
  %10 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 5
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %10) #21, !srcloc !11
  %11 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %10, ptr %10, i32 1, ptr elementtype(i32) %10) #21, !srcloc !12
  %12 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_sock_rcvqueue_full, i32 0, i32 1), align 4
  %13 = icmp sgt i32 %12, 0
  br i1 %13, label %14, label %135

14:                                               ; preds = %9
  %15 = tail call ptr @llvm.thread.pointer() #21
  %16 = getelementptr inbounds %struct.thread_info, ptr %15, i32 0, i32 2
  %17 = load i32, ptr %16, align 8
  %18 = lshr i32 %17, 5
  %19 = getelementptr i32, ptr @__cpu_online_mask, i32 %18
  %20 = load volatile i32, ptr %19, align 4
  %21 = and i32 %17, 31
  %22 = shl nuw i32 1, %21
  %23 = and i32 %22, %20
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %135, label %25

25:                                               ; preds = %14
  tail call void asm sideeffect "", "~{memory}"() #21, !srcloc !23
  %26 = tail call i32 @__traceiter_sock_rcvqueue_full(ptr noundef null, ptr noundef %0, ptr noundef %1) #21
  tail call void asm sideeffect "", "~{memory}"() #21, !srcloc !24
  br label %135

27:                                               ; preds = %2
  %28 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 18
  %29 = load i32, ptr %28, align 8
  %30 = getelementptr inbounds %struct.sock_common, ptr %0, i32 0, i32 8
  %31 = load ptr, ptr %30, align 8
  %32 = getelementptr inbounds %struct.proto, ptr %31, i32 0, i32 30
  %33 = load ptr, ptr %32, align 4
  %34 = icmp eq ptr %33, null
  br i1 %34, label %56, label %35

35:                                               ; preds = %27
  %36 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 11
  %37 = load i32, ptr %36, align 4
  %38 = icmp slt i32 %37, %29
  br i1 %38, label %39, label %56

39:                                               ; preds = %35
  %40 = add i32 %29, 4095
  %41 = ashr i32 %40, 12
  %42 = and i32 %40, -4096
  %43 = add i32 %37, %42
  store i32 %43, ptr %36, align 4
  %44 = tail call i32 @__sk_mem_raise_allocated(ptr noundef %0, i32 noundef %29, i32 noundef %41, i32 noundef 1) #21
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %46, label %56

46:                                               ; preds = %39
  %47 = load i32, ptr %36, align 4
  %48 = sub i32 %47, %42
  store i32 %48, ptr %36, align 4
  %49 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 11
  %50 = load i8, ptr %49, align 2
  %51 = and i8 %50, 64
  %52 = icmp eq i8 %51, 0
  br i1 %52, label %53, label %56

53:                                               ; preds = %46
  %54 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 5
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %54) #21, !srcloc !11
  %55 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %54, ptr %54, i32 1, ptr elementtype(i32) %54) #21, !srcloc !12
  br label %135

56:                                               ; preds = %46, %39, %35, %27
  %57 = getelementptr inbounds %struct.anon.43, ptr %1, i32 0, i32 2
  store ptr null, ptr %57, align 8
  %58 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 4, i32 0, i32 1
  %59 = load ptr, ptr %58, align 4
  %60 = icmp eq ptr %59, null
  br i1 %60, label %62, label %61

61:                                               ; preds = %56
  tail call void %59(ptr noundef %1) #21
  br label %67

62:                                               ; preds = %56
  %63 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 1
  %64 = load ptr, ptr %63, align 4
  %65 = icmp eq ptr %64, null
  br i1 %65, label %67, label %66, !prof !14

66:                                               ; preds = %62
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/skbuff.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2859, 0\0A.popsection", ""() #21, !srcloc !25
  unreachable

67:                                               ; preds = %62, %61
  %68 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 1
  store ptr %0, ptr %68, align 4
  store ptr @sock_rfree, ptr %58, align 4
  %69 = load i32, ptr %28, align 8
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %4) #21, !srcloc !11
  %70 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %4, ptr %4, i32 %69, ptr elementtype(i32) %4) #21, !srcloc !12
  %71 = load ptr, ptr %30, align 8
  %72 = getelementptr inbounds %struct.proto, ptr %71, i32 0, i32 30
  %73 = load ptr, ptr %72, align 4
  %74 = icmp eq ptr %73, null
  br i1 %74, label %80, label %75

75:                                               ; preds = %67
  %76 = load i32, ptr %28, align 8
  %77 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 11
  %78 = load i32, ptr %77, align 4
  %79 = sub i32 %78, %76
  store i32 %79, ptr %77, align 4
  br label %80

80:                                               ; preds = %75, %67
  %81 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 4
  %82 = load i32, ptr %81, align 8
  %83 = and i32 %82, 1
  %84 = icmp ne i32 %83, 0
  %85 = icmp ugt i32 %82, 1
  %86 = and i1 %85, %84
  br i1 %86, label %87, label %110

87:                                               ; preds = %80
  %88 = and i32 %82, -2
  %89 = inttoptr i32 %88 to ptr
  %90 = getelementptr inbounds %struct.dst_entry, ptr %89, i32 0, i32 18
  tail call void asm sideeffect "dmb ish", "~{memory}"() #21, !srcloc !26
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %90) #21, !srcloc !11
  %91 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %90, ptr %90, i32 0, i32 1, ptr elementtype(i32) %90) #21, !srcloc !27
  %92 = extractvalue { i32, i32, i32 } %91, 0
  %93 = icmp eq i32 %92, 0
  br i1 %93, label %95, label %94

94:                                               ; preds = %87
  tail call void asm sideeffect "dmb ish", "~{memory}"() #21, !srcloc !28
  br label %95

95:                                               ; preds = %94, %87
  %96 = phi ptr [ null, %87 ], [ %89, %94 ]
  %97 = ptrtoint ptr %96 to i32
  store i32 %97, ptr %81, align 8
  %98 = icmp ne ptr %96, null
  %99 = zext i1 %98 to i8
  %100 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 13, i32 0, i32 3
  %101 = load i16, ptr %100, align 2
  %102 = lshr i16 %101, 14
  %103 = trunc i16 %102 to i8
  %104 = and i8 %103, 1
  %105 = or i8 %104, %99
  %106 = zext i8 %105 to i16
  %107 = shl nuw nsw i16 %106, 14
  %108 = and i16 %101, -16385
  %109 = or i16 %107, %108
  store i16 %109, ptr %100, align 2
  br label %110

110:                                              ; preds = %95, %80
  %111 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 8, i32 2
  %112 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %111) #21
  %113 = getelementptr inbounds %struct.sock_common, ptr %0, i32 0, i32 13
  %114 = load volatile i32, ptr %113, align 4
  %115 = and i32 %114, 131072
  %116 = icmp eq i32 %115, 0
  br i1 %116, label %120, label %117

117:                                              ; preds = %110
  %118 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 5
  %119 = load volatile i32, ptr %118, align 4
  br label %120

120:                                              ; preds = %117, %110
  %121 = phi i32 [ %119, %117 ], [ 0, %110 ]
  %122 = getelementptr %struct.sk_buff, ptr %1, i32 0, i32 3, i32 44
  store i32 %121, ptr %122, align 4
  %123 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 8, i32 0, i32 0, i32 1
  %124 = load ptr, ptr %123, align 4
  store volatile ptr %3, ptr %1, align 8
  %125 = getelementptr inbounds %struct.anon.43, ptr %1, i32 0, i32 1
  store volatile ptr %124, ptr %125, align 4
  store volatile ptr %1, ptr %123, align 4
  store volatile ptr %1, ptr %124, align 4
  %126 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 8, i32 1
  %127 = load i32, ptr %126, align 4
  %128 = add i32 %127, 1
  store volatile i32 %128, ptr %126, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %111, i32 noundef %112) #21
  %129 = load volatile i32, ptr %113, align 4
  %130 = and i32 %129, 1
  %131 = icmp eq i32 %130, 0
  br i1 %131, label %132, label %135

132:                                              ; preds = %120
  %133 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 76
  %134 = load ptr, ptr %133, align 8
  tail call void %134(ptr noundef %0) #21
  br label %135

135:                                              ; preds = %132, %120, %53, %25, %14, %9
  %136 = phi i32 [ -105, %53 ], [ 0, %132 ], [ 0, %120 ], [ -12, %9 ], [ -12, %14 ], [ -12, %25 ]
  ret i32 %136
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @sock_queue_rcv_skb(ptr noundef %0, ptr noundef %1) #0 {
  %3 = tail call i32 @sk_filter_trim_cap(ptr noundef %0, ptr noundef %1, i32 noundef 1) #21
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %7

5:                                                ; preds = %2
  %6 = tail call i32 @__sock_queue_rcv_skb(ptr noundef %0, ptr noundef %1)
  br label %7

7:                                                ; preds = %5, %2
  %8 = phi i32 [ %6, %5 ], [ %3, %2 ]
  ret i32 %8
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__sk_receive_skb(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i1 noundef zeroext %4) #0 {
  %6 = tail call i32 @sk_filter_trim_cap(ptr noundef %0, ptr noundef %1, i32 noundef %3) #21
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %145

8:                                                ; preds = %5
  %9 = getelementptr inbounds %struct.anon.43, ptr %1, i32 0, i32 2
  store ptr null, ptr %9, align 8
  %10 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 15
  %11 = load i32, ptr %10, align 4
  %12 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 9
  %13 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 9, i32 1
  %14 = load i32, ptr %13, align 4
  %15 = load volatile i32, ptr %12, align 4
  %16 = add i32 %15, %14
  %17 = icmp ugt i32 %16, %11
  br i1 %17, label %18, label %21

18:                                               ; preds = %8
  %19 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 5
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %19) #21, !srcloc !11
  %20 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %19, ptr %19, i32 1, ptr elementtype(i32) %19) #21, !srcloc !12
  br label %145

21:                                               ; preds = %8
  %22 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 4
  tail call void @_raw_spin_lock(ptr noundef %22) #21
  %23 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 4, i32 1
  %24 = load i32, ptr %23, align 4
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %56

26:                                               ; preds = %21
  %27 = load volatile i32, ptr @memalloc_socks_key, align 4
  %28 = icmp slt i32 %27, 1
  br i1 %28, label %52, label %29

29:                                               ; preds = %26
  %30 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 11
  %31 = load i8, ptr %30, align 2
  %32 = and i8 %31, 64
  %33 = icmp eq i8 %32, 0
  br i1 %33, label %52, label %34

34:                                               ; preds = %29
  %35 = getelementptr inbounds %struct.sock_common, ptr %0, i32 0, i32 13
  %36 = load volatile i32, ptr %35, align 4
  %37 = and i32 %36, 16384
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %39, label %40, !prof !10

39:                                               ; preds = %34
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22net/core/sock.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 325, 0\0A.popsection", ""() #21, !srcloc !15
  unreachable

40:                                               ; preds = %34
  %41 = tail call ptr @llvm.thread.pointer() #21
  %42 = getelementptr inbounds %struct.task_struct, ptr %41, i32 0, i32 4
  %43 = load i32, ptr %42, align 4
  %44 = and i32 %43, 2048
  %45 = or i32 %43, 2048
  store i32 %45, ptr %42, align 4
  %46 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 79
  %47 = load ptr, ptr %46, align 4
  %48 = tail call i32 %47(ptr noundef %0, ptr noundef %1) #21
  %49 = load i32, ptr %42, align 4
  %50 = and i32 %49, -2049
  %51 = or i32 %50, %44
  store i32 %51, ptr %42, align 4
  br label %120

52:                                               ; preds = %29, %26
  %53 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 79
  %54 = load ptr, ptr %53, align 4
  %55 = tail call i32 %54(ptr noundef %0, ptr noundef %1) #21
  br label %120

56:                                               ; preds = %21
  %57 = load volatile i32, ptr %10, align 4
  %58 = load i32, ptr %13, align 4
  %59 = load volatile i32, ptr %12, align 4
  %60 = add i32 %59, %58
  %61 = icmp ugt i32 %60, %57
  br i1 %61, label %114, label %62

62:                                               ; preds = %56
  %63 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 11
  %64 = load i8, ptr %63, align 2
  %65 = and i8 %64, 64
  %66 = icmp eq i8 %65, 0
  br i1 %66, label %72, label %67

67:                                               ; preds = %62
  %68 = getelementptr inbounds %struct.sock_common, ptr %0, i32 0, i32 13
  %69 = load volatile i32, ptr %68, align 4
  %70 = and i32 %69, 16384
  %71 = icmp eq i32 %70, 0
  br i1 %71, label %114, label %72

72:                                               ; preds = %67, %62
  %73 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 4
  %74 = load i32, ptr %73, align 8
  %75 = and i32 %74, 1
  %76 = icmp ne i32 %75, 0
  %77 = icmp ugt i32 %74, 1
  %78 = and i1 %77, %76
  br i1 %78, label %79, label %102

79:                                               ; preds = %72
  %80 = and i32 %74, -2
  %81 = inttoptr i32 %80 to ptr
  %82 = getelementptr inbounds %struct.dst_entry, ptr %81, i32 0, i32 18
  tail call void asm sideeffect "dmb ish", "~{memory}"() #21, !srcloc !26
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %82) #21, !srcloc !11
  %83 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %82, ptr %82, i32 0, i32 1, ptr elementtype(i32) %82) #21, !srcloc !27
  %84 = extractvalue { i32, i32, i32 } %83, 0
  %85 = icmp eq i32 %84, 0
  br i1 %85, label %87, label %86

86:                                               ; preds = %79
  tail call void asm sideeffect "dmb ish", "~{memory}"() #21, !srcloc !28
  br label %87

87:                                               ; preds = %86, %79
  %88 = phi ptr [ null, %79 ], [ %81, %86 ]
  %89 = ptrtoint ptr %88 to i32
  store i32 %89, ptr %73, align 8
  %90 = icmp ne ptr %88, null
  %91 = zext i1 %90 to i8
  %92 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 13, i32 0, i32 3
  %93 = load i16, ptr %92, align 2
  %94 = lshr i16 %93, 14
  %95 = trunc i16 %94 to i8
  %96 = and i8 %95, 1
  %97 = or i8 %96, %91
  %98 = zext i8 %97 to i16
  %99 = shl nuw nsw i16 %98, 14
  %100 = and i16 %93, -16385
  %101 = or i16 %99, %100
  store i16 %101, ptr %92, align 2
  br label %102

102:                                              ; preds = %87, %72
  %103 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 9, i32 3
  %104 = load ptr, ptr %103, align 4
  %105 = icmp eq ptr %104, null
  br i1 %105, label %106, label %108

106:                                              ; preds = %102
  %107 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 9, i32 2
  store volatile ptr %1, ptr %107, align 8
  br label %109

108:                                              ; preds = %102
  store ptr %1, ptr %104, align 8
  br label %109

109:                                              ; preds = %108, %106
  store volatile ptr %1, ptr %103, align 4
  store ptr null, ptr %1, align 8
  %110 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 18
  %111 = load i32, ptr %110, align 8
  %112 = load i32, ptr %13, align 4
  %113 = add i32 %112, %111
  store i32 %113, ptr %13, align 4
  br label %120

114:                                              ; preds = %67, %56
  %115 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #21, !srcloc !29
  %116 = load i16, ptr %115, align 4
  %117 = add i16 %116, 1
  store i16 %117, ptr %115, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #21, !srcloc !30
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #21, !srcloc !31
  tail call void asm sideeffect "", "~{memory}"() #21, !srcloc !32
  %118 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 5
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %118) #21, !srcloc !11
  %119 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %118, ptr %118, i32 1, ptr elementtype(i32) %118) #21, !srcloc !12
  br label %145

120:                                              ; preds = %109, %52, %40
  %121 = phi i32 [ 0, %109 ], [ %48, %40 ], [ %55, %52 ]
  %122 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #21, !srcloc !29
  %123 = load i16, ptr %122, align 4
  %124 = add i16 %123, 1
  store i16 %124, ptr %122, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #21, !srcloc !30
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #21, !srcloc !31
  tail call void asm sideeffect "", "~{memory}"() #21, !srcloc !32
  br label %125

125:                                              ; preds = %145, %120
  %126 = phi i32 [ 0, %145 ], [ %121, %120 ]
  br i1 %4, label %127, label %144

127:                                              ; preds = %125
  %128 = getelementptr inbounds %struct.sock_common, ptr %0, i32 0, i32 19
  tail call void asm sideeffect "dmb ish", "~{memory}"() #21, !srcloc !33
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %128) #21, !srcloc !11
  %129 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %128, ptr %128, i32 1, ptr elementtype(i32) %128) #21, !srcloc !34
  %130 = extractvalue { i32, i32, i32 } %129, 0
  %131 = icmp eq i32 %130, 1
  br i1 %131, label %135, label %132

132:                                              ; preds = %127
  %133 = icmp sgt i32 %130, 0
  br i1 %133, label %144, label %134, !prof !14

134:                                              ; preds = %132
  tail call void @refcount_warn_saturate(ptr noundef %128, i32 noundef 3) #21
  br label %144

135:                                              ; preds = %127
  tail call void asm sideeffect "dmb ish", "~{memory}"() #21, !srcloc !35
  %136 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 23
  tail call void asm sideeffect "dmb ish", "~{memory}"() #21, !srcloc !33
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %136) #21, !srcloc !11
  %137 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %136, ptr %136, i32 1, ptr elementtype(i32) %136) #21, !srcloc !34
  %138 = extractvalue { i32, i32, i32 } %137, 0
  %139 = icmp eq i32 %138, 1
  br i1 %139, label %143, label %140

140:                                              ; preds = %135
  %141 = icmp sgt i32 %138, 0
  br i1 %141, label %144, label %142, !prof !14

142:                                              ; preds = %140
  tail call void @refcount_warn_saturate(ptr noundef %136, i32 noundef 3) #21
  br label %144

143:                                              ; preds = %135
  tail call void asm sideeffect "dmb ish", "~{memory}"() #21, !srcloc !35
  tail call fastcc void @__sk_free(ptr noundef %0) #21
  br label %144

144:                                              ; preds = %143, %142, %140, %134, %132, %125
  ret i32 %126

145:                                              ; preds = %114, %18, %5
  tail call void @kfree_skb_reason(ptr noundef %1, i32 noundef 0) #21
  br label %125
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sk_filter_trim_cap(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @__sk_dst_check(ptr noundef %0, i32 noundef %1) #0 {
  %3 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 19
  %4 = load volatile ptr, ptr %3, align 8
  %5 = icmp eq ptr %4, null
  br i1 %5, label %20, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.dst_entry, ptr %4, i32 0, i32 8
  %8 = load i16, ptr %7, align 2
  %9 = icmp eq i16 %8, 0
  br i1 %9, label %20, label %10

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.dst_entry, ptr %4, i32 0, i32 1
  %12 = load ptr, ptr %11, align 4
  %13 = getelementptr inbounds %struct.dst_ops, ptr %12, i32 0, i32 3
  %14 = load ptr, ptr %13, align 4
  %15 = tail call ptr %14(ptr noundef nonnull %4, i32 noundef %1) #21
  %16 = icmp eq ptr %15, null
  br i1 %16, label %17, label %20

17:                                               ; preds = %10
  %18 = getelementptr inbounds %struct.sock_common, ptr %0, i32 0, i32 16
  store i16 -1, ptr %18, align 4
  %19 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 29
  store i32 0, ptr %19, align 4
  store volatile ptr null, ptr %3, align 8
  tail call void @dst_release(ptr noundef nonnull %4) #21
  br label %20

20:                                               ; preds = %17, %10, %6, %2
  %21 = phi ptr [ null, %17 ], [ %4, %10 ], [ %4, %6 ], [ null, %2 ]
  ret ptr %21
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @dst_release(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @sk_dst_check(ptr noundef %0, i32 noundef %1) #0 {
  tail call void asm sideeffect "", "~{memory}"() #21, !srcloc !36
  %3 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 19
  %4 = load volatile ptr, ptr %3, align 8
  %5 = icmp eq ptr %4, null
  br i1 %5, label %11, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.dst_entry, ptr %4, i32 0, i32 18
  tail call void asm sideeffect "dmb ish", "~{memory}"() #21, !srcloc !26
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %7) #21, !srcloc !11
  %8 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %7, ptr %7, i32 0, i32 1, ptr elementtype(i32) %7) #21, !srcloc !27
  %9 = extractvalue { i32, i32, i32 } %8, 0
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %12

11:                                               ; preds = %6, %2
  tail call void asm sideeffect "", "~{memory}"() #21, !srcloc !37
  br label %29

12:                                               ; preds = %6
  tail call void asm sideeffect "dmb ish", "~{memory}"() #21, !srcloc !28
  tail call void asm sideeffect "", "~{memory}"() #21, !srcloc !37
  %13 = getelementptr inbounds %struct.dst_entry, ptr %4, i32 0, i32 8
  %14 = load i16, ptr %13, align 2
  %15 = icmp eq i16 %14, 0
  br i1 %15, label %29, label %16

16:                                               ; preds = %12
  %17 = getelementptr inbounds %struct.dst_entry, ptr %4, i32 0, i32 1
  %18 = load ptr, ptr %17, align 4
  %19 = getelementptr inbounds %struct.dst_ops, ptr %18, i32 0, i32 3
  %20 = load ptr, ptr %19, align 4
  %21 = tail call ptr %20(ptr noundef nonnull %4, i32 noundef %1) #21
  %22 = icmp eq ptr %21, null
  br i1 %22, label %23, label %29

23:                                               ; preds = %16
  %24 = getelementptr inbounds %struct.sock_common, ptr %0, i32 0, i32 16
  store i16 -1, ptr %24, align 4
  %25 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 29
  store i32 0, ptr %25, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #21, !srcloc !38
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %3) #21, !srcloc !11
  %26 = tail call { i32, i32 } asm sideeffect "@\09__xchg4\0A1:\09ldrex\09$0, [$3]\0A\09strex\09$1, $2, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,r,r,~{memory},~{cc}"(i32 0, ptr %3) #21, !srcloc !39
  %27 = extractvalue { i32, i32 } %26, 0
  %28 = inttoptr i32 %27 to ptr
  tail call void asm sideeffect "dmb ish", "~{memory}"() #21, !srcloc !40
  tail call void @dst_release(ptr noundef %28) #21
  tail call void @dst_release(ptr noundef nonnull %4) #21
  br label %29

29:                                               ; preds = %23, %16, %12, %11
  %30 = phi ptr [ null, %23 ], [ %4, %16 ], [ %4, %12 ], [ null, %11 ]
  ret ptr %30
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @sk_dst_reset(ptr noundef %0) unnamed_addr #6 {
  %2 = getelementptr inbounds %struct.sock_common, ptr %0, i32 0, i32 16
  store i16 -1, ptr %2, align 4
  %3 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 29
  store i32 0, ptr %3, align 4
  %4 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 19
  tail call void asm sideeffect "dmb ish", "~{memory}"() #21, !srcloc !38
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %4) #21, !srcloc !11
  %5 = tail call { i32, i32 } asm sideeffect "@\09__xchg4\0A1:\09ldrex\09$0, [$3]\0A\09strex\09$1, $2, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,r,r,~{memory},~{cc}"(i32 0, ptr %4) #21, !srcloc !39
  %6 = extractvalue { i32, i32 } %5, 0
  %7 = inttoptr i32 %6 to ptr
  tail call void asm sideeffect "dmb ish", "~{memory}"() #21, !srcloc !40
  tail call void @dst_release(ptr noundef %7) #21
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @sock_bindtoindex(ptr noundef %0, i32 noundef %1, i1 noundef zeroext %2) #0 {
  br i1 %2, label %4, label %5

4:                                                ; preds = %3
  tail call void @lock_sock_nested(ptr noundef %0, i32 undef) #21
  br label %5

5:                                                ; preds = %4, %3
  %6 = getelementptr inbounds %struct.sock_common, ptr %0, i32 0, i32 6
  %7 = load i32, ptr %6, align 4
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %12, label %9

9:                                                ; preds = %5
  %10 = load ptr, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 11), align 4
  %11 = tail call zeroext i1 @ns_capable(ptr noundef %10, i32 noundef 13) #21
  br i1 %11, label %12, label %28

12:                                               ; preds = %9, %5
  %13 = icmp slt i32 %1, 0
  br i1 %13, label %28, label %14

14:                                               ; preds = %12
  store i32 %1, ptr %6, align 4
  %15 = getelementptr inbounds %struct.sock_common, ptr %0, i32 0, i32 8
  %16 = load ptr, ptr %15, align 8
  %17 = getelementptr inbounds %struct.proto, ptr %16, i32 0, i32 22
  %18 = load ptr, ptr %17, align 4
  %19 = icmp eq ptr %18, null
  br i1 %19, label %21, label %20

20:                                               ; preds = %14
  tail call void %18(ptr noundef %0) #21
  br label %21

21:                                               ; preds = %20, %14
  %22 = getelementptr inbounds %struct.sock_common, ptr %0, i32 0, i32 16
  store i16 -1, ptr %22, align 4
  %23 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 29
  store i32 0, ptr %23, align 4
  %24 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 19
  tail call void asm sideeffect "dmb ish", "~{memory}"() #21, !srcloc !38
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %24) #21, !srcloc !11
  %25 = tail call { i32, i32 } asm sideeffect "@\09__xchg4\0A1:\09ldrex\09$0, [$3]\0A\09strex\09$1, $2, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,r,r,~{memory},~{cc}"(i32 0, ptr %24) #21, !srcloc !39
  %26 = extractvalue { i32, i32 } %25, 0
  %27 = inttoptr i32 %26 to ptr
  tail call void asm sideeffect "dmb ish", "~{memory}"() #21, !srcloc !40
  tail call void @dst_release(ptr noundef %27) #21
  br label %28

28:                                               ; preds = %21, %12, %9
  %29 = phi i32 [ -22, %12 ], [ 0, %21 ], [ -1, %9 ]
  br i1 %2, label %30, label %55

30:                                               ; preds = %28
  %31 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 4
  tail call void @_raw_spin_lock_bh(ptr noundef %31) #21
  %32 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 9, i32 3
  %33 = load ptr, ptr %32, align 4
  %34 = icmp eq ptr %33, null
  br i1 %34, label %36, label %35

35:                                               ; preds = %30
  tail call void @__release_sock(ptr noundef %0) #21
  br label %36

36:                                               ; preds = %35, %30
  %37 = getelementptr inbounds %struct.sock_common, ptr %0, i32 0, i32 8
  %38 = load ptr, ptr %37, align 8
  %39 = getelementptr inbounds %struct.proto, ptr %38, i32 0, i32 19
  %40 = load ptr, ptr %39, align 4
  %41 = icmp eq ptr %40, null
  br i1 %41, label %43, label %42

42:                                               ; preds = %36
  tail call void %40(ptr noundef %0) #21
  br label %43

43:                                               ; preds = %42, %36
  %44 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 4, i32 1
  %45 = load i32, ptr %44, align 4
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %48, label %47

47:                                               ; preds = %43
  store i32 0, ptr %44, align 4
  br label %48

48:                                               ; preds = %47, %43
  %49 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 4, i32 2, i32 1
  %50 = load volatile ptr, ptr %49, align 4
  %51 = icmp eq ptr %50, %49
  br i1 %51, label %54, label %52

52:                                               ; preds = %48
  %53 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 4, i32 2
  tail call void @__wake_up(ptr noundef %53, i32 noundef 3, i32 noundef 1, ptr noundef null) #21
  br label %54

54:                                               ; preds = %52, %48
  tail call void @_raw_spin_unlock_bh(ptr noundef %31) #21
  br label %55

55:                                               ; preds = %54, %28
  ret i32 %29
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @sock_bindtoindex_locked(ptr noundef %0, i32 noundef %1) unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.sock_common, ptr %0, i32 0, i32 6
  %4 = load i32, ptr %3, align 4
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %9, label %6

6:                                                ; preds = %2
  %7 = load ptr, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 11), align 4
  %8 = tail call zeroext i1 @ns_capable(ptr noundef %7, i32 noundef 13) #21
  br i1 %8, label %9, label %25

9:                                                ; preds = %6, %2
  %10 = icmp slt i32 %1, 0
  br i1 %10, label %25, label %11

11:                                               ; preds = %9
  store i32 %1, ptr %3, align 4
  %12 = getelementptr inbounds %struct.sock_common, ptr %0, i32 0, i32 8
  %13 = load ptr, ptr %12, align 8
  %14 = getelementptr inbounds %struct.proto, ptr %13, i32 0, i32 22
  %15 = load ptr, ptr %14, align 4
  %16 = icmp eq ptr %15, null
  br i1 %16, label %18, label %17

17:                                               ; preds = %11
  tail call void %15(ptr noundef %0) #21
  br label %18

18:                                               ; preds = %17, %11
  %19 = getelementptr inbounds %struct.sock_common, ptr %0, i32 0, i32 16
  store i16 -1, ptr %19, align 4
  %20 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 29
  store i32 0, ptr %20, align 4
  %21 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 19
  tail call void asm sideeffect "dmb ish", "~{memory}"() #21, !srcloc !38
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %21) #21, !srcloc !11
  %22 = tail call { i32, i32 } asm sideeffect "@\09__xchg4\0A1:\09ldrex\09$0, [$3]\0A\09strex\09$1, $2, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,r,r,~{memory},~{cc}"(i32 0, ptr %21) #21, !srcloc !39
  %23 = extractvalue { i32, i32 } %22, 0
  %24 = inttoptr i32 %23 to ptr
  tail call void asm sideeffect "dmb ish", "~{memory}"() #21, !srcloc !40
  tail call void @dst_release(ptr noundef %24) #21
  br label %25

25:                                               ; preds = %18, %9, %6
  %26 = phi i32 [ -22, %9 ], [ 0, %18 ], [ -1, %6 ]
  ret i32 %26
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @release_sock(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 4
  tail call void @_raw_spin_lock_bh(ptr noundef %2) #21
  %3 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 9, i32 3
  %4 = load ptr, ptr %3, align 4
  %5 = icmp eq ptr %4, null
  br i1 %5, label %7, label %6

6:                                                ; preds = %1
  tail call void @__release_sock(ptr noundef %0)
  br label %7

7:                                                ; preds = %6, %1
  %8 = getelementptr inbounds %struct.sock_common, ptr %0, i32 0, i32 8
  %9 = load ptr, ptr %8, align 8
  %10 = getelementptr inbounds %struct.proto, ptr %9, i32 0, i32 19
  %11 = load ptr, ptr %10, align 4
  %12 = icmp eq ptr %11, null
  br i1 %12, label %14, label %13

13:                                               ; preds = %7
  tail call void %11(ptr noundef %0) #21
  br label %14

14:                                               ; preds = %13, %7
  %15 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 4, i32 1
  %16 = load i32, ptr %15, align 4
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %19, label %18

18:                                               ; preds = %14
  store i32 0, ptr %15, align 4
  br label %19

19:                                               ; preds = %18, %14
  %20 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 4, i32 2, i32 1
  %21 = load volatile ptr, ptr %20, align 4
  %22 = icmp eq ptr %21, %20
  br i1 %22, label %25, label %23

23:                                               ; preds = %19
  %24 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 4, i32 2
  tail call void @__wake_up(ptr noundef %24, i32 noundef 3, i32 noundef 1, ptr noundef null) #21
  br label %25

25:                                               ; preds = %23, %19
  tail call void @_raw_spin_unlock_bh(ptr noundef %2) #21
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local zeroext i1 @sk_mc_loop(ptr noundef %0) #0 {
  tail call void asm sideeffect "", "~{memory}"() #21, !srcloc !41
  %2 = tail call i32 @llvm.read_register.i32(metadata !0) #21
  %3 = inttoptr i32 %2 to ptr
  %4 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %3) #14, !srcloc !42
  %5 = add i32 %4, ptrtoint (ptr getelementptr inbounds (%struct.softnet_data, ptr @softnet_data, i32 0, i32 10) to i32)
  %6 = inttoptr i32 %5 to ptr
  %7 = load volatile i16, ptr %6, align 2
  tail call void asm sideeffect "", "~{memory}"() #21, !srcloc !43
  %8 = icmp eq i16 %7, 0
  br i1 %8, label %9, label %38

9:                                                ; preds = %1
  %10 = icmp eq ptr %0, null
  br i1 %10, label %38, label %11

11:                                               ; preds = %9
  %12 = getelementptr inbounds %struct.sock_common, ptr %0, i32 0, i32 3
  %13 = load i16, ptr %12, align 8
  switch i16 %13, label %35 [
    i16 2, label %14
    i16 10, label %19
  ]

14:                                               ; preds = %11
  %15 = getelementptr inbounds %struct.inet_sock, ptr %0, i32 0, i32 12
  %16 = load i16, ptr %15, align 8
  %17 = and i16 %16, 16
  %18 = icmp ne i16 %17, 0
  br label %38

19:                                               ; preds = %11
  %20 = getelementptr inbounds %struct.sock_common, ptr %0, i32 0, i32 4
  %21 = load volatile i8, ptr %20, align 2
  %22 = zext i8 %21 to i32
  %23 = shl nuw i32 1, %22
  %24 = and i32 %23, -4161
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %29, label %26

26:                                               ; preds = %19
  %27 = getelementptr inbounds %struct.inet_sock, ptr %0, i32 0, i32 1
  %28 = load ptr, ptr %27, align 8
  br label %29

29:                                               ; preds = %26, %19
  %30 = phi ptr [ %28, %26 ], [ null, %19 ]
  %31 = getelementptr inbounds %struct.ipv6_pinfo, ptr %30, i32 0, i32 5
  %32 = load i32, ptr %31, align 4
  %33 = and i32 %32, 65536
  %34 = icmp ne i32 %33, 0
  br label %38

35:                                               ; preds = %11
  %36 = load i1, ptr @sk_mc_loop.__already_done, align 1
  br i1 %36, label %38, label %37, !prof !14

37:                                               ; preds = %35
  store i1 true, ptr @sk_mc_loop.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 742, i32 noundef 9, ptr noundef null) #21
  br label %38

38:                                               ; preds = %37, %35, %29, %14, %9, %1
  %39 = phi i1 [ %34, %29 ], [ %18, %14 ], [ false, %1 ], [ true, %9 ], [ true, %37 ], [ true, %35 ]
  ret i1 %39
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @sock_set_reuseaddr(ptr noundef %0) #0 {
  tail call void @lock_sock_nested(ptr noundef %0, i32 undef) #21
  %2 = getelementptr inbounds %struct.sock_common, ptr %0, i32 0, i32 5
  %3 = load i8, ptr %2, align 1
  %4 = and i8 %3, -16
  %5 = or i8 %4, 1
  store i8 %5, ptr %2, align 1
  %6 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 4
  tail call void @_raw_spin_lock_bh(ptr noundef %6) #21
  %7 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 9, i32 3
  %8 = load ptr, ptr %7, align 4
  %9 = icmp eq ptr %8, null
  br i1 %9, label %11, label %10

10:                                               ; preds = %1
  tail call void @__release_sock(ptr noundef %0) #21
  br label %11

11:                                               ; preds = %10, %1
  %12 = getelementptr inbounds %struct.sock_common, ptr %0, i32 0, i32 8
  %13 = load ptr, ptr %12, align 8
  %14 = getelementptr inbounds %struct.proto, ptr %13, i32 0, i32 19
  %15 = load ptr, ptr %14, align 4
  %16 = icmp eq ptr %15, null
  br i1 %16, label %18, label %17

17:                                               ; preds = %11
  tail call void %15(ptr noundef %0) #21
  br label %18

18:                                               ; preds = %17, %11
  %19 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 4, i32 1
  %20 = load i32, ptr %19, align 4
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %23, label %22

22:                                               ; preds = %18
  store i32 0, ptr %19, align 4
  br label %23

23:                                               ; preds = %22, %18
  %24 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 4, i32 2, i32 1
  %25 = load volatile ptr, ptr %24, align 4
  %26 = icmp eq ptr %25, %24
  br i1 %26, label %29, label %27

27:                                               ; preds = %23
  %28 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 4, i32 2
  tail call void @__wake_up(ptr noundef %28, i32 noundef 3, i32 noundef 1, ptr noundef null) #21
  br label %29

29:                                               ; preds = %27, %23
  tail call void @_raw_spin_unlock_bh(ptr noundef %6) #21
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @sock_set_reuseport(ptr noundef %0) #0 {
  tail call void @lock_sock_nested(ptr noundef %0, i32 undef) #21
  %2 = getelementptr inbounds %struct.sock_common, ptr %0, i32 0, i32 5
  %3 = load i8, ptr %2, align 1
  %4 = or i8 %3, 16
  store i8 %4, ptr %2, align 1
  %5 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 4
  tail call void @_raw_spin_lock_bh(ptr noundef %5) #21
  %6 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 9, i32 3
  %7 = load ptr, ptr %6, align 4
  %8 = icmp eq ptr %7, null
  br i1 %8, label %10, label %9

9:                                                ; preds = %1
  tail call void @__release_sock(ptr noundef %0) #21
  br label %10

10:                                               ; preds = %9, %1
  %11 = getelementptr inbounds %struct.sock_common, ptr %0, i32 0, i32 8
  %12 = load ptr, ptr %11, align 8
  %13 = getelementptr inbounds %struct.proto, ptr %12, i32 0, i32 19
  %14 = load ptr, ptr %13, align 4
  %15 = icmp eq ptr %14, null
  br i1 %15, label %17, label %16

16:                                               ; preds = %10
  tail call void %14(ptr noundef %0) #21
  br label %17

17:                                               ; preds = %16, %10
  %18 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 4, i32 1
  %19 = load i32, ptr %18, align 4
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %22, label %21

21:                                               ; preds = %17
  store i32 0, ptr %18, align 4
  br label %22

22:                                               ; preds = %21, %17
  %23 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 4, i32 2, i32 1
  %24 = load volatile ptr, ptr %23, align 4
  %25 = icmp eq ptr %24, %23
  br i1 %25, label %28, label %26

26:                                               ; preds = %22
  %27 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 4, i32 2
  tail call void @__wake_up(ptr noundef %27, i32 noundef 3, i32 noundef 1, ptr noundef null) #21
  br label %28

28:                                               ; preds = %26, %22
  tail call void @_raw_spin_unlock_bh(ptr noundef %5) #21
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @sock_no_linger(ptr noundef %0) #0 {
  tail call void @lock_sock_nested(ptr noundef %0, i32 undef) #21
  %2 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 48
  store i32 0, ptr %2, align 8
  %3 = getelementptr inbounds %struct.sock_common, ptr %0, i32 0, i32 13
  %4 = load i32, ptr %3, align 4
  %5 = or i32 %4, 16
  store i32 %5, ptr %3, align 4
  %6 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 4
  tail call void @_raw_spin_lock_bh(ptr noundef %6) #21
  %7 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 9, i32 3
  %8 = load ptr, ptr %7, align 4
  %9 = icmp eq ptr %8, null
  br i1 %9, label %11, label %10

10:                                               ; preds = %1
  tail call void @__release_sock(ptr noundef %0) #21
  br label %11

11:                                               ; preds = %10, %1
  %12 = getelementptr inbounds %struct.sock_common, ptr %0, i32 0, i32 8
  %13 = load ptr, ptr %12, align 8
  %14 = getelementptr inbounds %struct.proto, ptr %13, i32 0, i32 19
  %15 = load ptr, ptr %14, align 4
  %16 = icmp eq ptr %15, null
  br i1 %16, label %18, label %17

17:                                               ; preds = %11
  tail call void %15(ptr noundef %0) #21
  br label %18

18:                                               ; preds = %17, %11
  %19 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 4, i32 1
  %20 = load i32, ptr %19, align 4
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %23, label %22

22:                                               ; preds = %18
  store i32 0, ptr %19, align 4
  br label %23

23:                                               ; preds = %22, %18
  %24 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 4, i32 2, i32 1
  %25 = load volatile ptr, ptr %24, align 4
  %26 = icmp eq ptr %25, %24
  br i1 %26, label %29, label %27

27:                                               ; preds = %23
  %28 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 4, i32 2
  tail call void @__wake_up(ptr noundef %28, i32 noundef 3, i32 noundef 1, ptr noundef null) #21
  br label %29

29:                                               ; preds = %27, %23
  tail call void @_raw_spin_unlock_bh(ptr noundef %6) #21
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @sock_set_priority(ptr noundef %0, i32 noundef %1) #0 {
  tail call void @lock_sock_nested(ptr noundef %0, i32 undef) #21
  %3 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 33
  store i32 %1, ptr %3, align 4
  %4 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 4
  tail call void @_raw_spin_lock_bh(ptr noundef %4) #21
  %5 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 9, i32 3
  %6 = load ptr, ptr %5, align 4
  %7 = icmp eq ptr %6, null
  br i1 %7, label %9, label %8

8:                                                ; preds = %2
  tail call void @__release_sock(ptr noundef %0) #21
  br label %9

9:                                                ; preds = %8, %2
  %10 = getelementptr inbounds %struct.sock_common, ptr %0, i32 0, i32 8
  %11 = load ptr, ptr %10, align 8
  %12 = getelementptr inbounds %struct.proto, ptr %11, i32 0, i32 19
  %13 = load ptr, ptr %12, align 4
  %14 = icmp eq ptr %13, null
  br i1 %14, label %16, label %15

15:                                               ; preds = %9
  tail call void %13(ptr noundef %0) #21
  br label %16

16:                                               ; preds = %15, %9
  %17 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 4, i32 1
  %18 = load i32, ptr %17, align 4
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %21, label %20

20:                                               ; preds = %16
  store i32 0, ptr %17, align 4
  br label %21

21:                                               ; preds = %20, %16
  %22 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 4, i32 2, i32 1
  %23 = load volatile ptr, ptr %22, align 4
  %24 = icmp eq ptr %23, %22
  br i1 %24, label %27, label %25

25:                                               ; preds = %21
  %26 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 4, i32 2
  tail call void @__wake_up(ptr noundef %26, i32 noundef 3, i32 noundef 1, ptr noundef null) #21
  br label %27

27:                                               ; preds = %25, %21
  tail call void @_raw_spin_unlock_bh(ptr noundef %4) #21
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @sock_set_sndtimeo(ptr noundef %0, i64 noundef %1) #0 {
  tail call void @lock_sock_nested(ptr noundef %0, i32 undef) #21
  %3 = icmp ne i64 %1, 0
  %4 = icmp slt i64 %1, 21474835
  %5 = and i1 %3, %4
  %6 = trunc i64 %1 to i32
  %7 = mul i32 %6, 100
  %8 = select i1 %5, i32 %7, i32 2147483647
  %9 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 31
  store i32 %8, ptr %9, align 4
  %10 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 4
  tail call void @_raw_spin_lock_bh(ptr noundef %10) #21
  %11 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 9, i32 3
  %12 = load ptr, ptr %11, align 4
  %13 = icmp eq ptr %12, null
  br i1 %13, label %15, label %14

14:                                               ; preds = %2
  tail call void @__release_sock(ptr noundef %0) #21
  br label %15

15:                                               ; preds = %14, %2
  %16 = getelementptr inbounds %struct.sock_common, ptr %0, i32 0, i32 8
  %17 = load ptr, ptr %16, align 8
  %18 = getelementptr inbounds %struct.proto, ptr %17, i32 0, i32 19
  %19 = load ptr, ptr %18, align 4
  %20 = icmp eq ptr %19, null
  br i1 %20, label %22, label %21

21:                                               ; preds = %15
  tail call void %19(ptr noundef %0) #21
  br label %22

22:                                               ; preds = %21, %15
  %23 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 4, i32 1
  %24 = load i32, ptr %23, align 4
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %27, label %26

26:                                               ; preds = %22
  store i32 0, ptr %23, align 4
  br label %27

27:                                               ; preds = %26, %22
  %28 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 4, i32 2, i32 1
  %29 = load volatile ptr, ptr %28, align 4
  %30 = icmp eq ptr %29, %28
  br i1 %30, label %33, label %31

31:                                               ; preds = %27
  %32 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 4, i32 2
  tail call void @__wake_up(ptr noundef %32, i32 noundef 3, i32 noundef 1, ptr noundef null) #21
  br label %33

33:                                               ; preds = %31, %27
  tail call void @_raw_spin_unlock_bh(ptr noundef %10) #21
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @sock_enable_timestamps(ptr noundef %0) #0 {
  tail call void @lock_sock_nested(ptr noundef %0, i32 undef) #21
  %2 = getelementptr inbounds %struct.sock_common, ptr %0, i32 0, i32 13
  %3 = load i32, ptr %2, align 4
  %4 = and i32 %3, -67115009
  %5 = or i32 %4, 6144
  store i32 %5, ptr %2, align 4
  %6 = load volatile i32, ptr %2, align 4
  %7 = and i32 %6, 128
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %18

9:                                                ; preds = %1
  %10 = or i32 %6, 128
  store i32 %10, ptr %2, align 4
  %11 = getelementptr inbounds %struct.sock_common, ptr %0, i32 0, i32 3
  %12 = load i16, ptr %11, align 8
  %13 = icmp ugt i16 %12, 1
  %14 = and i32 %6, 32896
  %15 = icmp eq i32 %14, 0
  %16 = select i1 %13, i1 %15, i1 false
  br i1 %16, label %17, label %18

17:                                               ; preds = %9
  tail call void @net_enable_timestamp() #21
  br label %18

18:                                               ; preds = %17, %9, %1
  %19 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 4
  tail call void @_raw_spin_lock_bh(ptr noundef %19) #21
  %20 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 9, i32 3
  %21 = load ptr, ptr %20, align 4
  %22 = icmp eq ptr %21, null
  br i1 %22, label %24, label %23

23:                                               ; preds = %18
  tail call void @__release_sock(ptr noundef %0) #21
  br label %24

24:                                               ; preds = %23, %18
  %25 = getelementptr inbounds %struct.sock_common, ptr %0, i32 0, i32 8
  %26 = load ptr, ptr %25, align 8
  %27 = getelementptr inbounds %struct.proto, ptr %26, i32 0, i32 19
  %28 = load ptr, ptr %27, align 4
  %29 = icmp eq ptr %28, null
  br i1 %29, label %31, label %30

30:                                               ; preds = %24
  tail call void %28(ptr noundef %0) #21
  br label %31

31:                                               ; preds = %30, %24
  %32 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 4, i32 1
  %33 = load i32, ptr %32, align 4
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %36, label %35

35:                                               ; preds = %31
  store i32 0, ptr %32, align 4
  br label %36

36:                                               ; preds = %35, %31
  %37 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 4, i32 2, i32 1
  %38 = load volatile ptr, ptr %37, align 4
  %39 = icmp eq ptr %38, %37
  br i1 %39, label %42, label %40

40:                                               ; preds = %36
  %41 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 4, i32 2
  tail call void @__wake_up(ptr noundef %41, i32 noundef 3, i32 noundef 1, ptr noundef null) #21
  br label %42

42:                                               ; preds = %40, %36
  tail call void @_raw_spin_unlock_bh(ptr noundef %19) #21
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @sock_set_timestamp(ptr noundef %0, i32 noundef %1, i1 noundef zeroext %2) local_unnamed_addr #0 {
  switch i32 %1, label %83 [
    i32 29, label %4
    i32 63, label %24
    i32 35, label %44
    i32 64, label %64
  ]

4:                                                ; preds = %3
  %5 = getelementptr inbounds %struct.sock_common, ptr %0, i32 0, i32 13
  %6 = load i32, ptr %5, align 4
  br i1 %2, label %7, label %22

7:                                                ; preds = %4
  %8 = and i32 %6, -67115009
  %9 = or i32 %8, 2048
  store i32 %9, ptr %5, align 4
  %10 = load volatile i32, ptr %5, align 4
  %11 = and i32 %10, 128
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %83

13:                                               ; preds = %7
  %14 = or i32 %10, 128
  store i32 %14, ptr %5, align 4
  %15 = getelementptr inbounds %struct.sock_common, ptr %0, i32 0, i32 3
  %16 = load i16, ptr %15, align 8
  %17 = icmp ugt i16 %16, 1
  %18 = and i32 %10, 32896
  %19 = icmp eq i32 %18, 0
  %20 = select i1 %17, i1 %19, i1 false
  br i1 %20, label %21, label %83

21:                                               ; preds = %13
  tail call void @net_enable_timestamp() #21
  br label %83

22:                                               ; preds = %4
  %23 = and i32 %6, -6145
  store i32 %23, ptr %5, align 4
  br label %83

24:                                               ; preds = %3
  %25 = getelementptr inbounds %struct.sock_common, ptr %0, i32 0, i32 13
  %26 = load i32, ptr %25, align 4
  br i1 %2, label %27, label %42

27:                                               ; preds = %24
  %28 = and i32 %26, -67115009
  %29 = or i32 %28, 67110912
  store i32 %29, ptr %25, align 4
  %30 = load volatile i32, ptr %25, align 4
  %31 = and i32 %30, 128
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %33, label %83

33:                                               ; preds = %27
  %34 = or i32 %30, 128
  store i32 %34, ptr %25, align 4
  %35 = getelementptr inbounds %struct.sock_common, ptr %0, i32 0, i32 3
  %36 = load i16, ptr %35, align 8
  %37 = icmp ugt i16 %36, 1
  %38 = and i32 %30, 32896
  %39 = icmp eq i32 %38, 0
  %40 = select i1 %37, i1 %39, i1 false
  br i1 %40, label %41, label %83

41:                                               ; preds = %33
  tail call void @net_enable_timestamp() #21
  br label %83

42:                                               ; preds = %24
  %43 = and i32 %26, -6145
  store i32 %43, ptr %25, align 4
  br label %83

44:                                               ; preds = %3
  %45 = getelementptr inbounds %struct.sock_common, ptr %0, i32 0, i32 13
  %46 = load i32, ptr %45, align 4
  br i1 %2, label %47, label %62

47:                                               ; preds = %44
  %48 = and i32 %46, -67115009
  %49 = or i32 %48, 6144
  store i32 %49, ptr %45, align 4
  %50 = load volatile i32, ptr %45, align 4
  %51 = and i32 %50, 128
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %53, label %83

53:                                               ; preds = %47
  %54 = or i32 %50, 128
  store i32 %54, ptr %45, align 4
  %55 = getelementptr inbounds %struct.sock_common, ptr %0, i32 0, i32 3
  %56 = load i16, ptr %55, align 8
  %57 = icmp ugt i16 %56, 1
  %58 = and i32 %50, 32896
  %59 = icmp eq i32 %58, 0
  %60 = select i1 %57, i1 %59, i1 false
  br i1 %60, label %61, label %83

61:                                               ; preds = %53
  tail call void @net_enable_timestamp() #21
  br label %83

62:                                               ; preds = %44
  %63 = and i32 %46, -6145
  store i32 %63, ptr %45, align 4
  br label %83

64:                                               ; preds = %3
  %65 = getelementptr inbounds %struct.sock_common, ptr %0, i32 0, i32 13
  %66 = load i32, ptr %65, align 4
  br i1 %2, label %67, label %81

67:                                               ; preds = %64
  %68 = or i32 %66, 67115008
  store i32 %68, ptr %65, align 4
  %69 = load volatile i32, ptr %65, align 4
  %70 = and i32 %69, 128
  %71 = icmp eq i32 %70, 0
  br i1 %71, label %72, label %83

72:                                               ; preds = %67
  %73 = or i32 %69, 128
  store i32 %73, ptr %65, align 4
  %74 = getelementptr inbounds %struct.sock_common, ptr %0, i32 0, i32 3
  %75 = load i16, ptr %74, align 8
  %76 = icmp ugt i16 %75, 1
  %77 = and i32 %69, 32896
  %78 = icmp eq i32 %77, 0
  %79 = select i1 %76, i1 %78, i1 false
  br i1 %79, label %80, label %83

80:                                               ; preds = %72
  tail call void @net_enable_timestamp() #21
  br label %83

81:                                               ; preds = %64
  %82 = and i32 %66, -6145
  store i32 %82, ptr %65, align 4
  br label %83

83:                                               ; preds = %81, %80, %72, %67, %62, %61, %53, %47, %42, %41, %33, %27, %22, %21, %13, %7, %3
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @sock_set_timestamping(ptr noundef %0, i32 noundef %1, [2 x i32] %2) local_unnamed_addr #0 {
  %4 = alloca ptr, align 4
  %5 = extractvalue [2 x i32] %2, 0
  %6 = extractvalue [2 x i32] %2, 1
  %7 = icmp ult i32 %5, 65536
  br i1 %7, label %8, label %121

8:                                                ; preds = %3
  %9 = and i32 %5, 128
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %37, label %11

11:                                               ; preds = %8
  %12 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 65
  %13 = load i16, ptr %12, align 8
  %14 = and i16 %13, 128
  %15 = icmp eq i16 %14, 0
  br i1 %15, label %16, label %37

16:                                               ; preds = %11
  %17 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 45
  %18 = load i16, ptr %17, align 2
  %19 = icmp eq i16 %18, 1
  br i1 %19, label %20, label %35

20:                                               ; preds = %16
  %21 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 46
  %22 = load i16, ptr %21, align 4
  %23 = icmp eq i16 %22, 6
  br i1 %23, label %24, label %35

24:                                               ; preds = %20
  %25 = getelementptr inbounds %struct.sock_common, ptr %0, i32 0, i32 4
  %26 = load volatile i8, ptr %25, align 2
  %27 = zext i8 %26 to i32
  %28 = shl nuw i32 1, %27
  %29 = and i32 %28, 1152
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %31, label %121

31:                                               ; preds = %24
  %32 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 67
  %33 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 16
  %34 = load i32, ptr %33, align 4
  store volatile i32 %34, ptr %32, align 4
  br label %37

35:                                               ; preds = %20, %16
  %36 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 67
  store volatile i32 0, ptr %36, align 4
  br label %37

37:                                               ; preds = %35, %31, %11, %8
  %38 = and i32 %5, 6144
  %39 = icmp eq i32 %38, 4096
  br i1 %39, label %121, label %40

40:                                               ; preds = %37
  %41 = and i32 %5, 32768
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %85, label %43

43:                                               ; preds = %40
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #21
  store ptr null, ptr %4, align 4, !annotation !18
  %44 = getelementptr inbounds %struct.sock_common, ptr %0, i32 0, i32 6
  %45 = load i32, ptr %44, align 4
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %50, label %47

47:                                               ; preds = %43
  %48 = tail call ptr @dev_get_by_index(ptr noundef nonnull @init_net, i32 noundef %45) #21
  %49 = icmp eq ptr %48, null
  br i1 %49, label %50, label %52

50:                                               ; preds = %47, %43
  %51 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11, ptr noundef nonnull @__func__.sock_timestamping_bind_phc) #23
  br label %80

52:                                               ; preds = %47
  %53 = call i32 @ethtool_get_phc_vclocks(ptr noundef nonnull %48, ptr noundef nonnull %4) #21
  %54 = call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #21, !srcloc !44
  %55 = getelementptr inbounds %struct.net_device, ptr %48, i32 0, i32 99
  %56 = load ptr, ptr %55, align 8
  %57 = ptrtoint ptr %56 to i32
  %58 = call i32 @llvm.read_register.i32(metadata !0) #21
  %59 = inttoptr i32 %58 to ptr
  %60 = call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %59) #14, !srcloc !42
  %61 = add i32 %60, %57
  %62 = inttoptr i32 %61 to ptr
  %63 = load i32, ptr %62, align 4
  %64 = add i32 %63, -1
  store i32 %64, ptr %62, align 4
  call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %54) #21, !srcloc !45
  %65 = icmp sgt i32 %53, 0
  br i1 %65, label %66, label %80

66:                                               ; preds = %52
  %67 = load ptr, ptr %4, align 4
  %68 = load i32, ptr %67, align 4
  %69 = icmp eq i32 %68, %6
  br i1 %69, label %82, label %70

70:                                               ; preds = %74, %66
  %71 = phi i32 [ %72, %74 ], [ 0, %66 ]
  %72 = add nuw nsw i32 %71, 1
  %73 = icmp eq i32 %72, %53
  br i1 %73, label %78, label %74

74:                                               ; preds = %70
  %75 = getelementptr i32, ptr %67, i32 %72
  %76 = load i32, ptr %75, align 4
  %77 = icmp eq i32 %76, %6
  br i1 %77, label %78, label %70

78:                                               ; preds = %74, %70
  %79 = icmp slt i32 %72, %53
  call void @kfree(ptr noundef %67) #21
  br i1 %79, label %83, label %80

80:                                               ; preds = %78, %52, %50
  %81 = phi i32 [ -22, %52 ], [ -22, %78 ], [ -95, %50 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #21
  br label %121

82:                                               ; preds = %66
  call void @kfree(ptr noundef %67) #21
  br label %83

83:                                               ; preds = %82, %78
  %84 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 59
  store i32 %6, ptr %84, align 8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #21
  br label %85

85:                                               ; preds = %83, %40
  %86 = trunc i32 %5 to i16
  %87 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 65
  store i16 %86, ptr %87, align 8
  %88 = icmp eq i32 %1, 65
  %89 = getelementptr inbounds %struct.sock_common, ptr %0, i32 0, i32 13
  %90 = load i32, ptr %89, align 4
  %91 = and i32 %90, -67108865
  %92 = select i1 %88, i32 67108864, i32 0
  %93 = or i32 %91, %92
  store i32 %93, ptr %89, align 4
  %94 = and i32 %5, 8
  %95 = icmp eq i32 %94, 0
  br i1 %95, label %109, label %96

96:                                               ; preds = %85
  %97 = load volatile i32, ptr %89, align 4
  %98 = and i32 %97, 32768
  %99 = icmp eq i32 %98, 0
  br i1 %99, label %100, label %121

100:                                              ; preds = %96
  %101 = or i32 %97, 32768
  store i32 %101, ptr %89, align 4
  %102 = getelementptr inbounds %struct.sock_common, ptr %0, i32 0, i32 3
  %103 = load i16, ptr %102, align 8
  %104 = icmp ugt i16 %103, 1
  %105 = and i32 %97, 32896
  %106 = icmp eq i32 %105, 0
  %107 = select i1 %104, i1 %106, i1 false
  br i1 %107, label %108, label %121

108:                                              ; preds = %100
  call void @net_enable_timestamp() #21
  br label %121

109:                                              ; preds = %85
  %110 = and i32 %90, 32768
  %111 = icmp eq i32 %110, 0
  br i1 %111, label %121, label %112

112:                                              ; preds = %109
  %113 = and i32 %93, -32769
  store i32 %113, ptr %89, align 8
  %114 = getelementptr inbounds %struct.sock_common, ptr %0, i32 0, i32 3
  %115 = load i16, ptr %114, align 8
  %116 = icmp ugt i16 %115, 1
  %117 = and i32 %90, 128
  %118 = icmp eq i32 %117, 0
  %119 = select i1 %116, i1 %118, i1 false
  br i1 %119, label %120, label %121

120:                                              ; preds = %112
  call void @net_disable_timestamp() #21
  br label %121

121:                                              ; preds = %120, %112, %109, %108, %100, %96, %80, %37, %24, %3
  %122 = phi i32 [ -22, %3 ], [ -22, %24 ], [ -22, %37 ], [ %81, %80 ], [ 0, %96 ], [ 0, %100 ], [ 0, %108 ], [ 0, %109 ], [ 0, %112 ], [ 0, %120 ]
  ret i32 %122
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @sock_enable_timestamp(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.sock_common, ptr %0, i32 0, i32 13
  %4 = lshr i32 %1, 5
  %5 = getelementptr i32, ptr %3, i32 %4
  %6 = load volatile i32, ptr %5, align 4
  %7 = and i32 %1, 31
  %8 = shl nuw i32 1, %7
  %9 = and i32 %6, %8
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %21

11:                                               ; preds = %2
  %12 = load i32, ptr %3, align 8
  %13 = or i32 %6, %8
  store i32 %13, ptr %5, align 4
  %14 = getelementptr inbounds %struct.sock_common, ptr %0, i32 0, i32 3
  %15 = load i16, ptr %14, align 8
  %16 = icmp ugt i16 %15, 1
  %17 = and i32 %12, 32896
  %18 = icmp eq i32 %17, 0
  %19 = select i1 %16, i1 %18, i1 false
  br i1 %19, label %20, label %21

20:                                               ; preds = %11
  tail call void @net_enable_timestamp() #21
  br label %21

21:                                               ; preds = %20, %11, %2
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @sock_set_keepalive(ptr noundef %0) #0 {
  tail call void @lock_sock_nested(ptr noundef %0, i32 undef) #21
  %2 = getelementptr inbounds %struct.sock_common, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.proto, ptr %3, i32 0, i32 11
  %5 = load ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %8, label %7

7:                                                ; preds = %1
  tail call void %5(ptr noundef %0, i32 noundef 1) #21
  br label %8

8:                                                ; preds = %7, %1
  %9 = getelementptr inbounds %struct.sock_common, ptr %0, i32 0, i32 13
  %10 = load i32, ptr %9, align 4
  %11 = or i32 %10, 8
  store i32 %11, ptr %9, align 4
  %12 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 4
  tail call void @_raw_spin_lock_bh(ptr noundef %12) #21
  %13 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 9, i32 3
  %14 = load ptr, ptr %13, align 4
  %15 = icmp eq ptr %14, null
  br i1 %15, label %17, label %16

16:                                               ; preds = %8
  tail call void @__release_sock(ptr noundef %0) #21
  br label %17

17:                                               ; preds = %16, %8
  %18 = load ptr, ptr %2, align 8
  %19 = getelementptr inbounds %struct.proto, ptr %18, i32 0, i32 19
  %20 = load ptr, ptr %19, align 4
  %21 = icmp eq ptr %20, null
  br i1 %21, label %23, label %22

22:                                               ; preds = %17
  tail call void %20(ptr noundef %0) #21
  br label %23

23:                                               ; preds = %22, %17
  %24 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 4, i32 1
  %25 = load i32, ptr %24, align 4
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %28, label %27

27:                                               ; preds = %23
  store i32 0, ptr %24, align 4
  br label %28

28:                                               ; preds = %27, %23
  %29 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 4, i32 2, i32 1
  %30 = load volatile ptr, ptr %29, align 4
  %31 = icmp eq ptr %30, %29
  br i1 %31, label %34, label %32

32:                                               ; preds = %28
  %33 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 4, i32 2
  tail call void @__wake_up(ptr noundef %33, i32 noundef 3, i32 noundef 1, ptr noundef null) #21
  br label %34

34:                                               ; preds = %32, %28
  tail call void @_raw_spin_unlock_bh(ptr noundef %12) #21
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @sock_set_rcvbuf(ptr noundef %0, i32 noundef %1) #0 {
  tail call void @lock_sock_nested(ptr noundef %0, i32 undef) #21
  %3 = tail call i32 @llvm.smin.i32(i32 %1, i32 1073741823) #21
  %4 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 43
  %5 = load i8, ptr %4, align 8
  %6 = or i8 %5, 32
  store i8 %6, ptr %4, align 8
  %7 = shl i32 %3, 1
  %8 = tail call i32 @llvm.smax.i32(i32 %7, i32 2240) #21
  %9 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 15
  store volatile i32 %8, ptr %9, align 4
  %10 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 4
  tail call void @_raw_spin_lock_bh(ptr noundef %10) #21
  %11 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 9, i32 3
  %12 = load ptr, ptr %11, align 4
  %13 = icmp eq ptr %12, null
  br i1 %13, label %15, label %14

14:                                               ; preds = %2
  tail call void @__release_sock(ptr noundef %0) #21
  br label %15

15:                                               ; preds = %14, %2
  %16 = getelementptr inbounds %struct.sock_common, ptr %0, i32 0, i32 8
  %17 = load ptr, ptr %16, align 8
  %18 = getelementptr inbounds %struct.proto, ptr %17, i32 0, i32 19
  %19 = load ptr, ptr %18, align 4
  %20 = icmp eq ptr %19, null
  br i1 %20, label %22, label %21

21:                                               ; preds = %15
  tail call void %19(ptr noundef %0) #21
  br label %22

22:                                               ; preds = %21, %15
  %23 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 4, i32 1
  %24 = load i32, ptr %23, align 4
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %27, label %26

26:                                               ; preds = %22
  store i32 0, ptr %23, align 4
  br label %27

27:                                               ; preds = %26, %22
  %28 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 4, i32 2, i32 1
  %29 = load volatile ptr, ptr %28, align 4
  %30 = icmp eq ptr %29, %28
  br i1 %30, label %33, label %31

31:                                               ; preds = %27
  %32 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 4, i32 2
  tail call void @__wake_up(ptr noundef %32, i32 noundef 3, i32 noundef 1, ptr noundef null) #21
  br label %33

33:                                               ; preds = %31, %27
  tail call void @_raw_spin_unlock_bh(ptr noundef %10) #21
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @sock_set_mark(ptr noundef %0, i32 noundef %1) #0 {
  tail call void @lock_sock_nested(ptr noundef %0, i32 undef) #21
  %3 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 34
  %4 = load i32, ptr %3, align 8
  %5 = icmp eq i32 %4, %1
  br i1 %5, label %13, label %6

6:                                                ; preds = %2
  store i32 %1, ptr %3, align 8
  %7 = getelementptr inbounds %struct.sock_common, ptr %0, i32 0, i32 16
  store i16 -1, ptr %7, align 4
  %8 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 29
  store i32 0, ptr %8, align 4
  %9 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 19
  tail call void asm sideeffect "dmb ish", "~{memory}"() #21, !srcloc !38
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %9) #21, !srcloc !11
  %10 = tail call { i32, i32 } asm sideeffect "@\09__xchg4\0A1:\09ldrex\09$0, [$3]\0A\09strex\09$1, $2, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,r,r,~{memory},~{cc}"(i32 0, ptr %9) #21, !srcloc !39
  %11 = extractvalue { i32, i32 } %10, 0
  %12 = inttoptr i32 %11 to ptr
  tail call void asm sideeffect "dmb ish", "~{memory}"() #21, !srcloc !40
  tail call void @dst_release(ptr noundef %12) #21
  br label %13

13:                                               ; preds = %6, %2
  %14 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 4
  tail call void @_raw_spin_lock_bh(ptr noundef %14) #21
  %15 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 9, i32 3
  %16 = load ptr, ptr %15, align 4
  %17 = icmp eq ptr %16, null
  br i1 %17, label %19, label %18

18:                                               ; preds = %13
  tail call void @__release_sock(ptr noundef %0) #21
  br label %19

19:                                               ; preds = %18, %13
  %20 = getelementptr inbounds %struct.sock_common, ptr %0, i32 0, i32 8
  %21 = load ptr, ptr %20, align 8
  %22 = getelementptr inbounds %struct.proto, ptr %21, i32 0, i32 19
  %23 = load ptr, ptr %22, align 4
  %24 = icmp eq ptr %23, null
  br i1 %24, label %26, label %25

25:                                               ; preds = %19
  tail call void %23(ptr noundef %0) #21
  br label %26

26:                                               ; preds = %25, %19
  %27 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 4, i32 1
  %28 = load i32, ptr %27, align 4
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %31, label %30

30:                                               ; preds = %26
  store i32 0, ptr %27, align 4
  br label %31

31:                                               ; preds = %30, %26
  %32 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 4, i32 2, i32 1
  %33 = load volatile ptr, ptr %32, align 4
  %34 = icmp eq ptr %33, %32
  br i1 %34, label %37, label %35

35:                                               ; preds = %31
  %36 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 4, i32 2
  tail call void @__wake_up(ptr noundef %36, i32 noundef 3, i32 noundef 1, ptr noundef null) #21
  br label %37

37:                                               ; preds = %35, %31
  tail call void @_raw_spin_unlock_bh(ptr noundef %14) #21
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @__sock_set_mark(ptr noundef %0, i32 noundef %1) unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 34
  %4 = load i32, ptr %3, align 8
  %5 = icmp eq i32 %4, %1
  br i1 %5, label %13, label %6

6:                                                ; preds = %2
  store i32 %1, ptr %3, align 8
  %7 = getelementptr inbounds %struct.sock_common, ptr %0, i32 0, i32 16
  store i16 -1, ptr %7, align 4
  %8 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 29
  store i32 0, ptr %8, align 4
  %9 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 19
  tail call void asm sideeffect "dmb ish", "~{memory}"() #21, !srcloc !38
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %9) #21, !srcloc !11
  %10 = tail call { i32, i32 } asm sideeffect "@\09__xchg4\0A1:\09ldrex\09$0, [$3]\0A\09strex\09$1, $2, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,r,r,~{memory},~{cc}"(i32 0, ptr %9) #21, !srcloc !39
  %11 = extractvalue { i32, i32 } %10, 0
  %12 = inttoptr i32 %11 to ptr
  tail call void asm sideeffect "dmb ish", "~{memory}"() #21, !srcloc !40
  tail call void @dst_release(ptr noundef %12) #21
  br label %13

13:                                               ; preds = %6, %2
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @sock_setsockopt(ptr noundef %0, i32 %1, i32 noundef %2, [2 x i32] %3, i32 noundef %4) #0 {
  %6 = alloca [16 x i8], align 1
  %7 = alloca %struct.so_timestamping, align 8
  %8 = alloca %struct.sock_txtime, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.linger, align 8
  %11 = alloca %struct.sock_fprog, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.sock_fprog, align 8
  %14 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #21
  store i64 0, ptr %7, align 8, !annotation !18
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %8) #21
  store i64 0, ptr %8, align 8, !annotation !18
  %15 = getelementptr inbounds %struct.socket, ptr %0, i32 0, i32 4
  %16 = load ptr, ptr %15, align 16
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %9) #21
  store i32 0, ptr %9, align 4, !annotation !18
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %10) #21
  store i64 0, ptr %10, align 8, !annotation !18
  %17 = icmp eq i32 %2, 25
  br i1 %17, label %18, label %60

18:                                               ; preds = %5
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #21
  %19 = icmp slt i32 %4, 0
  br i1 %19, label %58, label %20

20:                                               ; preds = %18
  %21 = tail call i32 @llvm.smin.i32(i32 %4, i32 15) #21
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(16) %6, i8 0, i32 16, i1 false) #21
  %22 = extractvalue [2 x i32] %3, 0
  %23 = inttoptr i32 %22 to ptr
  %24 = extractvalue [2 x i32] %3, 1
  %25 = and i32 %24, 1
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %44

27:                                               ; preds = %20
  %28 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %23, i32 %21, i32 -1090519040) #22, !srcloc !19
  %29 = extractvalue { i32, i32 } %28, 0
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %31, label %38, !prof !14

31:                                               ; preds = %27
  %32 = tail call ptr @llvm.thread.pointer() #21
  %33 = getelementptr inbounds %struct.thread_info, ptr %32, i32 0, i32 3
  %34 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %33) #14, !srcloc !20
  %35 = and i32 %34, -13
  %36 = or i32 %35, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %36) #21, !srcloc !21
  tail call void asm sideeffect "isb ", "~{memory}"() #21, !srcloc !22
  %37 = call i32 @arm_copy_from_user(ptr noundef nonnull %6, ptr noundef %23, i32 noundef %21) #21
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %34) #21, !srcloc !21
  call void asm sideeffect "isb ", "~{memory}"() #21, !srcloc !22
  br label %38

38:                                               ; preds = %31, %27
  %39 = phi i32 [ %37, %31 ], [ %21, %27 ]
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %45, label %41, !prof !14

41:                                               ; preds = %38
  %42 = sub i32 %21, %39
  %43 = getelementptr i8, ptr %6, i32 %42
  call void @llvm.memset.p0.i32(ptr align 1 %43, i8 0, i32 %39, i1 false) #21
  br label %58

44:                                               ; preds = %20
  call void @llvm.memcpy.p0.p0.i32(ptr nonnull align 1 %6, ptr align 1 %23, i32 %21, i1 false) #21
  br label %45

45:                                               ; preds = %44, %38
  %46 = load i8, ptr %6, align 1
  %47 = icmp eq i8 %46, 0
  br i1 %47, label %55, label %48

48:                                               ; preds = %45
  call void asm sideeffect "", "~{memory}"() #21, !srcloc !36
  %49 = call ptr @dev_get_by_name_rcu(ptr noundef nonnull @init_net, ptr noundef nonnull %6) #21
  %50 = icmp eq ptr %49, null
  br i1 %50, label %54, label %51

51:                                               ; preds = %48
  %52 = getelementptr inbounds %struct.net_device, ptr %49, i32 0, i32 17
  %53 = load i32, ptr %52, align 4
  call void asm sideeffect "", "~{memory}"() #21, !srcloc !37
  br label %55

54:                                               ; preds = %48
  call void asm sideeffect "", "~{memory}"() #21, !srcloc !37
  br label %58

55:                                               ; preds = %51, %45
  %56 = phi i32 [ 0, %45 ], [ %53, %51 ]
  %57 = call i32 @sock_bindtoindex(ptr noundef %16, i32 noundef %56, i1 noundef zeroext true) #21
  br label %58

58:                                               ; preds = %55, %54, %41, %18
  %59 = phi i32 [ %57, %55 ], [ -22, %18 ], [ -19, %54 ], [ -14, %41 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #21
  br label %545

60:                                               ; preds = %5
  %61 = icmp ult i32 %4, 4
  br i1 %61, label %545, label %62

62:                                               ; preds = %60
  %63 = extractvalue [2 x i32] %3, 0
  %64 = inttoptr i32 %63 to ptr
  %65 = extractvalue [2 x i32] %3, 1
  %66 = and i32 %65, 1
  %67 = icmp eq i32 %66, 0
  br i1 %67, label %68, label %86

68:                                               ; preds = %62
  %69 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %64, i32 4, i32 -1090519040) #22, !srcloc !19
  %70 = extractvalue { i32, i32 } %69, 0
  %71 = icmp eq i32 %70, 0
  br i1 %71, label %72, label %82, !prof !14

72:                                               ; preds = %68
  %73 = tail call ptr @llvm.thread.pointer() #21
  %74 = getelementptr inbounds %struct.thread_info, ptr %73, i32 0, i32 3
  %75 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %74) #14, !srcloc !20
  %76 = and i32 %75, -13
  %77 = or i32 %76, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %77) #21, !srcloc !21
  tail call void asm sideeffect "isb ", "~{memory}"() #21, !srcloc !22
  %78 = call i32 @arm_copy_from_user(ptr noundef nonnull %9, ptr noundef %64, i32 noundef 4) #21
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %75) #21, !srcloc !21
  call void asm sideeffect "isb ", "~{memory}"() #21, !srcloc !22
  %79 = icmp eq i32 %78, 0
  br i1 %79, label %80, label %82, !prof !14

80:                                               ; preds = %72
  %81 = load i32, ptr %9, align 4
  br label %88

82:                                               ; preds = %72, %68
  %83 = phi i32 [ %78, %72 ], [ 4, %68 ]
  %84 = sub i32 4, %83
  %85 = getelementptr i8, ptr %9, i32 %84
  call void @llvm.memset.p0.i32(ptr align 1 %85, i8 0, i32 %83, i1 false) #21
  br label %545

86:                                               ; preds = %62
  %87 = load i32, ptr %64, align 1
  store i32 %87, ptr %9, align 4
  br label %88

88:                                               ; preds = %86, %80
  %89 = phi i32 [ %81, %80 ], [ %87, %86 ]
  %90 = icmp ne i32 %89, 0
  %91 = zext i1 %90 to i32
  call void @lock_sock_nested(ptr noundef %16, i32 undef) #21
  switch i32 %2, label %518 [
    i32 1, label %92
    i32 2, label %104
    i32 15, label %110
    i32 3, label %116
    i32 38, label %116
    i32 39, label %116
    i32 4, label %116
    i32 5, label %117
    i32 6, label %123
    i32 7, label %130
    i32 32, label %145
    i32 8, label %150
    i32 33, label %161
    i32 9, label %173
    i32 10, label %187
    i32 11, label %194
    i32 12, label %200
    i32 13, label %212
    i32 14, label %519
    i32 16, label %234
    i32 29, label %238
    i32 63, label %238
    i32 35, label %238
    i32 64, label %238
    i32 65, label %239
    i32 37, label %239
    i32 18, label %256
    i32 20, label %273
    i32 66, label %273
    i32 21, label %277
    i32 67, label %277
    i32 26, label %281
    i32 50, label %288
    i32 51, label %298
    i32 52, label %305
    i32 68, label %315
    i32 27, label %317
    i32 44, label %319
    i32 34, label %330
    i32 36, label %334
    i32 40, label %342
    i32 41, label %349
    i32 42, label %356
    i32 43, label %365
    i32 45, label %372
    i32 46, label %379
    i32 69, label %392
    i32 70, label %398
    i32 47, label %413
    i32 49, label %428
    i32 53, label %431
    i32 60, label %435
    i32 61, label %459
    i32 62, label %493
    i32 72, label %496
    i32 73, label %508
  ]

92:                                               ; preds = %88
  %93 = load i32, ptr %9, align 4
  %94 = icmp eq i32 %93, 0
  br i1 %94, label %97, label %95

95:                                               ; preds = %92
  %96 = call zeroext i1 @capable(i32 noundef 12) #21
  br i1 %96, label %97, label %519

97:                                               ; preds = %95, %92
  %98 = getelementptr inbounds %struct.sock_common, ptr %16, i32 0, i32 13
  %99 = load i32, ptr %98, align 4
  br i1 %90, label %100, label %102

100:                                              ; preds = %97
  %101 = or i32 %99, 1024
  store i32 %101, ptr %98, align 4
  br label %519

102:                                              ; preds = %97
  %103 = and i32 %99, -1025
  store i32 %103, ptr %98, align 4
  br label %519

104:                                              ; preds = %88
  %105 = zext i1 %90 to i8
  %106 = getelementptr inbounds %struct.sock_common, ptr %16, i32 0, i32 5
  %107 = load i8, ptr %106, align 1
  %108 = and i8 %107, -16
  %109 = or i8 %108, %105
  store i8 %109, ptr %106, align 1
  br label %519

110:                                              ; preds = %88
  %111 = getelementptr inbounds %struct.sock_common, ptr %16, i32 0, i32 5
  %112 = load i8, ptr %111, align 1
  %113 = select i1 %90, i8 16, i8 0
  %114 = and i8 %112, -17
  %115 = or i8 %114, %113
  store i8 %115, ptr %111, align 1
  br label %519

116:                                              ; preds = %88, %88, %88, %88
  br label %519

117:                                              ; preds = %88
  %118 = getelementptr inbounds %struct.sock_common, ptr %16, i32 0, i32 13
  %119 = load i32, ptr %118, align 4
  %120 = and i32 %119, -8193
  %121 = select i1 %90, i32 8192, i32 0
  %122 = or i32 %120, %121
  store i32 %122, ptr %118, align 4
  call fastcc void @sk_dst_reset(ptr noundef %16)
  br label %519

123:                                              ; preds = %88
  %124 = getelementptr inbounds %struct.sock_common, ptr %16, i32 0, i32 13
  %125 = load i32, ptr %124, align 4
  br i1 %90, label %126, label %128

126:                                              ; preds = %123
  %127 = or i32 %125, 64
  store i32 %127, ptr %124, align 4
  br label %519

128:                                              ; preds = %123
  %129 = and i32 %125, -65
  store i32 %129, ptr %124, align 4
  br label %519

130:                                              ; preds = %88
  %131 = load i32, ptr %9, align 4
  %132 = load i32, ptr @sysctl_wmem_max, align 4
  %133 = call i32 @llvm.umin.i32(i32 %131, i32 %132)
  br label %134

134:                                              ; preds = %147, %130
  %135 = phi i32 [ %133, %130 ], [ %149, %147 ]
  %136 = call i32 @llvm.smin.i32(i32 %135, i32 1073741823)
  store i32 %136, ptr %9, align 4
  %137 = getelementptr inbounds %struct.sock, ptr %16, i32 0, i32 43
  %138 = load i8, ptr %137, align 8
  %139 = or i8 %138, 16
  store i8 %139, ptr %137, align 8
  %140 = shl i32 %136, 1
  %141 = call i32 @llvm.smax.i32(i32 %140, i32 4480)
  %142 = getelementptr inbounds %struct.sock, ptr %16, i32 0, i32 21
  store volatile i32 %141, ptr %142, align 8
  %143 = getelementptr inbounds %struct.sock, ptr %16, i32 0, i32 77
  %144 = load ptr, ptr %143, align 4
  call void %144(ptr noundef %16) #21
  br label %519

145:                                              ; preds = %88
  %146 = call zeroext i1 @capable(i32 noundef 12) #21
  br i1 %146, label %147, label %519

147:                                              ; preds = %145
  %148 = load i32, ptr %9, align 4
  %149 = call i32 @llvm.smax.i32(i32 %148, i32 0)
  br label %134

150:                                              ; preds = %88
  %151 = load i32, ptr %9, align 4
  %152 = load i32, ptr @sysctl_rmem_max, align 4
  %153 = call i32 @llvm.umin.i32(i32 %151, i32 %152)
  %154 = call i32 @llvm.smin.i32(i32 %153, i32 1073741823) #21
  %155 = getelementptr inbounds %struct.sock, ptr %16, i32 0, i32 43
  %156 = load i8, ptr %155, align 8
  %157 = or i8 %156, 32
  store i8 %157, ptr %155, align 8
  %158 = shl i32 %154, 1
  %159 = call i32 @llvm.smax.i32(i32 %158, i32 2240) #21
  %160 = getelementptr inbounds %struct.sock, ptr %16, i32 0, i32 15
  store volatile i32 %159, ptr %160, align 4
  br label %519

161:                                              ; preds = %88
  %162 = call zeroext i1 @capable(i32 noundef 12) #21
  br i1 %162, label %163, label %519

163:                                              ; preds = %161
  %164 = load i32, ptr %9, align 4
  %165 = call i32 @llvm.smax.i32(i32 %164, i32 0)
  %166 = call i32 @llvm.smin.i32(i32 %165, i32 1073741823) #21
  %167 = getelementptr inbounds %struct.sock, ptr %16, i32 0, i32 43
  %168 = load i8, ptr %167, align 8
  %169 = or i8 %168, 32
  store i8 %169, ptr %167, align 8
  %170 = shl nuw nsw i32 %166, 1
  %171 = call i32 @llvm.smax.i32(i32 %170, i32 2240) #21
  %172 = getelementptr inbounds %struct.sock, ptr %16, i32 0, i32 15
  store volatile i32 %171, ptr %172, align 4
  br label %519

173:                                              ; preds = %88
  %174 = getelementptr inbounds %struct.sock_common, ptr %16, i32 0, i32 8
  %175 = load ptr, ptr %174, align 8
  %176 = getelementptr inbounds %struct.proto, ptr %175, i32 0, i32 11
  %177 = load ptr, ptr %176, align 4
  %178 = icmp eq ptr %177, null
  br i1 %178, label %180, label %179

179:                                              ; preds = %173
  call void %177(ptr noundef %16, i32 noundef %91) #21
  br label %180

180:                                              ; preds = %179, %173
  %181 = getelementptr inbounds %struct.sock_common, ptr %16, i32 0, i32 13
  %182 = load i32, ptr %181, align 4
  br i1 %90, label %183, label %185

183:                                              ; preds = %180
  %184 = or i32 %182, 8
  store i32 %184, ptr %181, align 4
  br label %519

185:                                              ; preds = %180
  %186 = and i32 %182, -9
  store i32 %186, ptr %181, align 4
  br label %519

187:                                              ; preds = %88
  %188 = getelementptr inbounds %struct.sock_common, ptr %16, i32 0, i32 13
  %189 = load i32, ptr %188, align 4
  br i1 %90, label %190, label %192

190:                                              ; preds = %187
  %191 = or i32 %189, 4
  store i32 %191, ptr %188, align 4
  br label %519

192:                                              ; preds = %187
  %193 = and i32 %189, -5
  store i32 %193, ptr %188, align 4
  br label %519

194:                                              ; preds = %88
  %195 = getelementptr inbounds %struct.sock, ptr %16, i32 0, i32 43
  %196 = load i8, ptr %195, align 8
  %197 = select i1 %90, i8 4, i8 0
  %198 = and i8 %196, -5
  %199 = or i8 %198, %197
  store i8 %199, ptr %195, align 8
  br label %519

200:                                              ; preds = %88
  %201 = load i32, ptr %9, align 4
  %202 = icmp ult i32 %201, 7
  br i1 %202, label %209, label %203

203:                                              ; preds = %200
  %204 = load ptr, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 11), align 4
  %205 = call zeroext i1 @ns_capable(ptr noundef %204, i32 noundef 13) #21
  br i1 %205, label %209, label %206

206:                                              ; preds = %203
  %207 = load ptr, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 11), align 4
  %208 = call zeroext i1 @ns_capable(ptr noundef %207, i32 noundef 12) #21
  br i1 %208, label %209, label %519

209:                                              ; preds = %206, %203, %200
  %210 = load i32, ptr %9, align 4
  %211 = getelementptr inbounds %struct.sock, ptr %16, i32 0, i32 33
  store i32 %210, ptr %211, align 4
  br label %519

212:                                              ; preds = %88
  %213 = icmp ult i32 %4, 8
  br i1 %213, label %519, label %214

214:                                              ; preds = %212
  %215 = call fastcc i32 @copy_from_sockptr(ptr noundef nonnull %10, [2 x i32] %3, i32 noundef 8)
  %216 = icmp eq i32 %215, 0
  br i1 %216, label %217, label %519

217:                                              ; preds = %214
  %218 = load i32, ptr %10, align 8
  %219 = icmp eq i32 %218, 0
  br i1 %219, label %220, label %224

220:                                              ; preds = %217
  %221 = getelementptr inbounds %struct.sock_common, ptr %16, i32 0, i32 13
  %222 = load i32, ptr %221, align 4
  %223 = and i32 %222, -17
  store i32 %223, ptr %221, align 4
  br label %519

224:                                              ; preds = %217
  %225 = getelementptr inbounds %struct.linger, ptr %10, i32 0, i32 1
  %226 = load i32, ptr %225, align 4
  %227 = icmp ugt i32 %226, 21474835
  %228 = mul nuw nsw i32 %226, 100
  %229 = select i1 %227, i32 2147483647, i32 %228
  %230 = getelementptr inbounds %struct.sock, ptr %16, i32 0, i32 48
  store i32 %229, ptr %230, align 8
  %231 = getelementptr inbounds %struct.sock_common, ptr %16, i32 0, i32 13
  %232 = load i32, ptr %231, align 4
  %233 = or i32 %232, 16
  store i32 %233, ptr %231, align 4
  br label %519

234:                                              ; preds = %88
  %235 = getelementptr inbounds %struct.socket, ptr %0, i32 0, i32 2
  br i1 %90, label %236, label %237

236:                                              ; preds = %234
  call void @_set_bit(i32 noundef 3, ptr noundef %235) #21
  br label %519

237:                                              ; preds = %234
  call void @_clear_bit(i32 noundef 3, ptr noundef %235) #21
  br label %519

238:                                              ; preds = %88, %88, %88, %88
  call void @sock_set_timestamp(ptr noundef %16, i32 noundef %2, i1 noundef zeroext %90)
  br label %519

239:                                              ; preds = %88, %88
  %240 = icmp eq i32 %4, 8
  br i1 %240, label %241, label %248

241:                                              ; preds = %239
  %242 = call fastcc i32 @copy_from_sockptr(ptr noundef nonnull %7, [2 x i32] %3, i32 noundef 8)
  %243 = icmp eq i32 %242, 0
  br i1 %243, label %244, label %519

244:                                              ; preds = %241
  %245 = load i32, ptr %7, align 8
  %246 = getelementptr inbounds [2 x i32], ptr %7, i32 0, i32 1
  %247 = load i32, ptr %246, align 4
  br label %250

248:                                              ; preds = %239
  store i64 0, ptr %7, align 8
  %249 = load i32, ptr %9, align 4
  store i32 %249, ptr %7, align 8
  br label %250

250:                                              ; preds = %248, %244
  %251 = phi i32 [ %247, %244 ], [ 0, %248 ]
  %252 = phi i32 [ %245, %244 ], [ %249, %248 ]
  %253 = insertvalue [2 x i32] poison, i32 %252, 0
  %254 = insertvalue [2 x i32] %253, i32 %251, 1
  %255 = call i32 @sock_set_timestamping(ptr noundef %16, i32 noundef %2, [2 x i32] %254)
  br label %519

256:                                              ; preds = %88
  %257 = load i32, ptr %9, align 4
  %258 = icmp slt i32 %257, 0
  br i1 %258, label %259, label %260

259:                                              ; preds = %256
  store i32 2147483647, ptr %9, align 4
  br label %260

260:                                              ; preds = %259, %256
  %261 = phi i32 [ 2147483647, %259 ], [ %257, %256 ]
  %262 = getelementptr inbounds %struct.socket, ptr %0, i32 0, i32 5
  %263 = load ptr, ptr %262, align 4
  %264 = getelementptr inbounds %struct.proto_ops, ptr %263, i32 0, i32 26
  %265 = load ptr, ptr %264, align 4
  %266 = icmp eq ptr %265, null
  br i1 %266, label %269, label %267

267:                                              ; preds = %260
  %268 = call i32 %265(ptr noundef %16, i32 noundef %261) #21
  br label %519

269:                                              ; preds = %260
  %270 = icmp eq i32 %261, 0
  %271 = select i1 %270, i32 1, i32 %261
  %272 = getelementptr inbounds %struct.sock, ptr %16, i32 0, i32 6
  store volatile i32 %271, ptr %272, align 4
  br label %519

273:                                              ; preds = %88, %88
  %274 = getelementptr inbounds %struct.sock, ptr %16, i32 0, i32 62
  %275 = icmp eq i32 %2, 20
  %276 = call fastcc i32 @sock_set_timeout(ptr noundef %274, [2 x i32] %3, i32 noundef %4, i1 noundef zeroext %275)
  br label %519

277:                                              ; preds = %88, %88
  %278 = getelementptr inbounds %struct.sock, ptr %16, i32 0, i32 31
  %279 = icmp eq i32 %2, 21
  %280 = call fastcc i32 @sock_set_timeout(ptr noundef %278, [2 x i32] %3, i32 noundef %4, i1 noundef zeroext %279)
  br label %519

281:                                              ; preds = %88
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %11) #21
  store i64 0, ptr %11, align 8, !annotation !18
  %282 = call i32 @copy_bpf_fprog_from_user(ptr noundef nonnull %11, [2 x i32] %3, i32 noundef %4) #21
  %283 = icmp eq i32 %282, 0
  br i1 %283, label %284, label %286

284:                                              ; preds = %281
  %285 = call i32 @sk_attach_filter(ptr noundef nonnull %11, ptr noundef %16) #21
  br label %286

286:                                              ; preds = %284, %281
  %287 = phi i32 [ %282, %281 ], [ %285, %284 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %11) #21
  br label %519

288:                                              ; preds = %88
  %289 = icmp eq i32 %4, 4
  br i1 %289, label %290, label %519

290:                                              ; preds = %288
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %12) #21
  store i32 0, ptr %12, align 4, !annotation !18
  %291 = call fastcc i32 @copy_from_sockptr(ptr noundef nonnull %12, [2 x i32] %3, i32 noundef 4)
  %292 = icmp eq i32 %291, 0
  br i1 %292, label %293, label %296

293:                                              ; preds = %290
  %294 = load i32, ptr %12, align 4
  %295 = call i32 @sk_attach_bpf(i32 noundef %294, ptr noundef %16) #21
  br label %296

296:                                              ; preds = %293, %290
  %297 = phi i32 [ %295, %293 ], [ -14, %290 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %12) #21
  br label %519

298:                                              ; preds = %88
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %13) #21
  store i64 0, ptr %13, align 8, !annotation !18
  %299 = call i32 @copy_bpf_fprog_from_user(ptr noundef nonnull %13, [2 x i32] %3, i32 noundef %4) #21
  %300 = icmp eq i32 %299, 0
  br i1 %300, label %301, label %303

301:                                              ; preds = %298
  %302 = call i32 @sk_reuseport_attach_filter(ptr noundef nonnull %13, ptr noundef %16) #21
  br label %303

303:                                              ; preds = %301, %298
  %304 = phi i32 [ %299, %298 ], [ %302, %301 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %13) #21
  br label %519

305:                                              ; preds = %88
  %306 = icmp eq i32 %4, 4
  br i1 %306, label %307, label %519

307:                                              ; preds = %305
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %14) #21
  store i32 0, ptr %14, align 4, !annotation !18
  %308 = call fastcc i32 @copy_from_sockptr(ptr noundef nonnull %14, [2 x i32] %3, i32 noundef 4)
  %309 = icmp eq i32 %308, 0
  br i1 %309, label %310, label %313

310:                                              ; preds = %307
  %311 = load i32, ptr %14, align 4
  %312 = call i32 @sk_reuseport_attach_bpf(i32 noundef %311, ptr noundef %16) #21
  br label %313

313:                                              ; preds = %310, %307
  %314 = phi i32 [ %312, %310 ], [ -14, %307 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %14) #21
  br label %519

315:                                              ; preds = %88
  %316 = call i32 @reuseport_detach_prog(ptr noundef %16) #21
  br label %519

317:                                              ; preds = %88
  %318 = call i32 @sk_detach_filter(ptr noundef %16) #21
  br label %519

319:                                              ; preds = %88
  %320 = getelementptr inbounds %struct.sock_common, ptr %16, i32 0, i32 13
  %321 = load volatile i32, ptr %320, align 4
  %322 = and i32 %321, 2097152
  %323 = icmp eq i32 %322, 0
  %324 = select i1 %323, i1 true, i1 %90
  br i1 %324, label %325, label %519

325:                                              ; preds = %319
  br i1 %90, label %326, label %328

326:                                              ; preds = %325
  %327 = or i32 %321, 2097152
  store i32 %327, ptr %320, align 4
  br label %519

328:                                              ; preds = %325
  %329 = and i32 %321, -2097153
  store i32 %329, ptr %320, align 4
  br label %519

330:                                              ; preds = %88
  %331 = getelementptr inbounds %struct.socket, ptr %0, i32 0, i32 2
  br i1 %90, label %332, label %333

332:                                              ; preds = %330
  call void @_set_bit(i32 noundef 4, ptr noundef %331) #21
  br label %519

333:                                              ; preds = %330
  call void @_clear_bit(i32 noundef 4, ptr noundef %331) #21
  br label %519

334:                                              ; preds = %88
  %335 = load ptr, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 11), align 4
  %336 = call zeroext i1 @ns_capable(ptr noundef %335, i32 noundef 13) #21
  br i1 %336, label %340, label %337

337:                                              ; preds = %334
  %338 = load ptr, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 11), align 4
  %339 = call zeroext i1 @ns_capable(ptr noundef %338, i32 noundef 12) #21
  br i1 %339, label %340, label %519

340:                                              ; preds = %337, %334
  %341 = load i32, ptr %9, align 4
  call fastcc void @__sock_set_mark(ptr noundef %16, i32 noundef %341)
  br label %519

342:                                              ; preds = %88
  %343 = getelementptr inbounds %struct.sock_common, ptr %16, i32 0, i32 13
  %344 = load i32, ptr %343, align 4
  br i1 %90, label %345, label %347

345:                                              ; preds = %342
  %346 = or i32 %344, 131072
  store i32 %346, ptr %343, align 4
  br label %519

347:                                              ; preds = %342
  %348 = and i32 %344, -131073
  store i32 %348, ptr %343, align 4
  br label %519

349:                                              ; preds = %88
  %350 = getelementptr inbounds %struct.sock_common, ptr %16, i32 0, i32 13
  %351 = load i32, ptr %350, align 4
  br i1 %90, label %352, label %354

352:                                              ; preds = %349
  %353 = or i32 %351, 524288
  store i32 %353, ptr %350, align 4
  br label %519

354:                                              ; preds = %349
  %355 = and i32 %351, -524289
  store i32 %355, ptr %350, align 4
  br label %519

356:                                              ; preds = %88
  %357 = getelementptr inbounds %struct.socket, ptr %0, i32 0, i32 5
  %358 = load ptr, ptr %357, align 4
  %359 = getelementptr inbounds %struct.proto_ops, ptr %358, i32 0, i32 21
  %360 = load ptr, ptr %359, align 4
  %361 = icmp eq ptr %360, null
  br i1 %361, label %519, label %362

362:                                              ; preds = %356
  %363 = load i32, ptr %9, align 4
  %364 = call i32 %360(ptr noundef %16, i32 noundef %363) #21
  br label %519

365:                                              ; preds = %88
  %366 = getelementptr inbounds %struct.sock_common, ptr %16, i32 0, i32 13
  %367 = load i32, ptr %366, align 4
  br i1 %90, label %368, label %370

368:                                              ; preds = %365
  %369 = or i32 %367, 1048576
  store i32 %369, ptr %366, align 4
  br label %519

370:                                              ; preds = %365
  %371 = and i32 %367, -1048577
  store i32 %371, ptr %366, align 4
  br label %519

372:                                              ; preds = %88
  %373 = getelementptr inbounds %struct.sock_common, ptr %16, i32 0, i32 13
  %374 = load i32, ptr %373, align 4
  br i1 %90, label %375, label %377

375:                                              ; preds = %372
  %376 = or i32 %374, 4194304
  store i32 %376, ptr %373, align 4
  br label %519

377:                                              ; preds = %372
  %378 = and i32 %374, -4194305
  store i32 %378, ptr %373, align 4
  br label %519

379:                                              ; preds = %88
  %380 = load i32, ptr %9, align 4
  %381 = getelementptr inbounds %struct.sock, ptr %16, i32 0, i32 13
  %382 = load i32, ptr %381, align 4
  %383 = icmp ugt i32 %380, %382
  br i1 %383, label %384, label %388

384:                                              ; preds = %379
  %385 = call zeroext i1 @capable(i32 noundef 12) #21
  br i1 %385, label %386, label %519

386:                                              ; preds = %384
  %387 = load i32, ptr %9, align 4
  br label %388

388:                                              ; preds = %386, %379
  %389 = phi i32 [ %387, %386 ], [ %380, %379 ]
  %390 = icmp slt i32 %389, 0
  br i1 %390, label %519, label %391

391:                                              ; preds = %388
  store volatile i32 %389, ptr %381, align 4
  br label %519

392:                                              ; preds = %88
  br i1 %90, label %393, label %395

393:                                              ; preds = %392
  %394 = call zeroext i1 @capable(i32 noundef 12) #21
  br i1 %394, label %395, label %519

395:                                              ; preds = %393, %392
  %396 = zext i1 %90 to i8
  %397 = getelementptr inbounds %struct.sock, ptr %16, i32 0, i32 56
  store volatile i8 %396, ptr %397, align 8
  br label %519

398:                                              ; preds = %88
  %399 = load i32, ptr %9, align 4
  %400 = getelementptr inbounds %struct.sock, ptr %16, i32 0, i32 57
  %401 = load volatile i16, ptr %400, align 2
  %402 = zext i16 %401 to i32
  %403 = icmp sgt i32 %399, %402
  br i1 %403, label %404, label %408

404:                                              ; preds = %398
  %405 = call zeroext i1 @capable(i32 noundef 12) #21
  br i1 %405, label %406, label %519

406:                                              ; preds = %404
  %407 = load i32, ptr %9, align 4
  br label %408

408:                                              ; preds = %406, %398
  %409 = phi i32 [ %407, %406 ], [ %399, %398 ]
  %410 = icmp ugt i32 %409, 65535
  br i1 %410, label %519, label %411

411:                                              ; preds = %408
  %412 = trunc i32 %409 to i16
  store volatile i16 %412, ptr %400, align 2
  br label %519

413:                                              ; preds = %88
  %414 = load i32, ptr %9, align 4
  %415 = icmp eq i32 %414, -1
  br i1 %415, label %423, label %416

416:                                              ; preds = %413
  %417 = getelementptr inbounds %struct.sock, ptr %16, i32 0, i32 30
  call void asm sideeffect "dmb ish", "~{memory}"() #21, !srcloc !46
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %417) #21, !srcloc !11
  br label %418

418:                                              ; preds = %418, %416
  %419 = call { i32, i32 } asm sideeffect "@ __cmpxchg4\0A\09ldrex\09$1, [$2]\0A\09mov\09$0, #0\0A\09teq\09$1, $3\0A\09strexeq $0, $4, [$2]\0A", "=&r,=&r,r,Ir,r,~{memory},~{cc}"(ptr %417, i32 0, i32 1) #21, !srcloc !47
  %420 = extractvalue { i32, i32 } %419, 0
  %421 = icmp eq i32 %420, 0
  br i1 %421, label %422, label %418

422:                                              ; preds = %418
  call void asm sideeffect "dmb ish", "~{memory}"() #21, !srcloc !48
  br label %423

423:                                              ; preds = %422, %413
  %424 = getelementptr inbounds %struct.sock, ptr %16, i32 0, i32 36
  store i32 %414, ptr %424, align 8
  %425 = getelementptr inbounds %struct.sock, ptr %16, i32 0, i32 35
  %426 = load i32, ptr %425, align 4
  %427 = call i32 @llvm.umin.i32(i32 %426, i32 %414)
  store i32 %427, ptr %425, align 4
  br label %519

428:                                              ; preds = %88
  %429 = load i32, ptr %9, align 4
  %430 = getelementptr inbounds %struct.sock_common, ptr %16, i32 0, i32 18
  store volatile i32 %429, ptr %430, align 8
  br label %519

431:                                              ; preds = %88
  %432 = load i32, ptr %9, align 4
  %433 = icmp eq i32 %432, 1
  br i1 %433, label %434, label %519

434:                                              ; preds = %431
  call fastcc void @dst_negative_advice(ptr noundef %16)
  br label %519

435:                                              ; preds = %88
  %436 = getelementptr inbounds %struct.sock_common, ptr %16, i32 0, i32 3
  %437 = load i16, ptr %436, align 8
  switch i16 %437, label %519 [
    i16 2, label %438
    i16 10, label %438
    i16 21, label %449
  ]

438:                                              ; preds = %435, %435
  %439 = getelementptr inbounds %struct.sock, ptr %16, i32 0, i32 45
  %440 = load i16, ptr %439, align 2
  switch i16 %440, label %519 [
    i16 1, label %441
    i16 2, label %445
  ]

441:                                              ; preds = %438
  %442 = getelementptr inbounds %struct.sock, ptr %16, i32 0, i32 46
  %443 = load i16, ptr %442, align 4
  %444 = icmp eq i16 %443, 6
  br i1 %444, label %449, label %519

445:                                              ; preds = %438
  %446 = getelementptr inbounds %struct.sock, ptr %16, i32 0, i32 46
  %447 = load i16, ptr %446, align 4
  %448 = icmp eq i16 %447, 17
  br i1 %448, label %449, label %519

449:                                              ; preds = %445, %441, %435
  %450 = load i32, ptr %9, align 4
  %451 = icmp ugt i32 %450, 1
  br i1 %451, label %519, label %452

452:                                              ; preds = %449
  %453 = getelementptr inbounds %struct.sock_common, ptr %16, i32 0, i32 13
  %454 = load i32, ptr %453, align 4
  br i1 %90, label %455, label %457

455:                                              ; preds = %452
  %456 = or i32 %454, 262144
  store i32 %456, ptr %453, align 4
  br label %519

457:                                              ; preds = %452
  %458 = and i32 %454, -262145
  store i32 %458, ptr %453, align 4
  br label %519

459:                                              ; preds = %88
  %460 = icmp eq i32 %4, 8
  br i1 %460, label %461, label %519

461:                                              ; preds = %459
  %462 = call fastcc i32 @copy_from_sockptr(ptr noundef nonnull %8, [2 x i32] %3, i32 noundef 8)
  %463 = icmp eq i32 %462, 0
  br i1 %463, label %464, label %519

464:                                              ; preds = %461
  %465 = getelementptr inbounds %struct.sock_txtime, ptr %8, i32 0, i32 1
  %466 = load i32, ptr %465, align 4
  %467 = icmp ult i32 %466, 4
  br i1 %467, label %468, label %519

468:                                              ; preds = %464
  %469 = load i32, ptr %8, align 8
  %470 = icmp eq i32 %469, 1
  br i1 %470, label %478, label %471

471:                                              ; preds = %468
  %472 = load ptr, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 11), align 4
  %473 = call zeroext i1 @ns_capable(ptr noundef %472, i32 noundef 12) #21
  br i1 %473, label %474, label %519

474:                                              ; preds = %471
  %475 = load i32, ptr %8, align 8
  %476 = load i32, ptr %465, align 4
  %477 = trunc i32 %475 to i8
  br label %478

478:                                              ; preds = %474, %468
  %479 = phi i32 [ %476, %474 ], [ %466, %468 ]
  %480 = phi i8 [ %477, %474 ], [ 1, %468 ]
  %481 = getelementptr inbounds %struct.sock_common, ptr %16, i32 0, i32 13
  %482 = load i32, ptr %481, align 4
  %483 = or i32 %482, 16777216
  store i32 %483, ptr %481, align 4
  %484 = getelementptr inbounds %struct.sock, ptr %16, i32 0, i32 69
  store i8 %480, ptr %484, align 4
  %485 = trunc i32 %479 to i8
  %486 = and i8 %485, 1
  %487 = getelementptr inbounds %struct.sock, ptr %16, i32 0, i32 70
  %488 = load i8, ptr %487, align 1
  %489 = and i8 %488, -4
  %490 = or i8 %489, %486
  %491 = and i8 %485, 2
  %492 = or i8 %490, %491
  store i8 %492, ptr %487, align 1
  br label %519

493:                                              ; preds = %88
  %494 = load i32, ptr %9, align 4
  %495 = call fastcc i32 @sock_bindtoindex_locked(ptr noundef %16, i32 noundef %494)
  br label %519

496:                                              ; preds = %88
  %497 = load i32, ptr %9, align 4
  %498 = icmp ult i32 %497, 4
  br i1 %498, label %499, label %519

499:                                              ; preds = %496
  %500 = getelementptr inbounds %struct.sock, ptr %16, i32 0, i32 43
  %501 = load i8, ptr %500, align 8
  %502 = trunc i32 %497 to i8
  %503 = shl nuw nsw i8 %502, 4
  %504 = and i8 %501, -64
  %505 = or i8 %504, %503
  %506 = and i8 %501, 15
  %507 = or i8 %505, %506
  store i8 %507, ptr %500, align 8
  br label %519

508:                                              ; preds = %88
  %509 = load i32, ptr %9, align 4
  %510 = icmp slt i32 %509, 0
  br i1 %510, label %519, label %511

511:                                              ; preds = %508
  %512 = getelementptr inbounds %struct.sock, ptr %16, i32 0, i32 12
  %513 = load i32, ptr %512, align 8
  %514 = sub i32 %509, %513
  %515 = icmp slt i32 %514, 0
  br i1 %515, label %516, label %519

516:                                              ; preds = %511
  %517 = sub i32 0, %514
  call fastcc void @sock_release_reserved_memory(ptr noundef %16, i32 noundef %517)
  br label %519

518:                                              ; preds = %88
  br label %519

519:                                              ; preds = %518, %516, %511, %508, %499, %496, %493, %478, %471, %464, %461, %459, %457, %455, %449, %445, %441, %438, %435, %434, %431, %428, %423, %411, %408, %404, %395, %393, %391, %388, %384, %377, %375, %370, %368, %362, %356, %354, %352, %347, %345, %340, %337, %333, %332, %328, %326, %319, %317, %315, %313, %305, %303, %296, %288, %286, %277, %273, %269, %267, %250, %241, %238, %237, %236, %224, %220, %214, %212, %209, %206, %194, %192, %190, %185, %183, %163, %161, %150, %145, %134, %128, %126, %117, %116, %110, %104, %102, %100, %95, %88
  %520 = phi i32 [ -92, %518 ], [ 0, %499 ], [ %495, %493 ], [ 0, %478 ], [ 0, %434 ], [ 0, %431 ], [ 0, %428 ], [ 0, %423 ], [ 0, %411 ], [ 0, %395 ], [ 0, %391 ], [ %364, %362 ], [ 0, %340 ], [ 0, %332 ], [ 0, %333 ], [ %318, %317 ], [ %316, %315 ], [ %314, %313 ], [ -22, %305 ], [ %304, %303 ], [ %297, %296 ], [ -22, %288 ], [ %287, %286 ], [ %280, %277 ], [ %276, %273 ], [ %268, %267 ], [ 0, %269 ], [ %255, %250 ], [ 0, %238 ], [ 0, %236 ], [ 0, %237 ], [ 0, %88 ], [ 0, %224 ], [ 0, %220 ], [ 0, %209 ], [ 0, %194 ], [ 0, %163 ], [ 0, %150 ], [ 0, %134 ], [ 0, %117 ], [ -92, %116 ], [ 0, %110 ], [ 0, %104 ], [ -13, %95 ], [ -1, %145 ], [ -1, %161 ], [ -1, %206 ], [ -22, %212 ], [ -14, %214 ], [ -14, %241 ], [ -1, %319 ], [ -1, %337 ], [ -95, %356 ], [ -1, %384 ], [ -22, %388 ], [ -1, %393 ], [ -1, %404 ], [ -22, %408 ], [ -22, %449 ], [ -22, %459 ], [ -14, %461 ], [ -22, %464 ], [ -1, %471 ], [ -22, %496 ], [ -22, %508 ], [ 0, %516 ], [ 0, %100 ], [ 0, %102 ], [ 0, %126 ], [ 0, %128 ], [ 0, %183 ], [ 0, %185 ], [ 0, %190 ], [ 0, %192 ], [ 0, %326 ], [ 0, %328 ], [ 0, %345 ], [ 0, %347 ], [ 0, %352 ], [ 0, %354 ], [ 0, %368 ], [ 0, %370 ], [ 0, %375 ], [ 0, %377 ], [ 0, %455 ], [ 0, %457 ], [ -95, %511 ], [ -524, %441 ], [ -524, %445 ], [ -524, %435 ], [ -524, %438 ]
  %521 = getelementptr inbounds %struct.sock, ptr %16, i32 0, i32 4
  call void @_raw_spin_lock_bh(ptr noundef %521) #21
  %522 = getelementptr inbounds %struct.sock, ptr %16, i32 0, i32 9, i32 3
  %523 = load ptr, ptr %522, align 4
  %524 = icmp eq ptr %523, null
  br i1 %524, label %526, label %525

525:                                              ; preds = %519
  call void @__release_sock(ptr noundef %16) #21
  br label %526

526:                                              ; preds = %525, %519
  %527 = getelementptr inbounds %struct.sock_common, ptr %16, i32 0, i32 8
  %528 = load ptr, ptr %527, align 8
  %529 = getelementptr inbounds %struct.proto, ptr %528, i32 0, i32 19
  %530 = load ptr, ptr %529, align 4
  %531 = icmp eq ptr %530, null
  br i1 %531, label %533, label %532

532:                                              ; preds = %526
  call void %530(ptr noundef %16) #21
  br label %533

533:                                              ; preds = %532, %526
  %534 = getelementptr inbounds %struct.sock, ptr %16, i32 0, i32 4, i32 1
  %535 = load i32, ptr %534, align 4
  %536 = icmp eq i32 %535, 0
  br i1 %536, label %538, label %537

537:                                              ; preds = %533
  store i32 0, ptr %534, align 4
  br label %538

538:                                              ; preds = %537, %533
  %539 = getelementptr inbounds %struct.sock, ptr %16, i32 0, i32 4, i32 2, i32 1
  %540 = load volatile ptr, ptr %539, align 4
  %541 = icmp eq ptr %540, %539
  br i1 %541, label %544, label %542

542:                                              ; preds = %538
  %543 = getelementptr inbounds %struct.sock, ptr %16, i32 0, i32 4, i32 2
  call void @__wake_up(ptr noundef %543, i32 noundef 3, i32 noundef 1, ptr noundef null) #21
  br label %544

544:                                              ; preds = %542, %538
  call void @_raw_spin_unlock_bh(ptr noundef %521) #21
  br label %545

545:                                              ; preds = %544, %82, %60, %58
  %546 = phi i32 [ %59, %58 ], [ %520, %544 ], [ -22, %60 ], [ -14, %82 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %10) #21
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %9) #21
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #21
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #21
  ret i32 %546
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @capable(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @sock_set_timeout(ptr nocapture noundef writeonly %0, [2 x i32] %1, i32 noundef %2, i1 noundef zeroext %3) unnamed_addr #0 {
  %5 = alloca %struct.__kernel_sock_timeval, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #21
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(16) %5, i8 0, i32 16, i1 false), !annotation !18
  %6 = call i32 @sock_copy_user_timeval(ptr noundef nonnull %5, [2 x i32] %1, i32 noundef %2, i1 noundef zeroext %3)
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %42

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.__kernel_sock_timeval, ptr %5, i32 0, i32 1
  %10 = load i64, ptr %9, align 8
  %11 = icmp ugt i64 %10, 999999
  br i1 %11, label %42, label %12

12:                                               ; preds = %8
  %13 = load i64, ptr %5, align 8
  %14 = icmp slt i64 %13, 0
  br i1 %14, label %15, label %29

15:                                               ; preds = %12
  store i32 0, ptr %0, align 4
  %16 = load i32, ptr @sock_set_timeout.warned, align 4
  %17 = icmp slt i32 %16, 10
  br i1 %17, label %18, label %42

18:                                               ; preds = %15
  %19 = call i32 @net_ratelimit() #21
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %42, label %21

21:                                               ; preds = %18
  %22 = load i32, ptr @sock_set_timeout.warned, align 4
  %23 = add i32 %22, 1
  store i32 %23, ptr @sock_set_timeout.warned, align 4
  %24 = tail call ptr @llvm.thread.pointer() #21
  %25 = getelementptr inbounds %struct.task_struct, ptr %24, i32 0, i32 85
  %26 = getelementptr inbounds %struct.task_struct, ptr %24, i32 0, i32 52
  %27 = load i32, ptr %26, align 8
  %28 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, ptr noundef nonnull @__func__.sock_set_timeout, ptr noundef %25, i32 noundef %27) #23
  br label %42

29:                                               ; preds = %12
  store i32 2147483647, ptr %0, align 4
  %30 = icmp ne i64 %13, 0
  %31 = icmp ne i64 %10, 0
  %32 = select i1 %30, i1 true, i1 %31
  %33 = icmp ult i64 %13, 21474835
  %34 = and i1 %33, %32
  br i1 %34, label %35, label %42

35:                                               ; preds = %29
  %36 = trunc i64 %10 to i32
  %37 = add nuw nsw i32 %36, 9999
  %38 = udiv i32 %37, 10000
  %39 = trunc i64 %13 to i32
  %40 = mul nuw nsw i32 %39, 100
  %41 = add nuw nsw i32 %40, %38
  store i32 %41, ptr %0, align 4
  br label %42

42:                                               ; preds = %35, %29, %21, %18, %15, %8, %4
  %43 = phi i32 [ %6, %4 ], [ -33, %8 ], [ 0, %21 ], [ 0, %18 ], [ 0, %15 ], [ 0, %29 ], [ 0, %35 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #21
  ret i32 %43
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @copy_bpf_fprog_from_user(ptr noundef, [2 x i32], i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sk_attach_filter(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sk_attach_bpf(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sk_reuseport_attach_filter(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sk_reuseport_attach_bpf(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @reuseport_detach_prog(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sk_detach_filter(ptr noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @dst_negative_advice(ptr noundef %0) unnamed_addr #6 {
  %2 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 42
  %3 = load i32, ptr %2, align 4
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %9, label %5

5:                                                ; preds = %1
  %6 = tail call i32 @prandom_u32() #21
  %7 = icmp eq i32 %6, 0
  %8 = select i1 %7, i32 1, i32 %6
  store volatile i32 %8, ptr %2, align 4
  br label %9

9:                                                ; preds = %5, %1
  %10 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 19
  %11 = load volatile ptr, ptr %10, align 8
  %12 = icmp eq ptr %11, null
  br i1 %12, label %25, label %13

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct.dst_entry, ptr %11, i32 0, i32 1
  %15 = load ptr, ptr %14, align 4
  %16 = getelementptr inbounds %struct.dst_ops, ptr %15, i32 0, i32 9
  %17 = load ptr, ptr %16, align 4
  %18 = icmp eq ptr %17, null
  br i1 %18, label %25, label %19

19:                                               ; preds = %13
  %20 = tail call ptr %17(ptr noundef nonnull %11) #21
  %21 = icmp eq ptr %20, %11
  br i1 %21, label %25, label %22

22:                                               ; preds = %19
  tail call void asm sideeffect "dmb ish", "~{memory}"() #21, !srcloc !49
  store volatile ptr %20, ptr %10, align 8
  %23 = getelementptr inbounds %struct.sock_common, ptr %0, i32 0, i32 16
  store i16 -1, ptr %23, align 4
  %24 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 29
  store i32 0, ptr %24, align 4
  br label %25

25:                                               ; preds = %22, %19, %13, %9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @sock_release_reserved_memory(ptr noundef %0, i32 noundef %1) unnamed_addr #0 {
  %3 = and i32 %1, -4096
  %4 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 12
  %5 = load i32, ptr %4, align 8
  %6 = icmp ugt i32 %3, %5
  br i1 %6, label %7, label %9, !prof !10

7:                                                ; preds = %2
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 970, i32 noundef 9, ptr noundef null) #21
  %8 = load i32, ptr %4, align 8
  br label %9

9:                                                ; preds = %7, %2
  %10 = phi i32 [ %8, %7 ], [ %5, %2 ]
  %11 = sub i32 %10, %3
  store i32 %11, ptr %4, align 8
  %12 = getelementptr inbounds %struct.sock_common, ptr %0, i32 0, i32 8
  %13 = load ptr, ptr %12, align 8
  %14 = getelementptr inbounds %struct.proto, ptr %13, i32 0, i32 30
  %15 = load ptr, ptr %14, align 4
  %16 = icmp eq ptr %15, null
  br i1 %16, label %63, label %17

17:                                               ; preds = %9
  %18 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 11
  %19 = load i32, ptr %18, align 4
  %20 = icmp eq i32 %10, %3
  br i1 %20, label %29, label %21, !prof !14

21:                                               ; preds = %17
  %22 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 22
  %23 = load i32, ptr %22, align 4
  %24 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 9
  %25 = load volatile i32, ptr %24, align 4
  %26 = add i32 %23, %25
  %27 = sub i32 %11, %26
  %28 = tail call i32 @llvm.smax.i32(i32 %27, i32 0) #21
  br label %29

29:                                               ; preds = %21, %17
  %30 = phi i32 [ %28, %21 ], [ 0, %17 ]
  %31 = sub i32 %19, %30
  %32 = icmp sgt i32 %31, 4095
  br i1 %32, label %33, label %63

33:                                               ; preds = %29
  %34 = lshr i32 %31, 12
  %35 = and i32 %31, -4096
  %36 = sub i32 %19, %35
  store i32 %36, ptr %18, align 4
  %37 = load ptr, ptr %14, align 4
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %37) #21, !srcloc !11
  %38 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %37, ptr %37, i32 %34, ptr elementtype(i32) %37) #21, !srcloc !13
  %39 = load ptr, ptr %12, align 8
  %40 = getelementptr inbounds %struct.proto, ptr %39, i32 0, i32 32
  %41 = load ptr, ptr %40, align 4
  %42 = icmp eq ptr %41, null
  br i1 %42, label %63, label %43

43:                                               ; preds = %33
  %44 = load i32, ptr %41, align 4
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %63, label %46

46:                                               ; preds = %43
  %47 = getelementptr inbounds %struct.proto, ptr %39, i32 0, i32 30
  %48 = load ptr, ptr %47, align 4
  %49 = load volatile i32, ptr %48, align 4
  %50 = getelementptr inbounds %struct.proto, ptr %39, i32 0, i32 33
  %51 = load ptr, ptr %50, align 4
  %52 = load i32, ptr %51, align 4
  %53 = icmp slt i32 %49, %52
  br i1 %53, label %54, label %63

54:                                               ; preds = %46
  %55 = getelementptr inbounds %struct.proto, ptr %39, i32 0, i32 29
  %56 = load ptr, ptr %55, align 4
  %57 = icmp eq ptr %56, null
  br i1 %57, label %59, label %58

58:                                               ; preds = %54
  tail call void %56(ptr noundef %0) #21
  br label %63

59:                                               ; preds = %54
  %60 = load volatile i32, ptr %41, align 4
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %63, label %62

62:                                               ; preds = %59
  store volatile i32 0, ptr %41, align 4
  br label %63

63:                                               ; preds = %62, %59, %58, %46, %43, %33, %29, %9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @sock_getsockopt(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef %3, ptr noundef %4) local_unnamed_addr #0 {
  %6 = alloca %union.anon.199, align 8
  %7 = alloca %struct.ucred, align 4
  %8 = alloca [128 x i8], align 1
  %9 = alloca [9 x i32], align 4
  %10 = getelementptr inbounds %struct.socket, ptr %0, i32 0, i32 4
  %11 = load ptr, ptr %10, align 16
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #21
  %12 = tail call ptr @llvm.thread.pointer() #21
  %13 = getelementptr inbounds %struct.thread_info, ptr %12, i32 0, i32 3
  %14 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %13) #14, !srcloc !20
  %15 = and i32 %14, -13
  %16 = or i32 %15, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %16) #21, !srcloc !21
  tail call void asm sideeffect "isb ", "~{memory}"() #21, !srcloc !22
  %17 = tail call { i32, i32 } asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__get_user_4", "=&{r0},={r2},{r0},{r1},~{lr},~{cc}"(ptr %4, i32 -1090519041) #21, !srcloc !50
  %18 = extractvalue { i32, i32 } %17, 0
  %19 = extractvalue { i32, i32 } %17, 1
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %14) #21, !srcloc !21
  tail call void asm sideeffect "isb ", "~{memory}"() #21, !srcloc !22
  %20 = icmp eq i32 %18, 0
  br i1 %20, label %21, label %467

21:                                               ; preds = %5
  %22 = icmp slt i32 %19, 0
  br i1 %22, label %467, label %23

23:                                               ; preds = %21
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(16) %6, i8 0, i32 16, i1 false)
  switch i32 %2, label %467 [
    i32 1, label %24
    i32 5, label %29
    i32 6, label %34
    i32 7, label %39
    i32 8, label %42
    i32 2, label %45
    i32 15, label %50
    i32 9, label %56
    i32 3, label %61
    i32 38, label %65
    i32 39, label %69
    i32 4, label %73
    i32 10, label %85
    i32 11, label %90
    i32 12, label %96
    i32 13, label %99
    i32 14, label %445
    i32 29, label %108
    i32 35, label %124
    i32 63, label %136
    i32 64, label %147
    i32 37, label %158
    i32 20, label %165
    i32 66, label %165
    i32 21, label %187
    i32 67, label %187
    i32 18, label %209
    i32 19, label %212
    i32 16, label %213
    i32 17, label %218
    i32 59, label %254
    i32 28, label %274
    i32 30, label %300
    i32 34, label %305
    i32 73, label %442
    i32 36, label %310
    i32 40, label %313
    i32 41, label %318
    i32 42, label %323
    i32 43, label %332
    i32 25, label %337
    i32 26, label %339
    i32 44, label %342
    i32 48, label %347
    i32 45, label %348
    i32 46, label %353
    i32 69, label %356
    i32 47, label %360
    i32 49, label %363
    i32 55, label %366
    i32 56, label %406
    i32 57, label %411
    i32 60, label %415
    i32 61, label %420
    i32 62, label %429
    i32 71, label %432
    i32 72, label %436
  ]

24:                                               ; preds = %23
  %25 = getelementptr inbounds %struct.sock_common, ptr %11, i32 0, i32 13
  %26 = load volatile i32, ptr %25, align 4
  %27 = lshr i32 %26, 10
  %28 = and i32 %27, 1
  store i32 %28, ptr %6, align 8
  br label %445

29:                                               ; preds = %23
  %30 = getelementptr inbounds %struct.sock_common, ptr %11, i32 0, i32 13
  %31 = load volatile i32, ptr %30, align 4
  %32 = lshr i32 %31, 13
  %33 = and i32 %32, 1
  store i32 %33, ptr %6, align 8
  br label %445

34:                                               ; preds = %23
  %35 = getelementptr inbounds %struct.sock_common, ptr %11, i32 0, i32 13
  %36 = load volatile i32, ptr %35, align 4
  %37 = lshr i32 %36, 6
  %38 = and i32 %37, 1
  store i32 %38, ptr %6, align 8
  br label %445

39:                                               ; preds = %23
  %40 = getelementptr inbounds %struct.sock, ptr %11, i32 0, i32 21
  %41 = load i32, ptr %40, align 8
  store i32 %41, ptr %6, align 8
  br label %445

42:                                               ; preds = %23
  %43 = getelementptr inbounds %struct.sock, ptr %11, i32 0, i32 15
  %44 = load i32, ptr %43, align 4
  store i32 %44, ptr %6, align 8
  br label %445

45:                                               ; preds = %23
  %46 = getelementptr inbounds %struct.sock_common, ptr %11, i32 0, i32 5
  %47 = load i8, ptr %46, align 1
  %48 = and i8 %47, 15
  %49 = zext i8 %48 to i32
  store i32 %49, ptr %6, align 8
  br label %445

50:                                               ; preds = %23
  %51 = getelementptr inbounds %struct.sock_common, ptr %11, i32 0, i32 5
  %52 = load i8, ptr %51, align 1
  %53 = lshr i8 %52, 4
  %54 = and i8 %53, 1
  %55 = zext i8 %54 to i32
  store i32 %55, ptr %6, align 8
  br label %445

56:                                               ; preds = %23
  %57 = getelementptr inbounds %struct.sock_common, ptr %11, i32 0, i32 13
  %58 = load volatile i32, ptr %57, align 4
  %59 = lshr i32 %58, 3
  %60 = and i32 %59, 1
  store i32 %60, ptr %6, align 8
  br label %445

61:                                               ; preds = %23
  %62 = getelementptr inbounds %struct.sock, ptr %11, i32 0, i32 45
  %63 = load i16, ptr %62, align 2
  %64 = zext i16 %63 to i32
  store i32 %64, ptr %6, align 8
  br label %445

65:                                               ; preds = %23
  %66 = getelementptr inbounds %struct.sock, ptr %11, i32 0, i32 46
  %67 = load i16, ptr %66, align 4
  %68 = zext i16 %67 to i32
  store i32 %68, ptr %6, align 8
  br label %445

69:                                               ; preds = %23
  %70 = getelementptr inbounds %struct.sock_common, ptr %11, i32 0, i32 3
  %71 = load i16, ptr %70, align 8
  %72 = zext i16 %71 to i32
  store i32 %72, ptr %6, align 8
  br label %445

73:                                               ; preds = %23
  %74 = getelementptr inbounds %struct.sock, ptr %11, i32 0, i32 51
  %75 = load i32, ptr %74, align 4
  %76 = icmp eq i32 %75, 0
  br i1 %76, label %81, label %77, !prof !14

77:                                               ; preds = %73
  tail call void asm sideeffect "dmb ish", "~{memory}"() #21, !srcloc !51
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %74) #21, !srcloc !11
  %78 = tail call { i32, i32 } asm sideeffect "@\09__xchg4\0A1:\09ldrex\09$0, [$3]\0A\09strex\09$1, $2, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,r,r,~{memory},~{cc}"(i32 0, ptr %74) #21, !srcloc !39
  %79 = extractvalue { i32, i32 } %78, 0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #21, !srcloc !52
  store i32 %79, ptr %6, align 8
  %80 = icmp eq i32 %79, 0
  br i1 %80, label %81, label %445

81:                                               ; preds = %77, %73
  %82 = getelementptr inbounds %struct.sock, ptr %11, i32 0, i32 52
  tail call void asm sideeffect "dmb ish", "~{memory}"() #21, !srcloc !53
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %82) #21, !srcloc !11
  %83 = tail call { i32, i32 } asm sideeffect "@\09__xchg4\0A1:\09ldrex\09$0, [$3]\0A\09strex\09$1, $2, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,r,r,~{memory},~{cc}"(i32 0, ptr %82) #21, !srcloc !39
  %84 = extractvalue { i32, i32 } %83, 0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #21, !srcloc !54
  store i32 %84, ptr %6, align 8
  br label %445

85:                                               ; preds = %23
  %86 = getelementptr inbounds %struct.sock_common, ptr %11, i32 0, i32 13
  %87 = load volatile i32, ptr %86, align 4
  %88 = lshr i32 %87, 2
  %89 = and i32 %88, 1
  store i32 %89, ptr %6, align 8
  br label %445

90:                                               ; preds = %23
  %91 = getelementptr inbounds %struct.sock, ptr %11, i32 0, i32 43
  %92 = load i8, ptr %91, align 8
  %93 = lshr i8 %92, 2
  %94 = and i8 %93, 1
  %95 = zext i8 %94 to i32
  store i32 %95, ptr %6, align 8
  br label %445

96:                                               ; preds = %23
  %97 = getelementptr inbounds %struct.sock, ptr %11, i32 0, i32 33
  %98 = load i32, ptr %97, align 4
  store i32 %98, ptr %6, align 8
  br label %445

99:                                               ; preds = %23
  %100 = getelementptr inbounds %struct.sock_common, ptr %11, i32 0, i32 13
  %101 = load volatile i32, ptr %100, align 4
  %102 = lshr i32 %101, 4
  %103 = and i32 %102, 1
  store i32 %103, ptr %6, align 8
  %104 = getelementptr inbounds %struct.sock, ptr %11, i32 0, i32 48
  %105 = load i32, ptr %104, align 8
  %106 = udiv i32 %105, 100
  %107 = getelementptr inbounds %struct.linger, ptr %6, i32 0, i32 1
  store i32 %106, ptr %107, align 4
  br label %445

108:                                              ; preds = %23
  %109 = getelementptr inbounds %struct.sock_common, ptr %11, i32 0, i32 13
  %110 = load volatile i32, ptr %109, align 4
  %111 = and i32 %110, 2048
  %112 = icmp eq i32 %111, 0
  br i1 %112, label %122, label %113

113:                                              ; preds = %108
  %114 = load volatile i32, ptr %109, align 4
  %115 = and i32 %114, 67108864
  %116 = icmp eq i32 %115, 0
  br i1 %116, label %117, label %122

117:                                              ; preds = %113
  %118 = load volatile i32, ptr %109, align 4
  %119 = lshr i32 %118, 12
  %120 = and i32 %119, 1
  %121 = xor i32 %120, 1
  br label %122

122:                                              ; preds = %117, %113, %108
  %123 = phi i32 [ 0, %113 ], [ 0, %108 ], [ %121, %117 ]
  store i32 %123, ptr %6, align 8
  br label %445

124:                                              ; preds = %23
  %125 = getelementptr inbounds %struct.sock_common, ptr %11, i32 0, i32 13
  %126 = load volatile i32, ptr %125, align 4
  %127 = and i32 %126, 4096
  %128 = icmp eq i32 %127, 0
  br i1 %128, label %134, label %129

129:                                              ; preds = %124
  %130 = load volatile i32, ptr %125, align 4
  %131 = lshr i32 %130, 26
  %132 = and i32 %131, 1
  %133 = xor i32 %132, 1
  br label %134

134:                                              ; preds = %129, %124
  %135 = phi i32 [ 0, %124 ], [ %133, %129 ]
  store i32 %135, ptr %6, align 8
  br label %445

136:                                              ; preds = %23
  %137 = getelementptr inbounds %struct.sock_common, ptr %11, i32 0, i32 13
  %138 = load volatile i32, ptr %137, align 4
  %139 = and i32 %138, 2048
  %140 = icmp eq i32 %139, 0
  br i1 %140, label %145, label %141

141:                                              ; preds = %136
  %142 = load volatile i32, ptr %137, align 4
  %143 = lshr i32 %142, 26
  %144 = and i32 %143, 1
  br label %145

145:                                              ; preds = %141, %136
  %146 = phi i32 [ 0, %136 ], [ %144, %141 ]
  store i32 %146, ptr %6, align 8
  br label %445

147:                                              ; preds = %23
  %148 = getelementptr inbounds %struct.sock_common, ptr %11, i32 0, i32 13
  %149 = load volatile i32, ptr %148, align 4
  %150 = and i32 %149, 4096
  %151 = icmp eq i32 %150, 0
  br i1 %151, label %156, label %152

152:                                              ; preds = %147
  %153 = load volatile i32, ptr %148, align 4
  %154 = lshr i32 %153, 26
  %155 = and i32 %154, 1
  br label %156

156:                                              ; preds = %152, %147
  %157 = phi i32 [ 0, %147 ], [ %155, %152 ]
  store i32 %157, ptr %6, align 8
  br label %445

158:                                              ; preds = %23
  %159 = getelementptr inbounds %struct.sock, ptr %11, i32 0, i32 65
  %160 = load i16, ptr %159, align 8
  %161 = zext i16 %160 to i32
  store i32 %161, ptr %6, align 8
  %162 = getelementptr inbounds %struct.sock, ptr %11, i32 0, i32 59
  %163 = load i32, ptr %162, align 8
  %164 = getelementptr inbounds %struct.so_timestamping, ptr %6, i32 0, i32 1
  store i32 %163, ptr %164, align 4
  br label %445

165:                                              ; preds = %23, %23
  %166 = getelementptr inbounds %struct.sock, ptr %11, i32 0, i32 62
  %167 = load i32, ptr %166, align 4
  %168 = icmp eq i32 %2, 20
  %169 = icmp eq i32 %167, 2147483647
  br i1 %169, label %178, label %170

170:                                              ; preds = %165
  %171 = freeze i32 %167
  %172 = sdiv i32 %171, 100
  %173 = sext i32 %172 to i64
  %174 = mul i32 %172, 100
  %175 = sub i32 %171, %174
  %176 = mul nsw i32 %175, 10000
  %177 = sext i32 %176 to i64
  br label %178

178:                                              ; preds = %170, %165
  %179 = phi i64 [ %173, %170 ], [ 0, %165 ]
  %180 = phi i64 [ %177, %170 ], [ 0, %165 ]
  br i1 %168, label %181, label %185

181:                                              ; preds = %178
  %182 = trunc i64 %179 to i32
  %183 = trunc i64 %180 to i32
  store i32 %182, ptr %6, align 8
  %184 = getelementptr inbounds i8, ptr %6, i32 4
  store i32 %183, ptr %184, align 4
  br label %445

185:                                              ; preds = %178
  store i64 %179, ptr %6, align 8
  %186 = getelementptr inbounds i8, ptr %6, i32 8
  store i64 %180, ptr %186, align 8
  br label %445

187:                                              ; preds = %23, %23
  %188 = getelementptr inbounds %struct.sock, ptr %11, i32 0, i32 31
  %189 = load i32, ptr %188, align 4
  %190 = icmp eq i32 %2, 21
  %191 = icmp eq i32 %189, 2147483647
  br i1 %191, label %200, label %192

192:                                              ; preds = %187
  %193 = freeze i32 %189
  %194 = sdiv i32 %193, 100
  %195 = sext i32 %194 to i64
  %196 = mul i32 %194, 100
  %197 = sub i32 %193, %196
  %198 = mul nsw i32 %197, 10000
  %199 = sext i32 %198 to i64
  br label %200

200:                                              ; preds = %192, %187
  %201 = phi i64 [ %195, %192 ], [ 0, %187 ]
  %202 = phi i64 [ %199, %192 ], [ 0, %187 ]
  br i1 %190, label %203, label %207

203:                                              ; preds = %200
  %204 = trunc i64 %201 to i32
  %205 = trunc i64 %202 to i32
  store i32 %204, ptr %6, align 8
  %206 = getelementptr inbounds i8, ptr %6, i32 4
  store i32 %205, ptr %206, align 4
  br label %445

207:                                              ; preds = %200
  store i64 %201, ptr %6, align 8
  %208 = getelementptr inbounds i8, ptr %6, i32 8
  store i64 %202, ptr %208, align 8
  br label %445

209:                                              ; preds = %23
  %210 = getelementptr inbounds %struct.sock, ptr %11, i32 0, i32 6
  %211 = load i32, ptr %210, align 4
  store i32 %211, ptr %6, align 8
  br label %445

212:                                              ; preds = %23
  store i32 1, ptr %6, align 8
  br label %445

213:                                              ; preds = %23
  %214 = getelementptr inbounds %struct.socket, ptr %0, i32 0, i32 2
  %215 = load volatile i32, ptr %214, align 4
  %216 = lshr i32 %215, 3
  %217 = and i32 %216, 1
  store i32 %217, ptr %6, align 8
  br label %445

218:                                              ; preds = %23
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %7) #21
  %219 = tail call i32 @llvm.umin.i32(i32 %19, i32 12)
  %220 = getelementptr inbounds %struct.sock, ptr %11, i32 0, i32 58
  tail call void @_raw_spin_lock(ptr noundef %220) #21
  %221 = getelementptr inbounds %struct.sock, ptr %11, i32 0, i32 60
  %222 = load ptr, ptr %221, align 4
  %223 = getelementptr inbounds %struct.sock, ptr %11, i32 0, i32 61
  %224 = load ptr, ptr %223, align 8
  %225 = tail call i32 @pid_vnr(ptr noundef %222) #21
  store i32 %225, ptr %7, align 4
  %226 = getelementptr inbounds %struct.ucred, ptr %7, i32 0, i32 2
  store i32 -1, ptr %226, align 4
  %227 = getelementptr inbounds %struct.ucred, ptr %7, i32 0, i32 1
  store i32 -1, ptr %227, align 4
  %228 = icmp eq ptr %224, null
  br i1 %228, label %240, label %229

229:                                              ; preds = %218
  %230 = getelementptr inbounds %struct.cred, ptr %224, i32 0, i32 5
  %231 = load i32, ptr %230, align 4
  %232 = icmp eq i32 %231, -1
  %233 = load i32, ptr @overflowuid, align 4
  %234 = select i1 %232, i32 %233, i32 %231
  store i32 %234, ptr %227, align 4
  %235 = getelementptr inbounds %struct.cred, ptr %224, i32 0, i32 6
  %236 = load i32, ptr %235, align 4
  %237 = icmp eq i32 %236, -1
  %238 = load i32, ptr @overflowgid, align 4
  %239 = select i1 %237, i32 %238, i32 %236
  store i32 %239, ptr %226, align 4
  br label %240

240:                                              ; preds = %229, %218
  tail call void asm sideeffect "dmb ish", "~{memory}"() #21, !srcloc !29
  %241 = load i16, ptr %220, align 4
  %242 = add i16 %241, 1
  store i16 %242, ptr %220, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #21, !srcloc !30
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #21, !srcloc !31
  tail call void asm sideeffect "", "~{memory}"() #21, !srcloc !32
  %243 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %3, i32 %219, i32 -1090519040) #22, !srcloc !55
  %244 = extractvalue { i32, i32 } %243, 0
  %245 = icmp eq i32 %244, 0
  br i1 %245, label %246, label %251

246:                                              ; preds = %240
  %247 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %13) #14, !srcloc !20
  %248 = and i32 %247, -13
  %249 = or i32 %248, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %249) #21, !srcloc !21
  tail call void asm sideeffect "isb ", "~{memory}"() #21, !srcloc !22
  %250 = call i32 @arm_copy_to_user(ptr noundef %3, ptr noundef nonnull %7, i32 noundef %219) #21
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %247) #21, !srcloc !21
  call void asm sideeffect "isb ", "~{memory}"() #21, !srcloc !22
  br label %251

251:                                              ; preds = %246, %240
  %252 = phi i32 [ %250, %246 ], [ %219, %240 ]
  %253 = icmp eq i32 %252, 0
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %7) #21
  br i1 %253, label %459, label %467

254:                                              ; preds = %23
  %255 = tail call fastcc ptr @sk_get_peer_cred(ptr noundef %11)
  %256 = icmp eq ptr %255, null
  br i1 %256, label %467, label %257

257:                                              ; preds = %254
  %258 = getelementptr inbounds %struct.cred, ptr %255, i32 0, i32 23
  %259 = load ptr, ptr %258, align 4
  %260 = getelementptr inbounds %struct.group_info, ptr %259, i32 0, i32 1
  %261 = load i32, ptr %260, align 4
  %262 = shl i32 %261, 2
  %263 = icmp ult i32 %19, %262
  br i1 %263, label %264, label %271

264:                                              ; preds = %257
  tail call fastcc void @put_cred(ptr noundef nonnull %255)
  %265 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %13) #14, !srcloc !20
  %266 = and i32 %265, -13
  %267 = or i32 %266, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %267) #21, !srcloc !21
  tail call void asm sideeffect "isb ", "~{memory}"() #21, !srcloc !22
  %268 = tail call i32 asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r2; .ifnc $2r2,fpr11; .ifnc $2r2,r11fp; .ifnc $2r2,ipr12; .ifnc $2r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__put_user_4", "=&{r0},{r0},{r2},{r1},~{r12},~{lr},~{cc}"(ptr %4, i32 %262, i32 -1090519041) #21, !srcloc !56
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %265) #21, !srcloc !21
  tail call void asm sideeffect "isb ", "~{memory}"() #21, !srcloc !22
  %269 = icmp eq i32 %268, 0
  %270 = select i1 %269, i32 -34, i32 -14
  br label %467

271:                                              ; preds = %257
  %272 = tail call fastcc i32 @groups_to_user(ptr noundef %3, ptr noundef %259)
  tail call fastcc void @put_cred(ptr noundef nonnull %255)
  %273 = icmp eq i32 %272, 0
  br i1 %273, label %459, label %467

274:                                              ; preds = %23
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %8) #21
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(128) %8, i8 0, i32 128, i1 false), !annotation !18
  %275 = getelementptr inbounds %struct.socket, ptr %0, i32 0, i32 5
  %276 = load ptr, ptr %275, align 4
  %277 = getelementptr inbounds %struct.proto_ops, ptr %276, i32 0, i32 7
  %278 = load ptr, ptr %277, align 4
  %279 = call i32 %278(ptr noundef %0, ptr noundef nonnull %8, i32 noundef 2) #21
  %280 = icmp slt i32 %279, 0
  br i1 %280, label %295, label %281

281:                                              ; preds = %274
  %282 = icmp ult i32 %279, %19
  br i1 %282, label %295, label %283

283:                                              ; preds = %281
  %284 = icmp ugt i32 %19, 128
  br i1 %284, label %285, label %286, !prof !10

285:                                              ; preds = %283
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.7, i32 noundef 214, i32 noundef 9, ptr noundef nonnull @.str.8, i32 noundef 128, i32 noundef %19) #21
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %8) #21
  br label %467

286:                                              ; preds = %283
  %287 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %3, i32 %19, i32 -1090519040) #22, !srcloc !55
  %288 = extractvalue { i32, i32 } %287, 0
  %289 = icmp eq i32 %288, 0
  br i1 %289, label %290, label %297

290:                                              ; preds = %286
  %291 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %13) #14, !srcloc !20
  %292 = and i32 %291, -13
  %293 = or i32 %292, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %293) #21, !srcloc !21
  call void asm sideeffect "isb ", "~{memory}"() #21, !srcloc !22
  %294 = call i32 @arm_copy_to_user(ptr noundef %3, ptr noundef nonnull %8, i32 noundef %19) #21
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %291) #21, !srcloc !21
  call void asm sideeffect "isb ", "~{memory}"() #21, !srcloc !22
  br label %297

295:                                              ; preds = %281, %274
  %296 = phi i32 [ -22, %281 ], [ -107, %274 ]
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %8) #21
  br label %467

297:                                              ; preds = %290, %286
  %298 = phi i32 [ %294, %290 ], [ %19, %286 ]
  %299 = icmp eq i32 %298, 0
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %8) #21
  br i1 %299, label %459, label %467

300:                                              ; preds = %23
  %301 = getelementptr inbounds %struct.sock_common, ptr %11, i32 0, i32 4
  %302 = load volatile i8, ptr %301, align 2
  %303 = icmp eq i8 %302, 10
  %304 = zext i1 %303 to i32
  store i32 %304, ptr %6, align 8
  br label %445

305:                                              ; preds = %23
  %306 = getelementptr inbounds %struct.socket, ptr %0, i32 0, i32 2
  %307 = load volatile i32, ptr %306, align 4
  %308 = lshr i32 %307, 4
  %309 = and i32 %308, 1
  store i32 %309, ptr %6, align 8
  br label %445

310:                                              ; preds = %23
  %311 = getelementptr inbounds %struct.sock, ptr %11, i32 0, i32 34
  %312 = load i32, ptr %311, align 8
  store i32 %312, ptr %6, align 8
  br label %445

313:                                              ; preds = %23
  %314 = getelementptr inbounds %struct.sock_common, ptr %11, i32 0, i32 13
  %315 = load volatile i32, ptr %314, align 4
  %316 = lshr i32 %315, 17
  %317 = and i32 %316, 1
  store i32 %317, ptr %6, align 8
  br label %445

318:                                              ; preds = %23
  %319 = getelementptr inbounds %struct.sock_common, ptr %11, i32 0, i32 13
  %320 = load volatile i32, ptr %319, align 4
  %321 = lshr i32 %320, 19
  %322 = and i32 %321, 1
  store i32 %322, ptr %6, align 8
  br label %445

323:                                              ; preds = %23
  %324 = getelementptr inbounds %struct.socket, ptr %0, i32 0, i32 5
  %325 = load ptr, ptr %324, align 4
  %326 = getelementptr inbounds %struct.proto_ops, ptr %325, i32 0, i32 21
  %327 = load ptr, ptr %326, align 4
  %328 = icmp eq ptr %327, null
  br i1 %328, label %467, label %329

329:                                              ; preds = %323
  %330 = getelementptr inbounds %struct.sock, ptr %11, i32 0, i32 27
  %331 = load i32, ptr %330, align 4
  store i32 %331, ptr %6, align 8
  br label %445

332:                                              ; preds = %23
  %333 = getelementptr inbounds %struct.sock_common, ptr %11, i32 0, i32 13
  %334 = load volatile i32, ptr %333, align 4
  %335 = lshr i32 %334, 20
  %336 = and i32 %335, 1
  store i32 %336, ptr %6, align 8
  br label %445

337:                                              ; preds = %23
  %338 = tail call fastcc i32 @sock_getbindtodevice(ptr noundef %11, ptr noundef %3, ptr noundef %4, i32 noundef %19)
  br label %467

339:                                              ; preds = %23
  %340 = tail call i32 @sk_get_filter(ptr noundef %11, ptr noundef %3, i32 noundef %19) #21
  %341 = icmp slt i32 %340, 0
  br i1 %341, label %467, label %459

342:                                              ; preds = %23
  %343 = getelementptr inbounds %struct.sock_common, ptr %11, i32 0, i32 13
  %344 = load volatile i32, ptr %343, align 4
  %345 = lshr i32 %344, 21
  %346 = and i32 %345, 1
  store i32 %346, ptr %6, align 8
  br label %445

347:                                              ; preds = %23
  store i32 64, ptr %6, align 8
  br label %445

348:                                              ; preds = %23
  %349 = getelementptr inbounds %struct.sock_common, ptr %11, i32 0, i32 13
  %350 = load volatile i32, ptr %349, align 4
  %351 = lshr i32 %350, 22
  %352 = and i32 %351, 1
  store i32 %352, ptr %6, align 8
  br label %445

353:                                              ; preds = %23
  %354 = getelementptr inbounds %struct.sock, ptr %11, i32 0, i32 13
  %355 = load i32, ptr %354, align 4
  store i32 %355, ptr %6, align 8
  br label %445

356:                                              ; preds = %23
  %357 = getelementptr inbounds %struct.sock, ptr %11, i32 0, i32 56
  %358 = load volatile i8, ptr %357, align 8
  %359 = zext i8 %358 to i32
  store i32 %359, ptr %6, align 8
  br label %445

360:                                              ; preds = %23
  %361 = getelementptr inbounds %struct.sock, ptr %11, i32 0, i32 36
  %362 = load i32, ptr %361, align 8
  store i32 %362, ptr %6, align 8
  br label %445

363:                                              ; preds = %23
  %364 = getelementptr inbounds %struct.sock_common, ptr %11, i32 0, i32 18
  %365 = load volatile i32, ptr %364, align 8
  store i32 %365, ptr %6, align 8
  br label %445

366:                                              ; preds = %23
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %9) #21
  %367 = getelementptr inbounds %struct.sock, ptr %11, i32 0, i32 9
  %368 = load volatile i32, ptr %367, align 4
  store i32 %368, ptr %9, align 4
  %369 = getelementptr inbounds %struct.sock, ptr %11, i32 0, i32 15
  %370 = load volatile i32, ptr %369, align 4
  %371 = getelementptr inbounds i32, ptr %9, i32 1
  store i32 %370, ptr %371, align 4
  %372 = getelementptr inbounds %struct.sock, ptr %11, i32 0, i32 23
  %373 = load volatile i32, ptr %372, align 4
  %374 = add i32 %373, -1
  %375 = getelementptr inbounds i32, ptr %9, i32 2
  store i32 %374, ptr %375, align 4
  %376 = getelementptr inbounds %struct.sock, ptr %11, i32 0, i32 21
  %377 = load volatile i32, ptr %376, align 8
  %378 = getelementptr inbounds i32, ptr %9, i32 3
  store i32 %377, ptr %378, align 4
  %379 = getelementptr inbounds %struct.sock, ptr %11, i32 0, i32 11
  %380 = load i32, ptr %379, align 4
  %381 = getelementptr inbounds i32, ptr %9, i32 4
  store i32 %380, ptr %381, align 4
  %382 = getelementptr inbounds %struct.sock, ptr %11, i32 0, i32 22
  %383 = load volatile i32, ptr %382, align 4
  %384 = getelementptr inbounds i32, ptr %9, i32 5
  store i32 %383, ptr %384, align 4
  %385 = getelementptr inbounds %struct.sock, ptr %11, i32 0, i32 20
  %386 = load volatile i32, ptr %385, align 4
  %387 = getelementptr inbounds i32, ptr %9, i32 6
  store i32 %386, ptr %387, align 4
  %388 = getelementptr inbounds %struct.sock, ptr %11, i32 0, i32 9, i32 1
  %389 = load volatile i32, ptr %388, align 4
  %390 = getelementptr inbounds i32, ptr %9, i32 7
  store i32 %389, ptr %390, align 4
  %391 = getelementptr inbounds %struct.sock, ptr %11, i32 0, i32 5
  %392 = load volatile i32, ptr %391, align 4
  %393 = getelementptr inbounds i32, ptr %9, i32 8
  store i32 %392, ptr %393, align 4
  %394 = tail call i32 @llvm.umin.i32(i32 %19, i32 36)
  %395 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %3, i32 %394, i32 -1090519040) #22, !srcloc !55
  %396 = extractvalue { i32, i32 } %395, 0
  %397 = icmp eq i32 %396, 0
  br i1 %397, label %398, label %403

398:                                              ; preds = %366
  %399 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %13) #14, !srcloc !20
  %400 = and i32 %399, -13
  %401 = or i32 %400, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %401) #21, !srcloc !21
  tail call void asm sideeffect "isb ", "~{memory}"() #21, !srcloc !22
  %402 = call i32 @arm_copy_to_user(ptr noundef %3, ptr noundef nonnull %9, i32 noundef %394) #21
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %399) #21, !srcloc !21
  call void asm sideeffect "isb ", "~{memory}"() #21, !srcloc !22
  br label %403

403:                                              ; preds = %398, %366
  %404 = phi i32 [ %402, %398 ], [ %394, %366 ]
  %405 = icmp eq i32 %404, 0
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %9) #21
  br i1 %405, label %459, label %467

406:                                              ; preds = %23
  %407 = getelementptr inbounds %struct.sock, ptr %11, i32 0, i32 14
  %408 = load volatile i32, ptr %407, align 8
  %409 = icmp ult i32 %408, 17
  %410 = select i1 %409, i32 0, i32 %408
  store i32 %410, ptr %6, align 8
  br label %445

411:                                              ; preds = %23
  %412 = icmp ult i32 %19, 8
  br i1 %412, label %467, label %413

413:                                              ; preds = %411
  tail call void asm sideeffect "", "~{memory}"() #21, !srcloc !57
  %414 = tail call i64 @__sock_gen_cookie(ptr noundef %11) #21
  tail call void asm sideeffect "", "~{memory}"() #21, !srcloc !58
  store i64 %414, ptr %6, align 8
  br label %445

415:                                              ; preds = %23
  %416 = getelementptr inbounds %struct.sock_common, ptr %11, i32 0, i32 13
  %417 = load volatile i32, ptr %416, align 4
  %418 = lshr i32 %417, 18
  %419 = and i32 %418, 1
  store i32 %419, ptr %6, align 8
  br label %445

420:                                              ; preds = %23
  %421 = getelementptr inbounds %struct.sock, ptr %11, i32 0, i32 69
  %422 = load i8, ptr %421, align 4
  %423 = zext i8 %422 to i32
  store i32 %423, ptr %6, align 8
  %424 = getelementptr inbounds %struct.sock, ptr %11, i32 0, i32 70
  %425 = load i8, ptr %424, align 1
  %426 = getelementptr inbounds %struct.sock_txtime, ptr %6, i32 0, i32 1
  %427 = and i8 %425, 3
  %428 = zext i8 %427 to i32
  store i32 %428, ptr %426, align 4
  br label %445

429:                                              ; preds = %23
  %430 = getelementptr inbounds %struct.sock_common, ptr %11, i32 0, i32 6
  %431 = load i32, ptr %430, align 4
  store i32 %431, ptr %6, align 8
  br label %445

432:                                              ; preds = %23
  %433 = icmp eq i32 %19, 8
  br i1 %433, label %434, label %467

434:                                              ; preds = %432
  %435 = load i64, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 41), align 64
  store i64 %435, ptr %6, align 8
  br label %445

436:                                              ; preds = %23
  %437 = getelementptr inbounds %struct.sock, ptr %11, i32 0, i32 43
  %438 = load i8, ptr %437, align 8
  %439 = lshr i8 %438, 4
  %440 = and i8 %439, 3
  %441 = zext i8 %440 to i32
  store i32 %441, ptr %6, align 8
  br label %445

442:                                              ; preds = %23
  %443 = getelementptr inbounds %struct.sock, ptr %11, i32 0, i32 12
  %444 = load i32, ptr %443, align 8
  store i32 %444, ptr %6, align 8
  br label %445

445:                                              ; preds = %442, %436, %434, %429, %420, %415, %413, %406, %363, %360, %356, %353, %348, %347, %342, %332, %329, %318, %313, %310, %305, %300, %213, %212, %209, %207, %203, %185, %181, %158, %156, %145, %134, %122, %99, %96, %90, %85, %81, %77, %69, %65, %61, %56, %50, %45, %42, %39, %34, %29, %24, %23
  %446 = phi i32 [ 4, %442 ], [ 4, %436 ], [ 8, %434 ], [ 4, %429 ], [ 8, %420 ], [ 4, %415 ], [ 8, %413 ], [ 4, %406 ], [ 4, %363 ], [ 4, %360 ], [ 4, %356 ], [ 4, %353 ], [ 4, %348 ], [ 4, %347 ], [ 4, %342 ], [ 4, %332 ], [ 4, %329 ], [ 4, %318 ], [ 4, %313 ], [ 4, %310 ], [ 4, %305 ], [ 4, %300 ], [ 4, %213 ], [ 4, %212 ], [ 4, %209 ], [ 8, %158 ], [ 4, %156 ], [ 4, %145 ], [ 4, %134 ], [ 4, %122 ], [ 4, %23 ], [ 8, %99 ], [ 4, %96 ], [ 4, %90 ], [ 4, %85 ], [ 4, %81 ], [ 4, %77 ], [ 4, %69 ], [ 4, %65 ], [ 4, %61 ], [ 4, %56 ], [ 4, %50 ], [ 4, %45 ], [ 4, %42 ], [ 4, %39 ], [ 4, %34 ], [ 4, %29 ], [ 4, %24 ], [ 8, %181 ], [ 16, %185 ], [ 8, %203 ], [ 16, %207 ]
  %447 = tail call i32 @llvm.umin.i32(i32 %19, i32 %446)
  %448 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %3, i32 %447, i32 -1090519040) #22, !srcloc !55
  %449 = extractvalue { i32, i32 } %448, 0
  %450 = icmp eq i32 %449, 0
  br i1 %450, label %451, label %456

451:                                              ; preds = %445
  %452 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %13) #14, !srcloc !20
  %453 = and i32 %452, -13
  %454 = or i32 %453, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %454) #21, !srcloc !21
  tail call void asm sideeffect "isb ", "~{memory}"() #21, !srcloc !22
  %455 = call i32 @arm_copy_to_user(ptr noundef %3, ptr noundef nonnull %6, i32 noundef %447) #21
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %452) #21, !srcloc !21
  call void asm sideeffect "isb ", "~{memory}"() #21, !srcloc !22
  br label %456

456:                                              ; preds = %451, %445
  %457 = phi i32 [ %455, %451 ], [ %447, %445 ]
  %458 = icmp eq i32 %457, 0
  br i1 %458, label %459, label %467

459:                                              ; preds = %456, %403, %339, %297, %271, %251
  %460 = phi i32 [ %447, %456 ], [ %394, %403 ], [ %340, %339 ], [ %19, %297 ], [ %262, %271 ], [ %219, %251 ]
  %461 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %13) #14, !srcloc !20
  %462 = and i32 %461, -13
  %463 = or i32 %462, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %463) #21, !srcloc !21
  call void asm sideeffect "isb ", "~{memory}"() #21, !srcloc !22
  %464 = call i32 asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r2; .ifnc $2r2,fpr11; .ifnc $2r2,r11fp; .ifnc $2r2,ipr12; .ifnc $2r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__put_user_4", "=&{r0},{r0},{r2},{r1},~{r12},~{lr},~{cc}"(ptr %4, i32 %460, i32 -1090519041) #21, !srcloc !59
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %461) #21, !srcloc !21
  call void asm sideeffect "isb ", "~{memory}"() #21, !srcloc !22
  %465 = icmp eq i32 %464, 0
  %466 = select i1 %465, i32 0, i32 -14
  br label %467

467:                                              ; preds = %459, %456, %432, %411, %403, %339, %337, %323, %297, %295, %285, %271, %264, %254, %251, %23, %21, %5
  %468 = phi i32 [ -14, %403 ], [ %338, %337 ], [ -14, %297 ], [ %272, %271 ], [ -14, %251 ], [ -14, %5 ], [ -22, %21 ], [ -95, %323 ], [ %340, %339 ], [ -22, %411 ], [ -22, %432 ], [ -14, %456 ], [ %466, %459 ], [ %296, %295 ], [ -14, %285 ], [ -92, %23 ], [ -61, %254 ], [ %270, %264 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #21
  ret i32 %468
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc ptr @sk_get_peer_cred(ptr noundef %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 58
  tail call void @_raw_spin_lock(ptr noundef %2) #21
  %3 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 61
  %4 = load ptr, ptr %3, align 8
  %5 = icmp eq ptr %4, null
  br i1 %5, label %9, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.cred, ptr %4, i32 0, i32 24
  store i32 0, ptr %7, align 4
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr nonnull %4) #21, !srcloc !11
  %8 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %4, ptr nonnull %4, i32 1, ptr nonnull elementtype(i32) %4) #21, !srcloc !12
  br label %9

9:                                                ; preds = %6, %1
  tail call void asm sideeffect "dmb ish", "~{memory}"() #21, !srcloc !29
  %10 = load i16, ptr %2, align 4
  %11 = add i16 %10, 1
  store i16 %11, ptr %2, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #21, !srcloc !30
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #21, !srcloc !31
  tail call void asm sideeffect "", "~{memory}"() #21, !srcloc !32
  ret ptr %4
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @put_cred(ptr noundef %0) unnamed_addr #6 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %8, label %3

3:                                                ; preds = %1
  tail call void asm sideeffect "dmb ish", "~{memory}"() #21, !srcloc !60
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr nonnull %0) #21, !srcloc !11
  %4 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %0, ptr nonnull %0, i32 1, ptr nonnull elementtype(i32) %0) #21, !srcloc !61
  %5 = extractvalue { i32, i32 } %4, 0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #21, !srcloc !62
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %8

7:                                                ; preds = %3
  tail call void @__put_cred(ptr noundef nonnull %0) #21
  br label %8

8:                                                ; preds = %7, %3, %1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @groups_to_user(ptr noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.group_info, ptr %1, i32 0, i32 1
  %4 = load i32, ptr %3, align 4
  %5 = icmp sgt i32 %4, 0
  br i1 %5, label %6, label %26

6:                                                ; preds = %2
  %7 = tail call ptr @llvm.thread.pointer() #21
  %8 = getelementptr inbounds %struct.thread_info, ptr %7, i32 0, i32 3
  br label %13

9:                                                ; preds = %13
  %10 = add nuw nsw i32 %14, 1
  %11 = load i32, ptr %3, align 4
  %12 = icmp slt i32 %10, %11
  br i1 %12, label %13, label %26

13:                                               ; preds = %9, %6
  %14 = phi i32 [ 0, %6 ], [ %10, %9 ]
  %15 = getelementptr i32, ptr %0, i32 %14
  %16 = getelementptr %struct.group_info, ptr %1, i32 0, i32 2, i32 %14
  %17 = load i32, ptr %16, align 4
  %18 = icmp eq i32 %17, -1
  %19 = load i32, ptr @overflowgid, align 4
  %20 = select i1 %18, i32 %19, i32 %17
  %21 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %8) #14, !srcloc !20
  %22 = and i32 %21, -13
  %23 = or i32 %22, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %23) #21, !srcloc !21
  tail call void asm sideeffect "isb ", "~{memory}"() #21, !srcloc !22
  %24 = tail call i32 asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r2; .ifnc $2r2,fpr11; .ifnc $2r2,r11fp; .ifnc $2r2,ipr12; .ifnc $2r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__put_user_4", "=&{r0},{r0},{r2},{r1},~{r12},~{lr},~{cc}"(ptr %15, i32 %20, i32 -1090519041) #21, !srcloc !63
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %21) #21, !srcloc !21
  tail call void asm sideeffect "isb ", "~{memory}"() #21, !srcloc !22
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %9, label %26

26:                                               ; preds = %13, %9, %2
  %27 = phi i32 [ 0, %2 ], [ 0, %9 ], [ -14, %13 ]
  ret i32 %27
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @sock_getbindtodevice(ptr nocapture noundef readonly %0, ptr noundef %1, ptr noundef %2, i32 noundef %3) unnamed_addr #0 {
  %5 = alloca [16 x i8], align 1
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #21
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(16) %5, i8 0, i32 16, i1 false), !annotation !18
  %6 = getelementptr inbounds %struct.sock_common, ptr %0, i32 0, i32 6
  %7 = load i32, ptr %6, align 4
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %33, label %9

9:                                                ; preds = %4
  %10 = icmp slt i32 %3, 16
  br i1 %10, label %43, label %11

11:                                               ; preds = %9
  %12 = call i32 @netdev_get_name(ptr noundef nonnull @init_net, ptr noundef nonnull %5, i32 noundef %7) #21
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %43

14:                                               ; preds = %11
  %15 = call i32 @strlen(ptr noundef nonnull %5)
  %16 = add i32 %15, 1
  %17 = icmp ugt i32 %16, 16
  br i1 %17, label %18, label %19, !prof !10

18:                                               ; preds = %14
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.7, i32 noundef 214, i32 noundef 9, ptr noundef nonnull @.str.8, i32 noundef 16, i32 noundef %16) #21
  br label %43

19:                                               ; preds = %14
  %20 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %1, i32 %16, i32 -1090519040) #22, !srcloc !55
  %21 = extractvalue { i32, i32 } %20, 0
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %30

23:                                               ; preds = %19
  %24 = tail call ptr @llvm.thread.pointer() #21
  %25 = getelementptr inbounds %struct.thread_info, ptr %24, i32 0, i32 3
  %26 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %25) #14, !srcloc !20
  %27 = and i32 %26, -13
  %28 = or i32 %27, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %28) #21, !srcloc !21
  call void asm sideeffect "isb ", "~{memory}"() #21, !srcloc !22
  %29 = call i32 @arm_copy_to_user(ptr noundef %1, ptr noundef nonnull %5, i32 noundef %16) #21
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %26) #21, !srcloc !21
  call void asm sideeffect "isb ", "~{memory}"() #21, !srcloc !22
  br label %30

30:                                               ; preds = %23, %19
  %31 = phi i32 [ %29, %23 ], [ %16, %19 ]
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %33, label %43

33:                                               ; preds = %30, %4
  %34 = phi i32 [ %16, %30 ], [ 0, %4 ]
  %35 = tail call ptr @llvm.thread.pointer() #21
  %36 = getelementptr inbounds %struct.thread_info, ptr %35, i32 0, i32 3
  %37 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %36) #14, !srcloc !20
  %38 = and i32 %37, -13
  %39 = or i32 %38, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %39) #21, !srcloc !21
  call void asm sideeffect "isb ", "~{memory}"() #21, !srcloc !22
  %40 = call i32 asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r2; .ifnc $2r2,fpr11; .ifnc $2r2,r11fp; .ifnc $2r2,ipr12; .ifnc $2r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__put_user_4", "=&{r0},{r0},{r2},{r1},~{r12},~{lr},~{cc}"(ptr %2, i32 %34, i32 -1090519041) #21, !srcloc !64
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %37) #21, !srcloc !21
  call void asm sideeffect "isb ", "~{memory}"() #21, !srcloc !22
  %41 = icmp eq i32 %40, 0
  %42 = select i1 %41, i32 0, i32 -14
  br label %43

43:                                               ; preds = %33, %30, %18, %11, %9
  %44 = phi i32 [ -22, %9 ], [ %12, %11 ], [ -14, %30 ], [ %42, %33 ], [ -14, %18 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #21
  ret i32 %44
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sk_get_filter(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define dso_local void @sk_get_meminfo(ptr noundef %0, ptr nocapture noundef writeonly %1) local_unnamed_addr #7 {
  tail call void @llvm.memset.p0.i32(ptr noundef align 4 dereferenceable(36) %1, i8 0, i32 36, i1 false)
  %3 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 9
  %4 = load volatile i32, ptr %3, align 4
  store i32 %4, ptr %1, align 4
  %5 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 15
  %6 = load volatile i32, ptr %5, align 4
  %7 = getelementptr i32, ptr %1, i32 1
  store i32 %6, ptr %7, align 4
  %8 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 23
  %9 = load volatile i32, ptr %8, align 4
  %10 = add i32 %9, -1
  %11 = getelementptr i32, ptr %1, i32 2
  store i32 %10, ptr %11, align 4
  %12 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 21
  %13 = load volatile i32, ptr %12, align 8
  %14 = getelementptr i32, ptr %1, i32 3
  store i32 %13, ptr %14, align 4
  %15 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 11
  %16 = load i32, ptr %15, align 4
  %17 = getelementptr i32, ptr %1, i32 4
  store i32 %16, ptr %17, align 4
  %18 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 22
  %19 = load volatile i32, ptr %18, align 4
  %20 = getelementptr i32, ptr %1, i32 5
  store i32 %19, ptr %20, align 4
  %21 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 20
  %22 = load volatile i32, ptr %21, align 4
  %23 = getelementptr i32, ptr %1, i32 6
  store i32 %22, ptr %23, align 4
  %24 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 9, i32 1
  %25 = load volatile i32, ptr %24, align 4
  %26 = getelementptr i32, ptr %1, i32 7
  store i32 %25, ptr %26, align 4
  %27 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 5
  %28 = load volatile i32, ptr %27, align 4
  %29 = getelementptr i32, ptr %1, i32 8
  store i32 %28, ptr %29, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @sk_alloc(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2, ptr noundef %3, i32 noundef %4) #0 {
  %6 = or i32 %2, 256
  %7 = tail call fastcc ptr @sk_prot_alloc(ptr noundef %3, i32 noundef %6)
  %8 = icmp eq ptr %7, null
  br i1 %8, label %47, label %9

9:                                                ; preds = %5
  %10 = trunc i32 %1 to i16
  %11 = getelementptr inbounds %struct.sock_common, ptr %7, i32 0, i32 3
  store i16 %10, ptr %11, align 8
  %12 = getelementptr inbounds %struct.sock, ptr %7, i32 0, i32 49
  store ptr %3, ptr %12, align 4
  %13 = getelementptr inbounds %struct.sock_common, ptr %7, i32 0, i32 8
  store ptr %3, ptr %13, align 8
  %14 = trunc i32 %4 to i8
  %15 = getelementptr inbounds %struct.sock, ptr %7, i32 0, i32 43
  %16 = load i8, ptr %15, align 8
  %17 = shl i8 %14, 1
  %18 = and i8 %17, 2
  %19 = and i8 %16, -3
  %20 = or i8 %19, %18
  store i8 %20, ptr %15, align 8
  %21 = icmp eq i8 %18, 0
  %22 = getelementptr inbounds %struct.sock, ptr %7, i32 0, i32 4, i32 1
  store i32 0, ptr %22, align 4
  %23 = getelementptr inbounds %struct.sock, ptr %7, i32 0, i32 4, i32 2
  %24 = select i1 %21, ptr @sock_lock_init.__key.14, ptr @sock_lock_init.__key
  tail call void @__init_waitqueue_head(ptr noundef %23, ptr noundef nonnull @.str.13, ptr noundef nonnull %24) #21
  %25 = getelementptr inbounds %struct.sock, ptr %7, i32 0, i32 4
  store i32 0, ptr %25, align 4
  %26 = icmp eq i32 %4, 0
  %27 = getelementptr inbounds %struct.sock_common, ptr %7, i32 0, i32 5
  %28 = load i8, ptr %27, align 1
  %29 = select i1 %26, i8 64, i8 0
  %30 = and i8 %28, -65
  %31 = or i8 %30, %29
  store i8 %31, ptr %27, align 1
  br i1 %26, label %32, label %44, !prof !14

32:                                               ; preds = %9
  %33 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #21, !srcloc !44
  %34 = getelementptr inbounds %struct.net, ptr %0, i32 0, i32 29, i32 2
  %35 = load ptr, ptr %34, align 4
  %36 = ptrtoint ptr %35 to i32
  %37 = tail call i32 @llvm.read_register.i32(metadata !0) #21
  %38 = inttoptr i32 %37 to ptr
  %39 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %38) #14, !srcloc !42
  %40 = add i32 %39, %36
  %41 = inttoptr i32 %40 to ptr
  %42 = load i32, ptr %41, align 4
  %43 = add i32 %42, 1
  store i32 %43, ptr %41, align 4
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %33) #21, !srcloc !45
  br label %44

44:                                               ; preds = %32, %9
  %45 = getelementptr inbounds %struct.sock, ptr %7, i32 0, i32 23
  store volatile i32 1, ptr %45, align 4
  %46 = getelementptr inbounds %struct.sock_common, ptr %7, i32 0, i32 16
  store i16 -1, ptr %46, align 4
  br label %47

47:                                               ; preds = %44, %5
  ret ptr %7
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc ptr @sk_prot_alloc(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.proto, ptr %0, i32 0, i32 40
  %4 = load ptr, ptr %3, align 4
  %5 = icmp eq ptr %4, null
  br i1 %5, label %21, label %6

6:                                                ; preds = %2
  %7 = and i32 %1, -257
  %8 = tail call noalias align 8 ptr @kmem_cache_alloc(ptr noundef nonnull %4, i32 noundef %7) #21
  %9 = icmp eq ptr %8, null
  br i1 %9, label %36, label %10

10:                                               ; preds = %6
  %11 = load volatile i32, ptr @init_on_alloc, align 4
  %12 = icmp sgt i32 %11, 0
  %13 = and i32 %1, 256
  %14 = icmp ne i32 %13, 0
  %15 = or i1 %14, %12
  br i1 %15, label %16, label %26

16:                                               ; preds = %10
  %17 = getelementptr inbounds %struct.proto, ptr %0, i32 0, i32 41
  %18 = load i32, ptr %17, align 4
  tail call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(84) %8, i8 0, i32 84, i1 false) #21
  %19 = getelementptr inbounds %struct.sock_common, ptr %8, i32 0, i32 15, i32 0, i32 1
  %20 = add i32 %18, -88
  tail call void @llvm.memset.p0.i32(ptr align 8 %19, i8 0, i32 %20, i1 false) #21
  br label %26

21:                                               ; preds = %2
  %22 = getelementptr inbounds %struct.proto, ptr %0, i32 0, i32 41
  %23 = load i32, ptr %22, align 4
  %24 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %23, i32 noundef %1) #24
  %25 = icmp eq ptr %24, null
  br i1 %25, label %36, label %30

26:                                               ; preds = %16, %10
  %27 = getelementptr inbounds %struct.proto, ptr %0, i32 0, i32 49
  %28 = load ptr, ptr %27, align 4
  %29 = tail call zeroext i1 @try_module_get(ptr noundef %28) #21
  br i1 %29, label %36, label %34

30:                                               ; preds = %21
  %31 = getelementptr inbounds %struct.proto, ptr %0, i32 0, i32 49
  %32 = load ptr, ptr %31, align 4
  %33 = tail call zeroext i1 @try_module_get(ptr noundef %32) #21
  br i1 %33, label %36, label %35

34:                                               ; preds = %26
  tail call void @kmem_cache_free(ptr noundef nonnull %4, ptr noundef nonnull %8) #21
  br label %36

35:                                               ; preds = %30
  tail call void @kfree(ptr noundef nonnull %24) #21
  br label %36

36:                                               ; preds = %35, %34, %30, %26, %21, %6
  %37 = phi ptr [ null, %6 ], [ %8, %26 ], [ null, %21 ], [ null, %35 ], [ null, %34 ], [ %24, %30 ]
  ret ptr %37
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @sk_destruct(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.sock_common, ptr %0, i32 0, i32 13
  %3 = load volatile i32, ptr %2, align 4
  %4 = and i32 %3, 8388608
  %5 = icmp eq i32 %4, 0
  %6 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 10
  %7 = load volatile ptr, ptr %6, align 4
  %8 = icmp eq ptr %7, null
  %9 = load i1, ptr @sk_destruct.__already_done, align 1
  %10 = select i1 %8, i1 true, i1 %9
  br i1 %10, label %12, label %11, !prof !14

11:                                               ; preds = %1
  store i1 true, ptr @sk_destruct.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 2052, i32 noundef 9, ptr noundef null) #21
  br label %12

12:                                               ; preds = %11, %1
  %13 = load volatile ptr, ptr %6, align 4
  %14 = icmp eq ptr %13, null
  br i1 %14, label %16, label %15

15:                                               ; preds = %12
  tail call void @__sk_defer_free_flush(ptr noundef %0) #21
  br label %16

16:                                               ; preds = %15, %12
  %17 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 81
  %18 = load volatile ptr, ptr %17, align 4
  %19 = icmp eq ptr %18, null
  br i1 %19, label %21, label %20

20:                                               ; preds = %16
  tail call void @reuseport_detach_sock(ptr noundef %0) #21
  br label %22

21:                                               ; preds = %16
  br i1 %5, label %24, label %22

22:                                               ; preds = %21, %20
  %23 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 82
  tail call void @call_rcu(ptr noundef %23, ptr noundef nonnull @__sk_destruct) #21
  br label %26

24:                                               ; preds = %21
  %25 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 82
  tail call void @__sk_destruct(ptr noundef %25)
  br label %26

26:                                               ; preds = %24, %22
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @reuseport_detach_sock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @call_rcu(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @__sk_destruct(ptr noundef %0) #0 {
  %2 = getelementptr i8, ptr %0, i32 -512
  %3 = getelementptr i8, ptr %0, i32 -8
  %4 = load ptr, ptr %3, align 8
  %5 = icmp eq ptr %4, null
  br i1 %5, label %7, label %6

6:                                                ; preds = %1
  tail call void %4(ptr noundef %2) #21
  br label %7

7:                                                ; preds = %6, %1
  %8 = getelementptr i8, ptr %0, i32 -288
  %9 = load volatile ptr, ptr %8, align 8
  %10 = icmp eq ptr %9, null
  br i1 %10, label %12, label %11

11:                                               ; preds = %7
  tail call void @sk_filter_uncharge(ptr noundef %2, ptr noundef nonnull %9) #21
  store volatile ptr null, ptr %8, align 8
  br label %12

12:                                               ; preds = %11, %7
  %13 = getelementptr i8, ptr %0, i32 -432
  %14 = load i32, ptr %13, align 8
  %15 = and i32 %14, 32896
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %23, label %17

17:                                               ; preds = %12
  %18 = and i32 %14, -32897
  store i32 %18, ptr %13, align 8
  %19 = getelementptr i8, ptr %0, i32 -496
  %20 = load i16, ptr %19, align 8
  %21 = icmp ugt i16 %20, 1
  br i1 %21, label %22, label %23

22:                                               ; preds = %17
  tail call void @net_disable_timestamp() #21
  br label %23

23:                                               ; preds = %22, %17, %12
  %24 = getelementptr i8, ptr %0, i32 -268
  %25 = load volatile i32, ptr %24, align 4
  %26 = getelementptr i8, ptr %0, i32 -172
  %27 = load ptr, ptr %26, align 4
  %28 = icmp eq ptr %27, null
  br i1 %28, label %47, label %29

29:                                               ; preds = %23
  %30 = getelementptr inbounds %struct.page, ptr %27, i32 0, i32 1
  %31 = load volatile i32, ptr %30, align 4
  %32 = and i32 %31, 1
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %36, label %34, !prof !14

34:                                               ; preds = %29
  %35 = add i32 %31, -1
  br label %38

36:                                               ; preds = %29
  %37 = ptrtoint ptr %27 to i32
  br label %38

38:                                               ; preds = %36, %34
  %39 = phi i32 [ %35, %34 ], [ %37, %36 ]
  %40 = inttoptr i32 %39 to ptr
  %41 = getelementptr inbounds %struct.page, ptr %40, i32 0, i32 3
  tail call void asm sideeffect "dmb ish", "~{memory}"() #21, !srcloc !60
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %41) #21, !srcloc !11
  %42 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %41, ptr %41, i32 1, ptr elementtype(i32) %41) #21, !srcloc !61
  %43 = extractvalue { i32, i32 } %42, 0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #21, !srcloc !62
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %45, label %46

45:                                               ; preds = %38
  tail call void @__put_page(ptr noundef %40) #21
  br label %46

46:                                               ; preds = %45, %38
  store ptr null, ptr %26, align 4
  br label %47

47:                                               ; preds = %46, %23
  %48 = getelementptr i8, ptr %0, i32 -80
  %49 = load ptr, ptr %48, align 8
  %50 = icmp eq ptr %49, null
  br i1 %50, label %56, label %51

51:                                               ; preds = %47
  tail call void asm sideeffect "dmb ish", "~{memory}"() #21, !srcloc !60
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr nonnull %49) #21, !srcloc !11
  %52 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %49, ptr nonnull %49, i32 1, ptr nonnull elementtype(i32) %49) #21, !srcloc !61
  %53 = extractvalue { i32, i32 } %52, 0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #21, !srcloc !62
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %55, label %56

55:                                               ; preds = %51
  tail call void @__put_cred(ptr noundef nonnull %49) #21
  br label %56

56:                                               ; preds = %55, %51, %47
  %57 = getelementptr i8, ptr %0, i32 -84
  %58 = load ptr, ptr %57, align 4
  tail call void @put_pid(ptr noundef %58) #21
  %59 = getelementptr i8, ptr %0, i32 -124
  %60 = load ptr, ptr %59, align 4
  %61 = getelementptr inbounds %struct.proto, ptr %60, i32 0, i32 49
  %62 = load ptr, ptr %61, align 4
  %63 = getelementptr inbounds %struct.proto, ptr %60, i32 0, i32 40
  %64 = load ptr, ptr %63, align 4
  %65 = icmp eq ptr %64, null
  br i1 %65, label %67, label %66

66:                                               ; preds = %56
  tail call void @kmem_cache_free(ptr noundef nonnull %64, ptr noundef %2) #21
  br label %68

67:                                               ; preds = %56
  tail call void @kfree(ptr noundef %2) #21
  br label %68

68:                                               ; preds = %67, %66
  tail call void @module_put(ptr noundef %62) #21
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @sk_free(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 23
  tail call void asm sideeffect "dmb ish", "~{memory}"() #21, !srcloc !33
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %2) #21, !srcloc !11
  %3 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %2, ptr %2, i32 1, ptr elementtype(i32) %2) #21, !srcloc !34
  %4 = extractvalue { i32, i32, i32 } %3, 0
  %5 = icmp eq i32 %4, 1
  br i1 %5, label %9, label %6

6:                                                ; preds = %1
  %7 = icmp sgt i32 %4, 0
  br i1 %7, label %10, label %8, !prof !14

8:                                                ; preds = %6
  tail call void @refcount_warn_saturate(ptr noundef %2, i32 noundef 3) #21
  br label %10

9:                                                ; preds = %1
  tail call void asm sideeffect "dmb ish", "~{memory}"() #21, !srcloc !35
  tail call fastcc void @__sk_free(ptr noundef %0)
  br label %10

10:                                               ; preds = %9, %8, %6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @__sk_free(ptr noundef %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.sock_common, ptr %0, i32 0, i32 5
  %3 = load i8, ptr %2, align 1
  %4 = and i8 %3, 64
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %54, label %6, !prof !10

6:                                                ; preds = %1
  %7 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #21, !srcloc !44
  %8 = load ptr, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 29, i32 2), align 4
  %9 = ptrtoint ptr %8 to i32
  %10 = tail call i32 @llvm.read_register.i32(metadata !0) #21
  %11 = inttoptr i32 %10 to ptr
  %12 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %11) #14, !srcloc !42
  %13 = add i32 %12, %9
  %14 = inttoptr i32 %13 to ptr
  %15 = load i32, ptr %14, align 4
  %16 = add i32 %15, -1
  store i32 %16, ptr %14, align 4
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %7) #21, !srcloc !45
  %17 = load i8, ptr %2, align 1
  %18 = and i8 %17, 64
  %19 = icmp eq i8 %18, 0
  br i1 %19, label %54, label %20

20:                                               ; preds = %6
  %21 = getelementptr inbounds %struct.sock_common, ptr %0, i32 0, i32 3
  %22 = load i16, ptr %21, align 8
  switch i16 %22, label %54 [
    i16 2, label %23
    i16 10, label %33
  ]

23:                                               ; preds = %20
  %24 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 45
  %25 = load i16, ptr %24, align 2
  %26 = icmp eq i16 %25, 3
  br i1 %26, label %54, label %27

27:                                               ; preds = %23
  %28 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 46
  %29 = load i16, ptr %28, align 4
  %30 = icmp eq i16 %29, 17
  %31 = select i1 %30, i32 2, i32 0
  %32 = icmp eq i16 %29, 6
  br i1 %32, label %46, label %43

33:                                               ; preds = %20
  %34 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 45
  %35 = load i16, ptr %34, align 2
  %36 = icmp eq i16 %35, 3
  br i1 %36, label %54, label %37

37:                                               ; preds = %33
  %38 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 46
  %39 = load i16, ptr %38, align 4
  %40 = icmp eq i16 %39, 17
  %41 = select i1 %40, i32 4, i32 0
  %42 = icmp eq i16 %39, 6
  br i1 %42, label %46, label %43

43:                                               ; preds = %37, %27
  %44 = phi i32 [ %31, %27 ], [ %41, %37 ]
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %54, label %46

46:                                               ; preds = %43, %37, %27
  %47 = phi i32 [ %44, %43 ], [ 1, %27 ], [ 3, %37 ]
  %48 = load ptr, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 44), align 4
  %49 = icmp eq ptr %48, null
  br i1 %49, label %54, label %50

50:                                               ; preds = %46
  %51 = tail call i32 @netlink_has_listeners(ptr noundef nonnull %48, i32 noundef %47) #21
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %54, label %53, !prof !14

53:                                               ; preds = %50
  tail call void @sock_diag_broadcast_destroy(ptr noundef %0) #21
  br label %55

54:                                               ; preds = %50, %46, %43, %33, %23, %20, %6, %1
  tail call void @sk_destruct(ptr noundef %0)
  br label %55

55:                                               ; preds = %54, %53
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @sk_clone_lock(ptr noundef %0, i32 noundef %1) #0 {
  %3 = getelementptr inbounds %struct.sock_common, ptr %0, i32 0, i32 8
  %4 = load volatile ptr, ptr %3, align 8
  %5 = tail call fastcc ptr @sk_prot_alloc(ptr noundef %4, i32 noundef %1)
  %6 = icmp eq ptr %5, null
  br i1 %6, label %135, label %7

7:                                                ; preds = %2
  %8 = load volatile ptr, ptr %3, align 8
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 8 dereferenceable(84) %5, ptr noundef align 8 dereferenceable(84) %0, i32 84, i1 false) #21
  %9 = getelementptr inbounds %struct.sock_common, ptr %5, i32 0, i32 20
  %10 = getelementptr inbounds %struct.sock_common, ptr %0, i32 0, i32 20
  %11 = getelementptr inbounds %struct.proto, ptr %8, i32 0, i32 41
  %12 = load i32, ptr %11, align 4
  %13 = add i32 %12, -104
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 8 %9, ptr align 8 %10, i32 %13, i1 false) #21
  %14 = getelementptr inbounds %struct.sock, ptr %5, i32 0, i32 49
  store ptr %4, ptr %14, align 4
  %15 = getelementptr inbounds %struct.sock_common, ptr %5, i32 0, i32 5
  %16 = load i8, ptr %15, align 1
  %17 = and i8 %16, 64
  %18 = icmp eq i8 %17, 0
  br i1 %18, label %30, label %19, !prof !10

19:                                               ; preds = %7
  %20 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #21, !srcloc !44
  %21 = load ptr, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 29, i32 2), align 4
  %22 = ptrtoint ptr %21 to i32
  %23 = tail call i32 @llvm.read_register.i32(metadata !0) #21
  %24 = inttoptr i32 %23 to ptr
  %25 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %24) #14, !srcloc !42
  %26 = add i32 %25, %22
  %27 = inttoptr i32 %26 to ptr
  %28 = load i32, ptr %27, align 4
  %29 = add i32 %28, 1
  store i32 %29, ptr %27, align 4
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %20) #21, !srcloc !45
  br label %30

30:                                               ; preds = %19, %7
  %31 = getelementptr inbounds %struct.sock_common, ptr %5, i32 0, i32 15, i32 0, i32 1
  store ptr null, ptr %31, align 4
  %32 = getelementptr inbounds %struct.sock, ptr %5, i32 0, i32 43
  %33 = load i8, ptr %32, align 8
  %34 = and i8 %33, 2
  %35 = icmp eq i8 %34, 0
  %36 = getelementptr inbounds %struct.sock, ptr %5, i32 0, i32 4, i32 1
  store i32 0, ptr %36, align 4
  %37 = getelementptr inbounds %struct.sock, ptr %5, i32 0, i32 4, i32 2
  %38 = select i1 %35, ptr @sock_lock_init.__key.14, ptr @sock_lock_init.__key
  tail call void @__init_waitqueue_head(ptr noundef %37, ptr noundef nonnull @.str.13, ptr noundef nonnull %38) #21
  %39 = getelementptr inbounds %struct.sock, ptr %5, i32 0, i32 4
  store i32 0, ptr %39, align 4
  tail call void @_raw_spin_lock(ptr noundef %39) #21
  %40 = getelementptr inbounds %struct.sock, ptr %5, i32 0, i32 9
  %41 = getelementptr inbounds %struct.sock, ptr %5, i32 0, i32 9, i32 3
  store ptr null, ptr %41, align 4
  %42 = getelementptr inbounds %struct.sock, ptr %5, i32 0, i32 9, i32 2
  store ptr null, ptr %42, align 8
  %43 = getelementptr inbounds %struct.sock, ptr %5, i32 0, i32 9, i32 1
  store i32 0, ptr %43, align 4
  store volatile i32 0, ptr %40, align 4
  %44 = getelementptr inbounds %struct.sock, ptr %5, i32 0, i32 23
  store volatile i32 1, ptr %44, align 4
  %45 = getelementptr inbounds %struct.sock, ptr %5, i32 0, i32 20
  store volatile i32 0, ptr %45, align 4
  %46 = getelementptr inbounds %struct.sock, ptr %5, i32 0, i32 8
  %47 = getelementptr inbounds %struct.sock, ptr %5, i32 0, i32 8, i32 2
  store i32 0, ptr %47, align 4
  store ptr %46, ptr %46, align 4
  %48 = getelementptr inbounds %struct.sock, ptr %5, i32 0, i32 8, i32 0, i32 0, i32 1
  store ptr %46, ptr %48, align 4
  %49 = getelementptr inbounds %struct.sock, ptr %5, i32 0, i32 8, i32 1
  store i32 0, ptr %49, align 4
  %50 = getelementptr inbounds %struct.sock, ptr %5, i32 0, i32 26
  %51 = getelementptr inbounds %struct.sock, ptr %5, i32 0, i32 26, i32 2
  store i32 0, ptr %51, align 4
  store ptr %50, ptr %50, align 4
  %52 = getelementptr inbounds %struct.sock, ptr %5, i32 0, i32 26, i32 0, i32 0, i32 1
  store ptr %50, ptr %52, align 4
  %53 = getelementptr inbounds %struct.sock, ptr %5, i32 0, i32 26, i32 1
  store i32 0, ptr %53, align 4
  %54 = getelementptr inbounds %struct.sock, ptr %5, i32 0, i32 7
  %55 = getelementptr inbounds %struct.sock, ptr %5, i32 0, i32 7, i32 2
  store i32 0, ptr %55, align 4
  store ptr %54, ptr %54, align 4
  %56 = getelementptr inbounds %struct.sock, ptr %5, i32 0, i32 7, i32 0, i32 0, i32 1
  store ptr %54, ptr %56, align 4
  %57 = getelementptr inbounds %struct.sock, ptr %5, i32 0, i32 7, i32 1
  store i32 0, ptr %57, align 4
  %58 = getelementptr inbounds %struct.sock, ptr %5, i32 0, i32 50
  store i32 0, ptr %58, align 8
  %59 = getelementptr inbounds %struct.sock, ptr %5, i32 0, i32 19
  store ptr null, ptr %59, align 8
  %60 = getelementptr inbounds %struct.sock, ptr %5, i32 0, i32 29
  store i32 0, ptr %60, align 4
  %61 = getelementptr inbounds %struct.sock, ptr %5, i32 0, i32 22
  store i32 0, ptr %61, align 4
  %62 = getelementptr inbounds %struct.sock, ptr %5, i32 0, i32 11
  store i32 0, ptr %62, align 4
  %63 = getelementptr inbounds %struct.sock, ptr %5, i32 0, i32 12
  store i32 0, ptr %63, align 8
  %64 = getelementptr inbounds %struct.sock, ptr %5, i32 0, i32 5
  store volatile i32 0, ptr %64, align 4
  %65 = getelementptr inbounds %struct.sock, ptr %5, i32 0, i32 25
  store ptr null, ptr %65, align 8
  %66 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 43
  %67 = load i8, ptr %66, align 8
  %68 = and i8 %67, 112
  %69 = load i8, ptr %32, align 8
  %70 = and i8 %69, 15
  %71 = or i8 %70, %68
  store i8 %71, ptr %32, align 8
  %72 = getelementptr inbounds %struct.sock, ptr %5, i32 0, i32 68
  store volatile i32 0, ptr %72, align 4
  %73 = getelementptr inbounds %struct.sock_common, ptr %5, i32 0, i32 13
  %74 = load i32, ptr %73, align 4
  %75 = and i32 %74, -3
  store i32 %75, ptr %73, align 4
  %76 = getelementptr inbounds %struct.sock, ptr %5, i32 0, i32 74
  store ptr null, ptr %76, align 8
  tail call void asm sideeffect "", "~{memory}"() #21, !srcloc !36
  %77 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 16
  %78 = load volatile ptr, ptr %77, align 8
  %79 = icmp eq ptr %78, null
  br i1 %79, label %80, label %82

80:                                               ; preds = %30
  %81 = getelementptr inbounds %struct.sock, ptr %5, i32 0, i32 16
  store volatile ptr null, ptr %81, align 8
  tail call void asm sideeffect "", "~{memory}"() #21, !srcloc !37
  br label %85

82:                                               ; preds = %30
  %83 = tail call zeroext i1 @sk_filter_charge(ptr noundef nonnull %5, ptr noundef nonnull %78) #21
  %84 = getelementptr inbounds %struct.sock, ptr %5, i32 0, i32 16
  store volatile ptr %78, ptr %84, align 8
  tail call void asm sideeffect "", "~{memory}"() #21, !srcloc !37
  br i1 %83, label %85, label %98, !prof !14

85:                                               ; preds = %82, %80
  %86 = getelementptr inbounds %struct.sock, ptr %5, i32 0, i32 18
  store ptr null, ptr %86, align 8
  %87 = getelementptr %struct.sock, ptr %5, i32 0, i32 18, i32 1
  store ptr null, ptr %87, align 4
  %88 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 18
  %89 = load ptr, ptr %88, align 8
  %90 = icmp eq ptr %89, null
  br i1 %90, label %91, label %95, !prof !14

91:                                               ; preds = %85
  %92 = getelementptr %struct.sock, ptr %0, i32 0, i32 18, i32 1
  %93 = load ptr, ptr %92, align 4
  %94 = icmp eq ptr %93, null
  br i1 %94, label %100, label %95, !prof !14

95:                                               ; preds = %91, %85
  %96 = tail call i32 @__xfrm_sk_clone_policy(ptr noundef nonnull %5, ptr noundef %0) #21
  %97 = icmp eq i32 %96, 0
  br i1 %97, label %100, label %99, !prof !14

98:                                               ; preds = %82
  store volatile ptr null, ptr %84, align 8
  br label %99

99:                                               ; preds = %98, %95
  tail call void @sk_free_unlock_clone(ptr noundef nonnull %5)
  br label %135

100:                                              ; preds = %95, %91
  %101 = getelementptr inbounds %struct.sock, ptr %5, i32 0, i32 81
  store volatile ptr null, ptr %101, align 4
  %102 = getelementptr inbounds %struct.sock, ptr %5, i32 0, i32 72
  %103 = load ptr, ptr %102, align 4
  %104 = ptrtoint ptr %103 to i32
  %105 = and i32 %104, 1
  %106 = icmp eq i32 %105, 0
  br i1 %106, label %108, label %107

107:                                              ; preds = %100
  store ptr null, ptr %102, align 4
  br label %108

108:                                              ; preds = %107, %100
  %109 = getelementptr inbounds %struct.sock, ptr %5, i32 0, i32 51
  store i32 0, ptr %109, align 4
  %110 = getelementptr inbounds %struct.sock, ptr %5, i32 0, i32 52
  store i32 0, ptr %110, align 8
  %111 = getelementptr inbounds %struct.sock, ptr %5, i32 0, i32 33
  store i32 0, ptr %111, align 4
  %112 = tail call ptr @llvm.thread.pointer() #21
  %113 = getelementptr inbounds %struct.thread_info, ptr %112, i32 0, i32 2
  %114 = load i32, ptr %113, align 8
  %115 = getelementptr inbounds %struct.sock_common, ptr %5, i32 0, i32 18
  store i32 %114, ptr %115, align 8
  tail call void asm sideeffect "dmb ishst", "~{memory}"() #21, !srcloc !65
  %116 = getelementptr inbounds %struct.sock_common, ptr %5, i32 0, i32 19
  store volatile i32 2, ptr %116, align 4
  %117 = getelementptr inbounds %struct.sock, ptr %5, i32 0, i32 71
  store ptr null, ptr %117, align 8
  %118 = getelementptr inbounds %struct.sock_common, ptr %5, i32 0, i32 16
  store i16 -1, ptr %118, align 4
  %119 = getelementptr inbounds %struct.sock, ptr %5, i32 0, i32 17
  store volatile ptr null, ptr %119, align 4
  %120 = getelementptr inbounds %struct.sock_common, ptr %5, i32 0, i32 8
  %121 = load ptr, ptr %120, align 8
  %122 = getelementptr inbounds %struct.proto, ptr %121, i32 0, i32 31
  %123 = load ptr, ptr %122, align 4
  %124 = icmp eq ptr %123, null
  br i1 %124, label %126, label %125

125:                                              ; preds = %108
  tail call void @percpu_counter_add_batch(ptr noundef nonnull %123, i64 noundef 1, i32 noundef 16) #21
  br label %126

126:                                              ; preds = %125, %108
  %127 = getelementptr inbounds %struct.sock_common, ptr %0, i32 0, i32 3
  %128 = load i16, ptr %127, align 8
  %129 = icmp ugt i16 %128, 1
  br i1 %129, label %130, label %135

130:                                              ; preds = %126
  %131 = load i32, ptr %73, align 8
  %132 = and i32 %131, 32896
  %133 = icmp eq i32 %132, 0
  br i1 %133, label %135, label %134

134:                                              ; preds = %130
  tail call void @net_enable_timestamp() #21
  br label %135

135:                                              ; preds = %134, %130, %126, %99, %2
  %136 = phi ptr [ null, %99 ], [ %5, %134 ], [ %5, %130 ], [ %5, %126 ], [ null, %2 ]
  ret ptr %136
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @sk_filter_charge(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @sk_free_unlock_clone(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 80
  store ptr null, ptr %2, align 8
  %3 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #21, !srcloc !29
  %4 = load i16, ptr %3, align 4
  %5 = add i16 %4, 1
  store i16 %5, ptr %3, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #21, !srcloc !30
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #21, !srcloc !31
  tail call void asm sideeffect "", "~{memory}"() #21, !srcloc !32
  %6 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 23
  tail call void asm sideeffect "dmb ish", "~{memory}"() #21, !srcloc !33
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %6) #21, !srcloc !11
  %7 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %6, ptr %6, i32 1, ptr elementtype(i32) %6) #21, !srcloc !34
  %8 = extractvalue { i32, i32, i32 } %7, 0
  %9 = icmp eq i32 %8, 1
  br i1 %9, label %13, label %10

10:                                               ; preds = %1
  %11 = icmp sgt i32 %8, 0
  br i1 %11, label %14, label %12, !prof !14

12:                                               ; preds = %10
  tail call void @refcount_warn_saturate(ptr noundef %6, i32 noundef 3) #21
  br label %14

13:                                               ; preds = %1
  tail call void asm sideeffect "dmb ish", "~{memory}"() #21, !srcloc !35
  tail call fastcc void @__sk_free(ptr noundef %0) #21
  br label %14

14:                                               ; preds = %13, %12, %10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @net_enable_timestamp() local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @sk_setup_caps(ptr noundef %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.sock_common, ptr %0, i32 0, i32 16
  store i16 -1, ptr %3, align 4
  %4 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 29
  store i32 0, ptr %4, align 4
  %5 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 19
  tail call void asm sideeffect "dmb ish", "~{memory}"() #21, !srcloc !38
  %6 = ptrtoint ptr %1 to i32
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %5) #21, !srcloc !11
  %7 = tail call { i32, i32 } asm sideeffect "@\09__xchg4\0A1:\09ldrex\09$0, [$3]\0A\09strex\09$1, $2, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,r,r,~{memory},~{cc}"(i32 %6, ptr %5) #21, !srcloc !39
  %8 = extractvalue { i32, i32 } %7, 0
  %9 = inttoptr i32 %8 to ptr
  tail call void asm sideeffect "dmb ish", "~{memory}"() #21, !srcloc !40
  tail call void @dst_release(ptr noundef %9) #21
  %10 = load ptr, ptr %1, align 4
  %11 = getelementptr inbounds %struct.net_device, ptr %10, i32 0, i32 23
  %12 = load i64, ptr %11, align 16
  %13 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 38
  store i64 %12, ptr %13, align 8
  %14 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 45
  %15 = load i16, ptr %14, align 2
  %16 = icmp eq i16 %15, 1
  br i1 %16, label %17, label %23

17:                                               ; preds = %2
  %18 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 46
  %19 = load i16, ptr %18, align 4
  %20 = icmp eq i16 %19, 6
  br i1 %20, label %21, label %23

21:                                               ; preds = %17
  %22 = or i64 %12, 2048
  store i64 %22, ptr %13, align 8
  br label %23

23:                                               ; preds = %21, %17, %2
  %24 = phi i64 [ %12, %2 ], [ %22, %21 ], [ %12, %17 ]
  %25 = and i64 %24, 2048
  %26 = icmp eq i64 %25, 0
  br i1 %26, label %29, label %27

27:                                               ; preds = %23
  %28 = or i64 %24, 26845446144
  store i64 %28, ptr %13, align 8
  br label %29

29:                                               ; preds = %27, %23
  %30 = phi i64 [ %28, %27 ], [ %24, %23 ]
  %31 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 43
  %32 = load i8, ptr %31, align 8
  %33 = and i8 %32, 1
  %34 = icmp eq i8 %33, 0
  br i1 %34, label %37, label %35, !prof !14

35:                                               ; preds = %29
  %36 = and i64 %30, -34359672833
  store i64 %36, ptr %13, align 8
  br label %37

37:                                               ; preds = %35, %29
  %38 = phi i64 [ %36, %35 ], [ %30, %29 ]
  %39 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 39
  %40 = load i32, ptr %39, align 8
  %41 = sext i32 %40 to i64
  %42 = shl nsw i64 %41, 16
  %43 = and i64 %42, %38
  %44 = icmp eq i64 %43, %42
  br i1 %44, label %45, label %61

45:                                               ; preds = %37
  %46 = getelementptr inbounds %struct.dst_entry, ptr %1, i32 0, i32 9
  %47 = load i16, ptr %46, align 4
  %48 = icmp eq i16 %47, 0
  br i1 %48, label %51, label %49

49:                                               ; preds = %45
  %50 = and i64 %38, -34359672833
  store i64 %50, ptr %13, align 8
  br label %61

51:                                               ; preds = %45
  %52 = or i64 %38, 9
  store i64 %52, ptr %13, align 8
  %53 = load ptr, ptr %1, align 4
  %54 = getelementptr inbounds %struct.net_device, ptr %53, i32 0, i32 115
  %55 = load volatile i32, ptr %54, align 32
  %56 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 40
  store i32 %55, ptr %56, align 4
  %57 = load ptr, ptr %1, align 4
  %58 = getelementptr inbounds %struct.net_device, ptr %57, i32 0, i32 116
  %59 = load volatile i16, ptr %58, align 4
  %60 = tail call i16 @llvm.umax.i16(i16 %59, i16 1)
  br label %61

61:                                               ; preds = %51, %49, %37
  %62 = phi i16 [ %60, %51 ], [ 1, %49 ], [ 1, %37 ]
  %63 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 47
  store i16 %62, ptr %63, align 2
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @sock_wfree(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 1
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 18
  %5 = load i32, ptr %4, align 8
  %6 = getelementptr inbounds %struct.sock_common, ptr %3, i32 0, i32 13
  %7 = load volatile i32, ptr %6, align 4
  %8 = and i32 %7, 512
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %25

10:                                               ; preds = %1
  %11 = add i32 %5, -1
  %12 = getelementptr inbounds %struct.sock, ptr %3, i32 0, i32 23
  tail call void asm sideeffect "dmb ish", "~{memory}"() #21, !srcloc !33
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %12) #21, !srcloc !11
  %13 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %12, ptr %12, i32 %11, ptr elementtype(i32) %12) #21, !srcloc !34
  %14 = extractvalue { i32, i32, i32 } %13, 0
  %15 = icmp eq i32 %14, %11
  br i1 %15, label %21, label %16

16:                                               ; preds = %10
  %17 = sub i32 %14, %11
  %18 = or i32 %17, %14
  %19 = icmp sgt i32 %18, -1
  br i1 %19, label %22, label %20, !prof !14

20:                                               ; preds = %16
  tail call void @refcount_warn_saturate(ptr noundef %12, i32 noundef 3) #21
  br label %22

21:                                               ; preds = %10
  tail call void asm sideeffect "dmb ish", "~{memory}"() #21, !srcloc !35
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 2295, i32 noundef 9, ptr noundef null) #21
  br label %22

22:                                               ; preds = %21, %20, %16
  %23 = getelementptr inbounds %struct.sock, ptr %3, i32 0, i32 77
  %24 = load ptr, ptr %23, align 4
  tail call void %24(ptr noundef %3) #21
  br label %25

25:                                               ; preds = %22, %1
  %26 = phi i32 [ %5, %1 ], [ 1, %22 ]
  %27 = getelementptr inbounds %struct.sock, ptr %3, i32 0, i32 23
  tail call void asm sideeffect "dmb ish", "~{memory}"() #21, !srcloc !33
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %27) #21, !srcloc !11
  %28 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %27, ptr %27, i32 %26, ptr elementtype(i32) %27) #21, !srcloc !34
  %29 = extractvalue { i32, i32, i32 } %28, 0
  %30 = icmp eq i32 %29, %26
  br i1 %30, label %36, label %31

31:                                               ; preds = %25
  %32 = sub i32 %29, %26
  %33 = or i32 %32, %29
  %34 = icmp sgt i32 %33, -1
  br i1 %34, label %37, label %35, !prof !14

35:                                               ; preds = %31
  tail call void @refcount_warn_saturate(ptr noundef %27, i32 noundef 3) #21
  br label %37

36:                                               ; preds = %25
  tail call void asm sideeffect "dmb ish", "~{memory}"() #21, !srcloc !35
  tail call fastcc void @__sk_free(ptr noundef %3)
  br label %37

37:                                               ; preds = %36, %35, %31
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @__sock_wfree(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 1
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 18
  %5 = load i32, ptr %4, align 8
  %6 = getelementptr inbounds %struct.sock, ptr %3, i32 0, i32 23
  tail call void asm sideeffect "dmb ish", "~{memory}"() #21, !srcloc !33
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %6) #21, !srcloc !11
  %7 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %6, ptr %6, i32 %5, ptr elementtype(i32) %6) #21, !srcloc !34
  %8 = extractvalue { i32, i32, i32 } %7, 0
  %9 = icmp eq i32 %8, %5
  br i1 %9, label %15, label %10

10:                                               ; preds = %1
  %11 = sub i32 %8, %5
  %12 = or i32 %11, %8
  %13 = icmp sgt i32 %12, -1
  br i1 %13, label %16, label %14, !prof !14

14:                                               ; preds = %10
  tail call void @refcount_warn_saturate(ptr noundef %6, i32 noundef 3) #21
  br label %16

15:                                               ; preds = %1
  tail call void asm sideeffect "dmb ish", "~{memory}"() #21, !srcloc !35
  tail call fastcc void @__sk_free(ptr noundef %3)
  br label %16

16:                                               ; preds = %15, %14, %10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @skb_set_owner_w(ptr noundef %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 4, i32 0, i32 1
  %4 = load ptr, ptr %3, align 4
  %5 = icmp eq ptr %4, null
  br i1 %5, label %7, label %6

6:                                                ; preds = %2
  tail call void %4(ptr noundef %0) #21
  store ptr null, ptr %3, align 4
  br label %12

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 1
  %9 = load ptr, ptr %8, align 4
  %10 = icmp eq ptr %9, null
  br i1 %10, label %12, label %11, !prof !14

11:                                               ; preds = %7
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/skbuff.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2859, 0\0A.popsection", ""() #21, !srcloc !25
  unreachable

12:                                               ; preds = %7, %6
  %13 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 1
  store ptr %1, ptr %13, align 4
  %14 = getelementptr inbounds %struct.sock_common, ptr %1, i32 0, i32 4
  %15 = load volatile i8, ptr %14, align 2
  %16 = zext i8 %15 to i32
  %17 = shl nuw i32 1, %16
  %18 = and i32 %17, -4161
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %31, !prof !10

20:                                               ; preds = %12
  store ptr @sock_edemux, ptr %3, align 4
  %21 = getelementptr inbounds %struct.sock_common, ptr %1, i32 0, i32 19
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %21) #21, !srcloc !11
  %22 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %21, ptr %21, i32 1, ptr elementtype(i32) %21) #21, !srcloc !66
  %23 = extractvalue { i32, i32, i32 } %22, 0
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %29, label %25, !prof !10

25:                                               ; preds = %20
  %26 = add i32 %23, 1
  %27 = or i32 %26, %23
  %28 = icmp sgt i32 %27, -1
  br i1 %28, label %53, label %29, !prof !14

29:                                               ; preds = %25, %20
  %30 = phi i32 [ 2, %20 ], [ 1, %25 ]
  tail call void @refcount_warn_saturate(ptr noundef %21, i32 noundef %30) #21
  br label %53

31:                                               ; preds = %12
  store ptr @sock_wfree, ptr %3, align 4
  %32 = getelementptr inbounds %struct.sock, ptr %1, i32 0, i32 42
  %33 = load volatile i32, ptr %32, align 4
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %40, label %35

35:                                               ; preds = %31
  %36 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 13
  %37 = load i16, ptr %36, align 8
  %38 = or i16 %37, 256
  store i16 %38, ptr %36, align 8
  %39 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 13, i32 0, i32 7
  store i32 %33, ptr %39, align 8
  br label %40

40:                                               ; preds = %35, %31
  %41 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 18
  %42 = load i32, ptr %41, align 8
  %43 = getelementptr inbounds %struct.sock, ptr %1, i32 0, i32 23
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %43) #21, !srcloc !11
  %44 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %43, ptr %43, i32 %42, ptr elementtype(i32) %43) #21, !srcloc !66
  %45 = extractvalue { i32, i32, i32 } %44, 0
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %51, label %47, !prof !10

47:                                               ; preds = %40
  %48 = add i32 %45, %42
  %49 = or i32 %48, %45
  %50 = icmp sgt i32 %49, -1
  br i1 %50, label %53, label %51, !prof !14

51:                                               ; preds = %47, %40
  %52 = phi i32 [ 2, %40 ], [ 1, %47 ]
  tail call void @refcount_warn_saturate(ptr noundef %43, i32 noundef %52) #21
  br label %53

53:                                               ; preds = %51, %47, %29, %25
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @sock_edemux(ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @skb_orphan_partial(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 18
  %3 = load i32, ptr %2, align 8
  %4 = icmp eq i32 %3, 2
  br i1 %4, label %58, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 4, i32 0, i32 1
  %7 = load ptr, ptr %6, align 4
  %8 = icmp eq ptr %7, @sock_wfree
  %9 = icmp eq ptr %7, @tcp_wfree
  %10 = or i1 %8, %9
  br i1 %10, label %11, label %48

11:                                               ; preds = %5
  %12 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 1
  %13 = load ptr, ptr %12, align 4
  %14 = icmp eq ptr %13, null
  br i1 %14, label %48, label %15

15:                                               ; preds = %11
  %16 = getelementptr inbounds %struct.sock_common, ptr %13, i32 0, i32 19
  %17 = load volatile i32, ptr %16, align 4
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %31, label %19

19:                                               ; preds = %29, %15
  %20 = phi i32 [ %27, %29 ], [ %17, %15 ]
  %21 = add i32 %20, 1
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %16) #21, !srcloc !11
  br label %22

22:                                               ; preds = %22, %19
  %23 = tail call { i32, i32 } asm sideeffect "@ atomic_cmpxchg\0Aldrex\09$1, [$3]\0Amov\09$0, #0\0Ateq\09$1, $4\0Astrexeq $0, $5, [$3]\0A", "=&r,=&r,=*Qo,r,Ir,r,*Qo,~{cc}"(ptr elementtype(i32) %16, ptr %16, i32 %20, i32 %21, ptr elementtype(i32) %16) #21, !srcloc !67
  %24 = extractvalue { i32, i32 } %23, 0
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %22

26:                                               ; preds = %22
  %27 = extractvalue { i32, i32 } %23, 1
  %28 = icmp eq i32 %27, %20
  br i1 %28, label %31, label %29, !prof !14

29:                                               ; preds = %26
  %30 = icmp eq i32 %27, 0
  br i1 %30, label %31, label %19

31:                                               ; preds = %29, %26, %15
  %32 = phi i32 [ 0, %15 ], [ %20, %26 ], [ 0, %29 ]
  %33 = add i32 %32, 1
  %34 = or i32 %33, %32
  %35 = icmp sgt i32 %34, -1
  br i1 %35, label %37, label %36, !prof !14

36:                                               ; preds = %31
  tail call void @refcount_warn_saturate(ptr noundef %16, i32 noundef 0) #21
  br label %37

37:                                               ; preds = %36, %31
  %38 = icmp eq i32 %32, 0
  %39 = load ptr, ptr %6, align 4
  br i1 %38, label %48, label %40

40:                                               ; preds = %37
  %41 = icmp eq ptr %39, null
  br i1 %41, label %43, label %42

42:                                               ; preds = %40
  tail call void %39(ptr noundef %0) #21
  br label %47

43:                                               ; preds = %40
  %44 = load ptr, ptr %12, align 4
  %45 = icmp eq ptr %44, null
  br i1 %45, label %47, label %46, !prof !14

46:                                               ; preds = %43
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/skbuff.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2859, 0\0A.popsection", ""() #21, !srcloc !25
  unreachable

47:                                               ; preds = %43, %42
  store ptr @sock_efree, ptr %6, align 4
  store ptr %13, ptr %12, align 4
  br label %58

48:                                               ; preds = %37, %11, %5
  %49 = phi ptr [ %7, %5 ], [ %7, %11 ], [ %39, %37 ]
  %50 = icmp eq ptr %49, null
  br i1 %50, label %53, label %51

51:                                               ; preds = %48
  tail call void %49(ptr noundef %0) #21
  store ptr null, ptr %6, align 4
  %52 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 1
  store ptr null, ptr %52, align 4
  br label %58

53:                                               ; preds = %48
  %54 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 1
  %55 = load ptr, ptr %54, align 4
  %56 = icmp eq ptr %55, null
  br i1 %56, label %58, label %57, !prof !14

57:                                               ; preds = %53
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/skbuff.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2859, 0\0A.popsection", ""() #21, !srcloc !25
  unreachable

58:                                               ; preds = %53, %51, %47, %1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @sock_rfree(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 1
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 18
  %5 = load i32, ptr %4, align 8
  %6 = getelementptr inbounds %struct.sock, ptr %3, i32 0, i32 9
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %6) #21, !srcloc !11
  %7 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %6, ptr %6, i32 %5, ptr elementtype(i32) %6) #21, !srcloc !13
  %8 = getelementptr inbounds %struct.sock_common, ptr %3, i32 0, i32 8
  %9 = load ptr, ptr %8, align 8
  %10 = getelementptr inbounds %struct.proto, ptr %9, i32 0, i32 30
  %11 = load ptr, ptr %10, align 4
  %12 = icmp eq ptr %11, null
  br i1 %12, label %59, label %13

13:                                               ; preds = %1
  %14 = getelementptr inbounds %struct.sock, ptr %3, i32 0, i32 11
  %15 = load i32, ptr %14, align 4
  %16 = add i32 %15, %5
  store i32 %16, ptr %14, align 4
  %17 = getelementptr inbounds %struct.sock, ptr %3, i32 0, i32 12
  %18 = load i32, ptr %17, align 8
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %27, label %20, !prof !14

20:                                               ; preds = %13
  %21 = getelementptr inbounds %struct.sock, ptr %3, i32 0, i32 22
  %22 = load i32, ptr %21, align 4
  %23 = load volatile i32, ptr %6, align 4
  %24 = add i32 %22, %23
  %25 = sub i32 %18, %24
  %26 = tail call i32 @llvm.smax.i32(i32 %25, i32 0) #21
  br label %27

27:                                               ; preds = %20, %13
  %28 = phi i32 [ %26, %20 ], [ 0, %13 ]
  %29 = sub i32 %16, %28
  %30 = icmp sgt i32 %29, 2097151
  br i1 %30, label %31, label %59, !prof !10

31:                                               ; preds = %27
  %32 = add i32 %16, -1048576
  store i32 %32, ptr %14, align 4
  %33 = load ptr, ptr %10, align 4
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %33) #21, !srcloc !11
  %34 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %33, ptr %33, i32 256, ptr elementtype(i32) %33) #21, !srcloc !13
  %35 = load ptr, ptr %8, align 8
  %36 = getelementptr inbounds %struct.proto, ptr %35, i32 0, i32 32
  %37 = load ptr, ptr %36, align 4
  %38 = icmp eq ptr %37, null
  br i1 %38, label %59, label %39

39:                                               ; preds = %31
  %40 = load i32, ptr %37, align 4
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %59, label %42

42:                                               ; preds = %39
  %43 = getelementptr inbounds %struct.proto, ptr %35, i32 0, i32 30
  %44 = load ptr, ptr %43, align 4
  %45 = load volatile i32, ptr %44, align 4
  %46 = getelementptr inbounds %struct.proto, ptr %35, i32 0, i32 33
  %47 = load ptr, ptr %46, align 4
  %48 = load i32, ptr %47, align 4
  %49 = icmp slt i32 %45, %48
  br i1 %49, label %50, label %59

50:                                               ; preds = %42
  %51 = getelementptr inbounds %struct.proto, ptr %35, i32 0, i32 29
  %52 = load ptr, ptr %51, align 4
  %53 = icmp eq ptr %52, null
  br i1 %53, label %55, label %54

54:                                               ; preds = %50
  tail call void %52(ptr noundef %3) #21
  br label %59

55:                                               ; preds = %50
  %56 = load volatile i32, ptr %37, align 4
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %59, label %58

58:                                               ; preds = %55
  store volatile i32 0, ptr %37, align 4
  br label %59

59:                                               ; preds = %58, %55, %54, %42, %39, %31, %27, %1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @sock_efree(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 1
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.sock_common, ptr %3, i32 0, i32 19
  tail call void asm sideeffect "dmb ish", "~{memory}"() #21, !srcloc !33
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %4) #21, !srcloc !11
  %5 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %4, ptr %4, i32 1, ptr elementtype(i32) %4) #21, !srcloc !34
  %6 = extractvalue { i32, i32, i32 } %5, 0
  %7 = icmp eq i32 %6, 1
  br i1 %7, label %11, label %8

8:                                                ; preds = %1
  %9 = icmp sgt i32 %6, 0
  br i1 %9, label %20, label %10, !prof !14

10:                                               ; preds = %8
  tail call void @refcount_warn_saturate(ptr noundef %4, i32 noundef 3) #21
  br label %20

11:                                               ; preds = %1
  tail call void asm sideeffect "dmb ish", "~{memory}"() #21, !srcloc !35
  %12 = getelementptr inbounds %struct.sock, ptr %3, i32 0, i32 23
  tail call void asm sideeffect "dmb ish", "~{memory}"() #21, !srcloc !33
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %12) #21, !srcloc !11
  %13 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %12, ptr %12, i32 1, ptr elementtype(i32) %12) #21, !srcloc !34
  %14 = extractvalue { i32, i32, i32 } %13, 0
  %15 = icmp eq i32 %14, 1
  br i1 %15, label %19, label %16

16:                                               ; preds = %11
  %17 = icmp sgt i32 %14, 0
  br i1 %17, label %20, label %18, !prof !14

18:                                               ; preds = %16
  tail call void @refcount_warn_saturate(ptr noundef %12, i32 noundef 3) #21
  br label %20

19:                                               ; preds = %11
  tail call void asm sideeffect "dmb ish", "~{memory}"() #21, !srcloc !35
  tail call fastcc void @__sk_free(ptr noundef %3) #21
  br label %20

20:                                               ; preds = %19, %18, %16, %10, %8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @sock_pfree(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 1
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.sock_common, ptr %3, i32 0, i32 4
  %5 = load volatile i8, ptr %4, align 2
  %6 = zext i8 %5 to i32
  %7 = shl nuw i32 1, %6
  %8 = and i32 %7, -4161
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %15, label %10

10:                                               ; preds = %1
  %11 = getelementptr inbounds %struct.sock_common, ptr %3, i32 0, i32 13
  %12 = load volatile i32, ptr %11, align 4
  %13 = and i32 %12, 8388608
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %10, %1
  tail call void @sock_gen_put(ptr noundef %3) #21
  br label %16

16:                                               ; preds = %15, %10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @sock_gen_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @sock_i_uid(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 50
  tail call void @_raw_read_lock_bh(ptr noundef %2) #21
  %3 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 71
  %4 = load ptr, ptr %3, align 8
  %5 = icmp eq ptr %4, null
  br i1 %5, label %9, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.socket_alloc, ptr %4, i32 0, i32 1, i32 2
  %8 = load i32, ptr %7, align 4
  br label %9

9:                                                ; preds = %6, %1
  %10 = phi i32 [ %8, %6 ], [ 0, %1 ]
  tail call void @_raw_read_unlock_bh(ptr noundef %2) #21
  ret i32 %10
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_read_lock_bh(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_read_unlock_bh(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @sock_i_ino(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 50
  tail call void @_raw_read_lock_bh(ptr noundef %2) #21
  %3 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 71
  %4 = load ptr, ptr %3, align 8
  %5 = icmp eq ptr %4, null
  br i1 %5, label %9, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.socket_alloc, ptr %4, i32 0, i32 1, i32 10
  %8 = load i32, ptr %7, align 4
  br label %9

9:                                                ; preds = %6, %1
  %10 = phi i32 [ %8, %6 ], [ 0, %1 ]
  tail call void @_raw_read_unlock_bh(ptr noundef %2) #21
  ret i32 %10
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @sock_wmalloc(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) #0 {
  %5 = icmp eq i32 %2, 0
  br i1 %5, label %6, label %12

6:                                                ; preds = %4
  %7 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 23
  %8 = load volatile i32, ptr %7, align 4
  %9 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 21
  %10 = load volatile i32, ptr %9, align 8
  %11 = icmp ult i32 %8, %10
  br i1 %11, label %12, label %16

12:                                               ; preds = %6, %4
  %13 = tail call ptr @__alloc_skb(i32 noundef %1, i32 noundef %3, i32 noundef 0, i32 noundef -1) #21
  %14 = icmp eq ptr %13, null
  br i1 %14, label %16, label %15

15:                                               ; preds = %12
  tail call void @skb_set_owner_w(ptr noundef nonnull %13, ptr noundef %0)
  br label %16

16:                                               ; preds = %15, %12, %6
  %17 = phi ptr [ %13, %15 ], [ null, %6 ], [ null, %12 ]
  ret ptr %17
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @sock_omalloc(ptr noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 20
  %5 = load volatile i32, ptr %4, align 4
  %6 = add i32 %1, 448
  %7 = add i32 %6, %5
  %8 = load i32, ptr @sysctl_optmem_max, align 4
  %9 = icmp ugt i32 %7, %8
  br i1 %9, label %19, label %10

10:                                               ; preds = %3
  %11 = tail call ptr @__alloc_skb(i32 noundef %1, i32 noundef %2, i32 noundef 0, i32 noundef -1) #21
  %12 = icmp eq ptr %11, null
  br i1 %12, label %19, label %13

13:                                               ; preds = %10
  %14 = getelementptr inbounds %struct.sk_buff, ptr %11, i32 0, i32 18
  %15 = load i32, ptr %14, align 8
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %4) #21, !srcloc !11
  %16 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %4, ptr %4, i32 %15, ptr elementtype(i32) %4) #21, !srcloc !12
  %17 = getelementptr inbounds %struct.sk_buff, ptr %11, i32 0, i32 1
  store ptr %0, ptr %17, align 4
  %18 = getelementptr inbounds %struct.sk_buff, ptr %11, i32 0, i32 4, i32 0, i32 1
  store ptr @sock_ofree, ptr %18, align 4
  br label %19

19:                                               ; preds = %13, %10, %3
  %20 = phi ptr [ %11, %13 ], [ null, %3 ], [ null, %10 ]
  ret ptr %20
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @sock_ofree(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 1
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 18
  %5 = load i32, ptr %4, align 8
  %6 = getelementptr inbounds %struct.sock, ptr %3, i32 0, i32 20
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %6) #21, !srcloc !11
  %7 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %6, ptr %6, i32 %5, ptr elementtype(i32) %6) #21, !srcloc !13
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @sock_kmalloc(ptr noundef %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = load i32, ptr @sysctl_optmem_max, align 4
  %5 = icmp ult i32 %4, %1
  br i1 %5, label %17, label %6

6:                                                ; preds = %3
  %7 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 20
  %8 = load volatile i32, ptr %7, align 4
  %9 = add i32 %8, %1
  %10 = icmp slt i32 %9, %4
  br i1 %10, label %11, label %17

11:                                               ; preds = %6
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %7) #21, !srcloc !11
  %12 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %7, ptr %7, i32 %1, ptr elementtype(i32) %7) #21, !srcloc !12
  %13 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %1, i32 noundef %2) #24
  %14 = icmp eq ptr %13, null
  br i1 %14, label %15, label %17

15:                                               ; preds = %11
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %7) #21, !srcloc !11
  %16 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %7, ptr %7, i32 %1, ptr elementtype(i32) %7) #21, !srcloc !13
  br label %17

17:                                               ; preds = %15, %11, %6, %3
  %18 = phi ptr [ null, %15 ], [ null, %6 ], [ null, %3 ], [ %13, %11 ]
  ret ptr %18
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @sock_kfree_s(ptr noundef %0, ptr noundef %1, i32 noundef %2) #0 {
  %4 = icmp eq ptr %1, null
  %5 = load i1, ptr @__sock_kfree_s.__already_done, align 1
  %6 = xor i1 %5, true
  %7 = select i1 %4, i1 %6, i1 false
  br i1 %7, label %8, label %9, !prof !10

8:                                                ; preds = %3
  store i1 true, ptr @__sock_kfree_s.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 2503, i32 noundef 9, ptr noundef null) #21
  br label %9

9:                                                ; preds = %8, %3
  br i1 %4, label %13, label %10

10:                                               ; preds = %9
  tail call void @kfree(ptr noundef nonnull %1) #21
  %11 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 20
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %11) #21, !srcloc !11
  %12 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %11, ptr %11, i32 %2, ptr elementtype(i32) %11) #21, !srcloc !13
  br label %13

13:                                               ; preds = %10, %9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @sock_kzfree_s(ptr noundef %0, ptr noundef %1, i32 noundef %2) #0 {
  %4 = icmp eq ptr %1, null
  %5 = load i1, ptr @__sock_kfree_s.__already_done, align 1
  %6 = xor i1 %5, true
  %7 = select i1 %4, i1 %6, i1 false
  br i1 %7, label %8, label %9, !prof !10

8:                                                ; preds = %3
  store i1 true, ptr @__sock_kfree_s.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 2503, i32 noundef 9, ptr noundef null) #21
  br label %9

9:                                                ; preds = %8, %3
  br i1 %4, label %13, label %10

10:                                               ; preds = %9
  tail call void @kfree_sensitive(ptr noundef nonnull %1) #21
  %11 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 20
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %11) #21, !srcloc !11
  %12 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %11, ptr %11, i32 %2, ptr elementtype(i32) %11) #21, !srcloc !13
  br label %13

13:                                               ; preds = %10, %9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @sock_alloc_send_pskb(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4, i32 noundef %5) #0 {
  %7 = alloca %struct.wait_queue_entry, align 4
  %8 = icmp eq i32 %3, 0
  br i1 %8, label %9, label %12

9:                                                ; preds = %6
  %10 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 31
  %11 = load i32, ptr %10, align 4
  br label %12

12:                                               ; preds = %9, %6
  %13 = phi i32 [ %11, %9 ], [ 0, %6 ]
  %14 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 51
  %15 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 66
  %16 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 23
  %17 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 21
  %18 = getelementptr inbounds %struct.sock_common, ptr %0, i32 0, i32 13
  %19 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 17
  %20 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 71
  %21 = getelementptr inbounds %struct.wait_queue_entry, ptr %7, i32 0, i32 1
  %22 = getelementptr inbounds %struct.wait_queue_entry, ptr %7, i32 0, i32 2
  %23 = getelementptr inbounds %struct.wait_queue_entry, ptr %7, i32 0, i32 3
  %24 = getelementptr inbounds %struct.wait_queue_entry, ptr %7, i32 0, i32 3, i32 1
  br label %25

25:                                               ; preds = %96, %12
  %26 = phi i32 [ %13, %12 ], [ %97, %96 ]
  %27 = load i32, ptr %14, align 4
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %33, label %29, !prof !14

29:                                               ; preds = %25
  call void asm sideeffect "dmb ish", "~{memory}"() #21, !srcloc !51
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %14) #21, !srcloc !11
  %30 = call { i32, i32 } asm sideeffect "@\09__xchg4\0A1:\09ldrex\09$0, [$3]\0A\09strex\09$1, $2, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,r,r,~{memory},~{cc}"(i32 0, ptr %14) #21, !srcloc !39
  %31 = extractvalue { i32, i32 } %30, 0
  call void asm sideeffect "dmb ish", "~{memory}"() #21, !srcloc !52
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %33, label %108

33:                                               ; preds = %29, %25
  %34 = load i8, ptr %15, align 2
  %35 = and i8 %34, 2
  %36 = icmp eq i8 %35, 0
  br i1 %36, label %37, label %111

37:                                               ; preds = %33
  %38 = load volatile i32, ptr %16, align 4
  %39 = add i32 %38, -1
  %40 = load volatile i32, ptr %17, align 8
  %41 = icmp slt i32 %39, %40
  br i1 %41, label %99, label %42

42:                                               ; preds = %37
  %43 = load volatile i32, ptr %18, align 4
  %44 = and i32 %43, 65536
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %49, label %46

46:                                               ; preds = %42
  %47 = load ptr, ptr %19, align 4
  %48 = getelementptr inbounds %struct.socket_wq, ptr %47, i32 0, i32 2
  call void @_set_bit(i32 noundef 0, ptr noundef %48) #21
  br label %49

49:                                               ; preds = %46, %42
  %50 = load ptr, ptr %20, align 8
  %51 = getelementptr inbounds %struct.socket, ptr %50, i32 0, i32 2
  call void @_set_bit(i32 noundef 2, ptr noundef %51) #21
  %52 = icmp eq i32 %26, 0
  br i1 %52, label %111, label %53

53:                                               ; preds = %49
  %54 = tail call ptr @llvm.thread.pointer() #21
  %55 = load volatile i32, ptr %54, align 4
  %56 = and i32 %55, 256
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %58, label %105, !prof !14

58:                                               ; preds = %53
  %59 = load volatile i32, ptr %54, align 4
  %60 = and i32 %59, 1
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %62, label %105

62:                                               ; preds = %58
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %7) #21
  store i32 0, ptr %7, align 4
  store ptr %54, ptr %21, align 4
  store ptr @autoremove_wake_function, ptr %22, align 4
  store ptr %23, ptr %23, align 4
  store ptr %23, ptr %24, align 4
  %63 = load volatile i32, ptr %18, align 4
  %64 = and i32 %63, 65536
  %65 = icmp eq i32 %64, 0
  br i1 %65, label %69, label %66

66:                                               ; preds = %62
  %67 = load ptr, ptr %19, align 4
  %68 = getelementptr inbounds %struct.socket_wq, ptr %67, i32 0, i32 2
  call void @_clear_bit(i32 noundef 0, ptr noundef %68) #21
  br label %69

69:                                               ; preds = %66, %62
  br label %70

70:                                               ; preds = %93, %69
  %71 = phi i32 [ %94, %93 ], [ %26, %69 ]
  %72 = load volatile i32, ptr %54, align 4
  %73 = and i32 %72, 256
  %74 = icmp eq i32 %73, 0
  br i1 %74, label %75, label %96, !prof !14

75:                                               ; preds = %70
  %76 = load volatile i32, ptr %54, align 4
  %77 = and i32 %76, 1
  %78 = icmp eq i32 %77, 0
  br i1 %78, label %79, label %96

79:                                               ; preds = %75
  %80 = load ptr, ptr %20, align 8
  %81 = getelementptr inbounds %struct.socket, ptr %80, i32 0, i32 2
  call void @_set_bit(i32 noundef 2, ptr noundef %81) #21
  %82 = load volatile ptr, ptr %19, align 4
  call void @prepare_to_wait(ptr noundef %82, ptr noundef nonnull %7, i32 noundef 1) #21
  %83 = load volatile i32, ptr %16, align 4
  %84 = load volatile i32, ptr %17, align 8
  %85 = icmp ult i32 %83, %84
  br i1 %85, label %96, label %86

86:                                               ; preds = %79
  %87 = load i8, ptr %15, align 2
  %88 = and i8 %87, 2
  %89 = icmp eq i8 %88, 0
  br i1 %89, label %90, label %96

90:                                               ; preds = %86
  %91 = load i32, ptr %14, align 4
  %92 = icmp eq i32 %91, 0
  br i1 %92, label %93, label %96

93:                                               ; preds = %90
  %94 = call i32 @schedule_timeout(i32 noundef %71) #21
  %95 = icmp eq i32 %94, 0
  br i1 %95, label %96, label %70

96:                                               ; preds = %93, %90, %86, %79, %75, %70
  %97 = phi i32 [ %71, %70 ], [ %71, %90 ], [ %71, %86 ], [ %71, %79 ], [ %71, %75 ], [ 0, %93 ]
  %98 = load volatile ptr, ptr %19, align 4
  call void @finish_wait(ptr noundef %98, ptr noundef nonnull %7) #21
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %7) #21
  br label %25

99:                                               ; preds = %37
  %100 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 41
  %101 = load i32, ptr %100, align 8
  %102 = call ptr @alloc_skb_with_frags(i32 noundef %1, i32 noundef %2, i32 noundef %5, ptr noundef %4, i32 noundef %101) #21
  %103 = icmp eq ptr %102, null
  br i1 %103, label %113, label %104

104:                                              ; preds = %99
  call void @skb_set_owner_w(ptr noundef nonnull %102, ptr noundef %0)
  br label %113

105:                                              ; preds = %58, %53
  %106 = icmp eq i32 %26, 2147483647
  %107 = select i1 %106, i32 -512, i32 -4
  br label %111

108:                                              ; preds = %29
  %109 = extractvalue { i32, i32 } %30, 0
  %110 = sub i32 0, %109
  br label %111

111:                                              ; preds = %108, %105, %49, %33
  %112 = phi i32 [ %107, %105 ], [ %110, %108 ], [ -32, %33 ], [ -11, %49 ]
  store i32 %112, ptr %4, align 4
  br label %113

113:                                              ; preds = %111, %104, %99
  %114 = phi ptr [ null, %111 ], [ %102, %104 ], [ null, %99 ]
  ret ptr %114
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @alloc_skb_with_frags(i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @sock_alloc_send_skb(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef %3) #0 {
  %5 = tail call ptr @sock_alloc_send_pskb(ptr noundef %0, i32 noundef %1, i32 noundef 0, i32 noundef %2, ptr noundef %3, i32 noundef 0)
  ret ptr %5
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__sock_cmsg_send(ptr noundef %0, ptr nocapture readnone %1, ptr nocapture noundef readonly %2, ptr nocapture noundef %3) #0 {
  %5 = getelementptr inbounds %struct.cmsghdr, ptr %2, i32 0, i32 2
  %6 = load i32, ptr %5, align 4
  switch i32 %6, label %43 [
    i32 36, label %7
    i32 37, label %17
    i32 61, label %31
    i32 1, label %42
    i32 2, label %42
  ]

7:                                                ; preds = %4
  %8 = load ptr, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 11), align 4
  %9 = tail call zeroext i1 @ns_capable(ptr noundef %8, i32 noundef 12) #21
  br i1 %9, label %10, label %43

10:                                               ; preds = %7
  %11 = load i32, ptr %2, align 4
  %12 = icmp eq i32 %11, 16
  br i1 %12, label %13, label %43

13:                                               ; preds = %10
  %14 = getelementptr i8, ptr %2, i32 12
  %15 = load i32, ptr %14, align 4
  %16 = getelementptr inbounds %struct.sockcm_cookie, ptr %3, i32 0, i32 1
  store i32 %15, ptr %16, align 8
  br label %42

17:                                               ; preds = %4
  %18 = load i32, ptr %2, align 4
  %19 = icmp eq i32 %18, 16
  br i1 %19, label %20, label %43

20:                                               ; preds = %17
  %21 = getelementptr i8, ptr %2, i32 12
  %22 = load i32, ptr %21, align 4
  %23 = and i32 %22, -772
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %43

25:                                               ; preds = %20
  %26 = getelementptr inbounds %struct.sockcm_cookie, ptr %3, i32 0, i32 2
  %27 = load i16, ptr %26, align 4
  %28 = and i16 %27, -772
  %29 = trunc i32 %22 to i16
  %30 = or i16 %28, %29
  store i16 %30, ptr %26, align 4
  br label %42

31:                                               ; preds = %4
  %32 = getelementptr inbounds %struct.sock_common, ptr %0, i32 0, i32 13
  %33 = load volatile i32, ptr %32, align 4
  %34 = and i32 %33, 16777216
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %43, label %36

36:                                               ; preds = %31
  %37 = load i32, ptr %2, align 4
  %38 = icmp eq i32 %37, 20
  br i1 %38, label %39, label %43

39:                                               ; preds = %36
  %40 = getelementptr i8, ptr %2, i32 12
  %41 = load i64, ptr %40, align 1
  store i64 %41, ptr %3, align 8
  br label %42

42:                                               ; preds = %39, %25, %13, %4, %4
  br label %43

43:                                               ; preds = %42, %36, %31, %20, %17, %10, %7, %4
  %44 = phi i32 [ 0, %42 ], [ -1, %7 ], [ -22, %10 ], [ -22, %17 ], [ -22, %20 ], [ -22, %31 ], [ -22, %36 ], [ -22, %4 ]
  ret i32 %44
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @sock_cmsg_send(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef %2) #0 {
  %4 = getelementptr inbounds %struct.msghdr, ptr %1, i32 0, i32 5
  %5 = load i32, ptr %4, align 8
  %6 = icmp ugt i32 %5, 11
  br i1 %6, label %7, label %79

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.msghdr, ptr %1, i32 0, i32 3
  %9 = load ptr, ptr %8, align 8
  %10 = icmp eq ptr %9, null
  br i1 %10, label %79, label %11

11:                                               ; preds = %7
  %12 = getelementptr inbounds %struct.msghdr, ptr %1, i32 0, i32 3
  %13 = getelementptr inbounds %struct.sock_common, ptr %0, i32 0, i32 13
  %14 = getelementptr inbounds %struct.sockcm_cookie, ptr %2, i32 0, i32 2
  %15 = getelementptr inbounds %struct.sockcm_cookie, ptr %2, i32 0, i32 1
  br label %16

16:                                               ; preds = %65, %11
  %17 = phi i32 [ %5, %11 ], [ %67, %65 ]
  %18 = phi ptr [ %9, %11 ], [ %71, %65 ]
  %19 = load i32, ptr %18, align 4
  %20 = icmp ugt i32 %19, 11
  br i1 %20, label %21, label %79

21:                                               ; preds = %16
  %22 = load ptr, ptr %12, align 8
  %23 = ptrtoint ptr %18 to i32
  %24 = ptrtoint ptr %22 to i32
  %25 = sub i32 %17, %23
  %26 = add i32 %25, %24
  %27 = icmp ugt i32 %19, %26
  br i1 %27, label %79, label %28

28:                                               ; preds = %21
  %29 = getelementptr inbounds %struct.cmsghdr, ptr %18, i32 0, i32 1
  %30 = load i32, ptr %29, align 4
  %31 = icmp eq i32 %30, 1
  br i1 %31, label %32, label %65

32:                                               ; preds = %28
  %33 = getelementptr inbounds %struct.cmsghdr, ptr %18, i32 0, i32 2
  %34 = load i32, ptr %33, align 4
  switch i32 %34, label %79 [
    i32 36, label %35
    i32 37, label %44
    i32 61, label %56
    i32 1, label %65
    i32 2, label %65
  ]

35:                                               ; preds = %32
  %36 = load ptr, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 11), align 4
  %37 = tail call zeroext i1 @ns_capable(ptr noundef %36, i32 noundef 12) #21
  br i1 %37, label %38, label %79

38:                                               ; preds = %35
  %39 = load i32, ptr %18, align 4
  %40 = icmp eq i32 %39, 16
  br i1 %40, label %41, label %79

41:                                               ; preds = %38
  %42 = getelementptr i8, ptr %18, i32 12
  %43 = load i32, ptr %42, align 4
  store i32 %43, ptr %15, align 8
  br label %65

44:                                               ; preds = %32
  %45 = icmp eq i32 %19, 16
  br i1 %45, label %46, label %79

46:                                               ; preds = %44
  %47 = getelementptr i8, ptr %18, i32 12
  %48 = load i32, ptr %47, align 4
  %49 = and i32 %48, -772
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %51, label %79

51:                                               ; preds = %46
  %52 = load i16, ptr %14, align 4
  %53 = and i16 %52, -772
  %54 = trunc i32 %48 to i16
  %55 = or i16 %53, %54
  store i16 %55, ptr %14, align 4
  br label %65

56:                                               ; preds = %32
  %57 = load volatile i32, ptr %13, align 4
  %58 = and i32 %57, 16777216
  %59 = icmp ne i32 %58, 0
  %60 = icmp eq i32 %19, 20
  %61 = select i1 %59, i1 %60, i1 false
  br i1 %61, label %62, label %79

62:                                               ; preds = %56
  %63 = getelementptr i8, ptr %18, i32 12
  %64 = load i64, ptr %63, align 1
  store i64 %64, ptr %2, align 8
  br label %65

65:                                               ; preds = %62, %51, %41, %32, %32, %28
  %66 = load ptr, ptr %12, align 8
  %67 = load i32, ptr %4, align 8
  %68 = load i32, ptr %18, align 4
  %69 = add i32 %68, 3
  %70 = and i32 %69, -4
  %71 = getelementptr i8, ptr %18, i32 %70
  %72 = getelementptr %struct.cmsghdr, ptr %71, i32 1
  %73 = ptrtoint ptr %72 to i32
  %74 = ptrtoint ptr %66 to i32
  %75 = sub i32 %73, %74
  %76 = icmp ugt i32 %75, %67
  %77 = icmp eq ptr %71, null
  %78 = select i1 %76, i1 true, i1 %77
  br i1 %78, label %79, label %16

79:                                               ; preds = %65, %56, %46, %44, %38, %35, %32, %21, %16, %7, %3
  %80 = phi i32 [ 0, %7 ], [ 0, %3 ], [ -22, %32 ], [ -22, %56 ], [ -22, %46 ], [ -22, %44 ], [ -22, %38 ], [ -1, %35 ], [ 0, %65 ], [ -22, %16 ], [ -22, %21 ]
  ret i32 %80
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local zeroext i1 @skb_page_frag_refill(i32 noundef %0, ptr nocapture noundef %1, i32 noundef %2) #0 {
  %4 = load ptr, ptr %1, align 4
  %5 = icmp eq ptr %4, null
  br i1 %5, label %37, label %6

6:                                                ; preds = %3
  %7 = getelementptr inbounds %struct.page, ptr %4, i32 0, i32 3
  %8 = load volatile i32, ptr %7, align 4
  %9 = icmp eq i32 %8, 1
  %10 = getelementptr inbounds %struct.page_frag, ptr %1, i32 0, i32 1
  br i1 %9, label %11, label %12

11:                                               ; preds = %6
  store i16 0, ptr %10, align 4
  br label %53

12:                                               ; preds = %6
  %13 = load i16, ptr %10, align 4
  %14 = zext i16 %13 to i32
  %15 = add i32 %14, %0
  %16 = getelementptr inbounds %struct.page_frag, ptr %1, i32 0, i32 2
  %17 = load i16, ptr %16, align 2
  %18 = zext i16 %17 to i32
  %19 = icmp ugt i32 %15, %18
  br i1 %19, label %20, label %53

20:                                               ; preds = %12
  %21 = getelementptr inbounds %struct.page, ptr %4, i32 0, i32 1
  %22 = load volatile i32, ptr %21, align 4
  %23 = and i32 %22, 1
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %27, label %25, !prof !14

25:                                               ; preds = %20
  %26 = add i32 %22, -1
  br label %29

27:                                               ; preds = %20
  %28 = ptrtoint ptr %4 to i32
  br label %29

29:                                               ; preds = %27, %25
  %30 = phi i32 [ %26, %25 ], [ %28, %27 ]
  %31 = inttoptr i32 %30 to ptr
  %32 = getelementptr inbounds %struct.page, ptr %31, i32 0, i32 3
  tail call void asm sideeffect "dmb ish", "~{memory}"() #21, !srcloc !60
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %32) #21, !srcloc !11
  %33 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %32, ptr %32, i32 1, ptr elementtype(i32) %32) #21, !srcloc !61
  %34 = extractvalue { i32, i32 } %33, 0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #21, !srcloc !62
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %29
  tail call void @__put_page(ptr noundef %31) #21
  br label %37

37:                                               ; preds = %36, %29, %3
  %38 = getelementptr inbounds %struct.page_frag, ptr %1, i32 0, i32 1
  store i16 0, ptr %38, align 4
  %39 = load volatile i32, ptr @net_high_order_alloc_disable_key, align 4
  %40 = icmp sgt i32 %39, 0
  br i1 %40, label %48, label %41, !prof !10

41:                                               ; preds = %37
  %42 = and i32 %2, -336897
  %43 = or i32 %42, 335872
  %44 = tail call ptr @__alloc_pages(i32 noundef %43, i32 noundef 3, i32 noundef 0, ptr noundef null) #21
  store ptr %44, ptr %1, align 4
  %45 = icmp eq ptr %44, null
  br i1 %45, label %48, label %46, !prof !10

46:                                               ; preds = %41
  %47 = getelementptr inbounds %struct.page_frag, ptr %1, i32 0, i32 2
  store i16 -32768, ptr %47, align 2
  br label %53

48:                                               ; preds = %41, %37
  %49 = tail call ptr @__alloc_pages(i32 noundef %2, i32 noundef 0, i32 noundef 0, ptr noundef null) #21
  store ptr %49, ptr %1, align 4
  %50 = icmp eq ptr %49, null
  br i1 %50, label %53, label %51, !prof !10

51:                                               ; preds = %48
  %52 = getelementptr inbounds %struct.page_frag, ptr %1, i32 0, i32 2
  store i16 4096, ptr %52, align 2
  br label %53

53:                                               ; preds = %51, %48, %46, %12, %11
  %54 = phi i1 [ true, %11 ], [ true, %51 ], [ true, %46 ], [ true, %12 ], [ false, %48 ]
  ret i1 %54
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local zeroext i1 @sk_page_frag_refill(ptr noundef %0, ptr nocapture noundef %1) #0 {
  %3 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 41
  %4 = load i32, ptr %3, align 8
  %5 = tail call zeroext i1 @skb_page_frag_refill(i32 noundef 32, ptr noundef %1, i32 noundef %4)
  br i1 %5, label %14, label %6, !prof !14

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.sock_common, ptr %0, i32 0, i32 8
  %8 = load ptr, ptr %7, align 8
  %9 = getelementptr inbounds %struct.proto, ptr %8, i32 0, i32 28
  %10 = load ptr, ptr %9, align 4
  %11 = icmp eq ptr %10, null
  br i1 %11, label %13, label %12

12:                                               ; preds = %6
  tail call void %10(ptr noundef %0) #21
  br label %13

13:                                               ; preds = %12, %6
  tail call fastcc void @sk_stream_moderate_sndbuf(ptr noundef %0)
  br label %14

14:                                               ; preds = %13, %2
  ret i1 %5
}

; Function Attrs: argmemonly inlinehint nofree nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @sk_stream_moderate_sndbuf(ptr noundef %0) unnamed_addr #8 {
  %2 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 43
  %3 = load i8, ptr %2, align 8
  %4 = and i8 %3, 16
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %6, label %26

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 21
  %8 = load i32, ptr %7, align 8
  %9 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 22
  %10 = load i32, ptr %9, align 4
  %11 = ashr i32 %10, 1
  %12 = tail call i32 @llvm.smin.i32(i32 %8, i32 %11)
  %13 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 12
  %14 = load i32, ptr %13, align 8
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %22, label %16, !prof !14

16:                                               ; preds = %6
  %17 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 9
  %18 = load volatile i32, ptr %17, align 4
  %19 = add i32 %10, %18
  %20 = sub i32 %14, %19
  %21 = tail call i32 @llvm.smax.i32(i32 %20, i32 0) #21
  br label %22

22:                                               ; preds = %16, %6
  %23 = phi i32 [ %21, %16 ], [ 0, %6 ]
  %24 = tail call i32 @llvm.umax.i32(i32 %12, i32 %23)
  %25 = tail call i32 @llvm.umax.i32(i32 %24, i32 4480)
  store volatile i32 %25, ptr %7, align 8
  br label %26

26:                                               ; preds = %22, %1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @__lock_sock(ptr noundef %0) local_unnamed_addr #0 {
  %2 = alloca %struct.wait_queue_entry, align 4
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %2) #21
  %3 = getelementptr inbounds %struct.wait_queue_entry, ptr %2, i32 0, i32 1
  %4 = tail call ptr @llvm.thread.pointer() #21
  store i32 0, ptr %2, align 4
  store ptr %4, ptr %3, align 4
  %5 = getelementptr inbounds %struct.wait_queue_entry, ptr %2, i32 0, i32 2
  store ptr @autoremove_wake_function, ptr %5, align 4
  %6 = getelementptr inbounds %struct.wait_queue_entry, ptr %2, i32 0, i32 3
  store ptr %6, ptr %6, align 4
  %7 = getelementptr inbounds %struct.wait_queue_entry, ptr %2, i32 0, i32 3, i32 1
  store ptr %6, ptr %7, align 4
  %8 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 4
  %9 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 4, i32 2
  %10 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 4, i32 1
  br label %11

11:                                               ; preds = %11, %1
  %12 = call zeroext i1 @prepare_to_wait_exclusive(ptr noundef %9, ptr noundef nonnull %2, i32 noundef 2) #21
  call void @_raw_spin_unlock_bh(ptr noundef %8) #21
  call void @schedule() #21
  call void @_raw_spin_lock_bh(ptr noundef %8) #21
  %13 = load i32, ptr %10, align 4
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %11

15:                                               ; preds = %11
  call void @finish_wait(ptr noundef %9, ptr noundef nonnull %2) #21
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %2) #21
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @autoremove_wake_function(ptr noundef, i32 noundef, i32 noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @prepare_to_wait_exclusive(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @schedule() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @finish_wait(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @__release_sock(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 9, i32 2
  %3 = load ptr, ptr %2, align 8
  %4 = icmp eq ptr %3, null
  br i1 %4, label %58, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 9, i32 3
  %7 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 4
  %8 = getelementptr inbounds %struct.sock_common, ptr %0, i32 0, i32 13
  %9 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 79
  br label %10

10:                                               ; preds = %55, %5
  %11 = phi ptr [ %3, %5 ], [ %56, %55 ]
  store ptr null, ptr %6, align 4
  store ptr null, ptr %2, align 8
  tail call void @_raw_spin_unlock_bh(ptr noundef %7) #21
  br label %12

12:                                               ; preds = %52, %10
  %13 = phi ptr [ %11, %10 ], [ %14, %52 ]
  %14 = load ptr, ptr %13, align 8
  tail call void asm sideeffect "pld\09${0:a}", "r"(ptr %14) #21, !srcloc !68
  %15 = getelementptr inbounds %struct.sk_buff, ptr %13, i32 0, i32 4
  %16 = load i32, ptr %15, align 8
  %17 = and i32 %16, 1
  %18 = icmp ne i32 %17, 0
  %19 = icmp ugt i32 %16, 1
  %20 = and i1 %19, %18
  %21 = load i1, ptr @__release_sock.__already_done, align 1
  %22 = xor i1 %21, true
  %23 = select i1 %20, i1 %22, i1 false
  br i1 %23, label %24, label %25, !prof !10

24:                                               ; preds = %12
  store i1 true, ptr @__release_sock.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 2777, i32 noundef 9, ptr noundef null) #21
  br label %25

25:                                               ; preds = %24, %12
  store ptr null, ptr %13, align 8
  %26 = load volatile i32, ptr @memalloc_socks_key, align 4
  %27 = icmp slt i32 %26, 1
  br i1 %27, label %49, label %28

28:                                               ; preds = %25
  %29 = getelementptr inbounds %struct.sk_buff, ptr %13, i32 0, i32 11
  %30 = load i8, ptr %29, align 2
  %31 = and i8 %30, 64
  %32 = icmp eq i8 %31, 0
  br i1 %32, label %49, label %33

33:                                               ; preds = %28
  %34 = load volatile i32, ptr %8, align 4
  %35 = and i32 %34, 16384
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %37, label %38, !prof !10

37:                                               ; preds = %33
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22net/core/sock.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 325, 0\0A.popsection", ""() #21, !srcloc !15
  unreachable

38:                                               ; preds = %33
  %39 = tail call ptr @llvm.thread.pointer() #21
  %40 = getelementptr inbounds %struct.task_struct, ptr %39, i32 0, i32 4
  %41 = load i32, ptr %40, align 4
  %42 = and i32 %41, 2048
  %43 = or i32 %41, 2048
  store i32 %43, ptr %40, align 4
  %44 = load ptr, ptr %9, align 4
  %45 = tail call i32 %44(ptr noundef %0, ptr noundef nonnull %13) #21
  %46 = load i32, ptr %40, align 4
  %47 = and i32 %46, -2049
  %48 = or i32 %47, %42
  store i32 %48, ptr %40, align 4
  br label %52

49:                                               ; preds = %28, %25
  %50 = load ptr, ptr %9, align 4
  %51 = tail call i32 %50(ptr noundef %0, ptr noundef nonnull %13) #21
  br label %52

52:                                               ; preds = %49, %38
  %53 = tail call i32 @__cond_resched() #21
  %54 = icmp eq ptr %14, null
  br i1 %54, label %55, label %12

55:                                               ; preds = %52
  tail call void @_raw_spin_lock_bh(ptr noundef %7) #21
  %56 = load ptr, ptr %2, align 8
  %57 = icmp eq ptr %56, null
  br i1 %57, label %58, label %10

58:                                               ; preds = %55, %1
  %59 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 9, i32 1
  store i32 0, ptr %59, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @__sk_flush_backlog(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 4
  tail call void @_raw_spin_lock_bh(ptr noundef %2) #21
  tail call void @__release_sock(ptr noundef %0)
  tail call void @_raw_spin_unlock_bh(ptr noundef %2) #21
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @sk_wait_data(ptr noundef %0, ptr nocapture noundef %1, ptr noundef readnone %2) #0 {
  %4 = alloca %struct.wait_queue_entry, align 4
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %4) #21
  %5 = getelementptr inbounds %struct.wait_queue_entry, ptr %4, i32 0, i32 1
  %6 = tail call ptr @llvm.thread.pointer() #21
  store i32 0, ptr %4, align 4
  store ptr %6, ptr %5, align 4
  %7 = getelementptr inbounds %struct.wait_queue_entry, ptr %4, i32 0, i32 2
  store ptr @woken_wake_function, ptr %7, align 4
  %8 = getelementptr inbounds %struct.wait_queue_entry, ptr %4, i32 0, i32 3
  store ptr %8, ptr %8, align 4
  %9 = getelementptr inbounds %struct.wait_queue_entry, ptr %4, i32 0, i32 3, i32 1
  store ptr %8, ptr %9, align 4
  %10 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 17
  %11 = load volatile ptr, ptr %10, align 4
  call void @add_wait_queue(ptr noundef %11, ptr noundef nonnull %4) #21
  %12 = getelementptr inbounds %struct.sock_common, ptr %0, i32 0, i32 13
  %13 = load volatile i32, ptr %12, align 4
  %14 = and i32 %13, 65536
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %19, label %16

16:                                               ; preds = %3
  %17 = load ptr, ptr %10, align 4
  %18 = getelementptr inbounds %struct.socket_wq, ptr %17, i32 0, i32 2
  call void @_set_bit(i32 noundef 1, ptr noundef %18) #21
  br label %19

19:                                               ; preds = %16, %3
  %20 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 4
  call void @_raw_spin_lock_bh(ptr noundef %20) #21
  %21 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 9, i32 3
  %22 = load ptr, ptr %21, align 4
  %23 = icmp eq ptr %22, null
  br i1 %23, label %25, label %24

24:                                               ; preds = %19
  call void @__release_sock(ptr noundef %0) #21
  br label %25

25:                                               ; preds = %24, %19
  %26 = getelementptr inbounds %struct.sock_common, ptr %0, i32 0, i32 8
  %27 = load ptr, ptr %26, align 8
  %28 = getelementptr inbounds %struct.proto, ptr %27, i32 0, i32 19
  %29 = load ptr, ptr %28, align 4
  %30 = icmp eq ptr %29, null
  br i1 %30, label %32, label %31

31:                                               ; preds = %25
  call void %29(ptr noundef %0) #21
  br label %32

32:                                               ; preds = %31, %25
  %33 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 4, i32 1
  %34 = load i32, ptr %33, align 4
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %37, label %36

36:                                               ; preds = %32
  store i32 0, ptr %33, align 4
  br label %37

37:                                               ; preds = %36, %32
  %38 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 4, i32 2, i32 1
  %39 = load volatile ptr, ptr %38, align 4
  %40 = icmp eq ptr %39, %38
  br i1 %40, label %43, label %41

41:                                               ; preds = %37
  %42 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 4, i32 2
  call void @__wake_up(ptr noundef %42, i32 noundef 3, i32 noundef 1, ptr noundef null) #21
  br label %43

43:                                               ; preds = %41, %37
  call void @_raw_spin_unlock_bh(ptr noundef %20) #21
  %44 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 8
  %45 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 8, i32 0, i32 0, i32 1
  %46 = load volatile ptr, ptr %45, align 4
  %47 = icmp eq ptr %46, %44
  %48 = select i1 %47, ptr null, ptr %46
  %49 = icmp eq ptr %48, %2
  br i1 %49, label %50, label %53

50:                                               ; preds = %43
  %51 = load i32, ptr %1, align 4
  %52 = call i32 @wait_woken(ptr noundef nonnull %4, i32 noundef 1, i32 noundef %51) #21
  store i32 %52, ptr %1, align 4
  br label %53

53:                                               ; preds = %50, %43
  call void @lock_sock_nested(ptr noundef %0, i32 undef) #21
  %54 = load volatile ptr, ptr %45, align 4
  %55 = load volatile i32, ptr %12, align 4
  %56 = and i32 %55, 65536
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %61, label %58

58:                                               ; preds = %53
  %59 = load ptr, ptr %10, align 4
  %60 = getelementptr inbounds %struct.socket_wq, ptr %59, i32 0, i32 2
  call void @_clear_bit(i32 noundef 1, ptr noundef %60) #21
  br label %61

61:                                               ; preds = %58, %53
  %62 = icmp eq ptr %54, %44
  %63 = select i1 %62, ptr null, ptr %54
  %64 = icmp ne ptr %63, %2
  %65 = zext i1 %64 to i32
  %66 = load volatile ptr, ptr %10, align 4
  call void @remove_wait_queue(ptr noundef %66, ptr noundef nonnull %4) #21
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %4) #21
  ret i32 %65
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @woken_wake_function(ptr noundef, i32 noundef, i32 noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @add_wait_queue(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wait_woken(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @remove_wait_queue(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__sk_mem_raise_allocated(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) #0 {
  %5 = getelementptr inbounds %struct.sock_common, ptr %0, i32 0, i32 8
  %6 = load ptr, ptr %5, align 8
  %7 = getelementptr inbounds %struct.proto, ptr %6, i32 0, i32 30
  %8 = load ptr, ptr %7, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #21, !srcloc !69
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %8) #21, !srcloc !11
  %9 = tail call { i32, i32 } asm sideeffect "@ atomic_add_return\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %8, ptr %8, i32 %2, ptr elementtype(i32) %8) #21, !srcloc !70
  %10 = extractvalue { i32, i32 } %9, 0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #21, !srcloc !71
  %11 = load ptr, ptr %5, align 8
  %12 = getelementptr inbounds %struct.proto, ptr %11, i32 0, i32 33
  %13 = load ptr, ptr %12, align 4
  %14 = load i32, ptr %13, align 4
  %15 = icmp sgt i32 %10, %14
  br i1 %15, label %29, label %16

16:                                               ; preds = %4
  %17 = getelementptr inbounds %struct.proto, ptr %11, i32 0, i32 29
  %18 = load ptr, ptr %17, align 4
  %19 = icmp eq ptr %18, null
  br i1 %19, label %21, label %20

20:                                               ; preds = %16
  tail call void %18(ptr noundef %0) #21
  br label %176

21:                                               ; preds = %16
  %22 = getelementptr inbounds %struct.proto, ptr %11, i32 0, i32 32
  %23 = load ptr, ptr %22, align 4
  %24 = icmp eq ptr %23, null
  br i1 %24, label %176, label %25

25:                                               ; preds = %21
  %26 = load volatile i32, ptr %23, align 4
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %176, label %28

28:                                               ; preds = %25
  store volatile i32 0, ptr %23, align 4
  br label %176

29:                                               ; preds = %4
  %30 = getelementptr i32, ptr %13, i32 1
  %31 = load i32, ptr %30, align 4
  %32 = icmp sgt i32 %10, %31
  br i1 %32, label %33, label %41

33:                                               ; preds = %29
  %34 = getelementptr inbounds %struct.proto, ptr %11, i32 0, i32 28
  %35 = load ptr, ptr %34, align 4
  %36 = icmp eq ptr %35, null
  br i1 %36, label %41, label %37

37:                                               ; preds = %33
  tail call void %35(ptr noundef %0) #21
  %38 = load ptr, ptr %5, align 8
  %39 = getelementptr inbounds %struct.proto, ptr %38, i32 0, i32 33
  %40 = load ptr, ptr %39, align 4
  br label %41

41:                                               ; preds = %37, %33, %29
  %42 = phi ptr [ %40, %37 ], [ %13, %33 ], [ %13, %29 ]
  %43 = phi ptr [ %38, %37 ], [ %11, %33 ], [ %11, %29 ]
  %44 = getelementptr i32, ptr %42, i32 2
  %45 = load i32, ptr %44, align 4
  %46 = icmp sgt i32 %10, %45
  br i1 %46, label %114, label %47

47:                                               ; preds = %41
  %48 = icmp eq i32 %3, 1
  br i1 %48, label %49, label %64

49:                                               ; preds = %47
  %50 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 9
  %51 = load volatile i32, ptr %50, align 4
  %52 = getelementptr inbounds %struct.proto, ptr %6, i32 0, i32 37
  %53 = load i32, ptr %52, align 4
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %57, label %55

55:                                               ; preds = %49
  %56 = getelementptr i8, ptr @init_net, i32 %53
  br label %60

57:                                               ; preds = %49
  %58 = getelementptr inbounds %struct.proto, ptr %6, i32 0, i32 35
  %59 = load ptr, ptr %58, align 4
  br label %60

60:                                               ; preds = %57, %55
  %61 = phi ptr [ %56, %55 ], [ %59, %57 ]
  %62 = load i32, ptr %61, align 4
  %63 = icmp slt i32 %51, %62
  br i1 %63, label %176, label %87

64:                                               ; preds = %47
  %65 = getelementptr inbounds %struct.proto, ptr %6, i32 0, i32 36
  %66 = load i32, ptr %65, align 4
  %67 = icmp eq i32 %66, 0
  br i1 %67, label %70, label %68

68:                                               ; preds = %64
  %69 = getelementptr i8, ptr @init_net, i32 %66
  br label %73

70:                                               ; preds = %64
  %71 = getelementptr inbounds %struct.proto, ptr %6, i32 0, i32 34
  %72 = load ptr, ptr %71, align 4
  br label %73

73:                                               ; preds = %70, %68
  %74 = phi ptr [ %69, %68 ], [ %72, %70 ]
  %75 = load i32, ptr %74, align 4
  %76 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 45
  %77 = load i16, ptr %76, align 2
  %78 = icmp eq i16 %77, 1
  br i1 %78, label %79, label %83

79:                                               ; preds = %73
  %80 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 22
  %81 = load i32, ptr %80, align 4
  %82 = icmp slt i32 %81, %75
  br i1 %82, label %176, label %87

83:                                               ; preds = %73
  %84 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 23
  %85 = load volatile i32, ptr %84, align 4
  %86 = icmp ult i32 %85, %75
  br i1 %86, label %176, label %87

87:                                               ; preds = %83, %79, %60
  %88 = getelementptr inbounds %struct.proto, ptr %43, i32 0, i32 32
  %89 = load ptr, ptr %88, align 4
  %90 = icmp eq ptr %89, null
  br i1 %90, label %114, label %91

91:                                               ; preds = %87
  %92 = load i32, ptr %89, align 4
  %93 = icmp eq i32 %92, 0
  br i1 %93, label %176, label %94

94:                                               ; preds = %91
  %95 = getelementptr inbounds %struct.proto, ptr %43, i32 0, i32 31
  %96 = load ptr, ptr %95, align 4
  %97 = getelementptr inbounds %struct.percpu_counter, ptr %96, i32 0, i32 1
  %98 = load volatile i64, ptr %97, align 8
  %99 = tail call i64 @llvm.smax.i64(i64 %98, i64 0) #21
  %100 = sext i32 %45 to i64
  %101 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 22
  %102 = load i32, ptr %101, align 4
  %103 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 9
  %104 = load volatile i32, ptr %103, align 4
  %105 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 11
  %106 = load i32, ptr %105, align 4
  %107 = add i32 %102, 4095
  %108 = add i32 %107, %104
  %109 = add i32 %108, %106
  %110 = ashr i32 %109, 12
  %111 = sext i32 %110 to i64
  %112 = mul i64 %99, %111
  %113 = icmp ult i64 %112, %100
  br i1 %113, label %176, label %114

114:                                              ; preds = %94, %87, %41
  switch i32 %3, label %171 [
    i32 0, label %115
    i32 1, label %154
  ]

115:                                              ; preds = %114
  %116 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 45
  %117 = load i16, ptr %116, align 2
  %118 = icmp eq i16 %117, 1
  br i1 %118, label %119, label %154

119:                                              ; preds = %115
  %120 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 43
  %121 = load i8, ptr %120, align 8
  %122 = and i8 %121, 16
  %123 = icmp eq i8 %122, 0
  br i1 %123, label %129, label %124

124:                                              ; preds = %119
  %125 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 22
  %126 = load i32, ptr %125, align 4
  %127 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 21
  %128 = load i32, ptr %127, align 8
  br label %149

129:                                              ; preds = %119
  %130 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 21
  %131 = load i32, ptr %130, align 8
  %132 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 22
  %133 = load i32, ptr %132, align 4
  %134 = ashr i32 %133, 1
  %135 = tail call i32 @llvm.smin.i32(i32 %131, i32 %134) #21
  %136 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 12
  %137 = load i32, ptr %136, align 8
  %138 = icmp eq i32 %137, 0
  br i1 %138, label %145, label %139, !prof !14

139:                                              ; preds = %129
  %140 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 9
  %141 = load volatile i32, ptr %140, align 4
  %142 = add i32 %133, %141
  %143 = sub i32 %137, %142
  %144 = tail call i32 @llvm.smax.i32(i32 %143, i32 0) #21
  br label %145

145:                                              ; preds = %139, %129
  %146 = phi i32 [ %144, %139 ], [ 0, %129 ]
  %147 = tail call i32 @llvm.umax.i32(i32 %135, i32 %146) #21
  %148 = tail call i32 @llvm.umax.i32(i32 %147, i32 4480) #21
  store volatile i32 %148, ptr %130, align 8
  br label %149

149:                                              ; preds = %145, %124
  %150 = phi i32 [ %128, %124 ], [ %148, %145 ]
  %151 = phi i32 [ %126, %124 ], [ %133, %145 ]
  %152 = add i32 %151, %1
  %153 = icmp slt i32 %152, %150
  br i1 %153, label %154, label %176

154:                                              ; preds = %149, %115, %114
  %155 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_sock_exceed_buf_limit, i32 0, i32 1), align 4
  %156 = icmp sgt i32 %155, 0
  br i1 %156, label %157, label %171

157:                                              ; preds = %154
  %158 = tail call ptr @llvm.thread.pointer() #21
  %159 = getelementptr inbounds %struct.thread_info, ptr %158, i32 0, i32 2
  %160 = load i32, ptr %159, align 8
  %161 = lshr i32 %160, 5
  %162 = getelementptr i32, ptr @__cpu_online_mask, i32 %161
  %163 = load volatile i32, ptr %162, align 4
  %164 = and i32 %160, 31
  %165 = shl nuw i32 1, %164
  %166 = and i32 %165, %163
  %167 = icmp eq i32 %166, 0
  br i1 %167, label %171, label %168

168:                                              ; preds = %157
  tail call void asm sideeffect "", "~{memory}"() #21, !srcloc !72
  %169 = tail call i32 @__traceiter_sock_exceed_buf_limit(ptr noundef null, ptr noundef %0, ptr noundef %6, i32 noundef %10, i32 noundef %3) #21
  tail call void asm sideeffect "", "~{memory}"() #21, !srcloc !73
  %170 = load ptr, ptr %5, align 8
  br label %171

171:                                              ; preds = %168, %157, %154, %114
  %172 = phi ptr [ %170, %168 ], [ %43, %157 ], [ %43, %154 ], [ %43, %114 ]
  %173 = getelementptr inbounds %struct.proto, ptr %172, i32 0, i32 30
  %174 = load ptr, ptr %173, align 4
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %174) #21, !srcloc !11
  %175 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %174, ptr %174, i32 %2, ptr elementtype(i32) %174) #21, !srcloc !13
  br label %176

176:                                              ; preds = %171, %149, %94, %91, %83, %79, %60, %28, %25, %21, %20
  %177 = phi i32 [ 0, %171 ], [ 1, %94 ], [ 1, %60 ], [ 1, %83 ], [ 1, %79 ], [ 1, %149 ], [ 1, %91 ], [ 1, %20 ], [ 1, %21 ], [ 1, %25 ], [ 1, %28 ]
  ret i32 %177
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__sk_mem_schedule(ptr noundef %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = add i32 %1, 4095
  %5 = ashr i32 %4, 12
  %6 = and i32 %4, -4096
  %7 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 11
  %8 = load i32, ptr %7, align 4
  %9 = add i32 %8, %6
  store i32 %9, ptr %7, align 4
  %10 = tail call i32 @__sk_mem_raise_allocated(ptr noundef %0, i32 noundef %1, i32 noundef %5, i32 noundef %2)
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %15

12:                                               ; preds = %3
  %13 = load i32, ptr %7, align 4
  %14 = sub i32 %13, %6
  store i32 %14, ptr %7, align 4
  br label %15

15:                                               ; preds = %12, %3
  ret i32 %10
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @__sk_mem_reduce_allocated(ptr noundef %0, i32 noundef %1) #0 {
  %3 = getelementptr inbounds %struct.sock_common, ptr %0, i32 0, i32 8
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.proto, ptr %4, i32 0, i32 30
  %6 = load ptr, ptr %5, align 4
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %6) #21, !srcloc !11
  %7 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %6, ptr %6, i32 %1, ptr elementtype(i32) %6) #21, !srcloc !13
  %8 = load ptr, ptr %3, align 8
  %9 = getelementptr inbounds %struct.proto, ptr %8, i32 0, i32 32
  %10 = load ptr, ptr %9, align 4
  %11 = icmp eq ptr %10, null
  br i1 %11, label %32, label %12

12:                                               ; preds = %2
  %13 = load i32, ptr %10, align 4
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %32, label %15

15:                                               ; preds = %12
  %16 = getelementptr inbounds %struct.proto, ptr %8, i32 0, i32 30
  %17 = load ptr, ptr %16, align 4
  %18 = load volatile i32, ptr %17, align 4
  %19 = getelementptr inbounds %struct.proto, ptr %8, i32 0, i32 33
  %20 = load ptr, ptr %19, align 4
  %21 = load i32, ptr %20, align 4
  %22 = icmp slt i32 %18, %21
  br i1 %22, label %23, label %32

23:                                               ; preds = %15
  %24 = getelementptr inbounds %struct.proto, ptr %8, i32 0, i32 29
  %25 = load ptr, ptr %24, align 4
  %26 = icmp eq ptr %25, null
  br i1 %26, label %28, label %27

27:                                               ; preds = %23
  tail call void %25(ptr noundef %0) #21
  br label %32

28:                                               ; preds = %23
  %29 = load volatile i32, ptr %10, align 4
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %32, label %31

31:                                               ; preds = %28
  store volatile i32 0, ptr %10, align 4
  br label %32

32:                                               ; preds = %31, %28, %27, %15, %12, %2
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @__sk_mem_reclaim(ptr noundef %0, i32 noundef %1) #0 {
  %3 = ashr i32 %1, 12
  %4 = and i32 %1, -4096
  %5 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 11
  %6 = load i32, ptr %5, align 4
  %7 = sub i32 %6, %4
  store i32 %7, ptr %5, align 4
  %8 = getelementptr inbounds %struct.sock_common, ptr %0, i32 0, i32 8
  %9 = load ptr, ptr %8, align 8
  %10 = getelementptr inbounds %struct.proto, ptr %9, i32 0, i32 30
  %11 = load ptr, ptr %10, align 4
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %11) #21, !srcloc !11
  %12 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %11, ptr %11, i32 %3, ptr elementtype(i32) %11) #21, !srcloc !13
  %13 = load ptr, ptr %8, align 8
  %14 = getelementptr inbounds %struct.proto, ptr %13, i32 0, i32 32
  %15 = load ptr, ptr %14, align 4
  %16 = icmp eq ptr %15, null
  br i1 %16, label %37, label %17

17:                                               ; preds = %2
  %18 = load i32, ptr %15, align 4
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %37, label %20

20:                                               ; preds = %17
  %21 = getelementptr inbounds %struct.proto, ptr %13, i32 0, i32 30
  %22 = load ptr, ptr %21, align 4
  %23 = load volatile i32, ptr %22, align 4
  %24 = getelementptr inbounds %struct.proto, ptr %13, i32 0, i32 33
  %25 = load ptr, ptr %24, align 4
  %26 = load i32, ptr %25, align 4
  %27 = icmp slt i32 %23, %26
  br i1 %27, label %28, label %37

28:                                               ; preds = %20
  %29 = getelementptr inbounds %struct.proto, ptr %13, i32 0, i32 29
  %30 = load ptr, ptr %29, align 4
  %31 = icmp eq ptr %30, null
  br i1 %31, label %33, label %32

32:                                               ; preds = %28
  tail call void %30(ptr noundef %0) #21
  br label %37

33:                                               ; preds = %28
  %34 = load volatile i32, ptr %15, align 4
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %37, label %36

36:                                               ; preds = %33
  store volatile i32 0, ptr %15, align 4
  br label %37

37:                                               ; preds = %36, %33, %32, %20, %17, %2
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn writeonly uwtable(sync)
define dso_local i32 @sk_set_peek_off(ptr nocapture noundef writeonly %0, i32 noundef %1) #3 {
  %3 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 27
  store i32 %1, ptr %3, align 4
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define dso_local i32 @sock_no_bind(ptr nocapture readnone %0, ptr nocapture readnone %1, i32 %2) #9 {
  ret i32 -95
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define dso_local i32 @sock_no_connect(ptr nocapture readnone %0, ptr nocapture readnone %1, i32 %2, i32 %3) #9 {
  ret i32 -95
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define dso_local i32 @sock_no_socketpair(ptr nocapture readnone %0, ptr nocapture readnone %1) #9 {
  ret i32 -95
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define dso_local i32 @sock_no_accept(ptr nocapture readnone %0, ptr nocapture readnone %1, i32 %2, i1 zeroext %3) #9 {
  ret i32 -95
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define dso_local i32 @sock_no_getname(ptr nocapture readnone %0, ptr nocapture readnone %1, i32 %2) #9 {
  ret i32 -95
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define dso_local i32 @sock_no_ioctl(ptr nocapture readnone %0, i32 %1, i32 %2) #9 {
  ret i32 -95
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define dso_local i32 @sock_no_listen(ptr nocapture readnone %0, i32 %1) #9 {
  ret i32 -95
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define dso_local i32 @sock_no_shutdown(ptr nocapture readnone %0, i32 %1) #9 {
  ret i32 -95
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define dso_local i32 @sock_no_sendmsg(ptr nocapture readnone %0, ptr nocapture readnone %1, i32 %2) #9 {
  ret i32 -95
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define dso_local i32 @sock_no_sendmsg_locked(ptr nocapture readnone %0, ptr nocapture readnone %1, i32 %2) #9 {
  ret i32 -95
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define dso_local i32 @sock_no_recvmsg(ptr nocapture readnone %0, ptr nocapture readnone %1, i32 %2, i32 %3) #9 {
  ret i32 -95
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define dso_local i32 @sock_no_mmap(ptr nocapture readnone %0, ptr nocapture readnone %1, ptr nocapture readnone %2) #9 {
  ret i32 -19
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @__receive_sock(ptr noundef %0) local_unnamed_addr #0 {
  %2 = tail call ptr @sock_from_file(ptr noundef %0) #21
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @sock_from_file(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @sock_no_sendpage(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) #0 {
  %6 = alloca %struct.msghdr, align 8
  %7 = alloca %struct.kvec, align 8
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %6) #21
  %8 = getelementptr inbounds %struct.msghdr, ptr %6, i32 0, i32 6
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %6, i8 0, i64 56, i1 false)
  store i32 %4, ptr %8, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #21
  %9 = load i32, ptr %1, align 4
  %10 = lshr i32 %9, 30
  %11 = icmp eq i32 %10, 2
  br i1 %11, label %19, label %12

12:                                               ; preds = %5
  %13 = icmp ne i32 %10, 3
  %14 = load i32, ptr @movable_zone, align 4
  %15 = icmp ne i32 %14, 2
  %16 = select i1 %13, i1 true, i1 %15
  br i1 %16, label %17, label %19

17:                                               ; preds = %12
  %18 = tail call ptr @page_address(ptr noundef %1) #21
  br label %21

19:                                               ; preds = %12, %5
  %20 = tail call ptr @kmap_high(ptr noundef %1) #21
  br label %21

21:                                               ; preds = %19, %17
  %22 = phi ptr [ %20, %19 ], [ %18, %17 ]
  %23 = getelementptr i8, ptr %22, i32 %2
  store ptr %23, ptr %7, align 8
  %24 = getelementptr inbounds %struct.kvec, ptr %7, i32 0, i32 1
  store i32 %3, ptr %24, align 4
  %25 = call i32 @kernel_sendmsg(ptr noundef %0, ptr noundef nonnull %6, ptr noundef nonnull %7, i32 noundef 1, i32 noundef %3) #21
  %26 = load i32, ptr %1, align 4
  %27 = lshr i32 %26, 30
  %28 = icmp eq i32 %27, 2
  br i1 %28, label %34, label %29

29:                                               ; preds = %21
  %30 = icmp ne i32 %27, 3
  %31 = load i32, ptr @movable_zone, align 4
  %32 = icmp ne i32 %31, 2
  %33 = select i1 %30, i1 true, i1 %32
  br i1 %33, label %35, label %34

34:                                               ; preds = %29, %21
  call void @kunmap_high(ptr noundef %1) #21
  br label %35

35:                                               ; preds = %34, %29
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #21
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %6) #21
  ret i32 %25
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kernel_sendmsg(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @sock_no_sendpage_locked(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) #0 {
  %6 = alloca %struct.msghdr, align 8
  %7 = alloca %struct.kvec, align 8
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %6) #21
  %8 = getelementptr inbounds %struct.msghdr, ptr %6, i32 0, i32 6
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %6, i8 0, i64 56, i1 false)
  store i32 %4, ptr %8, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #21
  %9 = load i32, ptr %1, align 4
  %10 = lshr i32 %9, 30
  %11 = icmp eq i32 %10, 2
  br i1 %11, label %19, label %12

12:                                               ; preds = %5
  %13 = icmp ne i32 %10, 3
  %14 = load i32, ptr @movable_zone, align 4
  %15 = icmp ne i32 %14, 2
  %16 = select i1 %13, i1 true, i1 %15
  br i1 %16, label %17, label %19

17:                                               ; preds = %12
  %18 = tail call ptr @page_address(ptr noundef %1) #21
  br label %21

19:                                               ; preds = %12, %5
  %20 = tail call ptr @kmap_high(ptr noundef %1) #21
  br label %21

21:                                               ; preds = %19, %17
  %22 = phi ptr [ %20, %19 ], [ %18, %17 ]
  %23 = getelementptr i8, ptr %22, i32 %2
  store ptr %23, ptr %7, align 8
  %24 = getelementptr inbounds %struct.kvec, ptr %7, i32 0, i32 1
  store i32 %3, ptr %24, align 4
  %25 = call i32 @kernel_sendmsg_locked(ptr noundef %0, ptr noundef nonnull %6, ptr noundef nonnull %7, i32 noundef 1, i32 noundef %3) #21
  %26 = load i32, ptr %1, align 4
  %27 = lshr i32 %26, 30
  %28 = icmp eq i32 %27, 2
  br i1 %28, label %34, label %29

29:                                               ; preds = %21
  %30 = icmp ne i32 %27, 3
  %31 = load i32, ptr @movable_zone, align 4
  %32 = icmp ne i32 %31, 2
  %33 = select i1 %30, i1 true, i1 %32
  br i1 %33, label %35, label %34

34:                                               ; preds = %29, %21
  call void @kunmap_high(ptr noundef %1) #21
  br label %35

35:                                               ; preds = %34, %29
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #21
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %6) #21
  ret i32 %25
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kernel_sendmsg_locked(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @sock_def_readable(ptr noundef %0) #0 {
  tail call void asm sideeffect "", "~{memory}"() #21, !srcloc !36
  %2 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 17
  %3 = load volatile ptr, ptr %2, align 4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %10, label %5

5:                                                ; preds = %1
  tail call void asm sideeffect "dmb ish", "~{memory}"() #21, !srcloc !74
  %6 = getelementptr inbounds %struct.wait_queue_head, ptr %3, i32 0, i32 1
  %7 = load volatile ptr, ptr %6, align 4
  %8 = icmp eq ptr %7, %6
  br i1 %8, label %10, label %9

9:                                                ; preds = %5
  tail call void @__wake_up_sync_key(ptr noundef nonnull %3, i32 noundef 1, ptr noundef nonnull inttoptr (i32 195 to ptr)) #21
  br label %10

10:                                               ; preds = %9, %5, %1
  %11 = getelementptr inbounds %struct.sock_common, ptr %0, i32 0, i32 13
  %12 = load volatile i32, ptr %11, align 4
  %13 = and i32 %12, 65536
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %18, label %15

15:                                               ; preds = %10
  tail call void asm sideeffect "", "~{memory}"() #21, !srcloc !36
  %16 = load volatile ptr, ptr %2, align 4
  %17 = tail call i32 @sock_wake_async(ptr noundef %16, i32 noundef 1, i32 noundef 1) #21
  tail call void asm sideeffect "", "~{memory}"() #21, !srcloc !37
  br label %18

18:                                               ; preds = %15, %10
  tail call void asm sideeffect "", "~{memory}"() #21, !srcloc !37
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up_sync_key(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @sk_send_sigurg(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 71
  %3 = load ptr, ptr %2, align 8
  %4 = icmp eq ptr %3, null
  br i1 %4, label %22, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.socket, ptr %3, i32 0, i32 3
  %7 = load ptr, ptr %6, align 4
  %8 = icmp eq ptr %7, null
  br i1 %8, label %22, label %9

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.file, ptr %7, i32 0, i32 11
  %11 = tail call i32 @send_sigurg(ptr noundef %10) #21
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %22, label %13

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct.sock_common, ptr %0, i32 0, i32 13
  %15 = load volatile i32, ptr %14, align 4
  %16 = and i32 %15, 65536
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %22, label %18

18:                                               ; preds = %13
  tail call void asm sideeffect "", "~{memory}"() #21, !srcloc !36
  %19 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 17
  %20 = load volatile ptr, ptr %19, align 4
  %21 = tail call i32 @sock_wake_async(ptr noundef %20, i32 noundef 3, i32 noundef 5) #21
  tail call void asm sideeffect "", "~{memory}"() #21, !srcloc !37
  br label %22

22:                                               ; preds = %18, %13, %9, %5, %1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @send_sigurg(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @sk_reset_timer(ptr noundef %0, ptr noundef %1, i32 noundef %2) #0 {
  %4 = tail call i32 @mod_timer(ptr noundef %1, i32 noundef %2) #21
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %17

6:                                                ; preds = %3
  %7 = getelementptr inbounds %struct.sock_common, ptr %0, i32 0, i32 19
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %7) #21, !srcloc !11
  %8 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %7, ptr %7, i32 1, ptr elementtype(i32) %7) #21, !srcloc !66
  %9 = extractvalue { i32, i32, i32 } %8, 0
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %15, label %11, !prof !10

11:                                               ; preds = %6
  %12 = add i32 %9, 1
  %13 = or i32 %12, %9
  %14 = icmp sgt i32 %13, -1
  br i1 %14, label %17, label %15, !prof !14

15:                                               ; preds = %11, %6
  %16 = phi i32 [ 2, %6 ], [ 1, %11 ]
  tail call void @refcount_warn_saturate(ptr noundef %7, i32 noundef %16) #21
  br label %17

17:                                               ; preds = %15, %11, %3
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mod_timer(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @sk_stop_timer(ptr noundef %0, ptr noundef %1) #0 {
  %3 = tail call i32 @del_timer(ptr noundef %1) #21
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %11, label %5

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.sock_common, ptr %0, i32 0, i32 19
  tail call void asm sideeffect "dmb ish", "~{memory}"() #21, !srcloc !33
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %6) #21, !srcloc !11
  %7 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %6, ptr %6, i32 1, ptr elementtype(i32) %6) #21, !srcloc !34
  %8 = extractvalue { i32, i32, i32 } %7, 0
  %9 = icmp slt i32 %8, 2
  br i1 %9, label %10, label %11, !prof !10

10:                                               ; preds = %5
  tail call void @refcount_warn_saturate(ptr noundef %6, i32 noundef 4) #21
  br label %11

11:                                               ; preds = %10, %5, %2
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @del_timer(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @sk_stop_timer_sync(ptr noundef %0, ptr noundef %1) #0 {
  %3 = tail call i32 @del_timer_sync(ptr noundef %1) #21
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %11, label %5

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.sock_common, ptr %0, i32 0, i32 19
  tail call void asm sideeffect "dmb ish", "~{memory}"() #21, !srcloc !33
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %6) #21, !srcloc !11
  %7 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %6, ptr %6, i32 1, ptr elementtype(i32) %6) #21, !srcloc !34
  %8 = extractvalue { i32, i32, i32 } %7, 0
  %9 = icmp slt i32 %8, 2
  br i1 %9, label %10, label %11, !prof !10

10:                                               ; preds = %5
  tail call void @refcount_warn_saturate(ptr noundef %6, i32 noundef 4) #21
  br label %11

11:                                               ; preds = %10, %5, %2
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @del_timer_sync(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @sock_init_data(ptr noundef %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.sock, ptr %1, i32 0, i32 8
  %4 = getelementptr inbounds %struct.sock, ptr %1, i32 0, i32 8, i32 2
  store i32 0, ptr %4, align 4
  store ptr %3, ptr %3, align 4
  %5 = getelementptr inbounds %struct.sock, ptr %1, i32 0, i32 8, i32 0, i32 0, i32 1
  store ptr %3, ptr %5, align 4
  %6 = getelementptr inbounds %struct.sock, ptr %1, i32 0, i32 8, i32 1
  store i32 0, ptr %6, align 4
  %7 = getelementptr inbounds %struct.sock, ptr %1, i32 0, i32 26
  %8 = getelementptr inbounds %struct.sock, ptr %1, i32 0, i32 26, i32 2
  store i32 0, ptr %8, align 4
  store ptr %7, ptr %7, align 4
  %9 = getelementptr inbounds %struct.sock, ptr %1, i32 0, i32 26, i32 0, i32 0, i32 1
  store ptr %7, ptr %9, align 4
  %10 = getelementptr inbounds %struct.sock, ptr %1, i32 0, i32 26, i32 1
  store i32 0, ptr %10, align 4
  %11 = getelementptr inbounds %struct.sock, ptr %1, i32 0, i32 7
  %12 = getelementptr inbounds %struct.sock, ptr %1, i32 0, i32 7, i32 2
  store i32 0, ptr %12, align 4
  store ptr %11, ptr %11, align 4
  %13 = getelementptr inbounds %struct.sock, ptr %1, i32 0, i32 7, i32 0, i32 0, i32 1
  store ptr %11, ptr %13, align 4
  %14 = getelementptr inbounds %struct.sock, ptr %1, i32 0, i32 7, i32 1
  store i32 0, ptr %14, align 4
  %15 = getelementptr inbounds %struct.sock, ptr %1, i32 0, i32 50
  store i32 0, ptr %15, align 8
  %16 = getelementptr inbounds %struct.sock, ptr %1, i32 0, i32 25
  store ptr null, ptr %16, align 8
  %17 = getelementptr inbounds %struct.sock, ptr %1, i32 0, i32 32
  tail call void @init_timer_key(ptr noundef %17, ptr noundef null, i32 noundef 0, ptr noundef null, ptr noundef null) #21
  %18 = getelementptr inbounds %struct.sock, ptr %1, i32 0, i32 41
  store i32 3264, ptr %18, align 8
  %19 = load i32, ptr @sysctl_rmem_default, align 4
  %20 = getelementptr inbounds %struct.sock, ptr %1, i32 0, i32 15
  store i32 %19, ptr %20, align 4
  %21 = load i32, ptr @sysctl_wmem_default, align 4
  %22 = getelementptr inbounds %struct.sock, ptr %1, i32 0, i32 21
  store i32 %21, ptr %22, align 8
  %23 = getelementptr inbounds %struct.sock_common, ptr %1, i32 0, i32 4
  store volatile i8 7, ptr %23, align 2
  %24 = getelementptr inbounds %struct.sock, ptr %1, i32 0, i32 71
  store ptr %0, ptr %24, align 8
  %25 = getelementptr inbounds %struct.sock_common, ptr %1, i32 0, i32 13
  %26 = load i32, ptr %25, align 4
  %27 = or i32 %26, 256
  store i32 %27, ptr %25, align 4
  %28 = icmp eq ptr %0, null
  br i1 %28, label %38, label %29

29:                                               ; preds = %2
  %30 = getelementptr inbounds %struct.socket, ptr %0, i32 0, i32 1
  %31 = load i16, ptr %30, align 4
  %32 = getelementptr inbounds %struct.sock, ptr %1, i32 0, i32 45
  store i16 %31, ptr %32, align 2
  %33 = getelementptr inbounds %struct.socket, ptr %0, i32 0, i32 7
  %34 = getelementptr inbounds %struct.sock, ptr %1, i32 0, i32 17
  store volatile ptr %33, ptr %34, align 4
  %35 = getelementptr inbounds %struct.socket, ptr %0, i32 0, i32 4
  store ptr %1, ptr %35, align 16
  %36 = getelementptr inbounds %struct.socket_alloc, ptr %0, i32 0, i32 1, i32 2
  %37 = load i32, ptr %36, align 4
  br label %40

38:                                               ; preds = %2
  %39 = getelementptr inbounds %struct.sock, ptr %1, i32 0, i32 17
  store volatile ptr null, ptr %39, align 4
  br label %40

40:                                               ; preds = %38, %29
  %41 = phi i32 [ 0, %38 ], [ %37, %29 ]
  %42 = getelementptr inbounds %struct.sock, ptr %1, i32 0, i32 55
  store i32 %41, ptr %42, align 4
  store i32 0, ptr %15, align 8
  %43 = getelementptr inbounds %struct.sock, ptr %1, i32 0, i32 75
  store ptr @sock_def_wakeup, ptr %43, align 4
  %44 = getelementptr inbounds %struct.sock, ptr %1, i32 0, i32 76
  store ptr @sock_def_readable, ptr %44, align 8
  %45 = getelementptr inbounds %struct.sock, ptr %1, i32 0, i32 77
  store ptr @sock_def_write_space, ptr %45, align 4
  %46 = getelementptr inbounds %struct.sock, ptr %1, i32 0, i32 78
  store ptr @sock_def_error_report, ptr %46, align 8
  %47 = getelementptr inbounds %struct.sock, ptr %1, i32 0, i32 80
  store ptr @sock_def_destruct, ptr %47, align 8
  %48 = getelementptr inbounds %struct.sock, ptr %1, i32 0, i32 37
  store ptr null, ptr %48, align 4
  %49 = getelementptr inbounds %struct.sock, ptr %1, i32 0, i32 37, i32 1
  store i16 0, ptr %49, align 4
  %50 = getelementptr inbounds %struct.sock, ptr %1, i32 0, i32 27
  store i32 -1, ptr %50, align 4
  %51 = getelementptr inbounds %struct.sock, ptr %1, i32 0, i32 60
  store ptr null, ptr %51, align 4
  %52 = getelementptr inbounds %struct.sock, ptr %1, i32 0, i32 61
  store ptr null, ptr %52, align 8
  %53 = getelementptr inbounds %struct.sock, ptr %1, i32 0, i32 58
  store i32 0, ptr %53, align 4
  %54 = getelementptr inbounds %struct.sock, ptr %1, i32 0, i32 28
  store i32 0, ptr %54, align 8
  %55 = getelementptr inbounds %struct.sock, ptr %1, i32 0, i32 6
  store i32 1, ptr %55, align 4
  %56 = getelementptr inbounds %struct.sock, ptr %1, i32 0, i32 62
  store i32 2147483647, ptr %56, align 4
  %57 = getelementptr inbounds %struct.sock, ptr %1, i32 0, i32 31
  store i32 2147483647, ptr %57, align 4
  %58 = getelementptr inbounds %struct.sock, ptr %1, i32 0, i32 63
  store i64 -1000000000, ptr %58, align 8
  %59 = getelementptr inbounds %struct.sock, ptr %1, i32 0, i32 64
  %60 = getelementptr inbounds %struct.sock, ptr %1, i32 0, i32 64, i32 1
  store i32 0, ptr %60, align 4
  store i32 0, ptr %59, align 4
  %61 = getelementptr inbounds %struct.sock, ptr %1, i32 0, i32 68
  store volatile i32 0, ptr %61, align 4
  %62 = getelementptr inbounds %struct.sock, ptr %1, i32 0, i32 14
  store i32 0, ptr %62, align 8
  %63 = load i32, ptr @sysctl_net_busy_read, align 4
  %64 = getelementptr inbounds %struct.sock, ptr %1, i32 0, i32 13
  store i32 %63, ptr %64, align 4
  %65 = getelementptr inbounds %struct.sock, ptr %1, i32 0, i32 36
  store i32 -1, ptr %65, align 8
  %66 = getelementptr inbounds %struct.sock, ptr %1, i32 0, i32 35
  store i32 -1, ptr %66, align 4
  %67 = getelementptr inbounds %struct.sock, ptr %1, i32 0, i32 44
  store volatile i8 10, ptr %67, align 1
  %68 = getelementptr inbounds %struct.sock_common, ptr %1, i32 0, i32 18
  store i32 -1, ptr %68, align 8
  %69 = getelementptr inbounds %struct.sock_common, ptr %1, i32 0, i32 17
  store volatile i16 -1, ptr %69, align 2
  tail call void asm sideeffect "dmb ishst", "~{memory}"() #21, !srcloc !75
  %70 = getelementptr inbounds %struct.sock_common, ptr %1, i32 0, i32 19
  store volatile i32 1, ptr %70, align 4
  %71 = getelementptr inbounds %struct.sock, ptr %1, i32 0, i32 5
  store volatile i32 0, ptr %71, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @sock_def_wakeup(ptr noundef %0) #0 {
  tail call void asm sideeffect "", "~{memory}"() #21, !srcloc !36
  %2 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 17
  %3 = load volatile ptr, ptr %2, align 4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %10, label %5

5:                                                ; preds = %1
  tail call void asm sideeffect "dmb ish", "~{memory}"() #21, !srcloc !74
  %6 = getelementptr inbounds %struct.wait_queue_head, ptr %3, i32 0, i32 1
  %7 = load volatile ptr, ptr %6, align 4
  %8 = icmp eq ptr %7, %6
  br i1 %8, label %10, label %9

9:                                                ; preds = %5
  tail call void @__wake_up(ptr noundef nonnull %3, i32 noundef 1, i32 noundef 0, ptr noundef null) #21
  br label %10

10:                                               ; preds = %9, %5, %1
  tail call void asm sideeffect "", "~{memory}"() #21, !srcloc !37
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @sock_def_write_space(ptr noundef %0) #0 {
  tail call void asm sideeffect "", "~{memory}"() #21, !srcloc !36
  %2 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 23
  %3 = load volatile i32, ptr %2, align 4
  %4 = shl i32 %3, 1
  %5 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 21
  %6 = load volatile i32, ptr %5, align 8
  %7 = icmp ugt i32 %4, %6
  br i1 %7, label %30, label %8

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 17
  %10 = load volatile ptr, ptr %9, align 4
  %11 = icmp eq ptr %10, null
  br i1 %11, label %17, label %12

12:                                               ; preds = %8
  tail call void asm sideeffect "dmb ish", "~{memory}"() #21, !srcloc !74
  %13 = getelementptr inbounds %struct.wait_queue_head, ptr %10, i32 0, i32 1
  %14 = load volatile ptr, ptr %13, align 4
  %15 = icmp eq ptr %14, %13
  br i1 %15, label %17, label %16

16:                                               ; preds = %12
  tail call void @__wake_up_sync_key(ptr noundef nonnull %10, i32 noundef 1, ptr noundef nonnull inttoptr (i32 772 to ptr)) #21
  br label %17

17:                                               ; preds = %16, %12, %8
  %18 = load volatile i32, ptr %2, align 4
  %19 = load volatile i32, ptr %5, align 8
  %20 = ashr i32 %19, 1
  %21 = icmp ult i32 %18, %20
  br i1 %21, label %22, label %30

22:                                               ; preds = %17
  %23 = getelementptr inbounds %struct.sock_common, ptr %0, i32 0, i32 13
  %24 = load volatile i32, ptr %23, align 4
  %25 = and i32 %24, 65536
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %30, label %27

27:                                               ; preds = %22
  tail call void asm sideeffect "", "~{memory}"() #21, !srcloc !36
  %28 = load volatile ptr, ptr %9, align 4
  %29 = tail call i32 @sock_wake_async(ptr noundef %28, i32 noundef 2, i32 noundef 2) #21
  tail call void asm sideeffect "", "~{memory}"() #21, !srcloc !37
  br label %30

30:                                               ; preds = %27, %22, %17, %1
  tail call void asm sideeffect "", "~{memory}"() #21, !srcloc !37
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @sock_def_error_report(ptr noundef %0) #0 {
  tail call void asm sideeffect "", "~{memory}"() #21, !srcloc !36
  %2 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 17
  %3 = load volatile ptr, ptr %2, align 4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %10, label %5

5:                                                ; preds = %1
  tail call void asm sideeffect "dmb ish", "~{memory}"() #21, !srcloc !74
  %6 = getelementptr inbounds %struct.wait_queue_head, ptr %3, i32 0, i32 1
  %7 = load volatile ptr, ptr %6, align 4
  %8 = icmp eq ptr %7, %6
  br i1 %8, label %10, label %9

9:                                                ; preds = %5
  tail call void @__wake_up(ptr noundef nonnull %3, i32 noundef 1, i32 noundef 1, ptr noundef nonnull inttoptr (i32 8 to ptr)) #21
  br label %10

10:                                               ; preds = %9, %5, %1
  %11 = getelementptr inbounds %struct.sock_common, ptr %0, i32 0, i32 13
  %12 = load volatile i32, ptr %11, align 4
  %13 = and i32 %12, 65536
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %18, label %15

15:                                               ; preds = %10
  tail call void asm sideeffect "", "~{memory}"() #21, !srcloc !36
  %16 = load volatile ptr, ptr %2, align 4
  %17 = tail call i32 @sock_wake_async(ptr noundef %16, i32 noundef 0, i32 noundef 4) #21
  tail call void asm sideeffect "", "~{memory}"() #21, !srcloc !37
  br label %18

18:                                               ; preds = %15, %10
  tail call void asm sideeffect "", "~{memory}"() #21, !srcloc !37
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal void @sock_def_destruct(ptr nocapture noundef %0) #9 {
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @lock_sock_nested(ptr noundef %0, i32 %1) #0 {
  %3 = alloca %struct.wait_queue_entry, align 4
  %4 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 4
  tail call void @_raw_spin_lock_bh(ptr noundef %4) #21
  %5 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 4, i32 1
  %6 = load i32, ptr %5, align 4
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %20, label %8

8:                                                ; preds = %2
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %3) #21
  %9 = getelementptr inbounds %struct.wait_queue_entry, ptr %3, i32 0, i32 1
  %10 = tail call ptr @llvm.thread.pointer() #21
  store i32 0, ptr %3, align 4
  store ptr %10, ptr %9, align 4
  %11 = getelementptr inbounds %struct.wait_queue_entry, ptr %3, i32 0, i32 2
  store ptr @autoremove_wake_function, ptr %11, align 4
  %12 = getelementptr inbounds %struct.wait_queue_entry, ptr %3, i32 0, i32 3
  store ptr %12, ptr %12, align 4
  %13 = getelementptr inbounds %struct.wait_queue_entry, ptr %3, i32 0, i32 3, i32 1
  store ptr %12, ptr %13, align 4
  %14 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 4, i32 2
  br label %15

15:                                               ; preds = %15, %8
  %16 = call zeroext i1 @prepare_to_wait_exclusive(ptr noundef %14, ptr noundef nonnull %3, i32 noundef 2) #21
  call void @_raw_spin_unlock_bh(ptr noundef %4) #21
  call void @schedule() #21
  call void @_raw_spin_lock_bh(ptr noundef %4) #21
  %17 = load i32, ptr %5, align 4
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %15

19:                                               ; preds = %15
  call void @finish_wait(ptr noundef %14, ptr noundef nonnull %3) #21
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %3) #21
  br label %20

20:                                               ; preds = %19, %2
  store i32 1, ptr %5, align 4
  call void @_raw_spin_unlock_bh(ptr noundef %4) #21
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local zeroext i1 @__lock_sock_fast(ptr noundef %0) #0 {
  %2 = alloca %struct.wait_queue_entry, align 4
  %3 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 4
  tail call void @_raw_spin_lock_bh(ptr noundef %3) #21
  %4 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 4, i32 1
  %5 = load i32, ptr %4, align 4
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %7, label %19

7:                                                ; preds = %1
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %2) #21
  %8 = getelementptr inbounds %struct.wait_queue_entry, ptr %2, i32 0, i32 1
  %9 = tail call ptr @llvm.thread.pointer() #21
  store i32 0, ptr %2, align 4
  store ptr %9, ptr %8, align 4
  %10 = getelementptr inbounds %struct.wait_queue_entry, ptr %2, i32 0, i32 2
  store ptr @autoremove_wake_function, ptr %10, align 4
  %11 = getelementptr inbounds %struct.wait_queue_entry, ptr %2, i32 0, i32 3
  store ptr %11, ptr %11, align 4
  %12 = getelementptr inbounds %struct.wait_queue_entry, ptr %2, i32 0, i32 3, i32 1
  store ptr %11, ptr %12, align 4
  %13 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 4, i32 2
  br label %14

14:                                               ; preds = %14, %7
  %15 = call zeroext i1 @prepare_to_wait_exclusive(ptr noundef %13, ptr noundef nonnull %2, i32 noundef 2) #21
  call void @_raw_spin_unlock_bh(ptr noundef %3) #21
  call void @schedule() #21
  call void @_raw_spin_lock_bh(ptr noundef %3) #21
  %16 = load i32, ptr %4, align 4
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %14

18:                                               ; preds = %14
  call void @finish_wait(ptr noundef %13, ptr noundef nonnull %2) #21
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %2) #21
  store i32 1, ptr %4, align 4
  call void @_raw_spin_unlock_bh(ptr noundef %3) #21
  br label %19

19:                                               ; preds = %18, %1
  ret i1 %6
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @sock_gettstamp(ptr nocapture noundef readonly %0, ptr noundef %1, i1 noundef zeroext %2, i1 noundef zeroext %3) #0 {
  %5 = alloca %struct.timespec64, align 8
  %6 = alloca %struct.timespec64, align 8
  %7 = getelementptr inbounds %struct.socket, ptr %0, i32 0, i32 4
  %8 = load ptr, ptr %7, align 16
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #21
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(16) %5, i8 0, i32 16, i1 false), !annotation !18
  %9 = getelementptr inbounds %struct.sock_common, ptr %8, i32 0, i32 13
  %10 = load volatile i32, ptr %9, align 4
  %11 = and i32 %10, 128
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %22

13:                                               ; preds = %4
  %14 = or i32 %10, 128
  store i32 %14, ptr %9, align 4
  %15 = getelementptr inbounds %struct.sock_common, ptr %8, i32 0, i32 3
  %16 = load i16, ptr %15, align 8
  %17 = icmp ugt i16 %16, 1
  %18 = and i32 %10, 32896
  %19 = icmp eq i32 %18, 0
  %20 = select i1 %17, i1 %19, i1 false
  br i1 %20, label %21, label %22

21:                                               ; preds = %13
  tail call void @net_enable_timestamp() #21
  br label %22

22:                                               ; preds = %21, %13, %4
  %23 = getelementptr inbounds %struct.sock, ptr %8, i32 0, i32 64
  %24 = getelementptr inbounds %struct.sock, ptr %8, i32 0, i32 63
  br label %25

25:                                               ; preds = %33, %22
  %26 = load volatile i32, ptr %23, align 4
  %27 = and i32 %26, 1
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %33, label %29

29:                                               ; preds = %29, %25
  tail call void asm sideeffect "dmb ish", "~{memory}"() #21, !srcloc !76
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #21, !srcloc !77
  %30 = load volatile i32, ptr %23, align 4
  %31 = and i32 %30, 1
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %33, label %29

33:                                               ; preds = %29, %25
  %34 = phi i32 [ %26, %25 ], [ %30, %29 ]
  tail call void asm sideeffect "dmb ish", "~{memory}"() #21, !srcloc !78
  %35 = load i64, ptr %24, align 8
  tail call void asm sideeffect "dmb ish", "~{memory}"() #21, !srcloc !79
  %36 = load volatile i32, ptr %23, align 4
  %37 = icmp eq i32 %36, %34
  br i1 %37, label %38, label %25

38:                                               ; preds = %33
  call void @ns_to_timespec64(ptr nonnull sret(%struct.timespec64) align 8 %5, i64 noundef %35) #21
  %39 = load i64, ptr %5, align 8
  switch i64 %39, label %49 [
    i64 -1, label %59
    i64 0, label %40
  ]

40:                                               ; preds = %38
  %41 = call i64 @ktime_get_with_offset(i32 noundef 0) #21
  %42 = getelementptr inbounds %struct.sock, ptr %8, i32 0, i32 64, i32 1
  call void @_raw_spin_lock(ptr noundef %42) #21
  %43 = load i32, ptr %23, align 4
  %44 = add i32 %43, 1
  store i32 %44, ptr %23, align 4
  call void asm sideeffect "dmb ishst", "~{memory}"() #21, !srcloc !80
  store i64 %41, ptr %24, align 8
  call void asm sideeffect "dmb ishst", "~{memory}"() #21, !srcloc !81
  %45 = load i32, ptr %23, align 4
  %46 = add i32 %45, 1
  store i32 %46, ptr %23, align 4
  call void asm sideeffect "dmb ish", "~{memory}"() #21, !srcloc !29
  %47 = load i16, ptr %42, align 4
  %48 = add i16 %47, 1
  store i16 %48, ptr %42, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #21, !srcloc !30
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #21, !srcloc !31
  call void asm sideeffect "", "~{memory}"() #21, !srcloc !32
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #21
  call void @ns_to_timespec64(ptr nonnull sret(%struct.timespec64) align 8 %6, i64 noundef %41) #21
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 8 dereferenceable(16) %5, ptr noundef nonnull align 8 dereferenceable(16) %6, i32 16, i1 false)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #21
  br label %49

49:                                               ; preds = %40, %38
  br i1 %2, label %50, label %54

50:                                               ; preds = %49
  %51 = getelementptr inbounds %struct.timespec64, ptr %5, i32 0, i32 1
  %52 = load i32, ptr %51, align 8
  %53 = sdiv i32 %52, 1000
  store i32 %53, ptr %51, align 8
  br label %54

54:                                               ; preds = %50, %49
  br i1 %3, label %55, label %57

55:                                               ; preds = %54
  %56 = call i32 @put_old_timespec32(ptr noundef nonnull %5, ptr noundef %1) #21
  br label %59

57:                                               ; preds = %54
  %58 = call i32 @put_timespec64(ptr noundef nonnull %5, ptr noundef %1) #21
  br label %59

59:                                               ; preds = %57, %55, %38
  %60 = phi i32 [ %56, %55 ], [ %58, %57 ], [ -2, %38 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #21
  ret i32 %60
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ns_to_timespec64(ptr sret(%struct.timespec64) align 8, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @put_old_timespec32(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @put_timespec64(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @sock_recv_errqueue(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) #0 {
  %6 = tail call ptr @sock_dequeue_err_skb(ptr noundef %0) #21
  %7 = icmp eq ptr %6, null
  br i1 %7, label %77, label %8

8:                                                ; preds = %5
  %9 = getelementptr inbounds %struct.sk_buff, ptr %6, i32 0, i32 5
  %10 = load i32, ptr %9, align 8
  %11 = icmp sgt i32 %10, %2
  br i1 %11, label %12, label %16

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct.msghdr, ptr %1, i32 0, i32 6
  %14 = load i32, ptr %13, align 4
  %15 = or i32 %14, 32
  store i32 %15, ptr %13, align 4
  br label %16

16:                                               ; preds = %12, %8
  %17 = phi i32 [ %2, %12 ], [ %10, %8 ]
  %18 = getelementptr inbounds %struct.msghdr, ptr %1, i32 0, i32 2
  %19 = tail call i32 @skb_copy_datagram_iter(ptr noundef nonnull %6, i32 noundef 0, ptr noundef %18, i32 noundef %17) #21
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %75

21:                                               ; preds = %16
  %22 = getelementptr inbounds %struct.sk_buff, ptr %6, i32 0, i32 2
  %23 = load i64, ptr %22, align 8
  %24 = getelementptr inbounds %struct.sk_buff, ptr %6, i32 0, i32 15
  %25 = load ptr, ptr %24, align 4
  %26 = getelementptr inbounds %struct.skb_shared_info, ptr %25, i32 0, i32 7
  %27 = getelementptr inbounds %struct.sock_common, ptr %0, i32 0, i32 13
  %28 = load volatile i32, ptr %27, align 4
  %29 = and i32 %28, 2048
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %31, label %48

31:                                               ; preds = %21
  %32 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 65
  %33 = load i16, ptr %32, align 8
  %34 = zext i16 %33 to i32
  %35 = and i32 %34, 8
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %37, label %48

37:                                               ; preds = %31
  %38 = icmp eq i64 %23, 0
  %39 = and i32 %34, 16
  %40 = icmp eq i32 %39, 0
  %41 = select i1 %38, i1 true, i1 %40
  br i1 %41, label %42, label %48

42:                                               ; preds = %37
  %43 = load i64, ptr %26, align 8
  %44 = icmp eq i64 %43, 0
  %45 = and i16 %33, 64
  %46 = icmp eq i16 %45, 0
  %47 = select i1 %44, i1 true, i1 %46
  br i1 %47, label %49, label %48

48:                                               ; preds = %42, %37, %31, %21
  tail call void @__sock_recv_timestamp(ptr noundef %1, ptr noundef %0, ptr noundef nonnull %6) #21
  br label %59

49:                                               ; preds = %42
  %50 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 64
  %51 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 64, i32 1
  tail call void @_raw_spin_lock(ptr noundef %51) #21
  %52 = load i32, ptr %50, align 4
  %53 = add i32 %52, 1
  store i32 %53, ptr %50, align 4
  tail call void asm sideeffect "dmb ishst", "~{memory}"() #21, !srcloc !80
  %54 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 63
  store i64 %23, ptr %54, align 8
  tail call void asm sideeffect "dmb ishst", "~{memory}"() #21, !srcloc !81
  %55 = load i32, ptr %50, align 4
  %56 = add i32 %55, 1
  store i32 %56, ptr %50, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #21, !srcloc !29
  %57 = load i16, ptr %51, align 4
  %58 = add i16 %57, 1
  store i16 %58, ptr %51, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #21, !srcloc !30
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #21, !srcloc !31
  tail call void asm sideeffect "", "~{memory}"() #21, !srcloc !32
  br label %59

59:                                               ; preds = %49, %48
  %60 = load volatile i32, ptr %27, align 4
  %61 = and i32 %60, 524288
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %69, label %63

63:                                               ; preds = %59
  %64 = getelementptr inbounds %struct.sk_buff, ptr %6, i32 0, i32 13
  %65 = load i16, ptr %64, align 8
  %66 = and i16 %65, 1024
  %67 = icmp eq i16 %66, 0
  br i1 %67, label %69, label %68

68:                                               ; preds = %63
  tail call void @__sock_recv_wifi_status(ptr noundef %1, ptr noundef %0, ptr noundef nonnull %6) #21
  br label %69

69:                                               ; preds = %68, %63, %59
  %70 = getelementptr inbounds %struct.sk_buff, ptr %6, i32 0, i32 3, i32 24
  %71 = tail call i32 @put_cmsg(ptr noundef %1, i32 noundef %3, i32 noundef %4, i32 noundef 16, ptr noundef %70) #21
  %72 = getelementptr inbounds %struct.msghdr, ptr %1, i32 0, i32 6
  %73 = load i32, ptr %72, align 4
  %74 = or i32 %73, 8192
  store i32 %74, ptr %72, align 4
  br label %75

75:                                               ; preds = %69, %16
  %76 = phi i32 [ %19, %16 ], [ %17, %69 ]
  tail call void @kfree_skb_reason(ptr noundef nonnull %6, i32 noundef 0) #21
  br label %77

77:                                               ; preds = %75, %5
  %78 = phi i32 [ -11, %5 ], [ %76, %75 ]
  ret i32 %78
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @sock_dequeue_err_skb(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @put_cmsg(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @sock_common_getsockopt(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2, ptr noundef %3, ptr noundef %4) #0 {
  %6 = getelementptr inbounds %struct.socket, ptr %0, i32 0, i32 4
  %7 = load ptr, ptr %6, align 16
  %8 = getelementptr inbounds %struct.sock_common, ptr %7, i32 0, i32 8
  %9 = load ptr, ptr %8, align 8
  %10 = getelementptr inbounds %struct.proto, ptr %9, i32 0, i32 10
  %11 = load ptr, ptr %10, align 4
  %12 = tail call i32 %11(ptr noundef %7, i32 noundef %1, i32 noundef %2, ptr noundef %3, ptr noundef %4) #21
  ret i32 %12
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @sock_common_recvmsg(ptr nocapture noundef readonly %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) #0 {
  %5 = alloca i32, align 4
  %6 = getelementptr inbounds %struct.socket, ptr %0, i32 0, i32 4
  %7 = load ptr, ptr %6, align 16
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #21
  store i32 0, ptr %5, align 4
  %8 = getelementptr inbounds %struct.sock_common, ptr %7, i32 0, i32 8
  %9 = load ptr, ptr %8, align 8
  %10 = getelementptr inbounds %struct.proto, ptr %9, i32 0, i32 13
  %11 = load ptr, ptr %10, align 4
  %12 = and i32 %3, 64
  %13 = and i32 %3, -65
  %14 = call i32 %11(ptr noundef %7, ptr noundef %1, i32 noundef %2, i32 noundef %12, i32 noundef %13, ptr noundef nonnull %5) #21
  %15 = icmp sgt i32 %14, -1
  br i1 %15, label %16, label %19

16:                                               ; preds = %4
  %17 = load i32, ptr %5, align 4
  %18 = getelementptr inbounds %struct.msghdr, ptr %1, i32 0, i32 1
  store i32 %17, ptr %18, align 4
  br label %19

19:                                               ; preds = %16, %4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #21
  ret i32 %14
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @sock_common_setsockopt(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2, [2 x i32] %3, i32 noundef %4) #0 {
  %6 = getelementptr inbounds %struct.socket, ptr %0, i32 0, i32 4
  %7 = load ptr, ptr %6, align 16
  %8 = getelementptr inbounds %struct.sock_common, ptr %7, i32 0, i32 8
  %9 = load ptr, ptr %8, align 8
  %10 = getelementptr inbounds %struct.proto, ptr %9, i32 0, i32 9
  %11 = load ptr, ptr %10, align 4
  %12 = tail call i32 %11(ptr noundef %7, i32 noundef %1, i32 noundef %2, [2 x i32] %3, i32 noundef %4) #21
  ret i32 %12
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @sk_common_release(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.sock_common, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.proto, ptr %3, i32 0, i32 7
  %5 = load ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %9, label %7

7:                                                ; preds = %1
  tail call void %5(ptr noundef %0) #21
  %8 = load ptr, ptr %2, align 8
  br label %9

9:                                                ; preds = %7, %1
  %10 = phi ptr [ %8, %7 ], [ %3, %1 ]
  %11 = getelementptr inbounds %struct.proto, ptr %10, i32 0, i32 21
  %12 = load ptr, ptr %11, align 4
  tail call void %12(ptr noundef %0) #21
  %13 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 50
  tail call void @_raw_write_lock_bh(ptr noundef %13) #21
  %14 = getelementptr inbounds %struct.sock_common, ptr %0, i32 0, i32 13
  %15 = load i32, ptr %14, align 4
  %16 = or i32 %15, 1
  store i32 %16, ptr %14, align 4
  %17 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 71
  store ptr null, ptr %17, align 8
  %18 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 17
  store ptr null, ptr %18, align 4
  tail call void @_raw_write_unlock_bh(ptr noundef %13) #21
  %19 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 18
  %20 = load ptr, ptr %19, align 8
  %21 = icmp eq ptr %20, null
  br i1 %21, label %24, label %22, !prof !14

22:                                               ; preds = %9
  %23 = tail call i32 @xfrm_policy_delete(ptr noundef nonnull %20, i32 noundef 3) #21
  store ptr null, ptr %19, align 8
  br label %24

24:                                               ; preds = %22, %9
  %25 = getelementptr %struct.sock, ptr %0, i32 0, i32 18, i32 1
  %26 = load ptr, ptr %25, align 4
  %27 = icmp eq ptr %26, null
  br i1 %27, label %30, label %28, !prof !14

28:                                               ; preds = %24
  %29 = tail call i32 @xfrm_policy_delete(ptr noundef nonnull %26, i32 noundef 4) #21
  store ptr null, ptr %25, align 4
  br label %30

30:                                               ; preds = %28, %24
  %31 = getelementptr inbounds %struct.sock_common, ptr %0, i32 0, i32 19
  tail call void asm sideeffect "dmb ish", "~{memory}"() #21, !srcloc !33
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %31) #21, !srcloc !11
  %32 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %31, ptr %31, i32 1, ptr elementtype(i32) %31) #21, !srcloc !34
  %33 = extractvalue { i32, i32, i32 } %32, 0
  %34 = icmp eq i32 %33, 1
  br i1 %34, label %38, label %35

35:                                               ; preds = %30
  %36 = icmp sgt i32 %33, 0
  br i1 %36, label %47, label %37, !prof !14

37:                                               ; preds = %35
  tail call void @refcount_warn_saturate(ptr noundef %31, i32 noundef 3) #21
  br label %47

38:                                               ; preds = %30
  tail call void asm sideeffect "dmb ish", "~{memory}"() #21, !srcloc !35
  %39 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 23
  tail call void asm sideeffect "dmb ish", "~{memory}"() #21, !srcloc !33
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %39) #21, !srcloc !11
  %40 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %39, ptr %39, i32 1, ptr elementtype(i32) %39) #21, !srcloc !34
  %41 = extractvalue { i32, i32, i32 } %40, 0
  %42 = icmp eq i32 %41, 1
  br i1 %42, label %46, label %43

43:                                               ; preds = %38
  %44 = icmp sgt i32 %41, 0
  br i1 %44, label %47, label %45, !prof !14

45:                                               ; preds = %43
  tail call void @refcount_warn_saturate(ptr noundef %39, i32 noundef 3) #21
  br label %47

46:                                               ; preds = %38
  tail call void asm sideeffect "dmb ish", "~{memory}"() #21, !srcloc !35
  tail call fastcc void @__sk_free(ptr noundef %0) #21
  br label %47

47:                                               ; preds = %46, %45, %43, %37, %35
  ret void
}

; Function Attrs: nofree nounwind null_pointer_is_valid readonly sspstrong uwtable(sync)
define dso_local i32 @sock_prot_inuse_get(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #10 {
  %3 = getelementptr inbounds %struct.proto, ptr %1, i32 0, i32 25
  %4 = load i32, ptr %3, align 4
  %5 = load i32, ptr @nr_cpu_ids, align 4
  %6 = tail call i32 @cpumask_next(i32 noundef -1, ptr noundef nonnull @__cpu_possible_mask) #25
  %7 = icmp ult i32 %6, %5
  br i1 %7, label %8, label %24

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.net, ptr %0, i32 0, i32 29, i32 2
  %10 = load ptr, ptr %9, align 4
  %11 = ptrtoint ptr %10 to i32
  br label %12

12:                                               ; preds = %12, %8
  %13 = phi i32 [ %6, %8 ], [ %22, %12 ]
  %14 = phi i32 [ 0, %8 ], [ %21, %12 ]
  %15 = getelementptr [16 x i32], ptr @__per_cpu_offset, i32 0, i32 %13
  %16 = load i32, ptr %15, align 4
  %17 = add i32 %16, %11
  %18 = inttoptr i32 %17 to ptr
  %19 = getelementptr %struct.prot_inuse, ptr %18, i32 0, i32 1, i32 %4
  %20 = load i32, ptr %19, align 4
  %21 = add i32 %20, %14
  %22 = tail call i32 @cpumask_next(i32 noundef %13, ptr noundef nonnull @__cpu_possible_mask) #25
  %23 = icmp ult i32 %22, %5
  br i1 %23, label %12, label %24

24:                                               ; preds = %12, %2
  %25 = phi i32 [ 0, %2 ], [ %21, %12 ]
  %26 = tail call i32 @llvm.smax.i32(i32 %25, i32 0)
  ret i32 %26
}

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @cpumask_next(i32 noundef, ptr noundef) local_unnamed_addr #11

; Function Attrs: nofree nounwind null_pointer_is_valid readonly sspstrong uwtable(sync)
define dso_local i32 @sock_inuse_get(ptr nocapture noundef readonly %0) #10 {
  %2 = load i32, ptr @nr_cpu_ids, align 4
  %3 = tail call i32 @cpumask_next(i32 noundef -1, ptr noundef nonnull @__cpu_possible_mask) #25
  %4 = icmp ult i32 %3, %2
  br i1 %4, label %5, label %20

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.net, ptr %0, i32 0, i32 29, i32 2
  %7 = load ptr, ptr %6, align 4
  %8 = ptrtoint ptr %7 to i32
  br label %9

9:                                                ; preds = %9, %5
  %10 = phi i32 [ %3, %5 ], [ %18, %9 ]
  %11 = phi i32 [ 0, %5 ], [ %17, %9 ]
  %12 = getelementptr [16 x i32], ptr @__per_cpu_offset, i32 0, i32 %10
  %13 = load i32, ptr %12, align 4
  %14 = add i32 %13, %8
  %15 = inttoptr i32 %14 to ptr
  %16 = load i32, ptr %15, align 4
  %17 = add i32 %16, %11
  %18 = tail call i32 @cpumask_next(i32 noundef %10, ptr noundef nonnull @__cpu_possible_mask) #25
  %19 = icmp ult i32 %18, %2
  br i1 %19, label %9, label %20

20:                                               ; preds = %9, %1
  %21 = phi i32 [ 0, %1 ], [ %17, %9 ]
  ret i32 %21
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @net_inuse_init() #12 section ".init.text" {
  %1 = tail call i32 @register_pernet_subsys(ptr noundef nonnull @net_inuse_ops) #21
  %2 = icmp eq i32 %1, 0
  br i1 %2, label %4, label %3

3:                                                ; preds = %0
  tail call void (ptr, ...) @panic(ptr noundef nonnull @.str.438) #26
  unreachable

4:                                                ; preds = %0
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @proto_register(ptr noundef %0, i32 noundef %1) #0 {
  %3 = icmp eq i32 %1, 0
  br i1 %3, label %53, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.proto, ptr %0, i32 0, i32 50
  %6 = getelementptr inbounds %struct.proto, ptr %0, i32 0, i32 41
  %7 = load i32, ptr %6, align 4
  %8 = getelementptr inbounds %struct.proto, ptr %0, i32 0, i32 42
  %9 = load i32, ptr %8, align 4
  %10 = or i32 %9, 8192
  %11 = getelementptr inbounds %struct.proto, ptr %0, i32 0, i32 43
  %12 = load i32, ptr %11, align 4
  %13 = getelementptr inbounds %struct.proto, ptr %0, i32 0, i32 44
  %14 = load i32, ptr %13, align 4
  %15 = tail call ptr @kmem_cache_create_usercopy(ptr noundef %5, i32 noundef %7, i32 noundef 0, i32 noundef %10, i32 noundef %12, i32 noundef %14, ptr noundef null) #21
  %16 = getelementptr inbounds %struct.proto, ptr %0, i32 0, i32 40
  store ptr %15, ptr %16, align 4
  %17 = icmp eq ptr %15, null
  br i1 %17, label %18, label %20

18:                                               ; preds = %4
  %19 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef %5) #23
  br label %86

20:                                               ; preds = %4
  %21 = getelementptr inbounds %struct.proto, ptr %0, i32 0, i32 46
  %22 = load ptr, ptr %21, align 4
  %23 = icmp eq ptr %22, null
  br i1 %23, label %37, label %24

24:                                               ; preds = %20
  %25 = tail call noalias ptr (i32, ptr, ...) @kasprintf(i32 noundef 3264, ptr noundef nonnull @.str.439, ptr noundef %5) #21
  %26 = getelementptr inbounds %struct.request_sock_ops, ptr %22, i32 0, i32 3
  store ptr %25, ptr %26, align 4
  %27 = icmp eq ptr %25, null
  br i1 %27, label %73, label %28

28:                                               ; preds = %24
  %29 = getelementptr inbounds %struct.request_sock_ops, ptr %22, i32 0, i32 1
  %30 = load i32, ptr %29, align 4
  %31 = load i32, ptr %8, align 4
  %32 = tail call ptr @kmem_cache_create(ptr noundef nonnull %25, i32 noundef %30, i32 noundef 0, i32 noundef %31, ptr noundef null) #21
  %33 = getelementptr inbounds %struct.request_sock_ops, ptr %22, i32 0, i32 2
  store ptr %32, ptr %33, align 4
  %34 = icmp eq ptr %32, null
  br i1 %34, label %35, label %37

35:                                               ; preds = %28
  %36 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.440, ptr noundef %5) #23
  br label %73

37:                                               ; preds = %28, %20
  %38 = getelementptr inbounds %struct.proto, ptr %0, i32 0, i32 47
  %39 = load ptr, ptr %38, align 4
  %40 = icmp eq ptr %39, null
  br i1 %40, label %53, label %41

41:                                               ; preds = %37
  %42 = tail call noalias ptr (i32, ptr, ...) @kasprintf(i32 noundef 3264, ptr noundef nonnull @.str.441, ptr noundef %5) #21
  %43 = getelementptr inbounds %struct.timewait_sock_ops, ptr %39, i32 0, i32 1
  store ptr %42, ptr %43, align 4
  %44 = icmp eq ptr %42, null
  br i1 %44, label %64, label %45

45:                                               ; preds = %41
  %46 = getelementptr inbounds %struct.timewait_sock_ops, ptr %39, i32 0, i32 2
  %47 = load i32, ptr %46, align 4
  %48 = load i32, ptr %8, align 4
  %49 = tail call ptr @kmem_cache_create(ptr noundef nonnull %42, i32 noundef %47, i32 noundef 0, i32 noundef %48, ptr noundef null) #21
  store ptr %49, ptr %39, align 4
  %50 = icmp eq ptr %49, null
  br i1 %50, label %51, label %53

51:                                               ; preds = %45
  %52 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.442, ptr noundef %5) #23
  br label %64

53:                                               ; preds = %45, %37, %2
  tail call void @mutex_lock(ptr noundef nonnull @proto_list_mutex) #21
  %54 = tail call i32 @_find_first_zero_bit_le(ptr noundef nonnull @proto_inuse_idx, i32 noundef 64) #21
  %55 = getelementptr inbounds %struct.proto, ptr %0, i32 0, i32 25
  store i32 %54, ptr %55, align 4
  %56 = icmp eq i32 %54, 63
  br i1 %56, label %62, label %57, !prof !10

57:                                               ; preds = %53
  tail call void @_set_bit(i32 noundef %54, ptr noundef nonnull @proto_inuse_idx) #21
  %58 = getelementptr inbounds %struct.proto, ptr %0, i32 0, i32 51
  %59 = load ptr, ptr @proto_list, align 4
  %60 = getelementptr inbounds %struct.list_head, ptr %59, i32 0, i32 1
  store ptr %58, ptr %60, align 4
  store ptr %59, ptr %58, align 4
  %61 = getelementptr inbounds %struct.proto, ptr %0, i32 0, i32 51, i32 1
  store ptr @proto_list, ptr %61, align 4
  store volatile ptr %58, ptr @proto_list, align 4
  tail call void @mutex_unlock(ptr noundef nonnull @proto_list_mutex) #21
  br label %86

62:                                               ; preds = %53
  %63 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.443) #23
  tail call void @mutex_unlock(ptr noundef nonnull @proto_list_mutex) #21
  br i1 %3, label %86, label %64

64:                                               ; preds = %62, %51, %41
  %65 = phi i32 [ -28, %62 ], [ -105, %51 ], [ -105, %41 ]
  %66 = getelementptr inbounds %struct.proto, ptr %0, i32 0, i32 47
  %67 = load ptr, ptr %66, align 4
  %68 = icmp eq ptr %67, null
  br i1 %68, label %73, label %69

69:                                               ; preds = %64
  %70 = getelementptr inbounds %struct.timewait_sock_ops, ptr %67, i32 0, i32 1
  %71 = load ptr, ptr %70, align 4
  tail call void @kfree(ptr noundef %71) #21
  store ptr null, ptr %70, align 4
  %72 = load ptr, ptr %67, align 4
  tail call void @kmem_cache_destroy(ptr noundef %72) #21
  store ptr null, ptr %67, align 4
  br label %73

73:                                               ; preds = %69, %64, %35, %24
  %74 = phi i32 [ %65, %69 ], [ %65, %64 ], [ -105, %35 ], [ -105, %24 ]
  %75 = getelementptr inbounds %struct.proto, ptr %0, i32 0, i32 46
  %76 = load ptr, ptr %75, align 4
  %77 = icmp eq ptr %76, null
  br i1 %77, label %83, label %78

78:                                               ; preds = %73
  %79 = getelementptr inbounds %struct.request_sock_ops, ptr %76, i32 0, i32 3
  %80 = load ptr, ptr %79, align 4
  tail call void @kfree(ptr noundef %80) #21
  store ptr null, ptr %79, align 4
  %81 = getelementptr inbounds %struct.request_sock_ops, ptr %76, i32 0, i32 2
  %82 = load ptr, ptr %81, align 4
  tail call void @kmem_cache_destroy(ptr noundef %82) #21
  store ptr null, ptr %81, align 4
  br label %83

83:                                               ; preds = %78, %73
  %84 = getelementptr inbounds %struct.proto, ptr %0, i32 0, i32 40
  %85 = load ptr, ptr %84, align 4
  tail call void @kmem_cache_destroy(ptr noundef %85) #21
  store ptr null, ptr %84, align 4
  br label %86

86:                                               ; preds = %83, %62, %57, %18
  %87 = phi i32 [ 0, %57 ], [ -105, %18 ], [ %74, %83 ], [ -28, %62 ]
  ret i32 %87
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kmem_cache_create_usercopy(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #13

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kmem_cache_destroy(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @proto_unregister(ptr nocapture noundef %0) #0 {
  tail call void @mutex_lock(ptr noundef nonnull @proto_list_mutex) #21
  %2 = getelementptr inbounds %struct.proto, ptr %0, i32 0, i32 25
  %3 = load i32, ptr %2, align 4
  %4 = icmp eq i32 %3, 63
  br i1 %4, label %6, label %5

5:                                                ; preds = %1
  tail call void @_clear_bit(i32 noundef %3, ptr noundef nonnull @proto_inuse_idx) #21
  br label %6

6:                                                ; preds = %5, %1
  %7 = getelementptr inbounds %struct.proto, ptr %0, i32 0, i32 51
  %8 = getelementptr inbounds %struct.proto, ptr %0, i32 0, i32 51, i32 1
  %9 = load ptr, ptr %8, align 4
  %10 = load ptr, ptr %7, align 4
  %11 = getelementptr inbounds %struct.list_head, ptr %10, i32 0, i32 1
  store ptr %9, ptr %11, align 4
  store volatile ptr %10, ptr %9, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %7, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %8, align 4
  tail call void @mutex_unlock(ptr noundef nonnull @proto_list_mutex) #21
  %12 = getelementptr inbounds %struct.proto, ptr %0, i32 0, i32 40
  %13 = load ptr, ptr %12, align 4
  tail call void @kmem_cache_destroy(ptr noundef %13) #21
  store ptr null, ptr %12, align 4
  %14 = getelementptr inbounds %struct.proto, ptr %0, i32 0, i32 46
  %15 = load ptr, ptr %14, align 4
  %16 = icmp eq ptr %15, null
  br i1 %16, label %22, label %17

17:                                               ; preds = %6
  %18 = getelementptr inbounds %struct.request_sock_ops, ptr %15, i32 0, i32 3
  %19 = load ptr, ptr %18, align 4
  tail call void @kfree(ptr noundef %19) #21
  store ptr null, ptr %18, align 4
  %20 = getelementptr inbounds %struct.request_sock_ops, ptr %15, i32 0, i32 2
  %21 = load ptr, ptr %20, align 4
  tail call void @kmem_cache_destroy(ptr noundef %21) #21
  store ptr null, ptr %20, align 4
  br label %22

22:                                               ; preds = %17, %6
  %23 = getelementptr inbounds %struct.proto, ptr %0, i32 0, i32 47
  %24 = load ptr, ptr %23, align 4
  %25 = icmp eq ptr %24, null
  br i1 %25, label %30, label %26

26:                                               ; preds = %22
  %27 = getelementptr inbounds %struct.timewait_sock_ops, ptr %24, i32 0, i32 1
  %28 = load ptr, ptr %27, align 4
  tail call void @kfree(ptr noundef %28) #21
  store ptr null, ptr %27, align 4
  %29 = load ptr, ptr %24, align 4
  tail call void @kmem_cache_destroy(ptr noundef %29) #21
  store ptr null, ptr %24, align 4
  br label %30

30:                                               ; preds = %26, %22
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @sock_load_diag_module(i32 noundef %0, i32 noundef %1) #0 {
  %3 = icmp eq i32 %1, 0
  br i1 %3, label %4, label %8

4:                                                ; preds = %2
  %5 = tail call zeroext i1 @sock_is_registered(i32 noundef %0) #21
  br i1 %5, label %6, label %18

6:                                                ; preds = %4
  %7 = tail call i32 (i1, ptr, ...) @__request_module(i1 noundef zeroext true, ptr noundef nonnull @.str.2, i32 noundef 16, i32 noundef 4, i32 noundef %0) #21
  br label %18

8:                                                ; preds = %2
  %9 = icmp eq i32 %0, 2
  %10 = icmp slt i32 %1, 255
  %11 = and i1 %9, %10
  br i1 %11, label %12, label %16

12:                                               ; preds = %8
  %13 = getelementptr [256 x ptr], ptr @inet_protos, i32 0, i32 %1
  %14 = load volatile ptr, ptr %13, align 4
  %15 = icmp eq ptr %14, null
  br i1 %15, label %18, label %16

16:                                               ; preds = %12, %8
  %17 = tail call i32 (i1, ptr, ...) @__request_module(i1 noundef zeroext true, ptr noundef nonnull @.str.3, i32 noundef 16, i32 noundef 4, i32 noundef %0, i32 noundef %1) #21
  br label %18

18:                                               ; preds = %16, %12, %6, %4
  %19 = phi i32 [ %17, %16 ], [ %7, %6 ], [ -2, %4 ], [ -2, %12 ]
  ret i32 %19
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @sock_is_registered(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__request_module(i1 noundef zeroext, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @proto_init() #12 section ".init.text" {
  %1 = tail call i32 @register_pernet_subsys(ptr noundef nonnull @proto_net_ops) #21
  ret i32 %1
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local zeroext i1 @sk_busy_loop_end(ptr noundef %0, i32 noundef %1) #0 {
  %3 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 8
  %4 = load volatile ptr, ptr %3, align 4
  %5 = icmp eq ptr %4, %3
  br i1 %5, label %6, label %17

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 13
  %8 = load volatile i32, ptr %7, align 4
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %17, label %10

10:                                               ; preds = %6
  %11 = add i32 %8, %1
  %12 = tail call i64 @sched_clock() #21
  %13 = lshr i64 %12, 10
  %14 = trunc i64 %13 to i32
  %15 = sub i32 %11, %14
  %16 = icmp slt i32 %15, 0
  br label %17

17:                                               ; preds = %10, %6, %2
  %18 = phi i1 [ true, %2 ], [ %16, %10 ], [ true, %6 ]
  ret i1 %18
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @sock_bind_add(ptr noundef %0, ptr noundef %1, i32 noundef %2) #0 {
  %4 = getelementptr inbounds %struct.sock_common, ptr %0, i32 0, i32 8
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.proto, ptr %5, i32 0, i32 16
  %7 = load ptr, ptr %6, align 4
  %8 = icmp eq ptr %7, null
  br i1 %8, label %11, label %9

9:                                                ; preds = %3
  %10 = tail call i32 %7(ptr noundef %0, ptr noundef %1, i32 noundef %2) #21
  br label %11

11:                                               ; preds = %9, %3
  %12 = phi i32 [ %10, %9 ], [ -95, %3 ]
  ret i32 %12
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_inet_sk_error_report(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_from_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_sock_rcvqueue_full(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree_skb_reason(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #14

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dev_get_by_index(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ethtool_get_phc_vclocks(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @net_disable_timestamp() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dev_get_by_name_rcu(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @net_ratelimit() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @prandom_u32() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pid_vnr(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_to_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__put_cred(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @netdev_get_name(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strlen(ptr nocapture noundef) local_unnamed_addr #15

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @__sock_gen_cookie(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @kmem_cache_alloc(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @try_module_get(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kmem_cache_free(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_waitqueue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__sk_defer_free_flush(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @sk_filter_uncharge(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @put_pid(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @module_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @sock_diag_broadcast_destroy(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @netlink_has_listeners(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__xfrm_sk_clone_policy(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.thread.pointer() #16

; Function Attrs: null_pointer_is_valid
declare dso_local void @percpu_counter_add_batch(ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @tcp_wfree(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__alloc_skb(i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #17

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree_sensitive(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @prepare_to_wait(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @schedule_timeout(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__put_page(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__alloc_pages(i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_bh(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_bh(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__cond_resched() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_sock_exceed_buf_limit(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @page_address(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kmap_high(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kunmap_high(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sock_wake_async(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get_with_offset(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @skb_copy_datagram_iter(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__sock_recv_timestamp(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__sock_recv_wifi_status(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_write_lock_bh(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_write_unlock_bh(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xfrm_policy_delete(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_pernet_subsys(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold noreturn null_pointer_is_valid
declare dso_local void @panic(ptr noundef, ...) local_unnamed_addr #18

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @sock_inuse_init_net(ptr nocapture noundef writeonly %0) #12 section ".init.text" {
  %2 = tail call noalias ptr @__alloc_percpu(i32 noundef 260, i32 noundef 4) #24
  %3 = getelementptr inbounds %struct.net, ptr %0, i32 0, i32 29, i32 2
  store ptr %2, ptr %3, align 4
  %4 = icmp eq ptr %2, null
  %5 = select i1 %4, i32 -12, i32 0
  ret i32 %5
}

; Function Attrs: noinline nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @sock_inuse_exit_net(ptr nocapture noundef readonly %0) #19 section ".ref.text" {
  %2 = getelementptr inbounds %struct.net, ptr %0, i32 0, i32 29, i32 2
  %3 = load ptr, ptr %2, align 4
  tail call void @free_percpu(ptr noundef %3) #21
  ret void
}

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__alloc_percpu(i32 noundef, i32 noundef) local_unnamed_addr #17

; Function Attrs: null_pointer_is_valid
declare dso_local void @free_percpu(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @kasprintf(i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kmem_cache_create(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_find_first_zero_bit_le(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @proto_init_net(ptr nocapture noundef readonly %0) #12 section ".init.text" {
  %2 = getelementptr inbounds %struct.net, ptr %0, i32 0, i32 17
  %3 = load ptr, ptr %2, align 8
  %4 = tail call ptr @proc_create_net_data(ptr noundef nonnull @.str.444, i16 noundef zeroext 292, ptr noundef %3, ptr noundef nonnull @proto_seq_ops, i32 noundef 0, ptr noundef null) #21
  %5 = icmp eq ptr %4, null
  %6 = select i1 %5, i32 -12, i32 0
  ret i32 %6
}

; Function Attrs: noinline nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @proto_exit_net(ptr nocapture noundef readonly %0) #19 section ".ref.text" {
  %2 = getelementptr inbounds %struct.net, ptr %0, i32 0, i32 17
  %3 = load ptr, ptr %2, align 8
  tail call void @remove_proc_entry(ptr noundef nonnull @.str.444, ptr noundef %3) #21
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @proc_create_net_data(ptr noundef, i16 noundef zeroext, ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal ptr @proto_seq_start(ptr nocapture noundef readnone %0, ptr nocapture noundef readonly %1) #0 {
  tail call void @mutex_lock(ptr noundef nonnull @proto_list_mutex) #21
  %3 = load i64, ptr %1, align 8
  %4 = tail call ptr @seq_list_start_head(ptr noundef nonnull @proto_list, i64 noundef %3) #21
  ret ptr %4
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @proto_seq_stop(ptr nocapture noundef readnone %0, ptr nocapture noundef readnone %1) #0 {
  tail call void @mutex_unlock(ptr noundef nonnull @proto_list_mutex) #21
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal ptr @proto_seq_next(ptr nocapture noundef readnone %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = tail call ptr @seq_list_next(ptr noundef %1, ptr noundef nonnull @proto_list, ptr noundef %2) #21
  ret ptr %4
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @proto_seq_show(ptr noundef %0, ptr noundef %1) #0 {
  %3 = icmp eq ptr %1, @proto_list
  br i1 %3, label %4, label %5

4:                                                ; preds = %2
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.445, ptr noundef nonnull @.str.446, ptr noundef nonnull @.str.447, ptr noundef nonnull @.str.448, ptr noundef nonnull @.str.449, ptr noundef nonnull @.str.450, ptr noundef nonnull @.str.451, ptr noundef nonnull @.str.452, ptr noundef nonnull @.str.453, ptr noundef nonnull @.str.454) #21
  br label %135

5:                                                ; preds = %2
  %6 = getelementptr i8, ptr %1, i32 -232
  %7 = getelementptr i8, ptr %1, i32 -68
  %8 = load i32, ptr %7, align 4
  %9 = getelementptr i8, ptr %1, i32 -132
  %10 = load i32, ptr %9, align 4
  %11 = load i32, ptr @nr_cpu_ids, align 4
  %12 = tail call i32 @cpumask_next(i32 noundef -1, ptr noundef nonnull @__cpu_possible_mask) #25
  %13 = icmp ult i32 %12, %11
  br i1 %13, label %14, label %29

14:                                               ; preds = %5
  %15 = load ptr, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 29, i32 2), align 4
  %16 = ptrtoint ptr %15 to i32
  br label %17

17:                                               ; preds = %17, %14
  %18 = phi i32 [ %12, %14 ], [ %27, %17 ]
  %19 = phi i32 [ 0, %14 ], [ %26, %17 ]
  %20 = getelementptr [16 x i32], ptr @__per_cpu_offset, i32 0, i32 %18
  %21 = load i32, ptr %20, align 4
  %22 = add i32 %21, %16
  %23 = inttoptr i32 %22 to ptr
  %24 = getelementptr %struct.prot_inuse, ptr %23, i32 0, i32 1, i32 %10
  %25 = load i32, ptr %24, align 4
  %26 = add i32 %25, %19
  %27 = tail call i32 @cpumask_next(i32 noundef %18, ptr noundef nonnull @__cpu_possible_mask) #25
  %28 = icmp ult i32 %27, %11
  br i1 %28, label %17, label %29

29:                                               ; preds = %17, %5
  %30 = phi i32 [ 0, %5 ], [ %26, %17 ]
  %31 = getelementptr i8, ptr %1, i32 -112
  %32 = load ptr, ptr %31, align 4
  %33 = icmp eq ptr %32, null
  br i1 %33, label %36, label %34

34:                                               ; preds = %29
  %35 = load volatile i32, ptr %32, align 4
  br label %36

36:                                               ; preds = %34, %29
  %37 = phi i32 [ %35, %34 ], [ -1, %29 ]
  %38 = getelementptr i8, ptr %1, i32 -104
  %39 = load ptr, ptr %38, align 4
  %40 = icmp eq ptr %39, null
  br i1 %40, label %45, label %41

41:                                               ; preds = %36
  %42 = load i32, ptr %39, align 4
  %43 = icmp eq i32 %42, 0
  %44 = select i1 %43, ptr @.str.456, ptr @.str.457
  br label %45

45:                                               ; preds = %41, %36
  %46 = phi ptr [ %44, %41 ], [ @.str.459, %36 ]
  %47 = tail call i32 @llvm.smax.i32(i32 %30, i32 0) #21
  %48 = getelementptr i8, ptr %1, i32 -32
  %49 = getelementptr i8, ptr %1, i32 -80
  %50 = load i32, ptr %49, align 4
  %51 = getelementptr i8, ptr %1, i32 -72
  %52 = load ptr, ptr %51, align 4
  %53 = icmp eq ptr %52, null
  %54 = select i1 %53, ptr @.str.456, ptr @.str.457
  %55 = getelementptr i8, ptr %1, i32 -36
  %56 = load ptr, ptr %55, align 4
  %57 = icmp eq ptr %56, null
  %58 = getelementptr inbounds %struct.module, ptr %56, i32 0, i32 2
  %59 = select i1 %57, ptr @.str.458, ptr %58
  %60 = load ptr, ptr %6, align 4
  %61 = icmp eq ptr %60, null
  %62 = select i1 %61, i32 110, i32 121
  %63 = getelementptr i8, ptr %1, i32 -224
  %64 = load ptr, ptr %63, align 4
  %65 = icmp eq ptr %64, null
  %66 = select i1 %65, i32 110, i32 121
  %67 = getelementptr i8, ptr %1, i32 -220
  %68 = load ptr, ptr %67, align 4
  %69 = icmp eq ptr %68, null
  %70 = select i1 %69, i32 110, i32 121
  %71 = getelementptr i8, ptr %1, i32 -216
  %72 = load ptr, ptr %71, align 4
  %73 = icmp eq ptr %72, null
  %74 = select i1 %73, i32 110, i32 121
  %75 = getelementptr i8, ptr %1, i32 -212
  %76 = load ptr, ptr %75, align 4
  %77 = icmp eq ptr %76, null
  %78 = select i1 %77, i32 110, i32 121
  %79 = getelementptr i8, ptr %1, i32 -208
  %80 = load ptr, ptr %79, align 4
  %81 = icmp eq ptr %80, null
  %82 = select i1 %81, i32 110, i32 121
  %83 = getelementptr i8, ptr %1, i32 -204
  %84 = load ptr, ptr %83, align 4
  %85 = icmp eq ptr %84, null
  %86 = select i1 %85, i32 110, i32 121
  %87 = getelementptr i8, ptr %1, i32 -200
  %88 = load ptr, ptr %87, align 4
  %89 = icmp eq ptr %88, null
  %90 = select i1 %89, i32 110, i32 121
  %91 = getelementptr i8, ptr %1, i32 -196
  %92 = load ptr, ptr %91, align 4
  %93 = icmp eq ptr %92, null
  %94 = select i1 %93, i32 110, i32 121
  %95 = getelementptr i8, ptr %1, i32 -192
  %96 = load ptr, ptr %95, align 4
  %97 = icmp eq ptr %96, null
  %98 = select i1 %97, i32 110, i32 121
  %99 = getelementptr i8, ptr %1, i32 -184
  %100 = load ptr, ptr %99, align 4
  %101 = icmp eq ptr %100, null
  %102 = select i1 %101, i32 110, i32 121
  %103 = getelementptr i8, ptr %1, i32 -180
  %104 = load ptr, ptr %103, align 4
  %105 = icmp eq ptr %104, null
  %106 = select i1 %105, i32 110, i32 121
  %107 = getelementptr i8, ptr %1, i32 -176
  %108 = load ptr, ptr %107, align 4
  %109 = icmp eq ptr %108, null
  %110 = select i1 %109, i32 110, i32 121
  %111 = getelementptr i8, ptr %1, i32 -172
  %112 = load ptr, ptr %111, align 4
  %113 = icmp eq ptr %112, null
  %114 = select i1 %113, i32 110, i32 121
  %115 = getelementptr i8, ptr %1, i32 -164
  %116 = load ptr, ptr %115, align 4
  %117 = icmp eq ptr %116, null
  %118 = select i1 %117, i32 110, i32 121
  %119 = getelementptr i8, ptr %1, i32 -152
  %120 = load ptr, ptr %119, align 4
  %121 = icmp eq ptr %120, null
  %122 = select i1 %121, i32 110, i32 121
  %123 = getelementptr i8, ptr %1, i32 -148
  %124 = load ptr, ptr %123, align 4
  %125 = icmp eq ptr %124, null
  %126 = select i1 %125, i32 110, i32 121
  %127 = getelementptr i8, ptr %1, i32 -140
  %128 = load ptr, ptr %127, align 4
  %129 = icmp eq ptr %128, null
  %130 = select i1 %129, i32 110, i32 121
  %131 = getelementptr i8, ptr %1, i32 -120
  %132 = load ptr, ptr %131, align 4
  %133 = icmp eq ptr %132, null
  %134 = select i1 %133, i32 110, i32 121
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.455, ptr noundef %48, i32 noundef %8, i32 noundef %47, i32 noundef %37, ptr noundef nonnull %46, i32 noundef %50, ptr noundef nonnull %54, ptr noundef %59, i32 noundef %62, i32 noundef %66, i32 noundef %70, i32 noundef %74, i32 noundef %78, i32 noundef %82, i32 noundef %86, i32 noundef %90, i32 noundef %94, i32 noundef %98, i32 noundef %102, i32 noundef %106, i32 noundef %110, i32 noundef %114, i32 noundef %118, i32 noundef %122, i32 noundef %126, i32 noundef %130, i32 noundef %134) #21
  br label %135

135:                                              ; preds = %45, %4
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @seq_list_start_head(ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @seq_list_next(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @remove_proc_entry(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @sched_clock() local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #20

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #20

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #20

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.umax.i16(i16, i16) #20

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #20

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.smax.i64(i64, i64) #20

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { argmemonly nofree nounwind willreturn writeonly }
attributes #5 = { argmemonly nofree nounwind willreturn }
attributes #6 = { inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { argmemonly inlinehint nofree nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #10 = { nofree nounwind null_pointer_is_valid readonly sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #11 = { mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #12 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #13 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #14 = { nounwind readonly }
attributes #15 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #16 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #17 = { null_pointer_is_valid allocsize(0) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #18 = { cold noreturn null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #19 = { noinline nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #20 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #21 = { nounwind }
attributes #22 = { nounwind readnone }
attributes #23 = { cold nounwind }
attributes #24 = { nounwind allocsize(0) }
attributes #25 = { nounwind readonly willreturn }
attributes #26 = { cold noreturn nounwind }

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
!9 = !{i8 0, i8 2}
!10 = !{!"branch_weights", i32 1, i32 2000}
!11 = !{i64 752382, i64 2148242353, i64 2148242379, i64 2148242426, i64 2148242448, i64 2148242476, i64 2148242496}
!12 = !{i64 2148254565, i64 2148254591, i64 2148254620, i64 2148254654, i64 2148254685, i64 2148254708}
!13 = !{i64 2148256922, i64 2148256948, i64 2148256977, i64 2148257011, i64 2148257042, i64 2148257065}
!14 = !{!"branch_weights", i32 2000, i32 1}
!15 = !{i64 2157679146, i64 2157679626, i64 2157679183, i64 2157679239, i64 2157679273, i64 2157679297, i64 2157679338, i64 2157679359, i64 2157679387, i64 2157679421}
!16 = !{i64 2157164318}
!17 = !{i64 2157164474}
!18 = !{!"auto-init"}
!19 = !{i64 2151235941, i64 2151235966}
!20 = !{i64 3744561}
!21 = !{i64 3744758}
!22 = !{i64 2151230037}
!23 = !{i64 2157108464}
!24 = !{i64 2157108626}
!25 = !{i64 2153401757, i64 2153402245, i64 2153401794, i64 2153401850, i64 2153401884, i64 2153401908, i64 2153401949, i64 2153401970, i64 2153401998, i64 2153402032}
!26 = !{i64 2148254072}
!27 = !{i64 738951, i64 738976, i64 738998, i64 739014, i64 739026, i64 739046, i64 739070, i64 739086, i64 739098}
!28 = !{i64 2148254198}
!29 = !{i64 2149346566}
!30 = !{i64 2149342390}
!31 = !{i64 2149342465, i64 2149342492, i64 2149342539, i64 2149342561, i64 2149342589, i64 2149342609}
!32 = !{i64 2149369569}
!33 = !{i64 2148356221}
!34 = !{i64 2148258380, i64 2148258412, i64 2148258441, i64 2148258475, i64 2148258506, i64 2148258529}
!35 = !{i64 2150071762}
!36 = !{i64 2149499270}
!37 = !{i64 2149499487}
!38 = !{i64 2155385236}
!39 = !{i64 761829, i64 761846, i64 761870, i64 761896, i64 761914}
!40 = !{i64 2155385555}
!41 = !{i64 2154479037}
!42 = !{i64 666321}
!43 = !{i64 2154496296}
!44 = !{i64 647621, i64 647682}
!45 = !{i64 650638}
!46 = !{i64 2157771078}
!47 = !{i64 764553, i64 764574, i64 764597, i64 764616, i64 764635}
!48 = !{i64 2157771481}
!49 = !{i64 2155373142}
!50 = !{i64 2157793636, i64 2157793916, i64 2157794250, i64 2157794584}
!51 = !{i64 2155405939}
!52 = !{i64 2155406256}
!53 = !{i64 2157798094}
!54 = !{i64 2157798411}
!55 = !{i64 2151236519, i64 2151236544}
!56 = !{i64 2157803861, i64 2157804141, i64 2157804475, i64 2157804809}
!57 = !{i64 2156479993}
!58 = !{i64 2156480041}
!59 = !{i64 2157825674, i64 2157825954, i64 2157826288, i64 2157826622}
!60 = !{i64 2148355220}
!61 = !{i64 2148257606, i64 2148257638, i64 2148257667, i64 2148257701, i64 2148257732, i64 2148257755}
!62 = !{i64 2148355423}
!63 = !{i64 2157782483, i64 2157782763, i64 2157783097, i64 2157783431}
!64 = !{i64 2157706245, i64 2157706525, i64 2157706859, i64 2157707193}
!65 = !{i64 2157875665}
!66 = !{i64 2148256023, i64 2148256055, i64 2148256084, i64 2148256118, i64 2148256149, i64 2148256172}
!67 = !{i64 738445, i64 738469, i64 738490, i64 738507, i64 738524}
!68 = !{i64 752200}
!69 = !{i64 2148352387}
!70 = !{i64 2148255249, i64 2148255281, i64 2148255310, i64 2148255344, i64 2148255375, i64 2148255398}
!71 = !{i64 2148352590}
!72 = !{i64 2157125477}
!73 = !{i64 2157125681}
!74 = !{i64 2149401541}
!75 = !{i64 2158021741}
!76 = !{i64 2149834358}
!77 = !{i64 2149834200}
!78 = !{i64 2149834502}
!79 = !{i64 2149824990}
!80 = !{i64 2149825289}
!81 = !{i64 2149825590}
