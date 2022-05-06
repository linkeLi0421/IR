; ModuleID = '/llk/IR/net/sunrpc/clnt.c_pt.bc'
source_filename = "../net/sunrpc/clnt.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_rpc_create:\09\09\09\09\09"
module asm "\09.asciz \09\22rpc_create\22\09\09\09\09\09"
module asm "__kstrtabns_rpc_create:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_rpc_clone_client:\09\09\09\09\09"
module asm "\09.asciz \09\22rpc_clone_client\22\09\09\09\09\09"
module asm "__kstrtabns_rpc_clone_client:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_rpc_clone_client_set_auth:\09\09\09\09\09"
module asm "\09.asciz \09\22rpc_clone_client_set_auth\22\09\09\09\09\09"
module asm "__kstrtabns_rpc_clone_client_set_auth:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_rpc_switch_client_transport:\09\09\09\09\09"
module asm "\09.asciz \09\22rpc_switch_client_transport\22\09\09\09\09\09"
module asm "__kstrtabns_rpc_switch_client_transport:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_rpc_clnt_iterate_for_each_xprt:\09\09\09\09\09"
module asm "\09.asciz \09\22rpc_clnt_iterate_for_each_xprt\22\09\09\09\09\09"
module asm "__kstrtabns_rpc_clnt_iterate_for_each_xprt:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_rpc_killall_tasks:\09\09\09\09\09"
module asm "\09.asciz \09\22rpc_killall_tasks\22\09\09\09\09\09"
module asm "__kstrtabns_rpc_killall_tasks:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_rpc_shutdown_client:\09\09\09\09\09"
module asm "\09.asciz \09\22rpc_shutdown_client\22\09\09\09\09\09"
module asm "__kstrtabns_rpc_shutdown_client:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_rpc_release_client:\09\09\09\09\09"
module asm "\09.asciz \09\22rpc_release_client\22\09\09\09\09\09"
module asm "__kstrtabns_rpc_release_client:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_rpc_bind_new_program:\09\09\09\09\09"
module asm "\09.asciz \09\22rpc_bind_new_program\22\09\09\09\09\09"
module asm "__kstrtabns_rpc_bind_new_program:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_rpc_task_release_transport:\09\09\09\09\09"
module asm "\09.asciz \09\22rpc_task_release_transport\22\09\09\09\09\09"
module asm "__kstrtabns_rpc_task_release_transport:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_rpc_run_task:\09\09\09\09\09"
module asm "\09.asciz \09\22rpc_run_task\22\09\09\09\09\09"
module asm "__kstrtabns_rpc_run_task:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_rpc_call_sync:\09\09\09\09\09"
module asm "\09.asciz \09\22rpc_call_sync\22\09\09\09\09\09"
module asm "__kstrtabns_rpc_call_sync:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_rpc_call_async:\09\09\09\09\09"
module asm "\09.asciz \09\22rpc_call_async\22\09\09\09\09\09"
module asm "__kstrtabns_rpc_call_async:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_rpc_prepare_reply_pages:\09\09\09\09\09"
module asm "\09.asciz \09\22rpc_prepare_reply_pages\22\09\09\09\09\09"
module asm "__kstrtabns_rpc_prepare_reply_pages:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_rpc_call_start:\09\09\09\09\09"
module asm "\09.asciz \09\22rpc_call_start\22\09\09\09\09\09"
module asm "__kstrtabns_rpc_call_start:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_rpc_peeraddr:\09\09\09\09\09"
module asm "\09.asciz \09\22rpc_peeraddr\22\09\09\09\09\09"
module asm "__kstrtabns_rpc_peeraddr:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_rpc_peeraddr2str:\09\09\09\09\09"
module asm "\09.asciz \09\22rpc_peeraddr2str\22\09\09\09\09\09"
module asm "__kstrtabns_rpc_peeraddr2str:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_rpc_localaddr:\09\09\09\09\09"
module asm "\09.asciz \09\22rpc_localaddr\22\09\09\09\09\09"
module asm "__kstrtabns_rpc_localaddr:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_rpc_setbufsize:\09\09\09\09\09"
module asm "\09.asciz \09\22rpc_setbufsize\22\09\09\09\09\09"
module asm "__kstrtabns_rpc_setbufsize:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_rpc_net_ns:\09\09\09\09\09"
module asm "\09.asciz \09\22rpc_net_ns\22\09\09\09\09\09"
module asm "__kstrtabns_rpc_net_ns:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_rpc_max_payload:\09\09\09\09\09"
module asm "\09.asciz \09\22rpc_max_payload\22\09\09\09\09\09"
module asm "__kstrtabns_rpc_max_payload:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_rpc_max_bc_payload:\09\09\09\09\09"
module asm "\09.asciz \09\22rpc_max_bc_payload\22\09\09\09\09\09"
module asm "__kstrtabns_rpc_max_bc_payload:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_rpc_num_bc_slots:\09\09\09\09\09"
module asm "\09.asciz \09\22rpc_num_bc_slots\22\09\09\09\09\09"
module asm "__kstrtabns_rpc_num_bc_slots:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_rpc_force_rebind:\09\09\09\09\09"
module asm "\09.asciz \09\22rpc_force_rebind\22\09\09\09\09\09"
module asm "__kstrtabns_rpc_force_rebind:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_rpc_restart_call:\09\09\09\09\09"
module asm "\09.asciz \09\22rpc_restart_call\22\09\09\09\09\09"
module asm "__kstrtabns_rpc_restart_call:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_rpc_restart_call_prepare:\09\09\09\09\09"
module asm "\09.asciz \09\22rpc_restart_call_prepare\22\09\09\09\09\09"
module asm "__kstrtabns_rpc_restart_call_prepare:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_rpc_call_null:\09\09\09\09\09"
module asm "\09.asciz \09\22rpc_call_null\22\09\09\09\09\09"
module asm "__kstrtabns_rpc_call_null:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_rpc_clnt_test_and_add_xprt:\09\09\09\09\09"
module asm "\09.asciz \09\22rpc_clnt_test_and_add_xprt\22\09\09\09\09\09"
module asm "__kstrtabns_rpc_clnt_test_and_add_xprt:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_rpc_clnt_setup_test_and_add_xprt:\09\09\09\09\09"
module asm "\09.asciz \09\22rpc_clnt_setup_test_and_add_xprt\22\09\09\09\09\09"
module asm "__kstrtabns_rpc_clnt_setup_test_and_add_xprt:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_rpc_clnt_add_xprt:\09\09\09\09\09"
module asm "\09.asciz \09\22rpc_clnt_add_xprt\22\09\09\09\09\09"
module asm "__kstrtabns_rpc_clnt_add_xprt:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_rpc_set_connect_timeout:\09\09\09\09\09"
module asm "\09.asciz \09\22rpc_set_connect_timeout\22\09\09\09\09\09"
module asm "__kstrtabns_rpc_set_connect_timeout:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_rpc_clnt_xprt_switch_put:\09\09\09\09\09"
module asm "\09.asciz \09\22rpc_clnt_xprt_switch_put\22\09\09\09\09\09"
module asm "__kstrtabns_rpc_clnt_xprt_switch_put:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_rpc_clnt_xprt_switch_add_xprt:\09\09\09\09\09"
module asm "\09.asciz \09\22rpc_clnt_xprt_switch_add_xprt\22\09\09\09\09\09"
module asm "__kstrtabns_rpc_clnt_xprt_switch_add_xprt:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_rpc_clnt_xprt_switch_has_addr:\09\09\09\09\09"
module asm "\09.asciz \09\22rpc_clnt_xprt_switch_has_addr\22\09\09\09\09\09"
module asm "__kstrtabns_rpc_clnt_xprt_switch_has_addr:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.notifier_block = type { ptr, ptr, i32 }
%struct.ida = type { %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.list_head = type { ptr, ptr }
%struct.rpc_call_ops = type { ptr, ptr, ptr, ptr }
%struct.tracepoint = type { ptr, %struct.static_key, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.static_key = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.cpumask = type { [1 x i32] }
%struct.sockaddr_in = type { i16, i16, %struct.in_addr, [8 x i8] }
%struct.in_addr = type { i32 }
%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i32, i32 }
%struct.rpc_procinfo = type { i32, ptr, ptr, i32, i32, i32, i32, ptr }
%struct.rpc_message = type { ptr, ptr, ptr, ptr }
%struct.xprt_create = type { i32, ptr, ptr, ptr, i32, ptr, ptr, ptr, i32 }
%struct.rpc_create_args = type { ptr, i32, ptr, i32, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, ptr, ptr, ptr, i32 }
%struct.svc_xprt = type { ptr, ptr, %struct.kref, %struct.list_head, %struct.list_head, i32, ptr, %struct.atomic_t, %struct.atomic_t, %struct.mutex, %struct.spinlock, ptr, %struct.list_head, %struct.__kernel_sockaddr_storage, i32, %struct.__kernel_sockaddr_storage, i32, [58 x i8], %struct.list_head, ptr, ptr, ptr, ptr }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.__kernel_sockaddr_storage = type { %union.anon.135 }
%union.anon.135 = type { ptr, [124 x i8] }
%struct.sockaddr_un = type { i16, [108 x i8] }
%struct.sockaddr_in6 = type { i16, i16, i32, %struct.in6_addr, i32 }
%struct.in6_addr = type { %union.anon.56 }
%union.anon.56 = type { [4 x i32] }
%struct.rpc_xprt = type { %struct.kref, ptr, i32, ptr, %struct.__kernel_sockaddr_storage, i32, i32, i32, i32, i32, %struct.rpc_wait_queue, %struct.rpc_wait_queue, %struct.rpc_wait_queue, %struct.rpc_wait_queue, %struct.list_head, i32, i32, i32, i32, i8, %struct.atomic_t, i32, %struct.list_head, i32, i32, i32, %struct.work_struct, %struct.timer_list, i32, i32, i32, i32, %struct.atomic_t, %struct.spinlock, %struct.spinlock, %struct.spinlock, i32, ptr, %struct.list_head, %struct.atomic_t, ptr, ptr, i32, i32, %struct.atomic_t, %struct.spinlock, %struct.list_head, %struct.rb_root, %struct.anon.139, ptr, ptr, [6 x ptr], %struct.callback_head, ptr, ptr, i8 }
%struct.rpc_wait_queue = type { %struct.spinlock, [4 x %struct.list_head], i8, i8, i8, i16, %struct.rpc_timer, ptr }
%struct.rpc_timer = type { %struct.list_head, i32, %struct.delayed_work }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32 }
%struct.hlist_node = type { ptr, ptr }
%struct.rb_root = type { ptr }
%struct.anon.139 = type { i32, i32, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64 }
%struct.callback_head = type { ptr, ptr }
%struct.rpc_task_setup = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i16, i8 }
%struct.rpc_task = type { %struct.atomic_t, i32, %struct.list_head, ptr, ptr, i32, i32, ptr, %union.anon.1, i32, %struct.rpc_message, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64, i32, i16, i16, i16, i8 }
%union.anon.1 = type { %struct.rpc_wait }
%struct.rpc_wait = type { %struct.list_head, %struct.list_head, %struct.list_head }
%struct.rpc_clnt = type { %struct.refcount_struct, i32, %struct.list_head, %struct.list_head, %struct.atomic_t, %struct.spinlock, ptr, ptr, i32, i32, i32, ptr, ptr, ptr, i8, ptr, ptr, %struct.atomic_t, i32, [65 x i8], %struct.rpc_pipe_dir_head, ptr, %struct.rpc_rtt, %struct.rpc_timeout, ptr, ptr, ptr, %union.anon.140, ptr, i32 }
%struct.rpc_pipe_dir_head = type { %struct.list_head, ptr }
%struct.rpc_rtt = type { i32, [5 x i32], [5 x i32], [5 x i32] }
%struct.rpc_timeout = type { i32, i32, i32, i32, i8 }
%union.anon.140 = type { %struct.work_struct }
%struct.xprt_class = type { %struct.list_head, i32, ptr, ptr, [32 x i8], [0 x ptr] }
%struct.rpc_xprt_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.rpc_auth = type { i32, i32, i32, i32, i32, ptr, i32, %struct.refcount_struct, ptr }
%struct.thread_info = type { i32, i32, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], [4 x i8], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.net = type { %struct.refcount_struct, %struct.spinlock, i32, i32, i32, %struct.spinlock, %struct.atomic_t, %struct.list_head, %struct.list_head, %struct.llist_node, ptr, ptr, ptr, %struct.idr, %struct.ns_common, %struct.ref_tracker_dir, %struct.list_head, ptr, ptr, %struct.ctl_table_set, ptr, ptr, ptr, ptr, ptr, %struct.raw_notifier_head, i32, ptr, %struct.list_head, %struct.netns_core, %struct.netns_mib, %struct.netns_packet, %struct.netns_unix, %struct.netns_nexthop, [40 x i8], %struct.netns_ipv4, %struct.netns_ipv6, ptr, %struct.netns_bpf, [28 x i8], %struct.netns_xfrm, i64, %struct.netns_can, ptr, ptr, [32 x i8] }
%struct.llist_node = type { ptr }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.ns_common = type { %struct.atomic_t, ptr, i32, %struct.refcount_struct }
%struct.ref_tracker_dir = type {}
%struct.ctl_table_set = type { ptr, %struct.ctl_dir }
%struct.ctl_dir = type { %struct.ctl_table_header, %struct.rb_root }
%struct.ctl_table_header = type { %union.anon.19, ptr, ptr, ptr, ptr, ptr, ptr, %struct.hlist_head }
%union.anon.19 = type { %struct.anon.20 }
%struct.anon.20 = type { ptr, i32, i32, i32 }
%struct.hlist_head = type { ptr }
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
%struct.netns_ipv6 = type { %struct.dst_ops, %struct.netns_sysctl_ipv6, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.timer_list, ptr, ptr, %struct.list_head, %struct.rwlock_t, %struct.spinlock, i32, i32, i8, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, i32, %struct.anon.100, ptr, [60 x i8] }
%struct.dst_ops = type { i16, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [60 x i8], %struct.percpu_counter, [32 x i8] }
%struct.percpu_counter = type { %struct.raw_spinlock, i64, %struct.list_head, ptr }
%struct.netns_sysctl_ipv6 = type { ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i8, i32, i8, i8, i8, [8 x i32], ptr, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i8, i8 }
%struct.rwlock_t = type { %struct.arch_rwlock_t }
%struct.arch_rwlock_t = type { i32 }
%struct.anon.100 = type { %struct.hlist_head, %struct.spinlock, i32 }
%struct.netns_bpf = type { [2 x ptr], [2 x ptr], [2 x %struct.list_head] }
%struct.netns_xfrm = type { %struct.list_head, ptr, ptr, ptr, ptr, i32, i32, %struct.work_struct, %struct.list_head, ptr, i32, [3 x %struct.hlist_head], [3 x %struct.xfrm_policy_hash], [6 x i32], %struct.work_struct, %struct.xfrm_policy_hthresh, %struct.list_head, ptr, ptr, i32, i32, i32, i32, i8, ptr, [36 x i8], %struct.dst_ops, %struct.dst_ops, %struct.spinlock, %struct.seqcount_spinlock, %struct.seqcount_spinlock, %struct.spinlock, %struct.mutex, [28 x i8] }
%struct.xfrm_policy_hash = type { ptr, i32, i8, i8, i8, i8 }
%struct.xfrm_policy_hthresh = type { %struct.work_struct, %struct.seqlock_t, i8, i8, i8, i8 }
%struct.netns_can = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.spinlock, %struct.timer_list, ptr, ptr, %struct.hlist_head }
%struct.sunrpc_net = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.list_head, %struct.spinlock, ptr, ptr, %struct.spinlock, i32, i8, %struct.mutex, ptr, i32, i32, %struct.atomic_t, ptr }
%struct.rpc_auth_create_args = type { i32, ptr }
%struct.rpc_program = type { ptr, i32, i32, ptr, ptr, ptr }
%struct.rpc_xprt_iter = type { ptr, ptr, ptr }
%struct.wait_queue_entry = type { i32, ptr, ptr, %struct.list_head }
%struct.rpc_xprt_switch = type { %struct.spinlock, %struct.kref, i32, i32, i32, i32, %struct.atomic_t, %struct.list_head, ptr, ptr, ptr, %struct.callback_head }
%struct.cred = type { %struct.atomic_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, i32, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %union.anon.68 }
%struct.kuid_t = type { i32 }
%struct.kernel_cap_struct = type { [2 x i32] }
%union.anon.68 = type { %struct.callback_head }
%struct.rpc_rqst = type { ptr, %struct.xdr_buf, %struct.xdr_buf, ptr, ptr, i32, i32, i32, i32, ptr, ptr, %union.anon.134, %struct.list_head, %struct.list_head, ptr, i32, ptr, i32, i32, i32, %struct.xdr_buf, i32, i32, i32, i64, i32, i32, %struct.atomic_t, i32, i64, i32, %struct.list_head, i32, %struct.list_head }
%union.anon.134 = type { %struct.rb_node }
%struct.rb_node = type { i32, ptr, ptr }
%struct.xdr_buf = type { [1 x %struct.kvec], [1 x %struct.kvec], ptr, ptr, i32, i32, i32, i32, i32 }
%struct.kvec = type { ptr, i32 }
%struct.rpc_cred = type { %struct.hlist_node, %struct.list_head, %struct.callback_head, ptr, ptr, i32, i32, %struct.refcount_struct, ptr }
%struct.rpc_version = type { i32, i32, ptr, ptr }
%struct.rpc_stat = type { ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.rpc_cb_add_xprt_calldata = type { ptr, ptr }
%struct.rpc_add_xprt_test = type { ptr, ptr }
%struct.super_block = type { %struct.list_head, i32, i8, i32, i64, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, ptr, %struct.rw_semaphore, i32, %struct.atomic_t, ptr, %struct.hlist_bl_head, %struct.list_head, ptr, ptr, ptr, %struct.hlist_node, i32, %struct.quota_info, %struct.sb_writers, ptr, i32, i64, i64, i32, ptr, [32 x i8], %struct.uuid_t, i32, i32, %struct.mutex, ptr, ptr, %struct.shrinker, %struct.atomic_t, %struct.atomic_t, i32, i32, ptr, %struct.hlist_head, ptr, %struct.list_lru, %struct.list_lru, %struct.callback_head, %struct.work_struct, %struct.mutex, i32, [56 x i8], %struct.spinlock, %struct.list_head, %struct.spinlock, %struct.list_head, [40 x i8] }
%struct.hlist_bl_head = type { ptr }
%struct.quota_info = type { i32, %struct.rw_semaphore, [3 x ptr], [3 x %struct.mem_dqinfo], [3 x ptr] }
%struct.mem_dqinfo = type { ptr, i32, %struct.list_head, i32, i32, i32, i64, i64, ptr }
%struct.sb_writers = type { i32, %struct.wait_queue_head, [3 x %struct.percpu_rw_semaphore] }
%struct.percpu_rw_semaphore = type { %struct.rcu_sync, ptr, %struct.rcuwait, %struct.wait_queue_head, %struct.atomic_t }
%struct.rcu_sync = type { i32, i32, %struct.wait_queue_head, %struct.callback_head }
%struct.rcuwait = type { ptr }
%struct.uuid_t = type { [16 x i8] }
%struct.shrinker = type { ptr, ptr, i32, i32, i32, %struct.list_head, ptr }
%struct.list_lru = type { ptr }
%struct.task_struct = type { %struct.thread_info, i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [32 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, [36 x i8], %struct.sched_statistics, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i8, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.117, ptr, %struct.page_frag, i32, i32, i32, i64, i64, i32, i32, ptr, %struct.kmap_ctrl, i32, ptr, %struct.refcount_struct, %struct.thread_struct, [16 x i8] }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.73 }
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
%struct.tlbflush_unmap_batch = type {}
%union.anon.117 = type { %struct.callback_head }
%struct.page_frag = type { ptr, i16, i16 }
%struct.kmap_ctrl = type { i32, [16 x i32] }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
%struct.nsproxy = type { %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.new_utsname = type { [65 x i8], [65 x i8], [65 x i8], [65 x i8], [65 x i8], [65 x i8] }
%struct.xdr_stream = type { ptr, ptr, ptr, ptr, %struct.kvec, ptr, i32, ptr }

@rpc_clients_block = internal global %struct.notifier_block { ptr @rpc_pipefs_event, ptr null, i32 1 }, align 4
@rpc_clids = internal global %struct.ida { %struct.xarray { %struct.spinlock zeroinitializer, i32 33554437, ptr null } }, align 4
@rpc_create.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str = private unnamed_addr constant [18 x i8] c"net/sunrpc/clnt.c\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"%pI4\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"%pI6\00", align 1
@__kstrtab_rpc_create = external dso_local constant [0 x i8], align 1
@__kstrtabns_rpc_create = external dso_local constant [0 x i8], align 1
@__ksymtab_rpc_create = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @rpc_create to i32), ptr @__kstrtab_rpc_create, ptr @__kstrtabns_rpc_create }, section "___ksymtab_gpl+rpc_create", align 4
@__kstrtab_rpc_clone_client = external dso_local constant [0 x i8], align 1
@__kstrtabns_rpc_clone_client = external dso_local constant [0 x i8], align 1
@__ksymtab_rpc_clone_client = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @rpc_clone_client to i32), ptr @__kstrtab_rpc_clone_client, ptr @__kstrtabns_rpc_clone_client }, section "___ksymtab_gpl+rpc_clone_client", align 4
@__kstrtab_rpc_clone_client_set_auth = external dso_local constant [0 x i8], align 1
@__kstrtabns_rpc_clone_client_set_auth = external dso_local constant [0 x i8], align 1
@__ksymtab_rpc_clone_client_set_auth = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @rpc_clone_client_set_auth to i32), ptr @__kstrtab_rpc_clone_client_set_auth, ptr @__kstrtabns_rpc_clone_client_set_auth }, section "___ksymtab_gpl+rpc_clone_client_set_auth", align 4
@__kstrtab_rpc_switch_client_transport = external dso_local constant [0 x i8], align 1
@__kstrtabns_rpc_switch_client_transport = external dso_local constant [0 x i8], align 1
@__ksymtab_rpc_switch_client_transport = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @rpc_switch_client_transport to i32), ptr @__kstrtab_rpc_switch_client_transport, ptr @__kstrtabns_rpc_switch_client_transport }, section "___ksymtab_gpl+rpc_switch_client_transport", align 4
@__kstrtab_rpc_clnt_iterate_for_each_xprt = external dso_local constant [0 x i8], align 1
@__kstrtabns_rpc_clnt_iterate_for_each_xprt = external dso_local constant [0 x i8], align 1
@__ksymtab_rpc_clnt_iterate_for_each_xprt = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @rpc_clnt_iterate_for_each_xprt to i32), ptr @__kstrtab_rpc_clnt_iterate_for_each_xprt, ptr @__kstrtabns_rpc_clnt_iterate_for_each_xprt }, section "___ksymtab_gpl+rpc_clnt_iterate_for_each_xprt", align 4
@__kstrtab_rpc_killall_tasks = external dso_local constant [0 x i8], align 1
@__kstrtabns_rpc_killall_tasks = external dso_local constant [0 x i8], align 1
@__ksymtab_rpc_killall_tasks = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @rpc_killall_tasks to i32), ptr @__kstrtab_rpc_killall_tasks, ptr @__kstrtabns_rpc_killall_tasks }, section "___ksymtab_gpl+rpc_killall_tasks", align 4
@destroy_wait = internal global %struct.wait_queue_head { %struct.spinlock zeroinitializer, %struct.list_head { ptr getelementptr (i8, ptr @destroy_wait, i64 4), ptr getelementptr (i8, ptr @destroy_wait, i64 4) } }, align 4
@__kstrtab_rpc_shutdown_client = external dso_local constant [0 x i8], align 1
@__kstrtabns_rpc_shutdown_client = external dso_local constant [0 x i8], align 1
@__ksymtab_rpc_shutdown_client = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @rpc_shutdown_client to i32), ptr @__kstrtab_rpc_shutdown_client, ptr @__kstrtabns_rpc_shutdown_client }, section "___ksymtab_gpl+rpc_shutdown_client", align 4
@__kstrtab_rpc_release_client = external dso_local constant [0 x i8], align 1
@__kstrtabns_rpc_release_client = external dso_local constant [0 x i8], align 1
@__ksymtab_rpc_release_client = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @rpc_release_client to i32), ptr @__kstrtab_rpc_release_client, ptr @__kstrtabns_rpc_release_client }, section "___ksymtab_gpl+rpc_release_client", align 4
@__kstrtab_rpc_bind_new_program = external dso_local constant [0 x i8], align 1
@__kstrtabns_rpc_bind_new_program = external dso_local constant [0 x i8], align 1
@__ksymtab_rpc_bind_new_program = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @rpc_bind_new_program to i32), ptr @__kstrtab_rpc_bind_new_program, ptr @__kstrtabns_rpc_bind_new_program }, section "___ksymtab_gpl+rpc_bind_new_program", align 4
@__kstrtab_rpc_task_release_transport = external dso_local constant [0 x i8], align 1
@__kstrtabns_rpc_task_release_transport = external dso_local constant [0 x i8], align 1
@__ksymtab_rpc_task_release_transport = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @rpc_task_release_transport to i32), ptr @__kstrtab_rpc_task_release_transport, ptr @__kstrtabns_rpc_task_release_transport }, section "___ksymtab_gpl+rpc_task_release_transport", align 4
@__kstrtab_rpc_run_task = external dso_local constant [0 x i8], align 1
@__kstrtabns_rpc_run_task = external dso_local constant [0 x i8], align 1
@__ksymtab_rpc_run_task = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @rpc_run_task to i32), ptr @__kstrtab_rpc_run_task, ptr @__kstrtabns_rpc_run_task }, section "___ksymtab_gpl+rpc_run_task", align 4
@rpc_default_ops = internal constant %struct.rpc_call_ops { ptr null, ptr @rpc_default_callback, ptr null, ptr null }, align 4
@rpc_call_sync.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@__kstrtab_rpc_call_sync = external dso_local constant [0 x i8], align 1
@__kstrtabns_rpc_call_sync = external dso_local constant [0 x i8], align 1
@__ksymtab_rpc_call_sync = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @rpc_call_sync to i32), ptr @__kstrtab_rpc_call_sync, ptr @__kstrtabns_rpc_call_sync }, section "___ksymtab_gpl+rpc_call_sync", align 4
@__kstrtab_rpc_call_async = external dso_local constant [0 x i8], align 1
@__kstrtabns_rpc_call_async = external dso_local constant [0 x i8], align 1
@__ksymtab_rpc_call_async = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @rpc_call_async to i32), ptr @__kstrtab_rpc_call_async, ptr @__kstrtabns_rpc_call_async }, section "___ksymtab_gpl+rpc_call_async", align 4
@__const.rpc_run_bc_task.task_setup_data = private unnamed_addr constant { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i16, i8, [1 x i8] } { ptr null, ptr null, ptr null, ptr null, ptr null, ptr @rpc_default_ops, ptr null, ptr null, i16 17408, i8 0, [1 x i8] zeroinitializer }, align 4
@rpc_run_bc_task.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@__kstrtab_rpc_prepare_reply_pages = external dso_local constant [0 x i8], align 1
@__kstrtabns_rpc_prepare_reply_pages = external dso_local constant [0 x i8], align 1
@__ksymtab_rpc_prepare_reply_pages = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @rpc_prepare_reply_pages to i32), ptr @__kstrtab_rpc_prepare_reply_pages, ptr @__kstrtabns_rpc_prepare_reply_pages }, section "___ksymtab_gpl+rpc_prepare_reply_pages", align 4
@__kstrtab_rpc_call_start = external dso_local constant [0 x i8], align 1
@__kstrtabns_rpc_call_start = external dso_local constant [0 x i8], align 1
@__ksymtab_rpc_call_start = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @rpc_call_start to i32), ptr @__kstrtab_rpc_call_start, ptr @__kstrtabns_rpc_call_start }, section "___ksymtab_gpl+rpc_call_start", align 4
@__kstrtab_rpc_peeraddr = external dso_local constant [0 x i8], align 1
@__kstrtabns_rpc_peeraddr = external dso_local constant [0 x i8], align 1
@__ksymtab_rpc_peeraddr = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @rpc_peeraddr to i32), ptr @__kstrtab_rpc_peeraddr, ptr @__kstrtabns_rpc_peeraddr }, section "___ksymtab_gpl+rpc_peeraddr", align 4
@.str.4 = private unnamed_addr constant [12 x i8] c"unprintable\00", align 1
@__kstrtab_rpc_peeraddr2str = external dso_local constant [0 x i8], align 1
@__kstrtabns_rpc_peeraddr2str = external dso_local constant [0 x i8], align 1
@__ksymtab_rpc_peeraddr2str = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @rpc_peeraddr2str to i32), ptr @__kstrtab_rpc_peeraddr2str, ptr @__kstrtabns_rpc_peeraddr2str }, section "___ksymtab_gpl+rpc_peeraddr2str", align 4
@__kstrtab_rpc_localaddr = external dso_local constant [0 x i8], align 1
@__kstrtabns_rpc_localaddr = external dso_local constant [0 x i8], align 1
@__ksymtab_rpc_localaddr = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @rpc_localaddr to i32), ptr @__kstrtab_rpc_localaddr, ptr @__kstrtabns_rpc_localaddr }, section "___ksymtab_gpl+rpc_localaddr", align 4
@__kstrtab_rpc_setbufsize = external dso_local constant [0 x i8], align 1
@__kstrtabns_rpc_setbufsize = external dso_local constant [0 x i8], align 1
@__ksymtab_rpc_setbufsize = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @rpc_setbufsize to i32), ptr @__kstrtab_rpc_setbufsize, ptr @__kstrtabns_rpc_setbufsize }, section "___ksymtab_gpl+rpc_setbufsize", align 4
@__kstrtab_rpc_net_ns = external dso_local constant [0 x i8], align 1
@__kstrtabns_rpc_net_ns = external dso_local constant [0 x i8], align 1
@__ksymtab_rpc_net_ns = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @rpc_net_ns to i32), ptr @__kstrtab_rpc_net_ns, ptr @__kstrtabns_rpc_net_ns }, section "___ksymtab_gpl+rpc_net_ns", align 4
@__kstrtab_rpc_max_payload = external dso_local constant [0 x i8], align 1
@__kstrtabns_rpc_max_payload = external dso_local constant [0 x i8], align 1
@__ksymtab_rpc_max_payload = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @rpc_max_payload to i32), ptr @__kstrtab_rpc_max_payload, ptr @__kstrtabns_rpc_max_payload }, section "___ksymtab_gpl+rpc_max_payload", align 4
@__kstrtab_rpc_max_bc_payload = external dso_local constant [0 x i8], align 1
@__kstrtabns_rpc_max_bc_payload = external dso_local constant [0 x i8], align 1
@__ksymtab_rpc_max_bc_payload = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @rpc_max_bc_payload to i32), ptr @__kstrtab_rpc_max_bc_payload, ptr @__kstrtabns_rpc_max_bc_payload }, section "___ksymtab_gpl+rpc_max_bc_payload", align 4
@__kstrtab_rpc_num_bc_slots = external dso_local constant [0 x i8], align 1
@__kstrtabns_rpc_num_bc_slots = external dso_local constant [0 x i8], align 1
@__ksymtab_rpc_num_bc_slots = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @rpc_num_bc_slots to i32), ptr @__kstrtab_rpc_num_bc_slots, ptr @__kstrtabns_rpc_num_bc_slots }, section "___ksymtab_gpl+rpc_num_bc_slots", align 4
@__kstrtab_rpc_force_rebind = external dso_local constant [0 x i8], align 1
@__kstrtabns_rpc_force_rebind = external dso_local constant [0 x i8], align 1
@__ksymtab_rpc_force_rebind = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @rpc_force_rebind to i32), ptr @__kstrtab_rpc_force_rebind, ptr @__kstrtabns_rpc_force_rebind }, section "___ksymtab_gpl+rpc_force_rebind", align 4
@__kstrtab_rpc_restart_call = external dso_local constant [0 x i8], align 1
@__kstrtabns_rpc_restart_call = external dso_local constant [0 x i8], align 1
@__ksymtab_rpc_restart_call = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @rpc_restart_call to i32), ptr @__kstrtab_rpc_restart_call, ptr @__kstrtabns_rpc_restart_call }, section "___ksymtab_gpl+rpc_restart_call", align 4
@__kstrtab_rpc_restart_call_prepare = external dso_local constant [0 x i8], align 1
@__kstrtabns_rpc_restart_call_prepare = external dso_local constant [0 x i8], align 1
@__ksymtab_rpc_restart_call_prepare = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @rpc_restart_call_prepare to i32), ptr @__kstrtab_rpc_restart_call_prepare, ptr @__kstrtabns_rpc_restart_call_prepare }, section "___ksymtab_gpl+rpc_restart_call_prepare", align 4
@.str.5 = private unnamed_addr constant [5 x i8] c"NULL\00", align 1
@.str.6 = private unnamed_addr constant [8 x i8] c"no proc\00", align 1
@__kstrtab_rpc_call_null = external dso_local constant [0 x i8], align 1
@__kstrtabns_rpc_call_null = external dso_local constant [0 x i8], align 1
@__ksymtab_rpc_call_null = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @rpc_call_null to i32), ptr @__kstrtab_rpc_call_null, ptr @__kstrtabns_rpc_call_null }, section "___ksymtab_gpl+rpc_call_null", align 4
@.str.7 = private unnamed_addr constant [79 x i8] c"\014SUNRPC: reached max allowed number (%d) did not add transport to server: %s\0A\00", align 1
@rpc_cb_add_xprt_call_ops = internal constant %struct.rpc_call_ops { ptr @rpc_null_call_prepare, ptr @rpc_cb_add_xprt_done, ptr null, ptr @rpc_cb_add_xprt_release }, align 4
@__kstrtab_rpc_clnt_test_and_add_xprt = external dso_local constant [0 x i8], align 1
@__kstrtabns_rpc_clnt_test_and_add_xprt = external dso_local constant [0 x i8], align 1
@__ksymtab_rpc_clnt_test_and_add_xprt = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @rpc_clnt_test_and_add_xprt to i32), ptr @__kstrtab_rpc_clnt_test_and_add_xprt, ptr @__kstrtabns_rpc_clnt_test_and_add_xprt }, section "___ksymtab_gpl+rpc_clnt_test_and_add_xprt", align 4
@.str.8 = private unnamed_addr constant [58 x i8] c"\016RPC:   rpc_clnt_test_xprt failed: %d addr %s not added\0A\00", align 1
@__kstrtab_rpc_clnt_setup_test_and_add_xprt = external dso_local constant [0 x i8], align 1
@__kstrtabns_rpc_clnt_setup_test_and_add_xprt = external dso_local constant [0 x i8], align 1
@__ksymtab_rpc_clnt_setup_test_and_add_xprt = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @rpc_clnt_setup_test_and_add_xprt to i32), ptr @__kstrtab_rpc_clnt_setup_test_and_add_xprt, ptr @__kstrtabns_rpc_clnt_setup_test_and_add_xprt }, section "___ksymtab_gpl+rpc_clnt_setup_test_and_add_xprt", align 4
@__kstrtab_rpc_clnt_add_xprt = external dso_local constant [0 x i8], align 1
@__kstrtabns_rpc_clnt_add_xprt = external dso_local constant [0 x i8], align 1
@__ksymtab_rpc_clnt_add_xprt = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @rpc_clnt_add_xprt to i32), ptr @__kstrtab_rpc_clnt_add_xprt, ptr @__kstrtabns_rpc_clnt_add_xprt }, section "___ksymtab_gpl+rpc_clnt_add_xprt", align 4
@__kstrtab_rpc_set_connect_timeout = external dso_local constant [0 x i8], align 1
@__kstrtabns_rpc_set_connect_timeout = external dso_local constant [0 x i8], align 1
@__ksymtab_rpc_set_connect_timeout = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @rpc_set_connect_timeout to i32), ptr @__kstrtab_rpc_set_connect_timeout, ptr @__kstrtabns_rpc_set_connect_timeout }, section "___ksymtab_gpl+rpc_set_connect_timeout", align 4
@__kstrtab_rpc_clnt_xprt_switch_put = external dso_local constant [0 x i8], align 1
@__kstrtabns_rpc_clnt_xprt_switch_put = external dso_local constant [0 x i8], align 1
@__ksymtab_rpc_clnt_xprt_switch_put = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @rpc_clnt_xprt_switch_put to i32), ptr @__kstrtab_rpc_clnt_xprt_switch_put, ptr @__kstrtabns_rpc_clnt_xprt_switch_put }, section "___ksymtab_gpl+rpc_clnt_xprt_switch_put", align 4
@__kstrtab_rpc_clnt_xprt_switch_add_xprt = external dso_local constant [0 x i8], align 1
@__kstrtabns_rpc_clnt_xprt_switch_add_xprt = external dso_local constant [0 x i8], align 1
@__ksymtab_rpc_clnt_xprt_switch_add_xprt = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @rpc_clnt_xprt_switch_add_xprt to i32), ptr @__kstrtab_rpc_clnt_xprt_switch_add_xprt, ptr @__kstrtabns_rpc_clnt_xprt_switch_add_xprt }, section "___ksymtab_gpl+rpc_clnt_xprt_switch_add_xprt", align 4
@__kstrtab_rpc_clnt_xprt_switch_has_addr = external dso_local constant [0 x i8], align 1
@__kstrtabns_rpc_clnt_xprt_switch_has_addr = external dso_local constant [0 x i8], align 1
@__ksymtab_rpc_clnt_xprt_switch_has_addr = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @rpc_clnt_xprt_switch_has_addr to i32), ptr @__kstrtab_rpc_clnt_xprt_switch_has_addr, ptr @__kstrtabns_rpc_clnt_xprt_switch_has_addr }, section "___ksymtab_gpl+rpc_clnt_xprt_switch_has_addr", align 4
@sunrpc_net_id = external dso_local local_unnamed_addr global i32, align 4
@.str.9 = private unnamed_addr constant [26 x i8] c"\013%s: unknown event: %ld\0A\00", align 1
@__func__.__rpc_clnt_handle_event = private unnamed_addr constant [24 x i8] c"__rpc_clnt_handle_event\00", align 1
@rpc_setup_pipedir_sb.clntid = internal unnamed_addr global i32 0, align 4
@.str.10 = private unnamed_addr constant [43 x i8] c"\016RPC: pipefs directory doesn't exist: %s\0A\00", align 1
@.str.11 = private unnamed_addr constant [7 x i8] c"clnt%x\00", align 1
@.str.12 = private unnamed_addr constant [54 x i8] c"\016RPC: Couldn't create pipefs entry %s/%s, error %ld\0A\00", align 1
@rpc_create_xprt.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@__tracepoint_rpc_clnt_new = external dso_local global %struct.tracepoint, align 4
@__cpu_online_mask = external dso_local global %struct.cpumask, align 4
@__tracepoint_rpc_clnt_new_err = external dso_local global %struct.tracepoint, align 4
@__tracepoint_rpc_clnt_clone_err = external dso_local global %struct.tracepoint, align 4
@__tracepoint_rpc_clnt_replace_xprt = external dso_local global %struct.tracepoint, align 4
@__tracepoint_rpc_clnt_replace_xprt_err = external dso_local global %struct.tracepoint, align 4
@__tracepoint_rpc_clnt_killall = external dso_local global %struct.tracepoint, align 4
@__tracepoint_rpc_clnt_shutdown = external dso_local global %struct.tracepoint, align 4
@__tracepoint_rpc_clnt_release = external dso_local global %struct.tracepoint, align 4
@__tracepoint_rpc_clnt_free = external dso_local global %struct.tracepoint, align 4
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@__tracepoint_rpc_xdr_reply_pages = external dso_local global %struct.tracepoint, align 4
@rpc_inaddr_loopback = internal constant %struct.sockaddr_in { i16 2, i16 0, %struct.in_addr zeroinitializer, [8 x i8] zeroinitializer }, align 4
@rpc_in6addr_loopback = internal constant { i16, i16, i32, { { [16 x i8] } }, i32 } { i16 10, i16 0, i32 0, { { [16 x i8] } } zeroinitializer, i32 0 }, align 4
@__tracepoint_rpc_request = external dso_local global %struct.tracepoint, align 4
@__tracepoint_rpc_bad_callhdr = external dso_local global %struct.tracepoint, align 4
@.str.15 = private unnamed_addr constant [32 x i8] c"%s: RPC call returned error %d\0A\00", align 1
@call_decode._rs = internal global %struct.ratelimit_state { %struct.raw_spinlock zeroinitializer, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, align 4
@__func__.call_decode = private unnamed_addr constant [12 x i8] c"call_decode\00", align 1
@.str.16 = private unnamed_addr constant [20 x i8] c"\015%s: server %s OK\0A\00", align 1
@__tracepoint_rpc_xdr_recvfrom = external dso_local global %struct.tracepoint, align 4
@.str.17 = private unnamed_addr constant [52 x i8] c"\014RPC: server %s requires stronger authentication.\0A\00", align 1
@__tracepoint_rpc__prog_unavail = external dso_local global %struct.tracepoint, align 4
@__tracepoint_rpc__prog_mismatch = external dso_local global %struct.tracepoint, align 4
@__tracepoint_rpc__proc_unavail = external dso_local global %struct.tracepoint, align 4
@__tracepoint_rpc__garbage_args = external dso_local global %struct.tracepoint, align 4
@__tracepoint_rpc__unparsable = external dso_local global %struct.tracepoint, align 4
@__tracepoint_rpc_bad_verifier = external dso_local global %struct.tracepoint, align 4
@__tracepoint_rpc__mismatch = external dso_local global %struct.tracepoint, align 4
@__tracepoint_rpc__stale_creds = external dso_local global %struct.tracepoint, align 4
@__tracepoint_rpc__bad_creds = external dso_local global %struct.tracepoint, align 4
@__tracepoint_rpc__auth_tooweak = external dso_local global %struct.tracepoint, align 4
@__tracepoint_rpc_call_status = external dso_local global %struct.tracepoint, align 4
@__tracepoint_xprt_ping = external dso_local global %struct.tracepoint, align 4
@rpc_check_timeout._rs = internal global %struct.ratelimit_state { %struct.raw_spinlock zeroinitializer, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, align 4
@__func__.rpc_check_timeout = private unnamed_addr constant [18 x i8] c"rpc_check_timeout\00", align 1
@.str.18 = private unnamed_addr constant [43 x i8] c"\015%s: server %s not responding, timed out\0A\00", align 1
@rpc_check_timeout._rs.19 = internal global %struct.ratelimit_state { %struct.raw_spinlock zeroinitializer, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, align 4
@.str.20 = private unnamed_addr constant [46 x i8] c"\015%s: server %s not responding, still trying\0A\00", align 1
@__tracepoint_rpc_timeout_status = external dso_local global %struct.tracepoint, align 4
@__tracepoint_rpc_call_rpcerror = external dso_local global %struct.tracepoint, align 4
@__tracepoint_rpcb_prog_unavail_err = external dso_local global %struct.tracepoint, align 4
@__tracepoint_rpcb_timeout_err = external dso_local global %struct.tracepoint, align 4
@__tracepoint_rpcb_bind_version_err = external dso_local global %struct.tracepoint, align 4
@__tracepoint_rpcb_unreachable_err = external dso_local global %struct.tracepoint, align 4
@__tracepoint_rpcb_unrecognized_err = external dso_local global %struct.tracepoint, align 4
@__tracepoint_rpc_connect_status = external dso_local global %struct.tracepoint, align 4
@__tracepoint_rpc_buf_alloc = external dso_local global %struct.tracepoint, align 4
@__tracepoint_rpc_retry_refresh_status = external dso_local global %struct.tracepoint, align 4
@__tracepoint_rpc_refresh_status = external dso_local global %struct.tracepoint, align 4
@.str.21 = private unnamed_addr constant [51 x i8] c"\015RPC: Could not send backchannel reply error: %d\0A\00", align 1
@rpcproc_null = internal constant %struct.rpc_procinfo { i32 0, ptr @rpcproc_encode_null, ptr @rpcproc_decode_null, i32 0, i32 0, i32 0, i32 0, ptr null }, align 4
@__const.rpc_call_null_helper.msg = private unnamed_addr constant %struct.rpc_message { ptr @rpcproc_null, ptr null, ptr null, ptr null }, align 4
@rpc_null_ops = internal constant %struct.rpc_call_ops { ptr @rpc_null_call_prepare, ptr @rpc_default_callback, ptr null, ptr null }, align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@llvm.compiler.used = appending global [34 x ptr] [ptr @__ksymtab_rpc_bind_new_program, ptr @__ksymtab_rpc_call_async, ptr @__ksymtab_rpc_call_null, ptr @__ksymtab_rpc_call_start, ptr @__ksymtab_rpc_call_sync, ptr @__ksymtab_rpc_clnt_add_xprt, ptr @__ksymtab_rpc_clnt_iterate_for_each_xprt, ptr @__ksymtab_rpc_clnt_setup_test_and_add_xprt, ptr @__ksymtab_rpc_clnt_test_and_add_xprt, ptr @__ksymtab_rpc_clnt_xprt_switch_add_xprt, ptr @__ksymtab_rpc_clnt_xprt_switch_has_addr, ptr @__ksymtab_rpc_clnt_xprt_switch_put, ptr @__ksymtab_rpc_clone_client, ptr @__ksymtab_rpc_clone_client_set_auth, ptr @__ksymtab_rpc_create, ptr @__ksymtab_rpc_force_rebind, ptr @__ksymtab_rpc_killall_tasks, ptr @__ksymtab_rpc_localaddr, ptr @__ksymtab_rpc_max_bc_payload, ptr @__ksymtab_rpc_max_payload, ptr @__ksymtab_rpc_net_ns, ptr @__ksymtab_rpc_num_bc_slots, ptr @__ksymtab_rpc_peeraddr, ptr @__ksymtab_rpc_peeraddr2str, ptr @__ksymtab_rpc_prepare_reply_pages, ptr @__ksymtab_rpc_release_client, ptr @__ksymtab_rpc_restart_call, ptr @__ksymtab_rpc_restart_call_prepare, ptr @__ksymtab_rpc_run_task, ptr @__ksymtab_rpc_set_connect_timeout, ptr @__ksymtab_rpc_setbufsize, ptr @__ksymtab_rpc_shutdown_client, ptr @__ksymtab_rpc_switch_client_transport, ptr @__ksymtab_rpc_task_release_transport], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @rpc_clients_notifier_register() local_unnamed_addr #0 {
  %1 = tail call i32 @rpc_pipefs_notifier_register(ptr noundef nonnull @rpc_clients_block) #20
  ret i32 %1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rpc_pipefs_notifier_register(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @rpc_clients_notifier_unregister() local_unnamed_addr #0 {
  tail call void @rpc_pipefs_notifier_unregister(ptr noundef nonnull @rpc_clients_block) #20
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rpc_pipefs_notifier_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @rpc_cleanup_clids() local_unnamed_addr #0 {
  tail call void @ida_destroy(ptr noundef nonnull @rpc_clids) #20
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ida_destroy(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @rpc_create(ptr nocapture noundef readonly %0) #0 {
  %2 = alloca %struct.xprt_create, align 4
  %3 = alloca [48 x i8], align 1
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %2) #20
  %4 = getelementptr inbounds %struct.rpc_create_args, ptr %0, i32 0, i32 1
  %5 = load i32, ptr %4, align 4
  store i32 %5, ptr %2, align 4
  %6 = getelementptr inbounds %struct.xprt_create, ptr %2, i32 0, i32 1
  %7 = load ptr, ptr %0, align 4
  store ptr %7, ptr %6, align 4
  %8 = getelementptr inbounds %struct.xprt_create, ptr %2, i32 0, i32 2
  %9 = getelementptr inbounds %struct.rpc_create_args, ptr %0, i32 0, i32 4
  %10 = load ptr, ptr %9, align 4
  store ptr %10, ptr %8, align 4
  %11 = getelementptr inbounds %struct.xprt_create, ptr %2, i32 0, i32 3
  %12 = getelementptr inbounds %struct.rpc_create_args, ptr %0, i32 0, i32 2
  %13 = load ptr, ptr %12, align 4
  store ptr %13, ptr %11, align 4
  %14 = getelementptr inbounds %struct.xprt_create, ptr %2, i32 0, i32 4
  %15 = getelementptr inbounds %struct.rpc_create_args, ptr %0, i32 0, i32 3
  %16 = load i32, ptr %15, align 4
  store i32 %16, ptr %14, align 4
  %17 = getelementptr inbounds %struct.xprt_create, ptr %2, i32 0, i32 5
  %18 = getelementptr inbounds %struct.rpc_create_args, ptr %0, i32 0, i32 6
  %19 = load ptr, ptr %18, align 4
  store ptr %19, ptr %17, align 4
  %20 = getelementptr inbounds %struct.xprt_create, ptr %2, i32 0, i32 6
  %21 = getelementptr inbounds %struct.rpc_create_args, ptr %0, i32 0, i32 15
  %22 = load ptr, ptr %21, align 4
  store ptr %22, ptr %20, align 4
  %23 = getelementptr inbounds %struct.xprt_create, ptr %2, i32 0, i32 7
  store ptr null, ptr %23, align 4
  %24 = getelementptr inbounds %struct.xprt_create, ptr %2, i32 0, i32 8
  store i32 0, ptr %24, align 4
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %3) #20
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(48) %3, i8 0, i32 48, i1 false), !annotation !8
  %25 = icmp eq ptr %22, null
  br i1 %25, label %41, label %26

26:                                               ; preds = %1
  %27 = icmp sgt i32 %5, -1
  %28 = load i1, ptr @rpc_create.__already_done, align 1
  %29 = xor i1 %28, true
  %30 = select i1 %27, i1 %29, i1 false
  br i1 %30, label %31, label %33, !prof !9

31:                                               ; preds = %26
  store i1 true, ptr @rpc_create.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 534, i32 noundef 9, ptr noundef null) #20
  %32 = load ptr, ptr %21, align 4
  br label %33

33:                                               ; preds = %31, %26
  %34 = phi ptr [ %32, %31 ], [ %22, %26 ]
  %35 = getelementptr inbounds %struct.svc_xprt, ptr %34, i32 0, i32 21
  %36 = load ptr, ptr %35, align 4
  %37 = icmp eq ptr %36, null
  br i1 %37, label %41, label %38

38:                                               ; preds = %33
  %39 = tail call ptr @xprt_get(ptr noundef nonnull %36) #20
  %40 = tail call fastcc ptr @rpc_create_xprt(ptr noundef %0, ptr noundef nonnull %36)
  br label %104

41:                                               ; preds = %33, %1
  %42 = getelementptr inbounds %struct.rpc_create_args, ptr %0, i32 0, i32 13
  %43 = load i32, ptr %42, align 4
  %44 = and i32 %43, 384
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %53, label %46

46:                                               ; preds = %41
  %47 = and i32 %43, 256
  %48 = icmp eq i32 %47, 0
  %49 = and i32 %43, 128
  %50 = icmp eq i32 %49, 0
  %51 = select i1 %50, i32 2, i32 3
  %52 = select i1 %48, i32 1, i32 %51
  store i32 %52, ptr %24, align 4
  br label %53

53:                                               ; preds = %46, %41
  %54 = icmp eq ptr %19, null
  br i1 %54, label %55, label %68

55:                                               ; preds = %53
  %56 = load ptr, ptr %12, align 4
  store i8 0, ptr %3, align 1
  %57 = load i16, ptr %56, align 2
  switch i16 %57, label %104 [
    i16 1, label %58
    i16 2, label %61
    i16 10, label %64
  ]

58:                                               ; preds = %55
  %59 = getelementptr inbounds %struct.sockaddr_un, ptr %56, i32 0, i32 1
  %60 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %3, i32 noundef 48, ptr noundef nonnull @.str.1, ptr noundef %59)
  br label %67

