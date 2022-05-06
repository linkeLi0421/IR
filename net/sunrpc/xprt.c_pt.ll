; ModuleID = '/llk/IR/net/sunrpc/xprt.c_pt.bc'
source_filename = "../net/sunrpc/xprt.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_xprt_register_transport:\09\09\09\09\09"
module asm "\09.asciz \09\22xprt_register_transport\22\09\09\09\09\09"
module asm "__kstrtabns_xprt_register_transport:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_xprt_unregister_transport:\09\09\09\09\09"
module asm "\09.asciz \09\22xprt_unregister_transport\22\09\09\09\09\09"
module asm "__kstrtabns_xprt_unregister_transport:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_xprt_find_transport_ident:\09\09\09\09\09"
module asm "\09.asciz \09\22xprt_find_transport_ident\22\09\09\09\09\09"
module asm "__kstrtabns_xprt_find_transport_ident:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_xprt_reserve_xprt:\09\09\09\09\09"
module asm "\09.asciz \09\22xprt_reserve_xprt\22\09\09\09\09\09"
module asm "__kstrtabns_xprt_reserve_xprt:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_xprt_reserve_xprt_cong:\09\09\09\09\09"
module asm "\09.asciz \09\22xprt_reserve_xprt_cong\22\09\09\09\09\09"
module asm "__kstrtabns_xprt_reserve_xprt_cong:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_xprt_release_xprt:\09\09\09\09\09"
module asm "\09.asciz \09\22xprt_release_xprt\22\09\09\09\09\09"
module asm "__kstrtabns_xprt_release_xprt:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_xprt_release_xprt_cong:\09\09\09\09\09"
module asm "\09.asciz \09\22xprt_release_xprt_cong\22\09\09\09\09\09"
module asm "__kstrtabns_xprt_release_xprt_cong:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_xprt_request_get_cong:\09\09\09\09\09"
module asm "\09.asciz \09\22xprt_request_get_cong\22\09\09\09\09\09"
module asm "__kstrtabns_xprt_request_get_cong:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_xprt_release_rqst_cong:\09\09\09\09\09"
module asm "\09.asciz \09\22xprt_release_rqst_cong\22\09\09\09\09\09"
module asm "__kstrtabns_xprt_release_rqst_cong:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_xprt_adjust_cwnd:\09\09\09\09\09"
module asm "\09.asciz \09\22xprt_adjust_cwnd\22\09\09\09\09\09"
module asm "__kstrtabns_xprt_adjust_cwnd:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_xprt_wake_pending_tasks:\09\09\09\09\09"
module asm "\09.asciz \09\22xprt_wake_pending_tasks\22\09\09\09\09\09"
module asm "__kstrtabns_xprt_wake_pending_tasks:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_xprt_wait_for_buffer_space:\09\09\09\09\09"
module asm "\09.asciz \09\22xprt_wait_for_buffer_space\22\09\09\09\09\09"
module asm "__kstrtabns_xprt_wait_for_buffer_space:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_xprt_write_space:\09\09\09\09\09"
module asm "\09.asciz \09\22xprt_write_space\22\09\09\09\09\09"
module asm "__kstrtabns_xprt_write_space:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_xprt_disconnect_done:\09\09\09\09\09"
module asm "\09.asciz \09\22xprt_disconnect_done\22\09\09\09\09\09"
module asm "__kstrtabns_xprt_disconnect_done:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_xprt_force_disconnect:\09\09\09\09\09"
module asm "\09.asciz \09\22xprt_force_disconnect\22\09\09\09\09\09"
module asm "__kstrtabns_xprt_force_disconnect:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_xprt_lock_connect:\09\09\09\09\09"
module asm "\09.asciz \09\22xprt_lock_connect\22\09\09\09\09\09"
module asm "__kstrtabns_xprt_lock_connect:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_xprt_unlock_connect:\09\09\09\09\09"
module asm "\09.asciz \09\22xprt_unlock_connect\22\09\09\09\09\09"
module asm "__kstrtabns_xprt_unlock_connect:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_xprt_reconnect_delay:\09\09\09\09\09"
module asm "\09.asciz \09\22xprt_reconnect_delay\22\09\09\09\09\09"
module asm "__kstrtabns_xprt_reconnect_delay:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_xprt_reconnect_backoff:\09\09\09\09\09"
module asm "\09.asciz \09\22xprt_reconnect_backoff\22\09\09\09\09\09"
module asm "__kstrtabns_xprt_reconnect_backoff:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_xprt_lookup_rqst:\09\09\09\09\09"
module asm "\09.asciz \09\22xprt_lookup_rqst\22\09\09\09\09\09"
module asm "__kstrtabns_xprt_lookup_rqst:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_xprt_pin_rqst:\09\09\09\09\09"
module asm "\09.asciz \09\22xprt_pin_rqst\22\09\09\09\09\09"
module asm "__kstrtabns_xprt_pin_rqst:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_xprt_unpin_rqst:\09\09\09\09\09"
module asm "\09.asciz \09\22xprt_unpin_rqst\22\09\09\09\09\09"
module asm "__kstrtabns_xprt_unpin_rqst:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_xprt_update_rtt:\09\09\09\09\09"
module asm "\09.asciz \09\22xprt_update_rtt\22\09\09\09\09\09"
module asm "__kstrtabns_xprt_update_rtt:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_xprt_complete_rqst:\09\09\09\09\09"
module asm "\09.asciz \09\22xprt_complete_rqst\22\09\09\09\09\09"
module asm "__kstrtabns_xprt_complete_rqst:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_xprt_wait_for_reply_request_def:\09\09\09\09\09"
module asm "\09.asciz \09\22xprt_wait_for_reply_request_def\22\09\09\09\09\09"
module asm "__kstrtabns_xprt_wait_for_reply_request_def:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_xprt_wait_for_reply_request_rtt:\09\09\09\09\09"
module asm "\09.asciz \09\22xprt_wait_for_reply_request_rtt\22\09\09\09\09\09"
module asm "__kstrtabns_xprt_wait_for_reply_request_rtt:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_xprt_add_backlog:\09\09\09\09\09"
module asm "\09.asciz \09\22xprt_add_backlog\22\09\09\09\09\09"
module asm "__kstrtabns_xprt_add_backlog:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_xprt_wake_up_backlog:\09\09\09\09\09"
module asm "\09.asciz \09\22xprt_wake_up_backlog\22\09\09\09\09\09"
module asm "__kstrtabns_xprt_wake_up_backlog:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_xprt_alloc_slot:\09\09\09\09\09"
module asm "\09.asciz \09\22xprt_alloc_slot\22\09\09\09\09\09"
module asm "__kstrtabns_xprt_alloc_slot:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_xprt_free_slot:\09\09\09\09\09"
module asm "\09.asciz \09\22xprt_free_slot\22\09\09\09\09\09"
module asm "__kstrtabns_xprt_free_slot:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_xprt_alloc:\09\09\09\09\09"
module asm "\09.asciz \09\22xprt_alloc\22\09\09\09\09\09"
module asm "__kstrtabns_xprt_alloc:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_xprt_free:\09\09\09\09\09"
module asm "\09.asciz \09\22xprt_free\22\09\09\09\09\09"
module asm "__kstrtabns_xprt_free:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_xprt_get:\09\09\09\09\09"
module asm "\09.asciz \09\22xprt_get\22\09\09\09\09\09"
module asm "__kstrtabns_xprt_get:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_xprt_put:\09\09\09\09\09"
module asm "\09.asciz \09\22xprt_put\22\09\09\09\09\09"
module asm "__kstrtabns_xprt_put:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.list_head = type { ptr, ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.ida = type { %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.tracepoint = type { ptr, %struct.static_key, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.static_key = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.cpumask = type { [1 x i32] }
%struct.xprt_class = type { %struct.list_head, i32, ptr, ptr, [32 x i8], [0 x ptr] }
%struct.rpc_task = type { %struct.atomic_t, i32, %struct.list_head, ptr, ptr, i32, i32, ptr, %union.anon.1, i32, %struct.rpc_message, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64, i32, i16, i16, i16, i8 }
%union.anon.1 = type { %struct.rpc_wait }
%struct.rpc_wait = type { %struct.list_head, %struct.list_head, %struct.list_head }
%struct.rpc_message = type { ptr, ptr, ptr, ptr }
%struct.rpc_xprt = type { %struct.kref, ptr, i32, ptr, %struct.__kernel_sockaddr_storage, i32, i32, i32, i32, i32, %struct.rpc_wait_queue, %struct.rpc_wait_queue, %struct.rpc_wait_queue, %struct.rpc_wait_queue, %struct.list_head, i32, i32, i32, i32, i8, %struct.atomic_t, i32, %struct.list_head, i32, i32, i32, %struct.work_struct, %struct.timer_list, i32, i32, i32, i32, %struct.atomic_t, %struct.spinlock, %struct.spinlock, %struct.spinlock, i32, ptr, %struct.list_head, %struct.atomic_t, ptr, ptr, i32, i32, %struct.atomic_t, %struct.spinlock, %struct.list_head, %struct.rb_root, %struct.anon.138, ptr, ptr, [6 x ptr], %struct.callback_head, ptr, ptr, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.__kernel_sockaddr_storage = type { %union.anon.134 }
%union.anon.134 = type { ptr, [124 x i8] }
%struct.rpc_wait_queue = type { %struct.spinlock, [4 x %struct.list_head], i8, i8, i8, i16, %struct.rpc_timer, ptr }
%struct.rpc_timer = type { %struct.list_head, i32, %struct.delayed_work }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32 }
%struct.hlist_node = type { ptr, ptr }
%struct.rb_root = type { ptr }
%struct.anon.138 = type { i32, i32, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64 }
%struct.callback_head = type { ptr, ptr }
%struct.thread_info = type { i32, i32, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], [4 x i8], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.rpc_rqst = type { ptr, %struct.xdr_buf, %struct.xdr_buf, ptr, ptr, i32, i32, i32, i32, ptr, ptr, %union.anon.133, %struct.list_head, %struct.list_head, ptr, i32, ptr, i32, i32, i32, %struct.xdr_buf, i32, i32, i32, i64, i32, i32, %struct.atomic_t, i32, i64, i32, %struct.list_head, i32, %struct.list_head }
%union.anon.133 = type { %struct.rb_node }
%struct.rb_node = type { i32, ptr, ptr }
%struct.xdr_buf = type { [1 x %struct.kvec], [1 x %struct.kvec], ptr, ptr, i32, i32, i32, i32, i32 }
%struct.kvec = type { ptr, i32 }
%struct.rpc_xprt_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.rpc_clnt = type { %struct.refcount_struct, i32, %struct.list_head, %struct.list_head, %struct.atomic_t, %struct.spinlock, ptr, ptr, i32, i32, i32, ptr, ptr, ptr, i8, ptr, ptr, %struct.atomic_t, i32, [65 x i8], %struct.rpc_pipe_dir_head, ptr, %struct.rpc_rtt, %struct.rpc_timeout, ptr, ptr, ptr, %union.anon.132, ptr, i32 }
%struct.rpc_pipe_dir_head = type { %struct.list_head, ptr }
%struct.rpc_rtt = type { i32, [5 x i32], [5 x i32], [5 x i32] }
%struct.rpc_timeout = type { i32, i32, i32, i32, i8 }
%union.anon.132 = type { %struct.work_struct }
%struct.rpc_procinfo = type { i32, ptr, ptr, i32, i32, i32, i32, ptr }
%struct.wait_bit_queue_entry = type { %struct.wait_bit_key, %struct.wait_queue_entry }
%struct.wait_bit_key = type { ptr, i32, i32 }
%struct.wait_queue_entry = type { i32, ptr, ptr, %struct.list_head }
%struct.rpc_stat = type { ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.xprt_create = type { i32, ptr, ptr, ptr, i32, ptr, ptr, ptr, i32 }
%struct.task_struct = type { %struct.thread_info, i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [32 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, [36 x i8], %struct.sched_statistics, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i8, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.115, ptr, %struct.page_frag, i32, i32, i32, i64, i64, i32, i32, ptr, %struct.kmap_ctrl, i32, ptr, %struct.refcount_struct, %struct.thread_struct, [16 x i8] }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.73 }
%struct.llist_node = type { ptr }
%union.anon.73 = type { i32 }
%struct.sched_entity = type { %struct.load_weight, %struct.rb_node, %struct.list_head, i32, i64, i64, i64, i64, i64, [56 x i8], %struct.sched_avg }
%struct.load_weight = type { i32, i32 }
%struct.sched_avg = type { i64, i64, i64, i32, i32, i32, i32, i32, [4 x i8], %struct.util_est, [8 x i8] }
%struct.util_est = type { i32, i32 }
%struct.sched_rt_entity = type { %struct.list_head, i32, i32, i32, i16, i16, ptr }
%struct.sched_dl_entity = type { %struct.rb_node, i64, i64, i64, i64, i64, i64, i64, i32, i8, %struct.hrtimer, %struct.hrtimer, ptr }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.sched_statistics = type {}
%struct.sched_info = type {}
%struct.plist_node = type { i32, %struct.list_head, %struct.list_head }
%struct.vmacache = type { i64, [4 x ptr] }
%struct.task_rss_stat = type { i32, [4 x i32] }
%struct.restart_block = type { i32, ptr, %union.anon.74 }
%union.anon.74 = type { %struct.anon.75 }
%struct.anon.75 = type { ptr, i32, i32, i32, i64, ptr }
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
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.tlbflush_unmap_batch = type {}
%union.anon.115 = type { %struct.callback_head }
%struct.page_frag = type { ptr, i16, i16 }
%struct.kmap_ctrl = type { i32, [16 x i32] }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }

@xprt_list_lock = internal global %struct.spinlock zeroinitializer, align 4
@xprt_list = internal global %struct.list_head { ptr @xprt_list, ptr @xprt_list }, align 4
@.str = private unnamed_addr constant [40 x i8] c"\016RPC: Registered %s transport module.\0A\00", align 1
@__kstrtab_xprt_register_transport = external dso_local constant [0 x i8], align 1
@__kstrtabns_xprt_register_transport = external dso_local constant [0 x i8], align 1
@__ksymtab_xprt_register_transport = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @xprt_register_transport to i32), ptr @__kstrtab_xprt_register_transport, ptr @__kstrtabns_xprt_register_transport }, section "___ksymtab_gpl+xprt_register_transport", align 4
@.str.1 = private unnamed_addr constant [42 x i8] c"\016RPC: Unregistered %s transport module.\0A\00", align 1
@__kstrtab_xprt_unregister_transport = external dso_local constant [0 x i8], align 1
@__kstrtabns_xprt_unregister_transport = external dso_local constant [0 x i8], align 1
@__ksymtab_xprt_unregister_transport = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @xprt_unregister_transport to i32), ptr @__kstrtab_xprt_unregister_transport, ptr @__kstrtabns_xprt_unregister_transport }, section "___ksymtab_gpl+xprt_unregister_transport", align 4
@__kstrtab_xprt_find_transport_ident = external dso_local constant [0 x i8], align 1
@__kstrtabns_xprt_find_transport_ident = external dso_local constant [0 x i8], align 1
@__ksymtab_xprt_find_transport_ident = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @xprt_find_transport_ident to i32), ptr @__kstrtab_xprt_find_transport_ident, ptr @__kstrtabns_xprt_find_transport_ident }, section "___ksymtab_gpl+xprt_find_transport_ident", align 4
@__kstrtab_xprt_reserve_xprt = external dso_local constant [0 x i8], align 1
@__kstrtabns_xprt_reserve_xprt = external dso_local constant [0 x i8], align 1
@__ksymtab_xprt_reserve_xprt = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @xprt_reserve_xprt to i32), ptr @__kstrtab_xprt_reserve_xprt, ptr @__kstrtabns_xprt_reserve_xprt }, section "___ksymtab_gpl+xprt_reserve_xprt", align 4
@__kstrtab_xprt_reserve_xprt_cong = external dso_local constant [0 x i8], align 1
@__kstrtabns_xprt_reserve_xprt_cong = external dso_local constant [0 x i8], align 1
@__ksymtab_xprt_reserve_xprt_cong = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @xprt_reserve_xprt_cong to i32), ptr @__kstrtab_xprt_reserve_xprt_cong, ptr @__kstrtabns_xprt_reserve_xprt_cong }, section "___ksymtab_gpl+xprt_reserve_xprt_cong", align 4
@__kstrtab_xprt_release_xprt = external dso_local constant [0 x i8], align 1
@__kstrtabns_xprt_release_xprt = external dso_local constant [0 x i8], align 1
@__ksymtab_xprt_release_xprt = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @xprt_release_xprt to i32), ptr @__kstrtab_xprt_release_xprt, ptr @__kstrtabns_xprt_release_xprt }, section "___ksymtab_gpl+xprt_release_xprt", align 4
@__kstrtab_xprt_release_xprt_cong = external dso_local constant [0 x i8], align 1
@__kstrtabns_xprt_release_xprt_cong = external dso_local constant [0 x i8], align 1
@__ksymtab_xprt_release_xprt_cong = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @xprt_release_xprt_cong to i32), ptr @__kstrtab_xprt_release_xprt_cong, ptr @__kstrtabns_xprt_release_xprt_cong }, section "___ksymtab_gpl+xprt_release_xprt_cong", align 4
@__kstrtab_xprt_request_get_cong = external dso_local constant [0 x i8], align 1
@__kstrtabns_xprt_request_get_cong = external dso_local constant [0 x i8], align 1
@__ksymtab_xprt_request_get_cong = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @xprt_request_get_cong to i32), ptr @__kstrtab_xprt_request_get_cong, ptr @__kstrtabns_xprt_request_get_cong }, section "___ksymtab_gpl+xprt_request_get_cong", align 4
@__kstrtab_xprt_release_rqst_cong = external dso_local constant [0 x i8], align 1
@__kstrtabns_xprt_release_rqst_cong = external dso_local constant [0 x i8], align 1
@__ksymtab_xprt_release_rqst_cong = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @xprt_release_rqst_cong to i32), ptr @__kstrtab_xprt_release_rqst_cong, ptr @__kstrtabns_xprt_release_rqst_cong }, section "___ksymtab_gpl+xprt_release_rqst_cong", align 4
@__kstrtab_xprt_adjust_cwnd = external dso_local constant [0 x i8], align 1
@__kstrtabns_xprt_adjust_cwnd = external dso_local constant [0 x i8], align 1
@__ksymtab_xprt_adjust_cwnd = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @xprt_adjust_cwnd to i32), ptr @__kstrtab_xprt_adjust_cwnd, ptr @__kstrtabns_xprt_adjust_cwnd }, section "___ksymtab_gpl+xprt_adjust_cwnd", align 4
@__kstrtab_xprt_wake_pending_tasks = external dso_local constant [0 x i8], align 1
@__kstrtabns_xprt_wake_pending_tasks = external dso_local constant [0 x i8], align 1
@__ksymtab_xprt_wake_pending_tasks = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @xprt_wake_pending_tasks to i32), ptr @__kstrtab_xprt_wake_pending_tasks, ptr @__kstrtabns_xprt_wake_pending_tasks }, section "___ksymtab_gpl+xprt_wake_pending_tasks", align 4
@__kstrtab_xprt_wait_for_buffer_space = external dso_local constant [0 x i8], align 1
@__kstrtabns_xprt_wait_for_buffer_space = external dso_local constant [0 x i8], align 1
@__ksymtab_xprt_wait_for_buffer_space = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @xprt_wait_for_buffer_space to i32), ptr @__kstrtab_xprt_wait_for_buffer_space, ptr @__kstrtabns_xprt_wait_for_buffer_space }, section "___ksymtab_gpl+xprt_wait_for_buffer_space", align 4
@__kstrtab_xprt_write_space = external dso_local constant [0 x i8], align 1
@__kstrtabns_xprt_write_space = external dso_local constant [0 x i8], align 1
@__ksymtab_xprt_write_space = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @xprt_write_space to i32), ptr @__kstrtab_xprt_write_space, ptr @__kstrtabns_xprt_write_space }, section "___ksymtab_gpl+xprt_write_space", align 4
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 64
@.str.2 = private unnamed_addr constant [40 x i8] c"\014xprt_adjust_timeout: rq_timeout = 0!\0A\00", align 1
@__kstrtab_xprt_disconnect_done = external dso_local constant [0 x i8], align 1
@__kstrtabns_xprt_disconnect_done = external dso_local constant [0 x i8], align 1
@__ksymtab_xprt_disconnect_done = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @xprt_disconnect_done to i32), ptr @__kstrtab_xprt_disconnect_done, ptr @__kstrtabns_xprt_disconnect_done }, section "___ksymtab_gpl+xprt_disconnect_done", align 4
@__kstrtab_xprt_force_disconnect = external dso_local constant [0 x i8], align 1
@__kstrtabns_xprt_force_disconnect = external dso_local constant [0 x i8], align 1
@__ksymtab_xprt_force_disconnect = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @xprt_force_disconnect to i32), ptr @__kstrtab_xprt_force_disconnect, ptr @__kstrtabns_xprt_force_disconnect }, section "___ksymtab_gpl+xprt_force_disconnect", align 4
@__kstrtab_xprt_lock_connect = external dso_local constant [0 x i8], align 1
@__kstrtabns_xprt_lock_connect = external dso_local constant [0 x i8], align 1
@__ksymtab_xprt_lock_connect = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @xprt_lock_connect to i32), ptr @__kstrtab_xprt_lock_connect, ptr @__kstrtabns_xprt_lock_connect }, section "___ksymtab_gpl+xprt_lock_connect", align 4
@__kstrtab_xprt_unlock_connect = external dso_local constant [0 x i8], align 1
@__kstrtabns_xprt_unlock_connect = external dso_local constant [0 x i8], align 1
@__ksymtab_xprt_unlock_connect = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @xprt_unlock_connect to i32), ptr @__kstrtab_xprt_unlock_connect, ptr @__kstrtabns_xprt_unlock_connect }, section "___ksymtab_gpl+xprt_unlock_connect", align 4
@__kstrtab_xprt_reconnect_delay = external dso_local constant [0 x i8], align 1
@__kstrtabns_xprt_reconnect_delay = external dso_local constant [0 x i8], align 1
@__ksymtab_xprt_reconnect_delay = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @xprt_reconnect_delay to i32), ptr @__kstrtab_xprt_reconnect_delay, ptr @__kstrtabns_xprt_reconnect_delay }, section "___ksymtab_gpl+xprt_reconnect_delay", align 4
@__kstrtab_xprt_reconnect_backoff = external dso_local constant [0 x i8], align 1
@__kstrtabns_xprt_reconnect_backoff = external dso_local constant [0 x i8], align 1
@__ksymtab_xprt_reconnect_backoff = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @xprt_reconnect_backoff to i32), ptr @__kstrtab_xprt_reconnect_backoff, ptr @__kstrtabns_xprt_reconnect_backoff }, section "___ksymtab_gpl+xprt_reconnect_backoff", align 4
@__kstrtab_xprt_lookup_rqst = external dso_local constant [0 x i8], align 1
@__kstrtabns_xprt_lookup_rqst = external dso_local constant [0 x i8], align 1
@__ksymtab_xprt_lookup_rqst = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @xprt_lookup_rqst to i32), ptr @__kstrtab_xprt_lookup_rqst, ptr @__kstrtabns_xprt_lookup_rqst }, section "___ksymtab_gpl+xprt_lookup_rqst", align 4
@__kstrtab_xprt_pin_rqst = external dso_local constant [0 x i8], align 1
@__kstrtabns_xprt_pin_rqst = external dso_local constant [0 x i8], align 1
@__ksymtab_xprt_pin_rqst = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @xprt_pin_rqst to i32), ptr @__kstrtab_xprt_pin_rqst, ptr @__kstrtabns_xprt_pin_rqst }, section "___ksymtab_gpl+xprt_pin_rqst", align 4
@__kstrtab_xprt_unpin_rqst = external dso_local constant [0 x i8], align 1
@__kstrtabns_xprt_unpin_rqst = external dso_local constant [0 x i8], align 1
@__ksymtab_xprt_unpin_rqst = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @xprt_unpin_rqst to i32), ptr @__kstrtab_xprt_unpin_rqst, ptr @__kstrtabns_xprt_unpin_rqst }, section "___ksymtab_gpl+xprt_unpin_rqst", align 4
@__kstrtab_xprt_update_rtt = external dso_local constant [0 x i8], align 1
@__kstrtabns_xprt_update_rtt = external dso_local constant [0 x i8], align 1
@__ksymtab_xprt_update_rtt = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @xprt_update_rtt to i32), ptr @__kstrtab_xprt_update_rtt, ptr @__kstrtabns_xprt_update_rtt }, section "___ksymtab_gpl+xprt_update_rtt", align 4
@__kstrtab_xprt_complete_rqst = external dso_local constant [0 x i8], align 1
@__kstrtabns_xprt_complete_rqst = external dso_local constant [0 x i8], align 1
@__ksymtab_xprt_complete_rqst = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @xprt_complete_rqst to i32), ptr @__kstrtab_xprt_complete_rqst, ptr @__kstrtabns_xprt_complete_rqst }, section "___ksymtab_gpl+xprt_complete_rqst", align 4
@__kstrtab_xprt_wait_for_reply_request_def = external dso_local constant [0 x i8], align 1
@__kstrtabns_xprt_wait_for_reply_request_def = external dso_local constant [0 x i8], align 1
@__ksymtab_xprt_wait_for_reply_request_def = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @xprt_wait_for_reply_request_def to i32), ptr @__kstrtab_xprt_wait_for_reply_request_def, ptr @__kstrtabns_xprt_wait_for_reply_request_def }, section "___ksymtab_gpl+xprt_wait_for_reply_request_def", align 4
@__kstrtab_xprt_wait_for_reply_request_rtt = external dso_local constant [0 x i8], align 1
@__kstrtabns_xprt_wait_for_reply_request_rtt = external dso_local constant [0 x i8], align 1
@__ksymtab_xprt_wait_for_reply_request_rtt = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @xprt_wait_for_reply_request_rtt to i32), ptr @__kstrtab_xprt_wait_for_reply_request_rtt, ptr @__kstrtabns_xprt_wait_for_reply_request_rtt }, section "___ksymtab_gpl+xprt_wait_for_reply_request_rtt", align 4
@.str.3 = private unnamed_addr constant [18 x i8] c"net/sunrpc/xprt.c\00", align 1
@__kstrtab_xprt_add_backlog = external dso_local constant [0 x i8], align 1
@__kstrtabns_xprt_add_backlog = external dso_local constant [0 x i8], align 1
@__ksymtab_xprt_add_backlog = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @xprt_add_backlog to i32), ptr @__kstrtab_xprt_add_backlog, ptr @__kstrtabns_xprt_add_backlog }, section "___ksymtab_gpl+xprt_add_backlog", align 4
@__kstrtab_xprt_wake_up_backlog = external dso_local constant [0 x i8], align 1
@__kstrtabns_xprt_wake_up_backlog = external dso_local constant [0 x i8], align 1
@__ksymtab_xprt_wake_up_backlog = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @xprt_wake_up_backlog to i32), ptr @__kstrtab_xprt_wake_up_backlog, ptr @__kstrtabns_xprt_wake_up_backlog }, section "___ksymtab_gpl+xprt_wake_up_backlog", align 4
@__kstrtab_xprt_alloc_slot = external dso_local constant [0 x i8], align 1
@__kstrtabns_xprt_alloc_slot = external dso_local constant [0 x i8], align 1
@__ksymtab_xprt_alloc_slot = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @xprt_alloc_slot to i32), ptr @__kstrtab_xprt_alloc_slot, ptr @__kstrtabns_xprt_alloc_slot }, section "___ksymtab_gpl+xprt_alloc_slot", align 4
@__kstrtab_xprt_free_slot = external dso_local constant [0 x i8], align 1
@__kstrtabns_xprt_free_slot = external dso_local constant [0 x i8], align 1
@__ksymtab_xprt_free_slot = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @xprt_free_slot to i32), ptr @__kstrtab_xprt_free_slot, ptr @__kstrtabns_xprt_free_slot }, section "___ksymtab_gpl+xprt_free_slot", align 4
@rpc_xprt_ids = internal global %struct.ida { %struct.xarray { %struct.spinlock zeroinitializer, i32 33554437, ptr null } }, align 4
@__kstrtab_xprt_alloc = external dso_local constant [0 x i8], align 1
@__kstrtabns_xprt_alloc = external dso_local constant [0 x i8], align 1
@__ksymtab_xprt_alloc = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @xprt_alloc to i32), ptr @__kstrtab_xprt_alloc, ptr @__kstrtabns_xprt_alloc }, section "___ksymtab_gpl+xprt_alloc", align 4
@__kstrtab_xprt_free = external dso_local constant [0 x i8], align 1
@__kstrtabns_xprt_free = external dso_local constant [0 x i8], align 1
@__ksymtab_xprt_free = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @xprt_free to i32), ptr @__kstrtab_xprt_free, ptr @__kstrtabns_xprt_free }, section "___ksymtab_gpl+xprt_free", align 4
@__kstrtab_xprt_get = external dso_local constant [0 x i8], align 1
@__kstrtabns_xprt_get = external dso_local constant [0 x i8], align 1
@__ksymtab_xprt_get = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @xprt_get to i32), ptr @__kstrtab_xprt_get, ptr @__kstrtabns_xprt_get }, section "___ksymtab_gpl+xprt_get", align 4
@__kstrtab_xprt_put = external dso_local constant [0 x i8], align 1
@__kstrtabns_xprt_put = external dso_local constant [0 x i8], align 1
@__ksymtab_xprt_put = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @xprt_put to i32), ptr @__kstrtab_xprt_put, ptr @__kstrtabns_xprt_put }, section "___ksymtab_gpl+xprt_put", align 4
@.str.4 = private unnamed_addr constant [6 x i8] c"rpc%s\00", align 1
@__tracepoint_xprt_reserve_xprt = external dso_local global %struct.tracepoint, align 4
@__cpu_online_mask = external dso_local global %struct.cpumask, align 4
@xprtiod_workqueue = external dso_local local_unnamed_addr global ptr, align 4
@__tracepoint_xprt_reserve_cong = external dso_local global %struct.tracepoint, align 4
@__tracepoint_xprt_release_xprt = external dso_local global %struct.tracepoint, align 4
@__tracepoint_xprt_release_cong = external dso_local global %struct.tracepoint, align 4
@__tracepoint_xprt_get_cong = external dso_local global %struct.tracepoint, align 4
@__tracepoint_xprt_put_cong = external dso_local global %struct.tracepoint, align 4
@__tracepoint_xprt_disconnect_done = external dso_local global %struct.tracepoint, align 4
@__tracepoint_xprt_disconnect_force = external dso_local global %struct.tracepoint, align 4
@__tracepoint_xprt_connect = external dso_local global %struct.tracepoint, align 4
@__tracepoint_xprt_disconnect_cleanup = external dso_local global %struct.tracepoint, align 4
@__tracepoint_xprt_lookup_rqst = external dso_local global %struct.tracepoint, align 4
@xprt_request_rb_insert.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@__tracepoint_xprt_timer = external dso_local global %struct.tracepoint, align 4
@__tracepoint_rpc_xdr_sendto = external dso_local global %struct.tracepoint, align 4
@__tracepoint_xprt_transmit = external dso_local global %struct.tracepoint, align 4
@__tracepoint_xprt_retransmit = external dso_local global %struct.tracepoint, align 4
@__tracepoint_xprt_reserve = external dso_local global %struct.tracepoint, align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@.str.6 = private unnamed_addr constant [13 x i8] c"xprt_binding\00", align 1
@.str.7 = private unnamed_addr constant [13 x i8] c"xprt_pending\00", align 1
@.str.8 = private unnamed_addr constant [13 x i8] c"xprt_sending\00", align 1
@.str.9 = private unnamed_addr constant [13 x i8] c"xprt_backlog\00", align 1
@__tracepoint_xprt_disconnect_auto = external dso_local global %struct.tracepoint, align 4
@__tracepoint_xprt_create = external dso_local global %struct.tracepoint, align 4
@__tracepoint_xprt_destroy = external dso_local global %struct.tracepoint, align 4
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@llvm.compiler.used = appending global [34 x ptr] [ptr @__ksymtab_xprt_add_backlog, ptr @__ksymtab_xprt_adjust_cwnd, ptr @__ksymtab_xprt_alloc, ptr @__ksymtab_xprt_alloc_slot, ptr @__ksymtab_xprt_complete_rqst, ptr @__ksymtab_xprt_disconnect_done, ptr @__ksymtab_xprt_find_transport_ident, ptr @__ksymtab_xprt_force_disconnect, ptr @__ksymtab_xprt_free, ptr @__ksymtab_xprt_free_slot, ptr @__ksymtab_xprt_get, ptr @__ksymtab_xprt_lock_connect, ptr @__ksymtab_xprt_lookup_rqst, ptr @__ksymtab_xprt_pin_rqst, ptr @__ksymtab_xprt_put, ptr @__ksymtab_xprt_reconnect_backoff, ptr @__ksymtab_xprt_reconnect_delay, ptr @__ksymtab_xprt_register_transport, ptr @__ksymtab_xprt_release_rqst_cong, ptr @__ksymtab_xprt_release_xprt, ptr @__ksymtab_xprt_release_xprt_cong, ptr @__ksymtab_xprt_request_get_cong, ptr @__ksymtab_xprt_reserve_xprt, ptr @__ksymtab_xprt_reserve_xprt_cong, ptr @__ksymtab_xprt_unlock_connect, ptr @__ksymtab_xprt_unpin_rqst, ptr @__ksymtab_xprt_unregister_transport, ptr @__ksymtab_xprt_update_rtt, ptr @__ksymtab_xprt_wait_for_buffer_space, ptr @__ksymtab_xprt_wait_for_reply_request_def, ptr @__ksymtab_xprt_wait_for_reply_request_rtt, ptr @__ksymtab_xprt_wake_pending_tasks, ptr @__ksymtab_xprt_wake_up_backlog, ptr @__ksymtab_xprt_write_space], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @xprt_register_transport(ptr noundef %0) #0 {
  tail call void @_raw_spin_lock(ptr noundef nonnull @xprt_list_lock) #15
  %2 = getelementptr inbounds %struct.xprt_class, ptr %0, i32 0, i32 1
  br label %3

