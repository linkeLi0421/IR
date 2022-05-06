; ModuleID = '/llk/IR/net/sunrpc/svc_xprt.c_pt.bc'
source_filename = "../net/sunrpc/svc_xprt.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_svc_reg_xprt_class:\09\09\09\09\09"
module asm "\09.asciz \09\22svc_reg_xprt_class\22\09\09\09\09\09"
module asm "__kstrtabns_svc_reg_xprt_class:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_svc_unreg_xprt_class:\09\09\09\09\09"
module asm "\09.asciz \09\22svc_unreg_xprt_class\22\09\09\09\09\09"
module asm "__kstrtabns_svc_unreg_xprt_class:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_svc_xprt_deferred_close:\09\09\09\09\09"
module asm "\09.asciz \09\22svc_xprt_deferred_close\22\09\09\09\09\09"
module asm "__kstrtabns_svc_xprt_deferred_close:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_svc_xprt_put:\09\09\09\09\09"
module asm "\09.asciz \09\22svc_xprt_put\22\09\09\09\09\09"
module asm "__kstrtabns_svc_xprt_put:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_svc_xprt_init:\09\09\09\09\09"
module asm "\09.asciz \09\22svc_xprt_init\22\09\09\09\09\09"
module asm "__kstrtabns_svc_xprt_init:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_svc_xprt_received:\09\09\09\09\09"
module asm "\09.asciz \09\22svc_xprt_received\22\09\09\09\09\09"
module asm "__kstrtabns_svc_xprt_received:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_svc_create_xprt:\09\09\09\09\09"
module asm "\09.asciz \09\22svc_create_xprt\22\09\09\09\09\09"
module asm "__kstrtabns_svc_create_xprt:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_svc_xprt_copy_addrs:\09\09\09\09\09"
module asm "\09.asciz \09\22svc_xprt_copy_addrs\22\09\09\09\09\09"
module asm "__kstrtabns_svc_xprt_copy_addrs:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_svc_print_addr:\09\09\09\09\09"
module asm "\09.asciz \09\22svc_print_addr\22\09\09\09\09\09"
module asm "__kstrtabns_svc_print_addr:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_svc_xprt_do_enqueue:\09\09\09\09\09"
module asm "\09.asciz \09\22svc_xprt_do_enqueue\22\09\09\09\09\09"
module asm "__kstrtabns_svc_xprt_do_enqueue:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_svc_xprt_enqueue:\09\09\09\09\09"
module asm "\09.asciz \09\22svc_xprt_enqueue\22\09\09\09\09\09"
module asm "__kstrtabns_svc_xprt_enqueue:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_svc_reserve:\09\09\09\09\09"
module asm "\09.asciz \09\22svc_reserve\22\09\09\09\09\09"
module asm "__kstrtabns_svc_reserve:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_svc_wake_up:\09\09\09\09\09"
module asm "\09.asciz \09\22svc_wake_up\22\09\09\09\09\09"
module asm "__kstrtabns_svc_wake_up:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_svc_recv:\09\09\09\09\09"
module asm "\09.asciz \09\22svc_recv\22\09\09\09\09\09"
module asm "__kstrtabns_svc_recv:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_svc_drop:\09\09\09\09\09"
module asm "\09.asciz \09\22svc_drop\22\09\09\09\09\09"
module asm "__kstrtabns_svc_drop:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_svc_age_temp_xprts_now:\09\09\09\09\09"
module asm "\09.asciz \09\22svc_age_temp_xprts_now\22\09\09\09\09\09"
module asm "__kstrtabns_svc_age_temp_xprts_now:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_svc_close_xprt:\09\09\09\09\09"
module asm "\09.asciz \09\22svc_close_xprt\22\09\09\09\09\09"
module asm "__kstrtabns_svc_close_xprt:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_svc_find_xprt:\09\09\09\09\09"
module asm "\09.asciz \09\22svc_find_xprt\22\09\09\09\09\09"
module asm "__kstrtabns_svc_find_xprt:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_svc_xprt_names:\09\09\09\09\09"
module asm "\09.asciz \09\22svc_xprt_names\22\09\09\09\09\09"
module asm "__kstrtabns_svc_xprt_names:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_svc_pool_stats_open:\09\09\09\09\09"
module asm "\09.asciz \09\22svc_pool_stats_open\22\09\09\09\09\09"
module asm "__kstrtabns_svc_pool_stats_open:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.115 }
%union.anon.115 = type { ptr }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.list_head = type { ptr, ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.lock_class_key = type {}
%struct.seq_operations = type { ptr, ptr, ptr, ptr }
%struct.tracepoint = type { ptr, %struct.static_key, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.static_key = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.cpumask = type { [1 x i32] }
%struct.svc_xprt_class = type { ptr, ptr, ptr, %struct.list_head, i32, i32 }
%struct.svc_xprt = type { ptr, ptr, %struct.kref, %struct.list_head, %struct.list_head, i32, ptr, %struct.atomic_t, %struct.atomic_t, %struct.mutex, %struct.spinlock, ptr, %struct.list_head, %struct.__kernel_sockaddr_storage, i32, %struct.__kernel_sockaddr_storage, i32, [58 x i8], %struct.list_head, ptr, ptr, ptr, ptr }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.__kernel_sockaddr_storage = type { %union.anon.135 }
%union.anon.135 = type { ptr, [124 x i8] }
%struct.svc_serv = type { ptr, ptr, %struct.spinlock, %struct.kref, i32, i32, i32, i32, i32, %struct.list_head, %struct.list_head, i32, %struct.timer_list, ptr, i32, ptr, ptr, %struct.list_head, %struct.spinlock, %struct.wait_queue_head, i8 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32 }
%struct.hlist_node = type { ptr, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.svc_serv_ops = type { ptr, ptr, ptr, ptr }
%struct.thread_info = type { i32, i32, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], [4 x i8], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.svc_xprt_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.sockaddr_in = type { i16, i16, %struct.in_addr, [8 x i8] }
%struct.in_addr = type { i32 }
%struct.sockaddr_in6 = type { i16, i16, i32, %struct.in6_addr, i32 }
%struct.in6_addr = type { %union.anon.69 }
%union.anon.69 = type { [4 x i32] }
%struct.svc_program = type { ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.cred = type { %struct.atomic_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, i32, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %union.anon.37 }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%struct.kernel_cap_struct = type { [2 x i32] }
%union.anon.37 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.svc_rqst = type { %struct.list_head, %struct.callback_head, ptr, %struct.__kernel_sockaddr_storage, i32, %struct.__kernel_sockaddr_storage, i32, ptr, ptr, ptr, ptr, %struct.svc_cred, ptr, ptr, i32, %struct.xdr_buf, %struct.xdr_stream, %struct.xdr_stream, ptr, %struct.xdr_buf, [260 x ptr], ptr, ptr, ptr, %struct.pagevec, [259 x %struct.kvec], [259 x %struct.bio_vec], i32, i32, i32, i32, i32, i32, i32, i64, ptr, ptr, ptr, i32, i32, i32, i64, %struct.cache_req, ptr, ptr, ptr, ptr, %struct.spinlock, ptr, ptr }
%struct.svc_cred = type { %struct.kuid_t, %struct.kgid_t, ptr, i32, ptr, ptr, ptr, ptr }
%struct.xdr_stream = type { ptr, ptr, ptr, ptr, %struct.kvec, ptr, i32, ptr }
%struct.kvec = type { ptr, i32 }
%struct.xdr_buf = type { [1 x %struct.kvec], [1 x %struct.kvec], ptr, ptr, i32, i32, i32, i32, i32 }
%struct.pagevec = type { i8, i8, [15 x ptr] }
%struct.bio_vec = type { ptr, i32, i32 }
%struct.cache_req = type { ptr, i32 }
%struct.svc_pool = type { i32, %struct.spinlock, %struct.list_head, i32, %struct.list_head, %struct.svc_pool_stats, i32, [16 x i8] }
%struct.svc_pool_stats = type { %struct.atomic_t, i32, %struct.atomic_t, %struct.atomic_t }
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
%struct.page_frag = type { ptr, i16, i16 }
%struct.kmap_ctrl = type { i32, [16 x i32] }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
%struct.svc_stat = type { ptr, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.svc_deferred_req = type { i32, ptr, %struct.__kernel_sockaddr_storage, i32, %struct.__kernel_sockaddr_storage, i32, %struct.cache_deferred_req, i32, i32, [0 x i32] }
%struct.cache_deferred_req = type { %struct.hlist_node, %struct.list_head, ptr, ptr, ptr }
%struct.page = type { i32, %union.anon.1, %union.anon.114, %struct.atomic_t }
%union.anon.1 = type { %struct.anon }
%struct.anon = type { %struct.list_head, ptr, i32, i32 }
%union.anon.114 = type { %struct.atomic_t }
%struct.rpc_xprt = type { %struct.kref, ptr, i32, ptr, %struct.__kernel_sockaddr_storage, i32, i32, i32, i32, i32, %struct.rpc_wait_queue, %struct.rpc_wait_queue, %struct.rpc_wait_queue, %struct.rpc_wait_queue, %struct.list_head, i32, i32, i32, i32, i8, %struct.atomic_t, i32, %struct.list_head, i32, i32, i32, %struct.work_struct, %struct.timer_list, i32, i32, i32, i32, %struct.atomic_t, %struct.spinlock, %struct.spinlock, %struct.spinlock, i32, ptr, %struct.list_head, %struct.atomic_t, ptr, ptr, i32, i32, %struct.atomic_t, %struct.spinlock, %struct.list_head, %struct.rb_root, %struct.anon.139, ptr, ptr, [6 x ptr], %struct.callback_head, ptr, ptr, i8 }
%struct.rpc_wait_queue = type { %struct.spinlock, [4 x %struct.list_head], i8, i8, i8, i16, %struct.rpc_timer, ptr }
%struct.rpc_timer = type { %struct.list_head, i32, %struct.delayed_work }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.anon.139 = type { i32, i32, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64 }
%struct.rpc_xprt_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.svc_xpt_user = type { %struct.list_head, ptr }
%struct.file = type { %union.anon.13, %struct.path, ptr, ptr, %struct.spinlock, i32, %struct.atomic_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, ptr, %struct.file_ra_state, i64, ptr, ptr, ptr, i32, i32 }
%union.anon.13 = type { %struct.callback_head }
%struct.path = type { ptr, ptr }
%struct.fown_struct = type { %struct.rwlock_t, ptr, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.rwlock_t = type { %struct.arch_rwlock_t }
%struct.arch_rwlock_t = type { i32 }
%struct.file_ra_state = type { i32, i32, i32, i32, i32, i64 }
%struct.seq_file = type { ptr, i32, i32, i32, i32, i64, i64, %struct.mutex, ptr, i32, ptr, ptr }

@__param_str_svc_rpc_per_connection_limit = internal constant [36 x i8] c"sunrpc.svc_rpc_per_connection_limit\00", align 1
@param_ops_uint = external dso_local constant %struct.kernel_param_ops, align 4
@svc_rpc_per_connection_limit = internal global i32 0, section ".data..read_mostly", align 4
@__param_svc_rpc_per_connection_limit = internal constant %struct.kernel_param { ptr @__param_str_svc_rpc_per_connection_limit, ptr null, ptr @param_ops_uint, i16 420, i8 -1, i8 0, %union.anon.115 { ptr @svc_rpc_per_connection_limit } }, section "__param", align 4
@__UNIQUE_ID_svc_rpc_per_connection_limittype696 = internal constant [50 x i8] c"sunrpc.parmtype=svc_rpc_per_connection_limit:uint\00", section ".modinfo", align 1
@svc_xprt_class_lock = internal global %struct.spinlock zeroinitializer, align 4
@svc_xprt_class_list = internal global %struct.list_head { ptr @svc_xprt_class_list, ptr @svc_xprt_class_list }, align 4
@__kstrtab_svc_reg_xprt_class = external dso_local constant [0 x i8], align 1
@__kstrtabns_svc_reg_xprt_class = external dso_local constant [0 x i8], align 1
@__ksymtab_svc_reg_xprt_class = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @svc_reg_xprt_class to i32), ptr @__kstrtab_svc_reg_xprt_class, ptr @__kstrtabns_svc_reg_xprt_class }, section "___ksymtab_gpl+svc_reg_xprt_class", align 4
@__kstrtab_svc_unreg_xprt_class = external dso_local constant [0 x i8], align 1
@__kstrtabns_svc_unreg_xprt_class = external dso_local constant [0 x i8], align 1
@__ksymtab_svc_unreg_xprt_class = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @svc_unreg_xprt_class to i32), ptr @__kstrtab_svc_unreg_xprt_class, ptr @__kstrtabns_svc_unreg_xprt_class }, section "___ksymtab_gpl+svc_unreg_xprt_class", align 4
@.str = private unnamed_addr constant [7 x i8] c"%s %d\0A\00", align 1
@__kstrtab_svc_xprt_deferred_close = external dso_local constant [0 x i8], align 1
@__kstrtabns_svc_xprt_deferred_close = external dso_local constant [0 x i8], align 1
@__ksymtab_svc_xprt_deferred_close = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @svc_xprt_deferred_close to i32), ptr @__kstrtab_svc_xprt_deferred_close, ptr @__kstrtabns_svc_xprt_deferred_close }, section "___ksymtab_gpl+svc_xprt_deferred_close", align 4
@__kstrtab_svc_xprt_put = external dso_local constant [0 x i8], align 1
@__kstrtabns_svc_xprt_put = external dso_local constant [0 x i8], align 1
@__ksymtab_svc_xprt_put = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @svc_xprt_put to i32), ptr @__kstrtab_svc_xprt_put, ptr @__kstrtabns_svc_xprt_put }, section "___ksymtab_gpl+svc_xprt_put", align 4
@svc_xprt_init.__key = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.1 = private unnamed_addr constant [17 x i8] c"&xprt->xpt_mutex\00", align 1
@.str.2 = private unnamed_addr constant [14 x i8] c"uninitialized\00", align 1
@__kstrtab_svc_xprt_init = external dso_local constant [0 x i8], align 1
@__kstrtabns_svc_xprt_init = external dso_local constant [0 x i8], align 1
@__ksymtab_svc_xprt_init = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @svc_xprt_init to i32), ptr @__kstrtab_svc_xprt_init, ptr @__kstrtabns_svc_xprt_init }, section "___ksymtab_gpl+svc_xprt_init", align 4
@svc_xprt_received.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.3 = private unnamed_addr constant [22 x i8] c"net/sunrpc/svc_xprt.c\00", align 1
@.str.4 = private unnamed_addr constant [24 x i8] c"xprt=0x%p already busy!\00", align 1
@__kstrtab_svc_xprt_received = external dso_local constant [0 x i8], align 1
@__kstrtabns_svc_xprt_received = external dso_local constant [0 x i8], align 1
@__ksymtab_svc_xprt_received = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @svc_xprt_received to i32), ptr @__kstrtab_svc_xprt_received, ptr @__kstrtabns_svc_xprt_received }, section "___ksymtab_gpl+svc_xprt_received", align 4
@.str.5 = private unnamed_addr constant [6 x i8] c"svc%s\00", align 1
@__kstrtab_svc_create_xprt = external dso_local constant [0 x i8], align 1
@__kstrtabns_svc_create_xprt = external dso_local constant [0 x i8], align 1
@__ksymtab_svc_create_xprt = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @svc_create_xprt to i32), ptr @__kstrtab_svc_create_xprt, ptr @__kstrtabns_svc_create_xprt }, section "___ksymtab_gpl+svc_create_xprt", align 4
@__kstrtab_svc_xprt_copy_addrs = external dso_local constant [0 x i8], align 1
@__kstrtabns_svc_xprt_copy_addrs = external dso_local constant [0 x i8], align 1
@__ksymtab_svc_xprt_copy_addrs = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @svc_xprt_copy_addrs to i32), ptr @__kstrtab_svc_xprt_copy_addrs, ptr @__kstrtabns_svc_xprt_copy_addrs }, section "___ksymtab_gpl+svc_xprt_copy_addrs", align 4
@__kstrtab_svc_print_addr = external dso_local constant [0 x i8], align 1
@__kstrtabns_svc_print_addr = external dso_local constant [0 x i8], align 1
@__ksymtab_svc_print_addr = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @svc_print_addr to i32), ptr @__kstrtab_svc_print_addr, ptr @__kstrtabns_svc_print_addr }, section "___ksymtab_gpl+svc_print_addr", align 4
@__kstrtab_svc_xprt_do_enqueue = external dso_local constant [0 x i8], align 1
@__kstrtabns_svc_xprt_do_enqueue = external dso_local constant [0 x i8], align 1
@__ksymtab_svc_xprt_do_enqueue = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @svc_xprt_do_enqueue to i32), ptr @__kstrtab_svc_xprt_do_enqueue, ptr @__kstrtabns_svc_xprt_do_enqueue }, section "___ksymtab_gpl+svc_xprt_do_enqueue", align 4
@__kstrtab_svc_xprt_enqueue = external dso_local constant [0 x i8], align 1
@__kstrtabns_svc_xprt_enqueue = external dso_local constant [0 x i8], align 1
@__ksymtab_svc_xprt_enqueue = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @svc_xprt_enqueue to i32), ptr @__kstrtab_svc_xprt_enqueue, ptr @__kstrtabns_svc_xprt_enqueue }, section "___ksymtab_gpl+svc_xprt_enqueue", align 4
@__kstrtab_svc_reserve = external dso_local constant [0 x i8], align 1
@__kstrtabns_svc_reserve = external dso_local constant [0 x i8], align 1
@__ksymtab_svc_reserve = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @svc_reserve to i32), ptr @__kstrtab_svc_reserve, ptr @__kstrtabns_svc_reserve }, section "___ksymtab_gpl+svc_reserve", align 4
@__kstrtab_svc_wake_up = external dso_local constant [0 x i8], align 1
@__kstrtabns_svc_wake_up = external dso_local constant [0 x i8], align 1
@__ksymtab_svc_wake_up = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @svc_wake_up to i32), ptr @__kstrtab_svc_wake_up, ptr @__kstrtabns_svc_wake_up }, section "___ksymtab_gpl+svc_wake_up", align 4
@__kstrtab_svc_recv = external dso_local constant [0 x i8], align 1
@__kstrtabns_svc_recv = external dso_local constant [0 x i8], align 1
@__ksymtab_svc_recv = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @svc_recv to i32), ptr @__kstrtab_svc_recv, ptr @__kstrtabns_svc_recv }, section "___ksymtab_gpl+svc_recv", align 4
@__kstrtab_svc_drop = external dso_local constant [0 x i8], align 1
@__kstrtabns_svc_drop = external dso_local constant [0 x i8], align 1
@__ksymtab_svc_drop = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @svc_drop to i32), ptr @__kstrtab_svc_drop, ptr @__kstrtabns_svc_drop }, section "___ksymtab_gpl+svc_drop", align 4
@__kstrtab_svc_age_temp_xprts_now = external dso_local constant [0 x i8], align 1
@__kstrtabns_svc_age_temp_xprts_now = external dso_local constant [0 x i8], align 1
@__ksymtab_svc_age_temp_xprts_now = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @svc_age_temp_xprts_now to i32), ptr @__kstrtab_svc_age_temp_xprts_now, ptr @__kstrtabns_svc_age_temp_xprts_now }, section "___ksymtab_gpl+svc_age_temp_xprts_now", align 4
@__kstrtab_svc_close_xprt = external dso_local constant [0 x i8], align 1
@__kstrtabns_svc_close_xprt = external dso_local constant [0 x i8], align 1
@__ksymtab_svc_close_xprt = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @svc_close_xprt to i32), ptr @__kstrtab_svc_close_xprt, ptr @__kstrtabns_svc_close_xprt }, section "___ksymtab_gpl+svc_close_xprt", align 4
@__kstrtab_svc_find_xprt = external dso_local constant [0 x i8], align 1
@__kstrtabns_svc_find_xprt = external dso_local constant [0 x i8], align 1
@__ksymtab_svc_find_xprt = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @svc_find_xprt to i32), ptr @__kstrtab_svc_find_xprt, ptr @__kstrtabns_svc_find_xprt }, section "___ksymtab_gpl+svc_find_xprt", align 4
@__kstrtab_svc_xprt_names = external dso_local constant [0 x i8], align 1
@__kstrtabns_svc_xprt_names = external dso_local constant [0 x i8], align 1
@__ksymtab_svc_xprt_names = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @svc_xprt_names to i32), ptr @__kstrtab_svc_xprt_names, ptr @__kstrtabns_svc_xprt_names }, section "___ksymtab_gpl+svc_xprt_names", align 4
@svc_pool_stats_seq_ops = internal constant %struct.seq_operations { ptr @svc_pool_stats_start, ptr @svc_pool_stats_stop, ptr @svc_pool_stats_next, ptr @svc_pool_stats_show }, align 4
@__kstrtab_svc_pool_stats_open = external dso_local constant [0 x i8], align 1
@__kstrtabns_svc_pool_stats_open = external dso_local constant [0 x i8], align 1
@__ksymtab_svc_pool_stats_open = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @svc_pool_stats_open to i32), ptr @__kstrtab_svc_pool_stats_open, ptr @__kstrtabns_svc_pool_stats_open }, section "___ksymtab+svc_pool_stats_open", align 4
@__tracepoint_svc_xprt_free = external dso_local global %struct.tracepoint, align 4
@__cpu_online_mask = external dso_local global %struct.cpumask, align 4
@__tracepoint_svc_xprt_create_err = external dso_local global %struct.tracepoint, align 4
@.str.7 = private unnamed_addr constant [14 x i8] c"%pI4, port=%u\00", align 1
@.str.8 = private unnamed_addr constant [14 x i8] c"%pI6, port=%u\00", align 1
@.str.9 = private unnamed_addr constant [25 x i8] c"unknown address type: %d\00", align 1
@__tracepoint_svc_xprt_no_write_space = external dso_local global %struct.tracepoint, align 4
@__tracepoint_svc_xprt_enqueue = external dso_local global %struct.tracepoint, align 4
@__tracepoint_svc_wake_up = external dso_local global %struct.tracepoint, align 4
@svc_alloc_arg.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.10 = private unnamed_addr constant [49 x i8] c"\014svc: warning: pages=%lu > RPCSVC_MAXPAGES=%lu\0A\00", align 1
@__tracepoint_svc_alloc_arg_err = external dso_local global %struct.tracepoint, align 4
@system_freezing_cnt = external dso_local global %struct.atomic_t, align 4
@svc_get_next_xprt.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@__tracepoint_svc_xprt_dequeue = external dso_local global %struct.tracepoint, align 4
@.str.11 = private unnamed_addr constant [61 x i8] c"\015%s: too many open connections, consider increasing the %s\0A\00", align 1
@.str.12 = private unnamed_addr constant [26 x i8] c"max number of connections\00", align 1
@.str.13 = private unnamed_addr constant [18 x i8] c"number of threads\00", align 1
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 64
@__tracepoint_svc_xprt_accept = external dso_local global %struct.tracepoint, align 4
@__tracepoint_svc_defer_recv = external dso_local global %struct.tracepoint, align 4
@__tracepoint_svc_xdr_recvfrom = external dso_local global %struct.tracepoint, align 4
@.str.14 = private unnamed_addr constant [39 x i8] c"\013RPC request reserved %d but used %d\0A\00", align 1
@__tracepoint_svc_drop = external dso_local global %struct.tracepoint, align 4
@__tracepoint_svc_xdr_sendto = external dso_local global %struct.tracepoint, align 4
@__tracepoint_svc_stats_latency = external dso_local global %struct.tracepoint, align 4
@__tracepoint_svc_send = external dso_local global %struct.tracepoint, align 4
@__tracepoint_svc_xprt_close = external dso_local global %struct.tracepoint, align 4
@svc_delete_xprt.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@__tracepoint_svc_xprt_detach = external dso_local global %struct.tracepoint, align 4
@__tracepoint_svc_defer = external dso_local global %struct.tracepoint, align 4
@__tracepoint_svc_defer_drop = external dso_local global %struct.tracepoint, align 4
@__tracepoint_svc_defer_queue = external dso_local global %struct.tracepoint, align 4
@.str.15 = private unnamed_addr constant [7 x i8] c"%s %u\0A\00", align 1
@.str.16 = private unnamed_addr constant [72 x i8] c"# pool packets-arrived sockets-enqueued threads-woken threads-timedout\0A\00", align 1
@.str.17 = private unnamed_addr constant [20 x i8] c"%u %lu %lu %lu %lu\0A\00", align 1
@llvm.compiler.used = appending global [22 x ptr] [ptr @__UNIQUE_ID_svc_rpc_per_connection_limittype696, ptr @__ksymtab_svc_age_temp_xprts_now, ptr @__ksymtab_svc_close_xprt, ptr @__ksymtab_svc_create_xprt, ptr @__ksymtab_svc_drop, ptr @__ksymtab_svc_find_xprt, ptr @__ksymtab_svc_pool_stats_open, ptr @__ksymtab_svc_print_addr, ptr @__ksymtab_svc_recv, ptr @__ksymtab_svc_reg_xprt_class, ptr @__ksymtab_svc_reserve, ptr @__ksymtab_svc_unreg_xprt_class, ptr @__ksymtab_svc_wake_up, ptr @__ksymtab_svc_xprt_copy_addrs, ptr @__ksymtab_svc_xprt_deferred_close, ptr @__ksymtab_svc_xprt_do_enqueue, ptr @__ksymtab_svc_xprt_enqueue, ptr @__ksymtab_svc_xprt_init, ptr @__ksymtab_svc_xprt_names, ptr @__ksymtab_svc_xprt_put, ptr @__ksymtab_svc_xprt_received, ptr @__param_svc_rpc_per_connection_limit], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @svc_reg_xprt_class(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.svc_xprt_class, ptr %0, i32 0, i32 3
  store volatile ptr %2, ptr %2, align 4
  %3 = getelementptr inbounds %struct.svc_xprt_class, ptr %0, i32 0, i32 3, i32 1
  store ptr %2, ptr %3, align 4
  tail call void @_raw_spin_lock(ptr noundef nonnull @svc_xprt_class_lock) #19
  br label %4

4:                                                ; preds = %8, %1
  %5 = phi ptr [ @svc_xprt_class_list, %1 ], [ %6, %8 ]
  %6 = load ptr, ptr %5, align 4
  %7 = icmp eq ptr %6, @svc_xprt_class_list
  br i1 %7, label %14, label %8

8:                                                ; preds = %4
  %9 = getelementptr i8, ptr %6, i32 -12
  %10 = load ptr, ptr %0, align 4
  %11 = load ptr, ptr %9, align 4
  %12 = tail call i32 @strcmp(ptr noundef %10, ptr noundef %11)
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %16, label %4

14:                                               ; preds = %4
  %15 = load ptr, ptr getelementptr inbounds (%struct.list_head, ptr @svc_xprt_class_list, i32 0, i32 1), align 4
  store ptr %2, ptr getelementptr inbounds (%struct.list_head, ptr @svc_xprt_class_list, i32 0, i32 1), align 4
  store ptr @svc_xprt_class_list, ptr %2, align 4
  store ptr %15, ptr %3, align 4
  store volatile ptr %2, ptr %15, align 4
  br label %16

16:                                               ; preds = %14, %8
  %17 = phi i32 [ 0, %14 ], [ -17, %8 ]
  tail call void asm sideeffect "dmb ish", "~{memory}"() #19, !srcloc !8
  %18 = load i16, ptr @svc_xprt_class_lock, align 4
  %19 = add i16 %18, 1
  store i16 %19, ptr @svc_xprt_class_lock, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #19, !srcloc !9
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #19, !srcloc !10
  tail call void asm sideeffect "", "~{memory}"() #19, !srcloc !11
  ret i32 %17
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @svc_unreg_xprt_class(ptr noundef %0) #0 {
  tail call void @_raw_spin_lock(ptr noundef nonnull @svc_xprt_class_lock) #19
  %2 = getelementptr inbounds %struct.svc_xprt_class, ptr %0, i32 0, i32 3
  %3 = getelementptr inbounds %struct.svc_xprt_class, ptr %0, i32 0, i32 3, i32 1
  %4 = load ptr, ptr %3, align 4
  %5 = load ptr, ptr %2, align 4
  %6 = getelementptr inbounds %struct.list_head, ptr %5, i32 0, i32 1
  store ptr %4, ptr %6, align 4
  store volatile ptr %5, ptr %4, align 4
  store volatile ptr %2, ptr %2, align 4
  store ptr %2, ptr %3, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #19, !srcloc !8
  %7 = load i16, ptr @svc_xprt_class_lock, align 4
  %8 = add i16 %7, 1
  store i16 %8, ptr @svc_xprt_class_lock, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #19, !srcloc !9
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #19, !srcloc !10
  tail call void asm sideeffect "", "~{memory}"() #19, !srcloc !11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @svc_print_xprts(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = alloca [80 x i8], align 1
  call void @llvm.lifetime.start.p0(i64 80, ptr nonnull %3) #19
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(80) %3, i8 0, i32 80, i1 false), !annotation !12
  store i8 0, ptr %0, align 1
  tail call void @_raw_spin_lock(ptr noundef nonnull @svc_xprt_class_lock) #19
  %4 = load ptr, ptr @svc_xprt_class_list, align 4
  %5 = icmp eq ptr %4, @svc_xprt_class_list
  br i1 %5, label %22, label %6

