; ModuleID = '/llk/IR/net/sunrpc/auth.c_pt.bc'
source_filename = "../net/sunrpc/auth.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_rpc_machine_cred:\09\09\09\09\09"
module asm "\09.asciz \09\22rpc_machine_cred\22\09\09\09\09\09"
module asm "__kstrtabns_rpc_machine_cred:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_rpcauth_register:\09\09\09\09\09"
module asm "\09.asciz \09\22rpcauth_register\22\09\09\09\09\09"
module asm "__kstrtabns_rpcauth_register:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_rpcauth_unregister:\09\09\09\09\09"
module asm "\09.asciz \09\22rpcauth_unregister\22\09\09\09\09\09"
module asm "__kstrtabns_rpcauth_unregister:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_rpcauth_get_pseudoflavor:\09\09\09\09\09"
module asm "\09.asciz \09\22rpcauth_get_pseudoflavor\22\09\09\09\09\09"
module asm "__kstrtabns_rpcauth_get_pseudoflavor:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_rpcauth_get_gssinfo:\09\09\09\09\09"
module asm "\09.asciz \09\22rpcauth_get_gssinfo\22\09\09\09\09\09"
module asm "__kstrtabns_rpcauth_get_gssinfo:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_rpcauth_create:\09\09\09\09\09"
module asm "\09.asciz \09\22rpcauth_create\22\09\09\09\09\09"
module asm "__kstrtabns_rpcauth_create:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_rpcauth_init_credcache:\09\09\09\09\09"
module asm "\09.asciz \09\22rpcauth_init_credcache\22\09\09\09\09\09"
module asm "__kstrtabns_rpcauth_init_credcache:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_rpcauth_stringify_acceptor:\09\09\09\09\09"
module asm "\09.asciz \09\22rpcauth_stringify_acceptor\22\09\09\09\09\09"
module asm "__kstrtabns_rpcauth_stringify_acceptor:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_rpcauth_destroy_credcache:\09\09\09\09\09"
module asm "\09.asciz \09\22rpcauth_destroy_credcache\22\09\09\09\09\09"
module asm "__kstrtabns_rpcauth_destroy_credcache:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_rpcauth_lookup_credcache:\09\09\09\09\09"
module asm "\09.asciz \09\22rpcauth_lookup_credcache\22\09\09\09\09\09"
module asm "__kstrtabns_rpcauth_lookup_credcache:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_rpcauth_lookupcred:\09\09\09\09\09"
module asm "\09.asciz \09\22rpcauth_lookupcred\22\09\09\09\09\09"
module asm "__kstrtabns_rpcauth_lookupcred:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_rpcauth_init_cred:\09\09\09\09\09"
module asm "\09.asciz \09\22rpcauth_init_cred\22\09\09\09\09\09"
module asm "__kstrtabns_rpcauth_init_cred:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_put_rpccred:\09\09\09\09\09"
module asm "\09.asciz \09\22put_rpccred\22\09\09\09\09\09"
module asm "__kstrtabns_put_rpccred:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_rpcauth_wrap_req_encode:\09\09\09\09\09"
module asm "\09.asciz \09\22rpcauth_wrap_req_encode\22\09\09\09\09\09"
module asm "__kstrtabns_rpcauth_wrap_req_encode:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_rpcauth_unwrap_resp_decode:\09\09\09\09\09"
module asm "\09.asciz \09\22rpcauth_unwrap_resp_decode\22\09\09\09\09\09"
module asm "__kstrtabns_rpcauth_unwrap_resp_decode:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.cred = type { %struct.atomic_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, i32, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %union.anon.12 }
%struct.atomic_t = type { i32 }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%struct.kernel_cap_struct = type { [2 x i32] }
%union.anon.12 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.115 }
%union.anon.115 = type { ptr }
%struct.spinlock = type { %union.anon.11 }
%union.anon.11 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.shrinker = type { ptr, ptr, i32, i32, i32, %struct.list_head, ptr }
%struct.list_head = type { ptr, ptr }
%struct.rpc_authops = type { ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.task_struct = type { %struct.thread_info, i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [32 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, [36 x i8], %struct.sched_statistics, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i8, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.104, ptr, %struct.page_frag, i32, i32, i32, i64, i64, i32, i32, ptr, %struct.kmap_ctrl, i32, ptr, %struct.refcount_struct, %struct.thread_struct, [16 x i8] }
%struct.thread_info = type { i32, i32, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], [4 x i8], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.32 }
%struct.llist_node = type { ptr }
%union.anon.32 = type { i32 }
%struct.sched_entity = type { %struct.load_weight, %struct.rb_node, %struct.list_head, i32, i64, i64, i64, i64, i64, [56 x i8], %struct.sched_avg }
%struct.load_weight = type { i32, i32 }
%struct.sched_avg = type { i64, i64, i64, i32, i32, i32, i32, i32, [4 x i8], %struct.util_est, [8 x i8] }
%struct.util_est = type { i32, i32 }
%struct.sched_rt_entity = type { %struct.list_head, i32, i32, i32, i16, i16, ptr }
%struct.sched_dl_entity = type { %struct.rb_node, i64, i64, i64, i64, i64, i64, i64, i32, i8, %struct.hrtimer, %struct.hrtimer, ptr }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.sched_statistics = type {}
%struct.cpumask = type { [1 x i32] }
%struct.sched_info = type {}
%struct.plist_node = type { i32, %struct.list_head, %struct.list_head }
%struct.rb_node = type { i32, ptr, ptr }
%struct.vmacache = type { i64, [4 x ptr] }
%struct.task_rss_stat = type { i32, [4 x i32] }
%struct.restart_block = type { i32, ptr, %union.anon.33 }
%union.anon.33 = type { %struct.anon.34 }
%struct.anon.34 = type { ptr, i32, i32, i32, i64, ptr }
%struct.hlist_node = type { ptr, ptr }
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
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.tlbflush_unmap_batch = type {}
%union.anon.104 = type { %struct.callback_head }
%struct.page_frag = type { ptr, i16, i16 }
%struct.kmap_ctrl = type { i32, [16 x i32] }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
%struct.rpc_clnt = type { %struct.refcount_struct, i32, %struct.list_head, %struct.list_head, %struct.atomic_t, %struct.spinlock, ptr, ptr, i32, i32, i32, ptr, ptr, ptr, i8, ptr, ptr, %struct.atomic_t, i32, [65 x i8], %struct.rpc_pipe_dir_head, ptr, %struct.rpc_rtt, %struct.rpc_timeout, ptr, ptr, ptr, %union.anon.142, ptr, i32 }
%struct.rpc_pipe_dir_head = type { %struct.list_head, ptr }
%struct.rpc_rtt = type { i32, [5 x i32], [5 x i32], [5 x i32] }
%struct.rpc_timeout = type { i32, i32, i32, i32, i8 }
%union.anon.142 = type { %struct.work_struct }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.rpc_auth = type { i32, i32, i32, i32, i32, ptr, i32, %struct.refcount_struct, ptr }
%struct.rpc_cred_cache = type { ptr, i32, %struct.spinlock }
%struct.rpc_cred = type { %struct.hlist_node, %struct.list_head, %struct.callback_head, ptr, ptr, i32, i32, %struct.refcount_struct, ptr }
%struct.rpc_credops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.hlist_head = type { ptr }
%struct.auth_cred = type { ptr, ptr }
%struct.rpc_task = type { %struct.atomic_t, i32, %struct.list_head, ptr, ptr, i32, i32, ptr, %union.anon.135, i32, %struct.rpc_message, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64, i32, i16, i16, i16, i8 }
%union.anon.135 = type { %struct.rpc_wait }
%struct.rpc_wait = type { %struct.list_head, %struct.list_head, %struct.list_head }
%struct.rpc_message = type { ptr, ptr, ptr, ptr }
%struct.rpc_rqst = type { ptr, %struct.xdr_buf, %struct.xdr_buf, ptr, ptr, i32, i32, i32, i32, ptr, ptr, %union.anon.136, %struct.list_head, %struct.list_head, ptr, i32, ptr, i32, i32, i32, %struct.xdr_buf, i32, i32, i32, i64, i32, i32, %struct.atomic_t, i32, i64, i32, %struct.list_head, i32, %struct.list_head }
%union.anon.136 = type { %struct.rb_node }
%struct.xdr_buf = type { [1 x %struct.kvec], [1 x %struct.kvec], ptr, ptr, i32, i32, i32, i32, i32 }
%struct.kvec = type { ptr, i32 }
%struct.rpc_procinfo = type { i32, ptr, ptr, i32, i32, i32, i32, ptr }
%struct.shrink_control = type { i32, i32, i32, i32, ptr }

@machine_cred = internal global %struct.cred { %struct.atomic_t { i32 1 }, %struct.kuid_t zeroinitializer, %struct.kgid_t zeroinitializer, %struct.kuid_t zeroinitializer, %struct.kgid_t zeroinitializer, %struct.kuid_t zeroinitializer, %struct.kgid_t zeroinitializer, %struct.kuid_t zeroinitializer, %struct.kgid_t zeroinitializer, i32 0, %struct.kernel_cap_struct zeroinitializer, %struct.kernel_cap_struct zeroinitializer, %struct.kernel_cap_struct zeroinitializer, %struct.kernel_cap_struct zeroinitializer, %struct.kernel_cap_struct zeroinitializer, i8 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, %union.anon.12 zeroinitializer }, align 4
@__kstrtab_rpc_machine_cred = external dso_local constant [0 x i8], align 1
@__kstrtabns_rpc_machine_cred = external dso_local constant [0 x i8], align 1
@__ksymtab_rpc_machine_cred = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @rpc_machine_cred to i32), ptr @__kstrtab_rpc_machine_cred, ptr @__kstrtabns_rpc_machine_cred }, section "___ksymtab_gpl+rpc_machine_cred", align 4
@__param_str_auth_hashtable_size = internal constant [27 x i8] c"sunrpc.auth_hashtable_size\00", align 1
@param_ops_hashtbl_sz = internal constant %struct.kernel_param_ops { i32 0, ptr @param_set_hashtbl_sz, ptr @param_get_hashtbl_sz, ptr null }, align 4
@auth_hashbits = internal global i32 4, align 4
@__param_auth_hashtable_size = internal constant %struct.kernel_param { ptr @__param_str_auth_hashtable_size, ptr null, ptr @param_ops_hashtbl_sz, i16 420, i8 -1, i8 0, %union.anon.115 { ptr @auth_hashbits } }, section "__param", align 4
@__UNIQUE_ID_auth_hashtable_sizetype692 = internal constant [47 x i8] c"sunrpc.parmtype=auth_hashtable_size:hashtbl_sz\00", section ".modinfo", align 1
@__UNIQUE_ID_auth_hashtable_size693 = internal constant [68 x i8] c"sunrpc.parm=auth_hashtable_size:RPC credential cache hashtable size\00", section ".modinfo", align 1
@__param_str_auth_max_cred_cachesize = internal constant [31 x i8] c"sunrpc.auth_max_cred_cachesize\00", align 1
@param_ops_ulong = external dso_local constant %struct.kernel_param_ops, align 4
@auth_max_cred_cachesize = internal global i32 -1, align 4
@__param_auth_max_cred_cachesize = internal constant %struct.kernel_param { ptr @__param_str_auth_max_cred_cachesize, ptr null, ptr @param_ops_ulong, i16 420, i8 -1, i8 0, %union.anon.115 { ptr @auth_max_cred_cachesize } }, section "__param", align 4
@__UNIQUE_ID_auth_max_cred_cachesizetype694 = internal constant [46 x i8] c"sunrpc.parmtype=auth_max_cred_cachesize:ulong\00", section ".modinfo", align 1
@__UNIQUE_ID_auth_max_cred_cachesize695 = internal constant [76 x i8] c"sunrpc.parm=auth_max_cred_cachesize:RPC credential maximum total cache size\00", section ".modinfo", align 1
@auth_flavors = internal global [8 x ptr] [ptr @authnull_ops, ptr @authunix_ops, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null], align 4
@__kstrtab_rpcauth_register = external dso_local constant [0 x i8], align 1
@__kstrtabns_rpcauth_register = external dso_local constant [0 x i8], align 1
@__ksymtab_rpcauth_register = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @rpcauth_register to i32), ptr @__kstrtab_rpcauth_register, ptr @__kstrtabns_rpcauth_register }, section "___ksymtab_gpl+rpcauth_register", align 4
@__kstrtab_rpcauth_unregister = external dso_local constant [0 x i8], align 1
@__kstrtabns_rpcauth_unregister = external dso_local constant [0 x i8], align 1
@__ksymtab_rpcauth_unregister = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @rpcauth_unregister to i32), ptr @__kstrtab_rpcauth_unregister, ptr @__kstrtabns_rpcauth_unregister }, section "___ksymtab_gpl+rpcauth_unregister", align 4
@__kstrtab_rpcauth_get_pseudoflavor = external dso_local constant [0 x i8], align 1
@__kstrtabns_rpcauth_get_pseudoflavor = external dso_local constant [0 x i8], align 1
@__ksymtab_rpcauth_get_pseudoflavor = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @rpcauth_get_pseudoflavor to i32), ptr @__kstrtab_rpcauth_get_pseudoflavor, ptr @__kstrtabns_rpcauth_get_pseudoflavor }, section "___ksymtab_gpl+rpcauth_get_pseudoflavor", align 4
@__kstrtab_rpcauth_get_gssinfo = external dso_local constant [0 x i8], align 1
@__kstrtabns_rpcauth_get_gssinfo = external dso_local constant [0 x i8], align 1
@__ksymtab_rpcauth_get_gssinfo = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @rpcauth_get_gssinfo to i32), ptr @__kstrtab_rpcauth_get_gssinfo, ptr @__kstrtabns_rpcauth_get_gssinfo }, section "___ksymtab_gpl+rpcauth_get_gssinfo", align 4
@__kstrtab_rpcauth_create = external dso_local constant [0 x i8], align 1
@__kstrtabns_rpcauth_create = external dso_local constant [0 x i8], align 1
@__ksymtab_rpcauth_create = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @rpcauth_create to i32), ptr @__kstrtab_rpcauth_create, ptr @__kstrtabns_rpcauth_create }, section "___ksymtab_gpl+rpcauth_create", align 4
@__kstrtab_rpcauth_init_credcache = external dso_local constant [0 x i8], align 1
@__kstrtabns_rpcauth_init_credcache = external dso_local constant [0 x i8], align 1
@__ksymtab_rpcauth_init_credcache = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @rpcauth_init_credcache to i32), ptr @__kstrtab_rpcauth_init_credcache, ptr @__kstrtabns_rpcauth_init_credcache }, section "___ksymtab_gpl+rpcauth_init_credcache", align 4
@__kstrtab_rpcauth_stringify_acceptor = external dso_local constant [0 x i8], align 1
@__kstrtabns_rpcauth_stringify_acceptor = external dso_local constant [0 x i8], align 1
@__ksymtab_rpcauth_stringify_acceptor = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @rpcauth_stringify_acceptor to i32), ptr @__kstrtab_rpcauth_stringify_acceptor, ptr @__kstrtabns_rpcauth_stringify_acceptor }, section "___ksymtab_gpl+rpcauth_stringify_acceptor", align 4
@rpc_credcache_lock = internal global %struct.spinlock zeroinitializer, align 4
@__kstrtab_rpcauth_destroy_credcache = external dso_local constant [0 x i8], align 1
@__kstrtabns_rpcauth_destroy_credcache = external dso_local constant [0 x i8], align 1
@__ksymtab_rpcauth_destroy_credcache = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @rpcauth_destroy_credcache to i32), ptr @__kstrtab_rpcauth_destroy_credcache, ptr @__kstrtabns_rpcauth_destroy_credcache }, section "___ksymtab_gpl+rpcauth_destroy_credcache", align 4
@__kstrtab_rpcauth_lookup_credcache = external dso_local constant [0 x i8], align 1
@__kstrtabns_rpcauth_lookup_credcache = external dso_local constant [0 x i8], align 1
@__ksymtab_rpcauth_lookup_credcache = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @rpcauth_lookup_credcache to i32), ptr @__kstrtab_rpcauth_lookup_credcache, ptr @__kstrtabns_rpcauth_lookup_credcache }, section "___ksymtab_gpl+rpcauth_lookup_credcache", align 4
@__kstrtab_rpcauth_lookupcred = external dso_local constant [0 x i8], align 1
@__kstrtabns_rpcauth_lookupcred = external dso_local constant [0 x i8], align 1
@__ksymtab_rpcauth_lookupcred = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @rpcauth_lookupcred to i32), ptr @__kstrtab_rpcauth_lookupcred, ptr @__kstrtabns_rpcauth_lookupcred }, section "___ksymtab_gpl+rpcauth_lookupcred", align 4
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 64
@__kstrtab_rpcauth_init_cred = external dso_local constant [0 x i8], align 1
@__kstrtabns_rpcauth_init_cred = external dso_local constant [0 x i8], align 1
@__ksymtab_rpcauth_init_cred = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @rpcauth_init_cred to i32), ptr @__kstrtab_rpcauth_init_cred, ptr @__kstrtabns_rpcauth_init_cred }, section "___ksymtab_gpl+rpcauth_init_cred", align 4
@__kstrtab_put_rpccred = external dso_local constant [0 x i8], align 1
@__kstrtabns_put_rpccred = external dso_local constant [0 x i8], align 1
@__ksymtab_put_rpccred = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @put_rpccred to i32), ptr @__kstrtab_put_rpccred, ptr @__kstrtabns_put_rpccred }, section "___ksymtab_gpl+put_rpccred", align 4
@__kstrtab_rpcauth_wrap_req_encode = external dso_local constant [0 x i8], align 1
@__kstrtabns_rpcauth_wrap_req_encode = external dso_local constant [0 x i8], align 1
@__ksymtab_rpcauth_wrap_req_encode = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @rpcauth_wrap_req_encode to i32), ptr @__kstrtab_rpcauth_wrap_req_encode, ptr @__kstrtabns_rpcauth_wrap_req_encode }, section "___ksymtab_gpl+rpcauth_wrap_req_encode", align 4
@__kstrtab_rpcauth_unwrap_resp_decode = external dso_local constant [0 x i8], align 1
@__kstrtabns_rpcauth_unwrap_resp_decode = external dso_local constant [0 x i8], align 1
@__ksymtab_rpcauth_unwrap_resp_decode = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @rpcauth_unwrap_resp_decode to i32), ptr @__kstrtab_rpcauth_unwrap_resp_decode, ptr @__kstrtabns_rpcauth_unwrap_resp_decode }, section "___ksymtab_gpl+rpcauth_unwrap_resp_decode", align 4
@rpc_cred_shrinker = internal global %struct.shrinker { ptr @rpcauth_cache_shrink_count, ptr @rpcauth_cache_shrink_scan, i32 0, i32 2, i32 0, %struct.list_head zeroinitializer, ptr null }, align 4
@.str = private unnamed_addr constant [4 x i8] c"%u\0A\00", align 1
@authnull_ops = external dso_local constant %struct.rpc_authops, align 4
@authunix_ops = external dso_local constant %struct.rpc_authops, align 4
@.str.1 = private unnamed_addr constant [12 x i8] c"rpc-auth-%u\00", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@number_cred_unused = internal unnamed_addr global i32 0, align 4
@cred_unused = internal global %struct.list_head { ptr @cred_unused, ptr @cred_unused }, align 4
@init_task = external dso_local global %struct.task_struct, align 64
@sysctl_vfs_cache_pressure = external dso_local local_unnamed_addr global i32, align 4
@llvm.compiler.used = appending global [21 x ptr] [ptr @__UNIQUE_ID_auth_hashtable_size693, ptr @__UNIQUE_ID_auth_hashtable_sizetype692, ptr @__UNIQUE_ID_auth_max_cred_cachesize695, ptr @__UNIQUE_ID_auth_max_cred_cachesizetype694, ptr @__ksymtab_put_rpccred, ptr @__ksymtab_rpc_machine_cred, ptr @__ksymtab_rpcauth_create, ptr @__ksymtab_rpcauth_destroy_credcache, ptr @__ksymtab_rpcauth_get_gssinfo, ptr @__ksymtab_rpcauth_get_pseudoflavor, ptr @__ksymtab_rpcauth_init_cred, ptr @__ksymtab_rpcauth_init_credcache, ptr @__ksymtab_rpcauth_lookup_credcache, ptr @__ksymtab_rpcauth_lookupcred, ptr @__ksymtab_rpcauth_register, ptr @__ksymtab_rpcauth_stringify_acceptor, ptr @__ksymtab_rpcauth_unregister, ptr @__ksymtab_rpcauth_unwrap_resp_decode, ptr @__ksymtab_rpcauth_wrap_req_encode, ptr @__param_auth_hashtable_size, ptr @__param_auth_max_cred_cachesize], section "llvm.metadata"

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define dso_local nonnull ptr @rpc_machine_cred() #0 {
  ret ptr @machine_cred
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @rpcauth_register(ptr noundef %0) #1 {
  %2 = getelementptr inbounds %struct.rpc_authops, ptr %0, i32 0, i32 1
  %3 = load i32, ptr %2, align 4
  %4 = icmp ugt i32 %3, 7
  br i1 %4, label %19, label %5

