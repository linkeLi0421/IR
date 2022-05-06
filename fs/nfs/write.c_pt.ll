; ModuleID = '/llk/IR/fs/nfs/write.c_pt.bc'
source_filename = "../fs/nfs/write.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_nfs_commitdata_alloc:\09\09\09\09\09"
module asm "\09.asciz \09\22nfs_commitdata_alloc\22\09\09\09\09\09"
module asm "__kstrtabns_nfs_commitdata_alloc:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_nfs_commit_free:\09\09\09\09\09"
module asm "\09.asciz \09\22nfs_commit_free\22\09\09\09\09\09"
module asm "__kstrtabns_nfs_commit_free:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_nfs_request_add_commit_list_locked:\09\09\09\09\09"
module asm "\09.asciz \09\22nfs_request_add_commit_list_locked\22\09\09\09\09\09"
module asm "__kstrtabns_nfs_request_add_commit_list_locked:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_nfs_request_add_commit_list:\09\09\09\09\09"
module asm "\09.asciz \09\22nfs_request_add_commit_list\22\09\09\09\09\09"
module asm "__kstrtabns_nfs_request_add_commit_list:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_nfs_request_remove_commit_list:\09\09\09\09\09"
module asm "\09.asciz \09\22nfs_request_remove_commit_list\22\09\09\09\09\09"
module asm "__kstrtabns_nfs_request_remove_commit_list:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_nfs_init_cinfo:\09\09\09\09\09"
module asm "\09.asciz \09\22nfs_init_cinfo\22\09\09\09\09\09"
module asm "__kstrtabns_nfs_init_cinfo:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_nfs_scan_commit_list:\09\09\09\09\09"
module asm "\09.asciz \09\22nfs_scan_commit_list\22\09\09\09\09\09"
module asm "__kstrtabns_nfs_scan_commit_list:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_nfs_pageio_init_write:\09\09\09\09\09"
module asm "\09.asciz \09\22nfs_pageio_init_write\22\09\09\09\09\09"
module asm "__kstrtabns_nfs_pageio_init_write:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_nfs_pageio_reset_write_mds:\09\09\09\09\09"
module asm "\09.asciz \09\22nfs_pageio_reset_write_mds\22\09\09\09\09\09"
module asm "__kstrtabns_nfs_pageio_reset_write_mds:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_nfs_writeback_update_inode:\09\09\09\09\09"
module asm "\09.asciz \09\22nfs_writeback_update_inode\22\09\09\09\09\09"
module asm "__kstrtabns_nfs_writeback_update_inode:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_nfs_commitdata_release:\09\09\09\09\09"
module asm "\09.asciz \09\22nfs_commitdata_release\22\09\09\09\09\09"
module asm "__kstrtabns_nfs_commitdata_release:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_nfs_initiate_commit:\09\09\09\09\09"
module asm "\09.asciz \09\22nfs_initiate_commit\22\09\09\09\09\09"
module asm "__kstrtabns_nfs_initiate_commit:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_nfs_init_commit:\09\09\09\09\09"
module asm "\09.asciz \09\22nfs_init_commit\22\09\09\09\09\09"
module asm "__kstrtabns_nfs_init_commit:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_nfs_retry_commit:\09\09\09\09\09"
module asm "\09.asciz \09\22nfs_retry_commit\22\09\09\09\09\09"
module asm "__kstrtabns_nfs_retry_commit:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_nfs_commit_inode:\09\09\09\09\09"
module asm "\09.asciz \09\22nfs_commit_inode\22\09\09\09\09\09"
module asm "__kstrtabns_nfs_commit_inode:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_nfs_write_inode:\09\09\09\09\09"
module asm "\09.asciz \09\22nfs_write_inode\22\09\09\09\09\09"
module asm "__kstrtabns_nfs_write_inode:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_nfs_filemap_write_and_wait_range:\09\09\09\09\09"
module asm "\09.asciz \09\22nfs_filemap_write_and_wait_range\22\09\09\09\09\09"
module asm "__kstrtabns_nfs_filemap_write_and_wait_range:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_nfs_wb_all:\09\09\09\09\09"
module asm "\09.asciz \09\22nfs_wb_all\22\09\09\09\09\09"
module asm "__kstrtabns_nfs_wb_all:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.nfs_pgio_completion_ops = type { ptr, ptr, ptr, ptr }
%struct.nfs_pageio_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.nfs_rw_ops = type { ptr, ptr, ptr, ptr, ptr }
%struct.rpc_call_ops = type { ptr, ptr, ptr, ptr }
%struct.tracepoint = type { ptr, %struct.static_key, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.static_key = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.cpumask = type { [1 x i32] }
%struct.nfs_commit_completion_ops = type { ptr, ptr }
%struct.nfs_commit_data = type { %struct.rpc_task, ptr, ptr, %struct.nfs_fattr, %struct.nfs_writeverf, %struct.list_head, %struct.list_head, ptr, %struct.nfs_commitargs, %struct.nfs_commitres, ptr, ptr, ptr, i32, i64, ptr, ptr, ptr, i32 }
%struct.rpc_task = type { %struct.atomic_t, i32, %struct.list_head, ptr, ptr, i32, i32, ptr, %union.anon.1, i32, %struct.rpc_message, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64, i32, i16, i16, i16, i8 }
%union.anon.1 = type { %struct.rpc_wait }
%struct.rpc_wait = type { %struct.list_head, %struct.list_head, %struct.list_head }
%struct.rpc_message = type { ptr, ptr, ptr, ptr }
%struct.nfs_fattr = type { i32, i16, i32, %struct.kuid_t, %struct.kgid_t, i32, i64, %union.anon.135, %struct.nfs_fsid, i64, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, i64, i64, i64, %struct.timespec64, %struct.timespec64, i32, i32, ptr, ptr, ptr, ptr }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%union.anon.135 = type { %struct.anon.137 }
%struct.anon.137 = type { i64 }
%struct.nfs_fsid = type { i64, i64 }
%struct.timespec64 = type { i64, i32 }
%struct.nfs_writeverf = type { %struct.nfs_write_verifier, i32 }
%struct.nfs_write_verifier = type { [8 x i8] }
%struct.list_head = type { ptr, ptr }
%struct.nfs_commitargs = type { %struct.nfs4_sequence_args, ptr, i64, i32, ptr }
%struct.nfs4_sequence_args = type { ptr, i8 }
%struct.nfs_commitres = type { %struct.nfs4_sequence_res, i32, ptr, ptr, ptr }
%struct.nfs4_sequence_res = type { ptr, i32, i32, i32, i32, i32 }
%struct.nfs_commit_info = type { ptr, ptr, ptr, ptr, ptr }
%struct.nfs_page = type { %struct.list_head, ptr, ptr, i32, i32, i32, i32, %struct.kref, i32, %struct.nfs_write_verifier, ptr, ptr, i16 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.nfs_lock_context = type { %struct.refcount_struct, %struct.list_head, ptr, ptr, %struct.atomic_t, %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.nfs_open_context = type { %struct.nfs_lock_context, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, %struct.list_head, ptr, %struct.callback_head }
%struct.dentry = type { i32, %struct.seqcount_spinlock, %struct.hlist_bl_node, ptr, %struct.qstr, ptr, [36 x i8], %struct.lockref, ptr, ptr, i32, ptr, %union.anon.144, %struct.list_head, %struct.list_head, %union.anon.145 }
%struct.seqcount_spinlock = type { %struct.seqcount }
%struct.seqcount = type { i32 }
%struct.hlist_bl_node = type { ptr, ptr }
%struct.qstr = type { %union.anon.3, ptr }
%union.anon.3 = type { i64 }
%struct.lockref = type { %union.anon.142 }
%union.anon.142 = type { i64 }
%union.anon.144 = type { %struct.list_head }
%union.anon.145 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.128, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.129, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.130, ptr, %struct.address_space, %struct.list_head, %union.anon.141, i32, i32, ptr, ptr }
%union.anon.128 = type { i32 }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%union.anon.129 = type { %struct.callback_head }
%struct.atomic64_t = type { i64 }
%union.anon.130 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%union.anon.141 = type { ptr }
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
%struct.__kernel_sockaddr_storage = type { %union.anon.132 }
%union.anon.132 = type { ptr, [124 x i8] }
%struct.rpc_wait_queue = type { %struct.spinlock, [4 x %struct.list_head], i8, i8, i8, i16, %struct.rpc_timer, ptr }
%struct.rpc_timer = type { %struct.list_head, i32, %struct.delayed_work }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32 }
%struct.pnfs_layoutdriver_type = type { %struct.list_head, i32, ptr, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pnfs_ds_commit_info = type { %struct.list_head, i32, i32, ptr }
%struct.pnfs_commit_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.nfs_mds_commit_info = type { %struct.atomic_t, %struct.atomic_t, %struct.list_head }
%struct.nfs_pageio_descriptor = type { ptr, ptr, ptr, i32, i32, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, [1 x %struct.nfs_pgio_mirror], ptr, i32, i16, i8 }
%struct.nfs_pgio_mirror = type { %struct.list_head, i32, i32, i32, i32, i8 }
%struct.page = type { i32, %union.anon.25, %union.anon.42, %struct.atomic_t }
%union.anon.25 = type { %struct.anon.26 }
%struct.anon.26 = type { %struct.list_head, ptr, i32, i32 }
%union.anon.42 = type { %struct.atomic_t }
%struct.anon.154 = type { i32, %struct.list_head, ptr, i32, ptr, %struct.atomic_t, %struct.atomic_t }
%struct.nfs_iostats = type { [8 x i64], [27 x i32], [20 x i8] }
%struct.writeback_control = type { i32, i32, i64, i64, i32, i16 }
%struct.nfs_io_completion = type { ptr, ptr, %struct.kref }
%struct.backing_dev_info = type { i64, %struct.rb_node, %struct.list_head, i32, i32, %struct.kref, i32, i32, i32, i32, %struct.atomic_t, %struct.bdi_writeback, %struct.list_head, %struct.wait_queue_head, ptr, [64 x i8], ptr, %struct.timer_list, ptr }
%struct.rb_node = type { i32, ptr, ptr }
%struct.bdi_writeback = type { ptr, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.spinlock, %struct.atomic_t, [4 x %struct.percpu_counter], i32, i32, i32, i32, i32, i32, i32, i32, %struct.fprop_local_percpu, i32, i32, %struct.spinlock, %struct.list_head, %struct.delayed_work, %struct.delayed_work, i32, %struct.list_head }
%struct.percpu_counter = type { %struct.raw_spinlock, i64, %struct.list_head, ptr }
%struct.fprop_local_percpu = type { %struct.percpu_counter, i32, %struct.raw_spinlock }
%struct.nfs_pgio_header = type { ptr, ptr, %struct.list_head, ptr, %struct.nfs_writeverf, i32, ptr, i64, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, %struct.rpc_task, %struct.nfs_fattr, %struct.nfs_pgio_args, %struct.nfs_pgio_res, i32, ptr, i64, %struct.nfs_page_array, ptr, i32, i32 }
%struct.nfs_pgio_args = type { %struct.nfs4_sequence_args, ptr, ptr, ptr, %struct.nfs4_stateid_struct, i64, i32, i32, ptr, %union.anon.148 }
%struct.nfs4_stateid_struct = type { %union.anon.138, i32 }
%union.anon.138 = type { %struct.anon.139 }
%struct.anon.139 = type { i32, [12 x i8] }
%union.anon.148 = type { %struct.anon.149 }
%struct.anon.149 = type { ptr, [3 x i32], i32 }
%struct.nfs_pgio_res = type { %struct.nfs4_sequence_res, ptr, i64, i32, %union.anon.150 }
%union.anon.150 = type { %struct.anon.151 }
%struct.anon.151 = type { i32, i32 }
%struct.nfs_page_array = type { ptr, i32, [8 x ptr] }
%struct.file = type { %union.anon.2, %struct.path, ptr, ptr, %struct.spinlock, i32, %struct.atomic_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, ptr, %struct.file_ra_state, i64, ptr, ptr, ptr, i32, i32 }
%union.anon.2 = type { %struct.callback_head }
%struct.path = type { ptr, ptr }
%struct.fown_struct = type { %struct.rwlock_t, ptr, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.rwlock_t = type { %struct.arch_rwlock_t }
%struct.arch_rwlock_t = type { i32 }
%struct.file_ra_state = type { i32, i32, i32, i32, i32, i64 }
%struct.file_lock_context = type { %struct.spinlock, %struct.list_head, %struct.list_head, %struct.list_head }
%struct.task_struct = type { %struct.thread_info, i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [32 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, [36 x i8], %struct.sched_statistics, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i8, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.124, ptr, %struct.page_frag, i32, i32, i32, i64, i64, i32, i32, ptr, %struct.kmap_ctrl, i32, ptr, %struct.refcount_struct, %struct.thread_struct, [16 x i8] }
%struct.thread_info = type { i32, i32, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], [4 x i8], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.104 }
%struct.llist_node = type { ptr }
%union.anon.104 = type { i32 }
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
%struct.restart_block = type { i32, ptr, %union.anon.105 }
%union.anon.105 = type { %struct.anon.106 }
%struct.anon.106 = type { ptr, i32, i32, i32, i64, ptr }
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
%struct.task_io_accounting = type {}
%struct.tlbflush_unmap_batch = type {}
%union.anon.124 = type { %struct.callback_head }
%struct.page_frag = type { ptr, i16, i16 }
%struct.kmap_ctrl = type { i32, [16 x i32] }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
%struct.auth_cred = type { ptr, ptr }
%struct.rpc_clnt = type { %struct.refcount_struct, i32, %struct.list_head, %struct.list_head, %struct.atomic_t, %struct.spinlock, ptr, ptr, i32, i32, i32, ptr, ptr, ptr, i8, ptr, ptr, %struct.atomic_t, i32, [65 x i8], %struct.rpc_pipe_dir_head, ptr, %struct.rpc_rtt, %struct.rpc_timeout, ptr, ptr, ptr, %union.anon.134, ptr, i32 }
%struct.rpc_pipe_dir_head = type { %struct.list_head, ptr }
%struct.rpc_rtt = type { i32, [5 x i32], [5 x i32], [5 x i32] }
%struct.rpc_timeout = type { i32, i32, i32, i32, i8 }
%union.anon.134 = type { %struct.work_struct }
%struct.rpc_cred = type { %struct.hlist_node, %struct.list_head, %struct.callback_head, ptr, ptr, i32, i32, %struct.refcount_struct, ptr }
%struct.rpc_credops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.rpc_auth = type { i32, i32, i32, i32, i32, ptr, i32, %struct.refcount_struct, ptr }
%struct.rpc_authops = type { ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.nfs_client = type { %struct.refcount_struct, %struct.atomic_t, i32, i32, i32, %struct.__kernel_sockaddr_storage, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, ptr, i32, ptr, i32, i32, i32, ptr, %struct.list_head, i64, %struct.nfs4_verifier, i32, %struct.spinlock, i32, i32, %struct.delayed_work, %struct.rpc_wait_queue, ptr, ptr, i32, ptr, i32, ptr, i32, i32, ptr, i8, ptr, ptr, ptr, i32, %struct.wait_queue_head, [48 x i8], ptr, %struct.list_head }
%struct.nfs4_verifier = type { [8 x i8] }
%struct.nfs_rpc_ops = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.rpc_task_setup = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i16, i8 }
%struct.wait_bit_queue_entry = type { %struct.wait_bit_key, %struct.wait_queue_entry }
%struct.wait_bit_key = type { ptr, i32, i32 }
%struct.wait_queue_entry = type { i32, ptr, ptr, %struct.list_head }

@nfs_commit_mempool = internal unnamed_addr global ptr null, align 4
@nfs_cdata_cachep = internal unnamed_addr global ptr null, align 4
@__kstrtab_nfs_commitdata_alloc = external dso_local constant [0 x i8], align 1
@__kstrtabns_nfs_commitdata_alloc = external dso_local constant [0 x i8], align 1
@__ksymtab_nfs_commitdata_alloc = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @nfs_commitdata_alloc to i32), ptr @__kstrtab_nfs_commitdata_alloc, ptr @__kstrtabns_nfs_commitdata_alloc }, section "___ksymtab_gpl+nfs_commitdata_alloc", align 4
@__kstrtab_nfs_commit_free = external dso_local constant [0 x i8], align 1
@__kstrtabns_nfs_commit_free = external dso_local constant [0 x i8], align 1
@__ksymtab_nfs_commit_free = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @nfs_commit_free to i32), ptr @__kstrtab_nfs_commit_free, ptr @__kstrtabns_nfs_commit_free }, section "___ksymtab_gpl+nfs_commit_free", align 4
@nfs_async_write_completion_ops = internal constant %struct.nfs_pgio_completion_ops { ptr @nfs_async_write_error, ptr @nfs_async_write_init, ptr @nfs_write_completion, ptr @nfs_async_write_reschedule_io }, align 4
@__kstrtab_nfs_request_add_commit_list_locked = external dso_local constant [0 x i8], align 1
@__kstrtabns_nfs_request_add_commit_list_locked = external dso_local constant [0 x i8], align 1
@__ksymtab_nfs_request_add_commit_list_locked = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @nfs_request_add_commit_list_locked to i32), ptr @__kstrtab_nfs_request_add_commit_list_locked, ptr @__kstrtabns_nfs_request_add_commit_list_locked }, section "___ksymtab_gpl+nfs_request_add_commit_list_locked", align 4
@__kstrtab_nfs_request_add_commit_list = external dso_local constant [0 x i8], align 1
@__kstrtabns_nfs_request_add_commit_list = external dso_local constant [0 x i8], align 1
@__ksymtab_nfs_request_add_commit_list = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @nfs_request_add_commit_list to i32), ptr @__kstrtab_nfs_request_add_commit_list, ptr @__kstrtabns_nfs_request_add_commit_list }, section "___ksymtab_gpl+nfs_request_add_commit_list", align 4
@__kstrtab_nfs_request_remove_commit_list = external dso_local constant [0 x i8], align 1
@__kstrtabns_nfs_request_remove_commit_list = external dso_local constant [0 x i8], align 1
@__ksymtab_nfs_request_remove_commit_list = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @nfs_request_remove_commit_list to i32), ptr @__kstrtab_nfs_request_remove_commit_list, ptr @__kstrtabns_nfs_request_remove_commit_list }, section "___ksymtab_gpl+nfs_request_remove_commit_list", align 4
@__kstrtab_nfs_init_cinfo = external dso_local constant [0 x i8], align 1
@__kstrtabns_nfs_init_cinfo = external dso_local constant [0 x i8], align 1
@__ksymtab_nfs_init_cinfo = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @nfs_init_cinfo to i32), ptr @__kstrtab_nfs_init_cinfo, ptr @__kstrtabns_nfs_init_cinfo }, section "___ksymtab_gpl+nfs_init_cinfo", align 4
@.str = private unnamed_addr constant [15 x i8] c"fs/nfs/write.c\00", align 1
@__kstrtab_nfs_scan_commit_list = external dso_local constant [0 x i8], align 1
@__kstrtabns_nfs_scan_commit_list = external dso_local constant [0 x i8], align 1
@__ksymtab_nfs_scan_commit_list = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @nfs_scan_commit_list to i32), ptr @__kstrtab_nfs_scan_commit_list, ptr @__kstrtabns_nfs_scan_commit_list }, section "___ksymtab_gpl+nfs_scan_commit_list", align 4
@nfs_pgio_rw_ops = external dso_local constant %struct.nfs_pageio_ops, align 4
@nfs_rw_write_ops = internal constant %struct.nfs_rw_ops { ptr @nfs_writehdr_alloc, ptr @nfs_writehdr_free, ptr @nfs_writeback_done, ptr @nfs_writeback_result, ptr @nfs_initiate_write }, align 4
@__kstrtab_nfs_pageio_init_write = external dso_local constant [0 x i8], align 1
@__kstrtabns_nfs_pageio_init_write = external dso_local constant [0 x i8], align 1
@__ksymtab_nfs_pageio_init_write = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @nfs_pageio_init_write to i32), ptr @__kstrtab_nfs_pageio_init_write, ptr @__kstrtabns_nfs_pageio_init_write }, section "___ksymtab_gpl+nfs_pageio_init_write", align 4
@__kstrtab_nfs_pageio_reset_write_mds = external dso_local constant [0 x i8], align 1
@__kstrtabns_nfs_pageio_reset_write_mds = external dso_local constant [0 x i8], align 1
@__ksymtab_nfs_pageio_reset_write_mds = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @nfs_pageio_reset_write_mds to i32), ptr @__kstrtab_nfs_pageio_reset_write_mds, ptr @__kstrtabns_nfs_pageio_reset_write_mds }, section "___ksymtab_gpl+nfs_pageio_reset_write_mds", align 4
@__kstrtab_nfs_writeback_update_inode = external dso_local constant [0 x i8], align 1
@__kstrtabns_nfs_writeback_update_inode = external dso_local constant [0 x i8], align 1
@__ksymtab_nfs_writeback_update_inode = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @nfs_writeback_update_inode to i32), ptr @__kstrtab_nfs_writeback_update_inode, ptr @__kstrtabns_nfs_writeback_update_inode }, section "___ksymtab_gpl+nfs_writeback_update_inode", align 4
@__kstrtab_nfs_commitdata_release = external dso_local constant [0 x i8], align 1
@__kstrtabns_nfs_commitdata_release = external dso_local constant [0 x i8], align 1
@__ksymtab_nfs_commitdata_release = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @nfs_commitdata_release to i32), ptr @__kstrtab_nfs_commitdata_release, ptr @__kstrtabns_nfs_commitdata_release }, section "___ksymtab_gpl+nfs_commitdata_release", align 4
@nfsiod_workqueue = external dso_local local_unnamed_addr global ptr, align 4
@__kstrtab_nfs_initiate_commit = external dso_local constant [0 x i8], align 1
@__kstrtabns_nfs_initiate_commit = external dso_local constant [0 x i8], align 1
@__ksymtab_nfs_initiate_commit = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @nfs_initiate_commit to i32), ptr @__kstrtab_nfs_initiate_commit, ptr @__kstrtabns_nfs_initiate_commit }, section "___ksymtab_gpl+nfs_initiate_commit", align 4
@nfs_commit_ops = internal constant %struct.rpc_call_ops { ptr @nfs_commit_prepare, ptr @nfs_commit_done, ptr null, ptr @nfs_commit_release }, align 4
@__kstrtab_nfs_init_commit = external dso_local constant [0 x i8], align 1
@__kstrtabns_nfs_init_commit = external dso_local constant [0 x i8], align 1
@__ksymtab_nfs_init_commit = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @nfs_init_commit to i32), ptr @__kstrtab_nfs_init_commit, ptr @__kstrtabns_nfs_init_commit }, section "___ksymtab_gpl+nfs_init_commit", align 4
@__kstrtab_nfs_retry_commit = external dso_local constant [0 x i8], align 1
@__kstrtabns_nfs_retry_commit = external dso_local constant [0 x i8], align 1
@__ksymtab_nfs_retry_commit = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @nfs_retry_commit to i32), ptr @__kstrtab_nfs_retry_commit, ptr @__kstrtabns_nfs_retry_commit }, section "___ksymtab_gpl+nfs_retry_commit", align 4
@__kstrtab_nfs_commit_inode = external dso_local constant [0 x i8], align 1
@__kstrtabns_nfs_commit_inode = external dso_local constant [0 x i8], align 1
@__ksymtab_nfs_commit_inode = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @nfs_commit_inode to i32), ptr @__kstrtab_nfs_commit_inode, ptr @__kstrtabns_nfs_commit_inode }, section "___ksymtab_gpl+nfs_commit_inode", align 4
@__kstrtab_nfs_write_inode = external dso_local constant [0 x i8], align 1
@__kstrtabns_nfs_write_inode = external dso_local constant [0 x i8], align 1
@__ksymtab_nfs_write_inode = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @nfs_write_inode to i32), ptr @__kstrtab_nfs_write_inode, ptr @__kstrtabns_nfs_write_inode }, section "___ksymtab_gpl+nfs_write_inode", align 4
@__kstrtab_nfs_filemap_write_and_wait_range = external dso_local constant [0 x i8], align 1
@__kstrtabns_nfs_filemap_write_and_wait_range = external dso_local constant [0 x i8], align 1
@__ksymtab_nfs_filemap_write_and_wait_range = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @nfs_filemap_write_and_wait_range to i32), ptr @__kstrtab_nfs_filemap_write_and_wait_range, ptr @__kstrtabns_nfs_filemap_write_and_wait_range }, section "___ksymtab_gpl+nfs_filemap_write_and_wait_range", align 4
@__kstrtab_nfs_wb_all = external dso_local constant [0 x i8], align 1
@__kstrtabns_nfs_wb_all = external dso_local constant [0 x i8], align 1
@__ksymtab_nfs_wb_all = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @nfs_wb_all to i32), ptr @__kstrtab_nfs_wb_all, ptr @__kstrtabns_nfs_wb_all }, section "___ksymtab_gpl+nfs_wb_all", align 4
@.str.1 = private unnamed_addr constant [15 x i8] c"nfs_write_data\00", align 1
@nfs_wdata_cachep = internal unnamed_addr global ptr null, align 4
@nfs_wdata_mempool = internal unnamed_addr global ptr null, align 4
@.str.2 = private unnamed_addr constant [16 x i8] c"nfs_commit_data\00", align 1
@nfs_congestion_kb = dso_local local_unnamed_addr global i32 0, align 4
@nfs_destroy_unlinked_subrequests.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@nfs_page_async_flush.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@nfs_set_page_writeback.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@__tracepoint_nfs_write_error = external dso_local global %struct.tracepoint, align 4
@__cpu_online_mask = external dso_local global %struct.cpumask, align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@nr_cpu_ids = external dso_local local_unnamed_addr global i32, align 4
@nfs_commit_completion_ops = internal constant %struct.nfs_commit_completion_ops { ptr @nfs_commit_release_pages, ptr @nfs_commit_resched_write }, align 4
@__tracepoint_nfs_commit_error = external dso_local global %struct.tracepoint, align 4
@nfs_page_find_private_request.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@nfs_page_find_swap_request.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@nfs_inode_add_request.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@__tracepoint_nfs_size_grow = external dso_local global %struct.tracepoint, align 4
@__tracepoint_nfs_comp_error = external dso_local global %struct.tracepoint, align 4
@__tracepoint_nfs_initiate_commit = external dso_local global %struct.tracepoint, align 4
@__tracepoint_nfs_commit_done = external dso_local global %struct.tracepoint, align 4
@__tracepoint_nfs_writeback_inode_enter = external dso_local global %struct.tracepoint, align 4
@__tracepoint_nfs_writeback_inode_exit = external dso_local global %struct.tracepoint, align 4
@__tracepoint_nfs_writeback_page_enter = external dso_local global %struct.tracepoint, align 4
@__tracepoint_nfs_writeback_page_exit = external dso_local global %struct.tracepoint, align 4
@_totalram_pages = external dso_local global %struct.atomic_t, align 4
@nfs_writeback_done.complain = internal unnamed_addr global i32 0, align 4
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 64
@__tracepoint_nfs_writeback_done = external dso_local global %struct.tracepoint, align 4
@nfs_writeback_result.complain = internal unnamed_addr global i32 0, align 4
@.str.4 = private unnamed_addr constant [46 x i8] c"\014NFS: Server wrote zero bytes, expected %u.\0A\00", align 1
@__tracepoint_nfs_initiate_write = external dso_local global %struct.tracepoint, align 4
@llvm.compiler.used = appending global [18 x ptr] [ptr @__ksymtab_nfs_commit_free, ptr @__ksymtab_nfs_commit_inode, ptr @__ksymtab_nfs_commitdata_alloc, ptr @__ksymtab_nfs_commitdata_release, ptr @__ksymtab_nfs_filemap_write_and_wait_range, ptr @__ksymtab_nfs_init_cinfo, ptr @__ksymtab_nfs_init_commit, ptr @__ksymtab_nfs_initiate_commit, ptr @__ksymtab_nfs_pageio_init_write, ptr @__ksymtab_nfs_pageio_reset_write_mds, ptr @__ksymtab_nfs_request_add_commit_list, ptr @__ksymtab_nfs_request_add_commit_list_locked, ptr @__ksymtab_nfs_request_remove_commit_list, ptr @__ksymtab_nfs_retry_commit, ptr @__ksymtab_nfs_scan_commit_list, ptr @__ksymtab_nfs_wb_all, ptr @__ksymtab_nfs_write_inode, ptr @__ksymtab_nfs_writeback_update_inode], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @nfs_commitdata_alloc(i1 noundef zeroext %0) #0 {
  %2 = load ptr, ptr @nfs_commit_mempool, align 4
  br i1 %0, label %3, label %5

3:                                                ; preds = %1
  %4 = tail call noalias ptr @mempool_alloc(ptr noundef %2, i32 noundef 3072) #13
  br label %12

5:                                                ; preds = %1
  %6 = tail call noalias ptr @mempool_alloc(ptr noundef %2, i32 noundef 2048) #13
  %7 = icmp eq ptr %6, null
  br i1 %7, label %8, label %12

8:                                                ; preds = %5
  %9 = load ptr, ptr @nfs_cdata_cachep, align 4
  %10 = tail call noalias align 8 ptr @kmem_cache_alloc(ptr noundef %9, i32 noundef 76800) #13
  %11 = icmp eq ptr %10, null
  br i1 %11, label %16, label %12

12:                                               ; preds = %8, %5, %3
  %13 = phi ptr [ %4, %3 ], [ %10, %8 ], [ %6, %5 ]
  tail call void @llvm.memset.p0.i32(ptr noundef align 8 dereferenceable(488) %13, i8 0, i32 488, i1 false)
  %14 = getelementptr inbounds %struct.nfs_commit_data, ptr %13, i32 0, i32 5
  store volatile ptr %14, ptr %14, align 4
  %15 = getelementptr inbounds %struct.nfs_commit_data, ptr %13, i32 0, i32 5, i32 1
  store ptr %14, ptr %15, align 4
  br label %16

16:                                               ; preds = %12, %8
  %17 = phi ptr [ %13, %12 ], [ null, %8 ]
  ret ptr %17
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @mempool_alloc(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @kmem_cache_alloc(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @nfs_commit_free(ptr noundef %0) #0 {
  %2 = load ptr, ptr @nfs_commit_mempool, align 4
  tail call void @mempool_free(ptr noundef %0, ptr noundef %2) #13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mempool_free(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @nfs_join_page_group(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = alloca %struct.nfs_commit_info, align 4
  %4 = getelementptr inbounds %struct.nfs_page, ptr %0, i32 0, i32 5
  %5 = load i32, ptr %4, align 4
  %6 = getelementptr inbounds %struct.nfs_page, ptr %0, i32 0, i32 6
  %7 = load i32, ptr %6, align 4
  %8 = getelementptr inbounds %struct.nfs_page, ptr %0, i32 0, i32 4
  %9 = load i32, ptr %8, align 4
  %10 = getelementptr inbounds %struct.nfs_page, ptr %0, i32 0, i32 10
  %11 = load ptr, ptr %10, align 4
  %12 = icmp eq ptr %11, %0
  br i1 %12, label %32, label %13

13:                                               ; preds = %13, %2
  %14 = phi ptr [ %30, %13 ], [ %11, %2 ]
  %15 = phi i32 [ %23, %13 ], [ %5, %2 ]
  %16 = phi i32 [ %28, %13 ], [ %7, %2 ]
  %17 = phi i32 [ %21, %13 ], [ %9, %2 ]
  %18 = getelementptr inbounds %struct.nfs_page, ptr %14, i32 0, i32 5
  %19 = load i32, ptr %18, align 4
  %20 = tail call i32 @llvm.usub.sat.i32(i32 %15, i32 %19)
  %21 = sub i32 %17, %20
  %22 = add i32 %20, %16
  %23 = tail call i32 @llvm.umin.i32(i32 %15, i32 %19)
  %24 = getelementptr inbounds %struct.nfs_page, ptr %14, i32 0, i32 6
  %25 = load i32, ptr %24, align 4
  %26 = add i32 %25, %19
  %27 = sub i32 %26, %23
  %28 = tail call i32 @llvm.umax.i32(i32 %27, i32 %22)
  %29 = getelementptr inbounds %struct.nfs_page, ptr %14, i32 0, i32 10
  %30 = load ptr, ptr %29, align 4
  %31 = icmp eq ptr %30, %0
  br i1 %31, label %32, label %13

32:                                               ; preds = %13, %2
  %33 = phi i32 [ %9, %2 ], [ %21, %13 ]
  %34 = phi i32 [ %7, %2 ], [ %28, %13 ]
  %35 = phi i32 [ %5, %2 ], [ %23, %13 ]
  store i32 %35, ptr %4, align 4
  store i32 %34, ptr %6, align 4
  store i32 %33, ptr %8, align 4
  %36 = getelementptr inbounds %struct.nfs_commit_info, ptr %3, i32 0, i32 1
  %37 = getelementptr inbounds %struct.nfs_commit_info, ptr %3, i32 0, i32 2
  %38 = getelementptr inbounds %struct.nfs_commit_info, ptr %3, i32 0, i32 3
  %39 = getelementptr inbounds %struct.nfs_commit_info, ptr %3, i32 0, i32 4
  br label %40

40:                                               ; preds = %100, %32
  %41 = phi ptr [ %0, %32 ], [ %102, %100 ]
  %42 = getelementptr inbounds %struct.nfs_page, ptr %41, i32 0, i32 8
  %43 = load volatile i32, ptr %42, align 4
  %44 = and i32 %43, 4
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %100, label %46

46:                                               ; preds = %40
  %47 = getelementptr inbounds %struct.nfs_page, ptr %41, i32 0, i32 2
  %48 = load ptr, ptr %47, align 4
  %49 = getelementptr inbounds %struct.nfs_lock_context, ptr %48, i32 0, i32 2
  %50 = load ptr, ptr %49, align 4
  %51 = getelementptr inbounds %struct.nfs_open_context, ptr %50, i32 0, i32 2
  %52 = load ptr, ptr %51, align 4
  %53 = getelementptr inbounds %struct.dentry, ptr %52, i32 0, i32 5
  %54 = load ptr, ptr %53, align 8
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %3) #13
  store ptr %54, ptr %3, align 4
  %55 = getelementptr i8, ptr %54, i32 -108
  store ptr %55, ptr %36, align 4
  %56 = getelementptr inbounds %struct.inode, ptr %54, i32 0, i32 8
  %57 = load ptr, ptr %56, align 4
  %58 = getelementptr inbounds %struct.super_block, ptr %57, i32 0, i32 27
  %59 = load ptr, ptr %58, align 4
  %60 = getelementptr inbounds %struct.nfs_server, ptr %59, i32 0, i32 44
  %61 = load ptr, ptr %60, align 4
  %62 = icmp eq ptr %61, null
  br i1 %62, label %69, label %63

63:                                               ; preds = %46
  %64 = getelementptr inbounds %struct.pnfs_layoutdriver_type, ptr %61, i32 0, i32 17
  %65 = load ptr, ptr %64, align 4
  %66 = icmp eq ptr %65, null
  br i1 %66, label %69, label %67

67:                                               ; preds = %63
  %68 = call ptr %65(ptr noundef %54) #13
  br label %69

69:                                               ; preds = %67, %63, %46
  %70 = phi ptr [ %68, %67 ], [ null, %63 ], [ null, %46 ]
  store ptr %70, ptr %37, align 4
  store ptr null, ptr %38, align 4
  store ptr @nfs_commit_completion_ops, ptr %39, align 4
  %71 = getelementptr i8, ptr %54, i32 -92
  call void @mutex_lock(ptr noundef %71) #13
  %72 = icmp eq ptr %70, null
  br i1 %72, label %82, label %73

73:                                               ; preds = %69
  %74 = getelementptr inbounds %struct.pnfs_ds_commit_info, ptr %70, i32 0, i32 3
  %75 = load ptr, ptr %74, align 4
  %76 = icmp eq ptr %75, null
  br i1 %76, label %82, label %77

77:                                               ; preds = %73
  %78 = getelementptr inbounds %struct.pnfs_commit_ops, ptr %75, i32 0, i32 4
  %79 = load ptr, ptr %78, align 4
  %80 = icmp eq ptr %79, null
  br i1 %80, label %82, label %81

81:                                               ; preds = %77
  call void %79(ptr noundef %41, ptr noundef nonnull %3) #13
  br label %97

82:                                               ; preds = %77, %73, %69
  %83 = call i32 @_test_and_clear_bit(i32 noundef 2, ptr noundef %42) #13
  %84 = icmp eq i32 %83, 0
  br i1 %84, label %97, label %85

85:                                               ; preds = %82
  %86 = load volatile ptr, ptr %41, align 4
  %87 = icmp eq ptr %86, %41
  br i1 %87, label %93, label %88

88:                                               ; preds = %85
  %89 = getelementptr inbounds %struct.list_head, ptr %41, i32 0, i32 1
  %90 = load ptr, ptr %89, align 4
  %91 = getelementptr inbounds %struct.list_head, ptr %86, i32 0, i32 1
  store ptr %90, ptr %91, align 4
  store volatile ptr %86, ptr %90, align 4
  store volatile ptr %41, ptr %41, align 4
  store ptr %41, ptr %89, align 4
  %92 = load ptr, ptr %36, align 4
  br label %93

93:                                               ; preds = %88, %85
  %94 = phi ptr [ %92, %88 ], [ %55, %85 ]
  %95 = getelementptr inbounds %struct.nfs_mds_commit_info, ptr %94, i32 0, i32 1
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %95) #13, !srcloc !9
  %96 = call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %95, ptr %95, i32 1, ptr elementtype(i32) %95) #13, !srcloc !10
  br label %97

