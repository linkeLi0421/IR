; ModuleID = '/llk/IR/net/sunrpc/svc.c_pt.bc'
source_filename = "../net/sunrpc/svc.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_svc_rpcb_setup:\09\09\09\09\09"
module asm "\09.asciz \09\22svc_rpcb_setup\22\09\09\09\09\09"
module asm "__kstrtabns_svc_rpcb_setup:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_svc_rpcb_cleanup:\09\09\09\09\09"
module asm "\09.asciz \09\22svc_rpcb_cleanup\22\09\09\09\09\09"
module asm "__kstrtabns_svc_rpcb_cleanup:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_svc_bind:\09\09\09\09\09"
module asm "\09.asciz \09\22svc_bind\22\09\09\09\09\09"
module asm "__kstrtabns_svc_bind:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_svc_create:\09\09\09\09\09"
module asm "\09.asciz \09\22svc_create\22\09\09\09\09\09"
module asm "__kstrtabns_svc_create:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_svc_create_pooled:\09\09\09\09\09"
module asm "\09.asciz \09\22svc_create_pooled\22\09\09\09\09\09"
module asm "__kstrtabns_svc_create_pooled:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_svc_shutdown_net:\09\09\09\09\09"
module asm "\09.asciz \09\22svc_shutdown_net\22\09\09\09\09\09"
module asm "__kstrtabns_svc_shutdown_net:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_svc_destroy:\09\09\09\09\09"
module asm "\09.asciz \09\22svc_destroy\22\09\09\09\09\09"
module asm "__kstrtabns_svc_destroy:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_svc_rqst_alloc:\09\09\09\09\09"
module asm "\09.asciz \09\22svc_rqst_alloc\22\09\09\09\09\09"
module asm "__kstrtabns_svc_rqst_alloc:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_svc_set_num_threads:\09\09\09\09\09"
module asm "\09.asciz \09\22svc_set_num_threads\22\09\09\09\09\09"
module asm "__kstrtabns_svc_set_num_threads:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_svc_rqst_replace_page:\09\09\09\09\09"
module asm "\09.asciz \09\22svc_rqst_replace_page\22\09\09\09\09\09"
module asm "__kstrtabns_svc_rqst_replace_page:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_svc_rqst_free:\09\09\09\09\09"
module asm "\09.asciz \09\22svc_rqst_free\22\09\09\09\09\09"
module asm "__kstrtabns_svc_rqst_free:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_svc_exit_thread:\09\09\09\09\09"
module asm "\09.asciz \09\22svc_exit_thread\22\09\09\09\09\09"
module asm "__kstrtabns_svc_exit_thread:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_svc_rpcbind_set_version:\09\09\09\09\09"
module asm "\09.asciz \09\22svc_rpcbind_set_version\22\09\09\09\09\09"
module asm "__kstrtabns_svc_rpcbind_set_version:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_svc_generic_rpcbind_set:\09\09\09\09\09"
module asm "\09.asciz \09\22svc_generic_rpcbind_set\22\09\09\09\09\09"
module asm "__kstrtabns_svc_generic_rpcbind_set:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_svc_generic_init_request:\09\09\09\09\09"
module asm "\09.asciz \09\22svc_generic_init_request\22\09\09\09\09\09"
module asm "__kstrtabns_svc_generic_init_request:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_svc_process:\09\09\09\09\09"
module asm "\09.asciz \09\22svc_process\22\09\09\09\09\09"
module asm "__kstrtabns_svc_process:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_bc_svc_process:\09\09\09\09\09"
module asm "\09.asciz \09\22bc_svc_process\22\09\09\09\09\09"
module asm "__kstrtabns_bc_svc_process:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_svc_max_payload:\09\09\09\09\09"
module asm "\09.asciz \09\22svc_max_payload\22\09\09\09\09\09"
module asm "__kstrtabns_svc_max_payload:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_svc_encode_result_payload:\09\09\09\09\09"
module asm "\09.asciz \09\22svc_encode_result_payload\22\09\09\09\09\09"
module asm "__kstrtabns_svc_encode_result_payload:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_svc_fill_write_vector:\09\09\09\09\09"
module asm "\09.asciz \09\22svc_fill_write_vector\22\09\09\09\09\09"
module asm "__kstrtabns_svc_fill_write_vector:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_svc_fill_symlink_pathname:\09\09\09\09\09"
module asm "\09.asciz \09\22svc_fill_symlink_pathname\22\09\09\09\09\09"
module asm "__kstrtabns_svc_fill_symlink_pathname:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.svc_pool_map = type { i32, i32, i32, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.115 }
%union.anon.115 = type { ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.lock_class_key = type {}
%struct.cpumask = type { [1 x i32] }
%struct.tracepoint = type { ptr, %struct.static_key, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.static_key = type { %struct.atomic_t }
%struct.svc_serv = type { ptr, ptr, %struct.spinlock, %struct.kref, i32, i32, i32, i32, i32, %struct.list_head, %struct.list_head, i32, %struct.timer_list, ptr, i32, ptr, ptr, %struct.list_head, %struct.spinlock, %struct.wait_queue_head, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32 }
%struct.hlist_node = type { ptr, ptr }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.svc_pool = type { i32, %struct.spinlock, %struct.list_head, i32, %struct.list_head, %struct.svc_pool_stats, i32, [16 x i8] }
%struct.svc_pool_stats = type { %struct.atomic_t, i32, %struct.atomic_t, %struct.atomic_t }
%struct.thread_info = type { i32, i32, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], [4 x i8], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.svc_program = type { ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.svc_version = type { i32, i32, ptr, ptr, i32, i8, i8, i8, ptr }
%struct.task_struct = type { %struct.thread_info, i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [32 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, [36 x i8], %struct.sched_statistics, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i8, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.104, ptr, %struct.page_frag, i32, i32, i32, i64, i64, i32, i32, ptr, %struct.kmap_ctrl, i32, ptr, %struct.refcount_struct, %struct.thread_struct, [16 x i8] }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.19 }
%struct.llist_node = type { ptr }
%union.anon.19 = type { i32 }
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
%struct.rb_node = type { i32, ptr, ptr }
%struct.vmacache = type { i64, [4 x ptr] }
%struct.task_rss_stat = type { i32, [4 x i32] }
%struct.restart_block = type { i32, ptr, %union.anon.20 }
%union.anon.20 = type { %struct.anon.21 }
%struct.anon.21 = type { ptr, i32, i32, i32, i64, ptr }
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
%struct.rb_root = type { ptr }
%struct.task_io_accounting = type {}
%struct.tlbflush_unmap_batch = type {}
%union.anon.104 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.page_frag = type { ptr, i16, i16 }
%struct.kmap_ctrl = type { i32, [16 x i32] }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
%struct.svc_rqst = type { %struct.list_head, %struct.callback_head, ptr, %struct.__kernel_sockaddr_storage, i32, %struct.__kernel_sockaddr_storage, i32, ptr, ptr, ptr, ptr, %struct.svc_cred, ptr, ptr, i32, %struct.xdr_buf, %struct.xdr_stream, %struct.xdr_stream, ptr, %struct.xdr_buf, [260 x ptr], ptr, ptr, ptr, %struct.pagevec, [259 x %struct.kvec], [259 x %struct.bio_vec], i32, i32, i32, i32, i32, i32, i32, i64, ptr, ptr, ptr, i32, i32, i32, i64, %struct.cache_req, ptr, ptr, ptr, ptr, %struct.spinlock, ptr, ptr }
%struct.__kernel_sockaddr_storage = type { %union.anon.135 }
%union.anon.135 = type { ptr, [124 x i8] }
%struct.svc_cred = type { %struct.kuid_t, %struct.kgid_t, ptr, i32, ptr, ptr, ptr, ptr }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%struct.xdr_stream = type { ptr, ptr, ptr, ptr, %struct.kvec, ptr, i32, ptr }
%struct.kvec = type { ptr, i32 }
%struct.xdr_buf = type { [1 x %struct.kvec], [1 x %struct.kvec], ptr, ptr, i32, i32, i32, i32, i32 }
%struct.pagevec = type { i8, i8, [15 x ptr] }
%struct.bio_vec = type { ptr, i32, i32 }
%struct.cache_req = type { ptr, i32 }
%struct.page = type { i32, %union.anon.1, %union.anon.114, %struct.atomic_t }
%union.anon.1 = type { %struct.anon }
%struct.anon = type { %struct.list_head, ptr, i32, i32 }
%union.anon.114 = type { %struct.atomic_t }
%struct.svc_serv_ops = type { ptr, ptr, ptr, ptr }
%struct.sockaddr_in6 = type { i16, i16, i32, %struct.in6_addr, i32 }
%struct.in6_addr = type { %union.anon.69 }
%union.anon.69 = type { [4 x i32] }
%struct.sockaddr_in = type { i16, i16, %struct.in_addr, [8 x i8] }
%struct.in_addr = type { i32 }
%struct.svc_xprt = type { ptr, ptr, %struct.kref, %struct.list_head, %struct.list_head, i32, ptr, %struct.atomic_t, %struct.atomic_t, %struct.mutex, %struct.spinlock, ptr, %struct.list_head, %struct.__kernel_sockaddr_storage, i32, %struct.__kernel_sockaddr_storage, i32, [58 x i8], %struct.list_head, ptr, ptr, ptr, ptr }
%struct.svc_procedure = type { ptr, ptr, ptr, ptr, i32, i32, i32, i32, ptr }
%struct.anon.142 = type { i32, i32 }
%struct.svc_stat = type { ptr, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.svc_process_info = type { %union.anon.141 }
%union.anon.141 = type { %struct.anon.142 }
%struct.rpc_rqst = type { ptr, %struct.xdr_buf, %struct.xdr_buf, ptr, ptr, i32, i32, i32, i32, ptr, ptr, %union.anon.139, %struct.list_head, %struct.list_head, ptr, i32, ptr, i32, i32, i32, %struct.xdr_buf, i32, i32, i32, i64, i32, i32, %struct.atomic_t, i32, i64, i32, %struct.list_head, i32, %struct.list_head }
%union.anon.139 = type { %struct.rb_node }
%struct.rpc_xprt = type { %struct.kref, ptr, i32, ptr, %struct.__kernel_sockaddr_storage, i32, i32, i32, i32, i32, %struct.rpc_wait_queue, %struct.rpc_wait_queue, %struct.rpc_wait_queue, %struct.rpc_wait_queue, %struct.list_head, i32, i32, i32, i32, i8, %struct.atomic_t, i32, %struct.list_head, i32, i32, i32, %struct.work_struct, %struct.timer_list, i32, i32, i32, i32, %struct.atomic_t, %struct.spinlock, %struct.spinlock, %struct.spinlock, i32, ptr, %struct.list_head, %struct.atomic_t, ptr, ptr, i32, i32, %struct.atomic_t, %struct.spinlock, %struct.list_head, %struct.rb_root, %struct.anon.140, ptr, ptr, [6 x ptr], %struct.callback_head, ptr, ptr, i8 }
%struct.rpc_wait_queue = type { %struct.spinlock, [4 x %struct.list_head], i8, i8, i8, i16, %struct.rpc_timer, ptr }
%struct.rpc_timer = type { %struct.list_head, i32, %struct.delayed_work }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.anon.140 = type { i32, i32, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64 }
%struct.rpc_task = type { %struct.atomic_t, i32, %struct.list_head, ptr, ptr, i32, i32, ptr, %union.anon.137, i32, %struct.rpc_message, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64, i32, i16, i16, i16, i8 }
%union.anon.137 = type { %struct.rpc_wait }
%struct.rpc_wait = type { %struct.list_head, %struct.list_head, %struct.list_head }
%struct.rpc_message = type { ptr, ptr, ptr, ptr }
%struct.svc_xprt_class = type { ptr, ptr, ptr, %struct.list_head, i32, i32 }
%struct.svc_xprt_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }

@__param_str_pool_mode = internal constant [17 x i8] c"sunrpc.pool_mode\00", align 1
@__param_ops_pool_mode = internal constant %struct.kernel_param_ops { i32 0, ptr @param_set_pool_mode, ptr @param_get_pool_mode, ptr null }, align 4
@svc_pool_map = internal global %struct.svc_pool_map zeroinitializer, align 4
@__param_pool_mode = internal constant %struct.kernel_param { ptr @__param_str_pool_mode, ptr null, ptr @__param_ops_pool_mode, i16 420, i8 -1, i8 0, %union.anon.115 { ptr getelementptr (i8, ptr @svc_pool_map, i64 4) } }, section "__param", align 4
@__kstrtab_svc_rpcb_setup = external dso_local constant [0 x i8], align 1
@__kstrtabns_svc_rpcb_setup = external dso_local constant [0 x i8], align 1
@__ksymtab_svc_rpcb_setup = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @svc_rpcb_setup to i32), ptr @__kstrtab_svc_rpcb_setup, ptr @__kstrtabns_svc_rpcb_setup }, section "___ksymtab_gpl+svc_rpcb_setup", align 4
@__kstrtab_svc_rpcb_cleanup = external dso_local constant [0 x i8], align 1
@__kstrtabns_svc_rpcb_cleanup = external dso_local constant [0 x i8], align 1
@__ksymtab_svc_rpcb_cleanup = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @svc_rpcb_cleanup to i32), ptr @__kstrtab_svc_rpcb_cleanup, ptr @__kstrtabns_svc_rpcb_cleanup }, section "___ksymtab_gpl+svc_rpcb_cleanup", align 4
@__kstrtab_svc_bind = external dso_local constant [0 x i8], align 1
@__kstrtabns_svc_bind = external dso_local constant [0 x i8], align 1
@__ksymtab_svc_bind = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @svc_bind to i32), ptr @__kstrtab_svc_bind, ptr @__kstrtabns_svc_bind }, section "___ksymtab_gpl+svc_bind", align 4
@__kstrtab_svc_create = external dso_local constant [0 x i8], align 1
@__kstrtabns_svc_create = external dso_local constant [0 x i8], align 1
@__ksymtab_svc_create = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @svc_create to i32), ptr @__kstrtab_svc_create, ptr @__kstrtabns_svc_create }, section "___ksymtab_gpl+svc_create", align 4
@__kstrtab_svc_create_pooled = external dso_local constant [0 x i8], align 1
@__kstrtabns_svc_create_pooled = external dso_local constant [0 x i8], align 1
@__ksymtab_svc_create_pooled = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @svc_create_pooled to i32), ptr @__kstrtab_svc_create_pooled, ptr @__kstrtabns_svc_create_pooled }, section "___ksymtab_gpl+svc_create_pooled", align 4
@__kstrtab_svc_shutdown_net = external dso_local constant [0 x i8], align 1
@__kstrtabns_svc_shutdown_net = external dso_local constant [0 x i8], align 1
@__ksymtab_svc_shutdown_net = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @svc_shutdown_net to i32), ptr @__kstrtab_svc_shutdown_net, ptr @__kstrtabns_svc_shutdown_net }, section "___ksymtab_gpl+svc_shutdown_net", align 4
@__kstrtab_svc_destroy = external dso_local constant [0 x i8], align 1
@__kstrtabns_svc_destroy = external dso_local constant [0 x i8], align 1
@__ksymtab_svc_destroy = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @svc_destroy to i32), ptr @__kstrtab_svc_destroy, ptr @__kstrtabns_svc_destroy }, section "___ksymtab_gpl+svc_destroy", align 4
@__kstrtab_svc_rqst_alloc = external dso_local constant [0 x i8], align 1
@__kstrtabns_svc_rqst_alloc = external dso_local constant [0 x i8], align 1
@__ksymtab_svc_rqst_alloc = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @svc_rqst_alloc to i32), ptr @__kstrtab_svc_rqst_alloc, ptr @__kstrtabns_svc_rqst_alloc }, section "___ksymtab_gpl+svc_rqst_alloc", align 4
@__kstrtab_svc_set_num_threads = external dso_local constant [0 x i8], align 1
@__kstrtabns_svc_set_num_threads = external dso_local constant [0 x i8], align 1
@__ksymtab_svc_set_num_threads = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @svc_set_num_threads to i32), ptr @__kstrtab_svc_set_num_threads, ptr @__kstrtabns_svc_set_num_threads }, section "___ksymtab_gpl+svc_set_num_threads", align 4
@__kstrtab_svc_rqst_replace_page = external dso_local constant [0 x i8], align 1
@__kstrtabns_svc_rqst_replace_page = external dso_local constant [0 x i8], align 1
@__ksymtab_svc_rqst_replace_page = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @svc_rqst_replace_page to i32), ptr @__kstrtab_svc_rqst_replace_page, ptr @__kstrtabns_svc_rqst_replace_page }, section "___ksymtab_gpl+svc_rqst_replace_page", align 4
@__kstrtab_svc_rqst_free = external dso_local constant [0 x i8], align 1
@__kstrtabns_svc_rqst_free = external dso_local constant [0 x i8], align 1
@__ksymtab_svc_rqst_free = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @svc_rqst_free to i32), ptr @__kstrtab_svc_rqst_free, ptr @__kstrtabns_svc_rqst_free }, section "___ksymtab_gpl+svc_rqst_free", align 4
@__kstrtab_svc_exit_thread = external dso_local constant [0 x i8], align 1
@__kstrtabns_svc_exit_thread = external dso_local constant [0 x i8], align 1
@__ksymtab_svc_exit_thread = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @svc_exit_thread to i32), ptr @__kstrtab_svc_exit_thread, ptr @__kstrtabns_svc_exit_thread }, section "___ksymtab_gpl+svc_exit_thread", align 4
@__kstrtab_svc_rpcbind_set_version = external dso_local constant [0 x i8], align 1
@__kstrtabns_svc_rpcbind_set_version = external dso_local constant [0 x i8], align 1
@__ksymtab_svc_rpcbind_set_version = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @svc_rpcbind_set_version to i32), ptr @__kstrtab_svc_rpcbind_set_version, ptr @__kstrtabns_svc_rpcbind_set_version }, section "___ksymtab_gpl+svc_rpcbind_set_version", align 4
@__kstrtab_svc_generic_rpcbind_set = external dso_local constant [0 x i8], align 1
@__kstrtabns_svc_generic_rpcbind_set = external dso_local constant [0 x i8], align 1
@__ksymtab_svc_generic_rpcbind_set = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @svc_generic_rpcbind_set to i32), ptr @__kstrtab_svc_generic_rpcbind_set, ptr @__kstrtabns_svc_generic_rpcbind_set }, section "___ksymtab_gpl+svc_generic_rpcbind_set", align 4
@svc_register.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str = private unnamed_addr constant [17 x i8] c"net/sunrpc/svc.c\00", align 1
@.str.1 = private unnamed_addr constant [57 x i8] c"\014svc: failed to register %sv%u RPC service (errno %d).\0A\00", align 1
@__kstrtab_svc_generic_init_request = external dso_local constant [0 x i8], align 1
@__kstrtabns_svc_generic_init_request = external dso_local constant [0 x i8], align 1
@__ksymtab_svc_generic_init_request = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @svc_generic_init_request to i32), ptr @__kstrtab_svc_generic_init_request, ptr @__kstrtabns_svc_generic_init_request }, section "___ksymtab_gpl+svc_generic_init_request", align 4
@__kstrtab_svc_process = external dso_local constant [0 x i8], align 1
@__kstrtabns_svc_process = external dso_local constant [0 x i8], align 1
@__ksymtab_svc_process = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @svc_process to i32), ptr @__kstrtab_svc_process, ptr @__kstrtabns_svc_process }, section "___ksymtab_gpl+svc_process", align 4
@bc_svc_process.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@__kstrtab_bc_svc_process = external dso_local constant [0 x i8], align 1
@__kstrtabns_bc_svc_process = external dso_local constant [0 x i8], align 1
@__ksymtab_bc_svc_process = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @bc_svc_process to i32), ptr @__kstrtab_bc_svc_process, ptr @__kstrtabns_bc_svc_process }, section "___ksymtab_gpl+bc_svc_process", align 4
@__kstrtab_svc_max_payload = external dso_local constant [0 x i8], align 1
@__kstrtabns_svc_max_payload = external dso_local constant [0 x i8], align 1
@__ksymtab_svc_max_payload = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @svc_max_payload to i32), ptr @__kstrtab_svc_max_payload, ptr @__kstrtabns_svc_max_payload }, section "___ksymtab_gpl+svc_max_payload", align 4
@.str.3 = private unnamed_addr constant [8 x i8] c"unknown\00", align 1
@__kstrtab_svc_encode_result_payload = external dso_local constant [0 x i8], align 1
@__kstrtabns_svc_encode_result_payload = external dso_local constant [0 x i8], align 1
@__ksymtab_svc_encode_result_payload = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @svc_encode_result_payload to i32), ptr @__kstrtab_svc_encode_result_payload, ptr @__kstrtabns_svc_encode_result_payload }, section "___ksymtab_gpl+svc_encode_result_payload", align 4
@svc_fill_write_vector.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@__kstrtab_svc_fill_write_vector = external dso_local constant [0 x i8], align 1
@__kstrtabns_svc_fill_write_vector = external dso_local constant [0 x i8], align 1
@__ksymtab_svc_fill_write_vector = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @svc_fill_write_vector to i32), ptr @__kstrtab_svc_fill_write_vector, ptr @__kstrtabns_svc_fill_write_vector }, section "___ksymtab_gpl+svc_fill_write_vector", align 4
@__kstrtab_svc_fill_symlink_pathname = external dso_local constant [0 x i8], align 1
@__kstrtabns_svc_fill_symlink_pathname = external dso_local constant [0 x i8], align 1
@__ksymtab_svc_fill_symlink_pathname = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @svc_fill_symlink_pathname to i32), ptr @__kstrtab_svc_fill_symlink_pathname, ptr @__kstrtabns_svc_fill_symlink_pathname }, section "___ksymtab_gpl+svc_fill_symlink_pathname", align 4
@svc_pool_map_mutex = internal global %struct.mutex { %struct.atomic_t zeroinitializer, %struct.raw_spinlock zeroinitializer, %struct.optimistic_spin_queue zeroinitializer, %struct.list_head { ptr getelementptr (i8, ptr @svc_pool_map_mutex, i64 12), ptr getelementptr (i8, ptr @svc_pool_map_mutex, i64 12) } }, align 4
@.str.4 = private unnamed_addr constant [5 x i8] c"auto\00", align 1
@.str.5 = private unnamed_addr constant [7 x i8] c"global\00", align 1
@.str.6 = private unnamed_addr constant [7 x i8] c"percpu\00", align 1
@.str.7 = private unnamed_addr constant [8 x i8] c"pernode\00", align 1
@.str.8 = private unnamed_addr constant [6 x i8] c"auto\0A\00", align 1
@.str.9 = private unnamed_addr constant [8 x i8] c"global\0A\00", align 1
@.str.10 = private unnamed_addr constant [8 x i8] c"percpu\0A\00", align 1
@.str.11 = private unnamed_addr constant [9 x i8] c"pernode\0A\00", align 1
@.str.12 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@__svc_init_bc.__key = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.13 = private unnamed_addr constant [19 x i8] c"&serv->sv_cb_waitq\00", align 1
@svc_pool_map_get.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@__cpu_online_mask = external dso_local global %struct.cpumask, align 4
@nr_cpu_ids = external dso_local local_unnamed_addr global i32, align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@svc_init_buffer.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.14 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@svc_pool_map_set_cpumask.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@cpu_bit_bitmap = external dso_local constant [33 x [1 x i32]], align 4
@.str.15 = private unnamed_addr constant [4 x i8] c"udp\00", align 1
@.str.16 = private unnamed_addr constant [4 x i8] c"tcp\00", align 1
@.str.17 = private unnamed_addr constant [5 x i8] c"udp6\00", align 1
@.str.18 = private unnamed_addr constant [5 x i8] c"tcp6\00", align 1
@__tracepoint_svc_register = external dso_local global %struct.tracepoint, align 4
@__tracepoint_svc_noregister = external dso_local global %struct.tracepoint, align 4
@.str.20 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@__tracepoint_svc_unregister = external dso_local global %struct.tracepoint, align 4
@__tracepoint_svc_authenticate = external dso_local global %struct.tracepoint, align 4
@__tracepoint_svc_process = external dso_local global %struct.tracepoint, align 4
@llvm.compiler.used = appending global [22 x ptr] [ptr @__ksymtab_bc_svc_process, ptr @__ksymtab_svc_bind, ptr @__ksymtab_svc_create, ptr @__ksymtab_svc_create_pooled, ptr @__ksymtab_svc_destroy, ptr @__ksymtab_svc_encode_result_payload, ptr @__ksymtab_svc_exit_thread, ptr @__ksymtab_svc_fill_symlink_pathname, ptr @__ksymtab_svc_fill_write_vector, ptr @__ksymtab_svc_generic_init_request, ptr @__ksymtab_svc_generic_rpcbind_set, ptr @__ksymtab_svc_max_payload, ptr @__ksymtab_svc_process, ptr @__ksymtab_svc_rpcb_cleanup, ptr @__ksymtab_svc_rpcb_setup, ptr @__ksymtab_svc_rpcbind_set_version, ptr @__ksymtab_svc_rqst_alloc, ptr @__ksymtab_svc_rqst_free, ptr @__ksymtab_svc_rqst_replace_page, ptr @__ksymtab_svc_set_num_threads, ptr @__ksymtab_svc_shutdown_net, ptr @__param_pool_mode], section "llvm.metadata"

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define dso_local ptr @svc_pool_for_cpu(ptr nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.svc_serv, ptr %0, i32 0, i32 14
  %4 = load i32, ptr %3, align 4
  %5 = icmp ult i32 %4, 2
  br i1 %5, label %6, label %9

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.svc_serv, ptr %0, i32 0, i32 15
  %8 = load ptr, ptr %7, align 4
  br label %25

9:                                                ; preds = %2
  %10 = load i32, ptr getelementptr inbounds (%struct.svc_pool_map, ptr @svc_pool_map, i32 0, i32 1), align 4
  switch i32 %10, label %19 [
    i32 1, label %11
    i32 2, label %14
  ]

11:                                               ; preds = %9
  %12 = load ptr, ptr getelementptr inbounds (%struct.svc_pool_map, ptr @svc_pool_map, i32 0, i32 4), align 4
  %13 = getelementptr i32, ptr %12, i32 %1
  br label %16

14:                                               ; preds = %9
  %15 = load ptr, ptr getelementptr inbounds (%struct.svc_pool_map, ptr @svc_pool_map, i32 0, i32 4), align 4
  br label %16

16:                                               ; preds = %14, %11
  %17 = phi ptr [ %15, %14 ], [ %13, %11 ]
  %18 = load i32, ptr %17, align 4
  br label %19

19:                                               ; preds = %16, %9
  %20 = phi i32 [ 0, %9 ], [ %18, %16 ]
  %21 = getelementptr inbounds %struct.svc_serv, ptr %0, i32 0, i32 15
  %22 = load ptr, ptr %21, align 4
  %23 = urem i32 %20, %4
  %24 = getelementptr %struct.svc_pool, ptr %22, i32 %23
  br label %25

25:                                               ; preds = %19, %6
  %26 = phi ptr [ %8, %6 ], [ %24, %19 ]
  ret ptr %26
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @svc_rpcb_setup(ptr nocapture noundef readonly %0, ptr noundef %1) #2 {
  %3 = tail call i32 @rpcb_create_local(ptr noundef %1) #18
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %6

5:                                                ; preds = %2
  tail call fastcc void @svc_unregister(ptr noundef %0, ptr noundef %1)
  br label %6

6:                                                ; preds = %5, %2
  ret i32 %3
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rpcb_create_local(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @svc_unregister(ptr nocapture noundef readonly %0, ptr noundef %1) unnamed_addr #2 {
  %3 = tail call ptr @llvm.thread.pointer() #18
  tail call void @_clear_bit(i32 noundef 0, ptr noundef %3) #18
  %4 = load ptr, ptr %0, align 4
  %5 = icmp eq ptr %4, null
  br i1 %5, label %56, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.thread_info, ptr %3, i32 0, i32 2
  br label %11

8:                                                ; preds = %52, %11
  %9 = load ptr, ptr %12, align 4
  %10 = icmp eq ptr %9, null
  br i1 %10, label %56, label %11

11:                                               ; preds = %8, %6
  %12 = phi ptr [ %4, %6 ], [ %9, %8 ]
  %13 = getelementptr inbounds %struct.svc_program, ptr %12, i32 0, i32 4
  %14 = load i32, ptr %13, align 4
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %8, label %16

16:                                               ; preds = %11
  %17 = getelementptr inbounds %struct.svc_program, ptr %12, i32 0, i32 5
  %18 = getelementptr inbounds %struct.svc_program, ptr %12, i32 0, i32 1
  %19 = getelementptr inbounds %struct.svc_program, ptr %12, i32 0, i32 6
  br label %20

20:                                               ; preds = %52, %16
  %21 = phi i32 [ 0, %16 ], [ %53, %52 ]
  %22 = load ptr, ptr %17, align 4
  %23 = getelementptr ptr, ptr %22, i32 %21
  %24 = load ptr, ptr %23, align 4
  %25 = icmp eq ptr %24, null
  br i1 %25, label %52, label %26

26:                                               ; preds = %20
  %27 = getelementptr inbounds %struct.svc_version, ptr %24, i32 0, i32 5
  %28 = load i8, ptr %27, align 4, !range !8
  %29 = icmp eq i8 %28, 0
  br i1 %29, label %30, label %52

30:                                               ; preds = %26
  %31 = load i32, ptr %18, align 4
  %32 = load ptr, ptr %19, align 4
  %33 = tail call i32 @rpcb_v4_register(ptr noundef %1, i32 noundef %31, i32 noundef %21, ptr noundef null, ptr noundef nonnull @.str.20) #18
  %34 = icmp eq i32 %33, -93
  br i1 %34, label %35, label %37

35:                                               ; preds = %30
  %36 = tail call i32 @rpcb_register(ptr noundef %1, i32 noundef %31, i32 noundef %21, i32 noundef 0, i16 noundef zeroext 0) #18
  br label %37

37:                                               ; preds = %35, %30
  %38 = phi i32 [ %36, %35 ], [ %33, %30 ]
  %39 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_svc_unregister, i32 0, i32 1), align 4
  %40 = icmp sgt i32 %39, 0
  br i1 %40, label %41, label %52

41:                                               ; preds = %37
  %42 = load i32, ptr %7, align 8
  %43 = lshr i32 %42, 5
  %44 = getelementptr i32, ptr @__cpu_online_mask, i32 %43
  %45 = load volatile i32, ptr %44, align 4
  %46 = and i32 %42, 31
  %47 = shl nuw i32 1, %46
  %48 = and i32 %47, %45
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %52, label %50

50:                                               ; preds = %41
  tail call void asm sideeffect "", "~{memory}"() #18, !srcloc !9
  %51 = tail call i32 @__traceiter_svc_unregister(ptr noundef null, ptr noundef %32, i32 noundef %21, i32 noundef %38) #18
  tail call void asm sideeffect "", "~{memory}"() #18, !srcloc !10
  br label %52

52:                                               ; preds = %50, %41, %37, %26, %20
  %53 = add nuw i32 %21, 1
  %54 = load i32, ptr %13, align 4
  %55 = icmp ult i32 %53, %54
  br i1 %55, label %20, label %8

56:                                               ; preds = %8, %2
  %57 = getelementptr inbounds %struct.task_struct, ptr %3, i32 0, i32 94
  %58 = load ptr, ptr %57, align 4
  %59 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %58) #18
  tail call void @recalc_sigpending() #18
  %60 = load ptr, ptr %57, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %60, i32 noundef %59) #18
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @svc_rpcb_cleanup(ptr nocapture noundef readonly %0, ptr noundef %1) #2 {
  tail call fastcc void @svc_unregister(ptr noundef %0, ptr noundef %1)
  tail call void @rpcb_put_local(ptr noundef %1) #18
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rpcb_put_local(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @svc_bind(ptr nocapture noundef readonly %0, ptr noundef %1) #2 {
  %3 = load ptr, ptr %0, align 4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %32, label %8

5:                                                ; preds = %25, %8
  %6 = load ptr, ptr %9, align 4
  %7 = icmp eq ptr %6, null
  br i1 %7, label %32, label %8

8:                                                ; preds = %5, %2
  %9 = phi ptr [ %6, %5 ], [ %3, %2 ]
  %10 = getelementptr inbounds %struct.svc_program, ptr %9, i32 0, i32 4
  %11 = load i32, ptr %10, align 4
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %5, label %13

13:                                               ; preds = %8
  %14 = getelementptr inbounds %struct.svc_program, ptr %9, i32 0, i32 5
  %15 = load ptr, ptr %14, align 4
  br label %16

16:                                               ; preds = %25, %13
  %17 = phi i32 [ 0, %13 ], [ %26, %25 ]
  %18 = getelementptr ptr, ptr %15, i32 %17
  %19 = load ptr, ptr %18, align 4
  %20 = icmp eq ptr %19, null
  br i1 %20, label %25, label %21

21:                                               ; preds = %16
  %22 = getelementptr inbounds %struct.svc_version, ptr %19, i32 0, i32 5
  %23 = load i8, ptr %22, align 4, !range !8
  %24 = icmp eq i8 %23, 0
  br i1 %24, label %28, label %25

25:                                               ; preds = %21, %16
  %26 = add nuw i32 %17, 1
  %27 = icmp eq i32 %26, %11
  br i1 %27, label %5, label %16

28:                                               ; preds = %21
  %29 = tail call i32 @rpcb_create_local(ptr noundef %1) #18
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %28
  tail call fastcc void @svc_unregister(ptr noundef %0, ptr noundef %1) #18
  br label %32

32:                                               ; preds = %31, %28, %5, %2
  %33 = phi i32 [ %29, %28 ], [ 0, %31 ], [ 0, %2 ], [ 0, %5 ]
  ret i32 %33
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @svc_create(ptr noundef %0, i32 noundef %1, ptr noundef %2) #2 {
  %4 = tail call fastcc ptr @__svc_create(ptr noundef %0, i32 noundef %1, i32 noundef 1, ptr noundef %2)
  ret ptr %4
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc ptr @__svc_create(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef %3) unnamed_addr #2 {
  %5 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %6 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %5, i32 noundef 3520, i32 noundef 120) #19
  %7 = icmp eq ptr %6, null
  br i1 %7, label %110, label %8

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.svc_program, ptr %0, i32 0, i32 6
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr inbounds %struct.svc_serv, ptr %6, i32 0, i32 13
  store ptr %10, ptr %11, align 4
  store ptr %0, ptr %6, align 8
  %12 = getelementptr inbounds %struct.svc_serv, ptr %6, i32 0, i32 3
  store volatile i32 1, ptr %12, align 4
  %13 = getelementptr inbounds %struct.svc_program, ptr %0, i32 0, i32 8
  %14 = load ptr, ptr %13, align 4
  %15 = getelementptr inbounds %struct.svc_serv, ptr %6, i32 0, i32 1
  store ptr %14, ptr %15, align 4
  %16 = tail call i32 @llvm.umin.i32(i32 %1, i32 1048576)
  %17 = icmp eq i32 %16, 0
  %18 = select i1 %17, i32 4096, i32 %16
  %19 = getelementptr inbounds %struct.svc_serv, ptr %6, i32 0, i32 6
  store i32 %18, ptr %19, align 8
  %20 = add nuw nsw i32 %18, 8191
  %21 = and i32 %20, 4190208
  %22 = getelementptr inbounds %struct.svc_serv, ptr %6, i32 0, i32 7
  store i32 %21, ptr %22, align 4
  %23 = getelementptr inbounds %struct.svc_serv, ptr %6, i32 0, i32 16
  store ptr %3, ptr %23, align 8
  %24 = icmp eq ptr %0, null
  br i1 %24, label %63, label %25