5:                                                ; preds = %1
  %6 = getelementptr [8 x ptr], ptr @auth_flavors, i32 0, i32 %3
  tail call void asm sideeffect "dmb ish", "~{memory}"() #15, !srcloc !8
  %7 = ptrtoint ptr %0 to i32
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %6) #15, !srcloc !9
  br label %8

8:                                                ; preds = %8, %5
  %9 = tail call { i32, i32 } asm sideeffect "@ __cmpxchg4\0A\09ldrex\09$1, [$2]\0A\09mov\09$0, #0\0A\09teq\09$1, $3\0A\09strexeq $0, $4, [$2]\0A", "=&r,=&r,r,Ir,r,~{memory},~{cc}"(ptr %6, i32 0, i32 %7) #15, !srcloc !10
  %10 = extractvalue { i32, i32 } %9, 0
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %8

12:                                               ; preds = %8
  %13 = extractvalue { i32, i32 } %9, 1
  tail call void asm sideeffect "dmb ish", "~{memory}"() #15, !srcloc !11
  %14 = icmp ne i32 %13, 0
  %15 = inttoptr i32 %13 to ptr
  %16 = icmp ne ptr %15, %0
  %17 = and i1 %14, %16
  %18 = sext i1 %17 to i32
  br label %19

19:                                               ; preds = %12, %1
  %20 = phi i32 [ -22, %1 ], [ %18, %12 ]
  ret i32 %20
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @rpcauth_unregister(ptr noundef %0) #1 {
  %2 = getelementptr inbounds %struct.rpc_authops, ptr %0, i32 0, i32 1
  %3 = load i32, ptr %2, align 4
  %4 = icmp ugt i32 %3, 7
  br i1 %4, label %19, label %5

5:                                                ; preds = %1
  %6 = getelementptr [8 x ptr], ptr @auth_flavors, i32 0, i32 %3
  tail call void asm sideeffect "dmb ish", "~{memory}"() #15, !srcloc !12
  %7 = ptrtoint ptr %0 to i32
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %6) #15, !srcloc !9
  br label %8

8:                                                ; preds = %8, %5
  %9 = tail call { i32, i32 } asm sideeffect "@ __cmpxchg4\0A\09ldrex\09$1, [$2]\0A\09mov\09$0, #0\0A\09teq\09$1, $3\0A\09strexeq $0, $4, [$2]\0A", "=&r,=&r,r,Ir,r,~{memory},~{cc}"(ptr %6, i32 %7, i32 0) #15, !srcloc !10
  %10 = extractvalue { i32, i32 } %9, 0
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %8

12:                                               ; preds = %8
  %13 = extractvalue { i32, i32 } %9, 1
  %14 = inttoptr i32 %13 to ptr
  tail call void asm sideeffect "dmb ish", "~{memory}"() #15, !srcloc !13
  %15 = icmp ne ptr %14, %0
  %16 = icmp ne i32 %13, 0
  %17 = and i1 %16, %15
  %18 = sext i1 %17 to i32
  br label %19

19:                                               ; preds = %12, %1
  %20 = phi i32 [ -22, %1 ], [ %18, %12 ]
  ret i32 %20
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @rpcauth_get_pseudoflavor(i32 noundef %0, ptr noundef %1) #1 {
  %3 = icmp ugt i32 %0, 7
  br i1 %3, label %26, label %4

4:                                                ; preds = %2
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !14
  %5 = getelementptr [8 x ptr], ptr @auth_flavors, i32 0, i32 %0
  %6 = load volatile ptr, ptr %5, align 4
  %7 = icmp eq ptr %6, null
  br i1 %7, label %8, label %12