6:                                                ; preds = %18, %2
  %7 = phi ptr [ %20, %18 ], [ %4, %2 ]
  %8 = phi i32 [ %16, %18 ], [ 0, %2 ]
  %9 = getelementptr i8, ptr %7, i32 -12
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr i8, ptr %7, i32 8
  %12 = load i32, ptr %11, align 4
  %13 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %3, i32 noundef 80, ptr noundef nonnull @.str, ptr noundef %10, i32 noundef %12)
  %14 = icmp ugt i32 %13, 79
  br i1 %14, label %22, label %15

15:                                               ; preds = %6
  %16 = add i32 %13, %8
  %17 = icmp slt i32 %16, %1
  br i1 %17, label %18, label %22

18:                                               ; preds = %15
  %19 = call ptr @strcat(ptr noundef %0, ptr noundef nonnull %3)
  %20 = load ptr, ptr %7, align 4
  %21 = icmp eq ptr %20, @svc_xprt_class_list
  br i1 %21, label %22, label %6

22:                                               ; preds = %18, %15, %6, %2
  %23 = phi i32 [ 0, %2 ], [ %8, %6 ], [ %8, %15 ], [ %16, %18 ]
  tail call void asm sideeffect "dmb ish", "~{memory}"() #19, !srcloc !8
  %24 = load i16, ptr @svc_xprt_class_lock, align 4
  %25 = add i16 %24, 1
  store i16 %25, ptr @svc_xprt_class_lock, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #19, !srcloc !9
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #19, !srcloc !10
  tail call void asm sideeffect "", "~{memory}"() #19, !srcloc !11
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %3) #19
  ret i32 %23
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #3

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #4

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid willreturn
declare dso_local ptr @strcat(ptr noalias noundef returned, ptr noalias nocapture noundef readonly) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @svc_xprt_deferred_close(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.svc_xprt, ptr %0, i32 0, i32 5
  %3 = tail call i32 @_test_and_set_bit(i32 noundef 2, ptr noundef %2) #19
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %16

5:                                                ; preds = %1
  %6 = load volatile i32, ptr %2, align 4
  %7 = and i32 %6, 1
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %16

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.svc_xprt, ptr %0, i32 0, i32 6
  %11 = load ptr, ptr %10, align 4
  %12 = getelementptr inbounds %struct.svc_serv, ptr %11, i32 0, i32 16
  %13 = load ptr, ptr %12, align 4
  %14 = getelementptr inbounds %struct.svc_serv_ops, ptr %13, i32 0, i32 2
  %15 = load ptr, ptr %14, align 4
  tail call void %15(ptr noundef %0) #19
  br label %16

16:                                               ; preds = %9, %5, %1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @svc_xprt_enqueue(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.svc_xprt, ptr %0, i32 0, i32 5
  %3 = load volatile i32, ptr %2, align 4
  %4 = and i32 %3, 1
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %13

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.svc_xprt, ptr %0, i32 0, i32 6
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.svc_serv, ptr %8, i32 0, i32 16
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr inbounds %struct.svc_serv_ops, ptr %10, i32 0, i32 2
  %12 = load ptr, ptr %11, align 4
  tail call void %12(ptr noundef %0) #19
  br label %13

13:                                               ; preds = %6, %1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @svc_xprt_put(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.svc_xprt, ptr %0, i32 0, i32 2
  tail call void asm sideeffect "dmb ish", "~{memory}"() #19, !srcloc !13
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %2) #19, !srcloc !14
  %3 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %2, ptr %2, i32 1, ptr elementtype(i32) %2) #19, !srcloc !15
  %4 = extractvalue { i32, i32, i32 } %3, 0
  %5 = icmp eq i32 %4, 1
  br i1 %5, label %9, label %6

6:                                                ; preds = %1
  %7 = icmp sgt i32 %4, 0
  br i1 %7, label %58, label %8, !prof !16

8:                                                ; preds = %6
  tail call void @refcount_warn_saturate(ptr noundef %2, i32 noundef 3) #19
  br label %58

9:                                                ; preds = %1
  tail call void asm sideeffect "dmb ish", "~{memory}"() #19, !srcloc !17
  %10 = load ptr, ptr %0, align 4
  %11 = getelementptr inbounds %struct.svc_xprt_class, ptr %10, i32 0, i32 1
  %12 = load ptr, ptr %11, align 4
  %13 = getelementptr %struct.svc_xprt, ptr %0, i32 0, i32 5
  %14 = load volatile i32, ptr %13, align 4
  %15 = and i32 %14, 2048
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %18, label %17

17:                                               ; preds = %9
  tail call void @svcauth_unix_info_release(ptr noundef %0) #19
  br label %18

18:                                               ; preds = %17, %9
  %19 = getelementptr %struct.svc_xprt, ptr %0, i32 0, i32 20
  %20 = load ptr, ptr %19, align 4
  %21 = icmp eq ptr %20, null
  br i1 %21, label %27, label %22

22:                                               ; preds = %18
  tail call void asm sideeffect "dmb ish", "~{memory}"() #19, !srcloc !18
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr nonnull %20) #19, !srcloc !14
  %23 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %20, ptr nonnull %20, i32 1, ptr nonnull elementtype(i32) %20) #19, !srcloc !19
  %24 = extractvalue { i32, i32 } %23, 0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #19, !srcloc !20
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %22
  tail call void @__put_cred(ptr noundef nonnull %20) #19
  br label %27

27:                                               ; preds = %26, %22, %18
  %28 = getelementptr %struct.svc_xprt, ptr %0, i32 0, i32 21
  %29 = load ptr, ptr %28, align 4
  %30 = icmp eq ptr %29, null
  br i1 %30, label %32, label %31

31:                                               ; preds = %27
  tail call void @xprt_put(ptr noundef nonnull %29) #19
  br label %32

32:                                               ; preds = %31, %27
  %33 = getelementptr %struct.svc_xprt, ptr %0, i32 0, i32 22
  %34 = load ptr, ptr %33, align 4
  %35 = icmp eq ptr %34, null
  br i1 %35, label %37, label %36

36:                                               ; preds = %32
  tail call void @xprt_switch_put(ptr noundef nonnull %34) #19
  br label %37

37:                                               ; preds = %36, %32
  %38 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_svc_xprt_free, i32 0, i32 1), align 4
  %39 = icmp sgt i32 %38, 0
  br i1 %39, label %40, label %53

40:                                               ; preds = %37
  %41 = tail call ptr @llvm.thread.pointer() #19
  %42 = getelementptr inbounds %struct.thread_info, ptr %41, i32 0, i32 2
  %43 = load i32, ptr %42, align 8
  %44 = lshr i32 %43, 5
  %45 = getelementptr i32, ptr @__cpu_online_mask, i32 %44
  %46 = load volatile i32, ptr %45, align 4
  %47 = and i32 %43, 31
  %48 = shl nuw i32 1, %47
  %49 = and i32 %48, %46
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %53, label %51

51:                                               ; preds = %40
  tail call void asm sideeffect "", "~{memory}"() #19, !srcloc !21
  %52 = tail call i32 @__traceiter_svc_xprt_free(ptr noundef null, ptr noundef %0) #19
  tail call void asm sideeffect "", "~{memory}"() #19, !srcloc !22
  br label %53

53:                                               ; preds = %51, %40, %37
  %54 = getelementptr %struct.svc_xprt, ptr %0, i32 0, i32 1
  %55 = load ptr, ptr %54, align 4
  %56 = getelementptr inbounds %struct.svc_xprt_ops, ptr %55, i32 0, i32 8
  %57 = load ptr, ptr %56, align 4
  tail call void %57(ptr noundef %0) #19
  tail call void @module_put(ptr noundef %12) #19
  br label %58

58:                                               ; preds = %53, %8, %6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @svc_xprt_init(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) #0 {
  %5 = getelementptr inbounds i8, ptr %2, i32 4
  tail call void @llvm.memset.p0.i32(ptr noundef align 4 dereferenceable(428) %5, i8 0, i32 424, i1 false)
  store ptr %1, ptr %2, align 4
  %6 = getelementptr inbounds %struct.svc_xprt_class, ptr %1, i32 0, i32 2
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.svc_xprt, ptr %2, i32 0, i32 1
  store ptr %7, ptr %8, align 4
  %9 = getelementptr inbounds %struct.svc_xprt, ptr %2, i32 0, i32 2
  store volatile i32 1, ptr %9, align 4
  %10 = getelementptr inbounds %struct.svc_xprt, ptr %2, i32 0, i32 6
  store ptr %3, ptr %10, align 4
  %11 = getelementptr inbounds %struct.svc_xprt, ptr %2, i32 0, i32 3
  store volatile ptr %11, ptr %11, align 4
  %12 = getelementptr inbounds %struct.svc_xprt, ptr %2, i32 0, i32 3, i32 1
  store ptr %11, ptr %12, align 4
  %13 = getelementptr inbounds %struct.svc_xprt, ptr %2, i32 0, i32 4
  store volatile ptr %13, ptr %13, align 4
  %14 = getelementptr inbounds %struct.svc_xprt, ptr %2, i32 0, i32 4, i32 1
  store ptr %13, ptr %14, align 4
  %15 = getelementptr inbounds %struct.svc_xprt, ptr %2, i32 0, i32 12
  store volatile ptr %15, ptr %15, align 4
  %16 = getelementptr inbounds %struct.svc_xprt, ptr %2, i32 0, i32 12, i32 1
  store ptr %15, ptr %16, align 4
  %17 = getelementptr inbounds %struct.svc_xprt, ptr %2, i32 0, i32 18
  store volatile ptr %17, ptr %17, align 4
  %18 = getelementptr inbounds %struct.svc_xprt, ptr %2, i32 0, i32 18, i32 1
  store ptr %17, ptr %18, align 4
  %19 = getelementptr inbounds %struct.svc_xprt, ptr %2, i32 0, i32 9
  tail call void @__mutex_init(ptr noundef %19, ptr noundef nonnull @.str.1, ptr noundef nonnull @svc_xprt_init.__key) #19
  %20 = getelementptr inbounds %struct.svc_xprt, ptr %2, i32 0, i32 10
  store i32 0, ptr %20, align 4
  %21 = getelementptr inbounds %struct.svc_xprt, ptr %2, i32 0, i32 5
  tail call void @_set_bit(i32 noundef 0, ptr noundef %21) #19
  %22 = getelementptr inbounds %struct.svc_xprt, ptr %2, i32 0, i32 19
  store ptr %0, ptr %22, align 4
  %23 = getelementptr inbounds %struct.svc_xprt, ptr %2, i32 0, i32 17
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(14) %23, ptr noundef nonnull align 1 dereferenceable(14) @.str.2, i32 14, i1 false)
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @svc_xprt_received(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.svc_xprt, ptr %0, i32 0, i32 5
  %3 = load volatile i32, ptr %2, align 4
  %4 = and i32 %3, 1
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %9

6:                                                ; preds = %1
  %7 = load i1, ptr @svc_xprt_received.__already_done, align 1
  br i1 %7, label %27, label %8, !prof !16

8:                                                ; preds = %6
  store i1 true, ptr @svc_xprt_received.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 264, i32 noundef 9, ptr noundef nonnull @.str.4, ptr noundef %0) #19
  br label %27

9:                                                ; preds = %1
  %10 = getelementptr inbounds %struct.svc_xprt, ptr %0, i32 0, i32 2
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %10) #19, !srcloc !14
  %11 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %10, ptr %10, i32 1, ptr elementtype(i32) %10) #19, !srcloc !23
  %12 = extractvalue { i32, i32, i32 } %11, 0
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %18, label %14, !prof !24

14:                                               ; preds = %9
  %15 = add i32 %12, 1
  %16 = or i32 %15, %12
  %17 = icmp sgt i32 %16, -1
  br i1 %17, label %20, label %18, !prof !16

18:                                               ; preds = %14, %9
  %19 = phi i32 [ 2, %9 ], [ 1, %14 ]
  tail call void @refcount_warn_saturate(ptr noundef %10, i32 noundef %19) #19
  br label %20

20:                                               ; preds = %18, %14
  tail call void asm sideeffect "dmb ish", "~{memory}"() #19, !srcloc !25
  tail call void @_clear_bit(i32 noundef 0, ptr noundef %2) #19
  %21 = getelementptr inbounds %struct.svc_xprt, ptr %0, i32 0, i32 6
  %22 = load ptr, ptr %21, align 4
  %23 = getelementptr inbounds %struct.svc_serv, ptr %22, i32 0, i32 16
  %24 = load ptr, ptr %23, align 4
  %25 = getelementptr inbounds %struct.svc_serv_ops, ptr %24, i32 0, i32 2
  %26 = load ptr, ptr %25, align 4
  tail call void %26(ptr noundef %0) #19
  tail call void @svc_xprt_put(ptr noundef %0)
  br label %27