97:                                               ; preds = %93, %82, %81
  call void @mutex_unlock(ptr noundef %71) #13
  %98 = getelementptr inbounds %struct.nfs_page, ptr %41, i32 0, i32 1
  %99 = load ptr, ptr %98, align 4
  call fastcc void @nfs_clear_page_commit(ptr noundef %99) #13
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %3) #13
  br label %100

100:                                              ; preds = %97, %40
  %101 = getelementptr inbounds %struct.nfs_page, ptr %41, i32 0, i32 10
  %102 = load ptr, ptr %101, align 4
  %103 = icmp eq ptr %102, %0
  br i1 %103, label %104, label %40

104:                                              ; preds = %100
  %105 = load ptr, ptr %10, align 4
  %106 = icmp eq ptr %105, %0
  br i1 %106, label %142, label %107

107:                                              ; preds = %104
  store ptr %0, ptr %10, align 4
  %108 = icmp eq ptr %105, null
  br i1 %108, label %142, label %109

109:                                              ; preds = %107
  %110 = getelementptr i8, ptr %1, i32 -112
  br label %111

111:                                              ; preds = %139, %109
  %112 = phi ptr [ %105, %109 ], [ %114, %139 ]
  %113 = getelementptr inbounds %struct.nfs_page, ptr %112, i32 0, i32 10
  %114 = load ptr, ptr %113, align 4
  %115 = icmp eq ptr %114, %0
  %116 = call i32 @nfs_page_set_headlock(ptr noundef nonnull %112) #13
  %117 = getelementptr inbounds %struct.nfs_page, ptr %112, i32 0, i32 11
  %118 = load ptr, ptr %117, align 4
  %119 = icmp ne ptr %118, %0
  %120 = load i1, ptr @nfs_destroy_unlinked_subrequests.__already_done, align 1
  %121 = xor i1 %120, true
  %122 = select i1 %119, i1 %121, i1 false
  br i1 %122, label %123, label %124, !prof !11

123:                                              ; preds = %111
  store i1 true, ptr @nfs_destroy_unlinked_subrequests.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 462, i32 noundef 9, ptr noundef null) #13
  br label %124

124:                                              ; preds = %123, %111
  store ptr %112, ptr %113, align 4
  store ptr %112, ptr %117, align 4
  %125 = getelementptr inbounds %struct.nfs_page, ptr %112, i32 0, i32 8
  call void @_clear_bit(i32 noundef 10, ptr noundef %125) #13
  %126 = getelementptr inbounds %struct.nfs_page, ptr %112, i32 0, i32 7
  %127 = load volatile i32, ptr %126, align 4
  %128 = icmp eq i32 %127, 0
  br i1 %128, label %129, label %133

129:                                              ; preds = %124
  %130 = call i32 @_test_and_clear_bit(i32 noundef 6, ptr noundef %125) #13
  %131 = icmp eq i32 %130, 0
  call void @nfs_page_clear_headlock(ptr noundef nonnull %112) #13
  br i1 %131, label %139, label %132

132:                                              ; preds = %129
  call void @nfs_free_request(ptr noundef nonnull %112) #13
  br label %139

133:                                              ; preds = %124
  call void @nfs_page_clear_headlock(ptr noundef nonnull %112) #13
  call void @nfs_release_request(ptr noundef %0) #13
  %134 = call i32 @_test_and_clear_bit(i32 noundef 4, ptr noundef %125) #13
  %135 = icmp eq i32 %134, 0
  br i1 %135, label %138, label %136

136:                                              ; preds = %133
  call void @nfs_release_request(ptr noundef nonnull %112) #13
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %110) #13, !srcloc !9
  %137 = call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %110, ptr %110, i32 1, ptr elementtype(i32) %110) #13, !srcloc !10
  br label %138

138:                                              ; preds = %136, %133
  call void @nfs_unlock_and_release_request(ptr noundef nonnull %112) #13
  br label %139

139:                                              ; preds = %138, %132, %129
  %140 = icmp eq ptr %114, null
  %141 = or i1 %115, %140
  br i1 %141, label %142, label %111

142:                                              ; preds = %139, %107, %104
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @nfs_writepage(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = tail call fastcc i32 @nfs_writepage_locked(ptr noundef %0, ptr noundef %1)
  %4 = icmp eq i32 %3, 524288
  br i1 %4, label %6, label %5

5:                                                ; preds = %2
  tail call void @unlock_page(ptr noundef %0) #13
  br label %6

6:                                                ; preds = %5, %2
  ret i32 %3
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @nfs_writepage_locked(ptr noundef %0, ptr noundef %1) unnamed_addr #0 {
  %3 = alloca %struct.nfs_pageio_descriptor, align 4
  call void @llvm.lifetime.start.p0(i64 92, ptr nonnull %3) #13
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(92) %3, i8 0, i32 92, i1 false), !annotation !12
  %4 = getelementptr inbounds %struct.page, ptr %0, i32 0, i32 1
  %5 = load volatile i32, ptr %4, align 4
  %6 = and i32 %5, 1
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %10, label %8, !prof !13

8:                                                ; preds = %2
  %9 = add i32 %5, -1
  br label %12

10:                                               ; preds = %2
  %11 = ptrtoint ptr %0 to i32
  br label %12

12:                                               ; preds = %10, %8
  %13 = phi i32 [ %9, %8 ], [ %11, %10 ]
  %14 = inttoptr i32 %13 to ptr
  %15 = load volatile i32, ptr %14, align 4
  %16 = and i32 %15, 524288
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %24, label %18

18:                                               ; preds = %12
  %19 = load volatile i32, ptr %14, align 4
  %20 = and i32 %19, 1024
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %24, label %22, !prof !13

22:                                               ; preds = %18
  %23 = tail call ptr @swapcache_mapping(ptr noundef %14) #13
  br label %27

24:                                               ; preds = %18, %12
  %25 = getelementptr inbounds %struct.anon.154, ptr %14, i32 0, i32 2
  %26 = load ptr, ptr %25, align 4
  br label %27

27:                                               ; preds = %24, %22
  %28 = phi ptr [ %23, %22 ], [ %26, %24 ]
  %29 = load ptr, ptr %28, align 4
  %30 = getelementptr inbounds %struct.inode, ptr %29, i32 0, i32 8
  %31 = load ptr, ptr %30, align 4
  %32 = getelementptr inbounds %struct.super_block, ptr %31, i32 0, i32 27
  %33 = load ptr, ptr %32, align 4
  %34 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #13, !srcloc !14
  %35 = getelementptr inbounds %struct.nfs_server, ptr %33, i32 0, i32 6
  %36 = load ptr, ptr %35, align 8
  %37 = getelementptr %struct.nfs_iostats, ptr %36, i32 0, i32 1, i32 10
  %38 = ptrtoint ptr %37 to i32
  %39 = tail call i32 @llvm.read_register.i32(metadata !0) #13
  %40 = inttoptr i32 %39 to ptr
  %41 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %40) #7, !srcloc !15
  %42 = add i32 %41, %38
  %43 = inttoptr i32 %42 to ptr
  %44 = load i32, ptr %43, align 4
  %45 = add i32 %44, 1
  store i32 %45, ptr %43, align 4
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %34) #13, !srcloc !16
  %46 = load ptr, ptr %30, align 4
  %47 = getelementptr inbounds %struct.super_block, ptr %46, i32 0, i32 27
  %48 = load ptr, ptr %47, align 4
  %49 = getelementptr inbounds %struct.nfs_server, ptr %48, i32 0, i32 44
  %50 = load ptr, ptr %49, align 4
  %51 = icmp eq ptr %50, null
  br i1 %51, label %55, label %52

52:                                               ; preds = %27
  %53 = getelementptr inbounds %struct.pnfs_layoutdriver_type, ptr %50, i32 0, i32 16
  %54 = load ptr, ptr %53, align 4
  br label %55

55:                                               ; preds = %52, %27
  %56 = phi ptr [ %54, %52 ], [ @nfs_pgio_rw_ops, %27 ]
  %57 = getelementptr inbounds %struct.nfs_server, ptr %48, i32 0, i32 13
  %58 = load i32, ptr %57, align 4
  call void @nfs_pageio_init(ptr noundef nonnull %3, ptr noundef %29, ptr noundef %56, ptr noundef nonnull @nfs_async_write_completion_ops, ptr noundef nonnull @nfs_rw_write_ops, i32 noundef %58, i32 noundef 0) #13
  %59 = call fastcc i32 @nfs_do_writepage(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %3)
  %60 = getelementptr inbounds %struct.nfs_pageio_descriptor, ptr %3, i32 0, i32 4
  store i32 0, ptr %60, align 4
  call void @nfs_pageio_complete(ptr noundef nonnull %3) #13
  %61 = icmp slt i32 %59, 0
  br i1 %61, label %65, label %62

62:                                               ; preds = %55
  %63 = load i32, ptr %60, align 4
  switch i32 %63, label %65 [
    i32 -512, label %64
    i32 -4, label %64
    i32 -13, label %64
    i32 -122, label %64
    i32 -27, label %64
    i32 -5, label %64
    i32 -28, label %64
    i32 -30, label %64
    i32 -116, label %64
    i32 -7, label %64
    i32 -12, label %64
    i32 -110, label %64
  ]

64:                                               ; preds = %62, %62, %62, %62, %62, %62, %62, %62, %62, %62, %62, %62
  br label %65

65:                                               ; preds = %64, %62, %55
  %66 = phi i32 [ %59, %55 ], [ %63, %64 ], [ 0, %62 ]
  call void @llvm.lifetime.end.p0(i64 92, ptr nonnull %3) #13
  ret i32 %66
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @unlock_page(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @nfs_writepages(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = alloca %struct.nfs_pageio_descriptor, align 4
  %4 = load ptr, ptr %0, align 4
  call void @llvm.lifetime.start.p0(i64 92, ptr nonnull %3) #13
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(92) %3, i8 0, i32 92, i1 false), !annotation !12
  %5 = getelementptr inbounds %struct.inode, ptr %4, i32 0, i32 8
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.super_block, ptr %6, i32 0, i32 27
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.nfs_server, ptr %8, i32 0, i32 8
  %10 = load i32, ptr %9, align 8
  %11 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #13, !srcloc !14
  %12 = getelementptr inbounds %struct.nfs_server, ptr %8, i32 0, i32 6
  %13 = load ptr, ptr %12, align 8
  %14 = getelementptr %struct.nfs_iostats, ptr %13, i32 0, i32 1, i32 11
  %15 = ptrtoint ptr %14 to i32
  %16 = tail call i32 @llvm.read_register.i32(metadata !0) #13
  %17 = inttoptr i32 %16 to ptr
  %18 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %17) #7, !srcloc !15
  %19 = add i32 %18, %15
  %20 = inttoptr i32 %19 to ptr
  %21 = load i32, ptr %20, align 4
  %22 = add i32 %21, 1
  store i32 %22, ptr %20, align 4
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %11) #13, !srcloc !16
  %23 = and i32 %10, 16777216
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %30, label %25

25:                                               ; preds = %2
  %26 = getelementptr inbounds %struct.writeback_control, ptr %1, i32 0, i32 5
  %27 = load i16, ptr %26, align 4
  %28 = and i16 %27, 43
  %29 = icmp eq i16 %28, 0
  br i1 %29, label %42, label %30

30:                                               ; preds = %25, %2
  %31 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %32 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %31, i32 noundef 3264, i32 noundef 12) #14
  %33 = icmp eq ptr %32, null
  br i1 %33, label %37, label %34

34:                                               ; preds = %30
  store ptr @nfs_io_completion_commit, ptr %32, align 8
  %35 = getelementptr inbounds %struct.nfs_io_completion, ptr %32, i32 0, i32 1
  store ptr %4, ptr %35, align 4
  %36 = getelementptr inbounds %struct.nfs_io_completion, ptr %32, i32 0, i32 2
  store volatile i32 1, ptr %36, align 8
  br label %37

37:                                               ; preds = %34, %30
  %38 = getelementptr inbounds %struct.writeback_control, ptr %1, i32 0, i32 4
  %39 = load i32, ptr %38, align 8
  %40 = icmp eq i32 %39, 1
  %41 = select i1 %40, i32 32, i32 0
  br label %42

42:                                               ; preds = %37, %25
  %43 = phi ptr [ %32, %37 ], [ null, %25 ]
  %44 = phi i32 [ %41, %37 ], [ 0, %25 ]
  %45 = load ptr, ptr %5, align 4
  %46 = getelementptr inbounds %struct.super_block, ptr %45, i32 0, i32 27
  %47 = load ptr, ptr %46, align 4
  %48 = getelementptr inbounds %struct.nfs_server, ptr %47, i32 0, i32 44
  %49 = load ptr, ptr %48, align 4
  %50 = icmp eq ptr %49, null
  br i1 %50, label %54, label %51

51:                                               ; preds = %42
  %52 = getelementptr inbounds %struct.pnfs_layoutdriver_type, ptr %49, i32 0, i32 16
  %53 = load ptr, ptr %52, align 4
  br label %54

54:                                               ; preds = %51, %42
  %55 = phi ptr [ %53, %51 ], [ @nfs_pgio_rw_ops, %42 ]
  %56 = getelementptr inbounds %struct.nfs_server, ptr %47, i32 0, i32 13
  %57 = load i32, ptr %56, align 4
  call void @nfs_pageio_init(ptr noundef nonnull %3, ptr noundef %4, ptr noundef %55, ptr noundef nonnull @nfs_async_write_completion_ops, ptr noundef nonnull @nfs_rw_write_ops, i32 noundef %57, i32 noundef %44) #13
  %58 = getelementptr inbounds %struct.nfs_pageio_descriptor, ptr %3, i32 0, i32 8
  store ptr %43, ptr %58, align 4
  %59 = call i32 @write_cache_pages(ptr noundef %0, ptr noundef %1, ptr noundef nonnull @nfs_writepages_callback, ptr noundef nonnull %3) #13
  %60 = getelementptr inbounds %struct.nfs_pageio_descriptor, ptr %3, i32 0, i32 4
  store i32 0, ptr %60, align 4
  call void @nfs_pageio_complete(ptr noundef nonnull %3) #13
  %61 = icmp eq ptr %43, null
  br i1 %61, label %74, label %62

62:                                               ; preds = %54
  %63 = getelementptr inbounds %struct.nfs_io_completion, ptr %43, i32 0, i32 2
  call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !17
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %63) #13, !srcloc !9
  %64 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %63, ptr %63, i32 1, ptr elementtype(i32) %63) #13, !srcloc !18
  %65 = extractvalue { i32, i32, i32 } %64, 0
  %66 = icmp eq i32 %65, 1
  br i1 %66, label %70, label %67

67:                                               ; preds = %62
  %68 = icmp sgt i32 %65, 0
  br i1 %68, label %74, label %69, !prof !13

69:                                               ; preds = %67
  call void @refcount_warn_saturate(ptr noundef %63, i32 noundef 3) #13
  br label %74

70:                                               ; preds = %62
  call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !19
  %71 = load ptr, ptr %43, align 8
  %72 = getelementptr %struct.nfs_io_completion, ptr %43, i32 0, i32 1
  %73 = load ptr, ptr %72, align 4
  call void %71(ptr noundef %73) #13
  call void @kfree(ptr noundef nonnull %43) #13
  br label %74

74:                                               ; preds = %70, %69, %67, %54
  %75 = icmp slt i32 %59, 0
  br i1 %75, label %79, label %76

76:                                               ; preds = %74
  %77 = load i32, ptr %60, align 4
  switch i32 %77, label %79 [
    i32 -512, label %78
    i32 -4, label %78
    i32 -13, label %78
    i32 -122, label %78
    i32 -27, label %78
    i32 -5, label %78
    i32 -28, label %78
    i32 -30, label %78
    i32 -116, label %78
    i32 -7, label %78
    i32 -12, label %78
    i32 -110, label %78
  ]

78:                                               ; preds = %76, %76, %76, %76, %76, %76, %76, %76, %76, %76, %76, %76
  br label %79

79:                                               ; preds = %78, %76, %74
  %80 = phi i32 [ 0, %76 ], [ %59, %74 ], [ %77, %78 ]
  call void @llvm.lifetime.end.p0(i64 92, ptr nonnull %3) #13
  ret i32 %80
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @nfs_io_completion_commit(ptr noundef %0) #0 {
  %2 = tail call fastcc i32 @__nfs_commit_inode(ptr noundef %0, i32 noundef 0, ptr noundef null) #13
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @nfs_pageio_init_write(ptr noundef %0, ptr noundef %1, i32 noundef %2, i1 noundef zeroext %3, ptr noundef %4) #0 {
  %6 = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 8
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.super_block, ptr %7, i32 0, i32 27
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.nfs_server, ptr %9, i32 0, i32 44
  %11 = load ptr, ptr %10, align 4
  %12 = icmp eq ptr %11, null
  %13 = or i1 %12, %3
  br i1 %13, label %17, label %14

14:                                               ; preds = %5
  %15 = getelementptr inbounds %struct.pnfs_layoutdriver_type, ptr %11, i32 0, i32 16
  %16 = load ptr, ptr %15, align 4
  br label %17

17:                                               ; preds = %14, %5
  %18 = phi ptr [ %16, %14 ], [ @nfs_pgio_rw_ops, %5 ]
  %19 = getelementptr inbounds %struct.nfs_server, ptr %9, i32 0, i32 13
  %20 = load i32, ptr %19, align 4
  tail call void @nfs_pageio_init(ptr noundef %0, ptr noundef %1, ptr noundef %18, ptr noundef %4, ptr noundef nonnull @nfs_rw_write_ops, i32 noundef %20, i32 noundef %2) #13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @write_cache_pages(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @nfs_writepages_callback(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = tail call fastcc i32 @nfs_do_writepage(ptr noundef %0, ptr noundef %1, ptr noundef %2)
  %5 = icmp eq i32 %4, 524288
  br i1 %5, label %7, label %6

6:                                                ; preds = %3
  tail call void @unlock_page(ptr noundef %0) #13
  br label %7

7:                                                ; preds = %6, %3
  ret i32 %4
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @nfs_pageio_complete(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @nfs_request_add_commit_list_locked(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2) #0 {
  %4 = getelementptr inbounds %struct.nfs_page, ptr %0, i32 0, i32 8
  tail call void @_set_bit(i32 noundef 2, ptr noundef %4) #13
  %5 = getelementptr inbounds %struct.list_head, ptr %1, i32 0, i32 1
  %6 = load ptr, ptr %5, align 4
  store ptr %0, ptr %5, align 4
  store ptr %1, ptr %0, align 4
  %7 = getelementptr inbounds %struct.list_head, ptr %0, i32 0, i32 1
  store ptr %6, ptr %7, align 4
  store volatile ptr %0, ptr %6, align 4
  %8 = getelementptr inbounds %struct.nfs_commit_info, ptr %2, i32 0, i32 1
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.nfs_mds_commit_info, ptr %9, i32 0, i32 1
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %10) #13, !srcloc !9
  %11 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %10, ptr %10, i32 1, ptr elementtype(i32) %10) #13, !srcloc !20
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @nfs_request_add_commit_list(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = load ptr, ptr %1, align 4
  %4 = getelementptr i8, ptr %3, i32 -92
  tail call void @mutex_lock(ptr noundef %4) #13
  %5 = getelementptr inbounds %struct.nfs_commit_info, ptr %1, i32 0, i32 1
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.nfs_mds_commit_info, ptr %6, i32 0, i32 2
  %8 = getelementptr inbounds %struct.nfs_page, ptr %0, i32 0, i32 8
  tail call void @_set_bit(i32 noundef 2, ptr noundef %8) #13
  %9 = getelementptr inbounds %struct.nfs_mds_commit_info, ptr %6, i32 0, i32 2, i32 1
  %10 = load ptr, ptr %9, align 4
  store ptr %0, ptr %9, align 4
  store ptr %7, ptr %0, align 4
  %11 = getelementptr inbounds %struct.list_head, ptr %0, i32 0, i32 1
  store ptr %10, ptr %11, align 4
  store volatile ptr %0, ptr %10, align 4
  %12 = load ptr, ptr %5, align 4
  %13 = getelementptr inbounds %struct.nfs_mds_commit_info, ptr %12, i32 0, i32 1
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %13) #13, !srcloc !9
  %14 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %13, ptr %13, i32 1, ptr elementtype(i32) %13) #13, !srcloc !20
  %15 = load ptr, ptr %1, align 4
  %16 = getelementptr i8, ptr %15, i32 -92
  tail call void @mutex_unlock(ptr noundef %16) #13
  %17 = getelementptr inbounds %struct.nfs_page, ptr %0, i32 0, i32 1
  %18 = load ptr, ptr %17, align 4
  %19 = icmp eq ptr %18, null
  br i1 %19, label %59, label %20

20:                                               ; preds = %2
  %21 = getelementptr inbounds %struct.nfs_commit_info, ptr %1, i32 0, i32 3
  %22 = load ptr, ptr %21, align 4
  %23 = icmp eq ptr %22, null
  br i1 %23, label %24, label %59

24:                                               ; preds = %20
  %25 = getelementptr inbounds %struct.page, ptr %18, i32 0, i32 1
  %26 = load volatile i32, ptr %25, align 4
  %27 = and i32 %26, 1
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %31, label %29, !prof !13

29:                                               ; preds = %24
  %30 = add i32 %26, -1
  br label %33

31:                                               ; preds = %24
  %32 = ptrtoint ptr %18 to i32
  br label %33

33:                                               ; preds = %31, %29
  %34 = phi i32 [ %30, %29 ], [ %32, %31 ]
  %35 = inttoptr i32 %34 to ptr
  %36 = load volatile i32, ptr %35, align 4
  %37 = and i32 %36, 524288
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %45, label %39

39:                                               ; preds = %33
  %40 = load volatile i32, ptr %35, align 4
  %41 = and i32 %40, 1024
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %45, label %43, !prof !13

43:                                               ; preds = %39
  %44 = tail call ptr @swapcache_mapping(ptr noundef %35) #13
  br label %48

45:                                               ; preds = %39, %33
  %46 = getelementptr inbounds %struct.anon.154, ptr %35, i32 0, i32 2
  %47 = load ptr, ptr %46, align 4
  br label %48

48:                                               ; preds = %45, %43
  %49 = phi ptr [ %44, %43 ], [ %47, %45 ]
  %50 = load ptr, ptr %49, align 4
  tail call void @inc_node_page_state(ptr noundef nonnull %18, i32 noundef 21) #13
  %51 = tail call ptr @inode_to_bdi(ptr noundef %50) #13
  %52 = load i32, ptr @nr_cpu_ids, align 4
  %53 = icmp eq i32 %52, 0
  %54 = tail call i32 @llvm.ctlz.i32(i32 %52, i1 false) #13, !range !21
  %55 = getelementptr %struct.backing_dev_info, ptr %51, i32 0, i32 11, i32 9, i32 1
  %56 = mul nsw i32 %54, -8
  %57 = add nsw i32 %56, 256
  %58 = select i1 %53, i32 0, i32 %57
  tail call void @percpu_counter_add_batch(ptr noundef %55, i64 noundef 1, i32 noundef %58) #13
  tail call void @__mark_inode_dirty(ptr noundef %50, i32 noundef 2) #13
  br label %59

59:                                               ; preds = %48, %20, %2
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @nfs_request_remove_commit_list(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = getelementptr inbounds %struct.nfs_page, ptr %0, i32 0, i32 8
  %4 = tail call i32 @_test_and_clear_bit(i32 noundef 2, ptr noundef %3) #13
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %18, label %6

6:                                                ; preds = %2
  %7 = load volatile ptr, ptr %0, align 4
  %8 = icmp eq ptr %7, %0
  br i1 %8, label %13, label %9

9:                                                ; preds = %6
  %10 = getelementptr inbounds %struct.list_head, ptr %0, i32 0, i32 1
  %11 = load ptr, ptr %10, align 4
  %12 = getelementptr inbounds %struct.list_head, ptr %7, i32 0, i32 1
  store ptr %11, ptr %12, align 4
  store volatile ptr %7, ptr %11, align 4
  store volatile ptr %0, ptr %0, align 4
  store ptr %0, ptr %10, align 4
  br label %13

13:                                               ; preds = %9, %6
  %14 = getelementptr inbounds %struct.nfs_commit_info, ptr %1, i32 0, i32 1
  %15 = load ptr, ptr %14, align 4
  %16 = getelementptr inbounds %struct.nfs_mds_commit_info, ptr %15, i32 0, i32 1
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %16) #13, !srcloc !9
  %17 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %16, ptr %16, i32 1, ptr elementtype(i32) %16) #13, !srcloc !10
  br label %18

18:                                               ; preds = %13, %2
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @nfs_init_cinfo(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = icmp eq ptr %2, null
  br i1 %4, label %6, label %5

5:                                                ; preds = %3
  tail call void @nfs_init_cinfo_from_dreq(ptr noundef %0, ptr noundef nonnull %2) #13
  br label %27

6:                                                ; preds = %3
  store ptr %1, ptr %0, align 4
  %7 = getelementptr i8, ptr %1, i32 -108
  %8 = getelementptr inbounds %struct.nfs_commit_info, ptr %0, i32 0, i32 1
  store ptr %7, ptr %8, align 4
  %9 = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 8
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr inbounds %struct.super_block, ptr %10, i32 0, i32 27
  %12 = load ptr, ptr %11, align 4
  %13 = getelementptr inbounds %struct.nfs_server, ptr %12, i32 0, i32 44
  %14 = load ptr, ptr %13, align 4
  %15 = icmp eq ptr %14, null
  br i1 %15, label %22, label %16

16:                                               ; preds = %6
  %17 = getelementptr inbounds %struct.pnfs_layoutdriver_type, ptr %14, i32 0, i32 17
  %18 = load ptr, ptr %17, align 4
  %19 = icmp eq ptr %18, null
  br i1 %19, label %22, label %20

20:                                               ; preds = %16
  %21 = tail call ptr %18(ptr noundef %1) #13
  br label %22

22:                                               ; preds = %20, %16, %6
  %23 = phi ptr [ %21, %20 ], [ null, %16 ], [ null, %6 ]
  %24 = getelementptr inbounds %struct.nfs_commit_info, ptr %0, i32 0, i32 2
  store ptr %23, ptr %24, align 4
  %25 = getelementptr inbounds %struct.nfs_commit_info, ptr %0, i32 0, i32 3
  store ptr null, ptr %25, align 4
  %26 = getelementptr inbounds %struct.nfs_commit_info, ptr %0, i32 0, i32 4
  store ptr @nfs_commit_completion_ops, ptr %26, align 4
  br label %27

27:                                               ; preds = %22, %5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @nfs_init_cinfo_from_dreq(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @nfs_mark_request_commit(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3) local_unnamed_addr #0 {
  %5 = icmp eq ptr %1, null
  br i1 %5, label %17, label %6

6:                                                ; preds = %4
  %7 = getelementptr inbounds %struct.nfs_commit_info, ptr %2, i32 0, i32 2
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.pnfs_ds_commit_info, ptr %8, i32 0, i32 3
  %10 = load ptr, ptr %9, align 4
  %11 = icmp eq ptr %10, null
  br i1 %11, label %17, label %12

12:                                               ; preds = %6
  %13 = getelementptr inbounds %struct.pnfs_commit_ops, ptr %10, i32 0, i32 3
  %14 = load ptr, ptr %13, align 4
  %15 = icmp eq ptr %14, null
  br i1 %15, label %17, label %16

16:                                               ; preds = %12
  tail call void %14(ptr noundef %0, ptr noundef nonnull %1, ptr noundef %2, i32 noundef %3) #13
  br label %18

17:                                               ; preds = %12, %6, %4
  tail call void @nfs_request_add_commit_list(ptr noundef %0, ptr noundef %2)
  br label %18

18:                                               ; preds = %17, %16
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define dso_local i32 @nfs_write_need_commit(ptr nocapture noundef readonly %0) local_unnamed_addr #4 {
  %2 = getelementptr inbounds %struct.nfs_pgio_header, ptr %0, i32 0, i32 4, i32 1
  %3 = load i32, ptr %2, align 4
  %4 = icmp eq i32 %3, 1
  br i1 %4, label %5, label %9

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.nfs_pgio_header, ptr %0, i32 0, i32 6
  %7 = load ptr, ptr %6, align 4
  %8 = icmp eq ptr %7, null
  br label %11

9:                                                ; preds = %1
  %10 = icmp ne i32 %3, 2
  br label %11

11:                                               ; preds = %9, %5
  %12 = phi i1 [ %8, %5 ], [ %10, %9 ]
  %13 = zext i1 %12 to i32
  ret i32 %13
}

; Function Attrs: mustprogress nofree norecurse nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define dso_local i32 @nfs_reqs_to_commit(ptr nocapture noundef readonly %0) local_unnamed_addr #5 {
  %2 = getelementptr inbounds %struct.nfs_commit_info, ptr %0, i32 0, i32 1
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.nfs_mds_commit_info, ptr %3, i32 0, i32 1
  %5 = load volatile i32, ptr %4, align 4
  ret i32 %5
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @nfs_scan_commit_list(ptr noundef readonly %0, ptr noundef %1, ptr nocapture noundef readonly %2, i32 noundef %3) #0 {
  %5 = load ptr, ptr %0, align 4
  %6 = getelementptr inbounds %struct.nfs_commit_info, ptr %2, i32 0, i32 3
  %7 = icmp eq ptr %5, %0
  br i1 %7, label %57, label %8

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.nfs_commit_info, ptr %2, i32 0, i32 1
  %10 = getelementptr inbounds %struct.list_head, ptr %1, i32 0, i32 1
  br label %11

11:                                               ; preds = %54, %8
  %12 = phi ptr [ %5, %8 ], [ %14, %54 ]
  %13 = phi i32 [ 0, %8 ], [ %55, %54 ]
  %14 = load ptr, ptr %12, align 4
  %15 = getelementptr inbounds %struct.nfs_page, ptr %12, i32 0, i32 7
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %15) #13, !srcloc !9
  %16 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %15, ptr %15, i32 1, ptr elementtype(i32) %15) #13, !srcloc !22
  %17 = extractvalue { i32, i32, i32 } %16, 0
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %23, label %19, !prof !11

19:                                               ; preds = %11
  %20 = add i32 %17, 1
  %21 = or i32 %20, %17
  %22 = icmp sgt i32 %21, -1
  br i1 %22, label %25, label %23, !prof !13

23:                                               ; preds = %19, %11
  %24 = phi i32 [ 2, %11 ], [ 1, %19 ]
  tail call void @refcount_warn_saturate(ptr noundef %15, i32 noundef %24) #13
  br label %25

25:                                               ; preds = %23, %19
  %26 = getelementptr inbounds %struct.nfs_page, ptr %12, i32 0, i32 8
  %27 = tail call i32 @_test_and_set_bit(i32 noundef 0, ptr noundef %26) #13
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %30, label %29

