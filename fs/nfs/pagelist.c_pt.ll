; ModuleID = '/llk/IR/fs/nfs/pagelist.c_pt.bc'
source_filename = "../fs/nfs/pagelist.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_nfs_pgio_current_mirror:\09\09\09\09\09"
module asm "\09.asciz \09\22nfs_pgio_current_mirror\22\09\09\09\09\09"
module asm "__kstrtabns_nfs_pgio_current_mirror:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_nfs_pgheader_init:\09\09\09\09\09"
module asm "\09.asciz \09\22nfs_pgheader_init\22\09\09\09\09\09"
module asm "__kstrtabns_nfs_pgheader_init:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_nfs_async_iocounter_wait:\09\09\09\09\09"
module asm "\09.asciz \09\22nfs_async_iocounter_wait\22\09\09\09\09\09"
module asm "__kstrtabns_nfs_async_iocounter_wait:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_nfs_release_request:\09\09\09\09\09"
module asm "\09.asciz \09\22nfs_release_request\22\09\09\09\09\09"
module asm "__kstrtabns_nfs_release_request:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_nfs_wait_on_request:\09\09\09\09\09"
module asm "\09.asciz \09\22nfs_wait_on_request\22\09\09\09\09\09"
module asm "__kstrtabns_nfs_wait_on_request:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_nfs_generic_pg_test:\09\09\09\09\09"
module asm "\09.asciz \09\22nfs_generic_pg_test\22\09\09\09\09\09"
module asm "__kstrtabns_nfs_generic_pg_test:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_nfs_pgio_header_alloc:\09\09\09\09\09"
module asm "\09.asciz \09\22nfs_pgio_header_alloc\22\09\09\09\09\09"
module asm "__kstrtabns_nfs_pgio_header_alloc:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_nfs_pgio_header_free:\09\09\09\09\09"
module asm "\09.asciz \09\22nfs_pgio_header_free\22\09\09\09\09\09"
module asm "__kstrtabns_nfs_pgio_header_free:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_nfs_initiate_pgio:\09\09\09\09\09"
module asm "\09.asciz \09\22nfs_initiate_pgio\22\09\09\09\09\09"
module asm "__kstrtabns_nfs_initiate_pgio:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_nfs_generic_pgio:\09\09\09\09\09"
module asm "\09.asciz \09\22nfs_generic_pgio\22\09\09\09\09\09"
module asm "__kstrtabns_nfs_generic_pgio:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_nfs_pageio_resend:\09\09\09\09\09"
module asm "\09.asciz \09\22nfs_pageio_resend\22\09\09\09\09\09"
module asm "__kstrtabns_nfs_pageio_resend:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.rpc_call_ops = type { ptr, ptr, ptr, ptr }
%struct.nfs_pageio_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.tracepoint = type { ptr, %struct.static_key, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.static_key = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.cpumask = type { [1 x i32] }
%struct.nfs_pageio_descriptor = type { ptr, ptr, ptr, i32, i32, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, [1 x %struct.nfs_pgio_mirror], ptr, i32, i16, i8 }
%struct.nfs_pgio_mirror = type { %struct.list_head, i32, i32, i32, i32, i8 }
%struct.list_head = type { ptr, ptr }
%struct.nfs_pgio_header = type { ptr, ptr, %struct.list_head, ptr, %struct.nfs_writeverf, i32, ptr, i64, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, %struct.rpc_task, %struct.nfs_fattr, %struct.nfs_pgio_args, %struct.nfs_pgio_res, i32, ptr, i64, %struct.nfs_page_array, ptr, i32, i32 }
%struct.nfs_writeverf = type { %struct.nfs_write_verifier, i32 }
%struct.nfs_write_verifier = type { [8 x i8] }
%struct.rpc_task = type { %struct.atomic_t, i32, %struct.list_head, ptr, ptr, i32, i32, ptr, %union.anon.87, i32, %struct.rpc_message, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64, i32, i16, i16, i16, i8 }
%union.anon.87 = type { %struct.rpc_wait }
%struct.rpc_wait = type { %struct.list_head, %struct.list_head, %struct.list_head }
%struct.rpc_message = type { ptr, ptr, ptr, ptr }
%struct.nfs_fattr = type { i32, i16, i32, %struct.kuid_t, %struct.kgid_t, i32, i64, %union.anon.113, %struct.nfs_fsid, i64, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, i64, i64, i64, %struct.timespec64, %struct.timespec64, i32, i32, ptr, ptr, ptr, ptr }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%union.anon.113 = type { %struct.anon.115 }
%struct.anon.115 = type { i64 }
%struct.nfs_fsid = type { i64, i64 }
%struct.timespec64 = type { i64, i32 }
%struct.nfs_pgio_args = type { %struct.nfs4_sequence_args, ptr, ptr, ptr, %struct.nfs4_stateid_struct, i64, i32, i32, ptr, %union.anon.118 }
%struct.nfs4_sequence_args = type { ptr, i8 }
%struct.nfs4_stateid_struct = type { %union.anon.116, i32 }
%union.anon.116 = type { %struct.anon.117 }
%struct.anon.117 = type { i32, [12 x i8] }
%union.anon.118 = type { %struct.anon.119 }
%struct.anon.119 = type { ptr, [3 x i32], i32 }
%struct.nfs_pgio_res = type { %struct.nfs4_sequence_res, ptr, i64, i32, %union.anon.120 }
%struct.nfs4_sequence_res = type { ptr, i32, i32, i32, i32, i32 }
%union.anon.120 = type { %struct.anon.121 }
%struct.anon.121 = type { i32, i32 }
%struct.nfs_page_array = type { ptr, i32, [8 x ptr] }
%struct.nfs_page = type { %struct.list_head, ptr, ptr, i32, i32, i32, i32, %struct.kref, i32, %struct.nfs_write_verifier, ptr, ptr, i16 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.nfs_lock_context = type { %struct.refcount_struct, %struct.list_head, ptr, ptr, %struct.atomic_t, %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.nfs_open_context = type { %struct.nfs_lock_context, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, %struct.list_head, ptr, %struct.callback_head }
%struct.nfs_pgio_completion_ops = type { ptr, ptr, ptr, ptr }
%struct.thread_info = type { i32, i32, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], [4 x i8], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.wait_bit_queue_entry = type { %struct.wait_bit_key, %struct.wait_queue_entry }
%struct.wait_bit_key = type { ptr, i32, i32 }
%struct.wait_queue_entry = type { i32, ptr, ptr, %struct.list_head }
%struct.dentry = type { i32, %struct.seqcount_spinlock, %struct.hlist_bl_node, ptr, %struct.qstr, ptr, [36 x i8], %struct.lockref, ptr, ptr, i32, ptr, %union.anon.149, %struct.list_head, %struct.list_head, %union.anon.150 }
%struct.seqcount_spinlock = type { %struct.seqcount }
%struct.seqcount = type { i32 }
%struct.hlist_bl_node = type { ptr, ptr }
%struct.qstr = type { %union.anon.0, ptr }
%union.anon.0 = type { i64 }
%struct.lockref = type { %union.anon.1 }
%union.anon.1 = type { i64 }
%union.anon.149 = type { %struct.list_head }
%union.anon.150 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.151, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.152, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.153, ptr, %struct.address_space, %struct.list_head, %union.anon.154, i32, i32, ptr, ptr }
%union.anon.151 = type { i32 }
%struct.spinlock = type { %union.anon.3 }
%union.anon.3 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.4 }
%union.anon.4 = type { i32 }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%union.anon.152 = type { %struct.callback_head }
%struct.atomic64_t = type { i64 }
%union.anon.153 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%union.anon.154 = type { ptr }
%struct.super_block = type { %struct.list_head, i32, i8, i32, i64, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, ptr, %struct.rw_semaphore, i32, %struct.atomic_t, ptr, %struct.hlist_bl_head, %struct.list_head, ptr, ptr, ptr, %struct.hlist_node, i32, %struct.quota_info, %struct.sb_writers, ptr, i32, i64, i64, i32, ptr, [32 x i8], %struct.uuid_t, i32, i32, %struct.mutex, ptr, ptr, %struct.shrinker, %struct.atomic_t, %struct.atomic_t, i32, i32, ptr, %struct.hlist_head, ptr, %struct.list_lru, %struct.list_lru, %struct.callback_head, %struct.work_struct, %struct.mutex, i32, [56 x i8], %struct.spinlock, %struct.list_head, %struct.spinlock, %struct.list_head, [40 x i8] }
%struct.hlist_bl_head = type { ptr }
%struct.quota_info = type { i32, %struct.rw_semaphore, [3 x ptr], [3 x %struct.mem_dqinfo], [3 x ptr] }
%struct.mem_dqinfo = type { ptr, i32, %struct.list_head, i32, i32, i32, i64, i64, ptr }
%struct.sb_writers = type { i32, %struct.wait_queue_head, [3 x %struct.percpu_rw_semaphore] }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.percpu_rw_semaphore = type { %struct.rcu_sync, ptr, %struct.rcuwait, %struct.wait_queue_head, %struct.atomic_t }
%struct.rcu_sync = type { i32, i32, %struct.wait_queue_head, %struct.callback_head }
%struct.rcuwait = type { ptr }
%struct.uuid_t = type { [16 x i8] }
%struct.shrinker = type { ptr, ptr, i32, i32, i32, %struct.list_head, ptr }
%struct.hlist_head = type { ptr }
%struct.list_lru = type { ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.nfs_server = type { ptr, %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, %struct.atomic_t, i32, i32, i32, i32, i32, i32, i32, i32, i32, i16, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.nfs_fsid, i64, %struct.timespec64, i32, ptr, i32, %struct.nfs_auth_info, i32, [3 x i32], [3 x i32], [3 x i32], [3 x i32], i32, i32, ptr, %struct.rpc_wait_queue, ptr, %struct.rb_root, %struct.ida, %struct.ida, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, i32, i32, ptr, %struct.atomic_t, %struct.__kernel_sockaddr_storage, i32, i32, i16, i16, %struct.rpc_wait_queue, i32, ptr, i8 }
%struct.nfs_auth_info = type { i32, [12 x i32] }
%struct.ida = type { %struct.xarray }
%struct.__kernel_sockaddr_storage = type { %union.anon.85 }
%union.anon.85 = type { ptr, [124 x i8] }
%struct.rpc_wait_queue = type { %struct.spinlock, [4 x %struct.list_head], i8, i8, i8, i16, %struct.rpc_timer, ptr }
%struct.rpc_timer = type { %struct.list_head, i32, %struct.delayed_work }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32 }
%struct.page = type { i32, %union.anon.7, %union.anon.34, %struct.atomic_t }
%union.anon.7 = type { %struct.anon.8 }
%struct.anon.8 = type { %struct.list_head, ptr, i32, i32 }
%union.anon.34 = type { %struct.atomic_t }
%struct.nfs_rw_ops = type { ptr, ptr, ptr, ptr, ptr }
%struct.rpc_task_setup = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i16, i8 }
%struct.nfs_commit_info = type { ptr, ptr, ptr, ptr, ptr }
%struct.anon.36 = type { i32, %struct.list_head, ptr, i32, ptr, %struct.atomic_t, %struct.atomic_t }
%struct.nfs_client = type { %struct.refcount_struct, %struct.atomic_t, i32, i32, i32, %struct.__kernel_sockaddr_storage, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, ptr, i32, ptr, i32, i32, i32, ptr, %struct.list_head, i64, %struct.nfs4_verifier, i32, %struct.spinlock, i32, i32, %struct.delayed_work, %struct.rpc_wait_queue, ptr, ptr, i32, ptr, i32, ptr, i32, i32, ptr, i8, ptr, ptr, ptr, i32, %struct.wait_queue_head, [48 x i8], ptr, %struct.list_head }
%struct.nfs4_verifier = type { [8 x i8] }
%struct.file_lock_context = type { %struct.spinlock, %struct.list_head, %struct.list_head, %struct.list_head }
%struct.nfs_rpc_ops = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }

@__kstrtab_nfs_pgio_current_mirror = external dso_local constant [0 x i8], align 1
@__kstrtabns_nfs_pgio_current_mirror = external dso_local constant [0 x i8], align 1
@__ksymtab_nfs_pgio_current_mirror = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @nfs_pgio_current_mirror to i32), ptr @__kstrtab_nfs_pgio_current_mirror, ptr @__kstrtabns_nfs_pgio_current_mirror }, section "___ksymtab_gpl+nfs_pgio_current_mirror", align 4
@__kstrtab_nfs_pgheader_init = external dso_local constant [0 x i8], align 1
@__kstrtabns_nfs_pgheader_init = external dso_local constant [0 x i8], align 1
@__ksymtab_nfs_pgheader_init = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @nfs_pgheader_init to i32), ptr @__kstrtab_nfs_pgheader_init, ptr @__kstrtabns_nfs_pgheader_init }, section "___ksymtab_gpl+nfs_pgheader_init", align 4
@__kstrtab_nfs_async_iocounter_wait = external dso_local constant [0 x i8], align 1
@__kstrtabns_nfs_async_iocounter_wait = external dso_local constant [0 x i8], align 1
@__ksymtab_nfs_async_iocounter_wait = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @nfs_async_iocounter_wait to i32), ptr @__kstrtab_nfs_async_iocounter_wait, ptr @__kstrtabns_nfs_async_iocounter_wait }, section "___ksymtab_gpl+nfs_async_iocounter_wait", align 4
@nfs_free_request.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str = private unnamed_addr constant [18 x i8] c"fs/nfs/pagelist.c\00", align 1
@nfs_free_request.__already_done.1 = internal unnamed_addr global i1 false, section ".data.once", align 1
@nfs_free_request.__already_done.2 = internal unnamed_addr global i1 false, section ".data.once", align 1
@nfs_free_request.__already_done.3 = internal unnamed_addr global i1 false, section ".data.once", align 1
@nfs_free_request.__already_done.4 = internal unnamed_addr global i1 false, section ".data.once", align 1
@nfs_free_request.__already_done.5 = internal unnamed_addr global i1 false, section ".data.once", align 1
@__kstrtab_nfs_release_request = external dso_local constant [0 x i8], align 1
@__kstrtabns_nfs_release_request = external dso_local constant [0 x i8], align 1
@__ksymtab_nfs_release_request = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @nfs_release_request to i32), ptr @__kstrtab_nfs_release_request, ptr @__kstrtabns_nfs_release_request }, section "___ksymtab_gpl+nfs_release_request", align 4
@__kstrtab_nfs_wait_on_request = external dso_local constant [0 x i8], align 1
@__kstrtabns_nfs_wait_on_request = external dso_local constant [0 x i8], align 1
@__ksymtab_nfs_wait_on_request = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @nfs_wait_on_request to i32), ptr @__kstrtab_nfs_wait_on_request, ptr @__kstrtabns_nfs_wait_on_request }, section "___ksymtab_gpl+nfs_wait_on_request", align 4
@nfs_generic_pg_test.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@__kstrtab_nfs_generic_pg_test = external dso_local constant [0 x i8], align 1
@__kstrtabns_nfs_generic_pg_test = external dso_local constant [0 x i8], align 1
@__ksymtab_nfs_generic_pg_test = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @nfs_generic_pg_test to i32), ptr @__kstrtab_nfs_generic_pg_test, ptr @__kstrtabns_nfs_generic_pg_test }, section "___ksymtab_gpl+nfs_generic_pg_test", align 4
@__kstrtab_nfs_pgio_header_alloc = external dso_local constant [0 x i8], align 1
@__kstrtabns_nfs_pgio_header_alloc = external dso_local constant [0 x i8], align 1
@__ksymtab_nfs_pgio_header_alloc = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @nfs_pgio_header_alloc to i32), ptr @__kstrtab_nfs_pgio_header_alloc, ptr @__kstrtabns_nfs_pgio_header_alloc }, section "___ksymtab_gpl+nfs_pgio_header_alloc", align 4
@__kstrtab_nfs_pgio_header_free = external dso_local constant [0 x i8], align 1
@__kstrtabns_nfs_pgio_header_free = external dso_local constant [0 x i8], align 1
@__ksymtab_nfs_pgio_header_free = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @nfs_pgio_header_free to i32), ptr @__kstrtab_nfs_pgio_header_free, ptr @__kstrtabns_nfs_pgio_header_free }, section "___ksymtab_gpl+nfs_pgio_header_free", align 4
@nfsiod_workqueue = external dso_local local_unnamed_addr global ptr, align 4
@__kstrtab_nfs_initiate_pgio = external dso_local constant [0 x i8], align 1
@__kstrtabns_nfs_initiate_pgio = external dso_local constant [0 x i8], align 1
@__ksymtab_nfs_initiate_pgio = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @nfs_initiate_pgio to i32), ptr @__kstrtab_nfs_initiate_pgio, ptr @__kstrtabns_nfs_initiate_pgio }, section "___ksymtab_gpl+nfs_initiate_pgio", align 4
@nfs_generic_pgio.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@nfs_pgio_common_ops = internal constant %struct.rpc_call_ops { ptr @nfs_pgio_prepare, ptr @nfs_pgio_result, ptr null, ptr @nfs_pgio_release }, align 4
@__kstrtab_nfs_generic_pgio = external dso_local constant [0 x i8], align 1
@__kstrtabns_nfs_generic_pgio = external dso_local constant [0 x i8], align 1
@__ksymtab_nfs_generic_pgio = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @nfs_generic_pgio to i32), ptr @__kstrtab_nfs_generic_pgio, ptr @__kstrtabns_nfs_generic_pgio }, section "___ksymtab_gpl+nfs_generic_pgio", align 4
@__kstrtab_nfs_pageio_resend = external dso_local constant [0 x i8], align 1
@__kstrtabns_nfs_pageio_resend = external dso_local constant [0 x i8], align 1
@__ksymtab_nfs_pageio_resend = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @nfs_pageio_resend to i32), ptr @__kstrtab_nfs_pageio_resend, ptr @__kstrtabns_nfs_pageio_resend }, section "___ksymtab_gpl+nfs_pageio_resend", align 4
@.str.6 = private unnamed_addr constant [9 x i8] c"nfs_page\00", align 1
@nfs_page_cachep = internal unnamed_addr global ptr null, align 4
@nfs_pgio_rw_ops = dso_local local_unnamed_addr constant %struct.nfs_pageio_ops { ptr null, ptr @nfs_generic_pg_test, ptr @nfs_generic_pg_pgios, ptr null, ptr null, ptr null, ptr null }, align 4
@__tracepoint_nfs_pgio_error = external dso_local global %struct.tracepoint, align 4
@__cpu_online_mask = external dso_local global %struct.cpumask, align 4
@nfs_page_group_sync_on_bit_locked.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@nfs_page_group_sync_on_bit_locked.__already_done.8 = internal unnamed_addr global i1 false, section ".data.once", align 1
@nfs_page_group_init.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@nfs_page_group_init.__already_done.9 = internal unnamed_addr global i1 false, section ".data.once", align 1
@nfs_page_group_init.__already_done.10 = internal unnamed_addr global i1 false, section ".data.once", align 1
@__nfs_pageio_add_request.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@llvm.compiler.used = appending global [11 x ptr] [ptr @__ksymtab_nfs_async_iocounter_wait, ptr @__ksymtab_nfs_generic_pg_test, ptr @__ksymtab_nfs_generic_pgio, ptr @__ksymtab_nfs_initiate_pgio, ptr @__ksymtab_nfs_pageio_resend, ptr @__ksymtab_nfs_pgheader_init, ptr @__ksymtab_nfs_pgio_current_mirror, ptr @__ksymtab_nfs_pgio_header_alloc, ptr @__ksymtab_nfs_pgio_header_free, ptr @__ksymtab_nfs_release_request, ptr @__ksymtab_nfs_wait_on_request], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @nfs_pgio_current_mirror(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.nfs_pageio_descriptor, ptr %0, i32 0, i32 1
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.nfs_pageio_ops, ptr %3, i32 0, i32 5
  %5 = load ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %11, label %7

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.nfs_pageio_descriptor, ptr %0, i32 0, i32 15
  %9 = load i32, ptr %8, align 4
  %10 = tail call ptr %5(ptr noundef %0, i32 noundef %9) #9
  br label %14

11:                                               ; preds = %1
  %12 = getelementptr inbounds %struct.nfs_pageio_descriptor, ptr %0, i32 0, i32 12
  %13 = load ptr, ptr %12, align 4
  br label %14

14:                                               ; preds = %11, %7
  %15 = phi ptr [ %10, %7 ], [ %13, %11 ]
  ret ptr %15
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @nfs_pgheader_init(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = getelementptr inbounds %struct.nfs_pageio_descriptor, ptr %0, i32 0, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.nfs_pageio_ops, ptr %5, i32 0, i32 5
  %7 = load ptr, ptr %6, align 4
  %8 = icmp eq ptr %7, null
  br i1 %8, label %13, label %9

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.nfs_pageio_descriptor, ptr %0, i32 0, i32 15
  %11 = load i32, ptr %10, align 4
  %12 = tail call ptr %7(ptr noundef %0, i32 noundef %11) #9
  br label %16

13:                                               ; preds = %3
  %14 = getelementptr inbounds %struct.nfs_pageio_descriptor, ptr %0, i32 0, i32 12
  %15 = load ptr, ptr %14, align 4
  br label %16

16:                                               ; preds = %13, %9
  %17 = phi ptr [ %12, %9 ], [ %15, %13 ]
  %18 = load ptr, ptr %17, align 4
  %19 = getelementptr inbounds %struct.nfs_pgio_header, ptr %1, i32 0, i32 3
  store ptr %18, ptr %19, align 8
  %20 = load ptr, ptr %0, align 4
  store ptr %20, ptr %1, align 8
  %21 = getelementptr inbounds %struct.nfs_page, ptr %18, i32 0, i32 2
  %22 = load ptr, ptr %21, align 4
  %23 = getelementptr inbounds %struct.nfs_lock_context, ptr %22, i32 0, i32 2
  %24 = load ptr, ptr %23, align 4
  %25 = getelementptr inbounds %struct.nfs_open_context, ptr %24, i32 0, i32 3
  %26 = load ptr, ptr %25, align 4
  %27 = getelementptr inbounds %struct.nfs_pgio_header, ptr %1, i32 0, i32 1
  store ptr %26, ptr %27, align 4
  %28 = getelementptr inbounds %struct.nfs_page, ptr %18, i32 0, i32 3
  %29 = load i32, ptr %28, align 4
  %30 = zext i32 %29 to i64
  %31 = shl nuw nsw i64 %30, 12
  %32 = getelementptr inbounds %struct.nfs_page, ptr %18, i32 0, i32 4
  %33 = load i32, ptr %32, align 4
  %34 = zext i32 %33 to i64
  %35 = add nuw nsw i64 %31, %34
  %36 = getelementptr inbounds %struct.nfs_pgio_header, ptr %1, i32 0, i32 7
  store i64 %35, ptr %36, align 8
  %37 = getelementptr inbounds %struct.nfs_pgio_mirror, ptr %17, i32 0, i32 2
  %38 = load i32, ptr %37, align 4
  %39 = getelementptr inbounds %struct.nfs_pgio_header, ptr %1, i32 0, i32 16
  store i32 %38, ptr %39, align 8
  %40 = getelementptr inbounds %struct.nfs_pageio_descriptor, ptr %0, i32 0, i32 8
  %41 = load ptr, ptr %40, align 4
  %42 = getelementptr inbounds %struct.nfs_pgio_header, ptr %1, i32 0, i32 12
  store ptr %41, ptr %42, align 8
  %43 = getelementptr inbounds %struct.nfs_pageio_descriptor, ptr %0, i32 0, i32 9
  %44 = load ptr, ptr %43, align 4
  %45 = getelementptr inbounds %struct.nfs_pgio_header, ptr %1, i32 0, i32 13
  store ptr %44, ptr %45, align 4
  %46 = getelementptr inbounds %struct.nfs_pgio_header, ptr %1, i32 0, i32 9
  store ptr %2, ptr %46, align 4
  %47 = getelementptr inbounds %struct.nfs_pageio_descriptor, ptr %0, i32 0, i32 6
  %48 = load ptr, ptr %47, align 4
  %49 = getelementptr inbounds %struct.nfs_pgio_header, ptr %1, i32 0, i32 10
  store ptr %48, ptr %49, align 8
  %50 = getelementptr inbounds %struct.nfs_pgio_completion_ops, ptr %48, i32 0, i32 1
  %51 = load ptr, ptr %50, align 4
  %52 = icmp eq ptr %51, null
  br i1 %52, label %54, label %53

53:                                               ; preds = %16
  tail call void %51(ptr noundef %1) #9
  br label %54

54:                                               ; preds = %53, %16
  %55 = getelementptr inbounds %struct.nfs_pageio_descriptor, ptr %0, i32 0, i32 15
  %56 = load i32, ptr %55, align 4
  %57 = getelementptr inbounds %struct.nfs_pgio_header, ptr %1, i32 0, i32 28
  store i32 %56, ptr %57, align 8
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @nfs_set_pgio_error(ptr noundef %0, i32 noundef %1, i64 noundef %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.nfs_pgio_header, ptr %0, i32 0, i32 7
  %5 = load i64, ptr %4, align 8
  %6 = sub i64 %2, %5
  %7 = trunc i64 %6 to i32
  %8 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_nfs_pgio_error, i32 0, i32 1), align 4
  %9 = icmp sgt i32 %8, 0
  br i1 %9, label %10, label %23

10:                                               ; preds = %3
  %11 = tail call ptr @llvm.thread.pointer() #9
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
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !8
  %22 = tail call i32 @__traceiter_nfs_pgio_error(ptr noundef null, ptr noundef %0, i32 noundef %1, i64 noundef %2) #9
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !9
  br label %23

23:                                               ; preds = %21, %10, %3
  %24 = getelementptr inbounds %struct.nfs_pgio_header, ptr %0, i32 0, i32 16
  %25 = load i32, ptr %24, align 8
  %26 = icmp ugt i32 %25, %7
  br i1 %26, label %27, label %33

27:                                               ; preds = %23
  store i32 %7, ptr %24, align 8
  %28 = getelementptr inbounds %struct.nfs_pgio_header, ptr %0, i32 0, i32 17
  tail call void @_clear_bit(i32 noundef 1, ptr noundef %28) #9
  %29 = tail call i32 @_test_and_set_bit(i32 noundef 0, ptr noundef %28) #9
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %27
  %32 = getelementptr inbounds %struct.nfs_pgio_header, ptr %0, i32 0, i32 15
  store i32 %1, ptr %32, align 4
  br label %33

33:                                               ; preds = %31, %27, %23
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @nfs_iocounter_wait(ptr noundef %0) local_unnamed_addr #0 {
  %2 = alloca %struct.wait_bit_queue_entry, align 4
  %3 = getelementptr inbounds %struct.nfs_lock_context, ptr %0, i32 0, i32 4
  %4 = load volatile i32, ptr %3, align 4
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %22, label %6

6:                                                ; preds = %1
  %7 = tail call ptr @__var_waitqueue(ptr noundef %3) #9
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %2) #9
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(32) %2, i8 0, i32 32, i1 false), !annotation !10
  call void @init_wait_var_entry(ptr noundef nonnull %2, ptr noundef %3, i32 noundef 0) #9
  %8 = getelementptr inbounds %struct.wait_bit_queue_entry, ptr %2, i32 0, i32 1
  %9 = call i32 @prepare_to_wait_event(ptr noundef %7, ptr noundef %8, i32 noundef 258) #9
  %10 = load volatile i32, ptr %3, align 4
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %19, label %12

