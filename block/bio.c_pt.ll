; ModuleID = '/llk/IR/block/bio.c_pt.bc'
source_filename = "../block/bio.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_fs_bio_set:\09\09\09\09\09"
module asm "\09.asciz \09\22fs_bio_set\22\09\09\09\09\09"
module asm "__kstrtabns_fs_bio_set:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_bio_uninit:\09\09\09\09\09"
module asm "\09.asciz \09\22bio_uninit\22\09\09\09\09\09"
module asm "__kstrtabns_bio_uninit:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_bio_init:\09\09\09\09\09"
module asm "\09.asciz \09\22bio_init\22\09\09\09\09\09"
module asm "__kstrtabns_bio_init:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_bio_reset:\09\09\09\09\09"
module asm "\09.asciz \09\22bio_reset\22\09\09\09\09\09"
module asm "__kstrtabns_bio_reset:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_bio_chain:\09\09\09\09\09"
module asm "\09.asciz \09\22bio_chain\22\09\09\09\09\09"
module asm "__kstrtabns_bio_chain:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_bio_alloc_bioset:\09\09\09\09\09"
module asm "\09.asciz \09\22bio_alloc_bioset\22\09\09\09\09\09"
module asm "__kstrtabns_bio_alloc_bioset:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_bio_kmalloc:\09\09\09\09\09"
module asm "\09.asciz \09\22bio_kmalloc\22\09\09\09\09\09"
module asm "__kstrtabns_bio_kmalloc:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_zero_fill_bio:\09\09\09\09\09"
module asm "\09.asciz \09\22zero_fill_bio\22\09\09\09\09\09"
module asm "__kstrtabns_zero_fill_bio:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_bio_put:\09\09\09\09\09"
module asm "\09.asciz \09\22bio_put\22\09\09\09\09\09"
module asm "__kstrtabns_bio_put:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___bio_clone_fast:\09\09\09\09\09"
module asm "\09.asciz \09\22__bio_clone_fast\22\09\09\09\09\09"
module asm "__kstrtabns___bio_clone_fast:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_bio_clone_fast:\09\09\09\09\09"
module asm "\09.asciz \09\22bio_clone_fast\22\09\09\09\09\09"
module asm "__kstrtabns_bio_clone_fast:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_bio_devname:\09\09\09\09\09"
module asm "\09.asciz \09\22bio_devname\22\09\09\09\09\09"
module asm "__kstrtabns_bio_devname:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_bio_add_pc_page:\09\09\09\09\09"
module asm "\09.asciz \09\22bio_add_pc_page\22\09\09\09\09\09"
module asm "__kstrtabns_bio_add_pc_page:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_bio_add_zone_append_page:\09\09\09\09\09"
module asm "\09.asciz \09\22bio_add_zone_append_page\22\09\09\09\09\09"
module asm "__kstrtabns_bio_add_zone_append_page:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___bio_add_page:\09\09\09\09\09"
module asm "\09.asciz \09\22__bio_add_page\22\09\09\09\09\09"
module asm "__kstrtabns___bio_add_page:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_bio_add_page:\09\09\09\09\09"
module asm "\09.asciz \09\22bio_add_page\22\09\09\09\09\09"
module asm "__kstrtabns_bio_add_page:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___bio_release_pages:\09\09\09\09\09"
module asm "\09.asciz \09\22__bio_release_pages\22\09\09\09\09\09"
module asm "__kstrtabns___bio_release_pages:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_bio_iov_iter_get_pages:\09\09\09\09\09"
module asm "\09.asciz \09\22bio_iov_iter_get_pages\22\09\09\09\09\09"
module asm "__kstrtabns_bio_iov_iter_get_pages:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_submit_bio_wait:\09\09\09\09\09"
module asm "\09.asciz \09\22submit_bio_wait\22\09\09\09\09\09"
module asm "__kstrtabns_submit_bio_wait:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___bio_advance:\09\09\09\09\09"
module asm "\09.asciz \09\22__bio_advance\22\09\09\09\09\09"
module asm "__kstrtabns___bio_advance:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_bio_copy_data_iter:\09\09\09\09\09"
module asm "\09.asciz \09\22bio_copy_data_iter\22\09\09\09\09\09"
module asm "__kstrtabns_bio_copy_data_iter:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_bio_copy_data:\09\09\09\09\09"
module asm "\09.asciz \09\22bio_copy_data\22\09\09\09\09\09"
module asm "__kstrtabns_bio_copy_data:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_bio_free_pages:\09\09\09\09\09"
module asm "\09.asciz \09\22bio_free_pages\22\09\09\09\09\09"
module asm "__kstrtabns_bio_free_pages:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_bio_endio:\09\09\09\09\09"
module asm "\09.asciz \09\22bio_endio\22\09\09\09\09\09"
module asm "__kstrtabns_bio_endio:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_bio_split:\09\09\09\09\09"
module asm "\09.asciz \09\22bio_split\22\09\09\09\09\09"
module asm "__kstrtabns_bio_split:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_bio_trim:\09\09\09\09\09"
module asm "\09.asciz \09\22bio_trim\22\09\09\09\09\09"
module asm "__kstrtabns_bio_trim:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_bioset_exit:\09\09\09\09\09"
module asm "\09.asciz \09\22bioset_exit\22\09\09\09\09\09"
module asm "__kstrtabns_bioset_exit:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_bioset_init:\09\09\09\09\09"
module asm "\09.asciz \09\22bioset_init\22\09\09\09\09\09"
module asm "__kstrtabns_bioset_init:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_bioset_init_from_src:\09\09\09\09\09"
module asm "\09.asciz \09\22bioset_init_from_src\22\09\09\09\09\09"
module asm "__kstrtabns_bioset_init_from_src:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_bio_alloc_kiocb:\09\09\09\09\09"
module asm "\09.asciz \09\22bio_alloc_kiocb\22\09\09\09\09\09"
module asm "__kstrtabns_bio_alloc_kiocb:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.bio_set = type { ptr, i32, ptr, %struct.mempool_s, %struct.mempool_s, i32, %struct.spinlock, %struct.bio_list, %struct.work_struct, ptr, %struct.hlist_node }
%struct.mempool_s = type { %struct.spinlock, i32, i32, ptr, ptr, ptr, ptr, %struct.wait_queue_head }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.list_head = type { ptr, ptr }
%struct.spinlock = type { %union.anon.2 }
%union.anon.2 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.3 }
%union.anon.3 = type { i32 }
%struct.bio_list = type { ptr, ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.atomic_t = type { i32 }
%struct.hlist_node = type { ptr, ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.biovec_slab = type { i32, ptr, ptr }
%struct.tracepoint = type { ptr, %struct.static_key, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.static_key = type { %struct.atomic_t }
%struct.cpumask = type { [1 x i32] }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.bio = type { ptr, ptr, i32, i16, i16, i16, i8, %struct.atomic_t, %struct.bvec_iter, i32, ptr, ptr, %union.anon.81, i16, i16, %struct.atomic_t, ptr, ptr, [0 x %struct.bio_vec] }
%struct.bvec_iter = type <{ i64, i32, i32, i32 }>
%union.anon.81 = type {}
%struct.bio_vec = type { ptr, i32, i32 }
%struct.task_struct = type { %struct.thread_info, i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [32 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, [36 x i8], %struct.sched_statistics, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i8, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.71, ptr, %struct.page_frag, i32, i32, i32, i64, i64, i32, i32, ptr, %struct.kmap_ctrl, i32, ptr, %struct.refcount_struct, %struct.thread_struct, [16 x i8] }
%struct.thread_info = type { i32, i32, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], [4 x i8], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.30 }
%struct.llist_node = type { ptr }
%union.anon.30 = type { i32 }
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
%struct.restart_block = type { i32, ptr, %union.anon.52 }
%union.anon.52 = type { %struct.anon.53 }
%struct.anon.53 = type { ptr, i32, i32, i32, i64, ptr }
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
%union.anon.71 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.page_frag = type { ptr, i16, i16 }
%struct.kmap_ctrl = type { i32, [16 x i32] }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
%struct.page = type { i32, %union.anon.4, %union.anon.48, %struct.atomic_t }
%union.anon.4 = type { %struct.anon.5 }
%struct.anon.5 = type { %struct.list_head, ptr, i32, i32 }
%union.anon.48 = type { %struct.atomic_t }
%struct.block_device = type { i64, i64, ptr, i32, i8, i32, i32, ptr, ptr, ptr, %struct.device, ptr, i32, i8, ptr, i8, %struct.spinlock, ptr, ptr, i32, %struct.mutex, ptr, ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.bio_alloc_cache = type { ptr, i32 }
%struct.request_queue = type { ptr, ptr, %struct.percpu_ref, ptr, ptr, ptr, ptr, i32, ptr, i32, ptr, i32, %struct.atomic_t, i32, %struct.spinlock, ptr, %struct.kobject, ptr, ptr, i32, i32, i32, i32, i32, i32, ptr, ptr, %struct.timer_list, %struct.work_struct, %struct.atomic_t, ptr, %struct.list_head, %struct.queue_limits, i32, i32, %struct.mutex, ptr, %struct.list_head, %struct.spinlock, %struct.delayed_work, %struct.mutex, %struct.mutex, %struct.list_head, %struct.spinlock, i32, %struct.callback_head, %struct.wait_queue_head, %struct.mutex, i32, ptr, %struct.list_head, %struct.bio_set, ptr, ptr, ptr, i8, [5 x i64], ptr, [0 x %struct.srcu_struct] }
%struct.percpu_ref = type { i32, ptr }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32 }
%struct.queue_limits = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i16, i8, i8, i8, i32 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.srcu_struct = type { [1 x %struct.srcu_node], [2 x ptr], %struct.mutex, %struct.spinlock, %struct.mutex, i32, i32, i32, i32, i32, ptr, i32, %struct.mutex, %struct.completion, %struct.atomic_t, %struct.delayed_work, %struct.lockdep_map }
%struct.srcu_node = type { %struct.spinlock, [4 x i32], [4 x i32], i32, ptr, i32, i32 }
%struct.lockdep_map = type {}
%struct.iov_iter = type { i8, i8, i8, i32, i32, %union.anon.18, %union.anon.19 }
%union.anon.18 = type { ptr }
%union.anon.19 = type { i64 }
%struct.bio_slab = type { ptr, i32, i32, [8 x i8] }
%struct.kiocb = type { ptr, i64, ptr, ptr, i32, i16, i16, ptr }

@fs_bio_set = dso_local global %struct.bio_set zeroinitializer, align 4
@__kstrtab_fs_bio_set = external dso_local constant [0 x i8], align 1
@__kstrtabns_fs_bio_set = external dso_local constant [0 x i8], align 1
@__ksymtab_fs_bio_set = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @fs_bio_set to i32), ptr @__kstrtab_fs_bio_set, ptr @__kstrtabns_fs_bio_set }, section "___ksymtab+fs_bio_set", align 4
@bvec_alloc.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str = private unnamed_addr constant [12 x i8] c"block/bio.c\00", align 1
@__kstrtab_bio_uninit = external dso_local constant [0 x i8], align 1
@__kstrtabns_bio_uninit = external dso_local constant [0 x i8], align 1
@__ksymtab_bio_uninit = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @bio_uninit to i32), ptr @__kstrtab_bio_uninit, ptr @__kstrtabns_bio_uninit }, section "___ksymtab+bio_uninit", align 4
@__kstrtab_bio_init = external dso_local constant [0 x i8], align 1
@__kstrtabns_bio_init = external dso_local constant [0 x i8], align 1
@__ksymtab_bio_init = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @bio_init to i32), ptr @__kstrtab_bio_init, ptr @__kstrtabns_bio_init }, section "___ksymtab+bio_init", align 4
@__kstrtab_bio_reset = external dso_local constant [0 x i8], align 1
@__kstrtabns_bio_reset = external dso_local constant [0 x i8], align 1
@__ksymtab_bio_reset = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @bio_reset to i32), ptr @__kstrtab_bio_reset, ptr @__kstrtabns_bio_reset }, section "___ksymtab+bio_reset", align 4
@__kstrtab_bio_chain = external dso_local constant [0 x i8], align 1
@__kstrtabns_bio_chain = external dso_local constant [0 x i8], align 1
@__ksymtab_bio_chain = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @bio_chain to i32), ptr @__kstrtab_bio_chain, ptr @__kstrtabns_bio_chain }, section "___ksymtab+bio_chain", align 4
@bio_alloc_bioset.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@__kstrtab_bio_alloc_bioset = external dso_local constant [0 x i8], align 1
@__kstrtabns_bio_alloc_bioset = external dso_local constant [0 x i8], align 1
@__ksymtab_bio_alloc_bioset = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @bio_alloc_bioset to i32), ptr @__kstrtab_bio_alloc_bioset, ptr @__kstrtabns_bio_alloc_bioset }, section "___ksymtab+bio_alloc_bioset", align 4
@__kstrtab_bio_kmalloc = external dso_local constant [0 x i8], align 1
@__kstrtabns_bio_kmalloc = external dso_local constant [0 x i8], align 1
@__ksymtab_bio_kmalloc = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @bio_kmalloc to i32), ptr @__kstrtab_bio_kmalloc, ptr @__kstrtabns_bio_kmalloc }, section "___ksymtab+bio_kmalloc", align 4
@__kstrtab_zero_fill_bio = external dso_local constant [0 x i8], align 1
@__kstrtabns_zero_fill_bio = external dso_local constant [0 x i8], align 1
@__ksymtab_zero_fill_bio = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @zero_fill_bio to i32), ptr @__kstrtab_zero_fill_bio, ptr @__kstrtabns_zero_fill_bio }, section "___ksymtab+zero_fill_bio", align 4
@__per_cpu_offset = external dso_local local_unnamed_addr global [16 x i32], align 4
@__kstrtab_bio_put = external dso_local constant [0 x i8], align 1
@__kstrtabns_bio_put = external dso_local constant [0 x i8], align 1
@__ksymtab_bio_put = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @bio_put to i32), ptr @__kstrtab_bio_put, ptr @__kstrtabns_bio_put }, section "___ksymtab+bio_put", align 4
@__bio_clone_fast.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@__kstrtab___bio_clone_fast = external dso_local constant [0 x i8], align 1
@__kstrtabns___bio_clone_fast = external dso_local constant [0 x i8], align 1
@__ksymtab___bio_clone_fast = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__bio_clone_fast to i32), ptr @__kstrtab___bio_clone_fast, ptr @__kstrtabns___bio_clone_fast }, section "___ksymtab+__bio_clone_fast", align 4
@__kstrtab_bio_clone_fast = external dso_local constant [0 x i8], align 1
@__kstrtabns_bio_clone_fast = external dso_local constant [0 x i8], align 1
@__ksymtab_bio_clone_fast = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @bio_clone_fast to i32), ptr @__kstrtab_bio_clone_fast, ptr @__kstrtabns_bio_clone_fast }, section "___ksymtab+bio_clone_fast", align 4
@__kstrtab_bio_devname = external dso_local constant [0 x i8], align 1
@__kstrtabns_bio_devname = external dso_local constant [0 x i8], align 1
@__ksymtab_bio_devname = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @bio_devname to i32), ptr @__kstrtab_bio_devname, ptr @__kstrtabns_bio_devname }, section "___ksymtab+bio_devname", align 4
@bio_add_hw_page.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@__kstrtab_bio_add_pc_page = external dso_local constant [0 x i8], align 1
@__kstrtabns_bio_add_pc_page = external dso_local constant [0 x i8], align 1
@__ksymtab_bio_add_pc_page = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @bio_add_pc_page to i32), ptr @__kstrtab_bio_add_pc_page, ptr @__kstrtabns_bio_add_pc_page }, section "___ksymtab+bio_add_pc_page", align 4
@bio_add_zone_append_page.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@bio_add_zone_append_page.__already_done.1 = internal unnamed_addr global i1 false, section ".data.once", align 1
@__kstrtab_bio_add_zone_append_page = external dso_local constant [0 x i8], align 1
@__kstrtabns_bio_add_zone_append_page = external dso_local constant [0 x i8], align 1
@__ksymtab_bio_add_zone_append_page = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @bio_add_zone_append_page to i32), ptr @__kstrtab_bio_add_zone_append_page, ptr @__kstrtabns_bio_add_zone_append_page }, section "___ksymtab_gpl+bio_add_zone_append_page", align 4
@__bio_add_page.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@__bio_add_page.__already_done.2 = internal unnamed_addr global i1 false, section ".data.once", align 1
@__kstrtab___bio_add_page = external dso_local constant [0 x i8], align 1
@__kstrtabns___bio_add_page = external dso_local constant [0 x i8], align 1
@__ksymtab___bio_add_page = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__bio_add_page to i32), ptr @__kstrtab___bio_add_page, ptr @__kstrtabns___bio_add_page }, section "___ksymtab_gpl+__bio_add_page", align 4
@__kstrtab_bio_add_page = external dso_local constant [0 x i8], align 1
@__kstrtabns_bio_add_page = external dso_local constant [0 x i8], align 1
@__ksymtab_bio_add_page = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @bio_add_page to i32), ptr @__kstrtab_bio_add_page, ptr @__kstrtabns_bio_add_page }, section "___ksymtab+bio_add_page", align 4
@__kstrtab___bio_release_pages = external dso_local constant [0 x i8], align 1
@__kstrtabns___bio_release_pages = external dso_local constant [0 x i8], align 1
@__ksymtab___bio_release_pages = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__bio_release_pages to i32), ptr @__kstrtab___bio_release_pages, ptr @__kstrtabns___bio_release_pages }, section "___ksymtab_gpl+__bio_release_pages", align 4
@bio_iov_bvec_set.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@__kstrtab_bio_iov_iter_get_pages = external dso_local constant [0 x i8], align 1
@__kstrtabns_bio_iov_iter_get_pages = external dso_local constant [0 x i8], align 1
@__ksymtab_bio_iov_iter_get_pages = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @bio_iov_iter_get_pages to i32), ptr @__kstrtab_bio_iov_iter_get_pages, ptr @__kstrtabns_bio_iov_iter_get_pages }, section "___ksymtab_gpl+bio_iov_iter_get_pages", align 4
@__kstrtab_submit_bio_wait = external dso_local constant [0 x i8], align 1
@__kstrtabns_submit_bio_wait = external dso_local constant [0 x i8], align 1
@__ksymtab_submit_bio_wait = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @submit_bio_wait to i32), ptr @__kstrtab_submit_bio_wait, ptr @__kstrtabns_submit_bio_wait }, section "___ksymtab+submit_bio_wait", align 4
@__kstrtab___bio_advance = external dso_local constant [0 x i8], align 1
@__kstrtabns___bio_advance = external dso_local constant [0 x i8], align 1
@__ksymtab___bio_advance = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__bio_advance to i32), ptr @__kstrtab___bio_advance, ptr @__kstrtabns___bio_advance }, section "___ksymtab+__bio_advance", align 4
@__kstrtab_bio_copy_data_iter = external dso_local constant [0 x i8], align 1
@__kstrtabns_bio_copy_data_iter = external dso_local constant [0 x i8], align 1
@__ksymtab_bio_copy_data_iter = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @bio_copy_data_iter to i32), ptr @__kstrtab_bio_copy_data_iter, ptr @__kstrtabns_bio_copy_data_iter }, section "___ksymtab+bio_copy_data_iter", align 4
@__kstrtab_bio_copy_data = external dso_local constant [0 x i8], align 1
@__kstrtabns_bio_copy_data = external dso_local constant [0 x i8], align 1
@__ksymtab_bio_copy_data = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @bio_copy_data to i32), ptr @__kstrtab_bio_copy_data, ptr @__kstrtabns_bio_copy_data }, section "___ksymtab+bio_copy_data", align 4
@__kstrtab_bio_free_pages = external dso_local constant [0 x i8], align 1
@__kstrtabns_bio_free_pages = external dso_local constant [0 x i8], align 1
@__ksymtab_bio_free_pages = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @bio_free_pages to i32), ptr @__kstrtab_bio_free_pages, ptr @__kstrtabns_bio_free_pages }, section "___ksymtab+bio_free_pages", align 4
@bio_dirty_lock = internal global %struct.spinlock zeroinitializer, align 4
@bio_dirty_list = internal unnamed_addr global ptr null, align 4
@bio_dirty_work = internal global %struct.work_struct { %struct.atomic_t { i32 -32 }, %struct.list_head { ptr getelementptr (i8, ptr @bio_dirty_work, i64 4), ptr getelementptr (i8, ptr @bio_dirty_work, i64 4) }, ptr @bio_dirty_fn }, align 4
@__kstrtab_bio_endio = external dso_local constant [0 x i8], align 1
@__kstrtabns_bio_endio = external dso_local constant [0 x i8], align 1
@__ksymtab_bio_endio = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @bio_endio to i32), ptr @__kstrtab_bio_endio, ptr @__kstrtabns_bio_endio }, section "___ksymtab+bio_endio", align 4
@bio_split.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@__kstrtab_bio_split = external dso_local constant [0 x i8], align 1
@__kstrtabns_bio_split = external dso_local constant [0 x i8], align 1
@__ksymtab_bio_split = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @bio_split to i32), ptr @__kstrtab_bio_split, ptr @__kstrtabns_bio_split }, section "___ksymtab+bio_split", align 4
@bio_trim.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@__kstrtab_bio_trim = external dso_local constant [0 x i8], align 1
@__kstrtabns_bio_trim = external dso_local constant [0 x i8], align 1
@__ksymtab_bio_trim = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @bio_trim to i32), ptr @__kstrtab_bio_trim, ptr @__kstrtabns_bio_trim }, section "___ksymtab_gpl+bio_trim", align 4
@bvec_slabs = internal global [4 x %struct.biovec_slab] [%struct.biovec_slab { i32 16, ptr @.str.7, ptr null }, %struct.biovec_slab { i32 64, ptr @.str.8, ptr null }, %struct.biovec_slab { i32 128, ptr @.str.9, ptr null }, %struct.biovec_slab { i32 256, ptr @.str.10, ptr null }], section ".data..read_mostly", align 4
@__kstrtab_bioset_exit = external dso_local constant [0 x i8], align 1
@__kstrtabns_bioset_exit = external dso_local constant [0 x i8], align 1
@__ksymtab_bioset_exit = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @bioset_exit to i32), ptr @__kstrtab_bioset_exit, ptr @__kstrtabns_bioset_exit }, section "___ksymtab+bioset_exit", align 4
@.str.3 = private unnamed_addr constant [7 x i8] c"bioset\00", align 1
@__kstrtab_bioset_init = external dso_local constant [0 x i8], align 1
@__kstrtabns_bioset_init = external dso_local constant [0 x i8], align 1
@__ksymtab_bioset_init = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @bioset_init to i32), ptr @__kstrtab_bioset_init, ptr @__kstrtabns_bioset_init }, section "___ksymtab+bioset_init", align 4
@__kstrtab_bioset_init_from_src = external dso_local constant [0 x i8], align 1
@__kstrtabns_bioset_init_from_src = external dso_local constant [0 x i8], align 1
@__ksymtab_bioset_init_from_src = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @bioset_init_from_src to i32), ptr @__kstrtab_bioset_init_from_src, ptr @__kstrtabns_bioset_init_from_src }, section "___ksymtab+bioset_init_from_src", align 4
@__kstrtab_bio_alloc_kiocb = external dso_local constant [0 x i8], align 1
@__kstrtabns_bio_alloc_kiocb = external dso_local constant [0 x i8], align 1
@__ksymtab_bio_alloc_kiocb = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @bio_alloc_kiocb to i32), ptr @__kstrtab_bio_alloc_kiocb, ptr @__kstrtabns_bio_alloc_kiocb }, section "___ksymtab_gpl+bio_alloc_kiocb", align 4
@__initcall__kmod_bio__347_1774_init_bio4 = internal global ptr @init_bio, section ".initcall4.init", align 4
@punt_bios_to_rescuer.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@pgprot_kernel = external dso_local local_unnamed_addr global i32, align 4
@mem_map = external dso_local local_unnamed_addr global ptr, align 4
@__pv_phys_pfn_offset = external dso_local local_unnamed_addr global i32, align 4
@__bio_try_merge_page.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@__bio_iov_append_get_pages.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@__bio_iov_iter_get_pages.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@bvec_iter_advance.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.4 = private unnamed_addr constant [21 x i8] c"include/linux/bvec.h\00", align 1
@.str.5 = private unnamed_addr constant [44 x i8] c"Attempted to advance past end of bvec iter\0A\00", align 1
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@__tracepoint_block_bio_complete = external dso_local global %struct.tracepoint, align 4
@__cpu_online_mask = external dso_local global %struct.cpumask, align 4
@.str.7 = private unnamed_addr constant [10 x i8] c"biovec-16\00", align 1
@.str.8 = private unnamed_addr constant [10 x i8] c"biovec-64\00", align 1
@.str.9 = private unnamed_addr constant [11 x i8] c"biovec-128\00", align 1
@.str.10 = private unnamed_addr constant [11 x i8] c"biovec-max\00", align 1
@__cpu_possible_mask = external dso_local global %struct.cpumask, align 4
@nr_cpu_ids = external dso_local local_unnamed_addr global i32, align 4
@bio_slab_lock = internal global %struct.mutex { %struct.atomic_t zeroinitializer, %struct.raw_spinlock zeroinitializer, %struct.optimistic_spin_queue zeroinitializer, %struct.list_head { ptr getelementptr (i8, ptr @bio_slab_lock, i64 12), ptr getelementptr (i8, ptr @bio_slab_lock, i64 12) } }, align 4
@bio_slabs = internal global %struct.xarray zeroinitializer, align 4
@.str.11 = private unnamed_addr constant [29 x i8] c"\013bio: unable to find slab!\0A\00", align 1
@bio_put_slab.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.12 = private unnamed_addr constant [7 x i8] c"bio-%d\00", align 1
@.str.13 = private unnamed_addr constant [15 x i8] c"block/bio:dead\00", align 1
@.str.14 = private unnamed_addr constant [26 x i8] c"bio: can't allocate bios\0A\00", align 1
@llvm.compiler.used = appending global [31 x ptr] [ptr @__initcall__kmod_bio__347_1774_init_bio4, ptr @__ksymtab___bio_add_page, ptr @__ksymtab___bio_advance, ptr @__ksymtab___bio_clone_fast, ptr @__ksymtab___bio_release_pages, ptr @__ksymtab_bio_add_page, ptr @__ksymtab_bio_add_pc_page, ptr @__ksymtab_bio_add_zone_append_page, ptr @__ksymtab_bio_alloc_bioset, ptr @__ksymtab_bio_alloc_kiocb, ptr @__ksymtab_bio_chain, ptr @__ksymtab_bio_clone_fast, ptr @__ksymtab_bio_copy_data, ptr @__ksymtab_bio_copy_data_iter, ptr @__ksymtab_bio_devname, ptr @__ksymtab_bio_endio, ptr @__ksymtab_bio_free_pages, ptr @__ksymtab_bio_init, ptr @__ksymtab_bio_iov_iter_get_pages, ptr @__ksymtab_bio_kmalloc, ptr @__ksymtab_bio_put, ptr @__ksymtab_bio_reset, ptr @__ksymtab_bio_split, ptr @__ksymtab_bio_trim, ptr @__ksymtab_bio_uninit, ptr @__ksymtab_bioset_exit, ptr @__ksymtab_bioset_init, ptr @__ksymtab_bioset_init_from_src, ptr @__ksymtab_fs_bio_set, ptr @__ksymtab_submit_bio_wait, ptr @__ksymtab_zero_fill_bio], section "llvm.metadata"
@switch.table.biovec_slab = private unnamed_addr constant [124 x ptr] [ptr @bvec_slabs, ptr @bvec_slabs, ptr @bvec_slabs, ptr @bvec_slabs, ptr @bvec_slabs, ptr @bvec_slabs, ptr @bvec_slabs, ptr @bvec_slabs, ptr @bvec_slabs, ptr @bvec_slabs, ptr @bvec_slabs, ptr @bvec_slabs, ptr getelementptr inbounds ([4 x %struct.biovec_slab], ptr @bvec_slabs, i32 0, i32 1), ptr getelementptr inbounds ([4 x %struct.biovec_slab], ptr @bvec_slabs, i32 0, i32 1), ptr getelementptr inbounds ([4 x %struct.biovec_slab], ptr @bvec_slabs, i32 0, i32 1), ptr getelementptr inbounds ([4 x %struct.biovec_slab], ptr @bvec_slabs, i32 0, i32 1), ptr getelementptr inbounds ([4 x %struct.biovec_slab], ptr @bvec_slabs, i32 0, i32 1), ptr getelementptr inbounds ([4 x %struct.biovec_slab], ptr @bvec_slabs, i32 0, i32 1), ptr getelementptr inbounds ([4 x %struct.biovec_slab], ptr @bvec_slabs, i32 0, i32 1), ptr getelementptr inbounds ([4 x %struct.biovec_slab], ptr @bvec_slabs, i32 0, i32 1), ptr getelementptr inbounds ([4 x %struct.biovec_slab], ptr @bvec_slabs, i32 0, i32 1), ptr getelementptr inbounds ([4 x %struct.biovec_slab], ptr @bvec_slabs, i32 0, i32 1), ptr getelementptr inbounds ([4 x %struct.biovec_slab], ptr @bvec_slabs, i32 0, i32 1), ptr getelementptr inbounds ([4 x %struct.biovec_slab], ptr @bvec_slabs, i32 0, i32 1), ptr getelementptr inbounds ([4 x %struct.biovec_slab], ptr @bvec_slabs, i32 0, i32 1), ptr getelementptr inbounds ([4 x %struct.biovec_slab], ptr @bvec_slabs, i32 0, i32 1), ptr getelementptr inbounds ([4 x %struct.biovec_slab], ptr @bvec_slabs, i32 0, i32 1), ptr getelementptr inbounds ([4 x %struct.biovec_slab], ptr @bvec_slabs, i32 0, i32 1), ptr getelementptr inbounds ([4 x %struct.biovec_slab], ptr @bvec_slabs, i32 0, i32 1), ptr getelementptr inbounds ([4 x %struct.biovec_slab], ptr @bvec_slabs, i32 0, i32 1), ptr getelementptr inbounds ([4 x %struct.biovec_slab], ptr @bvec_slabs, i32 0, i32 1), ptr getelementptr inbounds ([4 x %struct.biovec_slab], ptr @bvec_slabs, i32 0, i32 1), ptr getelementptr inbounds ([4 x %struct.biovec_slab], ptr @bvec_slabs, i32 0, i32 1), ptr getelementptr inbounds ([4 x %struct.biovec_slab], ptr @bvec_slabs, i32 0, i32 1), ptr getelementptr inbounds ([4 x %struct.biovec_slab], ptr @bvec_slabs, i32 0, i32 1), ptr getelementptr inbounds ([4 x %struct.biovec_slab], ptr @bvec_slabs, i32 0, i32 1), ptr getelementptr inbounds ([4 x %struct.biovec_slab], ptr @bvec_slabs, i32 0, i32 1), ptr getelementptr inbounds ([4 x %struct.biovec_slab], ptr @bvec_slabs, i32 0, i32 1), ptr getelementptr inbounds ([4 x %struct.biovec_slab], ptr @bvec_slabs, i32 0, i32 1), ptr getelementptr inbounds ([4 x %struct.biovec_slab], ptr @bvec_slabs, i32 0, i32 1), ptr getelementptr inbounds ([4 x %struct.biovec_slab], ptr @bvec_slabs, i32 0, i32 1), ptr getelementptr inbounds ([4 x %struct.biovec_slab], ptr @bvec_slabs, i32 0, i32 1), ptr getelementptr inbounds ([4 x %struct.biovec_slab], ptr @bvec_slabs, i32 0, i32 1), ptr getelementptr inbounds ([4 x %struct.biovec_slab], ptr @bvec_slabs, i32 0, i32 1), ptr getelementptr inbounds ([4 x %struct.biovec_slab], ptr @bvec_slabs, i32 0, i32 1), ptr getelementptr inbounds ([4 x %struct.biovec_slab], ptr @bvec_slabs, i32 0, i32 1), ptr getelementptr inbounds ([4 x %struct.biovec_slab], ptr @bvec_slabs, i32 0, i32 1), ptr getelementptr inbounds ([4 x %struct.biovec_slab], ptr @bvec_slabs, i32 0, i32 1), ptr getelementptr inbounds ([4 x %struct.biovec_slab], ptr @bvec_slabs, i32 0, i32 1), ptr getelementptr inbounds ([4 x %struct.biovec_slab], ptr @bvec_slabs, i32 0, i32 1), ptr getelementptr inbounds ([4 x %struct.biovec_slab], ptr @bvec_slabs, i32 0, i32 1), ptr getelementptr inbounds ([4 x %struct.biovec_slab], ptr @bvec_slabs, i32 0, i32 1), ptr getelementptr inbounds ([4 x %struct.biovec_slab], ptr @bvec_slabs, i32 0, i32 1), ptr getelementptr inbounds ([4 x %struct.biovec_slab], ptr @bvec_slabs, i32 0, i32 1), ptr getelementptr inbounds ([4 x %struct.biovec_slab], ptr @bvec_slabs, i32 0, i32 1), ptr getelementptr inbounds ([4 x %struct.biovec_slab], ptr @bvec_slabs, i32 0, i32 1), ptr getelementptr inbounds ([4 x %struct.biovec_slab], ptr @bvec_slabs, i32 0, i32 1), ptr getelementptr inbounds ([4 x %struct.biovec_slab], ptr @bvec_slabs, i32 0, i32 1), ptr getelementptr inbounds ([4 x %struct.biovec_slab], ptr @bvec_slabs, i32 0, i32 1), ptr getelementptr inbounds ([4 x %struct.biovec_slab], ptr @bvec_slabs, i32 0, i32 1), ptr getelementptr inbounds ([4 x %struct.biovec_slab], ptr @bvec_slabs, i32 0, i32 2), ptr getelementptr inbounds ([4 x %struct.biovec_slab], ptr @bvec_slabs, i32 0, i32 2), ptr getelementptr inbounds ([4 x %struct.biovec_slab], ptr @bvec_slabs, i32 0, i32 2), ptr getelementptr inbounds ([4 x %struct.biovec_slab], ptr @bvec_slabs, i32 0, i32 2), ptr getelementptr inbounds ([4 x %struct.biovec_slab], ptr @bvec_slabs, i32 0, i32 2), ptr getelementptr inbounds ([4 x %struct.biovec_slab], ptr @bvec_slabs, i32 0, i32 2), ptr getelementptr inbounds ([4 x %struct.biovec_slab], ptr @bvec_slabs, i32 0, i32 2), ptr getelementptr inbounds ([4 x %struct.biovec_slab], ptr @bvec_slabs, i32 0, i32 2), ptr getelementptr inbounds ([4 x %struct.biovec_slab], ptr @bvec_slabs, i32 0, i32 2), ptr getelementptr inbounds ([4 x %struct.biovec_slab], ptr @bvec_slabs, i32 0, i32 2), ptr getelementptr inbounds ([4 x %struct.biovec_slab], ptr @bvec_slabs, i32 0, i32 2), ptr getelementptr inbounds ([4 x %struct.biovec_slab], ptr @bvec_slabs, i32 0, i32 2), ptr getelementptr inbounds ([4 x %struct.biovec_slab], ptr @bvec_slabs, i32 0, i32 2), ptr getelementptr inbounds ([4 x %struct.biovec_slab], ptr @bvec_slabs, i32 0, i32 2), ptr getelementptr inbounds ([4 x %struct.biovec_slab], ptr @bvec_slabs, i32 0, i32 2), ptr getelementptr inbounds ([4 x %struct.biovec_slab], ptr @bvec_slabs, i32 0, i32 2), ptr getelementptr inbounds ([4 x %struct.biovec_slab], ptr @bvec_slabs, i32 0, i32 2), ptr getelementptr inbounds ([4 x %struct.biovec_slab], ptr @bvec_slabs, i32 0, i32 2), ptr getelementptr inbounds ([4 x %struct.biovec_slab], ptr @bvec_slabs, i32 0, i32 2), ptr getelementptr inbounds ([4 x %struct.biovec_slab], ptr @bvec_slabs, i32 0, i32 2), ptr getelementptr inbounds ([4 x %struct.biovec_slab], ptr @bvec_slabs, i32 0, i32 2), ptr getelementptr inbounds ([4 x %struct.biovec_slab], ptr @bvec_slabs, i32 0, i32 2), ptr getelementptr inbounds ([4 x %struct.biovec_slab], ptr @bvec_slabs, i32 0, i32 2), ptr getelementptr inbounds ([4 x %struct.biovec_slab], ptr @bvec_slabs, i32 0, i32 2), ptr getelementptr inbounds ([4 x %struct.biovec_slab], ptr @bvec_slabs, i32 0, i32 2), ptr getelementptr inbounds ([4 x %struct.biovec_slab], ptr @bvec_slabs, i32 0, i32 2), ptr getelementptr inbounds ([4 x %struct.biovec_slab], ptr @bvec_slabs, i32 0, i32 2), ptr getelementptr inbounds ([4 x %struct.biovec_slab], ptr @bvec_slabs, i32 0, i32 2), ptr getelementptr inbounds ([4 x %struct.biovec_slab], ptr @bvec_slabs, i32 0, i32 2), ptr getelementptr inbounds ([4 x %struct.biovec_slab], ptr @bvec_slabs, i32 0, i32 2), ptr getelementptr inbounds ([4 x %struct.biovec_slab], ptr @bvec_slabs, i32 0, i32 2), ptr getelementptr inbounds ([4 x %struct.biovec_slab], ptr @bvec_slabs, i32 0, i32 2), ptr getelementptr inbounds ([4 x %struct.biovec_slab], ptr @bvec_slabs, i32 0, i32 2), ptr getelementptr inbounds ([4 x %struct.biovec_slab], ptr @bvec_slabs, i32 0, i32 2), ptr getelementptr inbounds ([4 x %struct.biovec_slab], ptr @bvec_slabs, i32 0, i32 2), ptr getelementptr inbounds ([4 x %struct.biovec_slab], ptr @bvec_slabs, i32 0, i32 2), ptr getelementptr inbounds ([4 x %struct.biovec_slab], ptr @bvec_slabs, i32 0, i32 2), ptr getelementptr inbounds ([4 x %struct.biovec_slab], ptr @bvec_slabs, i32 0, i32 2), ptr getelementptr inbounds ([4 x %struct.biovec_slab], ptr @bvec_slabs, i32 0, i32 2), ptr getelementptr inbounds ([4 x %struct.biovec_slab], ptr @bvec_slabs, i32 0, i32 2), ptr getelementptr inbounds ([4 x %struct.biovec_slab], ptr @bvec_slabs, i32 0, i32 2), ptr getelementptr inbounds ([4 x %struct.biovec_slab], ptr @bvec_slabs, i32 0, i32 2), ptr getelementptr inbounds ([4 x %struct.biovec_slab], ptr @bvec_slabs, i32 0, i32 2), ptr getelementptr inbounds ([4 x %struct.biovec_slab], ptr @bvec_slabs, i32 0, i32 2), ptr getelementptr inbounds ([4 x %struct.biovec_slab], ptr @bvec_slabs, i32 0, i32 2), ptr getelementptr inbounds ([4 x %struct.biovec_slab], ptr @bvec_slabs, i32 0, i32 2), ptr getelementptr inbounds ([4 x %struct.biovec_slab], ptr @bvec_slabs, i32 0, i32 2), ptr getelementptr inbounds ([4 x %struct.biovec_slab], ptr @bvec_slabs, i32 0, i32 2), ptr getelementptr inbounds ([4 x %struct.biovec_slab], ptr @bvec_slabs, i32 0, i32 2), ptr getelementptr inbounds ([4 x %struct.biovec_slab], ptr @bvec_slabs, i32 0, i32 2), ptr getelementptr inbounds ([4 x %struct.biovec_slab], ptr @bvec_slabs, i32 0, i32 2), ptr getelementptr inbounds ([4 x %struct.biovec_slab], ptr @bvec_slabs, i32 0, i32 2), ptr getelementptr inbounds ([4 x %struct.biovec_slab], ptr @bvec_slabs, i32 0, i32 2), ptr getelementptr inbounds ([4 x %struct.biovec_slab], ptr @bvec_slabs, i32 0, i32 2), ptr getelementptr inbounds ([4 x %struct.biovec_slab], ptr @bvec_slabs, i32 0, i32 2), ptr getelementptr inbounds ([4 x %struct.biovec_slab], ptr @bvec_slabs, i32 0, i32 2), ptr getelementptr inbounds ([4 x %struct.biovec_slab], ptr @bvec_slabs, i32 0, i32 2), ptr getelementptr inbounds ([4 x %struct.biovec_slab], ptr @bvec_slabs, i32 0, i32 2), ptr getelementptr inbounds ([4 x %struct.biovec_slab], ptr @bvec_slabs, i32 0, i32 2), ptr getelementptr inbounds ([4 x %struct.biovec_slab], ptr @bvec_slabs, i32 0, i32 2), ptr getelementptr inbounds ([4 x %struct.biovec_slab], ptr @bvec_slabs, i32 0, i32 2), ptr getelementptr inbounds ([4 x %struct.biovec_slab], ptr @bvec_slabs, i32 0, i32 2), ptr getelementptr inbounds ([4 x %struct.biovec_slab], ptr @bvec_slabs, i32 0, i32 2), ptr getelementptr inbounds ([4 x %struct.biovec_slab], ptr @bvec_slabs, i32 0, i32 2)], align 4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @bvec_free(ptr noundef %0, ptr noundef %1, i16 noundef zeroext %2) local_unnamed_addr #0 {
  %4 = icmp ugt i16 %2, 256
  br i1 %4, label %5, label %6, !prof !8