29:                                               ; preds = %25
  tail call void @nfs_release_request(ptr noundef %12) #13
  br label %54

30:                                               ; preds = %25
  %31 = tail call i32 @_test_and_clear_bit(i32 noundef 2, ptr noundef %26) #13
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %44, label %33

33:                                               ; preds = %30
  %34 = load volatile ptr, ptr %12, align 4
  %35 = icmp eq ptr %34, %12
  br i1 %35, label %40, label %36

36:                                               ; preds = %33
  %37 = getelementptr inbounds %struct.list_head, ptr %12, i32 0, i32 1
  %38 = load ptr, ptr %37, align 4
  %39 = getelementptr inbounds %struct.list_head, ptr %34, i32 0, i32 1
  store ptr %38, ptr %39, align 4
  store volatile ptr %34, ptr %38, align 4
  store volatile ptr %12, ptr %12, align 4
  store ptr %12, ptr %37, align 4
  br label %40

40:                                               ; preds = %36, %33
  %41 = load ptr, ptr %9, align 4
  %42 = getelementptr inbounds %struct.nfs_mds_commit_info, ptr %41, i32 0, i32 1
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %42) #13, !srcloc !9
  %43 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %42, ptr %42, i32 1, ptr elementtype(i32) %42) #13, !srcloc !10
  br label %44

44:                                               ; preds = %40, %30
  tail call void @_clear_bit(i32 noundef 3, ptr noundef %26) #13
  %45 = load ptr, ptr %10, align 4
  store ptr %12, ptr %10, align 4
  store ptr %1, ptr %12, align 4
  %46 = getelementptr inbounds %struct.list_head, ptr %12, i32 0, i32 1
  store ptr %45, ptr %46, align 4
  store volatile ptr %12, ptr %45, align 4
  %47 = add i32 %13, 1
  %48 = icmp eq i32 %47, %3
  br i1 %48, label %49, label %52

49:                                               ; preds = %44
  %50 = load ptr, ptr %6, align 4
  %51 = icmp eq ptr %50, null
  br i1 %51, label %57, label %52

52:                                               ; preds = %49, %44
  %53 = tail call i32 @__cond_resched() #13
  br label %54

54:                                               ; preds = %52, %29
  %55 = phi i32 [ %47, %52 ], [ %13, %29 ]
  %56 = icmp eq ptr %14, %0
  br i1 %56, label %57, label %11

57:                                               ; preds = %54, %49, %4
  %58 = phi i32 [ 0, %4 ], [ %3, %49 ], [ %55, %54 ]
  ret i32 %58
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @nfs_release_request(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @nfs_scan_commit(ptr nocapture readnone %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.nfs_commit_info, ptr %2, i32 0, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.nfs_mds_commit_info, ptr %5, i32 0, i32 1
  %7 = load volatile i32, ptr %6, align 4
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %40, label %9

9:                                                ; preds = %3
  %10 = load ptr, ptr %2, align 4
  %11 = getelementptr i8, ptr %10, i32 -92
  tail call void @mutex_lock(ptr noundef %11) #13
  %12 = load ptr, ptr %4, align 4
  %13 = getelementptr inbounds %struct.nfs_mds_commit_info, ptr %12, i32 0, i32 1
  %14 = load volatile i32, ptr %13, align 4
  %15 = icmp sgt i32 %14, 0
  br i1 %15, label %16, label %36

16:                                               ; preds = %9
  %17 = getelementptr inbounds %struct.nfs_mds_commit_info, ptr %12, i32 0, i32 2
  %18 = tail call i32 @nfs_scan_commit_list(ptr noundef %17, ptr noundef %1, ptr noundef %2, i32 noundef 2147483647)
  %19 = sub i32 2147483647, %18
  %20 = getelementptr inbounds %struct.nfs_commit_info, ptr %2, i32 0, i32 2
  %21 = load ptr, ptr %20, align 4
  %22 = icmp eq ptr %21, null
  br i1 %22, label %33, label %23

23:                                               ; preds = %16
  %24 = getelementptr inbounds %struct.pnfs_ds_commit_info, ptr %21, i32 0, i32 1
  %25 = load i32, ptr %24, align 4
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %33, label %27

27:                                               ; preds = %23
  %28 = getelementptr inbounds %struct.pnfs_ds_commit_info, ptr %21, i32 0, i32 3
  %29 = load ptr, ptr %28, align 4
  %30 = getelementptr inbounds %struct.pnfs_commit_ops, ptr %29, i32 0, i32 5
  %31 = load ptr, ptr %30, align 4
  %32 = tail call i32 %31(ptr noundef %2, i32 noundef %19) #13
  br label %33

33:                                               ; preds = %27, %23, %16
  %34 = phi i32 [ %32, %27 ], [ 0, %23 ], [ 0, %16 ]
  %35 = add i32 %34, %18
  br label %36

36:                                               ; preds = %33, %9
  %37 = phi i32 [ %35, %33 ], [ 0, %9 ]
  %38 = load ptr, ptr %2, align 4
  %39 = getelementptr i8, ptr %38, i32 -92
  tail call void @mutex_unlock(ptr noundef %39) #13
  br label %40

40:                                               ; preds = %36, %3
  %41 = phi i32 [ %37, %36 ], [ 0, %3 ]
  ret i32 %41
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @nfs_flush_incompatible(ptr nocapture noundef readonly %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 15
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 2
  %6 = load ptr, ptr %5, align 8
  %7 = getelementptr inbounds %struct.inode, ptr %6, i32 0, i32 40
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.nfs_open_context, ptr %4, i32 0, i32 3
  %10 = getelementptr inbounds %struct.nfs_open_context, ptr %4, i32 0, i32 5
  %11 = icmp ne ptr %8, null
  %12 = getelementptr inbounds %struct.file_lock_context, ptr %8, i32 0, i32 2
  %13 = getelementptr inbounds %struct.file_lock_context, ptr %8, i32 0, i32 2, i32 1
  %14 = getelementptr inbounds %struct.file_lock_context, ptr %8, i32 0, i32 1
  %15 = getelementptr inbounds %struct.file_lock_context, ptr %8, i32 0, i32 1, i32 1
  %16 = getelementptr inbounds %struct.page, ptr %1, i32 0, i32 1
  %17 = ptrtoint ptr %1 to i32
  br label %18

18:                                               ; preds = %89, %2
  %19 = tail call fastcc ptr @nfs_page_find_head_request(ptr noundef %1)
  %20 = icmp eq ptr %19, null
  br i1 %20, label %94, label %21

21:                                               ; preds = %18
  %22 = getelementptr inbounds %struct.nfs_page, ptr %19, i32 0, i32 2
  %23 = load ptr, ptr %22, align 4
  %24 = getelementptr inbounds %struct.nfs_page, ptr %19, i32 0, i32 1
  %25 = load ptr, ptr %24, align 4
  %26 = icmp eq ptr %25, %1
  br i1 %26, label %27, label %43

27:                                               ; preds = %21
  %28 = getelementptr inbounds %struct.nfs_lock_context, ptr %23, i32 0, i32 2
  %29 = load ptr, ptr %28, align 4
  %30 = getelementptr inbounds %struct.nfs_open_context, ptr %29, i32 0, i32 3
  %31 = load ptr, ptr %30, align 4
  %32 = load ptr, ptr %9, align 4
  %33 = tail call i32 @cred_fscmp(ptr noundef %31, ptr noundef %32) #13
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %35, label %40

35:                                               ; preds = %27
  %36 = getelementptr inbounds %struct.nfs_open_context, ptr %29, i32 0, i32 5
  %37 = load ptr, ptr %36, align 4
  %38 = load ptr, ptr %10, align 4
  %39 = icmp eq ptr %37, %38
  br label %40

40:                                               ; preds = %35, %27
  %41 = phi i1 [ false, %27 ], [ %39, %35 ]
  %42 = xor i1 %41, true
  br label %43

43:                                               ; preds = %40, %21
  %44 = phi i1 [ true, %21 ], [ %42, %40 ]
  %45 = icmp ne ptr %23, null
  %46 = select i1 %45, i1 %11, i1 false
  br i1 %46, label %47, label %67

47:                                               ; preds = %43
  %48 = load volatile ptr, ptr %12, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !23
  %49 = icmp eq ptr %48, %12
  br i1 %49, label %50, label %59

50:                                               ; preds = %47
  %51 = load ptr, ptr %13, align 4
  %52 = icmp eq ptr %51, %12
  br i1 %52, label %53, label %59

53:                                               ; preds = %50
  %54 = load volatile ptr, ptr %14, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !23
  %55 = icmp eq ptr %54, %14
  br i1 %55, label %56, label %59

56:                                               ; preds = %53
  %57 = load ptr, ptr %15, align 4
  %58 = icmp eq ptr %57, %14
  br i1 %58, label %67, label %59

59:                                               ; preds = %56, %53, %50, %47
  %60 = getelementptr inbounds %struct.nfs_lock_context, ptr %23, i32 0, i32 3
  %61 = load ptr, ptr %60, align 4
  %62 = tail call ptr @llvm.thread.pointer() #13
  %63 = getelementptr inbounds %struct.task_struct, ptr %62, i32 0, i32 90
  %64 = load ptr, ptr %63, align 4
  %65 = icmp ne ptr %61, %64
  %66 = or i1 %44, %65
  tail call void @nfs_release_request(ptr noundef nonnull %19) #13
  br i1 %66, label %68, label %94

67:                                               ; preds = %56, %43
  tail call void @nfs_release_request(ptr noundef nonnull %19) #13
  br i1 %44, label %68, label %94

68:                                               ; preds = %67, %59
  %69 = load volatile i32, ptr %16, align 4
  %70 = and i32 %69, 1
  %71 = icmp eq i32 %70, 0
  br i1 %71, label %74, label %72, !prof !13

72:                                               ; preds = %68
  %73 = add i32 %69, -1
  br label %74

74:                                               ; preds = %72, %68
  %75 = phi i32 [ %73, %72 ], [ %17, %68 ]
  %76 = inttoptr i32 %75 to ptr
  %77 = load volatile i32, ptr %76, align 4
  %78 = and i32 %77, 524288
  %79 = icmp eq i32 %78, 0
  br i1 %79, label %86, label %80

80:                                               ; preds = %74
  %81 = load volatile i32, ptr %76, align 4
  %82 = and i32 %81, 1024
  %83 = icmp eq i32 %82, 0
  br i1 %83, label %86, label %84, !prof !13

84:                                               ; preds = %80
  %85 = tail call ptr @swapcache_mapping(ptr noundef %76) #13
  br label %89

86:                                               ; preds = %80, %74
  %87 = getelementptr inbounds %struct.anon.154, ptr %76, i32 0, i32 2
  %88 = load ptr, ptr %87, align 4
  br label %89

89:                                               ; preds = %86, %84
  %90 = phi ptr [ %85, %84 ], [ %88, %86 ]
  %91 = load ptr, ptr %90, align 4
  %92 = tail call i32 @nfs_wb_page(ptr noundef %91, ptr noundef %1)
  %93 = icmp eq i32 %92, 0
  br i1 %93, label %18, label %94

94:                                               ; preds = %89, %67, %59, %18
  %95 = phi i32 [ 0, %18 ], [ 0, %67 ], [ %92, %89 ], [ 0, %59 ]
  ret i32 %95
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc ptr @nfs_page_find_head_request(ptr noundef %0) unnamed_addr #0 {
  %2 = alloca %struct.nfs_commit_info, align 4
  %3 = getelementptr inbounds %struct.page, ptr %0, i32 0, i32 1
  %4 = load volatile i32, ptr %3, align 4
  %5 = and i32 %4, 1
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %9, label %7, !prof !13

7:                                                ; preds = %1
  %8 = add i32 %4, -1
  br label %11

9:                                                ; preds = %1
  %10 = ptrtoint ptr %0 to i32
  br label %11

11:                                               ; preds = %9, %7
  %12 = phi i32 [ %8, %7 ], [ %10, %9 ]
  %13 = inttoptr i32 %12 to ptr
  %14 = load volatile i32, ptr %13, align 4
  %15 = and i32 %14, 524288
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %23, label %17

17:                                               ; preds = %11
  %18 = load volatile i32, ptr %13, align 4
  %19 = and i32 %18, 1024
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %23, label %21, !prof !13

21:                                               ; preds = %17
  %22 = tail call ptr @swapcache_mapping(ptr noundef %13) #13
  br label %26

23:                                               ; preds = %17, %11
  %24 = getelementptr inbounds %struct.anon.154, ptr %13, i32 0, i32 2
  %25 = load ptr, ptr %24, align 4
  br label %26

26:                                               ; preds = %23, %21
  %27 = phi ptr [ %22, %21 ], [ %25, %23 ]
  %28 = load volatile i32, ptr %0, align 4
  %29 = and i32 %28, 8192
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %65, label %31

31:                                               ; preds = %26
  %32 = getelementptr inbounds %struct.address_space, ptr %27, i32 0, i32 12
  tail call void @_raw_spin_lock(ptr noundef %32) #13
  %33 = load volatile i32, ptr %0, align 4
  %34 = and i32 %33, 8192
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %60, label %36

36:                                               ; preds = %31
  %37 = getelementptr inbounds %struct.page, ptr %0, i32 0, i32 1, i32 0, i32 3
  %38 = load i32, ptr %37, align 4
  %39 = inttoptr i32 %38 to ptr
  %40 = icmp eq i32 %38, 0
  br i1 %40, label %60, label %41

41:                                               ; preds = %36
  %42 = getelementptr inbounds %struct.nfs_page, ptr %39, i32 0, i32 11
  %43 = load ptr, ptr %42, align 4
  %44 = icmp ne ptr %43, %39
  %45 = load i1, ptr @nfs_page_find_private_request.__already_done, align 1
  %46 = xor i1 %45, true
  %47 = select i1 %44, i1 %46, i1 false
  br i1 %47, label %48, label %49, !prof !11

48:                                               ; preds = %41
  store i1 true, ptr @nfs_page_find_private_request.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 203, i32 noundef 9, ptr noundef null) #13
  br label %49

49:                                               ; preds = %48, %41
  %50 = getelementptr inbounds %struct.nfs_page, ptr %39, i32 0, i32 7
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %50) #13, !srcloc !9
  %51 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %50, ptr %50, i32 1, ptr elementtype(i32) %50) #13, !srcloc !22
  %52 = extractvalue { i32, i32, i32 } %51, 0
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %58, label %54, !prof !11

54:                                               ; preds = %49
  %55 = add i32 %52, 1
  %56 = or i32 %55, %52
  %57 = icmp sgt i32 %56, -1
  br i1 %57, label %60, label %58, !prof !13

58:                                               ; preds = %54, %49
  %59 = phi i32 [ 2, %49 ], [ 1, %54 ]
  tail call void @refcount_warn_saturate(ptr noundef %50, i32 noundef %59) #13
  br label %60

60:                                               ; preds = %58, %54, %36, %31
  %61 = phi ptr [ null, %36 ], [ %39, %54 ], [ %39, %58 ], [ null, %31 ]
  tail call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !24
  %62 = load i16, ptr %32, align 4
  %63 = add i16 %62, 1
  store i16 %63, ptr %32, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #13, !srcloc !25
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #13, !srcloc !26
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !27
  %64 = icmp eq ptr %61, null
  br i1 %64, label %65, label %198

65:                                               ; preds = %60, %26
  %66 = load volatile i32, ptr %3, align 4
  %67 = and i32 %66, 1
  %68 = icmp eq i32 %67, 0
  br i1 %68, label %71, label %69, !prof !13

69:                                               ; preds = %65
  %70 = add i32 %66, -1
  br label %73

71:                                               ; preds = %65
  %72 = ptrtoint ptr %0 to i32
  br label %73

73:                                               ; preds = %71, %69
  %74 = phi i32 [ %70, %69 ], [ %72, %71 ]
  %75 = inttoptr i32 %74 to ptr
  %76 = load volatile i32, ptr %75, align 4
  %77 = and i32 %76, 524288
  %78 = icmp eq i32 %77, 0
  br i1 %78, label %85, label %79

79:                                               ; preds = %73
  %80 = load volatile i32, ptr %75, align 4
  %81 = and i32 %80, 1024
  %82 = icmp eq i32 %81, 0
  br i1 %82, label %85, label %83, !prof !13

83:                                               ; preds = %79
  %84 = tail call ptr @swapcache_mapping(ptr noundef %75) #13
  br label %88

85:                                               ; preds = %79, %73
  %86 = getelementptr inbounds %struct.anon.154, ptr %75, i32 0, i32 2
  %87 = load ptr, ptr %86, align 4
  br label %88

88:                                               ; preds = %85, %83
  %89 = phi ptr [ %84, %83 ], [ %87, %85 ]
  %90 = load ptr, ptr %89, align 4
  %91 = load volatile i32, ptr %3, align 4
  %92 = and i32 %91, 1
  %93 = icmp eq i32 %92, 0
  br i1 %93, label %96, label %94, !prof !13

94:                                               ; preds = %88
  %95 = add i32 %91, -1
  br label %98

96:                                               ; preds = %88
  %97 = ptrtoint ptr %0 to i32
  br label %98

98:                                               ; preds = %96, %94
  %99 = phi i32 [ %95, %94 ], [ %97, %96 ]
  %100 = inttoptr i32 %99 to ptr
  %101 = load volatile i32, ptr %100, align 4
  %102 = and i32 %101, 524288
  %103 = icmp eq i32 %102, 0
  br i1 %103, label %198, label %104

104:                                              ; preds = %98
  %105 = load volatile i32, ptr %100, align 4
  %106 = and i32 %105, 1024
  %107 = icmp eq i32 %106, 0
  br i1 %107, label %198, label %108

108:                                              ; preds = %104
  %109 = getelementptr i8, ptr %90, i32 -92
  tail call void @mutex_lock(ptr noundef %109) #13
  %110 = load volatile i32, ptr %3, align 4
  %111 = and i32 %110, 1
  %112 = icmp eq i32 %111, 0
  br i1 %112, label %115, label %113, !prof !13

113:                                              ; preds = %108
  %114 = add i32 %110, -1
  br label %117

115:                                              ; preds = %108
  %116 = ptrtoint ptr %0 to i32
  br label %117

117:                                              ; preds = %115, %113
  %118 = phi i32 [ %114, %113 ], [ %116, %115 ]
  %119 = inttoptr i32 %118 to ptr
  %120 = load volatile i32, ptr %119, align 4
  %121 = and i32 %120, 524288
  %122 = icmp eq i32 %121, 0
  br i1 %122, label %196, label %123

123:                                              ; preds = %117
  %124 = load volatile i32, ptr %119, align 4
  %125 = and i32 %124, 1024
  %126 = icmp eq i32 %125, 0
  br i1 %126, label %196, label %127

127:                                              ; preds = %123
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %2) #13
  store ptr %90, ptr %2, align 4
  %128 = getelementptr i8, ptr %90, i32 -108
  %129 = getelementptr inbounds %struct.nfs_commit_info, ptr %2, i32 0, i32 1
  store ptr %128, ptr %129, align 4
  %130 = getelementptr i8, ptr %90, i32 28
  %131 = load ptr, ptr %130, align 4
  %132 = getelementptr inbounds %struct.super_block, ptr %131, i32 0, i32 27
  %133 = load ptr, ptr %132, align 4
  %134 = getelementptr inbounds %struct.nfs_server, ptr %133, i32 0, i32 44
  %135 = load ptr, ptr %134, align 4
  %136 = icmp eq ptr %135, null
  br i1 %136, label %143, label %137

137:                                              ; preds = %127
  %138 = getelementptr inbounds %struct.pnfs_layoutdriver_type, ptr %135, i32 0, i32 17
  %139 = load ptr, ptr %138, align 4
  %140 = icmp eq ptr %139, null
  br i1 %140, label %143, label %141

141:                                              ; preds = %137
  %142 = tail call ptr %139(ptr noundef %90) #13
  br label %143

143:                                              ; preds = %141, %137, %127
  %144 = phi ptr [ %142, %141 ], [ null, %137 ], [ null, %127 ]
  %145 = getelementptr inbounds %struct.nfs_commit_info, ptr %2, i32 0, i32 2
  store ptr %144, ptr %145, align 4
  %146 = getelementptr inbounds %struct.nfs_commit_info, ptr %2, i32 0, i32 3
  store ptr null, ptr %146, align 4
  %147 = getelementptr inbounds %struct.nfs_commit_info, ptr %2, i32 0, i32 4
  store ptr @nfs_commit_completion_ops, ptr %147, align 4
  %148 = getelementptr inbounds %struct.pnfs_ds_commit_info, ptr %144, i32 0, i32 3
  %149 = load ptr, ptr %148, align 4
  %150 = icmp eq ptr %149, null
  br i1 %150, label %160, label %151

151:                                              ; preds = %143
  %152 = getelementptr inbounds %struct.pnfs_commit_ops, ptr %149, i32 0, i32 7
  %153 = load ptr, ptr %152, align 4
  %154 = icmp eq ptr %153, null
  br i1 %154, label %160, label %155

155:                                              ; preds = %151
  %156 = call ptr %153(ptr noundef nonnull %2, ptr noundef %0) #13
  %157 = icmp eq ptr %156, null
  br i1 %157, label %158, label %172

158:                                              ; preds = %155
  %159 = load ptr, ptr %129, align 4
  br label %160

160:                                              ; preds = %158, %151, %143
  %161 = phi ptr [ %159, %158 ], [ %128, %143 ], [ %128, %151 ]
  %162 = getelementptr inbounds %struct.nfs_mds_commit_info, ptr %161, i32 0, i32 2
  br label %163

163:                                              ; preds = %168, %160
  %164 = phi ptr [ %162, %160 ], [ %165, %168 ]
  %165 = load ptr, ptr %164, align 4
  %166 = icmp eq ptr %165, %162
  br i1 %166, label %167, label %168

167:                                              ; preds = %163
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %2) #13
  br label %196

168:                                              ; preds = %163
  %169 = getelementptr inbounds %struct.nfs_page, ptr %165, i32 0, i32 1
  %170 = load ptr, ptr %169, align 4
  %171 = icmp eq ptr %170, %0
  br i1 %171, label %172, label %163

172:                                              ; preds = %168, %155
  %173 = phi ptr [ %156, %155 ], [ %165, %168 ]
  %174 = getelementptr inbounds %struct.nfs_page, ptr %173, i32 0, i32 11
  %175 = load ptr, ptr %174, align 4
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %2) #13
  %176 = icmp eq ptr %175, null
  br i1 %176, label %196, label %177

177:                                              ; preds = %172
  %178 = getelementptr inbounds %struct.nfs_page, ptr %175, i32 0, i32 11
  %179 = load ptr, ptr %178, align 4
  %180 = icmp ne ptr %179, %175
  %181 = load i1, ptr @nfs_page_find_swap_request.__already_done, align 1
  %182 = xor i1 %181, true
  %183 = select i1 %180, i1 %182, i1 false
  br i1 %183, label %184, label %185, !prof !11

184:                                              ; preds = %177
  store i1 true, ptr @nfs_page_find_swap_request.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 223, i32 noundef 9, ptr noundef null) #13
  br label %185

185:                                              ; preds = %184, %177
  %186 = getelementptr inbounds %struct.nfs_page, ptr %175, i32 0, i32 7
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %186) #13, !srcloc !9
  %187 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %186, ptr %186, i32 1, ptr elementtype(i32) %186) #13, !srcloc !22
  %188 = extractvalue { i32, i32, i32 } %187, 0
  %189 = icmp eq i32 %188, 0
  br i1 %189, label %194, label %190, !prof !11

190:                                              ; preds = %185
  %191 = add i32 %188, 1
  %192 = or i32 %191, %188
  %193 = icmp sgt i32 %192, -1
  br i1 %193, label %196, label %194, !prof !13

194:                                              ; preds = %190, %185
  %195 = phi i32 [ 2, %185 ], [ 1, %190 ]
  call void @refcount_warn_saturate(ptr noundef %186, i32 noundef %195) #13
  br label %196

196:                                              ; preds = %194, %190, %172, %167, %123, %117
  %197 = phi ptr [ null, %172 ], [ null, %123 ], [ null, %167 ], [ %175, %190 ], [ %175, %194 ], [ null, %117 ]
  call void @mutex_unlock(ptr noundef %109) #13
  br label %198

198:                                              ; preds = %196, %104, %98, %60
  %199 = phi ptr [ %61, %60 ], [ %197, %196 ], [ null, %104 ], [ null, %98 ]
  ret ptr %199
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @nfs_wb_page(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = alloca %struct.writeback_control, align 8
  %4 = getelementptr inbounds %struct.page, ptr %1, i32 0, i32 1
  %5 = load volatile i32, ptr %4, align 4
  %6 = and i32 %5, 1
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %10, label %8, !prof !13

8:                                                ; preds = %2
  %9 = add i32 %5, -1
  br label %12

10:                                               ; preds = %2
  %11 = ptrtoint ptr %1 to i32
  br label %12

12:                                               ; preds = %10, %8
  %13 = phi i32 [ %9, %8 ], [ %11, %10 ]
  %14 = inttoptr i32 %13 to ptr
  %15 = load volatile i32, ptr %14, align 4
  %16 = and i32 %15, 524288
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %24, label %18

18:                                               ; preds = %12
  %19 = load volatile i32, ptr %14, align 4
  %20 = and i32 %19, 1024
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %24, label %22, !prof !13

22:                                               ; preds = %18
  %23 = tail call i32 @__page_file_index(ptr noundef %1) #13
  br label %27

24:                                               ; preds = %18, %12
  %25 = getelementptr inbounds %struct.page, ptr %1, i32 0, i32 1, i32 0, i32 2
  %26 = load i32, ptr %25, align 4
  br label %27

27:                                               ; preds = %24, %22
  %28 = phi i32 [ %23, %22 ], [ %26, %24 ]
  %29 = zext i32 %28 to i64
  %30 = shl nuw nsw i64 %29, 12
  %31 = or i64 %30, 4095
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #13
  %32 = getelementptr inbounds %struct.writeback_control, ptr %3, i32 0, i32 2
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %3, i8 0, i64 32, i1 false)
  store i64 %30, ptr %32, align 8
  %33 = getelementptr inbounds %struct.writeback_control, ptr %3, i32 0, i32 3
  store i64 %31, ptr %33, align 8
  %34 = getelementptr inbounds %struct.writeback_control, ptr %3, i32 0, i32 4
  store i32 1, ptr %34, align 8
  %35 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_nfs_writeback_page_enter, i32 0, i32 1), align 4
  %36 = icmp sgt i32 %35, 0
  br i1 %36, label %37, label %50

37:                                               ; preds = %27
  %38 = tail call ptr @llvm.thread.pointer() #13
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
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !28
  %49 = tail call i32 @__traceiter_nfs_writeback_page_enter(ptr noundef null, ptr noundef %0) #13
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !29
  br label %50

50:                                               ; preds = %48, %37, %27
  br label %51

51:                                               ; preds = %56, %50
  call void @wait_on_page_writeback(ptr noundef %1) #13
  %52 = call zeroext i1 @clear_page_dirty_for_io(ptr noundef %1) #13
  br i1 %52, label %53, label %57

53:                                               ; preds = %51
  %54 = call fastcc i32 @nfs_writepage_locked(ptr noundef %1, ptr noundef nonnull %3)
  %55 = icmp slt i32 %54, 0
  br i1 %55, label %64, label %56

56:                                               ; preds = %61, %53
  br label %51

57:                                               ; preds = %51
  %58 = load volatile i32, ptr %1, align 4
  %59 = and i32 %58, 8192
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %64, label %61

61:                                               ; preds = %57
  %62 = call fastcc i32 @__nfs_commit_inode(ptr noundef %0, i32 noundef 1, ptr noundef null) #13
  %63 = icmp slt i32 %62, 0
  br i1 %63, label %64, label %56

64:                                               ; preds = %61, %57, %53
  %65 = phi i32 [ %54, %53 ], [ %62, %61 ], [ 0, %57 ]
  %66 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_nfs_writeback_page_exit, i32 0, i32 1), align 4
  %67 = icmp sgt i32 %66, 0
  br i1 %67, label %68, label %81

68:                                               ; preds = %64
  %69 = tail call ptr @llvm.thread.pointer() #13
  %70 = getelementptr inbounds %struct.thread_info, ptr %69, i32 0, i32 2
  %71 = load i32, ptr %70, align 8
  %72 = lshr i32 %71, 5
  %73 = getelementptr i32, ptr @__cpu_online_mask, i32 %72
  %74 = load volatile i32, ptr %73, align 4
  %75 = and i32 %71, 31
  %76 = shl nuw i32 1, %75
  %77 = and i32 %76, %74
  %78 = icmp eq i32 %77, 0
  br i1 %78, label %81, label %79

79:                                               ; preds = %68
  call void asm sideeffect "", "~{memory}"() #13, !srcloc !30
  %80 = call i32 @__traceiter_nfs_writeback_page_exit(ptr noundef null, ptr noundef %0, i32 noundef %65) #13
  call void asm sideeffect "", "~{memory}"() #13, !srcloc !31
  br label %81