61:                                               ; preds = %55
  %62 = getelementptr inbounds %struct.sockaddr_in, ptr %56, i32 0, i32 2
  %63 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %3, i32 noundef 48, ptr noundef nonnull @.str.2, ptr noundef %62)
  br label %67

64:                                               ; preds = %55
  %65 = getelementptr inbounds %struct.sockaddr_in6, ptr %56, i32 0, i32 3
  %66 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %3, i32 noundef 48, ptr noundef nonnull @.str.3, ptr noundef %65)
  br label %67

67:                                               ; preds = %64, %61, %58
  store ptr %3, ptr %17, align 4
  br label %68

68:                                               ; preds = %67, %53
  %69 = call ptr @xprt_create_transport(ptr noundef nonnull %2) #20
  %70 = icmp ugt ptr %69, inttoptr (i32 -4096 to ptr)
  br i1 %70, label %104, label %71

71:                                               ; preds = %68
  %72 = getelementptr inbounds %struct.rpc_xprt, ptr %69, i32 0, i32 19
  %73 = load i8, ptr %72, align 4
  %74 = or i8 %73, 1
  store i8 %74, ptr %72, align 4
  %75 = load i32, ptr %42, align 4
  %76 = and i32 %75, 8
  %77 = icmp eq i32 %76, 0
  br i1 %77, label %80, label %78

78:                                               ; preds = %71
  %79 = and i8 %73, -2
  store i8 %79, ptr %72, align 4
  br label %80

80:                                               ; preds = %78, %71
  %81 = phi i8 [ %79, %78 ], [ %74, %71 ]
  %82 = and i8 %81, -3
  store i8 %82, ptr %72, align 4
  %83 = load i32, ptr %42, align 4
  %84 = and i32 %83, 2048
  %85 = icmp eq i32 %84, 0
  br i1 %85, label %88, label %86

86:                                               ; preds = %80
  %87 = or i8 %81, 2
  store i8 %87, ptr %72, align 4
  br label %88

88:                                               ; preds = %86, %80
  %89 = call fastcc ptr @rpc_create_xprt(ptr noundef %0, ptr noundef %69)
  %90 = icmp ugt ptr %89, inttoptr (i32 -4096 to ptr)
  br i1 %90, label %104, label %91

91:                                               ; preds = %88
  %92 = getelementptr inbounds %struct.rpc_create_args, ptr %0, i32 0, i32 12
  %93 = load i32, ptr %92, align 4
  %94 = icmp ult i32 %93, 2
  br i1 %94, label %104, label %100

95:                                               ; preds = %100
  %96 = add nuw i32 %101, 1
  %97 = load i32, ptr %92, align 4
  %98 = add i32 %97, -1
  %99 = icmp ult i32 %96, %98
  br i1 %99, label %100, label %104

100:                                              ; preds = %95, %91
  %101 = phi i32 [ %96, %95 ], [ 0, %91 ]
  %102 = call i32 @rpc_clnt_add_xprt(ptr noundef %89, ptr noundef nonnull %2, ptr noundef null, ptr noundef null)
  %103 = icmp slt i32 %102, 0
  br i1 %103, label %104, label %95

104:                                              ; preds = %100, %95, %91, %88, %68, %55, %38
  %105 = phi ptr [ %40, %38 ], [ %69, %68 ], [ %89, %91 ], [ %89, %88 ], [ inttoptr (i32 -22 to ptr), %55 ], [ %89, %95 ], [ %89, %100 ]
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %3) #20
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %2) #20
  ret ptr %105
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @xprt_get(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc ptr @rpc_create_xprt(ptr nocapture noundef readonly %0, ptr noundef %1) unnamed_addr #0 {
  %3 = alloca %struct.rpc_message, align 4
  %4 = alloca %struct.rpc_task_setup, align 4
  %5 = getelementptr inbounds %struct.rpc_create_args, ptr %0, i32 0, i32 15
  %6 = load ptr, ptr %5, align 4
  %7 = icmp eq ptr %6, null
  br i1 %7, label %26, label %8

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.svc_xprt, ptr %6, i32 0, i32 22
  %10 = load ptr, ptr %9, align 4
  %11 = icmp eq ptr %10, null
  br i1 %11, label %26, label %12

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct.rpc_create_args, ptr %0, i32 0, i32 1
  %14 = load i32, ptr %13, align 4
  %15 = icmp sgt i32 %14, -1
  %16 = load i1, ptr @rpc_create_xprt.__already_done, align 1
  %17 = xor i1 %16, true
  %18 = select i1 %15, i1 %17, i1 false
  br i1 %18, label %19, label %23, !prof !9

19:                                               ; preds = %12
  store i1 true, ptr @rpc_create_xprt.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 462, i32 noundef 9, ptr noundef null) #20
  %20 = load ptr, ptr %5, align 4
  %21 = getelementptr inbounds %struct.svc_xprt, ptr %20, i32 0, i32 22
  %22 = load ptr, ptr %21, align 4
  br label %23

23:                                               ; preds = %19, %12
  %24 = phi ptr [ %22, %19 ], [ %10, %12 ]
  %25 = tail call ptr @xprt_switch_get(ptr noundef %24) #20
  br label %38

26:                                               ; preds = %8, %2
  %27 = tail call ptr @xprt_switch_alloc(ptr noundef %1, i32 noundef 3264) #20
  %28 = icmp eq ptr %27, null
  br i1 %28, label %29, label %30

29:                                               ; preds = %26
  tail call void @xprt_put(ptr noundef %1) #20
  br label %111

30:                                               ; preds = %26
  %31 = getelementptr inbounds %struct.rpc_xprt, ptr %1, i32 0, i32 40
  %32 = load ptr, ptr %31, align 4
  %33 = icmp eq ptr %32, null
  br i1 %33, label %38, label %34

34:                                               ; preds = %30
  %35 = tail call ptr @xprt_switch_get(ptr noundef nonnull %27) #20
  %36 = load ptr, ptr %31, align 4
  %37 = getelementptr inbounds %struct.svc_xprt, ptr %36, i32 0, i32 22
  store ptr %27, ptr %37, align 4
  br label %38

38:                                               ; preds = %34, %30, %23
  %39 = phi ptr [ %24, %23 ], [ %27, %34 ], [ %27, %30 ]
  %40 = tail call fastcc ptr @rpc_new_client(ptr noundef %0, ptr noundef %39, ptr noundef %1, ptr noundef null)
  %41 = icmp ugt ptr %40, inttoptr (i32 -4096 to ptr)
  br i1 %41, label %111, label %42

42:                                               ; preds = %38
  %43 = getelementptr inbounds %struct.rpc_create_args, ptr %0, i32 0, i32 13
  %44 = load i32, ptr %43, align 4
  %45 = and i32 %44, 16
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %47, label %64

47:                                               ; preds = %42
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #20
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 4 dereferenceable(16) %3, ptr noundef nonnull align 4 dereferenceable(16) @__const.rpc_call_null_helper.msg, i32 16, i1 false) #20
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %4) #20
  %48 = getelementptr inbounds %struct.rpc_task_setup, ptr %4, i32 0, i32 1
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(36) %4, i8 0, i64 36, i1 false) #20
  store ptr %40, ptr %48, align 4
  %49 = getelementptr inbounds %struct.rpc_task_setup, ptr %4, i32 0, i32 4
  store ptr %3, ptr %49, align 4
  %50 = getelementptr inbounds %struct.rpc_task_setup, ptr %4, i32 0, i32 5
  store ptr @rpc_null_ops, ptr %50, align 4
  %51 = getelementptr inbounds %struct.rpc_task_setup, ptr %4, i32 0, i32 8
  store i16 1552, ptr %51, align 4
  %52 = call ptr @rpc_run_task(ptr noundef nonnull %4) #20
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %4) #20
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #20
  %53 = icmp ugt ptr %52, inttoptr (i32 -4096 to ptr)
  br i1 %53, label %54, label %56

54:                                               ; preds = %47
  %55 = ptrtoint ptr %52 to i32
  br label %59

56:                                               ; preds = %47
  %57 = getelementptr inbounds %struct.rpc_task, ptr %52, i32 0, i32 1
  %58 = load i32, ptr %57, align 4
  call void @rpc_put_task(ptr noundef %52) #20
  br label %59

59:                                               ; preds = %56, %54
  %60 = phi i32 [ %55, %54 ], [ %58, %56 ]
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %64, label %62

62:                                               ; preds = %59
  call void @rpc_shutdown_client(ptr noundef %40)
  %63 = inttoptr i32 %60 to ptr
  br label %111

64:                                               ; preds = %59, %42
  %65 = getelementptr inbounds %struct.rpc_clnt, ptr %40, i32 0, i32 14
  %66 = load i8, ptr %65, align 4
  %67 = or i8 %66, 1
  store i8 %67, ptr %65, align 4
  %68 = load i32, ptr %43, align 4
  %69 = and i32 %68, 1025
  %70 = icmp eq i32 %69, 0
  br i1 %70, label %80, label %71

71:                                               ; preds = %64
  %72 = and i8 %66, -2
  store i8 %72, ptr %65, align 4
  %73 = load i32, ptr %43, align 4
  %74 = and i32 %73, 1024
  %75 = icmp eq i32 %74, 0
  br i1 %75, label %80, label %76

76:                                               ; preds = %71
  %77 = and i8 %66, -4
  %78 = or i8 %77, 2
  store i8 %78, ptr %65, align 4
  %79 = load i32, ptr %43, align 4
  br label %80

80:                                               ; preds = %76, %71, %64
  %81 = phi i8 [ %72, %71 ], [ %78, %76 ], [ %67, %64 ]
  %82 = phi i32 [ %73, %71 ], [ %79, %76 ], [ %68, %64 ]
  %83 = and i32 %82, 4
  %84 = icmp eq i32 %83, 0
  br i1 %84, label %88, label %85

85:                                               ; preds = %80
  %86 = or i8 %81, 16
  store i8 %86, ptr %65, align 4
  %87 = load i32, ptr %43, align 4
  br label %88

88:                                               ; preds = %85, %80
  %89 = phi i8 [ %86, %85 ], [ %81, %80 ]
  %90 = phi i32 [ %87, %85 ], [ %82, %80 ]
  %91 = and i32 %90, 512
  %92 = icmp eq i32 %91, 0
  br i1 %92, label %96, label %93

93:                                               ; preds = %88
  %94 = or i8 %89, 8
  store i8 %94, ptr %65, align 4
  %95 = load i32, ptr %43, align 4
  br label %96

96:                                               ; preds = %93, %88
  %97 = phi i8 [ %94, %93 ], [ %89, %88 ]
  %98 = phi i32 [ %95, %93 ], [ %90, %88 ]
  %99 = and i32 %98, 32
  %100 = icmp eq i32 %99, 0
  br i1 %100, label %104, label %101

101:                                              ; preds = %96
  %102 = or i8 %97, 4
  store i8 %102, ptr %65, align 4
  %103 = load i32, ptr %43, align 4
  br label %104

104:                                              ; preds = %101, %96
  %105 = phi i8 [ %102, %101 ], [ %97, %96 ]
  %106 = phi i32 [ %103, %101 ], [ %98, %96 ]
  %107 = and i32 %106, 64
  %108 = icmp eq i32 %107, 0
  br i1 %108, label %109, label %111

109:                                              ; preds = %104
  %110 = or i8 %105, 32
  store i8 %110, ptr %65, align 4
  br label %111

111:                                              ; preds = %109, %104, %62, %38, %29
  %112 = phi ptr [ %63, %62 ], [ inttoptr (i32 -12 to ptr), %29 ], [ %40, %38 ], [ %40, %109 ], [ %40, %104 ]
  ret ptr %112
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @xprt_create_transport(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @rpc_clnt_add_xprt(ptr noundef %0, ptr noundef %1, ptr noundef readonly %2, ptr noundef %3) #0 {
  tail call void asm sideeffect "", "~{memory}"() #20, !srcloc !10
  %5 = getelementptr inbounds %struct.rpc_clnt, ptr %0, i32 0, i32 27
  %6 = load volatile ptr, ptr %5, align 4
  %7 = tail call ptr @xprt_switch_get(ptr noundef %6) #20
  %8 = tail call ptr @xprt_iter_xprt(ptr noundef %5) #20
  %9 = icmp eq ptr %7, null
  %10 = icmp eq ptr %8, null
  %11 = select i1 %9, i1 true, i1 %10
  br i1 %11, label %12, label %13

12:                                               ; preds = %4
  tail call void asm sideeffect "", "~{memory}"() #20, !srcloc !11
  tail call void @xprt_switch_put(ptr noundef %7) #20
  br label %54

13:                                               ; preds = %4
  %14 = getelementptr inbounds %struct.rpc_xprt, ptr %8, i32 0, i32 19
  %15 = load i8, ptr %14, align 4
  %16 = getelementptr inbounds %struct.rpc_xprt, ptr %8, i32 0, i32 30
  %17 = load i32, ptr %16, align 8
  %18 = getelementptr inbounds %struct.rpc_xprt, ptr %8, i32 0, i32 31
  %19 = load i32, ptr %18, align 4
  %20 = getelementptr inbounds %struct.rpc_xprt, ptr %8, i32 0, i32 53
  %21 = load ptr, ptr %20, align 8
  %22 = getelementptr inbounds %struct.xprt_class, ptr %21, i32 0, i32 1
  %23 = load i32, ptr %22, align 4
  tail call void asm sideeffect "", "~{memory}"() #20, !srcloc !11
  %24 = load i32, ptr %1, align 4
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %13
  store i32 %23, ptr %1, align 4
  br label %27

27:                                               ; preds = %26, %13
  %28 = tail call ptr @xprt_create_transport(ptr noundef %1) #20
  %29 = icmp ugt ptr %28, inttoptr (i32 -4096 to ptr)
  br i1 %29, label %30, label %32

30:                                               ; preds = %27
  %31 = ptrtoint ptr %28 to i32
  br label %52

32:                                               ; preds = %27
  %33 = getelementptr inbounds %struct.rpc_xprt, ptr %28, i32 0, i32 19
  %34 = load i8, ptr %33, align 4
  %35 = and i8 %34, -4
  %36 = and i8 %15, 3
  %37 = or i8 %36, %35
  store i8 %37, ptr %33, align 4
  %38 = getelementptr inbounds %struct.rpc_xprt, ptr %28, i32 0, i32 1
  %39 = load ptr, ptr %38, align 4
  %40 = getelementptr inbounds %struct.rpc_xprt_ops, ptr %39, i32 0, i32 17
  %41 = load ptr, ptr %40, align 4
  %42 = icmp eq ptr %41, null
  br i1 %42, label %44, label %43

43:                                               ; preds = %32
  tail call void %41(ptr noundef %28, i32 noundef %17, i32 noundef %19) #20
  br label %44

44:                                               ; preds = %43, %32
  tail call void @rpc_xprt_switch_set_roundrobin(ptr noundef nonnull %7) #20
  %45 = icmp eq ptr %2, null
  br i1 %45, label %49, label %46

46:                                               ; preds = %44
  %47 = tail call i32 %2(ptr noundef %0, ptr noundef nonnull %7, ptr noundef %28, ptr noundef %3) #20
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %49, label %50

49:                                               ; preds = %46, %44
  tail call void @rpc_xprt_switch_add_xprt(ptr noundef nonnull %7, ptr noundef %28) #20
  br label %50

50:                                               ; preds = %49, %46
  %51 = phi i32 [ %47, %46 ], [ 0, %49 ]
  tail call void @xprt_put(ptr noundef %28) #20
  br label %52

52:                                               ; preds = %50, %30
  %53 = phi i32 [ %31, %30 ], [ %51, %50 ]
  tail call void @xprt_switch_put(ptr noundef nonnull %7) #20
  br label %54

54:                                               ; preds = %52, %12
  %55 = phi i32 [ -11, %12 ], [ %53, %52 ]
  ret i32 %55
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @rpc_clone_client(ptr noundef %0) #0 {
  %2 = alloca %struct.rpc_create_args, align 4
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %2) #20
  %3 = getelementptr inbounds %struct.rpc_create_args, ptr %2, i32 0, i32 8
  %4 = getelementptr inbounds %struct.rpc_clnt, ptr %0, i32 0, i32 24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(72) %2, i8 0, i64 72, i1 false)
  %5 = load ptr, ptr %4, align 4
  store ptr %5, ptr %3, align 4
  %6 = getelementptr inbounds %struct.rpc_create_args, ptr %2, i32 0, i32 9
  %7 = getelementptr inbounds %struct.rpc_clnt, ptr %0, i32 0, i32 8
  %8 = load i32, ptr %7, align 4
  store i32 %8, ptr %6, align 4
  %9 = getelementptr inbounds %struct.rpc_create_args, ptr %2, i32 0, i32 10
  %10 = getelementptr inbounds %struct.rpc_clnt, ptr %0, i32 0, i32 9
  %11 = load i32, ptr %10, align 4
  store i32 %11, ptr %9, align 4
  %12 = getelementptr inbounds %struct.rpc_create_args, ptr %2, i32 0, i32 11
  %13 = getelementptr inbounds %struct.rpc_clnt, ptr %0, i32 0, i32 11
  %14 = load ptr, ptr %13, align 4
  %15 = getelementptr inbounds %struct.rpc_auth, ptr %14, i32 0, i32 6
  %16 = load i32, ptr %15, align 4
  store i32 %16, ptr %12, align 4
  %17 = getelementptr inbounds %struct.rpc_create_args, ptr %2, i32 0, i32 12
  %18 = getelementptr inbounds %struct.rpc_create_args, ptr %2, i32 0, i32 16
  %19 = getelementptr inbounds %struct.rpc_clnt, ptr %0, i32 0, i32 28
  call void @llvm.memset.p0.i64(ptr noundef align 4 dereferenceable(16) %17, i8 0, i64 16, i1 false)
  %20 = load ptr, ptr %19, align 4
  store ptr %20, ptr %18, align 4
  %21 = getelementptr inbounds %struct.rpc_create_args, ptr %2, i32 0, i32 17
  store i32 0, ptr %21, align 4
  %22 = call fastcc ptr @__rpc_clone_client(ptr noundef nonnull %2, ptr noundef %0)
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %2) #20
  ret ptr %22
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc ptr @__rpc_clone_client(ptr nocapture noundef %0, ptr noundef %1) unnamed_addr #0 {
  tail call void asm sideeffect "", "~{memory}"() #20, !srcloc !10
  %3 = getelementptr inbounds %struct.rpc_clnt, ptr %1, i32 0, i32 6
  %4 = load volatile ptr, ptr %3, align 4
  %5 = tail call ptr @xprt_get(ptr noundef %4) #20
  %6 = getelementptr inbounds %struct.rpc_clnt, ptr %1, i32 0, i32 27
  %7 = load volatile ptr, ptr %6, align 4
  %8 = tail call ptr @xprt_switch_get(ptr noundef %7) #20
  tail call void asm sideeffect "", "~{memory}"() #20, !srcloc !11
  %9 = icmp eq ptr %5, null
  %10 = icmp eq ptr %8, null
  %11 = select i1 %9, i1 true, i1 %10
  br i1 %11, label %12, label %28

12:                                               ; preds = %2
  tail call void @xprt_put(ptr noundef %5) #20
  tail call void @xprt_switch_put(ptr noundef %8) #20
  %13 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_rpc_clnt_clone_err, i32 0, i32 1), align 4
  %14 = icmp sgt i32 %13, 0
  br i1 %14, label %15, label %64

15:                                               ; preds = %12
  %16 = tail call ptr @llvm.thread.pointer() #20
  %17 = getelementptr inbounds %struct.thread_info, ptr %16, i32 0, i32 2
  %18 = load i32, ptr %17, align 8
  %19 = lshr i32 %18, 5
  %20 = getelementptr i32, ptr @__cpu_online_mask, i32 %19
  %21 = load volatile i32, ptr %20, align 4
  %22 = and i32 %18, 31
  %23 = shl nuw i32 1, %22
  %24 = and i32 %23, %21
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %64, label %26

26:                                               ; preds = %15
  tail call void asm sideeffect "", "~{memory}"() #20, !srcloc !12
  %27 = tail call i32 @__traceiter_rpc_clnt_clone_err(ptr noundef null, ptr noundef %1, i32 noundef -12) #20
  tail call void asm sideeffect "", "~{memory}"() #20, !srcloc !13
  br label %64

28:                                               ; preds = %2
  %29 = getelementptr inbounds %struct.rpc_xprt, ptr %5, i32 0, i32 50
  %30 = load ptr, ptr %29, align 4
  %31 = getelementptr inbounds %struct.rpc_create_args, ptr %0, i32 0, i32 6
  store ptr %30, ptr %31, align 4
  %32 = getelementptr inbounds %struct.rpc_clnt, ptr %1, i32 0, i32 19
  %33 = getelementptr inbounds %struct.rpc_create_args, ptr %0, i32 0, i32 7
  store ptr %32, ptr %33, align 4
  %34 = tail call fastcc ptr @rpc_new_client(ptr noundef %0, ptr noundef nonnull %8, ptr noundef nonnull %5, ptr noundef %1)
  %35 = icmp ugt ptr %34, inttoptr (i32 -4096 to ptr)
  br i1 %35, label %64, label %36

36:                                               ; preds = %28
  %37 = getelementptr inbounds %struct.rpc_clnt, ptr %34, i32 0, i32 14
  %38 = load i8, ptr %37, align 4
  %39 = and i8 %38, -17
  store i8 %39, ptr %37, align 4
  %40 = getelementptr inbounds %struct.rpc_clnt, ptr %1, i32 0, i32 14
  %41 = load i8, ptr %40, align 4
  %42 = and i8 %41, 1
  %43 = and i8 %38, -18
  %44 = or i8 %42, %43
  store i8 %44, ptr %37, align 4
  %45 = load i8, ptr %40, align 4
  %46 = and i8 %45, 2
  %47 = and i8 %44, -19
  %48 = or i8 %47, %46
  store i8 %48, ptr %37, align 4
  %49 = load i8, ptr %40, align 4
  %50 = and i8 %49, 8
  %51 = and i8 %48, -25
  %52 = or i8 %51, %50
  store i8 %52, ptr %37, align 4
  %53 = load i8, ptr %40, align 4
  %54 = and i8 %53, 4
  %55 = and i8 %52, -21
  %56 = or i8 %55, %54
  store i8 %56, ptr %37, align 4
  %57 = load i8, ptr %40, align 4
  %58 = and i8 %57, 32
  %59 = and i8 %56, -49
  %60 = or i8 %59, %58
  store i8 %60, ptr %37, align 4
  %61 = getelementptr inbounds %struct.rpc_clnt, ptr %1, i32 0, i32 25
  %62 = load ptr, ptr %61, align 4
  %63 = getelementptr inbounds %struct.rpc_clnt, ptr %34, i32 0, i32 25
  store ptr %62, ptr %63, align 4
  br label %64

64:                                               ; preds = %36, %28, %26, %15, %12
  %65 = phi ptr [ %34, %36 ], [ %34, %28 ], [ inttoptr (i32 -12 to ptr), %12 ], [ inttoptr (i32 -12 to ptr), %15 ], [ inttoptr (i32 -12 to ptr), %26 ]
  ret ptr %65
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @rpc_clone_client_set_auth(ptr noundef %0, i32 noundef %1) #0 {
  %3 = alloca %struct.rpc_create_args, align 4
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %3) #20
  %4 = getelementptr inbounds %struct.rpc_create_args, ptr %3, i32 0, i32 8
  %5 = getelementptr inbounds %struct.rpc_clnt, ptr %0, i32 0, i32 24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(32) %3, i8 0, i64 32, i1 false)
  %6 = load ptr, ptr %5, align 4
  store ptr %6, ptr %4, align 4
  %7 = getelementptr inbounds %struct.rpc_create_args, ptr %3, i32 0, i32 9
  %8 = getelementptr inbounds %struct.rpc_clnt, ptr %0, i32 0, i32 8
  %9 = load i32, ptr %8, align 4
  store i32 %9, ptr %7, align 4
  %10 = getelementptr inbounds %struct.rpc_create_args, ptr %3, i32 0, i32 10
  %11 = getelementptr inbounds %struct.rpc_clnt, ptr %0, i32 0, i32 9
  %12 = load i32, ptr %11, align 4
  store i32 %12, ptr %10, align 4
  %13 = getelementptr inbounds %struct.rpc_create_args, ptr %3, i32 0, i32 11
  store i32 %1, ptr %13, align 4
  %14 = getelementptr inbounds %struct.rpc_create_args, ptr %3, i32 0, i32 12
  %15 = getelementptr inbounds %struct.rpc_create_args, ptr %3, i32 0, i32 16
  %16 = getelementptr inbounds %struct.rpc_clnt, ptr %0, i32 0, i32 28
  call void @llvm.memset.p0.i64(ptr noundef align 4 dereferenceable(16) %14, i8 0, i64 16, i1 false)
  %17 = load ptr, ptr %16, align 4
  store ptr %17, ptr %15, align 4
  %18 = getelementptr inbounds %struct.rpc_create_args, ptr %3, i32 0, i32 17
  store i32 0, ptr %18, align 4
  %19 = call fastcc ptr @__rpc_clone_client(ptr noundef nonnull %3, ptr noundef %0)
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %3) #20
  ret ptr %19
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @rpc_switch_client_transport(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = tail call ptr @xprt_create_transport(ptr noundef %1) #20
  %5 = icmp ugt ptr %4, inttoptr (i32 -4096 to ptr)
  br i1 %5, label %6, label %8

6:                                                ; preds = %3
  %7 = ptrtoint ptr %4 to i32
  br label %104

8:                                                ; preds = %3
  %9 = tail call ptr @xprt_switch_alloc(ptr noundef %4, i32 noundef 3264) #20
  %10 = icmp eq ptr %9, null
  br i1 %10, label %11, label %12

11:                                               ; preds = %8
  tail call void @xprt_put(ptr noundef %4) #20
  br label %104

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct.rpc_clnt, ptr %0, i32 0, i32 11
  %14 = load ptr, ptr %13, align 4
  %15 = getelementptr inbounds %struct.rpc_auth, ptr %14, i32 0, i32 6
  %16 = load i32, ptr %15, align 4
  %17 = getelementptr inbounds %struct.rpc_clnt, ptr %0, i32 0, i32 16
  %18 = load ptr, ptr %17, align 4
  %19 = getelementptr inbounds %struct.rpc_clnt, ptr %0, i32 0, i32 5
  tail call void @_raw_spin_lock(ptr noundef %19) #20
  %20 = getelementptr inbounds %struct.rpc_clnt, ptr %0, i32 0, i32 6
  %21 = load ptr, ptr %20, align 4
  %22 = getelementptr inbounds %struct.rpc_xprt, ptr %4, i32 0, i32 18
  %23 = load volatile i32, ptr %22, align 4
  %24 = and i32 %23, 16
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %30

26:                                               ; preds = %12
  %27 = getelementptr inbounds %struct.rpc_clnt, ptr %0, i32 0, i32 14
  %28 = load i8, ptr %27, align 4
  %29 = or i8 %28, 16
  store i8 %29, ptr %27, align 4
  br label %30

30:                                               ; preds = %26, %12
  store ptr %2, ptr %17, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #20, !srcloc !14
  store volatile ptr %4, ptr %20, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #20, !srcloc !15
  %31 = load i16, ptr %19, align 4
  %32 = add i16 %31, 1
  store i16 %32, ptr %19, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #20, !srcloc !16
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #20, !srcloc !17
  tail call void asm sideeffect "", "~{memory}"() #20, !srcloc !18
  %33 = getelementptr inbounds %struct.rpc_clnt, ptr %0, i32 0, i32 27
  %34 = tail call ptr @xprt_iter_xchg_switch(ptr noundef %33, ptr noundef nonnull %9) #20
  tail call void asm sideeffect "", "~{memory}"() #20, !srcloc !10
  %35 = load volatile ptr, ptr %20, align 4
  %36 = getelementptr inbounds %struct.rpc_xprt, ptr %35, i32 0, i32 49
  %37 = load ptr, ptr %36, align 8
  tail call void asm sideeffect "", "~{memory}"() #20, !srcloc !11
  %38 = load i32, ptr @sunrpc_net_id, align 4
  tail call void asm sideeffect "", "~{memory}"() #20, !srcloc !10
  %39 = getelementptr inbounds %struct.net, ptr %37, i32 0, i32 37
  %40 = load volatile ptr, ptr %39, align 64
  %41 = getelementptr [0 x ptr], ptr %40, i32 0, i32 %38
  %42 = load ptr, ptr %41, align 4
  tail call void asm sideeffect "", "~{memory}"() #20, !srcloc !11
  %43 = getelementptr inbounds %struct.sunrpc_net, ptr %42, i32 0, i32 9
  tail call void @_raw_spin_lock(ptr noundef %43) #20
  %44 = getelementptr inbounds %struct.rpc_clnt, ptr %0, i32 0, i32 2
  %45 = getelementptr inbounds %struct.rpc_clnt, ptr %0, i32 0, i32 2, i32 1
  %46 = load ptr, ptr %45, align 4
  %47 = load ptr, ptr %44, align 4
  %48 = getelementptr inbounds %struct.list_head, ptr %47, i32 0, i32 1
  store ptr %46, ptr %48, align 4
  store volatile ptr %47, ptr %46, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %44, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %45, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #20, !srcloc !15
  %49 = load i16, ptr %43, align 4
  %50 = add i16 %49, 1
  store i16 %50, ptr %43, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #20, !srcloc !16
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #20, !srcloc !17
  tail call void asm sideeffect "", "~{memory}"() #20, !srcloc !18
  %51 = tail call i32 @rpc_remove_client_dir(ptr noundef %0) #20
  tail call void @rpc_sysfs_client_destroy(ptr noundef %0) #20
  %52 = getelementptr inbounds %struct.rpc_clnt, ptr %0, i32 0, i32 21
  %53 = load ptr, ptr %52, align 4
  store ptr %0, ptr %52, align 4
  %54 = tail call fastcc i32 @rpc_client_register(ptr noundef %0, i32 noundef %16, ptr noundef null)
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %56, label %75

56:                                               ; preds = %30
  tail call void @synchronize_rcu() #20
  %57 = icmp eq ptr %53, %0
  br i1 %57, label %59, label %58

58:                                               ; preds = %56
  tail call void @rpc_release_client(ptr noundef %53)
  br label %59

59:                                               ; preds = %58, %56
  tail call void @xprt_switch_put(ptr noundef %34) #20
  tail call void @xprt_put(ptr noundef %21) #20
  %60 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_rpc_clnt_replace_xprt, i32 0, i32 1), align 4
  %61 = icmp sgt i32 %60, 0
  br i1 %61, label %62, label %104

