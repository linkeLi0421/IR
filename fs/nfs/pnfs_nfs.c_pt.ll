; ModuleID = '/llk/IR/fs/nfs/pnfs_nfs.c_pt.bc'
source_filename = "../fs/nfs/pnfs_nfs.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_pnfs_generic_rw_release:\09\09\09\09\09"
module asm "\09.asciz \09\22pnfs_generic_rw_release\22\09\09\09\09\09"
module asm "__kstrtabns_pnfs_generic_rw_release:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_pnfs_generic_prepare_to_resend_writes:\09\09\09\09\09"
module asm "\09.asciz \09\22pnfs_generic_prepare_to_resend_writes\22\09\09\09\09\09"
module asm "__kstrtabns_pnfs_generic_prepare_to_resend_writes:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_pnfs_generic_write_commit_done:\09\09\09\09\09"
module asm "\09.asciz \09\22pnfs_generic_write_commit_done\22\09\09\09\09\09"
module asm "__kstrtabns_pnfs_generic_write_commit_done:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_pnfs_generic_commit_release:\09\09\09\09\09"
module asm "\09.asciz \09\22pnfs_generic_commit_release\22\09\09\09\09\09"
module asm "__kstrtabns_pnfs_generic_commit_release:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_pnfs_generic_clear_request_commit:\09\09\09\09\09"
module asm "\09.asciz \09\22pnfs_generic_clear_request_commit\22\09\09\09\09\09"
module asm "__kstrtabns_pnfs_generic_clear_request_commit:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_pnfs_alloc_commit_array:\09\09\09\09\09"
module asm "\09.asciz \09\22pnfs_alloc_commit_array\22\09\09\09\09\09"
module asm "__kstrtabns_pnfs_alloc_commit_array:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_pnfs_free_commit_array:\09\09\09\09\09"
module asm "\09.asciz \09\22pnfs_free_commit_array\22\09\09\09\09\09"
module asm "__kstrtabns_pnfs_free_commit_array:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_pnfs_add_commit_array:\09\09\09\09\09"
module asm "\09.asciz \09\22pnfs_add_commit_array\22\09\09\09\09\09"
module asm "__kstrtabns_pnfs_add_commit_array:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_pnfs_generic_ds_cinfo_release_lseg:\09\09\09\09\09"
module asm "\09.asciz \09\22pnfs_generic_ds_cinfo_release_lseg\22\09\09\09\09\09"
module asm "__kstrtabns_pnfs_generic_ds_cinfo_release_lseg:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_pnfs_generic_ds_cinfo_destroy:\09\09\09\09\09"
module asm "\09.asciz \09\22pnfs_generic_ds_cinfo_destroy\22\09\09\09\09\09"
module asm "__kstrtabns_pnfs_generic_ds_cinfo_destroy:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_pnfs_generic_scan_commit_lists:\09\09\09\09\09"
module asm "\09.asciz \09\22pnfs_generic_scan_commit_lists\22\09\09\09\09\09"
module asm "__kstrtabns_pnfs_generic_scan_commit_lists:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_pnfs_generic_recover_commit_reqs:\09\09\09\09\09"
module asm "\09.asciz \09\22pnfs_generic_recover_commit_reqs\22\09\09\09\09\09"
module asm "__kstrtabns_pnfs_generic_recover_commit_reqs:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_pnfs_generic_search_commit_reqs:\09\09\09\09\09"
module asm "\09.asciz \09\22pnfs_generic_search_commit_reqs\22\09\09\09\09\09"
module asm "__kstrtabns_pnfs_generic_search_commit_reqs:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_pnfs_generic_commit_pagelist:\09\09\09\09\09"
module asm "\09.asciz \09\22pnfs_generic_commit_pagelist\22\09\09\09\09\09"
module asm "__kstrtabns_pnfs_generic_commit_pagelist:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_nfs4_pnfs_ds_put:\09\09\09\09\09"
module asm "\09.asciz \09\22nfs4_pnfs_ds_put\22\09\09\09\09\09"
module asm "__kstrtabns_nfs4_pnfs_ds_put:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_nfs4_pnfs_ds_add:\09\09\09\09\09"
module asm "\09.asciz \09\22nfs4_pnfs_ds_add\22\09\09\09\09\09"
module asm "__kstrtabns_nfs4_pnfs_ds_add:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_nfs4_pnfs_ds_connect:\09\09\09\09\09"
module asm "\09.asciz \09\22nfs4_pnfs_ds_connect\22\09\09\09\09\09"
module asm "__kstrtabns_nfs4_pnfs_ds_connect:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_nfs4_decode_mp_ds_addr:\09\09\09\09\09"
module asm "\09.asciz \09\22nfs4_decode_mp_ds_addr\22\09\09\09\09\09"
module asm "__kstrtabns_nfs4_decode_mp_ds_addr:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_pnfs_layout_mark_request_commit:\09\09\09\09\09"
module asm "\09.asciz \09\22pnfs_layout_mark_request_commit\22\09\09\09\09\09"
module asm "__kstrtabns_pnfs_layout_mark_request_commit:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_pnfs_nfs_generic_sync:\09\09\09\09\09"
module asm "\09.asciz \09\22pnfs_nfs_generic_sync\22\09\09\09\09\09"
module asm "__kstrtabns_pnfs_nfs_generic_sync:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.spinlock = type { %union.anon.3 }
%union.anon.3 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.4 }
%union.anon.4 = type { i32 }
%struct.list_head = type { ptr, ptr }
%struct.nfs_pgio_header = type { ptr, ptr, %struct.list_head, ptr, %struct.nfs_writeverf, i32, ptr, i64, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, %struct.rpc_task, %struct.nfs_fattr, %struct.nfs_pgio_args, %struct.nfs_pgio_res, i32, ptr, i64, %struct.nfs_page_array, ptr, i32, i32 }
%struct.nfs_writeverf = type { %struct.nfs_write_verifier, i32 }
%struct.nfs_write_verifier = type { [8 x i8] }
%struct.rpc_task = type { %struct.atomic_t, i32, %struct.list_head, ptr, ptr, i32, i32, ptr, %union.anon.87, i32, %struct.rpc_message, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64, i32, i16, i16, i16, i8 }
%struct.atomic_t = type { i32 }
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
%struct.nfs_pgio_args = type { %struct.nfs4_sequence_args, ptr, ptr, ptr, %struct.nfs4_stateid_struct, i64, i32, i32, ptr, %union.anon.150 }
%struct.nfs4_sequence_args = type { ptr, i8 }
%struct.nfs4_stateid_struct = type { %union.anon.116, i32 }
%union.anon.116 = type { %struct.anon.117 }
%struct.anon.117 = type { i32, [12 x i8] }
%union.anon.150 = type { %struct.anon.151 }
%struct.anon.151 = type { ptr, [3 x i32], i32 }
%struct.nfs_pgio_res = type { %struct.nfs4_sequence_res, ptr, i64, i32, %union.anon.152 }
%struct.nfs4_sequence_res = type { ptr, i32, i32, i32, i32, i32 }
%union.anon.152 = type { %struct.anon.153 }
%struct.anon.153 = type { i32, i32 }
%struct.nfs_page_array = type { ptr, i32, [8 x ptr] }
%struct.rpc_call_ops = type { ptr, ptr, ptr, ptr }
%struct.nfs_commit_data = type { %struct.rpc_task, ptr, ptr, %struct.nfs_fattr, %struct.nfs_writeverf, %struct.list_head, %struct.list_head, ptr, %struct.nfs_commitargs, %struct.nfs_commitres, ptr, ptr, ptr, i32, i64, ptr, ptr, ptr, i32 }
%struct.nfs_commitargs = type { %struct.nfs4_sequence_args, ptr, i64, i32, ptr }
%struct.nfs_commitres = type { %struct.nfs4_sequence_res, i32, ptr, ptr, ptr }
%struct.nfs_page = type { %struct.list_head, ptr, ptr, i32, i32, i32, i32, %struct.kref, i32, %struct.nfs_write_verifier, ptr, ptr, i16 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.nfs_commit_info = type { ptr, ptr, ptr, ptr, ptr }
%struct.pnfs_ds_commit_info = type { %struct.list_head, i32, i32, ptr }
%struct.pnfs_commit_bucket = type { %struct.list_head, %struct.list_head, ptr, %struct.nfs_writeverf }
%struct.pnfs_commit_array = type { %struct.list_head, %struct.list_head, ptr, %struct.callback_head, %struct.refcount_struct, i32, [0 x %struct.pnfs_commit_bucket] }
%struct.callback_head = type { ptr, ptr }
%struct.pnfs_layout_segment = type { %struct.list_head, %struct.list_head, %struct.list_head, %struct.pnfs_layout_range, %struct.refcount_struct, i32, i32, ptr }
%struct.pnfs_layout_range = type { i32, i64, i64 }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.146, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.147, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.148, ptr, %struct.address_space, %struct.list_head, %union.anon.149, i32, i32, ptr, ptr }
%union.anon.146 = type { i32 }
%struct.seqcount = type { i32 }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.hlist_node = type { ptr, ptr }
%union.anon.147 = type { %struct.callback_head }
%struct.atomic64_t = type { i64 }
%union.anon.148 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%union.anon.149 = type { ptr }
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
%struct.nfs_client = type { %struct.refcount_struct, %struct.atomic_t, i32, i32, i32, %struct.__kernel_sockaddr_storage, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, ptr, i32, ptr, i32, i32, i32, ptr, %struct.list_head, i64, %struct.nfs4_verifier, i32, %struct.spinlock, i32, i32, %struct.delayed_work, %struct.rpc_wait_queue, ptr, ptr, i32, ptr, i32, ptr, i32, i32, ptr, i8, ptr, ptr, ptr, i32, %struct.wait_queue_head, [48 x i8], ptr, %struct.list_head }
%struct.nfs4_verifier = type { [8 x i8] }
%struct.nfs4_pnfs_ds = type { %struct.list_head, ptr, %struct.list_head, ptr, %struct.refcount_struct, i32 }
%struct.xprt_create = type { i32, ptr, ptr, ptr, i32, ptr, ptr, ptr, i32 }
%struct.nfs4_add_xprt_data = type { ptr, ptr }
%struct.rpc_add_xprt_test = type { ptr, ptr }
%struct.rpc_clnt = type { %struct.refcount_struct, i32, %struct.list_head, %struct.list_head, %struct.atomic_t, %struct.spinlock, ptr, ptr, i32, i32, i32, ptr, ptr, ptr, i8, ptr, ptr, %struct.atomic_t, i32, [65 x i8], %struct.rpc_pipe_dir_head, ptr, %struct.rpc_rtt, %struct.rpc_timeout, ptr, ptr, ptr, %union.anon.112, ptr, i32 }
%struct.rpc_pipe_dir_head = type { %struct.list_head, ptr }
%struct.rpc_rtt = type { i32, [5 x i32], [5 x i32], [5 x i32] }
%struct.rpc_timeout = type { i32, i32, i32, i32, i8 }
%union.anon.112 = type { %struct.work_struct }
%struct.nfs4_minor_version_ops = type { i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.nfs4_pnfs_ds_addr = type { %struct.__kernel_sockaddr_storage, i32, %struct.list_head, ptr, ptr, i32 }
%struct.sockaddr_in = type { i16, i16, %struct.in_addr, [8 x i8] }
%struct.in_addr = type { i32 }
%struct.sockaddr_in6 = type { i16, i16, i32, %struct.in6_addr, i32 }
%struct.in6_addr = type { %union.anon.68 }
%union.anon.68 = type { [4 x i32] }
%struct.page = type { i32, %union.anon.7, %union.anon.34, %struct.atomic_t }
%union.anon.7 = type { %struct.anon.8 }
%struct.anon.8 = type { %struct.list_head, ptr, i32, i32 }
%union.anon.34 = type { %struct.atomic_t }
%struct.anon.36 = type { i32, %struct.list_head, ptr, i32, ptr, %struct.atomic_t, %struct.atomic_t }
%struct.backing_dev_info = type { i64, %struct.rb_node, %struct.list_head, i32, i32, %struct.kref, i32, i32, i32, i32, %struct.atomic_t, %struct.bdi_writeback, %struct.list_head, %struct.wait_queue_head, ptr, [64 x i8], ptr, %struct.timer_list, ptr }
%struct.rb_node = type { i32, ptr, ptr }
%struct.bdi_writeback = type { ptr, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.spinlock, %struct.atomic_t, [4 x %struct.percpu_counter], i32, i32, i32, i32, i32, i32, i32, i32, %struct.fprop_local_percpu, i32, i32, %struct.spinlock, %struct.list_head, %struct.delayed_work, %struct.delayed_work, i32, %struct.list_head }
%struct.percpu_counter = type { %struct.raw_spinlock, i64, %struct.list_head, ptr }
%struct.fprop_local_percpu = type { %struct.percpu_counter, i32, %struct.raw_spinlock }
%struct.nfs_commit_completion_ops = type { ptr, ptr }

@__kstrtab_pnfs_generic_rw_release = external dso_local constant [0 x i8], align 1
@__kstrtabns_pnfs_generic_rw_release = external dso_local constant [0 x i8], align 1
@__ksymtab_pnfs_generic_rw_release = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @pnfs_generic_rw_release to i32), ptr @__kstrtab_pnfs_generic_rw_release, ptr @__kstrtabns_pnfs_generic_rw_release }, section "___ksymtab_gpl+pnfs_generic_rw_release", align 4
@__kstrtab_pnfs_generic_prepare_to_resend_writes = external dso_local constant [0 x i8], align 1
@__kstrtabns_pnfs_generic_prepare_to_resend_writes = external dso_local constant [0 x i8], align 1
@__ksymtab_pnfs_generic_prepare_to_resend_writes = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @pnfs_generic_prepare_to_resend_writes to i32), ptr @__kstrtab_pnfs_generic_prepare_to_resend_writes, ptr @__kstrtabns_pnfs_generic_prepare_to_resend_writes }, section "___ksymtab_gpl+pnfs_generic_prepare_to_resend_writes", align 4
@__kstrtab_pnfs_generic_write_commit_done = external dso_local constant [0 x i8], align 1
@__kstrtabns_pnfs_generic_write_commit_done = external dso_local constant [0 x i8], align 1
@__ksymtab_pnfs_generic_write_commit_done = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @pnfs_generic_write_commit_done to i32), ptr @__kstrtab_pnfs_generic_write_commit_done, ptr @__kstrtabns_pnfs_generic_write_commit_done }, section "___ksymtab_gpl+pnfs_generic_write_commit_done", align 4
@__kstrtab_pnfs_generic_commit_release = external dso_local constant [0 x i8], align 1
@__kstrtabns_pnfs_generic_commit_release = external dso_local constant [0 x i8], align 1
@__ksymtab_pnfs_generic_commit_release = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @pnfs_generic_commit_release to i32), ptr @__kstrtab_pnfs_generic_commit_release, ptr @__kstrtabns_pnfs_generic_commit_release }, section "___ksymtab_gpl+pnfs_generic_commit_release", align 4
@__kstrtab_pnfs_generic_clear_request_commit = external dso_local constant [0 x i8], align 1
@__kstrtabns_pnfs_generic_clear_request_commit = external dso_local constant [0 x i8], align 1
@__ksymtab_pnfs_generic_clear_request_commit = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @pnfs_generic_clear_request_commit to i32), ptr @__kstrtab_pnfs_generic_clear_request_commit, ptr @__kstrtabns_pnfs_generic_clear_request_commit }, section "___ksymtab_gpl+pnfs_generic_clear_request_commit", align 4
@__kstrtab_pnfs_alloc_commit_array = external dso_local constant [0 x i8], align 1
@__kstrtabns_pnfs_alloc_commit_array = external dso_local constant [0 x i8], align 1
@__ksymtab_pnfs_alloc_commit_array = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @pnfs_alloc_commit_array to i32), ptr @__kstrtab_pnfs_alloc_commit_array, ptr @__kstrtabns_pnfs_alloc_commit_array }, section "___ksymtab_gpl+pnfs_alloc_commit_array", align 4
@__kstrtab_pnfs_free_commit_array = external dso_local constant [0 x i8], align 1
@__kstrtabns_pnfs_free_commit_array = external dso_local constant [0 x i8], align 1
@__ksymtab_pnfs_free_commit_array = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @pnfs_free_commit_array to i32), ptr @__kstrtab_pnfs_free_commit_array, ptr @__kstrtabns_pnfs_free_commit_array }, section "___ksymtab_gpl+pnfs_free_commit_array", align 4
@__kstrtab_pnfs_add_commit_array = external dso_local constant [0 x i8], align 1
@__kstrtabns_pnfs_add_commit_array = external dso_local constant [0 x i8], align 1
@__ksymtab_pnfs_add_commit_array = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @pnfs_add_commit_array to i32), ptr @__kstrtab_pnfs_add_commit_array, ptr @__kstrtabns_pnfs_add_commit_array }, section "___ksymtab_gpl+pnfs_add_commit_array", align 4
@__kstrtab_pnfs_generic_ds_cinfo_release_lseg = external dso_local constant [0 x i8], align 1
@__kstrtabns_pnfs_generic_ds_cinfo_release_lseg = external dso_local constant [0 x i8], align 1
@__ksymtab_pnfs_generic_ds_cinfo_release_lseg = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @pnfs_generic_ds_cinfo_release_lseg to i32), ptr @__kstrtab_pnfs_generic_ds_cinfo_release_lseg, ptr @__kstrtabns_pnfs_generic_ds_cinfo_release_lseg }, section "___ksymtab_gpl+pnfs_generic_ds_cinfo_release_lseg", align 4
@__kstrtab_pnfs_generic_ds_cinfo_destroy = external dso_local constant [0 x i8], align 1
@__kstrtabns_pnfs_generic_ds_cinfo_destroy = external dso_local constant [0 x i8], align 1
@__ksymtab_pnfs_generic_ds_cinfo_destroy = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @pnfs_generic_ds_cinfo_destroy to i32), ptr @__kstrtab_pnfs_generic_ds_cinfo_destroy, ptr @__kstrtabns_pnfs_generic_ds_cinfo_destroy }, section "___ksymtab_gpl+pnfs_generic_ds_cinfo_destroy", align 4
@__kstrtab_pnfs_generic_scan_commit_lists = external dso_local constant [0 x i8], align 1
@__kstrtabns_pnfs_generic_scan_commit_lists = external dso_local constant [0 x i8], align 1
@__ksymtab_pnfs_generic_scan_commit_lists = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @pnfs_generic_scan_commit_lists to i32), ptr @__kstrtab_pnfs_generic_scan_commit_lists, ptr @__kstrtabns_pnfs_generic_scan_commit_lists }, section "___ksymtab_gpl+pnfs_generic_scan_commit_lists", align 4
@__kstrtab_pnfs_generic_recover_commit_reqs = external dso_local constant [0 x i8], align 1
@__kstrtabns_pnfs_generic_recover_commit_reqs = external dso_local constant [0 x i8], align 1
@__ksymtab_pnfs_generic_recover_commit_reqs = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @pnfs_generic_recover_commit_reqs to i32), ptr @__kstrtab_pnfs_generic_recover_commit_reqs, ptr @__kstrtabns_pnfs_generic_recover_commit_reqs }, section "___ksymtab_gpl+pnfs_generic_recover_commit_reqs", align 4
@__kstrtab_pnfs_generic_search_commit_reqs = external dso_local constant [0 x i8], align 1
@__kstrtabns_pnfs_generic_search_commit_reqs = external dso_local constant [0 x i8], align 1
@__ksymtab_pnfs_generic_search_commit_reqs = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @pnfs_generic_search_commit_reqs to i32), ptr @__kstrtab_pnfs_generic_search_commit_reqs, ptr @__kstrtabns_pnfs_generic_search_commit_reqs }, section "___ksymtab_gpl+pnfs_generic_search_commit_reqs", align 4
@__kstrtab_pnfs_generic_commit_pagelist = external dso_local constant [0 x i8], align 1
@__kstrtabns_pnfs_generic_commit_pagelist = external dso_local constant [0 x i8], align 1
@__ksymtab_pnfs_generic_commit_pagelist = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @pnfs_generic_commit_pagelist to i32), ptr @__kstrtab_pnfs_generic_commit_pagelist, ptr @__kstrtabns_pnfs_generic_commit_pagelist }, section "___ksymtab_gpl+pnfs_generic_commit_pagelist", align 4
@nfs4_ds_cache_lock = internal global %struct.spinlock zeroinitializer, align 4
@__kstrtab_nfs4_pnfs_ds_put = external dso_local constant [0 x i8], align 1
@__kstrtabns_nfs4_pnfs_ds_put = external dso_local constant [0 x i8], align 1
@__ksymtab_nfs4_pnfs_ds_put = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @nfs4_pnfs_ds_put to i32), ptr @__kstrtab_nfs4_pnfs_ds_put, ptr @__kstrtabns_nfs4_pnfs_ds_put }, section "___ksymtab_gpl+nfs4_pnfs_ds_put", align 4
@nfs4_data_server_cache = internal global %struct.list_head { ptr @nfs4_data_server_cache, ptr @nfs4_data_server_cache }, align 4
@__kstrtab_nfs4_pnfs_ds_add = external dso_local constant [0 x i8], align 1
@__kstrtabns_nfs4_pnfs_ds_add = external dso_local constant [0 x i8], align 1
@__ksymtab_nfs4_pnfs_ds_add = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @nfs4_pnfs_ds_add to i32), ptr @__kstrtab_nfs4_pnfs_ds_add, ptr @__kstrtabns_nfs4_pnfs_ds_add }, section "___ksymtab_gpl+nfs4_pnfs_ds_add", align 4
@get_v3_ds_connect = internal unnamed_addr global ptr null, align 4
@.str = private unnamed_addr constant [19 x i8] c"nfs3_set_ds_client\00", align 1
@nfs4_pnfs_ds_connect.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.1 = private unnamed_addr constant [18 x i8] c"fs/nfs/pnfs_nfs.c\00", align 1
@__kstrtab_nfs4_pnfs_ds_connect = external dso_local constant [0 x i8], align 1
@__kstrtabns_nfs4_pnfs_ds_connect = external dso_local constant [0 x i8], align 1
@__ksymtab_nfs4_pnfs_ds_connect = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @nfs4_pnfs_ds_connect to i32), ptr @__kstrtab_nfs4_pnfs_ds_connect, ptr @__kstrtabns_nfs4_pnfs_ds_connect }, section "___ksymtab_gpl+nfs4_pnfs_ds_connect", align 4
@.str.2 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"%d-%d\00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c"[\00", align 1
@.str.5 = private unnamed_addr constant [2 x i8] c"]\00", align 1
@.str.6 = private unnamed_addr constant [10 x i8] c"%s%s%s:%u\00", align 1
@__kstrtab_nfs4_decode_mp_ds_addr = external dso_local constant [0 x i8], align 1
@__kstrtabns_nfs4_decode_mp_ds_addr = external dso_local constant [0 x i8], align 1
@__ksymtab_nfs4_decode_mp_ds_addr = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @nfs4_decode_mp_ds_addr to i32), ptr @__kstrtab_nfs4_decode_mp_ds_addr, ptr @__kstrtabns_nfs4_decode_mp_ds_addr }, section "___ksymtab_gpl+nfs4_decode_mp_ds_addr", align 4
@__kstrtab_pnfs_layout_mark_request_commit = external dso_local constant [0 x i8], align 1
@__kstrtabns_pnfs_layout_mark_request_commit = external dso_local constant [0 x i8], align 1
@__ksymtab_pnfs_layout_mark_request_commit = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @pnfs_layout_mark_request_commit to i32), ptr @__kstrtab_pnfs_layout_mark_request_commit, ptr @__kstrtabns_pnfs_layout_mark_request_commit }, section "___ksymtab_gpl+pnfs_layout_mark_request_commit", align 4
@__kstrtab_pnfs_nfs_generic_sync = external dso_local constant [0 x i8], align 1
@__kstrtabns_pnfs_nfs_generic_sync = external dso_local constant [0 x i8], align 1
@__ksymtab_pnfs_nfs_generic_sync = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @pnfs_nfs_generic_sync to i32), ptr @__kstrtab_pnfs_nfs_generic_sync, ptr @__kstrtabns_pnfs_nfs_generic_sync }, section "___ksymtab_gpl+pnfs_nfs_generic_sync", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@.str.7 = private unnamed_addr constant [26 x i8] c"symbol:nfs3_set_ds_client\00", align 1
@load_v3_ds_connect.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@nr_cpu_ids = external dso_local local_unnamed_addr global i32, align 4
@llvm.compiler.used = appending global [20 x ptr] [ptr @__ksymtab_nfs4_decode_mp_ds_addr, ptr @__ksymtab_nfs4_pnfs_ds_add, ptr @__ksymtab_nfs4_pnfs_ds_connect, ptr @__ksymtab_nfs4_pnfs_ds_put, ptr @__ksymtab_pnfs_add_commit_array, ptr @__ksymtab_pnfs_alloc_commit_array, ptr @__ksymtab_pnfs_free_commit_array, ptr @__ksymtab_pnfs_generic_clear_request_commit, ptr @__ksymtab_pnfs_generic_commit_pagelist, ptr @__ksymtab_pnfs_generic_commit_release, ptr @__ksymtab_pnfs_generic_ds_cinfo_destroy, ptr @__ksymtab_pnfs_generic_ds_cinfo_release_lseg, ptr @__ksymtab_pnfs_generic_prepare_to_resend_writes, ptr @__ksymtab_pnfs_generic_recover_commit_reqs, ptr @__ksymtab_pnfs_generic_rw_release, ptr @__ksymtab_pnfs_generic_scan_commit_lists, ptr @__ksymtab_pnfs_generic_search_commit_reqs, ptr @__ksymtab_pnfs_generic_write_commit_done, ptr @__ksymtab_pnfs_layout_mark_request_commit, ptr @__ksymtab_pnfs_nfs_generic_sync], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @pnfs_generic_rw_release(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.nfs_pgio_header, ptr %0, i32 0, i32 26
  %3 = load ptr, ptr %2, align 8
  tail call void @nfs_put_client(ptr noundef %3) #12
  %4 = getelementptr inbounds %struct.nfs_pgio_header, ptr %0, i32 0, i32 8
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.rpc_call_ops, ptr %5, i32 0, i32 3
  %7 = load ptr, ptr %6, align 4
  tail call void %7(ptr noundef %0) #12
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @nfs_put_client(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define dso_local void @pnfs_generic_prepare_to_resend_writes(ptr nocapture noundef %0) #3 {
  %2 = getelementptr inbounds %struct.nfs_commit_data, ptr %0, i32 0, i32 9, i32 3
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.rpc_task, ptr %0, i32 0, i32 1
  store i32 0, ptr %4, align 4
  store i64 0, ptr %3, align 4
  %5 = getelementptr inbounds %struct.nfs_writeverf, ptr %3, i32 0, i32 1
  store i32 0, ptr %5, align 4
  ret void
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @pnfs_generic_write_commit_done(ptr noundef %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.nfs_commit_data, ptr %1, i32 0, i32 15
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.rpc_call_ops, ptr %4, i32 0, i32 1
  %6 = load ptr, ptr %5, align 4
  tail call void %6(ptr noundef %0, ptr noundef %1) #12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @pnfs_generic_commit_release(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.nfs_commit_data, ptr %0, i32 0, i32 16
  %3 = load ptr, ptr %2, align 4
  %4 = load ptr, ptr %3, align 4
  tail call void %4(ptr noundef %0) #12
  %5 = getelementptr inbounds %struct.nfs_commit_data, ptr %0, i32 0, i32 11
  %6 = load ptr, ptr %5, align 4
  tail call void @pnfs_put_lseg(ptr noundef %6) #12
  %7 = getelementptr inbounds %struct.nfs_commit_data, ptr %0, i32 0, i32 12
  %8 = load ptr, ptr %7, align 8
  tail call void @nfs_put_client(ptr noundef %8) #12
  tail call void @nfs_commitdata_release(ptr noundef %0) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @pnfs_put_lseg(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @nfs_commitdata_release(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @pnfs_generic_clear_request_commit(ptr noundef %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.nfs_page, ptr %0, i32 0, i32 8
  %4 = tail call i32 @_test_and_clear_bit(i32 noundef 3, ptr noundef %3) #12
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %18, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.nfs_commit_info, ptr %1, i32 0, i32 2
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.pnfs_ds_commit_info, ptr %8, i32 0, i32 1
  %10 = load i32, ptr %9, align 4
  %11 = add i32 %10, -1
  store i32 %11, ptr %9, align 4
  %12 = load volatile ptr, ptr %0, align 4
  %13 = icmp eq ptr %12, %0
  br i1 %13, label %18, label %14

14:                                               ; preds = %6
  %15 = getelementptr inbounds %struct.list_head, ptr %0, i32 0, i32 1
  %16 = load ptr, ptr %15, align 4
  %17 = icmp eq ptr %12, %16
  br i1 %17, label %19, label %18

18:                                               ; preds = %14, %6, %2
  tail call void @nfs_request_remove_commit_list(ptr noundef %0, ptr noundef %1) #12
  br label %33

19:                                               ; preds = %14
  tail call void @nfs_request_remove_commit_list(ptr noundef %0, ptr noundef %1) #12
  %20 = icmp eq ptr %12, null
  br i1 %20, label %33, label %21

21:                                               ; preds = %19
  %22 = getelementptr inbounds %struct.pnfs_commit_bucket, ptr %12, i32 0, i32 1
  %23 = load volatile ptr, ptr %22, align 4
  %24 = icmp eq ptr %23, %22
  br i1 %24, label %25, label %31

25:                                               ; preds = %21
  %26 = load volatile ptr, ptr %12, align 4
  %27 = icmp eq ptr %26, %12
  br i1 %27, label %28, label %31

28:                                               ; preds = %25
  %29 = getelementptr inbounds %struct.pnfs_commit_bucket, ptr %12, i32 0, i32 2
  %30 = load ptr, ptr %29, align 4
  store ptr null, ptr %29, align 4
  br label %31

31:                                               ; preds = %28, %25, %21
  %32 = phi ptr [ %30, %28 ], [ null, %25 ], [ null, %21 ]
  tail call void @pnfs_put_lseg(ptr noundef %32) #12
  br label %33

33:                                               ; preds = %31, %19, %18
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @nfs_request_remove_commit_list(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @pnfs_alloc_commit_array(i32 noundef %0, i32 noundef %1) #0 {
  %3 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %0, i32 32) #12
  %4 = extractvalue { i32, i1 } %3, 1
  %5 = extractvalue { i32, i1 } %3, 0
  %6 = tail call i32 @llvm.uadd.sat.i32(i32 %5, i32 36) #12
  %7 = select i1 %4, i32 -1, i32 %6
  %8 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %7, i32 noundef %1) #13
  %9 = icmp eq ptr %8, null
  br i1 %9, label %30, label %10

10:                                               ; preds = %2
  %11 = getelementptr inbounds %struct.pnfs_commit_array, ptr %8, i32 0, i32 5
  store i32 %0, ptr %11, align 32
  store volatile ptr %8, ptr %8, align 64
  %12 = getelementptr inbounds %struct.list_head, ptr %8, i32 0, i32 1
  store ptr %8, ptr %12, align 4
  %13 = getelementptr inbounds %struct.pnfs_commit_array, ptr %8, i32 0, i32 1
  store volatile ptr %13, ptr %13, align 8
  %14 = getelementptr inbounds %struct.pnfs_commit_array, ptr %8, i32 0, i32 1, i32 1
  store ptr %13, ptr %14, align 4
  %15 = getelementptr inbounds %struct.pnfs_commit_array, ptr %8, i32 0, i32 2
  store ptr null, ptr %15, align 16
  %16 = icmp eq i32 %0, 0
  br i1 %16, label %30, label %17

17:                                               ; preds = %10
  %18 = getelementptr inbounds %struct.pnfs_commit_array, ptr %8, i32 0, i32 6
  br label %19

19:                                               ; preds = %19, %17
  %20 = phi ptr [ %27, %19 ], [ %18, %17 ]
  %21 = phi i32 [ %28, %19 ], [ %0, %17 ]
  store volatile ptr %20, ptr %20, align 4
  %22 = getelementptr inbounds %struct.list_head, ptr %20, i32 0, i32 1
  store ptr %20, ptr %22, align 4
  %23 = getelementptr inbounds %struct.pnfs_commit_bucket, ptr %20, i32 0, i32 1
  store volatile ptr %23, ptr %23, align 4
  %24 = getelementptr inbounds %struct.pnfs_commit_bucket, ptr %20, i32 0, i32 1, i32 1
  store ptr %23, ptr %24, align 4
  %25 = getelementptr inbounds %struct.pnfs_commit_bucket, ptr %20, i32 0, i32 2
  store ptr null, ptr %25, align 4
  %26 = getelementptr inbounds %struct.pnfs_commit_bucket, ptr %20, i32 0, i32 3, i32 1
  store i32 -1, ptr %26, align 4
  %27 = getelementptr %struct.pnfs_commit_bucket, ptr %20, i32 1
  %28 = add i32 %21, -1
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %30, label %19

30:                                               ; preds = %19, %10, %2
  ret ptr %8
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @pnfs_free_commit_array(ptr noundef %0) #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %5, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.pnfs_commit_array, ptr %0, i32 0, i32 3
  tail call void @kvfree_call_rcu(ptr noundef %4, ptr noundef nonnull inttoptr (i32 20 to ptr)) #12
  br label %5

5:                                                ; preds = %3, %1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kvfree_call_rcu(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @pnfs_add_commit_array(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 {
  br label %4

4:                                                ; preds = %8, %3
  %5 = phi ptr [ %0, %3 ], [ %6, %8 ]
  %6 = load volatile ptr, ptr %5, align 4
  %7 = icmp eq ptr %6, %0
  br i1 %7, label %14, label %8

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.pnfs_commit_array, ptr %6, i32 0, i32 2
  %10 = load ptr, ptr %9, align 4
  %11 = icmp eq ptr %10, %2
  br i1 %11, label %12, label %4

12:                                               ; preds = %8
  %13 = icmp eq ptr %6, null
  br i1 %13, label %14, label %25

14:                                               ; preds = %12, %4
  %15 = getelementptr inbounds %struct.pnfs_commit_array, ptr %1, i32 0, i32 2
  store ptr %2, ptr %15, align 4
  %16 = getelementptr inbounds %struct.pnfs_commit_array, ptr %1, i32 0, i32 4
  store volatile i32 1, ptr %16, align 4
  %17 = load ptr, ptr %0, align 4
  store ptr %17, ptr %1, align 4
  %18 = getelementptr inbounds %struct.list_head, ptr %1, i32 0, i32 1
  store ptr %0, ptr %18, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #12, !srcloc !8
  store volatile ptr %1, ptr %0, align 4
  %19 = getelementptr inbounds %struct.list_head, ptr %17, i32 0, i32 1
  store ptr %1, ptr %19, align 4
  %20 = getelementptr inbounds %struct.pnfs_commit_array, ptr %1, i32 0, i32 1
  %21 = getelementptr inbounds %struct.pnfs_layout_segment, ptr %2, i32 0, i32 2
  %22 = load ptr, ptr %21, align 4
  %23 = getelementptr inbounds %struct.list_head, ptr %22, i32 0, i32 1
  store ptr %20, ptr %23, align 4
  store ptr %22, ptr %20, align 4
  %24 = getelementptr inbounds %struct.pnfs_commit_array, ptr %1, i32 0, i32 1, i32 1
  store ptr %21, ptr %24, align 4
  store volatile ptr %20, ptr %21, align 4
  br label %25

25:                                               ; preds = %14, %12
  %26 = phi ptr [ %1, %14 ], [ %6, %12 ]
  ret ptr %26
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @pnfs_generic_ds_cinfo_release_lseg(ptr nocapture readnone %0, ptr noundef readonly %1) #0 {
  %3 = getelementptr inbounds %struct.pnfs_layout_segment, ptr %1, i32 0, i32 2
  %4 = load ptr, ptr %3, align 8
  %5 = icmp eq ptr %4, %3
  br i1 %5, label %34, label %6

6:                                                ; preds = %32, %2
  %7 = phi ptr [ %8, %32 ], [ %4, %2 ]
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr i8, ptr %7, i32 8
  store ptr null, ptr %9, align 4
  %10 = getelementptr i8, ptr %7, i32 4
  %11 = load ptr, ptr %10, align 4
  %12 = getelementptr inbounds %struct.list_head, ptr %8, i32 0, i32 1
  store ptr %11, ptr %12, align 4
  store volatile ptr %8, ptr %11, align 4
  store volatile ptr %7, ptr %7, align 4
  store ptr %7, ptr %10, align 4
  %13 = getelementptr i8, ptr %7, i32 20
  tail call void asm sideeffect "dmb ish", "~{memory}"() #12, !srcloc !9
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %13) #12, !srcloc !10
  %14 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %13, ptr %13, i32 1, ptr elementtype(i32) %13) #12, !srcloc !11
  %15 = extractvalue { i32, i32, i32 } %14, 0
  %16 = icmp eq i32 %15, 1
  br i1 %16, label %20, label %17

17:                                               ; preds = %6
  %18 = icmp sgt i32 %15, 0
  br i1 %18, label %32, label %19, !prof !12

19:                                               ; preds = %17
  tail call void @refcount_warn_saturate(ptr noundef %13, i32 noundef 3) #12
  br label %32

20:                                               ; preds = %6
  %21 = getelementptr i8, ptr %7, i32 -8
  tail call void asm sideeffect "dmb ish", "~{memory}"() #12, !srcloc !13
  %22 = getelementptr i8, ptr %7, i32 -4
  %23 = load ptr, ptr %22, align 4
  %24 = load ptr, ptr %21, align 4
  %25 = getelementptr inbounds %struct.list_head, ptr %24, i32 0, i32 1
  store ptr %23, ptr %25, align 4
  store volatile ptr %24, ptr %23, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %22, align 4
  %26 = load ptr, ptr %10, align 4
  %27 = load ptr, ptr %7, align 4
  %28 = getelementptr inbounds %struct.list_head, ptr %27, i32 0, i32 1
  store ptr %26, ptr %28, align 4
  store volatile ptr %27, ptr %26, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %7, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %10, align 4
  %29 = icmp eq ptr %21, null
  br i1 %29, label %32, label %30

30:                                               ; preds = %20
  %31 = getelementptr i8, ptr %7, i32 12
  tail call void @kvfree_call_rcu(ptr noundef %31, ptr noundef nonnull inttoptr (i32 20 to ptr)) #12
  br label %32

32:                                               ; preds = %30, %20, %19, %17
  %33 = icmp eq ptr %8, %3
  br i1 %33, label %34, label %6

34:                                               ; preds = %32, %2
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @pnfs_generic_ds_cinfo_destroy(ptr noundef readonly %0) #0 {
  %2 = load ptr, ptr %0, align 4
  %3 = icmp eq ptr %2, %0
  br i1 %3, label %33, label %4

4:                                                ; preds = %31, %1
  %5 = phi ptr [ %6, %31 ], [ %2, %1 ]
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.pnfs_commit_array, ptr %5, i32 0, i32 2
  store ptr null, ptr %7, align 4
  %8 = getelementptr inbounds %struct.pnfs_commit_array, ptr %5, i32 0, i32 1
  %9 = getelementptr inbounds %struct.pnfs_commit_array, ptr %5, i32 0, i32 1, i32 1
  %10 = load ptr, ptr %9, align 4
  %11 = load ptr, ptr %8, align 4
  %12 = getelementptr inbounds %struct.list_head, ptr %11, i32 0, i32 1
  store ptr %10, ptr %12, align 4
  store volatile ptr %11, ptr %10, align 4
  store volatile ptr %8, ptr %8, align 4
  store ptr %8, ptr %9, align 4
  %13 = getelementptr inbounds %struct.pnfs_commit_array, ptr %5, i32 0, i32 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #12, !srcloc !9
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %13) #12, !srcloc !10
  %14 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %13, ptr %13, i32 1, ptr elementtype(i32) %13) #12, !srcloc !11
  %15 = extractvalue { i32, i32, i32 } %14, 0
  %16 = icmp eq i32 %15, 1
  br i1 %16, label %20, label %17

17:                                               ; preds = %4
  %18 = icmp sgt i32 %15, 0
  br i1 %18, label %31, label %19, !prof !12

19:                                               ; preds = %17
  tail call void @refcount_warn_saturate(ptr noundef %13, i32 noundef 3) #12
  br label %31

20:                                               ; preds = %4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #12, !srcloc !13
  %21 = getelementptr inbounds %struct.list_head, ptr %5, i32 0, i32 1
  %22 = load ptr, ptr %21, align 4
  %23 = load ptr, ptr %5, align 4
  %24 = getelementptr inbounds %struct.list_head, ptr %23, i32 0, i32 1
  store ptr %22, ptr %24, align 4
  store volatile ptr %23, ptr %22, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %21, align 4
  %25 = load ptr, ptr %9, align 4
  %26 = load ptr, ptr %8, align 4
  %27 = getelementptr inbounds %struct.list_head, ptr %26, i32 0, i32 1
  store ptr %25, ptr %27, align 4
  store volatile ptr %26, ptr %25, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %8, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %9, align 4
  %28 = icmp eq ptr %5, null
  br i1 %28, label %31, label %29

29:                                               ; preds = %20
  %30 = getelementptr inbounds %struct.pnfs_commit_array, ptr %5, i32 0, i32 3
  tail call void @kvfree_call_rcu(ptr noundef %30, ptr noundef nonnull inttoptr (i32 20 to ptr)) #12
  br label %31

31:                                               ; preds = %29, %20, %19, %17
  %32 = icmp eq ptr %6, %0
  br i1 %32, label %33, label %4

33:                                               ; preds = %31, %1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @pnfs_generic_scan_commit_lists(ptr noundef %0, i32 noundef %1) #0 {
  %3 = getelementptr inbounds %struct.nfs_commit_info, ptr %0, i32 0, i32 2
  %4 = load ptr, ptr %3, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !14
  %5 = load volatile ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, %4
  br i1 %6, label %98, label %7

7:                                                ; preds = %93, %2
  %8 = phi ptr [ %96, %93 ], [ %5, %2 ]
  %9 = phi i32 [ %95, %93 ], [ %1, %2 ]
  %10 = phi i32 [ %94, %93 ], [ 0, %2 ]
  %11 = getelementptr inbounds %struct.pnfs_commit_array, ptr %8, i32 0, i32 2
  %12 = load ptr, ptr %11, align 4
  %13 = icmp eq ptr %12, null
  br i1 %13, label %93, label %14

14:                                               ; preds = %7
  %15 = getelementptr inbounds %struct.pnfs_commit_array, ptr %8, i32 0, i32 4
  %16 = load volatile i32, ptr %15, align 4
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %30, label %18

18:                                               ; preds = %28, %14
  %19 = phi i32 [ %26, %28 ], [ %16, %14 ]
  %20 = add i32 %19, 1
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %15) #12, !srcloc !10
  br label %21

21:                                               ; preds = %21, %18
  %22 = tail call { i32, i32 } asm sideeffect "@ atomic_cmpxchg\0Aldrex\09$1, [$3]\0Amov\09$0, #0\0Ateq\09$1, $4\0Astrexeq $0, $5, [$3]\0A", "=&r,=&r,=*Qo,r,Ir,r,*Qo,~{cc}"(ptr elementtype(i32) %15, ptr %15, i32 %19, i32 %20, ptr elementtype(i32) %15) #12, !srcloc !15
  %23 = extractvalue { i32, i32 } %22, 0
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %21

25:                                               ; preds = %21
  %26 = extractvalue { i32, i32 } %22, 1
  %27 = icmp eq i32 %26, %19
  br i1 %27, label %30, label %28, !prof !12

28:                                               ; preds = %25
  %29 = icmp eq i32 %26, 0
  br i1 %29, label %30, label %18

30:                                               ; preds = %28, %25, %14
  %31 = phi i32 [ 0, %14 ], [ %19, %25 ], [ 0, %28 ]
  %32 = add i32 %31, 1
  %33 = or i32 %32, %31
  %34 = icmp sgt i32 %33, -1
  br i1 %34, label %36, label %35, !prof !12

35:                                               ; preds = %30
  tail call void @refcount_warn_saturate(ptr noundef %15, i32 noundef 0) #12
  br label %36

36:                                               ; preds = %35, %30
  %37 = icmp eq i32 %31, 0
  %38 = icmp eq ptr %8, null
  %39 = select i1 %37, i1 true, i1 %38
  br i1 %39, label %93, label %40

40:                                               ; preds = %36
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !16
  %41 = getelementptr inbounds %struct.pnfs_commit_array, ptr %8, i32 0, i32 6
  %42 = getelementptr inbounds %struct.pnfs_commit_array, ptr %8, i32 0, i32 5
  %43 = load i32, ptr %42, align 4
  %44 = icmp ne i32 %43, 0
  %45 = icmp ne i32 %9, 0
  %46 = and i1 %45, %44
  br i1 %46, label %47, label %71

47:                                               ; preds = %64, %40
  %48 = phi i32 [ %65, %64 ], [ 0, %40 ]
  %49 = phi i32 [ %67, %64 ], [ 0, %40 ]
  %50 = phi i32 [ %66, %64 ], [ %9, %40 ]
  %51 = getelementptr %struct.pnfs_commit_bucket, ptr %41, i32 %49
  %52 = getelementptr %struct.pnfs_commit_bucket, ptr %41, i32 %49, i32 1
  %53 = tail call i32 @nfs_scan_commit_list(ptr noundef %51, ptr noundef %52, ptr noundef %0, i32 noundef %50) #12
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %64, label %55

55:                                               ; preds = %47
  %56 = load ptr, ptr %3, align 4
  %57 = getelementptr inbounds %struct.pnfs_ds_commit_info, ptr %56, i32 0, i32 1
  %58 = load i32, ptr %57, align 4
  %59 = sub i32 %58, %53
  store i32 %59, ptr %57, align 4
  %60 = load ptr, ptr %3, align 4
  %61 = getelementptr inbounds %struct.pnfs_ds_commit_info, ptr %60, i32 0, i32 2
  %62 = load i32, ptr %61, align 4
  %63 = add i32 %62, %53
  store i32 %63, ptr %61, align 4
  br label %64

64:                                               ; preds = %55, %47
  %65 = add i32 %53, %48
  %66 = sub i32 %50, %53
  %67 = add nuw i32 %49, 1
  %68 = icmp ult i32 %67, %43
  %69 = icmp ne i32 %66, 0
  %70 = select i1 %68, i1 %69, i1 false
  br i1 %70, label %47, label %71

71:                                               ; preds = %64, %40
  %72 = phi i32 [ 0, %40 ], [ %65, %64 ]
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !14
  %73 = load ptr, ptr %0, align 4
  %74 = getelementptr inbounds %struct.inode, ptr %73, i32 0, i32 17
  %75 = tail call zeroext i1 @refcount_dec_and_lock(ptr noundef %15, ptr noundef %74) #12
  br i1 %75, label %76, label %89

76:                                               ; preds = %71
  %77 = getelementptr inbounds %struct.list_head, ptr %8, i32 0, i32 1
  %78 = load ptr, ptr %77, align 4
  %79 = load ptr, ptr %8, align 4
  %80 = getelementptr inbounds %struct.list_head, ptr %79, i32 0, i32 1
  store ptr %78, ptr %80, align 4
  store volatile ptr %79, ptr %78, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %77, align 4
  %81 = getelementptr inbounds %struct.pnfs_commit_array, ptr %8, i32 0, i32 1
  %82 = getelementptr inbounds %struct.pnfs_commit_array, ptr %8, i32 0, i32 1, i32 1
  %83 = load ptr, ptr %82, align 4
  %84 = load ptr, ptr %81, align 4
  %85 = getelementptr inbounds %struct.list_head, ptr %84, i32 0, i32 1
  store ptr %83, ptr %85, align 4
  store volatile ptr %84, ptr %83, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %81, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %82, align 4
  %86 = getelementptr inbounds %struct.pnfs_commit_array, ptr %8, i32 0, i32 3
  tail call void @kvfree_call_rcu(ptr noundef %86, ptr noundef nonnull inttoptr (i32 20 to ptr)) #12
  tail call void asm sideeffect "dmb ish", "~{memory}"() #12, !srcloc !17
  %87 = load i16, ptr %74, align 4
  %88 = add i16 %87, 1
  store i16 %88, ptr %74, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #12, !srcloc !18
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #12, !srcloc !19
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !20
  br label %89

89:                                               ; preds = %76, %71
  %90 = add i32 %72, %10
  %91 = sub i32 %9, %72
  %92 = icmp eq i32 %91, 0
  br i1 %92, label %98, label %93

93:                                               ; preds = %89, %36, %7
  %94 = phi i32 [ %90, %89 ], [ %10, %36 ], [ %10, %7 ]
  %95 = phi i32 [ %91, %89 ], [ %9, %36 ], [ %9, %7 ]
  %96 = load volatile ptr, ptr %8, align 4
  %97 = icmp eq ptr %96, %4
  br i1 %97, label %98, label %7

98:                                               ; preds = %93, %89, %2
  %99 = phi i32 [ 0, %2 ], [ %90, %89 ], [ %94, %93 ]
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !16
  ret i32 %99
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @pnfs_generic_recover_commit_reqs(ptr noundef %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.nfs_commit_info, ptr %1, i32 0, i32 2
  %4 = load ptr, ptr %3, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !14
  %5 = load volatile ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, %4
  br i1 %6, label %97, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.pnfs_ds_commit_info, ptr %4, i32 0, i32 1
  br label %9

9:                                                ; preds = %94, %7
  %10 = phi ptr [ %5, %7 ], [ %95, %94 ]
  %11 = getelementptr inbounds %struct.pnfs_commit_array, ptr %10, i32 0, i32 2
  %12 = load ptr, ptr %11, align 4
  %13 = icmp eq ptr %12, null
  br i1 %13, label %94, label %14

14:                                               ; preds = %9
  %15 = getelementptr inbounds %struct.pnfs_commit_array, ptr %10, i32 0, i32 4
  %16 = load volatile i32, ptr %15, align 4
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %30, label %18

18:                                               ; preds = %28, %14
  %19 = phi i32 [ %26, %28 ], [ %16, %14 ]
  %20 = add i32 %19, 1
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %15) #12, !srcloc !10
  br label %21

21:                                               ; preds = %21, %18
  %22 = tail call { i32, i32 } asm sideeffect "@ atomic_cmpxchg\0Aldrex\09$1, [$3]\0Amov\09$0, #0\0Ateq\09$1, $4\0Astrexeq $0, $5, [$3]\0A", "=&r,=&r,=*Qo,r,Ir,r,*Qo,~{cc}"(ptr elementtype(i32) %15, ptr %15, i32 %19, i32 %20, ptr elementtype(i32) %15) #12, !srcloc !15
  %23 = extractvalue { i32, i32 } %22, 0
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %21

25:                                               ; preds = %21
  %26 = extractvalue { i32, i32 } %22, 1
  %27 = icmp eq i32 %26, %19
  br i1 %27, label %30, label %28, !prof !12

28:                                               ; preds = %25
  %29 = icmp eq i32 %26, 0
  br i1 %29, label %30, label %18

30:                                               ; preds = %28, %25, %14
  %31 = phi i32 [ 0, %14 ], [ %19, %25 ], [ 0, %28 ]
  %32 = add i32 %31, 1
  %33 = or i32 %32, %31
  %34 = icmp sgt i32 %33, -1
  br i1 %34, label %36, label %35, !prof !12

35:                                               ; preds = %30
  tail call void @refcount_warn_saturate(ptr noundef %15, i32 noundef 0) #12
  br label %36

36:                                               ; preds = %35, %30
  %37 = icmp eq i32 %31, 0
  %38 = icmp eq ptr %10, null
  %39 = select i1 %37, i1 true, i1 %38
  br i1 %39, label %94, label %40

40:                                               ; preds = %36
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !16
  %41 = getelementptr inbounds %struct.pnfs_commit_array, ptr %10, i32 0, i32 6
  %42 = getelementptr inbounds %struct.pnfs_commit_array, ptr %10, i32 0, i32 5
  %43 = load i32, ptr %42, align 4
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %73, label %45

45:                                               ; preds = %69, %40
  %46 = phi i32 [ %70, %69 ], [ 0, %40 ]
  %47 = phi i32 [ %71, %69 ], [ 0, %40 ]
  %48 = phi ptr [ %72, %69 ], [ %41, %40 ]
  %49 = tail call i32 @nfs_scan_commit_list(ptr noundef %48, ptr noundef %0, ptr noundef %1, i32 noundef 0) #12
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %64, label %51

51:                                               ; preds = %45
  %52 = add i32 %49, %47
  %53 = getelementptr inbounds %struct.pnfs_commit_bucket, ptr %48, i32 0, i32 1
  %54 = load volatile ptr, ptr %53, align 4
  %55 = icmp eq ptr %54, %53
  br i1 %55, label %56, label %64

56:                                               ; preds = %51
  %57 = load volatile ptr, ptr %48, align 4
  %58 = icmp eq ptr %57, %48
  br i1 %58, label %59, label %64

59:                                               ; preds = %56
  %60 = getelementptr inbounds %struct.pnfs_commit_bucket, ptr %48, i32 0, i32 2
  %61 = load ptr, ptr %60, align 4
  store ptr null, ptr %60, align 4
  %62 = icmp eq ptr %61, null
  br i1 %62, label %64, label %63

63:                                               ; preds = %59
  tail call void @pnfs_put_lseg(ptr noundef nonnull %61) #12
  br label %69

64:                                               ; preds = %59, %56, %51, %45
  %65 = phi i32 [ %52, %59 ], [ %47, %45 ], [ %52, %56 ], [ %52, %51 ]
  %66 = add nuw i32 %46, 1
  %67 = getelementptr %struct.pnfs_commit_bucket, ptr %48, i32 1
  %68 = icmp eq i32 %66, %43
  br i1 %68, label %73, label %69

69:                                               ; preds = %64, %63
  %70 = phi i32 [ %66, %64 ], [ 0, %63 ]
  %71 = phi i32 [ %65, %64 ], [ %52, %63 ]
  %72 = phi ptr [ %67, %64 ], [ %41, %63 ]
  br label %45

73:                                               ; preds = %64, %40
  %74 = phi i32 [ 0, %40 ], [ %65, %64 ]
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !14
  %75 = load ptr, ptr %1, align 4
  %76 = getelementptr inbounds %struct.inode, ptr %75, i32 0, i32 17
  %77 = tail call zeroext i1 @refcount_dec_and_lock(ptr noundef %15, ptr noundef %76) #12
  br i1 %77, label %78, label %91

78:                                               ; preds = %73
  %79 = getelementptr inbounds %struct.list_head, ptr %10, i32 0, i32 1
  %80 = load ptr, ptr %79, align 4
  %81 = load ptr, ptr %10, align 4
  %82 = getelementptr inbounds %struct.list_head, ptr %81, i32 0, i32 1
  store ptr %80, ptr %82, align 4
  store volatile ptr %81, ptr %80, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %79, align 4
  %83 = getelementptr inbounds %struct.pnfs_commit_array, ptr %10, i32 0, i32 1
  %84 = getelementptr inbounds %struct.pnfs_commit_array, ptr %10, i32 0, i32 1, i32 1
  %85 = load ptr, ptr %84, align 4
  %86 = load ptr, ptr %83, align 4
  %87 = getelementptr inbounds %struct.list_head, ptr %86, i32 0, i32 1
  store ptr %85, ptr %87, align 4
  store volatile ptr %86, ptr %85, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %83, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %84, align 4
  %88 = getelementptr inbounds %struct.pnfs_commit_array, ptr %10, i32 0, i32 3
  tail call void @kvfree_call_rcu(ptr noundef %88, ptr noundef nonnull inttoptr (i32 20 to ptr)) #12
  tail call void asm sideeffect "dmb ish", "~{memory}"() #12, !srcloc !17
  %89 = load i16, ptr %76, align 4
  %90 = add i16 %89, 1
  store i16 %90, ptr %76, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #12, !srcloc !18
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #12, !srcloc !19
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !20
  br label %91

91:                                               ; preds = %78, %73
  %92 = load i32, ptr %8, align 4
  %93 = sub i32 %92, %74
  store i32 %93, ptr %8, align 4
  br label %94

94:                                               ; preds = %91, %36, %9
  %95 = load volatile ptr, ptr %10, align 4
  %96 = icmp eq ptr %95, %4
  br i1 %96, label %97, label %9

97:                                               ; preds = %94, %2
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !16
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong uwtable(sync)
define dso_local ptr @pnfs_generic_search_commit_reqs(ptr nocapture noundef readonly %0, ptr noundef readnone %1) #5 {
  %3 = getelementptr inbounds %struct.nfs_commit_info, ptr %0, i32 0, i32 2
  %4 = load ptr, ptr %3, align 4
  br label %5

5:                                                ; preds = %44, %2
  %6 = phi ptr [ %4, %2 ], [ %7, %44 ]
  %7 = load ptr, ptr %6, align 4
  %8 = icmp eq ptr %7, %4
  br i1 %8, label %47, label %9

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.pnfs_commit_array, ptr %7, i32 0, i32 5
  %11 = load i32, ptr %10, align 4
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %44, label %13

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct.pnfs_commit_array, ptr %7, i32 0, i32 6
  br label %15

15:                                               ; preds = %36, %13
  %16 = phi ptr [ %38, %36 ], [ %14, %13 ]
  %17 = phi i32 [ %37, %36 ], [ 0, %13 ]
  br label %18

18:                                               ; preds = %22, %15
  %19 = phi ptr [ %20, %22 ], [ %16, %15 ]
  %20 = load ptr, ptr %19, align 4
  %21 = icmp eq ptr %20, %16
  br i1 %21, label %26, label %22

22:                                               ; preds = %18
  %23 = getelementptr inbounds %struct.nfs_page, ptr %20, i32 0, i32 1
  %24 = load ptr, ptr %23, align 4
  %25 = icmp eq ptr %24, %1
  br i1 %25, label %40, label %18

26:                                               ; preds = %18
  %27 = getelementptr inbounds %struct.pnfs_commit_bucket, ptr %16, i32 0, i32 1
  br label %28

28:                                               ; preds = %32, %26
  %29 = phi ptr [ %27, %26 ], [ %30, %32 ]
  %30 = load ptr, ptr %29, align 4
  %31 = icmp eq ptr %30, %27
  br i1 %31, label %36, label %32

32:                                               ; preds = %28
  %33 = getelementptr inbounds %struct.nfs_page, ptr %30, i32 0, i32 1
  %34 = load ptr, ptr %33, align 4
  %35 = icmp eq ptr %34, %1
  br i1 %35, label %40, label %28

36:                                               ; preds = %28
  %37 = add nuw i32 %17, 1
  %38 = getelementptr %struct.pnfs_commit_bucket, ptr %16, i32 1
  %39 = icmp eq i32 %37, %11
  br i1 %39, label %44, label %15

40:                                               ; preds = %32, %22
  %41 = phi ptr [ %30, %32 ], [ %20, %22 ]
  %42 = getelementptr inbounds %struct.nfs_page, ptr %41, i32 0, i32 11
  %43 = load ptr, ptr %42, align 4
  br label %44

44:                                               ; preds = %40, %36, %9
  %45 = phi ptr [ null, %9 ], [ %43, %40 ], [ null, %36 ]
  %46 = icmp eq ptr %45, null
  br i1 %46, label %5, label %47

47:                                               ; preds = %44, %5
  %48 = phi ptr [ %45, %44 ], [ null, %5 ]
  ret ptr %48
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @pnfs_generic_commit_pagelist(ptr nocapture noundef readonly %0, ptr noundef %1, i32 noundef %2, ptr noundef %3, ptr nocapture noundef readonly %4) #0 {
  %6 = alloca %struct.list_head, align 8
  %7 = alloca %struct.list_head, align 8
  %8 = getelementptr inbounds %struct.nfs_commit_info, ptr %3, i32 0, i32 2
  %9 = load ptr, ptr %8, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #12
  store ptr %7, ptr %7, align 8
  %10 = getelementptr inbounds %struct.list_head, ptr %7, i32 0, i32 1
  store ptr %7, ptr %10, align 4
  %11 = load volatile ptr, ptr %1, align 4
  %12 = icmp eq ptr %11, %1
  br i1 %12, label %29, label %13

13:                                               ; preds = %5
  %14 = call ptr @nfs_commitdata_alloc(i1 noundef zeroext true) #12
  %15 = getelementptr inbounds %struct.nfs_commit_data, ptr %14, i32 0, i32 13
  store i32 -1, ptr %15, align 4
  %16 = load volatile ptr, ptr %1, align 4
  %17 = icmp eq ptr %16, %1
  br i1 %17, label %25, label %18

18:                                               ; preds = %13
  %19 = getelementptr inbounds %struct.nfs_commit_data, ptr %14, i32 0, i32 5
  %20 = load ptr, ptr %19, align 4
  %21 = getelementptr inbounds %struct.list_head, ptr %1, i32 0, i32 1
  %22 = load ptr, ptr %21, align 4
  %23 = getelementptr inbounds %struct.list_head, ptr %16, i32 0, i32 1
  store ptr %19, ptr %23, align 4
  store ptr %16, ptr %19, align 4
  store ptr %20, ptr %22, align 4
  %24 = getelementptr inbounds %struct.list_head, ptr %20, i32 0, i32 1
  store ptr %22, ptr %24, align 4
  store volatile ptr %1, ptr %1, align 4
  store ptr %1, ptr %21, align 4
  br label %25

25:                                               ; preds = %18, %13
  %26 = getelementptr inbounds %struct.nfs_commit_data, ptr %14, i32 0, i32 6
  %27 = load ptr, ptr %10, align 4
  store ptr %26, ptr %10, align 4
  store ptr %7, ptr %26, align 4
  %28 = getelementptr inbounds %struct.nfs_commit_data, ptr %14, i32 0, i32 6, i32 1
  store ptr %27, ptr %28, align 4
  store volatile ptr %26, ptr %27, align 4
  br label %29

29:                                               ; preds = %25, %5
  %30 = phi i32 [ 0, %5 ], [ 1, %25 ]
  call void asm sideeffect "", "~{memory}"() #12, !srcloc !14
  %31 = load volatile ptr, ptr %9, align 4
  %32 = icmp eq ptr %31, %9
  br i1 %32, label %148, label %33

33:                                               ; preds = %29
  %34 = getelementptr inbounds %struct.list_head, ptr %6, i32 0, i32 1
  br label %35

35:                                               ; preds = %144, %33
  %36 = phi ptr [ %31, %33 ], [ %146, %144 ]
  %37 = phi i32 [ 0, %33 ], [ %145, %144 ]
  %38 = getelementptr inbounds %struct.pnfs_commit_array, ptr %36, i32 0, i32 2
  %39 = load ptr, ptr %38, align 4
  %40 = icmp eq ptr %39, null
  br i1 %40, label %144, label %41

41:                                               ; preds = %35
  %42 = getelementptr inbounds %struct.pnfs_commit_array, ptr %36, i32 0, i32 4
  %43 = load volatile i32, ptr %42, align 4
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %57, label %45

45:                                               ; preds = %55, %41
  %46 = phi i32 [ %53, %55 ], [ %43, %41 ]
  %47 = add i32 %46, 1
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %42) #12, !srcloc !10
  br label %48

48:                                               ; preds = %48, %45
  %49 = call { i32, i32 } asm sideeffect "@ atomic_cmpxchg\0Aldrex\09$1, [$3]\0Amov\09$0, #0\0Ateq\09$1, $4\0Astrexeq $0, $5, [$3]\0A", "=&r,=&r,=*Qo,r,Ir,r,*Qo,~{cc}"(ptr elementtype(i32) %42, ptr %42, i32 %46, i32 %47, ptr elementtype(i32) %42) #12, !srcloc !15
  %50 = extractvalue { i32, i32 } %49, 0
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %52, label %48

52:                                               ; preds = %48
  %53 = extractvalue { i32, i32 } %49, 1
  %54 = icmp eq i32 %53, %46
  br i1 %54, label %57, label %55, !prof !12

55:                                               ; preds = %52
  %56 = icmp eq i32 %53, 0
  br i1 %56, label %57, label %45

57:                                               ; preds = %55, %52, %41
  %58 = phi i32 [ 0, %41 ], [ 0, %55 ], [ %46, %52 ]
  %59 = add i32 %58, 1
  %60 = or i32 %59, %58
  %61 = icmp sgt i32 %60, -1
  br i1 %61, label %63, label %62, !prof !12

62:                                               ; preds = %57
  call void @refcount_warn_saturate(ptr noundef %42, i32 noundef 0) #12
  br label %63

63:                                               ; preds = %62, %57
  %64 = icmp eq i32 %58, 0
  %65 = icmp eq ptr %36, null
  %66 = select i1 %64, i1 true, i1 %65
  br i1 %66, label %144, label %67

67:                                               ; preds = %63
  call void asm sideeffect "", "~{memory}"() #12, !srcloc !16
  %68 = getelementptr inbounds %struct.pnfs_commit_array, ptr %36, i32 0, i32 6
  %69 = getelementptr inbounds %struct.pnfs_commit_array, ptr %36, i32 0, i32 5
  %70 = load i32, ptr %69, align 4
  %71 = icmp eq i32 %70, 0
  br i1 %71, label %125, label %72

72:                                               ; preds = %100, %67
  %73 = phi i32 [ %101, %100 ], [ 0, %67 ]
  %74 = phi i32 [ %102, %100 ], [ 0, %67 ]
  %75 = phi ptr [ %103, %100 ], [ %68, %67 ]
  %76 = getelementptr inbounds %struct.pnfs_commit_bucket, ptr %75, i32 0, i32 1
  %77 = load volatile ptr, ptr %76, align 4
  %78 = icmp eq ptr %77, %76
  br i1 %78, label %100, label %79

79:                                               ; preds = %72
  %80 = load ptr, ptr %3, align 4
  %81 = getelementptr i8, ptr %80, i32 -92
  call void @mutex_lock(ptr noundef %81) #12
  %82 = load volatile ptr, ptr %76, align 4
  %83 = icmp eq ptr %82, %76
  br i1 %83, label %96, label %84

84:                                               ; preds = %79
  %85 = call ptr @nfs_commitdata_alloc(i1 noundef zeroext false) #12
  %86 = icmp eq ptr %85, null
  br i1 %86, label %105, label %87

87:                                               ; preds = %84
  %88 = getelementptr inbounds %struct.nfs_commit_data, ptr %85, i32 0, i32 5
  %89 = call fastcc ptr @pnfs_bucket_get_committing(ptr noundef %88, ptr noundef %75, ptr noundef %3) #12
  %90 = getelementptr inbounds %struct.nfs_commit_data, ptr %85, i32 0, i32 11
  store ptr %89, ptr %90, align 4
  %91 = getelementptr inbounds %struct.nfs_commit_data, ptr %85, i32 0, i32 13
  store i32 %74, ptr %91, align 4
  %92 = getelementptr inbounds %struct.nfs_commit_data, ptr %85, i32 0, i32 6
  %93 = load ptr, ptr %10, align 4
  store ptr %92, ptr %10, align 4
  store ptr %7, ptr %92, align 4
  %94 = getelementptr inbounds %struct.nfs_commit_data, ptr %85, i32 0, i32 6, i32 1
  store ptr %93, ptr %94, align 4
  store volatile ptr %92, ptr %93, align 4
  %95 = add i32 %73, 1
  br label %96

96:                                               ; preds = %87, %79
  %97 = phi i32 [ %73, %79 ], [ %95, %87 ]
  %98 = load ptr, ptr %3, align 4
  %99 = getelementptr i8, ptr %98, i32 -92
  call void @mutex_unlock(ptr noundef %99) #12
  br label %100

100:                                              ; preds = %96, %72
  %101 = phi i32 [ %73, %72 ], [ %97, %96 ]
  %102 = add nuw i32 %74, 1
  %103 = getelementptr %struct.pnfs_commit_bucket, ptr %75, i32 1
  %104 = icmp eq i32 %102, %70
  br i1 %104, label %125, label %72

105:                                              ; preds = %84
  %106 = load ptr, ptr %3, align 4
  %107 = getelementptr i8, ptr %106, i32 -92
  call void @mutex_unlock(ptr noundef %107) #12
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #12
  store ptr %6, ptr %6, align 8
  store ptr %6, ptr %34, align 4
  br label %108

108:                                              ; preds = %120, %105
  %109 = phi ptr [ %121, %120 ], [ %68, %105 ]
  %110 = phi i32 [ %122, %120 ], [ %74, %105 ]
  %111 = getelementptr inbounds %struct.pnfs_commit_bucket, ptr %109, i32 0, i32 1
  %112 = load volatile ptr, ptr %111, align 4
  %113 = icmp eq ptr %112, %111
  br i1 %113, label %120, label %114

114:                                              ; preds = %108
  %115 = load ptr, ptr %3, align 4
  %116 = getelementptr i8, ptr %115, i32 -92
  call void @mutex_lock(ptr noundef %116) #12
  %117 = call fastcc ptr @pnfs_bucket_get_committing(ptr noundef nonnull %6, ptr noundef %109, ptr noundef %3) #12
  %118 = load ptr, ptr %3, align 4
  %119 = getelementptr i8, ptr %118, i32 -92
  call void @mutex_unlock(ptr noundef %119) #12
  call void @nfs_retry_commit(ptr noundef nonnull %6, ptr noundef %117, ptr noundef %3, i32 noundef %110) #12
  call void @pnfs_put_lseg(ptr noundef %117) #12
  br label %120

120:                                              ; preds = %114, %108
  %121 = getelementptr %struct.pnfs_commit_bucket, ptr %109, i32 1
  %122 = add i32 %110, 1
  %123 = icmp eq i32 %122, %70
  br i1 %123, label %124, label %108

124:                                              ; preds = %120
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #12
  br label %125

125:                                              ; preds = %124, %100, %67
  %126 = phi i32 [ %73, %124 ], [ 0, %67 ], [ %101, %100 ]
  %127 = add i32 %126, %37
  call void asm sideeffect "", "~{memory}"() #12, !srcloc !14
  %128 = load ptr, ptr %3, align 4
  %129 = getelementptr inbounds %struct.inode, ptr %128, i32 0, i32 17
  %130 = call zeroext i1 @refcount_dec_and_lock(ptr noundef %42, ptr noundef %129) #12
  br i1 %130, label %131, label %144

131:                                              ; preds = %125
  %132 = getelementptr inbounds %struct.list_head, ptr %36, i32 0, i32 1
  %133 = load ptr, ptr %132, align 4
  %134 = load ptr, ptr %36, align 4
  %135 = getelementptr inbounds %struct.list_head, ptr %134, i32 0, i32 1
  store ptr %133, ptr %135, align 4
  store volatile ptr %134, ptr %133, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %132, align 4
  %136 = getelementptr inbounds %struct.pnfs_commit_array, ptr %36, i32 0, i32 1
  %137 = getelementptr inbounds %struct.pnfs_commit_array, ptr %36, i32 0, i32 1, i32 1
  %138 = load ptr, ptr %137, align 4
  %139 = load ptr, ptr %136, align 4
  %140 = getelementptr inbounds %struct.list_head, ptr %139, i32 0, i32 1
  store ptr %138, ptr %140, align 4
  store volatile ptr %139, ptr %138, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %136, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %137, align 4
  %141 = getelementptr inbounds %struct.pnfs_commit_array, ptr %36, i32 0, i32 3
  call void @kvfree_call_rcu(ptr noundef %141, ptr noundef nonnull inttoptr (i32 20 to ptr)) #12
  call void asm sideeffect "dmb ish", "~{memory}"() #12, !srcloc !17
  %142 = load i16, ptr %129, align 4
  %143 = add i16 %142, 1
  store i16 %143, ptr %129, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #12, !srcloc !18
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #12, !srcloc !19
  call void asm sideeffect "", "~{memory}"() #12, !srcloc !20
  br label %144

144:                                              ; preds = %131, %125, %63, %35
  %145 = phi i32 [ %37, %63 ], [ %37, %35 ], [ %127, %125 ], [ %127, %131 ]
  %146 = load volatile ptr, ptr %36, align 4
  %147 = icmp eq ptr %146, %9
  br i1 %147, label %148, label %35

148:                                              ; preds = %144, %29
  %149 = phi i32 [ 0, %29 ], [ %145, %144 ]
  call void asm sideeffect "", "~{memory}"() #12, !srcloc !16
  %150 = sub i32 0, %149
  %151 = icmp eq i32 %30, %150
  br i1 %151, label %191, label %152

152:                                              ; preds = %148
  %153 = load ptr, ptr %7, align 8
  %154 = icmp eq ptr %153, %7
  br i1 %154, label %191, label %155

155:                                              ; preds = %152
  %156 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 8
  br label %157

157:                                              ; preds = %189, %155
  %158 = phi ptr [ %153, %155 ], [ %160, %189 ]
  %159 = getelementptr i8, ptr %158, i32 -364
  %160 = load ptr, ptr %158, align 4
  %161 = getelementptr inbounds %struct.list_head, ptr %158, i32 0, i32 1
  %162 = load ptr, ptr %161, align 4
  %163 = getelementptr inbounds %struct.list_head, ptr %160, i32 0, i32 1
  store ptr %162, ptr %163, align 4
  store volatile ptr %160, ptr %162, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %158, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %161, align 4
  %164 = getelementptr i8, ptr %158, i32 96
  %165 = load i32, ptr %164, align 4
  %166 = icmp slt i32 %165, 0
  br i1 %166, label %167, label %185

167:                                              ; preds = %157
  call void @nfs_init_commit(ptr noundef %159, ptr noundef null, ptr noundef null, ptr noundef %3) #12
  %168 = load ptr, ptr %156, align 4
  %169 = getelementptr inbounds %struct.super_block, ptr %168, i32 0, i32 27
  %170 = load ptr, ptr %169, align 4
  %171 = getelementptr inbounds %struct.nfs_server, ptr %170, i32 0, i32 3
  %172 = load ptr, ptr %171, align 4
  %173 = getelementptr i8, ptr %158, i32 -228
  %174 = load ptr, ptr %173, align 8
  %175 = getelementptr inbounds %struct.inode, ptr %174, i32 0, i32 8
  %176 = load ptr, ptr %175, align 4
  %177 = getelementptr inbounds %struct.super_block, ptr %176, i32 0, i32 27
  %178 = load ptr, ptr %177, align 4
  %179 = load ptr, ptr %178, align 8
  %180 = getelementptr inbounds %struct.nfs_client, ptr %179, i32 0, i32 12
  %181 = load ptr, ptr %180, align 4
  %182 = getelementptr i8, ptr %158, i32 108
  %183 = load ptr, ptr %182, align 8
  %184 = call i32 @nfs_initiate_commit(ptr noundef %172, ptr noundef %159, ptr noundef %181, ptr noundef %183, i32 noundef %2, i32 noundef 32768) #12
  br label %189

185:                                              ; preds = %157
  %186 = getelementptr i8, ptr %158, i32 88
  %187 = load ptr, ptr %186, align 4
  call void @nfs_init_commit(ptr noundef %159, ptr noundef null, ptr noundef %187, ptr noundef %3) #12
  %188 = call i32 %4(ptr noundef %159, i32 noundef %2) #12
  br label %189

189:                                              ; preds = %185, %167
  %190 = icmp eq ptr %160, %7
  br i1 %190, label %191, label %157

191:                                              ; preds = %189, %152, %148
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #12
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @nfs_commitdata_alloc(i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @nfs_init_commit(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nfs_initiate_commit(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @nfs4_pnfs_ds_put(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.nfs4_pnfs_ds, ptr %0, i32 0, i32 4
  %3 = tail call zeroext i1 @refcount_dec_and_lock(ptr noundef %2, ptr noundef nonnull @nfs4_ds_cache_lock) #12
  br i1 %3, label %4, label %32

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.list_head, ptr %0, i32 0, i32 1
  %6 = load ptr, ptr %5, align 4
  %7 = load ptr, ptr %0, align 4
  %8 = getelementptr inbounds %struct.list_head, ptr %7, i32 0, i32 1
  store ptr %6, ptr %8, align 4
  store volatile ptr %7, ptr %6, align 4
  store volatile ptr %0, ptr %0, align 4
  store ptr %0, ptr %5, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #12, !srcloc !17
  %9 = load i16, ptr @nfs4_ds_cache_lock, align 4
  %10 = add i16 %9, 1
  store i16 %10, ptr @nfs4_ds_cache_lock, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #12, !srcloc !18
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #12, !srcloc !19
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !20
  %11 = getelementptr inbounds %struct.nfs4_pnfs_ds, ptr %0, i32 0, i32 3
  %12 = load ptr, ptr %11, align 4
  tail call void @nfs_put_client(ptr noundef %12) #12
  %13 = getelementptr inbounds %struct.nfs4_pnfs_ds, ptr %0, i32 0, i32 2
  %14 = load volatile ptr, ptr %13, align 4
  %15 = icmp eq ptr %14, %13
  br i1 %15, label %29, label %16

16:                                               ; preds = %16, %4
  %17 = phi ptr [ %27, %16 ], [ %14, %4 ]
  %18 = getelementptr i8, ptr %17, i32 -132
  %19 = getelementptr inbounds %struct.list_head, ptr %17, i32 0, i32 1
  %20 = load ptr, ptr %19, align 4
  %21 = load ptr, ptr %17, align 4
  %22 = getelementptr inbounds %struct.list_head, ptr %21, i32 0, i32 1
  store ptr %20, ptr %22, align 4
  store volatile ptr %21, ptr %20, align 4
  store volatile ptr %17, ptr %17, align 4
  store ptr %17, ptr %19, align 4
  %23 = getelementptr i8, ptr %17, i32 8
  %24 = load ptr, ptr %23, align 4
  tail call void @kfree(ptr noundef %24) #12
  %25 = getelementptr i8, ptr %17, i32 12
  %26 = load ptr, ptr %25, align 4
  tail call void @kfree(ptr noundef %26) #12
  tail call void @kfree(ptr noundef %18) #12
  %27 = load volatile ptr, ptr %13, align 4
  %28 = icmp eq ptr %27, %13
  br i1 %28, label %29, label %16

29:                                               ; preds = %16, %4
  %30 = getelementptr inbounds %struct.nfs4_pnfs_ds, ptr %0, i32 0, i32 1
  %31 = load ptr, ptr %30, align 4
  tail call void @kfree(ptr noundef %31) #12
  tail call void @kfree(ptr noundef %0) #12
  br label %32

32:                                               ; preds = %29, %1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @refcount_dec_and_lock(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @nfs4_pnfs_ds_add(ptr noundef %0, i32 noundef %1) #0 {
  %3 = load volatile ptr, ptr %0, align 4
  %4 = icmp eq ptr %3, %0
  br i1 %4, label %182, label %5

5:                                                ; preds = %2
  %6 = or i32 %1, 256
  %7 = and i32 %1, 17
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %13, label %9, !prof !12

9:                                                ; preds = %5
  %10 = and i32 %1, 1
  %11 = icmp eq i32 %10, 0
  %12 = select i1 %11, i32 1, i32 2
  br label %13

13:                                               ; preds = %9, %5
  %14 = phi i32 [ 0, %5 ], [ %12, %9 ]
  %15 = getelementptr [3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 %14, i32 6
  %16 = load ptr, ptr %15, align 4
  %17 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %16, i32 noundef %6, i32 noundef 32) #14
  %18 = icmp eq ptr %17, null
  br i1 %18, label %182, label %19

19:                                               ; preds = %13
  %20 = load ptr, ptr %0, align 4
  %21 = icmp eq ptr %20, %0
  br i1 %21, label %32, label %22

22:                                               ; preds = %22, %19
  %23 = phi ptr [ %30, %22 ], [ %20, %19 ]
  %24 = phi i32 [ %29, %22 ], [ 3, %19 ]
  %25 = getelementptr i8, ptr %23, i32 8
  %26 = load ptr, ptr %25, align 4
  %27 = tail call i32 @strlen(ptr noundef %26) #12
  %28 = add i32 %24, 1
  %29 = add i32 %28, %27
  %30 = load ptr, ptr %23, align 4
  %31 = icmp eq ptr %30, %0
  br i1 %31, label %32, label %22

32:                                               ; preds = %22, %19
  %33 = phi i32 [ 3, %19 ], [ %29, %22 ]
  %34 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %33, i32 noundef %6) #13
  %35 = icmp eq ptr %34, null
  br i1 %35, label %66, label %36

36:                                               ; preds = %32
  store i8 123, ptr %34, align 64
  %37 = add i32 %33, -1
  %38 = getelementptr i8, ptr %34, i32 1
  %39 = load ptr, ptr %0, align 4
  %40 = icmp eq ptr %39, %0
  br i1 %40, label %58, label %41

41:                                               ; preds = %51, %36
  %42 = phi ptr [ %56, %51 ], [ %39, %36 ]
  %43 = phi ptr [ %55, %51 ], [ %38, %36 ]
  %44 = phi i32 [ %54, %51 ], [ %37, %36 ]
  %45 = getelementptr i8, ptr %42, i32 8
  %46 = load ptr, ptr %45, align 4
  %47 = tail call i32 @strlen(ptr noundef %46) #12
  %48 = icmp ult i32 %44, %47
  br i1 %48, label %65, label %49

49:                                               ; preds = %41
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 1 %43, ptr align 1 %46, i32 %47, i1 false) #12
  %50 = icmp eq i32 %44, %47
  br i1 %50, label %65, label %51

51:                                               ; preds = %49
  %52 = getelementptr i8, ptr %43, i32 %47
  store i8 44, ptr %52, align 1
  %53 = xor i32 %47, -1
  %54 = add i32 %44, %53
  %55 = getelementptr i8, ptr %52, i32 1
  %56 = load ptr, ptr %42, align 4
  %57 = icmp eq ptr %56, %0
  br i1 %57, label %58, label %41

58:                                               ; preds = %51, %36
  %59 = phi ptr [ %34, %36 ], [ %52, %51 ]
  %60 = phi i32 [ %37, %36 ], [ %54, %51 ]
  %61 = phi ptr [ %38, %36 ], [ %55, %51 ]
  %62 = icmp ult i32 %60, 2
  br i1 %62, label %65, label %63

63:                                               ; preds = %58
  %64 = getelementptr i8, ptr %59, i32 2
  store i8 125, ptr %61, align 1
  store i8 0, ptr %64, align 1
  br label %66

65:                                               ; preds = %58, %49, %41
  tail call void @kfree(ptr noundef nonnull %34) #12
  br label %66

66:                                               ; preds = %65, %63, %32
  %67 = phi ptr [ null, %65 ], [ %34, %63 ], [ null, %32 ]
  tail call void @_raw_spin_lock(ptr noundef nonnull @nfs4_ds_cache_lock) #12
  %68 = load ptr, ptr @nfs4_data_server_cache, align 4
  %69 = icmp eq ptr %68, @nfs4_data_server_cache
  br i1 %69, label %151, label %70

70:                                               ; preds = %146, %66
  %71 = phi ptr [ %147, %146 ], [ %68, %66 ]
  %72 = getelementptr inbounds %struct.nfs4_pnfs_ds, ptr %71, i32 0, i32 2
  %73 = load ptr, ptr %72, align 4
  %74 = icmp eq ptr %73, %72
  br i1 %74, label %146, label %75

75:                                               ; preds = %143, %70
  %76 = phi ptr [ %144, %143 ], [ %73, %70 ]
  %77 = getelementptr i8, ptr %76, i32 -132
  %78 = load ptr, ptr %0, align 4
  %79 = icmp eq ptr %78, %0
  br i1 %79, label %146, label %80

80:                                               ; preds = %75
  %81 = getelementptr i8, ptr %76, i32 -124
  %82 = getelementptr i8, ptr %76, i32 -108
  %83 = getelementptr i8, ptr %76, i32 -120
  %84 = getelementptr i8, ptr %76, i32 -116
  %85 = getelementptr i8, ptr %76, i32 -112
  %86 = getelementptr i8, ptr %76, i32 -130
  %87 = getelementptr i8, ptr %76, i32 -128
  br label %88

88:                                               ; preds = %140, %80
  %89 = phi ptr [ %78, %80 ], [ %141, %140 ]
  %90 = getelementptr i8, ptr %89, i32 -132
  %91 = load i16, ptr %77, align 2
  %92 = load i16, ptr %90, align 2
  %93 = icmp eq i16 %91, %92
  br i1 %93, label %94, label %140

94:                                               ; preds = %88
  switch i16 %91, label %140 [
    i16 2, label %95
    i16 10, label %105
  ]

95:                                               ; preds = %94
  %96 = load i32, ptr %87, align 4
  %97 = getelementptr i8, ptr %89, i32 -128
  %98 = load i32, ptr %97, align 4
  %99 = icmp eq i32 %96, %98
  br i1 %99, label %100, label %140

100:                                              ; preds = %95
  %101 = load i16, ptr %86, align 2
  %102 = getelementptr i8, ptr %89, i32 -130
  %103 = load i16, ptr %102, align 2
  %104 = icmp eq i16 %101, %103
  br i1 %104, label %143, label %140

105:                                              ; preds = %94
  %106 = tail call i32 @__ipv6_addr_type(ptr noundef %81) #12
  %107 = and i32 %106, -65536
  %108 = icmp eq i32 %107, 131072
  br i1 %108, label %109, label %114

109:                                              ; preds = %105
  %110 = load i32, ptr %82, align 4
  %111 = getelementptr i8, ptr %89, i32 -108
  %112 = load i32, ptr %111, align 4
  %113 = icmp eq i32 %110, %112
  br i1 %113, label %114, label %140

114:                                              ; preds = %109, %105
  %115 = getelementptr i8, ptr %89, i32 -124
  %116 = load i32, ptr %81, align 4
  %117 = load i32, ptr %115, align 4
  %118 = xor i32 %117, %116
  %119 = load i32, ptr %83, align 4
  %120 = getelementptr i8, ptr %89, i32 -120
  %121 = load i32, ptr %120, align 4
  %122 = xor i32 %121, %119
  %123 = or i32 %122, %118
  %124 = load i32, ptr %84, align 4
  %125 = getelementptr i8, ptr %89, i32 -116
  %126 = load i32, ptr %125, align 4
  %127 = xor i32 %126, %124
  %128 = or i32 %123, %127
  %129 = load i32, ptr %85, align 4
  %130 = getelementptr i8, ptr %89, i32 -112
  %131 = load i32, ptr %130, align 4
  %132 = xor i32 %131, %129
  %133 = or i32 %128, %132
  %134 = icmp eq i32 %133, 0
  br i1 %134, label %135, label %140

135:                                              ; preds = %114
  %136 = load i16, ptr %86, align 2
  %137 = getelementptr i8, ptr %89, i32 -130
  %138 = load i16, ptr %137, align 2
  %139 = icmp eq i16 %136, %138
  br i1 %139, label %143, label %140

140:                                              ; preds = %135, %114, %109, %100, %95, %94, %88
  %141 = load ptr, ptr %89, align 4
  %142 = icmp eq ptr %141, %0
  br i1 %142, label %146, label %88

143:                                              ; preds = %135, %100
  %144 = load ptr, ptr %76, align 4
  %145 = icmp eq ptr %144, %72
  br i1 %145, label %149, label %75

146:                                              ; preds = %140, %75, %70
  %147 = load ptr, ptr %71, align 4
  %148 = icmp eq ptr %147, @nfs4_data_server_cache
  br i1 %148, label %151, label %70

149:                                              ; preds = %143
  %150 = icmp eq ptr %71, null
  br i1 %150, label %151, label %167

151:                                              ; preds = %149, %146, %66
  %152 = getelementptr inbounds %struct.nfs4_pnfs_ds, ptr %17, i32 0, i32 2
  store volatile ptr %152, ptr %152, align 4
  %153 = getelementptr inbounds %struct.nfs4_pnfs_ds, ptr %17, i32 0, i32 2, i32 1
  store ptr %152, ptr %153, align 8
  %154 = load volatile ptr, ptr %0, align 4
  %155 = icmp eq ptr %154, %0
  br i1 %155, label %160, label %156

156:                                              ; preds = %151
  %157 = getelementptr inbounds %struct.list_head, ptr %0, i32 0, i32 1
  %158 = load ptr, ptr %157, align 4
  %159 = getelementptr inbounds %struct.list_head, ptr %154, i32 0, i32 1
  store ptr %152, ptr %159, align 4
  store ptr %154, ptr %152, align 4
  store ptr %152, ptr %158, align 4
  store ptr %158, ptr %153, align 8
  store volatile ptr %0, ptr %0, align 4
  store ptr %0, ptr %157, align 4
  br label %160

160:                                              ; preds = %156, %151
  %161 = getelementptr inbounds %struct.nfs4_pnfs_ds, ptr %17, i32 0, i32 1
  store ptr %67, ptr %161, align 8
  %162 = getelementptr inbounds %struct.nfs4_pnfs_ds, ptr %17, i32 0, i32 4
  store volatile i32 1, ptr %162, align 8
  store volatile ptr %17, ptr %17, align 8
  %163 = getelementptr inbounds %struct.list_head, ptr %17, i32 0, i32 1
  %164 = getelementptr inbounds %struct.nfs4_pnfs_ds, ptr %17, i32 0, i32 3
  store ptr null, ptr %164, align 4
  %165 = load ptr, ptr @nfs4_data_server_cache, align 4
  %166 = getelementptr inbounds %struct.list_head, ptr %165, i32 0, i32 1
  store ptr %17, ptr %166, align 4
  store ptr %165, ptr %17, align 8
  store ptr @nfs4_data_server_cache, ptr %163, align 4
  store volatile ptr %17, ptr @nfs4_data_server_cache, align 4
  br label %178

167:                                              ; preds = %149
  tail call void @kfree(ptr noundef %67) #12
  tail call void @kfree(ptr noundef nonnull %17) #12
  %168 = getelementptr inbounds %struct.nfs4_pnfs_ds, ptr %71, i32 0, i32 4
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %168) #12, !srcloc !10
  %169 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %168, ptr %168, i32 1, ptr elementtype(i32) %168) #12, !srcloc !21
  %170 = extractvalue { i32, i32, i32 } %169, 0
  %171 = icmp eq i32 %170, 0
  br i1 %171, label %176, label %172, !prof !22

172:                                              ; preds = %167
  %173 = add i32 %170, 1
  %174 = or i32 %173, %170
  %175 = icmp sgt i32 %174, -1
  br i1 %175, label %178, label %176, !prof !12

176:                                              ; preds = %172, %167
  %177 = phi i32 [ 2, %167 ], [ 1, %172 ]
  tail call void @refcount_warn_saturate(ptr noundef %168, i32 noundef %177) #12
  br label %178

178:                                              ; preds = %176, %172, %160
  %179 = phi ptr [ %17, %160 ], [ %71, %172 ], [ %71, %176 ]
  tail call void asm sideeffect "dmb ish", "~{memory}"() #12, !srcloc !17
  %180 = load i16, ptr @nfs4_ds_cache_lock, align 4
  %181 = add i16 %180, 1
  store i16 %181, ptr @nfs4_ds_cache_lock, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #12, !srcloc !18
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #12, !srcloc !19
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !20
  br label %182

182:                                              ; preds = %178, %13, %2
  %183 = phi ptr [ null, %2 ], [ %179, %178 ], [ null, %13 ]
  ret ptr %183
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @nfs4_pnfs_v3_ds_connect_unload() local_unnamed_addr #0 {
  %1 = load ptr, ptr @get_v3_ds_connect, align 4
  %2 = icmp eq ptr %1, null
  br i1 %2, label %4, label %3

3:                                                ; preds = %0
  tail call void @__symbol_put(ptr noundef nonnull @.str) #12
  store ptr null, ptr @get_v3_ds_connect, align 4
  br label %4

4:                                                ; preds = %3, %0
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__symbol_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @nfs4_pnfs_ds_connect(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6) #0 {
  %8 = alloca %struct.xprt_create, align 4
  %9 = alloca %struct.nfs4_add_xprt_data, align 8
  %10 = alloca %struct.rpc_add_xprt_test, align 8
  %11 = alloca %struct.xprt_create, align 4
  %12 = getelementptr inbounds %struct.nfs4_pnfs_ds, ptr %1, i32 0, i32 5
  %13 = getelementptr inbounds %struct.nfs4_pnfs_ds, ptr %1, i32 0, i32 3
  br label %14

14:                                               ; preds = %26, %7
  %15 = load volatile i32, ptr %12, align 4
  %16 = and i32 %15, 1
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %21, label %18

18:                                               ; preds = %14
  %19 = tail call i32 @out_of_line_wait_on_bit(ptr noundef %12, i32 noundef 0, ptr noundef nonnull @bit_wait, i32 noundef 258) #12
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %228

21:                                               ; preds = %18, %14
  %22 = load ptr, ptr %13, align 4
  %23 = icmp eq ptr %22, null
  br i1 %23, label %24, label %211

24:                                               ; preds = %21
  %25 = tail call zeroext i1 @nfs4_test_deviceid_unavailable(ptr noundef %2) #12
  br i1 %25, label %228, label %26

26:                                               ; preds = %24
  %27 = tail call i32 @_test_and_set_bit(i32 noundef 0, ptr noundef %12) #12
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %14

29:                                               ; preds = %26
  %30 = load ptr, ptr %13, align 4
  %31 = icmp eq ptr %30, null
  br i1 %31, label %32, label %204

32:                                               ; preds = %29
  switch i32 %5, label %204 [
    i32 3, label %33
    i32 4, label %121
  ]

33:                                               ; preds = %32
  %34 = load ptr, ptr @get_v3_ds_connect, align 4
  %35 = icmp eq ptr %34, null
  br i1 %35, label %36, label %52

36:                                               ; preds = %33
  %37 = tail call ptr @__symbol_get(ptr noundef nonnull @.str) #12
  %38 = icmp eq ptr %37, null
  br i1 %38, label %40, label %39

39:                                               ; preds = %36
  store ptr %37, ptr @get_v3_ds_connect, align 4
  br label %52

40:                                               ; preds = %36
  %41 = tail call i32 (i1, ptr, ...) @__request_module(i1 noundef zeroext true, ptr noundef nonnull @.str.7) #12
  %42 = tail call ptr @__symbol_get(ptr noundef nonnull @.str) #12
  store ptr %42, ptr @get_v3_ds_connect, align 4
  %43 = icmp eq ptr %42, null
  %44 = load i1, ptr @load_v3_ds_connect.__already_done, align 1
  %45 = xor i1 %44, true
  %46 = select i1 %43, i1 %45, i1 false
  br i1 %46, label %47, label %49, !prof !22

47:                                               ; preds = %40
  store i1 true, ptr @load_v3_ds_connect.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 830, i32 noundef 9, ptr noundef null) #12
  %48 = load ptr, ptr @get_v3_ds_connect, align 4
  br label %49

49:                                               ; preds = %47, %40
  %50 = phi ptr [ %42, %40 ], [ %48, %47 ]
  %51 = icmp eq ptr %50, null
  br i1 %51, label %204, label %52

52:                                               ; preds = %49, %39, %33
  %53 = getelementptr inbounds %struct.nfs4_pnfs_ds, ptr %1, i32 0, i32 2
  %54 = load ptr, ptr %53, align 4
  %55 = icmp eq ptr %54, %53
  br i1 %55, label %117, label %56

56:                                               ; preds = %52
  %57 = getelementptr inbounds %struct.xprt_create, ptr %11, i32 0, i32 1
  %58 = getelementptr inbounds %struct.xprt_create, ptr %11, i32 0, i32 2
  %59 = getelementptr inbounds %struct.xprt_create, ptr %11, i32 0, i32 3
  %60 = getelementptr inbounds %struct.xprt_create, ptr %11, i32 0, i32 4
  %61 = getelementptr inbounds %struct.xprt_create, ptr %11, i32 0, i32 5
  %62 = getelementptr inbounds %struct.xprt_create, ptr %11, i32 0, i32 6
  %63 = getelementptr inbounds %struct.xprt_create, ptr %11, i32 0, i32 7
  %64 = getelementptr inbounds %struct.xprt_create, ptr %11, i32 0, i32 8
  br label %65

65:                                               ; preds = %111, %56
  %66 = phi ptr [ %54, %56 ], [ %113, %111 ]
  %67 = phi ptr [ inttoptr (i32 -5 to ptr), %56 ], [ %112, %111 ]
  %68 = getelementptr i8, ptr %66, i32 -132
  %69 = icmp ugt ptr %67, inttoptr (i32 -4096 to ptr)
  br i1 %69, label %93, label %70

70:                                               ; preds = %65
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %11) #12
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(36) %11, i8 0, i32 36, i1 false) #12, !annotation !23
  %71 = getelementptr i8, ptr %66, i32 16
  %72 = load i32, ptr %71, align 4
  store i32 %72, ptr %11, align 4
  %73 = getelementptr inbounds %struct.nfs_client, ptr %67, i32 0, i32 44
  %74 = load ptr, ptr %73, align 8
  store ptr %74, ptr %57, align 4
  store ptr null, ptr %58, align 4
  store ptr %68, ptr %59, align 4
  %75 = getelementptr i8, ptr %66, i32 -4
  %76 = load i32, ptr %75, align 4
  store i32 %76, ptr %60, align 4
  %77 = getelementptr inbounds %struct.nfs_client, ptr %67, i32 0, i32 7
  %78 = load ptr, ptr %77, align 8
  store ptr %78, ptr %61, align 4
  store ptr null, ptr %62, align 4
  store ptr null, ptr %63, align 4
  store i32 0, ptr %64, align 4
  %79 = load i32, ptr %71, align 4
  %80 = getelementptr inbounds %struct.nfs_client, ptr %67, i32 0, i32 13
  %81 = load i32, ptr %80, align 8
  %82 = icmp eq i32 %79, %81
  br i1 %82, label %83, label %92

