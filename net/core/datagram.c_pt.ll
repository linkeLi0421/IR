; ModuleID = '/llk/IR/net/core/datagram.c_pt.bc'
source_filename = "../net/core/datagram.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___skb_wait_for_more_packets:\09\09\09\09\09"
module asm "\09.asciz \09\22__skb_wait_for_more_packets\22\09\09\09\09\09"
module asm "__kstrtabns___skb_wait_for_more_packets:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___skb_try_recv_datagram:\09\09\09\09\09"
module asm "\09.asciz \09\22__skb_try_recv_datagram\22\09\09\09\09\09"
module asm "__kstrtabns___skb_try_recv_datagram:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___skb_recv_datagram:\09\09\09\09\09"
module asm "\09.asciz \09\22__skb_recv_datagram\22\09\09\09\09\09"
module asm "__kstrtabns___skb_recv_datagram:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_skb_recv_datagram:\09\09\09\09\09"
module asm "\09.asciz \09\22skb_recv_datagram\22\09\09\09\09\09"
module asm "__kstrtabns_skb_recv_datagram:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_skb_free_datagram:\09\09\09\09\09"
module asm "\09.asciz \09\22skb_free_datagram\22\09\09\09\09\09"
module asm "__kstrtabns_skb_free_datagram:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___skb_free_datagram_locked:\09\09\09\09\09"
module asm "\09.asciz \09\22__skb_free_datagram_locked\22\09\09\09\09\09"
module asm "__kstrtabns___skb_free_datagram_locked:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___sk_queue_drop_skb:\09\09\09\09\09"
module asm "\09.asciz \09\22__sk_queue_drop_skb\22\09\09\09\09\09"
module asm "__kstrtabns___sk_queue_drop_skb:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_skb_kill_datagram:\09\09\09\09\09"
module asm "\09.asciz \09\22skb_kill_datagram\22\09\09\09\09\09"
module asm "__kstrtabns_skb_kill_datagram:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_skb_copy_and_hash_datagram_iter:\09\09\09\09\09"
module asm "\09.asciz \09\22skb_copy_and_hash_datagram_iter\22\09\09\09\09\09"
module asm "__kstrtabns_skb_copy_and_hash_datagram_iter:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_skb_copy_datagram_iter:\09\09\09\09\09"
module asm "\09.asciz \09\22skb_copy_datagram_iter\22\09\09\09\09\09"
module asm "__kstrtabns_skb_copy_datagram_iter:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_skb_copy_datagram_from_iter:\09\09\09\09\09"
module asm "\09.asciz \09\22skb_copy_datagram_from_iter\22\09\09\09\09\09"
module asm "__kstrtabns_skb_copy_datagram_from_iter:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___zerocopy_sg_from_iter:\09\09\09\09\09"
module asm "\09.asciz \09\22__zerocopy_sg_from_iter\22\09\09\09\09\09"
module asm "__kstrtabns___zerocopy_sg_from_iter:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_zerocopy_sg_from_iter:\09\09\09\09\09"
module asm "\09.asciz \09\22zerocopy_sg_from_iter\22\09\09\09\09\09"
module asm "__kstrtabns_zerocopy_sg_from_iter:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_skb_copy_and_csum_datagram_msg:\09\09\09\09\09"
module asm "\09.asciz \09\22skb_copy_and_csum_datagram_msg\22\09\09\09\09\09"
module asm "__kstrtabns_skb_copy_and_csum_datagram_msg:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_datagram_poll:\09\09\09\09\09"
module asm "\09.asciz \09\22datagram_poll\22\09\09\09\09\09"
module asm "__kstrtabns_datagram_poll:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.tracepoint = type { ptr, %struct.static_key, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.static_key = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.cpumask = type { [1 x i32] }
%struct.wait_queue_entry = type { i32, ptr, ptr, %struct.list_head }
%struct.list_head = type { ptr, ptr }
%struct.sock = type { %struct.sock_common, ptr, i32, i32, %struct.socket_lock_t, %struct.atomic_t, i32, %struct.sk_buff_head, %struct.sk_buff_head, %struct.anon.128, %struct.llist_head, i32, i32, i32, i32, i32, ptr, %union.anon.129, [2 x ptr], ptr, %struct.atomic_t, i32, i32, %struct.refcount_struct, i32, %union.anon.130, %struct.sk_buff_head, i32, i32, i32, i32, i32, %struct.timer_list, i32, i32, i32, i32, %struct.page_frag, i64, i32, i32, i32, i32, i8, i8, i16, i16, i16, i32, ptr, %struct.rwlock_t, i32, i32, i32, i32, %struct.kuid_t, i8, i16, %struct.spinlock, i32, ptr, ptr, i32, i64, %struct.seqlock_t, i16, i8, %struct.atomic_t, %struct.atomic_t, i8, i8, ptr, ptr, %struct.sock_cgroup_data, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.callback_head, %struct.netns_tracker }
%struct.sock_common = type { %union.anon, %union.anon.0, %union.anon.1, i16, i8, i8, i32, %union.anon.3, ptr, %struct.possible_net_t, %struct.in6_addr, %struct.in6_addr, %struct.atomic64_t, %union.anon.124, [0 x i32], %union.anon.125, i16, i16, %union.anon.126, %struct.refcount_struct, [0 x i32], %union.anon.127 }
%union.anon = type { i64 }
%union.anon.0 = type { i32 }
%union.anon.1 = type { i32 }
%union.anon.3 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.possible_net_t = type {}
%struct.in6_addr = type { %union.anon.79 }
%union.anon.79 = type { [4 x i32] }
%struct.atomic64_t = type { i64 }
%union.anon.124 = type { i32 }
%union.anon.125 = type { %struct.hlist_node }
%union.anon.126 = type { i32 }
%union.anon.127 = type { i32 }
%struct.socket_lock_t = type { %struct.spinlock, i32, %struct.wait_queue_head }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.anon.128 = type { %struct.atomic_t, i32, ptr, ptr }
%struct.llist_head = type { ptr }
%union.anon.129 = type { ptr }
%struct.refcount_struct = type { %struct.atomic_t }
%union.anon.130 = type { ptr }
%struct.sk_buff_head = type { %union.anon.65, i32, %struct.spinlock }
%union.anon.65 = type { %struct.anon.66 }
%struct.anon.66 = type { ptr, ptr }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32 }
%struct.page_frag = type { ptr, i16, i16 }
%struct.rwlock_t = type { %struct.arch_rwlock_t }
%struct.arch_rwlock_t = type { i32 }
%struct.kuid_t = type { i32 }
%struct.spinlock = type { %union.anon.7 }
%union.anon.7 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.8 }
%union.anon.8 = type { i32 }
%struct.seqlock_t = type { %struct.seqcount_spinlock, %struct.spinlock }
%struct.seqcount_spinlock = type { %struct.seqcount }
%struct.seqcount = type { i32 }
%struct.sock_cgroup_data = type {}
%struct.callback_head = type { ptr, ptr }
%struct.netns_tracker = type {}
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
%struct.proto = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i8, ptr, i32, i32, i32, i32, ptr, ptr, ptr, %union.anon.123, ptr, [32 x i8], %struct.list_head, ptr }
%union.anon.123 = type { ptr }
%struct.skb_shared_info = type { i8, i8, i8, i8, i16, i16, ptr, %struct.skb_shared_hwtstamps, i32, i32, %struct.atomic_t, ptr, [17 x %struct.bio_vec] }
%struct.skb_shared_hwtstamps = type { i64 }
%struct.bio_vec = type { ptr, i32, i32 }
%struct.iov_iter = type { i8, i8, i8, i32, i32, %union.anon.4, %union.anon.120 }
%union.anon.4 = type { ptr }
%union.anon.120 = type { i64 }
%struct.thread_info = type { i32, i32, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], [4 x i8], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.page = type { i32, %union.anon.5, %union.anon.119, %struct.atomic_t }
%union.anon.5 = type { %struct.anon.6 }
%struct.anon.6 = type { %struct.list_head, ptr, i32, i32 }
%union.anon.119 = type { %struct.atomic_t }
%struct.csum_state = type { i32, i32 }
%struct.msghdr = type { ptr, i32, %struct.iov_iter, %union.anon.122, i8, i32, i32, ptr }
%union.anon.122 = type { ptr }
%struct.socket = type { i32, i16, i32, ptr, ptr, ptr, [40 x i8], %struct.socket_wq }
%struct.socket_wq = type { %struct.wait_queue_head, ptr, i32, %struct.callback_head, [36 x i8] }