25:                                               ; preds = %59, %8
  %26 = phi ptr [ %61, %59 ], [ %0, %8 ]
  %27 = phi i32 [ %60, %59 ], [ 0, %8 ]
  %28 = getelementptr inbounds %struct.svc_program, ptr %26, i32 0, i32 4
  %29 = load i32, ptr %28, align 4
  %30 = add i32 %29, -1
  %31 = getelementptr inbounds %struct.svc_program, ptr %26, i32 0, i32 2
  store i32 %30, ptr %31, align 4
  %32 = icmp eq i32 %29, 0
  br i1 %32, label %59, label %33

33:                                               ; preds = %25
  %34 = getelementptr inbounds %struct.svc_program, ptr %26, i32 0, i32 5
  %35 = getelementptr inbounds %struct.svc_program, ptr %26, i32 0, i32 3
  %36 = load ptr, ptr %34, align 4
  br label %37

37:                                               ; preds = %54, %33
  %38 = phi i32 [ %30, %33 ], [ %55, %54 ]
  %39 = phi i32 [ 0, %33 ], [ %57, %54 ]
  %40 = phi i32 [ %27, %33 ], [ %56, %54 ]
  %41 = getelementptr ptr, ptr %36, i32 %39
  %42 = load ptr, ptr %41, align 4
  %43 = icmp eq ptr %42, null
  br i1 %43, label %54, label %44