83:                                               ; preds = %70
  %84 = load i16, ptr %68, align 4
  %85 = getelementptr inbounds %struct.nfs_client, ptr %67, i32 0, i32 5
  %86 = load i16, ptr %85, align 4
  %87 = icmp eq i16 %84, %86
  br i1 %87, label %88, label %92

88:                                               ; preds = %83
  %89 = getelementptr inbounds %struct.nfs_client, ptr %67, i32 0, i32 11
  %90 = load ptr, ptr %89, align 8
  %91 = call i32 @rpc_clnt_add_xprt(ptr noundef %90, ptr noundef nonnull %11, ptr noundef nonnull @rpc_clnt_test_and_add_xprt, ptr noundef null) #12
  br label %92

92:                                               ; preds = %88, %83, %70
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %11) #12
  br label %111

93:                                               ; preds = %65
  %94 = load ptr, ptr @get_v3_ds_connect, align 4
  %95 = getelementptr i8, ptr %66, i32 -4
  %96 = load i32, ptr %95, align 4
  %97 = getelementptr i8, ptr %66, i32 16
  %98 = load i32, ptr %97, align 4
  %99 = call ptr %94(ptr noundef %0, ptr noundef %68, i32 noundef %96, i32 noundef %98, i32 noundef %3, i32 noundef %4) #12
  %100 = icmp ugt ptr %99, inttoptr (i32 -4096 to ptr)
  br i1 %100, label %111, label %101