3:                                                ; preds = %7, %1
  %4 = phi ptr [ @xprt_list, %1 ], [ %5, %7 ]
  %5 = load ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, @xprt_list
  br i1 %6, label %12, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.xprt_class, ptr %5, i32 0, i32 1
  %9 = load i32, ptr %8, align 4
  %10 = load i32, ptr %2, align 4
  %11 = icmp eq i32 %9, %10
  br i1 %11, label %17, label %3

12:                                               ; preds = %3
  %13 = load ptr, ptr getelementptr inbounds (%struct.list_head, ptr @xprt_list, i32 0, i32 1), align 4
  store ptr %0, ptr getelementptr inbounds (%struct.list_head, ptr @xprt_list, i32 0, i32 1), align 4
  store ptr @xprt_list, ptr %0, align 4
  %14 = getelementptr inbounds %struct.list_head, ptr %0, i32 0, i32 1
  store ptr %13, ptr %14, align 4
  store volatile ptr %0, ptr %13, align 4
  %15 = getelementptr inbounds %struct.xprt_class, ptr %0, i32 0, i32 4
  %16 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef %15) #16
  br label %17

17:                                               ; preds = %12, %7
  %18 = phi i32 [ 0, %12 ], [ -17, %7 ]
  tail call void asm sideeffect "dmb ish", "~{memory}"() #15, !srcloc !8
  %19 = load i16, ptr @xprt_list_lock, align 4
  %20 = add i16 %19, 1
  store i16 %20, ptr @xprt_list_lock, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #15, !srcloc !9
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #15, !srcloc !10
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !11
  ret i32 %18
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @xprt_unregister_transport(ptr noundef %0) #0 {
  tail call void @_raw_spin_lock(ptr noundef nonnull @xprt_list_lock) #15
  br label %2

2:                                                ; preds = %6, %1
  %3 = phi ptr [ @xprt_list, %1 ], [ %4, %6 ]
  %4 = load ptr, ptr %3, align 4
  %5 = icmp eq ptr %4, @xprt_list
  br i1 %5, label %15, label %6

6:                                                ; preds = %2
  %7 = icmp eq ptr %4, %0
  br i1 %7, label %8, label %2

8:                                                ; preds = %6
  %9 = getelementptr inbounds %struct.xprt_class, ptr %0, i32 0, i32 4
  %10 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef %9) #16
  %11 = getelementptr inbounds %struct.list_head, ptr %0, i32 0, i32 1
  %12 = load ptr, ptr %11, align 4
  %13 = load ptr, ptr %0, align 4
  %14 = getelementptr inbounds %struct.list_head, ptr %13, i32 0, i32 1
  store ptr %12, ptr %14, align 4
  store volatile ptr %13, ptr %12, align 4
  store volatile ptr %0, ptr %0, align 4
  store ptr %0, ptr %11, align 4
  br label %15

15:                                               ; preds = %8, %2
  %16 = phi i32 [ 0, %8 ], [ -2, %2 ]
  tail call void asm sideeffect "dmb ish", "~{memory}"() #15, !srcloc !8
  %17 = load i16, ptr @xprt_list_lock, align 4
  %18 = add i16 %17, 1
  store i16 %18, ptr @xprt_list_lock, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #15, !srcloc !9
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #15, !srcloc !10
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !11
  ret i32 %16
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @xprt_find_transport_ident(ptr noundef %0) #0 {
  tail call void @_raw_spin_lock(ptr noundef nonnull @xprt_list_lock) #15
  %2 = load ptr, ptr @xprt_list, align 4
  %3 = icmp eq ptr %2, @xprt_list
  br i1 %3, label %31, label %7

4:                                                ; preds = %23, %7
  %5 = load ptr, ptr %8, align 4
  %6 = icmp eq ptr %5, @xprt_list
  br i1 %6, label %31, label %7

7:                                                ; preds = %4, %1
  %8 = phi ptr [ %5, %4 ], [ %2, %1 ]
  %9 = getelementptr %struct.xprt_class, ptr %8, i32 0, i32 5, i32 0
  %10 = load ptr, ptr %9, align 4
  %11 = load i8, ptr %10, align 1
  %12 = icmp eq i8 %11, 0
  br i1 %12, label %4, label %13

13:                                               ; preds = %7
  %14 = getelementptr inbounds %struct.xprt_class, ptr %8, i32 0, i32 3
  br label %15

15:                                               ; preds = %23, %13
  %16 = phi ptr [ %10, %13 ], [ %26, %23 ]
  %17 = phi i32 [ 0, %13 ], [ %24, %23 ]
  %18 = tail call i32 @strcmp(ptr noundef %16, ptr noundef %0) #15
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %23

20:                                               ; preds = %15
  %21 = load ptr, ptr %14, align 4
  %22 = tail call zeroext i1 @try_module_get(ptr noundef %21) #15
  br i1 %22, label %29, label %23

23:                                               ; preds = %20, %15
  %24 = add i32 %17, 1
  %25 = getelementptr %struct.xprt_class, ptr %8, i32 0, i32 5, i32 %24
  %26 = load ptr, ptr %25, align 4
  %27 = load i8, ptr %26, align 1
  %28 = icmp eq i8 %27, 0
  br i1 %28, label %4, label %15

29:                                               ; preds = %20
  %30 = icmp eq ptr %8, null
  br i1 %30, label %31, label %62

31:                                               ; preds = %29, %4, %1
  tail call void asm sideeffect "dmb ish", "~{memory}"() #15, !srcloc !8
  %32 = load i16, ptr @xprt_list_lock, align 4
  %33 = add i16 %32, 1
  store i16 %33, ptr @xprt_list_lock, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #15, !srcloc !9
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #15, !srcloc !10
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !11
  %34 = tail call i32 (i1, ptr, ...) @__request_module(i1 noundef zeroext true, ptr noundef nonnull @.str.4, ptr noundef %0) #15
  tail call void @_raw_spin_lock(ptr noundef nonnull @xprt_list_lock) #15
  %35 = load ptr, ptr @xprt_list, align 4
  %36 = icmp eq ptr %35, @xprt_list
  br i1 %36, label %62, label %40

37:                                               ; preds = %56, %40
  %38 = load ptr, ptr %41, align 4
  %39 = icmp eq ptr %38, @xprt_list
  br i1 %39, label %62, label %40

40:                                               ; preds = %37, %31
  %41 = phi ptr [ %38, %37 ], [ %35, %31 ]
  %42 = getelementptr %struct.xprt_class, ptr %41, i32 0, i32 5, i32 0
  %43 = load ptr, ptr %42, align 4
  %44 = load i8, ptr %43, align 1
  %45 = icmp eq i8 %44, 0
  br i1 %45, label %37, label %46

46:                                               ; preds = %40
  %47 = getelementptr inbounds %struct.xprt_class, ptr %41, i32 0, i32 3
  br label %48

48:                                               ; preds = %56, %46
  %49 = phi ptr [ %43, %46 ], [ %59, %56 ]
  %50 = phi i32 [ 0, %46 ], [ %57, %56 ]
  %51 = tail call i32 @strcmp(ptr noundef %49, ptr noundef %0) #15
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %53, label %56

53:                                               ; preds = %48
  %54 = load ptr, ptr %47, align 4
  %55 = tail call zeroext i1 @try_module_get(ptr noundef %54) #15
  br i1 %55, label %62, label %56

56:                                               ; preds = %53, %48
  %57 = add i32 %50, 1
  %58 = getelementptr %struct.xprt_class, ptr %41, i32 0, i32 5, i32 %57
  %59 = load ptr, ptr %58, align 4
  %60 = load i8, ptr %59, align 1
  %61 = icmp eq i8 %60, 0
  br i1 %61, label %37, label %48

62:                                               ; preds = %53, %37, %31, %29
  %63 = phi ptr [ %8, %29 ], [ null, %31 ], [ %41, %53 ], [ null, %37 ]
  tail call void asm sideeffect "dmb ish", "~{memory}"() #15, !srcloc !8
  %64 = load i16, ptr @xprt_list_lock, align 4
  %65 = add i16 %64, 1
  store i16 %65, ptr @xprt_list_lock, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #15, !srcloc !9
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #15, !srcloc !10
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !11
  %66 = icmp eq ptr %63, null
  br i1 %66, label %72, label %67

67:                                               ; preds = %62
  %68 = getelementptr inbounds %struct.xprt_class, ptr %63, i32 0, i32 1
  %69 = load i32, ptr %68, align 4
  %70 = getelementptr inbounds %struct.xprt_class, ptr %63, i32 0, i32 3
  %71 = load ptr, ptr %70, align 4
  tail call void @module_put(ptr noundef %71) #15
  br label %72

72:                                               ; preds = %67, %62
  %73 = phi i32 [ %69, %67 ], [ -2, %62 ]
  ret i32 %73
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @xprt_reserve_xprt(ptr noundef %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.rpc_task, ptr %1, i32 0, i32 16
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.rpc_xprt, ptr %0, i32 0, i32 18
  %6 = tail call i32 @_test_and_set_bit(i32 noundef 0, ptr noundef %5) #15
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %12, label %8

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.rpc_xprt, ptr %0, i32 0, i32 37
  %10 = load ptr, ptr %9, align 4
  %11 = icmp eq ptr %10, %1
  br i1 %11, label %18, label %44

12:                                               ; preds = %2
  %13 = load volatile i32, ptr %5, align 4
  %14 = and i32 %13, 2048
  %15 = icmp eq i32 %14, 0
  %16 = getelementptr inbounds %struct.rpc_xprt, ptr %0, i32 0, i32 37
  br i1 %15, label %17, label %34

17:                                               ; preds = %12
  store ptr %1, ptr %16, align 4
  br label %18

18:                                               ; preds = %17, %8
  %19 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xprt_reserve_xprt, i32 0, i32 1), align 4
  %20 = icmp sgt i32 %19, 0
  br i1 %20, label %21, label %62

21:                                               ; preds = %18
  %22 = tail call ptr @llvm.thread.pointer() #15
  %23 = getelementptr inbounds %struct.thread_info, ptr %22, i32 0, i32 2
  %24 = load i32, ptr %23, align 8
  %25 = lshr i32 %24, 5
  %26 = getelementptr i32, ptr @__cpu_online_mask, i32 %25
  %27 = load volatile i32, ptr %26, align 4
  %28 = and i32 %24, 31
  %29 = shl nuw i32 1, %28
  %30 = and i32 %29, %27
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %62, label %32

32:                                               ; preds = %21
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !12
  %33 = tail call i32 @__traceiter_xprt_reserve_xprt(ptr noundef null, ptr noundef %0, ptr noundef %1) #15
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !13
  br label %62

34:                                               ; preds = %12
  store ptr null, ptr %16, align 4
  %35 = load volatile i32, ptr %5, align 4
  %36 = and i32 %35, 8
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %34
  tail call void asm sideeffect "dmb ish", "~{memory}"() #15, !srcloc !14
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %5) #15, !srcloc !15
  %39 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_andnot\0A1:\09ldrex\09$0, [$4]\0A\09bic\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %5, ptr %5, i32 1, ptr elementtype(i32) %5) #15, !srcloc !16
  br label %44

40:                                               ; preds = %34
  %41 = load ptr, ptr @xprtiod_workqueue, align 4
  %42 = getelementptr inbounds %struct.rpc_xprt, ptr %0, i32 0, i32 26
  %43 = tail call zeroext i1 @queue_work_on(i32 noundef 16, ptr noundef %41, ptr noundef %42) #15
  br label %44

44:                                               ; preds = %40, %38, %8
  %45 = getelementptr inbounds %struct.rpc_task, ptr %1, i32 0, i32 1
  store i32 -11, ptr %45, align 4
  %46 = getelementptr inbounds %struct.rpc_task, ptr %1, i32 0, i32 20
  %47 = load i16, ptr %46, align 4
  %48 = and i16 %47, 4608
  %49 = icmp eq i16 %48, 0
  %50 = getelementptr inbounds %struct.rpc_xprt, ptr %0, i32 0, i32 11
  br i1 %49, label %61, label %51

51:                                               ; preds = %44
  %52 = load volatile i32, ptr @jiffies, align 64
  %53 = getelementptr inbounds %struct.rpc_rqst, ptr %4, i32 0, i32 23
  %54 = load i32, ptr %53, align 4
  %55 = add i32 %54, %52
  %56 = getelementptr inbounds %struct.rpc_rqst, ptr %4, i32 0, i32 21
  %57 = load i32, ptr %56, align 4
  %58 = sub i32 %55, %57
  %59 = icmp slt i32 %58, 0
  %60 = select i1 %59, i32 %55, i32 %57
  tail call void @rpc_sleep_on_timeout(ptr noundef %50, ptr noundef %1, ptr noundef null, i32 noundef %60) #15
  br label %62

61:                                               ; preds = %44
  tail call void @rpc_sleep_on(ptr noundef %50, ptr noundef %1, ptr noundef null) #15
  br label %62

62:                                               ; preds = %61, %51, %32, %21, %18
  %63 = phi i32 [ 0, %61 ], [ 0, %51 ], [ 1, %18 ], [ 1, %21 ], [ 1, %32 ]
  ret i32 %63
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @rpc_sleep_on_timeout(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @rpc_sleep_on(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @xprt_reserve_xprt_cong(ptr noundef %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.rpc_task, ptr %1, i32 0, i32 16
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.rpc_xprt, ptr %0, i32 0, i32 18
  %6 = tail call i32 @_test_and_set_bit(i32 noundef 0, ptr noundef %5) #15
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %12, label %8

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.rpc_xprt, ptr %0, i32 0, i32 37
  %10 = load ptr, ptr %9, align 4
  %11 = icmp eq ptr %10, %1
  br i1 %11, label %53, label %33

12:                                               ; preds = %2
  %13 = icmp eq ptr %4, null
  br i1 %13, label %51, label %14

14:                                               ; preds = %12
  %15 = load volatile i32, ptr %5, align 4
  %16 = and i32 %15, 2048
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %22

18:                                               ; preds = %14
  %19 = load volatile i32, ptr %5, align 4
  %20 = and i32 %19, 1024
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %51, label %22

22:                                               ; preds = %18, %14
  %23 = getelementptr inbounds %struct.rpc_xprt, ptr %0, i32 0, i32 37
  store ptr null, ptr %23, align 4
  %24 = load volatile i32, ptr %5, align 4
  %25 = and i32 %24, 8
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %22
  tail call void asm sideeffect "dmb ish", "~{memory}"() #15, !srcloc !14
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %5) #15, !srcloc !15
  %28 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_andnot\0A1:\09ldrex\09$0, [$4]\0A\09bic\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %5, ptr %5, i32 1, ptr elementtype(i32) %5) #15, !srcloc !16
  br label %33

29:                                               ; preds = %22
  %30 = load ptr, ptr @xprtiod_workqueue, align 4
  %31 = getelementptr inbounds %struct.rpc_xprt, ptr %0, i32 0, i32 26
  %32 = tail call zeroext i1 @queue_work_on(i32 noundef 16, ptr noundef %30, ptr noundef %31) #15
  br label %33

33:                                               ; preds = %29, %27, %8
  %34 = getelementptr inbounds %struct.rpc_task, ptr %1, i32 0, i32 1
  store i32 -11, ptr %34, align 4
  %35 = getelementptr inbounds %struct.rpc_task, ptr %1, i32 0, i32 20
  %36 = load i16, ptr %35, align 4
  %37 = and i16 %36, 4608
  %38 = icmp eq i16 %37, 0
  %39 = getelementptr inbounds %struct.rpc_xprt, ptr %0, i32 0, i32 11
  br i1 %38, label %50, label %40

40:                                               ; preds = %33
  %41 = load volatile i32, ptr @jiffies, align 64
  %42 = getelementptr inbounds %struct.rpc_rqst, ptr %4, i32 0, i32 23
  %43 = load i32, ptr %42, align 4
  %44 = add i32 %43, %41
  %45 = getelementptr inbounds %struct.rpc_rqst, ptr %4, i32 0, i32 21
  %46 = load i32, ptr %45, align 4
  %47 = sub i32 %44, %46
  %48 = icmp slt i32 %47, 0
  %49 = select i1 %48, i32 %44, i32 %46
  tail call void @rpc_sleep_on_timeout(ptr noundef %39, ptr noundef %1, ptr noundef null, i32 noundef %49) #15
  br label %69

50:                                               ; preds = %33
  tail call void @rpc_sleep_on(ptr noundef %39, ptr noundef %1, ptr noundef null) #15
  br label %69

51:                                               ; preds = %18, %12
  %52 = getelementptr inbounds %struct.rpc_xprt, ptr %0, i32 0, i32 37
  store ptr %1, ptr %52, align 4
  br label %53

53:                                               ; preds = %51, %8
  %54 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xprt_reserve_cong, i32 0, i32 1), align 4
  %55 = icmp sgt i32 %54, 0
  br i1 %55, label %56, label %69

56:                                               ; preds = %53
  %57 = tail call ptr @llvm.thread.pointer() #15
  %58 = getelementptr inbounds %struct.thread_info, ptr %57, i32 0, i32 2
  %59 = load i32, ptr %58, align 8
  %60 = lshr i32 %59, 5
  %61 = getelementptr i32, ptr @__cpu_online_mask, i32 %60
  %62 = load volatile i32, ptr %61, align 4
  %63 = and i32 %59, 31
  %64 = shl nuw i32 1, %63
  %65 = and i32 %64, %62
  %66 = icmp eq i32 %65, 0
  br i1 %66, label %69, label %67

67:                                               ; preds = %56
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !17
  %68 = tail call i32 @__traceiter_xprt_reserve_cong(ptr noundef null, ptr noundef %0, ptr noundef %1) #15
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !18
  br label %69

69:                                               ; preds = %67, %56, %53, %50, %40
  %70 = phi i32 [ 0, %50 ], [ 0, %40 ], [ 1, %53 ], [ 1, %56 ], [ 1, %67 ]
  ret i32 %70
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @xprt_release_xprt(ptr noundef %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.rpc_xprt, ptr %0, i32 0, i32 37
  %4 = load ptr, ptr %3, align 4
  %5 = icmp eq ptr %4, %1
  br i1 %5, label %6, label %39

6:                                                ; preds = %2
  store ptr null, ptr %3, align 4
  %7 = getelementptr inbounds %struct.rpc_xprt, ptr %0, i32 0, i32 18
  %8 = load volatile i32, ptr %7, align 4
  %9 = and i32 %8, 8
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %13

11:                                               ; preds = %6
  tail call void asm sideeffect "dmb ish", "~{memory}"() #15, !srcloc !14
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %7) #15, !srcloc !15
  %12 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_andnot\0A1:\09ldrex\09$0, [$4]\0A\09bic\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %7, ptr %7, i32 1, ptr elementtype(i32) %7) #15, !srcloc !16
  br label %17

13:                                               ; preds = %6
  %14 = load ptr, ptr @xprtiod_workqueue, align 4
  %15 = getelementptr inbounds %struct.rpc_xprt, ptr %0, i32 0, i32 26
  %16 = tail call zeroext i1 @queue_work_on(i32 noundef 16, ptr noundef %14, ptr noundef %15) #15
  br label %17

17:                                               ; preds = %13, %11
  %18 = tail call i32 @_test_and_set_bit(i32 noundef 0, ptr noundef %7) #15
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %39

20:                                               ; preds = %17
  %21 = load volatile i32, ptr %7, align 4
  %22 = and i32 %21, 2048
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %29

24:                                               ; preds = %20
  %25 = load ptr, ptr @xprtiod_workqueue, align 4
  %26 = getelementptr inbounds %struct.rpc_xprt, ptr %0, i32 0, i32 11
  %27 = tail call ptr @rpc_wake_up_first_on_wq(ptr noundef %25, ptr noundef %26, ptr noundef nonnull @__xprt_lock_write_func, ptr noundef %0) #15
  %28 = icmp eq ptr %27, null
  br i1 %28, label %29, label %39

29:                                               ; preds = %24, %20
  store ptr null, ptr %3, align 4
  %30 = load volatile i32, ptr %7, align 4
  %31 = and i32 %30, 8
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %29
  tail call void asm sideeffect "dmb ish", "~{memory}"() #15, !srcloc !14
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %7) #15, !srcloc !15
  %34 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_andnot\0A1:\09ldrex\09$0, [$4]\0A\09bic\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %7, ptr %7, i32 1, ptr elementtype(i32) %7) #15, !srcloc !16
  br label %39

35:                                               ; preds = %29
  %36 = load ptr, ptr @xprtiod_workqueue, align 4
  %37 = getelementptr inbounds %struct.rpc_xprt, ptr %0, i32 0, i32 26
  %38 = tail call zeroext i1 @queue_work_on(i32 noundef 16, ptr noundef %36, ptr noundef %37) #15
  br label %39

39:                                               ; preds = %35, %33, %24, %17, %2
  %40 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xprt_release_xprt, i32 0, i32 1), align 4
  %41 = icmp sgt i32 %40, 0
  br i1 %41, label %42, label %55

42:                                               ; preds = %39
  %43 = tail call ptr @llvm.thread.pointer() #15
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
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !19
  %54 = tail call i32 @__traceiter_xprt_release_xprt(ptr noundef null, ptr noundef %0, ptr noundef %1) #15
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !20
  br label %55

55:                                               ; preds = %53, %42, %39
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @xprt_release_xprt_cong(ptr noundef %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.rpc_xprt, ptr %0, i32 0, i32 37
  %4 = load ptr, ptr %3, align 4
  %5 = icmp eq ptr %4, %1
  br i1 %5, label %6, label %18

6:                                                ; preds = %2
  store ptr null, ptr %3, align 4
  %7 = getelementptr inbounds %struct.rpc_xprt, ptr %0, i32 0, i32 18
  %8 = load volatile i32, ptr %7, align 4
  %9 = and i32 %8, 8
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %13

11:                                               ; preds = %6
  tail call void asm sideeffect "dmb ish", "~{memory}"() #15, !srcloc !14
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %7) #15, !srcloc !15
  %12 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_andnot\0A1:\09ldrex\09$0, [$4]\0A\09bic\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %7, ptr %7, i32 1, ptr elementtype(i32) %7) #15, !srcloc !16
  br label %17

13:                                               ; preds = %6
  %14 = load ptr, ptr @xprtiod_workqueue, align 4
  %15 = getelementptr inbounds %struct.rpc_xprt, ptr %0, i32 0, i32 26
  %16 = tail call zeroext i1 @queue_work_on(i32 noundef 16, ptr noundef %14, ptr noundef %15) #15
  br label %17

17:                                               ; preds = %13, %11
  tail call fastcc void @__xprt_lock_write_next_cong(ptr noundef %0)
  br label %18

18:                                               ; preds = %17, %2
  %19 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xprt_release_cong, i32 0, i32 1), align 4
  %20 = icmp sgt i32 %19, 0
  br i1 %20, label %21, label %34