8:                                                ; preds = %4
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !15
  %9 = tail call i32 (i1, ptr, ...) @__request_module(i1 noundef zeroext true, ptr noundef nonnull @.str.1, i32 noundef %0) #15
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !14
  %10 = load volatile ptr, ptr %5, align 4
  %11 = icmp eq ptr %10, null
  br i1 %11, label %16, label %12

12:                                               ; preds = %8, %4
  %13 = phi ptr [ %10, %8 ], [ %6, %4 ]
  %14 = load ptr, ptr %13, align 4
  %15 = tail call zeroext i1 @try_module_get(ptr noundef %14) #15
  br i1 %15, label %17, label %16

16:                                               ; preds = %12, %8
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !15
  br label %26

17:                                               ; preds = %12
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !15
  %18 = getelementptr inbounds %struct.rpc_authops, ptr %13, i32 0, i32 8
  %19 = load ptr, ptr %18, align 4
  %20 = icmp eq ptr %19, null
  br i1 %20, label %23, label %21

21:                                               ; preds = %17
  %22 = tail call i32 %19(ptr noundef %1) #15
  br label %23

23:                                               ; preds = %21, %17
  %24 = phi i32 [ %22, %21 ], [ %0, %17 ]
  %25 = load ptr, ptr %13, align 4
  tail call void @module_put(ptr noundef %25) #15
  br label %26

26:                                               ; preds = %23, %16, %2
  %27 = phi i32 [ %24, %23 ], [ 8, %16 ], [ 8, %2 ]
  ret i32 %27
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @rpcauth_get_gssinfo(i32 noundef %0, ptr noundef %1) #1 {
  %3 = icmp ugt i32 %0, 8
  %4 = select i1 %3, i32 6, i32 %0
  %5 = icmp ugt i32 %4, 7
  br i1 %5, label %28, label %6

6:                                                ; preds = %2
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !14
  %7 = getelementptr [8 x ptr], ptr @auth_flavors, i32 0, i32 %4
  %8 = load volatile ptr, ptr %7, align 4
  %9 = icmp eq ptr %8, null
  br i1 %9, label %10, label %14

10:                                               ; preds = %6
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !15
  %11 = tail call i32 (i1, ptr, ...) @__request_module(i1 noundef zeroext true, ptr noundef nonnull @.str.1, i32 noundef %4) #15
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !14
  %12 = load volatile ptr, ptr %7, align 4
  %13 = icmp eq ptr %12, null
  br i1 %13, label %18, label %14

14:                                               ; preds = %10, %6
  %15 = phi ptr [ %12, %10 ], [ %8, %6 ]
  %16 = load ptr, ptr %15, align 4
  %17 = tail call zeroext i1 @try_module_get(ptr noundef %16) #15
  br i1 %17, label %19, label %18

18:                                               ; preds = %14, %10
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !15
  br label %28

19:                                               ; preds = %14
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !15
  %20 = getelementptr inbounds %struct.rpc_authops, ptr %15, i32 0, i32 9
  %21 = load ptr, ptr %20, align 4
  %22 = icmp eq ptr %21, null
  br i1 %22, label %25, label %23

23:                                               ; preds = %19
  %24 = tail call i32 %21(i32 noundef %0, ptr noundef %1) #15
  br label %25

25:                                               ; preds = %23, %19
  %26 = phi i32 [ %24, %23 ], [ -2, %19 ]
  %27 = load ptr, ptr %15, align 4
  tail call void @module_put(ptr noundef %27) #15
  br label %28

28:                                               ; preds = %25, %18, %2
  %29 = phi i32 [ %26, %25 ], [ -2, %18 ], [ -2, %2 ]
  ret i32 %29
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @rpcauth_create(ptr noundef %0, ptr noundef %1) #1 {
  %3 = load i32, ptr %0, align 4
  %4 = icmp ugt i32 %3, 8
  %5 = select i1 %4, i32 6, i32 %3
  %6 = icmp ugt i32 %5, 7
  br i1 %6, label %44, label %7

7:                                                ; preds = %2
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !14
  %8 = getelementptr [8 x ptr], ptr @auth_flavors, i32 0, i32 %5
  %9 = load volatile ptr, ptr %8, align 4
  %10 = icmp eq ptr %9, null
  br i1 %10, label %11, label %15

11:                                               ; preds = %7
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !15
  %12 = tail call i32 (i1, ptr, ...) @__request_module(i1 noundef zeroext true, ptr noundef nonnull @.str.1, i32 noundef %5) #15
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !14
  %13 = load volatile ptr, ptr %8, align 4
  %14 = icmp eq ptr %13, null
  br i1 %14, label %19, label %15

15:                                               ; preds = %11, %7
  %16 = phi ptr [ %13, %11 ], [ %9, %7 ]
  %17 = load ptr, ptr %16, align 4
  %18 = tail call zeroext i1 @try_module_get(ptr noundef %17) #15
  br i1 %18, label %20, label %19

19:                                               ; preds = %15, %11
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !15
  br label %44

20:                                               ; preds = %15
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !15
  %21 = getelementptr inbounds %struct.rpc_authops, ptr %16, i32 0, i32 3
  %22 = load ptr, ptr %21, align 4
  %23 = tail call ptr %22(ptr noundef %0, ptr noundef %1) #15
  %24 = load ptr, ptr %16, align 4
  tail call void @module_put(ptr noundef %24) #15
  %25 = icmp ugt ptr %23, inttoptr (i32 -4096 to ptr)
  br i1 %25, label %44, label %26

26:                                               ; preds = %20
  %27 = getelementptr inbounds %struct.rpc_clnt, ptr %1, i32 0, i32 11
  %28 = load ptr, ptr %27, align 4
  %29 = icmp eq ptr %28, null
  br i1 %29, label %43, label %30

30:                                               ; preds = %26
  %31 = getelementptr inbounds %struct.rpc_auth, ptr %28, i32 0, i32 7
  tail call void asm sideeffect "dmb ish", "~{memory}"() #15, !srcloc !16
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %31) #15, !srcloc !9
  %32 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %31, ptr %31, i32 1, ptr elementtype(i32) %31) #15, !srcloc !17
  %33 = extractvalue { i32, i32, i32 } %32, 0
  %34 = icmp eq i32 %33, 1
  br i1 %34, label %38, label %35

35:                                               ; preds = %30
  %36 = icmp sgt i32 %33, 0
  br i1 %36, label %43, label %37, !prof !18

37:                                               ; preds = %35
  tail call void @refcount_warn_saturate(ptr noundef %31, i32 noundef 3) #15
  br label %43

38:                                               ; preds = %30
  tail call void asm sideeffect "dmb ish", "~{memory}"() #15, !srcloc !19
  %39 = getelementptr inbounds %struct.rpc_auth, ptr %28, i32 0, i32 5
  %40 = load ptr, ptr %39, align 4
  %41 = getelementptr inbounds %struct.rpc_authops, ptr %40, i32 0, i32 4
  %42 = load ptr, ptr %41, align 4
  tail call void %42(ptr noundef nonnull %28) #15
  br label %43

43:                                               ; preds = %38, %37, %35, %26
  store ptr %23, ptr %27, align 4
  br label %44

44:                                               ; preds = %43, %20, %19, %2
  %45 = phi ptr [ %23, %20 ], [ %23, %43 ], [ inttoptr (i32 -22 to ptr), %19 ], [ inttoptr (i32 -22 to ptr), %2 ]
  ret ptr %45
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @rpcauth_release(ptr noundef %0) local_unnamed_addr #1 {
  %2 = getelementptr inbounds %struct.rpc_auth, ptr %0, i32 0, i32 7
  tail call void asm sideeffect "dmb ish", "~{memory}"() #15, !srcloc !16
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %2) #15, !srcloc !9
  %3 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %2, ptr %2, i32 1, ptr elementtype(i32) %2) #15, !srcloc !17
  %4 = extractvalue { i32, i32, i32 } %3, 0
  %5 = icmp eq i32 %4, 1
  br i1 %5, label %9, label %6

6:                                                ; preds = %1
  %7 = icmp sgt i32 %4, 0
  br i1 %7, label %14, label %8, !prof !18

8:                                                ; preds = %6
  tail call void @refcount_warn_saturate(ptr noundef %2, i32 noundef 3) #15
  br label %14

9:                                                ; preds = %1
  tail call void asm sideeffect "dmb ish", "~{memory}"() #15, !srcloc !19
  %10 = getelementptr inbounds %struct.rpc_auth, ptr %0, i32 0, i32 5
  %11 = load ptr, ptr %10, align 4
  %12 = getelementptr inbounds %struct.rpc_authops, ptr %11, i32 0, i32 4
  %13 = load ptr, ptr %12, align 4
  tail call void %13(ptr noundef %0) #15
  br label %14

14:                                               ; preds = %9, %8, %6
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc zeroext i1 @refcount_dec_and_test(ptr noundef %0) unnamed_addr #3 {
  tail call void asm sideeffect "dmb ish", "~{memory}"() #15, !srcloc !16
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %0) #15, !srcloc !9
  %2 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %0, ptr %0, i32 1, ptr elementtype(i32) %0) #15, !srcloc !17
  %3 = extractvalue { i32, i32, i32 } %2, 0
  %4 = icmp eq i32 %3, 1
  br i1 %4, label %5, label %6

5:                                                ; preds = %1
  tail call void asm sideeffect "dmb ish", "~{memory}"() #15, !srcloc !19
  br label %9

6:                                                ; preds = %1
  %7 = icmp sgt i32 %3, 0
  br i1 %7, label %9, label %8, !prof !18

8:                                                ; preds = %6
  tail call void @refcount_warn_saturate(ptr noundef %0, i32 noundef 3) #15
  br label %9

9:                                                ; preds = %8, %6, %5
  ret i1 %4
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @rpcauth_init_credcache(ptr nocapture noundef writeonly %0) #1 {
  %2 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %3 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %2, i32 noundef 3264, i32 noundef 12) #16
  %4 = icmp eq ptr %3, null
  br i1 %4, label %20, label %5

5:                                                ; preds = %1
  %6 = load i32, ptr @auth_hashbits, align 4
  %7 = getelementptr inbounds %struct.rpc_cred_cache, ptr %3, i32 0, i32 1
  store i32 %6, ptr %7, align 4
  %8 = shl nuw i32 1, %6
  %9 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %8, i32 4) #15
  %10 = extractvalue { i32, i1 } %9, 1
  br i1 %10, label %11, label %12, !prof !20

11:                                               ; preds = %5
  store ptr null, ptr %3, align 8
  br label %19

12:                                               ; preds = %5
  %13 = extractvalue { i32, i1 } %9, 0
  %14 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %13, i32 noundef 3520) #17
  store ptr %14, ptr %3, align 8
  %15 = icmp eq ptr %14, null
  br i1 %15, label %19, label %16

16:                                               ; preds = %12
  %17 = getelementptr inbounds %struct.rpc_cred_cache, ptr %3, i32 0, i32 2
  store i32 0, ptr %17, align 8
  %18 = getelementptr inbounds %struct.rpc_auth, ptr %0, i32 0, i32 8
  store ptr %3, ptr %18, align 4
  br label %20

19:                                               ; preds = %12, %11
  tail call void @kfree(ptr noundef nonnull %3) #15
  br label %20

20:                                               ; preds = %19, %16, %1
  %21 = phi i32 [ 0, %16 ], [ -12, %1 ], [ -12, %19 ]
  ret i32 %21
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @rpcauth_stringify_acceptor(ptr noundef %0) #1 {
  %2 = getelementptr inbounds %struct.rpc_cred, ptr %0, i32 0, i32 4
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.rpc_credops, ptr %3, i32 0, i32 10
  %5 = load ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %9, label %7

7:                                                ; preds = %1
  %8 = tail call ptr %5(ptr noundef %0) #15
  br label %9

9:                                                ; preds = %7, %1
  %10 = phi ptr [ %8, %7 ], [ null, %1 ]
  ret ptr %10
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @rpcauth_clear_credcache(ptr noundef %0) local_unnamed_addr #1 {
  %2 = alloca %struct.list_head, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #15
  store ptr %2, ptr %2, align 8
  %3 = getelementptr inbounds %struct.list_head, ptr %2, i32 0, i32 1
  store ptr %2, ptr %3, align 4
  %4 = getelementptr inbounds %struct.rpc_cred_cache, ptr %0, i32 0, i32 1
  %5 = load i32, ptr %4, align 4
  call void @_raw_spin_lock(ptr noundef nonnull @rpc_credcache_lock) #15
  %6 = getelementptr inbounds %struct.rpc_cred_cache, ptr %0, i32 0, i32 2
  call void @_raw_spin_lock(ptr noundef %6) #15
  br label %7