81:                                               ; preds = %79, %68, %64
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #13
  ret i32 %65
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @nfs_key_timeout_notify(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 15
  %4 = load ptr, ptr %3, align 8
  %5 = tail call zeroext i1 @nfs_ctx_key_to_expire(ptr noundef %4, ptr noundef %1)
  br i1 %5, label %6, label %10

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.nfs_open_context, ptr %4, i32 0, i32 4
  %8 = load volatile ptr, ptr %7, align 4
  %9 = icmp eq ptr %8, null
  br i1 %9, label %11, label %10

10:                                               ; preds = %6, %2
  br label %11

11:                                               ; preds = %10, %6
  %12 = phi i32 [ 0, %10 ], [ -13, %6 ]
  ret i32 %12
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local zeroext i1 @nfs_ctx_key_to_expire(ptr noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #0 {
  %3 = alloca %struct.auth_cred, align 8
  %4 = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 8
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.super_block, ptr %5, i32 0, i32 27
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.nfs_server, ptr %7, i32 0, i32 3
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.rpc_clnt, ptr %9, i32 0, i32 11
  %11 = load ptr, ptr %10, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #13
  %12 = getelementptr inbounds %struct.nfs_open_context, ptr %0, i32 0, i32 3
  %13 = load ptr, ptr %12, align 4
  store ptr %13, ptr %3, align 8
  %14 = getelementptr inbounds %struct.auth_cred, ptr %3, i32 0, i32 1
  store ptr null, ptr %14, align 4
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !32
  %15 = getelementptr inbounds %struct.nfs_open_context, ptr %0, i32 0, i32 4
  %16 = load volatile ptr, ptr %15, align 4
  %17 = icmp eq ptr %16, null
  br i1 %17, label %27, label %18

18:                                               ; preds = %2
  %19 = getelementptr inbounds %struct.rpc_cred, ptr %16, i32 0, i32 4
  %20 = load ptr, ptr %19, align 4
  %21 = getelementptr inbounds %struct.rpc_credops, ptr %20, i32 0, i32 9
  %22 = load ptr, ptr %21, align 4
  %23 = icmp eq ptr %22, null
  br i1 %23, label %54, label %24

24:                                               ; preds = %18
  %25 = tail call i32 %22(ptr noundef nonnull %16) #13
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %54, label %27

27:                                               ; preds = %24, %2
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !33
  %28 = getelementptr inbounds %struct.rpc_auth, ptr %11, i32 0, i32 5
  %29 = load ptr, ptr %28, align 4
  %30 = getelementptr inbounds %struct.rpc_authops, ptr %29, i32 0, i32 6
  %31 = load ptr, ptr %30, align 4
  %32 = call ptr %31(ptr noundef %11, ptr noundef nonnull %3, i32 noundef 0) #13
  %33 = icmp eq ptr %32, %16
  br i1 %33, label %57, label %34

34:                                               ; preds = %27
  %35 = icmp eq ptr %32, null
  %36 = icmp ugt ptr %32, inttoptr (i32 -4096 to ptr)
  %37 = or i1 %35, %36
  br i1 %37, label %47, label %38

38:                                               ; preds = %34
  %39 = getelementptr inbounds %struct.rpc_cred, ptr %32, i32 0, i32 4
  %40 = load ptr, ptr %39, align 4
  %41 = getelementptr inbounds %struct.rpc_credops, ptr %40, i32 0, i32 9
  %42 = load ptr, ptr %41, align 4
  %43 = icmp eq ptr %42, null
  br i1 %43, label %47, label %44

44:                                               ; preds = %38
  %45 = call i32 %42(ptr noundef nonnull %32) #13
  %46 = icmp ne i32 %45, 0
  br label %47

47:                                               ; preds = %44, %38, %34
  %48 = phi i1 [ false, %38 ], [ true, %34 ], [ %46, %44 ]
  %49 = phi ptr [ %32, %38 ], [ null, %34 ], [ %32, %44 ]
  call void asm sideeffect "", "~{memory}"() #13, !srcloc !32
  call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !34
  %50 = ptrtoint ptr %49 to i32
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %15) #13, !srcloc !9
  %51 = call { i32, i32 } asm sideeffect "@\09__xchg4\0A1:\09ldrex\09$0, [$3]\0A\09strex\09$1, $2, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,r,r,~{memory},~{cc}"(i32 %50, ptr %15) #13, !srcloc !35
  %52 = extractvalue { i32, i32 } %51, 0
  %53 = inttoptr i32 %52 to ptr
  call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !36
  br label %54

54:                                               ; preds = %47, %24, %18
  %55 = phi i1 [ %48, %47 ], [ false, %24 ], [ false, %18 ]
  %56 = phi ptr [ %53, %47 ], [ null, %24 ], [ null, %18 ]
  call void asm sideeffect "", "~{memory}"() #13, !srcloc !33
  br label %57

57:                                               ; preds = %54, %27
  %58 = phi ptr [ %56, %54 ], [ %16, %27 ]
  %59 = phi i1 [ %55, %54 ], [ true, %27 ]
  call void @put_rpccred(ptr noundef %58) #13
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #13
  ret i1 %59
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @put_rpccred(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @nfs_updatepage(ptr nocapture noundef readonly %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #0 {
  %5 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 15
  %6 = load ptr, ptr %5, align 8
  %7 = getelementptr inbounds %struct.page, ptr %1, i32 0, i32 1
  %8 = load volatile i32, ptr %7, align 4
  %9 = and i32 %8, 1
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %13, label %11, !prof !13

11:                                               ; preds = %4
  %12 = add i32 %8, -1
  br label %15

13:                                               ; preds = %4
  %14 = ptrtoint ptr %1 to i32
  br label %15

15:                                               ; preds = %13, %11
  %16 = phi i32 [ %12, %11 ], [ %14, %13 ]
  %17 = inttoptr i32 %16 to ptr
  %18 = load volatile i32, ptr %17, align 4
  %19 = and i32 %18, 524288
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %27, label %21

21:                                               ; preds = %15
  %22 = load volatile i32, ptr %17, align 4
  %23 = and i32 %22, 1024
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %27, label %25, !prof !13

25:                                               ; preds = %21
  %26 = tail call ptr @swapcache_mapping(ptr noundef %17) #13
  br label %30

27:                                               ; preds = %21, %15
  %28 = getelementptr inbounds %struct.anon.154, ptr %17, i32 0, i32 2
  %29 = load ptr, ptr %28, align 4
  br label %30

30:                                               ; preds = %27, %25
  %31 = phi ptr [ %26, %25 ], [ %29, %27 ]
  %32 = load ptr, ptr %31, align 4
  %33 = load volatile i32, ptr %7, align 4
  %34 = and i32 %33, 1
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %38, label %36, !prof !13

36:                                               ; preds = %30
  %37 = add i32 %33, -1
  br label %40

38:                                               ; preds = %30
  %39 = ptrtoint ptr %1 to i32
  br label %40

40:                                               ; preds = %38, %36
  %41 = phi i32 [ %37, %36 ], [ %39, %38 ]
  %42 = inttoptr i32 %41 to ptr
  %43 = load volatile i32, ptr %42, align 4
  %44 = and i32 %43, 524288
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %52, label %46

46:                                               ; preds = %40
  %47 = load volatile i32, ptr %42, align 4
  %48 = and i32 %47, 1024
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %52, label %50, !prof !13

50:                                               ; preds = %46
  %51 = tail call ptr @swapcache_mapping(ptr noundef %42) #13
  br label %55

52:                                               ; preds = %46, %40
  %53 = getelementptr inbounds %struct.anon.154, ptr %42, i32 0, i32 2
  %54 = load ptr, ptr %53, align 4
  br label %55

55:                                               ; preds = %52, %50
  %56 = phi ptr [ %51, %50 ], [ %54, %52 ]
  %57 = load ptr, ptr %56, align 4
  %58 = getelementptr inbounds %struct.inode, ptr %57, i32 0, i32 22
  %59 = getelementptr inbounds %struct.inode, ptr %57, i32 0, i32 13
  br label %60

60:                                               ; preds = %68, %55
  %61 = load volatile i32, ptr %58, align 4
  %62 = and i32 %61, 1
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %68, label %64

64:                                               ; preds = %64, %60
  tail call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !37
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #13, !srcloc !38
  %65 = load volatile i32, ptr %58, align 4
  %66 = and i32 %65, 1
  %67 = icmp eq i32 %66, 0
  br i1 %67, label %68, label %64

68:                                               ; preds = %64, %60
  %69 = phi i32 [ %61, %60 ], [ %65, %64 ]
  tail call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !39
  %70 = load i64, ptr %59, align 8
  tail call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !40
  %71 = load volatile i32, ptr %58, align 4
  %72 = icmp eq i32 %71, %69
  br i1 %72, label %73, label %60

73:                                               ; preds = %68
  %74 = icmp sgt i64 %70, 0
  br i1 %74, label %75, label %110

75:                                               ; preds = %73
  %76 = load volatile i32, ptr %7, align 4
  %77 = and i32 %76, 1
  %78 = icmp eq i32 %77, 0
  br i1 %78, label %81, label %79, !prof !13

79:                                               ; preds = %75
  %80 = add i32 %76, -1
  br label %83

81:                                               ; preds = %75
  %82 = ptrtoint ptr %1 to i32
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
  br i1 %92, label %95, label %93, !prof !13

93:                                               ; preds = %89
  %94 = tail call i32 @__page_file_index(ptr noundef %1) #13
  br label %98

95:                                               ; preds = %89, %83
  %96 = getelementptr inbounds %struct.page, ptr %1, i32 0, i32 1, i32 0, i32 2
  %97 = load i32, ptr %96, align 4
  br label %98

98:                                               ; preds = %95, %93
  %99 = phi i32 [ %94, %93 ], [ %97, %95 ]
  %100 = add nsw i64 %70, -1
  %101 = lshr i64 %100, 12
  %102 = trunc i64 %101 to i32
  %103 = icmp ult i32 %99, %102
  br i1 %103, label %110, label %104

104:                                              ; preds = %98
  %105 = icmp eq i32 %99, %102
  br i1 %105, label %106, label %110

106:                                              ; preds = %104
  %107 = trunc i64 %100 to i32
  %108 = and i32 %107, 4095
  %109 = add nuw nsw i32 %108, 1
  br label %110

110:                                              ; preds = %106, %104, %98, %73
  %111 = phi i32 [ 0, %104 ], [ 0, %73 ], [ 4096, %98 ], [ %109, %106 ]
  %112 = getelementptr inbounds %struct.inode, ptr %32, i32 0, i32 8
  %113 = load ptr, ptr %112, align 4
  %114 = getelementptr inbounds %struct.super_block, ptr %113, i32 0, i32 27
  %115 = load ptr, ptr %114, align 4
  %116 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #13, !srcloc !14
  %117 = getelementptr inbounds %struct.nfs_server, ptr %115, i32 0, i32 6
  %118 = load ptr, ptr %117, align 8
  %119 = getelementptr %struct.nfs_iostats, ptr %118, i32 0, i32 1, i32 7
  %120 = ptrtoint ptr %119 to i32
  %121 = tail call i32 @llvm.read_register.i32(metadata !0) #13
  %122 = inttoptr i32 %121 to ptr
  %123 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %122) #7, !srcloc !15
  %124 = add i32 %123, %120
  %125 = inttoptr i32 %124 to ptr
  %126 = load i32, ptr %125, align 4
  %127 = add i32 %126, 1
  store i32 %127, ptr %125, align 4
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %116) #13, !srcloc !16
  %128 = icmp eq i32 %3, 0
  br i1 %128, label %674, label %129

129:                                              ; preds = %110
  %130 = getelementptr inbounds %struct.inode, ptr %32, i32 0, i32 40
  %131 = load ptr, ptr %130, align 4
  %132 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 7
  %133 = load i32, ptr %132, align 4
  %134 = and i32 %133, 4096
  %135 = icmp eq i32 %134, 0
  br i1 %135, label %136, label %234

136:                                              ; preds = %129
  %137 = load ptr, ptr %112, align 4
  %138 = getelementptr inbounds %struct.super_block, ptr %137, i32 0, i32 27
  %139 = load ptr, ptr %138, align 4
  %140 = load ptr, ptr %139, align 8
  %141 = getelementptr inbounds %struct.nfs_client, ptr %140, i32 0, i32 12
  %142 = load ptr, ptr %141, align 4
  %143 = getelementptr inbounds %struct.nfs_rpc_ops, ptr %142, i32 0, i32 47
  %144 = load ptr, ptr %143, align 4
  %145 = tail call i32 %144(ptr noundef %32, i32 noundef 1) #13
  %146 = icmp eq i32 %145, 0
  br i1 %146, label %147, label %159

147:                                              ; preds = %136
  %148 = getelementptr i8, ptr %32, i32 -152
  %149 = load i32, ptr %148, align 8
  %150 = and i32 %149, 2304
  %151 = icmp eq i32 %150, 0
  br i1 %151, label %152, label %234

152:                                              ; preds = %147
  tail call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !41
  %153 = getelementptr i8, ptr %32, i32 -156
  %154 = load volatile i32, ptr %153, align 4
  %155 = and i32 %154, 8
  %156 = icmp ne i32 %155, 0
  %157 = icmp ne i32 %111, 0
  %158 = and i1 %157, %156
  br i1 %158, label %234, label %159

159:                                              ; preds = %152, %136
  %160 = getelementptr i8, ptr %32, i32 -152
  %161 = load i32, ptr %160, align 8
  %162 = and i32 %161, 2
  %163 = icmp ne i32 %162, 0
  %164 = icmp ne i32 %111, 0
  %165 = and i1 %164, %163
  br i1 %165, label %234, label %166

166:                                              ; preds = %159
  %167 = load volatile i32, ptr %7, align 4
  %168 = and i32 %167, 1
  %169 = icmp eq i32 %168, 0
  br i1 %169, label %172, label %170, !prof !13

170:                                              ; preds = %166
  %171 = add i32 %167, -1
  br label %174

172:                                              ; preds = %166
  %173 = ptrtoint ptr %1 to i32
  br label %174

174:                                              ; preds = %172, %170
  %175 = phi i32 [ %171, %170 ], [ %173, %172 ]
  %176 = inttoptr i32 %175 to ptr
  %177 = load volatile i32, ptr %176, align 4
  %178 = and i32 %177, 4
  %179 = icmp eq i32 %178, 0
  br i1 %179, label %234, label %180

180:                                              ; preds = %174
  tail call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !42
  %181 = load ptr, ptr %112, align 4
  %182 = getelementptr inbounds %struct.super_block, ptr %181, i32 0, i32 27
  %183 = load ptr, ptr %182, align 4
  %184 = load ptr, ptr %183, align 8
  %185 = getelementptr inbounds %struct.nfs_client, ptr %184, i32 0, i32 12
  %186 = load ptr, ptr %185, align 4
  %187 = getelementptr inbounds %struct.nfs_rpc_ops, ptr %186, i32 0, i32 47
  %188 = load ptr, ptr %187, align 4
  %189 = tail call i32 %188(ptr noundef %32, i32 noundef 2) #13
  %190 = icmp ne i32 %189, 0
  %191 = icmp eq ptr %131, null
  %192 = select i1 %190, i1 true, i1 %191
  br i1 %192, label %234, label %193

193:                                              ; preds = %180
  %194 = getelementptr inbounds %struct.file_lock_context, ptr %131, i32 0, i32 1
  %195 = load volatile ptr, ptr %194, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !23
  %196 = icmp eq ptr %195, %194
  br i1 %196, label %197, label %209

197:                                              ; preds = %193
  %198 = getelementptr inbounds %struct.file_lock_context, ptr %131, i32 0, i32 1, i32 1
  %199 = load ptr, ptr %198, align 4
  %200 = icmp eq ptr %199, %194
  br i1 %200, label %201, label %209

201:                                              ; preds = %197
  %202 = getelementptr inbounds %struct.file_lock_context, ptr %131, i32 0, i32 2
  %203 = load volatile ptr, ptr %202, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !23
  %204 = icmp eq ptr %203, %202
  br i1 %204, label %205, label %209

205:                                              ; preds = %201
  %206 = getelementptr inbounds %struct.file_lock_context, ptr %131, i32 0, i32 2, i32 1
  %207 = load ptr, ptr %206, align 4
  %208 = icmp eq ptr %207, %202
  br i1 %208, label %234, label %209

209:                                              ; preds = %205, %201, %197, %193
  tail call void @_raw_spin_lock(ptr noundef nonnull %131) #13
  %210 = getelementptr inbounds %struct.file_lock_context, ptr %131, i32 0, i32 2
  %211 = load volatile ptr, ptr %210, align 4
  %212 = icmp eq ptr %211, %210
  br i1 %212, label %221, label %213

213:                                              ; preds = %209
  %214 = getelementptr i8, ptr %211, i32 68
  %215 = load i64, ptr %214, align 8
  %216 = icmp eq i64 %215, 0
  br i1 %216, label %217, label %230

217:                                              ; preds = %213
  %218 = getelementptr i8, ptr %211, i32 76
  %219 = load i64, ptr %218, align 8
  %220 = icmp eq i64 %219, 9223372036854775807
  br i1 %220, label %224, label %230

221:                                              ; preds = %209
  %222 = load volatile ptr, ptr %194, align 4
  %223 = icmp eq ptr %222, %194
  br i1 %223, label %230, label %224

224:                                              ; preds = %221, %217
  %225 = phi ptr [ %211, %217 ], [ %222, %221 ]
  %226 = getelementptr i8, ptr %225, i32 40
  %227 = load i8, ptr %226, align 4
  %228 = icmp eq i8 %227, 1
  %229 = zext i1 %228 to i32
  br label %230

230:                                              ; preds = %224, %221, %217, %213
  %231 = phi i32 [ 0, %221 ], [ 0, %217 ], [ 0, %213 ], [ %229, %224 ]
  tail call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !24
  %232 = load i16, ptr %131, align 4
  %233 = add i16 %232, 1
  store i16 %233, ptr %131, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #13, !srcloc !25
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #13, !srcloc !26
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !27
  br label %234

234:                                              ; preds = %230, %205, %180, %174, %159, %152, %147, %129
  %235 = phi i32 [ %231, %230 ], [ 0, %129 ], [ 1, %180 ], [ 1, %205 ], [ 0, %174 ], [ 0, %147 ], [ 0, %152 ], [ 0, %159 ]
  %236 = icmp eq i32 %235, 0
  %237 = add i32 %3, %2
  %238 = tail call i32 @llvm.umax.i32(i32 %237, i32 %111)
  %239 = select i1 %236, i32 %3, i32 %238
  %240 = select i1 %236, i32 %2, i32 0
  %241 = load volatile i32, ptr %7, align 4
  %242 = and i32 %241, 1
  %243 = icmp eq i32 %242, 0
  br i1 %243, label %246, label %244, !prof !13

244:                                              ; preds = %234
  %245 = add i32 %241, -1
  br label %248

246:                                              ; preds = %234
  %247 = ptrtoint ptr %1 to i32
  br label %248

248:                                              ; preds = %246, %244
  %249 = phi i32 [ %245, %244 ], [ %247, %246 ]
  %250 = inttoptr i32 %249 to ptr
  %251 = load volatile i32, ptr %250, align 4
  %252 = and i32 %251, 524288
  %253 = icmp eq i32 %252, 0
  br i1 %253, label %260, label %254

254:                                              ; preds = %248
  %255 = load volatile i32, ptr %250, align 4
  %256 = and i32 %255, 1024
  %257 = icmp eq i32 %256, 0
  br i1 %257, label %260, label %258, !prof !13

258:                                              ; preds = %254
  %259 = tail call ptr @swapcache_mapping(ptr noundef %250) #13
  br label %263

260:                                              ; preds = %254, %248
  %261 = getelementptr inbounds %struct.anon.154, ptr %250, i32 0, i32 2
  %262 = load ptr, ptr %261, align 4
  br label %263

263:                                              ; preds = %260, %258
  %264 = phi ptr [ %259, %258 ], [ %262, %260 ]
  %265 = load ptr, ptr %264, align 4
  %266 = add i32 %239, %240
  %267 = tail call fastcc ptr @nfs_lock_and_join_requests(ptr noundef %1) #13
  %268 = icmp eq ptr %267, null
  %269 = icmp ugt ptr %267, inttoptr (i32 -4096 to ptr)
  %270 = or i1 %268, %269
  br i1 %270, label %299, label %271

271:                                              ; preds = %263
  %272 = getelementptr inbounds %struct.nfs_page, ptr %267, i32 0, i32 4
  %273 = load i32, ptr %272, align 4
  %274 = getelementptr inbounds %struct.nfs_page, ptr %267, i32 0, i32 6
  %275 = load i32, ptr %274, align 4
  %276 = add i32 %275, %273
  %277 = icmp ult i32 %276, %240
  %278 = icmp ult i32 %266, %273
  %279 = or i1 %278, %277
  br i1 %279, label %289, label %280

280:                                              ; preds = %271
  %281 = icmp ugt i32 %273, %240
  br i1 %281, label %282, label %284

282:                                              ; preds = %280
  store i32 %240, ptr %272, align 4
  %283 = getelementptr inbounds %struct.nfs_page, ptr %267, i32 0, i32 5
  store i32 %240, ptr %283, align 4
  br label %284

284:                                              ; preds = %282, %280
  %285 = phi i32 [ %240, %282 ], [ %273, %280 ]
  %286 = tail call i32 @llvm.umax.i32(i32 %266, i32 %276) #13
  %287 = sub i32 %286, %285
  store i32 %287, ptr %274, align 4
  %288 = getelementptr inbounds %struct.nfs_page, ptr %267, i32 0, i32 12
  store i16 0, ptr %288, align 4
  br label %387

289:                                              ; preds = %271
  %290 = getelementptr inbounds %struct.nfs_page, ptr %267, i32 0, i32 1
  %291 = load ptr, ptr %290, align 4
  %292 = icmp eq ptr %291, null
  br i1 %292, label %295, label %293

293:                                              ; preds = %289
  %294 = tail call i32 @__set_page_dirty_nobuffers(ptr noundef nonnull %291) #13
  br label %295

295:                                              ; preds = %293, %289
  tail call void @nfs_unlock_and_release_request(ptr noundef nonnull %267) #13
  %296 = tail call i32 @nfs_wb_page(ptr noundef %265, ptr noundef %1) #13
  %297 = icmp slt i32 %296, 0
  %298 = inttoptr i32 %296 to ptr
  br i1 %297, label %299, label %302

299:                                              ; preds = %295, %263
  %300 = phi ptr [ %267, %263 ], [ %298, %295 ]
  %301 = icmp eq ptr %300, null
  br i1 %301, label %302, label %387

302:                                              ; preds = %299, %295
  %303 = tail call ptr @nfs_create_request(ptr noundef %6, ptr noundef %1, i32 noundef %240, i32 noundef %239) #13
  %304 = icmp ugt ptr %303, inttoptr (i32 -4096 to ptr)
  br i1 %304, label %387, label %305

305:                                              ; preds = %302
  %306 = getelementptr inbounds %struct.nfs_page, ptr %303, i32 0, i32 1
  %307 = load ptr, ptr %306, align 4
  %308 = getelementptr inbounds %struct.page, ptr %307, i32 0, i32 1
  %309 = load volatile i32, ptr %308, align 4
  %310 = and i32 %309, 1
  %311 = icmp eq i32 %310, 0
  br i1 %311, label %314, label %312, !prof !13

312:                                              ; preds = %305
  %313 = add i32 %309, -1
  br label %316

314:                                              ; preds = %305
  %315 = ptrtoint ptr %307 to i32
  br label %316

316:                                              ; preds = %314, %312
  %317 = phi i32 [ %313, %312 ], [ %315, %314 ]
  %318 = inttoptr i32 %317 to ptr
  %319 = load volatile i32, ptr %318, align 4
  %320 = and i32 %319, 524288
  %321 = icmp eq i32 %320, 0
  br i1 %321, label %328, label %322

322:                                              ; preds = %316
  %323 = load volatile i32, ptr %318, align 4
  %324 = and i32 %323, 1024
  %325 = icmp eq i32 %324, 0
  br i1 %325, label %328, label %326, !prof !13

326:                                              ; preds = %322
  %327 = tail call ptr @swapcache_mapping(ptr noundef %318) #13
  br label %331

328:                                              ; preds = %322, %316
  %329 = getelementptr inbounds %struct.anon.154, ptr %318, i32 0, i32 2
  %330 = load ptr, ptr %329, align 4
  br label %331

331:                                              ; preds = %328, %326
  %332 = phi ptr [ %327, %326 ], [ %330, %328 ]
  %333 = getelementptr inbounds %struct.nfs_page, ptr %303, i32 0, i32 10
  %334 = load ptr, ptr %333, align 4
  %335 = icmp ne ptr %334, %303
  %336 = load i1, ptr @nfs_inode_add_request.__already_done, align 1
  %337 = xor i1 %336, true
  %338 = select i1 %335, i1 %337, i1 false
  br i1 %338, label %339, label %340, !prof !11

339:                                              ; preds = %331
  store i1 true, ptr @nfs_inode_add_request.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 759, i32 noundef 9, ptr noundef null) #13
  br label %340

340:                                              ; preds = %339, %331
  %341 = getelementptr inbounds %struct.nfs_page, ptr %303, i32 0, i32 8
  %342 = tail call i32 @_test_and_set_bit(i32 noundef 0, ptr noundef %341) #13
  %343 = getelementptr inbounds %struct.address_space, ptr %332, i32 0, i32 12
  tail call void @_raw_spin_lock(ptr noundef %343) #13
  %344 = load ptr, ptr %306, align 4
  %345 = getelementptr inbounds %struct.page, ptr %344, i32 0, i32 1
  %346 = load volatile i32, ptr %345, align 4
  %347 = and i32 %346, 1
  %348 = icmp eq i32 %347, 0
  br i1 %348, label %351, label %349, !prof !13

349:                                              ; preds = %340
  %350 = add i32 %346, -1
  br label %353

351:                                              ; preds = %340
  %352 = ptrtoint ptr %344 to i32
  br label %353

353:                                              ; preds = %351, %349
  %354 = phi i32 [ %350, %349 ], [ %352, %351 ]
  %355 = inttoptr i32 %354 to ptr
  %356 = load volatile i32, ptr %355, align 4
  %357 = and i32 %356, 524288
  %358 = icmp eq i32 %357, 0
  br i1 %358, label %363, label %359

359:                                              ; preds = %353
  %360 = load volatile i32, ptr %355, align 4
  %361 = and i32 %360, 1024
  %362 = icmp eq i32 %361, 0
  br i1 %362, label %363, label %368, !prof !13

363:                                              ; preds = %359, %353
  tail call void @_set_bit(i32 noundef 1, ptr noundef %341) #13
  %364 = load ptr, ptr %306, align 4
  tail call void @_set_bit(i32 noundef 13, ptr noundef %364) #13
  %365 = load ptr, ptr %306, align 4
  %366 = ptrtoint ptr %303 to i32
  %367 = getelementptr inbounds %struct.page, ptr %365, i32 0, i32 1, i32 0, i32 3
  store i32 %366, ptr %367, align 4
  br label %368

368:                                              ; preds = %363, %359
  tail call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !24
  %369 = load i16, ptr %343, align 4
  %370 = add i16 %369, 1
  store i16 %370, ptr %343, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #13, !srcloc !25
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #13, !srcloc !26
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !27
  %371 = getelementptr i8, ptr %265, i32 -112
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %371) #13, !srcloc !9
  %372 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %371, ptr %371, i32 1, ptr elementtype(i32) %371) #13, !srcloc !20
  %373 = tail call i32 @_test_and_set_bit(i32 noundef 4, ptr noundef %341) #13
  %374 = icmp eq i32 %373, 0
  br i1 %374, label %376, label %375, !prof !13

375:                                              ; preds = %368
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 780, i32 noundef 9, ptr noundef null) #13
  br label %376

376:                                              ; preds = %375, %368
  %377 = getelementptr inbounds %struct.nfs_page, ptr %303, i32 0, i32 7
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %377) #13, !srcloc !9
  %378 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %377, ptr %377, i32 1, ptr elementtype(i32) %377) #13, !srcloc !22
  %379 = extractvalue { i32, i32, i32 } %378, 0
  %380 = icmp eq i32 %379, 0
  br i1 %380, label %385, label %381, !prof !11

381:                                              ; preds = %376
  %382 = add i32 %379, 1
  %383 = or i32 %382, %379
  %384 = icmp sgt i32 %383, -1
  br i1 %384, label %387, label %385, !prof !13

385:                                              ; preds = %381, %376
  %386 = phi i32 [ 2, %376 ], [ 1, %381 ]
  tail call void @refcount_warn_saturate(ptr noundef %377, i32 noundef %386) #13
  br label %387

387:                                              ; preds = %385, %381, %302, %299, %284
  %388 = phi ptr [ %300, %299 ], [ %303, %302 ], [ %267, %284 ], [ %303, %381 ], [ %303, %385 ]
  %389 = icmp ugt ptr %388, inttoptr (i32 -4096 to ptr)
  br i1 %389, label %666, label %390

390:                                              ; preds = %387
  %391 = load volatile i32, ptr %7, align 4
  %392 = and i32 %391, 1
  %393 = icmp eq i32 %392, 0
  br i1 %393, label %396, label %394, !prof !13

394:                                              ; preds = %390
  %395 = add i32 %391, -1
  br label %398

396:                                              ; preds = %390
  %397 = ptrtoint ptr %1 to i32
  br label %398

398:                                              ; preds = %396, %394
  %399 = phi i32 [ %395, %394 ], [ %397, %396 ]
  %400 = inttoptr i32 %399 to ptr
  %401 = load volatile i32, ptr %400, align 4
  %402 = and i32 %401, 524288
  %403 = icmp eq i32 %402, 0
  br i1 %403, label %410, label %404

404:                                              ; preds = %398
  %405 = load volatile i32, ptr %400, align 4
  %406 = and i32 %405, 1024
  %407 = icmp eq i32 %406, 0
  br i1 %407, label %410, label %408, !prof !13

408:                                              ; preds = %404
  %409 = tail call ptr @swapcache_mapping(ptr noundef %400) #13
  br label %413

410:                                              ; preds = %404, %398
  %411 = getelementptr inbounds %struct.anon.154, ptr %400, i32 0, i32 2
  %412 = load ptr, ptr %411, align 4
  br label %413

413:                                              ; preds = %410, %408
  %414 = phi ptr [ %409, %408 ], [ %412, %410 ]
  %415 = load ptr, ptr %414, align 4
  %416 = getelementptr inbounds %struct.inode, ptr %415, i32 0, i32 17
  tail call void @_raw_spin_lock(ptr noundef %416) #13
  %417 = getelementptr inbounds %struct.inode, ptr %415, i32 0, i32 22
  %418 = getelementptr inbounds %struct.inode, ptr %415, i32 0, i32 13
  br label %419

419:                                              ; preds = %427, %413
  %420 = load volatile i32, ptr %417, align 4
  %421 = and i32 %420, 1
  %422 = icmp eq i32 %421, 0
  br i1 %422, label %427, label %423

423:                                              ; preds = %423, %419
  tail call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !37
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #13, !srcloc !38
  %424 = load volatile i32, ptr %417, align 4
  %425 = and i32 %424, 1
  %426 = icmp eq i32 %425, 0
  br i1 %426, label %427, label %423

427:                                              ; preds = %423, %419
  %428 = phi i32 [ %420, %419 ], [ %424, %423 ]
  tail call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !39
  %429 = load i64, ptr %418, align 8
  tail call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !40
  %430 = load volatile i32, ptr %417, align 4
  %431 = icmp eq i32 %430, %428
  br i1 %431, label %432, label %419

432:                                              ; preds = %427
  %433 = icmp sgt i64 %429, 0
  br i1 %433, label %434, label %463

434:                                              ; preds = %432
  %435 = add nuw i64 %429, 17592186044415
  %436 = lshr i64 %435, 12
  %437 = trunc i64 %436 to i32
  %438 = load volatile i32, ptr %7, align 4
  %439 = and i32 %438, 1
  %440 = icmp eq i32 %439, 0
  br i1 %440, label %443, label %441, !prof !13

441:                                              ; preds = %434
  %442 = add i32 %438, -1
  br label %445

443:                                              ; preds = %434
  %444 = ptrtoint ptr %1 to i32
  br label %445

445:                                              ; preds = %443, %441
  %446 = phi i32 [ %442, %441 ], [ %444, %443 ]
  %447 = inttoptr i32 %446 to ptr
  %448 = load volatile i32, ptr %447, align 4
  %449 = and i32 %448, 524288
  %450 = icmp eq i32 %449, 0
  br i1 %450, label %457, label %451

451:                                              ; preds = %445
  %452 = load volatile i32, ptr %447, align 4
  %453 = and i32 %452, 1024
  %454 = icmp eq i32 %453, 0
  br i1 %454, label %457, label %455, !prof !13

455:                                              ; preds = %451
  %456 = tail call i32 @__page_file_index(ptr noundef %1) #13
  br label %460

457:                                              ; preds = %451, %445
  %458 = getelementptr inbounds %struct.page, ptr %1, i32 0, i32 1, i32 0, i32 2
  %459 = load i32, ptr %458, align 4
  br label %460

460:                                              ; preds = %457, %455
  %461 = phi i32 [ %456, %455 ], [ %459, %457 ]
  %462 = icmp ult i32 %461, %437
  br i1 %462, label %535, label %463

463:                                              ; preds = %460, %432
  %464 = load volatile i32, ptr %7, align 4
  %465 = and i32 %464, 1
  %466 = icmp eq i32 %465, 0
  br i1 %466, label %469, label %467, !prof !13

467:                                              ; preds = %463
  %468 = add i32 %464, -1
  br label %471

469:                                              ; preds = %463
  %470 = ptrtoint ptr %1 to i32
  br label %471

471:                                              ; preds = %469, %467
  %472 = phi i32 [ %468, %467 ], [ %470, %469 ]
  %473 = inttoptr i32 %472 to ptr
  %474 = load volatile i32, ptr %473, align 4
  %475 = and i32 %474, 524288
  %476 = icmp eq i32 %475, 0
  br i1 %476, label %483, label %477

477:                                              ; preds = %471
  %478 = load volatile i32, ptr %473, align 4
  %479 = and i32 %478, 1024
  %480 = icmp eq i32 %479, 0
  br i1 %480, label %483, label %481, !prof !13

481:                                              ; preds = %477
  %482 = tail call i32 @__page_file_index(ptr noundef %1) #13
  br label %486

483:                                              ; preds = %477, %471
  %484 = getelementptr inbounds %struct.page, ptr %1, i32 0, i32 1, i32 0, i32 2
  %485 = load i32, ptr %484, align 4
  br label %486

486:                                              ; preds = %483, %481
  %487 = phi i32 [ %482, %481 ], [ %485, %483 ]
  %488 = zext i32 %487 to i64
  %489 = shl nuw nsw i64 %488, 12
  %490 = zext i32 %240 to i64
  %491 = zext i32 %239 to i64
  %492 = add nuw nsw i64 %491, %490
  %493 = add nuw nsw i64 %492, %489
  %494 = icmp slt i64 %429, %493
  br i1 %494, label %495, label %535

495:                                              ; preds = %486
  %496 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_nfs_size_grow, i32 0, i32 1), align 4
  %497 = icmp sgt i32 %496, 0
  br i1 %497, label %498, label %511

498:                                              ; preds = %495
  %499 = tail call ptr @llvm.thread.pointer() #13
  %500 = getelementptr inbounds %struct.thread_info, ptr %499, i32 0, i32 2
  %501 = load i32, ptr %500, align 8
  %502 = lshr i32 %501, 5
  %503 = getelementptr i32, ptr @__cpu_online_mask, i32 %502
  %504 = load volatile i32, ptr %503, align 4
  %505 = and i32 %501, 31
  %506 = shl nuw i32 1, %505
  %507 = and i32 %506, %504
  %508 = icmp eq i32 %507, 0
  br i1 %508, label %511, label %509

509:                                              ; preds = %498
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !43
  %510 = tail call i32 @__traceiter_nfs_size_grow(ptr noundef null, ptr noundef %415, i64 noundef %493) #13
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !44
  br label %511

511:                                              ; preds = %509, %498, %495
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !45
  %512 = load i32, ptr %417, align 4
  %513 = add i32 %512, 1
  store i32 %513, ptr %417, align 4
  tail call void asm sideeffect "dmb ishst", "~{memory}"() #13, !srcloc !46
  store i64 %493, ptr %418, align 8
  tail call void asm sideeffect "dmb ishst", "~{memory}"() #13, !srcloc !47
  %514 = load i32, ptr %417, align 4
  %515 = add i32 %514, 1
  store i32 %515, ptr %417, align 4
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !48
  %516 = getelementptr i8, ptr %415, i32 -152
  %517 = load i32, ptr %516, align 8
  %518 = and i32 %517, -2049
  store i32 %518, ptr %516, align 8
  %519 = getelementptr inbounds %struct.inode, ptr %415, i32 0, i32 8
  %520 = load ptr, ptr %519, align 4
  %521 = getelementptr inbounds %struct.super_block, ptr %520, i32 0, i32 27
  %522 = load ptr, ptr %521, align 4
  %523 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #13, !srcloc !14
  %524 = getelementptr inbounds %struct.nfs_server, ptr %522, i32 0, i32 6
  %525 = load ptr, ptr %524, align 8
  %526 = getelementptr %struct.nfs_iostats, ptr %525, i32 0, i32 1, i32 20
  %527 = ptrtoint ptr %526 to i32
  %528 = tail call i32 @llvm.read_register.i32(metadata !0) #13
  %529 = inttoptr i32 %528 to ptr
  %530 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %529) #7, !srcloc !15
  %531 = add i32 %530, %527
  %532 = inttoptr i32 %531 to ptr
  %533 = load i32, ptr %532, align 4
  %534 = add i32 %533, 1
  store i32 %534, ptr %532, align 4
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %523) #13, !srcloc !16
  br label %535

535:                                              ; preds = %511, %486, %460
  tail call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !24
  %536 = load i16, ptr %416, align 4
  %537 = add i16 %536, 1
  store i16 %537, ptr %416, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #13, !srcloc !25
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #13, !srcloc !26
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !27
  %538 = getelementptr inbounds %struct.nfs_page, ptr %388, i32 0, i32 1
  %539 = load ptr, ptr %538, align 4
  %540 = getelementptr inbounds %struct.page, ptr %539, i32 0, i32 1
  %541 = load volatile i32, ptr %540, align 4
  %542 = and i32 %541, 1
  %543 = icmp eq i32 %542, 0
  br i1 %543, label %546, label %544, !prof !13

544:                                              ; preds = %535
  %545 = add i32 %541, -1
  br label %548

546:                                              ; preds = %535
  %547 = ptrtoint ptr %539 to i32
  br label %548

548:                                              ; preds = %546, %544
  %549 = phi i32 [ %545, %544 ], [ %547, %546 ]
  %550 = inttoptr i32 %549 to ptr
  %551 = load volatile i32, ptr %550, align 4
  %552 = and i32 %551, 4
  %553 = icmp eq i32 %552, 0
  br i1 %553, label %555, label %554

554:                                              ; preds = %548
  tail call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !42
  br label %660

555:                                              ; preds = %548
  %556 = load volatile i32, ptr %540, align 4
  %557 = and i32 %556, 1
  %558 = icmp eq i32 %557, 0
  br i1 %558, label %561, label %559, !prof !13