101:                                              ; preds = %93
  %102 = getelementptr inbounds %struct.nfs_client, ptr %99, i32 0, i32 11
  %103 = load ptr, ptr %102, align 8
  %104 = getelementptr inbounds %struct.rpc_clnt, ptr %103, i32 0, i32 14
  %105 = load i8, ptr %104, align 4
  %106 = and i8 %105, -3
  store i8 %106, ptr %104, align 4
  %107 = load ptr, ptr %102, align 8
  %108 = getelementptr inbounds %struct.rpc_clnt, ptr %107, i32 0, i32 14
  %109 = load i8, ptr %108, align 4
  %110 = and i8 %109, -2
  store i8 %110, ptr %108, align 4
  br label %111

111:                                              ; preds = %101, %93, %92
  %112 = phi ptr [ %99, %93 ], [ %99, %101 ], [ %67, %92 ]
  %113 = load ptr, ptr %66, align 4
  %114 = icmp eq ptr %113, %53
  br i1 %114, label %115, label %65

115:                                              ; preds = %111
  %116 = icmp ugt ptr %112, inttoptr (i32 -4096 to ptr)
  br i1 %116, label %117, label %120

117:                                              ; preds = %115, %52
  %118 = phi ptr [ %112, %115 ], [ inttoptr (i32 -5 to ptr), %52 ]
  %119 = ptrtoint ptr %118 to i32
  br label %204