12:                                               ; preds = %15, %6
  %13 = phi i32 [ %16, %15 ], [ %9, %6 ]
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %20

15:                                               ; preds = %12
  call void @schedule() #9
  %16 = call i32 @prepare_to_wait_event(ptr noundef %7, ptr noundef %8, i32 noundef 258) #9
  %17 = load volatile i32, ptr %3, align 4
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %12

19:                                               ; preds = %15, %6
  call void @finish_wait(ptr noundef %7, ptr noundef %8) #9
  br label %20

20:                                               ; preds = %19, %12
  %21 = phi i32 [ 0, %19 ], [ %13, %12 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %2) #9
  br label %22

22:                                               ; preds = %20, %1
  %23 = phi i32 [ %21, %20 ], [ 0, %1 ]
  ret i32 %23
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__var_waitqueue(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_wait_var_entry(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @prepare_to_wait_event(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @schedule() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @finish_wait(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local zeroext i1 @nfs_async_iocounter_wait(ptr noundef %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.nfs_lock_context, ptr %1, i32 0, i32 2
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.nfs_open_context, ptr %4, i32 0, i32 2
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.dentry, ptr %6, i32 0, i32 5
  %8 = load ptr, ptr %7, align 8
  %9 = getelementptr inbounds %struct.nfs_lock_context, ptr %1, i32 0, i32 4
  %10 = load volatile i32, ptr %9, align 4
  %11 = icmp sgt i32 %10, 0
  br i1 %11, label %12, label %18

12:                                               ; preds = %2
  %13 = getelementptr inbounds %struct.inode, ptr %8, i32 0, i32 8
  %14 = load ptr, ptr %13, align 4
  %15 = getelementptr inbounds %struct.super_block, ptr %14, i32 0, i32 27
  %16 = load ptr, ptr %15, align 4
  %17 = getelementptr inbounds %struct.nfs_server, ptr %16, i32 0, i32 63
  tail call void @rpc_sleep_on(ptr noundef %17, ptr noundef %0, ptr noundef null) #9
  br label %18

18:                                               ; preds = %12, %2
  %19 = load volatile i32, ptr %9, align 4
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %27

21:                                               ; preds = %18
  %22 = getelementptr inbounds %struct.inode, ptr %8, i32 0, i32 8
  %23 = load ptr, ptr %22, align 4
  %24 = getelementptr inbounds %struct.super_block, ptr %23, i32 0, i32 27
  %25 = load ptr, ptr %24, align 4
  %26 = getelementptr inbounds %struct.nfs_server, ptr %25, i32 0, i32 63
  tail call void @rpc_wake_up_queued_task(ptr noundef %26, ptr noundef %0) #9
  br label %27

27:                                               ; preds = %21, %18
  %28 = phi i1 [ false, %21 ], [ %11, %18 ]
  ret i1 %28
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rpc_sleep_on(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rpc_wake_up_queued_task(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @nfs_page_group_lock_head(ptr noundef readonly %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.nfs_page, ptr %0, i32 0, i32 11
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.nfs_page, ptr %3, i32 0, i32 8
  %5 = tail call i32 @_test_and_set_bit(i32 noundef 0, ptr noundef %4) #9
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %23, label %7

7:                                                ; preds = %20, %1
  %8 = load volatile i32, ptr %4, align 4
  %9 = and i32 %8, 1
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %20, label %11

11:                                               ; preds = %7
  tail call void @_set_bit(i32 noundef 12, ptr noundef %4) #9
  tail call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !11
  %12 = load volatile i32, ptr %4, align 4
  %13 = and i32 %12, 1
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %20, label %15

15:                                               ; preds = %11
  %16 = tail call i32 @out_of_line_wait_on_bit(ptr noundef %4, i32 noundef 0, ptr noundef nonnull @bit_wait_io, i32 noundef 2) #9
  %17 = icmp slt i32 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %15
  %19 = inttoptr i32 %16 to ptr
  br label %36

20:                                               ; preds = %15, %11, %7
  %21 = tail call i32 @_test_and_set_bit(i32 noundef 0, ptr noundef %4) #9
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %7

23:                                               ; preds = %20, %1
  %24 = icmp eq ptr %3, %0
  br i1 %24, label %36, label %25

25:                                               ; preds = %23
  %26 = getelementptr inbounds %struct.nfs_page, ptr %3, i32 0, i32 7
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %26) #9, !srcloc !12
  %27 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %26, ptr %26, i32 1, ptr elementtype(i32) %26) #9, !srcloc !13
  %28 = extractvalue { i32, i32, i32 } %27, 0
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %34, label %30, !prof !14

30:                                               ; preds = %25
  %31 = add i32 %28, 1
  %32 = or i32 %31, %28
  %33 = icmp sgt i32 %32, -1
  br i1 %33, label %36, label %34, !prof !15

34:                                               ; preds = %30, %25
  %35 = phi i32 [ 2, %25 ], [ 1, %30 ]
  tail call void @refcount_warn_saturate(ptr noundef %26, i32 noundef %35) #9
  br label %36

36:                                               ; preds = %34, %30, %23, %18
  %37 = phi ptr [ %0, %23 ], [ %19, %18 ], [ %3, %30 ], [ %3, %34 ]
  ret ptr %37
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @nfs_wait_on_request(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.nfs_page, ptr %0, i32 0, i32 8
  %3 = load volatile i32, ptr %2, align 4
  %4 = and i32 %3, 1
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %12, label %6

6:                                                ; preds = %1
  tail call void @_set_bit(i32 noundef 12, ptr noundef %2) #9
  tail call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !11
  %7 = load volatile i32, ptr %2, align 4
  %8 = and i32 %7, 1
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %12, label %10

10:                                               ; preds = %6
  %11 = tail call i32 @out_of_line_wait_on_bit(ptr noundef %2, i32 noundef 0, ptr noundef nonnull @bit_wait_io, i32 noundef 2) #9
  br label %12

12:                                               ; preds = %10, %6, %1
  %13 = phi i32 [ 0, %1 ], [ %11, %10 ], [ 0, %6 ]
  ret i32 %13
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @nfs_page_group_lock_subrequests(ptr noundef %0) local_unnamed_addr #0 {
  %2 = tail call i32 @nfs_page_group_lock(ptr noundef %0)
  %3 = icmp slt i32 %2, 0
  br i1 %3, label %114, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.nfs_page, ptr %0, i32 0, i32 11
  %6 = getelementptr inbounds %struct.nfs_page, ptr %0, i32 0, i32 8
  %7 = getelementptr inbounds %struct.nfs_page, ptr %0, i32 0, i32 10
  br label %8

8:                                                ; preds = %95, %4
  %9 = phi ptr [ %11, %95 ], [ %0, %4 ]
  %10 = getelementptr inbounds %struct.nfs_page, ptr %9, i32 0, i32 10
  %11 = load ptr, ptr %10, align 4
  %12 = icmp eq ptr %11, %0
  br i1 %12, label %98, label %13

13:                                               ; preds = %8
  %14 = getelementptr inbounds %struct.nfs_page, ptr %11, i32 0, i32 7
  %15 = load volatile i32, ptr %14, align 4
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %29, label %17

17:                                               ; preds = %27, %13
  %18 = phi i32 [ %25, %27 ], [ %15, %13 ]
  %19 = add i32 %18, 1
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %14) #9, !srcloc !12
  br label %20

20:                                               ; preds = %20, %17
  %21 = tail call { i32, i32 } asm sideeffect "@ atomic_cmpxchg\0Aldrex\09$1, [$3]\0Amov\09$0, #0\0Ateq\09$1, $4\0Astrexeq $0, $5, [$3]\0A", "=&r,=&r,=*Qo,r,Ir,r,*Qo,~{cc}"(ptr elementtype(i32) %14, ptr %14, i32 %18, i32 %19, ptr elementtype(i32) %14) #9, !srcloc !16
  %22 = extractvalue { i32, i32 } %21, 0
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %20

24:                                               ; preds = %20
  %25 = extractvalue { i32, i32 } %21, 1
  %26 = icmp eq i32 %25, %18
  br i1 %26, label %29, label %27, !prof !15

27:                                               ; preds = %24
  %28 = icmp eq i32 %25, 0
  br i1 %28, label %29, label %17

29:                                               ; preds = %27, %24, %13
  %30 = phi i32 [ 0, %13 ], [ 0, %27 ], [ %18, %24 ]
  %31 = add i32 %30, 1
  %32 = or i32 %31, %30
  %33 = icmp sgt i32 %32, -1
  br i1 %33, label %35, label %34, !prof !15

34:                                               ; preds = %29
  tail call void @refcount_warn_saturate(ptr noundef %14, i32 noundef 0) #9
  br label %35

35:                                               ; preds = %34, %29
  %36 = icmp eq i32 %30, 0
  br i1 %36, label %95, label %37

37:                                               ; preds = %35
  %38 = getelementptr inbounds %struct.nfs_page, ptr %11, i32 0, i32 8
  br label %39

39:                                               ; preds = %71, %37
  %40 = tail call i32 @_test_and_set_bit(i32 noundef 0, ptr noundef %38) #9
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %95, label %42

42:                                               ; preds = %39
  %43 = load ptr, ptr %5, align 4
  %44 = icmp eq ptr %43, %0
  br i1 %44, label %52, label %45

45:                                               ; preds = %42
  %46 = getelementptr inbounds %struct.nfs_page, ptr %43, i32 0, i32 8
  tail call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !17
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %46) #9, !srcloc !12
  %47 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_andnot\0A1:\09ldrex\09$0, [$4]\0A\09bic\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %46, ptr %46, i32 32, ptr elementtype(i32) %46) #9, !srcloc !18
  tail call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !19
  %48 = load volatile i32, ptr %46, align 4
  %49 = and i32 %48, 2048
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %52, label %51

51:                                               ; preds = %45
  tail call void @wake_up_bit(ptr noundef %46, i32 noundef 5) #9
  br label %52

52:                                               ; preds = %51, %45, %42
  tail call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !17
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %6) #9, !srcloc !12
  %53 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_andnot\0A1:\09ldrex\09$0, [$4]\0A\09bic\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %6, ptr %6, i32 32, ptr elementtype(i32) %6) #9, !srcloc !18
  tail call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !19
  %54 = load volatile i32, ptr %6, align 4
  %55 = and i32 %54, 2048
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %58, label %57

57:                                               ; preds = %52
  tail call void @wake_up_bit(ptr noundef %6, i32 noundef 5) #9
  br label %58

58:                                               ; preds = %57, %52
  %59 = load volatile i32, ptr %38, align 4
  %60 = and i32 %59, 1
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %69, label %62

62:                                               ; preds = %58
  tail call void @_set_bit(i32 noundef 12, ptr noundef %38) #9
  tail call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !11
  %63 = load volatile i32, ptr %38, align 4
  %64 = and i32 %63, 1
  %65 = icmp eq i32 %64, 0
  br i1 %65, label %69, label %66

66:                                               ; preds = %62
  %67 = tail call i32 @out_of_line_wait_on_bit(ptr noundef %38, i32 noundef 0, ptr noundef nonnull @bit_wait_io, i32 noundef 2) #9
  %68 = icmp eq i32 %67, 0
  br i1 %68, label %69, label %71

69:                                               ; preds = %66, %62, %58
  %70 = tail call i32 @nfs_page_group_lock(ptr noundef %0) #9
  br label %71

71:                                               ; preds = %69, %66
  %72 = phi i32 [ %67, %66 ], [ %70, %69 ]
  %73 = icmp slt i32 %72, 0
  br i1 %73, label %74, label %39

74:                                               ; preds = %71
  %75 = load ptr, ptr %7, align 4
  %76 = icmp eq ptr %75, %11
  br i1 %76, label %94, label %77

77:                                               ; preds = %90, %74
  %78 = phi ptr [ %92, %90 ], [ %75, %74 ]
  %79 = getelementptr inbounds %struct.nfs_page, ptr %78, i32 0, i32 7
  %80 = load volatile i32, ptr %79, align 4
  %81 = icmp eq i32 %80, 0
  br i1 %81, label %90, label %82

82:                                               ; preds = %77
  %83 = getelementptr inbounds %struct.nfs_page, ptr %78, i32 0, i32 8
  tail call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !17
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %83) #9, !srcloc !12
  %84 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_andnot\0A1:\09ldrex\09$0, [$4]\0A\09bic\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %83, ptr %83, i32 1, ptr elementtype(i32) %83) #9, !srcloc !18
  tail call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !20
  %85 = load volatile i32, ptr %83, align 4
  %86 = and i32 %85, 4096
  %87 = icmp eq i32 %86, 0
  br i1 %87, label %89, label %88

88:                                               ; preds = %82
  tail call void @wake_up_bit(ptr noundef %83, i32 noundef 0) #9
  br label %89

89:                                               ; preds = %88, %82
  tail call void @nfs_release_request(ptr noundef %78) #9
  br label %90

90:                                               ; preds = %89, %77
  %91 = getelementptr inbounds %struct.nfs_page, ptr %78, i32 0, i32 10
  %92 = load ptr, ptr %91, align 4
  %93 = icmp eq ptr %92, %11
  br i1 %93, label %94, label %77

94:                                               ; preds = %90, %74
  tail call void @nfs_release_request(ptr noundef %11) #9
  br label %95

95:                                               ; preds = %94, %39, %35
  %96 = phi i32 [ %72, %94 ], [ 0, %35 ], [ 0, %39 ]
  %97 = icmp slt i32 %96, 0
  br i1 %97, label %114, label %8

98:                                               ; preds = %8
  %99 = load ptr, ptr %5, align 4
  %100 = icmp eq ptr %99, %0
  br i1 %100, label %108, label %101

101:                                              ; preds = %98
  %102 = getelementptr inbounds %struct.nfs_page, ptr %99, i32 0, i32 8
  tail call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !17
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %102) #9, !srcloc !12
  %103 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_andnot\0A1:\09ldrex\09$0, [$4]\0A\09bic\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %102, ptr %102, i32 32, ptr elementtype(i32) %102) #9, !srcloc !18
  tail call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !19
  %104 = load volatile i32, ptr %102, align 4
  %105 = and i32 %104, 2048
  %106 = icmp eq i32 %105, 0
  br i1 %106, label %108, label %107

107:                                              ; preds = %101
  tail call void @wake_up_bit(ptr noundef %102, i32 noundef 5) #9
  br label %108

108:                                              ; preds = %107, %101, %98
  tail call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !17
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %6) #9, !srcloc !12
  %109 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_andnot\0A1:\09ldrex\09$0, [$4]\0A\09bic\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %6, ptr %6, i32 32, ptr elementtype(i32) %6) #9, !srcloc !18
  tail call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !19
  %110 = load volatile i32, ptr %6, align 4
  %111 = and i32 %110, 2048
  %112 = icmp eq i32 %111, 0
  br i1 %112, label %114, label %113

113:                                              ; preds = %108
  tail call void @wake_up_bit(ptr noundef %6, i32 noundef 5) #9
  br label %114

114:                                              ; preds = %113, %108, %95, %1
  %115 = phi i32 [ %2, %1 ], [ 0, %108 ], [ 0, %113 ], [ %96, %95 ]
  ret i32 %115
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @nfs_page_group_lock(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.nfs_page, ptr %0, i32 0, i32 8
  %3 = tail call i32 @_test_and_set_bit(i32 noundef 5, ptr noundef %2) #9
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %11, label %5

5:                                                ; preds = %1
  tail call void @_set_bit(i32 noundef 11, ptr noundef %2) #9
  tail call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !21
  %6 = tail call i32 @_test_and_set_bit(i32 noundef 5, ptr noundef %2) #9
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %11, label %8

8:                                                ; preds = %5
  %9 = tail call i32 @out_of_line_wait_on_bit_lock(ptr noundef %2, i32 noundef 5, ptr noundef nonnull @bit_wait, i32 noundef 2) #9
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %24

11:                                               ; preds = %8, %5, %1
  %12 = getelementptr inbounds %struct.nfs_page, ptr %0, i32 0, i32 11
  %13 = load ptr, ptr %12, align 4
  %14 = icmp eq ptr %13, %0
  br i1 %14, label %24, label %15

15:                                               ; preds = %11
  %16 = getelementptr inbounds %struct.nfs_page, ptr %13, i32 0, i32 8
  %17 = tail call i32 @_test_and_set_bit(i32 noundef 5, ptr noundef %16) #9
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %24, label %19

19:                                               ; preds = %15
  tail call void @_set_bit(i32 noundef 11, ptr noundef %16) #9
  tail call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !21
  %20 = tail call i32 @_test_and_set_bit(i32 noundef 5, ptr noundef %16) #9
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %24, label %22

22:                                               ; preds = %19
  %23 = tail call i32 @out_of_line_wait_on_bit_lock(ptr noundef %16, i32 noundef 5, ptr noundef nonnull @bit_wait, i32 noundef 2) #9
  br label %24

24:                                               ; preds = %22, %19, %15, %11, %8
  %25 = phi i32 [ 0, %11 ], [ %9, %8 ], [ 0, %15 ], [ %23, %22 ], [ 0, %19 ]
  ret i32 %25
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @nfs_page_group_unlock(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.nfs_page, ptr %0, i32 0, i32 11
  %3 = load ptr, ptr %2, align 4
  %4 = icmp eq ptr %3, %0
  br i1 %4, label %12, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.nfs_page, ptr %3, i32 0, i32 8
  tail call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !17
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %6) #9, !srcloc !12
  %7 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_andnot\0A1:\09ldrex\09$0, [$4]\0A\09bic\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %6, ptr %6, i32 32, ptr elementtype(i32) %6) #9, !srcloc !18
  tail call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !19
  %8 = load volatile i32, ptr %6, align 4
  %9 = and i32 %8, 2048
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %12, label %11

11:                                               ; preds = %5
  tail call void @wake_up_bit(ptr noundef %6, i32 noundef 5) #9
  br label %12

12:                                               ; preds = %11, %5, %1
  %13 = getelementptr inbounds %struct.nfs_page, ptr %0, i32 0, i32 8
  tail call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !17
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %13) #9, !srcloc !12
  %14 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_andnot\0A1:\09ldrex\09$0, [$4]\0A\09bic\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %13, ptr %13, i32 32, ptr elementtype(i32) %13) #9, !srcloc !18
  tail call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !19
  %15 = load volatile i32, ptr %13, align 4
  %16 = and i32 %15, 2048
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %19, label %18