@__kstrtab___skb_wait_for_more_packets = external dso_local constant [0 x i8], align 1
@__kstrtabns___skb_wait_for_more_packets = external dso_local constant [0 x i8], align 1
@__ksymtab___skb_wait_for_more_packets = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__skb_wait_for_more_packets to i32), ptr @__kstrtab___skb_wait_for_more_packets, ptr @__kstrtabns___skb_wait_for_more_packets }, section "___ksymtab+__skb_wait_for_more_packets", align 4
@__kstrtab___skb_try_recv_datagram = external dso_local constant [0 x i8], align 1
@__kstrtabns___skb_try_recv_datagram = external dso_local constant [0 x i8], align 1
@__ksymtab___skb_try_recv_datagram = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__skb_try_recv_datagram to i32), ptr @__kstrtab___skb_try_recv_datagram, ptr @__kstrtabns___skb_try_recv_datagram }, section "___ksymtab+__skb_try_recv_datagram", align 4
@__kstrtab___skb_recv_datagram = external dso_local constant [0 x i8], align 1
@__kstrtabns___skb_recv_datagram = external dso_local constant [0 x i8], align 1
@__ksymtab___skb_recv_datagram = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__skb_recv_datagram to i32), ptr @__kstrtab___skb_recv_datagram, ptr @__kstrtabns___skb_recv_datagram }, section "___ksymtab+__skb_recv_datagram", align 4
@__kstrtab_skb_recv_datagram = external dso_local constant [0 x i8], align 1
@__kstrtabns_skb_recv_datagram = external dso_local constant [0 x i8], align 1
@__ksymtab_skb_recv_datagram = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @skb_recv_datagram to i32), ptr @__kstrtab_skb_recv_datagram, ptr @__kstrtabns_skb_recv_datagram }, section "___ksymtab+skb_recv_datagram", align 4
@__kstrtab_skb_free_datagram = external dso_local constant [0 x i8], align 1
@__kstrtabns_skb_free_datagram = external dso_local constant [0 x i8], align 1
@__ksymtab_skb_free_datagram = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @skb_free_datagram to i32), ptr @__kstrtab_skb_free_datagram, ptr @__kstrtabns_skb_free_datagram }, section "___ksymtab+skb_free_datagram", align 4
@__kstrtab___skb_free_datagram_locked = external dso_local constant [0 x i8], align 1
@__kstrtabns___skb_free_datagram_locked = external dso_local constant [0 x i8], align 1
@__ksymtab___skb_free_datagram_locked = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__skb_free_datagram_locked to i32), ptr @__kstrtab___skb_free_datagram_locked, ptr @__kstrtabns___skb_free_datagram_locked }, section "___ksymtab+__skb_free_datagram_locked", align 4
@__kstrtab___sk_queue_drop_skb = external dso_local constant [0 x i8], align 1
@__kstrtabns___sk_queue_drop_skb = external dso_local constant [0 x i8], align 1
@__ksymtab___sk_queue_drop_skb = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__sk_queue_drop_skb to i32), ptr @__kstrtab___sk_queue_drop_skb, ptr @__kstrtabns___sk_queue_drop_skb }, section "___ksymtab+__sk_queue_drop_skb", align 4
@__kstrtab_skb_kill_datagram = external dso_local constant [0 x i8], align 1
@__kstrtabns_skb_kill_datagram = external dso_local constant [0 x i8], align 1
@__ksymtab_skb_kill_datagram = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @skb_kill_datagram to i32), ptr @__kstrtab_skb_kill_datagram, ptr @__kstrtabns_skb_kill_datagram }, section "___ksymtab+skb_kill_datagram", align 4
@__kstrtab_skb_copy_and_hash_datagram_iter = external dso_local constant [0 x i8], align 1
@__kstrtabns_skb_copy_and_hash_datagram_iter = external dso_local constant [0 x i8], align 1
@__ksymtab_skb_copy_and_hash_datagram_iter = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @skb_copy_and_hash_datagram_iter to i32), ptr @__kstrtab_skb_copy_and_hash_datagram_iter, ptr @__kstrtabns_skb_copy_and_hash_datagram_iter }, section "___ksymtab+skb_copy_and_hash_datagram_iter", align 4
@__kstrtab_skb_copy_datagram_iter = external dso_local constant [0 x i8], align 1
@__kstrtabns_skb_copy_datagram_iter = external dso_local constant [0 x i8], align 1
@__ksymtab_skb_copy_datagram_iter = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @skb_copy_datagram_iter to i32), ptr @__kstrtab_skb_copy_datagram_iter, ptr @__kstrtabns_skb_copy_datagram_iter }, section "___ksymtab+skb_copy_datagram_iter", align 4
@.str = private unnamed_addr constant [20 x i8] c"net/core/datagram.c\00", align 1
@__kstrtab_skb_copy_datagram_from_iter = external dso_local constant [0 x i8], align 1
@__kstrtabns_skb_copy_datagram_from_iter = external dso_local constant [0 x i8], align 1
@__ksymtab_skb_copy_datagram_from_iter = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @skb_copy_datagram_from_iter to i32), ptr @__kstrtab_skb_copy_datagram_from_iter, ptr @__kstrtabns_skb_copy_datagram_from_iter }, section "___ksymtab+skb_copy_datagram_from_iter", align 4
@__kstrtab___zerocopy_sg_from_iter = external dso_local constant [0 x i8], align 1
@__kstrtabns___zerocopy_sg_from_iter = external dso_local constant [0 x i8], align 1
@__ksymtab___zerocopy_sg_from_iter = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__zerocopy_sg_from_iter to i32), ptr @__kstrtab___zerocopy_sg_from_iter, ptr @__kstrtabns___zerocopy_sg_from_iter }, section "___ksymtab+__zerocopy_sg_from_iter", align 4
@__kstrtab_zerocopy_sg_from_iter = external dso_local constant [0 x i8], align 1
@__kstrtabns_zerocopy_sg_from_iter = external dso_local constant [0 x i8], align 1
@__ksymtab_zerocopy_sg_from_iter = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @zerocopy_sg_from_iter to i32), ptr @__kstrtab_zerocopy_sg_from_iter, ptr @__kstrtabns_zerocopy_sg_from_iter }, section "___ksymtab+zerocopy_sg_from_iter", align 4
@__kstrtab_skb_copy_and_csum_datagram_msg = external dso_local constant [0 x i8], align 1
@__kstrtabns_skb_copy_and_csum_datagram_msg = external dso_local constant [0 x i8], align 1
@__ksymtab_skb_copy_and_csum_datagram_msg = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @skb_copy_and_csum_datagram_msg to i32), ptr @__kstrtab_skb_copy_and_csum_datagram_msg, ptr @__kstrtabns_skb_copy_and_csum_datagram_msg }, section "___ksymtab+skb_copy_and_csum_datagram_msg", align 4
@__kstrtab_datagram_poll = external dso_local constant [0 x i8], align 1
@__kstrtabns_datagram_poll = external dso_local constant [0 x i8], align 1
@__ksymtab_datagram_poll = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @datagram_poll to i32), ptr @__kstrtab_datagram_poll, ptr @__kstrtabns_datagram_poll }, section "___ksymtab+datagram_poll", align 4
@movable_zone = external dso_local local_unnamed_addr global i32, align 4
@__tracepoint_skb_copy_datagram_iovec = external dso_local global %struct.tracepoint, align 4
@__cpu_online_mask = external dso_local global %struct.cpumask, align 4
@check_copy_size.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.2 = private unnamed_addr constant [28 x i8] c"include/linux/thread_info.h\00", align 1
@llvm.compiler.used = appending global [15 x ptr] [ptr @__ksymtab___sk_queue_drop_skb, ptr @__ksymtab___skb_free_datagram_locked, ptr @__ksymtab___skb_recv_datagram, ptr @__ksymtab___skb_try_recv_datagram, ptr @__ksymtab___skb_wait_for_more_packets, ptr @__ksymtab___zerocopy_sg_from_iter, ptr @__ksymtab_datagram_poll, ptr @__ksymtab_skb_copy_and_csum_datagram_msg, ptr @__ksymtab_skb_copy_and_hash_datagram_iter, ptr @__ksymtab_skb_copy_datagram_from_iter, ptr @__ksymtab_skb_copy_datagram_iter, ptr @__ksymtab_skb_free_datagram, ptr @__ksymtab_skb_kill_datagram, ptr @__ksymtab_skb_recv_datagram, ptr @__ksymtab_zerocopy_sg_from_iter], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__skb_wait_for_more_packets(ptr noundef %0, ptr noundef %1, ptr nocapture noundef writeonly %2, ptr nocapture noundef %3, ptr noundef readnone %4) #0 {
  %6 = alloca %struct.wait_queue_entry, align 4
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %6) #6
  %7 = getelementptr inbounds %struct.wait_queue_entry, ptr %6, i32 0, i32 1
  %8 = tail call ptr @llvm.thread.pointer() #6
  store i32 0, ptr %6, align 4
  store ptr %8, ptr %7, align 4
  %9 = getelementptr inbounds %struct.wait_queue_entry, ptr %6, i32 0, i32 2
  store ptr @receiver_wake_function, ptr %9, align 4
  %10 = getelementptr inbounds %struct.wait_queue_entry, ptr %6, i32 0, i32 3
  store ptr %10, ptr %10, align 4
  %11 = getelementptr inbounds %struct.wait_queue_entry, ptr %6, i32 0, i32 3, i32 1
  store ptr %10, ptr %11, align 4
  %12 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 17
  %13 = load volatile ptr, ptr %12, align 4
  %14 = call zeroext i1 @prepare_to_wait_exclusive(ptr noundef %13, ptr noundef nonnull %6, i32 noundef 1) #6
  %15 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 51
  %16 = load i32, ptr %15, align 4
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %23, label %18, !prof !8

18:                                               ; preds = %5
  call void asm sideeffect "dmb ish", "~{memory}"() #6, !srcloc !9
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %15) #6, !srcloc !10
  %19 = call { i32, i32 } asm sideeffect "@\09__xchg4\0A1:\09ldrex\09$0, [$3]\0A\09strex\09$1, $2, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,r,r,~{memory},~{cc}"(i32 0, ptr %15) #6, !srcloc !11
  %20 = extractvalue { i32, i32 } %19, 0
  call void asm sideeffect "dmb ish", "~{memory}"() #6, !srcloc !12
  %21 = sub i32 0, %20
  %22 = icmp eq i32 %20, 0
  br i1 %22, label %23, label %62

23:                                               ; preds = %18, %5
  %24 = getelementptr inbounds %struct.anon.66, ptr %1, i32 0, i32 1
  %25 = load volatile ptr, ptr %24, align 4
  %26 = icmp eq ptr %25, %4
  br i1 %26, label %27, label %55

27:                                               ; preds = %23
  %28 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 66
  %29 = load i8, ptr %28, align 2
  %30 = and i8 %29, 1
  %31 = icmp eq i8 %30, 0
  br i1 %31, label %32, label %64

32:                                               ; preds = %27
  %33 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 45
  %34 = load i16, ptr %33, align 2
  %35 = and i16 %34, -5
  %36 = icmp eq i16 %35, 1
  br i1 %36, label %37, label %44

37:                                               ; preds = %32
  %38 = getelementptr inbounds %struct.sock_common, ptr %0, i32 0, i32 4
  %39 = load volatile i8, ptr %38, align 2
  %40 = icmp eq i8 %39, 1
  br i1 %40, label %44, label %41

41:                                               ; preds = %37
  %42 = load volatile i8, ptr %38, align 2
  %43 = icmp eq i8 %42, 10
  br i1 %43, label %44, label %62

44:                                               ; preds = %41, %37, %32
  %45 = load volatile i32, ptr %8, align 4
  %46 = and i32 %45, 256
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %48, label %58, !prof !8

48:                                               ; preds = %44
  %49 = load volatile i32, ptr %8, align 4
  %50 = and i32 %49, 1
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %52, label %58

52:                                               ; preds = %48
  %53 = load i32, ptr %3, align 4
  %54 = call i32 @schedule_timeout(i32 noundef %53) #6
  store i32 %54, ptr %3, align 4
  br label %55

55:                                               ; preds = %64, %62, %52, %23
  %56 = phi i32 [ %63, %62 ], [ 0, %23 ], [ 1, %64 ], [ 0, %52 ]
  %57 = load volatile ptr, ptr %12, align 4
  call void @finish_wait(ptr noundef %57, ptr noundef nonnull %6) #6
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %6) #6
  ret i32 %56

58:                                               ; preds = %48, %44
  %59 = load i32, ptr %3, align 4
  %60 = icmp eq i32 %59, 2147483647
  %61 = select i1 %60, i32 -512, i32 -4
  br label %62

62:                                               ; preds = %58, %41, %18
  %63 = phi i32 [ %21, %18 ], [ %61, %58 ], [ -107, %41 ]
  store i32 %63, ptr %2, align 4
  br label %55

64:                                               ; preds = %27
  store i32 0, ptr %2, align 4
  br label %55
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @receiver_wake_function(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef %3) #0 {
  %5 = icmp ne ptr %3, null
  %6 = ptrtoint ptr %3 to i32
  %7 = and i32 %6, 9
  %8 = icmp eq i32 %7, 0
  %9 = and i1 %5, %8
  br i1 %9, label %12, label %10

10:                                               ; preds = %4
  %11 = tail call i32 @autoremove_wake_function(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef %3) #6
  br label %12