27:                                               ; preds = %20, %8, %6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @svc_add_new_perm_xprt(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.svc_xprt, ptr %1, i32 0, i32 5
  tail call void @_clear_bit(i32 noundef 4, ptr noundef %3) #19
  %4 = getelementptr inbounds %struct.svc_serv, ptr %0, i32 0, i32 2
  tail call void @_raw_spin_lock_bh(ptr noundef %4) #19
  %5 = getelementptr inbounds %struct.svc_xprt, ptr %1, i32 0, i32 3
  %6 = getelementptr inbounds %struct.svc_serv, ptr %0, i32 0, i32 9
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.list_head, ptr %7, i32 0, i32 1
  store ptr %5, ptr %8, align 4
  store ptr %7, ptr %5, align 4
  %9 = getelementptr inbounds %struct.svc_xprt, ptr %1, i32 0, i32 3, i32 1
  store ptr %6, ptr %9, align 4
  store volatile ptr %5, ptr %6, align 4
  tail call void @_raw_spin_unlock_bh(ptr noundef %4) #19
  tail call void @svc_xprt_received(ptr noundef %1)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @svc_create_xprt(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, i16 noundef zeroext %4, i32 noundef %5, ptr noundef %6) #0 {
  %8 = tail call fastcc i32 @_svc_create_xprt(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, i16 noundef zeroext %4, i32 noundef %5, ptr noundef %6)
  %9 = icmp eq i32 %8, -93
  br i1 %9, label %10, label %13

10:                                               ; preds = %7
  %11 = tail call i32 (i1, ptr, ...) @__request_module(i1 noundef zeroext true, ptr noundef nonnull @.str.5, ptr noundef %1) #19
  %12 = tail call fastcc i32 @_svc_create_xprt(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, i16 noundef zeroext %4, i32 noundef %5, ptr noundef %6)
  br label %13

13:                                               ; preds = %10, %7
  %14 = phi i32 [ %12, %10 ], [ %8, %7 ]
  ret i32 %14
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @_svc_create_xprt(ptr noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2, i32 noundef %3, i16 noundef zeroext %4, i32 noundef %5, ptr noundef %6) unnamed_addr #0 {
  %8 = alloca %struct.sockaddr_in, align 4
  %9 = alloca %struct.sockaddr_in6, align 4
  tail call void @_raw_spin_lock(ptr noundef nonnull @svc_xprt_class_lock) #19
  br label %10

10:                                               ; preds = %14, %7
  %11 = phi ptr [ @svc_xprt_class_list, %7 ], [ %12, %14 ]
  %12 = load ptr, ptr %11, align 4
  %13 = icmp eq ptr %12, @svc_xprt_class_list
  br i1 %13, label %93, label %14

14:                                               ; preds = %10
  %15 = getelementptr i8, ptr %12, i32 -12
  %16 = load ptr, ptr %15, align 4
  %17 = tail call i32 @strcmp(ptr noundef %1, ptr noundef %16)
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %10

19:                                               ; preds = %14
  %20 = getelementptr i8, ptr %12, i32 -12
  %21 = getelementptr i8, ptr %12, i32 -8
  %22 = load ptr, ptr %21, align 4
  %23 = tail call zeroext i1 @try_module_get(ptr noundef %22) #19
  br i1 %23, label %24, label %93

24:                                               ; preds = %19
  tail call void asm sideeffect "dmb ish", "~{memory}"() #19, !srcloc !8
  %25 = load i16, ptr @svc_xprt_class_lock, align 4
  %26 = add i16 %25, 1
  store i16 %26, ptr @svc_xprt_class_lock, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #19, !srcloc !9
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #19, !srcloc !10
  tail call void asm sideeffect "", "~{memory}"() #19, !srcloc !11
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %8) #19
  store i16 2, ptr %8, align 4
  %27 = getelementptr inbounds %struct.sockaddr_in, ptr %8, i32 0, i32 1
  %28 = tail call i16 @llvm.bswap.i16(i16 %4) #19
  store i16 %28, ptr %27, align 2
  %29 = getelementptr inbounds %struct.sockaddr_in, ptr %8, i32 0, i32 2
  store i32 0, ptr %29, align 4
  %30 = getelementptr inbounds %struct.sockaddr_in, ptr %8, i32 0, i32 3
  store i64 0, ptr %30, align 4
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %9) #19
  %31 = getelementptr inbounds i8, ptr %9, i32 4
  call void @llvm.memset.p0.i64(ptr noundef align 4 dereferenceable(24) %31, i8 0, i64 24, i1 false) #19
  store i16 10, ptr %9, align 4
  %32 = getelementptr inbounds %struct.sockaddr_in6, ptr %9, i32 0, i32 1
  store i16 %28, ptr %32, align 2
  switch i32 %3, label %33 [
    i32 2, label %35
    i32 10, label %34
  ]

33:                                               ; preds = %24
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %9) #19
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %8) #19
  br label %64

34:                                               ; preds = %24
  br label %35

35:                                               ; preds = %34, %24
  %36 = phi ptr [ %9, %34 ], [ %8, %24 ]
  %37 = phi i32 [ 28, %34 ], [ 16, %24 ]
  %38 = getelementptr i8, ptr %12, i32 -4
  %39 = load ptr, ptr %38, align 4
  %40 = load ptr, ptr %39, align 4
  %41 = call ptr %40(ptr noundef %0, ptr noundef %2, ptr noundef nonnull %36, i32 noundef %37, i32 noundef %5) #19
  %42 = icmp ugt ptr %41, inttoptr (i32 -4096 to ptr)
  br i1 %42, label %43, label %68

43:                                               ; preds = %35
  %44 = load ptr, ptr %0, align 4
  %45 = getelementptr inbounds %struct.svc_program, ptr %44, i32 0, i32 6
  %46 = load ptr, ptr %45, align 4
  %47 = load ptr, ptr %20, align 4
  %48 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_svc_xprt_create_err, i32 0, i32 1), align 4
  %49 = icmp sgt i32 %48, 0
  br i1 %49, label %50, label %63

50:                                               ; preds = %43
  %51 = tail call ptr @llvm.thread.pointer() #19
  %52 = getelementptr inbounds %struct.thread_info, ptr %51, i32 0, i32 2
  %53 = load i32, ptr %52, align 8
  %54 = lshr i32 %53, 5
  %55 = getelementptr i32, ptr @__cpu_online_mask, i32 %54
  %56 = load volatile i32, ptr %55, align 4
  %57 = and i32 %53, 31
  %58 = shl nuw i32 1, %57
  %59 = and i32 %58, %56
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %63, label %61

61:                                               ; preds = %50
  call void asm sideeffect "", "~{memory}"() #19, !srcloc !26
  %62 = call i32 @__traceiter_svc_xprt_create_err(ptr noundef null, ptr noundef %46, ptr noundef %47, ptr noundef nonnull %36, i32 noundef %37, ptr noundef nonnull %41) #19
  call void asm sideeffect "", "~{memory}"() #19, !srcloc !27
  br label %63

63:                                               ; preds = %61, %50, %43
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %9) #19
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %8) #19
  br label %64

64:                                               ; preds = %63, %33
  %65 = phi ptr [ inttoptr (i32 -97 to ptr), %33 ], [ %41, %63 ]
  %66 = load ptr, ptr %21, align 4
  call void @module_put(ptr noundef %66) #19
  %67 = ptrtoint ptr %65 to i32
  br label %96

68:                                               ; preds = %35
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %9) #19
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %8) #19
  %69 = icmp eq ptr %6, null
  br i1 %69, label %73, label %70

70:                                               ; preds = %68
  %71 = getelementptr inbounds %struct.cred, ptr %6, i32 0, i32 24
  store i32 0, ptr %71, align 4
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr nonnull %6) #19, !srcloc !14
  %72 = call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %6, ptr nonnull %6, i32 1, ptr nonnull elementtype(i32) %6) #19, !srcloc !28
  br label %73

73:                                               ; preds = %70, %68
  %74 = getelementptr inbounds %struct.svc_xprt, ptr %41, i32 0, i32 20
  store ptr %6, ptr %74, align 4
  %75 = getelementptr inbounds %struct.svc_xprt, ptr %41, i32 0, i32 5
  call void @_clear_bit(i32 noundef 4, ptr noundef %75) #19
  %76 = getelementptr inbounds %struct.svc_serv, ptr %0, i32 0, i32 2
  call void @_raw_spin_lock_bh(ptr noundef %76) #19
  %77 = getelementptr inbounds %struct.svc_xprt, ptr %41, i32 0, i32 3
  %78 = getelementptr inbounds %struct.svc_serv, ptr %0, i32 0, i32 9
  %79 = load ptr, ptr %78, align 4
  %80 = getelementptr inbounds %struct.list_head, ptr %79, i32 0, i32 1
  store ptr %77, ptr %80, align 4
  store ptr %79, ptr %77, align 4
  %81 = getelementptr inbounds %struct.svc_xprt, ptr %41, i32 0, i32 3, i32 1
  store ptr %78, ptr %81, align 4
  store volatile ptr %77, ptr %78, align 4
  call void @_raw_spin_unlock_bh(ptr noundef %76) #19
  call void @svc_xprt_received(ptr noundef %41) #19
  %82 = getelementptr inbounds %struct.svc_xprt, ptr %41, i32 0, i32 13
  %83 = load i16, ptr %82, align 2
  switch i16 %83, label %96 [
    i16 2, label %84
    i16 10, label %86
  ]

84:                                               ; preds = %73
  %85 = getelementptr inbounds %struct.sockaddr_in, ptr %82, i32 0, i32 1
  br label %88

86:                                               ; preds = %73
  %87 = getelementptr inbounds %struct.sockaddr_in6, ptr %82, i32 0, i32 1
  br label %88

88:                                               ; preds = %86, %84
  %89 = phi ptr [ %87, %86 ], [ %85, %84 ]
  %90 = load i16, ptr %89, align 2
  %91 = call i16 @llvm.bswap.i16(i16 %90) #19
  %92 = zext i16 %91 to i32
  br label %96

93:                                               ; preds = %19, %10
  tail call void asm sideeffect "dmb ish", "~{memory}"() #19, !srcloc !8
  %94 = load i16, ptr @svc_xprt_class_lock, align 4
  %95 = add i16 %94, 1
  store i16 %95, ptr @svc_xprt_class_lock, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #19, !srcloc !9
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #19, !srcloc !10
  tail call void asm sideeffect "", "~{memory}"() #19, !srcloc !11
  br label %96

96:                                               ; preds = %93, %88, %73, %64
  %97 = phi i32 [ -93, %93 ], [ %67, %64 ], [ 0, %73 ], [ %92, %88 ]
  ret i32 %97
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__request_module(i1 noundef zeroext, ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define dso_local void @svc_xprt_copy_addrs(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1) #8 {
  %3 = getelementptr inbounds %struct.svc_rqst, ptr %0, i32 0, i32 3
  %4 = getelementptr inbounds %struct.svc_xprt, ptr %1, i32 0, i32 15
  %5 = getelementptr inbounds %struct.svc_xprt, ptr %1, i32 0, i32 16
  %6 = load i32, ptr %5, align 4
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 4 %3, ptr align 4 %4, i32 %6, i1 false)
  %7 = load i32, ptr %5, align 4
  %8 = getelementptr inbounds %struct.svc_rqst, ptr %0, i32 0, i32 4
  store i32 %7, ptr %8, align 4
  %9 = getelementptr inbounds %struct.svc_rqst, ptr %0, i32 0, i32 5
  %10 = getelementptr inbounds %struct.svc_xprt, ptr %1, i32 0, i32 13
  %11 = getelementptr inbounds %struct.svc_xprt, ptr %1, i32 0, i32 14
  %12 = load i32, ptr %11, align 4
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 8 %9, ptr align 4 %10, i32 %12, i1 false)
  %13 = load i32, ptr %11, align 4
  %14 = getelementptr inbounds %struct.svc_rqst, ptr %0, i32 0, i32 6
  store i32 %13, ptr %14, align 8
  ret void
}

; Function Attrs: nofree nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @svc_print_addr(ptr noundef %0, ptr noundef returned writeonly %1, i32 noundef %2) #9 {
  %4 = getelementptr inbounds %struct.svc_rqst, ptr %0, i32 0, i32 3
  %5 = load i16, ptr %4, align 2
  switch i16 %5, label %20 [
    i16 2, label %6
    i16 10, label %13
  ]

6:                                                ; preds = %3
  %7 = getelementptr inbounds %struct.svc_rqst, ptr %0, i32 0, i32 3, i32 0, i32 1
  %8 = getelementptr inbounds %struct.sockaddr_in, ptr %4, i32 0, i32 1
  %9 = load i16, ptr %8, align 2
  %10 = tail call i16 @llvm.bswap.i16(i16 %9) #19
  %11 = zext i16 %10 to i32
  %12 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %1, i32 noundef %2, ptr noundef nonnull @.str.7, ptr noundef %7, i32 noundef %11) #19
  br label %23

13:                                               ; preds = %3
  %14 = getelementptr inbounds %struct.svc_rqst, ptr %0, i32 0, i32 3, i32 0, i32 1, i32 4
  %15 = getelementptr inbounds %struct.sockaddr_in6, ptr %4, i32 0, i32 1
  %16 = load i16, ptr %15, align 2
  %17 = tail call i16 @llvm.bswap.i16(i16 %16) #19
  %18 = zext i16 %17 to i32
  %19 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %1, i32 noundef %2, ptr noundef nonnull @.str.8, ptr noundef %14, i32 noundef %18) #19
  br label %23

20:                                               ; preds = %3
  %21 = zext i16 %5 to i32
  %22 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %1, i32 noundef %2, ptr noundef nonnull @.str.9, i32 noundef %21) #19
  br label %23

23:                                               ; preds = %20, %13, %6
  ret ptr %1
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @svc_xprt_do_enqueue(ptr noundef %0) #0 {
  tail call void asm sideeffect "dmb ish", "~{memory}"() #19, !srcloc !29
  %2 = getelementptr inbounds %struct.svc_xprt, ptr %0, i32 0, i32 5
  %3 = load volatile i32, ptr %2, align 4
  %4 = and i32 %3, 6
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %41

6:                                                ; preds = %1
  %7 = and i32 %3, 264
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %96, label %9

9:                                                ; preds = %6
  %10 = getelementptr inbounds %struct.svc_xprt, ptr %0, i32 0, i32 1
  %11 = load ptr, ptr %10, align 4
  %12 = getelementptr inbounds %struct.svc_xprt_ops, ptr %11, i32 0, i32 2
  %13 = load ptr, ptr %12, align 4
  %14 = tail call i32 %13(ptr noundef %0) #19
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %25, label %16

16:                                               ; preds = %9
  %17 = load i32, ptr @svc_rpc_per_connection_limit, align 4
  %18 = getelementptr inbounds %struct.svc_xprt, ptr %0, i32 0, i32 8
  %19 = load volatile i32, ptr %18, align 4
  %20 = icmp eq i32 %17, 0
  br i1 %20, label %41, label %21

21:                                               ; preds = %16
  %22 = icmp sgt i32 %19, -1
  %23 = icmp ult i32 %19, %17
  %24 = select i1 %22, i1 %23, i1 false
  br i1 %24, label %41, label %25

25:                                               ; preds = %21, %9
  %26 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_svc_xprt_no_write_space, i32 0, i32 1), align 4
  %27 = icmp sgt i32 %26, 0
  br i1 %27, label %28, label %96

28:                                               ; preds = %25
  %29 = tail call ptr @llvm.thread.pointer() #19
  %30 = getelementptr inbounds %struct.thread_info, ptr %29, i32 0, i32 2
  %31 = load i32, ptr %30, align 8
  %32 = lshr i32 %31, 5
  %33 = getelementptr i32, ptr @__cpu_online_mask, i32 %32
  %34 = load volatile i32, ptr %33, align 4
  %35 = and i32 %31, 31
  %36 = shl nuw i32 1, %35
  %37 = and i32 %36, %34
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %96, label %39

39:                                               ; preds = %28
  tail call void asm sideeffect "", "~{memory}"() #19, !srcloc !30
  %40 = tail call i32 @__traceiter_svc_xprt_no_write_space(ptr noundef null, ptr noundef %0) #19
  tail call void asm sideeffect "", "~{memory}"() #19, !srcloc !31
  br label %96

41:                                               ; preds = %21, %16, %1
  %42 = tail call i32 @_test_and_set_bit(i32 noundef 0, ptr noundef %2) #19
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %44, label %96

44:                                               ; preds = %41
  tail call void asm sideeffect "", "~{memory}"() #19, !srcloc !32
  %45 = tail call ptr @llvm.thread.pointer() #19
  %46 = getelementptr inbounds %struct.thread_info, ptr %45, i32 0, i32 2
  %47 = load i32, ptr %46, align 8
  %48 = getelementptr inbounds %struct.svc_xprt, ptr %0, i32 0, i32 6
  %49 = load ptr, ptr %48, align 4
  %50 = tail call ptr @svc_pool_for_cpu(ptr noundef %49, i32 noundef %47) #19
  %51 = getelementptr inbounds %struct.svc_pool, ptr %50, i32 0, i32 5
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %51) #19, !srcloc !14
  %52 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %51, ptr %51, i32 1, ptr elementtype(i32) %51) #19, !srcloc !28
  %53 = getelementptr inbounds %struct.svc_pool, ptr %50, i32 0, i32 1
  tail call void @_raw_spin_lock_bh(ptr noundef %53) #19
  %54 = getelementptr inbounds %struct.svc_xprt, ptr %0, i32 0, i32 4
  %55 = getelementptr inbounds %struct.svc_pool, ptr %50, i32 0, i32 2
  %56 = getelementptr inbounds %struct.svc_pool, ptr %50, i32 0, i32 2, i32 1
  %57 = load ptr, ptr %56, align 4
  store ptr %54, ptr %56, align 4
  store ptr %55, ptr %54, align 4
  %58 = getelementptr inbounds %struct.svc_xprt, ptr %0, i32 0, i32 4, i32 1
  store ptr %57, ptr %58, align 4
  store volatile ptr %54, ptr %57, align 4
  %59 = getelementptr inbounds %struct.svc_pool, ptr %50, i32 0, i32 5, i32 1
  %60 = load i32, ptr %59, align 4
  %61 = add i32 %60, 1
  store i32 %61, ptr %59, align 4
  tail call void @_raw_spin_unlock_bh(ptr noundef %53) #19
  tail call void asm sideeffect "", "~{memory}"() #19, !srcloc !33
  %62 = getelementptr inbounds %struct.svc_pool, ptr %50, i32 0, i32 4
  br label %63

63:                                               ; preds = %67, %44
  %64 = phi ptr [ %62, %44 ], [ %65, %67 ]
  %65 = load volatile ptr, ptr %64, align 4
  %66 = icmp eq ptr %65, %62
  br i1 %66, label %79, label %67

67:                                               ; preds = %63
  %68 = getelementptr inbounds %struct.svc_rqst, ptr %65, i32 0, i32 33
  %69 = tail call i32 @_test_and_set_bit(i32 noundef 6, ptr noundef %68) #19
  %70 = icmp eq i32 %69, 0
  br i1 %70, label %71, label %63

71:                                               ; preds = %67
  %72 = getelementptr inbounds %struct.svc_pool, ptr %50, i32 0, i32 5, i32 2
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %72) #19, !srcloc !14
  %73 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %72, ptr %72, i32 1, ptr elementtype(i32) %72) #19, !srcloc !28
  %74 = tail call i64 @ktime_get() #19
  %75 = getelementptr inbounds %struct.svc_rqst, ptr %65, i32 0, i32 34
  store i64 %74, ptr %75, align 8
  %76 = getelementptr inbounds %struct.svc_rqst, ptr %65, i32 0, i32 46
  %77 = load ptr, ptr %76, align 4
  %78 = tail call i32 @wake_up_process(ptr noundef %77) #19
  br label %81

79:                                               ; preds = %63
  %80 = getelementptr inbounds %struct.svc_pool, ptr %50, i32 0, i32 6
  tail call void @_set_bit(i32 noundef 1, ptr noundef %80) #19
  br label %81

81:                                               ; preds = %79, %71
  %82 = phi ptr [ %65, %71 ], [ null, %79 ]
  tail call void asm sideeffect "", "~{memory}"() #19, !srcloc !34
  tail call void asm sideeffect "", "~{memory}"() #19, !srcloc !35
  %83 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_svc_xprt_enqueue, i32 0, i32 1), align 4
  %84 = icmp sgt i32 %83, 0
  br i1 %84, label %85, label %96

85:                                               ; preds = %81
  %86 = load i32, ptr %46, align 8
  %87 = lshr i32 %86, 5
  %88 = getelementptr i32, ptr @__cpu_online_mask, i32 %87
  %89 = load volatile i32, ptr %88, align 4
  %90 = and i32 %86, 31
  %91 = shl nuw i32 1, %90
  %92 = and i32 %91, %89
  %93 = icmp eq i32 %92, 0
  br i1 %93, label %96, label %94

94:                                               ; preds = %85
  tail call void asm sideeffect "", "~{memory}"() #19, !srcloc !36
  %95 = tail call i32 @__traceiter_svc_xprt_enqueue(ptr noundef null, ptr noundef %0, ptr noundef %82) #19
  tail call void asm sideeffect "", "~{memory}"() #19, !srcloc !37
  br label %96

96:                                               ; preds = %94, %85, %81, %41, %39, %28, %25, %6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @svc_pool_for_cpu(ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get() local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wake_up_process(ptr noundef) local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @svc_reserve(ptr nocapture noundef %0, i32 noundef %1) #0 {
  %3 = getelementptr inbounds %struct.svc_rqst, ptr %0, i32 0, i32 2
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.svc_rqst, ptr %0, i32 0, i32 19, i32 0, i32 0, i32 1
  %6 = load i32, ptr %5, align 4
  %7 = add i32 %6, %1
  %8 = icmp eq ptr %4, null
  br i1 %8, label %28, label %9

9:                                                ; preds = %2
  %10 = getelementptr inbounds %struct.svc_rqst, ptr %0, i32 0, i32 40
  %11 = load i32, ptr %10, align 4
  %12 = icmp sgt i32 %11, %7
  br i1 %12, label %13, label %28

13:                                               ; preds = %9
  %14 = sub i32 %11, %7
  %15 = getelementptr inbounds %struct.svc_xprt, ptr %4, i32 0, i32 7
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %15) #19, !srcloc !14
  %16 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %15, ptr %15, i32 %14, ptr elementtype(i32) %15) #19, !srcloc !38
  store i32 %7, ptr %10, align 4
  tail call void asm sideeffect "dmb ishst", "~{memory}"() #19, !srcloc !39
  %17 = getelementptr inbounds %struct.svc_xprt, ptr %4, i32 0, i32 5
  %18 = load volatile i32, ptr %17, align 4
  %19 = and i32 %18, 1
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %28

21:                                               ; preds = %13
  %22 = getelementptr inbounds %struct.svc_xprt, ptr %4, i32 0, i32 6
  %23 = load ptr, ptr %22, align 4
  %24 = getelementptr inbounds %struct.svc_serv, ptr %23, i32 0, i32 16
  %25 = load ptr, ptr %24, align 4
  %26 = getelementptr inbounds %struct.svc_serv_ops, ptr %25, i32 0, i32 2
  %27 = load ptr, ptr %26, align 4
  tail call void %27(ptr noundef nonnull %4) #19
  br label %28

28:                                               ; preds = %21, %13, %9, %2
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @svc_wake_up(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.svc_serv, ptr %0, i32 0, i32 15
  %3 = load ptr, ptr %2, align 4
  tail call void asm sideeffect "", "~{memory}"() #19, !srcloc !33
  %4 = getelementptr inbounds %struct.svc_pool, ptr %3, i32 0, i32 4
  br label %5

5:                                                ; preds = %9, %1
  %6 = phi ptr [ %4, %1 ], [ %7, %9 ]
  %7 = load volatile ptr, ptr %6, align 4
  %8 = icmp eq ptr %7, %4
  br i1 %8, label %36, label %9

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.svc_rqst, ptr %7, i32 0, i32 33
  %11 = load volatile i32, ptr %10, align 4
  %12 = and i32 %11, 64
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %5

14:                                               ; preds = %9
  tail call void asm sideeffect "", "~{memory}"() #19, !srcloc !34
  %15 = getelementptr inbounds %struct.svc_rqst, ptr %7, i32 0, i32 46
  %16 = load ptr, ptr %15, align 4
  %17 = tail call i32 @wake_up_process(ptr noundef %16) #19
  %18 = load ptr, ptr %15, align 4
  %19 = getelementptr inbounds %struct.task_struct, ptr %18, i32 0, i32 52
  %20 = load i32, ptr %19, align 8
  %21 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_svc_wake_up, i32 0, i32 1), align 4
  %22 = icmp sgt i32 %21, 0
  br i1 %22, label %23, label %53