559:                                              ; preds = %555
  %560 = add i32 %556, -1
  br label %563

561:                                              ; preds = %555
  %562 = ptrtoint ptr %539 to i32
  br label %563

563:                                              ; preds = %561, %559
  %564 = phi i32 [ %560, %559 ], [ %562, %561 ]
  %565 = inttoptr i32 %564 to ptr
  %566 = load volatile i32, ptr %565, align 4
  %567 = and i32 %566, 524288
  %568 = icmp eq i32 %567, 0
  br i1 %568, label %575, label %569

569:                                              ; preds = %563
  %570 = load volatile i32, ptr %565, align 4
  %571 = and i32 %570, 1024
  %572 = icmp eq i32 %571, 0
  br i1 %572, label %575, label %573, !prof !13

573:                                              ; preds = %569
  %574 = tail call ptr @swapcache_mapping(ptr noundef %565) #13
  br label %578

575:                                              ; preds = %569, %563
  %576 = getelementptr inbounds %struct.anon.154, ptr %565, i32 0, i32 2
  %577 = load ptr, ptr %576, align 4
  br label %578

578:                                              ; preds = %575, %573
  %579 = phi ptr [ %574, %573 ], [ %577, %575 ]
  %580 = load ptr, ptr %579, align 4
  %581 = getelementptr inbounds %struct.inode, ptr %580, i32 0, i32 22
  %582 = getelementptr inbounds %struct.inode, ptr %580, i32 0, i32 13
  br label %583

583:                                              ; preds = %591, %578
  %584 = load volatile i32, ptr %581, align 4
  %585 = and i32 %584, 1
  %586 = icmp eq i32 %585, 0
  br i1 %586, label %591, label %587

587:                                              ; preds = %587, %583
  tail call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !37
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #13, !srcloc !38
  %588 = load volatile i32, ptr %581, align 4
  %589 = and i32 %588, 1
  %590 = icmp eq i32 %589, 0
  br i1 %590, label %591, label %587

591:                                              ; preds = %587, %583
  %592 = phi i32 [ %584, %583 ], [ %588, %587 ]
  tail call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !39
  %593 = load i64, ptr %582, align 8
  tail call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !40
  %594 = load volatile i32, ptr %581, align 4
  %595 = icmp eq i32 %594, %592
  br i1 %595, label %596, label %583

596:                                              ; preds = %591
  %597 = icmp sgt i64 %593, 0
  br i1 %597, label %598, label %633

598:                                              ; preds = %596
  %599 = load volatile i32, ptr %540, align 4
  %600 = and i32 %599, 1
  %601 = icmp eq i32 %600, 0
  br i1 %601, label %604, label %602, !prof !13

602:                                              ; preds = %598
  %603 = add i32 %599, -1
  br label %606

604:                                              ; preds = %598
  %605 = ptrtoint ptr %539 to i32
  br label %606

606:                                              ; preds = %604, %602
  %607 = phi i32 [ %603, %602 ], [ %605, %604 ]
  %608 = inttoptr i32 %607 to ptr
  %609 = load volatile i32, ptr %608, align 4
  %610 = and i32 %609, 524288
  %611 = icmp eq i32 %610, 0
  br i1 %611, label %618, label %612

612:                                              ; preds = %606
  %613 = load volatile i32, ptr %608, align 4
  %614 = and i32 %613, 1024
  %615 = icmp eq i32 %614, 0
  br i1 %615, label %618, label %616, !prof !13

616:                                              ; preds = %612
  %617 = tail call i32 @__page_file_index(ptr noundef %539) #13
  br label %621

618:                                              ; preds = %612, %606
  %619 = getelementptr inbounds %struct.page, ptr %539, i32 0, i32 1, i32 0, i32 2
  %620 = load i32, ptr %619, align 4
  br label %621

621:                                              ; preds = %618, %616
  %622 = phi i32 [ %617, %616 ], [ %620, %618 ]
  %623 = add nsw i64 %593, -1
  %624 = lshr i64 %623, 12
  %625 = trunc i64 %624 to i32
  %626 = icmp ult i32 %622, %625
  br i1 %626, label %633, label %627

627:                                              ; preds = %621
  %628 = icmp eq i32 %622, %625
  br i1 %628, label %629, label %633

629:                                              ; preds = %627
  %630 = trunc i64 %623 to i32
  %631 = and i32 %630, 4095
  %632 = add nuw nsw i32 %631, 1
  br label %633

633:                                              ; preds = %629, %627, %621, %596
  %634 = phi i32 [ 0, %627 ], [ 0, %596 ], [ 4096, %621 ], [ %632, %629 ]
  %635 = tail call i32 @nfs_page_group_lock(ptr noundef %388) #13
  %636 = getelementptr inbounds %struct.nfs_page, ptr %388, i32 0, i32 11
  %637 = load ptr, ptr %636, align 4
  br label %638

638:                                              ; preds = %654, %633
  %639 = phi i32 [ 0, %633 ], [ %648, %654 ]
  br label %640

640:                                              ; preds = %650, %638
  %641 = phi ptr [ %637, %638 ], [ %652, %650 ]
  %642 = getelementptr inbounds %struct.nfs_page, ptr %641, i32 0, i32 5
  %643 = load i32, ptr %642, align 4
  %644 = icmp ugt i32 %643, %639
  br i1 %644, label %650, label %645

645:                                              ; preds = %640
  %646 = getelementptr inbounds %struct.nfs_page, ptr %641, i32 0, i32 6
  %647 = load i32, ptr %646, align 4
  %648 = add i32 %647, %643
  %649 = icmp ugt i32 %648, %639
  br i1 %649, label %654, label %650

650:                                              ; preds = %645, %640
  %651 = getelementptr inbounds %struct.nfs_page, ptr %641, i32 0, i32 10
  %652 = load ptr, ptr %651, align 4
  %653 = icmp eq ptr %652, %637
  br i1 %653, label %656, label %640

654:                                              ; preds = %645
  %655 = icmp eq ptr %641, null
  br i1 %655, label %656, label %638

656:                                              ; preds = %654, %650
  tail call void @nfs_page_group_unlock(ptr noundef %388) #13
  %657 = icmp ult i32 %639, %634
  br i1 %657, label %660, label %658

658:                                              ; preds = %656
  %659 = load ptr, ptr %538, align 4
  tail call void asm sideeffect "dmb ishst", "~{memory}"() #13, !srcloc !49
  tail call void @_set_bit(i32 noundef 2, ptr noundef %659) #13
  br label %660

660:                                              ; preds = %658, %656, %554
  %661 = load ptr, ptr %538, align 4
  %662 = icmp eq ptr %661, null
  br i1 %662, label %665, label %663

663:                                              ; preds = %660
  %664 = tail call i32 @__set_page_dirty_nobuffers(ptr noundef nonnull %661) #13
  br label %665

665:                                              ; preds = %663, %660
  tail call void @nfs_unlock_and_release_request(ptr noundef %388) #13
  br label %674

666:                                              ; preds = %387
  %667 = ptrtoint ptr %388 to i32
  %668 = icmp slt ptr %388, null
  br i1 %668, label %669, label %674

669:                                              ; preds = %666
  %670 = load ptr, ptr %31, align 4
  tail call void @nfs_zap_mapping(ptr noundef %670, ptr noundef %31) #13
  %671 = getelementptr inbounds %struct.inode, ptr %670, i32 0, i32 17
  tail call void @_raw_spin_lock(ptr noundef %671) #13
  tail call void @nfs_set_cache_invalid(ptr noundef %670, i32 noundef 2144) #13
  tail call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !24
  %672 = load i16, ptr %671, align 4
  %673 = add i16 %672, 1
  store i16 %673, ptr %671, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #13, !srcloc !25
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #13, !srcloc !26
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !27
  br label %674

674:                                              ; preds = %669, %666, %665, %110
  %675 = phi i32 [ %667, %669 ], [ %667, %666 ], [ 0, %110 ], [ 0, %665 ]
  ret i32 %675
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @nfs_pageio_init(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @nfs_pageio_reset_write_mds(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.nfs_pageio_descriptor, ptr %0, i32 0, i32 1
  %3 = load ptr, ptr %2, align 4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %10, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.nfs_pageio_ops, ptr %3, i32 0, i32 4
  %7 = load ptr, ptr %6, align 4
  %8 = icmp eq ptr %7, null
  br i1 %8, label %10, label %9

9:                                                ; preds = %5
  tail call void %7(ptr noundef %0) #13
  br label %10

10:                                               ; preds = %9, %5, %1
  store ptr @nfs_pgio_rw_ops, ptr %2, align 4
  tail call void @nfs_pageio_stop_mirroring(ptr noundef %0) #13
  %11 = getelementptr inbounds %struct.nfs_pageio_descriptor, ptr %0, i32 0, i32 12
  %12 = load ptr, ptr %11, align 4
  %13 = load ptr, ptr %0, align 4
  %14 = getelementptr inbounds %struct.inode, ptr %13, i32 0, i32 8
  %15 = load ptr, ptr %14, align 4
  %16 = getelementptr inbounds %struct.super_block, ptr %15, i32 0, i32 27
  %17 = load ptr, ptr %16, align 4
  %18 = getelementptr inbounds %struct.nfs_server, ptr %17, i32 0, i32 13
  %19 = load i32, ptr %18, align 4
  %20 = getelementptr inbounds %struct.nfs_pgio_mirror, ptr %12, i32 0, i32 3
  store i32 %19, ptr %20, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @nfs_pageio_stop_mirroring(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @nfs_commit_prepare(ptr noundef %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.nfs_commit_data, ptr %1, i32 0, i32 1
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.inode, ptr %4, i32 0, i32 8
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.super_block, ptr %6, i32 0, i32 27
  %8 = load ptr, ptr %7, align 4
  %9 = load ptr, ptr %8, align 8
  %10 = getelementptr inbounds %struct.nfs_client, ptr %9, i32 0, i32 12
  %11 = load ptr, ptr %10, align 4
  %12 = getelementptr inbounds %struct.nfs_rpc_ops, ptr %11, i32 0, i32 40
  %13 = load ptr, ptr %12, align 4
  tail call void %13(ptr noundef %0, ptr noundef %1) #13
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @nfs_writeback_update_inode(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.nfs_pgio_header, ptr %0, i32 0, i32 19
  %3 = load ptr, ptr %0, align 8
  %4 = getelementptr inbounds %struct.inode, ptr %3, i32 0, i32 17
  tail call void @_raw_spin_lock(ptr noundef %4) #13
  %5 = getelementptr inbounds %struct.nfs_pgio_header, ptr %0, i32 0, i32 20, i32 5
  %6 = load i64, ptr %5, align 8
  %7 = getelementptr inbounds %struct.nfs_pgio_header, ptr %0, i32 0, i32 21, i32 2
  %8 = load i64, ptr %7, align 8
  %9 = add i64 %8, %6
  %10 = load i32, ptr %2, align 8
  %11 = and i32 %10, 64
  %12 = icmp eq i32 %11, 0
  %13 = getelementptr inbounds %struct.nfs_pgio_header, ptr %0, i32 0, i32 19, i32 6
  br i1 %12, label %16, label %14

14:                                               ; preds = %1
  %15 = load i64, ptr %13, align 8
  br label %17

16:                                               ; preds = %1
  store i64 %9, ptr %13, align 8
  br label %17

17:                                               ; preds = %16, %14
  %18 = phi i64 [ %15, %14 ], [ %9, %16 ]
  %19 = load ptr, ptr %0, align 8
  %20 = getelementptr inbounds %struct.inode, ptr %19, i32 0, i32 22
  %21 = getelementptr inbounds %struct.inode, ptr %19, i32 0, i32 13
  br label %22

22:                                               ; preds = %30, %17
  %23 = load volatile i32, ptr %20, align 4
  %24 = and i32 %23, 1
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %30, label %26

26:                                               ; preds = %26, %22
  tail call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !37
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #13, !srcloc !38
  %27 = load volatile i32, ptr %20, align 4
  %28 = and i32 %27, 1
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %30, label %26

30:                                               ; preds = %26, %22
  %31 = phi i32 [ %23, %22 ], [ %27, %26 ]
  tail call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !39
  %32 = load i64, ptr %21, align 8
  tail call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !40
  %33 = load volatile i32, ptr %20, align 4
  %34 = icmp eq i32 %33, %31
  br i1 %34, label %35, label %22

35:                                               ; preds = %30
  %36 = tail call i64 @llvm.umin.i64(i64 %18, i64 9223372036854775807) #13
  %37 = icmp slt i64 %36, %32
  br i1 %37, label %38, label %41

38:                                               ; preds = %35
  %39 = load i32, ptr %2, align 8
  %40 = and i32 %39, -65
  br label %47

41:                                               ; preds = %35
  %42 = load i64, ptr %13, align 8
  %43 = icmp eq i64 %9, %42
  br i1 %43, label %44, label %49

44:                                               ; preds = %41
  tail call void @nfs_fattr_set_barrier(ptr noundef %2) #13
  %45 = load i32, ptr %2, align 8
  %46 = or i32 %45, 64
  br label %47

47:                                               ; preds = %44, %38
  %48 = phi i32 [ %46, %44 ], [ %40, %38 ]
  store i32 %48, ptr %2, align 8
  br label %49

49:                                               ; preds = %47, %41
  %50 = tail call i32 @nfs_post_op_update_inode_force_wcc_locked(ptr noundef %3, ptr noundef %2) #13
  tail call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !24
  %51 = load i16, ptr %4, align 4
  %52 = add i16 %51, 1
  store i16 %52, ptr %4, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #13, !srcloc !25
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #13, !srcloc !26
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !27
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nfs_post_op_update_inode_force_wcc_locked(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local zeroext i1 @nfs_commit_end(ptr noundef %0) local_unnamed_addr #0 {
  tail call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !50
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %0) #13, !srcloc !9
  %2 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %0, ptr %0, i32 1, ptr elementtype(i32) %0) #13, !srcloc !51
  %3 = extractvalue { i32, i32 } %2, 0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !52
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %6

5:                                                ; preds = %1
  tail call void @wake_up_var(ptr noundef %0) #13
  br label %6

6:                                                ; preds = %5, %1
  ret i1 %4
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @wake_up_var(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @nfs_commitdata_release(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.nfs_commit_data, ptr %0, i32 0, i32 10
  %3 = load ptr, ptr %2, align 8
  tail call void @put_nfs_open_context(ptr noundef %3) #13
  %4 = load ptr, ptr @nfs_commit_mempool, align 4
  tail call void @mempool_free(ptr noundef %0, ptr noundef %4) #13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @put_nfs_open_context(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @nfs_initiate_commit(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2, ptr noundef %3, i32 noundef %4, i32 noundef %5) #0 {
  %7 = alloca %struct.rpc_message, align 4
  %8 = alloca %struct.rpc_task_setup, align 4
  %9 = and i32 %4, 24
  %10 = icmp eq i32 %9, 8
  %11 = icmp eq i32 %9, 16
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %7) #13
  %12 = getelementptr inbounds %struct.rpc_message, ptr %7, i32 0, i32 1
  %13 = getelementptr inbounds %struct.nfs_commit_data, ptr %1, i32 0, i32 8
  store i32 0, ptr %7, align 4
  store ptr %13, ptr %12, align 4
  %14 = getelementptr inbounds %struct.rpc_message, ptr %7, i32 0, i32 2
  %15 = getelementptr inbounds %struct.nfs_commit_data, ptr %1, i32 0, i32 9
  store ptr %15, ptr %14, align 4
  %16 = getelementptr inbounds %struct.rpc_message, ptr %7, i32 0, i32 3
  %17 = getelementptr inbounds %struct.nfs_commit_data, ptr %1, i32 0, i32 2
  %18 = load ptr, ptr %17, align 4
  store ptr %18, ptr %16, align 4
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %8) #13
  %19 = getelementptr inbounds i8, ptr %8, i32 32
  store i32 0, ptr %19, align 4, !annotation !12
  store ptr %1, ptr %8, align 4
  %20 = getelementptr inbounds %struct.rpc_task_setup, ptr %8, i32 0, i32 1
  store ptr %0, ptr %20, align 4
  %21 = getelementptr inbounds %struct.rpc_task_setup, ptr %8, i32 0, i32 2
  store ptr null, ptr %21, align 4
  %22 = getelementptr inbounds %struct.rpc_task_setup, ptr %8, i32 0, i32 3
  store ptr null, ptr %22, align 4
  %23 = getelementptr inbounds %struct.rpc_task_setup, ptr %8, i32 0, i32 4
  store ptr %7, ptr %23, align 4
  %24 = getelementptr inbounds %struct.rpc_task_setup, ptr %8, i32 0, i32 5
  store ptr %3, ptr %24, align 4
  %25 = getelementptr inbounds %struct.rpc_task_setup, ptr %8, i32 0, i32 6
  store ptr %1, ptr %25, align 4
  %26 = getelementptr inbounds %struct.rpc_task_setup, ptr %8, i32 0, i32 7
  %27 = load ptr, ptr @nfsiod_workqueue, align 4
  store ptr %27, ptr %26, align 4
  %28 = getelementptr inbounds %struct.rpc_task_setup, ptr %8, i32 0, i32 8
  %29 = trunc i32 %5 to i16
  %30 = or i16 %29, 1
  store i16 %30, ptr %28, align 4
  %31 = getelementptr inbounds %struct.rpc_task_setup, ptr %8, i32 0, i32 9
  %32 = sext i1 %10 to i8
  %33 = select i1 %11, i8 1, i8 %32
  store i8 %33, ptr %31, align 2
  %34 = getelementptr inbounds %struct.nfs_rpc_ops, ptr %2, i32 0, i32 39
  %35 = load ptr, ptr %34, align 4
  call void %35(ptr noundef %1, ptr noundef nonnull %7, ptr noundef %20) #13
  %36 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_nfs_initiate_commit, i32 0, i32 1), align 4
  %37 = icmp sgt i32 %36, 0
  br i1 %37, label %38, label %51

38:                                               ; preds = %6
  %39 = tail call ptr @llvm.thread.pointer() #13
  %40 = getelementptr inbounds %struct.thread_info, ptr %39, i32 0, i32 2
  %41 = load i32, ptr %40, align 8
  %42 = lshr i32 %41, 5
  %43 = getelementptr i32, ptr @__cpu_online_mask, i32 %42
  %44 = load volatile i32, ptr %43, align 4
  %45 = and i32 %41, 31
  %46 = shl nuw i32 1, %45
  %47 = and i32 %46, %44
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %51, label %49

49:                                               ; preds = %38
  call void asm sideeffect "", "~{memory}"() #13, !srcloc !53
  %50 = call i32 @__traceiter_nfs_initiate_commit(ptr noundef null, ptr noundef %1) #13
  call void asm sideeffect "", "~{memory}"() #13, !srcloc !54
  br label %51

51:                                               ; preds = %49, %38, %6
  %52 = call ptr @rpc_run_task(ptr noundef nonnull %8) #13
  %53 = icmp ugt ptr %52, inttoptr (i32 -4096 to ptr)
  br i1 %53, label %54, label %56

54:                                               ; preds = %51
  %55 = ptrtoint ptr %52 to i32
  br label %62

56:                                               ; preds = %51
  %57 = and i32 %4, 1
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %61, label %59

59:                                               ; preds = %56
  %60 = call i32 @__rpc_wait_for_completion_task(ptr noundef %52, ptr noundef null) #13
  br label %61

61:                                               ; preds = %59, %56
  call void @rpc_put_task(ptr noundef %52) #13
  br label %62

62:                                               ; preds = %61, %54
  %63 = phi i32 [ %55, %54 ], [ 0, %61 ]
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %8) #13
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %7) #13
  ret i32 %63
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rpc_run_task(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rpc_put_task(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @nfs_init_commit(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr nocapture noundef readonly %3) #0 {
  %5 = icmp eq ptr %1, null
  br i1 %5, label %16, label %6

6:                                                ; preds = %4
  %7 = load volatile ptr, ptr %1, align 4
  %8 = icmp eq ptr %7, %1
  br i1 %8, label %16, label %9

9:                                                ; preds = %6
  %10 = getelementptr inbounds %struct.nfs_commit_data, ptr %0, i32 0, i32 5
  %11 = load ptr, ptr %10, align 4
  %12 = getelementptr inbounds %struct.list_head, ptr %1, i32 0, i32 1
  %13 = load ptr, ptr %12, align 4
  %14 = getelementptr inbounds %struct.list_head, ptr %7, i32 0, i32 1
  store ptr %10, ptr %14, align 4
  store ptr %7, ptr %10, align 4
  store ptr %11, ptr %13, align 4
  %15 = getelementptr inbounds %struct.list_head, ptr %11, i32 0, i32 1
  store ptr %13, ptr %15, align 4
  store volatile ptr %1, ptr %1, align 4
  store ptr %1, ptr %12, align 4
  br label %16

16:                                               ; preds = %9, %6, %4
  %17 = getelementptr inbounds %struct.nfs_commit_data, ptr %0, i32 0, i32 5
  %18 = load ptr, ptr %17, align 4
  %19 = getelementptr inbounds %struct.nfs_page, ptr %18, i32 0, i32 2
  %20 = load ptr, ptr %19, align 4
  %21 = getelementptr inbounds %struct.nfs_lock_context, ptr %20, i32 0, i32 2
  %22 = load ptr, ptr %21, align 4
  %23 = getelementptr inbounds %struct.nfs_open_context, ptr %22, i32 0, i32 2
  %24 = load ptr, ptr %23, align 4
  %25 = getelementptr inbounds %struct.dentry, ptr %24, i32 0, i32 5
  %26 = load ptr, ptr %25, align 8
  %27 = getelementptr inbounds %struct.nfs_commit_data, ptr %0, i32 0, i32 1
  store ptr %26, ptr %27, align 8
  %28 = getelementptr inbounds %struct.nfs_open_context, ptr %22, i32 0, i32 3
  %29 = load ptr, ptr %28, align 4
  %30 = getelementptr inbounds %struct.nfs_commit_data, ptr %0, i32 0, i32 2
  store ptr %29, ptr %30, align 4
  %31 = getelementptr inbounds %struct.nfs_commit_data, ptr %0, i32 0, i32 11
  store ptr %2, ptr %31, align 4
  %32 = icmp eq ptr %2, null
  br i1 %32, label %56, label %33

33:                                               ; preds = %16
  %34 = icmp eq ptr %18, %17
  br i1 %34, label %53, label %35

35:                                               ; preds = %35, %33
  %36 = phi ptr [ %51, %35 ], [ %18, %33 ]
  %37 = phi i64 [ %50, %35 ], [ 0, %33 ]
  %38 = getelementptr inbounds %struct.nfs_page, ptr %36, i32 0, i32 3
  %39 = load i32, ptr %38, align 4
  %40 = zext i32 %39 to i64
  %41 = shl nuw nsw i64 %40, 12
  %42 = getelementptr inbounds %struct.nfs_page, ptr %36, i32 0, i32 4
  %43 = load i32, ptr %42, align 4
  %44 = zext i32 %43 to i64
  %45 = add nuw nsw i64 %41, %44
  %46 = getelementptr inbounds %struct.nfs_page, ptr %36, i32 0, i32 6
  %47 = load i32, ptr %46, align 4
  %48 = zext i32 %47 to i64
  %49 = add nuw nsw i64 %45, %48
  %50 = tail call i64 @llvm.smax.i64(i64 %37, i64 %49) #13
  %51 = load ptr, ptr %36, align 4
  %52 = icmp eq ptr %51, %17
  br i1 %52, label %53, label %35

53:                                               ; preds = %35, %33
  %54 = phi i64 [ 0, %33 ], [ %50, %35 ]
  %55 = getelementptr inbounds %struct.nfs_commit_data, ptr %0, i32 0, i32 14
  store i64 %54, ptr %55, align 8
  br label %56

56:                                               ; preds = %53, %16
  %57 = getelementptr inbounds %struct.nfs_commit_data, ptr %0, i32 0, i32 15
  store ptr @nfs_commit_ops, ptr %57, align 8
  %58 = getelementptr inbounds %struct.nfs_commit_info, ptr %3, i32 0, i32 4
  %59 = load ptr, ptr %58, align 4
  %60 = getelementptr inbounds %struct.nfs_commit_data, ptr %0, i32 0, i32 16
  store ptr %59, ptr %60, align 4
  %61 = getelementptr inbounds %struct.nfs_commit_info, ptr %3, i32 0, i32 3
  %62 = load ptr, ptr %61, align 4
  %63 = getelementptr inbounds %struct.nfs_commit_data, ptr %0, i32 0, i32 7
  store ptr %62, ptr %63, align 4
  %64 = getelementptr i8, ptr %26, i32 -288
  %65 = getelementptr inbounds %struct.nfs_commit_data, ptr %0, i32 0, i32 8, i32 1
  store ptr %64, ptr %65, align 8
  %66 = getelementptr inbounds %struct.nfs_commit_data, ptr %0, i32 0, i32 8, i32 2
  store i64 0, ptr %66, align 8
  %67 = getelementptr inbounds %struct.nfs_commit_data, ptr %0, i32 0, i32 8, i32 3
  store i32 0, ptr %67, align 8
  %68 = tail call ptr @get_nfs_open_context(ptr noundef %22) #13
  %69 = getelementptr inbounds %struct.nfs_commit_data, ptr %0, i32 0, i32 10
  store ptr %68, ptr %69, align 8
  %70 = getelementptr inbounds %struct.nfs_commit_data, ptr %0, i32 0, i32 3
  %71 = getelementptr inbounds %struct.nfs_commit_data, ptr %0, i32 0, i32 9, i32 2
  store ptr %70, ptr %71, align 4
  %72 = getelementptr inbounds %struct.nfs_commit_data, ptr %0, i32 0, i32 4
  %73 = getelementptr inbounds %struct.nfs_commit_data, ptr %0, i32 0, i32 9, i32 3
  store ptr %72, ptr %73, align 8
  tail call void @nfs_fattr_init(ptr noundef %70) #13
  %74 = getelementptr inbounds %struct.nfs_commit_info, ptr %3, i32 0, i32 1
  %75 = load ptr, ptr %74, align 4
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %75) #13, !srcloc !9
  %76 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %75, ptr %75, i32 1, ptr elementtype(i32) %75) #13, !srcloc !20
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @get_nfs_open_context(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @nfs_fattr_init(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @nfs_retry_commit(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3) #0 {
  %5 = load volatile ptr, ptr %0, align 4
  %6 = icmp eq ptr %5, %0
  br i1 %6, label %40, label %7

7:                                                ; preds = %4
  %8 = icmp eq ptr %1, null
  %9 = getelementptr inbounds %struct.nfs_commit_info, ptr %2, i32 0, i32 2
  %10 = getelementptr inbounds %struct.nfs_commit_info, ptr %2, i32 0, i32 3
  br label %11

11:                                               ; preds = %37, %7
  %12 = phi ptr [ %5, %7 ], [ %38, %37 ]
  %13 = load volatile ptr, ptr %12, align 4
  %14 = icmp eq ptr %13, %12
  br i1 %14, label %19, label %15

15:                                               ; preds = %11
  %16 = getelementptr inbounds %struct.list_head, ptr %12, i32 0, i32 1
  %17 = load ptr, ptr %16, align 4
  %18 = getelementptr inbounds %struct.list_head, ptr %13, i32 0, i32 1
  store ptr %17, ptr %18, align 4
  store volatile ptr %13, ptr %17, align 4
  store volatile ptr %12, ptr %12, align 4
  store ptr %12, ptr %16, align 4
  br label %19

19:                                               ; preds = %15, %11
  br i1 %8, label %30, label %20

20:                                               ; preds = %19
  %21 = load ptr, ptr %9, align 4
  %22 = getelementptr inbounds %struct.pnfs_ds_commit_info, ptr %21, i32 0, i32 3
  %23 = load ptr, ptr %22, align 4
  %24 = icmp eq ptr %23, null
  br i1 %24, label %30, label %25

25:                                               ; preds = %20
  %26 = getelementptr inbounds %struct.pnfs_commit_ops, ptr %23, i32 0, i32 3
  %27 = load ptr, ptr %26, align 4
  %28 = icmp eq ptr %27, null
  br i1 %28, label %30, label %29

29:                                               ; preds = %25
  tail call void %27(ptr noundef %12, ptr noundef nonnull %1, ptr noundef %2, i32 noundef %3) #13
  br label %31

30:                                               ; preds = %25, %20, %19
  tail call void @nfs_request_add_commit_list(ptr noundef %12, ptr noundef %2) #13
  br label %31

31:                                               ; preds = %30, %29
  %32 = load ptr, ptr %10, align 4
  %33 = icmp eq ptr %32, null
  br i1 %33, label %34, label %37

34:                                               ; preds = %31
  %35 = getelementptr inbounds %struct.nfs_page, ptr %12, i32 0, i32 1
  %36 = load ptr, ptr %35, align 4
  tail call fastcc void @nfs_clear_page_commit(ptr noundef %36)
  br label %37

37:                                               ; preds = %34, %31
  tail call void @nfs_unlock_and_release_request(ptr noundef %12) #13
  %38 = load volatile ptr, ptr %0, align 4
  %39 = icmp eq ptr %38, %0
  br i1 %39, label %40, label %11

40:                                               ; preds = %37, %4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @nfs_clear_page_commit(ptr noundef %0) unnamed_addr #0 {
  tail call void @dec_node_page_state(ptr noundef %0, i32 noundef 21) #13
  %2 = getelementptr inbounds %struct.page, ptr %0, i32 0, i32 1
  %3 = load volatile i32, ptr %2, align 4
  %4 = and i32 %3, 1
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %8, label %6, !prof !13

6:                                                ; preds = %1
  %7 = add i32 %3, -1
  br label %10

8:                                                ; preds = %1
  %9 = ptrtoint ptr %0 to i32
  br label %10

10:                                               ; preds = %8, %6
  %11 = phi i32 [ %7, %6 ], [ %9, %8 ]
  %12 = inttoptr i32 %11 to ptr
  %13 = load volatile i32, ptr %12, align 4
  %14 = and i32 %13, 524288
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %22, label %16

16:                                               ; preds = %10
  %17 = load volatile i32, ptr %12, align 4
  %18 = and i32 %17, 1024
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %22, label %20, !prof !13

20:                                               ; preds = %16
  %21 = tail call ptr @swapcache_mapping(ptr noundef %12) #13
  br label %25

22:                                               ; preds = %16, %10
  %23 = getelementptr inbounds %struct.anon.154, ptr %12, i32 0, i32 2
  %24 = load ptr, ptr %23, align 4
  br label %25

25:                                               ; preds = %22, %20
  %26 = phi ptr [ %21, %20 ], [ %24, %22 ]
  %27 = load ptr, ptr %26, align 4
  %28 = tail call ptr @inode_to_bdi(ptr noundef %27) #13
  %29 = load i32, ptr @nr_cpu_ids, align 4
  %30 = icmp eq i32 %29, 0
  %31 = tail call i32 @llvm.ctlz.i32(i32 %29, i1 false) #13, !range !21
  %32 = getelementptr %struct.backing_dev_info, ptr %28, i32 0, i32 11, i32 9, i32 1
  %33 = mul nsw i32 %31, -8
  %34 = add nsw i32 %33, 256
  %35 = select i1 %30, i32 0, i32 %34
  tail call void @percpu_counter_add_batch(ptr noundef %32, i64 noundef -1, i32 noundef %35) #13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @nfs_unlock_and_release_request(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @nfs_generic_commit_list(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3) local_unnamed_addr #0 {
  %5 = getelementptr inbounds %struct.nfs_commit_info, ptr %3, i32 0, i32 2
  %6 = load ptr, ptr %5, align 4
  %7 = icmp eq ptr %6, null
  br i1 %7, label %19, label %8

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.pnfs_ds_commit_info, ptr %6, i32 0, i32 2
  %10 = load i32, ptr %9, align 4
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %19, label %12

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct.pnfs_ds_commit_info, ptr %6, i32 0, i32 3
  %14 = load ptr, ptr %13, align 4
  %15 = getelementptr inbounds %struct.pnfs_commit_ops, ptr %14, i32 0, i32 2
  %16 = load ptr, ptr %15, align 4
  %17 = tail call i32 %16(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3) #13
  %18 = icmp eq i32 %17, 1
  br i1 %18, label %19, label %43

19:                                               ; preds = %12, %8, %4
  %20 = load volatile ptr, ptr %1, align 4
  %21 = icmp eq ptr %20, %1
  br i1 %21, label %43, label %22

22:                                               ; preds = %19
  %23 = load ptr, ptr @nfs_commit_mempool, align 4
  %24 = tail call noalias ptr @mempool_alloc(ptr noundef %23, i32 noundef 3072) #13
  tail call void @llvm.memset.p0.i32(ptr noundef align 8 dereferenceable(488) %24, i8 0, i32 488, i1 false) #13
  %25 = getelementptr inbounds %struct.nfs_commit_data, ptr %24, i32 0, i32 5
  store volatile ptr %25, ptr %25, align 4
  %26 = getelementptr inbounds %struct.nfs_commit_data, ptr %24, i32 0, i32 5, i32 1
  store ptr %25, ptr %26, align 4
  tail call void @nfs_init_commit(ptr noundef %24, ptr noundef %1, ptr noundef null, ptr noundef %3) #13
  %27 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 8
  %28 = load ptr, ptr %27, align 4
  %29 = getelementptr inbounds %struct.super_block, ptr %28, i32 0, i32 27
  %30 = load ptr, ptr %29, align 4
  %31 = load ptr, ptr %30, align 8
  %32 = getelementptr inbounds %struct.nfs_client, ptr %31, i32 0, i32 15
  %33 = load i32, ptr %32, align 8
  %34 = icmp eq i32 %33, 0
  %35 = select i1 %34, i32 32768, i32 32772
  %36 = getelementptr inbounds %struct.nfs_server, ptr %30, i32 0, i32 3
  %37 = load ptr, ptr %36, align 4
  %38 = getelementptr inbounds %struct.nfs_client, ptr %31, i32 0, i32 12
  %39 = load ptr, ptr %38, align 4
  %40 = getelementptr inbounds %struct.nfs_commit_data, ptr %24, i32 0, i32 15
  %41 = load ptr, ptr %40, align 8
  %42 = tail call i32 @nfs_initiate_commit(ptr noundef %37, ptr noundef %24, ptr noundef %39, ptr noundef %41, i32 noundef %2, i32 noundef %35) #13
  br label %43

43:                                               ; preds = %22, %19, %12
  %44 = phi i32 [ %17, %12 ], [ %42, %22 ], [ 0, %19 ]
  ret i32 %44
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @nfs_commit_inode(ptr noundef %0, i32 noundef %1) #0 {
  %3 = tail call fastcc i32 @__nfs_commit_inode(ptr noundef %0, i32 noundef %1, ptr noundef null)
  ret i32 %3
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @__nfs_commit_inode(ptr noundef %0, i32 noundef %1, ptr noundef %2) unnamed_addr #0 {
  %4 = alloca %struct.wait_bit_queue_entry, align 4
  %5 = alloca %struct.list_head, align 8
  %6 = alloca %struct.nfs_commit_info, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #13
  store ptr %5, ptr %5, align 8
  %7 = getelementptr inbounds %struct.list_head, ptr %5, i32 0, i32 1
  store ptr %5, ptr %7, align 4
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %6) #13
  %8 = and i32 %1, 1
  %9 = and i32 %1, -2
  store ptr %0, ptr %6, align 4
  %10 = getelementptr i8, ptr %0, i32 -108
  %11 = getelementptr inbounds %struct.nfs_commit_info, ptr %6, i32 0, i32 1
  store ptr %10, ptr %11, align 4
  %12 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 8
  %13 = load ptr, ptr %12, align 4
  %14 = getelementptr inbounds %struct.super_block, ptr %13, i32 0, i32 27
  %15 = load ptr, ptr %14, align 4
  %16 = getelementptr inbounds %struct.nfs_server, ptr %15, i32 0, i32 44
  %17 = load ptr, ptr %16, align 4
  %18 = icmp eq ptr %17, null
  br i1 %18, label %25, label %19

19:                                               ; preds = %3
  %20 = getelementptr inbounds %struct.pnfs_layoutdriver_type, ptr %17, i32 0, i32 17
  %21 = load ptr, ptr %20, align 4
  %22 = icmp eq ptr %21, null
  br i1 %22, label %25, label %23

23:                                               ; preds = %19
  %24 = call ptr %21(ptr noundef %0) #13
  br label %25

25:                                               ; preds = %23, %19, %3
  %26 = phi ptr [ %24, %23 ], [ null, %19 ], [ null, %3 ]
  %27 = getelementptr inbounds %struct.nfs_commit_info, ptr %6, i32 0, i32 2
  store ptr %26, ptr %27, align 4
  %28 = getelementptr inbounds %struct.nfs_commit_info, ptr %6, i32 0, i32 3
  store ptr null, ptr %28, align 4
  %29 = getelementptr inbounds %struct.nfs_commit_info, ptr %6, i32 0, i32 4
  store ptr @nfs_commit_completion_ops, ptr %29, align 4
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %10) #13, !srcloc !9
  %30 = call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %10, ptr %10, i32 1, ptr elementtype(i32) %10) #13, !srcloc !20
  %31 = getelementptr i8, ptr %0, i32 -104
  %32 = load volatile i32, ptr %31, align 4
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %96, label %34