12:                                               ; preds = %10, %4
  %13 = phi i32 [ %11, %10 ], [ 0, %4 ]
  ret i32 %13
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @prepare_to_wait_exclusive(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @schedule_timeout(i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @finish_wait(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @__skb_try_recv_from_queue(ptr nocapture readnone %0, ptr noundef %1, i32 noundef %2, ptr nocapture noundef %3, ptr nocapture noundef writeonly %4, ptr nocapture noundef writeonly %5) local_unnamed_addr #0 {
  %7 = and i32 %2, 2
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %13, label %9

9:                                                ; preds = %6
  %10 = load i32, ptr %3, align 4
  %11 = icmp sgt i32 %10, -1
  br i1 %11, label %12, label %13, !prof !13

12:                                               ; preds = %9
  br label %13

13:                                               ; preds = %12, %9, %6
  %14 = phi i1 [ true, %12 ], [ false, %9 ], [ false, %6 ]
  %15 = phi i32 [ %10, %12 ], [ 0, %9 ], [ 0, %6 ]
  %16 = getelementptr inbounds %struct.anon.66, ptr %1, i32 0, i32 1
  %17 = load ptr, ptr %16, align 4
  store ptr %17, ptr %5, align 4
  %18 = load ptr, ptr %1, align 4
  %19 = icmp eq ptr %18, %1
  br i1 %19, label %104, label %20

20:                                               ; preds = %38, %13
  %21 = phi ptr [ %40, %38 ], [ %18, %13 ]
  %22 = phi i32 [ %39, %38 ], [ %15, %13 ]
  br i1 %8, label %93, label %23

23:                                               ; preds = %20
  br i1 %14, label %27, label %24

24:                                               ; preds = %23
  %25 = getelementptr inbounds %struct.sk_buff, ptr %18, i32 0, i32 5
  %26 = load i32, ptr %25, align 8
  br label %42

27:                                               ; preds = %23
  %28 = getelementptr inbounds %struct.sk_buff, ptr %21, i32 0, i32 5
  %29 = load i32, ptr %28, align 8
  %30 = icmp ult i32 %22, %29
  br i1 %30, label %80, label %31

31:                                               ; preds = %27
  %32 = icmp eq i32 %22, 0
  br i1 %32, label %33, label %38

33:                                               ; preds = %31
  %34 = getelementptr inbounds %struct.sk_buff, ptr %21, i32 0, i32 11
  %35 = load i8, ptr %34, align 2
  %36 = and i8 %35, 16
  %37 = icmp eq i8 %36, 0
  br i1 %37, label %42, label %38

38:                                               ; preds = %33, %31
  %39 = sub i32 %22, %29
  %40 = load ptr, ptr %21, align 4
  %41 = icmp eq ptr %40, %1
  br i1 %41, label %104, label %20

42:                                               ; preds = %33, %24
  %43 = phi i32 [ %26, %24 ], [ %29, %33 ]
  %44 = phi ptr [ %18, %24 ], [ %21, %33 ]
  %45 = phi i32 [ %15, %24 ], [ 0, %33 ]
  %46 = icmp eq i32 %43, 0
  br i1 %46, label %47, label %80

47:                                               ; preds = %42
  %48 = getelementptr inbounds %struct.sk_buff, ptr %44, i32 0, i32 11
  %49 = load i8, ptr %48, align 2
  %50 = and i8 %49, 16
  %51 = icmp eq i8 %50, 0
  br i1 %51, label %52, label %74

52:                                               ; preds = %47
  %53 = getelementptr inbounds %struct.sk_buff, ptr %44, i32 0, i32 19
  %54 = load volatile i32, ptr %53, align 4
  %55 = icmp eq i32 %54, 1
  br i1 %55, label %69, label %56

56:                                               ; preds = %52
  %57 = tail call ptr @skb_clone(ptr noundef %44, i32 noundef 2592) #6
  %58 = icmp eq ptr %57, null
  br i1 %58, label %77, label %59

59:                                               ; preds = %56
  %60 = getelementptr inbounds %struct.anon.43, ptr %44, i32 0, i32 1
  %61 = load ptr, ptr %60, align 4
  store ptr %57, ptr %61, align 8
  %62 = load ptr, ptr %44, align 8
  %63 = getelementptr inbounds %struct.anon.43, ptr %62, i32 0, i32 1
  store ptr %57, ptr %63, align 4
  %64 = load ptr, ptr %60, align 4
  %65 = getelementptr inbounds %struct.anon.43, ptr %57, i32 0, i32 1
  store ptr %64, ptr %65, align 4
  %66 = load ptr, ptr %44, align 8
  store ptr %66, ptr %57, align 8
  tail call void @consume_skb(ptr noundef %44) #6
  %67 = getelementptr inbounds %struct.sk_buff, ptr %57, i32 0, i32 11
  %68 = load i8, ptr %67, align 2
  br label %69

69:                                               ; preds = %59, %52
  %70 = phi i8 [ %68, %59 ], [ %49, %52 ]
  %71 = phi ptr [ %57, %59 ], [ %44, %52 ]
  %72 = getelementptr inbounds %struct.sk_buff, ptr %71, i32 0, i32 11
  %73 = or i8 %70, 16
  store i8 %73, ptr %72, align 2
  br label %74

74:                                               ; preds = %69, %47
  %75 = phi ptr [ %71, %69 ], [ %44, %47 ]
  %76 = icmp ugt ptr %75, inttoptr (i32 -4096 to ptr)
  br i1 %76, label %77, label %80

77:                                               ; preds = %74, %56
  %78 = phi ptr [ %75, %74 ], [ inttoptr (i32 -12 to ptr), %56 ]
  %79 = ptrtoint ptr %78 to i32
  store i32 %79, ptr %4, align 4
  br label %104

80:                                               ; preds = %74, %42, %27
  %81 = phi i32 [ %45, %42 ], [ %45, %74 ], [ %22, %27 ]
  %82 = phi ptr [ %44, %42 ], [ %75, %74 ], [ %21, %27 ]
  %83 = getelementptr inbounds %struct.sk_buff, ptr %82, i32 0, i32 19
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %83) #6, !srcloc !10
  %84 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %83, ptr %83, i32 1, ptr elementtype(i32) %83) #6, !srcloc !14
  %85 = extractvalue { i32, i32, i32 } %84, 0
  %86 = icmp eq i32 %85, 0
  br i1 %86, label %91, label %87, !prof !13

87:                                               ; preds = %80
  %88 = add i32 %85, 1
  %89 = or i32 %88, %85
  %90 = icmp sgt i32 %89, -1
  br i1 %90, label %101, label %91, !prof !8

91:                                               ; preds = %87, %80
  %92 = phi i32 [ 2, %80 ], [ 1, %87 ]
  tail call void @refcount_warn_saturate(ptr noundef %83, i32 noundef %92) #6
  br label %101

93:                                               ; preds = %20
  %94 = getelementptr inbounds %struct.sk_buff_head, ptr %1, i32 0, i32 1
  %95 = load i32, ptr %94, align 4
  %96 = add i32 %95, -1
  store volatile i32 %96, ptr %94, align 4
  %97 = load ptr, ptr %18, align 8
  %98 = getelementptr inbounds %struct.anon.43, ptr %18, i32 0, i32 1
  %99 = load ptr, ptr %98, align 4
  store ptr null, ptr %98, align 4
  store ptr null, ptr %18, align 8
  %100 = getelementptr inbounds %struct.anon.43, ptr %97, i32 0, i32 1
  store volatile ptr %99, ptr %100, align 4
  store volatile ptr %97, ptr %99, align 8
  br label %101

101:                                              ; preds = %93, %91, %87
  %102 = phi i32 [ %15, %93 ], [ %81, %87 ], [ %81, %91 ]
  %103 = phi ptr [ %18, %93 ], [ %82, %87 ], [ %82, %91 ]
  store i32 %102, ptr %3, align 4
  br label %104

104:                                              ; preds = %101, %77, %38, %13
  %105 = phi ptr [ %103, %101 ], [ null, %77 ], [ null, %13 ], [ null, %38 ]
  ret ptr %105
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @__skb_try_recv_datagram(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr nocapture noundef %3, ptr nocapture noundef writeonly %4, ptr nocapture noundef %5) #0 {
  %7 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #6
  %8 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 51
  %9 = load i32, ptr %8, align 4
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %12, !prof !8

11:                                               ; preds = %6
  store i32 0, ptr %7, align 4
  br label %17

12:                                               ; preds = %6
  tail call void asm sideeffect "dmb ish", "~{memory}"() #6, !srcloc !9
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %8) #6, !srcloc !10
  %13 = tail call { i32, i32 } asm sideeffect "@\09__xchg4\0A1:\09ldrex\09$0, [$3]\0A\09strex\09$1, $2, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,r,r,~{memory},~{cc}"(i32 0, ptr %8) #6, !srcloc !11
  %14 = extractvalue { i32, i32 } %13, 0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #6, !srcloc !12
  %15 = sub i32 0, %14
  store i32 %15, ptr %7, align 4
  %16 = icmp eq i32 %14, 0
  br i1 %16, label %17, label %59

17:                                               ; preds = %12, %11
  %18 = getelementptr inbounds %struct.sk_buff_head, ptr %1, i32 0, i32 2
  %19 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 13
  %20 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 14
  %21 = and i32 %2, 64
  %22 = icmp eq i32 %21, 0
  %23 = select i1 %22, ptr @sk_busy_loop_end, ptr null
  %24 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 56
  %25 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 57
  %26 = getelementptr inbounds %struct.anon.66, ptr %1, i32 0, i32 1
  br label %27

27:                                               ; preds = %55, %17
  %28 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %18) #6
  %29 = call ptr @__skb_try_recv_from_queue(ptr undef, ptr noundef %1, i32 noundef %2, ptr noundef %3, ptr noundef nonnull %7, ptr noundef %5)
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %18, i32 noundef %28) #6
  %30 = load i32, ptr %7, align 4
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %32, label %59

32:                                               ; preds = %27
  %33 = icmp eq ptr %29, null
  br i1 %33, label %34, label %61

34:                                               ; preds = %32
  %35 = load volatile i32, ptr %19, align 4
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %59, label %37

37:                                               ; preds = %34
  %38 = tail call ptr @llvm.thread.pointer() #6
  %39 = load volatile i32, ptr %38, align 4
  %40 = and i32 %39, 256
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %42, label %59, !prof !8

42:                                               ; preds = %37
  %43 = load volatile i32, ptr %38, align 4
  %44 = and i32 %43, 1
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %46, label %59

46:                                               ; preds = %42
  %47 = load volatile i32, ptr %20, align 8
  %48 = icmp ugt i32 %47, 16
  br i1 %48, label %49, label %55

49:                                               ; preds = %46
  %50 = load volatile i8, ptr %24, align 8
  %51 = icmp ne i8 %50, 0
  %52 = load volatile i16, ptr %25, align 2
  %53 = icmp eq i16 %52, 0
  %54 = select i1 %53, i16 8, i16 %52
  tail call void @napi_busy_loop(i32 noundef %47, ptr noundef %23, ptr noundef %0, i1 noundef zeroext %51, i16 noundef zeroext %54) #6
  br label %55

55:                                               ; preds = %49, %46
  %56 = load volatile ptr, ptr %26, align 4
  %57 = load ptr, ptr %5, align 4
  %58 = icmp eq ptr %56, %57
  br i1 %58, label %59, label %27

59:                                               ; preds = %55, %42, %37, %34, %27, %12
  %60 = phi i32 [ %15, %12 ], [ -11, %37 ], [ -11, %34 ], [ -11, %42 ], [ -11, %55 ], [ %30, %27 ]
  store i32 %60, ptr %4, align 4
  br label %61