44:                                               ; preds = %37
  store i32 %39, ptr %35, align 4
  %45 = icmp ugt i32 %38, %39
  br i1 %45, label %46, label %47

46:                                               ; preds = %44
  store i32 %39, ptr %31, align 4
  br label %47

47:                                               ; preds = %46, %44
  %48 = phi i32 [ %39, %46 ], [ %38, %44 ]
  %49 = getelementptr ptr, ptr %36, i32 %39
  %50 = load ptr, ptr %49, align 4
  %51 = getelementptr inbounds %struct.svc_version, ptr %50, i32 0, i32 4
  %52 = load i32, ptr %51, align 4
  %53 = tail call i32 @llvm.umax.i32(i32 %52, i32 %40)
  br label %54

54:                                               ; preds = %47, %37
  %55 = phi i32 [ %38, %37 ], [ %48, %47 ]
  %56 = phi i32 [ %40, %37 ], [ %53, %47 ]
  %57 = add nuw i32 %39, 1
  %58 = icmp ult i32 %57, %29
  br i1 %58, label %37, label %59

59:                                               ; preds = %54, %25
  %60 = phi i32 [ %27, %25 ], [ %56, %54 ]
  %61 = load ptr, ptr %26, align 4
  %62 = icmp eq ptr %61, null
  br i1 %62, label %63, label %25

63:                                               ; preds = %59, %8
  %64 = phi i32 [ 0, %8 ], [ %60, %59 ]
  %65 = getelementptr inbounds %struct.svc_serv, ptr %6, i32 0, i32 8
  store i32 %64, ptr %65, align 8
  %66 = getelementptr inbounds %struct.svc_serv, ptr %6, i32 0, i32 10
  store volatile ptr %66, ptr %66, align 4
  %67 = getelementptr inbounds %struct.svc_serv, ptr %6, i32 0, i32 10, i32 1
  store ptr %66, ptr %67, align 8
  %68 = getelementptr inbounds %struct.svc_serv, ptr %6, i32 0, i32 9
  store volatile ptr %68, ptr %68, align 4
  %69 = getelementptr inbounds %struct.svc_serv, ptr %6, i32 0, i32 9, i32 1
  store ptr %68, ptr %69, align 8
  %70 = getelementptr inbounds %struct.svc_serv, ptr %6, i32 0, i32 12
  tail call void @init_timer_key(ptr noundef %70, ptr noundef null, i32 noundef 0, ptr noundef null, ptr noundef null) #18
  %71 = getelementptr inbounds %struct.svc_serv, ptr %6, i32 0, i32 2
  store i32 0, ptr %71, align 8
  %72 = getelementptr inbounds %struct.svc_serv, ptr %6, i32 0, i32 17
  store volatile ptr %72, ptr %72, align 4
  %73 = getelementptr inbounds %struct.svc_serv, ptr %6, i32 0, i32 17, i32 1
  store ptr %72, ptr %73, align 8
  %74 = getelementptr inbounds %struct.svc_serv, ptr %6, i32 0, i32 18
  store i32 0, ptr %74, align 4
  %75 = getelementptr inbounds %struct.svc_serv, ptr %6, i32 0, i32 19
  tail call void @__init_waitqueue_head(ptr noundef %75, ptr noundef nonnull @.str.13, ptr noundef nonnull @__svc_init_bc.__key) #18
  %76 = getelementptr inbounds %struct.svc_serv, ptr %6, i32 0, i32 14
  store i32 %2, ptr %76, align 8
  %77 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %2, i32 64) #18
  %78 = extractvalue { i32, i1 } %77, 1
  br i1 %78, label %79, label %81, !prof !11

79:                                               ; preds = %63
  %80 = getelementptr inbounds %struct.svc_serv, ptr %6, i32 0, i32 15
  store ptr null, ptr %80, align 4
  br label %97

81:                                               ; preds = %63
  %82 = extractvalue { i32, i1 } %77, 0
  %83 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %82, i32 noundef 3520) #20
  %84 = getelementptr inbounds %struct.svc_serv, ptr %6, i32 0, i32 15
  store ptr %83, ptr %84, align 4
  %85 = icmp eq ptr %83, null
  br i1 %85, label %97, label %86

86:                                               ; preds = %81
  %87 = load i32, ptr %76, align 8
  %88 = icmp eq i32 %87, 0
  br i1 %88, label %110, label %89

89:                                               ; preds = %86
  store i32 0, ptr %83, align 64
  %90 = getelementptr %struct.svc_pool, ptr %83, i32 0, i32 2
  store volatile ptr %90, ptr %90, align 8
  %91 = getelementptr %struct.svc_pool, ptr %83, i32 0, i32 2, i32 1
  store ptr %90, ptr %91, align 4
  %92 = getelementptr %struct.svc_pool, ptr %83, i32 0, i32 4
  store volatile ptr %92, ptr %92, align 4
  %93 = getelementptr %struct.svc_pool, ptr %83, i32 0, i32 4, i32 1
  store ptr %92, ptr %93, align 8
  %94 = getelementptr %struct.svc_pool, ptr %83, i32 0, i32 1
  store i32 0, ptr %94, align 4
  %95 = load i32, ptr %76, align 8
  %96 = icmp ugt i32 %95, 1
  br i1 %96, label %98, label %110

97:                                               ; preds = %81, %79
  tail call void @kfree(ptr noundef nonnull %6) #18
  br label %110

98:                                               ; preds = %98, %89
  %99 = phi i32 [ %107, %98 ], [ 1, %89 ]
  %100 = load ptr, ptr %84, align 4
  %101 = getelementptr %struct.svc_pool, ptr %100, i32 %99
  store i32 %99, ptr %101, align 64
  %102 = getelementptr %struct.svc_pool, ptr %100, i32 %99, i32 2
  store volatile ptr %102, ptr %102, align 4
  %103 = getelementptr %struct.svc_pool, ptr %100, i32 %99, i32 2, i32 1
  store ptr %102, ptr %103, align 4
  %104 = getelementptr %struct.svc_pool, ptr %100, i32 %99, i32 4
  store volatile ptr %104, ptr %104, align 4
  %105 = getelementptr %struct.svc_pool, ptr %100, i32 %99, i32 4, i32 1
  store ptr %104, ptr %105, align 4
  %106 = getelementptr %struct.svc_pool, ptr %100, i32 %99, i32 1
  store i32 0, ptr %106, align 4
  %107 = add nuw i32 %99, 1
  %108 = load i32, ptr %76, align 8
  %109 = icmp ult i32 %107, %108
  br i1 %109, label %98, label %110

110:                                              ; preds = %98, %97, %89, %86, %4
  %111 = phi ptr [ null, %97 ], [ null, %4 ], [ %6, %86 ], [ %6, %89 ], [ %6, %98 ]
  ret ptr %111
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @svc_create_pooled(ptr noundef %0, i32 noundef %1, ptr noundef %2) #2 {
  tail call void @mutex_lock(ptr noundef nonnull @svc_pool_map_mutex) #18
  %4 = load i32, ptr @svc_pool_map, align 4
  %5 = add i32 %4, 1
  store i32 %5, ptr @svc_pool_map, align 4
  %6 = icmp eq i32 %4, 0
  br i1 %6, label %15, label %7

7:                                                ; preds = %3
  tail call void @mutex_unlock(ptr noundef nonnull @svc_pool_map_mutex) #18
  %8 = load i32, ptr getelementptr inbounds (%struct.svc_pool_map, ptr @svc_pool_map, i32 0, i32 2), align 4
  %9 = icmp ult i32 %8, 2
  %10 = load i1, ptr @svc_pool_map_get.__already_done, align 1
  %11 = xor i1 %10, true
  %12 = select i1 %9, i1 %11, i1 false
  br i1 %12, label %13, label %85, !prof !11

13:                                               ; preds = %7
  store i1 true, ptr @svc_pool_map_get.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 256, i32 noundef 9, ptr noundef null) #18
  %14 = load i32, ptr getelementptr inbounds (%struct.svc_pool_map, ptr @svc_pool_map, i32 0, i32 2), align 4
  br label %85

15:                                               ; preds = %3
  %16 = load i32, ptr getelementptr inbounds (%struct.svc_pool_map, ptr @svc_pool_map, i32 0, i32 1), align 4
  %17 = icmp eq i32 %16, -1
  br i1 %17, label %18, label %24

18:                                               ; preds = %15
  %19 = load i32, ptr @__cpu_online_mask, align 4
  %20 = and i32 %19, 65535
  %21 = tail call i32 @__sw_hweight32(i32 noundef %20) #18
  %22 = icmp ugt i32 %21, 2
  %23 = zext i1 %22 to i32
  store i32 %23, ptr getelementptr inbounds (%struct.svc_pool_map, ptr @svc_pool_map, i32 0, i32 1), align 4
  br label %24

24:                                               ; preds = %18, %15
  %25 = phi i32 [ %23, %18 ], [ %16, %15 ]
  switch i32 %25, label %76 [
    i32 1, label %26
    i32 2, label %55
  ]

26:                                               ; preds = %24
  %27 = load i32, ptr @nr_cpu_ids, align 4
  %28 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %27, i32 4) #18
  %29 = extractvalue { i32, i1 } %28, 1
  %30 = extractvalue { i32, i1 } %28, 0
  br i1 %29, label %75, label %31, !prof !11

31:                                               ; preds = %26
  %32 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %30, i32 noundef 3520) #20
  store ptr %32, ptr getelementptr inbounds (%struct.svc_pool_map, ptr @svc_pool_map, i32 0, i32 4), align 4
  %33 = icmp eq ptr %32, null
  br i1 %33, label %76, label %34

34:                                               ; preds = %31
  %35 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %30, i32 noundef 3520) #20
  store ptr %35, ptr getelementptr inbounds (%struct.svc_pool_map, ptr @svc_pool_map, i32 0, i32 3), align 4
  %36 = icmp eq ptr %35, null
  br i1 %36, label %73, label %37

37:                                               ; preds = %34
  %38 = load i32, ptr @nr_cpu_ids, align 4
  %39 = tail call i32 @cpumask_next(i32 noundef -1, ptr noundef nonnull @__cpu_online_mask) #21
  %40 = icmp ult i32 %39, %38
  br i1 %40, label %41, label %76

41:                                               ; preds = %46, %37
  %42 = phi i32 [ %52, %46 ], [ %39, %37 ]
  %43 = phi i32 [ %51, %46 ], [ 0, %37 ]
  %44 = icmp eq i32 %43, %27
  br i1 %44, label %45, label %46, !prof !11

45:                                               ; preds = %41
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22net/sunrpc/svc.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 199, 0\0A.popsection", ""() #18, !srcloc !12
  unreachable

46:                                               ; preds = %41
  %47 = load ptr, ptr getelementptr inbounds (%struct.svc_pool_map, ptr @svc_pool_map, i32 0, i32 4), align 4
  %48 = getelementptr i32, ptr %47, i32 %42
  store i32 %43, ptr %48, align 4
  %49 = load ptr, ptr getelementptr inbounds (%struct.svc_pool_map, ptr @svc_pool_map, i32 0, i32 3), align 4
  %50 = getelementptr i32, ptr %49, i32 %43
  store i32 %42, ptr %50, align 4
  %51 = add i32 %43, 1
  %52 = tail call i32 @cpumask_next(i32 noundef %42, ptr noundef nonnull @__cpu_online_mask) #21
  %53 = load i32, ptr @nr_cpu_ids, align 4
  %54 = icmp ult i32 %52, %53
  br i1 %54, label %41, label %71

55:                                               ; preds = %24
  %56 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %57 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %56, i32 noundef 3520, i32 noundef 4) #19
  store ptr %57, ptr getelementptr inbounds (%struct.svc_pool_map, ptr @svc_pool_map, i32 0, i32 4), align 4
  %58 = icmp eq ptr %57, null
  br i1 %58, label %76, label %59

59:                                               ; preds = %55
  %60 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %61 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %60, i32 noundef 3520, i32 noundef 4) #19
  store ptr %61, ptr getelementptr inbounds (%struct.svc_pool_map, ptr @svc_pool_map, i32 0, i32 3), align 4
  %62 = icmp eq ptr %61, null
  br i1 %62, label %73, label %63

63:                                               ; preds = %59
  %64 = load i32, ptr @__cpu_online_mask, align 4
  %65 = and i32 %64, 65535
  %66 = tail call i32 @__sw_hweight32(i32 noundef %65) #18
  %67 = icmp eq i32 %66, 0
  br i1 %67, label %76, label %68

68:                                               ; preds = %63
  %69 = load ptr, ptr getelementptr inbounds (%struct.svc_pool_map, ptr @svc_pool_map, i32 0, i32 4), align 4
  store i32 0, ptr %69, align 4
  %70 = load ptr, ptr getelementptr inbounds (%struct.svc_pool_map, ptr @svc_pool_map, i32 0, i32 3), align 4
  br label %76

71:                                               ; preds = %46
  %72 = icmp ugt i32 %43, 2147483646
  br i1 %72, label %76, label %78

73:                                               ; preds = %59, %34
  %74 = load ptr, ptr getelementptr inbounds (%struct.svc_pool_map, ptr @svc_pool_map, i32 0, i32 4), align 4
  tail call void @kfree(ptr noundef %74) #18
  br label %75

75:                                               ; preds = %73, %26
  store ptr null, ptr getelementptr inbounds (%struct.svc_pool_map, ptr @svc_pool_map, i32 0, i32 4), align 4
  br label %76

76:                                               ; preds = %75, %71, %68, %63, %55, %37, %31, %24
  %77 = phi ptr [ %70, %68 ], [ getelementptr inbounds (%struct.svc_pool_map, ptr @svc_pool_map, i32 0, i32 1), %75 ], [ getelementptr inbounds (%struct.svc_pool_map, ptr @svc_pool_map, i32 0, i32 1), %63 ], [ getelementptr inbounds (%struct.svc_pool_map, ptr @svc_pool_map, i32 0, i32 1), %55 ], [ getelementptr inbounds (%struct.svc_pool_map, ptr @svc_pool_map, i32 0, i32 1), %37 ], [ getelementptr inbounds (%struct.svc_pool_map, ptr @svc_pool_map, i32 0, i32 1), %31 ], [ getelementptr inbounds (%struct.svc_pool_map, ptr @svc_pool_map, i32 0, i32 1), %24 ], [ getelementptr inbounds (%struct.svc_pool_map, ptr @svc_pool_map, i32 0, i32 1), %71 ]
  store i32 0, ptr %77, align 4
  store i32 1, ptr getelementptr inbounds (%struct.svc_pool_map, ptr @svc_pool_map, i32 0, i32 2), align 4
  br label %80

78:                                               ; preds = %71
  store i32 %51, ptr getelementptr inbounds (%struct.svc_pool_map, ptr @svc_pool_map, i32 0, i32 2), align 4
  %79 = icmp eq i32 %43, 0
  br i1 %79, label %80, label %83

80:                                               ; preds = %78, %76
  %81 = load i32, ptr @svc_pool_map, align 4
  %82 = add i32 %81, -1
  store i32 %82, ptr @svc_pool_map, align 4
  br label %83

83:                                               ; preds = %80, %78
  %84 = phi i32 [ 1, %80 ], [ %51, %78 ]
  tail call void @mutex_unlock(ptr noundef nonnull @svc_pool_map_mutex) #18
  br label %85

85:                                               ; preds = %83, %13, %7
  %86 = phi i32 [ %84, %83 ], [ %14, %13 ], [ %8, %7 ]
  %87 = tail call fastcc ptr @__svc_create(ptr noundef %0, i32 noundef %1, i32 noundef %86, ptr noundef %2)
  %88 = icmp ne ptr %87, null
  %89 = icmp slt i32 %86, 2
  %90 = or i1 %89, %88
  br i1 %90, label %99, label %91

91:                                               ; preds = %85
  tail call void @mutex_lock(ptr noundef nonnull @svc_pool_map_mutex) #18
  %92 = load i32, ptr @svc_pool_map, align 4
  %93 = add i32 %92, -1
  store i32 %93, ptr @svc_pool_map, align 4
  %94 = icmp eq i32 %93, 0
  br i1 %94, label %95, label %98

95:                                               ; preds = %91
  %96 = load ptr, ptr getelementptr inbounds (%struct.svc_pool_map, ptr @svc_pool_map, i32 0, i32 4), align 4
  tail call void @kfree(ptr noundef %96) #18
  store ptr null, ptr getelementptr inbounds (%struct.svc_pool_map, ptr @svc_pool_map, i32 0, i32 4), align 4
  %97 = load ptr, ptr getelementptr inbounds (%struct.svc_pool_map, ptr @svc_pool_map, i32 0, i32 3), align 4
  tail call void @kfree(ptr noundef %97) #18
  store ptr null, ptr getelementptr inbounds (%struct.svc_pool_map, ptr @svc_pool_map, i32 0, i32 3), align 4
  store i32 0, ptr getelementptr inbounds (%struct.svc_pool_map, ptr @svc_pool_map, i32 0, i32 2), align 4
  br label %98