62:                                               ; preds = %59
  %63 = tail call ptr @llvm.thread.pointer() #20
  %64 = getelementptr inbounds %struct.thread_info, ptr %63, i32 0, i32 2
  %65 = load i32, ptr %64, align 8
  %66 = lshr i32 %65, 5
  %67 = getelementptr i32, ptr @__cpu_online_mask, i32 %66
  %68 = load volatile i32, ptr %67, align 4
  %69 = and i32 %65, 31
  %70 = shl nuw i32 1, %69
  %71 = and i32 %70, %68
  %72 = icmp eq i32 %71, 0
  br i1 %72, label %104, label %73

73:                                               ; preds = %62
  tail call void asm sideeffect "", "~{memory}"() #20, !srcloc !19
  %74 = tail call i32 @__traceiter_rpc_clnt_replace_xprt(ptr noundef null, ptr noundef %0) #20
  tail call void asm sideeffect "", "~{memory}"() #20, !srcloc !20
  br label %104

75:                                               ; preds = %30
  %76 = tail call ptr @xprt_iter_xchg_switch(ptr noundef %33, ptr noundef %34) #20
  tail call void @_raw_spin_lock(ptr noundef %19) #20
  %77 = getelementptr inbounds %struct.rpc_xprt, ptr %21, i32 0, i32 18
  %78 = load volatile i32, ptr %77, align 4
  %79 = and i32 %78, 16
  %80 = icmp eq i32 %79, 0
  br i1 %80, label %81, label %85

81:                                               ; preds = %75
  %82 = getelementptr inbounds %struct.rpc_clnt, ptr %0, i32 0, i32 14
  %83 = load i8, ptr %82, align 4
  %84 = or i8 %83, 16
  store i8 %84, ptr %82, align 4
  br label %85

85:                                               ; preds = %81, %75
  store ptr %18, ptr %17, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #20, !srcloc !14
  store volatile ptr %21, ptr %20, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #20, !srcloc !15
  %86 = load i16, ptr %19, align 4
  %87 = add i16 %86, 1
  store i16 %87, ptr %19, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #20, !srcloc !16
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #20, !srcloc !17
  tail call void asm sideeffect "", "~{memory}"() #20, !srcloc !18
  store ptr %53, ptr %52, align 4
  %88 = tail call fastcc i32 @rpc_client_register(ptr noundef %0, i32 noundef %16, ptr noundef null)
  tail call void @xprt_switch_put(ptr noundef %76) #20
  tail call void @xprt_put(ptr noundef %4) #20
  %89 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_rpc_clnt_replace_xprt_err, i32 0, i32 1), align 4
  %90 = icmp sgt i32 %89, 0
  br i1 %90, label %91, label %104

91:                                               ; preds = %85
  %92 = tail call ptr @llvm.thread.pointer() #20
  %93 = getelementptr inbounds %struct.thread_info, ptr %92, i32 0, i32 2
  %94 = load i32, ptr %93, align 8
  %95 = lshr i32 %94, 5
  %96 = getelementptr i32, ptr @__cpu_online_mask, i32 %95
  %97 = load volatile i32, ptr %96, align 4
  %98 = and i32 %94, 31
  %99 = shl nuw i32 1, %98
  %100 = and i32 %99, %97
  %101 = icmp eq i32 %100, 0
  br i1 %101, label %104, label %102

102:                                              ; preds = %91
  tail call void asm sideeffect "", "~{memory}"() #20, !srcloc !21
  %103 = tail call i32 @__traceiter_rpc_clnt_replace_xprt_err(ptr noundef null, ptr noundef %0) #20
  tail call void asm sideeffect "", "~{memory}"() #20, !srcloc !22
  br label %104

104:                                              ; preds = %102, %91, %85, %73, %62, %59, %11, %6
  %105 = phi i32 [ %7, %6 ], [ -12, %11 ], [ 0, %59 ], [ 0, %62 ], [ 0, %73 ], [ %54, %85 ], [ %54, %91 ], [ %54, %102 ]
  ret i32 %105
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @xprt_switch_alloc(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @xprt_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc ptr @rpc_clnt_set_transport(ptr noundef %0, ptr noundef %1, ptr noundef %2) unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.rpc_clnt, ptr %0, i32 0, i32 5
  tail call void @_raw_spin_lock(ptr noundef %4) #20
  %5 = getelementptr inbounds %struct.rpc_clnt, ptr %0, i32 0, i32 6
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.rpc_xprt, ptr %1, i32 0, i32 18
  %8 = load volatile i32, ptr %7, align 4
  %9 = and i32 %8, 16
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %15

11:                                               ; preds = %3
  %12 = getelementptr inbounds %struct.rpc_clnt, ptr %0, i32 0, i32 14
  %13 = load i8, ptr %12, align 4
  %14 = or i8 %13, 16
  store i8 %14, ptr %12, align 4
  br label %15

15:                                               ; preds = %11, %3
  %16 = getelementptr inbounds %struct.rpc_clnt, ptr %0, i32 0, i32 16
  store ptr %2, ptr %16, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #20, !srcloc !14
  store volatile ptr %1, ptr %5, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #20, !srcloc !15
  %17 = load i16, ptr %4, align 4
  %18 = add i16 %17, 1
  store i16 %18, ptr %4, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #20, !srcloc !16
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #20, !srcloc !17
  tail call void asm sideeffect "", "~{memory}"() #20, !srcloc !18
  ret ptr %6
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @xprt_iter_xchg_switch(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @rpc_sysfs_client_destroy(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @rpc_client_register(ptr noundef %0, i32 noundef %1, ptr noundef %2) unnamed_addr #0 {
  %4 = alloca %struct.rpc_auth_create_args, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #20
  store i32 %1, ptr %4, align 8
  %5 = getelementptr inbounds %struct.rpc_auth_create_args, ptr %4, i32 0, i32 1
  store ptr %2, ptr %5, align 4
  tail call void asm sideeffect "", "~{memory}"() #20, !srcloc !10
  %6 = getelementptr inbounds %struct.rpc_clnt, ptr %0, i32 0, i32 6
  %7 = load volatile ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.rpc_xprt, ptr %7, i32 0, i32 49
  %9 = load ptr, ptr %8, align 8
  tail call void asm sideeffect "", "~{memory}"() #20, !srcloc !11
  %10 = tail call ptr @rpc_get_sb_net(ptr noundef %9) #20
  %11 = icmp eq ptr %10, null
  br i1 %11, label %39, label %12

12:                                               ; preds = %3
  %13 = getelementptr inbounds %struct.rpc_clnt, ptr %0, i32 0, i32 24
  %14 = load ptr, ptr %13, align 4
  %15 = getelementptr inbounds %struct.rpc_program, ptr %14, i32 0, i32 5
  %16 = load ptr, ptr %15, align 4
  %17 = icmp eq ptr %16, null
  br i1 %17, label %22, label %18

18:                                               ; preds = %12
  %19 = tail call fastcc ptr @rpc_setup_pipedir_sb(ptr noundef nonnull %10, ptr noundef %0) #20
  %20 = icmp ugt ptr %19, inttoptr (i32 -4096 to ptr)
  %21 = ptrtoint ptr %19 to i32
  br i1 %20, label %80, label %22

22:                                               ; preds = %18, %12
  tail call void asm sideeffect "", "~{memory}"() #20, !srcloc !10
  %23 = load volatile ptr, ptr %6, align 4
  %24 = getelementptr inbounds %struct.rpc_xprt, ptr %23, i32 0, i32 49
  %25 = load ptr, ptr %24, align 8
  tail call void asm sideeffect "", "~{memory}"() #20, !srcloc !11
  %26 = load i32, ptr @sunrpc_net_id, align 4
  tail call void asm sideeffect "", "~{memory}"() #20, !srcloc !10
  %27 = getelementptr inbounds %struct.net, ptr %25, i32 0, i32 37
  %28 = load volatile ptr, ptr %27, align 64
  %29 = getelementptr [0 x ptr], ptr %28, i32 0, i32 %26
  %30 = load ptr, ptr %29, align 4
  tail call void asm sideeffect "", "~{memory}"() #20, !srcloc !11
  %31 = getelementptr inbounds %struct.sunrpc_net, ptr %30, i32 0, i32 9
  tail call void @_raw_spin_lock(ptr noundef %31) #20
  %32 = getelementptr inbounds %struct.rpc_clnt, ptr %0, i32 0, i32 2
  %33 = getelementptr inbounds %struct.sunrpc_net, ptr %30, i32 0, i32 8
  %34 = load ptr, ptr %33, align 4
  %35 = getelementptr inbounds %struct.list_head, ptr %34, i32 0, i32 1
  store ptr %32, ptr %35, align 4
  store ptr %34, ptr %32, align 4
  %36 = getelementptr inbounds %struct.rpc_clnt, ptr %0, i32 0, i32 2, i32 1
  store ptr %33, ptr %36, align 4
  store volatile ptr %32, ptr %33, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #20, !srcloc !15
  %37 = load i16, ptr %31, align 4
  %38 = add i16 %37, 1
  store i16 %38, ptr %31, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #20, !srcloc !16
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #20, !srcloc !17
  tail call void asm sideeffect "", "~{memory}"() #20, !srcloc !18
  tail call void @rpc_put_sb_net(ptr noundef %9) #20
  br label %56

39:                                               ; preds = %3
  tail call void asm sideeffect "", "~{memory}"() #20, !srcloc !10
  %40 = load volatile ptr, ptr %6, align 4
  %41 = getelementptr inbounds %struct.rpc_xprt, ptr %40, i32 0, i32 49
  %42 = load ptr, ptr %41, align 8
  tail call void asm sideeffect "", "~{memory}"() #20, !srcloc !11
  %43 = load i32, ptr @sunrpc_net_id, align 4
  tail call void asm sideeffect "", "~{memory}"() #20, !srcloc !10
  %44 = getelementptr inbounds %struct.net, ptr %42, i32 0, i32 37
  %45 = load volatile ptr, ptr %44, align 64
  %46 = getelementptr [0 x ptr], ptr %45, i32 0, i32 %43
  %47 = load ptr, ptr %46, align 4
  tail call void asm sideeffect "", "~{memory}"() #20, !srcloc !11
  %48 = getelementptr inbounds %struct.sunrpc_net, ptr %47, i32 0, i32 9
  tail call void @_raw_spin_lock(ptr noundef %48) #20
  %49 = getelementptr inbounds %struct.rpc_clnt, ptr %0, i32 0, i32 2
  %50 = getelementptr inbounds %struct.sunrpc_net, ptr %47, i32 0, i32 8
  %51 = load ptr, ptr %50, align 4
  %52 = getelementptr inbounds %struct.list_head, ptr %51, i32 0, i32 1
  store ptr %49, ptr %52, align 4
  store ptr %51, ptr %49, align 4
  %53 = getelementptr inbounds %struct.rpc_clnt, ptr %0, i32 0, i32 2, i32 1
  store ptr %50, ptr %53, align 4
  store volatile ptr %49, ptr %50, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #20, !srcloc !15
  %54 = load i16, ptr %48, align 4
  %55 = add i16 %54, 1
  store i16 %55, ptr %48, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #20, !srcloc !16
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #20, !srcloc !17
  tail call void asm sideeffect "", "~{memory}"() #20, !srcloc !18
  br label %56

56:                                               ; preds = %39, %22
  %57 = call ptr @rpcauth_create(ptr noundef nonnull %4, ptr noundef %0) #20
  %58 = icmp ugt ptr %57, inttoptr (i32 -4096 to ptr)
  br i1 %58, label %59, label %84

59:                                               ; preds = %56
  %60 = ptrtoint ptr %57 to i32
  %61 = call ptr @rpc_get_sb_net(ptr noundef %9) #20
  call void asm sideeffect "", "~{memory}"() #20, !srcloc !10
  %62 = load volatile ptr, ptr %6, align 4
  %63 = getelementptr inbounds %struct.rpc_xprt, ptr %62, i32 0, i32 49
  %64 = load ptr, ptr %63, align 8
  call void asm sideeffect "", "~{memory}"() #20, !srcloc !11
  %65 = load i32, ptr @sunrpc_net_id, align 4
  call void asm sideeffect "", "~{memory}"() #20, !srcloc !10
  %66 = getelementptr inbounds %struct.net, ptr %64, i32 0, i32 37
  %67 = load volatile ptr, ptr %66, align 64
  %68 = getelementptr [0 x ptr], ptr %67, i32 0, i32 %65
  %69 = load ptr, ptr %68, align 4
  call void asm sideeffect "", "~{memory}"() #20, !srcloc !11
  %70 = getelementptr inbounds %struct.sunrpc_net, ptr %69, i32 0, i32 9
  call void @_raw_spin_lock(ptr noundef %70) #20
  %71 = getelementptr inbounds %struct.rpc_clnt, ptr %0, i32 0, i32 2
  %72 = getelementptr inbounds %struct.rpc_clnt, ptr %0, i32 0, i32 2, i32 1
  %73 = load ptr, ptr %72, align 4
  %74 = load ptr, ptr %71, align 4
  %75 = getelementptr inbounds %struct.list_head, ptr %74, i32 0, i32 1
  store ptr %73, ptr %75, align 4
  store volatile ptr %74, ptr %73, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %71, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %72, align 4
  call void asm sideeffect "dmb ish", "~{memory}"() #20, !srcloc !15
  %76 = load i16, ptr %70, align 4
  %77 = add i16 %76, 1
  store i16 %77, ptr %70, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #20, !srcloc !16
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #20, !srcloc !17
  call void asm sideeffect "", "~{memory}"() #20, !srcloc !18
  %78 = call i32 @rpc_remove_client_dir(ptr noundef %0) #20
  %79 = icmp eq ptr %61, null
  br i1 %79, label %82, label %80

80:                                               ; preds = %59, %18
  %81 = phi i32 [ %60, %59 ], [ %21, %18 ]
  call void @rpc_put_sb_net(ptr noundef %9) #20
  br label %82

82:                                               ; preds = %80, %59
  %83 = phi i32 [ %81, %80 ], [ %60, %59 ]
  call void @rpc_sysfs_client_destroy(ptr noundef %0) #20
  br label %84

84:                                               ; preds = %82, %56
  %85 = phi i32 [ %83, %82 ], [ 0, %56 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #20
  ret i32 %85
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @synchronize_rcu() local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @rpc_release_client(ptr noundef %0) #0 {
  br label %2

2:                                                ; preds = %70, %1
  %3 = phi ptr [ %0, %1 ], [ %41, %70 ]
  %4 = getelementptr inbounds %struct.rpc_clnt, ptr %3, i32 0, i32 3
  %5 = load volatile ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, %4
  br i1 %6, label %7, label %8

7:                                                ; preds = %2
  tail call void @__wake_up(ptr noundef nonnull @destroy_wait, i32 noundef 3, i32 noundef 1, ptr noundef null) #20
  br label %8

8:                                                ; preds = %7, %2
  %9 = tail call zeroext i1 @refcount_dec_not_one(ptr noundef %3) #20
  br i1 %9, label %79, label %10

10:                                               ; preds = %8
  %11 = getelementptr inbounds %struct.rpc_clnt, ptr %3, i32 0, i32 11
  %12 = load ptr, ptr %11, align 4
  %13 = icmp eq ptr %12, null
  br i1 %13, label %15, label %14

14:                                               ; preds = %10
  tail call void @rpcauth_release(ptr noundef nonnull %12) #20
  store ptr null, ptr %11, align 4
  br label %15

15:                                               ; preds = %14, %10
  tail call void asm sideeffect "dmb ish", "~{memory}"() #20, !srcloc !23
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %3) #20, !srcloc !24
  %16 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %3, ptr %3, i32 1, ptr elementtype(i32) %3) #20, !srcloc !25
  %17 = extractvalue { i32, i32, i32 } %16, 0
  %18 = icmp eq i32 %17, 1
  br i1 %18, label %23, label %19

19:                                               ; preds = %15
  %20 = extractvalue { i32, i32, i32 } %16, 0
  %21 = icmp sgt i32 %20, 0
  br i1 %21, label %79, label %22, !prof !26

22:                                               ; preds = %19
  tail call void @refcount_warn_saturate(ptr noundef %3, i32 noundef 3) #20
  br label %79

23:                                               ; preds = %15
  tail call void asm sideeffect "dmb ish", "~{memory}"() #20, !srcloc !27
  %24 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_rpc_clnt_release, i32 0, i32 1), align 4
  %25 = icmp sgt i32 %24, 0
  br i1 %25, label %26, label %39

26:                                               ; preds = %23
  %27 = tail call ptr @llvm.thread.pointer() #20
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
  tail call void asm sideeffect "", "~{memory}"() #20, !srcloc !28
  %38 = tail call i32 @__traceiter_rpc_clnt_release(ptr noundef null, ptr noundef %3) #20
  tail call void asm sideeffect "", "~{memory}"() #20, !srcloc !29
  br label %39

39:                                               ; preds = %37, %26, %23
  %40 = getelementptr inbounds %struct.rpc_clnt, ptr %3, i32 0, i32 21
  %41 = load ptr, ptr %40, align 4
  tail call void asm sideeffect "", "~{memory}"() #20, !srcloc !10
  %42 = getelementptr inbounds %struct.rpc_clnt, ptr %3, i32 0, i32 6
  %43 = load volatile ptr, ptr %42, align 4
  %44 = getelementptr inbounds %struct.rpc_xprt, ptr %43, i32 0, i32 49
  %45 = load ptr, ptr %44, align 8
  tail call void asm sideeffect "", "~{memory}"() #20, !srcloc !11
  %46 = load i32, ptr @sunrpc_net_id, align 4
  tail call void asm sideeffect "", "~{memory}"() #20, !srcloc !10
  %47 = getelementptr inbounds %struct.net, ptr %45, i32 0, i32 37
  %48 = load volatile ptr, ptr %47, align 64
  %49 = getelementptr [0 x ptr], ptr %48, i32 0, i32 %46
  %50 = load ptr, ptr %49, align 4
  tail call void asm sideeffect "", "~{memory}"() #20, !srcloc !11
  %51 = getelementptr inbounds %struct.sunrpc_net, ptr %50, i32 0, i32 9
  tail call void @_raw_spin_lock(ptr noundef %51) #20
  %52 = getelementptr inbounds %struct.rpc_clnt, ptr %3, i32 0, i32 2
  %53 = getelementptr inbounds %struct.rpc_clnt, ptr %3, i32 0, i32 2, i32 1
  %54 = load ptr, ptr %53, align 4
  %55 = load ptr, ptr %52, align 4
  %56 = getelementptr inbounds %struct.list_head, ptr %55, i32 0, i32 1
  store ptr %54, ptr %56, align 4
  store volatile ptr %55, ptr %54, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %52, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %53, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #20, !srcloc !15
  %57 = load i16, ptr %51, align 4
  %58 = add i16 %57, 1
  store i16 %58, ptr %51, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #20, !srcloc !16
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #20, !srcloc !17
  tail call void asm sideeffect "", "~{memory}"() #20, !srcloc !18
  %59 = getelementptr inbounds %struct.rpc_clnt, ptr %3, i32 0, i32 13
  %60 = load ptr, ptr %59, align 4
  tail call void @rpc_free_iostats(ptr noundef %60) #20
  store ptr null, ptr %59, align 4
  %61 = getelementptr inbounds %struct.rpc_clnt, ptr %3, i32 0, i32 27
  tail call void @xprt_iter_destroy(ptr noundef %61) #20
  %62 = getelementptr inbounds %struct.rpc_clnt, ptr %3, i32 0, i32 28
  %63 = load ptr, ptr %62, align 4
  %64 = icmp eq ptr %63, null
  br i1 %64, label %70, label %65

65:                                               ; preds = %39
  tail call void asm sideeffect "dmb ish", "~{memory}"() #20, !srcloc !30
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr nonnull %63) #20, !srcloc !24
  %66 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %63, ptr nonnull %63, i32 1, ptr nonnull elementtype(i32) %63) #20, !srcloc !31
  %67 = extractvalue { i32, i32 } %66, 0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #20, !srcloc !32
  %68 = icmp eq i32 %67, 0
  br i1 %68, label %69, label %70

69:                                               ; preds = %65
  tail call void @__put_cred(ptr noundef nonnull %63) #20
  br label %70

70:                                               ; preds = %69, %65, %39
  %71 = icmp eq ptr %41, %3
  store i32 -32, ptr %61, align 4
  %72 = getelementptr inbounds %struct.rpc_clnt, ptr %3, i32 0, i32 27, i32 0, i32 1
  store volatile ptr %72, ptr %72, align 4
  %73 = getelementptr inbounds %struct.rpc_clnt, ptr %3, i32 0, i32 27, i32 0, i32 1, i32 1
  store ptr %72, ptr %73, align 4
  %74 = getelementptr inbounds %struct.rpc_clnt, ptr %3, i32 0, i32 27, i32 0, i32 2
  store ptr @rpc_free_client_work, ptr %74, align 4
  %75 = load ptr, ptr @system_wq, align 4
  %76 = tail call zeroext i1 @queue_work_on(i32 noundef 16, ptr noundef %75, ptr noundef %61) #20
  %77 = icmp eq ptr %41, null
  %78 = or i1 %71, %77
  br i1 %78, label %79, label %2

79:                                               ; preds = %70, %22, %19, %8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @xprt_switch_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @rpc_clnt_iterate_for_each_xprt(ptr noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2) #0 {
  %4 = alloca %struct.rpc_xprt_iter, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %4) #20
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(12) %4, i8 0, i32 12, i1 false), !annotation !8
  tail call void asm sideeffect "", "~{memory}"() #20, !srcloc !10
  %5 = getelementptr inbounds %struct.rpc_clnt, ptr %0, i32 0, i32 27
  %6 = load volatile ptr, ptr %5, align 4
  %7 = tail call ptr @xprt_switch_get(ptr noundef %6) #20
  tail call void asm sideeffect "", "~{memory}"() #20, !srcloc !11
  %8 = icmp eq ptr %7, null
  br i1 %8, label %21, label %9

9:                                                ; preds = %3
  call void @xprt_iter_init_listall(ptr noundef nonnull %4, ptr noundef nonnull %7) #20
  call void @xprt_switch_put(ptr noundef nonnull %7) #20
  %10 = call ptr @xprt_iter_get_next(ptr noundef nonnull %4) #20
  %11 = icmp eq ptr %10, null
  br i1 %11, label %19, label %15

12:                                               ; preds = %15
  %13 = call ptr @xprt_iter_get_next(ptr noundef nonnull %4) #20
  %14 = icmp eq ptr %13, null
  br i1 %14, label %19, label %15

15:                                               ; preds = %12, %9
  %16 = phi ptr [ %13, %12 ], [ %10, %9 ]
  %17 = call i32 %1(ptr noundef %0, ptr noundef nonnull %16, ptr noundef %2) #20
  call void @xprt_put(ptr noundef nonnull %16) #20
  %18 = icmp slt i32 %17, 0
  br i1 %18, label %19, label %12

19:                                               ; preds = %15, %12, %9
  %20 = phi i32 [ 0, %9 ], [ %17, %15 ], [ %17, %12 ]
  call void @xprt_iter_destroy(ptr noundef nonnull %4) #20
  br label %21

21:                                               ; preds = %19, %3
  %22 = phi i32 [ %20, %19 ], [ -11, %3 ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %4) #20
  ret i32 %22
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @xprt_iter_get_next(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @xprt_iter_destroy(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @rpc_killall_tasks(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.rpc_clnt, ptr %0, i32 0, i32 3
  %3 = load volatile ptr, ptr %2, align 4
  %4 = icmp eq ptr %3, %2
  br i1 %4, label %33, label %5

5:                                                ; preds = %1
  %6 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_rpc_clnt_killall, i32 0, i32 1), align 4
  %7 = icmp sgt i32 %6, 0
  br i1 %7, label %8, label %21

8:                                                ; preds = %5
  %9 = tail call ptr @llvm.thread.pointer() #20
  %10 = getelementptr inbounds %struct.thread_info, ptr %9, i32 0, i32 2
  %11 = load i32, ptr %10, align 8
  %12 = lshr i32 %11, 5
  %13 = getelementptr i32, ptr @__cpu_online_mask, i32 %12
  %14 = load volatile i32, ptr %13, align 4
  %15 = and i32 %11, 31
  %16 = shl nuw i32 1, %15
  %17 = and i32 %16, %14
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %21, label %19

19:                                               ; preds = %8
  tail call void asm sideeffect "", "~{memory}"() #20, !srcloc !33
  %20 = tail call i32 @__traceiter_rpc_clnt_killall(ptr noundef null, ptr noundef %0) #20
  tail call void asm sideeffect "", "~{memory}"() #20, !srcloc !34
  br label %21

21:                                               ; preds = %19, %8, %5
  %22 = getelementptr inbounds %struct.rpc_clnt, ptr %0, i32 0, i32 5
  tail call void @_raw_spin_lock(ptr noundef %22) #20
  %23 = load ptr, ptr %2, align 4
  %24 = icmp eq ptr %23, %2
  br i1 %24, label %30, label %25

25:                                               ; preds = %25, %21
  %26 = phi ptr [ %28, %25 ], [ %23, %21 ]
  %27 = getelementptr i8, ptr %26, i32 -8
  tail call void @rpc_signal_task(ptr noundef %27) #20
  %28 = load ptr, ptr %26, align 4
  %29 = icmp eq ptr %28, %2
  br i1 %29, label %30, label %25

30:                                               ; preds = %25, %21
  tail call void asm sideeffect "dmb ish", "~{memory}"() #20, !srcloc !15
  %31 = load i16, ptr %22, align 4
  %32 = add i16 %31, 1
  store i16 %32, ptr %22, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #20, !srcloc !16
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #20, !srcloc !17
  tail call void asm sideeffect "", "~{memory}"() #20, !srcloc !18
  br label %33

33:                                               ; preds = %30, %1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rpc_signal_task(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @rpc_shutdown_client(ptr noundef %0) #0 {
  %2 = alloca %struct.wait_queue_entry, align 4
  %3 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_rpc_clnt_shutdown, i32 0, i32 1), align 4
  %4 = icmp sgt i32 %3, 0
  br i1 %4, label %5, label %18

5:                                                ; preds = %1
  %6 = tail call ptr @llvm.thread.pointer() #20
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
  tail call void asm sideeffect "", "~{memory}"() #20, !srcloc !35
  %17 = tail call i32 @__traceiter_rpc_clnt_shutdown(ptr noundef null, ptr noundef %0) #20
  tail call void asm sideeffect "", "~{memory}"() #20, !srcloc !36
  br label %18

18:                                               ; preds = %16, %5, %1
  %19 = getelementptr inbounds %struct.rpc_clnt, ptr %0, i32 0, i32 3
  %20 = load volatile ptr, ptr %19, align 4
  %21 = icmp eq ptr %20, %19
  br i1 %21, label %45, label %22

22:                                               ; preds = %42, %18
  call void @rpc_killall_tasks(ptr noundef %0)
  %23 = load volatile ptr, ptr %19, align 4
  %24 = icmp eq ptr %23, %19
  br i1 %24, label %42, label %25

25:                                               ; preds = %22
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %2) #20
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(20) %2, i8 0, i32 20, i1 false), !annotation !8
  call void @init_wait_entry(ptr noundef nonnull %2, i32 noundef 0) #20
  %26 = call i32 @prepare_to_wait_event(ptr noundef nonnull @destroy_wait, ptr noundef nonnull %2, i32 noundef 2) #20
  %27 = load volatile ptr, ptr %19, align 4
  %28 = icmp eq ptr %27, %19
  br i1 %28, label %41, label %29

29:                                               ; preds = %29, %25
  %30 = phi i32 [ %38, %29 ], [ 100, %25 ]
  %31 = call i32 @schedule_timeout(i32 noundef %30) #20
  %32 = call i32 @prepare_to_wait_event(ptr noundef nonnull @destroy_wait, ptr noundef nonnull %2, i32 noundef 2) #20
  %33 = load volatile ptr, ptr %19, align 4
  %34 = icmp eq ptr %33, %19
  %35 = xor i1 %34, true
  %36 = icmp ne i32 %31, 0
  %37 = select i1 %35, i1 true, i1 %36
  %38 = select i1 %37, i32 %31, i32 1
  %39 = icmp eq i32 %38, 0
  %40 = select i1 %34, i1 true, i1 %39
  br i1 %40, label %41, label %29

41:                                               ; preds = %29, %25
  call void @finish_wait(ptr noundef nonnull @destroy_wait, ptr noundef nonnull %2) #20
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %2) #20
  br label %42

42:                                               ; preds = %41, %22
  %43 = load volatile ptr, ptr %19, align 4
  %44 = icmp eq ptr %43, %19
  br i1 %44, label %45, label %22

45:                                               ; preds = %42, %18
  call void @rpc_release_client(ptr noundef %0)
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_wait_entry(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @prepare_to_wait_event(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @schedule_timeout(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @finish_wait(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @refcount_dec_not_one(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @rpc_bind_new_program(ptr noundef %0, ptr noundef %1, i32 noundef %2) #0 {
  %4 = alloca %struct.rpc_message, align 4
  %5 = alloca %struct.rpc_task_setup, align 4
  %6 = alloca %struct.rpc_create_args, align 4
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %6) #20
  %7 = getelementptr inbounds %struct.rpc_create_args, ptr %6, i32 0, i32 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(72) %6, i8 0, i64 72, i1 false)
  store ptr %1, ptr %7, align 4
  %8 = getelementptr inbounds %struct.rpc_create_args, ptr %6, i32 0, i32 9
  %9 = getelementptr inbounds %struct.rpc_program, ptr %1, i32 0, i32 1
  %10 = load i32, ptr %9, align 4
  store i32 %10, ptr %8, align 4
  %11 = getelementptr inbounds %struct.rpc_create_args, ptr %6, i32 0, i32 10
  store i32 %2, ptr %11, align 4
  %12 = getelementptr inbounds %struct.rpc_create_args, ptr %6, i32 0, i32 11
  %13 = getelementptr inbounds %struct.rpc_clnt, ptr %0, i32 0, i32 11
  %14 = load ptr, ptr %13, align 4
  %15 = getelementptr inbounds %struct.rpc_auth, ptr %14, i32 0, i32 6
  %16 = load i32, ptr %15, align 4
  store i32 %16, ptr %12, align 4
  %17 = getelementptr inbounds %struct.rpc_create_args, ptr %6, i32 0, i32 12
  %18 = getelementptr inbounds %struct.rpc_create_args, ptr %6, i32 0, i32 16
  %19 = getelementptr inbounds %struct.rpc_clnt, ptr %0, i32 0, i32 28
  call void @llvm.memset.p0.i64(ptr noundef align 4 dereferenceable(16) %17, i8 0, i64 16, i1 false)
  %20 = load ptr, ptr %19, align 4
  store ptr %20, ptr %18, align 4
  %21 = getelementptr inbounds %struct.rpc_create_args, ptr %6, i32 0, i32 17
  store i32 0, ptr %21, align 4
  %22 = call fastcc ptr @__rpc_clone_client(ptr noundef nonnull %6, ptr noundef %0)
  %23 = icmp ugt ptr %22, inttoptr (i32 -4096 to ptr)
  br i1 %23, label %41, label %24

24:                                               ; preds = %3
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #20
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 4 dereferenceable(16) %4, ptr noundef nonnull align 4 dereferenceable(16) @__const.rpc_call_null_helper.msg, i32 16, i1 false) #20
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %5) #20
  %25 = getelementptr inbounds %struct.rpc_task_setup, ptr %5, i32 0, i32 1
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(36) %5, i8 0, i64 36, i1 false) #20
  store ptr %22, ptr %25, align 4
  %26 = getelementptr inbounds %struct.rpc_task_setup, ptr %5, i32 0, i32 4
  store ptr %4, ptr %26, align 4
  %27 = getelementptr inbounds %struct.rpc_task_setup, ptr %5, i32 0, i32 5
  store ptr @rpc_null_ops, ptr %27, align 4
  %28 = getelementptr inbounds %struct.rpc_task_setup, ptr %5, i32 0, i32 8
  store i16 1552, ptr %28, align 4
  %29 = call ptr @rpc_run_task(ptr noundef nonnull %5) #20
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %5) #20
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #20
  %30 = icmp ugt ptr %29, inttoptr (i32 -4096 to ptr)
  br i1 %30, label %31, label %33

31:                                               ; preds = %24
  %32 = ptrtoint ptr %29 to i32
  br label %36

33:                                               ; preds = %24
  %34 = getelementptr inbounds %struct.rpc_task, ptr %29, i32 0, i32 1
  %35 = load i32, ptr %34, align 4
  call void @rpc_put_task(ptr noundef %29) #20
  br label %36

36:                                               ; preds = %33, %31
  %37 = phi i32 [ %32, %31 ], [ %35, %33 ]
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %41, label %39

39:                                               ; preds = %36
  call void @rpc_shutdown_client(ptr noundef %22)
  %40 = inttoptr i32 %37 to ptr
  br label %41

41:                                               ; preds = %39, %36, %3
  %42 = phi ptr [ %22, %3 ], [ %40, %39 ], [ %22, %36 ]
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %6) #20
  ret ptr %42
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @rpc_task_get_xprt(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = icmp eq ptr %1, null
  br i1 %3, label %11, label %4

4:                                                ; preds = %2
  tail call void asm sideeffect "", "~{memory}"() #20, !srcloc !10
  %5 = getelementptr inbounds %struct.rpc_clnt, ptr %0, i32 0, i32 27
  %6 = load volatile ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.rpc_xprt_switch, ptr %6, i32 0, i32 6
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %7) #20, !srcloc !24
  %8 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %7, ptr %7, i32 1, ptr elementtype(i32) %7) #20, !srcloc !37
  tail call void asm sideeffect "", "~{memory}"() #20, !srcloc !11
  %9 = getelementptr inbounds %struct.rpc_xprt, ptr %1, i32 0, i32 32
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %9) #20, !srcloc !24
  %10 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %9, ptr %9, i32 1, ptr elementtype(i32) %9) #20, !srcloc !37
  br label %11

11:                                               ; preds = %4, %2
  ret ptr %1
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @rpc_task_release_transport(ptr nocapture noundef %0) #0 {
  %2 = getelementptr inbounds %struct.rpc_task, ptr %0, i32 0, i32 14
  %3 = load ptr, ptr %2, align 4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %17, label %5

5:                                                ; preds = %1
  store ptr null, ptr %2, align 4
  %6 = getelementptr inbounds %struct.rpc_task, ptr %0, i32 0, i32 13
  %7 = load ptr, ptr %6, align 8
  %8 = icmp eq ptr %7, null
  br i1 %8, label %16, label %9

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.rpc_xprt, ptr %3, i32 0, i32 32
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %10) #20, !srcloc !24
  %11 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %10, ptr %10, i32 1, ptr elementtype(i32) %10) #20, !srcloc !38
  tail call void asm sideeffect "", "~{memory}"() #20, !srcloc !10
  %12 = getelementptr inbounds %struct.rpc_clnt, ptr %7, i32 0, i32 27
  %13 = load volatile ptr, ptr %12, align 4
  %14 = getelementptr inbounds %struct.rpc_xprt_switch, ptr %13, i32 0, i32 6
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %14) #20, !srcloc !24
  %15 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %14, ptr %14, i32 1, ptr elementtype(i32) %14) #20, !srcloc !38
  tail call void asm sideeffect "", "~{memory}"() #20, !srcloc !11
  br label %16

16:                                               ; preds = %9, %5
  tail call void @xprt_put(ptr noundef nonnull %3) #20
  br label %17