23:                                               ; preds = %14
  %24 = tail call ptr @llvm.thread.pointer() #19
  %25 = getelementptr inbounds %struct.thread_info, ptr %24, i32 0, i32 2
  %26 = load i32, ptr %25, align 8
  %27 = lshr i32 %26, 5
  %28 = getelementptr i32, ptr @__cpu_online_mask, i32 %27
  %29 = load volatile i32, ptr %28, align 4
  %30 = and i32 %26, 31
  %31 = shl nuw i32 1, %30
  %32 = and i32 %31, %29
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %53, label %34

34:                                               ; preds = %23
  tail call void asm sideeffect "", "~{memory}"() #19, !srcloc !40
  %35 = tail call i32 @__traceiter_svc_wake_up(ptr noundef null, i32 noundef %20) #19
  tail call void asm sideeffect "", "~{memory}"() #19, !srcloc !41
  br label %53

36:                                               ; preds = %5
  tail call void asm sideeffect "", "~{memory}"() #19, !srcloc !34
  %37 = getelementptr inbounds %struct.svc_pool, ptr %3, i32 0, i32 6
  tail call void @_set_bit(i32 noundef 0, ptr noundef %37) #19
  tail call void asm sideeffect "dmb ishst", "~{memory}"() #19, !srcloc !42
  %38 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_svc_wake_up, i32 0, i32 1), align 4
  %39 = icmp sgt i32 %38, 0
  br i1 %39, label %40, label %53

40:                                               ; preds = %36
  %41 = tail call ptr @llvm.thread.pointer() #19
  %42 = getelementptr inbounds %struct.thread_info, ptr %41, i32 0, i32 2
  %43 = load i32, ptr %42, align 8
  %44 = lshr i32 %43, 5
  %45 = getelementptr i32, ptr @__cpu_online_mask, i32 %44
  %46 = load volatile i32, ptr %45, align 4
  %47 = and i32 %43, 31
  %48 = shl nuw i32 1, %47
  %49 = and i32 %48, %46
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %53, label %51

51:                                               ; preds = %40
  tail call void asm sideeffect "", "~{memory}"() #19, !srcloc !40
  %52 = tail call i32 @__traceiter_svc_wake_up(ptr noundef null, i32 noundef 0) #19
  tail call void asm sideeffect "", "~{memory}"() #19, !srcloc !41
  br label %53

53:                                               ; preds = %51, %40, %36, %34, %23, %14
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define dso_local i32 @svc_port_is_privileged(ptr nocapture noundef readonly %0) local_unnamed_addr #10 {
  %2 = load i16, ptr %0, align 2
  switch i16 %2, label %13 [
    i16 2, label %3
    i16 10, label %5
  ]

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.sockaddr_in, ptr %0, i32 0, i32 1
  br label %7

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.sockaddr_in6, ptr %0, i32 0, i32 1
  br label %7

7:                                                ; preds = %5, %3
  %8 = phi ptr [ %6, %5 ], [ %4, %3 ]
  %9 = load i16, ptr %8, align 2
  %10 = and i16 %9, 252
  %11 = icmp eq i16 %10, 0
  %12 = zext i1 %11 to i32
  br label %13

13:                                               ; preds = %7, %1
  %14 = phi i32 [ 0, %1 ], [ %12, %7 ]
  ret i32 %14
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #11

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @svc_recv(ptr noundef %0, i32 noundef %1) #0 {
  %3 = getelementptr inbounds %struct.svc_rqst, ptr %0, i32 0, i32 7
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.svc_rqst, ptr %0, i32 0, i32 15
  %6 = getelementptr inbounds %struct.svc_rqst, ptr %0, i32 0, i32 24
  store i8 0, ptr %6, align 4
  %7 = getelementptr inbounds %struct.svc_rqst, ptr %0, i32 0, i32 24, i32 1
  store i8 0, ptr %7, align 1
  %8 = getelementptr inbounds %struct.svc_serv, ptr %4, i32 0, i32 7
  %9 = load i32, ptr %8, align 4
  %10 = add i32 %9, 8192
  %11 = lshr i32 %10, 12
  %12 = icmp ugt i32 %10, 1064959
  br i1 %12, label %13, label %17

13:                                               ; preds = %2
  %14 = load i1, ptr @svc_alloc_arg.__already_done, align 1
  br i1 %14, label %19, label %15, !prof !16

15:                                               ; preds = %13
  store i1 true, ptr @svc_alloc_arg.__already_done, align 1
  %16 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, i32 noundef %11, i32 noundef 259) #20
  br label %19

17:                                               ; preds = %2
  %18 = icmp ult i32 %10, 4096
  br i1 %18, label %60, label %19

19:                                               ; preds = %17, %15, %13
  %20 = phi i32 [ %11, %17 ], [ 259, %15 ], [ 259, %13 ]
  %21 = getelementptr inbounds %struct.svc_rqst, ptr %0, i32 0, i32 20
  br label %22

22:                                               ; preds = %57, %19
  %23 = phi i32 [ 0, %19 ], [ %24, %57 ]
  %24 = tail call i32 @__alloc_pages_bulk(i32 noundef 3264, i32 noundef 0, ptr noundef null, i32 noundef %20, ptr noundef null, ptr noundef %21) #19
  %25 = icmp ugt i32 %24, %23
  br i1 %25, label %57, label %26

26:                                               ; preds = %22
  %27 = tail call ptr @llvm.thread.pointer() #19
  %28 = getelementptr inbounds %struct.task_struct, ptr %27, i32 0, i32 1
  store volatile i32 1, ptr %28, align 8
  tail call void asm sideeffect "dmb ish", "~{memory}"() #19, !srcloc !43
  %29 = load volatile i32, ptr %27, align 4
  %30 = and i32 %29, 256
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %32, label %59, !prof !16

32:                                               ; preds = %26
  %33 = load volatile i32, ptr %27, align 4
  %34 = and i32 %33, 1
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %36, label %59

36:                                               ; preds = %32
  %37 = tail call zeroext i1 @kthread_should_stop() #19
  br i1 %37, label %59, label %38

38:                                               ; preds = %36
  %39 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_svc_alloc_arg_err, i32 0, i32 1), align 4
  %40 = icmp sgt i32 %39, 0
  br i1 %40, label %41, label %53

41:                                               ; preds = %38
  %42 = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 2
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
  tail call void asm sideeffect "", "~{memory}"() #19, !srcloc !44
  %52 = tail call i32 @__traceiter_svc_alloc_arg_err(ptr noundef null, i32 noundef %20) #19
  tail call void asm sideeffect "", "~{memory}"() #19, !srcloc !45
  br label %53

53:                                               ; preds = %51, %41, %38
  store volatile i32 2, ptr %28, align 8
  %54 = getelementptr inbounds %struct.task_struct, ptr %27, i32 0, i32 4
  %55 = load volatile i32, ptr %54, align 4
  %56 = tail call i32 @io_schedule_timeout(i32 noundef 1) #19
  br label %57

57:                                               ; preds = %53, %22
  %58 = icmp ult i32 %24, %20
  br i1 %58, label %22, label %60

59:                                               ; preds = %36, %32, %26
  store volatile i32 0, ptr %28, align 8
  tail call void asm sideeffect "dmb ish", "~{memory}"() #19, !srcloc !46
  br label %478

60:                                               ; preds = %57, %17
  %61 = phi i32 [ 0, %17 ], [ %20, %57 ]
  %62 = getelementptr inbounds %struct.svc_rqst, ptr %0, i32 0, i32 20
  %63 = getelementptr %struct.svc_rqst, ptr %0, i32 0, i32 20, i32 %61
  %64 = getelementptr inbounds %struct.svc_rqst, ptr %0, i32 0, i32 23
  store ptr %63, ptr %64, align 4
  store ptr null, ptr %63, align 4
  %65 = load ptr, ptr %62, align 4
  %66 = tail call ptr @page_address(ptr noundef %65) #19
  store ptr %66, ptr %5, align 4
  %67 = getelementptr inbounds %struct.svc_rqst, ptr %0, i32 0, i32 15, i32 0, i32 0, i32 1
  store i32 4096, ptr %67, align 4
  %68 = getelementptr %struct.svc_rqst, ptr %0, i32 0, i32 20, i32 1
  %69 = getelementptr inbounds %struct.svc_rqst, ptr %0, i32 0, i32 15, i32 3
  store ptr %68, ptr %69, align 4
  %70 = getelementptr inbounds %struct.svc_rqst, ptr %0, i32 0, i32 15, i32 4
  store i32 0, ptr %70, align 4
  %71 = shl nuw i32 %61, 12
  %72 = add i32 %71, -8192
  %73 = getelementptr inbounds %struct.svc_rqst, ptr %0, i32 0, i32 15, i32 5
  store i32 %72, ptr %73, align 4
  %74 = add i32 %71, -4096
  %75 = getelementptr inbounds %struct.svc_rqst, ptr %0, i32 0, i32 15, i32 8
  store i32 %74, ptr %75, align 4
  %76 = getelementptr inbounds %struct.svc_rqst, ptr %0, i32 0, i32 15, i32 1, i32 0, i32 1
  store i32 0, ptr %76, align 4
  %77 = load volatile i32, ptr @system_freezing_cnt, align 4
  %78 = icmp eq i32 %77, 0
  br i1 %78, label %84, label %79, !prof !16

79:                                               ; preds = %60
  %80 = tail call ptr @llvm.thread.pointer() #19
  %81 = tail call zeroext i1 @freezing_slow_path(ptr noundef %80) #19
  br i1 %81, label %82, label %84, !prof !24

82:                                               ; preds = %79
  %83 = tail call zeroext i1 @__refrigerator(i1 noundef zeroext false) #19
  br label %84

84:                                               ; preds = %82, %79, %60
  %85 = tail call i32 @__cond_resched() #19
  %86 = tail call ptr @llvm.thread.pointer() #19
  %87 = load volatile i32, ptr %86, align 4
  %88 = and i32 %87, 256
  %89 = icmp eq i32 %88, 0
  br i1 %89, label %90, label %478, !prof !16

90:                                               ; preds = %84
  %91 = load volatile i32, ptr %86, align 4
  %92 = and i32 %91, 1
  %93 = icmp eq i32 %92, 0
  br i1 %93, label %94, label %478

94:                                               ; preds = %90
  %95 = tail call zeroext i1 @kthread_should_stop() #19
  br i1 %95, label %478, label %96

96:                                               ; preds = %94
  %97 = getelementptr inbounds %struct.svc_rqst, ptr %0, i32 0, i32 8
  %98 = load ptr, ptr %97, align 8
  %99 = getelementptr inbounds %struct.svc_rqst, ptr %0, i32 0, i32 2
  %100 = load ptr, ptr %99, align 8
  %101 = icmp ne ptr %100, null
  %102 = load i1, ptr @svc_get_next_xprt.__already_done, align 1
  %103 = xor i1 %102, true
  %104 = select i1 %101, i1 %103, i1 false
  br i1 %104, label %105, label %106, !prof !24

105:                                              ; preds = %96
  store i1 true, ptr @svc_get_next_xprt.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 737, i32 noundef 9, ptr noundef null) #19
  br label %106

106:                                              ; preds = %105, %96
  %107 = getelementptr inbounds %struct.svc_pool, ptr %98, i32 0, i32 2
  %108 = load volatile ptr, ptr %107, align 4
  %109 = icmp eq ptr %108, %107
  br i1 %109, label %133, label %110

110:                                              ; preds = %106
  %111 = getelementptr inbounds %struct.svc_pool, ptr %98, i32 0, i32 1
  tail call void @_raw_spin_lock_bh(ptr noundef %111) #19
  %112 = load volatile ptr, ptr %107, align 4
  %113 = icmp eq ptr %112, %107
  br i1 %113, label %114, label %115, !prof !24

114:                                              ; preds = %110
  tail call void @_raw_spin_unlock_bh(ptr noundef %111) #19
  br label %133

115:                                              ; preds = %110
  %116 = getelementptr i8, ptr %112, i32 -20
  %117 = getelementptr inbounds %struct.list_head, ptr %112, i32 0, i32 1
  %118 = load ptr, ptr %117, align 4
  %119 = load ptr, ptr %112, align 4
  %120 = getelementptr inbounds %struct.list_head, ptr %119, i32 0, i32 1
  store ptr %118, ptr %120, align 4
  store volatile ptr %119, ptr %118, align 4
  store volatile ptr %112, ptr %112, align 4
  store ptr %112, ptr %117, align 4
  %121 = getelementptr i8, ptr %112, i32 -12
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %121) #19, !srcloc !14
  %122 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %121, ptr %121, i32 1, ptr elementtype(i32) %121) #19, !srcloc !23
  %123 = extractvalue { i32, i32, i32 } %122, 0
  %124 = icmp eq i32 %123, 0
  br i1 %124, label %129, label %125, !prof !24

125:                                              ; preds = %115
  %126 = add i32 %123, 1
  %127 = or i32 %126, %123
  %128 = icmp sgt i32 %127, -1
  br i1 %128, label %131, label %129, !prof !16

129:                                              ; preds = %125, %115
  %130 = phi i32 [ 2, %115 ], [ 1, %125 ]
  tail call void @refcount_warn_saturate(ptr noundef %121, i32 noundef %130) #19
  br label %131

131:                                              ; preds = %129, %125
  tail call void @_raw_spin_unlock_bh(ptr noundef %111) #19
  store ptr %116, ptr %99, align 8
  %132 = icmp eq ptr %116, null
  br i1 %132, label %134, label %215

133:                                              ; preds = %114, %106
  store ptr null, ptr %99, align 8
  br label %134

134:                                              ; preds = %133, %131
  %135 = getelementptr inbounds %struct.task_struct, ptr %86, i32 0, i32 1
  store volatile i32 1, ptr %135, align 8
  tail call void asm sideeffect "dmb ish", "~{memory}"() #19, !srcloc !47
  tail call void asm sideeffect "dmb ish", "~{memory}"() #19, !srcloc !48
  %136 = getelementptr inbounds %struct.svc_pool, ptr %98, i32 0, i32 6
  tail call void @_clear_bit(i32 noundef 1, ptr noundef %136) #19
  %137 = getelementptr inbounds %struct.svc_rqst, ptr %0, i32 0, i32 33
  tail call void @_clear_bit(i32 noundef 6, ptr noundef %137) #19
  tail call void asm sideeffect "dmb ish", "~{memory}"() #19, !srcloc !49
  %138 = load ptr, ptr %97, align 8
  %139 = getelementptr inbounds %struct.svc_pool, ptr %138, i32 0, i32 6
  %140 = tail call i32 @_test_and_clear_bit(i32 noundef 0, ptr noundef %139) #19
  %141 = icmp eq i32 %140, 0
  br i1 %141, label %142, label %163, !prof !50

142:                                              ; preds = %134
  %143 = getelementptr inbounds %struct.svc_pool, ptr %138, i32 0, i32 2
  %144 = load volatile ptr, ptr %143, align 4
  %145 = icmp eq ptr %144, %143
  br i1 %145, label %146, label %163, !prof !50

146:                                              ; preds = %142
  %147 = load volatile i32, ptr %86, align 4
  %148 = and i32 %147, 256
  %149 = icmp eq i32 %148, 0
  br i1 %149, label %150, label %163, !prof !16

150:                                              ; preds = %146
  %151 = load volatile i32, ptr %86, align 4
  %152 = and i32 %151, 1
  %153 = icmp eq i32 %152, 0
  br i1 %153, label %154, label %163, !prof !50

154:                                              ; preds = %150
  %155 = tail call zeroext i1 @kthread_should_stop() #19
  br i1 %155, label %163, label %156, !prof !51

156:                                              ; preds = %154
  %157 = load volatile i32, ptr @system_freezing_cnt, align 4
  %158 = icmp eq i32 %157, 0
  br i1 %158, label %161, label %159, !prof !16

159:                                              ; preds = %156
  %160 = tail call zeroext i1 @freezing_slow_path(ptr noundef %86) #19
  br i1 %160, label %163, label %161, !prof !24

161:                                              ; preds = %159, %156
  %162 = tail call i32 @schedule_timeout(i32 noundef %1) #19
  br label %164

163:                                              ; preds = %159, %154, %150, %146, %142, %134
  store volatile i32 0, ptr %135, align 8
  br label %164

164:                                              ; preds = %163, %161
  %165 = phi i32 [ %162, %161 ], [ 0, %163 ]
  %166 = load volatile i32, ptr @system_freezing_cnt, align 4
  %167 = icmp eq i32 %166, 0
  br i1 %167, label %172, label %168, !prof !16

168:                                              ; preds = %164
  %169 = tail call zeroext i1 @freezing_slow_path(ptr noundef %86) #19
  br i1 %169, label %170, label %172, !prof !24

170:                                              ; preds = %168
  %171 = tail call zeroext i1 @__refrigerator(i1 noundef zeroext false) #19
  br label %172

172:                                              ; preds = %170, %168, %164
  tail call void @_set_bit(i32 noundef 6, ptr noundef %137) #19
  tail call void asm sideeffect "dmb ish", "~{memory}"() #19, !srcloc !52
  %173 = load volatile ptr, ptr %107, align 4
  %174 = icmp eq ptr %173, %107
  br i1 %174, label %198, label %175

175:                                              ; preds = %172
  %176 = getelementptr inbounds %struct.svc_pool, ptr %98, i32 0, i32 1
  tail call void @_raw_spin_lock_bh(ptr noundef %176) #19
  %177 = load volatile ptr, ptr %107, align 4
  %178 = icmp eq ptr %177, %107
  br i1 %178, label %179, label %180, !prof !24

179:                                              ; preds = %175
  tail call void @_raw_spin_unlock_bh(ptr noundef %176) #19
  br label %198

180:                                              ; preds = %175
  %181 = getelementptr i8, ptr %177, i32 -20
  %182 = getelementptr inbounds %struct.list_head, ptr %177, i32 0, i32 1
  %183 = load ptr, ptr %182, align 4
  %184 = load ptr, ptr %177, align 4
  %185 = getelementptr inbounds %struct.list_head, ptr %184, i32 0, i32 1
  store ptr %183, ptr %185, align 4
  store volatile ptr %184, ptr %183, align 4
  store volatile ptr %177, ptr %177, align 4
  store ptr %177, ptr %182, align 4
  %186 = getelementptr i8, ptr %177, i32 -12
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %186) #19, !srcloc !14
  %187 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %186, ptr %186, i32 1, ptr elementtype(i32) %186) #19, !srcloc !23
  %188 = extractvalue { i32, i32, i32 } %187, 0
  %189 = icmp eq i32 %188, 0
  br i1 %189, label %194, label %190, !prof !24

190:                                              ; preds = %180
  %191 = add i32 %188, 1
  %192 = or i32 %191, %188
  %193 = icmp sgt i32 %192, -1
  br i1 %193, label %196, label %194, !prof !16

194:                                              ; preds = %190, %180
  %195 = phi i32 [ 2, %180 ], [ 1, %190 ]
  tail call void @refcount_warn_saturate(ptr noundef %186, i32 noundef %195) #19
  br label %196

196:                                              ; preds = %194, %190
  tail call void @_raw_spin_unlock_bh(ptr noundef %176) #19
  store ptr %181, ptr %99, align 8
  %197 = icmp eq ptr %181, null
  br i1 %197, label %199, label %215

198:                                              ; preds = %179, %172
  store ptr null, ptr %99, align 8
  br label %199

199:                                              ; preds = %198, %196
  %200 = icmp eq i32 %165, 0
  br i1 %200, label %201, label %204

201:                                              ; preds = %199
  %202 = getelementptr inbounds %struct.svc_pool, ptr %98, i32 0, i32 5, i32 3
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %202) #19, !srcloc !14
  %203 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %202, ptr %202, i32 1, ptr elementtype(i32) %202) #19, !srcloc !28
  br label %204

204:                                              ; preds = %201, %199
  %205 = load volatile i32, ptr %86, align 4
  %206 = and i32 %205, 256
  %207 = icmp eq i32 %206, 0
  br i1 %207, label %208, label %241, !prof !16

208:                                              ; preds = %204
  %209 = load volatile i32, ptr %86, align 4
  %210 = and i32 %209, 1
  %211 = icmp eq i32 %210, 0
  br i1 %211, label %212, label %241

212:                                              ; preds = %208
  %213 = tail call zeroext i1 @kthread_should_stop() #19
  %214 = select i1 %213, ptr inttoptr (i32 -4 to ptr), ptr inttoptr (i32 -11 to ptr)
  br label %241

215:                                              ; preds = %196, %131
  %216 = phi ptr [ %181, %196 ], [ %116, %131 ]
  %217 = getelementptr inbounds %struct.svc_pool, ptr %98, i32 0, i32 6
  %218 = load volatile i32, ptr %217, align 4
  %219 = and i32 %218, 2
  %220 = icmp eq i32 %219, 0
  %221 = select i1 %220, i32 500, i32 100
  %222 = getelementptr inbounds %struct.svc_rqst, ptr %0, i32 0, i32 42, i32 1
  store i32 %221, ptr %222, align 4
  %223 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_svc_xprt_dequeue, i32 0, i32 1), align 4
  %224 = icmp sgt i32 %223, 0
  br i1 %224, label %225, label %238

225:                                              ; preds = %215
  %226 = getelementptr inbounds %struct.thread_info, ptr %86, i32 0, i32 2
  %227 = load i32, ptr %226, align 8
  %228 = lshr i32 %227, 5
  %229 = getelementptr i32, ptr @__cpu_online_mask, i32 %228
  %230 = load volatile i32, ptr %229, align 4
  %231 = and i32 %227, 31
  %232 = shl nuw i32 1, %231
  %233 = and i32 %232, %230
  %234 = icmp eq i32 %233, 0
  br i1 %234, label %238, label %235