7:                                                ; preds = %41, %1
  %8 = phi i32 [ 0, %1 ], [ %42, %41 ]
  %9 = load ptr, ptr %0, align 4
  %10 = getelementptr %struct.hlist_head, ptr %9, i32 %8
  %11 = load volatile ptr, ptr %10, align 4
  %12 = icmp eq ptr %11, null
  br i1 %12, label %41, label %13

13:                                               ; preds = %36, %7
  %14 = phi ptr [ %39, %36 ], [ %11, %7 ]
  %15 = getelementptr inbounds %struct.rpc_cred, ptr %14, i32 0, i32 6
  %16 = call i32 @_test_and_clear_bit(i32 noundef 2, ptr noundef %15) #15
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %26, label %18

18:                                               ; preds = %13
  %19 = load ptr, ptr %14, align 4
  %20 = getelementptr inbounds %struct.hlist_node, ptr %14, i32 0, i32 1
  %21 = load ptr, ptr %20, align 4
  store volatile ptr %19, ptr %21, align 4
  %22 = icmp eq ptr %19, null
  br i1 %22, label %25, label %23

23:                                               ; preds = %18
  %24 = getelementptr inbounds %struct.hlist_node, ptr %19, i32 0, i32 1
  store volatile ptr %21, ptr %24, align 4
  br label %25

25:                                               ; preds = %23, %18
  store volatile ptr inttoptr (i32 290 to ptr), ptr %20, align 4
  br label %26

26:                                               ; preds = %25, %13
  %27 = getelementptr inbounds %struct.rpc_cred, ptr %14, i32 0, i32 1
  %28 = load volatile ptr, ptr %27, align 4
  %29 = icmp eq ptr %28, %27
  br i1 %29, label %36, label %30

30:                                               ; preds = %26
  %31 = load i32, ptr @number_cred_unused, align 4
  %32 = add i32 %31, -1
  store i32 %32, ptr @number_cred_unused, align 4
  %33 = getelementptr inbounds %struct.rpc_cred, ptr %14, i32 0, i32 1, i32 1
  %34 = load ptr, ptr %33, align 4
  %35 = getelementptr inbounds %struct.list_head, ptr %28, i32 0, i32 1
  store ptr %34, ptr %35, align 4
  store volatile ptr %28, ptr %34, align 4
  store volatile ptr %27, ptr %27, align 4
  br label %36

36:                                               ; preds = %30, %26
  %37 = load ptr, ptr %3, align 4
  store ptr %27, ptr %3, align 4
  store ptr %2, ptr %27, align 4
  %38 = getelementptr inbounds %struct.rpc_cred, ptr %14, i32 0, i32 1, i32 1
  store ptr %37, ptr %38, align 4
  store volatile ptr %27, ptr %37, align 4
  %39 = load volatile ptr, ptr %10, align 4
  %40 = icmp eq ptr %39, null
  br i1 %40, label %41, label %13

41:                                               ; preds = %36, %7
  %42 = add i32 %8, 1
  %43 = lshr i32 %42, %5
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %7, label %45

45:                                               ; preds = %41
  call void asm sideeffect "dmb ish", "~{memory}"() #15, !srcloc !21
  %46 = load i16, ptr %6, align 4
  %47 = add i16 %46, 1
  store i16 %47, ptr %6, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #15, !srcloc !22
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #15, !srcloc !23
  call void asm sideeffect "", "~{memory}"() #15, !srcloc !24
  call void asm sideeffect "dmb ish", "~{memory}"() #15, !srcloc !21
  %48 = load i16, ptr @rpc_credcache_lock, align 4
  %49 = add i16 %48, 1
  store i16 %49, ptr @rpc_credcache_lock, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #15, !srcloc !22
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #15, !srcloc !23
  call void asm sideeffect "", "~{memory}"() #15, !srcloc !24
  %50 = load volatile ptr, ptr %2, align 8
  %51 = icmp eq ptr %50, %2
  br i1 %51, label %61, label %52

52:                                               ; preds = %52, %45
  %53 = phi ptr [ %59, %52 ], [ %50, %45 ]
  %54 = getelementptr i8, ptr %53, i32 -8
  %55 = getelementptr inbounds %struct.list_head, ptr %53, i32 0, i32 1
  %56 = load ptr, ptr %55, align 4
  %57 = load ptr, ptr %53, align 4
  %58 = getelementptr inbounds %struct.list_head, ptr %57, i32 0, i32 1
  store ptr %56, ptr %58, align 4
  store volatile ptr %57, ptr %56, align 4
  store volatile ptr %53, ptr %53, align 4
  store ptr %53, ptr %55, align 4
  call void @put_rpccred(ptr noundef %54) #15
  %59 = load volatile ptr, ptr %2, align 8
  %60 = icmp eq ptr %59, %2
  br i1 %60, label %61, label %52

61:                                               ; preds = %52, %45
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #15
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @rpcauth_destroy_credcache(ptr nocapture noundef %0) #1 {
  %2 = getelementptr inbounds %struct.rpc_auth, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %7, label %5

5:                                                ; preds = %1
  store ptr null, ptr %2, align 4
  tail call void @rpcauth_clear_credcache(ptr noundef nonnull %3)
  %6 = load ptr, ptr %3, align 4
  tail call void @kfree(ptr noundef %6) #15
  tail call void @kfree(ptr noundef nonnull %3) #15
  br label %7

7:                                                ; preds = %5, %1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @rpcauth_lookup_credcache(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) #1 {
  %5 = alloca %struct.list_head, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #15
  store ptr %5, ptr %5, align 8
  %6 = getelementptr inbounds %struct.list_head, ptr %5, i32 0, i32 1
  store ptr %5, ptr %6, align 4
  %7 = getelementptr inbounds %struct.rpc_auth, ptr %0, i32 0, i32 8
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.rpc_auth, ptr %0, i32 0, i32 5
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr inbounds %struct.rpc_authops, ptr %10, i32 0, i32 5
  %12 = load ptr, ptr %11, align 4
  %13 = getelementptr inbounds %struct.rpc_cred_cache, ptr %8, i32 0, i32 1
  %14 = load i32, ptr %13, align 4
  %15 = call i32 %12(ptr noundef %1, i32 noundef %14) #15
  call void asm sideeffect "", "~{memory}"() #15, !srcloc !14
  %16 = load ptr, ptr %8, align 4
  %17 = getelementptr %struct.hlist_head, ptr %16, i32 %15
  %18 = load volatile ptr, ptr %17, align 4
  %19 = icmp eq ptr %18, null
  br i1 %19, label %56, label %20

20:                                               ; preds = %52, %4
  %21 = phi ptr [ %53, %52 ], [ %18, %4 ]
  %22 = getelementptr inbounds %struct.rpc_cred, ptr %21, i32 0, i32 4
  %23 = load ptr, ptr %22, align 4
  %24 = getelementptr inbounds %struct.rpc_credops, ptr %23, i32 0, i32 3
  %25 = load ptr, ptr %24, align 4
  %26 = call i32 %25(ptr noundef %1, ptr noundef nonnull %21, i32 noundef %2) #15
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %52, label %28

28:                                               ; preds = %20
  %29 = getelementptr inbounds %struct.rpc_cred, ptr %21, i32 0, i32 7
  %30 = load volatile i32, ptr %29, align 4
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %44, label %32

32:                                               ; preds = %42, %28
  %33 = phi i32 [ %40, %42 ], [ %30, %28 ]
  %34 = add i32 %33, 1
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %29) #15, !srcloc !9
  br label %35

35:                                               ; preds = %35, %32
  %36 = call { i32, i32 } asm sideeffect "@ atomic_cmpxchg\0Aldrex\09$1, [$3]\0Amov\09$0, #0\0Ateq\09$1, $4\0Astrexeq $0, $5, [$3]\0A", "=&r,=&r,=*Qo,r,Ir,r,*Qo,~{cc}"(ptr elementtype(i32) %29, ptr %29, i32 %33, i32 %34, ptr elementtype(i32) %29) #15, !srcloc !25
  %37 = extractvalue { i32, i32 } %36, 0
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %39, label %35

39:                                               ; preds = %35
  %40 = extractvalue { i32, i32 } %36, 1
  %41 = icmp eq i32 %40, %33
  br i1 %41, label %44, label %42, !prof !18

42:                                               ; preds = %39
  %43 = icmp eq i32 %40, 0
  br i1 %43, label %44, label %32

44:                                               ; preds = %42, %39, %28
  %45 = phi i32 [ 0, %28 ], [ %33, %39 ], [ 0, %42 ]
  %46 = add i32 %45, 1
  %47 = or i32 %46, %45
  %48 = icmp sgt i32 %47, -1
  br i1 %48, label %50, label %49, !prof !18

49:                                               ; preds = %44
  call void @refcount_warn_saturate(ptr noundef %29, i32 noundef 0) #15
  br label %50

50:                                               ; preds = %49, %44
  %51 = icmp eq i32 %45, 0
  br i1 %51, label %52, label %55

52:                                               ; preds = %50, %20
  %53 = load volatile ptr, ptr %21, align 4
  %54 = icmp eq ptr %53, null
  br i1 %54, label %56, label %20

55:                                               ; preds = %50
  call void asm sideeffect "", "~{memory}"() #15, !srcloc !15
  br label %138

56:                                               ; preds = %52, %4
  call void asm sideeffect "", "~{memory}"() #15, !srcloc !15
  %57 = load ptr, ptr %9, align 4
  %58 = getelementptr inbounds %struct.rpc_authops, ptr %57, i32 0, i32 7
  %59 = load ptr, ptr %58, align 4
  %60 = call ptr %59(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) #15
  %61 = icmp ugt ptr %60, inttoptr (i32 -4096 to ptr)
  br i1 %61, label %171, label %62

62:                                               ; preds = %56
  %63 = getelementptr inbounds %struct.rpc_cred_cache, ptr %8, i32 0, i32 2
  call void @_raw_spin_lock(ptr noundef %63) #15
  %64 = load ptr, ptr %8, align 4
  %65 = getelementptr %struct.hlist_head, ptr %64, i32 %15
  %66 = load ptr, ptr %65, align 4
  %67 = icmp eq ptr %66, null
  br i1 %67, label %103, label %68

68:                                               ; preds = %100, %62
  %69 = phi ptr [ %101, %100 ], [ %66, %62 ]
  %70 = getelementptr inbounds %struct.rpc_cred, ptr %69, i32 0, i32 4
  %71 = load ptr, ptr %70, align 4
  %72 = getelementptr inbounds %struct.rpc_credops, ptr %71, i32 0, i32 3
  %73 = load ptr, ptr %72, align 4
  %74 = call i32 %73(ptr noundef %1, ptr noundef nonnull %69, i32 noundef %2) #15
  %75 = icmp eq i32 %74, 0
  br i1 %75, label %100, label %76

76:                                               ; preds = %68
  %77 = getelementptr inbounds %struct.rpc_cred, ptr %69, i32 0, i32 7
  %78 = load volatile i32, ptr %77, align 4
  %79 = icmp eq i32 %78, 0
  br i1 %79, label %92, label %80

80:                                               ; preds = %90, %76
  %81 = phi i32 [ %88, %90 ], [ %78, %76 ]
  %82 = add i32 %81, 1
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %77) #15, !srcloc !9
  br label %83

83:                                               ; preds = %83, %80
  %84 = call { i32, i32 } asm sideeffect "@ atomic_cmpxchg\0Aldrex\09$1, [$3]\0Amov\09$0, #0\0Ateq\09$1, $4\0Astrexeq $0, $5, [$3]\0A", "=&r,=&r,=*Qo,r,Ir,r,*Qo,~{cc}"(ptr elementtype(i32) %77, ptr %77, i32 %81, i32 %82, ptr elementtype(i32) %77) #15, !srcloc !25
  %85 = extractvalue { i32, i32 } %84, 0
  %86 = icmp eq i32 %85, 0
  br i1 %86, label %87, label %83

87:                                               ; preds = %83
  %88 = extractvalue { i32, i32 } %84, 1
  %89 = icmp eq i32 %88, %81
  br i1 %89, label %92, label %90, !prof !18

90:                                               ; preds = %87
  %91 = icmp eq i32 %88, 0
  br i1 %91, label %92, label %80