120:                                              ; preds = %115
  call void asm sideeffect "dmb ishst", "~{memory}"() #12, !srcloc !24
  store volatile ptr %112, ptr %13, align 4
  br label %204

121:                                              ; preds = %32
  %122 = getelementptr inbounds %struct.nfs4_pnfs_ds, ptr %1, i32 0, i32 2
  %123 = load ptr, ptr %122, align 4
  %124 = icmp eq ptr %123, %122
  br i1 %124, label %200, label %125

125:                                              ; preds = %121
  %126 = getelementptr inbounds %struct.xprt_create, ptr %8, i32 0, i32 1
  %127 = getelementptr inbounds %struct.xprt_create, ptr %8, i32 0, i32 2
  %128 = getelementptr inbounds %struct.xprt_create, ptr %8, i32 0, i32 3
  %129 = getelementptr inbounds %struct.xprt_create, ptr %8, i32 0, i32 4
  %130 = getelementptr inbounds %struct.xprt_create, ptr %8, i32 0, i32 5
  %131 = getelementptr inbounds %struct.xprt_create, ptr %8, i32 0, i32 6
  %132 = getelementptr inbounds %struct.xprt_create, ptr %8, i32 0, i32 7
  %133 = getelementptr inbounds %struct.xprt_create, ptr %8, i32 0, i32 8
  %134 = getelementptr inbounds %struct.nfs4_add_xprt_data, ptr %9, i32 0, i32 1
  %135 = getelementptr inbounds %struct.rpc_add_xprt_test, ptr %10, i32 0, i32 1
  br label %136