21:                                               ; preds = %18
  %22 = tail call ptr @llvm.thread.pointer() #15
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
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !21
  %33 = tail call i32 @__traceiter_xprt_release_cong(ptr noundef null, ptr noundef %0, ptr noundef %1) #15
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !22
  br label %34

34:                                               ; preds = %32, %21, %18
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @__xprt_lock_write_next_cong(ptr noundef %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.rpc_xprt, ptr %0, i32 0, i32 18
  %3 = tail call i32 @_test_and_set_bit(i32 noundef 0, ptr noundef %2) #15
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %29

5:                                                ; preds = %1
  %6 = load volatile i32, ptr %2, align 4
  %7 = and i32 %6, 2048
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %18

9:                                                ; preds = %5
  %10 = load volatile i32, ptr %2, align 4
  %11 = and i32 %10, 1024
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %18

13:                                               ; preds = %9
  %14 = load ptr, ptr @xprtiod_workqueue, align 4
  %15 = getelementptr inbounds %struct.rpc_xprt, ptr %0, i32 0, i32 11
  %16 = tail call ptr @rpc_wake_up_first_on_wq(ptr noundef %14, ptr noundef %15, ptr noundef nonnull @__xprt_lock_write_func, ptr noundef %0) #15
  %17 = icmp eq ptr %16, null
  br i1 %17, label %18, label %29

18:                                               ; preds = %13, %9, %5
  %19 = getelementptr inbounds %struct.rpc_xprt, ptr %0, i32 0, i32 37
  store ptr null, ptr %19, align 4
  %20 = load volatile i32, ptr %2, align 4
  %21 = and i32 %20, 8
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %18
  tail call void asm sideeffect "dmb ish", "~{memory}"() #15, !srcloc !14
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %2) #15, !srcloc !15
  %24 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_andnot\0A1:\09ldrex\09$0, [$4]\0A\09bic\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %2, ptr %2, i32 1, ptr elementtype(i32) %2) #15, !srcloc !16
  br label %29

25:                                               ; preds = %18
  %26 = load ptr, ptr @xprtiod_workqueue, align 4
  %27 = getelementptr inbounds %struct.rpc_xprt, ptr %0, i32 0, i32 26
  %28 = tail call zeroext i1 @queue_work_on(i32 noundef 16, ptr noundef %26, ptr noundef %27) #15
  br label %29

29:                                               ; preds = %25, %23, %13, %1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @xprt_release_write(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.rpc_xprt, ptr %0, i32 0, i32 37
  %4 = load ptr, ptr %3, align 4
  %5 = icmp eq ptr %4, %1
  br i1 %5, label %6, label %14

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.rpc_xprt, ptr %0, i32 0, i32 33
  tail call void @_raw_spin_lock(ptr noundef %7) #15
  %8 = getelementptr inbounds %struct.rpc_xprt, ptr %0, i32 0, i32 1
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.rpc_xprt_ops, ptr %9, i32 0, i32 2
  %11 = load ptr, ptr %10, align 4
  tail call void %11(ptr noundef %0, ptr noundef %1) #15
  tail call void asm sideeffect "dmb ish", "~{memory}"() #15, !srcloc !8
  %12 = load i16, ptr %7, align 4
  %13 = add i16 %12, 1
  store i16 %13, ptr %7, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #15, !srcloc !9
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #15, !srcloc !10
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !11
  br label %14

14:                                               ; preds = %6, %2
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local zeroext i1 @xprt_request_get_cong(ptr noundef %0, ptr nocapture noundef %1) #0 {
  %3 = getelementptr inbounds %struct.rpc_rqst, ptr %1, i32 0, i32 6
  %4 = load i32, ptr %3, align 8
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %51

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.rpc_xprt, ptr %0, i32 0, i32 33
  tail call void @_raw_spin_lock(ptr noundef %7) #15
  %8 = load i32, ptr %3, align 8
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %47

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.rpc_rqst, ptr %1, i32 0, i32 3
  %12 = load ptr, ptr %11, align 4
  %13 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xprt_get_cong, i32 0, i32 1), align 4
  %14 = icmp sgt i32 %13, 0
  br i1 %14, label %15, label %28

15:                                               ; preds = %10
  %16 = tail call ptr @llvm.thread.pointer() #15
  %17 = getelementptr inbounds %struct.thread_info, ptr %16, i32 0, i32 2
  %18 = load i32, ptr %17, align 8
  %19 = lshr i32 %18, 5
  %20 = getelementptr i32, ptr @__cpu_online_mask, i32 %19
  %21 = load volatile i32, ptr %20, align 4
  %22 = and i32 %18, 31
  %23 = shl nuw i32 1, %22
  %24 = and i32 %23, %21
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %28, label %26

26:                                               ; preds = %15
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !23
  %27 = tail call i32 @__traceiter_xprt_get_cong(ptr noundef null, ptr noundef %0, ptr noundef %12) #15
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !24
  br label %28

28:                                               ; preds = %26, %15, %10
  %29 = getelementptr inbounds %struct.rpc_xprt, ptr %0, i32 0, i32 7
  %30 = load i32, ptr %29, align 8
  %31 = getelementptr inbounds %struct.rpc_xprt, ptr %0, i32 0, i32 8
  %32 = load i32, ptr %31, align 4
  %33 = icmp ult i32 %30, %32
  br i1 %33, label %44, label %34

34:                                               ; preds = %28
  %35 = getelementptr inbounds %struct.rpc_xprt, ptr %0, i32 0, i32 38
  %36 = load volatile ptr, ptr %35, align 4
  %37 = icmp eq ptr %36, %35
  br i1 %37, label %42, label %38

38:                                               ; preds = %34
  %39 = getelementptr i8, ptr %36, i32 -32
  %40 = load i32, ptr %39, align 8
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %42, label %47

42:                                               ; preds = %38, %34
  %43 = getelementptr inbounds %struct.rpc_xprt, ptr %0, i32 0, i32 18
  tail call void @_set_bit(i32 noundef 10, ptr noundef %43) #15
  br label %47

44:                                               ; preds = %28
  store i32 1, ptr %3, align 8
  %45 = load i32, ptr %29, align 8
  %46 = add i32 %45, 256
  store i32 %46, ptr %29, align 8
  br label %47

47:                                               ; preds = %44, %42, %38, %6
  %48 = phi i1 [ true, %6 ], [ false, %38 ], [ false, %42 ], [ true, %44 ]
  tail call void asm sideeffect "dmb ish", "~{memory}"() #15, !srcloc !8
  %49 = load i16, ptr %7, align 4
  %50 = add i16 %49, 1
  store i16 %50, ptr %7, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #15, !srcloc !9
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #15, !srcloc !10
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !11
  br label %51

51:                                               ; preds = %47, %2
  %52 = phi i1 [ %48, %47 ], [ true, %2 ]
  ret i1 %52
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @xprt_release_rqst_cong(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.rpc_task, ptr %0, i32 0, i32 16
  %3 = load ptr, ptr %2, align 4
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.rpc_rqst, ptr %3, i32 0, i32 6
  %6 = load i32, ptr %5, align 8
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %36, label %8

8:                                                ; preds = %1
  store i32 0, ptr %5, align 8
  %9 = getelementptr inbounds %struct.rpc_xprt, ptr %4, i32 0, i32 7
  %10 = load i32, ptr %9, align 8
  %11 = add i32 %10, -256
  store i32 %11, ptr %9, align 8
  %12 = getelementptr inbounds %struct.rpc_xprt, ptr %4, i32 0, i32 8
  %13 = load i32, ptr %12, align 4
  %14 = icmp ult i32 %11, %13
  br i1 %14, label %15, label %17

15:                                               ; preds = %8
  %16 = getelementptr inbounds %struct.rpc_xprt, ptr %4, i32 0, i32 18
  tail call void @_clear_bit(i32 noundef 10, ptr noundef %16) #15
  br label %17

17:                                               ; preds = %15, %8
  %18 = getelementptr inbounds %struct.rpc_rqst, ptr %3, i32 0, i32 3
  %19 = load ptr, ptr %18, align 4
  %20 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xprt_put_cong, i32 0, i32 1), align 4
  %21 = icmp sgt i32 %20, 0
  br i1 %21, label %22, label %35

22:                                               ; preds = %17
  %23 = tail call ptr @llvm.thread.pointer() #15
  %24 = getelementptr inbounds %struct.thread_info, ptr %23, i32 0, i32 2
  %25 = load i32, ptr %24, align 8
  %26 = lshr i32 %25, 5
  %27 = getelementptr i32, ptr @__cpu_online_mask, i32 %26
  %28 = load volatile i32, ptr %27, align 4
  %29 = and i32 %25, 31
  %30 = shl nuw i32 1, %29
  %31 = and i32 %30, %28
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %35, label %33

33:                                               ; preds = %22
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !25
  %34 = tail call i32 @__traceiter_xprt_put_cong(ptr noundef null, ptr noundef %4, ptr noundef %19) #15
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !26
  br label %35

35:                                               ; preds = %33, %22, %17
  tail call fastcc void @__xprt_lock_write_next_cong(ptr noundef %4) #15
  br label %36

36:                                               ; preds = %35, %1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @xprt_adjust_cwnd(ptr noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2) #0 {
  %4 = getelementptr inbounds %struct.rpc_task, ptr %1, i32 0, i32 16
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.rpc_xprt, ptr %0, i32 0, i32 8
  %7 = load i32, ptr %6, align 4
  %8 = icmp sgt i32 %2, -1
  br i1 %8, label %9, label %22

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.rpc_xprt, ptr %0, i32 0, i32 7
  %11 = load i32, ptr %10, align 8
  %12 = icmp ugt i32 %7, %11
  br i1 %12, label %27, label %13

13:                                               ; preds = %9
  %14 = lshr i32 %7, 1
  %15 = add nuw i32 %14, 65536
  %16 = udiv i32 %15, %7
  %17 = add i32 %16, %7
  %18 = getelementptr inbounds %struct.rpc_xprt, ptr %0, i32 0, i32 15
  %19 = load i32, ptr %18, align 4
  %20 = shl i32 %19, 8
  %21 = tail call i32 @llvm.umin.i32(i32 %17, i32 %20)
  tail call fastcc void @__xprt_lock_write_next_cong(ptr noundef %0)
  br label %27

22:                                               ; preds = %3
  %23 = icmp eq i32 %2, -110
  br i1 %23, label %24, label %27

24:                                               ; preds = %22
  %25 = lshr i32 %7, 1
  %26 = tail call i32 @llvm.umax.i32(i32 %25, i32 256)
  br label %27

27:                                               ; preds = %24, %22, %13, %9
  %28 = phi i32 [ %21, %13 ], [ %26, %24 ], [ %7, %22 ], [ %7, %9 ]
  store i32 %28, ptr %6, align 4
  %29 = getelementptr inbounds %struct.rpc_rqst, ptr %5, i32 0, i32 6
  %30 = load i32, ptr %29, align 8
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %59, label %32

32:                                               ; preds = %27
  store i32 0, ptr %29, align 8
  %33 = getelementptr inbounds %struct.rpc_xprt, ptr %0, i32 0, i32 7
  %34 = load i32, ptr %33, align 8
  %35 = add i32 %34, -256
  store i32 %35, ptr %33, align 8
  %36 = load i32, ptr %6, align 4
  %37 = icmp ult i32 %35, %36
  br i1 %37, label %38, label %40

38:                                               ; preds = %32
  %39 = getelementptr inbounds %struct.rpc_xprt, ptr %0, i32 0, i32 18
  tail call void @_clear_bit(i32 noundef 10, ptr noundef %39) #15
  br label %40

40:                                               ; preds = %38, %32
  %41 = getelementptr inbounds %struct.rpc_rqst, ptr %5, i32 0, i32 3
  %42 = load ptr, ptr %41, align 4
  %43 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xprt_put_cong, i32 0, i32 1), align 4
  %44 = icmp sgt i32 %43, 0
  br i1 %44, label %45, label %58

45:                                               ; preds = %40
  %46 = tail call ptr @llvm.thread.pointer() #15
  %47 = getelementptr inbounds %struct.thread_info, ptr %46, i32 0, i32 2
  %48 = load i32, ptr %47, align 8
  %49 = lshr i32 %48, 5
  %50 = getelementptr i32, ptr @__cpu_online_mask, i32 %49
  %51 = load volatile i32, ptr %50, align 4
  %52 = and i32 %48, 31
  %53 = shl nuw i32 1, %52
  %54 = and i32 %53, %51
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %58, label %56

56:                                               ; preds = %45
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !25
  %57 = tail call i32 @__traceiter_xprt_put_cong(ptr noundef null, ptr noundef %0, ptr noundef %42) #15
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !26
  br label %58

58:                                               ; preds = %56, %45, %40
  tail call fastcc void @__xprt_lock_write_next_cong(ptr noundef %0) #15
  br label %59

59:                                               ; preds = %58, %27
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @xprt_wake_pending_tasks(ptr noundef %0, i32 noundef %1) #0 {
  %3 = icmp slt i32 %1, 0
  %4 = getelementptr inbounds %struct.rpc_xprt, ptr %0, i32 0, i32 12
  br i1 %3, label %5, label %6

5:                                                ; preds = %2
  tail call void @rpc_wake_up_status(ptr noundef %4, i32 noundef %1) #15
  br label %7

6:                                                ; preds = %2
  tail call void @rpc_wake_up(ptr noundef %4) #15
  br label %7