92:                                               ; preds = %90, %87, %76
  %93 = phi i32 [ 0, %76 ], [ %81, %87 ], [ 0, %90 ]
  %94 = add i32 %93, 1
  %95 = or i32 %94, %93
  %96 = icmp sgt i32 %95, -1
  br i1 %96, label %98, label %97, !prof !18

97:                                               ; preds = %92
  call void @refcount_warn_saturate(ptr noundef %77, i32 noundef 0) #15
  br label %98

98:                                               ; preds = %97, %92
  %99 = icmp eq i32 %93, 0
  br i1 %99, label %100, label %123

100:                                              ; preds = %98, %68
  %101 = load ptr, ptr %69, align 4
  %102 = icmp eq ptr %101, null
  br i1 %102, label %103, label %68

103:                                              ; preds = %100, %62
  %104 = getelementptr inbounds %struct.rpc_cred, ptr %60, i32 0, i32 6
  call void @_set_bit(i32 noundef 2, ptr noundef %104) #15
  %105 = getelementptr inbounds %struct.rpc_cred, ptr %60, i32 0, i32 7
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %105) #15, !srcloc !9
  %106 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %105, ptr %105, i32 1, ptr elementtype(i32) %105) #15, !srcloc !26
  %107 = extractvalue { i32, i32, i32 } %106, 0
  %108 = icmp eq i32 %107, 0
  br i1 %108, label %113, label %109, !prof !20

109:                                              ; preds = %103
  %110 = add i32 %107, 1
  %111 = or i32 %110, %107
  %112 = icmp sgt i32 %111, -1
  br i1 %112, label %115, label %113, !prof !18

113:                                              ; preds = %109, %103
  %114 = phi i32 [ 2, %103 ], [ 1, %109 ]
  call void @refcount_warn_saturate(ptr noundef %105, i32 noundef %114) #15
  br label %115

115:                                              ; preds = %113, %109
  %116 = load ptr, ptr %8, align 4
  %117 = getelementptr %struct.hlist_head, ptr %116, i32 %15
  %118 = load ptr, ptr %117, align 4
  store ptr %118, ptr %60, align 4
  %119 = getelementptr inbounds %struct.hlist_node, ptr %60, i32 0, i32 1
  store volatile ptr %117, ptr %119, align 4
  call void asm sideeffect "dmb ish", "~{memory}"() #15, !srcloc !27
  store volatile ptr %60, ptr %117, align 4
  %120 = icmp eq ptr %118, null
  br i1 %120, label %127, label %121

121:                                              ; preds = %115
  %122 = getelementptr inbounds %struct.hlist_node, ptr %118, i32 0, i32 1
  store volatile ptr %60, ptr %122, align 4
  br label %127

123:                                              ; preds = %98
  %124 = getelementptr inbounds %struct.rpc_cred, ptr %60, i32 0, i32 1
  %125 = load ptr, ptr %6, align 4
  store ptr %124, ptr %6, align 4
  store ptr %5, ptr %124, align 4
  %126 = getelementptr inbounds %struct.rpc_cred, ptr %60, i32 0, i32 1, i32 1
  store ptr %125, ptr %126, align 4
  store volatile ptr %124, ptr %125, align 4
  br label %127

127:                                              ; preds = %123, %121, %115
  %128 = phi ptr [ %69, %123 ], [ %60, %115 ], [ %60, %121 ]
  call void asm sideeffect "dmb ish", "~{memory}"() #15, !srcloc !21
  %129 = load i16, ptr %63, align 4
  %130 = add i16 %129, 1
  store i16 %130, ptr %63, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #15, !srcloc !22
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #15, !srcloc !23
  call void asm sideeffect "", "~{memory}"() #15, !srcloc !24
  %131 = load i32, ptr @number_cred_unused, align 4
  %132 = load i32, ptr @auth_max_cred_cachesize, align 4
  %133 = icmp ugt i32 %131, %132
  br i1 %133, label %134, label %138

134:                                              ; preds = %127
  %135 = sub i32 %131, %132
  %136 = call i32 @llvm.umin.i32(i32 %135, i32 100) #15
  %137 = call fastcc i32 @rpcauth_cache_do_shrink(i32 noundef %136) #15
  br label %138

138:                                              ; preds = %134, %127, %55
  %139 = phi ptr [ %21, %55 ], [ %128, %127 ], [ %128, %134 ]
  %140 = getelementptr inbounds %struct.rpc_cred, ptr %139, i32 0, i32 6
  %141 = load volatile i32, ptr %140, align 4
  %142 = and i32 %141, 1
  %143 = icmp eq i32 %142, 0
  br i1 %143, label %158, label %144

144:                                              ; preds = %138
  %145 = getelementptr inbounds %struct.rpc_cred, ptr %139, i32 0, i32 4
  %146 = load ptr, ptr %145, align 4
  %147 = getelementptr inbounds %struct.rpc_credops, ptr %146, i32 0, i32 1
  %148 = load ptr, ptr %147, align 4
  %149 = icmp ne ptr %148, null
  %150 = and i32 %2, 1
  %151 = icmp eq i32 %150, 0
  %152 = and i1 %151, %149
  br i1 %152, label %153, label %158

153:                                              ; preds = %144
  %154 = call i32 %148(ptr noundef %0, ptr noundef %139) #15
  %155 = icmp slt i32 %154, 0
  br i1 %155, label %156, label %158

156:                                              ; preds = %153
  call void @put_rpccred(ptr noundef %139)
  %157 = inttoptr i32 %154 to ptr
  br label %158

158:                                              ; preds = %156, %153, %144, %138
  %159 = phi ptr [ %139, %144 ], [ %139, %138 ], [ %157, %156 ], [ %139, %153 ]
  %160 = load volatile ptr, ptr %5, align 8
  %161 = icmp eq ptr %160, %5
  br i1 %161, label %171, label %162

162:                                              ; preds = %162, %158
  %163 = phi ptr [ %169, %162 ], [ %160, %158 ]
  %164 = getelementptr i8, ptr %163, i32 -8
  %165 = getelementptr inbounds %struct.list_head, ptr %163, i32 0, i32 1
  %166 = load ptr, ptr %165, align 4
  %167 = load ptr, ptr %163, align 4
  %168 = getelementptr inbounds %struct.list_head, ptr %167, i32 0, i32 1
  store ptr %166, ptr %168, align 4
  store volatile ptr %167, ptr %166, align 4
  store volatile ptr %163, ptr %163, align 4
  store ptr %163, ptr %165, align 4
  call void @put_rpccred(ptr noundef %164) #15
  %169 = load volatile ptr, ptr %5, align 8
  %170 = icmp eq ptr %169, %5
  br i1 %170, label %171, label %162

171:                                              ; preds = %162, %158, %56
  %172 = phi ptr [ %60, %56 ], [ %159, %158 ], [ %159, %162 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #15
  ret ptr %172
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @put_rpccred(ptr noundef %0) #1 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %78, label %3

3:                                                ; preds = %1
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !14
  %4 = getelementptr inbounds %struct.rpc_cred, ptr %0, i32 0, i32 7
  tail call void asm sideeffect "dmb ish", "~{memory}"() #15, !srcloc !16
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %4) #15, !srcloc !9
  %5 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %4, ptr %4, i32 1, ptr elementtype(i32) %4) #15, !srcloc !17
  %6 = extractvalue { i32, i32, i32 } %5, 0
  %7 = icmp eq i32 %6, 1
  br i1 %7, label %11, label %8

8:                                                ; preds = %3
  %9 = icmp sgt i32 %6, 0
  br i1 %9, label %12, label %10, !prof !18

10:                                               ; preds = %8
  tail call void @refcount_warn_saturate(ptr noundef %4, i32 noundef 3) #15
  br label %12

11:                                               ; preds = %3
  tail call void asm sideeffect "dmb ish", "~{memory}"() #15, !srcloc !19
  br label %73

12:                                               ; preds = %10, %8
  %13 = load volatile i32, ptr %4, align 4
  %14 = icmp eq i32 %13, 1
  br i1 %14, label %15, label %72

15:                                               ; preds = %12
  %16 = getelementptr inbounds %struct.rpc_cred, ptr %0, i32 0, i32 6
  %17 = load volatile i32, ptr %16, align 4
  %18 = and i32 %17, 4
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %72, label %20

20:                                               ; preds = %15
  %21 = load volatile i32, ptr %16, align 4
  %22 = and i32 %21, 2
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %46, label %24

24:                                               ; preds = %20
  %25 = load volatile i32, ptr @jiffies, align 64
  %26 = getelementptr inbounds %struct.rpc_cred, ptr %0, i32 0, i32 5
  store i32 %25, ptr %26, align 4
  %27 = getelementptr inbounds %struct.rpc_cred, ptr %0, i32 0, i32 1
  %28 = load volatile ptr, ptr %27, align 4
  %29 = icmp eq ptr %28, %27
  br i1 %29, label %30, label %41

30:                                               ; preds = %24
  tail call void @_raw_spin_lock(ptr noundef nonnull @rpc_credcache_lock) #15
  %31 = load volatile ptr, ptr %27, align 4
  %32 = icmp eq ptr %31, %27
  br i1 %32, label %33, label %38

33:                                               ; preds = %30
  %34 = load i32, ptr @number_cred_unused, align 4
  %35 = add i32 %34, 1
  store i32 %35, ptr @number_cred_unused, align 4
  %36 = load ptr, ptr getelementptr inbounds (%struct.list_head, ptr @cred_unused, i32 0, i32 1), align 4
  store ptr %27, ptr getelementptr inbounds (%struct.list_head, ptr @cred_unused, i32 0, i32 1), align 4
  store ptr @cred_unused, ptr %27, align 4
  %37 = getelementptr inbounds %struct.rpc_cred, ptr %0, i32 0, i32 1, i32 1
  store ptr %36, ptr %37, align 4
  store volatile ptr %27, ptr %36, align 4
  br label %38

38:                                               ; preds = %33, %30
  tail call void asm sideeffect "dmb ish", "~{memory}"() #15, !srcloc !21
  %39 = load i16, ptr @rpc_credcache_lock, align 4
  %40 = add i16 %39, 1
  store i16 %40, ptr @rpc_credcache_lock, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #15, !srcloc !22
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #15, !srcloc !23
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !24
  br label %41

41:                                               ; preds = %38, %24
  %42 = load volatile i32, ptr %16, align 4
  %43 = and i32 %42, 4
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %45, label %72, !prof !20

45:                                               ; preds = %41
  tail call fastcc void @rpcauth_lru_remove(ptr noundef nonnull %0)
  br label %72

46:                                               ; preds = %20
  %47 = load volatile i32, ptr %16, align 4
  %48 = and i32 %47, 4
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %72, label %50

50:                                               ; preds = %46
  %51 = getelementptr inbounds %struct.rpc_cred, ptr %0, i32 0, i32 3
  %52 = load ptr, ptr %51, align 4
  %53 = getelementptr inbounds %struct.rpc_auth, ptr %52, i32 0, i32 8
  %54 = load ptr, ptr %53, align 4
  %55 = getelementptr inbounds %struct.rpc_cred_cache, ptr %54, i32 0, i32 2
  tail call void @_raw_spin_lock(ptr noundef %55) #15
  %56 = tail call i32 @_test_and_clear_bit(i32 noundef 2, ptr noundef %16) #15
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %69, label %58

58:                                               ; preds = %50
  %59 = load ptr, ptr %0, align 4
  %60 = getelementptr inbounds %struct.hlist_node, ptr %0, i32 0, i32 1
  %61 = load ptr, ptr %60, align 4
  store volatile ptr %59, ptr %61, align 4
  %62 = icmp eq ptr %59, null
  br i1 %62, label %65, label %63

63:                                               ; preds = %58
  %64 = getelementptr inbounds %struct.hlist_node, ptr %59, i32 0, i32 1
  store volatile ptr %61, ptr %64, align 4
  br label %65

65:                                               ; preds = %63, %58
  store volatile ptr inttoptr (i32 290 to ptr), ptr %60, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #15, !srcloc !21
  %66 = load i16, ptr %55, align 4
  %67 = add i16 %66, 1
  store i16 %67, ptr %55, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #15, !srcloc !22
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #15, !srcloc !23
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !24
  tail call fastcc void @rpcauth_lru_remove(ptr noundef nonnull %0)
  %68 = tail call fastcc zeroext i1 @refcount_dec_and_test(ptr noundef %4)
  br i1 %68, label %73, label %72