18:                                               ; preds = %12
  tail call void @wake_up_bit(ptr noundef %13, i32 noundef 5) #9
  br label %19

19:                                               ; preds = %18, %12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @nfs_page_set_headlock(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.nfs_page, ptr %0, i32 0, i32 8
  %3 = tail call i32 @_test_and_set_bit(i32 noundef 5, ptr noundef %2) #9
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %10, label %5

5:                                                ; preds = %1
  tail call void @_set_bit(i32 noundef 11, ptr noundef %2) #9
  tail call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !21
  %6 = tail call i32 @_test_and_set_bit(i32 noundef 5, ptr noundef %2) #9
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %10, label %8

8:                                                ; preds = %5
  %9 = tail call i32 @out_of_line_wait_on_bit_lock(ptr noundef %2, i32 noundef 5, ptr noundef nonnull @bit_wait, i32 noundef 2) #9
  br label %10

10:                                               ; preds = %8, %5, %1
  %11 = phi i32 [ 0, %1 ], [ %9, %8 ], [ 0, %5 ]
  ret i32 %11
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @nfs_page_clear_headlock(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.nfs_page, ptr %0, i32 0, i32 8
  tail call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !17
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %2) #9, !srcloc !12
  %3 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_andnot\0A1:\09ldrex\09$0, [$4]\0A\09bic\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %2, ptr %2, i32 32, ptr elementtype(i32) %2) #9, !srcloc !18
  tail call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !19
  %4 = load volatile i32, ptr %2, align 4
  %5 = and i32 %4, 2048
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %8, label %7

7:                                                ; preds = %1
  tail call void @wake_up_bit(ptr noundef %2, i32 noundef 5) #9
  br label %8

8:                                                ; preds = %7, %1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @wake_up_bit(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local zeroext i1 @nfs_page_group_sync_on_bit(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = tail call i32 @nfs_page_group_lock(ptr noundef %0)
  %4 = getelementptr inbounds %struct.nfs_page, ptr %0, i32 0, i32 11
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.nfs_page, ptr %5, i32 0, i32 8
  %7 = load volatile i32, ptr %6, align 4
  %8 = and i32 %7, 32
  %9 = icmp eq i32 %8, 0
  %10 = load i1, ptr @nfs_page_group_sync_on_bit_locked.__already_done, align 1
  %11 = xor i1 %10, true
  %12 = select i1 %9, i1 %11, i1 false
  br i1 %12, label %13, label %14, !prof !14

13:                                               ; preds = %2
  store i1 true, ptr @nfs_page_group_sync_on_bit_locked.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 324, i32 noundef 9, ptr noundef null) #9
  br label %14

14:                                               ; preds = %13, %2
  %15 = getelementptr inbounds %struct.nfs_page, ptr %0, i32 0, i32 8
  %16 = tail call i32 @_test_and_set_bit(i32 noundef %1, ptr noundef %15) #9
  %17 = icmp ne i32 %16, 0
  %18 = load i1, ptr @nfs_page_group_sync_on_bit_locked.__already_done.8, align 1
  %19 = xor i1 %18, true
  %20 = select i1 %17, i1 %19, i1 false
  br i1 %20, label %21, label %22, !prof !14

21:                                               ; preds = %14
  store i1 true, ptr @nfs_page_group_sync_on_bit_locked.__already_done.8, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 325, i32 noundef 9, ptr noundef null) #9
  br label %22

22:                                               ; preds = %21, %14
  %23 = lshr i32 %1, 5
  %24 = and i32 %1, 31
  %25 = shl nuw i32 1, %24
  br label %26

26:                                               ; preds = %31, %22
  %27 = phi ptr [ %0, %22 ], [ %29, %31 ]
  %28 = getelementptr inbounds %struct.nfs_page, ptr %27, i32 0, i32 10
  %29 = load ptr, ptr %28, align 4
  %30 = icmp eq ptr %29, %0
  br i1 %30, label %37, label %31

31:                                               ; preds = %26
  %32 = getelementptr inbounds %struct.nfs_page, ptr %29, i32 0, i32 8
  %33 = getelementptr i32, ptr %32, i32 %23
  %34 = load volatile i32, ptr %33, align 4
  %35 = and i32 %34, %25
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %43, label %26

37:                                               ; preds = %37, %26
  %38 = phi ptr [ %41, %37 ], [ %0, %26 ]
  %39 = getelementptr inbounds %struct.nfs_page, ptr %38, i32 0, i32 8
  tail call void @_clear_bit(i32 noundef %1, ptr noundef %39) #9
  %40 = getelementptr inbounds %struct.nfs_page, ptr %38, i32 0, i32 10
  %41 = load ptr, ptr %40, align 4
  %42 = icmp eq ptr %41, %0
  br i1 %42, label %43, label %37

43:                                               ; preds = %37, %31
  %44 = load ptr, ptr %4, align 4
  %45 = icmp eq ptr %44, %0
  br i1 %45, label %53, label %46

46:                                               ; preds = %43
  %47 = getelementptr inbounds %struct.nfs_page, ptr %44, i32 0, i32 8
  tail call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !17
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %47) #9, !srcloc !12
  %48 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_andnot\0A1:\09ldrex\09$0, [$4]\0A\09bic\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %47, ptr %47, i32 32, ptr elementtype(i32) %47) #9, !srcloc !18
  tail call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !19
  %49 = load volatile i32, ptr %47, align 4
  %50 = and i32 %49, 2048
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %53, label %52

52:                                               ; preds = %46
  tail call void @wake_up_bit(ptr noundef %47, i32 noundef 5) #9
  br label %53

53:                                               ; preds = %52, %46, %43
  tail call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !17
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %15) #9, !srcloc !12
  %54 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_andnot\0A1:\09ldrex\09$0, [$4]\0A\09bic\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %15, ptr %15, i32 32, ptr elementtype(i32) %15) #9, !srcloc !18
  tail call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !19
  %55 = load volatile i32, ptr %15, align 4
  %56 = and i32 %55, 2048
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %59, label %58

58:                                               ; preds = %53
  tail call void @wake_up_bit(ptr noundef %15, i32 noundef 5) #9
  br label %59

59:                                               ; preds = %58, %53
  ret i1 %30
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @nfs_create_request(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #0 {
  %5 = tail call ptr @nfs_get_lock_context(ptr noundef %0) #9
  %6 = icmp ugt ptr %5, inttoptr (i32 -4096 to ptr)
  br i1 %6, label %20, label %7

7:                                                ; preds = %4
  %8 = tail call fastcc ptr @__nfs_create_request(ptr noundef %5, ptr noundef %1, i32 noundef %2, i32 noundef %2, i32 noundef %3)
  %9 = icmp ugt ptr %8, inttoptr (i32 -4096 to ptr)
  br i1 %9, label %19, label %10

10:                                               ; preds = %7
  %11 = icmp eq ptr %8, null
  %12 = load i1, ptr @nfs_page_group_init.__already_done, align 1
  %13 = xor i1 %12, true
  %14 = select i1 %11, i1 %13, i1 false
  br i1 %14, label %15, label %16, !prof !14

15:                                               ; preds = %10
  store i1 true, ptr @nfs_page_group_init.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 371, i32 noundef 9, ptr noundef null) #9
  br label %16

16:                                               ; preds = %15, %10
  %17 = getelementptr inbounds %struct.nfs_page, ptr %8, i32 0, i32 11
  store ptr %8, ptr %17, align 4
  %18 = getelementptr inbounds %struct.nfs_page, ptr %8, i32 0, i32 10
  store ptr %8, ptr %18, align 4
  br label %19

19:                                               ; preds = %16, %7
  tail call void @nfs_put_lock_context(ptr noundef %5) #9
  br label %20

20:                                               ; preds = %19, %4
  %21 = phi ptr [ %8, %19 ], [ %5, %4 ]
  ret ptr %21
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @nfs_get_lock_context(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc ptr @__nfs_create_request(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) unnamed_addr #0 {
  %6 = getelementptr inbounds %struct.nfs_lock_context, ptr %0, i32 0, i32 2
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.nfs_open_context, ptr %7, i32 0, i32 7
  %9 = load volatile i32, ptr %8, align 4
  %10 = and i32 %9, 4
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %78

12:                                               ; preds = %5
  %13 = load ptr, ptr @nfs_page_cachep, align 4
  %14 = tail call noalias align 8 ptr @kmem_cache_alloc(ptr noundef %13, i32 noundef 3520) #9
  %15 = icmp eq ptr %14, null
  br i1 %15, label %78, label %16

16:                                               ; preds = %12
  store volatile ptr %14, ptr %14, align 8
  %17 = getelementptr inbounds %struct.list_head, ptr %14, i32 0, i32 1
  store ptr %14, ptr %17, align 4
  %18 = getelementptr inbounds %struct.nfs_page, ptr %14, i32 0, i32 2
  store ptr %0, ptr %18, align 4
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %0) #9, !srcloc !12
  %19 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %0, ptr %0, i32 1, ptr elementtype(i32) %0) #9, !srcloc !13
  %20 = extractvalue { i32, i32, i32 } %19, 0
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %26, label %22, !prof !14

22:                                               ; preds = %16
  %23 = add i32 %20, 1
  %24 = or i32 %23, %20
  %25 = icmp sgt i32 %24, -1
  br i1 %25, label %28, label %26, !prof !15

26:                                               ; preds = %22, %16
  %27 = phi i32 [ 2, %16 ], [ 1, %22 ]
  tail call void @refcount_warn_saturate(ptr noundef %0, i32 noundef %27) #9
  br label %28

28:                                               ; preds = %26, %22
  %29 = getelementptr inbounds %struct.nfs_lock_context, ptr %0, i32 0, i32 4
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %29) #9, !srcloc !12
  %30 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %29, ptr %29, i32 1, ptr elementtype(i32) %29) #9, !srcloc !22
  %31 = getelementptr inbounds %struct.nfs_page, ptr %14, i32 0, i32 1
  store ptr %1, ptr %31, align 8
  %32 = icmp eq ptr %1, null
  br i1 %32, label %72, label %33

33:                                               ; preds = %28
  %34 = getelementptr inbounds %struct.page, ptr %1, i32 0, i32 1
  %35 = load volatile i32, ptr %34, align 4
  %36 = and i32 %35, 1
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %40, label %38, !prof !15

38:                                               ; preds = %33
  %39 = add i32 %35, -1
  br label %42

40:                                               ; preds = %33
  %41 = ptrtoint ptr %1 to i32
  br label %42

42:                                               ; preds = %40, %38
  %43 = phi i32 [ %39, %38 ], [ %41, %40 ]
  %44 = inttoptr i32 %43 to ptr
  %45 = load volatile i32, ptr %44, align 4
  %46 = and i32 %45, 524288
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %54, label %48

48:                                               ; preds = %42
  %49 = load volatile i32, ptr %44, align 4
  %50 = and i32 %49, 1024
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %54, label %52, !prof !15

52:                                               ; preds = %48
  %53 = tail call i32 @__page_file_index(ptr noundef nonnull %1) #9
  br label %57

54:                                               ; preds = %48, %42
  %55 = getelementptr inbounds %struct.page, ptr %1, i32 0, i32 1, i32 0, i32 2
  %56 = load i32, ptr %55, align 4
  br label %57

57:                                               ; preds = %54, %52
  %58 = phi i32 [ %53, %52 ], [ %56, %54 ]
  %59 = getelementptr inbounds %struct.nfs_page, ptr %14, i32 0, i32 3
  store i32 %58, ptr %59, align 8
  %60 = load volatile i32, ptr %34, align 4
  %61 = and i32 %60, 1
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %65, label %63, !prof !15

63:                                               ; preds = %57
  %64 = add i32 %60, -1
  br label %67

65:                                               ; preds = %57
  %66 = ptrtoint ptr %1 to i32
  br label %67

67:                                               ; preds = %65, %63
  %68 = phi i32 [ %64, %63 ], [ %66, %65 ]
  %69 = inttoptr i32 %68 to ptr
  %70 = getelementptr inbounds %struct.page, ptr %69, i32 0, i32 3
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %70) #9, !srcloc !12
  %71 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %70, ptr %70, i32 1, ptr elementtype(i32) %70) #9, !srcloc !22
  br label %72

72:                                               ; preds = %67, %28
  %73 = getelementptr inbounds %struct.nfs_page, ptr %14, i32 0, i32 4
  store i32 %3, ptr %73, align 4
  %74 = getelementptr inbounds %struct.nfs_page, ptr %14, i32 0, i32 5
  store i32 %2, ptr %74, align 8
  %75 = getelementptr inbounds %struct.nfs_page, ptr %14, i32 0, i32 6
  store i32 %4, ptr %75, align 4
  %76 = getelementptr inbounds %struct.nfs_page, ptr %14, i32 0, i32 7
  store volatile i32 1, ptr %76, align 8
  %77 = getelementptr inbounds %struct.nfs_page, ptr %14, i32 0, i32 12
  store i16 0, ptr %77, align 8
  br label %78

78:                                               ; preds = %72, %12, %5
  %79 = phi ptr [ %14, %72 ], [ inttoptr (i32 -9 to ptr), %5 ], [ inttoptr (i32 -12 to ptr), %12 ]
  ret ptr %79
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @nfs_put_lock_context(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @nfs_unlock_request(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.nfs_page, ptr %0, i32 0, i32 8
  tail call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !17
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %2) #9, !srcloc !12
  %3 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_andnot\0A1:\09ldrex\09$0, [$4]\0A\09bic\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %2, ptr %2, i32 1, ptr elementtype(i32) %2) #9, !srcloc !18
  tail call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !20
  %4 = load volatile i32, ptr %2, align 4
  %5 = and i32 %4, 4096
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %8, label %7

7:                                                ; preds = %1
  tail call void @wake_up_bit(ptr noundef %2, i32 noundef 0) #9
  br label %8

8:                                                ; preds = %7, %1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @nfs_unlock_and_release_request(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.nfs_page, ptr %0, i32 0, i32 8
  tail call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !17
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %2) #9, !srcloc !12
  %3 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_andnot\0A1:\09ldrex\09$0, [$4]\0A\09bic\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %2, ptr %2, i32 1, ptr elementtype(i32) %2) #9, !srcloc !18
  tail call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !20
  %4 = load volatile i32, ptr %2, align 4
  %5 = and i32 %4, 4096
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %8, label %7

7:                                                ; preds = %1
  tail call void @wake_up_bit(ptr noundef %2, i32 noundef 0) #9
  br label %8

8:                                                ; preds = %7, %1
  tail call void @nfs_release_request(ptr noundef %0)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @nfs_release_request(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.nfs_page, ptr %0, i32 0, i32 7
  tail call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !23
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %2) #9, !srcloc !12
  %3 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %2, ptr %2, i32 1, ptr elementtype(i32) %2) #9, !srcloc !24
  %4 = extractvalue { i32, i32, i32 } %3, 0
  %5 = icmp eq i32 %4, 1
  br i1 %5, label %8, label %6

6:                                                ; preds = %1
  %7 = icmp sgt i32 %4, 0
  br i1 %7, label %34, label %32, !prof !15

8:                                                ; preds = %1
  tail call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !25
  br label %9

9:                                                ; preds = %31, %8
  %10 = phi ptr [ %2, %8 ], [ %24, %31 ]
  %11 = getelementptr i8, ptr %10, i32 -32
  %12 = getelementptr i8, ptr %10, i32 20
  %13 = load ptr, ptr %12, align 4
  %14 = tail call zeroext i1 @nfs_page_group_sync_on_bit(ptr noundef %11, i32 noundef 6) #9
  br i1 %14, label %15, label %21

15:                                               ; preds = %15, %9
  %16 = phi ptr [ %18, %15 ], [ %11, %9 ]
  %17 = getelementptr inbounds %struct.nfs_page, ptr %16, i32 0, i32 10
  %18 = load ptr, ptr %17, align 4
  store ptr %16, ptr %17, align 4
  %19 = getelementptr inbounds %struct.nfs_page, ptr %16, i32 0, i32 11
  store ptr %16, ptr %19, align 4
  tail call void @nfs_free_request(ptr noundef %16) #9
  %20 = icmp eq ptr %18, %11
  br i1 %20, label %21, label %15

21:                                               ; preds = %15, %9
  %22 = icmp eq ptr %13, %11
  br i1 %22, label %34, label %23

23:                                               ; preds = %21
  %24 = getelementptr inbounds %struct.nfs_page, ptr %13, i32 0, i32 7
  tail call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !23
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %24) #9, !srcloc !12
  %25 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %24, ptr %24, i32 1, ptr elementtype(i32) %24) #9, !srcloc !24
  %26 = extractvalue { i32, i32, i32 } %25, 0
  %27 = icmp eq i32 %26, 1
  br i1 %27, label %31, label %28

28:                                               ; preds = %23
  %29 = extractvalue { i32, i32, i32 } %25, 0
  %30 = icmp sgt i32 %29, 0
  br i1 %30, label %34, label %32, !prof !15

31:                                               ; preds = %23
  tail call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !25
  br label %9

32:                                               ; preds = %28, %6
  %33 = phi ptr [ %2, %6 ], [ %24, %28 ]
  tail call void @refcount_warn_saturate(ptr noundef %33, i32 noundef 3) #9
  br label %34

34:                                               ; preds = %32, %28, %21, %6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @nfs_free_request(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.nfs_page, ptr %0, i32 0, i32 10
  %3 = load ptr, ptr %2, align 4
  %4 = icmp ne ptr %3, %0
  %5 = load i1, ptr @nfs_free_request.__already_done, align 1
  %6 = xor i1 %5, true
  %7 = select i1 %4, i1 %6, i1 false
  br i1 %7, label %8, label %9, !prof !14

8:                                                ; preds = %1
  store i1 true, ptr @nfs_free_request.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 581, i32 noundef 9, ptr noundef null) #9
  br label %9

9:                                                ; preds = %8, %1
  %10 = getelementptr inbounds %struct.nfs_page, ptr %0, i32 0, i32 8
  %11 = load volatile i32, ptr %10, align 4
  %12 = and i32 %11, 64
  %13 = icmp ne i32 %12, 0
  %14 = load i1, ptr @nfs_free_request.__already_done.1, align 1
  %15 = xor i1 %14, true
  %16 = select i1 %13, i1 %15, i1 false
  br i1 %16, label %17, label %18, !prof !14

17:                                               ; preds = %9
  store i1 true, ptr @nfs_free_request.__already_done.1, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 584, i32 noundef 9, ptr noundef null) #9
  br label %18

18:                                               ; preds = %17, %9
  %19 = load volatile i32, ptr %10, align 4
  %20 = and i32 %19, 128
  %21 = icmp ne i32 %20, 0
  %22 = load i1, ptr @nfs_free_request.__already_done.2, align 1
  %23 = xor i1 %22, true
  %24 = select i1 %21, i1 %23, i1 false
  br i1 %24, label %25, label %26, !prof !14

25:                                               ; preds = %18
  store i1 true, ptr @nfs_free_request.__already_done.2, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 585, i32 noundef 9, ptr noundef null) #9
  br label %26

26:                                               ; preds = %25, %18
  %27 = load volatile i32, ptr %10, align 4
  %28 = and i32 %27, 256
  %29 = icmp ne i32 %28, 0
  %30 = load i1, ptr @nfs_free_request.__already_done.3, align 1
  %31 = xor i1 %30, true
  %32 = select i1 %29, i1 %31, i1 false
  br i1 %32, label %33, label %34, !prof !14

33:                                               ; preds = %26
  store i1 true, ptr @nfs_free_request.__already_done.3, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 586, i32 noundef 9, ptr noundef null) #9
  br label %34

34:                                               ; preds = %33, %26
  %35 = load volatile i32, ptr %10, align 4
  %36 = and i32 %35, 512
  %37 = icmp ne i32 %36, 0
  %38 = load i1, ptr @nfs_free_request.__already_done.4, align 1
  %39 = xor i1 %38, true
  %40 = select i1 %37, i1 %39, i1 false
  br i1 %40, label %41, label %42, !prof !14

41:                                               ; preds = %34
  store i1 true, ptr @nfs_free_request.__already_done.4, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 587, i32 noundef 9, ptr noundef null) #9
  br label %42

42:                                               ; preds = %41, %34
  %43 = load volatile i32, ptr %10, align 4
  %44 = and i32 %43, 1024
  %45 = icmp ne i32 %44, 0
  %46 = load i1, ptr @nfs_free_request.__already_done.5, align 1
  %47 = xor i1 %46, true
  %48 = select i1 %45, i1 %47, i1 false
  br i1 %48, label %49, label %50, !prof !14

49:                                               ; preds = %42
  store i1 true, ptr @nfs_free_request.__already_done.5, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 588, i32 noundef 9, ptr noundef null) #9
  br label %50

50:                                               ; preds = %49, %42
  %51 = getelementptr inbounds %struct.nfs_page, ptr %0, i32 0, i32 1
  %52 = load ptr, ptr %51, align 4
  %53 = getelementptr inbounds %struct.nfs_page, ptr %0, i32 0, i32 2
  %54 = load ptr, ptr %53, align 4
  %55 = icmp eq ptr %52, null
  br i1 %55, label %74, label %56

56:                                               ; preds = %50
  %57 = getelementptr inbounds %struct.page, ptr %52, i32 0, i32 1
  %58 = load volatile i32, ptr %57, align 4
  %59 = and i32 %58, 1
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %63, label %61, !prof !15

61:                                               ; preds = %56
  %62 = add i32 %58, -1
  br label %65

63:                                               ; preds = %56
  %64 = ptrtoint ptr %52 to i32
  br label %65

65:                                               ; preds = %63, %61
  %66 = phi i32 [ %62, %61 ], [ %64, %63 ]
  %67 = inttoptr i32 %66 to ptr
  %68 = getelementptr inbounds %struct.page, ptr %67, i32 0, i32 3
  tail call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !26
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %68) #9, !srcloc !12
  %69 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %68, ptr %68, i32 1, ptr elementtype(i32) %68) #9, !srcloc !27
  %70 = extractvalue { i32, i32 } %69, 0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !28
  %71 = icmp eq i32 %70, 0
  br i1 %71, label %72, label %73

72:                                               ; preds = %65
  tail call void @__put_page(ptr noundef %67) #9
  br label %73

73:                                               ; preds = %72, %65
  store ptr null, ptr %51, align 4
  br label %74

74:                                               ; preds = %73, %50
  %75 = icmp eq ptr %54, null
  br i1 %75, label %99, label %76

76:                                               ; preds = %74
  %77 = getelementptr inbounds %struct.nfs_lock_context, ptr %54, i32 0, i32 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !26
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %77) #9, !srcloc !12
  %78 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %77, ptr %77, i32 1, ptr elementtype(i32) %77) #9, !srcloc !27
  %79 = extractvalue { i32, i32 } %78, 0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !28
  %80 = icmp eq i32 %79, 0
  br i1 %80, label %81, label %98

