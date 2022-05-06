; ModuleID = '/llk/IR/net/sunrpc/auth_gss/trace.c_pt.bc'
source_filename = "../net/sunrpc/auth_gss/trace.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.static_call_key = type { ptr }
%struct.tracepoint = type { ptr, %struct.static_key, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.static_key = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.trace_eval_map = type { ptr, ptr, i32 }
%struct.trace_event_fields = type { ptr, %union.anon.163 }
%union.anon.163 = type { %struct.anon.164 }
%struct.anon.164 = type { ptr, i32, i32, i32, i32 }
%struct.trace_event_class = type { ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr }
%struct.list_head = type { ptr, ptr }
%struct.trace_event_functions = type { ptr, ptr, ptr, ptr }
%struct.trace_event_call = type { %struct.list_head, ptr, %union.anon.165, %struct.trace_event, ptr, ptr, %union.anon.166, ptr, i32, i32, ptr, ptr, ptr }
%union.anon.165 = type { ptr }
%struct.trace_event = type { %struct.hlist_node, %struct.list_head, i32, ptr }
%struct.hlist_node = type { ptr, ptr }
%union.anon.166 = type { ptr }
%struct.trace_print_flags = type { i32, ptr }
%struct.tracepoint_func = type { ptr, ptr, i32 }
%struct.trace_event_buffer = type { ptr, ptr, ptr, ptr, i32, ptr }
%struct.trace_event_file = type { %struct.list_head, ptr, ptr, ptr, ptr, ptr, %struct.list_head, i32, %struct.atomic_t, %struct.atomic_t }
%struct.rpc_task = type { %struct.atomic_t, i32, %struct.list_head, ptr, ptr, i32, i32, ptr, %union.anon.1, i32, %struct.rpc_message, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64, i32, i16, i16, i16, i8 }
%union.anon.1 = type { %struct.rpc_wait }
%struct.rpc_wait = type { %struct.list_head, %struct.list_head, %struct.list_head }
%struct.rpc_message = type { ptr, ptr, ptr, ptr }
%struct.trace_event_raw_rpcgss_gssapi_event = type { %struct.trace_entry, i32, i32, i32, [0 x i8] }
%struct.trace_entry = type { i16, i8, i8, i32 }
%struct.rpc_clnt = type { %struct.refcount_struct, i32, %struct.list_head, %struct.list_head, %struct.atomic_t, %struct.spinlock, ptr, ptr, i32, i32, i32, ptr, ptr, ptr, i8, ptr, ptr, %struct.atomic_t, i32, [65 x i8], %struct.rpc_pipe_dir_head, ptr, %struct.rpc_rtt, %struct.rpc_timeout, ptr, ptr, ptr, %union.anon.141, ptr, i32 }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.rpc_pipe_dir_head = type { %struct.list_head, ptr }
%struct.rpc_rtt = type { i32, [5 x i32], [5 x i32], [5 x i32] }
%struct.rpc_timeout = type { i32, i32, i32, i32, i8 }
%union.anon.141 = type { %struct.work_struct }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.trace_event_raw_rpcgss_import_ctx = type { %struct.trace_entry, i32, [0 x i8] }
%struct.gss_cred = type { %struct.rpc_cred, i32, ptr, ptr, ptr, i32 }
%struct.rpc_cred = type { %struct.hlist_node, %struct.list_head, %struct.callback_head, ptr, ptr, i32, i32, %struct.refcount_struct, ptr }
%struct.callback_head = type { ptr, ptr }
%struct.trace_event_raw_rpcgss_ctx_class = type { %struct.trace_entry, ptr, i32, i32, [0 x i8] }
%struct.svc_rqst = type { %struct.list_head, %struct.callback_head, ptr, %struct.__kernel_sockaddr_storage, i32, %struct.__kernel_sockaddr_storage, i32, ptr, ptr, ptr, ptr, %struct.svc_cred, ptr, ptr, i32, %struct.xdr_buf, %struct.xdr_stream, %struct.xdr_stream, ptr, %struct.xdr_buf, [260 x ptr], ptr, ptr, ptr, %struct.pagevec, [259 x %struct.kvec], [259 x %struct.bio_vec], i32, i32, i32, i32, i32, i32, i32, i64, ptr, ptr, ptr, i32, i32, i32, i64, %struct.cache_req, ptr, ptr, ptr, ptr, %struct.spinlock, ptr, ptr }
%struct.__kernel_sockaddr_storage = type { %union.anon.136 }
%union.anon.136 = type { ptr, [124 x i8] }
%struct.svc_cred = type { %struct.kuid_t, %struct.kgid_t, ptr, i32, ptr, ptr, ptr, ptr }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%struct.xdr_stream = type { ptr, ptr, ptr, ptr, %struct.kvec, ptr, i32, ptr }
%struct.kvec = type { ptr, i32 }
%struct.xdr_buf = type { [1 x %struct.kvec], [1 x %struct.kvec], ptr, ptr, i32, i32, i32, i32, i32 }
%struct.pagevec = type { i8, i8, [15 x ptr] }
%struct.bio_vec = type { ptr, i32, i32 }
%struct.cache_req = type { ptr, i32 }
%struct.svc_xprt = type { ptr, ptr, %struct.kref, %struct.list_head, %struct.list_head, i32, ptr, %struct.atomic_t, %struct.atomic_t, %struct.mutex, %struct.spinlock, ptr, %struct.list_head, %struct.__kernel_sockaddr_storage, i32, %struct.__kernel_sockaddr_storage, i32, [58 x i8], %struct.list_head, ptr, ptr, ptr, ptr }
%struct.kref = type { %struct.refcount_struct }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.trace_event_raw_rpcgss_svc_gssapi_class = type { %struct.trace_entry, i32, i32, i32, [0 x i8] }
%struct.trace_event_raw_rpcgss_svc_unwrap_failed = type { %struct.trace_entry, i32, i32, [0 x i8] }
%struct.trace_event_raw_rpcgss_svc_seqno_bad = type { %struct.trace_entry, i32, i32, i32, i32, [0 x i8] }
%struct.trace_event_raw_rpcgss_svc_accept_upcall = type { %struct.trace_entry, i32, i32, i32, i32, [0 x i8] }
%struct.trace_event_raw_rpcgss_svc_authenticate = type { %struct.trace_entry, i32, i32, i32, [0 x i8] }
%struct.rpc_gss_wire_cred = type { i32, i32, i32, i32, %struct.xdr_netobj }
%struct.xdr_netobj = type { i32, ptr }
%struct.trace_event_raw_rpcgss_unwrap_failed = type { %struct.trace_entry, i32, i32, [0 x i8] }
%struct.trace_event_raw_rpcgss_bad_seqno = type { %struct.trace_entry, i32, i32, i32, i32, [0 x i8] }
%struct.trace_event_raw_rpcgss_seqno = type { %struct.trace_entry, i32, i32, i32, i32, [0 x i8] }
%struct.rpc_rqst = type { ptr, %struct.xdr_buf, %struct.xdr_buf, ptr, ptr, i32, i32, i32, i32, ptr, ptr, %union.anon.142, %struct.list_head, %struct.list_head, ptr, i32, ptr, i32, i32, i32, %struct.xdr_buf, i32, i32, i32, i64, i32, i32, %struct.atomic_t, i32, i64, i32, %struct.list_head, i32, %struct.list_head }
%union.anon.142 = type { %struct.rb_node }
%struct.rb_node = type { i32, ptr, ptr }
%struct.trace_event_raw_rpcgss_need_reencode = type { %struct.trace_entry, i32, i32, i32, i32, i32, i8, [0 x i8] }
%struct.trace_event_raw_rpcgss_update_slack = type { %struct.trace_entry, i32, i32, i32, ptr, i32, i32, i32, [0 x i8] }
%struct.rpc_auth = type { i32, i32, i32, i32, i32, ptr, i32, %struct.refcount_struct, ptr }
%struct.trace_event_raw_rpcgss_svc_seqno_class = type { %struct.trace_entry, i32, i32, [0 x i8] }
%struct.trace_event_raw_rpcgss_svc_seqno_low = type { %struct.trace_entry, i32, i32, i32, i32, [0 x i8] }
%struct.trace_event_raw_rpcgss_upcall_msg = type { %struct.trace_entry, i32, [0 x i8] }
%struct.trace_event_raw_rpcgss_upcall_result = type { %struct.trace_entry, i32, i32, [0 x i8] }
%struct.trace_event_raw_rpcgss_context = type { %struct.trace_entry, i32, i32, i32, i32, i32, i32, [0 x i8] }
%struct.trace_event_raw_rpcgss_createauth = type { %struct.trace_entry, i32, i32, [0 x i8] }
%struct.trace_event_raw_rpcgss_oid_to_mech = type { %struct.trace_entry, i32, [0 x i8] }
%struct.trace_iterator = type { ptr, ptr, ptr, ptr, i32, %struct.mutex, ptr, i32, ptr, i32, ptr, i32, %struct.trace_seq, [1 x %struct.cpumask], i8, %struct.trace_seq, ptr, i32, i32, i32, i32, i64, i64, i32 }
%struct.cpumask = type { [1 x i32] }
%struct.trace_seq = type { [4096 x i8], %struct.seq_buf, i32 }
%struct.seq_buf = type { ptr, i32, i32, i64 }

@__tpstrtab_rpcgss_import_ctx = internal constant [18 x i8] c"rpcgss_import_ctx\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_rpcgss_import_ctx = dso_local global %struct.static_call_key { ptr @__traceiter_rpcgss_import_ctx }, align 4
@__tracepoint_rpcgss_import_ctx = dso_local global %struct.tracepoint { ptr @__tpstrtab_rpcgss_import_ctx, %struct.static_key zeroinitializer, ptr @__SCK__tp_func_rpcgss_import_ctx, ptr null, ptr @__traceiter_rpcgss_import_ctx, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_rpcgss_import_ctx = internal constant ptr @__tracepoint_rpcgss_import_ctx, section "__tracepoints_ptrs", align 4
@__tpstrtab_rpcgss_get_mic = internal constant [15 x i8] c"rpcgss_get_mic\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_rpcgss_get_mic = dso_local global %struct.static_call_key { ptr @__traceiter_rpcgss_get_mic }, align 4
@__tracepoint_rpcgss_get_mic = dso_local global %struct.tracepoint { ptr @__tpstrtab_rpcgss_get_mic, %struct.static_key zeroinitializer, ptr @__SCK__tp_func_rpcgss_get_mic, ptr null, ptr @__traceiter_rpcgss_get_mic, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_rpcgss_get_mic = internal constant ptr @__tracepoint_rpcgss_get_mic, section "__tracepoints_ptrs", align 4
@__tpstrtab_rpcgss_verify_mic = internal constant [18 x i8] c"rpcgss_verify_mic\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_rpcgss_verify_mic = dso_local global %struct.static_call_key { ptr @__traceiter_rpcgss_verify_mic }, align 4
@__tracepoint_rpcgss_verify_mic = dso_local global %struct.tracepoint { ptr @__tpstrtab_rpcgss_verify_mic, %struct.static_key zeroinitializer, ptr @__SCK__tp_func_rpcgss_verify_mic, ptr null, ptr @__traceiter_rpcgss_verify_mic, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_rpcgss_verify_mic = internal constant ptr @__tracepoint_rpcgss_verify_mic, section "__tracepoints_ptrs", align 4
@__tpstrtab_rpcgss_wrap = internal constant [12 x i8] c"rpcgss_wrap\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_rpcgss_wrap = dso_local global %struct.static_call_key { ptr @__traceiter_rpcgss_wrap }, align 4
@__tracepoint_rpcgss_wrap = dso_local global %struct.tracepoint { ptr @__tpstrtab_rpcgss_wrap, %struct.static_key zeroinitializer, ptr @__SCK__tp_func_rpcgss_wrap, ptr null, ptr @__traceiter_rpcgss_wrap, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_rpcgss_wrap = internal constant ptr @__tracepoint_rpcgss_wrap, section "__tracepoints_ptrs", align 4
@__tpstrtab_rpcgss_unwrap = internal constant [14 x i8] c"rpcgss_unwrap\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_rpcgss_unwrap = dso_local global %struct.static_call_key { ptr @__traceiter_rpcgss_unwrap }, align 4
@__tracepoint_rpcgss_unwrap = dso_local global %struct.tracepoint { ptr @__tpstrtab_rpcgss_unwrap, %struct.static_key zeroinitializer, ptr @__SCK__tp_func_rpcgss_unwrap, ptr null, ptr @__traceiter_rpcgss_unwrap, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_rpcgss_unwrap = internal constant ptr @__tracepoint_rpcgss_unwrap, section "__tracepoints_ptrs", align 4
@__tpstrtab_rpcgss_ctx_init = internal constant [16 x i8] c"rpcgss_ctx_init\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_rpcgss_ctx_init = dso_local global %struct.static_call_key { ptr @__traceiter_rpcgss_ctx_init }, align 4
@__tracepoint_rpcgss_ctx_init = dso_local global %struct.tracepoint { ptr @__tpstrtab_rpcgss_ctx_init, %struct.static_key zeroinitializer, ptr @__SCK__tp_func_rpcgss_ctx_init, ptr null, ptr @__traceiter_rpcgss_ctx_init, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_rpcgss_ctx_init = internal constant ptr @__tracepoint_rpcgss_ctx_init, section "__tracepoints_ptrs", align 4
@__tpstrtab_rpcgss_ctx_destroy = internal constant [19 x i8] c"rpcgss_ctx_destroy\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_rpcgss_ctx_destroy = dso_local global %struct.static_call_key { ptr @__traceiter_rpcgss_ctx_destroy }, align 4
@__tracepoint_rpcgss_ctx_destroy = dso_local global %struct.tracepoint { ptr @__tpstrtab_rpcgss_ctx_destroy, %struct.static_key zeroinitializer, ptr @__SCK__tp_func_rpcgss_ctx_destroy, ptr null, ptr @__traceiter_rpcgss_ctx_destroy, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_rpcgss_ctx_destroy = internal constant ptr @__tracepoint_rpcgss_ctx_destroy, section "__tracepoints_ptrs", align 4
@__tpstrtab_rpcgss_svc_unwrap = internal constant [18 x i8] c"rpcgss_svc_unwrap\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_rpcgss_svc_unwrap = dso_local global %struct.static_call_key { ptr @__traceiter_rpcgss_svc_unwrap }, align 4
@__tracepoint_rpcgss_svc_unwrap = dso_local global %struct.tracepoint { ptr @__tpstrtab_rpcgss_svc_unwrap, %struct.static_key zeroinitializer, ptr @__SCK__tp_func_rpcgss_svc_unwrap, ptr null, ptr @__traceiter_rpcgss_svc_unwrap, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_rpcgss_svc_unwrap = internal constant ptr @__tracepoint_rpcgss_svc_unwrap, section "__tracepoints_ptrs", align 4
@__tpstrtab_rpcgss_svc_mic = internal constant [15 x i8] c"rpcgss_svc_mic\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_rpcgss_svc_mic = dso_local global %struct.static_call_key { ptr @__traceiter_rpcgss_svc_mic }, align 4
@__tracepoint_rpcgss_svc_mic = dso_local global %struct.tracepoint { ptr @__tpstrtab_rpcgss_svc_mic, %struct.static_key zeroinitializer, ptr @__SCK__tp_func_rpcgss_svc_mic, ptr null, ptr @__traceiter_rpcgss_svc_mic, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_rpcgss_svc_mic = internal constant ptr @__tracepoint_rpcgss_svc_mic, section "__tracepoints_ptrs", align 4
@__tpstrtab_rpcgss_svc_unwrap_failed = internal constant [25 x i8] c"rpcgss_svc_unwrap_failed\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_rpcgss_svc_unwrap_failed = dso_local global %struct.static_call_key { ptr @__traceiter_rpcgss_svc_unwrap_failed }, align 4
@__tracepoint_rpcgss_svc_unwrap_failed = dso_local global %struct.tracepoint { ptr @__tpstrtab_rpcgss_svc_unwrap_failed, %struct.static_key zeroinitializer, ptr @__SCK__tp_func_rpcgss_svc_unwrap_failed, ptr null, ptr @__traceiter_rpcgss_svc_unwrap_failed, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_rpcgss_svc_unwrap_failed = internal constant ptr @__tracepoint_rpcgss_svc_unwrap_failed, section "__tracepoints_ptrs", align 4
@__tpstrtab_rpcgss_svc_seqno_bad = internal constant [21 x i8] c"rpcgss_svc_seqno_bad\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_rpcgss_svc_seqno_bad = dso_local global %struct.static_call_key { ptr @__traceiter_rpcgss_svc_seqno_bad }, align 4
@__tracepoint_rpcgss_svc_seqno_bad = dso_local global %struct.tracepoint { ptr @__tpstrtab_rpcgss_svc_seqno_bad, %struct.static_key zeroinitializer, ptr @__SCK__tp_func_rpcgss_svc_seqno_bad, ptr null, ptr @__traceiter_rpcgss_svc_seqno_bad, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_rpcgss_svc_seqno_bad = internal constant ptr @__tracepoint_rpcgss_svc_seqno_bad, section "__tracepoints_ptrs", align 4
@__tpstrtab_rpcgss_svc_accept_upcall = internal constant [25 x i8] c"rpcgss_svc_accept_upcall\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_rpcgss_svc_accept_upcall = dso_local global %struct.static_call_key { ptr @__traceiter_rpcgss_svc_accept_upcall }, align 4
@__tracepoint_rpcgss_svc_accept_upcall = dso_local global %struct.tracepoint { ptr @__tpstrtab_rpcgss_svc_accept_upcall, %struct.static_key zeroinitializer, ptr @__SCK__tp_func_rpcgss_svc_accept_upcall, ptr null, ptr @__traceiter_rpcgss_svc_accept_upcall, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_rpcgss_svc_accept_upcall = internal constant ptr @__tracepoint_rpcgss_svc_accept_upcall, section "__tracepoints_ptrs", align 4
@__tpstrtab_rpcgss_svc_authenticate = internal constant [24 x i8] c"rpcgss_svc_authenticate\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_rpcgss_svc_authenticate = dso_local global %struct.static_call_key { ptr @__traceiter_rpcgss_svc_authenticate }, align 4
@__tracepoint_rpcgss_svc_authenticate = dso_local global %struct.tracepoint { ptr @__tpstrtab_rpcgss_svc_authenticate, %struct.static_key zeroinitializer, ptr @__SCK__tp_func_rpcgss_svc_authenticate, ptr null, ptr @__traceiter_rpcgss_svc_authenticate, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_rpcgss_svc_authenticate = internal constant ptr @__tracepoint_rpcgss_svc_authenticate, section "__tracepoints_ptrs", align 4
@__tpstrtab_rpcgss_unwrap_failed = internal constant [21 x i8] c"rpcgss_unwrap_failed\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_rpcgss_unwrap_failed = dso_local global %struct.static_call_key { ptr @__traceiter_rpcgss_unwrap_failed }, align 4
@__tracepoint_rpcgss_unwrap_failed = dso_local global %struct.tracepoint { ptr @__tpstrtab_rpcgss_unwrap_failed, %struct.static_key zeroinitializer, ptr @__SCK__tp_func_rpcgss_unwrap_failed, ptr null, ptr @__traceiter_rpcgss_unwrap_failed, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_rpcgss_unwrap_failed = internal constant ptr @__tracepoint_rpcgss_unwrap_failed, section "__tracepoints_ptrs", align 4
@__tpstrtab_rpcgss_bad_seqno = internal constant [17 x i8] c"rpcgss_bad_seqno\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_rpcgss_bad_seqno = dso_local global %struct.static_call_key { ptr @__traceiter_rpcgss_bad_seqno }, align 4
@__tracepoint_rpcgss_bad_seqno = dso_local global %struct.tracepoint { ptr @__tpstrtab_rpcgss_bad_seqno, %struct.static_key zeroinitializer, ptr @__SCK__tp_func_rpcgss_bad_seqno, ptr null, ptr @__traceiter_rpcgss_bad_seqno, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_rpcgss_bad_seqno = internal constant ptr @__tracepoint_rpcgss_bad_seqno, section "__tracepoints_ptrs", align 4
@__tpstrtab_rpcgss_seqno = internal constant [13 x i8] c"rpcgss_seqno\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_rpcgss_seqno = dso_local global %struct.static_call_key { ptr @__traceiter_rpcgss_seqno }, align 4
@__tracepoint_rpcgss_seqno = dso_local global %struct.tracepoint { ptr @__tpstrtab_rpcgss_seqno, %struct.static_key zeroinitializer, ptr @__SCK__tp_func_rpcgss_seqno, ptr null, ptr @__traceiter_rpcgss_seqno, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_rpcgss_seqno = internal constant ptr @__tracepoint_rpcgss_seqno, section "__tracepoints_ptrs", align 4
@__tpstrtab_rpcgss_need_reencode = internal constant [21 x i8] c"rpcgss_need_reencode\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_rpcgss_need_reencode = dso_local global %struct.static_call_key { ptr @__traceiter_rpcgss_need_reencode }, align 4
@__tracepoint_rpcgss_need_reencode = dso_local global %struct.tracepoint { ptr @__tpstrtab_rpcgss_need_reencode, %struct.static_key zeroinitializer, ptr @__SCK__tp_func_rpcgss_need_reencode, ptr null, ptr @__traceiter_rpcgss_need_reencode, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_rpcgss_need_reencode = internal constant ptr @__tracepoint_rpcgss_need_reencode, section "__tracepoints_ptrs", align 4
@__tpstrtab_rpcgss_update_slack = internal constant [20 x i8] c"rpcgss_update_slack\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_rpcgss_update_slack = dso_local global %struct.static_call_key { ptr @__traceiter_rpcgss_update_slack }, align 4
@__tracepoint_rpcgss_update_slack = dso_local global %struct.tracepoint { ptr @__tpstrtab_rpcgss_update_slack, %struct.static_key zeroinitializer, ptr @__SCK__tp_func_rpcgss_update_slack, ptr null, ptr @__traceiter_rpcgss_update_slack, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_rpcgss_update_slack = internal constant ptr @__tracepoint_rpcgss_update_slack, section "__tracepoints_ptrs", align 4
@__tpstrtab_rpcgss_svc_seqno_large = internal constant [23 x i8] c"rpcgss_svc_seqno_large\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_rpcgss_svc_seqno_large = dso_local global %struct.static_call_key { ptr @__traceiter_rpcgss_svc_seqno_large }, align 4
@__tracepoint_rpcgss_svc_seqno_large = dso_local global %struct.tracepoint { ptr @__tpstrtab_rpcgss_svc_seqno_large, %struct.static_key zeroinitializer, ptr @__SCK__tp_func_rpcgss_svc_seqno_large, ptr null, ptr @__traceiter_rpcgss_svc_seqno_large, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_rpcgss_svc_seqno_large = internal constant ptr @__tracepoint_rpcgss_svc_seqno_large, section "__tracepoints_ptrs", align 4
@__tpstrtab_rpcgss_svc_seqno_seen = internal constant [22 x i8] c"rpcgss_svc_seqno_seen\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_rpcgss_svc_seqno_seen = dso_local global %struct.static_call_key { ptr @__traceiter_rpcgss_svc_seqno_seen }, align 4
@__tracepoint_rpcgss_svc_seqno_seen = dso_local global %struct.tracepoint { ptr @__tpstrtab_rpcgss_svc_seqno_seen, %struct.static_key zeroinitializer, ptr @__SCK__tp_func_rpcgss_svc_seqno_seen, ptr null, ptr @__traceiter_rpcgss_svc_seqno_seen, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_rpcgss_svc_seqno_seen = internal constant ptr @__tracepoint_rpcgss_svc_seqno_seen, section "__tracepoints_ptrs", align 4
@__tpstrtab_rpcgss_svc_seqno_low = internal constant [21 x i8] c"rpcgss_svc_seqno_low\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_rpcgss_svc_seqno_low = dso_local global %struct.static_call_key { ptr @__traceiter_rpcgss_svc_seqno_low }, align 4
@__tracepoint_rpcgss_svc_seqno_low = dso_local global %struct.tracepoint { ptr @__tpstrtab_rpcgss_svc_seqno_low, %struct.static_key zeroinitializer, ptr @__SCK__tp_func_rpcgss_svc_seqno_low, ptr null, ptr @__traceiter_rpcgss_svc_seqno_low, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_rpcgss_svc_seqno_low = internal constant ptr @__tracepoint_rpcgss_svc_seqno_low, section "__tracepoints_ptrs", align 4
@__tpstrtab_rpcgss_upcall_msg = internal constant [18 x i8] c"rpcgss_upcall_msg\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_rpcgss_upcall_msg = dso_local global %struct.static_call_key { ptr @__traceiter_rpcgss_upcall_msg }, align 4
@__tracepoint_rpcgss_upcall_msg = dso_local global %struct.tracepoint { ptr @__tpstrtab_rpcgss_upcall_msg, %struct.static_key zeroinitializer, ptr @__SCK__tp_func_rpcgss_upcall_msg, ptr null, ptr @__traceiter_rpcgss_upcall_msg, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_rpcgss_upcall_msg = internal constant ptr @__tracepoint_rpcgss_upcall_msg, section "__tracepoints_ptrs", align 4
@__tpstrtab_rpcgss_upcall_result = internal constant [21 x i8] c"rpcgss_upcall_result\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_rpcgss_upcall_result = dso_local global %struct.static_call_key { ptr @__traceiter_rpcgss_upcall_result }, align 4
@__tracepoint_rpcgss_upcall_result = dso_local global %struct.tracepoint { ptr @__tpstrtab_rpcgss_upcall_result, %struct.static_key zeroinitializer, ptr @__SCK__tp_func_rpcgss_upcall_result, ptr null, ptr @__traceiter_rpcgss_upcall_result, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_rpcgss_upcall_result = internal constant ptr @__tracepoint_rpcgss_upcall_result, section "__tracepoints_ptrs", align 4
@__tpstrtab_rpcgss_context = internal constant [15 x i8] c"rpcgss_context\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_rpcgss_context = dso_local global %struct.static_call_key { ptr @__traceiter_rpcgss_context }, align 4
@__tracepoint_rpcgss_context = dso_local global %struct.tracepoint { ptr @__tpstrtab_rpcgss_context, %struct.static_key zeroinitializer, ptr @__SCK__tp_func_rpcgss_context, ptr null, ptr @__traceiter_rpcgss_context, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_rpcgss_context = internal constant ptr @__tracepoint_rpcgss_context, section "__tracepoints_ptrs", align 4
@__tpstrtab_rpcgss_createauth = internal constant [18 x i8] c"rpcgss_createauth\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_rpcgss_createauth = dso_local global %struct.static_call_key { ptr @__traceiter_rpcgss_createauth }, align 4
@__tracepoint_rpcgss_createauth = dso_local global %struct.tracepoint { ptr @__tpstrtab_rpcgss_createauth, %struct.static_key zeroinitializer, ptr @__SCK__tp_func_rpcgss_createauth, ptr null, ptr @__traceiter_rpcgss_createauth, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_rpcgss_createauth = internal constant ptr @__tracepoint_rpcgss_createauth, section "__tracepoints_ptrs", align 4
@__tpstrtab_rpcgss_oid_to_mech = internal constant [19 x i8] c"rpcgss_oid_to_mech\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_rpcgss_oid_to_mech = dso_local global %struct.static_call_key { ptr @__traceiter_rpcgss_oid_to_mech }, align 4
@__tracepoint_rpcgss_oid_to_mech = dso_local global %struct.tracepoint { ptr @__tpstrtab_rpcgss_oid_to_mech, %struct.static_key zeroinitializer, ptr @__SCK__tp_func_rpcgss_oid_to_mech, ptr null, ptr @__traceiter_rpcgss_oid_to_mech, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_rpcgss_oid_to_mech = internal constant ptr @__tracepoint_rpcgss_oid_to_mech, section "__tracepoints_ptrs", align 4
@str__rpcgss__trace_system_name = internal constant [7 x i8] c"rpcgss\00", align 1
@.str = private unnamed_addr constant [17 x i8] c"RPC_GSS_SVC_NONE\00", align 1
@__TRACE_SYSTEM_RPC_GSS_SVC_NONE = internal global %struct.trace_eval_map { ptr @str__rpcgss__trace_system_name, ptr @.str, i32 1 }, section ".init.data", align 4
@TRACE_SYSTEM_RPC_GSS_SVC_NONE = internal global ptr @__TRACE_SYSTEM_RPC_GSS_SVC_NONE, section "_ftrace_eval_map", align 4
@.str.1 = private unnamed_addr constant [22 x i8] c"RPC_GSS_SVC_INTEGRITY\00", align 1
@__TRACE_SYSTEM_RPC_GSS_SVC_INTEGRITY = internal global %struct.trace_eval_map { ptr @str__rpcgss__trace_system_name, ptr @.str.1, i32 2 }, section ".init.data", align 4
@TRACE_SYSTEM_RPC_GSS_SVC_INTEGRITY = internal global ptr @__TRACE_SYSTEM_RPC_GSS_SVC_INTEGRITY, section "_ftrace_eval_map", align 4
@.str.2 = private unnamed_addr constant [20 x i8] c"RPC_GSS_SVC_PRIVACY\00", align 1
@__TRACE_SYSTEM_RPC_GSS_SVC_PRIVACY = internal global %struct.trace_eval_map { ptr @str__rpcgss__trace_system_name, ptr @.str.2, i32 3 }, section ".init.data", align 4
@TRACE_SYSTEM_RPC_GSS_SVC_PRIVACY = internal global ptr @__TRACE_SYSTEM_RPC_GSS_SVC_PRIVACY, section "_ftrace_eval_map", align 4
@.str.3 = private unnamed_addr constant [15 x i8] c"GSS_S_BAD_MECH\00", align 1
@__TRACE_SYSTEM_GSS_S_BAD_MECH = internal global %struct.trace_eval_map { ptr @str__rpcgss__trace_system_name, ptr @.str.3, i32 65536 }, section ".init.data", align 4
@TRACE_SYSTEM_GSS_S_BAD_MECH = internal global ptr @__TRACE_SYSTEM_GSS_S_BAD_MECH, section "_ftrace_eval_map", align 4
@.str.4 = private unnamed_addr constant [15 x i8] c"GSS_S_BAD_NAME\00", align 1
@__TRACE_SYSTEM_GSS_S_BAD_NAME = internal global %struct.trace_eval_map { ptr @str__rpcgss__trace_system_name, ptr @.str.4, i32 131072 }, section ".init.data", align 4
@TRACE_SYSTEM_GSS_S_BAD_NAME = internal global ptr @__TRACE_SYSTEM_GSS_S_BAD_NAME, section "_ftrace_eval_map", align 4
@.str.5 = private unnamed_addr constant [19 x i8] c"GSS_S_BAD_NAMETYPE\00", align 1
@__TRACE_SYSTEM_GSS_S_BAD_NAMETYPE = internal global %struct.trace_eval_map { ptr @str__rpcgss__trace_system_name, ptr @.str.5, i32 196608 }, section ".init.data", align 4
@TRACE_SYSTEM_GSS_S_BAD_NAMETYPE = internal global ptr @__TRACE_SYSTEM_GSS_S_BAD_NAMETYPE, section "_ftrace_eval_map", align 4
@.str.6 = private unnamed_addr constant [19 x i8] c"GSS_S_BAD_BINDINGS\00", align 1
@__TRACE_SYSTEM_GSS_S_BAD_BINDINGS = internal global %struct.trace_eval_map { ptr @str__rpcgss__trace_system_name, ptr @.str.6, i32 262144 }, section ".init.data", align 4
@TRACE_SYSTEM_GSS_S_BAD_BINDINGS = internal global ptr @__TRACE_SYSTEM_GSS_S_BAD_BINDINGS, section "_ftrace_eval_map", align 4
@.str.7 = private unnamed_addr constant [17 x i8] c"GSS_S_BAD_STATUS\00", align 1
@__TRACE_SYSTEM_GSS_S_BAD_STATUS = internal global %struct.trace_eval_map { ptr @str__rpcgss__trace_system_name, ptr @.str.7, i32 327680 }, section ".init.data", align 4
@TRACE_SYSTEM_GSS_S_BAD_STATUS = internal global ptr @__TRACE_SYSTEM_GSS_S_BAD_STATUS, section "_ftrace_eval_map", align 4
@.str.8 = private unnamed_addr constant [14 x i8] c"GSS_S_BAD_SIG\00", align 1
@__TRACE_SYSTEM_GSS_S_BAD_SIG = internal global %struct.trace_eval_map { ptr @str__rpcgss__trace_system_name, ptr @.str.8, i32 393216 }, section ".init.data", align 4
@TRACE_SYSTEM_GSS_S_BAD_SIG = internal global ptr @__TRACE_SYSTEM_GSS_S_BAD_SIG, section "_ftrace_eval_map", align 4
@.str.9 = private unnamed_addr constant [14 x i8] c"GSS_S_NO_CRED\00", align 1
@__TRACE_SYSTEM_GSS_S_NO_CRED = internal global %struct.trace_eval_map { ptr @str__rpcgss__trace_system_name, ptr @.str.9, i32 458752 }, section ".init.data", align 4
@TRACE_SYSTEM_GSS_S_NO_CRED = internal global ptr @__TRACE_SYSTEM_GSS_S_NO_CRED, section "_ftrace_eval_map", align 4
@.str.10 = private unnamed_addr constant [17 x i8] c"GSS_S_NO_CONTEXT\00", align 1
@__TRACE_SYSTEM_GSS_S_NO_CONTEXT = internal global %struct.trace_eval_map { ptr @str__rpcgss__trace_system_name, ptr @.str.10, i32 524288 }, section ".init.data", align 4
@TRACE_SYSTEM_GSS_S_NO_CONTEXT = internal global ptr @__TRACE_SYSTEM_GSS_S_NO_CONTEXT, section "_ftrace_eval_map", align 4
@.str.11 = private unnamed_addr constant [22 x i8] c"GSS_S_DEFECTIVE_TOKEN\00", align 1
@__TRACE_SYSTEM_GSS_S_DEFECTIVE_TOKEN = internal global %struct.trace_eval_map { ptr @str__rpcgss__trace_system_name, ptr @.str.11, i32 589824 }, section ".init.data", align 4
@TRACE_SYSTEM_GSS_S_DEFECTIVE_TOKEN = internal global ptr @__TRACE_SYSTEM_GSS_S_DEFECTIVE_TOKEN, section "_ftrace_eval_map", align 4
@.str.12 = private unnamed_addr constant [27 x i8] c"GSS_S_DEFECTIVE_CREDENTIAL\00", align 1
@__TRACE_SYSTEM_GSS_S_DEFECTIVE_CREDENTIAL = internal global %struct.trace_eval_map { ptr @str__rpcgss__trace_system_name, ptr @.str.12, i32 655360 }, section ".init.data", align 4
@TRACE_SYSTEM_GSS_S_DEFECTIVE_CREDENTIAL = internal global ptr @__TRACE_SYSTEM_GSS_S_DEFECTIVE_CREDENTIAL, section "_ftrace_eval_map", align 4
@.str.13 = private unnamed_addr constant [26 x i8] c"GSS_S_CREDENTIALS_EXPIRED\00", align 1
@__TRACE_SYSTEM_GSS_S_CREDENTIALS_EXPIRED = internal global %struct.trace_eval_map { ptr @str__rpcgss__trace_system_name, ptr @.str.13, i32 720896 }, section ".init.data", align 4
@TRACE_SYSTEM_GSS_S_CREDENTIALS_EXPIRED = internal global ptr @__TRACE_SYSTEM_GSS_S_CREDENTIALS_EXPIRED, section "_ftrace_eval_map", align 4
@.str.14 = private unnamed_addr constant [22 x i8] c"GSS_S_CONTEXT_EXPIRED\00", align 1
@__TRACE_SYSTEM_GSS_S_CONTEXT_EXPIRED = internal global %struct.trace_eval_map { ptr @str__rpcgss__trace_system_name, ptr @.str.14, i32 786432 }, section ".init.data", align 4
@TRACE_SYSTEM_GSS_S_CONTEXT_EXPIRED = internal global ptr @__TRACE_SYSTEM_GSS_S_CONTEXT_EXPIRED, section "_ftrace_eval_map", align 4
@.str.15 = private unnamed_addr constant [14 x i8] c"GSS_S_FAILURE\00", align 1
@__TRACE_SYSTEM_GSS_S_FAILURE = internal global %struct.trace_eval_map { ptr @str__rpcgss__trace_system_name, ptr @.str.15, i32 851968 }, section ".init.data", align 4
@TRACE_SYSTEM_GSS_S_FAILURE = internal global ptr @__TRACE_SYSTEM_GSS_S_FAILURE, section "_ftrace_eval_map", align 4
@.str.16 = private unnamed_addr constant [14 x i8] c"GSS_S_BAD_QOP\00", align 1
@__TRACE_SYSTEM_GSS_S_BAD_QOP = internal global %struct.trace_eval_map { ptr @str__rpcgss__trace_system_name, ptr @.str.16, i32 917504 }, section ".init.data", align 4
@TRACE_SYSTEM_GSS_S_BAD_QOP = internal global ptr @__TRACE_SYSTEM_GSS_S_BAD_QOP, section "_ftrace_eval_map", align 4
@.str.17 = private unnamed_addr constant [19 x i8] c"GSS_S_UNAUTHORIZED\00", align 1
@__TRACE_SYSTEM_GSS_S_UNAUTHORIZED = internal global %struct.trace_eval_map { ptr @str__rpcgss__trace_system_name, ptr @.str.17, i32 983040 }, section ".init.data", align 4
@TRACE_SYSTEM_GSS_S_UNAUTHORIZED = internal global ptr @__TRACE_SYSTEM_GSS_S_UNAUTHORIZED, section "_ftrace_eval_map", align 4
@.str.18 = private unnamed_addr constant [18 x i8] c"GSS_S_UNAVAILABLE\00", align 1
@__TRACE_SYSTEM_GSS_S_UNAVAILABLE = internal global %struct.trace_eval_map { ptr @str__rpcgss__trace_system_name, ptr @.str.18, i32 1048576 }, section ".init.data", align 4
@TRACE_SYSTEM_GSS_S_UNAVAILABLE = internal global ptr @__TRACE_SYSTEM_GSS_S_UNAVAILABLE, section "_ftrace_eval_map", align 4
@.str.19 = private unnamed_addr constant [24 x i8] c"GSS_S_DUPLICATE_ELEMENT\00", align 1
@__TRACE_SYSTEM_GSS_S_DUPLICATE_ELEMENT = internal global %struct.trace_eval_map { ptr @str__rpcgss__trace_system_name, ptr @.str.19, i32 1114112 }, section ".init.data", align 4
@TRACE_SYSTEM_GSS_S_DUPLICATE_ELEMENT = internal global ptr @__TRACE_SYSTEM_GSS_S_DUPLICATE_ELEMENT, section "_ftrace_eval_map", align 4
@.str.20 = private unnamed_addr constant [18 x i8] c"GSS_S_NAME_NOT_MN\00", align 1
@__TRACE_SYSTEM_GSS_S_NAME_NOT_MN = internal global %struct.trace_eval_map { ptr @str__rpcgss__trace_system_name, ptr @.str.20, i32 1179648 }, section ".init.data", align 4
@TRACE_SYSTEM_GSS_S_NAME_NOT_MN = internal global ptr @__TRACE_SYSTEM_GSS_S_NAME_NOT_MN, section "_ftrace_eval_map", align 4
@.str.21 = private unnamed_addr constant [22 x i8] c"GSS_S_CONTINUE_NEEDED\00", align 1
@__TRACE_SYSTEM_GSS_S_CONTINUE_NEEDED = internal global %struct.trace_eval_map { ptr @str__rpcgss__trace_system_name, ptr @.str.21, i32 1 }, section ".init.data", align 4
@TRACE_SYSTEM_GSS_S_CONTINUE_NEEDED = internal global ptr @__TRACE_SYSTEM_GSS_S_CONTINUE_NEEDED, section "_ftrace_eval_map", align 4
@.str.22 = private unnamed_addr constant [22 x i8] c"GSS_S_DUPLICATE_TOKEN\00", align 1
@__TRACE_SYSTEM_GSS_S_DUPLICATE_TOKEN = internal global %struct.trace_eval_map { ptr @str__rpcgss__trace_system_name, ptr @.str.22, i32 2 }, section ".init.data", align 4
@TRACE_SYSTEM_GSS_S_DUPLICATE_TOKEN = internal global ptr @__TRACE_SYSTEM_GSS_S_DUPLICATE_TOKEN, section "_ftrace_eval_map", align 4
@.str.23 = private unnamed_addr constant [16 x i8] c"GSS_S_OLD_TOKEN\00", align 1
@__TRACE_SYSTEM_GSS_S_OLD_TOKEN = internal global %struct.trace_eval_map { ptr @str__rpcgss__trace_system_name, ptr @.str.23, i32 4 }, section ".init.data", align 4
@TRACE_SYSTEM_GSS_S_OLD_TOKEN = internal global ptr @__TRACE_SYSTEM_GSS_S_OLD_TOKEN, section "_ftrace_eval_map", align 4
@.str.24 = private unnamed_addr constant [18 x i8] c"GSS_S_UNSEQ_TOKEN\00", align 1
@__TRACE_SYSTEM_GSS_S_UNSEQ_TOKEN = internal global %struct.trace_eval_map { ptr @str__rpcgss__trace_system_name, ptr @.str.24, i32 8 }, section ".init.data", align 4
@TRACE_SYSTEM_GSS_S_UNSEQ_TOKEN = internal global ptr @__TRACE_SYSTEM_GSS_S_UNSEQ_TOKEN, section "_ftrace_eval_map", align 4
@.str.25 = private unnamed_addr constant [16 x i8] c"GSS_S_GAP_TOKEN\00", align 1
@__TRACE_SYSTEM_GSS_S_GAP_TOKEN = internal global %struct.trace_eval_map { ptr @str__rpcgss__trace_system_name, ptr @.str.25, i32 16 }, section ".init.data", align 4
@TRACE_SYSTEM_GSS_S_GAP_TOKEN = internal global ptr @__TRACE_SYSTEM_GSS_S_GAP_TOKEN, section "_ftrace_eval_map", align 4
@.str.26 = private unnamed_addr constant [18 x i8] c"RPC_AUTH_GSS_KRB5\00", align 1
@__TRACE_SYSTEM_RPC_AUTH_GSS_KRB5 = internal global %struct.trace_eval_map { ptr @str__rpcgss__trace_system_name, ptr @.str.26, i32 390003 }, section ".init.data", align 4
@TRACE_SYSTEM_RPC_AUTH_GSS_KRB5 = internal global ptr @__TRACE_SYSTEM_RPC_AUTH_GSS_KRB5, section "_ftrace_eval_map", align 4
@.str.27 = private unnamed_addr constant [19 x i8] c"RPC_AUTH_GSS_KRB5I\00", align 1
@__TRACE_SYSTEM_RPC_AUTH_GSS_KRB5I = internal global %struct.trace_eval_map { ptr @str__rpcgss__trace_system_name, ptr @.str.27, i32 390004 }, section ".init.data", align 4
@TRACE_SYSTEM_RPC_AUTH_GSS_KRB5I = internal global ptr @__TRACE_SYSTEM_RPC_AUTH_GSS_KRB5I, section "_ftrace_eval_map", align 4
@.str.28 = private unnamed_addr constant [19 x i8] c"RPC_AUTH_GSS_KRB5P\00", align 1
@__TRACE_SYSTEM_RPC_AUTH_GSS_KRB5P = internal global %struct.trace_eval_map { ptr @str__rpcgss__trace_system_name, ptr @.str.28, i32 390005 }, section ".init.data", align 4
@TRACE_SYSTEM_RPC_AUTH_GSS_KRB5P = internal global ptr @__TRACE_SYSTEM_RPC_AUTH_GSS_KRB5P, section "_ftrace_eval_map", align 4
@trace_event_fields_rpcgss_gssapi_event = internal global [4 x %struct.trace_event_fields] [%struct.trace_event_fields { ptr @.str.29, %union.anon.163 { %struct.anon.164 { ptr @.str.30, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.29, %union.anon.163 { %struct.anon.164 { ptr @.str.31, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.32, %union.anon.163 { %struct.anon.164 { ptr @.str.33, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields zeroinitializer], align 4
@event_class_rpcgss_gssapi_event = internal global %struct.trace_event_class { ptr @str__rpcgss__trace_system_name, ptr @trace_event_raw_event_rpcgss_gssapi_event, ptr @perf_trace_rpcgss_gssapi_event, ptr @trace_event_reg, ptr @trace_event_fields_rpcgss_gssapi_event, ptr null, %struct.list_head { ptr getelementptr (i8, ptr @event_class_rpcgss_gssapi_event, i64 24), ptr getelementptr (i8, ptr @event_class_rpcgss_gssapi_event, i64 24) }, ptr @trace_event_raw_init }, section ".ref.data", align 4
@trace_event_fields_rpcgss_import_ctx = internal global [2 x %struct.trace_event_fields] [%struct.trace_event_fields { ptr @.str.34, %union.anon.163 { %struct.anon.164 { ptr @.str.35, i32 4, i32 4, i32 1, i32 0 } } }, %struct.trace_event_fields zeroinitializer], align 4
@event_class_rpcgss_import_ctx = internal global %struct.trace_event_class { ptr @str__rpcgss__trace_system_name, ptr @trace_event_raw_event_rpcgss_import_ctx, ptr @perf_trace_rpcgss_import_ctx, ptr @trace_event_reg, ptr @trace_event_fields_rpcgss_import_ctx, ptr null, %struct.list_head { ptr getelementptr (i8, ptr @event_class_rpcgss_import_ctx, i64 24), ptr getelementptr (i8, ptr @event_class_rpcgss_import_ctx, i64 24) }, ptr @trace_event_raw_init }, section ".ref.data", align 4
@trace_event_type_funcs_rpcgss_import_ctx = internal global %struct.trace_event_functions { ptr @trace_raw_output_rpcgss_import_ctx, ptr null, ptr null, ptr null }, align 4
@print_fmt_rpcgss_import_ctx = internal global [25 x i8] c"\22status=%d\22, REC->status\00", align 1
@event_rpcgss_import_ctx = internal global %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_rpcgss_import_ctx, %union.anon.165 { ptr @__tracepoint_rpcgss_import_ctx }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_rpcgss_import_ctx }, ptr @print_fmt_rpcgss_import_ctx, ptr null, %union.anon.166 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, align 4
@__event_rpcgss_import_ctx = internal global ptr @event_rpcgss_import_ctx, section "_ftrace_events", align 4
@trace_event_type_funcs_rpcgss_gssapi_event = internal global %struct.trace_event_functions { ptr @trace_raw_output_rpcgss_gssapi_event, ptr null, ptr null, ptr null }, align 4
@print_fmt_rpcgss_gssapi_event = internal global [1298 x i8] c"\22task:%08x@%08x maj_stat=%s\22, REC->task_id, REC->client_id, REC->maj_stat == 0 ? \22GSS_S_COMPLETE\22 : __print_flags(REC->maj_stat, \22|\22, { (((OM_uint32) 1ul) << 16), \22GSS_S_BAD_MECH\22 }, { (((OM_uint32) 2ul) << 16), \22GSS_S_BAD_NAME\22 }, { (((OM_uint32) 3ul) << 16), \22GSS_S_BAD_NAMETYPE\22 }, { (((OM_uint32) 4ul) << 16), \22GSS_S_BAD_BINDINGS\22 }, { (((OM_uint32) 5ul) << 16), \22GSS_S_BAD_STATUS\22 }, { (((OM_uint32) 6ul) << 16), \22GSS_S_BAD_SIG\22 }, { (((OM_uint32) 7ul) << 16), \22GSS_S_NO_CRED\22 }, { (((OM_uint32) 8ul) << 16), \22GSS_S_NO_CONTEXT\22 }, { (((OM_uint32) 9ul) << 16), \22GSS_S_DEFECTIVE_TOKEN\22 }, { (((OM_uint32) 10ul) << 16), \22GSS_S_DEFECTIVE_CREDENTIAL\22 }, { (((OM_uint32) 11ul) << 16), \22GSS_S_CREDENTIALS_EXPIRED\22 }, { (((OM_uint32) 12ul) << 16), \22GSS_S_CONTEXT_EXPIRED\22 }, { (((OM_uint32) 13ul) << 16), \22GSS_S_FAILURE\22 }, { (((OM_uint32) 14ul) << 16), \22GSS_S_BAD_QOP\22 }, { (((OM_uint32) 15ul) << 16), \22GSS_S_UNAUTHORIZED\22 }, { (((OM_uint32) 16ul) << 16), \22GSS_S_UNAVAILABLE\22 }, { (((OM_uint32) 17ul) << 16), \22GSS_S_DUPLICATE_ELEMENT\22 }, { (((OM_uint32) 18ul) << 16), \22GSS_S_NAME_NOT_MN\22 }, { (1 << (0 + 0)), \22GSS_S_CONTINUE_NEEDED\22 }, { (1 << (0 + 1)), \22GSS_S_DUPLICATE_TOKEN\22 }, { (1 << (0 + 2)), \22GSS_S_OLD_TOKEN\22 }, { (1 << (0 + 3)), \22GSS_S_UNSEQ_TOKEN\22 }, { (1 << (0 + 4)), \22GSS_S_GAP_TOKEN\22 })\00", align 1
@event_rpcgss_get_mic = internal global %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_rpcgss_gssapi_event, %union.anon.165 { ptr @__tracepoint_rpcgss_get_mic }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_rpcgss_gssapi_event }, ptr @print_fmt_rpcgss_gssapi_event, ptr null, %union.anon.166 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, align 4
@__event_rpcgss_get_mic = internal global ptr @event_rpcgss_get_mic, section "_ftrace_events", align 4
@event_rpcgss_verify_mic = internal global %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_rpcgss_gssapi_event, %union.anon.165 { ptr @__tracepoint_rpcgss_verify_mic }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_rpcgss_gssapi_event }, ptr @print_fmt_rpcgss_gssapi_event, ptr null, %union.anon.166 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, align 4
@__event_rpcgss_verify_mic = internal global ptr @event_rpcgss_verify_mic, section "_ftrace_events", align 4
@event_rpcgss_wrap = internal global %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_rpcgss_gssapi_event, %union.anon.165 { ptr @__tracepoint_rpcgss_wrap }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_rpcgss_gssapi_event }, ptr @print_fmt_rpcgss_gssapi_event, ptr null, %union.anon.166 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, align 4
@__event_rpcgss_wrap = internal global ptr @event_rpcgss_wrap, section "_ftrace_events", align 4
@event_rpcgss_unwrap = internal global %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_rpcgss_gssapi_event, %union.anon.165 { ptr @__tracepoint_rpcgss_unwrap }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_rpcgss_gssapi_event }, ptr @print_fmt_rpcgss_gssapi_event, ptr null, %union.anon.166 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, align 4
@__event_rpcgss_unwrap = internal global ptr @event_rpcgss_unwrap, section "_ftrace_events", align 4
@trace_event_fields_rpcgss_ctx_class = internal global [4 x %struct.trace_event_fields] [%struct.trace_event_fields { ptr @.str.41, %union.anon.163 { %struct.anon.164 { ptr @.str.42, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.43, %union.anon.163 { %struct.anon.164 { ptr @.str.44, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.45, %union.anon.163 { %struct.anon.164 { ptr @.str.46, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields zeroinitializer], align 4
@event_class_rpcgss_ctx_class = internal global %struct.trace_event_class { ptr @str__rpcgss__trace_system_name, ptr @trace_event_raw_event_rpcgss_ctx_class, ptr @perf_trace_rpcgss_ctx_class, ptr @trace_event_reg, ptr @trace_event_fields_rpcgss_ctx_class, ptr null, %struct.list_head { ptr getelementptr (i8, ptr @event_class_rpcgss_ctx_class, i64 24), ptr getelementptr (i8, ptr @event_class_rpcgss_ctx_class, i64 24) }, ptr @trace_event_raw_init }, section ".ref.data", align 4
@trace_event_type_funcs_rpcgss_ctx_class = internal global %struct.trace_event_functions { ptr @trace_raw_output_rpcgss_ctx_class, ptr null, ptr null, ptr null }, align 4
@print_fmt_rpcgss_ctx_class = internal global [207 x i8] c"\22cred=%p service=%s principal='%s'\22, REC->cred, __print_symbolic(REC->service, { RPC_GSS_SVC_NONE, \22none\22 }, { RPC_GSS_SVC_INTEGRITY, \22integrity\22 }, { RPC_GSS_SVC_PRIVACY, \22privacy\22 }), __get_str(principal)\00", align 1
@event_rpcgss_ctx_init = internal global %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_rpcgss_ctx_class, %union.anon.165 { ptr @__tracepoint_rpcgss_ctx_init }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_rpcgss_ctx_class }, ptr @print_fmt_rpcgss_ctx_class, ptr null, %union.anon.166 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, align 4
@__event_rpcgss_ctx_init = internal global ptr @event_rpcgss_ctx_init, section "_ftrace_events", align 4
@event_rpcgss_ctx_destroy = internal global %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_rpcgss_ctx_class, %union.anon.165 { ptr @__tracepoint_rpcgss_ctx_destroy }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_rpcgss_ctx_class }, ptr @print_fmt_rpcgss_ctx_class, ptr null, %union.anon.166 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, align 4
@__event_rpcgss_ctx_destroy = internal global ptr @event_rpcgss_ctx_destroy, section "_ftrace_events", align 4
@trace_event_fields_rpcgss_svc_gssapi_class = internal global [4 x %struct.trace_event_fields] [%struct.trace_event_fields { ptr @.str.32, %union.anon.163 { %struct.anon.164 { ptr @.str.51, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.32, %union.anon.163 { %struct.anon.164 { ptr @.str.33, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.45, %union.anon.163 { %struct.anon.164 { ptr @.str.52, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields zeroinitializer], align 4
@event_class_rpcgss_svc_gssapi_class = internal global %struct.trace_event_class { ptr @str__rpcgss__trace_system_name, ptr @trace_event_raw_event_rpcgss_svc_gssapi_class, ptr @perf_trace_rpcgss_svc_gssapi_class, ptr @trace_event_reg, ptr @trace_event_fields_rpcgss_svc_gssapi_class, ptr null, %struct.list_head { ptr getelementptr (i8, ptr @event_class_rpcgss_svc_gssapi_class, i64 24), ptr getelementptr (i8, ptr @event_class_rpcgss_svc_gssapi_class, i64 24) }, ptr @trace_event_raw_init }, section ".ref.data", align 4
@trace_event_type_funcs_rpcgss_svc_gssapi_class = internal global %struct.trace_event_functions { ptr @trace_raw_output_rpcgss_svc_gssapi_class, ptr null, ptr null, ptr null }, align 4
@print_fmt_rpcgss_svc_gssapi_class = internal global [1299 x i8] c"\22addr=%s xid=0x%08x maj_stat=%s\22, __get_str(addr), REC->xid, REC->maj_stat == 0 ? \22GSS_S_COMPLETE\22 : __print_flags(REC->maj_stat, \22|\22, { (((OM_uint32) 1ul) << 16), \22GSS_S_BAD_MECH\22 }, { (((OM_uint32) 2ul) << 16), \22GSS_S_BAD_NAME\22 }, { (((OM_uint32) 3ul) << 16), \22GSS_S_BAD_NAMETYPE\22 }, { (((OM_uint32) 4ul) << 16), \22GSS_S_BAD_BINDINGS\22 }, { (((OM_uint32) 5ul) << 16), \22GSS_S_BAD_STATUS\22 }, { (((OM_uint32) 6ul) << 16), \22GSS_S_BAD_SIG\22 }, { (((OM_uint32) 7ul) << 16), \22GSS_S_NO_CRED\22 }, { (((OM_uint32) 8ul) << 16), \22GSS_S_NO_CONTEXT\22 }, { (((OM_uint32) 9ul) << 16), \22GSS_S_DEFECTIVE_TOKEN\22 }, { (((OM_uint32) 10ul) << 16), \22GSS_S_DEFECTIVE_CREDENTIAL\22 }, { (((OM_uint32) 11ul) << 16), \22GSS_S_CREDENTIALS_EXPIRED\22 }, { (((OM_uint32) 12ul) << 16), \22GSS_S_CONTEXT_EXPIRED\22 }, { (((OM_uint32) 13ul) << 16), \22GSS_S_FAILURE\22 }, { (((OM_uint32) 14ul) << 16), \22GSS_S_BAD_QOP\22 }, { (((OM_uint32) 15ul) << 16), \22GSS_S_UNAUTHORIZED\22 }, { (((OM_uint32) 16ul) << 16), \22GSS_S_UNAVAILABLE\22 }, { (((OM_uint32) 17ul) << 16), \22GSS_S_DUPLICATE_ELEMENT\22 }, { (((OM_uint32) 18ul) << 16), \22GSS_S_NAME_NOT_MN\22 }, { (1 << (0 + 0)), \22GSS_S_CONTINUE_NEEDED\22 }, { (1 << (0 + 1)), \22GSS_S_DUPLICATE_TOKEN\22 }, { (1 << (0 + 2)), \22GSS_S_OLD_TOKEN\22 }, { (1 << (0 + 3)), \22GSS_S_UNSEQ_TOKEN\22 }, { (1 << (0 + 4)), \22GSS_S_GAP_TOKEN\22 })\00", align 1
@event_rpcgss_svc_unwrap = internal global %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_rpcgss_svc_gssapi_class, %union.anon.165 { ptr @__tracepoint_rpcgss_svc_unwrap }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_rpcgss_svc_gssapi_class }, ptr @print_fmt_rpcgss_svc_gssapi_class, ptr null, %union.anon.166 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, align 4
@__event_rpcgss_svc_unwrap = internal global ptr @event_rpcgss_svc_unwrap, section "_ftrace_events", align 4
@event_rpcgss_svc_mic = internal global %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_rpcgss_svc_gssapi_class, %union.anon.165 { ptr @__tracepoint_rpcgss_svc_mic }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_rpcgss_svc_gssapi_class }, ptr @print_fmt_rpcgss_svc_gssapi_class, ptr null, %union.anon.166 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, align 4
@__event_rpcgss_svc_mic = internal global ptr @event_rpcgss_svc_mic, section "_ftrace_events", align 4
@trace_event_fields_rpcgss_svc_unwrap_failed = internal global [3 x %struct.trace_event_fields] [%struct.trace_event_fields { ptr @.str.32, %union.anon.163 { %struct.anon.164 { ptr @.str.51, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.45, %union.anon.163 { %struct.anon.164 { ptr @.str.52, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields zeroinitializer], align 4
@event_class_rpcgss_svc_unwrap_failed = internal global %struct.trace_event_class { ptr @str__rpcgss__trace_system_name, ptr @trace_event_raw_event_rpcgss_svc_unwrap_failed, ptr @perf_trace_rpcgss_svc_unwrap_failed, ptr @trace_event_reg, ptr @trace_event_fields_rpcgss_svc_unwrap_failed, ptr null, %struct.list_head { ptr getelementptr (i8, ptr @event_class_rpcgss_svc_unwrap_failed, i64 24), ptr getelementptr (i8, ptr @event_class_rpcgss_svc_unwrap_failed, i64 24) }, ptr @trace_event_raw_init }, section ".ref.data", align 4
@trace_event_type_funcs_rpcgss_svc_unwrap_failed = internal global %struct.trace_event_functions { ptr @trace_raw_output_rpcgss_svc_unwrap_failed, ptr null, ptr null, ptr null }, align 4
@print_fmt_rpcgss_svc_unwrap_failed = internal global [48 x i8] c"\22addr=%s xid=0x%08x\22, __get_str(addr), REC->xid\00", align 1
@event_rpcgss_svc_unwrap_failed = internal global %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_rpcgss_svc_unwrap_failed, %union.anon.165 { ptr @__tracepoint_rpcgss_svc_unwrap_failed }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_rpcgss_svc_unwrap_failed }, ptr @print_fmt_rpcgss_svc_unwrap_failed, ptr null, %union.anon.166 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, align 4
@__event_rpcgss_svc_unwrap_failed = internal global ptr @event_rpcgss_svc_unwrap_failed, section "_ftrace_events", align 4
@trace_event_fields_rpcgss_svc_seqno_bad = internal global [5 x %struct.trace_event_fields] [%struct.trace_event_fields { ptr @.str.32, %union.anon.163 { %struct.anon.164 { ptr @.str.55, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.32, %union.anon.163 { %struct.anon.164 { ptr @.str.56, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.32, %union.anon.163 { %struct.anon.164 { ptr @.str.51, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.45, %union.anon.163 { %struct.anon.164 { ptr @.str.52, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields zeroinitializer], align 4
@event_class_rpcgss_svc_seqno_bad = internal global %struct.trace_event_class { ptr @str__rpcgss__trace_system_name, ptr @trace_event_raw_event_rpcgss_svc_seqno_bad, ptr @perf_trace_rpcgss_svc_seqno_bad, ptr @trace_event_reg, ptr @trace_event_fields_rpcgss_svc_seqno_bad, ptr null, %struct.list_head { ptr getelementptr (i8, ptr @event_class_rpcgss_svc_seqno_bad, i64 24), ptr getelementptr (i8, ptr @event_class_rpcgss_svc_seqno_bad, i64 24) }, ptr @trace_event_raw_init }, section ".ref.data", align 4
@trace_event_type_funcs_rpcgss_svc_seqno_bad = internal global %struct.trace_event_functions { ptr @trace_raw_output_rpcgss_svc_seqno_bad, ptr null, ptr null, ptr null }, align 4
@print_fmt_rpcgss_svc_seqno_bad = internal global [115 x i8] c"\22addr=%s xid=0x%08x expected seqno %u, received seqno %u\22, __get_str(addr), REC->xid, REC->expected, REC->received\00", align 1
@event_rpcgss_svc_seqno_bad = internal global %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_rpcgss_svc_seqno_bad, %union.anon.165 { ptr @__tracepoint_rpcgss_svc_seqno_bad }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_rpcgss_svc_seqno_bad }, ptr @print_fmt_rpcgss_svc_seqno_bad, ptr null, %union.anon.166 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, align 4
@__event_rpcgss_svc_seqno_bad = internal global ptr @event_rpcgss_svc_seqno_bad, section "_ftrace_events", align 4
@trace_event_fields_rpcgss_svc_accept_upcall = internal global [5 x %struct.trace_event_fields] [%struct.trace_event_fields { ptr @.str.32, %union.anon.163 { %struct.anon.164 { ptr @.str.58, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.43, %union.anon.163 { %struct.anon.164 { ptr @.str.59, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.32, %union.anon.163 { %struct.anon.164 { ptr @.str.51, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.45, %union.anon.163 { %struct.anon.164 { ptr @.str.52, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields zeroinitializer], align 4
@event_class_rpcgss_svc_accept_upcall = internal global %struct.trace_event_class { ptr @str__rpcgss__trace_system_name, ptr @trace_event_raw_event_rpcgss_svc_accept_upcall, ptr @perf_trace_rpcgss_svc_accept_upcall, ptr @trace_event_reg, ptr @trace_event_fields_rpcgss_svc_accept_upcall, ptr null, %struct.list_head { ptr getelementptr (i8, ptr @event_class_rpcgss_svc_accept_upcall, i64 24), ptr getelementptr (i8, ptr @event_class_rpcgss_svc_accept_upcall, i64 24) }, ptr @trace_event_raw_init }, section ".ref.data", align 4
@trace_event_type_funcs_rpcgss_svc_accept_upcall = internal global %struct.trace_event_functions { ptr @trace_raw_output_rpcgss_svc_accept_upcall, ptr null, ptr null, ptr null }, align 4
@print_fmt_rpcgss_svc_accept_upcall = internal global [1377 x i8] c"\22addr=%s xid=0x%08x major_status=%s (0x%08lx) minor_status=%u\22, __get_str(addr), REC->xid, (REC->major_status == 0) ? \22GSS_S_COMPLETE\22 : __print_flags(REC->major_status, \22|\22, { (((OM_uint32) 1ul) << 16), \22GSS_S_BAD_MECH\22 }, { (((OM_uint32) 2ul) << 16), \22GSS_S_BAD_NAME\22 }, { (((OM_uint32) 3ul) << 16), \22GSS_S_BAD_NAMETYPE\22 }, { (((OM_uint32) 4ul) << 16), \22GSS_S_BAD_BINDINGS\22 }, { (((OM_uint32) 5ul) << 16), \22GSS_S_BAD_STATUS\22 }, { (((OM_uint32) 6ul) << 16), \22GSS_S_BAD_SIG\22 }, { (((OM_uint32) 7ul) << 16), \22GSS_S_NO_CRED\22 }, { (((OM_uint32) 8ul) << 16), \22GSS_S_NO_CONTEXT\22 }, { (((OM_uint32) 9ul) << 16), \22GSS_S_DEFECTIVE_TOKEN\22 }, { (((OM_uint32) 10ul) << 16), \22GSS_S_DEFECTIVE_CREDENTIAL\22 }, { (((OM_uint32) 11ul) << 16), \22GSS_S_CREDENTIALS_EXPIRED\22 }, { (((OM_uint32) 12ul) << 16), \22GSS_S_CONTEXT_EXPIRED\22 }, { (((OM_uint32) 13ul) << 16), \22GSS_S_FAILURE\22 }, { (((OM_uint32) 14ul) << 16), \22GSS_S_BAD_QOP\22 }, { (((OM_uint32) 15ul) << 16), \22GSS_S_UNAUTHORIZED\22 }, { (((OM_uint32) 16ul) << 16), \22GSS_S_UNAVAILABLE\22 }, { (((OM_uint32) 17ul) << 16), \22GSS_S_DUPLICATE_ELEMENT\22 }, { (((OM_uint32) 18ul) << 16), \22GSS_S_NAME_NOT_MN\22 }, { (1 << (0 + 0)), \22GSS_S_CONTINUE_NEEDED\22 }, { (1 << (0 + 1)), \22GSS_S_DUPLICATE_TOKEN\22 }, { (1 << (0 + 2)), \22GSS_S_OLD_TOKEN\22 }, { (1 << (0 + 3)), \22GSS_S_UNSEQ_TOKEN\22 }, { (1 << (0 + 4)), \22GSS_S_GAP_TOKEN\22 }), REC->major_status, REC->minor_status\00", align 1
@event_rpcgss_svc_accept_upcall = internal global %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_rpcgss_svc_accept_upcall, %union.anon.165 { ptr @__tracepoint_rpcgss_svc_accept_upcall }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_rpcgss_svc_accept_upcall }, ptr @print_fmt_rpcgss_svc_accept_upcall, ptr null, %union.anon.166 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, align 4
@__event_rpcgss_svc_accept_upcall = internal global ptr @event_rpcgss_svc_accept_upcall, section "_ftrace_events", align 4
@trace_event_fields_rpcgss_svc_authenticate = internal global [4 x %struct.trace_event_fields] [%struct.trace_event_fields { ptr @.str.32, %union.anon.163 { %struct.anon.164 { ptr @.str.61, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.32, %union.anon.163 { %struct.anon.164 { ptr @.str.51, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.45, %union.anon.163 { %struct.anon.164 { ptr @.str.52, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields zeroinitializer], align 4
@event_class_rpcgss_svc_authenticate = internal global %struct.trace_event_class { ptr @str__rpcgss__trace_system_name, ptr @trace_event_raw_event_rpcgss_svc_authenticate, ptr @perf_trace_rpcgss_svc_authenticate, ptr @trace_event_reg, ptr @trace_event_fields_rpcgss_svc_authenticate, ptr null, %struct.list_head { ptr getelementptr (i8, ptr @event_class_rpcgss_svc_authenticate, i64 24), ptr getelementptr (i8, ptr @event_class_rpcgss_svc_authenticate, i64 24) }, ptr @trace_event_raw_init }, section ".ref.data", align 4
@trace_event_type_funcs_rpcgss_svc_authenticate = internal global %struct.trace_event_functions { ptr @trace_raw_output_rpcgss_svc_authenticate, ptr null, ptr null, ptr null }, align 4
@print_fmt_rpcgss_svc_authenticate = internal global [69 x i8] c"\22addr=%s xid=0x%08x seqno=%u\22, __get_str(addr), REC->xid, REC->seqno\00", align 1
@event_rpcgss_svc_authenticate = internal global %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_rpcgss_svc_authenticate, %union.anon.165 { ptr @__tracepoint_rpcgss_svc_authenticate }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_rpcgss_svc_authenticate }, ptr @print_fmt_rpcgss_svc_authenticate, ptr null, %union.anon.166 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, align 4
@__event_rpcgss_svc_authenticate = internal global ptr @event_rpcgss_svc_authenticate, section "_ftrace_events", align 4
@trace_event_fields_rpcgss_unwrap_failed = internal global [3 x %struct.trace_event_fields] [%struct.trace_event_fields { ptr @.str.29, %union.anon.163 { %struct.anon.164 { ptr @.str.30, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.29, %union.anon.163 { %struct.anon.164 { ptr @.str.31, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields zeroinitializer], align 4
@event_class_rpcgss_unwrap_failed = internal global %struct.trace_event_class { ptr @str__rpcgss__trace_system_name, ptr @trace_event_raw_event_rpcgss_unwrap_failed, ptr @perf_trace_rpcgss_unwrap_failed, ptr @trace_event_reg, ptr @trace_event_fields_rpcgss_unwrap_failed, ptr null, %struct.list_head { ptr getelementptr (i8, ptr @event_class_rpcgss_unwrap_failed, i64 24), ptr getelementptr (i8, ptr @event_class_rpcgss_unwrap_failed, i64 24) }, ptr @trace_event_raw_init }, section ".ref.data", align 4
@trace_event_type_funcs_rpcgss_unwrap_failed = internal global %struct.trace_event_functions { ptr @trace_raw_output_rpcgss_unwrap_failed, ptr null, ptr null, ptr null }, align 4
@print_fmt_rpcgss_unwrap_failed = internal global [47 x i8] c"\22task:%08x@%08x\22, REC->task_id, REC->client_id\00", align 1
@event_rpcgss_unwrap_failed = internal global %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_rpcgss_unwrap_failed, %union.anon.165 { ptr @__tracepoint_rpcgss_unwrap_failed }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_rpcgss_unwrap_failed }, ptr @print_fmt_rpcgss_unwrap_failed, ptr null, %union.anon.166 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, align 4
@__event_rpcgss_unwrap_failed = internal global ptr @event_rpcgss_unwrap_failed, section "_ftrace_events", align 4
@trace_event_fields_rpcgss_bad_seqno = internal global [5 x %struct.trace_event_fields] [%struct.trace_event_fields { ptr @.str.29, %union.anon.163 { %struct.anon.164 { ptr @.str.30, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.29, %union.anon.163 { %struct.anon.164 { ptr @.str.31, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.32, %union.anon.163 { %struct.anon.164 { ptr @.str.55, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.32, %union.anon.163 { %struct.anon.164 { ptr @.str.56, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields zeroinitializer], align 4
@event_class_rpcgss_bad_seqno = internal global %struct.trace_event_class { ptr @str__rpcgss__trace_system_name, ptr @trace_event_raw_event_rpcgss_bad_seqno, ptr @perf_trace_rpcgss_bad_seqno, ptr @trace_event_reg, ptr @trace_event_fields_rpcgss_bad_seqno, ptr null, %struct.list_head { ptr getelementptr (i8, ptr @event_class_rpcgss_bad_seqno, i64 24), ptr getelementptr (i8, ptr @event_class_rpcgss_bad_seqno, i64 24) }, ptr @trace_event_raw_init }, section ".ref.data", align 4
@trace_event_type_funcs_rpcgss_bad_seqno = internal global %struct.trace_event_functions { ptr @trace_raw_output_rpcgss_bad_seqno, ptr null, ptr null, ptr null }, align 4
@print_fmt_rpcgss_bad_seqno = internal global [114 x i8] c"\22task:%08x@%08x expected seqno %u, received seqno %u\22, REC->task_id, REC->client_id, REC->expected, REC->received\00", align 1
@event_rpcgss_bad_seqno = internal global %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_rpcgss_bad_seqno, %union.anon.165 { ptr @__tracepoint_rpcgss_bad_seqno }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_rpcgss_bad_seqno }, ptr @print_fmt_rpcgss_bad_seqno, ptr null, %union.anon.166 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, align 4
@__event_rpcgss_bad_seqno = internal global ptr @event_rpcgss_bad_seqno, section "_ftrace_events", align 4
@trace_event_fields_rpcgss_seqno = internal global [5 x %struct.trace_event_fields] [%struct.trace_event_fields { ptr @.str.29, %union.anon.163 { %struct.anon.164 { ptr @.str.30, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.29, %union.anon.163 { %struct.anon.164 { ptr @.str.31, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.32, %union.anon.163 { %struct.anon.164 { ptr @.str.51, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.32, %union.anon.163 { %struct.anon.164 { ptr @.str.61, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields zeroinitializer], align 4
@event_class_rpcgss_seqno = internal global %struct.trace_event_class { ptr @str__rpcgss__trace_system_name, ptr @trace_event_raw_event_rpcgss_seqno, ptr @perf_trace_rpcgss_seqno, ptr @trace_event_reg, ptr @trace_event_fields_rpcgss_seqno, ptr null, %struct.list_head { ptr getelementptr (i8, ptr @event_class_rpcgss_seqno, i64 24), ptr getelementptr (i8, ptr @event_class_rpcgss_seqno, i64 24) }, ptr @trace_event_raw_init }, section ".ref.data", align 4
@trace_event_type_funcs_rpcgss_seqno = internal global %struct.trace_event_functions { ptr @trace_raw_output_rpcgss_seqno, ptr null, ptr null, ptr null }, align 4
@print_fmt_rpcgss_seqno = internal global [89 x i8] c"\22task:%08x@%08x xid=0x%08x seqno=%u\22, REC->task_id, REC->client_id, REC->xid, REC->seqno\00", align 1
@event_rpcgss_seqno = internal global %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_rpcgss_seqno, %union.anon.165 { ptr @__tracepoint_rpcgss_seqno }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_rpcgss_seqno }, ptr @print_fmt_rpcgss_seqno, ptr null, %union.anon.166 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, align 4
@__event_rpcgss_seqno = internal global ptr @event_rpcgss_seqno, section "_ftrace_events", align 4
@trace_event_fields_rpcgss_need_reencode = internal global [7 x %struct.trace_event_fields] [%struct.trace_event_fields { ptr @.str.29, %union.anon.163 { %struct.anon.164 { ptr @.str.30, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.29, %union.anon.163 { %struct.anon.164 { ptr @.str.31, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.32, %union.anon.163 { %struct.anon.164 { ptr @.str.51, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.32, %union.anon.163 { %struct.anon.164 { ptr @.str.66, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.32, %union.anon.163 { %struct.anon.164 { ptr @.str.61, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.67, %union.anon.163 { %struct.anon.164 { ptr @.str.68, i32 1, i32 1, i32 0, i32 0 } } }, %struct.trace_event_fields zeroinitializer], align 4
@event_class_rpcgss_need_reencode = internal global %struct.trace_event_class { ptr @str__rpcgss__trace_system_name, ptr @trace_event_raw_event_rpcgss_need_reencode, ptr @perf_trace_rpcgss_need_reencode, ptr @trace_event_reg, ptr @trace_event_fields_rpcgss_need_reencode, ptr null, %struct.list_head { ptr getelementptr (i8, ptr @event_class_rpcgss_need_reencode, i64 24), ptr getelementptr (i8, ptr @event_class_rpcgss_need_reencode, i64 24) }, ptr @trace_event_raw_init }, section ".ref.data", align 4
@trace_event_type_funcs_rpcgss_need_reencode = internal global %struct.trace_event_functions { ptr @trace_raw_output_rpcgss_need_reencode, ptr null, ptr null, ptr null }, align 4
@print_fmt_rpcgss_need_reencode = internal global [159 x i8] c"\22task:%08x@%08x xid=0x%08x rq_seqno=%u seq_xmit=%u reencode %sneeded\22, REC->task_id, REC->client_id, REC->xid, REC->seqno, REC->seq_xmit, REC->ret ? \22\22 : \22un\22\00", align 1
@event_rpcgss_need_reencode = internal global %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_rpcgss_need_reencode, %union.anon.165 { ptr @__tracepoint_rpcgss_need_reencode }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_rpcgss_need_reencode }, ptr @print_fmt_rpcgss_need_reencode, ptr null, %union.anon.166 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, align 4
@__event_rpcgss_need_reencode = internal global ptr @event_rpcgss_need_reencode, section "_ftrace_events", align 4
@trace_event_fields_rpcgss_update_slack = internal global [8 x %struct.trace_event_fields] [%struct.trace_event_fields { ptr @.str.29, %union.anon.163 { %struct.anon.164 { ptr @.str.30, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.29, %union.anon.163 { %struct.anon.164 { ptr @.str.31, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.32, %union.anon.163 { %struct.anon.164 { ptr @.str.51, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.41, %union.anon.163 { %struct.anon.164 { ptr @.str.72, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.29, %union.anon.163 { %struct.anon.164 { ptr @.str.73, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.29, %union.anon.163 { %struct.anon.164 { ptr @.str.74, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.29, %union.anon.163 { %struct.anon.164 { ptr @.str.75, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields zeroinitializer], align 4
@event_class_rpcgss_update_slack = internal global %struct.trace_event_class { ptr @str__rpcgss__trace_system_name, ptr @trace_event_raw_event_rpcgss_update_slack, ptr @perf_trace_rpcgss_update_slack, ptr @trace_event_reg, ptr @trace_event_fields_rpcgss_update_slack, ptr null, %struct.list_head { ptr getelementptr (i8, ptr @event_class_rpcgss_update_slack, i64 24), ptr getelementptr (i8, ptr @event_class_rpcgss_update_slack, i64 24) }, ptr @trace_event_raw_init }, section ".ref.data", align 4
@trace_event_type_funcs_rpcgss_update_slack = internal global %struct.trace_event_functions { ptr @trace_raw_output_rpcgss_update_slack, ptr null, ptr null, ptr null }, align 4
@print_fmt_rpcgss_update_slack = internal global [161 x i8] c"\22task:%08x@%08x xid=0x%08x auth=%p rslack=%u ralign=%u verfsize=%u\0A\22, REC->task_id, REC->client_id, REC->xid, REC->auth, REC->rslack, REC->ralign, REC->verfsize\00", align 1
@event_rpcgss_update_slack = internal global %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_rpcgss_update_slack, %union.anon.165 { ptr @__tracepoint_rpcgss_update_slack }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_rpcgss_update_slack }, ptr @print_fmt_rpcgss_update_slack, ptr null, %union.anon.166 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, align 4
@__event_rpcgss_update_slack = internal global ptr @event_rpcgss_update_slack, section "_ftrace_events", align 4
@trace_event_fields_rpcgss_svc_seqno_class = internal global [3 x %struct.trace_event_fields] [%struct.trace_event_fields { ptr @.str.32, %union.anon.163 { %struct.anon.164 { ptr @.str.51, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.32, %union.anon.163 { %struct.anon.164 { ptr @.str.61, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields zeroinitializer], align 4
@event_class_rpcgss_svc_seqno_class = internal global %struct.trace_event_class { ptr @str__rpcgss__trace_system_name, ptr @trace_event_raw_event_rpcgss_svc_seqno_class, ptr @perf_trace_rpcgss_svc_seqno_class, ptr @trace_event_reg, ptr @trace_event_fields_rpcgss_svc_seqno_class, ptr null, %struct.list_head { ptr getelementptr (i8, ptr @event_class_rpcgss_svc_seqno_class, i64 24), ptr getelementptr (i8, ptr @event_class_rpcgss_svc_seqno_class, i64 24) }, ptr @trace_event_raw_init }, section ".ref.data", align 4
@trace_event_type_funcs_rpcgss_svc_seqno_class = internal global %struct.trace_event_functions { ptr @trace_raw_output_rpcgss_svc_seqno_class, ptr null, ptr null, ptr null }, align 4
@print_fmt_rpcgss_svc_seqno_class = internal global [44 x i8] c"\22xid=0x%08x seqno=%u\22, REC->xid, REC->seqno\00", align 1
@event_rpcgss_svc_seqno_large = internal global %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_rpcgss_svc_seqno_class, %union.anon.165 { ptr @__tracepoint_rpcgss_svc_seqno_large }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_rpcgss_svc_seqno_class }, ptr @print_fmt_rpcgss_svc_seqno_class, ptr null, %union.anon.166 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, align 4
@__event_rpcgss_svc_seqno_large = internal global ptr @event_rpcgss_svc_seqno_large, section "_ftrace_events", align 4
@event_rpcgss_svc_seqno_seen = internal global %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_rpcgss_svc_seqno_class, %union.anon.165 { ptr @__tracepoint_rpcgss_svc_seqno_seen }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_rpcgss_svc_seqno_class }, ptr @print_fmt_rpcgss_svc_seqno_class, ptr null, %union.anon.166 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, align 4
@__event_rpcgss_svc_seqno_seen = internal global ptr @event_rpcgss_svc_seqno_seen, section "_ftrace_events", align 4
@trace_event_fields_rpcgss_svc_seqno_low = internal global [5 x %struct.trace_event_fields] [%struct.trace_event_fields { ptr @.str.32, %union.anon.163 { %struct.anon.164 { ptr @.str.51, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.32, %union.anon.163 { %struct.anon.164 { ptr @.str.61, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.32, %union.anon.163 { %struct.anon.164 { ptr @.str.78, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.32, %union.anon.163 { %struct.anon.164 { ptr @.str.79, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields zeroinitializer], align 4
@event_class_rpcgss_svc_seqno_low = internal global %struct.trace_event_class { ptr @str__rpcgss__trace_system_name, ptr @trace_event_raw_event_rpcgss_svc_seqno_low, ptr @perf_trace_rpcgss_svc_seqno_low, ptr @trace_event_reg, ptr @trace_event_fields_rpcgss_svc_seqno_low, ptr null, %struct.list_head { ptr getelementptr (i8, ptr @event_class_rpcgss_svc_seqno_low, i64 24), ptr getelementptr (i8, ptr @event_class_rpcgss_svc_seqno_low, i64 24) }, ptr @trace_event_raw_init }, section ".ref.data", align 4
@trace_event_type_funcs_rpcgss_svc_seqno_low = internal global %struct.trace_event_functions { ptr @trace_raw_output_rpcgss_svc_seqno_low, ptr null, ptr null, ptr null }, align 4
@print_fmt_rpcgss_svc_seqno_low = internal global [80 x i8] c"\22xid=0x%08x seqno=%u window=[%u..%u]\22, REC->xid, REC->seqno, REC->min, REC->max\00", align 1
@event_rpcgss_svc_seqno_low = internal global %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_rpcgss_svc_seqno_low, %union.anon.165 { ptr @__tracepoint_rpcgss_svc_seqno_low }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_rpcgss_svc_seqno_low }, ptr @print_fmt_rpcgss_svc_seqno_low, ptr null, %union.anon.166 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, align 4
@__event_rpcgss_svc_seqno_low = internal global ptr @event_rpcgss_svc_seqno_low, section "_ftrace_events", align 4
@trace_event_fields_rpcgss_upcall_msg = internal global [2 x %struct.trace_event_fields] [%struct.trace_event_fields { ptr @.str.45, %union.anon.163 { %struct.anon.164 { ptr @.str.81, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields zeroinitializer], align 4
@event_class_rpcgss_upcall_msg = internal global %struct.trace_event_class { ptr @str__rpcgss__trace_system_name, ptr @trace_event_raw_event_rpcgss_upcall_msg, ptr @perf_trace_rpcgss_upcall_msg, ptr @trace_event_reg, ptr @trace_event_fields_rpcgss_upcall_msg, ptr null, %struct.list_head { ptr getelementptr (i8, ptr @event_class_rpcgss_upcall_msg, i64 24), ptr getelementptr (i8, ptr @event_class_rpcgss_upcall_msg, i64 24) }, ptr @trace_event_raw_init }, section ".ref.data", align 4
@trace_event_type_funcs_rpcgss_upcall_msg = internal global %struct.trace_event_functions { ptr @trace_raw_output_rpcgss_upcall_msg, ptr null, ptr null, ptr null }, align 4
@print_fmt_rpcgss_upcall_msg = internal global [27 x i8] c"\22msg='%s'\22, __get_str(msg)\00", align 1
@event_rpcgss_upcall_msg = internal global %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_rpcgss_upcall_msg, %union.anon.165 { ptr @__tracepoint_rpcgss_upcall_msg }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_rpcgss_upcall_msg }, ptr @print_fmt_rpcgss_upcall_msg, ptr null, %union.anon.166 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, align 4
@__event_rpcgss_upcall_msg = internal global ptr @event_rpcgss_upcall_msg, section "_ftrace_events", align 4
@trace_event_fields_rpcgss_upcall_result = internal global [3 x %struct.trace_event_fields] [%struct.trace_event_fields { ptr @.str.32, %union.anon.163 { %struct.anon.164 { ptr @.str.83, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.34, %union.anon.163 { %struct.anon.164 { ptr @.str.84, i32 4, i32 4, i32 1, i32 0 } } }, %struct.trace_event_fields zeroinitializer], align 4
@event_class_rpcgss_upcall_result = internal global %struct.trace_event_class { ptr @str__rpcgss__trace_system_name, ptr @trace_event_raw_event_rpcgss_upcall_result, ptr @perf_trace_rpcgss_upcall_result, ptr @trace_event_reg, ptr @trace_event_fields_rpcgss_upcall_result, ptr null, %struct.list_head { ptr getelementptr (i8, ptr @event_class_rpcgss_upcall_result, i64 24), ptr getelementptr (i8, ptr @event_class_rpcgss_upcall_result, i64 24) }, ptr @trace_event_raw_init }, section ".ref.data", align 4
@trace_event_type_funcs_rpcgss_upcall_result = internal global %struct.trace_event_functions { ptr @trace_raw_output_rpcgss_upcall_result, ptr null, ptr null, ptr null }, align 4
@print_fmt_rpcgss_upcall_result = internal global [47 x i8] c"\22for uid %u, result=%d\22, REC->uid, REC->result\00", align 1
@event_rpcgss_upcall_result = internal global %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_rpcgss_upcall_result, %union.anon.165 { ptr @__tracepoint_rpcgss_upcall_result }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_rpcgss_upcall_result }, ptr @print_fmt_rpcgss_upcall_result, ptr null, %union.anon.166 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, align 4
@__event_rpcgss_upcall_result = internal global ptr @event_rpcgss_upcall_result, section "_ftrace_events", align 4
@trace_event_fields_rpcgss_context = internal global [7 x %struct.trace_event_fields] [%struct.trace_event_fields { ptr @.str.43, %union.anon.163 { %struct.anon.164 { ptr @.str.86, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.43, %union.anon.163 { %struct.anon.164 { ptr @.str.87, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.29, %union.anon.163 { %struct.anon.164 { ptr @.str.88, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.32, %union.anon.163 { %struct.anon.164 { ptr @.str.89, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.34, %union.anon.163 { %struct.anon.164 { ptr @.str.90, i32 4, i32 4, i32 1, i32 0 } } }, %struct.trace_event_fields { ptr @.str.45, %union.anon.163 { %struct.anon.164 { ptr @.str.91, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields zeroinitializer], align 4
@event_class_rpcgss_context = internal global %struct.trace_event_class { ptr @str__rpcgss__trace_system_name, ptr @trace_event_raw_event_rpcgss_context, ptr @perf_trace_rpcgss_context, ptr @trace_event_reg, ptr @trace_event_fields_rpcgss_context, ptr null, %struct.list_head { ptr getelementptr (i8, ptr @event_class_rpcgss_context, i64 24), ptr getelementptr (i8, ptr @event_class_rpcgss_context, i64 24) }, ptr @trace_event_raw_init }, section ".ref.data", align 4
@trace_event_type_funcs_rpcgss_context = internal global %struct.trace_event_functions { ptr @trace_raw_output_rpcgss_context, ptr null, ptr null, ptr null }, align 4
@print_fmt_rpcgss_context = internal global [144 x i8] c"\22win_size=%u expiry=%lu now=%lu timeout=%u acceptor=%.*s\22, REC->window_size, REC->expiry, REC->now, REC->timeout, REC->len, __get_str(acceptor)\00", align 1
@event_rpcgss_context = internal global %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_rpcgss_context, %union.anon.165 { ptr @__tracepoint_rpcgss_context }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_rpcgss_context }, ptr @print_fmt_rpcgss_context, ptr null, %union.anon.166 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, align 4
@__event_rpcgss_context = internal global ptr @event_rpcgss_context, section "_ftrace_events", align 4
@trace_event_fields_rpcgss_createauth = internal global [3 x %struct.trace_event_fields] [%struct.trace_event_fields { ptr @.str.29, %union.anon.163 { %struct.anon.164 { ptr @.str.93, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.34, %union.anon.163 { %struct.anon.164 { ptr @.str.94, i32 4, i32 4, i32 1, i32 0 } } }, %struct.trace_event_fields zeroinitializer], align 4
@event_class_rpcgss_createauth = internal global %struct.trace_event_class { ptr @str__rpcgss__trace_system_name, ptr @trace_event_raw_event_rpcgss_createauth, ptr @perf_trace_rpcgss_createauth, ptr @trace_event_reg, ptr @trace_event_fields_rpcgss_createauth, ptr null, %struct.list_head { ptr getelementptr (i8, ptr @event_class_rpcgss_createauth, i64 24), ptr getelementptr (i8, ptr @event_class_rpcgss_createauth, i64 24) }, ptr @trace_event_raw_init }, section ".ref.data", align 4
@trace_event_type_funcs_rpcgss_createauth = internal global %struct.trace_event_functions { ptr @trace_raw_output_rpcgss_createauth, ptr null, ptr null, ptr null }, align 4
@print_fmt_rpcgss_createauth = internal global [200 x i8] c"\22flavor=%s error=%d\22, __print_symbolic(REC->flavor, { RPC_AUTH_GSS_KRB5, \22RPC_AUTH_GSS_KRB5\22 }, { RPC_AUTH_GSS_KRB5I, \22RPC_AUTH_GSS_KRB5I\22 }, { RPC_AUTH_GSS_KRB5P, \22RPC_AUTH_GSS_KRB5P\22 }), REC->error\00", align 1
@event_rpcgss_createauth = internal global %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_rpcgss_createauth, %union.anon.165 { ptr @__tracepoint_rpcgss_createauth }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_rpcgss_createauth }, ptr @print_fmt_rpcgss_createauth, ptr null, %union.anon.166 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, align 4
@__event_rpcgss_createauth = internal global ptr @event_rpcgss_createauth, section "_ftrace_events", align 4
@trace_event_fields_rpcgss_oid_to_mech = internal global [2 x %struct.trace_event_fields] [%struct.trace_event_fields { ptr @.str.45, %union.anon.163 { %struct.anon.164 { ptr @.str.96, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields zeroinitializer], align 4
@event_class_rpcgss_oid_to_mech = internal global %struct.trace_event_class { ptr @str__rpcgss__trace_system_name, ptr @trace_event_raw_event_rpcgss_oid_to_mech, ptr @perf_trace_rpcgss_oid_to_mech, ptr @trace_event_reg, ptr @trace_event_fields_rpcgss_oid_to_mech, ptr null, %struct.list_head { ptr getelementptr (i8, ptr @event_class_rpcgss_oid_to_mech, i64 24), ptr getelementptr (i8, ptr @event_class_rpcgss_oid_to_mech, i64 24) }, ptr @trace_event_raw_init }, section ".ref.data", align 4
@trace_event_type_funcs_rpcgss_oid_to_mech = internal global %struct.trace_event_functions { ptr @trace_raw_output_rpcgss_oid_to_mech, ptr null, ptr null, ptr null }, align 4
@print_fmt_rpcgss_oid_to_mech = internal global [48 x i8] c"\22mech for oid %s was not found\22, __get_str(oid)\00", align 1
@event_rpcgss_oid_to_mech = internal global %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_rpcgss_oid_to_mech, %union.anon.165 { ptr @__tracepoint_rpcgss_oid_to_mech }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_rpcgss_oid_to_mech }, ptr @print_fmt_rpcgss_oid_to_mech, ptr null, %union.anon.166 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, align 4
@__event_rpcgss_oid_to_mech = internal global ptr @event_rpcgss_oid_to_mech, section "_ftrace_events", align 4
@.str.29 = private unnamed_addr constant [13 x i8] c"unsigned int\00", align 1
@.str.30 = private unnamed_addr constant [8 x i8] c"task_id\00", align 1
@.str.31 = private unnamed_addr constant [10 x i8] c"client_id\00", align 1
@.str.32 = private unnamed_addr constant [4 x i8] c"u32\00", align 1
@.str.33 = private unnamed_addr constant [9 x i8] c"maj_stat\00", align 1
@.str.34 = private unnamed_addr constant [4 x i8] c"int\00", align 1
@.str.35 = private unnamed_addr constant [7 x i8] c"status\00", align 1
@.str.36 = private unnamed_addr constant [11 x i8] c"status=%d\0A\00", align 1
@.str.37 = private unnamed_addr constant [28 x i8] c"task:%08x@%08x maj_stat=%s\0A\00", align 1
@.str.38 = private unnamed_addr constant [15 x i8] c"GSS_S_COMPLETE\00", align 1
@trace_raw_output_rpcgss_gssapi_event.__flags = internal constant [24 x %struct.trace_print_flags] [%struct.trace_print_flags { i32 65536, ptr @.str.3 }, %struct.trace_print_flags { i32 131072, ptr @.str.4 }, %struct.trace_print_flags { i32 196608, ptr @.str.5 }, %struct.trace_print_flags { i32 262144, ptr @.str.6 }, %struct.trace_print_flags { i32 327680, ptr @.str.7 }, %struct.trace_print_flags { i32 393216, ptr @.str.8 }, %struct.trace_print_flags { i32 458752, ptr @.str.9 }, %struct.trace_print_flags { i32 524288, ptr @.str.10 }, %struct.trace_print_flags { i32 589824, ptr @.str.11 }, %struct.trace_print_flags { i32 655360, ptr @.str.12 }, %struct.trace_print_flags { i32 720896, ptr @.str.13 }, %struct.trace_print_flags { i32 786432, ptr @.str.14 }, %struct.trace_print_flags { i32 851968, ptr @.str.15 }, %struct.trace_print_flags { i32 917504, ptr @.str.16 }, %struct.trace_print_flags { i32 983040, ptr @.str.17 }, %struct.trace_print_flags { i32 1048576, ptr @.str.18 }, %struct.trace_print_flags { i32 1114112, ptr @.str.19 }, %struct.trace_print_flags { i32 1179648, ptr @.str.20 }, %struct.trace_print_flags { i32 1, ptr @.str.21 }, %struct.trace_print_flags { i32 2, ptr @.str.22 }, %struct.trace_print_flags { i32 4, ptr @.str.23 }, %struct.trace_print_flags { i32 8, ptr @.str.24 }, %struct.trace_print_flags { i32 16, ptr @.str.25 }, %struct.trace_print_flags { i32 -1, ptr null }], align 4
@.str.39 = private unnamed_addr constant [2 x i8] c"|\00", align 1
@.str.40 = private unnamed_addr constant [7 x i8] c"(null)\00", align 1
@.str.41 = private unnamed_addr constant [13 x i8] c"const void *\00", align 1
@.str.42 = private unnamed_addr constant [5 x i8] c"cred\00", align 1
@.str.43 = private unnamed_addr constant [14 x i8] c"unsigned long\00", align 1
@.str.44 = private unnamed_addr constant [8 x i8] c"service\00", align 1
@.str.45 = private unnamed_addr constant [18 x i8] c"__data_loc char[]\00", align 1
@.str.46 = private unnamed_addr constant [10 x i8] c"principal\00", align 1
@.str.47 = private unnamed_addr constant [35 x i8] c"cred=%p service=%s principal='%s'\0A\00", align 1
@trace_raw_output_rpcgss_ctx_class.symbols = internal constant [4 x %struct.trace_print_flags] [%struct.trace_print_flags { i32 1, ptr @.str.48 }, %struct.trace_print_flags { i32 2, ptr @.str.49 }, %struct.trace_print_flags { i32 3, ptr @.str.50 }, %struct.trace_print_flags { i32 -1, ptr null }], align 4
@.str.48 = private unnamed_addr constant [5 x i8] c"none\00", align 1
@.str.49 = private unnamed_addr constant [10 x i8] c"integrity\00", align 1
@.str.50 = private unnamed_addr constant [8 x i8] c"privacy\00", align 1
@.str.51 = private unnamed_addr constant [4 x i8] c"xid\00", align 1
@.str.52 = private unnamed_addr constant [5 x i8] c"addr\00", align 1
@.str.53 = private unnamed_addr constant [32 x i8] c"addr=%s xid=0x%08x maj_stat=%s\0A\00", align 1
@trace_raw_output_rpcgss_svc_gssapi_class.__flags = internal constant [24 x %struct.trace_print_flags] [%struct.trace_print_flags { i32 65536, ptr @.str.3 }, %struct.trace_print_flags { i32 131072, ptr @.str.4 }, %struct.trace_print_flags { i32 196608, ptr @.str.5 }, %struct.trace_print_flags { i32 262144, ptr @.str.6 }, %struct.trace_print_flags { i32 327680, ptr @.str.7 }, %struct.trace_print_flags { i32 393216, ptr @.str.8 }, %struct.trace_print_flags { i32 458752, ptr @.str.9 }, %struct.trace_print_flags { i32 524288, ptr @.str.10 }, %struct.trace_print_flags { i32 589824, ptr @.str.11 }, %struct.trace_print_flags { i32 655360, ptr @.str.12 }, %struct.trace_print_flags { i32 720896, ptr @.str.13 }, %struct.trace_print_flags { i32 786432, ptr @.str.14 }, %struct.trace_print_flags { i32 851968, ptr @.str.15 }, %struct.trace_print_flags { i32 917504, ptr @.str.16 }, %struct.trace_print_flags { i32 983040, ptr @.str.17 }, %struct.trace_print_flags { i32 1048576, ptr @.str.18 }, %struct.trace_print_flags { i32 1114112, ptr @.str.19 }, %struct.trace_print_flags { i32 1179648, ptr @.str.20 }, %struct.trace_print_flags { i32 1, ptr @.str.21 }, %struct.trace_print_flags { i32 2, ptr @.str.22 }, %struct.trace_print_flags { i32 4, ptr @.str.23 }, %struct.trace_print_flags { i32 8, ptr @.str.24 }, %struct.trace_print_flags { i32 16, ptr @.str.25 }, %struct.trace_print_flags { i32 -1, ptr null }], align 4
@.str.54 = private unnamed_addr constant [20 x i8] c"addr=%s xid=0x%08x\0A\00", align 1
@.str.55 = private unnamed_addr constant [9 x i8] c"expected\00", align 1
@.str.56 = private unnamed_addr constant [9 x i8] c"received\00", align 1
@.str.57 = private unnamed_addr constant [57 x i8] c"addr=%s xid=0x%08x expected seqno %u, received seqno %u\0A\00", align 1
@.str.58 = private unnamed_addr constant [13 x i8] c"minor_status\00", align 1
@.str.59 = private unnamed_addr constant [13 x i8] c"major_status\00", align 1
@.str.60 = private unnamed_addr constant [62 x i8] c"addr=%s xid=0x%08x major_status=%s (0x%08lx) minor_status=%u\0A\00", align 1
@trace_raw_output_rpcgss_svc_accept_upcall.__flags = internal constant [24 x %struct.trace_print_flags] [%struct.trace_print_flags { i32 65536, ptr @.str.3 }, %struct.trace_print_flags { i32 131072, ptr @.str.4 }, %struct.trace_print_flags { i32 196608, ptr @.str.5 }, %struct.trace_print_flags { i32 262144, ptr @.str.6 }, %struct.trace_print_flags { i32 327680, ptr @.str.7 }, %struct.trace_print_flags { i32 393216, ptr @.str.8 }, %struct.trace_print_flags { i32 458752, ptr @.str.9 }, %struct.trace_print_flags { i32 524288, ptr @.str.10 }, %struct.trace_print_flags { i32 589824, ptr @.str.11 }, %struct.trace_print_flags { i32 655360, ptr @.str.12 }, %struct.trace_print_flags { i32 720896, ptr @.str.13 }, %struct.trace_print_flags { i32 786432, ptr @.str.14 }, %struct.trace_print_flags { i32 851968, ptr @.str.15 }, %struct.trace_print_flags { i32 917504, ptr @.str.16 }, %struct.trace_print_flags { i32 983040, ptr @.str.17 }, %struct.trace_print_flags { i32 1048576, ptr @.str.18 }, %struct.trace_print_flags { i32 1114112, ptr @.str.19 }, %struct.trace_print_flags { i32 1179648, ptr @.str.20 }, %struct.trace_print_flags { i32 1, ptr @.str.21 }, %struct.trace_print_flags { i32 2, ptr @.str.22 }, %struct.trace_print_flags { i32 4, ptr @.str.23 }, %struct.trace_print_flags { i32 8, ptr @.str.24 }, %struct.trace_print_flags { i32 16, ptr @.str.25 }, %struct.trace_print_flags { i32 -1, ptr null }], align 4
@.str.61 = private unnamed_addr constant [6 x i8] c"seqno\00", align 1
@.str.62 = private unnamed_addr constant [29 x i8] c"addr=%s xid=0x%08x seqno=%u\0A\00", align 1
@.str.63 = private unnamed_addr constant [16 x i8] c"task:%08x@%08x\0A\00", align 1
@.str.64 = private unnamed_addr constant [53 x i8] c"task:%08x@%08x expected seqno %u, received seqno %u\0A\00", align 1
@.str.65 = private unnamed_addr constant [36 x i8] c"task:%08x@%08x xid=0x%08x seqno=%u\0A\00", align 1
@.str.66 = private unnamed_addr constant [9 x i8] c"seq_xmit\00", align 1
@.str.67 = private unnamed_addr constant [5 x i8] c"bool\00", align 1
@.str.68 = private unnamed_addr constant [4 x i8] c"ret\00", align 1
@.str.69 = private unnamed_addr constant [69 x i8] c"task:%08x@%08x xid=0x%08x rq_seqno=%u seq_xmit=%u reencode %sneeded\0A\00", align 1
@.str.70 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.71 = private unnamed_addr constant [3 x i8] c"un\00", align 1
@.str.72 = private unnamed_addr constant [5 x i8] c"auth\00", align 1
@.str.73 = private unnamed_addr constant [7 x i8] c"rslack\00", align 1
@.str.74 = private unnamed_addr constant [7 x i8] c"ralign\00", align 1
@.str.75 = private unnamed_addr constant [9 x i8] c"verfsize\00", align 1
@.str.76 = private unnamed_addr constant [68 x i8] c"task:%08x@%08x xid=0x%08x auth=%p rslack=%u ralign=%u verfsize=%u\0A\0A\00", align 1
@.str.77 = private unnamed_addr constant [21 x i8] c"xid=0x%08x seqno=%u\0A\00", align 1
@.str.78 = private unnamed_addr constant [4 x i8] c"min\00", align 1
@.str.79 = private unnamed_addr constant [4 x i8] c"max\00", align 1
@.str.80 = private unnamed_addr constant [37 x i8] c"xid=0x%08x seqno=%u window=[%u..%u]\0A\00", align 1
@.str.81 = private unnamed_addr constant [4 x i8] c"msg\00", align 1
@.str.82 = private unnamed_addr constant [10 x i8] c"msg='%s'\0A\00", align 1
@.str.83 = private unnamed_addr constant [4 x i8] c"uid\00", align 1
@.str.84 = private unnamed_addr constant [7 x i8] c"result\00", align 1
@.str.85 = private unnamed_addr constant [23 x i8] c"for uid %u, result=%d\0A\00", align 1
@.str.86 = private unnamed_addr constant [7 x i8] c"expiry\00", align 1
@.str.87 = private unnamed_addr constant [4 x i8] c"now\00", align 1
@.str.88 = private unnamed_addr constant [8 x i8] c"timeout\00", align 1
@.str.89 = private unnamed_addr constant [12 x i8] c"window_size\00", align 1
@.str.90 = private unnamed_addr constant [4 x i8] c"len\00", align 1
@.str.91 = private unnamed_addr constant [9 x i8] c"acceptor\00", align 1
@.str.92 = private unnamed_addr constant [57 x i8] c"win_size=%u expiry=%lu now=%lu timeout=%u acceptor=%.*s\0A\00", align 1
@.str.93 = private unnamed_addr constant [7 x i8] c"flavor\00", align 1
@.str.94 = private unnamed_addr constant [6 x i8] c"error\00", align 1
@.str.95 = private unnamed_addr constant [20 x i8] c"flavor=%s error=%d\0A\00", align 1
@trace_raw_output_rpcgss_createauth.symbols = internal constant [4 x %struct.trace_print_flags] [%struct.trace_print_flags { i32 390003, ptr @.str.26 }, %struct.trace_print_flags { i32 390004, ptr @.str.27 }, %struct.trace_print_flags { i32 390005, ptr @.str.28 }, %struct.trace_print_flags { i32 -1, ptr null }], align 4
@.str.96 = private unnamed_addr constant [4 x i8] c"oid\00", align 1
@.str.97 = private unnamed_addr constant [31 x i8] c"mech for oid %s was not found\0A\00", align 1
@llvm.compiler.used = appending global [182 x ptr] [ptr @TRACE_SYSTEM_GSS_S_BAD_BINDINGS, ptr @TRACE_SYSTEM_GSS_S_BAD_MECH, ptr @TRACE_SYSTEM_GSS_S_BAD_NAME, ptr @TRACE_SYSTEM_GSS_S_BAD_NAMETYPE, ptr @TRACE_SYSTEM_GSS_S_BAD_QOP, ptr @TRACE_SYSTEM_GSS_S_BAD_SIG, ptr @TRACE_SYSTEM_GSS_S_BAD_STATUS, ptr @TRACE_SYSTEM_GSS_S_CONTEXT_EXPIRED, ptr @TRACE_SYSTEM_GSS_S_CONTINUE_NEEDED, ptr @TRACE_SYSTEM_GSS_S_CREDENTIALS_EXPIRED, ptr @TRACE_SYSTEM_GSS_S_DEFECTIVE_CREDENTIAL, ptr @TRACE_SYSTEM_GSS_S_DEFECTIVE_TOKEN, ptr @TRACE_SYSTEM_GSS_S_DUPLICATE_ELEMENT, ptr @TRACE_SYSTEM_GSS_S_DUPLICATE_TOKEN, ptr @TRACE_SYSTEM_GSS_S_FAILURE, ptr @TRACE_SYSTEM_GSS_S_GAP_TOKEN, ptr @TRACE_SYSTEM_GSS_S_NAME_NOT_MN, ptr @TRACE_SYSTEM_GSS_S_NO_CONTEXT, ptr @TRACE_SYSTEM_GSS_S_NO_CRED, ptr @TRACE_SYSTEM_GSS_S_OLD_TOKEN, ptr @TRACE_SYSTEM_GSS_S_UNAUTHORIZED, ptr @TRACE_SYSTEM_GSS_S_UNAVAILABLE, ptr @TRACE_SYSTEM_GSS_S_UNSEQ_TOKEN, ptr @TRACE_SYSTEM_RPC_AUTH_GSS_KRB5, ptr @TRACE_SYSTEM_RPC_AUTH_GSS_KRB5I, ptr @TRACE_SYSTEM_RPC_AUTH_GSS_KRB5P, ptr @TRACE_SYSTEM_RPC_GSS_SVC_INTEGRITY, ptr @TRACE_SYSTEM_RPC_GSS_SVC_NONE, ptr @TRACE_SYSTEM_RPC_GSS_SVC_PRIVACY, ptr @__TRACE_SYSTEM_GSS_S_BAD_BINDINGS, ptr @__TRACE_SYSTEM_GSS_S_BAD_MECH, ptr @__TRACE_SYSTEM_GSS_S_BAD_NAME, ptr @__TRACE_SYSTEM_GSS_S_BAD_NAMETYPE, ptr @__TRACE_SYSTEM_GSS_S_BAD_QOP, ptr @__TRACE_SYSTEM_GSS_S_BAD_SIG, ptr @__TRACE_SYSTEM_GSS_S_BAD_STATUS, ptr @__TRACE_SYSTEM_GSS_S_CONTEXT_EXPIRED, ptr @__TRACE_SYSTEM_GSS_S_CONTINUE_NEEDED, ptr @__TRACE_SYSTEM_GSS_S_CREDENTIALS_EXPIRED, ptr @__TRACE_SYSTEM_GSS_S_DEFECTIVE_CREDENTIAL, ptr @__TRACE_SYSTEM_GSS_S_DEFECTIVE_TOKEN, ptr @__TRACE_SYSTEM_GSS_S_DUPLICATE_ELEMENT, ptr @__TRACE_SYSTEM_GSS_S_DUPLICATE_TOKEN, ptr @__TRACE_SYSTEM_GSS_S_FAILURE, ptr @__TRACE_SYSTEM_GSS_S_GAP_TOKEN, ptr @__TRACE_SYSTEM_GSS_S_NAME_NOT_MN, ptr @__TRACE_SYSTEM_GSS_S_NO_CONTEXT, ptr @__TRACE_SYSTEM_GSS_S_NO_CRED, ptr @__TRACE_SYSTEM_GSS_S_OLD_TOKEN, ptr @__TRACE_SYSTEM_GSS_S_UNAUTHORIZED, ptr @__TRACE_SYSTEM_GSS_S_UNAVAILABLE, ptr @__TRACE_SYSTEM_GSS_S_UNSEQ_TOKEN, ptr @__TRACE_SYSTEM_RPC_AUTH_GSS_KRB5, ptr @__TRACE_SYSTEM_RPC_AUTH_GSS_KRB5I, ptr @__TRACE_SYSTEM_RPC_AUTH_GSS_KRB5P, ptr @__TRACE_SYSTEM_RPC_GSS_SVC_INTEGRITY, ptr @__TRACE_SYSTEM_RPC_GSS_SVC_NONE, ptr @__TRACE_SYSTEM_RPC_GSS_SVC_PRIVACY, ptr @__event_rpcgss_bad_seqno, ptr @__event_rpcgss_context, ptr @__event_rpcgss_createauth, ptr @__event_rpcgss_ctx_destroy, ptr @__event_rpcgss_ctx_init, ptr @__event_rpcgss_get_mic, ptr @__event_rpcgss_import_ctx, ptr @__event_rpcgss_need_reencode, ptr @__event_rpcgss_oid_to_mech, ptr @__event_rpcgss_seqno, ptr @__event_rpcgss_svc_accept_upcall, ptr @__event_rpcgss_svc_authenticate, ptr @__event_rpcgss_svc_mic, ptr @__event_rpcgss_svc_seqno_bad, ptr @__event_rpcgss_svc_seqno_large, ptr @__event_rpcgss_svc_seqno_low, ptr @__event_rpcgss_svc_seqno_seen, ptr @__event_rpcgss_svc_unwrap, ptr @__event_rpcgss_svc_unwrap_failed, ptr @__event_rpcgss_unwrap, ptr @__event_rpcgss_unwrap_failed, ptr @__event_rpcgss_upcall_msg, ptr @__event_rpcgss_upcall_result, ptr @__event_rpcgss_update_slack, ptr @__event_rpcgss_verify_mic, ptr @__event_rpcgss_wrap, ptr @__tracepoint_ptr_rpcgss_bad_seqno, ptr @__tracepoint_ptr_rpcgss_context, ptr @__tracepoint_ptr_rpcgss_createauth, ptr @__tracepoint_ptr_rpcgss_ctx_destroy, ptr @__tracepoint_ptr_rpcgss_ctx_init, ptr @__tracepoint_ptr_rpcgss_get_mic, ptr @__tracepoint_ptr_rpcgss_import_ctx, ptr @__tracepoint_ptr_rpcgss_need_reencode, ptr @__tracepoint_ptr_rpcgss_oid_to_mech, ptr @__tracepoint_ptr_rpcgss_seqno, ptr @__tracepoint_ptr_rpcgss_svc_accept_upcall, ptr @__tracepoint_ptr_rpcgss_svc_authenticate, ptr @__tracepoint_ptr_rpcgss_svc_mic, ptr @__tracepoint_ptr_rpcgss_svc_seqno_bad, ptr @__tracepoint_ptr_rpcgss_svc_seqno_large, ptr @__tracepoint_ptr_rpcgss_svc_seqno_low, ptr @__tracepoint_ptr_rpcgss_svc_seqno_seen, ptr @__tracepoint_ptr_rpcgss_svc_unwrap, ptr @__tracepoint_ptr_rpcgss_svc_unwrap_failed, ptr @__tracepoint_ptr_rpcgss_unwrap, ptr @__tracepoint_ptr_rpcgss_unwrap_failed, ptr @__tracepoint_ptr_rpcgss_upcall_msg, ptr @__tracepoint_ptr_rpcgss_upcall_result, ptr @__tracepoint_ptr_rpcgss_update_slack, ptr @__tracepoint_ptr_rpcgss_verify_mic, ptr @__tracepoint_ptr_rpcgss_wrap, ptr @__tracepoint_rpcgss_bad_seqno, ptr @__tracepoint_rpcgss_context, ptr @__tracepoint_rpcgss_createauth, ptr @__tracepoint_rpcgss_ctx_destroy, ptr @__tracepoint_rpcgss_ctx_init, ptr @__tracepoint_rpcgss_get_mic, ptr @__tracepoint_rpcgss_import_ctx, ptr @__tracepoint_rpcgss_need_reencode, ptr @__tracepoint_rpcgss_oid_to_mech, ptr @__tracepoint_rpcgss_seqno, ptr @__tracepoint_rpcgss_svc_accept_upcall, ptr @__tracepoint_rpcgss_svc_authenticate, ptr @__tracepoint_rpcgss_svc_mic, ptr @__tracepoint_rpcgss_svc_seqno_bad, ptr @__tracepoint_rpcgss_svc_seqno_large, ptr @__tracepoint_rpcgss_svc_seqno_low, ptr @__tracepoint_rpcgss_svc_seqno_seen, ptr @__tracepoint_rpcgss_svc_unwrap, ptr @__tracepoint_rpcgss_svc_unwrap_failed, ptr @__tracepoint_rpcgss_unwrap, ptr @__tracepoint_rpcgss_unwrap_failed, ptr @__tracepoint_rpcgss_upcall_msg, ptr @__tracepoint_rpcgss_upcall_result, ptr @__tracepoint_rpcgss_update_slack, ptr @__tracepoint_rpcgss_verify_mic, ptr @__tracepoint_rpcgss_wrap, ptr @event_class_rpcgss_bad_seqno, ptr @event_class_rpcgss_context, ptr @event_class_rpcgss_createauth, ptr @event_class_rpcgss_ctx_class, ptr @event_class_rpcgss_gssapi_event, ptr @event_class_rpcgss_import_ctx, ptr @event_class_rpcgss_need_reencode, ptr @event_class_rpcgss_oid_to_mech, ptr @event_class_rpcgss_seqno, ptr @event_class_rpcgss_svc_accept_upcall, ptr @event_class_rpcgss_svc_authenticate, ptr @event_class_rpcgss_svc_gssapi_class, ptr @event_class_rpcgss_svc_seqno_bad, ptr @event_class_rpcgss_svc_seqno_class, ptr @event_class_rpcgss_svc_seqno_low, ptr @event_class_rpcgss_svc_unwrap_failed, ptr @event_class_rpcgss_unwrap_failed, ptr @event_class_rpcgss_upcall_msg, ptr @event_class_rpcgss_upcall_result, ptr @event_class_rpcgss_update_slack, ptr @event_rpcgss_bad_seqno, ptr @event_rpcgss_context, ptr @event_rpcgss_createauth, ptr @event_rpcgss_ctx_destroy, ptr @event_rpcgss_ctx_init, ptr @event_rpcgss_get_mic, ptr @event_rpcgss_import_ctx, ptr @event_rpcgss_need_reencode, ptr @event_rpcgss_oid_to_mech, ptr @event_rpcgss_seqno, ptr @event_rpcgss_svc_accept_upcall, ptr @event_rpcgss_svc_authenticate, ptr @event_rpcgss_svc_mic, ptr @event_rpcgss_svc_seqno_bad, ptr @event_rpcgss_svc_seqno_large, ptr @event_rpcgss_svc_seqno_low, ptr @event_rpcgss_svc_seqno_seen, ptr @event_rpcgss_svc_unwrap, ptr @event_rpcgss_svc_unwrap_failed, ptr @event_rpcgss_unwrap, ptr @event_rpcgss_unwrap_failed, ptr @event_rpcgss_upcall_msg, ptr @event_rpcgss_upcall_result, ptr @event_rpcgss_update_slack, ptr @event_rpcgss_verify_mic, ptr @event_rpcgss_wrap], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__traceiter_rpcgss_import_ctx(ptr nocapture readnone %0, i32 noundef %1) #0 {
  %3 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_rpcgss_import_ctx, i32 0, i32 7), align 4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %13, label %5

5:                                                ; preds = %5, %2
  %6 = phi ptr [ %10, %5 ], [ %3, %2 ]
  %7 = load volatile ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.tracepoint_func, ptr %6, i32 0, i32 1
  %9 = load ptr, ptr %8, align 4
  tail call void %7(ptr noundef %9, i32 noundef %1) #9
  %10 = getelementptr %struct.tracepoint_func, ptr %6, i32 1
  %11 = load ptr, ptr %10, align 4
  %12 = icmp eq ptr %11, null
  br i1 %12, label %13, label %5

13:                                               ; preds = %5, %2
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__traceiter_rpcgss_get_mic(ptr nocapture readnone %0, ptr noundef %1, i32 noundef %2) #0 {
  %4 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_rpcgss_get_mic, i32 0, i32 7), align 4
  %5 = icmp eq ptr %4, null
  br i1 %5, label %14, label %6

6:                                                ; preds = %6, %3
  %7 = phi ptr [ %11, %6 ], [ %4, %3 ]
  %8 = load volatile ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.tracepoint_func, ptr %7, i32 0, i32 1
  %10 = load ptr, ptr %9, align 4
  tail call void %8(ptr noundef %10, ptr noundef %1, i32 noundef %2) #9
  %11 = getelementptr %struct.tracepoint_func, ptr %7, i32 1
  %12 = load ptr, ptr %11, align 4
  %13 = icmp eq ptr %12, null
  br i1 %13, label %14, label %6

14:                                               ; preds = %6, %3
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__traceiter_rpcgss_verify_mic(ptr nocapture readnone %0, ptr noundef %1, i32 noundef %2) #0 {
  %4 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_rpcgss_verify_mic, i32 0, i32 7), align 4
  %5 = icmp eq ptr %4, null
  br i1 %5, label %14, label %6

6:                                                ; preds = %6, %3
  %7 = phi ptr [ %11, %6 ], [ %4, %3 ]
  %8 = load volatile ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.tracepoint_func, ptr %7, i32 0, i32 1
  %10 = load ptr, ptr %9, align 4
  tail call void %8(ptr noundef %10, ptr noundef %1, i32 noundef %2) #9
  %11 = getelementptr %struct.tracepoint_func, ptr %7, i32 1
  %12 = load ptr, ptr %11, align 4
  %13 = icmp eq ptr %12, null
  br i1 %13, label %14, label %6

14:                                               ; preds = %6, %3
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__traceiter_rpcgss_wrap(ptr nocapture readnone %0, ptr noundef %1, i32 noundef %2) #0 {
  %4 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_rpcgss_wrap, i32 0, i32 7), align 4
  %5 = icmp eq ptr %4, null
  br i1 %5, label %14, label %6

6:                                                ; preds = %6, %3
  %7 = phi ptr [ %11, %6 ], [ %4, %3 ]
  %8 = load volatile ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.tracepoint_func, ptr %7, i32 0, i32 1
  %10 = load ptr, ptr %9, align 4
  tail call void %8(ptr noundef %10, ptr noundef %1, i32 noundef %2) #9
  %11 = getelementptr %struct.tracepoint_func, ptr %7, i32 1
  %12 = load ptr, ptr %11, align 4
  %13 = icmp eq ptr %12, null
  br i1 %13, label %14, label %6

14:                                               ; preds = %6, %3
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__traceiter_rpcgss_unwrap(ptr nocapture readnone %0, ptr noundef %1, i32 noundef %2) #0 {
  %4 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_rpcgss_unwrap, i32 0, i32 7), align 4
  %5 = icmp eq ptr %4, null
  br i1 %5, label %14, label %6

6:                                                ; preds = %6, %3
  %7 = phi ptr [ %11, %6 ], [ %4, %3 ]
  %8 = load volatile ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.tracepoint_func, ptr %7, i32 0, i32 1
  %10 = load ptr, ptr %9, align 4
  tail call void %8(ptr noundef %10, ptr noundef %1, i32 noundef %2) #9
  %11 = getelementptr %struct.tracepoint_func, ptr %7, i32 1
  %12 = load ptr, ptr %11, align 4
  %13 = icmp eq ptr %12, null
  br i1 %13, label %14, label %6

14:                                               ; preds = %6, %3
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__traceiter_rpcgss_ctx_init(ptr nocapture readnone %0, ptr noundef %1) #0 {
  %3 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_rpcgss_ctx_init, i32 0, i32 7), align 4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %13, label %5

5:                                                ; preds = %5, %2
  %6 = phi ptr [ %10, %5 ], [ %3, %2 ]
  %7 = load volatile ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.tracepoint_func, ptr %6, i32 0, i32 1
  %9 = load ptr, ptr %8, align 4
  tail call void %7(ptr noundef %9, ptr noundef %1) #9
  %10 = getelementptr %struct.tracepoint_func, ptr %6, i32 1
  %11 = load ptr, ptr %10, align 4
  %12 = icmp eq ptr %11, null
  br i1 %12, label %13, label %5

13:                                               ; preds = %5, %2
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__traceiter_rpcgss_ctx_destroy(ptr nocapture readnone %0, ptr noundef %1) #0 {
  %3 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_rpcgss_ctx_destroy, i32 0, i32 7), align 4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %13, label %5

5:                                                ; preds = %5, %2
  %6 = phi ptr [ %10, %5 ], [ %3, %2 ]
  %7 = load volatile ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.tracepoint_func, ptr %6, i32 0, i32 1
  %9 = load ptr, ptr %8, align 4
  tail call void %7(ptr noundef %9, ptr noundef %1) #9
  %10 = getelementptr %struct.tracepoint_func, ptr %6, i32 1
  %11 = load ptr, ptr %10, align 4
  %12 = icmp eq ptr %11, null
  br i1 %12, label %13, label %5

13:                                               ; preds = %5, %2
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__traceiter_rpcgss_svc_unwrap(ptr nocapture readnone %0, ptr noundef %1, i32 noundef %2) #0 {
  %4 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_rpcgss_svc_unwrap, i32 0, i32 7), align 4
  %5 = icmp eq ptr %4, null
  br i1 %5, label %14, label %6

6:                                                ; preds = %6, %3
  %7 = phi ptr [ %11, %6 ], [ %4, %3 ]
  %8 = load volatile ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.tracepoint_func, ptr %7, i32 0, i32 1
  %10 = load ptr, ptr %9, align 4
  tail call void %8(ptr noundef %10, ptr noundef %1, i32 noundef %2) #9
  %11 = getelementptr %struct.tracepoint_func, ptr %7, i32 1
  %12 = load ptr, ptr %11, align 4
  %13 = icmp eq ptr %12, null
  br i1 %13, label %14, label %6

14:                                               ; preds = %6, %3
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__traceiter_rpcgss_svc_mic(ptr nocapture readnone %0, ptr noundef %1, i32 noundef %2) #0 {
  %4 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_rpcgss_svc_mic, i32 0, i32 7), align 4
  %5 = icmp eq ptr %4, null
  br i1 %5, label %14, label %6

6:                                                ; preds = %6, %3
  %7 = phi ptr [ %11, %6 ], [ %4, %3 ]
  %8 = load volatile ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.tracepoint_func, ptr %7, i32 0, i32 1
  %10 = load ptr, ptr %9, align 4
  tail call void %8(ptr noundef %10, ptr noundef %1, i32 noundef %2) #9
  %11 = getelementptr %struct.tracepoint_func, ptr %7, i32 1
  %12 = load ptr, ptr %11, align 4
  %13 = icmp eq ptr %12, null
  br i1 %13, label %14, label %6

14:                                               ; preds = %6, %3
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__traceiter_rpcgss_svc_unwrap_failed(ptr nocapture readnone %0, ptr noundef %1) #0 {
  %3 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_rpcgss_svc_unwrap_failed, i32 0, i32 7), align 4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %13, label %5

5:                                                ; preds = %5, %2
  %6 = phi ptr [ %10, %5 ], [ %3, %2 ]
  %7 = load volatile ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.tracepoint_func, ptr %6, i32 0, i32 1
  %9 = load ptr, ptr %8, align 4
  tail call void %7(ptr noundef %9, ptr noundef %1) #9
  %10 = getelementptr %struct.tracepoint_func, ptr %6, i32 1
  %11 = load ptr, ptr %10, align 4
  %12 = icmp eq ptr %11, null
  br i1 %12, label %13, label %5

13:                                               ; preds = %5, %2
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__traceiter_rpcgss_svc_seqno_bad(ptr nocapture readnone %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) #0 {
  %5 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_rpcgss_svc_seqno_bad, i32 0, i32 7), align 4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %15, label %7

7:                                                ; preds = %7, %4
  %8 = phi ptr [ %12, %7 ], [ %5, %4 ]
  %9 = load volatile ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.tracepoint_func, ptr %8, i32 0, i32 1
  %11 = load ptr, ptr %10, align 4
  tail call void %9(ptr noundef %11, ptr noundef %1, i32 noundef %2, i32 noundef %3) #9
  %12 = getelementptr %struct.tracepoint_func, ptr %8, i32 1
  %13 = load ptr, ptr %12, align 4
  %14 = icmp eq ptr %13, null
  br i1 %14, label %15, label %7

15:                                               ; preds = %7, %4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__traceiter_rpcgss_svc_accept_upcall(ptr nocapture readnone %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) #0 {
  %5 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_rpcgss_svc_accept_upcall, i32 0, i32 7), align 4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %15, label %7

7:                                                ; preds = %7, %4
  %8 = phi ptr [ %12, %7 ], [ %5, %4 ]
  %9 = load volatile ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.tracepoint_func, ptr %8, i32 0, i32 1
  %11 = load ptr, ptr %10, align 4
  tail call void %9(ptr noundef %11, ptr noundef %1, i32 noundef %2, i32 noundef %3) #9
  %12 = getelementptr %struct.tracepoint_func, ptr %8, i32 1
  %13 = load ptr, ptr %12, align 4
  %14 = icmp eq ptr %13, null
  br i1 %14, label %15, label %7

15:                                               ; preds = %7, %4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__traceiter_rpcgss_svc_authenticate(ptr nocapture readnone %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_rpcgss_svc_authenticate, i32 0, i32 7), align 4
  %5 = icmp eq ptr %4, null
  br i1 %5, label %14, label %6

6:                                                ; preds = %6, %3
  %7 = phi ptr [ %11, %6 ], [ %4, %3 ]
  %8 = load volatile ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.tracepoint_func, ptr %7, i32 0, i32 1
  %10 = load ptr, ptr %9, align 4
  tail call void %8(ptr noundef %10, ptr noundef %1, ptr noundef %2) #9
  %11 = getelementptr %struct.tracepoint_func, ptr %7, i32 1
  %12 = load ptr, ptr %11, align 4
  %13 = icmp eq ptr %12, null
  br i1 %13, label %14, label %6

14:                                               ; preds = %6, %3
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__traceiter_rpcgss_unwrap_failed(ptr nocapture readnone %0, ptr noundef %1) #0 {
  %3 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_rpcgss_unwrap_failed, i32 0, i32 7), align 4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %13, label %5

5:                                                ; preds = %5, %2
  %6 = phi ptr [ %10, %5 ], [ %3, %2 ]
  %7 = load volatile ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.tracepoint_func, ptr %6, i32 0, i32 1
  %9 = load ptr, ptr %8, align 4
  tail call void %7(ptr noundef %9, ptr noundef %1) #9
  %10 = getelementptr %struct.tracepoint_func, ptr %6, i32 1
  %11 = load ptr, ptr %10, align 4
  %12 = icmp eq ptr %11, null
  br i1 %12, label %13, label %5

13:                                               ; preds = %5, %2
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__traceiter_rpcgss_bad_seqno(ptr nocapture readnone %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) #0 {
  %5 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_rpcgss_bad_seqno, i32 0, i32 7), align 4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %15, label %7

7:                                                ; preds = %7, %4
  %8 = phi ptr [ %12, %7 ], [ %5, %4 ]
  %9 = load volatile ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.tracepoint_func, ptr %8, i32 0, i32 1
  %11 = load ptr, ptr %10, align 4
  tail call void %9(ptr noundef %11, ptr noundef %1, i32 noundef %2, i32 noundef %3) #9
  %12 = getelementptr %struct.tracepoint_func, ptr %8, i32 1
  %13 = load ptr, ptr %12, align 4
  %14 = icmp eq ptr %13, null
  br i1 %14, label %15, label %7

15:                                               ; preds = %7, %4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__traceiter_rpcgss_seqno(ptr nocapture readnone %0, ptr noundef %1) #0 {
  %3 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_rpcgss_seqno, i32 0, i32 7), align 4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %13, label %5

5:                                                ; preds = %5, %2
  %6 = phi ptr [ %10, %5 ], [ %3, %2 ]
  %7 = load volatile ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.tracepoint_func, ptr %6, i32 0, i32 1
  %9 = load ptr, ptr %8, align 4
  tail call void %7(ptr noundef %9, ptr noundef %1) #9
  %10 = getelementptr %struct.tracepoint_func, ptr %6, i32 1
  %11 = load ptr, ptr %10, align 4
  %12 = icmp eq ptr %11, null
  br i1 %12, label %13, label %5

13:                                               ; preds = %5, %2
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__traceiter_rpcgss_need_reencode(ptr nocapture readnone %0, ptr noundef %1, i32 noundef %2, i1 noundef zeroext %3) #0 {
  %5 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_rpcgss_need_reencode, i32 0, i32 7), align 4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %15, label %7

7:                                                ; preds = %7, %4
  %8 = phi ptr [ %12, %7 ], [ %5, %4 ]
  %9 = load volatile ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.tracepoint_func, ptr %8, i32 0, i32 1
  %11 = load ptr, ptr %10, align 4
  tail call void %9(ptr noundef %11, ptr noundef %1, i32 noundef %2, i1 noundef zeroext %3) #9
  %12 = getelementptr %struct.tracepoint_func, ptr %8, i32 1
  %13 = load ptr, ptr %12, align 4
  %14 = icmp eq ptr %13, null
  br i1 %14, label %15, label %7

15:                                               ; preds = %7, %4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__traceiter_rpcgss_update_slack(ptr nocapture readnone %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_rpcgss_update_slack, i32 0, i32 7), align 4
  %5 = icmp eq ptr %4, null
  br i1 %5, label %14, label %6

6:                                                ; preds = %6, %3
  %7 = phi ptr [ %11, %6 ], [ %4, %3 ]
  %8 = load volatile ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.tracepoint_func, ptr %7, i32 0, i32 1
  %10 = load ptr, ptr %9, align 4
  tail call void %8(ptr noundef %10, ptr noundef %1, ptr noundef %2) #9
  %11 = getelementptr %struct.tracepoint_func, ptr %7, i32 1
  %12 = load ptr, ptr %11, align 4
  %13 = icmp eq ptr %12, null
  br i1 %13, label %14, label %6

14:                                               ; preds = %6, %3
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__traceiter_rpcgss_svc_seqno_large(ptr nocapture readnone %0, ptr noundef %1, i32 noundef %2) #0 {
  %4 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_rpcgss_svc_seqno_large, i32 0, i32 7), align 4
  %5 = icmp eq ptr %4, null
  br i1 %5, label %14, label %6

6:                                                ; preds = %6, %3
  %7 = phi ptr [ %11, %6 ], [ %4, %3 ]
  %8 = load volatile ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.tracepoint_func, ptr %7, i32 0, i32 1
  %10 = load ptr, ptr %9, align 4
  tail call void %8(ptr noundef %10, ptr noundef %1, i32 noundef %2) #9
  %11 = getelementptr %struct.tracepoint_func, ptr %7, i32 1
  %12 = load ptr, ptr %11, align 4
  %13 = icmp eq ptr %12, null
  br i1 %13, label %14, label %6

14:                                               ; preds = %6, %3
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__traceiter_rpcgss_svc_seqno_seen(ptr nocapture readnone %0, ptr noundef %1, i32 noundef %2) #0 {
  %4 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_rpcgss_svc_seqno_seen, i32 0, i32 7), align 4
  %5 = icmp eq ptr %4, null
  br i1 %5, label %14, label %6

6:                                                ; preds = %6, %3
  %7 = phi ptr [ %11, %6 ], [ %4, %3 ]
  %8 = load volatile ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.tracepoint_func, ptr %7, i32 0, i32 1
  %10 = load ptr, ptr %9, align 4
  tail call void %8(ptr noundef %10, ptr noundef %1, i32 noundef %2) #9
  %11 = getelementptr %struct.tracepoint_func, ptr %7, i32 1
  %12 = load ptr, ptr %11, align 4
  %13 = icmp eq ptr %12, null
  br i1 %13, label %14, label %6

14:                                               ; preds = %6, %3
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__traceiter_rpcgss_svc_seqno_low(ptr nocapture readnone %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) #0 {
  %6 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_rpcgss_svc_seqno_low, i32 0, i32 7), align 4
  %7 = icmp eq ptr %6, null
  br i1 %7, label %16, label %8

8:                                                ; preds = %8, %5
  %9 = phi ptr [ %13, %8 ], [ %6, %5 ]
  %10 = load volatile ptr, ptr %9, align 4
  %11 = getelementptr inbounds %struct.tracepoint_func, ptr %9, i32 0, i32 1
  %12 = load ptr, ptr %11, align 4
  tail call void %10(ptr noundef %12, ptr noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) #9
  %13 = getelementptr %struct.tracepoint_func, ptr %9, i32 1
  %14 = load ptr, ptr %13, align 4
  %15 = icmp eq ptr %14, null
  br i1 %15, label %16, label %8

16:                                               ; preds = %8, %5
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__traceiter_rpcgss_upcall_msg(ptr nocapture readnone %0, ptr noundef %1) #0 {
  %3 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_rpcgss_upcall_msg, i32 0, i32 7), align 4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %13, label %5

5:                                                ; preds = %5, %2
  %6 = phi ptr [ %10, %5 ], [ %3, %2 ]
  %7 = load volatile ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.tracepoint_func, ptr %6, i32 0, i32 1
  %9 = load ptr, ptr %8, align 4
  tail call void %7(ptr noundef %9, ptr noundef %1) #9
  %10 = getelementptr %struct.tracepoint_func, ptr %6, i32 1
  %11 = load ptr, ptr %10, align 4
  %12 = icmp eq ptr %11, null
  br i1 %12, label %13, label %5

13:                                               ; preds = %5, %2
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__traceiter_rpcgss_upcall_result(ptr nocapture readnone %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_rpcgss_upcall_result, i32 0, i32 7), align 4
  %5 = icmp eq ptr %4, null
  br i1 %5, label %14, label %6

6:                                                ; preds = %6, %3
  %7 = phi ptr [ %11, %6 ], [ %4, %3 ]
  %8 = load volatile ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.tracepoint_func, ptr %7, i32 0, i32 1
  %10 = load ptr, ptr %9, align 4
  tail call void %8(ptr noundef %10, i32 noundef %1, i32 noundef %2) #9
  %11 = getelementptr %struct.tracepoint_func, ptr %7, i32 1
  %12 = load ptr, ptr %11, align 4
  %13 = icmp eq ptr %12, null
  br i1 %13, label %14, label %6

14:                                               ; preds = %6, %3
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__traceiter_rpcgss_context(ptr nocapture readnone %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, ptr noundef %6) #0 {
  %8 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_rpcgss_context, i32 0, i32 7), align 4
  %9 = icmp eq ptr %8, null
  br i1 %9, label %18, label %10

10:                                               ; preds = %10, %7
  %11 = phi ptr [ %15, %10 ], [ %8, %7 ]
  %12 = load volatile ptr, ptr %11, align 4
  %13 = getelementptr inbounds %struct.tracepoint_func, ptr %11, i32 0, i32 1
  %14 = load ptr, ptr %13, align 4
  tail call void %12(ptr noundef %14, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, ptr noundef %6) #9
  %15 = getelementptr %struct.tracepoint_func, ptr %11, i32 1
  %16 = load ptr, ptr %15, align 4
  %17 = icmp eq ptr %16, null
  br i1 %17, label %18, label %10

18:                                               ; preds = %10, %7
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__traceiter_rpcgss_createauth(ptr nocapture readnone %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_rpcgss_createauth, i32 0, i32 7), align 4
  %5 = icmp eq ptr %4, null
  br i1 %5, label %14, label %6

6:                                                ; preds = %6, %3
  %7 = phi ptr [ %11, %6 ], [ %4, %3 ]
  %8 = load volatile ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.tracepoint_func, ptr %7, i32 0, i32 1
  %10 = load ptr, ptr %9, align 4
  tail call void %8(ptr noundef %10, i32 noundef %1, i32 noundef %2) #9
  %11 = getelementptr %struct.tracepoint_func, ptr %7, i32 1
  %12 = load ptr, ptr %11, align 4
  %13 = icmp eq ptr %12, null
  br i1 %13, label %14, label %6

14:                                               ; preds = %6, %3
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__traceiter_rpcgss_oid_to_mech(ptr nocapture readnone %0, ptr noundef %1) #0 {
  %3 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_rpcgss_oid_to_mech, i32 0, i32 7), align 4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %13, label %5

5:                                                ; preds = %5, %2
  %6 = phi ptr [ %10, %5 ], [ %3, %2 ]
  %7 = load volatile ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.tracepoint_func, ptr %6, i32 0, i32 1
  %9 = load ptr, ptr %8, align 4
  tail call void %7(ptr noundef %9, ptr noundef %1) #9
  %10 = getelementptr %struct.tracepoint_func, ptr %6, i32 1
  %11 = load ptr, ptr %10, align 4
  %12 = icmp eq ptr %11, null
  br i1 %12, label %13, label %5

13:                                               ; preds = %5, %2
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @trace_event_raw_event_rpcgss_gssapi_event(ptr noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2) #0 {
  %4 = alloca %struct.trace_event_buffer, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #9
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %4, i8 0, i32 24, i1 false), !annotation !9
  %5 = getelementptr inbounds %struct.trace_event_file, ptr %0, i32 0, i32 7
  %6 = load i32, ptr %5, align 4
  %7 = and i32 %6, 704
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %14, label %9, !prof !10

9:                                                ; preds = %3
  %10 = and i32 %6, 256
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %14, !prof !11

12:                                               ; preds = %9
  %13 = tail call zeroext i1 @__trace_trigger_soft_disabled(ptr noundef %0) #9
  br i1 %13, label %28, label %14

14:                                               ; preds = %12, %9, %3
  %15 = call ptr @trace_event_buffer_reserve(ptr noundef nonnull %4, ptr noundef %0, i32 noundef 20) #9
  %16 = icmp eq ptr %15, null
  br i1 %16, label %28, label %17

17:                                               ; preds = %14
  %18 = getelementptr inbounds %struct.rpc_task, ptr %1, i32 0, i32 22
  %19 = load i16, ptr %18, align 8
  %20 = zext i16 %19 to i32
  %21 = getelementptr inbounds %struct.trace_event_raw_rpcgss_gssapi_event, ptr %15, i32 0, i32 1
  store i32 %20, ptr %21, align 4
  %22 = getelementptr inbounds %struct.rpc_task, ptr %1, i32 0, i32 13
  %23 = load ptr, ptr %22, align 8
  %24 = getelementptr inbounds %struct.rpc_clnt, ptr %23, i32 0, i32 1
  %25 = load i32, ptr %24, align 4
  %26 = getelementptr inbounds %struct.trace_event_raw_rpcgss_gssapi_event, ptr %15, i32 0, i32 2
  store i32 %25, ptr %26, align 4
  %27 = getelementptr inbounds %struct.trace_event_raw_rpcgss_gssapi_event, ptr %15, i32 0, i32 3
  store i32 %2, ptr %27, align 4
  call void @trace_event_buffer_commit(ptr noundef nonnull %4) #9
  br label %28

28:                                               ; preds = %17, %14, %12
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @perf_trace_rpcgss_gssapi_event(ptr noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2) #0 {
  %4 = alloca ptr, align 4
  %5 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #9
  store ptr null, ptr %4, align 4, !annotation !9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #9
  store i32 0, ptr %5, align 4, !annotation !9
  %6 = getelementptr inbounds %struct.trace_event_call, ptr %0, i32 0, i32 10
  %7 = load ptr, ptr %6, align 4
  %8 = ptrtoint ptr %7 to i32
  %9 = tail call i32 @llvm.read_register.i32(metadata !0) #9
  %10 = inttoptr i32 %9 to ptr
  %11 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %10) #7, !srcloc !12
  %12 = add i32 %11, %8
  %13 = inttoptr i32 %12 to ptr
  %14 = getelementptr inbounds %struct.trace_event_call, ptr %0, i32 0, i32 11
  %15 = load volatile ptr, ptr %14, align 4
  %16 = icmp eq ptr %15, null
  br i1 %16, label %17, label %20

17:                                               ; preds = %3
  %18 = load volatile ptr, ptr %13, align 4
  %19 = icmp eq ptr %18, null
  br i1 %19, label %46, label %20

20:                                               ; preds = %17, %3
  %21 = call ptr @perf_trace_buf_alloc(i32 noundef 20, ptr noundef nonnull %4, ptr noundef nonnull %5) #9
  %22 = icmp eq ptr %21, null
  br i1 %22, label %46, label %23

23:                                               ; preds = %20
  %24 = load ptr, ptr %4, align 4
  %25 = call ptr @llvm.returnaddress(i32 0) #9
  %26 = ptrtoint ptr %25 to i32
  %27 = getelementptr [18 x i32], ptr %24, i32 0, i32 15
  store i32 %26, ptr %27, align 4
  %28 = call ptr @llvm.frameaddress.p0(i32 0) #9
  %29 = ptrtoint ptr %28 to i32
  %30 = getelementptr [18 x i32], ptr %24, i32 0, i32 11
  store i32 %29, ptr %30, align 4
  %31 = call i32 @llvm.read_register.i32(metadata !0) #9
  %32 = getelementptr [18 x i32], ptr %24, i32 0, i32 13
  store i32 %31, ptr %32, align 4
  %33 = getelementptr [18 x i32], ptr %24, i32 0, i32 16
  store i32 19, ptr %33, align 4
  %34 = getelementptr inbounds %struct.rpc_task, ptr %1, i32 0, i32 22
  %35 = load i16, ptr %34, align 8
  %36 = zext i16 %35 to i32
  %37 = getelementptr inbounds %struct.trace_event_raw_rpcgss_gssapi_event, ptr %21, i32 0, i32 1
  store i32 %36, ptr %37, align 4
  %38 = getelementptr inbounds %struct.rpc_task, ptr %1, i32 0, i32 13
  %39 = load ptr, ptr %38, align 8
  %40 = getelementptr inbounds %struct.rpc_clnt, ptr %39, i32 0, i32 1
  %41 = load i32, ptr %40, align 4
  %42 = getelementptr inbounds %struct.trace_event_raw_rpcgss_gssapi_event, ptr %21, i32 0, i32 2
  store i32 %41, ptr %42, align 4
  %43 = getelementptr inbounds %struct.trace_event_raw_rpcgss_gssapi_event, ptr %21, i32 0, i32 3
  store i32 %2, ptr %43, align 4
  %44 = load i32, ptr %5, align 4
  %45 = load ptr, ptr %4, align 4
  call void @perf_trace_run_bpf_submit(ptr noundef nonnull %21, i32 noundef 20, i32 noundef %44, ptr noundef %0, i64 noundef 1, ptr noundef %45, ptr noundef %13, ptr noundef null) #9
  br label %46

46:                                               ; preds = %23, %20, %17
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @trace_event_reg(ptr noundef, i32 noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @trace_event_raw_init(ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @trace_event_raw_event_rpcgss_import_ctx(ptr noundef %0, i32 noundef %1) #0 {
  %3 = alloca %struct.trace_event_buffer, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #9
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %3, i8 0, i32 24, i1 false), !annotation !9
  %4 = getelementptr inbounds %struct.trace_event_file, ptr %0, i32 0, i32 7
  %5 = load i32, ptr %4, align 4
  %6 = and i32 %5, 704
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %13, label %8, !prof !10

8:                                                ; preds = %2
  %9 = and i32 %5, 256
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %13, !prof !11

11:                                               ; preds = %8
  %12 = tail call zeroext i1 @__trace_trigger_soft_disabled(ptr noundef %0) #9
  br i1 %12, label %18, label %13

13:                                               ; preds = %11, %8, %2
  %14 = call ptr @trace_event_buffer_reserve(ptr noundef nonnull %3, ptr noundef %0, i32 noundef 12) #9
  %15 = icmp eq ptr %14, null
  br i1 %15, label %18, label %16

16:                                               ; preds = %13
  %17 = getelementptr inbounds %struct.trace_event_raw_rpcgss_import_ctx, ptr %14, i32 0, i32 1
  store i32 %1, ptr %17, align 4
  call void @trace_event_buffer_commit(ptr noundef nonnull %3) #9
  br label %18

18:                                               ; preds = %16, %13, %11
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @perf_trace_rpcgss_import_ctx(ptr noundef %0, i32 noundef %1) #0 {
  %3 = alloca ptr, align 4
  %4 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #9
  store ptr null, ptr %3, align 4, !annotation !9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #9
  store i32 0, ptr %4, align 4, !annotation !9
  %5 = getelementptr inbounds %struct.trace_event_call, ptr %0, i32 0, i32 10
  %6 = load ptr, ptr %5, align 4
  %7 = ptrtoint ptr %6 to i32
  %8 = tail call i32 @llvm.read_register.i32(metadata !0) #9
  %9 = inttoptr i32 %8 to ptr
  %10 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %9) #7, !srcloc !12
  %11 = add i32 %10, %7
  %12 = inttoptr i32 %11 to ptr
  %13 = getelementptr inbounds %struct.trace_event_call, ptr %0, i32 0, i32 11
  %14 = load volatile ptr, ptr %13, align 4
  %15 = icmp eq ptr %14, null
  br i1 %15, label %16, label %19

16:                                               ; preds = %2
  %17 = load volatile ptr, ptr %12, align 4
  %18 = icmp eq ptr %17, null
  br i1 %18, label %36, label %19

19:                                               ; preds = %16, %2
  %20 = call ptr @perf_trace_buf_alloc(i32 noundef 12, ptr noundef nonnull %3, ptr noundef nonnull %4) #9
  %21 = icmp eq ptr %20, null
  br i1 %21, label %36, label %22

22:                                               ; preds = %19
  %23 = load ptr, ptr %3, align 4
  %24 = call ptr @llvm.returnaddress(i32 0) #9
  %25 = ptrtoint ptr %24 to i32
  %26 = getelementptr [18 x i32], ptr %23, i32 0, i32 15
  store i32 %25, ptr %26, align 4
  %27 = call ptr @llvm.frameaddress.p0(i32 0) #9
  %28 = ptrtoint ptr %27 to i32
  %29 = getelementptr [18 x i32], ptr %23, i32 0, i32 11
  store i32 %28, ptr %29, align 4
  %30 = call i32 @llvm.read_register.i32(metadata !0) #9
  %31 = getelementptr [18 x i32], ptr %23, i32 0, i32 13
  store i32 %30, ptr %31, align 4
  %32 = getelementptr [18 x i32], ptr %23, i32 0, i32 16
  store i32 19, ptr %32, align 4
  %33 = getelementptr inbounds %struct.trace_event_raw_rpcgss_import_ctx, ptr %20, i32 0, i32 1
  store i32 %1, ptr %33, align 4
  %34 = load i32, ptr %4, align 4
  %35 = load ptr, ptr %3, align 4
  call void @perf_trace_run_bpf_submit(ptr noundef nonnull %20, i32 noundef 12, i32 noundef %34, ptr noundef %0, i64 noundef 1, ptr noundef %35, ptr noundef %12, ptr noundef null) #9
  br label %36

36:                                               ; preds = %22, %19, %16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @trace_event_raw_event_rpcgss_ctx_class(ptr noundef %0, ptr noundef %1) #0 {
  %3 = alloca %struct.trace_event_buffer, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #9
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %3, i8 0, i32 24, i1 false), !annotation !9
  %4 = getelementptr inbounds %struct.trace_event_file, ptr %0, i32 0, i32 7
  %5 = load i32, ptr %4, align 4
  %6 = and i32 %5, 704
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %13, label %8, !prof !10

8:                                                ; preds = %2
  %9 = and i32 %5, 256
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %13, !prof !11

11:                                               ; preds = %8
  %12 = tail call zeroext i1 @__trace_trigger_soft_disabled(ptr noundef %0) #9
  br i1 %12, label %35, label %13

13:                                               ; preds = %11, %8, %2
  %14 = getelementptr inbounds %struct.gss_cred, ptr %1, i32 0, i32 4
  %15 = load ptr, ptr %14, align 4
  %16 = icmp eq ptr %15, null
  %17 = select i1 %16, ptr @.str.40, ptr %15
  %18 = tail call i32 @strlen(ptr noundef nonnull %17) #9
  %19 = add i32 %18, 21
  %20 = call ptr @trace_event_buffer_reserve(ptr noundef nonnull %3, ptr noundef %0, i32 noundef %19) #9
  %21 = icmp eq ptr %20, null
  br i1 %21, label %35, label %22

22:                                               ; preds = %13
  %23 = shl i32 %18, 16
  %24 = add i32 %23, 65556
  %25 = getelementptr inbounds %struct.trace_event_raw_rpcgss_ctx_class, ptr %20, i32 0, i32 3
  store i32 %24, ptr %25, align 4
  %26 = getelementptr inbounds %struct.trace_event_raw_rpcgss_ctx_class, ptr %20, i32 0, i32 1
  store ptr %1, ptr %26, align 4
  %27 = getelementptr inbounds %struct.gss_cred, ptr %1, i32 0, i32 1
  %28 = load i32, ptr %27, align 4
  %29 = getelementptr inbounds %struct.trace_event_raw_rpcgss_ctx_class, ptr %20, i32 0, i32 2
  store i32 %28, ptr %29, align 4
  %30 = getelementptr i8, ptr %20, i32 20
  %31 = load ptr, ptr %14, align 4
  %32 = icmp eq ptr %31, null
  %33 = select i1 %32, ptr @.str.40, ptr %31
  %34 = call ptr @strcpy(ptr noundef %30, ptr noundef nonnull %33)
  call void @trace_event_buffer_commit(ptr noundef nonnull %3) #9
  br label %35

35:                                               ; preds = %22, %13, %11
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @perf_trace_rpcgss_ctx_class(ptr noundef %0, ptr noundef %1) #0 {
  %3 = alloca ptr, align 4
  %4 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #9
  store ptr null, ptr %3, align 4, !annotation !9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #9
  store i32 0, ptr %4, align 4, !annotation !9
  %5 = getelementptr inbounds %struct.gss_cred, ptr %1, i32 0, i32 4
  %6 = load ptr, ptr %5, align 4
  %7 = icmp eq ptr %6, null
  %8 = select i1 %7, ptr @.str.40, ptr %6
  %9 = tail call i32 @strlen(ptr noundef nonnull %8) #9
  %10 = shl i32 %9, 16
  %11 = add i32 %10, 65556
  %12 = getelementptr inbounds %struct.trace_event_call, ptr %0, i32 0, i32 10
  %13 = load ptr, ptr %12, align 4
  %14 = ptrtoint ptr %13 to i32
  %15 = tail call i32 @llvm.read_register.i32(metadata !0) #9
  %16 = inttoptr i32 %15 to ptr
  %17 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %16) #7, !srcloc !12
  %18 = add i32 %17, %14
  %19 = inttoptr i32 %18 to ptr
  %20 = getelementptr inbounds %struct.trace_event_call, ptr %0, i32 0, i32 11
  %21 = load volatile ptr, ptr %20, align 4
  %22 = icmp eq ptr %21, null
  br i1 %22, label %23, label %26

23:                                               ; preds = %2
  %24 = load volatile ptr, ptr %19, align 4
  %25 = icmp eq ptr %24, null
  br i1 %25, label %55, label %26

26:                                               ; preds = %23, %2
  %27 = add i32 %9, 32
  %28 = and i32 %27, -8
  %29 = add i32 %28, -4
  %30 = call ptr @perf_trace_buf_alloc(i32 noundef %29, ptr noundef nonnull %3, ptr noundef nonnull %4) #9
  %31 = icmp eq ptr %30, null
  br i1 %31, label %55, label %32

32:                                               ; preds = %26
  %33 = load ptr, ptr %3, align 4
  %34 = call ptr @llvm.returnaddress(i32 0) #9
  %35 = ptrtoint ptr %34 to i32
  %36 = getelementptr [18 x i32], ptr %33, i32 0, i32 15
  store i32 %35, ptr %36, align 4
  %37 = call ptr @llvm.frameaddress.p0(i32 0) #9
  %38 = ptrtoint ptr %37 to i32
  %39 = getelementptr [18 x i32], ptr %33, i32 0, i32 11
  store i32 %38, ptr %39, align 4
  %40 = call i32 @llvm.read_register.i32(metadata !0) #9
  %41 = getelementptr [18 x i32], ptr %33, i32 0, i32 13
  store i32 %40, ptr %41, align 4
  %42 = getelementptr [18 x i32], ptr %33, i32 0, i32 16
  store i32 19, ptr %42, align 4
  %43 = getelementptr inbounds %struct.trace_event_raw_rpcgss_ctx_class, ptr %30, i32 0, i32 3
  store i32 %11, ptr %43, align 4
  %44 = getelementptr inbounds %struct.trace_event_raw_rpcgss_ctx_class, ptr %30, i32 0, i32 1
  store ptr %1, ptr %44, align 4
  %45 = getelementptr inbounds %struct.gss_cred, ptr %1, i32 0, i32 1
  %46 = load i32, ptr %45, align 4
  %47 = getelementptr inbounds %struct.trace_event_raw_rpcgss_ctx_class, ptr %30, i32 0, i32 2
  store i32 %46, ptr %47, align 4
  %48 = getelementptr i8, ptr %30, i32 20
  %49 = load ptr, ptr %5, align 4
  %50 = icmp eq ptr %49, null
  %51 = select i1 %50, ptr @.str.40, ptr %49
  %52 = call ptr @strcpy(ptr noundef %48, ptr noundef nonnull %51)
  %53 = load i32, ptr %4, align 4
  %54 = load ptr, ptr %3, align 4
  call void @perf_trace_run_bpf_submit(ptr noundef nonnull %30, i32 noundef %29, i32 noundef %53, ptr noundef %0, i64 noundef 1, ptr noundef %54, ptr noundef %19, ptr noundef null) #9
  br label %55

55:                                               ; preds = %32, %26, %23
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @trace_event_raw_event_rpcgss_svc_gssapi_class(ptr noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2) #0 {
  %4 = alloca %struct.trace_event_buffer, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #9
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %4, i8 0, i32 24, i1 false), !annotation !9
  %5 = getelementptr inbounds %struct.trace_event_file, ptr %0, i32 0, i32 7
  %6 = load i32, ptr %5, align 4
  %7 = and i32 %6, 704
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %14, label %9, !prof !10

9:                                                ; preds = %3
  %10 = and i32 %6, 256
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %14, !prof !11

12:                                               ; preds = %9
  %13 = tail call zeroext i1 @__trace_trigger_soft_disabled(ptr noundef %0) #9
  br i1 %13, label %37, label %14

14:                                               ; preds = %12, %9, %3
  %15 = getelementptr inbounds %struct.svc_rqst, ptr %1, i32 0, i32 2
  %16 = load ptr, ptr %15, align 8
  %17 = getelementptr inbounds %struct.svc_xprt, ptr %16, i32 0, i32 17
  %18 = tail call i32 @strlen(ptr noundef nonnull %17) #9
  %19 = add i32 %18, 21
  %20 = call ptr @trace_event_buffer_reserve(ptr noundef nonnull %4, ptr noundef %0, i32 noundef %19) #9
  %21 = icmp eq ptr %20, null
  br i1 %21, label %37, label %22

22:                                               ; preds = %14
  %23 = shl i32 %18, 16
  %24 = add i32 %23, 65556
  %25 = getelementptr inbounds %struct.trace_event_raw_rpcgss_svc_gssapi_class, ptr %20, i32 0, i32 3
  store i32 %24, ptr %25, align 4
  %26 = getelementptr inbounds %struct.svc_rqst, ptr %1, i32 0, i32 27
  %27 = load i32, ptr %26, align 4
  %28 = call i32 @llvm.bswap.i32(i32 %27)
  %29 = getelementptr inbounds %struct.trace_event_raw_rpcgss_svc_gssapi_class, ptr %20, i32 0, i32 1
  store i32 %28, ptr %29, align 4
  %30 = getelementptr inbounds %struct.trace_event_raw_rpcgss_svc_gssapi_class, ptr %20, i32 0, i32 2
  store i32 %2, ptr %30, align 4
  %31 = getelementptr i8, ptr %20, i32 20
  %32 = load ptr, ptr %15, align 8
  %33 = getelementptr inbounds %struct.svc_xprt, ptr %32, i32 0, i32 17
  %34 = icmp eq ptr %33, null
  %35 = select i1 %34, ptr @.str.40, ptr %33
  %36 = call ptr @strcpy(ptr noundef %31, ptr noundef nonnull %35)
  call void @trace_event_buffer_commit(ptr noundef nonnull %4) #9
  br label %37

37:                                               ; preds = %22, %14, %12
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @perf_trace_rpcgss_svc_gssapi_class(ptr noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2) #0 {
  %4 = alloca ptr, align 4
  %5 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #9
  store ptr null, ptr %4, align 4, !annotation !9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #9
  store i32 0, ptr %5, align 4, !annotation !9
  %6 = getelementptr inbounds %struct.svc_rqst, ptr %1, i32 0, i32 2
  %7 = load ptr, ptr %6, align 8
  %8 = getelementptr inbounds %struct.svc_xprt, ptr %7, i32 0, i32 17
  %9 = tail call i32 @strlen(ptr noundef nonnull %8) #9
  %10 = shl i32 %9, 16
  %11 = add i32 %10, 65556
  %12 = getelementptr inbounds %struct.trace_event_call, ptr %0, i32 0, i32 10
  %13 = load ptr, ptr %12, align 4
  %14 = ptrtoint ptr %13 to i32
  %15 = tail call i32 @llvm.read_register.i32(metadata !0) #9
  %16 = inttoptr i32 %15 to ptr
  %17 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %16) #7, !srcloc !12
  %18 = add i32 %17, %14
  %19 = inttoptr i32 %18 to ptr
  %20 = getelementptr inbounds %struct.trace_event_call, ptr %0, i32 0, i32 11
  %21 = load volatile ptr, ptr %20, align 4
  %22 = icmp eq ptr %21, null
  br i1 %22, label %23, label %26

23:                                               ; preds = %3
  %24 = load volatile ptr, ptr %19, align 4
  %25 = icmp eq ptr %24, null
  br i1 %25, label %57, label %26

26:                                               ; preds = %23, %3
  %27 = add i32 %9, 32
  %28 = and i32 %27, -8
  %29 = add i32 %28, -4
  %30 = call ptr @perf_trace_buf_alloc(i32 noundef %29, ptr noundef nonnull %4, ptr noundef nonnull %5) #9
  %31 = icmp eq ptr %30, null
  br i1 %31, label %57, label %32

32:                                               ; preds = %26
  %33 = load ptr, ptr %4, align 4
  %34 = call ptr @llvm.returnaddress(i32 0) #9
  %35 = ptrtoint ptr %34 to i32
  %36 = getelementptr [18 x i32], ptr %33, i32 0, i32 15
  store i32 %35, ptr %36, align 4
  %37 = call ptr @llvm.frameaddress.p0(i32 0) #9
  %38 = ptrtoint ptr %37 to i32
  %39 = getelementptr [18 x i32], ptr %33, i32 0, i32 11
  store i32 %38, ptr %39, align 4
  %40 = call i32 @llvm.read_register.i32(metadata !0) #9
  %41 = getelementptr [18 x i32], ptr %33, i32 0, i32 13
  store i32 %40, ptr %41, align 4
  %42 = getelementptr [18 x i32], ptr %33, i32 0, i32 16
  store i32 19, ptr %42, align 4
  %43 = getelementptr inbounds %struct.trace_event_raw_rpcgss_svc_gssapi_class, ptr %30, i32 0, i32 3
  store i32 %11, ptr %43, align 4
  %44 = getelementptr inbounds %struct.svc_rqst, ptr %1, i32 0, i32 27
  %45 = load i32, ptr %44, align 4
  %46 = call i32 @llvm.bswap.i32(i32 %45)
  %47 = getelementptr inbounds %struct.trace_event_raw_rpcgss_svc_gssapi_class, ptr %30, i32 0, i32 1
  store i32 %46, ptr %47, align 4
  %48 = getelementptr inbounds %struct.trace_event_raw_rpcgss_svc_gssapi_class, ptr %30, i32 0, i32 2
  store i32 %2, ptr %48, align 4
  %49 = getelementptr i8, ptr %30, i32 20
  %50 = load ptr, ptr %6, align 8
  %51 = getelementptr inbounds %struct.svc_xprt, ptr %50, i32 0, i32 17
  %52 = icmp eq ptr %51, null
  %53 = select i1 %52, ptr @.str.40, ptr %51
  %54 = call ptr @strcpy(ptr noundef %49, ptr noundef nonnull %53)
  %55 = load i32, ptr %5, align 4
  %56 = load ptr, ptr %4, align 4
  call void @perf_trace_run_bpf_submit(ptr noundef nonnull %30, i32 noundef %29, i32 noundef %55, ptr noundef %0, i64 noundef 1, ptr noundef %56, ptr noundef %19, ptr noundef null) #9
  br label %57

57:                                               ; preds = %32, %26, %23
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @trace_event_raw_event_rpcgss_svc_unwrap_failed(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = alloca %struct.trace_event_buffer, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #9
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %3, i8 0, i32 24, i1 false), !annotation !9
  %4 = getelementptr inbounds %struct.trace_event_file, ptr %0, i32 0, i32 7
  %5 = load i32, ptr %4, align 4
  %6 = and i32 %5, 704
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %13, label %8, !prof !10

8:                                                ; preds = %2
  %9 = and i32 %5, 256
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %13, !prof !11

11:                                               ; preds = %8
  %12 = tail call zeroext i1 @__trace_trigger_soft_disabled(ptr noundef %0) #9
  br i1 %12, label %35, label %13

13:                                               ; preds = %11, %8, %2
  %14 = getelementptr inbounds %struct.svc_rqst, ptr %1, i32 0, i32 2
  %15 = load ptr, ptr %14, align 8
  %16 = getelementptr inbounds %struct.svc_xprt, ptr %15, i32 0, i32 17
  %17 = tail call i32 @strlen(ptr noundef nonnull %16) #9
  %18 = add i32 %17, 17
  %19 = call ptr @trace_event_buffer_reserve(ptr noundef nonnull %3, ptr noundef %0, i32 noundef %18) #9
  %20 = icmp eq ptr %19, null
  br i1 %20, label %35, label %21

21:                                               ; preds = %13
  %22 = shl i32 %17, 16
  %23 = add i32 %22, 65552
  %24 = getelementptr inbounds %struct.trace_event_raw_rpcgss_svc_unwrap_failed, ptr %19, i32 0, i32 2
  store i32 %23, ptr %24, align 4
  %25 = getelementptr inbounds %struct.svc_rqst, ptr %1, i32 0, i32 27
  %26 = load i32, ptr %25, align 4
  %27 = call i32 @llvm.bswap.i32(i32 %26)
  %28 = getelementptr inbounds %struct.trace_event_raw_rpcgss_svc_unwrap_failed, ptr %19, i32 0, i32 1
  store i32 %27, ptr %28, align 4
  %29 = getelementptr i8, ptr %19, i32 16
  %30 = load ptr, ptr %14, align 8
  %31 = getelementptr inbounds %struct.svc_xprt, ptr %30, i32 0, i32 17
  %32 = icmp eq ptr %31, null
  %33 = select i1 %32, ptr @.str.40, ptr %31
  %34 = call ptr @strcpy(ptr noundef %29, ptr noundef nonnull %33)
  call void @trace_event_buffer_commit(ptr noundef nonnull %3) #9
  br label %35

35:                                               ; preds = %21, %13, %11
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @perf_trace_rpcgss_svc_unwrap_failed(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = alloca ptr, align 4
  %4 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #9
  store ptr null, ptr %3, align 4, !annotation !9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #9
  store i32 0, ptr %4, align 4, !annotation !9
  %5 = getelementptr inbounds %struct.svc_rqst, ptr %1, i32 0, i32 2
  %6 = load ptr, ptr %5, align 8
  %7 = getelementptr inbounds %struct.svc_xprt, ptr %6, i32 0, i32 17
  %8 = tail call i32 @strlen(ptr noundef nonnull %7) #9
  %9 = shl i32 %8, 16
  %10 = add i32 %9, 65552
  %11 = getelementptr inbounds %struct.trace_event_call, ptr %0, i32 0, i32 10
  %12 = load ptr, ptr %11, align 4
  %13 = ptrtoint ptr %12 to i32
  %14 = tail call i32 @llvm.read_register.i32(metadata !0) #9
  %15 = inttoptr i32 %14 to ptr
  %16 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %15) #7, !srcloc !12
  %17 = add i32 %16, %13
  %18 = inttoptr i32 %17 to ptr
  %19 = getelementptr inbounds %struct.trace_event_call, ptr %0, i32 0, i32 11
  %20 = load volatile ptr, ptr %19, align 4
  %21 = icmp eq ptr %20, null
  br i1 %21, label %22, label %25

22:                                               ; preds = %2
  %23 = load volatile ptr, ptr %18, align 4
  %24 = icmp eq ptr %23, null
  br i1 %24, label %55, label %25

25:                                               ; preds = %22, %2
  %26 = add i32 %8, 28
  %27 = and i32 %26, -8
  %28 = add i32 %27, -4
  %29 = call ptr @perf_trace_buf_alloc(i32 noundef %28, ptr noundef nonnull %3, ptr noundef nonnull %4) #9
  %30 = icmp eq ptr %29, null
  br i1 %30, label %55, label %31

31:                                               ; preds = %25
  %32 = load ptr, ptr %3, align 4
  %33 = call ptr @llvm.returnaddress(i32 0) #9
  %34 = ptrtoint ptr %33 to i32
  %35 = getelementptr [18 x i32], ptr %32, i32 0, i32 15
  store i32 %34, ptr %35, align 4
  %36 = call ptr @llvm.frameaddress.p0(i32 0) #9
  %37 = ptrtoint ptr %36 to i32
  %38 = getelementptr [18 x i32], ptr %32, i32 0, i32 11
  store i32 %37, ptr %38, align 4
  %39 = call i32 @llvm.read_register.i32(metadata !0) #9
  %40 = getelementptr [18 x i32], ptr %32, i32 0, i32 13
  store i32 %39, ptr %40, align 4
  %41 = getelementptr [18 x i32], ptr %32, i32 0, i32 16
  store i32 19, ptr %41, align 4
  %42 = getelementptr inbounds %struct.trace_event_raw_rpcgss_svc_unwrap_failed, ptr %29, i32 0, i32 2
  store i32 %10, ptr %42, align 4
  %43 = getelementptr inbounds %struct.svc_rqst, ptr %1, i32 0, i32 27
  %44 = load i32, ptr %43, align 4
  %45 = call i32 @llvm.bswap.i32(i32 %44)
  %46 = getelementptr inbounds %struct.trace_event_raw_rpcgss_svc_unwrap_failed, ptr %29, i32 0, i32 1
  store i32 %45, ptr %46, align 4
  %47 = getelementptr i8, ptr %29, i32 16
  %48 = load ptr, ptr %5, align 8
  %49 = getelementptr inbounds %struct.svc_xprt, ptr %48, i32 0, i32 17
  %50 = icmp eq ptr %49, null
  %51 = select i1 %50, ptr @.str.40, ptr %49
  %52 = call ptr @strcpy(ptr noundef %47, ptr noundef nonnull %51)
  %53 = load i32, ptr %4, align 4
  %54 = load ptr, ptr %3, align 4
  call void @perf_trace_run_bpf_submit(ptr noundef nonnull %29, i32 noundef %28, i32 noundef %53, ptr noundef %0, i64 noundef 1, ptr noundef %54, ptr noundef %18, ptr noundef null) #9
  br label %55

55:                                               ; preds = %31, %25, %22
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @trace_event_raw_event_rpcgss_svc_seqno_bad(ptr noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2, i32 noundef %3) #0 {
  %5 = alloca %struct.trace_event_buffer, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #9
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %5, i8 0, i32 24, i1 false), !annotation !9
  %6 = getelementptr inbounds %struct.trace_event_file, ptr %0, i32 0, i32 7
  %7 = load i32, ptr %6, align 4
  %8 = and i32 %7, 704
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %15, label %10, !prof !10

10:                                               ; preds = %4
  %11 = and i32 %7, 256
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %15, !prof !11

13:                                               ; preds = %10
  %14 = tail call zeroext i1 @__trace_trigger_soft_disabled(ptr noundef %0) #9
  br i1 %14, label %39, label %15

15:                                               ; preds = %13, %10, %4
  %16 = getelementptr inbounds %struct.svc_rqst, ptr %1, i32 0, i32 2
  %17 = load ptr, ptr %16, align 8
  %18 = getelementptr inbounds %struct.svc_xprt, ptr %17, i32 0, i32 17
  %19 = tail call i32 @strlen(ptr noundef nonnull %18) #9
  %20 = add i32 %19, 25
  %21 = call ptr @trace_event_buffer_reserve(ptr noundef nonnull %5, ptr noundef %0, i32 noundef %20) #9
  %22 = icmp eq ptr %21, null
  br i1 %22, label %39, label %23

23:                                               ; preds = %15
  %24 = shl i32 %19, 16
  %25 = add i32 %24, 65560
  %26 = getelementptr inbounds %struct.trace_event_raw_rpcgss_svc_seqno_bad, ptr %21, i32 0, i32 4
  store i32 %25, ptr %26, align 4
  %27 = getelementptr inbounds %struct.trace_event_raw_rpcgss_svc_seqno_bad, ptr %21, i32 0, i32 1
  store i32 %2, ptr %27, align 4
  %28 = getelementptr inbounds %struct.trace_event_raw_rpcgss_svc_seqno_bad, ptr %21, i32 0, i32 2
  store i32 %3, ptr %28, align 4
  %29 = getelementptr inbounds %struct.svc_rqst, ptr %1, i32 0, i32 27
  %30 = load i32, ptr %29, align 4
  %31 = call i32 @llvm.bswap.i32(i32 %30)
  %32 = getelementptr inbounds %struct.trace_event_raw_rpcgss_svc_seqno_bad, ptr %21, i32 0, i32 3
  store i32 %31, ptr %32, align 4
  %33 = getelementptr i8, ptr %21, i32 24
  %34 = load ptr, ptr %16, align 8
  %35 = getelementptr inbounds %struct.svc_xprt, ptr %34, i32 0, i32 17
  %36 = icmp eq ptr %35, null
  %37 = select i1 %36, ptr @.str.40, ptr %35
  %38 = call ptr @strcpy(ptr noundef %33, ptr noundef nonnull %37)
  call void @trace_event_buffer_commit(ptr noundef nonnull %5) #9
  br label %39

39:                                               ; preds = %23, %15, %13
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @perf_trace_rpcgss_svc_seqno_bad(ptr noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2, i32 noundef %3) #0 {
  %5 = alloca ptr, align 4
  %6 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #9
  store ptr null, ptr %5, align 4, !annotation !9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #9
  store i32 0, ptr %6, align 4, !annotation !9
  %7 = getelementptr inbounds %struct.svc_rqst, ptr %1, i32 0, i32 2
  %8 = load ptr, ptr %7, align 8
  %9 = getelementptr inbounds %struct.svc_xprt, ptr %8, i32 0, i32 17
  %10 = tail call i32 @strlen(ptr noundef nonnull %9) #9
  %11 = shl i32 %10, 16
  %12 = add i32 %11, 65560
  %13 = getelementptr inbounds %struct.trace_event_call, ptr %0, i32 0, i32 10
  %14 = load ptr, ptr %13, align 4
  %15 = ptrtoint ptr %14 to i32
  %16 = tail call i32 @llvm.read_register.i32(metadata !0) #9
  %17 = inttoptr i32 %16 to ptr
  %18 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %17) #7, !srcloc !12
  %19 = add i32 %18, %15
  %20 = inttoptr i32 %19 to ptr
  %21 = getelementptr inbounds %struct.trace_event_call, ptr %0, i32 0, i32 11
  %22 = load volatile ptr, ptr %21, align 4
  %23 = icmp eq ptr %22, null
  br i1 %23, label %24, label %27

24:                                               ; preds = %4
  %25 = load volatile ptr, ptr %20, align 4
  %26 = icmp eq ptr %25, null
  br i1 %26, label %59, label %27

27:                                               ; preds = %24, %4
  %28 = add i32 %10, 36
  %29 = and i32 %28, -8
  %30 = add i32 %29, -4
  %31 = call ptr @perf_trace_buf_alloc(i32 noundef %30, ptr noundef nonnull %5, ptr noundef nonnull %6) #9
  %32 = icmp eq ptr %31, null
  br i1 %32, label %59, label %33

33:                                               ; preds = %27
  %34 = load ptr, ptr %5, align 4
  %35 = call ptr @llvm.returnaddress(i32 0) #9
  %36 = ptrtoint ptr %35 to i32
  %37 = getelementptr [18 x i32], ptr %34, i32 0, i32 15
  store i32 %36, ptr %37, align 4
  %38 = call ptr @llvm.frameaddress.p0(i32 0) #9
  %39 = ptrtoint ptr %38 to i32
  %40 = getelementptr [18 x i32], ptr %34, i32 0, i32 11
  store i32 %39, ptr %40, align 4
  %41 = call i32 @llvm.read_register.i32(metadata !0) #9
  %42 = getelementptr [18 x i32], ptr %34, i32 0, i32 13
  store i32 %41, ptr %42, align 4
  %43 = getelementptr [18 x i32], ptr %34, i32 0, i32 16
  store i32 19, ptr %43, align 4
  %44 = getelementptr inbounds %struct.trace_event_raw_rpcgss_svc_seqno_bad, ptr %31, i32 0, i32 4
  store i32 %12, ptr %44, align 4
  %45 = getelementptr inbounds %struct.trace_event_raw_rpcgss_svc_seqno_bad, ptr %31, i32 0, i32 1
  store i32 %2, ptr %45, align 4
  %46 = getelementptr inbounds %struct.trace_event_raw_rpcgss_svc_seqno_bad, ptr %31, i32 0, i32 2
  store i32 %3, ptr %46, align 4
  %47 = getelementptr inbounds %struct.svc_rqst, ptr %1, i32 0, i32 27
  %48 = load i32, ptr %47, align 4
  %49 = call i32 @llvm.bswap.i32(i32 %48)
  %50 = getelementptr inbounds %struct.trace_event_raw_rpcgss_svc_seqno_bad, ptr %31, i32 0, i32 3
  store i32 %49, ptr %50, align 4
  %51 = getelementptr i8, ptr %31, i32 24
  %52 = load ptr, ptr %7, align 8
  %53 = getelementptr inbounds %struct.svc_xprt, ptr %52, i32 0, i32 17
  %54 = icmp eq ptr %53, null
  %55 = select i1 %54, ptr @.str.40, ptr %53
  %56 = call ptr @strcpy(ptr noundef %51, ptr noundef nonnull %55)
  %57 = load i32, ptr %6, align 4
  %58 = load ptr, ptr %5, align 4
  call void @perf_trace_run_bpf_submit(ptr noundef nonnull %31, i32 noundef %30, i32 noundef %57, ptr noundef %0, i64 noundef 1, ptr noundef %58, ptr noundef %20, ptr noundef null) #9
  br label %59

59:                                               ; preds = %33, %27, %24
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @trace_event_raw_event_rpcgss_svc_accept_upcall(ptr noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2, i32 noundef %3) #0 {
  %5 = alloca %struct.trace_event_buffer, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #9
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %5, i8 0, i32 24, i1 false), !annotation !9
  %6 = getelementptr inbounds %struct.trace_event_file, ptr %0, i32 0, i32 7
  %7 = load i32, ptr %6, align 4
  %8 = and i32 %7, 704
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %15, label %10, !prof !10

10:                                               ; preds = %4
  %11 = and i32 %7, 256
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %15, !prof !11

13:                                               ; preds = %10
  %14 = tail call zeroext i1 @__trace_trigger_soft_disabled(ptr noundef %0) #9
  br i1 %14, label %39, label %15

15:                                               ; preds = %13, %10, %4
  %16 = getelementptr inbounds %struct.svc_rqst, ptr %1, i32 0, i32 2
  %17 = load ptr, ptr %16, align 8
  %18 = getelementptr inbounds %struct.svc_xprt, ptr %17, i32 0, i32 17
  %19 = tail call i32 @strlen(ptr noundef nonnull %18) #9
  %20 = add i32 %19, 25
  %21 = call ptr @trace_event_buffer_reserve(ptr noundef nonnull %5, ptr noundef %0, i32 noundef %20) #9
  %22 = icmp eq ptr %21, null
  br i1 %22, label %39, label %23

23:                                               ; preds = %15
  %24 = shl i32 %19, 16
  %25 = add i32 %24, 65560
  %26 = getelementptr inbounds %struct.trace_event_raw_rpcgss_svc_accept_upcall, ptr %21, i32 0, i32 4
  store i32 %25, ptr %26, align 4
  %27 = getelementptr inbounds %struct.trace_event_raw_rpcgss_svc_accept_upcall, ptr %21, i32 0, i32 1
  store i32 %3, ptr %27, align 4
  %28 = getelementptr inbounds %struct.trace_event_raw_rpcgss_svc_accept_upcall, ptr %21, i32 0, i32 2
  store i32 %2, ptr %28, align 4
  %29 = getelementptr inbounds %struct.svc_rqst, ptr %1, i32 0, i32 27
  %30 = load i32, ptr %29, align 4
  %31 = call i32 @llvm.bswap.i32(i32 %30)
  %32 = getelementptr inbounds %struct.trace_event_raw_rpcgss_svc_accept_upcall, ptr %21, i32 0, i32 3
  store i32 %31, ptr %32, align 4
  %33 = getelementptr i8, ptr %21, i32 24
  %34 = load ptr, ptr %16, align 8
  %35 = getelementptr inbounds %struct.svc_xprt, ptr %34, i32 0, i32 17
  %36 = icmp eq ptr %35, null
  %37 = select i1 %36, ptr @.str.40, ptr %35
  %38 = call ptr @strcpy(ptr noundef %33, ptr noundef nonnull %37)
  call void @trace_event_buffer_commit(ptr noundef nonnull %5) #9
  br label %39

39:                                               ; preds = %23, %15, %13
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @perf_trace_rpcgss_svc_accept_upcall(ptr noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2, i32 noundef %3) #0 {
  %5 = alloca ptr, align 4
  %6 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #9
  store ptr null, ptr %5, align 4, !annotation !9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #9
  store i32 0, ptr %6, align 4, !annotation !9
  %7 = getelementptr inbounds %struct.svc_rqst, ptr %1, i32 0, i32 2
  %8 = load ptr, ptr %7, align 8
  %9 = getelementptr inbounds %struct.svc_xprt, ptr %8, i32 0, i32 17
  %10 = tail call i32 @strlen(ptr noundef nonnull %9) #9
  %11 = shl i32 %10, 16
  %12 = add i32 %11, 65560
  %13 = getelementptr inbounds %struct.trace_event_call, ptr %0, i32 0, i32 10
  %14 = load ptr, ptr %13, align 4
  %15 = ptrtoint ptr %14 to i32
  %16 = tail call i32 @llvm.read_register.i32(metadata !0) #9
  %17 = inttoptr i32 %16 to ptr
  %18 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %17) #7, !srcloc !12
  %19 = add i32 %18, %15
  %20 = inttoptr i32 %19 to ptr
  %21 = getelementptr inbounds %struct.trace_event_call, ptr %0, i32 0, i32 11
  %22 = load volatile ptr, ptr %21, align 4
  %23 = icmp eq ptr %22, null
  br i1 %23, label %24, label %27

24:                                               ; preds = %4
  %25 = load volatile ptr, ptr %20, align 4
  %26 = icmp eq ptr %25, null
  br i1 %26, label %59, label %27

27:                                               ; preds = %24, %4
  %28 = add i32 %10, 36
  %29 = and i32 %28, -8
  %30 = add i32 %29, -4
  %31 = call ptr @perf_trace_buf_alloc(i32 noundef %30, ptr noundef nonnull %5, ptr noundef nonnull %6) #9
  %32 = icmp eq ptr %31, null
  br i1 %32, label %59, label %33

33:                                               ; preds = %27
  %34 = load ptr, ptr %5, align 4
  %35 = call ptr @llvm.returnaddress(i32 0) #9
  %36 = ptrtoint ptr %35 to i32
  %37 = getelementptr [18 x i32], ptr %34, i32 0, i32 15
  store i32 %36, ptr %37, align 4
  %38 = call ptr @llvm.frameaddress.p0(i32 0) #9
  %39 = ptrtoint ptr %38 to i32
  %40 = getelementptr [18 x i32], ptr %34, i32 0, i32 11
  store i32 %39, ptr %40, align 4
  %41 = call i32 @llvm.read_register.i32(metadata !0) #9
  %42 = getelementptr [18 x i32], ptr %34, i32 0, i32 13
  store i32 %41, ptr %42, align 4
  %43 = getelementptr [18 x i32], ptr %34, i32 0, i32 16
  store i32 19, ptr %43, align 4
  %44 = getelementptr inbounds %struct.trace_event_raw_rpcgss_svc_accept_upcall, ptr %31, i32 0, i32 4
  store i32 %12, ptr %44, align 4
  %45 = getelementptr inbounds %struct.trace_event_raw_rpcgss_svc_accept_upcall, ptr %31, i32 0, i32 1
  store i32 %3, ptr %45, align 4
  %46 = getelementptr inbounds %struct.trace_event_raw_rpcgss_svc_accept_upcall, ptr %31, i32 0, i32 2
  store i32 %2, ptr %46, align 4
  %47 = getelementptr inbounds %struct.svc_rqst, ptr %1, i32 0, i32 27
  %48 = load i32, ptr %47, align 4
  %49 = call i32 @llvm.bswap.i32(i32 %48)
  %50 = getelementptr inbounds %struct.trace_event_raw_rpcgss_svc_accept_upcall, ptr %31, i32 0, i32 3
  store i32 %49, ptr %50, align 4
  %51 = getelementptr i8, ptr %31, i32 24
  %52 = load ptr, ptr %7, align 8
  %53 = getelementptr inbounds %struct.svc_xprt, ptr %52, i32 0, i32 17
  %54 = icmp eq ptr %53, null
  %55 = select i1 %54, ptr @.str.40, ptr %53
  %56 = call ptr @strcpy(ptr noundef %51, ptr noundef nonnull %55)
  %57 = load i32, ptr %6, align 4
  %58 = load ptr, ptr %5, align 4
  call void @perf_trace_run_bpf_submit(ptr noundef nonnull %31, i32 noundef %30, i32 noundef %57, ptr noundef %0, i64 noundef 1, ptr noundef %58, ptr noundef %20, ptr noundef null) #9
  br label %59

59:                                               ; preds = %33, %27, %24
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @trace_event_raw_event_rpcgss_svc_authenticate(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) #0 {
  %4 = alloca %struct.trace_event_buffer, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #9
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %4, i8 0, i32 24, i1 false), !annotation !9
  %5 = getelementptr inbounds %struct.trace_event_file, ptr %0, i32 0, i32 7
  %6 = load i32, ptr %5, align 4
  %7 = and i32 %6, 704
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %14, label %9, !prof !10

9:                                                ; preds = %3
  %10 = and i32 %6, 256
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %14, !prof !11

12:                                               ; preds = %9
  %13 = tail call zeroext i1 @__trace_trigger_soft_disabled(ptr noundef %0) #9
  br i1 %13, label %39, label %14

14:                                               ; preds = %12, %9, %3
  %15 = getelementptr inbounds %struct.svc_rqst, ptr %1, i32 0, i32 2
  %16 = load ptr, ptr %15, align 8
  %17 = getelementptr inbounds %struct.svc_xprt, ptr %16, i32 0, i32 17
  %18 = tail call i32 @strlen(ptr noundef nonnull %17) #9
  %19 = add i32 %18, 21
  %20 = call ptr @trace_event_buffer_reserve(ptr noundef nonnull %4, ptr noundef %0, i32 noundef %19) #9
  %21 = icmp eq ptr %20, null
  br i1 %21, label %39, label %22

22:                                               ; preds = %14
  %23 = shl i32 %18, 16
  %24 = add i32 %23, 65556
  %25 = getelementptr inbounds %struct.trace_event_raw_rpcgss_svc_authenticate, ptr %20, i32 0, i32 3
  store i32 %24, ptr %25, align 4
  %26 = getelementptr inbounds %struct.svc_rqst, ptr %1, i32 0, i32 27
  %27 = load i32, ptr %26, align 4
  %28 = call i32 @llvm.bswap.i32(i32 %27)
  %29 = getelementptr inbounds %struct.trace_event_raw_rpcgss_svc_authenticate, ptr %20, i32 0, i32 2
  store i32 %28, ptr %29, align 4
  %30 = getelementptr inbounds %struct.rpc_gss_wire_cred, ptr %2, i32 0, i32 2
  %31 = load i32, ptr %30, align 4
  %32 = getelementptr inbounds %struct.trace_event_raw_rpcgss_svc_authenticate, ptr %20, i32 0, i32 1
  store i32 %31, ptr %32, align 4
  %33 = getelementptr i8, ptr %20, i32 20
  %34 = load ptr, ptr %15, align 8
  %35 = getelementptr inbounds %struct.svc_xprt, ptr %34, i32 0, i32 17
  %36 = icmp eq ptr %35, null
  %37 = select i1 %36, ptr @.str.40, ptr %35
  %38 = call ptr @strcpy(ptr noundef %33, ptr noundef nonnull %37)
  call void @trace_event_buffer_commit(ptr noundef nonnull %4) #9
  br label %39

39:                                               ; preds = %22, %14, %12
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @perf_trace_rpcgss_svc_authenticate(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) #0 {
  %4 = alloca ptr, align 4
  %5 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #9
  store ptr null, ptr %4, align 4, !annotation !9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #9
  store i32 0, ptr %5, align 4, !annotation !9
  %6 = getelementptr inbounds %struct.svc_rqst, ptr %1, i32 0, i32 2
  %7 = load ptr, ptr %6, align 8
  %8 = getelementptr inbounds %struct.svc_xprt, ptr %7, i32 0, i32 17
  %9 = tail call i32 @strlen(ptr noundef nonnull %8) #9
  %10 = shl i32 %9, 16
  %11 = add i32 %10, 65556
  %12 = getelementptr inbounds %struct.trace_event_call, ptr %0, i32 0, i32 10
  %13 = load ptr, ptr %12, align 4
  %14 = ptrtoint ptr %13 to i32
  %15 = tail call i32 @llvm.read_register.i32(metadata !0) #9
  %16 = inttoptr i32 %15 to ptr
  %17 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %16) #7, !srcloc !12
  %18 = add i32 %17, %14
  %19 = inttoptr i32 %18 to ptr
  %20 = getelementptr inbounds %struct.trace_event_call, ptr %0, i32 0, i32 11
  %21 = load volatile ptr, ptr %20, align 4
  %22 = icmp eq ptr %21, null
  br i1 %22, label %23, label %26

23:                                               ; preds = %3
  %24 = load volatile ptr, ptr %19, align 4
  %25 = icmp eq ptr %24, null
  br i1 %25, label %59, label %26

26:                                               ; preds = %23, %3
  %27 = add i32 %9, 32
  %28 = and i32 %27, -8
  %29 = add i32 %28, -4
  %30 = call ptr @perf_trace_buf_alloc(i32 noundef %29, ptr noundef nonnull %4, ptr noundef nonnull %5) #9
  %31 = icmp eq ptr %30, null
  br i1 %31, label %59, label %32

32:                                               ; preds = %26
  %33 = load ptr, ptr %4, align 4
  %34 = call ptr @llvm.returnaddress(i32 0) #9
  %35 = ptrtoint ptr %34 to i32
  %36 = getelementptr [18 x i32], ptr %33, i32 0, i32 15
  store i32 %35, ptr %36, align 4
  %37 = call ptr @llvm.frameaddress.p0(i32 0) #9
  %38 = ptrtoint ptr %37 to i32
  %39 = getelementptr [18 x i32], ptr %33, i32 0, i32 11
  store i32 %38, ptr %39, align 4
  %40 = call i32 @llvm.read_register.i32(metadata !0) #9
  %41 = getelementptr [18 x i32], ptr %33, i32 0, i32 13
  store i32 %40, ptr %41, align 4
  %42 = getelementptr [18 x i32], ptr %33, i32 0, i32 16
  store i32 19, ptr %42, align 4
  %43 = getelementptr inbounds %struct.trace_event_raw_rpcgss_svc_authenticate, ptr %30, i32 0, i32 3
  store i32 %11, ptr %43, align 4
  %44 = getelementptr inbounds %struct.svc_rqst, ptr %1, i32 0, i32 27
  %45 = load i32, ptr %44, align 4
  %46 = call i32 @llvm.bswap.i32(i32 %45)
  %47 = getelementptr inbounds %struct.trace_event_raw_rpcgss_svc_authenticate, ptr %30, i32 0, i32 2
  store i32 %46, ptr %47, align 4
  %48 = getelementptr inbounds %struct.rpc_gss_wire_cred, ptr %2, i32 0, i32 2
  %49 = load i32, ptr %48, align 4
  %50 = getelementptr inbounds %struct.trace_event_raw_rpcgss_svc_authenticate, ptr %30, i32 0, i32 1
  store i32 %49, ptr %50, align 4
  %51 = getelementptr i8, ptr %30, i32 20
  %52 = load ptr, ptr %6, align 8
  %53 = getelementptr inbounds %struct.svc_xprt, ptr %52, i32 0, i32 17
  %54 = icmp eq ptr %53, null
  %55 = select i1 %54, ptr @.str.40, ptr %53
  %56 = call ptr @strcpy(ptr noundef %51, ptr noundef nonnull %55)
  %57 = load i32, ptr %5, align 4
  %58 = load ptr, ptr %4, align 4
  call void @perf_trace_run_bpf_submit(ptr noundef nonnull %30, i32 noundef %29, i32 noundef %57, ptr noundef %0, i64 noundef 1, ptr noundef %58, ptr noundef %19, ptr noundef null) #9
  br label %59

59:                                               ; preds = %32, %26, %23
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @trace_event_raw_event_rpcgss_unwrap_failed(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = alloca %struct.trace_event_buffer, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #9
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %3, i8 0, i32 24, i1 false), !annotation !9
  %4 = getelementptr inbounds %struct.trace_event_file, ptr %0, i32 0, i32 7
  %5 = load i32, ptr %4, align 4
  %6 = and i32 %5, 704
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %13, label %8, !prof !10

8:                                                ; preds = %2
  %9 = and i32 %5, 256
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %13, !prof !11

11:                                               ; preds = %8
  %12 = tail call zeroext i1 @__trace_trigger_soft_disabled(ptr noundef %0) #9
  br i1 %12, label %26, label %13

13:                                               ; preds = %11, %8, %2
  %14 = call ptr @trace_event_buffer_reserve(ptr noundef nonnull %3, ptr noundef %0, i32 noundef 16) #9
  %15 = icmp eq ptr %14, null
  br i1 %15, label %26, label %16

16:                                               ; preds = %13
  %17 = getelementptr inbounds %struct.rpc_task, ptr %1, i32 0, i32 22
  %18 = load i16, ptr %17, align 8
  %19 = zext i16 %18 to i32
  %20 = getelementptr inbounds %struct.trace_event_raw_rpcgss_unwrap_failed, ptr %14, i32 0, i32 1
  store i32 %19, ptr %20, align 4
  %21 = getelementptr inbounds %struct.rpc_task, ptr %1, i32 0, i32 13
  %22 = load ptr, ptr %21, align 8
  %23 = getelementptr inbounds %struct.rpc_clnt, ptr %22, i32 0, i32 1
  %24 = load i32, ptr %23, align 4
  %25 = getelementptr inbounds %struct.trace_event_raw_rpcgss_unwrap_failed, ptr %14, i32 0, i32 2
  store i32 %24, ptr %25, align 4
  call void @trace_event_buffer_commit(ptr noundef nonnull %3) #9
  br label %26

26:                                               ; preds = %16, %13, %11
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @perf_trace_rpcgss_unwrap_failed(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = alloca ptr, align 4
  %4 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #9
  store ptr null, ptr %3, align 4, !annotation !9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #9
  store i32 0, ptr %4, align 4, !annotation !9
  %5 = getelementptr inbounds %struct.trace_event_call, ptr %0, i32 0, i32 10
  %6 = load ptr, ptr %5, align 4
  %7 = ptrtoint ptr %6 to i32
  %8 = tail call i32 @llvm.read_register.i32(metadata !0) #9
  %9 = inttoptr i32 %8 to ptr
  %10 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %9) #7, !srcloc !12
  %11 = add i32 %10, %7
  %12 = inttoptr i32 %11 to ptr
  %13 = getelementptr inbounds %struct.trace_event_call, ptr %0, i32 0, i32 11
  %14 = load volatile ptr, ptr %13, align 4
  %15 = icmp eq ptr %14, null
  br i1 %15, label %16, label %19

16:                                               ; preds = %2
  %17 = load volatile ptr, ptr %12, align 4
  %18 = icmp eq ptr %17, null
  br i1 %18, label %44, label %19

19:                                               ; preds = %16, %2
  %20 = call ptr @perf_trace_buf_alloc(i32 noundef 20, ptr noundef nonnull %3, ptr noundef nonnull %4) #9
  %21 = icmp eq ptr %20, null
  br i1 %21, label %44, label %22

22:                                               ; preds = %19
  %23 = load ptr, ptr %3, align 4
  %24 = call ptr @llvm.returnaddress(i32 0) #9
  %25 = ptrtoint ptr %24 to i32
  %26 = getelementptr [18 x i32], ptr %23, i32 0, i32 15
  store i32 %25, ptr %26, align 4
  %27 = call ptr @llvm.frameaddress.p0(i32 0) #9
  %28 = ptrtoint ptr %27 to i32
  %29 = getelementptr [18 x i32], ptr %23, i32 0, i32 11
  store i32 %28, ptr %29, align 4
  %30 = call i32 @llvm.read_register.i32(metadata !0) #9
  %31 = getelementptr [18 x i32], ptr %23, i32 0, i32 13
  store i32 %30, ptr %31, align 4
  %32 = getelementptr [18 x i32], ptr %23, i32 0, i32 16
  store i32 19, ptr %32, align 4
  %33 = getelementptr inbounds %struct.rpc_task, ptr %1, i32 0, i32 22
  %34 = load i16, ptr %33, align 8
  %35 = zext i16 %34 to i32
  %36 = getelementptr inbounds %struct.trace_event_raw_rpcgss_unwrap_failed, ptr %20, i32 0, i32 1
  store i32 %35, ptr %36, align 4
  %37 = getelementptr inbounds %struct.rpc_task, ptr %1, i32 0, i32 13
  %38 = load ptr, ptr %37, align 8
  %39 = getelementptr inbounds %struct.rpc_clnt, ptr %38, i32 0, i32 1
  %40 = load i32, ptr %39, align 4
  %41 = getelementptr inbounds %struct.trace_event_raw_rpcgss_unwrap_failed, ptr %20, i32 0, i32 2
  store i32 %40, ptr %41, align 4
  %42 = load i32, ptr %4, align 4
  %43 = load ptr, ptr %3, align 4
  call void @perf_trace_run_bpf_submit(ptr noundef nonnull %20, i32 noundef 20, i32 noundef %42, ptr noundef %0, i64 noundef 1, ptr noundef %43, ptr noundef %12, ptr noundef null) #9
  br label %44

44:                                               ; preds = %22, %19, %16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @trace_event_raw_event_rpcgss_bad_seqno(ptr noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2, i32 noundef %3) #0 {
  %5 = alloca %struct.trace_event_buffer, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #9
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %5, i8 0, i32 24, i1 false), !annotation !9
  %6 = getelementptr inbounds %struct.trace_event_file, ptr %0, i32 0, i32 7
  %7 = load i32, ptr %6, align 4
  %8 = and i32 %7, 704
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %15, label %10, !prof !10

10:                                               ; preds = %4
  %11 = and i32 %7, 256
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %15, !prof !11

13:                                               ; preds = %10
  %14 = tail call zeroext i1 @__trace_trigger_soft_disabled(ptr noundef %0) #9
  br i1 %14, label %30, label %15

15:                                               ; preds = %13, %10, %4
  %16 = call ptr @trace_event_buffer_reserve(ptr noundef nonnull %5, ptr noundef %0, i32 noundef 24) #9
  %17 = icmp eq ptr %16, null
  br i1 %17, label %30, label %18

18:                                               ; preds = %15
  %19 = getelementptr inbounds %struct.rpc_task, ptr %1, i32 0, i32 22
  %20 = load i16, ptr %19, align 8
  %21 = zext i16 %20 to i32
  %22 = getelementptr inbounds %struct.trace_event_raw_rpcgss_bad_seqno, ptr %16, i32 0, i32 1
  store i32 %21, ptr %22, align 4
  %23 = getelementptr inbounds %struct.rpc_task, ptr %1, i32 0, i32 13
  %24 = load ptr, ptr %23, align 8
  %25 = getelementptr inbounds %struct.rpc_clnt, ptr %24, i32 0, i32 1
  %26 = load i32, ptr %25, align 4
  %27 = getelementptr inbounds %struct.trace_event_raw_rpcgss_bad_seqno, ptr %16, i32 0, i32 2
  store i32 %26, ptr %27, align 4
  %28 = getelementptr inbounds %struct.trace_event_raw_rpcgss_bad_seqno, ptr %16, i32 0, i32 3
  store i32 %2, ptr %28, align 4
  %29 = getelementptr inbounds %struct.trace_event_raw_rpcgss_bad_seqno, ptr %16, i32 0, i32 4
  store i32 %3, ptr %29, align 4
  call void @trace_event_buffer_commit(ptr noundef nonnull %5) #9
  br label %30

30:                                               ; preds = %18, %15, %13
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @perf_trace_rpcgss_bad_seqno(ptr noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2, i32 noundef %3) #0 {
  %5 = alloca ptr, align 4
  %6 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #9
  store ptr null, ptr %5, align 4, !annotation !9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #9
  store i32 0, ptr %6, align 4, !annotation !9
  %7 = getelementptr inbounds %struct.trace_event_call, ptr %0, i32 0, i32 10
  %8 = load ptr, ptr %7, align 4
  %9 = ptrtoint ptr %8 to i32
  %10 = tail call i32 @llvm.read_register.i32(metadata !0) #9
  %11 = inttoptr i32 %10 to ptr
  %12 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %11) #7, !srcloc !12
  %13 = add i32 %12, %9
  %14 = inttoptr i32 %13 to ptr
  %15 = getelementptr inbounds %struct.trace_event_call, ptr %0, i32 0, i32 11
  %16 = load volatile ptr, ptr %15, align 4
  %17 = icmp eq ptr %16, null
  br i1 %17, label %18, label %21

18:                                               ; preds = %4
  %19 = load volatile ptr, ptr %14, align 4
  %20 = icmp eq ptr %19, null
  br i1 %20, label %48, label %21

21:                                               ; preds = %18, %4
  %22 = call ptr @perf_trace_buf_alloc(i32 noundef 28, ptr noundef nonnull %5, ptr noundef nonnull %6) #9
  %23 = icmp eq ptr %22, null
  br i1 %23, label %48, label %24

24:                                               ; preds = %21
  %25 = load ptr, ptr %5, align 4
  %26 = call ptr @llvm.returnaddress(i32 0) #9
  %27 = ptrtoint ptr %26 to i32
  %28 = getelementptr [18 x i32], ptr %25, i32 0, i32 15
  store i32 %27, ptr %28, align 4
  %29 = call ptr @llvm.frameaddress.p0(i32 0) #9
  %30 = ptrtoint ptr %29 to i32
  %31 = getelementptr [18 x i32], ptr %25, i32 0, i32 11
  store i32 %30, ptr %31, align 4
  %32 = call i32 @llvm.read_register.i32(metadata !0) #9
  %33 = getelementptr [18 x i32], ptr %25, i32 0, i32 13
  store i32 %32, ptr %33, align 4
  %34 = getelementptr [18 x i32], ptr %25, i32 0, i32 16
  store i32 19, ptr %34, align 4
  %35 = getelementptr inbounds %struct.rpc_task, ptr %1, i32 0, i32 22
  %36 = load i16, ptr %35, align 8
  %37 = zext i16 %36 to i32
  %38 = getelementptr inbounds %struct.trace_event_raw_rpcgss_bad_seqno, ptr %22, i32 0, i32 1
  store i32 %37, ptr %38, align 4
  %39 = getelementptr inbounds %struct.rpc_task, ptr %1, i32 0, i32 13
  %40 = load ptr, ptr %39, align 8
  %41 = getelementptr inbounds %struct.rpc_clnt, ptr %40, i32 0, i32 1
  %42 = load i32, ptr %41, align 4
  %43 = getelementptr inbounds %struct.trace_event_raw_rpcgss_bad_seqno, ptr %22, i32 0, i32 2
  store i32 %42, ptr %43, align 4
  %44 = getelementptr inbounds %struct.trace_event_raw_rpcgss_bad_seqno, ptr %22, i32 0, i32 3
  store i32 %2, ptr %44, align 4
  %45 = getelementptr inbounds %struct.trace_event_raw_rpcgss_bad_seqno, ptr %22, i32 0, i32 4
  store i32 %3, ptr %45, align 4
  %46 = load i32, ptr %6, align 4
  %47 = load ptr, ptr %5, align 4
  call void @perf_trace_run_bpf_submit(ptr noundef nonnull %22, i32 noundef 28, i32 noundef %46, ptr noundef %0, i64 noundef 1, ptr noundef %47, ptr noundef %14, ptr noundef null) #9
  br label %48

48:                                               ; preds = %24, %21, %18
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @trace_event_raw_event_rpcgss_seqno(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = alloca %struct.trace_event_buffer, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #9
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %3, i8 0, i32 24, i1 false), !annotation !9
  %4 = getelementptr inbounds %struct.trace_event_file, ptr %0, i32 0, i32 7
  %5 = load i32, ptr %4, align 4
  %6 = and i32 %5, 704
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %13, label %8, !prof !10

8:                                                ; preds = %2
  %9 = and i32 %5, 256
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %13, !prof !11

11:                                               ; preds = %8
  %12 = tail call zeroext i1 @__trace_trigger_soft_disabled(ptr noundef %0) #9
  br i1 %12, label %35, label %13

13:                                               ; preds = %11, %8, %2
  %14 = call ptr @trace_event_buffer_reserve(ptr noundef nonnull %3, ptr noundef %0, i32 noundef 24) #9
  %15 = icmp eq ptr %14, null
  br i1 %15, label %35, label %16

16:                                               ; preds = %13
  %17 = getelementptr inbounds %struct.rpc_task, ptr %1, i32 0, i32 16
  %18 = load ptr, ptr %17, align 4
  %19 = getelementptr inbounds %struct.rpc_task, ptr %1, i32 0, i32 22
  %20 = load i16, ptr %19, align 8
  %21 = zext i16 %20 to i32
  %22 = getelementptr inbounds %struct.trace_event_raw_rpcgss_seqno, ptr %14, i32 0, i32 1
  store i32 %21, ptr %22, align 4
  %23 = getelementptr inbounds %struct.rpc_task, ptr %1, i32 0, i32 13
  %24 = load ptr, ptr %23, align 8
  %25 = getelementptr inbounds %struct.rpc_clnt, ptr %24, i32 0, i32 1
  %26 = load i32, ptr %25, align 4
  %27 = getelementptr inbounds %struct.trace_event_raw_rpcgss_seqno, ptr %14, i32 0, i32 2
  store i32 %26, ptr %27, align 4
  %28 = getelementptr inbounds %struct.rpc_rqst, ptr %18, i32 0, i32 5
  %29 = load i32, ptr %28, align 4
  %30 = call i32 @llvm.bswap.i32(i32 %29)
  %31 = getelementptr inbounds %struct.trace_event_raw_rpcgss_seqno, ptr %14, i32 0, i32 3
  store i32 %30, ptr %31, align 4
  %32 = getelementptr inbounds %struct.rpc_rqst, ptr %18, i32 0, i32 7
  %33 = load i32, ptr %32, align 4
  %34 = getelementptr inbounds %struct.trace_event_raw_rpcgss_seqno, ptr %14, i32 0, i32 4
  store i32 %33, ptr %34, align 4
  call void @trace_event_buffer_commit(ptr noundef nonnull %3) #9
  br label %35

35:                                               ; preds = %16, %13, %11
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @perf_trace_rpcgss_seqno(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = alloca ptr, align 4
  %4 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #9
  store ptr null, ptr %3, align 4, !annotation !9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #9
  store i32 0, ptr %4, align 4, !annotation !9
  %5 = getelementptr inbounds %struct.trace_event_call, ptr %0, i32 0, i32 10
  %6 = load ptr, ptr %5, align 4
  %7 = ptrtoint ptr %6 to i32
  %8 = tail call i32 @llvm.read_register.i32(metadata !0) #9
  %9 = inttoptr i32 %8 to ptr
  %10 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %9) #7, !srcloc !12
  %11 = add i32 %10, %7
  %12 = inttoptr i32 %11 to ptr
  %13 = getelementptr inbounds %struct.trace_event_call, ptr %0, i32 0, i32 11
  %14 = load volatile ptr, ptr %13, align 4
  %15 = icmp eq ptr %14, null
  br i1 %15, label %16, label %19

16:                                               ; preds = %2
  %17 = load volatile ptr, ptr %12, align 4
  %18 = icmp eq ptr %17, null
  br i1 %18, label %53, label %19

19:                                               ; preds = %16, %2
  %20 = call ptr @perf_trace_buf_alloc(i32 noundef 28, ptr noundef nonnull %3, ptr noundef nonnull %4) #9
  %21 = icmp eq ptr %20, null
  br i1 %21, label %53, label %22

22:                                               ; preds = %19
  %23 = load ptr, ptr %3, align 4
  %24 = call ptr @llvm.returnaddress(i32 0) #9
  %25 = ptrtoint ptr %24 to i32
  %26 = getelementptr [18 x i32], ptr %23, i32 0, i32 15
  store i32 %25, ptr %26, align 4
  %27 = call ptr @llvm.frameaddress.p0(i32 0) #9
  %28 = ptrtoint ptr %27 to i32
  %29 = getelementptr [18 x i32], ptr %23, i32 0, i32 11
  store i32 %28, ptr %29, align 4
  %30 = call i32 @llvm.read_register.i32(metadata !0) #9
  %31 = getelementptr [18 x i32], ptr %23, i32 0, i32 13
  store i32 %30, ptr %31, align 4
  %32 = getelementptr [18 x i32], ptr %23, i32 0, i32 16
  store i32 19, ptr %32, align 4
  %33 = getelementptr inbounds %struct.rpc_task, ptr %1, i32 0, i32 16
  %34 = load ptr, ptr %33, align 4
  %35 = getelementptr inbounds %struct.rpc_task, ptr %1, i32 0, i32 22
  %36 = load i16, ptr %35, align 8
  %37 = zext i16 %36 to i32
  %38 = getelementptr inbounds %struct.trace_event_raw_rpcgss_seqno, ptr %20, i32 0, i32 1
  store i32 %37, ptr %38, align 4
  %39 = getelementptr inbounds %struct.rpc_task, ptr %1, i32 0, i32 13
  %40 = load ptr, ptr %39, align 8
  %41 = getelementptr inbounds %struct.rpc_clnt, ptr %40, i32 0, i32 1
  %42 = load i32, ptr %41, align 4
  %43 = getelementptr inbounds %struct.trace_event_raw_rpcgss_seqno, ptr %20, i32 0, i32 2
  store i32 %42, ptr %43, align 4
  %44 = getelementptr inbounds %struct.rpc_rqst, ptr %34, i32 0, i32 5
  %45 = load i32, ptr %44, align 4
  %46 = call i32 @llvm.bswap.i32(i32 %45)
  %47 = getelementptr inbounds %struct.trace_event_raw_rpcgss_seqno, ptr %20, i32 0, i32 3
  store i32 %46, ptr %47, align 4
  %48 = getelementptr inbounds %struct.rpc_rqst, ptr %34, i32 0, i32 7
  %49 = load i32, ptr %48, align 4
  %50 = getelementptr inbounds %struct.trace_event_raw_rpcgss_seqno, ptr %20, i32 0, i32 4
  store i32 %49, ptr %50, align 4
  %51 = load i32, ptr %4, align 4
  %52 = load ptr, ptr %3, align 4
  call void @perf_trace_run_bpf_submit(ptr noundef nonnull %20, i32 noundef 28, i32 noundef %51, ptr noundef %0, i64 noundef 1, ptr noundef %52, ptr noundef %12, ptr noundef null) #9
  br label %53

53:                                               ; preds = %22, %19, %16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @trace_event_raw_event_rpcgss_need_reencode(ptr noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2, i1 noundef zeroext %3) #0 {
  %5 = alloca %struct.trace_event_buffer, align 4
  %6 = zext i1 %3 to i8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #9
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %5, i8 0, i32 24, i1 false), !annotation !9
  %7 = getelementptr inbounds %struct.trace_event_file, ptr %0, i32 0, i32 7
  %8 = load i32, ptr %7, align 4
  %9 = and i32 %8, 704
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %16, label %11, !prof !10

11:                                               ; preds = %4
  %12 = and i32 %8, 256
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %16, !prof !11

14:                                               ; preds = %11
  %15 = tail call zeroext i1 @__trace_trigger_soft_disabled(ptr noundef %0) #9
  br i1 %15, label %41, label %16

16:                                               ; preds = %14, %11, %4
  %17 = call ptr @trace_event_buffer_reserve(ptr noundef nonnull %5, ptr noundef %0, i32 noundef 32) #9
  %18 = icmp eq ptr %17, null
  br i1 %18, label %41, label %19

19:                                               ; preds = %16
  %20 = getelementptr inbounds %struct.rpc_task, ptr %1, i32 0, i32 22
  %21 = load i16, ptr %20, align 8
  %22 = zext i16 %21 to i32
  %23 = getelementptr inbounds %struct.trace_event_raw_rpcgss_need_reencode, ptr %17, i32 0, i32 1
  store i32 %22, ptr %23, align 4
  %24 = getelementptr inbounds %struct.rpc_task, ptr %1, i32 0, i32 13
  %25 = load ptr, ptr %24, align 8
  %26 = getelementptr inbounds %struct.rpc_clnt, ptr %25, i32 0, i32 1
  %27 = load i32, ptr %26, align 4
  %28 = getelementptr inbounds %struct.trace_event_raw_rpcgss_need_reencode, ptr %17, i32 0, i32 2
  store i32 %27, ptr %28, align 4
  %29 = getelementptr inbounds %struct.rpc_task, ptr %1, i32 0, i32 16
  %30 = load ptr, ptr %29, align 4
  %31 = getelementptr inbounds %struct.rpc_rqst, ptr %30, i32 0, i32 5
  %32 = load i32, ptr %31, align 4
  %33 = call i32 @llvm.bswap.i32(i32 %32)
  %34 = getelementptr inbounds %struct.trace_event_raw_rpcgss_need_reencode, ptr %17, i32 0, i32 3
  store i32 %33, ptr %34, align 4
  %35 = getelementptr inbounds %struct.trace_event_raw_rpcgss_need_reencode, ptr %17, i32 0, i32 4
  store i32 %2, ptr %35, align 4
  %36 = load ptr, ptr %29, align 4
  %37 = getelementptr inbounds %struct.rpc_rqst, ptr %36, i32 0, i32 7
  %38 = load i32, ptr %37, align 4
  %39 = getelementptr inbounds %struct.trace_event_raw_rpcgss_need_reencode, ptr %17, i32 0, i32 5
  store i32 %38, ptr %39, align 4
  %40 = getelementptr inbounds %struct.trace_event_raw_rpcgss_need_reencode, ptr %17, i32 0, i32 6
  store i8 %6, ptr %40, align 4
  call void @trace_event_buffer_commit(ptr noundef nonnull %5) #9
  br label %41

41:                                               ; preds = %19, %16, %14
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @perf_trace_rpcgss_need_reencode(ptr noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2, i1 noundef zeroext %3) #0 {
  %5 = alloca ptr, align 4
  %6 = alloca i32, align 4
  %7 = zext i1 %3 to i8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #9
  store ptr null, ptr %5, align 4, !annotation !9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #9
  store i32 0, ptr %6, align 4, !annotation !9
  %8 = getelementptr inbounds %struct.trace_event_call, ptr %0, i32 0, i32 10
  %9 = load ptr, ptr %8, align 4
  %10 = ptrtoint ptr %9 to i32
  %11 = tail call i32 @llvm.read_register.i32(metadata !0) #9
  %12 = inttoptr i32 %11 to ptr
  %13 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %12) #7, !srcloc !12
  %14 = add i32 %13, %10
  %15 = inttoptr i32 %14 to ptr
  %16 = getelementptr inbounds %struct.trace_event_call, ptr %0, i32 0, i32 11
  %17 = load volatile ptr, ptr %16, align 4
  %18 = icmp eq ptr %17, null
  br i1 %18, label %19, label %22

19:                                               ; preds = %4
  %20 = load volatile ptr, ptr %15, align 4
  %21 = icmp eq ptr %20, null
  br i1 %21, label %59, label %22

22:                                               ; preds = %19, %4
  %23 = call ptr @perf_trace_buf_alloc(i32 noundef 36, ptr noundef nonnull %5, ptr noundef nonnull %6) #9
  %24 = icmp eq ptr %23, null
  br i1 %24, label %59, label %25

25:                                               ; preds = %22
  %26 = load ptr, ptr %5, align 4
  %27 = call ptr @llvm.returnaddress(i32 0) #9
  %28 = ptrtoint ptr %27 to i32
  %29 = getelementptr [18 x i32], ptr %26, i32 0, i32 15
  store i32 %28, ptr %29, align 4
  %30 = call ptr @llvm.frameaddress.p0(i32 0) #9
  %31 = ptrtoint ptr %30 to i32
  %32 = getelementptr [18 x i32], ptr %26, i32 0, i32 11
  store i32 %31, ptr %32, align 4
  %33 = call i32 @llvm.read_register.i32(metadata !0) #9
  %34 = getelementptr [18 x i32], ptr %26, i32 0, i32 13
  store i32 %33, ptr %34, align 4
  %35 = getelementptr [18 x i32], ptr %26, i32 0, i32 16
  store i32 19, ptr %35, align 4
  %36 = getelementptr inbounds %struct.rpc_task, ptr %1, i32 0, i32 22
  %37 = load i16, ptr %36, align 8
  %38 = zext i16 %37 to i32
  %39 = getelementptr inbounds %struct.trace_event_raw_rpcgss_need_reencode, ptr %23, i32 0, i32 1
  store i32 %38, ptr %39, align 4
  %40 = getelementptr inbounds %struct.rpc_task, ptr %1, i32 0, i32 13
  %41 = load ptr, ptr %40, align 8
  %42 = getelementptr inbounds %struct.rpc_clnt, ptr %41, i32 0, i32 1
  %43 = load i32, ptr %42, align 4
  %44 = getelementptr inbounds %struct.trace_event_raw_rpcgss_need_reencode, ptr %23, i32 0, i32 2
  store i32 %43, ptr %44, align 4
  %45 = getelementptr inbounds %struct.rpc_task, ptr %1, i32 0, i32 16
  %46 = load ptr, ptr %45, align 4
  %47 = getelementptr inbounds %struct.rpc_rqst, ptr %46, i32 0, i32 5
  %48 = load i32, ptr %47, align 4
  %49 = call i32 @llvm.bswap.i32(i32 %48)
  %50 = getelementptr inbounds %struct.trace_event_raw_rpcgss_need_reencode, ptr %23, i32 0, i32 3
  store i32 %49, ptr %50, align 4
  %51 = getelementptr inbounds %struct.trace_event_raw_rpcgss_need_reencode, ptr %23, i32 0, i32 4
  store i32 %2, ptr %51, align 4
  %52 = load ptr, ptr %45, align 4
  %53 = getelementptr inbounds %struct.rpc_rqst, ptr %52, i32 0, i32 7
  %54 = load i32, ptr %53, align 4
  %55 = getelementptr inbounds %struct.trace_event_raw_rpcgss_need_reencode, ptr %23, i32 0, i32 5
  store i32 %54, ptr %55, align 4
  %56 = getelementptr inbounds %struct.trace_event_raw_rpcgss_need_reencode, ptr %23, i32 0, i32 6
  store i8 %7, ptr %56, align 4
  %57 = load i32, ptr %6, align 4
  %58 = load ptr, ptr %5, align 4
  call void @perf_trace_run_bpf_submit(ptr noundef nonnull %23, i32 noundef 36, i32 noundef %57, ptr noundef %0, i64 noundef 1, ptr noundef %58, ptr noundef %15, ptr noundef null) #9
  br label %59

59:                                               ; preds = %25, %22, %19
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @trace_event_raw_event_rpcgss_update_slack(ptr noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2) #0 {
  %4 = alloca %struct.trace_event_buffer, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #9
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %4, i8 0, i32 24, i1 false), !annotation !9
  %5 = getelementptr inbounds %struct.trace_event_file, ptr %0, i32 0, i32 7
  %6 = load i32, ptr %5, align 4
  %7 = and i32 %6, 704
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %14, label %9, !prof !10

9:                                                ; preds = %3
  %10 = and i32 %6, 256
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %14, !prof !11

12:                                               ; preds = %9
  %13 = tail call zeroext i1 @__trace_trigger_soft_disabled(ptr noundef %0) #9
  br i1 %13, label %43, label %14

14:                                               ; preds = %12, %9, %3
  %15 = call ptr @trace_event_buffer_reserve(ptr noundef nonnull %4, ptr noundef %0, i32 noundef 36) #9
  %16 = icmp eq ptr %15, null
  br i1 %16, label %43, label %17

17:                                               ; preds = %14
  %18 = getelementptr inbounds %struct.rpc_task, ptr %1, i32 0, i32 22
  %19 = load i16, ptr %18, align 8
  %20 = zext i16 %19 to i32
  %21 = getelementptr inbounds %struct.trace_event_raw_rpcgss_update_slack, ptr %15, i32 0, i32 1
  store i32 %20, ptr %21, align 4
  %22 = getelementptr inbounds %struct.rpc_task, ptr %1, i32 0, i32 13
  %23 = load ptr, ptr %22, align 8
  %24 = getelementptr inbounds %struct.rpc_clnt, ptr %23, i32 0, i32 1
  %25 = load i32, ptr %24, align 4
  %26 = getelementptr inbounds %struct.trace_event_raw_rpcgss_update_slack, ptr %15, i32 0, i32 2
  store i32 %25, ptr %26, align 4
  %27 = getelementptr inbounds %struct.rpc_task, ptr %1, i32 0, i32 16
  %28 = load ptr, ptr %27, align 4
  %29 = getelementptr inbounds %struct.rpc_rqst, ptr %28, i32 0, i32 5
  %30 = load i32, ptr %29, align 4
  %31 = call i32 @llvm.bswap.i32(i32 %30)
  %32 = getelementptr inbounds %struct.trace_event_raw_rpcgss_update_slack, ptr %15, i32 0, i32 3
  store i32 %31, ptr %32, align 4
  %33 = getelementptr inbounds %struct.trace_event_raw_rpcgss_update_slack, ptr %15, i32 0, i32 4
  store ptr %2, ptr %33, align 4
  %34 = getelementptr inbounds %struct.rpc_auth, ptr %2, i32 0, i32 1
  %35 = load i32, ptr %34, align 4
  %36 = getelementptr inbounds %struct.trace_event_raw_rpcgss_update_slack, ptr %15, i32 0, i32 5
  store i32 %35, ptr %36, align 4
  %37 = getelementptr inbounds %struct.rpc_auth, ptr %2, i32 0, i32 3
  %38 = load i32, ptr %37, align 4
  %39 = getelementptr inbounds %struct.trace_event_raw_rpcgss_update_slack, ptr %15, i32 0, i32 6
  store i32 %38, ptr %39, align 4
  %40 = getelementptr inbounds %struct.rpc_auth, ptr %2, i32 0, i32 2
  %41 = load i32, ptr %40, align 4
  %42 = getelementptr inbounds %struct.trace_event_raw_rpcgss_update_slack, ptr %15, i32 0, i32 7
  store i32 %41, ptr %42, align 4
  call void @trace_event_buffer_commit(ptr noundef nonnull %4) #9
  br label %43

43:                                               ; preds = %17, %14, %12
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @perf_trace_rpcgss_update_slack(ptr noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2) #0 {
  %4 = alloca ptr, align 4
  %5 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #9
  store ptr null, ptr %4, align 4, !annotation !9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #9
  store i32 0, ptr %5, align 4, !annotation !9
  %6 = getelementptr inbounds %struct.trace_event_call, ptr %0, i32 0, i32 10
  %7 = load ptr, ptr %6, align 4
  %8 = ptrtoint ptr %7 to i32
  %9 = tail call i32 @llvm.read_register.i32(metadata !0) #9
  %10 = inttoptr i32 %9 to ptr
  %11 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %10) #7, !srcloc !12
  %12 = add i32 %11, %8
  %13 = inttoptr i32 %12 to ptr
  %14 = getelementptr inbounds %struct.trace_event_call, ptr %0, i32 0, i32 11
  %15 = load volatile ptr, ptr %14, align 4
  %16 = icmp eq ptr %15, null
  br i1 %16, label %17, label %20

17:                                               ; preds = %3
  %18 = load volatile ptr, ptr %13, align 4
  %19 = icmp eq ptr %18, null
  br i1 %19, label %61, label %20

20:                                               ; preds = %17, %3
  %21 = call ptr @perf_trace_buf_alloc(i32 noundef 36, ptr noundef nonnull %4, ptr noundef nonnull %5) #9
  %22 = icmp eq ptr %21, null
  br i1 %22, label %61, label %23

23:                                               ; preds = %20
  %24 = load ptr, ptr %4, align 4
  %25 = call ptr @llvm.returnaddress(i32 0) #9
  %26 = ptrtoint ptr %25 to i32
  %27 = getelementptr [18 x i32], ptr %24, i32 0, i32 15
  store i32 %26, ptr %27, align 4
  %28 = call ptr @llvm.frameaddress.p0(i32 0) #9
  %29 = ptrtoint ptr %28 to i32
  %30 = getelementptr [18 x i32], ptr %24, i32 0, i32 11
  store i32 %29, ptr %30, align 4
  %31 = call i32 @llvm.read_register.i32(metadata !0) #9
  %32 = getelementptr [18 x i32], ptr %24, i32 0, i32 13
  store i32 %31, ptr %32, align 4
  %33 = getelementptr [18 x i32], ptr %24, i32 0, i32 16
  store i32 19, ptr %33, align 4
  %34 = getelementptr inbounds %struct.rpc_task, ptr %1, i32 0, i32 22
  %35 = load i16, ptr %34, align 8
  %36 = zext i16 %35 to i32
  %37 = getelementptr inbounds %struct.trace_event_raw_rpcgss_update_slack, ptr %21, i32 0, i32 1
  store i32 %36, ptr %37, align 4
  %38 = getelementptr inbounds %struct.rpc_task, ptr %1, i32 0, i32 13
  %39 = load ptr, ptr %38, align 8
  %40 = getelementptr inbounds %struct.rpc_clnt, ptr %39, i32 0, i32 1
  %41 = load i32, ptr %40, align 4
  %42 = getelementptr inbounds %struct.trace_event_raw_rpcgss_update_slack, ptr %21, i32 0, i32 2
  store i32 %41, ptr %42, align 4
  %43 = getelementptr inbounds %struct.rpc_task, ptr %1, i32 0, i32 16
  %44 = load ptr, ptr %43, align 4
  %45 = getelementptr inbounds %struct.rpc_rqst, ptr %44, i32 0, i32 5
  %46 = load i32, ptr %45, align 4
  %47 = call i32 @llvm.bswap.i32(i32 %46)
  %48 = getelementptr inbounds %struct.trace_event_raw_rpcgss_update_slack, ptr %21, i32 0, i32 3
  store i32 %47, ptr %48, align 4
  %49 = getelementptr inbounds %struct.trace_event_raw_rpcgss_update_slack, ptr %21, i32 0, i32 4
  store ptr %2, ptr %49, align 4
  %50 = getelementptr inbounds %struct.rpc_auth, ptr %2, i32 0, i32 1
  %51 = load i32, ptr %50, align 4
  %52 = getelementptr inbounds %struct.trace_event_raw_rpcgss_update_slack, ptr %21, i32 0, i32 5
  store i32 %51, ptr %52, align 4
  %53 = getelementptr inbounds %struct.rpc_auth, ptr %2, i32 0, i32 3
  %54 = load i32, ptr %53, align 4
  %55 = getelementptr inbounds %struct.trace_event_raw_rpcgss_update_slack, ptr %21, i32 0, i32 6
  store i32 %54, ptr %55, align 4
  %56 = getelementptr inbounds %struct.rpc_auth, ptr %2, i32 0, i32 2
  %57 = load i32, ptr %56, align 4
  %58 = getelementptr inbounds %struct.trace_event_raw_rpcgss_update_slack, ptr %21, i32 0, i32 7
  store i32 %57, ptr %58, align 4
  %59 = load i32, ptr %5, align 4
  %60 = load ptr, ptr %4, align 4
  call void @perf_trace_run_bpf_submit(ptr noundef nonnull %21, i32 noundef 36, i32 noundef %59, ptr noundef %0, i64 noundef 1, ptr noundef %60, ptr noundef %13, ptr noundef null) #9
  br label %61

61:                                               ; preds = %23, %20, %17
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @trace_event_raw_event_rpcgss_svc_seqno_class(ptr noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2) #0 {
  %4 = alloca %struct.trace_event_buffer, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #9
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %4, i8 0, i32 24, i1 false), !annotation !9
  %5 = getelementptr inbounds %struct.trace_event_file, ptr %0, i32 0, i32 7
  %6 = load i32, ptr %5, align 4
  %7 = and i32 %6, 704
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %14, label %9, !prof !10

9:                                                ; preds = %3
  %10 = and i32 %6, 256
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %14, !prof !11

12:                                               ; preds = %9
  %13 = tail call zeroext i1 @__trace_trigger_soft_disabled(ptr noundef %0) #9
  br i1 %13, label %23, label %14

14:                                               ; preds = %12, %9, %3
  %15 = call ptr @trace_event_buffer_reserve(ptr noundef nonnull %4, ptr noundef %0, i32 noundef 16) #9
  %16 = icmp eq ptr %15, null
  br i1 %16, label %23, label %17

17:                                               ; preds = %14
  %18 = getelementptr inbounds %struct.svc_rqst, ptr %1, i32 0, i32 27
  %19 = load i32, ptr %18, align 4
  %20 = call i32 @llvm.bswap.i32(i32 %19)
  %21 = getelementptr inbounds %struct.trace_event_raw_rpcgss_svc_seqno_class, ptr %15, i32 0, i32 1
  store i32 %20, ptr %21, align 4
  %22 = getelementptr inbounds %struct.trace_event_raw_rpcgss_svc_seqno_class, ptr %15, i32 0, i32 2
  store i32 %2, ptr %22, align 4
  call void @trace_event_buffer_commit(ptr noundef nonnull %4) #9
  br label %23

23:                                               ; preds = %17, %14, %12
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @perf_trace_rpcgss_svc_seqno_class(ptr noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2) #0 {
  %4 = alloca ptr, align 4
  %5 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #9
  store ptr null, ptr %4, align 4, !annotation !9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #9
  store i32 0, ptr %5, align 4, !annotation !9
  %6 = getelementptr inbounds %struct.trace_event_call, ptr %0, i32 0, i32 10
  %7 = load ptr, ptr %6, align 4
  %8 = ptrtoint ptr %7 to i32
  %9 = tail call i32 @llvm.read_register.i32(metadata !0) #9
  %10 = inttoptr i32 %9 to ptr
  %11 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %10) #7, !srcloc !12
  %12 = add i32 %11, %8
  %13 = inttoptr i32 %12 to ptr
  %14 = getelementptr inbounds %struct.trace_event_call, ptr %0, i32 0, i32 11
  %15 = load volatile ptr, ptr %14, align 4
  %16 = icmp eq ptr %15, null
  br i1 %16, label %17, label %20

17:                                               ; preds = %3
  %18 = load volatile ptr, ptr %13, align 4
  %19 = icmp eq ptr %18, null
  br i1 %19, label %41, label %20

20:                                               ; preds = %17, %3
  %21 = call ptr @perf_trace_buf_alloc(i32 noundef 20, ptr noundef nonnull %4, ptr noundef nonnull %5) #9
  %22 = icmp eq ptr %21, null
  br i1 %22, label %41, label %23

23:                                               ; preds = %20
  %24 = load ptr, ptr %4, align 4
  %25 = call ptr @llvm.returnaddress(i32 0) #9
  %26 = ptrtoint ptr %25 to i32
  %27 = getelementptr [18 x i32], ptr %24, i32 0, i32 15
  store i32 %26, ptr %27, align 4
  %28 = call ptr @llvm.frameaddress.p0(i32 0) #9
  %29 = ptrtoint ptr %28 to i32
  %30 = getelementptr [18 x i32], ptr %24, i32 0, i32 11
  store i32 %29, ptr %30, align 4
  %31 = call i32 @llvm.read_register.i32(metadata !0) #9
  %32 = getelementptr [18 x i32], ptr %24, i32 0, i32 13
  store i32 %31, ptr %32, align 4
  %33 = getelementptr [18 x i32], ptr %24, i32 0, i32 16
  store i32 19, ptr %33, align 4
  %34 = getelementptr inbounds %struct.svc_rqst, ptr %1, i32 0, i32 27
  %35 = load i32, ptr %34, align 4
  %36 = call i32 @llvm.bswap.i32(i32 %35)
  %37 = getelementptr inbounds %struct.trace_event_raw_rpcgss_svc_seqno_class, ptr %21, i32 0, i32 1
  store i32 %36, ptr %37, align 4
  %38 = getelementptr inbounds %struct.trace_event_raw_rpcgss_svc_seqno_class, ptr %21, i32 0, i32 2
  store i32 %2, ptr %38, align 4
  %39 = load i32, ptr %5, align 4
  %40 = load ptr, ptr %4, align 4
  call void @perf_trace_run_bpf_submit(ptr noundef nonnull %21, i32 noundef 20, i32 noundef %39, ptr noundef %0, i64 noundef 1, ptr noundef %40, ptr noundef %13, ptr noundef null) #9
  br label %41

41:                                               ; preds = %23, %20, %17
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @trace_event_raw_event_rpcgss_svc_seqno_low(ptr noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) #0 {
  %6 = alloca %struct.trace_event_buffer, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %6) #9
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %6, i8 0, i32 24, i1 false), !annotation !9
  %7 = getelementptr inbounds %struct.trace_event_file, ptr %0, i32 0, i32 7
  %8 = load i32, ptr %7, align 4
  %9 = and i32 %8, 704
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %16, label %11, !prof !10

11:                                               ; preds = %5
  %12 = and i32 %8, 256
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %16, !prof !11

14:                                               ; preds = %11
  %15 = tail call zeroext i1 @__trace_trigger_soft_disabled(ptr noundef %0) #9
  br i1 %15, label %27, label %16

16:                                               ; preds = %14, %11, %5
  %17 = call ptr @trace_event_buffer_reserve(ptr noundef nonnull %6, ptr noundef %0, i32 noundef 24) #9
  %18 = icmp eq ptr %17, null
  br i1 %18, label %27, label %19

19:                                               ; preds = %16
  %20 = getelementptr inbounds %struct.svc_rqst, ptr %1, i32 0, i32 27
  %21 = load i32, ptr %20, align 4
  %22 = call i32 @llvm.bswap.i32(i32 %21)
  %23 = getelementptr inbounds %struct.trace_event_raw_rpcgss_svc_seqno_low, ptr %17, i32 0, i32 1
  store i32 %22, ptr %23, align 4
  %24 = getelementptr inbounds %struct.trace_event_raw_rpcgss_svc_seqno_low, ptr %17, i32 0, i32 2
  store i32 %2, ptr %24, align 4
  %25 = getelementptr inbounds %struct.trace_event_raw_rpcgss_svc_seqno_low, ptr %17, i32 0, i32 3
  store i32 %3, ptr %25, align 4
  %26 = getelementptr inbounds %struct.trace_event_raw_rpcgss_svc_seqno_low, ptr %17, i32 0, i32 4
  store i32 %4, ptr %26, align 4
  call void @trace_event_buffer_commit(ptr noundef nonnull %6) #9
  br label %27

27:                                               ; preds = %19, %16, %14
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %6) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @perf_trace_rpcgss_svc_seqno_low(ptr noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) #0 {
  %6 = alloca ptr, align 4
  %7 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #9
  store ptr null, ptr %6, align 4, !annotation !9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #9
  store i32 0, ptr %7, align 4, !annotation !9
  %8 = getelementptr inbounds %struct.trace_event_call, ptr %0, i32 0, i32 10
  %9 = load ptr, ptr %8, align 4
  %10 = ptrtoint ptr %9 to i32
  %11 = tail call i32 @llvm.read_register.i32(metadata !0) #9
  %12 = inttoptr i32 %11 to ptr
  %13 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %12) #7, !srcloc !12
  %14 = add i32 %13, %10
  %15 = inttoptr i32 %14 to ptr
  %16 = getelementptr inbounds %struct.trace_event_call, ptr %0, i32 0, i32 11
  %17 = load volatile ptr, ptr %16, align 4
  %18 = icmp eq ptr %17, null
  br i1 %18, label %19, label %22

19:                                               ; preds = %5
  %20 = load volatile ptr, ptr %15, align 4
  %21 = icmp eq ptr %20, null
  br i1 %21, label %45, label %22

22:                                               ; preds = %19, %5
  %23 = call ptr @perf_trace_buf_alloc(i32 noundef 28, ptr noundef nonnull %6, ptr noundef nonnull %7) #9
  %24 = icmp eq ptr %23, null
  br i1 %24, label %45, label %25

25:                                               ; preds = %22
  %26 = load ptr, ptr %6, align 4
  %27 = call ptr @llvm.returnaddress(i32 0) #9
  %28 = ptrtoint ptr %27 to i32
  %29 = getelementptr [18 x i32], ptr %26, i32 0, i32 15
  store i32 %28, ptr %29, align 4
  %30 = call ptr @llvm.frameaddress.p0(i32 0) #9
  %31 = ptrtoint ptr %30 to i32
  %32 = getelementptr [18 x i32], ptr %26, i32 0, i32 11
  store i32 %31, ptr %32, align 4
  %33 = call i32 @llvm.read_register.i32(metadata !0) #9
  %34 = getelementptr [18 x i32], ptr %26, i32 0, i32 13
  store i32 %33, ptr %34, align 4
  %35 = getelementptr [18 x i32], ptr %26, i32 0, i32 16
  store i32 19, ptr %35, align 4
  %36 = getelementptr inbounds %struct.svc_rqst, ptr %1, i32 0, i32 27
  %37 = load i32, ptr %36, align 4
  %38 = call i32 @llvm.bswap.i32(i32 %37)
  %39 = getelementptr inbounds %struct.trace_event_raw_rpcgss_svc_seqno_low, ptr %23, i32 0, i32 1
  store i32 %38, ptr %39, align 4
  %40 = getelementptr inbounds %struct.trace_event_raw_rpcgss_svc_seqno_low, ptr %23, i32 0, i32 2
  store i32 %2, ptr %40, align 4
  %41 = getelementptr inbounds %struct.trace_event_raw_rpcgss_svc_seqno_low, ptr %23, i32 0, i32 3
  store i32 %3, ptr %41, align 4
  %42 = getelementptr inbounds %struct.trace_event_raw_rpcgss_svc_seqno_low, ptr %23, i32 0, i32 4
  store i32 %4, ptr %42, align 4
  %43 = load i32, ptr %7, align 4
  %44 = load ptr, ptr %6, align 4
  call void @perf_trace_run_bpf_submit(ptr noundef nonnull %23, i32 noundef 28, i32 noundef %43, ptr noundef %0, i64 noundef 1, ptr noundef %44, ptr noundef %15, ptr noundef null) #9
  br label %45

45:                                               ; preds = %25, %22, %19
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @trace_event_raw_event_rpcgss_upcall_msg(ptr noundef %0, ptr noundef readonly %1) #0 {
  %3 = alloca %struct.trace_event_buffer, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #9
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %3, i8 0, i32 24, i1 false), !annotation !9
  %4 = getelementptr inbounds %struct.trace_event_file, ptr %0, i32 0, i32 7
  %5 = load i32, ptr %4, align 4
  %6 = and i32 %5, 704
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %13, label %8, !prof !10

8:                                                ; preds = %2
  %9 = and i32 %5, 256
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %13, !prof !11

11:                                               ; preds = %8
  %12 = tail call zeroext i1 @__trace_trigger_soft_disabled(ptr noundef %0) #9
  br i1 %12, label %26, label %13

13:                                               ; preds = %11, %8, %2
  %14 = icmp eq ptr %1, null
  %15 = select i1 %14, ptr @.str.40, ptr %1
  %16 = tail call i32 @strlen(ptr noundef %15) #9
  %17 = add i32 %16, 13
  %18 = call ptr @trace_event_buffer_reserve(ptr noundef nonnull %3, ptr noundef %0, i32 noundef %17) #9
  %19 = icmp eq ptr %18, null
  br i1 %19, label %26, label %20

20:                                               ; preds = %13
  %21 = shl i32 %16, 16
  %22 = add i32 %21, 65548
  %23 = getelementptr inbounds %struct.trace_event_raw_rpcgss_upcall_msg, ptr %18, i32 0, i32 1
  store i32 %22, ptr %23, align 4
  %24 = getelementptr i8, ptr %18, i32 12
  %25 = call ptr @strcpy(ptr noundef %24, ptr noundef %15)
  call void @trace_event_buffer_commit(ptr noundef nonnull %3) #9
  br label %26

26:                                               ; preds = %20, %13, %11
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @perf_trace_rpcgss_upcall_msg(ptr noundef %0, ptr noundef readonly %1) #0 {
  %3 = alloca ptr, align 4
  %4 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #9
  store ptr null, ptr %3, align 4, !annotation !9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #9
  store i32 0, ptr %4, align 4, !annotation !9
  %5 = icmp eq ptr %1, null
  %6 = select i1 %5, ptr @.str.40, ptr %1
  %7 = tail call i32 @strlen(ptr noundef %6) #9
  %8 = shl i32 %7, 16
  %9 = add i32 %8, 65548
  %10 = getelementptr inbounds %struct.trace_event_call, ptr %0, i32 0, i32 10
  %11 = load ptr, ptr %10, align 4
  %12 = ptrtoint ptr %11 to i32
  %13 = tail call i32 @llvm.read_register.i32(metadata !0) #9
  %14 = inttoptr i32 %13 to ptr
  %15 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %14) #7, !srcloc !12
  %16 = add i32 %15, %12
  %17 = inttoptr i32 %16 to ptr
  %18 = getelementptr inbounds %struct.trace_event_call, ptr %0, i32 0, i32 11
  %19 = load volatile ptr, ptr %18, align 4
  %20 = icmp eq ptr %19, null
  br i1 %20, label %21, label %24

21:                                               ; preds = %2
  %22 = load volatile ptr, ptr %17, align 4
  %23 = icmp eq ptr %22, null
  br i1 %23, label %46, label %24

24:                                               ; preds = %21, %2
  %25 = add i32 %7, 24
  %26 = and i32 %25, -8
  %27 = add i32 %26, -4
  %28 = call ptr @perf_trace_buf_alloc(i32 noundef %27, ptr noundef nonnull %3, ptr noundef nonnull %4) #9
  %29 = icmp eq ptr %28, null
  br i1 %29, label %46, label %30

30:                                               ; preds = %24
  %31 = load ptr, ptr %3, align 4
  %32 = call ptr @llvm.returnaddress(i32 0) #9
  %33 = ptrtoint ptr %32 to i32
  %34 = getelementptr [18 x i32], ptr %31, i32 0, i32 15
  store i32 %33, ptr %34, align 4
  %35 = call ptr @llvm.frameaddress.p0(i32 0) #9
  %36 = ptrtoint ptr %35 to i32
  %37 = getelementptr [18 x i32], ptr %31, i32 0, i32 11
  store i32 %36, ptr %37, align 4
  %38 = call i32 @llvm.read_register.i32(metadata !0) #9
  %39 = getelementptr [18 x i32], ptr %31, i32 0, i32 13
  store i32 %38, ptr %39, align 4
  %40 = getelementptr [18 x i32], ptr %31, i32 0, i32 16
  store i32 19, ptr %40, align 4
  %41 = getelementptr inbounds %struct.trace_event_raw_rpcgss_upcall_msg, ptr %28, i32 0, i32 1
  store i32 %9, ptr %41, align 4
  %42 = getelementptr i8, ptr %28, i32 12
  %43 = call ptr @strcpy(ptr noundef %42, ptr noundef %6)
  %44 = load i32, ptr %4, align 4
  %45 = load ptr, ptr %3, align 4
  call void @perf_trace_run_bpf_submit(ptr noundef nonnull %28, i32 noundef %27, i32 noundef %44, ptr noundef %0, i64 noundef 1, ptr noundef %45, ptr noundef %17, ptr noundef null) #9
  br label %46

46:                                               ; preds = %30, %24, %21
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @trace_event_raw_event_rpcgss_upcall_result(ptr noundef %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = alloca %struct.trace_event_buffer, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #9
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %4, i8 0, i32 24, i1 false), !annotation !9
  %5 = getelementptr inbounds %struct.trace_event_file, ptr %0, i32 0, i32 7
  %6 = load i32, ptr %5, align 4
  %7 = and i32 %6, 704
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %14, label %9, !prof !10

9:                                                ; preds = %3
  %10 = and i32 %6, 256
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %14, !prof !11

12:                                               ; preds = %9
  %13 = tail call zeroext i1 @__trace_trigger_soft_disabled(ptr noundef %0) #9
  br i1 %13, label %20, label %14

14:                                               ; preds = %12, %9, %3
  %15 = call ptr @trace_event_buffer_reserve(ptr noundef nonnull %4, ptr noundef %0, i32 noundef 16) #9
  %16 = icmp eq ptr %15, null
  br i1 %16, label %20, label %17

17:                                               ; preds = %14
  %18 = getelementptr inbounds %struct.trace_event_raw_rpcgss_upcall_result, ptr %15, i32 0, i32 1
  store i32 %1, ptr %18, align 4
  %19 = getelementptr inbounds %struct.trace_event_raw_rpcgss_upcall_result, ptr %15, i32 0, i32 2
  store i32 %2, ptr %19, align 4
  call void @trace_event_buffer_commit(ptr noundef nonnull %4) #9
  br label %20

20:                                               ; preds = %17, %14, %12
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @perf_trace_rpcgss_upcall_result(ptr noundef %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = alloca ptr, align 4
  %5 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #9
  store ptr null, ptr %4, align 4, !annotation !9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #9
  store i32 0, ptr %5, align 4, !annotation !9
  %6 = getelementptr inbounds %struct.trace_event_call, ptr %0, i32 0, i32 10
  %7 = load ptr, ptr %6, align 4
  %8 = ptrtoint ptr %7 to i32
  %9 = tail call i32 @llvm.read_register.i32(metadata !0) #9
  %10 = inttoptr i32 %9 to ptr
  %11 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %10) #7, !srcloc !12
  %12 = add i32 %11, %8
  %13 = inttoptr i32 %12 to ptr
  %14 = getelementptr inbounds %struct.trace_event_call, ptr %0, i32 0, i32 11
  %15 = load volatile ptr, ptr %14, align 4
  %16 = icmp eq ptr %15, null
  br i1 %16, label %17, label %20

17:                                               ; preds = %3
  %18 = load volatile ptr, ptr %13, align 4
  %19 = icmp eq ptr %18, null
  br i1 %19, label %38, label %20

20:                                               ; preds = %17, %3
  %21 = call ptr @perf_trace_buf_alloc(i32 noundef 20, ptr noundef nonnull %4, ptr noundef nonnull %5) #9
  %22 = icmp eq ptr %21, null
  br i1 %22, label %38, label %23

23:                                               ; preds = %20
  %24 = load ptr, ptr %4, align 4
  %25 = call ptr @llvm.returnaddress(i32 0) #9
  %26 = ptrtoint ptr %25 to i32
  %27 = getelementptr [18 x i32], ptr %24, i32 0, i32 15
  store i32 %26, ptr %27, align 4
  %28 = call ptr @llvm.frameaddress.p0(i32 0) #9
  %29 = ptrtoint ptr %28 to i32
  %30 = getelementptr [18 x i32], ptr %24, i32 0, i32 11
  store i32 %29, ptr %30, align 4
  %31 = call i32 @llvm.read_register.i32(metadata !0) #9
  %32 = getelementptr [18 x i32], ptr %24, i32 0, i32 13
  store i32 %31, ptr %32, align 4
  %33 = getelementptr [18 x i32], ptr %24, i32 0, i32 16
  store i32 19, ptr %33, align 4
  %34 = getelementptr inbounds %struct.trace_event_raw_rpcgss_upcall_result, ptr %21, i32 0, i32 1
  store i32 %1, ptr %34, align 4
  %35 = getelementptr inbounds %struct.trace_event_raw_rpcgss_upcall_result, ptr %21, i32 0, i32 2
  store i32 %2, ptr %35, align 4
  %36 = load i32, ptr %5, align 4
  %37 = load ptr, ptr %4, align 4
  call void @perf_trace_run_bpf_submit(ptr noundef nonnull %21, i32 noundef 20, i32 noundef %36, ptr noundef %0, i64 noundef 1, ptr noundef %37, ptr noundef %13, ptr noundef null) #9
  br label %38

38:                                               ; preds = %23, %20, %17
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @trace_event_raw_event_rpcgss_context(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, ptr noundef readonly %6) #0 {
  %8 = alloca %struct.trace_event_buffer, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %8) #9
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %8, i8 0, i32 24, i1 false), !annotation !9
  %9 = getelementptr inbounds %struct.trace_event_file, ptr %0, i32 0, i32 7
  %10 = load i32, ptr %9, align 4
  %11 = and i32 %10, 704
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %18, label %13, !prof !10

13:                                               ; preds = %7
  %14 = and i32 %10, 256
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %18, !prof !11

16:                                               ; preds = %13
  %17 = tail call zeroext i1 @__trace_trigger_soft_disabled(ptr noundef %0) #9
  br i1 %17, label %36, label %18

18:                                               ; preds = %16, %13, %7
  %19 = icmp eq ptr %6, null
  %20 = select i1 %19, ptr @.str.40, ptr %6
  %21 = tail call i32 @strlen(ptr noundef %20) #9
  %22 = add i32 %21, 33
  %23 = call ptr @trace_event_buffer_reserve(ptr noundef nonnull %8, ptr noundef %0, i32 noundef %22) #9
  %24 = icmp eq ptr %23, null
  br i1 %24, label %36, label %25

25:                                               ; preds = %18
  %26 = shl i32 %21, 16
  %27 = add i32 %26, 65568
  %28 = getelementptr inbounds %struct.trace_event_raw_rpcgss_context, ptr %23, i32 0, i32 6
  store i32 %27, ptr %28, align 4
  %29 = getelementptr inbounds %struct.trace_event_raw_rpcgss_context, ptr %23, i32 0, i32 1
  store i32 %2, ptr %29, align 4
  %30 = getelementptr inbounds %struct.trace_event_raw_rpcgss_context, ptr %23, i32 0, i32 2
  store i32 %3, ptr %30, align 4
  %31 = getelementptr inbounds %struct.trace_event_raw_rpcgss_context, ptr %23, i32 0, i32 3
  store i32 %4, ptr %31, align 4
  %32 = getelementptr inbounds %struct.trace_event_raw_rpcgss_context, ptr %23, i32 0, i32 4
  store i32 %1, ptr %32, align 4
  %33 = getelementptr inbounds %struct.trace_event_raw_rpcgss_context, ptr %23, i32 0, i32 5
  store i32 %5, ptr %33, align 4
  %34 = getelementptr i8, ptr %23, i32 32
  %35 = call ptr @strncpy(ptr noundef %34, ptr noundef %6, i32 noundef %5)
  call void @trace_event_buffer_commit(ptr noundef nonnull %8) #9
  br label %36

36:                                               ; preds = %25, %18, %16
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %8) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @perf_trace_rpcgss_context(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, ptr noundef readonly %6) #0 {
  %8 = alloca ptr, align 4
  %9 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %8) #9
  store ptr null, ptr %8, align 4, !annotation !9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %9) #9
  store i32 0, ptr %9, align 4, !annotation !9
  %10 = icmp eq ptr %6, null
  %11 = select i1 %10, ptr @.str.40, ptr %6
  %12 = tail call i32 @strlen(ptr noundef %11) #9
  %13 = shl i32 %12, 16
  %14 = add i32 %13, 65568
  %15 = getelementptr inbounds %struct.trace_event_call, ptr %0, i32 0, i32 10
  %16 = load ptr, ptr %15, align 4
  %17 = ptrtoint ptr %16 to i32
  %18 = tail call i32 @llvm.read_register.i32(metadata !0) #9
  %19 = inttoptr i32 %18 to ptr
  %20 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %19) #7, !srcloc !12
  %21 = add i32 %20, %17
  %22 = inttoptr i32 %21 to ptr
  %23 = getelementptr inbounds %struct.trace_event_call, ptr %0, i32 0, i32 11
  %24 = load volatile ptr, ptr %23, align 4
  %25 = icmp eq ptr %24, null
  br i1 %25, label %26, label %29

26:                                               ; preds = %7
  %27 = load volatile ptr, ptr %22, align 4
  %28 = icmp eq ptr %27, null
  br i1 %28, label %56, label %29

29:                                               ; preds = %26, %7
  %30 = add i32 %12, 44
  %31 = and i32 %30, -8
  %32 = add i32 %31, -4
  %33 = call ptr @perf_trace_buf_alloc(i32 noundef %32, ptr noundef nonnull %8, ptr noundef nonnull %9) #9
  %34 = icmp eq ptr %33, null
  br i1 %34, label %56, label %35

35:                                               ; preds = %29
  %36 = load ptr, ptr %8, align 4
  %37 = call ptr @llvm.returnaddress(i32 0) #9
  %38 = ptrtoint ptr %37 to i32
  %39 = getelementptr [18 x i32], ptr %36, i32 0, i32 15
  store i32 %38, ptr %39, align 4
  %40 = call ptr @llvm.frameaddress.p0(i32 0) #9
  %41 = ptrtoint ptr %40 to i32
  %42 = getelementptr [18 x i32], ptr %36, i32 0, i32 11
  store i32 %41, ptr %42, align 4
  %43 = call i32 @llvm.read_register.i32(metadata !0) #9
  %44 = getelementptr [18 x i32], ptr %36, i32 0, i32 13
  store i32 %43, ptr %44, align 4
  %45 = getelementptr [18 x i32], ptr %36, i32 0, i32 16
  store i32 19, ptr %45, align 4
  %46 = getelementptr inbounds %struct.trace_event_raw_rpcgss_context, ptr %33, i32 0, i32 6
  store i32 %14, ptr %46, align 4
  %47 = getelementptr inbounds %struct.trace_event_raw_rpcgss_context, ptr %33, i32 0, i32 1
  store i32 %2, ptr %47, align 4
  %48 = getelementptr inbounds %struct.trace_event_raw_rpcgss_context, ptr %33, i32 0, i32 2
  store i32 %3, ptr %48, align 4
  %49 = getelementptr inbounds %struct.trace_event_raw_rpcgss_context, ptr %33, i32 0, i32 3
  store i32 %4, ptr %49, align 4
  %50 = getelementptr inbounds %struct.trace_event_raw_rpcgss_context, ptr %33, i32 0, i32 4
  store i32 %1, ptr %50, align 4
  %51 = getelementptr inbounds %struct.trace_event_raw_rpcgss_context, ptr %33, i32 0, i32 5
  store i32 %5, ptr %51, align 4
  %52 = getelementptr i8, ptr %33, i32 32
  %53 = call ptr @strncpy(ptr noundef %52, ptr noundef %6, i32 noundef %5)
  %54 = load i32, ptr %9, align 4
  %55 = load ptr, ptr %8, align 4
  call void @perf_trace_run_bpf_submit(ptr noundef nonnull %33, i32 noundef %32, i32 noundef %54, ptr noundef %0, i64 noundef 1, ptr noundef %55, ptr noundef %22, ptr noundef null) #9
  br label %56

56:                                               ; preds = %35, %29, %26
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %9) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @trace_event_raw_event_rpcgss_createauth(ptr noundef %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = alloca %struct.trace_event_buffer, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #9
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %4, i8 0, i32 24, i1 false), !annotation !9
  %5 = getelementptr inbounds %struct.trace_event_file, ptr %0, i32 0, i32 7
  %6 = load i32, ptr %5, align 4
  %7 = and i32 %6, 704
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %14, label %9, !prof !10

9:                                                ; preds = %3
  %10 = and i32 %6, 256
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %14, !prof !11

12:                                               ; preds = %9
  %13 = tail call zeroext i1 @__trace_trigger_soft_disabled(ptr noundef %0) #9
  br i1 %13, label %20, label %14

14:                                               ; preds = %12, %9, %3
  %15 = call ptr @trace_event_buffer_reserve(ptr noundef nonnull %4, ptr noundef %0, i32 noundef 16) #9
  %16 = icmp eq ptr %15, null
  br i1 %16, label %20, label %17

17:                                               ; preds = %14
  %18 = getelementptr inbounds %struct.trace_event_raw_rpcgss_createauth, ptr %15, i32 0, i32 1
  store i32 %1, ptr %18, align 4
  %19 = getelementptr inbounds %struct.trace_event_raw_rpcgss_createauth, ptr %15, i32 0, i32 2
  store i32 %2, ptr %19, align 4
  call void @trace_event_buffer_commit(ptr noundef nonnull %4) #9
  br label %20

20:                                               ; preds = %17, %14, %12
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @perf_trace_rpcgss_createauth(ptr noundef %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = alloca ptr, align 4
  %5 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #9
  store ptr null, ptr %4, align 4, !annotation !9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #9
  store i32 0, ptr %5, align 4, !annotation !9
  %6 = getelementptr inbounds %struct.trace_event_call, ptr %0, i32 0, i32 10
  %7 = load ptr, ptr %6, align 4
  %8 = ptrtoint ptr %7 to i32
  %9 = tail call i32 @llvm.read_register.i32(metadata !0) #9
  %10 = inttoptr i32 %9 to ptr
  %11 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %10) #7, !srcloc !12
  %12 = add i32 %11, %8
  %13 = inttoptr i32 %12 to ptr
  %14 = getelementptr inbounds %struct.trace_event_call, ptr %0, i32 0, i32 11
  %15 = load volatile ptr, ptr %14, align 4
  %16 = icmp eq ptr %15, null
  br i1 %16, label %17, label %20

17:                                               ; preds = %3
  %18 = load volatile ptr, ptr %13, align 4
  %19 = icmp eq ptr %18, null
  br i1 %19, label %38, label %20

20:                                               ; preds = %17, %3
  %21 = call ptr @perf_trace_buf_alloc(i32 noundef 20, ptr noundef nonnull %4, ptr noundef nonnull %5) #9
  %22 = icmp eq ptr %21, null
  br i1 %22, label %38, label %23

23:                                               ; preds = %20
  %24 = load ptr, ptr %4, align 4
  %25 = call ptr @llvm.returnaddress(i32 0) #9
  %26 = ptrtoint ptr %25 to i32
  %27 = getelementptr [18 x i32], ptr %24, i32 0, i32 15
  store i32 %26, ptr %27, align 4
  %28 = call ptr @llvm.frameaddress.p0(i32 0) #9
  %29 = ptrtoint ptr %28 to i32
  %30 = getelementptr [18 x i32], ptr %24, i32 0, i32 11
  store i32 %29, ptr %30, align 4
  %31 = call i32 @llvm.read_register.i32(metadata !0) #9
  %32 = getelementptr [18 x i32], ptr %24, i32 0, i32 13
  store i32 %31, ptr %32, align 4
  %33 = getelementptr [18 x i32], ptr %24, i32 0, i32 16
  store i32 19, ptr %33, align 4
  %34 = getelementptr inbounds %struct.trace_event_raw_rpcgss_createauth, ptr %21, i32 0, i32 1
  store i32 %1, ptr %34, align 4
  %35 = getelementptr inbounds %struct.trace_event_raw_rpcgss_createauth, ptr %21, i32 0, i32 2
  store i32 %2, ptr %35, align 4
  %36 = load i32, ptr %5, align 4
  %37 = load ptr, ptr %4, align 4
  call void @perf_trace_run_bpf_submit(ptr noundef nonnull %21, i32 noundef 20, i32 noundef %36, ptr noundef %0, i64 noundef 1, ptr noundef %37, ptr noundef %13, ptr noundef null) #9
  br label %38

38:                                               ; preds = %23, %20, %17
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @trace_event_raw_event_rpcgss_oid_to_mech(ptr noundef %0, ptr noundef readonly %1) #0 {
  %3 = alloca %struct.trace_event_buffer, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #9
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %3, i8 0, i32 24, i1 false), !annotation !9
  %4 = getelementptr inbounds %struct.trace_event_file, ptr %0, i32 0, i32 7
  %5 = load i32, ptr %4, align 4
  %6 = and i32 %5, 704
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %13, label %8, !prof !10

8:                                                ; preds = %2
  %9 = and i32 %5, 256
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %13, !prof !11

11:                                               ; preds = %8
  %12 = tail call zeroext i1 @__trace_trigger_soft_disabled(ptr noundef %0) #9
  br i1 %12, label %26, label %13

13:                                               ; preds = %11, %8, %2
  %14 = icmp eq ptr %1, null
  %15 = select i1 %14, ptr @.str.40, ptr %1
  %16 = tail call i32 @strlen(ptr noundef %15) #9
  %17 = add i32 %16, 13
  %18 = call ptr @trace_event_buffer_reserve(ptr noundef nonnull %3, ptr noundef %0, i32 noundef %17) #9
  %19 = icmp eq ptr %18, null
  br i1 %19, label %26, label %20

20:                                               ; preds = %13
  %21 = shl i32 %16, 16
  %22 = add i32 %21, 65548
  %23 = getelementptr inbounds %struct.trace_event_raw_rpcgss_oid_to_mech, ptr %18, i32 0, i32 1
  store i32 %22, ptr %23, align 4
  %24 = getelementptr i8, ptr %18, i32 12
  %25 = call ptr @strcpy(ptr noundef %24, ptr noundef %15)
  call void @trace_event_buffer_commit(ptr noundef nonnull %3) #9
  br label %26

26:                                               ; preds = %20, %13, %11
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @perf_trace_rpcgss_oid_to_mech(ptr noundef %0, ptr noundef readonly %1) #0 {
  %3 = alloca ptr, align 4
  %4 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #9
  store ptr null, ptr %3, align 4, !annotation !9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #9
  store i32 0, ptr %4, align 4, !annotation !9
  %5 = icmp eq ptr %1, null
  %6 = select i1 %5, ptr @.str.40, ptr %1
  %7 = tail call i32 @strlen(ptr noundef %6) #9
  %8 = shl i32 %7, 16
  %9 = add i32 %8, 65548
  %10 = getelementptr inbounds %struct.trace_event_call, ptr %0, i32 0, i32 10
  %11 = load ptr, ptr %10, align 4
  %12 = ptrtoint ptr %11 to i32
  %13 = tail call i32 @llvm.read_register.i32(metadata !0) #9
  %14 = inttoptr i32 %13 to ptr
  %15 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %14) #7, !srcloc !12
  %16 = add i32 %15, %12
  %17 = inttoptr i32 %16 to ptr
  %18 = getelementptr inbounds %struct.trace_event_call, ptr %0, i32 0, i32 11
  %19 = load volatile ptr, ptr %18, align 4
  %20 = icmp eq ptr %19, null
  br i1 %20, label %21, label %24

21:                                               ; preds = %2
  %22 = load volatile ptr, ptr %17, align 4
  %23 = icmp eq ptr %22, null
  br i1 %23, label %46, label %24

24:                                               ; preds = %21, %2
  %25 = add i32 %7, 24
  %26 = and i32 %25, -8
  %27 = add i32 %26, -4
  %28 = call ptr @perf_trace_buf_alloc(i32 noundef %27, ptr noundef nonnull %3, ptr noundef nonnull %4) #9
  %29 = icmp eq ptr %28, null
  br i1 %29, label %46, label %30

30:                                               ; preds = %24
  %31 = load ptr, ptr %3, align 4
  %32 = call ptr @llvm.returnaddress(i32 0) #9
  %33 = ptrtoint ptr %32 to i32
  %34 = getelementptr [18 x i32], ptr %31, i32 0, i32 15
  store i32 %33, ptr %34, align 4
  %35 = call ptr @llvm.frameaddress.p0(i32 0) #9
  %36 = ptrtoint ptr %35 to i32
  %37 = getelementptr [18 x i32], ptr %31, i32 0, i32 11
  store i32 %36, ptr %37, align 4
  %38 = call i32 @llvm.read_register.i32(metadata !0) #9
  %39 = getelementptr [18 x i32], ptr %31, i32 0, i32 13
  store i32 %38, ptr %39, align 4
  %40 = getelementptr [18 x i32], ptr %31, i32 0, i32 16
  store i32 19, ptr %40, align 4
  %41 = getelementptr inbounds %struct.trace_event_raw_rpcgss_oid_to_mech, ptr %28, i32 0, i32 1
  store i32 %9, ptr %41, align 4
  %42 = getelementptr i8, ptr %28, i32 12
  %43 = call ptr @strcpy(ptr noundef %42, ptr noundef %6)
  %44 = load i32, ptr %4, align 4
  %45 = load ptr, ptr %3, align 4
  call void @perf_trace_run_bpf_submit(ptr noundef nonnull %28, i32 noundef %27, i32 noundef %44, ptr noundef %0, i64 noundef 1, ptr noundef %45, ptr noundef %17, ptr noundef null) #9
  br label %46

46:                                               ; preds = %30, %24, %21
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #9
  ret void
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @trace_event_buffer_reserve(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_event_buffer_commit(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__trace_trigger_soft_disabled(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @trace_raw_output_rpcgss_import_ctx(ptr noundef %0, i32 noundef %1, ptr noundef %2) #0 {
  %4 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 16
  %5 = load ptr, ptr %4, align 8
  %6 = tail call i32 @trace_raw_output_prep(ptr noundef %0, ptr noundef %2) #9
  %7 = icmp eq i32 %6, 1
  br i1 %7, label %8, label %13

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 15
  %10 = getelementptr inbounds %struct.trace_event_raw_rpcgss_import_ctx, ptr %5, i32 0, i32 1
  %11 = load i32, ptr %10, align 4
  tail call void (ptr, ptr, ...) @trace_event_printf(ptr noundef %0, ptr noundef nonnull @.str.36, i32 noundef %11) #9
  %12 = tail call i32 @trace_handle_return(ptr noundef %9) #9
  br label %13

13:                                               ; preds = %8, %3
  %14 = phi i32 [ %12, %8 ], [ %6, %3 ]
  ret i32 %14
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @trace_raw_output_prep(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_event_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @trace_handle_return(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @trace_raw_output_rpcgss_gssapi_event(ptr noundef %0, i32 noundef %1, ptr noundef %2) #0 {
  %4 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 15
  %5 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 12
  %6 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 16
  %7 = load ptr, ptr %6, align 8
  %8 = tail call i32 @trace_raw_output_prep(ptr noundef %0, ptr noundef %2) #9
  %9 = icmp eq i32 %8, 1
  br i1 %9, label %10, label %23

10:                                               ; preds = %3
  %11 = getelementptr inbounds %struct.trace_event_raw_rpcgss_gssapi_event, ptr %7, i32 0, i32 1
  %12 = load i32, ptr %11, align 4
  %13 = getelementptr inbounds %struct.trace_event_raw_rpcgss_gssapi_event, ptr %7, i32 0, i32 2
  %14 = load i32, ptr %13, align 4
  %15 = getelementptr inbounds %struct.trace_event_raw_rpcgss_gssapi_event, ptr %7, i32 0, i32 3
  %16 = load i32, ptr %15, align 4
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %20, label %18

18:                                               ; preds = %10
  %19 = tail call ptr @trace_print_flags_seq(ptr noundef %5, ptr noundef nonnull @.str.39, i32 noundef %16, ptr noundef nonnull @trace_raw_output_rpcgss_gssapi_event.__flags) #9
  br label %20

20:                                               ; preds = %18, %10
  %21 = phi ptr [ %19, %18 ], [ @.str.38, %10 ]
  tail call void (ptr, ptr, ...) @trace_event_printf(ptr noundef %0, ptr noundef nonnull @.str.37, i32 noundef %12, i32 noundef %14, ptr noundef %21) #9
  %22 = tail call i32 @trace_handle_return(ptr noundef %4) #9
  br label %23

23:                                               ; preds = %20, %3
  %24 = phi i32 [ %22, %20 ], [ %8, %3 ]
  ret i32 %24
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @trace_print_flags_seq(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid willreturn
declare dso_local ptr @strcpy(ptr noalias noundef returned writeonly, ptr noalias nocapture noundef readonly) local_unnamed_addr #4

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strlen(ptr nocapture noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @trace_raw_output_rpcgss_ctx_class(ptr noundef %0, i32 noundef %1, ptr noundef %2) #0 {
  %4 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 16
  %5 = load ptr, ptr %4, align 8
  %6 = tail call i32 @trace_raw_output_prep(ptr noundef %0, ptr noundef %2) #9
  %7 = icmp eq i32 %6, 1
  br i1 %7, label %8, label %21

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 12
  %10 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 15
  %11 = getelementptr inbounds %struct.trace_event_raw_rpcgss_ctx_class, ptr %5, i32 0, i32 1
  %12 = load ptr, ptr %11, align 4
  %13 = getelementptr inbounds %struct.trace_event_raw_rpcgss_ctx_class, ptr %5, i32 0, i32 2
  %14 = load i32, ptr %13, align 4
  %15 = tail call ptr @trace_print_symbols_seq(ptr noundef %9, i32 noundef %14, ptr noundef nonnull @trace_raw_output_rpcgss_ctx_class.symbols) #9
  %16 = getelementptr inbounds %struct.trace_event_raw_rpcgss_ctx_class, ptr %5, i32 0, i32 3
  %17 = load i32, ptr %16, align 4
  %18 = and i32 %17, 65535
  %19 = getelementptr i8, ptr %5, i32 %18
  tail call void (ptr, ptr, ...) @trace_event_printf(ptr noundef %0, ptr noundef nonnull @.str.47, ptr noundef %12, ptr noundef %15, ptr noundef %19) #9
  %20 = tail call i32 @trace_handle_return(ptr noundef %10) #9
  br label %21

21:                                               ; preds = %8, %3
  %22 = phi i32 [ %20, %8 ], [ %6, %3 ]
  ret i32 %22
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @trace_print_symbols_seq(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #6

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @trace_raw_output_rpcgss_svc_gssapi_class(ptr noundef %0, i32 noundef %1, ptr noundef %2) #0 {
  %4 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 15
  %5 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 12
  %6 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 16
  %7 = load ptr, ptr %6, align 8
  %8 = tail call i32 @trace_raw_output_prep(ptr noundef %0, ptr noundef %2) #9
  %9 = icmp eq i32 %8, 1
  br i1 %9, label %10, label %25

10:                                               ; preds = %3
  %11 = getelementptr inbounds %struct.trace_event_raw_rpcgss_svc_gssapi_class, ptr %7, i32 0, i32 3
  %12 = load i32, ptr %11, align 4
  %13 = and i32 %12, 65535
  %14 = getelementptr i8, ptr %7, i32 %13
  %15 = getelementptr inbounds %struct.trace_event_raw_rpcgss_svc_gssapi_class, ptr %7, i32 0, i32 1
  %16 = load i32, ptr %15, align 4
  %17 = getelementptr inbounds %struct.trace_event_raw_rpcgss_svc_gssapi_class, ptr %7, i32 0, i32 2
  %18 = load i32, ptr %17, align 4
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %22, label %20

20:                                               ; preds = %10
  %21 = tail call ptr @trace_print_flags_seq(ptr noundef %5, ptr noundef nonnull @.str.39, i32 noundef %18, ptr noundef nonnull @trace_raw_output_rpcgss_svc_gssapi_class.__flags) #9
  br label %22

22:                                               ; preds = %20, %10
  %23 = phi ptr [ %21, %20 ], [ @.str.38, %10 ]
  tail call void (ptr, ptr, ...) @trace_event_printf(ptr noundef %0, ptr noundef nonnull @.str.53, ptr noundef %14, i32 noundef %16, ptr noundef %23) #9
  %24 = tail call i32 @trace_handle_return(ptr noundef %4) #9
  br label %25

25:                                               ; preds = %22, %3
  %26 = phi i32 [ %24, %22 ], [ %8, %3 ]
  ret i32 %26
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @trace_raw_output_rpcgss_svc_unwrap_failed(ptr noundef %0, i32 noundef %1, ptr noundef %2) #0 {
  %4 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 16
  %5 = load ptr, ptr %4, align 8
  %6 = tail call i32 @trace_raw_output_prep(ptr noundef %0, ptr noundef %2) #9
  %7 = icmp eq i32 %6, 1
  br i1 %7, label %8, label %17

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 15
  %10 = getelementptr inbounds %struct.trace_event_raw_rpcgss_svc_unwrap_failed, ptr %5, i32 0, i32 2
  %11 = load i32, ptr %10, align 4
  %12 = and i32 %11, 65535
  %13 = getelementptr i8, ptr %5, i32 %12
  %14 = getelementptr inbounds %struct.trace_event_raw_rpcgss_svc_unwrap_failed, ptr %5, i32 0, i32 1
  %15 = load i32, ptr %14, align 4
  tail call void (ptr, ptr, ...) @trace_event_printf(ptr noundef %0, ptr noundef nonnull @.str.54, ptr noundef %13, i32 noundef %15) #9
  %16 = tail call i32 @trace_handle_return(ptr noundef %9) #9
  br label %17

17:                                               ; preds = %8, %3
  %18 = phi i32 [ %16, %8 ], [ %6, %3 ]
  ret i32 %18
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @trace_raw_output_rpcgss_svc_seqno_bad(ptr noundef %0, i32 noundef %1, ptr noundef %2) #0 {
  %4 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 16
  %5 = load ptr, ptr %4, align 8
  %6 = tail call i32 @trace_raw_output_prep(ptr noundef %0, ptr noundef %2) #9
  %7 = icmp eq i32 %6, 1
  br i1 %7, label %8, label %21

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 15
  %10 = getelementptr inbounds %struct.trace_event_raw_rpcgss_svc_seqno_bad, ptr %5, i32 0, i32 4
  %11 = load i32, ptr %10, align 4
  %12 = and i32 %11, 65535
  %13 = getelementptr i8, ptr %5, i32 %12
  %14 = getelementptr inbounds %struct.trace_event_raw_rpcgss_svc_seqno_bad, ptr %5, i32 0, i32 3
  %15 = load i32, ptr %14, align 4
  %16 = getelementptr inbounds %struct.trace_event_raw_rpcgss_svc_seqno_bad, ptr %5, i32 0, i32 1
  %17 = load i32, ptr %16, align 4
  %18 = getelementptr inbounds %struct.trace_event_raw_rpcgss_svc_seqno_bad, ptr %5, i32 0, i32 2
  %19 = load i32, ptr %18, align 4
  tail call void (ptr, ptr, ...) @trace_event_printf(ptr noundef %0, ptr noundef nonnull @.str.57, ptr noundef %13, i32 noundef %15, i32 noundef %17, i32 noundef %19) #9
  %20 = tail call i32 @trace_handle_return(ptr noundef %9) #9
  br label %21

21:                                               ; preds = %8, %3
  %22 = phi i32 [ %20, %8 ], [ %6, %3 ]
  ret i32 %22
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @trace_raw_output_rpcgss_svc_accept_upcall(ptr noundef %0, i32 noundef %1, ptr noundef %2) #0 {
  %4 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 15
  %5 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 12
  %6 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 16
  %7 = load ptr, ptr %6, align 8
  %8 = tail call i32 @trace_raw_output_prep(ptr noundef %0, ptr noundef %2) #9
  %9 = icmp eq i32 %8, 1
  br i1 %9, label %10, label %29

10:                                               ; preds = %3
  %11 = getelementptr inbounds %struct.trace_event_raw_rpcgss_svc_accept_upcall, ptr %7, i32 0, i32 4
  %12 = load i32, ptr %11, align 4
  %13 = and i32 %12, 65535
  %14 = getelementptr i8, ptr %7, i32 %13
  %15 = getelementptr inbounds %struct.trace_event_raw_rpcgss_svc_accept_upcall, ptr %7, i32 0, i32 3
  %16 = load i32, ptr %15, align 4
  %17 = getelementptr inbounds %struct.trace_event_raw_rpcgss_svc_accept_upcall, ptr %7, i32 0, i32 2
  %18 = load i32, ptr %17, align 4
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %23, label %20

20:                                               ; preds = %10
  %21 = tail call ptr @trace_print_flags_seq(ptr noundef %5, ptr noundef nonnull @.str.39, i32 noundef %18, ptr noundef nonnull @trace_raw_output_rpcgss_svc_accept_upcall.__flags) #9
  %22 = load i32, ptr %17, align 4
  br label %23

23:                                               ; preds = %20, %10
  %24 = phi i32 [ %22, %20 ], [ 0, %10 ]
  %25 = phi ptr [ %21, %20 ], [ @.str.38, %10 ]
  %26 = getelementptr inbounds %struct.trace_event_raw_rpcgss_svc_accept_upcall, ptr %7, i32 0, i32 1
  %27 = load i32, ptr %26, align 4
  tail call void (ptr, ptr, ...) @trace_event_printf(ptr noundef %0, ptr noundef nonnull @.str.60, ptr noundef %14, i32 noundef %16, ptr noundef %25, i32 noundef %24, i32 noundef %27) #9
  %28 = tail call i32 @trace_handle_return(ptr noundef %4) #9
  br label %29

29:                                               ; preds = %23, %3
  %30 = phi i32 [ %28, %23 ], [ %8, %3 ]
  ret i32 %30
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @trace_raw_output_rpcgss_svc_authenticate(ptr noundef %0, i32 noundef %1, ptr noundef %2) #0 {
  %4 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 16
  %5 = load ptr, ptr %4, align 8
  %6 = tail call i32 @trace_raw_output_prep(ptr noundef %0, ptr noundef %2) #9
  %7 = icmp eq i32 %6, 1
  br i1 %7, label %8, label %19

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 15
  %10 = getelementptr inbounds %struct.trace_event_raw_rpcgss_svc_authenticate, ptr %5, i32 0, i32 3
  %11 = load i32, ptr %10, align 4
  %12 = and i32 %11, 65535
  %13 = getelementptr i8, ptr %5, i32 %12
  %14 = getelementptr inbounds %struct.trace_event_raw_rpcgss_svc_authenticate, ptr %5, i32 0, i32 2
  %15 = load i32, ptr %14, align 4
  %16 = getelementptr inbounds %struct.trace_event_raw_rpcgss_svc_authenticate, ptr %5, i32 0, i32 1
  %17 = load i32, ptr %16, align 4
  tail call void (ptr, ptr, ...) @trace_event_printf(ptr noundef %0, ptr noundef nonnull @.str.62, ptr noundef %13, i32 noundef %15, i32 noundef %17) #9
  %18 = tail call i32 @trace_handle_return(ptr noundef %9) #9
  br label %19

19:                                               ; preds = %8, %3
  %20 = phi i32 [ %18, %8 ], [ %6, %3 ]
  ret i32 %20
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @trace_raw_output_rpcgss_unwrap_failed(ptr noundef %0, i32 noundef %1, ptr noundef %2) #0 {
  %4 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 16
  %5 = load ptr, ptr %4, align 8
  %6 = tail call i32 @trace_raw_output_prep(ptr noundef %0, ptr noundef %2) #9
  %7 = icmp eq i32 %6, 1
  br i1 %7, label %8, label %15

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 15
  %10 = getelementptr inbounds %struct.trace_event_raw_rpcgss_unwrap_failed, ptr %5, i32 0, i32 1
  %11 = load i32, ptr %10, align 4
  %12 = getelementptr inbounds %struct.trace_event_raw_rpcgss_unwrap_failed, ptr %5, i32 0, i32 2
  %13 = load i32, ptr %12, align 4
  tail call void (ptr, ptr, ...) @trace_event_printf(ptr noundef %0, ptr noundef nonnull @.str.63, i32 noundef %11, i32 noundef %13) #9
  %14 = tail call i32 @trace_handle_return(ptr noundef %9) #9
  br label %15

15:                                               ; preds = %8, %3
  %16 = phi i32 [ %14, %8 ], [ %6, %3 ]
  ret i32 %16
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @trace_raw_output_rpcgss_bad_seqno(ptr noundef %0, i32 noundef %1, ptr noundef %2) #0 {
  %4 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 16
  %5 = load ptr, ptr %4, align 8
  %6 = tail call i32 @trace_raw_output_prep(ptr noundef %0, ptr noundef %2) #9
  %7 = icmp eq i32 %6, 1
  br i1 %7, label %8, label %19

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 15
  %10 = getelementptr inbounds %struct.trace_event_raw_rpcgss_bad_seqno, ptr %5, i32 0, i32 1
  %11 = load i32, ptr %10, align 4
  %12 = getelementptr inbounds %struct.trace_event_raw_rpcgss_bad_seqno, ptr %5, i32 0, i32 2
  %13 = load i32, ptr %12, align 4
  %14 = getelementptr inbounds %struct.trace_event_raw_rpcgss_bad_seqno, ptr %5, i32 0, i32 3
  %15 = load i32, ptr %14, align 4
  %16 = getelementptr inbounds %struct.trace_event_raw_rpcgss_bad_seqno, ptr %5, i32 0, i32 4
  %17 = load i32, ptr %16, align 4
  tail call void (ptr, ptr, ...) @trace_event_printf(ptr noundef %0, ptr noundef nonnull @.str.64, i32 noundef %11, i32 noundef %13, i32 noundef %15, i32 noundef %17) #9
  %18 = tail call i32 @trace_handle_return(ptr noundef %9) #9
  br label %19

19:                                               ; preds = %8, %3
  %20 = phi i32 [ %18, %8 ], [ %6, %3 ]
  ret i32 %20
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @trace_raw_output_rpcgss_seqno(ptr noundef %0, i32 noundef %1, ptr noundef %2) #0 {
  %4 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 16
  %5 = load ptr, ptr %4, align 8
  %6 = tail call i32 @trace_raw_output_prep(ptr noundef %0, ptr noundef %2) #9
  %7 = icmp eq i32 %6, 1
  br i1 %7, label %8, label %19

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 15
  %10 = getelementptr inbounds %struct.trace_event_raw_rpcgss_seqno, ptr %5, i32 0, i32 1
  %11 = load i32, ptr %10, align 4
  %12 = getelementptr inbounds %struct.trace_event_raw_rpcgss_seqno, ptr %5, i32 0, i32 2
  %13 = load i32, ptr %12, align 4
  %14 = getelementptr inbounds %struct.trace_event_raw_rpcgss_seqno, ptr %5, i32 0, i32 3
  %15 = load i32, ptr %14, align 4
  %16 = getelementptr inbounds %struct.trace_event_raw_rpcgss_seqno, ptr %5, i32 0, i32 4
  %17 = load i32, ptr %16, align 4
  tail call void (ptr, ptr, ...) @trace_event_printf(ptr noundef %0, ptr noundef nonnull @.str.65, i32 noundef %11, i32 noundef %13, i32 noundef %15, i32 noundef %17) #9
  %18 = tail call i32 @trace_handle_return(ptr noundef %9) #9
  br label %19

19:                                               ; preds = %8, %3
  %20 = phi i32 [ %18, %8 ], [ %6, %3 ]
  ret i32 %20
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @trace_raw_output_rpcgss_need_reencode(ptr noundef %0, i32 noundef %1, ptr noundef %2) #0 {
  %4 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 16
  %5 = load ptr, ptr %4, align 8
  %6 = tail call i32 @trace_raw_output_prep(ptr noundef %0, ptr noundef %2) #9
  %7 = icmp eq i32 %6, 1
  br i1 %7, label %8, label %25

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 15
  %10 = getelementptr inbounds %struct.trace_event_raw_rpcgss_need_reencode, ptr %5, i32 0, i32 1
  %11 = load i32, ptr %10, align 4
  %12 = getelementptr inbounds %struct.trace_event_raw_rpcgss_need_reencode, ptr %5, i32 0, i32 2
  %13 = load i32, ptr %12, align 4
  %14 = getelementptr inbounds %struct.trace_event_raw_rpcgss_need_reencode, ptr %5, i32 0, i32 3
  %15 = load i32, ptr %14, align 4
  %16 = getelementptr inbounds %struct.trace_event_raw_rpcgss_need_reencode, ptr %5, i32 0, i32 5
  %17 = load i32, ptr %16, align 4
  %18 = getelementptr inbounds %struct.trace_event_raw_rpcgss_need_reencode, ptr %5, i32 0, i32 4
  %19 = load i32, ptr %18, align 4
  %20 = getelementptr inbounds %struct.trace_event_raw_rpcgss_need_reencode, ptr %5, i32 0, i32 6
  %21 = load i8, ptr %20, align 4, !range !13
  %22 = icmp eq i8 %21, 0
  %23 = select i1 %22, ptr @.str.71, ptr @.str.70
  tail call void (ptr, ptr, ...) @trace_event_printf(ptr noundef %0, ptr noundef nonnull @.str.69, i32 noundef %11, i32 noundef %13, i32 noundef %15, i32 noundef %17, i32 noundef %19, ptr noundef nonnull %23) #9
  %24 = tail call i32 @trace_handle_return(ptr noundef %9) #9
  br label %25

25:                                               ; preds = %8, %3
  %26 = phi i32 [ %24, %8 ], [ %6, %3 ]
  ret i32 %26
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @trace_raw_output_rpcgss_update_slack(ptr noundef %0, i32 noundef %1, ptr noundef %2) #0 {
  %4 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 16
  %5 = load ptr, ptr %4, align 8
  %6 = tail call i32 @trace_raw_output_prep(ptr noundef %0, ptr noundef %2) #9
  %7 = icmp eq i32 %6, 1
  br i1 %7, label %8, label %25

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 15
  %10 = getelementptr inbounds %struct.trace_event_raw_rpcgss_update_slack, ptr %5, i32 0, i32 1
  %11 = load i32, ptr %10, align 4
  %12 = getelementptr inbounds %struct.trace_event_raw_rpcgss_update_slack, ptr %5, i32 0, i32 2
  %13 = load i32, ptr %12, align 4
  %14 = getelementptr inbounds %struct.trace_event_raw_rpcgss_update_slack, ptr %5, i32 0, i32 3
  %15 = load i32, ptr %14, align 4
  %16 = getelementptr inbounds %struct.trace_event_raw_rpcgss_update_slack, ptr %5, i32 0, i32 4
  %17 = load ptr, ptr %16, align 4
  %18 = getelementptr inbounds %struct.trace_event_raw_rpcgss_update_slack, ptr %5, i32 0, i32 5
  %19 = load i32, ptr %18, align 4
  %20 = getelementptr inbounds %struct.trace_event_raw_rpcgss_update_slack, ptr %5, i32 0, i32 6
  %21 = load i32, ptr %20, align 4
  %22 = getelementptr inbounds %struct.trace_event_raw_rpcgss_update_slack, ptr %5, i32 0, i32 7
  %23 = load i32, ptr %22, align 4
  tail call void (ptr, ptr, ...) @trace_event_printf(ptr noundef %0, ptr noundef nonnull @.str.76, i32 noundef %11, i32 noundef %13, i32 noundef %15, ptr noundef %17, i32 noundef %19, i32 noundef %21, i32 noundef %23) #9
  %24 = tail call i32 @trace_handle_return(ptr noundef %9) #9
  br label %25

25:                                               ; preds = %8, %3
  %26 = phi i32 [ %24, %8 ], [ %6, %3 ]
  ret i32 %26
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @trace_raw_output_rpcgss_svc_seqno_class(ptr noundef %0, i32 noundef %1, ptr noundef %2) #0 {
  %4 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 16
  %5 = load ptr, ptr %4, align 8
  %6 = tail call i32 @trace_raw_output_prep(ptr noundef %0, ptr noundef %2) #9
  %7 = icmp eq i32 %6, 1
  br i1 %7, label %8, label %15

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 15
  %10 = getelementptr inbounds %struct.trace_event_raw_rpcgss_svc_seqno_class, ptr %5, i32 0, i32 1
  %11 = load i32, ptr %10, align 4
  %12 = getelementptr inbounds %struct.trace_event_raw_rpcgss_svc_seqno_class, ptr %5, i32 0, i32 2
  %13 = load i32, ptr %12, align 4
  tail call void (ptr, ptr, ...) @trace_event_printf(ptr noundef %0, ptr noundef nonnull @.str.77, i32 noundef %11, i32 noundef %13) #9
  %14 = tail call i32 @trace_handle_return(ptr noundef %9) #9
  br label %15

15:                                               ; preds = %8, %3
  %16 = phi i32 [ %14, %8 ], [ %6, %3 ]
  ret i32 %16
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @trace_raw_output_rpcgss_svc_seqno_low(ptr noundef %0, i32 noundef %1, ptr noundef %2) #0 {
  %4 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 16
  %5 = load ptr, ptr %4, align 8
  %6 = tail call i32 @trace_raw_output_prep(ptr noundef %0, ptr noundef %2) #9
  %7 = icmp eq i32 %6, 1
  br i1 %7, label %8, label %19

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 15
  %10 = getelementptr inbounds %struct.trace_event_raw_rpcgss_svc_seqno_low, ptr %5, i32 0, i32 1
  %11 = load i32, ptr %10, align 4
  %12 = getelementptr inbounds %struct.trace_event_raw_rpcgss_svc_seqno_low, ptr %5, i32 0, i32 2
  %13 = load i32, ptr %12, align 4
  %14 = getelementptr inbounds %struct.trace_event_raw_rpcgss_svc_seqno_low, ptr %5, i32 0, i32 3
  %15 = load i32, ptr %14, align 4
  %16 = getelementptr inbounds %struct.trace_event_raw_rpcgss_svc_seqno_low, ptr %5, i32 0, i32 4
  %17 = load i32, ptr %16, align 4
  tail call void (ptr, ptr, ...) @trace_event_printf(ptr noundef %0, ptr noundef nonnull @.str.80, i32 noundef %11, i32 noundef %13, i32 noundef %15, i32 noundef %17) #9
  %18 = tail call i32 @trace_handle_return(ptr noundef %9) #9
  br label %19

19:                                               ; preds = %8, %3
  %20 = phi i32 [ %18, %8 ], [ %6, %3 ]
  ret i32 %20
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @trace_raw_output_rpcgss_upcall_msg(ptr noundef %0, i32 noundef %1, ptr noundef %2) #0 {
  %4 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 16
  %5 = load ptr, ptr %4, align 8
  %6 = tail call i32 @trace_raw_output_prep(ptr noundef %0, ptr noundef %2) #9
  %7 = icmp eq i32 %6, 1
  br i1 %7, label %8, label %15

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 15
  %10 = getelementptr inbounds %struct.trace_event_raw_rpcgss_upcall_msg, ptr %5, i32 0, i32 1
  %11 = load i32, ptr %10, align 4
  %12 = and i32 %11, 65535
  %13 = getelementptr i8, ptr %5, i32 %12
  tail call void (ptr, ptr, ...) @trace_event_printf(ptr noundef %0, ptr noundef nonnull @.str.82, ptr noundef %13) #9
  %14 = tail call i32 @trace_handle_return(ptr noundef %9) #9
  br label %15

15:                                               ; preds = %8, %3
  %16 = phi i32 [ %14, %8 ], [ %6, %3 ]
  ret i32 %16
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @trace_raw_output_rpcgss_upcall_result(ptr noundef %0, i32 noundef %1, ptr noundef %2) #0 {
  %4 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 16
  %5 = load ptr, ptr %4, align 8
  %6 = tail call i32 @trace_raw_output_prep(ptr noundef %0, ptr noundef %2) #9
  %7 = icmp eq i32 %6, 1
  br i1 %7, label %8, label %15

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 15
  %10 = getelementptr inbounds %struct.trace_event_raw_rpcgss_upcall_result, ptr %5, i32 0, i32 1
  %11 = load i32, ptr %10, align 4
  %12 = getelementptr inbounds %struct.trace_event_raw_rpcgss_upcall_result, ptr %5, i32 0, i32 2
  %13 = load i32, ptr %12, align 4
  tail call void (ptr, ptr, ...) @trace_event_printf(ptr noundef %0, ptr noundef nonnull @.str.85, i32 noundef %11, i32 noundef %13) #9
  %14 = tail call i32 @trace_handle_return(ptr noundef %9) #9
  br label %15

15:                                               ; preds = %8, %3
  %16 = phi i32 [ %14, %8 ], [ %6, %3 ]
  ret i32 %16
}

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid willreturn
declare dso_local ptr @strncpy(ptr noalias noundef returned writeonly, ptr noalias nocapture noundef readonly, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @trace_raw_output_rpcgss_context(ptr noundef %0, i32 noundef %1, ptr noundef %2) #0 {
  %4 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 16
  %5 = load ptr, ptr %4, align 8
  %6 = tail call i32 @trace_raw_output_prep(ptr noundef %0, ptr noundef %2) #9
  %7 = icmp eq i32 %6, 1
  br i1 %7, label %8, label %25

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 15
  %10 = getelementptr inbounds %struct.trace_event_raw_rpcgss_context, ptr %5, i32 0, i32 4
  %11 = load i32, ptr %10, align 4
  %12 = getelementptr inbounds %struct.trace_event_raw_rpcgss_context, ptr %5, i32 0, i32 1
  %13 = load i32, ptr %12, align 4
  %14 = getelementptr inbounds %struct.trace_event_raw_rpcgss_context, ptr %5, i32 0, i32 2
  %15 = load i32, ptr %14, align 4
  %16 = getelementptr inbounds %struct.trace_event_raw_rpcgss_context, ptr %5, i32 0, i32 3
  %17 = load i32, ptr %16, align 4
  %18 = getelementptr inbounds %struct.trace_event_raw_rpcgss_context, ptr %5, i32 0, i32 5
  %19 = load i32, ptr %18, align 4
  %20 = getelementptr inbounds %struct.trace_event_raw_rpcgss_context, ptr %5, i32 0, i32 6
  %21 = load i32, ptr %20, align 4
  %22 = and i32 %21, 65535
  %23 = getelementptr i8, ptr %5, i32 %22
  tail call void (ptr, ptr, ...) @trace_event_printf(ptr noundef %0, ptr noundef nonnull @.str.92, i32 noundef %11, i32 noundef %13, i32 noundef %15, i32 noundef %17, i32 noundef %19, ptr noundef %23) #9
  %24 = tail call i32 @trace_handle_return(ptr noundef %9) #9
  br label %25

25:                                               ; preds = %8, %3
  %26 = phi i32 [ %24, %8 ], [ %6, %3 ]
  ret i32 %26
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @trace_raw_output_rpcgss_createauth(ptr noundef %0, i32 noundef %1, ptr noundef %2) #0 {
  %4 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 16
  %5 = load ptr, ptr %4, align 8
  %6 = tail call i32 @trace_raw_output_prep(ptr noundef %0, ptr noundef %2) #9
  %7 = icmp eq i32 %6, 1
  br i1 %7, label %8, label %17

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 12
  %10 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 15
  %11 = getelementptr inbounds %struct.trace_event_raw_rpcgss_createauth, ptr %5, i32 0, i32 1
  %12 = load i32, ptr %11, align 4
  %13 = tail call ptr @trace_print_symbols_seq(ptr noundef %9, i32 noundef %12, ptr noundef nonnull @trace_raw_output_rpcgss_createauth.symbols) #9
  %14 = getelementptr inbounds %struct.trace_event_raw_rpcgss_createauth, ptr %5, i32 0, i32 2
  %15 = load i32, ptr %14, align 4
  tail call void (ptr, ptr, ...) @trace_event_printf(ptr noundef %0, ptr noundef nonnull @.str.95, ptr noundef %13, i32 noundef %15) #9
  %16 = tail call i32 @trace_handle_return(ptr noundef %10) #9
  br label %17

17:                                               ; preds = %8, %3
  %18 = phi i32 [ %16, %8 ], [ %6, %3 ]
  ret i32 %18
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @trace_raw_output_rpcgss_oid_to_mech(ptr noundef %0, i32 noundef %1, ptr noundef %2) #0 {
  %4 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 16
  %5 = load ptr, ptr %4, align 8
  %6 = tail call i32 @trace_raw_output_prep(ptr noundef %0, ptr noundef %2) #9
  %7 = icmp eq i32 %6, 1
  br i1 %7, label %8, label %15

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 15
  %10 = getelementptr inbounds %struct.trace_event_raw_rpcgss_oid_to_mech, ptr %5, i32 0, i32 1
  %11 = load i32, ptr %10, align 4
  %12 = and i32 %11, 65535
  %13 = getelementptr i8, ptr %5, i32 %12
  tail call void (ptr, ptr, ...) @trace_event_printf(ptr noundef %0, ptr noundef nonnull @.str.97, ptr noundef %13) #9
  %14 = tail call i32 @trace_handle_return(ptr noundef %9) #9
  br label %15

15:                                               ; preds = %8, %3
  %16 = phi i32 [ %14, %8 ], [ %6, %3 ]
  ret i32 %16
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @perf_trace_buf_alloc(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @perf_trace_run_bpf_submit(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i64 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #7

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.returnaddress(i32 immarg) #8

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.frameaddress.p0(i32 immarg) #8

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { argmemonly nofree nounwind willreturn writeonly }
attributes #4 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { nounwind readonly }
attributes #8 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #9 = { nounwind }

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
!9 = !{!"auto-init"}
!10 = !{!"branch_weights", i32 2000, i32 1}
!11 = !{!"branch_weights", i32 1, i32 2000}
!12 = !{i64 366869}
!13 = !{i8 0, i8 2}