7:                                                ; preds = %6, %5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rpc_wake_up_status(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @rpc_wake_up(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @xprt_wait_for_buffer_space(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.rpc_xprt, ptr %0, i32 0, i32 18
  tail call void @_set_bit(i32 noundef 11, ptr noundef %2) #15
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local zeroext i1 @xprt_write_space(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.rpc_xprt, ptr %0, i32 0, i32 18
  %3 = load volatile i32, ptr %2, align 4
  %4 = and i32 %3, 2048
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %11, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.rpc_xprt, ptr %0, i32 0, i32 33
  tail call void @_raw_spin_lock(ptr noundef %7) #15
  %8 = tail call fastcc zeroext i1 @xprt_clear_write_space_locked(ptr noundef %0)
  tail call void asm sideeffect "dmb ish", "~{memory}"() #15, !srcloc !8
  %9 = load i16, ptr %7, align 4
  %10 = add i16 %9, 1
  store i16 %10, ptr %7, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #15, !srcloc !9
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #15, !srcloc !10
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !11
  br label %11

11:                                               ; preds = %6, %1
  %12 = phi i1 [ %8, %6 ], [ false, %1 ]
  ret i1 %12
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc zeroext i1 @xprt_clear_write_space_locked(ptr noundef %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.rpc_xprt, ptr %0, i32 0, i32 18
  %3 = tail call i32 @_test_and_clear_bit(i32 noundef 11, ptr noundef %2) #15
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %28, label %5

5:                                                ; preds = %1
  %6 = tail call i32 @_test_and_set_bit(i32 noundef 0, ptr noundef %2) #15
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %28

8:                                                ; preds = %5
  %9 = load volatile i32, ptr %2, align 4
  %10 = and i32 %9, 2048
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %17

12:                                               ; preds = %8
  %13 = load ptr, ptr @xprtiod_workqueue, align 4
  %14 = getelementptr inbounds %struct.rpc_xprt, ptr %0, i32 0, i32 11
  %15 = tail call ptr @rpc_wake_up_first_on_wq(ptr noundef %13, ptr noundef %14, ptr noundef nonnull @__xprt_lock_write_func, ptr noundef %0) #15
  %16 = icmp eq ptr %15, null
  br i1 %16, label %17, label %28

17:                                               ; preds = %12, %8
  %18 = getelementptr inbounds %struct.rpc_xprt, ptr %0, i32 0, i32 37
  store ptr null, ptr %18, align 4
  %19 = load volatile i32, ptr %2, align 4
  %20 = and i32 %19, 8
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %17
  tail call void asm sideeffect "dmb ish", "~{memory}"() #15, !srcloc !14
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %2) #15, !srcloc !15
  %23 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_andnot\0A1:\09ldrex\09$0, [$4]\0A\09bic\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %2, ptr %2, i32 1, ptr elementtype(i32) %2) #15, !srcloc !16
  br label %28

24:                                               ; preds = %17
  %25 = load ptr, ptr @xprtiod_workqueue, align 4
  %26 = getelementptr inbounds %struct.rpc_xprt, ptr %0, i32 0, i32 26
  %27 = tail call zeroext i1 @queue_work_on(i32 noundef 16, ptr noundef %25, ptr noundef %26) #15
  br label %28

28:                                               ; preds = %24, %22, %12, %5, %1
  %29 = xor i1 %4, true
  ret i1 %29
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @xprt_adjust_timeout(ptr nocapture noundef %0) local_unnamed_addr #0 {
  %2 = load ptr, ptr %0, align 8
  %3 = getelementptr inbounds %struct.rpc_rqst, ptr %0, i32 0, i32 3
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.rpc_task, ptr %4, i32 0, i32 13
  %6 = load ptr, ptr %5, align 8
  %7 = getelementptr inbounds %struct.rpc_clnt, ptr %6, i32 0, i32 16
  %8 = load ptr, ptr %7, align 4
  %9 = load volatile i32, ptr @jiffies, align 64
  %10 = getelementptr inbounds %struct.rpc_rqst, ptr %0, i32 0, i32 21
  %11 = load i32, ptr %10, align 4
  %12 = sub i32 %9, %11
  %13 = icmp slt i32 %12, 0
  br i1 %13, label %14, label %48

14:                                               ; preds = %1
  %15 = load volatile i32, ptr @jiffies, align 64
  %16 = getelementptr inbounds %struct.rpc_rqst, ptr %0, i32 0, i32 22
  %17 = load i32, ptr %16, align 8
  %18 = sub i32 %15, %17
  %19 = icmp slt i32 %18, 0
  br i1 %19, label %99, label %20

20:                                               ; preds = %14
  %21 = getelementptr inbounds %struct.rpc_timeout, ptr %8, i32 0, i32 4
  %22 = load i8, ptr %21, align 4
  %23 = icmp eq i8 %22, 0
  br i1 %23, label %28, label %24

24:                                               ; preds = %20
  %25 = getelementptr inbounds %struct.rpc_rqst, ptr %0, i32 0, i32 23
  %26 = load i32, ptr %25, align 4
  %27 = shl i32 %26, 1
  store i32 %27, ptr %25, align 4
  br label %34

28:                                               ; preds = %20
  %29 = getelementptr inbounds %struct.rpc_timeout, ptr %8, i32 0, i32 2
  %30 = load i32, ptr %29, align 4
  %31 = getelementptr inbounds %struct.rpc_rqst, ptr %0, i32 0, i32 23
  %32 = load i32, ptr %31, align 4
  %33 = add i32 %32, %30
  store i32 %33, ptr %31, align 4
  br label %34

34:                                               ; preds = %28, %24
  %35 = phi i32 [ %33, %28 ], [ %27, %24 ]
  %36 = getelementptr inbounds %struct.rpc_timeout, ptr %8, i32 0, i32 1
  %37 = load i32, ptr %36, align 4
  %38 = icmp eq i32 %37, 0
  %39 = icmp ult i32 %35, %37
  %40 = select i1 %38, i1 true, i1 %39
  br i1 %40, label %43, label %41

41:                                               ; preds = %34
  %42 = getelementptr inbounds %struct.rpc_rqst, ptr %0, i32 0, i32 23
  store i32 %37, ptr %42, align 4
  br label %43

43:                                               ; preds = %41, %34
  %44 = phi i32 [ %37, %41 ], [ %35, %34 ]
  %45 = getelementptr inbounds %struct.rpc_rqst, ptr %0, i32 0, i32 25
  %46 = load i32, ptr %45, align 8
  %47 = add i32 %46, 1
  store i32 %47, ptr %45, align 8
  br label %89

48:                                               ; preds = %1
  %49 = load i32, ptr %8, align 4
  %50 = getelementptr inbounds %struct.rpc_rqst, ptr %0, i32 0, i32 23
  store i32 %49, ptr %50, align 4
  %51 = getelementptr inbounds %struct.rpc_rqst, ptr %0, i32 0, i32 25
  store i32 0, ptr %51, align 8
  %52 = load ptr, ptr %5, align 8
  %53 = getelementptr inbounds %struct.rpc_clnt, ptr %52, i32 0, i32 16
  %54 = load ptr, ptr %53, align 4
  %55 = getelementptr inbounds %struct.rpc_timeout, ptr %54, i32 0, i32 4
  %56 = load i8, ptr %55, align 4
  %57 = icmp eq i8 %56, 0
  br i1 %57, label %62, label %58

58:                                               ; preds = %48
  %59 = getelementptr inbounds %struct.rpc_timeout, ptr %54, i32 0, i32 3
  %60 = load i32, ptr %59, align 4
  %61 = shl i32 %49, %60
  br label %69

62:                                               ; preds = %48
  %63 = getelementptr inbounds %struct.rpc_timeout, ptr %54, i32 0, i32 2
  %64 = load i32, ptr %63, align 4
  %65 = getelementptr inbounds %struct.rpc_timeout, ptr %54, i32 0, i32 3
  %66 = load i32, ptr %65, align 4
  %67 = mul i32 %66, %64
  %68 = add i32 %67, %49
  br label %69

69:                                               ; preds = %62, %58
  %70 = phi i32 [ %61, %58 ], [ %68, %62 ]
  %71 = getelementptr inbounds %struct.rpc_timeout, ptr %54, i32 0, i32 1
  %72 = load i32, ptr %71, align 4
  %73 = add i32 %70, -1
  %74 = icmp ult i32 %73, %72
  %75 = select i1 %74, i32 %70, i32 %72
  %76 = add i32 %75, %11
  store i32 %76, ptr %10, align 4
  %77 = getelementptr inbounds %struct.rpc_xprt, ptr %2, i32 0, i32 33
  tail call void @_raw_spin_lock(ptr noundef %77) #15
  %78 = load ptr, ptr %3, align 4
  %79 = getelementptr inbounds %struct.rpc_task, ptr %78, i32 0, i32 13
  %80 = load ptr, ptr %79, align 8
  %81 = getelementptr inbounds %struct.rpc_clnt, ptr %80, i32 0, i32 15
  %82 = load ptr, ptr %81, align 4
  %83 = load i32, ptr %8, align 4
  tail call void @rpc_init_rtt(ptr noundef %82, i32 noundef %83) #15
  tail call void asm sideeffect "dmb ish", "~{memory}"() #15, !srcloc !8
  %84 = load i16, ptr %77, align 4
  %85 = add i16 %84, 1
  store i16 %85, ptr %77, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #15, !srcloc !9
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #15, !srcloc !10
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !11
  %86 = load i32, ptr %50, align 4
  %87 = getelementptr inbounds %struct.rpc_rqst, ptr %0, i32 0, i32 22
  %88 = load i32, ptr %87, align 8
  br label %89

89:                                               ; preds = %69, %43
  %90 = phi i32 [ %17, %43 ], [ %88, %69 ]
  %91 = phi i32 [ %44, %43 ], [ %86, %69 ]
  %92 = phi i32 [ 0, %43 ], [ -110, %69 ]
  %93 = getelementptr inbounds %struct.rpc_rqst, ptr %0, i32 0, i32 22
  %94 = add i32 %90, %91
  store i32 %94, ptr %93, align 8
  %95 = icmp eq i32 %91, 0
  br i1 %95, label %96, label %99

96:                                               ; preds = %89
  %97 = getelementptr inbounds %struct.rpc_rqst, ptr %0, i32 0, i32 23
  %98 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2) #16
  store i32 500, ptr %97, align 4
  br label %99

99:                                               ; preds = %96, %89, %14
  %100 = phi i32 [ 0, %14 ], [ %92, %96 ], [ %92, %89 ]
  ret i32 %100
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rpc_init_rtt(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @xprt_disconnect_done(ptr noundef %0) #0 {
  %2 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xprt_disconnect_done, i32 0, i32 1), align 4
  %3 = icmp sgt i32 %2, 0
  br i1 %3, label %4, label %17

4:                                                ; preds = %1
  %5 = tail call ptr @llvm.thread.pointer() #15
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
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !27
  %16 = tail call i32 @__traceiter_xprt_disconnect_done(ptr noundef null, ptr noundef %0) #15
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !28
  br label %17

17:                                               ; preds = %15, %4, %1
  %18 = getelementptr inbounds %struct.rpc_xprt, ptr %0, i32 0, i32 33
  tail call void @_raw_spin_lock(ptr noundef %18) #15
  %19 = getelementptr inbounds %struct.rpc_xprt, ptr %0, i32 0, i32 18
  tail call void @_clear_bit(i32 noundef 1, ptr noundef %19) #15
  %20 = tail call fastcc zeroext i1 @xprt_clear_write_space_locked(ptr noundef %0)
  %21 = tail call i32 @_test_and_clear_bit(i32 noundef 10, ptr noundef %19) #15
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %24, label %23

23:                                               ; preds = %17
  tail call fastcc void @__xprt_lock_write_next_cong(ptr noundef %0) #15
  br label %24

24:                                               ; preds = %23, %17
  %25 = getelementptr inbounds %struct.rpc_xprt, ptr %0, i32 0, i32 12
  tail call void @rpc_wake_up_status(ptr noundef %25, i32 noundef -107) #15
  tail call void asm sideeffect "dmb ish", "~{memory}"() #15, !srcloc !8
  %26 = load i16, ptr %18, align 4
  %27 = add i16 %26, 1
  store i16 %27, ptr %18, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #15, !srcloc !9
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #15, !srcloc !10
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @xprt_force_disconnect(ptr noundef %0) #0 {
  %2 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xprt_disconnect_force, i32 0, i32 1), align 4
  %3 = icmp sgt i32 %2, 0
  br i1 %3, label %4, label %17

4:                                                ; preds = %1
  %5 = tail call ptr @llvm.thread.pointer() #15
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
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !29
  %16 = tail call i32 @__traceiter_xprt_disconnect_force(ptr noundef null, ptr noundef %0) #15
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !30
  br label %17

17:                                               ; preds = %15, %4, %1
  %18 = getelementptr inbounds %struct.rpc_xprt, ptr %0, i32 0, i32 33
  tail call void @_raw_spin_lock(ptr noundef %18) #15
  %19 = getelementptr inbounds %struct.rpc_xprt, ptr %0, i32 0, i32 18
  %20 = tail call i32 @_test_and_set_bit(i32 noundef 3, ptr noundef %19) #15
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %39

22:                                               ; preds = %17
  %23 = tail call i32 @_test_and_set_bit(i32 noundef 0, ptr noundef %19) #15
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %29

25:                                               ; preds = %22
  %26 = load ptr, ptr @xprtiod_workqueue, align 4
  %27 = getelementptr inbounds %struct.rpc_xprt, ptr %0, i32 0, i32 26
  %28 = tail call zeroext i1 @queue_work_on(i32 noundef 16, ptr noundef %26, ptr noundef %27) #15
  br label %39

29:                                               ; preds = %22
  %30 = getelementptr inbounds %struct.rpc_xprt, ptr %0, i32 0, i32 37
  %31 = load ptr, ptr %30, align 4
  %32 = icmp eq ptr %31, null
  br i1 %32, label %39, label %33

33:                                               ; preds = %29
  %34 = load volatile i32, ptr %19, align 4
  %35 = and i32 %34, 4096
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %33
  %38 = getelementptr inbounds %struct.rpc_xprt, ptr %0, i32 0, i32 12
  tail call void @rpc_wake_up_queued_task_set_status(ptr noundef %38, ptr noundef nonnull %31, i32 noundef -107) #15
  br label %39

39:                                               ; preds = %37, %33, %29, %25, %17
  tail call void asm sideeffect "dmb ish", "~{memory}"() #15, !srcloc !8
  %40 = load i16, ptr %18, align 4
  %41 = add i16 %40, 1
  store i16 %41, ptr %18, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #15, !srcloc !9
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #15, !srcloc !10
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @xprt_conditional_disconnect(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.rpc_xprt, ptr %0, i32 0, i32 33
  tail call void @_raw_spin_lock(ptr noundef %3) #15
  %4 = getelementptr inbounds %struct.rpc_xprt, ptr %0, i32 0, i32 25
  %5 = load i32, ptr %4, align 8
  %6 = icmp eq i32 %5, %1
  br i1 %6, label %7, label %32

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.rpc_xprt, ptr %0, i32 0, i32 18
  %9 = load volatile i32, ptr %8, align 4
  %10 = and i32 %9, 64
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %32

12:                                               ; preds = %7
  %13 = tail call i32 @_test_and_set_bit(i32 noundef 3, ptr noundef %8) #15
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %32

15:                                               ; preds = %12
  %16 = tail call i32 @_test_and_set_bit(i32 noundef 0, ptr noundef %8) #15
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %22

18:                                               ; preds = %15
  %19 = load ptr, ptr @xprtiod_workqueue, align 4
  %20 = getelementptr inbounds %struct.rpc_xprt, ptr %0, i32 0, i32 26
  %21 = tail call zeroext i1 @queue_work_on(i32 noundef 16, ptr noundef %19, ptr noundef %20) #15
  br label %32

22:                                               ; preds = %15
  %23 = getelementptr inbounds %struct.rpc_xprt, ptr %0, i32 0, i32 37
  %24 = load ptr, ptr %23, align 4
  %25 = icmp eq ptr %24, null
  br i1 %25, label %32, label %26

26:                                               ; preds = %22
  %27 = load volatile i32, ptr %8, align 4
  %28 = and i32 %27, 4096
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %26
  %31 = getelementptr inbounds %struct.rpc_xprt, ptr %0, i32 0, i32 12
  tail call void @rpc_wake_up_queued_task_set_status(ptr noundef %31, ptr noundef nonnull %24, i32 noundef -107) #15
  br label %32

32:                                               ; preds = %30, %26, %22, %18, %12, %7, %2
  tail call void asm sideeffect "dmb ish", "~{memory}"() #15, !srcloc !8
  %33 = load i16, ptr %3, align 4
  %34 = add i16 %33, 1
  store i16 %34, ptr %3, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #15, !srcloc !9
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #15, !srcloc !10
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local zeroext i1 @xprt_lock_connect(ptr noundef %0, ptr noundef readnone %1, ptr noundef %2) #0 {
  %4 = getelementptr inbounds %struct.rpc_xprt, ptr %0, i32 0, i32 33
  tail call void @_raw_spin_lock(ptr noundef %4) #15
  %5 = getelementptr inbounds %struct.rpc_xprt, ptr %0, i32 0, i32 18
  %6 = load volatile i32, ptr %5, align 4
  %7 = and i32 %6, 1
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %14, label %9

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.rpc_xprt, ptr %0, i32 0, i32 37
  %11 = load ptr, ptr %10, align 4
  %12 = icmp eq ptr %11, %1
  br i1 %12, label %13, label %14

13:                                               ; preds = %9
  tail call void @_set_bit(i32 noundef 12, ptr noundef %5) #15
  store ptr %2, ptr %10, align 4
  br label %14

14:                                               ; preds = %13, %9, %3
  %15 = phi i1 [ false, %9 ], [ true, %13 ], [ false, %3 ]
  tail call void asm sideeffect "dmb ish", "~{memory}"() #15, !srcloc !8
  %16 = load i16, ptr %4, align 4
  %17 = add i16 %16, 1
  store i16 %17, ptr %4, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #15, !srcloc !9
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #15, !srcloc !10
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !11
  ret i1 %15
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @xprt_unlock_connect(ptr noundef %0, ptr noundef readnone %1) #0 {
  %3 = getelementptr inbounds %struct.rpc_xprt, ptr %0, i32 0, i32 33
  tail call void @_raw_spin_lock(ptr noundef %3) #15
  %4 = getelementptr inbounds %struct.rpc_xprt, ptr %0, i32 0, i32 37
  %5 = load ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, %1
  br i1 %6, label %7, label %30

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.rpc_xprt, ptr %0, i32 0, i32 18
  %9 = load volatile i32, ptr %8, align 4
  %10 = and i32 %9, 1
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %30, label %12

12:                                               ; preds = %7
  store ptr null, ptr %4, align 4
  tail call void @_clear_bit(i32 noundef 12, ptr noundef %8) #15
  %13 = getelementptr inbounds %struct.rpc_xprt, ptr %0, i32 0, i32 1
  %14 = load ptr, ptr %13, align 4
  %15 = getelementptr inbounds %struct.rpc_xprt_ops, ptr %14, i32 0, i32 2
  %16 = load ptr, ptr %15, align 4
  tail call void %16(ptr noundef %0, ptr noundef null) #15
  %17 = load volatile i32, ptr @jiffies, align 64
  %18 = getelementptr inbounds %struct.rpc_xprt, ptr %0, i32 0, i32 28
  store i32 %17, ptr %18, align 8
  %19 = getelementptr inbounds %struct.rpc_xprt, ptr %0, i32 0, i32 47
  %20 = load volatile ptr, ptr %19, align 4
  %21 = icmp eq ptr %20, null
  br i1 %21, label %22, label %30

22:                                               ; preds = %12
  %23 = getelementptr inbounds %struct.rpc_xprt, ptr %0, i32 0, i32 29
  %24 = load i32, ptr %23, align 4
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %30, label %26

26:                                               ; preds = %22
  %27 = getelementptr inbounds %struct.rpc_xprt, ptr %0, i32 0, i32 27
  %28 = add i32 %24, %17
  %29 = tail call i32 @mod_timer(ptr noundef %27, i32 noundef %28) #15
  br label %30

30:                                               ; preds = %26, %22, %12, %7, %2
  tail call void asm sideeffect "dmb ish", "~{memory}"() #15, !srcloc !8
  %31 = load i16, ptr %3, align 4
  %32 = add i16 %31, 1
  store i16 %32, ptr %3, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #15, !srcloc !9
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #15, !srcloc !10
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !11
  %33 = getelementptr inbounds %struct.rpc_xprt, ptr %0, i32 0, i32 18
  tail call void @wake_up_bit(ptr noundef %33, i32 noundef 0) #15
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @wake_up_bit(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @xprt_connect(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.rpc_task, ptr %0, i32 0, i32 16
  %3 = load ptr, ptr %2, align 4
  %4 = load ptr, ptr %3, align 8
  %5 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xprt_connect, i32 0, i32 1), align 4
  %6 = icmp sgt i32 %5, 0
  br i1 %6, label %7, label %20

7:                                                ; preds = %1
  %8 = tail call ptr @llvm.thread.pointer() #15
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
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !31
  %19 = tail call i32 @__traceiter_xprt_connect(ptr noundef null, ptr noundef %4) #15
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !32
  br label %20

20:                                               ; preds = %18, %7, %1
  %21 = getelementptr inbounds %struct.rpc_xprt, ptr %4, i32 0, i32 18
  %22 = load volatile i32, ptr %21, align 4
  %23 = and i32 %22, 16
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %20
  %26 = getelementptr inbounds %struct.rpc_task, ptr %0, i32 0, i32 1
  store i32 -11, ptr %26, align 4
  br label %120

27:                                               ; preds = %20
  %28 = load volatile i32, ptr %21, align 4
  %29 = and i32 %28, 1
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %35, label %31

31:                                               ; preds = %27
  %32 = getelementptr inbounds %struct.rpc_xprt, ptr %4, i32 0, i32 37
  %33 = load ptr, ptr %32, align 4
  %34 = icmp eq ptr %33, %0
  br i1 %34, label %45, label %35

35:                                               ; preds = %31, %27
  %36 = getelementptr inbounds %struct.rpc_xprt, ptr %4, i32 0, i32 33
  tail call void @_raw_spin_lock(ptr noundef %36) #15
  %37 = getelementptr inbounds %struct.rpc_xprt, ptr %4, i32 0, i32 1
  %38 = load ptr, ptr %37, align 4
  %39 = getelementptr inbounds %struct.rpc_xprt_ops, ptr %38, i32 0, i32 1
  %40 = load ptr, ptr %39, align 4
  %41 = tail call i32 %40(ptr noundef %4, ptr noundef %0) #15
  tail call void asm sideeffect "dmb ish", "~{memory}"() #15, !srcloc !8
  %42 = load i16, ptr %36, align 4
  %43 = add i16 %42, 1
  store i16 %43, ptr %36, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #15, !srcloc !9
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #15, !srcloc !10
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !11
  %44 = icmp eq i32 %41, 0
  br i1 %44, label %120, label %45

45:                                               ; preds = %35, %31
  %46 = tail call i32 @_test_and_clear_bit(i32 noundef 3, ptr noundef %21) #15
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %69, label %48

48:                                               ; preds = %45
  %49 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xprt_disconnect_cleanup, i32 0, i32 1), align 4
  %50 = icmp sgt i32 %49, 0
  br i1 %50, label %51, label %64

51:                                               ; preds = %48
  %52 = tail call ptr @llvm.thread.pointer() #15
  %53 = getelementptr inbounds %struct.thread_info, ptr %52, i32 0, i32 2
  %54 = load i32, ptr %53, align 8
  %55 = lshr i32 %54, 5
  %56 = getelementptr i32, ptr @__cpu_online_mask, i32 %55
  %57 = load volatile i32, ptr %56, align 4
  %58 = and i32 %54, 31
  %59 = shl nuw i32 1, %58
  %60 = and i32 %59, %57
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %64, label %62

62:                                               ; preds = %51
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !33
  %63 = tail call i32 @__traceiter_xprt_disconnect_cleanup(ptr noundef null, ptr noundef %4) #15
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !34
  br label %64

64:                                               ; preds = %62, %51, %48
  %65 = getelementptr inbounds %struct.rpc_xprt, ptr %4, i32 0, i32 1
  %66 = load ptr, ptr %65, align 4
  %67 = getelementptr inbounds %struct.rpc_xprt_ops, ptr %66, i32 0, i32 15
  %68 = load ptr, ptr %67, align 4
  tail call void %68(ptr noundef %4) #15
  br label %69

69:                                               ; preds = %64, %45
  %70 = load volatile i32, ptr %21, align 4
  %71 = and i32 %70, 2
  %72 = icmp eq i32 %71, 0
  br i1 %72, label %73, label %108

73:                                               ; preds = %69
  %74 = getelementptr inbounds %struct.rpc_xprt, ptr %4, i32 0, i32 25
  %75 = load i32, ptr %74, align 8
  %76 = load ptr, ptr %2, align 4
  %77 = getelementptr inbounds %struct.rpc_rqst, ptr %76, i32 0, i32 26
  store i32 %75, ptr %77, align 4
  %78 = getelementptr inbounds %struct.rpc_xprt, ptr %4, i32 0, i32 12
  %79 = load ptr, ptr %2, align 4
  %80 = load volatile i32, ptr @jiffies, align 64
  %81 = getelementptr inbounds %struct.rpc_rqst, ptr %79, i32 0, i32 23
  %82 = load i32, ptr %81, align 4
  %83 = add i32 %82, %80
  %84 = getelementptr inbounds %struct.rpc_rqst, ptr %79, i32 0, i32 21
  %85 = load i32, ptr %84, align 4
  %86 = sub i32 %83, %85
  %87 = icmp slt i32 %86, 0
  %88 = select i1 %87, i32 %83, i32 %85
  tail call void @rpc_sleep_on_timeout(ptr noundef %78, ptr noundef %0, ptr noundef null, i32 noundef %88) #15
  %89 = load volatile i32, ptr %21, align 4
  %90 = and i32 %89, 64
  %91 = icmp eq i32 %90, 0
  br i1 %91, label %92, label %120

92:                                               ; preds = %73
  %93 = tail call i32 @_test_and_set_bit(i32 noundef 2, ptr noundef %21) #15
  %94 = icmp eq i32 %93, 0
  br i1 %94, label %95, label %120

95:                                               ; preds = %92
  %96 = load volatile i32, ptr %21, align 4
  %97 = and i32 %96, 2
  %98 = icmp eq i32 %97, 0
  br i1 %98, label %99, label %106

99:                                               ; preds = %95
  %100 = load volatile i32, ptr @jiffies, align 64
  %101 = getelementptr inbounds %struct.rpc_xprt, ptr %4, i32 0, i32 48, i32 2
  store i32 %100, ptr %101, align 8
  %102 = getelementptr inbounds %struct.rpc_xprt, ptr %4, i32 0, i32 1
  %103 = load ptr, ptr %102, align 4
  %104 = getelementptr inbounds %struct.rpc_xprt_ops, ptr %103, i32 0, i32 7
  %105 = load ptr, ptr %104, align 4
  tail call void %105(ptr noundef %4, ptr noundef %0) #15
  br label %108

106:                                              ; preds = %95
  tail call void asm sideeffect "dmb ish", "~{memory}"() #15, !srcloc !35
  tail call void @_clear_bit(i32 noundef 2, ptr noundef %21) #15
  tail call void asm sideeffect "dmb ish", "~{memory}"() #15, !srcloc !36
  %107 = getelementptr inbounds %struct.rpc_task, ptr %0, i32 0, i32 1
  store i32 0, ptr %107, align 4
  tail call void @rpc_wake_up_queued_task(ptr noundef %78, ptr noundef %0) #15
  br label %108

108:                                              ; preds = %106, %99, %69
  %109 = getelementptr inbounds %struct.rpc_xprt, ptr %4, i32 0, i32 37
  %110 = load ptr, ptr %109, align 4
  %111 = icmp eq ptr %110, %0
  br i1 %111, label %112, label %120

112:                                              ; preds = %108
  %113 = getelementptr inbounds %struct.rpc_xprt, ptr %4, i32 0, i32 33
  tail call void @_raw_spin_lock(ptr noundef %113) #15
  %114 = getelementptr inbounds %struct.rpc_xprt, ptr %4, i32 0, i32 1
  %115 = load ptr, ptr %114, align 4
  %116 = getelementptr inbounds %struct.rpc_xprt_ops, ptr %115, i32 0, i32 2
  %117 = load ptr, ptr %116, align 4
  tail call void %117(ptr noundef %4, ptr noundef %0) #15
  tail call void asm sideeffect "dmb ish", "~{memory}"() #15, !srcloc !8
  %118 = load i16, ptr %113, align 4
  %119 = add i16 %118, 1
  store i16 %119, ptr %113, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #15, !srcloc !9
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #15, !srcloc !10
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !11
  br label %120

120:                                              ; preds = %112, %108, %92, %73, %35, %25
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @rpc_wake_up_queued_task(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree norecurse nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define dso_local i32 @xprt_reconnect_delay(ptr nocapture noundef readonly %0) #4 {
  %2 = load volatile i32, ptr @jiffies, align 64
  %3 = getelementptr inbounds %struct.rpc_xprt, ptr %0, i32 0, i32 48, i32 2
  %4 = load i32, ptr %3, align 8
  %5 = getelementptr inbounds %struct.rpc_xprt, ptr %0, i32 0, i32 24
  %6 = load i32, ptr %5, align 4
  %7 = add i32 %6, %4
  %8 = sub i32 %2, %7
  %9 = icmp slt i32 %8, 0
  %10 = sub i32 %7, %2
  %11 = select i1 %9, i32 %10, i32 0
  ret i32 %11
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define dso_local void @xprt_reconnect_backoff(ptr nocapture noundef %0, i32 noundef %1) #5 {
  %3 = getelementptr inbounds %struct.rpc_xprt, ptr %0, i32 0, i32 24
  %4 = load i32, ptr %3, align 4
  %5 = shl i32 %4, 1
  %6 = getelementptr inbounds %struct.rpc_xprt, ptr %0, i32 0, i32 31
  %7 = load i32, ptr %6, align 4
  %8 = tail call i32 @llvm.umin.i32(i32 %5, i32 %7)
  %9 = tail call i32 @llvm.umax.i32(i32 %8, i32 %1)
  store i32 %9, ptr %3, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @xprt_lookup_rqst(ptr noundef %0, i32 noundef %1) #0 {
  %3 = getelementptr inbounds %struct.rpc_xprt, ptr %0, i32 0, i32 47
  %4 = load ptr, ptr %3, align 4
  %5 = icmp eq ptr %4, null
  br i1 %5, label %49, label %6

6:                                                ; preds = %21, %2
  %7 = phi ptr [ %22, %21 ], [ %4, %2 ]
  %8 = getelementptr i8, ptr %7, i32 -24
  %9 = load i32, ptr %8, align 4
  %10 = icmp eq i32 %9, %1
  %11 = icmp ugt i32 %9, %1
  %12 = select i1 %11, i32 1, i32 2
  %13 = select i1 %10, i32 0, i32 %12
  switch i32 %13, label %21 [
    i32 1, label %14
    i32 2, label %16
    i32 0, label %24
  ]

14:                                               ; preds = %6
  %15 = getelementptr inbounds %struct.rb_node, ptr %7, i32 0, i32 2
  br label %18

16:                                               ; preds = %6
  %17 = getelementptr inbounds %struct.rb_node, ptr %7, i32 0, i32 1
  br label %18

18:                                               ; preds = %16, %14
  %19 = phi ptr [ %17, %16 ], [ %15, %14 ]
  %20 = load ptr, ptr %19, align 4
  br label %21

21:                                               ; preds = %18, %6
  %22 = phi ptr [ %7, %6 ], [ %20, %18 ]
  %23 = icmp eq ptr %22, null
  br i1 %23, label %49, label %6

24:                                               ; preds = %6
  %25 = getelementptr i8, ptr %7, i32 -124
  %26 = icmp eq ptr %25, null
  br i1 %26, label %49, label %27

27:                                               ; preds = %24
  %28 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xprt_lookup_rqst, i32 0, i32 1), align 4
  %29 = icmp sgt i32 %28, 0
  br i1 %29, label %30, label %43

30:                                               ; preds = %27
  %31 = tail call ptr @llvm.thread.pointer() #15
  %32 = getelementptr inbounds %struct.thread_info, ptr %31, i32 0, i32 2
  %33 = load i32, ptr %32, align 8
  %34 = lshr i32 %33, 5
  %35 = getelementptr i32, ptr @__cpu_online_mask, i32 %34
  %36 = load volatile i32, ptr %35, align 4
  %37 = and i32 %33, 31
  %38 = shl nuw i32 1, %37
  %39 = and i32 %38, %36
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %43, label %41

41:                                               ; preds = %30
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !37
  %42 = tail call i32 @__traceiter_xprt_lookup_rqst(ptr noundef null, ptr noundef %0, i32 noundef %1, i32 noundef 0) #15
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !38
  br label %43

43:                                               ; preds = %41, %30, %27
  %44 = tail call i64 @ktime_get() #15
  %45 = getelementptr i8, ptr %7, i32 132
  %46 = load i64, ptr %45, align 8
  %47 = sub i64 %44, %46
  %48 = getelementptr i8, ptr %7, i32 108
  store i64 %47, ptr %48, align 8
  br label %69

49:                                               ; preds = %24, %21, %2
  %50 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xprt_lookup_rqst, i32 0, i32 1), align 4
  %51 = icmp sgt i32 %50, 0
  br i1 %51, label %52, label %65

52:                                               ; preds = %49
  %53 = tail call ptr @llvm.thread.pointer() #15
  %54 = getelementptr inbounds %struct.thread_info, ptr %53, i32 0, i32 2
  %55 = load i32, ptr %54, align 8
  %56 = lshr i32 %55, 5
  %57 = getelementptr i32, ptr @__cpu_online_mask, i32 %56
  %58 = load volatile i32, ptr %57, align 4
  %59 = and i32 %55, 31
  %60 = shl nuw i32 1, %59
  %61 = and i32 %60, %58
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %65, label %63

63:                                               ; preds = %52
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !37
  %64 = tail call i32 @__traceiter_xprt_lookup_rqst(ptr noundef null, ptr noundef %0, i32 noundef %1, i32 noundef -2) #15
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !38
  br label %65

65:                                               ; preds = %63, %52, %49
  %66 = getelementptr inbounds %struct.rpc_xprt, ptr %0, i32 0, i32 48, i32 6
  %67 = load i32, ptr %66, align 8
  %68 = add i32 %67, 1
  store i32 %68, ptr %66, align 8
  br label %69

69:                                               ; preds = %65, %43
  %70 = phi ptr [ %25, %43 ], [ null, %65 ]
  ret ptr %70
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get() local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @xprt_pin_rqst(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.rpc_rqst, ptr %0, i32 0, i32 27
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %2) #15, !srcloc !15
  %3 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %2, ptr %2, i32 1, ptr elementtype(i32) %2) #15, !srcloc !39
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @xprt_unpin_rqst(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.rpc_rqst, ptr %0, i32 0, i32 3
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.rpc_task, ptr %3, i32 0, i32 6
  %5 = load volatile i32, ptr %4, align 4
  %6 = and i32 %5, 32
  %7 = icmp eq i32 %6, 0
  %8 = getelementptr inbounds %struct.rpc_rqst, ptr %0, i32 0, i32 27
  br i1 %7, label %9, label %11

9:                                                ; preds = %1
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %8) #15, !srcloc !15
  %10 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %8, ptr %8, i32 1, ptr elementtype(i32) %8) #15, !srcloc !40
  br label %16

11:                                               ; preds = %1
  tail call void asm sideeffect "dmb ish", "~{memory}"() #15, !srcloc !41
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %8) #15, !srcloc !15
  %12 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %8, ptr %8, i32 1, ptr elementtype(i32) %8) #15, !srcloc !42
  %13 = extractvalue { i32, i32 } %12, 0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #15, !srcloc !43
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %11
  tail call void @wake_up_var(ptr noundef %8) #15
  br label %16

16:                                               ; preds = %15, %11, %9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @wake_up_var(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @xprt_request_enqueue_receive(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.rpc_task, ptr %0, i32 0, i32 16
  %3 = load ptr, ptr %2, align 4
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.rpc_task, ptr %0, i32 0, i32 6
  %6 = load volatile i32, ptr %5, align 4
  %7 = and i32 %6, 16
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %67

9:                                                ; preds = %1
  %10 = getelementptr inbounds %struct.rpc_rqst, ptr %3, i32 0, i32 19
  %11 = load volatile i32, ptr %10, align 4
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %67

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct.rpc_xprt, ptr %4, i32 0, i32 1
  %15 = load ptr, ptr %14, align 4
  %16 = getelementptr inbounds %struct.rpc_xprt_ops, ptr %15, i32 0, i32 10
  %17 = load ptr, ptr %16, align 4
  %18 = icmp eq ptr %17, null
  br i1 %18, label %20, label %19

19:                                               ; preds = %13
  tail call void %17(ptr noundef %3) #15
  br label %20

20:                                               ; preds = %19, %13
  %21 = getelementptr inbounds %struct.rpc_xprt, ptr %4, i32 0, i32 35
  tail call void @_raw_spin_lock(ptr noundef %21) #15
  %22 = getelementptr inbounds %struct.rpc_rqst, ptr %3, i32 0, i32 20
  %23 = getelementptr inbounds %struct.rpc_rqst, ptr %3, i32 0, i32 2
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 8 dereferenceable(44) %22, ptr noundef align 8 dereferenceable(44) %23, i32 44, i1 false)
  %24 = getelementptr inbounds %struct.rpc_xprt, ptr %4, i32 0, i32 47
  %25 = load ptr, ptr %24, align 4
  %26 = icmp eq ptr %25, null
  br i1 %26, label %56, label %27

27:                                               ; preds = %20
  %28 = getelementptr inbounds %struct.rpc_rqst, ptr %3, i32 0, i32 5
  %29 = load i32, ptr %28, align 4
  br label %30

30:                                               ; preds = %50, %27
  %31 = phi ptr [ %25, %27 ], [ %52, %50 ]
  %32 = phi ptr [ %24, %27 ], [ %51, %50 ]
  %33 = getelementptr i8, ptr %31, i32 -24
  %34 = load i32, ptr %33, align 4
  %35 = icmp eq i32 %29, %34
  %36 = icmp ult i32 %29, %34
  %37 = select i1 %36, i32 1, i32 2
  %38 = select i1 %35, i32 0, i32 %37
  switch i32 %38, label %50 [
    i32 1, label %39
    i32 2, label %41
    i32 0, label %43
  ]

39:                                               ; preds = %30
  %40 = getelementptr inbounds %struct.rb_node, ptr %31, i32 0, i32 2
  br label %50

41:                                               ; preds = %30
  %42 = getelementptr inbounds %struct.rb_node, ptr %31, i32 0, i32 1
  br label %50

43:                                               ; preds = %30
  %44 = getelementptr i8, ptr %31, i32 -124
  %45 = icmp ne ptr %44, %3
  %46 = load i1, ptr @xprt_request_rb_insert.__already_done, align 1
  %47 = xor i1 %46, true
  %48 = select i1 %45, i1 %47, i1 false
  br i1 %48, label %49, label %62, !prof !44

49:                                               ; preds = %43
  store i1 true, ptr @xprt_request_rb_insert.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 1046, i32 noundef 9, ptr noundef null) #15
  br label %62

50:                                               ; preds = %41, %39, %30
  %51 = phi ptr [ %32, %30 ], [ %42, %41 ], [ %40, %39 ]
  %52 = load ptr, ptr %51, align 4
  %53 = icmp eq ptr %52, null
  br i1 %53, label %54, label %30

54:                                               ; preds = %50
  %55 = ptrtoint ptr %31 to i32
  br label %56

56:                                               ; preds = %54, %20
  %57 = phi i32 [ %55, %54 ], [ 0, %20 ]
  %58 = phi ptr [ %51, %54 ], [ %24, %20 ]
  %59 = getelementptr inbounds %struct.rpc_rqst, ptr %3, i32 0, i32 11
  store i32 %57, ptr %59, align 4
  %60 = getelementptr inbounds %struct.rpc_rqst, ptr %3, i32 0, i32 11, i32 0, i32 1
  store ptr null, ptr %60, align 4
  %61 = getelementptr inbounds %struct.rpc_rqst, ptr %3, i32 0, i32 11, i32 0, i32 2
  store ptr null, ptr %61, align 4
  store ptr %59, ptr %58, align 4
  tail call void @rb_insert_color(ptr noundef %59, ptr noundef %24) #15
  br label %62

62:                                               ; preds = %56, %49, %43
  tail call void @_set_bit(i32 noundef 4, ptr noundef %5) #15
  tail call void asm sideeffect "dmb ish", "~{memory}"() #15, !srcloc !8
  %63 = load i16, ptr %21, align 4
  %64 = add i16 %63, 1
  store i16 %64, ptr %21, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #15, !srcloc !9
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #15, !srcloc !10
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !11
  %65 = getelementptr inbounds %struct.rpc_xprt, ptr %4, i32 0, i32 27
  %66 = tail call i32 @del_timer_sync(ptr noundef %65) #15
  br label %67

67:                                               ; preds = %62, %9, %1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @xprt_request_prepare(ptr noundef %0) local_unnamed_addr #0 {
  %2 = load ptr, ptr %0, align 8
  %3 = getelementptr inbounds %struct.rpc_xprt, ptr %2, i32 0, i32 1
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.rpc_xprt_ops, ptr %4, i32 0, i32 10
  %6 = load ptr, ptr %5, align 4
  %7 = icmp eq ptr %6, null
  br i1 %7, label %9, label %8

8:                                                ; preds = %1
  tail call void %6(ptr noundef %0) #15
  br label %9