17:                                               ; preds = %16, %1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @rpc_task_release_client(ptr nocapture noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.rpc_task, ptr %0, i32 0, i32 13
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.rpc_task, ptr %0, i32 0, i32 14
  %5 = load ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %17, label %7

7:                                                ; preds = %1
  store ptr null, ptr %4, align 4
  %8 = icmp eq ptr %3, null
  br i1 %8, label %16, label %9

9:                                                ; preds = %7
  %10 = getelementptr inbounds %struct.rpc_xprt, ptr %5, i32 0, i32 32
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %10) #20, !srcloc !24
  %11 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %10, ptr %10, i32 1, ptr elementtype(i32) %10) #20, !srcloc !38
  tail call void asm sideeffect "", "~{memory}"() #20, !srcloc !10
  %12 = getelementptr inbounds %struct.rpc_clnt, ptr %3, i32 0, i32 27
  %13 = load volatile ptr, ptr %12, align 4
  %14 = getelementptr inbounds %struct.rpc_xprt_switch, ptr %13, i32 0, i32 6
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %14) #20, !srcloc !24
  %15 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %14, ptr %14, i32 1, ptr elementtype(i32) %14) #20, !srcloc !38
  tail call void asm sideeffect "", "~{memory}"() #20, !srcloc !11
  br label %16

16:                                               ; preds = %9, %7
  tail call void @xprt_put(ptr noundef nonnull %5) #20
  br label %17

17:                                               ; preds = %16, %1
  %18 = icmp eq ptr %3, null
  br i1 %18, label %28, label %19

19:                                               ; preds = %17
  %20 = getelementptr inbounds %struct.rpc_clnt, ptr %3, i32 0, i32 5
  tail call void @_raw_spin_lock(ptr noundef %20) #20
  %21 = getelementptr inbounds %struct.rpc_task, ptr %0, i32 0, i32 2
  %22 = getelementptr inbounds %struct.rpc_task, ptr %0, i32 0, i32 2, i32 1
  %23 = load ptr, ptr %22, align 4
  %24 = load ptr, ptr %21, align 4
  %25 = getelementptr inbounds %struct.list_head, ptr %24, i32 0, i32 1
  store ptr %23, ptr %25, align 4
  store volatile ptr %24, ptr %23, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %21, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %22, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #20, !srcloc !15
  %26 = load i16, ptr %20, align 4
  %27 = add i16 %26, 1
  store i16 %27, ptr %20, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #20, !srcloc !16
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #20, !srcloc !17
  tail call void asm sideeffect "", "~{memory}"() #20, !srcloc !18
  store ptr null, ptr %2, align 8
  tail call void @rpc_release_client(ptr noundef nonnull %3)
  br label %28

28:                                               ; preds = %19, %17
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @rpc_run_task(ptr noundef %0) #0 {
  %2 = tail call ptr @rpc_new_task(ptr noundef %0) #20
  %3 = getelementptr inbounds %struct.rpc_task, ptr %2, i32 0, i32 20
  %4 = load i16, ptr %3, align 4
  %5 = and i16 %4, 1
  %6 = icmp eq i16 %5, 0
  br i1 %6, label %7, label %9

7:                                                ; preds = %1
  %8 = or i16 %4, -32768
  store i16 %8, ptr %3, align 4
  br label %9

9:                                                ; preds = %7, %1
  %10 = getelementptr inbounds %struct.rpc_task_setup, ptr %0, i32 0, i32 1
  %11 = load ptr, ptr %10, align 4
  tail call fastcc void @rpc_task_set_transport(ptr noundef %2, ptr noundef %11) #20
  %12 = getelementptr inbounds %struct.rpc_task, ptr %2, i32 0, i32 13
  store ptr %11, ptr %12, align 8
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %11) #20, !srcloc !24
  %13 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %11, ptr %11, i32 1, ptr elementtype(i32) %11) #20, !srcloc !39
  %14 = extractvalue { i32, i32, i32 } %13, 0
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %20, label %16, !prof !9

16:                                               ; preds = %9
  %17 = add i32 %14, 1
  %18 = or i32 %17, %14
  %19 = icmp sgt i32 %18, -1
  br i1 %19, label %22, label %20, !prof !26

20:                                               ; preds = %16, %9
  %21 = phi i32 [ 2, %9 ], [ 1, %16 ]
  tail call void @refcount_warn_saturate(ptr noundef %11, i32 noundef %21) #20
  br label %22

22:                                               ; preds = %20, %16
  %23 = getelementptr inbounds %struct.rpc_clnt, ptr %11, i32 0, i32 14
  %24 = load i8, ptr %23, align 4
  %25 = and i8 %24, 1
  %26 = icmp eq i8 %25, 0
  br i1 %26, label %31, label %27

27:                                               ; preds = %22
  %28 = load i16, ptr %3, align 4
  %29 = or i16 %28, 512
  store i16 %29, ptr %3, align 4
  %30 = load i8, ptr %23, align 4
  br label %31

31:                                               ; preds = %27, %22
  %32 = phi i8 [ %30, %27 ], [ %24, %22 ]
  %33 = and i8 %32, 2
  %34 = icmp eq i8 %33, 0
  br i1 %34, label %39, label %35

35:                                               ; preds = %31
  %36 = load i16, ptr %3, align 4
  %37 = or i16 %36, 4096
  store i16 %37, ptr %3, align 4
  %38 = load i8, ptr %23, align 4
  br label %39

39:                                               ; preds = %35, %31
  %40 = phi i8 [ %38, %35 ], [ %32, %31 ]
  %41 = and i8 %40, 8
  %42 = icmp eq i8 %41, 0
  br i1 %42, label %46, label %43

43:                                               ; preds = %39
  %44 = load i16, ptr %3, align 4
  %45 = or i16 %44, 16384
  store i16 %45, ptr %3, align 4
  br label %46

46:                                               ; preds = %43, %39
  %47 = getelementptr inbounds %struct.rpc_clnt, ptr %11, i32 0, i32 17
  %48 = load volatile i32, ptr %47, align 4
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %53, label %50

50:                                               ; preds = %46
  %51 = load i16, ptr %3, align 4
  %52 = or i16 %51, 2
  store i16 %52, ptr %3, align 4
  br label %53

53:                                               ; preds = %50, %46
  %54 = getelementptr inbounds %struct.rpc_clnt, ptr %11, i32 0, i32 5
  tail call void @_raw_spin_lock(ptr noundef %54) #20
  %55 = getelementptr inbounds %struct.rpc_task, ptr %2, i32 0, i32 2
  %56 = getelementptr inbounds %struct.rpc_clnt, ptr %11, i32 0, i32 3
  %57 = getelementptr inbounds %struct.rpc_clnt, ptr %11, i32 0, i32 3, i32 1
  %58 = load ptr, ptr %57, align 4
  store ptr %55, ptr %57, align 4
  store ptr %56, ptr %55, align 4
  %59 = getelementptr inbounds %struct.rpc_task, ptr %2, i32 0, i32 2, i32 1
  store ptr %58, ptr %59, align 4
  store volatile ptr %55, ptr %58, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #20, !srcloc !15
  %60 = load i16, ptr %54, align 4
  %61 = add i16 %60, 1
  store i16 %61, ptr %54, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #20, !srcloc !16
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #20, !srcloc !17
  tail call void asm sideeffect "", "~{memory}"() #20, !srcloc !18
  %62 = getelementptr inbounds %struct.rpc_task_setup, ptr %0, i32 0, i32 4
  %63 = load ptr, ptr %62, align 4
  %64 = icmp eq ptr %63, null
  br i1 %64, label %84, label %65

65:                                               ; preds = %53
  %66 = load ptr, ptr %63, align 4
  %67 = getelementptr inbounds %struct.rpc_task, ptr %2, i32 0, i32 10
  store ptr %66, ptr %67, align 8
  %68 = getelementptr inbounds %struct.rpc_message, ptr %63, i32 0, i32 1
  %69 = load ptr, ptr %68, align 4
  %70 = getelementptr inbounds %struct.rpc_task, ptr %2, i32 0, i32 10, i32 1
  store ptr %69, ptr %70, align 4
  %71 = getelementptr inbounds %struct.rpc_message, ptr %63, i32 0, i32 2
  %72 = load ptr, ptr %71, align 4
  %73 = getelementptr inbounds %struct.rpc_task, ptr %2, i32 0, i32 10, i32 2
  store ptr %72, ptr %73, align 8
  %74 = getelementptr inbounds %struct.rpc_message, ptr %63, i32 0, i32 3
  %75 = load ptr, ptr %74, align 4
  %76 = getelementptr inbounds %struct.rpc_task, ptr %2, i32 0, i32 10, i32 3
  store ptr %75, ptr %76, align 4
  %77 = load i16, ptr %3, align 4
  %78 = icmp slt i16 %77, 0
  %79 = icmp eq ptr %75, null
  %80 = select i1 %78, i1 true, i1 %79
  br i1 %80, label %84, label %81

81:                                               ; preds = %65
  %82 = getelementptr inbounds %struct.cred, ptr %75, i32 0, i32 24
  store i32 0, ptr %82, align 4
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr nonnull %75) #20, !srcloc !24
  %83 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %75, ptr nonnull %75, i32 1, ptr nonnull elementtype(i32) %75) #20, !srcloc !37
  br label %84

84:                                               ; preds = %81, %65, %53
  %85 = getelementptr inbounds %struct.rpc_task, ptr %2, i32 0, i32 4
  %86 = load ptr, ptr %85, align 4
  %87 = icmp eq ptr %86, null
  br i1 %87, label %88, label %89

88:                                               ; preds = %84
  store ptr @call_start, ptr %85, align 4
  br label %89

89:                                               ; preds = %88, %84
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %2) #20, !srcloc !24
  %90 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %2, ptr %2, i32 1, ptr elementtype(i32) %2) #20, !srcloc !37
  tail call void @rpc_execute(ptr noundef %2) #20
  ret ptr %2
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rpc_new_task(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn writeonly uwtable(sync)
define dso_local void @rpc_call_start(ptr nocapture noundef writeonly %0) #5 {
  %2 = getelementptr inbounds %struct.rpc_task, ptr %0, i32 0, i32 4
  store ptr @call_start, ptr %2, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rpc_execute(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @rpc_call_sync(ptr noundef %0, ptr noundef %1, i32 noundef %2) #0 {
  %4 = alloca %struct.rpc_task_setup, align 4
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %4) #20
  %5 = getelementptr inbounds %struct.rpc_task_setup, ptr %4, i32 0, i32 1
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(36) %4, i8 0, i64 36, i1 false)
  store ptr %0, ptr %5, align 4
  %6 = getelementptr inbounds %struct.rpc_task_setup, ptr %4, i32 0, i32 3
  store ptr null, ptr %6, align 4
  %7 = getelementptr inbounds %struct.rpc_task_setup, ptr %4, i32 0, i32 4
  store ptr %1, ptr %7, align 4
  %8 = getelementptr inbounds %struct.rpc_task_setup, ptr %4, i32 0, i32 5
  store ptr @rpc_default_ops, ptr %8, align 4
  %9 = getelementptr inbounds %struct.rpc_task_setup, ptr %4, i32 0, i32 7
  store ptr null, ptr %9, align 4
  %10 = getelementptr inbounds %struct.rpc_task_setup, ptr %4, i32 0, i32 8
  %11 = trunc i32 %2 to i16
  store i16 %11, ptr %10, align 4
  %12 = and i32 %2, 1
  %13 = icmp ne i32 %12, 0
  %14 = load i1, ptr @rpc_call_sync.__already_done, align 1
  %15 = xor i1 %14, true
  %16 = select i1 %13, i1 %15, i1 false
  br i1 %16, label %17, label %18, !prof !9

17:                                               ; preds = %3
  store i1 true, ptr @rpc_call_sync.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1163, i32 noundef 9, ptr noundef null) #20
  br label %18

18:                                               ; preds = %17, %3
  br i1 %13, label %19, label %20

19:                                               ; preds = %18
  tail call void @rpc_release_calldata(ptr noundef nonnull @rpc_default_ops, ptr noundef null) #20
  br label %28

20:                                               ; preds = %18
  %21 = call ptr @rpc_run_task(ptr noundef nonnull %4)
  %22 = icmp ugt ptr %21, inttoptr (i32 -4096 to ptr)
  br i1 %22, label %23, label %25

23:                                               ; preds = %20
  %24 = ptrtoint ptr %21 to i32
  br label %28

25:                                               ; preds = %20
  %26 = getelementptr inbounds %struct.rpc_task, ptr %21, i32 0, i32 1
  %27 = load i32, ptr %26, align 4
  call void @rpc_put_task(ptr noundef %21) #20
  br label %28

28:                                               ; preds = %25, %23, %19
  %29 = phi i32 [ -22, %19 ], [ %24, %23 ], [ %27, %25 ]
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %4) #20
  ret i32 %29
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rpc_release_calldata(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @rpc_put_task(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @rpc_call_async(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3, ptr noundef %4) #0 {
  %6 = alloca %struct.rpc_task_setup, align 4
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %6) #20
  %7 = getelementptr inbounds %struct.rpc_task_setup, ptr %6, i32 0, i32 1
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(36) %6, i8 0, i64 36, i1 false)
  store ptr %0, ptr %7, align 4
  %8 = getelementptr inbounds %struct.rpc_task_setup, ptr %6, i32 0, i32 3
  store ptr null, ptr %8, align 4
  %9 = getelementptr inbounds %struct.rpc_task_setup, ptr %6, i32 0, i32 4
  store ptr %1, ptr %9, align 4
  %10 = getelementptr inbounds %struct.rpc_task_setup, ptr %6, i32 0, i32 5
  store ptr %3, ptr %10, align 4
  %11 = getelementptr inbounds %struct.rpc_task_setup, ptr %6, i32 0, i32 6
  store ptr %4, ptr %11, align 4
  %12 = getelementptr inbounds %struct.rpc_task_setup, ptr %6, i32 0, i32 8
  %13 = trunc i32 %2 to i16
  %14 = or i16 %13, 1
  store i16 %14, ptr %12, align 4
  %15 = call ptr @rpc_run_task(ptr noundef nonnull %6)
  %16 = icmp ugt ptr %15, inttoptr (i32 -4096 to ptr)
  br i1 %16, label %17, label %19

17:                                               ; preds = %5
  %18 = ptrtoint ptr %15 to i32
  br label %20

19:                                               ; preds = %5
  call void @rpc_put_task(ptr noundef %15) #20
  br label %20

20:                                               ; preds = %19, %17
  %21 = phi i32 [ %18, %17 ], [ 0, %19 ]
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %6) #20
  ret i32 %21
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @rpc_run_bc_task(ptr noundef %0) local_unnamed_addr #0 {
  %2 = alloca %struct.rpc_task_setup, align 4
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %2) #20
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 4 dereferenceable(36) %2, ptr noundef nonnull align 4 dereferenceable(36) @__const.rpc_run_bc_task.task_setup_data, i32 36, i1 false)
  %3 = call ptr @rpc_new_task(ptr noundef nonnull %2) #20
  call void @xprt_init_bc_request(ptr noundef %0, ptr noundef %3) #20
  %4 = getelementptr inbounds %struct.rpc_task, ptr %3, i32 0, i32 4
  store ptr @call_bc_encode, ptr %4, align 4
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %3) #20, !srcloc !24
  %5 = call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %3, ptr %3, i32 1, ptr elementtype(i32) %3) #20, !srcloc !37
  %6 = load volatile i32, ptr %3, align 4
  %7 = icmp ne i32 %6, 2
  %8 = load i1, ptr @rpc_run_bc_task.__already_done, align 1
  %9 = xor i1 %8, true
  %10 = select i1 %7, i1 %9, i1 false
  br i1 %10, label %11, label %12, !prof !9

11:                                               ; preds = %1
  store i1 true, ptr @rpc_run_bc_task.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1234, i32 noundef 9, ptr noundef null) #20
  br label %12

12:                                               ; preds = %11, %1
  call void @rpc_execute(ptr noundef %3) #20
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %2) #20
  ret ptr %3
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @xprt_init_bc_request(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @call_bc_encode(ptr noundef %0) #0 {
  tail call void @xprt_request_enqueue_transmit(ptr noundef %0) #20
  %2 = getelementptr inbounds %struct.rpc_task, ptr %0, i32 0, i32 4
  store ptr @call_bc_transmit, ptr %2, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @rpc_prepare_reply_pages(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) #0 {
  %6 = getelementptr inbounds %struct.rpc_rqst, ptr %0, i32 0, i32 4
  %7 = load ptr, ptr %6, align 8
  %8 = getelementptr inbounds %struct.rpc_cred, ptr %7, i32 0, i32 3
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.rpc_auth, ptr %9, i32 0, i32 3
  %11 = load i32, ptr %10, align 4
  %12 = add i32 %4, 4
  %13 = add i32 %12, %11
  %14 = getelementptr inbounds %struct.rpc_rqst, ptr %0, i32 0, i32 2
  %15 = shl i32 %13, 2
  tail call void @xdr_inline_pages(ptr noundef %14, i32 noundef %15, ptr noundef %1, i32 noundef %2, i32 noundef %3) #20
  %16 = getelementptr inbounds %struct.rpc_rqst, ptr %0, i32 0, i32 3
  %17 = load ptr, ptr %16, align 4
  %18 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_rpc_xdr_reply_pages, i32 0, i32 1), align 4
  %19 = icmp sgt i32 %18, 0
  br i1 %19, label %20, label %33

20:                                               ; preds = %5
  %21 = tail call ptr @llvm.thread.pointer() #20
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
  tail call void asm sideeffect "", "~{memory}"() #20, !srcloc !40
  %32 = tail call i32 @__traceiter_rpc_xdr_reply_pages(ptr noundef null, ptr noundef %17, ptr noundef %14) #20
  tail call void asm sideeffect "", "~{memory}"() #20, !srcloc !41
  br label %33

33:                                               ; preds = %31, %20, %5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @xdr_inline_pages(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @call_start(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.rpc_task, ptr %0, i32 0, i32 13
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.rpc_task, ptr %0, i32 0, i32 10
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.rpc_procinfo, ptr %5, i32 0, i32 6
  %7 = load i32, ptr %6, align 4
  %8 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_rpc_request, i32 0, i32 1), align 4
  %9 = icmp sgt i32 %8, 0
  br i1 %9, label %10, label %23

10:                                               ; preds = %1
  %11 = tail call ptr @llvm.thread.pointer() #20
  %12 = getelementptr inbounds %struct.thread_info, ptr %11, i32 0, i32 2
  %13 = load i32, ptr %12, align 8
  %14 = lshr i32 %13, 5
  %15 = getelementptr i32, ptr @__cpu_online_mask, i32 %14
  %16 = load volatile i32, ptr %15, align 4
  %17 = and i32 %13, 31
  %18 = shl nuw i32 1, %17
  %19 = and i32 %18, %16
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %23, label %21

21:                                               ; preds = %10
  tail call void asm sideeffect "", "~{memory}"() #20, !srcloc !42
  %22 = tail call i32 @__traceiter_rpc_request(ptr noundef null, ptr noundef %0) #20
  tail call void asm sideeffect "", "~{memory}"() #20, !srcloc !43
  br label %23

23:                                               ; preds = %21, %10, %1
  %24 = getelementptr inbounds %struct.rpc_clnt, ptr %3, i32 0, i32 24
  %25 = load ptr, ptr %24, align 4
  %26 = getelementptr inbounds %struct.rpc_program, ptr %25, i32 0, i32 3
  %27 = load ptr, ptr %26, align 4
  %28 = getelementptr inbounds %struct.rpc_clnt, ptr %3, i32 0, i32 9
  %29 = load i32, ptr %28, align 4
  %30 = getelementptr ptr, ptr %27, i32 %29
  %31 = load ptr, ptr %30, align 4
  %32 = icmp eq ptr %31, null
  br i1 %32, label %39, label %33

33:                                               ; preds = %23
  %34 = getelementptr inbounds %struct.rpc_version, ptr %31, i32 0, i32 3
  %35 = load ptr, ptr %34, align 4
  %36 = getelementptr i32, ptr %35, i32 %7
  %37 = load i32, ptr %36, align 4
  %38 = add i32 %37, 1
  store i32 %38, ptr %36, align 4
  br label %39

39:                                               ; preds = %33, %23
  %40 = getelementptr inbounds %struct.rpc_clnt, ptr %3, i32 0, i32 12
  %41 = load ptr, ptr %40, align 4
  %42 = getelementptr inbounds %struct.rpc_stat, ptr %41, i32 0, i32 6
  %43 = load i32, ptr %42, align 4
  %44 = add i32 %43, 1
  store i32 %44, ptr %42, align 4
  %45 = getelementptr inbounds %struct.rpc_task, ptr %0, i32 0, i32 4
  store ptr @call_reserve, ptr %45, align 4
  tail call fastcc void @rpc_task_set_transport(ptr noundef %0, ptr noundef %3)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @rpc_peeraddr(ptr noundef %0, ptr nocapture noundef writeonly %1, i32 noundef %2) #0 {
  tail call void asm sideeffect "", "~{memory}"() #20, !srcloc !10
  %4 = getelementptr inbounds %struct.rpc_clnt, ptr %0, i32 0, i32 6
  %5 = load volatile ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.rpc_xprt, ptr %5, i32 0, i32 5
  %7 = load i32, ptr %6, align 8
  %8 = tail call i32 @llvm.umin.i32(i32 %7, i32 %2)
  %9 = getelementptr inbounds %struct.rpc_xprt, ptr %5, i32 0, i32 4
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 2 %1, ptr align 8 %9, i32 %8, i1 false)
  tail call void asm sideeffect "", "~{memory}"() #20, !srcloc !11
  ret i32 %8
}

; Function Attrs: mustprogress nofree norecurse nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define dso_local ptr @rpc_peeraddr2str(ptr noundef %0, i32 noundef %1) #7 {
  %3 = getelementptr inbounds %struct.rpc_clnt, ptr %0, i32 0, i32 6
  %4 = load volatile ptr, ptr %3, align 4
  %5 = getelementptr %struct.rpc_xprt, ptr %4, i32 0, i32 51, i32 %1
  %6 = load ptr, ptr %5, align 4
  %7 = icmp eq ptr %6, null
  %8 = select i1 %7, ptr @.str.4, ptr %6
  ret ptr %8
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @rpc_localaddr(ptr noundef %0, ptr noundef %1, i32 noundef %2) #0 {
  %4 = alloca ptr, align 4
  %5 = alloca %struct.__kernel_sockaddr_storage, align 4
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %5) #20
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(128) %5, i8 0, i32 128, i1 false), !annotation !8
  tail call void asm sideeffect "", "~{memory}"() #20, !srcloc !10
  %6 = getelementptr inbounds %struct.rpc_clnt, ptr %0, i32 0, i32 6
  %7 = load volatile ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.rpc_xprt, ptr %7, i32 0, i32 5
  %9 = load i32, ptr %8, align 8
  %10 = getelementptr inbounds %struct.rpc_xprt, ptr %7, i32 0, i32 4
  call void @llvm.memcpy.p0.p0.i32(ptr nonnull align 4 %5, ptr align 8 %10, i32 %9, i1 false)
  %11 = getelementptr inbounds %struct.rpc_xprt, ptr %7, i32 0, i32 49
  %12 = load ptr, ptr %11, align 8
  tail call void asm sideeffect "", "~{memory}"() #20, !srcloc !11
  %13 = load i16, ptr %5, align 4
  switch i16 %13, label %20 [
    i16 2, label %14
    i16 10, label %16
  ]

14:                                               ; preds = %3
  %15 = getelementptr inbounds %struct.sockaddr_in, ptr %5, i32 0, i32 1
  br label %18

16:                                               ; preds = %3
  %17 = getelementptr inbounds %struct.sockaddr_in6, ptr %5, i32 0, i32 1
  br label %18

18:                                               ; preds = %16, %14
  %19 = phi ptr [ %17, %16 ], [ %15, %14 ]
  store i16 0, ptr %19, align 2
  br label %20

20:                                               ; preds = %18, %3
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #20
  store ptr null, ptr %4, align 4, !annotation !8
  %21 = zext i16 %13 to i32
  %22 = call i32 @__sock_create(ptr noundef %12, i32 noundef %21, i32 noundef 2, i32 noundef 17, ptr noundef nonnull %4, i32 noundef 1) #20
  %23 = icmp slt i32 %22, 0
  br i1 %23, label %47, label %24

24:                                               ; preds = %20
  switch i16 %13, label %47 [
    i16 2, label %25
    i16 10, label %28
  ]

25:                                               ; preds = %24
  %26 = load ptr, ptr %4, align 4
  %27 = call i32 @kernel_bind(ptr noundef %26, ptr noundef nonnull @rpc_inaddr_loopback, i32 noundef 16) #20
  br label %31

28:                                               ; preds = %24
  %29 = load ptr, ptr %4, align 4
  %30 = call i32 @kernel_bind(ptr noundef %29, ptr noundef nonnull @rpc_in6addr_loopback, i32 noundef 28) #20
  br label %31

31:                                               ; preds = %28, %25
  %32 = phi i32 [ %30, %28 ], [ %27, %25 ]
  %33 = icmp slt i32 %32, 0
  br i1 %33, label %48, label %34

34:                                               ; preds = %31
  %35 = load ptr, ptr %4, align 4
  %36 = call i32 @kernel_connect(ptr noundef %35, ptr noundef nonnull %5, i32 noundef %9, i32 noundef 0) #20
  %37 = icmp slt i32 %36, 0
  br i1 %37, label %48, label %38

38:                                               ; preds = %34
  %39 = load ptr, ptr %4, align 4
  %40 = call i32 @kernel_getsockname(ptr noundef %39, ptr noundef %1) #20
  %41 = icmp slt i32 %40, 0
  br i1 %41, label %48, label %42

42:                                               ; preds = %38
  %43 = load i16, ptr %1, align 2
  %44 = icmp eq i16 %43, 10
  br i1 %44, label %45, label %51

45:                                               ; preds = %42
  %46 = getelementptr inbounds %struct.sockaddr_in6, ptr %1, i32 0, i32 4
  store i32 0, ptr %46, align 4
  br label %51

47:                                               ; preds = %24, %20
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #20
  br label %53

48:                                               ; preds = %38, %34, %31
  %49 = load ptr, ptr %4, align 4
  call void @sock_release(ptr noundef %49) #20
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #20
  %50 = load i16, ptr %5, align 4
  br label %53

51:                                               ; preds = %45, %42
  %52 = load ptr, ptr %4, align 4
  call void @sock_release(ptr noundef %52) #20
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #20
  br label %61

53:                                               ; preds = %48, %47
  %54 = phi i16 [ %50, %48 ], [ %13, %47 ]
  switch i16 %54, label %61 [
    i16 2, label %55
    i16 10, label %58
  ]

55:                                               ; preds = %53
  %56 = icmp ult i32 %2, 16
  br i1 %56, label %61, label %57

57:                                               ; preds = %55
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 2 dereferenceable(16) %1, ptr noundef nonnull align 4 dereferenceable(16) @rpc_inaddr_loopback, i32 16, i1 false) #20
  br label %61

58:                                               ; preds = %53
  %59 = icmp ult i32 %2, 28
  br i1 %59, label %61, label %60

60:                                               ; preds = %58
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 2 dereferenceable(28) %1, ptr noundef nonnull align 4 dereferenceable(28) @rpc_in6addr_loopback, i32 28, i1 false) #20
  br label %61

61:                                               ; preds = %60, %58, %57, %55, %53, %51
  %62 = phi i32 [ 0, %51 ], [ -22, %55 ], [ -22, %58 ], [ -97, %53 ], [ 0, %60 ], [ 0, %57 ]
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %5) #20
  ret i32 %62
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @rpc_setbufsize(ptr noundef %0, i32 noundef %1, i32 noundef %2) #0 {
  tail call void asm sideeffect "", "~{memory}"() #20, !srcloc !10
  %4 = getelementptr inbounds %struct.rpc_clnt, ptr %0, i32 0, i32 6
  %5 = load volatile ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.rpc_xprt, ptr %5, i32 0, i32 1
  %7 = load ptr, ptr %6, align 4
  %8 = load ptr, ptr %7, align 4
  %9 = icmp eq ptr %8, null
  br i1 %9, label %11, label %10

10:                                               ; preds = %3
  tail call void %8(ptr noundef %5, i32 noundef %1, i32 noundef %2) #20
  br label %11

11:                                               ; preds = %10, %3
  tail call void asm sideeffect "", "~{memory}"() #20, !srcloc !11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @rpc_net_ns(ptr noundef %0) #0 {
  tail call void asm sideeffect "", "~{memory}"() #20, !srcloc !10
  %2 = getelementptr inbounds %struct.rpc_clnt, ptr %0, i32 0, i32 6
  %3 = load volatile ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.rpc_xprt, ptr %3, i32 0, i32 49
  %5 = load ptr, ptr %4, align 8
  tail call void asm sideeffect "", "~{memory}"() #20, !srcloc !11
  ret ptr %5
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @rpc_max_payload(ptr noundef %0) #0 {
  tail call void asm sideeffect "", "~{memory}"() #20, !srcloc !10
  %2 = getelementptr inbounds %struct.rpc_clnt, ptr %0, i32 0, i32 6
  %3 = load volatile ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.rpc_xprt, ptr %3, i32 0, i32 9
  %5 = load i32, ptr %4, align 8
  tail call void asm sideeffect "", "~{memory}"() #20, !srcloc !11
  ret i32 %5
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @rpc_max_bc_payload(ptr noundef %0) #0 {
  tail call void asm sideeffect "", "~{memory}"() #20, !srcloc !10
  %2 = getelementptr inbounds %struct.rpc_clnt, ptr %0, i32 0, i32 6
  %3 = load volatile ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.rpc_xprt, ptr %3, i32 0, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.rpc_xprt_ops, ptr %5, i32 0, i32 23
  %7 = load ptr, ptr %6, align 4
  %8 = tail call i32 %7(ptr noundef %3) #20
  tail call void asm sideeffect "", "~{memory}"() #20, !srcloc !11
  ret i32 %8
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @rpc_num_bc_slots(ptr noundef %0) #0 {
  tail call void asm sideeffect "", "~{memory}"() #20, !srcloc !10
  %2 = getelementptr inbounds %struct.rpc_clnt, ptr %0, i32 0, i32 6
  %3 = load volatile ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.rpc_xprt, ptr %3, i32 0, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.rpc_xprt_ops, ptr %5, i32 0, i32 24
  %7 = load ptr, ptr %6, align 4
  %8 = tail call i32 %7(ptr noundef %3) #20
  tail call void asm sideeffect "", "~{memory}"() #20, !srcloc !11
  ret i32 %8
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @rpc_force_rebind(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.rpc_clnt, ptr %0, i32 0, i32 14
  %3 = load i8, ptr %2, align 4
  %4 = and i8 %3, 16
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %10, label %6

6:                                                ; preds = %1
  tail call void asm sideeffect "", "~{memory}"() #20, !srcloc !10
  %7 = getelementptr inbounds %struct.rpc_clnt, ptr %0, i32 0, i32 6
  %8 = load volatile ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.rpc_xprt, ptr %8, i32 0, i32 18
  tail call void @_clear_bit(i32 noundef 4, ptr noundef %9) #20
  tail call void asm sideeffect "", "~{memory}"() #20, !srcloc !11
  br label %10

10:                                               ; preds = %6, %1
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn writeonly uwtable(sync)
define dso_local i32 @rpc_restart_call(ptr nocapture noundef writeonly %0) #5 {
  %2 = getelementptr inbounds %struct.rpc_task, ptr %0, i32 0, i32 1
  store i32 0, ptr %2, align 4
  %3 = getelementptr inbounds %struct.rpc_task, ptr %0, i32 0, i32 9
  store i32 0, ptr %3, align 4
  %4 = getelementptr inbounds %struct.rpc_task, ptr %0, i32 0, i32 4
  store ptr @call_start, ptr %4, align 4
  ret i32 1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define dso_local i32 @rpc_restart_call_prepare(ptr nocapture noundef %0) #8 {
  %2 = getelementptr inbounds %struct.rpc_task, ptr %0, i32 0, i32 12
  %3 = load ptr, ptr %2, align 4
  %4 = load ptr, ptr %3, align 4
  %5 = icmp eq ptr %4, null
  %6 = select i1 %5, ptr @call_start, ptr @rpc_prepare_task
  %7 = getelementptr inbounds %struct.rpc_task, ptr %0, i32 0, i32 1
  store i32 0, ptr %7, align 4
  %8 = getelementptr inbounds %struct.rpc_task, ptr %0, i32 0, i32 9
  store i32 0, ptr %8, align 4
  %9 = getelementptr inbounds %struct.rpc_task, ptr %0, i32 0, i32 4
  store ptr %6, ptr %9, align 4
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rpc_prepare_task(ptr noundef) #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define dso_local ptr @rpc_proc_name(ptr nocapture noundef readonly %0) local_unnamed_addr #9 {
  %2 = getelementptr inbounds %struct.rpc_task, ptr %0, i32 0, i32 10
  %3 = load ptr, ptr %2, align 8
  %4 = icmp eq ptr %3, null
  br i1 %4, label %10, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.rpc_procinfo, ptr %3, i32 0, i32 7
  %7 = load ptr, ptr %6, align 4
  %8 = icmp eq ptr %7, null
  %9 = select i1 %8, ptr @.str.5, ptr %7
  br label %10

10:                                               ; preds = %5, %1
  %11 = phi ptr [ %9, %5 ], [ @.str.6, %1 ]
  ret ptr %11
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @rpc_call_null(ptr noundef %0, ptr noundef %1, i32 noundef %2) #0 {
  %4 = alloca %struct.rpc_message, align 4
  %5 = alloca %struct.rpc_task_setup, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #20
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 4 dereferenceable(16) %4, ptr noundef nonnull align 4 dereferenceable(16) @__const.rpc_call_null_helper.msg, i32 16, i1 false) #20
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %5) #20
  %6 = getelementptr inbounds %struct.rpc_task_setup, ptr %5, i32 0, i32 1
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(36) %5, i8 0, i64 36, i1 false) #20
  store ptr %0, ptr %6, align 4
  %7 = getelementptr inbounds %struct.rpc_task_setup, ptr %5, i32 0, i32 3
  store ptr %1, ptr %7, align 4
  %8 = getelementptr inbounds %struct.rpc_task_setup, ptr %5, i32 0, i32 4
  store ptr %4, ptr %8, align 4
  %9 = getelementptr inbounds %struct.rpc_task_setup, ptr %5, i32 0, i32 5
  store ptr @rpc_null_ops, ptr %9, align 4
  %10 = getelementptr inbounds %struct.rpc_task_setup, ptr %5, i32 0, i32 8
  %11 = trunc i32 %2 to i16
  %12 = or i16 %11, 1552
  store i16 %12, ptr %10, align 4
  %13 = call ptr @rpc_run_task(ptr noundef nonnull %5) #20
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %5) #20
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #20
  ret ptr %13
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @rpc_clnt_test_and_add_xprt(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr nocapture readnone %3) #0 {
  %5 = alloca %struct.rpc_message, align 4
  %6 = alloca %struct.rpc_task_setup, align 4
  %7 = getelementptr inbounds %struct.rpc_xprt_switch, ptr %1, i32 0, i32 5
  %8 = load i32, ptr %7, align 4
  %9 = add i32 %8, 1
  %10 = getelementptr inbounds %struct.rpc_clnt, ptr %0, i32 0, i32 29
  %11 = load i32, ptr %10, align 4
  %12 = icmp ugt i32 %9, %11
  br i1 %12, label %13, label %22

13:                                               ; preds = %4
  tail call void asm sideeffect "", "~{memory}"() #20, !srcloc !10
  %14 = load i32, ptr %10, align 4
  %15 = getelementptr inbounds %struct.rpc_clnt, ptr %0, i32 0, i32 6
  %16 = load volatile ptr, ptr %15, align 4
  %17 = getelementptr %struct.rpc_xprt, ptr %16, i32 0, i32 51, i32 0
  %18 = load ptr, ptr %17, align 4
  %19 = icmp eq ptr %18, null
  %20 = select i1 %19, ptr @.str.4, ptr %18
  %21 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, i32 noundef %14, ptr noundef %20) #21
  tail call void asm sideeffect "", "~{memory}"() #20, !srcloc !11
  br label %45

22:                                               ; preds = %4
  %23 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %24 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %23, i32 noundef 3136, i32 noundef 8) #22
  %25 = icmp eq ptr %24, null
  br i1 %25, label %45, label %26

26:                                               ; preds = %22
  %27 = tail call ptr @xprt_switch_get(ptr noundef %1) #20
  store ptr %27, ptr %24, align 8
  %28 = tail call ptr @xprt_get(ptr noundef %2) #20
  %29 = getelementptr inbounds %struct.rpc_cb_add_xprt_calldata, ptr %24, i32 0, i32 1
  store ptr %28, ptr %29, align 4
  %30 = getelementptr inbounds %struct.rpc_xprt, ptr %2, i32 0, i32 4
  %31 = tail call zeroext i1 @rpc_xprt_switch_has_addr(ptr noundef %27, ptr noundef %30) #20
  br i1 %31, label %32, label %33

32:                                               ; preds = %26
  tail call void @xprt_put(ptr noundef %28) #20
  tail call void @xprt_switch_put(ptr noundef %27) #20
  tail call void @kfree(ptr noundef nonnull %24) #20
  br label %45

33:                                               ; preds = %26
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #20
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 4 dereferenceable(16) %5, ptr noundef nonnull align 4 dereferenceable(16) @__const.rpc_call_null_helper.msg, i32 16, i1 false) #20
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %6) #20
  %34 = getelementptr inbounds %struct.rpc_task_setup, ptr %6, i32 0, i32 1
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(36) %6, i8 0, i64 36, i1 false) #20
  store ptr %0, ptr %34, align 4
  %35 = getelementptr inbounds %struct.rpc_task_setup, ptr %6, i32 0, i32 2
  store ptr %2, ptr %35, align 4
  %36 = getelementptr inbounds %struct.rpc_task_setup, ptr %6, i32 0, i32 4
  store ptr %5, ptr %36, align 4
  %37 = getelementptr inbounds %struct.rpc_task_setup, ptr %6, i32 0, i32 5
  store ptr @rpc_cb_add_xprt_call_ops, ptr %37, align 4
  %38 = getelementptr inbounds %struct.rpc_task_setup, ptr %6, i32 0, i32 6
  store ptr %24, ptr %38, align 4
  %39 = getelementptr inbounds %struct.rpc_task_setup, ptr %6, i32 0, i32 8
  store i16 1553, ptr %39, align 4
  %40 = call ptr @rpc_run_task(ptr noundef nonnull %6) #20
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %6) #20
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #20
  %41 = load ptr, ptr %24, align 8
  %42 = getelementptr inbounds %struct.rpc_xprt_switch, ptr %41, i32 0, i32 5
  %43 = load i32, ptr %42, align 4
  %44 = add i32 %43, 1
  store i32 %44, ptr %42, align 4
  call void @rpc_put_task(ptr noundef %40) #20
  br label %45