136:                                              ; preds = %193, %125
  %137 = phi ptr [ %123, %125 ], [ %196, %193 ]
  %138 = phi ptr [ inttoptr (i32 -5 to ptr), %125 ], [ %195, %193 ]
  %139 = phi i32 [ 0, %125 ], [ %194, %193 ]
  %140 = getelementptr i8, ptr %137, i32 -132
  %141 = icmp ugt ptr %138, inttoptr (i32 -4096 to ptr)
  br i1 %141, label %179, label %142

142:                                              ; preds = %136
  %143 = getelementptr inbounds %struct.nfs_client, ptr %138, i32 0, i32 31
  %144 = load ptr, ptr %143, align 8
  %145 = getelementptr inbounds %struct.nfs4_minor_version_ops, ptr %144, i32 0, i32 9
  %146 = load ptr, ptr %145, align 4
  %147 = icmp eq ptr %146, null
  br i1 %147, label %179, label %148

148:                                              ; preds = %142
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %8) #12
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(36) %8, i8 0, i32 36, i1 false) #12, !annotation !23
  %149 = getelementptr i8, ptr %137, i32 16
  %150 = load i32, ptr %149, align 4
  store i32 %150, ptr %8, align 4
  %151 = getelementptr inbounds %struct.nfs_client, ptr %138, i32 0, i32 44
  %152 = load ptr, ptr %151, align 8
  store ptr %152, ptr %126, align 4
  store ptr null, ptr %127, align 4
  store ptr %140, ptr %128, align 4
  %153 = getelementptr i8, ptr %137, i32 -4
  %154 = load i32, ptr %153, align 4
  store i32 %154, ptr %129, align 4
  %155 = getelementptr inbounds %struct.nfs_client, ptr %138, i32 0, i32 7
  %156 = load ptr, ptr %155, align 8
  store ptr %156, ptr %130, align 4
  store ptr null, ptr %131, align 4
  store ptr null, ptr %132, align 4
  store i32 0, ptr %133, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %9) #12
  store ptr %138, ptr %9, align 8
  store ptr null, ptr %134, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %10) #12
  store ptr %146, ptr %10, align 8
  store ptr %9, ptr %135, align 4
  %157 = load i32, ptr %149, align 4
  %158 = getelementptr inbounds %struct.nfs_client, ptr %138, i32 0, i32 13
  %159 = load i32, ptr %158, align 8
  %160 = icmp eq i32 %157, %159
  br i1 %160, label %161, label %178