61:                                               ; preds = %59, %32
  %62 = phi ptr [ null, %59 ], [ %29, %32 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #6
  ret ptr %62
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @__skb_recv_datagram(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr nocapture noundef %3, ptr nocapture noundef %4) #0 {
  %6 = alloca ptr, align 4
  %7 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #6
  store ptr null, ptr %6, align 4, !annotation !15
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #6
  %8 = and i32 %2, 64
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %13

10:                                               ; preds = %5
  %11 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 62
  %12 = load i32, ptr %11, align 4
  br label %13

13:                                               ; preds = %10, %5
  %14 = phi i32 [ %12, %10 ], [ 0, %5 ]
  store i32 %14, ptr %7, align 4
  br label %15

15:                                               ; preds = %24, %13
  %16 = call ptr @__skb_try_recv_datagram(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef nonnull %6)
  %17 = icmp eq ptr %16, null
  br i1 %17, label %18, label %28

18:                                               ; preds = %15
  %19 = load i32, ptr %4, align 4
  %20 = icmp eq i32 %19, -11
  %21 = load i32, ptr %7, align 4
  %22 = icmp ne i32 %21, 0
  %23 = select i1 %20, i1 %22, i1 false
  br i1 %23, label %24, label %28

24:                                               ; preds = %18
  %25 = load ptr, ptr %6, align 4
  %26 = call i32 @__skb_wait_for_more_packets(ptr noundef %0, ptr noundef %1, ptr noundef %4, ptr noundef nonnull %7, ptr noundef %25)
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %15, label %28

28:                                               ; preds = %24, %18, %15
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #6
  ret ptr %16
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @skb_recv_datagram(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr nocapture noundef %3) #0 {
  %5 = alloca ptr, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #6
  store i32 0, ptr %7, align 4
  %8 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 8
  %9 = icmp eq i32 %2, 0
  %10 = select i1 %9, i32 0, i32 64
  %11 = or i32 %10, %1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #6
  store ptr null, ptr %5, align 4, !annotation !15
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #6
  %12 = and i32 %11, 64
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %17

14:                                               ; preds = %4
  %15 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 62
  %16 = load i32, ptr %15, align 4
  br label %17

17:                                               ; preds = %14, %4
  %18 = phi i32 [ %16, %14 ], [ 0, %4 ]
  store i32 %18, ptr %6, align 4
  br label %19

19:                                               ; preds = %28, %17
  %20 = call ptr @__skb_try_recv_datagram(ptr noundef %0, ptr noundef %8, i32 noundef %11, ptr noundef nonnull %7, ptr noundef %3, ptr noundef nonnull %5) #6
  %21 = icmp eq ptr %20, null
  br i1 %21, label %22, label %32

22:                                               ; preds = %19
  %23 = load i32, ptr %3, align 4
  %24 = icmp eq i32 %23, -11
  %25 = load i32, ptr %6, align 4
  %26 = icmp ne i32 %25, 0
  %27 = select i1 %24, i1 %26, i1 false
  br i1 %27, label %28, label %32

28:                                               ; preds = %22
  %29 = load ptr, ptr %5, align 4
  %30 = call i32 @__skb_wait_for_more_packets(ptr noundef %0, ptr noundef %8, ptr noundef %3, ptr noundef nonnull %6, ptr noundef %29) #6
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %19, label %32

32:                                               ; preds = %28, %22, %19
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #6
  ret ptr %20
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @skb_free_datagram(ptr noundef %0, ptr noundef %1) #0 {
  tail call void @consume_skb(ptr noundef %1) #6
  %3 = getelementptr inbounds %struct.sock_common, ptr %0, i32 0, i32 8
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.proto, ptr %4, i32 0, i32 30
  %6 = load ptr, ptr %5, align 4
  %7 = icmp eq ptr %6, null
  br i1 %7, label %28, label %8

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 11
  %10 = load i32, ptr %9, align 4
  %11 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 12
  %12 = load i32, ptr %11, align 8
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %22, label %14, !prof !8

14:                                               ; preds = %8
  %15 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 22
  %16 = load i32, ptr %15, align 4
  %17 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 9
  %18 = load volatile i32, ptr %17, align 4
  %19 = add i32 %16, %18
  %20 = sub i32 %12, %19
  %21 = tail call i32 @llvm.smax.i32(i32 %20, i32 0) #6
  br label %22

22:                                               ; preds = %14, %8
  %23 = phi i32 [ %21, %14 ], [ 0, %8 ]
  %24 = sub i32 %10, %23
  %25 = icmp sgt i32 %24, 4096
  br i1 %25, label %26, label %28

26:                                               ; preds = %22
  %27 = add nsw i32 %24, -1
  tail call void @__sk_mem_reclaim(ptr noundef %0, i32 noundef %27) #6
  br label %28

28:                                               ; preds = %26, %22, %2
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @consume_skb(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @__skb_free_datagram_locked(ptr noundef %0, ptr noundef %1, i32 noundef %2) #0 {
  %4 = icmp eq ptr %1, null
  br i1 %4, label %17, label %5, !prof !13

5:                                                ; preds = %3
  %6 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 19
  %7 = load volatile i32, ptr %6, align 4
  %8 = icmp eq i32 %7, 1
  tail call void asm sideeffect "dmb ish", "~{memory}"() #6
  br i1 %8, label %24, label %9, !prof !8

9:                                                ; preds = %5
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %6) #6, !srcloc !10
  %10 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %6, ptr %6, i32 1, ptr elementtype(i32) %6) #6, !srcloc !16
  %11 = extractvalue { i32, i32, i32 } %10, 0
  %12 = icmp eq i32 %11, 1
  br i1 %12, label %16, label %13

13:                                               ; preds = %9
  %14 = icmp sgt i32 %11, 0
  br i1 %14, label %17, label %15, !prof !8

15:                                               ; preds = %13
  tail call void @refcount_warn_saturate(ptr noundef %6, i32 noundef 3) #6
  br label %17

16:                                               ; preds = %9
  tail call void asm sideeffect "dmb ish", "~{memory}"() #6, !srcloc !17
  br label %24

17:                                               ; preds = %15, %13, %3
  %18 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 27
  %19 = load volatile i32, ptr %18, align 4
  %20 = icmp sgt i32 %19, -1
  br i1 %20, label %21, label %74, !prof !13

21:                                               ; preds = %17
  %22 = sub i32 %19, %2
  %23 = tail call i32 @llvm.smax.i32(i32 %22, i32 0) #6
  store volatile i32 %23, ptr %18, align 4
  br label %74

24:                                               ; preds = %16, %5
  %25 = tail call zeroext i1 @__lock_sock_fast(ptr noundef %0) #6
  %26 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 27
  %27 = load volatile i32, ptr %26, align 4
  %28 = icmp sgt i32 %27, -1
  br i1 %28, label %29, label %32, !prof !13

29:                                               ; preds = %24
  %30 = sub i32 %27, %2
  %31 = tail call i32 @llvm.smax.i32(i32 %30, i32 0) #6
  store volatile i32 %31, ptr %26, align 4
  br label %32

32:                                               ; preds = %29, %24
  %33 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 4, i32 0, i32 1
  %34 = load ptr, ptr %33, align 4
  %35 = icmp eq ptr %34, null
  br i1 %35, label %38, label %36

36:                                               ; preds = %32
  tail call void %34(ptr noundef nonnull %1) #6
  store ptr null, ptr %33, align 4
  %37 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 1
  store ptr null, ptr %37, align 4
  br label %43

38:                                               ; preds = %32
  %39 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 1
  %40 = load ptr, ptr %39, align 4
  %41 = icmp eq ptr %40, null
  br i1 %41, label %43, label %42, !prof !8

42:                                               ; preds = %38
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/skbuff.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2859, 0\0A.popsection", ""() #6, !srcloc !18
  unreachable

43:                                               ; preds = %38, %36
  %44 = getelementptr inbounds %struct.sock_common, ptr %0, i32 0, i32 8
  %45 = load ptr, ptr %44, align 8
  %46 = getelementptr inbounds %struct.proto, ptr %45, i32 0, i32 30
  %47 = load ptr, ptr %46, align 4
  %48 = icmp eq ptr %47, null
  br i1 %48, label %69, label %49

49:                                               ; preds = %43
  %50 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 11
  %51 = load i32, ptr %50, align 4
  %52 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 12
  %53 = load i32, ptr %52, align 8
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %63, label %55, !prof !8

55:                                               ; preds = %49
  %56 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 22
  %57 = load i32, ptr %56, align 4
  %58 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 9
  %59 = load volatile i32, ptr %58, align 4
  %60 = add i32 %57, %59
  %61 = sub i32 %53, %60
  %62 = tail call i32 @llvm.smax.i32(i32 %61, i32 0) #6
  br label %63

63:                                               ; preds = %55, %49
  %64 = phi i32 [ %62, %55 ], [ 0, %49 ]
  %65 = sub i32 %51, %64
  %66 = icmp sgt i32 %65, 4096
  br i1 %66, label %67, label %69

67:                                               ; preds = %63
  %68 = add nsw i32 %65, -1
  tail call void @__sk_mem_reclaim(ptr noundef %0, i32 noundef %68) #6
  br label %69

69:                                               ; preds = %67, %63, %43
  br i1 %25, label %70, label %71

70:                                               ; preds = %69
  tail call void @release_sock(ptr noundef %0) #6
  br label %73

71:                                               ; preds = %69
  %72 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 4
  tail call void @_raw_spin_unlock_bh(ptr noundef %72) #6
  br label %73

73:                                               ; preds = %71, %70
  tail call void @__kfree_skb(ptr noundef nonnull %1) #6
  br label %74

74:                                               ; preds = %73, %21, %17
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__kfree_skb(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__sk_queue_drop_skb(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef readonly %4) #0 {
  %6 = and i32 %3, 2
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %30, label %8

8:                                                ; preds = %5
  %9 = getelementptr inbounds %struct.sk_buff_head, ptr %1, i32 0, i32 2
  tail call void @_raw_spin_lock_bh(ptr noundef %9) #6
  %10 = load ptr, ptr %2, align 8
  %11 = icmp eq ptr %10, null
  br i1 %11, label %28, label %12

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct.sk_buff_head, ptr %1, i32 0, i32 1
  %14 = load i32, ptr %13, align 4
  %15 = add i32 %14, -1
  store volatile i32 %15, ptr %13, align 4
  %16 = load ptr, ptr %2, align 8
  %17 = getelementptr inbounds %struct.anon.43, ptr %2, i32 0, i32 1
  %18 = load ptr, ptr %17, align 4
  store ptr null, ptr %17, align 4
  store ptr null, ptr %2, align 8
  %19 = getelementptr inbounds %struct.anon.43, ptr %16, i32 0, i32 1
  store volatile ptr %18, ptr %19, align 4
  store volatile ptr %16, ptr %18, align 8
  %20 = getelementptr inbounds %struct.sk_buff, ptr %2, i32 0, i32 19
  tail call void asm sideeffect "dmb ish", "~{memory}"() #6, !srcloc !19
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %20) #6, !srcloc !10
  %21 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %20, ptr %20, i32 1, ptr elementtype(i32) %20) #6, !srcloc !16
  %22 = extractvalue { i32, i32, i32 } %21, 0
  %23 = icmp slt i32 %22, 2
  br i1 %23, label %24, label %25, !prof !13

24:                                               ; preds = %12
  tail call void @refcount_warn_saturate(ptr noundef %20, i32 noundef 4) #6
  br label %25

25:                                               ; preds = %24, %12
  %26 = icmp eq ptr %4, null
  br i1 %26, label %28, label %27

27:                                               ; preds = %25
  tail call void %4(ptr noundef %0, ptr noundef %2) #6
  br label %28

28:                                               ; preds = %27, %25, %8
  %29 = phi i32 [ -2, %8 ], [ 0, %27 ], [ 0, %25 ]
  tail call void @_raw_spin_unlock_bh(ptr noundef %9) #6
  br label %30

30:                                               ; preds = %28, %5
  %31 = phi i32 [ %29, %28 ], [ 0, %5 ]
  %32 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 5
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %32) #6, !srcloc !10
  %33 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %32, ptr %32, i32 1, ptr elementtype(i32) %32) #6, !srcloc !20
  ret i32 %31
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @skb_kill_datagram(ptr noundef %0, ptr noundef %1, i32 noundef %2) #0 {
  %4 = and i32 %2, 2
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %25, label %6

6:                                                ; preds = %3
  %7 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 8, i32 2
  tail call void @_raw_spin_lock_bh(ptr noundef %7) #6
  %8 = load ptr, ptr %1, align 8
  %9 = icmp eq ptr %8, null
  br i1 %9, label %23, label %10

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 8, i32 1
  %12 = load i32, ptr %11, align 4
  %13 = add i32 %12, -1
  store volatile i32 %13, ptr %11, align 4
  %14 = load ptr, ptr %1, align 8
  %15 = getelementptr inbounds %struct.anon.43, ptr %1, i32 0, i32 1
  %16 = load ptr, ptr %15, align 4
  store ptr null, ptr %15, align 4
  store ptr null, ptr %1, align 8
  %17 = getelementptr inbounds %struct.anon.43, ptr %14, i32 0, i32 1
  store volatile ptr %16, ptr %17, align 4
  store volatile ptr %14, ptr %16, align 8
  %18 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 19
  tail call void asm sideeffect "dmb ish", "~{memory}"() #6, !srcloc !19
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %18) #6, !srcloc !10
  %19 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %18, ptr %18, i32 1, ptr elementtype(i32) %18) #6, !srcloc !16
  %20 = extractvalue { i32, i32, i32 } %19, 0
  %21 = icmp slt i32 %20, 2
  br i1 %21, label %22, label %23, !prof !13

