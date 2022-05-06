; ModuleID = '/llk/IR/mm/memory.c_pt.bc'
source_filename = "../mm/memory.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_max_mapnr:\09\09\09\09\09"
module asm "\09.asciz \09\22max_mapnr\22\09\09\09\09\09"
module asm "__kstrtabns_max_mapnr:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_mem_map:\09\09\09\09\09"
module asm "\09.asciz \09\22mem_map\22\09\09\09\09\09"
module asm "__kstrtabns_mem_map:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_high_memory:\09\09\09\09\09"
module asm "\09.asciz \09\22high_memory\22\09\09\09\09\09"
module asm "__kstrtabns_high_memory:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_zero_pfn:\09\09\09\09\09"
module asm "\09.asciz \09\22zero_pfn\22\09\09\09\09\09"
module asm "__kstrtabns_zero_pfn:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_zap_vma_ptes:\09\09\09\09\09"
module asm "\09.asciz \09\22zap_vma_ptes\22\09\09\09\09\09"
module asm "__kstrtabns_zap_vma_ptes:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_vm_insert_pages:\09\09\09\09\09"
module asm "\09.asciz \09\22vm_insert_pages\22\09\09\09\09\09"
module asm "__kstrtabns_vm_insert_pages:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_vm_insert_page:\09\09\09\09\09"
module asm "\09.asciz \09\22vm_insert_page\22\09\09\09\09\09"
module asm "__kstrtabns_vm_insert_page:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_vm_map_pages:\09\09\09\09\09"
module asm "\09.asciz \09\22vm_map_pages\22\09\09\09\09\09"
module asm "__kstrtabns_vm_map_pages:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_vm_map_pages_zero:\09\09\09\09\09"
module asm "\09.asciz \09\22vm_map_pages_zero\22\09\09\09\09\09"
module asm "__kstrtabns_vm_map_pages_zero:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_vmf_insert_pfn_prot:\09\09\09\09\09"
module asm "\09.asciz \09\22vmf_insert_pfn_prot\22\09\09\09\09\09"
module asm "__kstrtabns_vmf_insert_pfn_prot:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_vmf_insert_pfn:\09\09\09\09\09"
module asm "\09.asciz \09\22vmf_insert_pfn\22\09\09\09\09\09"
module asm "__kstrtabns_vmf_insert_pfn:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_vmf_insert_mixed_prot:\09\09\09\09\09"
module asm "\09.asciz \09\22vmf_insert_mixed_prot\22\09\09\09\09\09"
module asm "__kstrtabns_vmf_insert_mixed_prot:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_vmf_insert_mixed:\09\09\09\09\09"
module asm "\09.asciz \09\22vmf_insert_mixed\22\09\09\09\09\09"
module asm "__kstrtabns_vmf_insert_mixed:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_vmf_insert_mixed_mkwrite:\09\09\09\09\09"
module asm "\09.asciz \09\22vmf_insert_mixed_mkwrite\22\09\09\09\09\09"
module asm "__kstrtabns_vmf_insert_mixed_mkwrite:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_remap_pfn_range:\09\09\09\09\09"
module asm "\09.asciz \09\22remap_pfn_range\22\09\09\09\09\09"
module asm "__kstrtabns_remap_pfn_range:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_vm_iomap_memory:\09\09\09\09\09"
module asm "\09.asciz \09\22vm_iomap_memory\22\09\09\09\09\09"
module asm "__kstrtabns_vm_iomap_memory:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_apply_to_page_range:\09\09\09\09\09"
module asm "\09.asciz \09\22apply_to_page_range\22\09\09\09\09\09"
module asm "__kstrtabns_apply_to_page_range:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_apply_to_existing_page_range:\09\09\09\09\09"
module asm "\09.asciz \09\22apply_to_existing_page_range\22\09\09\09\09\09"
module asm "__kstrtabns_apply_to_existing_page_range:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_unmap_mapping_pages:\09\09\09\09\09"
module asm "\09.asciz \09\22unmap_mapping_pages\22\09\09\09\09\09"
module asm "__kstrtabns_unmap_mapping_pages:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_unmap_mapping_range:\09\09\09\09\09"
module asm "\09.asciz \09\22unmap_mapping_range\22\09\09\09\09\09"
module asm "__kstrtabns_unmap_mapping_range:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_handle_mm_fault:\09\09\09\09\09"
module asm "\09.asciz \09\22handle_mm_fault\22\09\09\09\09\09"
module asm "__kstrtabns_handle_mm_fault:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_follow_pte:\09\09\09\09\09"
module asm "\09.asciz \09\22follow_pte\22\09\09\09\09\09"
module asm "__kstrtabns_follow_pte:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_follow_pfn:\09\09\09\09\09"
module asm "\09.asciz \09\22follow_pfn\22\09\09\09\09\09"
module asm "__kstrtabns_follow_pfn:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_access_process_vm:\09\09\09\09\09"
module asm "\09.asciz \09\22access_process_vm\22\09\09\09\09\09"
module asm "__kstrtabns_access_process_vm:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.obs_kernel_param = type { ptr, ptr, i32 }
%struct.mm_struct = type { %struct.anon.7, [0 x i32] }
%struct.anon.7 = type { ptr, %struct.rb_root, i64, ptr, i32, i32, i32, i32, ptr, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, i32, %struct.spinlock, %struct.rw_semaphore, %struct.list_head, i32, i32, i32, i32, %struct.atomic64_t, i32, i32, i32, i32, %struct.seqcount, %struct.spinlock, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [42 x i32], %struct.mm_rss_stat, ptr, %struct.mm_context_t, i32, %struct.spinlock, ptr, ptr, ptr, %struct.atomic_t, %struct.uprobes_state, %struct.work_struct, i32 }
%struct.rb_root = type { ptr }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.list_head = type { ptr, ptr }
%struct.atomic64_t = type { i64 }
%struct.seqcount = type { i32 }
%struct.mm_rss_stat = type { [4 x %struct.atomic_t] }
%struct.mm_context_t = type { %struct.atomic64_t, i32, i32, i32 }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.atomic_t = type { i32 }
%struct.uprobes_state = type { ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.tracepoint = type { ptr, %struct.static_key, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.static_key = type { %struct.atomic_t }
%struct.cpumask = type { [1 x i32] }
%struct.cpu_tlb_fns = type { ptr, ptr, i32 }
%struct.pglist_data = type { [4 x %struct.zone], [1 x %struct.zonelist], i32, ptr, i32, i32, i32, i32, %struct.wait_queue_head, %struct.wait_queue_head, [4 x %struct.wait_queue_head], %struct.atomic_t, i32, ptr, i32, i32, i32, i32, i32, %struct.wait_queue_head, ptr, i8, i32, %struct.zone_padding, %struct.lruvec, i32, [56 x i8], %struct.zone_padding, ptr, [40 x %struct.atomic_t], [28 x i8] }
%struct.zone = type { [3 x i32], i32, i32, [4 x i32], ptr, ptr, ptr, i32, i32, ptr, i32, %struct.atomic_t, i32, i32, i32, ptr, i32, i32, [36 x i8], %struct.zone_padding, [12 x %struct.free_area], i32, %struct.spinlock, [8 x i8], %struct.zone_padding, i32, i32, [2 x i32], i32, i32, i32, i32, i32, i8, i8, [26 x i8], %struct.zone_padding, [10 x %struct.atomic_t], [0 x %struct.atomic_t], [24 x i8] }
%struct.free_area = type { [6 x %struct.list_head], i32 }
%struct.zonelist = type { [5 x %struct.zoneref] }
%struct.zoneref = type { ptr, i32 }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.lruvec = type { [5 x %struct.list_head], %struct.spinlock, i32, i32, %struct.atomic_t, [2 x i32], i32 }
%struct.zone_padding = type { [0 x i8] }
%struct.processor = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr }
%struct.cpu_user_fns = type { ptr, ptr }
%struct.vm_event_state = type { [71 x i32] }
%struct.file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.thread_info = type { i32, i32, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], [4 x i8], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.task_struct = type { %struct.thread_info, i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [32 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, [36 x i8], %struct.sched_statistics, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i8, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.49, ptr, %struct.page_frag, i32, i32, i32, i64, i64, i32, i32, ptr, %struct.kmap_ctrl, i32, ptr, %struct.refcount_struct, %struct.thread_struct, [16 x i8] }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.27 }
%struct.llist_node = type { ptr }
%union.anon.27 = type { i32 }
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
%struct.restart_block = type { i32, ptr, %union.anon.28 }
%union.anon.28 = type { %struct.anon.29 }
%struct.anon.29 = type { ptr, i32, i32, i32, i64, ptr }
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
%struct.task_io_accounting = type {}
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.tlbflush_unmap_batch = type {}
%union.anon.49 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.page_frag = type { ptr, i16, i16 }
%struct.kmap_ctrl = type { i32, [16 x i32] }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
%struct.mmu_gather = type { ptr, i32, i32, i16, i32, ptr, %struct.mmu_gather_batch, [8 x ptr] }
%struct.mmu_gather_batch = type { ptr, i32, i32, [0 x ptr] }
%struct.page = type { i32, %union.anon, %union.anon.65, %struct.atomic_t }
%union.anon = type { %struct.anon }
%struct.anon = type { %struct.list_head, ptr, i32, i32 }
%union.anon.65 = type { %struct.atomic_t }
%struct.vm_area_struct = type { i32, i32, ptr, ptr, %struct.rb_node, i32, ptr, i32, i32, %union.anon.20, %struct.list_head, ptr, ptr, i32, ptr, ptr, %struct.atomic_t, %struct.vm_userfaultfd_ctx }
%union.anon.20 = type { %struct.anon.21 }
%struct.anon.21 = type { %struct.rb_node, i32 }
%struct.vm_userfaultfd_ctx = type {}
%struct.file = type { %union.anon.2, %struct.path, ptr, ptr, %struct.spinlock, i32, %struct.atomic_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, ptr, %struct.file_ra_state, i64, ptr, ptr, ptr, i32, i32 }
%union.anon.2 = type { %struct.callback_head }
%struct.path = type { ptr, ptr }
%struct.fown_struct = type { %struct.rwlock_t, ptr, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.rwlock_t = type { %struct.arch_rwlock_t }
%struct.arch_rwlock_t = type { i32 }
%struct.kuid_t = type { i32 }
%struct.file_ra_state = type { i32, i32, i32, i32, i32, i64 }
%struct.vm_operations_struct = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.address_space_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.anon.71 = type { i32, %struct.list_head, ptr, i32, ptr, %struct.atomic_t, %struct.atomic_t }
%struct.anon.59 = type { i32, i8, i8, %struct.atomic_t, i32 }
%struct.vm_fault = type { %struct.anon.22, i32, ptr, ptr, %union.anon.23, ptr, ptr, ptr, ptr, ptr }
%struct.anon.22 = type { ptr, i32, i32, i32 }
%union.anon.23 = type { i32 }
%struct.zap_details = type { ptr, ptr }
%struct.swap_info_struct = type { %struct.percpu_ref, i32, i16, %struct.plist_node, i8, i32, ptr, ptr, %struct.swap_cluster_list, i32, i32, i32, i32, i32, i32, ptr, ptr, %struct.rb_root, ptr, ptr, i32, %struct.completion, %struct.spinlock, %struct.spinlock, %struct.work_struct, %struct.swap_cluster_list, [0 x %struct.plist_node] }
%struct.percpu_ref = type { i32, ptr }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.swap_cluster_list = type { %struct.swap_cluster_info, %struct.swap_cluster_info }
%struct.swap_cluster_info = type { %struct.spinlock, i32 }
%struct.percpu_ref_data = type { %struct.atomic_t, ptr, ptr, i8, %struct.callback_head, ptr }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.66, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.67, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.68, ptr, %struct.address_space, %struct.list_head, %union.anon.69, i32, i32, ptr, ptr }
%struct.kgid_t = type { i32 }
%union.anon.66 = type { i32 }
%struct.timespec64 = type { i64, i32 }
%union.anon.67 = type { %struct.callback_head }
%union.anon.68 = type { ptr }
%union.anon.69 = type { ptr }
%struct.mmu_notifier_range = type { i32, i32 }

@max_mapnr = dso_local global i32 0, align 4
@__kstrtab_max_mapnr = external dso_local constant [0 x i8], align 1
@__kstrtabns_max_mapnr = external dso_local constant [0 x i8], align 1
@__ksymtab_max_mapnr = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @max_mapnr to i32), ptr @__kstrtab_max_mapnr, ptr @__kstrtabns_max_mapnr }, section "___ksymtab+max_mapnr", align 4
@mem_map = dso_local global ptr null, align 4
@__kstrtab_mem_map = external dso_local constant [0 x i8], align 1
@__kstrtabns_mem_map = external dso_local constant [0 x i8], align 1
@__ksymtab_mem_map = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @mem_map to i32), ptr @__kstrtab_mem_map, ptr @__kstrtabns_mem_map }, section "___ksymtab+mem_map", align 4
@high_memory = dso_local global ptr null, align 4
@__kstrtab_high_memory = external dso_local constant [0 x i8], align 1
@__kstrtabns_high_memory = external dso_local constant [0 x i8], align 1
@__ksymtab_high_memory = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @high_memory to i32), ptr @__kstrtab_high_memory, ptr @__kstrtabns_high_memory }, section "___ksymtab+high_memory", align 4
@randomize_va_space = dso_local local_unnamed_addr global i32 1, section ".data..read_mostly", align 4
@__setup_str_disable_randmaps = internal constant [11 x i8] c"norandmaps\00", section ".init.rodata", align 1
@__setup_disable_randmaps = internal global %struct.obs_kernel_param { ptr @__setup_str_disable_randmaps, ptr @disable_randmaps, i32 0 }, section ".init.setup", align 4
@zero_pfn = dso_local global i32 0, section ".data..read_mostly", align 4
@__kstrtab_zero_pfn = external dso_local constant [0 x i8], align 1
@__kstrtabns_zero_pfn = external dso_local constant [0 x i8], align 1
@__ksymtab_zero_pfn = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @zero_pfn to i32), ptr @__kstrtab_zero_pfn, ptr @__kstrtabns_zero_pfn }, section "___ksymtab+zero_pfn", align 4
@__initcall__kmod_memory__290_169_init_zero_pfnearly = internal global ptr @init_zero_pfn, section ".initcallearly.init", align 4
@init_mm = external dso_local global %struct.mm_struct, align 8
@highest_memmap_pfn = dso_local local_unnamed_addr global i32 0, section ".data..read_mostly", align 4
@__pv_phys_pfn_offset = external dso_local local_unnamed_addr global i32, align 4
@__kstrtab_zap_vma_ptes = external dso_local constant [0 x i8], align 1
@__kstrtabns_zap_vma_ptes = external dso_local constant [0 x i8], align 1
@__ksymtab_zap_vma_ptes = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @zap_vma_ptes to i32), ptr @__kstrtab_zap_vma_ptes, ptr @__kstrtabns_zap_vma_ptes }, section "___ksymtab_gpl+zap_vma_ptes", align 4
@__kstrtab_vm_insert_pages = external dso_local constant [0 x i8], align 1
@__kstrtabns_vm_insert_pages = external dso_local constant [0 x i8], align 1
@__ksymtab_vm_insert_pages = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @vm_insert_pages to i32), ptr @__kstrtab_vm_insert_pages, ptr @__kstrtabns_vm_insert_pages }, section "___ksymtab+vm_insert_pages", align 4
@__kstrtab_vm_insert_page = external dso_local constant [0 x i8], align 1
@__kstrtabns_vm_insert_page = external dso_local constant [0 x i8], align 1
@__ksymtab_vm_insert_page = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @vm_insert_page to i32), ptr @__kstrtab_vm_insert_page, ptr @__kstrtabns_vm_insert_page }, section "___ksymtab+vm_insert_page", align 4
@__kstrtab_vm_map_pages = external dso_local constant [0 x i8], align 1
@__kstrtabns_vm_map_pages = external dso_local constant [0 x i8], align 1
@__ksymtab_vm_map_pages = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @vm_map_pages to i32), ptr @__kstrtab_vm_map_pages, ptr @__kstrtabns_vm_map_pages }, section "___ksymtab+vm_map_pages", align 4
@__kstrtab_vm_map_pages_zero = external dso_local constant [0 x i8], align 1
@__kstrtabns_vm_map_pages_zero = external dso_local constant [0 x i8], align 1
@__ksymtab_vm_map_pages_zero = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @vm_map_pages_zero to i32), ptr @__kstrtab_vm_map_pages_zero, ptr @__kstrtabns_vm_map_pages_zero }, section "___ksymtab+vm_map_pages_zero", align 4
@__kstrtab_vmf_insert_pfn_prot = external dso_local constant [0 x i8], align 1
@__kstrtabns_vmf_insert_pfn_prot = external dso_local constant [0 x i8], align 1
@__ksymtab_vmf_insert_pfn_prot = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @vmf_insert_pfn_prot to i32), ptr @__kstrtab_vmf_insert_pfn_prot, ptr @__kstrtabns_vmf_insert_pfn_prot }, section "___ksymtab+vmf_insert_pfn_prot", align 4
@__kstrtab_vmf_insert_pfn = external dso_local constant [0 x i8], align 1
@__kstrtabns_vmf_insert_pfn = external dso_local constant [0 x i8], align 1
@__ksymtab_vmf_insert_pfn = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @vmf_insert_pfn to i32), ptr @__kstrtab_vmf_insert_pfn, ptr @__kstrtabns_vmf_insert_pfn }, section "___ksymtab+vmf_insert_pfn", align 4
@__kstrtab_vmf_insert_mixed_prot = external dso_local constant [0 x i8], align 1
@__kstrtabns_vmf_insert_mixed_prot = external dso_local constant [0 x i8], align 1
@__ksymtab_vmf_insert_mixed_prot = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @vmf_insert_mixed_prot to i32), ptr @__kstrtab_vmf_insert_mixed_prot, ptr @__kstrtabns_vmf_insert_mixed_prot }, section "___ksymtab+vmf_insert_mixed_prot", align 4
@__kstrtab_vmf_insert_mixed = external dso_local constant [0 x i8], align 1
@__kstrtabns_vmf_insert_mixed = external dso_local constant [0 x i8], align 1
@__ksymtab_vmf_insert_mixed = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @vmf_insert_mixed to i32), ptr @__kstrtab_vmf_insert_mixed, ptr @__kstrtabns_vmf_insert_mixed }, section "___ksymtab+vmf_insert_mixed", align 4
@__kstrtab_vmf_insert_mixed_mkwrite = external dso_local constant [0 x i8], align 1
@__kstrtabns_vmf_insert_mixed_mkwrite = external dso_local constant [0 x i8], align 1
@__ksymtab_vmf_insert_mixed_mkwrite = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @vmf_insert_mixed_mkwrite to i32), ptr @__kstrtab_vmf_insert_mixed_mkwrite, ptr @__kstrtabns_vmf_insert_mixed_mkwrite }, section "___ksymtab+vmf_insert_mixed_mkwrite", align 4
@remap_pfn_range_notrack.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str = private unnamed_addr constant [12 x i8] c"mm/memory.c\00", align 1
@__kstrtab_remap_pfn_range = external dso_local constant [0 x i8], align 1
@__kstrtabns_remap_pfn_range = external dso_local constant [0 x i8], align 1
@__ksymtab_remap_pfn_range = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @remap_pfn_range to i32), ptr @__kstrtab_remap_pfn_range, ptr @__kstrtabns_remap_pfn_range }, section "___ksymtab+remap_pfn_range", align 4
@__kstrtab_vm_iomap_memory = external dso_local constant [0 x i8], align 1
@__kstrtabns_vm_iomap_memory = external dso_local constant [0 x i8], align 1
@__ksymtab_vm_iomap_memory = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @vm_iomap_memory to i32), ptr @__kstrtab_vm_iomap_memory, ptr @__kstrtabns_vm_iomap_memory }, section "___ksymtab+vm_iomap_memory", align 4
@__kstrtab_apply_to_page_range = external dso_local constant [0 x i8], align 1
@__kstrtabns_apply_to_page_range = external dso_local constant [0 x i8], align 1
@__ksymtab_apply_to_page_range = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @apply_to_page_range to i32), ptr @__kstrtab_apply_to_page_range, ptr @__kstrtabns_apply_to_page_range }, section "___ksymtab_gpl+apply_to_page_range", align 4
@__kstrtab_apply_to_existing_page_range = external dso_local constant [0 x i8], align 1
@__kstrtabns_apply_to_existing_page_range = external dso_local constant [0 x i8], align 1
@__ksymtab_apply_to_existing_page_range = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @apply_to_existing_page_range to i32), ptr @__kstrtab_apply_to_existing_page_range, ptr @__kstrtabns_apply_to_existing_page_range }, section "___ksymtab_gpl+apply_to_existing_page_range", align 4
@finish_mkwrite_fault.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@__kstrtab_unmap_mapping_pages = external dso_local constant [0 x i8], align 1
@__kstrtabns_unmap_mapping_pages = external dso_local constant [0 x i8], align 1
@__ksymtab_unmap_mapping_pages = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @unmap_mapping_pages to i32), ptr @__kstrtab_unmap_mapping_pages, ptr @__kstrtabns_unmap_mapping_pages }, section "___ksymtab_gpl+unmap_mapping_pages", align 4
@__kstrtab_unmap_mapping_range = external dso_local constant [0 x i8], align 1
@__kstrtabns_unmap_mapping_range = external dso_local constant [0 x i8], align 1
@__ksymtab_unmap_mapping_range = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @unmap_mapping_range to i32), ptr @__kstrtab_unmap_mapping_range, ptr @__kstrtabns_unmap_mapping_range }, section "___ksymtab+unmap_mapping_range", align 4
@__initcall__kmod_memory__334_4105_fault_around_debugfs7 = internal global ptr @fault_around_debugfs, section ".initcall7.init", align 4
@__kstrtab_handle_mm_fault = external dso_local constant [0 x i8], align 1
@__kstrtabns_handle_mm_fault = external dso_local constant [0 x i8], align 1
@__ksymtab_handle_mm_fault = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @handle_mm_fault to i32), ptr @__kstrtab_handle_mm_fault, ptr @__kstrtabns_handle_mm_fault }, section "___ksymtab_gpl+handle_mm_fault", align 4
@__kstrtab_follow_pte = external dso_local constant [0 x i8], align 1
@__kstrtabns_follow_pte = external dso_local constant [0 x i8], align 1
@__ksymtab_follow_pte = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @follow_pte to i32), ptr @__kstrtab_follow_pte, ptr @__kstrtabns_follow_pte }, section "___ksymtab_gpl+follow_pte", align 4
@__kstrtab_follow_pfn = external dso_local constant [0 x i8], align 1
@__kstrtabns_follow_pfn = external dso_local constant [0 x i8], align 1
@__ksymtab_follow_pfn = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @follow_pfn to i32), ptr @__kstrtab_follow_pfn, ptr @__kstrtabns_follow_pfn }, section "___ksymtab+follow_pfn", align 4
@__kstrtab_access_process_vm = external dso_local constant [0 x i8], align 1
@__kstrtabns_access_process_vm = external dso_local constant [0 x i8], align 1
@__ksymtab_access_process_vm = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @access_process_vm to i32), ptr @__kstrtab_access_process_vm, ptr @__kstrtabns_access_process_vm }, section "___ksymtab_gpl+access_process_vm", align 4
@.str.1 = private unnamed_addr constant [2 x i8] c"?\00", align 1
@.str.2 = private unnamed_addr constant [14 x i8] c"%s%s[%lx+%lx]\00", align 1
@empty_zero_page = external dso_local local_unnamed_addr global ptr, align 4
@__tracepoint_rss_stat = external dso_local global %struct.tracepoint, align 4
@__cpu_online_mask = external dso_local global %struct.cpumask, align 4
@cpu_tlb = external dso_local local_unnamed_addr global %struct.cpu_tlb_fns, align 4
@contig_page_data = external dso_local global %struct.pglist_data, align 64
@user_pmd_table = external dso_local local_unnamed_addr global i32, align 4
@movable_zone = external dso_local local_unnamed_addr global i32, align 4
@processor = external dso_local local_unnamed_addr global %struct.processor, align 4
@print_bad_pte.resume = internal unnamed_addr global i32 0, align 4
@print_bad_pte.nr_shown = internal unnamed_addr global i32 0, align 4
@print_bad_pte.nr_unshown = internal unnamed_addr global i32 0, align 4
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 64
@.str.4 = private unnamed_addr constant [46 x i8] c"\011BUG: Bad page map: %lu messages suppressed\0A\00", align 1
@.str.5 = private unnamed_addr constant [58 x i8] c"\011BUG: Bad page map in process %s  pte:%08llx pmd:%08llx\0A\00", align 1
@.str.6 = private unnamed_addr constant [8 x i8] c"bad pte\00", align 1
@.str.7 = private unnamed_addr constant [62 x i8] c"\011addr:%px vm_flags:%08lx anon_vma:%px mapping:%px index:%lx\0A\00", align 1
@.str.8 = private unnamed_addr constant [44 x i8] c"\011file:%pD fault:%ps mmap:%ps readpage:%ps\0A\00", align 1
@mmlist_lock = external dso_local global %struct.spinlock, align 4
@cpu_user = external dso_local local_unnamed_addr global %struct.cpu_user_fns, align 4
@pgprot_kernel = external dso_local local_unnamed_addr global i32, align 4
@__tracepoint_mmap_lock_start_locking = external dso_local global %struct.tracepoint, align 4
@__tracepoint_mmap_lock_acquire_returned = external dso_local global %struct.tracepoint, align 4
@insert_pfn.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@apply_to_pmd_range.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@apply_to_pmd_range.__already_done.12 = internal unnamed_addr global i1 false, section ".data.once", align 1
@vm_event_states = external dso_local global %struct.vm_event_state, section ".data..percpu", align 4
@nr_swap_pages = external dso_local global %struct.atomic_t, align 4
@total_swap_pages = external dso_local local_unnamed_addr global i32, align 4
@cow_user_page.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.13 = private unnamed_addr constant [19 x i8] c"fault_around_bytes\00", align 1
@fault_around_bytes_fops = internal constant %struct.file_operations { ptr null, ptr @no_llseek, ptr @debugfs_attr_read, ptr @debugfs_attr_write, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @fault_around_bytes_fops_open, ptr null, ptr @simple_attr_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@.str.14 = private unnamed_addr constant [6 x i8] c"%llu\0A\00", align 1
@fault_around_bytes = internal global i32 65536, section ".data..read_mostly", align 4
@perf_swevent_enabled = external dso_local global [12 x %struct.static_key], align 4
@__tracepoint_mmap_lock_released = external dso_local global %struct.tracepoint, align 4
@llvm.compiler.used = appending global [27 x ptr] [ptr @__initcall__kmod_memory__290_169_init_zero_pfnearly, ptr @__initcall__kmod_memory__334_4105_fault_around_debugfs7, ptr @__ksymtab_access_process_vm, ptr @__ksymtab_apply_to_existing_page_range, ptr @__ksymtab_apply_to_page_range, ptr @__ksymtab_follow_pfn, ptr @__ksymtab_follow_pte, ptr @__ksymtab_handle_mm_fault, ptr @__ksymtab_high_memory, ptr @__ksymtab_max_mapnr, ptr @__ksymtab_mem_map, ptr @__ksymtab_remap_pfn_range, ptr @__ksymtab_unmap_mapping_pages, ptr @__ksymtab_unmap_mapping_range, ptr @__ksymtab_vm_insert_page, ptr @__ksymtab_vm_insert_pages, ptr @__ksymtab_vm_iomap_memory, ptr @__ksymtab_vm_map_pages, ptr @__ksymtab_vm_map_pages_zero, ptr @__ksymtab_vmf_insert_mixed, ptr @__ksymtab_vmf_insert_mixed_mkwrite, ptr @__ksymtab_vmf_insert_mixed_prot, ptr @__ksymtab_vmf_insert_pfn, ptr @__ksymtab_vmf_insert_pfn_prot, ptr @__ksymtab_zap_vma_ptes, ptr @__ksymtab_zero_pfn, ptr @__setup_disable_randmaps], section "llvm.metadata"

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind null_pointer_is_valid optsize sspstrong willreturn writeonly uwtable(sync)
define internal i32 @disable_randmaps(ptr nocapture noundef readnone %0) #0 section ".init.text" {
  store i32 0, ptr @randomize_va_space, align 4
  ret i32 1
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind null_pointer_is_valid optsize sspstrong willreturn uwtable(sync)
define internal i32 @init_zero_pfn() #1 section ".init.text" {
  %1 = load ptr, ptr @empty_zero_page, align 4
  %2 = load ptr, ptr @mem_map, align 4
  %3 = ptrtoint ptr %1 to i32
  %4 = ptrtoint ptr %2 to i32
  %5 = sub i32 %3, %4
  %6 = ashr exact i32 %5, 5
  %7 = load i32, ptr @__pv_phys_pfn_offset, align 4
  %8 = add i32 %6, %7
  store i32 %8, ptr @zero_pfn, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @mm_trace_rss_stat(ptr noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #2 {
  %4 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_rss_stat, i32 0, i32 1), align 4
  %5 = icmp sgt i32 %4, 0
  br i1 %5, label %6, label %19

6:                                                ; preds = %3
  %7 = tail call ptr @llvm.thread.pointer() #17
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
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !9
  %18 = tail call i32 @__traceiter_rss_stat(ptr noundef null, ptr noundef %0, i32 noundef %1, i32 noundef %2) #17
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !10
  br label %19

19:                                               ; preds = %17, %6, %3
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @sync_mm_rss(ptr noundef %0) local_unnamed_addr #2 {
  %2 = tail call ptr @llvm.thread.pointer() #17
  %3 = getelementptr inbounds %struct.anon.7, ptr %0, i32 0, i32 40
  %4 = getelementptr inbounds %struct.thread_info, ptr %2, i32 0, i32 2
  br label %5

5:                                                ; preds = %28, %1
  %6 = phi i32 [ 0, %1 ], [ %29, %28 ]
  %7 = getelementptr %struct.task_struct, ptr %2, i32 0, i32 40, i32 1, i32 %6
  %8 = load i32, ptr %7, align 4
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %28, label %10

10:                                               ; preds = %5
  %11 = getelementptr [4 x %struct.atomic_t], ptr %3, i32 0, i32 %6
  tail call void asm sideeffect "dmb ish", "~{memory}"() #17, !srcloc !11
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %11) #17, !srcloc !12
  %12 = tail call { i32, i32 } asm sideeffect "@ atomic_add_return\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %11, ptr %11, i32 %8, ptr elementtype(i32) %11) #17, !srcloc !13
  %13 = extractvalue { i32, i32 } %12, 0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #17, !srcloc !14
  %14 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_rss_stat, i32 0, i32 1), align 4
  %15 = icmp sgt i32 %14, 0
  br i1 %15, label %16, label %27

16:                                               ; preds = %10
  %17 = load i32, ptr %4, align 8
  %18 = lshr i32 %17, 5
  %19 = getelementptr i32, ptr @__cpu_online_mask, i32 %18
  %20 = load volatile i32, ptr %19, align 4
  %21 = and i32 %17, 31
  %22 = shl nuw i32 1, %21
  %23 = and i32 %22, %20
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %27, label %25

25:                                               ; preds = %16
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !9
  %26 = tail call i32 @__traceiter_rss_stat(ptr noundef null, ptr noundef %0, i32 noundef %6, i32 noundef %13) #17
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !10
  br label %27

27:                                               ; preds = %25, %16, %10
  store i32 0, ptr %7, align 4
  br label %28

28:                                               ; preds = %27, %5
  %29 = add nuw nsw i32 %6, 1
  %30 = icmp eq i32 %29, 4
  br i1 %30, label %31, label %5

31:                                               ; preds = %28
  %32 = getelementptr inbounds %struct.task_struct, ptr %2, i32 0, i32 40
  store i32 0, ptr %32, align 8
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @add_mm_counter(ptr noundef %0, i32 noundef %1, i32 noundef %2) unnamed_addr #4 {
  %4 = getelementptr inbounds %struct.anon.7, ptr %0, i32 0, i32 40
  %5 = getelementptr [4 x %struct.atomic_t], ptr %4, i32 0, i32 %1
  tail call void asm sideeffect "dmb ish", "~{memory}"() #17, !srcloc !11
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %5) #17, !srcloc !12
  %6 = tail call { i32, i32 } asm sideeffect "@ atomic_add_return\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %5, ptr %5, i32 %2, ptr elementtype(i32) %5) #17, !srcloc !13
  %7 = extractvalue { i32, i32 } %6, 0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #17, !srcloc !14
  %8 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_rss_stat, i32 0, i32 1), align 4
  %9 = icmp sgt i32 %8, 0
  br i1 %9, label %10, label %23

10:                                               ; preds = %3
  %11 = tail call ptr @llvm.thread.pointer() #17
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
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !9
  %22 = tail call i32 @__traceiter_rss_stat(ptr noundef null, ptr noundef %0, i32 noundef %1, i32 noundef %7) #17
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !10
  br label %23

23:                                               ; preds = %21, %10, %3
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @free_pgd_range(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #2 {
  %6 = and i32 %1, -2097152
  %7 = icmp ult i32 %6, %3
  br i1 %7, label %8, label %11

8:                                                ; preds = %5
  %9 = add i32 %6, 2097152
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %97, label %11

11:                                               ; preds = %8, %5
  %12 = phi i32 [ %9, %8 ], [ %6, %5 ]
  %13 = icmp eq i32 %4, 0
  br i1 %13, label %17, label %14

14:                                               ; preds = %11
  %15 = and i32 %4, -2097152
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %97, label %17

17:                                               ; preds = %14, %11
  %18 = phi i32 [ %15, %14 ], [ 0, %11 ]
  %19 = add i32 %2, -1
  %20 = add i32 %18, -1
  %21 = icmp ugt i32 %19, %20
  %22 = add i32 %2, -2097152
  %23 = select i1 %21, i32 %22, i32 %2
  %24 = add i32 %23, -1
  %25 = icmp ugt i32 %12, %24
  br i1 %25, label %97, label %26

26:                                               ; preds = %17
  %27 = load ptr, ptr %0, align 4
  %28 = getelementptr inbounds %struct.anon.7, ptr %27, i32 0, i32 8
  %29 = load ptr, ptr %28, align 4
  %30 = lshr i32 %12, 21
  %31 = getelementptr [2 x i32], ptr %29, i32 %30
  %32 = getelementptr inbounds %struct.mmu_gather, ptr %0, i32 0, i32 1
  %33 = getelementptr inbounds %struct.mmu_gather, ptr %0, i32 0, i32 2
  %34 = getelementptr inbounds %struct.mmu_gather, ptr %0, i32 0, i32 3
  br label %35

35:                                               ; preds = %94, %26
  %36 = phi ptr [ %31, %26 ], [ %95, %94 ]
  %37 = phi i32 [ %12, %26 ], [ %42, %94 ]
  %38 = add i32 %37, 2097152
  %39 = and i32 %38, -2097152
  %40 = add i32 %39, -1
  %41 = icmp ult i32 %40, %24
  %42 = select i1 %41, i32 %39, i32 %23
  %43 = load i32, ptr %36, align 4
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %80, label %45

45:                                               ; preds = %35
  %46 = and i32 %43, 2
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %49, label %48, !prof !15

48:                                               ; preds = %45
  tail call void @pmd_clear_bad(ptr noundef %36) #17
  br label %80

49:                                               ; preds = %45
  %50 = load ptr, ptr @mem_map, align 4
  %51 = lshr i32 %43, 12
  %52 = load i32, ptr @__pv_phys_pfn_offset, align 4
  %53 = sub i32 %51, %52
  %54 = getelementptr %struct.page, ptr %50, i32 %53
  store i32 0, ptr %36, align 4
  %55 = getelementptr i32, ptr %36, i32 1
  store i32 0, ptr %55, align 4
  %56 = load i32, ptr getelementptr inbounds (%struct.cpu_tlb_fns, ptr @cpu_tlb, i32 0, i32 2), align 4
  tail call void asm sideeffect "tst $1, $2\0A\09mcrne p15, 0, $0, c7, c10, 1\09@ flush_pmd", "r,r,Ir,~{cc}"(ptr %36, i32 %56, i32 1073741824) #17, !srcloc !16
  %57 = load i32, ptr %32, align 4
  %58 = tail call i32 @llvm.umin.i32(i32 %57, i32 %37) #17
  store i32 %58, ptr %32, align 4
  %59 = load i32, ptr %33, align 4
  %60 = add i32 %37, 4096
  %61 = tail call i32 @llvm.umax.i32(i32 %59, i32 %60) #17
  store i32 %61, ptr %33, align 4
  %62 = load i16, ptr %34, align 4
  %63 = or i16 %62, 20
  store i16 %63, ptr %34, align 4
  %64 = getelementptr %struct.page, ptr %50, i32 %53, i32 2
  %65 = load i32, ptr %64, align 4
  %66 = or i32 %65, 512
  store i32 %66, ptr %64, align 4
  tail call void @mod_node_page_state(ptr noundef nonnull @contig_page_data, i32 noundef 38, i32 noundef -1) #17
  %67 = and i32 %37, -2097152
  %68 = or i32 %67, 1044480
  %69 = load i32, ptr %32, align 4
  %70 = tail call i32 @llvm.umin.i32(i32 %69, i32 %68) #17
  store i32 %70, ptr %32, align 4
  %71 = load i32, ptr %33, align 4
  %72 = or i32 %67, 1052672
  %73 = tail call i32 @llvm.umax.i32(i32 %71, i32 %72) #17
  store i32 %73, ptr %33, align 4
  %74 = tail call zeroext i1 @__tlb_remove_page_size(ptr noundef %0, ptr noundef %54, i32 noundef 4096) #17
  br i1 %74, label %75, label %76

75:                                               ; preds = %49
  tail call void @tlb_flush_mmu(ptr noundef %0) #17
  br label %76

76:                                               ; preds = %75, %49
  %77 = load ptr, ptr %0, align 4
  %78 = getelementptr inbounds %struct.anon.7, ptr %77, i32 0, i32 12
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %78) #17, !srcloc !12
  %79 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %78, ptr %78, i32 2048, ptr elementtype(i32) %78) #17, !srcloc !17
  br label %80

80:                                               ; preds = %76, %48, %35
  %81 = and i32 %37, -2097152
  %82 = icmp ult i32 %81, %3
  %83 = add i32 %42, -1
  %84 = icmp ugt i32 %83, %20
  %85 = select i1 %82, i1 true, i1 %84
  br i1 %85, label %94, label %86

86:                                               ; preds = %80
  %87 = load i32, ptr %32, align 4
  %88 = tail call i32 @llvm.umin.i32(i32 %87, i32 %81) #17
  store i32 %88, ptr %32, align 4
  %89 = load i32, ptr %33, align 4
  %90 = or i32 %81, 4096
  %91 = tail call i32 @llvm.umax.i32(i32 %89, i32 %90) #17
  store i32 %91, ptr %33, align 4
  %92 = load i16, ptr %34, align 4
  %93 = or i16 %92, 36
  store i16 %93, ptr %34, align 4
  br label %94

94:                                               ; preds = %86, %80
  %95 = getelementptr [2 x i32], ptr %36, i32 1
  %96 = icmp eq i32 %42, %23
  br i1 %96, label %97, label %35

97:                                               ; preds = %94, %17, %14, %8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @free_pgtables(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #2 {
  %5 = icmp eq ptr %1, null
  br i1 %5, label %39, label %6

6:                                                ; preds = %4
  %7 = getelementptr inbounds %struct.vm_area_struct, ptr %1, i32 0, i32 2
  %8 = load ptr, ptr %7, align 4
  %9 = load i32, ptr %1, align 4
  tail call void @unlink_anon_vmas(ptr noundef nonnull %1) #17
  tail call void @unlink_file_vma(ptr noundef nonnull %1) #17
  %10 = icmp eq ptr %8, null
  br i1 %10, label %34, label %11

11:                                               ; preds = %27, %6
  %12 = phi i32 [ %32, %27 ], [ %9, %6 ]
  %13 = phi ptr [ %31, %27 ], [ %8, %6 ]
  %14 = phi ptr [ %16, %27 ], [ %1, %6 ]
  br label %15

15:                                               ; preds = %23, %11
  %16 = phi ptr [ %25, %23 ], [ %13, %11 ]
  %17 = phi ptr [ %16, %23 ], [ %14, %11 ]
  %18 = load i32, ptr %16, align 4
  %19 = getelementptr inbounds %struct.vm_area_struct, ptr %17, i32 0, i32 1
  %20 = load i32, ptr %19, align 4
  %21 = add i32 %20, 2097152
  %22 = icmp ugt i32 %18, %21
  br i1 %22, label %27, label %23

23:                                               ; preds = %15
  %24 = getelementptr inbounds %struct.vm_area_struct, ptr %16, i32 0, i32 2
  %25 = load ptr, ptr %24, align 4
  tail call void @unlink_anon_vmas(ptr noundef nonnull %16) #17
  tail call void @unlink_file_vma(ptr noundef nonnull %16) #17
  %26 = icmp eq ptr %25, null
  br i1 %26, label %34, label %15

27:                                               ; preds = %15
  %28 = getelementptr inbounds %struct.vm_area_struct, ptr %17, i32 0, i32 1
  %29 = load i32, ptr %28, align 4
  tail call void @free_pgd_range(ptr noundef %0, i32 noundef %12, i32 noundef %29, i32 noundef %2, i32 noundef %18)
  %30 = getelementptr inbounds %struct.vm_area_struct, ptr %16, i32 0, i32 2
  %31 = load ptr, ptr %30, align 4
  %32 = load i32, ptr %16, align 4
  tail call void @unlink_anon_vmas(ptr noundef nonnull %16) #17
  tail call void @unlink_file_vma(ptr noundef nonnull %16) #17
  %33 = icmp eq ptr %31, null
  br i1 %33, label %34, label %11

34:                                               ; preds = %27, %23, %6
  %35 = phi i32 [ %9, %6 ], [ %12, %23 ], [ %32, %27 ]
  %36 = phi ptr [ %1, %6 ], [ %16, %23 ], [ %16, %27 ]
  %37 = getelementptr inbounds %struct.vm_area_struct, ptr %36, i32 0, i32 1
  %38 = load i32, ptr %37, align 4
  tail call void @free_pgd_range(ptr noundef %0, i32 noundef %35, i32 noundef %38, i32 noundef %2, i32 noundef %3)
  br label %39

39:                                               ; preds = %34, %4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @unlink_anon_vmas(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @unlink_file_vma(ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @pmd_install(ptr noundef %0, ptr noundef %1, ptr nocapture noundef %2) local_unnamed_addr #2 {
  %4 = getelementptr inbounds %struct.anon.7, ptr %0, i32 0, i32 14
  tail call void @_raw_spin_lock(ptr noundef %4) #17
  %5 = load i32, ptr %1, align 4
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %25, !prof !15

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.anon.7, ptr %0, i32 0, i32 12
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %8) #17, !srcloc !12
  %9 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %8, ptr %8, i32 2048, ptr elementtype(i32) %8) #17, !srcloc !18
  tail call void asm sideeffect "dmb ishst", "~{memory}"() #17, !srcloc !19
  %10 = load ptr, ptr %2, align 4
  %11 = load i32, ptr @user_pmd_table, align 4
  %12 = load ptr, ptr @mem_map, align 4
  %13 = ptrtoint ptr %10 to i32
  %14 = ptrtoint ptr %12 to i32
  %15 = sub i32 %13, %14
  %16 = lshr exact i32 %15, 5
  %17 = load i32, ptr @__pv_phys_pfn_offset, align 4
  %18 = add i32 %16, %17
  %19 = shl i32 %18, 12
  %20 = or i32 %11, %19
  %21 = or i32 %20, 2048
  store i32 %21, ptr %1, align 4
  %22 = add i32 %21, 1024
  %23 = getelementptr i32, ptr %1, i32 1
  store i32 %22, ptr %23, align 4
  %24 = load i32, ptr getelementptr inbounds (%struct.cpu_tlb_fns, ptr @cpu_tlb, i32 0, i32 2), align 4
  tail call void asm sideeffect "tst $1, $2\0A\09mcrne p15, 0, $0, c7, c10, 1\09@ flush_pmd", "r,r,Ir,~{cc}"(ptr %1, i32 %24, i32 1073741824) #17, !srcloc !20
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #17, !srcloc !21
  store ptr null, ptr %2, align 4
  br label %25

25:                                               ; preds = %7, %3
  tail call void asm sideeffect "dmb ish", "~{memory}"() #17, !srcloc !22
  %26 = load i16, ptr %4, align 4
  %27 = add i16 %26, 1
  store i16 %27, ptr %4, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #17, !srcloc !23
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #17, !srcloc !24
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !25
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__pte_alloc(ptr noundef %0, ptr noundef %1) local_unnamed_addr #2 {
  %3 = tail call ptr @__alloc_pages(i32 noundef 4197826, i32 noundef 0, i32 noundef 0, ptr noundef null) #17
  %4 = icmp eq ptr %3, null
  br i1 %4, label %52, label %5

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.page, ptr %3, i32 0, i32 1, i32 0, i32 3
  store i32 0, ptr %6, align 4
  %7 = getelementptr inbounds %struct.page, ptr %3, i32 0, i32 2
  %8 = load i32, ptr %7, align 4
  %9 = and i32 %8, -513
  store i32 %9, ptr %7, align 4
  tail call void @mod_node_page_state(ptr noundef nonnull @contig_page_data, i32 noundef 38, i32 noundef 1) #17
  %10 = load i32, ptr %3, align 4
  %11 = lshr i32 %10, 30
  %12 = icmp eq i32 %11, 2
  br i1 %12, label %22, label %13

13:                                               ; preds = %5
  %14 = icmp ne i32 %11, 3
  %15 = load i32, ptr @movable_zone, align 4
  %16 = icmp ne i32 %15, 2
  %17 = select i1 %14, i1 true, i1 %16
  br i1 %17, label %18, label %22

18:                                               ; preds = %13
  %19 = tail call ptr @page_address(ptr noundef nonnull %3) #17
  %20 = load ptr, ptr getelementptr inbounds (%struct.processor, ptr @processor, i32 0, i32 7), align 4
  %21 = getelementptr i32, ptr %19, i32 512
  tail call void %20(ptr noundef %21, i32 noundef 2048) #17
  br label %22

22:                                               ; preds = %18, %13, %5
  %23 = getelementptr inbounds %struct.anon.7, ptr %0, i32 0, i32 14
  tail call void @_raw_spin_lock(ptr noundef %23) #17
  %24 = load i32, ptr %1, align 4
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %43, !prof !15

26:                                               ; preds = %22
  %27 = getelementptr inbounds %struct.anon.7, ptr %0, i32 0, i32 12
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %27) #17, !srcloc !12
  %28 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %27, ptr %27, i32 2048, ptr elementtype(i32) %27) #17, !srcloc !18
  tail call void asm sideeffect "dmb ishst", "~{memory}"() #17, !srcloc !19
  %29 = load i32, ptr @user_pmd_table, align 4
  %30 = load ptr, ptr @mem_map, align 4
  %31 = ptrtoint ptr %3 to i32
  %32 = ptrtoint ptr %30 to i32
  %33 = sub i32 %31, %32
  %34 = lshr exact i32 %33, 5
  %35 = load i32, ptr @__pv_phys_pfn_offset, align 4
  %36 = add i32 %34, %35
  %37 = shl i32 %36, 12
  %38 = or i32 %29, %37
  %39 = or i32 %38, 2048
  store i32 %39, ptr %1, align 4
  %40 = add i32 %39, 1024
  %41 = getelementptr i32, ptr %1, i32 1
  store i32 %40, ptr %41, align 4
  %42 = load i32, ptr getelementptr inbounds (%struct.cpu_tlb_fns, ptr @cpu_tlb, i32 0, i32 2), align 4
  tail call void asm sideeffect "tst $1, $2\0A\09mcrne p15, 0, $0, c7, c10, 1\09@ flush_pmd", "r,r,Ir,~{cc}"(ptr %1, i32 %42, i32 1073741824) #17, !srcloc !20
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #17, !srcloc !21
  br label %43

43:                                               ; preds = %26, %22
  %44 = phi ptr [ null, %26 ], [ %3, %22 ]
  tail call void asm sideeffect "dmb ish", "~{memory}"() #17, !srcloc !22
  %45 = load i16, ptr %23, align 4
  %46 = add i16 %45, 1
  store i16 %46, ptr %23, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #17, !srcloc !23
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #17, !srcloc !24
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !25
  %47 = icmp eq ptr %44, null
  br i1 %47, label %52, label %48

48:                                               ; preds = %43
  %49 = getelementptr inbounds %struct.page, ptr %44, i32 0, i32 2
  %50 = load i32, ptr %49, align 4
  %51 = or i32 %50, 512
  store i32 %51, ptr %49, align 4
  tail call void @mod_node_page_state(ptr noundef nonnull @contig_page_data, i32 noundef 38, i32 noundef -1) #17
  tail call void @__free_pages(ptr noundef nonnull %44, i32 noundef 0) #17
  br label %52

52:                                               ; preds = %48, %43, %2
  %53 = phi i32 [ 0, %48 ], [ 0, %43 ], [ -12, %2 ]
  ret i32 %53
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__pte_alloc_kernel(ptr noundef %0) local_unnamed_addr #2 {
  %2 = tail call i32 @__get_free_pages(i32 noundef 3520, i32 noundef 0) #17
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %24, label %4

4:                                                ; preds = %1
  %5 = inttoptr i32 %2 to ptr
  %6 = load ptr, ptr getelementptr inbounds (%struct.processor, ptr @processor, i32 0, i32 7), align 4
  %7 = getelementptr i32, ptr %5, i32 512
  tail call void %6(ptr noundef %7, i32 noundef 2048) #17
  tail call void @_raw_spin_lock(ptr noundef getelementptr inbounds (%struct.mm_struct, ptr @init_mm, i32 0, i32 0, i32 14)) #17
  %8 = load i32, ptr %0, align 4
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %17, !prof !15

10:                                               ; preds = %4
  tail call void asm sideeffect "dmb ishst", "~{memory}"() #17, !srcloc !26
  %11 = tail call i32 asm "@ __pv_stub\0A1:\09add\09$0, $1, $2\0A2:\09add\09$0, $0, $3\0A\09.pushsection .pv_table,\22a\22\0A\09.long\091b - ., 2b - .\0A\09.popsection\0A", "=r,r,I,I"(i32 %2, i32 -2130706432, i32 8454144) #18, !srcloc !27
  %12 = add i32 %11, 2048
  %13 = or i32 %12, 17
  store i32 %13, ptr %0, align 4
  %14 = add i32 %13, 1024
  %15 = getelementptr i32, ptr %0, i32 1
  store i32 %14, ptr %15, align 4
  %16 = load i32, ptr getelementptr inbounds (%struct.cpu_tlb_fns, ptr @cpu_tlb, i32 0, i32 2), align 4
  tail call void asm sideeffect "tst $1, $2\0A\09mcrne p15, 0, $0, c7, c10, 1\09@ flush_pmd", "r,r,Ir,~{cc}"(ptr %0, i32 %16, i32 1073741824) #17, !srcloc !20
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #17, !srcloc !21
  br label %17

17:                                               ; preds = %10, %4
  %18 = phi ptr [ null, %10 ], [ %5, %4 ]
  tail call void asm sideeffect "dmb ish", "~{memory}"() #17, !srcloc !22
  %19 = load i16, ptr getelementptr inbounds (%struct.mm_struct, ptr @init_mm, i32 0, i32 0, i32 14), align 4
  %20 = add i16 %19, 1
  store i16 %20, ptr getelementptr inbounds (%struct.mm_struct, ptr @init_mm, i32 0, i32 0, i32 14), align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #17, !srcloc !23
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #17, !srcloc !24
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !25
  %21 = icmp eq ptr %18, null
  br i1 %21, label %24, label %22

22:                                               ; preds = %17
  %23 = ptrtoint ptr %18 to i32
  tail call void @free_pages(i32 noundef %23, i32 noundef 0) #17
  br label %24

24:                                               ; preds = %22, %17, %1
  %25 = phi i32 [ 0, %22 ], [ 0, %17 ], [ -12, %1 ]
  ret i32 %25
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @vm_normal_page(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #2 {
  %4 = lshr i32 %2, 12
  %5 = getelementptr inbounds %struct.vm_area_struct, ptr %0, i32 0, i32 8
  %6 = load i32, ptr %5, align 4
  %7 = and i32 %6, 268436480
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %29, label %9, !prof !15

9:                                                ; preds = %3
  %10 = and i32 %6, 268435456
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %15, label %12

12:                                               ; preds = %9
  %13 = tail call i32 @pfn_valid(i32 noundef %4) #17
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %41, label %36

15:                                               ; preds = %9
  %16 = load i32, ptr %0, align 4
  %17 = sub i32 %1, %16
  %18 = lshr i32 %17, 12
  %19 = getelementptr inbounds %struct.vm_area_struct, ptr %0, i32 0, i32 13
  %20 = load i32, ptr %19, align 4
  %21 = add i32 %18, %20
  %22 = icmp eq i32 %4, %21
  %23 = and i32 %6, 40
  %24 = icmp ne i32 %23, 32
  %25 = select i1 %22, i1 true, i1 %24
  %26 = load i32, ptr @zero_pfn, align 4
  %27 = icmp eq i32 %26, %4
  %28 = select i1 %25, i1 true, i1 %27
  br i1 %28, label %41, label %32

29:                                               ; preds = %3
  %30 = load i32, ptr @zero_pfn, align 4
  %31 = icmp eq i32 %30, %4
  br i1 %31, label %41, label %32

32:                                               ; preds = %29, %15
  %33 = load i32, ptr @highest_memmap_pfn, align 4
  %34 = icmp ugt i32 %4, %33
  br i1 %34, label %35, label %36, !prof !28

35:                                               ; preds = %32
  tail call fastcc void @print_bad_pte(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef null)
  br label %41

36:                                               ; preds = %32, %12
  %37 = load ptr, ptr @mem_map, align 4
  %38 = load i32, ptr @__pv_phys_pfn_offset, align 4
  %39 = sub i32 %4, %38
  %40 = getelementptr %struct.page, ptr %37, i32 %39
  br label %41

41:                                               ; preds = %36, %35, %29, %15, %12
  %42 = phi ptr [ %40, %36 ], [ null, %35 ], [ null, %12 ], [ null, %29 ], [ null, %15 ]
  ret ptr %42
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pfn_valid(i32 noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @print_bad_pte(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2, ptr noundef %3) unnamed_addr #2 {
  %5 = getelementptr inbounds %struct.vm_area_struct, ptr %0, i32 0, i32 6
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.anon.7, ptr %6, i32 0, i32 8
  %8 = load ptr, ptr %7, align 4
  %9 = lshr i32 %1, 21
  %10 = getelementptr [2 x i32], ptr %8, i32 %9
  %11 = load i32, ptr @print_bad_pte.nr_shown, align 4
  %12 = icmp eq i32 %11, 60
  br i1 %12, label %13, label %26

13:                                               ; preds = %4
  %14 = load volatile i32, ptr @jiffies, align 64
  %15 = load i32, ptr @print_bad_pte.resume, align 4
  %16 = sub i32 %14, %15
  %17 = icmp slt i32 %16, 0
  %18 = load i32, ptr @print_bad_pte.nr_unshown, align 4
  br i1 %17, label %19, label %21

19:                                               ; preds = %13
  %20 = add i32 %18, 1
  store i32 %20, ptr @print_bad_pte.nr_unshown, align 4
  br label %88

21:                                               ; preds = %13
  %22 = icmp eq i32 %18, 0
  br i1 %22, label %25, label %23

23:                                               ; preds = %21
  %24 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, i32 noundef %18) #19
  store i32 0, ptr @print_bad_pte.nr_unshown, align 4
  br label %25

25:                                               ; preds = %23, %21
  store i32 1, ptr @print_bad_pte.nr_shown, align 4
  br label %29

26:                                               ; preds = %4
  %27 = add i32 %11, 1
  store i32 %27, ptr @print_bad_pte.nr_shown, align 4
  %28 = icmp eq i32 %11, 0
  br i1 %28, label %29, label %32

29:                                               ; preds = %26, %25
  %30 = load volatile i32, ptr @jiffies, align 64
  %31 = add i32 %30, 6000
  store i32 %31, ptr @print_bad_pte.resume, align 4
  br label %32

32:                                               ; preds = %29, %26
  %33 = getelementptr inbounds %struct.vm_area_struct, ptr %0, i32 0, i32 14
  %34 = load ptr, ptr %33, align 4
  %35 = icmp eq ptr %34, null
  br i1 %35, label %39, label %36

36:                                               ; preds = %32
  %37 = getelementptr inbounds %struct.file, ptr %34, i32 0, i32 17
  %38 = load ptr, ptr %37, align 8
  br label %39

39:                                               ; preds = %36, %32
  %40 = phi ptr [ %38, %36 ], [ null, %32 ]
  %41 = load i32, ptr %0, align 4
  %42 = sub i32 %1, %41
  %43 = lshr i32 %42, 12
  %44 = getelementptr inbounds %struct.vm_area_struct, ptr %0, i32 0, i32 13
  %45 = load i32, ptr %44, align 4
  %46 = add i32 %43, %45
  %47 = tail call ptr @llvm.thread.pointer() #17
  %48 = getelementptr inbounds %struct.task_struct, ptr %47, i32 0, i32 85
  %49 = zext i32 %2 to i64
  %50 = load i32, ptr %10, align 4
  %51 = zext i32 %50 to i64
  %52 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, ptr noundef %48, i64 noundef %49, i64 noundef %51) #19
  %53 = icmp eq ptr %3, null
  br i1 %53, label %55, label %54

54:                                               ; preds = %39
  tail call void @dump_page(ptr noundef nonnull %3, ptr noundef nonnull @.str.6) #17
  br label %55

55:                                               ; preds = %54, %39
  %56 = inttoptr i32 %1 to ptr
  %57 = getelementptr inbounds %struct.vm_area_struct, ptr %0, i32 0, i32 8
  %58 = load i32, ptr %57, align 4
  %59 = getelementptr inbounds %struct.vm_area_struct, ptr %0, i32 0, i32 11
  %60 = load ptr, ptr %59, align 4
  %61 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef %56, i32 noundef %58, ptr noundef %60, ptr noundef %40, i32 noundef %46) #19
  %62 = load ptr, ptr %33, align 4
  %63 = getelementptr inbounds %struct.vm_area_struct, ptr %0, i32 0, i32 12
  %64 = load ptr, ptr %63, align 4
  %65 = icmp eq ptr %64, null
  br i1 %65, label %69, label %66

66:                                               ; preds = %55
  %67 = getelementptr inbounds %struct.vm_operations_struct, ptr %64, i32 0, i32 5
  %68 = load ptr, ptr %67, align 4
  br label %69

69:                                               ; preds = %66, %55
  %70 = phi ptr [ %68, %66 ], [ null, %55 ]
  %71 = icmp eq ptr %62, null
  br i1 %71, label %77, label %72

72:                                               ; preds = %69
  %73 = getelementptr inbounds %struct.file, ptr %62, i32 0, i32 3
  %74 = load ptr, ptr %73, align 4
  %75 = getelementptr inbounds %struct.file_operations, ptr %74, i32 0, i32 12
  %76 = load ptr, ptr %75, align 4
  br label %77

77:                                               ; preds = %72, %69
  %78 = phi ptr [ %76, %72 ], [ null, %69 ]
  %79 = icmp eq ptr %40, null
  br i1 %79, label %85, label %80

80:                                               ; preds = %77
  %81 = getelementptr inbounds %struct.address_space, ptr %40, i32 0, i32 9
  %82 = load ptr, ptr %81, align 4
  %83 = getelementptr inbounds %struct.address_space_operations, ptr %82, i32 0, i32 1
  %84 = load ptr, ptr %83, align 4
  br label %85

85:                                               ; preds = %80, %77
  %86 = phi ptr [ %84, %80 ], [ null, %77 ]
  %87 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, ptr noundef %62, ptr noundef %70, ptr noundef %78, ptr noundef %86) #19
  tail call void @dump_stack() #19
  tail call void @add_taint(i32 noundef 5, i32 noundef 1) #17
  br label %88

88:                                               ; preds = %85, %19
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @copy_page_range(ptr noundef %0, ptr noundef %1) local_unnamed_addr #2 {
  %3 = alloca [4 x i32], align 4
  %4 = load i32, ptr %1, align 4
  %5 = getelementptr inbounds %struct.vm_area_struct, ptr %1, i32 0, i32 1
  %6 = load i32, ptr %5, align 4
  %7 = getelementptr inbounds %struct.vm_area_struct, ptr %0, i32 0, i32 6
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.vm_area_struct, ptr %1, i32 0, i32 6
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr inbounds %struct.vm_area_struct, ptr %1, i32 0, i32 8
  %12 = load i32, ptr %11, align 4
  %13 = and i32 %12, 272630784
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %19

15:                                               ; preds = %2
  %16 = getelementptr inbounds %struct.vm_area_struct, ptr %1, i32 0, i32 11
  %17 = load ptr, ptr %16, align 4
  %18 = icmp eq ptr %17, null
  br i1 %18, label %549, label %19

19:                                               ; preds = %15, %2
  %20 = and i32 %12, 40
  %21 = icmp eq i32 %20, 32
  br i1 %21, label %22, label %26

22:                                               ; preds = %19
  %23 = getelementptr inbounds %struct.anon.7, ptr %10, i32 0, i32 26
  %24 = load i32, ptr %23, align 4
  %25 = add i32 %24, 1
  store i32 %25, ptr %23, align 4
  tail call void asm sideeffect "dmb ishst", "~{memory}"() #17, !srcloc !29
  br label %26

26:                                               ; preds = %22, %19
  %27 = getelementptr inbounds %struct.anon.7, ptr %8, i32 0, i32 8
  %28 = load ptr, ptr %27, align 4
  %29 = lshr i32 %4, 21
  %30 = getelementptr [2 x i32], ptr %28, i32 %29
  %31 = getelementptr inbounds %struct.anon.7, ptr %10, i32 0, i32 8
  %32 = load ptr, ptr %31, align 4
  %33 = getelementptr [2 x i32], ptr %32, i32 %29
  %34 = add i32 %6, -1
  %35 = getelementptr inbounds %struct.vm_area_struct, ptr %1, i32 0, i32 13
  %36 = getelementptr inbounds %struct.vm_area_struct, ptr %0, i32 0, i32 7
  %37 = getelementptr inbounds %struct.vm_area_struct, ptr %0, i32 0, i32 8
  %38 = getelementptr inbounds i32, ptr %3, i32 2
  br label %39

39:                                               ; preds = %539, %26
  %40 = phi ptr [ %30, %26 ], [ %540, %539 ]
  %41 = phi i32 [ %4, %26 ], [ %47, %539 ]
  %42 = phi ptr [ %33, %26 ], [ %541, %539 ]
  %43 = add i32 %41, 2097152
  %44 = and i32 %43, -2097152
  %45 = add i32 %44, -1
  %46 = icmp ult i32 %45, %34
  %47 = select i1 %46, i32 %44, i32 %6
  %48 = icmp eq ptr %40, null
  br i1 %48, label %543, label %49

49:                                               ; preds = %39
  %50 = load i32, ptr %42, align 4
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %539, label %52

52:                                               ; preds = %49
  %53 = and i32 %50, 2
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %56, label %55, !prof !15

55:                                               ; preds = %52
  tail call void @pmd_clear_bad(ptr noundef %42) #17
  br label %539

56:                                               ; preds = %52
  %57 = load ptr, ptr %7, align 4
  %58 = load ptr, ptr %9, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #17
  %59 = getelementptr inbounds %struct.anon.7, ptr %57, i32 0, i32 16
  %60 = getelementptr inbounds %struct.anon.7, ptr %58, i32 0, i32 16
  %61 = getelementptr inbounds %struct.anon.7, ptr %57, i32 0, i32 16, i32 1
  br label %62

62:                                               ; preds = %513, %56
  %63 = phi ptr [ null, %56 ], [ %514, %513 ]
  %64 = phi i32 [ 0, %56 ], [ %515, %513 ]
  %65 = phi i32 [ %41, %56 ], [ %492, %513 ]
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(16) %3, i8 0, i32 16, i1 false) #17
  %66 = load i32, ptr %40, align 4
  %67 = icmp eq i32 %66, 0
  br i1 %67, label %68, label %73, !prof !28

68:                                               ; preds = %62
  %69 = tail call i32 @__pte_alloc(ptr noundef %57, ptr noundef nonnull %40) #17
  %70 = icmp eq i32 %69, 0
  br i1 %70, label %71, label %517

71:                                               ; preds = %68
  %72 = load i32, ptr %40, align 4
  br label %73

73:                                               ; preds = %71, %62
  %74 = phi i32 [ %72, %71 ], [ %66, %62 ]
  %75 = load ptr, ptr @mem_map, align 4
  %76 = lshr i32 %74, 12
  %77 = load i32, ptr @__pv_phys_pfn_offset, align 4
  %78 = sub i32 %76, %77
  %79 = getelementptr %struct.page, ptr %75, i32 %78, i32 1, i32 0, i32 3
  %80 = getelementptr %struct.page, ptr %75, i32 %78
  %81 = load i32, ptr @pgprot_kernel, align 4
  %82 = or i32 %81, 512
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !30
  %83 = tail call ptr @llvm.thread.pointer() #17
  %84 = getelementptr inbounds %struct.task_struct, ptr %83, i32 0, i32 149
  %85 = load i32, ptr %84, align 8
  %86 = add i32 %85, 1
  store i32 %86, ptr %84, align 8
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !31
  %87 = tail call ptr @__kmap_local_page_prot(ptr noundef %80, i32 noundef %82) #17
  %88 = lshr i32 %65, 12
  %89 = and i32 %88, 511
  %90 = getelementptr i32, ptr %87, i32 %89
  tail call void @_raw_spin_lock(ptr noundef %79) #17
  %91 = icmp eq ptr %90, null
  br i1 %91, label %517, label %92

92:                                               ; preds = %73
  %93 = load ptr, ptr @mem_map, align 4
  %94 = load i32, ptr %42, align 4
  %95 = lshr i32 %94, 12
  %96 = load i32, ptr @__pv_phys_pfn_offset, align 4
  %97 = sub i32 %95, %96
  %98 = getelementptr %struct.page, ptr %93, i32 %97
  %99 = load i32, ptr @pgprot_kernel, align 4
  %100 = or i32 %99, 512
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !30
  %101 = load i32, ptr %84, align 8
  %102 = add i32 %101, 1
  store i32 %102, ptr %84, align 8
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !31
  %103 = tail call ptr @__kmap_local_page_prot(ptr noundef %98, i32 noundef %100) #17
  %104 = getelementptr i32, ptr %103, i32 %89
  %105 = load ptr, ptr @mem_map, align 4
  %106 = load i32, ptr %42, align 4
  %107 = lshr i32 %106, 12
  %108 = load i32, ptr @__pv_phys_pfn_offset, align 4
  %109 = sub i32 %107, %108
  %110 = getelementptr %struct.page, ptr %105, i32 %109, i32 1, i32 0, i32 3
  tail call void @_raw_spin_lock(ptr noundef %110) #17
  br label %111

111:                                              ; preds = %480, %92
  %112 = phi ptr [ %63, %92 ], [ %482, %480 ]
  %113 = phi ptr [ %90, %92 ], [ %484, %480 ]
  %114 = phi i32 [ 0, %92 ], [ %483, %480 ]
  %115 = phi ptr [ %104, %92 ], [ %485, %480 ]
  %116 = phi i32 [ %65, %92 ], [ %486, %480 ]
  %117 = icmp sgt i32 %114, 31
  br i1 %117, label %118, label %122

118:                                              ; preds = %111
  %119 = load volatile i32, ptr %83, align 4
  %120 = and i32 %119, 2
  %121 = icmp eq i32 %120, 0
  br i1 %121, label %122, label %488

122:                                              ; preds = %118, %111
  %123 = phi i32 [ %114, %111 ], [ 0, %118 ]
  %124 = load i32, ptr %115, align 4
  %125 = icmp eq i32 %124, 0
  br i1 %125, label %480, label %126

126:                                              ; preds = %122
  %127 = and i32 %124, 1
  %128 = icmp eq i32 %127, 0
  br i1 %128, label %129, label %229, !prof !28

129:                                              ; preds = %126
  %130 = load i32, ptr %37, align 4
  %131 = lshr i32 %124, 7
  %132 = shl i32 %124, 24
  %133 = and i32 %132, 2080374784
  %134 = or i32 %133, %131
  %135 = icmp ult i32 %134, 2013265920
  br i1 %135, label %136, label %155, !prof !15

136:                                              ; preds = %129
  %137 = insertvalue [1 x i32] poison, i32 %134, 0
  %138 = tail call i32 @swap_duplicate([1 x i32] %137) #17
  %139 = icmp slt i32 %138, 0
  br i1 %139, label %221, label %140

140:                                              ; preds = %136
  %141 = load volatile ptr, ptr %59, align 4
  %142 = icmp eq ptr %141, %59
  br i1 %142, label %143, label %152, !prof !28

143:                                              ; preds = %140
  tail call void @_raw_spin_lock(ptr noundef nonnull @mmlist_lock) #17
  %144 = load volatile ptr, ptr %59, align 4
  %145 = icmp eq ptr %144, %59
  br i1 %145, label %146, label %149

146:                                              ; preds = %143
  %147 = load ptr, ptr %60, align 4
  %148 = getelementptr inbounds %struct.list_head, ptr %147, i32 0, i32 1
  store ptr %59, ptr %148, align 4
  store ptr %147, ptr %59, align 4
  store ptr %60, ptr %61, align 4
  store volatile ptr %59, ptr %60, align 4
  br label %149

149:                                              ; preds = %146, %143
  tail call void asm sideeffect "dmb ish", "~{memory}"() #17, !srcloc !22
  %150 = load i16, ptr @mmlist_lock, align 4
  %151 = add i16 %150, 1
  store i16 %151, ptr @mmlist_lock, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #17, !srcloc !23
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #17, !srcloc !24
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !25
  br label %152

152:                                              ; preds = %149, %140
  %153 = load i32, ptr %38, align 4
  %154 = add i32 %153, 1
  store i32 %154, ptr %38, align 4
  br label %227

155:                                              ; preds = %129
  %156 = and i32 %124, 120
  %157 = icmp eq i32 %156, 120
  br i1 %157, label %158, label %227

158:                                              ; preds = %155
  %159 = load ptr, ptr @mem_map, align 4
  %160 = load i32, ptr @__pv_phys_pfn_offset, align 4
  %161 = sub i32 %131, %160
  %162 = getelementptr %struct.page, ptr %159, i32 %161
  %163 = getelementptr %struct.page, ptr %159, i32 %161, i32 1
  %164 = load volatile i32, ptr %163, align 4
  %165 = and i32 %164, 1
  %166 = icmp eq i32 %165, 0
  br i1 %166, label %169, label %167, !prof !15

167:                                              ; preds = %158
  %168 = add i32 %164, -1
  br label %171

169:                                              ; preds = %158
  %170 = ptrtoint ptr %162 to i32
  br label %171

171:                                              ; preds = %169, %167
  %172 = phi i32 [ %168, %167 ], [ %170, %169 ]
  %173 = inttoptr i32 %172 to ptr
  %174 = load volatile i32, ptr %173, align 4
  %175 = and i32 %174, 1
  %176 = icmp eq i32 %175, 0
  br i1 %176, label %177, label %178, !prof !28

177:                                              ; preds = %171
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/swapops.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 258, 0\0A.popsection", ""() #17, !srcloc !32
  unreachable

178:                                              ; preds = %171
  %179 = load volatile i32, ptr %163, align 4
  %180 = and i32 %179, 1
  %181 = icmp eq i32 %180, 0
  br i1 %181, label %184, label %182, !prof !15

182:                                              ; preds = %178
  %183 = add i32 %179, -1
  br label %186

184:                                              ; preds = %178
  %185 = ptrtoint ptr %162 to i32
  br label %186

186:                                              ; preds = %184, %182
  %187 = phi i32 [ %183, %182 ], [ %185, %184 ]
  %188 = inttoptr i32 %187 to ptr
  %189 = getelementptr inbounds %struct.anon.71, ptr %188, i32 0, i32 2
  %190 = load ptr, ptr %189, align 4
  %191 = ptrtoint ptr %190 to i32
  %192 = and i32 %191, 1
  %193 = icmp eq i32 %192, 0
  br i1 %193, label %194, label %209

194:                                              ; preds = %186
  %195 = load volatile i32, ptr %163, align 4
  %196 = and i32 %195, 1
  %197 = icmp eq i32 %196, 0
  br i1 %197, label %200, label %198, !prof !15

198:                                              ; preds = %194
  %199 = add i32 %195, -1
  br label %202

200:                                              ; preds = %194
  %201 = ptrtoint ptr %162 to i32
  br label %202

202:                                              ; preds = %200, %198
  %203 = phi i32 [ %199, %198 ], [ %201, %200 ]
  %204 = inttoptr i32 %203 to ptr
  %205 = load volatile i32, ptr %204, align 4
  %206 = and i32 %205, 524288
  %207 = icmp eq i32 %206, 0
  %208 = select i1 %207, i32 0, i32 3
  br label %209

209:                                              ; preds = %202, %186
  %210 = phi i32 [ %208, %202 ], [ 1, %186 ]
  %211 = getelementptr i32, ptr %3, i32 %210
  %212 = load i32, ptr %211, align 4
  %213 = add i32 %212, 1
  store i32 %213, ptr %211, align 4
  %214 = icmp eq i32 %133, 2080374784
  %215 = and i32 %130, 40
  %216 = icmp eq i32 %215, 32
  %217 = select i1 %214, i1 %216, i1 false
  br i1 %217, label %218, label %227

218:                                              ; preds = %209
  %219 = and i32 %124, -128
  %220 = or i32 %219, 120
  tail call void @set_pte_at(ptr noundef %58, i32 noundef %116, ptr noundef %115, i32 noundef %220) #17
  br label %227

221:                                              ; preds = %136
  %222 = load i32, ptr %115, align 4
  %223 = lshr i32 %222, 7
  %224 = shl i32 %222, 24
  %225 = and i32 %224, 2080374784
  %226 = or i32 %225, %223
  br label %488

227:                                              ; preds = %218, %209, %155, %152
  %228 = phi i32 [ %124, %152 ], [ %220, %218 ], [ %124, %209 ], [ %124, %155 ]
  tail call void @set_pte_at(ptr noundef %57, i32 noundef %116, ptr noundef %113, i32 noundef %228) #17
  br label %480

229:                                              ; preds = %126
  %230 = load ptr, ptr %9, align 4
  %231 = load i32, ptr %11, align 4
  %232 = lshr i32 %124, 12
  %233 = and i32 %231, 268436480
  %234 = icmp eq i32 %233, 0
  br i1 %234, label %254, label %235, !prof !15

235:                                              ; preds = %229
  %236 = and i32 %231, 268435456
  %237 = icmp eq i32 %236, 0
  br i1 %237, label %241, label %238

238:                                              ; preds = %235
  %239 = tail call i32 @pfn_valid(i32 noundef %232) #17
  %240 = icmp eq i32 %239, 0
  br i1 %240, label %444, label %261

241:                                              ; preds = %235
  %242 = load i32, ptr %1, align 4
  %243 = sub i32 %116, %242
  %244 = lshr i32 %243, 12
  %245 = load i32, ptr %35, align 4
  %246 = add i32 %244, %245
  %247 = icmp eq i32 %232, %246
  %248 = and i32 %231, 40
  %249 = icmp ne i32 %248, 32
  %250 = select i1 %247, i1 true, i1 %249
  %251 = load i32, ptr @zero_pfn, align 4
  %252 = icmp eq i32 %251, %232
  %253 = select i1 %250, i1 true, i1 %252
  br i1 %253, label %444, label %257

254:                                              ; preds = %229
  %255 = load i32, ptr @zero_pfn, align 4
  %256 = icmp eq i32 %255, %232
  br i1 %256, label %444, label %257

257:                                              ; preds = %254, %241
  %258 = load i32, ptr @highest_memmap_pfn, align 4
  %259 = icmp ugt i32 %232, %258
  br i1 %259, label %260, label %261, !prof !28

260:                                              ; preds = %257
  tail call fastcc void @print_bad_pte(ptr noundef %1, i32 noundef %116, i32 noundef %124, ptr noundef null) #17
  br label %444

261:                                              ; preds = %257, %238
  %262 = load ptr, ptr @mem_map, align 4
  %263 = load i32, ptr @__pv_phys_pfn_offset, align 4
  %264 = sub i32 %232, %263
  %265 = getelementptr %struct.page, ptr %262, i32 %264
  %266 = icmp eq ptr %265, null
  br i1 %266, label %444, label %267

267:                                              ; preds = %261
  %268 = load i32, ptr %11, align 4
  %269 = and i32 %268, 40
  %270 = icmp eq i32 %269, 32
  br i1 %270, label %271, label %393

271:                                              ; preds = %267
  %272 = load ptr, ptr %9, align 4
  %273 = getelementptr inbounds %struct.anon.7, ptr %272, i32 0, i32 43
  %274 = load volatile i32, ptr %273, align 4
  %275 = and i32 %274, 268435456
  %276 = icmp eq i32 %275, 0
  br i1 %276, label %393, label %277

277:                                              ; preds = %271
  %278 = getelementptr %struct.page, ptr %262, i32 %264, i32 1
  %279 = load volatile i32, ptr %278, align 4
  %280 = and i32 %279, 1
  %281 = icmp eq i32 %280, 0
  br i1 %281, label %284, label %282, !prof !15

282:                                              ; preds = %277
  %283 = add i32 %279, -1
  br label %286

284:                                              ; preds = %277
  %285 = ptrtoint ptr %265 to i32
  br label %286

286:                                              ; preds = %284, %282
  %287 = phi i32 [ %283, %282 ], [ %285, %284 ]
  %288 = inttoptr i32 %287 to ptr
  %289 = load volatile i32, ptr %288, align 4
  %290 = and i32 %289, 65536
  %291 = icmp eq i32 %290, 0
  br i1 %291, label %292, label %297

292:                                              ; preds = %286
  %293 = getelementptr inbounds %struct.page, ptr %288, i32 0, i32 1
  %294 = load volatile i32, ptr %293, align 4
  %295 = and i32 %294, 1
  %296 = icmp eq i32 %295, 0
  br i1 %296, label %320, label %297

297:                                              ; preds = %292, %286
  %298 = load volatile i32, ptr %288, align 4
  %299 = and i32 %298, 65536
  %300 = icmp eq i32 %299, 0
  br i1 %300, label %320, label %301

301:                                              ; preds = %297
  %302 = getelementptr %struct.page, ptr %288, i32 1, i32 1
  %303 = getelementptr inbounds %struct.anon.59, ptr %302, i32 0, i32 2
  %304 = load i8, ptr %303, align 1
  %305 = icmp ugt i8 %304, 1
  br i1 %305, label %306, label %320

306:                                              ; preds = %301
  %307 = load volatile i32, ptr %278, align 4
  %308 = and i32 %307, 1
  %309 = icmp eq i32 %308, 0
  br i1 %309, label %312, label %310, !prof !15

310:                                              ; preds = %306
  %311 = add i32 %307, -1
  br label %314

312:                                              ; preds = %306
  %313 = ptrtoint ptr %265 to i32
  br label %314

314:                                              ; preds = %312, %310
  %315 = phi i32 [ %311, %310 ], [ %313, %312 ]
  %316 = inttoptr i32 %315 to ptr
  %317 = getelementptr %struct.page, ptr %316, i32 2, i32 1, i32 0, i32 0, i32 1
  %318 = load volatile i32, ptr %317, align 4
  %319 = icmp sgt i32 %318, 0
  br i1 %319, label %334, label %393, !prof !28

320:                                              ; preds = %301, %297, %292
  %321 = load volatile i32, ptr %278, align 4
  %322 = and i32 %321, 1
  %323 = icmp eq i32 %322, 0
  br i1 %323, label %326, label %324, !prof !15

324:                                              ; preds = %320
  %325 = add i32 %321, -1
  br label %328

326:                                              ; preds = %320
  %327 = ptrtoint ptr %265 to i32
  br label %328

328:                                              ; preds = %326, %324
  %329 = phi i32 [ %325, %324 ], [ %327, %326 ]
  %330 = inttoptr i32 %329 to ptr
  %331 = getelementptr inbounds %struct.page, ptr %330, i32 0, i32 3
  %332 = load volatile i32, ptr %331, align 4
  %333 = icmp ugt i32 %332, 1023
  br i1 %333, label %334, label %393, !prof !28

334:                                              ; preds = %328, %314
  %335 = icmp eq ptr %112, null
  br i1 %335, label %488, label %336

336:                                              ; preds = %334
  %337 = load ptr, ptr getelementptr inbounds (%struct.cpu_user_fns, ptr @cpu_user, i32 0, i32 1), align 4
  tail call void %337(ptr noundef nonnull %112, ptr noundef nonnull %265, i32 noundef %116, ptr noundef %1) #17
  tail call void asm sideeffect "dmb ishst", "~{memory}"() #17, !srcloc !33
  %338 = load i32, ptr %112, align 4
  %339 = or i32 %338, 4
  store i32 %339, ptr %112, align 4
  tail call void @page_add_new_anon_rmap(ptr noundef nonnull %112, ptr noundef %0, i32 noundef %116, i1 noundef zeroext false) #17
  tail call void @lru_cache_add_inactive_or_unevictable(ptr noundef nonnull %112, ptr noundef %0) #17
  %340 = getelementptr inbounds %struct.page, ptr %112, i32 0, i32 1
  %341 = load volatile i32, ptr %340, align 4
  %342 = and i32 %341, 1
  %343 = icmp eq i32 %342, 0
  br i1 %343, label %346, label %344, !prof !15

344:                                              ; preds = %336
  %345 = add i32 %341, -1
  br label %348

346:                                              ; preds = %336
  %347 = ptrtoint ptr %112 to i32
  br label %348

348:                                              ; preds = %346, %344
  %349 = phi i32 [ %345, %344 ], [ %347, %346 ]
  %350 = inttoptr i32 %349 to ptr
  %351 = getelementptr inbounds %struct.anon.71, ptr %350, i32 0, i32 2
  %352 = load ptr, ptr %351, align 4
  %353 = ptrtoint ptr %352 to i32
  %354 = and i32 %353, 1
  %355 = icmp eq i32 %354, 0
  br i1 %355, label %356, label %371

356:                                              ; preds = %348
  %357 = load volatile i32, ptr %340, align 4
  %358 = and i32 %357, 1
  %359 = icmp eq i32 %358, 0
  br i1 %359, label %362, label %360, !prof !15

360:                                              ; preds = %356
  %361 = add i32 %357, -1
  br label %364

362:                                              ; preds = %356
  %363 = ptrtoint ptr %112 to i32
  br label %364

364:                                              ; preds = %362, %360
  %365 = phi i32 [ %361, %360 ], [ %363, %362 ]
  %366 = inttoptr i32 %365 to ptr
  %367 = load volatile i32, ptr %366, align 4
  %368 = and i32 %367, 524288
  %369 = icmp eq i32 %368, 0
  %370 = select i1 %369, i32 0, i32 3
  br label %371

371:                                              ; preds = %364, %348
  %372 = phi i32 [ %370, %364 ], [ 1, %348 ]
  %373 = getelementptr i32, ptr %3, i32 %372
  %374 = load i32, ptr %373, align 4
  %375 = add i32 %374, 1
  store i32 %375, ptr %373, align 4
  %376 = load ptr, ptr @mem_map, align 4
  %377 = ptrtoint ptr %112 to i32
  %378 = ptrtoint ptr %376 to i32
  %379 = sub i32 %377, %378
  %380 = lshr exact i32 %379, 5
  %381 = load i32, ptr @__pv_phys_pfn_offset, align 4
  %382 = add i32 %380, %381
  %383 = shl i32 %382, 12
  %384 = load i32, ptr %36, align 4
  %385 = or i32 %384, %383
  %386 = or i32 %385, 64
  %387 = load i32, ptr %37, align 4
  %388 = and i32 %387, 2
  %389 = icmp eq i32 %388, 0
  %390 = and i32 %386, -129
  %391 = select i1 %389, i32 %386, i32 %390, !prof !28
  %392 = load ptr, ptr %7, align 4
  tail call void @set_pte_at(ptr noundef %392, i32 noundef %116, ptr noundef %113, i32 noundef %391) #17
  br label %480

393:                                              ; preds = %328, %314, %271, %267
  %394 = getelementptr %struct.page, ptr %262, i32 %264, i32 1
  %395 = load volatile i32, ptr %394, align 4
  %396 = and i32 %395, 1
  %397 = icmp eq i32 %396, 0
  br i1 %397, label %400, label %398, !prof !15

398:                                              ; preds = %393
  %399 = add i32 %395, -1
  br label %402

400:                                              ; preds = %393
  %401 = ptrtoint ptr %265 to i32
  br label %402

402:                                              ; preds = %400, %398
  %403 = phi i32 [ %399, %398 ], [ %401, %400 ]
  %404 = inttoptr i32 %403 to ptr
  %405 = getelementptr inbounds %struct.page, ptr %404, i32 0, i32 3
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %405) #17, !srcloc !12
  %406 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %405, ptr %405, i32 1, ptr elementtype(i32) %405) #17, !srcloc !18
  %407 = getelementptr %struct.page, ptr %262, i32 %264, i32 2
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %407) #17, !srcloc !12
  %408 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %407, ptr %407, i32 1, ptr elementtype(i32) %407) #17, !srcloc !18
  %409 = load volatile i32, ptr %394, align 4
  %410 = and i32 %409, 1
  %411 = icmp eq i32 %410, 0
  br i1 %411, label %414, label %412, !prof !15

412:                                              ; preds = %402
  %413 = add i32 %409, -1
  br label %416

414:                                              ; preds = %402
  %415 = ptrtoint ptr %265 to i32
  br label %416

416:                                              ; preds = %414, %412
  %417 = phi i32 [ %413, %412 ], [ %415, %414 ]
  %418 = inttoptr i32 %417 to ptr
  %419 = getelementptr inbounds %struct.anon.71, ptr %418, i32 0, i32 2
  %420 = load ptr, ptr %419, align 4
  %421 = ptrtoint ptr %420 to i32
  %422 = and i32 %421, 1
  %423 = icmp eq i32 %422, 0
  br i1 %423, label %424, label %439

424:                                              ; preds = %416
  %425 = load volatile i32, ptr %394, align 4
  %426 = and i32 %425, 1
  %427 = icmp eq i32 %426, 0
  br i1 %427, label %430, label %428, !prof !15

428:                                              ; preds = %424
  %429 = add i32 %425, -1
  br label %432

430:                                              ; preds = %424
  %431 = ptrtoint ptr %265 to i32
  br label %432

432:                                              ; preds = %430, %428
  %433 = phi i32 [ %429, %428 ], [ %431, %430 ]
  %434 = inttoptr i32 %433 to ptr
  %435 = load volatile i32, ptr %434, align 4
  %436 = and i32 %435, 524288
  %437 = icmp eq i32 %436, 0
  %438 = select i1 %437, i32 0, i32 3
  br label %439

439:                                              ; preds = %432, %416
  %440 = phi i32 [ %438, %432 ], [ 1, %416 ]
  %441 = getelementptr i32, ptr %3, i32 %440
  %442 = load i32, ptr %441, align 4
  %443 = add i32 %442, 1
  store i32 %443, ptr %441, align 4
  br label %444

444:                                              ; preds = %439, %261, %260, %254, %241, %238
  %445 = and i32 %231, 40
  %446 = icmp eq i32 %445, 32
  %447 = and i32 %124, 128
  %448 = icmp eq i32 %447, 0
  %449 = and i1 %448, %446
  br i1 %449, label %450, label %454

450:                                              ; preds = %444
  %451 = load i32, ptr %115, align 4
  %452 = or i32 %451, 128
  tail call void @set_pte_at(ptr noundef %230, i32 noundef %116, ptr noundef %115, i32 noundef %452) #17
  %453 = or i32 %124, 128
  br label %454

454:                                              ; preds = %450, %444
  %455 = phi i32 [ %453, %450 ], [ %124, %444 ]
  %456 = and i32 %231, 8
  %457 = icmp eq i32 %456, 0
  %458 = and i32 %455, -67
  %459 = select i1 %457, i32 %455, i32 %458
  %460 = and i32 %459, -3
  %461 = load ptr, ptr %7, align 4
  tail call void @set_pte_at(ptr noundef %461, i32 noundef %116, ptr noundef %113, i32 noundef %460) #17
  %462 = icmp eq ptr %112, null
  br i1 %462, label %480, label %463, !prof !15

463:                                              ; preds = %454
  %464 = getelementptr inbounds %struct.page, ptr %112, i32 0, i32 1
  %465 = load volatile i32, ptr %464, align 4
  %466 = and i32 %465, 1
  %467 = icmp eq i32 %466, 0
  br i1 %467, label %470, label %468, !prof !15

468:                                              ; preds = %463
  %469 = add i32 %465, -1
  br label %472

470:                                              ; preds = %463
  %471 = ptrtoint ptr %112 to i32
  br label %472

472:                                              ; preds = %470, %468
  %473 = phi i32 [ %469, %468 ], [ %471, %470 ]
  %474 = inttoptr i32 %473 to ptr
  %475 = getelementptr inbounds %struct.page, ptr %474, i32 0, i32 3
  tail call void asm sideeffect "dmb ish", "~{memory}"() #17, !srcloc !34
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %475) #17, !srcloc !12
  %476 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %475, ptr %475, i32 1, ptr elementtype(i32) %475) #17, !srcloc !35
  %477 = extractvalue { i32, i32 } %476, 0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #17, !srcloc !36
  %478 = icmp eq i32 %477, 0
  br i1 %478, label %479, label %480

479:                                              ; preds = %472
  tail call void @__put_page(ptr noundef %474) #17
  br label %480

480:                                              ; preds = %479, %472, %454, %371, %227, %122
  %481 = phi i32 [ 8, %227 ], [ 1, %122 ], [ 8, %479 ], [ 8, %472 ], [ 8, %371 ], [ 8, %454 ]
  %482 = phi ptr [ %112, %227 ], [ %112, %122 ], [ null, %479 ], [ null, %472 ], [ null, %371 ], [ null, %454 ]
  %483 = add nsw i32 %481, %123
  %484 = getelementptr i32, ptr %113, i32 1
  %485 = getelementptr i32, ptr %115, i32 1
  %486 = add i32 %116, 4096
  %487 = icmp eq i32 %486, %47
  br i1 %487, label %488, label %111

488:                                              ; preds = %480, %334, %221, %118
  %489 = phi ptr [ %112, %221 ], [ null, %334 ], [ %482, %480 ], [ %112, %118 ]
  %490 = phi i32 [ -5, %221 ], [ -11, %334 ], [ 0, %480 ], [ 0, %118 ]
  %491 = phi i32 [ %226, %221 ], [ %64, %118 ], [ %64, %334 ], [ %64, %480 ]
  %492 = phi i32 [ %116, %221 ], [ %116, %334 ], [ %47, %480 ], [ %116, %118 ]
  tail call void asm sideeffect "dmb ish", "~{memory}"() #17, !srcloc !22
  %493 = load i16, ptr %110, align 4
  %494 = add i16 %493, 1
  store i16 %494, ptr %110, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #17, !srcloc !23
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #17, !srcloc !24
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !25
  tail call void @kunmap_local_indexed(ptr noundef %104) #17
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !37
  %495 = load i32, ptr %84, align 8
  %496 = add i32 %495, -1
  store i32 %496, ptr %84, align 8
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !38
  call fastcc void @add_mm_rss_vec(ptr noundef %57, ptr noundef nonnull %3) #17
  tail call void asm sideeffect "dmb ish", "~{memory}"() #17, !srcloc !22
  %497 = load i16, ptr %79, align 4
  %498 = add i16 %497, 1
  store i16 %498, ptr %79, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #17, !srcloc !23
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #17, !srcloc !24
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !25
  tail call void @kunmap_local_indexed(ptr noundef nonnull %90) #17
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !37
  %499 = load i32, ptr %84, align 8
  %500 = add i32 %499, -1
  store i32 %500, ptr %84, align 8
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !38
  %501 = tail call i32 @__cond_resched() #17
  switch i32 %490, label %513 [
    i32 -5, label %502
    i32 -11, label %506
  ]

502:                                              ; preds = %488
  %503 = insertvalue [1 x i32] poison, i32 %491, 0
  %504 = tail call i32 @add_swap_count_continuation([1 x i32] %503, i32 noundef 3264) #17
  %505 = icmp slt i32 %504, 0
  br i1 %505, label %517, label %513

506:                                              ; preds = %488
  %507 = tail call ptr @__alloc_pages(i32 noundef 17829066, i32 noundef 0, i32 noundef 0, ptr noundef null) #17
  %508 = icmp eq ptr %507, null
  br i1 %508, label %509, label %510

509:                                              ; preds = %506
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #17
  br label %543

510:                                              ; preds = %506
  %511 = getelementptr inbounds %struct.page, ptr %507, i32 0, i32 1
  %512 = load volatile i32, ptr %511, align 4
  br label %513

513:                                              ; preds = %510, %502, %488
  %514 = phi ptr [ %489, %488 ], [ %507, %510 ], [ %489, %502 ]
  %515 = phi i32 [ %491, %488 ], [ %491, %510 ], [ 0, %502 ]
  %516 = icmp eq i32 %492, %47
  br i1 %516, label %517, label %62

517:                                              ; preds = %513, %502, %73, %68
  %518 = phi ptr [ %63, %73 ], [ %514, %513 ], [ %489, %502 ], [ %63, %68 ]
  %519 = phi i1 [ false, %73 ], [ true, %513 ], [ false, %502 ], [ false, %68 ]
  %520 = icmp eq ptr %518, null
  br i1 %520, label %538, label %521, !prof !15

521:                                              ; preds = %517
  %522 = getelementptr inbounds %struct.page, ptr %518, i32 0, i32 1
  %523 = load volatile i32, ptr %522, align 4
  %524 = and i32 %523, 1
  %525 = icmp eq i32 %524, 0
  br i1 %525, label %528, label %526, !prof !15

526:                                              ; preds = %521
  %527 = add i32 %523, -1
  br label %530

528:                                              ; preds = %521
  %529 = ptrtoint ptr %518 to i32
  br label %530

530:                                              ; preds = %528, %526
  %531 = phi i32 [ %527, %526 ], [ %529, %528 ]
  %532 = inttoptr i32 %531 to ptr
  %533 = getelementptr inbounds %struct.page, ptr %532, i32 0, i32 3
  tail call void asm sideeffect "dmb ish", "~{memory}"() #17, !srcloc !34
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %533) #17, !srcloc !12
  %534 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %533, ptr %533, i32 1, ptr elementtype(i32) %533) #17, !srcloc !35
  %535 = extractvalue { i32, i32 } %534, 0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #17, !srcloc !36
  %536 = icmp eq i32 %535, 0
  br i1 %536, label %537, label %538

537:                                              ; preds = %530
  tail call void @__put_page(ptr noundef %532) #17
  br label %538

538:                                              ; preds = %537, %530, %517
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #17
  br i1 %519, label %539, label %543

539:                                              ; preds = %538, %55, %49
  %540 = getelementptr [2 x i32], ptr %40, i32 1
  %541 = getelementptr [2 x i32], ptr %42, i32 1
  %542 = icmp eq i32 %47, %6
  br i1 %542, label %543, label %39

543:                                              ; preds = %539, %538, %509, %39
  %544 = phi i32 [ -12, %509 ], [ -12, %538 ], [ -12, %39 ], [ 0, %539 ]
  br i1 %21, label %545, label %549

545:                                              ; preds = %543
  %546 = getelementptr inbounds %struct.anon.7, ptr %10, i32 0, i32 26
  tail call void asm sideeffect "dmb ishst", "~{memory}"() #17, !srcloc !39
  %547 = load i32, ptr %546, align 4
  %548 = add i32 %547, 1
  store i32 %548, ptr %546, align 4
  br label %549

549:                                              ; preds = %545, %543, %15
  %550 = phi i32 [ 0, %15 ], [ %544, %545 ], [ %544, %543 ]
  ret i32 %550
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #6

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @unmap_page_range(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef readonly %4) local_unnamed_addr #2 {
  %6 = alloca %struct.vm_area_struct, align 4
  %7 = alloca %struct.vm_area_struct, align 4
  %8 = alloca [4 x i32], align 4
  %9 = icmp ult i32 %2, %3
  br i1 %9, label %11, label %10, !prof !15

10:                                               ; preds = %5
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22mm/memory.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1554, 0\0A.popsection", ""() #17, !srcloc !40
  unreachable

11:                                               ; preds = %5
  %12 = getelementptr inbounds %struct.mmu_gather, ptr %0, i32 0, i32 3
  %13 = load i16, ptr %12, align 4
  %14 = and i16 %13, 1
  %15 = icmp eq i16 %14, 0
  br i1 %15, label %16, label %28

16:                                               ; preds = %11
  %17 = and i16 %13, -257
  store i16 %17, ptr %12, align 4
  %18 = getelementptr inbounds %struct.vm_area_struct, ptr %1, i32 0, i32 8
  %19 = load i32, ptr %18, align 4
  %20 = trunc i32 %19 to i16
  %21 = shl i16 %20, 5
  %22 = and i16 %21, 128
  %23 = and i16 %13, -385
  %24 = or i16 %22, %23
  store i16 %24, ptr %12, align 4
  %25 = load i32, ptr %1, align 4
  %26 = getelementptr inbounds %struct.vm_area_struct, ptr %1, i32 0, i32 1
  %27 = load i32, ptr %26, align 4
  tail call void @flush_cache_range(ptr noundef %1, i32 noundef %25, i32 noundef %27) #17
  br label %28

28:                                               ; preds = %16, %11
  %29 = getelementptr inbounds %struct.vm_area_struct, ptr %1, i32 0, i32 6
  %30 = load ptr, ptr %29, align 4
  %31 = getelementptr inbounds %struct.anon.7, ptr %30, i32 0, i32 8
  %32 = load ptr, ptr %31, align 4
  %33 = lshr i32 %2, 21
  %34 = getelementptr [2 x i32], ptr %32, i32 %33
  %35 = add i32 %3, -1
  %36 = icmp eq ptr %4, null
  %37 = getelementptr inbounds %struct.vm_area_struct, ptr %1, i32 0, i32 8
  %38 = getelementptr inbounds %struct.vm_area_struct, ptr %1, i32 0, i32 13
  %39 = icmp ne ptr %4, null
  %40 = getelementptr inbounds %struct.mmu_gather, ptr %0, i32 0, i32 1
  %41 = getelementptr inbounds %struct.mmu_gather, ptr %0, i32 0, i32 2
  %42 = getelementptr inbounds [4 x i32], ptr %8, i32 0, i32 2
  %43 = getelementptr inbounds %struct.vm_area_struct, ptr %7, i32 0, i32 6
  %44 = getelementptr inbounds %struct.vm_area_struct, ptr %7, i32 0, i32 8
  br label %45

45:                                               ; preds = %369, %28
  %46 = phi ptr [ %34, %28 ], [ %372, %369 ]
  %47 = phi i32 [ %2, %28 ], [ %52, %369 ]
  %48 = add i32 %47, 2097152
  %49 = and i32 %48, -2097152
  %50 = add i32 %49, -1
  %51 = icmp ult i32 %50, %35
  %52 = select i1 %51, i32 %49, i32 %3
  %53 = load i32, ptr %46, align 4
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %369, label %55

55:                                               ; preds = %45
  %56 = and i32 %53, 2
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %59, label %58, !prof !15

58:                                               ; preds = %55
  call void @pmd_clear_bad(ptr noundef %46) #17
  br label %369

59:                                               ; preds = %55
  %60 = load ptr, ptr %0, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %8) #17
  br label %61

61:                                               ; preds = %365, %59
  %62 = phi i32 [ %53, %59 ], [ %367, %365 ]
  %63 = phi i32 [ %47, %59 ], [ %363, %365 ]
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(16) %8, i8 0, i32 16, i1 false) #17
  %64 = load ptr, ptr @mem_map, align 4
  %65 = lshr i32 %62, 12
  %66 = load i32, ptr @__pv_phys_pfn_offset, align 4
  %67 = sub i32 %65, %66
  %68 = getelementptr %struct.page, ptr %64, i32 %67, i32 1, i32 0, i32 3
  %69 = getelementptr %struct.page, ptr %64, i32 %67
  %70 = load i32, ptr @pgprot_kernel, align 4
  %71 = or i32 %70, 512
  call void asm sideeffect "", "~{memory}"() #17, !srcloc !30
  %72 = tail call ptr @llvm.thread.pointer() #17
  %73 = getelementptr inbounds %struct.task_struct, ptr %72, i32 0, i32 149
  %74 = load i32, ptr %73, align 8
  %75 = add i32 %74, 1
  store i32 %75, ptr %73, align 8
  call void asm sideeffect "", "~{memory}"() #17, !srcloc !31
  %76 = call ptr @__kmap_local_page_prot(ptr noundef %69, i32 noundef %71) #17
  %77 = lshr i32 %63, 12
  %78 = and i32 %77, 511
  %79 = getelementptr i32, ptr %76, i32 %78
  call void @_raw_spin_lock(ptr noundef %68) #17
  br label %80

80:                                               ; preds = %312, %61
  %81 = phi ptr [ %79, %61 ], [ %314, %312 ]
  %82 = phi i32 [ 0, %61 ], [ %313, %312 ]
  %83 = phi i32 [ %63, %61 ], [ %315, %312 ]
  %84 = load i32, ptr %81, align 4
  %85 = icmp eq i32 %84, 0
  br i1 %85, label %312, label %86

86:                                               ; preds = %80
  %87 = load volatile i32, ptr %72, align 4
  %88 = and i32 %87, 2
  %89 = icmp eq i32 %88, 0
  br i1 %89, label %90, label %317

90:                                               ; preds = %86
  %91 = and i32 %84, 1
  %92 = icmp eq i32 %91, 0
  br i1 %92, label %237, label %93

93:                                               ; preds = %90
  %94 = lshr i32 %84, 12
  %95 = load i32, ptr %37, align 4
  %96 = and i32 %95, 268436480
  %97 = icmp eq i32 %96, 0
  br i1 %97, label %117, label %98, !prof !15

98:                                               ; preds = %93
  %99 = and i32 %95, 268435456
  %100 = icmp eq i32 %99, 0
  br i1 %100, label %104, label %101

101:                                              ; preds = %98
  %102 = call i32 @pfn_valid(i32 noundef %94) #17
  %103 = icmp eq i32 %102, 0
  br i1 %103, label %137, label %124

104:                                              ; preds = %98
  %105 = load i32, ptr %1, align 4
  %106 = sub i32 %83, %105
  %107 = lshr i32 %106, 12
  %108 = load i32, ptr %38, align 4
  %109 = add i32 %107, %108
  %110 = icmp eq i32 %94, %109
  %111 = and i32 %95, 40
  %112 = icmp ne i32 %111, 32
  %113 = select i1 %110, i1 true, i1 %112
  %114 = load i32, ptr @zero_pfn, align 4
  %115 = icmp eq i32 %114, %94
  %116 = select i1 %113, i1 true, i1 %115
  br i1 %116, label %137, label %120

117:                                              ; preds = %93
  %118 = load i32, ptr @zero_pfn, align 4
  %119 = icmp eq i32 %118, %94
  br i1 %119, label %137, label %120

120:                                              ; preds = %117, %104
  %121 = load i32, ptr @highest_memmap_pfn, align 4
  %122 = icmp ugt i32 %94, %121
  br i1 %122, label %123, label %124, !prof !28

123:                                              ; preds = %120
  call fastcc void @print_bad_pte(ptr noundef %1, i32 noundef %83, i32 noundef %84, ptr noundef null) #17
  br label %137

124:                                              ; preds = %120, %101
  %125 = load ptr, ptr @mem_map, align 4
  %126 = load i32, ptr @__pv_phys_pfn_offset, align 4
  %127 = sub i32 %94, %126
  %128 = getelementptr %struct.page, ptr %125, i32 %127
  %129 = icmp ne ptr %128, null
  %130 = and i1 %39, %129
  br i1 %130, label %131, label %137

131:                                              ; preds = %124
  %132 = load ptr, ptr %4, align 4
  %133 = icmp eq ptr %132, null
  br i1 %133, label %137, label %134

134:                                              ; preds = %131
  %135 = call ptr @page_rmapping(ptr noundef nonnull %128) #17
  %136 = icmp eq ptr %132, %135
  br i1 %136, label %137, label %312, !prof !15

137:                                              ; preds = %134, %131, %124, %123, %117, %104, %101
  %138 = phi ptr [ %128, %134 ], [ %128, %131 ], [ %128, %124 ], [ null, %123 ], [ null, %101 ], [ null, %117 ], [ null, %104 ]
  %139 = load i32, ptr %81, align 4
  %140 = load ptr, ptr getelementptr inbounds (%struct.processor, ptr @processor, i32 0, i32 9), align 4
  call void %140(ptr noundef %81, i32 noundef 0, i32 noundef 0) #17
  %141 = load i32, ptr %40, align 4
  %142 = call i32 @llvm.umin.i32(i32 %141, i32 %83) #17
  store i32 %142, ptr %40, align 4
  %143 = load i32, ptr %41, align 4
  %144 = add i32 %83, 4096
  %145 = call i32 @llvm.umax.i32(i32 %143, i32 %144) #17
  store i32 %145, ptr %41, align 4
  %146 = load i16, ptr %12, align 4
  %147 = or i16 %146, 8
  store i16 %147, ptr %12, align 4
  %148 = icmp eq ptr %138, null
  br i1 %148, label %312, label %149, !prof !28

149:                                              ; preds = %137
  %150 = getelementptr inbounds %struct.page, ptr %138, i32 0, i32 1
  %151 = load volatile i32, ptr %150, align 4
  %152 = and i32 %151, 1
  %153 = icmp eq i32 %152, 0
  br i1 %153, label %156, label %154, !prof !15

154:                                              ; preds = %149
  %155 = add i32 %151, -1
  br label %158

156:                                              ; preds = %149
  %157 = ptrtoint ptr %138 to i32
  br label %158

158:                                              ; preds = %156, %154
  %159 = phi i32 [ %155, %154 ], [ %157, %156 ]
  %160 = inttoptr i32 %159 to ptr
  %161 = getelementptr inbounds %struct.anon.71, ptr %160, i32 0, i32 2
  %162 = load ptr, ptr %161, align 4
  %163 = ptrtoint ptr %162 to i32
  %164 = and i32 %163, 1
  %165 = icmp eq i32 %164, 0
  br i1 %165, label %166, label %180

166:                                              ; preds = %158
  %167 = and i32 %139, 64
  %168 = icmp eq i32 %167, 0
  br i1 %168, label %171, label %169

169:                                              ; preds = %166
  %170 = call zeroext i1 @set_page_dirty(ptr noundef nonnull %138) #17
  br label %171

171:                                              ; preds = %169, %166
  %172 = phi i32 [ 1, %169 ], [ %82, %166 ]
  %173 = and i32 %139, 2
  %174 = icmp eq i32 %173, 0
  br i1 %174, label %180, label %175

175:                                              ; preds = %171
  %176 = load i32, ptr %37, align 4
  %177 = and i32 %176, 32768
  %178 = icmp eq i32 %177, 0
  br i1 %178, label %179, label %180, !prof !15

179:                                              ; preds = %175
  call void @mark_page_accessed(ptr noundef nonnull %138) #17
  br label %180

180:                                              ; preds = %179, %175, %171, %158
  %181 = phi i32 [ %82, %158 ], [ %172, %179 ], [ %172, %175 ], [ %172, %171 ]
  %182 = load volatile i32, ptr %150, align 4
  %183 = and i32 %182, 1
  %184 = icmp eq i32 %183, 0
  br i1 %184, label %187, label %185, !prof !15

185:                                              ; preds = %180
  %186 = add i32 %182, -1
  br label %189

187:                                              ; preds = %180
  %188 = ptrtoint ptr %138 to i32
  br label %189

189:                                              ; preds = %187, %185
  %190 = phi i32 [ %186, %185 ], [ %188, %187 ]
  %191 = inttoptr i32 %190 to ptr
  %192 = getelementptr inbounds %struct.anon.71, ptr %191, i32 0, i32 2
  %193 = load ptr, ptr %192, align 4
  %194 = ptrtoint ptr %193 to i32
  %195 = and i32 %194, 1
  %196 = icmp eq i32 %195, 0
  br i1 %196, label %197, label %212

197:                                              ; preds = %189
  %198 = load volatile i32, ptr %150, align 4
  %199 = and i32 %198, 1
  %200 = icmp eq i32 %199, 0
  br i1 %200, label %203, label %201, !prof !15

201:                                              ; preds = %197
  %202 = add i32 %198, -1
  br label %205

203:                                              ; preds = %197
  %204 = ptrtoint ptr %138 to i32
  br label %205

205:                                              ; preds = %203, %201
  %206 = phi i32 [ %202, %201 ], [ %204, %203 ]
  %207 = inttoptr i32 %206 to ptr
  %208 = load volatile i32, ptr %207, align 4
  %209 = and i32 %208, 524288
  %210 = icmp eq i32 %209, 0
  %211 = select i1 %210, i32 0, i32 3
  br label %212

212:                                              ; preds = %205, %189
  %213 = phi i32 [ %211, %205 ], [ 1, %189 ]
  %214 = getelementptr [4 x i32], ptr %8, i32 0, i32 %213
  %215 = load i32, ptr %214, align 4
  %216 = add i32 %215, -1
  store i32 %216, ptr %214, align 4
  call void @page_remove_rmap(ptr noundef nonnull %138, i1 noundef zeroext false) #17
  %217 = load volatile i32, ptr %138, align 4
  %218 = and i32 %217, 65536
  %219 = icmp eq i32 %218, 0
  br i1 %219, label %220, label %224

220:                                              ; preds = %212
  %221 = load volatile i32, ptr %150, align 4
  %222 = and i32 %221, 1
  %223 = icmp eq i32 %222, 0
  br i1 %223, label %226, label %224, !prof !15

224:                                              ; preds = %220, %212
  %225 = call i32 @__page_mapcount(ptr noundef nonnull %138) #17
  br label %230

226:                                              ; preds = %220
  %227 = getelementptr inbounds %struct.page, ptr %138, i32 0, i32 2
  %228 = load volatile i32, ptr %227, align 4
  %229 = add i32 %228, 1
  br label %230

230:                                              ; preds = %226, %224
  %231 = phi i32 [ %225, %224 ], [ %229, %226 ]
  %232 = icmp slt i32 %231, 0
  br i1 %232, label %233, label %234, !prof !28

233:                                              ; preds = %230
  call fastcc void @print_bad_pte(ptr noundef %1, i32 noundef %83, i32 noundef %139, ptr noundef nonnull %138) #17
  br label %234

234:                                              ; preds = %233, %230
  %235 = call zeroext i1 @__tlb_remove_page_size(ptr noundef %0, ptr noundef nonnull %138, i32 noundef 4096) #17
  br i1 %235, label %236, label %312, !prof !28

236:                                              ; preds = %234
  call fastcc void @add_mm_rss_vec(ptr noundef %60, ptr noundef nonnull %8) #17
  br label %321

237:                                              ; preds = %90
  %238 = lshr i32 %84, 7
  %239 = shl i32 %84, 24
  %240 = and i32 %239, 2080374784
  %241 = or i32 %240, %238
  %242 = insertvalue [1 x i32] poison, i32 %241, 0
  br i1 %36, label %243, label %312, !prof !15

243:                                              ; preds = %237
  %244 = icmp ult i32 %241, 2013265920
  br i1 %244, label %302, label %245

245:                                              ; preds = %243
  %246 = and i32 %84, 120
  %247 = icmp eq i32 %246, 120
  br i1 %247, label %248, label %306

248:                                              ; preds = %245
  %249 = load ptr, ptr @mem_map, align 4
  %250 = load i32, ptr @__pv_phys_pfn_offset, align 4
  %251 = sub i32 %238, %250
  %252 = getelementptr %struct.page, ptr %249, i32 %251
  %253 = getelementptr %struct.page, ptr %249, i32 %251, i32 1
  %254 = load volatile i32, ptr %253, align 4
  %255 = and i32 %254, 1
  %256 = icmp eq i32 %255, 0
  br i1 %256, label %259, label %257, !prof !15

257:                                              ; preds = %248
  %258 = add i32 %254, -1
  br label %261

259:                                              ; preds = %248
  %260 = ptrtoint ptr %252 to i32
  br label %261

261:                                              ; preds = %259, %257
  %262 = phi i32 [ %258, %257 ], [ %260, %259 ]
  %263 = inttoptr i32 %262 to ptr
  %264 = load volatile i32, ptr %263, align 4
  %265 = and i32 %264, 1
  %266 = icmp eq i32 %265, 0
  br i1 %266, label %267, label %268, !prof !28

267:                                              ; preds = %261
  call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/swapops.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 258, 0\0A.popsection", ""() #17, !srcloc !32
  unreachable

268:                                              ; preds = %261
  %269 = load volatile i32, ptr %253, align 4
  %270 = and i32 %269, 1
  %271 = icmp eq i32 %270, 0
  br i1 %271, label %274, label %272, !prof !15

272:                                              ; preds = %268
  %273 = add i32 %269, -1
  br label %276

274:                                              ; preds = %268
  %275 = ptrtoint ptr %252 to i32
  br label %276

276:                                              ; preds = %274, %272
  %277 = phi i32 [ %273, %272 ], [ %275, %274 ]
  %278 = inttoptr i32 %277 to ptr
  %279 = getelementptr inbounds %struct.anon.71, ptr %278, i32 0, i32 2
  %280 = load ptr, ptr %279, align 4
  %281 = ptrtoint ptr %280 to i32
  %282 = and i32 %281, 1
  %283 = icmp eq i32 %282, 0
  br i1 %283, label %284, label %299

284:                                              ; preds = %276
  %285 = load volatile i32, ptr %253, align 4
  %286 = and i32 %285, 1
  %287 = icmp eq i32 %286, 0
  br i1 %287, label %290, label %288, !prof !15

288:                                              ; preds = %284
  %289 = add i32 %285, -1
  br label %292

290:                                              ; preds = %284
  %291 = ptrtoint ptr %252 to i32
  br label %292

292:                                              ; preds = %290, %288
  %293 = phi i32 [ %289, %288 ], [ %291, %290 ]
  %294 = inttoptr i32 %293 to ptr
  %295 = load volatile i32, ptr %294, align 4
  %296 = and i32 %295, 524288
  %297 = icmp eq i32 %296, 0
  %298 = select i1 %297, i32 0, i32 3
  br label %299

299:                                              ; preds = %292, %276
  %300 = phi i32 [ %298, %292 ], [ 1, %276 ]
  %301 = getelementptr [4 x i32], ptr %8, i32 0, i32 %300
  br label %302

302:                                              ; preds = %299, %243
  %303 = phi ptr [ %301, %299 ], [ %42, %243 ]
  %304 = load i32, ptr %303, align 4
  %305 = add i32 %304, -1
  store i32 %305, ptr %303, align 4
  br label %306

306:                                              ; preds = %302, %245
  %307 = call i32 @free_swap_and_cache([1 x i32] %242) #17
  %308 = icmp eq i32 %307, 0
  br i1 %308, label %309, label %310, !prof !28

309:                                              ; preds = %306
  call fastcc void @print_bad_pte(ptr noundef %1, i32 noundef %83, i32 noundef %84, ptr noundef null) #17
  br label %310

310:                                              ; preds = %309, %306
  %311 = load ptr, ptr getelementptr inbounds (%struct.processor, ptr @processor, i32 0, i32 9), align 4
  call void %311(ptr noundef %81, i32 noundef 0, i32 noundef 0) #17
  br label %312

312:                                              ; preds = %310, %237, %234, %137, %134, %80
  %313 = phi i32 [ %82, %237 ], [ %181, %234 ], [ %82, %137 ], [ %82, %134 ], [ %82, %80 ], [ %82, %310 ]
  %314 = getelementptr i32, ptr %81, i32 1
  %315 = add i32 %83, 4096
  %316 = icmp eq i32 %315, %52
  br i1 %316, label %317, label %80

317:                                              ; preds = %312, %86
  %318 = phi i32 [ %313, %312 ], [ %82, %86 ]
  %319 = phi i32 [ %52, %312 ], [ %83, %86 ]
  call fastcc void @add_mm_rss_vec(ptr noundef %60, ptr noundef nonnull %8) #17
  %320 = icmp eq i32 %318, 0
  br i1 %320, label %357, label %321

321:                                              ; preds = %317, %236
  %322 = phi i32 [ %144, %236 ], [ %319, %317 ]
  %323 = load i16, ptr %12, align 4
  %324 = and i16 %323, 124
  %325 = icmp eq i16 %324, 0
  br i1 %325, label %352, label %326

326:                                              ; preds = %321
  %327 = and i16 %323, 3
  %328 = icmp eq i16 %327, 0
  br i1 %328, label %331, label %329

329:                                              ; preds = %326
  %330 = load ptr, ptr %0, align 4
  call void @flush_tlb_mm(ptr noundef %330) #17
  br label %344

331:                                              ; preds = %326
  %332 = load i32, ptr %41, align 4
  %333 = icmp eq i32 %332, 0
  br i1 %333, label %344, label %334

334:                                              ; preds = %331
  call void @llvm.lifetime.start.p0(i64 92, ptr nonnull %7) #17
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(92) %7, i8 0, i64 92, i1 false) #17
  %335 = load ptr, ptr %0, align 4
  store ptr %335, ptr %43, align 4
  %336 = lshr i16 %323, 5
  %337 = and i16 %336, 4
  %338 = zext i16 %337 to i32
  %339 = and i16 %323, 256
  %340 = zext i16 %339 to i32
  %341 = shl nuw nsw i32 %340, 14
  %342 = or i32 %341, %338
  store i32 %342, ptr %44, align 4
  %343 = load i32, ptr %40, align 4
  call void @flush_tlb_range(ptr noundef nonnull %7, i32 noundef %343, i32 noundef %332) #17
  call void @llvm.lifetime.end.p0(i64 92, ptr nonnull %7) #17
  br label %344

344:                                              ; preds = %334, %331, %329
  %345 = load i16, ptr %12, align 4
  %346 = and i16 %345, 1
  %347 = icmp eq i16 %346, 0
  %348 = select i1 %347, i32 -1090519040, i32 -1
  %349 = xor i1 %347, true
  %350 = sext i1 %349 to i32
  store i32 %348, ptr %40, align 4
  store i32 %350, ptr %41, align 4
  %351 = and i16 %345, -125
  store i16 %351, ptr %12, align 4
  br label %352

352:                                              ; preds = %344, %321
  call void asm sideeffect "dmb ish", "~{memory}"() #17, !srcloc !22
  %353 = load i16, ptr %68, align 4
  %354 = add i16 %353, 1
  store i16 %354, ptr %68, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #17, !srcloc !23
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #17, !srcloc !24
  call void asm sideeffect "", "~{memory}"() #17, !srcloc !25
  call void @kunmap_local_indexed(ptr noundef %79) #17
  call void asm sideeffect "", "~{memory}"() #17, !srcloc !37
  %355 = load i32, ptr %73, align 8
  %356 = add i32 %355, -1
  store i32 %356, ptr %73, align 8
  call void asm sideeffect "", "~{memory}"() #17, !srcloc !38
  call void @tlb_flush_mmu(ptr noundef %0) #17
  br label %362

357:                                              ; preds = %317
  call void asm sideeffect "dmb ish", "~{memory}"() #17, !srcloc !22
  %358 = load i16, ptr %68, align 4
  %359 = add i16 %358, 1
  store i16 %359, ptr %68, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #17, !srcloc !23
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #17, !srcloc !24
  call void asm sideeffect "", "~{memory}"() #17, !srcloc !25
  call void @kunmap_local_indexed(ptr noundef %79) #17
  call void asm sideeffect "", "~{memory}"() #17, !srcloc !37
  %360 = load i32, ptr %73, align 8
  %361 = add i32 %360, -1
  store i32 %361, ptr %73, align 8
  call void asm sideeffect "", "~{memory}"() #17, !srcloc !38
  br label %362

362:                                              ; preds = %357, %352
  %363 = phi i32 [ %319, %357 ], [ %322, %352 ]
  %364 = icmp eq i32 %363, %52
  br i1 %364, label %368, label %365

365:                                              ; preds = %362
  %366 = call i32 @__cond_resched() #17
  %367 = load i32, ptr %46, align 4
  br label %61

368:                                              ; preds = %362
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %8) #17
  br label %369

369:                                              ; preds = %368, %58, %45
  %370 = call i32 @__cond_resched() #17
  %371 = call i32 @__cond_resched() #17
  %372 = getelementptr [2 x i32], ptr %46, i32 1
  %373 = icmp eq i32 %52, %3
  br i1 %373, label %374, label %45

374:                                              ; preds = %369
  %375 = load i16, ptr %12, align 4
  %376 = and i16 %375, 1
  %377 = icmp ne i16 %376, 0
  %378 = and i16 %375, 124
  %379 = icmp eq i16 %378, 0
  %380 = or i1 %377, %379
  br i1 %380, label %409, label %381

381:                                              ; preds = %374
  %382 = and i16 %375, 3
  %383 = icmp eq i16 %382, 0
  br i1 %383, label %386, label %384

384:                                              ; preds = %381
  %385 = load ptr, ptr %0, align 4
  call void @flush_tlb_mm(ptr noundef %385) #17
  br label %401

386:                                              ; preds = %381
  %387 = load i32, ptr %41, align 4
  %388 = icmp eq i32 %387, 0
  br i1 %388, label %401, label %389

389:                                              ; preds = %386
  call void @llvm.lifetime.start.p0(i64 92, ptr nonnull %6) #17
  %390 = getelementptr inbounds %struct.vm_area_struct, ptr %6, i32 0, i32 6
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(92) %6, i8 0, i64 92, i1 false) #17
  %391 = load ptr, ptr %0, align 4
  store ptr %391, ptr %390, align 4
  %392 = getelementptr inbounds %struct.vm_area_struct, ptr %6, i32 0, i32 8
  %393 = lshr i16 %375, 5
  %394 = and i16 %393, 4
  %395 = zext i16 %394 to i32
  %396 = and i16 %375, 256
  %397 = zext i16 %396 to i32
  %398 = shl nuw nsw i32 %397, 14
  %399 = or i32 %398, %395
  store i32 %399, ptr %392, align 4
  %400 = load i32, ptr %40, align 4
  call void @flush_tlb_range(ptr noundef nonnull %6, i32 noundef %400, i32 noundef %387) #17
  call void @llvm.lifetime.end.p0(i64 92, ptr nonnull %6) #17
  br label %401

401:                                              ; preds = %389, %386, %384
  %402 = load i16, ptr %12, align 4
  %403 = and i16 %402, 1
  %404 = icmp eq i16 %403, 0
  %405 = select i1 %404, i32 -1090519040, i32 -1
  %406 = xor i1 %404, true
  %407 = sext i1 %406 to i32
  store i32 %405, ptr %40, align 4
  store i32 %407, ptr %41, align 4
  %408 = and i16 %402, -125
  store i16 %408, ptr %12, align 4
  br label %409

409:                                              ; preds = %401, %374
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @unmap_vmas(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #2 {
  %5 = icmp eq ptr %1, null
  br i1 %5, label %30, label %6

6:                                                ; preds = %26, %4
  %7 = phi ptr [ %28, %26 ], [ %1, %4 ]
  %8 = load i32, ptr %7, align 4
  %9 = icmp ult i32 %8, %3
  br i1 %9, label %10, label %30

10:                                               ; preds = %6
  %11 = tail call i32 @llvm.umax.i32(i32 %8, i32 %2) #17
  %12 = getelementptr inbounds %struct.vm_area_struct, ptr %7, i32 0, i32 1
  %13 = load i32, ptr %12, align 4
  %14 = icmp ult i32 %11, %13
  br i1 %14, label %15, label %26

15:                                               ; preds = %10
  %16 = tail call i32 @llvm.umin.i32(i32 %13, i32 %3) #17
  %17 = icmp ugt i32 %16, %8
  br i1 %17, label %18, label %26

18:                                               ; preds = %15
  %19 = getelementptr inbounds %struct.vm_area_struct, ptr %7, i32 0, i32 14
  %20 = load ptr, ptr %19, align 4
  %21 = icmp eq ptr %20, null
  br i1 %21, label %23, label %22

22:                                               ; preds = %18
  tail call void @uprobe_munmap(ptr noundef nonnull %7, i32 noundef %11, i32 noundef %16) #17
  br label %23

23:                                               ; preds = %22, %18
  %24 = icmp eq i32 %11, %16
  br i1 %24, label %26, label %25

25:                                               ; preds = %23
  tail call void @unmap_page_range(ptr noundef %0, ptr noundef nonnull %7, i32 noundef %11, i32 noundef %16, ptr noundef null) #17
  br label %26

26:                                               ; preds = %25, %23, %15, %10
  %27 = getelementptr inbounds %struct.vm_area_struct, ptr %7, i32 0, i32 2
  %28 = load ptr, ptr %27, align 4
  %29 = icmp eq ptr %28, null
  br i1 %29, label %30, label %6

30:                                               ; preds = %26, %6, %4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @zap_page_range(ptr noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #2 {
  %4 = alloca %struct.mmu_gather, align 4
  call void @llvm.lifetime.start.p0(i64 68, ptr nonnull %4) #17
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(68) %4, i8 0, i32 68, i1 false), !annotation !41
  tail call void @lru_add_drain() #17
  %5 = add i32 %2, %1
  %6 = getelementptr inbounds %struct.vm_area_struct, ptr %0, i32 0, i32 6
  %7 = load ptr, ptr %6, align 4
  call void @tlb_gather_mmu(ptr noundef nonnull %4, ptr noundef %7) #17
  %8 = load ptr, ptr %6, align 4
  %9 = getelementptr inbounds %struct.anon.7, ptr %8, i32 0, i32 40
  %10 = load volatile i32, ptr %9, align 4
  %11 = call i32 @llvm.smax.i32(i32 %10, i32 0) #17
  %12 = getelementptr %struct.anon.7, ptr %8, i32 0, i32 40, i32 0, i32 1
  %13 = load volatile i32, ptr %12, align 4
  %14 = call i32 @llvm.smax.i32(i32 %13, i32 0) #17
  %15 = add nuw i32 %14, %11
  %16 = getelementptr %struct.anon.7, ptr %8, i32 0, i32 40, i32 0, i32 3
  %17 = load volatile i32, ptr %16, align 4
  %18 = call i32 @llvm.smax.i32(i32 %17, i32 0) #17
  %19 = add i32 %15, %18
  %20 = getelementptr inbounds %struct.anon.7, ptr %8, i32 0, i32 17
  %21 = load i32, ptr %20, align 8
  %22 = icmp ult i32 %21, %19
  br i1 %22, label %23, label %24

23:                                               ; preds = %3
  store i32 %19, ptr %20, align 8
  br label %24

24:                                               ; preds = %23, %3
  %25 = icmp eq ptr %0, null
  br i1 %25, label %50, label %26

26:                                               ; preds = %46, %24
  %27 = phi ptr [ %48, %46 ], [ %0, %24 ]
  %28 = load i32, ptr %27, align 4
  %29 = icmp ult i32 %28, %5
  br i1 %29, label %30, label %50

30:                                               ; preds = %26
  %31 = call i32 @llvm.umax.i32(i32 %28, i32 %1) #17
  %32 = getelementptr inbounds %struct.vm_area_struct, ptr %27, i32 0, i32 1
  %33 = load i32, ptr %32, align 4
  %34 = icmp ult i32 %31, %33
  br i1 %34, label %35, label %46

35:                                               ; preds = %30
  %36 = call i32 @llvm.umin.i32(i32 %33, i32 %5) #17
  %37 = icmp ugt i32 %36, %28
  br i1 %37, label %38, label %46

38:                                               ; preds = %35
  %39 = getelementptr inbounds %struct.vm_area_struct, ptr %27, i32 0, i32 14
  %40 = load ptr, ptr %39, align 4
  %41 = icmp eq ptr %40, null
  br i1 %41, label %43, label %42

42:                                               ; preds = %38
  call void @uprobe_munmap(ptr noundef nonnull %27, i32 noundef %31, i32 noundef %36) #17
  br label %43

43:                                               ; preds = %42, %38
  %44 = icmp eq i32 %31, %36
  br i1 %44, label %46, label %45

45:                                               ; preds = %43
  call void @unmap_page_range(ptr noundef nonnull %4, ptr noundef nonnull %27, i32 noundef %31, i32 noundef %36, ptr noundef null) #17
  br label %46

46:                                               ; preds = %45, %43, %35, %30
  %47 = getelementptr inbounds %struct.vm_area_struct, ptr %27, i32 0, i32 2
  %48 = load ptr, ptr %47, align 4
  %49 = icmp eq ptr %48, null
  br i1 %49, label %50, label %26

50:                                               ; preds = %46, %26, %24
  call void @tlb_finish_mmu(ptr noundef nonnull %4) #17
  call void @llvm.lifetime.end.p0(i64 68, ptr nonnull %4) #17
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @lru_add_drain() local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @tlb_gather_mmu(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @tlb_finish_mmu(ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @zap_vma_ptes(ptr noundef %0, i32 noundef %1, i32 noundef %2) #2 {
  %4 = load i32, ptr %0, align 4
  %5 = icmp ugt i32 %4, %1
  br i1 %5, label %17, label %6

6:                                                ; preds = %3
  %7 = add i32 %2, %1
  %8 = getelementptr inbounds %struct.vm_area_struct, ptr %0, i32 0, i32 1
  %9 = load i32, ptr %8, align 4
  %10 = icmp ugt i32 %7, %9
  br i1 %10, label %17, label %11

11:                                               ; preds = %6
  %12 = getelementptr inbounds %struct.vm_area_struct, ptr %0, i32 0, i32 8
  %13 = load i32, ptr %12, align 4
  %14 = and i32 %13, 1024
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %17, label %16

16:                                               ; preds = %11
  tail call fastcc void @zap_page_range_single(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef null)
  br label %17

17:                                               ; preds = %16, %11, %6, %3
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @zap_page_range_single(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef %3) unnamed_addr #2 {
  %5 = alloca %struct.mmu_gather, align 4
  call void @llvm.lifetime.start.p0(i64 68, ptr nonnull %5) #17
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(68) %5, i8 0, i32 68, i1 false), !annotation !41
  tail call void @lru_add_drain() #17
  %6 = add i32 %2, %1
  %7 = getelementptr inbounds %struct.vm_area_struct, ptr %0, i32 0, i32 6
  %8 = load ptr, ptr %7, align 4
  call void @tlb_gather_mmu(ptr noundef nonnull %5, ptr noundef %8) #17
  %9 = load ptr, ptr %7, align 4
  %10 = getelementptr inbounds %struct.anon.7, ptr %9, i32 0, i32 40
  %11 = load volatile i32, ptr %10, align 4
  %12 = call i32 @llvm.smax.i32(i32 %11, i32 0) #17
  %13 = getelementptr %struct.anon.7, ptr %9, i32 0, i32 40, i32 0, i32 1
  %14 = load volatile i32, ptr %13, align 4
  %15 = call i32 @llvm.smax.i32(i32 %14, i32 0) #17
  %16 = add nuw i32 %15, %12
  %17 = getelementptr %struct.anon.7, ptr %9, i32 0, i32 40, i32 0, i32 3
  %18 = load volatile i32, ptr %17, align 4
  %19 = call i32 @llvm.smax.i32(i32 %18, i32 0) #17
  %20 = add i32 %16, %19
  %21 = getelementptr inbounds %struct.anon.7, ptr %9, i32 0, i32 17
  %22 = load i32, ptr %21, align 8
  %23 = icmp ult i32 %22, %20
  br i1 %23, label %24, label %25

24:                                               ; preds = %4
  store i32 %20, ptr %21, align 8
  br label %25

25:                                               ; preds = %24, %4
  %26 = load i32, ptr %0, align 4
  %27 = call i32 @llvm.umax.i32(i32 %26, i32 %1) #17
  %28 = getelementptr inbounds %struct.vm_area_struct, ptr %0, i32 0, i32 1
  %29 = load i32, ptr %28, align 4
  %30 = icmp ult i32 %27, %29
  br i1 %30, label %31, label %42

31:                                               ; preds = %25
  %32 = call i32 @llvm.umin.i32(i32 %29, i32 %6) #17
  %33 = icmp ugt i32 %32, %26
  br i1 %33, label %34, label %42

34:                                               ; preds = %31
  %35 = getelementptr inbounds %struct.vm_area_struct, ptr %0, i32 0, i32 14
  %36 = load ptr, ptr %35, align 4
  %37 = icmp eq ptr %36, null
  br i1 %37, label %39, label %38

38:                                               ; preds = %34
  call void @uprobe_munmap(ptr noundef %0, i32 noundef %27, i32 noundef %32) #17
  br label %39

39:                                               ; preds = %38, %34
  %40 = icmp eq i32 %27, %32
  br i1 %40, label %42, label %41

41:                                               ; preds = %39
  call void @unmap_page_range(ptr noundef nonnull %5, ptr noundef %0, i32 noundef %27, i32 noundef %32, ptr noundef %3) #17
  br label %42

42:                                               ; preds = %41, %39, %31, %25
  call void @tlb_finish_mmu(ptr noundef nonnull %5) #17
  call void @llvm.lifetime.end.p0(i64 68, ptr nonnull %5) #17
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @__get_locked_pte(ptr noundef %0, i32 noundef %1, ptr nocapture noundef writeonly %2) local_unnamed_addr #2 {
  %4 = getelementptr inbounds %struct.anon.7, ptr %0, i32 0, i32 8
  %5 = load ptr, ptr %4, align 4
  %6 = lshr i32 %1, 21
  %7 = getelementptr [2 x i32], ptr %5, i32 %6
  %8 = icmp eq ptr %7, null
  br i1 %8, label %35, label %9

9:                                                ; preds = %3
  %10 = load i32, ptr %7, align 4
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %17, !prof !28

12:                                               ; preds = %9
  %13 = tail call i32 @__pte_alloc(ptr noundef %0, ptr noundef nonnull %7)
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %35

15:                                               ; preds = %12
  %16 = load i32, ptr %7, align 4
  br label %17

17:                                               ; preds = %15, %9
  %18 = phi i32 [ %16, %15 ], [ %10, %9 ]
  %19 = load ptr, ptr @mem_map, align 4
  %20 = lshr i32 %18, 12
  %21 = load i32, ptr @__pv_phys_pfn_offset, align 4
  %22 = sub i32 %20, %21
  %23 = getelementptr %struct.page, ptr %19, i32 %22, i32 1, i32 0, i32 3
  %24 = getelementptr %struct.page, ptr %19, i32 %22
  %25 = load i32, ptr @pgprot_kernel, align 4
  %26 = or i32 %25, 512
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !30
  %27 = tail call ptr @llvm.thread.pointer() #17
  %28 = getelementptr inbounds %struct.task_struct, ptr %27, i32 0, i32 149
  %29 = load i32, ptr %28, align 8
  %30 = add i32 %29, 1
  store i32 %30, ptr %28, align 8
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !31
  %31 = tail call ptr @__kmap_local_page_prot(ptr noundef %24, i32 noundef %26) #17
  %32 = lshr i32 %1, 12
  %33 = and i32 %32, 511
  %34 = getelementptr i32, ptr %31, i32 %33
  store ptr %23, ptr %2, align 4
  tail call void @_raw_spin_lock(ptr noundef %23) #17
  br label %35

35:                                               ; preds = %17, %12, %3
  %36 = phi ptr [ null, %3 ], [ %34, %17 ], [ null, %12 ]
  ret ptr %36
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc ptr @kmap_atomic(ptr noundef %0) unnamed_addr #4 {
  %2 = load i32, ptr @pgprot_kernel, align 4
  %3 = or i32 %2, 512
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !30
  %4 = tail call ptr @llvm.thread.pointer() #17
  %5 = getelementptr inbounds %struct.task_struct, ptr %4, i32 0, i32 149
  %6 = load i32, ptr %5, align 8
  %7 = add i32 %6, 1
  store i32 %7, ptr %5, align 8
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !31
  %8 = tail call ptr @__kmap_local_page_prot(ptr noundef %0, i32 noundef %3) #17
  ret ptr %8
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @vm_insert_pages(ptr nocapture noundef %0, i32 noundef %1, ptr nocapture noundef readonly %2, ptr nocapture noundef %3) #2 {
  %5 = load i32, ptr %0, align 4
  %6 = icmp ugt i32 %5, %1
  br i1 %6, label %185, label %7

7:                                                ; preds = %4
  %8 = load i32, ptr %3, align 4
  %9 = shl i32 %8, 12
  %10 = add i32 %1, -1
  %11 = add i32 %10, %9
  %12 = getelementptr inbounds %struct.vm_area_struct, ptr %0, i32 0, i32 1
  %13 = load i32, ptr %12, align 4
  %14 = icmp ult i32 %11, %13
  br i1 %14, label %15, label %185

15:                                               ; preds = %7
  %16 = getelementptr inbounds %struct.vm_area_struct, ptr %0, i32 0, i32 8
  %17 = load i32, ptr %16, align 4
  %18 = and i32 %17, 268435456
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %43

20:                                               ; preds = %15
  %21 = getelementptr inbounds %struct.vm_area_struct, ptr %0, i32 0, i32 6
  %22 = load ptr, ptr %21, align 4
  %23 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_mmap_lock_start_locking, i32 0, i32 1), align 4
  %24 = icmp sgt i32 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %20
  tail call void @__mmap_lock_do_trace_start_locking(ptr noundef %22, i1 noundef zeroext false) #17
  br label %26

26:                                               ; preds = %25, %20
  %27 = getelementptr inbounds %struct.anon.7, ptr %22, i32 0, i32 15
  %28 = tail call i32 @down_read_trylock(ptr noundef %27) #17
  %29 = icmp ne i32 %28, 0
  %30 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_mmap_lock_acquire_returned, i32 0, i32 1), align 4
  %31 = icmp sgt i32 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %26
  tail call void @__mmap_lock_do_trace_acquire_returned(ptr noundef %22, i1 noundef zeroext false, i1 noundef zeroext %29) #17
  br label %33

33:                                               ; preds = %32, %26
  br i1 %29, label %34, label %35, !prof !28

34:                                               ; preds = %33
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22mm/memory.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1893, 0\0A.popsection", ""() #17, !srcloc !42
  unreachable

35:                                               ; preds = %33
  %36 = load i32, ptr %16, align 4
  %37 = and i32 %36, 1024
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %40, label %39, !prof !15

39:                                               ; preds = %35
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22mm/memory.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1894, 0\0A.popsection", ""() #17, !srcloc !43
  unreachable

40:                                               ; preds = %35
  %41 = or i32 %36, 268435456
  store i32 %41, ptr %16, align 4
  %42 = load i32, ptr %3, align 4
  br label %43

43:                                               ; preds = %40, %15
  %44 = phi i32 [ %42, %40 ], [ %8, %15 ]
  %45 = getelementptr inbounds %struct.vm_area_struct, ptr %0, i32 0, i32 7
  %46 = load i32, ptr %45, align 4
  %47 = getelementptr inbounds %struct.vm_area_struct, ptr %0, i32 0, i32 6
  %48 = load ptr, ptr %47, align 4
  %49 = getelementptr inbounds %struct.anon.7, ptr %48, i32 0, i32 8
  br label %50

50:                                               ; preds = %177, %43
  %51 = phi i32 [ %44, %43 ], [ %178, %177 ]
  %52 = phi i32 [ 0, %43 ], [ %179, %177 ]
  %53 = phi i32 [ %1, %43 ], [ %180, %177 ]
  %54 = load ptr, ptr %49, align 4
  %55 = lshr i32 %53, 21
  %56 = getelementptr [2 x i32], ptr %54, i32 %55
  %57 = icmp eq ptr %56, null
  br i1 %57, label %182, label %58

58:                                               ; preds = %50
  %59 = lshr i32 %53, 12
  %60 = and i32 %59, 511
  %61 = sub nuw nsw i32 512, %60
  %62 = tail call i32 @llvm.umin.i32(i32 %51, i32 %61) #17
  %63 = load i32, ptr %56, align 4
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %65, label %68, !prof !28

65:                                               ; preds = %58
  %66 = tail call i32 @__pte_alloc(ptr noundef %48, ptr noundef nonnull %56) #17
  %67 = icmp eq i32 %66, 0
  br i1 %67, label %68, label %182

68:                                               ; preds = %65, %58
  %69 = icmp eq i32 %62, 0
  br i1 %69, label %177, label %70

70:                                               ; preds = %167, %68
  %71 = phi i32 [ %169, %167 ], [ %53, %68 ]
  %72 = phi i32 [ %168, %167 ], [ %52, %68 ]
  %73 = phi i32 [ %175, %167 ], [ %51, %68 ]
  %74 = phi i32 [ %174, %167 ], [ %62, %68 ]
  %75 = tail call i32 @llvm.smin.i32(i32 %74, i32 8) #17
  %76 = load ptr, ptr @mem_map, align 4
  %77 = load i32, ptr %56, align 4
  %78 = lshr i32 %77, 12
  %79 = load i32, ptr @__pv_phys_pfn_offset, align 4
  %80 = sub i32 %78, %79
  %81 = getelementptr %struct.page, ptr %76, i32 %80, i32 1, i32 0, i32 3
  %82 = getelementptr %struct.page, ptr %76, i32 %80
  %83 = load i32, ptr @pgprot_kernel, align 4
  %84 = or i32 %83, 512
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !30
  %85 = tail call ptr @llvm.thread.pointer() #17
  %86 = getelementptr inbounds %struct.task_struct, ptr %85, i32 0, i32 149
  %87 = load i32, ptr %86, align 8
  %88 = add i32 %87, 1
  store i32 %88, ptr %86, align 8
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !31
  %89 = tail call ptr @__kmap_local_page_prot(ptr noundef %82, i32 noundef %84) #17
  %90 = lshr i32 %71, 12
  %91 = and i32 %90, 511
  %92 = getelementptr i32, ptr %89, i32 %91
  tail call void @_raw_spin_lock(ptr noundef %81) #17
  %93 = icmp sgt i32 %74, 0
  br i1 %93, label %94, label %167

94:                                               ; preds = %70
  %95 = tail call i32 @llvm.smax.i32(i32 %75, i32 1) #17
  br label %96

96:                                               ; preds = %161, %94
  %97 = phi i32 [ %162, %161 ], [ %71, %94 ]
  %98 = phi ptr [ %164, %161 ], [ %92, %94 ]
  %99 = phi i32 [ %165, %161 ], [ 0, %94 ]
  %100 = phi i32 [ %163, %161 ], [ %72, %94 ]
  %101 = getelementptr ptr, ptr %2, i32 %100
  %102 = load ptr, ptr %101, align 4
  %103 = getelementptr inbounds %struct.page, ptr %102, i32 0, i32 1
  %104 = load volatile i32, ptr %103, align 4
  %105 = and i32 %104, 1
  %106 = icmp eq i32 %105, 0
  br i1 %106, label %109, label %107, !prof !15

107:                                              ; preds = %96
  %108 = add i32 %104, -1
  br label %111

109:                                              ; preds = %96
  %110 = ptrtoint ptr %102 to i32
  br label %111

111:                                              ; preds = %109, %107
  %112 = phi i32 [ %108, %107 ], [ %110, %109 ]
  %113 = inttoptr i32 %112 to ptr
  %114 = getelementptr inbounds %struct.page, ptr %113, i32 0, i32 3
  %115 = load volatile i32, ptr %114, align 4
  %116 = icmp eq i32 %115, 0
  br i1 %116, label %154, label %117

117:                                              ; preds = %111
  %118 = load volatile i32, ptr %103, align 4
  %119 = and i32 %118, 1
  %120 = icmp eq i32 %119, 0
  br i1 %120, label %123, label %121, !prof !15

121:                                              ; preds = %117
  %122 = add i32 %118, -1
  br label %125

123:                                              ; preds = %117
  %124 = ptrtoint ptr %102 to i32
  br label %125

125:                                              ; preds = %123, %121
  %126 = phi i32 [ %122, %121 ], [ %124, %123 ]
  %127 = inttoptr i32 %126 to ptr
  %128 = getelementptr inbounds %struct.anon.71, ptr %127, i32 0, i32 2
  %129 = load ptr, ptr %128, align 4
  %130 = ptrtoint ptr %129 to i32
  %131 = and i32 %130, 1
  %132 = icmp eq i32 %131, 0
  br i1 %132, label %133, label %154

133:                                              ; preds = %125
  %134 = load volatile i32, ptr %103, align 4
  %135 = and i32 %134, 1
  %136 = icmp eq i32 %135, 0
  br i1 %136, label %139, label %137, !prof !15

137:                                              ; preds = %133
  %138 = add i32 %134, -1
  br label %141

139:                                              ; preds = %133
  %140 = ptrtoint ptr %102 to i32
  br label %141

141:                                              ; preds = %139, %137
  %142 = phi i32 [ %138, %137 ], [ %140, %139 ]
  %143 = inttoptr i32 %142 to ptr
  %144 = load volatile i32, ptr %143, align 4
  %145 = and i32 %144, 512
  %146 = icmp eq i32 %145, 0
  br i1 %146, label %147, label %154

147:                                              ; preds = %141
  %148 = getelementptr inbounds %struct.page, ptr %102, i32 0, i32 2
  %149 = load i32, ptr %148, align 4
  %150 = icmp sgt i32 %149, -129
  br i1 %150, label %151, label %154

151:                                              ; preds = %147
  tail call void @flush_dcache_page(ptr noundef %102) #17
  %152 = tail call fastcc i32 @insert_page_into_pte_locked(ptr noundef %48, ptr noundef %98, i32 noundef %97, ptr noundef %102, i32 noundef %46) #17
  %153 = icmp eq i32 %152, 0
  br i1 %153, label %161, label %154, !prof !15

154:                                              ; preds = %151, %147, %141, %125, %111
  %155 = phi i32 [ %152, %151 ], [ -22, %111 ], [ -22, %147 ], [ -22, %141 ], [ -22, %125 ]
  tail call void asm sideeffect "dmb ish", "~{memory}"() #17, !srcloc !22
  %156 = load i16, ptr %81, align 4
  %157 = add i16 %156, 1
  store i16 %157, ptr %81, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #17, !srcloc !23
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #17, !srcloc !24
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !25
  tail call void @kunmap_local_indexed(ptr noundef %92) #17
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !37
  %158 = load i32, ptr %86, align 8
  %159 = add i32 %158, -1
  store i32 %159, ptr %86, align 8
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !38
  %160 = sub i32 %73, %99
  br label %182

161:                                              ; preds = %151
  %162 = add i32 %97, 4096
  %163 = add i32 %100, 1
  %164 = getelementptr i32, ptr %98, i32 1
  %165 = add nuw nsw i32 %99, 1
  %166 = icmp eq i32 %165, %95
  br i1 %166, label %167, label %96

167:                                              ; preds = %161, %70
  %168 = phi i32 [ %72, %70 ], [ %163, %161 ]
  %169 = phi i32 [ %71, %70 ], [ %162, %161 ]
  tail call void asm sideeffect "dmb ish", "~{memory}"() #17, !srcloc !22
  %170 = load i16, ptr %81, align 4
  %171 = add i16 %170, 1
  store i16 %171, ptr %81, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #17, !srcloc !23
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #17, !srcloc !24
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !25
  tail call void @kunmap_local_indexed(ptr noundef %92) #17
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !37
  %172 = load i32, ptr %86, align 8
  %173 = add i32 %172, -1
  store i32 %173, ptr %86, align 8
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !38
  %174 = sub i32 %74, %75
  %175 = sub i32 %73, %75
  %176 = icmp eq i32 %174, 0
  br i1 %176, label %177, label %70

177:                                              ; preds = %167, %68
  %178 = phi i32 [ %51, %68 ], [ %175, %167 ]
  %179 = phi i32 [ %52, %68 ], [ %168, %167 ]
  %180 = phi i32 [ %53, %68 ], [ %169, %167 ]
  %181 = icmp eq i32 %178, 0
  br i1 %181, label %182, label %50

182:                                              ; preds = %177, %154, %65, %50
  %183 = phi i32 [ %155, %154 ], [ -12, %65 ], [ -14, %50 ], [ 0, %177 ]
  %184 = phi i32 [ %160, %154 ], [ %51, %65 ], [ %51, %50 ], [ 0, %177 ]
  store i32 %184, ptr %3, align 4
  br label %185

185:                                              ; preds = %182, %7, %4
  %186 = phi i32 [ %183, %182 ], [ -14, %7 ], [ -14, %4 ]
  ret i32 %186
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @vm_insert_page(ptr nocapture noundef %0, i32 noundef %1, ptr noundef %2) #2 {
  %4 = load i32, ptr %0, align 4
  %5 = icmp ugt i32 %4, %1
  br i1 %5, label %56, label %6

6:                                                ; preds = %3
  %7 = getelementptr inbounds %struct.vm_area_struct, ptr %0, i32 0, i32 1
  %8 = load i32, ptr %7, align 4
  %9 = icmp ugt i32 %8, %1
  br i1 %9, label %10, label %56

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.page, ptr %2, i32 0, i32 1
  %12 = load volatile i32, ptr %11, align 4
  %13 = and i32 %12, 1
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %17, label %15, !prof !15

15:                                               ; preds = %10
  %16 = add i32 %12, -1
  br label %19

17:                                               ; preds = %10
  %18 = ptrtoint ptr %2 to i32
  br label %19

19:                                               ; preds = %17, %15
  %20 = phi i32 [ %16, %15 ], [ %18, %17 ]
  %21 = inttoptr i32 %20 to ptr
  %22 = getelementptr inbounds %struct.page, ptr %21, i32 0, i32 3
  %23 = load volatile i32, ptr %22, align 4
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %56, label %25

25:                                               ; preds = %19
  %26 = getelementptr inbounds %struct.vm_area_struct, ptr %0, i32 0, i32 8
  %27 = load i32, ptr %26, align 4
  %28 = and i32 %27, 268435456
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %30, label %52

30:                                               ; preds = %25
  %31 = getelementptr inbounds %struct.vm_area_struct, ptr %0, i32 0, i32 6
  %32 = load ptr, ptr %31, align 4
  %33 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_mmap_lock_start_locking, i32 0, i32 1), align 4
  %34 = icmp sgt i32 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %30
  tail call void @__mmap_lock_do_trace_start_locking(ptr noundef %32, i1 noundef zeroext false) #17
  br label %36

36:                                               ; preds = %35, %30
  %37 = getelementptr inbounds %struct.anon.7, ptr %32, i32 0, i32 15
  %38 = tail call i32 @down_read_trylock(ptr noundef %37) #17
  %39 = icmp ne i32 %38, 0
  %40 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_mmap_lock_acquire_returned, i32 0, i32 1), align 4
  %41 = icmp sgt i32 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %36
  tail call void @__mmap_lock_do_trace_acquire_returned(ptr noundef %32, i1 noundef zeroext false, i1 noundef zeroext %39) #17
  br label %43

43:                                               ; preds = %42, %36
  br i1 %39, label %44, label %45, !prof !28

44:                                               ; preds = %43
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22mm/memory.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1951, 0\0A.popsection", ""() #17, !srcloc !44
  unreachable

45:                                               ; preds = %43
  %46 = load i32, ptr %26, align 4
  %47 = and i32 %46, 1024
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %50, label %49, !prof !15

49:                                               ; preds = %45
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22mm/memory.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1952, 0\0A.popsection", ""() #17, !srcloc !45
  unreachable

50:                                               ; preds = %45
  %51 = or i32 %46, 268435456
  store i32 %51, ptr %26, align 4
  br label %52

52:                                               ; preds = %50, %25
  %53 = getelementptr inbounds %struct.vm_area_struct, ptr %0, i32 0, i32 7
  %54 = load i32, ptr %53, align 4
  %55 = tail call fastcc i32 @insert_page(ptr noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %54)
  br label %56

56:                                               ; preds = %52, %19, %6, %3
  %57 = phi i32 [ %55, %52 ], [ -14, %6 ], [ -14, %3 ], [ -22, %19 ]
  ret i32 %57
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @insert_page(ptr nocapture noundef readonly %0, i32 noundef %1, ptr noundef %2, i32 noundef %3) unnamed_addr #2 {
  %5 = getelementptr inbounds %struct.vm_area_struct, ptr %0, i32 0, i32 6
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.page, ptr %2, i32 0, i32 1
  %8 = load volatile i32, ptr %7, align 4
  %9 = and i32 %8, 1
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %13, label %11, !prof !15

11:                                               ; preds = %4
  %12 = add i32 %8, -1
  br label %15

13:                                               ; preds = %4
  %14 = ptrtoint ptr %2 to i32
  br label %15

15:                                               ; preds = %13, %11
  %16 = phi i32 [ %12, %11 ], [ %14, %13 ]
  %17 = inttoptr i32 %16 to ptr
  %18 = getelementptr inbounds %struct.anon.71, ptr %17, i32 0, i32 2
  %19 = load ptr, ptr %18, align 4
  %20 = ptrtoint ptr %19 to i32
  %21 = and i32 %20, 1
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %80

23:                                               ; preds = %15
  %24 = load volatile i32, ptr %7, align 4
  %25 = and i32 %24, 1
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %29, label %27, !prof !15

27:                                               ; preds = %23
  %28 = add i32 %24, -1
  br label %31

29:                                               ; preds = %23
  %30 = ptrtoint ptr %2 to i32
  br label %31

31:                                               ; preds = %29, %27
  %32 = phi i32 [ %28, %27 ], [ %30, %29 ]
  %33 = inttoptr i32 %32 to ptr
  %34 = load volatile i32, ptr %33, align 4
  %35 = and i32 %34, 512
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %37, label %80

37:                                               ; preds = %31
  %38 = getelementptr inbounds %struct.page, ptr %2, i32 0, i32 2
  %39 = load i32, ptr %38, align 4
  %40 = icmp sgt i32 %39, -129
  br i1 %40, label %41, label %80

41:                                               ; preds = %37
  tail call void @flush_dcache_page(ptr noundef %2) #17
  %42 = getelementptr inbounds %struct.anon.7, ptr %6, i32 0, i32 8
  %43 = load ptr, ptr %42, align 4
  %44 = lshr i32 %1, 21
  %45 = getelementptr [2 x i32], ptr %43, i32 %44
  %46 = icmp eq ptr %45, null
  br i1 %46, label %80, label %47

47:                                               ; preds = %41
  %48 = load i32, ptr %45, align 4
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %50, label %55, !prof !28

50:                                               ; preds = %47
  %51 = tail call i32 @__pte_alloc(ptr noundef %6, ptr noundef nonnull %45) #17
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %53, label %80

53:                                               ; preds = %50
  %54 = load i32, ptr %45, align 4
  br label %55

55:                                               ; preds = %53, %47
  %56 = phi i32 [ %54, %53 ], [ %48, %47 ]
  %57 = load ptr, ptr @mem_map, align 4
  %58 = lshr i32 %56, 12
  %59 = load i32, ptr @__pv_phys_pfn_offset, align 4
  %60 = sub i32 %58, %59
  %61 = getelementptr %struct.page, ptr %57, i32 %60, i32 1, i32 0, i32 3
  %62 = getelementptr %struct.page, ptr %57, i32 %60
  %63 = load i32, ptr @pgprot_kernel, align 4
  %64 = or i32 %63, 512
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !30
  %65 = tail call ptr @llvm.thread.pointer() #17
  %66 = getelementptr inbounds %struct.task_struct, ptr %65, i32 0, i32 149
  %67 = load i32, ptr %66, align 8
  %68 = add i32 %67, 1
  store i32 %68, ptr %66, align 8
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !31
  %69 = tail call ptr @__kmap_local_page_prot(ptr noundef %62, i32 noundef %64) #17
  %70 = lshr i32 %1, 12
  %71 = and i32 %70, 511
  %72 = getelementptr i32, ptr %69, i32 %71
  tail call void @_raw_spin_lock(ptr noundef %61) #17
  %73 = icmp eq ptr %72, null
  br i1 %73, label %80, label %74

74:                                               ; preds = %55
  %75 = tail call fastcc i32 @insert_page_into_pte_locked(ptr noundef %6, ptr noundef nonnull %72, i32 noundef %1, ptr noundef %2, i32 noundef %3)
  tail call void asm sideeffect "dmb ish", "~{memory}"() #17, !srcloc !22
  %76 = load i16, ptr %61, align 4
  %77 = add i16 %76, 1
  store i16 %77, ptr %61, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #17, !srcloc !23
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #17, !srcloc !24
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !25
  tail call void @kunmap_local_indexed(ptr noundef nonnull %72) #17
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !37
  %78 = load i32, ptr %66, align 8
  %79 = add i32 %78, -1
  store i32 %79, ptr %66, align 8
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !38
  br label %80

80:                                               ; preds = %74, %55, %50, %41, %37, %31, %15
  %81 = phi i32 [ %75, %74 ], [ -12, %55 ], [ -22, %37 ], [ -22, %31 ], [ -22, %15 ], [ -12, %41 ], [ -12, %50 ]
  ret i32 %81
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @vm_map_pages(ptr nocapture noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2) #2 {
  %4 = getelementptr inbounds %struct.vm_area_struct, ptr %0, i32 0, i32 13
  %5 = load i32, ptr %4, align 4
  %6 = getelementptr inbounds %struct.vm_area_struct, ptr %0, i32 0, i32 1
  %7 = load i32, ptr %6, align 4
  %8 = load i32, ptr %0, align 4
  %9 = sub i32 %7, %8
  %10 = lshr i32 %9, 12
  %11 = icmp uge i32 %5, %2
  %12 = sub i32 %2, %5
  %13 = icmp ugt i32 %10, %12
  %14 = select i1 %11, i1 true, i1 %13
  br i1 %14, label %31, label %15

15:                                               ; preds = %3
  %16 = icmp ult i32 %9, 4096
  br i1 %16, label %31, label %17

17:                                               ; preds = %15
  %18 = tail call i32 @llvm.umax.i32(i32 %10, i32 1) #17
  br label %19

19:                                               ; preds = %27, %17
  %20 = phi i32 [ %29, %27 ], [ 0, %17 ]
  %21 = phi i32 [ %28, %27 ], [ %8, %17 ]
  %22 = add i32 %20, %5
  %23 = getelementptr ptr, ptr %1, i32 %22
  %24 = load ptr, ptr %23, align 4
  %25 = tail call i32 @vm_insert_page(ptr noundef %0, i32 noundef %21, ptr noundef %24) #17
  %26 = icmp slt i32 %25, 0
  br i1 %26, label %31, label %27

27:                                               ; preds = %19
  %28 = add i32 %21, 4096
  %29 = add nuw nsw i32 %20, 1
  %30 = icmp eq i32 %29, %18
  br i1 %30, label %31, label %19

31:                                               ; preds = %27, %19, %15, %3
  %32 = phi i32 [ -6, %3 ], [ 0, %15 ], [ 0, %27 ], [ %25, %19 ]
  ret i32 %32
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @vm_map_pages_zero(ptr nocapture noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2) #2 {
  %4 = getelementptr inbounds %struct.vm_area_struct, ptr %0, i32 0, i32 1
  %5 = load i32, ptr %4, align 4
  %6 = load i32, ptr %0, align 4
  %7 = sub i32 %5, %6
  %8 = lshr i32 %7, 12
  %9 = icmp eq i32 %2, 0
  %10 = icmp ugt i32 %8, %2
  %11 = select i1 %9, i1 true, i1 %10
  br i1 %11, label %27, label %12

12:                                               ; preds = %3
  %13 = icmp ult i32 %7, 4096
  br i1 %13, label %27, label %14

14:                                               ; preds = %12
  %15 = tail call i32 @llvm.umax.i32(i32 %8, i32 1) #17
  br label %16

16:                                               ; preds = %23, %14
  %17 = phi i32 [ %25, %23 ], [ 0, %14 ]
  %18 = phi i32 [ %24, %23 ], [ %6, %14 ]
  %19 = getelementptr ptr, ptr %1, i32 %17
  %20 = load ptr, ptr %19, align 4
  %21 = tail call i32 @vm_insert_page(ptr noundef %0, i32 noundef %18, ptr noundef %20) #17
  %22 = icmp slt i32 %21, 0
  br i1 %22, label %27, label %23

23:                                               ; preds = %16
  %24 = add i32 %18, 4096
  %25 = add nuw nsw i32 %17, 1
  %26 = icmp eq i32 %25, %15
  br i1 %26, label %27, label %16

27:                                               ; preds = %23, %16, %12, %3
  %28 = phi i32 [ -6, %3 ], [ 0, %12 ], [ 0, %23 ], [ %21, %16 ]
  ret i32 %28
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @vmf_insert_pfn_prot(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) #2 {
  %5 = getelementptr inbounds %struct.vm_area_struct, ptr %0, i32 0, i32 8
  %6 = load i32, ptr %5, align 4
  %7 = and i32 %6, 268436480
  switch i32 %7, label %10 [
    i32 0, label %8
    i32 268436480, label %9
  ], !prof !46

8:                                                ; preds = %4
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22mm/memory.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2123, 0\0A.popsection", ""() #17, !srcloc !47
  unreachable

9:                                                ; preds = %4
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22mm/memory.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2125, 0\0A.popsection", ""() #17, !srcloc !48
  unreachable

10:                                               ; preds = %4
  %11 = and i32 %6, 1064
  %12 = icmp eq i32 %11, 1056
  br i1 %12, label %13, label %14, !prof !49

13:                                               ; preds = %10
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22mm/memory.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2126, 0\0A.popsection", ""() #17, !srcloc !50
  unreachable

14:                                               ; preds = %10
  %15 = and i32 %6, 268435456
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %21, label %17

17:                                               ; preds = %14
  %18 = tail call i32 @pfn_valid(i32 noundef %2) #17
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %21, label %20, !prof !15

20:                                               ; preds = %17
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22mm/memory.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2127, 0\0A.popsection", ""() #17, !srcloc !51
  unreachable

21:                                               ; preds = %17, %14
  %22 = load i32, ptr %0, align 4
  %23 = icmp ugt i32 %22, %1
  br i1 %23, label %33, label %24

24:                                               ; preds = %21
  %25 = getelementptr inbounds %struct.vm_area_struct, ptr %0, i32 0, i32 1
  %26 = load i32, ptr %25, align 4
  %27 = icmp ugt i32 %26, %1
  br i1 %27, label %28, label %33

28:                                               ; preds = %24
  %29 = zext i32 %2 to i64
  %30 = or i64 %29, 2305843009213693952
  %31 = insertvalue [1 x i64] poison, i64 %30, 0
  %32 = tail call fastcc i32 @insert_pfn(ptr noundef %0, i32 noundef %1, [1 x i64] %31, i32 noundef %3, i1 noundef zeroext false)
  br label %33

33:                                               ; preds = %28, %24, %21
  %34 = phi i32 [ %32, %28 ], [ 2, %24 ], [ 2, %21 ]
  ret i32 %34
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @insert_pfn(ptr noundef %0, i32 noundef %1, [1 x i64] %2, i32 noundef %3, i1 noundef zeroext %4) unnamed_addr #2 {
  %6 = getelementptr inbounds %struct.vm_area_struct, ptr %0, i32 0, i32 6
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.anon.7, ptr %7, i32 0, i32 8
  %9 = load ptr, ptr %8, align 4
  %10 = lshr i32 %1, 21
  %11 = getelementptr [2 x i32], ptr %9, i32 %10
  %12 = icmp eq ptr %11, null
  br i1 %12, label %85, label %13

13:                                               ; preds = %5
  %14 = load i32, ptr %11, align 4
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %21, !prof !28

16:                                               ; preds = %13
  %17 = tail call i32 @__pte_alloc(ptr noundef %7, ptr noundef nonnull %11) #17
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %85

19:                                               ; preds = %16
  %20 = load i32, ptr %11, align 4
  br label %21

21:                                               ; preds = %19, %13
  %22 = phi i32 [ %20, %19 ], [ %14, %13 ]
  %23 = load ptr, ptr @mem_map, align 4
  %24 = lshr i32 %22, 12
  %25 = load i32, ptr @__pv_phys_pfn_offset, align 4
  %26 = sub i32 %24, %25
  %27 = getelementptr %struct.page, ptr %23, i32 %26, i32 1, i32 0, i32 3
  %28 = getelementptr %struct.page, ptr %23, i32 %26
  %29 = load i32, ptr @pgprot_kernel, align 4
  %30 = or i32 %29, 512
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !30
  %31 = tail call ptr @llvm.thread.pointer() #17
  %32 = getelementptr inbounds %struct.task_struct, ptr %31, i32 0, i32 149
  %33 = load i32, ptr %32, align 8
  %34 = add i32 %33, 1
  store i32 %34, ptr %32, align 8
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !31
  %35 = tail call ptr @__kmap_local_page_prot(ptr noundef %28, i32 noundef %30) #17
  %36 = lshr i32 %1, 12
  %37 = and i32 %36, 511
  %38 = getelementptr i32, ptr %35, i32 %37
  tail call void @_raw_spin_lock(ptr noundef %27) #17
  %39 = icmp eq ptr %38, null
  br i1 %39, label %85, label %40

40:                                               ; preds = %21
  %41 = load i32, ptr %38, align 4
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %65, label %43

43:                                               ; preds = %40
  br i1 %4, label %44, label %80

44:                                               ; preds = %43
  %45 = lshr i32 %41, 12
  %46 = extractvalue [1 x i64] %2, 0
  %47 = trunc i64 %46 to i32
  %48 = icmp eq i32 %45, %47
  br i1 %48, label %56, label %49

49:                                               ; preds = %44
  %50 = load i32, ptr @zero_pfn, align 4
  %51 = icmp ne i32 %50, %45
  %52 = load i1, ptr @insert_pfn.__already_done, align 1
  %53 = xor i1 %52, true
  %54 = select i1 %51, i1 %53, i1 false
  br i1 %54, label %55, label %80, !prof !28

55:                                               ; preds = %49
  store i1 true, ptr @insert_pfn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 2063, i32 noundef 9, ptr noundef null) #17
  br label %80

56:                                               ; preds = %44
  %57 = or i32 %41, 66
  %58 = getelementptr inbounds %struct.vm_area_struct, ptr %0, i32 0, i32 8
  %59 = load i32, ptr %58, align 4
  %60 = and i32 %59, 2
  %61 = icmp eq i32 %60, 0
  %62 = and i32 %57, -129
  %63 = select i1 %61, i32 %57, i32 %62, !prof !28
  %64 = tail call i32 @ptep_set_access_flags(ptr noundef %0, i32 noundef %1, ptr noundef nonnull %38, i32 noundef %63, i32 noundef 1) #17
  br label %80

65:                                               ; preds = %40
  %66 = extractvalue [1 x i64] %2, 0
  %67 = trunc i64 %66 to i32
  %68 = shl i32 %67, 12
  %69 = or i32 %68, %3
  br i1 %4, label %70, label %78

70:                                               ; preds = %65
  %71 = or i32 %69, 66
  %72 = getelementptr inbounds %struct.vm_area_struct, ptr %0, i32 0, i32 8
  %73 = load i32, ptr %72, align 4
  %74 = and i32 %73, 2
  %75 = icmp eq i32 %74, 0
  %76 = and i32 %71, -129
  %77 = select i1 %75, i32 %71, i32 %76, !prof !28
  br label %78

78:                                               ; preds = %70, %65
  %79 = phi i32 [ %77, %70 ], [ %69, %65 ]
  tail call void @set_pte_at(ptr noundef %7, i32 noundef %1, ptr noundef nonnull %38, i32 noundef %79) #17
  br label %80

80:                                               ; preds = %78, %56, %55, %49, %43
  tail call void asm sideeffect "dmb ish", "~{memory}"() #17, !srcloc !22
  %81 = load i16, ptr %27, align 4
  %82 = add i16 %81, 1
  store i16 %82, ptr %27, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #17, !srcloc !23
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #17, !srcloc !24
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !25
  tail call void @kunmap_local_indexed(ptr noundef nonnull %38) #17
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !37
  %83 = load i32, ptr %32, align 8
  %84 = add i32 %83, -1
  store i32 %84, ptr %32, align 8
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !38
  br label %85

85:                                               ; preds = %80, %21, %16, %5
  %86 = phi i32 [ 256, %80 ], [ 1, %21 ], [ 1, %5 ], [ 1, %16 ]
  ret i32 %86
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @vmf_insert_pfn(ptr noundef %0, i32 noundef %1, i32 noundef %2) #2 {
  %4 = getelementptr inbounds %struct.vm_area_struct, ptr %0, i32 0, i32 7
  %5 = load i32, ptr %4, align 4
  %6 = getelementptr inbounds %struct.vm_area_struct, ptr %0, i32 0, i32 8
  %7 = load i32, ptr %6, align 4
  %8 = and i32 %7, 268436480
  switch i32 %8, label %11 [
    i32 0, label %9
    i32 268436480, label %10
  ], !prof !46

9:                                                ; preds = %3
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22mm/memory.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2123, 0\0A.popsection", ""() #17, !srcloc !47
  unreachable

10:                                               ; preds = %3
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22mm/memory.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2125, 0\0A.popsection", ""() #17, !srcloc !48
  unreachable

11:                                               ; preds = %3
  %12 = and i32 %7, 1064
  %13 = icmp eq i32 %12, 1056
  br i1 %13, label %14, label %15, !prof !49

14:                                               ; preds = %11
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22mm/memory.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2126, 0\0A.popsection", ""() #17, !srcloc !50
  unreachable

15:                                               ; preds = %11
  %16 = and i32 %7, 268435456
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %22, label %18

18:                                               ; preds = %15
  %19 = tail call i32 @pfn_valid(i32 noundef %2) #17
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %22, label %21, !prof !15

21:                                               ; preds = %18
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22mm/memory.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2127, 0\0A.popsection", ""() #17, !srcloc !51
  unreachable

22:                                               ; preds = %18, %15
  %23 = load i32, ptr %0, align 4
  %24 = icmp ugt i32 %23, %1
  br i1 %24, label %34, label %25

25:                                               ; preds = %22
  %26 = getelementptr inbounds %struct.vm_area_struct, ptr %0, i32 0, i32 1
  %27 = load i32, ptr %26, align 4
  %28 = icmp ugt i32 %27, %1
  br i1 %28, label %29, label %34

29:                                               ; preds = %25
  %30 = zext i32 %2 to i64
  %31 = or i64 %30, 2305843009213693952
  %32 = insertvalue [1 x i64] poison, i64 %31, 0
  %33 = tail call fastcc i32 @insert_pfn(ptr noundef %0, i32 noundef %1, [1 x i64] %32, i32 noundef %5, i1 noundef zeroext false) #17
  br label %34

34:                                               ; preds = %29, %25, %22
  %35 = phi i32 [ %33, %29 ], [ 2, %25 ], [ 2, %22 ]
  ret i32 %35
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @vmf_insert_mixed_prot(ptr noundef %0, i32 noundef %1, [1 x i64] %2, i32 noundef %3) #2 {
  %5 = getelementptr inbounds %struct.vm_area_struct, ptr %0, i32 0, i32 8
  %6 = load i32, ptr %5, align 4
  %7 = and i32 %6, 268435456
  %8 = icmp ne i32 %7, 0
  %9 = extractvalue [1 x i64] %2, 0
  %10 = trunc i64 %9 to i32
  %11 = load i32, ptr @zero_pfn, align 4
  %12 = icmp eq i32 %11, %10
  %13 = select i1 %8, i1 true, i1 %12
  br i1 %13, label %15, label %14, !prof !15

14:                                               ; preds = %4
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22mm/memory.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2189, 0\0A.popsection", ""() #17, !srcloc !52
  unreachable

15:                                               ; preds = %4
  %16 = load i32, ptr %0, align 4
  %17 = icmp ugt i32 %16, %1
  br i1 %17, label %39, label %18

18:                                               ; preds = %15
  %19 = getelementptr inbounds %struct.vm_area_struct, ptr %0, i32 0, i32 1
  %20 = load i32, ptr %19, align 4
  %21 = icmp ugt i32 %20, %1
  br i1 %21, label %22, label %39

22:                                               ; preds = %18
  %23 = tail call i32 @pfn_valid(i32 noundef %10) #17
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %32, label %25

25:                                               ; preds = %22
  %26 = load ptr, ptr @mem_map, align 4
  %27 = load i32, ptr @__pv_phys_pfn_offset, align 4
  %28 = sub i32 %10, %27
  %29 = getelementptr %struct.page, ptr %26, i32 %28
  %30 = tail call fastcc i32 @insert_page(ptr noundef %0, i32 noundef %1, ptr noundef %29, i32 noundef %3) #17
  %31 = icmp eq i32 %30, -12
  br i1 %31, label %39, label %34

32:                                               ; preds = %22
  %33 = tail call fastcc i32 @insert_pfn(ptr noundef %0, i32 noundef %1, [1 x i64] %2, i32 noundef %3, i1 noundef zeroext false) #17
  br label %39

34:                                               ; preds = %25
  %35 = icmp slt i32 %30, 0
  %36 = icmp ne i32 %30, -16
  %37 = and i1 %35, %36
  %38 = select i1 %37, i32 2, i32 256
  br label %39

39:                                               ; preds = %34, %32, %25, %18, %15
  %40 = phi i32 [ %33, %32 ], [ 2, %18 ], [ 2, %15 ], [ 1, %25 ], [ %38, %34 ]
  ret i32 %40
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @vmf_insert_mixed(ptr noundef %0, i32 noundef %1, [1 x i64] %2) #2 {
  %4 = getelementptr inbounds %struct.vm_area_struct, ptr %0, i32 0, i32 7
  %5 = load i32, ptr %4, align 4
  %6 = getelementptr inbounds %struct.vm_area_struct, ptr %0, i32 0, i32 8
  %7 = load i32, ptr %6, align 4
  %8 = and i32 %7, 268435456
  %9 = icmp ne i32 %8, 0
  %10 = extractvalue [1 x i64] %2, 0
  %11 = trunc i64 %10 to i32
  %12 = load i32, ptr @zero_pfn, align 4
  %13 = icmp eq i32 %12, %11
  %14 = select i1 %9, i1 true, i1 %13
  br i1 %14, label %16, label %15, !prof !15

15:                                               ; preds = %3
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22mm/memory.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2189, 0\0A.popsection", ""() #17, !srcloc !52
  unreachable

16:                                               ; preds = %3
  %17 = load i32, ptr %0, align 4
  %18 = icmp ugt i32 %17, %1
  br i1 %18, label %40, label %19

19:                                               ; preds = %16
  %20 = getelementptr inbounds %struct.vm_area_struct, ptr %0, i32 0, i32 1
  %21 = load i32, ptr %20, align 4
  %22 = icmp ugt i32 %21, %1
  br i1 %22, label %23, label %40

23:                                               ; preds = %19
  %24 = tail call i32 @pfn_valid(i32 noundef %11) #17
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %33, label %26

26:                                               ; preds = %23
  %27 = load ptr, ptr @mem_map, align 4
  %28 = load i32, ptr @__pv_phys_pfn_offset, align 4
  %29 = sub i32 %11, %28
  %30 = getelementptr %struct.page, ptr %27, i32 %29
  %31 = tail call fastcc i32 @insert_page(ptr noundef %0, i32 noundef %1, ptr noundef %30, i32 noundef %5) #17
  %32 = icmp eq i32 %31, -12
  br i1 %32, label %40, label %35

33:                                               ; preds = %23
  %34 = tail call fastcc i32 @insert_pfn(ptr noundef %0, i32 noundef %1, [1 x i64] %2, i32 noundef %5, i1 noundef zeroext false) #17
  br label %40

35:                                               ; preds = %26
  %36 = icmp slt i32 %31, 0
  %37 = icmp ne i32 %31, -16
  %38 = and i1 %36, %37
  %39 = select i1 %38, i32 2, i32 256
  br label %40

40:                                               ; preds = %35, %33, %26, %19, %16
  %41 = phi i32 [ %34, %33 ], [ 2, %19 ], [ 2, %16 ], [ 1, %26 ], [ %39, %35 ]
  ret i32 %41
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @vmf_insert_mixed_mkwrite(ptr noundef %0, i32 noundef %1, [1 x i64] %2) #2 {
  %4 = getelementptr inbounds %struct.vm_area_struct, ptr %0, i32 0, i32 7
  %5 = load i32, ptr %4, align 4
  %6 = getelementptr inbounds %struct.vm_area_struct, ptr %0, i32 0, i32 8
  %7 = load i32, ptr %6, align 4
  %8 = and i32 %7, 268435456
  %9 = icmp ne i32 %8, 0
  %10 = extractvalue [1 x i64] %2, 0
  %11 = trunc i64 %10 to i32
  %12 = load i32, ptr @zero_pfn, align 4
  %13 = icmp eq i32 %12, %11
  %14 = select i1 %9, i1 true, i1 %13
  br i1 %14, label %16, label %15, !prof !15

15:                                               ; preds = %3
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22mm/memory.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2189, 0\0A.popsection", ""() #17, !srcloc !52
  unreachable

16:                                               ; preds = %3
  %17 = load i32, ptr %0, align 4
  %18 = icmp ugt i32 %17, %1
  br i1 %18, label %40, label %19

19:                                               ; preds = %16
  %20 = getelementptr inbounds %struct.vm_area_struct, ptr %0, i32 0, i32 1
  %21 = load i32, ptr %20, align 4
  %22 = icmp ugt i32 %21, %1
  br i1 %22, label %23, label %40

23:                                               ; preds = %19
  %24 = tail call i32 @pfn_valid(i32 noundef %11) #17
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %33, label %26

26:                                               ; preds = %23
  %27 = load ptr, ptr @mem_map, align 4
  %28 = load i32, ptr @__pv_phys_pfn_offset, align 4
  %29 = sub i32 %11, %28
  %30 = getelementptr %struct.page, ptr %27, i32 %29
  %31 = tail call fastcc i32 @insert_page(ptr noundef %0, i32 noundef %1, ptr noundef %30, i32 noundef %5) #17
  %32 = icmp eq i32 %31, -12
  br i1 %32, label %40, label %35

33:                                               ; preds = %23
  %34 = tail call fastcc i32 @insert_pfn(ptr noundef %0, i32 noundef %1, [1 x i64] %2, i32 noundef %5, i1 noundef zeroext true) #17
  br label %40

35:                                               ; preds = %26
  %36 = icmp slt i32 %31, 0
  %37 = icmp ne i32 %31, -16
  %38 = and i1 %36, %37
  %39 = select i1 %38, i32 2, i32 256
  br label %40

40:                                               ; preds = %35, %33, %26, %19, %16
  %41 = phi i32 [ %34, %33 ], [ 2, %19 ], [ 2, %16 ], [ 1, %26 ], [ %39, %35 ]
  ret i32 %41
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @remap_pfn_range_notrack(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #2 {
  %6 = add i32 %3, 4095
  %7 = and i32 %6, -4096
  %8 = add i32 %7, %1
  %9 = getelementptr inbounds %struct.vm_area_struct, ptr %0, i32 0, i32 6
  %10 = load ptr, ptr %9, align 4
  %11 = and i32 %1, 4095
  %12 = icmp ne i32 %11, 0
  %13 = load i1, ptr @remap_pfn_range_notrack.__already_done, align 1
  %14 = xor i1 %13, true
  %15 = select i1 %12, i1 %14, i1 false
  br i1 %15, label %16, label %17, !prof !28

16:                                               ; preds = %5
  store i1 true, ptr @remap_pfn_range_notrack.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 2392, i32 noundef 9, ptr noundef null) #17
  br label %17

17:                                               ; preds = %16, %5
  br i1 %12, label %102, label %18

18:                                               ; preds = %17
  %19 = getelementptr inbounds %struct.vm_area_struct, ptr %0, i32 0, i32 8
  %20 = load i32, ptr %19, align 4
  %21 = and i32 %20, 40
  %22 = icmp eq i32 %21, 32
  br i1 %22, label %23, label %32

23:                                               ; preds = %18
  %24 = load i32, ptr %0, align 4
  %25 = icmp eq i32 %24, %1
  br i1 %25, label %26, label %102

26:                                               ; preds = %23
  %27 = getelementptr inbounds %struct.vm_area_struct, ptr %0, i32 0, i32 1
  %28 = load i32, ptr %27, align 4
  %29 = icmp eq i32 %8, %28
  br i1 %29, label %30, label %102

30:                                               ; preds = %26
  %31 = getelementptr inbounds %struct.vm_area_struct, ptr %0, i32 0, i32 13
  store i32 %2, ptr %31, align 4
  br label %32

32:                                               ; preds = %30, %18
  %33 = or i32 %20, 67388416
  store i32 %33, ptr %19, align 4
  %34 = icmp ugt i32 %8, %1
  br i1 %34, label %36, label %35, !prof !15

35:                                               ; preds = %32
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22mm/memory.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2421, 0\0A.popsection", ""() #17, !srcloc !53
  unreachable

36:                                               ; preds = %32
  %37 = lshr i32 %1, 12
  %38 = sub i32 %2, %37
  %39 = getelementptr inbounds %struct.anon.7, ptr %10, i32 0, i32 8
  %40 = load ptr, ptr %39, align 4
  %41 = lshr i32 %1, 21
  %42 = getelementptr [2 x i32], ptr %40, i32 %41
  tail call void @flush_cache_range(ptr noundef %0, i32 noundef %1, i32 noundef %8) #17
  %43 = add i32 %8, -1
  br label %44

44:                                               ; preds = %95, %36
  %45 = phi ptr [ %42, %36 ], [ %100, %95 ]
  %46 = phi i32 [ %1, %36 ], [ %51, %95 ]
  %47 = add i32 %46, 2097152
  %48 = and i32 %47, -2097152
  %49 = add i32 %48, -1
  %50 = icmp ult i32 %49, %43
  %51 = select i1 %50, i32 %48, i32 %8
  %52 = lshr i32 %46, 12
  %53 = add i32 %38, %52
  %54 = icmp eq ptr %45, null
  br i1 %54, label %102, label %55

55:                                               ; preds = %44
  %56 = load i32, ptr %45, align 4
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %58, label %63, !prof !28

58:                                               ; preds = %55
  %59 = tail call i32 @__pte_alloc(ptr noundef %10, ptr noundef nonnull %45) #17
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %61, label %102

61:                                               ; preds = %58
  %62 = load i32, ptr %45, align 4
  br label %63

63:                                               ; preds = %61, %55
  %64 = phi i32 [ %62, %61 ], [ %56, %55 ]
  %65 = load ptr, ptr @mem_map, align 4
  %66 = lshr i32 %64, 12
  %67 = load i32, ptr @__pv_phys_pfn_offset, align 4
  %68 = sub i32 %66, %67
  %69 = getelementptr %struct.page, ptr %65, i32 %68, i32 1, i32 0, i32 3
  %70 = getelementptr %struct.page, ptr %65, i32 %68
  %71 = load i32, ptr @pgprot_kernel, align 4
  %72 = or i32 %71, 512
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !30
  %73 = tail call ptr @llvm.thread.pointer() #17
  %74 = getelementptr inbounds %struct.task_struct, ptr %73, i32 0, i32 149
  %75 = load i32, ptr %74, align 8
  %76 = add i32 %75, 1
  store i32 %76, ptr %74, align 8
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !31
  %77 = tail call ptr @__kmap_local_page_prot(ptr noundef %70, i32 noundef %72) #17
  %78 = and i32 %52, 511
  %79 = getelementptr i32, ptr %77, i32 %78
  tail call void @_raw_spin_lock(ptr noundef %69) #17
  %80 = icmp eq ptr %79, null
  br i1 %80, label %102, label %81

81:                                               ; preds = %88, %63
  %82 = phi ptr [ %92, %88 ], [ %79, %63 ]
  %83 = phi i32 [ %91, %88 ], [ %53, %63 ]
  %84 = phi i32 [ %93, %88 ], [ %46, %63 ]
  %85 = load i32, ptr %82, align 4
  %86 = icmp eq i32 %85, 0
  br i1 %86, label %88, label %87, !prof !15

87:                                               ; preds = %81
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22mm/memory.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2299, 0\0A.popsection", ""() #17, !srcloc !54
  unreachable

88:                                               ; preds = %81
  %89 = shl i32 %83, 12
  %90 = or i32 %89, %4
  tail call void @set_pte_at(ptr noundef %10, i32 noundef %84, ptr noundef %82, i32 noundef %90) #17
  %91 = add i32 %83, 1
  %92 = getelementptr i32, ptr %82, i32 1
  %93 = add i32 %84, 4096
  %94 = icmp eq i32 %93, %51
  br i1 %94, label %95, label %81

95:                                               ; preds = %88
  tail call void asm sideeffect "dmb ish", "~{memory}"() #17, !srcloc !22
  %96 = load i16, ptr %69, align 4
  %97 = add i16 %96, 1
  store i16 %97, ptr %69, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #17, !srcloc !23
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #17, !srcloc !24
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !25
  tail call void @kunmap_local_indexed(ptr noundef nonnull %79) #17
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !37
  %98 = load i32, ptr %74, align 8
  %99 = add i32 %98, -1
  store i32 %99, ptr %74, align 8
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !38
  %100 = getelementptr [2 x i32], ptr %45, i32 1
  %101 = icmp eq i32 %51, %8
  br i1 %101, label %102, label %44

102:                                              ; preds = %95, %63, %58, %44, %26, %23, %17
  %103 = phi i32 [ -22, %17 ], [ -22, %26 ], [ -22, %23 ], [ -12, %58 ], [ -12, %63 ], [ -12, %44 ], [ 0, %95 ]
  ret i32 %103
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @flush_cache_range(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @remap_pfn_range(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) #2 {
  %6 = tail call i32 @remap_pfn_range_notrack(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4)
  ret i32 %6
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @vm_iomap_memory(ptr noundef %0, i32 noundef %1, i32 noundef %2) #2 {
  %4 = xor i32 %1, -1
  %5 = icmp ult i32 %4, %2
  br i1 %5, label %28, label %6

6:                                                ; preds = %3
  %7 = and i32 %1, 4095
  %8 = lshr i32 %1, 12
  %9 = add i32 %2, 4095
  %10 = add i32 %9, %7
  %11 = lshr i32 %10, 12
  %12 = getelementptr inbounds %struct.vm_area_struct, ptr %0, i32 0, i32 13
  %13 = load i32, ptr %12, align 4
  %14 = icmp ult i32 %11, %13
  br i1 %14, label %28, label %15

15:                                               ; preds = %6
  %16 = sub i32 %11, %13
  %17 = getelementptr inbounds %struct.vm_area_struct, ptr %0, i32 0, i32 1
  %18 = load i32, ptr %17, align 4
  %19 = load i32, ptr %0, align 4
  %20 = sub i32 %18, %19
  %21 = lshr i32 %20, 12
  %22 = icmp ugt i32 %21, %16
  br i1 %22, label %28, label %23

23:                                               ; preds = %15
  %24 = add i32 %13, %8
  %25 = getelementptr inbounds %struct.vm_area_struct, ptr %0, i32 0, i32 7
  %26 = load i32, ptr %25, align 4
  %27 = tail call i32 @remap_pfn_range_notrack(ptr noundef %0, i32 noundef %19, i32 noundef %24, i32 noundef %20, i32 noundef %26) #17
  br label %28

28:                                               ; preds = %23, %15, %6, %3
  %29 = phi i32 [ %27, %23 ], [ -22, %3 ], [ -22, %6 ], [ -22, %15 ]
  ret i32 %29
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @apply_to_page_range(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef %3, ptr noundef %4) #2 {
  %6 = tail call fastcc i32 @__apply_to_page_range(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef %3, ptr noundef %4, i1 noundef zeroext true)
  ret i32 %6
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @__apply_to_page_range(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef readonly %3, ptr noundef %4, i1 noundef zeroext %5) unnamed_addr #2 {
  %7 = add i32 %2, %1
  %8 = icmp ugt i32 %7, %1
  br i1 %8, label %10, label %9, !prof !15

9:                                                ; preds = %6
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 2676, i32 noundef 9, ptr noundef null) #17
  br label %167

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.anon.7, ptr %0, i32 0, i32 8
  %12 = load ptr, ptr %11, align 4
  %13 = lshr i32 %1, 21
  %14 = getelementptr [2 x i32], ptr %12, i32 %13
  %15 = add i32 %7, -1
  %16 = icmp eq ptr %0, @init_mm
  %17 = icmp eq ptr %3, null
  br label %18

18:                                               ; preds = %164, %10
  %19 = phi ptr [ %14, %10 ], [ %165, %164 ]
  %20 = phi i32 [ %1, %10 ], [ %25, %164 ]
  %21 = add i32 %20, 2097152
  %22 = and i32 %21, -2097152
  %23 = add i32 %22, -1
  %24 = icmp ult i32 %23, %15
  %25 = select i1 %24, i32 %22, i32 %7
  br i1 %5, label %26, label %30

26:                                               ; preds = %18
  %27 = icmp eq ptr %19, null
  br i1 %27, label %167, label %28

28:                                               ; preds = %26
  %29 = load i32, ptr %19, align 4
  br label %33

30:                                               ; preds = %18
  %31 = load i32, ptr %19, align 4
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %164, label %33

33:                                               ; preds = %30, %28
  %34 = phi i32 [ %29, %28 ], [ %31, %30 ]
  %35 = and i32 %34, 2
  %36 = icmp ne i32 %35, 0
  %37 = load i1, ptr @apply_to_pmd_range.__already_done, align 1
  %38 = xor i1 %37, true
  %39 = select i1 %36, i1 %38, i1 false
  br i1 %39, label %40, label %41, !prof !28

40:                                               ; preds = %33
  store i1 true, ptr @apply_to_pmd_range.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 2578, i32 noundef 9, ptr noundef null) #17
  br label %41

41:                                               ; preds = %40, %33
  br i1 %36, label %167, label %42

42:                                               ; preds = %41
  %43 = load i32, ptr %19, align 4
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %57, label %45

45:                                               ; preds = %42
  %46 = and i32 %43, 2
  %47 = icmp ne i32 %46, 0
  %48 = load i1, ptr @apply_to_pmd_range.__already_done.12, align 1
  %49 = xor i1 %48, true
  %50 = select i1 %47, i1 %49, i1 false
  br i1 %50, label %51, label %52, !prof !28

51:                                               ; preds = %45
  store i1 true, ptr @apply_to_pmd_range.__already_done.12, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 2580, i32 noundef 9, ptr noundef null) #17
  br label %52

52:                                               ; preds = %51, %45
  br i1 %47, label %53, label %57

53:                                               ; preds = %52
  br i1 %5, label %54, label %164

54:                                               ; preds = %53
  tail call void @pmd_clear_bad(ptr noundef %19) #17
  %55 = load i32, ptr %19, align 4
  %56 = icmp eq i32 %55, 0
  br i1 %16, label %61, label %77

57:                                               ; preds = %52, %42
  br i1 %5, label %58, label %108

58:                                               ; preds = %57
  %59 = load i32, ptr %19, align 4
  %60 = icmp eq i32 %59, 0
  br i1 %16, label %61, label %77

61:                                               ; preds = %58, %54
  %62 = phi i1 [ %56, %54 ], [ %60, %58 ]
  %63 = phi i32 [ %55, %54 ], [ %59, %58 ]
  br i1 %62, label %64, label %69, !prof !28

64:                                               ; preds = %61
  %65 = tail call i32 @__pte_alloc_kernel(ptr noundef %19) #17
  %66 = icmp eq i32 %65, 0
  br i1 %66, label %67, label %167

67:                                               ; preds = %64
  %68 = load i32, ptr %19, align 4
  br label %69

69:                                               ; preds = %67, %61
  %70 = phi i32 [ %68, %67 ], [ %63, %61 ]
  %71 = and i32 %70, -4096
  %72 = tail call i32 asm "@ __pv_stub\0A1:\09sub\09$0, $1, $2\0A2:\09sub\09$0, $0, $3\0A\09.pushsection .pv_table,\22a\22\0A\09.long\091b - ., 2b - .\0A\09.popsection\0A", "=r,r,I,I"(i32 %71, i32 -2130706432, i32 8454144) #18, !srcloc !55
  %73 = inttoptr i32 %72 to ptr
  %74 = lshr i32 %20, 12
  %75 = and i32 %74, 511
  %76 = getelementptr i32, ptr %73, i32 %75
  br label %103

77:                                               ; preds = %58, %54
  %78 = phi i1 [ %56, %54 ], [ %60, %58 ]
  %79 = phi i32 [ %55, %54 ], [ %59, %58 ]
  br i1 %78, label %80, label %85, !prof !28

80:                                               ; preds = %77
  %81 = tail call i32 @__pte_alloc(ptr noundef %0, ptr noundef %19) #17
  %82 = icmp eq i32 %81, 0
  br i1 %82, label %83, label %167

83:                                               ; preds = %80
  %84 = load i32, ptr %19, align 4
  br label %85

85:                                               ; preds = %83, %77
  %86 = phi i32 [ %84, %83 ], [ %79, %77 ]
  %87 = load ptr, ptr @mem_map, align 4
  %88 = lshr i32 %86, 12
  %89 = load i32, ptr @__pv_phys_pfn_offset, align 4
  %90 = sub i32 %88, %89
  %91 = getelementptr %struct.page, ptr %87, i32 %90, i32 1, i32 0, i32 3
  %92 = getelementptr %struct.page, ptr %87, i32 %90
  %93 = load i32, ptr @pgprot_kernel, align 4
  %94 = or i32 %93, 512
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !30
  %95 = tail call ptr @llvm.thread.pointer() #17
  %96 = getelementptr inbounds %struct.task_struct, ptr %95, i32 0, i32 149
  %97 = load i32, ptr %96, align 8
  %98 = add i32 %97, 1
  store i32 %98, ptr %96, align 8
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !31
  %99 = tail call ptr @__kmap_local_page_prot(ptr noundef %92, i32 noundef %94) #17
  %100 = lshr i32 %20, 12
  %101 = and i32 %100, 511
  %102 = getelementptr i32, ptr %99, i32 %101
  tail call void @_raw_spin_lock(ptr noundef %91) #17
  br label %103

103:                                              ; preds = %85, %69
  %104 = phi i1 [ true, %69 ], [ false, %85 ]
  %105 = phi ptr [ null, %69 ], [ %91, %85 ]
  %106 = phi ptr [ %76, %69 ], [ %102, %85 ]
  %107 = icmp eq ptr %106, null
  br i1 %107, label %167, label %135

108:                                              ; preds = %57
  br i1 %16, label %109, label %117

109:                                              ; preds = %108
  %110 = load i32, ptr %19, align 4
  %111 = and i32 %110, -4096
  %112 = tail call i32 asm "@ __pv_stub\0A1:\09sub\09$0, $1, $2\0A2:\09sub\09$0, $0, $3\0A\09.pushsection .pv_table,\22a\22\0A\09.long\091b - ., 2b - .\0A\09.popsection\0A", "=r,r,I,I"(i32 %111, i32 -2130706432, i32 8454144) #18, !srcloc !55
  %113 = inttoptr i32 %112 to ptr
  %114 = lshr i32 %20, 12
  %115 = and i32 %114, 511
  %116 = getelementptr i32, ptr %113, i32 %115
  br label %135

117:                                              ; preds = %108
  %118 = load ptr, ptr @mem_map, align 4
  %119 = load i32, ptr %19, align 4
  %120 = lshr i32 %119, 12
  %121 = load i32, ptr @__pv_phys_pfn_offset, align 4
  %122 = sub i32 %120, %121
  %123 = getelementptr %struct.page, ptr %118, i32 %122, i32 1, i32 0, i32 3
  %124 = getelementptr %struct.page, ptr %118, i32 %122
  %125 = load i32, ptr @pgprot_kernel, align 4
  %126 = or i32 %125, 512
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !30
  %127 = tail call ptr @llvm.thread.pointer() #17
  %128 = getelementptr inbounds %struct.task_struct, ptr %127, i32 0, i32 149
  %129 = load i32, ptr %128, align 8
  %130 = add i32 %129, 1
  store i32 %130, ptr %128, align 8
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !31
  %131 = tail call ptr @__kmap_local_page_prot(ptr noundef %124, i32 noundef %126) #17
  %132 = lshr i32 %20, 12
  %133 = and i32 %132, 511
  %134 = getelementptr i32, ptr %131, i32 %133
  tail call void @_raw_spin_lock(ptr noundef %123) #17
  br label %135

135:                                              ; preds = %117, %109, %103
  %136 = phi i1 [ %104, %103 ], [ true, %109 ], [ false, %117 ]
  %137 = phi ptr [ %105, %103 ], [ null, %109 ], [ %123, %117 ]
  %138 = phi ptr [ %106, %103 ], [ %116, %109 ], [ %134, %117 ]
  br i1 %17, label %153, label %139

139:                                              ; preds = %149, %135
  %140 = phi ptr [ %150, %149 ], [ %138, %135 ]
  %141 = phi i32 [ %151, %149 ], [ %20, %135 ]
  br i1 %5, label %145, label %142

142:                                              ; preds = %139
  %143 = load i32, ptr %140, align 4
  %144 = icmp eq i32 %143, 0
  br i1 %144, label %149, label %145

145:                                              ; preds = %142, %139
  %146 = getelementptr i32, ptr %140, i32 1
  %147 = tail call i32 %3(ptr noundef %140, i32 noundef %141, ptr noundef %4) #17
  %148 = icmp eq i32 %147, 0
  br i1 %148, label %149, label %153

149:                                              ; preds = %145, %142
  %150 = phi ptr [ %146, %145 ], [ %140, %142 ]
  %151 = add i32 %141, 4096
  %152 = icmp eq i32 %151, %25
  br i1 %152, label %153, label %139

153:                                              ; preds = %149, %145, %135
  %154 = phi i32 [ 0, %135 ], [ 0, %149 ], [ %147, %145 ]
  br i1 %136, label %162, label %155

155:                                              ; preds = %153
  tail call void asm sideeffect "dmb ish", "~{memory}"() #17, !srcloc !22
  %156 = load i16, ptr %137, align 4
  %157 = add i16 %156, 1
  store i16 %157, ptr %137, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #17, !srcloc !23
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #17, !srcloc !24
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !25
  tail call void @kunmap_local_indexed(ptr noundef %138) #17
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !37
  %158 = tail call ptr @llvm.thread.pointer() #17
  %159 = getelementptr inbounds %struct.task_struct, ptr %158, i32 0, i32 149
  %160 = load i32, ptr %159, align 8
  %161 = add i32 %160, -1
  store i32 %161, ptr %159, align 8
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !38
  br label %162

162:                                              ; preds = %155, %153
  %163 = icmp eq i32 %154, 0
  br i1 %163, label %164, label %167

164:                                              ; preds = %162, %53, %30
  %165 = getelementptr [2 x i32], ptr %19, i32 1
  %166 = icmp eq i32 %25, %7
  br i1 %166, label %167, label %18

167:                                              ; preds = %164, %162, %103, %80, %64, %41, %26, %9
  %168 = phi i32 [ -22, %9 ], [ -12, %26 ], [ -22, %41 ], [ %154, %162 ], [ -12, %103 ], [ -12, %64 ], [ -12, %80 ], [ 0, %164 ]
  ret i32 %168
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @apply_to_existing_page_range(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef %3, ptr noundef %4) #2 {
  %6 = tail call fastcc i32 @__apply_to_page_range(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef %3, ptr noundef %4, i1 noundef zeroext false)
  ret i32 %6
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @finish_mkwrite_fault(ptr nocapture noundef %0) local_unnamed_addr #2 {
  %2 = load ptr, ptr %0, align 4
  %3 = getelementptr inbounds %struct.vm_area_struct, ptr %2, i32 0, i32 8
  %4 = load i32, ptr %3, align 4
  %5 = and i32 %4, 8
  %6 = icmp eq i32 %5, 0
  %7 = load i1, ptr @finish_mkwrite_fault.__already_done, align 1
  %8 = xor i1 %7, true
  %9 = select i1 %6, i1 %8, i1 false
  br i1 %9, label %10, label %11, !prof !28

10:                                               ; preds = %1
  store i1 true, ptr @finish_mkwrite_fault.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 3162, i32 noundef 9, ptr noundef null) #17
  br label %11

11:                                               ; preds = %10, %1
  %12 = getelementptr inbounds %struct.vm_fault, ptr %0, i32 0, i32 2
  %13 = load ptr, ptr %12, align 4
  %14 = load ptr, ptr @mem_map, align 4
  %15 = load i32, ptr %13, align 4
  %16 = lshr i32 %15, 12
  %17 = load i32, ptr @__pv_phys_pfn_offset, align 4
  %18 = sub i32 %16, %17
  %19 = getelementptr %struct.page, ptr %14, i32 %18, i32 1, i32 0, i32 3
  %20 = getelementptr %struct.page, ptr %14, i32 %18
  %21 = load i32, ptr @pgprot_kernel, align 4
  %22 = or i32 %21, 512
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !30
  %23 = tail call ptr @llvm.thread.pointer() #17
  %24 = getelementptr inbounds %struct.task_struct, ptr %23, i32 0, i32 149
  %25 = load i32, ptr %24, align 8
  %26 = add i32 %25, 1
  store i32 %26, ptr %24, align 8
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !31
  %27 = tail call ptr @__kmap_local_page_prot(ptr noundef %20, i32 noundef %22) #17
  %28 = getelementptr inbounds %struct.anon.22, ptr %0, i32 0, i32 3
  %29 = load i32, ptr %28, align 4
  %30 = lshr i32 %29, 12
  %31 = and i32 %30, 511
  %32 = getelementptr i32, ptr %27, i32 %31
  %33 = getelementptr inbounds %struct.vm_fault, ptr %0, i32 0, i32 8
  store ptr %19, ptr %33, align 4
  tail call void @_raw_spin_lock(ptr noundef %19) #17
  %34 = getelementptr inbounds %struct.vm_fault, ptr %0, i32 0, i32 7
  store ptr %32, ptr %34, align 4
  %35 = load i32, ptr %32, align 4
  %36 = getelementptr inbounds %struct.vm_fault, ptr %0, i32 0, i32 4
  %37 = load i32, ptr %36, align 4
  %38 = icmp eq i32 %35, %37
  br i1 %38, label %46, label %39

39:                                               ; preds = %11
  %40 = load ptr, ptr %33, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #17, !srcloc !22
  %41 = load i16, ptr %40, align 4
  %42 = add i16 %41, 1
  store i16 %42, ptr %40, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #17, !srcloc !23
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #17, !srcloc !24
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !25
  %43 = load ptr, ptr %34, align 4
  tail call void @kunmap_local_indexed(ptr noundef %43) #17
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !37
  %44 = load i32, ptr %24, align 8
  %45 = add i32 %44, -1
  store i32 %45, ptr %24, align 8
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !38
  br label %75

46:                                               ; preds = %11
  %47 = load ptr, ptr %0, align 4
  %48 = load i32, ptr %28, align 4
  %49 = lshr i32 %35, 12
  tail call void @flush_cache_page(ptr noundef %47, i32 noundef %48, i32 noundef %49) #17
  %50 = load i32, ptr %36, align 4
  %51 = or i32 %50, 66
  %52 = getelementptr inbounds %struct.vm_area_struct, ptr %47, i32 0, i32 8
  %53 = load i32, ptr %52, align 4
  %54 = and i32 %53, 2
  %55 = icmp eq i32 %54, 0
  %56 = and i32 %51, -129
  %57 = select i1 %55, i32 %51, i32 %56, !prof !28
  %58 = load i32, ptr %28, align 4
  %59 = load ptr, ptr %34, align 4
  %60 = tail call i32 @ptep_set_access_flags(ptr noundef %47, i32 noundef %58, ptr noundef %59, i32 noundef %57, i32 noundef 1) #17
  %61 = load ptr, ptr %33, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #17, !srcloc !22
  %62 = load i16, ptr %61, align 4
  %63 = add i16 %62, 1
  store i16 %63, ptr %61, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #17, !srcloc !23
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #17, !srcloc !24
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !25
  %64 = load ptr, ptr %34, align 4
  tail call void @kunmap_local_indexed(ptr noundef %64) #17
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !37
  %65 = load i32, ptr %24, align 8
  %66 = add i32 %65, -1
  store i32 %66, ptr %24, align 8
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !38
  %67 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #17, !srcloc !56
  %68 = tail call i32 @llvm.read_register.i32(metadata !0) #17
  %69 = inttoptr i32 %68 to ptr
  %70 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %69) #12, !srcloc !57
  %71 = add i32 %70, ptrtoint (ptr getelementptr inbounds (%struct.vm_event_state, ptr @vm_event_states, i32 0, i32 0, i32 24) to i32)
  %72 = inttoptr i32 %71 to ptr
  %73 = load i32, ptr %72, align 4
  %74 = add i32 %73, 1
  store i32 %74, ptr %72, align 4
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %67) #17, !srcloc !58
  br label %75

75:                                               ; preds = %46, %39
  %76 = phi i32 [ 0, %46 ], [ 256, %39 ]
  ret i32 %76
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @unmap_mapping_folio(ptr noundef %0) local_unnamed_addr #2 {
  %2 = alloca %struct.zap_details, align 8
  %3 = getelementptr inbounds %struct.anon.71, ptr %0, i32 0, i32 2
  %4 = load ptr, ptr %3, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #17
  %5 = getelementptr inbounds %struct.anon.71, ptr %0, i32 0, i32 3
  %6 = load i32, ptr %5, align 4
  %7 = load volatile i32, ptr %0, align 4
  %8 = and i32 %7, 65536
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %13, label %10

10:                                               ; preds = %1
  %11 = getelementptr %struct.page, ptr %0, i32 1, i32 1, i32 0, i32 2
  %12 = load i32, ptr %11, align 4
  br label %13

13:                                               ; preds = %10, %1
  %14 = phi i32 [ %12, %10 ], [ 1, %1 ]
  store ptr %4, ptr %2, align 8
  %15 = getelementptr inbounds %struct.zap_details, ptr %2, i32 0, i32 1
  store ptr %0, ptr %15, align 4
  %16 = getelementptr inbounds %struct.address_space, ptr %4, i32 0, i32 6
  tail call void @down_write(ptr noundef %16) #17
  %17 = getelementptr inbounds %struct.address_space, ptr %4, i32 0, i32 5
  %18 = load volatile ptr, ptr %17, align 4
  %19 = icmp eq ptr %18, null
  br i1 %19, label %23, label %20, !prof !15

20:                                               ; preds = %13
  %21 = add i32 %6, -1
  %22 = add i32 %21, %14
  call fastcc void @unmap_mapping_range_tree(ptr noundef %17, i32 noundef %6, i32 noundef %22, ptr noundef nonnull %2)
  br label %23

23:                                               ; preds = %20, %13
  call void @up_write(ptr noundef %16) #17
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #17
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @unmap_mapping_range_tree(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef %3) unnamed_addr #4 {
  %5 = tail call ptr @vma_interval_tree_iter_first(ptr noundef %0, i32 noundef %1, i32 noundef %2) #17
  %6 = icmp eq ptr %5, null
  br i1 %6, label %29, label %7

7:                                                ; preds = %7, %4
  %8 = phi ptr [ %27, %7 ], [ %5, %4 ]
  %9 = getelementptr inbounds %struct.vm_area_struct, ptr %8, i32 0, i32 13
  %10 = load i32, ptr %9, align 4
  %11 = getelementptr inbounds %struct.vm_area_struct, ptr %8, i32 0, i32 1
  %12 = load i32, ptr %11, align 4
  %13 = load i32, ptr %8, align 4
  %14 = sub i32 %12, %13
  %15 = lshr i32 %14, 12
  %16 = add i32 %10, -1
  %17 = add i32 %16, %15
  %18 = tail call i32 @llvm.umin.i32(i32 %17, i32 %2)
  %19 = tail call i32 @llvm.usub.sat.i32(i32 %1, i32 %10)
  %20 = shl i32 %19, 12
  %21 = add i32 %20, %13
  %22 = sub i32 %18, %10
  %23 = shl i32 %22, 12
  %24 = add i32 %13, 4096
  %25 = sub i32 %24, %21
  %26 = add i32 %25, %23
  tail call fastcc void @zap_page_range_single(ptr noundef nonnull %8, i32 noundef %21, i32 noundef %26, ptr noundef %3) #17
  %27 = tail call ptr @vma_interval_tree_iter_next(ptr noundef nonnull %8, i32 noundef %1, i32 noundef %2) #17
  %28 = icmp eq ptr %27, null
  br i1 %28, label %29, label %7

29:                                               ; preds = %7, %4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @unmap_mapping_pages(ptr noundef %0, i32 noundef %1, i32 noundef %2, i1 noundef zeroext %3) #2 {
  %5 = alloca %struct.zap_details, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #17
  store i64 0, ptr %5, align 8
  %6 = select i1 %3, ptr null, ptr %0
  store ptr %6, ptr %5, align 8
  %7 = getelementptr inbounds %struct.address_space, ptr %0, i32 0, i32 6
  tail call void @down_write(ptr noundef %7) #17
  %8 = getelementptr inbounds %struct.address_space, ptr %0, i32 0, i32 5
  %9 = load volatile ptr, ptr %8, align 4
  %10 = icmp eq ptr %9, null
  br i1 %10, label %16, label %11, !prof !15

11:                                               ; preds = %4
  %12 = add i32 %1, -1
  %13 = add i32 %12, %2
  %14 = icmp ult i32 %13, %1
  %15 = select i1 %14, i32 -1, i32 %13
  call fastcc void @unmap_mapping_range_tree(ptr noundef %8, i32 noundef %1, i32 noundef %15, ptr noundef nonnull %5)
  br label %16

16:                                               ; preds = %11, %4
  call void @up_write(ptr noundef %7) #17
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #17
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @unmap_mapping_range(ptr noundef %0, i64 noundef %1, i64 noundef %2, i32 noundef %3) #2 {
  %5 = alloca %struct.zap_details, align 8
  %6 = lshr i64 %1, 12
  %7 = trunc i64 %6 to i32
  %8 = icmp eq i32 %3, 0
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #17
  store i64 0, ptr %5, align 8
  %9 = select i1 %8, ptr %0, ptr null
  store ptr %9, ptr %5, align 8
  %10 = getelementptr inbounds %struct.address_space, ptr %0, i32 0, i32 6
  tail call void @down_write(ptr noundef %10) #17
  %11 = getelementptr inbounds %struct.address_space, ptr %0, i32 0, i32 5
  %12 = load volatile ptr, ptr %11, align 4
  %13 = icmp eq ptr %12, null
  br i1 %13, label %50, label %14, !prof !15

14:                                               ; preds = %4
  %15 = add i64 %2, 4095
  %16 = add i64 %15, %1
  %17 = icmp ult i64 %16, 17592186044416
  %18 = lshr i64 %15, 12
  %19 = trunc i64 %18 to i32
  %20 = sub i32 0, %7
  %21 = select i1 %17, i32 %19, i32 %20
  %22 = add i32 %7, -1
  %23 = add i32 %22, %21
  %24 = icmp ult i32 %23, %7
  %25 = select i1 %24, i32 -1, i32 %23
  %26 = tail call ptr @vma_interval_tree_iter_first(ptr noundef %11, i32 noundef %7, i32 noundef %25) #17
  %27 = icmp eq ptr %26, null
  br i1 %27, label %50, label %28

28:                                               ; preds = %28, %14
  %29 = phi ptr [ %48, %28 ], [ %26, %14 ]
  %30 = getelementptr inbounds %struct.vm_area_struct, ptr %29, i32 0, i32 13
  %31 = load i32, ptr %30, align 4
  %32 = getelementptr inbounds %struct.vm_area_struct, ptr %29, i32 0, i32 1
  %33 = load i32, ptr %32, align 4
  %34 = load i32, ptr %29, align 4
  %35 = sub i32 %33, %34
  %36 = lshr i32 %35, 12
  %37 = add i32 %31, -1
  %38 = add i32 %37, %36
  %39 = call i32 @llvm.umin.i32(i32 %38, i32 %25) #17
  %40 = call i32 @llvm.usub.sat.i32(i32 %7, i32 %31) #17
  %41 = shl i32 %40, 12
  %42 = add i32 %41, %34
  %43 = sub i32 %39, %31
  %44 = shl i32 %43, 12
  %45 = add i32 %34, 4096
  %46 = sub i32 %45, %42
  %47 = add i32 %46, %44
  call fastcc void @zap_page_range_single(ptr noundef nonnull %29, i32 noundef %42, i32 noundef %47, ptr noundef nonnull %5) #17
  %48 = call ptr @vma_interval_tree_iter_next(ptr noundef nonnull %29, i32 noundef %7, i32 noundef %25) #17
  %49 = icmp eq ptr %48, null
  br i1 %49, label %50, label %28

50:                                               ; preds = %28, %14, %4
  call void @up_write(ptr noundef %10) #17
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #17
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @do_swap_page(ptr noundef %0) local_unnamed_addr #2 {
  %2 = load ptr, ptr %0, align 4
  %3 = getelementptr inbounds %struct.vm_fault, ptr %0, i32 0, i32 7
  %4 = load ptr, ptr %3, align 4
  tail call void @kunmap_local_indexed(ptr noundef %4) #17
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !37
  %5 = tail call ptr @llvm.thread.pointer() #17
  %6 = getelementptr inbounds %struct.task_struct, ptr %5, i32 0, i32 149
  %7 = load i32, ptr %6, align 8
  %8 = add i32 %7, -1
  store i32 %8, ptr %6, align 8
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !38
  store ptr null, ptr %3, align 4
  %9 = getelementptr inbounds %struct.vm_fault, ptr %0, i32 0, i32 4
  %10 = load i32, ptr %9, align 4
  %11 = lshr i32 %10, 7
  %12 = shl i32 %10, 24
  %13 = and i32 %12, 2080374784
  %14 = or i32 %13, %11
  %15 = insertvalue [1 x i32] poison, i32 %14, 0
  %16 = icmp ult i32 %14, 2013265920
  br i1 %16, label %30, label %17, !prof !15

17:                                               ; preds = %1
  %18 = and i32 %10, 120
  %19 = icmp eq i32 %18, 120
  br i1 %19, label %20, label %27

20:                                               ; preds = %17
  %21 = getelementptr inbounds %struct.vm_area_struct, ptr %2, i32 0, i32 6
  %22 = load ptr, ptr %21, align 4
  %23 = getelementptr inbounds %struct.vm_fault, ptr %0, i32 0, i32 2
  %24 = load ptr, ptr %23, align 4
  %25 = getelementptr inbounds %struct.anon.22, ptr %0, i32 0, i32 3
  %26 = load i32, ptr %25, align 4
  tail call void @migration_entry_wait(ptr noundef %22, ptr noundef %24, i32 noundef %26) #17
  br label %440

27:                                               ; preds = %17
  %28 = getelementptr inbounds %struct.anon.22, ptr %0, i32 0, i32 3
  %29 = load i32, ptr %28, align 4
  tail call fastcc void @print_bad_pte(ptr noundef %2, i32 noundef %29, i32 noundef %10, ptr noundef null)
  br label %440

30:                                               ; preds = %1
  %31 = tail call ptr @get_swap_device([1 x i32] %15) #17
  %32 = icmp eq ptr %31, null
  br i1 %32, label %440, label %33, !prof !28

33:                                               ; preds = %30
  %34 = getelementptr inbounds %struct.anon.22, ptr %0, i32 0, i32 3
  %35 = load i32, ptr %34, align 4
  %36 = tail call ptr @lookup_swap_cache([1 x i32] %15, ptr noundef %2, i32 noundef %35) #17
  %37 = icmp eq ptr %36, null
  br i1 %37, label %38, label %129

38:                                               ; preds = %33
  %39 = getelementptr inbounds %struct.swap_info_struct, ptr %31, i32 0, i32 1
  %40 = load i32, ptr %39, align 4
  %41 = and i32 %40, 4096
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %91, label %43

43:                                               ; preds = %38
  %44 = tail call i32 @__swap_count([1 x i32] %15) #17
  %45 = icmp eq i32 %44, 1
  br i1 %45, label %46, label %91

46:                                               ; preds = %43
  %47 = tail call ptr @__alloc_pages(i32 noundef 17829066, i32 noundef 0, i32 noundef 0, ptr noundef null) #17
  %48 = icmp eq ptr %47, null
  br i1 %48, label %94, label %49

49:                                               ; preds = %46
  %50 = getelementptr inbounds %struct.page, ptr %47, i32 0, i32 1
  %51 = load volatile i32, ptr %50, align 4
  %52 = and i32 %51, 1
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %56, label %54, !prof !15

54:                                               ; preds = %49
  %55 = add i32 %51, -1
  br label %58

56:                                               ; preds = %49
  %57 = ptrtoint ptr %47 to i32
  br label %58

58:                                               ; preds = %56, %54
  %59 = phi i32 [ %55, %54 ], [ %57, %56 ]
  %60 = inttoptr i32 %59 to ptr
  %61 = load i32, ptr %60, align 4
  %62 = or i32 %61, 1
  store i32 %62, ptr %60, align 4
  %63 = load volatile i32, ptr %50, align 4
  %64 = and i32 %63, 1
  %65 = icmp eq i32 %64, 0
  br i1 %65, label %68, label %66, !prof !15

66:                                               ; preds = %58
  %67 = add i32 %63, -1
  br label %70

68:                                               ; preds = %58
  %69 = ptrtoint ptr %47 to i32
  br label %70

70:                                               ; preds = %68, %66
  %71 = phi i32 [ %67, %66 ], [ %69, %68 ]
  %72 = inttoptr i32 %71 to ptr
  %73 = load i32, ptr %72, align 4
  %74 = or i32 %73, 524288
  store i32 %74, ptr %72, align 4
  %75 = tail call ptr @get_shadow_from_swap_cache([1 x i32] %15) #17
  %76 = icmp eq ptr %75, null
  br i1 %76, label %88, label %77

77:                                               ; preds = %70
  %78 = load volatile i32, ptr %50, align 4
  %79 = and i32 %78, 1
  %80 = icmp eq i32 %79, 0
  br i1 %80, label %83, label %81, !prof !15

81:                                               ; preds = %77
  %82 = add i32 %78, -1
  br label %85

83:                                               ; preds = %77
  %84 = ptrtoint ptr %47 to i32
  br label %85

85:                                               ; preds = %83, %81
  %86 = phi i32 [ %82, %81 ], [ %84, %83 ]
  %87 = inttoptr i32 %86 to ptr
  tail call void @workingset_refault(ptr noundef %87, ptr noundef nonnull %75) #17
  br label %88

88:                                               ; preds = %85, %70
  tail call void @lru_cache_add(ptr noundef nonnull %47) #17
  %89 = getelementptr inbounds %struct.page, ptr %47, i32 0, i32 1, i32 0, i32 3
  store i32 %14, ptr %89, align 4
  %90 = tail call i32 @swap_readpage(ptr noundef nonnull %47, i1 noundef zeroext true) #17
  store i32 0, ptr %89, align 4
  br label %118

91:                                               ; preds = %43, %38
  %92 = tail call ptr @swapin_readahead([1 x i32] %15, i32 noundef 17829066, ptr noundef %0) #17
  %93 = icmp eq ptr %92, null
  br i1 %93, label %94, label %118

94:                                               ; preds = %91, %46
  %95 = getelementptr inbounds %struct.vm_fault, ptr %0, i32 0, i32 2
  %96 = load ptr, ptr %95, align 4
  %97 = load ptr, ptr @mem_map, align 4
  %98 = load i32, ptr %96, align 4
  %99 = lshr i32 %98, 12
  %100 = load i32, ptr @__pv_phys_pfn_offset, align 4
  %101 = sub i32 %99, %100
  %102 = getelementptr %struct.page, ptr %97, i32 %101, i32 1, i32 0, i32 3
  %103 = getelementptr %struct.page, ptr %97, i32 %101
  %104 = load i32, ptr @pgprot_kernel, align 4
  %105 = or i32 %104, 512
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !30
  %106 = load i32, ptr %6, align 8
  %107 = add i32 %106, 1
  store i32 %107, ptr %6, align 8
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !31
  %108 = tail call ptr @__kmap_local_page_prot(ptr noundef %103, i32 noundef %105) #17
  %109 = load i32, ptr %34, align 4
  %110 = lshr i32 %109, 12
  %111 = and i32 %110, 511
  %112 = getelementptr i32, ptr %108, i32 %111
  %113 = getelementptr inbounds %struct.vm_fault, ptr %0, i32 0, i32 8
  store ptr %102, ptr %113, align 4
  tail call void @_raw_spin_lock(ptr noundef %102) #17
  store ptr %112, ptr %3, align 4
  %114 = load i32, ptr %112, align 4
  %115 = load i32, ptr %9, align 4
  %116 = icmp eq i32 %114, %115
  %117 = zext i1 %116 to i32
  br label %334

118:                                              ; preds = %91, %88
  %119 = phi ptr [ %47, %88 ], [ %92, %91 ]
  %120 = phi ptr [ null, %88 ], [ %92, %91 ]
  %121 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #17, !srcloc !56
  %122 = tail call i32 @llvm.read_register.i32(metadata !0) #17
  %123 = inttoptr i32 %122 to ptr
  %124 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %123) #12, !srcloc !57
  %125 = add i32 %124, ptrtoint (ptr getelementptr inbounds (%struct.vm_event_state, ptr @vm_event_states, i32 0, i32 0, i32 21) to i32)
  %126 = inttoptr i32 %125 to ptr
  %127 = load i32, ptr %126, align 4
  %128 = add i32 %127, 1
  store i32 %128, ptr %126, align 4
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %121) #17, !srcloc !58
  br label %129

129:                                              ; preds = %118, %33
  %130 = phi i32 [ 4, %118 ], [ 0, %33 ]
  %131 = phi ptr [ %120, %118 ], [ %36, %33 ]
  %132 = phi ptr [ %119, %118 ], [ %36, %33 ]
  %133 = getelementptr inbounds %struct.vm_area_struct, ptr %2, i32 0, i32 6
  %134 = load ptr, ptr %133, align 4
  %135 = getelementptr inbounds %struct.vm_fault, ptr %0, i32 0, i32 1
  %136 = load i32, ptr %135, align 4
  %137 = getelementptr inbounds %struct.page, ptr %132, i32 0, i32 1
  %138 = load volatile i32, ptr %137, align 4
  %139 = and i32 %138, 1
  %140 = icmp eq i32 %139, 0
  br i1 %140, label %143, label %141, !prof !15

141:                                              ; preds = %129
  %142 = add i32 %138, -1
  br label %145

143:                                              ; preds = %129
  %144 = ptrtoint ptr %132 to i32
  br label %145

145:                                              ; preds = %143, %141
  %146 = phi i32 [ %142, %141 ], [ %144, %143 ]
  %147 = inttoptr i32 %146 to ptr
  %148 = load volatile i32, ptr %147, align 4
  %149 = and i32 %148, 1
  %150 = icmp eq i32 %149, 0
  br i1 %150, label %151, label %156

151:                                              ; preds = %145
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %147) #17, !srcloc !12
  %152 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_or\0A1:\09ldrex\09$0, [$4]\0A\09orr\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %147, ptr %147, i32 1, ptr elementtype(i32) %147) #17, !srcloc !59
  %153 = extractvalue { i32, i32, i32 } %152, 0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #17, !srcloc !60
  %154 = and i32 %153, 1
  %155 = icmp eq i32 %154, 0
  br i1 %155, label %160, label %156

156:                                              ; preds = %151, %145
  %157 = tail call zeroext i1 @__folio_lock_or_retry(ptr noundef %147, ptr noundef %134, i32 noundef %136) #17
  br i1 %157, label %160, label %158

158:                                              ; preds = %156
  %159 = or i32 %130, 1024
  br label %378

160:                                              ; preds = %156, %151
  %161 = load volatile i32, ptr %137, align 4
  %162 = and i32 %161, 1
  %163 = icmp eq i32 %162, 0
  br i1 %163, label %166, label %164, !prof !15

164:                                              ; preds = %160
  %165 = add i32 %161, -1
  br label %168

166:                                              ; preds = %160
  %167 = ptrtoint ptr %132 to i32
  br label %168

168:                                              ; preds = %166, %164
  %169 = phi i32 [ %165, %164 ], [ %167, %166 ]
  %170 = inttoptr i32 %169 to ptr
  %171 = load volatile i32, ptr %170, align 4
  %172 = and i32 %171, 524288
  %173 = icmp eq i32 %172, 0
  br i1 %173, label %182, label %174, !prof !61

174:                                              ; preds = %168
  %175 = load volatile i32, ptr %170, align 4
  %176 = and i32 %175, 1024
  %177 = icmp eq i32 %176, 0
  br i1 %177, label %182, label %178, !prof !28

178:                                              ; preds = %174
  %179 = getelementptr inbounds %struct.page, ptr %132, i32 0, i32 1, i32 0, i32 3
  %180 = load i32, ptr %179, align 4
  %181 = icmp eq i32 %180, %14
  br i1 %181, label %184, label %182, !prof !15

182:                                              ; preds = %178, %174, %168
  %183 = icmp eq ptr %131, null
  br i1 %183, label %184, label %376

184:                                              ; preds = %182, %178
  %185 = getelementptr inbounds %struct.vm_fault, ptr %0, i32 0, i32 2
  %186 = load ptr, ptr %185, align 4
  %187 = load ptr, ptr @mem_map, align 4
  %188 = load i32, ptr %186, align 4
  %189 = lshr i32 %188, 12
  %190 = load i32, ptr @__pv_phys_pfn_offset, align 4
  %191 = sub i32 %189, %190
  %192 = getelementptr %struct.page, ptr %187, i32 %191, i32 1, i32 0, i32 3
  %193 = getelementptr %struct.page, ptr %187, i32 %191
  %194 = load i32, ptr @pgprot_kernel, align 4
  %195 = or i32 %194, 512
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !30
  %196 = load i32, ptr %6, align 8
  %197 = add i32 %196, 1
  store i32 %197, ptr %6, align 8
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !31
  %198 = tail call ptr @__kmap_local_page_prot(ptr noundef %193, i32 noundef %195) #17
  %199 = load i32, ptr %34, align 4
  %200 = lshr i32 %199, 12
  %201 = and i32 %200, 511
  %202 = getelementptr i32, ptr %198, i32 %201
  %203 = getelementptr inbounds %struct.vm_fault, ptr %0, i32 0, i32 8
  store ptr %192, ptr %203, align 4
  tail call void @_raw_spin_lock(ptr noundef %192) #17
  store ptr %202, ptr %3, align 4
  %204 = load i32, ptr %202, align 4
  %205 = load i32, ptr %9, align 4
  %206 = icmp eq i32 %204, %205
  br i1 %206, label %207, label %368, !prof !15

207:                                              ; preds = %184
  %208 = load volatile i32, ptr %137, align 4
  %209 = and i32 %208, 1
  %210 = icmp eq i32 %209, 0
  br i1 %210, label %213, label %211, !prof !15

211:                                              ; preds = %207
  %212 = add i32 %208, -1
  br label %215

213:                                              ; preds = %207
  %214 = ptrtoint ptr %132 to i32
  br label %215

215:                                              ; preds = %213, %211
  %216 = phi i32 [ %212, %211 ], [ %214, %213 ]
  %217 = inttoptr i32 %216 to ptr
  %218 = load volatile i32, ptr %217, align 4
  %219 = and i32 %218, 4
  %220 = icmp eq i32 %219, 0
  br i1 %220, label %368, label %221

221:                                              ; preds = %215
  tail call void asm sideeffect "dmb ish", "~{memory}"() #17, !srcloc !62
  %222 = load ptr, ptr %133, align 4
  %223 = getelementptr inbounds %struct.task_struct, ptr %5, i32 0, i32 37
  %224 = load ptr, ptr %223, align 4
  %225 = icmp eq ptr %224, %222
  br i1 %225, label %226, label %230, !prof !15

226:                                              ; preds = %221
  %227 = getelementptr %struct.task_struct, ptr %5, i32 0, i32 40, i32 1, i32 1
  %228 = load i32, ptr %227, align 4
  %229 = add i32 %228, 1
  store i32 %229, ptr %227, align 4
  br label %232

230:                                              ; preds = %221
  tail call fastcc void @add_mm_counter(ptr noundef %222, i32 noundef 1, i32 noundef 1) #17
  %231 = load ptr, ptr %223, align 4
  br label %232

232:                                              ; preds = %230, %226
  %233 = phi ptr [ %222, %226 ], [ %231, %230 ]
  %234 = load ptr, ptr %133, align 4
  %235 = icmp eq ptr %233, %234
  br i1 %235, label %236, label %240, !prof !15

236:                                              ; preds = %232
  %237 = getelementptr %struct.task_struct, ptr %5, i32 0, i32 40, i32 1, i32 2
  %238 = load i32, ptr %237, align 4
  %239 = add i32 %238, -1
  store i32 %239, ptr %237, align 4
  br label %241

240:                                              ; preds = %232
  tail call fastcc void @add_mm_counter(ptr noundef %234, i32 noundef 2, i32 noundef -1) #17
  br label %241

241:                                              ; preds = %240, %236
  %242 = load ptr, ptr @mem_map, align 4
  %243 = ptrtoint ptr %132 to i32
  %244 = ptrtoint ptr %242 to i32
  %245 = sub i32 %243, %244
  %246 = lshr exact i32 %245, 5
  %247 = load i32, ptr @__pv_phys_pfn_offset, align 4
  %248 = add i32 %246, %247
  %249 = shl i32 %248, 12
  %250 = getelementptr inbounds %struct.vm_area_struct, ptr %2, i32 0, i32 7
  %251 = load i32, ptr %250, align 4
  %252 = or i32 %249, %251
  %253 = load i32, ptr %135, align 4
  %254 = and i32 %253, 1
  %255 = icmp eq i32 %254, 0
  br i1 %255, label %269, label %256

256:                                              ; preds = %241
  %257 = tail call zeroext i1 @reuse_swap_page(ptr noundef nonnull %132) #17
  br i1 %257, label %258, label %269

258:                                              ; preds = %256
  %259 = or i32 %252, 64
  %260 = getelementptr inbounds %struct.vm_area_struct, ptr %2, i32 0, i32 8
  %261 = load i32, ptr %260, align 4
  %262 = and i32 %261, 2
  %263 = icmp eq i32 %262, 0
  %264 = and i32 %259, -129
  %265 = select i1 %263, i32 %259, i32 %264, !prof !28
  %266 = load i32, ptr %135, align 4
  %267 = and i32 %266, -2
  store i32 %267, ptr %135, align 4
  %268 = or i32 %130, 8
  br label %269

269:                                              ; preds = %258, %256, %241
  %270 = phi i32 [ %268, %258 ], [ %130, %256 ], [ %130, %241 ]
  %271 = phi i32 [ 1, %258 ], [ 0, %256 ], [ 0, %241 ]
  %272 = phi i32 [ %265, %258 ], [ %252, %256 ], [ %252, %241 ]
  store i32 %272, ptr %9, align 4
  %273 = icmp ne ptr %132, %131
  %274 = icmp ne ptr %131, null
  %275 = and i1 %274, %273
  %276 = load i32, ptr %34, align 4
  br i1 %275, label %277, label %278, !prof !28

277:                                              ; preds = %269
  tail call void @page_add_new_anon_rmap(ptr noundef nonnull %132, ptr noundef %2, i32 noundef %276, i1 noundef zeroext false) #17
  tail call void @lru_cache_add_inactive_or_unevictable(ptr noundef nonnull %132, ptr noundef %2) #17
  br label %279

278:                                              ; preds = %269
  tail call void @do_page_add_anon_rmap(ptr noundef nonnull %132, ptr noundef %2, i32 noundef %276, i32 noundef %271) #17
  br label %279

279:                                              ; preds = %278, %277
  %280 = load ptr, ptr %133, align 4
  %281 = load i32, ptr %34, align 4
  %282 = load ptr, ptr %3, align 4
  tail call void @set_pte_at(ptr noundef %280, i32 noundef %281, ptr noundef %282, i32 noundef %272) #17
  tail call void @swap_free([1 x i32] %15) #17
  %283 = load volatile i32, ptr @nr_swap_pages, align 4
  %284 = shl i32 %283, 1
  %285 = load i32, ptr @total_swap_pages, align 4
  %286 = icmp slt i32 %284, %285
  br i1 %286, label %304, label %287

287:                                              ; preds = %279
  %288 = getelementptr inbounds %struct.vm_area_struct, ptr %2, i32 0, i32 8
  %289 = load i32, ptr %288, align 4
  %290 = and i32 %289, 8192
  %291 = icmp eq i32 %290, 0
  br i1 %291, label %292, label %304

292:                                              ; preds = %287
  %293 = load volatile i32, ptr %137, align 4
  %294 = and i32 %293, 1
  %295 = icmp eq i32 %294, 0
  br i1 %295, label %298, label %296, !prof !15

296:                                              ; preds = %292
  %297 = add i32 %293, -1
  br label %298

298:                                              ; preds = %296, %292
  %299 = phi i32 [ %297, %296 ], [ %243, %292 ]
  %300 = inttoptr i32 %299 to ptr
  %301 = load volatile i32, ptr %300, align 4
  %302 = and i32 %301, 2097152
  %303 = icmp eq i32 %302, 0
  br i1 %303, label %306, label %304

304:                                              ; preds = %298, %287, %279
  %305 = tail call i32 @try_to_free_swap(ptr noundef nonnull %132) #17
  br label %306

306:                                              ; preds = %304, %298
  tail call void @unlock_page(ptr noundef nonnull %132) #17
  br i1 %275, label %307, label %324

307:                                              ; preds = %306
  tail call void @unlock_page(ptr noundef nonnull %131) #17
  %308 = getelementptr inbounds %struct.page, ptr %131, i32 0, i32 1
  %309 = load volatile i32, ptr %308, align 4
  %310 = and i32 %309, 1
  %311 = icmp eq i32 %310, 0
  br i1 %311, label %314, label %312, !prof !15

312:                                              ; preds = %307
  %313 = add i32 %309, -1
  br label %316

314:                                              ; preds = %307
  %315 = ptrtoint ptr %131 to i32
  br label %316

316:                                              ; preds = %314, %312
  %317 = phi i32 [ %313, %312 ], [ %315, %314 ]
  %318 = inttoptr i32 %317 to ptr
  %319 = getelementptr inbounds %struct.page, ptr %318, i32 0, i32 3
  tail call void asm sideeffect "dmb ish", "~{memory}"() #17, !srcloc !34
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %319) #17, !srcloc !12
  %320 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %319, ptr %319, i32 1, ptr elementtype(i32) %319) #17, !srcloc !35
  %321 = extractvalue { i32, i32 } %320, 0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #17, !srcloc !36
  %322 = icmp eq i32 %321, 0
  br i1 %322, label %323, label %324

323:                                              ; preds = %316
  tail call void @__put_page(ptr noundef %318) #17
  br label %324

324:                                              ; preds = %323, %316, %306
  %325 = load i32, ptr %135, align 4
  %326 = and i32 %325, 1
  %327 = icmp eq i32 %326, 0
  br i1 %327, label %334, label %328

328:                                              ; preds = %324
  %329 = tail call fastcc i32 @do_wp_page(ptr noundef %0)
  %330 = or i32 %329, %270
  %331 = and i32 %329, 2163
  %332 = icmp eq i32 %331, 0
  %333 = select i1 %332, i32 %330, i32 %331
  br label %343

334:                                              ; preds = %324, %94
  %335 = phi i32 [ %117, %94 ], [ %270, %324 ]
  %336 = getelementptr inbounds %struct.vm_fault, ptr %0, i32 0, i32 8
  %337 = load ptr, ptr %336, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #17, !srcloc !22
  %338 = load i16, ptr %337, align 4
  %339 = add i16 %338, 1
  store i16 %339, ptr %337, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #17, !srcloc !23
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #17, !srcloc !24
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !25
  %340 = load ptr, ptr %3, align 4
  tail call void @kunmap_local_indexed(ptr noundef %340) #17
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !37
  %341 = load i32, ptr %6, align 8
  %342 = add i32 %341, -1
  store i32 %342, ptr %6, align 8
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !38
  br label %343

343:                                              ; preds = %334, %328
  %344 = phi i32 [ %335, %334 ], [ %333, %328 ]
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !63
  %345 = load volatile i32, ptr %31, align 4
  %346 = and i32 %345, 3
  %347 = icmp eq i32 %346, 0
  br i1 %347, label %348, label %357, !prof !15

348:                                              ; preds = %343
  %349 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #17, !srcloc !56
  %350 = tail call i32 @llvm.read_register.i32(metadata !0) #17
  %351 = inttoptr i32 %350 to ptr
  %352 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %351) #12, !srcloc !57
  %353 = add i32 %352, %345
  %354 = inttoptr i32 %353 to ptr
  %355 = load i32, ptr %354, align 4
  %356 = add i32 %355, -1
  store i32 %356, ptr %354, align 4
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %349) #17, !srcloc !58
  br label %367

357:                                              ; preds = %343
  %358 = getelementptr inbounds %struct.percpu_ref, ptr %31, i32 0, i32 1
  %359 = load ptr, ptr %358, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #17, !srcloc !34
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %359) #17, !srcloc !12
  %360 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %359, ptr %359, i32 1, ptr elementtype(i32) %359) #17, !srcloc !35
  %361 = extractvalue { i32, i32 } %360, 0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #17, !srcloc !36
  %362 = icmp eq i32 %361, 0
  br i1 %362, label %363, label %367, !prof !28

363:                                              ; preds = %357
  %364 = load ptr, ptr %358, align 4
  %365 = getelementptr inbounds %struct.percpu_ref_data, ptr %364, i32 0, i32 1
  %366 = load ptr, ptr %365, align 4
  tail call void %366(ptr noundef nonnull %31) #17
  br label %367

367:                                              ; preds = %363, %357, %348
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !64
  br label %440

368:                                              ; preds = %215, %184
  %369 = phi i32 [ %130, %184 ], [ 2, %215 ]
  %370 = load ptr, ptr %203, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #17, !srcloc !22
  %371 = load i16, ptr %370, align 4
  %372 = add i16 %371, 1
  store i16 %372, ptr %370, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #17, !srcloc !23
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #17, !srcloc !24
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !25
  %373 = load ptr, ptr %3, align 4
  tail call void @kunmap_local_indexed(ptr noundef %373) #17
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !37
  %374 = load i32, ptr %6, align 8
  %375 = add i32 %374, -1
  store i32 %375, ptr %6, align 8
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !38
  br label %376

376:                                              ; preds = %368, %182
  %377 = phi i32 [ %130, %182 ], [ %369, %368 ]
  tail call void @unlock_page(ptr noundef nonnull %132) #17
  br label %378

378:                                              ; preds = %376, %158
  %379 = phi i32 [ %377, %376 ], [ %159, %158 ]
  %380 = load volatile i32, ptr %137, align 4
  %381 = and i32 %380, 1
  %382 = icmp eq i32 %381, 0
  br i1 %382, label %385, label %383, !prof !15

383:                                              ; preds = %378
  %384 = add i32 %380, -1
  br label %387

385:                                              ; preds = %378
  %386 = ptrtoint ptr %132 to i32
  br label %387

387:                                              ; preds = %385, %383
  %388 = phi i32 [ %384, %383 ], [ %386, %385 ]
  %389 = inttoptr i32 %388 to ptr
  %390 = getelementptr inbounds %struct.page, ptr %389, i32 0, i32 3
  tail call void asm sideeffect "dmb ish", "~{memory}"() #17, !srcloc !34
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %390) #17, !srcloc !12
  %391 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %390, ptr %390, i32 1, ptr elementtype(i32) %390) #17, !srcloc !35
  %392 = extractvalue { i32, i32 } %391, 0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #17, !srcloc !36
  %393 = icmp eq i32 %392, 0
  br i1 %393, label %394, label %395

394:                                              ; preds = %387
  tail call void @__put_page(ptr noundef %389) #17
  br label %395

395:                                              ; preds = %394, %387
  %396 = icmp ne ptr %132, %131
  %397 = icmp ne ptr %131, null
  %398 = and i1 %397, %396
  br i1 %398, label %399, label %416

399:                                              ; preds = %395
  tail call void @unlock_page(ptr noundef nonnull %131) #17
  %400 = getelementptr inbounds %struct.page, ptr %131, i32 0, i32 1
  %401 = load volatile i32, ptr %400, align 4
  %402 = and i32 %401, 1
  %403 = icmp eq i32 %402, 0
  br i1 %403, label %406, label %404, !prof !15

404:                                              ; preds = %399
  %405 = add i32 %401, -1
  br label %408

406:                                              ; preds = %399
  %407 = ptrtoint ptr %131 to i32
  br label %408

408:                                              ; preds = %406, %404
  %409 = phi i32 [ %405, %404 ], [ %407, %406 ]
  %410 = inttoptr i32 %409 to ptr
  %411 = getelementptr inbounds %struct.page, ptr %410, i32 0, i32 3
  tail call void asm sideeffect "dmb ish", "~{memory}"() #17, !srcloc !34
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %411) #17, !srcloc !12
  %412 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %411, ptr %411, i32 1, ptr elementtype(i32) %411) #17, !srcloc !35
  %413 = extractvalue { i32, i32 } %412, 0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #17, !srcloc !36
  %414 = icmp eq i32 %413, 0
  br i1 %414, label %415, label %416

415:                                              ; preds = %408
  tail call void @__put_page(ptr noundef %410) #17
  br label %416

416:                                              ; preds = %415, %408, %395
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !63
  %417 = load volatile i32, ptr %31, align 4
  %418 = and i32 %417, 3
  %419 = icmp eq i32 %418, 0
  br i1 %419, label %420, label %429, !prof !15

420:                                              ; preds = %416
  %421 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #17, !srcloc !56
  %422 = tail call i32 @llvm.read_register.i32(metadata !0) #17
  %423 = inttoptr i32 %422 to ptr
  %424 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %423) #12, !srcloc !57
  %425 = add i32 %424, %417
  %426 = inttoptr i32 %425 to ptr
  %427 = load i32, ptr %426, align 4
  %428 = add i32 %427, -1
  store i32 %428, ptr %426, align 4
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %421) #17, !srcloc !58
  br label %439

429:                                              ; preds = %416
  %430 = getelementptr inbounds %struct.percpu_ref, ptr %31, i32 0, i32 1
  %431 = load ptr, ptr %430, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #17, !srcloc !34
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %431) #17, !srcloc !12
  %432 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %431, ptr %431, i32 1, ptr elementtype(i32) %431) #17, !srcloc !35
  %433 = extractvalue { i32, i32 } %432, 0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #17, !srcloc !36
  %434 = icmp eq i32 %433, 0
  br i1 %434, label %435, label %439, !prof !28

435:                                              ; preds = %429
  %436 = load ptr, ptr %430, align 4
  %437 = getelementptr inbounds %struct.percpu_ref_data, ptr %436, i32 0, i32 1
  %438 = load ptr, ptr %437, align 4
  tail call void %438(ptr noundef nonnull %31) #17
  br label %439

439:                                              ; preds = %435, %429, %420
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !64
  br label %440

440:                                              ; preds = %439, %367, %30, %27, %20
  %441 = phi i32 [ %344, %367 ], [ %379, %439 ], [ 0, %30 ], [ 2, %27 ], [ 0, %20 ]
  ret i32 %441
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @migration_entry_wait(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @get_swap_device([1 x i32]) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @lookup_swap_cache([1 x i32], ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__swap_count([1 x i32]) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @get_shadow_from_swap_cache([1 x i32]) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @workingset_refault(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @lru_cache_add(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @swap_readpage(ptr noundef, i1 noundef zeroext) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @swapin_readahead([1 x i32], i32 noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @reuse_swap_page(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @page_add_new_anon_rmap(ptr noundef, ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @lru_cache_add_inactive_or_unevictable(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @do_page_add_anon_rmap(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @set_pte_at(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @swap_free([1 x i32]) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @try_to_free_swap(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @unlock_page(ptr noundef) local_unnamed_addr #5

; Function Attrs: inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @put_page(ptr noundef %0) unnamed_addr #4 {
  %2 = getelementptr inbounds %struct.page, ptr %0, i32 0, i32 1
  %3 = load volatile i32, ptr %2, align 4
  %4 = and i32 %3, 1
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %8, label %6, !prof !15

6:                                                ; preds = %1
  %7 = add i32 %3, -1
  br label %10

8:                                                ; preds = %1
  %9 = ptrtoint ptr %0 to i32
  br label %10

10:                                               ; preds = %8, %6
  %11 = phi i32 [ %7, %6 ], [ %9, %8 ]
  %12 = inttoptr i32 %11 to ptr
  %13 = getelementptr inbounds %struct.page, ptr %12, i32 0, i32 3
  tail call void asm sideeffect "dmb ish", "~{memory}"() #17, !srcloc !34
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %13) #17, !srcloc !12
  %14 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %13, ptr %13, i32 1, ptr elementtype(i32) %13) #17, !srcloc !35
  %15 = extractvalue { i32, i32 } %14, 0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #17, !srcloc !36
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %10
  tail call void @__put_page(ptr noundef %12) #17
  br label %18

18:                                               ; preds = %17, %10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @do_wp_page(ptr noundef %0) unnamed_addr #2 {
  %2 = load ptr, ptr %0, align 4
  %3 = getelementptr inbounds %struct.vm_fault, ptr %0, i32 0, i32 7
  %4 = getelementptr inbounds %struct.anon.22, ptr %0, i32 0, i32 3
  %5 = load i32, ptr %4, align 4
  %6 = getelementptr inbounds %struct.vm_fault, ptr %0, i32 0, i32 4
  %7 = load i32, ptr %6, align 4
  %8 = lshr i32 %7, 12
  %9 = getelementptr inbounds %struct.vm_area_struct, ptr %2, i32 0, i32 8
  %10 = load i32, ptr %9, align 4
  %11 = and i32 %10, 268436480
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %33, label %13, !prof !15

13:                                               ; preds = %1
  %14 = and i32 %10, 268435456
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %19, label %16

16:                                               ; preds = %13
  %17 = tail call i32 @pfn_valid(i32 noundef %8) #17
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %40, label %42

19:                                               ; preds = %13
  %20 = load i32, ptr %2, align 4
  %21 = sub i32 %5, %20
  %22 = lshr i32 %21, 12
  %23 = getelementptr inbounds %struct.vm_area_struct, ptr %2, i32 0, i32 13
  %24 = load i32, ptr %23, align 4
  %25 = add i32 %22, %24
  %26 = icmp eq i32 %8, %25
  %27 = and i32 %10, 40
  %28 = icmp ne i32 %27, 32
  %29 = select i1 %26, i1 true, i1 %28
  %30 = load i32, ptr @zero_pfn, align 4
  %31 = icmp eq i32 %30, %8
  %32 = select i1 %29, i1 true, i1 %31
  br i1 %32, label %40, label %36

33:                                               ; preds = %1
  %34 = load i32, ptr @zero_pfn, align 4
  %35 = icmp eq i32 %34, %8
  br i1 %35, label %40, label %36

36:                                               ; preds = %33, %19
  %37 = load i32, ptr @highest_memmap_pfn, align 4
  %38 = icmp ugt i32 %8, %37
  br i1 %38, label %39, label %42, !prof !28

39:                                               ; preds = %36
  tail call fastcc void @print_bad_pte(ptr noundef %2, i32 noundef %5, i32 noundef %7, ptr noundef null) #17
  br label %40

40:                                               ; preds = %39, %33, %19, %16
  %41 = getelementptr inbounds %struct.vm_fault, ptr %0, i32 0, i32 6
  store ptr null, ptr %41, align 4
  br label %49

42:                                               ; preds = %36, %16
  %43 = load ptr, ptr @mem_map, align 4
  %44 = load i32, ptr @__pv_phys_pfn_offset, align 4
  %45 = sub i32 %8, %44
  %46 = getelementptr %struct.page, ptr %43, i32 %45
  %47 = getelementptr inbounds %struct.vm_fault, ptr %0, i32 0, i32 6
  store ptr %46, ptr %47, align 4
  %48 = icmp eq ptr %46, null
  br i1 %48, label %49, label %126

49:                                               ; preds = %42, %40
  %50 = load i32, ptr %9, align 4
  %51 = and i32 %50, 10
  %52 = icmp eq i32 %51, 10
  br i1 %52, label %53, label %115

53:                                               ; preds = %49
  %54 = load ptr, ptr %0, align 4
  %55 = getelementptr inbounds %struct.vm_area_struct, ptr %54, i32 0, i32 12
  %56 = load ptr, ptr %55, align 4
  %57 = icmp eq ptr %56, null
  br i1 %57, label %83, label %58

58:                                               ; preds = %53
  %59 = getelementptr inbounds %struct.vm_operations_struct, ptr %56, i32 0, i32 10
  %60 = load ptr, ptr %59, align 4
  %61 = icmp eq ptr %60, null
  br i1 %61, label %83, label %62

62:                                               ; preds = %58
  %63 = getelementptr inbounds %struct.vm_fault, ptr %0, i32 0, i32 8
  %64 = load ptr, ptr %63, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #17, !srcloc !22
  %65 = load i16, ptr %64, align 4
  %66 = add i16 %65, 1
  store i16 %66, ptr %64, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #17, !srcloc !23
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #17, !srcloc !24
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !25
  %67 = load ptr, ptr %3, align 4
  tail call void @kunmap_local_indexed(ptr noundef %67) #17
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !37
  %68 = tail call ptr @llvm.thread.pointer() #17
  %69 = getelementptr inbounds %struct.task_struct, ptr %68, i32 0, i32 149
  %70 = load i32, ptr %69, align 8
  %71 = add i32 %70, -1
  store i32 %71, ptr %69, align 8
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !38
  %72 = getelementptr inbounds %struct.vm_fault, ptr %0, i32 0, i32 1
  %73 = load i32, ptr %72, align 4
  %74 = or i32 %73, 2
  store i32 %74, ptr %72, align 4
  %75 = load ptr, ptr %55, align 4
  %76 = getelementptr inbounds %struct.vm_operations_struct, ptr %75, i32 0, i32 10
  %77 = load ptr, ptr %76, align 4
  %78 = tail call i32 %77(ptr noundef %0) #17
  %79 = and i32 %78, 2419
  %80 = icmp eq i32 %79, 0
  br i1 %80, label %81, label %272

81:                                               ; preds = %62
  %82 = tail call i32 @finish_mkwrite_fault(ptr noundef %0) #17
  br label %272

83:                                               ; preds = %58, %53
  %84 = load i32, ptr %4, align 4
  %85 = load i32, ptr %6, align 4
  %86 = lshr i32 %85, 12
  tail call void @flush_cache_page(ptr noundef %54, i32 noundef %84, i32 noundef %86) #17
  %87 = load i32, ptr %6, align 4
  %88 = or i32 %87, 66
  %89 = getelementptr inbounds %struct.vm_area_struct, ptr %54, i32 0, i32 8
  %90 = load i32, ptr %89, align 4
  %91 = and i32 %90, 2
  %92 = icmp eq i32 %91, 0
  %93 = and i32 %88, -129
  %94 = select i1 %92, i32 %88, i32 %93, !prof !28
  %95 = load i32, ptr %4, align 4
  %96 = load ptr, ptr %3, align 4
  %97 = tail call i32 @ptep_set_access_flags(ptr noundef %54, i32 noundef %95, ptr noundef %96, i32 noundef %94, i32 noundef 1) #17
  %98 = getelementptr inbounds %struct.vm_fault, ptr %0, i32 0, i32 8
  %99 = load ptr, ptr %98, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #17, !srcloc !22
  %100 = load i16, ptr %99, align 4
  %101 = add i16 %100, 1
  store i16 %101, ptr %99, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #17, !srcloc !23
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #17, !srcloc !24
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !25
  %102 = load ptr, ptr %3, align 4
  tail call void @kunmap_local_indexed(ptr noundef %102) #17
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !37
  %103 = tail call ptr @llvm.thread.pointer() #17
  %104 = getelementptr inbounds %struct.task_struct, ptr %103, i32 0, i32 149
  %105 = load i32, ptr %104, align 8
  %106 = add i32 %105, -1
  store i32 %106, ptr %104, align 8
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !38
  %107 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #17, !srcloc !56
  %108 = tail call i32 @llvm.read_register.i32(metadata !0) #17
  %109 = inttoptr i32 %108 to ptr
  %110 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %109) #12, !srcloc !57
  %111 = add i32 %110, ptrtoint (ptr getelementptr inbounds (%struct.vm_event_state, ptr @vm_event_states, i32 0, i32 0, i32 24) to i32)
  %112 = inttoptr i32 %111 to ptr
  %113 = load i32, ptr %112, align 4
  %114 = add i32 %113, 1
  store i32 %114, ptr %112, align 4
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %107) #17, !srcloc !58
  br label %272

115:                                              ; preds = %49
  %116 = getelementptr inbounds %struct.vm_fault, ptr %0, i32 0, i32 8
  %117 = load ptr, ptr %116, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #17, !srcloc !22
  %118 = load i16, ptr %117, align 4
  %119 = add i16 %118, 1
  store i16 %119, ptr %117, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #17, !srcloc !23
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #17, !srcloc !24
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !25
  %120 = load ptr, ptr %3, align 4
  tail call void @kunmap_local_indexed(ptr noundef %120) #17
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !37
  %121 = tail call ptr @llvm.thread.pointer() #17
  %122 = getelementptr inbounds %struct.task_struct, ptr %121, i32 0, i32 149
  %123 = load i32, ptr %122, align 8
  %124 = add i32 %123, -1
  store i32 %124, ptr %122, align 8
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !38
  %125 = tail call fastcc i32 @wp_page_copy(ptr noundef %0)
  br label %272

126:                                              ; preds = %42
  %127 = getelementptr %struct.page, ptr %43, i32 %45, i32 1
  %128 = load volatile i32, ptr %127, align 4
  %129 = and i32 %128, 1
  %130 = icmp eq i32 %129, 0
  br i1 %130, label %133, label %131, !prof !15

131:                                              ; preds = %126
  %132 = add i32 %128, -1
  br label %135

133:                                              ; preds = %126
  %134 = ptrtoint ptr %46 to i32
  br label %135

135:                                              ; preds = %133, %131
  %136 = phi i32 [ %132, %131 ], [ %134, %133 ]
  %137 = inttoptr i32 %136 to ptr
  %138 = getelementptr inbounds %struct.anon.71, ptr %137, i32 0, i32 2
  %139 = load ptr, ptr %138, align 4
  %140 = ptrtoint ptr %139 to i32
  %141 = and i32 %140, 1
  %142 = icmp eq i32 %141, 0
  br i1 %142, label %241, label %143

143:                                              ; preds = %135
  %144 = load volatile i32, ptr %127, align 4
  %145 = and i32 %144, 1
  %146 = icmp eq i32 %145, 0
  br i1 %146, label %149, label %147, !prof !15

147:                                              ; preds = %143
  %148 = add i32 %144, -1
  br label %151

149:                                              ; preds = %143
  %150 = ptrtoint ptr %46 to i32
  br label %151

151:                                              ; preds = %149, %147
  %152 = phi i32 [ %148, %147 ], [ %150, %149 ]
  %153 = inttoptr i32 %152 to ptr
  %154 = getelementptr inbounds %struct.page, ptr %153, i32 0, i32 3
  %155 = load volatile i32, ptr %154, align 4
  %156 = icmp eq i32 %155, 1
  br i1 %156, label %157, label %247

157:                                              ; preds = %151
  %158 = load volatile i32, ptr %127, align 4
  %159 = and i32 %158, 1
  %160 = icmp eq i32 %159, 0
  br i1 %160, label %163, label %161, !prof !15

161:                                              ; preds = %157
  %162 = add i32 %158, -1
  br label %165

163:                                              ; preds = %157
  %164 = ptrtoint ptr %46 to i32
  br label %165

165:                                              ; preds = %163, %161
  %166 = phi i32 [ %162, %161 ], [ %164, %163 ]
  %167 = inttoptr i32 %166 to ptr
  %168 = load volatile i32, ptr %167, align 4
  %169 = and i32 %168, 1
  %170 = icmp eq i32 %169, 0
  br i1 %170, label %171, label %247

171:                                              ; preds = %165
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %167) #17, !srcloc !12
  %172 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_or\0A1:\09ldrex\09$0, [$4]\0A\09orr\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %167, ptr %167, i32 1, ptr elementtype(i32) %167) #17, !srcloc !59
  %173 = extractvalue { i32, i32, i32 } %172, 0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #17, !srcloc !60
  %174 = and i32 %173, 1
  %175 = icmp eq i32 %174, 0
  br i1 %175, label %176, label %247

176:                                              ; preds = %171
  %177 = load volatile i32, ptr %46, align 4
  %178 = and i32 %177, 65536
  %179 = icmp eq i32 %178, 0
  br i1 %179, label %180, label %184

180:                                              ; preds = %176
  %181 = load volatile i32, ptr %127, align 4
  %182 = and i32 %181, 1
  %183 = icmp eq i32 %182, 0
  br i1 %183, label %186, label %184, !prof !15

184:                                              ; preds = %180, %176
  %185 = tail call i32 @__page_mapcount(ptr noundef nonnull %46) #17
  br label %190

186:                                              ; preds = %180
  %187 = getelementptr %struct.page, ptr %43, i32 %45, i32 2
  %188 = load volatile i32, ptr %187, align 4
  %189 = add i32 %188, 1
  br label %190

190:                                              ; preds = %186, %184
  %191 = phi i32 [ %185, %184 ], [ %189, %186 ]
  %192 = icmp eq i32 %191, 1
  br i1 %192, label %193, label %207

193:                                              ; preds = %190
  %194 = load volatile i32, ptr %127, align 4
  %195 = and i32 %194, 1
  %196 = icmp eq i32 %195, 0
  br i1 %196, label %199, label %197, !prof !15

197:                                              ; preds = %193
  %198 = add i32 %194, -1
  br label %201

199:                                              ; preds = %193
  %200 = ptrtoint ptr %46 to i32
  br label %201

201:                                              ; preds = %199, %197
  %202 = phi i32 [ %198, %197 ], [ %200, %199 ]
  %203 = inttoptr i32 %202 to ptr
  %204 = getelementptr inbounds %struct.page, ptr %203, i32 0, i32 3
  %205 = load volatile i32, ptr %204, align 4
  %206 = icmp eq i32 %205, 1
  br i1 %206, label %208, label %207

207:                                              ; preds = %201, %190
  tail call void @unlock_page(ptr noundef nonnull %46) #17
  br label %247

208:                                              ; preds = %201
  tail call void @unlock_page(ptr noundef nonnull %46) #17
  %209 = load ptr, ptr %0, align 4
  %210 = load i32, ptr %4, align 4
  %211 = load i32, ptr %6, align 4
  %212 = lshr i32 %211, 12
  tail call void @flush_cache_page(ptr noundef %209, i32 noundef %210, i32 noundef %212) #17
  %213 = load i32, ptr %6, align 4
  %214 = or i32 %213, 66
  %215 = getelementptr inbounds %struct.vm_area_struct, ptr %209, i32 0, i32 8
  %216 = load i32, ptr %215, align 4
  %217 = and i32 %216, 2
  %218 = icmp eq i32 %217, 0
  %219 = and i32 %214, -129
  %220 = select i1 %218, i32 %214, i32 %219, !prof !28
  %221 = load i32, ptr %4, align 4
  %222 = load ptr, ptr %3, align 4
  %223 = tail call i32 @ptep_set_access_flags(ptr noundef %209, i32 noundef %221, ptr noundef %222, i32 noundef %220, i32 noundef 1) #17
  %224 = getelementptr inbounds %struct.vm_fault, ptr %0, i32 0, i32 8
  %225 = load ptr, ptr %224, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #17, !srcloc !22
  %226 = load i16, ptr %225, align 4
  %227 = add i16 %226, 1
  store i16 %227, ptr %225, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #17, !srcloc !23
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #17, !srcloc !24
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !25
  %228 = load ptr, ptr %3, align 4
  tail call void @kunmap_local_indexed(ptr noundef %228) #17
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !37
  %229 = tail call ptr @llvm.thread.pointer() #17
  %230 = getelementptr inbounds %struct.task_struct, ptr %229, i32 0, i32 149
  %231 = load i32, ptr %230, align 8
  %232 = add i32 %231, -1
  store i32 %232, ptr %230, align 8
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !38
  %233 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #17, !srcloc !56
  %234 = tail call i32 @llvm.read_register.i32(metadata !0) #17
  %235 = inttoptr i32 %234 to ptr
  %236 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %235) #12, !srcloc !57
  %237 = add i32 %236, ptrtoint (ptr getelementptr inbounds (%struct.vm_event_state, ptr @vm_event_states, i32 0, i32 0, i32 24) to i32)
  %238 = inttoptr i32 %237 to ptr
  %239 = load i32, ptr %238, align 4
  %240 = add i32 %239, 1
  store i32 %240, ptr %238, align 4
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %233) #17, !srcloc !58
  br label %272

241:                                              ; preds = %135
  %242 = load i32, ptr %9, align 4
  %243 = and i32 %242, 10
  %244 = icmp eq i32 %243, 10
  br i1 %244, label %245, label %247, !prof !28

245:                                              ; preds = %241
  %246 = tail call fastcc i32 @wp_page_shared(ptr noundef %0)
  br label %272

247:                                              ; preds = %241, %207, %171, %165, %151
  %248 = load ptr, ptr %47, align 4
  %249 = getelementptr inbounds %struct.page, ptr %248, i32 0, i32 1
  %250 = load volatile i32, ptr %249, align 4
  %251 = and i32 %250, 1
  %252 = icmp eq i32 %251, 0
  br i1 %252, label %255, label %253, !prof !15

253:                                              ; preds = %247
  %254 = add i32 %250, -1
  br label %257

255:                                              ; preds = %247
  %256 = ptrtoint ptr %248 to i32
  br label %257

257:                                              ; preds = %255, %253
  %258 = phi i32 [ %254, %253 ], [ %256, %255 ]
  %259 = inttoptr i32 %258 to ptr
  %260 = getelementptr inbounds %struct.page, ptr %259, i32 0, i32 3
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %260) #17, !srcloc !12
  %261 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %260, ptr %260, i32 1, ptr elementtype(i32) %260) #17, !srcloc !18
  %262 = getelementptr inbounds %struct.vm_fault, ptr %0, i32 0, i32 8
  %263 = load ptr, ptr %262, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #17, !srcloc !22
  %264 = load i16, ptr %263, align 4
  %265 = add i16 %264, 1
  store i16 %265, ptr %263, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #17, !srcloc !23
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #17, !srcloc !24
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !25
  %266 = load ptr, ptr %3, align 4
  tail call void @kunmap_local_indexed(ptr noundef %266) #17
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !37
  %267 = tail call ptr @llvm.thread.pointer() #17
  %268 = getelementptr inbounds %struct.task_struct, ptr %267, i32 0, i32 149
  %269 = load i32, ptr %268, align 8
  %270 = add i32 %269, -1
  store i32 %270, ptr %268, align 8
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !38
  %271 = tail call fastcc i32 @wp_page_copy(ptr noundef %0)
  br label %272

272:                                              ; preds = %257, %245, %208, %115, %83, %81, %62
  %273 = phi i32 [ %271, %257 ], [ %246, %245 ], [ %125, %115 ], [ 8, %208 ], [ 8, %83 ], [ %82, %81 ], [ %78, %62 ]
  ret i32 %273
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define dso_local i32 @do_set_pmd(ptr nocapture noundef readnone %0, ptr nocapture noundef readnone %1) local_unnamed_addr #8 {
  ret i32 2048
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @do_set_pte(ptr nocapture noundef readonly %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #2 {
  %4 = load ptr, ptr %0, align 4
  %5 = getelementptr inbounds %struct.vm_fault, ptr %0, i32 0, i32 1
  %6 = load i32, ptr %5, align 4
  %7 = and i32 %6, 1
  %8 = icmp eq i32 %7, 0
  %9 = load ptr, ptr @mem_map, align 4
  %10 = ptrtoint ptr %1 to i32
  %11 = ptrtoint ptr %9 to i32
  %12 = sub i32 %10, %11
  %13 = lshr exact i32 %12, 5
  %14 = load i32, ptr @__pv_phys_pfn_offset, align 4
  %15 = add i32 %13, %14
  %16 = shl i32 %15, 12
  %17 = getelementptr inbounds %struct.vm_area_struct, ptr %4, i32 0, i32 7
  %18 = load i32, ptr %17, align 4
  %19 = or i32 %16, %18
  br i1 %8, label %60, label %20

20:                                               ; preds = %3
  %21 = or i32 %19, 64
  %22 = getelementptr inbounds %struct.vm_area_struct, ptr %4, i32 0, i32 8
  %23 = load i32, ptr %22, align 4
  %24 = and i32 %23, 2
  %25 = icmp eq i32 %24, 0
  %26 = and i32 %21, -129
  %27 = select i1 %25, i32 %21, i32 %26, !prof !28
  %28 = and i32 %23, 8
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %30, label %60

30:                                               ; preds = %20
  %31 = getelementptr inbounds %struct.vm_area_struct, ptr %4, i32 0, i32 6
  %32 = load ptr, ptr %31, align 4
  %33 = tail call ptr @llvm.thread.pointer() #17
  %34 = getelementptr inbounds %struct.task_struct, ptr %33, i32 0, i32 37
  %35 = load ptr, ptr %34, align 4
  %36 = icmp eq ptr %35, %32
  br i1 %36, label %37, label %41, !prof !15

37:                                               ; preds = %30
  %38 = getelementptr %struct.task_struct, ptr %33, i32 0, i32 40, i32 1, i32 1
  %39 = load i32, ptr %38, align 4
  %40 = add i32 %39, 1
  store i32 %40, ptr %38, align 4
  br label %59

41:                                               ; preds = %30
  %42 = getelementptr %struct.anon.7, ptr %32, i32 0, i32 40, i32 0, i32 1
  tail call void asm sideeffect "dmb ish", "~{memory}"() #17, !srcloc !11
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %42) #17, !srcloc !12
  %43 = tail call { i32, i32 } asm sideeffect "@ atomic_add_return\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %42, ptr %42, i32 1, ptr elementtype(i32) %42) #17, !srcloc !13
  %44 = extractvalue { i32, i32 } %43, 0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #17, !srcloc !14
  %45 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_rss_stat, i32 0, i32 1), align 4
  %46 = icmp sgt i32 %45, 0
  br i1 %46, label %47, label %59

47:                                               ; preds = %41
  %48 = getelementptr inbounds %struct.thread_info, ptr %33, i32 0, i32 2
  %49 = load i32, ptr %48, align 8
  %50 = lshr i32 %49, 5
  %51 = getelementptr i32, ptr @__cpu_online_mask, i32 %50
  %52 = load volatile i32, ptr %51, align 4
  %53 = and i32 %49, 31
  %54 = shl nuw i32 1, %53
  %55 = and i32 %54, %52
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %59, label %57

57:                                               ; preds = %47
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !9
  %58 = tail call i32 @__traceiter_rss_stat(ptr noundef null, ptr noundef %32, i32 noundef 1, i32 noundef %44) #17
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !10
  br label %59

59:                                               ; preds = %57, %47, %41, %37
  tail call void @page_add_new_anon_rmap(ptr noundef %1, ptr noundef %4, i32 noundef %2, i1 noundef zeroext false) #17
  tail call void @lru_cache_add_inactive_or_unevictable(ptr noundef %1, ptr noundef %4) #17
  br label %105

60:                                               ; preds = %20, %3
  %61 = phi i32 [ %27, %20 ], [ %19, %3 ]
  %62 = getelementptr inbounds %struct.vm_area_struct, ptr %4, i32 0, i32 6
  %63 = load ptr, ptr %62, align 4
  %64 = getelementptr inbounds %struct.page, ptr %1, i32 0, i32 1
  %65 = load volatile i32, ptr %64, align 4
  %66 = and i32 %65, 1
  %67 = icmp eq i32 %66, 0
  br i1 %67, label %70, label %68, !prof !15

68:                                               ; preds = %60
  %69 = add i32 %65, -1
  br label %70

70:                                               ; preds = %68, %60
  %71 = phi i32 [ %69, %68 ], [ %10, %60 ]
  %72 = inttoptr i32 %71 to ptr
  %73 = load volatile i32, ptr %72, align 4
  %74 = and i32 %73, 524288
  %75 = icmp eq i32 %74, 0
  %76 = select i1 %75, i32 0, i32 3
  %77 = tail call ptr @llvm.thread.pointer() #17
  %78 = getelementptr inbounds %struct.task_struct, ptr %77, i32 0, i32 37
  %79 = load ptr, ptr %78, align 4
  %80 = icmp eq ptr %79, %63
  br i1 %80, label %81, label %85, !prof !15

81:                                               ; preds = %70
  %82 = getelementptr %struct.task_struct, ptr %77, i32 0, i32 40, i32 1, i32 %76
  %83 = load i32, ptr %82, align 4
  %84 = add i32 %83, 1
  store i32 %84, ptr %82, align 4
  br label %104

85:                                               ; preds = %70
  %86 = getelementptr inbounds %struct.anon.7, ptr %63, i32 0, i32 40
  %87 = getelementptr [4 x %struct.atomic_t], ptr %86, i32 0, i32 %76
  tail call void asm sideeffect "dmb ish", "~{memory}"() #17, !srcloc !11
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %87) #17, !srcloc !12
  %88 = tail call { i32, i32 } asm sideeffect "@ atomic_add_return\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %87, ptr %87, i32 1, ptr elementtype(i32) %87) #17, !srcloc !13
  %89 = extractvalue { i32, i32 } %88, 0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #17, !srcloc !14
  %90 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_rss_stat, i32 0, i32 1), align 4
  %91 = icmp sgt i32 %90, 0
  br i1 %91, label %92, label %104

92:                                               ; preds = %85
  %93 = getelementptr inbounds %struct.thread_info, ptr %77, i32 0, i32 2
  %94 = load i32, ptr %93, align 8
  %95 = lshr i32 %94, 5
  %96 = getelementptr i32, ptr @__cpu_online_mask, i32 %95
  %97 = load volatile i32, ptr %96, align 4
  %98 = and i32 %94, 31
  %99 = shl nuw i32 1, %98
  %100 = and i32 %99, %97
  %101 = icmp eq i32 %100, 0
  br i1 %101, label %104, label %102

102:                                              ; preds = %92
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !9
  %103 = tail call i32 @__traceiter_rss_stat(ptr noundef null, ptr noundef %63, i32 noundef %76, i32 noundef %89) #17
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !10
  br label %104

104:                                              ; preds = %102, %92, %85, %81
  tail call void @page_add_file_rmap(ptr noundef %1, i1 noundef zeroext false) #17
  br label %105

105:                                              ; preds = %104, %59
  %106 = phi i32 [ %61, %104 ], [ %27, %59 ]
  %107 = getelementptr inbounds %struct.vm_area_struct, ptr %4, i32 0, i32 6
  %108 = load ptr, ptr %107, align 4
  %109 = getelementptr inbounds %struct.vm_fault, ptr %0, i32 0, i32 7
  %110 = load ptr, ptr %109, align 4
  tail call void @set_pte_at(ptr noundef %108, i32 noundef %2, ptr noundef %110, i32 noundef %106) #17
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @page_add_file_rmap(ptr noundef, i1 noundef zeroext) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @finish_fault(ptr nocapture noundef %0) local_unnamed_addr #2 {
  %2 = load ptr, ptr %0, align 4
  %3 = getelementptr inbounds %struct.vm_fault, ptr %0, i32 0, i32 1
  %4 = load i32, ptr %3, align 4
  %5 = and i32 %4, 1
  %6 = icmp ne i32 %5, 0
  %7 = getelementptr inbounds %struct.vm_area_struct, ptr %2, i32 0, i32 8
  %8 = load i32, ptr %7, align 4
  %9 = and i32 %8, 8
  %10 = icmp eq i32 %9, 0
  %11 = select i1 %6, i1 %10, i1 false
  %12 = getelementptr inbounds %struct.vm_fault, ptr %0, i32 0, i32 6
  %13 = getelementptr inbounds %struct.vm_fault, ptr %0, i32 0, i32 5
  %14 = select i1 %11, ptr %13, ptr %12
  %15 = load ptr, ptr %14, align 4
  %16 = and i32 %8, 8
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %26

18:                                               ; preds = %1
  %19 = getelementptr inbounds %struct.vm_area_struct, ptr %2, i32 0, i32 6
  %20 = load ptr, ptr %19, align 4
  %21 = getelementptr inbounds %struct.anon.7, ptr %20, i32 0, i32 43
  %22 = load volatile i32, ptr %21, align 4
  %23 = lshr i32 %22, 21
  %24 = and i32 %23, 2
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %100

26:                                               ; preds = %18, %1
  %27 = getelementptr inbounds %struct.vm_fault, ptr %0, i32 0, i32 2
  %28 = load ptr, ptr %27, align 4
  %29 = load i32, ptr %28, align 4
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %31, label %65

31:                                               ; preds = %26
  %32 = getelementptr inbounds %struct.vm_fault, ptr %0, i32 0, i32 9
  %33 = load ptr, ptr %32, align 4
  %34 = icmp eq ptr %33, null
  %35 = getelementptr inbounds %struct.vm_area_struct, ptr %2, i32 0, i32 6
  %36 = load ptr, ptr %35, align 4
  br i1 %34, label %62, label %37

37:                                               ; preds = %31
  %38 = getelementptr inbounds %struct.anon.7, ptr %36, i32 0, i32 14
  tail call void @_raw_spin_lock(ptr noundef %38) #17
  %39 = load i32, ptr %28, align 4
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %41, label %59, !prof !15

41:                                               ; preds = %37
  %42 = getelementptr inbounds %struct.anon.7, ptr %36, i32 0, i32 12
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %42) #17, !srcloc !12
  %43 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %42, ptr %42, i32 2048, ptr elementtype(i32) %42) #17, !srcloc !18
  tail call void asm sideeffect "dmb ishst", "~{memory}"() #17, !srcloc !19
  %44 = load ptr, ptr %32, align 4
  %45 = load i32, ptr @user_pmd_table, align 4
  %46 = load ptr, ptr @mem_map, align 4
  %47 = ptrtoint ptr %44 to i32
  %48 = ptrtoint ptr %46 to i32
  %49 = sub i32 %47, %48
  %50 = lshr exact i32 %49, 5
  %51 = load i32, ptr @__pv_phys_pfn_offset, align 4
  %52 = add i32 %50, %51
  %53 = shl i32 %52, 12
  %54 = or i32 %45, %53
  %55 = or i32 %54, 2048
  store i32 %55, ptr %28, align 4
  %56 = add i32 %55, 1024
  %57 = getelementptr i32, ptr %28, i32 1
  store i32 %56, ptr %57, align 4
  %58 = load i32, ptr getelementptr inbounds (%struct.cpu_tlb_fns, ptr @cpu_tlb, i32 0, i32 2), align 4
  tail call void asm sideeffect "tst $1, $2\0A\09mcrne p15, 0, $0, c7, c10, 1\09@ flush_pmd", "r,r,Ir,~{cc}"(ptr %28, i32 %58, i32 1073741824) #17, !srcloc !20
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #17, !srcloc !21
  store ptr null, ptr %32, align 4
  br label %59

59:                                               ; preds = %41, %37
  tail call void asm sideeffect "dmb ish", "~{memory}"() #17, !srcloc !22
  %60 = load i16, ptr %38, align 4
  %61 = add i16 %60, 1
  store i16 %61, ptr %38, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #17, !srcloc !23
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #17, !srcloc !24
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !25
  br label %65

62:                                               ; preds = %31
  %63 = tail call i32 @__pte_alloc(ptr noundef %36, ptr noundef %28)
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %65, label %100, !prof !15

65:                                               ; preds = %62, %59, %26
  %66 = load ptr, ptr %27, align 4
  %67 = load ptr, ptr @mem_map, align 4
  %68 = load i32, ptr %66, align 4
  %69 = lshr i32 %68, 12
  %70 = load i32, ptr @__pv_phys_pfn_offset, align 4
  %71 = sub i32 %69, %70
  %72 = getelementptr %struct.page, ptr %67, i32 %71, i32 1, i32 0, i32 3
  %73 = getelementptr %struct.page, ptr %67, i32 %71
  %74 = load i32, ptr @pgprot_kernel, align 4
  %75 = or i32 %74, 512
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !30
  %76 = tail call ptr @llvm.thread.pointer() #17
  %77 = getelementptr inbounds %struct.task_struct, ptr %76, i32 0, i32 149
  %78 = load i32, ptr %77, align 8
  %79 = add i32 %78, 1
  store i32 %79, ptr %77, align 8
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !31
  %80 = tail call ptr @__kmap_local_page_prot(ptr noundef %73, i32 noundef %75) #17
  %81 = getelementptr inbounds %struct.anon.22, ptr %0, i32 0, i32 3
  %82 = load i32, ptr %81, align 4
  %83 = lshr i32 %82, 12
  %84 = and i32 %83, 511
  %85 = getelementptr i32, ptr %80, i32 %84
  %86 = getelementptr inbounds %struct.vm_fault, ptr %0, i32 0, i32 8
  store ptr %72, ptr %86, align 4
  tail call void @_raw_spin_lock(ptr noundef %72) #17
  %87 = getelementptr inbounds %struct.vm_fault, ptr %0, i32 0, i32 7
  store ptr %85, ptr %87, align 4
  %88 = load i32, ptr %85, align 4
  %89 = icmp eq i32 %88, 0
  br i1 %89, label %90, label %92, !prof !15

90:                                               ; preds = %65
  %91 = load i32, ptr %81, align 4
  tail call void @do_set_pte(ptr noundef %0, ptr noundef %15, i32 noundef %91)
  br label %92

92:                                               ; preds = %90, %65
  %93 = phi i32 [ 0, %90 ], [ 256, %65 ]
  %94 = load ptr, ptr %86, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #17, !srcloc !22
  %95 = load i16, ptr %94, align 4
  %96 = add i16 %95, 1
  store i16 %96, ptr %94, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #17, !srcloc !23
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #17, !srcloc !24
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !25
  %97 = load ptr, ptr %87, align 4
  tail call void @kunmap_local_indexed(ptr noundef %97) #17
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !37
  %98 = load i32, ptr %77, align 8
  %99 = add i32 %98, -1
  store i32 %99, ptr %77, align 8
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !38
  br label %100

100:                                              ; preds = %92, %62, %18
  %101 = phi i32 [ %93, %92 ], [ %24, %18 ], [ 1, %62 ]
  ret i32 %101
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @fault_around_debugfs() #9 section ".init.text" {
  %1 = tail call ptr @debugfs_create_file_unsafe(ptr noundef nonnull @.str.13, i16 noundef zeroext 420, ptr noundef null, ptr noundef null, ptr noundef nonnull @fault_around_bytes_fops) #17
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @numa_migrate_prep(ptr noundef %0, ptr nocapture noundef readnone %1, i32 noundef %2, i32 noundef %3, ptr nocapture noundef %4) local_unnamed_addr #2 {
  %6 = getelementptr inbounds %struct.page, ptr %0, i32 0, i32 1
  %7 = load volatile i32, ptr %6, align 4
  %8 = and i32 %7, 1
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %12, label %10, !prof !15

10:                                               ; preds = %5
  %11 = add i32 %7, -1
  br label %14

12:                                               ; preds = %5
  %13 = ptrtoint ptr %0 to i32
  br label %14

14:                                               ; preds = %12, %10
  %15 = phi i32 [ %11, %10 ], [ %13, %12 ]
  %16 = inttoptr i32 %15 to ptr
  %17 = getelementptr inbounds %struct.page, ptr %16, i32 0, i32 3
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %17) #17, !srcloc !12
  %18 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %17, ptr %17, i32 1, ptr elementtype(i32) %17) #17, !srcloc !18
  %19 = icmp eq i32 %3, 0
  br i1 %19, label %20, label %23

20:                                               ; preds = %14
  %21 = load i32, ptr %4, align 4
  %22 = or i32 %21, 8
  store i32 %22, ptr %4, align 4
  br label %23

23:                                               ; preds = %20, %14
  ret i32 -1
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @handle_mm_fault(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef %3) #2 {
  %5 = alloca %struct.vm_fault, align 4
  %6 = tail call ptr @llvm.thread.pointer() #17
  %7 = getelementptr inbounds %struct.task_struct, ptr %6, i32 0, i32 1
  store volatile i32 0, ptr %7, align 8
  %8 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #17, !srcloc !56
  %9 = tail call i32 @llvm.read_register.i32(metadata !0) #17
  %10 = inttoptr i32 %9 to ptr
  %11 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %10) #12, !srcloc !57
  %12 = add i32 %11, ptrtoint (ptr getelementptr inbounds (%struct.vm_event_state, ptr @vm_event_states, i32 0, i32 0, i32 20) to i32)
  %13 = inttoptr i32 %12 to ptr
  %14 = load i32, ptr %13, align 4
  %15 = add i32 %14, 1
  store i32 %15, ptr %13, align 4
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %8) #17, !srcloc !58
  %16 = getelementptr inbounds %struct.task_struct, ptr %6, i32 0, i32 40
  %17 = load i32, ptr %16, align 8
  %18 = add i32 %17, 1
  store i32 %18, ptr %16, align 8
  %19 = icmp sgt i32 %17, 64
  br i1 %19, label %20, label %52, !prof !28

20:                                               ; preds = %4
  %21 = getelementptr inbounds %struct.task_struct, ptr %6, i32 0, i32 37
  %22 = load ptr, ptr %21, align 4
  %23 = getelementptr inbounds %struct.anon.7, ptr %22, i32 0, i32 40
  %24 = getelementptr inbounds %struct.thread_info, ptr %6, i32 0, i32 2
  br label %25

25:                                               ; preds = %48, %20
  %26 = phi i32 [ 0, %20 ], [ %49, %48 ]
  %27 = getelementptr %struct.task_struct, ptr %6, i32 0, i32 40, i32 1, i32 %26
  %28 = load i32, ptr %27, align 4
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %48, label %30

30:                                               ; preds = %25
  %31 = getelementptr [4 x %struct.atomic_t], ptr %23, i32 0, i32 %26
  tail call void asm sideeffect "dmb ish", "~{memory}"() #17, !srcloc !11
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %31) #17, !srcloc !12
  %32 = tail call { i32, i32 } asm sideeffect "@ atomic_add_return\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %31, ptr %31, i32 %28, ptr elementtype(i32) %31) #17, !srcloc !13
  %33 = extractvalue { i32, i32 } %32, 0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #17, !srcloc !14
  %34 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_rss_stat, i32 0, i32 1), align 4
  %35 = icmp sgt i32 %34, 0
  br i1 %35, label %36, label %47

36:                                               ; preds = %30
  %37 = load i32, ptr %24, align 8
  %38 = lshr i32 %37, 5
  %39 = getelementptr i32, ptr @__cpu_online_mask, i32 %38
  %40 = load volatile i32, ptr %39, align 4
  %41 = and i32 %37, 31
  %42 = shl nuw i32 1, %41
  %43 = and i32 %42, %40
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %47, label %45

45:                                               ; preds = %36
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !9
  %46 = tail call i32 @__traceiter_rss_stat(ptr noundef null, ptr noundef %22, i32 noundef %26, i32 noundef %33) #17
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !10
  br label %47

47:                                               ; preds = %45, %36, %30
  store i32 0, ptr %27, align 4
  br label %48

48:                                               ; preds = %47, %25
  %49 = add nuw nsw i32 %26, 1
  %50 = icmp eq i32 %49, 4
  br i1 %50, label %51, label %25

51:                                               ; preds = %48
  store i32 0, ptr %16, align 8
  br label %52

52:                                               ; preds = %51, %4
  call void @llvm.lifetime.start.p0(i64 52, ptr nonnull %5) #17
  %53 = getelementptr inbounds i8, ptr %5, i32 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(52) %53, i8 0, i32 48, i1 false) #17, !annotation !41
  store ptr %0, ptr %5, align 4
  %54 = getelementptr inbounds %struct.vm_area_struct, ptr %0, i32 0, i32 14
  %55 = load ptr, ptr %54, align 4
  %56 = icmp eq ptr %55, null
  br i1 %56, label %63, label %57

57:                                               ; preds = %52
  %58 = getelementptr inbounds %struct.file, ptr %55, i32 0, i32 17
  %59 = load ptr, ptr %58, align 8
  %60 = getelementptr inbounds %struct.address_space, ptr %59, i32 0, i32 3
  %61 = load i32, ptr %60, align 4
  %62 = or i32 %61, 192
  br label %63

63:                                               ; preds = %57, %52
  %64 = phi i32 [ %62, %57 ], [ 3264, %52 ]
  store i32 %64, ptr %53, align 4
  %65 = getelementptr inbounds %struct.anon.22, ptr %5, i32 0, i32 2
  %66 = load i32, ptr %0, align 4
  %67 = sub i32 %1, %66
  %68 = lshr i32 %67, 12
  %69 = getelementptr inbounds %struct.vm_area_struct, ptr %0, i32 0, i32 13
  %70 = load i32, ptr %69, align 4
  %71 = add i32 %68, %70
  store i32 %71, ptr %65, align 4
  %72 = getelementptr inbounds %struct.anon.22, ptr %5, i32 0, i32 3
  %73 = and i32 %1, -4096
  store i32 %73, ptr %72, align 4
  %74 = getelementptr inbounds %struct.vm_fault, ptr %5, i32 0, i32 1
  store i32 %2, ptr %74, align 4
  %75 = getelementptr inbounds %struct.vm_fault, ptr %5, i32 0, i32 2
  %76 = getelementptr inbounds %struct.vm_fault, ptr %5, i32 0, i32 4
  %77 = getelementptr inbounds %struct.vm_fault, ptr %5, i32 0, i32 5
  %78 = getelementptr inbounds %struct.vm_fault, ptr %5, i32 0, i32 6
  %79 = getelementptr inbounds %struct.vm_fault, ptr %5, i32 0, i32 7
  %80 = getelementptr inbounds %struct.vm_fault, ptr %5, i32 0, i32 8
  %81 = getelementptr inbounds %struct.vm_fault, ptr %5, i32 0, i32 9
  %82 = getelementptr inbounds %struct.vm_area_struct, ptr %0, i32 0, i32 6
  call void @llvm.memset.p0.i64(ptr noundef align 4 dereferenceable(32) %75, i8 0, i64 32, i1 false) #17
  %83 = load ptr, ptr %82, align 4
  %84 = getelementptr inbounds %struct.anon.7, ptr %83, i32 0, i32 8
  %85 = load ptr, ptr %84, align 4
  %86 = lshr i32 %1, 21
  %87 = getelementptr [2 x i32], ptr %85, i32 %86
  %88 = icmp eq ptr %87, null
  br i1 %88, label %647, label %89

89:                                               ; preds = %63
  %90 = getelementptr inbounds %struct.vm_fault, ptr %5, i32 0, i32 3
  store ptr %87, ptr %90, align 4
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !65
  store ptr %87, ptr %75, align 4
  %91 = load i32, ptr %87, align 4
  store i32 %91, ptr %76, align 4
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !66
  %92 = load i32, ptr %87, align 4
  %93 = icmp eq i32 %92, 0
  br i1 %93, label %114, label %94, !prof !28

94:                                               ; preds = %89
  %95 = load ptr, ptr @mem_map, align 4
  %96 = lshr i32 %92, 12
  %97 = load i32, ptr @__pv_phys_pfn_offset, align 4
  %98 = sub i32 %96, %97
  %99 = getelementptr %struct.page, ptr %95, i32 %98
  %100 = load i32, ptr @pgprot_kernel, align 4
  %101 = or i32 %100, 512
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !30
  %102 = getelementptr inbounds %struct.task_struct, ptr %6, i32 0, i32 149
  %103 = load i32, ptr %102, align 8
  %104 = add i32 %103, 1
  store i32 %104, ptr %102, align 8
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !31
  %105 = tail call ptr @__kmap_local_page_prot(ptr noundef %99, i32 noundef %101) #17
  %106 = lshr i32 %1, 12
  %107 = and i32 %106, 511
  %108 = getelementptr i32, ptr %105, i32 %107
  store ptr %108, ptr %79, align 4
  %109 = load i32, ptr %108, align 4
  store i32 %109, ptr %76, align 4
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !67
  %110 = icmp eq i32 %109, 0
  br i1 %110, label %111, label %115

111:                                              ; preds = %94
  tail call void @kunmap_local_indexed(ptr noundef %108) #17
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !37
  %112 = load i32, ptr %102, align 8
  %113 = add i32 %112, -1
  store i32 %113, ptr %102, align 8
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !38
  br label %114

114:                                              ; preds = %111, %89
  store ptr null, ptr %79, align 4
  br label %117

115:                                              ; preds = %94
  %116 = icmp eq ptr %108, null
  br i1 %116, label %117, label %608

117:                                              ; preds = %115, %114
  %118 = getelementptr inbounds %struct.vm_area_struct, ptr %0, i32 0, i32 12
  %119 = load ptr, ptr %118, align 4
  %120 = icmp eq ptr %119, null
  br i1 %120, label %121, label %289

121:                                              ; preds = %117
  %122 = getelementptr inbounds %struct.vm_area_struct, ptr %0, i32 0, i32 8
  %123 = load i32, ptr %122, align 4
  %124 = and i32 %123, 8
  %125 = icmp eq i32 %124, 0
  br i1 %125, label %126, label %647

126:                                              ; preds = %121
  %127 = load i32, ptr %87, align 4
  %128 = icmp eq i32 %127, 0
  br i1 %128, label %129, label %133, !prof !28

129:                                              ; preds = %126
  %130 = load ptr, ptr %82, align 4
  %131 = tail call i32 @__pte_alloc(ptr noundef %130, ptr noundef nonnull %87) #17
  %132 = icmp eq i32 %131, 0
  br i1 %132, label %133, label %647

133:                                              ; preds = %129, %126
  %134 = and i32 %2, 1
  %135 = icmp eq i32 %134, 0
  br i1 %135, label %136, label %167

136:                                              ; preds = %133
  %137 = load i32, ptr @zero_pfn, align 4
  %138 = getelementptr inbounds %struct.vm_area_struct, ptr %0, i32 0, i32 7
  %139 = load i32, ptr %138, align 4
  %140 = load ptr, ptr @mem_map, align 4
  %141 = load i32, ptr %87, align 4
  %142 = lshr i32 %141, 12
  %143 = load i32, ptr @__pv_phys_pfn_offset, align 4
  %144 = sub i32 %142, %143
  %145 = getelementptr %struct.page, ptr %140, i32 %144, i32 1, i32 0, i32 3
  %146 = getelementptr %struct.page, ptr %140, i32 %144
  %147 = load i32, ptr @pgprot_kernel, align 4
  %148 = or i32 %147, 512
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !30
  %149 = getelementptr inbounds %struct.task_struct, ptr %6, i32 0, i32 149
  %150 = load i32, ptr %149, align 8
  %151 = add i32 %150, 1
  store i32 %151, ptr %149, align 8
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !31
  %152 = tail call ptr @__kmap_local_page_prot(ptr noundef %146, i32 noundef %148) #17
  %153 = lshr i32 %1, 12
  %154 = and i32 %153, 511
  %155 = getelementptr i32, ptr %152, i32 %154
  store ptr %145, ptr %80, align 4
  tail call void @_raw_spin_lock(ptr noundef %145) #17
  store ptr %155, ptr %79, align 4
  %156 = load i32, ptr %155, align 4
  %157 = icmp eq i32 %156, 0
  br i1 %157, label %158, label %265

158:                                              ; preds = %136
  %159 = shl i32 %137, 12
  %160 = or i32 %159, %139
  %161 = load ptr, ptr %82, align 4
  %162 = getelementptr inbounds %struct.anon.7, ptr %161, i32 0, i32 43
  %163 = load volatile i32, ptr %162, align 4
  %164 = lshr i32 %163, 21
  %165 = and i32 %164, 2
  %166 = icmp eq i32 %165, 0
  br i1 %166, label %259, label %265

167:                                              ; preds = %133
  %168 = getelementptr inbounds %struct.vm_area_struct, ptr %0, i32 0, i32 11
  %169 = load ptr, ptr %168, align 4
  %170 = icmp eq ptr %169, null
  br i1 %170, label %171, label %174, !prof !28

171:                                              ; preds = %167
  %172 = tail call i32 @__anon_vma_prepare(ptr noundef %0) #17
  %173 = icmp eq i32 %172, 0
  br i1 %173, label %174, label %647, !prof !15

174:                                              ; preds = %171, %167
  %175 = tail call ptr @__alloc_pages(i32 noundef 17829066, i32 noundef 0, i32 noundef 0, ptr noundef null) #17
  %176 = icmp eq ptr %175, null
  br i1 %176, label %647, label %177

177:                                              ; preds = %174
  %178 = load ptr, ptr @cpu_user, align 4
  tail call void %178(ptr noundef nonnull %175, i32 noundef %73) #17
  %179 = getelementptr inbounds %struct.page, ptr %175, i32 0, i32 1
  %180 = load volatile i32, ptr %179, align 4
  tail call void asm sideeffect "dmb ishst", "~{memory}"() #17, !srcloc !33
  %181 = load i32, ptr %175, align 4
  %182 = or i32 %181, 4
  store i32 %182, ptr %175, align 4
  %183 = load ptr, ptr @mem_map, align 4
  %184 = ptrtoint ptr %175 to i32
  %185 = ptrtoint ptr %183 to i32
  %186 = sub i32 %184, %185
  %187 = lshr exact i32 %186, 5
  %188 = load i32, ptr @__pv_phys_pfn_offset, align 4
  %189 = add i32 %187, %188
  %190 = shl i32 %189, 12
  %191 = getelementptr inbounds %struct.vm_area_struct, ptr %0, i32 0, i32 7
  %192 = load i32, ptr %191, align 4
  %193 = or i32 %190, %192
  %194 = load i32, ptr %122, align 4
  %195 = and i32 %194, 2
  %196 = icmp eq i32 %195, 0
  %197 = and i32 %193, -193
  %198 = or i32 %197, 64
  %199 = select i1 %196, i32 %193, i32 %198
  %200 = load ptr, ptr %75, align 4
  %201 = load i32, ptr %200, align 4
  %202 = lshr i32 %201, 12
  %203 = sub i32 %202, %188
  %204 = getelementptr %struct.page, ptr %183, i32 %203, i32 1, i32 0, i32 3
  %205 = getelementptr %struct.page, ptr %183, i32 %203
  %206 = load i32, ptr @pgprot_kernel, align 4
  %207 = or i32 %206, 512
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !30
  %208 = getelementptr inbounds %struct.task_struct, ptr %6, i32 0, i32 149
  %209 = load i32, ptr %208, align 8
  %210 = add i32 %209, 1
  store i32 %210, ptr %208, align 8
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !31
  %211 = tail call ptr @__kmap_local_page_prot(ptr noundef %205, i32 noundef %207) #17
  %212 = load i32, ptr %72, align 4
  %213 = lshr i32 %212, 12
  %214 = and i32 %213, 511
  %215 = getelementptr i32, ptr %211, i32 %214
  store ptr %204, ptr %80, align 4
  tail call void @_raw_spin_lock(ptr noundef %204) #17
  store ptr %215, ptr %79, align 4
  %216 = load i32, ptr %215, align 4
  %217 = icmp eq i32 %216, 0
  br i1 %217, label %218, label %274

218:                                              ; preds = %177
  %219 = load ptr, ptr %82, align 4
  %220 = getelementptr inbounds %struct.anon.7, ptr %219, i32 0, i32 43
  %221 = load volatile i32, ptr %220, align 4
  %222 = lshr i32 %221, 21
  %223 = and i32 %222, 2
  %224 = icmp eq i32 %223, 0
  br i1 %224, label %225, label %274

225:                                              ; preds = %218
  %226 = getelementptr inbounds %struct.task_struct, ptr %6, i32 0, i32 37
  %227 = load ptr, ptr %226, align 4
  %228 = icmp eq ptr %227, %219
  br i1 %228, label %229, label %236, !prof !15

229:                                              ; preds = %225
  %230 = getelementptr %struct.task_struct, ptr %6, i32 0, i32 40, i32 1, i32 1
  %231 = load i32, ptr %230, align 4
  %232 = add i32 %231, 1
  store i32 %232, ptr %230, align 4
  %233 = load i32, ptr %72, align 4
  %234 = load ptr, ptr %79, align 4
  %235 = load ptr, ptr %80, align 4
  br label %254

236:                                              ; preds = %225
  %237 = getelementptr %struct.anon.7, ptr %219, i32 0, i32 40, i32 0, i32 1
  tail call void asm sideeffect "dmb ish", "~{memory}"() #17, !srcloc !11
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %237) #17, !srcloc !12
  %238 = tail call { i32, i32 } asm sideeffect "@ atomic_add_return\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %237, ptr %237, i32 1, ptr elementtype(i32) %237) #17, !srcloc !13
  %239 = extractvalue { i32, i32 } %238, 0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #17, !srcloc !14
  %240 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_rss_stat, i32 0, i32 1), align 4
  %241 = icmp sgt i32 %240, 0
  br i1 %241, label %242, label %254

242:                                              ; preds = %236
  %243 = getelementptr inbounds %struct.thread_info, ptr %6, i32 0, i32 2
  %244 = load i32, ptr %243, align 8
  %245 = lshr i32 %244, 5
  %246 = getelementptr i32, ptr @__cpu_online_mask, i32 %245
  %247 = load volatile i32, ptr %246, align 4
  %248 = and i32 %244, 31
  %249 = shl nuw i32 1, %248
  %250 = and i32 %249, %247
  %251 = icmp eq i32 %250, 0
  br i1 %251, label %254, label %252

252:                                              ; preds = %242
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !9
  %253 = tail call i32 @__traceiter_rss_stat(ptr noundef null, ptr noundef %219, i32 noundef 1, i32 noundef %239) #17
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !10
  br label %254

254:                                              ; preds = %252, %242, %236, %229
  %255 = phi ptr [ %235, %229 ], [ %204, %236 ], [ %204, %242 ], [ %204, %252 ]
  %256 = phi ptr [ %234, %229 ], [ %215, %236 ], [ %215, %242 ], [ %215, %252 ]
  %257 = phi i32 [ %233, %229 ], [ %212, %236 ], [ %212, %242 ], [ %212, %252 ]
  tail call void @page_add_new_anon_rmap(ptr noundef nonnull %175, ptr noundef %0, i32 noundef %257, i1 noundef zeroext false) #17
  tail call void @lru_cache_add_inactive_or_unevictable(ptr noundef nonnull %175, ptr noundef %0) #17
  %258 = load ptr, ptr %82, align 4
  br label %259

259:                                              ; preds = %254, %158
  %260 = phi ptr [ %255, %254 ], [ %145, %158 ]
  %261 = phi i32 [ %257, %254 ], [ %73, %158 ]
  %262 = phi ptr [ %256, %254 ], [ %155, %158 ]
  %263 = phi ptr [ %258, %254 ], [ %161, %158 ]
  %264 = phi i32 [ %199, %254 ], [ %160, %158 ]
  tail call void @set_pte_at(ptr noundef %263, i32 noundef %261, ptr noundef %262, i32 noundef %264) #17
  br label %265

265:                                              ; preds = %288, %281, %259, %158, %136
  %266 = phi ptr [ %260, %259 ], [ %145, %158 ], [ %145, %136 ], [ %204, %281 ], [ %204, %288 ]
  %267 = phi i32 [ 0, %259 ], [ %165, %158 ], [ 0, %136 ], [ %275, %281 ], [ %275, %288 ]
  tail call void asm sideeffect "dmb ish", "~{memory}"() #17, !srcloc !22
  %268 = load i16, ptr %266, align 4
  %269 = add i16 %268, 1
  store i16 %269, ptr %266, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #17, !srcloc !23
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #17, !srcloc !24
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !25
  %270 = load ptr, ptr %79, align 4
  tail call void @kunmap_local_indexed(ptr noundef %270) #17
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !37
  %271 = getelementptr inbounds %struct.task_struct, ptr %6, i32 0, i32 149
  %272 = load i32, ptr %271, align 8
  %273 = add i32 %272, -1
  store i32 %273, ptr %271, align 8
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !38
  br label %649

274:                                              ; preds = %218, %177
  %275 = phi i32 [ %223, %218 ], [ 0, %177 ]
  %276 = load volatile i32, ptr %179, align 4
  %277 = and i32 %276, 1
  %278 = icmp eq i32 %277, 0
  br i1 %278, label %281, label %279, !prof !15

279:                                              ; preds = %274
  %280 = add i32 %276, -1
  br label %281

281:                                              ; preds = %279, %274
  %282 = phi i32 [ %280, %279 ], [ %184, %274 ]
  %283 = inttoptr i32 %282 to ptr
  %284 = getelementptr inbounds %struct.page, ptr %283, i32 0, i32 3
  tail call void asm sideeffect "dmb ish", "~{memory}"() #17, !srcloc !34
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %284) #17, !srcloc !12
  %285 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %284, ptr %284, i32 1, ptr elementtype(i32) %284) #17, !srcloc !35
  %286 = extractvalue { i32, i32 } %285, 0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #17, !srcloc !36
  %287 = icmp eq i32 %286, 0
  br i1 %287, label %288, label %265

288:                                              ; preds = %281
  tail call void @__put_page(ptr noundef %283) #17
  br label %265

289:                                              ; preds = %117
  %290 = getelementptr inbounds %struct.vm_operations_struct, ptr %119, i32 0, i32 5
  %291 = load ptr, ptr %290, align 4
  %292 = icmp eq ptr %291, null
  br i1 %292, label %293, label %320

293:                                              ; preds = %289
  %294 = load i32, ptr %87, align 4
  %295 = icmp eq i32 %294, 0
  br i1 %295, label %600, label %296, !prof !28

296:                                              ; preds = %293
  %297 = load ptr, ptr @mem_map, align 4
  %298 = lshr i32 %294, 12
  %299 = load i32, ptr @__pv_phys_pfn_offset, align 4
  %300 = sub i32 %298, %299
  %301 = getelementptr %struct.page, ptr %297, i32 %300, i32 1, i32 0, i32 3
  %302 = getelementptr %struct.page, ptr %297, i32 %300
  %303 = load i32, ptr @pgprot_kernel, align 4
  %304 = or i32 %303, 512
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !30
  %305 = getelementptr inbounds %struct.task_struct, ptr %6, i32 0, i32 149
  %306 = load i32, ptr %305, align 8
  %307 = add i32 %306, 1
  store i32 %307, ptr %305, align 8
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !31
  %308 = tail call ptr @__kmap_local_page_prot(ptr noundef %302, i32 noundef %304) #17
  %309 = lshr i32 %1, 12
  %310 = and i32 %309, 511
  %311 = getelementptr i32, ptr %308, i32 %310
  store ptr %301, ptr %80, align 4
  tail call void @_raw_spin_lock(ptr noundef %301) #17
  store ptr %311, ptr %79, align 4
  %312 = load i32, ptr %311, align 4
  %313 = icmp eq i32 %312, 0
  %314 = select i1 %313, i32 2, i32 256, !prof !28
  tail call void asm sideeffect "dmb ish", "~{memory}"() #17, !srcloc !22
  %315 = load i16, ptr %301, align 4
  %316 = add i16 %315, 1
  store i16 %316, ptr %301, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #17, !srcloc !23
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #17, !srcloc !24
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !25
  %317 = load ptr, ptr %79, align 4
  tail call void @kunmap_local_indexed(ptr noundef %317) #17
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !37
  %318 = load i32, ptr %305, align 8
  %319 = add i32 %318, -1
  store i32 %319, ptr %305, align 8
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !38
  br label %600

320:                                              ; preds = %289
  %321 = and i32 %2, 1
  %322 = icmp eq i32 %321, 0
  br i1 %322, label %323, label %415

323:                                              ; preds = %320
  %324 = getelementptr inbounds %struct.vm_operations_struct, ptr %119, i32 0, i32 7
  %325 = load ptr, ptr %324, align 4
  %326 = icmp ne ptr %325, null
  %327 = load i32, ptr @fault_around_bytes, align 4
  %328 = icmp ugt i32 %327, 8191
  %329 = select i1 %326, i1 %328, i1 false
  br i1 %329, label %330, label %387

330:                                              ; preds = %323
  %331 = load volatile i32, ptr @fault_around_bytes, align 4
  %332 = lshr i32 %331, 12
  %333 = and i32 %331, -4096
  %334 = sub i32 0, %333
  %335 = and i32 %334, %1
  %336 = load i32, ptr %0, align 4
  %337 = tail call i32 @llvm.umax.i32(i32 %335, i32 %336) #17
  %338 = sub i32 %73, %337
  %339 = lshr i32 %338, 12
  %340 = and i32 %339, 511
  %341 = sub i32 %71, %340
  %342 = lshr i32 %337, 12
  %343 = and i32 %342, 511
  %344 = xor i32 %343, 511
  %345 = add i32 %341, %344
  %346 = getelementptr inbounds %struct.vm_area_struct, ptr %0, i32 0, i32 1
  %347 = load i32, ptr %346, align 4
  %348 = sub i32 %347, %336
  %349 = lshr i32 %348, 12
  %350 = load i32, ptr %69, align 4
  %351 = add i32 %350, -1
  %352 = add i32 %351, %349
  %353 = tail call i32 @llvm.umin.i32(i32 %345, i32 %352) #17
  %354 = add nsw i32 %332, -1
  %355 = add i32 %354, %341
  %356 = tail call i32 @llvm.umin.i32(i32 %353, i32 %355) #17
  %357 = load i32, ptr %87, align 4
  %358 = icmp eq i32 %357, 0
  br i1 %358, label %359, label %383

359:                                              ; preds = %330
  %360 = tail call ptr @__alloc_pages(i32 noundef 4197826, i32 noundef 0, i32 noundef 0, ptr noundef null) #17
  %361 = icmp eq ptr %360, null
  br i1 %361, label %647, label %362

362:                                              ; preds = %359
  %363 = getelementptr inbounds %struct.page, ptr %360, i32 0, i32 1, i32 0, i32 3
  store i32 0, ptr %363, align 4
  %364 = getelementptr inbounds %struct.page, ptr %360, i32 0, i32 2
  %365 = load i32, ptr %364, align 4
  %366 = and i32 %365, -513
  store i32 %366, ptr %364, align 4
  tail call void @mod_node_page_state(ptr noundef nonnull @contig_page_data, i32 noundef 38, i32 noundef 1) #17
  %367 = load i32, ptr %360, align 4
  %368 = lshr i32 %367, 30
  %369 = icmp eq i32 %368, 2
  br i1 %369, label %379, label %370

370:                                              ; preds = %362
  %371 = icmp ne i32 %368, 3
  %372 = load i32, ptr @movable_zone, align 4
  %373 = icmp ne i32 %372, 2
  %374 = select i1 %371, i1 true, i1 %373
  br i1 %374, label %375, label %379

375:                                              ; preds = %370
  %376 = tail call ptr @page_address(ptr noundef nonnull %360) #17
  %377 = load ptr, ptr getelementptr inbounds (%struct.processor, ptr @processor, i32 0, i32 7), align 4
  %378 = getelementptr i32, ptr %376, i32 512
  tail call void %377(ptr noundef %378, i32 noundef 2048) #17
  br label %379

379:                                              ; preds = %375, %370, %362
  store ptr %360, ptr %81, align 4
  %380 = load ptr, ptr %118, align 4
  %381 = getelementptr inbounds %struct.vm_operations_struct, ptr %380, i32 0, i32 7
  %382 = load ptr, ptr %381, align 4
  br label %383

383:                                              ; preds = %379, %330
  %384 = phi ptr [ %382, %379 ], [ %325, %330 ]
  %385 = call i32 %384(ptr noundef nonnull %5, i32 noundef %341, i32 noundef %356) #17
  %386 = icmp eq i32 %385, 0
  br i1 %386, label %387, label %600

387:                                              ; preds = %383, %323
  %388 = call fastcc i32 @__do_fault(ptr noundef nonnull %5) #17
  %389 = and i32 %388, 3443
  %390 = icmp eq i32 %389, 0
  br i1 %390, label %391, label %600, !prof !15

391:                                              ; preds = %387
  %392 = call i32 @finish_fault(ptr noundef nonnull %5) #17
  %393 = or i32 %392, %388
  %394 = load ptr, ptr %78, align 4
  call void @unlock_page(ptr noundef %394) #17
  %395 = and i32 %393, 3443
  %396 = icmp eq i32 %395, 0
  br i1 %396, label %600, label %397, !prof !15

397:                                              ; preds = %391
  %398 = load ptr, ptr %78, align 4
  %399 = getelementptr inbounds %struct.page, ptr %398, i32 0, i32 1
  %400 = load volatile i32, ptr %399, align 4
  %401 = and i32 %400, 1
  %402 = icmp eq i32 %401, 0
  br i1 %402, label %405, label %403, !prof !15

403:                                              ; preds = %397
  %404 = add i32 %400, -1
  br label %407

405:                                              ; preds = %397
  %406 = ptrtoint ptr %398 to i32
  br label %407

407:                                              ; preds = %405, %403
  %408 = phi i32 [ %404, %403 ], [ %406, %405 ]
  %409 = inttoptr i32 %408 to ptr
  %410 = getelementptr inbounds %struct.page, ptr %409, i32 0, i32 3
  call void asm sideeffect "dmb ish", "~{memory}"() #17, !srcloc !34
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %410) #17, !srcloc !12
  %411 = call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %410, ptr %410, i32 1, ptr elementtype(i32) %410) #17, !srcloc !35
  %412 = extractvalue { i32, i32 } %411, 0
  call void asm sideeffect "dmb ish", "~{memory}"() #17, !srcloc !36
  %413 = icmp eq i32 %412, 0
  br i1 %413, label %414, label %600

414:                                              ; preds = %407
  call void @__put_page(ptr noundef %409) #17
  br label %600

415:                                              ; preds = %320
  %416 = getelementptr inbounds %struct.vm_area_struct, ptr %0, i32 0, i32 8
  %417 = load i32, ptr %416, align 4
  %418 = and i32 %417, 8
  %419 = icmp eq i32 %418, 0
  br i1 %419, label %420, label %489

420:                                              ; preds = %415
  %421 = getelementptr inbounds %struct.vm_area_struct, ptr %0, i32 0, i32 11
  %422 = load ptr, ptr %421, align 4
  %423 = icmp eq ptr %422, null
  br i1 %423, label %424, label %427, !prof !28

424:                                              ; preds = %420
  %425 = tail call i32 @__anon_vma_prepare(ptr noundef %0) #17
  %426 = icmp eq i32 %425, 0
  br i1 %426, label %427, label %600, !prof !15

427:                                              ; preds = %424, %420
  %428 = tail call ptr @__alloc_pages(i32 noundef 17829066, i32 noundef 0, i32 noundef 0, ptr noundef null) #17
  store ptr %428, ptr %77, align 4
  %429 = icmp eq ptr %428, null
  br i1 %429, label %600, label %430

430:                                              ; preds = %427
  %431 = getelementptr inbounds %struct.page, ptr %428, i32 0, i32 1
  %432 = load volatile i32, ptr %431, align 4
  %433 = call fastcc i32 @__do_fault(ptr noundef nonnull %5) #17
  %434 = and i32 %433, 3443
  %435 = icmp eq i32 %434, 0
  br i1 %435, label %436, label %470, !prof !15

436:                                              ; preds = %430
  %437 = and i32 %433, 4096
  %438 = icmp eq i32 %437, 0
  br i1 %438, label %439, label %600

439:                                              ; preds = %436
  %440 = load ptr, ptr getelementptr inbounds (%struct.cpu_user_fns, ptr @cpu_user, i32 0, i32 1), align 4
  %441 = load ptr, ptr %77, align 4
  %442 = load ptr, ptr %78, align 4
  %443 = load i32, ptr %72, align 4
  call void %440(ptr noundef %441, ptr noundef %442, i32 noundef %443, ptr noundef %0) #17
  %444 = load ptr, ptr %77, align 4
  call void asm sideeffect "dmb ishst", "~{memory}"() #17, !srcloc !33
  %445 = load i32, ptr %444, align 4
  %446 = or i32 %445, 4
  store i32 %446, ptr %444, align 4
  %447 = call i32 @finish_fault(ptr noundef nonnull %5) #17
  %448 = or i32 %447, %433
  %449 = load ptr, ptr %78, align 4
  call void @unlock_page(ptr noundef %449) #17
  %450 = load ptr, ptr %78, align 4
  %451 = getelementptr inbounds %struct.page, ptr %450, i32 0, i32 1
  %452 = load volatile i32, ptr %451, align 4
  %453 = and i32 %452, 1
  %454 = icmp eq i32 %453, 0
  br i1 %454, label %457, label %455, !prof !15

455:                                              ; preds = %439
  %456 = add i32 %452, -1
  br label %459

457:                                              ; preds = %439
  %458 = ptrtoint ptr %450 to i32
  br label %459

459:                                              ; preds = %457, %455
  %460 = phi i32 [ %456, %455 ], [ %458, %457 ]
  %461 = inttoptr i32 %460 to ptr
  %462 = getelementptr inbounds %struct.page, ptr %461, i32 0, i32 3
  call void asm sideeffect "dmb ish", "~{memory}"() #17, !srcloc !34
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %462) #17, !srcloc !12
  %463 = call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %462, ptr %462, i32 1, ptr elementtype(i32) %462) #17, !srcloc !35
  %464 = extractvalue { i32, i32 } %463, 0
  call void asm sideeffect "dmb ish", "~{memory}"() #17, !srcloc !36
  %465 = icmp eq i32 %464, 0
  br i1 %465, label %466, label %467

466:                                              ; preds = %459
  call void @__put_page(ptr noundef %461) #17
  br label %467

467:                                              ; preds = %466, %459
  %468 = and i32 %448, 3443
  %469 = icmp eq i32 %468, 0
  br i1 %469, label %600, label %470, !prof !15

470:                                              ; preds = %467, %430
  %471 = phi i32 [ %433, %430 ], [ %448, %467 ]
  %472 = load ptr, ptr %77, align 4
  %473 = getelementptr inbounds %struct.page, ptr %472, i32 0, i32 1
  %474 = load volatile i32, ptr %473, align 4
  %475 = and i32 %474, 1
  %476 = icmp eq i32 %475, 0
  br i1 %476, label %479, label %477, !prof !15

477:                                              ; preds = %470
  %478 = add i32 %474, -1
  br label %481

479:                                              ; preds = %470
  %480 = ptrtoint ptr %472 to i32
  br label %481

481:                                              ; preds = %479, %477
  %482 = phi i32 [ %478, %477 ], [ %480, %479 ]
  %483 = inttoptr i32 %482 to ptr
  %484 = getelementptr inbounds %struct.page, ptr %483, i32 0, i32 3
  call void asm sideeffect "dmb ish", "~{memory}"() #17, !srcloc !34
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %484) #17, !srcloc !12
  %485 = call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %484, ptr %484, i32 1, ptr elementtype(i32) %484) #17, !srcloc !35
  %486 = extractvalue { i32, i32 } %485, 0
  call void asm sideeffect "dmb ish", "~{memory}"() #17, !srcloc !36
  %487 = icmp eq i32 %486, 0
  br i1 %487, label %488, label %600

488:                                              ; preds = %481
  call void @__put_page(ptr noundef %483) #17
  br label %600

489:                                              ; preds = %415
  %490 = call fastcc i32 @__do_fault(ptr noundef nonnull %5) #17
  %491 = and i32 %490, 3443
  %492 = icmp eq i32 %491, 0
  br i1 %492, label %493, label %600, !prof !15

493:                                              ; preds = %489
  %494 = load ptr, ptr %118, align 4
  %495 = getelementptr inbounds %struct.vm_operations_struct, ptr %494, i32 0, i32 9
  %496 = load ptr, ptr %495, align 4
  %497 = icmp eq ptr %496, null
  br i1 %497, label %573, label %498

498:                                              ; preds = %493
  %499 = load ptr, ptr %78, align 4
  call void @unlock_page(ptr noundef %499) #17
  %500 = load ptr, ptr %78, align 4
  %501 = load i32, ptr %74, align 4
  store i32 3, ptr %74, align 4
  %502 = load ptr, ptr %5, align 4
  %503 = getelementptr inbounds %struct.vm_area_struct, ptr %502, i32 0, i32 14
  %504 = load ptr, ptr %503, align 4
  %505 = icmp eq ptr %504, null
  br i1 %505, label %514, label %506

506:                                              ; preds = %498
  %507 = getelementptr inbounds %struct.file, ptr %504, i32 0, i32 17
  %508 = load ptr, ptr %507, align 8
  %509 = load ptr, ptr %508, align 4
  %510 = getelementptr inbounds %struct.inode, ptr %509, i32 0, i32 4
  %511 = load i32, ptr %510, align 4
  %512 = and i32 %511, 256
  %513 = icmp eq i32 %512, 0
  br i1 %513, label %514, label %554

514:                                              ; preds = %506, %498
  %515 = getelementptr inbounds %struct.vm_area_struct, ptr %502, i32 0, i32 12
  %516 = load ptr, ptr %515, align 4
  %517 = getelementptr inbounds %struct.vm_operations_struct, ptr %516, i32 0, i32 9
  %518 = load ptr, ptr %517, align 4
  %519 = call i32 %518(ptr noundef nonnull %5) #17
  store i32 %501, ptr %74, align 4
  %520 = and i32 %519, 2931
  %521 = icmp eq i32 %520, 0
  br i1 %521, label %522, label %550, !prof !68

522:                                              ; preds = %514
  %523 = getelementptr inbounds %struct.page, ptr %500, i32 0, i32 1
  %524 = load volatile i32, ptr %523, align 4
  %525 = and i32 %524, 1
  %526 = icmp eq i32 %525, 0
  br i1 %526, label %529, label %527, !prof !15

527:                                              ; preds = %522
  %528 = add i32 %524, -1
  br label %531

529:                                              ; preds = %522
  %530 = ptrtoint ptr %500 to i32
  br label %531

531:                                              ; preds = %529, %527
  %532 = phi i32 [ %528, %527 ], [ %530, %529 ]
  %533 = inttoptr i32 %532 to ptr
  %534 = load volatile i32, ptr %533, align 4
  %535 = and i32 %534, 1
  %536 = icmp eq i32 %535, 0
  br i1 %536, label %537, label %542

537:                                              ; preds = %531
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %533) #17, !srcloc !12
  %538 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_or\0A1:\09ldrex\09$0, [$4]\0A\09orr\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %533, ptr %533, i32 1, ptr elementtype(i32) %533) #17, !srcloc !59
  %539 = extractvalue { i32, i32, i32 } %538, 0
  call void asm sideeffect "dmb ish", "~{memory}"() #17, !srcloc !60
  %540 = and i32 %539, 1
  %541 = icmp eq i32 %540, 0
  br i1 %541, label %543, label %542

542:                                              ; preds = %537, %531
  call void @__folio_lock(ptr noundef %533) #17
  br label %543

543:                                              ; preds = %542, %537
  %544 = getelementptr inbounds %struct.page, ptr %500, i32 0, i32 1, i32 0, i32 1
  %545 = load ptr, ptr %544, align 4
  %546 = icmp eq ptr %545, null
  br i1 %546, label %547, label %548

547:                                              ; preds = %543
  call void @unlock_page(ptr noundef %500) #17
  br label %554

548:                                              ; preds = %543
  %549 = or i32 %519, 512
  br label %550

550:                                              ; preds = %548, %514
  %551 = phi i32 [ %519, %514 ], [ %549, %548 ]
  %552 = and i32 %551, 2419
  %553 = icmp eq i32 %552, 0
  br i1 %553, label %573, label %554, !prof !15

554:                                              ; preds = %550, %547, %506
  %555 = phi i32 [ %551, %550 ], [ 2, %506 ], [ 0, %547 ]
  %556 = load ptr, ptr %78, align 4
  %557 = getelementptr inbounds %struct.page, ptr %556, i32 0, i32 1
  %558 = load volatile i32, ptr %557, align 4
  %559 = and i32 %558, 1
  %560 = icmp eq i32 %559, 0
  br i1 %560, label %563, label %561, !prof !15

561:                                              ; preds = %554
  %562 = add i32 %558, -1
  br label %565

563:                                              ; preds = %554
  %564 = ptrtoint ptr %556 to i32
  br label %565

565:                                              ; preds = %563, %561
  %566 = phi i32 [ %562, %561 ], [ %564, %563 ]
  %567 = inttoptr i32 %566 to ptr
  %568 = getelementptr inbounds %struct.page, ptr %567, i32 0, i32 3
  call void asm sideeffect "dmb ish", "~{memory}"() #17, !srcloc !34
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %568) #17, !srcloc !12
  %569 = call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %568, ptr %568, i32 1, ptr elementtype(i32) %568) #17, !srcloc !35
  %570 = extractvalue { i32, i32 } %569, 0
  call void asm sideeffect "dmb ish", "~{memory}"() #17, !srcloc !36
  %571 = icmp eq i32 %570, 0
  br i1 %571, label %572, label %600

572:                                              ; preds = %565
  call void @__put_page(ptr noundef %567) #17
  br label %600

573:                                              ; preds = %550, %493
  %574 = call i32 @finish_fault(ptr noundef nonnull %5) #17
  %575 = or i32 %574, %490
  %576 = and i32 %575, 3443
  %577 = icmp eq i32 %576, 0
  br i1 %577, label %597, label %578, !prof !15

578:                                              ; preds = %573
  %579 = load ptr, ptr %78, align 4
  call void @unlock_page(ptr noundef %579) #17
  %580 = load ptr, ptr %78, align 4
  %581 = getelementptr inbounds %struct.page, ptr %580, i32 0, i32 1
  %582 = load volatile i32, ptr %581, align 4
  %583 = and i32 %582, 1
  %584 = icmp eq i32 %583, 0
  br i1 %584, label %587, label %585, !prof !15

585:                                              ; preds = %578
  %586 = add i32 %582, -1
  br label %589

587:                                              ; preds = %578
  %588 = ptrtoint ptr %580 to i32
  br label %589

589:                                              ; preds = %587, %585
  %590 = phi i32 [ %586, %585 ], [ %588, %587 ]
  %591 = inttoptr i32 %590 to ptr
  %592 = getelementptr inbounds %struct.page, ptr %591, i32 0, i32 3
  call void asm sideeffect "dmb ish", "~{memory}"() #17, !srcloc !34
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %592) #17, !srcloc !12
  %593 = call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %592, ptr %592, i32 1, ptr elementtype(i32) %592) #17, !srcloc !35
  %594 = extractvalue { i32, i32 } %593, 0
  call void asm sideeffect "dmb ish", "~{memory}"() #17, !srcloc !36
  %595 = icmp eq i32 %594, 0
  br i1 %595, label %596, label %600

596:                                              ; preds = %589
  call void @__put_page(ptr noundef %591) #17
  br label %600

597:                                              ; preds = %573
  %598 = call fastcc i32 @fault_dirty_shared_page(ptr noundef nonnull %5) #17
  %599 = or i32 %598, %575
  br label %600

600:                                              ; preds = %597, %596, %589, %572, %565, %489, %488, %481, %467, %436, %427, %424, %414, %407, %391, %387, %383, %296, %293
  %601 = phi i32 [ %555, %572 ], [ %555, %565 ], [ %490, %489 ], [ %599, %597 ], [ %448, %467 ], [ %433, %436 ], [ 1, %427 ], [ 1, %424 ], [ %393, %391 ], [ %388, %387 ], [ %385, %383 ], [ 2, %293 ], [ %314, %296 ], [ %393, %407 ], [ %393, %414 ], [ %471, %481 ], [ %471, %488 ], [ %575, %589 ], [ %575, %596 ]
  %602 = load ptr, ptr %81, align 4
  %603 = icmp eq ptr %602, null
  br i1 %603, label %649, label %604

604:                                              ; preds = %600
  %605 = getelementptr inbounds %struct.page, ptr %602, i32 0, i32 2
  %606 = load i32, ptr %605, align 4
  %607 = or i32 %606, 512
  store i32 %607, ptr %605, align 4
  call void @mod_node_page_state(ptr noundef nonnull @contig_page_data, i32 noundef 38, i32 noundef -1) #17
  call void @__free_pages(ptr noundef nonnull %602, i32 noundef 0) #17
  br label %649

608:                                              ; preds = %115
  %609 = and i32 %109, 1
  %610 = icmp eq i32 %609, 0
  br i1 %610, label %611, label %613

611:                                              ; preds = %608
  %612 = call i32 @do_swap_page(ptr noundef nonnull %5) #17
  br label %649

613:                                              ; preds = %608
  %614 = load ptr, ptr @mem_map, align 4
  %615 = load i32, ptr %87, align 4
  %616 = lshr i32 %615, 12
  %617 = load i32, ptr @__pv_phys_pfn_offset, align 4
  %618 = sub i32 %616, %617
  %619 = getelementptr %struct.page, ptr %614, i32 %618, i32 1, i32 0, i32 3
  store ptr %619, ptr %80, align 4
  tail call void @_raw_spin_lock(ptr noundef %619) #17
  %620 = load i32, ptr %108, align 4
  %621 = icmp eq i32 %620, %109
  br i1 %621, label %622, label %641, !prof !15

622:                                              ; preds = %613
  %623 = and i32 %2, 1
  %624 = icmp eq i32 %623, 0
  br i1 %624, label %632, label %625

625:                                              ; preds = %622
  %626 = and i32 %109, 128
  %627 = icmp eq i32 %626, 0
  br i1 %627, label %630, label %628

628:                                              ; preds = %625
  %629 = call fastcc i32 @do_wp_page(ptr noundef nonnull %5) #17
  br label %649

630:                                              ; preds = %625
  %631 = or i32 %109, 64
  br label %632

632:                                              ; preds = %630, %622
  %633 = phi i32 [ %631, %630 ], [ %109, %622 ]
  %634 = or i32 %633, 2
  %635 = tail call i32 @ptep_set_access_flags(ptr noundef %0, i32 noundef %73, ptr noundef nonnull %108, i32 noundef %634, i32 noundef %623) #17
  %636 = icmp eq i32 %635, 0
  %637 = and i32 %2, 33
  %638 = icmp eq i32 %637, 1
  %639 = and i1 %638, %636
  br i1 %639, label %640, label %641

640:                                              ; preds = %632
  tail call void @flush_tlb_page(ptr noundef %0, i32 noundef %73) #17
  br label %641

641:                                              ; preds = %640, %632, %613
  tail call void asm sideeffect "dmb ish", "~{memory}"() #17, !srcloc !22
  %642 = load i16, ptr %619, align 4
  %643 = add i16 %642, 1
  store i16 %643, ptr %619, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #17, !srcloc !23
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #17, !srcloc !24
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !25
  %644 = load ptr, ptr %79, align 4
  tail call void @kunmap_local_indexed(ptr noundef %644) #17
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !37
  %645 = load i32, ptr %102, align 8
  %646 = add i32 %645, -1
  store i32 %646, ptr %102, align 8
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !38
  call void @llvm.lifetime.end.p0(i64 52, ptr nonnull %5) #17
  br label %653

647:                                              ; preds = %359, %174, %171, %129, %121, %63
  %648 = phi i32 [ 1, %174 ], [ 1, %171 ], [ 1, %129 ], [ 2, %121 ], [ 1, %63 ], [ 1, %359 ]
  call void @llvm.lifetime.end.p0(i64 52, ptr nonnull %5) #17
  br label %678

649:                                              ; preds = %628, %611, %604, %600, %265
  %650 = phi i32 [ %629, %628 ], [ %612, %611 ], [ %267, %265 ], [ %601, %600 ], [ %601, %604 ]
  call void @llvm.lifetime.end.p0(i64 52, ptr nonnull %5) #17
  %651 = and i32 %650, 3187
  %652 = icmp eq i32 %651, 0
  br i1 %652, label %653, label %678

653:                                              ; preds = %649, %641
  %654 = phi i32 [ 0, %641 ], [ %650, %649 ]
  %655 = and i32 %654, 4
  %656 = and i32 %2, 32
  %657 = or i32 %655, %656
  %658 = icmp eq i32 %657, 0
  br i1 %658, label %659, label %664

659:                                              ; preds = %653
  %660 = getelementptr inbounds %struct.task_struct, ptr %6, i32 0, i32 78
  %661 = load i32, ptr %660, align 16
  %662 = add i32 %661, 1
  store i32 %662, ptr %660, align 16
  %663 = icmp eq ptr %3, null
  br i1 %663, label %678, label %672

664:                                              ; preds = %653
  %665 = getelementptr inbounds %struct.task_struct, ptr %6, i32 0, i32 79
  %666 = load i32, ptr %665, align 4
  %667 = add i32 %666, 1
  store i32 %667, ptr %665, align 4
  %668 = icmp eq ptr %3, null
  br i1 %668, label %678, label %669

669:                                              ; preds = %664
  %670 = load volatile i32, ptr getelementptr inbounds ([12 x %struct.static_key], ptr @perf_swevent_enabled, i32 0, i32 6), align 4
  %671 = icmp sgt i32 %670, 0
  br i1 %671, label %675, label %678

672:                                              ; preds = %659
  %673 = load volatile i32, ptr getelementptr inbounds ([12 x %struct.static_key], ptr @perf_swevent_enabled, i32 0, i32 5), align 4
  %674 = icmp sgt i32 %673, 0
  br i1 %674, label %675, label %678

675:                                              ; preds = %672, %669
  %676 = phi i32 [ 6, %669 ], [ 5, %672 ]
  %677 = zext i32 %1 to i64
  call void @__perf_sw_event(i32 noundef %676, i64 noundef 1, ptr noundef nonnull %3, i64 noundef %677) #17
  br label %678

678:                                              ; preds = %675, %672, %669, %664, %659, %649, %647
  %679 = phi i32 [ %648, %647 ], [ %650, %649 ], [ %654, %659 ], [ %654, %664 ], [ %654, %669 ], [ %654, %672 ], [ %654, %675 ]
  ret i32 %679
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @follow_invalidate_pte(ptr nocapture noundef readonly %0, i32 noundef %1, ptr noundef writeonly %2, ptr nocapture noundef writeonly %3, ptr nocapture readnone %4, ptr nocapture noundef %5) local_unnamed_addr #2 {
  %7 = getelementptr inbounds %struct.anon.7, ptr %0, i32 0, i32 8
  %8 = load ptr, ptr %7, align 4
  %9 = lshr i32 %1, 21
  %10 = getelementptr [2 x i32], ptr %8, i32 %9
  %11 = load i32, ptr %10, align 4
  %12 = icmp ne i32 %11, 0
  %13 = and i32 %11, 2
  %14 = icmp eq i32 %13, 0
  %15 = and i1 %12, %14
  br i1 %15, label %16, label %51, !prof !69

16:                                               ; preds = %6
  %17 = icmp eq ptr %2, null
  br i1 %17, label %23, label %18

18:                                               ; preds = %16
  %19 = and i32 %1, -4096
  %20 = add i32 %19, 4096
  store i32 %19, ptr %2, align 4
  %21 = getelementptr inbounds %struct.mmu_notifier_range, ptr %2, i32 0, i32 1
  store i32 %20, ptr %21, align 4
  %22 = load i32, ptr %10, align 4
  br label %23

23:                                               ; preds = %18, %16
  %24 = phi i32 [ %22, %18 ], [ %11, %16 ]
  %25 = load ptr, ptr @mem_map, align 4
  %26 = lshr i32 %24, 12
  %27 = load i32, ptr @__pv_phys_pfn_offset, align 4
  %28 = sub i32 %26, %27
  %29 = getelementptr %struct.page, ptr %25, i32 %28, i32 1, i32 0, i32 3
  %30 = getelementptr %struct.page, ptr %25, i32 %28
  %31 = load i32, ptr @pgprot_kernel, align 4
  %32 = or i32 %31, 512
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !30
  %33 = tail call ptr @llvm.thread.pointer() #17
  %34 = getelementptr inbounds %struct.task_struct, ptr %33, i32 0, i32 149
  %35 = load i32, ptr %34, align 8
  %36 = add i32 %35, 1
  store i32 %36, ptr %34, align 8
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !31
  %37 = tail call ptr @__kmap_local_page_prot(ptr noundef %30, i32 noundef %32) #17
  %38 = lshr i32 %1, 12
  %39 = and i32 %38, 511
  %40 = getelementptr i32, ptr %37, i32 %39
  store ptr %29, ptr %5, align 4
  tail call void @_raw_spin_lock(ptr noundef %29) #17
  %41 = load i32, ptr %40, align 4
  %42 = and i32 %41, 1
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %45, label %44

44:                                               ; preds = %23
  store ptr %40, ptr %3, align 4
  br label %51

45:                                               ; preds = %23
  %46 = load ptr, ptr %5, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #17, !srcloc !22
  %47 = load i16, ptr %46, align 4
  %48 = add i16 %47, 1
  store i16 %48, ptr %46, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #17, !srcloc !23
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #17, !srcloc !24
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !25
  tail call void @kunmap_local_indexed(ptr noundef %40) #17
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !37
  %49 = load i32, ptr %34, align 8
  %50 = add i32 %49, -1
  store i32 %50, ptr %34, align 8
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !38
  br label %51

51:                                               ; preds = %45, %44, %6
  %52 = phi i32 [ 0, %44 ], [ -22, %6 ], [ -22, %45 ]
  ret i32 %52
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @follow_pte(ptr nocapture noundef readonly %0, i32 noundef %1, ptr nocapture noundef writeonly %2, ptr nocapture noundef %3) #2 {
  %5 = tail call i32 @follow_invalidate_pte(ptr noundef %0, i32 noundef %1, ptr noundef null, ptr noundef %2, ptr undef, ptr noundef %3)
  ret i32 %5
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @follow_pfn(ptr nocapture noundef readonly %0, i32 noundef %1, ptr nocapture noundef writeonly %2) #2 {
  %4 = alloca ptr, align 4
  %5 = alloca ptr, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #17
  store ptr null, ptr %4, align 4, !annotation !41
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #17
  store ptr null, ptr %5, align 4, !annotation !41
  %6 = getelementptr inbounds %struct.vm_area_struct, ptr %0, i32 0, i32 8
  %7 = load i32, ptr %6, align 4
  %8 = and i32 %7, 17408
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %26, label %10

10:                                               ; preds = %3
  %11 = getelementptr inbounds %struct.vm_area_struct, ptr %0, i32 0, i32 6
  %12 = load ptr, ptr %11, align 4
  %13 = call i32 @follow_invalidate_pte(ptr noundef %12, i32 noundef %1, ptr noundef null, ptr noundef nonnull %5, ptr undef, ptr noundef nonnull %4) #17
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %26

15:                                               ; preds = %10
  %16 = load ptr, ptr %5, align 4
  %17 = load i32, ptr %16, align 4
  %18 = lshr i32 %17, 12
  store i32 %18, ptr %2, align 4
  %19 = load ptr, ptr %4, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #17, !srcloc !22
  %20 = load i16, ptr %19, align 4
  %21 = add i16 %20, 1
  store i16 %21, ptr %19, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #17, !srcloc !23
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #17, !srcloc !24
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !25
  tail call void @kunmap_local_indexed(ptr noundef %16) #17
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !37
  %22 = tail call ptr @llvm.thread.pointer() #17
  %23 = getelementptr inbounds %struct.task_struct, ptr %22, i32 0, i32 149
  %24 = load i32, ptr %23, align 8
  %25 = add i32 %24, -1
  store i32 %25, ptr %23, align 8
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !38
  br label %26

26:                                               ; preds = %15, %10, %3
  %27 = phi i32 [ 0, %15 ], [ -22, %3 ], [ %13, %10 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #17
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #17
  ret i32 %27
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__access_remote_vm(ptr noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #2 {
  %6 = alloca ptr, align 4
  %7 = alloca ptr, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #17
  store ptr null, ptr %6, align 4, !annotation !41
  %8 = and i32 %4, 1
  %9 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_mmap_lock_start_locking, i32 0, i32 1), align 4
  %10 = icmp sgt i32 %9, 0
  br i1 %10, label %11, label %12

11:                                               ; preds = %5
  tail call void @__mmap_lock_do_trace_start_locking(ptr noundef %0, i1 noundef zeroext false) #17
  br label %12

12:                                               ; preds = %11, %5
  %13 = getelementptr inbounds %struct.anon.7, ptr %0, i32 0, i32 15
  %14 = tail call i32 @down_read_killable(ptr noundef %13) #17
  %15 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_mmap_lock_acquire_returned, i32 0, i32 1), align 4
  %16 = icmp sgt i32 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %12
  %18 = icmp eq i32 %14, 0
  tail call void @__mmap_lock_do_trace_acquire_returned(ptr noundef %0, i1 noundef zeroext false, i1 noundef zeroext %18) #17
  br label %19

19:                                               ; preds = %17, %12
  %20 = icmp eq i32 %14, 0
  br i1 %20, label %21, label %103

21:                                               ; preds = %19
  %22 = icmp eq i32 %3, 0
  br i1 %22, label %94, label %23

23:                                               ; preds = %21
  %24 = icmp eq i32 %8, 0
  br label %25

25:                                               ; preds = %89, %23
  %26 = phi i32 [ %1, %23 ], [ %92, %89 ]
  %27 = phi i32 [ %3, %23 ], [ %90, %89 ]
  %28 = phi ptr [ %2, %23 ], [ %91, %89 ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #17
  store ptr null, ptr %7, align 4
  %29 = call i32 @get_user_pages_remote(ptr noundef %0, i32 noundef %26, i32 noundef 1, i32 noundef %4, ptr noundef nonnull %7, ptr noundef nonnull %6, ptr noundef null) #17
  %30 = icmp slt i32 %29, 1
  br i1 %30, label %31, label %32

31:                                               ; preds = %25
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #17
  br label %94

32:                                               ; preds = %25
  %33 = and i32 %26, 4095
  %34 = sub nuw nsw i32 4096, %33
  %35 = call i32 @llvm.umin.i32(i32 %27, i32 %34)
  %36 = load ptr, ptr %7, align 4
  %37 = load i32, ptr %36, align 4
  %38 = lshr i32 %37, 30
  %39 = icmp eq i32 %38, 2
  br i1 %39, label %47, label %40

40:                                               ; preds = %32
  %41 = icmp ne i32 %38, 3
  %42 = load i32, ptr @movable_zone, align 4
  %43 = icmp ne i32 %42, 2
  %44 = select i1 %41, i1 true, i1 %43
  br i1 %44, label %45, label %47

45:                                               ; preds = %40
  %46 = call ptr @page_address(ptr noundef %36) #17
  br label %49

47:                                               ; preds = %40, %32
  %48 = call ptr @kmap_high(ptr noundef %36) #17
  br label %49

49:                                               ; preds = %47, %45
  %50 = phi ptr [ %48, %47 ], [ %46, %45 ]
  br i1 %24, label %57, label %51

51:                                               ; preds = %49
  %52 = load ptr, ptr %6, align 4
  %53 = load ptr, ptr %7, align 4
  %54 = getelementptr i8, ptr %50, i32 %33
  call void @copy_to_user_page(ptr noundef %52, ptr noundef %53, i32 noundef %26, ptr noundef %54, ptr noundef %28, i32 noundef %35) #17
  %55 = load ptr, ptr %7, align 4
  %56 = call i32 @set_page_dirty_lock(ptr noundef %55) #17
  br label %59

57:                                               ; preds = %49
  %58 = getelementptr i8, ptr %50, i32 %33
  call void @llvm.memcpy.p0.p0.i32(ptr align 1 %28, ptr align 1 %58, i32 %35, i1 false)
  br label %59

59:                                               ; preds = %57, %51
  %60 = load ptr, ptr %7, align 4
  %61 = load i32, ptr %60, align 4
  %62 = lshr i32 %61, 30
  %63 = icmp eq i32 %62, 2
  br i1 %63, label %69, label %64

64:                                               ; preds = %59
  %65 = icmp ne i32 %62, 3
  %66 = load i32, ptr @movable_zone, align 4
  %67 = icmp ne i32 %66, 2
  %68 = select i1 %65, i1 true, i1 %67
  br i1 %68, label %71, label %69

69:                                               ; preds = %64, %59
  call void @kunmap_high(ptr noundef %60) #17
  %70 = load ptr, ptr %7, align 4
  br label %71

71:                                               ; preds = %69, %64
  %72 = phi ptr [ %60, %64 ], [ %70, %69 ]
  %73 = getelementptr inbounds %struct.page, ptr %72, i32 0, i32 1
  %74 = load volatile i32, ptr %73, align 4
  %75 = and i32 %74, 1
  %76 = icmp eq i32 %75, 0
  br i1 %76, label %79, label %77, !prof !15

77:                                               ; preds = %71
  %78 = add i32 %74, -1
  br label %81

79:                                               ; preds = %71
  %80 = ptrtoint ptr %72 to i32
  br label %81

81:                                               ; preds = %79, %77
  %82 = phi i32 [ %78, %77 ], [ %80, %79 ]
  %83 = inttoptr i32 %82 to ptr
  %84 = getelementptr inbounds %struct.page, ptr %83, i32 0, i32 3
  call void asm sideeffect "dmb ish", "~{memory}"() #17, !srcloc !34
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %84) #17, !srcloc !12
  %85 = call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %84, ptr %84, i32 1, ptr elementtype(i32) %84) #17, !srcloc !35
  %86 = extractvalue { i32, i32 } %85, 0
  call void asm sideeffect "dmb ish", "~{memory}"() #17, !srcloc !36
  %87 = icmp eq i32 %86, 0
  br i1 %87, label %88, label %89

88:                                               ; preds = %81
  call void @__put_page(ptr noundef %83) #17
  br label %89

89:                                               ; preds = %88, %81
  %90 = sub i32 %27, %35
  %91 = getelementptr i8, ptr %28, i32 %35
  %92 = add i32 %35, %26
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #17
  %93 = icmp eq i32 %90, 0
  br i1 %93, label %94, label %25

94:                                               ; preds = %89, %31, %21
  %95 = phi ptr [ %28, %31 ], [ %2, %21 ], [ %91, %89 ]
  %96 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_mmap_lock_released, i32 0, i32 1), align 4
  %97 = icmp sgt i32 %96, 0
  br i1 %97, label %98, label %99

98:                                               ; preds = %94
  call void @__mmap_lock_do_trace_released(ptr noundef %0, i1 noundef zeroext false) #17
  br label %99

99:                                               ; preds = %98, %94
  call void @up_read(ptr noundef %13) #17
  %100 = ptrtoint ptr %95 to i32
  %101 = ptrtoint ptr %2 to i32
  %102 = sub i32 %100, %101
  br label %103

103:                                              ; preds = %99, %19
  %104 = phi i32 [ %102, %99 ], [ 0, %19 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #17
  ret i32 %104
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @get_user_pages_remote(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @copy_to_user_page(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @set_page_dirty_lock(ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @access_remote_vm(ptr noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #2 {
  %6 = tail call i32 @__access_remote_vm(ptr noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef %4)
  ret i32 %6
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @access_process_vm(ptr noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef %4) #2 {
  %6 = tail call ptr @get_task_mm(ptr noundef %0) #17
  %7 = icmp eq ptr %6, null
  br i1 %7, label %10, label %8

8:                                                ; preds = %5
  %9 = tail call i32 @__access_remote_vm(ptr noundef nonnull %6, i32 noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef %4)
  tail call void @mmput(ptr noundef nonnull %6) #17
  br label %10

10:                                               ; preds = %8, %5
  %11 = phi i32 [ %9, %8 ], [ 0, %5 ]
  ret i32 %11
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @get_task_mm(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @mmput(ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @print_vma_addr(ptr noundef %0, i32 noundef %1) local_unnamed_addr #2 {
  %3 = tail call ptr @llvm.thread.pointer() #17
  %4 = getelementptr inbounds %struct.task_struct, ptr %3, i32 0, i32 37
  %5 = load ptr, ptr %4, align 4
  %6 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_mmap_lock_start_locking, i32 0, i32 1), align 4
  %7 = icmp sgt i32 %6, 0
  br i1 %7, label %8, label %9

8:                                                ; preds = %2
  tail call void @__mmap_lock_do_trace_start_locking(ptr noundef %5, i1 noundef zeroext false) #17
  br label %9

9:                                                ; preds = %8, %2
  %10 = getelementptr inbounds %struct.anon.7, ptr %5, i32 0, i32 15
  %11 = tail call i32 @down_read_trylock(ptr noundef %10) #17
  %12 = icmp ne i32 %11, 0
  %13 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_mmap_lock_acquire_returned, i32 0, i32 1), align 4
  %14 = icmp sgt i32 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %9
  tail call void @__mmap_lock_do_trace_acquire_returned(ptr noundef %5, i1 noundef zeroext false, i1 noundef zeroext %12) #17
  br label %16

16:                                               ; preds = %15, %9
  br i1 %12, label %17, label %46

17:                                               ; preds = %16
  %18 = tail call ptr @find_vma(ptr noundef %5, i32 noundef %1) #17
  %19 = icmp eq ptr %18, null
  br i1 %19, label %41, label %20

20:                                               ; preds = %17
  %21 = getelementptr inbounds %struct.vm_area_struct, ptr %18, i32 0, i32 14
  %22 = load ptr, ptr %21, align 4
  %23 = icmp eq ptr %22, null
  br i1 %23, label %41, label %24

24:                                               ; preds = %20
  %25 = tail call i32 @__get_free_pages(i32 noundef 2048, i32 noundef 0) #17
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %41, label %27

27:                                               ; preds = %24
  %28 = inttoptr i32 %25 to ptr
  %29 = tail call ptr @file_path(ptr noundef nonnull %22, ptr noundef nonnull %28, i32 noundef 4096) #17
  %30 = icmp ugt ptr %29, inttoptr (i32 -4096 to ptr)
  %31 = select i1 %30, ptr @.str.1, ptr %29
  %32 = tail call ptr @strrchr(ptr noundef %31, i32 noundef 47) #17
  %33 = icmp eq ptr %32, null
  %34 = getelementptr i8, ptr %32, i32 1
  %35 = select i1 %33, ptr %31, ptr %34
  %36 = load i32, ptr %18, align 4
  %37 = getelementptr inbounds %struct.vm_area_struct, ptr %18, i32 0, i32 1
  %38 = load i32, ptr %37, align 4
  %39 = sub i32 %38, %36
  %40 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, ptr noundef %0, ptr noundef %35, i32 noundef %36, i32 noundef %39) #19
  tail call void @free_pages(i32 noundef %25, i32 noundef 0) #17
  br label %41

41:                                               ; preds = %27, %24, %20, %17
  %42 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_mmap_lock_released, i32 0, i32 1), align 4
  %43 = icmp sgt i32 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %41
  tail call void @__mmap_lock_do_trace_released(ptr noundef %5, i1 noundef zeroext false) #17
  br label %45

45:                                               ; preds = %44, %41
  tail call void @up_read(ptr noundef %10) #17
  br label %46

46:                                               ; preds = %45, %16
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @find_vma(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__get_free_pages(i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @file_path(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #10

; Function Attrs: null_pointer_is_valid
declare dso_local void @free_pages(i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_rss_stat(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.thread.pointer() #11

; Function Attrs: null_pointer_is_valid
declare dso_local void @pmd_clear_bad(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @mod_node_page_state(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__tlb_remove_page_size(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @tlb_flush_mmu(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @page_address(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @__free_pages(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #5 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @dump_page(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @dump_stack() local_unnamed_addr #10

; Function Attrs: null_pointer_is_valid
declare dso_local void @add_taint(i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @add_mm_rss_vec(ptr noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #4 {
  %3 = tail call ptr @llvm.thread.pointer() #17
  %4 = getelementptr inbounds %struct.task_struct, ptr %3, i32 0, i32 37
  %5 = load ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, %0
  br i1 %6, label %7, label %38

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.anon.7, ptr %0, i32 0, i32 40
  %9 = getelementptr inbounds %struct.thread_info, ptr %3, i32 0, i32 2
  br label %10

10:                                               ; preds = %33, %7
  %11 = phi i32 [ 0, %7 ], [ %34, %33 ]
  %12 = getelementptr %struct.task_struct, ptr %3, i32 0, i32 40, i32 1, i32 %11
  %13 = load i32, ptr %12, align 4
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %33, label %15

15:                                               ; preds = %10
  %16 = getelementptr [4 x %struct.atomic_t], ptr %8, i32 0, i32 %11
  tail call void asm sideeffect "dmb ish", "~{memory}"() #17, !srcloc !11
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %16) #17, !srcloc !12
  %17 = tail call { i32, i32 } asm sideeffect "@ atomic_add_return\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %16, ptr %16, i32 %13, ptr elementtype(i32) %16) #17, !srcloc !13
  %18 = extractvalue { i32, i32 } %17, 0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #17, !srcloc !14
  %19 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_rss_stat, i32 0, i32 1), align 4
  %20 = icmp sgt i32 %19, 0
  br i1 %20, label %21, label %32

21:                                               ; preds = %15
  %22 = load i32, ptr %9, align 8
  %23 = lshr i32 %22, 5
  %24 = getelementptr i32, ptr @__cpu_online_mask, i32 %23
  %25 = load volatile i32, ptr %24, align 4
  %26 = and i32 %22, 31
  %27 = shl nuw i32 1, %26
  %28 = and i32 %27, %25
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %32, label %30

30:                                               ; preds = %21
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !9
  %31 = tail call i32 @__traceiter_rss_stat(ptr noundef null, ptr noundef %0, i32 noundef %11, i32 noundef %18) #17
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !10
  br label %32

32:                                               ; preds = %30, %21, %15
  store i32 0, ptr %12, align 4
  br label %33

33:                                               ; preds = %32, %10
  %34 = add nuw nsw i32 %11, 1
  %35 = icmp eq i32 %34, 4
  br i1 %35, label %36, label %10

36:                                               ; preds = %33
  %37 = getelementptr inbounds %struct.task_struct, ptr %3, i32 0, i32 40
  store i32 0, ptr %37, align 8
  br label %38

38:                                               ; preds = %36, %2
  %39 = getelementptr inbounds %struct.thread_info, ptr %3, i32 0, i32 2
  %40 = load i32, ptr %1, align 4
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %59, label %42

42:                                               ; preds = %38
  %43 = getelementptr inbounds %struct.anon.7, ptr %0, i32 0, i32 40
  tail call void asm sideeffect "dmb ish", "~{memory}"() #17, !srcloc !11
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %43) #17, !srcloc !12
  %44 = tail call { i32, i32 } asm sideeffect "@ atomic_add_return\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %43, ptr %43, i32 %40, ptr elementtype(i32) %43) #17, !srcloc !13
  %45 = extractvalue { i32, i32 } %44, 0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #17, !srcloc !14
  %46 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_rss_stat, i32 0, i32 1), align 4
  %47 = icmp sgt i32 %46, 0
  br i1 %47, label %48, label %59

48:                                               ; preds = %42
  %49 = load i32, ptr %39, align 8
  %50 = lshr i32 %49, 5
  %51 = getelementptr i32, ptr @__cpu_online_mask, i32 %50
  %52 = load volatile i32, ptr %51, align 4
  %53 = and i32 %49, 31
  %54 = shl nuw i32 1, %53
  %55 = and i32 %54, %52
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %59, label %57

57:                                               ; preds = %48
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !9
  %58 = tail call i32 @__traceiter_rss_stat(ptr noundef null, ptr noundef %0, i32 noundef 0, i32 noundef %45) #17
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !10
  br label %59

59:                                               ; preds = %57, %48, %42, %38
  %60 = getelementptr i32, ptr %1, i32 1
  %61 = load i32, ptr %60, align 4
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %80, label %63

63:                                               ; preds = %59
  %64 = getelementptr %struct.anon.7, ptr %0, i32 0, i32 40, i32 0, i32 1
  tail call void asm sideeffect "dmb ish", "~{memory}"() #17, !srcloc !11
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %64) #17, !srcloc !12
  %65 = tail call { i32, i32 } asm sideeffect "@ atomic_add_return\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %64, ptr %64, i32 %61, ptr elementtype(i32) %64) #17, !srcloc !13
  %66 = extractvalue { i32, i32 } %65, 0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #17, !srcloc !14
  %67 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_rss_stat, i32 0, i32 1), align 4
  %68 = icmp sgt i32 %67, 0
  br i1 %68, label %69, label %80

69:                                               ; preds = %63
  %70 = load i32, ptr %39, align 8
  %71 = lshr i32 %70, 5
  %72 = getelementptr i32, ptr @__cpu_online_mask, i32 %71
  %73 = load volatile i32, ptr %72, align 4
  %74 = and i32 %70, 31
  %75 = shl nuw i32 1, %74
  %76 = and i32 %75, %73
  %77 = icmp eq i32 %76, 0
  br i1 %77, label %80, label %78

78:                                               ; preds = %69
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !9
  %79 = tail call i32 @__traceiter_rss_stat(ptr noundef null, ptr noundef %0, i32 noundef 1, i32 noundef %66) #17
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !10
  br label %80

80:                                               ; preds = %78, %69, %63, %59
  %81 = getelementptr i32, ptr %1, i32 2
  %82 = load i32, ptr %81, align 4
  %83 = icmp eq i32 %82, 0
  br i1 %83, label %101, label %84

84:                                               ; preds = %80
  %85 = getelementptr %struct.anon.7, ptr %0, i32 0, i32 40, i32 0, i32 2
  tail call void asm sideeffect "dmb ish", "~{memory}"() #17, !srcloc !11
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %85) #17, !srcloc !12
  %86 = tail call { i32, i32 } asm sideeffect "@ atomic_add_return\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %85, ptr %85, i32 %82, ptr elementtype(i32) %85) #17, !srcloc !13
  %87 = extractvalue { i32, i32 } %86, 0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #17, !srcloc !14
  %88 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_rss_stat, i32 0, i32 1), align 4
  %89 = icmp sgt i32 %88, 0
  br i1 %89, label %90, label %101

90:                                               ; preds = %84
  %91 = load i32, ptr %39, align 8
  %92 = lshr i32 %91, 5
  %93 = getelementptr i32, ptr @__cpu_online_mask, i32 %92
  %94 = load volatile i32, ptr %93, align 4
  %95 = and i32 %91, 31
  %96 = shl nuw i32 1, %95
  %97 = and i32 %96, %94
  %98 = icmp eq i32 %97, 0
  br i1 %98, label %101, label %99

99:                                               ; preds = %90
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !9
  %100 = tail call i32 @__traceiter_rss_stat(ptr noundef null, ptr noundef %0, i32 noundef 2, i32 noundef %87) #17
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !10
  br label %101

101:                                              ; preds = %99, %90, %84, %80
  %102 = getelementptr i32, ptr %1, i32 3
  %103 = load i32, ptr %102, align 4
  %104 = icmp eq i32 %103, 0
  br i1 %104, label %122, label %105

105:                                              ; preds = %101
  %106 = getelementptr %struct.anon.7, ptr %0, i32 0, i32 40, i32 0, i32 3
  tail call void asm sideeffect "dmb ish", "~{memory}"() #17, !srcloc !11
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %106) #17, !srcloc !12
  %107 = tail call { i32, i32 } asm sideeffect "@ atomic_add_return\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %106, ptr %106, i32 %103, ptr elementtype(i32) %106) #17, !srcloc !13
  %108 = extractvalue { i32, i32 } %107, 0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #17, !srcloc !14
  %109 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_rss_stat, i32 0, i32 1), align 4
  %110 = icmp sgt i32 %109, 0
  br i1 %110, label %111, label %122

111:                                              ; preds = %105
  %112 = load i32, ptr %39, align 8
  %113 = lshr i32 %112, 5
  %114 = getelementptr i32, ptr @__cpu_online_mask, i32 %113
  %115 = load volatile i32, ptr %114, align 4
  %116 = and i32 %112, 31
  %117 = shl nuw i32 1, %116
  %118 = and i32 %117, %115
  %119 = icmp eq i32 %118, 0
  br i1 %119, label %122, label %120

120:                                              ; preds = %111
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !9
  %121 = tail call i32 @__traceiter_rss_stat(ptr noundef null, ptr noundef %0, i32 noundef 3, i32 noundef %108) #17
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !10
  br label %122

122:                                              ; preds = %120, %111, %105, %101
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @add_swap_count_continuation([1 x i32], i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @swap_duplicate([1 x i32]) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__cond_resched() local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @set_page_dirty(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @mark_page_accessed(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @page_remove_rmap(ptr noundef, i1 noundef zeroext) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @free_swap_and_cache([1 x i32]) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @page_rmapping(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__page_mapcount(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @flush_tlb_mm(ptr noundef) local_unnamed_addr #5

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @flush_tlb_range(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @uprobe_munmap(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__kmap_local_page_prot(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @down_read_trylock(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mmap_lock_do_trace_start_locking(ptr noundef, i1 noundef zeroext) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mmap_lock_do_trace_acquire_returned(ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @insert_page_into_pte_locked(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3, i32 noundef %4) unnamed_addr #2 {
  %6 = load i32, ptr %1, align 4
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %73

8:                                                ; preds = %5
  %9 = getelementptr inbounds %struct.page, ptr %3, i32 0, i32 1
  %10 = load volatile i32, ptr %9, align 4
  %11 = and i32 %10, 1
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %15, label %13, !prof !15

13:                                               ; preds = %8
  %14 = add i32 %10, -1
  br label %17

15:                                               ; preds = %8
  %16 = ptrtoint ptr %3 to i32
  br label %17

17:                                               ; preds = %15, %13
  %18 = phi i32 [ %14, %13 ], [ %16, %15 ]
  %19 = inttoptr i32 %18 to ptr
  %20 = getelementptr inbounds %struct.page, ptr %19, i32 0, i32 3
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %20) #17, !srcloc !12
  %21 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %20, ptr %20, i32 1, ptr elementtype(i32) %20) #17, !srcloc !18
  %22 = load volatile i32, ptr %9, align 4
  %23 = and i32 %22, 1
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %27, label %25, !prof !15

25:                                               ; preds = %17
  %26 = add i32 %22, -1
  br label %29

27:                                               ; preds = %17
  %28 = ptrtoint ptr %3 to i32
  br label %29

29:                                               ; preds = %27, %25
  %30 = phi i32 [ %26, %25 ], [ %28, %27 ]
  %31 = inttoptr i32 %30 to ptr
  %32 = load volatile i32, ptr %31, align 4
  %33 = and i32 %32, 524288
  %34 = icmp eq i32 %33, 0
  %35 = select i1 %34, i32 0, i32 3
  %36 = tail call ptr @llvm.thread.pointer() #17
  %37 = getelementptr inbounds %struct.task_struct, ptr %36, i32 0, i32 37
  %38 = load ptr, ptr %37, align 4
  %39 = icmp eq ptr %38, %0
  br i1 %39, label %40, label %44, !prof !15

40:                                               ; preds = %29
  %41 = getelementptr %struct.task_struct, ptr %36, i32 0, i32 40, i32 1, i32 %35
  %42 = load i32, ptr %41, align 4
  %43 = add i32 %42, 1
  store i32 %43, ptr %41, align 4
  br label %63

44:                                               ; preds = %29
  %45 = getelementptr inbounds %struct.anon.7, ptr %0, i32 0, i32 40
  %46 = getelementptr [4 x %struct.atomic_t], ptr %45, i32 0, i32 %35
  tail call void asm sideeffect "dmb ish", "~{memory}"() #17, !srcloc !11
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %46) #17, !srcloc !12
  %47 = tail call { i32, i32 } asm sideeffect "@ atomic_add_return\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %46, ptr %46, i32 1, ptr elementtype(i32) %46) #17, !srcloc !13
  %48 = extractvalue { i32, i32 } %47, 0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #17, !srcloc !14
  %49 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_rss_stat, i32 0, i32 1), align 4
  %50 = icmp sgt i32 %49, 0
  br i1 %50, label %51, label %63

51:                                               ; preds = %44
  %52 = getelementptr inbounds %struct.thread_info, ptr %36, i32 0, i32 2
  %53 = load i32, ptr %52, align 8
  %54 = lshr i32 %53, 5
  %55 = getelementptr i32, ptr @__cpu_online_mask, i32 %54
  %56 = load volatile i32, ptr %55, align 4
  %57 = and i32 %53, 31
  %58 = shl nuw i32 1, %57
  %59 = and i32 %58, %56
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %63, label %61

61:                                               ; preds = %51
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !9
  %62 = tail call i32 @__traceiter_rss_stat(ptr noundef null, ptr noundef %0, i32 noundef %35, i32 noundef %48) #17
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !10
  br label %63

63:                                               ; preds = %61, %51, %44, %40
  tail call void @page_add_file_rmap(ptr noundef %3, i1 noundef zeroext false) #17
  %64 = load ptr, ptr @mem_map, align 4
  %65 = ptrtoint ptr %3 to i32
  %66 = ptrtoint ptr %64 to i32
  %67 = sub i32 %65, %66
  %68 = lshr exact i32 %67, 5
  %69 = load i32, ptr @__pv_phys_pfn_offset, align 4
  %70 = add i32 %68, %69
  %71 = shl i32 %70, 12
  %72 = or i32 %71, %4
  tail call void @set_pte_at(ptr noundef %0, i32 noundef %2, ptr noundef %1, i32 noundef %72) #17
  br label %73

73:                                               ; preds = %63, %5
  %74 = phi i32 [ 0, %63 ], [ -16, %5 ]
  ret i32 %74
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @flush_dcache_page(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ptep_set_access_flags(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @kunmap_local_indexed(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @flush_cache_page(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @down_write(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @vma_interval_tree_iter_first(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @vma_interval_tree_iter_next(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @up_write(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__alloc_pages(i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #12

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__folio_lock_or_retry(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @__put_page(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @flush_tlb_page(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @wp_page_copy(ptr nocapture noundef %0) unnamed_addr #2 {
  %2 = load ptr, ptr %0, align 4
  %3 = getelementptr inbounds %struct.vm_area_struct, ptr %2, i32 0, i32 6
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.vm_fault, ptr %0, i32 0, i32 6
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.vm_area_struct, ptr %2, i32 0, i32 11
  %8 = load ptr, ptr %7, align 4
  %9 = icmp eq ptr %8, null
  br i1 %9, label %10, label %13, !prof !28

10:                                               ; preds = %1
  %11 = tail call i32 @__anon_vma_prepare(ptr noundef %2) #17
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %352, !prof !15

13:                                               ; preds = %10, %1
  %14 = getelementptr inbounds %struct.vm_fault, ptr %0, i32 0, i32 4
  %15 = load i32, ptr %14, align 4
  %16 = lshr i32 %15, 12
  %17 = load i32, ptr @zero_pfn, align 4
  %18 = icmp eq i32 %17, %16
  br i1 %18, label %19, label %26

19:                                               ; preds = %13
  %20 = getelementptr inbounds %struct.anon.22, ptr %0, i32 0, i32 3
  %21 = load i32, ptr %20, align 4
  %22 = tail call ptr @__alloc_pages(i32 noundef 17829066, i32 noundef 0, i32 noundef 0, ptr noundef null) #17
  %23 = icmp eq ptr %22, null
  br i1 %23, label %352, label %24

24:                                               ; preds = %19
  %25 = load ptr, ptr @cpu_user, align 4
  tail call void %25(ptr noundef nonnull %22, i32 noundef %21) #17
  br label %143

26:                                               ; preds = %13
  %27 = tail call ptr @__alloc_pages(i32 noundef 17829066, i32 noundef 0, i32 noundef 0, ptr noundef null) #17
  %28 = icmp eq ptr %27, null
  br i1 %28, label %352, label %29

29:                                               ; preds = %26
  %30 = load ptr, ptr %0, align 4
  %31 = getelementptr inbounds %struct.anon.22, ptr %0, i32 0, i32 3
  %32 = load i32, ptr %31, align 4
  %33 = icmp eq ptr %6, null
  br i1 %33, label %36, label %34, !prof !28

34:                                               ; preds = %29
  %35 = load ptr, ptr getelementptr inbounds (%struct.cpu_user_fns, ptr @cpu_user, i32 0, i32 1), align 4
  tail call void %35(ptr noundef nonnull %27, ptr noundef nonnull %6, i32 noundef %32, ptr noundef %30) #17
  br label %143

36:                                               ; preds = %29
  %37 = tail call fastcc ptr @kmap_atomic(ptr noundef nonnull %27) #17
  %38 = and i32 %32, -4096
  %39 = inttoptr i32 %38 to ptr
  %40 = load i32, ptr %14, align 4
  %41 = and i32 %40, 2
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %43, label %65

43:                                               ; preds = %36
  %44 = getelementptr inbounds %struct.vm_fault, ptr %0, i32 0, i32 2
  %45 = load ptr, ptr %44, align 4
  %46 = load ptr, ptr @mem_map, align 4
  %47 = load i32, ptr %45, align 4
  %48 = lshr i32 %47, 12
  %49 = load i32, ptr @__pv_phys_pfn_offset, align 4
  %50 = sub i32 %48, %49
  %51 = getelementptr %struct.page, ptr %46, i32 %50, i32 1, i32 0, i32 3
  %52 = getelementptr %struct.page, ptr %46, i32 %50
  %53 = tail call fastcc ptr @kmap_atomic(ptr noundef %52) #17
  %54 = lshr i32 %32, 12
  %55 = and i32 %54, 511
  %56 = getelementptr i32, ptr %53, i32 %55
  %57 = getelementptr inbounds %struct.vm_fault, ptr %0, i32 0, i32 8
  store ptr %51, ptr %57, align 4
  tail call void @_raw_spin_lock(ptr noundef %51) #17
  %58 = getelementptr inbounds %struct.vm_fault, ptr %0, i32 0, i32 7
  store ptr %56, ptr %58, align 4
  %59 = load i32, ptr %56, align 4
  %60 = load i32, ptr %14, align 4
  %61 = icmp eq i32 %59, %60
  br i1 %61, label %62, label %108, !prof !15

62:                                               ; preds = %43
  %63 = or i32 %59, 2
  %64 = tail call i32 @ptep_set_access_flags(ptr noundef %30, i32 noundef %32, ptr noundef %56, i32 noundef %63, i32 noundef 0) #17
  br label %65

65:                                               ; preds = %62, %36
  %66 = phi i8 [ 0, %36 ], [ 1, %62 ]
  %67 = tail call ptr @llvm.thread.pointer() #17
  %68 = getelementptr inbounds %struct.thread_info, ptr %67, i32 0, i32 3
  %69 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %68) #12, !srcloc !70
  %70 = and i32 %69, -13
  %71 = or i32 %70, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %71) #17, !srcloc !71
  tail call void asm sideeffect "isb ", "~{memory}"() #17, !srcloc !72
  %72 = tail call i32 @arm_copy_from_user(ptr noundef %37, ptr noundef %39, i32 noundef 4096) #17
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %69) #17, !srcloc !71
  tail call void asm sideeffect "isb ", "~{memory}"() #17, !srcloc !72
  %73 = icmp eq i32 %72, 0
  br i1 %73, label %105, label %74

74:                                               ; preds = %65
  br i1 %42, label %100, label %75

75:                                               ; preds = %74
  %76 = getelementptr inbounds %struct.vm_fault, ptr %0, i32 0, i32 2
  %77 = load ptr, ptr %76, align 4
  %78 = load ptr, ptr @mem_map, align 4
  %79 = load i32, ptr %77, align 4
  %80 = lshr i32 %79, 12
  %81 = load i32, ptr @__pv_phys_pfn_offset, align 4
  %82 = sub i32 %80, %81
  %83 = getelementptr %struct.page, ptr %78, i32 %82, i32 1, i32 0, i32 3
  %84 = getelementptr %struct.page, ptr %78, i32 %82
  %85 = tail call fastcc ptr @kmap_atomic(ptr noundef %84) #17
  %86 = lshr i32 %32, 12
  %87 = and i32 %86, 511
  %88 = getelementptr i32, ptr %85, i32 %87
  %89 = getelementptr inbounds %struct.vm_fault, ptr %0, i32 0, i32 8
  store ptr %83, ptr %89, align 4
  tail call void @_raw_spin_lock(ptr noundef %83) #17
  %90 = getelementptr inbounds %struct.vm_fault, ptr %0, i32 0, i32 7
  store ptr %88, ptr %90, align 4
  %91 = load i32, ptr %88, align 4
  %92 = load i32, ptr %14, align 4
  %93 = icmp eq i32 %91, %92
  br i1 %93, label %94, label %108, !prof !15

94:                                               ; preds = %75
  %95 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %68) #12, !srcloc !70
  %96 = and i32 %95, -13
  %97 = or i32 %96, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %97) #17, !srcloc !71
  tail call void asm sideeffect "isb ", "~{memory}"() #17, !srcloc !72
  %98 = tail call i32 @arm_copy_from_user(ptr noundef %37, ptr noundef %39, i32 noundef 4096) #17
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %95) #17, !srcloc !71
  tail call void asm sideeffect "isb ", "~{memory}"() #17, !srcloc !72
  %99 = icmp eq i32 %98, 0
  br i1 %99, label %108, label %100

100:                                              ; preds = %94, %74
  %101 = phi i8 [ %66, %74 ], [ 1, %94 ]
  %102 = load i1, ptr @cow_user_page.__already_done, align 1
  br i1 %102, label %104, label %103, !prof !15

103:                                              ; preds = %100
  store i1 true, ptr @cow_user_page.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 2831, i32 noundef 9, ptr noundef null) #17
  br label %104

104:                                              ; preds = %103, %100
  tail call void @llvm.memset.p0.i32(ptr noundef align 1 dereferenceable(4096) %37, i8 0, i32 4096, i1 false) #17
  br label %105

105:                                              ; preds = %104, %65
  %106 = phi i8 [ %101, %104 ], [ %66, %65 ]
  %107 = icmp eq i8 %106, 0
  br i1 %107, label %139, label %108

108:                                              ; preds = %105, %94, %75, %43
  %109 = phi i1 [ true, %105 ], [ true, %94 ], [ false, %43 ], [ false, %75 ]
  %110 = getelementptr inbounds %struct.vm_fault, ptr %0, i32 0, i32 8
  %111 = load ptr, ptr %110, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #17, !srcloc !22
  %112 = load i16, ptr %111, align 4
  %113 = add i16 %112, 1
  store i16 %113, ptr %111, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #17, !srcloc !23
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #17, !srcloc !24
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !25
  %114 = getelementptr inbounds %struct.vm_fault, ptr %0, i32 0, i32 7
  %115 = load ptr, ptr %114, align 4
  tail call void @kunmap_local_indexed(ptr noundef %115) #17
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !37
  %116 = tail call ptr @llvm.thread.pointer() #17
  %117 = getelementptr inbounds %struct.task_struct, ptr %116, i32 0, i32 149
  %118 = load i32, ptr %117, align 8
  %119 = add i32 %118, -1
  store i32 %119, ptr %117, align 8
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !38
  tail call void @kunmap_local_indexed(ptr noundef %37) #17
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !37
  %120 = load i32, ptr %117, align 8
  %121 = add i32 %120, -1
  store i32 %121, ptr %117, align 8
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !38
  tail call void @flush_dcache_page(ptr noundef nonnull %27) #17
  br i1 %109, label %143, label %122

122:                                              ; preds = %108
  %123 = getelementptr inbounds %struct.page, ptr %27, i32 0, i32 1
  %124 = load volatile i32, ptr %123, align 4
  %125 = and i32 %124, 1
  %126 = icmp eq i32 %125, 0
  br i1 %126, label %129, label %127, !prof !15

127:                                              ; preds = %122
  %128 = add i32 %124, -1
  br label %131

129:                                              ; preds = %122
  %130 = ptrtoint ptr %27 to i32
  br label %131

131:                                              ; preds = %129, %127
  %132 = phi i32 [ %128, %127 ], [ %130, %129 ]
  %133 = inttoptr i32 %132 to ptr
  %134 = getelementptr inbounds %struct.page, ptr %133, i32 0, i32 3
  tail call void asm sideeffect "dmb ish", "~{memory}"() #17, !srcloc !34
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %134) #17, !srcloc !12
  %135 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %134, ptr %134, i32 1, ptr elementtype(i32) %134) #17, !srcloc !35
  %136 = extractvalue { i32, i32 } %135, 0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #17, !srcloc !36
  %137 = icmp eq i32 %136, 0
  br i1 %137, label %138, label %371

138:                                              ; preds = %131
  tail call void @__put_page(ptr noundef %133) #17
  br label %371

139:                                              ; preds = %105
  tail call void @kunmap_local_indexed(ptr noundef %37) #17
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !37
  %140 = getelementptr inbounds %struct.task_struct, ptr %67, i32 0, i32 149
  %141 = load i32, ptr %140, align 8
  %142 = add i32 %141, -1
  store i32 %142, ptr %140, align 8
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !38
  tail call void @flush_dcache_page(ptr noundef nonnull %27) #17
  br label %143

143:                                              ; preds = %139, %108, %34, %24
  %144 = phi ptr [ %22, %24 ], [ %27, %108 ], [ %27, %34 ], [ %27, %139 ]
  %145 = getelementptr inbounds %struct.page, ptr %144, i32 0, i32 1
  %146 = load volatile i32, ptr %145, align 4
  tail call void asm sideeffect "dmb ishst", "~{memory}"() #17, !srcloc !33
  %147 = load i32, ptr %144, align 4
  %148 = or i32 %147, 4
  store i32 %148, ptr %144, align 4
  %149 = getelementptr inbounds %struct.anon.22, ptr %0, i32 0, i32 3
  %150 = getelementptr inbounds %struct.vm_fault, ptr %0, i32 0, i32 2
  %151 = load ptr, ptr %150, align 4
  %152 = load ptr, ptr @mem_map, align 4
  %153 = load i32, ptr %151, align 4
  %154 = lshr i32 %153, 12
  %155 = load i32, ptr @__pv_phys_pfn_offset, align 4
  %156 = sub i32 %154, %155
  %157 = getelementptr %struct.page, ptr %152, i32 %156, i32 1, i32 0, i32 3
  %158 = getelementptr %struct.page, ptr %152, i32 %156
  %159 = load i32, ptr @pgprot_kernel, align 4
  %160 = or i32 %159, 512
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !30
  %161 = tail call ptr @llvm.thread.pointer() #17
  %162 = getelementptr inbounds %struct.task_struct, ptr %161, i32 0, i32 149
  %163 = load i32, ptr %162, align 8
  %164 = add i32 %163, 1
  store i32 %164, ptr %162, align 8
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !31
  %165 = tail call ptr @__kmap_local_page_prot(ptr noundef %158, i32 noundef %160) #17
  %166 = load i32, ptr %149, align 4
  %167 = lshr i32 %166, 12
  %168 = and i32 %167, 511
  %169 = getelementptr i32, ptr %165, i32 %168
  %170 = getelementptr inbounds %struct.vm_fault, ptr %0, i32 0, i32 8
  store ptr %157, ptr %170, align 4
  tail call void @_raw_spin_lock(ptr noundef %157) #17
  %171 = getelementptr inbounds %struct.vm_fault, ptr %0, i32 0, i32 7
  store ptr %169, ptr %171, align 4
  %172 = load i32, ptr %169, align 4
  %173 = load i32, ptr %14, align 4
  %174 = icmp eq i32 %172, %173
  br i1 %174, label %175, label %262, !prof !15

175:                                              ; preds = %143
  %176 = icmp eq ptr %6, null
  br i1 %176, label %224, label %177

177:                                              ; preds = %175
  %178 = getelementptr inbounds %struct.page, ptr %6, i32 0, i32 1
  %179 = load volatile i32, ptr %178, align 4
  %180 = and i32 %179, 1
  %181 = icmp eq i32 %180, 0
  br i1 %181, label %184, label %182, !prof !15

182:                                              ; preds = %177
  %183 = add i32 %179, -1
  br label %186

184:                                              ; preds = %177
  %185 = ptrtoint ptr %6 to i32
  br label %186

186:                                              ; preds = %184, %182
  %187 = phi i32 [ %183, %182 ], [ %185, %184 ]
  %188 = inttoptr i32 %187 to ptr
  %189 = getelementptr inbounds %struct.anon.71, ptr %188, i32 0, i32 2
  %190 = load ptr, ptr %189, align 4
  %191 = ptrtoint ptr %190 to i32
  %192 = and i32 %191, 1
  %193 = icmp eq i32 %192, 0
  br i1 %193, label %194, label %233

194:                                              ; preds = %186
  %195 = load volatile i32, ptr %178, align 4
  %196 = and i32 %195, 1
  %197 = icmp eq i32 %196, 0
  br i1 %197, label %200, label %198, !prof !15

198:                                              ; preds = %194
  %199 = add i32 %195, -1
  br label %202

200:                                              ; preds = %194
  %201 = ptrtoint ptr %6 to i32
  br label %202

202:                                              ; preds = %200, %198
  %203 = phi i32 [ %199, %198 ], [ %201, %200 ]
  %204 = inttoptr i32 %203 to ptr
  %205 = load volatile i32, ptr %204, align 4
  %206 = and i32 %205, 524288
  %207 = icmp eq i32 %206, 0
  %208 = select i1 %207, i32 0, i32 3
  %209 = getelementptr inbounds %struct.task_struct, ptr %161, i32 0, i32 37
  %210 = load ptr, ptr %209, align 4
  %211 = icmp eq ptr %210, %4
  br i1 %211, label %212, label %216, !prof !15

212:                                              ; preds = %202
  %213 = getelementptr %struct.task_struct, ptr %161, i32 0, i32 40, i32 1, i32 %208
  %214 = load i32, ptr %213, align 4
  %215 = add i32 %214, -1
  store i32 %215, ptr %213, align 4
  br label %219

216:                                              ; preds = %202
  tail call fastcc void @add_mm_counter(ptr noundef %4, i32 noundef %208, i32 noundef -1) #17
  %217 = load ptr, ptr %209, align 4
  %218 = icmp eq ptr %217, %4
  br i1 %218, label %219, label %223, !prof !15

219:                                              ; preds = %216, %212
  %220 = getelementptr %struct.task_struct, ptr %161, i32 0, i32 40, i32 1, i32 1
  %221 = load i32, ptr %220, align 4
  %222 = add i32 %221, 1
  store i32 %222, ptr %220, align 4
  br label %233

223:                                              ; preds = %216
  tail call fastcc void @add_mm_counter(ptr noundef %4, i32 noundef 1, i32 noundef 1) #17
  br label %233

224:                                              ; preds = %175
  %225 = getelementptr inbounds %struct.task_struct, ptr %161, i32 0, i32 37
  %226 = load ptr, ptr %225, align 4
  %227 = icmp eq ptr %226, %4
  br i1 %227, label %228, label %232, !prof !15

228:                                              ; preds = %224
  %229 = getelementptr %struct.task_struct, ptr %161, i32 0, i32 40, i32 1, i32 1
  %230 = load i32, ptr %229, align 4
  %231 = add i32 %230, 1
  store i32 %231, ptr %229, align 4
  br label %233

232:                                              ; preds = %224
  tail call fastcc void @add_mm_counter(ptr noundef %4, i32 noundef 1, i32 noundef 1) #17
  br label %233

233:                                              ; preds = %232, %228, %223, %219, %186
  %234 = load i32, ptr %149, align 4
  %235 = load i32, ptr %14, align 4
  %236 = lshr i32 %235, 12
  tail call void @flush_cache_page(ptr noundef %2, i32 noundef %234, i32 noundef %236) #17
  %237 = load ptr, ptr @mem_map, align 4
  %238 = ptrtoint ptr %144 to i32
  %239 = ptrtoint ptr %237 to i32
  %240 = sub i32 %238, %239
  %241 = lshr exact i32 %240, 5
  %242 = load i32, ptr @__pv_phys_pfn_offset, align 4
  %243 = add i32 %241, %242
  %244 = shl i32 %243, 12
  %245 = getelementptr inbounds %struct.vm_area_struct, ptr %2, i32 0, i32 7
  %246 = load i32, ptr %245, align 4
  %247 = or i32 %246, %244
  %248 = or i32 %247, 64
  %249 = getelementptr inbounds %struct.vm_area_struct, ptr %2, i32 0, i32 8
  %250 = load i32, ptr %249, align 4
  %251 = and i32 %250, 2
  %252 = icmp eq i32 %251, 0
  %253 = and i32 %248, -129
  %254 = select i1 %252, i32 %248, i32 %253, !prof !28
  %255 = load i32, ptr %149, align 4
  %256 = load ptr, ptr %171, align 4
  %257 = tail call i32 @ptep_clear_flush(ptr noundef %2, i32 noundef %255, ptr noundef %256) #17
  %258 = load i32, ptr %149, align 4
  tail call void @page_add_new_anon_rmap(ptr noundef nonnull %144, ptr noundef %2, i32 noundef %258, i1 noundef zeroext false) #17
  tail call void @lru_cache_add_inactive_or_unevictable(ptr noundef nonnull %144, ptr noundef %2) #17
  %259 = load i32, ptr %149, align 4
  %260 = load ptr, ptr %171, align 4
  tail call void @set_pte_at(ptr noundef %4, i32 noundef %259, ptr noundef %260, i32 noundef %254) #17
  br i1 %176, label %280, label %261

261:                                              ; preds = %233
  tail call void @page_remove_rmap(ptr noundef nonnull %6, i1 noundef zeroext false) #17
  br label %262

262:                                              ; preds = %261, %143
  %263 = phi ptr [ %144, %143 ], [ %6, %261 ]
  %264 = getelementptr inbounds %struct.page, ptr %263, i32 0, i32 1
  %265 = load volatile i32, ptr %264, align 4
  %266 = and i32 %265, 1
  %267 = icmp eq i32 %266, 0
  br i1 %267, label %270, label %268, !prof !15

268:                                              ; preds = %262
  %269 = add i32 %265, -1
  br label %272

270:                                              ; preds = %262
  %271 = ptrtoint ptr %263 to i32
  br label %272

272:                                              ; preds = %270, %268
  %273 = phi i32 [ %269, %268 ], [ %271, %270 ]
  %274 = inttoptr i32 %273 to ptr
  %275 = getelementptr inbounds %struct.page, ptr %274, i32 0, i32 3
  tail call void asm sideeffect "dmb ish", "~{memory}"() #17, !srcloc !34
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %275) #17, !srcloc !12
  %276 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %275, ptr %275, i32 1, ptr elementtype(i32) %275) #17, !srcloc !35
  %277 = extractvalue { i32, i32 } %276, 0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #17, !srcloc !36
  %278 = icmp eq i32 %277, 0
  br i1 %278, label %279, label %280

279:                                              ; preds = %272
  tail call void @__put_page(ptr noundef %274) #17
  br label %280

280:                                              ; preds = %279, %272, %233
  %281 = load ptr, ptr %170, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #17, !srcloc !22
  %282 = load i16, ptr %281, align 4
  %283 = add i16 %282, 1
  store i16 %283, ptr %281, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #17, !srcloc !23
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #17, !srcloc !24
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !25
  %284 = load ptr, ptr %171, align 4
  tail call void @kunmap_local_indexed(ptr noundef %284) #17
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !37
  %285 = load i32, ptr %162, align 8
  %286 = add i32 %285, -1
  store i32 %286, ptr %162, align 8
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !38
  %287 = icmp eq ptr %6, null
  br i1 %287, label %350, label %288

288:                                              ; preds = %280
  br i1 %174, label %289, label %333

289:                                              ; preds = %288
  %290 = getelementptr inbounds %struct.vm_area_struct, ptr %2, i32 0, i32 8
  %291 = load i32, ptr %290, align 4
  %292 = and i32 %291, 8192
  %293 = icmp eq i32 %292, 0
  br i1 %293, label %332, label %294

294:                                              ; preds = %289
  %295 = getelementptr inbounds %struct.page, ptr %6, i32 0, i32 1
  %296 = load volatile i32, ptr %295, align 4
  %297 = and i32 %296, 1
  %298 = icmp eq i32 %297, 0
  br i1 %298, label %301, label %299, !prof !15

299:                                              ; preds = %294
  %300 = add i32 %296, -1
  br label %303

301:                                              ; preds = %294
  %302 = ptrtoint ptr %6 to i32
  br label %303

303:                                              ; preds = %301, %299
  %304 = phi i32 [ %300, %299 ], [ %302, %301 ]
  %305 = inttoptr i32 %304 to ptr
  %306 = load volatile i32, ptr %305, align 4
  %307 = and i32 %306, 1
  %308 = icmp eq i32 %307, 0
  br i1 %308, label %309, label %314

309:                                              ; preds = %303
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %305) #17, !srcloc !12
  %310 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_or\0A1:\09ldrex\09$0, [$4]\0A\09orr\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %305, ptr %305, i32 1, ptr elementtype(i32) %305) #17, !srcloc !59
  %311 = extractvalue { i32, i32, i32 } %310, 0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #17, !srcloc !60
  %312 = and i32 %311, 1
  %313 = icmp eq i32 %312, 0
  br i1 %313, label %315, label %314

314:                                              ; preds = %309, %303
  tail call void @__folio_lock(ptr noundef %305) #17
  br label %315

315:                                              ; preds = %314, %309
  %316 = load volatile i32, ptr %295, align 4
  %317 = and i32 %316, 1
  %318 = icmp eq i32 %317, 0
  br i1 %318, label %321, label %319, !prof !15

319:                                              ; preds = %315
  %320 = add i32 %316, -1
  br label %323

321:                                              ; preds = %315
  %322 = ptrtoint ptr %6 to i32
  br label %323

323:                                              ; preds = %321, %319
  %324 = phi i32 [ %320, %319 ], [ %322, %321 ]
  %325 = inttoptr i32 %324 to ptr
  %326 = load volatile i32, ptr %325, align 4
  %327 = and i32 %326, 2097152
  %328 = icmp eq i32 %327, 0
  br i1 %328, label %331, label %329

329:                                              ; preds = %323
  %330 = tail call i32 @munlock_vma_page(ptr noundef nonnull %6) #17
  br label %331

331:                                              ; preds = %329, %323
  tail call void @unlock_page(ptr noundef nonnull %6) #17
  br label %332

332:                                              ; preds = %331, %289
  tail call void @free_swap_cache(ptr noundef nonnull %6) #17
  br label %333

333:                                              ; preds = %332, %288
  %334 = getelementptr inbounds %struct.page, ptr %6, i32 0, i32 1
  %335 = load volatile i32, ptr %334, align 4
  %336 = and i32 %335, 1
  %337 = icmp eq i32 %336, 0
  br i1 %337, label %340, label %338, !prof !15

338:                                              ; preds = %333
  %339 = add i32 %335, -1
  br label %342

340:                                              ; preds = %333
  %341 = ptrtoint ptr %6 to i32
  br label %342

342:                                              ; preds = %340, %338
  %343 = phi i32 [ %339, %338 ], [ %341, %340 ]
  %344 = inttoptr i32 %343 to ptr
  %345 = getelementptr inbounds %struct.page, ptr %344, i32 0, i32 3
  tail call void asm sideeffect "dmb ish", "~{memory}"() #17, !srcloc !34
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %345) #17, !srcloc !12
  %346 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %345, ptr %345, i32 1, ptr elementtype(i32) %345) #17, !srcloc !35
  %347 = extractvalue { i32, i32 } %346, 0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #17, !srcloc !36
  %348 = icmp eq i32 %347, 0
  br i1 %348, label %349, label %350

349:                                              ; preds = %342
  tail call void @__put_page(ptr noundef %344) #17
  br label %350

350:                                              ; preds = %349, %342, %280
  %351 = select i1 %174, i32 8, i32 0
  br label %371

352:                                              ; preds = %26, %19, %10
  %353 = icmp eq ptr %6, null
  br i1 %353, label %371, label %354

354:                                              ; preds = %352
  %355 = getelementptr inbounds %struct.page, ptr %6, i32 0, i32 1
  %356 = load volatile i32, ptr %355, align 4
  %357 = and i32 %356, 1
  %358 = icmp eq i32 %357, 0
  br i1 %358, label %361, label %359, !prof !15

359:                                              ; preds = %354
  %360 = add i32 %356, -1
  br label %363

361:                                              ; preds = %354
  %362 = ptrtoint ptr %6 to i32
  br label %363

363:                                              ; preds = %361, %359
  %364 = phi i32 [ %360, %359 ], [ %362, %361 ]
  %365 = inttoptr i32 %364 to ptr
  %366 = getelementptr inbounds %struct.page, ptr %365, i32 0, i32 3
  tail call void asm sideeffect "dmb ish", "~{memory}"() #17, !srcloc !34
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %366) #17, !srcloc !12
  %367 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %366, ptr %366, i32 1, ptr elementtype(i32) %366) #17, !srcloc !35
  %368 = extractvalue { i32, i32 } %367, 0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #17, !srcloc !36
  %369 = icmp eq i32 %368, 0
  br i1 %369, label %370, label %371

370:                                              ; preds = %363
  tail call void @__put_page(ptr noundef %365) #17
  br label %371

371:                                              ; preds = %370, %363, %352, %350, %138, %131
  %372 = phi i32 [ %351, %350 ], [ 1, %352 ], [ 0, %131 ], [ 0, %138 ], [ 1, %363 ], [ 1, %370 ]
  ret i32 %372
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @wp_page_shared(ptr noundef %0) unnamed_addr #2 {
  %2 = load ptr, ptr %0, align 4
  %3 = getelementptr inbounds %struct.vm_fault, ptr %0, i32 0, i32 6
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.page, ptr %4, i32 0, i32 1
  %6 = load volatile i32, ptr %5, align 4
  %7 = and i32 %6, 1
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %11, label %9, !prof !15

9:                                                ; preds = %1
  %10 = add i32 %6, -1
  br label %13

11:                                               ; preds = %1
  %12 = ptrtoint ptr %4 to i32
  br label %13

13:                                               ; preds = %11, %9
  %14 = phi i32 [ %10, %9 ], [ %12, %11 ]
  %15 = inttoptr i32 %14 to ptr
  %16 = getelementptr inbounds %struct.page, ptr %15, i32 0, i32 3
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %16) #17, !srcloc !12
  %17 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %16, ptr %16, i32 1, ptr elementtype(i32) %16) #17, !srcloc !18
  %18 = getelementptr inbounds %struct.vm_area_struct, ptr %2, i32 0, i32 12
  %19 = load ptr, ptr %18, align 4
  %20 = icmp eq ptr %19, null
  br i1 %20, label %80, label %21

21:                                               ; preds = %13
  %22 = getelementptr inbounds %struct.vm_operations_struct, ptr %19, i32 0, i32 9
  %23 = load ptr, ptr %22, align 4
  %24 = icmp eq ptr %23, null
  br i1 %24, label %80, label %25

25:                                               ; preds = %21
  %26 = getelementptr inbounds %struct.vm_fault, ptr %0, i32 0, i32 8
  %27 = load ptr, ptr %26, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #17, !srcloc !22
  %28 = load i16, ptr %27, align 4
  %29 = add i16 %28, 1
  store i16 %29, ptr %27, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #17, !srcloc !23
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #17, !srcloc !24
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !25
  %30 = getelementptr inbounds %struct.vm_fault, ptr %0, i32 0, i32 7
  %31 = load ptr, ptr %30, align 4
  tail call void @kunmap_local_indexed(ptr noundef %31) #17
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !37
  %32 = tail call ptr @llvm.thread.pointer() #17
  %33 = getelementptr inbounds %struct.task_struct, ptr %32, i32 0, i32 149
  %34 = load i32, ptr %33, align 8
  %35 = add i32 %34, -1
  store i32 %35, ptr %33, align 8
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !38
  %36 = load ptr, ptr %3, align 4
  %37 = getelementptr inbounds %struct.vm_fault, ptr %0, i32 0, i32 1
  %38 = load i32, ptr %37, align 4
  store i32 3, ptr %37, align 4
  %39 = load ptr, ptr %0, align 4
  %40 = getelementptr inbounds %struct.vm_area_struct, ptr %39, i32 0, i32 14
  %41 = load ptr, ptr %40, align 4
  %42 = icmp eq ptr %41, null
  br i1 %42, label %51, label %43

43:                                               ; preds = %25
  %44 = getelementptr inbounds %struct.file, ptr %41, i32 0, i32 17
  %45 = load ptr, ptr %44, align 8
  %46 = load ptr, ptr %45, align 4
  %47 = getelementptr inbounds %struct.inode, ptr %46, i32 0, i32 4
  %48 = load i32, ptr %47, align 4
  %49 = and i32 %48, 256
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %51, label %70

51:                                               ; preds = %43, %25
  %52 = getelementptr inbounds %struct.vm_area_struct, ptr %39, i32 0, i32 12
  %53 = load ptr, ptr %52, align 4
  %54 = getelementptr inbounds %struct.vm_operations_struct, ptr %53, i32 0, i32 9
  %55 = load ptr, ptr %54, align 4
  %56 = tail call i32 %55(ptr noundef %0) #17
  store i32 %38, ptr %37, align 4
  %57 = and i32 %56, 2931
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %59, label %66, !prof !68

59:                                               ; preds = %51
  tail call fastcc void @lock_page(ptr noundef %36) #17
  %60 = getelementptr inbounds %struct.page, ptr %36, i32 0, i32 1, i32 0, i32 1
  %61 = load ptr, ptr %60, align 4
  %62 = icmp eq ptr %61, null
  br i1 %62, label %63, label %64

63:                                               ; preds = %59
  tail call void @unlock_page(ptr noundef %36) #17
  br label %70

64:                                               ; preds = %59
  %65 = or i32 %56, 512
  br label %66

66:                                               ; preds = %64, %51
  %67 = phi i32 [ %56, %51 ], [ %65, %64 ]
  %68 = and i32 %67, 2419
  %69 = icmp eq i32 %68, 0
  br i1 %69, label %73, label %70, !prof !15

70:                                               ; preds = %66, %63, %43
  %71 = phi i32 [ %67, %66 ], [ 2, %43 ], [ 0, %63 ]
  %72 = load ptr, ptr %3, align 4
  tail call fastcc void @put_page(ptr noundef %72)
  br label %157

73:                                               ; preds = %66
  %74 = tail call i32 @finish_mkwrite_fault(ptr noundef %0)
  %75 = and i32 %74, 2419
  %76 = icmp eq i32 %75, 0
  br i1 %76, label %137, label %77, !prof !15

77:                                               ; preds = %73
  %78 = load ptr, ptr %3, align 4
  tail call void @unlock_page(ptr noundef %78) #17
  %79 = load ptr, ptr %3, align 4
  tail call fastcc void @put_page(ptr noundef %79)
  br label %157

80:                                               ; preds = %21, %13
  %81 = load ptr, ptr %0, align 4
  %82 = getelementptr inbounds %struct.anon.22, ptr %0, i32 0, i32 3
  %83 = load i32, ptr %82, align 4
  %84 = getelementptr inbounds %struct.vm_fault, ptr %0, i32 0, i32 4
  %85 = load i32, ptr %84, align 4
  %86 = lshr i32 %85, 12
  tail call void @flush_cache_page(ptr noundef %81, i32 noundef %83, i32 noundef %86) #17
  %87 = load i32, ptr %84, align 4
  %88 = or i32 %87, 66
  %89 = getelementptr inbounds %struct.vm_area_struct, ptr %81, i32 0, i32 8
  %90 = load i32, ptr %89, align 4
  %91 = and i32 %90, 2
  %92 = icmp eq i32 %91, 0
  %93 = and i32 %88, -129
  %94 = select i1 %92, i32 %88, i32 %93, !prof !28
  %95 = load i32, ptr %82, align 4
  %96 = getelementptr inbounds %struct.vm_fault, ptr %0, i32 0, i32 7
  %97 = load ptr, ptr %96, align 4
  %98 = tail call i32 @ptep_set_access_flags(ptr noundef %81, i32 noundef %95, ptr noundef %97, i32 noundef %94, i32 noundef 1) #17
  %99 = getelementptr inbounds %struct.vm_fault, ptr %0, i32 0, i32 8
  %100 = load ptr, ptr %99, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #17, !srcloc !22
  %101 = load i16, ptr %100, align 4
  %102 = add i16 %101, 1
  store i16 %102, ptr %100, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #17, !srcloc !23
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #17, !srcloc !24
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !25
  %103 = load ptr, ptr %96, align 4
  tail call void @kunmap_local_indexed(ptr noundef %103) #17
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !37
  %104 = tail call ptr @llvm.thread.pointer() #17
  %105 = getelementptr inbounds %struct.task_struct, ptr %104, i32 0, i32 149
  %106 = load i32, ptr %105, align 8
  %107 = add i32 %106, -1
  store i32 %107, ptr %105, align 8
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !38
  %108 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #17, !srcloc !56
  %109 = tail call i32 @llvm.read_register.i32(metadata !0) #17
  %110 = inttoptr i32 %109 to ptr
  %111 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %110) #12, !srcloc !57
  %112 = add i32 %111, ptrtoint (ptr getelementptr inbounds (%struct.vm_event_state, ptr @vm_event_states, i32 0, i32 0, i32 24) to i32)
  %113 = inttoptr i32 %112 to ptr
  %114 = load i32, ptr %113, align 4
  %115 = add i32 %114, 1
  store i32 %115, ptr %113, align 4
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %108) #17, !srcloc !58
  %116 = load ptr, ptr %3, align 4
  %117 = getelementptr inbounds %struct.page, ptr %116, i32 0, i32 1
  %118 = load volatile i32, ptr %117, align 4
  %119 = and i32 %118, 1
  %120 = icmp eq i32 %119, 0
  br i1 %120, label %123, label %121, !prof !15

121:                                              ; preds = %80
  %122 = add i32 %118, -1
  br label %125

123:                                              ; preds = %80
  %124 = ptrtoint ptr %116 to i32
  br label %125

125:                                              ; preds = %123, %121
  %126 = phi i32 [ %122, %121 ], [ %124, %123 ]
  %127 = inttoptr i32 %126 to ptr
  %128 = load volatile i32, ptr %127, align 4
  %129 = and i32 %128, 1
  %130 = icmp eq i32 %129, 0
  br i1 %130, label %131, label %136

131:                                              ; preds = %125
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %127) #17, !srcloc !12
  %132 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_or\0A1:\09ldrex\09$0, [$4]\0A\09orr\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %127, ptr %127, i32 1, ptr elementtype(i32) %127) #17, !srcloc !59
  %133 = extractvalue { i32, i32, i32 } %132, 0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #17, !srcloc !60
  %134 = and i32 %133, 1
  %135 = icmp eq i32 %134, 0
  br i1 %135, label %137, label %136

136:                                              ; preds = %131, %125
  tail call void @__folio_lock(ptr noundef %127) #17
  br label %137

137:                                              ; preds = %136, %131, %73
  %138 = tail call fastcc i32 @fault_dirty_shared_page(ptr noundef %0)
  %139 = or i32 %138, 8
  %140 = load ptr, ptr %3, align 4
  %141 = getelementptr inbounds %struct.page, ptr %140, i32 0, i32 1
  %142 = load volatile i32, ptr %141, align 4
  %143 = and i32 %142, 1
  %144 = icmp eq i32 %143, 0
  br i1 %144, label %147, label %145, !prof !15

145:                                              ; preds = %137
  %146 = add i32 %142, -1
  br label %149

147:                                              ; preds = %137
  %148 = ptrtoint ptr %140 to i32
  br label %149

149:                                              ; preds = %147, %145
  %150 = phi i32 [ %146, %145 ], [ %148, %147 ]
  %151 = inttoptr i32 %150 to ptr
  %152 = getelementptr inbounds %struct.page, ptr %151, i32 0, i32 3
  tail call void asm sideeffect "dmb ish", "~{memory}"() #17, !srcloc !34
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %152) #17, !srcloc !12
  %153 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %152, ptr %152, i32 1, ptr elementtype(i32) %152) #17, !srcloc !35
  %154 = extractvalue { i32, i32 } %153, 0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #17, !srcloc !36
  %155 = icmp eq i32 %154, 0
  br i1 %155, label %156, label %157

156:                                              ; preds = %149
  tail call void @__put_page(ptr noundef %151) #17
  br label %157

157:                                              ; preds = %156, %149, %77, %70
  %158 = phi i32 [ %139, %149 ], [ %139, %156 ], [ %74, %77 ], [ %71, %70 ]
  ret i32 %158
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ptep_clear_flush(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @lock_page(ptr noundef %0) unnamed_addr #4 {
  %2 = getelementptr inbounds %struct.page, ptr %0, i32 0, i32 1
  %3 = load volatile i32, ptr %2, align 4
  %4 = and i32 %3, 1
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %8, label %6, !prof !15

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
  %14 = and i32 %13, 1
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %21

16:                                               ; preds = %10
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %12) #17, !srcloc !12
  %17 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_or\0A1:\09ldrex\09$0, [$4]\0A\09orr\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %12, ptr %12, i32 1, ptr elementtype(i32) %12) #17, !srcloc !59
  %18 = extractvalue { i32, i32, i32 } %17, 0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #17, !srcloc !60
  %19 = and i32 %18, 1
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %22, label %21

21:                                               ; preds = %16, %10
  tail call void @__folio_lock(ptr noundef %12) #17
  br label %22

22:                                               ; preds = %21, %16
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @munlock_vma_page(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @free_swap_cache(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__anon_vma_prepare(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_from_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @__folio_lock(ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @fault_dirty_shared_page(ptr nocapture noundef readonly %0) unnamed_addr #2 {
  %2 = load ptr, ptr %0, align 4
  %3 = getelementptr inbounds %struct.vm_fault, ptr %0, i32 0, i32 6
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.vm_area_struct, ptr %2, i32 0, i32 12
  %6 = load ptr, ptr %5, align 4
  %7 = icmp eq ptr %6, null
  br i1 %7, label %12, label %8

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.vm_operations_struct, ptr %6, i32 0, i32 9
  %10 = load ptr, ptr %9, align 4
  %11 = icmp ne ptr %10, null
  br label %12

12:                                               ; preds = %8, %1
  %13 = phi i1 [ false, %1 ], [ %11, %8 ]
  %14 = tail call zeroext i1 @set_page_dirty(ptr noundef %4) #17
  %15 = tail call ptr @page_rmapping(ptr noundef %4) #17
  tail call void @unlock_page(ptr noundef %4) #17
  br i1 %13, label %20, label %16

16:                                               ; preds = %12
  %17 = getelementptr inbounds %struct.vm_area_struct, ptr %2, i32 0, i32 14
  %18 = load ptr, ptr %17, align 4
  %19 = tail call i32 @file_update_time(ptr noundef %18) #17
  br label %20

20:                                               ; preds = %16, %12
  br i1 %14, label %24, label %21

21:                                               ; preds = %20
  %22 = icmp ne ptr %15, null
  %23 = select i1 %13, i1 %22, i1 false
  br i1 %23, label %26, label %48

24:                                               ; preds = %20
  %25 = icmp eq ptr %15, null
  br i1 %25, label %48, label %26

26:                                               ; preds = %24, %21
  %27 = getelementptr inbounds %struct.vm_fault, ptr %0, i32 0, i32 1
  %28 = load i32, ptr %27, align 4
  %29 = and i32 %28, 44
  %30 = icmp eq i32 %29, 4
  br i1 %30, label %32, label %31

31:                                               ; preds = %26
  tail call void @balance_dirty_pages_ratelimited(ptr noundef nonnull %15) #17
  br label %48

32:                                               ; preds = %26
  %33 = load ptr, ptr %0, align 4
  %34 = getelementptr inbounds %struct.vm_area_struct, ptr %33, i32 0, i32 14
  %35 = load ptr, ptr %34, align 4
  %36 = getelementptr inbounds %struct.file, ptr %35, i32 0, i32 6
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %36) #17, !srcloc !12
  %37 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %36, ptr %36, i32 1, ptr elementtype(i32) %36) #17, !srcloc !18
  %38 = load ptr, ptr %0, align 4
  %39 = getelementptr inbounds %struct.vm_area_struct, ptr %38, i32 0, i32 6
  %40 = load ptr, ptr %39, align 4
  %41 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_mmap_lock_released, i32 0, i32 1), align 4
  %42 = icmp sgt i32 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %32
  tail call void @__mmap_lock_do_trace_released(ptr noundef %40, i1 noundef zeroext false) #17
  br label %44

44:                                               ; preds = %43, %32
  %45 = getelementptr inbounds %struct.anon.7, ptr %40, i32 0, i32 15
  tail call void @up_read(ptr noundef %45) #17
  tail call void @balance_dirty_pages_ratelimited(ptr noundef nonnull %15) #17
  %46 = icmp eq ptr %35, null
  br i1 %46, label %48, label %47

47:                                               ; preds = %44
  tail call void @fput(ptr noundef nonnull %35) #17
  br label %48

48:                                               ; preds = %47, %44, %31, %24, %21
  %49 = phi i32 [ 1024, %47 ], [ 0, %24 ], [ 0, %21 ], [ 0, %44 ], [ 0, %31 ]
  ret i32 %49
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @file_update_time(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @balance_dirty_pages_ratelimited(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @fput(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @debugfs_create_file_unsafe(ptr noundef, i16 noundef zeroext, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @no_llseek(ptr noundef, i64 noundef, i32 noundef) #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debugfs_attr_read(ptr noundef, ptr noundef, i32 noundef, ptr noundef) #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debugfs_attr_write(ptr noundef, ptr noundef, i32 noundef, ptr noundef) #5

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @fault_around_bytes_fops_open(ptr noundef %0, ptr noundef %1) #2 {
  %3 = tail call i32 @simple_attr_open(ptr noundef %0, ptr noundef %1, ptr noundef nonnull @fault_around_bytes_get, ptr noundef nonnull @fault_around_bytes_set, ptr noundef nonnull @.str.14) #17
  ret i32 %3
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @simple_attr_release(ptr noundef, ptr noundef) #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @simple_attr_open(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal i32 @fault_around_bytes_get(ptr nocapture noundef readnone %0, ptr nocapture noundef writeonly %1) #13 {
  %3 = load i32, ptr @fault_around_bytes, align 4
  %4 = zext i32 %3 to i64
  store i64 %4, ptr %1, align 8
  ret i32 0
}

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid sspstrong willreturn writeonly uwtable(sync)
define internal i32 @fault_around_bytes_set(ptr nocapture noundef readnone %0, i64 noundef %1) #14 {
  %3 = icmp ugt i64 %1, 2101247
  br i1 %3, label %10, label %4

4:                                                ; preds = %2
  %5 = icmp ugt i64 %1, 4096
  %6 = trunc i64 %1 to i32
  %7 = tail call i32 @llvm.ctlz.i32(i32 %6, i1 false) #17, !range !73
  %8 = lshr i32 -2147483648, %7
  %9 = select i1 %5, i32 %8, i32 4096
  store i32 %9, ptr @fault_around_bytes, align 4
  br label %10

10:                                               ; preds = %4, %2
  %11 = phi i32 [ 0, %4 ], [ -22, %2 ]
  ret i32 %11
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #15

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @__do_fault(ptr noundef %0) unnamed_addr #2 {
  %2 = load ptr, ptr %0, align 4
  %3 = getelementptr inbounds %struct.vm_fault, ptr %0, i32 0, i32 2
  %4 = load ptr, ptr %3, align 4
  %5 = load i32, ptr %4, align 4
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %33

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.vm_fault, ptr %0, i32 0, i32 9
  %9 = load ptr, ptr %8, align 4
  %10 = icmp eq ptr %9, null
  br i1 %10, label %11, label %33

11:                                               ; preds = %7
  %12 = tail call ptr @__alloc_pages(i32 noundef 4197826, i32 noundef 0, i32 noundef 0, ptr noundef null) #17
  %13 = icmp eq ptr %12, null
  br i1 %13, label %32, label %14

14:                                               ; preds = %11
  %15 = getelementptr inbounds %struct.page, ptr %12, i32 0, i32 1, i32 0, i32 3
  store i32 0, ptr %15, align 4
  %16 = getelementptr inbounds %struct.page, ptr %12, i32 0, i32 2
  %17 = load i32, ptr %16, align 4
  %18 = and i32 %17, -513
  store i32 %18, ptr %16, align 4
  tail call void @mod_node_page_state(ptr noundef nonnull @contig_page_data, i32 noundef 38, i32 noundef 1) #17
  %19 = load i32, ptr %12, align 4
  %20 = lshr i32 %19, 30
  %21 = icmp eq i32 %20, 2
  br i1 %21, label %31, label %22

22:                                               ; preds = %14
  %23 = icmp ne i32 %20, 3
  %24 = load i32, ptr @movable_zone, align 4
  %25 = icmp ne i32 %24, 2
  %26 = select i1 %23, i1 true, i1 %25
  br i1 %26, label %27, label %31

27:                                               ; preds = %22
  %28 = tail call ptr @page_address(ptr noundef nonnull %12) #17
  %29 = load ptr, ptr getelementptr inbounds (%struct.processor, ptr @processor, i32 0, i32 7), align 4
  %30 = getelementptr i32, ptr %28, i32 512
  tail call void %29(ptr noundef %30, i32 noundef 2048) #17
  br label %31

31:                                               ; preds = %27, %22, %14
  store ptr %12, ptr %8, align 4
  br label %33

32:                                               ; preds = %11
  store ptr null, ptr %8, align 4
  br label %44

33:                                               ; preds = %31, %7, %1
  %34 = getelementptr inbounds %struct.vm_area_struct, ptr %2, i32 0, i32 12
  %35 = load ptr, ptr %34, align 4
  %36 = getelementptr inbounds %struct.vm_operations_struct, ptr %35, i32 0, i32 5
  %37 = load ptr, ptr %36, align 4
  %38 = tail call i32 %37(ptr noundef %0) #17
  %39 = and i32 %38, 8051
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %41, label %44, !prof !68

41:                                               ; preds = %33
  %42 = getelementptr inbounds %struct.vm_fault, ptr %0, i32 0, i32 6
  %43 = load ptr, ptr %42, align 4
  tail call fastcc void @lock_page(ptr noundef %43)
  br label %44

44:                                               ; preds = %41, %33, %32
  %45 = phi i32 [ 1, %32 ], [ %38, %33 ], [ %38, %41 ]
  ret i32 %45
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__perf_sw_event(i32 noundef, i64 noundef, ptr noundef, i64 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @down_read_killable(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kmap_high(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @kunmap_high(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @up_read(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mmap_lock_do_trace_released(ptr noundef, i1 noundef zeroext) local_unnamed_addr #5

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local ptr @strrchr(ptr noundef, i32 noundef) local_unnamed_addr #16

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #15

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #15

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #15

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #15

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.usub.sat.i32(i32, i32) #15

attributes #0 = { cold mustprogress nofree norecurse nosync nounwind null_pointer_is_valid optsize sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { cold mustprogress nofree norecurse nosync nounwind null_pointer_is_valid optsize sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { argmemonly nofree nounwind willreturn writeonly }
attributes #7 = { argmemonly nofree nounwind willreturn }
attributes #8 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #10 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #11 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #12 = { nounwind readonly }
attributes #13 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #14 = { mustprogress nofree nosync nounwind null_pointer_is_valid sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #15 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #16 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #17 = { nounwind }
attributes #18 = { nounwind readnone }
attributes #19 = { cold nounwind }

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
!9 = !{i64 2154380343}
!10 = !{i64 2154380505}
!11 = !{i64 2148296730}
!12 = !{i64 696701, i64 2148186672, i64 2148186698, i64 2148186745, i64 2148186767, i64 2148186795, i64 2148186815}
!13 = !{i64 2148199568, i64 2148199600, i64 2148199629, i64 2148199663, i64 2148199694, i64 2148199717}
!14 = !{i64 2148296933}
!15 = !{!"branch_weights", i32 2000, i32 1}
!16 = !{i64 2151634351, i64 2151634364}
!17 = !{i64 2148201241, i64 2148201267, i64 2148201296, i64 2148201330, i64 2148201361, i64 2148201384}
!18 = !{i64 2148198884, i64 2148198910, i64 2148198939, i64 2148198973, i64 2148199004, i64 2148199027}
!19 = !{i64 2154489613}
!20 = !{i64 2151629379, i64 2151629392}
!21 = !{i64 2151633880}
!22 = !{i64 2149385013}
!23 = !{i64 2149380837}
!24 = !{i64 2149380912, i64 2149380939, i64 2149380986, i64 2149381008, i64 2149381036, i64 2149381056}
!25 = !{i64 2149408016}
!26 = !{i64 2154489834}
!27 = !{i64 2148892427, i64 2148892450, i64 2148892482, i64 2148892514, i64 2148892552, i64 2148892582}
!28 = !{!"branch_weights", i32 1, i32 2000}
!29 = !{i64 2149795639}
!30 = !{i64 2152995501}
!31 = !{i64 2152092047}
!32 = !{i64 2153656391, i64 2153656879, i64 2153656428, i64 2153656484, i64 2153656518, i64 2153656542, i64 2153656583, i64 2153656604, i64 2153656632, i64 2153656666}
!33 = !{i64 2150513740}
!34 = !{i64 2148299563}
!35 = !{i64 2148201925, i64 2148201957, i64 2148201986, i64 2148202020, i64 2148202051, i64 2148202074}
!36 = !{i64 2148299766}
!37 = !{i64 2152092254}
!38 = !{i64 2152998126}
!39 = !{i64 2149795940}
!40 = !{i64 2154533963, i64 2154534440, i64 2154534000, i64 2154534056, i64 2154534090, i64 2154534114, i64 2154534155, i64 2154534176, i64 2154534204, i64 2154534238}
!41 = !{!"auto-init"}
!42 = !{i64 2154556172, i64 2154556649, i64 2154556209, i64 2154556265, i64 2154556299, i64 2154556323, i64 2154556364, i64 2154556385, i64 2154556413, i64 2154556447}
!43 = !{i64 2154557206, i64 2154557683, i64 2154557243, i64 2154557299, i64 2154557333, i64 2154557357, i64 2154557398, i64 2154557419, i64 2154557447, i64 2154557481}
!44 = !{i64 2154559464, i64 2154559941, i64 2154559501, i64 2154559557, i64 2154559591, i64 2154559615, i64 2154559656, i64 2154559677, i64 2154559705, i64 2154559739}
!45 = !{i64 2154560498, i64 2154560975, i64 2154560535, i64 2154560591, i64 2154560625, i64 2154560649, i64 2154560690, i64 2154560711, i64 2154560739, i64 2154560773}
!46 = !{!"branch_weights", i32 4000000, i32 2001, i32 2000}
!47 = !{i64 2154568264, i64 2154568741, i64 2154568301, i64 2154568357, i64 2154568391, i64 2154568415, i64 2154568456, i64 2154568477, i64 2154568505, i64 2154568539}
!48 = !{i64 2154569443, i64 2154569920, i64 2154569480, i64 2154569536, i64 2154569570, i64 2154569594, i64 2154569635, i64 2154569656, i64 2154569684, i64 2154569718}
!49 = !{!"branch_weights", i32 1, i32 4001}
!50 = !{i64 2154570549, i64 2154571026, i64 2154570586, i64 2154570642, i64 2154570676, i64 2154570700, i64 2154570741, i64 2154570762, i64 2154570790, i64 2154570824}
!51 = !{i64 2154571625, i64 2154572102, i64 2154571662, i64 2154571718, i64 2154571752, i64 2154571776, i64 2154571817, i64 2154571838, i64 2154571866, i64 2154571900}
!52 = !{i64 2154575195, i64 2154575672, i64 2154575232, i64 2154575288, i64 2154575322, i64 2154575346, i64 2154575387, i64 2154575408, i64 2154575436, i64 2154575470}
!53 = !{i64 2154587721, i64 2154588198, i64 2154587758, i64 2154587814, i64 2154587848, i64 2154587872, i64 2154587913, i64 2154587934, i64 2154587962, i64 2154587996}
!54 = !{i64 2154582088, i64 2154582565, i64 2154582125, i64 2154582181, i64 2154582215, i64 2154582239, i64 2154582280, i64 2154582301, i64 2154582329, i64 2154582363}
!55 = !{i64 2148893213, i64 2148893236, i64 2148893268, i64 2148893300, i64 2148893338, i64 2148893368}
!56 = !{i64 602379, i64 602440}
!57 = !{i64 621079}
!58 = !{i64 605396}
!59 = !{i64 2148207346, i64 2148207378, i64 2148207407, i64 2148207441, i64 2148207472, i64 2148207495}
!60 = !{i64 2148308686}
!61 = !{!"branch_weights", i32 1073205, i32 2146410443}
!62 = !{i64 2150513077}
!63 = !{i64 2149158814}
!64 = !{i64 2149159031}
!65 = !{i64 2154732438}
!66 = !{i64 2154732698}
!67 = !{i64 2154727884}
!68 = !{!"branch_weights", i32 2000, i32 4002001}
!69 = !{!"branch_weights", i32 2000, i32 2002}
!70 = !{i64 4585653}
!71 = !{i64 4585850}
!72 = !{i64 2152071129}
!73 = !{i32 0, i32 33}