161:                                              ; preds = %148
  %162 = load i16, ptr %140, align 4
  %163 = getelementptr inbounds %struct.nfs_client, ptr %138, i32 0, i32 5
  %164 = load i16, ptr %163, align 4
  %165 = icmp eq i16 %162, %164
  br i1 %165, label %166, label %178

166:                                              ; preds = %161
  %167 = call ptr @nfs4_get_clid_cred(ptr noundef %138) #12
  store ptr %167, ptr %134, align 4
  %168 = getelementptr inbounds %struct.nfs_client, ptr %138, i32 0, i32 11
  %169 = load ptr, ptr %168, align 8
  %170 = call i32 @rpc_clnt_add_xprt(ptr noundef %169, ptr noundef nonnull %8, ptr noundef nonnull @rpc_clnt_setup_test_and_add_xprt, ptr noundef nonnull %10) #12
  %171 = load ptr, ptr %134, align 4
  %172 = icmp eq ptr %171, null
  br i1 %172, label %178, label %173

173:                                              ; preds = %166
  call void asm sideeffect "dmb ish", "~{memory}"() #12, !srcloc !25
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr nonnull %171) #12, !srcloc !10
  %174 = call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %171, ptr nonnull %171, i32 1, ptr nonnull elementtype(i32) %171) #12, !srcloc !26
  %175 = extractvalue { i32, i32 } %174, 0
  call void asm sideeffect "dmb ish", "~{memory}"() #12, !srcloc !27
  %176 = icmp eq i32 %175, 0
  br i1 %176, label %177, label %178