98:                                               ; preds = %95, %91
  tail call void @mutex_unlock(ptr noundef nonnull @svc_pool_map_mutex) #18
  br label %99

99:                                               ; preds = %98, %85
  ret ptr %87
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @svc_shutdown_net(ptr noundef %0, ptr noundef %1) #2 {
  tail call void @svc_close_net(ptr noundef %0, ptr noundef %1) #18
  %3 = getelementptr inbounds %struct.svc_serv, ptr %0, i32 0, i32 16
  %4 = load ptr, ptr %3, align 4
  %5 = load ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %8, label %7

7:                                                ; preds = %2
  tail call void %5(ptr noundef %0, ptr noundef %1) #18
  br label %8

8:                                                ; preds = %7, %2
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @svc_close_net(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @svc_destroy(ptr noundef %0) #2 {
  %2 = getelementptr i8, ptr %0, i32 44
  %3 = tail call i32 @del_timer_sync(ptr noundef %2) #18
  %4 = getelementptr i8, ptr %0, i32 24
  %5 = load volatile ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, %4
  br i1 %6, label %8, label %7, !prof !13

7:                                                ; preds = %1
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22net/sunrpc/svc.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 564, 0\0A.popsection", ""() #18, !srcloc !14
  unreachable

8:                                                ; preds = %1
  %9 = getelementptr i8, ptr %0, i32 32
  %10 = load volatile ptr, ptr %9, align 4
  %11 = icmp eq ptr %10, %9
  br i1 %11, label %13, label %12, !prof !13

12:                                               ; preds = %8
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22net/sunrpc/svc.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 565, 0\0A.popsection", ""() #18, !srcloc !15
  unreachable

13:                                               ; preds = %8
  %14 = getelementptr i8, ptr %0, i32 -12
  tail call void @cache_clean_deferred(ptr noundef %14) #18
  %15 = getelementptr i8, ptr %0, i32 68
  %16 = load i32, ptr %15, align 4
  %17 = icmp slt i32 %16, 2
  br i1 %17, label %26, label %18

18:                                               ; preds = %13
  tail call void @mutex_lock(ptr noundef nonnull @svc_pool_map_mutex) #18
  %19 = load i32, ptr @svc_pool_map, align 4
  %20 = add i32 %19, -1
  store i32 %20, ptr @svc_pool_map, align 4
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %18
  %23 = load ptr, ptr getelementptr inbounds (%struct.svc_pool_map, ptr @svc_pool_map, i32 0, i32 4), align 4
  tail call void @kfree(ptr noundef %23) #18
  store ptr null, ptr getelementptr inbounds (%struct.svc_pool_map, ptr @svc_pool_map, i32 0, i32 4), align 4
  %24 = load ptr, ptr getelementptr inbounds (%struct.svc_pool_map, ptr @svc_pool_map, i32 0, i32 3), align 4
  tail call void @kfree(ptr noundef %24) #18
  store ptr null, ptr getelementptr inbounds (%struct.svc_pool_map, ptr @svc_pool_map, i32 0, i32 3), align 4
  store i32 0, ptr getelementptr inbounds (%struct.svc_pool_map, ptr @svc_pool_map, i32 0, i32 2), align 4
  br label %25

25:                                               ; preds = %22, %18
  tail call void @mutex_unlock(ptr noundef nonnull @svc_pool_map_mutex) #18
  br label %26

26:                                               ; preds = %25, %13
  %27 = getelementptr i8, ptr %0, i32 72
  %28 = load ptr, ptr %27, align 4
  tail call void @kfree(ptr noundef %28) #18
  tail call void @kfree(ptr noundef %14) #18
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @del_timer_sync(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @cache_clean_deferred(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @svc_rqst_alloc(ptr noundef %0, ptr noundef %1, i32 noundef %2) #2 {
  %4 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 13), align 4
  %5 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %4, i32 noundef 3520, i32 noundef 6912) #19
  %6 = icmp eq ptr %5, null
  br i1 %6, label %57, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.svc_rqst, ptr %5, i32 0, i32 33
  %9 = load i32, ptr %8, align 4
  %10 = or i32 %9, 64
  store i32 %10, ptr %8, align 4
  %11 = getelementptr inbounds %struct.svc_rqst, ptr %5, i32 0, i32 47
  store i32 0, ptr %11, align 8
  %12 = getelementptr inbounds %struct.svc_rqst, ptr %5, i32 0, i32 7
  store ptr %0, ptr %12, align 4
  %13 = getelementptr inbounds %struct.svc_rqst, ptr %5, i32 0, i32 8
  store ptr %1, ptr %13, align 8
  %14 = icmp eq i32 %2, -1
  %15 = select i1 %14, i32 0, i32 %2
  %16 = tail call ptr @__alloc_pages(i32 noundef 3264, i32 noundef 0, i32 noundef %15, ptr noundef null) #18
  %17 = getelementptr inbounds %struct.svc_rqst, ptr %5, i32 0, i32 18
  store ptr %16, ptr %17, align 4
  %18 = icmp eq ptr %16, null
  br i1 %18, label %56, label %19

19:                                               ; preds = %7
  %20 = getelementptr inbounds %struct.svc_serv, ptr %0, i32 0, i32 8
  %21 = load i32, ptr %20, align 4
  %22 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %21, i32 noundef 3264) #20
  %23 = getelementptr inbounds %struct.svc_rqst, ptr %5, i32 0, i32 35
  store ptr %22, ptr %23, align 8
  %24 = icmp eq ptr %22, null
  br i1 %24, label %56, label %25

25:                                               ; preds = %19
  %26 = load i32, ptr %20, align 4
  %27 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %26, i32 noundef 3264) #20
  %28 = getelementptr inbounds %struct.svc_rqst, ptr %5, i32 0, i32 36
  store ptr %27, ptr %28, align 4
  %29 = icmp eq ptr %27, null
  br i1 %29, label %56, label %30

30:                                               ; preds = %25
  %31 = getelementptr inbounds %struct.svc_serv, ptr %0, i32 0, i32 20
  %32 = load i8, ptr %31, align 4, !range !8
  %33 = icmp eq i8 %32, 0
  br i1 %33, label %34, label %57

34:                                               ; preds = %30
  %35 = getelementptr inbounds %struct.svc_serv, ptr %0, i32 0, i32 7
  %36 = load i32, ptr %35, align 4
  %37 = lshr i32 %36, 12
  %38 = add nuw nsw i32 %37, 1
  %39 = icmp ugt i32 %36, 1060863
  %40 = load i1, ptr @svc_init_buffer.__already_done, align 1
  %41 = xor i1 %40, true
  %42 = select i1 %39, i1 %41, i1 false
  br i1 %42, label %43, label %44, !prof !11

43:                                               ; preds = %34
  store i1 true, ptr @svc_init_buffer.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 593, i32 noundef 9, ptr noundef null) #18
  br label %44

44:                                               ; preds = %43, %34
  %45 = select i1 %39, i32 259, i32 %38
  br label %46

46:                                               ; preds = %51, %44
  %47 = phi i32 [ %45, %44 ], [ %54, %51 ]
  %48 = phi i32 [ 0, %44 ], [ %52, %51 ]
  %49 = tail call ptr @__alloc_pages(i32 noundef 3264, i32 noundef 0, i32 noundef %15, ptr noundef null) #18
  %50 = icmp eq ptr %49, null
  br i1 %50, label %56, label %51

51:                                               ; preds = %46
  %52 = add i32 %48, 1
  %53 = getelementptr %struct.svc_rqst, ptr %5, i32 0, i32 20, i32 %48
  store ptr %49, ptr %53, align 4
  %54 = add i32 %47, -1
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %57, label %46

56:                                               ; preds = %46, %25, %19, %7
  tail call void @svc_rqst_free(ptr noundef nonnull %5)
  br label %57

57:                                               ; preds = %56, %51, %30, %3
  %58 = phi ptr [ null, %56 ], [ null, %3 ], [ %5, %30 ], [ %5, %51 ]
  ret ptr %58
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @svc_rqst_free(ptr noundef %0) #2 {
  br label %2

2:                                                ; preds = %24, %1
  %3 = phi i32 [ 0, %1 ], [ %25, %24 ]
  %4 = getelementptr %struct.svc_rqst, ptr %0, i32 0, i32 20, i32 %3
  %5 = load ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %24, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.page, ptr %5, i32 0, i32 1
  %9 = load volatile i32, ptr %8, align 4
  %10 = and i32 %9, 1
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %14, label %12, !prof !13

12:                                               ; preds = %7
  %13 = add i32 %9, -1
  br label %16

14:                                               ; preds = %7
  %15 = ptrtoint ptr %5 to i32
  br label %16

16:                                               ; preds = %14, %12
  %17 = phi i32 [ %13, %12 ], [ %15, %14 ]
  %18 = inttoptr i32 %17 to ptr
  %19 = getelementptr inbounds %struct.page, ptr %18, i32 0, i32 3
  tail call void asm sideeffect "dmb ish", "~{memory}"() #18, !srcloc !16
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %19) #18, !srcloc !17
  %20 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %19, ptr %19, i32 1, ptr elementtype(i32) %19) #18, !srcloc !18
  %21 = extractvalue { i32, i32 } %20, 0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #18, !srcloc !19
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %16
  tail call void @__put_page(ptr noundef %18) #18
  br label %24

24:                                               ; preds = %23, %16, %2
  %25 = add nuw nsw i32 %3, 1
  %26 = icmp eq i32 %25, 260
  br i1 %26, label %27, label %2

27:                                               ; preds = %24
  %28 = getelementptr inbounds %struct.svc_rqst, ptr %0, i32 0, i32 18
  %29 = load ptr, ptr %28, align 4
  %30 = icmp eq ptr %29, null
  br i1 %30, label %48, label %31

31:                                               ; preds = %27
  %32 = getelementptr inbounds %struct.page, ptr %29, i32 0, i32 1
  %33 = load volatile i32, ptr %32, align 4
  %34 = and i32 %33, 1
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %38, label %36, !prof !13

36:                                               ; preds = %31
  %37 = add i32 %33, -1
  br label %40

38:                                               ; preds = %31
  %39 = ptrtoint ptr %29 to i32
  br label %40

40:                                               ; preds = %38, %36
  %41 = phi i32 [ %37, %36 ], [ %39, %38 ]
  %42 = inttoptr i32 %41 to ptr
  %43 = getelementptr inbounds %struct.page, ptr %42, i32 0, i32 3
  tail call void asm sideeffect "dmb ish", "~{memory}"() #18, !srcloc !16
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %43) #18, !srcloc !17
  %44 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %43, ptr %43, i32 1, ptr elementtype(i32) %43) #18, !srcloc !18
  %45 = extractvalue { i32, i32 } %44, 0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #18, !srcloc !19
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %47, label %48

47:                                               ; preds = %40
  tail call void @__put_page(ptr noundef %42) #18
  br label %48

48:                                               ; preds = %47, %40, %27
  %49 = getelementptr inbounds %struct.svc_rqst, ptr %0, i32 0, i32 36
  %50 = load ptr, ptr %49, align 4
  tail call void @kfree(ptr noundef %50) #18
  %51 = getelementptr inbounds %struct.svc_rqst, ptr %0, i32 0, i32 35
  %52 = load ptr, ptr %51, align 8
  tail call void @kfree(ptr noundef %52) #18
  %53 = getelementptr inbounds %struct.svc_rqst, ptr %0, i32 0, i32 37
  %54 = load ptr, ptr %53, align 8
  tail call void @kfree(ptr noundef %54) #18
  %55 = icmp eq ptr %0, null
  br i1 %55, label %58, label %56

56:                                               ; preds = %48
  %57 = getelementptr inbounds %struct.svc_rqst, ptr %0, i32 0, i32 1
  tail call void @kvfree_call_rcu(ptr noundef %57, ptr noundef nonnull inttoptr (i32 8 to ptr)) #18
  br label %58

58:                                               ; preds = %56, %48
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @svc_set_num_threads(ptr noundef %0, ptr noundef %1, i32 noundef %2) #2 {
  %4 = icmp eq ptr %1, null
  br i1 %4, label %5, label %8

5:                                                ; preds = %3
  %6 = getelementptr inbounds %struct.svc_serv, ptr %0, i32 0, i32 4
  %7 = load i32, ptr %6, align 4
  br label %12

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.svc_pool, ptr %1, i32 0, i32 1
  tail call void @_raw_spin_lock_bh(ptr noundef %9) #18
  %10 = getelementptr inbounds %struct.svc_pool, ptr %1, i32 0, i32 3
  %11 = load i32, ptr %10, align 16
  tail call void @_raw_spin_unlock_bh(ptr noundef %9) #18
  br label %12

12:                                               ; preds = %8, %5
  %13 = phi i32 [ %7, %5 ], [ %11, %8 ]
  %14 = sub i32 %2, %13
  %15 = icmp sgt i32 %14, 0
  br i1 %15, label %16, label %127

16:                                               ; preds = %12
  %17 = getelementptr inbounds %struct.svc_serv, ptr %0, i32 0, i32 4
  %18 = load i32, ptr %17, align 4
  %19 = add i32 %18, -1
  %20 = getelementptr inbounds %struct.svc_serv, ptr %0, i32 0, i32 15
  %21 = getelementptr inbounds %struct.svc_serv, ptr %0, i32 0, i32 14
  %22 = getelementptr inbounds %struct.svc_serv, ptr %0, i32 0, i32 3
  %23 = getelementptr inbounds %struct.svc_serv, ptr %0, i32 0, i32 2
  %24 = getelementptr inbounds %struct.svc_serv, ptr %0, i32 0, i32 16
  %25 = getelementptr inbounds %struct.svc_serv, ptr %0, i32 0, i32 13
  br label %26

26:                                               ; preds = %124, %16
  %27 = phi i32 [ %19, %16 ], [ %37, %124 ]
  %28 = phi i32 [ %14, %16 ], [ %29, %124 ]
  %29 = add nsw i32 %28, -1
  br i1 %4, label %30, label %36

30:                                               ; preds = %26
  %31 = load ptr, ptr %20, align 4
  %32 = add i32 %27, 1
  %33 = load i32, ptr %21, align 4
  %34 = urem i32 %27, %33
  %35 = getelementptr %struct.svc_pool, ptr %31, i32 %34
  br label %36

36:                                               ; preds = %30, %26
  %37 = phi i32 [ %32, %30 ], [ %27, %26 ]
  %38 = phi ptr [ %35, %30 ], [ %1, %26 ]
  %39 = load i32, ptr %38, align 64
  %40 = load i32, ptr @svc_pool_map, align 4
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %48, label %42

42:                                               ; preds = %36
  %43 = load i32, ptr getelementptr inbounds (%struct.svc_pool_map, ptr @svc_pool_map, i32 0, i32 1), align 4
  switch i32 %43, label %48 [
    i32 1, label %49
    i32 2, label %44
  ]

44:                                               ; preds = %42
  %45 = load ptr, ptr getelementptr inbounds (%struct.svc_pool_map, ptr @svc_pool_map, i32 0, i32 3), align 4
  %46 = getelementptr i32, ptr %45, i32 %39
  %47 = load i32, ptr %46, align 4
  br label %49

48:                                               ; preds = %42, %36
  br label %49

49:                                               ; preds = %48, %44, %42
  %50 = phi i32 [ %47, %44 ], [ -1, %48 ], [ 0, %42 ]
  %51 = tail call ptr @svc_rqst_alloc(ptr noundef %0, ptr noundef %38, i32 noundef %50) #18
  %52 = icmp eq ptr %51, null
  br i1 %52, label %75, label %53

53:                                               ; preds = %49
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %22) #18, !srcloc !17
  %54 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %22, ptr %22, i32 1, ptr elementtype(i32) %22) #18, !srcloc !20
  %55 = extractvalue { i32, i32, i32 } %54, 0
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %61, label %57, !prof !11

57:                                               ; preds = %53
  %58 = add i32 %55, 1
  %59 = or i32 %58, %55
  %60 = icmp sgt i32 %59, -1
  br i1 %60, label %63, label %61, !prof !13

61:                                               ; preds = %57, %53
  %62 = phi i32 [ 2, %53 ], [ 1, %57 ]
  tail call void @refcount_warn_saturate(ptr noundef %22, i32 noundef %62) #18
  br label %63

63:                                               ; preds = %61, %57
  tail call void @_raw_spin_lock_bh(ptr noundef %23) #18
  %64 = load i32, ptr %17, align 4
  %65 = add i32 %64, 1
  store i32 %65, ptr %17, align 4
  tail call void @_raw_spin_unlock_bh(ptr noundef %23) #18
  %66 = getelementptr inbounds %struct.svc_pool, ptr %38, i32 0, i32 1
  tail call void @_raw_spin_lock_bh(ptr noundef %66) #18
  %67 = getelementptr inbounds %struct.svc_pool, ptr %38, i32 0, i32 3
  %68 = load i32, ptr %67, align 16
  %69 = add i32 %68, 1
  store i32 %69, ptr %67, align 16
  %70 = getelementptr inbounds %struct.svc_pool, ptr %38, i32 0, i32 4
  %71 = load ptr, ptr %70, align 4
  store ptr %71, ptr %51, align 4
  %72 = getelementptr inbounds %struct.list_head, ptr %51, i32 0, i32 1
  store ptr %70, ptr %72, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #18, !srcloc !21
  store volatile ptr %51, ptr %70, align 4
  %73 = getelementptr inbounds %struct.list_head, ptr %71, i32 0, i32 1
  store ptr %51, ptr %73, align 4
  tail call void @_raw_spin_unlock_bh(ptr noundef %66) #18
  %74 = icmp ugt ptr %51, inttoptr (i32 -4096 to ptr)
  br i1 %74, label %75, label %78

75:                                               ; preds = %63, %49
  %76 = phi ptr [ %51, %63 ], [ inttoptr (i32 -12 to ptr), %49 ]
  %77 = ptrtoint ptr %76 to i32
  br label %182