5:                                                ; preds = %3
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22block/bio.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 160, 0\0A.popsection", ""() #16, !srcloc !9
  unreachable

6:                                                ; preds = %3
  %7 = icmp eq i16 %2, 256
  br i1 %7, label %8, label %9

8:                                                ; preds = %6
  tail call void @mempool_free(ptr noundef %1, ptr noundef %0) #16
  br label %15

9:                                                ; preds = %6
  %10 = icmp ugt i16 %2, 4
  br i1 %10, label %11, label %15

11:                                               ; preds = %9
  %12 = tail call fastcc ptr @biovec_slab(i16 noundef zeroext %2)
  %13 = getelementptr inbounds %struct.biovec_slab, ptr %12, i32 0, i32 2
  %14 = load ptr, ptr %13, align 4
  tail call void @kmem_cache_free(ptr noundef %14, ptr noundef %1) #16
  br label %15

15:                                               ; preds = %11, %9, %8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mempool_free(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kmem_cache_free(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc ptr @biovec_slab(i16 noundef zeroext %0) unnamed_addr #0 {
  %2 = add i16 %0, -5
  %3 = icmp ult i16 %2, 124
  br i1 %3, label %9, label %4

4:                                                ; preds = %1
  %5 = zext i16 %0 to i32
  %6 = add nsw i32 %5, -129
  %7 = icmp ult i32 %6, 128
  br i1 %7, label %13, label %8

8:                                                ; preds = %4
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22block/bio.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 57, 0\0A.popsection", ""() #16, !srcloc !10
  unreachable

9:                                                ; preds = %1
  %10 = sext i16 %2 to i32
  %11 = getelementptr inbounds [124 x ptr], ptr @switch.table.biovec_slab, i32 0, i32 %10
  %12 = load ptr, ptr %11, align 4
  br label %13

13:                                               ; preds = %9, %4
  %14 = phi ptr [ getelementptr inbounds ([4 x %struct.biovec_slab], ptr @bvec_slabs, i32 0, i32 3), %4 ], [ %12, %9 ]
  ret ptr %14
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local noalias ptr @bvec_alloc(ptr noundef %0, ptr nocapture noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = load i16, ptr %1, align 2
  %5 = tail call fastcc ptr @biovec_slab(i16 noundef zeroext %4)
  %6 = icmp eq ptr %5, null
  %7 = load i1, ptr @bvec_alloc.__already_done, align 1
  %8 = xor i1 %7, true
  %9 = select i1 %6, i1 %8, i1 false
  br i1 %9, label %10, label %11, !prof !8

10:                                               ; preds = %3
  store i1 true, ptr @bvec_alloc.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 183, i32 noundef 9, ptr noundef null) #16
  br label %11

11:                                               ; preds = %10, %3
  br i1 %6, label %30, label %12

12:                                               ; preds = %11
  %13 = load i32, ptr %5, align 4
  %14 = trunc i32 %13 to i16
  store i16 %14, ptr %1, align 2
  %15 = and i32 %13, 65280
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %28

17:                                               ; preds = %12
  %18 = getelementptr inbounds %struct.biovec_slab, ptr %5, i32 0, i32 2
  %19 = load ptr, ptr %18, align 4
  %20 = and i32 %2, -599105
  %21 = or i32 %20, 598016
  %22 = tail call noalias align 8 ptr @kmem_cache_alloc(ptr noundef %19, i32 noundef %21) #16
  %23 = icmp eq ptr %22, null
  br i1 %23, label %24, label %30, !prof !8

24:                                               ; preds = %17
  %25 = and i32 %2, 1024
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %30, label %27

27:                                               ; preds = %24
  store i16 256, ptr %1, align 2
  br label %28

28:                                               ; preds = %27, %12
  %29 = tail call noalias ptr @mempool_alloc(ptr noundef %0, i32 noundef %2) #16
  br label %30

30:                                               ; preds = %28, %24, %17, %11
  %31 = phi ptr [ %29, %28 ], [ null, %11 ], [ %22, %17 ], [ null, %24 ]
  ret ptr %31
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @kmem_cache_alloc(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @mempool_alloc(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define dso_local void @bio_uninit(ptr nocapture %0) #3 {
  ret void
}

; Function Attrs: argmemonly nofree norecurse nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @bio_init(ptr noundef %0, ptr noundef %1, i16 noundef zeroext %2) #4 {
  %4 = getelementptr inbounds %struct.bio, ptr %0, i32 0, i32 8
  %5 = getelementptr inbounds %struct.bio, ptr %0, i32 0, i32 10
  store ptr null, ptr %5, align 4
  %6 = getelementptr inbounds %struct.bio, ptr %0, i32 0, i32 11
  store ptr null, ptr %6, align 4
  %7 = getelementptr inbounds %struct.bio, ptr %0, i32 0, i32 13
  store i16 0, ptr %7, align 4
  %8 = getelementptr inbounds %struct.bio, ptr %0, i32 0, i32 7
  call void @llvm.memset.p0.i64(ptr noundef align 4 dereferenceable(19) %0, i8 0, i64 19, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef align 4 dereferenceable(20) %4, i8 0, i64 20, i1 false)
  store volatile i32 1, ptr %8, align 4
  %9 = getelementptr inbounds %struct.bio, ptr %0, i32 0, i32 15
  store volatile i32 1, ptr %9, align 4
  %10 = getelementptr inbounds %struct.bio, ptr %0, i32 0, i32 9
  store i32 -1, ptr %10, align 4
  %11 = getelementptr inbounds %struct.bio, ptr %0, i32 0, i32 14
  store i16 %2, ptr %11, align 2
  %12 = getelementptr inbounds %struct.bio, ptr %0, i32 0, i32 16
  store ptr %1, ptr %12, align 4
  %13 = getelementptr inbounds %struct.bio, ptr %0, i32 0, i32 17
  store ptr null, ptr %13, align 4
  ret void
}

; Function Attrs: argmemonly nofree nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @bio_reset(ptr noundef %0) #5 {
  tail call void @llvm.memset.p0.i32(ptr noundef align 4 dereferenceable(58) %0, i8 0, i32 58, i1 false)
  %2 = getelementptr inbounds %struct.bio, ptr %0, i32 0, i32 7
  store volatile i32 1, ptr %2, align 4
  ret void
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #6

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @bio_chain(ptr nocapture noundef %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.bio, ptr %0, i32 0, i32 11
  %4 = load ptr, ptr %3, align 4
  %5 = icmp eq ptr %4, null
  br i1 %5, label %6, label %10, !prof !11

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.bio, ptr %0, i32 0, i32 10
  %8 = load ptr, ptr %7, align 4
  %9 = icmp eq ptr %8, null
  br i1 %9, label %11, label %10, !prof !11

10:                                               ; preds = %6, %2
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22block/bio.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 339, 0\0A.popsection", ""() #16, !srcloc !12
  unreachable

11:                                               ; preds = %6
  store ptr %1, ptr %3, align 4
  store ptr @bio_chain_endio, ptr %7, align 4
  %12 = getelementptr inbounds %struct.bio, ptr %1, i32 0, i32 3
  %13 = load i16, ptr %12, align 4
  %14 = or i16 %13, 32
  store i16 %14, ptr %12, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !13
  %15 = getelementptr inbounds %struct.bio, ptr %1, i32 0, i32 7
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %15) #16, !srcloc !14
  %16 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %15, ptr %15, i32 1, ptr elementtype(i32) %15) #16, !srcloc !15
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @bio_chain_endio(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.bio, ptr %0, i32 0, i32 11
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.bio, ptr %0, i32 0, i32 6
  %5 = load i8, ptr %4, align 2
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %12, label %7

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.bio, ptr %3, i32 0, i32 6
  %9 = load i8, ptr %8, align 2
  %10 = icmp eq i8 %9, 0
  br i1 %10, label %11, label %12

11:                                               ; preds = %7
  store i8 %5, ptr %8, align 2
  br label %12

12:                                               ; preds = %11, %7, %1
  tail call void @bio_put(ptr noundef %0) #16
  tail call void @bio_endio(ptr noundef %3)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @bio_alloc_bioset(i32 noundef %0, i16 noundef zeroext %1, ptr noundef %2) #0 {
  %4 = getelementptr inbounds %struct.bio_set, ptr %2, i32 0, i32 4
  %5 = getelementptr inbounds %struct.bio_set, ptr %2, i32 0, i32 4, i32 3
  %6 = load ptr, ptr %5, align 4
  %7 = icmp eq ptr %6, null
  %8 = icmp ne i16 %1, 0
  %9 = and i1 %8, %7
  %10 = load i1, ptr @bio_alloc_bioset.__already_done, align 1
  %11 = xor i1 %10, true
  %12 = select i1 %9, i1 %11, i1 false
  br i1 %12, label %13, label %14, !prof !8

13:                                               ; preds = %3
  store i1 true, ptr @bio_alloc_bioset.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 441, i32 noundef 9, ptr noundef null) #16
  br label %14

14:                                               ; preds = %13, %3
  br i1 %9, label %126, label %15

15:                                               ; preds = %14
  %16 = tail call ptr @llvm.thread.pointer() #16
  %17 = getelementptr inbounds %struct.task_struct, ptr %16, i32 0, i32 114
  %18 = load ptr, ptr %17, align 16
  %19 = icmp eq ptr %18, null
  br i1 %19, label %33, label %20

20:                                               ; preds = %15
  %21 = load ptr, ptr %18, align 4
  %22 = icmp eq ptr %21, null
  br i1 %22, label %23, label %27

23:                                               ; preds = %20
  %24 = getelementptr %struct.bio_list, ptr %18, i32 1
  %25 = load ptr, ptr %24, align 4
  %26 = icmp eq ptr %25, null
  br i1 %26, label %33, label %27

27:                                               ; preds = %23, %20
  %28 = getelementptr inbounds %struct.bio_set, ptr %2, i32 0, i32 9
  %29 = load ptr, ptr %28, align 4
  %30 = icmp eq ptr %29, null
  %31 = and i32 %0, -1025
  %32 = select i1 %30, i32 %0, i32 %31
  br label %33

33:                                               ; preds = %27, %23, %15
  %34 = phi i32 [ %0, %23 ], [ %0, %15 ], [ %32, %27 ]
  %35 = getelementptr inbounds %struct.bio_set, ptr %2, i32 0, i32 3
  %36 = tail call noalias ptr @mempool_alloc(ptr noundef %35, i32 noundef %34) #16
  %37 = icmp eq ptr %36, null
  br i1 %37, label %38, label %43

38:                                               ; preds = %33
  %39 = icmp eq i32 %34, %0
  br i1 %39, label %126, label %40

40:                                               ; preds = %38
  tail call fastcc void @punt_bios_to_rescuer(ptr noundef %2)
  %41 = tail call noalias ptr @mempool_alloc(ptr noundef %35, i32 noundef %0) #16
  %42 = icmp eq ptr %41, null
  br i1 %42, label %126, label %43, !prof !8

43:                                               ; preds = %40, %33
  %44 = phi i32 [ %0, %40 ], [ %34, %33 ]
  %45 = phi ptr [ %41, %40 ], [ %36, %33 ]
  %46 = getelementptr inbounds %struct.bio_set, ptr %2, i32 0, i32 1
  %47 = load i32, ptr %46, align 4
  %48 = getelementptr i8, ptr %45, i32 %47
  %49 = icmp ugt i16 %1, 4
  br i1 %49, label %50, label %107

50:                                               ; preds = %43
  %51 = tail call fastcc ptr @biovec_slab(i16 noundef zeroext %1) #16
  %52 = icmp eq ptr %51, null
  %53 = load i1, ptr @bvec_alloc.__already_done, align 1
  %54 = xor i1 %53, true
  %55 = select i1 %52, i1 %54, i1 false
  br i1 %55, label %56, label %57, !prof !8

56:                                               ; preds = %50
  store i1 true, ptr @bvec_alloc.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 183, i32 noundef 9, ptr noundef null) #16
  br label %57