34:                                               ; preds = %25
  %35 = icmp eq ptr %2, null
  %36 = getelementptr inbounds %struct.writeback_control, ptr %2, i32 0, i32 4
  %37 = getelementptr i8, ptr %0, i32 -92
  call void @mutex_lock(ptr noundef %37) #13
  %38 = load ptr, ptr %11, align 4
  %39 = getelementptr inbounds %struct.nfs_mds_commit_info, ptr %38, i32 0, i32 1
  %40 = load volatile i32, ptr %39, align 4
  %41 = icmp sgt i32 %40, 0
  br i1 %41, label %45, label %42

42:                                               ; preds = %89, %34
  %43 = load ptr, ptr %6, align 4
  %44 = getelementptr i8, ptr %43, i32 -92
  call void @mutex_unlock(ptr noundef %44) #13
  br label %96

45:                                               ; preds = %89, %34
  %46 = phi ptr [ %92, %89 ], [ %38, %34 ]
  %47 = getelementptr inbounds %struct.nfs_mds_commit_info, ptr %46, i32 0, i32 2
  %48 = call i32 @nfs_scan_commit_list(ptr noundef %47, ptr noundef nonnull %5, ptr noundef nonnull %6, i32 noundef 2147483647) #13
  %49 = sub i32 2147483647, %48
  %50 = load ptr, ptr %27, align 4
  %51 = icmp eq ptr %50, null
  br i1 %51, label %62, label %52

52:                                               ; preds = %45
  %53 = getelementptr inbounds %struct.pnfs_ds_commit_info, ptr %50, i32 0, i32 1
  %54 = load i32, ptr %53, align 4
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %62, label %56

56:                                               ; preds = %52
  %57 = getelementptr inbounds %struct.pnfs_ds_commit_info, ptr %50, i32 0, i32 3
  %58 = load ptr, ptr %57, align 4
  %59 = getelementptr inbounds %struct.pnfs_commit_ops, ptr %58, i32 0, i32 5
  %60 = load ptr, ptr %59, align 4
  %61 = call i32 %60(ptr noundef nonnull %6, i32 noundef %49) #13
  br label %62

62:                                               ; preds = %56, %52, %45
  %63 = phi i32 [ %61, %56 ], [ 0, %52 ], [ 0, %45 ]
  %64 = add i32 %63, %48
  %65 = load ptr, ptr %6, align 4
  %66 = getelementptr i8, ptr %65, i32 -92
  call void @mutex_unlock(ptr noundef %66) #13
  %67 = icmp slt i32 %64, 1
  br i1 %67, label %96, label %68

68:                                               ; preds = %62
  %69 = call i32 @nfs_generic_commit_list(ptr noundef %0, ptr noundef nonnull %5, i32 noundef %9, ptr noundef nonnull %6)
  %70 = icmp slt i32 %69, 0
  br i1 %70, label %96, label %71

71:                                               ; preds = %68
  br i1 %35, label %81, label %72

72:                                               ; preds = %71
  %73 = load i32, ptr %36, align 8
  %74 = icmp eq i32 %73, 0
  br i1 %74, label %75, label %81

75:                                               ; preds = %72
  %76 = load i32, ptr %2, align 8
  %77 = icmp sgt i32 %76, %64
  br i1 %77, label %78, label %80

78:                                               ; preds = %75
  %79 = sub i32 %76, %64
  store i32 %79, ptr %2, align 8
  br label %96

80:                                               ; preds = %75
  store i32 0, ptr %2, align 8
  br label %81

81:                                               ; preds = %80, %72, %71
  %82 = icmp eq i32 %64, 2147483647
  br i1 %82, label %83, label %96

83:                                               ; preds = %81
  %84 = call i32 @__cond_resched() #13
  %85 = load ptr, ptr %11, align 4
  %86 = getelementptr inbounds %struct.nfs_mds_commit_info, ptr %85, i32 0, i32 1
  %87 = load volatile i32, ptr %86, align 4
  %88 = icmp eq i32 %87, 0
  br i1 %88, label %96, label %89

89:                                               ; preds = %83
  %90 = load ptr, ptr %6, align 4
  %91 = getelementptr i8, ptr %90, i32 -92
  call void @mutex_lock(ptr noundef %91) #13
  %92 = load ptr, ptr %11, align 4
  %93 = getelementptr inbounds %struct.nfs_mds_commit_info, ptr %92, i32 0, i32 1
  %94 = load volatile i32, ptr %93, align 4
  %95 = icmp sgt i32 %94, 0
  br i1 %95, label %45, label %42

96:                                               ; preds = %83, %81, %78, %68, %62, %42, %25
  %97 = phi i32 [ 0, %42 ], [ 0, %78 ], [ 0, %25 ], [ %64, %62 ], [ %69, %68 ], [ 0, %81 ], [ 0, %83 ]
  %98 = load ptr, ptr %11, align 4
  call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !50
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %98) #13, !srcloc !9
  %99 = call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %98, ptr %98, i32 1, ptr elementtype(i32) %98) #13, !srcloc !51
  %100 = extractvalue { i32, i32 } %99, 0
  call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !52
  %101 = icmp eq i32 %100, 0
  br i1 %101, label %102, label %103

102:                                              ; preds = %96
  call void @wake_up_var(ptr noundef %98) #13
  br label %103

103:                                              ; preds = %102, %96
  %104 = icmp eq i32 %97, 0
  %105 = icmp ne i32 %8, 0
  %106 = and i1 %105, %104
  br i1 %106, label %107, label %127

107:                                              ; preds = %103
  %108 = load ptr, ptr %11, align 4
  %109 = load volatile i32, ptr %108, align 4
  %110 = icmp eq i32 %109, 0
  br i1 %110, label %127, label %111

111:                                              ; preds = %107
  %112 = call ptr @__var_waitqueue(ptr noundef %108) #13
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %4) #13
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(32) %4, i8 0, i32 32, i1 false) #13, !annotation !12
  call void @init_wait_var_entry(ptr noundef nonnull %4, ptr noundef %108, i32 noundef 0) #13
  %113 = getelementptr inbounds %struct.wait_bit_queue_entry, ptr %4, i32 0, i32 1
  %114 = call i32 @prepare_to_wait_event(ptr noundef %112, ptr noundef %113, i32 noundef 258) #13
  %115 = load volatile i32, ptr %108, align 4
  %116 = icmp eq i32 %115, 0
  br i1 %116, label %124, label %117

117:                                              ; preds = %120, %111
  %118 = phi i32 [ %121, %120 ], [ %114, %111 ]
  %119 = icmp eq i32 %118, 0
  br i1 %119, label %120, label %125

120:                                              ; preds = %117
  call void @schedule() #13
  %121 = call i32 @prepare_to_wait_event(ptr noundef %112, ptr noundef %113, i32 noundef 258) #13
  %122 = load volatile i32, ptr %108, align 4
  %123 = icmp eq i32 %122, 0
  br i1 %123, label %124, label %117

124:                                              ; preds = %120, %111
  call void @finish_wait(ptr noundef %112, ptr noundef %113) #13
  br label %125

125:                                              ; preds = %124, %117
  %126 = phi i32 [ 0, %124 ], [ %118, %117 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %4) #13
  br label %127

127:                                              ; preds = %125, %107, %103
  %128 = phi i32 [ %97, %103 ], [ %126, %125 ], [ 0, %107 ]
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %6) #13
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #13
  ret i32 %128
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @nfs_write_inode(ptr noundef %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.writeback_control, ptr %1, i32 0, i32 4
  %4 = load i32, ptr %3, align 8
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %20

6:                                                ; preds = %2
  %7 = getelementptr i8, ptr %0, i32 -104
  %8 = load volatile i32, ptr %7, align 4
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %28, label %10

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 9
  %12 = load ptr, ptr %11, align 8
  %13 = getelementptr inbounds %struct.address_space, ptr %12, i32 0, i32 1, i32 1
  %14 = load i32, ptr %13, align 4
  %15 = and i32 %14, 67108864
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %33

17:                                               ; preds = %10
  %18 = tail call fastcc i32 @__nfs_commit_inode(ptr noundef %0, i32 noundef 0, ptr noundef %1)
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %28, label %23

20:                                               ; preds = %2
  %21 = tail call fastcc i32 @__nfs_commit_inode(ptr noundef %0, i32 noundef 1, ptr noundef %1)
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %35, label %23

23:                                               ; preds = %20, %17
  %24 = phi i32 [ %21, %20 ], [ %18, %17 ]
  %25 = getelementptr i8, ptr %0, i32 -104
  %26 = load volatile i32, ptr %25, align 4
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %33

28:                                               ; preds = %23, %17, %6
  %29 = phi i32 [ %24, %23 ], [ 0, %6 ], [ 0, %17 ]
  %30 = getelementptr i8, ptr %0, i32 -108
  %31 = load volatile i32, ptr %30, align 4
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %35, label %33

33:                                               ; preds = %28, %23, %10
  %34 = phi i32 [ 0, %10 ], [ %24, %23 ], [ %29, %28 ]
  tail call void @__mark_inode_dirty(ptr noundef %0, i32 noundef 2) #13
  br label %35

35:                                               ; preds = %33, %28, %20
  %36 = phi i32 [ %34, %33 ], [ %29, %28 ], [ 0, %20 ]
  ret i32 %36
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mark_inode_dirty(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @nfs_filemap_write_and_wait_range(ptr noundef %0, i64 noundef %1, i64 noundef %2) #0 {
  %4 = tail call i32 @filemap_write_and_wait_range(ptr noundef %0, i64 noundef %1, i64 noundef %2) #13
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %19

6:                                                ; preds = %3
  %7 = load ptr, ptr %0, align 4
  %8 = getelementptr inbounds %struct.inode, ptr %7, i32 0, i32 8
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.super_block, ptr %9, i32 0, i32 27
  %11 = load ptr, ptr %10, align 4
  %12 = getelementptr inbounds %struct.nfs_server, ptr %11, i32 0, i32 44
  %13 = load ptr, ptr %12, align 4
  %14 = icmp eq ptr %13, null
  br i1 %14, label %19, label %15

15:                                               ; preds = %6
  %16 = getelementptr inbounds %struct.pnfs_layoutdriver_type, ptr %13, i32 0, i32 18
  %17 = load ptr, ptr %16, align 4
  %18 = tail call i32 %17(ptr noundef %7, i1 noundef zeroext true) #13
  br label %19

19:                                               ; preds = %15, %6, %3
  %20 = phi i32 [ %4, %3 ], [ %18, %15 ], [ 0, %6 ]
  ret i32 %20
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @filemap_write_and_wait_range(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @nfs_wb_all(ptr noundef %0) #0 {
  %2 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_nfs_writeback_inode_enter, i32 0, i32 1), align 4
  %3 = icmp sgt i32 %2, 0
  br i1 %3, label %4, label %17

4:                                                ; preds = %1
  %5 = tail call ptr @llvm.thread.pointer() #13
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
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !55
  %16 = tail call i32 @__traceiter_nfs_writeback_inode_enter(ptr noundef null, ptr noundef %0) #13
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !56
  br label %17

17:                                               ; preds = %15, %4, %1
  %18 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 9
  %19 = load ptr, ptr %18, align 8
  %20 = tail call i32 @filemap_write_and_wait_range(ptr noundef %19, i64 noundef 0, i64 noundef 9223372036854775807) #13
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %37

22:                                               ; preds = %17
  %23 = tail call fastcc i32 @__nfs_commit_inode(ptr noundef %0, i32 noundef 1, ptr noundef null) #13
  %24 = icmp slt i32 %23, 0
  br i1 %24, label %37, label %25

25:                                               ; preds = %22
  %26 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 8
  %27 = load ptr, ptr %26, align 4
  %28 = getelementptr inbounds %struct.super_block, ptr %27, i32 0, i32 27
  %29 = load ptr, ptr %28, align 4
  %30 = getelementptr inbounds %struct.nfs_server, ptr %29, i32 0, i32 44
  %31 = load ptr, ptr %30, align 4
  %32 = icmp eq ptr %31, null
  br i1 %32, label %37, label %33

33:                                               ; preds = %25
  %34 = getelementptr inbounds %struct.pnfs_layoutdriver_type, ptr %31, i32 0, i32 18
  %35 = load ptr, ptr %34, align 4
  %36 = tail call i32 %35(ptr noundef %0, i1 noundef zeroext true) #13
  br label %37

37:                                               ; preds = %33, %25, %22, %17
  %38 = phi i32 [ %20, %17 ], [ %23, %22 ], [ 0, %25 ], [ 0, %33 ]
  %39 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_nfs_writeback_inode_exit, i32 0, i32 1), align 4
  %40 = icmp sgt i32 %39, 0
  br i1 %40, label %41, label %54

41:                                               ; preds = %37
  %42 = tail call ptr @llvm.thread.pointer() #13
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
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !57
  %53 = tail call i32 @__traceiter_nfs_writeback_inode_exit(ptr noundef null, ptr noundef %0, i32 noundef %38) #13
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !58
  br label %54

54:                                               ; preds = %52, %41, %37
  ret i32 %38
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @nfs_wb_page_cancel(ptr nocapture noundef readnone %0, ptr noundef %1) local_unnamed_addr #0 {
  tail call void @wait_on_page_writeback(ptr noundef %1) #13
  %3 = tail call fastcc ptr @nfs_lock_and_join_requests(ptr noundef %1)
  %4 = icmp ugt ptr %3, inttoptr (i32 -4096 to ptr)
  br i1 %4, label %5, label %7

5:                                                ; preds = %2
  %6 = ptrtoint ptr %3 to i32
  br label %10

7:                                                ; preds = %2
  %8 = icmp eq ptr %3, null
  br i1 %8, label %10, label %9

9:                                                ; preds = %7
  tail call fastcc void @nfs_inode_remove_request(ptr noundef nonnull %3)
  tail call void @nfs_unlock_and_release_request(ptr noundef nonnull %3) #13
  br label %10

10:                                               ; preds = %9, %7, %5
  %11 = phi i32 [ %6, %5 ], [ 0, %9 ], [ 0, %7 ]
  ret i32 %11
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @wait_on_page_writeback(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc ptr @nfs_lock_and_join_requests(ptr noundef %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.page, ptr %0, i32 0, i32 1
  %3 = load volatile i32, ptr %2, align 4
  %4 = and i32 %3, 1
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %8, label %6, !prof !13

6:                                                ; preds = %1
  %7 = add i32 %3, -1
  br label %10

8:                                                ; preds = %1
  %9 = ptrtoint ptr %0 to i32
  br label %10

10:                                               ; preds = %8, %6
  %11 = phi i32 [ %7, %6 ], [ %9, %8 ]
  %12 = inttoptr i32 %11 to ptr
  %13 = load volatile i32, ptr %12, align 4
  %14 = and i32 %13, 524288
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %22, label %16

16:                                               ; preds = %10
  %17 = load volatile i32, ptr %12, align 4
  %18 = and i32 %17, 1024
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %22, label %20, !prof !13

20:                                               ; preds = %16
  %21 = tail call ptr @swapcache_mapping(ptr noundef %12) #13
  br label %25

22:                                               ; preds = %16, %10
  %23 = getelementptr inbounds %struct.anon.154, ptr %12, i32 0, i32 2
  %24 = load ptr, ptr %23, align 4
  br label %25

25:                                               ; preds = %22, %20
  %26 = phi ptr [ %21, %20 ], [ %24, %22 ]
  %27 = load ptr, ptr %26, align 4
  %28 = load volatile i32, ptr %2, align 4
  %29 = and i32 %28, 1
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %33, label %31, !prof !13

31:                                               ; preds = %25
  %32 = add i32 %28, -1
  br label %35

33:                                               ; preds = %25
  %34 = ptrtoint ptr %0 to i32
  br label %35

35:                                               ; preds = %33, %31
  %36 = phi i32 [ %32, %31 ], [ %34, %33 ]
  %37 = inttoptr i32 %36 to ptr
  %38 = load volatile i32, ptr %37, align 4
  %39 = and i32 %38, 524288
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %47, label %41

41:                                               ; preds = %35
  %42 = load volatile i32, ptr %37, align 4
  %43 = and i32 %42, 1024
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %47, label %45, !prof !13

45:                                               ; preds = %41
  %46 = tail call ptr @swapcache_mapping(ptr noundef %37) #13
  br label %50

47:                                               ; preds = %41, %35
  %48 = getelementptr inbounds %struct.anon.154, ptr %37, i32 0, i32 2
  %49 = load ptr, ptr %48, align 4
  br label %50

50:                                               ; preds = %47, %45
  %51 = phi ptr [ %46, %45 ], [ %49, %47 ]
  %52 = load ptr, ptr %51, align 4
  %53 = tail call fastcc ptr @nfs_page_find_head_request(ptr noundef %0) #13
  %54 = icmp eq ptr %53, null
  br i1 %54, label %138, label %55

55:                                               ; preds = %50
  %56 = getelementptr i8, ptr %52, i32 -112
  %57 = getelementptr inbounds %struct.page, ptr %0, i32 0, i32 1, i32 0, i32 3
  %58 = ptrtoint ptr %0 to i32
  br label %59

59:                                               ; preds = %124, %55
  %60 = phi ptr [ %53, %55 ], [ %125, %124 ]
  %61 = tail call ptr @nfs_page_group_lock_head(ptr noundef nonnull %60) #13
  %62 = icmp eq ptr %61, %60
  br i1 %62, label %64, label %63

63:                                               ; preds = %59
  tail call void @nfs_release_request(ptr noundef nonnull %60) #13
  br label %64

64:                                               ; preds = %63, %59
  %65 = icmp ugt ptr %61, inttoptr (i32 -4096 to ptr)
  br i1 %65, label %127, label %66

66:                                               ; preds = %64
  %67 = getelementptr inbounds %struct.nfs_page, ptr %61, i32 0, i32 8
  %68 = load volatile i32, ptr %67, align 4
  %69 = and i32 %68, 1024
  %70 = icmp eq i32 %69, 0
  br i1 %70, label %98, label %71

71:                                               ; preds = %66
  %72 = tail call i32 @nfs_page_group_lock(ptr noundef %61) #13
  %73 = icmp eq i32 %72, 0
  br i1 %73, label %74, label %94

74:                                               ; preds = %71
  %75 = tail call i32 @_test_and_clear_bit(i32 noundef 10, ptr noundef %67) #13
  %76 = icmp eq i32 %75, 0
  br i1 %76, label %93, label %77

77:                                               ; preds = %74
  %78 = tail call i32 @_test_and_set_bit(i32 noundef 4, ptr noundef %67) #13
  %79 = icmp eq i32 %78, 0
  br i1 %79, label %80, label %93

80:                                               ; preds = %77
  %81 = getelementptr inbounds %struct.nfs_page, ptr %61, i32 0, i32 7
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %81) #13, !srcloc !9
  %82 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %81, ptr %81, i32 1, ptr elementtype(i32) %81) #13, !srcloc !22
  %83 = extractvalue { i32, i32, i32 } %82, 0
  %84 = icmp eq i32 %83, 0
  br i1 %84, label %89, label %85, !prof !11

85:                                               ; preds = %80
  %86 = add i32 %83, 1
  %87 = or i32 %86, %83
  %88 = icmp sgt i32 %87, -1
  br i1 %88, label %91, label %89, !prof !13

89:                                               ; preds = %85, %80
  %90 = phi i32 [ 2, %80 ], [ 1, %85 ]
  tail call void @refcount_warn_saturate(ptr noundef %81, i32 noundef %90) #13
  br label %91

91:                                               ; preds = %89, %85
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %56) #13, !srcloc !9
  %92 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %56, ptr %56, i32 1, ptr elementtype(i32) %56) #13, !srcloc !20
  br label %93

93:                                               ; preds = %91, %77, %74
  tail call void @nfs_page_group_unlock(ptr noundef %61) #13
  br label %98

94:                                               ; preds = %71
  %95 = icmp slt i32 %72, 0
  br i1 %95, label %96, label %98

96:                                               ; preds = %94
  tail call void @nfs_unlock_and_release_request(ptr noundef %61) #13
  %97 = inttoptr i32 %72 to ptr
  br label %127

98:                                               ; preds = %94, %93, %66
  %99 = load volatile i32, ptr %0, align 4
  %100 = and i32 %99, 8192
  %101 = icmp eq i32 %100, 0
  br i1 %101, label %105, label %102

102:                                              ; preds = %98
  %103 = load i32, ptr %57, align 4
  %104 = inttoptr i32 %103 to ptr
  br label %105

105:                                              ; preds = %102, %98
  %106 = phi ptr [ %104, %102 ], [ null, %98 ]
  %107 = icmp eq ptr %61, %106
  br i1 %107, label %127, label %108

108:                                              ; preds = %105
  %109 = load volatile i32, ptr %2, align 4
  %110 = and i32 %109, 1
  %111 = icmp eq i32 %110, 0
  br i1 %111, label %114, label %112, !prof !13

112:                                              ; preds = %108
  %113 = add i32 %109, -1
  br label %114

114:                                              ; preds = %112, %108
  %115 = phi i32 [ %113, %112 ], [ %58, %108 ]
  %116 = inttoptr i32 %115 to ptr
  %117 = load volatile i32, ptr %116, align 4
  %118 = and i32 %117, 524288
  %119 = icmp eq i32 %118, 0
  br i1 %119, label %124, label %120

120:                                              ; preds = %114
  %121 = load volatile i32, ptr %116, align 4
  %122 = and i32 %121, 1024
  %123 = icmp eq i32 %122, 0
  br i1 %123, label %124, label %127

124:                                              ; preds = %120, %114
  tail call void @nfs_unlock_and_release_request(ptr noundef %61) #13
  %125 = tail call fastcc ptr @nfs_page_find_head_request(ptr noundef %0) #13
  %126 = icmp eq ptr %125, null
  br i1 %126, label %138, label %59

127:                                              ; preds = %120, %105, %96, %64
  %128 = phi ptr [ %97, %96 ], [ %61, %120 ], [ %61, %105 ], [ %61, %64 ]
  %129 = icmp eq ptr %128, null
  %130 = icmp ugt ptr %128, inttoptr (i32 -4096 to ptr)
  %131 = or i1 %129, %130
  br i1 %131, label %138, label %132

132:                                              ; preds = %127
  %133 = tail call i32 @nfs_page_group_lock_subrequests(ptr noundef nonnull %128) #13
  %134 = icmp slt i32 %133, 0
  br i1 %134, label %135, label %137

135:                                              ; preds = %132
  tail call void @nfs_unlock_and_release_request(ptr noundef nonnull %128) #13
  %136 = inttoptr i32 %133 to ptr
  br label %138

137:                                              ; preds = %132
  tail call void @nfs_join_page_group(ptr noundef nonnull %128, ptr noundef %27)
  br label %138

138:                                              ; preds = %137, %135, %127, %124, %50
  %139 = phi ptr [ %136, %135 ], [ %128, %137 ], [ %128, %127 ], [ null, %50 ], [ null, %124 ]
  ret ptr %139
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @nfs_inode_remove_request(ptr noundef %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.nfs_page, ptr %0, i32 0, i32 1
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.page, ptr %3, i32 0, i32 1
  %5 = load volatile i32, ptr %4, align 4
  %6 = and i32 %5, 1
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %10, label %8, !prof !13

8:                                                ; preds = %1
  %9 = add i32 %5, -1
  br label %12

10:                                               ; preds = %1
  %11 = ptrtoint ptr %3 to i32
  br label %12

12:                                               ; preds = %10, %8
  %13 = phi i32 [ %9, %8 ], [ %11, %10 ]
  %14 = inttoptr i32 %13 to ptr
  %15 = load volatile i32, ptr %14, align 4
  %16 = and i32 %15, 524288
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %24, label %18

18:                                               ; preds = %12
  %19 = load volatile i32, ptr %14, align 4
  %20 = and i32 %19, 1024
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %24, label %22, !prof !13

22:                                               ; preds = %18
  %23 = tail call ptr @swapcache_mapping(ptr noundef %14) #13
  br label %27

24:                                               ; preds = %18, %12
  %25 = getelementptr inbounds %struct.anon.154, ptr %14, i32 0, i32 2
  %26 = load ptr, ptr %25, align 4
  br label %27

27:                                               ; preds = %24, %22
  %28 = phi ptr [ %23, %22 ], [ %26, %24 ]
  %29 = load ptr, ptr %28, align 4
  %30 = tail call zeroext i1 @nfs_page_group_sync_on_bit(ptr noundef %0, i32 noundef 10) #13
  br i1 %30, label %31, label %64

31:                                               ; preds = %27
  %32 = getelementptr inbounds %struct.nfs_page, ptr %0, i32 0, i32 11
  %33 = load ptr, ptr %32, align 4
  %34 = getelementptr inbounds %struct.address_space, ptr %28, i32 0, i32 12
  tail call void @_raw_spin_lock(ptr noundef %34) #13
  %35 = getelementptr inbounds %struct.nfs_page, ptr %33, i32 0, i32 1
  %36 = load ptr, ptr %35, align 4
  %37 = icmp eq ptr %36, null
  br i1 %37, label %61, label %38, !prof !11

38:                                               ; preds = %31
  %39 = getelementptr inbounds %struct.page, ptr %36, i32 0, i32 1
  %40 = load volatile i32, ptr %39, align 4
  %41 = and i32 %40, 1
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %45, label %43, !prof !13

43:                                               ; preds = %38
  %44 = add i32 %40, -1
  br label %47

45:                                               ; preds = %38
  %46 = ptrtoint ptr %36 to i32
  br label %47

47:                                               ; preds = %45, %43
  %48 = phi i32 [ %44, %43 ], [ %46, %45 ]
  %49 = inttoptr i32 %48 to ptr
  %50 = load volatile i32, ptr %49, align 4
  %51 = and i32 %50, 524288
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %57, label %53

53:                                               ; preds = %47
  %54 = load volatile i32, ptr %49, align 4
  %55 = and i32 %54, 1024
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %57, label %61, !prof !13

57:                                               ; preds = %53, %47
  %58 = getelementptr inbounds %struct.page, ptr %36, i32 0, i32 1, i32 0, i32 3
  store i32 0, ptr %58, align 4
  %59 = load ptr, ptr %35, align 4
  tail call void @_clear_bit(i32 noundef 13, ptr noundef %59) #13
  %60 = getelementptr inbounds %struct.nfs_page, ptr %33, i32 0, i32 8
  tail call void @_clear_bit(i32 noundef 1, ptr noundef %60) #13
  br label %61

61:                                               ; preds = %57, %53, %31
  tail call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !24
  %62 = load i16, ptr %34, align 4
  %63 = add i16 %62, 1
  store i16 %63, ptr %34, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #13, !srcloc !25
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #13, !srcloc !26
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !27
  br label %64

64:                                               ; preds = %61, %27
  %65 = getelementptr inbounds %struct.nfs_page, ptr %0, i32 0, i32 8
  %66 = tail call i32 @_test_and_clear_bit(i32 noundef 4, ptr noundef %65) #13
  %67 = icmp eq i32 %66, 0
  br i1 %67, label %71, label %68

68:                                               ; preds = %64
  tail call void @nfs_release_request(ptr noundef %0) #13
  %69 = getelementptr i8, ptr %29, i32 -112
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %69) #13, !srcloc !9
  %70 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %69, ptr %69, i32 1, ptr elementtype(i32) %69) #13, !srcloc !10
  br label %71