78:                                               ; preds = %63
  %79 = load ptr, ptr %24, align 4
  %80 = getelementptr inbounds %struct.svc_serv_ops, ptr %79, i32 0, i32 3
  %81 = load ptr, ptr %80, align 4
  tail call void @__module_get(ptr noundef %81) #18
  %82 = load ptr, ptr %24, align 4
  %83 = getelementptr inbounds %struct.svc_serv_ops, ptr %82, i32 0, i32 1
  %84 = load ptr, ptr %83, align 4
  %85 = load ptr, ptr %25, align 4
  %86 = tail call ptr (ptr, ptr, i32, ptr, ...) @kthread_create_on_node(ptr noundef %84, ptr noundef nonnull %51, i32 noundef %50, ptr noundef nonnull @.str.14, ptr noundef %85) #18
  %87 = icmp ugt ptr %86, inttoptr (i32 -4096 to ptr)
  br i1 %87, label %88, label %93

88:                                               ; preds = %78
  %89 = load ptr, ptr %24, align 4
  %90 = getelementptr inbounds %struct.svc_serv_ops, ptr %89, i32 0, i32 3
  %91 = load ptr, ptr %90, align 4
  tail call void @module_put(ptr noundef %91) #18
  tail call void @svc_exit_thread(ptr noundef nonnull %51) #18
  %92 = ptrtoint ptr %86 to i32
  br label %182

93:                                               ; preds = %78
  %94 = getelementptr inbounds %struct.svc_rqst, ptr %51, i32 0, i32 46
  store ptr %86, ptr %94, align 4
  %95 = load i32, ptr %21, align 4
  %96 = icmp ugt i32 %95, 1
  br i1 %96, label %97, label %124

97:                                               ; preds = %93
  %98 = load i32, ptr %38, align 64
  %99 = load ptr, ptr getelementptr inbounds (%struct.svc_pool_map, ptr @svc_pool_map, i32 0, i32 3), align 4
  %100 = getelementptr i32, ptr %99, i32 %98
  %101 = load i32, ptr %100, align 4
  %102 = load i32, ptr @svc_pool_map, align 4
  %103 = icmp eq i32 %102, 0
  %104 = load i1, ptr @svc_pool_map_set_cpumask.__already_done, align 1
  %105 = xor i1 %104, true
  %106 = select i1 %103, i1 %105, i1 false
  br i1 %106, label %107, label %109, !prof !11

107:                                              ; preds = %97
  store i1 true, ptr @svc_pool_map_set_cpumask.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 341, i32 noundef 9, ptr noundef null) #18
  %108 = load i32, ptr @svc_pool_map, align 4
  br label %109

109:                                              ; preds = %107, %97
  %110 = phi i32 [ %108, %107 ], [ %102, %97 ]
  %111 = icmp eq i32 %110, 0
  br i1 %111, label %124, label %112

112:                                              ; preds = %109
  %113 = load i32, ptr getelementptr inbounds (%struct.svc_pool_map, ptr @svc_pool_map, i32 0, i32 1), align 4
  switch i32 %113, label %124 [
    i32 1, label %114
    i32 2, label %122
  ]

114:                                              ; preds = %112
  %115 = and i32 %101, 31
  %116 = add nuw nsw i32 %115, 1
  %117 = getelementptr [33 x [1 x i32]], ptr @cpu_bit_bitmap, i32 0, i32 %116
  %118 = lshr i32 %101, 5
  %119 = sub nsw i32 0, %118
  %120 = getelementptr i32, ptr %117, i32 %119
  %121 = tail call i32 @set_cpus_allowed_ptr(ptr noundef %86, ptr noundef %120) #18
  br label %124

122:                                              ; preds = %112
  %123 = tail call i32 @set_cpus_allowed_ptr(ptr noundef %86, ptr noundef nonnull @__cpu_online_mask) #18
  br label %124

124:                                              ; preds = %122, %114, %112, %109, %93
  tail call void @svc_sock_update_bufs(ptr noundef %0) #18
  %125 = tail call i32 @wake_up_process(ptr noundef %86) #18
  %126 = icmp ugt i32 %28, 1
  br i1 %126, label %26, label %182

127:                                              ; preds = %12
  %128 = icmp slt i32 %14, 0
  br i1 %128, label %129, label %182

129:                                              ; preds = %127
  %130 = getelementptr inbounds %struct.svc_serv, ptr %0, i32 0, i32 4
  %131 = load i32, ptr %130, align 4
  %132 = add i32 %131, -1
  %133 = getelementptr inbounds %struct.svc_pool, ptr %1, i32 0, i32 1
  %134 = getelementptr inbounds %struct.svc_serv, ptr %0, i32 0, i32 14
  %135 = getelementptr inbounds %struct.svc_serv, ptr %0, i32 0, i32 15
  br label %136

136:                                              ; preds = %178, %129
  %137 = phi i32 [ %132, %129 ], [ %161, %178 ]
  %138 = phi i32 [ %14, %129 ], [ %180, %178 ]
  br i1 %4, label %139, label %142

139:                                              ; preds = %136
  %140 = load i32, ptr %134, align 4
  %141 = icmp eq i32 %140, 0
  br i1 %141, label %182, label %143

142:                                              ; preds = %136
  tail call void @_raw_spin_lock_bh(ptr noundef %133) #18
  br label %160

143:                                              ; preds = %154, %139
  %144 = phi i32 [ %156, %154 ], [ %140, %139 ]
  %145 = phi i32 [ %148, %154 ], [ %137, %139 ]
  %146 = phi i32 [ %155, %154 ], [ 0, %139 ]
  %147 = load ptr, ptr %135, align 4
  %148 = add i32 %145, -1
  %149 = urem i32 %148, %144
  %150 = getelementptr %struct.svc_pool, ptr %147, i32 %149, i32 1
  tail call void @_raw_spin_lock_bh(ptr noundef %150) #18
  %151 = getelementptr %struct.svc_pool, ptr %147, i32 %149, i32 4
  %152 = load volatile ptr, ptr %151, align 4
  %153 = icmp eq ptr %152, %151
  br i1 %153, label %154, label %158

154:                                              ; preds = %143
  tail call void @_raw_spin_unlock_bh(ptr noundef %150) #18
  %155 = add nuw i32 %146, 1
  %156 = load i32, ptr %134, align 4
  %157 = icmp ult i32 %155, %156
  br i1 %157, label %143, label %182

158:                                              ; preds = %143
  %159 = getelementptr %struct.svc_pool, ptr %147, i32 %149
  br label %160

160:                                              ; preds = %158, %142
  %161 = phi i32 [ %148, %158 ], [ %137, %142 ]
  %162 = phi ptr [ %159, %158 ], [ %1, %142 ]
  %163 = getelementptr inbounds %struct.svc_pool, ptr %162, i32 0, i32 4
  %164 = load volatile ptr, ptr %163, align 4
  %165 = icmp eq ptr %164, %163
  br i1 %165, label %166, label %168

166:                                              ; preds = %160
  %167 = getelementptr inbounds %struct.svc_pool, ptr %162, i32 0, i32 1
  tail call void @_raw_spin_unlock_bh(ptr noundef %167) #18
  br label %182

168:                                              ; preds = %160
  %169 = getelementptr inbounds %struct.svc_rqst, ptr %164, i32 0, i32 33
  tail call void @_set_bit(i32 noundef 5, ptr noundef %169) #18
  %170 = getelementptr inbounds %struct.list_head, ptr %164, i32 0, i32 1
  %171 = load ptr, ptr %170, align 4
  %172 = load ptr, ptr %164, align 4
  %173 = getelementptr inbounds %struct.list_head, ptr %172, i32 0, i32 1
  store ptr %171, ptr %173, align 4
  store volatile ptr %172, ptr %171, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %170, align 4
  %174 = getelementptr inbounds %struct.svc_rqst, ptr %164, i32 0, i32 46
  %175 = load ptr, ptr %174, align 4
  %176 = getelementptr inbounds %struct.svc_pool, ptr %162, i32 0, i32 1
  tail call void @_raw_spin_unlock_bh(ptr noundef %176) #18
  %177 = icmp eq ptr %175, null
  br i1 %177, label %182, label %178

178:                                              ; preds = %168
  %179 = tail call i32 @kthread_stop(ptr noundef nonnull %175) #18
  %180 = add nsw i32 %138, 1
  %181 = icmp eq i32 %180, 0
  br i1 %181, label %182, label %136

182:                                              ; preds = %178, %168, %166, %154, %139, %127, %124, %88, %75
  %183 = phi i32 [ 0, %127 ], [ %77, %75 ], [ %92, %88 ], [ 0, %166 ], [ 0, %124 ], [ 0, %154 ], [ 0, %139 ], [ 0, %168 ], [ 0, %178 ]
  ret i32 %183
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @svc_rqst_replace_page(ptr noundef %0, ptr noundef %1) #2 {
  %3 = getelementptr inbounds %struct.svc_rqst, ptr %0, i32 0, i32 22
  %4 = load ptr, ptr %3, align 8
  %5 = load ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %21, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.svc_rqst, ptr %0, i32 0, i32 24
  %9 = load i8, ptr %8, align 4
  %10 = icmp eq i8 %9, 15
  br i1 %10, label %11, label %15

11:                                               ; preds = %7
  tail call void @__pagevec_release(ptr noundef %8) #18
  %12 = load ptr, ptr %3, align 8
  %13 = load ptr, ptr %12, align 4
  %14 = load i8, ptr %8, align 4
  br label %15

15:                                               ; preds = %11, %7
  %16 = phi i8 [ %14, %11 ], [ %9, %7 ]
  %17 = phi ptr [ %13, %11 ], [ %5, %7 ]
  %18 = add i8 %16, 1
  store i8 %18, ptr %8, align 4
  %19 = zext i8 %16 to i32
  %20 = getelementptr %struct.svc_rqst, ptr %0, i32 0, i32 24, i32 2, i32 %19
  store ptr %17, ptr %20, align 4
  br label %21

21:                                               ; preds = %15, %2
  %22 = getelementptr inbounds %struct.page, ptr %1, i32 0, i32 1
  %23 = load volatile i32, ptr %22, align 4
  %24 = and i32 %23, 1
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %28, label %26, !prof !13

26:                                               ; preds = %21
  %27 = add i32 %23, -1
  br label %30

28:                                               ; preds = %21
  %29 = ptrtoint ptr %1 to i32
  br label %30

30:                                               ; preds = %28, %26
  %31 = phi i32 [ %27, %26 ], [ %29, %28 ]
  %32 = inttoptr i32 %31 to ptr
  %33 = getelementptr inbounds %struct.page, ptr %32, i32 0, i32 3
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %33) #18, !srcloc !17
  %34 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %33, ptr %33, i32 1, ptr elementtype(i32) %33) #18, !srcloc !22
  %35 = load ptr, ptr %3, align 8
  %36 = getelementptr ptr, ptr %35, i32 1
  store ptr %36, ptr %3, align 8
  store ptr %1, ptr %35, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__pagevec_release(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kvfree_call_rcu(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @svc_exit_thread(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.svc_rqst, ptr %0, i32 0, i32 7
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.svc_rqst, ptr %0, i32 0, i32 8
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.svc_pool, ptr %5, i32 0, i32 1
  tail call void @_raw_spin_lock_bh(ptr noundef %6) #18
  %7 = getelementptr inbounds %struct.svc_pool, ptr %5, i32 0, i32 3
  %8 = load i32, ptr %7, align 16
  %9 = add i32 %8, -1
  store i32 %9, ptr %7, align 16
  %10 = getelementptr inbounds %struct.svc_rqst, ptr %0, i32 0, i32 33
  %11 = tail call i32 @_test_and_set_bit(i32 noundef 5, ptr noundef %10) #18
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %18

13:                                               ; preds = %1
  %14 = getelementptr inbounds %struct.list_head, ptr %0, i32 0, i32 1
  %15 = load ptr, ptr %14, align 4
  %16 = load ptr, ptr %0, align 4
  %17 = getelementptr inbounds %struct.list_head, ptr %16, i32 0, i32 1
  store ptr %15, ptr %17, align 4
  store volatile ptr %16, ptr %15, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %14, align 4
  br label %18

18:                                               ; preds = %13, %1
  tail call void @_raw_spin_unlock_bh(ptr noundef %6) #18
  %19 = getelementptr inbounds %struct.svc_serv, ptr %3, i32 0, i32 2
  tail call void @_raw_spin_lock_bh(ptr noundef %19) #18
  %20 = getelementptr inbounds %struct.svc_serv, ptr %3, i32 0, i32 4
  %21 = load i32, ptr %20, align 4
  %22 = add i32 %21, -1
  store i32 %22, ptr %20, align 4
  tail call void @_raw_spin_unlock_bh(ptr noundef %19) #18
  tail call void @svc_sock_update_bufs(ptr noundef %3) #18
  tail call void @svc_rqst_free(ptr noundef %0)
  %23 = getelementptr inbounds %struct.svc_serv, ptr %3, i32 0, i32 3
  tail call void asm sideeffect "dmb ish", "~{memory}"() #18, !srcloc !23
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %23) #18, !srcloc !17
  %24 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %23, ptr %23, i32 1, ptr elementtype(i32) %23) #18, !srcloc !24
  %25 = extractvalue { i32, i32, i32 } %24, 0
  %26 = icmp eq i32 %25, 1
  br i1 %26, label %30, label %27

27:                                               ; preds = %18
  %28 = icmp sgt i32 %25, 0
  br i1 %28, label %31, label %29, !prof !13

29:                                               ; preds = %27
  tail call void @refcount_warn_saturate(ptr noundef %23, i32 noundef 3) #18
  br label %31

30:                                               ; preds = %18
  tail call void asm sideeffect "dmb ish", "~{memory}"() #18, !srcloc !25
  tail call void @svc_destroy(ptr noundef %23) #18
  br label %31

31:                                               ; preds = %30, %29, %27
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @svc_sock_update_bufs(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @svc_rpcbind_set_version(ptr noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2, i32 noundef %3, i16 noundef zeroext %4, i16 noundef zeroext %5) #2 {
  %7 = alloca %struct.sockaddr_in6, align 4
  %8 = alloca %struct.sockaddr_in, align 4
  %9 = getelementptr inbounds %struct.svc_program, ptr %1, i32 0, i32 6
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr inbounds %struct.svc_program, ptr %1, i32 0, i32 1
  %12 = load i32, ptr %11, align 4
  switch i32 %3, label %40 [
    i32 2, label %13
    i32 10, label %28
  ]

13:                                               ; preds = %6
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %8) #18
  store i16 2, ptr %8, align 4
  %14 = getelementptr inbounds %struct.sockaddr_in, ptr %8, i32 0, i32 1
  %15 = tail call i16 @llvm.bswap.i16(i16 %5) #18
  store i16 %15, ptr %14, align 2
  %16 = getelementptr inbounds %struct.sockaddr_in, ptr %8, i32 0, i32 2
  store i32 0, ptr %16, align 4
  %17 = getelementptr inbounds %struct.sockaddr_in, ptr %8, i32 0, i32 3
  store i64 0, ptr %17, align 4
  %18 = zext i16 %4 to i32
  switch i16 %4, label %26 [
    i16 17, label %20
    i16 6, label %19
  ]

19:                                               ; preds = %13
  br label %20

20:                                               ; preds = %19, %13
  %21 = phi ptr [ @.str.16, %19 ], [ @.str.15, %13 ]
  %22 = call i32 @rpcb_v4_register(ptr noundef %0, i32 noundef %12, i32 noundef %2, ptr noundef nonnull %8, ptr noundef nonnull %21) #18
  %23 = icmp eq i32 %22, -93
  br i1 %23, label %24, label %26

24:                                               ; preds = %20
  %25 = call i32 @rpcb_register(ptr noundef %0, i32 noundef %12, i32 noundef %2, i32 noundef %18, i16 noundef zeroext %5) #18
  br label %26

26:                                               ; preds = %24, %20, %13
  %27 = phi i32 [ -92, %13 ], [ %25, %24 ], [ %22, %20 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %8) #18
  br label %40

28:                                               ; preds = %6
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %7) #18
  %29 = getelementptr inbounds i8, ptr %7, i32 4
  call void @llvm.memset.p0.i64(ptr noundef align 4 dereferenceable(24) %29, i8 0, i64 24, i1 false) #18
  store i16 10, ptr %7, align 4
  %30 = getelementptr inbounds %struct.sockaddr_in6, ptr %7, i32 0, i32 1
  %31 = tail call i16 @llvm.bswap.i16(i16 %5) #18
  store i16 %31, ptr %30, align 2
  switch i16 %4, label %38 [
    i16 17, label %33
    i16 6, label %32
  ]

32:                                               ; preds = %28
  br label %33

33:                                               ; preds = %32, %28
  %34 = phi ptr [ @.str.18, %32 ], [ @.str.17, %28 ]
  %35 = call i32 @rpcb_v4_register(ptr noundef %0, i32 noundef %12, i32 noundef %2, ptr noundef nonnull %7, ptr noundef nonnull %34) #18
  %36 = icmp eq i32 %35, -93
  %37 = select i1 %36, i32 -97, i32 %35
  br label %38

38:                                               ; preds = %33, %28
  %39 = phi i32 [ %37, %33 ], [ -92, %28 ]
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %7) #18
  br label %40

40:                                               ; preds = %38, %26, %6
  %41 = phi i32 [ -97, %6 ], [ %39, %38 ], [ %27, %26 ]
  %42 = zext i16 %4 to i32
  %43 = trunc i32 %3 to i16
  %44 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_svc_register, i32 0, i32 1), align 4
  %45 = icmp sgt i32 %44, 0
  br i1 %45, label %46, label %59

46:                                               ; preds = %40
  %47 = tail call ptr @llvm.thread.pointer() #18
  %48 = getelementptr inbounds %struct.thread_info, ptr %47, i32 0, i32 2
  %49 = load i32, ptr %48, align 8
  %50 = lshr i32 %49, 5
  %51 = getelementptr i32, ptr @__cpu_online_mask, i32 %50
  %52 = load volatile i32, ptr %51, align 4
  %53 = and i32 %49, 31
  %54 = shl nuw i32 1, %53
  %55 = and i32 %54, %52
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %59, label %57