57:                                               ; preds = %56, %50
  br i1 %52, label %77, label %58

58:                                               ; preds = %57
  %59 = load i32, ptr %51, align 4
  %60 = trunc i32 %59 to i16
  %61 = and i32 %59, 65280
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %63, label %73

63:                                               ; preds = %58
  %64 = getelementptr inbounds %struct.biovec_slab, ptr %51, i32 0, i32 2
  %65 = load ptr, ptr %64, align 4
  %66 = and i32 %44, -599105
  %67 = or i32 %66, 598016
  %68 = tail call noalias align 8 ptr @kmem_cache_alloc(ptr noundef %65, i32 noundef %67) #16
  %69 = icmp eq ptr %68, null
  br i1 %69, label %70, label %112, !prof !8

70:                                               ; preds = %63
  %71 = and i32 %44, 1024
  %72 = icmp eq i32 %71, 0
  br i1 %72, label %77, label %73

73:                                               ; preds = %70, %58
  %74 = phi i16 [ %60, %58 ], [ 256, %70 ]
  %75 = tail call noalias ptr @mempool_alloc(ptr noundef %4, i32 noundef %44) #16
  %76 = icmp eq ptr %75, null
  br i1 %76, label %77, label %112

77:                                               ; preds = %73, %70, %57
  %78 = phi i16 [ %74, %73 ], [ %60, %70 ], [ %1, %57 ]
  %79 = icmp eq i32 %44, %0
  br i1 %79, label %125, label %80

80:                                               ; preds = %77
  tail call fastcc void @punt_bios_to_rescuer(ptr noundef %2)
  %81 = tail call fastcc ptr @biovec_slab(i16 noundef zeroext %78) #16
  %82 = icmp eq ptr %81, null
  %83 = load i1, ptr @bvec_alloc.__already_done, align 1
  %84 = xor i1 %83, true
  %85 = select i1 %82, i1 %84, i1 false
  br i1 %85, label %86, label %87, !prof !8

86:                                               ; preds = %80
  store i1 true, ptr @bvec_alloc.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 183, i32 noundef 9, ptr noundef null) #16
  br label %87

87:                                               ; preds = %86, %80
  br i1 %82, label %125, label %88

88:                                               ; preds = %87
  %89 = load i32, ptr %81, align 4
  %90 = trunc i32 %89 to i16
  %91 = and i32 %89, 65280
  %92 = icmp eq i32 %91, 0
  br i1 %92, label %93, label %103

93:                                               ; preds = %88
  %94 = getelementptr inbounds %struct.biovec_slab, ptr %81, i32 0, i32 2
  %95 = load ptr, ptr %94, align 4
  %96 = and i32 %0, -599105
  %97 = or i32 %96, 598016
  %98 = tail call noalias align 8 ptr @kmem_cache_alloc(ptr noundef %95, i32 noundef %97) #16
  %99 = icmp eq ptr %98, null
  br i1 %99, label %100, label %112, !prof !8

100:                                              ; preds = %93
  %101 = and i32 %0, 1024
  %102 = icmp eq i32 %101, 0
  br i1 %102, label %125, label %103

103:                                              ; preds = %100, %88
  %104 = phi i16 [ %90, %88 ], [ 256, %100 ]
  %105 = tail call noalias ptr @mempool_alloc(ptr noundef %4, i32 noundef %0) #16
  %106 = icmp eq ptr %105, null
  br i1 %106, label %125, label %112, !prof !8

107:                                              ; preds = %43
  %108 = icmp eq i16 %1, 0
  %109 = getelementptr inbounds %struct.bio, ptr %48, i32 0, i32 18
  %110 = select i1 %108, i16 0, i16 4
  %111 = select i1 %108, ptr null, ptr %109
  br label %112

112:                                              ; preds = %107, %103, %93, %73, %63
  %113 = phi i16 [ %104, %103 ], [ %90, %93 ], [ %74, %73 ], [ %60, %63 ], [ %110, %107 ]
  %114 = phi ptr [ %105, %103 ], [ %98, %93 ], [ %75, %73 ], [ %68, %63 ], [ %111, %107 ]
  %115 = getelementptr inbounds %struct.bio, ptr %48, i32 0, i32 8
  %116 = getelementptr inbounds %struct.bio, ptr %48, i32 0, i32 10
  store ptr null, ptr %116, align 4
  %117 = getelementptr inbounds %struct.bio, ptr %48, i32 0, i32 11
  store ptr null, ptr %117, align 4
  %118 = getelementptr inbounds %struct.bio, ptr %48, i32 0, i32 13
  store i16 0, ptr %118, align 4
  %119 = getelementptr inbounds %struct.bio, ptr %48, i32 0, i32 7
  tail call void @llvm.memset.p0.i64(ptr noundef align 4 dereferenceable(19) %48, i8 0, i64 19, i1 false) #16
  tail call void @llvm.memset.p0.i64(ptr noundef align 4 dereferenceable(20) %115, i8 0, i64 20, i1 false) #16
  store volatile i32 1, ptr %119, align 4
  %120 = getelementptr inbounds %struct.bio, ptr %48, i32 0, i32 15
  store volatile i32 1, ptr %120, align 4
  %121 = getelementptr inbounds %struct.bio, ptr %48, i32 0, i32 9
  store i32 -1, ptr %121, align 4
  %122 = getelementptr inbounds %struct.bio, ptr %48, i32 0, i32 14
  store i16 %113, ptr %122, align 2
  %123 = getelementptr inbounds %struct.bio, ptr %48, i32 0, i32 16
  store ptr %114, ptr %123, align 4
  %124 = getelementptr inbounds %struct.bio, ptr %48, i32 0, i32 17
  store ptr %2, ptr %124, align 4
  br label %126

125:                                              ; preds = %103, %100, %87, %77
  tail call void @mempool_free(ptr noundef nonnull %45, ptr noundef %35) #16
  br label %126

126:                                              ; preds = %125, %112, %40, %38, %14
  %127 = phi ptr [ null, %125 ], [ %48, %112 ], [ null, %14 ], [ null, %40 ], [ null, %38 ]
  ret ptr %127
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @punt_bios_to_rescuer(ptr noundef %0) unnamed_addr #0 {
  %2 = alloca ptr, align 8
  %3 = alloca ptr, align 4
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5)
  %6 = getelementptr inbounds %struct.bio_set, ptr %0, i32 0, i32 9
  %7 = load ptr, ptr %6, align 4
  %8 = icmp eq ptr %7, null
  %9 = load i1, ptr @punt_bios_to_rescuer.__already_done, align 1
  %10 = xor i1 %9, true
  %11 = select i1 %8, i1 %10, i1 false
  br i1 %11, label %12, label %13, !prof !8

12:                                               ; preds = %1
  store i1 true, ptr @punt_bios_to_rescuer.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 369, i32 noundef 9, ptr noundef null) #16
  br label %13

13:                                               ; preds = %12, %1
  br i1 %8, label %101, label %14

14:                                               ; preds = %13
  store ptr null, ptr %3, align 4
  store ptr null, ptr %2, align 8
  store ptr null, ptr %5, align 4
  store ptr null, ptr %4, align 8
  %15 = tail call ptr @llvm.thread.pointer() #16
  %16 = getelementptr inbounds %struct.task_struct, ptr %15, i32 0, i32 114
  %17 = load ptr, ptr %16, align 16
  %18 = load ptr, ptr %17, align 4
  %19 = icmp eq ptr %18, null
  br i1 %19, label %44, label %20

20:                                               ; preds = %27, %14
  %21 = phi ptr [ %37, %27 ], [ %18, %14 ]
  %22 = phi ptr [ %36, %27 ], [ %17, %14 ]
  %23 = load ptr, ptr %21, align 4
  store ptr %23, ptr %22, align 4
  %24 = icmp eq ptr %23, null
  br i1 %24, label %25, label %27

25:                                               ; preds = %20
  %26 = getelementptr inbounds %struct.bio_list, ptr %22, i32 0, i32 1
  store ptr null, ptr %26, align 4
  br label %27

27:                                               ; preds = %25, %20
  %28 = getelementptr inbounds %struct.bio, ptr %21, i32 0, i32 17
  %29 = load ptr, ptr %28, align 4
  %30 = icmp eq ptr %29, %0
  %31 = select i1 %30, ptr %2, ptr %4
  store ptr null, ptr %21, align 4
  %32 = select i1 %30, ptr %3, ptr %5
  %33 = load ptr, ptr %32, align 4
  %34 = icmp eq ptr %33, null
  %35 = select i1 %34, ptr %31, ptr %33
  store ptr %21, ptr %35, align 4
  store ptr %21, ptr %32, align 4
  %36 = load ptr, ptr %16, align 16
  %37 = load ptr, ptr %36, align 4
  %38 = icmp eq ptr %37, null
  br i1 %38, label %39, label %20

39:                                               ; preds = %27
  %40 = load ptr, ptr %4, align 8
  %41 = load ptr, ptr %5, align 4
  %42 = ptrtoint ptr %40 to i32
  %43 = ptrtoint ptr %41 to i32
  br label %44

44:                                               ; preds = %39, %14
  %45 = phi i32 [ %43, %39 ], [ 0, %14 ]
  %46 = phi i32 [ %42, %39 ], [ 0, %14 ]
  %47 = phi ptr [ %36, %39 ], [ %17, %14 ]
  store i32 %46, ptr %47, align 4
  %48 = getelementptr inbounds i8, ptr %47, i32 4
  store i32 %45, ptr %48, align 4
  store ptr null, ptr %5, align 4
  store ptr null, ptr %4, align 8
  %49 = load ptr, ptr %16, align 16
  %50 = getelementptr %struct.bio_list, ptr %49, i32 1
  %51 = load ptr, ptr %50, align 4
  %52 = icmp eq ptr %51, null
  br i1 %52, label %79, label %53

53:                                               ; preds = %61, %44
  %54 = phi ptr [ %72, %61 ], [ %51, %44 ]
  %55 = phi ptr [ %71, %61 ], [ %50, %44 ]
  %56 = phi ptr [ %70, %61 ], [ %49, %44 ]
  %57 = load ptr, ptr %54, align 4
  store ptr %57, ptr %55, align 4
  %58 = icmp eq ptr %57, null
  br i1 %58, label %59, label %61

59:                                               ; preds = %53
  %60 = getelementptr %struct.bio_list, ptr %56, i32 1, i32 1
  store ptr null, ptr %60, align 4
  br label %61

61:                                               ; preds = %59, %53
  %62 = getelementptr inbounds %struct.bio, ptr %54, i32 0, i32 17
  %63 = load ptr, ptr %62, align 4
  %64 = icmp eq ptr %63, %0
  %65 = select i1 %64, ptr %2, ptr %4
  store ptr null, ptr %54, align 4
  %66 = select i1 %64, ptr %3, ptr %5
  %67 = load ptr, ptr %66, align 4
  %68 = icmp eq ptr %67, null
  %69 = select i1 %68, ptr %65, ptr %67
  store ptr %54, ptr %69, align 4
  store ptr %54, ptr %66, align 4
  %70 = load ptr, ptr %16, align 16
  %71 = getelementptr %struct.bio_list, ptr %70, i32 1
  %72 = load ptr, ptr %71, align 4
  %73 = icmp eq ptr %72, null
  br i1 %73, label %74, label %53

74:                                               ; preds = %61
  %75 = load ptr, ptr %4, align 8
  %76 = load ptr, ptr %5, align 4
  %77 = ptrtoint ptr %75 to i32
  %78 = ptrtoint ptr %76 to i32
  br label %79

79:                                               ; preds = %74, %44
  %80 = phi i32 [ %78, %74 ], [ 0, %44 ]
  %81 = phi i32 [ %77, %74 ], [ 0, %44 ]
  %82 = phi ptr [ %70, %74 ], [ %49, %44 ]
  %83 = getelementptr %struct.bio_list, ptr %82, i32 1
  store i32 %81, ptr %83, align 4
  %84 = getelementptr %struct.bio_list, ptr %82, i32 1, i32 1
  store i32 %80, ptr %84, align 4
  %85 = getelementptr inbounds %struct.bio_set, ptr %0, i32 0, i32 6
  tail call void @_raw_spin_lock(ptr noundef %85) #16
  %86 = load ptr, ptr %2, align 8
  %87 = icmp eq ptr %86, null
  br i1 %87, label %95, label %88

88:                                               ; preds = %79
  %89 = getelementptr inbounds %struct.bio_set, ptr %0, i32 0, i32 7
  %90 = getelementptr inbounds %struct.bio_set, ptr %0, i32 0, i32 7, i32 1
  %91 = load ptr, ptr %90, align 4
  %92 = icmp eq ptr %91, null
  %93 = select i1 %92, ptr %89, ptr %91
  store ptr %86, ptr %93, align 4
  %94 = load ptr, ptr %3, align 4
  store ptr %94, ptr %90, align 4
  br label %95

95:                                               ; preds = %88, %79
  tail call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !16
  %96 = load i16, ptr %85, align 4
  %97 = add i16 %96, 1
  store i16 %97, ptr %85, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #16, !srcloc !17
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #16, !srcloc !18
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !19
  %98 = load ptr, ptr %6, align 4
  %99 = getelementptr inbounds %struct.bio_set, ptr %0, i32 0, i32 8
  %100 = tail call zeroext i1 @queue_work_on(i32 noundef 16, ptr noundef %98, ptr noundef %99) #16
  br label %101

101:                                              ; preds = %95, %13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @bio_kmalloc(i32 noundef %0, i16 noundef zeroext %1) #0 {
  %3 = icmp ugt i16 %1, 1024
  br i1 %3, label %24, label %4

4:                                                ; preds = %2
  %5 = zext i16 %1 to i32
  %6 = mul nuw nsw i32 %5, 12
  %7 = add nuw nsw i32 %6, 72
  %8 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %7, i32 noundef %0) #17
  %9 = icmp eq ptr %8, null
  br i1 %9, label %24, label %10, !prof !8

10:                                               ; preds = %4
  %11 = icmp eq i16 %1, 0
  %12 = getelementptr inbounds %struct.bio, ptr %8, i32 0, i32 18
  %13 = select i1 %11, ptr null, ptr %12
  %14 = getelementptr inbounds %struct.bio, ptr %8, i32 0, i32 8
  %15 = getelementptr inbounds %struct.bio, ptr %8, i32 0, i32 10
  store ptr null, ptr %15, align 16
  %16 = getelementptr inbounds %struct.bio, ptr %8, i32 0, i32 11
  store ptr null, ptr %16, align 4
  %17 = getelementptr inbounds %struct.bio, ptr %8, i32 0, i32 13
  store i16 0, ptr %17, align 8
  %18 = getelementptr inbounds %struct.bio, ptr %8, i32 0, i32 7
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 64 dereferenceable(19) %8, i8 0, i64 19, i1 false) #16
  tail call void @llvm.memset.p0.i64(ptr noundef align 8 dereferenceable(20) %14, i8 0, i64 20, i1 false) #16
  store volatile i32 1, ptr %18, align 4
  %19 = getelementptr inbounds %struct.bio, ptr %8, i32 0, i32 15
  store volatile i32 1, ptr %19, align 4
  %20 = getelementptr inbounds %struct.bio, ptr %8, i32 0, i32 9
  store i32 -1, ptr %20, align 4
  %21 = getelementptr inbounds %struct.bio, ptr %8, i32 0, i32 14
  store i16 %1, ptr %21, align 2
  %22 = getelementptr inbounds %struct.bio, ptr %8, i32 0, i32 16
  store ptr %13, ptr %22, align 64
  %23 = getelementptr inbounds %struct.bio, ptr %8, i32 0, i32 17
  store ptr null, ptr %23, align 4
  br label %24