22:                                               ; preds = %10
  tail call void @refcount_warn_saturate(ptr noundef %18, i32 noundef 4) #6
  br label %23

23:                                               ; preds = %22, %10, %6
  %24 = phi i32 [ -2, %6 ], [ 0, %22 ], [ 0, %10 ]
  tail call void @_raw_spin_unlock_bh(ptr noundef %7) #6
  br label %25

25:                                               ; preds = %23, %3
  %26 = phi i32 [ %24, %23 ], [ 0, %3 ]
  %27 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 5
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %27) #6, !srcloc !10
  %28 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %27, ptr %27, i32 1, ptr elementtype(i32) %27) #6, !srcloc !20
  tail call void @kfree_skb_reason(ptr noundef %1, i32 noundef 0) #6
  %29 = getelementptr inbounds %struct.sock_common, ptr %0, i32 0, i32 8
  %30 = load ptr, ptr %29, align 8
  %31 = getelementptr inbounds %struct.proto, ptr %30, i32 0, i32 30
  %32 = load ptr, ptr %31, align 4
  %33 = icmp eq ptr %32, null
  br i1 %33, label %54, label %34

34:                                               ; preds = %25
  %35 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 11
  %36 = load i32, ptr %35, align 4
  %37 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 12
  %38 = load i32, ptr %37, align 8
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %48, label %40, !prof !8

40:                                               ; preds = %34
  %41 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 22
  %42 = load i32, ptr %41, align 4
  %43 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 9
  %44 = load volatile i32, ptr %43, align 4
  %45 = add i32 %42, %44
  %46 = sub i32 %38, %45
  %47 = tail call i32 @llvm.smax.i32(i32 %46, i32 0) #6
  br label %48

48:                                               ; preds = %40, %34
  %49 = phi i32 [ %47, %40 ], [ 0, %34 ]
  %50 = sub i32 %36, %49
  %51 = icmp sgt i32 %50, 4096
  br i1 %51, label %52, label %54

52:                                               ; preds = %48
  %53 = add nsw i32 %50, -1
  tail call void @__sk_mem_reclaim(ptr noundef %0, i32 noundef %53) #6
  br label %54

54:                                               ; preds = %52, %48, %25
  ret i32 %26
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @skb_copy_and_hash_datagram_iter(ptr nocapture noundef readonly %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4) #0 {
  %6 = tail call fastcc i32 @__skb_datagram_iter(ptr noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, i1 noundef zeroext true, ptr noundef nonnull @hash_and_copy_to_iter, ptr noundef %4)
  ret i32 %6
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @__skb_datagram_iter(ptr nocapture noundef readonly %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, i1 noundef zeroext %4, ptr nocapture noundef readonly %5, ptr noundef %6) unnamed_addr #0 {
  %8 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 5
  %9 = load i32, ptr %8, align 8
  %10 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 6
  %11 = load i32, ptr %10, align 4
  %12 = sub i32 %9, %11
  %13 = sub i32 %12, %1
  %14 = icmp sgt i32 %13, 0
  br i1 %14, label %15, label %26

15:                                               ; preds = %7
  %16 = tail call i32 @llvm.smin.i32(i32 %13, i32 %3)
  %17 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 17
  %18 = load ptr, ptr %17, align 4
  %19 = getelementptr i8, ptr %18, i32 %1
  %20 = tail call i32 %5(ptr noundef %19, i32 noundef %16, ptr noundef %6, ptr noundef %2) #6, !callees !21
  %21 = add i32 %20, %1
  %22 = icmp eq i32 %20, %16
  br i1 %22, label %23, label %142

23:                                               ; preds = %15
  %24 = sub i32 %3, %16
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %148, label %26

26:                                               ; preds = %23, %7
  %27 = phi i32 [ %24, %23 ], [ %3, %7 ]
  %28 = phi i32 [ %21, %23 ], [ %1, %7 ]
  %29 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 15
  %30 = load ptr, ptr %29, align 4
  %31 = getelementptr inbounds %struct.skb_shared_info, ptr %30, i32 0, i32 2
  %32 = load i8, ptr %31, align 2
  %33 = icmp eq i8 %32, 0
  br i1 %33, label %98, label %34

34:                                               ; preds = %89, %26
  %35 = phi ptr [ %93, %89 ], [ %30, %26 ]
  %36 = phi i32 [ %90, %89 ], [ %28, %26 ]
  %37 = phi i32 [ %92, %89 ], [ 0, %26 ]
  %38 = phi i32 [ %47, %89 ], [ %12, %26 ]
  %39 = phi i32 [ %91, %89 ], [ %27, %26 ]
  %40 = getelementptr %struct.skb_shared_info, ptr %35, i32 0, i32 12, i32 %37
  %41 = add i32 %36, %39
  %42 = icmp sgt i32 %38, %41
  br i1 %42, label %43, label %44, !prof !13

43:                                               ; preds = %34
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 439, i32 noundef 9, ptr noundef null) #6
  br label %44

44:                                               ; preds = %43, %34
  %45 = getelementptr %struct.skb_shared_info, ptr %35, i32 0, i32 12, i32 %37, i32 1
  %46 = load i32, ptr %45, align 4
  %47 = add i32 %46, %38
  %48 = sub i32 %47, %36
  %49 = icmp sgt i32 %48, 0
  br i1 %49, label %50, label %89

50:                                               ; preds = %44
  %51 = load ptr, ptr %40, align 4
  %52 = load i32, ptr %51, align 4
  %53 = lshr i32 %52, 30
  %54 = icmp eq i32 %53, 2
  br i1 %54, label %62, label %55

55:                                               ; preds = %50
  %56 = icmp ne i32 %53, 3
  %57 = load i32, ptr @movable_zone, align 4
  %58 = icmp ne i32 %57, 2
  %59 = select i1 %56, i1 true, i1 %58
  br i1 %59, label %60, label %62

60:                                               ; preds = %55
  %61 = tail call ptr @page_address(ptr noundef %51) #6
  br label %64

62:                                               ; preds = %55, %50
  %63 = tail call ptr @kmap_high(ptr noundef %51) #6
  br label %64

64:                                               ; preds = %62, %60
  %65 = phi ptr [ %63, %62 ], [ %61, %60 ]
  %66 = tail call i32 @llvm.smin.i32(i32 %48, i32 %39)
  %67 = getelementptr %struct.skb_shared_info, ptr %35, i32 0, i32 12, i32 %37, i32 2
  %68 = load i32, ptr %67, align 4
  %69 = getelementptr i8, ptr %65, i32 %68
  %70 = getelementptr i8, ptr %69, i32 %36
  %71 = sub i32 0, %38
  %72 = getelementptr i8, ptr %70, i32 %71
  %73 = tail call i32 %5(ptr noundef %72, i32 noundef %66, ptr noundef %6, ptr noundef %2) #6, !callees !21
  %74 = load i32, ptr %51, align 4
  %75 = lshr i32 %74, 30
  %76 = icmp eq i32 %75, 2
  br i1 %76, label %82, label %77

77:                                               ; preds = %64
  %78 = icmp ne i32 %75, 3
  %79 = load i32, ptr @movable_zone, align 4
  %80 = icmp ne i32 %79, 2
  %81 = select i1 %78, i1 true, i1 %80
  br i1 %81, label %83, label %82

82:                                               ; preds = %77, %64
  tail call void @kunmap_high(ptr noundef %51) #6
  br label %83

83:                                               ; preds = %82, %77
  %84 = add i32 %73, %36
  %85 = icmp eq i32 %73, %66
  br i1 %85, label %86, label %142

86:                                               ; preds = %83
  %87 = sub i32 %39, %66
  %88 = icmp eq i32 %87, 0
  br i1 %88, label %148, label %89

89:                                               ; preds = %86, %44
  %90 = phi i32 [ %84, %86 ], [ %36, %44 ]
  %91 = phi i32 [ %87, %86 ], [ %39, %44 ]
  %92 = add nuw nsw i32 %37, 1
  %93 = load ptr, ptr %29, align 4
  %94 = getelementptr inbounds %struct.skb_shared_info, ptr %93, i32 0, i32 2
  %95 = load i8, ptr %94, align 2
  %96 = zext i8 %95 to i32
  %97 = icmp ult i32 %92, %96
  br i1 %97, label %34, label %98

98:                                               ; preds = %89, %26
  %99 = phi i32 [ %27, %26 ], [ %91, %89 ]
  %100 = phi i32 [ %12, %26 ], [ %47, %89 ]
  %101 = phi i32 [ %28, %26 ], [ %90, %89 ]
  %102 = phi ptr [ %30, %26 ], [ %93, %89 ]
  %103 = getelementptr inbounds %struct.skb_shared_info, ptr %102, i32 0, i32 6
  %104 = load ptr, ptr %103, align 8
  %105 = icmp eq ptr %104, null
  br i1 %105, label %135, label %106

106:                                              ; preds = %130, %98
  %107 = phi ptr [ %133, %130 ], [ %104, %98 ]
  %108 = phi i32 [ %132, %130 ], [ %101, %98 ]
  %109 = phi i32 [ %117, %130 ], [ %100, %98 ]
  %110 = phi i32 [ %131, %130 ], [ %99, %98 ]
  %111 = add i32 %108, %110
  %112 = icmp sgt i32 %109, %111
  br i1 %112, label %113, label %114, !prof !13

113:                                              ; preds = %106
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 464, i32 noundef 9, ptr noundef null) #6
  br label %114

114:                                              ; preds = %113, %106
  %115 = getelementptr inbounds %struct.sk_buff, ptr %107, i32 0, i32 5
  %116 = load i32, ptr %115, align 8
  %117 = add i32 %116, %109
  %118 = sub i32 %117, %108
  %119 = icmp sgt i32 %118, 0
  br i1 %119, label %120, label %130

120:                                              ; preds = %114
  %121 = tail call i32 @llvm.smin.i32(i32 %118, i32 %110)
  %122 = sub i32 %108, %109
  %123 = tail call fastcc i32 @__skb_datagram_iter(ptr noundef nonnull %107, i32 noundef %122, ptr noundef %2, i32 noundef %121, i1 noundef zeroext %4, ptr noundef %5, ptr noundef %6)
  %124 = icmp eq i32 %123, 0
  br i1 %124, label %125, label %139

125:                                              ; preds = %120
  %126 = sub i32 %110, %121
  %127 = icmp eq i32 %126, 0
  br i1 %127, label %148, label %128

128:                                              ; preds = %125
  %129 = add i32 %121, %108
  br label %130

130:                                              ; preds = %128, %114
  %131 = phi i32 [ %126, %128 ], [ %110, %114 ]
  %132 = phi i32 [ %129, %128 ], [ %108, %114 ]
  %133 = load ptr, ptr %107, align 8
  %134 = icmp eq ptr %133, null
  br i1 %134, label %135, label %106

135:                                              ; preds = %130, %98
  %136 = phi i32 [ %99, %98 ], [ %131, %130 ]
  %137 = phi i32 [ %101, %98 ], [ %132, %130 ]
  %138 = icmp eq i32 %136, 0
  br i1 %138, label %148, label %139

139:                                              ; preds = %144, %142, %135, %120
  %140 = phi i32 [ %143, %142 ], [ %143, %144 ], [ %137, %135 ], [ %108, %120 ]
  %141 = sub i32 %140, %1
  tail call void @iov_iter_revert(ptr noundef %2, i32 noundef %141) #6
  br label %148