69:                                               ; preds = %50
  tail call void asm sideeffect "dmb ish", "~{memory}"() #15, !srcloc !21
  %70 = load i16, ptr %55, align 4
  %71 = add i16 %70, 1
  store i16 %71, ptr %55, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #15, !srcloc !22
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #15, !srcloc !23
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !24
  br label %72

72:                                               ; preds = %69, %65, %46, %45, %41, %15, %12
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !15
  br label %78

73:                                               ; preds = %65, %11
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !15
  %74 = getelementptr inbounds %struct.rpc_cred, ptr %0, i32 0, i32 4
  %75 = load ptr, ptr %74, align 4
  %76 = getelementptr inbounds %struct.rpc_credops, ptr %75, i32 0, i32 2
  %77 = load ptr, ptr %76, align 4
  tail call void %77(ptr noundef nonnull %0) #15
  br label %78

78:                                               ; preds = %73, %72, %1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @rpcauth_lookupcred(ptr noundef %0, i32 noundef %1) #1 {
  %3 = alloca %struct.auth_cred, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #15
  %4 = tail call ptr @llvm.thread.pointer() #15
  %5 = getelementptr inbounds %struct.task_struct, ptr %4, i32 0, i32 83
  %6 = load ptr, ptr %5, align 8
  store i64 0, ptr %3, align 8
  store ptr %6, ptr %3, align 8
  %7 = getelementptr inbounds %struct.rpc_auth, ptr %0, i32 0, i32 5
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.rpc_authops, ptr %8, i32 0, i32 6
  %10 = load ptr, ptr %9, align 4
  %11 = call ptr %10(ptr noundef %0, ptr noundef nonnull %3, i32 noundef %1) #15
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #15
  ret ptr %11
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @rpcauth_init_cred(ptr noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2, ptr noundef %3) #1 {
  store ptr null, ptr %0, align 4
  %5 = getelementptr inbounds %struct.hlist_node, ptr %0, i32 0, i32 1
  store ptr null, ptr %5, align 4
  %6 = getelementptr inbounds %struct.rpc_cred, ptr %0, i32 0, i32 1
  store volatile ptr %6, ptr %6, align 4
  %7 = getelementptr inbounds %struct.rpc_cred, ptr %0, i32 0, i32 1, i32 1
  store ptr %6, ptr %7, align 4
  %8 = getelementptr inbounds %struct.rpc_cred, ptr %0, i32 0, i32 7
  store volatile i32 1, ptr %8, align 4
  %9 = getelementptr inbounds %struct.rpc_cred, ptr %0, i32 0, i32 3
  store ptr %2, ptr %9, align 4
  %10 = getelementptr inbounds %struct.rpc_cred, ptr %0, i32 0, i32 6
  store i32 0, ptr %10, align 4
  %11 = getelementptr inbounds %struct.rpc_cred, ptr %0, i32 0, i32 4
  store ptr %3, ptr %11, align 4
  %12 = load volatile i32, ptr @jiffies, align 64
  %13 = getelementptr inbounds %struct.rpc_cred, ptr %0, i32 0, i32 5
  store i32 %12, ptr %13, align 4
  %14 = load ptr, ptr %1, align 4
  %15 = icmp eq ptr %14, null
  br i1 %15, label %19, label %16

16:                                               ; preds = %4
  %17 = getelementptr inbounds %struct.cred, ptr %14, i32 0, i32 24
  store i32 0, ptr %17, align 4
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr nonnull %14) #15, !srcloc !9
  %18 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %14, ptr nonnull %14, i32 1, ptr nonnull elementtype(i32) %14) #15, !srcloc !28
  br label %19

19:                                               ; preds = %16, %4
  %20 = getelementptr inbounds %struct.rpc_cred, ptr %0, i32 0, i32 8
  store ptr %14, ptr %20, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @rpcauth_lru_remove(ptr noundef %0) unnamed_addr #1 {
  %2 = getelementptr inbounds %struct.rpc_cred, ptr %0, i32 0, i32 1
  %3 = load volatile ptr, ptr %2, align 4
  %4 = icmp eq ptr %3, %2
  br i1 %4, label %17, label %5

5:                                                ; preds = %1
  tail call void @_raw_spin_lock(ptr noundef nonnull @rpc_credcache_lock) #15
  %6 = load volatile ptr, ptr %2, align 4
  %7 = icmp eq ptr %6, %2
  br i1 %7, label %14, label %8

8:                                                ; preds = %5
  %9 = load i32, ptr @number_cred_unused, align 4
  %10 = add i32 %9, -1
  store i32 %10, ptr @number_cred_unused, align 4
  %11 = getelementptr inbounds %struct.rpc_cred, ptr %0, i32 0, i32 1, i32 1
  %12 = load ptr, ptr %11, align 4
  %13 = getelementptr inbounds %struct.list_head, ptr %6, i32 0, i32 1
  store ptr %12, ptr %13, align 4
  store volatile ptr %6, ptr %12, align 4
  store volatile ptr %2, ptr %2, align 4
  store ptr %2, ptr %11, align 4
  br label %14

14:                                               ; preds = %8, %5
  tail call void asm sideeffect "dmb ish", "~{memory}"() #15, !srcloc !21
  %15 = load i16, ptr @rpc_credcache_lock, align 4
  %16 = add i16 %15, 1
  store i16 %16, ptr @rpc_credcache_lock, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #15, !srcloc !22
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #15, !srcloc !23
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !24
  br label %17

17:                                               ; preds = %14, %1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @rpcauth_marshcred(ptr noundef %0, ptr noundef %1) local_unnamed_addr #1 {
  %3 = getelementptr inbounds %struct.rpc_task, ptr %0, i32 0, i32 16
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.rpc_rqst, ptr %4, i32 0, i32 4
  %6 = load ptr, ptr %5, align 8
  %7 = getelementptr inbounds %struct.rpc_cred, ptr %6, i32 0, i32 4
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.rpc_credops, ptr %8, i32 0, i32 4
  %10 = load ptr, ptr %9, align 4
  %11 = tail call i32 %10(ptr noundef %0, ptr noundef %1) #15
  ret i32 %11
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @rpcauth_wrap_req_encode(ptr nocapture noundef readonly %0, ptr noundef %1) #1 {
  %3 = getelementptr inbounds %struct.rpc_task, ptr %0, i32 0, i32 10
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.rpc_procinfo, ptr %4, i32 0, i32 1
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.rpc_task, ptr %0, i32 0, i32 16
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.rpc_task, ptr %0, i32 0, i32 10, i32 1
  %10 = load ptr, ptr %9, align 4
  tail call void %6(ptr noundef %8, ptr noundef %1, ptr noundef %10) #15
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @rpcauth_wrap_req(ptr noundef %0, ptr noundef %1) local_unnamed_addr #1 {
  %3 = getelementptr inbounds %struct.rpc_task, ptr %0, i32 0, i32 16
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.rpc_rqst, ptr %4, i32 0, i32 4
  %6 = load ptr, ptr %5, align 8
  %7 = getelementptr inbounds %struct.rpc_cred, ptr %6, i32 0, i32 4
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.rpc_credops, ptr %8, i32 0, i32 7
  %10 = load ptr, ptr %9, align 4
  %11 = tail call i32 %10(ptr noundef %0, ptr noundef %1) #15
  ret i32 %11
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @rpcauth_checkverf(ptr noundef %0, ptr noundef %1) local_unnamed_addr #1 {
  %3 = getelementptr inbounds %struct.rpc_task, ptr %0, i32 0, i32 16
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.rpc_rqst, ptr %4, i32 0, i32 4
  %6 = load ptr, ptr %5, align 8
  %7 = getelementptr inbounds %struct.rpc_cred, ptr %6, i32 0, i32 4
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.rpc_credops, ptr %8, i32 0, i32 6
  %10 = load ptr, ptr %9, align 4
  %11 = tail call i32 %10(ptr noundef %0, ptr noundef %1) #15
  ret i32 %11
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @rpcauth_unwrap_resp_decode(ptr nocapture noundef readonly %0, ptr noundef %1) #1 {
  %3 = getelementptr inbounds %struct.rpc_task, ptr %0, i32 0, i32 10
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.rpc_procinfo, ptr %4, i32 0, i32 2
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.rpc_task, ptr %0, i32 0, i32 16
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.rpc_task, ptr %0, i32 0, i32 10, i32 2
  %10 = load ptr, ptr %9, align 8
  %11 = tail call i32 %6(ptr noundef %8, ptr noundef %1, ptr noundef %10) #15
  ret i32 %11
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @rpcauth_unwrap_resp(ptr noundef %0, ptr noundef %1) local_unnamed_addr #1 {
  %3 = getelementptr inbounds %struct.rpc_task, ptr %0, i32 0, i32 16
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.rpc_rqst, ptr %4, i32 0, i32 4
  %6 = load ptr, ptr %5, align 8
  %7 = getelementptr inbounds %struct.rpc_cred, ptr %6, i32 0, i32 4
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.rpc_credops, ptr %8, i32 0, i32 8
  %10 = load ptr, ptr %9, align 4
  %11 = tail call i32 %10(ptr noundef %0, ptr noundef %1) #15
  ret i32 %11
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local zeroext i1 @rpcauth_xmit_need_reencode(ptr noundef %0) local_unnamed_addr #1 {
  %2 = getelementptr inbounds %struct.rpc_task, ptr %0, i32 0, i32 16
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.rpc_rqst, ptr %3, i32 0, i32 4
  %5 = load ptr, ptr %4, align 8
  %6 = icmp eq ptr %5, null
  br i1 %6, label %15, label %7

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.rpc_cred, ptr %5, i32 0, i32 4
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.rpc_credops, ptr %9, i32 0, i32 11
  %11 = load ptr, ptr %10, align 4
  %12 = icmp eq ptr %11, null
  br i1 %12, label %15, label %13

13:                                               ; preds = %7
  %14 = tail call zeroext i1 %11(ptr noundef %0) #15
  br label %15

15:                                               ; preds = %13, %7, %1
  %16 = phi i1 [ %14, %13 ], [ false, %7 ], [ false, %1 ]
  ret i1 %16
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @rpcauth_refreshcred(ptr noundef %0) local_unnamed_addr #1 {
  %2 = alloca %struct.auth_cred, align 8
  %3 = alloca %struct.auth_cred, align 8
  %4 = alloca %struct.auth_cred, align 8
  %5 = alloca %struct.auth_cred, align 8
  %6 = getelementptr inbounds %struct.rpc_task, ptr %0, i32 0, i32 16
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.rpc_rqst, ptr %7, i32 0, i32 4
  %9 = load ptr, ptr %8, align 8
  %10 = icmp eq ptr %9, null
  br i1 %10, label %11, label %133

11:                                               ; preds = %1
  %12 = getelementptr inbounds %struct.rpc_task, ptr %0, i32 0, i32 10, i32 3
  %13 = load ptr, ptr %12, align 4
  %14 = getelementptr inbounds %struct.rpc_task, ptr %0, i32 0, i32 20
  %15 = load i16, ptr %14, align 4
  %16 = zext i16 %15 to i32
  %17 = getelementptr inbounds %struct.rpc_task, ptr %0, i32 0, i32 13
  %18 = load ptr, ptr %17, align 8
  %19 = getelementptr inbounds %struct.rpc_clnt, ptr %18, i32 0, i32 11
  %20 = load ptr, ptr %19, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #15
  store ptr %13, ptr %5, align 8
  %21 = getelementptr inbounds %struct.auth_cred, ptr %5, i32 0, i32 1
  store ptr null, ptr %21, align 4
  %22 = and i32 %16, 1
  %23 = getelementptr inbounds %struct.rpc_task, ptr %0, i32 0, i32 15
  %24 = load ptr, ptr %23, align 8
  %25 = icmp eq ptr %24, null
  br i1 %25, label %50, label %26

26:                                               ; preds = %11
  %27 = getelementptr inbounds %struct.rpc_cred, ptr %24, i32 0, i32 7
  %28 = load volatile i32, ptr %27, align 4
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %42, label %30

30:                                               ; preds = %40, %26
  %31 = phi i32 [ %38, %40 ], [ %28, %26 ]
  %32 = add i32 %31, 1
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %27) #15, !srcloc !9
  br label %33

33:                                               ; preds = %33, %30
  %34 = tail call { i32, i32 } asm sideeffect "@ atomic_cmpxchg\0Aldrex\09$1, [$3]\0Amov\09$0, #0\0Ateq\09$1, $4\0Astrexeq $0, $5, [$3]\0A", "=&r,=&r,=*Qo,r,Ir,r,*Qo,~{cc}"(ptr elementtype(i32) %27, ptr %27, i32 %31, i32 %32, ptr elementtype(i32) %27) #15, !srcloc !25
  %35 = extractvalue { i32, i32 } %34, 0
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %37, label %33