24:                                               ; preds = %10, %4, %2
  %25 = phi ptr [ %8, %10 ], [ null, %2 ], [ null, %4 ]
  ret ptr %25
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @zero_fill_bio(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.bio, ptr %0, i32 0, i32 8, i32 1
  %3 = load i32, ptr %2, align 4
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %54, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.bio, ptr %0, i32 0, i32 8, i32 3
  %7 = load i32, ptr %6, align 4
  %8 = getelementptr inbounds %struct.bio, ptr %0, i32 0, i32 8, i32 2
  %9 = load i32, ptr %8, align 4
  %10 = getelementptr inbounds %struct.bio, ptr %0, i32 0, i32 16
  %11 = getelementptr inbounds %struct.bio, ptr %0, i32 0, i32 2
  br label %12

12:                                               ; preds = %49, %5
  %13 = phi i32 [ %7, %5 ], [ %51, %49 ]
  %14 = phi i32 [ %9, %5 ], [ %50, %49 ]
  %15 = phi i32 [ %3, %5 ], [ %52, %49 ]
  %16 = load ptr, ptr %10, align 4
  %17 = getelementptr %struct.bio_vec, ptr %16, i32 %14
  %18 = load ptr, ptr %17, align 4
  %19 = getelementptr %struct.bio_vec, ptr %16, i32 %14, i32 2
  %20 = load i32, ptr %19, align 4
  %21 = add i32 %20, %13
  %22 = lshr i32 %21, 12
  %23 = getelementptr %struct.page, ptr %18, i32 %22
  %24 = getelementptr %struct.bio_vec, ptr %16, i32 %14, i32 1
  %25 = load i32, ptr %24, align 4
  %26 = sub i32 %25, %13
  %27 = tail call i32 @llvm.umin.i32(i32 %15, i32 %26)
  %28 = and i32 %21, 4095
  %29 = sub nuw nsw i32 4096, %28
  %30 = tail call i32 @llvm.umin.i32(i32 %27, i32 %29)
  %31 = load i32, ptr @pgprot_kernel, align 4
  %32 = or i32 %31, 512
  %33 = tail call ptr @__kmap_local_page_prot(ptr noundef %23, i32 noundef %32) #16
  %34 = getelementptr i8, ptr %33, i32 %28
  tail call void @llvm.memset.p0.i32(ptr align 1 %34, i8 0, i32 %30, i1 false) #16
  tail call void @flush_dcache_page(ptr noundef %23) #16
  tail call void @kunmap_local_indexed(ptr noundef %33) #16
  %35 = load i32, ptr %11, align 4
  %36 = and i32 %35, 255
  %37 = add nsw i32 %36, -3
  %38 = and i32 %37, -7
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %49, label %40

40:                                               ; preds = %12
  %41 = load ptr, ptr %10, align 4
  %42 = add i32 %30, %13
  %43 = getelementptr %struct.bio_vec, ptr %41, i32 %14, i32 1
  %44 = load i32, ptr %43, align 4
  %45 = icmp eq i32 %42, %44
  %46 = zext i1 %45 to i32
  %47 = add i32 %14, %46
  %48 = select i1 %45, i32 0, i32 %42
  br label %49

49:                                               ; preds = %40, %12
  %50 = phi i32 [ %14, %12 ], [ %47, %40 ]
  %51 = phi i32 [ %13, %12 ], [ %48, %40 ]
  %52 = sub i32 %15, %30
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %54, label %12

54:                                               ; preds = %49, %1
  ret void
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #7

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @guard_bio_eod(ptr nocapture noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.bio, ptr %0, i32 0, i32 1
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.block_device, ptr %3, i32 0, i32 1
  %5 = load i64, ptr %4, align 8
  %6 = icmp eq i64 %5, 0
  br i1 %6, label %21, label %7

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.bio, ptr %0, i32 0, i32 8
  %9 = load i64, ptr %8, align 4
  %10 = icmp ugt i64 %5, %9
  br i1 %10, label %11, label %21, !prof !11

11:                                               ; preds = %7
  %12 = sub i64 %5, %9
  %13 = getelementptr inbounds %struct.bio, ptr %0, i32 0, i32 8, i32 1
  %14 = load i32, ptr %13, align 4
  %15 = lshr i32 %14, 9
  %16 = zext i32 %15 to i64
  %17 = icmp ult i64 %12, %16
  br i1 %17, label %18, label %21, !prof !8

18:                                               ; preds = %11
  %19 = trunc i64 %12 to i32
  %20 = shl i32 %19, 9
  tail call fastcc void @bio_truncate(ptr noundef %0, i32 noundef %20)
  br label %21

21:                                               ; preds = %18, %11, %7, %1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @bio_truncate(ptr nocapture noundef %0, i32 noundef %1) unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.bio, ptr %0, i32 0, i32 8, i32 1
  %4 = load i32, ptr %3, align 4
  %5 = icmp ugt i32 %4, %1
  br i1 %5, label %6, label %69

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.bio, ptr %0, i32 0, i32 2
  %8 = load i32, ptr %7, align 4
  %9 = and i32 %8, 255
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %68

11:                                               ; preds = %6
  %12 = getelementptr inbounds %struct.bio, ptr %0, i32 0, i32 8, i32 3
  %13 = load i32, ptr %12, align 4
  %14 = getelementptr inbounds %struct.bio, ptr %0, i32 0, i32 8, i32 2
  %15 = load i32, ptr %14, align 4
  %16 = getelementptr inbounds %struct.bio, ptr %0, i32 0, i32 16
  br label %17

17:                                               ; preds = %63, %11
  %18 = phi i32 [ %8, %11 ], [ %48, %63 ]
  %19 = phi i32 [ 0, %11 ], [ %35, %63 ]
  %20 = phi i1 [ false, %11 ], [ %49, %63 ]
  %21 = phi i32 [ %13, %11 ], [ %65, %63 ]
  %22 = phi i32 [ %15, %11 ], [ %64, %63 ]
  %23 = phi i32 [ %4, %11 ], [ %66, %63 ]
  %24 = load ptr, ptr %16, align 4
  %25 = getelementptr %struct.bio_vec, ptr %24, i32 %22, i32 2
  %26 = load i32, ptr %25, align 4
  %27 = add i32 %26, %21
  %28 = getelementptr %struct.bio_vec, ptr %24, i32 %22, i32 1
  %29 = load i32, ptr %28, align 4
  %30 = sub i32 %29, %21
  %31 = tail call i32 @llvm.umin.i32(i32 %23, i32 %30)
  %32 = and i32 %27, 4095
  %33 = sub nuw nsw i32 4096, %32
  %34 = tail call i32 @llvm.umin.i32(i32 %31, i32 %33)
  %35 = add i32 %34, %19
  %36 = icmp ugt i32 %35, %1
  br i1 %36, label %37, label %47

37:                                               ; preds = %17
  %38 = getelementptr %struct.bio_vec, ptr %24, i32 %22
  %39 = load ptr, ptr %38, align 4
  %40 = lshr i32 %27, 12
  %41 = getelementptr %struct.page, ptr %39, i32 %40
  %42 = sub i32 %1, %19
  %43 = select i1 %20, i32 0, i32 %42
  %44 = add i32 %32, %43
  %45 = add nuw nsw i32 %34, %32
  tail call void @zero_user_segments(ptr noundef %41, i32 noundef %44, i32 noundef %45, i32 noundef 0, i32 noundef 0) #16
  %46 = load i32, ptr %7, align 4
  br label %47

47:                                               ; preds = %37, %17
  %48 = phi i32 [ %46, %37 ], [ %18, %17 ]
  %49 = phi i1 [ true, %37 ], [ %20, %17 ]
  %50 = and i32 %48, 255
  %51 = add nsw i32 %50, -3
  %52 = and i32 %51, -7
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %63, label %54

54:                                               ; preds = %47
  %55 = load ptr, ptr %16, align 4
  %56 = add i32 %34, %21
  %57 = getelementptr %struct.bio_vec, ptr %55, i32 %22, i32 1
  %58 = load i32, ptr %57, align 4
  %59 = icmp eq i32 %56, %58
  %60 = zext i1 %59 to i32
  %61 = add i32 %22, %60
  %62 = select i1 %59, i32 0, i32 %56
  br label %63

63:                                               ; preds = %54, %47
  %64 = phi i32 [ %22, %47 ], [ %61, %54 ]
  %65 = phi i32 [ %21, %47 ], [ %62, %54 ]
  %66 = sub i32 %23, %34
  %67 = icmp eq i32 %66, 0
  br i1 %67, label %68, label %17

68:                                               ; preds = %63, %6
  store i32 %1, ptr %3, align 4
  br label %69

69:                                               ; preds = %68, %2
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @bio_put(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.bio, ptr %0, i32 0, i32 3
  %3 = load i16, ptr %2, align 4
  %4 = and i16 %3, 64
  %5 = icmp eq i16 %4, 0
  br i1 %5, label %17, label %6, !prof !11

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.bio, ptr %0, i32 0, i32 15
  %8 = load volatile i32, ptr %7, align 4
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %11, !prof !8

10:                                               ; preds = %6
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22block/bio.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 684, 0\0A.popsection", ""() #16, !srcloc !20
  unreachable

11:                                               ; preds = %6
  tail call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !21
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %7) #16, !srcloc !14
  %12 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %7, ptr %7, i32 1, ptr elementtype(i32) %7) #16, !srcloc !22
  %13 = extractvalue { i32, i32 } %12, 0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !23
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %54

15:                                               ; preds = %11
  %16 = load i16, ptr %2, align 4
  br label %17

17:                                               ; preds = %15, %1
  %18 = phi i16 [ %16, %15 ], [ %3, %1 ]
  %19 = and i16 %18, 8192
  %20 = icmp eq i16 %19, 0
  br i1 %20, label %53, label %21

21:                                               ; preds = %17
  %22 = getelementptr inbounds %struct.bio, ptr %0, i32 0, i32 17
  %23 = load ptr, ptr %22, align 4
  %24 = getelementptr inbounds %struct.bio_set, ptr %23, i32 0, i32 2
  %25 = load ptr, ptr %24, align 4
  %26 = ptrtoint ptr %25 to i32
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !24
  %27 = tail call ptr @llvm.thread.pointer() #16
  %28 = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 2
  %29 = load i32, ptr %28, align 8
  %30 = getelementptr [16 x i32], ptr @__per_cpu_offset, i32 0, i32 %29
  %31 = load i32, ptr %30, align 4
  %32 = add i32 %31, %26
  %33 = inttoptr i32 %32 to ptr
  %34 = load ptr, ptr %33, align 4
  store ptr %34, ptr %0, align 4
  store ptr %0, ptr %33, align 4
  %35 = getelementptr inbounds %struct.bio_alloc_cache, ptr %33, i32 0, i32 1
  %36 = load i32, ptr %35, align 4
  %37 = add i32 %36, 1
  store i32 %37, ptr %35, align 4
  %38 = icmp ult i32 %37, 577
  %39 = icmp eq ptr %0, null
  %40 = or i1 %38, %39
  br i1 %40, label %52, label %41

41:                                               ; preds = %49, %21
  %42 = phi i32 [ %47, %49 ], [ 0, %21 ]
  %43 = phi ptr [ %50, %49 ], [ %0, %21 ]
  %44 = load ptr, ptr %43, align 4
  store ptr %44, ptr %33, align 4
  %45 = load i32, ptr %35, align 4
  %46 = add i32 %45, -1
  store i32 %46, ptr %35, align 4
  tail call fastcc void @bio_free(ptr noundef nonnull %43) #16
  %47 = add nuw nsw i32 %42, 1
  %48 = icmp eq i32 %47, 64
  br i1 %48, label %52, label %49

49:                                               ; preds = %41
  %50 = load ptr, ptr %33, align 4
  %51 = icmp eq ptr %50, null
  br i1 %51, label %52, label %41

52:                                               ; preds = %49, %41, %21
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !25
  br label %54

53:                                               ; preds = %17
  tail call fastcc void @bio_free(ptr noundef %0)
  br label %54

54:                                               ; preds = %53, %52, %11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @bio_free(ptr noundef %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.bio, ptr %0, i32 0, i32 17
  %3 = load ptr, ptr %2, align 4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %28, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.bio_set, ptr %3, i32 0, i32 4
  %7 = getelementptr inbounds %struct.bio, ptr %0, i32 0, i32 16
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.bio, ptr %0, i32 0, i32 14
  %10 = load i16, ptr %9, align 2
  %11 = icmp ugt i16 %10, 256
  br i1 %11, label %12, label %13, !prof !8

12:                                               ; preds = %5
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22block/bio.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 160, 0\0A.popsection", ""() #16, !srcloc !9
  unreachable

13:                                               ; preds = %5
  %14 = icmp eq i16 %10, 256
  br i1 %14, label %15, label %16

15:                                               ; preds = %13
  tail call void @mempool_free(ptr noundef %8, ptr noundef %6) #16
  br label %22

16:                                               ; preds = %13
  %17 = icmp ugt i16 %10, 4
  br i1 %17, label %18, label %22

18:                                               ; preds = %16
  %19 = tail call fastcc ptr @biovec_slab(i16 noundef zeroext %10) #16
  %20 = getelementptr inbounds %struct.biovec_slab, ptr %19, i32 0, i32 2
  %21 = load ptr, ptr %20, align 4
  tail call void @kmem_cache_free(ptr noundef %21, ptr noundef %8) #16
  br label %22

22:                                               ; preds = %18, %16, %15
  %23 = getelementptr inbounds %struct.bio_set, ptr %3, i32 0, i32 1
  %24 = load i32, ptr %23, align 4
  %25 = sub i32 0, %24
  %26 = getelementptr i8, ptr %0, i32 %25
  %27 = getelementptr inbounds %struct.bio_set, ptr %3, i32 0, i32 3
  tail call void @mempool_free(ptr noundef %26, ptr noundef %27) #16
  br label %29

28:                                               ; preds = %1
  tail call void @kfree(ptr noundef %0) #16
  br label %29

29:                                               ; preds = %28, %22
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @__bio_clone_fast(ptr nocapture noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = getelementptr inbounds %struct.bio, ptr %0, i32 0, i32 17
  %4 = load ptr, ptr %3, align 4
  %5 = icmp eq ptr %4, null
  br i1 %5, label %14, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.bio, ptr %0, i32 0, i32 14
  %8 = load i16, ptr %7, align 2
  %9 = icmp ne i16 %8, 0
  %10 = load i1, ptr @__bio_clone_fast.__already_done, align 1
  %11 = xor i1 %10, true
  %12 = select i1 %9, i1 %11, i1 false
  br i1 %12, label %13, label %14, !prof !8

13:                                               ; preds = %6
  store i1 true, ptr @__bio_clone_fast.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 718, i32 noundef 9, ptr noundef null) #16
  br label %14

14:                                               ; preds = %13, %6, %2
  %15 = getelementptr inbounds %struct.bio, ptr %1, i32 0, i32 1
  %16 = load ptr, ptr %15, align 4
  %17 = getelementptr inbounds %struct.bio, ptr %0, i32 0, i32 1
  store ptr %16, ptr %17, align 4
  %18 = getelementptr inbounds %struct.bio, ptr %0, i32 0, i32 3
  %19 = load i16, ptr %18, align 4
  %20 = or i16 %19, 2
  store i16 %20, ptr %18, align 4
  %21 = getelementptr inbounds %struct.bio, ptr %1, i32 0, i32 3
  %22 = load i16, ptr %21, align 4
  %23 = and i16 %22, 128
  %24 = icmp eq i16 %23, 0
  br i1 %24, label %28, label %25

25:                                               ; preds = %14
  %26 = or i16 %19, 130
  store i16 %26, ptr %18, align 4
  %27 = load i16, ptr %21, align 4
  br label %28

28:                                               ; preds = %25, %14
  %29 = phi i16 [ %26, %25 ], [ %20, %14 ]
  %30 = phi i16 [ %27, %25 ], [ %22, %14 ]
  %31 = and i16 %30, 2048
  %32 = icmp eq i16 %31, 0
  br i1 %32, label %35, label %33

33:                                               ; preds = %28
  %34 = or i16 %29, 2048
  store i16 %34, ptr %18, align 4
  br label %35

35:                                               ; preds = %33, %28
  %36 = getelementptr inbounds %struct.bio, ptr %1, i32 0, i32 2
  %37 = load i32, ptr %36, align 4
  %38 = getelementptr inbounds %struct.bio, ptr %0, i32 0, i32 2
  store i32 %37, ptr %38, align 4
  %39 = getelementptr inbounds %struct.bio, ptr %1, i32 0, i32 4
  %40 = load i16, ptr %39, align 2
  %41 = getelementptr inbounds %struct.bio, ptr %0, i32 0, i32 4
  store i16 %40, ptr %41, align 2
  %42 = getelementptr inbounds %struct.bio, ptr %1, i32 0, i32 5
  %43 = load i16, ptr %42, align 4
  %44 = getelementptr inbounds %struct.bio, ptr %0, i32 0, i32 5
  store i16 %43, ptr %44, align 4
  %45 = getelementptr inbounds %struct.bio, ptr %0, i32 0, i32 8
  %46 = getelementptr inbounds %struct.bio, ptr %1, i32 0, i32 8
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(20) %45, ptr noundef align 4 dereferenceable(20) %46, i32 20, i1 false)
  %47 = getelementptr inbounds %struct.bio, ptr %1, i32 0, i32 16
  %48 = load ptr, ptr %47, align 4
  %49 = getelementptr inbounds %struct.bio, ptr %0, i32 0, i32 16
  store ptr %48, ptr %49, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @bio_clone_fast(ptr nocapture noundef readonly %0, i32 noundef %1, ptr noundef %2) #0 {
  %4 = tail call ptr @bio_alloc_bioset(i32 noundef %1, i16 noundef zeroext 0, ptr noundef %2)
  %5 = icmp eq ptr %4, null
  br i1 %5, label %54, label %6

6:                                                ; preds = %3
  %7 = getelementptr inbounds %struct.bio, ptr %4, i32 0, i32 17
  %8 = load ptr, ptr %7, align 4
  %9 = icmp eq ptr %8, null
  br i1 %9, label %18, label %10

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.bio, ptr %4, i32 0, i32 14
  %12 = load i16, ptr %11, align 2
  %13 = icmp ne i16 %12, 0
  %14 = load i1, ptr @__bio_clone_fast.__already_done, align 1
  %15 = xor i1 %14, true
  %16 = select i1 %13, i1 %15, i1 false
  br i1 %16, label %17, label %18, !prof !8

17:                                               ; preds = %10
  store i1 true, ptr @__bio_clone_fast.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 718, i32 noundef 9, ptr noundef null) #16
  br label %18

18:                                               ; preds = %17, %10, %6
  %19 = getelementptr inbounds %struct.bio, ptr %0, i32 0, i32 1
  %20 = load ptr, ptr %19, align 4
  %21 = getelementptr inbounds %struct.bio, ptr %4, i32 0, i32 1
  store ptr %20, ptr %21, align 4
  %22 = getelementptr inbounds %struct.bio, ptr %4, i32 0, i32 3
  %23 = load i16, ptr %22, align 4
  %24 = or i16 %23, 2
  store i16 %24, ptr %22, align 4
  %25 = getelementptr inbounds %struct.bio, ptr %0, i32 0, i32 3
  %26 = load i16, ptr %25, align 4
  %27 = and i16 %26, 128
  %28 = icmp eq i16 %27, 0
  br i1 %28, label %32, label %29

29:                                               ; preds = %18
  %30 = or i16 %23, 130
  store i16 %30, ptr %22, align 4
  %31 = load i16, ptr %25, align 4
  br label %32

32:                                               ; preds = %29, %18
  %33 = phi i16 [ %30, %29 ], [ %24, %18 ]
  %34 = phi i16 [ %31, %29 ], [ %26, %18 ]
  %35 = and i16 %34, 2048
  %36 = icmp eq i16 %35, 0
  br i1 %36, label %39, label %37

37:                                               ; preds = %32
  %38 = or i16 %33, 2048
  store i16 %38, ptr %22, align 4
  br label %39

39:                                               ; preds = %37, %32
  %40 = getelementptr inbounds %struct.bio, ptr %0, i32 0, i32 2
  %41 = load i32, ptr %40, align 4
  %42 = getelementptr inbounds %struct.bio, ptr %4, i32 0, i32 2
  store i32 %41, ptr %42, align 4
  %43 = getelementptr inbounds %struct.bio, ptr %0, i32 0, i32 4
  %44 = load i16, ptr %43, align 2
  %45 = getelementptr inbounds %struct.bio, ptr %4, i32 0, i32 4
  store i16 %44, ptr %45, align 2
  %46 = getelementptr inbounds %struct.bio, ptr %0, i32 0, i32 5
  %47 = load i16, ptr %46, align 4
  %48 = getelementptr inbounds %struct.bio, ptr %4, i32 0, i32 5
  store i16 %47, ptr %48, align 4
  %49 = getelementptr inbounds %struct.bio, ptr %4, i32 0, i32 8
  %50 = getelementptr inbounds %struct.bio, ptr %0, i32 0, i32 8
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(20) %49, ptr noundef align 4 dereferenceable(20) %50, i32 20, i1 false) #16
  %51 = getelementptr inbounds %struct.bio, ptr %0, i32 0, i32 16
  %52 = load ptr, ptr %51, align 4
  %53 = getelementptr inbounds %struct.bio, ptr %4, i32 0, i32 16
  store ptr %52, ptr %53, align 4
  br label %54

54:                                               ; preds = %39, %3
  ret ptr %4
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @bio_devname(ptr nocapture noundef readonly %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.bio, ptr %0, i32 0, i32 1
  %4 = load ptr, ptr %3, align 4
  %5 = tail call ptr @bdevname(ptr noundef %4, ptr noundef %1) #16
  ret ptr %5
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @bdevname(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @bio_add_hw_page(ptr nocapture noundef readonly %0, ptr nocapture noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, ptr nocapture noundef writeonly %6) local_unnamed_addr #0 {
  %8 = getelementptr inbounds %struct.bio, ptr %1, i32 0, i32 3
  %9 = load i16, ptr %8, align 4
  %10 = and i16 %9, 2
  %11 = icmp ne i16 %10, 0
  %12 = load i1, ptr @bio_add_hw_page.__already_done, align 1
  %13 = xor i1 %12, true
  %14 = select i1 %11, i1 %13, i1 false
  br i1 %14, label %15, label %16, !prof !8

15:                                               ; preds = %7
  store i1 true, ptr @bio_add_hw_page.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 894, i32 noundef 9, ptr noundef null) #16
  br label %16

16:                                               ; preds = %15, %7
  br i1 %11, label %114, label %17

17:                                               ; preds = %16
  %18 = getelementptr inbounds %struct.bio, ptr %1, i32 0, i32 8, i32 1
  %19 = load i32, ptr %18, align 4
  %20 = add i32 %19, %3
  %21 = lshr i32 %20, 9
  %22 = icmp ugt i32 %21, %5
  br i1 %22, label %114, label %23

23:                                               ; preds = %17
  %24 = getelementptr inbounds %struct.bio, ptr %1, i32 0, i32 13
  %25 = load i16, ptr %24, align 4
  %26 = icmp eq i16 %25, 0
  br i1 %26, label %90, label %27

27:                                               ; preds = %23
  %28 = getelementptr inbounds %struct.bio, ptr %1, i32 0, i32 16
  %29 = load ptr, ptr %28, align 4
  %30 = zext i16 %25 to i32
  %31 = add nsw i32 %30, -1
  %32 = getelementptr %struct.bio_vec, ptr %29, i32 %31
  %33 = getelementptr inbounds %struct.request_queue, ptr %0, i32 0, i32 32, i32 1
  %34 = load i32, ptr %33, align 4
  %35 = load ptr, ptr %32, align 4
  %36 = load ptr, ptr @mem_map, align 4
  %37 = ptrtoint ptr %35 to i32
  %38 = ptrtoint ptr %36 to i32
  %39 = sub i32 %37, %38
  %40 = lshr exact i32 %39, 5
  %41 = load i32, ptr @__pv_phys_pfn_offset, align 4
  %42 = add i32 %40, %41
  %43 = shl i32 %42, 12
  %44 = getelementptr %struct.bio_vec, ptr %29, i32 %31, i32 2
  %45 = load i32, ptr %44, align 4
  %46 = add i32 %43, %45
  %47 = ptrtoint ptr %2 to i32
  %48 = sub i32 %47, %38
  %49 = lshr exact i32 %48, 5
  %50 = add i32 %49, %41
  %51 = shl i32 %50, 12
  %52 = add i32 %3, -1
  %53 = add i32 %52, %4
  %54 = add i32 %53, %51
  %55 = or i32 %46, %34
  %56 = or i32 %54, %34
  %57 = icmp eq i32 %55, %56
  br i1 %57, label %58, label %72

58:                                               ; preds = %27
  %59 = getelementptr %struct.bio_vec, ptr %29, i32 %31, i32 1
  %60 = load i32, ptr %59, align 4
  %61 = add i32 %60, %3
  %62 = getelementptr inbounds %struct.request_queue, ptr %0, i32 0, i32 32, i32 7
  %63 = load i32, ptr %62, align 4
  %64 = icmp ugt i32 %61, %63
  br i1 %64, label %72, label %65

65:                                               ; preds = %58
  %66 = tail call fastcc zeroext i1 @__bio_try_merge_page(ptr noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef %4, ptr noundef %6) #16
  br i1 %66, label %114, label %67

67:                                               ; preds = %65
  %68 = load ptr, ptr %28, align 4
  %69 = load i16, ptr %24, align 4
  %70 = zext i16 %69 to i32
  %71 = add nsw i32 %70, -1
  br label %72

72:                                               ; preds = %67, %58, %27
  %73 = phi i32 [ %71, %67 ], [ %31, %58 ], [ %31, %27 ]
  %74 = phi i16 [ %69, %67 ], [ %25, %58 ], [ %25, %27 ]
  %75 = phi ptr [ %68, %67 ], [ %29, %58 ], [ %29, %27 ]
  %76 = getelementptr inbounds %struct.request_queue, ptr %0, i32 0, i32 32, i32 2
  %77 = load i32, ptr %76, align 4
  %78 = icmp eq i32 %77, 0
  br i1 %78, label %90, label %79

79:                                               ; preds = %72
  %80 = and i32 %77, %4
  %81 = icmp eq i32 %80, 0
  br i1 %81, label %82, label %114

82:                                               ; preds = %79
  %83 = getelementptr %struct.bio_vec, ptr %75, i32 %73, i32 2
  %84 = load i32, ptr %83, align 4
  %85 = getelementptr %struct.bio_vec, ptr %75, i32 %73, i32 1
  %86 = load i32, ptr %85, align 4
  %87 = add i32 %86, %84
  %88 = and i32 %87, %77
  %89 = icmp eq i32 %88, 0
  br i1 %89, label %90, label %114

90:                                               ; preds = %82, %72, %23
  %91 = phi i16 [ %74, %72 ], [ %74, %82 ], [ 0, %23 ]
  %92 = getelementptr inbounds %struct.bio, ptr %1, i32 0, i32 14
  %93 = load i16, ptr %92, align 2
  %94 = icmp ult i16 %91, %93
  br i1 %94, label %95, label %114

95:                                               ; preds = %90
  %96 = load i32, ptr %18, align 4
  %97 = xor i32 %3, -1
  %98 = icmp ugt i32 %96, %97
  br i1 %98, label %114, label %99

99:                                               ; preds = %95
  %100 = getelementptr inbounds %struct.request_queue, ptr %0, i32 0, i32 32, i32 21
  %101 = load i16, ptr %100, align 4
  %102 = icmp ult i16 %91, %101
  br i1 %102, label %103, label %114

103:                                              ; preds = %99
  %104 = getelementptr inbounds %struct.bio, ptr %1, i32 0, i32 16
  %105 = load ptr, ptr %104, align 4
  %106 = zext i16 %91 to i32
  %107 = getelementptr %struct.bio_vec, ptr %105, i32 %106
  store ptr %2, ptr %107, align 4
  %108 = getelementptr %struct.bio_vec, ptr %105, i32 %106, i32 1
  store i32 %3, ptr %108, align 4
  %109 = getelementptr %struct.bio_vec, ptr %105, i32 %106, i32 2
  store i32 %4, ptr %109, align 4
  %110 = load i16, ptr %24, align 4
  %111 = add i16 %110, 1
  store i16 %111, ptr %24, align 4
  %112 = load i32, ptr %18, align 4
  %113 = add i32 %112, %3
  store i32 %113, ptr %18, align 4
  br label %114

114:                                              ; preds = %103, %99, %95, %90, %82, %79, %65, %17, %16
  %115 = phi i32 [ %3, %103 ], [ 0, %16 ], [ 0, %17 ], [ %3, %65 ], [ 0, %82 ], [ 0, %95 ], [ 0, %99 ], [ 0, %79 ], [ 0, %90 ]
  ret i32 %115
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @bio_add_pc_page(ptr nocapture noundef readonly %0, ptr nocapture noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef %4) #0 {
  %6 = alloca i8, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %6) #16
  %7 = getelementptr inbounds %struct.request_queue, ptr %0, i32 0, i32 32, i32 3
  %8 = load i32, ptr %7, align 4
  %9 = call i32 @bio_add_hw_page(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %8, ptr noundef nonnull %6)
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %6) #16
  ret i32 %9
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @bio_add_zone_append_page(ptr nocapture noundef readonly %0, ptr nocapture readnone %1, i32 %2, i32 %3) #0 {
  %5 = getelementptr inbounds %struct.bio, ptr %0, i32 0, i32 2
  %6 = load i32, ptr %5, align 4
  %7 = and i32 %6, 255
  %8 = icmp ne i32 %7, 13
  %9 = load i1, ptr @bio_add_zone_append_page.__already_done, align 1
  %10 = xor i1 %9, true
  %11 = select i1 %8, i1 %10, i1 false
  br i1 %11, label %12, label %13, !prof !8

12:                                               ; preds = %4
  store i1 true, ptr @bio_add_zone_append_page.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 974, i32 noundef 9, ptr noundef null) #16
  br label %13

13:                                               ; preds = %12, %4
  br i1 %8, label %17, label %14

14:                                               ; preds = %13
  %15 = load i1, ptr @bio_add_zone_append_page.__already_done.1, align 1
  br i1 %15, label %17, label %16, !prof !11

16:                                               ; preds = %14
  store i1 true, ptr @bio_add_zone_append_page.__already_done.1, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 977, i32 noundef 9, ptr noundef null) #16
  br label %17

17:                                               ; preds = %16, %14, %13
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @__bio_add_page(ptr nocapture noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) #0 {
  %5 = getelementptr inbounds %struct.bio, ptr %0, i32 0, i32 16
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.bio, ptr %0, i32 0, i32 13
  %8 = load i16, ptr %7, align 4
  %9 = zext i16 %8 to i32
  %10 = getelementptr %struct.bio_vec, ptr %6, i32 %9
  %11 = getelementptr inbounds %struct.bio, ptr %0, i32 0, i32 3
  %12 = load i16, ptr %11, align 4
  %13 = and i16 %12, 2
  %14 = icmp ne i16 %13, 0
  %15 = load i1, ptr @__bio_add_page.__already_done, align 1
  %16 = xor i1 %15, true
  %17 = select i1 %14, i1 %16, i1 false
  br i1 %17, label %18, label %20, !prof !8

18:                                               ; preds = %4
  store i1 true, ptr @__bio_add_page.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1000, i32 noundef 9, ptr noundef null) #16
  %19 = load i16, ptr %7, align 4
  br label %20

20:                                               ; preds = %18, %4
  %21 = phi i16 [ %19, %18 ], [ %8, %4 ]
  %22 = getelementptr inbounds %struct.bio, ptr %0, i32 0, i32 14
  %23 = load i16, ptr %22, align 2
  %24 = icmp ult i16 %21, %23
  br i1 %24, label %25, label %30

25:                                               ; preds = %20
  %26 = getelementptr inbounds %struct.bio, ptr %0, i32 0, i32 8, i32 1
  %27 = load i32, ptr %26, align 4
  %28 = xor i32 %2, -1
  %29 = icmp ugt i32 %27, %28
  br label %30

30:                                               ; preds = %25, %20
  %31 = phi i1 [ true, %20 ], [ %29, %25 ]
  %32 = load i1, ptr @__bio_add_page.__already_done.2, align 1
  %33 = xor i1 %32, true
  %34 = select i1 %31, i1 %33, i1 false
  br i1 %34, label %35, label %36, !prof !8

35:                                               ; preds = %30
  store i1 true, ptr @__bio_add_page.__already_done.2, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1001, i32 noundef 9, ptr noundef null) #16
  br label %36

36:                                               ; preds = %35, %30
  store ptr %1, ptr %10, align 4
  %37 = getelementptr %struct.bio_vec, ptr %6, i32 %9, i32 2
  store i32 %3, ptr %37, align 4
  %38 = getelementptr %struct.bio_vec, ptr %6, i32 %9, i32 1
  store i32 %2, ptr %38, align 4
  %39 = getelementptr inbounds %struct.bio, ptr %0, i32 0, i32 8, i32 1
  %40 = load i32, ptr %39, align 4
  %41 = add i32 %40, %2
  store i32 %41, ptr %39, align 4
  %42 = load i16, ptr %7, align 4
  %43 = add i16 %42, 1
  store i16 %43, ptr %7, align 4
  %44 = load i16, ptr %11, align 4
  %45 = and i16 %44, 8
  %46 = icmp eq i16 %45, 0
  br i1 %46, label %47, label %64

47:                                               ; preds = %36
  %48 = getelementptr inbounds %struct.page, ptr %1, i32 0, i32 1
  %49 = load volatile i32, ptr %48, align 4
  %50 = and i32 %49, 1
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %54, label %52, !prof !11

52:                                               ; preds = %47
  %53 = add i32 %49, -1
  br label %56

54:                                               ; preds = %47
  %55 = ptrtoint ptr %1 to i32
  br label %56

56:                                               ; preds = %54, %52
  %57 = phi i32 [ %53, %52 ], [ %55, %54 ]
  %58 = inttoptr i32 %57 to ptr
  %59 = load volatile i32, ptr %58, align 4
  %60 = and i32 %59, 64
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %64, label %62, !prof !11

62:                                               ; preds = %56
  %63 = or i16 %44, 8
  store i16 %63, ptr %11, align 4
  br label %64

64:                                               ; preds = %62, %56, %36
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @bio_add_page(ptr nocapture noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) #0 {
  %5 = alloca i8, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %5) #16
  %6 = call fastcc zeroext i1 @__bio_try_merge_page(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef nonnull %5)
  br i1 %6, label %19, label %7

7:                                                ; preds = %4
  %8 = getelementptr inbounds %struct.bio, ptr %0, i32 0, i32 13
  %9 = load i16, ptr %8, align 4
  %10 = getelementptr inbounds %struct.bio, ptr %0, i32 0, i32 14
  %11 = load i16, ptr %10, align 2
  %12 = icmp ult i16 %9, %11
  br i1 %12, label %13, label %19