142:                                              ; preds = %83, %15
  %143 = phi i32 [ %21, %15 ], [ %84, %83 ]
  br i1 %4, label %139, label %144

144:                                              ; preds = %142
  %145 = getelementptr inbounds %struct.iov_iter, ptr %2, i32 0, i32 4
  %146 = load i32, ptr %145, align 8
  %147 = icmp eq i32 %146, 0
  br i1 %147, label %148, label %139

148:                                              ; preds = %144, %139, %135, %125, %86, %23
  %149 = phi i32 [ -14, %139 ], [ 0, %23 ], [ 0, %135 ], [ 0, %144 ], [ 0, %125 ], [ 0, %86 ]
  ret i32 %149
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hash_and_copy_to_iter(ptr noundef, i32 noundef, ptr noundef, ptr noundef) #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @skb_copy_datagram_iter(ptr noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3) #0 {
  %5 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_skb_copy_datagram_iovec, i32 0, i32 1), align 4
  %6 = icmp sgt i32 %5, 0
  br i1 %6, label %7, label %20

7:                                                ; preds = %4
  %8 = tail call ptr @llvm.thread.pointer() #6
  %9 = getelementptr inbounds %struct.thread_info, ptr %8, i32 0, i32 2
  %10 = load i32, ptr %9, align 8
  %11 = lshr i32 %10, 5
  %12 = getelementptr i32, ptr @__cpu_online_mask, i32 %11
  %13 = load volatile i32, ptr %12, align 4
  %14 = and i32 %10, 31
  %15 = shl nuw i32 1, %14
  %16 = and i32 %15, %13
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %20, label %18

18:                                               ; preds = %7
  tail call void asm sideeffect "", "~{memory}"() #6, !srcloc !22
  %19 = tail call i32 @__traceiter_skb_copy_datagram_iovec(ptr noundef null, ptr noundef %0, i32 noundef %3) #6
  tail call void asm sideeffect "", "~{memory}"() #6, !srcloc !23
  br label %20

20:                                               ; preds = %18, %7, %4
  %21 = tail call fastcc i32 @__skb_datagram_iter(ptr noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, i1 noundef zeroext false, ptr noundef nonnull @simple_copy_to_iter, ptr noundef null)
  ret i32 %21
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @simple_copy_to_iter(ptr noundef %0, i32 noundef %1, ptr nocapture noundef readnone %2, ptr noundef %3) #0 {
  %5 = icmp slt i32 %1, 0
  %6 = load i1, ptr @check_copy_size.__already_done, align 1
  %7 = xor i1 %6, true
  %8 = select i1 %5, i1 %7, i1 false
  br i1 %8, label %9, label %10, !prof !13

9:                                                ; preds = %4
  store i1 true, ptr @check_copy_size.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 230, i32 noundef 9, ptr noundef null) #6
  br label %10

10:                                               ; preds = %9, %4
  br i1 %5, label %13, label %11, !prof !13

11:                                               ; preds = %10
  %12 = tail call i32 @_copy_to_iter(ptr noundef %0, i32 noundef %1, ptr noundef %3) #6
  br label %13

13:                                               ; preds = %11, %10
  %14 = phi i32 [ %12, %11 ], [ 0, %10 ]
  ret i32 %14
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @skb_copy_datagram_from_iter(ptr nocapture noundef readonly %0, i32 noundef %1, ptr noundef %2, i32 noundef %3) #0 {
  %5 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 5
  %6 = load i32, ptr %5, align 8
  %7 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 6
  %8 = load i32, ptr %7, align 4
  %9 = sub i32 %6, %8
  %10 = sub i32 %9, %1
  %11 = icmp sgt i32 %10, 0
  br i1 %11, label %12, label %33

12:                                               ; preds = %4
  %13 = tail call i32 @llvm.smin.i32(i32 %10, i32 %3)
  %14 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 17
  %15 = load ptr, ptr %14, align 4
  %16 = getelementptr i8, ptr %15, i32 %1
  %17 = icmp slt i32 %13, 0
  %18 = load i1, ptr @check_copy_size.__already_done, align 1
  %19 = xor i1 %18, true
  %20 = select i1 %17, i1 %19, i1 false
  br i1 %20, label %21, label %22, !prof !13

21:                                               ; preds = %12
  store i1 true, ptr @check_copy_size.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 230, i32 noundef 9, ptr noundef null) #6
  br label %22

22:                                               ; preds = %21, %12
  br i1 %17, label %25, label %23, !prof !13

23:                                               ; preds = %22
  %24 = tail call i32 @_copy_from_iter(ptr noundef %16, i32 noundef %13, ptr noundef %2) #6
  br label %25

25:                                               ; preds = %23, %22
  %26 = phi i32 [ %24, %23 ], [ 0, %22 ]
  %27 = icmp eq i32 %26, %13
  br i1 %27, label %28, label %120

28:                                               ; preds = %25
  %29 = sub i32 %3, %13
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %121, label %31

31:                                               ; preds = %28
  %32 = add i32 %13, %1
  br label %33

33:                                               ; preds = %31, %4
  %34 = phi i32 [ %29, %31 ], [ %3, %4 ]
  %35 = phi i32 [ %32, %31 ], [ %1, %4 ]
  %36 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 15
  %37 = load ptr, ptr %36, align 4
  %38 = getelementptr inbounds %struct.skb_shared_info, ptr %37, i32 0, i32 2
  %39 = load i8, ptr %38, align 2
  %40 = icmp eq i8 %39, 0
  br i1 %40, label %80, label %41

41:                                               ; preds = %71, %33
  %42 = phi ptr [ %75, %71 ], [ %37, %33 ]
  %43 = phi i32 [ %73, %71 ], [ %35, %33 ]
  %44 = phi i32 [ %74, %71 ], [ 0, %33 ]
  %45 = phi i32 [ %54, %71 ], [ %9, %33 ]
  %46 = phi i32 [ %72, %71 ], [ %34, %33 ]
  %47 = getelementptr %struct.skb_shared_info, ptr %42, i32 0, i32 12, i32 %44
  %48 = add i32 %43, %46
  %49 = icmp sgt i32 %45, %48
  br i1 %49, label %50, label %51, !prof !13

50:                                               ; preds = %41
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 571, i32 noundef 9, ptr noundef null) #6
  br label %51

51:                                               ; preds = %50, %41
  %52 = getelementptr %struct.skb_shared_info, ptr %42, i32 0, i32 12, i32 %44, i32 1
  %53 = load i32, ptr %52, align 4
  %54 = add i32 %53, %45
  %55 = sub i32 %54, %43
  %56 = icmp sgt i32 %55, 0
  br i1 %56, label %57, label %71

57:                                               ; preds = %51
  %58 = tail call i32 @llvm.smin.i32(i32 %55, i32 %46)
  %59 = load ptr, ptr %47, align 4
  %60 = getelementptr %struct.skb_shared_info, ptr %42, i32 0, i32 12, i32 %44, i32 2
  %61 = load i32, ptr %60, align 4
  %62 = sub i32 %43, %45
  %63 = add i32 %62, %61
  %64 = tail call i32 @copy_page_from_iter(ptr noundef %59, i32 noundef %63, i32 noundef %58, ptr noundef %2) #6
  %65 = icmp eq i32 %64, %58
  br i1 %65, label %66, label %120

66:                                               ; preds = %57
  %67 = sub i32 %46, %58
  %68 = icmp eq i32 %67, 0
  br i1 %68, label %121, label %69

69:                                               ; preds = %66
  %70 = add i32 %58, %43
  br label %71

71:                                               ; preds = %69, %51
  %72 = phi i32 [ %46, %51 ], [ %67, %69 ]
  %73 = phi i32 [ %43, %51 ], [ %70, %69 ]
  %74 = add nuw nsw i32 %44, 1
  %75 = load ptr, ptr %36, align 4
  %76 = getelementptr inbounds %struct.skb_shared_info, ptr %75, i32 0, i32 2
  %77 = load i8, ptr %76, align 2
  %78 = zext i8 %77 to i32
  %79 = icmp ult i32 %74, %78
  br i1 %79, label %41, label %80

80:                                               ; preds = %71, %33
  %81 = phi i32 [ %34, %33 ], [ %72, %71 ]
  %82 = phi i32 [ %9, %33 ], [ %54, %71 ]
  %83 = phi i32 [ %35, %33 ], [ %73, %71 ]
  %84 = phi ptr [ %37, %33 ], [ %75, %71 ]
  %85 = getelementptr inbounds %struct.skb_shared_info, ptr %84, i32 0, i32 6
  %86 = load ptr, ptr %85, align 8
  %87 = icmp eq ptr %86, null
  br i1 %87, label %117, label %88

88:                                               ; preds = %112, %80
  %89 = phi ptr [ %115, %112 ], [ %86, %80 ]
  %90 = phi i32 [ %114, %112 ], [ %83, %80 ]
  %91 = phi i32 [ %99, %112 ], [ %82, %80 ]
  %92 = phi i32 [ %113, %112 ], [ %81, %80 ]
  %93 = add i32 %90, %92
  %94 = icmp sgt i32 %91, %93
  br i1 %94, label %95, label %96, !prof !13

95:                                               ; preds = %88
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 595, i32 noundef 9, ptr noundef null) #6
  br label %96

96:                                               ; preds = %95, %88
  %97 = getelementptr inbounds %struct.sk_buff, ptr %89, i32 0, i32 5
  %98 = load i32, ptr %97, align 8
  %99 = add i32 %98, %91
  %100 = sub i32 %99, %90
  %101 = icmp sgt i32 %100, 0
  br i1 %101, label %102, label %112

102:                                              ; preds = %96
  %103 = tail call i32 @llvm.smin.i32(i32 %100, i32 %92)
  %104 = sub i32 %90, %91
  %105 = tail call i32 @skb_copy_datagram_from_iter(ptr noundef nonnull %89, i32 noundef %104, ptr noundef %2, i32 noundef %103)
  %106 = icmp eq i32 %105, 0
  br i1 %106, label %107, label %120

107:                                              ; preds = %102
  %108 = sub i32 %92, %103
  %109 = icmp eq i32 %108, 0
  br i1 %109, label %121, label %110

110:                                              ; preds = %107
  %111 = add i32 %103, %90
  br label %112

112:                                              ; preds = %110, %96
  %113 = phi i32 [ %108, %110 ], [ %92, %96 ]
  %114 = phi i32 [ %111, %110 ], [ %90, %96 ]
  %115 = load ptr, ptr %89, align 8
  %116 = icmp eq ptr %115, null
  br i1 %116, label %117, label %88

117:                                              ; preds = %112, %80
  %118 = phi i32 [ %81, %80 ], [ %113, %112 ]
  %119 = icmp eq i32 %118, 0
  br i1 %119, label %121, label %120

120:                                              ; preds = %117, %102, %57, %25
  br label %121

121:                                              ; preds = %120, %117, %107, %66, %28
  %122 = phi i32 [ -14, %120 ], [ 0, %28 ], [ 0, %117 ], [ 0, %107 ], [ 0, %66 ]
  ret i32 %122
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @copy_page_from_iter(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__zerocopy_sg_from_iter(ptr noundef %0, ptr nocapture noundef %1, ptr noundef %2, i32 noundef %3) #0 {
  %5 = alloca [17 x ptr], align 4
  %6 = alloca i32, align 4
  %7 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 15
  %8 = icmp eq i32 %3, 0
  br i1 %8, label %179, label %9

9:                                                ; preds = %4
  %10 = load ptr, ptr %7, align 4
  %11 = getelementptr inbounds %struct.skb_shared_info, ptr %10, i32 0, i32 2
  %12 = load i8, ptr %11, align 2
  %13 = zext i8 %12 to i32
  %14 = getelementptr inbounds %struct.iov_iter, ptr %2, i32 0, i32 4
  %15 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 6
  %16 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 5
  %17 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 18
  %18 = icmp eq ptr %0, null
  %19 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 45
  %20 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 22
  %21 = getelementptr inbounds %struct.sock_common, ptr %0, i32 0, i32 8
  %22 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 11
  %23 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 1
  %24 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 11
  br label %25

25:                                               ; preds = %176, %9
  %26 = phi i32 [ %3, %9 ], [ %37, %176 ]
  %27 = phi i32 [ %13, %9 ], [ %177, %176 ]
  %28 = load i32, ptr %14, align 8
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %179, label %30

30:                                               ; preds = %25
  call void @llvm.lifetime.start.p0(i64 68, ptr nonnull %5) #6
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(68) %5, i8 0, i32 68, i1 false), !annotation !15
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #6
  store i32 0, ptr %6, align 4, !annotation !15
  %31 = icmp eq i32 %27, 17
  br i1 %31, label %174, label %32