37:                                               ; preds = %33
  %38 = extractvalue { i32, i32 } %34, 1
  %39 = icmp eq i32 %38, %31
  br i1 %39, label %42, label %40, !prof !18

40:                                               ; preds = %37
  %41 = icmp eq i32 %38, 0
  br i1 %41, label %42, label %30

42:                                               ; preds = %40, %37, %26
  %43 = phi i32 [ 0, %26 ], [ 0, %40 ], [ %31, %37 ]
  %44 = add i32 %43, 1
  %45 = or i32 %44, %43
  %46 = icmp sgt i32 %45, -1
  br i1 %46, label %48, label %47, !prof !18

47:                                               ; preds = %42
  tail call void @refcount_warn_saturate(ptr noundef %27, i32 noundef 0) #15
  br label %48

48:                                               ; preds = %47, %42
  %49 = icmp eq i32 %43, 0
  br i1 %49, label %79, label %76

50:                                               ; preds = %11
  %51 = icmp ne ptr %13, null
  %52 = icmp ne ptr %13, @machine_cred
  %53 = and i1 %51, %52
  br i1 %53, label %54, label %60

54:                                               ; preds = %50
  %55 = getelementptr inbounds %struct.rpc_auth, ptr %20, i32 0, i32 5
  %56 = load ptr, ptr %55, align 4
  %57 = getelementptr inbounds %struct.rpc_authops, ptr %56, i32 0, i32 6
  %58 = load ptr, ptr %57, align 4
  %59 = call ptr %58(ptr noundef %20, ptr noundef nonnull %5, i32 noundef %22) #15
  br label %76

60:                                               ; preds = %50
  %61 = icmp eq ptr %13, @machine_cred
  br i1 %61, label %62, label %79

62:                                               ; preds = %60
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #15
  %63 = load ptr, ptr getelementptr inbounds (%struct.task_struct, ptr @init_task, i32 0, i32 83), align 8
  store ptr %63, ptr %4, align 8
  %64 = getelementptr inbounds %struct.auth_cred, ptr %4, i32 0, i32 1
  %65 = getelementptr inbounds %struct.rpc_clnt, ptr %18, i32 0, i32 25
  %66 = load ptr, ptr %65, align 4
  store ptr %66, ptr %64, align 4
  %67 = icmp eq ptr %66, null
  br i1 %67, label %74, label %68

68:                                               ; preds = %62
  %69 = getelementptr inbounds %struct.rpc_auth, ptr %20, i32 0, i32 5
  %70 = load ptr, ptr %69, align 4
  %71 = getelementptr inbounds %struct.rpc_authops, ptr %70, i32 0, i32 6
  %72 = load ptr, ptr %71, align 4
  %73 = call ptr %72(ptr noundef %20, ptr noundef nonnull %4, i32 noundef %22) #15
  br label %74

74:                                               ; preds = %68, %62
  %75 = phi ptr [ %73, %68 ], [ null, %62 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #15
  br label %76

76:                                               ; preds = %74, %54, %48
  %77 = phi ptr [ %59, %54 ], [ %75, %74 ], [ %24, %48 ]
  %78 = icmp eq ptr %77, null
  br i1 %78, label %79, label %121

79:                                               ; preds = %76, %60, %48
  %80 = icmp ne ptr %13, @machine_cred
  %81 = and i32 %16, 64
  %82 = icmp eq i32 %81, 0
  %83 = and i1 %80, %82
  br i1 %83, label %103, label %84

84:                                               ; preds = %79
  %85 = load ptr, ptr %17, align 8
  %86 = getelementptr inbounds %struct.rpc_clnt, ptr %85, i32 0, i32 11
  %87 = load ptr, ptr %86, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #15
  %88 = call ptr @get_task_cred(ptr noundef nonnull @init_task) #15
  store ptr %88, ptr %3, align 8
  %89 = getelementptr inbounds %struct.auth_cred, ptr %3, i32 0, i32 1
  store ptr null, ptr %89, align 4
  %90 = getelementptr inbounds %struct.rpc_auth, ptr %87, i32 0, i32 5
  %91 = load ptr, ptr %90, align 4
  %92 = getelementptr inbounds %struct.rpc_authops, ptr %91, i32 0, i32 6
  %93 = load ptr, ptr %92, align 4
  %94 = call ptr %93(ptr noundef %87, ptr noundef nonnull %3, i32 noundef %22) #15
  %95 = load ptr, ptr %3, align 8
  %96 = icmp eq ptr %95, null
  br i1 %96, label %102, label %97

97:                                               ; preds = %84
  call void asm sideeffect "dmb ish", "~{memory}"() #15, !srcloc !29
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr nonnull %95) #15, !srcloc !9
  %98 = call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %95, ptr nonnull %95, i32 1, ptr nonnull elementtype(i32) %95) #15, !srcloc !30
  %99 = extractvalue { i32, i32 } %98, 0
  call void asm sideeffect "dmb ish", "~{memory}"() #15, !srcloc !31
  %100 = icmp eq i32 %99, 0
  br i1 %100, label %101, label %102

101:                                              ; preds = %97
  call void @__put_cred(ptr noundef nonnull %95) #15
  br label %102

102:                                              ; preds = %101, %97, %84
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #15
  br label %121

103:                                              ; preds = %79
  %104 = and i32 %16, 16
  %105 = icmp eq i32 %104, 0
  br i1 %105, label %109, label %106

106:                                              ; preds = %103
  %107 = load ptr, ptr getelementptr inbounds (%struct.rpc_authops, ptr @authnull_ops, i32 0, i32 6), align 4
  %108 = call ptr %107(ptr noundef null, ptr noundef null, i32 noundef 0) #15
  br label %121

109:                                              ; preds = %103
  %110 = load ptr, ptr %17, align 8
  %111 = getelementptr inbounds %struct.rpc_clnt, ptr %110, i32 0, i32 11
  %112 = load ptr, ptr %111, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #15
  %113 = tail call ptr @llvm.thread.pointer() #15
  %114 = getelementptr inbounds %struct.task_struct, ptr %113, i32 0, i32 83
  %115 = load ptr, ptr %114, align 8
  store i64 0, ptr %2, align 8
  store ptr %115, ptr %2, align 8
  %116 = getelementptr inbounds %struct.rpc_auth, ptr %112, i32 0, i32 5
  %117 = load ptr, ptr %116, align 4
  %118 = getelementptr inbounds %struct.rpc_authops, ptr %117, i32 0, i32 6
  %119 = load ptr, ptr %118, align 4
  %120 = call ptr %119(ptr noundef %112, ptr noundef nonnull %2, i32 noundef %22) #15
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #15
  br label %121

121:                                              ; preds = %109, %106, %102, %76
  %122 = phi ptr [ %77, %76 ], [ %94, %102 ], [ %108, %106 ], [ %120, %109 ]
  %123 = icmp ugt ptr %122, inttoptr (i32 -4096 to ptr)
  br i1 %123, label %126, label %124

124:                                              ; preds = %121
  %125 = load ptr, ptr %8, align 8
  call void @put_rpccred(ptr noundef %125) #15
  store ptr %122, ptr %8, align 8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #15
  br label %129

126:                                              ; preds = %121
  %127 = ptrtoint ptr %122 to i32
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #15
  %128 = icmp slt ptr %122, null
  br i1 %128, label %141, label %129

129:                                              ; preds = %126, %124
  %130 = load ptr, ptr %6, align 4
  %131 = getelementptr inbounds %struct.rpc_rqst, ptr %130, i32 0, i32 4
  %132 = load ptr, ptr %131, align 8
  br label %133

133:                                              ; preds = %129, %1
  %134 = phi ptr [ %132, %129 ], [ %9, %1 ]
  %135 = getelementptr inbounds %struct.rpc_cred, ptr %134, i32 0, i32 4
  %136 = load ptr, ptr %135, align 4
  %137 = getelementptr inbounds %struct.rpc_credops, ptr %136, i32 0, i32 5
  %138 = load ptr, ptr %137, align 4
  %139 = call i32 %138(ptr noundef %0) #15
  %140 = icmp slt i32 %139, 0
  br i1 %140, label %141, label %144

141:                                              ; preds = %133, %126
  %142 = phi i32 [ %139, %133 ], [ %127, %126 ]
  %143 = getelementptr inbounds %struct.rpc_task, ptr %0, i32 0, i32 1
  store i32 %142, ptr %143, align 4
  br label %144

144:                                              ; preds = %141, %133
  %145 = phi i32 [ %142, %141 ], [ %139, %133 ]
  ret i32 %145
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @rpcauth_invalcred(ptr nocapture noundef readonly %0) local_unnamed_addr #1 {
  %2 = getelementptr inbounds %struct.rpc_task, ptr %0, i32 0, i32 16
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.rpc_rqst, ptr %3, i32 0, i32 4
  %5 = load ptr, ptr %4, align 8
  %6 = icmp eq ptr %5, null
  br i1 %6, label %9, label %7

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.rpc_cred, ptr %5, i32 0, i32 6
  tail call void @_clear_bit(i32 noundef 1, ptr noundef %8) #15
  br label %9

9:                                                ; preds = %7, %1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree norecurse nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define dso_local i32 @rpcauth_uptodatecred(ptr nocapture noundef readonly %0) local_unnamed_addr #5 {
  %2 = getelementptr inbounds %struct.rpc_task, ptr %0, i32 0, i32 16
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.rpc_rqst, ptr %3, i32 0, i32 4
  %5 = load ptr, ptr %4, align 8
  %6 = icmp eq ptr %5, null
  br i1 %6, label %12, label %7

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.rpc_cred, ptr %5, i32 0, i32 6
  %9 = load volatile i32, ptr %8, align 4
  %10 = lshr i32 %9, 1
  %11 = and i32 %10, 1
  br label %12

12:                                               ; preds = %7, %1
  %13 = phi i32 [ 1, %1 ], [ %11, %7 ]
  ret i32 %13
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local i32 @rpcauth_init_module() local_unnamed_addr #6 section ".init.text" {
  %1 = tail call i32 @rpc_init_authunix() #18
  %2 = icmp slt i32 %1, 0
  br i1 %2, label %7, label %3

3:                                                ; preds = %0
  %4 = tail call i32 @register_shrinker(ptr noundef nonnull @rpc_cred_shrinker) #15
  %5 = icmp slt i32 %4, 0
  br i1 %5, label %6, label %7

6:                                                ; preds = %3
  tail call void @rpc_destroy_authunix() #15
  br label %7