235:                                              ; preds = %225
  tail call void asm sideeffect "", "~{memory}"() #19, !srcloc !53
  %236 = tail call i32 @__traceiter_svc_xprt_dequeue(ptr noundef null, ptr noundef %0) #19
  tail call void asm sideeffect "", "~{memory}"() #19, !srcloc !54
  %237 = load ptr, ptr %99, align 8
  br label %238

238:                                              ; preds = %235, %225, %215
  %239 = phi ptr [ %216, %215 ], [ %216, %225 ], [ %237, %235 ]
  %240 = icmp ugt ptr %239, inttoptr (i32 -4096 to ptr)
  br i1 %240, label %241, label %244

241:                                              ; preds = %238, %212, %208, %204
  %242 = phi ptr [ %239, %238 ], [ %214, %212 ], [ inttoptr (i32 -4 to ptr), %204 ], [ inttoptr (i32 -4 to ptr), %208 ]
  %243 = ptrtoint ptr %242 to i32
  br label %478

244:                                              ; preds = %238
  %245 = load ptr, ptr %3, align 4
  %246 = getelementptr inbounds %struct.svc_xprt, ptr %239, i32 0, i32 5
  %247 = load volatile i32, ptr %246, align 4
  %248 = and i32 %247, 4
  %249 = icmp eq i32 %248, 0
  br i1 %249, label %259, label %250

250:                                              ; preds = %244
  %251 = tail call i32 @_test_and_clear_bit(i32 noundef 13, ptr noundef %246) #19
  %252 = icmp eq i32 %251, 0
  br i1 %252, label %258, label %253

253:                                              ; preds = %250
  %254 = getelementptr inbounds %struct.svc_xprt, ptr %239, i32 0, i32 1
  %255 = load ptr, ptr %254, align 4
  %256 = getelementptr inbounds %struct.svc_xprt_ops, ptr %255, i32 0, i32 10
  %257 = load ptr, ptr %256, align 4
  tail call void %257(ptr noundef %239) #19
  br label %258

258:                                              ; preds = %253, %250
  tail call fastcc void @svc_delete_xprt(ptr noundef %239) #19
  br label %476

259:                                              ; preds = %244
  %260 = load volatile i32, ptr %246, align 4
  %261 = and i32 %260, 1024
  %262 = icmp eq i32 %261, 0
  br i1 %262, label %383, label %263

263:                                              ; preds = %259
  %264 = load ptr, ptr %239, align 4
  %265 = getelementptr inbounds %struct.svc_xprt_class, ptr %264, i32 0, i32 1
  %266 = load ptr, ptr %265, align 4
  tail call void @__module_get(ptr noundef %266) #19
  %267 = getelementptr inbounds %struct.svc_xprt, ptr %239, i32 0, i32 6
  %268 = load ptr, ptr %267, align 4
  %269 = getelementptr inbounds %struct.svc_serv, ptr %268, i32 0, i32 5
  %270 = load i32, ptr %269, align 4
  %271 = icmp eq i32 %270, 0
  br i1 %271, label %272, label %277

272:                                              ; preds = %263
  %273 = getelementptr inbounds %struct.svc_serv, ptr %268, i32 0, i32 4
  %274 = load i32, ptr %273, align 4
  %275 = mul i32 %274, 20
  %276 = add i32 %275, 60
  br label %277

277:                                              ; preds = %272, %263
  %278 = phi i32 [ %276, %272 ], [ %270, %263 ]
  %279 = getelementptr inbounds %struct.svc_serv, ptr %268, i32 0, i32 11
  %280 = load i32, ptr %279, align 4
  %281 = icmp ugt i32 %280, %278
  br i1 %281, label %282, label %327

282:                                              ; preds = %277
  %283 = getelementptr inbounds %struct.svc_serv, ptr %268, i32 0, i32 2
  tail call void @_raw_spin_lock_bh(ptr noundef %283) #19
  %284 = getelementptr inbounds %struct.svc_serv, ptr %268, i32 0, i32 10
  %285 = load volatile ptr, ptr %284, align 4
  %286 = icmp eq ptr %285, %284
  br i1 %286, label %287, label %288

287:                                              ; preds = %282
  tail call void @_raw_spin_unlock_bh(ptr noundef %283) #19
  br label %327

288:                                              ; preds = %282
  %289 = tail call i32 @net_ratelimit() #19
  %290 = icmp eq i32 %289, 0
  br i1 %290, label %298, label %291

291:                                              ; preds = %288
  %292 = getelementptr inbounds %struct.svc_serv, ptr %268, i32 0, i32 13
  %293 = load ptr, ptr %292, align 4
  %294 = load i32, ptr %269, align 4
  %295 = icmp eq i32 %294, 0
  %296 = select i1 %295, ptr @.str.13, ptr @.str.12
  %297 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11, ptr noundef %293, ptr noundef nonnull %296) #20
  br label %298

298:                                              ; preds = %291, %288
  %299 = getelementptr inbounds %struct.svc_serv, ptr %268, i32 0, i32 10, i32 1
  %300 = load ptr, ptr %299, align 4
  %301 = getelementptr i8, ptr %300, i32 -12
  %302 = getelementptr i8, ptr %300, i32 16
  tail call void @_set_bit(i32 noundef 2, ptr noundef %302) #19
  %303 = getelementptr i8, ptr %300, i32 -4
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %303) #19, !srcloc !14
  %304 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %303, ptr %303, i32 1, ptr elementtype(i32) %303) #19, !srcloc !23
  %305 = extractvalue { i32, i32, i32 } %304, 0
  %306 = icmp eq i32 %305, 0
  br i1 %306, label %311, label %307, !prof !24

307:                                              ; preds = %298
  %308 = add i32 %305, 1
  %309 = or i32 %308, %305
  %310 = icmp sgt i32 %309, -1
  br i1 %310, label %313, label %311, !prof !16

311:                                              ; preds = %307, %298
  %312 = phi i32 [ 2, %298 ], [ 1, %307 ]
  tail call void @refcount_warn_saturate(ptr noundef %303, i32 noundef %312) #19
  br label %313

313:                                              ; preds = %311, %307
  tail call void @_raw_spin_unlock_bh(ptr noundef %283) #19
  %314 = icmp eq ptr %301, null
  br i1 %314, label %327, label %315

315:                                              ; preds = %313
  %316 = load volatile i32, ptr %302, align 4
  %317 = and i32 %316, 1
  %318 = icmp eq i32 %317, 0
  br i1 %318, label %319, label %326

319:                                              ; preds = %315
  %320 = getelementptr i8, ptr %300, i32 20
  %321 = load ptr, ptr %320, align 4
  %322 = getelementptr inbounds %struct.svc_serv, ptr %321, i32 0, i32 16
  %323 = load ptr, ptr %322, align 4
  %324 = getelementptr inbounds %struct.svc_serv_ops, ptr %323, i32 0, i32 2
  %325 = load ptr, ptr %324, align 4
  tail call void %325(ptr noundef nonnull %301) #19
  br label %326

326:                                              ; preds = %319, %315
  tail call void @svc_xprt_put(ptr noundef nonnull %301) #19
  br label %327

327:                                              ; preds = %326, %313, %287, %277
  %328 = getelementptr inbounds %struct.svc_xprt, ptr %239, i32 0, i32 1
  %329 = load ptr, ptr %328, align 4
  %330 = getelementptr inbounds %struct.svc_xprt_ops, ptr %329, i32 0, i32 1
  %331 = load ptr, ptr %330, align 4
  %332 = tail call ptr %331(ptr noundef %239) #19
  %333 = icmp eq ptr %332, null
  br i1 %333, label %378, label %334

334:                                              ; preds = %327
  %335 = getelementptr inbounds %struct.svc_xprt, ptr %239, i32 0, i32 20
  %336 = load ptr, ptr %335, align 4
  %337 = icmp eq ptr %336, null
  br i1 %337, label %341, label %338

338:                                              ; preds = %334
  %339 = getelementptr inbounds %struct.cred, ptr %336, i32 0, i32 24
  store i32 0, ptr %339, align 4
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr nonnull %336) #19, !srcloc !14
  %340 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %336, ptr nonnull %336, i32 1, ptr nonnull elementtype(i32) %336) #19, !srcloc !28
  br label %341

341:                                              ; preds = %338, %334
  %342 = getelementptr inbounds %struct.svc_xprt, ptr %332, i32 0, i32 20
  store ptr %336, ptr %342, align 4
  %343 = getelementptr inbounds %struct.svc_serv, ptr %245, i32 0, i32 2
  tail call void @_raw_spin_lock_bh(ptr noundef %343) #19
  %344 = getelementptr inbounds %struct.svc_xprt, ptr %332, i32 0, i32 5
  tail call void @_set_bit(i32 noundef 4, ptr noundef %344) #19
  %345 = getelementptr inbounds %struct.svc_xprt, ptr %332, i32 0, i32 3
  %346 = getelementptr inbounds %struct.svc_serv, ptr %245, i32 0, i32 10
  %347 = load ptr, ptr %346, align 4
  %348 = getelementptr inbounds %struct.list_head, ptr %347, i32 0, i32 1
  store ptr %345, ptr %348, align 4
  store ptr %347, ptr %345, align 4
  %349 = getelementptr inbounds %struct.svc_xprt, ptr %332, i32 0, i32 3, i32 1
  store ptr %346, ptr %349, align 4
  store volatile ptr %345, ptr %346, align 4
  %350 = getelementptr inbounds %struct.svc_serv, ptr %245, i32 0, i32 11
  %351 = load i32, ptr %350, align 4
  %352 = add i32 %351, 1
  store i32 %352, ptr %350, align 4
  %353 = getelementptr inbounds %struct.svc_serv, ptr %245, i32 0, i32 12, i32 2
  %354 = load ptr, ptr %353, align 4
  %355 = icmp eq ptr %354, null
  br i1 %355, label %356, label %361

356:                                              ; preds = %341
  %357 = getelementptr inbounds %struct.svc_serv, ptr %245, i32 0, i32 12
  store ptr @svc_age_temp_xprts, ptr %353, align 4
  %358 = load volatile i32, ptr @jiffies, align 64
  %359 = add i32 %358, 36000
  %360 = tail call i32 @mod_timer(ptr noundef %357, i32 noundef %359) #19
  br label %361

361:                                              ; preds = %356, %341
  tail call void @_raw_spin_unlock_bh(ptr noundef %343) #19
  tail call void @svc_xprt_received(ptr noundef nonnull %332) #19
  %362 = getelementptr inbounds %struct.svc_serv, ptr %245, i32 0, i32 13
  %363 = load ptr, ptr %362, align 4
  %364 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_svc_xprt_accept, i32 0, i32 1), align 4
  %365 = icmp sgt i32 %364, 0
  br i1 %365, label %366, label %382

366:                                              ; preds = %361
  %367 = getelementptr inbounds %struct.thread_info, ptr %86, i32 0, i32 2
  %368 = load i32, ptr %367, align 8
  %369 = lshr i32 %368, 5
  %370 = getelementptr i32, ptr @__cpu_online_mask, i32 %369
  %371 = load volatile i32, ptr %370, align 4
  %372 = and i32 %368, 31
  %373 = shl nuw i32 1, %372
  %374 = and i32 %373, %371
  %375 = icmp eq i32 %374, 0
  br i1 %375, label %382, label %376

376:                                              ; preds = %366
  tail call void asm sideeffect "", "~{memory}"() #19, !srcloc !55
  %377 = tail call i32 @__traceiter_svc_xprt_accept(ptr noundef null, ptr noundef nonnull %332, ptr noundef %363) #19
  tail call void asm sideeffect "", "~{memory}"() #19, !srcloc !56
  br label %382

378:                                              ; preds = %327
  %379 = load ptr, ptr %239, align 4
  %380 = getelementptr inbounds %struct.svc_xprt_class, ptr %379, i32 0, i32 1
  %381 = load ptr, ptr %380, align 4
  tail call void @module_put(ptr noundef %381) #19
  br label %382

382:                                              ; preds = %378, %376, %366, %361
  tail call void @svc_xprt_received(ptr noundef %239) #19
  br label %476

383:                                              ; preds = %259
  %384 = getelementptr inbounds %struct.svc_rqst, ptr %0, i32 0, i32 33
  %385 = load volatile i32, ptr %384, align 4
  %386 = and i32 %385, 128
  %387 = icmp eq i32 %386, 0
  br i1 %387, label %388, label %399

388:                                              ; preds = %383
  %389 = load i32, ptr @svc_rpc_per_connection_limit, align 4
  %390 = getelementptr inbounds %struct.svc_xprt, ptr %239, i32 0, i32 8
  %391 = load volatile i32, ptr %390, align 4
  %392 = icmp eq i32 %389, 0
  br i1 %392, label %397, label %393

393:                                              ; preds = %388
  %394 = icmp sgt i32 %391, -1
  %395 = icmp ult i32 %391, %389
  %396 = select i1 %394, i1 %395, i1 false
  br i1 %396, label %397, label %431

397:                                              ; preds = %393, %388
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %390) #19, !srcloc !14
  %398 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %390, ptr %390, i32 1, ptr elementtype(i32) %390) #19, !srcloc !28
  tail call void @_set_bit(i32 noundef 7, ptr noundef %384) #19
  br label %399

399:                                              ; preds = %397, %383
  %400 = load volatile i32, ptr %246, align 4
  %401 = and i32 %400, 256
  %402 = icmp eq i32 %401, 0
  br i1 %402, label %403, label %405

403:                                              ; preds = %399
  %404 = getelementptr inbounds %struct.svc_rqst, ptr %0, i32 0, i32 13
  store ptr null, ptr %404, align 8
  br label %425

405:                                              ; preds = %399
  %406 = getelementptr inbounds %struct.svc_xprt, ptr %239, i32 0, i32 10
  tail call void @_raw_spin_lock(ptr noundef %406) #19
  %407 = getelementptr inbounds %struct.svc_xprt, ptr %239, i32 0, i32 12
  %408 = load volatile ptr, ptr %407, align 4
  %409 = icmp eq ptr %408, %407
  br i1 %409, label %416, label %410

410:                                              ; preds = %405
  %411 = getelementptr i8, ptr %408, i32 -280
  %412 = getelementptr inbounds %struct.list_head, ptr %408, i32 0, i32 1
  %413 = load ptr, ptr %412, align 4
  %414 = load ptr, ptr %408, align 4
  %415 = getelementptr inbounds %struct.list_head, ptr %414, i32 0, i32 1
  store ptr %413, ptr %415, align 4
  store volatile ptr %414, ptr %413, align 4
  store volatile ptr %408, ptr %408, align 4
  store ptr %408, ptr %412, align 4
  br label %417

416:                                              ; preds = %405
  tail call void @_clear_bit(i32 noundef 8, ptr noundef %246) #19
  br label %417

417:                                              ; preds = %416, %410
  %418 = phi ptr [ null, %416 ], [ %411, %410 ]
  tail call void asm sideeffect "dmb ish", "~{memory}"() #19, !srcloc !8
  %419 = load i16, ptr %406, align 4
  %420 = add i16 %419, 1
  store i16 %420, ptr %406, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #19, !srcloc !9
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #19, !srcloc !10
  tail call void asm sideeffect "", "~{memory}"() #19, !srcloc !11
  %421 = getelementptr inbounds %struct.svc_rqst, ptr %0, i32 0, i32 13
  store ptr %418, ptr %421, align 8
  %422 = icmp eq ptr %418, null
  br i1 %422, label %425, label %423

423:                                              ; preds = %417
  %424 = tail call fastcc i32 @svc_deferred_recv(ptr noundef %0) #19
  br label %432

425:                                              ; preds = %417, %403
  %426 = getelementptr inbounds %struct.svc_xprt, ptr %239, i32 0, i32 1
  %427 = load ptr, ptr %426, align 4
  %428 = getelementptr inbounds %struct.svc_xprt_ops, ptr %427, i32 0, i32 3
  %429 = load ptr, ptr %428, align 4
  %430 = tail call i32 %429(ptr noundef %0) #19
  br label %432

431:                                              ; preds = %393
  tail call void @svc_xprt_received(ptr noundef %239) #19
  br label %476

432:                                              ; preds = %425, %423
  %433 = phi i32 [ %424, %423 ], [ %430, %425 ]
  %434 = tail call i64 @ktime_get() #19
  %435 = getelementptr inbounds %struct.svc_rqst, ptr %0, i32 0, i32 41
  store i64 %434, ptr %435, align 8
  %436 = getelementptr inbounds %struct.svc_serv, ptr %245, i32 0, i32 7
  %437 = load i32, ptr %436, align 4
  %438 = getelementptr inbounds %struct.svc_rqst, ptr %0, i32 0, i32 40
  store i32 %437, ptr %438, align 4
  %439 = getelementptr inbounds %struct.svc_xprt, ptr %239, i32 0, i32 7
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %439) #19, !srcloc !14
  %440 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %439, ptr %439, i32 %437, ptr elementtype(i32) %439) #19, !srcloc !28
  %441 = icmp slt i32 %433, 1
  br i1 %441, label %476, label %442

442:                                              ; preds = %432
  %443 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_svc_xdr_recvfrom, i32 0, i32 1), align 4
  %444 = icmp sgt i32 %443, 0
  br i1 %444, label %445, label %457

445:                                              ; preds = %442
  %446 = getelementptr inbounds %struct.thread_info, ptr %86, i32 0, i32 2
  %447 = load i32, ptr %446, align 8
  %448 = lshr i32 %447, 5
  %449 = getelementptr i32, ptr @__cpu_online_mask, i32 %448
  %450 = load volatile i32, ptr %449, align 4
  %451 = and i32 %447, 31
  %452 = shl nuw i32 1, %451
  %453 = and i32 %452, %450
  %454 = icmp eq i32 %453, 0
  br i1 %454, label %457, label %455

455:                                              ; preds = %445
  tail call void asm sideeffect "", "~{memory}"() #19, !srcloc !57
  %456 = tail call i32 @__traceiter_svc_xdr_recvfrom(ptr noundef null, ptr noundef %5) #19
  tail call void asm sideeffect "", "~{memory}"() #19, !srcloc !58
  br label %457

457:                                              ; preds = %455, %445, %442
  tail call void @_clear_bit(i32 noundef 9, ptr noundef %246) #19
  %458 = getelementptr inbounds %struct.svc_xprt, ptr %239, i32 0, i32 1
  %459 = load ptr, ptr %458, align 4
  %460 = getelementptr inbounds %struct.svc_xprt_ops, ptr %459, i32 0, i32 9
  %461 = load ptr, ptr %460, align 4
  tail call void %461(ptr noundef %0) #19
  %462 = getelementptr inbounds %struct.svc_rqst, ptr %0, i32 0, i32 42
  store ptr @svc_defer, ptr %462, align 8
  %463 = load ptr, ptr %5, align 4
  %464 = getelementptr i32, ptr %463, i32 1
  %465 = load i32, ptr %463, align 4
  store ptr %464, ptr %5, align 4
  %466 = load i32, ptr %67, align 4
  %467 = add i32 %466, -4
  store i32 %467, ptr %67, align 4
  %468 = getelementptr inbounds %struct.svc_rqst, ptr %0, i32 0, i32 27
  store i32 %465, ptr %468, align 4
  %469 = getelementptr inbounds %struct.svc_serv, ptr %4, i32 0, i32 1
  %470 = load ptr, ptr %469, align 4
  %471 = icmp eq ptr %470, null
  br i1 %471, label %478, label %472

472:                                              ; preds = %457
  %473 = getelementptr inbounds %struct.svc_stat, ptr %470, i32 0, i32 1
  %474 = load i32, ptr %473, align 4
  %475 = add i32 %474, 1
  store i32 %475, ptr %473, align 4
  br label %478

476:                                              ; preds = %432, %431, %382, %258
  %477 = getelementptr inbounds %struct.svc_rqst, ptr %0, i32 0, i32 19, i32 8
  store i32 0, ptr %477, align 8
  tail call fastcc void @svc_xprt_release(ptr noundef %0)
  br label %478

478:                                              ; preds = %476, %472, %457, %241, %94, %90, %84, %59
  %479 = phi i32 [ %433, %472 ], [ %433, %457 ], [ -4, %59 ], [ -4, %90 ], [ -4, %94 ], [ %243, %241 ], [ -11, %476 ], [ -4, %84 ]
  ret i32 %479
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @kthread_should_stop() local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal ptr @svc_defer(ptr noundef %0) #0 {
  %2 = getelementptr i8, ptr %0, i32 -6872
  %3 = getelementptr i8, ptr %0, i32 -6528
  %4 = getelementptr i8, ptr %0, i32 -6500
  %5 = load i32, ptr %4, align 4
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %85

7:                                                ; preds = %1
  %8 = getelementptr i8, ptr %0, i32 -44
  %9 = load volatile i32, ptr %8, align 4
  %10 = and i32 %9, 4
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %85, label %12

12:                                               ; preds = %7
  %13 = getelementptr i8, ptr %0, i32 -6536
  %14 = load ptr, ptr %13, align 8
  %15 = icmp eq ptr %14, null
  br i1 %15, label %17, label %16

16:                                               ; preds = %12
  store ptr null, ptr %13, align 8
  br label %50

17:                                               ; preds = %12
  %18 = getelementptr i8, ptr %0, i32 -6488
  %19 = load i32, ptr %18, align 8
  %20 = add i32 %19, 308
  %21 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %20, i32 noundef 3264) #21
  %22 = icmp eq ptr %21, null
  br i1 %22, label %85, label %23