81:                                               ; preds = %76
  tail call void @wake_up_var(ptr noundef %77) #9
  %82 = getelementptr inbounds %struct.nfs_lock_context, ptr %54, i32 0, i32 2
  %83 = load ptr, ptr %82, align 4
  %84 = getelementptr inbounds %struct.nfs_open_context, ptr %83, i32 0, i32 7
  %85 = load volatile i32, ptr %84, align 4
  %86 = and i32 %85, 8
  %87 = icmp eq i32 %86, 0
  br i1 %87, label %98, label %88

88:                                               ; preds = %81
  %89 = getelementptr inbounds %struct.nfs_open_context, ptr %83, i32 0, i32 2
  %90 = load ptr, ptr %89, align 4
  %91 = getelementptr inbounds %struct.dentry, ptr %90, i32 0, i32 5
  %92 = load ptr, ptr %91, align 8
  %93 = getelementptr inbounds %struct.inode, ptr %92, i32 0, i32 8
  %94 = load ptr, ptr %93, align 4
  %95 = getelementptr inbounds %struct.super_block, ptr %94, i32 0, i32 27
  %96 = load ptr, ptr %95, align 4
  %97 = getelementptr inbounds %struct.nfs_server, ptr %96, i32 0, i32 63
  tail call void @rpc_wake_up(ptr noundef %97) #9
  br label %98

98:                                               ; preds = %88, %81, %76
  tail call void @nfs_put_lock_context(ptr noundef nonnull %54) #9
  store ptr null, ptr %53, align 4
  br label %99

99:                                               ; preds = %98, %74
  %100 = load ptr, ptr @nfs_page_cachep, align 4
  tail call void @kmem_cache_free(ptr noundef %100, ptr noundef %0) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @nfs_generic_pg_test(ptr noundef %0, ptr nocapture readnone %1, ptr nocapture noundef readonly %2) #0 {
  %4 = getelementptr inbounds %struct.nfs_pageio_descriptor, ptr %0, i32 0, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.nfs_pageio_ops, ptr %5, i32 0, i32 5
  %7 = load ptr, ptr %6, align 4
  %8 = icmp eq ptr %7, null
  br i1 %8, label %13, label %9

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.nfs_pageio_descriptor, ptr %0, i32 0, i32 15
  %11 = load i32, ptr %10, align 4
  %12 = tail call ptr %7(ptr noundef %0, i32 noundef %11) #9
  br label %16

13:                                               ; preds = %3
  %14 = getelementptr inbounds %struct.nfs_pageio_descriptor, ptr %0, i32 0, i32 12
  %15 = load ptr, ptr %14, align 4
  br label %16

16:                                               ; preds = %13, %9
  %17 = phi ptr [ %12, %9 ], [ %15, %13 ]
  %18 = getelementptr inbounds %struct.nfs_pgio_mirror, ptr %17, i32 0, i32 2
  %19 = load i32, ptr %18, align 4
  %20 = getelementptr inbounds %struct.nfs_pgio_mirror, ptr %17, i32 0, i32 3
  %21 = load i32, ptr %20, align 4
  %22 = icmp ult i32 %21, %19
  br i1 %22, label %23, label %26

23:                                               ; preds = %16
  %24 = load i1, ptr @nfs_generic_pg_test.__already_done, align 1
  br i1 %24, label %35, label %25, !prof !15

25:                                               ; preds = %23
  store i1 true, ptr @nfs_generic_pg_test.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 637, i32 noundef 9, ptr noundef null) #9
  br label %35

26:                                               ; preds = %16
  %27 = getelementptr inbounds %struct.nfs_page, ptr %2, i32 0, i32 6
  %28 = load i32, ptr %27, align 4
  %29 = add i32 %28, %19
  %30 = and i32 %29, -4096
  %31 = icmp ugt i32 %30, 4194304
  br i1 %31, label %35, label %32

32:                                               ; preds = %26
  %33 = sub i32 %21, %19
  %34 = tail call i32 @llvm.umin.i32(i32 %33, i32 %28)
  br label %35

35:                                               ; preds = %32, %26, %25, %23
  %36 = phi i32 [ %34, %32 ], [ 0, %25 ], [ 0, %23 ], [ 0, %26 ]
  ret i32 %36
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @nfs_pgio_header_alloc(ptr noundef %0) #0 {
  %2 = load ptr, ptr %0, align 4
  %3 = tail call ptr %2() #9
  %4 = icmp eq ptr %3, null
  br i1 %4, label %9, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.nfs_pgio_header, ptr %3, i32 0, i32 2
  store volatile ptr %6, ptr %6, align 4
  %7 = getelementptr inbounds %struct.nfs_pgio_header, ptr %3, i32 0, i32 2, i32 1
  store ptr %6, ptr %7, align 4
  %8 = getelementptr inbounds %struct.nfs_pgio_header, ptr %3, i32 0, i32 11
  store ptr %0, ptr %8, align 4
  br label %9

9:                                                ; preds = %5, %1
  ret ptr %3
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @nfs_pgio_header_free(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.nfs_pgio_header, ptr %0, i32 0, i32 20, i32 2
  %3 = load ptr, ptr %2, align 4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %6, label %5

5:                                                ; preds = %1
  tail call void @put_nfs_open_context(ptr noundef nonnull %3) #9
  br label %6

6:                                                ; preds = %5, %1
  %7 = getelementptr inbounds %struct.nfs_pgio_header, ptr %0, i32 0, i32 25
  %8 = load ptr, ptr %7, align 8
  %9 = getelementptr inbounds %struct.nfs_pgio_header, ptr %0, i32 0, i32 25, i32 2
  %10 = icmp eq ptr %8, %9
  br i1 %10, label %12, label %11

11:                                               ; preds = %6
  tail call void @kfree(ptr noundef %8) #9
  br label %12

12:                                               ; preds = %11, %6
  %13 = getelementptr inbounds %struct.nfs_pgio_header, ptr %0, i32 0, i32 11
  %14 = load ptr, ptr %13, align 4
  %15 = getelementptr inbounds %struct.nfs_rw_ops, ptr %14, i32 0, i32 1
  %16 = load ptr, ptr %15, align 4
  tail call void %16(ptr noundef %0) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @nfs_initiate_pgio(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, i32 noundef %5, i32 noundef %6) #0 {
  %8 = alloca %struct.rpc_message, align 4
  %9 = alloca %struct.rpc_task_setup, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %8) #9
  %10 = getelementptr inbounds %struct.rpc_message, ptr %8, i32 0, i32 1
  %11 = getelementptr inbounds %struct.nfs_pgio_header, ptr %1, i32 0, i32 20
  store i32 0, ptr %8, align 4
  store ptr %11, ptr %10, align 4
  %12 = getelementptr inbounds %struct.rpc_message, ptr %8, i32 0, i32 2
  %13 = getelementptr inbounds %struct.nfs_pgio_header, ptr %1, i32 0, i32 21
  store ptr %13, ptr %12, align 4
  %14 = getelementptr inbounds %struct.rpc_message, ptr %8, i32 0, i32 3
  store ptr %2, ptr %14, align 4
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %9) #9
  %15 = getelementptr inbounds i8, ptr %9, i32 32
  store i32 0, ptr %15, align 4, !annotation !10
  %16 = getelementptr inbounds %struct.nfs_pgio_header, ptr %1, i32 0, i32 18
  store ptr %16, ptr %9, align 4
  %17 = getelementptr inbounds %struct.rpc_task_setup, ptr %9, i32 0, i32 1
  store ptr %0, ptr %17, align 4
  %18 = getelementptr inbounds %struct.rpc_task_setup, ptr %9, i32 0, i32 2
  store ptr null, ptr %18, align 4
  %19 = getelementptr inbounds %struct.rpc_task_setup, ptr %9, i32 0, i32 3
  store ptr null, ptr %19, align 4
  %20 = getelementptr inbounds %struct.rpc_task_setup, ptr %9, i32 0, i32 4
  store ptr %8, ptr %20, align 4
  %21 = getelementptr inbounds %struct.rpc_task_setup, ptr %9, i32 0, i32 5
  store ptr %4, ptr %21, align 4
  %22 = getelementptr inbounds %struct.rpc_task_setup, ptr %9, i32 0, i32 6
  store ptr %1, ptr %22, align 4
  %23 = getelementptr inbounds %struct.rpc_task_setup, ptr %9, i32 0, i32 7
  %24 = load ptr, ptr @nfsiod_workqueue, align 4
  store ptr %24, ptr %23, align 4
  %25 = getelementptr inbounds %struct.rpc_task_setup, ptr %9, i32 0, i32 8
  %26 = trunc i32 %6 to i16
  %27 = or i16 %26, 1
  store i16 %27, ptr %25, align 4
  %28 = getelementptr inbounds %struct.nfs_pgio_header, ptr %1, i32 0, i32 11
  %29 = load ptr, ptr %28, align 4
  %30 = getelementptr inbounds %struct.nfs_rw_ops, ptr %29, i32 0, i32 4
  %31 = load ptr, ptr %30, align 4
  call void %31(ptr noundef %1, ptr noundef nonnull %8, ptr noundef %3, ptr noundef nonnull %9, i32 noundef %5) #9
  %32 = call ptr @rpc_run_task(ptr noundef nonnull %9) #9
  %33 = icmp ugt ptr %32, inttoptr (i32 -4096 to ptr)
  br i1 %33, label %34, label %36

34:                                               ; preds = %7
  %35 = ptrtoint ptr %32 to i32
  br label %37

36:                                               ; preds = %7
  call void @rpc_put_task(ptr noundef %32) #9
  br label %37

37:                                               ; preds = %36, %34
  %38 = phi i32 [ %35, %34 ], [ 0, %36 ]
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %9) #9
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %8) #9
  ret i32 %38
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rpc_run_task(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rpc_put_task(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nofree norecurse nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @nfs_pageio_init(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, i32 noundef %5, i32 noundef %6) local_unnamed_addr #4 {
  %8 = getelementptr inbounds %struct.nfs_pageio_descriptor, ptr %0, i32 0, i32 17
  %9 = load i8, ptr %8, align 2
  %10 = and i8 %9, -2
  store i8 %10, ptr %8, align 2
  store ptr %1, ptr %0, align 4
  %11 = getelementptr inbounds %struct.nfs_pageio_descriptor, ptr %0, i32 0, i32 1
  store ptr %2, ptr %11, align 4
  %12 = getelementptr inbounds %struct.nfs_pageio_descriptor, ptr %0, i32 0, i32 6
  store ptr %3, ptr %12, align 4
  %13 = getelementptr inbounds %struct.nfs_pageio_descriptor, ptr %0, i32 0, i32 2
  store ptr %4, ptr %13, align 4
  %14 = getelementptr inbounds %struct.nfs_pageio_descriptor, ptr %0, i32 0, i32 3
  store i32 %6, ptr %14, align 4
  %15 = getelementptr inbounds %struct.nfs_pageio_descriptor, ptr %0, i32 0, i32 4
  store i32 0, ptr %15, align 4
  %16 = getelementptr inbounds %struct.nfs_pageio_descriptor, ptr %0, i32 0, i32 7
  store ptr null, ptr %16, align 4
  %17 = getelementptr inbounds %struct.nfs_pageio_descriptor, ptr %0, i32 0, i32 8
  store ptr null, ptr %17, align 4
  %18 = getelementptr inbounds %struct.nfs_pageio_descriptor, ptr %0, i32 0, i32 9
  store ptr null, ptr %18, align 4
  %19 = getelementptr inbounds %struct.nfs_pageio_descriptor, ptr %0, i32 0, i32 10
  store i32 %5, ptr %19, align 4
  %20 = getelementptr inbounds %struct.nfs_pageio_descriptor, ptr %0, i32 0, i32 11
  store i32 1, ptr %20, align 4
  %21 = getelementptr inbounds %struct.nfs_pageio_descriptor, ptr %0, i32 0, i32 15
  store i32 0, ptr %21, align 4
  %22 = getelementptr inbounds %struct.nfs_pageio_descriptor, ptr %0, i32 0, i32 14
  store ptr null, ptr %22, align 4
  %23 = getelementptr inbounds %struct.nfs_pageio_descriptor, ptr %0, i32 0, i32 13
  %24 = getelementptr inbounds %struct.nfs_pageio_descriptor, ptr %0, i32 0, i32 12
  store ptr %23, ptr %24, align 4
  store volatile ptr %23, ptr %23, align 4
  %25 = getelementptr inbounds %struct.nfs_pageio_descriptor, ptr %0, i32 0, i32 13, i32 0, i32 0, i32 1
  store ptr %23, ptr %25, align 4
  %26 = getelementptr inbounds %struct.nfs_pageio_descriptor, ptr %0, i32 0, i32 13, i32 0, i32 1
  store i32 0, ptr %26, align 4
  %27 = getelementptr inbounds %struct.nfs_pageio_descriptor, ptr %0, i32 0, i32 13, i32 0, i32 2
  store i32 0, ptr %27, align 4
  %28 = getelementptr inbounds %struct.nfs_pageio_descriptor, ptr %0, i32 0, i32 13, i32 0, i32 3
  store i32 %5, ptr %28, align 4
  %29 = getelementptr inbounds %struct.nfs_pageio_descriptor, ptr %0, i32 0, i32 13, i32 0, i32 4
  store i32 0, ptr %29, align 4
  %30 = getelementptr inbounds %struct.nfs_pageio_descriptor, ptr %0, i32 0, i32 13, i32 0, i32 5
  %31 = load i8, ptr %30, align 4
  %32 = and i8 %31, -2
  store i8 %32, ptr %30, align 4
  %33 = getelementptr inbounds %struct.nfs_pageio_descriptor, ptr %0, i32 0, i32 16
  store i16 0, ptr %33, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @nfs_generic_pgio(ptr noundef %0, ptr noundef %1) #0 {
  %3 = alloca %struct.nfs_commit_info, align 4
  %4 = getelementptr inbounds %struct.nfs_pageio_descriptor, ptr %0, i32 0, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.nfs_pageio_ops, ptr %5, i32 0, i32 5
  %7 = load ptr, ptr %6, align 4
  %8 = icmp eq ptr %7, null
  br i1 %8, label %13, label %9

9:                                                ; preds = %2
  %10 = getelementptr inbounds %struct.nfs_pageio_descriptor, ptr %0, i32 0, i32 15
  %11 = load i32, ptr %10, align 4
  %12 = tail call ptr %7(ptr noundef %0, i32 noundef %11) #9
  br label %16

13:                                               ; preds = %2
  %14 = getelementptr inbounds %struct.nfs_pageio_descriptor, ptr %0, i32 0, i32 12
  %15 = load ptr, ptr %14, align 4
  br label %16

16:                                               ; preds = %13, %9
  %17 = phi ptr [ %12, %9 ], [ %15, %13 ]
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %3) #9
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(20) %3, i8 0, i32 20, i1 false), !annotation !10
  %18 = getelementptr inbounds %struct.nfs_pgio_header, ptr %1, i32 0, i32 25
  %19 = getelementptr inbounds %struct.nfs_pgio_mirror, ptr %17, i32 0, i32 4
  %20 = load i32, ptr %19, align 4
  %21 = getelementptr inbounds %struct.nfs_pgio_mirror, ptr %17, i32 0, i32 2
  %22 = load i32, ptr %21, align 4
  %23 = add i32 %20, 4095
  %24 = add i32 %23, %22
  %25 = lshr i32 %24, 12
  %26 = getelementptr inbounds %struct.nfs_pgio_header, ptr %1, i32 0, i32 25, i32 1
  store i32 %25, ptr %26, align 4
  %27 = icmp ult i32 %24, 36864
  br i1 %27, label %28, label %30

28:                                               ; preds = %16
  %29 = getelementptr inbounds %struct.nfs_pgio_header, ptr %1, i32 0, i32 25, i32 2
  store ptr %29, ptr %18, align 4
  br label %41

30:                                               ; preds = %16
  %31 = shl nuw nsw i32 %25, 2
  %32 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %31, i32 noundef 3520) #10
  store ptr %32, ptr %18, align 4
  %33 = icmp eq ptr %32, null
  br i1 %33, label %34, label %41

34:                                               ; preds = %30
  store i32 0, ptr %26, align 4
  %35 = getelementptr inbounds %struct.nfs_pgio_header, ptr %1, i32 0, i32 17
  tail call void @_set_bit(i32 noundef 2, ptr noundef %35) #9
  %36 = getelementptr inbounds %struct.nfs_pgio_header, ptr %1, i32 0, i32 10
  %37 = load ptr, ptr %36, align 8
  %38 = getelementptr inbounds %struct.nfs_pgio_completion_ops, ptr %37, i32 0, i32 2
  %39 = load ptr, ptr %38, align 4
  tail call void %39(ptr noundef %1) #9
  %40 = getelementptr inbounds %struct.nfs_pageio_descriptor, ptr %0, i32 0, i32 4
  store i32 -12, ptr %40, align 4
  br label %157

41:                                               ; preds = %30, %28
  %42 = load ptr, ptr %0, align 4
  %43 = getelementptr inbounds %struct.nfs_pageio_descriptor, ptr %0, i32 0, i32 9
  %44 = load ptr, ptr %43, align 4
  call void @nfs_init_cinfo(ptr noundef nonnull %3, ptr noundef %42, ptr noundef %44) #9
  %45 = load ptr, ptr %18, align 8
  %46 = load volatile ptr, ptr %17, align 4
  %47 = icmp eq ptr %46, %17
  br i1 %47, label %79, label %48

48:                                               ; preds = %41
  %49 = getelementptr inbounds %struct.nfs_pgio_header, ptr %1, i32 0, i32 2
  %50 = getelementptr inbounds %struct.nfs_pgio_header, ptr %1, i32 0, i32 2, i32 1
  br label %51

51:                                               ; preds = %73, %48
  %52 = phi ptr [ %46, %48 ], [ %77, %73 ]
  %53 = phi i32 [ 0, %48 ], [ %76, %73 ]
  %54 = phi ptr [ null, %48 ], [ %75, %73 ]
  %55 = phi ptr [ %45, %48 ], [ %74, %73 ]
  %56 = getelementptr inbounds %struct.list_head, ptr %52, i32 0, i32 1
  %57 = load ptr, ptr %56, align 4
  %58 = load ptr, ptr %52, align 4
  %59 = getelementptr inbounds %struct.list_head, ptr %58, i32 0, i32 1
  store ptr %57, ptr %59, align 4
  store volatile ptr %58, ptr %57, align 4
  %60 = load ptr, ptr %50, align 4
  store ptr %52, ptr %50, align 4
  store ptr %49, ptr %52, align 4
  store ptr %60, ptr %56, align 4
  store volatile ptr %52, ptr %60, align 4
  %61 = icmp eq ptr %54, null
  br i1 %61, label %66, label %62

62:                                               ; preds = %51
  %63 = getelementptr inbounds %struct.nfs_page, ptr %52, i32 0, i32 1
  %64 = load ptr, ptr %63, align 4
  %65 = icmp eq ptr %54, %64
  br i1 %65, label %73, label %66

66:                                               ; preds = %62, %51
  %67 = add i32 %53, 1
  %68 = icmp ugt i32 %67, %25
  br i1 %68, label %79, label %69

69:                                               ; preds = %66
  %70 = getelementptr inbounds %struct.nfs_page, ptr %52, i32 0, i32 1
  %71 = load ptr, ptr %70, align 4
  %72 = getelementptr ptr, ptr %55, i32 1
  store ptr %71, ptr %55, align 4
  br label %73

73:                                               ; preds = %69, %62
  %74 = phi ptr [ %72, %69 ], [ %55, %62 ]
  %75 = phi ptr [ %71, %69 ], [ %54, %62 ]
  %76 = phi i32 [ %67, %69 ], [ %53, %62 ]
  %77 = load volatile ptr, ptr %17, align 4
  %78 = icmp eq ptr %77, %17
  br i1 %78, label %79, label %51

79:                                               ; preds = %73, %66, %41
  %80 = phi i32 [ 0, %41 ], [ %67, %66 ], [ %76, %73 ]
  %81 = icmp ne i32 %80, %25
  %82 = load i1, ptr @nfs_generic_pgio.__already_done, align 1
  %83 = xor i1 %82, true
  %84 = select i1 %81, i1 %83, i1 false
  br i1 %84, label %85, label %86, !prof !14

85:                                               ; preds = %79
  store i1 true, ptr @nfs_generic_pgio.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 927, i32 noundef 9, ptr noundef null) #9
  br label %86

86:                                               ; preds = %85, %79
  br i1 %81, label %87, label %94

87:                                               ; preds = %86
  %88 = getelementptr inbounds %struct.nfs_pgio_header, ptr %1, i32 0, i32 17
  call void @_set_bit(i32 noundef 2, ptr noundef %88) #9
  %89 = getelementptr inbounds %struct.nfs_pgio_header, ptr %1, i32 0, i32 10
  %90 = load ptr, ptr %89, align 8
  %91 = getelementptr inbounds %struct.nfs_pgio_completion_ops, ptr %90, i32 0, i32 2
  %92 = load ptr, ptr %91, align 4
  call void %92(ptr noundef %1) #9
  %93 = getelementptr inbounds %struct.nfs_pageio_descriptor, ptr %0, i32 0, i32 4
  store i32 -22, ptr %93, align 4
  br label %157

94:                                               ; preds = %86
  %95 = getelementptr inbounds %struct.nfs_pageio_descriptor, ptr %0, i32 0, i32 3
  %96 = load i32, ptr %95, align 4
  %97 = and i32 %96, 32
  %98 = icmp eq i32 %97, 0
  br i1 %98, label %111, label %99

99:                                               ; preds = %94
  %100 = getelementptr inbounds %struct.nfs_pageio_descriptor, ptr %0, i32 0, i32 17
  %101 = load i8, ptr %100, align 2
  %102 = and i8 %101, 1
  %103 = icmp eq i8 %102, 0
  br i1 %103, label %104, label %108

104:                                              ; preds = %99
  %105 = call i32 @nfs_reqs_to_commit(ptr noundef nonnull %3) #9
  %106 = icmp eq i32 %105, 0
  %107 = load i32, ptr %95, align 4
  br i1 %106, label %111, label %108

108:                                              ; preds = %104, %99
  %109 = phi i32 [ %96, %99 ], [ %107, %104 ]
  %110 = and i32 %109, -33
  store i32 %110, ptr %95, align 4
  br label %111