13:                                               ; preds = %7
  %14 = getelementptr inbounds %struct.bio, ptr %0, i32 0, i32 8, i32 1
  %15 = load i32, ptr %14, align 4
  %16 = xor i32 %2, -1
  %17 = icmp ugt i32 %15, %16
  br i1 %17, label %19, label %18

18:                                               ; preds = %13
  tail call void @__bio_add_page(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3)
  br label %19

19:                                               ; preds = %18, %13, %7, %4
  %20 = phi i32 [ 0, %13 ], [ %2, %18 ], [ %2, %4 ], [ 0, %7 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %5) #16
  ret i32 %20
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc zeroext i1 @__bio_try_merge_page(ptr nocapture noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr nocapture noundef writeonly %4) unnamed_addr #0 {
  %6 = getelementptr inbounds %struct.bio, ptr %0, i32 0, i32 3
  %7 = load i16, ptr %6, align 4
  %8 = and i16 %7, 2
  %9 = icmp ne i16 %8, 0
  %10 = load i1, ptr @__bio_try_merge_page.__already_done, align 1
  %11 = xor i1 %10, true
  %12 = select i1 %9, i1 %11, i1 false
  br i1 %12, label %13, label %14, !prof !8

13:                                               ; preds = %5
  store i1 true, ptr @__bio_try_merge_page.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 835, i32 noundef 9, ptr noundef null) #16
  br label %14

14:                                               ; preds = %13, %5
  br i1 %9, label %70, label %15

15:                                               ; preds = %14
  %16 = getelementptr inbounds %struct.bio, ptr %0, i32 0, i32 13
  %17 = load i16, ptr %16, align 4
  %18 = icmp eq i16 %17, 0
  br i1 %18, label %70, label %19

19:                                               ; preds = %15
  %20 = zext i16 %17 to i32
  %21 = getelementptr inbounds %struct.bio, ptr %0, i32 0, i32 16
  %22 = load ptr, ptr %21, align 4
  %23 = add nsw i32 %20, -1
  %24 = getelementptr %struct.bio_vec, ptr %22, i32 %23
  %25 = getelementptr %struct.bio_vec, ptr %22, i32 %23, i32 2
  %26 = load i32, ptr %25, align 4
  %27 = getelementptr %struct.bio_vec, ptr %22, i32 %23, i32 1
  %28 = load i32, ptr %27, align 4
  %29 = add i32 %28, %26
  %30 = load ptr, ptr %24, align 4
  %31 = load ptr, ptr @mem_map, align 4
  %32 = ptrtoint ptr %30 to i32
  %33 = ptrtoint ptr %31 to i32
  %34 = sub i32 %32, %33
  %35 = lshr exact i32 %34, 5
  %36 = load i32, ptr @__pv_phys_pfn_offset, align 4
  %37 = add i32 %35, %36
  %38 = shl i32 %37, 12
  %39 = add i32 %38, %29
  %40 = ptrtoint ptr %1 to i32
  %41 = sub i32 %40, %33
  %42 = lshr exact i32 %41, 5
  %43 = add i32 %42, %36
  %44 = shl i32 %43, 12
  %45 = add i32 %44, %3
  %46 = icmp eq i32 %39, %45
  br i1 %46, label %47, label %70

47:                                               ; preds = %19
  %48 = add i32 %39, -1
  %49 = and i32 %48, -4096
  %50 = icmp eq i32 %49, %44
  %51 = zext i1 %50 to i8
  store i8 %51, ptr %4, align 1
  br i1 %50, label %59, label %52

52:                                               ; preds = %47
  %53 = load ptr, ptr %24, align 4
  %54 = lshr i32 %29, 12
  %55 = getelementptr %struct.page, ptr %53, i32 %54
  %56 = lshr i32 %3, 12
  %57 = getelementptr %struct.page, ptr %1, i32 %56
  %58 = icmp eq ptr %55, %57
  br i1 %58, label %59, label %70

59:                                               ; preds = %52, %47
  %60 = getelementptr inbounds %struct.bio, ptr %0, i32 0, i32 8, i32 1
  %61 = load i32, ptr %60, align 4
  %62 = xor i32 %2, -1
  %63 = icmp ugt i32 %61, %62
  br i1 %63, label %64, label %65

64:                                               ; preds = %59
  store i8 0, ptr %4, align 1
  br label %70

65:                                               ; preds = %59
  %66 = load i32, ptr %27, align 4
  %67 = add i32 %66, %2
  store i32 %67, ptr %27, align 4
  %68 = load i32, ptr %60, align 4
  %69 = add i32 %68, %2
  store i32 %69, ptr %60, align 4
  br label %70

70:                                               ; preds = %65, %64, %52, %19, %15, %14
  %71 = phi i1 [ false, %14 ], [ false, %64 ], [ true, %65 ], [ false, %15 ], [ false, %52 ], [ false, %19 ]
  ret i1 %71
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local zeroext i1 @bio_add_folio(ptr nocapture noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #0 {
  %5 = alloca i8, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %5) #16
  %6 = call fastcc zeroext i1 @__bio_try_merge_page(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef nonnull %5) #16
  br i1 %6, label %19, label %7

7:                                                ; preds = %4
  %8 = getelementptr inbounds %struct.bio, ptr %0, i32 0, i32 13
  %9 = load i16, ptr %8, align 4
  %10 = getelementptr inbounds %struct.bio, ptr %0, i32 0, i32 14
  %11 = load i16, ptr %10, align 2
  %12 = icmp ult i16 %9, %11
  br i1 %12, label %13, label %19

13:                                               ; preds = %7
  %14 = getelementptr inbounds %struct.bio, ptr %0, i32 0, i32 8, i32 1
  %15 = load i32, ptr %14, align 4
  %16 = xor i32 %2, -1
  %17 = icmp ugt i32 %15, %16
  br i1 %17, label %19, label %18

18:                                               ; preds = %13
  tail call void @__bio_add_page(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) #16
  br label %19

19:                                               ; preds = %18, %13, %7, %4
  %20 = phi i32 [ 0, %13 ], [ %2, %18 ], [ %2, %4 ], [ 0, %7 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %5) #16
  %21 = icmp sgt i32 %20, 0
  ret i1 %21
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @__bio_release_pages(ptr nocapture noundef readonly %0, i1 noundef zeroext %1) #0 {
  %3 = getelementptr inbounds %struct.bio, ptr %0, i32 0, i32 13
  %4 = load i16, ptr %3, align 4
  %5 = icmp eq i16 %4, 0
  br i1 %5, label %69, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.bio, ptr %0, i32 0, i32 16
  br label %8

8:                                                ; preds = %65, %6
  %9 = phi i32 [ 0, %6 ], [ %36, %65 ]
  %10 = phi i32 [ 0, %6 ], [ %35, %65 ]
  %11 = phi ptr [ null, %6 ], [ %25, %65 ]
  %12 = load ptr, ptr %7, align 4
  %13 = icmp eq i32 %9, 0
  br i1 %13, label %16, label %14

14:                                               ; preds = %8
  %15 = getelementptr %struct.page, ptr %11, i32 1
  br label %24

16:                                               ; preds = %8
  %17 = getelementptr %struct.bio_vec, ptr %12, i32 %10
  %18 = load ptr, ptr %17, align 4
  %19 = getelementptr %struct.bio_vec, ptr %12, i32 %10, i32 2
  %20 = load i32, ptr %19, align 4
  %21 = lshr i32 %20, 12
  %22 = getelementptr %struct.page, ptr %18, i32 %21
  %23 = and i32 %20, 4095
  br label %24

24:                                               ; preds = %16, %14
  %25 = phi ptr [ %22, %16 ], [ %15, %14 ]
  %26 = phi i32 [ %23, %16 ], [ 0, %14 ]
  %27 = sub nuw nsw i32 4096, %26
  %28 = getelementptr %struct.bio_vec, ptr %12, i32 %10, i32 1
  %29 = load i32, ptr %28, align 4
  %30 = sub i32 %29, %9
  %31 = tail call i32 @llvm.umin.i32(i32 %27, i32 %30) #16
  %32 = add i32 %31, %9
  %33 = icmp eq i32 %32, %29
  %34 = zext i1 %33 to i32
  %35 = add nuw nsw i32 %10, %34
  %36 = select i1 %33, i32 0, i32 %32
  br i1 %1, label %37, label %48

37:                                               ; preds = %24
  %38 = load volatile i32, ptr %25, align 4
  %39 = and i32 %38, 65536
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %41, label %48

41:                                               ; preds = %37
  %42 = getelementptr inbounds %struct.page, ptr %25, i32 0, i32 1
  %43 = load volatile i32, ptr %42, align 4
  %44 = and i32 %43, 1
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %46, label %48

46:                                               ; preds = %41
  %47 = tail call i32 @set_page_dirty_lock(ptr noundef %25) #16
  br label %48

48:                                               ; preds = %46, %41, %37, %24
  %49 = getelementptr inbounds %struct.page, ptr %25, i32 0, i32 1
  %50 = load volatile i32, ptr %49, align 4
  %51 = and i32 %50, 1
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %55, label %53, !prof !11

53:                                               ; preds = %48
  %54 = add i32 %50, -1
  br label %57

55:                                               ; preds = %48
  %56 = ptrtoint ptr %25 to i32
  br label %57

57:                                               ; preds = %55, %53
  %58 = phi i32 [ %54, %53 ], [ %56, %55 ]
  %59 = inttoptr i32 %58 to ptr
  %60 = getelementptr inbounds %struct.page, ptr %59, i32 0, i32 3
  tail call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !21
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %60) #16, !srcloc !14
  %61 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %60, ptr %60, i32 1, ptr elementtype(i32) %60) #16, !srcloc !22
  %62 = extractvalue { i32, i32 } %61, 0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !23
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %64, label %65

64:                                               ; preds = %57
  tail call void @__put_page(ptr noundef %59) #16
  br label %65

65:                                               ; preds = %64, %57
  %66 = load i16, ptr %3, align 4
  %67 = zext i16 %66 to i32
  %68 = icmp ult i32 %35, %67
  br i1 %68, label %8, label %69

69:                                               ; preds = %65, %2
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @set_page_dirty_lock(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @bio_iov_bvec_set(ptr nocapture noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.iov_iter, ptr %1, i32 0, i32 4
  %4 = load i32, ptr %3, align 8
  %5 = getelementptr inbounds %struct.bio, ptr %0, i32 0, i32 14
  %6 = load i16, ptr %5, align 2
  %7 = icmp ne i16 %6, 0
  %8 = load i1, ptr @bio_iov_bvec_set.__already_done, align 1
  %9 = xor i1 %8, true
  %10 = select i1 %7, i1 %9, i1 false
  br i1 %10, label %11, label %12, !prof !8

11:                                               ; preds = %2
  store i1 true, ptr @bio_iov_bvec_set.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1078, i32 noundef 9, ptr noundef null) #16
  br label %12

12:                                               ; preds = %11, %2
  %13 = getelementptr inbounds %struct.bio, ptr %0, i32 0, i32 2
  %14 = load i32, ptr %13, align 4
  %15 = and i32 %14, 255
  %16 = icmp eq i32 %15, 13
  br i1 %16, label %17, label %29

17:                                               ; preds = %12
  %18 = getelementptr inbounds %struct.bio, ptr %0, i32 0, i32 1
  %19 = load ptr, ptr %18, align 4
  %20 = getelementptr inbounds %struct.block_device, ptr %19, i32 0, i32 18
  %21 = load ptr, ptr %20, align 4
  %22 = getelementptr inbounds %struct.request_queue, ptr %21, i32 0, i32 32, i32 17
  %23 = load i32, ptr %22, align 4
  %24 = getelementptr inbounds %struct.request_queue, ptr %21, i32 0, i32 32, i32 6
  %25 = load i32, ptr %24, align 4
  %26 = tail call i32 @llvm.umin.i32(i32 %23, i32 %25) #16
  %27 = shl i32 %26, 9
  %28 = tail call i32 @llvm.umin.i32(i32 %4, i32 %27)
  br label %29

29:                                               ; preds = %17, %12
  %30 = phi i32 [ %28, %17 ], [ %4, %12 ]
  %31 = getelementptr inbounds %struct.iov_iter, ptr %1, i32 0, i32 6
  %32 = load i32, ptr %31, align 8
  %33 = trunc i32 %32 to i16
  %34 = getelementptr inbounds %struct.bio, ptr %0, i32 0, i32 13
  store i16 %33, ptr %34, align 4
  %35 = getelementptr inbounds %struct.iov_iter, ptr %1, i32 0, i32 5
  %36 = load ptr, ptr %35, align 4
  %37 = getelementptr inbounds %struct.bio, ptr %0, i32 0, i32 16
  store ptr %36, ptr %37, align 4
  %38 = getelementptr inbounds %struct.iov_iter, ptr %1, i32 0, i32 3
  %39 = load i32, ptr %38, align 4
  %40 = getelementptr inbounds %struct.bio, ptr %0, i32 0, i32 8, i32 3
  store i32 %39, ptr %40, align 4
  %41 = getelementptr inbounds %struct.bio, ptr %0, i32 0, i32 8, i32 1
  store i32 %30, ptr %41, align 4
  %42 = getelementptr inbounds %struct.bio, ptr %0, i32 0, i32 3
  %43 = load i16, ptr %42, align 4
  %44 = or i16 %43, 3
  store i16 %44, ptr %42, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @bio_iov_iter_get_pages(ptr noundef %0, ptr noundef %1) #0 {
  %3 = alloca i8, align 1
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8, align 1
  %7 = load i8, ptr %1, align 8
  %8 = icmp eq i8 %7, 2
  %9 = getelementptr inbounds %struct.iov_iter, ptr %1, i32 0, i32 4
  br i1 %8, label %17, label %10

10:                                               ; preds = %2
  %11 = getelementptr inbounds %struct.bio, ptr %0, i32 0, i32 13
  %12 = getelementptr inbounds %struct.bio, ptr %0, i32 0, i32 2
  %13 = getelementptr inbounds %struct.bio, ptr %0, i32 0, i32 14
  %14 = getelementptr inbounds %struct.bio, ptr %0, i32 0, i32 16
  %15 = getelementptr inbounds %struct.bio, ptr %0, i32 0, i32 8, i32 1
  %16 = getelementptr inbounds %struct.bio, ptr %0, i32 0, i32 1
  br label %59

17:                                               ; preds = %2
  %18 = load i32, ptr %9, align 8
  %19 = getelementptr inbounds %struct.bio, ptr %0, i32 0, i32 14
  %20 = load i16, ptr %19, align 2
  %21 = icmp ne i16 %20, 0
  %22 = load i1, ptr @bio_iov_bvec_set.__already_done, align 1
  %23 = xor i1 %22, true
  %24 = select i1 %21, i1 %23, i1 false
  br i1 %24, label %25, label %26, !prof !8

25:                                               ; preds = %17
  store i1 true, ptr @bio_iov_bvec_set.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1078, i32 noundef 9, ptr noundef null) #16
  br label %26

26:                                               ; preds = %25, %17
  %27 = getelementptr inbounds %struct.bio, ptr %0, i32 0, i32 2
  %28 = load i32, ptr %27, align 4
  %29 = and i32 %28, 255
  %30 = icmp eq i32 %29, 13
  br i1 %30, label %31, label %43

31:                                               ; preds = %26
  %32 = getelementptr inbounds %struct.bio, ptr %0, i32 0, i32 1
  %33 = load ptr, ptr %32, align 4
  %34 = getelementptr inbounds %struct.block_device, ptr %33, i32 0, i32 18
  %35 = load ptr, ptr %34, align 4
  %36 = getelementptr inbounds %struct.request_queue, ptr %35, i32 0, i32 32, i32 17
  %37 = load i32, ptr %36, align 4
  %38 = getelementptr inbounds %struct.request_queue, ptr %35, i32 0, i32 32, i32 6
  %39 = load i32, ptr %38, align 4
  %40 = tail call i32 @llvm.umin.i32(i32 %37, i32 %39) #16
  %41 = shl i32 %40, 9
  %42 = tail call i32 @llvm.umin.i32(i32 %18, i32 %41) #16
  br label %43

43:                                               ; preds = %31, %26
  %44 = phi i32 [ %42, %31 ], [ %18, %26 ]
  %45 = getelementptr inbounds %struct.iov_iter, ptr %1, i32 0, i32 6
  %46 = load i32, ptr %45, align 8
  %47 = trunc i32 %46 to i16
  %48 = getelementptr inbounds %struct.bio, ptr %0, i32 0, i32 13
  store i16 %47, ptr %48, align 4
  %49 = getelementptr inbounds %struct.iov_iter, ptr %1, i32 0, i32 5
  %50 = load ptr, ptr %49, align 4
  %51 = getelementptr inbounds %struct.bio, ptr %0, i32 0, i32 16
  store ptr %50, ptr %51, align 4
  %52 = getelementptr inbounds %struct.iov_iter, ptr %1, i32 0, i32 3
  %53 = load i32, ptr %52, align 4
  %54 = getelementptr inbounds %struct.bio, ptr %0, i32 0, i32 8, i32 3
  store i32 %53, ptr %54, align 4
  %55 = getelementptr inbounds %struct.bio, ptr %0, i32 0, i32 8, i32 1
  store i32 %44, ptr %55, align 4
  %56 = getelementptr inbounds %struct.bio, ptr %0, i32 0, i32 3
  %57 = load i16, ptr %56, align 4
  %58 = or i16 %57, 3
  store i16 %58, ptr %56, align 4
  tail call void @iov_iter_advance(ptr noundef %1, i32 noundef %44) #16
  br label %281

59:                                               ; preds = %270, %10
  %60 = load i32, ptr %12, align 4
  %61 = and i32 %60, 255
  %62 = icmp eq i32 %61, 13
  %63 = load i16, ptr %13, align 2
  %64 = load i16, ptr %11, align 4
  br i1 %62, label %65, label %166

65:                                               ; preds = %59
  %66 = sub i16 %63, %64
  %67 = load ptr, ptr %16, align 4
  %68 = getelementptr inbounds %struct.block_device, ptr %67, i32 0, i32 18
  %69 = load ptr, ptr %68, align 4
  %70 = getelementptr inbounds %struct.request_queue, ptr %69, i32 0, i32 32, i32 17
  %71 = load i32, ptr %70, align 4
  %72 = getelementptr inbounds %struct.request_queue, ptr %69, i32 0, i32 32, i32 6
  %73 = load i32, ptr %72, align 4
  %74 = call i32 @llvm.umin.i32(i32 %71, i32 %73) #16
  %75 = load ptr, ptr %14, align 4
  %76 = zext i16 %64 to i32
  %77 = getelementptr %struct.bio_vec, ptr %75, i32 %76
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #16
  store i32 0, ptr %5, align 4, !annotation !26
  %78 = icmp eq i32 %74, 0
  %79 = load i1, ptr @__bio_iov_append_get_pages.__already_done, align 1
  %80 = xor i1 %79, true
  %81 = select i1 %78, i1 %80, i1 false
  br i1 %81, label %82, label %83, !prof !8

82:                                               ; preds = %65
  store i1 true, ptr @__bio_iov_append_get_pages.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1173, i32 noundef 9, ptr noundef null) #16
  br label %83

83:                                               ; preds = %82, %65
  br i1 %78, label %164, label %84

84:                                               ; preds = %83
  %85 = zext i16 %66 to i32
  %86 = shl nuw nsw i32 %85, 1
  %87 = getelementptr ptr, ptr %77, i32 %86
  %88 = call i32 @iov_iter_get_pages(ptr noundef %1, ptr noundef %87, i32 noundef 2147483647, i32 noundef %85, ptr noundef nonnull %5) #16
  %89 = icmp slt i32 %88, 1
  br i1 %89, label %92, label %90, !prof !8

90:                                               ; preds = %84
  %91 = load i32, ptr %5, align 4
  br label %95

92:                                               ; preds = %84
  %93 = icmp eq i32 %88, 0
  %94 = select i1 %93, i32 -14, i32 %88
  br label %164

95:                                               ; preds = %156, %90
  %96 = phi i32 [ 0, %156 ], [ %91, %90 ]
  %97 = phi i32 [ %158, %156 ], [ 0, %90 ]
  %98 = phi i32 [ %157, %156 ], [ %88, %90 ]
  %99 = getelementptr ptr, ptr %87, i32 %97
  %100 = load ptr, ptr %99, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %6) #16
  store i8 0, ptr %6, align 1
  %101 = sub i32 4096, %96
  %102 = call i32 @llvm.umin.i32(i32 %101, i32 %98) #16
  %103 = call i32 @bio_add_hw_page(ptr noundef %69, ptr noundef %0, ptr noundef %100, i32 noundef %102, i32 noundef %96, i32 noundef %74, ptr noundef nonnull %6) #16
  %104 = icmp eq i32 %103, %102
  br i1 %104, label %135, label %105

105:                                              ; preds = %95
  %106 = getelementptr ptr, ptr %87, i32 %97
  %107 = load i32, ptr %5, align 4
  %108 = and i32 %107, 4095
  %109 = add nuw i32 %98, 4095
  %110 = add nuw i32 %109, %108
  %111 = lshr i32 %110, 12
  br label %112

112:                                              ; preds = %132, %105
  %113 = phi i32 [ %133, %132 ], [ 0, %105 ]
  %114 = getelementptr ptr, ptr %106, i32 %113
  %115 = load ptr, ptr %114, align 4
  %116 = getelementptr inbounds %struct.page, ptr %115, i32 0, i32 1
  %117 = load volatile i32, ptr %116, align 4
  %118 = and i32 %117, 1
  %119 = icmp eq i32 %118, 0
  br i1 %119, label %122, label %120, !prof !11

120:                                              ; preds = %112
  %121 = add i32 %117, -1
  br label %124

122:                                              ; preds = %112
  %123 = ptrtoint ptr %115 to i32
  br label %124

124:                                              ; preds = %122, %120
  %125 = phi i32 [ %121, %120 ], [ %123, %122 ]
  %126 = inttoptr i32 %125 to ptr
  %127 = getelementptr inbounds %struct.page, ptr %126, i32 0, i32 3
  call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !21
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %127) #16, !srcloc !14
  %128 = call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %127, ptr %127, i32 1, ptr elementtype(i32) %127) #16, !srcloc !22
  %129 = extractvalue { i32, i32 } %128, 0
  call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !23
  %130 = icmp eq i32 %129, 0
  br i1 %130, label %131, label %132

131:                                              ; preds = %124
  call void @__put_page(ptr noundef %126) #16
  br label %132

132:                                              ; preds = %131, %124
  %133 = add nuw nsw i32 %113, 1
  %134 = icmp eq i32 %133, %111
  br i1 %134, label %155, label %112

135:                                              ; preds = %95
  %136 = load i8, ptr %6, align 1, !range !27
  %137 = icmp eq i8 %136, 0
  br i1 %137, label %156, label %138

138:                                              ; preds = %135
  %139 = getelementptr inbounds %struct.page, ptr %100, i32 0, i32 1
  %140 = load volatile i32, ptr %139, align 4
  %141 = and i32 %140, 1
  %142 = icmp eq i32 %141, 0
  br i1 %142, label %145, label %143, !prof !11

143:                                              ; preds = %138
  %144 = add i32 %140, -1
  br label %147

145:                                              ; preds = %138
  %146 = ptrtoint ptr %100 to i32
  br label %147

147:                                              ; preds = %145, %143
  %148 = phi i32 [ %144, %143 ], [ %146, %145 ]
  %149 = inttoptr i32 %148 to ptr
  %150 = getelementptr inbounds %struct.page, ptr %149, i32 0, i32 3
  call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !21
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %150) #16, !srcloc !14
  %151 = call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %150, ptr %150, i32 1, ptr elementtype(i32) %150) #16, !srcloc !22
  %152 = extractvalue { i32, i32 } %151, 0
  call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !23
  %153 = icmp eq i32 %152, 0
  br i1 %153, label %154, label %156

154:                                              ; preds = %147
  call void @__put_page(ptr noundef %149) #16
  br label %156

155:                                              ; preds = %132
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %6) #16
  br label %160

156:                                              ; preds = %154, %147, %135
  store i32 0, ptr %5, align 4
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %6) #16
  %157 = sub nsw i32 %98, %102
  %158 = add i32 %97, 1
  %159 = icmp sgt i32 %157, 0
  br i1 %159, label %95, label %160

160:                                              ; preds = %156, %155
  %161 = phi i32 [ %98, %155 ], [ %157, %156 ]
  %162 = phi i32 [ -22, %155 ], [ 0, %156 ]
  %163 = sub i32 %88, %161
  call void @iov_iter_advance(ptr noundef %1, i32 noundef %163) #16
  br label %164

164:                                              ; preds = %160, %92, %83
  %165 = phi i32 [ %94, %92 ], [ %162, %160 ], [ 0, %83 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #16
  br label %264

166:                                              ; preds = %59
  %167 = zext i16 %64 to i32
  %168 = sub i16 %63, %64
  %169 = load ptr, ptr %14, align 4
  %170 = getelementptr %struct.bio_vec, ptr %169, i32 %167
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %3) #16
  store i8 0, ptr %3, align 1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #16
  store i32 0, ptr %4, align 4, !annotation !26
  %171 = zext i16 %168 to i32
  %172 = shl nuw nsw i32 %171, 1
  %173 = getelementptr ptr, ptr %170, i32 %172
  %174 = call i32 @iov_iter_get_pages(ptr noundef %1, ptr noundef %173, i32 noundef 2147483647, i32 noundef %171, ptr noundef nonnull %4) #16
  %175 = icmp slt i32 %174, 1
  br i1 %175, label %178, label %176, !prof !8

176:                                              ; preds = %166
  %177 = load i32, ptr %4, align 4
  br label %181

178:                                              ; preds = %166
  %179 = icmp eq i32 %174, 0
  %180 = select i1 %179, i32 -14, i32 %174
  br label %262