23:                                               ; preds = %17
  %24 = getelementptr i8, ptr %0, i32 -6588
  %25 = load ptr, ptr %24, align 4
  %26 = getelementptr inbounds %struct.svc_deferred_req, ptr %21, i32 0, i32 6, i32 3
  store ptr %25, ptr %26, align 4
  %27 = getelementptr i8, ptr %0, i32 -52
  %28 = load i32, ptr %27, align 4
  store i32 %28, ptr %21, align 64
  %29 = getelementptr inbounds %struct.svc_deferred_req, ptr %21, i32 0, i32 2
  %30 = getelementptr i8, ptr %0, i32 -6852
  %31 = getelementptr i8, ptr %0, i32 -6724
  %32 = load i32, ptr %31, align 4
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 8 %29, ptr align 4 %30, i32 %32, i1 false)
  %33 = getelementptr inbounds %struct.svc_deferred_req, ptr %21, i32 0, i32 3
  store i32 %32, ptr %33, align 8
  %34 = getelementptr inbounds %struct.svc_deferred_req, ptr %21, i32 0, i32 4
  %35 = getelementptr i8, ptr %0, i32 -6720
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(128) %34, ptr noundef align 8 dereferenceable(128) %35, i32 128, i1 false)
  %36 = load i32, ptr %18, align 8
  %37 = lshr i32 %36, 2
  %38 = getelementptr inbounds %struct.svc_deferred_req, ptr %21, i32 0, i32 8
  store i32 %37, ptr %38, align 16
  %39 = getelementptr i8, ptr %0, i32 -6532
  %40 = load i32, ptr %39, align 4
  %41 = getelementptr inbounds %struct.svc_deferred_req, ptr %21, i32 0, i32 7
  store i32 %40, ptr %41, align 4
  %42 = load i32, ptr %18, align 8
  %43 = getelementptr i8, ptr %0, i32 -6524
  %44 = load i32, ptr %43, align 4
  %45 = sub i32 %44, %42
  %46 = getelementptr inbounds %struct.svc_deferred_req, ptr %21, i32 0, i32 9
  %47 = load ptr, ptr %3, align 8
  %48 = getelementptr i8, ptr %47, i32 %45
  %49 = and i32 %36, -4
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 4 %46, ptr align 1 %48, i32 %49, i1 false)
  br label %50

50:                                               ; preds = %23, %16
  %51 = phi ptr [ %14, %16 ], [ %21, %23 ]
  %52 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_svc_defer, i32 0, i32 1), align 4
  %53 = icmp sgt i32 %52, 0
  br i1 %53, label %54, label %67

54:                                               ; preds = %50
  %55 = tail call ptr @llvm.thread.pointer() #19
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
  tail call void asm sideeffect "", "~{memory}"() #19, !srcloc !59
  %66 = tail call i32 @__traceiter_svc_defer(ptr noundef null, ptr noundef %2) #19
  tail call void asm sideeffect "", "~{memory}"() #19, !srcloc !60
  br label %67

67:                                               ; preds = %65, %54, %50
  %68 = getelementptr i8, ptr %0, i32 -6856
  %69 = load ptr, ptr %68, align 8
  %70 = getelementptr inbounds %struct.svc_xprt, ptr %69, i32 0, i32 2
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %70) #19, !srcloc !14
  %71 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %70, ptr %70, i32 1, ptr elementtype(i32) %70) #19, !srcloc !23
  %72 = extractvalue { i32, i32, i32 } %71, 0
  %73 = icmp eq i32 %72, 0
  br i1 %73, label %78, label %74, !prof !24

74:                                               ; preds = %67
  %75 = add i32 %72, 1
  %76 = or i32 %75, %72
  %77 = icmp sgt i32 %76, -1
  br i1 %77, label %80, label %78, !prof !16

78:                                               ; preds = %74, %67
  %79 = phi i32 [ 2, %67 ], [ 1, %74 ]
  tail call void @refcount_warn_saturate(ptr noundef %70, i32 noundef %79) #19
  br label %80

80:                                               ; preds = %78, %74
  %81 = load ptr, ptr %68, align 8
  %82 = getelementptr inbounds %struct.svc_deferred_req, ptr %51, i32 0, i32 1
  store ptr %81, ptr %82, align 4
  tail call void @_set_bit(i32 noundef 3, ptr noundef %8) #19
  %83 = getelementptr inbounds %struct.svc_deferred_req, ptr %51, i32 0, i32 6
  %84 = getelementptr inbounds %struct.svc_deferred_req, ptr %51, i32 0, i32 6, i32 4
  store ptr @svc_revisit, ptr %84, align 4
  br label %85

85:                                               ; preds = %80, %17, %7, %1
  %86 = phi ptr [ %83, %80 ], [ null, %7 ], [ null, %1 ], [ null, %17 ]
  ret ptr %86
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @svc_xprt_release(ptr noundef %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.svc_rqst, ptr %0, i32 0, i32 2
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.svc_xprt, ptr %3, i32 0, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.svc_xprt_ops, ptr %5, i32 0, i32 6
  %7 = load ptr, ptr %6, align 4
  tail call void %7(ptr noundef %0) #19
  %8 = getelementptr inbounds %struct.svc_rqst, ptr %0, i32 0, i32 13
  %9 = load ptr, ptr %8, align 8
  tail call void @kfree(ptr noundef %9) #19
  store ptr null, ptr %8, align 8
  %10 = getelementptr inbounds %struct.svc_rqst, ptr %0, i32 0, i32 24
  %11 = load i8, ptr %10, align 4
  %12 = icmp eq i8 %11, 0
  br i1 %12, label %14, label %13

13:                                               ; preds = %1
  tail call void @__pagevec_release(ptr noundef %10) #19
  br label %14

14:                                               ; preds = %13, %1
  %15 = getelementptr inbounds %struct.svc_rqst, ptr %0, i32 0, i32 22
  %16 = getelementptr inbounds %struct.svc_rqst, ptr %0, i32 0, i32 21
  %17 = load ptr, ptr %15, align 8
  %18 = load ptr, ptr %16, align 4
  %19 = icmp eq ptr %17, %18
  br i1 %19, label %50, label %20

20:                                               ; preds = %46, %14
  %21 = phi ptr [ %47, %46 ], [ %18, %14 ]
  %22 = phi ptr [ %48, %46 ], [ %17, %14 ]
  %23 = getelementptr ptr, ptr %22, i32 -1
  store ptr %23, ptr %15, align 8
  %24 = load ptr, ptr %23, align 4
  %25 = icmp eq ptr %24, null
  br i1 %25, label %46, label %26

26:                                               ; preds = %20
  %27 = getelementptr inbounds %struct.page, ptr %24, i32 0, i32 1
  %28 = load volatile i32, ptr %27, align 4
  %29 = and i32 %28, 1
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %33, label %31, !prof !16

31:                                               ; preds = %26
  %32 = add i32 %28, -1
  br label %35

33:                                               ; preds = %26
  %34 = ptrtoint ptr %24 to i32
  br label %35

35:                                               ; preds = %33, %31
  %36 = phi i32 [ %32, %31 ], [ %34, %33 ]
  %37 = inttoptr i32 %36 to ptr
  %38 = getelementptr inbounds %struct.page, ptr %37, i32 0, i32 3
  tail call void asm sideeffect "dmb ish", "~{memory}"() #19, !srcloc !18
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %38) #19, !srcloc !14
  %39 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %38, ptr %38, i32 1, ptr elementtype(i32) %38) #19, !srcloc !19
  %40 = extractvalue { i32, i32 } %39, 0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #19, !srcloc !20
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %35
  tail call void @__put_page(ptr noundef %37) #19
  br label %43

43:                                               ; preds = %42, %35
  store ptr null, ptr %23, align 4
  %44 = load ptr, ptr %15, align 8
  %45 = load ptr, ptr %16, align 4
  br label %46

46:                                               ; preds = %43, %20
  %47 = phi ptr [ %45, %43 ], [ %21, %20 ]
  %48 = phi ptr [ %44, %43 ], [ %23, %20 ]
  %49 = icmp eq ptr %48, %47
  br i1 %49, label %50, label %20

50:                                               ; preds = %46, %14
  %51 = getelementptr inbounds %struct.svc_rqst, ptr %0, i32 0, i32 19, i32 5
  store i32 0, ptr %51, align 4
  %52 = getelementptr inbounds %struct.svc_rqst, ptr %0, i32 0, i32 19, i32 4
  store i32 0, ptr %52, align 8
  %53 = getelementptr inbounds %struct.svc_rqst, ptr %0, i32 0, i32 19, i32 8
  %54 = load i32, ptr %53, align 8
  %55 = getelementptr inbounds %struct.svc_rqst, ptr %0, i32 0, i32 40
  %56 = load i32, ptr %55, align 4
  %57 = icmp ugt i32 %54, %56
  br i1 %57, label %58, label %60

58:                                               ; preds = %50
  %59 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.14, i32 noundef %56, i32 noundef %54) #20
  br label %60

60:                                               ; preds = %58, %50
  %61 = getelementptr inbounds %struct.svc_rqst, ptr %0, i32 0, i32 19, i32 0, i32 0, i32 1
  store i32 0, ptr %61, align 4
  %62 = load ptr, ptr %2, align 8
  %63 = icmp eq ptr %62, null
  br i1 %63, label %81, label %64

64:                                               ; preds = %60
  %65 = load i32, ptr %55, align 4
  %66 = icmp sgt i32 %65, 0
  br i1 %66, label %67, label %81

67:                                               ; preds = %64
  %68 = getelementptr inbounds %struct.svc_xprt, ptr %62, i32 0, i32 7
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %68) #19, !srcloc !14
  %69 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %68, ptr %68, i32 %65, ptr elementtype(i32) %68) #19, !srcloc !38
  store i32 0, ptr %55, align 4
  tail call void asm sideeffect "dmb ishst", "~{memory}"() #19, !srcloc !39
  %70 = getelementptr inbounds %struct.svc_xprt, ptr %62, i32 0, i32 5
  %71 = load volatile i32, ptr %70, align 4
  %72 = and i32 %71, 1
  %73 = icmp eq i32 %72, 0
  br i1 %73, label %74, label %81

74:                                               ; preds = %67
  %75 = getelementptr inbounds %struct.svc_xprt, ptr %62, i32 0, i32 6
  %76 = load ptr, ptr %75, align 4
  %77 = getelementptr inbounds %struct.svc_serv, ptr %76, i32 0, i32 16
  %78 = load ptr, ptr %77, align 4
  %79 = getelementptr inbounds %struct.svc_serv_ops, ptr %78, i32 0, i32 2
  %80 = load ptr, ptr %79, align 4
  tail call void %80(ptr noundef nonnull %62) #19
  br label %81

81:                                               ; preds = %74, %67, %64, %60
  %82 = load ptr, ptr %2, align 8
  %83 = getelementptr inbounds %struct.svc_rqst, ptr %0, i32 0, i32 33
  %84 = tail call i32 @_test_and_clear_bit(i32 noundef 7, ptr noundef %83) #19
  %85 = icmp eq i32 %84, 0
  br i1 %85, label %100, label %86

86:                                               ; preds = %81
  %87 = getelementptr inbounds %struct.svc_xprt, ptr %82, i32 0, i32 8
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %87) #19, !srcloc !14
  %88 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %87, ptr %87, i32 1, ptr elementtype(i32) %87) #19, !srcloc !38
  tail call void asm sideeffect "dmb ishst", "~{memory}"() #19, !srcloc !61
  %89 = getelementptr inbounds %struct.svc_xprt, ptr %82, i32 0, i32 5
  %90 = load volatile i32, ptr %89, align 4
  %91 = and i32 %90, 1
  %92 = icmp eq i32 %91, 0
  br i1 %92, label %93, label %100

93:                                               ; preds = %86
  %94 = getelementptr inbounds %struct.svc_xprt, ptr %82, i32 0, i32 6
  %95 = load ptr, ptr %94, align 4
  %96 = getelementptr inbounds %struct.svc_serv, ptr %95, i32 0, i32 16
  %97 = load ptr, ptr %96, align 4
  %98 = getelementptr inbounds %struct.svc_serv_ops, ptr %97, i32 0, i32 2
  %99 = load ptr, ptr %98, align 4
  tail call void %99(ptr noundef %82) #19
  br label %100

100:                                              ; preds = %93, %86, %81
  store ptr null, ptr %2, align 8
  tail call void @svc_xprt_put(ptr noundef %3)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @svc_drop(ptr noundef %0) #0 {
  %2 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_svc_drop, i32 0, i32 1), align 4
  %3 = icmp sgt i32 %2, 0
  br i1 %3, label %4, label %17

4:                                                ; preds = %1
  %5 = tail call ptr @llvm.thread.pointer() #19
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
  tail call void asm sideeffect "", "~{memory}"() #19, !srcloc !62
  %16 = tail call i32 @__traceiter_svc_drop(ptr noundef null, ptr noundef %0) #19
  tail call void asm sideeffect "", "~{memory}"() #19, !srcloc !63
  br label %17

17:                                               ; preds = %15, %4, %1
  tail call fastcc void @svc_xprt_release(ptr noundef %0)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @svc_send(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.svc_rqst, ptr %0, i32 0, i32 2
  %3 = load ptr, ptr %2, align 8
  %4 = icmp eq ptr %3, null
  br i1 %4, label %76, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.svc_rqst, ptr %0, i32 0, i32 19
  %7 = getelementptr inbounds %struct.svc_rqst, ptr %0, i32 0, i32 19, i32 0, i32 0, i32 1
  %8 = load i32, ptr %7, align 4
  %9 = getelementptr inbounds %struct.svc_rqst, ptr %0, i32 0, i32 19, i32 5
  %10 = load i32, ptr %9, align 4
  %11 = add i32 %10, %8
  %12 = getelementptr inbounds %struct.svc_rqst, ptr %0, i32 0, i32 19, i32 1, i32 0, i32 1
  %13 = load i32, ptr %12, align 4
  %14 = add i32 %11, %13
  %15 = getelementptr inbounds %struct.svc_rqst, ptr %0, i32 0, i32 19, i32 8
  store i32 %14, ptr %15, align 4
  %16 = getelementptr inbounds %struct.svc_rqst, ptr %0, i32 0, i32 27
  %17 = load i32, ptr %16, align 4
  %18 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_svc_xdr_sendto, i32 0, i32 1), align 4
  %19 = icmp sgt i32 %18, 0
  br i1 %19, label %20, label %33

20:                                               ; preds = %5
  %21 = tail call ptr @llvm.thread.pointer() #19
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
  tail call void asm sideeffect "", "~{memory}"() #19, !srcloc !64
  %32 = tail call i32 @__traceiter_svc_xdr_sendto(ptr noundef null, i32 noundef %17, ptr noundef %6) #19
  tail call void asm sideeffect "", "~{memory}"() #19, !srcloc !65
  br label %33

33:                                               ; preds = %31, %20, %5
  %34 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_svc_stats_latency, i32 0, i32 1), align 4
  %35 = icmp sgt i32 %34, 0
  br i1 %35, label %36, label %49

36:                                               ; preds = %33
  %37 = tail call ptr @llvm.thread.pointer() #19
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
  tail call void asm sideeffect "", "~{memory}"() #19, !srcloc !66
  %48 = tail call i32 @__traceiter_svc_stats_latency(ptr noundef null, ptr noundef %0) #19
  tail call void asm sideeffect "", "~{memory}"() #19, !srcloc !67
  br label %49

49:                                               ; preds = %47, %36, %33
  %50 = getelementptr inbounds %struct.svc_xprt, ptr %3, i32 0, i32 1
  %51 = load ptr, ptr %50, align 4
  %52 = getelementptr inbounds %struct.svc_xprt_ops, ptr %51, i32 0, i32 4
  %53 = load ptr, ptr %52, align 4
  %54 = tail call i32 %53(ptr noundef %0) #19
  %55 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_svc_send, i32 0, i32 1), align 4
  %56 = icmp sgt i32 %55, 0
  br i1 %56, label %57, label %70

57:                                               ; preds = %49
  %58 = tail call ptr @llvm.thread.pointer() #19
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
  tail call void asm sideeffect "", "~{memory}"() #19, !srcloc !68
  %69 = tail call i32 @__traceiter_svc_send(ptr noundef null, ptr noundef %0, i32 noundef %54) #19
  tail call void asm sideeffect "", "~{memory}"() #19, !srcloc !69
  br label %70

70:                                               ; preds = %68, %57, %49
  tail call fastcc void @svc_xprt_release(ptr noundef %0)
  %71 = and i32 %54, -5
  %72 = icmp eq i32 %71, -111
  %73 = icmp eq i32 %54, -11
  %74 = or i1 %73, %72
  %75 = select i1 %74, i32 0, i32 %54
  br label %76

76:                                               ; preds = %70, %1
  %77 = phi i32 [ %75, %70 ], [ -14, %1 ]
  ret i32 %77
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @svc_age_temp_xprts_now(ptr noundef %0, ptr noundef %1) #0 {
  %3 = alloca %struct.list_head, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #19
  store ptr %3, ptr %3, align 8
  %4 = getelementptr inbounds %struct.list_head, ptr %3, i32 0, i32 1
  store ptr %3, ptr %4, align 4
  %5 = getelementptr inbounds %struct.svc_serv, ptr %0, i32 0, i32 2
  call void @_raw_spin_lock_bh(ptr noundef %5) #19
  %6 = getelementptr inbounds %struct.svc_serv, ptr %0, i32 0, i32 10
  %7 = load ptr, ptr %6, align 4
  %8 = icmp eq ptr %7, %6
  br i1 %8, label %65, label %9

9:                                                ; preds = %2
  %10 = getelementptr inbounds %struct.sockaddr_in6, ptr %1, i32 0, i32 3
  %11 = getelementptr %struct.sockaddr_in6, ptr %1, i32 0, i32 3, i32 0, i32 0, i32 1
  %12 = getelementptr %struct.sockaddr_in6, ptr %1, i32 0, i32 3, i32 0, i32 0, i32 2
  %13 = getelementptr %struct.sockaddr_in6, ptr %1, i32 0, i32 3, i32 0, i32 0, i32 3
  %14 = getelementptr inbounds %struct.sockaddr_in6, ptr %1, i32 0, i32 4
  %15 = getelementptr inbounds %struct.sockaddr_in, ptr %1, i32 0, i32 2
  br label %16

16:                                               ; preds = %63, %9
  %17 = phi ptr [ %7, %9 ], [ %18, %63 ]
  %18 = load ptr, ptr %17, align 4
  %19 = getelementptr i8, ptr %17, i32 68
  %20 = load i16, ptr %1, align 2
  %21 = load i16, ptr %19, align 2
  %22 = icmp eq i16 %20, %21
  br i1 %22, label %23, label %63

23:                                               ; preds = %16
  switch i16 %20, label %63 [
    i16 2, label %49
    i16 10, label %24
  ]

24:                                               ; preds = %23
  %25 = getelementptr i8, ptr %17, i32 76
  %26 = load i32, ptr %10, align 4
  %27 = load i32, ptr %25, align 4
  %28 = xor i32 %27, %26
  %29 = load i32, ptr %11, align 4
  %30 = getelementptr i8, ptr %17, i32 80
  %31 = load i32, ptr %30, align 4
  %32 = xor i32 %31, %29
  %33 = or i32 %32, %28
  %34 = load i32, ptr %12, align 4
  %35 = getelementptr i8, ptr %17, i32 84
  %36 = load i32, ptr %35, align 4
  %37 = xor i32 %36, %34
  %38 = or i32 %33, %37
  %39 = load i32, ptr %13, align 4
  %40 = getelementptr i8, ptr %17, i32 88
  %41 = load i32, ptr %40, align 4
  %42 = xor i32 %41, %39
  %43 = or i32 %38, %42
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %45, label %63

45:                                               ; preds = %24
  %46 = call i32 @__ipv6_addr_type(ptr noundef %10) #19
  %47 = and i32 %46, 32
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %56, label %49

49:                                               ; preds = %45, %23
  %50 = phi i32 [ 72, %23 ], [ 92, %45 ]
  %51 = phi ptr [ %15, %23 ], [ %14, %45 ]
  %52 = getelementptr i8, ptr %17, i32 %50
  %53 = load i32, ptr %51, align 4
  %54 = load i32, ptr %52, align 4
  %55 = icmp eq i32 %53, %54
  br i1 %55, label %56, label %63

56:                                               ; preds = %49, %45
  %57 = getelementptr inbounds %struct.list_head, ptr %17, i32 0, i32 1
  %58 = load ptr, ptr %57, align 4
  %59 = load ptr, ptr %17, align 4
  %60 = getelementptr inbounds %struct.list_head, ptr %59, i32 0, i32 1
  store ptr %58, ptr %60, align 4
  store volatile ptr %59, ptr %58, align 4
  %61 = load ptr, ptr %3, align 8
  %62 = getelementptr inbounds %struct.list_head, ptr %61, i32 0, i32 1
  store ptr %17, ptr %62, align 4
  store ptr %61, ptr %17, align 4
  store ptr %3, ptr %57, align 4
  store volatile ptr %17, ptr %3, align 8
  br label %63

63:                                               ; preds = %56, %49, %24, %23, %16
  %64 = icmp eq ptr %18, %6
  br i1 %64, label %65, label %16

65:                                               ; preds = %63, %2
  call void @_raw_spin_unlock_bh(ptr noundef %5) #19
  %66 = load volatile ptr, ptr %3, align 8
  %67 = icmp eq ptr %66, %3
  br i1 %67, label %89, label %68

68:                                               ; preds = %86, %65
  %69 = phi ptr [ %87, %86 ], [ %66, %65 ]
  %70 = getelementptr inbounds %struct.list_head, ptr %69, i32 0, i32 1
  %71 = load ptr, ptr %70, align 4
  %72 = load ptr, ptr %69, align 4
  %73 = getelementptr inbounds %struct.list_head, ptr %72, i32 0, i32 1
  store ptr %71, ptr %73, align 4
  store volatile ptr %72, ptr %71, align 4
  store volatile ptr %69, ptr %69, align 4
  store ptr %69, ptr %70, align 4
  %74 = getelementptr i8, ptr %69, i32 16
  call void @_set_bit(i32 noundef 2, ptr noundef %74) #19
  call void @_set_bit(i32 noundef 13, ptr noundef %74) #19
  %75 = load volatile i32, ptr %74, align 4
  %76 = and i32 %75, 1
  %77 = icmp eq i32 %76, 0
  br i1 %77, label %78, label %86

78:                                               ; preds = %68
  %79 = getelementptr i8, ptr %69, i32 -12
  %80 = getelementptr i8, ptr %69, i32 20
  %81 = load ptr, ptr %80, align 4
  %82 = getelementptr inbounds %struct.svc_serv, ptr %81, i32 0, i32 16
  %83 = load ptr, ptr %82, align 4
  %84 = getelementptr inbounds %struct.svc_serv_ops, ptr %83, i32 0, i32 2
  %85 = load ptr, ptr %84, align 4
  call void %85(ptr noundef %79) #19
  br label %86