9:                                                ; preds = %8, %1
  ret void
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @del_timer_sync(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @xprt_update_rtt(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.rpc_task, ptr %0, i32 0, i32 16
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.rpc_task, ptr %0, i32 0, i32 13
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.rpc_clnt, ptr %5, i32 0, i32 15
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.rpc_task, ptr %0, i32 0, i32 10
  %9 = load ptr, ptr %8, align 8
  %10 = getelementptr inbounds %struct.rpc_procinfo, ptr %9, i32 0, i32 5
  %11 = load i32, ptr %10, align 4
  %12 = getelementptr inbounds %struct.rpc_rqst, ptr %3, i32 0, i32 24
  %13 = load i64, ptr %12, align 8
  %14 = tail call i64 @llvm.abs.i64(i64 %13, i1 false) #15
  %15 = tail call { i64, i32 } asm "umull\09${0:Q}, ${0:R}, ${2:Q}, ${3:Q}\0A\09cmn\09${0:Q}, ${2:Q}\0A\09adcs\09${0:R}, ${0:R}, ${2:R}\0A\09adc\09${0:Q}, $1, #0", "=&r,=&{r12},r,r,1,~{cc}"(i64 -9002011107970261189, i64 %14, i32 0) #17, !srcloc !45
  %16 = extractvalue { i64, i32 } %15, 0
  %17 = extractvalue { i64, i32 } %15, 1
  %18 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 -9002011107970261189, i64 %14, i64 %16, i32 %17) #17, !srcloc !46
  %19 = icmp slt i64 %13, 0
  %20 = extractvalue { i64, i32 } %18, 0
  %21 = lshr i64 %20, 9
  %22 = sub nsw i64 0, %21
  %23 = select i1 %19, i64 %22, i64 %21
  %24 = trunc i64 %23 to i32
  %25 = tail call i32 @__usecs_to_jiffies(i32 noundef %24) #15
  %26 = icmp eq i32 %11, 0
  br i1 %26, label %48, label %27

27:                                               ; preds = %1
  %28 = getelementptr inbounds %struct.rpc_rqst, ptr %3, i32 0, i32 30
  %29 = load i32, ptr %28, align 8
  %30 = icmp eq i32 %29, 1
  br i1 %30, label %31, label %33

31:                                               ; preds = %27
  tail call void @rpc_update_rtt(ptr noundef %7, i32 noundef %11, i32 noundef %25) #15
  %32 = load i32, ptr %28, align 8
  br label %33

33:                                               ; preds = %31, %27
  %34 = phi i32 [ %32, %31 ], [ %29, %27 ]
  %35 = add i32 %34, -1
  %36 = add i32 %11, -1
  %37 = getelementptr %struct.rpc_rtt, ptr %7, i32 0, i32 3, i32 %36
  %38 = load i32, ptr %37, align 4
  %39 = icmp sgt i32 %38, %35
  br i1 %39, label %40, label %44

40:                                               ; preds = %33
  %41 = icmp sgt i32 %38, 0
  br i1 %41, label %42, label %48

42:                                               ; preds = %40
  %43 = add nsw i32 %38, -1
  br label %46

44:                                               ; preds = %33
  %45 = tail call i32 @llvm.smin.i32(i32 %35, i32 8) #15
  br label %46

46:                                               ; preds = %44, %42
  %47 = phi i32 [ %45, %44 ], [ %43, %42 ]
  store i32 %47, ptr %37, align 4
  br label %48

48:                                               ; preds = %46, %40, %1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rpc_update_rtt(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @xprt_complete_rqst(ptr noundef %0, i32 noundef %1) #0 {
  %3 = getelementptr inbounds %struct.rpc_task, ptr %0, i32 0, i32 16
  %4 = load ptr, ptr %3, align 4
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.rpc_xprt, ptr %5, i32 0, i32 48, i32 5
  %7 = load i32, ptr %6, align 4
  %8 = add i32 %7, 1
  store i32 %8, ptr %6, align 4
  %9 = getelementptr inbounds %struct.rpc_rqst, ptr %4, i32 0, i32 20, i32 8
  store i32 %1, ptr %9, align 8
  tail call void asm sideeffect "dmb ishst", "~{memory}"() #15, !srcloc !47
  %10 = getelementptr inbounds %struct.rpc_rqst, ptr %4, i32 0, i32 19
  store i32 %1, ptr %10, align 4
  %11 = load ptr, ptr %3, align 4
  %12 = getelementptr inbounds %struct.rpc_task, ptr %0, i32 0, i32 6
  %13 = tail call i32 @_test_and_clear_bit(i32 noundef 4, ptr noundef %12) #15
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %19, label %15

15:                                               ; preds = %2
  %16 = load ptr, ptr %11, align 8
  %17 = getelementptr inbounds %struct.rpc_rqst, ptr %11, i32 0, i32 11
  %18 = getelementptr inbounds %struct.rpc_xprt, ptr %16, i32 0, i32 47
  tail call void @rb_erase(ptr noundef %17, ptr noundef %18) #15
  br label %19

19:                                               ; preds = %15, %2
  %20 = getelementptr inbounds %struct.rpc_xprt, ptr %5, i32 0, i32 12
  tail call void @rpc_wake_up_queued_task(ptr noundef %20, ptr noundef %0) #15
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @xprt_wait_for_reply_request_def(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.rpc_task, ptr %0, i32 0, i32 16
  %3 = load ptr, ptr %2, align 4
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.rpc_xprt, ptr %4, i32 0, i32 12
  %6 = load volatile i32, ptr @jiffies, align 64
  %7 = getelementptr inbounds %struct.rpc_rqst, ptr %3, i32 0, i32 23
  %8 = load i32, ptr %7, align 4
  %9 = add i32 %8, %6
  %10 = getelementptr inbounds %struct.rpc_rqst, ptr %3, i32 0, i32 21
  %11 = load i32, ptr %10, align 4
  %12 = sub i32 %9, %11
  %13 = icmp slt i32 %12, 0
  %14 = select i1 %13, i32 %9, i32 %11
  tail call void @rpc_sleep_on_timeout(ptr noundef %5, ptr noundef %0, ptr noundef nonnull @xprt_timer, i32 noundef %14) #15
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @xprt_timer(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.rpc_task, ptr %0, i32 0, i32 16
  %3 = load ptr, ptr %2, align 4
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.rpc_task, ptr %0, i32 0, i32 1
  %6 = load i32, ptr %5, align 4
  %7 = icmp eq i32 %6, -110
  br i1 %7, label %8, label %38

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.rpc_rqst, ptr %3, i32 0, i32 5
  %10 = load i32, ptr %9, align 4
  %11 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xprt_timer, i32 0, i32 1), align 4
  %12 = icmp sgt i32 %11, 0
  br i1 %12, label %13, label %26

13:                                               ; preds = %8
  %14 = tail call ptr @llvm.thread.pointer() #15
  %15 = getelementptr inbounds %struct.thread_info, ptr %14, i32 0, i32 2
  %16 = load i32, ptr %15, align 8
  %17 = lshr i32 %16, 5
  %18 = getelementptr i32, ptr @__cpu_online_mask, i32 %17
  %19 = load volatile i32, ptr %18, align 4
  %20 = and i32 %16, 31
  %21 = shl nuw i32 1, %20
  %22 = and i32 %21, %19
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %26, label %24

24:                                               ; preds = %13
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !48
  %25 = tail call i32 @__traceiter_xprt_timer(ptr noundef null, ptr noundef %4, i32 noundef %10, i32 noundef -110) #15
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !49
  br label %26

26:                                               ; preds = %24, %13, %8
  %27 = getelementptr inbounds %struct.rpc_rqst, ptr %3, i32 0, i32 19
  %28 = load i32, ptr %27, align 4
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %30, label %37

30:                                               ; preds = %26
  %31 = getelementptr inbounds %struct.rpc_xprt, ptr %4, i32 0, i32 1
  %32 = load ptr, ptr %31, align 4
  %33 = getelementptr inbounds %struct.rpc_xprt_ops, ptr %32, i32 0, i32 13
  %34 = load ptr, ptr %33, align 4
  %35 = icmp eq ptr %34, null
  br i1 %35, label %38, label %36

36:                                               ; preds = %30
  tail call void %34(ptr noundef %4, ptr noundef %0) #15
  br label %38

37:                                               ; preds = %26
  store i32 0, ptr %5, align 4
  br label %38

38:                                               ; preds = %37, %36, %30, %1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @xprt_wait_for_reply_request_rtt(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.rpc_task, ptr %0, i32 0, i32 10
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.rpc_procinfo, ptr %3, i32 0, i32 5
  %5 = load i32, ptr %4, align 4
  %6 = getelementptr inbounds %struct.rpc_task, ptr %0, i32 0, i32 13
  %7 = load ptr, ptr %6, align 8
  %8 = getelementptr inbounds %struct.rpc_clnt, ptr %7, i32 0, i32 15
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.rpc_task, ptr %0, i32 0, i32 16
  %11 = load ptr, ptr %10, align 4
  %12 = getelementptr inbounds %struct.rpc_clnt, ptr %7, i32 0, i32 16
  %13 = load ptr, ptr %12, align 4
  %14 = getelementptr inbounds %struct.rpc_timeout, ptr %13, i32 0, i32 1
  %15 = load i32, ptr %14, align 4
  %16 = tail call i32 @rpc_calc_rto(ptr noundef %9, i32 noundef %5) #15
  %17 = icmp eq i32 %5, 0
  br i1 %17, label %22, label %18

18:                                               ; preds = %1
  %19 = add i32 %5, -1
  %20 = getelementptr %struct.rpc_rtt, ptr %9, i32 0, i32 3, i32 %19
  %21 = load i32, ptr %20, align 4
  br label %22

22:                                               ; preds = %18, %1
  %23 = phi i32 [ %21, %18 ], [ 0, %1 ]
  %24 = getelementptr inbounds %struct.rpc_rqst, ptr %11, i32 0, i32 25
  %25 = load i32, ptr %24, align 8
  %26 = add i32 %25, %23
  %27 = shl i32 %16, %26
  %28 = add i32 %27, -1
  %29 = icmp ult i32 %28, %15
  %30 = select i1 %29, i32 %27, i32 %15
  %31 = load ptr, ptr %11, align 8
  %32 = getelementptr inbounds %struct.rpc_xprt, ptr %31, i32 0, i32 12
  %33 = load volatile i32, ptr @jiffies, align 64
  %34 = add i32 %30, %33
  tail call void @rpc_sleep_on_timeout(ptr noundef %32, ptr noundef %0, ptr noundef nonnull @xprt_timer, i32 noundef %34) #15
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rpc_calc_rto(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @xprt_request_wait_receive(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.rpc_task, ptr %0, i32 0, i32 16
  %3 = load ptr, ptr %2, align 4
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.rpc_task, ptr %0, i32 0, i32 6
  %6 = load volatile i32, ptr %5, align 4
  %7 = and i32 %6, 16
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %36, label %9

9:                                                ; preds = %1
  %10 = getelementptr inbounds %struct.rpc_xprt, ptr %4, i32 0, i32 35
  tail call void @_raw_spin_lock(ptr noundef %10) #15
  %11 = load volatile i32, ptr %5, align 4
  %12 = and i32 %11, 16
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %33, label %14

14:                                               ; preds = %9
  %15 = getelementptr inbounds %struct.rpc_xprt, ptr %4, i32 0, i32 1
  %16 = load ptr, ptr %15, align 4
  %17 = getelementptr inbounds %struct.rpc_xprt_ops, ptr %16, i32 0, i32 12
  %18 = load ptr, ptr %17, align 4
  tail call void %18(ptr noundef %0) #15
  %19 = load ptr, ptr %2, align 4
  %20 = load ptr, ptr %19, align 8
  %21 = getelementptr inbounds %struct.rpc_rqst, ptr %19, i32 0, i32 26
  %22 = load i32, ptr %21, align 4
  %23 = getelementptr inbounds %struct.rpc_xprt, ptr %20, i32 0, i32 25
  %24 = load volatile i32, ptr %23, align 8
  %25 = icmp eq i32 %22, %24
  br i1 %25, label %26, label %31

26:                                               ; preds = %14
  %27 = getelementptr inbounds %struct.rpc_xprt, ptr %20, i32 0, i32 18
  %28 = load volatile i32, ptr %27, align 4
  %29 = and i32 %28, 2
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %26, %14
  %32 = getelementptr inbounds %struct.rpc_xprt, ptr %4, i32 0, i32 12
  tail call void @rpc_wake_up_queued_task_set_status(ptr noundef %32, ptr noundef %0, i32 noundef -107) #15
  br label %33

33:                                               ; preds = %31, %26, %9
  tail call void asm sideeffect "dmb ish", "~{memory}"() #15, !srcloc !8
  %34 = load i16, ptr %10, align 4
  %35 = add i16 %34, 1
  store i16 %35, ptr %10, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #15, !srcloc !9
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #15, !srcloc !10
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !11
  br label %36

36:                                               ; preds = %33, %1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rpc_wake_up_queued_task_set_status(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @xprt_request_enqueue_transmit(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.rpc_task, ptr %0, i32 0, i32 16
  %3 = load ptr, ptr %2, align 4
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.rpc_task, ptr %0, i32 0, i32 6
  %6 = load volatile i32, ptr %5, align 4
  %7 = and i32 %6, 8
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %114

9:                                                ; preds = %1
  %10 = getelementptr inbounds %struct.rpc_rqst, ptr %3, i32 0, i32 28
  store i32 0, ptr %10, align 4
  %11 = getelementptr inbounds %struct.rpc_xprt, ptr %4, i32 0, i32 35
  tail call void @_raw_spin_lock(ptr noundef %11) #15
  %12 = getelementptr inbounds %struct.rpc_rqst, ptr %3, i32 0, i32 6
  %13 = load i32, ptr %12, align 8
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %40, label %15

15:                                               ; preds = %9
  %16 = getelementptr inbounds %struct.rpc_xprt, ptr %4, i32 0, i32 18
  %17 = tail call i32 @_test_and_clear_bit(i32 noundef 10, ptr noundef %16) #15
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %23, label %19

19:                                               ; preds = %15
  %20 = getelementptr inbounds %struct.rpc_xprt, ptr %4, i32 0, i32 33
  tail call void @_raw_spin_lock(ptr noundef %20) #15
  tail call fastcc void @__xprt_lock_write_next_cong(ptr noundef %4) #15
  tail call void asm sideeffect "dmb ish", "~{memory}"() #15, !srcloc !8
  %21 = load i16, ptr %20, align 4
  %22 = add i16 %21, 1
  store i16 %22, ptr %20, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #15, !srcloc !9
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #15, !srcloc !10
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !11
  br label %23

23:                                               ; preds = %19, %15
  %24 = getelementptr inbounds %struct.rpc_xprt, ptr %4, i32 0, i32 38
  br label %25

25:                                               ; preds = %29, %23
  %26 = phi ptr [ %24, %23 ], [ %27, %29 ]
  %27 = load ptr, ptr %26, align 8
  %28 = icmp eq ptr %27, %24
  br i1 %28, label %101, label %29

29:                                               ; preds = %25
  %30 = getelementptr i8, ptr %27, i32 -32
  %31 = load i32, ptr %30, align 8
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %33, label %25

33:                                               ; preds = %29
  %34 = getelementptr inbounds %struct.rpc_rqst, ptr %3, i32 0, i32 12
  %35 = getelementptr inbounds %struct.list_head, ptr %27, i32 0, i32 1
  %36 = load ptr, ptr %35, align 4
  store ptr %34, ptr %35, align 4
  store ptr %27, ptr %34, align 4
  %37 = getelementptr inbounds %struct.rpc_rqst, ptr %3, i32 0, i32 12, i32 1
  store ptr %36, ptr %37, align 4
  store volatile ptr %34, ptr %36, align 4
  %38 = getelementptr inbounds %struct.rpc_rqst, ptr %3, i32 0, i32 13
  store volatile ptr %38, ptr %38, align 4
  %39 = getelementptr inbounds %struct.rpc_rqst, ptr %3, i32 0, i32 13, i32 1
  store ptr %38, ptr %39, align 4
  br label %109

40:                                               ; preds = %9
  %41 = getelementptr inbounds %struct.rpc_task, ptr %0, i32 0, i32 20
  %42 = load i16, ptr %41, align 4
  %43 = and i16 %42, 2
  %44 = icmp eq i16 %43, 0
  br i1 %44, label %75, label %45

45:                                               ; preds = %40
  %46 = getelementptr inbounds %struct.rpc_xprt, ptr %4, i32 0, i32 38
  %47 = load ptr, ptr %46, align 8
  %48 = icmp eq ptr %47, %46
  br i1 %48, label %101, label %49

49:                                               ; preds = %72, %45
  %50 = phi ptr [ %73, %72 ], [ %47, %45 ]
  %51 = getelementptr i8, ptr %50, i32 -32
  %52 = load i32, ptr %51, align 8
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %54, label %72

54:                                               ; preds = %49
  %55 = getelementptr i8, ptr %50, i32 116
  %56 = load i32, ptr %55, align 4
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %58, label %72

58:                                               ; preds = %54
  %59 = getelementptr i8, ptr %50, i32 -44
  %60 = load ptr, ptr %59, align 4
  %61 = getelementptr inbounds %struct.rpc_task, ptr %60, i32 0, i32 20
  %62 = load i16, ptr %61, align 4
  %63 = and i16 %62, 2
  %64 = icmp eq i16 %63, 0
  br i1 %64, label %65, label %72

65:                                               ; preds = %58
  %66 = getelementptr inbounds %struct.rpc_rqst, ptr %3, i32 0, i32 12
  %67 = getelementptr inbounds %struct.list_head, ptr %50, i32 0, i32 1
  %68 = load ptr, ptr %67, align 4
  store ptr %66, ptr %67, align 4
  store ptr %50, ptr %66, align 4
  %69 = getelementptr inbounds %struct.rpc_rqst, ptr %3, i32 0, i32 12, i32 1
  store ptr %68, ptr %69, align 4
  store volatile ptr %66, ptr %68, align 4
  %70 = getelementptr inbounds %struct.rpc_rqst, ptr %3, i32 0, i32 13
  store volatile ptr %70, ptr %70, align 4
  %71 = getelementptr inbounds %struct.rpc_rqst, ptr %3, i32 0, i32 13, i32 1
  store ptr %70, ptr %71, align 4
  br label %109

72:                                               ; preds = %58, %54, %49
  %73 = load ptr, ptr %50, align 8
  %74 = icmp eq ptr %73, %46
  br i1 %74, label %101, label %49

75:                                               ; preds = %40
  %76 = getelementptr inbounds %struct.rpc_rqst, ptr %3, i32 0, i32 7
  %77 = load i32, ptr %76, align 4
  %78 = icmp eq i32 %77, 0
  br i1 %78, label %79, label %101

79:                                               ; preds = %75
  %80 = getelementptr inbounds %struct.rpc_xprt, ptr %4, i32 0, i32 38
  %81 = getelementptr inbounds %struct.rpc_task, ptr %0, i32 0, i32 19
  br label %82

82:                                               ; preds = %86, %79
  %83 = phi ptr [ %80, %79 ], [ %84, %86 ]
  %84 = load ptr, ptr %83, align 8
  %85 = icmp eq ptr %84, %80
  br i1 %85, label %101, label %86

86:                                               ; preds = %82
  %87 = getelementptr i8, ptr %84, i32 -44
  %88 = load ptr, ptr %87, align 4
  %89 = getelementptr inbounds %struct.rpc_task, ptr %88, i32 0, i32 19
  %90 = load i32, ptr %89, align 8
  %91 = load i32, ptr %81, align 8
  %92 = icmp eq i32 %90, %91
  br i1 %92, label %93, label %82

93:                                               ; preds = %86
  %94 = getelementptr inbounds %struct.rpc_rqst, ptr %3, i32 0, i32 13
  %95 = getelementptr i8, ptr %84, i32 8
  %96 = getelementptr i8, ptr %84, i32 12
  %97 = load ptr, ptr %96, align 4
  store ptr %94, ptr %96, align 4
  store ptr %95, ptr %94, align 4
  %98 = getelementptr inbounds %struct.rpc_rqst, ptr %3, i32 0, i32 13, i32 1
  store ptr %97, ptr %98, align 4
  store volatile ptr %94, ptr %97, align 4
  %99 = getelementptr inbounds %struct.rpc_rqst, ptr %3, i32 0, i32 12
  store volatile ptr %99, ptr %99, align 4
  %100 = getelementptr inbounds %struct.rpc_rqst, ptr %3, i32 0, i32 12, i32 1
  store ptr %99, ptr %100, align 4
  br label %109

101:                                              ; preds = %82, %75, %72, %45, %25
  %102 = getelementptr inbounds %struct.rpc_rqst, ptr %3, i32 0, i32 12
  %103 = getelementptr inbounds %struct.rpc_xprt, ptr %4, i32 0, i32 38
  %104 = getelementptr inbounds %struct.rpc_xprt, ptr %4, i32 0, i32 38, i32 1
  %105 = load ptr, ptr %104, align 4
  store ptr %102, ptr %104, align 4
  store ptr %103, ptr %102, align 4
  %106 = getelementptr inbounds %struct.rpc_rqst, ptr %3, i32 0, i32 12, i32 1
  store ptr %105, ptr %106, align 4
  store volatile ptr %102, ptr %105, align 4
  %107 = getelementptr inbounds %struct.rpc_rqst, ptr %3, i32 0, i32 13
  store volatile ptr %107, ptr %107, align 4
  %108 = getelementptr inbounds %struct.rpc_rqst, ptr %3, i32 0, i32 13, i32 1
  store ptr %107, ptr %108, align 4
  br label %109

109:                                              ; preds = %101, %93, %65, %33
  %110 = getelementptr inbounds %struct.rpc_xprt, ptr %4, i32 0, i32 39
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %110) #15, !srcloc !15
  %111 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %110, ptr %110, i32 1, ptr elementtype(i32) %110) #15, !srcloc !39
  tail call void @_set_bit(i32 noundef 3, ptr noundef %5) #15
  tail call void asm sideeffect "dmb ish", "~{memory}"() #15, !srcloc !8
  %112 = load i16, ptr %11, align 4
  %113 = add i16 %112, 1
  store i16 %113, ptr %11, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #15, !srcloc !9
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #15, !srcloc !10
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !11
  br label %114

114:                                              ; preds = %109, %1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @xprt_request_dequeue_xprt(ptr noundef %0) local_unnamed_addr #0 {
  %2 = alloca %struct.wait_bit_queue_entry, align 4
  %3 = getelementptr inbounds %struct.rpc_task, ptr %0, i32 0, i32 16
  %4 = load ptr, ptr %3, align 4
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.rpc_task, ptr %0, i32 0, i32 6
  %7 = load volatile i32, ptr %6, align 4
  %8 = and i32 %7, 8
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %18

10:                                               ; preds = %1
  %11 = load volatile i32, ptr %6, align 4
  %12 = and i32 %11, 16
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %18

14:                                               ; preds = %10
  %15 = getelementptr inbounds %struct.rpc_rqst, ptr %4, i32 0, i32 27
  %16 = load volatile i32, ptr %15, align 4
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %90, label %18

18:                                               ; preds = %14, %10, %1
  %19 = getelementptr inbounds %struct.rpc_xprt, ptr %5, i32 0, i32 35
  tail call void @_raw_spin_lock(ptr noundef %19) #15
  %20 = load ptr, ptr %3, align 4
  %21 = tail call i32 @_test_and_clear_bit(i32 noundef 3, ptr noundef %6) #15
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %55, label %23

23:                                               ; preds = %18
  %24 = getelementptr inbounds %struct.rpc_rqst, ptr %20, i32 0, i32 12
  %25 = load volatile ptr, ptr %24, align 4
  %26 = icmp eq ptr %25, %24
  br i1 %26, label %45, label %27

27:                                               ; preds = %23
  %28 = getelementptr inbounds %struct.rpc_rqst, ptr %20, i32 0, i32 12, i32 1
  %29 = load ptr, ptr %28, align 4
  %30 = getelementptr inbounds %struct.list_head, ptr %25, i32 0, i32 1
  store ptr %29, ptr %30, align 4
  store volatile ptr %25, ptr %29, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %24, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %28, align 4
  %31 = getelementptr inbounds %struct.rpc_rqst, ptr %20, i32 0, i32 13
  %32 = load volatile ptr, ptr %31, align 4
  %33 = icmp eq ptr %32, %31
  br i1 %33, label %51, label %34

34:                                               ; preds = %27
  %35 = getelementptr i8, ptr %32, i32 -144
  %36 = getelementptr inbounds %struct.rpc_rqst, ptr %20, i32 0, i32 13, i32 1
  %37 = load ptr, ptr %36, align 4
  %38 = getelementptr inbounds %struct.list_head, ptr %32, i32 0, i32 1
  store ptr %37, ptr %38, align 4
  store volatile ptr %32, ptr %37, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %31, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %36, align 4
  %39 = getelementptr i8, ptr %32, i32 -8
  %40 = load ptr, ptr %35, align 8
  %41 = getelementptr inbounds %struct.rpc_xprt, ptr %40, i32 0, i32 38
  %42 = getelementptr inbounds %struct.rpc_xprt, ptr %40, i32 0, i32 38, i32 1
  %43 = load ptr, ptr %42, align 4
  store ptr %39, ptr %42, align 4
  store ptr %41, ptr %39, align 4
  %44 = getelementptr i8, ptr %32, i32 -4
  store ptr %43, ptr %44, align 4
  store volatile ptr %39, ptr %43, align 4
  br label %51

45:                                               ; preds = %23
  %46 = getelementptr inbounds %struct.rpc_rqst, ptr %20, i32 0, i32 13
  %47 = getelementptr inbounds %struct.rpc_rqst, ptr %20, i32 0, i32 13, i32 1
  %48 = load ptr, ptr %47, align 4
  %49 = load ptr, ptr %46, align 4
  %50 = getelementptr inbounds %struct.list_head, ptr %49, i32 0, i32 1
  store ptr %48, ptr %50, align 4
  store volatile ptr %49, ptr %48, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %46, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %47, align 4
  br label %51

51:                                               ; preds = %45, %34, %27
  %52 = load ptr, ptr %20, align 8
  %53 = getelementptr inbounds %struct.rpc_xprt, ptr %52, i32 0, i32 39
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %53) #15, !srcloc !15
  %54 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %53, ptr %53, i32 1, ptr elementtype(i32) %53) #15, !srcloc !40
  br label %55

55:                                               ; preds = %51, %18
  %56 = load ptr, ptr %3, align 4
  %57 = tail call i32 @_test_and_clear_bit(i32 noundef 4, ptr noundef %6) #15
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %63, label %59

59:                                               ; preds = %55
  %60 = load ptr, ptr %56, align 8
  %61 = getelementptr inbounds %struct.rpc_rqst, ptr %56, i32 0, i32 11
  %62 = getelementptr inbounds %struct.rpc_xprt, ptr %60, i32 0, i32 47
  tail call void @rb_erase(ptr noundef %61, ptr noundef %62) #15
  br label %63

63:                                               ; preds = %59, %55
  %64 = getelementptr inbounds %struct.rpc_rqst, ptr %4, i32 0, i32 27
  %65 = load volatile i32, ptr %64, align 4
  %66 = icmp eq i32 %65, 0
  br i1 %66, label %87, label %67

67:                                               ; preds = %63
  %68 = getelementptr inbounds %struct.wait_bit_queue_entry, ptr %2, i32 0, i32 1
  br label %69

69:                                               ; preds = %84, %67
  call void @_set_bit(i32 noundef 5, ptr noundef %6) #15
  call void asm sideeffect "dmb ish", "~{memory}"() #15, !srcloc !8
  %70 = load i16, ptr %19, align 4
  %71 = add i16 %70, 1
  store i16 %71, ptr %19, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #15, !srcloc !9
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #15, !srcloc !10
  call void asm sideeffect "", "~{memory}"() #15, !srcloc !11
  %72 = load volatile i32, ptr %64, align 4
  %73 = icmp eq i32 %72, 0
  br i1 %73, label %84, label %74

74:                                               ; preds = %69
  %75 = call ptr @__var_waitqueue(ptr noundef %64) #15
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %2) #15
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(32) %2, i8 0, i32 32, i1 false) #15, !annotation !50
  call void @init_wait_var_entry(ptr noundef nonnull %2, ptr noundef %64, i32 noundef 0) #15
  %76 = call i32 @prepare_to_wait_event(ptr noundef %75, ptr noundef %68, i32 noundef 2) #15
  %77 = load volatile i32, ptr %64, align 4
  %78 = icmp eq i32 %77, 0
  br i1 %78, label %83, label %79

79:                                               ; preds = %79, %74
  call void @schedule() #15
  %80 = call i32 @prepare_to_wait_event(ptr noundef %75, ptr noundef %68, i32 noundef 2) #15
  %81 = load volatile i32, ptr %64, align 4
  %82 = icmp eq i32 %81, 0
  br i1 %82, label %83, label %79

83:                                               ; preds = %79, %74
  call void @finish_wait(ptr noundef %75, ptr noundef %68) #15
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %2) #15
  br label %84

84:                                               ; preds = %83, %69
  call void @_raw_spin_lock(ptr noundef %19) #15
  call void @_clear_bit(i32 noundef 5, ptr noundef %6) #15
  %85 = load volatile i32, ptr %64, align 4
  %86 = icmp eq i32 %85, 0
  br i1 %86, label %87, label %69

87:                                               ; preds = %84, %63
  call void asm sideeffect "dmb ish", "~{memory}"() #15, !srcloc !8
  %88 = load i16, ptr %19, align 4
  %89 = add i16 %88, 1
  store i16 %89, ptr %19, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #15, !srcloc !9
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #15, !srcloc !10
  call void asm sideeffect "", "~{memory}"() #15, !srcloc !11
  br label %90

90:                                               ; preds = %87, %14
  ret void
}

; Function Attrs: mustprogress nofree norecurse nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define dso_local zeroext i1 @xprt_request_need_retransmit(ptr nocapture noundef readonly %0) local_unnamed_addr #4 {
  %2 = getelementptr inbounds %struct.rpc_task, ptr %0, i32 0, i32 16
  %3 = load ptr, ptr %2, align 4
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.rpc_rqst, ptr %3, i32 0, i32 26
  %6 = load i32, ptr %5, align 4
  %7 = getelementptr inbounds %struct.rpc_xprt, ptr %4, i32 0, i32 25
  %8 = load volatile i32, ptr %7, align 8
  %9 = icmp eq i32 %6, %8
  br i1 %9, label %10, label %15