181:                                              ; preds = %257, %176
  %182 = phi i32 [ %177, %176 ], [ 0, %257 ]
  %183 = phi i32 [ %174, %176 ], [ %258, %257 ]
  %184 = phi i32 [ 0, %176 ], [ %259, %257 ]
  %185 = getelementptr ptr, ptr %173, i32 %184
  %186 = load ptr, ptr %185, align 4
  %187 = sub i32 4096, %182
  %188 = call i32 @llvm.umin.i32(i32 %187, i32 %183) #16
  %189 = call fastcc zeroext i1 @__bio_try_merge_page(ptr noundef %0, ptr noundef %186, i32 noundef %188, i32 noundef %182, ptr noundef nonnull %3) #16
  br i1 %189, label %190, label %210

190:                                              ; preds = %181
  %191 = load i8, ptr %3, align 1, !range !27
  %192 = icmp eq i8 %191, 0
  br i1 %192, label %257, label %193

193:                                              ; preds = %190
  %194 = getelementptr inbounds %struct.page, ptr %186, i32 0, i32 1
  %195 = load volatile i32, ptr %194, align 4
  %196 = and i32 %195, 1
  %197 = icmp eq i32 %196, 0
  br i1 %197, label %200, label %198, !prof !11

198:                                              ; preds = %193
  %199 = add i32 %195, -1
  br label %202

200:                                              ; preds = %193
  %201 = ptrtoint ptr %186 to i32
  br label %202

202:                                              ; preds = %200, %198
  %203 = phi i32 [ %199, %198 ], [ %201, %200 ]
  %204 = inttoptr i32 %203 to ptr
  %205 = getelementptr inbounds %struct.page, ptr %204, i32 0, i32 3
  call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !21
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %205) #16, !srcloc !14
  %206 = call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %205, ptr %205, i32 1, ptr elementtype(i32) %205) #16, !srcloc !22
  %207 = extractvalue { i32, i32 } %206, 0
  call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !23
  %208 = icmp eq i32 %207, 0
  br i1 %208, label %209, label %257

209:                                              ; preds = %202
  call void @__put_page(ptr noundef %204) #16
  br label %257

210:                                              ; preds = %181
  %211 = load i16, ptr %11, align 4
  %212 = load i16, ptr %13, align 2
  %213 = icmp ult i16 %211, %212
  br i1 %213, label %214, label %218

214:                                              ; preds = %210
  %215 = load i32, ptr %15, align 4
  %216 = xor i32 %188, -1
  %217 = icmp ugt i32 %215, %216
  br label %218

218:                                              ; preds = %214, %210
  %219 = phi i1 [ true, %210 ], [ %217, %214 ]
  %220 = load i1, ptr @__bio_iov_iter_get_pages.__already_done, align 1
  %221 = xor i1 %220, true
  %222 = select i1 %219, i1 %221, i1 false
  br i1 %222, label %223, label %224, !prof !8

223:                                              ; preds = %218
  store i1 true, ptr @__bio_iov_iter_get_pages.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1147, i32 noundef 9, ptr noundef null) #16
  br label %224

224:                                              ; preds = %223, %218
  br i1 %219, label %225, label %255

225:                                              ; preds = %224
  %226 = getelementptr ptr, ptr %173, i32 %184
  %227 = load i32, ptr %4, align 4
  %228 = and i32 %227, 4095
  %229 = add nuw i32 %183, 4095
  %230 = add nuw i32 %229, %228
  %231 = lshr i32 %230, 12
  br label %232

232:                                              ; preds = %252, %225
  %233 = phi i32 [ %253, %252 ], [ 0, %225 ]
  %234 = getelementptr ptr, ptr %226, i32 %233
  %235 = load ptr, ptr %234, align 4
  %236 = getelementptr inbounds %struct.page, ptr %235, i32 0, i32 1
  %237 = load volatile i32, ptr %236, align 4
  %238 = and i32 %237, 1
  %239 = icmp eq i32 %238, 0
  br i1 %239, label %242, label %240, !prof !11

240:                                              ; preds = %232
  %241 = add i32 %237, -1
  br label %244

242:                                              ; preds = %232
  %243 = ptrtoint ptr %235 to i32
  br label %244

244:                                              ; preds = %242, %240
  %245 = phi i32 [ %241, %240 ], [ %243, %242 ]
  %246 = inttoptr i32 %245 to ptr
  %247 = getelementptr inbounds %struct.page, ptr %246, i32 0, i32 3
  call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !21
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %247) #16, !srcloc !14
  %248 = call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %247, ptr %247, i32 1, ptr elementtype(i32) %247) #16, !srcloc !22
  %249 = extractvalue { i32, i32 } %248, 0
  call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !23
  %250 = icmp eq i32 %249, 0
  br i1 %250, label %251, label %252

251:                                              ; preds = %244
  call void @__put_page(ptr noundef %246) #16
  br label %252

252:                                              ; preds = %251, %244
  %253 = add nuw nsw i32 %233, 1
  %254 = icmp eq i32 %253, %231
  br i1 %254, label %262, label %232

255:                                              ; preds = %224
  %256 = load i32, ptr %4, align 4
  call void @__bio_add_page(ptr noundef %0, ptr noundef %186, i32 noundef %188, i32 noundef %256) #16
  br label %257

257:                                              ; preds = %255, %209, %202, %190
  store i32 0, ptr %4, align 4
  %258 = sub nsw i32 %183, %188
  %259 = add i32 %184, 1
  %260 = icmp sgt i32 %258, 0
  br i1 %260, label %181, label %261

261:                                              ; preds = %257
  call void @iov_iter_advance(ptr noundef %1, i32 noundef %174) #16
  br label %262

262:                                              ; preds = %261, %252, %178
  %263 = phi i32 [ %180, %178 ], [ 0, %261 ], [ -22, %252 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #16
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %3) #16
  br label %264

264:                                              ; preds = %262, %164
  %265 = phi i32 [ %165, %164 ], [ %263, %262 ]
  %266 = icmp eq i32 %265, 0
  br i1 %266, label %267, label %274

267:                                              ; preds = %264
  %268 = load i32, ptr %9, align 8
  %269 = icmp eq i32 %268, 0
  br i1 %269, label %274, label %270

270:                                              ; preds = %267
  %271 = load i16, ptr %11, align 4
  %272 = load i16, ptr %13, align 2
  %273 = icmp ult i16 %271, %272
  br i1 %273, label %59, label %274

274:                                              ; preds = %270, %267, %264
  %275 = getelementptr inbounds %struct.bio, ptr %0, i32 0, i32 3
  %276 = load i16, ptr %275, align 4
  %277 = and i16 %276, -9
  store i16 %277, ptr %275, align 4
  %278 = load i16, ptr %11, align 4
  %279 = icmp eq i16 %278, 0
  %280 = select i1 %279, i32 %265, i32 0
  br label %281

281:                                              ; preds = %274, %43
  %282 = phi i32 [ 0, %43 ], [ %280, %274 ]
  ret i32 %282
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @iov_iter_advance(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @submit_bio_wait(ptr noundef %0) #0 {
  %2 = alloca %struct.completion, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %2) #16
  %3 = getelementptr inbounds %struct.completion, ptr %2, i32 0, i32 1, i32 1
  store i64 0, ptr %2, align 8
  store ptr %3, ptr %3, align 8
  %4 = getelementptr inbounds %struct.completion, ptr %2, i32 0, i32 1, i32 1, i32 1
  store ptr %3, ptr %4, align 4
  %5 = getelementptr inbounds %struct.bio, ptr %0, i32 0, i32 11
  store ptr %2, ptr %5, align 4
  %6 = getelementptr inbounds %struct.bio, ptr %0, i32 0, i32 10
  store ptr @submit_bio_wait_endio, ptr %6, align 4
  %7 = getelementptr inbounds %struct.bio, ptr %0, i32 0, i32 2
  %8 = load i32, ptr %7, align 4
  %9 = or i32 %8, 2048
  store i32 %9, ptr %7, align 4
  call void @submit_bio(ptr noundef %0) #16
  call void @wait_for_completion_io(ptr noundef nonnull %2) #16
  %10 = getelementptr inbounds %struct.bio, ptr %0, i32 0, i32 6
  %11 = load i8, ptr %10, align 2
  %12 = call i32 @blk_status_to_errno(i8 noundef zeroext %11) #16
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %2) #16
  ret i32 %12
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @submit_bio_wait_endio(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.bio, ptr %0, i32 0, i32 11
  %3 = load ptr, ptr %2, align 4
  tail call void @complete(ptr noundef %3) #16
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @submit_bio(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @wait_for_completion_io(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @blk_status_to_errno(i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @__bio_advance(ptr nocapture noundef %0, i32 noundef %1) #0 {
  %3 = getelementptr inbounds %struct.bio, ptr %0, i32 0, i32 8
  %4 = lshr i32 %1, 9
  %5 = zext i32 %4 to i64
  %6 = load i64, ptr %3, align 1
  %7 = add i64 %6, %5
  store i64 %7, ptr %3, align 1
  %8 = getelementptr inbounds %struct.bio, ptr %0, i32 0, i32 2
  %9 = load i32, ptr %8, align 4
  %10 = and i32 %9, 255
  %11 = add nsw i32 %10, -3
  %12 = and i32 %11, -7
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %18

14:                                               ; preds = %2
  %15 = getelementptr inbounds %struct.bio, ptr %0, i32 0, i32 8, i32 1
  %16 = load i32, ptr %15, align 1
  %17 = sub i32 %16, %1
  store i32 %17, ptr %15, align 1
  br label %52

18:                                               ; preds = %2
  %19 = getelementptr inbounds %struct.bio, ptr %0, i32 0, i32 16
  %20 = load ptr, ptr %19, align 4
  %21 = getelementptr inbounds %struct.bio, ptr %0, i32 0, i32 8, i32 2
  %22 = load i32, ptr %21, align 1
  %23 = getelementptr inbounds %struct.bio, ptr %0, i32 0, i32 8, i32 1
  %24 = load i32, ptr %23, align 1
  %25 = icmp ult i32 %24, %1
  %26 = load i1, ptr @bvec_iter_advance.__already_done, align 1
  %27 = xor i1 %26, true
  %28 = select i1 %25, i1 %27, i1 false
  br i1 %28, label %29, label %30, !prof !8

29:                                               ; preds = %18
  store i1 true, ptr @bvec_iter_advance.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 107, i32 noundef 9, ptr noundef nonnull @.str.5) #16
  br label %30

30:                                               ; preds = %29, %18
  br i1 %25, label %31, label %32

31:                                               ; preds = %30
  store i32 0, ptr %23, align 1
  br label %52

32:                                               ; preds = %30
  %33 = load i32, ptr %23, align 1
  %34 = sub i32 %33, %1
  store i32 %34, ptr %23, align 1
  %35 = getelementptr inbounds %struct.bio, ptr %0, i32 0, i32 8, i32 3
  %36 = load i32, ptr %35, align 1
  %37 = add i32 %36, %1
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %49, label %39

39:                                               ; preds = %45, %32
  %40 = phi i32 [ %46, %45 ], [ %37, %32 ]
  %41 = phi i32 [ %47, %45 ], [ %22, %32 ]
  %42 = getelementptr %struct.bio_vec, ptr %20, i32 %41, i32 1
  %43 = load i32, ptr %42, align 4
  %44 = icmp ult i32 %40, %43
  br i1 %44, label %49, label %45

45:                                               ; preds = %39
  %46 = sub i32 %40, %43
  %47 = add i32 %41, 1
  %48 = icmp eq i32 %46, 0
  br i1 %48, label %49, label %39

49:                                               ; preds = %45, %39, %32
  %50 = phi i32 [ %22, %32 ], [ %47, %45 ], [ %41, %39 ]
  %51 = phi i32 [ 0, %32 ], [ 0, %45 ], [ %40, %39 ]
  store i32 %50, ptr %21, align 1
  store i32 %51, ptr %35, align 1
  br label %52

52:                                               ; preds = %49, %31, %14
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @bio_copy_data_iter(ptr nocapture noundef readonly %0, ptr nocapture noundef %1, ptr nocapture noundef readonly %2, ptr nocapture noundef %3) #0 {
  %5 = getelementptr inbounds %struct.bvec_iter, ptr %1, i32 0, i32 1
  %6 = getelementptr inbounds %struct.bvec_iter, ptr %3, i32 0, i32 1
  %7 = load i32, ptr %6, align 1
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %115, label %9

9:                                                ; preds = %4
  %10 = getelementptr inbounds %struct.bio, ptr %2, i32 0, i32 16
  %11 = getelementptr inbounds %struct.bvec_iter, ptr %3, i32 0, i32 2
  %12 = getelementptr inbounds %struct.bvec_iter, ptr %3, i32 0, i32 3
  %13 = getelementptr inbounds %struct.bio, ptr %0, i32 0, i32 16
  %14 = getelementptr inbounds %struct.bvec_iter, ptr %1, i32 0, i32 2
  %15 = getelementptr inbounds %struct.bvec_iter, ptr %1, i32 0, i32 3
  %16 = getelementptr inbounds %struct.bio, ptr %2, i32 0, i32 2
  %17 = getelementptr inbounds %struct.bio, ptr %0, i32 0, i32 2
  %18 = load i32, ptr %5, align 1
  br label %19

19:                                               ; preds = %110, %9
  %20 = phi i32 [ %18, %9 ], [ %112, %110 ]
  %21 = phi i32 [ %7, %9 ], [ %113, %110 ]
  %22 = icmp eq i32 %20, 0
  br i1 %22, label %115, label %23

23:                                               ; preds = %19
  %24 = load ptr, ptr %10, align 4
  %25 = load i32, ptr %11, align 1
  %26 = getelementptr %struct.bio_vec, ptr %24, i32 %25
  %27 = load ptr, ptr %26, align 4
  %28 = getelementptr %struct.bio_vec, ptr %24, i32 %25, i32 2
  %29 = load i32, ptr %28, align 4
  %30 = load i32, ptr %12, align 1
  %31 = add i32 %30, %29
  %32 = lshr i32 %31, 12
  %33 = getelementptr %struct.page, ptr %27, i32 %32
  %34 = getelementptr %struct.bio_vec, ptr %24, i32 %25, i32 1
  %35 = load i32, ptr %34, align 4
  %36 = sub i32 %35, %30
  %37 = tail call i32 @llvm.umin.i32(i32 %21, i32 %36)
  %38 = and i32 %31, 4095
  %39 = sub nuw nsw i32 4096, %38
  %40 = tail call i32 @llvm.umin.i32(i32 %37, i32 %39)
  %41 = load ptr, ptr %13, align 4
  %42 = load i32, ptr %14, align 1
  %43 = getelementptr %struct.bio_vec, ptr %41, i32 %42
  %44 = load ptr, ptr %43, align 4
  %45 = getelementptr %struct.bio_vec, ptr %41, i32 %42, i32 2
  %46 = load i32, ptr %45, align 4
  %47 = load i32, ptr %15, align 1
  %48 = add i32 %47, %46
  %49 = lshr i32 %48, 12
  %50 = getelementptr %struct.page, ptr %44, i32 %49
  %51 = getelementptr %struct.bio_vec, ptr %41, i32 %42, i32 1
  %52 = load i32, ptr %51, align 4
  %53 = sub i32 %52, %47
  %54 = tail call i32 @llvm.umin.i32(i32 %20, i32 %53)
  %55 = and i32 %48, 4095
  %56 = sub nuw nsw i32 4096, %55
  %57 = tail call i32 @llvm.umin.i32(i32 %54, i32 %56)
  %58 = tail call i32 @llvm.umin.i32(i32 %40, i32 %57)
  %59 = load i32, ptr @pgprot_kernel, align 4
  %60 = or i32 %59, 512
  %61 = tail call ptr @__kmap_local_page_prot(ptr noundef %33, i32 noundef %60) #16
  %62 = getelementptr i8, ptr %61, i32 %38
  %63 = load i32, ptr @pgprot_kernel, align 4
  %64 = or i32 %63, 512
  %65 = tail call ptr @__kmap_local_page_prot(ptr noundef %50, i32 noundef %64) #16
  %66 = getelementptr i8, ptr %65, i32 %55
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 1 %66, ptr align 1 %62, i32 %57, i1 false) #16
  tail call void @flush_dcache_page(ptr noundef %50) #16
  tail call void @kunmap_local_indexed(ptr noundef %65) #16
  tail call void @kunmap_local_indexed(ptr noundef %62) #16
  %67 = lshr i32 %58, 9
  %68 = zext i32 %67 to i64
  %69 = load i64, ptr %3, align 1
  %70 = add i64 %69, %68
  store i64 %70, ptr %3, align 1
  %71 = load i32, ptr %16, align 4
  %72 = and i32 %71, 255
  %73 = add nsw i32 %72, -3
  %74 = and i32 %73, -7
  %75 = icmp eq i32 %74, 0
  br i1 %75, label %88, label %76

76:                                               ; preds = %23
  %77 = load ptr, ptr %10, align 4
  %78 = load i32, ptr %12, align 1
  %79 = add i32 %78, %58
  %80 = load i32, ptr %11, align 1
  %81 = getelementptr %struct.bio_vec, ptr %77, i32 %80, i32 1
  %82 = load i32, ptr %81, align 4
  %83 = icmp eq i32 %79, %82
  br i1 %83, label %84, label %86

84:                                               ; preds = %76
  %85 = add i32 %80, 1
  store i32 %85, ptr %11, align 1
  br label %86

86:                                               ; preds = %84, %76
  %87 = phi i32 [ 0, %84 ], [ %79, %76 ]
  store i32 %87, ptr %12, align 1
  br label %88

88:                                               ; preds = %86, %23
  %89 = load i32, ptr %6, align 1
  %90 = sub i32 %89, %58
  store i32 %90, ptr %6, align 1
  %91 = load i64, ptr %1, align 1
  %92 = add i64 %91, %68
  store i64 %92, ptr %1, align 1
  %93 = load i32, ptr %17, align 4
  %94 = and i32 %93, 255
  %95 = add nsw i32 %94, -3
  %96 = and i32 %95, -7
  %97 = icmp eq i32 %96, 0
  br i1 %97, label %110, label %98

98:                                               ; preds = %88
  %99 = load ptr, ptr %13, align 4
  %100 = load i32, ptr %15, align 1
  %101 = add i32 %100, %58
  %102 = load i32, ptr %14, align 1
  %103 = getelementptr %struct.bio_vec, ptr %99, i32 %102, i32 1
  %104 = load i32, ptr %103, align 4
  %105 = icmp eq i32 %101, %104
  br i1 %105, label %106, label %108

106:                                              ; preds = %98
  %107 = add i32 %102, 1
  store i32 %107, ptr %14, align 1
  br label %108

108:                                              ; preds = %106, %98
  %109 = phi i32 [ 0, %106 ], [ %101, %98 ]
  store i32 %109, ptr %15, align 1
  br label %110

110:                                              ; preds = %108, %88
  %111 = load i32, ptr %5, align 1
  %112 = sub i32 %111, %58
  store i32 %112, ptr %5, align 1
  %113 = load i32, ptr %6, align 1
  %114 = icmp eq i32 %113, 0
  br i1 %114, label %115, label %19

115:                                              ; preds = %110, %19, %4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @bio_copy_data(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #0 {
  %3 = alloca %struct.bvec_iter, align 1
  %4 = alloca %struct.bvec_iter, align 1
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %3) #16
  %5 = getelementptr inbounds %struct.bio, ptr %1, i32 0, i32 8
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 1 dereferenceable(20) %3, ptr noundef align 4 dereferenceable(20) %5, i32 20, i1 false)
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %4) #16
  %6 = getelementptr inbounds %struct.bio, ptr %0, i32 0, i32 8
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 1 dereferenceable(20) %4, ptr noundef align 4 dereferenceable(20) %6, i32 20, i1 false)
  call void @bio_copy_data_iter(ptr noundef %0, ptr noundef nonnull %4, ptr noundef %1, ptr noundef nonnull %3)
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %4) #16
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %3) #16
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @bio_free_pages(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.bio, ptr %0, i32 0, i32 13
  %3 = load i16, ptr %2, align 4
  %4 = icmp eq i16 %3, 0
  br i1 %4, label %39, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.bio, ptr %0, i32 0, i32 16
  br label %7

7:                                                ; preds = %23, %5
  %8 = phi i32 [ 0, %5 ], [ %35, %23 ]
  %9 = phi i32 [ 0, %5 ], [ %34, %23 ]
  %10 = phi ptr [ null, %5 ], [ %24, %23 ]
  %11 = load ptr, ptr %6, align 4
  %12 = icmp eq i32 %8, 0
  br i1 %12, label %15, label %13

13:                                               ; preds = %7
  %14 = getelementptr %struct.page, ptr %10, i32 1
  br label %23

15:                                               ; preds = %7
  %16 = getelementptr %struct.bio_vec, ptr %11, i32 %9
  %17 = load ptr, ptr %16, align 4
  %18 = getelementptr %struct.bio_vec, ptr %11, i32 %9, i32 2
  %19 = load i32, ptr %18, align 4
  %20 = lshr i32 %19, 12
  %21 = getelementptr %struct.page, ptr %17, i32 %20
  %22 = and i32 %19, 4095
  br label %23

23:                                               ; preds = %15, %13
  %24 = phi ptr [ %21, %15 ], [ %14, %13 ]
  %25 = phi i32 [ %22, %15 ], [ 0, %13 ]
  %26 = sub nuw nsw i32 4096, %25
  %27 = getelementptr %struct.bio_vec, ptr %11, i32 %9, i32 1
  %28 = load i32, ptr %27, align 4
  %29 = sub i32 %28, %8
  %30 = tail call i32 @llvm.umin.i32(i32 %26, i32 %29) #16
  %31 = add i32 %30, %8
  %32 = icmp eq i32 %31, %28
  %33 = zext i1 %32 to i32
  %34 = add nuw nsw i32 %9, %33
  %35 = select i1 %32, i32 0, i32 %31
  tail call void @__free_pages(ptr noundef %24, i32 noundef 0) #16
  %36 = load i16, ptr %2, align 4
  %37 = zext i16 %36 to i32
  %38 = icmp ult i32 %34, %37
  br i1 %38, label %7, label %39

39:                                               ; preds = %23, %1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__free_pages(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @bio_set_pages_dirty(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.bio, ptr %0, i32 0, i32 13
  %3 = load i16, ptr %2, align 4
  %4 = icmp eq i16 %3, 0
  br i1 %4, label %52, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.bio, ptr %0, i32 0, i32 16
  br label %7

7:                                                ; preds = %48, %5
  %8 = phi i16 [ %3, %5 ], [ %49, %48 ]
  %9 = phi i32 [ 0, %5 ], [ %36, %48 ]
  %10 = phi i32 [ 0, %5 ], [ %35, %48 ]
  %11 = phi ptr [ null, %5 ], [ %25, %48 ]
  %12 = load ptr, ptr %6, align 4
  %13 = icmp eq i32 %9, 0
  br i1 %13, label %16, label %14

14:                                               ; preds = %7
  %15 = getelementptr %struct.page, ptr %11, i32 1
  br label %24

16:                                               ; preds = %7
  %17 = getelementptr %struct.bio_vec, ptr %12, i32 %10
  %18 = load ptr, ptr %17, align 4
  %19 = getelementptr %struct.bio_vec, ptr %12, i32 %10, i32 2
  %20 = load i32, ptr %19, align 4
  %21 = lshr i32 %20, 12
  %22 = getelementptr %struct.page, ptr %18, i32 %21
  %23 = and i32 %20, 4095
  br label %24

24:                                               ; preds = %16, %14
  %25 = phi ptr [ %22, %16 ], [ %15, %14 ]
  %26 = phi i32 [ %23, %16 ], [ 0, %14 ]
  %27 = sub nuw nsw i32 4096, %26
  %28 = getelementptr %struct.bio_vec, ptr %12, i32 %10, i32 1
  %29 = load i32, ptr %28, align 4
  %30 = sub i32 %29, %9
  %31 = tail call i32 @llvm.umin.i32(i32 %27, i32 %30) #16
  %32 = add i32 %31, %9
  %33 = icmp eq i32 %32, %29
  %34 = zext i1 %33 to i32
  %35 = add nuw nsw i32 %10, %34
  %36 = select i1 %33, i32 0, i32 %32
  %37 = load volatile i32, ptr %25, align 4
  %38 = and i32 %37, 65536
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %40, label %48

40:                                               ; preds = %24
  %41 = getelementptr inbounds %struct.page, ptr %25, i32 0, i32 1
  %42 = load volatile i32, ptr %41, align 4
  %43 = and i32 %42, 1
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %45, label %48

45:                                               ; preds = %40
  %46 = tail call i32 @set_page_dirty_lock(ptr noundef %25) #16
  %47 = load i16, ptr %2, align 4
  br label %48

48:                                               ; preds = %45, %40, %24
  %49 = phi i16 [ %8, %24 ], [ %47, %45 ], [ %8, %40 ]
  %50 = zext i16 %49 to i32
  %51 = icmp ult i32 %35, %50
  br i1 %51, label %7, label %52

52:                                               ; preds = %48, %1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @bio_check_pages_dirty(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.bio, ptr %0, i32 0, i32 13
  %3 = load i16, ptr %2, align 4
  %4 = zext i16 %3 to i32
  %5 = icmp eq i16 %3, 0
  br i1 %5, label %118, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.bio, ptr %0, i32 0, i32 16
  %8 = load ptr, ptr %7, align 4
  br label %9

9:                                                ; preds = %59, %6
  %10 = phi i32 [ 0, %6 ], [ %36, %59 ]
  %11 = phi i32 [ 0, %6 ], [ %35, %59 ]
  %12 = phi ptr [ null, %6 ], [ %25, %59 ]
  %13 = icmp eq i32 %10, 0
  br i1 %13, label %16, label %14

14:                                               ; preds = %9
  %15 = getelementptr %struct.page, ptr %12, i32 1
  br label %24

16:                                               ; preds = %9
  %17 = getelementptr %struct.bio_vec, ptr %8, i32 %11
  %18 = load ptr, ptr %17, align 4
  %19 = getelementptr %struct.bio_vec, ptr %8, i32 %11, i32 2
  %20 = load i32, ptr %19, align 4
  %21 = lshr i32 %20, 12
  %22 = getelementptr %struct.page, ptr %18, i32 %21
  %23 = and i32 %20, 4095
  br label %24

24:                                               ; preds = %16, %14
  %25 = phi ptr [ %22, %16 ], [ %15, %14 ]
  %26 = phi i32 [ %23, %16 ], [ 0, %14 ]
  %27 = sub nuw nsw i32 4096, %26
  %28 = getelementptr %struct.bio_vec, ptr %8, i32 %11, i32 1
  %29 = load i32, ptr %28, align 4
  %30 = sub i32 %29, %10
  %31 = tail call i32 @llvm.umin.i32(i32 %27, i32 %30) #16
  %32 = add i32 %31, %10
  %33 = icmp eq i32 %32, %29
  %34 = zext i1 %33 to i32
  %35 = add nuw nsw i32 %11, %34
  %36 = select i1 %33, i32 0, i32 %32
  %37 = getelementptr inbounds %struct.page, ptr %25, i32 0, i32 1
  %38 = load volatile i32, ptr %37, align 4
  %39 = and i32 %38, 1
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %43, label %41, !prof !11

41:                                               ; preds = %24
  %42 = add i32 %38, -1
  br label %45

43:                                               ; preds = %24
  %44 = ptrtoint ptr %25 to i32
  br label %45

45:                                               ; preds = %43, %41
  %46 = phi i32 [ %42, %41 ], [ %44, %43 ]
  %47 = inttoptr i32 %46 to ptr
  %48 = load volatile i32, ptr %47, align 4
  %49 = and i32 %48, 8
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %51, label %59

51:                                               ; preds = %45
  %52 = load volatile i32, ptr %25, align 4
  %53 = and i32 %52, 65536
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %55, label %59

55:                                               ; preds = %51
  %56 = load volatile i32, ptr %37, align 4
  %57 = and i32 %56, 1
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %119, label %59

59:                                               ; preds = %55, %51, %45
  %60 = icmp ult i32 %35, %4
  br i1 %60, label %9, label %61

61:                                               ; preds = %59
  %62 = getelementptr inbounds %struct.bio, ptr %0, i32 0, i32 3
  %63 = load i16, ptr %62, align 4
  %64 = and i16 %63, 1
  %65 = icmp ne i16 %64, 0
  %66 = select i1 %65, i1 true, i1 %5
  br i1 %66, label %118, label %67

67:                                               ; preds = %61
  %68 = getelementptr inbounds %struct.bio, ptr %0, i32 0, i32 16
  br label %69

69:                                               ; preds = %114, %67
  %70 = phi i32 [ 0, %67 ], [ %97, %114 ]
  %71 = phi i32 [ 0, %67 ], [ %96, %114 ]
  %72 = phi ptr [ null, %67 ], [ %86, %114 ]
  %73 = load ptr, ptr %68, align 4
  %74 = icmp eq i32 %70, 0
  br i1 %74, label %77, label %75

75:                                               ; preds = %69
  %76 = getelementptr %struct.page, ptr %72, i32 1
  br label %85

77:                                               ; preds = %69
  %78 = getelementptr %struct.bio_vec, ptr %73, i32 %71
  %79 = load ptr, ptr %78, align 4
  %80 = getelementptr %struct.bio_vec, ptr %73, i32 %71, i32 2
  %81 = load i32, ptr %80, align 4
  %82 = lshr i32 %81, 12
  %83 = getelementptr %struct.page, ptr %79, i32 %82
  %84 = and i32 %81, 4095
  br label %85

85:                                               ; preds = %77, %75
  %86 = phi ptr [ %83, %77 ], [ %76, %75 ]
  %87 = phi i32 [ %84, %77 ], [ 0, %75 ]
  %88 = sub nuw nsw i32 4096, %87
  %89 = getelementptr %struct.bio_vec, ptr %73, i32 %71, i32 1
  %90 = load i32, ptr %89, align 4
  %91 = sub i32 %90, %70
  %92 = tail call i32 @llvm.umin.i32(i32 %88, i32 %91) #16
  %93 = add i32 %92, %70
  %94 = icmp eq i32 %93, %90
  %95 = zext i1 %94 to i32
  %96 = add nuw nsw i32 %71, %95
  %97 = select i1 %94, i32 0, i32 %93
  %98 = getelementptr inbounds %struct.page, ptr %86, i32 0, i32 1
  %99 = load volatile i32, ptr %98, align 4
  %100 = and i32 %99, 1
  %101 = icmp eq i32 %100, 0
  br i1 %101, label %104, label %102, !prof !11

102:                                              ; preds = %85
  %103 = add i32 %99, -1
  br label %106

104:                                              ; preds = %85
  %105 = ptrtoint ptr %86 to i32
  br label %106

106:                                              ; preds = %104, %102
  %107 = phi i32 [ %103, %102 ], [ %105, %104 ]
  %108 = inttoptr i32 %107 to ptr
  %109 = getelementptr inbounds %struct.page, ptr %108, i32 0, i32 3
  tail call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !21
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %109) #16, !srcloc !14
  %110 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %109, ptr %109, i32 1, ptr elementtype(i32) %109) #16, !srcloc !22
  %111 = extractvalue { i32, i32 } %110, 0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !23
  %112 = icmp eq i32 %111, 0
  br i1 %112, label %113, label %114

113:                                              ; preds = %106
  tail call void @__put_page(ptr noundef %108) #16
  br label %114

114:                                              ; preds = %113, %106
  %115 = load i16, ptr %2, align 4
  %116 = zext i16 %115 to i32
  %117 = icmp ult i32 %96, %116
  br i1 %117, label %69, label %118

118:                                              ; preds = %114, %61, %1
  tail call void @bio_put(ptr noundef %0)
  br label %125

119:                                              ; preds = %55
  %120 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @bio_dirty_lock) #16
  %121 = load ptr, ptr @bio_dirty_list, align 4
  %122 = getelementptr inbounds %struct.bio, ptr %0, i32 0, i32 11
  store ptr %121, ptr %122, align 4
  store ptr %0, ptr @bio_dirty_list, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @bio_dirty_lock, i32 noundef %120) #16
  %123 = load ptr, ptr @system_wq, align 4
  %124 = tail call zeroext i1 @queue_work_on(i32 noundef 16, ptr noundef %123, ptr noundef nonnull @bio_dirty_work) #16
  br label %125