45:                                               ; preds = %33, %32, %22, %13
  %46 = phi i32 [ -22, %13 ], [ -12, %22 ], [ 1, %33 ], [ 1, %32 ]
  ret i32 %46
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #10

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @xprt_switch_get(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @rpc_xprt_switch_has_addr(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @rpc_cb_add_xprt_release(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.rpc_cb_add_xprt_calldata, ptr %0, i32 0, i32 1
  %3 = load ptr, ptr %2, align 4
  tail call void @xprt_put(ptr noundef %3) #20
  %4 = load ptr, ptr %0, align 4
  tail call void @xprt_switch_put(ptr noundef %4) #20
  tail call void @kfree(ptr noundef %0) #20
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @rpc_clnt_setup_test_and_add_xprt(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr nocapture noundef readonly %3) #0 {
  %5 = alloca %struct.rpc_message, align 4
  %6 = alloca %struct.rpc_task_setup, align 4
  %7 = tail call ptr @xprt_get(ptr noundef %2) #20
  %8 = tail call ptr @xprt_switch_get(ptr noundef %1) #20
  %9 = getelementptr inbounds %struct.rpc_xprt, ptr %7, i32 0, i32 4
  %10 = tail call zeroext i1 @rpc_xprt_switch_has_addr(ptr noundef %1, ptr noundef %9) #20
  br i1 %10, label %29, label %11

11:                                               ; preds = %4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #20
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 4 dereferenceable(16) %5, ptr noundef nonnull align 4 dereferenceable(16) @__const.rpc_call_null_helper.msg, i32 16, i1 false) #20
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %6) #20
  %12 = getelementptr inbounds %struct.rpc_task_setup, ptr %6, i32 0, i32 1
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(36) %6, i8 0, i64 36, i1 false) #20
  store ptr %0, ptr %12, align 4
  %13 = getelementptr inbounds %struct.rpc_task_setup, ptr %6, i32 0, i32 2
  store ptr %7, ptr %13, align 4
  %14 = getelementptr inbounds %struct.rpc_task_setup, ptr %6, i32 0, i32 4
  store ptr %5, ptr %14, align 4
  %15 = getelementptr inbounds %struct.rpc_task_setup, ptr %6, i32 0, i32 5
  store ptr @rpc_null_ops, ptr %15, align 4
  %16 = getelementptr inbounds %struct.rpc_task_setup, ptr %6, i32 0, i32 8
  store i16 1552, ptr %16, align 4
  %17 = call ptr @rpc_run_task(ptr noundef nonnull %6) #20
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %6) #20
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #20
  %18 = icmp ugt ptr %17, inttoptr (i32 -4096 to ptr)
  br i1 %18, label %19, label %21

19:                                               ; preds = %11
  %20 = ptrtoint ptr %17 to i32
  br label %29

21:                                               ; preds = %11
  %22 = getelementptr inbounds %struct.rpc_task, ptr %17, i32 0, i32 1
  %23 = load i32, ptr %22, align 4
  call void @rpc_put_task(ptr noundef %17) #20
  %24 = icmp slt i32 %23, 0
  br i1 %24, label %29, label %25

25:                                               ; preds = %21
  %26 = load ptr, ptr %3, align 4
  %27 = getelementptr inbounds %struct.rpc_add_xprt_test, ptr %3, i32 0, i32 1
  %28 = load ptr, ptr %27, align 4
  call void %26(ptr noundef %0, ptr noundef %7, ptr noundef %28) #20
  call void @xprt_put(ptr noundef %7) #20
  call void @xprt_switch_put(ptr noundef %1) #20
  br label %34

29:                                               ; preds = %21, %19, %4
  %30 = phi i32 [ -98, %4 ], [ %20, %19 ], [ %23, %21 ]
  call void @xprt_put(ptr noundef %7) #20
  call void @xprt_switch_put(ptr noundef %1) #20
  %31 = getelementptr inbounds %struct.rpc_xprt, ptr %7, i32 0, i32 51
  %32 = load ptr, ptr %31, align 8
  %33 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, i32 noundef %30, ptr noundef %32) #21
  br label %34

34:                                               ; preds = %29, %25
  %35 = phi i32 [ %30, %29 ], [ 1, %25 ]
  ret i32 %35
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @xprt_iter_xprt(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @rpc_xprt_switch_set_roundrobin(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @rpc_xprt_switch_add_xprt(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @rpc_set_connect_timeout(ptr noundef %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = alloca %struct.rpc_xprt_iter, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %4) #20
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(12) %4, i8 0, i32 12, i1 false) #20, !annotation !8
  tail call void asm sideeffect "", "~{memory}"() #20, !srcloc !10
  %5 = getelementptr inbounds %struct.rpc_clnt, ptr %0, i32 0, i32 27
  %6 = load volatile ptr, ptr %5, align 4
  %7 = tail call ptr @xprt_switch_get(ptr noundef %6) #20
  tail call void asm sideeffect "", "~{memory}"() #20, !srcloc !11
  %8 = icmp eq ptr %7, null
  br i1 %8, label %24, label %9

9:                                                ; preds = %3
  call void @xprt_iter_init_listall(ptr noundef nonnull %4, ptr noundef nonnull %7) #20
  call void @xprt_switch_put(ptr noundef nonnull %7) #20
  %10 = call ptr @xprt_iter_get_next(ptr noundef nonnull %4) #20
  %11 = icmp eq ptr %10, null
  br i1 %11, label %23, label %15

12:                                               ; preds = %22, %15
  call void @xprt_put(ptr noundef nonnull %16) #20
  %13 = call ptr @xprt_iter_get_next(ptr noundef nonnull %4) #20
  %14 = icmp eq ptr %13, null
  br i1 %14, label %23, label %15

15:                                               ; preds = %12, %9
  %16 = phi ptr [ %13, %12 ], [ %10, %9 ]
  %17 = getelementptr inbounds %struct.rpc_xprt, ptr %16, i32 0, i32 1
  %18 = load ptr, ptr %17, align 4
  %19 = getelementptr inbounds %struct.rpc_xprt_ops, ptr %18, i32 0, i32 17
  %20 = load ptr, ptr %19, align 4
  %21 = icmp eq ptr %20, null
  br i1 %21, label %12, label %22

22:                                               ; preds = %15
  call void %20(ptr noundef nonnull %16, i32 noundef %1, i32 noundef %2) #20
  br label %12

23:                                               ; preds = %12, %9
  call void @xprt_iter_destroy(ptr noundef nonnull %4) #20
  br label %24

24:                                               ; preds = %23, %3
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %4) #20
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @rpc_clnt_xprt_switch_put(ptr noundef %0) #0 {
  tail call void asm sideeffect "", "~{memory}"() #20, !srcloc !10
  %2 = getelementptr inbounds %struct.rpc_clnt, ptr %0, i32 0, i32 27
  %3 = load volatile ptr, ptr %2, align 4
  tail call void @xprt_switch_put(ptr noundef %3) #20
  tail call void asm sideeffect "", "~{memory}"() #20, !srcloc !11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @rpc_clnt_xprt_switch_add_xprt(ptr noundef %0, ptr noundef %1) #0 {
  tail call void asm sideeffect "", "~{memory}"() #20, !srcloc !10
  %3 = getelementptr inbounds %struct.rpc_clnt, ptr %0, i32 0, i32 27
  %4 = load volatile ptr, ptr %3, align 4
  tail call void @rpc_xprt_switch_add_xprt(ptr noundef %4, ptr noundef %1) #20
  tail call void asm sideeffect "", "~{memory}"() #20, !srcloc !11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local zeroext i1 @rpc_clnt_xprt_switch_has_addr(ptr noundef %0, ptr noundef %1) #0 {
  tail call void asm sideeffect "", "~{memory}"() #20, !srcloc !10
  %3 = getelementptr inbounds %struct.rpc_clnt, ptr %0, i32 0, i32 27
  %4 = load volatile ptr, ptr %3, align 4
  %5 = tail call zeroext i1 @rpc_xprt_switch_has_addr(ptr noundef %4, ptr noundef %1) #20
  tail call void asm sideeffect "", "~{memory}"() #20, !srcloc !11
  ret i1 %5
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @rpc_pipefs_event(ptr nocapture noundef readnone %0, i32 noundef %1, ptr noundef %2) #0 {
  %4 = getelementptr inbounds %struct.super_block, ptr %2, i32 0, i32 27
  br label %5

5:                                                ; preds = %80, %3
  %6 = load ptr, ptr %4, align 4
  %7 = load i32, ptr @sunrpc_net_id, align 4
  tail call void asm sideeffect "", "~{memory}"() #20, !srcloc !10
  %8 = getelementptr inbounds %struct.net, ptr %6, i32 0, i32 37
  %9 = load volatile ptr, ptr %8, align 64
  %10 = getelementptr [0 x ptr], ptr %9, i32 0, i32 %7
  %11 = load ptr, ptr %10, align 4
  tail call void asm sideeffect "", "~{memory}"() #20, !srcloc !11
  %12 = getelementptr inbounds %struct.sunrpc_net, ptr %11, i32 0, i32 9
  tail call void @_raw_spin_lock(ptr noundef %12) #20
  %13 = getelementptr inbounds %struct.sunrpc_net, ptr %11, i32 0, i32 8
  %14 = load ptr, ptr %13, align 4
  %15 = icmp eq ptr %14, %13
  br i1 %15, label %39, label %16

16:                                               ; preds = %36, %5
  %17 = phi ptr [ %37, %36 ], [ %14, %5 ]
  %18 = getelementptr i8, ptr %17, i32 -8
  %19 = getelementptr i8, ptr %17, i32 244
  %20 = load ptr, ptr %19, align 4
  %21 = getelementptr inbounds %struct.rpc_program, ptr %20, i32 0, i32 5
  %22 = load ptr, ptr %21, align 4
  %23 = icmp eq ptr %22, null
  br i1 %23, label %36, label %24

24:                                               ; preds = %16
  switch i32 %1, label %42 [
    i32 0, label %25
    i32 1, label %32
  ]

25:                                               ; preds = %24
  %26 = getelementptr i8, ptr %17, i32 152
  %27 = load ptr, ptr %26, align 4
  %28 = icmp eq ptr %27, null
  br i1 %28, label %29, label %36

29:                                               ; preds = %25
  %30 = load volatile i32, ptr %18, align 4
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %36, label %42

32:                                               ; preds = %24
  %33 = getelementptr i8, ptr %17, i32 152
  %34 = load ptr, ptr %33, align 4
  %35 = icmp eq ptr %34, null
  br i1 %35, label %36, label %42

36:                                               ; preds = %32, %29, %25, %16
  %37 = load ptr, ptr %17, align 4
  %38 = icmp eq ptr %37, %13
  br i1 %38, label %39, label %16

39:                                               ; preds = %36, %5
  tail call void asm sideeffect "dmb ish", "~{memory}"() #20, !srcloc !15
  %40 = load i16, ptr %12, align 4
  %41 = add i16 %40, 1
  store i16 %41, ptr %12, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #20, !srcloc !16
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #20, !srcloc !17
  tail call void asm sideeffect "", "~{memory}"() #20, !srcloc !18
  br label %83

42:                                               ; preds = %32, %29, %24
  tail call void asm sideeffect "dmb ish", "~{memory}"() #20, !srcloc !15
  %43 = load i16, ptr %12, align 4
  %44 = add i16 %43, 1
  store i16 %44, ptr %12, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #20, !srcloc !16
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #20, !srcloc !17
  tail call void asm sideeffect "", "~{memory}"() #20, !srcloc !18
  %45 = icmp eq ptr %18, null
  br i1 %45, label %83, label %46

46:                                               ; preds = %74, %42
  %47 = phi ptr [ %76, %74 ], [ %18, %42 ]
  %48 = getelementptr inbounds %struct.rpc_clnt, ptr %47, i32 0, i32 24
  %49 = load ptr, ptr %48, align 4
  %50 = getelementptr inbounds %struct.rpc_program, ptr %49, i32 0, i32 5
  %51 = load ptr, ptr %50, align 4
  %52 = icmp eq ptr %51, null
  br i1 %52, label %74, label %53

53:                                               ; preds = %46
  switch i32 %1, label %72 [
    i32 0, label %54
    i32 1, label %61
  ]

54:                                               ; preds = %53
  %55 = getelementptr inbounds %struct.rpc_clnt, ptr %47, i32 0, i32 20, i32 1
  %56 = load ptr, ptr %55, align 4
  %57 = icmp eq ptr %56, null
  br i1 %57, label %58, label %74

58:                                               ; preds = %54
  %59 = load volatile i32, ptr %47, align 4
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %74, label %65

61:                                               ; preds = %53
  %62 = getelementptr inbounds %struct.rpc_clnt, ptr %47, i32 0, i32 20, i32 1
  %63 = load ptr, ptr %62, align 4
  %64 = icmp eq ptr %63, null
  br i1 %64, label %74, label %70

65:                                               ; preds = %58
  %66 = tail call fastcc ptr @rpc_setup_pipedir_sb(ptr noundef %2, ptr noundef %47) #20
  %67 = icmp eq ptr %66, null
  br i1 %67, label %83, label %68

68:                                               ; preds = %65
  %69 = icmp ugt ptr %66, inttoptr (i32 -4096 to ptr)
  br i1 %69, label %78, label %74

70:                                               ; preds = %61
  %71 = tail call i32 @rpc_remove_client_dir(ptr noundef %47) #20
  br label %74

72:                                               ; preds = %53
  %73 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, ptr noundef nonnull @__func__.__rpc_clnt_handle_event, i32 noundef %1) #21
  br label %83

74:                                               ; preds = %70, %68, %61, %58, %54, %46
  %75 = getelementptr inbounds %struct.rpc_clnt, ptr %47, i32 0, i32 21
  %76 = load ptr, ptr %75, align 4
  %77 = icmp eq ptr %47, %76
  br i1 %77, label %80, label %46

78:                                               ; preds = %68
  %79 = ptrtoint ptr %66 to i32
  br label %80

80:                                               ; preds = %78, %74
  %81 = phi i32 [ %79, %78 ], [ 0, %74 ]
  %82 = icmp eq i32 %81, 0
  br i1 %82, label %5, label %83

83:                                               ; preds = %80, %72, %65, %42, %39
  %84 = phi i32 [ 0, %39 ], [ -524, %72 ], [ -2, %65 ], [ 0, %42 ], [ %81, %80 ]
  ret i32 %84
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc ptr @rpc_setup_pipedir_sb(ptr noundef %0, ptr noundef %1) unnamed_addr #0 {
  %3 = alloca [15 x i8], align 1
  %4 = getelementptr inbounds %struct.rpc_clnt, ptr %1, i32 0, i32 24
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.rpc_program, ptr %5, i32 0, i32 5
  %7 = load ptr, ptr %6, align 4
  call void @llvm.lifetime.start.p0(i64 15, ptr nonnull %3) #20
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(15) %3, i8 0, i32 15, i1 false), !annotation !8
  %8 = tail call ptr @rpc_d_lookup_sb(ptr noundef %0, ptr noundef %7) #20
  %9 = icmp eq ptr %8, null
  br i1 %9, label %12, label %10

10:                                               ; preds = %2
  %11 = getelementptr inbounds [15 x i8], ptr %3, i32 0, i32 14
  br label %14

12:                                               ; preds = %2
  %13 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, ptr noundef %7) #21
  br label %26

14:                                               ; preds = %20, %10
  %15 = load i32, ptr @rpc_setup_pipedir_sb.clntid, align 4
  %16 = add i32 %15, 1
  store i32 %16, ptr @rpc_setup_pipedir_sb.clntid, align 4
  %17 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %3, i32 noundef 15, ptr noundef nonnull @.str.11, i32 noundef %15)
  store i8 0, ptr %11, align 1
  %18 = call ptr @rpc_create_client_dir(ptr noundef nonnull %8, ptr noundef nonnull %3, ptr noundef %1) #20
  %19 = icmp ugt ptr %18, inttoptr (i32 -4096 to ptr)
  br i1 %19, label %20, label %25

20:                                               ; preds = %14
  %21 = icmp eq ptr %18, inttoptr (i32 -17 to ptr)
  br i1 %21, label %14, label %22

22:                                               ; preds = %20
  %23 = ptrtoint ptr %18 to i32
  %24 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, ptr noundef %7, ptr noundef nonnull %3, i32 noundef %23) #21
  br label %25

25:                                               ; preds = %22, %14
  call void @dput(ptr noundef nonnull %8) #20
  br label %26

26:                                               ; preds = %25, %12
  %27 = phi ptr [ null, %12 ], [ %18, %25 ]
  call void @llvm.lifetime.end.p0(i64 15, ptr nonnull %3) #20
  ret ptr %27
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rpc_d_lookup_sb(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rpc_create_client_dir(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dput(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc ptr @rpc_new_client(ptr nocapture noundef readonly %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) unnamed_addr #0 {
  %5 = getelementptr inbounds %struct.rpc_create_args, ptr %0, i32 0, i32 8
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.rpc_create_args, ptr %0, i32 0, i32 7
  %8 = load ptr, ptr %7, align 4
  %9 = tail call i32 @rpciod_up() #20
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %136

11:                                               ; preds = %4
  %12 = getelementptr inbounds %struct.rpc_create_args, ptr %0, i32 0, i32 10
  %13 = load i32, ptr %12, align 4
  %14 = getelementptr inbounds %struct.rpc_program, ptr %6, i32 0, i32 2
  %15 = load i32, ptr %14, align 4
  %16 = icmp ult i32 %13, %15
  br i1 %16, label %17, label %134

17:                                               ; preds = %11
  %18 = getelementptr inbounds %struct.rpc_program, ptr %6, i32 0, i32 3
  %19 = load ptr, ptr %18, align 4
  %20 = getelementptr ptr, ptr %19, i32 %13
  %21 = load ptr, ptr %20, align 4
  %22 = icmp eq ptr %21, null
  br i1 %22, label %134, label %23

23:                                               ; preds = %17
  %24 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %25 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %24, i32 noundef 3520, i32 noundef 288) #22
  %26 = icmp eq ptr %25, null
  br i1 %26, label %134, label %27

27:                                               ; preds = %23
  %28 = icmp eq ptr %3, null
  %29 = select i1 %28, ptr %25, ptr %3
  %30 = getelementptr inbounds %struct.rpc_clnt, ptr %25, i32 0, i32 21
  store ptr %29, ptr %30, align 4
  %31 = tail call i32 @ida_alloc_range(ptr noundef nonnull @rpc_clids, i32 noundef 0, i32 noundef -1, i32 noundef 3264) #20
  %32 = icmp slt i32 %31, 0
  br i1 %32, label %132, label %33

33:                                               ; preds = %27
  %34 = getelementptr inbounds %struct.rpc_clnt, ptr %25, i32 0, i32 1
  store i32 %31, ptr %34, align 4
  %35 = getelementptr inbounds %struct.rpc_create_args, ptr %0, i32 0, i32 16
  %36 = load ptr, ptr %35, align 4
  %37 = icmp eq ptr %36, null
  br i1 %37, label %41, label %38

38:                                               ; preds = %33
  %39 = getelementptr inbounds %struct.cred, ptr %36, i32 0, i32 24
  store i32 0, ptr %39, align 4
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr nonnull %36) #20, !srcloc !24
  %40 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %36, ptr nonnull %36, i32 1, ptr nonnull elementtype(i32) %36) #20, !srcloc !37
  br label %41

41:                                               ; preds = %38, %33
  %42 = getelementptr inbounds %struct.rpc_clnt, ptr %25, i32 0, i32 28
  store ptr %36, ptr %42, align 8
  %43 = getelementptr inbounds %struct.rpc_version, ptr %21, i32 0, i32 2
  %44 = load ptr, ptr %43, align 4
  %45 = getelementptr inbounds %struct.rpc_clnt, ptr %25, i32 0, i32 7
  store ptr %44, ptr %45, align 4
  %46 = getelementptr inbounds %struct.rpc_version, ptr %21, i32 0, i32 1
  %47 = load i32, ptr %46, align 4
  %48 = getelementptr inbounds %struct.rpc_clnt, ptr %25, i32 0, i32 10
  store i32 %47, ptr %48, align 8
  %49 = getelementptr inbounds %struct.rpc_create_args, ptr %0, i32 0, i32 9
  %50 = load i32, ptr %49, align 4
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %52, label %55

52:                                               ; preds = %41
  %53 = getelementptr inbounds %struct.rpc_program, ptr %6, i32 0, i32 1
  %54 = load i32, ptr %53, align 4
  br label %55

55:                                               ; preds = %52, %41
  %56 = phi i32 [ %54, %52 ], [ %50, %41 ]
  %57 = getelementptr inbounds %struct.rpc_clnt, ptr %25, i32 0, i32 8
  store i32 %56, ptr %57, align 8
  %58 = load i32, ptr %21, align 4
  %59 = getelementptr inbounds %struct.rpc_clnt, ptr %25, i32 0, i32 9
  store i32 %58, ptr %59, align 4
  %60 = getelementptr inbounds %struct.rpc_program, ptr %6, i32 0, i32 4
  %61 = load ptr, ptr %60, align 4
  %62 = getelementptr inbounds %struct.rpc_clnt, ptr %25, i32 0, i32 12
  store ptr %61, ptr %62, align 8
  %63 = tail call ptr @rpc_alloc_iostats(ptr noundef nonnull %25) #20
  %64 = getelementptr inbounds %struct.rpc_clnt, ptr %25, i32 0, i32 13
  store ptr %63, ptr %64, align 4
  %65 = getelementptr inbounds %struct.rpc_clnt, ptr %25, i32 0, i32 20
  tail call void @rpc_init_pipe_dir_head(ptr noundef %65) #20
  %66 = load ptr, ptr %64, align 4
  %67 = icmp eq ptr %66, null
  br i1 %67, label %121, label %68

68:                                               ; preds = %55
  %69 = getelementptr inbounds %struct.rpc_clnt, ptr %25, i32 0, i32 24
  store ptr %6, ptr %69, align 4
  %70 = getelementptr inbounds %struct.rpc_clnt, ptr %25, i32 0, i32 3
  store volatile ptr %70, ptr %70, align 8
  %71 = getelementptr inbounds %struct.rpc_clnt, ptr %25, i32 0, i32 3, i32 1
  store ptr %70, ptr %71, align 4
  %72 = getelementptr inbounds %struct.rpc_clnt, ptr %25, i32 0, i32 5
  store i32 0, ptr %72, align 4
  %73 = getelementptr inbounds %struct.rpc_xprt, ptr %2, i32 0, i32 3
  %74 = load ptr, ptr %73, align 4
  %75 = getelementptr inbounds %struct.rpc_create_args, ptr %0, i32 0, i32 5
  %76 = load ptr, ptr %75, align 4
  %77 = icmp eq ptr %76, null
  br i1 %77, label %80, label %78

78:                                               ; preds = %68
  %79 = getelementptr inbounds %struct.rpc_clnt, ptr %25, i32 0, i32 23
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 8 dereferenceable(20) %79, ptr noundef nonnull align 4 dereferenceable(20) %76, i32 20, i1 false)
  br label %80

80:                                               ; preds = %78, %68
  %81 = phi ptr [ %79, %78 ], [ %74, %68 ]
  %82 = tail call fastcc ptr @rpc_clnt_set_transport(ptr noundef nonnull %25, ptr noundef %2, ptr noundef %81)
  %83 = getelementptr inbounds %struct.rpc_xprt, ptr %2, i32 0, i32 55
  store i8 1, ptr %83, align 8
  %84 = getelementptr inbounds %struct.rpc_clnt, ptr %25, i32 0, i32 27
  tail call void @xprt_iter_init(ptr noundef %84, ptr noundef %1) #20
  tail call void @xprt_switch_put(ptr noundef %1) #20
  %85 = getelementptr inbounds %struct.rpc_clnt, ptr %25, i32 0, i32 22
  %86 = getelementptr inbounds %struct.rpc_clnt, ptr %25, i32 0, i32 15
  store ptr %85, ptr %86, align 4
  %87 = getelementptr inbounds %struct.rpc_clnt, ptr %25, i32 0, i32 16
  %88 = load ptr, ptr %87, align 8
  %89 = load i32, ptr %88, align 4
  tail call void @rpc_init_rtt(ptr noundef %85, i32 noundef %89) #20
  store volatile i32 1, ptr %25, align 8
  %90 = icmp eq ptr %8, null
  br i1 %90, label %91, label %98

91:                                               ; preds = %80
  %92 = tail call ptr @llvm.thread.pointer() #20
  %93 = getelementptr inbounds %struct.task_struct, ptr %92, i32 0, i32 92
  %94 = load ptr, ptr %93, align 4
  %95 = getelementptr inbounds %struct.nsproxy, ptr %94, i32 0, i32 1
  %96 = load ptr, ptr %95, align 4
  %97 = getelementptr inbounds %struct.new_utsname, ptr %96, i32 0, i32 1
  br label %98

98:                                               ; preds = %91, %80
  %99 = phi ptr [ %97, %91 ], [ %8, %80 ]
  %100 = getelementptr inbounds %struct.rpc_clnt, ptr %25, i32 0, i32 19
  %101 = tail call i32 @strlcpy(ptr noundef %100, ptr noundef %99, i32 noundef 65) #20
  %102 = getelementptr inbounds %struct.rpc_clnt, ptr %25, i32 0, i32 18
  store i32 %101, ptr %102, align 8
  tail call void asm sideeffect "", "~{memory}"() #20, !srcloc !10
  %103 = getelementptr inbounds %struct.rpc_clnt, ptr %25, i32 0, i32 6
  %104 = load volatile ptr, ptr %103, align 8
  %105 = getelementptr inbounds %struct.rpc_xprt, ptr %104, i32 0, i32 49
  %106 = load ptr, ptr %105, align 8
  tail call void asm sideeffect "", "~{memory}"() #20, !srcloc !11
  tail call void @rpc_sysfs_client_setup(ptr noundef nonnull %25, ptr noundef %1, ptr noundef %106) #20
  %107 = getelementptr inbounds %struct.rpc_create_args, ptr %0, i32 0, i32 11
  %108 = load i32, ptr %107, align 4
  %109 = getelementptr inbounds %struct.rpc_create_args, ptr %0, i32 0, i32 14
  %110 = load ptr, ptr %109, align 4
  %111 = tail call fastcc i32 @rpc_client_register(ptr noundef nonnull %25, i32 noundef %108, ptr noundef %110)
  %112 = icmp eq i32 %111, 0
  br i1 %112, label %113, label %119

113:                                              ; preds = %98
  br i1 %28, label %115, label %114

114:                                              ; preds = %113
  tail call fastcc void @refcount_inc(ptr noundef nonnull %3)
  br label %115

115:                                              ; preds = %114, %113
  %116 = load ptr, ptr %6, align 4
  %117 = getelementptr inbounds %struct.rpc_create_args, ptr %0, i32 0, i32 6
  %118 = load ptr, ptr %117, align 4
  tail call fastcc void @trace_rpc_clnt_new(ptr noundef nonnull %25, ptr noundef %2, ptr noundef %116, ptr noundef %118)
  br label %158

119:                                              ; preds = %98
  %120 = load ptr, ptr %64, align 4
  tail call void @rpc_free_iostats(ptr noundef %120) #20
  br label %121

121:                                              ; preds = %119, %55
  %122 = phi i32 [ -12, %55 ], [ %111, %119 ]
  %123 = load ptr, ptr %42, align 8
  %124 = icmp eq ptr %123, null
  br i1 %124, label %130, label %125

125:                                              ; preds = %121
  tail call void asm sideeffect "dmb ish", "~{memory}"() #20, !srcloc !30
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr nonnull %123) #20, !srcloc !24
  %126 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %123, ptr nonnull %123, i32 1, ptr nonnull elementtype(i32) %123) #20, !srcloc !31
  %127 = extractvalue { i32, i32 } %126, 0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #20, !srcloc !32
  %128 = icmp eq i32 %127, 0
  br i1 %128, label %129, label %130

129:                                              ; preds = %125
  tail call void @__put_cred(ptr noundef nonnull %123) #20
  br label %130

130:                                              ; preds = %129, %125, %121
  %131 = load i32, ptr %34, align 4
  tail call void @ida_free(ptr noundef nonnull @rpc_clids, i32 noundef %131) #20
  br label %132

132:                                              ; preds = %130, %27
  %133 = phi i32 [ %122, %130 ], [ %31, %27 ]
  tail call void @kfree(ptr noundef nonnull %25) #20
  br label %134

134:                                              ; preds = %132, %23, %17, %11
  %135 = phi i32 [ -22, %11 ], [ -22, %17 ], [ %133, %132 ], [ -12, %23 ]
  tail call void @rpciod_down() #20
  br label %136

136:                                              ; preds = %134, %4
  %137 = phi i32 [ %9, %4 ], [ %135, %134 ]
  tail call void @xprt_switch_put(ptr noundef %1) #20
  tail call void @xprt_put(ptr noundef %2) #20
  %138 = load ptr, ptr %6, align 4
  %139 = getelementptr inbounds %struct.rpc_create_args, ptr %0, i32 0, i32 6
  %140 = load ptr, ptr %139, align 4
  %141 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_rpc_clnt_new_err, i32 0, i32 1), align 4
  %142 = icmp sgt i32 %141, 0
  br i1 %142, label %143, label %156

143:                                              ; preds = %136
  %144 = tail call ptr @llvm.thread.pointer() #20
  %145 = getelementptr inbounds %struct.thread_info, ptr %144, i32 0, i32 2
  %146 = load i32, ptr %145, align 8
  %147 = lshr i32 %146, 5
  %148 = getelementptr i32, ptr @__cpu_online_mask, i32 %147
  %149 = load volatile i32, ptr %148, align 4
  %150 = and i32 %146, 31
  %151 = shl nuw i32 1, %150
  %152 = and i32 %151, %149
  %153 = icmp eq i32 %152, 0
  br i1 %153, label %156, label %154

154:                                              ; preds = %143
  tail call void asm sideeffect "", "~{memory}"() #20, !srcloc !44
  %155 = tail call i32 @__traceiter_rpc_clnt_new_err(ptr noundef null, ptr noundef %138, ptr noundef %140, i32 noundef %137) #20
  tail call void asm sideeffect "", "~{memory}"() #20, !srcloc !45
  br label %156

156:                                              ; preds = %154, %143, %136
  %157 = inttoptr i32 %137 to ptr
  br label %158