71:                                               ; preds = %68, %64
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @clear_page_dirty_for_io(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @nfs_migrate_page(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3) local_unnamed_addr #0 {
  %5 = load volatile i32, ptr %2, align 4
  %6 = and i32 %5, 8192
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %28

8:                                                ; preds = %4
  %9 = load volatile i32, ptr %2, align 4
  %10 = and i32 %9, 16384
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %26, label %12

12:                                               ; preds = %8
  %13 = icmp eq i32 %3, 0
  br i1 %13, label %28, label %14

14:                                               ; preds = %12
  %15 = getelementptr inbounds %struct.page, ptr %2, i32 0, i32 1
  %16 = load volatile i32, ptr %15, align 4
  %17 = and i32 %16, 1
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %21, label %19, !prof !13

19:                                               ; preds = %14
  %20 = add i32 %16, -1
  br label %23

21:                                               ; preds = %14
  %22 = ptrtoint ptr %2 to i32
  br label %23

23:                                               ; preds = %21, %19
  %24 = phi i32 [ %20, %19 ], [ %22, %21 ]
  %25 = inttoptr i32 %24 to ptr
  tail call void @folio_wait_private_2(ptr noundef %25) #13
  br label %26

26:                                               ; preds = %23, %8
  %27 = tail call i32 @migrate_page(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3) #13
  br label %28

28:                                               ; preds = %26, %12, %4
  %29 = phi i32 [ %27, %26 ], [ -16, %4 ], [ -16, %12 ]
  ret i32 %29
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @migrate_page(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local i32 @nfs_init_writepagecache() local_unnamed_addr #6 section ".init.text" {
  %1 = tail call ptr @kmem_cache_create(ptr noundef nonnull @.str.1, i32 noundef 632, i32 noundef 0, i32 noundef 8192, ptr noundef null) #13
  store ptr %1, ptr @nfs_wdata_cachep, align 4
  %2 = icmp eq ptr %1, null
  br i1 %2, label %23, label %3

3:                                                ; preds = %0
  %4 = tail call ptr @mempool_create(i32 noundef 32, ptr noundef nonnull @mempool_alloc_slab, ptr noundef nonnull @mempool_free_slab, ptr noundef nonnull %1) #13
  store ptr %4, ptr @nfs_wdata_mempool, align 4
  %5 = icmp eq ptr %4, null
  br i1 %5, label %21, label %6

6:                                                ; preds = %3
  %7 = tail call ptr @kmem_cache_create(ptr noundef nonnull @.str.2, i32 noundef 488, i32 noundef 0, i32 noundef 8192, ptr noundef null) #13
  store ptr %7, ptr @nfs_cdata_cachep, align 4
  %8 = icmp eq ptr %7, null
  br i1 %8, label %19, label %9

9:                                                ; preds = %6
  %10 = tail call ptr @mempool_create(i32 noundef 4, ptr noundef nonnull @mempool_alloc_slab, ptr noundef nonnull @mempool_free_slab, ptr noundef nonnull %7) #13
  store ptr %10, ptr @nfs_commit_mempool, align 4
  %11 = icmp eq ptr %10, null
  br i1 %11, label %17, label %12

12:                                               ; preds = %9
  %13 = load volatile i32, ptr @_totalram_pages, align 4
  %14 = tail call i32 @int_sqrt(i32 noundef %13) #13
  %15 = shl i32 %14, 6
  %16 = tail call i32 @llvm.smin.i32(i32 %15, i32 262144)
  store i32 %16, ptr @nfs_congestion_kb, align 4
  br label %23

17:                                               ; preds = %9
  %18 = load ptr, ptr @nfs_cdata_cachep, align 4
  tail call void @kmem_cache_destroy(ptr noundef %18) #13
  br label %19

19:                                               ; preds = %17, %6
  %20 = load ptr, ptr @nfs_wdata_mempool, align 4
  tail call void @mempool_destroy(ptr noundef %20) #13
  br label %21

21:                                               ; preds = %19, %3
  %22 = load ptr, ptr @nfs_wdata_cachep, align 4
  tail call void @kmem_cache_destroy(ptr noundef %22) #13
  br label %23

23:                                               ; preds = %21, %12, %0
  %24 = phi i32 [ -12, %21 ], [ 0, %12 ], [ -12, %0 ]
  ret i32 %24
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kmem_cache_create(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @int_sqrt(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kmem_cache_destroy(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mempool_destroy(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @nfs_destroy_writepagecache() local_unnamed_addr #0 {
  %1 = load ptr, ptr @nfs_commit_mempool, align 4
  tail call void @mempool_destroy(ptr noundef %1) #13
  %2 = load ptr, ptr @nfs_cdata_cachep, align 4
  tail call void @kmem_cache_destroy(ptr noundef %2) #13
  %3 = load ptr, ptr @nfs_wdata_mempool, align 4
  tail call void @mempool_destroy(ptr noundef %3) #13
  %4 = load ptr, ptr @nfs_wdata_cachep, align 4
  tail call void @kmem_cache_destroy(ptr noundef %4) #13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nfs_page_set_headlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @nfs_page_clear_headlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @nfs_free_request(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @nfs_do_writepage(ptr noundef %0, ptr noundef %1, ptr noundef %2) unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.page, ptr %0, i32 0, i32 1
  %5 = load volatile i32, ptr %4, align 4
  %6 = and i32 %5, 1
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %10, label %8, !prof !13

8:                                                ; preds = %3
  %9 = add i32 %5, -1
  br label %12

10:                                               ; preds = %3
  %11 = ptrtoint ptr %0 to i32
  br label %12

12:                                               ; preds = %10, %8
  %13 = phi i32 [ %9, %8 ], [ %11, %10 ]
  %14 = inttoptr i32 %13 to ptr
  %15 = load volatile i32, ptr %14, align 4
  %16 = and i32 %15, 524288
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %24, label %18

18:                                               ; preds = %12
  %19 = load volatile i32, ptr %14, align 4
  %20 = and i32 %19, 1024
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %24, label %22, !prof !13

22:                                               ; preds = %18
  %23 = tail call i32 @__page_file_index(ptr noundef %0) #13
  br label %27

24:                                               ; preds = %18, %12
  %25 = getelementptr inbounds %struct.page, ptr %0, i32 0, i32 1, i32 0, i32 2
  %26 = load i32, ptr %25, align 4
  br label %27

27:                                               ; preds = %24, %22
  %28 = phi i32 [ %23, %22 ], [ %26, %24 ]
  tail call void @nfs_pageio_cond_complete(ptr noundef %2, i32 noundef %28) #13
  %29 = tail call fastcc ptr @nfs_lock_and_join_requests(ptr noundef %0) #13
  %30 = icmp eq ptr %29, null
  br i1 %30, label %161, label %31

31:                                               ; preds = %27
  %32 = ptrtoint ptr %29 to i32
  %33 = icmp ugt ptr %29, inttoptr (i32 -4096 to ptr)
  br i1 %33, label %156, label %34

34:                                               ; preds = %31
  %35 = load volatile i32, ptr %4, align 4
  %36 = and i32 %35, 1
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %40, label %38, !prof !13

38:                                               ; preds = %34
  %39 = add i32 %35, -1
  br label %42

40:                                               ; preds = %34
  %41 = ptrtoint ptr %0 to i32
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
  br i1 %51, label %54, label %52, !prof !13

52:                                               ; preds = %48
  %53 = tail call ptr @swapcache_mapping(ptr noundef %44) #13
  br label %57

54:                                               ; preds = %48, %42
  %55 = getelementptr inbounds %struct.anon.154, ptr %44, i32 0, i32 2
  %56 = load ptr, ptr %55, align 4
  br label %57

57:                                               ; preds = %54, %52
  %58 = phi ptr [ %53, %52 ], [ %56, %54 ]
  %59 = load ptr, ptr %58, align 4
  %60 = getelementptr inbounds %struct.inode, ptr %59, i32 0, i32 8
  %61 = load ptr, ptr %60, align 4
  %62 = getelementptr inbounds %struct.super_block, ptr %61, i32 0, i32 27
  %63 = load ptr, ptr %62, align 4
  %64 = tail call zeroext i1 @set_page_writeback(ptr noundef %0) #13
  %65 = load i1, ptr @nfs_set_page_writeback.__already_done, align 1
  %66 = xor i1 %65, true
  %67 = select i1 %64, i1 %66, i1 false
  br i1 %67, label %68, label %69, !prof !11

68:                                               ; preds = %57
  store i1 true, ptr @nfs_set_page_writeback.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 416, i32 noundef 9, ptr noundef null) #13
  br label %69

69:                                               ; preds = %68, %57
  %70 = getelementptr inbounds %struct.nfs_server, ptr %63, i32 0, i32 7
  tail call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !59
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %70) #13, !srcloc !9
  %71 = tail call { i32, i32 } asm sideeffect "@ atomic_add_return\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %70, ptr %70, i32 1, ptr elementtype(i32) %70) #13, !srcloc !60
  %72 = extractvalue { i32, i32 } %71, 0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !61
  %73 = load i32, ptr @nfs_congestion_kb, align 4
  %74 = ashr i32 %73, 2
  %75 = icmp sgt i32 %72, %74
  br i1 %75, label %76, label %78

76:                                               ; preds = %69
  %77 = tail call ptr @inode_to_bdi(ptr noundef %59) #13
  tail call void @set_bdi_congested(ptr noundef %77, i32 noundef 0) #13
  br label %78

78:                                               ; preds = %76, %69
  %79 = getelementptr inbounds %struct.nfs_page, ptr %29, i32 0, i32 8
  %80 = load volatile i32, ptr %79, align 4
  %81 = and i32 %80, 4
  %82 = icmp ne i32 %81, 0
  %83 = load i1, ptr @nfs_page_async_flush.__already_done, align 1
  %84 = xor i1 %83, true
  %85 = select i1 %82, i1 %84, i1 false
  br i1 %85, label %86, label %87, !prof !11

86:                                               ; preds = %78
  store i1 true, ptr @nfs_page_async_flush.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 621, i32 noundef 9, ptr noundef null) #13
  br label %87

87:                                               ; preds = %86, %78
  %88 = getelementptr inbounds %struct.nfs_pageio_descriptor, ptr %2, i32 0, i32 4
  %89 = load i32, ptr %88, align 4
  switch i32 %89, label %90 [
    i32 -7, label %154
    i32 -116, label %154
    i32 -30, label %154
    i32 -12, label %154
    i32 -110, label %154
    i32 -13, label %154
    i32 -122, label %154
    i32 -27, label %154
    i32 -5, label %154
    i32 -28, label %154
  ]

90:                                               ; preds = %87
  %91 = tail call i32 @nfs_pageio_add_request(ptr noundef %2, ptr noundef nonnull %29) #13
  %92 = icmp eq i32 %91, 0
  br i1 %92, label %93, label %112

93:                                               ; preds = %90
  %94 = load i32, ptr %88, align 4
  switch i32 %94, label %96 [
    i32 -512, label %95
    i32 -4, label %95
    i32 -13, label %95
    i32 -122, label %95
    i32 -27, label %95
    i32 -5, label %95
    i32 -28, label %95
    i32 -30, label %95
    i32 -116, label %95
    i32 -7, label %95
    i32 -12, label %95
    i32 -110, label %95
  ]

95:                                               ; preds = %93, %93, %93, %93, %93, %93, %93, %93, %93, %93, %93, %93
  switch i32 %94, label %96 [
    i32 -7, label %154
    i32 -116, label %154
    i32 -30, label %154
    i32 -12, label %154
    i32 -110, label %154
    i32 -13, label %154
    i32 -122, label %154
    i32 -27, label %154
    i32 -5, label %154
    i32 -28, label %154
  ]

96:                                               ; preds = %95, %93
  %97 = phi i32 [ -11, %93 ], [ %94, %95 ]
  %98 = getelementptr inbounds %struct.nfs_page, ptr %29, i32 0, i32 12
  %99 = load i16, ptr %98, align 4
  %100 = add i16 %99, 1
  store i16 %100, ptr %98, align 4
  %101 = getelementptr inbounds %struct.nfs_page, ptr %29, i32 0, i32 1
  %102 = load ptr, ptr %101, align 4
  %103 = icmp eq ptr %102, null
  br i1 %103, label %106, label %104

104:                                              ; preds = %96
  %105 = tail call i32 @__set_page_dirty_nobuffers(ptr noundef nonnull %102) #13
  br label %106

106:                                              ; preds = %104, %96
  %107 = getelementptr inbounds %struct.nfs_page, ptr %29, i32 0, i32 2
  %108 = load ptr, ptr %107, align 4
  %109 = getelementptr inbounds %struct.nfs_lock_context, ptr %108, i32 0, i32 2
  %110 = load ptr, ptr %109, align 4
  %111 = getelementptr inbounds %struct.nfs_open_context, ptr %110, i32 0, i32 7
  tail call void @_set_bit(i32 noundef 1, ptr noundef %111) #13
  tail call fastcc void @nfs_end_page_writeback(ptr noundef nonnull %29) #13
  tail call void @nfs_release_request(ptr noundef nonnull %29) #13
  store i32 0, ptr %88, align 4
  br label %156

112:                                              ; preds = %90
  %113 = load volatile i32, ptr %4, align 4
  %114 = and i32 %113, 1
  %115 = icmp eq i32 %114, 0
  br i1 %115, label %118, label %116, !prof !13

116:                                              ; preds = %112
  %117 = add i32 %113, -1
  br label %120

118:                                              ; preds = %112
  %119 = ptrtoint ptr %0 to i32
  br label %120

120:                                              ; preds = %118, %116
  %121 = phi i32 [ %117, %116 ], [ %119, %118 ]
  %122 = inttoptr i32 %121 to ptr
  %123 = load volatile i32, ptr %122, align 4
  %124 = and i32 %123, 524288
  %125 = icmp eq i32 %124, 0
  br i1 %125, label %132, label %126

126:                                              ; preds = %120
  %127 = load volatile i32, ptr %122, align 4
  %128 = and i32 %127, 1024
  %129 = icmp eq i32 %128, 0
  br i1 %129, label %132, label %130, !prof !13

130:                                              ; preds = %126
  %131 = tail call ptr @swapcache_mapping(ptr noundef %122) #13
  br label %135

132:                                              ; preds = %126, %120
  %133 = getelementptr inbounds %struct.anon.154, ptr %122, i32 0, i32 2
  %134 = load ptr, ptr %133, align 4
  br label %135

135:                                              ; preds = %132, %130
  %136 = phi ptr [ %131, %130 ], [ %134, %132 ]
  %137 = load ptr, ptr %136, align 4
  %138 = getelementptr inbounds %struct.inode, ptr %137, i32 0, i32 8
  %139 = load ptr, ptr %138, align 4
  %140 = getelementptr inbounds %struct.super_block, ptr %139, i32 0, i32 27
  %141 = load ptr, ptr %140, align 4
  %142 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #13, !srcloc !14
  %143 = getelementptr inbounds %struct.nfs_server, ptr %141, i32 0, i32 6
  %144 = load ptr, ptr %143, align 8
  %145 = getelementptr [8 x i64], ptr %144, i32 0, i32 7
  %146 = ptrtoint ptr %145 to i32
  %147 = tail call i32 @llvm.read_register.i32(metadata !0) #13
  %148 = inttoptr i32 %147 to ptr
  %149 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %148) #7, !srcloc !15
  %150 = add i32 %149, %146
  %151 = inttoptr i32 %150 to ptr
  %152 = load i64, ptr %151, align 8
  %153 = add i64 %152, 1
  store i64 %153, ptr %151, align 8
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %142) #13, !srcloc !16
  br label %161

154:                                              ; preds = %95, %95, %95, %95, %95, %95, %95, %95, %95, %95, %87, %87, %87, %87, %87, %87, %87, %87, %87, %87
  %155 = phi i32 [ %89, %87 ], [ %89, %87 ], [ %89, %87 ], [ %89, %87 ], [ %89, %87 ], [ %89, %87 ], [ %89, %87 ], [ %89, %87 ], [ %89, %87 ], [ %89, %87 ], [ %94, %95 ], [ %94, %95 ], [ %94, %95 ], [ %94, %95 ], [ %94, %95 ], [ %94, %95 ], [ %94, %95 ], [ %94, %95 ], [ %94, %95 ], [ %94, %95 ]
  tail call fastcc void @nfs_write_error(ptr noundef nonnull %29, i32 noundef %155) #13
  br label %161

156:                                              ; preds = %106, %31
  %157 = phi i32 [ %32, %31 ], [ %97, %106 ]
  %158 = icmp eq i32 %157, -11
  br i1 %158, label %159, label %161

159:                                              ; preds = %156
  %160 = tail call zeroext i1 @redirty_page_for_writepage(ptr noundef %1, ptr noundef %0) #13
  br label %161

161:                                              ; preds = %159, %156, %154, %135, %27
  %162 = phi i32 [ 524288, %159 ], [ %157, %156 ], [ 0, %154 ], [ 0, %135 ], [ 0, %27 ]
  ret i32 %162
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @nfs_pageio_cond_complete(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @redirty_page_for_writepage(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__page_file_index(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nfs_pageio_add_request(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @nfs_write_error(ptr noundef %0, i32 noundef %1) unnamed_addr #0 {
  %3 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_nfs_write_error, i32 0, i32 1), align 4
  %4 = icmp sgt i32 %3, 0
  br i1 %4, label %5, label %18

5:                                                ; preds = %2
  %6 = tail call ptr @llvm.thread.pointer() #13
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
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !62
  %17 = tail call i32 @__traceiter_nfs_write_error(ptr noundef null, ptr noundef %0, i32 noundef %1) #13
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !63
  br label %18

18:                                               ; preds = %16, %5, %2
  %19 = getelementptr inbounds %struct.nfs_page, ptr %0, i32 0, i32 1
  %20 = load ptr, ptr %19, align 4
  tail call fastcc void @nfs_mapping_set_error(ptr noundef %20, i32 noundef %1)
  tail call fastcc void @nfs_inode_remove_request(ptr noundef %0)
  tail call fastcc void @nfs_end_page_writeback(ptr noundef %0)
  tail call void @nfs_release_request(ptr noundef %0) #13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @set_bdi_congested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @inode_to_bdi(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @set_page_writeback(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @nfs_end_page_writeback(ptr noundef %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.nfs_page, ptr %0, i32 0, i32 1
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.page, ptr %3, i32 0, i32 1
  %5 = load volatile i32, ptr %4, align 4
  %6 = and i32 %5, 1
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %10, label %8, !prof !13

8:                                                ; preds = %1
  %9 = add i32 %5, -1
  br label %12

10:                                               ; preds = %1
  %11 = ptrtoint ptr %3 to i32
  br label %12

12:                                               ; preds = %10, %8
  %13 = phi i32 [ %9, %8 ], [ %11, %10 ]
  %14 = inttoptr i32 %13 to ptr
  %15 = load volatile i32, ptr %14, align 4
  %16 = and i32 %15, 524288
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %24, label %18

18:                                               ; preds = %12
  %19 = load volatile i32, ptr %14, align 4
  %20 = and i32 %19, 1024
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %24, label %22, !prof !13

22:                                               ; preds = %18
  %23 = tail call ptr @swapcache_mapping(ptr noundef %14) #13
  br label %27

24:                                               ; preds = %18, %12
  %25 = getelementptr inbounds %struct.anon.154, ptr %14, i32 0, i32 2
  %26 = load ptr, ptr %25, align 4
  br label %27

27:                                               ; preds = %24, %22
  %28 = phi ptr [ %23, %22 ], [ %26, %24 ]
  %29 = load ptr, ptr %28, align 4
  %30 = getelementptr inbounds %struct.inode, ptr %29, i32 0, i32 8
  %31 = load ptr, ptr %30, align 4
  %32 = getelementptr inbounds %struct.super_block, ptr %31, i32 0, i32 27
  %33 = load ptr, ptr %32, align 4
  %34 = tail call zeroext i1 @nfs_page_group_sync_on_bit(ptr noundef %0, i32 noundef 9) #13
  tail call void @nfs_unlock_request(ptr noundef %0) #13
  br i1 %34, label %35, label %47

35:                                               ; preds = %27
  %36 = load ptr, ptr %2, align 4
  tail call void @end_page_writeback(ptr noundef %36) #13
  %37 = getelementptr inbounds %struct.nfs_server, ptr %33, i32 0, i32 7
  tail call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !50
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %37) #13, !srcloc !9
  %38 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %37, ptr %37, i32 1, ptr elementtype(i32) %37) #13, !srcloc !51
  %39 = extractvalue { i32, i32 } %38, 0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !52
  %40 = load i32, ptr @nfs_congestion_kb, align 4
  %41 = ashr i32 %40, 2
  %42 = ashr i32 %40, 4
  %43 = sub nsw i32 %41, %42
  %44 = icmp slt i32 %39, %43
  br i1 %44, label %45, label %47

45:                                               ; preds = %35
  %46 = tail call ptr @inode_to_bdi(ptr noundef %29) #13
  tail call void @clear_bdi_congested(ptr noundef %46, i32 noundef 0) #13
  br label %47

47:                                               ; preds = %45, %35, %27
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__set_page_dirty_nobuffers(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @nfs_page_group_sync_on_bit(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @nfs_unlock_request(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @end_page_writeback(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @clear_bdi_congested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #7

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @nfs_mapping_set_error(ptr noundef %0, i32 noundef %1) unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.page, ptr %0, i32 0, i32 1
  %4 = load volatile i32, ptr %3, align 4
  %5 = and i32 %4, 1
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %9, label %7, !prof !13

7:                                                ; preds = %2
  %8 = add i32 %4, -1
  br label %11

9:                                                ; preds = %2
  %10 = ptrtoint ptr %0 to i32
  br label %11

11:                                               ; preds = %9, %7
  %12 = phi i32 [ %8, %7 ], [ %10, %9 ]
  %13 = inttoptr i32 %12 to ptr
  %14 = load volatile i32, ptr %13, align 4
  %15 = and i32 %14, 524288
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %23, label %17

17:                                               ; preds = %11
  %18 = load volatile i32, ptr %13, align 4
  %19 = and i32 %18, 1024
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %23, label %21, !prof !13

21:                                               ; preds = %17
  %22 = tail call ptr @swapcache_mapping(ptr noundef %13) #13
  br label %26

23:                                               ; preds = %17, %11
  %24 = getelementptr inbounds %struct.anon.154, ptr %13, i32 0, i32 2
  %25 = load ptr, ptr %24, align 4
  br label %26

26:                                               ; preds = %23, %21
  %27 = phi ptr [ %22, %21 ], [ %25, %23 ]
  %28 = load volatile i32, ptr %3, align 4
  %29 = and i32 %28, 1
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %33, label %31, !prof !13

31:                                               ; preds = %26
  %32 = add i32 %28, -1
  br label %35

33:                                               ; preds = %26
  %34 = ptrtoint ptr %0 to i32
  br label %35

35:                                               ; preds = %33, %31
  %36 = phi i32 [ %32, %31 ], [ %34, %33 ]
  %37 = inttoptr i32 %36 to ptr
  tail call void @_set_bit(i32 noundef 8, ptr noundef %37) #13
  %38 = icmp eq i32 %1, 0
  br i1 %38, label %51, label %39, !prof !13

39:                                               ; preds = %35
  tail call void @__filemap_set_wb_err(ptr noundef %27, i32 noundef %1) #13
  %40 = load ptr, ptr %27, align 4
  %41 = icmp eq ptr %40, null
  br i1 %41, label %47, label %42

42:                                               ; preds = %39
  %43 = getelementptr inbounds %struct.inode, ptr %40, i32 0, i32 8
  %44 = load ptr, ptr %43, align 4
  %45 = getelementptr inbounds %struct.super_block, ptr %44, i32 0, i32 44
  %46 = tail call i32 @errseq_set(ptr noundef %45, i32 noundef %1) #13
  br label %47

47:                                               ; preds = %42, %39
  %48 = icmp eq i32 %1, -28
  %49 = getelementptr inbounds %struct.address_space, ptr %27, i32 0, i32 10
  %50 = zext i1 %48 to i32
  tail call void @_set_bit(i32 noundef %50, ptr noundef %49) #13
  br label %51

51:                                               ; preds = %47, %35
  %52 = load ptr, ptr %27, align 4
  tail call void @nfs_zap_mapping(ptr noundef %52, ptr noundef %27) #13
  %53 = getelementptr inbounds %struct.inode, ptr %52, i32 0, i32 17
  tail call void @_raw_spin_lock(ptr noundef %53) #13
  tail call void @nfs_set_cache_invalid(ptr noundef %52, i32 noundef 2144) #13
  tail call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !24
  %54 = load i16, ptr %53, align 4
  %55 = add i16 %54, 1
  store i16 %55, ptr %53, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #13, !srcloc !25
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #13, !srcloc !26
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !27
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_nfs_write_error(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__filemap_set_wb_err(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @errseq_set(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #9

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @inc_node_page_state(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @percpu_counter_add_batch(ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @nfs_commit_release_pages(ptr noundef %0) #0 {
  %2 = alloca %struct.nfs_commit_info, align 4
  %3 = getelementptr inbounds %struct.nfs_commit_data, ptr %0, i32 0, i32 9, i32 3
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.rpc_task, ptr %0, i32 0, i32 1
  %6 = load i32, ptr %5, align 4
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %2) #13
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(20) %2, i8 0, i32 20, i1 false), !annotation !12
  %7 = getelementptr inbounds %struct.nfs_commit_data, ptr %0, i32 0, i32 5
  %8 = load volatile ptr, ptr %7, align 4
  %9 = icmp eq ptr %8, %7
  br i1 %9, label %75, label %10

10:                                               ; preds = %1
  %11 = icmp slt i32 %6, 0
  %12 = getelementptr inbounds %struct.nfs_writeverf, ptr %4, i32 0, i32 1
  br label %13

13:                                               ; preds = %71, %10
  %14 = phi ptr [ %8, %10 ], [ %73, %71 ]
  %15 = load volatile ptr, ptr %14, align 4
  %16 = icmp eq ptr %15, %14
  br i1 %16, label %21, label %17

17:                                               ; preds = %13
  %18 = getelementptr inbounds %struct.list_head, ptr %14, i32 0, i32 1
  %19 = load ptr, ptr %18, align 4
  %20 = getelementptr inbounds %struct.list_head, ptr %15, i32 0, i32 1
  store ptr %19, ptr %20, align 4
  store volatile ptr %15, ptr %19, align 4
  store volatile ptr %14, ptr %14, align 4
  store ptr %14, ptr %18, align 4
  br label %21

21:                                               ; preds = %17, %13
  %22 = getelementptr inbounds %struct.nfs_page, ptr %14, i32 0, i32 1
  %23 = load ptr, ptr %22, align 4
  %24 = icmp eq ptr %23, null
  br i1 %24, label %26, label %25

25:                                               ; preds = %21
  tail call fastcc void @nfs_clear_page_commit(ptr noundef nonnull %23)
  br label %26

26:                                               ; preds = %25, %21
  br i1 %11, label %27, label %49

27:                                               ; preds = %26
  %28 = load ptr, ptr %22, align 4
  %29 = icmp eq ptr %28, null
  br i1 %29, label %71, label %30

30:                                               ; preds = %27
  %31 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_nfs_commit_error, i32 0, i32 1), align 4
  %32 = icmp sgt i32 %31, 0
  br i1 %32, label %33, label %47

33:                                               ; preds = %30
  %34 = tail call ptr @llvm.thread.pointer() #13
  %35 = getelementptr inbounds %struct.thread_info, ptr %34, i32 0, i32 2
  %36 = load i32, ptr %35, align 8
  %37 = lshr i32 %36, 5
  %38 = getelementptr i32, ptr @__cpu_online_mask, i32 %37
  %39 = load volatile i32, ptr %38, align 4
  %40 = and i32 %36, 31
  %41 = shl nuw i32 1, %40
  %42 = and i32 %41, %39
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %47, label %44

44:                                               ; preds = %33
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !64
  %45 = tail call i32 @__traceiter_nfs_commit_error(ptr noundef null, ptr noundef %14, i32 noundef %6) #13
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !65
  %46 = load ptr, ptr %22, align 4
  br label %47

47:                                               ; preds = %44, %33, %30
  %48 = phi ptr [ %28, %30 ], [ %28, %33 ], [ %46, %44 ]
  tail call fastcc void @nfs_mapping_set_error(ptr noundef %48, i32 noundef %6)
  tail call fastcc void @nfs_inode_remove_request(ptr noundef %14)
  br label %71

49:                                               ; preds = %26
  %50 = load i32, ptr %12, align 4
  %51 = icmp sgt i32 %50, 0
  br i1 %51, label %52, label %60

52:                                               ; preds = %49
  %53 = getelementptr inbounds %struct.nfs_page, ptr %14, i32 0, i32 9
  %54 = tail call i32 @bcmp(ptr noundef dereferenceable(8) %53, ptr noundef dereferenceable(8) %4, i32 8) #13
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %56, label %60

56:                                               ; preds = %52
  %57 = load ptr, ptr %22, align 4
  %58 = icmp eq ptr %57, null
  br i1 %58, label %71, label %59

59:                                               ; preds = %56
  tail call fastcc void @nfs_inode_remove_request(ptr noundef %14)
  br label %71

60:                                               ; preds = %52, %49
  %61 = load ptr, ptr %22, align 4
  %62 = icmp eq ptr %61, null
  br i1 %62, label %65, label %63

63:                                               ; preds = %60
  %64 = tail call i32 @__set_page_dirty_nobuffers(ptr noundef nonnull %61) #13
  br label %65

65:                                               ; preds = %63, %60
  %66 = getelementptr inbounds %struct.nfs_page, ptr %14, i32 0, i32 2
  %67 = load ptr, ptr %66, align 4
  %68 = getelementptr inbounds %struct.nfs_lock_context, ptr %67, i32 0, i32 2
  %69 = load ptr, ptr %68, align 4
  %70 = getelementptr inbounds %struct.nfs_open_context, ptr %69, i32 0, i32 7
  tail call void @_set_bit(i32 noundef 1, ptr noundef %70) #13
  br label %71

71:                                               ; preds = %65, %59, %56, %47, %27
  tail call void @nfs_unlock_and_release_request(ptr noundef %14) #13
  %72 = tail call i32 @__cond_resched() #13
  %73 = load volatile ptr, ptr %7, align 4
  %74 = icmp eq ptr %73, %7
  br i1 %74, label %75, label %13

75:                                               ; preds = %71, %1
  %76 = getelementptr inbounds %struct.nfs_commit_data, ptr %0, i32 0, i32 1
  %77 = load ptr, ptr %76, align 8
  %78 = getelementptr inbounds %struct.inode, ptr %77, i32 0, i32 8
  %79 = load ptr, ptr %78, align 4
  %80 = getelementptr inbounds %struct.super_block, ptr %79, i32 0, i32 27
  %81 = load ptr, ptr %80, align 4
  %82 = getelementptr inbounds %struct.nfs_server, ptr %81, i32 0, i32 7
  %83 = load volatile i32, ptr %82, align 4
  %84 = load i32, ptr @nfs_congestion_kb, align 4
  %85 = ashr i32 %84, 2
  %86 = ashr i32 %84, 4
  %87 = sub nsw i32 %85, %86
  %88 = icmp slt i32 %83, %87
  br i1 %88, label %89, label %92

89:                                               ; preds = %75
  %90 = tail call ptr @inode_to_bdi(ptr noundef %77) #13
  tail call void @clear_bdi_congested(ptr noundef %90, i32 noundef 0) #13
  %91 = load ptr, ptr %76, align 8
  br label %92

92:                                               ; preds = %89, %75
  %93 = phi ptr [ %91, %89 ], [ %77, %75 ]
  %94 = getelementptr inbounds %struct.nfs_commit_data, ptr %0, i32 0, i32 7
  %95 = load ptr, ptr %94, align 4
  %96 = icmp eq ptr %95, null
  br i1 %96, label %100, label %97

97:                                               ; preds = %92
  call void @nfs_init_cinfo_from_dreq(ptr noundef nonnull %2, ptr noundef nonnull %95) #13
  %98 = getelementptr inbounds %struct.nfs_commit_info, ptr %2, i32 0, i32 1
  %99 = load ptr, ptr %98, align 4
  br label %121

100:                                              ; preds = %92
  store ptr %93, ptr %2, align 4
  %101 = getelementptr i8, ptr %93, i32 -108
  %102 = getelementptr inbounds %struct.nfs_commit_info, ptr %2, i32 0, i32 1
  store ptr %101, ptr %102, align 4
  %103 = getelementptr inbounds %struct.inode, ptr %93, i32 0, i32 8
  %104 = load ptr, ptr %103, align 4
  %105 = getelementptr inbounds %struct.super_block, ptr %104, i32 0, i32 27
  %106 = load ptr, ptr %105, align 4
  %107 = getelementptr inbounds %struct.nfs_server, ptr %106, i32 0, i32 44
  %108 = load ptr, ptr %107, align 4
  %109 = icmp eq ptr %108, null
  br i1 %109, label %116, label %110

110:                                              ; preds = %100
  %111 = getelementptr inbounds %struct.pnfs_layoutdriver_type, ptr %108, i32 0, i32 17
  %112 = load ptr, ptr %111, align 4
  %113 = icmp eq ptr %112, null
  br i1 %113, label %116, label %114

114:                                              ; preds = %110
  %115 = tail call ptr %112(ptr noundef %93) #13
  br label %116

116:                                              ; preds = %114, %110, %100
  %117 = phi ptr [ %115, %114 ], [ null, %110 ], [ null, %100 ]
  %118 = getelementptr inbounds %struct.nfs_commit_info, ptr %2, i32 0, i32 2
  store ptr %117, ptr %118, align 4
  %119 = getelementptr inbounds %struct.nfs_commit_info, ptr %2, i32 0, i32 3
  store ptr null, ptr %119, align 4
  %120 = getelementptr inbounds %struct.nfs_commit_info, ptr %2, i32 0, i32 4
  store ptr @nfs_commit_completion_ops, ptr %120, align 4
  br label %121

121:                                              ; preds = %116, %97
  %122 = phi ptr [ %99, %97 ], [ %101, %116 ]
  call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !50
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %122) #13, !srcloc !9
  %123 = call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %122, ptr %122, i32 1, ptr elementtype(i32) %122) #13, !srcloc !51
  %124 = extractvalue { i32, i32 } %123, 0
  call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !52
  %125 = icmp eq i32 %124, 0
  br i1 %125, label %126, label %127

126:                                              ; preds = %121
  call void @wake_up_var(ptr noundef %122) #13
  br label %127

127:                                              ; preds = %126, %121
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %2) #13
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @nfs_commit_resched_write(ptr nocapture noundef readnone %0, ptr nocapture noundef readonly %1) #0 {
  %3 = getelementptr inbounds %struct.nfs_page, ptr %1, i32 0, i32 1
  %4 = load ptr, ptr %3, align 4
  %5 = tail call i32 @__set_page_dirty_nobuffers(ptr noundef %4) #13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_nfs_commit_error(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__cond_resched() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cred_fscmp(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.thread.pointer() #10

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @swapcache_mapping(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @nfs_create_request(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_nfs_size_grow(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nfs_page_group_lock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @nfs_page_group_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @nfs_zap_mapping(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @nfs_set_cache_invalid(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @nfs_async_write_error(ptr noundef %0, i32 noundef %1) #0 {
  %3 = load volatile ptr, ptr %0, align 4
  %4 = icmp eq ptr %3, %0
  br i1 %4, label %33, label %5

5:                                                ; preds = %30, %2
  %6 = phi ptr [ %31, %30 ], [ %3, %2 ]
  %7 = load volatile ptr, ptr %6, align 4
  %8 = icmp eq ptr %7, %6
  br i1 %8, label %13, label %9

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.list_head, ptr %6, i32 0, i32 1
  %11 = load ptr, ptr %10, align 4
  %12 = getelementptr inbounds %struct.list_head, ptr %7, i32 0, i32 1
  store ptr %11, ptr %12, align 4
  store volatile ptr %7, ptr %11, align 4
  store volatile ptr %6, ptr %6, align 4
  store ptr %6, ptr %10, align 4
  br label %13

13:                                               ; preds = %9, %5
  switch i32 %1, label %15 [
    i32 -512, label %14
    i32 -4, label %14
    i32 -13, label %14
    i32 -122, label %14
    i32 -27, label %14
    i32 -5, label %14
    i32 -28, label %14
    i32 -30, label %14
    i32 -116, label %14
    i32 -7, label %14
    i32 -12, label %14
    i32 -110, label %14
  ]

14:                                               ; preds = %13, %13, %13, %13, %13, %13, %13, %13, %13, %13, %13, %13
  tail call fastcc void @nfs_write_error(ptr noundef %6, i32 noundef %1)
  br label %30

15:                                               ; preds = %13
  %16 = getelementptr inbounds %struct.nfs_page, ptr %6, i32 0, i32 12
  %17 = load i16, ptr %16, align 4
  %18 = add i16 %17, 1
  store i16 %18, ptr %16, align 4
  %19 = getelementptr inbounds %struct.nfs_page, ptr %6, i32 0, i32 1
  %20 = load ptr, ptr %19, align 4
  %21 = icmp eq ptr %20, null
  br i1 %21, label %24, label %22

22:                                               ; preds = %15
  %23 = tail call i32 @__set_page_dirty_nobuffers(ptr noundef nonnull %20) #13
  br label %24

24:                                               ; preds = %22, %15
  %25 = getelementptr inbounds %struct.nfs_page, ptr %6, i32 0, i32 2
  %26 = load ptr, ptr %25, align 4
  %27 = getelementptr inbounds %struct.nfs_lock_context, ptr %26, i32 0, i32 2
  %28 = load ptr, ptr %27, align 4
  %29 = getelementptr inbounds %struct.nfs_open_context, ptr %28, i32 0, i32 7
  tail call void @_set_bit(i32 noundef 1, ptr noundef %29) #13
  tail call fastcc void @nfs_end_page_writeback(ptr noundef %6) #13
  tail call void @nfs_release_request(ptr noundef %6) #13
  br label %30

30:                                               ; preds = %24, %14
  %31 = load volatile ptr, ptr %0, align 4
  %32 = icmp eq ptr %31, %0
  br i1 %32, label %33, label %5

33:                                               ; preds = %30, %2
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @nfs_async_write_init(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.nfs_pgio_header, ptr %0, i32 0, i32 12
  %3 = load ptr, ptr %2, align 8
  %4 = icmp eq ptr %3, null
  br i1 %4, label %16, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.nfs_io_completion, ptr %3, i32 0, i32 2
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %6) #13, !srcloc !9
  %7 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %6, ptr %6, i32 1, ptr elementtype(i32) %6) #13, !srcloc !22
  %8 = extractvalue { i32, i32, i32 } %7, 0
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %14, label %10, !prof !11

10:                                               ; preds = %5
  %11 = add i32 %8, 1
  %12 = or i32 %11, %8
  %13 = icmp sgt i32 %12, -1
  br i1 %13, label %16, label %14, !prof !13

14:                                               ; preds = %10, %5
  %15 = phi i32 [ 2, %5 ], [ 1, %10 ]
  tail call void @refcount_warn_saturate(ptr noundef %6, i32 noundef %15) #13
  br label %16

16:                                               ; preds = %14, %10, %1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @nfs_write_completion(ptr noundef %0) #0 {
  %2 = alloca %struct.nfs_commit_info, align 4
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %2) #13
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(20) %2, i8 0, i32 20, i1 false), !annotation !12
  %3 = getelementptr inbounds %struct.nfs_pgio_header, ptr %0, i32 0, i32 17
  %4 = load volatile i32, ptr %3, align 4
  %5 = and i32 %4, 4
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %107

7:                                                ; preds = %1
  %8 = load ptr, ptr %0, align 8
  store ptr %8, ptr %2, align 4
  %9 = getelementptr i8, ptr %8, i32 -108
  %10 = getelementptr inbounds %struct.nfs_commit_info, ptr %2, i32 0, i32 1
  store ptr %9, ptr %10, align 4
  %11 = getelementptr inbounds %struct.inode, ptr %8, i32 0, i32 8
  %12 = load ptr, ptr %11, align 4
  %13 = getelementptr inbounds %struct.super_block, ptr %12, i32 0, i32 27
  %14 = load ptr, ptr %13, align 4
  %15 = getelementptr inbounds %struct.nfs_server, ptr %14, i32 0, i32 44
  %16 = load ptr, ptr %15, align 4
  %17 = icmp eq ptr %16, null
  br i1 %17, label %24, label %18

18:                                               ; preds = %7
  %19 = getelementptr inbounds %struct.pnfs_layoutdriver_type, ptr %16, i32 0, i32 17
  %20 = load ptr, ptr %19, align 4
  %21 = icmp eq ptr %20, null
  br i1 %21, label %24, label %22

22:                                               ; preds = %18
  %23 = tail call ptr %20(ptr noundef %8) #13
  br label %24

24:                                               ; preds = %22, %18, %7
  %25 = phi ptr [ %23, %22 ], [ null, %18 ], [ null, %7 ]
  %26 = getelementptr inbounds %struct.nfs_commit_info, ptr %2, i32 0, i32 2
  store ptr %25, ptr %26, align 4
  %27 = getelementptr inbounds %struct.nfs_commit_info, ptr %2, i32 0, i32 3
  store ptr null, ptr %27, align 4
  %28 = getelementptr inbounds %struct.nfs_commit_info, ptr %2, i32 0, i32 4
  store ptr @nfs_commit_completion_ops, ptr %28, align 4
  %29 = getelementptr inbounds %struct.nfs_pgio_header, ptr %0, i32 0, i32 2
  %30 = load volatile ptr, ptr %29, align 4
  %31 = icmp eq ptr %30, %29
  br i1 %31, label %107, label %32

32:                                               ; preds = %24
  %33 = getelementptr inbounds %struct.nfs_pgio_header, ptr %0, i32 0, i32 16
  %34 = getelementptr inbounds %struct.nfs_pgio_header, ptr %0, i32 0, i32 15
  %35 = getelementptr inbounds %struct.nfs_pgio_header, ptr %0, i32 0, i32 4, i32 1
  %36 = getelementptr inbounds %struct.nfs_pgio_header, ptr %0, i32 0, i32 6
  %37 = getelementptr inbounds %struct.nfs_pgio_header, ptr %0, i32 0, i32 4
  %38 = getelementptr inbounds %struct.nfs_pgio_header, ptr %0, i32 0, i32 28
  br label %39

39:                                               ; preds = %104, %32
  %40 = phi ptr [ %30, %32 ], [ %105, %104 ]
  %41 = phi i32 [ 0, %32 ], [ %44, %104 ]
  %42 = getelementptr inbounds %struct.nfs_page, ptr %40, i32 0, i32 6
  %43 = load i32, ptr %42, align 4
  %44 = add i32 %43, %41
  %45 = load volatile ptr, ptr %40, align 4
  %46 = icmp eq ptr %45, %40
  br i1 %46, label %51, label %47

47:                                               ; preds = %39
  %48 = getelementptr inbounds %struct.list_head, ptr %40, i32 0, i32 1
  %49 = load ptr, ptr %48, align 4
  %50 = getelementptr inbounds %struct.list_head, ptr %45, i32 0, i32 1
  store ptr %49, ptr %50, align 4
  store volatile ptr %45, ptr %49, align 4
  store volatile ptr %40, ptr %40, align 4
  store ptr %40, ptr %48, align 4
  br label %51

51:                                               ; preds = %47, %39
  %52 = load volatile i32, ptr %3, align 4
  %53 = and i32 %52, 1
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %80, label %55

55:                                               ; preds = %51
  %56 = load i32, ptr %33, align 8
  %57 = icmp ult i32 %56, %44
  br i1 %57, label %58, label %80

58:                                               ; preds = %55
  %59 = load i32, ptr %34, align 4
  %60 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_nfs_comp_error, i32 0, i32 1), align 4
  %61 = icmp sgt i32 %60, 0
  br i1 %61, label %62, label %76

62:                                               ; preds = %58
  %63 = tail call ptr @llvm.thread.pointer() #13
  %64 = getelementptr inbounds %struct.thread_info, ptr %63, i32 0, i32 2
  %65 = load i32, ptr %64, align 8
  %66 = lshr i32 %65, 5
  %67 = getelementptr i32, ptr @__cpu_online_mask, i32 %66
  %68 = load volatile i32, ptr %67, align 4
  %69 = and i32 %65, 31
  %70 = shl nuw i32 1, %69
  %71 = and i32 %70, %68
  %72 = icmp eq i32 %71, 0
  br i1 %72, label %76, label %73

73:                                               ; preds = %62
  call void asm sideeffect "", "~{memory}"() #13, !srcloc !66
  %74 = call i32 @__traceiter_nfs_comp_error(ptr noundef null, ptr noundef %40, i32 noundef %59) #13
  call void asm sideeffect "", "~{memory}"() #13, !srcloc !67
  %75 = load i32, ptr %34, align 4
  br label %76

76:                                               ; preds = %73, %62, %58
  %77 = phi i32 [ %59, %58 ], [ %59, %62 ], [ %75, %73 ]
  %78 = getelementptr inbounds %struct.nfs_page, ptr %40, i32 0, i32 1
  %79 = load ptr, ptr %78, align 4
  call fastcc void @nfs_mapping_set_error(ptr noundef %79, i32 noundef %77)
  br label %103

80:                                               ; preds = %55, %51
  %81 = load i32, ptr %35, align 4
  switch i32 %81, label %85 [
    i32 1, label %82
    i32 2, label %103
  ]

82:                                               ; preds = %80
  %83 = load ptr, ptr %36, align 4
  %84 = icmp eq ptr %83, null
  br i1 %84, label %85, label %103

85:                                               ; preds = %82, %80
  %86 = getelementptr inbounds %struct.nfs_page, ptr %40, i32 0, i32 12
  store i16 0, ptr %86, align 4
  %87 = getelementptr inbounds %struct.nfs_page, ptr %40, i32 0, i32 9
  %88 = load i64, ptr %37, align 4
  store i64 %88, ptr %87, align 4
  %89 = load ptr, ptr %36, align 4
  %90 = load i32, ptr %38, align 8
  %91 = icmp eq ptr %89, null
  br i1 %91, label %102, label %92

92:                                               ; preds = %85
  %93 = load ptr, ptr %26, align 4
  %94 = getelementptr inbounds %struct.pnfs_ds_commit_info, ptr %93, i32 0, i32 3
  %95 = load ptr, ptr %94, align 4
  %96 = icmp eq ptr %95, null
  br i1 %96, label %102, label %97

97:                                               ; preds = %92
  %98 = getelementptr inbounds %struct.pnfs_commit_ops, ptr %95, i32 0, i32 3
  %99 = load ptr, ptr %98, align 4
  %100 = icmp eq ptr %99, null
  br i1 %100, label %102, label %101

101:                                              ; preds = %97
  call void %99(ptr noundef %40, ptr noundef nonnull %89, ptr noundef nonnull %2, i32 noundef %90) #13
  br label %104

102:                                              ; preds = %97, %92, %85
  call void @nfs_request_add_commit_list(ptr noundef %40, ptr noundef nonnull %2) #13
  br label %104

103:                                              ; preds = %82, %80, %76
  call fastcc void @nfs_inode_remove_request(ptr noundef %40)
  br label %104

104:                                              ; preds = %103, %102, %101
  call fastcc void @nfs_end_page_writeback(ptr noundef %40)
  call void @nfs_release_request(ptr noundef %40) #13
  %105 = load volatile ptr, ptr %29, align 4
  %106 = icmp eq ptr %105, %29
  br i1 %106, label %107, label %39

107:                                              ; preds = %104, %24, %1
  %108 = getelementptr inbounds %struct.nfs_pgio_header, ptr %0, i32 0, i32 12
  %109 = load ptr, ptr %108, align 8
  %110 = icmp eq ptr %109, null
  br i1 %110, label %123, label %111

111:                                              ; preds = %107
  %112 = getelementptr inbounds %struct.nfs_io_completion, ptr %109, i32 0, i32 2
  call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !17
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %112) #13, !srcloc !9
  %113 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %112, ptr %112, i32 1, ptr elementtype(i32) %112) #13, !srcloc !18
  %114 = extractvalue { i32, i32, i32 } %113, 0
  %115 = icmp eq i32 %114, 1
  br i1 %115, label %119, label %116

116:                                              ; preds = %111
  %117 = icmp sgt i32 %114, 0
  br i1 %117, label %123, label %118, !prof !13

118:                                              ; preds = %116
  call void @refcount_warn_saturate(ptr noundef %112, i32 noundef 3) #13
  br label %123

119:                                              ; preds = %111
  call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !19
  %120 = load ptr, ptr %109, align 4
  %121 = getelementptr %struct.nfs_io_completion, ptr %109, i32 0, i32 1
  %122 = load ptr, ptr %121, align 4
  call void %120(ptr noundef %122) #13
  call void @kfree(ptr noundef nonnull %109) #13
  br label %123

123:                                              ; preds = %119, %118, %116, %107
  %124 = getelementptr inbounds %struct.nfs_pgio_header, ptr %0, i32 0, i32 9
  %125 = load ptr, ptr %124, align 4
  call void %125(ptr noundef %0) #13
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %2) #13
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @nfs_async_write_reschedule_io(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.nfs_pgio_header, ptr %0, i32 0, i32 2
  %3 = load volatile ptr, ptr %2, align 4
  %4 = icmp eq ptr %3, %2
  br i1 %4, label %30, label %5

5:                                                ; preds = %22, %1
  %6 = phi ptr [ %28, %22 ], [ %3, %1 ]
  %7 = load volatile ptr, ptr %6, align 4
  %8 = icmp eq ptr %7, %6
  br i1 %8, label %13, label %9

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.list_head, ptr %6, i32 0, i32 1
  %11 = load ptr, ptr %10, align 4
  %12 = getelementptr inbounds %struct.list_head, ptr %7, i32 0, i32 1
  store ptr %11, ptr %12, align 4
  store volatile ptr %7, ptr %11, align 4
  store volatile ptr %6, ptr %6, align 4
  store ptr %6, ptr %10, align 4
  br label %13

13:                                               ; preds = %9, %5
  %14 = getelementptr inbounds %struct.nfs_page, ptr %6, i32 0, i32 12
  %15 = load i16, ptr %14, align 4
  %16 = add i16 %15, 1
  store i16 %16, ptr %14, align 4
  %17 = getelementptr inbounds %struct.nfs_page, ptr %6, i32 0, i32 1
  %18 = load ptr, ptr %17, align 4
  %19 = icmp eq ptr %18, null
  br i1 %19, label %22, label %20

20:                                               ; preds = %13
  %21 = tail call i32 @__set_page_dirty_nobuffers(ptr noundef nonnull %18) #13
  br label %22

22:                                               ; preds = %20, %13
  %23 = getelementptr inbounds %struct.nfs_page, ptr %6, i32 0, i32 2
  %24 = load ptr, ptr %23, align 4
  %25 = getelementptr inbounds %struct.nfs_lock_context, ptr %24, i32 0, i32 2
  %26 = load ptr, ptr %25, align 4
  %27 = getelementptr inbounds %struct.nfs_open_context, ptr %26, i32 0, i32 7
  tail call void @_set_bit(i32 noundef 1, ptr noundef %27) #13
  tail call fastcc void @nfs_end_page_writeback(ptr noundef %6) #13
  tail call void @nfs_release_request(ptr noundef %6) #13
  %28 = load volatile ptr, ptr %2, align 4
  %29 = icmp eq ptr %28, %2
  br i1 %29, label %30, label %5

30:                                               ; preds = %22, %1
  %31 = load ptr, ptr %0, align 8
  %32 = getelementptr inbounds %struct.inode, ptr %31, i32 0, i32 9
  %33 = load ptr, ptr %32, align 8
  %34 = getelementptr inbounds %struct.nfs_pgio_header, ptr %0, i32 0, i32 20, i32 5
  %35 = load i64, ptr %34, align 8
  %36 = getelementptr inbounds %struct.nfs_pgio_header, ptr %0, i32 0, i32 20, i32 6
  %37 = load i32, ptr %36, align 8
  %38 = zext i32 %37 to i64
  %39 = add i64 %35, -1
  %40 = add i64 %39, %38
  %41 = tail call i32 @filemap_fdatawrite_range(ptr noundef %33, i64 noundef %35, i64 noundef %40) #13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_nfs_comp_error(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @filemap_fdatawrite_range(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @nfs_fattr_set_barrier(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_nfs_initiate_commit(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__rpc_wait_for_completion_task(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dec_node_page_state(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @nfs_commit_done(ptr noundef %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.nfs_commit_data, ptr %1, i32 0, i32 1
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.inode, ptr %4, i32 0, i32 8
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.super_block, ptr %6, i32 0, i32 27
  %8 = load ptr, ptr %7, align 4
  %9 = load ptr, ptr %8, align 8
  %10 = getelementptr inbounds %struct.nfs_client, ptr %9, i32 0, i32 12
  %11 = load ptr, ptr %10, align 4
  %12 = getelementptr inbounds %struct.nfs_rpc_ops, ptr %11, i32 0, i32 41
  %13 = load ptr, ptr %12, align 4
  %14 = tail call i32 %13(ptr noundef %0, ptr noundef %1) #13
  %15 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_nfs_commit_done, i32 0, i32 1), align 4
  %16 = icmp sgt i32 %15, 0
  br i1 %16, label %17, label %30

17:                                               ; preds = %2
  %18 = tail call ptr @llvm.thread.pointer() #13
  %19 = getelementptr inbounds %struct.thread_info, ptr %18, i32 0, i32 2
  %20 = load i32, ptr %19, align 8
  %21 = lshr i32 %20, 5
  %22 = getelementptr i32, ptr @__cpu_online_mask, i32 %21
  %23 = load volatile i32, ptr %22, align 4
  %24 = and i32 %20, 31
  %25 = shl nuw i32 1, %24
  %26 = and i32 %25, %23
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %30, label %28

28:                                               ; preds = %17
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !68
  %29 = tail call i32 @__traceiter_nfs_commit_done(ptr noundef null, ptr noundef %0, ptr noundef %1) #13
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !69
  br label %30

30:                                               ; preds = %28, %17, %2
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @nfs_commit_release(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.nfs_commit_data, ptr %0, i32 0, i32 16
  %3 = load ptr, ptr %2, align 4
  %4 = load ptr, ptr %3, align 4
  tail call void %4(ptr noundef %0) #13
  %5 = getelementptr inbounds %struct.nfs_commit_data, ptr %0, i32 0, i32 10
  %6 = load ptr, ptr %5, align 8
  tail call void @put_nfs_open_context(ptr noundef %6) #13
  %7 = load ptr, ptr @nfs_commit_mempool, align 4
  tail call void @mempool_free(ptr noundef %0, ptr noundef %7) #13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_nfs_commit_done(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__var_waitqueue(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_wait_var_entry(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @prepare_to_wait_event(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @schedule() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @finish_wait(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_nfs_writeback_inode_enter(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_nfs_writeback_inode_exit(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nfs_page_group_lock_subrequests(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @nfs_page_group_lock_head(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_nfs_writeback_page_enter(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_nfs_writeback_page_exit(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @folio_wait_private_2(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @mempool_create(i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @mempool_alloc_slab(i32 noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mempool_free_slab(ptr noundef, ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal noalias ptr @nfs_writehdr_alloc() #0 {
  %1 = load ptr, ptr @nfs_wdata_mempool, align 4
  %2 = tail call noalias ptr @mempool_alloc(ptr noundef %1, i32 noundef 3264) #13
  tail call void @llvm.memset.p0.i32(ptr noundef align 8 dereferenceable(632) %2, i8 0, i32 632, i1 false)
  %3 = getelementptr inbounds %struct.nfs_pgio_header, ptr %2, i32 0, i32 5
  store i32 2, ptr %3, align 8
  ret ptr %2
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @nfs_writehdr_free(ptr noundef %0) #0 {
  %2 = load ptr, ptr @nfs_wdata_mempool, align 4
  tail call void @mempool_free(ptr noundef %0, ptr noundef %2) #13
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @nfs_writeback_done(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = getelementptr inbounds %struct.inode, ptr %2, i32 0, i32 8
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.super_block, ptr %5, i32 0, i32 27
  %7 = load ptr, ptr %6, align 4
  %8 = load ptr, ptr %7, align 8
  %9 = getelementptr inbounds %struct.nfs_client, ptr %8, i32 0, i32 12
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr inbounds %struct.nfs_rpc_ops, ptr %10, i32 0, i32 38
  %12 = load ptr, ptr %11, align 4
  %13 = tail call i32 %12(ptr noundef %0, ptr noundef %1) #13
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %91

15:                                               ; preds = %3
  %16 = getelementptr inbounds %struct.nfs_pgio_header, ptr %1, i32 0, i32 21, i32 2
  %17 = load i64, ptr %16, align 8
  %18 = load ptr, ptr %4, align 4
  %19 = getelementptr inbounds %struct.super_block, ptr %18, i32 0, i32 27
  %20 = load ptr, ptr %19, align 4
  %21 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #13, !srcloc !14
  %22 = shl i64 %17, 32
  %23 = ashr exact i64 %22, 32
  %24 = getelementptr inbounds %struct.nfs_server, ptr %20, i32 0, i32 6
  %25 = load ptr, ptr %24, align 8
  %26 = getelementptr [8 x i64], ptr %25, i32 0, i32 5
  %27 = ptrtoint ptr %26 to i32
  %28 = tail call i32 @llvm.read_register.i32(metadata !0) #13
  %29 = inttoptr i32 %28 to ptr
  %30 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %29) #7, !srcloc !15
  %31 = add i32 %30, %27
  %32 = inttoptr i32 %31 to ptr
  %33 = load i64, ptr %32, align 8
  %34 = add i64 %33, %23
  store i64 %34, ptr %32, align 8
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %21) #13, !srcloc !16
  %35 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_nfs_writeback_done, i32 0, i32 1), align 4
  %36 = icmp sgt i32 %35, 0
  br i1 %36, label %37, label %50

37:                                               ; preds = %15
  %38 = tail call ptr @llvm.thread.pointer() #13
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
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !70
  %49 = tail call i32 @__traceiter_nfs_writeback_done(ptr noundef null, ptr noundef %0, ptr noundef %1) #13
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !71
  br label %50

50:                                               ; preds = %48, %37, %15
  %51 = getelementptr inbounds %struct.nfs_pgio_header, ptr %1, i32 0, i32 21, i32 4
  %52 = load ptr, ptr %51, align 4
  %53 = getelementptr inbounds %struct.nfs_writeverf, ptr %52, i32 0, i32 1
  %54 = load i32, ptr %53, align 4
  %55 = getelementptr inbounds %struct.nfs_pgio_header, ptr %1, i32 0, i32 20, i32 9, i32 0, i32 2
  %56 = load i32, ptr %55, align 4
  %57 = icmp slt i32 %54, %56
  br i1 %57, label %58, label %70

58:                                               ; preds = %50
  %59 = getelementptr inbounds %struct.rpc_task, ptr %0, i32 0, i32 1
  %60 = load i32, ptr %59, align 4
  %61 = icmp sgt i32 %60, -1
  br i1 %61, label %62, label %70

62:                                               ; preds = %58
  %63 = load i32, ptr @nfs_writeback_done.complain, align 4
  %64 = load volatile i32, ptr @jiffies, align 64
  %65 = sub i32 %63, %64
  %66 = icmp slt i32 %65, 0
  br i1 %66, label %67, label %70

67:                                               ; preds = %62
  %68 = load volatile i32, ptr @jiffies, align 64
  %69 = add i32 %68, 30000
  store i32 %69, ptr @nfs_writeback_done.complain, align 4
  br label %70

70:                                               ; preds = %67, %62, %58, %50
  %71 = load i16, ptr %2, align 8
  %72 = zext i16 %71 to i32
  %73 = and i32 %72, 2048
  %74 = icmp eq i32 %73, 0
  br i1 %74, label %76, label %75, !prof !13

75:                                               ; preds = %70
  br label %76

76:                                               ; preds = %75, %70
  %77 = phi i32 [ 2048, %75 ], [ 0, %70 ]
  %78 = and i32 %72, 1032
  %79 = icmp eq i32 %78, 1032
  br i1 %79, label %80, label %81, !prof !11

80:                                               ; preds = %76
  br label %81

81:                                               ; preds = %80, %76
  %82 = phi i32 [ 1, %80 ], [ %77, %76 ]
  %83 = and i32 %72, 61440
  %84 = icmp ne i32 %83, 32768
  %85 = icmp eq i32 %82, 0
  %86 = select i1 %85, i1 true, i1 %84
  br i1 %86, label %91, label %87

87:                                               ; preds = %81
  %88 = getelementptr inbounds %struct.inode, ptr %2, i32 0, i32 17
  tail call void @_raw_spin_lock(ptr noundef %88) #13
  tail call void @nfs_set_cache_invalid(ptr noundef %2, i32 noundef 131072) #13
  tail call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !24
  %89 = load i16, ptr %88, align 4
  %90 = add i16 %89, 1
  store i16 %90, ptr %88, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #13, !srcloc !25
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #13, !srcloc !26
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !27
  br label %91

91:                                               ; preds = %87, %81, %3
  ret i32 %13
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @nfs_writeback_result(ptr noundef %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.nfs_pgio_header, ptr %1, i32 0, i32 21, i32 2
  %4 = load i64, ptr %3, align 8
  %5 = getelementptr inbounds %struct.nfs_pgio_header, ptr %1, i32 0, i32 20, i32 6
  %6 = load i32, ptr %5, align 8
  %7 = zext i32 %6 to i64
  %8 = icmp ult i64 %4, %7
  br i1 %8, label %9, label %72

9:                                                ; preds = %2
  %10 = load ptr, ptr %1, align 8
  %11 = getelementptr inbounds %struct.inode, ptr %10, i32 0, i32 8
  %12 = load ptr, ptr %11, align 4
  %13 = getelementptr inbounds %struct.super_block, ptr %12, i32 0, i32 27
  %14 = load ptr, ptr %13, align 4
  %15 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #13, !srcloc !14
  %16 = getelementptr inbounds %struct.nfs_server, ptr %14, i32 0, i32 6
  %17 = load ptr, ptr %16, align 8
  %18 = getelementptr %struct.nfs_iostats, ptr %17, i32 0, i32 1, i32 23
  %19 = ptrtoint ptr %18 to i32
  %20 = tail call i32 @llvm.read_register.i32(metadata !0) #13
  %21 = inttoptr i32 %20 to ptr
  %22 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %21) #7, !srcloc !15
  %23 = add i32 %22, %19
  %24 = inttoptr i32 %23 to ptr
  %25 = load i32, ptr %24, align 4
  %26 = add i32 %25, 1
  store i32 %26, ptr %24, align 4
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %15) #13, !srcloc !16
  %27 = load i64, ptr %3, align 8
  %28 = icmp eq i64 %27, 0
  br i1 %28, label %29, label %43

29:                                               ; preds = %9
  %30 = load i32, ptr @nfs_writeback_result.complain, align 4
  %31 = load volatile i32, ptr @jiffies, align 64
  %32 = sub i32 %30, %31
  %33 = icmp slt i32 %32, 0
  br i1 %33, label %34, label %39

34:                                               ; preds = %29
  %35 = load i32, ptr %5, align 8
  %36 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, i32 noundef %35) #15
  %37 = load volatile i32, ptr @jiffies, align 64
  %38 = add i32 %37, 30000
  store i32 %38, ptr @nfs_writeback_result.complain, align 4
  br label %39