111:                                              ; preds = %108, %104, %94
  %112 = phi i32 [ %110, %108 ], [ %96, %94 ], [ %107, %104 ]
  %113 = load i32, ptr %21, align 4
  %114 = getelementptr inbounds %struct.nfs_pgio_header, ptr %1, i32 0, i32 3
  %115 = load ptr, ptr %114, align 8
  %116 = load ptr, ptr %1, align 8
  %117 = getelementptr i8, ptr %116, i32 -288
  %118 = getelementptr inbounds %struct.nfs_pgio_header, ptr %1, i32 0, i32 20, i32 1
  store ptr %117, ptr %118, align 8
  %119 = getelementptr inbounds %struct.nfs_page, ptr %115, i32 0, i32 3
  %120 = load i32, ptr %119, align 4
  %121 = zext i32 %120 to i64
  %122 = shl nuw nsw i64 %121, 12
  %123 = getelementptr inbounds %struct.nfs_page, ptr %115, i32 0, i32 4
  %124 = load i32, ptr %123, align 4
  %125 = zext i32 %124 to i64
  %126 = add nuw nsw i64 %122, %125
  %127 = getelementptr inbounds %struct.nfs_pgio_header, ptr %1, i32 0, i32 20, i32 5
  store i64 %126, ptr %127, align 8
  %128 = getelementptr inbounds %struct.nfs_pgio_header, ptr %1, i32 0, i32 24
  store i64 %126, ptr %128, align 8
  %129 = getelementptr inbounds %struct.nfs_page, ptr %115, i32 0, i32 5
  %130 = load i32, ptr %129, align 4
  %131 = getelementptr inbounds %struct.nfs_pgio_header, ptr %1, i32 0, i32 20, i32 7
  store i32 %130, ptr %131, align 4
  %132 = load ptr, ptr %18, align 8
  %133 = getelementptr inbounds %struct.nfs_pgio_header, ptr %1, i32 0, i32 20, i32 8
  store ptr %132, ptr %133, align 8
  %134 = getelementptr inbounds %struct.nfs_pgio_header, ptr %1, i32 0, i32 20, i32 6
  store i32 %113, ptr %134, align 8
  %135 = getelementptr inbounds %struct.nfs_page, ptr %115, i32 0, i32 2
  %136 = load ptr, ptr %135, align 4
  %137 = getelementptr inbounds %struct.nfs_lock_context, ptr %136, i32 0, i32 2
  %138 = load ptr, ptr %137, align 4
  %139 = call ptr @get_nfs_open_context(ptr noundef %138) #9
  %140 = getelementptr inbounds %struct.nfs_pgio_header, ptr %1, i32 0, i32 20, i32 2
  store ptr %139, ptr %140, align 4
  %141 = load ptr, ptr %135, align 4
  %142 = getelementptr inbounds %struct.nfs_pgio_header, ptr %1, i32 0, i32 20, i32 3
  store ptr %141, ptr %142, align 8
  %143 = getelementptr inbounds %struct.nfs_pgio_header, ptr %1, i32 0, i32 20, i32 9, i32 0, i32 2
  store i32 0, ptr %143, align 4
  %144 = and i32 %112, 36
  switch i32 %144, label %148 [
    i32 0, label %149
    i32 32, label %145
  ]

145:                                              ; preds = %111
  %146 = call i32 @nfs_reqs_to_commit(ptr noundef nonnull %3) #9
  %147 = icmp eq i32 %146, 0
  br i1 %147, label %148, label %149

148:                                              ; preds = %145, %111
  store i32 2, ptr %143, align 4
  br label %149

149:                                              ; preds = %148, %145, %111
  %150 = getelementptr inbounds %struct.nfs_pgio_header, ptr %1, i32 0, i32 19
  %151 = getelementptr inbounds %struct.nfs_pgio_header, ptr %1, i32 0, i32 21, i32 1
  store ptr %150, ptr %151, align 8
  %152 = getelementptr inbounds %struct.nfs_pgio_header, ptr %1, i32 0, i32 21, i32 2
  store i64 0, ptr %152, align 8
  %153 = getelementptr inbounds %struct.nfs_pgio_header, ptr %1, i32 0, i32 21, i32 4
  %154 = getelementptr inbounds %struct.nfs_pgio_header, ptr %1, i32 0, i32 21, i32 4, i32 0, i32 1
  store i32 0, ptr %154, align 4
  %155 = getelementptr inbounds %struct.nfs_pgio_header, ptr %1, i32 0, i32 4
  store ptr %155, ptr %153, align 4
  call void @nfs_fattr_init(ptr noundef %150) #9
  %156 = getelementptr inbounds %struct.nfs_pageio_descriptor, ptr %0, i32 0, i32 5
  store ptr @nfs_pgio_common_ops, ptr %156, align 4
  br label %157

157:                                              ; preds = %149, %87, %34
  %158 = phi i32 [ -22, %87 ], [ 0, %149 ], [ -12, %34 ]
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %3) #9
  ret i32 %158
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @nfs_init_cinfo(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nfs_reqs_to_commit(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @nfs_pageio_add_request(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = alloca %struct.list_head, align 8
  %4 = getelementptr inbounds %struct.nfs_page, ptr %1, i32 0, i32 5
  %5 = load i32, ptr %4, align 4
  %6 = getelementptr inbounds %struct.nfs_page, ptr %1, i32 0, i32 4
  %7 = load i32, ptr %6, align 4
  %8 = getelementptr inbounds %struct.nfs_page, ptr %1, i32 0, i32 6
  %9 = load i32, ptr %8, align 4
  %10 = getelementptr inbounds %struct.nfs_pageio_descriptor, ptr %0, i32 0, i32 1
  %11 = load ptr, ptr %10, align 4
  %12 = getelementptr inbounds %struct.nfs_pageio_ops, ptr %11, i32 0, i32 3
  %13 = load ptr, ptr %12, align 4
  %14 = icmp eq ptr %13, null
  br i1 %14, label %17, label %15

15:                                               ; preds = %2
  %16 = tail call i32 %13(ptr noundef %0, ptr noundef %1) #9
  br label %17

17:                                               ; preds = %15, %2
  %18 = phi i32 [ %16, %15 ], [ 1, %2 ]
  %19 = getelementptr inbounds %struct.nfs_pageio_descriptor, ptr %0, i32 0, i32 11
  %20 = load i32, ptr %19, align 4
  %21 = icmp eq i32 %18, %20
  br i1 %21, label %68, label %22

22:                                               ; preds = %17
  %23 = getelementptr inbounds %struct.nfs_pageio_descriptor, ptr %0, i32 0, i32 4
  %24 = load i32, ptr %23, align 4
  %25 = icmp slt i32 %24, 0
  br i1 %25, label %68, label %26

26:                                               ; preds = %22
  %27 = add i32 %18, -17
  %28 = icmp ult i32 %27, -16
  br i1 %28, label %29, label %30

29:                                               ; preds = %26
  store i32 -22, ptr %23, align 4
  br label %68

30:                                               ; preds = %26
  %31 = getelementptr inbounds %struct.nfs_pageio_descriptor, ptr %0, i32 0, i32 14
  %32 = load ptr, ptr %31, align 4
  tail call void @kfree(ptr noundef %32) #9
  store ptr null, ptr %31, align 4
  %33 = icmp eq i32 %18, 1
  br i1 %33, label %34, label %36

34:                                               ; preds = %30
  %35 = getelementptr inbounds %struct.nfs_pageio_descriptor, ptr %0, i32 0, i32 13
  br label %59

36:                                               ; preds = %30
  %37 = mul nuw nsw i32 %18, 28
  %38 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %37, i32 noundef 3264) #10
  %39 = icmp eq ptr %38, null
  br i1 %39, label %57, label %40

40:                                               ; preds = %36
  %41 = getelementptr inbounds %struct.nfs_pageio_descriptor, ptr %0, i32 0, i32 10
  %42 = load i32, ptr %41, align 4
  br label %43

43:                                               ; preds = %43, %40
  %44 = phi i32 [ 0, %40 ], [ %54, %43 ]
  %45 = getelementptr %struct.nfs_pgio_mirror, ptr %38, i32 %44
  store volatile ptr %45, ptr %45, align 4
  %46 = getelementptr inbounds %struct.list_head, ptr %45, i32 0, i32 1
  store ptr %45, ptr %46, align 4
  %47 = getelementptr %struct.nfs_pgio_mirror, ptr %38, i32 %44, i32 1
  store i32 0, ptr %47, align 4
  %48 = getelementptr %struct.nfs_pgio_mirror, ptr %38, i32 %44, i32 2
  store i32 0, ptr %48, align 4
  %49 = getelementptr %struct.nfs_pgio_mirror, ptr %38, i32 %44, i32 3
  store i32 %42, ptr %49, align 4
  %50 = getelementptr %struct.nfs_pgio_mirror, ptr %38, i32 %44, i32 4
  store i32 0, ptr %50, align 4
  %51 = getelementptr %struct.nfs_pgio_mirror, ptr %38, i32 %44, i32 5
  %52 = load i8, ptr %51, align 4
  %53 = and i8 %52, -2
  store i8 %53, ptr %51, align 4
  %54 = add nuw i32 %44, 1
  %55 = icmp eq i32 %54, %18
  br i1 %55, label %56, label %43

56:                                               ; preds = %43
  store ptr %38, ptr %31, align 4
  br label %59

57:                                               ; preds = %36
  %58 = getelementptr inbounds %struct.nfs_pageio_descriptor, ptr %0, i32 0, i32 12
  br label %63

59:                                               ; preds = %56, %34
  %60 = phi ptr [ %35, %34 ], [ %38, %56 ]
  %61 = getelementptr inbounds %struct.nfs_pageio_descriptor, ptr %0, i32 0, i32 12
  store ptr %60, ptr %61, align 4
  %62 = icmp eq ptr %60, null
  br i1 %62, label %63, label %66

63:                                               ; preds = %59, %57
  %64 = phi ptr [ %58, %57 ], [ %61, %59 ]
  store i32 -12, ptr %23, align 4
  %65 = getelementptr inbounds %struct.nfs_pageio_descriptor, ptr %0, i32 0, i32 13
  store ptr %65, ptr %64, align 4
  br label %66

66:                                               ; preds = %63, %59
  %67 = phi i32 [ 1, %63 ], [ %18, %59 ]
  store i32 %67, ptr %19, align 4
  br label %68

68:                                               ; preds = %66, %29, %22, %17
  %69 = phi i32 [ %18, %17 ], [ %20, %22 ], [ %20, %29 ], [ %67, %66 ]
  %70 = getelementptr inbounds %struct.nfs_pageio_descriptor, ptr %0, i32 0, i32 4
  %71 = load i32, ptr %70, align 4
  %72 = icmp slt i32 %71, 0
  br i1 %72, label %153, label %73

73:                                               ; preds = %68
  %74 = icmp ugt i32 %69, 1
  br i1 %74, label %75, label %122

75:                                               ; preds = %73
  %76 = getelementptr inbounds %struct.nfs_page, ptr %1, i32 0, i32 11
  %77 = getelementptr inbounds %struct.nfs_page, ptr %1, i32 0, i32 8
  br label %78

78:                                               ; preds = %118, %75
  %79 = phi i32 [ 1, %75 ], [ %119, %118 ]
  %80 = tail call i32 @nfs_page_group_lock(ptr noundef %1)
  %81 = tail call fastcc ptr @nfs_create_subreq(ptr noundef %1, i32 noundef %5, i32 noundef %7, i32 noundef %9)
  %82 = load ptr, ptr %76, align 4
  %83 = icmp eq ptr %82, %1
  br i1 %83, label %91, label %84

84:                                               ; preds = %78
  %85 = getelementptr inbounds %struct.nfs_page, ptr %82, i32 0, i32 8
  tail call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !17
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %85) #9, !srcloc !12
  %86 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_andnot\0A1:\09ldrex\09$0, [$4]\0A\09bic\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %85, ptr %85, i32 32, ptr elementtype(i32) %85) #9, !srcloc !18
  tail call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !19
  %87 = load volatile i32, ptr %85, align 4
  %88 = and i32 %87, 2048
  %89 = icmp eq i32 %88, 0
  br i1 %89, label %91, label %90

90:                                               ; preds = %84
  tail call void @wake_up_bit(ptr noundef %85, i32 noundef 5) #9
  br label %91

91:                                               ; preds = %90, %84, %78
  tail call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !17
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %77) #9, !srcloc !12
  %92 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_andnot\0A1:\09ldrex\09$0, [$4]\0A\09bic\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %77, ptr %77, i32 32, ptr elementtype(i32) %77) #9, !srcloc !18
  tail call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !19
  %93 = load volatile i32, ptr %77, align 4
  %94 = and i32 %93, 2048
  %95 = icmp eq i32 %94, 0
  br i1 %95, label %97, label %96

96:                                               ; preds = %91
  tail call void @wake_up_bit(ptr noundef %77, i32 noundef 5) #9
  br label %97

97:                                               ; preds = %96, %91
  %98 = icmp ugt ptr %81, inttoptr (i32 -4096 to ptr)
  br i1 %98, label %99, label %101

99:                                               ; preds = %97
  %100 = ptrtoint ptr %81 to i32
  store i32 %100, ptr %70, align 4
  br label %153

101:                                              ; preds = %97
  %102 = load ptr, ptr %10, align 4
  %103 = getelementptr inbounds %struct.nfs_pageio_ops, ptr %102, i32 0, i32 6
  %104 = load ptr, ptr %103, align 4
  %105 = icmp eq ptr %104, null
  br i1 %105, label %108, label %106

106:                                              ; preds = %101
  %107 = tail call i32 %104(ptr noundef %0, i32 noundef %79) #9
  br label %108

108:                                              ; preds = %106, %101
  br label %109

109:                                              ; preds = %115, %108
  %110 = tail call fastcc i32 @__nfs_pageio_add_request(ptr noundef %0, ptr noundef %81) #9
  %111 = icmp eq i32 %110, 0
  br i1 %111, label %112, label %118

112:                                              ; preds = %109
  %113 = load i32, ptr %70, align 4
  %114 = icmp slt i32 %113, 0
  br i1 %114, label %139, label %115

115:                                              ; preds = %112
  %116 = tail call fastcc i32 @nfs_do_recoalesce(ptr noundef %0) #9
  %117 = icmp eq i32 %116, 0
  br i1 %117, label %139, label %109

118:                                              ; preds = %109
  %119 = add nuw i32 %79, 1
  %120 = load i32, ptr %19, align 4
  %121 = icmp ult i32 %119, %120
  br i1 %121, label %78, label %122

122:                                              ; preds = %118, %73
  %123 = load ptr, ptr %10, align 4
  %124 = getelementptr inbounds %struct.nfs_pageio_ops, ptr %123, i32 0, i32 6
  %125 = load ptr, ptr %124, align 4
  %126 = icmp eq ptr %125, null
  br i1 %126, label %129, label %127

127:                                              ; preds = %122
  %128 = tail call i32 %125(ptr noundef %0, i32 noundef 0) #9
  br label %129

129:                                              ; preds = %127, %122
  br label %130

130:                                              ; preds = %136, %129
  %131 = tail call fastcc i32 @__nfs_pageio_add_request(ptr noundef %0, ptr noundef %1) #9
  %132 = icmp eq i32 %131, 0
  br i1 %132, label %133, label %177

133:                                              ; preds = %130
  %134 = load i32, ptr %70, align 4
  %135 = icmp slt i32 %134, 0
  br i1 %135, label %153, label %136

136:                                              ; preds = %133
  %137 = tail call fastcc i32 @nfs_do_recoalesce(ptr noundef %0) #9
  %138 = icmp eq i32 %137, 0
  br i1 %138, label %150, label %130

139:                                              ; preds = %115, %112
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #9
  store ptr %3, ptr %3, align 8
  %140 = getelementptr inbounds %struct.list_head, ptr %3, i32 0, i32 1
  store ptr %3, ptr %140, align 4
  %141 = getelementptr inbounds %struct.list_head, ptr %81, i32 0, i32 1
  %142 = load ptr, ptr %141, align 4
  %143 = load ptr, ptr %81, align 4
  %144 = getelementptr inbounds %struct.list_head, ptr %143, i32 0, i32 1
  store ptr %142, ptr %144, align 4
  store volatile ptr %143, ptr %142, align 4
  %145 = load ptr, ptr %140, align 4
  store ptr %81, ptr %140, align 4
  store ptr %3, ptr %81, align 4
  store ptr %145, ptr %141, align 4
  store volatile ptr %81, ptr %145, align 4
  %146 = getelementptr inbounds %struct.nfs_pageio_descriptor, ptr %0, i32 0, i32 6
  %147 = load ptr, ptr %146, align 4
  %148 = load ptr, ptr %147, align 4
  %149 = load i32, ptr %70, align 4
  call void %148(ptr noundef nonnull %3, i32 noundef %149) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #9
  br label %150

150:                                              ; preds = %139, %136
  %151 = load i32, ptr %70, align 4
  %152 = icmp eq i32 %151, 0
  br i1 %152, label %177, label %153

153:                                              ; preds = %150, %133, %99, %68
  %154 = load i32, ptr %19, align 4
  %155 = icmp eq i32 %154, 0
  br i1 %155, label %177, label %156

156:                                              ; preds = %153
  %157 = getelementptr inbounds %struct.nfs_pageio_descriptor, ptr %0, i32 0, i32 12
  %158 = getelementptr inbounds %struct.nfs_pageio_descriptor, ptr %0, i32 0, i32 6
  br label %159

159:                                              ; preds = %169, %156
  %160 = phi i32 [ 0, %156 ], [ %174, %169 ]
  %161 = load ptr, ptr %10, align 4
  %162 = getelementptr inbounds %struct.nfs_pageio_ops, ptr %161, i32 0, i32 5
  %163 = load ptr, ptr %162, align 4
  %164 = icmp eq ptr %163, null
  br i1 %164, label %167, label %165

165:                                              ; preds = %159
  %166 = call ptr %163(ptr noundef %0, i32 noundef %160) #9
  br label %169

167:                                              ; preds = %159
  %168 = load ptr, ptr %157, align 4
  br label %169

169:                                              ; preds = %167, %165
  %170 = phi ptr [ %166, %165 ], [ %168, %167 ]
  %171 = load ptr, ptr %158, align 4
  %172 = load ptr, ptr %171, align 4
  %173 = load i32, ptr %70, align 4
  call void %172(ptr noundef %170, i32 noundef %173) #9
  %174 = add nuw i32 %160, 1
  %175 = load i32, ptr %19, align 4
  %176 = icmp ult i32 %174, %175
  br i1 %176, label %159, label %177

177:                                              ; preds = %169, %153, %150, %130
  %178 = phi i32 [ 0, %150 ], [ 0, %153 ], [ 0, %169 ], [ 1, %130 ]
  ret i32 %178
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc ptr @nfs_create_subreq(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) unnamed_addr #0 {
  %5 = getelementptr inbounds %struct.nfs_page, ptr %0, i32 0, i32 2
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.nfs_page, ptr %0, i32 0, i32 1
  %8 = load ptr, ptr %7, align 4
  %9 = tail call fastcc ptr @__nfs_create_request(ptr noundef %6, ptr noundef %8, i32 noundef %1, i32 noundef %2, i32 noundef %3)
  %10 = icmp ugt ptr %9, inttoptr (i32 -4096 to ptr)
  br i1 %10, label %125, label %11

11:                                               ; preds = %4
  %12 = getelementptr inbounds %struct.nfs_page, ptr %0, i32 0, i32 11
  %13 = load ptr, ptr %12, align 4
  br label %14

14:                                               ; preds = %14, %11
  %15 = phi ptr [ %13, %11 ], [ %17, %14 ]
  %16 = getelementptr inbounds %struct.nfs_page, ptr %15, i32 0, i32 10
  %17 = load ptr, ptr %16, align 4
  %18 = icmp eq ptr %17, %13
  br i1 %18, label %19, label %14

19:                                               ; preds = %14
  %20 = getelementptr inbounds %struct.nfs_page, ptr %15, i32 0, i32 10
  %21 = getelementptr inbounds %struct.nfs_page, ptr %9, i32 0, i32 8
  %22 = tail call i32 @_test_and_set_bit(i32 noundef 0, ptr noundef %21) #9
  %23 = getelementptr inbounds %struct.nfs_page, ptr %0, i32 0, i32 3
  %24 = load i32, ptr %23, align 4
  %25 = getelementptr inbounds %struct.nfs_page, ptr %9, i32 0, i32 3
  store i32 %24, ptr %25, align 4
  %26 = icmp eq ptr %15, %9
  %27 = load i1, ptr @nfs_page_group_init.__already_done, align 1
  %28 = xor i1 %27, true
  %29 = select i1 %26, i1 %28, i1 false
  br i1 %29, label %30, label %31, !prof !14

30:                                               ; preds = %19
  store i1 true, ptr @nfs_page_group_init.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 371, i32 noundef 9, ptr noundef null) #9
  br label %31

31:                                               ; preds = %30, %19
  %32 = icmp eq ptr %15, null
  br i1 %32, label %33, label %36

33:                                               ; preds = %31
  %34 = getelementptr inbounds %struct.nfs_page, ptr %9, i32 0, i32 11
  store ptr %9, ptr %34, align 4
  %35 = getelementptr inbounds %struct.nfs_page, ptr %9, i32 0, i32 10
  store ptr %9, ptr %35, align 4
  br label %121

36:                                               ; preds = %31
  %37 = load ptr, ptr %20, align 4
  %38 = getelementptr inbounds %struct.nfs_page, ptr %15, i32 0, i32 11
  %39 = load ptr, ptr %38, align 4
  %40 = icmp ne ptr %37, %39
  %41 = load i1, ptr @nfs_page_group_init.__already_done.9, align 1
  %42 = xor i1 %41, true
  %43 = select i1 %40, i1 %42, i1 false
  br i1 %43, label %44, label %46, !prof !14

44:                                               ; preds = %36
  store i1 true, ptr @nfs_page_group_init.__already_done.9, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 379, i32 noundef 9, ptr noundef null) #9
  %45 = load ptr, ptr %38, align 4
  br label %46

46:                                               ; preds = %44, %36
  %47 = phi ptr [ %45, %44 ], [ %39, %36 ]
  %48 = getelementptr inbounds %struct.nfs_page, ptr %47, i32 0, i32 8
  %49 = load volatile i32, ptr %48, align 4
  %50 = and i32 %49, 32
  %51 = icmp eq i32 %50, 0
  %52 = load i1, ptr @nfs_page_group_init.__already_done.10, align 1
  %53 = xor i1 %52, true
  %54 = select i1 %51, i1 %53, i1 false
  br i1 %54, label %55, label %57, !prof !14

55:                                               ; preds = %46
  store i1 true, ptr @nfs_page_group_init.__already_done.10, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 380, i32 noundef 9, ptr noundef null) #9
  %56 = load ptr, ptr %38, align 4
  br label %57

57:                                               ; preds = %55, %46
  %58 = phi ptr [ %56, %55 ], [ %47, %46 ]
  %59 = getelementptr inbounds %struct.nfs_page, ptr %9, i32 0, i32 11
  store ptr %58, ptr %59, align 4
  %60 = load ptr, ptr %20, align 4
  %61 = getelementptr inbounds %struct.nfs_page, ptr %9, i32 0, i32 10
  store ptr %60, ptr %61, align 4
  store ptr %9, ptr %20, align 4
  %62 = load ptr, ptr %59, align 4
  %63 = getelementptr inbounds %struct.nfs_page, ptr %62, i32 0, i32 7
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %63) #9, !srcloc !12
  %64 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %63, ptr %63, i32 1, ptr elementtype(i32) %63) #9, !srcloc !13
  %65 = extractvalue { i32, i32, i32 } %64, 0
  %66 = icmp eq i32 %65, 0
  br i1 %66, label %71, label %67, !prof !14