57:                                               ; preds = %46
  call void asm sideeffect "", "~{memory}"() #18, !srcloc !26
  %58 = call i32 @__traceiter_svc_register(ptr noundef null, ptr noundef %10, i32 noundef %2, i32 noundef %42, i16 noundef zeroext %5, i16 noundef zeroext %43, i32 noundef %41) #18
  call void asm sideeffect "", "~{memory}"() #18, !srcloc !27
  br label %59

59:                                               ; preds = %57, %46, %40
  ret i32 %41
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @svc_generic_rpcbind_set(ptr noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2, i32 noundef %3, i16 noundef zeroext %4, i16 noundef zeroext %5) #2 {
  %7 = getelementptr inbounds %struct.svc_program, ptr %1, i32 0, i32 5
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr ptr, ptr %8, i32 %2
  %10 = load ptr, ptr %9, align 4
  %11 = icmp eq ptr %10, null
  br i1 %11, label %48, label %12

12:                                               ; preds = %6
  %13 = getelementptr inbounds %struct.svc_version, ptr %10, i32 0, i32 5
  %14 = load i8, ptr %13, align 4, !range !8
  %15 = icmp eq i8 %14, 0
  br i1 %15, label %36, label %16

16:                                               ; preds = %12
  %17 = getelementptr inbounds %struct.svc_program, ptr %1, i32 0, i32 6
  %18 = load ptr, ptr %17, align 4
  %19 = zext i16 %4 to i32
  %20 = trunc i32 %3 to i16
  %21 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_svc_noregister, i32 0, i32 1), align 4
  %22 = icmp sgt i32 %21, 0
  br i1 %22, label %23, label %48

23:                                               ; preds = %16
  %24 = tail call ptr @llvm.thread.pointer() #18
  %25 = getelementptr inbounds %struct.thread_info, ptr %24, i32 0, i32 2
  %26 = load i32, ptr %25, align 8
  %27 = lshr i32 %26, 5
  %28 = getelementptr i32, ptr @__cpu_online_mask, i32 %27
  %29 = load volatile i32, ptr %28, align 4
  %30 = and i32 %26, 31
  %31 = shl nuw i32 1, %30
  %32 = and i32 %31, %29
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %48, label %34

34:                                               ; preds = %23
  tail call void asm sideeffect "", "~{memory}"() #18, !srcloc !28
  %35 = tail call i32 @__traceiter_svc_noregister(ptr noundef null, ptr noundef %18, i32 noundef %2, i32 noundef %19, i16 noundef zeroext %5, i16 noundef zeroext %20, i32 noundef 0) #18
  tail call void asm sideeffect "", "~{memory}"() #18, !srcloc !29
  br label %48

36:                                               ; preds = %12
  %37 = getelementptr inbounds %struct.svc_version, ptr %10, i32 0, i32 7
  %38 = load i8, ptr %37, align 2, !range !8
  %39 = icmp ne i8 %38, 0
  %40 = icmp eq i16 %4, 17
  %41 = and i1 %40, %39
  br i1 %41, label %48, label %42

42:                                               ; preds = %36
  %43 = tail call i32 @svc_rpcbind_set_version(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i16 noundef zeroext %4, i16 noundef zeroext %5)
  %44 = getelementptr inbounds %struct.svc_version, ptr %10, i32 0, i32 6
  %45 = load i8, ptr %44, align 1, !range !8
  %46 = icmp eq i8 %45, 0
  %47 = select i1 %46, i32 %43, i32 0
  br label %48

48:                                               ; preds = %42, %36, %34, %23, %16, %6
  %49 = phi i32 [ %47, %42 ], [ 0, %6 ], [ 0, %36 ], [ 0, %16 ], [ 0, %23 ], [ 0, %34 ]
  ret i32 %49
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @svc_register(ptr nocapture noundef readonly %0, ptr noundef %1, i32 noundef %2, i16 noundef zeroext %3, i16 noundef zeroext %4) local_unnamed_addr #2 {
  %6 = or i16 %4, %3
  %7 = icmp eq i16 %6, 0
  %8 = load i1, ptr @svc_register.__already_done, align 1
  %9 = xor i1 %8, true
  %10 = select i1 %7, i1 %9, i1 false
  br i1 %10, label %11, label %12, !prof !11

11:                                               ; preds = %5
  store i1 true, ptr @svc_register.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1062, i32 noundef 9, ptr noundef null) #18
  br label %12

12:                                               ; preds = %11, %5
  br i1 %7, label %42, label %13

13:                                               ; preds = %12
  %14 = load ptr, ptr %0, align 4
  %15 = icmp eq ptr %14, null
  br i1 %15, label %42, label %16

16:                                               ; preds = %38, %13
  %17 = phi ptr [ %40, %38 ], [ %14, %13 ]
  %18 = phi i32 [ %39, %38 ], [ 0, %13 ]
  %19 = getelementptr inbounds %struct.svc_program, ptr %17, i32 0, i32 4
  %20 = load i32, ptr %19, align 4
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %38, label %22

22:                                               ; preds = %16
  %23 = getelementptr inbounds %struct.svc_program, ptr %17, i32 0, i32 11
  br label %24

24:                                               ; preds = %34, %22
  %25 = phi i32 [ 0, %22 ], [ %35, %34 ]
  %26 = load ptr, ptr %23, align 4
  %27 = tail call i32 %26(ptr noundef %1, ptr noundef nonnull %17, i32 noundef %25, i32 noundef %2, i16 noundef zeroext %3, i16 noundef zeroext %4) #18
  %28 = icmp slt i32 %27, 0
  br i1 %28, label %29, label %34

29:                                               ; preds = %24
  %30 = getelementptr inbounds %struct.svc_program, ptr %17, i32 0, i32 6
  %31 = load ptr, ptr %30, align 4
  %32 = sub i32 0, %27
  %33 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef %31, i32 noundef %25, i32 noundef %32) #22
  br label %38

34:                                               ; preds = %24
  %35 = add nuw i32 %25, 1
  %36 = load i32, ptr %19, align 4
  %37 = icmp ult i32 %35, %36
  br i1 %37, label %24, label %38

38:                                               ; preds = %34, %29, %16
  %39 = phi i32 [ %27, %29 ], [ %18, %16 ], [ %27, %34 ]
  %40 = load ptr, ptr %17, align 4
  %41 = icmp eq ptr %40, null
  br i1 %41, label %42, label %16

42:                                               ; preds = %38, %13, %12
  %43 = phi i32 [ -22, %12 ], [ 0, %13 ], [ %39, %38 ]
  ret i32 %43
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define dso_local i32 @svc_generic_init_request(ptr nocapture noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef writeonly %2) #6 {
  %4 = getelementptr inbounds %struct.svc_rqst, ptr %0, i32 0, i32 29
  %5 = load i32, ptr %4, align 4
  %6 = getelementptr inbounds %struct.svc_program, ptr %1, i32 0, i32 4
  %7 = load i32, ptr %6, align 4
  %8 = icmp ult i32 %5, %7
  br i1 %8, label %9, label %57

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.svc_program, ptr %1, i32 0, i32 5
  %11 = load ptr, ptr %10, align 4
  %12 = getelementptr ptr, ptr %11, i32 %5
  %13 = load ptr, ptr %12, align 4
  %14 = icmp eq ptr %13, null
  br i1 %14, label %57, label %15

15:                                               ; preds = %9
  %16 = getelementptr inbounds %struct.svc_version, ptr %13, i32 0, i32 7
  %17 = load i8, ptr %16, align 2, !range !8
  %18 = icmp eq i8 %17, 0
  br i1 %18, label %28, label %19

19:                                               ; preds = %15
  %20 = getelementptr inbounds %struct.svc_rqst, ptr %0, i32 0, i32 2
  %21 = load ptr, ptr %20, align 8
  %22 = icmp eq ptr %21, null
  br i1 %22, label %28, label %23

23:                                               ; preds = %19
  %24 = getelementptr inbounds %struct.svc_xprt, ptr %21, i32 0, i32 5
  %25 = load volatile i32, ptr %24, align 4
  %26 = and i32 %25, 16384
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %57, label %28

28:                                               ; preds = %23, %19, %15
  %29 = getelementptr inbounds %struct.svc_rqst, ptr %0, i32 0, i32 30
  %30 = load i32, ptr %29, align 8
  %31 = getelementptr inbounds %struct.svc_version, ptr %13, i32 0, i32 1
  %32 = load i32, ptr %31, align 4
  %33 = icmp ult i32 %30, %32
  br i1 %33, label %34, label %63

34:                                               ; preds = %28
  %35 = getelementptr inbounds %struct.svc_version, ptr %13, i32 0, i32 2
  %36 = load ptr, ptr %35, align 4
  %37 = getelementptr %struct.svc_procedure, ptr %36, i32 %30
  %38 = getelementptr inbounds %struct.svc_rqst, ptr %0, i32 0, i32 9
  store ptr %37, ptr %38, align 4
  %39 = icmp eq ptr %37, null
  br i1 %39, label %63, label %40

40:                                               ; preds = %34
  %41 = getelementptr inbounds %struct.svc_rqst, ptr %0, i32 0, i32 35
  %42 = load ptr, ptr %41, align 8
  %43 = getelementptr %struct.svc_procedure, ptr %36, i32 %30, i32 4
  %44 = load i32, ptr %43, align 4
  tail call void @llvm.memset.p0.i32(ptr align 1 %42, i8 0, i32 %44, i1 false)
  %45 = getelementptr inbounds %struct.svc_rqst, ptr %0, i32 0, i32 36
  %46 = load ptr, ptr %45, align 4
  %47 = getelementptr %struct.svc_procedure, ptr %36, i32 %30, i32 5
  %48 = load i32, ptr %47, align 4
  tail call void @llvm.memset.p0.i32(ptr align 1 %46, i8 0, i32 %48, i1 false)
  %49 = getelementptr inbounds %struct.svc_version, ptr %13, i32 0, i32 3
  %50 = load ptr, ptr %49, align 4
  %51 = load i32, ptr %29, align 8
  %52 = getelementptr i32, ptr %50, i32 %51
  %53 = load i32, ptr %52, align 4
  %54 = add i32 %53, 1
  store i32 %54, ptr %52, align 4
  %55 = getelementptr inbounds %struct.svc_version, ptr %13, i32 0, i32 8
  %56 = load ptr, ptr %55, align 4
  store ptr %56, ptr %2, align 4
  br label %63

57:                                               ; preds = %23, %9, %3
  %58 = getelementptr inbounds %struct.svc_program, ptr %1, i32 0, i32 2
  %59 = load i32, ptr %58, align 4
  store i32 %59, ptr %2, align 4
  %60 = getelementptr inbounds %struct.svc_program, ptr %1, i32 0, i32 3
  %61 = load i32, ptr %60, align 4
  %62 = getelementptr inbounds %struct.anon.142, ptr %2, i32 0, i32 1
  store i32 %61, ptr %62, align 4
  br label %63