39:                                               ; preds = %34, %29
  %40 = getelementptr inbounds %struct.nfs_pgio_header, ptr %1, i32 0, i32 20, i32 5
  %41 = load i64, ptr %40, align 8
  tail call void @nfs_set_pgio_error(ptr noundef %1, i32 noundef -5, i64 noundef %41) #13
  %42 = getelementptr inbounds %struct.rpc_task, ptr %0, i32 0, i32 1
  store i32 -5, ptr %42, align 4
  br label %72

43:                                               ; preds = %9
  %44 = getelementptr inbounds %struct.rpc_task, ptr %0, i32 0, i32 12
  %45 = load ptr, ptr %44, align 4
  %46 = icmp eq ptr %45, null
  br i1 %46, label %47, label %49

47:                                               ; preds = %43
  %48 = getelementptr inbounds %struct.nfs_pgio_header, ptr %1, i32 0, i32 14
  store i32 -11, ptr %48, align 8
  br label %72

49:                                               ; preds = %43
  %50 = getelementptr inbounds %struct.nfs_pgio_header, ptr %1, i32 0, i32 21, i32 4
  %51 = load ptr, ptr %50, align 4
  %52 = getelementptr inbounds %struct.nfs_writeverf, ptr %51, i32 0, i32 1
  %53 = load i32, ptr %52, align 4
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %68, label %55

55:                                               ; preds = %49
  %56 = getelementptr inbounds %struct.nfs_pgio_header, ptr %1, i32 0, i32 24
  %57 = load i64, ptr %56, align 8
  %58 = add i64 %57, %27
  store i64 %58, ptr %56, align 8
  %59 = getelementptr inbounds %struct.nfs_pgio_header, ptr %1, i32 0, i32 20, i32 5
  %60 = load i64, ptr %59, align 8
  %61 = add i64 %60, %27
  store i64 %61, ptr %59, align 8
  %62 = getelementptr inbounds %struct.nfs_pgio_header, ptr %1, i32 0, i32 20, i32 7
  %63 = load i32, ptr %62, align 4
  %64 = trunc i64 %27 to i32
  %65 = add i32 %63, %64
  store i32 %65, ptr %62, align 4
  %66 = load i32, ptr %5, align 8
  %67 = sub i32 %66, %64
  store i32 %67, ptr %5, align 8
  br label %70

68:                                               ; preds = %49
  %69 = getelementptr inbounds %struct.nfs_pgio_header, ptr %1, i32 0, i32 20, i32 9, i32 0, i32 2
  store i32 2, ptr %69, align 4
  br label %70

70:                                               ; preds = %68, %55
  store i64 0, ptr %3, align 8
  store i32 0, ptr %52, align 4
  %71 = tail call i32 @rpc_restart_call_prepare(ptr noundef %0) #13
  br label %72

72:                                               ; preds = %70, %47, %39, %2
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @nfs_initiate_write(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2, ptr noundef %3, i32 noundef %4) #0 {
  %6 = and i32 %4, 24
  %7 = icmp eq i32 %6, 8
  %8 = icmp eq i32 %6, 16
  %9 = sext i1 %7 to i8
  %10 = select i1 %8, i8 1, i8 %9
  %11 = getelementptr inbounds %struct.rpc_task_setup, ptr %3, i32 0, i32 9
  store i8 %10, ptr %11, align 2
  %12 = getelementptr inbounds %struct.nfs_rpc_ops, ptr %2, i32 0, i32 37
  %13 = load ptr, ptr %12, align 4
  %14 = getelementptr inbounds %struct.rpc_task_setup, ptr %3, i32 0, i32 1
  tail call void %13(ptr noundef %0, ptr noundef %1, ptr noundef %14) #13
  %15 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_nfs_initiate_write, i32 0, i32 1), align 4
  %16 = icmp sgt i32 %15, 0
  br i1 %16, label %17, label %30

17:                                               ; preds = %5
  %18 = tail call ptr @llvm.thread.pointer() #13
  %19 = getelementptr inbounds %struct.thread_info, ptr %18, i32 0, i32 2
  %20 = load i32, ptr %19, align 8
  %21 = lshr i32 %20, 5
  %22 = getelementptr i32, ptr @__cpu_online_mask, i32 %21
  %23 = load volatile i32, ptr %22, align 4
  %24 = and i32 %20, 31
  %25 = shl nuw i32 1, %24
  %26 = and i32 %25, %23
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %30, label %28

28:                                               ; preds = %17
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !72
  %29 = tail call i32 @__traceiter_nfs_initiate_write(ptr noundef null, ptr noundef %0) #13
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !73
  br label %30

30:                                               ; preds = %28, %17, %5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_nfs_writeback_done(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #11

; Function Attrs: null_pointer_is_valid
declare dso_local void @nfs_set_pgio_error(ptr noundef, i32 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rpc_restart_call_prepare(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_nfs_initiate_write(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #9

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #9

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.umin.i64(i64, i64) #9

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #12

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.usub.sat.i32(i32, i32) #9

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #9

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.smax.i64(i64, i64) #9

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #3

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { argmemonly nofree nounwind willreturn writeonly }
attributes #4 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { mustprogress nofree norecurse nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nounwind readonly }
attributes #8 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #10 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #11 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #12 = { argmemonly nofree nounwind readonly willreturn }
attributes #13 = { nounwind }
attributes #14 = { nounwind allocsize(2) }
attributes #15 = { cold nounwind }

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
!9 = !{i64 812591, i64 2148302562, i64 2148302588, i64 2148302635, i64 2148302657, i64 2148302685, i64 2148302705}
!10 = !{i64 2148316334, i64 2148316360, i64 2148316389, i64 2148316423, i64 2148316454, i64 2148316477}
!11 = !{!"branch_weights", i32 1, i32 2000}
!12 = !{!"auto-init"}
!13 = !{!"branch_weights", i32 2000, i32 1}
!14 = !{i64 718269, i64 718330}
!15 = !{i64 736969}
!16 = !{i64 721286}
!17 = !{i64 2148415657}
!18 = !{i64 2148317792, i64 2148317824, i64 2148317853, i64 2148317887, i64 2148317918, i64 2148317941}
!19 = !{i64 2149330547}
!20 = !{i64 2148313977, i64 2148314003, i64 2148314032, i64 2148314066, i64 2148314097, i64 2148314120}
!21 = !{i32 0, i32 33}
!22 = !{i64 2148315435, i64 2148315467, i64 2148315496, i64 2148315530, i64 2148315561, i64 2148315584}
!23 = !{i64 2148091613}
!24 = !{i64 2148981195}
!25 = !{i64 2148977019}
!26 = !{i64 2148977094, i64 2148977121, i64 2148977168, i64 2148977190, i64 2148977218, i64 2148977238}
!27 = !{i64 2149004198}
!28 = !{i64 2156785699}
!29 = !{i64 2156785869}
!30 = !{i64 2156802837}
!31 = !{i64 2156803019}
!32 = !{i64 2149379967}
!33 = !{i64 2149380184}
!34 = !{i64 2157859013}
!35 = !{i64 821241, i64 821258, i64 821282, i64 821308, i64 821326}
!36 = !{i64 2157859282}
!37 = !{i64 2151914846}
!38 = !{i64 2151914688}
!39 = !{i64 2151914990}
!40 = !{i64 2149224000}
!41 = !{i64 2157859665}
!42 = !{i64 2149812298}
!43 = !{i64 2156998605}
!44 = !{i64 2156998773}
!45 = !{i64 2151920689}
!46 = !{i64 2149224299}
!47 = !{i64 2149224600}
!48 = !{i64 2151928247}
!49 = !{i64 2149813319}
!50 = !{i64 2148414656}
!51 = !{i64 2148317018, i64 2148317050, i64 2148317079, i64 2148317113, i64 2148317144, i64 2148317167}
!52 = !{i64 2148414859}
!53 = !{i64 2157725605}
!54 = !{i64 2157725763}
!55 = !{i64 2156819759}
!56 = !{i64 2156819931}
!57 = !{i64 2156841051}
!58 = !{i64 2156841235}
!59 = !{i64 2148411823}
!60 = !{i64 2148314661, i64 2148314693, i64 2148314722, i64 2148314756, i64 2148314787, i64 2148314810}
!61 = !{i64 2148412026}
!62 = !{i64 2157676550}
!63 = !{i64 2157676712}
!64 = !{i64 2157709322}
!65 = !{i64 2157709486}
!66 = !{i64 2157692924}
!67 = !{i64 2157693084}
!68 = !{i64 2157746395}
!69 = !{i64 2157746557}
!70 = !{i64 2157655878}
!71 = !{i64 2157656044}
!72 = !{i64 2157639122}
!73 = !{i64 2157639276}