67:                                               ; preds = %57
  %68 = add i32 %65, 1
  %69 = or i32 %68, %65
  %70 = icmp sgt i32 %69, -1
  br i1 %70, label %73, label %71, !prof !15

71:                                               ; preds = %67, %57
  %72 = phi i32 [ 2, %57 ], [ 1, %67 ]
  tail call void @refcount_warn_saturate(ptr noundef %63, i32 noundef %72) #9
  br label %73

73:                                               ; preds = %71, %67
  %74 = load ptr, ptr %38, align 4
  %75 = getelementptr inbounds %struct.nfs_page, ptr %74, i32 0, i32 8
  %76 = load volatile i32, ptr %75, align 4
  %77 = and i32 %76, 16
  %78 = icmp eq i32 %77, 0
  br i1 %78, label %121, label %79

79:                                               ; preds = %73
  %80 = getelementptr inbounds %struct.nfs_page, ptr %9, i32 0, i32 1
  %81 = load ptr, ptr %80, align 4
  %82 = getelementptr inbounds %struct.page, ptr %81, i32 0, i32 1
  %83 = load volatile i32, ptr %82, align 4
  %84 = and i32 %83, 1
  %85 = icmp eq i32 %84, 0
  br i1 %85, label %88, label %86, !prof !15

86:                                               ; preds = %79
  %87 = add i32 %83, -1
  br label %90

88:                                               ; preds = %79
  %89 = ptrtoint ptr %81 to i32
  br label %90

90:                                               ; preds = %88, %86
  %91 = phi i32 [ %87, %86 ], [ %89, %88 ]
  %92 = inttoptr i32 %91 to ptr
  %93 = load volatile i32, ptr %92, align 4
  %94 = and i32 %93, 524288
  %95 = icmp eq i32 %94, 0
  br i1 %95, label %102, label %96

96:                                               ; preds = %90
  %97 = load volatile i32, ptr %92, align 4
  %98 = and i32 %97, 1024
  %99 = icmp eq i32 %98, 0
  br i1 %99, label %102, label %100, !prof !15

100:                                              ; preds = %96
  %101 = tail call ptr @swapcache_mapping(ptr noundef %92) #9
  br label %105

102:                                              ; preds = %96, %90
  %103 = getelementptr inbounds %struct.anon.36, ptr %92, i32 0, i32 2
  %104 = load ptr, ptr %103, align 4
  br label %105

105:                                              ; preds = %102, %100
  %106 = phi ptr [ %101, %100 ], [ %104, %102 ]
  %107 = load ptr, ptr %106, align 4
  tail call void @_set_bit(i32 noundef 4, ptr noundef %21) #9
  %108 = getelementptr inbounds %struct.nfs_page, ptr %9, i32 0, i32 7
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %108) #9, !srcloc !12
  %109 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %108, ptr %108, i32 1, ptr elementtype(i32) %108) #9, !srcloc !13
  %110 = extractvalue { i32, i32, i32 } %109, 0
  %111 = icmp eq i32 %110, 0
  br i1 %111, label %116, label %112, !prof !14

112:                                              ; preds = %105
  %113 = add i32 %110, 1
  %114 = or i32 %113, %110
  %115 = icmp sgt i32 %114, -1
  br i1 %115, label %118, label %116, !prof !15

116:                                              ; preds = %112, %105
  %117 = phi i32 [ 2, %105 ], [ 1, %112 ]
  tail call void @refcount_warn_saturate(ptr noundef %108, i32 noundef %117) #9
  br label %118

118:                                              ; preds = %116, %112
  %119 = getelementptr i8, ptr %107, i32 -112
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %119) #9, !srcloc !12
  %120 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %119, ptr %119, i32 1, ptr elementtype(i32) %119) #9, !srcloc !22
  br label %121

121:                                              ; preds = %118, %73, %33
  %122 = getelementptr inbounds %struct.nfs_page, ptr %0, i32 0, i32 12
  %123 = load i16, ptr %122, align 4
  %124 = getelementptr inbounds %struct.nfs_page, ptr %9, i32 0, i32 12
  store i16 %123, ptr %124, align 4
  br label %125

125:                                              ; preds = %121, %4
  ret ptr %9
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @nfs_pageio_resend(ptr noundef %0, ptr noundef %1) #0 {
  %3 = alloca %struct.list_head, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #9
  store ptr %3, ptr %3, align 8
  %4 = getelementptr inbounds %struct.list_head, ptr %3, i32 0, i32 1
  store ptr %3, ptr %4, align 4
  %5 = getelementptr inbounds %struct.nfs_pgio_header, ptr %1, i32 0, i32 12
  %6 = load ptr, ptr %5, align 8
  %7 = getelementptr inbounds %struct.nfs_pageio_descriptor, ptr %0, i32 0, i32 8
  store ptr %6, ptr %7, align 4
  %8 = getelementptr inbounds %struct.nfs_pgio_header, ptr %1, i32 0, i32 13
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.nfs_pageio_descriptor, ptr %0, i32 0, i32 9
  store ptr %9, ptr %10, align 4
  %11 = getelementptr inbounds %struct.nfs_pgio_header, ptr %1, i32 0, i32 2
  %12 = load volatile ptr, ptr %11, align 4
  %13 = icmp eq ptr %12, %11
  br i1 %13, label %18, label %14

14:                                               ; preds = %2
  %15 = getelementptr inbounds %struct.nfs_pgio_header, ptr %1, i32 0, i32 2, i32 1
  %16 = load ptr, ptr %15, align 4
  %17 = getelementptr inbounds %struct.list_head, ptr %12, i32 0, i32 1
  store ptr %3, ptr %17, align 4
  store ptr %12, ptr %3, align 8
  store ptr %3, ptr %16, align 4
  store ptr %16, ptr %4, align 4
  store volatile ptr %11, ptr %11, align 4
  store ptr %11, ptr %15, align 4
  br label %18

18:                                               ; preds = %14, %2
  br label %19

19:                                               ; preds = %22, %18
  %20 = load volatile ptr, ptr %3, align 8
  %21 = icmp eq ptr %20, %3
  br i1 %21, label %25, label %22

22:                                               ; preds = %19
  %23 = call i32 @nfs_pageio_add_request(ptr noundef %0, ptr noundef %20)
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %19

25:                                               ; preds = %22, %19
  call void @nfs_pageio_complete(ptr noundef %0)
  %26 = load volatile ptr, ptr %3, align 8
  %27 = icmp eq ptr %26, %3
  br i1 %27, label %63, label %28

28:                                               ; preds = %25
  %29 = getelementptr inbounds %struct.nfs_pageio_descriptor, ptr %0, i32 0, i32 4
  %30 = load i32, ptr %29, align 4
  %31 = icmp slt i32 %30, 0
  %32 = select i1 %31, i32 %30, i32 -5
  %33 = getelementptr inbounds %struct.nfs_pgio_header, ptr %1, i32 0, i32 10
  %34 = load ptr, ptr %33, align 8
  %35 = load ptr, ptr %34, align 4
  call void %35(ptr noundef nonnull %3, i32 noundef %32) #9
  %36 = getelementptr inbounds %struct.nfs_pgio_header, ptr %1, i32 0, i32 7
  %37 = load i64, ptr %36, align 8
  %38 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_nfs_pgio_error, i32 0, i32 1), align 4
  %39 = icmp sgt i32 %38, 0
  br i1 %39, label %40, label %53

40:                                               ; preds = %28
  %41 = tail call ptr @llvm.thread.pointer() #9
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
  call void asm sideeffect "", "~{memory}"() #9, !srcloc !8
  %52 = call i32 @__traceiter_nfs_pgio_error(ptr noundef null, ptr noundef %1, i32 noundef %32, i64 noundef %37) #9
  call void asm sideeffect "", "~{memory}"() #9, !srcloc !9
  br label %53

53:                                               ; preds = %51, %40, %28
  %54 = getelementptr inbounds %struct.nfs_pgio_header, ptr %1, i32 0, i32 16
  %55 = load i32, ptr %54, align 8
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %63, label %57

57:                                               ; preds = %53
  store i32 0, ptr %54, align 8
  %58 = getelementptr inbounds %struct.nfs_pgio_header, ptr %1, i32 0, i32 17
  call void @_clear_bit(i32 noundef 1, ptr noundef %58) #9
  %59 = call i32 @_test_and_set_bit(i32 noundef 0, ptr noundef %58) #9
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %61, label %63

61:                                               ; preds = %57
  %62 = getelementptr inbounds %struct.nfs_pgio_header, ptr %1, i32 0, i32 15
  store i32 %32, ptr %62, align 4
  br label %63