32:                                               ; preds = %30
  %33 = sub i32 17, %27
  %34 = call i32 @iov_iter_get_pages(ptr noundef %2, ptr noundef nonnull %5, i32 noundef %26, i32 noundef %33, ptr noundef nonnull %6) #6
  %35 = icmp slt i32 %34, 0
  br i1 %35, label %174, label %36

36:                                               ; preds = %32
  call void @iov_iter_advance(ptr noundef %2, i32 noundef %34) #6
  %37 = sub i32 %26, %34
  %38 = load i32, ptr %6, align 4
  %39 = add nuw i32 %34, 4095
  %40 = add i32 %39, %38
  %41 = and i32 %40, -4096
  %42 = load i32, ptr %15, align 4
  %43 = add i32 %42, %34
  store i32 %43, ptr %15, align 4
  %44 = load i32, ptr %16, align 8
  %45 = add i32 %44, %34
  store i32 %45, ptr %16, align 8
  %46 = load i32, ptr %17, align 8
  %47 = add i32 %46, %41
  store i32 %47, ptr %17, align 8
  br i1 %18, label %66, label %48

48:                                               ; preds = %36
  %49 = load i16, ptr %19, align 2
  %50 = icmp eq i16 %49, 1
  br i1 %50, label %51, label %66

51:                                               ; preds = %48
  %52 = load i32, ptr %20, align 4
  %53 = add i32 %52, %41
  store volatile i32 %53, ptr %20, align 4
  %54 = load ptr, ptr %7, align 4
  %55 = load i8, ptr %54, align 8
  %56 = and i8 %55, 4
  %57 = icmp eq i8 %56, 0
  br i1 %57, label %58, label %78

58:                                               ; preds = %51
  %59 = load ptr, ptr %21, align 8
  %60 = getelementptr inbounds %struct.proto, ptr %59, i32 0, i32 30
  %61 = load ptr, ptr %60, align 4
  %62 = icmp eq ptr %61, null
  br i1 %62, label %78, label %63

63:                                               ; preds = %58
  %64 = load i32, ptr %22, align 4
  %65 = sub i32 %64, %41
  store i32 %65, ptr %22, align 4
  br label %78

66:                                               ; preds = %48, %36
  %67 = load ptr, ptr %23, align 4
  %68 = getelementptr inbounds %struct.sock, ptr %67, i32 0, i32 23
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %68) #6, !srcloc !10
  %69 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %68, ptr %68, i32 %41, ptr elementtype(i32) %68) #6, !srcloc !14
  %70 = extractvalue { i32, i32, i32 } %69, 0
  %71 = icmp eq i32 %70, 0
  br i1 %71, label %76, label %72, !prof !13

72:                                               ; preds = %66
  %73 = add i32 %70, %41
  %74 = or i32 %73, %70
  %75 = icmp sgt i32 %74, -1
  br i1 %75, label %78, label %76, !prof !8

76:                                               ; preds = %72, %66
  %77 = phi i32 [ 2, %66 ], [ 1, %72 ]
  call void @refcount_warn_saturate(ptr noundef %68, i32 noundef %77) #6
  br label %78

78:                                               ; preds = %76, %72, %63, %58, %51
  %79 = icmp eq i32 %34, 0
  br i1 %79, label %176, label %80

80:                                               ; preds = %78
  %81 = load i32, ptr %6, align 4
  br label %82

82:                                               ; preds = %164, %80
  %83 = phi i32 [ 0, %164 ], [ %81, %80 ]
  %84 = phi i32 [ %167, %164 ], [ %27, %80 ]
  %85 = phi i32 [ %110, %164 ], [ 0, %80 ]
  %86 = phi i32 [ %166, %164 ], [ 0, %80 ]
  %87 = phi i32 [ %109, %164 ], [ %34, %80 ]
  %88 = phi ptr [ %165, %164 ], [ null, %80 ]
  %89 = sub i32 4096, %83
  %90 = call i32 @llvm.smin.i32(i32 %87, i32 %89)
  %91 = getelementptr [17 x ptr], ptr %5, i32 0, i32 %85
  %92 = load ptr, ptr %91, align 4
  %93 = getelementptr inbounds %struct.page, ptr %92, i32 0, i32 1
  %94 = load volatile i32, ptr %93, align 4
  %95 = and i32 %94, 1
  %96 = icmp eq i32 %95, 0
  br i1 %96, label %100, label %97, !prof !8

97:                                               ; preds = %82
  %98 = add i32 %94, -1
  %99 = ptrtoint ptr %92 to i32
  br label %102

100:                                              ; preds = %82
  %101 = ptrtoint ptr %92 to i32
  br label %102

102:                                              ; preds = %100, %97
  %103 = phi i32 [ %99, %97 ], [ %101, %100 ]
  %104 = phi i32 [ %98, %97 ], [ %101, %100 ]
  %105 = inttoptr i32 %104 to ptr
  %106 = sub i32 %103, %104
  %107 = shl i32 %106, 7
  %108 = add i32 %107, %83
  store i32 %108, ptr %6, align 4
  %109 = sub i32 %87, %90
  %110 = add i32 %85, 1
  %111 = icmp eq i32 %84, 0
  br i1 %111, label %128, label %112

112:                                              ; preds = %102
  %113 = load ptr, ptr %7, align 4
  %114 = add i32 %84, -1
  %115 = getelementptr %struct.skb_shared_info, ptr %113, i32 0, i32 12, i32 %114
  %116 = load ptr, ptr %115, align 4
  %117 = icmp eq ptr %116, %105
  br i1 %117, label %118, label %128

118:                                              ; preds = %112
  %119 = getelementptr %struct.skb_shared_info, ptr %113, i32 0, i32 12, i32 %114, i32 2
  %120 = load i32, ptr %119, align 4
  %121 = getelementptr %struct.skb_shared_info, ptr %113, i32 0, i32 12, i32 %114, i32 1
  %122 = load i32, ptr %121, align 4
  %123 = add i32 %122, %120
  %124 = icmp eq i32 %108, %123
  br i1 %124, label %125, label %128

125:                                              ; preds = %118
  %126 = add i32 %122, %90
  store i32 %126, ptr %121, align 4
  %127 = add i32 %86, 1
  br label %164

128:                                              ; preds = %118, %112, %102
  %129 = icmp eq i32 %86, 0
  br i1 %129, label %134, label %130

130:                                              ; preds = %128
  %131 = getelementptr inbounds %struct.page, ptr %88, i32 0, i32 3
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %131) #6, !srcloc !10
  %132 = call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %131, ptr %131, i32 %86, ptr elementtype(i32) %131) #6, !srcloc !24
  %133 = load i32, ptr %6, align 4
  br label %134

134:                                              ; preds = %130, %128
  %135 = phi i32 [ %133, %130 ], [ %108, %128 ]
  %136 = add i32 %84, 1
  %137 = load ptr, ptr %7, align 4
  %138 = getelementptr %struct.skb_shared_info, ptr %137, i32 0, i32 12, i32 %84
  store ptr %105, ptr %138, align 4
  %139 = getelementptr %struct.skb_shared_info, ptr %137, i32 0, i32 12, i32 %84, i32 2
  store i32 %135, ptr %139, align 4
  %140 = getelementptr %struct.skb_shared_info, ptr %137, i32 0, i32 12, i32 %84, i32 1
  store i32 %90, ptr %140, align 4
  %141 = getelementptr inbounds %struct.page, ptr %105, i32 0, i32 1
  %142 = load volatile i32, ptr %141, align 4
  %143 = and i32 %142, 1
  %144 = icmp eq i32 %143, 0
  %145 = inttoptr i32 %142 to ptr
  br i1 %144, label %151, label %146, !prof !8

146:                                              ; preds = %134
  %147 = add i32 %142, -1
  %148 = inttoptr i32 %147 to ptr
  %149 = getelementptr inbounds %struct.page, ptr %148, i32 0, i32 1
  %150 = load ptr, ptr %149, align 4
  br label %151

151:                                              ; preds = %146, %134
  %152 = phi ptr [ %150, %146 ], [ %145, %134 ]
  %153 = ptrtoint ptr %152 to i32
  %154 = and i32 %153, 2
  %155 = icmp eq i32 %154, 0
  br i1 %155, label %159, label %156

156:                                              ; preds = %151
  %157 = load i8, ptr %24, align 2
  %158 = or i8 %157, 64
  store i8 %158, ptr %24, align 2
  br label %159

159:                                              ; preds = %156, %151
  %160 = trunc i32 %84 to i8
  %161 = add i8 %160, 1
  %162 = load ptr, ptr %7, align 4
  %163 = getelementptr inbounds %struct.skb_shared_info, ptr %162, i32 0, i32 2
  store i8 %161, ptr %163, align 2
  br label %164

164:                                              ; preds = %159, %125
  %165 = phi ptr [ %88, %159 ], [ %105, %125 ]
  %166 = phi i32 [ 0, %159 ], [ %127, %125 ]
  %167 = phi i32 [ %136, %159 ], [ %84, %125 ]
  store i32 0, ptr %6, align 4
  %168 = icmp eq i32 %109, 0
  br i1 %168, label %169, label %82

169:                                              ; preds = %164
  %170 = icmp eq i32 %166, 0
  br i1 %170, label %176, label %171

171:                                              ; preds = %169
  %172 = getelementptr inbounds %struct.page, ptr %165, i32 0, i32 3
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %172) #6, !srcloc !10
  %173 = call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %172, ptr %172, i32 %166, ptr elementtype(i32) %172) #6, !srcloc !24
  br label %176