177:                                              ; preds = %173
  call void @__put_cred(ptr noundef nonnull %171) #12
  br label %178

178:                                              ; preds = %177, %173, %166, %161, %148
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %10) #12
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %9) #12
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %8) #12
  br label %193

179:                                              ; preds = %142, %136
  %180 = getelementptr i8, ptr %137, i32 -4
  %181 = load i32, ptr %180, align 4
  %182 = getelementptr i8, ptr %137, i32 16
  %183 = load i32, ptr %182, align 4
  %184 = call ptr @nfs4_set_ds_client(ptr noundef %0, ptr noundef %140, i32 noundef %181, i32 noundef %183, i32 noundef %3, i32 noundef %4, i32 noundef %6) #12
  %185 = icmp ugt ptr %184, inttoptr (i32 -4096 to ptr)
  br i1 %185, label %193, label %186

186:                                              ; preds = %179
  %187 = load ptr, ptr %0, align 8
  %188 = getelementptr inbounds %struct.nfs_client, ptr %187, i32 0, i32 24
  %189 = load i32, ptr %188, align 8
  %190 = call i32 @nfs4_init_ds_session(ptr noundef %184, i32 noundef %189) #12
  %191 = icmp eq i32 %190, 0
  br i1 %191, label %193, label %192

192:                                              ; preds = %186
  call void @nfs_put_client(ptr noundef %184) #12
  br label %193

193:                                              ; preds = %192, %186, %179, %178
  %194 = phi i32 [ %139, %179 ], [ %190, %192 ], [ 0, %186 ], [ %139, %178 ]
  %195 = phi ptr [ %184, %179 ], [ inttoptr (i32 -5 to ptr), %192 ], [ %184, %186 ], [ %138, %178 ]
  %196 = load ptr, ptr %137, align 4
  %197 = icmp eq ptr %196, %122
  br i1 %197, label %198, label %136

198:                                              ; preds = %193
  %199 = icmp ugt ptr %195, inttoptr (i32 -4096 to ptr)
  br i1 %199, label %200, label %203

200:                                              ; preds = %198, %121
  %201 = phi ptr [ %195, %198 ], [ inttoptr (i32 -5 to ptr), %121 ]
  %202 = ptrtoint ptr %201 to i32
  br label %204

203:                                              ; preds = %198
  call void asm sideeffect "dmb ishst", "~{memory}"() #12, !srcloc !28
  store volatile ptr %195, ptr %13, align 4
  br label %204

204:                                              ; preds = %203, %200, %120, %117, %49, %32, %29
  %205 = phi i32 [ 0, %29 ], [ -93, %32 ], [ -93, %49 ], [ %119, %117 ], [ 0, %120 ], [ %202, %200 ], [ %194, %203 ]
  call void asm sideeffect "dmb ish", "~{memory}"() #12, !srcloc !29
  call void asm sideeffect "dmb ish", "~{memory}"() #12, !srcloc !30
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %12) #12, !srcloc !10
  %206 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_andnot\0A1:\09ldrex\09$0, [$4]\0A\09bic\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %12, ptr %12, i32 1, ptr elementtype(i32) %12) #12, !srcloc !31
  call void asm sideeffect "dmb ish", "~{memory}"() #12, !srcloc !32
  call void @wake_up_bit(ptr noundef %12, i32 noundef 0) #12
  %207 = icmp eq i32 %205, 0
  br i1 %207, label %208, label %228

208:                                              ; preds = %204
  %209 = load ptr, ptr %13, align 4
  %210 = icmp eq ptr %209, null
  br i1 %210, label %217, label %211

211:                                              ; preds = %208, %21
  %212 = phi ptr [ %209, %208 ], [ %22, %21 ]
  %213 = call zeroext i1 @nfs_client_init_is_complete(ptr noundef nonnull %212) #12
  %214 = load ptr, ptr %13, align 4
  br i1 %213, label %226, label %215

215:                                              ; preds = %211
  %216 = icmp eq ptr %214, null
  br i1 %216, label %217, label %220

217:                                              ; preds = %215, %208
  %218 = call zeroext i1 @nfs4_test_deviceid_unavailable(ptr noundef %2) #12
  %219 = xor i1 %218, true
  br label %220

220:                                              ; preds = %217, %215
  %221 = phi i1 [ true, %215 ], [ %219, %217 ]
  %222 = load i1, ptr @nfs4_pnfs_ds_connect.__already_done, align 1
  %223 = xor i1 %222, true
  %224 = select i1 %221, i1 %223, i1 false
  br i1 %224, label %225, label %228, !prof !22

225:                                              ; preds = %220
  store i1 true, ptr @nfs4_pnfs_ds_connect.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 1025, i32 noundef 9, ptr noundef null) #12
  br label %228

226:                                              ; preds = %211
  %227 = call i32 @nfs_client_init_status(ptr noundef %214) #12
  br label %228