10:                                               ; preds = %1
  %11 = getelementptr inbounds %struct.rpc_xprt, ptr %4, i32 0, i32 18
  %12 = load volatile i32, ptr %11, align 4
  %13 = and i32 %12, 2
  %14 = icmp eq i32 %13, 0
  br label %15

15:                                               ; preds = %10, %1
  %16 = phi i1 [ true, %1 ], [ %14, %10 ]
  ret i1 %16
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local zeroext i1 @xprt_prepare_transmit(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.rpc_task, ptr %0, i32 0, i32 16
  %3 = load ptr, ptr %2, align 4
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.rpc_xprt, ptr %4, i32 0, i32 18
  %6 = load volatile i32, ptr %5, align 4
  %7 = and i32 %6, 1
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %13, label %9

9:                                                ; preds = %1
  %10 = getelementptr inbounds %struct.rpc_xprt, ptr %4, i32 0, i32 37
  %11 = load ptr, ptr %10, align 4
  %12 = icmp eq ptr %11, %0
  br i1 %12, label %30, label %13

13:                                               ; preds = %9, %1
  %14 = getelementptr inbounds %struct.rpc_xprt, ptr %4, i32 0, i32 33
  tail call void @_raw_spin_lock(ptr noundef %14) #15
  %15 = getelementptr inbounds %struct.rpc_xprt, ptr %4, i32 0, i32 1
  %16 = load ptr, ptr %15, align 4
  %17 = getelementptr inbounds %struct.rpc_xprt_ops, ptr %16, i32 0, i32 1
  %18 = load ptr, ptr %17, align 4
  %19 = tail call i32 %18(ptr noundef %4, ptr noundef %0) #15
  tail call void asm sideeffect "dmb ish", "~{memory}"() #15, !srcloc !8
  %20 = load i16, ptr %14, align 4
  %21 = add i16 %20, 1
  store i16 %21, ptr %14, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #15, !srcloc !9
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #15, !srcloc !10
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !11
  %22 = icmp eq i32 %19, 0
  br i1 %22, label %23, label %30

23:                                               ; preds = %13
  %24 = getelementptr inbounds %struct.rpc_task, ptr %0, i32 0, i32 6
  %25 = load volatile i32, ptr %24, align 4
  %26 = and i32 %25, 8
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %23
  %29 = getelementptr inbounds %struct.rpc_xprt, ptr %4, i32 0, i32 11
  tail call void @rpc_wake_up_queued_task_set_status(ptr noundef %29, ptr noundef %0, i32 noundef 0) #15
  br label %30

30:                                               ; preds = %28, %23, %13, %9
  %31 = phi i1 [ true, %13 ], [ false, %23 ], [ false, %28 ], [ true, %9 ]
  ret i1 %31
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @xprt_end_transmit(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.rpc_task, ptr %0, i32 0, i32 16
  %3 = load ptr, ptr %2, align 4
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.rpc_xprt, ptr %4, i32 0, i32 37
  %6 = load ptr, ptr %5, align 4
  %7 = icmp eq ptr %6, %0
  br i1 %7, label %8, label %16

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.rpc_xprt, ptr %4, i32 0, i32 33
  tail call void @_raw_spin_lock(ptr noundef %9) #15
  %10 = getelementptr inbounds %struct.rpc_xprt, ptr %4, i32 0, i32 1
  %11 = load ptr, ptr %10, align 4
  %12 = getelementptr inbounds %struct.rpc_xprt_ops, ptr %11, i32 0, i32 2
  %13 = load ptr, ptr %12, align 4
  tail call void %13(ptr noundef %4, ptr noundef %0) #15
  tail call void asm sideeffect "dmb ish", "~{memory}"() #15, !srcloc !8
  %14 = load i16, ptr %9, align 4
  %15 = add i16 %14, 1
  store i16 %15, ptr %9, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #15, !srcloc !9
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #15, !srcloc !10
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !11
  br label %16

16:                                               ; preds = %8, %1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @xprt_transmit(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.rpc_task, ptr %0, i32 0, i32 16
  %3 = load ptr, ptr %2, align 4
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.rpc_xprt, ptr %4, i32 0, i32 35
  tail call void @_raw_spin_lock(ptr noundef %5) #15
  %6 = getelementptr inbounds %struct.rpc_xprt, ptr %4, i32 0, i32 38
  %7 = load volatile ptr, ptr %6, align 4
  %8 = icmp eq ptr %7, %6
  %9 = getelementptr i8, ptr %7, i32 -136
  %10 = icmp eq ptr %9, null
  %11 = or i1 %8, %10
  br i1 %11, label %261, label %12

12:                                               ; preds = %1
  %13 = getelementptr inbounds %struct.rpc_task, ptr %0, i32 0, i32 6
  br label %14

14:                                               ; preds = %254, %12
  %15 = phi ptr [ %9, %12 ], [ %258, %254 ]
  %16 = phi ptr [ %7, %12 ], [ %256, %254 ]
  %17 = getelementptr i8, ptr %16, i32 112
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %17) #15, !srcloc !15
  %18 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %17, ptr %17, i32 1, ptr elementtype(i32) %17) #15, !srcloc !39
  tail call void asm sideeffect "dmb ish", "~{memory}"() #15, !srcloc !8
  %19 = load i16, ptr %5, align 4
  %20 = add i16 %19, 1
  store i16 %20, ptr %5, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #15, !srcloc !9
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #15, !srcloc !10
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !11
  %21 = load ptr, ptr %15, align 8
  %22 = getelementptr i8, ptr %16, i32 -44
  %23 = load ptr, ptr %22, align 4
  %24 = getelementptr inbounds %struct.rpc_task, ptr %23, i32 0, i32 20
  %25 = load i16, ptr %24, align 4
  %26 = and i16 %25, 2048
  %27 = getelementptr i8, ptr %16, i32 116
  %28 = load i32, ptr %27, align 4
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %30, label %47

30:                                               ; preds = %14
  %31 = getelementptr inbounds %struct.rpc_task, ptr %23, i32 0, i32 6
  %32 = load volatile i32, ptr %31, align 4
  %33 = and i32 %32, 16
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %35, label %41

35:                                               ; preds = %30
  %36 = getelementptr inbounds %struct.rpc_task, ptr %23, i32 0, i32 16
  %37 = load ptr, ptr %36, align 4
  %38 = getelementptr inbounds %struct.rpc_rqst, ptr %37, i32 0, i32 19
  %39 = load volatile i32, ptr %38, align 4
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %41, label %154

41:                                               ; preds = %35, %30
  %42 = tail call zeroext i1 @rpcauth_xmit_need_reencode(ptr noundef %23) #15
  br i1 %42, label %154, label %43

43:                                               ; preds = %41
  %44 = load volatile i32, ptr %31, align 4
  %45 = and i32 %44, 64
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %47, label %154

47:                                               ; preds = %43, %14
  %48 = getelementptr i8, ptr %16, i32 128
  %49 = load i32, ptr %48, align 8
  %50 = add i32 %49, 1
  store i32 %50, ptr %48, align 8
  %51 = getelementptr i8, ptr %16, i32 -132
  %52 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_rpc_xdr_sendto, i32 0, i32 1), align 4
  %53 = icmp sgt i32 %52, 0
  br i1 %53, label %54, label %67

54:                                               ; preds = %47
  %55 = tail call ptr @llvm.thread.pointer() #15
  %56 = getelementptr inbounds %struct.thread_info, ptr %55, i32 0, i32 2
  %57 = load i32, ptr %56, align 8
  %58 = lshr i32 %57, 5
  %59 = getelementptr i32, ptr @__cpu_online_mask, i32 %58
  %60 = load volatile i32, ptr %59, align 4
  %61 = and i32 %57, 31
  %62 = shl nuw i32 1, %61
  %63 = and i32 %62, %60
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %67, label %65

65:                                               ; preds = %54
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !51
  %66 = tail call i32 @__traceiter_rpc_xdr_sendto(ptr noundef null, ptr noundef %23, ptr noundef %51) #15
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !52
  br label %67

67:                                               ; preds = %65, %54, %47
  %68 = getelementptr inbounds %struct.rpc_xprt, ptr %21, i32 0, i32 25
  %69 = load i32, ptr %68, align 8
  %70 = getelementptr inbounds %struct.rpc_xprt, ptr %21, i32 0, i32 1
  %71 = load ptr, ptr %70, align 4
  %72 = getelementptr inbounds %struct.rpc_xprt_ops, ptr %71, i32 0, i32 11
  %73 = load ptr, ptr %72, align 4
  %74 = tail call i32 %73(ptr noundef nonnull %15) #15
  %75 = icmp eq i32 %74, 0
  br i1 %75, label %94, label %76

76:                                               ; preds = %67
  %77 = load i32, ptr %48, align 8
  %78 = add i32 %77, -1
  store i32 %78, ptr %48, align 8
  %79 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xprt_transmit, i32 0, i32 1), align 4
  %80 = icmp sgt i32 %79, 0
  br i1 %80, label %81, label %216

81:                                               ; preds = %76
  %82 = tail call ptr @llvm.thread.pointer() #15
  %83 = getelementptr inbounds %struct.thread_info, ptr %82, i32 0, i32 2
  %84 = load i32, ptr %83, align 8
  %85 = lshr i32 %84, 5
  %86 = getelementptr i32, ptr @__cpu_online_mask, i32 %85
  %87 = load volatile i32, ptr %86, align 4
  %88 = and i32 %84, 31
  %89 = shl nuw i32 1, %88
  %90 = and i32 %89, %87
  %91 = icmp eq i32 %90, 0
  br i1 %91, label %216, label %92

92:                                               ; preds = %81
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !53
  %93 = tail call i32 @__traceiter_xprt_transmit(ptr noundef null, ptr noundef nonnull %15, i32 noundef %74) #15
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !54
  br label %216

94:                                               ; preds = %67
  %95 = icmp eq i16 %26, 0
  br i1 %95, label %119, label %96

96:                                               ; preds = %94
  %97 = getelementptr inbounds %struct.rpc_task, ptr %23, i32 0, i32 13
  %98 = load ptr, ptr %97, align 8
  %99 = getelementptr inbounds %struct.rpc_clnt, ptr %98, i32 0, i32 12
  %100 = load ptr, ptr %99, align 4
  %101 = getelementptr inbounds %struct.rpc_stat, ptr %100, i32 0, i32 7
  %102 = load i32, ptr %101, align 4
  %103 = add i32 %102, 1
  store i32 %103, ptr %101, align 4
  %104 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xprt_retransmit, i32 0, i32 1), align 4
  %105 = icmp sgt i32 %104, 0
  br i1 %105, label %106, label %119

106:                                              ; preds = %96
  %107 = tail call ptr @llvm.thread.pointer() #15
  %108 = getelementptr inbounds %struct.thread_info, ptr %107, i32 0, i32 2
  %109 = load i32, ptr %108, align 8
  %110 = lshr i32 %109, 5
  %111 = getelementptr i32, ptr @__cpu_online_mask, i32 %110
  %112 = load volatile i32, ptr %111, align 4
  %113 = and i32 %109, 31
  %114 = shl nuw i32 1, %113
  %115 = and i32 %114, %112
  %116 = icmp eq i32 %115, 0
  br i1 %116, label %119, label %117

117:                                              ; preds = %106
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !55
  %118 = tail call i32 @__traceiter_xprt_retransmit(ptr noundef null, ptr noundef nonnull %15) #15
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !56
  br label %119

119:                                              ; preds = %117, %106, %96, %94
  %120 = load i16, ptr %24, align 4
  %121 = or i16 %120, 2048
  store i16 %121, ptr %24, align 4
  %122 = getelementptr inbounds %struct.rpc_xprt, ptr %21, i32 0, i32 33
  tail call void @_raw_spin_lock(ptr noundef %122) #15
  %123 = getelementptr inbounds %struct.rpc_xprt, ptr %21, i32 0, i32 48, i32 4
  %124 = load i32, ptr %123, align 8
  %125 = add i32 %124, 1
  store i32 %125, ptr %123, align 8
  %126 = getelementptr inbounds %struct.rpc_xprt, ptr %21, i32 0, i32 48, i32 5
  %127 = load i32, ptr %126, align 4
  %128 = sub i32 %125, %127
  %129 = zext i32 %128 to i64
  %130 = getelementptr inbounds %struct.rpc_xprt, ptr %21, i32 0, i32 48, i32 8
  %131 = load i64, ptr %130, align 8
  %132 = add i64 %131, %129
  store i64 %132, ptr %130, align 8
  %133 = getelementptr inbounds %struct.rpc_xprt, ptr %21, i32 0, i32 13, i32 5
  %134 = load i16, ptr %133, align 4
  %135 = zext i16 %134 to i64
  %136 = getelementptr inbounds %struct.rpc_xprt, ptr %21, i32 0, i32 48, i32 9
  %137 = load i64, ptr %136, align 8
  %138 = add i64 %137, %135
  store i64 %138, ptr %136, align 8
  %139 = getelementptr inbounds %struct.rpc_xprt, ptr %21, i32 0, i32 11, i32 5
  %140 = load i16, ptr %139, align 4
  %141 = zext i16 %140 to i64
  %142 = getelementptr inbounds %struct.rpc_xprt, ptr %21, i32 0, i32 48, i32 10
  %143 = load i64, ptr %142, align 8
  %144 = add i64 %143, %141
  store i64 %144, ptr %142, align 8
  %145 = getelementptr inbounds %struct.rpc_xprt, ptr %21, i32 0, i32 12, i32 5
  %146 = load i16, ptr %145, align 4
  %147 = zext i16 %146 to i64
  %148 = getelementptr inbounds %struct.rpc_xprt, ptr %21, i32 0, i32 48, i32 11
  %149 = load i64, ptr %148, align 8
  %150 = add i64 %149, %147
  store i64 %150, ptr %148, align 8
  tail call void asm sideeffect "dmb ish", "~{memory}"() #15, !srcloc !8
  %151 = load i16, ptr %122, align 4
  %152 = add i16 %151, 1
  store i16 %152, ptr %122, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #15, !srcloc !9
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #15, !srcloc !10
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !11
  %153 = getelementptr i8, ptr %16, i32 108
  store i32 %69, ptr %153, align 4
  br label %154

154:                                              ; preds = %119, %43, %41, %35
  %155 = phi i32 [ 0, %119 ], [ 0, %35 ], [ -74, %41 ], [ -512, %43 ]
  %156 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xprt_transmit, i32 0, i32 1), align 4
  %157 = icmp sgt i32 %156, 0
  br i1 %157, label %158, label %171

158:                                              ; preds = %154
  %159 = tail call ptr @llvm.thread.pointer() #15
  %160 = getelementptr inbounds %struct.thread_info, ptr %159, i32 0, i32 2
  %161 = load i32, ptr %160, align 8
  %162 = lshr i32 %161, 5
  %163 = getelementptr i32, ptr @__cpu_online_mask, i32 %162
  %164 = load volatile i32, ptr %163, align 4
  %165 = and i32 %161, 31
  %166 = shl nuw i32 1, %165
  %167 = and i32 %166, %164
  %168 = icmp eq i32 %167, 0
  br i1 %168, label %171, label %169

169:                                              ; preds = %158
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !53
  %170 = tail call i32 @__traceiter_xprt_transmit(ptr noundef null, ptr noundef nonnull %15, i32 noundef %155) #15
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !54
  br label %171

171:                                              ; preds = %169, %158, %154
  %172 = getelementptr inbounds %struct.rpc_task, ptr %23, i32 0, i32 16
  %173 = load ptr, ptr %172, align 4
  %174 = load ptr, ptr %173, align 8
  %175 = getelementptr inbounds %struct.rpc_xprt, ptr %174, i32 0, i32 35
  tail call void @_raw_spin_lock(ptr noundef %175) #15
  %176 = load ptr, ptr %172, align 4
  %177 = getelementptr inbounds %struct.rpc_task, ptr %23, i32 0, i32 6
  %178 = tail call i32 @_test_and_clear_bit(i32 noundef 3, ptr noundef %177) #15
  %179 = icmp eq i32 %178, 0
  br i1 %179, label %212, label %180

180:                                              ; preds = %171
  %181 = getelementptr inbounds %struct.rpc_rqst, ptr %176, i32 0, i32 12
  %182 = load volatile ptr, ptr %181, align 4
  %183 = icmp eq ptr %182, %181
  br i1 %183, label %202, label %184

184:                                              ; preds = %180
  %185 = getelementptr inbounds %struct.rpc_rqst, ptr %176, i32 0, i32 12, i32 1
  %186 = load ptr, ptr %185, align 4
  %187 = getelementptr inbounds %struct.list_head, ptr %182, i32 0, i32 1
  store ptr %186, ptr %187, align 4
  store volatile ptr %182, ptr %186, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %181, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %185, align 4
  %188 = getelementptr inbounds %struct.rpc_rqst, ptr %176, i32 0, i32 13
  %189 = load volatile ptr, ptr %188, align 4
  %190 = icmp eq ptr %189, %188
  br i1 %190, label %208, label %191

191:                                              ; preds = %184
  %192 = getelementptr i8, ptr %189, i32 -144
  %193 = getelementptr inbounds %struct.rpc_rqst, ptr %176, i32 0, i32 13, i32 1
  %194 = load ptr, ptr %193, align 4
  %195 = getelementptr inbounds %struct.list_head, ptr %189, i32 0, i32 1
  store ptr %194, ptr %195, align 4
  store volatile ptr %189, ptr %194, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %188, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %193, align 4
  %196 = getelementptr i8, ptr %189, i32 -8
  %197 = load ptr, ptr %192, align 8
  %198 = getelementptr inbounds %struct.rpc_xprt, ptr %197, i32 0, i32 38
  %199 = getelementptr inbounds %struct.rpc_xprt, ptr %197, i32 0, i32 38, i32 1
  %200 = load ptr, ptr %199, align 4
  store ptr %196, ptr %199, align 4
  store ptr %198, ptr %196, align 4
  %201 = getelementptr i8, ptr %189, i32 -4
  store ptr %200, ptr %201, align 4
  store volatile ptr %196, ptr %200, align 4
  br label %208

202:                                              ; preds = %180
  %203 = getelementptr inbounds %struct.rpc_rqst, ptr %176, i32 0, i32 13
  %204 = getelementptr inbounds %struct.rpc_rqst, ptr %176, i32 0, i32 13, i32 1
  %205 = load ptr, ptr %204, align 4
  %206 = load ptr, ptr %203, align 4
  %207 = getelementptr inbounds %struct.list_head, ptr %206, i32 0, i32 1
  store ptr %205, ptr %207, align 4
  store volatile ptr %206, ptr %205, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %203, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %204, align 4
  br label %208

208:                                              ; preds = %202, %191, %184
  %209 = load ptr, ptr %176, align 8
  %210 = getelementptr inbounds %struct.rpc_xprt, ptr %209, i32 0, i32 39
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %210) #15, !srcloc !15
  %211 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %210, ptr %210, i32 1, ptr elementtype(i32) %210) #15, !srcloc !40
  br label %212

212:                                              ; preds = %208, %171
  tail call void asm sideeffect "dmb ish", "~{memory}"() #15, !srcloc !8
  %213 = load i16, ptr %175, align 4
  %214 = add i16 %213, 1
  store i16 %214, ptr %175, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #15, !srcloc !9
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #15, !srcloc !10
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !11
  %215 = getelementptr inbounds %struct.rpc_xprt, ptr %21, i32 0, i32 11
  tail call void @rpc_wake_up_queued_task_set_status(ptr noundef %215, ptr noundef %23, i32 noundef %155) #15
  br label %216

216:                                              ; preds = %212, %92, %81, %76
  %217 = phi i32 [ %155, %212 ], [ %74, %76 ], [ %74, %81 ], [ %74, %92 ]
  %218 = icmp eq i32 %217, -74
  %219 = icmp eq ptr %15, %3
  %220 = select i1 %219, i32 -74, i32 0
  %221 = select i1 %218, i32 %220, i32 %217
  tail call void @_raw_spin_lock(ptr noundef %5) #15
  %222 = load ptr, ptr %22, align 4
  %223 = getelementptr inbounds %struct.rpc_task, ptr %222, i32 0, i32 6
  %224 = load volatile i32, ptr %223, align 4
  %225 = and i32 %224, 32
  %226 = icmp eq i32 %225, 0
  br i1 %226, label %227, label %229

227:                                              ; preds = %216
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %17) #15, !srcloc !15
  %228 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %17, ptr %17, i32 1, ptr elementtype(i32) %17) #15, !srcloc !40
  br label %234

229:                                              ; preds = %216
  tail call void asm sideeffect "dmb ish", "~{memory}"() #15, !srcloc !41
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %17) #15, !srcloc !15
  %230 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %17, ptr %17, i32 1, ptr elementtype(i32) %17) #15, !srcloc !42
  %231 = extractvalue { i32, i32 } %230, 0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #15, !srcloc !43
  %232 = icmp eq i32 %231, 0
  br i1 %232, label %233, label %234

233:                                              ; preds = %229
  tail call void @wake_up_var(ptr noundef %17) #15
  br label %234

234:                                              ; preds = %233, %229, %227
  %235 = icmp slt i32 %221, 0
  %236 = load volatile i32, ptr %13, align 4
  br i1 %235, label %237, label %242

237:                                              ; preds = %234
  %238 = and i32 %236, 8
  %239 = icmp eq i32 %238, 0
  br i1 %239, label %261, label %240

240:                                              ; preds = %237
  %241 = getelementptr inbounds %struct.rpc_task, ptr %0, i32 0, i32 1
  store i32 %221, ptr %241, align 4
  br label %261

242:                                              ; preds = %234
  %243 = and i32 %236, 16
  %244 = icmp eq i32 %243, 0
  br i1 %244, label %245, label %254

245:                                              ; preds = %242
  %246 = load ptr, ptr %2, align 4
  %247 = getelementptr inbounds %struct.rpc_rqst, ptr %246, i32 0, i32 19
  %248 = load volatile i32, ptr %247, align 4
  %249 = icmp eq i32 %248, 0
  br i1 %249, label %254, label %250

250:                                              ; preds = %245
  %251 = load volatile i32, ptr %13, align 4
  %252 = and i32 %251, 8
  %253 = icmp eq i32 %252, 0
  br i1 %253, label %261, label %254

254:                                              ; preds = %250, %245, %242
  %255 = tail call i32 @__cond_resched_lock(ptr noundef %5) #15
  %256 = load volatile ptr, ptr %6, align 4
  %257 = icmp eq ptr %256, %6
  %258 = getelementptr i8, ptr %256, i32 -136
  %259 = icmp eq ptr %258, null
  %260 = or i1 %257, %259
  br i1 %260, label %261, label %14