63:                                               ; preds = %57, %40, %34, %28
  %64 = phi i32 [ 33554432, %57 ], [ 0, %40 ], [ 50331648, %34 ], [ 50331648, %28 ]
  ret i32 %64
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #7

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @svc_process(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.svc_rqst, ptr %0, i32 0, i32 15
  %3 = getelementptr inbounds %struct.svc_rqst, ptr %0, i32 0, i32 19
  %4 = getelementptr inbounds %struct.svc_rqst, ptr %0, i32 0, i32 7
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.svc_rqst, ptr %0, i32 0, i32 21
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr ptr, ptr %7, i32 1
  %9 = getelementptr inbounds %struct.svc_rqst, ptr %0, i32 0, i32 22
  store ptr %8, ptr %9, align 8
  %10 = load ptr, ptr %7, align 4
  %11 = tail call ptr @page_address(ptr noundef %10) #18
  store ptr %11, ptr %3, align 4
  %12 = getelementptr inbounds %struct.svc_rqst, ptr %0, i32 0, i32 19, i32 0, i32 0, i32 1
  store i32 0, ptr %12, align 4
  %13 = load ptr, ptr %6, align 4
  %14 = getelementptr ptr, ptr %13, i32 1
  %15 = getelementptr inbounds %struct.svc_rqst, ptr %0, i32 0, i32 19, i32 3
  store ptr %14, ptr %15, align 4
  %16 = getelementptr inbounds %struct.svc_rqst, ptr %0, i32 0, i32 19, i32 8
  store i32 0, ptr %16, align 8
  %17 = getelementptr inbounds %struct.svc_rqst, ptr %0, i32 0, i32 19, i32 4
  store i32 0, ptr %17, align 8
  %18 = getelementptr inbounds %struct.svc_rqst, ptr %0, i32 0, i32 19, i32 5
  store i32 0, ptr %18, align 4
  %19 = getelementptr inbounds %struct.svc_rqst, ptr %0, i32 0, i32 19, i32 7
  store i32 4096, ptr %19, align 4
  %20 = getelementptr inbounds %struct.svc_rqst, ptr %0, i32 0, i32 19, i32 1
  store ptr null, ptr %20, align 8
  %21 = getelementptr inbounds %struct.svc_rqst, ptr %0, i32 0, i32 19, i32 1, i32 0, i32 1
  store i32 0, ptr %21, align 4
  %22 = load ptr, ptr %2, align 4
  %23 = getelementptr i32, ptr %22, i32 1
  %24 = load i32, ptr %22, align 4
  store ptr %23, ptr %2, align 4
  %25 = getelementptr inbounds %struct.svc_rqst, ptr %0, i32 0, i32 15, i32 0, i32 0, i32 1
  %26 = load i32, ptr %25, align 4
  %27 = add i32 %26, -4
  store i32 %27, ptr %25, align 4
  %28 = icmp eq i32 %24, 0
  br i1 %28, label %35, label %29

29:                                               ; preds = %1
  %30 = getelementptr inbounds %struct.svc_serv, ptr %5, i32 0, i32 1
  %31 = load ptr, ptr %30, align 4
  %32 = getelementptr inbounds %struct.svc_stat, ptr %31, i32 0, i32 6
  %33 = load i32, ptr %32, align 4
  %34 = add i32 %33, 1
  store i32 %34, ptr %32, align 4
  br label %40

35:                                               ; preds = %1
  %36 = tail call fastcc i32 @svc_process_common(ptr noundef %0, ptr noundef %2, ptr noundef %3)
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %40, label %38, !prof !11

38:                                               ; preds = %35
  %39 = tail call i32 @svc_send(ptr noundef %0) #18
  br label %41

40:                                               ; preds = %35, %29
  tail call void @svc_drop(ptr noundef %0) #18
  br label %41

41:                                               ; preds = %40, %38
  %42 = phi i32 [ 0, %40 ], [ %39, %38 ]
  ret i32 %42
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @page_address(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @svc_process_common(ptr noundef %0, ptr nocapture noundef %1, ptr noundef %2) unnamed_addr #2 {
  %4 = alloca %struct.svc_process_info, align 8
  %5 = getelementptr inbounds %struct.svc_rqst, ptr %0, i32 0, i32 7
  %6 = load ptr, ptr %5, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #18
  store i64 0, ptr %4, align 8, !annotation !30
  %7 = getelementptr inbounds %struct.kvec, ptr %1, i32 0, i32 1
  %8 = load i32, ptr %7, align 4
  %9 = icmp ult i32 %8, 24
  br i1 %9, label %165, label %10

10:                                               ; preds = %3
  %11 = getelementptr inbounds %struct.svc_rqst, ptr %0, i32 0, i32 33
  tail call void @_set_bit(i32 noundef 4, ptr noundef %11) #18
  tail call void @_set_bit(i32 noundef 2, ptr noundef %11) #18
  tail call void @_clear_bit(i32 noundef 3, ptr noundef %11) #18
  %12 = getelementptr inbounds %struct.svc_rqst, ptr %0, i32 0, i32 27
  %13 = load i32, ptr %12, align 4
  %14 = load ptr, ptr %2, align 4
  %15 = getelementptr inbounds %struct.kvec, ptr %2, i32 0, i32 1
  %16 = load i32, ptr %15, align 4
  %17 = getelementptr i8, ptr %14, i32 %16
  store i32 %13, ptr %17, align 4
  %18 = load i32, ptr %15, align 4
  %19 = add i32 %18, 4
  store i32 %19, ptr %15, align 4
  %20 = load ptr, ptr %1, align 4
  %21 = getelementptr i32, ptr %20, i32 1
  %22 = load i32, ptr %20, align 4
  store ptr %21, ptr %1, align 4
  %23 = load i32, ptr %7, align 4
  %24 = add i32 %23, -4
  store i32 %24, ptr %7, align 4
  %25 = load ptr, ptr %2, align 4
  %26 = load i32, ptr %15, align 4
  %27 = getelementptr i8, ptr %25, i32 %26
  store i32 16777216, ptr %27, align 4
  %28 = load i32, ptr %15, align 4
  %29 = add i32 %28, 4
  store i32 %29, ptr %15, align 4
  %30 = icmp eq i32 %22, 33554432
  br i1 %30, label %31, label %175

31:                                               ; preds = %10
  %32 = load ptr, ptr %2, align 4
  %33 = getelementptr i8, ptr %32, i32 %29
  store i32 0, ptr %33, align 4
  %34 = load i32, ptr %15, align 4
  %35 = add i32 %34, 4
  store i32 %35, ptr %15, align 4
  %36 = load ptr, ptr %1, align 4
  %37 = getelementptr i32, ptr %36, i32 1
  %38 = load i32, ptr %36, align 4
  store ptr %37, ptr %1, align 4
  %39 = load i32, ptr %7, align 4
  %40 = add i32 %39, -4
  store i32 %40, ptr %7, align 4
  %41 = tail call i32 @llvm.bswap.i32(i32 %38) #18
  %42 = getelementptr inbounds %struct.svc_rqst, ptr %0, i32 0, i32 28
  store i32 %41, ptr %42, align 8
  %43 = load ptr, ptr %1, align 4
  %44 = getelementptr i32, ptr %43, i32 1
  %45 = load i32, ptr %43, align 4
  store ptr %44, ptr %1, align 4
  %46 = load i32, ptr %7, align 4
  %47 = add i32 %46, -4
  store i32 %47, ptr %7, align 4
  %48 = tail call i32 @llvm.bswap.i32(i32 %45) #18
  %49 = getelementptr inbounds %struct.svc_rqst, ptr %0, i32 0, i32 29
  store i32 %48, ptr %49, align 4
  %50 = load ptr, ptr %1, align 4
  %51 = getelementptr i32, ptr %50, i32 1
  %52 = load i32, ptr %50, align 4
  store ptr %51, ptr %1, align 4
  %53 = load i32, ptr %7, align 4
  %54 = add i32 %53, -4
  store i32 %54, ptr %7, align 4
  %55 = tail call i32 @llvm.bswap.i32(i32 %52) #18
  %56 = getelementptr inbounds %struct.svc_rqst, ptr %0, i32 0, i32 30
  store i32 %55, ptr %56, align 8
  br label %57

57:                                               ; preds = %63, %31
  %58 = phi ptr [ %6, %31 ], [ %59, %63 ]
  %59 = load ptr, ptr %58, align 4
  %60 = icmp eq ptr %59, null
  br i1 %60, label %61, label %63

61:                                               ; preds = %57
  %62 = tail call i32 @svc_authenticate(ptr noundef %0) #18
  br label %74

63:                                               ; preds = %57
  %64 = getelementptr inbounds %struct.svc_program, ptr %59, i32 0, i32 1
  %65 = load i32, ptr %64, align 4
  %66 = icmp eq i32 %41, %65
  br i1 %66, label %67, label %57

67:                                               ; preds = %63
  %68 = tail call i32 @svc_authenticate(ptr noundef %0) #18
  %69 = icmp eq i32 %68, 5
  br i1 %69, label %70, label %77

70:                                               ; preds = %67
  %71 = getelementptr inbounds %struct.svc_program, ptr %59, i32 0, i32 9
  %72 = load ptr, ptr %71, align 4
  %73 = tail call i32 %72(ptr noundef %0) #18
  br label %74

74:                                               ; preds = %70, %61
  %75 = phi i32 [ %73, %70 ], [ %62, %61 ]
  %76 = icmp eq i32 %75, 5
  br i1 %76, label %95, label %77

77:                                               ; preds = %74, %67
  %78 = phi i32 [ %75, %74 ], [ %68, %67 ]
  %79 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_svc_authenticate, i32 0, i32 1), align 4
  %80 = icmp sgt i32 %79, 0
  br i1 %80, label %81, label %94

81:                                               ; preds = %77
  %82 = tail call ptr @llvm.thread.pointer() #18
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
  tail call void asm sideeffect "", "~{memory}"() #18, !srcloc !31
  %93 = tail call i32 @__traceiter_svc_authenticate(ptr noundef null, ptr noundef %0, i32 noundef %78) #18
  tail call void asm sideeffect "", "~{memory}"() #18, !srcloc !32
  br label %94

94:                                               ; preds = %92, %81, %77
  switch i32 %78, label %95 [
    i32 10, label %158
    i32 1, label %261
    i32 2, label %262
    i32 8, label %196
    i32 7, label %163
    i32 6, label %161
  ]

95:                                               ; preds = %94, %74
  %96 = icmp eq ptr %59, null
  br i1 %96, label %221, label %97

97:                                               ; preds = %95
  %98 = getelementptr inbounds %struct.svc_program, ptr %59, i32 0, i32 10
  %99 = load ptr, ptr %98, align 4
  %100 = call i32 %99(ptr noundef %0, ptr noundef nonnull %59, ptr noundef nonnull %4) #18
  switch i32 %100, label %101 [
    i32 50331648, label %252
    i32 16777216, label %221
    i32 33554432, label %230
  ]

101:                                              ; preds = %97
  %102 = getelementptr inbounds %struct.svc_rqst, ptr %0, i32 0, i32 9
  %103 = load ptr, ptr %102, align 4
  %104 = icmp eq ptr %103, null
  br i1 %104, label %252, label %105

105:                                              ; preds = %101
  %106 = load ptr, ptr %103, align 4
  %107 = icmp eq ptr %106, null
  br i1 %107, label %252, label %108

108:                                              ; preds = %105
  %109 = getelementptr inbounds %struct.svc_serv, ptr %6, i32 0, i32 1
  %110 = load ptr, ptr %109, align 4
  %111 = getelementptr inbounds %struct.svc_stat, ptr %110, i32 0, i32 5
  %112 = load i32, ptr %111, align 4
  %113 = add i32 %112, 1
  store i32 %113, ptr %111, align 4
  %114 = getelementptr inbounds %struct.svc_program, ptr %59, i32 0, i32 6
  %115 = load ptr, ptr %114, align 4
  call fastcc void @trace_svc_process(ptr noundef %0, ptr noundef %115)
  %116 = load ptr, ptr %2, align 4
  %117 = load i32, ptr %15, align 4
  %118 = getelementptr i8, ptr %116, i32 %117
  store i32 0, ptr %118, align 4
  %119 = load i32, ptr %15, align 4
  %120 = add i32 %119, 4
  store i32 %120, ptr %15, align 4
  %121 = getelementptr inbounds %struct.svc_procedure, ptr %103, i32 0, i32 7
  %122 = load i32, ptr %121, align 4
  %123 = icmp eq i32 %122, 0
  br i1 %123, label %129, label %124

124:                                              ; preds = %108
  %125 = shl i32 %122, 2
  %126 = getelementptr inbounds %struct.svc_rqst, ptr %0, i32 0, i32 39
  %127 = load i32, ptr %126, align 8
  %128 = add i32 %127, %125
  call void @svc_reserve(ptr noundef %0, i32 noundef %128) #18
  br label %129

129:                                              ; preds = %124, %108
  %130 = load ptr, ptr %4, align 8
  %131 = call i32 %130(ptr noundef %0, ptr noundef %118) #18
  %132 = getelementptr inbounds %struct.svc_procedure, ptr %103, i32 0, i32 3
  %133 = load ptr, ptr %132, align 4
  %134 = icmp eq ptr %133, null
  br i1 %134, label %136, label %135

135:                                              ; preds = %129
  call void %133(ptr noundef %0) #18
  br label %136

136:                                              ; preds = %135, %129
  %137 = icmp eq i32 %131, 0
  br i1 %137, label %161, label %138

138:                                              ; preds = %136
  %139 = getelementptr inbounds %struct.svc_rqst, ptr %0, i32 0, i32 38
  %140 = load i32, ptr %139, align 4
  %141 = icmp eq i32 %140, 0
  br i1 %141, label %142, label %196

142:                                              ; preds = %138
  %143 = load i32, ptr %118, align 4
  %144 = icmp eq i32 %143, 0
  br i1 %144, label %151, label %145

145:                                              ; preds = %142
  %146 = load ptr, ptr %2, align 4
  %147 = ptrtoint ptr %118 to i32
  %148 = ptrtoint ptr %146 to i32
  %149 = add i32 %147, 4
  %150 = sub i32 %149, %148
  store i32 %150, ptr %15, align 4
  br label %151

151:                                              ; preds = %145, %142
  %152 = getelementptr inbounds %struct.svc_procedure, ptr %103, i32 0, i32 2
  %153 = load ptr, ptr %152, align 4
  %154 = icmp eq ptr %153, null
  br i1 %154, label %161, label %158

155:                                              ; preds = %262, %252, %230, %221, %196, %175
  %156 = load i32, ptr %15, align 4
  %157 = add i32 %156, 4
  store i32 %157, ptr %15, align 4
  br label %158

158:                                              ; preds = %155, %151, %94
  %159 = call i32 @svc_authorise(ptr noundef %0) #18
  %160 = icmp eq i32 %159, 0
  br i1 %160, label %272, label %165

161:                                              ; preds = %151, %136, %94
  %162 = call i32 @svc_authorise(ptr noundef %0) #18
  br label %272

163:                                              ; preds = %94
  %164 = tail call i32 @svc_authorise(ptr noundef %0) #18
  br label %165

165:                                              ; preds = %163, %158, %3
  %166 = getelementptr inbounds %struct.svc_rqst, ptr %0, i32 0, i32 2
  %167 = load ptr, ptr %166, align 8
  %168 = icmp eq ptr %167, null
  br i1 %168, label %272, label %169

169:                                              ; preds = %165
  %170 = getelementptr inbounds %struct.svc_xprt, ptr %167, i32 0, i32 5
  %171 = load volatile i32, ptr %170, align 4
  %172 = and i32 %171, 16
  %173 = icmp eq i32 %172, 0
  br i1 %173, label %272, label %174

174:                                              ; preds = %169
  call void @svc_close_xprt(ptr noundef nonnull %167) #18
  br label %272

175:                                              ; preds = %10
  %176 = getelementptr inbounds %struct.svc_serv, ptr %6, i32 0, i32 1
  %177 = load ptr, ptr %176, align 4
  %178 = getelementptr inbounds %struct.svc_stat, ptr %177, i32 0, i32 6
  %179 = load i32, ptr %178, align 4
  %180 = add i32 %179, 1
  store i32 %180, ptr %178, align 4
  %181 = load ptr, ptr %2, align 4
  %182 = load i32, ptr %15, align 4
  %183 = getelementptr i8, ptr %181, i32 %182
  store i32 16777216, ptr %183, align 4
  %184 = load i32, ptr %15, align 4
  %185 = add i32 %184, 4
  store i32 %185, ptr %15, align 4
  %186 = load ptr, ptr %2, align 4
  %187 = getelementptr i8, ptr %186, i32 %185
  store i32 0, ptr %187, align 4
  %188 = load i32, ptr %15, align 4
  %189 = add i32 %188, 4
  store i32 %189, ptr %15, align 4
  %190 = load ptr, ptr %2, align 4
  %191 = getelementptr i8, ptr %190, i32 %189
  store i32 33554432, ptr %191, align 4
  %192 = load i32, ptr %15, align 4
  %193 = add i32 %192, 4
  store i32 %193, ptr %15, align 4
  %194 = load ptr, ptr %2, align 4
  %195 = getelementptr i8, ptr %194, i32 %193
  store i32 33554432, ptr %195, align 4
  br label %155

196:                                              ; preds = %138, %94
  %197 = getelementptr inbounds %struct.svc_serv, ptr %6, i32 0, i32 1
  %198 = load ptr, ptr %197, align 4
  %199 = getelementptr inbounds %struct.svc_stat, ptr %198, i32 0, i32 7
  %200 = load i32, ptr %199, align 4
  %201 = add i32 %200, 1
  store i32 %201, ptr %199, align 4
  %202 = getelementptr inbounds %struct.svc_rqst, ptr %0, i32 0, i32 19
  %203 = load ptr, ptr %202, align 4
  %204 = ptrtoint ptr %33 to i32
  %205 = ptrtoint ptr %203 to i32
  %206 = sub i32 %204, %205
  %207 = getelementptr inbounds %struct.svc_rqst, ptr %0, i32 0, i32 19, i32 0, i32 0, i32 1
  store i32 %206, ptr %207, align 4
  %208 = load ptr, ptr %2, align 4
  %209 = load i32, ptr %15, align 4
  %210 = getelementptr i8, ptr %208, i32 %209
  store i32 16777216, ptr %210, align 4
  %211 = load i32, ptr %15, align 4
  %212 = add i32 %211, 4
  store i32 %212, ptr %15, align 4
  %213 = load ptr, ptr %2, align 4
  %214 = getelementptr i8, ptr %213, i32 %212
  store i32 16777216, ptr %214, align 4
  %215 = load i32, ptr %15, align 4
  %216 = add i32 %215, 4
  store i32 %216, ptr %15, align 4
  %217 = getelementptr inbounds %struct.svc_rqst, ptr %0, i32 0, i32 38
  %218 = load i32, ptr %217, align 4
  %219 = load ptr, ptr %2, align 4
  %220 = getelementptr i8, ptr %219, i32 %216
  store i32 %218, ptr %220, align 4
  br label %155

221:                                              ; preds = %97, %95
  %222 = getelementptr inbounds %struct.svc_serv, ptr %6, i32 0, i32 1
  %223 = load ptr, ptr %222, align 4
  %224 = getelementptr inbounds %struct.svc_stat, ptr %223, i32 0, i32 6
  %225 = load i32, ptr %224, align 4
  %226 = add i32 %225, 1
  store i32 %226, ptr %224, align 4
  %227 = load ptr, ptr %2, align 4
  %228 = load i32, ptr %15, align 4
  %229 = getelementptr i8, ptr %227, i32 %228
  store i32 16777216, ptr %229, align 4
  br label %155

230:                                              ; preds = %97
  %231 = getelementptr inbounds %struct.svc_serv, ptr %6, i32 0, i32 1
  %232 = load ptr, ptr %231, align 4
  %233 = getelementptr inbounds %struct.svc_stat, ptr %232, i32 0, i32 6
  %234 = load i32, ptr %233, align 4
  %235 = add i32 %234, 1
  store i32 %235, ptr %233, align 4
  %236 = load ptr, ptr %2, align 4
  %237 = load i32, ptr %15, align 4
  %238 = getelementptr i8, ptr %236, i32 %237
  store i32 33554432, ptr %238, align 4
  %239 = load i32, ptr %15, align 4
  %240 = add i32 %239, 4
  store i32 %240, ptr %15, align 4
  %241 = load i32, ptr %4, align 8
  %242 = load ptr, ptr %2, align 4
  %243 = getelementptr i8, ptr %242, i32 %240
  %244 = call i32 @llvm.bswap.i32(i32 %241) #18
  store i32 %244, ptr %243, align 4
  %245 = load i32, ptr %15, align 4
  %246 = add i32 %245, 4
  store i32 %246, ptr %15, align 4
  %247 = getelementptr inbounds %struct.anon.142, ptr %4, i32 0, i32 1
  %248 = load i32, ptr %247, align 4
  %249 = load ptr, ptr %2, align 4
  %250 = getelementptr i8, ptr %249, i32 %246
  %251 = call i32 @llvm.bswap.i32(i32 %248) #18
  store i32 %251, ptr %250, align 4
  br label %155

252:                                              ; preds = %105, %101, %97
  %253 = getelementptr inbounds %struct.svc_serv, ptr %6, i32 0, i32 1
  %254 = load ptr, ptr %253, align 4
  %255 = getelementptr inbounds %struct.svc_stat, ptr %254, i32 0, i32 6
  %256 = load i32, ptr %255, align 4
  %257 = add i32 %256, 1
  store i32 %257, ptr %255, align 4
  %258 = load ptr, ptr %2, align 4
  %259 = load i32, ptr %15, align 4
  %260 = getelementptr i8, ptr %258, i32 %259
  store i32 50331648, ptr %260, align 4
  br label %155

261:                                              ; preds = %94
  br label %262

262:                                              ; preds = %261, %94
  %263 = phi i32 [ 67108864, %261 ], [ 83886080, %94 ]
  %264 = getelementptr inbounds %struct.svc_serv, ptr %6, i32 0, i32 1
  %265 = load ptr, ptr %264, align 4
  %266 = getelementptr inbounds %struct.svc_stat, ptr %265, i32 0, i32 6
  %267 = load i32, ptr %266, align 4
  %268 = add i32 %267, 1
  store i32 %268, ptr %266, align 4
  %269 = load ptr, ptr %2, align 4
  %270 = load i32, ptr %15, align 4
  %271 = getelementptr i8, ptr %269, i32 %270
  store i32 %263, ptr %271, align 4
  br label %155

272:                                              ; preds = %174, %169, %165, %161, %158
  %273 = phi i32 [ 0, %161 ], [ 1, %158 ], [ 0, %165 ], [ 0, %169 ], [ 0, %174 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #18
  ret i32 %273
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @svc_send(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @svc_drop(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @bc_svc_process(ptr noundef %0, ptr noundef %1, ptr noundef %2) #2 {
  %4 = getelementptr inbounds %struct.svc_rqst, ptr %2, i32 0, i32 15
  %5 = getelementptr inbounds %struct.svc_rqst, ptr %2, i32 0, i32 19
  %6 = getelementptr inbounds %struct.rpc_rqst, ptr %1, i32 0, i32 5
  %7 = load i32, ptr %6, align 4
  %8 = getelementptr inbounds %struct.svc_rqst, ptr %2, i32 0, i32 27
  store i32 %7, ptr %8, align 4
  %9 = load ptr, ptr %1, align 8
  %10 = getelementptr inbounds %struct.rpc_xprt, ptr %9, i32 0, i32 6
  %11 = load i32, ptr %10, align 4
  %12 = getelementptr inbounds %struct.svc_rqst, ptr %2, i32 0, i32 31
  store i32 %11, ptr %12, align 4
  %13 = getelementptr inbounds %struct.svc_rqst, ptr %2, i32 0, i32 7
  store ptr %0, ptr %13, align 4
  %14 = load ptr, ptr %1, align 8
  %15 = getelementptr inbounds %struct.rpc_xprt, ptr %14, i32 0, i32 49
  %16 = load ptr, ptr %15, align 8
  %17 = getelementptr inbounds %struct.svc_rqst, ptr %2, i32 0, i32 48
  store ptr %16, ptr %17, align 4
  %18 = getelementptr inbounds %struct.svc_rqst, ptr %2, i32 0, i32 4
  store i32 128, ptr %18, align 4
  %19 = getelementptr inbounds %struct.svc_rqst, ptr %2, i32 0, i32 3
  %20 = load ptr, ptr %1, align 8
  %21 = getelementptr inbounds %struct.rpc_xprt, ptr %20, i32 0, i32 4
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(128) %19, ptr noundef align 8 dereferenceable(128) %21, i32 128, i1 false)
  %22 = getelementptr inbounds %struct.rpc_rqst, ptr %1, i32 0, i32 2
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 8 dereferenceable(44) %4, ptr noundef align 8 dereferenceable(44) %22, i32 44, i1 false)
  %23 = getelementptr inbounds %struct.rpc_rqst, ptr %1, i32 0, i32 1
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 8 dereferenceable(44) %5, ptr noundef align 4 dereferenceable(44) %23, i32 44, i1 false)
  %24 = getelementptr inbounds %struct.rpc_rqst, ptr %1, i32 0, i32 20, i32 8
  %25 = load i32, ptr %24, align 8
  %26 = getelementptr inbounds %struct.svc_rqst, ptr %2, i32 0, i32 15, i32 8
  store i32 %25, ptr %26, align 8
  %27 = getelementptr inbounds %struct.svc_rqst, ptr %2, i32 0, i32 15, i32 0, i32 0, i32 1
  %28 = load i32, ptr %27, align 4
  %29 = icmp ugt i32 %25, %28
  %30 = getelementptr inbounds %struct.svc_rqst, ptr %2, i32 0, i32 15, i32 5
  br i1 %29, label %32, label %31

31:                                               ; preds = %3
  store i32 0, ptr %30, align 4
  br label %39

32:                                               ; preds = %3
  %33 = load i32, ptr %30, align 4
  %34 = add i32 %33, %28
  %35 = icmp ugt i32 %25, %34
  br i1 %35, label %38, label %36

36:                                               ; preds = %32
  %37 = sub i32 %25, %28
  store i32 %37, ptr %30, align 4
  br label %39

38:                                               ; preds = %32
  store i32 %34, ptr %26, align 8
  br label %39

39:                                               ; preds = %38, %36, %31
  %40 = phi i32 [ %28, %36 ], [ %28, %38 ], [ %25, %31 ]
  %41 = getelementptr inbounds %struct.svc_rqst, ptr %2, i32 0, i32 19, i32 0, i32 0, i32 1
  store i32 0, ptr %41, align 4
  %42 = load ptr, ptr %4, align 4
  %43 = getelementptr i32, ptr %42, i32 2
  store ptr %43, ptr %4, align 4
  %44 = add i32 %40, -8
  store i32 %44, ptr %27, align 4
  %45 = tail call fastcc i32 @svc_process_common(ptr noundef %2, ptr noundef %4, ptr noundef %5)
  %46 = load ptr, ptr %1, align 8
  %47 = getelementptr inbounds %struct.rpc_xprt, ptr %46, i32 0, i32 44
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %47) #18, !srcloc !17
  %48 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %47, ptr %47, i32 1, ptr elementtype(i32) %47) #18, !srcloc !33
  %49 = icmp eq i32 %45, 0
  br i1 %49, label %50, label %51