228:                                              ; preds = %226, %225, %220, %204, %24, %18
  %229 = phi i32 [ -22, %225 ], [ -22, %220 ], [ %205, %204 ], [ %227, %226 ], [ %19, %18 ], [ -19, %24 ]
  ret i32 %229
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @nfs4_test_deviceid_unavailable(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @nfs_client_init_is_complete(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nfs_client_init_status(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @nfs4_decode_mp_ds_addr(ptr noundef %0, ptr noundef %1, i32 noundef %2) #0 {
  %4 = alloca ptr, align 4
  %5 = alloca [2 x i32], align 8
  %6 = alloca ptr, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #12
  store ptr null, ptr %4, align 4, !annotation !23
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #12
  store i64 0, ptr %5, align 8, !annotation !23
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #12
  store ptr null, ptr %6, align 4, !annotation !23
  %7 = call i32 @xdr_stream_decode_string_dup(ptr noundef %1, ptr noundef nonnull %6, i32 noundef 1024, i32 noundef %2) #12
  %8 = icmp slt i32 %7, 0
  br i1 %8, label %92, label %9, !prof !22

9:                                                ; preds = %3
  %10 = call i32 @xdr_stream_decode_string_dup(ptr noundef %1, ptr noundef nonnull %4, i32 noundef 68, i32 noundef %2) #12
  %11 = icmp slt i32 %10, 0
  br i1 %11, label %88, label %12, !prof !22

12:                                               ; preds = %9
  %13 = load ptr, ptr %4, align 4
  %14 = call ptr @strrchr(ptr noundef %13, i32 noundef 46)
  %15 = icmp eq ptr %14, null
  br i1 %15, label %86, label %16

16:                                               ; preds = %12
  store i8 45, ptr %14, align 1
  %17 = load ptr, ptr %4, align 4
  %18 = call ptr @strrchr(ptr noundef %17, i32 noundef 46)
  %19 = icmp eq ptr %18, null
  br i1 %19, label %86, label %20

20:                                               ; preds = %16
  store i8 0, ptr %18, align 1
  %21 = or i32 %2, 256
  %22 = and i32 %2, 17
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %28, label %24, !prof !12

24:                                               ; preds = %20
  %25 = and i32 %2, 1
  %26 = icmp eq i32 %25, 0
  %27 = select i1 %26, i32 1, i32 2
  br label %28

28:                                               ; preds = %24, %20
  %29 = phi i32 [ 0, %20 ], [ %27, %24 ]
  %30 = getelementptr [3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 %29, i32 2
  %31 = load ptr, ptr %30, align 4
  %32 = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %31, i32 noundef %21, i32 noundef 152) #14
  %33 = icmp eq ptr %32, null
  br i1 %33, label %86, label %34

34:                                               ; preds = %28
  %35 = getelementptr inbounds %struct.nfs4_pnfs_ds_addr, ptr %32, i32 0, i32 2
  store volatile ptr %35, ptr %35, align 4
  %36 = getelementptr inbounds %struct.nfs4_pnfs_ds_addr, ptr %32, i32 0, i32 2, i32 1
  store ptr %35, ptr %36, align 8
  %37 = load ptr, ptr %4, align 4
  %38 = ptrtoint ptr %18 to i32
  %39 = ptrtoint ptr %37 to i32
  %40 = sub i32 %38, %39
  %41 = call i32 @rpc_pton(ptr noundef %0, ptr noundef %37, i32 noundef %40, ptr noundef nonnull %32, i32 noundef 128) #12
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %85, label %43

43:                                               ; preds = %34
  %44 = getelementptr i8, ptr %18, i32 1
  %45 = getelementptr inbounds [2 x i32], ptr %5, i32 0, i32 1
  %46 = call i32 (ptr, ptr, ...) @sscanf(ptr noundef %44, ptr noundef nonnull @.str.3, ptr noundef nonnull %5, ptr noundef %45)
  %47 = load i32, ptr %5, align 8
  %48 = shl i32 %47, 8
  %49 = load i32, ptr %45, align 4
  %50 = or i32 %48, %49
  %51 = trunc i32 %50 to i16
  %52 = call i16 @llvm.bswap.i16(i16 %51)
  %53 = load i16, ptr %32, align 8
  switch i16 %53, label %85 [
    i16 2, label %54
    i16 10, label %56
  ]

54:                                               ; preds = %43
  %55 = getelementptr inbounds %struct.sockaddr_in, ptr %32, i32 0, i32 1
  br label %58

56:                                               ; preds = %43
  %57 = getelementptr inbounds %struct.sockaddr_in6, ptr %32, i32 0, i32 1
  br label %58

58:                                               ; preds = %56, %54
  %59 = phi ptr [ %57, %56 ], [ %55, %54 ]
  %60 = phi i32 [ 28, %56 ], [ 16, %54 ]
  %61 = phi ptr [ @.str.4, %56 ], [ @.str.2, %54 ]
  %62 = phi ptr [ @.str.5, %56 ], [ @.str.2, %54 ]
  store i16 %52, ptr %59, align 2
  %63 = getelementptr inbounds %struct.nfs4_pnfs_ds_addr, ptr %32, i32 0, i32 1
  store i32 %60, ptr %63, align 8
  %64 = load ptr, ptr %6, align 4
  %65 = call i32 @xprt_find_transport_ident(ptr noundef %64) #12
  %66 = getelementptr inbounds %struct.nfs4_pnfs_ds_addr, ptr %32, i32 0, i32 5
  store i32 %65, ptr %66, align 4
  %67 = icmp slt i32 %65, 0
  br i1 %67, label %85, label %68

68:                                               ; preds = %58
  %69 = load ptr, ptr %6, align 4
  %70 = getelementptr inbounds %struct.nfs4_pnfs_ds_addr, ptr %32, i32 0, i32 4
  store ptr %69, ptr %70, align 8
  %71 = call i32 @strlen(ptr noundef nonnull %61)
  %72 = load ptr, ptr %4, align 4
  %73 = call i32 @strlen(ptr noundef %72)
  %74 = add i32 %73, %71
  %75 = call i32 @strlen(ptr noundef nonnull %62)
  %76 = add i32 %74, %75
  %77 = add i32 %76, 7
  %78 = call noalias align 64 ptr @__kmalloc(i32 noundef %77, i32 noundef %21) #13
  %79 = getelementptr inbounds %struct.nfs4_pnfs_ds_addr, ptr %32, i32 0, i32 3
  store ptr %78, ptr %79, align 4
  %80 = icmp eq ptr %78, null
  br i1 %80, label %88, label %81

81:                                               ; preds = %68
  %82 = load ptr, ptr %4, align 4
  %83 = and i32 %50, 65535
  %84 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %78, i32 noundef %77, ptr noundef nonnull @.str.6, ptr noundef nonnull %61, ptr noundef %82, ptr noundef nonnull %62, i32 noundef %83)
  br label %88

85:                                               ; preds = %58, %43, %34
  call void @kfree(ptr noundef nonnull %32) #12
  br label %86

86:                                               ; preds = %85, %28, %16, %12
  %87 = load ptr, ptr %4, align 4
  call void @kfree(ptr noundef %87) #12
  br label %88

88:                                               ; preds = %86, %81, %68, %9
  %89 = phi ptr [ %4, %68 ], [ %4, %81 ], [ %6, %9 ], [ %6, %86 ]
  %90 = phi ptr [ %32, %68 ], [ %32, %81 ], [ null, %9 ], [ null, %86 ]
  %91 = load ptr, ptr %89, align 4
  call void @kfree(ptr noundef %91) #12
  br label %92

92:                                               ; preds = %88, %3
  %93 = phi ptr [ null, %3 ], [ %90, %88 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #12
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #12
  ret ptr %93
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xdr_stream_decode_string_dup(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local ptr @strrchr(ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rpc_pton(ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sscanf(ptr nocapture noundef readonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #8

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xprt_find_transport_ident(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strlen(ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #7

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @pnfs_layout_mark_request_commit(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3) #0 {
  %5 = load ptr, ptr %2, align 4
  %6 = getelementptr i8, ptr %5, i32 -92
  tail call void @mutex_lock(ptr noundef %6) #12
  %7 = getelementptr inbounds %struct.nfs_commit_info, ptr %2, i32 0, i32 2
  %8 = load ptr, ptr %7, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !14
  br label %9

9:                                                ; preds = %13, %4
  %10 = phi ptr [ %8, %4 ], [ %11, %13 ]
  %11 = load volatile ptr, ptr %10, align 4
  %12 = icmp eq ptr %11, %8
  br i1 %12, label %20, label %13

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct.pnfs_commit_array, ptr %11, i32 0, i32 2
  %15 = load ptr, ptr %14, align 4
  %16 = icmp eq ptr %15, %1
  br i1 %16, label %17, label %9

17:                                               ; preds = %13
  %18 = icmp eq ptr %11, null
  br i1 %18, label %20, label %19

19:                                               ; preds = %17
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !16
  br label %35

20:                                               ; preds = %17, %9
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !16
  %21 = getelementptr inbounds %struct.pnfs_ds_commit_info, ptr %8, i32 0, i32 3
  %22 = load ptr, ptr %21, align 4
  %23 = load ptr, ptr %22, align 4
  tail call void %23(ptr noundef %8, ptr noundef %1) #12
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !14
  br label %24

24:                                               ; preds = %29, %20
  %25 = phi ptr [ %8, %20 ], [ %26, %29 ]
  %26 = load volatile ptr, ptr %25, align 4
  %27 = icmp eq ptr %26, %8
  br i1 %27, label %28, label %29

28:                                               ; preds = %24
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !16
  br label %109

29:                                               ; preds = %24
  %30 = getelementptr inbounds %struct.pnfs_commit_array, ptr %26, i32 0, i32 2
  %31 = load ptr, ptr %30, align 4
  %32 = icmp eq ptr %31, %1
  br i1 %32, label %33, label %24

33:                                               ; preds = %29
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !16
  %34 = icmp eq ptr %26, null
  br i1 %34, label %109, label %35

35:                                               ; preds = %33, %19
  %36 = phi ptr [ %11, %19 ], [ %26, %33 ]
  %37 = getelementptr inbounds %struct.pnfs_layout_segment, ptr %1, i32 0, i32 6
  %38 = load volatile i32, ptr %37, align 4
  %39 = and i32 %38, 1
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %109, label %41

41:                                               ; preds = %35
  %42 = getelementptr %struct.pnfs_commit_array, ptr %36, i32 0, i32 6, i32 %3
  %43 = getelementptr %struct.pnfs_commit_array, ptr %36, i32 0, i32 6, i32 %3, i32 2
  %44 = load ptr, ptr %43, align 4
  %45 = icmp eq ptr %44, null
  br i1 %45, label %46, label %61

46:                                               ; preds = %41
  %47 = icmp eq ptr %1, null
  br i1 %47, label %60, label %48

48:                                               ; preds = %46
  %49 = getelementptr inbounds %struct.pnfs_layout_segment, ptr %1, i32 0, i32 4
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %49) #12, !srcloc !10
  %50 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %49, ptr %49, i32 1, ptr elementtype(i32) %49) #12, !srcloc !21
  %51 = extractvalue { i32, i32, i32 } %50, 0
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %57, label %53, !prof !22

53:                                               ; preds = %48
  %54 = add i32 %51, 1
  %55 = or i32 %54, %51
  %56 = icmp sgt i32 %55, -1
  br i1 %56, label %59, label %57, !prof !12

57:                                               ; preds = %53, %48
  %58 = phi i32 [ 2, %48 ], [ 1, %53 ]
  tail call void @refcount_warn_saturate(ptr noundef %49, i32 noundef %58) #12
  br label %59

59:                                               ; preds = %57, %53
  tail call void asm sideeffect "dmb ish", "~{memory}"() #12, !srcloc !33
  br label %60

60:                                               ; preds = %59, %46
  store ptr %1, ptr %43, align 4
  br label %61

61:                                               ; preds = %60, %41
  %62 = getelementptr inbounds %struct.nfs_page, ptr %0, i32 0, i32 8
  tail call void @_set_bit(i32 noundef 3, ptr noundef %62) #12
  %63 = load ptr, ptr %7, align 4
  %64 = getelementptr inbounds %struct.pnfs_ds_commit_info, ptr %63, i32 0, i32 1
  %65 = load i32, ptr %64, align 4
  %66 = add i32 %65, 1
  store i32 %66, ptr %64, align 4
  tail call void @nfs_request_add_commit_list_locked(ptr noundef %0, ptr noundef %42, ptr noundef %2) #12
  %67 = load ptr, ptr %2, align 4
  %68 = getelementptr i8, ptr %67, i32 -92
  tail call void @mutex_unlock(ptr noundef %68) #12
  %69 = getelementptr inbounds %struct.nfs_page, ptr %0, i32 0, i32 1
  %70 = load ptr, ptr %69, align 4
  %71 = getelementptr inbounds %struct.nfs_commit_info, ptr %2, i32 0, i32 3
  %72 = load ptr, ptr %71, align 4
  %73 = icmp eq ptr %72, null
  br i1 %73, label %74, label %116

74:                                               ; preds = %61
  %75 = getelementptr inbounds %struct.page, ptr %70, i32 0, i32 1
  %76 = load volatile i32, ptr %75, align 4
  %77 = and i32 %76, 1
  %78 = icmp eq i32 %77, 0
  br i1 %78, label %81, label %79, !prof !12

79:                                               ; preds = %74
  %80 = add i32 %76, -1
  br label %83

81:                                               ; preds = %74
  %82 = ptrtoint ptr %70 to i32
  br label %83

83:                                               ; preds = %81, %79
  %84 = phi i32 [ %80, %79 ], [ %82, %81 ]
  %85 = inttoptr i32 %84 to ptr
  %86 = load volatile i32, ptr %85, align 4
  %87 = and i32 %86, 524288
  %88 = icmp eq i32 %87, 0
  br i1 %88, label %95, label %89

89:                                               ; preds = %83
  %90 = load volatile i32, ptr %85, align 4
  %91 = and i32 %90, 1024
  %92 = icmp eq i32 %91, 0
  br i1 %92, label %95, label %93, !prof !12

93:                                               ; preds = %89
  %94 = tail call ptr @swapcache_mapping(ptr noundef %85) #12
  br label %98

95:                                               ; preds = %89, %83
  %96 = getelementptr inbounds %struct.anon.36, ptr %85, i32 0, i32 2
  %97 = load ptr, ptr %96, align 4
  br label %98

98:                                               ; preds = %95, %93
  %99 = phi ptr [ %94, %93 ], [ %97, %95 ]
  %100 = load ptr, ptr %99, align 4
  tail call void @inc_node_page_state(ptr noundef %70, i32 noundef 21) #12
  %101 = tail call ptr @inode_to_bdi(ptr noundef %100) #12
  %102 = load i32, ptr @nr_cpu_ids, align 4
  %103 = icmp eq i32 %102, 0
  %104 = tail call i32 @llvm.ctlz.i32(i32 %102, i1 false) #12, !range !34
  %105 = getelementptr %struct.backing_dev_info, ptr %101, i32 0, i32 11, i32 9, i32 1
  %106 = mul nsw i32 %104, -8
  %107 = add nsw i32 %106, 256
  %108 = select i1 %103, i32 0, i32 %107
  tail call void @percpu_counter_add_batch(ptr noundef %105, i64 noundef 1, i32 noundef %108) #12
  tail call void @__mark_inode_dirty(ptr noundef %100, i32 noundef 2) #12
  br label %116

109:                                              ; preds = %35, %33, %28
  %110 = load ptr, ptr %2, align 4
  %111 = getelementptr i8, ptr %110, i32 -92
  tail call void @mutex_unlock(ptr noundef %111) #12
  %112 = getelementptr inbounds %struct.nfs_commit_info, ptr %2, i32 0, i32 4
  %113 = load ptr, ptr %112, align 4
  %114 = getelementptr inbounds %struct.nfs_commit_completion_ops, ptr %113, i32 0, i32 1
  %115 = load ptr, ptr %114, align 4
  tail call void %115(ptr noundef %2, ptr noundef %0) #12
  br label %116

116:                                              ; preds = %109, %98, %61
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @nfs_request_add_commit_list_locked(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @pnfs_nfs_generic_sync(ptr noundef %0, i1 noundef zeroext %1) #0 {
  %3 = getelementptr i8, ptr %0, i32 -156
  %4 = load volatile i32, ptr %3, align 4
  %5 = and i32 %4, 512
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %11

7:                                                ; preds = %2
  %8 = load volatile i32, ptr %3, align 4
  %9 = and i32 %8, 1024
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %18, label %11

11:                                               ; preds = %7, %2
  %12 = tail call i32 @nfs_commit_inode(ptr noundef %0, i32 noundef 1) #12
  %13 = icmp slt i32 %12, 0
  %14 = or i1 %13, %1
  %15 = tail call i32 @llvm.smin.i32(i32 %12, i32 0)
  br i1 %14, label %18, label %16

16:                                               ; preds = %11
  %17 = tail call i32 @pnfs_layoutcommit_inode(ptr noundef %0, i1 noundef zeroext true) #12
  br label %18

18:                                               ; preds = %16, %11, %7
  %19 = phi i32 [ %17, %16 ], [ 0, %7 ], [ %15, %11 ]
  ret i32 %19
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nfs_commit_inode(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pnfs_layoutcommit_inode(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #9

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #10

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #8

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nfs_scan_commit_list(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc ptr @pnfs_bucket_get_committing(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2) unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.pnfs_commit_bucket, ptr %1, i32 0, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, %4
  br i1 %6, label %17, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.nfs_commit_info, ptr %2, i32 0, i32 2
  br label %9

9:                                                ; preds = %9, %7
  %10 = phi ptr [ %5, %7 ], [ %15, %9 ]
  %11 = load ptr, ptr %8, align 4
  %12 = getelementptr inbounds %struct.pnfs_ds_commit_info, ptr %11, i32 0, i32 2
  %13 = load i32, ptr %12, align 4
  %14 = add i32 %13, -1
  store i32 %14, ptr %12, align 4
  %15 = load ptr, ptr %10, align 4
  %16 = icmp eq ptr %15, %4
  br i1 %16, label %17, label %9

17:                                               ; preds = %9, %3
  %18 = load volatile ptr, ptr %4, align 4
  %19 = icmp eq ptr %18, %4
  br i1 %19, label %26, label %20

20:                                               ; preds = %17
  %21 = load ptr, ptr %0, align 4
  %22 = getelementptr inbounds %struct.pnfs_commit_bucket, ptr %1, i32 0, i32 1, i32 1
  %23 = load ptr, ptr %22, align 4
  %24 = getelementptr inbounds %struct.list_head, ptr %18, i32 0, i32 1
  store ptr %0, ptr %24, align 4
  store ptr %18, ptr %0, align 4
  store ptr %21, ptr %23, align 4
  %25 = getelementptr inbounds %struct.list_head, ptr %21, i32 0, i32 1
  store ptr %23, ptr %25, align 4
  store volatile ptr %4, ptr %4, align 4
  store ptr %4, ptr %22, align 4
  br label %26

26:                                               ; preds = %20, %17
  %27 = load volatile ptr, ptr %4, align 4
  %28 = icmp eq ptr %27, %4
  br i1 %28, label %29, label %36

29:                                               ; preds = %26
  %30 = load volatile ptr, ptr %1, align 4
  %31 = icmp eq ptr %30, %1
  br i1 %31, label %32, label %36

32:                                               ; preds = %29
  %33 = getelementptr inbounds %struct.pnfs_commit_bucket, ptr %1, i32 0, i32 2
  %34 = load ptr, ptr %33, align 4
  store ptr null, ptr %33, align 4
  %35 = icmp eq ptr %34, null
  br i1 %35, label %36, label %52

36:                                               ; preds = %32, %29, %26
  %37 = getelementptr inbounds %struct.pnfs_commit_bucket, ptr %1, i32 0, i32 2
  %38 = load ptr, ptr %37, align 4
  %39 = icmp eq ptr %38, null
  br i1 %39, label %52, label %40

40:                                               ; preds = %36
  %41 = getelementptr inbounds %struct.pnfs_layout_segment, ptr %38, i32 0, i32 4
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %41) #12, !srcloc !10
  %42 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %41, ptr %41, i32 1, ptr elementtype(i32) %41) #12, !srcloc !21
  %43 = extractvalue { i32, i32, i32 } %42, 0
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %49, label %45, !prof !22

45:                                               ; preds = %40
  %46 = add i32 %43, 1
  %47 = or i32 %46, %43
  %48 = icmp sgt i32 %47, -1
  br i1 %48, label %51, label %49, !prof !12

49:                                               ; preds = %45, %40
  %50 = phi i32 [ 2, %40 ], [ 1, %45 ]
  tail call void @refcount_warn_saturate(ptr noundef %41, i32 noundef %50) #12
  br label %51

51:                                               ; preds = %49, %45
  tail call void asm sideeffect "dmb ish", "~{memory}"() #12, !srcloc !33
  br label %52

52:                                               ; preds = %51, %36, %32
  %53 = phi ptr [ %34, %32 ], [ null, %36 ], [ %38, %51 ]
  ret ptr %53
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @nfs_retry_commit(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #11

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__ipv6_addr_type(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @out_of_line_wait_on_bit(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bit_wait(ptr noundef, i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rpc_clnt_add_xprt(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rpc_clnt_test_and_add_xprt(ptr noundef, ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__symbol_get(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__request_module(i1 noundef zeroext, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @nfs4_get_clid_cred(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rpc_clnt_setup_test_and_add_xprt(ptr noundef, ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @nfs4_set_ds_client(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nfs4_init_ds_session(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__put_cred(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @wake_up_bit(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @inc_node_page_state(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @inode_to_bdi(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mark_inode_dirty(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @swapcache_mapping(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @percpu_counter_add_batch(ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.uadd.sat.i32(i32, i32) #8

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #8

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { argmemonly nofree nounwind willreturn writeonly }
attributes #5 = { nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nofree nounwind null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #9 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { null_pointer_is_valid allocsize(0) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #11 = { argmemonly nofree nounwind willreturn }
attributes #12 = { nounwind }
attributes #13 = { nounwind allocsize(0) }
attributes #14 = { nounwind allocsize(2) }

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
!8 = !{i64 2150438338}
!9 = !{i64 2148125321}
!10 = !{i64 521482, i64 2148011453, i64 2148011479, i64 2148011526, i64 2148011548, i64 2148011576, i64 2148011596}
!11 = !{i64 2148027480, i64 2148027512, i64 2148027541, i64 2148027575, i64 2148027606, i64 2148027629}
!12 = !{!"branch_weights", i32 2000, i32 1}
!13 = !{i64 2149034162}
!14 = !{i64 2149084529}
!15 = !{i64 507545, i64 507569, i64 507590, i64 507607, i64 507624}
!16 = !{i64 2149084746}
!17 = !{i64 2148966174}
!18 = !{i64 2148961998}
!19 = !{i64 2148962073, i64 2148962100, i64 2148962147, i64 2148962169, i64 2148962197, i64 2148962217}
!20 = !{i64 2148989177}
!21 = !{i64 2148025123, i64 2148025155, i64 2148025184, i64 2148025218, i64 2148025249, i64 2148025272}
!22 = !{!"branch_weights", i32 1, i32 2000}
!23 = !{!"auto-init"}
!24 = !{i64 2156412033}
!25 = !{i64 2148124320}
!26 = !{i64 2148026706, i64 2148026738, i64 2148026767, i64 2148026801, i64 2148026832, i64 2148026855}
!27 = !{i64 2148124523}
!28 = !{i64 2156417822}
!29 = !{i64 2156406788}
!30 = !{i64 2148132408}
!31 = !{i64 2148030586, i64 2148030618, i64 2148030647, i64 2148030681, i64 2148030712, i64 2148030735}
!32 = !{i64 2151257242}
!33 = !{i64 2156162069}
!34 = !{i32 0, i32 33}