174:                                              ; preds = %32, %30
  %175 = phi i32 [ -14, %32 ], [ -90, %30 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #6
  call void @llvm.lifetime.end.p0(i64 68, ptr nonnull %5) #6
  br label %179

176:                                              ; preds = %171, %169, %78
  %177 = phi i32 [ %167, %169 ], [ %167, %171 ], [ %27, %78 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #6
  call void @llvm.lifetime.end.p0(i64 68, ptr nonnull %5) #6
  %178 = icmp eq i32 %37, 0
  br i1 %178, label %179, label %25

179:                                              ; preds = %176, %174, %25, %4
  %180 = phi i32 [ %175, %174 ], [ 0, %4 ], [ 0, %25 ], [ 0, %176 ]
  ret i32 %180
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iov_iter_get_pages(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @iov_iter_advance(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @zerocopy_sg_from_iter(ptr nocapture noundef %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 5
  %4 = load i32, ptr %3, align 8
  %5 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 6
  %6 = load i32, ptr %5, align 4
  %7 = sub i32 %4, %6
  %8 = getelementptr inbounds %struct.iov_iter, ptr %1, i32 0, i32 4
  %9 = load i32, ptr %8, align 8
  %10 = tail call i32 @llvm.smin.i32(i32 %7, i32 %9)
  %11 = tail call i32 @skb_copy_datagram_from_iter(ptr noundef %0, i32 noundef 0, ptr noundef %1, i32 noundef %10)
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %15

13:                                               ; preds = %2
  %14 = tail call i32 @__zerocopy_sg_from_iter(ptr noundef null, ptr noundef %0, ptr noundef %1, i32 noundef -1)
  br label %15

15:                                               ; preds = %13, %2
  %16 = phi i32 [ %14, %13 ], [ -14, %2 ]
  ret i32 %16
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @skb_copy_and_csum_datagram_msg(ptr noundef %0, i32 noundef %1, ptr noundef %2) #0 {
  %4 = alloca %struct.csum_state, align 8
  %5 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 5
  %6 = load i32, ptr %5, align 8
  %7 = sub i32 %6, %1
  %8 = icmp eq i32 %6, %1
  br i1 %8, label %64, label %9

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.msghdr, ptr %2, i32 0, i32 2, i32 4
  %11 = load i32, ptr %10, align 8
  %12 = icmp ult i32 %11, %7
  br i1 %12, label %13, label %36

13:                                               ; preds = %9
  %14 = tail call zeroext i16 @__skb_checksum_complete(ptr noundef %0) #6
  %15 = icmp eq i16 %14, 0
  br i1 %15, label %16, label %64

16:                                               ; preds = %13
  %17 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_skb_copy_datagram_iovec, i32 0, i32 1), align 4
  %18 = icmp sgt i32 %17, 0
  br i1 %18, label %19, label %32

19:                                               ; preds = %16
  %20 = tail call ptr @llvm.thread.pointer() #6
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
  tail call void asm sideeffect "", "~{memory}"() #6, !srcloc !22
  %31 = tail call i32 @__traceiter_skb_copy_datagram_iovec(ptr noundef null, ptr noundef %0, i32 noundef %7) #6
  tail call void asm sideeffect "", "~{memory}"() #6, !srcloc !23
  br label %32

32:                                               ; preds = %30, %19, %16
  %33 = getelementptr inbounds %struct.msghdr, ptr %2, i32 0, i32 2
  %34 = tail call fastcc i32 @__skb_datagram_iter(ptr noundef %0, i32 noundef %1, ptr noundef %33, i32 noundef %7, i1 noundef zeroext false, ptr noundef nonnull @simple_copy_to_iter, ptr noundef null) #6
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %64, label %63

36:                                               ; preds = %9
  %37 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 17
  %38 = load ptr, ptr %37, align 4
  %39 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 13, i32 0, i32 4
  %40 = load i32, ptr %39, align 4
  %41 = tail call i32 @csum_partial(ptr noundef %38, i32 noundef %1, i32 noundef %40) #6
  %42 = getelementptr inbounds %struct.msghdr, ptr %2, i32 0, i32 2
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #6
  store i32 %41, ptr %4, align 8
  %43 = getelementptr inbounds %struct.csum_state, ptr %4, i32 0, i32 1
  store i32 0, ptr %43, align 4
  %44 = call fastcc i32 @__skb_datagram_iter(ptr noundef %0, i32 noundef %1, ptr noundef %42, i32 noundef %7, i1 noundef zeroext true, ptr noundef nonnull @csum_and_copy_to_iter, ptr noundef nonnull %4) #6
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %47, label %46

46:                                               ; preds = %36
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #6
  br label %63

47:                                               ; preds = %36
  %48 = load i32, ptr %4, align 8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #6
  %49 = call i32 asm "add\09$0, $1, $1, ror #16\09@ csum_fold", "=r,r,~{cc}"(i32 %48) #7, !srcloc !25
  %50 = icmp ugt i32 %49, -65537
  br i1 %50, label %52, label %51

51:                                               ; preds = %47
  call void @iov_iter_revert(ptr noundef %42, i32 noundef %7) #6
  br label %64

52:                                               ; preds = %47
  %53 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 13
  %54 = load i16, ptr %53, align 8
  %55 = and i16 %54, 96
  %56 = icmp eq i16 %55, 64
  br i1 %56, label %57, label %64, !prof !13

57:                                               ; preds = %52
  %58 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 13, i32 0, i32 3
  %59 = load i16, ptr %58, align 2
  %60 = and i16 %59, 2
  %61 = icmp eq i16 %60, 0
  br i1 %61, label %62, label %64

62:                                               ; preds = %57
  call void @netdev_rx_csum_fault(ptr noundef null, ptr noundef %0) #6
  br label %64

63:                                               ; preds = %46, %32
  br label %64

64:                                               ; preds = %63, %62, %57, %52, %51, %32, %13, %3
  %65 = phi i32 [ -14, %63 ], [ -22, %51 ], [ 0, %3 ], [ -22, %13 ], [ 0, %52 ], [ 0, %57 ], [ 0, %62 ], [ 0, %32 ]
  ret i32 %65
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i16 @__skb_checksum_complete(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @csum_partial(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @iov_iter_revert(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @netdev_rx_csum_fault(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @datagram_poll(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = getelementptr inbounds %struct.socket, ptr %1, i32 0, i32 4
  %5 = load ptr, ptr %4, align 16
  %6 = icmp eq ptr %2, null
  br i1 %6, label %12, label %7

7:                                                ; preds = %3
  %8 = load ptr, ptr %2, align 4
  %9 = icmp eq ptr %8, null
  br i1 %9, label %12, label %10

10:                                               ; preds = %7
  %11 = getelementptr inbounds %struct.socket, ptr %1, i32 0, i32 7
  tail call void %8(ptr noundef %0, ptr noundef nonnull %11, ptr noundef nonnull %2) #6
  tail call void asm sideeffect "dmb ish", "~{memory}"() #6, !srcloc !26
  br label %12

12:                                               ; preds = %10, %7, %3
  %13 = getelementptr inbounds %struct.sock, ptr %5, i32 0, i32 51
  %14 = load i32, ptr %13, align 4
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %20

16:                                               ; preds = %12
  %17 = getelementptr inbounds %struct.sock, ptr %5, i32 0, i32 7
  %18 = load volatile ptr, ptr %17, align 4
  %19 = icmp eq ptr %18, %17
  br i1 %19, label %26, label %20

20:                                               ; preds = %16, %12
  %21 = getelementptr inbounds %struct.sock_common, ptr %5, i32 0, i32 13
  %22 = load volatile i32, ptr %21, align 4
  %23 = and i32 %22, 4194304
  %24 = icmp eq i32 %23, 0
  %25 = select i1 %24, i32 8, i32 10
  br label %26

26:                                               ; preds = %20, %16
  %27 = phi i32 [ %25, %20 ], [ 0, %16 ]
  %28 = getelementptr inbounds %struct.sock, ptr %5, i32 0, i32 66
  %29 = load i8, ptr %28, align 2
  %30 = and i8 %29, 1
  %31 = icmp eq i8 %30, 0
  %32 = or i32 %27, 8257
  %33 = select i1 %31, i32 %27, i32 %32
  %34 = icmp eq i8 %29, 3
  %35 = or i32 %33, 16
  %36 = select i1 %34, i32 %35, i32 %33
  %37 = getelementptr inbounds %struct.sock, ptr %5, i32 0, i32 8
  %38 = load volatile ptr, ptr %37, align 4
  %39 = icmp eq ptr %38, %37
  %40 = or i32 %36, 65
  %41 = select i1 %39, i32 %36, i32 %40
  %42 = getelementptr inbounds %struct.sock, ptr %5, i32 0, i32 45
  %43 = load i16, ptr %42, align 2
  %44 = and i16 %43, -5
  %45 = icmp eq i16 %44, 1
  br i1 %45, label %46, label %54

46:                                               ; preds = %26
  %47 = getelementptr inbounds %struct.sock_common, ptr %5, i32 0, i32 4
  %48 = load volatile i8, ptr %47, align 2
  %49 = icmp eq i8 %48, 7
  %50 = or i32 %41, 16
  %51 = select i1 %49, i32 %50, i32 %41
  %52 = load volatile i8, ptr %47, align 2
  %53 = icmp eq i8 %52, 2
  br i1 %53, label %73, label %54

54:                                               ; preds = %46, %26
  %55 = phi i32 [ %51, %46 ], [ %41, %26 ]
  %56 = getelementptr inbounds %struct.sock, ptr %5, i32 0, i32 23
  %57 = load volatile i32, ptr %56, align 4
  %58 = getelementptr inbounds %struct.sock, ptr %5, i32 0, i32 21
  %59 = load volatile i32, ptr %58, align 8
  %60 = ashr i32 %59, 1
  %61 = icmp ult i32 %57, %60
  br i1 %61, label %62, label %64

62:                                               ; preds = %54
  %63 = or i32 %55, 772
  br label %73

64:                                               ; preds = %54
  %65 = getelementptr inbounds %struct.sock_common, ptr %5, i32 0, i32 13
  %66 = load volatile i32, ptr %65, align 4
  %67 = and i32 %66, 65536
  %68 = icmp eq i32 %67, 0
  br i1 %68, label %73, label %69

69:                                               ; preds = %64
  %70 = getelementptr inbounds %struct.sock, ptr %5, i32 0, i32 17
  %71 = load ptr, ptr %70, align 4
  %72 = getelementptr inbounds %struct.socket_wq, ptr %71, i32 0, i32 2
  tail call void @_set_bit(i32 noundef 0, ptr noundef %72) #6
  br label %73

73:                                               ; preds = %69, %64, %62, %46
  %74 = phi i32 [ %51, %46 ], [ %63, %62 ], [ %55, %64 ], [ %55, %69 ]
  ret i32 %74
}

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.thread.pointer() #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @autoremove_wake_function(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_clone(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @napi_busy_loop(i32 noundef, ptr noundef, ptr noundef, i1 noundef zeroext, i16 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @sk_busy_loop_end(ptr noundef, i32 noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__sk_mem_reclaim(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__lock_sock_fast(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @release_sock(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_bh(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_bh(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree_skb_reason(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @page_address(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kmap_high(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kunmap_high(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_skb_copy_datagram_iovec(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_copy_to_iter(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_copy_from_iter(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @csum_and_copy_to_iter(ptr noundef, i32 noundef, ptr noundef, ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #5

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { argmemonly nofree nounwind willreturn writeonly }
attributes #3 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { nounwind }
attributes #7 = { nounwind readnone }

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
!8 = !{!"branch_weights", i32 2000, i32 1}
!9 = !{i64 2155393314}
!10 = !{i64 560907, i64 2148050878, i64 2148050904, i64 2148050951, i64 2148050973, i64 2148051001, i64 2148051021}
!11 = !{i64 569557, i64 569574, i64 569598, i64 569624, i64 569642}
!12 = !{i64 2155393631}
!13 = !{!"branch_weights", i32 1, i32 2000}
!14 = !{i64 2148063751, i64 2148063783, i64 2148063812, i64 2148063846, i64 2148063877, i64 2148063900}
!15 = !{!"auto-init"}
!16 = !{i64 2148066108, i64 2148066140, i64 2148066169, i64 2148066203, i64 2148066234, i64 2148066257}
!17 = !{i64 2149013420}
!18 = !{i64 2153573582, i64 2153574070, i64 2153573619, i64 2153573675, i64 2153573709, i64 2153573733, i64 2153573774, i64 2153573795, i64 2153573823, i64 2153573857}
!19 = !{i64 2148163973}
!20 = !{i64 2148062293, i64 2148062319, i64 2148062348, i64 2148062382, i64 2148062413, i64 2148062436}
!21 = !{ptr @csum_and_copy_to_iter, ptr @hash_and_copy_to_iter, ptr @simple_copy_to_iter}
!22 = !{i64 2155685779}
!23 = !{i64 2155685953}
!24 = !{i64 2148064650, i64 2148064676, i64 2148064705, i64 2148064739, i64 2148064770, i64 2148064793}
!25 = !{i64 5641278}
!26 = !{i64 2155387090}