50:                                               ; preds = %39
  tail call void @xprt_free_bc_request(ptr noundef %1) #18
  br label %66

51:                                               ; preds = %39
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(44) %23, ptr noundef align 8 dereferenceable(44) %5, i32 44, i1 false)
  %52 = tail call ptr @rpc_run_bc_task(ptr noundef %1) #18
  %53 = icmp ugt ptr %52, inttoptr (i32 -4096 to ptr)
  br i1 %53, label %54, label %56

54:                                               ; preds = %51
  %55 = ptrtoint ptr %52 to i32
  br label %66

56:                                               ; preds = %51
  %57 = load volatile i32, ptr %52, align 4
  %58 = icmp ne i32 %57, 1
  %59 = load i1, ptr @bc_svc_process.__already_done, align 1
  %60 = xor i1 %59, true
  %61 = select i1 %58, i1 %60, i1 false
  br i1 %61, label %62, label %63, !prof !11

62:                                               ; preds = %56
  store i1 true, ptr @bc_svc_process.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1538, i32 noundef 9, ptr noundef null) #18
  br label %63

63:                                               ; preds = %62, %56
  %64 = getelementptr inbounds %struct.rpc_task, ptr %52, i32 0, i32 1
  %65 = load i32, ptr %64, align 4
  tail call void @rpc_put_task(ptr noundef %52) #18
  br label %66

66:                                               ; preds = %63, %54, %50
  %67 = phi i32 [ %55, %54 ], [ %65, %63 ], [ -22, %50 ]
  ret i32 %67
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @xprt_free_bc_request(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rpc_run_bc_task(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @rpc_put_task(ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define dso_local i32 @svc_max_payload(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.svc_rqst, ptr %0, i32 0, i32 2
  %3 = load ptr, ptr %2, align 8
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.svc_xprt_class, ptr %4, i32 0, i32 4
  %6 = load i32, ptr %5, align 4
  %7 = getelementptr inbounds %struct.svc_rqst, ptr %0, i32 0, i32 7
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.svc_serv, ptr %8, i32 0, i32 6
  %10 = load i32, ptr %9, align 4
  %11 = tail call i32 @llvm.umin.i32(i32 %10, i32 %6)
  ret i32 %11
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define dso_local ptr @svc_proc_name(ptr noundef readonly %0) local_unnamed_addr #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %10, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.svc_rqst, ptr %0, i32 0, i32 9
  %5 = load ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %10, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.svc_procedure, ptr %5, i32 0, i32 8
  %9 = load ptr, ptr %8, align 4
  br label %10

10:                                               ; preds = %7, %3, %1
  %11 = phi ptr [ %9, %7 ], [ @.str.3, %3 ], [ @.str.3, %1 ]
  ret ptr %11
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @svc_encode_result_payload(ptr noundef %0, i32 noundef %1, i32 noundef %2) #2 {
  %4 = getelementptr inbounds %struct.svc_rqst, ptr %0, i32 0, i32 2
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.svc_xprt, ptr %5, i32 0, i32 1
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.svc_xprt_ops, ptr %7, i32 0, i32 5
  %9 = load ptr, ptr %8, align 4
  %10 = tail call i32 %9(ptr noundef %0, i32 noundef %1, i32 noundef %2) #18
  ret i32 %10
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @svc_fill_write_vector(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1) #2 {
  %3 = getelementptr inbounds %struct.xdr_buf, ptr %1, i32 0, i32 3
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.svc_rqst, ptr %0, i32 0, i32 25
  %6 = getelementptr inbounds %struct.xdr_buf, ptr %1, i32 0, i32 8
  %7 = load i32, ptr %6, align 4
  %8 = getelementptr inbounds %struct.kvec, ptr %1, i32 0, i32 1
  %9 = load i32, ptr %8, align 4
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %17, label %11

11:                                               ; preds = %2
  %12 = load ptr, ptr %1, align 4
  store ptr %12, ptr %5, align 4
  %13 = load i32, ptr %8, align 4
  %14 = tail call i32 @llvm.umin.i32(i32 %7, i32 %13)
  %15 = getelementptr inbounds %struct.svc_rqst, ptr %0, i32 0, i32 25, i32 0, i32 1
  store i32 %14, ptr %15, align 4
  %16 = sub i32 %7, %14
  br label %17

17:                                               ; preds = %11, %2
  %18 = phi i32 [ 1, %11 ], [ 0, %2 ]
  %19 = phi i32 [ %16, %11 ], [ %7, %2 ]
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %40, label %21

21:                                               ; preds = %21, %17
  %22 = phi ptr [ %32, %21 ], [ %4, %17 ]
  %23 = phi i32 [ %30, %21 ], [ %19, %17 ]
  %24 = phi i32 [ %31, %21 ], [ %18, %17 ]
  %25 = load ptr, ptr %22, align 4
  %26 = tail call ptr @page_address(ptr noundef %25) #18
  %27 = getelementptr %struct.kvec, ptr %5, i32 %24
  store ptr %26, ptr %27, align 4
  %28 = tail call i32 @llvm.umin.i32(i32 %23, i32 4096)
  %29 = getelementptr %struct.kvec, ptr %5, i32 %24, i32 1
  store i32 %28, ptr %29, align 4
  %30 = sub i32 %23, %28
  %31 = add i32 %24, 1
  %32 = getelementptr ptr, ptr %22, i32 1
  %33 = icmp eq i32 %30, 0
  br i1 %33, label %34, label %21

34:                                               ; preds = %21
  %35 = icmp ugt i32 %31, 259
  %36 = load i1, ptr @svc_fill_write_vector.__already_done, align 1
  %37 = xor i1 %36, true
  %38 = select i1 %35, i1 %37, i1 false
  br i1 %38, label %39, label %40, !prof !11

39:                                               ; preds = %34
  store i1 true, ptr @svc_fill_write_vector.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1629, i32 noundef 9, ptr noundef null) #18
  br label %40

40:                                               ; preds = %39, %34, %17
  %41 = phi i32 [ %31, %39 ], [ %31, %34 ], [ %18, %17 ]
  ret i32 %41
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @svc_fill_symlink_pathname(ptr nocapture readnone %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, i32 noundef %3) #2 {
  %5 = add i32 %3, 1
  %6 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %5, i32 noundef 3264) #20
  %7 = icmp eq ptr %6, null
  br i1 %7, label %29, label %8

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.kvec, ptr %1, i32 0, i32 1
  %10 = load i32, ptr %9, align 4
  %11 = tail call i32 @llvm.umin.i32(i32 %10, i32 %3)
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %17, label %13

13:                                               ; preds = %8
  %14 = load ptr, ptr %1, align 4
  tail call void @llvm.memcpy.p0.p0.i32(ptr nonnull align 64 %6, ptr align 1 %14, i32 %11, i1 false)
  %15 = getelementptr i8, ptr %6, i32 %11
  %16 = sub i32 %3, %11
  br label %17

17:                                               ; preds = %13, %8
  %18 = phi ptr [ %15, %13 ], [ %6, %8 ]
  %19 = phi i32 [ %16, %13 ], [ %3, %8 ]
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %24, label %21

21:                                               ; preds = %17
  %22 = tail call i32 @llvm.umin.i32(i32 %19, i32 4096)
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 1 %18, ptr align 1 %2, i32 %22, i1 false)
  %23 = getelementptr i8, ptr %18, i32 %22
  br label %24

24:                                               ; preds = %21, %17
  %25 = phi ptr [ %23, %21 ], [ %18, %17 ]
  store i8 0, ptr %25, align 1
  %26 = tail call i32 @strlen(ptr noundef nonnull %6)
  %27 = icmp eq i32 %26, %3
  br i1 %27, label %29, label %28

28:                                               ; preds = %24
  tail call void @kfree(ptr noundef nonnull %6) #18
  br label %29

29:                                               ; preds = %28, %24, %4
  %30 = phi ptr [ inttoptr (i32 -22 to ptr), %28 ], [ %6, %24 ], [ inttoptr (i32 -526 to ptr), %4 ]
  ret ptr %30
}

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strlen(ptr nocapture noundef) local_unnamed_addr #8

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @param_set_pool_mode(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #2 {
  %3 = getelementptr inbounds %struct.kernel_param, ptr %1, i32 0, i32 6
  %4 = load ptr, ptr %3, align 4
  tail call void @mutex_lock(ptr noundef nonnull @svc_pool_map_mutex) #18
  %5 = load i32, ptr @svc_pool_map, align 4
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %21

7:                                                ; preds = %2
  %8 = tail call i32 @strncmp(ptr noundef %0, ptr noundef nonnull dereferenceable(5) @.str.4, i32 noundef 4)
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %19, label %10

10:                                               ; preds = %7
  %11 = tail call i32 @strncmp(ptr noundef %0, ptr noundef nonnull dereferenceable(7) @.str.5, i32 noundef 6)
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %19, label %13

13:                                               ; preds = %10
  %14 = tail call i32 @strncmp(ptr noundef %0, ptr noundef nonnull dereferenceable(7) @.str.6, i32 noundef 6)
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %19, label %16

16:                                               ; preds = %13
  %17 = tail call i32 @strncmp(ptr noundef %0, ptr noundef nonnull dereferenceable(8) @.str.7, i32 noundef 7)
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %16, %13, %10, %7
  %20 = phi i32 [ -1, %7 ], [ 0, %10 ], [ 1, %13 ], [ 2, %16 ]
  store i32 %20, ptr %4, align 4
  br label %21

21:                                               ; preds = %19, %16, %2
  %22 = phi i32 [ -16, %2 ], [ -22, %16 ], [ 0, %19 ]
  tail call void @mutex_unlock(ptr noundef nonnull @svc_pool_map_mutex) #18
  ret i32 %22
}

; Function Attrs: nofree nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @param_get_pool_mode(ptr noundef %0, ptr nocapture noundef readonly %1) #9 {
  %3 = getelementptr inbounds %struct.kernel_param, ptr %1, i32 0, i32 6
  %4 = load ptr, ptr %3, align 4
  %5 = load i32, ptr %4, align 4
  switch i32 %5, label %14 [
    i32 -1, label %6
    i32 0, label %8
    i32 1, label %10
    i32 2, label %12
  ]

6:                                                ; preds = %2
  %7 = tail call i32 @strlcpy(ptr noundef %0, ptr noundef nonnull @.str.8, i32 noundef 20) #18
  br label %16

8:                                                ; preds = %2
  %9 = tail call i32 @strlcpy(ptr noundef %0, ptr noundef nonnull @.str.9, i32 noundef 20) #18
  br label %16

10:                                               ; preds = %2
  %11 = tail call i32 @strlcpy(ptr noundef %0, ptr noundef nonnull @.str.10, i32 noundef 20) #18
  br label %16

12:                                               ; preds = %2
  %13 = tail call i32 @strlcpy(ptr noundef %0, ptr noundef nonnull @.str.11, i32 noundef 20) #18
  br label %16

14:                                               ; preds = %2
  %15 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %0, ptr noundef nonnull @.str.12, i32 noundef %5)
  br label %16

16:                                               ; preds = %14, %12, %10, %8, %6
  %17 = phi i32 [ %15, %14 ], [ %13, %12 ], [ %11, %10 ], [ %9, %8 ], [ %7, %6 ]
  ret i32 %17
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock(ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strncmp(ptr nocapture noundef, ptr nocapture noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #3

; Function Attrs: nofree null_pointer_is_valid
declare dso_local i32 @strlcpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #10

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #11

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_waitqueue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #12

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #13

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__sw_hweight32(i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @cpumask_next(i32 noundef, ptr noundef) local_unnamed_addr #14

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.thread.pointer() #15

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__alloc_pages(i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #16

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_bh(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_bh(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @__module_get(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kthread_create_on_node(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @module_put(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wake_up_process(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @set_cpus_allowed_ptr(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kthread_stop(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__put_page(ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #12

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rpcb_v4_register(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rpcb_register(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i16 noundef zeroext) local_unnamed_addr #3

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_svc_register(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i16 noundef zeroext, i16 noundef zeroext, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_svc_noregister(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i16 noundef zeroext, i16 noundef zeroext, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @recalc_sigpending() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_svc_unregister(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #12

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @svc_authenticate(ptr noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @trace_svc_process(ptr noundef %0, ptr noundef %1) unnamed_addr #17 {
  %3 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_svc_process, i32 0, i32 1), align 4
  %4 = icmp sgt i32 %3, 0
  br i1 %4, label %5, label %18

5:                                                ; preds = %2
  %6 = tail call ptr @llvm.thread.pointer() #18
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
  tail call void asm sideeffect "", "~{memory}"() #18, !srcloc !34
  %17 = tail call i32 @__traceiter_svc_process(ptr noundef null, ptr noundef %0, ptr noundef %1) #18
  tail call void asm sideeffect "", "~{memory}"() #18, !srcloc !35
  br label %18

18:                                               ; preds = %16, %5, %2
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @svc_authorise(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @svc_close_xprt(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_svc_authenticate(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_svc_process(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @svc_reserve(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #12

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #12

attributes #0 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { argmemonly nofree nounwind willreturn }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { mustprogress nofree nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { argmemonly nofree nounwind willreturn writeonly }
attributes #8 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { nofree nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #10 = { nofree null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #11 = { nofree nounwind null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #12 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #13 = { null_pointer_is_valid allocsize(0) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #14 = { mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #15 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #16 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #17 = { inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #18 = { nounwind }
attributes #19 = { nounwind allocsize(2) }
attributes #20 = { nounwind allocsize(0) }
attributes #21 = { nounwind readonly willreturn }
attributes #22 = { cold nounwind }

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
!8 = !{i8 0, i8 2}
!9 = !{i64 2158218457}
!10 = !{i64 2158218643}
!11 = !{!"branch_weights", i32 1, i32 2000}
!12 = !{i64 2158243702, i64 2158244183, i64 2158243739, i64 2158243795, i64 2158243829, i64 2158243853, i64 2158243894, i64 2158243915, i64 2158243943, i64 2158243977}
!13 = !{!"branch_weights", i32 2000, i32 1}
!14 = !{i64 2158259342, i64 2158259823, i64 2158259379, i64 2158259435, i64 2158259469, i64 2158259493, i64 2158259534, i64 2158259555, i64 2158259583, i64 2158259617}
!15 = !{i64 2158260389, i64 2158260870, i64 2158260426, i64 2158260482, i64 2158260516, i64 2158260540, i64 2158260581, i64 2158260602, i64 2158260630, i64 2158260664}
!16 = !{i64 2148175567}
!17 = !{i64 510060, i64 2148011626, i64 2148011652, i64 2148011699, i64 2148011721, i64 2148011749, i64 2148011769}
!18 = !{i64 2148077929, i64 2148077961, i64 2148077990, i64 2148078024, i64 2148078055, i64 2148078078}
!19 = !{i64 2148175770}
!20 = !{i64 2148076346, i64 2148076378, i64 2148076407, i64 2148076441, i64 2148076472, i64 2148076495}
!21 = !{i64 2148943894}
!22 = !{i64 2148074888, i64 2148074914, i64 2148074943, i64 2148074977, i64 2148075008, i64 2148075031}
!23 = !{i64 2148176568}
!24 = !{i64 2148078703, i64 2148078735, i64 2148078764, i64 2148078798, i64 2148078829, i64 2148078852}
!25 = !{i64 2149345178}
!26 = !{i64 2158182518}
!27 = !{i64 2158182760}
!28 = !{i64 2158201443}
!29 = !{i64 2158201689}
!30 = !{!"auto-init"}
!31 = !{i64 2157494193}
!32 = !{i64 2157494365}
!33 = !{i64 2148077245, i64 2148077271, i64 2148077300, i64 2148077334, i64 2148077365, i64 2148077388}
!34 = !{i64 2157510432}
!35 = !{i64 2157510586}