63:                                               ; preds = %61, %57, %53, %25
  %64 = phi i32 [ 0, %25 ], [ %32, %53 ], [ %32, %57 ], [ %32, %61 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #9
  ret i32 %64
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @nfs_pageio_complete(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.nfs_pageio_descriptor, ptr %0, i32 0, i32 11
  %3 = load i32, ptr %2, align 4
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %114, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.nfs_pageio_descriptor, ptr %0, i32 0, i32 1
  %7 = getelementptr inbounds %struct.nfs_pageio_descriptor, ptr %0, i32 0, i32 15
  %8 = getelementptr inbounds %struct.nfs_pageio_descriptor, ptr %0, i32 0, i32 12
  %9 = getelementptr inbounds %struct.nfs_pageio_descriptor, ptr %0, i32 0, i32 4
  br label %10

10:                                               ; preds = %82, %5
  %11 = phi i32 [ 0, %5 ], [ %83, %82 ]
  %12 = load ptr, ptr %6, align 4
  %13 = getelementptr inbounds %struct.nfs_pageio_ops, ptr %12, i32 0, i32 6
  %14 = load ptr, ptr %13, align 4
  %15 = icmp eq ptr %14, null
  br i1 %15, label %19, label %16

16:                                               ; preds = %10
  %17 = tail call i32 %14(ptr noundef %0, i32 noundef %11) #9
  %18 = load ptr, ptr %6, align 4
  br label %21

19:                                               ; preds = %10
  %20 = load i32, ptr %7, align 4
  br label %21

21:                                               ; preds = %19, %16
  %22 = phi ptr [ %18, %16 ], [ %12, %19 ]
  %23 = phi i32 [ %17, %16 ], [ %20, %19 ]
  %24 = getelementptr inbounds %struct.nfs_pageio_ops, ptr %22, i32 0, i32 5
  %25 = load ptr, ptr %24, align 4
  %26 = icmp eq ptr %25, null
  br i1 %26, label %30, label %27

27:                                               ; preds = %21
  %28 = load i32, ptr %7, align 4
  %29 = tail call ptr %25(ptr noundef %0, i32 noundef %28) #9
  br label %32

30:                                               ; preds = %21
  %31 = load ptr, ptr %8, align 4
  br label %32

32:                                               ; preds = %30, %27
  %33 = phi ptr [ %29, %27 ], [ %31, %30 ]
  %34 = getelementptr inbounds %struct.nfs_pgio_mirror, ptr %33, i32 0, i32 5
  br label %35

35:                                               ; preds = %72, %32
  %36 = load ptr, ptr %6, align 4
  %37 = getelementptr inbounds %struct.nfs_pageio_ops, ptr %36, i32 0, i32 5
  %38 = load ptr, ptr %37, align 4
  %39 = icmp eq ptr %38, null
  br i1 %39, label %43, label %40

40:                                               ; preds = %35
  %41 = load i32, ptr %7, align 4
  %42 = tail call ptr %38(ptr noundef %0, i32 noundef %41) #9
  br label %45

43:                                               ; preds = %35
  %44 = load ptr, ptr %8, align 4
  br label %45

45:                                               ; preds = %43, %40
  %46 = phi ptr [ %42, %40 ], [ %44, %43 ]
  %47 = load volatile ptr, ptr %46, align 4
  %48 = icmp eq ptr %47, %46
  br i1 %48, label %65, label %49

49:                                               ; preds = %45
  %50 = load ptr, ptr %6, align 4
  %51 = getelementptr inbounds %struct.nfs_pageio_ops, ptr %50, i32 0, i32 2
  %52 = load ptr, ptr %51, align 4
  %53 = tail call i32 %52(ptr noundef %0) #9
  %54 = icmp slt i32 %53, 0
  br i1 %54, label %55, label %56

55:                                               ; preds = %49
  store i32 %53, ptr %9, align 4
  br label %56

56:                                               ; preds = %55, %49
  %57 = load volatile ptr, ptr %46, align 4
  %58 = icmp eq ptr %57, %46
  br i1 %58, label %59, label %65

59:                                               ; preds = %56
  %60 = getelementptr inbounds %struct.nfs_pgio_mirror, ptr %46, i32 0, i32 2
  %61 = load i32, ptr %60, align 4
  %62 = getelementptr inbounds %struct.nfs_pgio_mirror, ptr %46, i32 0, i32 1
  %63 = load i32, ptr %62, align 4
  %64 = add i32 %63, %61
  store i32 %64, ptr %62, align 4
  br label %65

65:                                               ; preds = %59, %56, %45
  %66 = load i32, ptr %9, align 4
  %67 = icmp slt i32 %66, 0
  br i1 %67, label %75, label %68

68:                                               ; preds = %65
  %69 = load i8, ptr %34, align 4
  %70 = and i8 %69, 1
  %71 = icmp eq i8 %70, 0
  br i1 %71, label %75, label %72

72:                                               ; preds = %68
  %73 = tail call fastcc i32 @nfs_do_recoalesce(ptr noundef %0) #9
  %74 = icmp eq i32 %73, 0
  br i1 %74, label %75, label %35

75:                                               ; preds = %72, %68, %65
  %76 = load ptr, ptr %6, align 4
  %77 = getelementptr inbounds %struct.nfs_pageio_ops, ptr %76, i32 0, i32 6
  %78 = load ptr, ptr %77, align 4
  %79 = icmp eq ptr %78, null
  br i1 %79, label %82, label %80

80:                                               ; preds = %75
  %81 = tail call i32 %78(ptr noundef %0, i32 noundef %23) #9
  br label %82

82:                                               ; preds = %80, %75
  %83 = add nuw i32 %11, 1
  %84 = load i32, ptr %2, align 4
  %85 = icmp ult i32 %83, %84
  br i1 %85, label %10, label %86

86:                                               ; preds = %82
  %87 = icmp eq i32 %84, 0
  %88 = getelementptr inbounds %struct.nfs_pageio_descriptor, ptr %0, i32 0, i32 4
  %89 = load i32, ptr %88, align 4
  %90 = icmp sgt i32 %89, -1
  %91 = select i1 %90, i1 true, i1 %87
  br i1 %91, label %114, label %92

92:                                               ; preds = %86
  %93 = getelementptr inbounds %struct.nfs_pageio_descriptor, ptr %0, i32 0, i32 1
  %94 = getelementptr inbounds %struct.nfs_pageio_descriptor, ptr %0, i32 0, i32 12
  %95 = getelementptr inbounds %struct.nfs_pageio_descriptor, ptr %0, i32 0, i32 6
  br label %96

96:                                               ; preds = %106, %92
  %97 = phi i32 [ 0, %92 ], [ %111, %106 ]
  %98 = load ptr, ptr %93, align 4
  %99 = getelementptr inbounds %struct.nfs_pageio_ops, ptr %98, i32 0, i32 5
  %100 = load ptr, ptr %99, align 4
  %101 = icmp eq ptr %100, null
  br i1 %101, label %104, label %102

102:                                              ; preds = %96
  %103 = tail call ptr %100(ptr noundef %0, i32 noundef %97) #9
  br label %106

104:                                              ; preds = %96
  %105 = load ptr, ptr %94, align 4
  br label %106

106:                                              ; preds = %104, %102
  %107 = phi ptr [ %103, %102 ], [ %105, %104 ]
  %108 = load ptr, ptr %95, align 4
  %109 = load ptr, ptr %108, align 4
  %110 = load i32, ptr %88, align 4
  tail call void %109(ptr noundef %107, i32 noundef %110) #9
  %111 = add nuw i32 %97, 1
  %112 = load i32, ptr %2, align 4
  %113 = icmp ult i32 %111, %112
  br i1 %113, label %96, label %114

114:                                              ; preds = %106, %86, %1
  %115 = getelementptr inbounds %struct.nfs_pageio_descriptor, ptr %0, i32 0, i32 1
  %116 = load ptr, ptr %115, align 4
  %117 = getelementptr inbounds %struct.nfs_pageio_ops, ptr %116, i32 0, i32 4
  %118 = load ptr, ptr %117, align 4
  %119 = icmp eq ptr %118, null
  br i1 %119, label %121, label %120

120:                                              ; preds = %114
  tail call void %118(ptr noundef %0) #9
  br label %121

121:                                              ; preds = %120, %114
  store i32 1, ptr %2, align 4
  %122 = getelementptr inbounds %struct.nfs_pageio_descriptor, ptr %0, i32 0, i32 15
  store i32 0, ptr %122, align 4
  %123 = getelementptr inbounds %struct.nfs_pageio_descriptor, ptr %0, i32 0, i32 13
  %124 = getelementptr inbounds %struct.nfs_pageio_descriptor, ptr %0, i32 0, i32 12
  store ptr %123, ptr %124, align 4
  %125 = getelementptr inbounds %struct.nfs_pageio_descriptor, ptr %0, i32 0, i32 14
  %126 = load ptr, ptr %125, align 4
  tail call void @kfree(ptr noundef %126) #9
  store ptr null, ptr %125, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @nfs_pageio_cond_complete(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.nfs_pageio_descriptor, ptr %0, i32 0, i32 11
  %4 = load i32, ptr %3, align 4
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %35, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.nfs_pageio_descriptor, ptr %0, i32 0, i32 1
  %8 = getelementptr inbounds %struct.nfs_pageio_descriptor, ptr %0, i32 0, i32 12
  br label %9

9:                                                ; preds = %31, %6
  %10 = phi i32 [ 0, %6 ], [ %32, %31 ]
  %11 = load ptr, ptr %7, align 4
  %12 = getelementptr inbounds %struct.nfs_pageio_ops, ptr %11, i32 0, i32 5
  %13 = load ptr, ptr %12, align 4
  %14 = icmp eq ptr %13, null
  br i1 %14, label %17, label %15

15:                                               ; preds = %9
  %16 = tail call ptr %13(ptr noundef %0, i32 noundef %10) #9
  br label %19

17:                                               ; preds = %9
  %18 = load ptr, ptr %8, align 4
  br label %19

19:                                               ; preds = %17, %15
  %20 = phi ptr [ %16, %15 ], [ %18, %17 ]
  %21 = load volatile ptr, ptr %20, align 4
  %22 = icmp eq ptr %21, %20
  br i1 %22, label %31, label %23

23:                                               ; preds = %19
  %24 = getelementptr inbounds %struct.list_head, ptr %20, i32 0, i32 1
  %25 = load ptr, ptr %24, align 4
  %26 = getelementptr inbounds %struct.nfs_page, ptr %25, i32 0, i32 3
  %27 = load i32, ptr %26, align 4
  %28 = add i32 %27, 1
  %29 = icmp eq i32 %28, %1
  br i1 %29, label %31, label %30

30:                                               ; preds = %23
  tail call void @nfs_pageio_complete(ptr noundef %0)
  br label %35

31:                                               ; preds = %23, %19
  %32 = add nuw i32 %10, 1
  %33 = load i32, ptr %3, align 4
  %34 = icmp ult i32 %32, %33
  br i1 %34, label %9, label %35

35:                                               ; preds = %31, %30, %2
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @nfs_pageio_stop_mirroring(ptr noundef %0) local_unnamed_addr #0 {
  tail call void @nfs_pageio_complete(ptr noundef %0)
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local i32 @nfs_init_nfspagecache() local_unnamed_addr #5 section ".init.text" {
  %1 = tail call ptr @kmem_cache_create(ptr noundef nonnull @.str.6, i32 noundef 60, i32 noundef 0, i32 noundef 8192, ptr noundef null) #9
  store ptr %1, ptr @nfs_page_cachep, align 4
  %2 = icmp eq ptr %1, null
  %3 = select i1 %2, i32 -12, i32 0
  ret i32 %3
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kmem_cache_create(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @nfs_destroy_nfspagecache() local_unnamed_addr #0 {
  %1 = load ptr, ptr @nfs_page_cachep, align 4
  tail call void @kmem_cache_destroy(ptr noundef %1) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kmem_cache_destroy(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @nfs_generic_pg_pgios(ptr noundef %0) #0 {
  %2 = alloca %struct.rpc_message, align 4
  %3 = alloca %struct.rpc_task_setup, align 4
  %4 = getelementptr inbounds %struct.nfs_pageio_descriptor, ptr %0, i32 0, i32 2
  %5 = load ptr, ptr %4, align 4
  %6 = load ptr, ptr %5, align 4
  %7 = tail call ptr %6() #9
  %8 = icmp eq ptr %7, null
  br i1 %8, label %9, label %11

9:                                                ; preds = %1
  %10 = getelementptr inbounds %struct.nfs_pageio_descriptor, ptr %0, i32 0, i32 4
  store i32 -12, ptr %10, align 4
  br label %116

11:                                               ; preds = %1
  %12 = getelementptr inbounds %struct.nfs_pgio_header, ptr %7, i32 0, i32 2
  store volatile ptr %12, ptr %12, align 4
  %13 = getelementptr inbounds %struct.nfs_pgio_header, ptr %7, i32 0, i32 2, i32 1
  store ptr %12, ptr %13, align 4
  %14 = getelementptr inbounds %struct.nfs_pgio_header, ptr %7, i32 0, i32 11
  store ptr %5, ptr %14, align 4
  %15 = getelementptr inbounds %struct.nfs_pageio_descriptor, ptr %0, i32 0, i32 1
  %16 = load ptr, ptr %15, align 4
  %17 = getelementptr inbounds %struct.nfs_pageio_ops, ptr %16, i32 0, i32 5
  %18 = load ptr, ptr %17, align 4
  %19 = icmp eq ptr %18, null
  br i1 %19, label %24, label %20

20:                                               ; preds = %11
  %21 = getelementptr inbounds %struct.nfs_pageio_descriptor, ptr %0, i32 0, i32 15
  %22 = load i32, ptr %21, align 4
  %23 = tail call ptr %18(ptr noundef %0, i32 noundef %22) #9
  br label %27

24:                                               ; preds = %11
  %25 = getelementptr inbounds %struct.nfs_pageio_descriptor, ptr %0, i32 0, i32 12
  %26 = load ptr, ptr %25, align 4
  br label %27

27:                                               ; preds = %24, %20
  %28 = phi ptr [ %23, %20 ], [ %26, %24 ]
  %29 = load ptr, ptr %28, align 4
  %30 = getelementptr inbounds %struct.nfs_pgio_header, ptr %7, i32 0, i32 3
  store ptr %29, ptr %30, align 8
  %31 = load ptr, ptr %0, align 4
  store ptr %31, ptr %7, align 8
  %32 = getelementptr inbounds %struct.nfs_page, ptr %29, i32 0, i32 2
  %33 = load ptr, ptr %32, align 4
  %34 = getelementptr inbounds %struct.nfs_lock_context, ptr %33, i32 0, i32 2
  %35 = load ptr, ptr %34, align 4
  %36 = getelementptr inbounds %struct.nfs_open_context, ptr %35, i32 0, i32 3
  %37 = load ptr, ptr %36, align 4
  %38 = getelementptr inbounds %struct.nfs_pgio_header, ptr %7, i32 0, i32 1
  store ptr %37, ptr %38, align 4
  %39 = getelementptr inbounds %struct.nfs_page, ptr %29, i32 0, i32 3
  %40 = load i32, ptr %39, align 4
  %41 = zext i32 %40 to i64
  %42 = shl nuw nsw i64 %41, 12
  %43 = getelementptr inbounds %struct.nfs_page, ptr %29, i32 0, i32 4
  %44 = load i32, ptr %43, align 4
  %45 = zext i32 %44 to i64
  %46 = add nuw nsw i64 %42, %45
  %47 = getelementptr inbounds %struct.nfs_pgio_header, ptr %7, i32 0, i32 7
  store i64 %46, ptr %47, align 8
  %48 = getelementptr inbounds %struct.nfs_pgio_mirror, ptr %28, i32 0, i32 2
  %49 = load i32, ptr %48, align 4
  %50 = getelementptr inbounds %struct.nfs_pgio_header, ptr %7, i32 0, i32 16
  store i32 %49, ptr %50, align 8
  %51 = getelementptr inbounds %struct.nfs_pageio_descriptor, ptr %0, i32 0, i32 8
  %52 = load ptr, ptr %51, align 4
  %53 = getelementptr inbounds %struct.nfs_pgio_header, ptr %7, i32 0, i32 12
  store ptr %52, ptr %53, align 8
  %54 = getelementptr inbounds %struct.nfs_pageio_descriptor, ptr %0, i32 0, i32 9
  %55 = load ptr, ptr %54, align 4
  %56 = getelementptr inbounds %struct.nfs_pgio_header, ptr %7, i32 0, i32 13
  store ptr %55, ptr %56, align 4
  %57 = getelementptr inbounds %struct.nfs_pgio_header, ptr %7, i32 0, i32 9
  store ptr @nfs_pgio_header_free, ptr %57, align 4
  %58 = getelementptr inbounds %struct.nfs_pageio_descriptor, ptr %0, i32 0, i32 6
  %59 = load ptr, ptr %58, align 4
  %60 = getelementptr inbounds %struct.nfs_pgio_header, ptr %7, i32 0, i32 10
  store ptr %59, ptr %60, align 8
  %61 = getelementptr inbounds %struct.nfs_pgio_completion_ops, ptr %59, i32 0, i32 1
  %62 = load ptr, ptr %61, align 4
  %63 = icmp eq ptr %62, null
  br i1 %63, label %65, label %64

64:                                               ; preds = %27
  tail call void %62(ptr noundef nonnull %7) #9
  br label %65

65:                                               ; preds = %64, %27
  %66 = getelementptr inbounds %struct.nfs_pageio_descriptor, ptr %0, i32 0, i32 15
  %67 = load i32, ptr %66, align 4
  %68 = getelementptr inbounds %struct.nfs_pgio_header, ptr %7, i32 0, i32 28
  store i32 %67, ptr %68, align 8
  %69 = tail call i32 @nfs_generic_pgio(ptr noundef %0, ptr noundef nonnull %7)
  %70 = icmp eq i32 %69, 0
  br i1 %70, label %71, label %116

71:                                               ; preds = %65
  %72 = load ptr, ptr %7, align 8
  %73 = getelementptr inbounds %struct.inode, ptr %72, i32 0, i32 8
  %74 = load ptr, ptr %73, align 4
  %75 = getelementptr inbounds %struct.super_block, ptr %74, i32 0, i32 27
  %76 = load ptr, ptr %75, align 4
  %77 = load ptr, ptr %76, align 8
  %78 = getelementptr inbounds %struct.nfs_client, ptr %77, i32 0, i32 15
  %79 = load i32, ptr %78, align 8
  %80 = icmp eq i32 %79, 0
  %81 = getelementptr inbounds %struct.nfs_server, ptr %76, i32 0, i32 3
  %82 = load ptr, ptr %81, align 4
  %83 = load ptr, ptr %38, align 4
  %84 = getelementptr inbounds %struct.nfs_client, ptr %77, i32 0, i32 12
  %85 = load ptr, ptr %84, align 4
  %86 = getelementptr inbounds %struct.nfs_pageio_descriptor, ptr %0, i32 0, i32 5
  %87 = load ptr, ptr %86, align 4
  %88 = getelementptr inbounds %struct.nfs_pageio_descriptor, ptr %0, i32 0, i32 3
  %89 = load i32, ptr %88, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %2) #9
  %90 = getelementptr inbounds %struct.rpc_message, ptr %2, i32 0, i32 1
  %91 = getelementptr inbounds %struct.nfs_pgio_header, ptr %7, i32 0, i32 20
  store i32 0, ptr %2, align 4
  store ptr %91, ptr %90, align 4
  %92 = getelementptr inbounds %struct.rpc_message, ptr %2, i32 0, i32 2
  %93 = getelementptr inbounds %struct.nfs_pgio_header, ptr %7, i32 0, i32 21
  store ptr %93, ptr %92, align 4
  %94 = getelementptr inbounds %struct.rpc_message, ptr %2, i32 0, i32 3
  store ptr %83, ptr %94, align 4
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %3) #9
  %95 = getelementptr inbounds i8, ptr %3, i32 32
  store i32 0, ptr %95, align 4, !annotation !10
  %96 = getelementptr inbounds %struct.nfs_pgio_header, ptr %7, i32 0, i32 18
  store ptr %96, ptr %3, align 4
  %97 = getelementptr inbounds %struct.rpc_task_setup, ptr %3, i32 0, i32 1
  store ptr %82, ptr %97, align 4
  %98 = getelementptr inbounds %struct.rpc_task_setup, ptr %3, i32 0, i32 2
  store ptr null, ptr %98, align 4
  %99 = getelementptr inbounds %struct.rpc_task_setup, ptr %3, i32 0, i32 3
  store ptr null, ptr %99, align 4
  %100 = getelementptr inbounds %struct.rpc_task_setup, ptr %3, i32 0, i32 4
  store ptr %2, ptr %100, align 4
  %101 = getelementptr inbounds %struct.rpc_task_setup, ptr %3, i32 0, i32 5
  store ptr %87, ptr %101, align 4
  %102 = getelementptr inbounds %struct.rpc_task_setup, ptr %3, i32 0, i32 6
  store ptr %7, ptr %102, align 4
  %103 = getelementptr inbounds %struct.rpc_task_setup, ptr %3, i32 0, i32 7
  %104 = load ptr, ptr @nfsiod_workqueue, align 4
  store ptr %104, ptr %103, align 4
  %105 = select i1 %80, i16 -32767, i16 -32763
  store i16 %105, ptr %95, align 4
  %106 = load ptr, ptr %14, align 4
  %107 = getelementptr inbounds %struct.nfs_rw_ops, ptr %106, i32 0, i32 4
  %108 = load ptr, ptr %107, align 4
  call void %108(ptr noundef nonnull %7, ptr noundef nonnull %2, ptr noundef %85, ptr noundef nonnull %3, i32 noundef %89) #9
  %109 = call ptr @rpc_run_task(ptr noundef nonnull %3) #9
  %110 = icmp ugt ptr %109, inttoptr (i32 -4096 to ptr)
  br i1 %110, label %111, label %113

111:                                              ; preds = %71
  %112 = ptrtoint ptr %109 to i32
  br label %114

113:                                              ; preds = %71
  call void @rpc_put_task(ptr noundef %109) #9
  br label %114

114:                                              ; preds = %113, %111
  %115 = phi i32 [ %112, %111 ], [ 0, %113 ]
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %3) #9
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %2) #9
  br label %116

116:                                              ; preds = %114, %65, %9
  %117 = phi i32 [ -12, %9 ], [ %115, %114 ], [ %69, %65 ]
  ret i32 %117
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_nfs_pgio_error(ptr noundef, ptr noundef, i32 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.thread.pointer() #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @out_of_line_wait_on_bit_lock(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bit_wait(ptr noundef, i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @kmem_cache_alloc(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__page_file_index(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @swapcache_mapping(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @wake_up_var(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rpc_wake_up(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__put_page(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kmem_cache_free(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @out_of_line_wait_on_bit(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bit_wait_io(ptr noundef, i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @put_nfs_open_context(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @get_nfs_open_context(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @nfs_fattr_init(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @__nfs_pageio_add_request(ptr noundef %0, ptr noundef %1) unnamed_addr #0 {
  %3 = alloca %struct.list_head, align 8
  %4 = getelementptr inbounds %struct.nfs_pageio_descriptor, ptr %0, i32 0, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.nfs_pageio_ops, ptr %5, i32 0, i32 5
  %7 = load ptr, ptr %6, align 4
  %8 = icmp eq ptr %7, null
  br i1 %8, label %13, label %9

9:                                                ; preds = %2
  %10 = getelementptr inbounds %struct.nfs_pageio_descriptor, ptr %0, i32 0, i32 15
  %11 = load i32, ptr %10, align 4
  %12 = tail call ptr %7(ptr noundef %0, i32 noundef %11) #9
  br label %16

13:                                               ; preds = %2
  %14 = getelementptr inbounds %struct.nfs_pageio_descriptor, ptr %0, i32 0, i32 12
  %15 = load ptr, ptr %14, align 4
  br label %16

16:                                               ; preds = %13, %9
  %17 = phi ptr [ %12, %9 ], [ %15, %13 ]
  %18 = tail call i32 @nfs_page_group_lock(ptr noundef %1)
  %19 = getelementptr inbounds %struct.nfs_page, ptr %1, i32 0, i32 6
  %20 = load i32, ptr %19, align 4
  %21 = getelementptr inbounds %struct.nfs_pageio_descriptor, ptr %0, i32 0, i32 15
  %22 = getelementptr inbounds %struct.nfs_pageio_descriptor, ptr %0, i32 0, i32 12
  %23 = getelementptr inbounds %struct.nfs_pageio_descriptor, ptr %0, i32 0, i32 4
  %24 = getelementptr inbounds %struct.nfs_pageio_descriptor, ptr %0, i32 0, i32 16
  %25 = getelementptr inbounds %struct.nfs_page, ptr %1, i32 0, i32 11
  %26 = getelementptr inbounds %struct.nfs_page, ptr %1, i32 0, i32 8
  %27 = getelementptr inbounds %struct.list_head, ptr %3, i32 0, i32 1
  %28 = getelementptr inbounds %struct.nfs_pageio_descriptor, ptr %0, i32 0, i32 6
  %29 = getelementptr inbounds %struct.nfs_page, ptr %1, i32 0, i32 5
  %30 = getelementptr inbounds %struct.nfs_page, ptr %1, i32 0, i32 4
  %31 = getelementptr inbounds %struct.nfs_pageio_descriptor, ptr %0, i32 0, i32 17
  %32 = getelementptr inbounds %struct.nfs_pgio_mirror, ptr %17, i32 0, i32 5
  br label %33

33:                                               ; preds = %222, %16
  %34 = phi ptr [ %1, %16 ], [ %223, %222 ]
  %35 = phi i32 [ %20, %16 ], [ %224, %222 ]
  %36 = load ptr, ptr %4, align 4
  %37 = getelementptr inbounds %struct.nfs_pageio_ops, ptr %36, i32 0, i32 5
  %38 = load ptr, ptr %37, align 4
  %39 = icmp eq ptr %38, null
  br i1 %39, label %43, label %40

40:                                               ; preds = %33
  %41 = load i32, ptr %21, align 4
  %42 = call ptr %38(ptr noundef %0, i32 noundef %41) #9
  br label %45

43:                                               ; preds = %33
  %44 = load ptr, ptr %22, align 4
  br label %45

45:                                               ; preds = %43, %40
  %46 = phi ptr [ %42, %40 ], [ %44, %43 ]
  %47 = load volatile ptr, ptr %46, align 4
  %48 = icmp eq ptr %47, %46
  br i1 %48, label %49, label %65

49:                                               ; preds = %45
  %50 = load ptr, ptr %4, align 4
  %51 = load ptr, ptr %50, align 4
  %52 = icmp eq ptr %51, null
  br i1 %52, label %54, label %53

53:                                               ; preds = %49
  call void %51(ptr noundef %0, ptr noundef %34) #9
  br label %54

54:                                               ; preds = %53, %49
  %55 = load i32, ptr %23, align 4
  %56 = icmp slt i32 %55, 0
  br i1 %56, label %210, label %57

57:                                               ; preds = %54
  %58 = getelementptr inbounds %struct.nfs_page, ptr %34, i32 0, i32 5
  %59 = load i32, ptr %58, align 4
  %60 = getelementptr inbounds %struct.nfs_pgio_mirror, ptr %46, i32 0, i32 4
  store i32 %59, ptr %60, align 4
  %61 = getelementptr inbounds %struct.nfs_pgio_mirror, ptr %46, i32 0, i32 2
  store i32 0, ptr %61, align 4
  %62 = getelementptr inbounds %struct.nfs_pgio_mirror, ptr %46, i32 0, i32 5
  %63 = load i8, ptr %62, align 4
  %64 = and i8 %63, -2
  store i8 %64, ptr %62, align 4
  br label %68

65:                                               ; preds = %45
  %66 = getelementptr inbounds %struct.list_head, ptr %46, i32 0, i32 1
  %67 = load ptr, ptr %66, align 4
  br label %68

68:                                               ; preds = %65, %57
  %69 = phi ptr [ null, %57 ], [ %67, %65 ]
  %70 = load i16, ptr %24, align 4
  %71 = icmp eq i16 %70, 0
  br i1 %71, label %88, label %72

72:                                               ; preds = %68
  %73 = getelementptr inbounds %struct.nfs_page, ptr %34, i32 0, i32 12
  %74 = load i16, ptr %73, align 4
  %75 = icmp ugt i16 %74, %70
  br i1 %75, label %76, label %88

76:                                               ; preds = %72
  %77 = load ptr, ptr %0, align 4
  %78 = getelementptr inbounds %struct.inode, ptr %77, i32 0, i32 8
  %79 = load ptr, ptr %78, align 4
  %80 = getelementptr inbounds %struct.super_block, ptr %79, i32 0, i32 27
  %81 = load ptr, ptr %80, align 4
  %82 = getelementptr inbounds %struct.nfs_server, ptr %81, i32 0, i32 8
  %83 = load i32, ptr %82, align 8
  %84 = and i32 %83, 4194304
  %85 = icmp eq i32 %84, 0
  br i1 %85, label %87, label %86

86:                                               ; preds = %76
  store i32 -110, ptr %23, align 4
  br label %210

87:                                               ; preds = %76
  store i32 -5, ptr %23, align 4
  br label %210

88:                                               ; preds = %72, %68
  %89 = icmp eq ptr %69, null
  br i1 %89, label %188, label %90

90:                                               ; preds = %88
  %91 = getelementptr inbounds %struct.nfs_page, ptr %34, i32 0, i32 2
  %92 = load ptr, ptr %91, align 4
  %93 = getelementptr inbounds %struct.nfs_lock_context, ptr %92, i32 0, i32 2
  %94 = load ptr, ptr %93, align 4
  %95 = getelementptr inbounds %struct.nfs_page, ptr %69, i32 0, i32 2
  %96 = load ptr, ptr %95, align 4
  %97 = getelementptr inbounds %struct.nfs_lock_context, ptr %96, i32 0, i32 2
  %98 = load ptr, ptr %97, align 4
  %99 = getelementptr inbounds %struct.nfs_open_context, ptr %94, i32 0, i32 3
  %100 = load ptr, ptr %99, align 4
  %101 = getelementptr inbounds %struct.nfs_open_context, ptr %98, i32 0, i32 3
  %102 = load ptr, ptr %101, align 4
  %103 = call i32 @cred_fscmp(ptr noundef %100, ptr noundef %102) #9
  %104 = icmp eq i32 %103, 0
  br i1 %104, label %105, label %193

105:                                              ; preds = %90
  %106 = getelementptr inbounds %struct.nfs_open_context, ptr %94, i32 0, i32 5
  %107 = load ptr, ptr %106, align 4
  %108 = getelementptr inbounds %struct.nfs_open_context, ptr %98, i32 0, i32 5
  %109 = load ptr, ptr %108, align 4
  %110 = icmp eq ptr %107, %109
  br i1 %110, label %111, label %193

111:                                              ; preds = %105
  %112 = load ptr, ptr %91, align 4
  %113 = getelementptr inbounds %struct.nfs_lock_context, ptr %112, i32 0, i32 2
  %114 = load ptr, ptr %113, align 4
  %115 = getelementptr inbounds %struct.nfs_open_context, ptr %114, i32 0, i32 2
  %116 = load ptr, ptr %115, align 4
  %117 = getelementptr inbounds %struct.dentry, ptr %116, i32 0, i32 5
  %118 = load ptr, ptr %117, align 8
  %119 = getelementptr inbounds %struct.inode, ptr %118, i32 0, i32 40
  %120 = load ptr, ptr %119, align 4
  %121 = icmp eq ptr %120, null
  br i1 %121, label %146, label %122

122:                                              ; preds = %111
  %123 = getelementptr inbounds %struct.file_lock_context, ptr %120, i32 0, i32 2
  %124 = load volatile ptr, ptr %123, align 4
  call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !29
  %125 = icmp eq ptr %124, %123
  br i1 %125, label %126, label %138

126:                                              ; preds = %122
  %127 = getelementptr inbounds %struct.file_lock_context, ptr %120, i32 0, i32 2, i32 1
  %128 = load ptr, ptr %127, align 4
  %129 = icmp eq ptr %128, %123
  br i1 %129, label %130, label %138

130:                                              ; preds = %126
  %131 = getelementptr inbounds %struct.file_lock_context, ptr %120, i32 0, i32 1
  %132 = load volatile ptr, ptr %131, align 4
  call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !29
  %133 = icmp eq ptr %132, %131
  br i1 %133, label %134, label %138

134:                                              ; preds = %130
  %135 = getelementptr inbounds %struct.file_lock_context, ptr %120, i32 0, i32 1, i32 1
  %136 = load ptr, ptr %135, align 4
  %137 = icmp eq ptr %136, %131
  br i1 %137, label %146, label %138

138:                                              ; preds = %134, %130, %126, %122
  %139 = load ptr, ptr %91, align 4
  %140 = load ptr, ptr %95, align 4
  %141 = getelementptr inbounds %struct.nfs_lock_context, ptr %139, i32 0, i32 3
  %142 = load ptr, ptr %141, align 4
  %143 = getelementptr inbounds %struct.nfs_lock_context, ptr %140, i32 0, i32 3
  %144 = load ptr, ptr %143, align 4
  %145 = icmp eq ptr %142, %144
  br i1 %145, label %146, label %193

146:                                              ; preds = %138, %134, %111
  %147 = getelementptr inbounds %struct.nfs_page, ptr %34, i32 0, i32 3
  %148 = load i32, ptr %147, align 4
  %149 = zext i32 %148 to i64
  %150 = shl nuw nsw i64 %149, 12
  %151 = getelementptr inbounds %struct.nfs_page, ptr %34, i32 0, i32 4
  %152 = load i32, ptr %151, align 4
  %153 = zext i32 %152 to i64
  %154 = add nuw nsw i64 %150, %153
  %155 = getelementptr inbounds %struct.nfs_page, ptr %69, i32 0, i32 3
  %156 = load i32, ptr %155, align 4
  %157 = zext i32 %156 to i64
  %158 = shl nuw nsw i64 %157, 12
  %159 = getelementptr inbounds %struct.nfs_page, ptr %69, i32 0, i32 4
  %160 = load i32, ptr %159, align 4
  %161 = zext i32 %160 to i64
  %162 = add nuw nsw i64 %158, %161
  %163 = getelementptr inbounds %struct.nfs_page, ptr %69, i32 0, i32 6
  %164 = load i32, ptr %163, align 4
  %165 = zext i32 %164 to i64
  %166 = add nuw nsw i64 %162, %165
  %167 = icmp eq i64 %154, %166
  br i1 %167, label %168, label %193

168:                                              ; preds = %146
  %169 = getelementptr inbounds %struct.nfs_page, ptr %34, i32 0, i32 1
  %170 = load ptr, ptr %169, align 4
  %171 = getelementptr inbounds %struct.nfs_page, ptr %69, i32 0, i32 1
  %172 = load ptr, ptr %171, align 4
  %173 = icmp eq ptr %170, %172
  %174 = getelementptr inbounds %struct.nfs_page, ptr %34, i32 0, i32 5
  %175 = load i32, ptr %174, align 4
  br i1 %173, label %176, label %181

176:                                              ; preds = %168
  %177 = getelementptr inbounds %struct.nfs_page, ptr %69, i32 0, i32 5
  %178 = load i32, ptr %177, align 4
  %179 = add i32 %178, %164
  %180 = icmp eq i32 %175, %179
  br i1 %180, label %188, label %193

181:                                              ; preds = %168
  %182 = icmp eq i32 %175, 0
  br i1 %182, label %183, label %193

183:                                              ; preds = %181
  %184 = getelementptr inbounds %struct.nfs_page, ptr %69, i32 0, i32 5
  %185 = load i32, ptr %184, align 4
  %186 = add i32 %185, %164
  %187 = icmp eq i32 %186, 4096
  br i1 %187, label %188, label %193

188:                                              ; preds = %183, %176, %88
  %189 = load ptr, ptr %4, align 4
  %190 = getelementptr inbounds %struct.nfs_pageio_ops, ptr %189, i32 0, i32 1
  %191 = load ptr, ptr %190, align 4
  %192 = call i32 %191(ptr noundef %0, ptr noundef %69, ptr noundef %34) #9
  br label %193

193:                                              ; preds = %188, %183, %181, %176, %146, %138, %105, %90
  %194 = phi i32 [ %192, %188 ], [ 0, %105 ], [ 0, %138 ], [ 0, %146 ], [ 0, %176 ], [ 0, %183 ], [ 0, %181 ], [ 0, %90 ]
  %195 = getelementptr inbounds %struct.nfs_page, ptr %34, i32 0, i32 6
  %196 = load i32, ptr %195, align 4
  %197 = icmp ult i32 %194, %196
  br i1 %197, label %210, label %198

198:                                              ; preds = %193
  %199 = getelementptr inbounds %struct.list_head, ptr %34, i32 0, i32 1
  %200 = load ptr, ptr %199, align 4
  %201 = load ptr, ptr %34, align 4
  %202 = getelementptr inbounds %struct.list_head, ptr %201, i32 0, i32 1
  store ptr %200, ptr %202, align 4
  store volatile ptr %201, ptr %200, align 4
  %203 = getelementptr inbounds %struct.list_head, ptr %46, i32 0, i32 1
  %204 = load ptr, ptr %203, align 4
  store ptr %34, ptr %203, align 4
  store ptr %46, ptr %34, align 4
  store ptr %204, ptr %199, align 4
  store volatile ptr %34, ptr %204, align 4
  %205 = load i32, ptr %195, align 4
  %206 = getelementptr inbounds %struct.nfs_pgio_mirror, ptr %46, i32 0, i32 2
  %207 = load i32, ptr %206, align 4
  %208 = add i32 %207, %205
  store i32 %208, ptr %206, align 4
  %209 = load i32, ptr %195, align 4
  br label %210

210:                                              ; preds = %198, %193, %87, %86, %54
  %211 = phi i32 [ %209, %198 ], [ 0, %54 ], [ 0, %87 ], [ 0, %86 ], [ %194, %193 ]
  %212 = icmp eq i32 %211, %35
  br i1 %212, label %213, label %225

213:                                              ; preds = %210
  %214 = icmp eq ptr %34, %1
  br i1 %214, label %324, label %215

215:                                              ; preds = %213
  %216 = load i32, ptr %29, align 4
  %217 = add i32 %216, %35
  store i32 %217, ptr %29, align 4
  %218 = load i32, ptr %19, align 4
  %219 = sub i32 %218, %35
  store i32 %219, ptr %19, align 4
  %220 = load i32, ptr %30, align 4
  %221 = add i32 %220, %35
  store i32 %221, ptr %30, align 4
  br label %222

222:                                              ; preds = %319, %317, %215
  %223 = phi ptr [ %1, %215 ], [ %1, %317 ], [ %322, %319 ]
  %224 = phi i32 [ %219, %215 ], [ %260, %317 ], [ %211, %319 ]
  br label %33

225:                                              ; preds = %210
  %226 = icmp ne ptr %34, %1
  %227 = load i1, ptr @__nfs_pageio_add_request.__already_done, align 1
  %228 = xor i1 %227, true
  %229 = select i1 %226, i1 %228, i1 false
  br i1 %229, label %230, label %231, !prof !14

230:                                              ; preds = %225
  store i1 true, ptr @__nfs_pageio_add_request.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1181, i32 noundef 9, ptr noundef null) #9
  br label %231

231:                                              ; preds = %230, %225
  br i1 %226, label %232, label %259

232:                                              ; preds = %231
  %233 = load ptr, ptr %25, align 4
  %234 = icmp eq ptr %233, %1
  br i1 %234, label %242, label %235

235:                                              ; preds = %232
  %236 = getelementptr inbounds %struct.nfs_page, ptr %233, i32 0, i32 8
  call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !17
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %236) #9, !srcloc !12
  %237 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_andnot\0A1:\09ldrex\09$0, [$4]\0A\09bic\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %236, ptr %236, i32 32, ptr elementtype(i32) %236) #9, !srcloc !18
  call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !19
  %238 = load volatile i32, ptr %236, align 4
  %239 = and i32 %238, 2048
  %240 = icmp eq i32 %239, 0
  br i1 %240, label %242, label %241