125:                                              ; preds = %119, %118
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @bio_endio(ptr noundef %0) #0 {
  br label %2

2:                                                ; preds = %79, %1
  %3 = phi ptr [ %0, %1 ], [ %70, %79 ]
  %4 = getelementptr inbounds %struct.bio, ptr %3, i32 0, i32 3
  %5 = load i16, ptr %4, align 4
  %6 = and i16 %5, 32
  %7 = icmp eq i16 %6, 0
  br i1 %7, label %20, label %8

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.bio, ptr %3, i32 0, i32 7
  %10 = load volatile i32, ptr %9, align 4
  %11 = icmp slt i32 %10, 1
  br i1 %11, label %12, label %13, !prof !8

12:                                               ; preds = %8
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22block/bio.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1458, 0\0A.popsection", ""() #16, !srcloc !28
  unreachable

13:                                               ; preds = %8
  tail call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !21
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %9) #16, !srcloc !14
  %14 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %9, ptr %9, i32 1, ptr elementtype(i32) %9) #16, !srcloc !22
  %15 = extractvalue { i32, i32 } %14, 0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !23
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %83

17:                                               ; preds = %13
  %18 = load i16, ptr %4, align 4
  %19 = and i16 %18, -33
  store i16 %19, ptr %4, align 4
  br label %20

20:                                               ; preds = %17, %2
  %21 = phi i16 [ %19, %17 ], [ %5, %2 ]
  %22 = getelementptr inbounds %struct.bio, ptr %3, i32 0, i32 1
  %23 = load ptr, ptr %22, align 4
  %24 = icmp eq ptr %23, null
  br i1 %24, label %64, label %25

25:                                               ; preds = %20
  %26 = and i16 %21, 1024
  %27 = icmp eq i16 %26, 0
  br i1 %27, label %37, label %28

28:                                               ; preds = %25
  %29 = getelementptr inbounds %struct.block_device, ptr %23, i32 0, i32 18
  %30 = load ptr, ptr %29, align 4
  %31 = getelementptr inbounds %struct.request_queue, ptr %30, i32 0, i32 4
  %32 = load ptr, ptr %31, align 4
  %33 = icmp eq ptr %32, null
  br i1 %33, label %37, label %34

34:                                               ; preds = %28
  tail call void @__rq_qos_done_bio(ptr noundef nonnull %32, ptr noundef %3) #16
  %35 = load ptr, ptr %22, align 4
  %36 = icmp eq ptr %35, null
  br i1 %36, label %64, label %37

37:                                               ; preds = %34, %28, %25
  %38 = phi ptr [ %35, %34 ], [ %23, %28 ], [ %23, %25 ]
  %39 = load i16, ptr %4, align 4
  %40 = and i16 %39, 256
  %41 = icmp eq i16 %40, 0
  br i1 %41, label %64, label %42

42:                                               ; preds = %37
  %43 = getelementptr inbounds %struct.block_device, ptr %38, i32 0, i32 18
  %44 = load ptr, ptr %43, align 4
  %45 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_block_bio_complete, i32 0, i32 1), align 4
  %46 = icmp sgt i32 %45, 0
  br i1 %46, label %47, label %61

47:                                               ; preds = %42
  %48 = tail call ptr @llvm.thread.pointer() #16
  %49 = getelementptr inbounds %struct.thread_info, ptr %48, i32 0, i32 2
  %50 = load i32, ptr %49, align 8
  %51 = lshr i32 %50, 5
  %52 = getelementptr i32, ptr @__cpu_online_mask, i32 %51
  %53 = load volatile i32, ptr %52, align 4
  %54 = and i32 %50, 31
  %55 = shl nuw i32 1, %54
  %56 = and i32 %55, %53
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %61, label %58

58:                                               ; preds = %47
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !29
  %59 = tail call i32 @__traceiter_block_bio_complete(ptr noundef null, ptr noundef %44, ptr noundef %3) #16
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !30
  %60 = load i16, ptr %4, align 4
  br label %61

61:                                               ; preds = %58, %47, %42
  %62 = phi i16 [ %39, %42 ], [ %39, %47 ], [ %60, %58 ]
  %63 = and i16 %62, -257
  store i16 %63, ptr %4, align 4
  br label %64

64:                                               ; preds = %61, %37, %34, %20
  %65 = getelementptr inbounds %struct.bio, ptr %3, i32 0, i32 10
  %66 = load ptr, ptr %65, align 4
  %67 = icmp eq ptr %66, @bio_chain_endio
  br i1 %67, label %68, label %80

68:                                               ; preds = %64
  %69 = getelementptr inbounds %struct.bio, ptr %3, i32 0, i32 11
  %70 = load ptr, ptr %69, align 4
  %71 = getelementptr inbounds %struct.bio, ptr %3, i32 0, i32 6
  %72 = load i8, ptr %71, align 2
  %73 = icmp eq i8 %72, 0
  br i1 %73, label %79, label %74

74:                                               ; preds = %68
  %75 = getelementptr inbounds %struct.bio, ptr %70, i32 0, i32 6
  %76 = load i8, ptr %75, align 2
  %77 = icmp eq i8 %76, 0
  br i1 %77, label %78, label %79

78:                                               ; preds = %74
  store i8 %72, ptr %75, align 2
  br label %79

79:                                               ; preds = %78, %74, %68
  tail call void @bio_put(ptr noundef %3) #16
  br label %2

80:                                               ; preds = %64
  %81 = icmp eq ptr %66, null
  br i1 %81, label %83, label %82

82:                                               ; preds = %80
  tail call void %66(ptr noundef %3) #16
  br label %83

83:                                               ; preds = %82, %80, %13
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @bio_split(ptr nocapture noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef %3) #0 {
  %5 = icmp slt i32 %1, 1
  br i1 %5, label %6, label %7, !prof !8

6:                                                ; preds = %4
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22block/bio.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1537, 0\0A.popsection", ""() #16, !srcloc !31
  unreachable

7:                                                ; preds = %4
  %8 = getelementptr inbounds %struct.bio, ptr %0, i32 0, i32 8, i32 1
  %9 = load i32, ptr %8, align 4
  %10 = lshr i32 %9, 9
  %11 = icmp ugt i32 %10, %1
  br i1 %11, label %13, label %12, !prof !11

12:                                               ; preds = %7
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22block/bio.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1538, 0\0A.popsection", ""() #16, !srcloc !32
  unreachable

13:                                               ; preds = %7
  %14 = getelementptr inbounds %struct.bio, ptr %0, i32 0, i32 2
  %15 = load i32, ptr %14, align 4
  %16 = and i32 %15, 255
  %17 = icmp eq i32 %16, 13
  %18 = load i1, ptr @bio_split.__already_done, align 1
  %19 = xor i1 %18, true
  %20 = select i1 %17, i1 %19, i1 false
  br i1 %20, label %21, label %22, !prof !8

21:                                               ; preds = %13
  store i1 true, ptr @bio_split.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1541, i32 noundef 9, ptr noundef null) #16
  br label %22

22:                                               ; preds = %21, %13
  br i1 %17, label %86, label %23

23:                                               ; preds = %22
  %24 = tail call ptr @bio_clone_fast(ptr noundef %0, i32 noundef %2, ptr noundef %3)
  %25 = icmp eq ptr %24, null
  br i1 %25, label %86, label %26

26:                                               ; preds = %23
  %27 = shl i32 %1, 9
  %28 = getelementptr inbounds %struct.bio, ptr %24, i32 0, i32 8, i32 1
  store i32 %27, ptr %28, align 4
  %29 = load i32, ptr %8, align 4
  %30 = icmp eq i32 %29, %27
  br i1 %30, label %31, label %32

31:                                               ; preds = %26
  store i32 0, ptr %8, align 4
  br label %77

32:                                               ; preds = %26
  %33 = getelementptr inbounds %struct.bio, ptr %0, i32 0, i32 8
  %34 = and i32 %1, 8388607
  %35 = zext i32 %34 to i64
  %36 = load i64, ptr %33, align 1
  %37 = add i64 %36, %35
  store i64 %37, ptr %33, align 1
  %38 = load i32, ptr %14, align 4
  %39 = and i32 %38, 255
  %40 = add nsw i32 %39, -3
  %41 = and i32 %40, -7
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %43, label %45

43:                                               ; preds = %32
  %44 = sub i32 %29, %27
  store i32 %44, ptr %8, align 1
  br label %77

45:                                               ; preds = %32
  %46 = getelementptr inbounds %struct.bio, ptr %0, i32 0, i32 16
  %47 = load ptr, ptr %46, align 4
  %48 = getelementptr inbounds %struct.bio, ptr %0, i32 0, i32 8, i32 2
  %49 = load i32, ptr %48, align 1
  %50 = icmp ult i32 %29, %27
  %51 = load i1, ptr @bvec_iter_advance.__already_done, align 1
  %52 = xor i1 %51, true
  %53 = select i1 %50, i1 %52, i1 false
  br i1 %53, label %54, label %55, !prof !8

54:                                               ; preds = %45
  store i1 true, ptr @bvec_iter_advance.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 107, i32 noundef 9, ptr noundef nonnull @.str.5) #16
  br label %55

55:                                               ; preds = %54, %45
  br i1 %50, label %56, label %57

56:                                               ; preds = %55
  store i32 0, ptr %8, align 1
  br label %77

57:                                               ; preds = %55
  %58 = load i32, ptr %8, align 1
  %59 = sub i32 %58, %27
  store i32 %59, ptr %8, align 1
  %60 = getelementptr inbounds %struct.bio, ptr %0, i32 0, i32 8, i32 3
  %61 = load i32, ptr %60, align 1
  %62 = add i32 %61, %27
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %74, label %64

64:                                               ; preds = %70, %57
  %65 = phi i32 [ %71, %70 ], [ %62, %57 ]
  %66 = phi i32 [ %72, %70 ], [ %49, %57 ]
  %67 = getelementptr %struct.bio_vec, ptr %47, i32 %66, i32 1
  %68 = load i32, ptr %67, align 4
  %69 = icmp ult i32 %65, %68
  br i1 %69, label %74, label %70

70:                                               ; preds = %64
  %71 = sub i32 %65, %68
  %72 = add i32 %66, 1
  %73 = icmp eq i32 %71, 0
  br i1 %73, label %74, label %64

74:                                               ; preds = %70, %64, %57
  %75 = phi i32 [ %49, %57 ], [ %72, %70 ], [ %66, %64 ]
  %76 = phi i32 [ 0, %57 ], [ 0, %70 ], [ %65, %64 ]
  store i32 %75, ptr %48, align 1
  store i32 %76, ptr %60, align 1
  br label %77

77:                                               ; preds = %74, %56, %43, %31
  %78 = getelementptr inbounds %struct.bio, ptr %0, i32 0, i32 3
  %79 = load i16, ptr %78, align 4
  %80 = and i16 %79, 256
  %81 = icmp eq i16 %80, 0
  br i1 %81, label %86, label %82

82:                                               ; preds = %77
  %83 = getelementptr inbounds %struct.bio, ptr %24, i32 0, i32 3
  %84 = load i16, ptr %83, align 4
  %85 = or i16 %84, 256
  store i16 %85, ptr %83, align 4
  br label %86

86:                                               ; preds = %82, %77, %23, %22
  %87 = phi ptr [ null, %22 ], [ null, %23 ], [ %24, %82 ], [ %24, %77 ]
  ret ptr %87
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @bio_trim(ptr nocapture noundef %0, i64 noundef %1, i64 noundef %2) #0 {
  %4 = or i64 %2, %1
  %5 = icmp ult i64 %4, 8388608
  br i1 %5, label %6, label %12

6:                                                ; preds = %3
  %7 = add nuw nsw i64 %2, %1
  %8 = getelementptr inbounds %struct.bio, ptr %0, i32 0, i32 8, i32 1
  %9 = load i32, ptr %8, align 4
  %10 = zext i32 %9 to i64
  %11 = icmp ugt i64 %7, %10
  br label %12

12:                                               ; preds = %6, %3
  %13 = phi i1 [ true, %3 ], [ %11, %6 ]
  %14 = load i1, ptr @bio_trim.__already_done, align 1
  %15 = xor i1 %14, true
  %16 = select i1 %13, i1 %15, i1 false
  br i1 %16, label %17, label %18, !prof !8

17:                                               ; preds = %12
  store i1 true, ptr @bio_trim.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1574, i32 noundef 9, ptr noundef null) #16
  br label %18

18:                                               ; preds = %17, %12
  br i1 %13, label %76, label %19

19:                                               ; preds = %18
  %20 = shl i64 %2, 9
  %21 = icmp eq i64 %1, 0
  %22 = getelementptr inbounds %struct.bio, ptr %0, i32 0, i32 8, i32 1
  %23 = load i32, ptr %22, align 4
  %24 = zext i32 %23 to i64
  %25 = icmp eq i64 %20, %24
  %26 = select i1 %21, i1 %25, i1 false
  br i1 %26, label %76, label %27

27:                                               ; preds = %19
  %28 = trunc i64 %1 to i32
  %29 = shl i32 %28, 9
  %30 = getelementptr inbounds %struct.bio, ptr %0, i32 0, i32 8, i32 1
  %31 = icmp eq i32 %23, %29
  br i1 %31, label %74, label %32

32:                                               ; preds = %27
  %33 = getelementptr inbounds %struct.bio, ptr %0, i32 0, i32 8
  %34 = and i64 %1, 8388607
  %35 = load i64, ptr %33, align 1
  %36 = add i64 %35, %34
  store i64 %36, ptr %33, align 1
  %37 = getelementptr inbounds %struct.bio, ptr %0, i32 0, i32 2
  %38 = load i32, ptr %37, align 4
  %39 = and i32 %38, 255
  %40 = add nsw i32 %39, -3
  %41 = and i32 %40, -7
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %74, label %43

43:                                               ; preds = %32
  %44 = getelementptr inbounds %struct.bio, ptr %0, i32 0, i32 16
  %45 = load ptr, ptr %44, align 4
  %46 = getelementptr inbounds %struct.bio, ptr %0, i32 0, i32 8, i32 2
  %47 = load i32, ptr %46, align 1
  %48 = icmp ult i32 %23, %29
  %49 = load i1, ptr @bvec_iter_advance.__already_done, align 1
  %50 = xor i1 %49, true
  %51 = select i1 %48, i1 %50, i1 false
  br i1 %51, label %52, label %53, !prof !8

52:                                               ; preds = %43
  store i1 true, ptr @bvec_iter_advance.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 107, i32 noundef 9, ptr noundef nonnull @.str.5) #16
  br label %53

53:                                               ; preds = %52, %43
  br i1 %48, label %74, label %54

54:                                               ; preds = %53
  %55 = load i32, ptr %30, align 1
  %56 = sub i32 %55, %29
  store i32 %56, ptr %30, align 1
  %57 = getelementptr inbounds %struct.bio, ptr %0, i32 0, i32 8, i32 3
  %58 = load i32, ptr %57, align 1
  %59 = add i32 %58, %29
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %71, label %61

61:                                               ; preds = %67, %54
  %62 = phi i32 [ %68, %67 ], [ %59, %54 ]
  %63 = phi i32 [ %69, %67 ], [ %47, %54 ]
  %64 = getelementptr %struct.bio_vec, ptr %45, i32 %63, i32 1
  %65 = load i32, ptr %64, align 4
  %66 = icmp ult i32 %62, %65
  br i1 %66, label %71, label %67

67:                                               ; preds = %61
  %68 = sub i32 %62, %65
  %69 = add i32 %63, 1
  %70 = icmp eq i32 %68, 0
  br i1 %70, label %71, label %61

71:                                               ; preds = %67, %61, %54
  %72 = phi i32 [ %47, %54 ], [ %69, %67 ], [ %63, %61 ]
  %73 = phi i32 [ 0, %54 ], [ 0, %67 ], [ %62, %61 ]
  store i32 %72, ptr %46, align 1
  store i32 %73, ptr %57, align 1
  br label %74

74:                                               ; preds = %71, %53, %32, %27
  %75 = trunc i64 %20 to i32
  store i32 %75, ptr %30, align 4
  br label %76

76:                                               ; preds = %74, %19, %18
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @biovec_init_pool(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = load ptr, ptr getelementptr inbounds ([4 x %struct.biovec_slab], ptr @bvec_slabs, i32 0, i32 3, i32 2), align 4
  %4 = tail call i32 @mempool_init(ptr noundef %0, i32 noundef %1, ptr noundef nonnull @mempool_alloc_slab, ptr noundef nonnull @mempool_free_slab, ptr noundef %3) #16
  ret i32 %4
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @bioset_exit(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.bio_set, ptr %0, i32 0, i32 2
  %3 = load ptr, ptr %2, align 4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %36, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.bio_set, ptr %0, i32 0, i32 10
  %7 = tail call i32 @__cpuhp_state_remove_instance(i32 noundef 23, ptr noundef %6, i1 noundef zeroext false) #16
  %8 = tail call i32 @cpumask_next(i32 noundef -1, ptr noundef nonnull @__cpu_possible_mask) #18
  %9 = load i32, ptr @nr_cpu_ids, align 4
  %10 = icmp ult i32 %8, %9
  br i1 %10, label %11, label %34

11:                                               ; preds = %30, %5
  %12 = phi i32 [ %31, %30 ], [ %8, %5 ]
  %13 = load ptr, ptr %2, align 4
  %14 = ptrtoint ptr %13 to i32
  %15 = getelementptr [16 x i32], ptr @__per_cpu_offset, i32 0, i32 %12
  %16 = load i32, ptr %15, align 4
  %17 = add i32 %16, %14
  %18 = inttoptr i32 %17 to ptr
  %19 = getelementptr inbounds %struct.bio_alloc_cache, ptr %18, i32 0, i32 1
  br label %20

20:                                               ; preds = %24, %11
  %21 = phi i32 [ 0, %11 ], [ %28, %24 ]
  %22 = load ptr, ptr %18, align 4
  %23 = icmp eq ptr %22, null
  br i1 %23, label %30, label %24

24:                                               ; preds = %20
  %25 = load ptr, ptr %22, align 4
  store ptr %25, ptr %18, align 4
  %26 = load i32, ptr %19, align 4
  %27 = add i32 %26, -1
  store i32 %27, ptr %19, align 4
  tail call fastcc void @bio_free(ptr noundef nonnull %22) #16
  %28 = add nuw i32 %21, 1
  %29 = icmp eq i32 %28, -1
  br i1 %29, label %30, label %20

30:                                               ; preds = %24, %20
  %31 = tail call i32 @cpumask_next(i32 noundef %12, ptr noundef nonnull @__cpu_possible_mask) #18
  %32 = load i32, ptr @nr_cpu_ids, align 4
  %33 = icmp ult i32 %31, %32
  br i1 %33, label %11, label %34

34:                                               ; preds = %30, %5
  %35 = load ptr, ptr %2, align 4
  tail call void @free_percpu(ptr noundef %35) #16
  br label %36

36:                                               ; preds = %34, %1
  %37 = getelementptr inbounds %struct.bio_set, ptr %0, i32 0, i32 9
  %38 = load ptr, ptr %37, align 4
  %39 = icmp eq ptr %38, null
  br i1 %39, label %41, label %40

40:                                               ; preds = %36
  tail call void @destroy_workqueue(ptr noundef nonnull %38) #16
  br label %41

41:                                               ; preds = %40, %36
  store ptr null, ptr %37, align 4
  %42 = getelementptr inbounds %struct.bio_set, ptr %0, i32 0, i32 3
  tail call void @mempool_exit(ptr noundef %42) #16
  %43 = getelementptr inbounds %struct.bio_set, ptr %0, i32 0, i32 4
  tail call void @mempool_exit(ptr noundef %43) #16
  %44 = load ptr, ptr %0, align 4
  %45 = icmp eq ptr %44, null
  br i1 %45, label %78, label %46

46:                                               ; preds = %41
  %47 = getelementptr inbounds %struct.bio_set, ptr %0, i32 0, i32 1
  %48 = load i32, ptr %47, align 4
  %49 = add i32 %48, 72
  %50 = getelementptr inbounds %struct.bio_set, ptr %0, i32 0, i32 5
  %51 = load i32, ptr %50, align 4
  %52 = add i32 %49, %51
  tail call void @mutex_lock(ptr noundef nonnull @bio_slab_lock) #16
  %53 = tail call ptr @xa_load(ptr noundef nonnull @bio_slabs, i32 noundef %52) #16
  %54 = icmp eq ptr %53, null
  br i1 %54, label %55, label %56, !prof !8

55:                                               ; preds = %46
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 139, i32 noundef 9, ptr noundef nonnull @.str.11) #16
  br label %77

56:                                               ; preds = %46
  %57 = load ptr, ptr %53, align 4
  %58 = load ptr, ptr %0, align 4
  %59 = icmp ne ptr %57, %58
  %60 = load i1, ptr @bio_put_slab.__already_done, align 1
  %61 = xor i1 %60, true
  %62 = select i1 %59, i1 %61, i1 false
  br i1 %62, label %63, label %64, !prof !8

63:                                               ; preds = %56
  store i1 true, ptr @bio_put_slab.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 142, i32 noundef 9, ptr noundef null) #16
  br label %64