158:                                              ; preds = %156, %115
  %159 = phi ptr [ %157, %156 ], [ %25, %115 ]
  ret ptr %159
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rpciod_up() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rpc_alloc_iostats(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @rpc_init_pipe_dir_head(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @xprt_iter_init(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @rpc_init_rtt(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @rpc_sysfs_client_setup(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @refcount_inc(ptr noundef %0) unnamed_addr #11 {
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %0) #20, !srcloc !24
  %2 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %0, ptr %0, i32 1, ptr elementtype(i32) %0) #20, !srcloc !39
  %3 = extractvalue { i32, i32, i32 } %2, 0
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %9, label %5, !prof !9

5:                                                ; preds = %1
  %6 = add i32 %3, 1
  %7 = or i32 %6, %3
  %8 = icmp sgt i32 %7, -1
  br i1 %8, label %11, label %9, !prof !26

9:                                                ; preds = %5, %1
  %10 = phi i32 [ 2, %1 ], [ 1, %5 ]
  tail call void @refcount_warn_saturate(ptr noundef %0, i32 noundef %10) #20
  br label %11

11:                                               ; preds = %9, %5
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @trace_rpc_clnt_new(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) unnamed_addr #11 {
  %5 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_rpc_clnt_new, i32 0, i32 1), align 4
  %6 = icmp sgt i32 %5, 0
  br i1 %6, label %7, label %20

7:                                                ; preds = %4
  %8 = tail call ptr @llvm.thread.pointer() #20
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
  tail call void asm sideeffect "", "~{memory}"() #20, !srcloc !46
  %19 = tail call i32 @__traceiter_rpc_clnt_new(ptr noundef null, ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) #20
  tail call void asm sideeffect "", "~{memory}"() #20, !srcloc !47
  br label %20

20:                                               ; preds = %18, %7, %4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rpc_free_iostats(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @rpciod_down() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ida_alloc_range(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.thread.pointer() #12

; Function Attrs: nofree null_pointer_is_valid
declare dso_local i32 @strlcpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #13

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_rpc_clnt_new(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__put_cred(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ida_free(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_rpc_clnt_new_err(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_rpc_clnt_clone_err(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rpc_remove_client_dir(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rpc_get_sb_net(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @rpc_put_sb_net(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rpcauth_create(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_rpc_clnt_replace_xprt(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_rpc_clnt_replace_xprt_err(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @xprt_iter_init_listall(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_rpc_clnt_killall(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_rpc_clnt_shutdown(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @rpcauth_release(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @rpc_free_client_work(ptr noundef %0) #0 {
  %2 = getelementptr i8, ptr %0, i32 -264
  %3 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_rpc_clnt_free, i32 0, i32 1), align 4
  %4 = icmp sgt i32 %3, 0
  br i1 %4, label %5, label %18

5:                                                ; preds = %1
  %6 = tail call ptr @llvm.thread.pointer() #20
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
  tail call void asm sideeffect "", "~{memory}"() #20, !srcloc !48
  %17 = tail call i32 @__traceiter_rpc_clnt_free(ptr noundef null, ptr noundef %2) #20
  tail call void asm sideeffect "", "~{memory}"() #20, !srcloc !49
  br label %18

18:                                               ; preds = %16, %5, %1
  tail call void @rpc_sysfs_client_destroy(ptr noundef %2) #20
  %19 = getelementptr i8, ptr %0, i32 -260
  %20 = load i32, ptr %19, align 4
  tail call void @ida_free(ptr noundef nonnull @rpc_clids, i32 noundef %20) #20
  tail call void asm sideeffect "", "~{memory}"() #20, !srcloc !10
  %21 = getelementptr i8, ptr %0, i32 -232
  %22 = load volatile ptr, ptr %21, align 4
  %23 = getelementptr inbounds %struct.rpc_xprt, ptr %22, i32 0, i32 49
  %24 = load ptr, ptr %23, align 8
  tail call void asm sideeffect "", "~{memory}"() #20, !srcloc !11
  %25 = tail call ptr @rpc_get_sb_net(ptr noundef %24) #20
  %26 = icmp eq ptr %25, null
  br i1 %26, label %29, label %27

27:                                               ; preds = %18
  %28 = tail call i32 @rpc_remove_client_dir(ptr noundef %2) #20
  tail call void @rpc_put_sb_net(ptr noundef %24) #20
  br label %29

29:                                               ; preds = %27, %18
  %30 = load volatile ptr, ptr %21, align 4
  tail call void @xprt_put(ptr noundef %30) #20
  tail call void @kfree(ptr noundef %2) #20
  tail call void @rpciod_down() #20
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_rpc_clnt_release(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_rpc_clnt_free(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @rpc_task_set_transport(ptr nocapture noundef %0, ptr noundef %1) unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.rpc_task, ptr %0, i32 0, i32 14
  %4 = load ptr, ptr %3, align 4
  %5 = icmp eq ptr %4, null
  br i1 %5, label %6, label %35

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.rpc_task, ptr %0, i32 0, i32 20
  %8 = load i16, ptr %7, align 4
  %9 = and i16 %8, 256
  %10 = icmp eq i16 %9, 0
  br i1 %10, label %23, label %11

11:                                               ; preds = %6
  tail call void asm sideeffect "", "~{memory}"() #20, !srcloc !10
  %12 = getelementptr inbounds %struct.rpc_clnt, ptr %1, i32 0, i32 6
  %13 = load volatile ptr, ptr %12, align 4
  %14 = tail call ptr @xprt_get(ptr noundef %13) #20
  tail call void asm sideeffect "", "~{memory}"() #20, !srcloc !11
  %15 = icmp eq ptr %14, null
  br i1 %15, label %33, label %16

16:                                               ; preds = %11
  tail call void asm sideeffect "", "~{memory}"() #20, !srcloc !10
  %17 = getelementptr inbounds %struct.rpc_clnt, ptr %1, i32 0, i32 27
  %18 = load volatile ptr, ptr %17, align 4
  %19 = getelementptr inbounds %struct.rpc_xprt_switch, ptr %18, i32 0, i32 6
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %19) #20, !srcloc !24
  %20 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %19, ptr %19, i32 1, ptr elementtype(i32) %19) #20, !srcloc !37
  tail call void asm sideeffect "", "~{memory}"() #20, !srcloc !11
  %21 = getelementptr inbounds %struct.rpc_xprt, ptr %14, i32 0, i32 32
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %21) #20, !srcloc !24
  %22 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %21, ptr %21, i32 1, ptr elementtype(i32) %21) #20, !srcloc !37
  br label %33

23:                                               ; preds = %6
  %24 = getelementptr inbounds %struct.rpc_clnt, ptr %1, i32 0, i32 27
  %25 = tail call ptr @xprt_iter_get_next(ptr noundef %24) #20
  %26 = icmp eq ptr %25, null
  br i1 %26, label %33, label %27

27:                                               ; preds = %23
  tail call void asm sideeffect "", "~{memory}"() #20, !srcloc !10
  %28 = load volatile ptr, ptr %24, align 4
  %29 = getelementptr inbounds %struct.rpc_xprt_switch, ptr %28, i32 0, i32 6
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %29) #20, !srcloc !24
  %30 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %29, ptr %29, i32 1, ptr elementtype(i32) %29) #20, !srcloc !37
  tail call void asm sideeffect "", "~{memory}"() #20, !srcloc !11
  %31 = getelementptr inbounds %struct.rpc_xprt, ptr %25, i32 0, i32 32
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %31) #20, !srcloc !24
  %32 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %31, ptr %31, i32 1, ptr elementtype(i32) %31) #20, !srcloc !37
  br label %33

33:                                               ; preds = %27, %23, %16, %11
  %34 = phi ptr [ %14, %11 ], [ %14, %16 ], [ %25, %23 ], [ %25, %27 ]
  store ptr %34, ptr %3, align 4
  br label %35

35:                                               ; preds = %33, %2
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal void @rpc_default_callback(ptr nocapture noundef %0, ptr nocapture noundef %1) #14 {
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_rpc_xdr_reply_pages(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__sock_create(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kernel_bind(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kernel_connect(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kernel_getsockname(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @sock_release(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @call_reserve(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.rpc_task, ptr %0, i32 0, i32 1
  store i32 0, ptr %2, align 4
  %3 = getelementptr inbounds %struct.rpc_task, ptr %0, i32 0, i32 4
  store ptr @call_reserveresult, ptr %3, align 4
  tail call void @xprt_reserve(ptr noundef %0) #20
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_rpc_request(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @call_reserveresult(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.rpc_task, ptr %0, i32 0, i32 1
  %3 = load i32, ptr %2, align 4
  store i32 0, ptr %2, align 4
  %4 = icmp sgt i32 %3, -1
  br i1 %4, label %5, label %29

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.rpc_task, ptr %0, i32 0, i32 16
  %7 = load ptr, ptr %6, align 4
  %8 = icmp eq ptr %7, null
  br i1 %8, label %11, label %9

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.rpc_task, ptr %0, i32 0, i32 4
  store ptr @call_refresh, ptr %10, align 4
  br label %51

11:                                               ; preds = %5
  %12 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_rpc_call_rpcerror, i32 0, i32 1), align 4
  %13 = icmp sgt i32 %12, 0
  br i1 %13, label %14, label %27

14:                                               ; preds = %11
  %15 = tail call ptr @llvm.thread.pointer() #20
  %16 = getelementptr inbounds %struct.thread_info, ptr %15, i32 0, i32 2
  %17 = load i32, ptr %16, align 8
  %18 = lshr i32 %17, 5
  %19 = getelementptr i32, ptr @__cpu_online_mask, i32 %18
  %20 = load volatile i32, ptr %19, align 4
  %21 = and i32 %17, 31
  %22 = shl nuw i32 1, %21
  %23 = and i32 %22, %20
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %27, label %25

25:                                               ; preds = %14
  tail call void asm sideeffect "", "~{memory}"() #20, !srcloc !50
  %26 = tail call i32 @__traceiter_rpc_call_rpcerror(ptr noundef null, ptr noundef %0, i32 noundef -5, i32 noundef -5) #20
  tail call void asm sideeffect "", "~{memory}"() #20, !srcloc !51
  br label %27

27:                                               ; preds = %25, %14, %11
  %28 = getelementptr inbounds %struct.rpc_task, ptr %0, i32 0, i32 9
  store i32 -5, ptr %28, align 4
  tail call void @rpc_exit(ptr noundef %0, i32 noundef -5) #20
  br label %51

29:                                               ; preds = %1
  switch i32 %3, label %33 [
    i32 -12, label %30
    i32 -11, label %31
  ]

30:                                               ; preds = %29
  tail call void @rpc_delay(ptr noundef %0, i32 noundef 25) #20
  br label %31

31:                                               ; preds = %30, %29
  %32 = getelementptr inbounds %struct.rpc_task, ptr %0, i32 0, i32 4
  store ptr @call_retry_reserve, ptr %32, align 4
  br label %51

33:                                               ; preds = %29
  %34 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_rpc_call_rpcerror, i32 0, i32 1), align 4
  %35 = icmp sgt i32 %34, 0
  br i1 %35, label %36, label %49

36:                                               ; preds = %33
  %37 = tail call ptr @llvm.thread.pointer() #20
  %38 = getelementptr inbounds %struct.thread_info, ptr %37, i32 0, i32 2
  %39 = load i32, ptr %38, align 8
  %40 = lshr i32 %39, 5
  %41 = getelementptr i32, ptr @__cpu_online_mask, i32 %40
  %42 = load volatile i32, ptr %41, align 4
  %43 = and i32 %39, 31
  %44 = shl nuw i32 1, %43
  %45 = and i32 %44, %42
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %49, label %47

47:                                               ; preds = %36
  tail call void asm sideeffect "", "~{memory}"() #20, !srcloc !50
  %48 = tail call i32 @__traceiter_rpc_call_rpcerror(ptr noundef null, ptr noundef %0, i32 noundef %3, i32 noundef %3) #20
  tail call void asm sideeffect "", "~{memory}"() #20, !srcloc !51
  br label %49

49:                                               ; preds = %47, %36, %33
  %50 = getelementptr inbounds %struct.rpc_task, ptr %0, i32 0, i32 9
  store i32 %3, ptr %50, align 4
  tail call void @rpc_exit(ptr noundef %0, i32 noundef %3) #20
  br label %51

51:                                               ; preds = %49, %31, %27, %9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @xprt_reserve(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @call_refresh(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.rpc_task, ptr %0, i32 0, i32 4
  store ptr @call_refreshresult, ptr %2, align 4
  %3 = getelementptr inbounds %struct.rpc_task, ptr %0, i32 0, i32 1
  store i32 0, ptr %3, align 4
  %4 = getelementptr inbounds %struct.rpc_task, ptr %0, i32 0, i32 13
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.rpc_clnt, ptr %5, i32 0, i32 12
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.rpc_stat, ptr %7, i32 0, i32 8
  %9 = load i32, ptr %8, align 4
  %10 = add i32 %9, 1
  store i32 %10, ptr %8, align 4
  %11 = tail call i32 @rpcauth_refreshcred(ptr noundef %0) #20
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rpc_delay(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @call_retry_reserve(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.rpc_task, ptr %0, i32 0, i32 1
  store i32 0, ptr %2, align 4
  %3 = getelementptr inbounds %struct.rpc_task, ptr %0, i32 0, i32 4
  store ptr @call_reserveresult, ptr %3, align 4
  tail call void @xprt_retry_reserve(ptr noundef %0) #20
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @call_refreshresult(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.rpc_task, ptr %0, i32 0, i32 1
  %3 = load i32, ptr %2, align 4
  store i32 0, ptr %2, align 4
  %4 = getelementptr inbounds %struct.rpc_task, ptr %0, i32 0, i32 4
  store ptr @call_refresh, ptr %4, align 4
  switch i32 %3, label %37 [
    i32 0, label %5
    i32 -110, label %9
    i32 -11, label %10
    i32 -127, label %11
  ]

5:                                                ; preds = %1
  %6 = tail call i32 @rpcauth_uptodatecred(ptr noundef %0) #20
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %9, label %8

8:                                                ; preds = %5
  store ptr @call_allocate, ptr %4, align 4
  br label %72

9:                                                ; preds = %5, %1
  tail call void @rpc_delay(ptr noundef %0, i32 noundef 300) #20
  br label %10

10:                                               ; preds = %9, %1
  br label %11

11:                                               ; preds = %10, %1
  %12 = phi i32 [ %3, %1 ], [ -13, %10 ]
  %13 = getelementptr inbounds %struct.rpc_task, ptr %0, i32 0, i32 23
  %14 = load i8, ptr %13, align 2
  %15 = and i8 %14, 48
  %16 = icmp eq i8 %15, 0
  br i1 %16, label %37, label %17

17:                                               ; preds = %11
  %18 = add i8 %14, 48
  %19 = and i8 %18, 48
  %20 = and i8 %14, -49
  %21 = or i8 %19, %20
  store i8 %21, ptr %13, align 2
  %22 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_rpc_retry_refresh_status, i32 0, i32 1), align 4
  %23 = icmp sgt i32 %22, 0
  br i1 %23, label %24, label %72

24:                                               ; preds = %17
  %25 = tail call ptr @llvm.thread.pointer() #20
  %26 = getelementptr inbounds %struct.thread_info, ptr %25, i32 0, i32 2
  %27 = load i32, ptr %26, align 8
  %28 = lshr i32 %27, 5
  %29 = getelementptr i32, ptr @__cpu_online_mask, i32 %28
  %30 = load volatile i32, ptr %29, align 4
  %31 = and i32 %27, 31
  %32 = shl nuw i32 1, %31
  %33 = and i32 %32, %30
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %72, label %35

35:                                               ; preds = %24
  tail call void asm sideeffect "", "~{memory}"() #20, !srcloc !52
  %36 = tail call i32 @__traceiter_rpc_retry_refresh_status(ptr noundef null, ptr noundef %0) #20
  tail call void asm sideeffect "", "~{memory}"() #20, !srcloc !53
  br label %72

37:                                               ; preds = %11, %1
  %38 = phi i32 [ %3, %1 ], [ %12, %11 ]
  %39 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_rpc_refresh_status, i32 0, i32 1), align 4
  %40 = icmp sgt i32 %39, 0
  br i1 %40, label %41, label %54

41:                                               ; preds = %37
  %42 = tail call ptr @llvm.thread.pointer() #20
  %43 = getelementptr inbounds %struct.thread_info, ptr %42, i32 0, i32 2
  %44 = load i32, ptr %43, align 8
  %45 = lshr i32 %44, 5
  %46 = getelementptr i32, ptr @__cpu_online_mask, i32 %45
  %47 = load volatile i32, ptr %46, align 4
  %48 = and i32 %44, 31
  %49 = shl nuw i32 1, %48
  %50 = and i32 %49, %47
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %54, label %52

52:                                               ; preds = %41
  tail call void asm sideeffect "", "~{memory}"() #20, !srcloc !54
  %53 = tail call i32 @__traceiter_rpc_refresh_status(ptr noundef null, ptr noundef %0) #20
  tail call void asm sideeffect "", "~{memory}"() #20, !srcloc !55
  br label %54

54:                                               ; preds = %52, %41, %37
  %55 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_rpc_call_rpcerror, i32 0, i32 1), align 4
  %56 = icmp sgt i32 %55, 0
  br i1 %56, label %57, label %70

57:                                               ; preds = %54
  %58 = tail call ptr @llvm.thread.pointer() #20
  %59 = getelementptr inbounds %struct.thread_info, ptr %58, i32 0, i32 2
  %60 = load i32, ptr %59, align 8
  %61 = lshr i32 %60, 5
  %62 = getelementptr i32, ptr @__cpu_online_mask, i32 %61
  %63 = load volatile i32, ptr %62, align 4
  %64 = and i32 %60, 31
  %65 = shl nuw i32 1, %64
  %66 = and i32 %65, %63
  %67 = icmp eq i32 %66, 0
  br i1 %67, label %70, label %68

68:                                               ; preds = %57
  tail call void asm sideeffect "", "~{memory}"() #20, !srcloc !50
  %69 = tail call i32 @__traceiter_rpc_call_rpcerror(ptr noundef null, ptr noundef %0, i32 noundef %38, i32 noundef %38) #20
  tail call void asm sideeffect "", "~{memory}"() #20, !srcloc !51
  br label %70

70:                                               ; preds = %68, %57, %54
  %71 = getelementptr inbounds %struct.rpc_task, ptr %0, i32 0, i32 9
  store i32 %38, ptr %71, align 4
  tail call void @rpc_exit(ptr noundef %0, i32 noundef %38) #20
  br label %72

72:                                               ; preds = %70, %35, %24, %17, %8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rpcauth_refreshcred(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rpcauth_uptodatecred(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @call_allocate(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.rpc_task, ptr %0, i32 0, i32 16
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.rpc_rqst, ptr %3, i32 0, i32 4
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.rpc_cred, ptr %5, i32 0, i32 3
  %7 = load ptr, ptr %6, align 4
  %8 = load ptr, ptr %3, align 8
  %9 = getelementptr inbounds %struct.rpc_task, ptr %0, i32 0, i32 10
  %10 = load ptr, ptr %9, align 8
  %11 = getelementptr inbounds %struct.rpc_task, ptr %0, i32 0, i32 1
  store i32 0, ptr %11, align 4
  %12 = getelementptr inbounds %struct.rpc_task, ptr %0, i32 0, i32 4
  store ptr @call_encode, ptr %12, align 4
  %13 = getelementptr inbounds %struct.rpc_rqst, ptr %3, i32 0, i32 14
  %14 = load ptr, ptr %13, align 8
  %15 = icmp eq ptr %14, null
  br i1 %15, label %16, label %121

16:                                               ; preds = %1
  %17 = load i32, ptr %10, align 4
  %18 = icmp eq i32 %17, 0
  %19 = getelementptr inbounds %struct.rpc_procinfo, ptr %10, i32 0, i32 3
  %20 = load i32, ptr %19, align 4
  br i1 %18, label %33, label %21

21:                                               ; preds = %16
  %22 = icmp eq i32 %20, 0
  br i1 %22, label %23, label %24, !prof !9

23:                                               ; preds = %21
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22net/sunrpc/clnt.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1773, 0\0A.popsection", ""() #20, !srcloc !56
  unreachable

24:                                               ; preds = %21
  %25 = getelementptr inbounds %struct.rpc_procinfo, ptr %10, i32 0, i32 2
  %26 = load ptr, ptr %25, align 4
  %27 = icmp eq ptr %26, null
  br i1 %27, label %33, label %28

28:                                               ; preds = %24
  %29 = getelementptr inbounds %struct.rpc_procinfo, ptr %10, i32 0, i32 4
  %30 = load i32, ptr %29, align 4
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %32, label %33, !prof !9

32:                                               ; preds = %28
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22net/sunrpc/clnt.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1775, 0\0A.popsection", ""() #20, !srcloc !57
  unreachable

33:                                               ; preds = %28, %24, %16
  %34 = load i32, ptr %7, align 4
  %35 = shl i32 %34, 1
  %36 = add i32 %35, 6
  %37 = add i32 %36, %20
  %38 = getelementptr inbounds %struct.rpc_rqst, ptr %3, i32 0, i32 15
  %39 = shl i32 %37, 2
  store i32 %39, ptr %38, align 4
  %40 = getelementptr inbounds %struct.rpc_auth, ptr %7, i32 0, i32 1
  %41 = load i32, ptr %40, align 4
  %42 = add i32 %41, 4
  %43 = getelementptr inbounds %struct.rpc_procinfo, ptr %10, i32 0, i32 4
  %44 = load i32, ptr %43, align 4
  %45 = tail call i32 @llvm.umax.i32(i32 %44, i32 2)
  %46 = add i32 %42, %45
  %47 = getelementptr inbounds %struct.rpc_rqst, ptr %3, i32 0, i32 17
  %48 = shl i32 %46, 2
  store i32 %48, ptr %47, align 4
  %49 = getelementptr inbounds %struct.rpc_xprt, ptr %8, i32 0, i32 1
  %50 = load ptr, ptr %49, align 4
  %51 = getelementptr inbounds %struct.rpc_xprt_ops, ptr %50, i32 0, i32 8
  %52 = load ptr, ptr %51, align 4
  %53 = tail call i32 %52(ptr noundef %0) #20
  %54 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_rpc_buf_alloc, i32 0, i32 1), align 4
  %55 = icmp sgt i32 %54, 0
  br i1 %55, label %56, label %69

56:                                               ; preds = %33
  %57 = tail call ptr @llvm.thread.pointer() #20
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
  tail call void asm sideeffect "", "~{memory}"() #20, !srcloc !58
  %68 = tail call i32 @__traceiter_rpc_buf_alloc(ptr noundef null, ptr noundef %0, i32 noundef %53) #20
  tail call void asm sideeffect "", "~{memory}"() #20, !srcloc !59
  br label %69

69:                                               ; preds = %67, %56, %33
  switch i32 %53, label %70 [
    i32 0, label %121
    i32 -12, label %88
  ]

70:                                               ; preds = %69
  %71 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_rpc_call_rpcerror, i32 0, i32 1), align 4
  %72 = icmp sgt i32 %71, 0
  br i1 %72, label %73, label %86

73:                                               ; preds = %70
  %74 = tail call ptr @llvm.thread.pointer() #20
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
  tail call void asm sideeffect "", "~{memory}"() #20, !srcloc !50
  %85 = tail call i32 @__traceiter_rpc_call_rpcerror(ptr noundef null, ptr noundef %0, i32 noundef %53, i32 noundef %53) #20
  tail call void asm sideeffect "", "~{memory}"() #20, !srcloc !51
  br label %86

86:                                               ; preds = %84, %73, %70
  %87 = getelementptr inbounds %struct.rpc_task, ptr %0, i32 0, i32 9
  store i32 %53, ptr %87, align 4
  tail call void @rpc_exit(ptr noundef %0, i32 noundef %53) #20
  br label %121

88:                                               ; preds = %69
  %89 = getelementptr inbounds %struct.rpc_task, ptr %0, i32 0, i32 20
  %90 = load i16, ptr %89, align 4
  %91 = and i16 %90, 1
  %92 = icmp eq i16 %91, 0
  br i1 %92, label %93, label %103

93:                                               ; preds = %88
  %94 = tail call ptr @llvm.thread.pointer() #20
  %95 = load volatile i32, ptr %94, align 4
  %96 = and i32 %95, 1
  %97 = icmp eq i32 %96, 0
  br i1 %97, label %103, label %98

98:                                               ; preds = %93
  %99 = getelementptr inbounds %struct.task_struct, ptr %94, i32 0, i32 98, i32 1
  %100 = load i32, ptr %99, align 4
  %101 = and i32 %100, 256
  %102 = icmp eq i32 %101, 0
  br i1 %102, label %103, label %104

103:                                              ; preds = %98, %93, %88
  store ptr @call_allocate, ptr %12, align 4
  tail call void @rpc_delay(ptr noundef %0, i32 noundef 6) #20
  br label %121

104:                                              ; preds = %98
  %105 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_rpc_call_rpcerror, i32 0, i32 1), align 4
  %106 = icmp sgt i32 %105, 0
  br i1 %106, label %107, label %119

107:                                              ; preds = %104
  %108 = getelementptr inbounds %struct.thread_info, ptr %94, i32 0, i32 2
  %109 = load i32, ptr %108, align 8
  %110 = lshr i32 %109, 5
  %111 = getelementptr i32, ptr @__cpu_online_mask, i32 %110
  %112 = load volatile i32, ptr %111, align 4
  %113 = and i32 %109, 31
  %114 = shl nuw i32 1, %113
  %115 = and i32 %114, %112
  %116 = icmp eq i32 %115, 0
  br i1 %116, label %119, label %117

117:                                              ; preds = %107
  tail call void asm sideeffect "", "~{memory}"() #20, !srcloc !50
  %118 = tail call i32 @__traceiter_rpc_call_rpcerror(ptr noundef null, ptr noundef %0, i32 noundef -512, i32 noundef -512) #20
  tail call void asm sideeffect "", "~{memory}"() #20, !srcloc !51
  br label %119

119:                                              ; preds = %117, %107, %104
  %120 = getelementptr inbounds %struct.rpc_task, ptr %0, i32 0, i32 9
  store i32 -512, ptr %120, align 4
  tail call void @rpc_exit(ptr noundef %0, i32 noundef -512) #20
  br label %121

121:                                              ; preds = %119, %103, %86, %69, %1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @call_encode(ptr noundef %0) #0 {
  %2 = alloca %struct.xdr_stream, align 4
  %3 = getelementptr inbounds %struct.rpc_task, ptr %0, i32 0, i32 6
  %4 = load volatile i32, ptr %3, align 4
  %5 = and i32 %4, 8
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %165

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.rpc_task, ptr %0, i32 0, i32 20
  %9 = load i16, ptr %8, align 4
  %10 = and i16 %9, 18432
  %11 = icmp eq i16 %10, 18432
  br i1 %11, label %12, label %14

12:                                               ; preds = %7
  %13 = tail call zeroext i1 @xprt_request_need_retransmit(ptr noundef %0) #20
  br i1 %13, label %14, label %165

14:                                               ; preds = %12, %7
  tail call void @xprt_request_dequeue_xprt(ptr noundef %0) #20
  %15 = getelementptr inbounds %struct.rpc_task, ptr %0, i32 0, i32 16
  %16 = load ptr, ptr %15, align 4
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %2) #20
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(36) %2, i8 0, i32 36, i1 false) #20, !annotation !8
  %17 = getelementptr inbounds %struct.rpc_rqst, ptr %16, i32 0, i32 1
  %18 = getelementptr inbounds %struct.rpc_rqst, ptr %16, i32 0, i32 14
  %19 = load ptr, ptr %18, align 8
  %20 = getelementptr inbounds %struct.rpc_rqst, ptr %16, i32 0, i32 15
  %21 = load i32, ptr %20, align 4
  store ptr %19, ptr %17, align 4
  %22 = getelementptr inbounds %struct.rpc_rqst, ptr %16, i32 0, i32 1, i32 0, i32 0, i32 1
  %23 = getelementptr inbounds %struct.rpc_rqst, ptr %16, i32 0, i32 1, i32 1, i32 0, i32 1
  store i32 0, ptr %23, align 4
  %24 = getelementptr inbounds %struct.rpc_rqst, ptr %16, i32 0, i32 1, i32 3
  store ptr null, ptr %24, align 4
  %25 = getelementptr inbounds %struct.rpc_rqst, ptr %16, i32 0, i32 1, i32 5
  store i32 0, ptr %25, align 4
  %26 = getelementptr inbounds %struct.rpc_rqst, ptr %16, i32 0, i32 1, i32 6
  store i32 0, ptr %26, align 4
  %27 = getelementptr inbounds %struct.rpc_rqst, ptr %16, i32 0, i32 1, i32 8
  store i32 0, ptr %27, align 4
  %28 = getelementptr inbounds %struct.rpc_rqst, ptr %16, i32 0, i32 1, i32 7
  store i32 %21, ptr %28, align 4
  %29 = getelementptr inbounds %struct.rpc_rqst, ptr %16, i32 0, i32 2
  %30 = getelementptr inbounds %struct.rpc_rqst, ptr %16, i32 0, i32 16
  %31 = load ptr, ptr %30, align 8
  %32 = getelementptr inbounds %struct.rpc_rqst, ptr %16, i32 0, i32 17
  %33 = load i32, ptr %32, align 4
  store ptr %31, ptr %29, align 4
  %34 = getelementptr inbounds %struct.rpc_rqst, ptr %16, i32 0, i32 2, i32 0, i32 0, i32 1
  store i32 %33, ptr %34, align 4
  %35 = getelementptr inbounds %struct.rpc_rqst, ptr %16, i32 0, i32 2, i32 1, i32 0, i32 1
  store i32 0, ptr %35, align 4
  %36 = getelementptr inbounds %struct.rpc_rqst, ptr %16, i32 0, i32 2, i32 3
  store ptr null, ptr %36, align 4
  %37 = getelementptr inbounds %struct.rpc_rqst, ptr %16, i32 0, i32 2, i32 5
  store i32 0, ptr %37, align 4
  %38 = getelementptr inbounds %struct.rpc_rqst, ptr %16, i32 0, i32 2, i32 6
  store i32 0, ptr %38, align 4
  %39 = getelementptr inbounds %struct.rpc_rqst, ptr %16, i32 0, i32 2, i32 8
  store i32 0, ptr %39, align 4
  %40 = getelementptr inbounds %struct.rpc_rqst, ptr %16, i32 0, i32 2, i32 7
  store i32 %33, ptr %40, align 4
  %41 = getelementptr inbounds %struct.rpc_rqst, ptr %16, i32 0, i32 19
  store i32 0, ptr %41, align 4
  store i32 0, ptr %22, align 4
  call void @xdr_init_encode(ptr noundef nonnull %2, ptr noundef %17, ptr noundef %19, ptr noundef %16) #20
  call void @xdr_free_bvec(ptr noundef %17) #20
  %42 = getelementptr inbounds %struct.rpc_task, ptr %0, i32 0, i32 13
  %43 = load ptr, ptr %42, align 8
  %44 = load ptr, ptr %15, align 4
  %45 = call ptr @xdr_reserve_space(ptr noundef nonnull %2, i32 noundef 24) #20
  %46 = icmp eq ptr %45, null
  br i1 %46, label %67, label %47

47:                                               ; preds = %14
  %48 = getelementptr inbounds %struct.rpc_rqst, ptr %44, i32 0, i32 5
  %49 = load i32, ptr %48, align 4
  %50 = getelementptr i32, ptr %45, i32 1
  store i32 %49, ptr %45, align 4
  %51 = getelementptr i32, ptr %45, i32 2
  store i32 0, ptr %50, align 4
  %52 = getelementptr i32, ptr %45, i32 3
  store i32 33554432, ptr %51, align 4
  %53 = getelementptr inbounds %struct.rpc_clnt, ptr %43, i32 0, i32 8
  %54 = load i32, ptr %53, align 4
  %55 = call i32 @llvm.bswap.i32(i32 %54) #20
  %56 = getelementptr i32, ptr %45, i32 4
  store i32 %55, ptr %52, align 4
  %57 = getelementptr inbounds %struct.rpc_clnt, ptr %43, i32 0, i32 9
  %58 = load i32, ptr %57, align 4
  %59 = call i32 @llvm.bswap.i32(i32 %58) #20
  %60 = getelementptr i32, ptr %45, i32 5
  store i32 %59, ptr %56, align 4
  %61 = getelementptr inbounds %struct.rpc_task, ptr %0, i32 0, i32 10
  %62 = load ptr, ptr %61, align 8
  %63 = load i32, ptr %62, align 4
  %64 = call i32 @llvm.bswap.i32(i32 %63) #20
  store i32 %64, ptr %60, align 4
  %65 = call i32 @rpcauth_marshcred(ptr noundef %0, ptr noundef nonnull %2) #20
  %66 = icmp slt i32 %65, 0
  br i1 %66, label %67, label %104

67:                                               ; preds = %47, %14
  %68 = phi i32 [ %65, %47 ], [ -90, %14 ]
  %69 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_rpc_bad_callhdr, i32 0, i32 1), align 4
  %70 = icmp sgt i32 %69, 0
  br i1 %70, label %71, label %84

71:                                               ; preds = %67
  %72 = tail call ptr @llvm.thread.pointer() #20
  %73 = getelementptr inbounds %struct.thread_info, ptr %72, i32 0, i32 2
  %74 = load i32, ptr %73, align 8
  %75 = lshr i32 %74, 5
  %76 = getelementptr i32, ptr @__cpu_online_mask, i32 %75
  %77 = load volatile i32, ptr %76, align 4
  %78 = and i32 %74, 31
  %79 = shl nuw i32 1, %78
  %80 = and i32 %79, %77
  %81 = icmp eq i32 %80, 0
  br i1 %81, label %84, label %82

82:                                               ; preds = %71
  call void asm sideeffect "", "~{memory}"() #20, !srcloc !60
  %83 = call i32 @__traceiter_rpc_bad_callhdr(ptr noundef null, ptr noundef %0) #20
  call void asm sideeffect "", "~{memory}"() #20, !srcloc !61
  br label %84

84:                                               ; preds = %82, %71, %67
  %85 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_rpc_call_rpcerror, i32 0, i32 1), align 4
  %86 = icmp sgt i32 %85, 0
  br i1 %86, label %87, label %100

87:                                               ; preds = %84
  %88 = tail call ptr @llvm.thread.pointer() #20
  %89 = getelementptr inbounds %struct.thread_info, ptr %88, i32 0, i32 2
  %90 = load i32, ptr %89, align 8
  %91 = lshr i32 %90, 5
  %92 = getelementptr i32, ptr @__cpu_online_mask, i32 %91
  %93 = load volatile i32, ptr %92, align 4
  %94 = and i32 %90, 31
  %95 = shl nuw i32 1, %94
  %96 = and i32 %95, %93
  %97 = icmp eq i32 %96, 0
  br i1 %97, label %100, label %98

98:                                               ; preds = %87
  call void asm sideeffect "", "~{memory}"() #20, !srcloc !50
  %99 = call i32 @__traceiter_rpc_call_rpcerror(ptr noundef null, ptr noundef %0, i32 noundef %68, i32 noundef %68) #20
  call void asm sideeffect "", "~{memory}"() #20, !srcloc !51
  br label %100

100:                                              ; preds = %98, %87, %84
  %101 = getelementptr inbounds %struct.rpc_task, ptr %0, i32 0, i32 9
  store i32 %68, ptr %101, align 4
  call void @rpc_exit(ptr noundef %0, i32 noundef %68) #20
  %102 = getelementptr inbounds %struct.rpc_task, ptr %0, i32 0, i32 1
  %103 = load i32, ptr %102, align 4
  br label %107

104:                                              ; preds = %47
  %105 = call i32 @rpcauth_wrap_req(ptr noundef %0, ptr noundef nonnull %2) #20
  %106 = getelementptr inbounds %struct.rpc_task, ptr %0, i32 0, i32 1
  store i32 %105, ptr %106, align 4
  br label %107

107:                                              ; preds = %104, %100
  %108 = phi i32 [ %103, %100 ], [ %105, %104 ]
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %2) #20
  switch i32 %108, label %137 [
    i32 0, label %155
    i32 -11, label %109
    i32 -12, label %109
    i32 -127, label %110
  ]

109:                                              ; preds = %107, %107
  call void @rpc_delay(ptr noundef %0, i32 noundef 6) #20
  br label %179

110:                                              ; preds = %107
  %111 = getelementptr inbounds %struct.rpc_task, ptr %0, i32 0, i32 23
  %112 = load i8, ptr %111, align 2
  %113 = and i8 %112, 48
  %114 = icmp eq i8 %113, 0
  br i1 %114, label %115, label %116

115:                                              ; preds = %110
  call void @rpc_exit(ptr noundef %0, i32 noundef -127) #20
  br label %179

116:                                              ; preds = %110
  %117 = getelementptr inbounds %struct.rpc_task, ptr %0, i32 0, i32 4
  store ptr @call_refresh, ptr %117, align 4
  %118 = add i8 %112, 48
  %119 = and i8 %118, 48
  %120 = and i8 %112, -49
  %121 = or i8 %119, %120
  store i8 %121, ptr %111, align 2
  %122 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_rpc_retry_refresh_status, i32 0, i32 1), align 4
  %123 = icmp sgt i32 %122, 0
  br i1 %123, label %124, label %179

124:                                              ; preds = %116
  %125 = tail call ptr @llvm.thread.pointer() #20
  %126 = getelementptr inbounds %struct.thread_info, ptr %125, i32 0, i32 2
  %127 = load i32, ptr %126, align 8
  %128 = lshr i32 %127, 5
  %129 = getelementptr i32, ptr @__cpu_online_mask, i32 %128
  %130 = load volatile i32, ptr %129, align 4
  %131 = and i32 %127, 31
  %132 = shl nuw i32 1, %131
  %133 = and i32 %132, %130
  %134 = icmp eq i32 %133, 0
  br i1 %134, label %179, label %135

135:                                              ; preds = %124
  call void asm sideeffect "", "~{memory}"() #20, !srcloc !52
  %136 = call i32 @__traceiter_rpc_retry_refresh_status(ptr noundef null, ptr noundef %0) #20
  call void asm sideeffect "", "~{memory}"() #20, !srcloc !53
  br label %179

137:                                              ; preds = %107
  %138 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_rpc_call_rpcerror, i32 0, i32 1), align 4
  %139 = icmp sgt i32 %138, 0
  br i1 %139, label %140, label %153

140:                                              ; preds = %137
  %141 = tail call ptr @llvm.thread.pointer() #20
  %142 = getelementptr inbounds %struct.thread_info, ptr %141, i32 0, i32 2
  %143 = load i32, ptr %142, align 8
  %144 = lshr i32 %143, 5
  %145 = getelementptr i32, ptr @__cpu_online_mask, i32 %144
  %146 = load volatile i32, ptr %145, align 4
  %147 = and i32 %143, 31
  %148 = shl nuw i32 1, %147
  %149 = and i32 %148, %146
  %150 = icmp eq i32 %149, 0
  br i1 %150, label %153, label %151

151:                                              ; preds = %140
  call void asm sideeffect "", "~{memory}"() #20, !srcloc !50
  %152 = call i32 @__traceiter_rpc_call_rpcerror(ptr noundef null, ptr noundef %0, i32 noundef %108, i32 noundef %108) #20
  call void asm sideeffect "", "~{memory}"() #20, !srcloc !51
  br label %153

153:                                              ; preds = %151, %140, %137
  %154 = getelementptr inbounds %struct.rpc_task, ptr %0, i32 0, i32 9
  store i32 %108, ptr %154, align 4
  call void @rpc_exit(ptr noundef %0, i32 noundef %108) #20
  br label %179

155:                                              ; preds = %107
  %156 = getelementptr inbounds %struct.rpc_task, ptr %0, i32 0, i32 10
  %157 = load ptr, ptr %156, align 8
  %158 = icmp eq ptr %157, null
  br i1 %158, label %164, label %159

159:                                              ; preds = %155
  %160 = getelementptr inbounds %struct.rpc_procinfo, ptr %157, i32 0, i32 2
  %161 = load ptr, ptr %160, align 4
  %162 = icmp eq ptr %161, null
  br i1 %162, label %164, label %163

163:                                              ; preds = %159
  call void @xprt_request_enqueue_receive(ptr noundef %0) #20
  br label %164

164:                                              ; preds = %163, %159, %155
  call void @xprt_request_enqueue_transmit(ptr noundef %0) #20
  br label %165

165:                                              ; preds = %164, %12, %1
  %166 = getelementptr inbounds %struct.rpc_task, ptr %0, i32 0, i32 4
  store ptr @call_transmit, ptr %166, align 4
  %167 = getelementptr inbounds %struct.rpc_task, ptr %0, i32 0, i32 14
  %168 = load ptr, ptr %167, align 4
  %169 = getelementptr inbounds %struct.rpc_xprt, ptr %168, i32 0, i32 18
  %170 = load volatile i32, ptr %169, align 4
  %171 = and i32 %170, 16
  %172 = icmp eq i32 %171, 0
  br i1 %172, label %173, label %174

173:                                              ; preds = %165
  store ptr @call_bind, ptr %166, align 4
  br label %179

174:                                              ; preds = %165
  %175 = load volatile i32, ptr %169, align 4
  %176 = and i32 %175, 2
  %177 = icmp eq i32 %176, 0
  br i1 %177, label %178, label %179

178:                                              ; preds = %174
  store ptr @call_connect, ptr %166, align 4
  br label %179

179:                                              ; preds = %178, %174, %173, %153, %135, %124, %116, %115, %109
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @xprt_request_dequeue_xprt(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @rpc_exit(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @xprt_request_enqueue_receive(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @xprt_request_enqueue_transmit(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @call_transmit(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.rpc_task, ptr %0, i32 0, i32 6
  %3 = load volatile i32, ptr %2, align 4
  %4 = and i32 %3, 8
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %8

6:                                                ; preds = %1
  tail call void @xprt_end_transmit(ptr noundef %0) #20
  %7 = getelementptr inbounds %struct.rpc_task, ptr %0, i32 0, i32 4
  store ptr @call_transmit_status, ptr %7, align 4
  br label %26

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.rpc_task, ptr %0, i32 0, i32 4
  store ptr @call_transmit_status, ptr %9, align 4
  %10 = tail call zeroext i1 @xprt_prepare_transmit(ptr noundef %0) #20
  br i1 %10, label %11, label %26

11:                                               ; preds = %8
  %12 = getelementptr inbounds %struct.rpc_task, ptr %0, i32 0, i32 1
  store i32 0, ptr %12, align 4
  %13 = load volatile i32, ptr %2, align 4
  %14 = and i32 %13, 8
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %25, label %16

16:                                               ; preds = %11
  %17 = getelementptr inbounds %struct.rpc_task, ptr %0, i32 0, i32 14
  %18 = load ptr, ptr %17, align 4
  %19 = getelementptr inbounds %struct.rpc_xprt, ptr %18, i32 0, i32 18
  %20 = load volatile i32, ptr %19, align 4
  %21 = and i32 %20, 2
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %16
  store i32 -107, ptr %12, align 4
  br label %26

24:                                               ; preds = %16
  tail call void @xprt_transmit(ptr noundef %0) #20
  br label %25

25:                                               ; preds = %24, %11
  tail call void @xprt_end_transmit(ptr noundef %0) #20
  br label %26

26:                                               ; preds = %25, %23, %8, %6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @call_bind(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.rpc_task, ptr %0, i32 0, i32 16
  %3 = load ptr, ptr %2, align 4
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.rpc_task, ptr %0, i32 0, i32 6
  %6 = load volatile i32, ptr %5, align 4
  %7 = and i32 %6, 8
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %11

9:                                                ; preds = %1
  tail call void @xprt_end_transmit(ptr noundef %0) #20
  %10 = getelementptr inbounds %struct.rpc_task, ptr %0, i32 0, i32 4
  store ptr @call_transmit_status, ptr %10, align 4
  br label %25

11:                                               ; preds = %1
  %12 = getelementptr inbounds %struct.rpc_xprt, ptr %4, i32 0, i32 18
  %13 = load volatile i32, ptr %12, align 4
  %14 = and i32 %13, 16
  %15 = icmp eq i32 %14, 0
  %16 = getelementptr inbounds %struct.rpc_task, ptr %0, i32 0, i32 4
  br i1 %15, label %18, label %17

17:                                               ; preds = %11
  store ptr @call_connect, ptr %16, align 4
  br label %25

18:                                               ; preds = %11
  store ptr @call_bind_status, ptr %16, align 4
  %19 = tail call zeroext i1 @xprt_prepare_transmit(ptr noundef %0) #20
  br i1 %19, label %20, label %25

20:                                               ; preds = %18
  %21 = getelementptr inbounds %struct.rpc_xprt, ptr %4, i32 0, i32 1
  %22 = load ptr, ptr %21, align 4
  %23 = getelementptr inbounds %struct.rpc_xprt_ops, ptr %22, i32 0, i32 5
  %24 = load ptr, ptr %23, align 4
  tail call void %24(ptr noundef %0) #20
  br label %25

25:                                               ; preds = %20, %18, %17, %9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @call_connect(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.rpc_task, ptr %0, i32 0, i32 16
  %3 = load ptr, ptr %2, align 4
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.rpc_task, ptr %0, i32 0, i32 6
  %6 = load volatile i32, ptr %5, align 4
  %7 = and i32 %6, 8
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %11

9:                                                ; preds = %1
  tail call void @xprt_end_transmit(ptr noundef %0) #20
  %10 = getelementptr inbounds %struct.rpc_task, ptr %0, i32 0, i32 4
  store ptr @call_transmit_status, ptr %10, align 4
  br label %48

11:                                               ; preds = %1
  %12 = getelementptr inbounds %struct.rpc_xprt, ptr %4, i32 0, i32 18
  %13 = load volatile i32, ptr %12, align 4
  %14 = and i32 %13, 2
  %15 = icmp eq i32 %14, 0
  %16 = getelementptr inbounds %struct.rpc_task, ptr %0, i32 0, i32 4
  br i1 %15, label %18, label %17

17:                                               ; preds = %11
  store ptr @call_transmit, ptr %16, align 4
  br label %48

18:                                               ; preds = %11
  store ptr @call_connect_status, ptr %16, align 4
  %19 = getelementptr inbounds %struct.rpc_task, ptr %0, i32 0, i32 1
  %20 = load i32, ptr %19, align 4
  %21 = icmp slt i32 %20, 0
  br i1 %21, label %48, label %22

22:                                               ; preds = %18
  %23 = getelementptr inbounds %struct.rpc_task, ptr %0, i32 0, i32 20
  %24 = load i16, ptr %23, align 4
  %25 = and i16 %24, 8192
  %26 = icmp eq i16 %25, 0
  br i1 %26, label %45, label %27

27:                                               ; preds = %22
  %28 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_rpc_call_rpcerror, i32 0, i32 1), align 4
  %29 = icmp sgt i32 %28, 0
  br i1 %29, label %30, label %43

30:                                               ; preds = %27
  %31 = tail call ptr @llvm.thread.pointer() #20
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
  tail call void asm sideeffect "", "~{memory}"() #20, !srcloc !50
  %42 = tail call i32 @__traceiter_rpc_call_rpcerror(ptr noundef null, ptr noundef %0, i32 noundef -107, i32 noundef -107) #20
  tail call void asm sideeffect "", "~{memory}"() #20, !srcloc !51
  br label %43

43:                                               ; preds = %41, %30, %27
  %44 = getelementptr inbounds %struct.rpc_task, ptr %0, i32 0, i32 9
  store i32 -107, ptr %44, align 4
  tail call void @rpc_exit(ptr noundef %0, i32 noundef -107) #20
  br label %48

45:                                               ; preds = %22
  %46 = tail call zeroext i1 @xprt_prepare_transmit(ptr noundef %0) #20
  br i1 %46, label %47, label %48

47:                                               ; preds = %45
  tail call void @xprt_connect(ptr noundef %0) #20
  br label %48

48:                                               ; preds = %47, %45, %43, %18, %17, %9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @xprt_request_need_retransmit(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @xdr_init_encode(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @xdr_free_bvec(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rpcauth_wrap_req(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @xdr_reserve_space(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #15

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rpcauth_marshcred(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_rpc_bad_callhdr(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @call_transmit_status(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.rpc_task, ptr %0, i32 0, i32 4
  store ptr @call_status, ptr %2, align 4
  %3 = getelementptr inbounds %struct.rpc_task, ptr %0, i32 0, i32 6
  %4 = load volatile i32, ptr %3, align 4
  %5 = and i32 %4, 8
  %6 = icmp eq i32 %5, 0
  %7 = getelementptr inbounds %struct.rpc_task, ptr %0, i32 0, i32 1
  br i1 %6, label %8, label %9

8:                                                ; preds = %1
  store i32 0, ptr %7, align 4
  tail call void @xprt_request_wait_receive(ptr noundef %0) #20
  br label %64

9:                                                ; preds = %1
  %10 = load i32, ptr %7, align 4
  switch i32 %10, label %63 [
    i32 -74, label %11
    i32 -105, label %12
    i32 -57, label %13
    i32 -11, label %13
    i32 -111, label %14
    i32 -112, label %14
    i32 -100, label %14
    i32 -113, label %14
    i32 -101, label %14
    i32 -1, label %14
    i32 -104, label %62
    i32 -103, label %62
    i32 -98, label %62
    i32 -107, label %62
    i32 -32, label %62
  ]

11:                                               ; preds = %9
  store i32 0, ptr %7, align 4
  store ptr @call_encode, ptr %2, align 4
  br label %63

12:                                               ; preds = %9
  tail call void @rpc_delay(ptr noundef %0, i32 noundef 25) #20
  br label %13

13:                                               ; preds = %12, %9, %9
  store ptr @call_transmit, ptr %2, align 4
  store i32 0, ptr %7, align 4
  br label %63

14:                                               ; preds = %9, %9, %9, %9, %9, %9
  %15 = getelementptr inbounds %struct.rpc_task, ptr %0, i32 0, i32 20
  %16 = load i16, ptr %15, align 4
  %17 = and i16 %16, 1024
  %18 = icmp eq i16 %17, 0
  br i1 %18, label %62, label %19

19:                                               ; preds = %14
  %20 = getelementptr inbounds %struct.rpc_task, ptr %0, i32 0, i32 10
  %21 = load ptr, ptr %20, align 8
  %22 = load i32, ptr %21, align 4
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %43

24:                                               ; preds = %19
  %25 = getelementptr inbounds %struct.rpc_task, ptr %0, i32 0, i32 14
  %26 = load ptr, ptr %25, align 4
  %27 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xprt_ping, i32 0, i32 1), align 4
  %28 = icmp sgt i32 %27, 0
  br i1 %28, label %29, label %43

29:                                               ; preds = %24
  %30 = tail call ptr @llvm.thread.pointer() #20
  %31 = getelementptr inbounds %struct.thread_info, ptr %30, i32 0, i32 2
  %32 = load i32, ptr %31, align 8
  %33 = lshr i32 %32, 5
  %34 = getelementptr i32, ptr @__cpu_online_mask, i32 %33
  %35 = load volatile i32, ptr %34, align 4
  %36 = and i32 %32, 31
  %37 = shl nuw i32 1, %36
  %38 = and i32 %37, %35
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %43, label %40

40:                                               ; preds = %29
  tail call void asm sideeffect "", "~{memory}"() #20, !srcloc !62
  %41 = tail call i32 @__traceiter_xprt_ping(ptr noundef null, ptr noundef %26, i32 noundef %10) #20
  tail call void asm sideeffect "", "~{memory}"() #20, !srcloc !63
  %42 = load i32, ptr %7, align 4
  br label %43

43:                                               ; preds = %40, %29, %24, %19
  %44 = phi i32 [ %42, %40 ], [ %10, %29 ], [ %10, %24 ], [ %10, %19 ]
  %45 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_rpc_call_rpcerror, i32 0, i32 1), align 4
  %46 = icmp sgt i32 %45, 0
  br i1 %46, label %47, label %60

47:                                               ; preds = %43
  %48 = tail call ptr @llvm.thread.pointer() #20
  %49 = getelementptr inbounds %struct.thread_info, ptr %48, i32 0, i32 2
  %50 = load i32, ptr %49, align 8
  %51 = lshr i32 %50, 5
  %52 = getelementptr i32, ptr @__cpu_online_mask, i32 %51
  %53 = load volatile i32, ptr %52, align 4
  %54 = and i32 %50, 31
  %55 = shl nuw i32 1, %54
  %56 = and i32 %55, %53
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %60, label %58

58:                                               ; preds = %47
  tail call void asm sideeffect "", "~{memory}"() #20, !srcloc !50
  %59 = tail call i32 @__traceiter_rpc_call_rpcerror(ptr noundef null, ptr noundef %0, i32 noundef %44, i32 noundef %44) #20
  tail call void asm sideeffect "", "~{memory}"() #20, !srcloc !51
  br label %60

60:                                               ; preds = %58, %47, %43
  %61 = getelementptr inbounds %struct.rpc_task, ptr %0, i32 0, i32 9
  store i32 %44, ptr %61, align 4
  tail call void @rpc_exit(ptr noundef %0, i32 noundef %44) #20
  br label %64

62:                                               ; preds = %14, %9, %9, %9, %9, %9
  store ptr @call_bind, ptr %2, align 4
  store i32 0, ptr %7, align 4
  br label %63

63:                                               ; preds = %62, %13, %11, %9
  tail call fastcc void @rpc_check_timeout(ptr noundef %0)
  br label %64

64:                                               ; preds = %63, %60, %8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @xprt_prepare_transmit(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @xprt_transmit(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @xprt_end_transmit(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @call_status(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.rpc_task, ptr %0, i32 0, i32 13
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.rpc_task, ptr %0, i32 0, i32 10
  %5 = load ptr, ptr %4, align 8
  %6 = load i32, ptr %5, align 4
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %28

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.rpc_task, ptr %0, i32 0, i32 14
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr inbounds %struct.rpc_task, ptr %0, i32 0, i32 1
  %12 = load i32, ptr %11, align 4
  %13 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xprt_ping, i32 0, i32 1), align 4
  %14 = icmp sgt i32 %13, 0
  br i1 %14, label %15, label %28

15:                                               ; preds = %8
  %16 = tail call ptr @llvm.thread.pointer() #20
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
  tail call void asm sideeffect "", "~{memory}"() #20, !srcloc !62
  %27 = tail call i32 @__traceiter_xprt_ping(ptr noundef null, ptr noundef %10, i32 noundef %12) #20
  tail call void asm sideeffect "", "~{memory}"() #20, !srcloc !63
  br label %28

28:                                               ; preds = %26, %15, %8, %1
  %29 = getelementptr inbounds %struct.rpc_task, ptr %0, i32 0, i32 1
  %30 = load i32, ptr %29, align 4
  %31 = icmp sgt i32 %30, -1
  br i1 %31, label %32, label %34

32:                                               ; preds = %28
  %33 = getelementptr inbounds %struct.rpc_task, ptr %0, i32 0, i32 4
  store ptr @call_decode, ptr %33, align 4
  br label %102

34:                                               ; preds = %28
  %35 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_rpc_call_status, i32 0, i32 1), align 4
  %36 = icmp sgt i32 %35, 0
  br i1 %36, label %37, label %50

37:                                               ; preds = %34
  %38 = tail call ptr @llvm.thread.pointer() #20
  %39 = getelementptr inbounds %struct.thread_info, ptr %38, i32 0, i32 2
  %40 = load i32, ptr %39, align 8
  %41 = lshr i32 %40, 5
  %42 = getelementptr i32, ptr @__cpu_online_mask, i32 %41
  %43 = load volatile i32, ptr %42, align 4
  %44 = and i32 %40, 31
  %45 = shl nuw i32 1, %44
  %46 = and i32 %45, %43
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %50, label %48

48:                                               ; preds = %37
  tail call void asm sideeffect "", "~{memory}"() #20, !srcloc !64
  %49 = tail call i32 @__traceiter_rpc_call_status(ptr noundef null, ptr noundef %0) #20
  tail call void asm sideeffect "", "~{memory}"() #20, !srcloc !65
  br label %50

50:                                               ; preds = %48, %37, %34
  store i32 0, ptr %29, align 4
  switch i32 %30, label %68 [
    i32 -112, label %51
    i32 -100, label %51
    i32 -113, label %51
    i32 -101, label %51
    i32 -1, label %51
    i32 -110, label %79
    i32 -111, label %57
    i32 -104, label %57
    i32 -103, label %57
    i32 -107, label %57
    i32 -98, label %66
    i32 -32, label %79
    i32 -11, label %79
    i32 -5, label %84
  ]

51:                                               ; preds = %50, %50, %50, %50, %50
  %52 = getelementptr inbounds %struct.rpc_task, ptr %0, i32 0, i32 20
  %53 = load i16, ptr %52, align 4
  %54 = and i16 %53, 1024
  %55 = icmp eq i16 %54, 0
  br i1 %55, label %56, label %84

56:                                               ; preds = %51
  tail call void @rpc_delay(ptr noundef %0, i32 noundef 300) #20
  br label %79

57:                                               ; preds = %50, %50, %50, %50
  %58 = getelementptr inbounds %struct.rpc_clnt, ptr %3, i32 0, i32 14
  %59 = load i8, ptr %58, align 4
  %60 = and i8 %59, 16
  %61 = icmp eq i8 %60, 0
  br i1 %61, label %79, label %62

62:                                               ; preds = %57
  tail call void asm sideeffect "", "~{memory}"() #20, !srcloc !10
  %63 = getelementptr inbounds %struct.rpc_clnt, ptr %3, i32 0, i32 6
  %64 = load volatile ptr, ptr %63, align 4
  %65 = getelementptr inbounds %struct.rpc_xprt, ptr %64, i32 0, i32 18
  tail call void @_clear_bit(i32 noundef 4, ptr noundef %65) #20
  tail call void asm sideeffect "", "~{memory}"() #20, !srcloc !11
  br label %79

66:                                               ; preds = %50
  tail call void @rpc_delay(ptr noundef %0, i32 noundef 300) #20
  %67 = getelementptr inbounds %struct.rpc_task, ptr %0, i32 0, i32 4
  store ptr @call_encode, ptr %67, align 4
  br label %83

68:                                               ; preds = %50
  %69 = getelementptr inbounds %struct.rpc_clnt, ptr %3, i32 0, i32 14
  %70 = load i8, ptr %69, align 4
  %71 = and i8 %70, 32
  %72 = icmp eq i8 %71, 0
  br i1 %72, label %84, label %73

73:                                               ; preds = %68
  %74 = getelementptr inbounds %struct.rpc_clnt, ptr %3, i32 0, i32 24
  %75 = load ptr, ptr %74, align 4
  %76 = load ptr, ptr %75, align 4
  %77 = sub i32 0, %30
  %78 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.15, ptr noundef %76, i32 noundef %77) #21
  br label %84

79:                                               ; preds = %62, %57, %56, %50, %50, %50
  %80 = getelementptr inbounds %struct.rpc_task, ptr %0, i32 0, i32 4
  store ptr @call_encode, ptr %80, align 4
  %81 = add nsw i32 %30, 102
  %82 = icmp ult i32 %81, -2
  br i1 %82, label %83, label %102

83:                                               ; preds = %79, %66
  tail call fastcc void @rpc_check_timeout(ptr noundef %0)
  br label %102

84:                                               ; preds = %73, %68, %51, %50
  %85 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_rpc_call_rpcerror, i32 0, i32 1), align 4
  %86 = icmp sgt i32 %85, 0
  br i1 %86, label %87, label %100

87:                                               ; preds = %84
  %88 = tail call ptr @llvm.thread.pointer() #20
  %89 = getelementptr inbounds %struct.thread_info, ptr %88, i32 0, i32 2
  %90 = load i32, ptr %89, align 8
  %91 = lshr i32 %90, 5
  %92 = getelementptr i32, ptr @__cpu_online_mask, i32 %91
  %93 = load volatile i32, ptr %92, align 4
  %94 = and i32 %90, 31
  %95 = shl nuw i32 1, %94
  %96 = and i32 %95, %93
  %97 = icmp eq i32 %96, 0
  br i1 %97, label %100, label %98

98:                                               ; preds = %87
  tail call void asm sideeffect "", "~{memory}"() #20, !srcloc !50
  %99 = tail call i32 @__traceiter_rpc_call_rpcerror(ptr noundef null, ptr noundef %0, i32 noundef %30, i32 noundef %30) #20
  tail call void asm sideeffect "", "~{memory}"() #20, !srcloc !51
  br label %100

100:                                              ; preds = %98, %87, %84
  %101 = getelementptr inbounds %struct.rpc_task, ptr %0, i32 0, i32 9
  store i32 %30, ptr %101, align 4
  tail call void @rpc_exit(ptr noundef %0, i32 noundef %30) #20
  br label %102

102:                                              ; preds = %100, %83, %79, %32
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @xprt_request_wait_receive(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @rpc_check_timeout(ptr noundef %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.rpc_task, ptr %0, i32 0, i32 13
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.rpc_task, ptr %0, i32 0, i32 6
  %5 = load volatile i32, ptr %4, align 4
  %6 = and i32 %5, 64
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %26, label %8

8:                                                ; preds = %1
  %9 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_rpc_call_rpcerror, i32 0, i32 1), align 4
  %10 = icmp sgt i32 %9, 0
  br i1 %10, label %11, label %24

11:                                               ; preds = %8
  %12 = tail call ptr @llvm.thread.pointer() #20
  %13 = getelementptr inbounds %struct.thread_info, ptr %12, i32 0, i32 2
  %14 = load i32, ptr %13, align 8
  %15 = lshr i32 %14, 5
  %16 = getelementptr i32, ptr @__cpu_online_mask, i32 %15
  %17 = load volatile i32, ptr %16, align 4
  %18 = and i32 %14, 31
  %19 = shl nuw i32 1, %18
  %20 = and i32 %19, %17
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %24, label %22

22:                                               ; preds = %11
  tail call void asm sideeffect "", "~{memory}"() #20, !srcloc !50
  %23 = tail call i32 @__traceiter_rpc_call_rpcerror(ptr noundef null, ptr noundef %0, i32 noundef -512, i32 noundef -512) #20
  tail call void asm sideeffect "", "~{memory}"() #20, !srcloc !51
  br label %24

24:                                               ; preds = %22, %11, %8
  %25 = getelementptr inbounds %struct.rpc_task, ptr %0, i32 0, i32 9
  store i32 -512, ptr %25, align 4
  tail call void @rpc_exit(ptr noundef %0, i32 noundef -512) #20
  br label %188

26:                                               ; preds = %1
  %27 = getelementptr inbounds %struct.rpc_task, ptr %0, i32 0, i32 16
  %28 = load ptr, ptr %27, align 4
  %29 = tail call i32 @xprt_adjust_timeout(ptr noundef %28) #20
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %188, label %31

31:                                               ; preds = %26
  %32 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_rpc_timeout_status, i32 0, i32 1), align 4
  %33 = icmp sgt i32 %32, 0
  br i1 %33, label %34, label %47

34:                                               ; preds = %31
  %35 = tail call ptr @llvm.thread.pointer() #20
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
  tail call void asm sideeffect "", "~{memory}"() #20, !srcloc !66
  %46 = tail call i32 @__traceiter_rpc_timeout_status(ptr noundef null, ptr noundef %0) #20
  tail call void asm sideeffect "", "~{memory}"() #20, !srcloc !67
  br label %47

47:                                               ; preds = %45, %34, %31
  %48 = getelementptr inbounds %struct.rpc_task, ptr %0, i32 0, i32 21
  %49 = load i16, ptr %48, align 2
  %50 = add i16 %49, 1
  store i16 %50, ptr %48, align 2
  %51 = getelementptr inbounds %struct.rpc_task, ptr %0, i32 0, i32 20
  %52 = load i16, ptr %51, align 4
  %53 = and i16 %52, 1024
  %54 = icmp eq i16 %53, 0
  br i1 %54, label %84, label %55

55:                                               ; preds = %47
  %56 = load ptr, ptr %27, align 4
  %57 = icmp eq ptr %56, null
  br i1 %57, label %84, label %58

58:                                               ; preds = %55
  %59 = load ptr, ptr %56, align 8
  %60 = icmp eq ptr %59, null
  br i1 %60, label %84, label %61

61:                                               ; preds = %58
  %62 = getelementptr inbounds %struct.rpc_xprt, ptr %59, i32 0, i32 18
  %63 = load volatile i32, ptr %62, align 4
  %64 = and i32 %63, 2
  %65 = icmp eq i32 %64, 0
  br i1 %65, label %66, label %84

66:                                               ; preds = %61
  %67 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_rpc_call_rpcerror, i32 0, i32 1), align 4
  %68 = icmp sgt i32 %67, 0
  br i1 %68, label %69, label %82

69:                                               ; preds = %66
  %70 = tail call ptr @llvm.thread.pointer() #20
  %71 = getelementptr inbounds %struct.thread_info, ptr %70, i32 0, i32 2
  %72 = load i32, ptr %71, align 8
  %73 = lshr i32 %72, 5
  %74 = getelementptr i32, ptr @__cpu_online_mask, i32 %73
  %75 = load volatile i32, ptr %74, align 4
  %76 = and i32 %72, 31
  %77 = shl nuw i32 1, %76
  %78 = and i32 %77, %75
  %79 = icmp eq i32 %78, 0
  br i1 %79, label %82, label %80

80:                                               ; preds = %69
  tail call void asm sideeffect "", "~{memory}"() #20, !srcloc !50
  %81 = tail call i32 @__traceiter_rpc_call_rpcerror(ptr noundef null, ptr noundef %0, i32 noundef -110, i32 noundef -110) #20
  tail call void asm sideeffect "", "~{memory}"() #20, !srcloc !51
  br label %82

82:                                               ; preds = %80, %69, %66
  %83 = getelementptr inbounds %struct.rpc_task, ptr %0, i32 0, i32 9
  store i32 -110, ptr %83, align 4
  tail call void @rpc_exit(ptr noundef %0, i32 noundef -110) #20
  br label %188

84:                                               ; preds = %61, %58, %55, %47
  %85 = zext i16 %52 to i32
  %86 = and i32 %85, 4608
  %87 = icmp eq i32 %86, 0
  br i1 %87, label %157, label %88

88:                                               ; preds = %84
  %89 = and i32 %85, 16384
  %90 = icmp eq i32 %89, 0
  br i1 %90, label %102, label %91

91:                                               ; preds = %88
  %92 = load ptr, ptr %27, align 4
  %93 = icmp eq ptr %92, null
  br i1 %93, label %188, label %94

94:                                               ; preds = %91
  %95 = load ptr, ptr %92, align 8
  %96 = icmp eq ptr %95, null
  br i1 %96, label %188, label %97

97:                                               ; preds = %94
  %98 = getelementptr inbounds %struct.rpc_xprt, ptr %95, i32 0, i32 18
  %99 = load volatile i32, ptr %98, align 4
  %100 = and i32 %99, 2
  %101 = icmp eq i32 %100, 0
  br i1 %101, label %102, label %188

102:                                              ; preds = %97, %88
  %103 = getelementptr inbounds %struct.rpc_clnt, ptr %3, i32 0, i32 14
  %104 = load i8, ptr %103, align 4
  %105 = and i8 %104, 32
  %106 = icmp eq i8 %105, 0
  br i1 %106, label %119, label %107

107:                                              ; preds = %102
  %108 = tail call i32 @___ratelimit(ptr noundef nonnull @rpc_check_timeout._rs, ptr noundef nonnull @__func__.rpc_check_timeout) #20
  %109 = icmp eq i32 %108, 0
  br i1 %109, label %119, label %110

110:                                              ; preds = %107
  %111 = getelementptr inbounds %struct.rpc_clnt, ptr %3, i32 0, i32 24
  %112 = load ptr, ptr %111, align 4
  %113 = load ptr, ptr %112, align 4
  %114 = getelementptr inbounds %struct.rpc_task, ptr %0, i32 0, i32 14
  %115 = load ptr, ptr %114, align 4
  %116 = getelementptr inbounds %struct.rpc_xprt, ptr %115, i32 0, i32 50
  %117 = load ptr, ptr %116, align 4
  %118 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.18, ptr noundef %113, ptr noundef %117) #21
  br label %119

119:                                              ; preds = %110, %107, %102
  %120 = load i16, ptr %51, align 4
  %121 = and i16 %120, 4096
  %122 = icmp eq i16 %121, 0
  %123 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_rpc_call_rpcerror, i32 0, i32 1), align 4
  %124 = icmp sgt i32 %123, 0
  br i1 %122, label %141, label %125

125:                                              ; preds = %119
  br i1 %124, label %126, label %139

126:                                              ; preds = %125
  %127 = tail call ptr @llvm.thread.pointer() #20
  %128 = getelementptr inbounds %struct.thread_info, ptr %127, i32 0, i32 2
  %129 = load i32, ptr %128, align 8
  %130 = lshr i32 %129, 5
  %131 = getelementptr i32, ptr @__cpu_online_mask, i32 %130
  %132 = load volatile i32, ptr %131, align 4
  %133 = and i32 %129, 31
  %134 = shl nuw i32 1, %133
  %135 = and i32 %134, %132
  %136 = icmp eq i32 %135, 0
  br i1 %136, label %139, label %137

137:                                              ; preds = %126
  tail call void asm sideeffect "", "~{memory}"() #20, !srcloc !50
  %138 = tail call i32 @__traceiter_rpc_call_rpcerror(ptr noundef null, ptr noundef %0, i32 noundef -110, i32 noundef -110) #20
  tail call void asm sideeffect "", "~{memory}"() #20, !srcloc !51
  br label %139

139:                                              ; preds = %137, %126, %125
  %140 = getelementptr inbounds %struct.rpc_task, ptr %0, i32 0, i32 9
  store i32 -110, ptr %140, align 4
  tail call void @rpc_exit(ptr noundef %0, i32 noundef -110) #20
  br label %188

141:                                              ; preds = %119
  br i1 %124, label %142, label %155

142:                                              ; preds = %141
  %143 = tail call ptr @llvm.thread.pointer() #20
  %144 = getelementptr inbounds %struct.thread_info, ptr %143, i32 0, i32 2
  %145 = load i32, ptr %144, align 8
  %146 = lshr i32 %145, 5
  %147 = getelementptr i32, ptr @__cpu_online_mask, i32 %146
  %148 = load volatile i32, ptr %147, align 4
  %149 = and i32 %145, 31
  %150 = shl nuw i32 1, %149
  %151 = and i32 %150, %148
  %152 = icmp eq i32 %151, 0
  br i1 %152, label %155, label %153

153:                                              ; preds = %142
  tail call void asm sideeffect "", "~{memory}"() #20, !srcloc !50
  %154 = tail call i32 @__traceiter_rpc_call_rpcerror(ptr noundef null, ptr noundef %0, i32 noundef -5, i32 noundef -110) #20
  tail call void asm sideeffect "", "~{memory}"() #20, !srcloc !51
  br label %155

155:                                              ; preds = %153, %142, %141
  %156 = getelementptr inbounds %struct.rpc_task, ptr %0, i32 0, i32 9
  store i32 -110, ptr %156, align 4
  tail call void @rpc_exit(ptr noundef %0, i32 noundef -5) #20
  br label %188

157:                                              ; preds = %84
  %158 = and i32 %85, 32
  %159 = icmp eq i32 %158, 0
  br i1 %159, label %160, label %178

160:                                              ; preds = %157
  %161 = or i16 %52, 32
  store i16 %161, ptr %51, align 4
  %162 = getelementptr inbounds %struct.rpc_clnt, ptr %3, i32 0, i32 14
  %163 = load i8, ptr %162, align 4
  %164 = and i8 %163, 32
  %165 = icmp eq i8 %164, 0
  br i1 %165, label %178, label %166

166:                                              ; preds = %160
  %167 = tail call i32 @___ratelimit(ptr noundef nonnull @rpc_check_timeout._rs.19, ptr noundef nonnull @__func__.rpc_check_timeout) #20
  %168 = icmp eq i32 %167, 0
  br i1 %168, label %178, label %169

169:                                              ; preds = %166
  %170 = getelementptr inbounds %struct.rpc_clnt, ptr %3, i32 0, i32 24
  %171 = load ptr, ptr %170, align 4
  %172 = load ptr, ptr %171, align 4
  %173 = getelementptr inbounds %struct.rpc_task, ptr %0, i32 0, i32 14
  %174 = load ptr, ptr %173, align 4
  %175 = getelementptr inbounds %struct.rpc_xprt, ptr %174, i32 0, i32 50
  %176 = load ptr, ptr %175, align 4
  %177 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.20, ptr noundef %172, ptr noundef %176) #21
  br label %178

178:                                              ; preds = %169, %166, %160, %157
  %179 = getelementptr inbounds %struct.rpc_clnt, ptr %3, i32 0, i32 14
  %180 = load i8, ptr %179, align 4
  %181 = and i8 %180, 16
  %182 = icmp eq i8 %181, 0
  br i1 %182, label %187, label %183

183:                                              ; preds = %178
  tail call void asm sideeffect "", "~{memory}"() #20, !srcloc !10
  %184 = getelementptr inbounds %struct.rpc_clnt, ptr %3, i32 0, i32 6
  %185 = load volatile ptr, ptr %184, align 4
  %186 = getelementptr inbounds %struct.rpc_xprt, ptr %185, i32 0, i32 18
  tail call void @_clear_bit(i32 noundef 4, ptr noundef %186) #20
  tail call void asm sideeffect "", "~{memory}"() #20, !srcloc !11
  br label %187

187:                                              ; preds = %183, %178
  tail call void @rpcauth_invalcred(ptr noundef %0) #20
  br label %188

188:                                              ; preds = %187, %155, %139, %97, %94, %91, %82, %26, %24
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @call_decode(ptr noundef %0) #0 {
  %2 = alloca %struct.xdr_stream, align 4
  %3 = getelementptr inbounds %struct.rpc_task, ptr %0, i32 0, i32 13
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.rpc_task, ptr %0, i32 0, i32 16
  %6 = load ptr, ptr %5, align 4
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %2) #20
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(36) %2, i8 0, i32 36, i1 false), !annotation !8
  %7 = getelementptr inbounds %struct.rpc_task, ptr %0, i32 0, i32 10
  %8 = load ptr, ptr %7, align 8
  %9 = getelementptr inbounds %struct.rpc_procinfo, ptr %8, i32 0, i32 2
  %10 = load ptr, ptr %9, align 4
  %11 = icmp eq ptr %10, null
  br i1 %11, label %12, label %14

12:                                               ; preds = %1
  %13 = getelementptr inbounds %struct.rpc_task, ptr %0, i32 0, i32 4
  store ptr @rpc_exit_task, ptr %13, align 4
  br label %90

14:                                               ; preds = %1
  %15 = getelementptr inbounds %struct.rpc_task, ptr %0, i32 0, i32 20
  %16 = load i16, ptr %15, align 4
  %17 = and i16 %16, 32
  %18 = icmp eq i16 %17, 0
  br i1 %18, label %39, label %19

19:                                               ; preds = %14
  %20 = getelementptr inbounds %struct.rpc_clnt, ptr %4, i32 0, i32 14
  %21 = load i8, ptr %20, align 4
  %22 = and i8 %21, 32
  %23 = icmp eq i8 %22, 0
  br i1 %23, label %36, label %24

24:                                               ; preds = %19
  %25 = tail call i32 @___ratelimit(ptr noundef nonnull @call_decode._rs, ptr noundef nonnull @__func__.call_decode) #20
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %36, label %27

27:                                               ; preds = %24
  %28 = getelementptr inbounds %struct.rpc_clnt, ptr %4, i32 0, i32 24
  %29 = load ptr, ptr %28, align 4
  %30 = load ptr, ptr %29, align 4
  %31 = getelementptr inbounds %struct.rpc_task, ptr %0, i32 0, i32 14
  %32 = load ptr, ptr %31, align 4
  %33 = getelementptr inbounds %struct.rpc_xprt, ptr %32, i32 0, i32 50
  %34 = load ptr, ptr %33, align 4
  %35 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.16, ptr noundef %30, ptr noundef %34) #21
  br label %36

36:                                               ; preds = %27, %24, %19
  %37 = load i16, ptr %15, align 4
  %38 = and i16 %37, -33
  store i16 %38, ptr %15, align 4
  br label %39

39:                                               ; preds = %36, %14
  %40 = getelementptr inbounds %struct.rpc_rqst, ptr %6, i32 0, i32 19
  %41 = load i32, ptr %40, align 4
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %75, label %43

43:                                               ; preds = %39
  tail call void asm sideeffect "dmb ish", "~{memory}"() #20, !srcloc !68
  %44 = getelementptr inbounds %struct.rpc_rqst, ptr %6, i32 0, i32 20
  %45 = getelementptr inbounds %struct.rpc_rqst, ptr %6, i32 0, i32 20, i32 8
  %46 = load i32, ptr %45, align 8
  %47 = getelementptr inbounds %struct.rpc_rqst, ptr %6, i32 0, i32 2
  %48 = getelementptr inbounds %struct.rpc_rqst, ptr %6, i32 0, i32 2, i32 8
  store i32 %46, ptr %48, align 8
  %49 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_rpc_xdr_recvfrom, i32 0, i32 1), align 4
  %50 = icmp sgt i32 %49, 0
  br i1 %50, label %51, label %64

51:                                               ; preds = %43
  %52 = tail call ptr @llvm.thread.pointer() #20
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
  tail call void asm sideeffect "", "~{memory}"() #20, !srcloc !69
  %63 = tail call i32 @__traceiter_rpc_xdr_recvfrom(ptr noundef null, ptr noundef %0, ptr noundef %47) #20
  tail call void asm sideeffect "", "~{memory}"() #20, !srcloc !70
  br label %64

64:                                               ; preds = %62, %51, %43
  %65 = tail call i32 @bcmp(ptr noundef dereferenceable(44) %47, ptr noundef dereferenceable(44) %44, i32 44)
  %66 = icmp eq i32 %65, 0
  br i1 %66, label %68, label %67, !prof !26

67:                                               ; preds = %64
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 2495, i32 noundef 9, ptr noundef null) #20
  br label %68

68:                                               ; preds = %67, %64
  %69 = load ptr, ptr %47, align 8
  call void @xdr_init_decode(ptr noundef nonnull %2, ptr noundef %47, ptr noundef %69, ptr noundef %6) #20
  %70 = call fastcc i32 @rpc_decode_header(ptr noundef %0, ptr noundef nonnull %2)
  switch i32 %70, label %90 [
    i32 0, label %71
    i32 -11, label %75
    i32 -129, label %88
  ]

71:                                               ; preds = %68
  %72 = getelementptr inbounds %struct.rpc_task, ptr %0, i32 0, i32 4
  store ptr @rpc_exit_task, ptr %72, align 4
  %73 = call i32 @rpcauth_unwrap_resp(ptr noundef %0, ptr noundef nonnull %2) #20
  %74 = getelementptr inbounds %struct.rpc_task, ptr %0, i32 0, i32 1
  store i32 %73, ptr %74, align 4
  br label %90

75:                                               ; preds = %68, %39
  %76 = getelementptr inbounds %struct.rpc_task, ptr %0, i32 0, i32 1
  store i32 0, ptr %76, align 4
  %77 = load ptr, ptr %3, align 8
  %78 = getelementptr inbounds %struct.rpc_clnt, ptr %77, i32 0, i32 14
  %79 = load i8, ptr %78, align 4
  %80 = and i8 %79, 4
  %81 = icmp eq i8 %80, 0
  br i1 %81, label %86, label %82

82:                                               ; preds = %75
  %83 = load ptr, ptr %6, align 8
  %84 = getelementptr inbounds %struct.rpc_rqst, ptr %6, i32 0, i32 26
  %85 = load i32, ptr %84, align 4
  call void @xprt_conditional_disconnect(ptr noundef %83, i32 noundef %85) #20
  br label %86

86:                                               ; preds = %82, %75
  %87 = getelementptr inbounds %struct.rpc_task, ptr %0, i32 0, i32 4
  store ptr @call_encode, ptr %87, align 4
  call fastcc void @rpc_check_timeout(ptr noundef %0)
  br label %90

88:                                               ; preds = %68
  %89 = getelementptr inbounds %struct.rpc_task, ptr %0, i32 0, i32 4
  store ptr @call_reserve, ptr %89, align 4
  call fastcc void @rpc_check_timeout(ptr noundef %0)
  call void @rpcauth_invalcred(ptr noundef %0) #20
  call void @xprt_release(ptr noundef %0) #20
  br label %90

90:                                               ; preds = %88, %86, %71, %68, %12
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %2) #20
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rpc_exit_task(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @___ratelimit(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @xdr_init_decode(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @rpc_decode_header(ptr noundef %0, ptr noundef %1) unnamed_addr #16 {
  %3 = getelementptr inbounds %struct.rpc_task, ptr %0, i32 0, i32 13
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.rpc_task, ptr %0, i32 0, i32 16
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.rpc_rqst, ptr %6, i32 0, i32 2, i32 8
  %8 = load i32, ptr %7, align 8
  %9 = and i32 %8, 3
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %71

11:                                               ; preds = %2
  %12 = tail call ptr @xdr_inline_decode(ptr noundef %1, i32 noundef 12) #20
  %13 = icmp eq ptr %12, null
  br i1 %13, label %71, label %14

14:                                               ; preds = %11
  %15 = getelementptr i32, ptr %12, i32 1
  %16 = load i32, ptr %15, align 4
  %17 = icmp eq i32 %16, 16777216
  br i1 %17, label %18, label %71

18:                                               ; preds = %14
  %19 = getelementptr i32, ptr %12, i32 2
  %20 = load i32, ptr %19, align 4
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %103

22:                                               ; preds = %18
  %23 = tail call i32 @rpcauth_checkverf(ptr noundef %0, ptr noundef %1) #20
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %87

25:                                               ; preds = %22
  %26 = tail call ptr @xdr_inline_decode(ptr noundef %1, i32 noundef 4) #20
  %27 = icmp eq ptr %26, null
  br i1 %27, label %71, label %28

28:                                               ; preds = %25
  %29 = load i32, ptr %26, align 4
  %30 = tail call i32 @llvm.fshl.i32(i32 %29, i32 %29, i32 8)
  switch i32 %30, label %71 [
    i32 0, label %143
    i32 1, label %31
    i32 2, label %32
    i32 3, label %33
    i32 4, label %34
    i32 5, label %34
  ]

31:                                               ; preds = %28
  tail call fastcc void @trace_rpc__prog_unavail(ptr noundef %0)
  br label %52

32:                                               ; preds = %28
  tail call fastcc void @trace_rpc__prog_mismatch(ptr noundef %0)
  br label %52

33:                                               ; preds = %28
  tail call fastcc void @trace_rpc__proc_unavail(ptr noundef %0)
  br label %52

34:                                               ; preds = %28, %28
  tail call fastcc void @trace_rpc__garbage_args(ptr noundef %0)
  br label %35

35:                                               ; preds = %101, %90, %87, %85, %74, %71, %34
  %36 = phi i32 [ -5, %34 ], [ -5, %71 ], [ -5, %74 ], [ -5, %85 ], [ %23, %87 ], [ %23, %90 ], [ %23, %101 ]
  %37 = getelementptr inbounds %struct.rpc_clnt, ptr %4, i32 0, i32 12
  %38 = load ptr, ptr %37, align 4
  %39 = getelementptr inbounds %struct.rpc_stat, ptr %38, i32 0, i32 9
  %40 = load i32, ptr %39, align 4
  %41 = add i32 %40, 1
  store i32 %41, ptr %39, align 4
  %42 = getelementptr inbounds %struct.rpc_task, ptr %0, i32 0, i32 23
  %43 = load i8, ptr %42, align 2
  %44 = and i8 %43, 12
  %45 = icmp eq i8 %44, 0
  br i1 %45, label %52, label %46

46:                                               ; preds = %35
  %47 = add i8 %43, 12
  %48 = and i8 %47, 12
  %49 = and i8 %43, -13
  %50 = or i8 %48, %49
  store i8 %50, ptr %42, align 2
  %51 = getelementptr inbounds %struct.rpc_task, ptr %0, i32 0, i32 4
  store ptr @call_encode, ptr %51, align 4
  br label %143

52:                                               ; preds = %137, %126, %116, %108, %35, %33, %32, %31
  %53 = phi i32 [ %36, %35 ], [ -93, %108 ], [ -13, %137 ], [ -13, %126 ], [ -13, %116 ], [ -95, %33 ], [ -93, %32 ], [ -96, %31 ]
  %54 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_rpc_call_rpcerror, i32 0, i32 1), align 4
  %55 = icmp sgt i32 %54, 0
  br i1 %55, label %56, label %69

56:                                               ; preds = %52
  %57 = tail call ptr @llvm.thread.pointer() #20
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
  tail call void asm sideeffect "", "~{memory}"() #20, !srcloc !50
  %68 = tail call i32 @__traceiter_rpc_call_rpcerror(ptr noundef null, ptr noundef %0, i32 noundef %53, i32 noundef %53) #20
  tail call void asm sideeffect "", "~{memory}"() #20, !srcloc !51
  br label %69

69:                                               ; preds = %67, %56, %52
  %70 = getelementptr inbounds %struct.rpc_task, ptr %0, i32 0, i32 9
  store i32 %53, ptr %70, align 4
  tail call void @rpc_exit(ptr noundef %0, i32 noundef %53) #20
  br label %143

71:                                               ; preds = %112, %109, %106, %103, %28, %25, %14, %11, %2
  %72 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_rpc__unparsable, i32 0, i32 1), align 4
  %73 = icmp sgt i32 %72, 0
  br i1 %73, label %74, label %35

74:                                               ; preds = %71
  %75 = tail call ptr @llvm.thread.pointer() #20
  %76 = getelementptr inbounds %struct.thread_info, ptr %75, i32 0, i32 2
  %77 = load i32, ptr %76, align 8
  %78 = lshr i32 %77, 5
  %79 = getelementptr i32, ptr @__cpu_online_mask, i32 %78
  %80 = load volatile i32, ptr %79, align 4
  %81 = and i32 %77, 31
  %82 = shl nuw i32 1, %81
  %83 = and i32 %82, %80
  %84 = icmp eq i32 %83, 0
  br i1 %84, label %35, label %85

85:                                               ; preds = %74
  tail call void asm sideeffect "", "~{memory}"() #20, !srcloc !71
  %86 = tail call i32 @__traceiter_rpc__unparsable(ptr noundef null, ptr noundef %0) #20
  tail call void asm sideeffect "", "~{memory}"() #20, !srcloc !72
  br label %35

87:                                               ; preds = %22
  %88 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_rpc_bad_verifier, i32 0, i32 1), align 4
  %89 = icmp sgt i32 %88, 0
  br i1 %89, label %90, label %35

90:                                               ; preds = %87
  %91 = tail call ptr @llvm.thread.pointer() #20
  %92 = getelementptr inbounds %struct.thread_info, ptr %91, i32 0, i32 2
  %93 = load i32, ptr %92, align 8
  %94 = lshr i32 %93, 5
  %95 = getelementptr i32, ptr @__cpu_online_mask, i32 %94
  %96 = load volatile i32, ptr %95, align 4
  %97 = and i32 %93, 31
  %98 = shl nuw i32 1, %97
  %99 = and i32 %98, %96
  %100 = icmp eq i32 %99, 0
  br i1 %100, label %35, label %101

101:                                              ; preds = %90
  tail call void asm sideeffect "", "~{memory}"() #20, !srcloc !73
  %102 = tail call i32 @__traceiter_rpc_bad_verifier(ptr noundef null, ptr noundef %0) #20
  tail call void asm sideeffect "", "~{memory}"() #20, !srcloc !74
  br label %35

103:                                              ; preds = %18
  %104 = tail call ptr @xdr_inline_decode(ptr noundef %1, i32 noundef 4) #20
  %105 = icmp eq ptr %104, null
  br i1 %105, label %71, label %106

106:                                              ; preds = %103
  %107 = load i32, ptr %104, align 4
  switch i32 %107, label %71 [
    i32 16777216, label %109
    i32 0, label %108
  ]

108:                                              ; preds = %106
  tail call fastcc void @trace_rpc__mismatch(ptr noundef %0)
  br label %52

109:                                              ; preds = %106
  %110 = tail call ptr @xdr_inline_decode(ptr noundef %1, i32 noundef 4) #20
  %111 = icmp eq ptr %110, null
  br i1 %111, label %71, label %112

112:                                              ; preds = %109
  %113 = load i32, ptr %110, align 4
  %114 = add i32 %113, -16777216
  %115 = tail call i32 @llvm.fshl.i32(i32 %114, i32 %114, i32 8)
  switch i32 %115, label %71 [
    i32 1, label %116
    i32 3, label %116
    i32 12, label %116
    i32 13, label %116
    i32 0, label %126
    i32 2, label %126
    i32 4, label %137
  ]

116:                                              ; preds = %112, %112, %112, %112
  %117 = getelementptr inbounds %struct.rpc_task, ptr %0, i32 0, i32 23
  %118 = load i8, ptr %117, align 2
  %119 = and i8 %118, 48
  %120 = icmp eq i8 %119, 0
  br i1 %120, label %52, label %121

121:                                              ; preds = %116
  %122 = add i8 %118, 48
  %123 = and i8 %122, 48
  %124 = and i8 %118, -49
  %125 = or i8 %123, %124
  store i8 %125, ptr %117, align 2
  tail call fastcc void @trace_rpc__stale_creds(ptr noundef %0)
  br label %143

126:                                              ; preds = %112, %112
  %127 = getelementptr inbounds %struct.rpc_task, ptr %0, i32 0, i32 23
  %128 = load i8, ptr %127, align 2
  %129 = and i8 %128, 12
  %130 = icmp eq i8 %129, 0
  br i1 %130, label %52, label %131

131:                                              ; preds = %126
  %132 = add i8 %128, 12
  %133 = and i8 %132, 12
  %134 = and i8 %128, -13
  %135 = or i8 %133, %134
  store i8 %135, ptr %127, align 2
  tail call fastcc void @trace_rpc__bad_creds(ptr noundef %0)
  %136 = getelementptr inbounds %struct.rpc_task, ptr %0, i32 0, i32 4
  store ptr @call_encode, ptr %136, align 4
  br label %143

137:                                              ; preds = %112
  tail call fastcc void @trace_rpc__auth_tooweak(ptr noundef %0)
  %138 = getelementptr inbounds %struct.rpc_task, ptr %0, i32 0, i32 14
  %139 = load ptr, ptr %138, align 4
  %140 = getelementptr inbounds %struct.rpc_xprt, ptr %139, i32 0, i32 50
  %141 = load ptr, ptr %140, align 4
  %142 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17, ptr noundef %141) #21
  br label %52

143:                                              ; preds = %131, %121, %69, %46, %28
  %144 = phi i32 [ -11, %46 ], [ %53, %69 ], [ -11, %131 ], [ -129, %121 ], [ %30, %28 ]
  ret i32 %144
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rpcauth_unwrap_resp(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @xprt_conditional_disconnect(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @rpcauth_invalcred(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @xprt_release(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_rpc_xdr_recvfrom(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @xdr_inline_decode(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rpcauth_checkverf(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @trace_rpc__prog_unavail(ptr noundef %0) unnamed_addr #11 {
  %2 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_rpc__prog_unavail, i32 0, i32 1), align 4
  %3 = icmp sgt i32 %2, 0
  br i1 %3, label %4, label %17

4:                                                ; preds = %1
  %5 = tail call ptr @llvm.thread.pointer() #20
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
  tail call void asm sideeffect "", "~{memory}"() #20, !srcloc !75
  %16 = tail call i32 @__traceiter_rpc__prog_unavail(ptr noundef null, ptr noundef %0) #20
  tail call void asm sideeffect "", "~{memory}"() #20, !srcloc !76
  br label %17

17:                                               ; preds = %15, %4, %1
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @trace_rpc__prog_mismatch(ptr noundef %0) unnamed_addr #11 {
  %2 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_rpc__prog_mismatch, i32 0, i32 1), align 4
  %3 = icmp sgt i32 %2, 0
  br i1 %3, label %4, label %17

4:                                                ; preds = %1
  %5 = tail call ptr @llvm.thread.pointer() #20
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
  tail call void asm sideeffect "", "~{memory}"() #20, !srcloc !77
  %16 = tail call i32 @__traceiter_rpc__prog_mismatch(ptr noundef null, ptr noundef %0) #20
  tail call void asm sideeffect "", "~{memory}"() #20, !srcloc !78
  br label %17

17:                                               ; preds = %15, %4, %1
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @trace_rpc__proc_unavail(ptr noundef %0) unnamed_addr #11 {
  %2 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_rpc__proc_unavail, i32 0, i32 1), align 4
  %3 = icmp sgt i32 %2, 0
  br i1 %3, label %4, label %17

4:                                                ; preds = %1
  %5 = tail call ptr @llvm.thread.pointer() #20
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
  tail call void asm sideeffect "", "~{memory}"() #20, !srcloc !79
  %16 = tail call i32 @__traceiter_rpc__proc_unavail(ptr noundef null, ptr noundef %0) #20
  tail call void asm sideeffect "", "~{memory}"() #20, !srcloc !80
  br label %17

17:                                               ; preds = %15, %4, %1
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @trace_rpc__garbage_args(ptr noundef %0) unnamed_addr #11 {
  %2 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_rpc__garbage_args, i32 0, i32 1), align 4
  %3 = icmp sgt i32 %2, 0
  br i1 %3, label %4, label %17

4:                                                ; preds = %1
  %5 = tail call ptr @llvm.thread.pointer() #20
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
  tail call void asm sideeffect "", "~{memory}"() #20, !srcloc !81
  %16 = tail call i32 @__traceiter_rpc__garbage_args(ptr noundef null, ptr noundef %0) #20
  tail call void asm sideeffect "", "~{memory}"() #20, !srcloc !82
  br label %17

17:                                               ; preds = %15, %4, %1
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @trace_rpc__mismatch(ptr noundef %0) unnamed_addr #11 {
  %2 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_rpc__mismatch, i32 0, i32 1), align 4
  %3 = icmp sgt i32 %2, 0
  br i1 %3, label %4, label %17

4:                                                ; preds = %1
  %5 = tail call ptr @llvm.thread.pointer() #20
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
  tail call void asm sideeffect "", "~{memory}"() #20, !srcloc !83
  %16 = tail call i32 @__traceiter_rpc__mismatch(ptr noundef null, ptr noundef %0) #20
  tail call void asm sideeffect "", "~{memory}"() #20, !srcloc !84
  br label %17

17:                                               ; preds = %15, %4, %1
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @trace_rpc__stale_creds(ptr noundef %0) unnamed_addr #11 {
  %2 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_rpc__stale_creds, i32 0, i32 1), align 4
  %3 = icmp sgt i32 %2, 0
  br i1 %3, label %4, label %17

4:                                                ; preds = %1
  %5 = tail call ptr @llvm.thread.pointer() #20
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
  tail call void asm sideeffect "", "~{memory}"() #20, !srcloc !85
  %16 = tail call i32 @__traceiter_rpc__stale_creds(ptr noundef null, ptr noundef %0) #20
  tail call void asm sideeffect "", "~{memory}"() #20, !srcloc !86
  br label %17

17:                                               ; preds = %15, %4, %1
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @trace_rpc__bad_creds(ptr noundef %0) unnamed_addr #11 {
  %2 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_rpc__bad_creds, i32 0, i32 1), align 4
  %3 = icmp sgt i32 %2, 0
  br i1 %3, label %4, label %17

4:                                                ; preds = %1
  %5 = tail call ptr @llvm.thread.pointer() #20
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
  tail call void asm sideeffect "", "~{memory}"() #20, !srcloc !87
  %16 = tail call i32 @__traceiter_rpc__bad_creds(ptr noundef null, ptr noundef %0) #20
  tail call void asm sideeffect "", "~{memory}"() #20, !srcloc !88
  br label %17

17:                                               ; preds = %15, %4, %1
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @trace_rpc__auth_tooweak(ptr noundef %0) unnamed_addr #11 {
  %2 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_rpc__auth_tooweak, i32 0, i32 1), align 4
  %3 = icmp sgt i32 %2, 0
  br i1 %3, label %4, label %17

4:                                                ; preds = %1
  %5 = tail call ptr @llvm.thread.pointer() #20
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
  tail call void asm sideeffect "", "~{memory}"() #20, !srcloc !89
  %16 = tail call i32 @__traceiter_rpc__auth_tooweak(ptr noundef null, ptr noundef %0) #20
  tail call void asm sideeffect "", "~{memory}"() #20, !srcloc !90
  br label %17

17:                                               ; preds = %15, %4, %1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_rpc__prog_unavail(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_rpc__prog_mismatch(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_rpc__proc_unavail(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_rpc__garbage_args(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_rpc__unparsable(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_rpc_bad_verifier(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_rpc__mismatch(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_rpc__stale_creds(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_rpc__bad_creds(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_rpc__auth_tooweak(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_rpc_call_status(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_xprt_ping(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xprt_adjust_timeout(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_rpc_timeout_status(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_rpc_call_rpcerror(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @call_bind_status(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.rpc_task, ptr %0, i32 0, i32 16
  %3 = load ptr, ptr %2, align 4
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.rpc_task, ptr %0, i32 0, i32 6
  %6 = load volatile i32, ptr %5, align 4
  %7 = and i32 %6, 8
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %11

9:                                                ; preds = %1
  tail call void @xprt_end_transmit(ptr noundef %0) #20
  %10 = getelementptr inbounds %struct.rpc_task, ptr %0, i32 0, i32 4
  store ptr @call_transmit_status, ptr %10, align 4
  br label %86

11:                                               ; preds = %1
  %12 = getelementptr inbounds %struct.rpc_task, ptr %0, i32 0, i32 1
  %13 = load i32, ptr %12, align 4
  %14 = icmp sgt i32 %13, -1
  br i1 %14, label %82, label %15

15:                                               ; preds = %11
  %16 = getelementptr inbounds %struct.rpc_xprt, ptr %4, i32 0, i32 18
  %17 = load volatile i32, ptr %16, align 4
  %18 = and i32 %17, 16
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %21, label %20

20:                                               ; preds = %15
  store i32 0, ptr %12, align 4
  br label %82

21:                                               ; preds = %15
  switch i32 %13, label %62 [
    i32 -12, label %22
    i32 -13, label %23
    i32 -105, label %34
    i32 -11, label %84
    i32 -110, label %35
    i32 -96, label %36
    i32 -93, label %37
    i32 -111, label %38
    i32 -104, label %38
    i32 -103, label %38
    i32 -107, label %38
    i32 -112, label %38
    i32 -100, label %38
    i32 -113, label %38
    i32 -101, label %38
    i32 -32, label %38
  ]

22:                                               ; preds = %21
  tail call void @rpc_delay(ptr noundef %0, i32 noundef 25) #20
  br label %84

23:                                               ; preds = %21
  tail call fastcc void @trace_rpcb_prog_unavail_err(ptr noundef %0)
  %24 = getelementptr inbounds %struct.rpc_task, ptr %0, i32 0, i32 10
  %25 = load ptr, ptr %24, align 8
  %26 = load i32, ptr %25, align 4
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %63, label %28

28:                                               ; preds = %23
  %29 = getelementptr inbounds %struct.rpc_task, ptr %0, i32 0, i32 23
  %30 = load i8, ptr %29, align 2
  %31 = icmp ult i8 %30, 64
  br i1 %31, label %63, label %32

32:                                               ; preds = %28
  %33 = add i8 %30, -64
  store i8 %33, ptr %29, align 2
  tail call void @rpc_delay(ptr noundef %0, i32 noundef 300) #20
  br label %84

34:                                               ; preds = %21
  tail call void @rpc_delay(ptr noundef %0, i32 noundef 25) #20
  br label %84

35:                                               ; preds = %21
  tail call fastcc void @trace_rpcb_timeout_err(ptr noundef %0)
  br label %84

36:                                               ; preds = %21
  tail call fastcc void @trace_rpcb_bind_version_err(ptr noundef %0)
  br label %63

37:                                               ; preds = %21
  tail call fastcc void @trace_rpcb_bind_version_err(ptr noundef %0)
  br label %84

38:                                               ; preds = %21, %21, %21, %21, %21, %21, %21, %21, %21
  %39 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_rpcb_unreachable_err, i32 0, i32 1), align 4
  %40 = icmp sgt i32 %39, 0
  br i1 %40, label %41, label %54

41:                                               ; preds = %38
  %42 = tail call ptr @llvm.thread.pointer() #20
  %43 = getelementptr inbounds %struct.thread_info, ptr %42, i32 0, i32 2
  %44 = load i32, ptr %43, align 8
  %45 = lshr i32 %44, 5
  %46 = getelementptr i32, ptr @__cpu_online_mask, i32 %45
  %47 = load volatile i32, ptr %46, align 4
  %48 = and i32 %44, 31
  %49 = shl nuw i32 1, %48
  %50 = and i32 %49, %47
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %54, label %52

52:                                               ; preds = %41
  tail call void asm sideeffect "", "~{memory}"() #20, !srcloc !91
  %53 = tail call i32 @__traceiter_rpcb_unreachable_err(ptr noundef null, ptr noundef %0) #20
  tail call void asm sideeffect "", "~{memory}"() #20, !srcloc !92
  br label %54

54:                                               ; preds = %52, %41, %38
  %55 = getelementptr inbounds %struct.rpc_task, ptr %0, i32 0, i32 20
  %56 = load i16, ptr %55, align 4
  %57 = and i16 %56, 1024
  %58 = icmp eq i16 %57, 0
  br i1 %58, label %59, label %60

59:                                               ; preds = %54
  tail call void @rpc_delay(ptr noundef %0, i32 noundef 500) #20
  br label %84

60:                                               ; preds = %54
  %61 = load i32, ptr %12, align 4
  br label %63

62:                                               ; preds = %21
  tail call fastcc void @trace_rpcb_unrecognized_err(ptr noundef %0)
  br label %63

63:                                               ; preds = %62, %60, %36, %28, %23
  %64 = phi i32 [ -5, %62 ], [ %61, %60 ], [ -5, %36 ], [ -5, %28 ], [ -95, %23 ]
  %65 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_rpc_call_rpcerror, i32 0, i32 1), align 4
  %66 = icmp sgt i32 %65, 0
  br i1 %66, label %67, label %80

67:                                               ; preds = %63
  %68 = tail call ptr @llvm.thread.pointer() #20
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
  tail call void asm sideeffect "", "~{memory}"() #20, !srcloc !50
  %79 = tail call i32 @__traceiter_rpc_call_rpcerror(ptr noundef null, ptr noundef %0, i32 noundef %64, i32 noundef %64) #20
  tail call void asm sideeffect "", "~{memory}"() #20, !srcloc !51
  br label %80

80:                                               ; preds = %78, %67, %63
  %81 = getelementptr inbounds %struct.rpc_task, ptr %0, i32 0, i32 9
  store i32 %64, ptr %81, align 4
  tail call void @rpc_exit(ptr noundef %0, i32 noundef %64) #20
  br label %86

82:                                               ; preds = %20, %11
  %83 = getelementptr inbounds %struct.rpc_task, ptr %0, i32 0, i32 4
  store ptr @call_connect, ptr %83, align 4
  br label %86

84:                                               ; preds = %59, %37, %35, %34, %32, %22, %21
  store i32 0, ptr %12, align 4
  %85 = getelementptr inbounds %struct.rpc_task, ptr %0, i32 0, i32 4
  store ptr @call_bind, ptr %85, align 4
  tail call fastcc void @rpc_check_timeout(ptr noundef %0)
  br label %86

86:                                               ; preds = %84, %82, %80, %9
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @trace_rpcb_prog_unavail_err(ptr noundef %0) unnamed_addr #11 {
  %2 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_rpcb_prog_unavail_err, i32 0, i32 1), align 4
  %3 = icmp sgt i32 %2, 0
  br i1 %3, label %4, label %17

4:                                                ; preds = %1
  %5 = tail call ptr @llvm.thread.pointer() #20
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
  tail call void asm sideeffect "", "~{memory}"() #20, !srcloc !93
  %16 = tail call i32 @__traceiter_rpcb_prog_unavail_err(ptr noundef null, ptr noundef %0) #20
  tail call void asm sideeffect "", "~{memory}"() #20, !srcloc !94
  br label %17

17:                                               ; preds = %15, %4, %1
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @trace_rpcb_timeout_err(ptr noundef %0) unnamed_addr #11 {
  %2 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_rpcb_timeout_err, i32 0, i32 1), align 4
  %3 = icmp sgt i32 %2, 0
  br i1 %3, label %4, label %17

4:                                                ; preds = %1
  %5 = tail call ptr @llvm.thread.pointer() #20
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
  tail call void asm sideeffect "", "~{memory}"() #20, !srcloc !95
  %16 = tail call i32 @__traceiter_rpcb_timeout_err(ptr noundef null, ptr noundef %0) #20
  tail call void asm sideeffect "", "~{memory}"() #20, !srcloc !96
  br label %17

17:                                               ; preds = %15, %4, %1
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @trace_rpcb_bind_version_err(ptr noundef %0) unnamed_addr #11 {
  %2 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_rpcb_bind_version_err, i32 0, i32 1), align 4
  %3 = icmp sgt i32 %2, 0
  br i1 %3, label %4, label %17

4:                                                ; preds = %1
  %5 = tail call ptr @llvm.thread.pointer() #20
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
  tail call void asm sideeffect "", "~{memory}"() #20, !srcloc !97
  %16 = tail call i32 @__traceiter_rpcb_bind_version_err(ptr noundef null, ptr noundef %0) #20
  tail call void asm sideeffect "", "~{memory}"() #20, !srcloc !98
  br label %17

17:                                               ; preds = %15, %4, %1
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @trace_rpcb_unrecognized_err(ptr noundef %0) unnamed_addr #11 {
  %2 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_rpcb_unrecognized_err, i32 0, i32 1), align 4
  %3 = icmp sgt i32 %2, 0
  br i1 %3, label %4, label %17

4:                                                ; preds = %1
  %5 = tail call ptr @llvm.thread.pointer() #20
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
  tail call void asm sideeffect "", "~{memory}"() #20, !srcloc !99
  %16 = tail call i32 @__traceiter_rpcb_unrecognized_err(ptr noundef null, ptr noundef %0) #20
  tail call void asm sideeffect "", "~{memory}"() #20, !srcloc !100
  br label %17

17:                                               ; preds = %15, %4, %1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_rpcb_prog_unavail_err(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_rpcb_timeout_err(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_rpcb_bind_version_err(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_rpcb_unreachable_err(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_rpcb_unrecognized_err(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @call_connect_status(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.rpc_task, ptr %0, i32 0, i32 16
  %3 = load ptr, ptr %2, align 4
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.rpc_task, ptr %0, i32 0, i32 13
  %6 = load ptr, ptr %5, align 8
  %7 = getelementptr inbounds %struct.rpc_task, ptr %0, i32 0, i32 1
  %8 = load i32, ptr %7, align 4
  %9 = getelementptr inbounds %struct.rpc_task, ptr %0, i32 0, i32 6
  %10 = load volatile i32, ptr %9, align 4
  %11 = and i32 %10, 8
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %15

13:                                               ; preds = %1
  tail call void @xprt_end_transmit(ptr noundef %0) #20
  %14 = getelementptr inbounds %struct.rpc_task, ptr %0, i32 0, i32 4
  store ptr @call_transmit_status, ptr %14, align 4
  br label %123

15:                                               ; preds = %1
  %16 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_rpc_connect_status, i32 0, i32 1), align 4
  %17 = icmp sgt i32 %16, 0
  br i1 %17, label %18, label %32

18:                                               ; preds = %15
  %19 = tail call ptr @llvm.thread.pointer() #20
  %20 = getelementptr inbounds %struct.thread_info, ptr %19, i32 0, i32 2
  %21 = load i32, ptr %20, align 8
  %22 = lshr i32 %21, 5
  %23 = getelementptr i32, ptr @__cpu_online_mask, i32 %22
  %24 = load volatile i32, ptr %23, align 4
  %25 = and i32 %21, 31
  %26 = shl nuw i32 1, %25
  %27 = and i32 %26, %24
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %32, label %29

29:                                               ; preds = %18
  tail call void asm sideeffect "", "~{memory}"() #20, !srcloc !101
  %30 = tail call i32 @__traceiter_rpc_connect_status(ptr noundef null, ptr noundef %0) #20
  tail call void asm sideeffect "", "~{memory}"() #20, !srcloc !102
  %31 = load i32, ptr %7, align 4
  br label %32

32:                                               ; preds = %29, %18, %15
  %33 = phi i32 [ %8, %15 ], [ %8, %18 ], [ %31, %29 ]
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %35, label %41

35:                                               ; preds = %32
  %36 = getelementptr inbounds %struct.rpc_clnt, ptr %6, i32 0, i32 12
  %37 = load ptr, ptr %36, align 4
  %38 = getelementptr inbounds %struct.rpc_stat, ptr %37, i32 0, i32 5
  %39 = load i32, ptr %38, align 4
  %40 = add i32 %39, 1
  store i32 %40, ptr %38, align 4
  br label %119

41:                                               ; preds = %32
  %42 = getelementptr inbounds %struct.rpc_xprt, ptr %4, i32 0, i32 18
  %43 = load volatile i32, ptr %42, align 4
  %44 = and i32 %43, 2
  %45 = icmp eq i32 %44, 0
  store i32 0, ptr %7, align 4
  br i1 %45, label %46, label %119

46:                                               ; preds = %41
  switch i32 %8, label %101 [
    i32 -111, label %47
    i32 -104, label %61
    i32 -103, label %61
    i32 -100, label %61
    i32 -101, label %61
    i32 -113, label %61
    i32 -32, label %61
    i32 -71, label %61
    i32 -98, label %71
    i32 -107, label %71
    i32 -11, label %71
    i32 -110, label %71
    i32 -105, label %100
  ]

47:                                               ; preds = %46
  %48 = getelementptr inbounds %struct.rpc_task, ptr %0, i32 0, i32 20
  %49 = load i16, ptr %48, align 4
  %50 = and i16 %49, 1024
  %51 = icmp eq i16 %50, 0
  br i1 %51, label %52, label %101

52:                                               ; preds = %47
  %53 = getelementptr inbounds %struct.rpc_clnt, ptr %6, i32 0, i32 14
  %54 = load i8, ptr %53, align 4
  %55 = and i8 %54, 16
  %56 = icmp eq i8 %55, 0
  br i1 %56, label %61, label %57

57:                                               ; preds = %52
  tail call void asm sideeffect "", "~{memory}"() #20, !srcloc !10
  %58 = getelementptr inbounds %struct.rpc_clnt, ptr %6, i32 0, i32 6
  %59 = load volatile ptr, ptr %58, align 4
  %60 = getelementptr inbounds %struct.rpc_xprt, ptr %59, i32 0, i32 18
  tail call void @_clear_bit(i32 noundef 4, ptr noundef %60) #20
  tail call void asm sideeffect "", "~{memory}"() #20, !srcloc !11
  br label %121

61:                                               ; preds = %52, %46, %46, %46, %46, %46, %46, %46
  %62 = load ptr, ptr %2, align 4
  %63 = load ptr, ptr %62, align 8
  %64 = getelementptr inbounds %struct.rpc_rqst, ptr %62, i32 0, i32 26
  %65 = load i32, ptr %64, align 4
  tail call void @xprt_conditional_disconnect(ptr noundef %63, i32 noundef %65) #20
  %66 = getelementptr inbounds %struct.rpc_task, ptr %0, i32 0, i32 20
  %67 = load i16, ptr %66, align 4
  %68 = and i16 %67, 1024
  %69 = icmp eq i16 %68, 0
  br i1 %69, label %70, label %101

70:                                               ; preds = %61
  tail call void @rpc_delay(ptr noundef %0, i32 noundef 300) #20
  br label %71

71:                                               ; preds = %70, %46, %46, %46, %46
  %72 = getelementptr inbounds %struct.rpc_task, ptr %0, i32 0, i32 20
  %73 = load i16, ptr %72, align 4
  %74 = and i16 %73, 260
  %75 = icmp eq i16 %74, 4
  br i1 %75, label %76, label %121

76:                                               ; preds = %71
  %77 = load volatile i32, ptr %42, align 4
  %78 = and i32 %77, 256
  %79 = icmp eq i32 %78, 0
  br i1 %79, label %121, label %80

80:                                               ; preds = %76
  %81 = getelementptr inbounds %struct.rpc_task, ptr %0, i32 0, i32 14
  %82 = load ptr, ptr %81, align 4
  tail call void asm sideeffect "", "~{memory}"() #20, !srcloc !10
  %83 = getelementptr inbounds %struct.rpc_clnt, ptr %6, i32 0, i32 27
  %84 = load volatile ptr, ptr %83, align 4
  %85 = tail call ptr @xprt_switch_get(ptr noundef %84) #20
  tail call void asm sideeffect "", "~{memory}"() #20, !srcloc !11
  %86 = getelementptr inbounds %struct.rpc_xprt_switch, ptr %85, i32 0, i32 3
  %87 = load i32, ptr %86, align 4
  %88 = icmp ugt i32 %87, 1
  br i1 %88, label %89, label %97

89:                                               ; preds = %80
  tail call void @xprt_release(ptr noundef %0) #20
  %90 = getelementptr inbounds %struct.rpc_xprt, ptr %4, i32 0, i32 32
  tail call void asm sideeffect "dmb ish", "~{memory}"() #20, !srcloc !30
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %90) #20, !srcloc !24
  %91 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %90, ptr %90, i32 1, ptr elementtype(i32) %90) #20, !srcloc !31
  %92 = extractvalue { i32, i32 } %91, 0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #20, !srcloc !32
  %93 = icmp eq i32 %92, 0
  br i1 %93, label %94, label %95

94:                                               ; preds = %89
  tail call void @rpc_xprt_switch_remove_xprt(ptr noundef %85, ptr noundef %82) #20
  br label %95

95:                                               ; preds = %94, %89
  tail call void @xprt_put(ptr noundef %82) #20
  store ptr null, ptr %81, align 4
  %96 = getelementptr inbounds %struct.rpc_task, ptr %0, i32 0, i32 4
  store ptr @call_start, ptr %96, align 4
  br label %97

97:                                               ; preds = %95, %80
  tail call void @xprt_switch_put(ptr noundef %85) #20
  %98 = load ptr, ptr %81, align 4
  %99 = icmp eq ptr %98, null
  br i1 %99, label %123, label %121

100:                                              ; preds = %46
  tail call void @rpc_delay(ptr noundef %0, i32 noundef 25) #20
  br label %121

101:                                              ; preds = %61, %47, %46
  %102 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_rpc_call_rpcerror, i32 0, i32 1), align 4
  %103 = icmp sgt i32 %102, 0
  br i1 %103, label %104, label %117

104:                                              ; preds = %101
  %105 = tail call ptr @llvm.thread.pointer() #20
  %106 = getelementptr inbounds %struct.thread_info, ptr %105, i32 0, i32 2
  %107 = load i32, ptr %106, align 8
  %108 = lshr i32 %107, 5
  %109 = getelementptr i32, ptr @__cpu_online_mask, i32 %108
  %110 = load volatile i32, ptr %109, align 4
  %111 = and i32 %107, 31
  %112 = shl nuw i32 1, %111
  %113 = and i32 %112, %110
  %114 = icmp eq i32 %113, 0
  br i1 %114, label %117, label %115

115:                                              ; preds = %104
  tail call void asm sideeffect "", "~{memory}"() #20, !srcloc !50
  %116 = tail call i32 @__traceiter_rpc_call_rpcerror(ptr noundef null, ptr noundef %0, i32 noundef %8, i32 noundef %8) #20
  tail call void asm sideeffect "", "~{memory}"() #20, !srcloc !51
  br label %117

117:                                              ; preds = %115, %104, %101
  %118 = getelementptr inbounds %struct.rpc_task, ptr %0, i32 0, i32 9
  store i32 %8, ptr %118, align 4
  tail call void @rpc_exit(ptr noundef %0, i32 noundef %8) #20
  br label %123

119:                                              ; preds = %41, %35
  %120 = getelementptr inbounds %struct.rpc_task, ptr %0, i32 0, i32 4
  store ptr @call_transmit, ptr %120, align 4
  br label %123

121:                                              ; preds = %100, %97, %76, %71, %57
  %122 = getelementptr inbounds %struct.rpc_task, ptr %0, i32 0, i32 4
  store ptr @call_bind, ptr %122, align 4
  tail call fastcc void @rpc_check_timeout(ptr noundef %0)
  br label %123

123:                                              ; preds = %121, %119, %117, %97, %13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @xprt_connect(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @rpc_xprt_switch_remove_xprt(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_rpc_connect_status(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_rpc_buf_alloc(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_rpc_retry_refresh_status(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_rpc_refresh_status(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @xprt_retry_reserve(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @call_bc_transmit(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.rpc_task, ptr %0, i32 0, i32 4
  store ptr @call_bc_transmit_status, ptr %2, align 4
  %3 = getelementptr inbounds %struct.rpc_task, ptr %0, i32 0, i32 6
  %4 = load volatile i32, ptr %3, align 4
  %5 = and i32 %4, 8
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %11, label %7

7:                                                ; preds = %1
  %8 = tail call zeroext i1 @xprt_prepare_transmit(ptr noundef %0) #20
  br i1 %8, label %9, label %12

9:                                                ; preds = %7
  %10 = getelementptr inbounds %struct.rpc_task, ptr %0, i32 0, i32 1
  store i32 0, ptr %10, align 4
  tail call void @xprt_transmit(ptr noundef %0) #20
  br label %11

11:                                               ; preds = %9, %1
  tail call void @xprt_end_transmit(ptr noundef %0) #20
  br label %12

12:                                               ; preds = %11, %7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @call_bc_transmit_status(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.rpc_task, ptr %0, i32 0, i32 16
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.rpc_task, ptr %0, i32 0, i32 6
  %5 = load volatile i32, ptr %4, align 4
  %6 = and i32 %5, 8
  %7 = icmp eq i32 %6, 0
  %8 = getelementptr inbounds %struct.rpc_task, ptr %0, i32 0, i32 1
  br i1 %7, label %9, label %10

9:                                                ; preds = %1
  store i32 0, ptr %8, align 4
  br label %22

10:                                               ; preds = %1
  %11 = load i32, ptr %8, align 4
  %12 = getelementptr inbounds %struct.rpc_task, ptr %0, i32 0, i32 1
  switch i32 %11, label %20 [
    i32 0, label %22
    i32 -100, label %22
    i32 -112, label %22
    i32 -113, label %22
    i32 -101, label %22
    i32 -104, label %22
    i32 -111, label %22
    i32 -98, label %22
    i32 -107, label %22
    i32 -32, label %22
    i32 -105, label %13
    i32 -57, label %14
    i32 -11, label %14
    i32 -110, label %15
  ]

13:                                               ; preds = %10
  tail call void @rpc_delay(ptr noundef %0, i32 noundef 25) #20
  br label %14

14:                                               ; preds = %13, %10, %10
  store i32 0, ptr %12, align 4
  br label %22

15:                                               ; preds = %10
  %16 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.21, i32 noundef -110) #21
  %17 = load ptr, ptr %3, align 8
  %18 = getelementptr inbounds %struct.rpc_rqst, ptr %3, i32 0, i32 26
  %19 = load i32, ptr %18, align 4
  tail call void @xprt_conditional_disconnect(ptr noundef %17, i32 noundef %19) #20
  br label %22

20:                                               ; preds = %10
  %21 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.21, i32 noundef %11) #21
  br label %22

22:                                               ; preds = %20, %15, %14, %10, %10, %10, %10, %10, %10, %10, %10, %10, %10, %9
  %23 = phi ptr [ @call_bc_transmit, %14 ], [ @rpc_exit_task, %9 ], [ @rpc_exit_task, %10 ], [ @rpc_exit_task, %10 ], [ @rpc_exit_task, %10 ], [ @rpc_exit_task, %10 ], [ @rpc_exit_task, %10 ], [ @rpc_exit_task, %10 ], [ @rpc_exit_task, %10 ], [ @rpc_exit_task, %10 ], [ @rpc_exit_task, %10 ], [ @rpc_exit_task, %10 ], [ @rpc_exit_task, %20 ], [ @rpc_exit_task, %15 ]
  %24 = getelementptr inbounds %struct.rpc_task, ptr %0, i32 0, i32 4
  store ptr %23, ptr %24, align 4
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal void @rpcproc_encode_null(ptr nocapture noundef %0, ptr nocapture noundef %1, ptr nocapture noundef %2) #14 {
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal i32 @rpcproc_decode_null(ptr nocapture noundef readnone %0, ptr nocapture noundef readnone %1, ptr nocapture noundef readnone %2) #14 {
  ret i32 0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal void @rpc_null_call_prepare(ptr nocapture noundef %0, ptr nocapture noundef readnone %1) #17 {
  %3 = getelementptr inbounds %struct.rpc_task, ptr %0, i32 0, i32 20
  %4 = load i16, ptr %3, align 4
  %5 = and i16 %4, -16385
  store i16 %5, ptr %3, align 4
  %6 = getelementptr inbounds %struct.rpc_task, ptr %0, i32 0, i32 4
  store ptr @call_start, ptr %6, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #18

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @rpc_cb_add_xprt_done(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #0 {
  %3 = getelementptr inbounds %struct.rpc_task, ptr %0, i32 0, i32 1
  %4 = load i32, ptr %3, align 4
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %10

6:                                                ; preds = %2
  %7 = load ptr, ptr %1, align 4
  %8 = getelementptr inbounds %struct.rpc_cb_add_xprt_calldata, ptr %1, i32 0, i32 1
  %9 = load ptr, ptr %8, align 4
  tail call void @rpc_xprt_switch_add_xprt(ptr noundef %7, ptr noundef %9) #20
  br label %10

10:                                               ; preds = %6, %2
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #15

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #19

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.fshl.i32(i32, i32, i32) #15

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #15

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { argmemonly nofree nounwind willreturn writeonly }
attributes #4 = { nofree nounwind null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { argmemonly nofree nounwind willreturn }
attributes #7 = { mustprogress nofree norecurse nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #10 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #11 = { inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #12 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #13 = { nofree null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #14 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #15 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #16 = { noinline nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #17 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #18 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #19 = { argmemonly nofree nounwind readonly willreturn }
attributes #20 = { nounwind }
attributes #21 = { cold nounwind }
attributes #22 = { nounwind allocsize(2) }

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
!8 = !{!"auto-init"}
!9 = !{!"branch_weights", i32 1, i32 2000}
!10 = !{i64 2149116811}
!11 = !{i64 2149117028}
!12 = !{i64 2156242355}
!13 = !{i64 2156242525}
!14 = !{i64 2158319154}
!15 = !{i64 2148998456}
!16 = !{i64 2148994280}
!17 = !{i64 2148994355, i64 2148994382, i64 2148994429, i64 2148994451, i64 2148994479, i64 2148994499}
!18 = !{i64 2149021459}
!19 = !{i64 2156170658}
!20 = !{i64 2156170820}
!21 = !{i64 2156187471}
!22 = !{i64 2156187641}
!23 = !{i64 2148216997}
!24 = !{i64 613931, i64 2148103902, i64 2148103928, i64 2148103975, i64 2148103997, i64 2148104025, i64 2148104045}
!25 = !{i64 2148119132, i64 2148119164, i64 2148119193, i64 2148119227, i64 2148119258, i64 2148119281}
!26 = !{!"branch_weights", i32 2000, i32 1}
!27 = !{i64 2149066444}
!28 = !{i64 2156150214}
!29 = !{i64 2156150366}
!30 = !{i64 2148215996}
!31 = !{i64 2148118358, i64 2148118390, i64 2148118419, i64 2148118453, i64 2148118484, i64 2148118507}
!32 = !{i64 2148216199}
!33 = !{i64 2156117754}
!34 = !{i64 2156117906}
!35 = !{i64 2156133977}
!36 = !{i64 2156134131}
!37 = !{i64 2148115317, i64 2148115343, i64 2148115372, i64 2148115406, i64 2148115437, i64 2148115460}
!38 = !{i64 2148117674, i64 2148117700, i64 2148117729, i64 2148117763, i64 2148117794, i64 2148117817}
!39 = !{i64 2148116775, i64 2148116807, i64 2148116836, i64 2148116870, i64 2148116901, i64 2148116924}
!40 = !{i64 2156081339}
!41 = !{i64 2156081507}
!42 = !{i64 2156344471}
!43 = !{i64 2156344613}
!44 = !{i64 2156225823}
!45 = !{i64 2156226011}
!46 = !{i64 2156205089}
!47 = !{i64 2156205279}
!48 = !{i64 2156101733}
!49 = !{i64 2156101879}
!50 = !{i64 2156854848}
!51 = !{i64 2156855048}
!52 = !{i64 2156311864}
!53 = !{i64 2156312032}
!54 = !{i64 2156328540}
!55 = !{i64 2156328696}
!56 = !{i64 2158441526, i64 2158442009, i64 2158441563, i64 2158441619, i64 2158441653, i64 2158441677, i64 2158441718, i64 2158441739, i64 2158441767, i64 2158441801}
!57 = !{i64 2158442565, i64 2158443048, i64 2158442602, i64 2158442658, i64 2158442692, i64 2158442716, i64 2158442757, i64 2158442778, i64 2158442806, i64 2158442840}
!58 = !{i64 2156838170}
!59 = !{i64 2156838332}
!60 = !{i64 2156561416}
!61 = !{i64 2156561566}
!62 = !{i64 2157249106}
!63 = !{i64 2157249260}
!64 = !{i64 2156258669}
!65 = !{i64 2156258819}
!66 = !{i64 2156295272}
!67 = !{i64 2156295428}
!68 = !{i64 2158456340}
!69 = !{i64 2156064364}
!70 = !{i64 2156064526}
!71 = !{i64 2156662893}
!72 = !{i64 2156663043}
!73 = !{i64 2156577532}
!74 = !{i64 2156577684}
!75 = !{i64 2156593746}
!76 = !{i64 2156593900}
!77 = !{i64 2156610054}
!78 = !{i64 2156610210}
!79 = !{i64 2156630437}
!80 = !{i64 2156630591}
!81 = !{i64 2156646705}
!82 = !{i64 2156646859}
!83 = !{i64 2156678893}
!84 = !{i64 2156679039}
!85 = !{i64 2156698966}
!86 = !{i64 2156699118}
!87 = !{i64 2156715060}
!88 = !{i64 2156715208}
!89 = !{i64 2156731166}
!90 = !{i64 2156731320}
!91 = !{i64 2156801081}
!92 = !{i64 2156801241}
!93 = !{i64 2156751656}
!94 = !{i64 2156751818}
!95 = !{i64 2156768101}
!96 = !{i64 2156768253}
!97 = !{i64 2156784476}
!98 = !{i64 2156784638}
!99 = !{i64 2156821733}
!100 = !{i64 2156821895}
!101 = !{i64 2156274859}
!102 = !{i64 2156275015}