86:                                               ; preds = %78, %68
  %87 = load volatile ptr, ptr %3, align 8
  %88 = icmp eq ptr %87, %3
  br i1 %88, label %89, label %68

89:                                               ; preds = %86, %65
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #19
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @svc_close_xprt(ptr noundef %0) #0 {
  %2 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_svc_xprt_close, i32 0, i32 1), align 4
  %3 = icmp sgt i32 %2, 0
  br i1 %3, label %4, label %17

4:                                                ; preds = %1
  %5 = tail call ptr @llvm.thread.pointer() #19
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
  tail call void asm sideeffect "", "~{memory}"() #19, !srcloc !70
  %16 = tail call i32 @__traceiter_svc_xprt_close(ptr noundef null, ptr noundef %0) #19
  tail call void asm sideeffect "", "~{memory}"() #19, !srcloc !71
  br label %17

17:                                               ; preds = %15, %4, %1
  %18 = getelementptr inbounds %struct.svc_xprt, ptr %0, i32 0, i32 5
  tail call void @_set_bit(i32 noundef 2, ptr noundef %18) #19
  %19 = tail call i32 @_test_and_set_bit(i32 noundef 0, ptr noundef %18) #19
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %17
  tail call fastcc void @svc_delete_xprt(ptr noundef %0)
  br label %22

22:                                               ; preds = %21, %17
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @svc_delete_xprt(ptr noundef %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.svc_xprt, ptr %0, i32 0, i32 6
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.svc_xprt, ptr %0, i32 0, i32 5
  %5 = tail call i32 @_test_and_set_bit(i32 noundef 6, ptr noundef %4) #19
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %102

7:                                                ; preds = %1
  %8 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_svc_xprt_detach, i32 0, i32 1), align 4
  %9 = icmp sgt i32 %8, 0
  br i1 %9, label %10, label %23

10:                                               ; preds = %7
  %11 = tail call ptr @llvm.thread.pointer() #19
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
  tail call void asm sideeffect "", "~{memory}"() #19, !srcloc !72
  %22 = tail call i32 @__traceiter_svc_xprt_detach(ptr noundef null, ptr noundef %0) #19
  tail call void asm sideeffect "", "~{memory}"() #19, !srcloc !73
  br label %23

23:                                               ; preds = %21, %10, %7
  %24 = getelementptr inbounds %struct.svc_xprt, ptr %0, i32 0, i32 1
  %25 = load ptr, ptr %24, align 4
  %26 = getelementptr inbounds %struct.svc_xprt_ops, ptr %25, i32 0, i32 7
  %27 = load ptr, ptr %26, align 4
  tail call void %27(ptr noundef %0) #19
  %28 = getelementptr inbounds %struct.svc_xprt, ptr %0, i32 0, i32 21
  %29 = load ptr, ptr %28, align 4
  %30 = icmp eq ptr %29, null
  br i1 %30, label %36, label %31

31:                                               ; preds = %23
  %32 = getelementptr inbounds %struct.rpc_xprt, ptr %29, i32 0, i32 1
  %33 = load ptr, ptr %32, align 4
  %34 = getelementptr inbounds %struct.rpc_xprt_ops, ptr %33, i32 0, i32 15
  %35 = load ptr, ptr %34, align 4
  tail call void %35(ptr noundef nonnull %29) #19
  br label %36

36:                                               ; preds = %31, %23
  %37 = getelementptr inbounds %struct.svc_serv, ptr %3, i32 0, i32 2
  tail call void @_raw_spin_lock_bh(ptr noundef %37) #19
  %38 = getelementptr inbounds %struct.svc_xprt, ptr %0, i32 0, i32 3
  %39 = getelementptr inbounds %struct.svc_xprt, ptr %0, i32 0, i32 3, i32 1
  %40 = load ptr, ptr %39, align 4
  %41 = load ptr, ptr %38, align 4
  %42 = getelementptr inbounds %struct.list_head, ptr %41, i32 0, i32 1
  store ptr %40, ptr %42, align 4
  store volatile ptr %41, ptr %40, align 4
  store volatile ptr %38, ptr %38, align 4
  store ptr %38, ptr %39, align 4
  %43 = getelementptr inbounds %struct.svc_xprt, ptr %0, i32 0, i32 4
  %44 = load volatile ptr, ptr %43, align 4
  %45 = icmp ne ptr %44, %43
  %46 = load i1, ptr @svc_delete_xprt.__already_done, align 1
  %47 = xor i1 %46, true
  %48 = select i1 %45, i1 %47, i1 false
  br i1 %48, label %49, label %50, !prof !24

49:                                               ; preds = %36
  store i1 true, ptr @svc_delete_xprt.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 1051, i32 noundef 9, ptr noundef null) #19
  br label %50

50:                                               ; preds = %49, %36
  %51 = load volatile i32, ptr %4, align 4
  %52 = and i32 %51, 16
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %58, label %54

54:                                               ; preds = %50
  %55 = getelementptr inbounds %struct.svc_serv, ptr %3, i32 0, i32 11
  %56 = load i32, ptr %55, align 4
  %57 = add i32 %56, -1
  store i32 %57, ptr %55, align 4
  br label %58

58:                                               ; preds = %54, %50
  tail call void @_raw_spin_unlock_bh(ptr noundef %37) #19
  %59 = load volatile i32, ptr %4, align 4
  %60 = and i32 %59, 256
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %84, label %62

62:                                               ; preds = %58
  %63 = getelementptr inbounds %struct.svc_xprt, ptr %0, i32 0, i32 10
  %64 = getelementptr inbounds %struct.svc_xprt, ptr %0, i32 0, i32 12
  br label %65

65:                                               ; preds = %80, %62
  tail call void @_raw_spin_lock(ptr noundef %63) #19
  %66 = load volatile ptr, ptr %64, align 4
  %67 = icmp eq ptr %66, %64
  br i1 %67, label %74, label %68

68:                                               ; preds = %65
  %69 = getelementptr i8, ptr %66, i32 -280
  %70 = getelementptr inbounds %struct.list_head, ptr %66, i32 0, i32 1
  %71 = load ptr, ptr %70, align 4
  %72 = load ptr, ptr %66, align 4
  %73 = getelementptr inbounds %struct.list_head, ptr %72, i32 0, i32 1
  store ptr %71, ptr %73, align 4
  store volatile ptr %72, ptr %71, align 4
  store volatile ptr %66, ptr %66, align 4
  store ptr %66, ptr %70, align 4
  br label %75

74:                                               ; preds = %65
  tail call void @_clear_bit(i32 noundef 8, ptr noundef %4) #19
  br label %75

75:                                               ; preds = %74, %68
  %76 = phi ptr [ null, %74 ], [ %69, %68 ]
  tail call void asm sideeffect "dmb ish", "~{memory}"() #19, !srcloc !8
  %77 = load i16, ptr %63, align 4
  %78 = add i16 %77, 1
  store i16 %78, ptr %63, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #19, !srcloc !9
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #19, !srcloc !10
  tail call void asm sideeffect "", "~{memory}"() #19, !srcloc !11
  %79 = icmp eq ptr %76, null
  br i1 %79, label %84, label %80

80:                                               ; preds = %75
  tail call void @kfree(ptr noundef nonnull %76) #19
  %81 = load volatile i32, ptr %4, align 4
  %82 = and i32 %81, 256
  %83 = icmp eq i32 %82, 0
  br i1 %83, label %84, label %65

84:                                               ; preds = %80, %75, %58
  %85 = getelementptr inbounds %struct.svc_xprt, ptr %0, i32 0, i32 10
  tail call void @_raw_spin_lock(ptr noundef %85) #19
  %86 = getelementptr inbounds %struct.svc_xprt, ptr %0, i32 0, i32 18
  %87 = load volatile ptr, ptr %86, align 4
  %88 = icmp eq ptr %87, %86
  br i1 %88, label %99, label %89

89:                                               ; preds = %89, %84
  %90 = phi ptr [ %97, %89 ], [ %87, %84 ]
  %91 = getelementptr inbounds %struct.list_head, ptr %90, i32 0, i32 1
  %92 = load ptr, ptr %91, align 4
  %93 = load ptr, ptr %90, align 4
  %94 = getelementptr inbounds %struct.list_head, ptr %93, i32 0, i32 1
  store ptr %92, ptr %94, align 4
  store volatile ptr %93, ptr %92, align 4
  store volatile ptr %90, ptr %90, align 4
  store ptr %90, ptr %91, align 4
  %95 = getelementptr inbounds %struct.svc_xpt_user, ptr %90, i32 0, i32 1
  %96 = load ptr, ptr %95, align 4
  tail call void %96(ptr noundef %90) #19
  %97 = load volatile ptr, ptr %86, align 4
  %98 = icmp eq ptr %97, %86
  br i1 %98, label %99, label %89

99:                                               ; preds = %89, %84
  tail call void asm sideeffect "dmb ish", "~{memory}"() #19, !srcloc !8
  %100 = load i16, ptr %85, align 4
  %101 = add i16 %100, 1
  store i16 %101, ptr %85, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #19, !srcloc !9
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #19, !srcloc !10
  tail call void asm sideeffect "", "~{memory}"() #19, !srcloc !11
  tail call void @svc_xprt_put(ptr noundef %0)
  br label %102

102:                                              ; preds = %99, %1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @svc_close_net(ptr noundef %0, ptr noundef readnone %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.svc_serv, ptr %0, i32 0, i32 9
  %4 = getelementptr inbounds %struct.svc_serv, ptr %0, i32 0, i32 2
  %5 = getelementptr inbounds %struct.svc_serv, ptr %0, i32 0, i32 10
  %6 = getelementptr inbounds %struct.svc_serv, ptr %0, i32 0, i32 14
  %7 = getelementptr inbounds %struct.svc_serv, ptr %0, i32 0, i32 15
  br label %8

8:                                                ; preds = %101, %2
  %9 = phi i32 [ 0, %2 ], [ %102, %101 ]
  tail call void @_raw_spin_lock_bh(ptr noundef %4) #19
  %10 = load ptr, ptr %3, align 4
  %11 = icmp eq ptr %10, %3
  br i1 %11, label %36, label %12

12:                                               ; preds = %32, %8
  %13 = phi ptr [ %34, %32 ], [ %10, %8 ]
  %14 = phi i32 [ %33, %32 ], [ 0, %8 ]
  %15 = getelementptr i8, ptr %13, i32 -12
  %16 = getelementptr i8, ptr %13, i32 400
  %17 = load ptr, ptr %16, align 4
  %18 = icmp eq ptr %17, %1
  br i1 %18, label %19, label %32

19:                                               ; preds = %12
  %20 = add i32 %14, 1
  %21 = getelementptr i8, ptr %13, i32 16
  tail call void @_set_bit(i32 noundef 2, ptr noundef %21) #19
  %22 = load volatile i32, ptr %21, align 4
  %23 = and i32 %22, 1
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %32

25:                                               ; preds = %19
  %26 = getelementptr i8, ptr %13, i32 20
  %27 = load ptr, ptr %26, align 4
  %28 = getelementptr inbounds %struct.svc_serv, ptr %27, i32 0, i32 16
  %29 = load ptr, ptr %28, align 4
  %30 = getelementptr inbounds %struct.svc_serv_ops, ptr %29, i32 0, i32 2
  %31 = load ptr, ptr %30, align 4
  tail call void %31(ptr noundef %15) #19
  br label %32

32:                                               ; preds = %25, %19, %12
  %33 = phi i32 [ %14, %12 ], [ %20, %19 ], [ %20, %25 ]
  %34 = load ptr, ptr %13, align 4
  %35 = icmp eq ptr %34, %3
  br i1 %35, label %36, label %12

36:                                               ; preds = %32, %8
  %37 = phi i32 [ 0, %8 ], [ %33, %32 ]
  tail call void @_raw_spin_unlock_bh(ptr noundef %4) #19
  tail call void @_raw_spin_lock_bh(ptr noundef %4) #19
  %38 = load ptr, ptr %5, align 4
  %39 = icmp eq ptr %38, %5
  br i1 %39, label %64, label %40

40:                                               ; preds = %60, %36
  %41 = phi ptr [ %62, %60 ], [ %38, %36 ]
  %42 = phi i32 [ %61, %60 ], [ 0, %36 ]
  %43 = getelementptr i8, ptr %41, i32 -12
  %44 = getelementptr i8, ptr %41, i32 400
  %45 = load ptr, ptr %44, align 4
  %46 = icmp eq ptr %45, %1
  br i1 %46, label %47, label %60

47:                                               ; preds = %40
  %48 = add i32 %42, 1
  %49 = getelementptr i8, ptr %41, i32 16
  tail call void @_set_bit(i32 noundef 2, ptr noundef %49) #19
  %50 = load volatile i32, ptr %49, align 4
  %51 = and i32 %50, 1
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %53, label %60

53:                                               ; preds = %47
  %54 = getelementptr i8, ptr %41, i32 20
  %55 = load ptr, ptr %54, align 4
  %56 = getelementptr inbounds %struct.svc_serv, ptr %55, i32 0, i32 16
  %57 = load ptr, ptr %56, align 4
  %58 = getelementptr inbounds %struct.svc_serv_ops, ptr %57, i32 0, i32 2
  %59 = load ptr, ptr %58, align 4
  tail call void %59(ptr noundef %43) #19
  br label %60

60:                                               ; preds = %53, %47, %40
  %61 = phi i32 [ %42, %40 ], [ %48, %47 ], [ %48, %53 ]
  %62 = load ptr, ptr %41, align 4
  %63 = icmp eq ptr %62, %5
  br i1 %63, label %64, label %40

64:                                               ; preds = %60, %36
  %65 = phi i32 [ 0, %36 ], [ %61, %60 ]
  tail call void @_raw_spin_unlock_bh(ptr noundef %4) #19
  %66 = sub i32 0, %65
  %67 = icmp eq i32 %37, %66
  br i1 %67, label %103, label %68

68:                                               ; preds = %64
  %69 = load i32, ptr %6, align 4
  %70 = icmp eq i32 %69, 0
  br i1 %70, label %101, label %71

71:                                               ; preds = %89, %68
  %72 = phi i32 [ %90, %89 ], [ 0, %68 ]
  %73 = load ptr, ptr %7, align 4
  %74 = getelementptr %struct.svc_pool, ptr %73, i32 %72, i32 1
  tail call void @_raw_spin_lock_bh(ptr noundef %74) #19
  %75 = getelementptr %struct.svc_pool, ptr %73, i32 %72, i32 2
  %76 = load ptr, ptr %75, align 8
  br label %77

77:                                               ; preds = %80, %71
  %78 = phi ptr [ %76, %71 ], [ %81, %80 ]
  %79 = icmp eq ptr %78, %75
  br i1 %79, label %85, label %80

80:                                               ; preds = %77
  %81 = load ptr, ptr %78, align 4
  %82 = getelementptr i8, ptr %78, i32 392
  %83 = load ptr, ptr %82, align 4
  %84 = icmp eq ptr %83, %1
  br i1 %84, label %91, label %77

85:                                               ; preds = %77
  tail call void @_raw_spin_unlock_bh(ptr noundef %74) #19
  %86 = add nuw i32 %72, 1
  %87 = load i32, ptr %6, align 4
  %88 = icmp ult i32 %86, %87
  br i1 %88, label %89, label %101

89:                                               ; preds = %97, %85
  %90 = phi i32 [ %86, %85 ], [ 0, %97 ]
  br label %71

91:                                               ; preds = %80
  %92 = getelementptr i8, ptr %78, i32 -20
  %93 = getelementptr inbounds %struct.list_head, ptr %78, i32 0, i32 1
  %94 = load ptr, ptr %93, align 4
  %95 = getelementptr inbounds %struct.list_head, ptr %81, i32 0, i32 1
  store ptr %94, ptr %95, align 4
  store volatile ptr %81, ptr %94, align 4
  store volatile ptr %78, ptr %78, align 4
  store ptr %78, ptr %93, align 4
  tail call void @_raw_spin_unlock_bh(ptr noundef %74) #19
  %96 = icmp eq ptr %92, null
  br i1 %96, label %101, label %97

97:                                               ; preds = %91
  %98 = getelementptr i8, ptr %78, i32 8
  tail call void @_set_bit(i32 noundef 2, ptr noundef %98) #19
  tail call fastcc void @svc_delete_xprt(ptr noundef nonnull %92) #19
  %99 = load i32, ptr %6, align 4
  %100 = icmp eq i32 %99, 0
  br i1 %100, label %101, label %89

101:                                              ; preds = %97, %91, %85, %68
  %102 = add i32 %9, 1
  tail call void @msleep(i32 noundef %9) #19
  br label %8

103:                                              ; preds = %64
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @svc_find_xprt(ptr noundef %0, ptr noundef readonly %1, ptr noundef readnone %2, i16 noundef zeroext %3, i16 noundef zeroext %4) #0 {
  %6 = icmp eq ptr %0, null
  %7 = icmp eq ptr %1, null
  %8 = or i1 %6, %7
  br i1 %8, label %60, label %9

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.svc_serv, ptr %0, i32 0, i32 2
  tail call void @_raw_spin_lock_bh(ptr noundef %10) #19
  %11 = getelementptr inbounds %struct.svc_serv, ptr %0, i32 0, i32 9
  %12 = load ptr, ptr %11, align 4
  %13 = icmp eq ptr %12, %11
  br i1 %13, label %58, label %14

14:                                               ; preds = %9
  %15 = icmp eq i16 %3, 0
  %16 = icmp eq i16 %4, 0
  br label %17

17:                                               ; preds = %55, %14
  %18 = phi ptr [ %12, %14 ], [ %56, %55 ]
  %19 = getelementptr i8, ptr %18, i32 -12
  %20 = getelementptr i8, ptr %18, i32 400
  %21 = load ptr, ptr %20, align 4
  %22 = icmp eq ptr %21, %2
  br i1 %22, label %23, label %55

23:                                               ; preds = %17
  %24 = load ptr, ptr %19, align 4
  %25 = load ptr, ptr %24, align 4
  %26 = tail call i32 @strcmp(ptr noundef %25, ptr noundef %1)
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %55

28:                                               ; preds = %23
  br i1 %15, label %33, label %29

29:                                               ; preds = %28
  %30 = getelementptr i8, ptr %18, i32 68
  %31 = load i16, ptr %30, align 4
  %32 = icmp eq i16 %31, %3
  br i1 %32, label %33, label %55

33:                                               ; preds = %29, %28
  br i1 %16, label %44, label %34

34:                                               ; preds = %33
  %35 = getelementptr i8, ptr %18, i32 68
  %36 = load i16, ptr %35, align 2
  switch i16 %36, label %41 [
    i16 2, label %37
    i16 10, label %37
  ]

37:                                               ; preds = %34, %34
  %38 = getelementptr i8, ptr %18, i32 70
  %39 = load i16, ptr %38, align 2
  %40 = tail call i16 @llvm.bswap.i16(i16 %39) #19
  br label %41

41:                                               ; preds = %37, %34
  %42 = phi i16 [ 0, %34 ], [ %40, %37 ]
  %43 = icmp eq i16 %42, %4
  br i1 %43, label %44, label %55

44:                                               ; preds = %41, %33
  %45 = getelementptr i8, ptr %18, i32 -4
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %45) #19, !srcloc !14
  %46 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %45, ptr %45, i32 1, ptr elementtype(i32) %45) #19, !srcloc !23
  %47 = extractvalue { i32, i32, i32 } %46, 0
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %53, label %49, !prof !24

49:                                               ; preds = %44
  %50 = add i32 %47, 1
  %51 = or i32 %50, %47
  %52 = icmp sgt i32 %51, -1
  br i1 %52, label %58, label %53, !prof !16

53:                                               ; preds = %49, %44
  %54 = phi i32 [ 2, %44 ], [ 1, %49 ]
  tail call void @refcount_warn_saturate(ptr noundef %45, i32 noundef %54) #19
  br label %58

55:                                               ; preds = %41, %29, %23, %17
  %56 = load ptr, ptr %18, align 4
  %57 = icmp eq ptr %56, %11
  br i1 %57, label %58, label %17

58:                                               ; preds = %55, %53, %49, %9
  %59 = phi ptr [ %19, %49 ], [ %19, %53 ], [ null, %9 ], [ null, %55 ]
  tail call void @_raw_spin_unlock_bh(ptr noundef %10) #19
  br label %60

60:                                               ; preds = %58, %5
  %61 = phi ptr [ %59, %58 ], [ null, %5 ]
  ret ptr %61
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @svc_xprt_names(ptr noundef %0, ptr nocapture noundef writeonly %1, i32 noundef %2) #0 {
  %4 = icmp eq ptr %0, null
  br i1 %4, label %41, label %5

5:                                                ; preds = %3
  %6 = getelementptr inbounds %struct.svc_serv, ptr %0, i32 0, i32 2
  tail call void @_raw_spin_lock_bh(ptr noundef %6) #19
  %7 = getelementptr inbounds %struct.svc_serv, ptr %0, i32 0, i32 9
  %8 = load ptr, ptr %7, align 4
  %9 = icmp eq ptr %8, %7
  br i1 %9, label %39, label %10

10:                                               ; preds = %34, %5
  %11 = phi ptr [ %37, %34 ], [ %8, %5 ]
  %12 = phi i32 [ %36, %34 ], [ 0, %5 ]
  %13 = phi ptr [ %35, %34 ], [ %1, %5 ]
  %14 = getelementptr i8, ptr %11, i32 -12
  %15 = sub i32 %2, %12
  %16 = load ptr, ptr %14, align 4
  %17 = load ptr, ptr %16, align 4
  %18 = getelementptr i8, ptr %11, i32 68
  %19 = load i16, ptr %18, align 2
  switch i16 %19, label %25 [
    i16 2, label %20
    i16 10, label %20
  ]

20:                                               ; preds = %10, %10
  %21 = getelementptr i8, ptr %11, i32 70
  %22 = load i16, ptr %21, align 2
  %23 = tail call i16 @llvm.bswap.i16(i16 %22) #19
  %24 = zext i16 %23 to i32
  br label %25