64:                                               ; preds = %63, %56
  %65 = getelementptr inbounds %struct.bio_slab, ptr %53, i32 0, i32 1
  %66 = load i32, ptr %65, align 4
  %67 = icmp eq i32 %66, 0
  br i1 %67, label %68, label %70, !prof !8

68:                                               ; preds = %64
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 144, i32 noundef 9, ptr noundef null) #16
  %69 = load i32, ptr %65, align 4
  br label %70

70:                                               ; preds = %68, %64
  %71 = phi i32 [ %69, %68 ], [ %66, %64 ]
  %72 = add i32 %71, -1
  store i32 %72, ptr %65, align 4
  %73 = icmp eq i32 %72, 0
  br i1 %73, label %74, label %77

74:                                               ; preds = %70
  %75 = tail call ptr @xa_erase(ptr noundef nonnull @bio_slabs, i32 noundef %52) #16
  %76 = load ptr, ptr %53, align 4
  tail call void @kmem_cache_destroy(ptr noundef %76) #16
  tail call void @kfree(ptr noundef nonnull %53) #16
  br label %77

77:                                               ; preds = %74, %70, %55
  tail call void @mutex_unlock(ptr noundef nonnull @bio_slab_lock) #16
  br label %78

78:                                               ; preds = %77, %41
  store ptr null, ptr %0, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @destroy_workqueue(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mempool_exit(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @bioset_init(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) #0 {
  %5 = getelementptr inbounds %struct.bio_set, ptr %0, i32 0, i32 1
  store i32 %2, ptr %5, align 4
  %6 = and i32 %3, 1
  %7 = icmp eq i32 %6, 0
  %8 = select i1 %7, i32 0, i32 48
  %9 = getelementptr inbounds %struct.bio_set, ptr %0, i32 0, i32 5
  store i32 %8, ptr %9, align 4
  %10 = getelementptr inbounds %struct.bio_set, ptr %0, i32 0, i32 6
  store i32 0, ptr %10, align 4
  %11 = getelementptr inbounds %struct.bio_set, ptr %0, i32 0, i32 7
  %12 = getelementptr inbounds %struct.bio_set, ptr %0, i32 0, i32 7, i32 1
  store ptr null, ptr %12, align 4
  store ptr null, ptr %11, align 4
  %13 = getelementptr inbounds %struct.bio_set, ptr %0, i32 0, i32 8
  store i32 -32, ptr %13, align 4
  %14 = getelementptr inbounds %struct.bio_set, ptr %0, i32 0, i32 8, i32 1
  store volatile ptr %14, ptr %14, align 4
  %15 = getelementptr inbounds %struct.bio_set, ptr %0, i32 0, i32 8, i32 1, i32 1
  store ptr %14, ptr %15, align 4
  %16 = getelementptr inbounds %struct.bio_set, ptr %0, i32 0, i32 8, i32 2
  store ptr @bio_alloc_rescue, ptr %16, align 4
  %17 = add i32 %2, 72
  %18 = add i32 %17, %8
  tail call void @mutex_lock(ptr noundef nonnull @bio_slab_lock) #16
  %19 = tail call ptr @xa_load(ptr noundef nonnull @bio_slabs, i32 noundef %18) #16
  %20 = icmp eq ptr %19, null
  br i1 %20, label %25, label %21

21:                                               ; preds = %4
  %22 = getelementptr inbounds %struct.bio_slab, ptr %19, i32 0, i32 1
  %23 = load i32, ptr %22, align 4
  %24 = add i32 %23, 1
  store i32 %24, ptr %22, align 4
  br label %49

25:                                               ; preds = %4
  %26 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %27 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %26, i32 noundef 3520, i32 noundef 20) #19
  %28 = icmp eq ptr %27, null
  br i1 %28, label %48, label %29

29:                                               ; preds = %25
  %30 = getelementptr inbounds %struct.bio_slab, ptr %27, i32 0, i32 3
  %31 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %30, i32 noundef 8, ptr noundef nonnull @.str.12, i32 noundef %18) #16
  %32 = tail call ptr @kmem_cache_create(ptr noundef %30, i32 noundef %18, i32 noundef 64, i32 noundef 532480, ptr noundef null) #16
  store ptr %32, ptr %27, align 8
  %33 = icmp eq ptr %32, null
  br i1 %33, label %47, label %34

34:                                               ; preds = %29
  %35 = getelementptr inbounds %struct.bio_slab, ptr %27, i32 0, i32 1
  store i32 1, ptr %35, align 4
  %36 = getelementptr inbounds %struct.bio_slab, ptr %27, i32 0, i32 2
  store i32 %18, ptr %36, align 8
  %37 = tail call ptr @xa_store(ptr noundef nonnull @bio_slabs, i32 noundef %18, ptr noundef nonnull %27, i32 noundef 3264) #16
  %38 = ptrtoint ptr %37 to i32
  %39 = and i32 %38, 3
  %40 = icmp ne i32 %39, 2
  %41 = icmp ult ptr %37, inttoptr (i32 -16378 to ptr)
  %42 = icmp ult ptr %37, inttoptr (i32 4 to ptr)
  %43 = or i1 %41, %40
  %44 = or i1 %42, %43
  br i1 %44, label %49, label %45

45:                                               ; preds = %34
  %46 = load ptr, ptr %27, align 8
  tail call void @kmem_cache_destroy(ptr noundef %46) #16
  br label %47

47:                                               ; preds = %45, %29
  tail call void @kfree(ptr noundef nonnull %27) #16
  br label %48

48:                                               ; preds = %47, %25
  tail call void @mutex_unlock(ptr noundef nonnull @bio_slab_lock) #16
  store ptr null, ptr %0, align 4
  br label %81

49:                                               ; preds = %34, %21
  %50 = phi ptr [ %19, %21 ], [ %27, %34 ]
  tail call void @mutex_unlock(ptr noundef nonnull @bio_slab_lock) #16
  %51 = load ptr, ptr %50, align 4
  store ptr %51, ptr %0, align 4
  %52 = icmp eq ptr %51, null
  br i1 %52, label %81, label %53

53:                                               ; preds = %49
  %54 = getelementptr inbounds %struct.bio_set, ptr %0, i32 0, i32 3
  %55 = tail call i32 @mempool_init(ptr noundef %54, i32 noundef %1, ptr noundef nonnull @mempool_alloc_slab, ptr noundef nonnull @mempool_free_slab, ptr noundef nonnull %51) #16
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %57, label %80

57:                                               ; preds = %53
  br i1 %7, label %63, label %58

58:                                               ; preds = %57
  %59 = getelementptr inbounds %struct.bio_set, ptr %0, i32 0, i32 4
  %60 = load ptr, ptr getelementptr inbounds ([4 x %struct.biovec_slab], ptr @bvec_slabs, i32 0, i32 3, i32 2), align 4
  %61 = tail call i32 @mempool_init(ptr noundef %59, i32 noundef %1, ptr noundef nonnull @mempool_alloc_slab, ptr noundef nonnull @mempool_free_slab, ptr noundef %60) #16
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %63, label %80

63:                                               ; preds = %58, %57
  %64 = and i32 %3, 2
  %65 = icmp eq i32 %64, 0
  br i1 %65, label %70, label %66

66:                                               ; preds = %63
  %67 = tail call ptr (ptr, i32, i32, ...) @alloc_workqueue(ptr noundef nonnull @.str.3, i32 noundef 8, i32 noundef 0) #16
  %68 = getelementptr inbounds %struct.bio_set, ptr %0, i32 0, i32 9
  store ptr %67, ptr %68, align 4
  %69 = icmp eq ptr %67, null
  br i1 %69, label %80, label %70

70:                                               ; preds = %66, %63
  %71 = and i32 %3, 4
  %72 = icmp eq i32 %71, 0
  br i1 %72, label %81, label %73

73:                                               ; preds = %70
  %74 = tail call noalias ptr @__alloc_percpu(i32 noundef 8, i32 noundef 4) #17
  %75 = getelementptr inbounds %struct.bio_set, ptr %0, i32 0, i32 2
  store ptr %74, ptr %75, align 4
  %76 = icmp eq ptr %74, null
  br i1 %76, label %80, label %77

77:                                               ; preds = %73
  %78 = getelementptr inbounds %struct.bio_set, ptr %0, i32 0, i32 10
  %79 = tail call i32 @__cpuhp_state_add_instance(i32 noundef 23, ptr noundef %78, i1 noundef zeroext false) #16
  br label %81

80:                                               ; preds = %73, %66, %58, %53
  tail call void @bioset_exit(ptr noundef %0)
  br label %81

81:                                               ; preds = %80, %77, %70, %49, %48
  %82 = phi i32 [ -12, %80 ], [ -12, %49 ], [ 0, %77 ], [ 0, %70 ], [ -12, %48 ]
  ret i32 %82
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @bio_alloc_rescue(ptr noundef %0) #0 {
  %2 = getelementptr i8, ptr %0, i32 -12
  tail call void @_raw_spin_lock(ptr noundef %2) #16
  %3 = getelementptr i8, ptr %0, i32 -8
  %4 = load ptr, ptr %3, align 4
  %5 = icmp eq ptr %4, null
  br i1 %5, label %18, label %6

6:                                                ; preds = %1
  %7 = getelementptr i8, ptr %0, i32 -4
  br label %8

8:                                                ; preds = %13, %6
  %9 = phi ptr [ %4, %6 ], [ %16, %13 ]
  %10 = load ptr, ptr %9, align 4
  store ptr %10, ptr %3, align 4
  %11 = icmp eq ptr %10, null
  br i1 %11, label %12, label %13

12:                                               ; preds = %8
  store ptr null, ptr %7, align 4
  br label %13

13:                                               ; preds = %12, %8
  store ptr null, ptr %9, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !16
  %14 = load i16, ptr %2, align 4
  %15 = add i16 %14, 1
  store i16 %15, ptr %2, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #16, !srcloc !17
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #16, !srcloc !18
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !19
  tail call void @submit_bio_noacct(ptr noundef nonnull %9) #16
  tail call void @_raw_spin_lock(ptr noundef %2) #16
  %16 = load ptr, ptr %3, align 4
  %17 = icmp eq ptr %16, null
  br i1 %17, label %18, label %8

18:                                               ; preds = %13, %1
  tail call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !16
  %19 = load i16, ptr %2, align 4
  %20 = add i16 %19, 1
  store i16 %20, ptr %2, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #16, !srcloc !17
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #16, !srcloc !18
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !19
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @alloc_workqueue(ptr noundef, i32 noundef, i32 noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__alloc_percpu(i32 noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @bioset_init_from_src(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = getelementptr inbounds %struct.bio_set, ptr %1, i32 0, i32 4, i32 1
  %4 = load i32, ptr %3, align 4
  %5 = icmp ne i32 %4, 0
  %6 = zext i1 %5 to i32
  %7 = getelementptr inbounds %struct.bio_set, ptr %1, i32 0, i32 9
  %8 = load ptr, ptr %7, align 4
  %9 = icmp eq ptr %8, null
  %10 = or i32 %6, 2
  %11 = select i1 %9, i32 %6, i32 %10
  %12 = getelementptr inbounds %struct.bio_set, ptr %1, i32 0, i32 3, i32 1
  %13 = load i32, ptr %12, align 4
  %14 = getelementptr inbounds %struct.bio_set, ptr %1, i32 0, i32 1
  %15 = load i32, ptr %14, align 4
  %16 = tail call i32 @bioset_init(ptr noundef %0, i32 noundef %13, i32 noundef %15, i32 noundef %11)
  ret i32 %16
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @bio_alloc_kiocb(ptr nocapture noundef readonly %0, i16 noundef zeroext %1, ptr noundef %2) #0 {
  %4 = getelementptr inbounds %struct.kiocb, ptr %0, i32 0, i32 4
  %5 = load i32, ptr %4, align 8
  %6 = and i32 %5, 2097152
  %7 = icmp eq i32 %6, 0
  %8 = icmp ugt i16 %1, 4
  %9 = or i1 %8, %7
  br i1 %9, label %10, label %12

10:                                               ; preds = %3
  %11 = tail call ptr @bio_alloc_bioset(i32 noundef 3264, i16 noundef zeroext %1, ptr noundef %2)
  br label %49

12:                                               ; preds = %3
  %13 = getelementptr inbounds %struct.bio_set, ptr %2, i32 0, i32 2
  %14 = load ptr, ptr %13, align 4
  %15 = ptrtoint ptr %14 to i32
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !33
  %16 = tail call ptr @llvm.thread.pointer() #16
  %17 = getelementptr inbounds %struct.thread_info, ptr %16, i32 0, i32 2
  %18 = load i32, ptr %17, align 8
  %19 = getelementptr [16 x i32], ptr @__per_cpu_offset, i32 0, i32 %18
  %20 = load i32, ptr %19, align 4
  %21 = add i32 %20, %15
  %22 = inttoptr i32 %21 to ptr
  %23 = load ptr, ptr %22, align 4
  %24 = icmp eq ptr %23, null
  br i1 %24, label %44, label %25

25:                                               ; preds = %12
  %26 = load ptr, ptr %23, align 4
  store ptr %26, ptr %22, align 4
  %27 = getelementptr inbounds %struct.bio_alloc_cache, ptr %22, i32 0, i32 1
  %28 = load i32, ptr %27, align 4
  %29 = add i32 %28, -1
  store i32 %29, ptr %27, align 4
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !34
  %30 = icmp eq i16 %1, 0
  %31 = getelementptr inbounds %struct.bio, ptr %23, i32 0, i32 18
  %32 = select i1 %30, ptr null, ptr %31
  %33 = getelementptr inbounds %struct.bio, ptr %23, i32 0, i32 8
  %34 = getelementptr inbounds %struct.bio, ptr %23, i32 0, i32 10
  store ptr null, ptr %34, align 4
  %35 = getelementptr inbounds %struct.bio, ptr %23, i32 0, i32 11
  store ptr null, ptr %35, align 4
  %36 = getelementptr inbounds %struct.bio, ptr %23, i32 0, i32 13
  store i16 0, ptr %36, align 4
  %37 = getelementptr inbounds %struct.bio, ptr %23, i32 0, i32 7
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(19) %23, i8 0, i64 19, i1 false) #16
  tail call void @llvm.memset.p0.i64(ptr noundef align 4 dereferenceable(20) %33, i8 0, i64 20, i1 false) #16
  store volatile i32 1, ptr %37, align 4
  %38 = getelementptr inbounds %struct.bio, ptr %23, i32 0, i32 15
  store volatile i32 1, ptr %38, align 4
  %39 = getelementptr inbounds %struct.bio, ptr %23, i32 0, i32 9
  store i32 -1, ptr %39, align 4
  %40 = getelementptr inbounds %struct.bio, ptr %23, i32 0, i32 14
  store i16 %1, ptr %40, align 2
  %41 = getelementptr inbounds %struct.bio, ptr %23, i32 0, i32 16
  store ptr %32, ptr %41, align 4
  %42 = getelementptr inbounds %struct.bio, ptr %23, i32 0, i32 17
  store ptr %2, ptr %42, align 4
  %43 = getelementptr inbounds %struct.bio, ptr %23, i32 0, i32 3
  store i16 8192, ptr %43, align 4
  br label %49

44:                                               ; preds = %12
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !35
  %45 = tail call ptr @bio_alloc_bioset(i32 noundef 3264, i16 noundef zeroext %1, ptr noundef %2)
  %46 = getelementptr inbounds %struct.bio, ptr %45, i32 0, i32 3
  %47 = load i16, ptr %46, align 4
  %48 = or i16 %47, 8192
  store i16 %48, ptr %46, align 4
  br label %49

49:                                               ; preds = %44, %25, %10
  %50 = phi ptr [ %11, %10 ], [ %23, %25 ], [ %45, %44 ]
  ret ptr %50
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @init_bio() #9 section ".init.text" {
  br label %1

1:                                                ; preds = %1, %0
  %2 = phi i32 [ 0, %0 ], [ %10, %1 ]
  %3 = getelementptr %struct.biovec_slab, ptr @bvec_slabs, i32 %2
  %4 = getelementptr %struct.biovec_slab, ptr @bvec_slabs, i32 %2, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = load i32, ptr %3, align 4
  %7 = mul i32 %6, 12
  %8 = tail call ptr @kmem_cache_create(ptr noundef %5, i32 noundef %7, i32 noundef 0, i32 noundef 270336, ptr noundef null) #16
  %9 = getelementptr %struct.biovec_slab, ptr @bvec_slabs, i32 %2, i32 2
  store ptr %8, ptr %9, align 4
  %10 = add nuw nsw i32 %2, 1
  %11 = icmp eq i32 %10, 4
  br i1 %11, label %12, label %1

12:                                               ; preds = %1
  %13 = tail call i32 @__cpuhp_setup_state(i32 noundef 23, ptr noundef nonnull @.str.13, i1 noundef zeroext false, ptr noundef null, ptr noundef nonnull @bio_cpu_dead, i1 noundef zeroext true) #16
  %14 = tail call i32 @bioset_init(ptr noundef nonnull @fs_bio_set, i32 noundef 2, i32 noundef 0, i32 noundef 1)
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %17, label %16

16:                                               ; preds = %12
  tail call void (ptr, ...) @panic(ptr noundef nonnull @.str.14) #20
  unreachable

17:                                               ; preds = %12
  ret i32 0
}

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.thread.pointer() #10

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #11

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @flush_dcache_page(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__kmap_local_page_prot(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @zero_user_segments(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__put_page(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iov_iter_get_pages(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @complete(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kunmap_local_indexed(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @bio_dirty_fn(ptr nocapture noundef readnone %0) #0 {
  tail call void @_raw_spin_lock_irq(ptr noundef nonnull @bio_dirty_lock) #16
  %2 = load ptr, ptr @bio_dirty_list, align 4
  store ptr null, ptr @bio_dirty_list, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !16
  %3 = load i16, ptr @bio_dirty_lock, align 4
  %4 = add i16 %3, 1
  store i16 %4, ptr @bio_dirty_lock, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #16, !srcloc !17
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #16, !srcloc !18
  tail call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #16, !srcloc !36
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !37
  %5 = icmp eq ptr %2, null
  br i1 %5, label %17, label %6

6:                                                ; preds = %15, %1
  %7 = phi ptr [ %9, %15 ], [ %2, %1 ]
  %8 = getelementptr inbounds %struct.bio, ptr %7, i32 0, i32 11
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.bio, ptr %7, i32 0, i32 3
  %11 = load i16, ptr %10, align 4
  %12 = and i16 %11, 1
  %13 = icmp eq i16 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %6
  tail call void @__bio_release_pages(ptr noundef nonnull %7, i1 noundef zeroext true) #16
  br label %15

15:                                               ; preds = %14, %6
  tail call void @bio_put(ptr noundef nonnull %7)
  %16 = icmp eq ptr %9, null
  br i1 %16, label %17, label %6

17:                                               ; preds = %15, %1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_irq(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @__rq_qos_done_bio(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_block_bio_complete(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mempool_init(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @mempool_alloc_slab(i32 noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mempool_free_slab(ptr noundef, ptr noundef) #1

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @cpumask_next(i32 noundef, ptr noundef) local_unnamed_addr #12

; Function Attrs: null_pointer_is_valid
declare dso_local void @free_percpu(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__cpuhp_state_remove_instance(i32 noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @xa_load(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @xa_erase(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kmem_cache_destroy(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @submit_bio_noacct(ptr noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #13

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kmem_cache_create(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @xa_store(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__cpuhp_state_add_instance(i32 noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @bio_cpu_dead(i32 noundef %0, ptr noundef readonly %1) #0 {
  %3 = icmp eq ptr %1, null
  %4 = getelementptr i8, ptr %1, i32 -128
  %5 = select i1 %3, ptr null, ptr %4
  %6 = getelementptr inbounds %struct.bio_set, ptr %5, i32 0, i32 2
  %7 = load ptr, ptr %6, align 4
  %8 = icmp eq ptr %7, null
  br i1 %8, label %26, label %9

9:                                                ; preds = %2
  %10 = ptrtoint ptr %7 to i32
  %11 = getelementptr [16 x i32], ptr @__per_cpu_offset, i32 0, i32 %0
  %12 = load i32, ptr %11, align 4
  %13 = add i32 %12, %10
  %14 = inttoptr i32 %13 to ptr
  %15 = getelementptr inbounds %struct.bio_alloc_cache, ptr %14, i32 0, i32 1
  br label %16

16:                                               ; preds = %20, %9
  %17 = phi i32 [ 0, %9 ], [ %24, %20 ]
  %18 = load ptr, ptr %14, align 4
  %19 = icmp eq ptr %18, null
  br i1 %19, label %26, label %20

20:                                               ; preds = %16
  %21 = load ptr, ptr %18, align 4
  store ptr %21, ptr %14, align 4
  %22 = load i32, ptr %15, align 4
  %23 = add i32 %22, -1
  store i32 %23, ptr %15, align 4
  tail call fastcc void @bio_free(ptr noundef nonnull %18) #16
  %24 = add nuw i32 %17, 1
  %25 = icmp eq i32 %24, -1
  br i1 %25, label %26, label %16

26:                                               ; preds = %20, %16, %2
  ret i32 0
}

; Function Attrs: cold noreturn null_pointer_is_valid
declare dso_local void @panic(ptr noundef, ...) local_unnamed_addr #14

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__cpuhp_setup_state(i32 noundef, ptr noundef, i1 noundef zeroext, ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #15

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #6

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { argmemonly nofree norecurse nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { argmemonly nofree nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { argmemonly nofree nounwind willreturn writeonly }
attributes #7 = { argmemonly nofree nounwind willreturn }
attributes #8 = { null_pointer_is_valid allocsize(0) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #10 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #11 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #12 = { mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #13 = { nofree nounwind null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #14 = { cold noreturn null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #15 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #16 = { nounwind }
attributes #17 = { nounwind allocsize(0) }
attributes #18 = { nounwind readonly willreturn }
attributes #19 = { nounwind allocsize(2) }
attributes #20 = { cold noreturn nounwind }

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
!8 = !{!"branch_weights", i32 1, i32 2000}
!9 = !{i64 2154390992, i64 2154391468, i64 2154391029, i64 2154391085, i64 2154391119, i64 2154391143, i64 2154391184, i64 2154391205, i64 2154391233, i64 2154391267}
!10 = !{i64 2154384824, i64 2154385299, i64 2154384861, i64 2154384917, i64 2154384951, i64 2154384975, i64 2154385016, i64 2154385037, i64 2154385065, i64 2154385099}
!11 = !{!"branch_weights", i32 2000, i32 1}
!12 = !{i64 2154396882, i64 2154397358, i64 2154396919, i64 2154396975, i64 2154397009, i64 2154397033, i64 2154397074, i64 2154397095, i64 2154397123, i64 2154397157}
!13 = !{i64 2153442023}
!14 = !{i64 887474, i64 2148377445, i64 2148377471, i64 2148377518, i64 2148377540, i64 2148377568, i64 2148377588}
!15 = !{i64 2148388860, i64 2148388886, i64 2148388915, i64 2148388949, i64 2148388980, i64 2148389003}
!16 = !{i64 2149054540}
!17 = !{i64 2149050364}
!18 = !{i64 2149050439, i64 2149050466, i64 2149050513, i64 2149050535, i64 2149050563, i64 2149050583}
!19 = !{i64 2149077543}
!20 = !{i64 2154470592, i64 2154471068, i64 2154470629, i64 2154470685, i64 2154470719, i64 2154470743, i64 2154470784, i64 2154470805, i64 2154470833, i64 2154470867}
!21 = !{i64 2148489539}
!22 = !{i64 2148391901, i64 2148391933, i64 2148391962, i64 2148391996, i64 2148392027, i64 2148392050}
!23 = !{i64 2148489742}
!24 = !{i64 2154472599}
!25 = !{i64 2154472737}
!26 = !{!"auto-init"}
!27 = !{i8 0, i8 2}
!28 = !{i64 2154577685, i64 2154578162, i64 2154577722, i64 2154577778, i64 2154577812, i64 2154577836, i64 2154577877, i64 2154577898, i64 2154577926, i64 2154577960}
!29 = !{i64 2154113005}
!30 = !{i64 2154113165}
!31 = !{i64 2154579749, i64 2154580226, i64 2154579786, i64 2154579842, i64 2154579876, i64 2154579900, i64 2154579941, i64 2154579962, i64 2154579990, i64 2154580024}
!32 = !{i64 2154580889, i64 2154581366, i64 2154580926, i64 2154580982, i64 2154581016, i64 2154581040, i64 2154581081, i64 2154581102, i64 2154581130, i64 2154581164}
!33 = !{i64 2154592552}
!34 = !{i64 2154592680}
!35 = !{i64 2154592757}
!36 = !{i64 793397}
!37 = !{i64 2149078684}