261:                                              ; preds = %254, %250, %240, %237, %1
  tail call void asm sideeffect "dmb ish", "~{memory}"() #15, !srcloc !8
  %262 = load i16, ptr %5, align 4
  %263 = add i16 %262, 1
  store i16 %263, ptr %5, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #15, !srcloc !9
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #15, !srcloc !10
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__cond_resched_lock(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @xprt_add_backlog(ptr noundef %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.rpc_xprt, ptr %0, i32 0, i32 18
  tail call void @_set_bit(i32 noundef 9, ptr noundef %3) #15
  %4 = getelementptr inbounds %struct.rpc_xprt, ptr %0, i32 0, i32 13
  tail call void @rpc_sleep_on(ptr noundef %4, ptr noundef %1, ptr noundef nonnull @xprt_complete_request_init) #15
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @xprt_complete_request_init(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.rpc_task, ptr %0, i32 0, i32 16
  %3 = load ptr, ptr %2, align 4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %6, label %5

5:                                                ; preds = %1
  tail call fastcc void @xprt_request_init(ptr noundef %0)
  br label %6

6:                                                ; preds = %5, %1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local zeroext i1 @xprt_wake_up_backlog(ptr noundef %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.rpc_xprt, ptr %0, i32 0, i32 13
  %4 = tail call ptr @rpc_wake_up_first(ptr noundef %3, ptr noundef nonnull @__xprt_set_rq, ptr noundef %1) #15
  %5 = icmp eq ptr %4, null
  br i1 %5, label %6, label %8

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.rpc_xprt, ptr %0, i32 0, i32 18
  tail call void @_clear_bit(i32 noundef 9, ptr noundef %7) #15
  br label %8

8:                                                ; preds = %6, %2
  %9 = xor i1 %5, true
  ret i1 %9
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rpc_wake_up_first(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal zeroext i1 @__xprt_set_rq(ptr nocapture noundef %0, ptr noundef %1) #7 {
  %3 = getelementptr inbounds %struct.rpc_task, ptr %0, i32 0, i32 16
  %4 = load ptr, ptr %3, align 4
  %5 = icmp eq ptr %4, null
  br i1 %5, label %6, label %7

6:                                                ; preds = %2
  tail call void @llvm.memset.p0.i32(ptr noundef align 8 dereferenceable(288) %1, i8 0, i32 288, i1 false)
  store ptr %1, ptr %3, align 4
  br label %7

7:                                                ; preds = %6, %2
  ret i1 %5
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @xprt_alloc_slot(ptr noundef %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.rpc_xprt, ptr %0, i32 0, i32 34
  tail call void @_raw_spin_lock(ptr noundef %3) #15
  %4 = getelementptr inbounds %struct.rpc_xprt, ptr %0, i32 0, i32 14
  %5 = load volatile ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, %4
  br i1 %6, label %13, label %7

7:                                                ; preds = %2
  %8 = getelementptr i8, ptr %5, i32 -124
  %9 = getelementptr inbounds %struct.list_head, ptr %5, i32 0, i32 1
  %10 = load ptr, ptr %9, align 4
  %11 = load ptr, ptr %5, align 4
  %12 = getelementptr inbounds %struct.list_head, ptr %11, i32 0, i32 1
  store ptr %10, ptr %12, align 4
  store volatile ptr %11, ptr %10, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %5, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %9, align 4
  br label %43

13:                                               ; preds = %2
  %14 = getelementptr inbounds %struct.rpc_xprt, ptr %0, i32 0, i32 17
  %15 = load i32, ptr %14, align 4
  %16 = getelementptr inbounds %struct.rpc_xprt, ptr %0, i32 0, i32 15
  %17 = load i32, ptr %16, align 4
  %18 = icmp ult i32 %15, %17
  br i1 %18, label %19, label %31

19:                                               ; preds = %13
  %20 = add nuw i32 %15, 1
  store i32 %20, ptr %14, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #15, !srcloc !8
  %21 = load i16, ptr %3, align 4
  %22 = add i16 %21, 1
  store i16 %22, ptr %3, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #15, !srcloc !9
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #15, !srcloc !10
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !11
  %23 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %24 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %23, i32 noundef 3392, i32 noundef 288) #18
  tail call void @_raw_spin_lock(ptr noundef %3) #15
  %25 = icmp eq ptr %24, null
  br i1 %25, label %26, label %29

26:                                               ; preds = %19
  %27 = load i32, ptr %14, align 4
  %28 = add i32 %27, -1
  store i32 %28, ptr %14, align 4
  br label %31

29:                                               ; preds = %19
  %30 = icmp ugt ptr %24, inttoptr (i32 -4096 to ptr)
  br i1 %30, label %31, label %43

31:                                               ; preds = %29, %26, %13
  %32 = phi ptr [ %24, %29 ], [ inttoptr (i32 -12 to ptr), %26 ], [ inttoptr (i32 -11 to ptr), %13 ]
  %33 = ptrtoint ptr %32 to i32
  switch i32 %33, label %37 [
    i32 -12, label %38
    i32 -11, label %34
  ]

34:                                               ; preds = %31
  %35 = getelementptr inbounds %struct.rpc_xprt, ptr %0, i32 0, i32 18
  tail call void @_set_bit(i32 noundef 9, ptr noundef %35) #15
  %36 = getelementptr inbounds %struct.rpc_xprt, ptr %0, i32 0, i32 13
  tail call void @rpc_sleep_on(ptr noundef %36, ptr noundef %1, ptr noundef nonnull @xprt_complete_request_init) #15
  br label %37

37:                                               ; preds = %34, %31
  br label %38

38:                                               ; preds = %37, %31
  %39 = phi i32 [ -11, %37 ], [ %33, %31 ]
  %40 = getelementptr inbounds %struct.rpc_task, ptr %1, i32 0, i32 1
  store i32 %39, ptr %40, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #15, !srcloc !8
  %41 = load i16, ptr %3, align 4
  %42 = add i16 %41, 1
  store i16 %42, ptr %3, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #15, !srcloc !9
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #15, !srcloc !10
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !11
  br label %54

43:                                               ; preds = %29, %7
  %44 = phi ptr [ %24, %29 ], [ %8, %7 ]
  %45 = getelementptr inbounds %struct.rpc_xprt, ptr %0, i32 0, i32 48, i32 7
  %46 = load i32, ptr %45, align 4
  %47 = getelementptr inbounds %struct.rpc_xprt, ptr %0, i32 0, i32 17
  %48 = load i32, ptr %47, align 4
  %49 = tail call i32 @llvm.umax.i32(i32 %46, i32 %48)
  store i32 %49, ptr %45, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #15, !srcloc !8
  %50 = load i16, ptr %3, align 4
  %51 = add i16 %50, 1
  store i16 %51, ptr %3, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #15, !srcloc !9
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #15, !srcloc !10
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !11
  %52 = getelementptr inbounds %struct.rpc_task, ptr %1, i32 0, i32 1
  store i32 0, ptr %52, align 4
  %53 = getelementptr inbounds %struct.rpc_task, ptr %1, i32 0, i32 16
  store ptr %44, ptr %53, align 4
  br label %54

54:                                               ; preds = %43, %38
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @xprt_free_slot(ptr noundef %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.rpc_xprt, ptr %0, i32 0, i32 34
  tail call void @_raw_spin_lock(ptr noundef %3) #15
  %4 = getelementptr inbounds %struct.rpc_xprt, ptr %0, i32 0, i32 13
  %5 = tail call ptr @rpc_wake_up_first(ptr noundef %4, ptr noundef nonnull @__xprt_set_rq, ptr noundef %1) #15
  %6 = icmp eq ptr %5, null
  br i1 %6, label %7, label %22

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.rpc_xprt, ptr %0, i32 0, i32 18
  tail call void @_clear_bit(i32 noundef 9, ptr noundef %8) #15
  %9 = getelementptr inbounds %struct.rpc_xprt, ptr %0, i32 0, i32 17
  %10 = load i32, ptr %9, align 4
  %11 = getelementptr inbounds %struct.rpc_xprt, ptr %0, i32 0, i32 16
  %12 = load i32, ptr %11, align 8
  %13 = icmp ugt i32 %10, %12
  br i1 %13, label %14, label %16

14:                                               ; preds = %7
  %15 = add i32 %10, -1
  store i32 %15, ptr %9, align 4
  tail call void @kfree(ptr noundef %1) #15
  br label %22

16:                                               ; preds = %7
  tail call void @llvm.memset.p0.i32(ptr noundef align 8 dereferenceable(288) %1, i8 0, i32 288, i1 false)
  %17 = getelementptr inbounds %struct.rpc_rqst, ptr %1, i32 0, i32 11
  %18 = getelementptr inbounds %struct.rpc_xprt, ptr %0, i32 0, i32 14
  %19 = load ptr, ptr %18, align 4
  %20 = getelementptr inbounds %struct.list_head, ptr %19, i32 0, i32 1
  store ptr %17, ptr %20, align 4
  store ptr %19, ptr %17, align 4
  %21 = getelementptr inbounds %struct.rpc_rqst, ptr %1, i32 0, i32 11, i32 0, i32 1
  store ptr %18, ptr %21, align 4
  store volatile ptr %17, ptr %18, align 4
  br label %22

22:                                               ; preds = %16, %14, %2
  tail call void asm sideeffect "dmb ish", "~{memory}"() #15, !srcloc !8
  %23 = load i16, ptr %3, align 4
  %24 = add i16 %23, 1
  store i16 %24, ptr %3, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #15, !srcloc !9
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #15, !srcloc !10
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !11
  ret void
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #8

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @xprt_cleanup_ids() local_unnamed_addr #0 {
  tail call void @ida_destroy(ptr noundef nonnull @rpc_xprt_ids) #15
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ida_destroy(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @xprt_alloc(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) #0 {
  %5 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %1, i32 noundef 3520) #19
  %6 = icmp eq ptr %5, null
  br i1 %6, label %71, label %7

7:                                                ; preds = %4
  %8 = tail call i32 @ida_alloc_range(ptr noundef nonnull @rpc_xprt_ids, i32 noundef 0, i32 noundef -1, i32 noundef 3264) #15
  %9 = icmp slt i32 %8, 0
  br i1 %9, label %12, label %10

10:                                               ; preds = %7
  %11 = getelementptr inbounds %struct.rpc_xprt, ptr %5, i32 0, i32 2
  store i32 %8, ptr %11, align 8
  br label %12

12:                                               ; preds = %10, %7
  store volatile i32 1, ptr %5, align 64
  %13 = getelementptr inbounds %struct.rpc_xprt, ptr %5, i32 0, i32 33
  store i32 0, ptr %13, align 4
  %14 = getelementptr inbounds %struct.rpc_xprt, ptr %5, i32 0, i32 34
  store i32 0, ptr %14, align 8
  %15 = getelementptr inbounds %struct.rpc_xprt, ptr %5, i32 0, i32 35
  store i32 0, ptr %15, align 4
  %16 = getelementptr inbounds %struct.rpc_xprt, ptr %5, i32 0, i32 14
  store volatile ptr %16, ptr %16, align 4
  %17 = getelementptr inbounds %struct.rpc_xprt, ptr %5, i32 0, i32 14, i32 1
  store ptr %16, ptr %17, align 8
  %18 = getelementptr inbounds %struct.rpc_xprt, ptr %5, i32 0, i32 47
  store ptr null, ptr %18, align 4
  %19 = getelementptr inbounds %struct.rpc_xprt, ptr %5, i32 0, i32 38
  store volatile ptr %19, ptr %19, align 8
  %20 = getelementptr inbounds %struct.rpc_xprt, ptr %5, i32 0, i32 38, i32 1
  store ptr %19, ptr %20, align 4
  %21 = getelementptr inbounds %struct.rpc_xprt, ptr %5, i32 0, i32 45
  store i32 0, ptr %21, align 8
  %22 = getelementptr inbounds %struct.rpc_xprt, ptr %5, i32 0, i32 46
  store volatile ptr %22, ptr %22, align 4
  %23 = getelementptr inbounds %struct.rpc_xprt, ptr %5, i32 0, i32 46, i32 1
  store ptr %22, ptr %23, align 16
  %24 = getelementptr inbounds %struct.rpc_xprt, ptr %5, i32 0, i32 22
  store volatile ptr %24, ptr %24, align 8
  %25 = getelementptr inbounds %struct.rpc_xprt, ptr %5, i32 0, i32 22, i32 1
  store ptr %24, ptr %25, align 4
  %26 = load volatile i32, ptr @jiffies, align 64
  %27 = getelementptr inbounds %struct.rpc_xprt, ptr %5, i32 0, i32 28
  store i32 %26, ptr %27, align 32
  %28 = getelementptr inbounds %struct.rpc_xprt, ptr %5, i32 0, i32 8
  store i32 256, ptr %28, align 4
  %29 = getelementptr inbounds %struct.rpc_xprt, ptr %5, i32 0, i32 21
  store i32 0, ptr %29, align 4
  %30 = getelementptr inbounds %struct.rpc_xprt, ptr %5, i32 0, i32 10
  tail call void @rpc_init_wait_queue(ptr noundef %30, ptr noundef nonnull @.str.6) #15
  %31 = getelementptr inbounds %struct.rpc_xprt, ptr %5, i32 0, i32 12
  tail call void @rpc_init_wait_queue(ptr noundef %31, ptr noundef nonnull @.str.7) #15
  %32 = getelementptr inbounds %struct.rpc_xprt, ptr %5, i32 0, i32 11
  tail call void @rpc_init_wait_queue(ptr noundef %32, ptr noundef nonnull @.str.8) #15
  %33 = getelementptr inbounds %struct.rpc_xprt, ptr %5, i32 0, i32 13
  tail call void @rpc_init_priority_wait_queue(ptr noundef %33, ptr noundef nonnull @.str.9) #15
  %34 = tail call i32 @prandom_u32() #15
  %35 = getelementptr inbounds %struct.rpc_xprt, ptr %5, i32 0, i32 36
  store i32 %34, ptr %35, align 64
  %36 = getelementptr inbounds %struct.rpc_xprt, ptr %5, i32 0, i32 49
  store ptr %0, ptr %36, align 8
  %37 = icmp eq i32 %2, 0
  br i1 %37, label %50, label %38

38:                                               ; preds = %43, %12
  %39 = phi i32 [ %48, %43 ], [ 0, %12 ]
  %40 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %41 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %40, i32 noundef 3520, i32 noundef 288) #18
  %42 = icmp eq ptr %41, null
  br i1 %42, label %55, label %43

43:                                               ; preds = %38
  %44 = getelementptr inbounds %struct.rpc_rqst, ptr %41, i32 0, i32 11
  %45 = load ptr, ptr %16, align 4
  %46 = getelementptr inbounds %struct.list_head, ptr %45, i32 0, i32 1
  store ptr %44, ptr %46, align 4
  store ptr %45, ptr %44, align 4
  %47 = getelementptr inbounds %struct.rpc_rqst, ptr %41, i32 0, i32 11, i32 0, i32 1
  store ptr %16, ptr %47, align 8
  store volatile ptr %44, ptr %16, align 4
  %48 = add nuw i32 %39, 1
  %49 = icmp eq i32 %48, %2
  br i1 %49, label %50, label %38

50:                                               ; preds = %43, %12
  %51 = call i32 @llvm.umax.i32(i32 %3, i32 %2)
  %52 = getelementptr inbounds %struct.rpc_xprt, ptr %5, i32 0, i32 15
  store i32 %51, ptr %52, align 4
  %53 = getelementptr inbounds %struct.rpc_xprt, ptr %5, i32 0, i32 16
  store i32 %2, ptr %53, align 16
  %54 = getelementptr inbounds %struct.rpc_xprt, ptr %5, i32 0, i32 17
  store i32 %2, ptr %54, align 4
  br label %71

55:                                               ; preds = %38
  %56 = load volatile ptr, ptr %16, align 4
  %57 = icmp eq ptr %56, %16
  br i1 %57, label %67, label %58

58:                                               ; preds = %58, %55
  %59 = phi ptr [ %65, %58 ], [ %56, %55 ]
  %60 = getelementptr i8, ptr %59, i32 -124
  %61 = getelementptr inbounds %struct.list_head, ptr %59, i32 0, i32 1
  %62 = load ptr, ptr %61, align 4
  %63 = load ptr, ptr %59, align 4
  %64 = getelementptr inbounds %struct.list_head, ptr %63, i32 0, i32 1
  store ptr %62, ptr %64, align 4
  store volatile ptr %63, ptr %62, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %59, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %61, align 4
  tail call void @kfree(ptr noundef %60) #15
  %65 = load volatile ptr, ptr %16, align 4
  %66 = icmp eq ptr %65, %16
  br i1 %66, label %67, label %58

67:                                               ; preds = %58, %55
  %68 = getelementptr inbounds %struct.rpc_xprt, ptr %5, i32 0, i32 2
  %69 = load i32, ptr %68, align 8
  tail call void @ida_free(ptr noundef nonnull @rpc_xprt_ids, i32 noundef %69) #15
  tail call void @rpc_sysfs_xprt_destroy(ptr noundef nonnull %5) #15
  %70 = getelementptr inbounds %struct.rpc_xprt, ptr %5, i32 0, i32 52
  tail call void @kvfree_call_rcu(ptr noundef %70, ptr noundef nonnull inttoptr (i32 856 to ptr)) #15
  br label %71

71:                                               ; preds = %67, %50, %4
  %72 = phi ptr [ %5, %50 ], [ null, %4 ], [ null, %67 ]
  ret ptr %72
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @xprt_free(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.rpc_xprt, ptr %0, i32 0, i32 14
  %3 = load volatile ptr, ptr %2, align 4
  %4 = icmp eq ptr %3, %2
  br i1 %4, label %14, label %5

5:                                                ; preds = %5, %1
  %6 = phi ptr [ %12, %5 ], [ %3, %1 ]
  %7 = getelementptr i8, ptr %6, i32 -124
  %8 = getelementptr inbounds %struct.list_head, ptr %6, i32 0, i32 1
  %9 = load ptr, ptr %8, align 4
  %10 = load ptr, ptr %6, align 4
  %11 = getelementptr inbounds %struct.list_head, ptr %10, i32 0, i32 1
  store ptr %9, ptr %11, align 4
  store volatile ptr %10, ptr %9, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %6, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %8, align 4
  tail call void @kfree(ptr noundef %7) #15
  %12 = load volatile ptr, ptr %2, align 4
  %13 = icmp eq ptr %12, %2
  br i1 %13, label %14, label %5

14:                                               ; preds = %5, %1
  %15 = getelementptr inbounds %struct.rpc_xprt, ptr %0, i32 0, i32 2
  %16 = load i32, ptr %15, align 8
  tail call void @ida_free(ptr noundef nonnull @rpc_xprt_ids, i32 noundef %16) #15
  tail call void @rpc_sysfs_xprt_destroy(ptr noundef %0) #15
  %17 = icmp eq ptr %0, null
  br i1 %17, label %20, label %18

18:                                               ; preds = %14
  %19 = getelementptr inbounds %struct.rpc_xprt, ptr %0, i32 0, i32 52
  tail call void @kvfree_call_rcu(ptr noundef %19, ptr noundef nonnull inttoptr (i32 856 to ptr)) #15
  br label %20

20:                                               ; preds = %18, %14
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rpc_sysfs_xprt_destroy(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kvfree_call_rcu(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @xprt_reserve(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.rpc_task, ptr %0, i32 0, i32 14
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.rpc_task, ptr %0, i32 0, i32 1
  store i32 0, ptr %4, align 4
  %5 = getelementptr inbounds %struct.rpc_task, ptr %0, i32 0, i32 16
  %6 = load ptr, ptr %5, align 4
  %7 = icmp eq ptr %6, null
  br i1 %7, label %8, label %33

8:                                                ; preds = %1
  store i32 -11, ptr %4, align 4
  %9 = getelementptr inbounds %struct.rpc_xprt, ptr %3, i32 0, i32 18
  %10 = load volatile i32, ptr %9, align 4
  %11 = and i32 %10, 512
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %25, label %13

13:                                               ; preds = %8
  %14 = getelementptr inbounds %struct.rpc_xprt, ptr %3, i32 0, i32 34
  tail call void @_raw_spin_lock(ptr noundef %14) #15
  %15 = load volatile i32, ptr %9, align 4
  %16 = and i32 %15, 512
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %22, label %18

18:                                               ; preds = %13
  tail call void @_set_bit(i32 noundef 9, ptr noundef %9) #15
  %19 = getelementptr inbounds %struct.rpc_xprt, ptr %3, i32 0, i32 13
  tail call void @rpc_sleep_on(ptr noundef %19, ptr noundef %0, ptr noundef nonnull @xprt_complete_request_init) #15
  tail call void asm sideeffect "dmb ish", "~{memory}"() #15, !srcloc !8
  %20 = load i16, ptr %14, align 4
  %21 = add i16 %20, 1
  store i16 %21, ptr %14, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #15, !srcloc !9
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #15, !srcloc !10
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !11
  br label %33

22:                                               ; preds = %13
  tail call void asm sideeffect "dmb ish", "~{memory}"() #15, !srcloc !8
  %23 = load i16, ptr %14, align 4
  %24 = add i16 %23, 1
  store i16 %24, ptr %14, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #15, !srcloc !9
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #15, !srcloc !10
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !11
  br label %25

25:                                               ; preds = %22, %8
  %26 = getelementptr inbounds %struct.rpc_xprt, ptr %3, i32 0, i32 1
  %27 = load ptr, ptr %26, align 4
  %28 = getelementptr inbounds %struct.rpc_xprt_ops, ptr %27, i32 0, i32 3
  %29 = load ptr, ptr %28, align 4
  tail call void %29(ptr noundef %3, ptr noundef %0) #15
  %30 = load ptr, ptr %5, align 4
  %31 = icmp eq ptr %30, null
  br i1 %31, label %33, label %32

32:                                               ; preds = %25
  tail call fastcc void @xprt_request_init(ptr noundef %0) #15
  br label %33

33:                                               ; preds = %32, %25, %18, %1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @xprt_retry_reserve(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.rpc_task, ptr %0, i32 0, i32 14
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.rpc_task, ptr %0, i32 0, i32 1
  store i32 0, ptr %4, align 4
  %5 = getelementptr inbounds %struct.rpc_task, ptr %0, i32 0, i32 16
  %6 = load ptr, ptr %5, align 4
  %7 = icmp eq ptr %6, null
  br i1 %7, label %8, label %16

8:                                                ; preds = %1
  store i32 -11, ptr %4, align 4
  %9 = getelementptr inbounds %struct.rpc_xprt, ptr %3, i32 0, i32 1
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr inbounds %struct.rpc_xprt_ops, ptr %10, i32 0, i32 3
  %12 = load ptr, ptr %11, align 4
  tail call void %12(ptr noundef %3, ptr noundef %0) #15
  %13 = load ptr, ptr %5, align 4
  %14 = icmp eq ptr %13, null
  br i1 %14, label %16, label %15

15:                                               ; preds = %8
  tail call fastcc void @xprt_request_init(ptr noundef %0) #15
  br label %16

16:                                               ; preds = %15, %8, %1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @xprt_release(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.rpc_task, ptr %0, i32 0, i32 16
  %3 = load ptr, ptr %2, align 4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %5, label %23

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.rpc_task, ptr %0, i32 0, i32 13
  %7 = load ptr, ptr %6, align 8
  %8 = icmp eq ptr %7, null
  br i1 %8, label %81, label %9

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.rpc_task, ptr %0, i32 0, i32 14
  %11 = load ptr, ptr %10, align 4
  %12 = getelementptr inbounds %struct.rpc_xprt, ptr %11, i32 0, i32 37
  %13 = load ptr, ptr %12, align 4
  %14 = icmp eq ptr %13, %0
  br i1 %14, label %15, label %81

15:                                               ; preds = %9
  %16 = getelementptr inbounds %struct.rpc_xprt, ptr %11, i32 0, i32 33
  tail call void @_raw_spin_lock(ptr noundef %16) #15
  %17 = getelementptr inbounds %struct.rpc_xprt, ptr %11, i32 0, i32 1
  %18 = load ptr, ptr %17, align 4
  %19 = getelementptr inbounds %struct.rpc_xprt_ops, ptr %18, i32 0, i32 2
  %20 = load ptr, ptr %19, align 4
  tail call void %20(ptr noundef %11, ptr noundef %0) #15
  tail call void asm sideeffect "dmb ish", "~{memory}"() #15, !srcloc !8
  %21 = load i16, ptr %16, align 4
  %22 = add i16 %21, 1
  store i16 %22, ptr %16, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #15, !srcloc !9
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #15, !srcloc !10
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !11
  br label %81

23:                                               ; preds = %1
  %24 = load ptr, ptr %3, align 8
  tail call void @xprt_request_dequeue_xprt(ptr noundef %0)
  %25 = getelementptr inbounds %struct.rpc_xprt, ptr %24, i32 0, i32 33
  tail call void @_raw_spin_lock(ptr noundef %25) #15
  %26 = getelementptr inbounds %struct.rpc_xprt, ptr %24, i32 0, i32 1
  %27 = load ptr, ptr %26, align 4
  %28 = getelementptr inbounds %struct.rpc_xprt_ops, ptr %27, i32 0, i32 2
  %29 = load ptr, ptr %28, align 4
  tail call void %29(ptr noundef %24, ptr noundef %0) #15
  %30 = load ptr, ptr %26, align 4
  %31 = getelementptr inbounds %struct.rpc_xprt_ops, ptr %30, i32 0, i32 14
  %32 = load ptr, ptr %31, align 4
  %33 = icmp eq ptr %32, null
  br i1 %33, label %35, label %34

34:                                               ; preds = %23
  tail call void %32(ptr noundef %0) #15
  br label %35

35:                                               ; preds = %34, %23
  %36 = load volatile i32, ptr @jiffies, align 64
  %37 = getelementptr inbounds %struct.rpc_xprt, ptr %24, i32 0, i32 28
  store i32 %36, ptr %37, align 8
  %38 = getelementptr inbounds %struct.rpc_xprt, ptr %24, i32 0, i32 47
  %39 = load volatile ptr, ptr %38, align 4
  %40 = icmp eq ptr %39, null
  br i1 %40, label %41, label %49

41:                                               ; preds = %35
  %42 = getelementptr inbounds %struct.rpc_xprt, ptr %24, i32 0, i32 29
  %43 = load i32, ptr %42, align 4
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %49, label %45

45:                                               ; preds = %41
  %46 = getelementptr inbounds %struct.rpc_xprt, ptr %24, i32 0, i32 27
  %47 = add i32 %43, %36
  %48 = tail call i32 @mod_timer(ptr noundef %46, i32 noundef %47) #15
  br label %49

49:                                               ; preds = %45, %41, %35
  tail call void asm sideeffect "dmb ish", "~{memory}"() #15, !srcloc !8
  %50 = load i16, ptr %25, align 4
  %51 = add i16 %50, 1
  store i16 %51, ptr %25, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #15, !srcloc !9
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #15, !srcloc !10
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !11
  %52 = getelementptr inbounds %struct.rpc_rqst, ptr %3, i32 0, i32 14
  %53 = load ptr, ptr %52, align 8
  %54 = icmp eq ptr %53, null
  br i1 %54, label %59, label %55

55:                                               ; preds = %49
  %56 = load ptr, ptr %26, align 4
  %57 = getelementptr inbounds %struct.rpc_xprt_ops, ptr %56, i32 0, i32 9
  %58 = load ptr, ptr %57, align 4
  tail call void %58(ptr noundef %0) #15
  br label %59

59:                                               ; preds = %55, %49
  %60 = getelementptr inbounds %struct.rpc_rqst, ptr %3, i32 0, i32 2
  tail call void @xdr_free_bvec(ptr noundef %60) #15
  %61 = getelementptr inbounds %struct.rpc_rqst, ptr %3, i32 0, i32 1
  tail call void @xdr_free_bvec(ptr noundef %61) #15
  %62 = getelementptr inbounds %struct.rpc_rqst, ptr %3, i32 0, i32 4
  %63 = load ptr, ptr %62, align 8
  %64 = icmp eq ptr %63, null
  br i1 %64, label %66, label %65

65:                                               ; preds = %59
  tail call void @put_rpccred(ptr noundef nonnull %63) #15
  br label %66

66:                                               ; preds = %65, %59
  %67 = getelementptr inbounds %struct.rpc_rqst, ptr %3, i32 0, i32 10
  %68 = load ptr, ptr %67, align 8
  %69 = icmp eq ptr %68, null
  br i1 %69, label %71, label %70

70:                                               ; preds = %66
  tail call void %68(ptr noundef nonnull %3) #15
  br label %71

71:                                               ; preds = %70, %66
  store ptr null, ptr %2, align 4
  %72 = getelementptr inbounds %struct.rpc_rqst, ptr %3, i32 0, i32 32
  %73 = load volatile i32, ptr %72, align 4
  %74 = and i32 %73, 2
  %75 = icmp eq i32 %74, 0
  br i1 %75, label %76, label %80, !prof !57

76:                                               ; preds = %71
  %77 = load ptr, ptr %26, align 4
  %78 = getelementptr inbounds %struct.rpc_xprt_ops, ptr %77, i32 0, i32 4
  %79 = load ptr, ptr %78, align 4
  tail call void %79(ptr noundef %24, ptr noundef nonnull %3) #15
  br label %81

80:                                               ; preds = %71
  tail call void @xprt_free_bc_request(ptr noundef nonnull %3) #15
  br label %81

81:                                               ; preds = %80, %76, %15, %9, %5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @xdr_free_bvec(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @put_rpccred(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @xprt_free_bc_request(ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree norecurse nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define dso_local void @xprt_init_bc_request(ptr noundef %0, ptr noundef %1) local_unnamed_addr #4 {
  %3 = getelementptr inbounds %struct.rpc_task, ptr %1, i32 0, i32 16
  store ptr %0, ptr %3, align 4
  %4 = getelementptr inbounds %struct.rpc_rqst, ptr %0, i32 0, i32 3
  store ptr %1, ptr %4, align 4
  %5 = load ptr, ptr %0, align 8
  %6 = getelementptr inbounds %struct.rpc_xprt, ptr %5, i32 0, i32 25
  %7 = load volatile i32, ptr %6, align 8
  %8 = add i32 %7, -1
  %9 = getelementptr inbounds %struct.rpc_rqst, ptr %0, i32 0, i32 26
  store i32 %8, ptr %9, align 4
  %10 = getelementptr inbounds %struct.rpc_rqst, ptr %0, i32 0, i32 1, i32 0, i32 0, i32 1
  %11 = load i32, ptr %10, align 4
  %12 = getelementptr inbounds %struct.rpc_rqst, ptr %0, i32 0, i32 1, i32 5
  %13 = load i32, ptr %12, align 4
  %14 = add i32 %13, %11
  %15 = getelementptr inbounds %struct.rpc_rqst, ptr %0, i32 0, i32 1, i32 1, i32 0, i32 1
  %16 = load i32, ptr %15, align 4
  %17 = add i32 %14, %16
  %18 = getelementptr inbounds %struct.rpc_rqst, ptr %0, i32 0, i32 1, i32 8
  store i32 %17, ptr %18, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @xprt_create_transport(ptr noundef %0) local_unnamed_addr #0 {
  %2 = load i32, ptr %0, align 4
  tail call void @_raw_spin_lock(ptr noundef nonnull @xprt_list_lock) #15
  %3 = load ptr, ptr @xprt_list, align 4
  %4 = icmp eq ptr %3, @xprt_list
  br i1 %4, label %17, label %5

5:                                                ; preds = %14, %1
  %6 = phi ptr [ %15, %14 ], [ %3, %1 ]
  %7 = getelementptr inbounds %struct.xprt_class, ptr %6, i32 0, i32 1
  %8 = load i32, ptr %7, align 4
  %9 = icmp eq i32 %8, %2
  br i1 %9, label %10, label %14

10:                                               ; preds = %5
  %11 = getelementptr inbounds %struct.xprt_class, ptr %6, i32 0, i32 3
  %12 = load ptr, ptr %11, align 4
  %13 = tail call zeroext i1 @try_module_get(ptr noundef %12) #15
  br i1 %13, label %17, label %14

14:                                               ; preds = %10, %5
  %15 = load ptr, ptr %6, align 4
  %16 = icmp eq ptr %15, @xprt_list
  br i1 %16, label %17, label %5

17:                                               ; preds = %14, %10, %1
  %18 = phi ptr [ null, %1 ], [ null, %14 ], [ %6, %10 ]
  tail call void asm sideeffect "dmb ish", "~{memory}"() #15, !srcloc !8
  %19 = load i16, ptr @xprt_list_lock, align 4
  %20 = add i16 %19, 1
  store i16 %20, ptr @xprt_list_lock, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #15, !srcloc !9
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #15, !srcloc !10
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !11
  %21 = icmp eq ptr %18, null
  br i1 %21, label %94, label %22

22:                                               ; preds = %17
  %23 = getelementptr inbounds %struct.xprt_class, ptr %18, i32 0, i32 2
  %24 = load ptr, ptr %23, align 4
  %25 = tail call ptr %24(ptr noundef %0) #15
  %26 = getelementptr inbounds %struct.xprt_class, ptr %18, i32 0, i32 3
  %27 = load ptr, ptr %26, align 4
  tail call void @module_put(ptr noundef %27) #15
  %28 = icmp ugt ptr %25, inttoptr (i32 -4096 to ptr)
  br i1 %28, label %94, label %29

29:                                               ; preds = %22
  %30 = getelementptr inbounds %struct.xprt_create, ptr %0, i32 0, i32 8
  %31 = load i32, ptr %30, align 4
  %32 = and i32 %31, 2
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %36, label %34

34:                                               ; preds = %29
  %35 = getelementptr inbounds %struct.rpc_xprt, ptr %25, i32 0, i32 29
  store i32 0, ptr %35, align 4
  br label %36

36:                                               ; preds = %34, %29
  %37 = getelementptr inbounds %struct.rpc_xprt, ptr %25, i32 0, i32 26
  store i32 -32, ptr %37, align 4
  %38 = getelementptr inbounds %struct.rpc_xprt, ptr %25, i32 0, i32 26, i32 1
  store volatile ptr %38, ptr %38, align 4
  %39 = getelementptr inbounds %struct.rpc_xprt, ptr %25, i32 0, i32 26, i32 1, i32 1
  store ptr %38, ptr %39, align 4
  %40 = getelementptr inbounds %struct.rpc_xprt, ptr %25, i32 0, i32 26, i32 2
  store ptr @xprt_autoclose, ptr %40, align 4
  %41 = getelementptr inbounds %struct.rpc_xprt, ptr %25, i32 0, i32 29
  %42 = load i32, ptr %41, align 4
  %43 = icmp eq i32 %42, 0
  %44 = getelementptr inbounds %struct.rpc_xprt, ptr %25, i32 0, i32 27
  br i1 %43, label %46, label %45

45:                                               ; preds = %36
  tail call void @init_timer_key(ptr noundef %44, ptr noundef nonnull @xprt_init_autodisconnect, i32 noundef 0, ptr noundef null, ptr noundef null) #15
  br label %47

46:                                               ; preds = %36
  tail call void @init_timer_key(ptr noundef %44, ptr noundef null, i32 noundef 0, ptr noundef null, ptr noundef null) #15
  br label %47

47:                                               ; preds = %46, %45
  %48 = getelementptr inbounds %struct.xprt_create, ptr %0, i32 0, i32 5
  %49 = load ptr, ptr %48, align 4
  %50 = tail call i32 @strlen(ptr noundef %49)
  %51 = icmp ugt i32 %50, 256
  br i1 %51, label %52, label %63

52:                                               ; preds = %47
  %53 = getelementptr inbounds %struct.rpc_xprt, ptr %25, i32 0, i32 18
  %54 = tail call i32 @_test_and_set_bit(i32 noundef 0, ptr noundef %53) #15
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %58, label %56

56:                                               ; preds = %52
  %57 = tail call i32 @out_of_line_wait_on_bit_lock(ptr noundef %53, i32 noundef 0, ptr noundef nonnull @bit_wait, i32 noundef 2) #15
  br label %58

58:                                               ; preds = %56, %52
  %59 = getelementptr inbounds %struct.rpc_xprt, ptr %25, i32 0, i32 27
  %60 = tail call i32 @del_timer_sync(ptr noundef %59) #15
  store i32 -32, ptr %37, align 4
  store volatile ptr %38, ptr %38, align 4
  store ptr %38, ptr %39, align 4
  store ptr @xprt_destroy_cb, ptr %40, align 4
  %61 = load ptr, ptr @system_wq, align 4
  %62 = tail call zeroext i1 @queue_work_on(i32 noundef 16, ptr noundef %61, ptr noundef %37) #15
  br label %94

63:                                               ; preds = %47
  %64 = tail call noalias ptr @kstrdup(ptr noundef %49, i32 noundef 3264) #15
  %65 = getelementptr inbounds %struct.rpc_xprt, ptr %25, i32 0, i32 50
  store ptr %64, ptr %65, align 4
  %66 = icmp eq ptr %64, null
  br i1 %66, label %67, label %78

67:                                               ; preds = %63
  %68 = getelementptr inbounds %struct.rpc_xprt, ptr %25, i32 0, i32 18
  %69 = tail call i32 @_test_and_set_bit(i32 noundef 0, ptr noundef %68) #15
  %70 = icmp eq i32 %69, 0
  br i1 %70, label %73, label %71

71:                                               ; preds = %67
  %72 = tail call i32 @out_of_line_wait_on_bit_lock(ptr noundef %68, i32 noundef 0, ptr noundef nonnull @bit_wait, i32 noundef 2) #15
  br label %73

73:                                               ; preds = %71, %67
  %74 = getelementptr inbounds %struct.rpc_xprt, ptr %25, i32 0, i32 27
  %75 = tail call i32 @del_timer_sync(ptr noundef %74) #15
  store i32 -32, ptr %37, align 4
  store volatile ptr %38, ptr %38, align 4
  store ptr %38, ptr %39, align 4
  store ptr @xprt_destroy_cb, ptr %40, align 4
  %76 = load ptr, ptr @system_wq, align 4
  %77 = tail call zeroext i1 @queue_work_on(i32 noundef 16, ptr noundef %76, ptr noundef %37) #15
  br label %94

78:                                               ; preds = %63
  %79 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xprt_create, i32 0, i32 1), align 4
  %80 = icmp sgt i32 %79, 0
  br i1 %80, label %81, label %94

81:                                               ; preds = %78
  %82 = tail call ptr @llvm.thread.pointer() #15
  %83 = getelementptr inbounds %struct.thread_info, ptr %82, i32 0, i32 2
  %84 = load i32, ptr %83, align 8
  %85 = lshr i32 %84, 5
  %86 = getelementptr i32, ptr @__cpu_online_mask, i32 %85
  %87 = load volatile i32, ptr %86, align 4
  %88 = and i32 %84, 31
  %89 = shl nuw i32 1, %88
  %90 = and i32 %89, %87
  %91 = icmp eq i32 %90, 0
  br i1 %91, label %94, label %92

92:                                               ; preds = %81
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !58
  %93 = tail call i32 @__traceiter_xprt_create(ptr noundef null, ptr noundef %25) #15
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !59
  br label %94

94:                                               ; preds = %92, %81, %78, %73, %58, %22, %17
  %95 = phi ptr [ inttoptr (i32 -22 to ptr), %58 ], [ inttoptr (i32 -12 to ptr), %73 ], [ %25, %22 ], [ inttoptr (i32 -5 to ptr), %17 ], [ %25, %78 ], [ %25, %81 ], [ %25, %92 ]
  ret ptr %95
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @xprt_autoclose(ptr noundef %0) #0 {
  %2 = getelementptr i8, ptr %0, i32 -636
  %3 = tail call ptr @llvm.thread.pointer() #15
  %4 = getelementptr inbounds %struct.task_struct, ptr %3, i32 0, i32 4
  %5 = load i32, ptr %4, align 4
  %6 = or i32 %5, 262144
  store i32 %6, ptr %4, align 4
  %7 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xprt_disconnect_auto, i32 0, i32 1), align 4
  %8 = icmp sgt i32 %7, 0
  br i1 %8, label %9, label %21

9:                                                ; preds = %1
  %10 = getelementptr inbounds %struct.thread_info, ptr %3, i32 0, i32 2
  %11 = load i32, ptr %10, align 8
  %12 = lshr i32 %11, 5
  %13 = getelementptr i32, ptr @__cpu_online_mask, i32 %12
  %14 = load volatile i32, ptr %13, align 4
  %15 = and i32 %11, 31
  %16 = shl nuw i32 1, %15
  %17 = and i32 %16, %14
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %21, label %19

19:                                               ; preds = %9
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !60
  %20 = tail call i32 @__traceiter_xprt_disconnect_auto(ptr noundef null, ptr noundef %2) #15
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !61
  br label %21

21:                                               ; preds = %19, %9, %1
  %22 = getelementptr i8, ptr %0, i32 -4
  %23 = load i32, ptr %22, align 8
  %24 = add i32 %23, 1
  store i32 %24, ptr %22, align 8
  tail call void asm sideeffect "dmb ish", "~{memory}"() #15, !srcloc !62
  %25 = getelementptr i8, ptr %0, i32 -36
  tail call void @_clear_bit(i32 noundef 3, ptr noundef %25) #15
  %26 = getelementptr i8, ptr %0, i32 -632
  %27 = load ptr, ptr %26, align 4
  %28 = getelementptr inbounds %struct.rpc_xprt_ops, ptr %27, i32 0, i32 15
  %29 = load ptr, ptr %28, align 4
  tail call void %29(ptr noundef %2) #15
  %30 = getelementptr i8, ptr %0, i32 72
  %31 = load ptr, ptr %30, align 4
  %32 = icmp eq ptr %31, null
  br i1 %32, label %33, label %40

33:                                               ; preds = %21
  %34 = getelementptr i8, ptr %0, i32 56
  tail call void @_raw_spin_lock(ptr noundef %34) #15
  %35 = load ptr, ptr %26, align 4
  %36 = getelementptr inbounds %struct.rpc_xprt_ops, ptr %35, i32 0, i32 2
  %37 = load ptr, ptr %36, align 4
  tail call void %37(ptr noundef %2, ptr noundef null) #15
  tail call void asm sideeffect "dmb ish", "~{memory}"() #15, !srcloc !8
  %38 = load i16, ptr %34, align 4
  %39 = add i16 %38, 1
  store i16 %39, ptr %34, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #15, !srcloc !9
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #15, !srcloc !10
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !11
  br label %40

40:                                               ; preds = %33, %21
  %41 = and i32 %5, 262144
  tail call void @wake_up_bit(ptr noundef %25, i32 noundef 0) #15
  %42 = load i32, ptr %4, align 4
  %43 = and i32 %42, -262145
  %44 = or i32 %43, %41
  store i32 %44, ptr %4, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @xprt_init_autodisconnect(ptr noundef %0) #0 {
  %2 = getelementptr i8, ptr %0, i32 104
  %3 = load volatile ptr, ptr %2, align 4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %5, label %15

5:                                                ; preds = %1
  %6 = load volatile i32, ptr @jiffies, align 64
  %7 = getelementptr i8, ptr %0, i32 20
  store i32 %6, ptr %7, align 8
  %8 = getelementptr i8, ptr %0, i32 -52
  %9 = tail call i32 @_test_and_set_bit(i32 noundef 0, ptr noundef %8) #15
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %15

11:                                               ; preds = %5
  %12 = load ptr, ptr @xprtiod_workqueue, align 4
  %13 = getelementptr i8, ptr %0, i32 -16
  %14 = tail call zeroext i1 @queue_work_on(i32 noundef 16, ptr noundef %12, ptr noundef %13) #15
  br label %15

15:                                               ; preds = %11, %5, %1
  ret void
}

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strlen(ptr nocapture noundef) local_unnamed_addr #9

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @kstrdup(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @xprt_get(ptr noundef %0) #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %26, label %3

3:                                                ; preds = %1
  %4 = load volatile i32, ptr %0, align 4
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %18, label %6

6:                                                ; preds = %16, %3
  %7 = phi i32 [ %14, %16 ], [ %4, %3 ]
  %8 = add i32 %7, 1
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr nonnull %0) #15, !srcloc !15
  br label %9

9:                                                ; preds = %9, %6
  %10 = tail call { i32, i32 } asm sideeffect "@ atomic_cmpxchg\0Aldrex\09$1, [$3]\0Amov\09$0, #0\0Ateq\09$1, $4\0Astrexeq $0, $5, [$3]\0A", "=&r,=&r,=*Qo,r,Ir,r,*Qo,~{cc}"(ptr nonnull elementtype(i32) %0, ptr nonnull %0, i32 %7, i32 %8, ptr nonnull elementtype(i32) %0) #15, !srcloc !63
  %11 = extractvalue { i32, i32 } %10, 0
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %9

13:                                               ; preds = %9
  %14 = extractvalue { i32, i32 } %10, 1
  %15 = icmp eq i32 %14, %7
  br i1 %15, label %18, label %16, !prof !57

16:                                               ; preds = %13
  %17 = icmp eq i32 %14, 0
  br i1 %17, label %18, label %6

18:                                               ; preds = %16, %13, %3
  %19 = phi i32 [ 0, %3 ], [ %7, %13 ], [ 0, %16 ]
  %20 = add i32 %19, 1
  %21 = or i32 %20, %19
  %22 = icmp sgt i32 %21, -1
  br i1 %22, label %24, label %23, !prof !57

23:                                               ; preds = %18
  tail call void @refcount_warn_saturate(ptr noundef nonnull %0, i32 noundef 0) #15
  br label %24

24:                                               ; preds = %23, %18
  %25 = icmp eq i32 %19, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %24, %1
  br label %27

27:                                               ; preds = %26, %24
  %28 = phi ptr [ null, %26 ], [ %0, %24 ]
  ret ptr %28
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @xprt_put(ptr noundef %0) #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %25, label %3

3:                                                ; preds = %1
  tail call void asm sideeffect "dmb ish", "~{memory}"() #15, !srcloc !64
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr nonnull %0) #15, !srcloc !15
  %4 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %0, ptr nonnull %0, i32 1, ptr nonnull elementtype(i32) %0) #15, !srcloc !65
  %5 = extractvalue { i32, i32, i32 } %4, 0
  %6 = icmp eq i32 %5, 1
  br i1 %6, label %10, label %7

7:                                                ; preds = %3
  %8 = icmp sgt i32 %5, 0
  br i1 %8, label %25, label %9, !prof !57

9:                                                ; preds = %7
  tail call void @refcount_warn_saturate(ptr noundef nonnull %0, i32 noundef 3) #15
  br label %25

10:                                               ; preds = %3
  tail call void asm sideeffect "dmb ish", "~{memory}"() #15, !srcloc !66
  %11 = getelementptr inbounds %struct.rpc_xprt, ptr %0, i32 0, i32 18
  %12 = tail call i32 @_test_and_set_bit(i32 noundef 0, ptr noundef %11) #15
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %16, label %14

14:                                               ; preds = %10
  %15 = tail call i32 @out_of_line_wait_on_bit_lock(ptr noundef %11, i32 noundef 0, ptr noundef nonnull @bit_wait, i32 noundef 2) #15
  br label %16

16:                                               ; preds = %14, %10
  %17 = getelementptr inbounds %struct.rpc_xprt, ptr %0, i32 0, i32 27
  %18 = tail call i32 @del_timer_sync(ptr noundef %17) #15
  %19 = getelementptr inbounds %struct.rpc_xprt, ptr %0, i32 0, i32 26
  store i32 -32, ptr %19, align 4
  %20 = getelementptr inbounds %struct.rpc_xprt, ptr %0, i32 0, i32 26, i32 1
  store volatile ptr %20, ptr %20, align 4
  %21 = getelementptr inbounds %struct.rpc_xprt, ptr %0, i32 0, i32 26, i32 1, i32 1
  store ptr %20, ptr %21, align 4
  %22 = getelementptr inbounds %struct.rpc_xprt, ptr %0, i32 0, i32 26, i32 2
  store ptr @xprt_destroy_cb, ptr %22, align 4
  %23 = load ptr, ptr @system_wq, align 4
  %24 = tail call zeroext i1 @queue_work_on(i32 noundef 16, ptr noundef %23, ptr noundef %19) #15
  br label %25

25:                                               ; preds = %16, %9, %7, %1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__request_module(i1 noundef zeroext, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #9

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @try_module_get(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @module_put(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_xprt_reserve_xprt(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.thread.pointer() #10

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_xprt_reserve_cong(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rpc_wake_up_first_on_wq(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn writeonly uwtable(sync)
define internal zeroext i1 @__xprt_lock_write_func(ptr noundef %0, ptr nocapture noundef writeonly %1) #11 {
  %3 = getelementptr inbounds %struct.rpc_xprt, ptr %1, i32 0, i32 37
  store ptr %0, ptr %3, align 4
  ret i1 true
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_xprt_release_xprt(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_xprt_release_cong(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_xprt_get_cong(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_xprt_put_cong(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_xprt_disconnect_done(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_xprt_disconnect_force(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mod_timer(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_xprt_connect(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_xprt_disconnect_cleanup(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_xprt_lookup_rqst(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @rb_insert_color(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__usecs_to_jiffies(i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @rb_erase(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_xprt_timer(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__var_waitqueue(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_wait_var_entry(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @prepare_to_wait_event(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @schedule() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @finish_wait(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @rpcauth_xmit_need_reencode(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_rpc_xdr_sendto(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_xprt_transmit(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_xprt_retransmit(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @xprt_request_init(ptr noundef %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.rpc_task, ptr %0, i32 0, i32 14
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.rpc_task, ptr %0, i32 0, i32 16
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.rpc_rqst, ptr %5, i32 0, i32 3
  store ptr %0, ptr %6, align 4
  store ptr %3, ptr %5, align 8
  %7 = getelementptr inbounds %struct.rpc_rqst, ptr %5, i32 0, i32 14
  store ptr null, ptr %7, align 8
  %8 = getelementptr inbounds %struct.rpc_xprt, ptr %3, i32 0, i32 34
  tail call void @_raw_spin_lock(ptr noundef %8) #15
  %9 = getelementptr inbounds %struct.rpc_xprt, ptr %3, i32 0, i32 36
  %10 = load i32, ptr %9, align 8
  %11 = add i32 %10, 1
  store i32 %11, ptr %9, align 8
  tail call void asm sideeffect "dmb ish", "~{memory}"() #15, !srcloc !8
  %12 = load i16, ptr %8, align 4
  %13 = add i16 %12, 1
  store i16 %13, ptr %8, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #15, !srcloc !9
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #15, !srcloc !10
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !11
  %14 = getelementptr inbounds %struct.rpc_rqst, ptr %5, i32 0, i32 5
  store i32 %10, ptr %14, align 4
  %15 = getelementptr inbounds %struct.rpc_xprt, ptr %3, i32 0, i32 25
  %16 = load volatile i32, ptr %15, align 8
  %17 = add i32 %16, -1
  %18 = getelementptr inbounds %struct.rpc_rqst, ptr %5, i32 0, i32 26
  store i32 %17, ptr %18, align 4
  %19 = getelementptr inbounds %struct.rpc_rqst, ptr %5, i32 0, i32 1, i32 8
  store i32 0, ptr %19, align 4
  %20 = getelementptr inbounds %struct.rpc_rqst, ptr %5, i32 0, i32 1, i32 7
  store i32 0, ptr %20, align 4
  %21 = getelementptr inbounds %struct.rpc_rqst, ptr %5, i32 0, i32 2, i32 8
  store i32 0, ptr %21, align 8
  %22 = getelementptr inbounds %struct.rpc_rqst, ptr %5, i32 0, i32 2, i32 7
  store i32 0, ptr %22, align 4
  %23 = getelementptr inbounds %struct.rpc_rqst, ptr %5, i32 0, i32 1, i32 2
  store ptr null, ptr %23, align 4
  %24 = getelementptr inbounds %struct.rpc_rqst, ptr %5, i32 0, i32 2, i32 2
  store ptr null, ptr %24, align 8
  %25 = getelementptr inbounds %struct.rpc_rqst, ptr %5, i32 0, i32 10
  store ptr null, ptr %25, align 8
  %26 = load ptr, ptr %5, align 8
  %27 = icmp eq ptr %26, null
  br i1 %27, label %35, label %28, !prof !44

28:                                               ; preds = %1
  %29 = getelementptr inbounds %struct.rpc_xprt, ptr %26, i32 0, i32 18
  %30 = load volatile i32, ptr %29, align 4
  %31 = and i32 %30, 2
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %35, label %33, !prof !44

33:                                               ; preds = %28
  %34 = load volatile i32, ptr @jiffies, align 64
  br label %49

35:                                               ; preds = %28, %1
  %36 = getelementptr inbounds %struct.rpc_task, ptr %0, i32 0, i32 18
  %37 = load i64, ptr %36, align 8
  %38 = tail call i64 @ktime_get() #15
  %39 = sub i64 %38, %37
  %40 = icmp sgt i64 %39, -1
  %41 = load volatile i32, ptr @jiffies, align 64
  br i1 %40, label %42, label %45, !prof !57

42:                                               ; preds = %35
  %43 = tail call i32 @nsecs_to_jiffies(i64 noundef %39) #15
  %44 = sub i32 %41, %43
  br label %49

45:                                               ; preds = %35
  %46 = sub i64 0, %39
  %47 = tail call i32 @nsecs_to_jiffies(i64 noundef %46) #15
  %48 = add i32 %47, %41
  br label %49

49:                                               ; preds = %45, %42, %33
  %50 = phi i32 [ %34, %33 ], [ %44, %42 ], [ %48, %45 ]
  %51 = getelementptr inbounds %struct.rpc_task, ptr %0, i32 0, i32 13
  %52 = load ptr, ptr %51, align 8
  %53 = getelementptr inbounds %struct.rpc_clnt, ptr %52, i32 0, i32 16
  %54 = load ptr, ptr %53, align 4
  %55 = load i32, ptr %54, align 4
  %56 = getelementptr inbounds %struct.rpc_rqst, ptr %5, i32 0, i32 23
  store i32 %55, ptr %56, align 4
  %57 = load ptr, ptr %6, align 4
  %58 = getelementptr inbounds %struct.rpc_task, ptr %57, i32 0, i32 13
  %59 = load ptr, ptr %58, align 8
  %60 = getelementptr inbounds %struct.rpc_clnt, ptr %59, i32 0, i32 16
  %61 = load ptr, ptr %60, align 4
  %62 = getelementptr inbounds %struct.rpc_timeout, ptr %61, i32 0, i32 4
  %63 = load i8, ptr %62, align 4
  %64 = icmp eq i8 %63, 0
  br i1 %64, label %69, label %65

65:                                               ; preds = %49
  %66 = getelementptr inbounds %struct.rpc_timeout, ptr %61, i32 0, i32 3
  %67 = load i32, ptr %66, align 4
  %68 = shl i32 %55, %67
  br label %76

69:                                               ; preds = %49
  %70 = getelementptr inbounds %struct.rpc_timeout, ptr %61, i32 0, i32 2
  %71 = load i32, ptr %70, align 4
  %72 = getelementptr inbounds %struct.rpc_timeout, ptr %61, i32 0, i32 3
  %73 = load i32, ptr %72, align 4
  %74 = mul i32 %73, %71
  %75 = add i32 %74, %55
  br label %76

76:                                               ; preds = %69, %65
  %77 = phi i32 [ %68, %65 ], [ %75, %69 ]
  %78 = getelementptr inbounds %struct.rpc_timeout, ptr %61, i32 0, i32 1
  %79 = load i32, ptr %78, align 4
  %80 = add i32 %77, -1
  %81 = icmp ult i32 %80, %79
  %82 = select i1 %81, i32 %77, i32 %79
  %83 = add i32 %82, %50
  %84 = getelementptr inbounds %struct.rpc_rqst, ptr %5, i32 0, i32 21
  store i32 %83, ptr %84, align 4
  %85 = add i32 %55, %50
  %86 = getelementptr inbounds %struct.rpc_rqst, ptr %5, i32 0, i32 22
  store i32 %85, ptr %86, align 8
  %87 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xprt_reserve, i32 0, i32 1), align 4
  %88 = icmp sgt i32 %87, 0
  br i1 %88, label %89, label %102

89:                                               ; preds = %76
  %90 = tail call ptr @llvm.thread.pointer() #15
  %91 = getelementptr inbounds %struct.thread_info, ptr %90, i32 0, i32 2
  %92 = load i32, ptr %91, align 8
  %93 = lshr i32 %92, 5
  %94 = getelementptr i32, ptr @__cpu_online_mask, i32 %93
  %95 = load volatile i32, ptr %94, align 4
  %96 = and i32 %92, 31
  %97 = shl nuw i32 1, %96
  %98 = and i32 %97, %95
  %99 = icmp eq i32 %98, 0
  br i1 %99, label %102, label %100

100:                                              ; preds = %89
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !67
  %101 = tail call i32 @__traceiter_xprt_reserve(ptr noundef null, ptr noundef %5) #15
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !68
  br label %102

102:                                              ; preds = %100, %89, %76
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nsecs_to_jiffies(i64 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_xprt_reserve(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #12

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #13

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ida_alloc_range(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @ida_free(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @rpc_init_wait_queue(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @rpc_init_priority_wait_queue(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @prandom_u32() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_xprt_disconnect_auto(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_xprt_create(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @xprt_destroy_cb(ptr noundef %0) #0 {
  %2 = getelementptr i8, ptr %0, i32 -636
  %3 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xprt_destroy, i32 0, i32 1), align 4
  %4 = icmp sgt i32 %3, 0
  br i1 %4, label %5, label %18

5:                                                ; preds = %1
  %6 = tail call ptr @llvm.thread.pointer() #15
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
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !69
  %17 = tail call i32 @__traceiter_xprt_destroy(ptr noundef null, ptr noundef %2) #15
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !70
  br label %18

18:                                               ; preds = %16, %5, %1
  %19 = getelementptr i8, ptr %0, i32 -472
  tail call void @rpc_destroy_wait_queue(ptr noundef %19) #15
  %20 = getelementptr i8, ptr %0, i32 -264
  tail call void @rpc_destroy_wait_queue(ptr noundef %20) #15
  %21 = getelementptr i8, ptr %0, i32 -368
  tail call void @rpc_destroy_wait_queue(ptr noundef %21) #15
  %22 = getelementptr i8, ptr %0, i32 -160
  tail call void @rpc_destroy_wait_queue(ptr noundef %22) #15
  %23 = getelementptr i8, ptr %0, i32 192
  %24 = load ptr, ptr %23, align 4
  tail call void @kfree(ptr noundef %24) #15
  tail call void @xprt_destroy_backchannel(ptr noundef %2, i32 noundef -1) #15
  %25 = getelementptr i8, ptr %0, i32 -632
  %26 = load ptr, ptr %25, align 4
  %27 = getelementptr inbounds %struct.rpc_xprt_ops, ptr %26, i32 0, i32 16
  %28 = load ptr, ptr %27, align 4
  tail call void %28(ptr noundef %2) #15
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @out_of_line_wait_on_bit_lock(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bit_wait(ptr noundef, i32 noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @rpc_destroy_wait_queue(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @xprt_destroy_backchannel(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_xprt_destroy(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #14

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #14

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.abs.i64(i64, i1 immarg) #14

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #14

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { mustprogress nofree norecurse nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { argmemonly nofree nounwind willreturn }
attributes #7 = { argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { argmemonly nofree nounwind willreturn writeonly }
attributes #9 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #11 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #12 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #13 = { null_pointer_is_valid allocsize(0) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #14 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #15 = { nounwind }
attributes #16 = { cold nounwind }
attributes #17 = { nounwind readnone }
attributes #18 = { nounwind allocsize(2) }
attributes #19 = { nounwind allocsize(0) }

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
!8 = !{i64 2148979290}
!9 = !{i64 2148975114}
!10 = !{i64 2148975189, i64 2148975216, i64 2148975263, i64 2148975285, i64 2148975313, i64 2148975333}
!11 = !{i64 2149002293}
!12 = !{i64 2157254126}
!13 = !{i64 2157254292}
!14 = !{i64 2148204918}
!15 = !{i64 594765, i64 2148084736, i64 2148084762, i64 2148084809, i64 2148084831, i64 2148084859, i64 2148084879}
!16 = !{i64 2148103072, i64 2148103104, i64 2148103133, i64 2148103167, i64 2148103198, i64 2148103221}
!17 = !{i64 2157292114}
!18 = !{i64 2157292280}
!19 = !{i64 2157271092}
!20 = !{i64 2157271258}
!21 = !{i64 2157309075}
!22 = !{i64 2157309241}
!23 = !{i64 2157325876}
!24 = !{i64 2157326034}
!25 = !{i64 2157342461}
!26 = !{i64 2157342619}
!27 = !{i64 2157098536}
!28 = !{i64 2157098696}
!29 = !{i64 2157115129}
!30 = !{i64 2157115291}
!31 = !{i64 2157061801}
!32 = !{i64 2157061945}
!33 = !{i64 2157131856}
!34 = !{i64 2157132022}
!35 = !{i64 2153788486}
!36 = !{i64 2153788739}
!37 = !{i64 2157185374}
!38 = !{i64 2157185552}
!39 = !{i64 2148096151, i64 2148096177, i64 2148096206, i64 2148096240, i64 2148096271, i64 2148096294}
!40 = !{i64 2148098508, i64 2148098534, i64 2148098563, i64 2148098597, i64 2148098628, i64 2148098651}
!41 = !{i64 2148196830}
!42 = !{i64 2148099192, i64 2148099224, i64 2148099253, i64 2148099287, i64 2148099318, i64 2148099341}
!43 = !{i64 2148197033}
!44 = !{!"branch_weights", i32 1, i32 2000}
!45 = !{i64 457623, i64 457650, i64 457672, i64 457700}
!46 = !{i64 458031, i64 458058, i64 458091, i64 458112, i64 458139, i64 458165}
!47 = !{i64 2158374867}
!48 = !{i64 2157168689}
!49 = !{i64 2157168855}
!50 = !{!"auto-init"}
!51 = !{i64 2156036133}
!52 = !{i64 2156036291}
!53 = !{i64 2157201719}
!54 = !{i64 2157201881}
!55 = !{i64 2157221687}
!56 = !{i64 2157221837}
!57 = !{!"branch_weights", i32 2000, i32 1}
!58 = !{i64 2157046054}
!59 = !{i64 2157046196}
!60 = !{i64 2157081983}
!61 = !{i64 2157082143}
!62 = !{i64 2158332396}
!63 = !{i64 580828, i64 580852, i64 580873, i64 580890, i64 580907}
!64 = !{i64 2148197831}
!65 = !{i64 2148099966, i64 2148099998, i64 2148100027, i64 2148100061, i64 2148100092, i64 2148100115}
!66 = !{i64 2149047278}
!67 = !{i64 2157362341}
!68 = !{i64 2157362485}
!69 = !{i64 2157152312}
!70 = !{i64 2157152456}