25:                                               ; preds = %20, %10
  %26 = phi i32 [ 0, %10 ], [ %24, %20 ]
  %27 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %13, i32 noundef %15, ptr noundef nonnull @.str.15, ptr noundef %17, i32 noundef %26) #19
  %28 = icmp slt i32 %27, %15
  %29 = select i1 %28, i32 %27, i32 -36
  %30 = icmp slt i32 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %25
  store i8 0, ptr %1, align 1
  br label %39

32:                                               ; preds = %25
  %33 = icmp eq i32 %29, 0
  br i1 %33, label %39, label %34

34:                                               ; preds = %32
  %35 = getelementptr i8, ptr %13, i32 %29
  %36 = add i32 %29, %12
  %37 = load ptr, ptr %11, align 4
  %38 = icmp eq ptr %37, %7
  br i1 %38, label %39, label %10

39:                                               ; preds = %34, %32, %31, %5
  %40 = phi i32 [ %29, %31 ], [ 0, %5 ], [ %36, %34 ], [ %12, %32 ]
  tail call void @_raw_spin_unlock_bh(ptr noundef %6) #19
  br label %41

41:                                               ; preds = %39, %3
  %42 = phi i32 [ %40, %39 ], [ 0, %3 ]
  ret i32 %42
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @svc_pool_stats_open(ptr noundef %0, ptr noundef %1) #0 {
  %3 = tail call i32 @seq_open(ptr noundef %1, ptr noundef nonnull @svc_pool_stats_seq_ops) #19
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %9

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.file, ptr %1, i32 0, i32 15
  %7 = load ptr, ptr %6, align 8
  %8 = getelementptr inbounds %struct.seq_file, ptr %7, i32 0, i32 11
  store ptr %0, ptr %8, align 8
  br label %9

9:                                                ; preds = %5, %2
  ret i32 %3
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @seq_open(ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #6 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @svcauth_unix_info_release(ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @xprt_put(ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @xprt_switch_put(ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @module_put(ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @__put_cred(ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_svc_xprt_free(ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_bh(ptr noundef) local_unnamed_addr #6 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_bh(ptr noundef) local_unnamed_addr #6 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @try_module_get(ptr noundef) local_unnamed_addr #6

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_svc_xprt_create_err(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_svc_xprt_no_write_space(ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.thread.pointer() #12

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_svc_xprt_enqueue(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_svc_wake_up(ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #13

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @page_address(ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__alloc_pages_bulk(i32 noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_svc_alloc_arg_err(ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @io_schedule_timeout(i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__refrigerator(i1 noundef zeroext) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @freezing_slow_path(ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__cond_resched() local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @schedule_timeout(i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_svc_xprt_dequeue(ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @__module_get(ptr noundef) local_unnamed_addr #6

; Function Attrs: noinline nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @svc_deferred_recv(ptr noundef %0) unnamed_addr #14 {
  %2 = getelementptr inbounds %struct.svc_rqst, ptr %0, i32 0, i32 13
  %3 = load ptr, ptr %2, align 8
  %4 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_svc_defer_recv, i32 0, i32 1), align 4
  %5 = icmp sgt i32 %4, 0
  br i1 %5, label %6, label %19

6:                                                ; preds = %1
  %7 = tail call ptr @llvm.thread.pointer() #19
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
  tail call void asm sideeffect "", "~{memory}"() #19, !srcloc !74
  %18 = tail call i32 @__traceiter_svc_defer_recv(ptr noundef null, ptr noundef %3) #19
  tail call void asm sideeffect "", "~{memory}"() #19, !srcloc !75
  br label %19

19:                                               ; preds = %17, %6, %1
  %20 = getelementptr inbounds %struct.svc_deferred_req, ptr %3, i32 0, i32 9
  %21 = getelementptr inbounds %struct.svc_deferred_req, ptr %3, i32 0, i32 7
  %22 = load i32, ptr %21, align 4
  %23 = lshr i32 %22, 2
  %24 = getelementptr i32, ptr %20, i32 %23
  %25 = getelementptr inbounds %struct.svc_rqst, ptr %0, i32 0, i32 15
  store ptr %24, ptr %25, align 8
  %26 = getelementptr inbounds %struct.svc_deferred_req, ptr %3, i32 0, i32 8
  %27 = load i32, ptr %26, align 4
  %28 = shl i32 %27, 2
  %29 = load i32, ptr %21, align 4
  %30 = sub i32 %28, %29
  %31 = getelementptr inbounds %struct.svc_rqst, ptr %0, i32 0, i32 15, i32 0, i32 0, i32 1
  store i32 %30, ptr %31, align 4
  %32 = getelementptr inbounds %struct.svc_rqst, ptr %0, i32 0, i32 15, i32 5
  store i32 0, ptr %32, align 4
  %33 = load i32, ptr %26, align 4
  %34 = shl i32 %33, 2
  %35 = getelementptr inbounds %struct.svc_rqst, ptr %0, i32 0, i32 15, i32 8
  store i32 %34, ptr %35, align 8
  %36 = load i32, ptr %3, align 4
  %37 = getelementptr inbounds %struct.svc_rqst, ptr %0, i32 0, i32 31
  store i32 %36, ptr %37, align 4
  %38 = getelementptr inbounds %struct.svc_rqst, ptr %0, i32 0, i32 3
  %39 = getelementptr inbounds %struct.svc_deferred_req, ptr %3, i32 0, i32 2
  %40 = getelementptr inbounds %struct.svc_deferred_req, ptr %3, i32 0, i32 3
  %41 = load i32, ptr %40, align 4
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 4 %38, ptr align 4 %39, i32 %41, i1 false)
  %42 = load i32, ptr %40, align 4
  %43 = getelementptr inbounds %struct.svc_rqst, ptr %0, i32 0, i32 4
  store i32 %42, ptr %43, align 4
  %44 = load i32, ptr %21, align 4
  %45 = getelementptr inbounds %struct.svc_rqst, ptr %0, i32 0, i32 14
  store i32 %44, ptr %45, align 4
  %46 = getelementptr inbounds %struct.svc_rqst, ptr %0, i32 0, i32 5
  %47 = getelementptr inbounds %struct.svc_deferred_req, ptr %3, i32 0, i32 4
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 8 dereferenceable(128) %46, ptr noundef align 4 dereferenceable(128) %47, i32 128, i1 false)
  %48 = getelementptr inbounds %struct.svc_rqst, ptr %0, i32 0, i32 20
  %49 = getelementptr inbounds %struct.svc_rqst, ptr %0, i32 0, i32 21
  store ptr %48, ptr %49, align 4
  %50 = getelementptr inbounds %struct.svc_rqst, ptr %0, i32 0, i32 2
  %51 = load ptr, ptr %50, align 8
  tail call void @svc_xprt_received(ptr noundef %51)
  %52 = load i32, ptr %26, align 4
  %53 = shl i32 %52, 2
  %54 = load i32, ptr %21, align 4
  %55 = sub i32 %53, %54
  ret i32 %55
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @net_ratelimit() local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @svc_age_temp_xprts(ptr noundef %0) #0 {
  %2 = getelementptr i8, ptr %0, i32 -48
  %3 = tail call i32 @_raw_spin_trylock_bh(ptr noundef %2) #19
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %42, label %5

5:                                                ; preds = %1
  %6 = getelementptr i8, ptr %0, i32 -12
  %7 = load ptr, ptr %6, align 4
  %8 = icmp eq ptr %7, %6
  br i1 %8, label %41, label %9

9:                                                ; preds = %39, %5
  %10 = phi ptr [ %11, %39 ], [ %7, %5 ]
  %11 = load ptr, ptr %10, align 4
  %12 = getelementptr i8, ptr %10, i32 -12
  %13 = getelementptr i8, ptr %10, i32 16
  %14 = tail call i32 @_test_and_set_bit(i32 noundef 9, ptr noundef %13) #19
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %39, label %16

16:                                               ; preds = %9
  %17 = getelementptr i8, ptr %10, i32 -4
  %18 = load volatile i32, ptr %17, align 4
  %19 = icmp ugt i32 %18, 1
  br i1 %19, label %39, label %20

20:                                               ; preds = %16
  %21 = load volatile i32, ptr %13, align 4
  %22 = and i32 %21, 1
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %39

24:                                               ; preds = %20
  %25 = getelementptr inbounds %struct.list_head, ptr %10, i32 0, i32 1
  %26 = load ptr, ptr %25, align 4
  %27 = load ptr, ptr %10, align 4
  %28 = getelementptr inbounds %struct.list_head, ptr %27, i32 0, i32 1
  store ptr %26, ptr %28, align 4
  store volatile ptr %27, ptr %26, align 4
  store volatile ptr %10, ptr %10, align 4
  store ptr %10, ptr %25, align 4
  tail call void @_set_bit(i32 noundef 2, ptr noundef %13) #19
  %29 = load volatile i32, ptr %13, align 4
  %30 = and i32 %29, 1
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %32, label %39

32:                                               ; preds = %24
  %33 = getelementptr i8, ptr %10, i32 20
  %34 = load ptr, ptr %33, align 4
  %35 = getelementptr inbounds %struct.svc_serv, ptr %34, i32 0, i32 16
  %36 = load ptr, ptr %35, align 4
  %37 = getelementptr inbounds %struct.svc_serv_ops, ptr %36, i32 0, i32 2
  %38 = load ptr, ptr %37, align 4
  tail call void %38(ptr noundef %12) #19
  br label %39

39:                                               ; preds = %32, %24, %20, %16, %9
  %40 = icmp eq ptr %11, %6
  br i1 %40, label %41, label %9

41:                                               ; preds = %39, %5
  tail call void @_raw_spin_unlock_bh(ptr noundef %2) #19
  br label %42

42:                                               ; preds = %41, %1
  %43 = phi i32 [ 36000, %41 ], [ 100, %1 ]
  %44 = load volatile i32, ptr @jiffies, align 64
  %45 = add i32 %44, %43
  %46 = tail call i32 @mod_timer(ptr noundef %0, i32 noundef %45) #19
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mod_timer(ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_trylock_bh(ptr noundef) local_unnamed_addr #6 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_svc_xprt_accept(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_svc_defer_recv(ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_svc_xdr_recvfrom(ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @__pagevec_release(ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @__put_page(ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_svc_drop(ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_svc_xdr_sendto(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_svc_stats_latency(ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_svc_send(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__ipv6_addr_type(ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_svc_xprt_close(ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_svc_xprt_detach(ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @svc_revisit(ptr noundef %0, i32 noundef %1) #0 {
  %3 = getelementptr i8, ptr %0, i32 -272
  %4 = getelementptr i8, ptr %0, i32 -268
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.svc_xprt, ptr %5, i32 0, i32 10
  tail call void @_raw_spin_lock(ptr noundef %6) #19
  %7 = getelementptr inbounds %struct.svc_xprt, ptr %5, i32 0, i32 5
  tail call void @_set_bit(i32 noundef 8, ptr noundef %7) #19
  %8 = icmp eq i32 %1, 0
  br i1 %8, label %9, label %13

9:                                                ; preds = %2
  %10 = load volatile i32, ptr %7, align 4
  %11 = and i32 %10, 64
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %32, label %13

13:                                               ; preds = %9, %2
  tail call void asm sideeffect "dmb ish", "~{memory}"() #19, !srcloc !8
  %14 = load i16, ptr %6, align 4
  %15 = add i16 %14, 1
  store i16 %15, ptr %6, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #19, !srcloc !9
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #19, !srcloc !10
  tail call void asm sideeffect "", "~{memory}"() #19, !srcloc !11
  %16 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_svc_defer_drop, i32 0, i32 1), align 4
  %17 = icmp sgt i32 %16, 0
  br i1 %17, label %18, label %31

18:                                               ; preds = %13
  %19 = tail call ptr @llvm.thread.pointer() #19
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
  tail call void asm sideeffect "", "~{memory}"() #19, !srcloc !76
  %30 = tail call i32 @__traceiter_svc_defer_drop(ptr noundef null, ptr noundef %3) #19
  tail call void asm sideeffect "", "~{memory}"() #19, !srcloc !77
  br label %31

31:                                               ; preds = %29, %18, %13
  tail call void @svc_xprt_put(ptr noundef %5)
  tail call void @kfree(ptr noundef %3) #19
  br label %67

32:                                               ; preds = %9
  store ptr null, ptr %4, align 4
  %33 = getelementptr inbounds %struct.cache_deferred_req, ptr %0, i32 0, i32 1
  %34 = getelementptr inbounds %struct.svc_xprt, ptr %5, i32 0, i32 12
  %35 = load ptr, ptr %34, align 4
  %36 = getelementptr inbounds %struct.list_head, ptr %35, i32 0, i32 1
  store ptr %33, ptr %36, align 4
  store ptr %35, ptr %33, align 4
  %37 = getelementptr inbounds %struct.cache_deferred_req, ptr %0, i32 0, i32 1, i32 1
  store ptr %34, ptr %37, align 4
  store volatile ptr %33, ptr %34, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #19, !srcloc !8
  %38 = load i16, ptr %6, align 4
  %39 = add i16 %38, 1
  store i16 %39, ptr %6, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #19, !srcloc !9
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #19, !srcloc !10
  tail call void asm sideeffect "", "~{memory}"() #19, !srcloc !11
  %40 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_svc_defer_queue, i32 0, i32 1), align 4
  %41 = icmp sgt i32 %40, 0
  br i1 %41, label %42, label %55

42:                                               ; preds = %32
  %43 = tail call ptr @llvm.thread.pointer() #19
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
  tail call void asm sideeffect "", "~{memory}"() #19, !srcloc !78
  %54 = tail call i32 @__traceiter_svc_defer_queue(ptr noundef null, ptr noundef %3) #19
  tail call void asm sideeffect "", "~{memory}"() #19, !srcloc !79
  br label %55

55:                                               ; preds = %53, %42, %32
  %56 = load volatile i32, ptr %7, align 4
  %57 = and i32 %56, 1
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %59, label %66

59:                                               ; preds = %55
  %60 = getelementptr inbounds %struct.svc_xprt, ptr %5, i32 0, i32 6
  %61 = load ptr, ptr %60, align 4
  %62 = getelementptr inbounds %struct.svc_serv, ptr %61, i32 0, i32 16
  %63 = load ptr, ptr %62, align 4
  %64 = getelementptr inbounds %struct.svc_serv_ops, ptr %63, i32 0, i32 2
  %65 = load ptr, ptr %64, align 4
  tail call void %65(ptr noundef %5) #19
  br label %66

66:                                               ; preds = %59, %55
  tail call void @svc_xprt_put(ptr noundef %5)
  br label %67

67:                                               ; preds = %66, %31
  ret void
}

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #15

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_svc_defer(ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_svc_defer_drop(ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_svc_defer_queue(ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define internal ptr @svc_pool_stats_start(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #16 {
  %3 = load i64, ptr %1, align 8
  %4 = trunc i64 %3 to i32
  %5 = getelementptr inbounds %struct.seq_file, ptr %0, i32 0, i32 11
  %6 = load ptr, ptr %5, align 8
  %7 = icmp eq i32 %4, 0
  br i1 %7, label %17, label %8

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.svc_serv, ptr %6, i32 0, i32 14
  %10 = load i32, ptr %9, align 4
  %11 = icmp ult i32 %10, %4
  br i1 %11, label %17, label %12

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct.svc_serv, ptr %6, i32 0, i32 15
  %14 = load ptr, ptr %13, align 4
  %15 = add i32 %4, -1
  %16 = getelementptr %struct.svc_pool, ptr %14, i32 %15
  br label %17

17:                                               ; preds = %12, %8, %2
  %18 = phi ptr [ inttoptr (i32 1 to ptr), %2 ], [ %16, %12 ], [ null, %8 ]
  ret ptr %18
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal void @svc_pool_stats_stop(ptr nocapture noundef %0, ptr nocapture noundef %1) #17 {
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal ptr @svc_pool_stats_next(ptr nocapture noundef readonly %0, ptr noundef %1, ptr nocapture noundef %2) #18 {
  %4 = getelementptr inbounds %struct.seq_file, ptr %0, i32 0, i32 11
  %5 = load ptr, ptr %4, align 8
  %6 = icmp eq ptr %1, inttoptr (i32 1 to ptr)
  %7 = getelementptr inbounds %struct.svc_serv, ptr %5, i32 0, i32 15
  %8 = load ptr, ptr %7, align 4
  br i1 %6, label %21, label %9

9:                                                ; preds = %3
  %10 = ptrtoint ptr %1 to i32
  %11 = ptrtoint ptr %8 to i32
  %12 = sub i32 %10, %11
  %13 = ashr exact i32 %12, 6
  %14 = getelementptr inbounds %struct.svc_serv, ptr %5, i32 0, i32 14
  %15 = load i32, ptr %14, align 4
  %16 = add i32 %15, -1
  %17 = icmp ult i32 %13, %16
  %18 = add nsw i32 %13, 1
  %19 = getelementptr %struct.svc_pool, ptr %8, i32 %18
  %20 = select i1 %17, ptr %19, ptr null
  br label %21

21:                                               ; preds = %9, %3
  %22 = phi ptr [ %20, %9 ], [ %8, %3 ]
  %23 = load i64, ptr %2, align 8
  %24 = add i64 %23, 1
  store i64 %24, ptr %2, align 8
  ret ptr %22
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @svc_pool_stats_show(ptr noundef %0, ptr noundef %1) #0 {
  %3 = icmp eq ptr %1, inttoptr (i32 1 to ptr)
  br i1 %3, label %4, label %5

4:                                                ; preds = %2
  tail call void @seq_puts(ptr noundef %0, ptr noundef nonnull @.str.16) #19
  br label %15

5:                                                ; preds = %2
  %6 = load i32, ptr %1, align 64
  %7 = getelementptr inbounds %struct.svc_pool, ptr %1, i32 0, i32 5
  %8 = load volatile i32, ptr %7, align 4
  %9 = getelementptr inbounds %struct.svc_pool, ptr %1, i32 0, i32 5, i32 1
  %10 = load i32, ptr %9, align 4
  %11 = getelementptr inbounds %struct.svc_pool, ptr %1, i32 0, i32 5, i32 2
  %12 = load volatile i32, ptr %11, align 4
  %13 = getelementptr inbounds %struct.svc_pool, ptr %1, i32 0, i32 5, i32 3
  %14 = load volatile i32, ptr %13, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.17, i32 noundef %6, i32 noundef %8, i32 noundef %10, i32 noundef %12, i32 noundef %14) #19
  br label %15

15:                                               ; preds = %5, %4
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_puts(ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #6

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { argmemonly nofree nounwind willreturn writeonly }
attributes #4 = { nofree nounwind null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { argmemonly nofree nounwind willreturn }
attributes #8 = { argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { nofree nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #10 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #11 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #12 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #13 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #14 = { noinline nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #15 = { null_pointer_is_valid allocsize(0) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #16 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #17 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #18 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #19 = { nounwind }
attributes #20 = { cold nounwind }
attributes #21 = { nounwind allocsize(0) }

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
!8 = !{i64 2149202425}
!9 = !{i64 2149198249}
!10 = !{i64 2149198324, i64 2149198351, i64 2149198398, i64 2149198420, i64 2149198448, i64 2149198468}
!11 = !{i64 2149225428}
!12 = !{!"auto-init"}
!13 = !{i64 2148220720}
!14 = !{i64 554212, i64 2148055778, i64 2148055804, i64 2148055851, i64 2148055873, i64 2148055901, i64 2148055921}
!15 = !{i64 2148122855, i64 2148122887, i64 2148122916, i64 2148122950, i64 2148122981, i64 2148123004}
!16 = !{!"branch_weights", i32 2000, i32 1}
!17 = !{i64 2149276340}
!18 = !{i64 2148219719}
!19 = !{i64 2148122081, i64 2148122113, i64 2148122142, i64 2148122176, i64 2148122207, i64 2148122230}
!20 = !{i64 2148219922}
!21 = !{i64 2157708590}
!22 = !{i64 2157708736}
!23 = !{i64 2148120498, i64 2148120530, i64 2148120559, i64 2148120593, i64 2148120624, i64 2148120647}
!24 = !{!"branch_weights", i32 1, i32 2000}
!25 = !{i64 2158303899}
!26 = !{i64 2157618983}
!27 = !{i64 2157619203}
!28 = !{i64 2148119040, i64 2148119066, i64 2148119095, i64 2148119129, i64 2148119160, i64 2148119183}
!29 = !{i64 2158313163}
!30 = !{i64 2157656370}
!31 = !{i64 2157656536}
!32 = !{i64 2158316626}
!33 = !{i64 2148976226}
!34 = !{i64 2148976443}
!35 = !{i64 2158353878}
!36 = !{i64 2157639935}
!37 = !{i64 2157640099}
!38 = !{i64 2148121397, i64 2148121423, i64 2148121452, i64 2148121486, i64 2148121517, i64 2148121540}
!39 = !{i64 2158362291}
!40 = !{i64 2157760376}
!41 = !{i64 2157760516}
!42 = !{i64 2158400983}
!43 = !{i64 2158410880}
!44 = !{i64 2157775994}
!45 = !{i64 2157776150}
!46 = !{i64 2158413744}
!47 = !{i64 2158418130}
!48 = !{i64 2158418282}
!49 = !{i64 2158418651}
!50 = !{!"branch_weights", i32 2146410443, i32 1073205}
!51 = !{!"branch_weights", i32 1073205, i32 2146410443}
!52 = !{i64 2158421515}
!53 = !{i64 2157740791}
!54 = !{i64 2157740943}
!55 = !{i64 2157724796}
!56 = !{i64 2157724964}
!57 = !{i64 2157501536}
!58 = !{i64 2157501686}
!59 = !{i64 2157570813}
!60 = !{i64 2157570951}
!61 = !{i64 2158313022}
!62 = !{i64 2157586278}
!63 = !{i64 2157586414}
!64 = !{i64 2157517958}
!65 = !{i64 2157518114}
!66 = !{i64 2157792091}
!67 = !{i64 2157792245}
!68 = !{i64 2157601713}
!69 = !{i64 2157601865}
!70 = !{i64 2157672729}
!71 = !{i64 2157672877}
!72 = !{i64 2157692703}
!73 = !{i64 2157692853}
!74 = !{i64 2157844547}
!75 = !{i64 2157844691}
!76 = !{i64 2157808302}
!77 = !{i64 2157808446}
!78 = !{i64 2157828448}
!79 = !{i64 2157828594}