7:                                                ; preds = %6, %3, %0
  %8 = phi i32 [ 0, %3 ], [ %1, %0 ], [ %4, %6 ]
  ret i32 %8
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @rpc_init_authunix() local_unnamed_addr #7 section ".init.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_shrinker(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @rpc_destroy_authunix() local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @rpcauth_remove_module() local_unnamed_addr #1 {
  tail call void @rpc_destroy_authunix() #15
  tail call void @unregister_shrinker(ptr noundef nonnull @rpc_cred_shrinker) #15
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @unregister_shrinker(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @param_set_hashtbl_sz(ptr noundef %0, ptr nocapture noundef readonly %1) #1 {
  %3 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #15
  store i32 0, ptr %3, align 4, !annotation !32
  %4 = icmp eq ptr %0, null
  br i1 %4, label %20, label %5

5:                                                ; preds = %2
  %6 = call i32 @_kstrtoul(ptr noundef nonnull %0, i32 noundef 0, ptr noundef nonnull %3) #15
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %20

8:                                                ; preds = %5
  %9 = load i32, ptr %3, align 4
  %10 = add i32 %9, -1
  %11 = icmp eq i32 %10, 0
  %12 = call i32 @llvm.ctlz.i32(i32 %10, i1 false) #15, !range !33
  %13 = sub nuw nsw i32 32, %12
  %14 = select i1 %11, i32 0, i32 %13
  %15 = add nsw i32 %14, -15
  %16 = icmp ult i32 %15, -13
  br i1 %16, label %20, label %17

17:                                               ; preds = %8
  %18 = getelementptr inbounds %struct.kernel_param, ptr %1, i32 0, i32 6
  %19 = load ptr, ptr %18, align 4
  store i32 %14, ptr %19, align 4
  br label %20

20:                                               ; preds = %17, %8, %5, %2
  %21 = phi i32 [ 0, %17 ], [ -22, %8 ], [ -22, %5 ], [ -22, %2 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #15
  ret i32 %21
}

; Function Attrs: nofree nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @param_get_hashtbl_sz(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1) #8 {
  %3 = getelementptr inbounds %struct.kernel_param, ptr %1, i32 0, i32 6
  %4 = load ptr, ptr %3, align 4
  %5 = load i32, ptr %4, align 4
  %6 = shl nuw i32 1, %5
  %7 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %0, ptr noundef nonnull @.str, i32 noundef %6)
  ret i32 %7
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_kstrtoul(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #9

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #10

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__request_module(i1 noundef zeroext, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @try_module_get(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @module_put(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #11

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #12

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #9

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #4 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @rpcauth_cache_do_shrink(i32 noundef %0) unnamed_addr #1 {
  %2 = alloca %struct.list_head, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #15
  store ptr %2, ptr %2, align 8
  %3 = getelementptr inbounds %struct.list_head, ptr %2, i32 0, i32 1
  store ptr %2, ptr %3, align 4
  call void @_raw_spin_lock(ptr noundef nonnull @rpc_credcache_lock) #15
  %4 = load volatile i32, ptr @jiffies, align 64
  %5 = load ptr, ptr @cred_unused, align 4
  %6 = icmp eq ptr %5, @cred_unused
  br i1 %6, label %83, label %7

7:                                                ; preds = %1
  %8 = sub i32 6000, %4
  br label %9

9:                                                ; preds = %77, %7
  %10 = phi i32 [ %0, %7 ], [ %15, %77 ]
  %11 = phi ptr [ %5, %7 ], [ %14, %77 ]
  %12 = phi i32 [ 0, %7 ], [ %78, %77 ]
  %13 = getelementptr i8, ptr %11, i32 -8
  %14 = load ptr, ptr %11, align 4
  %15 = add i32 %10, -1
  %16 = icmp eq i32 %10, 0
  br i1 %16, label %80, label %17

17:                                               ; preds = %9
  %18 = getelementptr i8, ptr %11, i32 32
  %19 = load volatile i32, ptr %18, align 4
  %20 = icmp ugt i32 %19, 1
  br i1 %20, label %21, label %30

21:                                               ; preds = %17
  %22 = load volatile ptr, ptr %11, align 4
  %23 = icmp eq ptr %22, %11
  br i1 %23, label %77, label %24

24:                                               ; preds = %21
  %25 = load i32, ptr @number_cred_unused, align 4
  %26 = add i32 %25, -1
  store i32 %26, ptr @number_cred_unused, align 4
  %27 = getelementptr i8, ptr %11, i32 4
  %28 = load ptr, ptr %27, align 4
  %29 = getelementptr inbounds %struct.list_head, ptr %22, i32 0, i32 1
  store ptr %28, ptr %29, align 4
  store volatile ptr %22, ptr %28, align 4
  store volatile ptr %11, ptr %11, align 4
  store ptr %11, ptr %27, align 4
  br label %77

30:                                               ; preds = %17
  %31 = getelementptr i8, ptr %11, i32 24
  %32 = load i32, ptr %31, align 4
  %33 = add i32 %8, %32
  %34 = icmp sgt i32 %33, -1
  br i1 %34, label %35, label %77

35:                                               ; preds = %30
  %36 = load volatile i32, ptr @jiffies, align 64
  %37 = sub i32 %36, %32
  %38 = icmp sgt i32 %37, -1
  br i1 %38, label %39, label %77

39:                                               ; preds = %35
  %40 = getelementptr i8, ptr %11, i32 28
  %41 = load volatile i32, ptr %40, align 4
  %42 = and i32 %41, 4
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %77, label %44

44:                                               ; preds = %39
  %45 = getelementptr i8, ptr %11, i32 16
  %46 = load ptr, ptr %45, align 4
  %47 = getelementptr inbounds %struct.rpc_auth, ptr %46, i32 0, i32 8
  %48 = load ptr, ptr %47, align 4
  %49 = getelementptr inbounds %struct.rpc_cred_cache, ptr %48, i32 0, i32 2
  call void @_raw_spin_lock(ptr noundef %49) #15
  %50 = call i32 @_test_and_clear_bit(i32 noundef 2, ptr noundef %40) #15
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %74, label %52

52:                                               ; preds = %44
  %53 = load ptr, ptr %13, align 4
  %54 = getelementptr i8, ptr %11, i32 -4
  %55 = load ptr, ptr %54, align 4
  store volatile ptr %53, ptr %55, align 4
  %56 = icmp eq ptr %53, null
  br i1 %56, label %59, label %57

57:                                               ; preds = %52
  %58 = getelementptr inbounds %struct.hlist_node, ptr %53, i32 0, i32 1
  store volatile ptr %55, ptr %58, align 4
  br label %59

59:                                               ; preds = %57, %52
  store volatile ptr inttoptr (i32 290 to ptr), ptr %54, align 4
  call void asm sideeffect "dmb ish", "~{memory}"() #15, !srcloc !21
  %60 = load i16, ptr %49, align 4
  %61 = add i16 %60, 1
  store i16 %61, ptr %49, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #15, !srcloc !22
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #15, !srcloc !23
  call void asm sideeffect "", "~{memory}"() #15, !srcloc !24
  %62 = load volatile ptr, ptr %11, align 4
  %63 = icmp eq ptr %62, %11
  br i1 %63, label %70, label %64

64:                                               ; preds = %59
  %65 = load i32, ptr @number_cred_unused, align 4
  %66 = add i32 %65, -1
  store i32 %66, ptr @number_cred_unused, align 4
  %67 = getelementptr i8, ptr %11, i32 4
  %68 = load ptr, ptr %67, align 4
  %69 = getelementptr inbounds %struct.list_head, ptr %62, i32 0, i32 1
  store ptr %68, ptr %69, align 4
  store volatile ptr %62, ptr %68, align 4
  store volatile ptr %11, ptr %11, align 4
  store ptr %11, ptr %67, align 4
  br label %70

70:                                               ; preds = %64, %59
  %71 = add i32 %12, 1
  %72 = load ptr, ptr %3, align 4
  store ptr %11, ptr %3, align 4
  store ptr %2, ptr %11, align 4
  %73 = getelementptr inbounds %struct.list_head, ptr %11, i32 0, i32 1
  store ptr %72, ptr %73, align 4
  store volatile ptr %11, ptr %72, align 4
  br label %77

74:                                               ; preds = %44
  call void asm sideeffect "dmb ish", "~{memory}"() #15, !srcloc !21
  %75 = load i16, ptr %49, align 4
  %76 = add i16 %75, 1
  store i16 %76, ptr %49, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #15, !srcloc !22
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #15, !srcloc !23
  call void asm sideeffect "", "~{memory}"() #15, !srcloc !24
  br label %77

77:                                               ; preds = %74, %70, %39, %35, %30, %24, %21
  %78 = phi i32 [ %71, %70 ], [ %12, %35 ], [ %12, %30 ], [ %12, %21 ], [ %12, %24 ], [ %12, %39 ], [ %12, %74 ]
  %79 = icmp eq ptr %14, @cred_unused
  br i1 %79, label %80, label %9

80:                                               ; preds = %77, %9
  %81 = phi i32 [ %78, %77 ], [ %12, %9 ]
  %82 = icmp eq i32 %81, 0
  br i1 %82, label %83, label %84

83:                                               ; preds = %80, %1
  br label %84

84:                                               ; preds = %83, %80
  %85 = phi i32 [ -1, %83 ], [ %81, %80 ]
  call void asm sideeffect "dmb ish", "~{memory}"() #15, !srcloc !21
  %86 = load i16, ptr @rpc_credcache_lock, align 4
  %87 = add i16 %86, 1
  store i16 %87, ptr @rpc_credcache_lock, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #15, !srcloc !22
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #15, !srcloc !23
  call void asm sideeffect "", "~{memory}"() #15, !srcloc !24
  %88 = load volatile ptr, ptr %2, align 8
  %89 = icmp eq ptr %88, %2
  br i1 %89, label %99, label %90

90:                                               ; preds = %90, %84
  %91 = phi ptr [ %97, %90 ], [ %88, %84 ]
  %92 = getelementptr i8, ptr %91, i32 -8
  %93 = getelementptr inbounds %struct.list_head, ptr %91, i32 0, i32 1
  %94 = load ptr, ptr %93, align 4
  %95 = load ptr, ptr %91, align 4
  %96 = getelementptr inbounds %struct.list_head, ptr %95, i32 0, i32 1
  store ptr %94, ptr %96, align 4
  store volatile ptr %95, ptr %94, align 4
  store volatile ptr %91, ptr %91, align 4
  store ptr %91, ptr %93, align 4
  call void @put_rpccred(ptr noundef %92) #15
  %97 = load volatile ptr, ptr %2, align 8
  %98 = icmp eq ptr %97, %2
  br i1 %98, label %99, label %90

99:                                               ; preds = %90, %84
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #15
  ret i32 %85
}

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.thread.pointer() #13

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @get_task_cred(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__put_cred(ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define internal i32 @rpcauth_cache_shrink_count(ptr nocapture noundef readnone %0, ptr nocapture noundef readnone %1) #14 {
  %3 = load i32, ptr @number_cred_unused, align 4
  %4 = load i32, ptr @sysctl_vfs_cache_pressure, align 4
  %5 = mul i32 %4, %3
  %6 = udiv i32 %5, 100
  ret i32 %6
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @rpcauth_cache_shrink_scan(ptr nocapture noundef readnone %0, ptr nocapture noundef readonly %1) #1 {
  %3 = load i32, ptr %1, align 4
  %4 = and i32 %3, 3264
  %5 = icmp eq i32 %4, 3264
  br i1 %5, label %6, label %13

6:                                                ; preds = %2
  %7 = load volatile ptr, ptr @cred_unused, align 4
  %8 = icmp eq ptr %7, @cred_unused
  br i1 %8, label %13, label %9

9:                                                ; preds = %6
  %10 = getelementptr inbounds %struct.shrink_control, ptr %1, i32 0, i32 2
  %11 = load i32, ptr %10, align 4
  %12 = tail call fastcc i32 @rpcauth_cache_do_shrink(i32 noundef %11)
  br label %13

13:                                               ; preds = %9, %6, %2
  %14 = phi i32 [ %12, %9 ], [ -1, %2 ], [ -1, %6 ]
  ret i32 %14
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #9

attributes #0 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { mustprogress nofree norecurse nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nofree nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #10 = { nofree nounwind null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #11 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #12 = { null_pointer_is_valid allocsize(0) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #13 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #14 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #15 = { nounwind }
attributes #16 = { nounwind allocsize(2) }
attributes #17 = { nounwind allocsize(0) }
attributes #18 = { cold nounwind }

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
!8 = !{i64 2158217821}
!9 = !{i64 535935, i64 2148037501, i64 2148037527, i64 2148037574, i64 2148037596, i64 2148037624, i64 2148037644}
!10 = !{i64 610751, i64 610772, i64 610795, i64 610814, i64 610833}
!11 = !{i64 2158218208}
!12 = !{i64 2158224572}
!13 = !{i64 2158224959}
!14 = !{i64 2148957949}
!15 = !{i64 2148958166}
!16 = !{i64 2148202443}
!17 = !{i64 2148104578, i64 2148104610, i64 2148104639, i64 2148104673, i64 2148104704, i64 2148104727}
!18 = !{!"branch_weights", i32 2000, i32 1}
!19 = !{i64 2149258063}
!20 = !{!"branch_weights", i32 1, i32 2000}
!21 = !{i64 2149184148}
!22 = !{i64 2149179972}
!23 = !{i64 2149180047, i64 2149180074, i64 2149180121, i64 2149180143, i64 2149180171, i64 2149180191}
!24 = !{i64 2149207151}
!25 = !{i64 521998, i64 522022, i64 522043, i64 522060, i64 522077}
!26 = !{i64 2148102221, i64 2148102253, i64 2148102282, i64 2148102316, i64 2148102347, i64 2148102370}
!27 = !{i64 2149059253}
!28 = !{i64 2148100763, i64 2148100789, i64 2148100818, i64 2148100852, i64 2148100883, i64 2148100906}
!29 = !{i64 2148201442}
!30 = !{i64 2148103804, i64 2148103836, i64 2148103865, i64 2148103899, i64 2148103930, i64 2148103953}
!31 = !{i64 2148201645}
!32 = !{!"auto-init"}
!33 = !{i32 0, i32 33}