241:                                              ; preds = %235
  call void @wake_up_bit(ptr noundef %236, i32 noundef 5) #9
  br label %242

242:                                              ; preds = %241, %235, %232
  call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !17
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %26) #9, !srcloc !12
  %243 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_andnot\0A1:\09ldrex\09$0, [$4]\0A\09bic\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %26, ptr %26, i32 32, ptr elementtype(i32) %26) #9, !srcloc !18
  call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !19
  %244 = load volatile i32, ptr %26, align 4
  %245 = and i32 %244, 2048
  %246 = icmp eq i32 %245, 0
  br i1 %246, label %248, label %247

247:                                              ; preds = %242
  call void @wake_up_bit(ptr noundef %26, i32 noundef 5) #9
  br label %248

248:                                              ; preds = %247, %242
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #9
  store ptr %3, ptr %3, align 8
  store ptr %3, ptr %27, align 4
  %249 = getelementptr inbounds %struct.list_head, ptr %34, i32 0, i32 1
  %250 = load ptr, ptr %249, align 4
  %251 = load ptr, ptr %34, align 4
  %252 = getelementptr inbounds %struct.list_head, ptr %251, i32 0, i32 1
  store ptr %250, ptr %252, align 4
  store volatile ptr %251, ptr %250, align 4
  %253 = load ptr, ptr %27, align 4
  store ptr %34, ptr %27, align 4
  store ptr %3, ptr %34, align 4
  store ptr %253, ptr %249, align 4
  store volatile ptr %34, ptr %253, align 4
  %254 = load ptr, ptr %28, align 4
  %255 = load ptr, ptr %254, align 4
  %256 = load i32, ptr %23, align 4
  call void %255(ptr noundef nonnull %3, i32 noundef %256) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #9
  %257 = load i32, ptr %19, align 4
  %258 = call i32 @nfs_page_group_lock(ptr noundef %1)
  br label %259

259:                                              ; preds = %248, %231
  %260 = phi i32 [ %257, %248 ], [ %35, %231 ]
  %261 = icmp eq i32 %211, 0
  br i1 %261, label %262, label %319

262:                                              ; preds = %259
  %263 = load ptr, ptr %25, align 4
  %264 = icmp eq ptr %263, %1
  br i1 %264, label %272, label %265

265:                                              ; preds = %262
  %266 = getelementptr inbounds %struct.nfs_page, ptr %263, i32 0, i32 8
  call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !17
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %266) #9, !srcloc !12
  %267 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_andnot\0A1:\09ldrex\09$0, [$4]\0A\09bic\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %266, ptr %266, i32 32, ptr elementtype(i32) %266) #9, !srcloc !18
  call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !19
  %268 = load volatile i32, ptr %266, align 4
  %269 = and i32 %268, 2048
  %270 = icmp eq i32 %269, 0
  br i1 %270, label %272, label %271

271:                                              ; preds = %265
  call void @wake_up_bit(ptr noundef %266, i32 noundef 5) #9
  br label %272

272:                                              ; preds = %271, %265, %262
  call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !17
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %26) #9, !srcloc !12
  %273 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_andnot\0A1:\09ldrex\09$0, [$4]\0A\09bic\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %26, ptr %26, i32 32, ptr elementtype(i32) %26) #9, !srcloc !18
  call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !19
  %274 = load volatile i32, ptr %26, align 4
  %275 = and i32 %274, 2048
  %276 = icmp eq i32 %275, 0
  br i1 %276, label %278, label %277

277:                                              ; preds = %272
  call void @wake_up_bit(ptr noundef %26, i32 noundef 5) #9
  br label %278

278:                                              ; preds = %277, %272
  %279 = load i8, ptr %31, align 2
  %280 = or i8 %279, 1
  store i8 %280, ptr %31, align 2
  %281 = load ptr, ptr %4, align 4
  %282 = getelementptr inbounds %struct.nfs_pageio_ops, ptr %281, i32 0, i32 5
  %283 = load ptr, ptr %282, align 4
  %284 = icmp eq ptr %283, null
  br i1 %284, label %288, label %285

285:                                              ; preds = %278
  %286 = load i32, ptr %21, align 4
  %287 = call ptr %283(ptr noundef %0, i32 noundef %286) #9
  br label %290

288:                                              ; preds = %278
  %289 = load ptr, ptr %22, align 4
  br label %290

290:                                              ; preds = %288, %285
  %291 = phi ptr [ %287, %285 ], [ %289, %288 ]
  %292 = load volatile ptr, ptr %291, align 4
  %293 = icmp eq ptr %292, %291
  br i1 %293, label %310, label %294

294:                                              ; preds = %290
  %295 = load ptr, ptr %4, align 4
  %296 = getelementptr inbounds %struct.nfs_pageio_ops, ptr %295, i32 0, i32 2
  %297 = load ptr, ptr %296, align 4
  %298 = call i32 %297(ptr noundef %0) #9
  %299 = icmp slt i32 %298, 0
  br i1 %299, label %300, label %301

300:                                              ; preds = %294
  store i32 %298, ptr %23, align 4
  br label %301

301:                                              ; preds = %300, %294
  %302 = load volatile ptr, ptr %291, align 4
  %303 = icmp eq ptr %302, %291
  br i1 %303, label %304, label %310

304:                                              ; preds = %301
  %305 = getelementptr inbounds %struct.nfs_pgio_mirror, ptr %291, i32 0, i32 2
  %306 = load i32, ptr %305, align 4
  %307 = getelementptr inbounds %struct.nfs_pgio_mirror, ptr %291, i32 0, i32 1
  %308 = load i32, ptr %307, align 4
  %309 = add i32 %308, %306
  store i32 %309, ptr %307, align 4
  br label %310

310:                                              ; preds = %304, %301, %290
  %311 = load i32, ptr %23, align 4
  %312 = icmp slt i32 %311, 0
  br i1 %312, label %357, label %313

313:                                              ; preds = %310
  %314 = load i8, ptr %32, align 4
  %315 = and i8 %314, 1
  %316 = icmp eq i8 %315, 0
  br i1 %316, label %317, label %357

317:                                              ; preds = %313
  %318 = call i32 @nfs_page_group_lock(ptr noundef %1)
  br label %222

319:                                              ; preds = %259
  %320 = load i32, ptr %29, align 4
  %321 = load i32, ptr %30, align 4
  %322 = call fastcc ptr @nfs_create_subreq(ptr noundef %1, i32 noundef %320, i32 noundef %321, i32 noundef %211)
  %323 = icmp ugt ptr %322, inttoptr (i32 -4096 to ptr)
  br i1 %323, label %339, label %222

324:                                              ; preds = %213
  %325 = load ptr, ptr %25, align 4
  %326 = icmp eq ptr %325, %1
  br i1 %326, label %334, label %327

327:                                              ; preds = %324
  %328 = getelementptr inbounds %struct.nfs_page, ptr %325, i32 0, i32 8
  call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !17
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %328) #9, !srcloc !12
  %329 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_andnot\0A1:\09ldrex\09$0, [$4]\0A\09bic\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %328, ptr %328, i32 32, ptr elementtype(i32) %328) #9, !srcloc !18
  call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !19
  %330 = load volatile i32, ptr %328, align 4
  %331 = and i32 %330, 2048
  %332 = icmp eq i32 %331, 0
  br i1 %332, label %334, label %333

333:                                              ; preds = %327
  call void @wake_up_bit(ptr noundef %328, i32 noundef 5) #9
  br label %334

334:                                              ; preds = %333, %327, %324
  call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !17
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %26) #9, !srcloc !12
  %335 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_andnot\0A1:\09ldrex\09$0, [$4]\0A\09bic\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %26, ptr %26, i32 32, ptr elementtype(i32) %26) #9, !srcloc !18
  call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !19
  %336 = load volatile i32, ptr %26, align 4
  %337 = and i32 %336, 2048
  %338 = icmp eq i32 %337, 0
  br i1 %338, label %357, label %355

339:                                              ; preds = %319
  %340 = ptrtoint ptr %322 to i32
  store i32 %340, ptr %23, align 4
  %341 = load ptr, ptr %25, align 4
  %342 = icmp eq ptr %341, %1
  br i1 %342, label %350, label %343

343:                                              ; preds = %339
  %344 = getelementptr inbounds %struct.nfs_page, ptr %341, i32 0, i32 8
  call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !17
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %344) #9, !srcloc !12
  %345 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_andnot\0A1:\09ldrex\09$0, [$4]\0A\09bic\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %344, ptr %344, i32 32, ptr elementtype(i32) %344) #9, !srcloc !18
  call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !19
  %346 = load volatile i32, ptr %344, align 4
  %347 = and i32 %346, 2048
  %348 = icmp eq i32 %347, 0
  br i1 %348, label %350, label %349

349:                                              ; preds = %343
  call void @wake_up_bit(ptr noundef %344, i32 noundef 5) #9
  br label %350

350:                                              ; preds = %349, %343, %339
  call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !17
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %26) #9, !srcloc !12
  %351 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_andnot\0A1:\09ldrex\09$0, [$4]\0A\09bic\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %26, ptr %26, i32 32, ptr elementtype(i32) %26) #9, !srcloc !18
  call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !19
  %352 = load volatile i32, ptr %26, align 4
  %353 = and i32 %352, 2048
  %354 = icmp eq i32 %353, 0
  br i1 %354, label %357, label %355

355:                                              ; preds = %350, %334
  %356 = phi i32 [ 1, %334 ], [ 0, %350 ]
  call void @wake_up_bit(ptr noundef %26, i32 noundef 5) #9
  br label %357

357:                                              ; preds = %355, %350, %334, %313, %310
  %358 = phi i32 [ 1, %334 ], [ 0, %350 ], [ %356, %355 ], [ 0, %313 ], [ 0, %310 ]
  ret i32 %358
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @nfs_do_recoalesce(ptr noundef %0) unnamed_addr #0 {
  %2 = alloca %struct.list_head, align 8
  %3 = getelementptr inbounds %struct.nfs_pageio_descriptor, ptr %0, i32 0, i32 1
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.nfs_pageio_ops, ptr %4, i32 0, i32 5
  %6 = load ptr, ptr %5, align 4
  %7 = icmp eq ptr %6, null
  br i1 %7, label %12, label %8

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.nfs_pageio_descriptor, ptr %0, i32 0, i32 15
  %10 = load i32, ptr %9, align 4
  %11 = tail call ptr %6(ptr noundef %0, i32 noundef %10) #9
  br label %15

12:                                               ; preds = %1
  %13 = getelementptr inbounds %struct.nfs_pageio_descriptor, ptr %0, i32 0, i32 12
  %14 = load ptr, ptr %13, align 4
  br label %15

15:                                               ; preds = %12, %8
  %16 = phi ptr [ %11, %8 ], [ %14, %12 ]
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #9
  store ptr %2, ptr %2, align 8
  %17 = getelementptr inbounds %struct.list_head, ptr %2, i32 0, i32 1
  store ptr %2, ptr %17, align 4
  %18 = getelementptr inbounds %struct.list_head, ptr %16, i32 0, i32 1
  %19 = getelementptr inbounds %struct.nfs_pageio_descriptor, ptr %0, i32 0, i32 4
  %20 = getelementptr inbounds %struct.nfs_pgio_mirror, ptr %16, i32 0, i32 5
  br label %21

21:                                               ; preds = %49, %15
  %22 = load volatile ptr, ptr %16, align 4
  %23 = icmp eq ptr %22, %16
  br i1 %23, label %29, label %24

24:                                               ; preds = %21
  %25 = load ptr, ptr %2, align 8
  %26 = load ptr, ptr %18, align 4
  %27 = getelementptr inbounds %struct.list_head, ptr %22, i32 0, i32 1
  store ptr %2, ptr %27, align 4
  store ptr %22, ptr %2, align 8
  store ptr %25, ptr %26, align 4
  %28 = getelementptr inbounds %struct.list_head, ptr %25, i32 0, i32 1
  store ptr %26, ptr %28, align 4
  store volatile ptr %16, ptr %16, align 4
  store ptr %16, ptr %18, align 4
  br label %29

29:                                               ; preds = %24, %21
  br label %30

30:                                               ; preds = %33, %29
  %31 = load volatile ptr, ptr %2, align 8
  %32 = icmp eq ptr %31, %2
  br i1 %32, label %49, label %33

33:                                               ; preds = %30
  %34 = call fastcc i32 @__nfs_pageio_add_request(ptr noundef %0, ptr noundef %31)
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %36, label %30

36:                                               ; preds = %33
  %37 = load i32, ptr %19, align 4
  %38 = icmp slt i32 %37, 0
  br i1 %38, label %39, label %49

39:                                               ; preds = %36
  %40 = load volatile ptr, ptr %2, align 8
  %41 = icmp eq ptr %40, %2
  br i1 %41, label %46, label %42

42:                                               ; preds = %39
  %43 = load ptr, ptr %18, align 4
  %44 = load ptr, ptr %17, align 4
  %45 = getelementptr inbounds %struct.list_head, ptr %40, i32 0, i32 1
  store ptr %43, ptr %45, align 4
  store ptr %40, ptr %43, align 4
  store ptr %16, ptr %44, align 4
  store ptr %44, ptr %18, align 4
  br label %46

46:                                               ; preds = %42, %39
  %47 = load i8, ptr %20, align 4
  %48 = or i8 %47, 1
  store i8 %48, ptr %20, align 4
  br label %53

49:                                               ; preds = %36, %30
  %50 = load i8, ptr %20, align 4
  %51 = and i8 %50, 1
  %52 = icmp eq i8 %51, 0
  br i1 %52, label %53, label %21

53:                                               ; preds = %49, %46
  %54 = phi i32 [ 0, %46 ], [ 1, %49 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #9
  ret i32 %54
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cred_fscmp(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @nfs_pgio_prepare(ptr noundef %0, ptr noundef %1) #0 {
  %3 = load ptr, ptr %1, align 8
  %4 = getelementptr inbounds %struct.inode, ptr %3, i32 0, i32 8
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.super_block, ptr %5, i32 0, i32 27
  %7 = load ptr, ptr %6, align 4
  %8 = load ptr, ptr %7, align 8
  %9 = getelementptr inbounds %struct.nfs_client, ptr %8, i32 0, i32 12
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr inbounds %struct.nfs_rpc_ops, ptr %10, i32 0, i32 34
  %12 = load ptr, ptr %11, align 4
  %13 = tail call i32 %12(ptr noundef %0, ptr noundef %1) #9
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %16, label %15

15:                                               ; preds = %2
  tail call void @rpc_exit(ptr noundef %0, i32 noundef %13) #9
  br label %16

16:                                               ; preds = %15, %2
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @nfs_pgio_result(ptr noundef %0, ptr noundef %1) #0 {
  %3 = load ptr, ptr %1, align 8
  %4 = getelementptr inbounds %struct.nfs_pgio_header, ptr %1, i32 0, i32 11
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.nfs_rw_ops, ptr %5, i32 0, i32 2
  %7 = load ptr, ptr %6, align 4
  %8 = tail call i32 %7(ptr noundef %0, ptr noundef %1, ptr noundef %3) #9
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %50

10:                                               ; preds = %2
  %11 = getelementptr inbounds %struct.rpc_task, ptr %0, i32 0, i32 1
  %12 = load i32, ptr %11, align 4
  %13 = icmp slt i32 %12, 0
  br i1 %13, label %14, label %46

14:                                               ; preds = %10
  %15 = getelementptr inbounds %struct.nfs_pgio_header, ptr %1, i32 0, i32 20, i32 5
  %16 = load i64, ptr %15, align 8
  %17 = getelementptr inbounds %struct.nfs_pgio_header, ptr %1, i32 0, i32 7
  %18 = load i64, ptr %17, align 8
  %19 = sub i64 %16, %18
  %20 = trunc i64 %19 to i32
  %21 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_nfs_pgio_error, i32 0, i32 1), align 4
  %22 = icmp sgt i32 %21, 0
  br i1 %22, label %23, label %36

23:                                               ; preds = %14
  %24 = tail call ptr @llvm.thread.pointer() #9
  %25 = getelementptr inbounds %struct.thread_info, ptr %24, i32 0, i32 2
  %26 = load i32, ptr %25, align 8
  %27 = lshr i32 %26, 5
  %28 = getelementptr i32, ptr @__cpu_online_mask, i32 %27
  %29 = load volatile i32, ptr %28, align 4
  %30 = and i32 %26, 31
  %31 = shl nuw i32 1, %30
  %32 = and i32 %31, %29
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %36, label %34

34:                                               ; preds = %23
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !8
  %35 = tail call i32 @__traceiter_nfs_pgio_error(ptr noundef null, ptr noundef %1, i32 noundef %12, i64 noundef %16) #9
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !9
  br label %36

36:                                               ; preds = %34, %23, %14
  %37 = getelementptr inbounds %struct.nfs_pgio_header, ptr %1, i32 0, i32 16
  %38 = load i32, ptr %37, align 8
  %39 = icmp ugt i32 %38, %20
  br i1 %39, label %40, label %50

40:                                               ; preds = %36
  store i32 %20, ptr %37, align 8
  %41 = getelementptr inbounds %struct.nfs_pgio_header, ptr %1, i32 0, i32 17
  tail call void @_clear_bit(i32 noundef 1, ptr noundef %41) #9
  %42 = tail call i32 @_test_and_set_bit(i32 noundef 0, ptr noundef %41) #9
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %44, label %50

44:                                               ; preds = %40
  %45 = getelementptr inbounds %struct.nfs_pgio_header, ptr %1, i32 0, i32 15
  store i32 %12, ptr %45, align 4
  br label %50

46:                                               ; preds = %10
  %47 = load ptr, ptr %4, align 4
  %48 = getelementptr inbounds %struct.nfs_rw_ops, ptr %47, i32 0, i32 3
  %49 = load ptr, ptr %48, align 4
  tail call void %49(ptr noundef %0, ptr noundef %1) #9
  br label %50

50:                                               ; preds = %46, %44, %40, %36, %2
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @nfs_pgio_release(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.nfs_pgio_header, ptr %0, i32 0, i32 10
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.nfs_pgio_completion_ops, ptr %3, i32 0, i32 2
  %5 = load ptr, ptr %4, align 4
  tail call void %5(ptr noundef %0) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rpc_exit(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #8

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { argmemonly nofree nounwind willreturn writeonly }
attributes #4 = { argmemonly nofree norecurse nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #7 = { null_pointer_is_valid allocsize(0) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #9 = { nounwind }
attributes #10 = { nounwind allocsize(0) }

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
!8 = !{i64 2157373367}
!9 = !{i64 2157373537}
!10 = !{!"auto-init"}
!11 = !{i64 2157587468}
!12 = !{i64 791723, i64 2148281694, i64 2148281720, i64 2148281767, i64 2148281789, i64 2148281817, i64 2148281837}
!13 = !{i64 2148294567, i64 2148294599, i64 2148294628, i64 2148294662, i64 2148294693, i64 2148294716}
!14 = !{!"branch_weights", i32 1, i32 2000}
!15 = !{!"branch_weights", i32 2000, i32 1}
!16 = !{i64 777786, i64 777810, i64 777831, i64 777848, i64 777865}
!17 = !{i64 2148401876}
!18 = !{i64 2148300030, i64 2148300062, i64 2148300091, i64 2148300125, i64 2148300156, i64 2148300179}
!19 = !{i64 2157572307}
!20 = !{i64 2157579454}
!21 = !{i64 2157572149}
!22 = !{i64 2148293109, i64 2148293135, i64 2148293164, i64 2148293198, i64 2148293229, i64 2148293252}
!23 = !{i64 2148394789}
!24 = !{i64 2148296924, i64 2148296956, i64 2148296985, i64 2148297019, i64 2148297050, i64 2148297073}
!25 = !{i64 2149309679}
!26 = !{i64 2148393788}
!27 = !{i64 2148296150, i64 2148296182, i64 2148296211, i64 2148296245, i64 2148296276, i64 2148296299}
!28 = !{i64 2148393991}
!29 = !{i64 2148070745}
