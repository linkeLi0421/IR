; ModuleID = '/llk/IR/arch/arm/mm/dma-mapping.c_pt.bc'
source_filename = "../arch/arm/mm/dma-mapping.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_arm_dma_ops:\09\09\09\09\09"
module asm "\09.asciz \09\22arm_dma_ops\22\09\09\09\09\09"
module asm "__kstrtabns_arm_dma_ops:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_arm_coherent_dma_ops:\09\09\09\09\09"
module asm "\09.asciz \09\22arm_coherent_dma_ops\22\09\09\09\09\09"
module asm "__kstrtabns_arm_coherent_dma_ops:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_arm_iommu_create_mapping:\09\09\09\09\09"
module asm "\09.asciz \09\22arm_iommu_create_mapping\22\09\09\09\09\09"
module asm "__kstrtabns_arm_iommu_create_mapping:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_arm_iommu_release_mapping:\09\09\09\09\09"
module asm "\09.asciz \09\22arm_iommu_release_mapping\22\09\09\09\09\09"
module asm "__kstrtabns_arm_iommu_release_mapping:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_arm_iommu_attach_device:\09\09\09\09\09"
module asm "\09.asciz \09\22arm_iommu_attach_device\22\09\09\09\09\09"
module asm "__kstrtabns_arm_iommu_attach_device:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_arm_iommu_detach_device:\09\09\09\09\09"
module asm "\09.asciz \09\22arm_iommu_detach_device\22\09\09\09\09\09"
module asm "__kstrtabns_arm_iommu_detach_device:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.dma_map_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.obs_kernel_param = type { ptr, ptr, i32 }
%struct.dma_contig_early_reserve = type { i32, i32 }
%struct.cpu_cache_fns = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.outer_cache_fns = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.mm_struct = type { %struct.anon.8, [0 x i32] }
%struct.anon.8 = type { ptr, %struct.rb_root, i64, ptr, i32, i32, i32, i32, ptr, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, i32, %struct.spinlock, %struct.rw_semaphore, %struct.list_head, i32, i32, i32, i32, %struct.atomic64_t, i32, i32, i32, i32, %struct.seqcount, %struct.spinlock, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [42 x i32], %struct.mm_rss_stat, ptr, %struct.mm_context_t, i32, %struct.spinlock, ptr, ptr, ptr, %struct.atomic_t, %struct.uprobes_state, %struct.work_struct, i32 }
%struct.rb_root = type { ptr }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.list_head = type { ptr, ptr }
%struct.atomic64_t = type { i64 }
%struct.seqcount = type { i32 }
%struct.mm_rss_stat = type { [4 x %struct.atomic_t] }
%struct.mm_context_t = type { %struct.atomic64_t, i32, i32, i32 }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.atomic_t = type { i32 }
%struct.uprobes_state = type { ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.processor = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr }
%struct.cpu_tlb_fns = type { ptr, ptr, i32 }
%struct.arm_dma_allocator = type { ptr, ptr }
%struct.vm_area_struct = type { i32, i32, ptr, ptr, %struct.rb_node, i32, ptr, i32, i32, %union.anon.9, %struct.list_head, ptr, ptr, i32, ptr, ptr, %struct.atomic_t, %struct.vm_userfaultfd_ctx }
%struct.rb_node = type { i32, ptr, ptr }
%union.anon.9 = type { %struct.anon.10 }
%struct.anon.10 = type { %struct.rb_node, i32 }
%struct.vm_userfaultfd_ctx = type {}
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.bus_dma_region = type { i32, i32, i64, i64 }
%struct.page = type { i32, %union.anon.1, %union.anon.58, %struct.atomic_t }
%union.anon.1 = type { %struct.anon }
%struct.anon = type { %struct.list_head, ptr, i32, i32 }
%union.anon.58 = type { %struct.atomic_t }
%struct.scatterlist = type { i32, i32, i32, i32, i32 }
%struct.map_desc = type { i32, i32, i32, i32 }
%struct.arm_dma_alloc_args = type { ptr, i32, i32, i32, ptr, i8, i32 }
%struct.arm_dma_buffer = type { %struct.list_head, ptr, ptr }
%struct.arm_dma_free_args = type { ptr, i32, ptr, ptr, i8 }
%struct.dma_iommu_mapping = type { ptr, ptr, i32, i32, i32, i32, i32, %struct.spinlock, %struct.kref }
%struct.task_struct = type { %struct.thread_info, i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [32 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, [36 x i8], %struct.sched_statistics, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i8, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.48, ptr, %struct.page_frag, i32, i32, i32, i64, i64, i32, i32, ptr, %struct.kmap_ctrl, i32, ptr, %struct.refcount_struct, %struct.thread_struct, [16 x i8] }
%struct.thread_info = type { i32, i32, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], [4 x i8], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.19 }
%struct.llist_node = type { ptr }
%union.anon.19 = type { i32 }
%struct.sched_entity = type { %struct.load_weight, %struct.rb_node, %struct.list_head, i32, i64, i64, i64, i64, i64, [56 x i8], %struct.sched_avg }
%struct.load_weight = type { i32, i32 }
%struct.sched_avg = type { i64, i64, i64, i32, i32, i32, i32, i32, [4 x i8], %struct.util_est, [8 x i8] }
%struct.util_est = type { i32, i32 }
%struct.sched_rt_entity = type { %struct.list_head, i32, i32, i32, i16, i16, ptr }
%struct.sched_dl_entity = type { %struct.rb_node, i64, i64, i64, i64, i64, i64, i64, i32, i8, %struct.hrtimer, %struct.hrtimer, ptr }
%struct.sched_statistics = type {}
%struct.cpumask = type { [1 x i32] }
%struct.sched_info = type {}
%struct.plist_node = type { i32, %struct.list_head, %struct.list_head }
%struct.vmacache = type { i64, [4 x ptr] }
%struct.task_rss_stat = type { i32, [4 x i32] }
%struct.restart_block = type { i32, ptr, %union.anon.20 }
%union.anon.20 = type { %struct.anon.21 }
%struct.anon.21 = type { ptr, i32, i32, i32, i64, ptr }
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
%struct.tlbflush_unmap_batch = type {}
%union.anon.48 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.page_frag = type { ptr, i16, i16 }
%struct.kmap_ctrl = type { i32, [16 x i32] }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
%struct.gen_pool = type { %struct.spinlock, %struct.list_head, i32, ptr, ptr, ptr }

@arm_dma_ops = dso_local constant %struct.dma_map_ops { ptr @arm_dma_alloc, ptr @arm_dma_free, ptr @dma_direct_alloc_pages, ptr @dma_direct_free_pages, ptr null, ptr null, ptr @arm_dma_mmap, ptr @arm_dma_get_sgtable, ptr @arm_dma_map_page, ptr @arm_dma_unmap_page, ptr @arm_dma_map_sg, ptr @arm_dma_unmap_sg, ptr @dma_direct_map_resource, ptr null, ptr @arm_dma_sync_single_for_cpu, ptr @arm_dma_sync_single_for_device, ptr @arm_dma_sync_sg_for_cpu, ptr @arm_dma_sync_sg_for_device, ptr null, ptr @arm_dma_supported, ptr @dma_direct_get_required_mask, ptr null, ptr null }, align 4
@__kstrtab_arm_dma_ops = external dso_local constant [0 x i8], align 1
@__kstrtabns_arm_dma_ops = external dso_local constant [0 x i8], align 1
@__ksymtab_arm_dma_ops = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @arm_dma_ops to i32), ptr @__kstrtab_arm_dma_ops, ptr @__kstrtabns_arm_dma_ops }, section "___ksymtab+arm_dma_ops", align 4
@arm_coherent_dma_ops = dso_local constant %struct.dma_map_ops { ptr @arm_coherent_dma_alloc, ptr @arm_coherent_dma_free, ptr @dma_direct_alloc_pages, ptr @dma_direct_free_pages, ptr null, ptr null, ptr @arm_coherent_dma_mmap, ptr @arm_dma_get_sgtable, ptr @arm_coherent_dma_map_page, ptr null, ptr @arm_dma_map_sg, ptr null, ptr @dma_direct_map_resource, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @arm_dma_supported, ptr @dma_direct_get_required_mask, ptr null, ptr null }, align 4
@__kstrtab_arm_coherent_dma_ops = external dso_local constant [0 x i8], align 1
@__kstrtabns_arm_coherent_dma_ops = external dso_local constant [0 x i8], align 1
@__ksymtab_arm_coherent_dma_ops = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @arm_coherent_dma_ops to i32), ptr @__kstrtab_arm_coherent_dma_ops, ptr @__kstrtabns_arm_coherent_dma_ops }, section "___ksymtab+arm_coherent_dma_ops", align 4
@__setup_str_early_coherent_pool = internal constant [14 x i8] c"coherent_pool\00", section ".init.rodata", align 1
@__setup_early_coherent_pool = internal global %struct.obs_kernel_param { ptr @__setup_str_early_coherent_pool, ptr @early_coherent_pool, i32 1 }, section ".init.setup", align 4
@__initcall__kmod_dma_mapping__241_382_atomic_pool_init2 = internal global ptr @atomic_pool_init, section ".initcall2.init", align 4
@dma_mmu_remap = internal unnamed_addr global [8 x %struct.dma_contig_early_reserve] zeroinitializer, section ".init.data", align 4
@dma_mmu_remap_num = internal unnamed_addr global i32 0, section ".init.data", align 4
@arm_lowmem_limit = external dso_local local_unnamed_addr global i32, align 4
@pgprot_kernel = external dso_local local_unnamed_addr global i32, align 4
@mem_map = external dso_local local_unnamed_addr global ptr, align 4
@__pv_phys_pfn_offset = external dso_local local_unnamed_addr global i32, align 4
@__kstrtab_arm_iommu_create_mapping = external dso_local constant [0 x i8], align 1
@__kstrtabns_arm_iommu_create_mapping = external dso_local constant [0 x i8], align 1
@__ksymtab_arm_iommu_create_mapping = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @arm_iommu_create_mapping to i32), ptr @__kstrtab_arm_iommu_create_mapping, ptr @__kstrtabns_arm_iommu_create_mapping }, section "___ksymtab_gpl+arm_iommu_create_mapping", align 4
@__kstrtab_arm_iommu_release_mapping = external dso_local constant [0 x i8], align 1
@__kstrtabns_arm_iommu_release_mapping = external dso_local constant [0 x i8], align 1
@__ksymtab_arm_iommu_release_mapping = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @arm_iommu_release_mapping to i32), ptr @__kstrtab_arm_iommu_release_mapping, ptr @__kstrtabns_arm_iommu_release_mapping }, section "___ksymtab_gpl+arm_iommu_release_mapping", align 4
@iommu_ops = internal constant %struct.dma_map_ops { ptr @arm_iommu_alloc_attrs, ptr @arm_iommu_free_attrs, ptr null, ptr null, ptr null, ptr null, ptr @arm_iommu_mmap_attrs, ptr @arm_iommu_get_sgtable, ptr @arm_iommu_map_page, ptr @arm_iommu_unmap_page, ptr @arm_iommu_map_sg, ptr @arm_iommu_unmap_sg, ptr @arm_iommu_map_resource, ptr @arm_iommu_unmap_resource, ptr @arm_iommu_sync_single_for_cpu, ptr @arm_iommu_sync_single_for_device, ptr @arm_iommu_sync_sg_for_cpu, ptr @arm_iommu_sync_sg_for_device, ptr null, ptr @arm_dma_supported, ptr null, ptr null, ptr null }, align 4
@__kstrtab_arm_iommu_attach_device = external dso_local constant [0 x i8], align 1
@__kstrtabns_arm_iommu_attach_device = external dso_local constant [0 x i8], align 1
@__ksymtab_arm_iommu_attach_device = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @arm_iommu_attach_device to i32), ptr @__kstrtab_arm_iommu_attach_device, ptr @__kstrtabns_arm_iommu_attach_device }, section "___ksymtab_gpl+arm_iommu_attach_device", align 4
@.str = private unnamed_addr constant [14 x i8] c"Not attached\0A\00", align 1
@__kstrtab_arm_iommu_detach_device = external dso_local constant [0 x i8], align 1
@__kstrtabns_arm_iommu_detach_device = external dso_local constant [0 x i8], align 1
@__ksymtab_arm_iommu_detach_device = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @arm_iommu_detach_device to i32), ptr @__kstrtab_arm_iommu_detach_device, ptr @__kstrtabns_arm_iommu_detach_device }, section "___ksymtab_gpl+arm_iommu_detach_device", align 4
@cpu_cache = external dso_local local_unnamed_addr global %struct.cpu_cache_fns, align 4
@movable_zone = external dso_local local_unnamed_addr global i32, align 4
@cacheid = external dso_local local_unnamed_addr global i32, align 4
@outer_cache = external dso_local local_unnamed_addr global %struct.outer_cache_fns, align 4
@max_pfn = external dso_local local_unnamed_addr global i32, align 4
@arm_dma_pfn_limit = external dso_local local_unnamed_addr global i32, align 4
@atomic_pool_size = internal unnamed_addr global i32 262144, section ".init.data", align 4
@atomic_pool = internal unnamed_addr global ptr null, section ".data..ro_after_init", align 4
@.str.1 = private unnamed_addr constant [66 x i8] c"\016DMA: preallocated %zu KiB pool for atomic coherent allocations\0A\00", align 1
@.str.2 = private unnamed_addr constant [71 x i8] c"\013DMA: failed to allocate %zu KiB pool for atomic coherent allocation\0A\00", align 1
@dma_contiguous_default_area = external dso_local local_unnamed_addr global ptr, align 4
@init_mm = external dso_local global %struct.mm_struct, align 8
@processor = external dso_local local_unnamed_addr global %struct.processor, align 4
@cpu_tlb = external dso_local local_unnamed_addr global %struct.cpu_tlb_fns, align 4
@cma_allocator = internal global %struct.arm_dma_allocator { ptr @cma_allocator_alloc, ptr @cma_allocator_free }, align 4
@simple_allocator = internal global %struct.arm_dma_allocator { ptr @simple_allocator_alloc, ptr @simple_allocator_free }, align 4
@remap_allocator = internal global %struct.arm_dma_allocator { ptr @remap_allocator_alloc, ptr @remap_allocator_free }, align 4
@pool_allocator = internal global %struct.arm_dma_allocator { ptr @pool_allocator_alloc, ptr @pool_allocator_free }, align 4
@arm_dma_bufs_lock = internal global %struct.spinlock zeroinitializer, align 4
@arm_dma_bufs = internal global %struct.list_head { ptr @arm_dma_bufs, ptr @arm_dma_bufs }, align 4
@.str.3 = private unnamed_addr constant [26 x i8] c"arch/arm/mm/dma-mapping.c\00", align 1
@.str.4 = private unnamed_addr constant [32 x i8] c"coherent pool not initialised!\0A\00", align 1
@.str.5 = private unnamed_addr constant [27 x i8] c"Freeing invalid buffer %p\0A\00", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@iommu_order_array = internal unnamed_addr constant [4 x i32] [i32 9, i32 8, i32 4, i32 0], align 4
@.str.6 = private unnamed_addr constant [42 x i8] c"trying to free invalid coherent area: %p\0A\00", align 1
@.str.7 = private unnamed_addr constant [31 x i8] c"\013Remapping memory failed: %d\0A\00", align 1
@.str.8 = private unnamed_addr constant [58 x i8] c"\014Failed to create %llu-byte IOMMU mapping for device %s\0A\00", align 1
@.str.9 = private unnamed_addr constant [49 x i8] c"\014Failed to attached device %s to IOMMU_mapping\0A\00", align 1
@iommu_coherent_ops = internal constant %struct.dma_map_ops { ptr @arm_coherent_iommu_alloc_attrs, ptr @arm_coherent_iommu_free_attrs, ptr null, ptr null, ptr null, ptr null, ptr @arm_coherent_iommu_mmap_attrs, ptr @arm_iommu_get_sgtable, ptr @arm_coherent_iommu_map_page, ptr @arm_coherent_iommu_unmap_page, ptr @arm_coherent_iommu_map_sg, ptr @arm_coherent_iommu_unmap_sg, ptr @arm_iommu_map_resource, ptr @arm_iommu_unmap_resource, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @arm_dma_supported, ptr null, ptr null, ptr null }, align 4
@llvm.compiler.used = appending global [8 x ptr] [ptr @__initcall__kmod_dma_mapping__241_382_atomic_pool_init2, ptr @__ksymtab_arm_coherent_dma_ops, ptr @__ksymtab_arm_dma_ops, ptr @__ksymtab_arm_iommu_attach_device, ptr @__ksymtab_arm_iommu_create_mapping, ptr @__ksymtab_arm_iommu_detach_device, ptr @__ksymtab_arm_iommu_release_mapping, ptr @__setup_early_coherent_pool], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @arm_dma_alloc(ptr noundef %0, i32 noundef %1, ptr nocapture noundef writeonly %2, i32 noundef %3, i32 noundef %4) #0 {
  %6 = load i32, ptr @pgprot_kernel, align 4
  %7 = and i32 %6, -573
  %8 = or i32 %7, 516
  %9 = tail call ptr @llvm.returnaddress(i32 0)
  %10 = tail call fastcc ptr @__dma_alloc(ptr noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef %8, i1 noundef zeroext false, i32 noundef %4, ptr noundef %9)
  ret ptr %10
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @arm_dma_free(ptr noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef %4) #0 {
  tail call fastcc void @__arm_dma_free(ptr noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef %4)
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dma_direct_alloc_pages(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_direct_free_pages(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @arm_dma_mmap(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5) #0 {
  %7 = getelementptr inbounds %struct.vm_area_struct, ptr %1, i32 0, i32 7
  %8 = load i32, ptr %7, align 4
  %9 = and i32 %5, 4
  %10 = icmp eq i32 %9, 0
  %11 = and i32 %8, -61
  %12 = or i32 %11, 4
  %13 = and i32 %8, -573
  %14 = or i32 %13, 516
  %15 = select i1 %10, i32 %14, i32 %12
  store i32 %15, ptr %7, align 4
  %16 = tail call fastcc i32 @__arm_dma_mmap(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef %4)
  ret i32 %16
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @arm_dma_get_sgtable(ptr noundef readonly %0, ptr noundef %1, ptr nocapture readnone %2, i32 noundef %3, i32 noundef %4, i32 %5) #0 {
  %7 = icmp eq ptr %0, null
  br i1 %7, label %37, label %8

8:                                                ; preds = %6
  %9 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 19
  %10 = load ptr, ptr %9, align 8
  %11 = icmp eq ptr %10, null
  br i1 %11, label %37, label %12

12:                                               ; preds = %8
  %13 = and i32 %3, -4096
  %14 = getelementptr inbounds %struct.bus_dma_region, ptr %10, i32 0, i32 2
  %15 = load i64, ptr %14, align 8
  %16 = icmp eq i64 %15, 0
  br i1 %16, label %37, label %17

17:                                               ; preds = %32, %12
  %18 = phi i64 [ %35, %32 ], [ %15, %12 ]
  %19 = phi ptr [ %33, %32 ], [ %10, %12 ]
  %20 = getelementptr inbounds %struct.bus_dma_region, ptr %19, i32 0, i32 1
  %21 = load i32, ptr %20, align 4
  %22 = icmp ult i32 %13, %21
  br i1 %22, label %32, label %23

23:                                               ; preds = %17
  %24 = sub i32 %13, %21
  %25 = zext i32 %24 to i64
  %26 = icmp ugt i64 %18, %25
  br i1 %26, label %27, label %32

27:                                               ; preds = %23
  %28 = getelementptr inbounds %struct.bus_dma_region, ptr %19, i32 0, i32 3
  %29 = load i64, ptr %28, align 8
  %30 = trunc i64 %29 to i32
  %31 = add i32 %13, %30
  br label %37

32:                                               ; preds = %23, %17
  %33 = getelementptr %struct.bus_dma_region, ptr %19, i32 1
  %34 = getelementptr %struct.bus_dma_region, ptr %19, i32 1, i32 2
  %35 = load i64, ptr %34, align 8
  %36 = icmp eq i64 %35, 0
  br i1 %36, label %37, label %17

37:                                               ; preds = %32, %27, %12, %8, %6
  %38 = phi i32 [ %3, %8 ], [ %3, %6 ], [ %31, %27 ], [ -1, %12 ], [ -1, %32 ]
  %39 = lshr i32 %38, 12
  %40 = tail call i32 @pfn_valid(i32 noundef %39) #14
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %63, label %42

42:                                               ; preds = %37
  %43 = load ptr, ptr @mem_map, align 4
  %44 = load i32, ptr @__pv_phys_pfn_offset, align 4
  %45 = tail call i32 @sg_alloc_table(ptr noundef %1, i32 noundef 1, i32 noundef 3264) #14
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %47, label %63, !prof !8

47:                                               ; preds = %42
  %48 = sub i32 %39, %44
  %49 = getelementptr %struct.page, ptr %43, i32 %48
  %50 = ptrtoint ptr %49 to i32
  %51 = and i32 %50, 3
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %54, label %53, !prof !8

53:                                               ; preds = %47
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 112, 0\0A.popsection", ""() #14, !srcloc !9
  unreachable

54:                                               ; preds = %47
  %55 = add i32 %4, 4095
  %56 = and i32 %55, -4096
  %57 = load ptr, ptr %1, align 4
  %58 = load i32, ptr %57, align 4
  %59 = and i32 %58, 3
  %60 = or i32 %59, %50
  store i32 %60, ptr %57, align 4
  %61 = getelementptr inbounds %struct.scatterlist, ptr %57, i32 0, i32 1
  store i32 0, ptr %61, align 4
  %62 = getelementptr inbounds %struct.scatterlist, ptr %57, i32 0, i32 2
  store i32 %56, ptr %62, align 4
  br label %63

63:                                               ; preds = %54, %42, %37
  %64 = phi i32 [ 0, %54 ], [ -6, %37 ], [ %45, %42 ]
  ret i32 %64
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @arm_dma_map_page(ptr noundef readonly %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5) #0 {
  %7 = and i32 %5, 32
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %11, label %9

9:                                                ; preds = %6
  %10 = ptrtoint ptr %1 to i32
  br label %32

11:                                               ; preds = %6
  %12 = load ptr, ptr getelementptr inbounds (%struct.cpu_cache_fns, ptr @cpu_cache, i32 0, i32 8), align 4
  tail call fastcc void @dma_cache_maint_page(ptr noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, ptr noundef %12) #14
  %13 = load ptr, ptr @mem_map, align 4
  %14 = ptrtoint ptr %1 to i32
  %15 = ptrtoint ptr %13 to i32
  %16 = sub i32 %14, %15
  %17 = lshr exact i32 %16, 5
  %18 = load i32, ptr @__pv_phys_pfn_offset, align 4
  %19 = add i32 %17, %18
  %20 = shl i32 %19, 12
  %21 = add i32 %20, %2
  %22 = icmp eq i32 %4, 2
  br i1 %22, label %23, label %26

23:                                               ; preds = %11
  %24 = load ptr, ptr @outer_cache, align 4
  %25 = icmp eq ptr %24, null
  br i1 %25, label %32, label %29

26:                                               ; preds = %11
  %27 = load ptr, ptr getelementptr inbounds (%struct.outer_cache_fns, ptr @outer_cache, i32 0, i32 1), align 4
  %28 = icmp eq ptr %27, null
  br i1 %28, label %32, label %29

29:                                               ; preds = %26, %23
  %30 = phi ptr [ %24, %23 ], [ %27, %26 ]
  %31 = add i32 %21, %3
  tail call void %30(i32 noundef %21, i32 noundef %31) #14
  br label %32

32:                                               ; preds = %29, %26, %23, %9
  %33 = phi i32 [ %10, %9 ], [ %14, %29 ], [ %14, %26 ], [ %14, %23 ]
  %34 = load ptr, ptr @mem_map, align 4
  %35 = ptrtoint ptr %34 to i32
  %36 = sub i32 %33, %35
  %37 = ashr exact i32 %36, 5
  %38 = load i32, ptr @__pv_phys_pfn_offset, align 4
  %39 = add i32 %37, %38
  %40 = icmp eq ptr %0, null
  br i1 %40, label %70, label %41

41:                                               ; preds = %32
  %42 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 19
  %43 = load ptr, ptr %42, align 8
  %44 = icmp eq ptr %43, null
  br i1 %44, label %70, label %45

45:                                               ; preds = %41
  %46 = shl i32 %39, 12
  %47 = getelementptr inbounds %struct.bus_dma_region, ptr %43, i32 0, i32 2
  %48 = load i64, ptr %47, align 8
  %49 = icmp eq i64 %48, 0
  br i1 %49, label %70, label %50

50:                                               ; preds = %65, %45
  %51 = phi i64 [ %68, %65 ], [ %48, %45 ]
  %52 = phi ptr [ %66, %65 ], [ %43, %45 ]
  %53 = load i32, ptr %52, align 8
  %54 = icmp ult i32 %46, %53
  br i1 %54, label %65, label %55

55:                                               ; preds = %50
  %56 = sub i32 %46, %53
  %57 = zext i32 %56 to i64
  %58 = icmp ugt i64 %51, %57
  br i1 %58, label %59, label %65

59:                                               ; preds = %55
  %60 = getelementptr inbounds %struct.bus_dma_region, ptr %52, i32 0, i32 3
  %61 = load i64, ptr %60, align 8
  %62 = trunc i64 %61 to i32
  %63 = sub i32 %46, %62
  %64 = lshr i32 %63, 12
  br label %70

65:                                               ; preds = %55, %50
  %66 = getelementptr %struct.bus_dma_region, ptr %52, i32 1
  %67 = getelementptr %struct.bus_dma_region, ptr %52, i32 1, i32 2
  %68 = load i64, ptr %67, align 8
  %69 = icmp eq i64 %68, 0
  br i1 %69, label %70, label %50

70:                                               ; preds = %65, %59, %45, %41, %32
  %71 = phi i32 [ %39, %41 ], [ %39, %32 ], [ %64, %59 ], [ 1048575, %45 ], [ 1048575, %65 ]
  %72 = shl i32 %71, 12
  %73 = add i32 %72, %2
  ret i32 %73
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @arm_dma_unmap_page(ptr noundef readonly %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) #0 {
  %6 = and i32 %4, 32
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %47

8:                                                ; preds = %5
  %9 = load ptr, ptr @mem_map, align 4
  %10 = icmp eq ptr %0, null
  br i1 %10, label %40, label %11

11:                                               ; preds = %8
  %12 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 19
  %13 = load ptr, ptr %12, align 8
  %14 = icmp eq ptr %13, null
  br i1 %14, label %40, label %15

15:                                               ; preds = %11
  %16 = and i32 %1, -4096
  %17 = getelementptr inbounds %struct.bus_dma_region, ptr %13, i32 0, i32 2
  %18 = load i64, ptr %17, align 8
  %19 = icmp eq i64 %18, 0
  br i1 %19, label %40, label %20

20:                                               ; preds = %35, %15
  %21 = phi i64 [ %38, %35 ], [ %18, %15 ]
  %22 = phi ptr [ %36, %35 ], [ %13, %15 ]
  %23 = getelementptr inbounds %struct.bus_dma_region, ptr %22, i32 0, i32 1
  %24 = load i32, ptr %23, align 4
  %25 = icmp ult i32 %16, %24
  br i1 %25, label %35, label %26

26:                                               ; preds = %20
  %27 = sub i32 %16, %24
  %28 = zext i32 %27 to i64
  %29 = icmp ugt i64 %21, %28
  br i1 %29, label %30, label %35

30:                                               ; preds = %26
  %31 = getelementptr inbounds %struct.bus_dma_region, ptr %22, i32 0, i32 3
  %32 = load i64, ptr %31, align 8
  %33 = trunc i64 %32 to i32
  %34 = add i32 %16, %33
  br label %40

35:                                               ; preds = %26, %20
  %36 = getelementptr %struct.bus_dma_region, ptr %22, i32 1
  %37 = getelementptr %struct.bus_dma_region, ptr %22, i32 1, i32 2
  %38 = load i64, ptr %37, align 8
  %39 = icmp eq i64 %38, 0
  br i1 %39, label %40, label %20

40:                                               ; preds = %35, %30, %15, %11, %8
  %41 = phi i32 [ %1, %11 ], [ %1, %8 ], [ %34, %30 ], [ -1, %15 ], [ -1, %35 ]
  %42 = lshr i32 %41, 12
  %43 = load i32, ptr @__pv_phys_pfn_offset, align 4
  %44 = sub i32 %42, %43
  %45 = getelementptr %struct.page, ptr %9, i32 %44
  %46 = and i32 %1, 4095
  tail call fastcc void @__dma_page_dev_to_cpu(ptr noundef %45, i32 noundef %46, i32 noundef %2, i32 noundef %3)
  br label %47

47:                                               ; preds = %40, %5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @arm_dma_map_sg(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) #0 {
  %6 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 15
  %7 = load ptr, ptr %6, align 8
  %8 = icmp eq ptr %7, null
  %9 = select i1 %8, ptr @arm_dma_ops, ptr %7
  %10 = icmp sgt i32 %2, 0
  br i1 %10, label %11, label %47

11:                                               ; preds = %5
  %12 = getelementptr inbounds %struct.dma_map_ops, ptr %9, i32 0, i32 8
  br label %13

13:                                               ; preds = %32, %11
  %14 = phi i32 [ 0, %11 ], [ %33, %32 ]
  %15 = phi ptr [ %1, %11 ], [ %34, %32 ]
  %16 = getelementptr inbounds %struct.scatterlist, ptr %15, i32 0, i32 2
  %17 = load i32, ptr %16, align 4
  %18 = getelementptr inbounds %struct.scatterlist, ptr %15, i32 0, i32 4
  store i32 %17, ptr %18, align 4
  %19 = load ptr, ptr %12, align 4
  %20 = load i32, ptr %15, align 4
  %21 = and i32 %20, -4
  %22 = inttoptr i32 %21 to ptr
  %23 = getelementptr inbounds %struct.scatterlist, ptr %15, i32 0, i32 1
  %24 = load i32, ptr %23, align 4
  %25 = tail call i32 %19(ptr noundef %0, ptr noundef %22, i32 noundef %24, i32 noundef %17, i32 noundef %3, i32 noundef %4) #14
  %26 = getelementptr inbounds %struct.scatterlist, ptr %15, i32 0, i32 3
  store i32 %25, ptr %26, align 4
  %27 = icmp eq i32 %25, -1
  br i1 %27, label %28, label %32

28:                                               ; preds = %13
  %29 = icmp eq i32 %14, 0
  br i1 %29, label %47, label %30

30:                                               ; preds = %28
  %31 = getelementptr inbounds %struct.dma_map_ops, ptr %9, i32 0, i32 9
  br label %36

32:                                               ; preds = %13
  %33 = add nuw nsw i32 %14, 1
  %34 = tail call ptr @sg_next(ptr noundef %15) #14
  %35 = icmp eq i32 %33, %2
  br i1 %35, label %47, label %13

36:                                               ; preds = %36, %30
  %37 = phi i32 [ 0, %30 ], [ %44, %36 ]
  %38 = phi ptr [ %1, %30 ], [ %45, %36 ]
  %39 = load ptr, ptr %31, align 4
  %40 = getelementptr inbounds %struct.scatterlist, ptr %38, i32 0, i32 3
  %41 = load i32, ptr %40, align 4
  %42 = getelementptr inbounds %struct.scatterlist, ptr %38, i32 0, i32 4
  %43 = load i32, ptr %42, align 4
  tail call void %39(ptr noundef %0, i32 noundef %41, i32 noundef %43, i32 noundef %3, i32 noundef %4) #14
  %44 = add nuw nsw i32 %37, 1
  %45 = tail call ptr @sg_next(ptr noundef %38) #14
  %46 = icmp eq i32 %44, %14
  br i1 %46, label %47, label %36

47:                                               ; preds = %36, %32, %28, %5
  %48 = phi i32 [ -5, %28 ], [ %2, %5 ], [ -5, %36 ], [ %2, %32 ]
  ret i32 %48
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @arm_dma_unmap_sg(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) #0 {
  %6 = icmp sgt i32 %2, 0
  br i1 %6, label %7, label %24

7:                                                ; preds = %5
  %8 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 15
  %9 = load ptr, ptr %8, align 8
  %10 = icmp eq ptr %9, null
  %11 = select i1 %10, ptr @arm_dma_ops, ptr %9
  %12 = getelementptr inbounds %struct.dma_map_ops, ptr %11, i32 0, i32 9
  br label %13

13:                                               ; preds = %13, %7
  %14 = phi i32 [ 0, %7 ], [ %21, %13 ]
  %15 = phi ptr [ %1, %7 ], [ %22, %13 ]
  %16 = load ptr, ptr %12, align 4
  %17 = getelementptr inbounds %struct.scatterlist, ptr %15, i32 0, i32 3
  %18 = load i32, ptr %17, align 4
  %19 = getelementptr inbounds %struct.scatterlist, ptr %15, i32 0, i32 4
  %20 = load i32, ptr %19, align 4
  tail call void %16(ptr noundef %0, i32 noundef %18, i32 noundef %20, i32 noundef %3, i32 noundef %4) #14
  %21 = add nuw nsw i32 %14, 1
  %22 = tail call ptr @sg_next(ptr noundef %15) #14
  %23 = icmp eq i32 %21, %2
  br i1 %23, label %24, label %13

24:                                               ; preds = %13, %5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_direct_map_resource(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @arm_dma_sync_single_for_cpu(ptr noundef readonly %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) #0 {
  %5 = load ptr, ptr @mem_map, align 4
  %6 = and i32 %1, -4096
  %7 = icmp eq ptr %0, null
  br i1 %7, label %36, label %8

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 19
  %10 = load ptr, ptr %9, align 8
  %11 = icmp eq ptr %10, null
  br i1 %11, label %36, label %12

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct.bus_dma_region, ptr %10, i32 0, i32 2
  %14 = load i64, ptr %13, align 8
  %15 = icmp eq i64 %14, 0
  br i1 %15, label %36, label %16

16:                                               ; preds = %31, %12
  %17 = phi i64 [ %34, %31 ], [ %14, %12 ]
  %18 = phi ptr [ %32, %31 ], [ %10, %12 ]
  %19 = getelementptr inbounds %struct.bus_dma_region, ptr %18, i32 0, i32 1
  %20 = load i32, ptr %19, align 4
  %21 = icmp ult i32 %6, %20
  br i1 %21, label %31, label %22

22:                                               ; preds = %16
  %23 = sub i32 %6, %20
  %24 = zext i32 %23 to i64
  %25 = icmp ugt i64 %17, %24
  br i1 %25, label %26, label %31

26:                                               ; preds = %22
  %27 = getelementptr inbounds %struct.bus_dma_region, ptr %18, i32 0, i32 3
  %28 = load i64, ptr %27, align 8
  %29 = trunc i64 %28 to i32
  %30 = add i32 %6, %29
  br label %36

31:                                               ; preds = %22, %16
  %32 = getelementptr %struct.bus_dma_region, ptr %18, i32 1
  %33 = getelementptr %struct.bus_dma_region, ptr %18, i32 1, i32 2
  %34 = load i64, ptr %33, align 8
  %35 = icmp eq i64 %34, 0
  br i1 %35, label %36, label %16

36:                                               ; preds = %31, %26, %12, %8, %4
  %37 = phi i32 [ %6, %8 ], [ %6, %4 ], [ %30, %26 ], [ -1, %12 ], [ -1, %31 ]
  %38 = and i32 %1, 4095
  %39 = lshr i32 %37, 12
  %40 = load i32, ptr @__pv_phys_pfn_offset, align 4
  %41 = sub i32 %39, %40
  %42 = getelementptr %struct.page, ptr %5, i32 %41
  tail call fastcc void @__dma_page_dev_to_cpu(ptr noundef %42, i32 noundef %38, i32 noundef %2, i32 noundef %3)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @arm_dma_sync_single_for_device(ptr noundef readonly %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) #0 {
  %5 = and i32 %1, 4095
  %6 = load ptr, ptr @mem_map, align 4
  %7 = and i32 %1, -4096
  %8 = icmp eq ptr %0, null
  br i1 %8, label %37, label %9

9:                                                ; preds = %4
  %10 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 19
  %11 = load ptr, ptr %10, align 8
  %12 = icmp eq ptr %11, null
  br i1 %12, label %37, label %13

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct.bus_dma_region, ptr %11, i32 0, i32 2
  %15 = load i64, ptr %14, align 8
  %16 = icmp eq i64 %15, 0
  br i1 %16, label %37, label %17

17:                                               ; preds = %32, %13
  %18 = phi i64 [ %35, %32 ], [ %15, %13 ]
  %19 = phi ptr [ %33, %32 ], [ %11, %13 ]
  %20 = getelementptr inbounds %struct.bus_dma_region, ptr %19, i32 0, i32 1
  %21 = load i32, ptr %20, align 4
  %22 = icmp ult i32 %7, %21
  br i1 %22, label %32, label %23

23:                                               ; preds = %17
  %24 = sub i32 %7, %21
  %25 = zext i32 %24 to i64
  %26 = icmp ugt i64 %18, %25
  br i1 %26, label %27, label %32

27:                                               ; preds = %23
  %28 = getelementptr inbounds %struct.bus_dma_region, ptr %19, i32 0, i32 3
  %29 = load i64, ptr %28, align 8
  %30 = trunc i64 %29 to i32
  %31 = add i32 %7, %30
  br label %37

32:                                               ; preds = %23, %17
  %33 = getelementptr %struct.bus_dma_region, ptr %19, i32 1
  %34 = getelementptr %struct.bus_dma_region, ptr %19, i32 1, i32 2
  %35 = load i64, ptr %34, align 8
  %36 = icmp eq i64 %35, 0
  br i1 %36, label %37, label %17

37:                                               ; preds = %32, %27, %13, %9, %4
  %38 = phi i32 [ %7, %9 ], [ %7, %4 ], [ %31, %27 ], [ -1, %13 ], [ -1, %32 ]
  %39 = lshr i32 %38, 12
  %40 = load i32, ptr @__pv_phys_pfn_offset, align 4
  %41 = sub i32 %39, %40
  %42 = getelementptr %struct.page, ptr %6, i32 %41
  %43 = load ptr, ptr getelementptr inbounds (%struct.cpu_cache_fns, ptr @cpu_cache, i32 0, i32 8), align 4
  tail call fastcc void @dma_cache_maint_page(ptr noundef %42, i32 noundef %5, i32 noundef %2, i32 noundef %3, ptr noundef %43) #14
  %44 = load ptr, ptr @mem_map, align 4
  %45 = ptrtoint ptr %42 to i32
  %46 = ptrtoint ptr %44 to i32
  %47 = sub i32 %45, %46
  %48 = lshr exact i32 %47, 5
  %49 = load i32, ptr @__pv_phys_pfn_offset, align 4
  %50 = add i32 %48, %49
  %51 = shl i32 %50, 12
  %52 = or i32 %51, %5
  %53 = icmp eq i32 %3, 2
  br i1 %53, label %54, label %57

54:                                               ; preds = %37
  %55 = load ptr, ptr @outer_cache, align 4
  %56 = icmp eq ptr %55, null
  br i1 %56, label %63, label %60

57:                                               ; preds = %37
  %58 = load ptr, ptr getelementptr inbounds (%struct.outer_cache_fns, ptr @outer_cache, i32 0, i32 1), align 4
  %59 = icmp eq ptr %58, null
  br i1 %59, label %63, label %60

60:                                               ; preds = %57, %54
  %61 = phi ptr [ %55, %54 ], [ %58, %57 ]
  %62 = add i32 %52, %2
  tail call void %61(i32 noundef %52, i32 noundef %62) #14
  br label %63

63:                                               ; preds = %60, %57, %54
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @arm_dma_sync_sg_for_cpu(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) #0 {
  %5 = icmp sgt i32 %2, 0
  br i1 %5, label %6, label %23

6:                                                ; preds = %4
  %7 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 15
  %8 = load ptr, ptr %7, align 8
  %9 = icmp eq ptr %8, null
  %10 = select i1 %9, ptr @arm_dma_ops, ptr %8
  %11 = getelementptr inbounds %struct.dma_map_ops, ptr %10, i32 0, i32 14
  br label %12

12:                                               ; preds = %12, %6
  %13 = phi i32 [ 0, %6 ], [ %20, %12 ]
  %14 = phi ptr [ %1, %6 ], [ %21, %12 ]
  %15 = load ptr, ptr %11, align 4
  %16 = getelementptr inbounds %struct.scatterlist, ptr %14, i32 0, i32 3
  %17 = load i32, ptr %16, align 4
  %18 = getelementptr inbounds %struct.scatterlist, ptr %14, i32 0, i32 2
  %19 = load i32, ptr %18, align 4
  tail call void %15(ptr noundef %0, i32 noundef %17, i32 noundef %19, i32 noundef %3) #14
  %20 = add nuw nsw i32 %13, 1
  %21 = tail call ptr @sg_next(ptr noundef %14) #14
  %22 = icmp eq i32 %20, %2
  br i1 %22, label %23, label %12

23:                                               ; preds = %12, %4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @arm_dma_sync_sg_for_device(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) #0 {
  %5 = icmp sgt i32 %2, 0
  br i1 %5, label %6, label %23

6:                                                ; preds = %4
  %7 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 15
  %8 = load ptr, ptr %7, align 8
  %9 = icmp eq ptr %8, null
  %10 = select i1 %9, ptr @arm_dma_ops, ptr %8
  %11 = getelementptr inbounds %struct.dma_map_ops, ptr %10, i32 0, i32 15
  br label %12

12:                                               ; preds = %12, %6
  %13 = phi i32 [ 0, %6 ], [ %20, %12 ]
  %14 = phi ptr [ %1, %6 ], [ %21, %12 ]
  %15 = load ptr, ptr %11, align 4
  %16 = getelementptr inbounds %struct.scatterlist, ptr %14, i32 0, i32 3
  %17 = load i32, ptr %16, align 4
  %18 = getelementptr inbounds %struct.scatterlist, ptr %14, i32 0, i32 2
  %19 = load i32, ptr %18, align 4
  tail call void %15(ptr noundef %0, i32 noundef %17, i32 noundef %19, i32 noundef %3) #14
  %20 = add nuw nsw i32 %13, 1
  %21 = tail call ptr @sg_next(ptr noundef %14) #14
  %22 = icmp eq i32 %20, %2
  br i1 %22, label %23, label %12

23:                                               ; preds = %12, %4
  ret void
}

; Function Attrs: nofree nosync nounwind null_pointer_is_valid readonly sspstrong uwtable(sync)
define internal i32 @arm_dma_supported(ptr noundef readonly %0, i64 noundef %1) #2 {
  %3 = load i32, ptr @max_pfn, align 4
  %4 = load i32, ptr @arm_dma_pfn_limit, align 4
  %5 = trunc i64 %1 to i32
  %6 = icmp eq ptr %0, null
  br i1 %6, label %36, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 19
  %9 = load ptr, ptr %8, align 8
  %10 = icmp eq ptr %9, null
  br i1 %10, label %36, label %11

11:                                               ; preds = %7
  %12 = and i32 %5, -4096
  %13 = getelementptr inbounds %struct.bus_dma_region, ptr %9, i32 0, i32 2
  %14 = load i64, ptr %13, align 8
  %15 = icmp eq i64 %14, 0
  br i1 %15, label %36, label %16

16:                                               ; preds = %31, %11
  %17 = phi i64 [ %34, %31 ], [ %14, %11 ]
  %18 = phi ptr [ %32, %31 ], [ %9, %11 ]
  %19 = getelementptr inbounds %struct.bus_dma_region, ptr %18, i32 0, i32 1
  %20 = load i32, ptr %19, align 4
  %21 = icmp ult i32 %12, %20
  br i1 %21, label %31, label %22

22:                                               ; preds = %16
  %23 = sub i32 %12, %20
  %24 = zext i32 %23 to i64
  %25 = icmp ugt i64 %17, %24
  br i1 %25, label %26, label %31

26:                                               ; preds = %22
  %27 = getelementptr inbounds %struct.bus_dma_region, ptr %18, i32 0, i32 3
  %28 = load i64, ptr %27, align 8
  %29 = trunc i64 %28 to i32
  %30 = add i32 %12, %29
  br label %36

31:                                               ; preds = %22, %16
  %32 = getelementptr %struct.bus_dma_region, ptr %18, i32 1
  %33 = getelementptr %struct.bus_dma_region, ptr %18, i32 1, i32 2
  %34 = load i64, ptr %33, align 8
  %35 = icmp eq i64 %34, 0
  br i1 %35, label %36, label %16

36:                                               ; preds = %31, %26, %11, %7, %2
  %37 = phi i32 [ %5, %7 ], [ %5, %2 ], [ %30, %26 ], [ -1, %11 ], [ -1, %31 ]
  %38 = add i32 %3, -1
  %39 = tail call i32 @llvm.umin.i32(i32 %38, i32 %4)
  %40 = lshr i32 %37, 12
  %41 = icmp uge i32 %40, %39
  %42 = zext i1 %41 to i32
  ret i32 %42
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @dma_direct_get_required_mask(ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal ptr @arm_coherent_dma_alloc(ptr noundef %0, i32 noundef %1, ptr nocapture noundef writeonly %2, i32 noundef %3, i32 noundef %4) #0 {
  %6 = load i32, ptr @pgprot_kernel, align 4
  %7 = or i32 %6, 512
  %8 = tail call ptr @llvm.returnaddress(i32 0)
  %9 = tail call fastcc ptr @__dma_alloc(ptr noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef %7, i1 noundef zeroext true, i32 noundef %4, ptr noundef %8)
  ret ptr %9
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @arm_coherent_dma_free(ptr noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef %4) #0 {
  tail call fastcc void @__arm_dma_free(ptr noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef %4)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @arm_coherent_dma_mmap(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5) #0 {
  %7 = tail call fastcc i32 @__arm_dma_mmap(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef %4)
  ret i32 %7
}

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong uwtable(sync)
define internal i32 @arm_coherent_dma_map_page(ptr noundef readonly %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5) #3 {
  %7 = load ptr, ptr @mem_map, align 4
  %8 = ptrtoint ptr %1 to i32
  %9 = ptrtoint ptr %7 to i32
  %10 = sub i32 %8, %9
  %11 = ashr exact i32 %10, 5
  %12 = load i32, ptr @__pv_phys_pfn_offset, align 4
  %13 = add i32 %11, %12
  %14 = icmp eq ptr %0, null
  br i1 %14, label %44, label %15

15:                                               ; preds = %6
  %16 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 19
  %17 = load ptr, ptr %16, align 8
  %18 = icmp eq ptr %17, null
  br i1 %18, label %44, label %19

19:                                               ; preds = %15
  %20 = shl i32 %13, 12
  %21 = getelementptr inbounds %struct.bus_dma_region, ptr %17, i32 0, i32 2
  %22 = load i64, ptr %21, align 8
  %23 = icmp eq i64 %22, 0
  br i1 %23, label %44, label %24

24:                                               ; preds = %39, %19
  %25 = phi i64 [ %42, %39 ], [ %22, %19 ]
  %26 = phi ptr [ %40, %39 ], [ %17, %19 ]
  %27 = load i32, ptr %26, align 8
  %28 = icmp ult i32 %20, %27
  br i1 %28, label %39, label %29

29:                                               ; preds = %24
  %30 = sub i32 %20, %27
  %31 = zext i32 %30 to i64
  %32 = icmp ugt i64 %25, %31
  br i1 %32, label %33, label %39

33:                                               ; preds = %29
  %34 = getelementptr inbounds %struct.bus_dma_region, ptr %26, i32 0, i32 3
  %35 = load i64, ptr %34, align 8
  %36 = trunc i64 %35 to i32
  %37 = sub i32 %20, %36
  %38 = lshr i32 %37, 12
  br label %44

39:                                               ; preds = %29, %24
  %40 = getelementptr %struct.bus_dma_region, ptr %26, i32 1
  %41 = getelementptr %struct.bus_dma_region, ptr %26, i32 1, i32 2
  %42 = load i64, ptr %41, align 8
  %43 = icmp eq i64 %42, 0
  br i1 %43, label %44, label %24

44:                                               ; preds = %39, %33, %19, %15, %6
  %45 = phi i32 [ %13, %15 ], [ %13, %6 ], [ %38, %33 ], [ 1048575, %19 ], [ 1048575, %39 ]
  %46 = shl i32 %45, 12
  %47 = add i32 %46, %2
  ret i32 %47
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @early_coherent_pool(ptr noundef %0) #4 section ".init.text" {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  %3 = call i64 @memparse(ptr noundef %0, ptr noundef nonnull %2) #14
  %4 = trunc i64 %3 to i32
  store i32 %4, ptr @atomic_pool_size, align 4
  ret i32 0
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @atomic_pool_init() #4 section ".init.text" {
  %1 = alloca ptr, align 4
  %2 = load i32, ptr @pgprot_kernel, align 4
  %3 = and i32 %2, -573
  %4 = or i32 %3, 516
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %1) #14
  store ptr null, ptr %1, align 4, !annotation !10
  %5 = tail call ptr @gen_pool_create(i32 noundef 12, i32 noundef -1) #14
  store ptr %5, ptr @atomic_pool, align 4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %37, label %7

7:                                                ; preds = %0
  %8 = load ptr, ptr @dma_contiguous_default_area, align 4
  %9 = icmp eq ptr %8, null
  %10 = load i32, ptr @atomic_pool_size, align 4
  br i1 %9, label %13, label %11

11:                                               ; preds = %7
  %12 = call fastcc ptr @__alloc_from_contiguous(ptr noundef null, i32 noundef %10, i32 noundef %4, ptr noundef nonnull %1, ptr noundef nonnull @atomic_pool_init, i1 noundef zeroext true, i32 noundef 0, i32 noundef 3264)
  br label %15

13:                                               ; preds = %7
  %14 = call fastcc ptr @__alloc_remap_buffer(i32 noundef %10, i32 noundef 3265, i32 noundef %4, ptr noundef nonnull %1, ptr noundef nonnull @atomic_pool_init, i1 noundef zeroext true)
  br label %15

15:                                               ; preds = %13, %11
  %16 = phi ptr [ %12, %11 ], [ %14, %13 ]
  %17 = icmp eq ptr %16, null
  br i1 %17, label %35, label %18

18:                                               ; preds = %15
  %19 = load ptr, ptr @atomic_pool, align 4
  %20 = ptrtoint ptr %16 to i32
  %21 = load ptr, ptr %1, align 4
  %22 = load ptr, ptr @mem_map, align 4
  %23 = ptrtoint ptr %21 to i32
  %24 = ptrtoint ptr %22 to i32
  %25 = sub i32 %23, %24
  %26 = lshr exact i32 %25, 5
  %27 = load i32, ptr @__pv_phys_pfn_offset, align 4
  %28 = add i32 %26, %27
  %29 = shl i32 %28, 12
  %30 = load i32, ptr @atomic_pool_size, align 4
  %31 = tail call i32 @gen_pool_add_owner(ptr noundef %19, i32 noundef %20, i32 noundef %29, i32 noundef %30, i32 noundef -1, ptr noundef null) #14
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %18
  %34 = load ptr, ptr @atomic_pool, align 4
  tail call void @gen_pool_set_algo(ptr noundef %34, ptr noundef nonnull @gen_pool_first_fit_order_align, ptr noundef null) #14
  br label %37

35:                                               ; preds = %18, %15
  %36 = load ptr, ptr @atomic_pool, align 4
  tail call void @gen_pool_destroy(ptr noundef %36) #14
  store ptr null, ptr @atomic_pool, align 4
  br label %37

37:                                               ; preds = %35, %33, %0
  %38 = phi ptr [ @.str.1, %33 ], [ @.str.2, %35 ], [ @.str.2, %0 ]
  %39 = phi i32 [ 0, %33 ], [ -12, %35 ], [ -12, %0 ]
  %40 = load i32, ptr @atomic_pool_size, align 4
  %41 = lshr i32 %40, 10
  %42 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull %38, i32 noundef %41) #15
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %1) #14
  ret i32 %39
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind null_pointer_is_valid optsize sspstrong willreturn uwtable(sync)
define dso_local void @dma_contiguous_early_fixup(i32 noundef %0, i32 noundef %1) local_unnamed_addr #5 section ".init.text" {
  %3 = load i32, ptr @dma_mmu_remap_num, align 4
  %4 = getelementptr [8 x %struct.dma_contig_early_reserve], ptr @dma_mmu_remap, i32 0, i32 %3
  store i32 %0, ptr %4, align 4
  %5 = getelementptr [8 x %struct.dma_contig_early_reserve], ptr @dma_mmu_remap, i32 0, i32 %3, i32 1
  store i32 %1, ptr %5, align 4
  %6 = add i32 %3, 1
  store i32 %6, ptr @dma_mmu_remap_num, align 4
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local void @dma_contiguous_remap() local_unnamed_addr #4 section ".init.text" {
  %1 = alloca %struct.map_desc, align 4
  %2 = load i32, ptr @dma_mmu_remap_num, align 4
  %3 = icmp sgt i32 %2, 0
  br i1 %3, label %4, label %46

4:                                                ; preds = %0
  %5 = getelementptr inbounds %struct.map_desc, ptr %1, i32 0, i32 1
  %6 = getelementptr inbounds %struct.map_desc, ptr %1, i32 0, i32 2
  %7 = getelementptr inbounds %struct.map_desc, ptr %1, i32 0, i32 3
  %8 = load i32, ptr @arm_lowmem_limit, align 4
  br label %9

9:                                                ; preds = %41, %4
  %10 = phi i32 [ %2, %4 ], [ %42, %41 ]
  %11 = phi i32 [ %8, %4 ], [ %43, %41 ]
  %12 = phi i32 [ 0, %4 ], [ %44, %41 ]
  %13 = getelementptr [8 x %struct.dma_contig_early_reserve], ptr @dma_mmu_remap, i32 0, i32 %12
  %14 = load i32, ptr %13, align 4
  %15 = getelementptr [8 x %struct.dma_contig_early_reserve], ptr @dma_mmu_remap, i32 0, i32 %12, i32 1
  %16 = load i32, ptr %15, align 4
  %17 = add i32 %16, %14
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %1) #14
  %18 = call i32 @llvm.umin.i32(i32 %17, i32 %11)
  %19 = icmp ugt i32 %18, %14
  br i1 %19, label %20, label %41

20:                                               ; preds = %9
  %21 = lshr i32 %14, 12
  store i32 %21, ptr %5, align 4
  %22 = call i32 asm "@ __pv_stub\0A1:\09sub\09$0, $1, $2\0A2:\09sub\09$0, $0, $3\0A\09.pushsection .pv_table,\22a\22\0A\09.long\091b - ., 2b - .\0A\09.popsection\0A", "=r,r,I,I"(i32 %14, i32 -2130706432, i32 8454144) #16, !srcloc !11
  store i32 %22, ptr %1, align 4
  %23 = sub i32 %18, %14
  store i32 %23, ptr %6, align 4
  store i32 16, ptr %7, align 4
  %24 = call i32 asm "@ __pv_stub\0A1:\09sub\09$0, $1, $2\0A2:\09sub\09$0, $0, $3\0A\09.pushsection .pv_table,\22a\22\0A\09.long\091b - ., 2b - .\0A\09.popsection\0A", "=r,r,I,I"(i32 %18, i32 -2130706432, i32 8454144) #16, !srcloc !11
  %25 = icmp ult i32 %22, %24
  br i1 %25, label %26, label %38

26:                                               ; preds = %26, %20
  %27 = phi i32 [ %36, %26 ], [ %22, %20 ]
  %28 = load ptr, ptr getelementptr inbounds (%struct.mm_struct, ptr @init_mm, i32 0, i32 0, i32 8), align 4
  %29 = lshr i32 %27, 21
  %30 = getelementptr [2 x i32], ptr %28, i32 %29
  store i32 0, ptr %30, align 4
  %31 = load ptr, ptr getelementptr inbounds (%struct.mm_struct, ptr @init_mm, i32 0, i32 0, i32 8), align 4
  %32 = getelementptr [2 x i32], ptr %31, i32 %29, i32 1
  store i32 0, ptr %32, align 4
  %33 = load ptr, ptr getelementptr inbounds (%struct.mm_struct, ptr @init_mm, i32 0, i32 0, i32 8), align 4
  %34 = getelementptr [2 x i32], ptr %33, i32 %29
  %35 = load i32, ptr getelementptr inbounds (%struct.cpu_tlb_fns, ptr @cpu_tlb, i32 0, i32 2), align 4
  call void asm sideeffect "tst $1, $2\0A\09mcrne p15, 0, $0, c7, c10, 1\09@ flush_pmd", "r,r,Ir,~{cc}"(ptr %34, i32 %35, i32 1073741824) #14, !srcloc !12
  %36 = add i32 %27, 2097152
  %37 = icmp ult i32 %36, %24
  br i1 %37, label %26, label %38

38:                                               ; preds = %26, %20
  call void @flush_tlb_kernel_range(i32 noundef %22, i32 noundef %24) #14
  call void @iotable_init(ptr noundef nonnull %1, i32 noundef 1) #14
  %39 = load i32, ptr @arm_lowmem_limit, align 4
  %40 = load i32, ptr @dma_mmu_remap_num, align 4
  br label %41

41:                                               ; preds = %38, %9
  %42 = phi i32 [ %10, %9 ], [ %40, %38 ]
  %43 = phi i32 [ %11, %9 ], [ %39, %38 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %1) #14
  %44 = add nuw nsw i32 %12, 1
  %45 = icmp slt i32 %44, %42
  br i1 %45, label %9, label %46

46:                                               ; preds = %41, %0
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #6

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @flush_tlb_kernel_range(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @iotable_init(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #6

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc ptr @__dma_alloc(ptr noundef %0, i32 noundef %1, ptr nocapture noundef writeonly %2, i32 noundef %3, i32 noundef %4, i1 noundef zeroext %5, i32 noundef %6, ptr noundef %7) unnamed_addr #0 {
  %9 = alloca ptr, align 4
  %10 = alloca %struct.arm_dma_alloc_args, align 4
  %11 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 17
  %12 = load i64, ptr %11, align 8
  %13 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 18
  %14 = load i64, ptr %13, align 8
  %15 = icmp eq i64 %12, 0
  %16 = icmp eq i64 %14, 0
  %17 = tail call i64 @llvm.umin.i64(i64 %12, i64 %14)
  %18 = select i1 %16, i64 %12, i64 %17
  %19 = select i1 %15, i64 %14, i64 %18
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %9) #14
  store ptr null, ptr %9, align 4
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %10) #14
  %20 = getelementptr inbounds i8, ptr %10, i32 20
  store i32 0, ptr %20, align 4, !annotation !10
  store ptr %0, ptr %10, align 4
  %21 = getelementptr inbounds %struct.arm_dma_alloc_args, ptr %10, i32 0, i32 1
  %22 = add i32 %1, 4095
  %23 = and i32 %22, -4096
  store i32 %23, ptr %21, align 4
  %24 = getelementptr inbounds %struct.arm_dma_alloc_args, ptr %10, i32 0, i32 2
  %25 = getelementptr inbounds %struct.arm_dma_alloc_args, ptr %10, i32 0, i32 3
  store i32 %4, ptr %25, align 4
  %26 = getelementptr inbounds %struct.arm_dma_alloc_args, ptr %10, i32 0, i32 4
  store ptr %7, ptr %26, align 4
  %27 = getelementptr inbounds %struct.arm_dma_alloc_args, ptr %10, i32 0, i32 5
  %28 = trunc i32 %6 to i8
  %29 = lshr i8 %28, 4
  %30 = and i8 %29, 1
  %31 = xor i8 %30, 1
  store i8 %31, ptr %27, align 4
  %32 = getelementptr inbounds %struct.arm_dma_alloc_args, ptr %10, i32 0, i32 6
  %33 = zext i1 %5 to i32
  store i32 %33, ptr %32, align 4
  %34 = and i32 %3, -264
  %35 = or i32 %34, 256
  %36 = and i32 %3, 16
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %39, label %38, !prof !8

38:                                               ; preds = %8
  br label %39

39:                                               ; preds = %38, %8
  %40 = phi i32 [ 0, %8 ], [ 1, %38 ]
  %41 = getelementptr [3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 %40, i32 6
  %42 = load ptr, ptr %41, align 4
  %43 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %42, i32 noundef %35, i32 noundef 16) #17
  %44 = icmp eq ptr %43, null
  br i1 %44, label %130, label %45

45:                                               ; preds = %39
  %46 = icmp ult i64 %19, 4294967295
  %47 = zext i1 %46 to i32
  %48 = and i32 %3, -262145
  %49 = or i32 %48, %47
  store i32 %49, ptr %24, align 4
  store i32 -1, ptr %2, align 4
  %50 = and i32 %3, 1024
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %66, label %52

52:                                               ; preds = %45
  %53 = icmp eq ptr %0, null
  br i1 %53, label %61, label %54

54:                                               ; preds = %52
  %55 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 23
  %56 = load ptr, ptr %55, align 4
  %57 = icmp eq ptr %56, null
  %58 = load ptr, ptr @dma_contiguous_default_area, align 4
  %59 = icmp eq ptr %58, null
  %60 = select i1 %57, i1 %59, i1 false
  br i1 %60, label %64, label %68

61:                                               ; preds = %52
  %62 = load ptr, ptr @dma_contiguous_default_area, align 4
  %63 = icmp eq ptr %62, null
  br i1 %63, label %64, label %68

64:                                               ; preds = %61, %54
  %65 = select i1 %5, ptr @simple_allocator, ptr @remap_allocator
  br label %68

66:                                               ; preds = %45
  %67 = select i1 %5, ptr @simple_allocator, ptr @pool_allocator
  br label %68

68:                                               ; preds = %66, %64, %61, %54
  %69 = phi ptr [ @cma_allocator, %54 ], [ @cma_allocator, %61 ], [ %65, %64 ], [ %67, %66 ]
  %70 = getelementptr inbounds %struct.arm_dma_buffer, ptr %43, i32 0, i32 2
  store ptr %69, ptr %70, align 4
  %71 = load ptr, ptr %69, align 4
  %72 = call ptr %71(ptr noundef nonnull %10, ptr noundef nonnull %9) #14
  %73 = load ptr, ptr %9, align 4
  %74 = icmp eq ptr %73, null
  br i1 %74, label %124, label %75

75:                                               ; preds = %68
  %76 = load ptr, ptr @mem_map, align 4
  %77 = ptrtoint ptr %73 to i32
  %78 = ptrtoint ptr %76 to i32
  %79 = sub i32 %77, %78
  %80 = ashr exact i32 %79, 5
  %81 = load i32, ptr @__pv_phys_pfn_offset, align 4
  %82 = add i32 %80, %81
  %83 = icmp eq ptr %0, null
  br i1 %83, label %113, label %84

84:                                               ; preds = %75
  %85 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 19
  %86 = load ptr, ptr %85, align 8
  %87 = icmp eq ptr %86, null
  br i1 %87, label %113, label %88

88:                                               ; preds = %84
  %89 = shl i32 %82, 12
  %90 = getelementptr inbounds %struct.bus_dma_region, ptr %86, i32 0, i32 2
  %91 = load i64, ptr %90, align 8
  %92 = icmp eq i64 %91, 0
  br i1 %92, label %113, label %93

93:                                               ; preds = %108, %88
  %94 = phi i64 [ %111, %108 ], [ %91, %88 ]
  %95 = phi ptr [ %109, %108 ], [ %86, %88 ]
  %96 = load i32, ptr %95, align 8
  %97 = icmp ult i32 %89, %96
  br i1 %97, label %108, label %98

98:                                               ; preds = %93
  %99 = sub i32 %89, %96
  %100 = zext i32 %99 to i64
  %101 = icmp ugt i64 %94, %100
  br i1 %101, label %102, label %108

102:                                              ; preds = %98
  %103 = getelementptr inbounds %struct.bus_dma_region, ptr %95, i32 0, i32 3
  %104 = load i64, ptr %103, align 8
  %105 = trunc i64 %104 to i32
  %106 = sub i32 %89, %105
  %107 = lshr i32 %106, 12
  br label %113

108:                                              ; preds = %98, %93
  %109 = getelementptr %struct.bus_dma_region, ptr %95, i32 1
  %110 = getelementptr %struct.bus_dma_region, ptr %95, i32 1, i32 2
  %111 = load i64, ptr %110, align 8
  %112 = icmp eq i64 %111, 0
  br i1 %112, label %113, label %93

113:                                              ; preds = %108, %102, %88, %84, %75
  %114 = phi i32 [ %82, %84 ], [ %82, %75 ], [ %107, %102 ], [ 1048575, %88 ], [ 1048575, %108 ]
  %115 = shl i32 %114, 12
  store i32 %115, ptr %2, align 4
  %116 = load i8, ptr %27, align 4, !range !13
  %117 = icmp eq i8 %116, 0
  %118 = select i1 %117, ptr %73, ptr %72
  %119 = getelementptr inbounds %struct.arm_dma_buffer, ptr %43, i32 0, i32 1
  store ptr %118, ptr %119, align 8
  %120 = call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @arm_dma_bufs_lock) #14
  %121 = load ptr, ptr @arm_dma_bufs, align 4
  %122 = getelementptr inbounds %struct.list_head, ptr %121, i32 0, i32 1
  store ptr %43, ptr %122, align 4
  store ptr %121, ptr %43, align 8
  %123 = getelementptr inbounds %struct.list_head, ptr %43, i32 0, i32 1
  store ptr @arm_dma_bufs, ptr %123, align 4
  store volatile ptr %43, ptr @arm_dma_bufs, align 4
  call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @arm_dma_bufs_lock, i32 noundef %120) #14
  br label %125

124:                                              ; preds = %68
  call void @kfree(ptr noundef nonnull %43) #14
  br label %125

125:                                              ; preds = %124, %113
  %126 = load i8, ptr %27, align 4, !range !13
  %127 = icmp eq i8 %126, 0
  %128 = load ptr, ptr %9, align 4
  %129 = select i1 %127, ptr %128, ptr %72
  br label %130

130:                                              ; preds = %125, %39
  %131 = phi ptr [ %129, %125 ], [ null, %39 ]
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %10) #14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %9) #14
  ret ptr %131
}

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.returnaddress(i32 immarg) #8

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @__arm_dma_mmap(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef %4) unnamed_addr #0 {
  %6 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #14
  store i32 -6, ptr %6, align 4
  %7 = getelementptr inbounds %struct.vm_area_struct, ptr %1, i32 0, i32 1
  %8 = load i32, ptr %7, align 4
  %9 = load i32, ptr %1, align 4
  %10 = sub i32 %8, %9
  %11 = lshr i32 %10, 12
  %12 = add i32 %4, 4095
  %13 = lshr i32 %12, 12
  %14 = icmp eq ptr %0, null
  br i1 %14, label %44, label %15

15:                                               ; preds = %5
  %16 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 19
  %17 = load ptr, ptr %16, align 8
  %18 = icmp eq ptr %17, null
  br i1 %18, label %44, label %19

19:                                               ; preds = %15
  %20 = and i32 %3, -4096
  %21 = getelementptr inbounds %struct.bus_dma_region, ptr %17, i32 0, i32 2
  %22 = load i64, ptr %21, align 8
  %23 = icmp eq i64 %22, 0
  br i1 %23, label %44, label %24

24:                                               ; preds = %39, %19
  %25 = phi i64 [ %42, %39 ], [ %22, %19 ]
  %26 = phi ptr [ %40, %39 ], [ %17, %19 ]
  %27 = getelementptr inbounds %struct.bus_dma_region, ptr %26, i32 0, i32 1
  %28 = load i32, ptr %27, align 4
  %29 = icmp ult i32 %20, %28
  br i1 %29, label %39, label %30

30:                                               ; preds = %24
  %31 = sub i32 %20, %28
  %32 = zext i32 %31 to i64
  %33 = icmp ugt i64 %25, %32
  br i1 %33, label %34, label %39

34:                                               ; preds = %30
  %35 = getelementptr inbounds %struct.bus_dma_region, ptr %26, i32 0, i32 3
  %36 = load i64, ptr %35, align 8
  %37 = trunc i64 %36 to i32
  %38 = add i32 %20, %37
  br label %44

39:                                               ; preds = %30, %24
  %40 = getelementptr %struct.bus_dma_region, ptr %26, i32 1
  %41 = getelementptr %struct.bus_dma_region, ptr %26, i32 1, i32 2
  %42 = load i64, ptr %41, align 8
  %43 = icmp eq i64 %42, 0
  br i1 %43, label %44, label %24

44:                                               ; preds = %39, %34, %19, %15, %5
  %45 = phi i32 [ %3, %15 ], [ %3, %5 ], [ %38, %34 ], [ -1, %19 ], [ -1, %39 ]
  %46 = lshr i32 %45, 12
  %47 = getelementptr inbounds %struct.vm_area_struct, ptr %1, i32 0, i32 13
  %48 = load i32, ptr %47, align 4
  %49 = call i32 @dma_mmap_from_dev_coherent(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %4, ptr noundef nonnull %6) #14
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %51, label %64

51:                                               ; preds = %44
  %52 = icmp ule i32 %13, %48
  %53 = sub i32 %13, %48
  %54 = icmp ugt i32 %11, %53
  %55 = select i1 %52, i1 true, i1 %54
  br i1 %55, label %64, label %56

56:                                               ; preds = %51
  %57 = load i32, ptr %1, align 4
  %58 = add i32 %46, %48
  %59 = load i32, ptr %7, align 4
  %60 = sub i32 %59, %57
  %61 = getelementptr inbounds %struct.vm_area_struct, ptr %1, i32 0, i32 7
  %62 = load i32, ptr %61, align 4
  %63 = call i32 @remap_pfn_range(ptr noundef %1, i32 noundef %57, i32 noundef %58, i32 noundef %60, i32 noundef %62) #14
  store i32 %63, ptr %6, align 4
  br label %64

64:                                               ; preds = %56, %51, %44
  %65 = load i32, ptr %6, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #14
  ret i32 %65
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @__arm_dma_free(ptr noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef %4) unnamed_addr #0 {
  %6 = alloca %struct.arm_dma_free_args, align 4
  %7 = load ptr, ptr @mem_map, align 4
  %8 = icmp eq ptr %0, null
  br i1 %8, label %38, label %9

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 19
  %11 = load ptr, ptr %10, align 8
  %12 = icmp eq ptr %11, null
  br i1 %12, label %38, label %13

13:                                               ; preds = %9
  %14 = and i32 %3, -4096
  %15 = getelementptr inbounds %struct.bus_dma_region, ptr %11, i32 0, i32 2
  %16 = load i64, ptr %15, align 8
  %17 = icmp eq i64 %16, 0
  br i1 %17, label %38, label %18

18:                                               ; preds = %33, %13
  %19 = phi i64 [ %36, %33 ], [ %16, %13 ]
  %20 = phi ptr [ %34, %33 ], [ %11, %13 ]
  %21 = getelementptr inbounds %struct.bus_dma_region, ptr %20, i32 0, i32 1
  %22 = load i32, ptr %21, align 4
  %23 = icmp ult i32 %14, %22
  br i1 %23, label %33, label %24

24:                                               ; preds = %18
  %25 = sub i32 %14, %22
  %26 = zext i32 %25 to i64
  %27 = icmp ugt i64 %19, %26
  br i1 %27, label %28, label %33

28:                                               ; preds = %24
  %29 = getelementptr inbounds %struct.bus_dma_region, ptr %20, i32 0, i32 3
  %30 = load i64, ptr %29, align 8
  %31 = trunc i64 %30 to i32
  %32 = add i32 %14, %31
  br label %38

33:                                               ; preds = %24, %18
  %34 = getelementptr %struct.bus_dma_region, ptr %20, i32 1
  %35 = getelementptr %struct.bus_dma_region, ptr %20, i32 1, i32 2
  %36 = load i64, ptr %35, align 8
  %37 = icmp eq i64 %36, 0
  br i1 %37, label %38, label %18

38:                                               ; preds = %33, %28, %13, %9, %5
  %39 = phi i32 [ %3, %9 ], [ %3, %5 ], [ %32, %28 ], [ -1, %13 ], [ -1, %33 ]
  %40 = lshr i32 %39, 12
  %41 = load i32, ptr @__pv_phys_pfn_offset, align 4
  %42 = sub i32 %40, %41
  %43 = getelementptr %struct.page, ptr %7, i32 %42
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %6) #14
  %44 = getelementptr inbounds i8, ptr %6, i32 16
  store i32 0, ptr %44, align 4, !annotation !10
  store ptr %0, ptr %6, align 4
  %45 = getelementptr inbounds %struct.arm_dma_free_args, ptr %6, i32 0, i32 1
  %46 = add i32 %1, 4095
  %47 = and i32 %46, -4096
  store i32 %47, ptr %45, align 4
  %48 = getelementptr inbounds %struct.arm_dma_free_args, ptr %6, i32 0, i32 2
  store ptr %2, ptr %48, align 4
  %49 = getelementptr inbounds %struct.arm_dma_free_args, ptr %6, i32 0, i32 3
  store ptr %43, ptr %49, align 4
  %50 = getelementptr inbounds %struct.arm_dma_free_args, ptr %6, i32 0, i32 4
  %51 = trunc i32 %4 to i8
  %52 = lshr i8 %51, 4
  %53 = and i8 %52, 1
  %54 = xor i8 %53, 1
  store i8 %54, ptr %50, align 4
  %55 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @arm_dma_bufs_lock) #14
  br label %56

56:                                               ; preds = %61, %38
  %57 = phi ptr [ @arm_dma_bufs, %38 ], [ %58, %61 ]
  %58 = load ptr, ptr %57, align 4
  %59 = icmp eq ptr %58, @arm_dma_bufs
  br i1 %59, label %60, label %61

60:                                               ; preds = %56
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @arm_dma_bufs_lock, i32 noundef %55) #14
  br label %71

61:                                               ; preds = %56
  %62 = getelementptr inbounds %struct.arm_dma_buffer, ptr %58, i32 0, i32 1
  %63 = load ptr, ptr %62, align 4
  %64 = icmp eq ptr %63, %2
  br i1 %64, label %65, label %56

65:                                               ; preds = %61
  %66 = getelementptr inbounds %struct.list_head, ptr %58, i32 0, i32 1
  %67 = load ptr, ptr %66, align 4
  %68 = load ptr, ptr %58, align 4
  %69 = getelementptr inbounds %struct.list_head, ptr %68, i32 0, i32 1
  store ptr %67, ptr %69, align 4
  store volatile ptr %68, ptr %67, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %58, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %66, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @arm_dma_bufs_lock, i32 noundef %55) #14
  %70 = icmp eq ptr %58, null
  br i1 %70, label %71, label %72, !prof !14

71:                                               ; preds = %65, %60
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 818, i32 noundef 9, ptr noundef nonnull @.str.5, ptr noundef %2) #14
  br label %77

72:                                               ; preds = %65
  %73 = getelementptr inbounds %struct.arm_dma_buffer, ptr %58, i32 0, i32 2
  %74 = load ptr, ptr %73, align 4
  %75 = getelementptr inbounds %struct.arm_dma_allocator, ptr %74, i32 0, i32 1
  %76 = load ptr, ptr %75, align 4
  call void %76(ptr noundef nonnull %6) #14
  call void @kfree(ptr noundef nonnull %58) #14
  br label %77

77:                                               ; preds = %72, %71
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %6) #14
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pfn_valid(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sg_alloc_table(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @sg_next(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @arm_iommu_create_mapping(ptr noundef %0, i32 noundef %1, i64 noundef %2) #0 {
  %4 = lshr i64 %2, 12
  %5 = trunc i64 %4 to i32
  %6 = add i32 %5, 31
  %7 = lshr i32 %6, 3
  %8 = and i32 %7, 536870908
  %9 = icmp ugt i64 %2, 4294967296
  br i1 %9, label %50, label %10

10:                                               ; preds = %3
  %11 = icmp eq i32 %8, 0
  br i1 %11, label %50, label %12

12:                                               ; preds = %10
  %13 = icmp ugt i32 %8, 4096
  %14 = lshr i32 %6, 15
  %15 = tail call i32 @llvm.umin.i32(i32 %8, i32 4096)
  %16 = select i1 %13, i32 %14, i32 1
  %17 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %18 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %17, i32 noundef 3520, i32 noundef 36) #17
  %19 = icmp eq ptr %18, null
  br i1 %19, label %50, label %20

20:                                               ; preds = %12
  %21 = getelementptr inbounds %struct.dma_iommu_mapping, ptr %18, i32 0, i32 4
  store i32 %15, ptr %21, align 8
  %22 = shl nuw nsw i32 %16, 2
  %23 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %22, i32 noundef 3520) #18
  %24 = getelementptr inbounds %struct.dma_iommu_mapping, ptr %18, i32 0, i32 1
  store ptr %23, ptr %24, align 4
  %25 = icmp eq ptr %23, null
  br i1 %25, label %49, label %26

26:                                               ; preds = %20
  %27 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %15, i32 noundef 3520) #18
  %28 = load ptr, ptr %24, align 4
  store ptr %27, ptr %28, align 4
  %29 = load ptr, ptr %24, align 4
  %30 = load ptr, ptr %29, align 4
  %31 = icmp eq ptr %30, null
  br i1 %31, label %47, label %32

32:                                               ; preds = %26
  %33 = getelementptr inbounds %struct.dma_iommu_mapping, ptr %18, i32 0, i32 2
  store i32 1, ptr %33, align 8
  %34 = getelementptr inbounds %struct.dma_iommu_mapping, ptr %18, i32 0, i32 3
  store i32 %16, ptr %34, align 4
  %35 = getelementptr inbounds %struct.dma_iommu_mapping, ptr %18, i32 0, i32 6
  store i32 %1, ptr %35, align 8
  %36 = shl nuw nsw i32 %15, 3
  %37 = getelementptr inbounds %struct.dma_iommu_mapping, ptr %18, i32 0, i32 5
  store i32 %36, ptr %37, align 4
  %38 = getelementptr inbounds %struct.dma_iommu_mapping, ptr %18, i32 0, i32 7
  store i32 0, ptr %38, align 4
  %39 = tail call ptr @iommu_domain_alloc(ptr noundef %0) #14
  store ptr %39, ptr %18, align 8
  %40 = icmp eq ptr %39, null
  br i1 %40, label %43, label %41

41:                                               ; preds = %32
  %42 = getelementptr inbounds %struct.dma_iommu_mapping, ptr %18, i32 0, i32 8
  store volatile i32 1, ptr %42, align 8
  br label %50

43:                                               ; preds = %32
  %44 = load ptr, ptr %24, align 4
  %45 = load ptr, ptr %44, align 4
  tail call void @kfree(ptr noundef %45) #14
  %46 = load ptr, ptr %24, align 4
  br label %47

47:                                               ; preds = %43, %26
  %48 = phi ptr [ %29, %26 ], [ %46, %43 ]
  tail call void @kfree(ptr noundef %48) #14
  br label %49

49:                                               ; preds = %47, %20
  tail call void @kfree(ptr noundef nonnull %18) #14
  br label %50

50:                                               ; preds = %49, %41, %12, %10, %3
  %51 = phi ptr [ %18, %41 ], [ inttoptr (i32 -34 to ptr), %3 ], [ inttoptr (i32 -22 to ptr), %10 ], [ inttoptr (i32 -12 to ptr), %12 ], [ inttoptr (i32 -12 to ptr), %49 ]
  ret ptr %51
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @iommu_domain_alloc(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @arm_iommu_release_mapping(ptr noundef %0) #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %29, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.dma_iommu_mapping, ptr %0, i32 0, i32 8
  tail call void asm sideeffect "dmb ish", "~{memory}"() #14, !srcloc !15
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %4) #14, !srcloc !16
  %5 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %4, ptr %4, i32 1, ptr elementtype(i32) %4) #14, !srcloc !17
  %6 = extractvalue { i32, i32, i32 } %5, 0
  %7 = icmp eq i32 %6, 1
  br i1 %7, label %11, label %8

8:                                                ; preds = %3
  %9 = icmp sgt i32 %6, 0
  br i1 %9, label %29, label %10, !prof !8

10:                                               ; preds = %8
  tail call void @refcount_warn_saturate(ptr noundef %4, i32 noundef 3) #14
  br label %29

11:                                               ; preds = %3
  tail call void asm sideeffect "dmb ish", "~{memory}"() #14, !srcloc !18
  %12 = load ptr, ptr %0, align 4
  tail call void @iommu_domain_free(ptr noundef %12) #14
  %13 = getelementptr %struct.dma_iommu_mapping, ptr %0, i32 0, i32 2
  %14 = load i32, ptr %13, align 4
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %26, label %16

16:                                               ; preds = %11
  %17 = getelementptr %struct.dma_iommu_mapping, ptr %0, i32 0, i32 1
  br label %18

18:                                               ; preds = %18, %16
  %19 = phi i32 [ 0, %16 ], [ %23, %18 ]
  %20 = load ptr, ptr %17, align 4
  %21 = getelementptr ptr, ptr %20, i32 %19
  %22 = load ptr, ptr %21, align 4
  tail call void @kfree(ptr noundef %22) #14
  %23 = add nuw i32 %19, 1
  %24 = load i32, ptr %13, align 4
  %25 = icmp ult i32 %23, %24
  br i1 %25, label %18, label %26

26:                                               ; preds = %18, %11
  %27 = getelementptr %struct.dma_iommu_mapping, ptr %0, i32 0, i32 1
  %28 = load ptr, ptr %27, align 4
  tail call void @kfree(ptr noundef %28) #14
  tail call void @kfree(ptr noundef nonnull %0) #14
  br label %29

29:                                               ; preds = %26, %10, %8, %1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @arm_iommu_attach_device(ptr noundef %0, ptr noundef %1) #0 {
  %3 = load ptr, ptr %1, align 4
  %4 = tail call i32 @iommu_attach_device(ptr noundef %3, ptr noundef %0) #14
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %20

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.dma_iommu_mapping, ptr %1, i32 0, i32 8
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %7) #14, !srcloc !16
  %8 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %7, ptr %7, i32 1, ptr elementtype(i32) %7) #14, !srcloc !19
  %9 = extractvalue { i32, i32, i32 } %8, 0
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %15, label %11, !prof !14

11:                                               ; preds = %6
  %12 = add i32 %9, 1
  %13 = or i32 %12, %9
  %14 = icmp sgt i32 %13, -1
  br i1 %14, label %17, label %15, !prof !8

15:                                               ; preds = %11, %6
  %16 = phi i32 [ 2, %6 ], [ 1, %11 ]
  tail call void @refcount_warn_saturate(ptr noundef %7, i32 noundef %16) #14
  br label %17

17:                                               ; preds = %15, %11
  %18 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 24
  store ptr %1, ptr %18, align 8
  %19 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 15
  store ptr @iommu_ops, ptr %19, align 8
  br label %20

20:                                               ; preds = %17, %2
  ret i32 %4
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @arm_iommu_detach_device(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 24
  %3 = load ptr, ptr %2, align 8
  %4 = icmp eq ptr %3, null
  br i1 %4, label %5, label %6

5:                                                ; preds = %1
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %0, ptr noundef nonnull @.str) #15
  br label %40

6:                                                ; preds = %1
  %7 = load ptr, ptr %3, align 4
  tail call void @iommu_detach_device(ptr noundef %7, ptr noundef %0) #14
  %8 = getelementptr inbounds %struct.dma_iommu_mapping, ptr %3, i32 0, i32 8
  tail call void asm sideeffect "dmb ish", "~{memory}"() #14, !srcloc !15
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %8) #14, !srcloc !16
  %9 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %8, ptr %8, i32 1, ptr elementtype(i32) %8) #14, !srcloc !17
  %10 = extractvalue { i32, i32, i32 } %9, 0
  %11 = icmp eq i32 %10, 1
  br i1 %11, label %15, label %12

12:                                               ; preds = %6
  %13 = icmp sgt i32 %10, 0
  br i1 %13, label %33, label %14, !prof !8

14:                                               ; preds = %12
  tail call void @refcount_warn_saturate(ptr noundef %8, i32 noundef 3) #14
  br label %33

15:                                               ; preds = %6
  tail call void asm sideeffect "dmb ish", "~{memory}"() #14, !srcloc !18
  %16 = load ptr, ptr %3, align 4
  tail call void @iommu_domain_free(ptr noundef %16) #14
  %17 = getelementptr %struct.dma_iommu_mapping, ptr %3, i32 0, i32 2
  %18 = load i32, ptr %17, align 4
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %30, label %20

20:                                               ; preds = %15
  %21 = getelementptr %struct.dma_iommu_mapping, ptr %3, i32 0, i32 1
  br label %22

22:                                               ; preds = %22, %20
  %23 = phi i32 [ 0, %20 ], [ %27, %22 ]
  %24 = load ptr, ptr %21, align 4
  %25 = getelementptr ptr, ptr %24, i32 %23
  %26 = load ptr, ptr %25, align 4
  tail call void @kfree(ptr noundef %26) #14
  %27 = add nuw i32 %23, 1
  %28 = load i32, ptr %17, align 4
  %29 = icmp ult i32 %27, %28
  br i1 %29, label %22, label %30

30:                                               ; preds = %22, %15
  %31 = getelementptr %struct.dma_iommu_mapping, ptr %3, i32 0, i32 1
  %32 = load ptr, ptr %31, align 4
  tail call void @kfree(ptr noundef %32) #14
  tail call void @kfree(ptr noundef nonnull %3) #14
  br label %33

33:                                               ; preds = %30, %14, %12
  store ptr null, ptr %2, align 8
  %34 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 24, i32 1
  %35 = load i8, ptr %34, align 4
  %36 = and i8 %35, 1
  %37 = icmp eq i8 %36, 0
  %38 = select i1 %37, ptr @arm_dma_ops, ptr @arm_coherent_dma_ops
  %39 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 15
  store ptr %38, ptr %39, align 8
  br label %40

40:                                               ; preds = %33, %5
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #9

; Function Attrs: null_pointer_is_valid
declare dso_local void @iommu_detach_device(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @arch_setup_dma_ops(ptr noundef %0, i64 noundef %1, i64 noundef %2, ptr noundef readnone %3, i1 noundef zeroext %4) local_unnamed_addr #0 {
  %6 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 24, i32 1
  %7 = zext i1 %4 to i8
  %8 = load i8, ptr %6, align 4
  %9 = and i8 %8, -2
  %10 = or i8 %9, %7
  store i8 %10, ptr %6, align 4
  %11 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 15
  %12 = load ptr, ptr %11, align 8
  %13 = icmp eq ptr %12, null
  br i1 %13, label %14, label %64

14:                                               ; preds = %5
  %15 = icmp eq ptr %3, null
  br i1 %15, label %58, label %16

16:                                               ; preds = %14
  %17 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 5
  %18 = load ptr, ptr %17, align 4
  %19 = trunc i64 %1 to i32
  %20 = tail call ptr @arm_iommu_create_mapping(ptr noundef %18, i32 noundef %19, i64 noundef %2) #14
  %21 = icmp ugt ptr %20, inttoptr (i32 -4096 to ptr)
  br i1 %21, label %22, label %31

22:                                               ; preds = %16
  %23 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 3
  %24 = load ptr, ptr %23, align 4
  %25 = icmp eq ptr %24, null
  br i1 %25, label %26, label %28

26:                                               ; preds = %22
  %27 = load ptr, ptr %0, align 4
  br label %28

28:                                               ; preds = %26, %22
  %29 = phi ptr [ %27, %26 ], [ %24, %22 ]
  %30 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, i64 noundef %2, ptr noundef %29) #15
  br label %58

31:                                               ; preds = %16
  %32 = load ptr, ptr %20, align 4
  %33 = tail call i32 @iommu_attach_device(ptr noundef %32, ptr noundef %0) #14
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %35, label %46

35:                                               ; preds = %31
  %36 = getelementptr inbounds %struct.dma_iommu_mapping, ptr %20, i32 0, i32 8
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %36) #14, !srcloc !16
  %37 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %36, ptr %36, i32 1, ptr elementtype(i32) %36) #14, !srcloc !19
  %38 = extractvalue { i32, i32, i32 } %37, 0
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %44, label %40, !prof !14

40:                                               ; preds = %35
  %41 = add i32 %38, 1
  %42 = or i32 %41, %38
  %43 = icmp sgt i32 %42, -1
  br i1 %43, label %55, label %44, !prof !8

44:                                               ; preds = %40, %35
  %45 = phi i32 [ 2, %35 ], [ 1, %40 ]
  tail call void @refcount_warn_saturate(ptr noundef %36, i32 noundef %45) #14
  br label %55

46:                                               ; preds = %31
  %47 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 3
  %48 = load ptr, ptr %47, align 4
  %49 = icmp eq ptr %48, null
  br i1 %49, label %50, label %52

50:                                               ; preds = %46
  %51 = load ptr, ptr %0, align 4
  br label %52

52:                                               ; preds = %50, %46
  %53 = phi ptr [ %51, %50 ], [ %48, %46 ]
  %54 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, ptr noundef %53) #15
  tail call void @arm_iommu_release_mapping(ptr noundef %20) #14
  br label %58

55:                                               ; preds = %44, %40
  %56 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 24
  store ptr %20, ptr %56, align 8
  %57 = select i1 %4, ptr @iommu_coherent_ops, ptr @iommu_ops
  br label %60

58:                                               ; preds = %52, %28, %14
  %59 = select i1 %4, ptr @arm_coherent_dma_ops, ptr @arm_dma_ops
  br label %60

60:                                               ; preds = %58, %55
  %61 = phi ptr [ %57, %55 ], [ %59, %58 ]
  store ptr %61, ptr %11, align 8
  %62 = load i8, ptr %6, align 4
  %63 = or i8 %62, 2
  store i8 %63, ptr %6, align 4
  br label %64

64:                                               ; preds = %60, %5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @arch_teardown_dma_ops(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 24, i32 1
  %3 = load i8, ptr %2, align 4
  %4 = and i8 %3, 2
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %13, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 24
  %8 = load ptr, ptr %7, align 8
  %9 = icmp eq ptr %8, null
  br i1 %9, label %11, label %10

10:                                               ; preds = %6
  tail call void @arm_iommu_detach_device(ptr noundef %0) #14
  tail call void @arm_iommu_release_mapping(ptr noundef nonnull %8) #14
  br label %11

11:                                               ; preds = %10, %6
  %12 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 15
  store ptr null, ptr %12, align 8
  br label %13

13:                                               ; preds = %11, %1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @dma_cache_maint_page(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, ptr nocapture noundef readonly %4) unnamed_addr #0 {
  %6 = load ptr, ptr @mem_map, align 4
  %7 = ptrtoint ptr %0 to i32
  %8 = ptrtoint ptr %6 to i32
  %9 = sub i32 %7, %8
  %10 = ashr exact i32 %9, 5
  %11 = load i32, ptr @__pv_phys_pfn_offset, align 4
  %12 = lshr i32 %1, 12
  %13 = add i32 %11, %12
  %14 = add i32 %13, %10
  %15 = and i32 %1, 4095
  %16 = sub i32 %14, %11
  %17 = getelementptr %struct.page, ptr %6, i32 %16
  %18 = load i32, ptr %17, align 4
  %19 = lshr i32 %18, 30
  %20 = icmp eq i32 %19, 2
  br i1 %20, label %29, label %21

21:                                               ; preds = %5
  %22 = icmp ne i32 %19, 3
  %23 = load i32, ptr @movable_zone, align 4
  %24 = icmp ne i32 %23, 2
  %25 = select i1 %22, i1 true, i1 %24
  br i1 %25, label %26, label %29

26:                                               ; preds = %21
  %27 = tail call ptr @page_address(ptr noundef %17) #14
  %28 = getelementptr i8, ptr %27, i32 %15
  tail call void %4(ptr noundef %28, i32 noundef %2, i32 noundef %3) #14
  br label %48

29:                                               ; preds = %21, %5
  %30 = add i32 %15, %2
  %31 = icmp ugt i32 %30, 4096
  %32 = sub nuw nsw i32 4096, %15
  %33 = select i1 %31, i32 %32, i32 %2
  %34 = load i32, ptr @cacheid, align 4
  %35 = and i32 %34, 2
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %48, label %37

37:                                               ; preds = %29
  %38 = load i32, ptr @pgprot_kernel, align 4
  %39 = or i32 %38, 512
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !20
  %40 = tail call ptr @llvm.thread.pointer() #14
  %41 = getelementptr inbounds %struct.task_struct, ptr %40, i32 0, i32 149
  %42 = load i32, ptr %41, align 8
  %43 = add i32 %42, 1
  store i32 %43, ptr %41, align 8
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !21
  %44 = tail call ptr @__kmap_local_page_prot(ptr noundef %17, i32 noundef %39) #14
  %45 = getelementptr i8, ptr %44, i32 %15
  tail call void %4(ptr noundef %45, i32 noundef %33, i32 noundef %3) #14
  tail call void @kunmap_local_indexed(ptr noundef %44) #14
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !22
  %46 = load i32, ptr %41, align 8
  %47 = add i32 %46, -1
  store i32 %47, ptr %41, align 8
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !23
  br label %48

48:                                               ; preds = %37, %29, %26
  %49 = phi i32 [ %33, %37 ], [ %2, %26 ], [ %33, %29 ]
  %50 = sub i32 %2, %49
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %89, label %52

52:                                               ; preds = %85, %48
  %53 = phi i32 [ %55, %85 ], [ %14, %48 ]
  %54 = phi i32 [ %87, %85 ], [ %50, %48 ]
  %55 = add i32 %53, 1
  %56 = load ptr, ptr @mem_map, align 4
  %57 = load i32, ptr @__pv_phys_pfn_offset, align 4
  %58 = sub i32 %55, %57
  %59 = getelementptr %struct.page, ptr %56, i32 %58
  %60 = load i32, ptr %59, align 4
  %61 = lshr i32 %60, 30
  %62 = icmp eq i32 %61, 2
  br i1 %62, label %68, label %63

63:                                               ; preds = %52
  %64 = icmp ne i32 %61, 3
  %65 = load i32, ptr @movable_zone, align 4
  %66 = icmp ne i32 %65, 2
  %67 = select i1 %64, i1 true, i1 %66
  br i1 %67, label %83, label %68

68:                                               ; preds = %63, %52
  %69 = call i32 @llvm.umin.i32(i32 %54, i32 4096)
  %70 = load i32, ptr @cacheid, align 4
  %71 = and i32 %70, 2
  %72 = icmp eq i32 %71, 0
  br i1 %72, label %85, label %73

73:                                               ; preds = %68
  %74 = load i32, ptr @pgprot_kernel, align 4
  %75 = or i32 %74, 512
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !20
  %76 = tail call ptr @llvm.thread.pointer() #14
  %77 = getelementptr inbounds %struct.task_struct, ptr %76, i32 0, i32 149
  %78 = load i32, ptr %77, align 8
  %79 = add i32 %78, 1
  store i32 %79, ptr %77, align 8
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !21
  %80 = tail call ptr @__kmap_local_page_prot(ptr noundef %59, i32 noundef %75) #14
  tail call void %4(ptr noundef %80, i32 noundef %69, i32 noundef %3) #14
  tail call void @kunmap_local_indexed(ptr noundef %80) #14
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !22
  %81 = load i32, ptr %77, align 8
  %82 = add i32 %81, -1
  store i32 %82, ptr %77, align 8
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !23
  br label %85

83:                                               ; preds = %63
  %84 = tail call ptr @page_address(ptr noundef %59) #14
  tail call void %4(ptr noundef %84, i32 noundef %54, i32 noundef %3) #14
  br label %85

85:                                               ; preds = %83, %73, %68
  %86 = phi i32 [ %69, %73 ], [ %54, %83 ], [ %69, %68 ]
  %87 = sub i32 %54, %86
  %88 = icmp eq i32 %87, 0
  br i1 %88, label %89, label %52, !llvm.loop !24

89:                                               ; preds = %85, %48
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @page_address(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__kmap_local_page_prot(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.thread.pointer() #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @kunmap_local_indexed(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @__dma_page_dev_to_cpu(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) unnamed_addr #0 {
  %5 = ptrtoint ptr %0 to i32
  %6 = icmp eq i32 %3, 1
  br i1 %6, label %56, label %7

7:                                                ; preds = %4
  %8 = load ptr, ptr @outer_cache, align 4
  %9 = icmp eq ptr %8, null
  br i1 %9, label %20, label %10

10:                                               ; preds = %7
  %11 = load ptr, ptr @mem_map, align 4
  %12 = ptrtoint ptr %11 to i32
  %13 = sub i32 %5, %12
  %14 = lshr exact i32 %13, 5
  %15 = load i32, ptr @__pv_phys_pfn_offset, align 4
  %16 = add i32 %14, %15
  %17 = shl i32 %16, 12
  %18 = add i32 %17, %1
  %19 = add i32 %18, %2
  tail call void %8(i32 noundef %18, i32 noundef %19) #14
  br label %20

20:                                               ; preds = %10, %7
  %21 = load ptr, ptr getelementptr inbounds (%struct.cpu_cache_fns, ptr @cpu_cache, i32 0, i32 9), align 4
  tail call fastcc void @dma_cache_maint_page(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %21)
  %22 = icmp ugt i32 %2, 4095
  br i1 %22, label %23, label %56

23:                                               ; preds = %20
  %24 = and i32 %1, 4095
  %25 = icmp eq i32 %24, 0
  %26 = or i32 %1, -4096
  %27 = select i1 %25, i32 0, i32 %26
  %28 = add i32 %27, %2
  %29 = icmp ugt i32 %28, 4095
  br i1 %29, label %30, label %56

30:                                               ; preds = %23
  %31 = lshr i32 %1, 12
  %32 = xor i1 %25, true
  %33 = zext i1 %32 to i32
  %34 = add nuw nsw i32 %31, %33
  %35 = load i32, ptr @__pv_phys_pfn_offset, align 4
  %36 = add i32 %34, %35
  %37 = load ptr, ptr @mem_map, align 4
  %38 = ptrtoint ptr %37 to i32
  %39 = sub i32 %5, %38
  %40 = ashr exact i32 %39, 5
  %41 = add i32 %36, %40
  %42 = sub i32 %41, %35
  %43 = getelementptr %struct.page, ptr %37, i32 %42
  tail call void @_set_bit(i32 noundef 11, ptr noundef %43) #14
  %44 = add i32 %28, -4096
  %45 = icmp ugt i32 %44, 4095
  br i1 %45, label %46, label %56

46:                                               ; preds = %46, %30
  %47 = phi i32 [ %54, %46 ], [ %44, %30 ]
  %48 = phi i32 [ %49, %46 ], [ %41, %30 ]
  %49 = add i32 %48, 1
  %50 = load ptr, ptr @mem_map, align 4
  %51 = load i32, ptr @__pv_phys_pfn_offset, align 4
  %52 = sub i32 %49, %51
  %53 = getelementptr %struct.page, ptr %50, i32 %52
  tail call void @_set_bit(i32 noundef 11, ptr noundef %53) #14
  %54 = add i32 %47, -4096
  %55 = icmp ugt i32 %54, 4095
  br i1 %55, label %46, label %56

56:                                               ; preds = %46, %30, %23, %20, %4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @memparse(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @gen_pool_create(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc ptr @__alloc_from_contiguous(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr nocapture noundef writeonly %3, ptr noundef %4, i1 noundef zeroext %5, i32 noundef %6, i32 noundef %7) unnamed_addr #0 {
  %9 = alloca i32, align 4
  %10 = add i32 %1, -1
  %11 = icmp ult i32 %10, 4096
  %12 = lshr i32 %10, 12
  %13 = tail call i32 @llvm.ctlz.i32(i32 %12, i1 false) #14, !range !26
  %14 = sub nuw nsw i32 32, %13
  %15 = select i1 %11, i32 0, i32 %14
  %16 = lshr i32 %1, 12
  %17 = and i32 %7, 8192
  %18 = icmp ne i32 %17, 0
  %19 = tail call ptr @dma_alloc_from_contiguous(ptr noundef %0, i32 noundef %16, i32 noundef %15, i1 noundef zeroext %18) #14
  %20 = icmp eq ptr %19, null
  br i1 %20, label %44, label %21

21:                                               ; preds = %8
  tail call fastcc void @__dma_clear_buffer(ptr noundef nonnull %19, i32 noundef %1, i32 noundef %6)
  br i1 %5, label %22, label %42

22:                                               ; preds = %21
  %23 = load i32, ptr %19, align 4
  %24 = lshr i32 %23, 30
  %25 = icmp eq i32 %24, 2
  br i1 %25, label %31, label %26

26:                                               ; preds = %22
  %27 = icmp ne i32 %24, 3
  %28 = load i32, ptr @movable_zone, align 4
  %29 = icmp ne i32 %28, 2
  %30 = select i1 %27, i1 true, i1 %29
  br i1 %30, label %36, label %31

31:                                               ; preds = %26, %22
  %32 = tail call ptr @dma_common_contiguous_remap(ptr noundef nonnull %19, i32 noundef %1, i32 noundef %2, ptr noundef %4) #14
  %33 = icmp eq ptr %32, null
  br i1 %33, label %34, label %42

34:                                               ; preds = %31
  %35 = tail call zeroext i1 @dma_release_from_contiguous(ptr noundef %0, ptr noundef nonnull %19, i32 noundef %16) #14
  br label %44

36:                                               ; preds = %26
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %9)
  store i32 %2, ptr %9, align 4
  %37 = tail call ptr @page_address(ptr noundef nonnull %19) #14
  %38 = ptrtoint ptr %37 to i32
  %39 = add i32 %38, %1
  %40 = call i32 @apply_to_page_range(ptr noundef nonnull @init_mm, i32 noundef %38, i32 noundef %1, ptr noundef nonnull @__dma_update_pte, ptr noundef nonnull %9) #14
  call void @flush_tlb_kernel_range(i32 noundef %38, i32 noundef %39) #14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %9)
  %41 = call ptr @page_address(ptr noundef nonnull %19) #14
  br label %42

42:                                               ; preds = %36, %31, %21
  %43 = phi ptr [ %32, %31 ], [ %41, %36 ], [ null, %21 ]
  store ptr %19, ptr %3, align 4
  br label %44

44:                                               ; preds = %42, %34, %8
  %45 = phi ptr [ %43, %42 ], [ null, %34 ], [ null, %8 ]
  ret ptr %45
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc ptr @__alloc_remap_buffer(i32 noundef %0, i32 noundef %1, i32 noundef %2, ptr nocapture noundef writeonly %3, ptr noundef %4, i1 noundef zeroext %5) unnamed_addr #0 {
  %7 = add i32 %0, -1
  %8 = lshr i32 %7, 12
  %9 = icmp ult i32 %7, 4096
  %10 = tail call i32 @llvm.ctlz.i32(i32 %8, i1 false) #14, !range !26
  %11 = sub nuw nsw i32 32, %10
  %12 = select i1 %9, i32 0, i32 %11
  %13 = tail call ptr @__alloc_pages(i32 noundef %1, i32 noundef %12, i32 noundef 0, ptr noundef null) #14
  %14 = icmp eq ptr %13, null
  br i1 %14, label %37, label %15

15:                                               ; preds = %6
  tail call void @split_page(ptr noundef nonnull %13, i32 noundef %12) #14
  %16 = lshr i32 %0, 12
  %17 = getelementptr %struct.page, ptr %13, i32 %16
  %18 = shl nuw i32 1, %12
  %19 = getelementptr %struct.page, ptr %13, i32 %18
  %20 = icmp ult ptr %17, %19
  br i1 %20, label %21, label %25

21:                                               ; preds = %21, %15
  %22 = phi ptr [ %23, %21 ], [ %17, %15 ]
  tail call void @__free_pages(ptr noundef %22, i32 noundef 0) #14
  %23 = getelementptr %struct.page, ptr %22, i32 1
  %24 = icmp ult ptr %23, %19
  br i1 %24, label %21, label %25

25:                                               ; preds = %21, %15
  tail call fastcc void @__dma_clear_buffer(ptr noundef nonnull %13, i32 noundef %0, i32 noundef 0) #14
  br i1 %5, label %26, label %35

26:                                               ; preds = %25
  %27 = tail call ptr @dma_common_contiguous_remap(ptr noundef nonnull %13, i32 noundef %0, i32 noundef %2, ptr noundef %4) #14
  %28 = icmp eq ptr %27, null
  br i1 %28, label %29, label %35

29:                                               ; preds = %26
  %30 = icmp ugt ptr %17, %13
  br i1 %30, label %31, label %37

31:                                               ; preds = %31, %29
  %32 = phi ptr [ %33, %31 ], [ %13, %29 ]
  tail call void @__free_pages(ptr noundef %32, i32 noundef 0) #14
  %33 = getelementptr %struct.page, ptr %32, i32 1
  %34 = icmp ult ptr %33, %17
  br i1 %34, label %31, label %37

35:                                               ; preds = %26, %25
  %36 = phi ptr [ %27, %26 ], [ null, %25 ]
  store ptr %13, ptr %3, align 4
  br label %37

37:                                               ; preds = %35, %31, %29, %6
  %38 = phi ptr [ %36, %35 ], [ null, %29 ], [ null, %6 ], [ null, %31 ]
  ret ptr %38
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @gen_pool_set_algo(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gen_pool_first_fit_order_align(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef) #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #9

; Function Attrs: null_pointer_is_valid
declare dso_local void @gen_pool_destroy(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dma_alloc_from_contiguous(ptr noundef, i32 noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @__dma_clear_buffer(ptr noundef %0, i32 noundef %1, i32 noundef %2) unnamed_addr #0 {
  %4 = load i32, ptr %0, align 4
  %5 = lshr i32 %4, 30
  %6 = icmp eq i32 %5, 2
  br i1 %6, label %12, label %7

7:                                                ; preds = %3
  %8 = icmp ne i32 %5, 3
  %9 = load i32, ptr @movable_zone, align 4
  %10 = icmp ne i32 %9, 2
  %11 = select i1 %8, i1 true, i1 %10
  br i1 %11, label %50, label %12

12:                                               ; preds = %7, %3
  %13 = load ptr, ptr @mem_map, align 4
  %14 = ptrtoint ptr %0 to i32
  %15 = ptrtoint ptr %13 to i32
  %16 = sub i32 %14, %15
  %17 = lshr exact i32 %16, 5
  %18 = load i32, ptr @__pv_phys_pfn_offset, align 4
  %19 = add i32 %17, %18
  %20 = shl i32 %19, 12
  %21 = add i32 %20, %1
  %22 = icmp eq i32 %1, 0
  br i1 %22, label %44, label %23

23:                                               ; preds = %12
  %24 = icmp eq i32 %2, 1
  br label %25

25:                                               ; preds = %38, %23
  %26 = phi ptr [ %0, %23 ], [ %41, %38 ]
  %27 = phi i32 [ %1, %23 ], [ %42, %38 ]
  %28 = load i32, ptr @pgprot_kernel, align 4
  %29 = or i32 %28, 512
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !20
  %30 = tail call ptr @llvm.thread.pointer() #14
  %31 = getelementptr inbounds %struct.task_struct, ptr %30, i32 0, i32 149
  %32 = load i32, ptr %31, align 8
  %33 = add i32 %32, 1
  store i32 %33, ptr %31, align 8
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !21
  %34 = tail call ptr @__kmap_local_page_prot(ptr noundef %26, i32 noundef %29) #14
  tail call void @llvm.memset.p0.i32(ptr noundef align 1 dereferenceable(4096) %34, i8 0, i32 4096, i1 false)
  br i1 %24, label %38, label %35

35:                                               ; preds = %25
  %36 = load ptr, ptr getelementptr inbounds (%struct.cpu_cache_fns, ptr @cpu_cache, i32 0, i32 10), align 4
  %37 = getelementptr i8, ptr %34, i32 4096
  tail call void %36(ptr noundef %34, ptr noundef %37) #14
  br label %38

38:                                               ; preds = %35, %25
  tail call void @kunmap_local_indexed(ptr noundef %34) #14
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !22
  %39 = load i32, ptr %31, align 8
  %40 = add i32 %39, -1
  store i32 %40, ptr %31, align 8
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !23
  %41 = getelementptr %struct.page, ptr %26, i32 1
  %42 = add i32 %27, -4096
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %44, label %25

44:                                               ; preds = %38, %12
  %45 = icmp eq i32 %2, 1
  br i1 %45, label %62, label %46

46:                                               ; preds = %44
  %47 = load ptr, ptr getelementptr inbounds (%struct.outer_cache_fns, ptr @outer_cache, i32 0, i32 2), align 4
  %48 = icmp eq ptr %47, null
  br i1 %48, label %62, label %49

49:                                               ; preds = %46
  tail call void %47(i32 noundef %20, i32 noundef %21) #14
  br label %62

50:                                               ; preds = %7
  %51 = tail call ptr @page_address(ptr noundef %0) #14
  tail call void @llvm.memset.p0.i32(ptr align 1 %51, i8 0, i32 %1, i1 false)
  %52 = icmp eq i32 %2, 1
  br i1 %52, label %62, label %53

53:                                               ; preds = %50
  %54 = load ptr, ptr getelementptr inbounds (%struct.cpu_cache_fns, ptr @cpu_cache, i32 0, i32 10), align 4
  %55 = getelementptr i8, ptr %51, i32 %1
  tail call void %54(ptr noundef %51, ptr noundef %55) #14
  %56 = ptrtoint ptr %51 to i32
  %57 = tail call i32 asm "@ __pv_stub\0A1:\09add\09$0, $1, $2\0A2:\09add\09$0, $0, $3\0A\09.pushsection .pv_table,\22a\22\0A\09.long\091b - ., 2b - .\0A\09.popsection\0A", "=r,r,I,I"(i32 %56, i32 -2130706432, i32 8454144) #16, !srcloc !27
  %58 = load ptr, ptr getelementptr inbounds (%struct.outer_cache_fns, ptr @outer_cache, i32 0, i32 2), align 4
  %59 = icmp eq ptr %58, null
  br i1 %59, label %62, label %60

60:                                               ; preds = %53
  %61 = add i32 %57, %1
  tail call void %58(i32 noundef %57, i32 noundef %61) #14
  br label %62

62:                                               ; preds = %60, %53, %50, %49, %46, %44
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dma_common_contiguous_remap(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @dma_release_from_contiguous(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #10

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @apply_to_page_range(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @__dma_update_pte(ptr noundef %0, i32 noundef %1, ptr nocapture noundef readonly %2) #0 {
  %4 = add i32 %1, 1073741824
  %5 = load i32, ptr @__pv_phys_pfn_offset, align 4
  %6 = load i32, ptr %2, align 4
  %7 = load ptr, ptr getelementptr inbounds (%struct.processor, ptr @processor, i32 0, i32 9), align 4
  %8 = shl i32 %5, 12
  %9 = add i32 %4, %8
  %10 = and i32 %9, -4096
  %11 = or i32 %10, %6
  tail call void %7(ptr noundef %0, i32 noundef %11, i32 noundef 0) #14
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @split_page(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__free_pages(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__alloc_pages(i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gen_pool_add_owner(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal ptr @cma_allocator_alloc(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #0 {
  %3 = load ptr, ptr %0, align 4
  %4 = getelementptr inbounds %struct.arm_dma_alloc_args, ptr %0, i32 0, i32 1
  %5 = load i32, ptr %4, align 4
  %6 = getelementptr inbounds %struct.arm_dma_alloc_args, ptr %0, i32 0, i32 3
  %7 = load i32, ptr %6, align 4
  %8 = getelementptr inbounds %struct.arm_dma_alloc_args, ptr %0, i32 0, i32 4
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.arm_dma_alloc_args, ptr %0, i32 0, i32 5
  %11 = load i8, ptr %10, align 4, !range !13
  %12 = icmp ne i8 %11, 0
  %13 = getelementptr inbounds %struct.arm_dma_alloc_args, ptr %0, i32 0, i32 6
  %14 = load i32, ptr %13, align 4
  %15 = getelementptr inbounds %struct.arm_dma_alloc_args, ptr %0, i32 0, i32 2
  %16 = load i32, ptr %15, align 4
  %17 = tail call fastcc ptr @__alloc_from_contiguous(ptr noundef %3, i32 noundef %5, i32 noundef %7, ptr noundef %1, ptr noundef %9, i1 noundef zeroext %12, i32 noundef %14, i32 noundef %16)
  ret ptr %17
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @cma_allocator_free(ptr nocapture noundef readonly %0) #0 {
  %2 = alloca i32, align 4
  %3 = load ptr, ptr %0, align 4
  %4 = getelementptr inbounds %struct.arm_dma_free_args, ptr %0, i32 0, i32 3
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.arm_dma_free_args, ptr %0, i32 0, i32 2
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.arm_dma_free_args, ptr %0, i32 0, i32 1
  %9 = load i32, ptr %8, align 4
  %10 = getelementptr inbounds %struct.arm_dma_free_args, ptr %0, i32 0, i32 4
  %11 = load i8, ptr %10, align 4, !range !13
  %12 = icmp eq i8 %11, 0
  br i1 %12, label %30, label %13

13:                                               ; preds = %1
  %14 = load i32, ptr %5, align 4
  %15 = lshr i32 %14, 30
  %16 = icmp eq i32 %15, 2
  br i1 %16, label %22, label %17

17:                                               ; preds = %13
  %18 = icmp ne i32 %15, 3
  %19 = load i32, ptr @movable_zone, align 4
  %20 = icmp ne i32 %19, 2
  %21 = select i1 %18, i1 true, i1 %20
  br i1 %21, label %23, label %22

22:                                               ; preds = %17, %13
  tail call void @dma_common_free_remap(ptr noundef %7, i32 noundef %9) #14
  br label %30

23:                                               ; preds = %17
  %24 = load i32, ptr @pgprot_kernel, align 4
  %25 = or i32 %24, 512
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #14
  store i32 %25, ptr %2, align 4
  %26 = tail call ptr @page_address(ptr noundef %5) #14
  %27 = ptrtoint ptr %26 to i32
  %28 = add i32 %9, %27
  %29 = call i32 @apply_to_page_range(ptr noundef nonnull @init_mm, i32 noundef %27, i32 noundef %9, ptr noundef nonnull @__dma_update_pte, ptr noundef nonnull %2) #14
  call void @flush_tlb_kernel_range(i32 noundef %27, i32 noundef %28) #14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #14
  br label %30

30:                                               ; preds = %23, %22, %1
  %31 = lshr i32 %9, 12
  %32 = call zeroext i1 @dma_release_from_contiguous(ptr noundef %3, ptr noundef %5, i32 noundef %31) #14
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_common_free_remap(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal ptr @simple_allocator_alloc(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #0 {
  %3 = getelementptr inbounds %struct.arm_dma_alloc_args, ptr %0, i32 0, i32 1
  %4 = load i32, ptr %3, align 4
  %5 = getelementptr inbounds %struct.arm_dma_alloc_args, ptr %0, i32 0, i32 2
  %6 = load i32, ptr %5, align 4
  %7 = tail call fastcc ptr @__alloc_simple_buffer(i32 noundef %4, i32 noundef %6, ptr noundef %1)
  ret ptr %7
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @simple_allocator_free(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.arm_dma_free_args, ptr %0, i32 0, i32 3
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.arm_dma_free_args, ptr %0, i32 0, i32 1
  %5 = load i32, ptr %4, align 4
  %6 = lshr i32 %5, 12
  %7 = getelementptr %struct.page, ptr %3, i32 %6
  %8 = icmp ugt ptr %7, %3
  br i1 %8, label %9, label %13

9:                                                ; preds = %9, %1
  %10 = phi ptr [ %11, %9 ], [ %3, %1 ]
  tail call void @__free_pages(ptr noundef %10, i32 noundef 0) #14
  %11 = getelementptr %struct.page, ptr %10, i32 1
  %12 = icmp ult ptr %11, %7
  br i1 %12, label %9, label %13

13:                                               ; preds = %9, %1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc ptr @__alloc_simple_buffer(i32 noundef %0, i32 noundef %1, ptr nocapture noundef writeonly %2) unnamed_addr #0 {
  %4 = add i32 %0, -1
  %5 = lshr i32 %4, 12
  %6 = icmp ult i32 %4, 4096
  %7 = tail call i32 @llvm.ctlz.i32(i32 %5, i1 false) #14, !range !26
  %8 = sub nuw nsw i32 32, %7
  %9 = select i1 %6, i32 0, i32 %8
  %10 = tail call ptr @__alloc_pages(i32 noundef %1, i32 noundef %9, i32 noundef 0, ptr noundef null) #14
  %11 = icmp eq ptr %10, null
  br i1 %11, label %24, label %12

12:                                               ; preds = %3
  tail call void @split_page(ptr noundef nonnull %10, i32 noundef %9) #14
  %13 = lshr i32 %0, 12
  %14 = getelementptr %struct.page, ptr %10, i32 %13
  %15 = shl nuw i32 1, %9
  %16 = getelementptr %struct.page, ptr %10, i32 %15
  %17 = icmp ult ptr %14, %16
  br i1 %17, label %18, label %22

18:                                               ; preds = %18, %12
  %19 = phi ptr [ %20, %18 ], [ %14, %12 ]
  tail call void @__free_pages(ptr noundef %19, i32 noundef 0) #14
  %20 = getelementptr %struct.page, ptr %19, i32 1
  %21 = icmp ult ptr %20, %16
  br i1 %21, label %18, label %22

22:                                               ; preds = %18, %12
  tail call fastcc void @__dma_clear_buffer(ptr noundef nonnull %10, i32 noundef %0, i32 noundef 1) #14
  store ptr %10, ptr %2, align 4
  %23 = tail call ptr @page_address(ptr noundef nonnull %10) #14
  br label %24

24:                                               ; preds = %22, %3
  %25 = phi ptr [ %23, %22 ], [ null, %3 ]
  ret ptr %25
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal ptr @remap_allocator_alloc(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #0 {
  %3 = getelementptr inbounds %struct.arm_dma_alloc_args, ptr %0, i32 0, i32 1
  %4 = load i32, ptr %3, align 4
  %5 = getelementptr inbounds %struct.arm_dma_alloc_args, ptr %0, i32 0, i32 2
  %6 = load i32, ptr %5, align 4
  %7 = getelementptr inbounds %struct.arm_dma_alloc_args, ptr %0, i32 0, i32 3
  %8 = load i32, ptr %7, align 4
  %9 = getelementptr inbounds %struct.arm_dma_alloc_args, ptr %0, i32 0, i32 4
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr inbounds %struct.arm_dma_alloc_args, ptr %0, i32 0, i32 5
  %12 = load i8, ptr %11, align 4, !range !13
  %13 = icmp ne i8 %12, 0
  %14 = tail call fastcc ptr @__alloc_remap_buffer(i32 noundef %4, i32 noundef %6, i32 noundef %8, ptr noundef %1, ptr noundef %10, i1 noundef zeroext %13)
  ret ptr %14
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @remap_allocator_free(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.arm_dma_free_args, ptr %0, i32 0, i32 4
  %3 = load i8, ptr %2, align 4, !range !13
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %10, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.arm_dma_free_args, ptr %0, i32 0, i32 2
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.arm_dma_free_args, ptr %0, i32 0, i32 1
  %9 = load i32, ptr %8, align 4
  tail call void @dma_common_free_remap(ptr noundef %7, i32 noundef %9) #14
  br label %10

10:                                               ; preds = %5, %1
  %11 = getelementptr inbounds %struct.arm_dma_free_args, ptr %0, i32 0, i32 3
  %12 = load ptr, ptr %11, align 4
  %13 = getelementptr inbounds %struct.arm_dma_free_args, ptr %0, i32 0, i32 1
  %14 = load i32, ptr %13, align 4
  %15 = lshr i32 %14, 12
  %16 = getelementptr %struct.page, ptr %12, i32 %15
  %17 = icmp ugt ptr %16, %12
  br i1 %17, label %18, label %22

18:                                               ; preds = %18, %10
  %19 = phi ptr [ %20, %18 ], [ %12, %10 ]
  tail call void @__free_pages(ptr noundef %19, i32 noundef 0) #14
  %20 = getelementptr %struct.page, ptr %19, i32 1
  %21 = icmp ult ptr %20, %16
  br i1 %21, label %18, label %22

22:                                               ; preds = %18, %10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal ptr @pool_allocator_alloc(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #0 {
  %3 = load ptr, ptr @atomic_pool, align 4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %5, label %6

5:                                                ; preds = %2
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 490, i32 noundef 9, ptr noundef nonnull @.str.4) #14
  br label %24

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.arm_dma_alloc_args, ptr %0, i32 0, i32 1
  %8 = load i32, ptr %7, align 4
  %9 = getelementptr inbounds %struct.gen_pool, ptr %3, i32 0, i32 3
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr inbounds %struct.gen_pool, ptr %3, i32 0, i32 4
  %12 = load ptr, ptr %11, align 4
  %13 = tail call i32 @gen_pool_alloc_algo_owner(ptr noundef nonnull %3, i32 noundef %8, ptr noundef %10, ptr noundef %12, ptr noundef null) #14
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %24, label %15

15:                                               ; preds = %6
  %16 = load ptr, ptr @atomic_pool, align 4
  %17 = tail call i32 @gen_pool_virt_to_phys(ptr noundef %16, i32 noundef %13) #14
  %18 = load ptr, ptr @mem_map, align 4
  %19 = lshr i32 %17, 12
  %20 = load i32, ptr @__pv_phys_pfn_offset, align 4
  %21 = sub i32 %19, %20
  %22 = getelementptr %struct.page, ptr %18, i32 %21
  store ptr %22, ptr %1, align 4
  %23 = inttoptr i32 %13 to ptr
  br label %24

24:                                               ; preds = %15, %6, %5
  %25 = phi ptr [ null, %5 ], [ %23, %15 ], [ null, %6 ]
  ret ptr %25
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @pool_allocator_free(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.arm_dma_free_args, ptr %0, i32 0, i32 2
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.arm_dma_free_args, ptr %0, i32 0, i32 1
  %5 = load i32, ptr %4, align 4
  %6 = load ptr, ptr @atomic_pool, align 4
  %7 = ptrtoint ptr %3 to i32
  %8 = tail call zeroext i1 @gen_pool_has_addr(ptr noundef %6, i32 noundef %7, i32 noundef %5) #14
  br i1 %8, label %9, label %11

9:                                                ; preds = %1
  %10 = load ptr, ptr @atomic_pool, align 4
  tail call void @gen_pool_free_owner(ptr noundef %10, i32 noundef %7, i32 noundef %5, ptr noundef null) #14
  br label %11

11:                                               ; preds = %9, %1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gen_pool_virt_to_phys(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gen_pool_alloc_algo_owner(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @gen_pool_has_addr(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @gen_pool_free_owner(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_mmap_from_dev_coherent(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @remap_pfn_range(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #11

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #12

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @iommu_domain_free(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iommu_attach_device(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal ptr @arm_iommu_alloc_attrs(ptr noundef %0, i32 noundef %1, ptr nocapture noundef %2, i32 noundef %3, i32 noundef %4) #0 {
  %6 = tail call fastcc ptr @__arm_iommu_alloc_attrs(ptr noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef 0)
  ret ptr %6
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @arm_iommu_free_attrs(ptr noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef %4) #0 {
  tail call fastcc void @__arm_iommu_free_attrs(ptr noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef 0)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @arm_iommu_mmap_attrs(ptr nocapture noundef readnone %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5) #0 {
  %7 = getelementptr inbounds %struct.vm_area_struct, ptr %1, i32 0, i32 7
  %8 = load i32, ptr %7, align 4
  %9 = and i32 %5, 4
  %10 = icmp eq i32 %9, 0
  %11 = and i32 %8, -61
  %12 = or i32 %11, 4
  %13 = and i32 %8, -573
  %14 = or i32 %13, 516
  %15 = select i1 %10, i32 %14, i32 %12
  store i32 %15, ptr %7, align 4
  %16 = tail call fastcc i32 @__arm_iommu_mmap_attrs(ptr noundef %1, ptr noundef %2, i32 noundef %4, i32 noundef %5)
  ret i32 %16
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @arm_iommu_get_sgtable(ptr nocapture noundef readnone %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5) #0 {
  %7 = load ptr, ptr @atomic_pool, align 4
  %8 = ptrtoint ptr %2 to i32
  %9 = tail call zeroext i1 @gen_pool_has_addr(ptr noundef %7, i32 noundef %8, i32 noundef 4096) #14
  br i1 %9, label %10, label %18

10:                                               ; preds = %6
  %11 = load ptr, ptr @atomic_pool, align 4
  %12 = tail call i32 @gen_pool_virt_to_phys(ptr noundef %11, i32 noundef %8) #14
  %13 = load ptr, ptr @mem_map, align 4
  %14 = lshr i32 %12, 12
  %15 = load i32, ptr @__pv_phys_pfn_offset, align 4
  %16 = sub i32 %14, %15
  %17 = getelementptr %struct.page, ptr %13, i32 %16
  br label %23

18:                                               ; preds = %6
  %19 = and i32 %5, 16
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %18
  %22 = tail call ptr @dma_common_find_pages(ptr noundef %2) #14
  br label %23

23:                                               ; preds = %21, %18, %10
  %24 = phi ptr [ %17, %10 ], [ %22, %21 ], [ %2, %18 ]
  %25 = icmp eq ptr %24, null
  br i1 %25, label %30, label %26

26:                                               ; preds = %23
  %27 = add i32 %4, 4095
  %28 = lshr i32 %27, 12
  %29 = tail call i32 @sg_alloc_table_from_pages_segment(ptr noundef %1, ptr noundef nonnull %24, i32 noundef %28, i32 noundef 0, i32 noundef %4, i32 noundef -1, i32 noundef 3264) #14
  br label %30

30:                                               ; preds = %26, %23
  %31 = phi i32 [ %29, %26 ], [ -6, %23 ]
  ret i32 %31
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @arm_iommu_map_page(ptr nocapture noundef readonly %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5) #0 {
  %7 = and i32 %5, 32
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %30

9:                                                ; preds = %6
  %10 = load ptr, ptr getelementptr inbounds (%struct.cpu_cache_fns, ptr @cpu_cache, i32 0, i32 8), align 4
  tail call fastcc void @dma_cache_maint_page(ptr noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, ptr noundef %10) #14
  %11 = load ptr, ptr @mem_map, align 4
  %12 = ptrtoint ptr %1 to i32
  %13 = ptrtoint ptr %11 to i32
  %14 = sub i32 %12, %13
  %15 = lshr exact i32 %14, 5
  %16 = load i32, ptr @__pv_phys_pfn_offset, align 4
  %17 = add i32 %15, %16
  %18 = shl i32 %17, 12
  %19 = add i32 %18, %2
  %20 = icmp eq i32 %4, 2
  br i1 %20, label %21, label %24

21:                                               ; preds = %9
  %22 = load ptr, ptr @outer_cache, align 4
  %23 = icmp eq ptr %22, null
  br i1 %23, label %30, label %27

24:                                               ; preds = %9
  %25 = load ptr, ptr getelementptr inbounds (%struct.outer_cache_fns, ptr @outer_cache, i32 0, i32 1), align 4
  %26 = icmp eq ptr %25, null
  br i1 %26, label %30, label %27

27:                                               ; preds = %24, %21
  %28 = phi ptr [ %22, %21 ], [ %25, %24 ]
  %29 = add i32 %19, %3
  tail call void %28(i32 noundef %19, i32 noundef %29) #14
  br label %30

30:                                               ; preds = %27, %24, %21, %6
  %31 = tail call i32 @arm_coherent_iommu_map_page(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5)
  ret i32 %31
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @arm_iommu_unmap_page(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) #0 {
  %6 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 24
  %7 = load ptr, ptr %6, align 8
  %8 = and i32 %1, -4096
  %9 = load ptr, ptr @mem_map, align 4
  %10 = load ptr, ptr %7, align 4
  %11 = tail call i32 @iommu_iova_to_phys(ptr noundef %10, i32 noundef %8) #14
  %12 = lshr i32 %11, 12
  %13 = load i32, ptr @__pv_phys_pfn_offset, align 4
  %14 = sub i32 %12, %13
  %15 = getelementptr %struct.page, ptr %9, i32 %14
  %16 = and i32 %1, 4095
  %17 = add i32 %2, 4095
  %18 = add i32 %17, %16
  %19 = and i32 %18, -4096
  %20 = icmp eq i32 %8, 0
  br i1 %20, label %60, label %21

21:                                               ; preds = %5
  %22 = and i32 %4, 32
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %21
  tail call fastcc void @__dma_page_dev_to_cpu(ptr noundef %15, i32 noundef %16, i32 noundef %2, i32 noundef %3)
  br label %25

25:                                               ; preds = %24, %21
  %26 = load ptr, ptr %7, align 4
  %27 = tail call i32 @iommu_unmap(ptr noundef %26, i32 noundef %8, i32 noundef %19) #14
  %28 = getelementptr inbounds %struct.dma_iommu_mapping, ptr %7, i32 0, i32 5
  %29 = load i32, ptr %28, align 4
  %30 = shl i32 %29, 12
  %31 = icmp eq i32 %19, 0
  br i1 %31, label %60, label %32

32:                                               ; preds = %25
  %33 = getelementptr inbounds %struct.dma_iommu_mapping, ptr %7, i32 0, i32 6
  %34 = load i32, ptr %33, align 4
  %35 = sub i32 %8, %34
  %36 = udiv i32 %35, %30
  %37 = icmp ult i32 %8, %34
  br i1 %37, label %42, label %38, !prof !14

38:                                               ; preds = %32
  %39 = getelementptr inbounds %struct.dma_iommu_mapping, ptr %7, i32 0, i32 3
  %40 = load i32, ptr %39, align 4
  %41 = icmp ugt i32 %36, %40
  br i1 %41, label %42, label %43, !prof !14

42:                                               ; preds = %38, %32
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22arch/arm/mm/dma-mapping.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1174, 0\0A.popsection", ""() #14, !srcloc !28
  unreachable

43:                                               ; preds = %38
  %44 = mul i32 %36, %30
  %45 = add i32 %44, %34
  %46 = add i32 %19, %8
  %47 = add i32 %45, %30
  %48 = icmp ugt i32 %46, %47
  br i1 %48, label %49, label %50

49:                                               ; preds = %43
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22arch/arm/mm/dma-mapping.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1187, 0\0A.popsection", ""() #14, !srcloc !29
  unreachable

50:                                               ; preds = %43
  %51 = sub i32 %8, %45
  %52 = lshr i32 %51, 12
  %53 = lshr i32 %18, 12
  %54 = getelementptr inbounds %struct.dma_iommu_mapping, ptr %7, i32 0, i32 7
  %55 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %54) #14
  %56 = getelementptr inbounds %struct.dma_iommu_mapping, ptr %7, i32 0, i32 1
  %57 = load ptr, ptr %56, align 4
  %58 = getelementptr ptr, ptr %57, i32 %36
  %59 = load ptr, ptr %58, align 4
  tail call void @__bitmap_clear(ptr noundef %59, i32 noundef %52, i32 noundef %53) #14
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %54, i32 noundef %55) #14
  br label %60

60:                                               ; preds = %50, %25, %5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @arm_iommu_map_sg(ptr nocapture noundef readonly %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) #0 {
  %6 = tail call fastcc i32 @__iommu_map_sg(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i1 noundef zeroext false)
  ret i32 %6
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @arm_iommu_unmap_sg(ptr nocapture noundef readonly %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) #0 {
  %6 = icmp sgt i32 %2, 0
  br i1 %6, label %7, label %32

7:                                                ; preds = %5
  %8 = and i32 %4, 32
  %9 = icmp eq i32 %8, 0
  br label %10

10:                                               ; preds = %28, %7
  %11 = phi i32 [ 0, %7 ], [ %29, %28 ]
  %12 = phi ptr [ %1, %7 ], [ %30, %28 ]
  %13 = getelementptr inbounds %struct.scatterlist, ptr %12, i32 0, i32 4
  %14 = load i32, ptr %13, align 4
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %19, label %16

16:                                               ; preds = %10
  %17 = getelementptr inbounds %struct.scatterlist, ptr %12, i32 0, i32 3
  %18 = load i32, ptr %17, align 4
  tail call fastcc void @__iommu_remove_mapping(ptr noundef %0, i32 noundef %18, i32 noundef %14) #14
  br label %19

19:                                               ; preds = %16, %10
  br i1 %9, label %20, label %28

20:                                               ; preds = %19
  %21 = load i32, ptr %12, align 4
  %22 = and i32 %21, -4
  %23 = inttoptr i32 %22 to ptr
  %24 = getelementptr inbounds %struct.scatterlist, ptr %12, i32 0, i32 1
  %25 = load i32, ptr %24, align 4
  %26 = getelementptr inbounds %struct.scatterlist, ptr %12, i32 0, i32 2
  %27 = load i32, ptr %26, align 4
  tail call fastcc void @__dma_page_dev_to_cpu(ptr noundef %23, i32 noundef %25, i32 noundef %27, i32 noundef %3) #14
  br label %28

28:                                               ; preds = %20, %19
  %29 = add nuw nsw i32 %11, 1
  %30 = tail call ptr @sg_next(ptr noundef %12) #14
  %31 = icmp eq i32 %29, %2
  br i1 %31, label %32, label %10

32:                                               ; preds = %28, %5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @arm_iommu_map_resource(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) #0 {
  %6 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 24
  %7 = load ptr, ptr %6, align 8
  %8 = and i32 %1, 4095
  %9 = add i32 %2, 4095
  %10 = add i32 %9, %8
  %11 = and i32 %10, -4096
  %12 = tail call fastcc i32 @__alloc_iova(ptr noundef %7, i32 noundef %11)
  %13 = icmp eq i32 %12, -1
  br i1 %13, label %65, label %14

14:                                               ; preds = %5
  %15 = and i32 %1, -4096
  %16 = lshr i32 %4, 4
  %17 = and i32 %16, 32
  switch i32 %3, label %24 [
    i32 0, label %18
    i32 1, label %20
    i32 2, label %22
  ]

18:                                               ; preds = %14
  %19 = or i32 %17, 3
  br label %24

20:                                               ; preds = %14
  %21 = or i32 %17, 1
  br label %24

22:                                               ; preds = %14
  %23 = or i32 %17, 2
  br label %24

24:                                               ; preds = %22, %20, %18, %14
  %25 = phi i32 [ %23, %22 ], [ %21, %20 ], [ %19, %18 ], [ %17, %14 ]
  %26 = or i32 %25, 16
  %27 = load ptr, ptr %7, align 4
  %28 = tail call i32 @iommu_map(ptr noundef %27, i32 noundef %12, i32 noundef %15, i32 noundef %11, i32 noundef %26) #14
  %29 = icmp slt i32 %28, 0
  br i1 %29, label %32, label %30

30:                                               ; preds = %24
  %31 = add i32 %12, %8
  br label %65

32:                                               ; preds = %24
  %33 = getelementptr inbounds %struct.dma_iommu_mapping, ptr %7, i32 0, i32 5
  %34 = load i32, ptr %33, align 4
  %35 = shl i32 %34, 12
  %36 = icmp eq i32 %11, 0
  br i1 %36, label %65, label %37

37:                                               ; preds = %32
  %38 = getelementptr inbounds %struct.dma_iommu_mapping, ptr %7, i32 0, i32 6
  %39 = load i32, ptr %38, align 4
  %40 = sub i32 %12, %39
  %41 = udiv i32 %40, %35
  %42 = icmp ult i32 %12, %39
  br i1 %42, label %47, label %43, !prof !14

43:                                               ; preds = %37
  %44 = getelementptr inbounds %struct.dma_iommu_mapping, ptr %7, i32 0, i32 3
  %45 = load i32, ptr %44, align 4
  %46 = icmp ugt i32 %41, %45
  br i1 %46, label %47, label %48, !prof !14

47:                                               ; preds = %43, %37
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22arch/arm/mm/dma-mapping.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1174, 0\0A.popsection", ""() #14, !srcloc !28
  unreachable

48:                                               ; preds = %43
  %49 = mul i32 %41, %35
  %50 = add i32 %49, %39
  %51 = add i32 %12, %11
  %52 = add i32 %50, %35
  %53 = icmp ugt i32 %51, %52
  br i1 %53, label %54, label %55

54:                                               ; preds = %48
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22arch/arm/mm/dma-mapping.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1187, 0\0A.popsection", ""() #14, !srcloc !29
  unreachable

55:                                               ; preds = %48
  %56 = sub i32 %12, %50
  %57 = lshr i32 %56, 12
  %58 = lshr i32 %10, 12
  %59 = getelementptr inbounds %struct.dma_iommu_mapping, ptr %7, i32 0, i32 7
  %60 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %59) #14
  %61 = getelementptr inbounds %struct.dma_iommu_mapping, ptr %7, i32 0, i32 1
  %62 = load ptr, ptr %61, align 4
  %63 = getelementptr ptr, ptr %62, i32 %41
  %64 = load ptr, ptr %63, align 4
  tail call void @__bitmap_clear(ptr noundef %64, i32 noundef %57, i32 noundef %58) #14
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %59, i32 noundef %60) #14
  br label %65

65:                                               ; preds = %55, %32, %30, %5
  %66 = phi i32 [ %31, %30 ], [ -1, %5 ], [ -1, %32 ], [ -1, %55 ]
  ret i32 %66
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @arm_iommu_unmap_resource(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) #0 {
  %6 = and i32 %1, -4096
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %49, label %8

8:                                                ; preds = %5
  %9 = and i32 %1, 4095
  %10 = add i32 %2, 4095
  %11 = add i32 %10, %9
  %12 = and i32 %11, -4096
  %13 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 24
  %14 = load ptr, ptr %13, align 8
  %15 = load ptr, ptr %14, align 4
  %16 = tail call i32 @iommu_unmap(ptr noundef %15, i32 noundef %6, i32 noundef %12) #14
  %17 = getelementptr inbounds %struct.dma_iommu_mapping, ptr %14, i32 0, i32 5
  %18 = load i32, ptr %17, align 4
  %19 = shl i32 %18, 12
  %20 = icmp eq i32 %12, 0
  br i1 %20, label %49, label %21

21:                                               ; preds = %8
  %22 = getelementptr inbounds %struct.dma_iommu_mapping, ptr %14, i32 0, i32 6
  %23 = load i32, ptr %22, align 4
  %24 = sub i32 %6, %23
  %25 = udiv i32 %24, %19
  %26 = icmp ult i32 %6, %23
  br i1 %26, label %31, label %27, !prof !14

27:                                               ; preds = %21
  %28 = getelementptr inbounds %struct.dma_iommu_mapping, ptr %14, i32 0, i32 3
  %29 = load i32, ptr %28, align 4
  %30 = icmp ugt i32 %25, %29
  br i1 %30, label %31, label %32, !prof !14

31:                                               ; preds = %27, %21
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22arch/arm/mm/dma-mapping.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1174, 0\0A.popsection", ""() #14, !srcloc !28
  unreachable

32:                                               ; preds = %27
  %33 = mul i32 %25, %19
  %34 = add i32 %33, %23
  %35 = add i32 %12, %6
  %36 = add i32 %34, %19
  %37 = icmp ugt i32 %35, %36
  br i1 %37, label %38, label %39

38:                                               ; preds = %32
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22arch/arm/mm/dma-mapping.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1187, 0\0A.popsection", ""() #14, !srcloc !29
  unreachable

39:                                               ; preds = %32
  %40 = sub i32 %6, %34
  %41 = lshr i32 %40, 12
  %42 = lshr i32 %11, 12
  %43 = getelementptr inbounds %struct.dma_iommu_mapping, ptr %14, i32 0, i32 7
  %44 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %43) #14
  %45 = getelementptr inbounds %struct.dma_iommu_mapping, ptr %14, i32 0, i32 1
  %46 = load ptr, ptr %45, align 4
  %47 = getelementptr ptr, ptr %46, i32 %25
  %48 = load ptr, ptr %47, align 4
  tail call void @__bitmap_clear(ptr noundef %48, i32 noundef %41, i32 noundef %42) #14
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %43, i32 noundef %44) #14
  br label %49

49:                                               ; preds = %39, %8, %5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @arm_iommu_sync_single_for_cpu(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) #0 {
  %5 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 24
  %6 = load ptr, ptr %5, align 8
  %7 = and i32 %1, -4096
  %8 = load ptr, ptr @mem_map, align 4
  %9 = load ptr, ptr %6, align 4
  %10 = tail call i32 @iommu_iova_to_phys(ptr noundef %9, i32 noundef %7) #14
  %11 = icmp eq i32 %7, 0
  br i1 %11, label %18, label %12

12:                                               ; preds = %4
  %13 = and i32 %1, 4095
  %14 = lshr i32 %10, 12
  %15 = load i32, ptr @__pv_phys_pfn_offset, align 4
  %16 = sub i32 %14, %15
  %17 = getelementptr %struct.page, ptr %8, i32 %16
  tail call fastcc void @__dma_page_dev_to_cpu(ptr noundef %17, i32 noundef %13, i32 noundef %2, i32 noundef %3)
  br label %18

18:                                               ; preds = %12, %4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @arm_iommu_sync_single_for_device(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) #0 {
  %5 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 24
  %6 = load ptr, ptr %5, align 8
  %7 = and i32 %1, -4096
  %8 = load ptr, ptr @mem_map, align 4
  %9 = load ptr, ptr %6, align 4
  %10 = tail call i32 @iommu_iova_to_phys(ptr noundef %9, i32 noundef %7) #14
  %11 = icmp eq i32 %7, 0
  br i1 %11, label %38, label %12

12:                                               ; preds = %4
  %13 = and i32 %1, 4095
  %14 = lshr i32 %10, 12
  %15 = load i32, ptr @__pv_phys_pfn_offset, align 4
  %16 = sub i32 %14, %15
  %17 = getelementptr %struct.page, ptr %8, i32 %16
  %18 = load ptr, ptr getelementptr inbounds (%struct.cpu_cache_fns, ptr @cpu_cache, i32 0, i32 8), align 4
  tail call fastcc void @dma_cache_maint_page(ptr noundef %17, i32 noundef %13, i32 noundef %2, i32 noundef %3, ptr noundef %18) #14
  %19 = load ptr, ptr @mem_map, align 4
  %20 = ptrtoint ptr %17 to i32
  %21 = ptrtoint ptr %19 to i32
  %22 = sub i32 %20, %21
  %23 = lshr exact i32 %22, 5
  %24 = load i32, ptr @__pv_phys_pfn_offset, align 4
  %25 = add i32 %23, %24
  %26 = shl i32 %25, 12
  %27 = or i32 %26, %13
  %28 = icmp eq i32 %3, 2
  br i1 %28, label %29, label %32

29:                                               ; preds = %12
  %30 = load ptr, ptr @outer_cache, align 4
  %31 = icmp eq ptr %30, null
  br i1 %31, label %38, label %35

32:                                               ; preds = %12
  %33 = load ptr, ptr getelementptr inbounds (%struct.outer_cache_fns, ptr @outer_cache, i32 0, i32 1), align 4
  %34 = icmp eq ptr %33, null
  br i1 %34, label %38, label %35

35:                                               ; preds = %32, %29
  %36 = phi ptr [ %30, %29 ], [ %33, %32 ]
  %37 = add i32 %27, %2
  tail call void %36(i32 noundef %27, i32 noundef %37) #14
  br label %38

38:                                               ; preds = %35, %32, %29, %4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @arm_iommu_sync_sg_for_cpu(ptr nocapture noundef readnone %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) #0 {
  %5 = icmp sgt i32 %2, 0
  br i1 %5, label %6, label %19

6:                                                ; preds = %6, %4
  %7 = phi i32 [ %16, %6 ], [ 0, %4 ]
  %8 = phi ptr [ %17, %6 ], [ %1, %4 ]
  %9 = load i32, ptr %8, align 4
  %10 = and i32 %9, -4
  %11 = inttoptr i32 %10 to ptr
  %12 = getelementptr inbounds %struct.scatterlist, ptr %8, i32 0, i32 1
  %13 = load i32, ptr %12, align 4
  %14 = getelementptr inbounds %struct.scatterlist, ptr %8, i32 0, i32 2
  %15 = load i32, ptr %14, align 4
  tail call fastcc void @__dma_page_dev_to_cpu(ptr noundef %11, i32 noundef %13, i32 noundef %15, i32 noundef %3)
  %16 = add nuw nsw i32 %7, 1
  %17 = tail call ptr @sg_next(ptr noundef %8) #14
  %18 = icmp eq i32 %16, %2
  br i1 %18, label %19, label %6

19:                                               ; preds = %6, %4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @arm_iommu_sync_sg_for_device(ptr nocapture noundef readnone %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) #0 {
  %5 = icmp sgt i32 %2, 0
  br i1 %5, label %6, label %40

6:                                                ; preds = %4
  %7 = icmp eq i32 %3, 2
  br label %8

8:                                                ; preds = %36, %6
  %9 = phi i32 [ 0, %6 ], [ %37, %36 ]
  %10 = phi ptr [ %1, %6 ], [ %38, %36 ]
  %11 = load i32, ptr %10, align 4
  %12 = and i32 %11, -4
  %13 = inttoptr i32 %12 to ptr
  %14 = getelementptr inbounds %struct.scatterlist, ptr %10, i32 0, i32 1
  %15 = load i32, ptr %14, align 4
  %16 = getelementptr inbounds %struct.scatterlist, ptr %10, i32 0, i32 2
  %17 = load i32, ptr %16, align 4
  %18 = load ptr, ptr getelementptr inbounds (%struct.cpu_cache_fns, ptr @cpu_cache, i32 0, i32 8), align 4
  tail call fastcc void @dma_cache_maint_page(ptr noundef %13, i32 noundef %15, i32 noundef %17, i32 noundef %3, ptr noundef %18) #14
  %19 = load ptr, ptr @mem_map, align 4
  %20 = ptrtoint ptr %19 to i32
  %21 = sub i32 %12, %20
  %22 = lshr exact i32 %21, 5
  %23 = load i32, ptr @__pv_phys_pfn_offset, align 4
  %24 = add i32 %22, %23
  %25 = shl i32 %24, 12
  %26 = add i32 %25, %15
  br i1 %7, label %27, label %30

27:                                               ; preds = %8
  %28 = load ptr, ptr @outer_cache, align 4
  %29 = icmp eq ptr %28, null
  br i1 %29, label %36, label %33

30:                                               ; preds = %8
  %31 = load ptr, ptr getelementptr inbounds (%struct.outer_cache_fns, ptr @outer_cache, i32 0, i32 1), align 4
  %32 = icmp eq ptr %31, null
  br i1 %32, label %36, label %33

33:                                               ; preds = %30, %27
  %34 = phi ptr [ %28, %27 ], [ %31, %30 ]
  %35 = add i32 %26, %17
  tail call void %34(i32 noundef %26, i32 noundef %35) #14
  br label %36

36:                                               ; preds = %33, %30, %27
  %37 = add nuw nsw i32 %9, 1
  %38 = tail call ptr @sg_next(ptr noundef %10) #14
  %39 = icmp eq i32 %37, %2
  br i1 %39, label %40, label %8

40:                                               ; preds = %36, %4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc ptr @__arm_iommu_alloc_attrs(ptr noundef %0, i32 noundef %1, ptr nocapture noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5) unnamed_addr #0 {
  %7 = alloca ptr, align 4
  %8 = load i32, ptr @pgprot_kernel, align 4
  %9 = and i32 %8, -573
  %10 = or i32 %9, 516
  store i32 -1, ptr %2, align 4
  %11 = add i32 %1, 4095
  %12 = and i32 %11, -4096
  %13 = icmp eq i32 %5, 1
  br i1 %13, label %17, label %14

14:                                               ; preds = %6
  %15 = and i32 %3, 1024
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %19, label %53

17:                                               ; preds = %6
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #14
  store ptr null, ptr %7, align 4, !annotation !10
  %18 = call fastcc ptr @__alloc_simple_buffer(i32 noundef %12, i32 noundef %3, ptr noundef nonnull %7) #14
  br label %39

19:                                               ; preds = %14
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #14
  %20 = load ptr, ptr @atomic_pool, align 4
  %21 = icmp eq ptr %20, null
  br i1 %21, label %22, label %23

22:                                               ; preds = %19
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 490, i32 noundef 9, ptr noundef nonnull @.str.4) #14
  br label %51

23:                                               ; preds = %19
  %24 = getelementptr inbounds %struct.gen_pool, ptr %20, i32 0, i32 3
  %25 = load ptr, ptr %24, align 4
  %26 = getelementptr inbounds %struct.gen_pool, ptr %20, i32 0, i32 4
  %27 = load ptr, ptr %26, align 4
  %28 = tail call i32 @gen_pool_alloc_algo_owner(ptr noundef nonnull %20, i32 noundef %12, ptr noundef %25, ptr noundef %27, ptr noundef null) #14
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %51, label %30

30:                                               ; preds = %23
  %31 = load ptr, ptr @atomic_pool, align 4
  %32 = tail call i32 @gen_pool_virt_to_phys(ptr noundef %31, i32 noundef %28) #14
  %33 = load ptr, ptr @mem_map, align 4
  %34 = lshr i32 %32, 12
  %35 = load i32, ptr @__pv_phys_pfn_offset, align 4
  %36 = sub i32 %34, %35
  %37 = getelementptr %struct.page, ptr %33, i32 %36
  store ptr %37, ptr %7, align 4
  %38 = inttoptr i32 %28 to ptr
  br label %39

39:                                               ; preds = %30, %17
  %40 = phi ptr [ %18, %17 ], [ %38, %30 ]
  %41 = icmp eq ptr %40, null
  br i1 %41, label %51, label %42

42:                                               ; preds = %39
  %43 = call fastcc i32 @__iommu_create_mapping(ptr noundef %0, ptr noundef nonnull %7, i32 noundef %12, i32 noundef %4) #14
  store i32 %43, ptr %2, align 4
  %44 = icmp eq i32 %43, -1
  br i1 %44, label %45, label %51

45:                                               ; preds = %42
  %46 = load ptr, ptr @atomic_pool, align 4
  %47 = ptrtoint ptr %40 to i32
  %48 = tail call zeroext i1 @gen_pool_has_addr(ptr noundef %46, i32 noundef %47, i32 noundef %12) #14
  br i1 %48, label %49, label %51

49:                                               ; preds = %45
  %50 = load ptr, ptr @atomic_pool, align 4
  tail call void @gen_pool_free_owner(ptr noundef %50, i32 noundef %47, i32 noundef %12, ptr noundef null) #14
  br label %51

51:                                               ; preds = %49, %45, %42, %39, %23, %22
  %52 = phi ptr [ null, %39 ], [ %40, %42 ], [ null, %45 ], [ null, %49 ], [ null, %22 ], [ null, %23 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #14
  br label %188

53:                                               ; preds = %14
  %54 = and i32 %3, -262145
  %55 = lshr i32 %11, 12
  %56 = shl nuw nsw i32 %55, 2
  %57 = icmp ult i32 %12, 4198400
  br i1 %57, label %58, label %60

58:                                               ; preds = %53
  %59 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %56, i32 noundef 3520) #18
  br label %62

60:                                               ; preds = %53
  %61 = tail call noalias ptr @vzalloc(i32 noundef %56) #18
  br label %62

62:                                               ; preds = %60, %58
  %63 = phi ptr [ %61, %60 ], [ %59, %58 ]
  %64 = icmp eq ptr %63, null
  br i1 %64, label %188, label %65

65:                                               ; preds = %62
  %66 = and i32 %4, 64
  %67 = icmp eq i32 %66, 0
  br i1 %67, label %89, label %68

68:                                               ; preds = %65
  %69 = add i32 %12, -1
  %70 = icmp eq i32 %69, 4095
  %71 = lshr i32 %69, 12
  %72 = tail call i32 @llvm.ctlz.i32(i32 %71, i1 false) #14, !range !26
  %73 = sub nuw nsw i32 32, %72
  %74 = select i1 %70, i32 0, i32 %73
  %75 = and i32 %3, 8192
  %76 = icmp ne i32 %75, 0
  %77 = tail call ptr @dma_alloc_from_contiguous(ptr noundef %0, i32 noundef %55, i32 noundef %74, i1 noundef zeroext %76) #14
  %78 = icmp eq ptr %77, null
  br i1 %78, label %156, label %79

79:                                               ; preds = %68
  tail call fastcc void @__dma_clear_buffer(ptr noundef nonnull %77, i32 noundef %12, i32 noundef 0) #14
  %80 = icmp eq i32 %12, 0
  br i1 %80, label %157, label %81

81:                                               ; preds = %79
  %82 = tail call i32 @llvm.umax.i32(i32 %55, i32 1) #14
  br label %83

83:                                               ; preds = %83, %81
  %84 = phi i32 [ %87, %83 ], [ 0, %81 ]
  %85 = getelementptr %struct.page, ptr %77, i32 %84
  %86 = getelementptr ptr, ptr %63, i32 %84
  store ptr %85, ptr %86, align 4
  %87 = add nuw nsw i32 %84, 1
  %88 = icmp eq i32 %87, %82
  br i1 %88, label %157, label %83

89:                                               ; preds = %65
  %90 = or i32 %54, 8194
  %91 = icmp eq i32 %12, 0
  br i1 %91, label %157, label %92

92:                                               ; preds = %89
  %93 = and i32 %4, 128
  %94 = icmp eq i32 %93, 0
  %95 = select i1 %94, i32 0, i32 3
  %96 = or i32 %54, 73730
  br label %97

97:                                               ; preds = %140, %92
  %98 = phi i32 [ %95, %92 ], [ %143, %140 ]
  %99 = phi i32 [ 0, %92 ], [ %142, %140 ]
  %100 = phi i32 [ %55, %92 ], [ %141, %140 ]
  %101 = getelementptr [4 x i32], ptr @iommu_order_array, i32 0, i32 %98
  %102 = load i32, ptr %101, align 4
  %103 = tail call i32 @llvm.ctlz.i32(i32 %100, i1 true) #14, !range !26
  %104 = xor i32 %103, 31
  %105 = icmp ult i32 %104, %102
  br i1 %105, label %106, label %108

106:                                              ; preds = %97
  %107 = add i32 %98, 1
  br label %140

108:                                              ; preds = %97
  %109 = and i32 %98, 1073741823
  %110 = icmp eq i32 %109, 3
  br i1 %110, label %117, label %111

111:                                              ; preds = %108
  %112 = tail call ptr @__alloc_pages(i32 noundef %96, i32 noundef %102, i32 noundef 0, ptr noundef null) #14
  %113 = getelementptr ptr, ptr %63, i32 %99
  store ptr %112, ptr %113, align 4
  %114 = icmp eq ptr %112, null
  br i1 %114, label %115, label %121

115:                                              ; preds = %111
  %116 = add i32 %98, 1
  br label %140

117:                                              ; preds = %108
  %118 = tail call ptr @__alloc_pages(i32 noundef %90, i32 noundef 0, i32 noundef 0, ptr noundef null) #14
  %119 = getelementptr ptr, ptr %63, i32 %99
  store ptr %118, ptr %119, align 4
  %120 = icmp eq ptr %118, null
  br i1 %120, label %145, label %134

121:                                              ; preds = %111
  tail call void @split_page(ptr noundef nonnull %112, i32 noundef %102) #14
  %122 = shl nsw i32 -1, %102
  %123 = xor i32 %122, -1
  br label %124

124:                                              ; preds = %124, %121
  %125 = phi i32 [ %130, %124 ], [ %123, %121 ]
  %126 = load ptr, ptr %113, align 4
  %127 = getelementptr %struct.page, ptr %126, i32 %125
  %128 = add i32 %125, %99
  %129 = getelementptr ptr, ptr %63, i32 %128
  store ptr %127, ptr %129, align 4
  %130 = add i32 %125, -1
  %131 = icmp eq i32 %130, 0
  br i1 %131, label %132, label %124

132:                                              ; preds = %124
  %133 = load ptr, ptr %113, align 4
  br label %134

134:                                              ; preds = %132, %117
  %135 = phi ptr [ %133, %132 ], [ %118, %117 ]
  %136 = shl i32 4096, %102
  tail call fastcc void @__dma_clear_buffer(ptr noundef %135, i32 noundef %136, i32 noundef 0) #14
  %137 = shl nuw i32 1, %102
  %138 = add i32 %137, %99
  %139 = sub i32 %100, %137
  br label %140

140:                                              ; preds = %134, %115, %106
  %141 = phi i32 [ %100, %106 ], [ %139, %134 ], [ %100, %115 ]
  %142 = phi i32 [ %99, %106 ], [ %138, %134 ], [ %99, %115 ]
  %143 = phi i32 [ %107, %106 ], [ %98, %134 ], [ %116, %115 ]
  %144 = icmp eq i32 %141, 0
  br i1 %144, label %157, label %97

145:                                              ; preds = %117
  %146 = icmp eq i32 %99, 0
  br i1 %146, label %156, label %147

147:                                              ; preds = %154, %145
  %148 = phi i32 [ %149, %154 ], [ %99, %145 ]
  %149 = add i32 %148, -1
  %150 = getelementptr ptr, ptr %63, i32 %149
  %151 = load ptr, ptr %150, align 4
  %152 = icmp eq ptr %151, null
  br i1 %152, label %154, label %153

153:                                              ; preds = %147
  tail call void @__free_pages(ptr noundef nonnull %151, i32 noundef 0) #14
  br label %154

154:                                              ; preds = %153, %147
  %155 = icmp eq i32 %149, 0
  br i1 %155, label %156, label %147

156:                                              ; preds = %154, %145, %68
  tail call void @kvfree(ptr noundef nonnull %63) #14
  br label %188

157:                                              ; preds = %140, %89, %83, %79
  %158 = phi i1 [ true, %89 ], [ %67, %79 ], [ %67, %140 ], [ %67, %83 ]
  %159 = tail call fastcc i32 @__iommu_create_mapping(ptr noundef %0, ptr noundef nonnull %63, i32 noundef %12, i32 noundef %4)
  store i32 %159, ptr %2, align 4
  %160 = icmp eq i32 %159, -1
  br i1 %160, label %170, label %161

161:                                              ; preds = %157
  %162 = and i32 %4, 16
  %163 = icmp eq i32 %162, 0
  br i1 %163, label %164, label %188

164:                                              ; preds = %161
  %165 = tail call ptr @llvm.returnaddress(i32 0)
  %166 = tail call ptr @dma_common_pages_remap(ptr noundef nonnull %63, i32 noundef %12, i32 noundef %10, ptr noundef %165) #14
  %167 = icmp eq ptr %166, null
  br i1 %167, label %168, label %188

168:                                              ; preds = %164
  %169 = load i32, ptr %2, align 4
  tail call fastcc void @__iommu_remove_mapping(ptr noundef %0, i32 noundef %169, i32 noundef %12)
  br label %170

170:                                              ; preds = %168, %157
  br i1 %158, label %171, label %175

171:                                              ; preds = %170
  %172 = icmp eq i32 %12, 0
  br i1 %172, label %187, label %173

173:                                              ; preds = %171
  %174 = tail call i32 @llvm.umax.i32(i32 %55, i32 1) #14
  br label %178

175:                                              ; preds = %170
  %176 = load ptr, ptr %63, align 4
  %177 = tail call zeroext i1 @dma_release_from_contiguous(ptr noundef %0, ptr noundef %176, i32 noundef %55) #14
  br label %187

178:                                              ; preds = %184, %173
  %179 = phi i32 [ %185, %184 ], [ 0, %173 ]
  %180 = getelementptr ptr, ptr %63, i32 %179
  %181 = load ptr, ptr %180, align 4
  %182 = icmp eq ptr %181, null
  br i1 %182, label %184, label %183

183:                                              ; preds = %178
  tail call void @__free_pages(ptr noundef nonnull %181, i32 noundef 0) #14
  br label %184

184:                                              ; preds = %183, %178
  %185 = add nuw nsw i32 %179, 1
  %186 = icmp eq i32 %185, %174
  br i1 %186, label %187, label %178

187:                                              ; preds = %184, %175, %171
  tail call void @kvfree(ptr noundef nonnull %63) #14
  br label %188

188:                                              ; preds = %187, %164, %161, %156, %62, %51
  %189 = phi ptr [ %52, %51 ], [ null, %187 ], [ %63, %161 ], [ %166, %164 ], [ null, %156 ], [ null, %62 ]
  ret ptr %189
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @__iommu_create_mapping(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, i32 noundef %2, i32 noundef %3) unnamed_addr #0 {
  %5 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 24
  %6 = load ptr, ptr %5, align 8
  %7 = add i32 %2, 4095
  %8 = lshr i32 %7, 12
  %9 = tail call fastcc i32 @__alloc_iova(ptr noundef %6, i32 noundef %2)
  %10 = icmp eq i32 %9, -1
  br i1 %10, label %89, label %11

11:                                               ; preds = %4
  %12 = lshr i32 %3, 4
  %13 = and i32 %12, 32
  %14 = or i32 %13, 3
  %15 = add nsw i32 %8, -1
  br label %16

16:                                               ; preds = %45, %11
  %17 = phi i32 [ %52, %45 ], [ %9, %11 ]
  %18 = phi i32 [ %46, %45 ], [ 0, %11 ]
  %19 = icmp ult i32 %18, %8
  br i1 %19, label %20, label %89

20:                                               ; preds = %16
  %21 = getelementptr ptr, ptr %1, i32 %18
  %22 = load ptr, ptr %21, align 4
  %23 = load ptr, ptr @mem_map, align 4
  %24 = ptrtoint ptr %22 to i32
  %25 = ptrtoint ptr %23 to i32
  %26 = sub i32 %24, %25
  %27 = ashr exact i32 %26, 5
  %28 = load i32, ptr @__pv_phys_pfn_offset, align 4
  %29 = add i32 %27, %28
  %30 = shl i32 %29, 12
  br label %31

31:                                               ; preds = %35, %20
  %32 = phi i32 [ %29, %20 ], [ %37, %35 ]
  %33 = phi i32 [ %18, %20 ], [ %36, %35 ]
  %34 = icmp eq i32 %33, %15
  br i1 %34, label %45, label %35

35:                                               ; preds = %31
  %36 = add nuw nsw i32 %33, 1
  %37 = add i32 %32, 1
  %38 = getelementptr ptr, ptr %1, i32 %36
  %39 = load ptr, ptr %38, align 4
  %40 = ptrtoint ptr %39 to i32
  %41 = sub i32 %40, %25
  %42 = ashr exact i32 %41, 5
  %43 = add i32 %42, %28
  %44 = icmp eq i32 %43, %37
  br i1 %44, label %31, label %45

45:                                               ; preds = %35, %31
  %46 = phi i32 [ %36, %35 ], [ %8, %31 ]
  %47 = sub i32 %46, %18
  %48 = shl i32 %47, 12
  %49 = load ptr, ptr %6, align 4
  %50 = tail call i32 @iommu_map(ptr noundef %49, i32 noundef %17, i32 noundef %30, i32 noundef %48, i32 noundef %14) #14
  %51 = icmp slt i32 %50, 0
  %52 = add i32 %48, %17
  br i1 %51, label %53, label %16

53:                                               ; preds = %45
  %54 = load ptr, ptr %6, align 4
  %55 = sub i32 %17, %9
  %56 = tail call i32 @iommu_unmap(ptr noundef %54, i32 noundef %9, i32 noundef %55) #14
  %57 = getelementptr inbounds %struct.dma_iommu_mapping, ptr %6, i32 0, i32 5
  %58 = load i32, ptr %57, align 4
  %59 = shl i32 %58, 12
  %60 = icmp eq i32 %2, 0
  br i1 %60, label %89, label %61

61:                                               ; preds = %53
  %62 = getelementptr inbounds %struct.dma_iommu_mapping, ptr %6, i32 0, i32 6
  %63 = load i32, ptr %62, align 4
  %64 = sub i32 %9, %63
  %65 = udiv i32 %64, %59
  %66 = icmp ult i32 %9, %63
  br i1 %66, label %71, label %67, !prof !14

67:                                               ; preds = %61
  %68 = getelementptr inbounds %struct.dma_iommu_mapping, ptr %6, i32 0, i32 3
  %69 = load i32, ptr %68, align 4
  %70 = icmp ugt i32 %65, %69
  br i1 %70, label %71, label %72, !prof !14

71:                                               ; preds = %67, %61
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22arch/arm/mm/dma-mapping.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1174, 0\0A.popsection", ""() #14, !srcloc !28
  unreachable

72:                                               ; preds = %67
  %73 = mul i32 %65, %59
  %74 = add i32 %73, %63
  %75 = add i32 %9, %2
  %76 = add i32 %74, %59
  %77 = icmp ugt i32 %75, %76
  br i1 %77, label %78, label %79

78:                                               ; preds = %72
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22arch/arm/mm/dma-mapping.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1187, 0\0A.popsection", ""() #14, !srcloc !29
  unreachable

79:                                               ; preds = %72
  %80 = sub i32 %9, %74
  %81 = lshr i32 %80, 12
  %82 = lshr i32 %2, 12
  %83 = getelementptr inbounds %struct.dma_iommu_mapping, ptr %6, i32 0, i32 7
  %84 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %83) #14
  %85 = getelementptr inbounds %struct.dma_iommu_mapping, ptr %6, i32 0, i32 1
  %86 = load ptr, ptr %85, align 4
  %87 = getelementptr ptr, ptr %86, i32 %65
  %88 = load ptr, ptr %87, align 4
  tail call void @__bitmap_clear(ptr noundef %88, i32 noundef %81, i32 noundef %82) #14
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %83, i32 noundef %84) #14
  br label %89

89:                                               ; preds = %79, %53, %16, %4
  %90 = phi i32 [ -1, %4 ], [ -1, %53 ], [ -1, %79 ], [ %9, %16 ]
  ret i32 %90
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dma_common_pages_remap(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @__iommu_remove_mapping(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2) unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 24
  %5 = load ptr, ptr %4, align 8
  %6 = and i32 %1, 4095
  %7 = add i32 %2, 4095
  %8 = add i32 %7, %6
  %9 = and i32 %8, -4096
  %10 = and i32 %1, -4096
  %11 = load ptr, ptr %5, align 4
  %12 = tail call i32 @iommu_unmap(ptr noundef %11, i32 noundef %10, i32 noundef %9) #14
  %13 = getelementptr inbounds %struct.dma_iommu_mapping, ptr %5, i32 0, i32 5
  %14 = load i32, ptr %13, align 4
  %15 = shl i32 %14, 12
  %16 = icmp eq i32 %9, 0
  br i1 %16, label %45, label %17

17:                                               ; preds = %3
  %18 = getelementptr inbounds %struct.dma_iommu_mapping, ptr %5, i32 0, i32 6
  %19 = load i32, ptr %18, align 4
  %20 = sub i32 %10, %19
  %21 = udiv i32 %20, %15
  %22 = icmp ult i32 %10, %19
  br i1 %22, label %27, label %23, !prof !14

23:                                               ; preds = %17
  %24 = getelementptr inbounds %struct.dma_iommu_mapping, ptr %5, i32 0, i32 3
  %25 = load i32, ptr %24, align 4
  %26 = icmp ugt i32 %21, %25
  br i1 %26, label %27, label %28, !prof !14

27:                                               ; preds = %23, %17
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22arch/arm/mm/dma-mapping.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1174, 0\0A.popsection", ""() #14, !srcloc !28
  unreachable

28:                                               ; preds = %23
  %29 = mul i32 %21, %15
  %30 = add i32 %29, %19
  %31 = add i32 %9, %10
  %32 = add i32 %30, %15
  %33 = icmp ugt i32 %31, %32
  br i1 %33, label %34, label %35

34:                                               ; preds = %28
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22arch/arm/mm/dma-mapping.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1187, 0\0A.popsection", ""() #14, !srcloc !29
  unreachable

35:                                               ; preds = %28
  %36 = sub i32 %10, %30
  %37 = lshr i32 %36, 12
  %38 = lshr i32 %8, 12
  %39 = getelementptr inbounds %struct.dma_iommu_mapping, ptr %5, i32 0, i32 7
  %40 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %39) #14
  %41 = getelementptr inbounds %struct.dma_iommu_mapping, ptr %5, i32 0, i32 1
  %42 = load ptr, ptr %41, align 4
  %43 = getelementptr ptr, ptr %42, i32 %21
  %44 = load ptr, ptr %43, align 4
  tail call void @__bitmap_clear(ptr noundef %44, i32 noundef %37, i32 noundef %38) #14
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %39, i32 noundef %40) #14
  br label %45

45:                                               ; preds = %35, %3
  ret void
}

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @vzalloc(i32 noundef) local_unnamed_addr #12

; Function Attrs: null_pointer_is_valid
declare dso_local void @kvfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @__alloc_iova(ptr noundef %0, i32 noundef %1) unnamed_addr #13 {
  %3 = add i32 %1, -1
  %4 = icmp ult i32 %3, 4096
  %5 = lshr i32 %3, 12
  %6 = tail call i32 @llvm.ctlz.i32(i32 %5, i1 false) #14, !range !26
  %7 = sub nuw nsw i32 32, %6
  %8 = getelementptr inbounds %struct.dma_iommu_mapping, ptr %0, i32 0, i32 5
  %9 = load i32, ptr %8, align 4
  %10 = call i32 @llvm.umin.i32(i32 %7, i32 8)
  %11 = add i32 %1, 4095
  %12 = lshr i32 %11, 12
  %13 = shl nsw i32 -1, %10
  %14 = xor i32 %13, -1
  %15 = select i1 %4, i32 0, i32 %14
  %16 = getelementptr inbounds %struct.dma_iommu_mapping, ptr %0, i32 0, i32 7
  %17 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %16) #14
  %18 = getelementptr inbounds %struct.dma_iommu_mapping, ptr %0, i32 0, i32 2
  %19 = load i32, ptr %18, align 4
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %41, label %21

21:                                               ; preds = %2
  %22 = getelementptr inbounds %struct.dma_iommu_mapping, ptr %0, i32 0, i32 1
  %23 = load i32, ptr %8, align 4
  br label %24

24:                                               ; preds = %37, %21
  %25 = phi i32 [ %23, %21 ], [ %31, %37 ]
  %26 = phi i32 [ 0, %21 ], [ %38, %37 ]
  %27 = load ptr, ptr %22, align 4
  %28 = getelementptr ptr, ptr %27, i32 %26
  %29 = load ptr, ptr %28, align 4
  %30 = tail call i32 @bitmap_find_next_zero_area_off(ptr noundef %29, i32 noundef %25, i32 noundef 0, i32 noundef %12, i32 noundef %15, i32 noundef 0) #14
  %31 = load i32, ptr %8, align 4
  %32 = icmp ugt i32 %30, %31
  br i1 %32, label %37, label %33

33:                                               ; preds = %24
  %34 = load ptr, ptr %22, align 4
  %35 = getelementptr ptr, ptr %34, i32 %26
  %36 = load ptr, ptr %35, align 4
  tail call void @__bitmap_set(ptr noundef %36, i32 noundef %30, i32 noundef %12) #14
  br label %41

37:                                               ; preds = %24
  %38 = add nuw i32 %26, 1
  %39 = load i32, ptr %18, align 4
  %40 = icmp ult i32 %38, %39
  br i1 %40, label %24, label %41

41:                                               ; preds = %37, %33, %2
  %42 = phi i32 [ %26, %33 ], [ 0, %2 ], [ %38, %37 ]
  %43 = phi i32 [ %30, %33 ], [ 0, %2 ], [ %30, %37 ]
  %44 = load i32, ptr %18, align 4
  %45 = icmp eq i32 %42, %44
  br i1 %45, label %46, label %75

46:                                               ; preds = %41
  %47 = getelementptr inbounds %struct.dma_iommu_mapping, ptr %0, i32 0, i32 3
  %48 = load i32, ptr %47, align 4
  %49 = icmp ult i32 %42, %48
  br i1 %49, label %50, label %61

50:                                               ; preds = %46
  %51 = getelementptr inbounds %struct.dma_iommu_mapping, ptr %0, i32 0, i32 4
  %52 = load i32, ptr %51, align 4
  %53 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %52, i32 noundef 2848) #18
  %54 = getelementptr inbounds %struct.dma_iommu_mapping, ptr %0, i32 0, i32 1
  %55 = load ptr, ptr %54, align 4
  %56 = getelementptr ptr, ptr %55, i32 %42
  store ptr %53, ptr %56, align 4
  %57 = load ptr, ptr %54, align 4
  %58 = getelementptr ptr, ptr %57, i32 %42
  %59 = load ptr, ptr %58, align 4
  %60 = icmp eq ptr %59, null
  br i1 %60, label %61, label %62

61:                                               ; preds = %50, %46
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %16, i32 noundef %17) #14
  br label %83

62:                                               ; preds = %50
  %63 = load i32, ptr %18, align 4
  %64 = add i32 %63, 1
  store i32 %64, ptr %18, align 4
  %65 = load ptr, ptr %58, align 4
  %66 = load i32, ptr %8, align 4
  %67 = tail call i32 @bitmap_find_next_zero_area_off(ptr noundef %65, i32 noundef %66, i32 noundef 0, i32 noundef %12, i32 noundef %15, i32 noundef 0) #14
  %68 = load i32, ptr %8, align 4
  %69 = icmp ugt i32 %67, %68
  br i1 %69, label %70, label %71

70:                                               ; preds = %62
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %16, i32 noundef %17) #14
  br label %83

71:                                               ; preds = %62
  %72 = load ptr, ptr %54, align 4
  %73 = getelementptr ptr, ptr %72, i32 %42
  %74 = load ptr, ptr %73, align 4
  tail call void @__bitmap_set(ptr noundef %74, i32 noundef %67, i32 noundef %12) #14
  br label %75

75:                                               ; preds = %71, %41
  %76 = phi i32 [ %43, %41 ], [ %67, %71 ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %16, i32 noundef %17) #14
  %77 = getelementptr inbounds %struct.dma_iommu_mapping, ptr %0, i32 0, i32 6
  %78 = load i32, ptr %77, align 4
  %79 = mul i32 %42, %9
  %80 = add i32 %76, %79
  %81 = shl i32 %80, 12
  %82 = add i32 %81, %78
  br label %83

83:                                               ; preds = %75, %70, %61
  %84 = phi i32 [ -1, %61 ], [ -1, %70 ], [ %82, %75 ]
  ret i32 %84
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iommu_map(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iommu_unmap(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bitmap_find_next_zero_area_off(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__bitmap_set(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__bitmap_clear(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @__arm_iommu_free_attrs(ptr noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5) unnamed_addr #0 {
  %7 = add i32 %1, 4095
  %8 = and i32 %7, -4096
  %9 = icmp eq i32 %5, 1
  br i1 %9, label %14, label %10

10:                                               ; preds = %6
  %11 = load ptr, ptr @atomic_pool, align 4
  %12 = ptrtoint ptr %2 to i32
  %13 = tail call zeroext i1 @gen_pool_has_addr(ptr noundef %11, i32 noundef %12, i32 noundef %8) #14
  br i1 %13, label %27, label %32

14:                                               ; preds = %6
  tail call fastcc void @__iommu_remove_mapping(ptr noundef %0, i32 noundef %3, i32 noundef %8) #14
  %15 = load ptr, ptr @mem_map, align 4
  %16 = ptrtoint ptr %2 to i32
  %17 = add i32 %16, 1073741824
  %18 = lshr i32 %17, 12
  %19 = getelementptr %struct.page, ptr %15, i32 %18
  %20 = lshr i32 %7, 12
  %21 = getelementptr %struct.page, ptr %19, i32 %20
  %22 = icmp ugt ptr %21, %19
  br i1 %22, label %23, label %77

23:                                               ; preds = %23, %14
  %24 = phi ptr [ %25, %23 ], [ %19, %14 ]
  tail call void @__free_pages(ptr noundef %24, i32 noundef 0) #14
  %25 = getelementptr %struct.page, ptr %24, i32 1
  %26 = icmp ult ptr %25, %21
  br i1 %26, label %23, label %77

27:                                               ; preds = %10
  tail call fastcc void @__iommu_remove_mapping(ptr noundef %0, i32 noundef %3, i32 noundef %8) #14
  %28 = load ptr, ptr @atomic_pool, align 4
  %29 = tail call zeroext i1 @gen_pool_has_addr(ptr noundef %28, i32 noundef %12, i32 noundef %8) #14
  br i1 %29, label %30, label %77

30:                                               ; preds = %27
  %31 = load ptr, ptr @atomic_pool, align 4
  tail call void @gen_pool_free_owner(ptr noundef %31, i32 noundef %12, i32 noundef %8, ptr noundef null) #14
  br label %77

32:                                               ; preds = %10
  %33 = load ptr, ptr @atomic_pool, align 4
  %34 = tail call zeroext i1 @gen_pool_has_addr(ptr noundef %33, i32 noundef %12, i32 noundef 4096) #14
  br i1 %34, label %35, label %43

35:                                               ; preds = %32
  %36 = load ptr, ptr @atomic_pool, align 4
  %37 = tail call i32 @gen_pool_virt_to_phys(ptr noundef %36, i32 noundef %12) #14
  %38 = load ptr, ptr @mem_map, align 4
  %39 = lshr i32 %37, 12
  %40 = load i32, ptr @__pv_phys_pfn_offset, align 4
  %41 = sub i32 %39, %40
  %42 = getelementptr %struct.page, ptr %38, i32 %41
  br label %48

43:                                               ; preds = %32
  %44 = and i32 %4, 16
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %46, label %48

46:                                               ; preds = %43
  %47 = tail call ptr @dma_common_find_pages(ptr noundef %2) #14
  br label %48

48:                                               ; preds = %46, %43, %35
  %49 = phi ptr [ %42, %35 ], [ %47, %46 ], [ %2, %43 ]
  %50 = icmp eq ptr %49, null
  br i1 %50, label %51, label %52

51:                                               ; preds = %48
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 1538, i32 noundef 9, ptr noundef nonnull @.str.6, ptr noundef %2) #14
  br label %77

52:                                               ; preds = %48
  %53 = and i32 %4, 16
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %55, label %56

55:                                               ; preds = %52
  tail call void @dma_common_free_remap(ptr noundef %2, i32 noundef %8) #14
  br label %56

56:                                               ; preds = %55, %52
  tail call fastcc void @__iommu_remove_mapping(ptr noundef %0, i32 noundef %3, i32 noundef %8)
  %57 = lshr i32 %7, 12
  %58 = and i32 %4, 64
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %60, label %64

60:                                               ; preds = %56
  %61 = icmp eq i32 %8, 0
  br i1 %61, label %76, label %62

62:                                               ; preds = %60
  %63 = tail call i32 @llvm.umax.i32(i32 %57, i32 1) #14
  br label %67

64:                                               ; preds = %56
  %65 = load ptr, ptr %49, align 4
  %66 = tail call zeroext i1 @dma_release_from_contiguous(ptr noundef %0, ptr noundef %65, i32 noundef %57) #14
  br label %76

67:                                               ; preds = %73, %62
  %68 = phi i32 [ %74, %73 ], [ 0, %62 ]
  %69 = getelementptr ptr, ptr %49, i32 %68
  %70 = load ptr, ptr %69, align 4
  %71 = icmp eq ptr %70, null
  br i1 %71, label %73, label %72

72:                                               ; preds = %67
  tail call void @__free_pages(ptr noundef nonnull %70, i32 noundef 0) #14
  br label %73

73:                                               ; preds = %72, %67
  %74 = add nuw nsw i32 %68, 1
  %75 = icmp eq i32 %74, %63
  br i1 %75, label %76, label %67

76:                                               ; preds = %73, %64, %60
  tail call void @kvfree(ptr noundef nonnull %49) #14
  br label %77

77:                                               ; preds = %76, %51, %30, %27, %23, %14
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dma_common_find_pages(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @__arm_iommu_mmap_attrs(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) unnamed_addr #0 {
  %5 = load ptr, ptr @atomic_pool, align 4
  %6 = ptrtoint ptr %1 to i32
  %7 = tail call zeroext i1 @gen_pool_has_addr(ptr noundef %5, i32 noundef %6, i32 noundef 4096) #14
  br i1 %7, label %8, label %16

8:                                                ; preds = %4
  %9 = load ptr, ptr @atomic_pool, align 4
  %10 = tail call i32 @gen_pool_virt_to_phys(ptr noundef %9, i32 noundef %6) #14
  %11 = load ptr, ptr @mem_map, align 4
  %12 = lshr i32 %10, 12
  %13 = load i32, ptr @__pv_phys_pfn_offset, align 4
  %14 = sub i32 %12, %13
  %15 = getelementptr %struct.page, ptr %11, i32 %14
  br label %21

16:                                               ; preds = %4
  %17 = and i32 %3, 16
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %16
  %20 = tail call ptr @dma_common_find_pages(ptr noundef %1) #14
  br label %21

21:                                               ; preds = %19, %16, %8
  %22 = phi ptr [ %15, %8 ], [ %20, %19 ], [ %1, %16 ]
  %23 = add i32 %2, 4095
  %24 = lshr i32 %23, 12
  %25 = icmp eq ptr %22, null
  br i1 %25, label %35, label %26

26:                                               ; preds = %21
  %27 = getelementptr inbounds %struct.vm_area_struct, ptr %0, i32 0, i32 13
  %28 = load i32, ptr %27, align 4
  %29 = icmp ult i32 %28, %24
  br i1 %29, label %30, label %35

30:                                               ; preds = %26
  %31 = tail call i32 @vm_map_pages(ptr noundef %0, ptr noundef nonnull %22, i32 noundef %24) #14
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %35, label %33

33:                                               ; preds = %30
  %34 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, i32 noundef %31) #15
  br label %35

35:                                               ; preds = %33, %30, %26, %21
  %36 = phi i32 [ -6, %21 ], [ -6, %26 ], [ %31, %33 ], [ 0, %30 ]
  ret i32 %36
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vm_map_pages(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sg_alloc_table_from_pages_segment(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @arm_coherent_iommu_map_page(ptr nocapture noundef readonly %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5) #0 {
  %7 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 24
  %8 = load ptr, ptr %7, align 8
  %9 = add i32 %2, 4095
  %10 = add i32 %9, %3
  %11 = and i32 %10, -4096
  %12 = tail call fastcc i32 @__alloc_iova(ptr noundef %8, i32 noundef %11)
  %13 = icmp eq i32 %12, -1
  br i1 %13, label %71, label %14

14:                                               ; preds = %6
  %15 = lshr i32 %5, 4
  %16 = and i32 %15, 32
  switch i32 %4, label %23 [
    i32 0, label %17
    i32 1, label %19
    i32 2, label %21
  ]

17:                                               ; preds = %14
  %18 = or i32 %16, 3
  br label %23

19:                                               ; preds = %14
  %20 = or i32 %16, 1
  br label %23

21:                                               ; preds = %14
  %22 = or i32 %16, 2
  br label %23

23:                                               ; preds = %21, %19, %17, %14
  %24 = phi i32 [ %22, %21 ], [ %20, %19 ], [ %18, %17 ], [ %16, %14 ]
  %25 = load ptr, ptr %8, align 4
  %26 = load ptr, ptr @mem_map, align 4
  %27 = ptrtoint ptr %1 to i32
  %28 = ptrtoint ptr %26 to i32
  %29 = sub i32 %27, %28
  %30 = lshr exact i32 %29, 5
  %31 = load i32, ptr @__pv_phys_pfn_offset, align 4
  %32 = add i32 %30, %31
  %33 = shl i32 %32, 12
  %34 = tail call i32 @iommu_map(ptr noundef %25, i32 noundef %12, i32 noundef %33, i32 noundef %11, i32 noundef %24) #14
  %35 = icmp slt i32 %34, 0
  br i1 %35, label %38, label %36

36:                                               ; preds = %23
  %37 = add i32 %12, %2
  br label %71

38:                                               ; preds = %23
  %39 = getelementptr inbounds %struct.dma_iommu_mapping, ptr %8, i32 0, i32 5
  %40 = load i32, ptr %39, align 4
  %41 = shl i32 %40, 12
  %42 = icmp eq i32 %11, 0
  br i1 %42, label %71, label %43

43:                                               ; preds = %38
  %44 = getelementptr inbounds %struct.dma_iommu_mapping, ptr %8, i32 0, i32 6
  %45 = load i32, ptr %44, align 4
  %46 = sub i32 %12, %45
  %47 = udiv i32 %46, %41
  %48 = icmp ult i32 %12, %45
  br i1 %48, label %53, label %49, !prof !14

49:                                               ; preds = %43
  %50 = getelementptr inbounds %struct.dma_iommu_mapping, ptr %8, i32 0, i32 3
  %51 = load i32, ptr %50, align 4
  %52 = icmp ugt i32 %47, %51
  br i1 %52, label %53, label %54, !prof !14

53:                                               ; preds = %49, %43
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22arch/arm/mm/dma-mapping.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1174, 0\0A.popsection", ""() #14, !srcloc !28
  unreachable

54:                                               ; preds = %49
  %55 = mul i32 %47, %41
  %56 = add i32 %55, %45
  %57 = add i32 %12, %11
  %58 = add i32 %56, %41
  %59 = icmp ugt i32 %57, %58
  br i1 %59, label %60, label %61

60:                                               ; preds = %54
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22arch/arm/mm/dma-mapping.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1187, 0\0A.popsection", ""() #14, !srcloc !29
  unreachable

61:                                               ; preds = %54
  %62 = sub i32 %12, %56
  %63 = lshr i32 %62, 12
  %64 = lshr i32 %10, 12
  %65 = getelementptr inbounds %struct.dma_iommu_mapping, ptr %8, i32 0, i32 7
  %66 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %65) #14
  %67 = getelementptr inbounds %struct.dma_iommu_mapping, ptr %8, i32 0, i32 1
  %68 = load ptr, ptr %67, align 4
  %69 = getelementptr ptr, ptr %68, i32 %47
  %70 = load ptr, ptr %69, align 4
  tail call void @__bitmap_clear(ptr noundef %70, i32 noundef %63, i32 noundef %64) #14
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %65, i32 noundef %66) #14
  br label %71

71:                                               ; preds = %61, %38, %36, %6
  %72 = phi i32 [ %37, %36 ], [ -1, %6 ], [ -1, %38 ], [ -1, %61 ]
  ret i32 %72
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iommu_iova_to_phys(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @__iommu_map_sg(ptr nocapture noundef readonly %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i1 noundef zeroext %5) unnamed_addr #0 {
  %7 = getelementptr inbounds %struct.scatterlist, ptr %1, i32 0, i32 1
  %8 = load i32, ptr %7, align 4
  %9 = getelementptr inbounds %struct.scatterlist, ptr %1, i32 0, i32 2
  %10 = load i32, ptr %9, align 4
  %11 = add i32 %10, %8
  %12 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 20
  %13 = load ptr, ptr %12, align 4
  %14 = icmp eq ptr %13, null
  br i1 %14, label %18, label %15

15:                                               ; preds = %6
  %16 = load i32, ptr %13, align 4
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %15, %6
  br label %19

19:                                               ; preds = %18, %15
  %20 = phi i32 [ 65536, %18 ], [ %16, %15 ]
  %21 = icmp sgt i32 %2, 1
  br i1 %21, label %22, label %66

22:                                               ; preds = %58, %19
  %23 = phi i32 [ %59, %58 ], [ %11, %19 ]
  %24 = phi i32 [ %63, %58 ], [ %8, %19 ]
  %25 = phi i32 [ %62, %58 ], [ 0, %19 ]
  %26 = phi i32 [ %64, %58 ], [ 1, %19 ]
  %27 = phi ptr [ %61, %58 ], [ %1, %19 ]
  %28 = phi ptr [ %60, %58 ], [ %1, %19 ]
  %29 = phi ptr [ %30, %58 ], [ %1, %19 ]
  %30 = tail call ptr @sg_next(ptr noundef %29) #14
  %31 = getelementptr inbounds %struct.scatterlist, ptr %30, i32 0, i32 4
  store i32 0, ptr %31, align 4
  %32 = getelementptr inbounds %struct.scatterlist, ptr %30, i32 0, i32 1
  %33 = load i32, ptr %32, align 4
  %34 = icmp eq i32 %33, 0
  %35 = and i32 %23, 4095
  %36 = icmp eq i32 %35, 0
  %37 = select i1 %34, i1 %36, i1 false
  br i1 %37, label %38, label %43

38:                                               ; preds = %22
  %39 = getelementptr inbounds %struct.scatterlist, ptr %30, i32 0, i32 2
  %40 = load i32, ptr %39, align 4
  %41 = add i32 %40, %23
  %42 = icmp ugt i32 %41, %20
  br i1 %42, label %43, label %58

43:                                               ; preds = %38, %22
  %44 = getelementptr inbounds %struct.scatterlist, ptr %28, i32 0, i32 3
  %45 = tail call fastcc i32 @__map_sg_chunk(ptr noundef %0, ptr noundef %27, i32 noundef %23, ptr noundef %44, i32 noundef %3, i32 noundef %4, i1 noundef zeroext %5)
  %46 = icmp slt i32 %45, 0
  br i1 %46, label %81, label %47

47:                                               ; preds = %43
  %48 = load i32, ptr %44, align 4
  %49 = add i32 %48, %24
  store i32 %49, ptr %44, align 4
  %50 = sub i32 %23, %24
  %51 = getelementptr inbounds %struct.scatterlist, ptr %28, i32 0, i32 4
  store i32 %50, ptr %51, align 4
  %52 = load i32, ptr %32, align 4
  %53 = tail call ptr @sg_next(ptr noundef %28) #14
  %54 = add i32 %25, 1
  %55 = getelementptr inbounds %struct.scatterlist, ptr %30, i32 0, i32 2
  %56 = load i32, ptr %55, align 4
  %57 = add i32 %56, %52
  br label %58

58:                                               ; preds = %47, %38
  %59 = phi i32 [ %57, %47 ], [ %41, %38 ]
  %60 = phi ptr [ %53, %47 ], [ %28, %38 ]
  %61 = phi ptr [ %30, %47 ], [ %27, %38 ]
  %62 = phi i32 [ %54, %47 ], [ %25, %38 ]
  %63 = phi i32 [ %52, %47 ], [ %24, %38 ]
  %64 = add nuw nsw i32 %26, 1
  %65 = icmp eq i32 %64, %2
  br i1 %65, label %66, label %22

66:                                               ; preds = %58, %19
  %67 = phi ptr [ %1, %19 ], [ %60, %58 ]
  %68 = phi ptr [ %1, %19 ], [ %61, %58 ]
  %69 = phi i32 [ 0, %19 ], [ %62, %58 ]
  %70 = phi i32 [ %8, %19 ], [ %63, %58 ]
  %71 = phi i32 [ %11, %19 ], [ %59, %58 ]
  %72 = getelementptr inbounds %struct.scatterlist, ptr %67, i32 0, i32 3
  %73 = tail call fastcc i32 @__map_sg_chunk(ptr noundef %0, ptr noundef %68, i32 noundef %71, ptr noundef %72, i32 noundef %3, i32 noundef %4, i1 noundef zeroext %5)
  %74 = icmp slt i32 %73, 0
  br i1 %74, label %81, label %75

75:                                               ; preds = %66
  %76 = load i32, ptr %72, align 4
  %77 = add i32 %76, %70
  store i32 %77, ptr %72, align 4
  %78 = sub i32 %71, %70
  %79 = getelementptr inbounds %struct.scatterlist, ptr %67, i32 0, i32 4
  store i32 %78, ptr %79, align 4
  %80 = add i32 %69, 1
  br label %98

81:                                               ; preds = %66, %43
  %82 = phi i32 [ %69, %66 ], [ %25, %43 ]
  %83 = phi i32 [ %73, %66 ], [ %45, %43 ]
  %84 = icmp sgt i32 %82, 0
  br i1 %84, label %85, label %95

85:                                               ; preds = %85, %81
  %86 = phi i32 [ %92, %85 ], [ 0, %81 ]
  %87 = phi ptr [ %93, %85 ], [ %1, %81 ]
  %88 = getelementptr inbounds %struct.scatterlist, ptr %87, i32 0, i32 3
  %89 = load i32, ptr %88, align 4
  %90 = getelementptr inbounds %struct.scatterlist, ptr %87, i32 0, i32 4
  %91 = load i32, ptr %90, align 4
  tail call fastcc void @__iommu_remove_mapping(ptr noundef %0, i32 noundef %89, i32 noundef %91)
  %92 = add nuw nsw i32 %86, 1
  %93 = tail call ptr @sg_next(ptr noundef %87) #14
  %94 = icmp eq i32 %92, %82
  br i1 %94, label %95, label %85

95:                                               ; preds = %85, %81
  %96 = icmp eq i32 %83, -12
  %97 = select i1 %96, i32 -12, i32 -22
  br label %98

98:                                               ; preds = %95, %75
  %99 = phi i32 [ %80, %75 ], [ %97, %95 ]
  ret i32 %99
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @__map_sg_chunk(ptr nocapture noundef readonly %0, ptr noundef %1, i32 noundef %2, ptr nocapture noundef writeonly %3, i32 noundef %4, i32 noundef %5, i1 noundef zeroext %6) unnamed_addr #0 {
  %8 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 24
  %9 = load ptr, ptr %8, align 8
  %10 = add i32 %2, 4095
  %11 = and i32 %10, -4096
  store i32 -1, ptr %3, align 4
  %12 = tail call fastcc i32 @__alloc_iova(ptr noundef %9, i32 noundef %11)
  %13 = icmp eq i32 %12, -1
  br i1 %13, label %118, label %14

14:                                               ; preds = %7
  %15 = lshr i32 %10, 12
  %16 = icmp ult i32 %10, 4096
  br i1 %16, label %82, label %17

17:                                               ; preds = %14
  %18 = and i32 %5, 32
  %19 = icmp ne i32 %18, 0
  %20 = or i1 %19, %6
  %21 = icmp eq i32 %4, 2
  %22 = lshr i32 %5, 4
  %23 = and i32 %22, 32
  %24 = or i32 %23, 1
  %25 = or i32 %23, 3
  %26 = or i32 %23, 2
  br label %27

27:                                               ; preds = %76, %17
  %28 = phi ptr [ %1, %17 ], [ %80, %76 ]
  %29 = phi i32 [ 0, %17 ], [ %78, %76 ]
  %30 = phi i32 [ %12, %17 ], [ %79, %76 ]
  %31 = load i32, ptr %28, align 4
  %32 = and i32 %31, -4
  %33 = load ptr, ptr @mem_map, align 4
  %34 = ptrtoint ptr %33 to i32
  %35 = sub i32 %32, %34
  %36 = lshr exact i32 %35, 5
  %37 = load i32, ptr @__pv_phys_pfn_offset, align 4
  %38 = add i32 %36, %37
  %39 = shl i32 %38, 12
  %40 = getelementptr inbounds %struct.scatterlist, ptr %28, i32 0, i32 1
  %41 = load i32, ptr %40, align 4
  %42 = getelementptr inbounds %struct.scatterlist, ptr %28, i32 0, i32 2
  %43 = load i32, ptr %42, align 4
  %44 = add i32 %41, 4095
  %45 = add i32 %44, %43
  %46 = and i32 %45, -4096
  br i1 %20, label %67, label %47

47:                                               ; preds = %27
  %48 = inttoptr i32 %32 to ptr
  %49 = load ptr, ptr getelementptr inbounds (%struct.cpu_cache_fns, ptr @cpu_cache, i32 0, i32 8), align 4
  tail call fastcc void @dma_cache_maint_page(ptr noundef %48, i32 noundef %41, i32 noundef %43, i32 noundef %4, ptr noundef %49) #14
  %50 = load ptr, ptr @mem_map, align 4
  %51 = ptrtoint ptr %50 to i32
  %52 = sub i32 %32, %51
  %53 = lshr exact i32 %52, 5
  %54 = load i32, ptr @__pv_phys_pfn_offset, align 4
  %55 = add i32 %53, %54
  %56 = shl i32 %55, 12
  %57 = add i32 %56, %41
  br i1 %21, label %58, label %61

58:                                               ; preds = %47
  %59 = load ptr, ptr @outer_cache, align 4
  %60 = icmp eq ptr %59, null
  br i1 %60, label %70, label %64

61:                                               ; preds = %47
  %62 = load ptr, ptr getelementptr inbounds (%struct.outer_cache_fns, ptr @outer_cache, i32 0, i32 1), align 4
  %63 = icmp eq ptr %62, null
  br i1 %63, label %67, label %64

64:                                               ; preds = %61, %58
  %65 = phi ptr [ %59, %58 ], [ %62, %61 ]
  %66 = add i32 %57, %43
  tail call void %65(i32 noundef %57, i32 noundef %66) #14
  br label %67

67:                                               ; preds = %64, %61, %27
  switch i32 %4, label %71 [
    i32 0, label %68
    i32 1, label %69
    i32 2, label %70
  ]

68:                                               ; preds = %67
  br label %71

69:                                               ; preds = %67
  br label %71

70:                                               ; preds = %67, %58
  br label %71

71:                                               ; preds = %70, %69, %68, %67
  %72 = phi i32 [ %26, %70 ], [ %24, %69 ], [ %25, %68 ], [ %23, %67 ]
  %73 = load ptr, ptr %9, align 4
  %74 = tail call i32 @iommu_map(ptr noundef %73, i32 noundef %30, i32 noundef %39, i32 noundef %46, i32 noundef %72) #14
  %75 = icmp slt i32 %74, 0
  br i1 %75, label %83, label %76

76:                                               ; preds = %71
  %77 = lshr i32 %45, 12
  %78 = add i32 %77, %29
  %79 = add i32 %46, %30
  %80 = tail call ptr @sg_next(ptr noundef %28) #14
  %81 = icmp ult i32 %78, %15
  br i1 %81, label %27, label %82

82:                                               ; preds = %76, %14
  store i32 %12, ptr %3, align 4
  br label %118

83:                                               ; preds = %71
  %84 = load ptr, ptr %9, align 4
  %85 = shl i32 %29, 12
  %86 = tail call i32 @iommu_unmap(ptr noundef %84, i32 noundef %12, i32 noundef %85) #14
  %87 = getelementptr inbounds %struct.dma_iommu_mapping, ptr %9, i32 0, i32 5
  %88 = load i32, ptr %87, align 4
  %89 = shl i32 %88, 12
  %90 = icmp eq i32 %11, 0
  br i1 %90, label %118, label %91

91:                                               ; preds = %83
  %92 = getelementptr inbounds %struct.dma_iommu_mapping, ptr %9, i32 0, i32 6
  %93 = load i32, ptr %92, align 4
  %94 = sub i32 %12, %93
  %95 = udiv i32 %94, %89
  %96 = icmp ult i32 %12, %93
  br i1 %96, label %101, label %97, !prof !14

97:                                               ; preds = %91
  %98 = getelementptr inbounds %struct.dma_iommu_mapping, ptr %9, i32 0, i32 3
  %99 = load i32, ptr %98, align 4
  %100 = icmp ugt i32 %95, %99
  br i1 %100, label %101, label %102, !prof !14

101:                                              ; preds = %97, %91
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22arch/arm/mm/dma-mapping.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1174, 0\0A.popsection", ""() #14, !srcloc !28
  unreachable

102:                                              ; preds = %97
  %103 = mul i32 %95, %89
  %104 = add i32 %103, %93
  %105 = add i32 %12, %11
  %106 = add i32 %104, %89
  %107 = icmp ugt i32 %105, %106
  br i1 %107, label %108, label %109

108:                                              ; preds = %102
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22arch/arm/mm/dma-mapping.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1187, 0\0A.popsection", ""() #14, !srcloc !29
  unreachable

109:                                              ; preds = %102
  %110 = sub i32 %12, %104
  %111 = lshr i32 %110, 12
  %112 = getelementptr inbounds %struct.dma_iommu_mapping, ptr %9, i32 0, i32 7
  %113 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %112) #14
  %114 = getelementptr inbounds %struct.dma_iommu_mapping, ptr %9, i32 0, i32 1
  %115 = load ptr, ptr %114, align 4
  %116 = getelementptr ptr, ptr %115, i32 %95
  %117 = load ptr, ptr %116, align 4
  tail call void @__bitmap_clear(ptr noundef %117, i32 noundef %111, i32 noundef %15) #14
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %112, i32 noundef %113) #14
  br label %118

118:                                              ; preds = %109, %83, %82, %7
  %119 = phi i32 [ 0, %82 ], [ -12, %7 ], [ %74, %83 ], [ %74, %109 ]
  ret i32 %119
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal ptr @arm_coherent_iommu_alloc_attrs(ptr nocapture noundef readonly %0, i32 noundef %1, ptr nocapture noundef writeonly %2, i32 noundef %3, i32 noundef %4) #0 {
  %6 = alloca ptr, align 4
  store i32 -1, ptr %2, align 4
  %7 = add i32 %1, 4095
  %8 = and i32 %7, -4096
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #14
  store ptr null, ptr %6, align 4, !annotation !10
  %9 = call fastcc ptr @__alloc_simple_buffer(i32 noundef %8, i32 noundef %3, ptr noundef nonnull %6) #14
  %10 = icmp eq ptr %9, null
  br i1 %10, label %20, label %11

11:                                               ; preds = %5
  %12 = call fastcc i32 @__iommu_create_mapping(ptr noundef %0, ptr noundef nonnull %6, i32 noundef %8, i32 noundef %4) #14
  store i32 %12, ptr %2, align 4
  %13 = icmp eq i32 %12, -1
  br i1 %13, label %14, label %20

14:                                               ; preds = %11
  %15 = load ptr, ptr @atomic_pool, align 4
  %16 = ptrtoint ptr %9 to i32
  %17 = tail call zeroext i1 @gen_pool_has_addr(ptr noundef %15, i32 noundef %16, i32 noundef %8) #14
  br i1 %17, label %18, label %20

18:                                               ; preds = %14
  %19 = load ptr, ptr @atomic_pool, align 4
  tail call void @gen_pool_free_owner(ptr noundef %19, i32 noundef %16, i32 noundef %8, ptr noundef null) #14
  br label %20

20:                                               ; preds = %18, %14, %11, %5
  %21 = phi ptr [ null, %5 ], [ %9, %11 ], [ null, %14 ], [ null, %18 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #14
  ret ptr %21
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @arm_coherent_iommu_free_attrs(ptr nocapture noundef readonly %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef %4) #0 {
  %6 = add i32 %1, 4095
  %7 = and i32 %6, -4096
  tail call fastcc void @__iommu_remove_mapping(ptr noundef %0, i32 noundef %3, i32 noundef %7) #14
  %8 = load ptr, ptr @mem_map, align 4
  %9 = ptrtoint ptr %2 to i32
  %10 = add i32 %9, 1073741824
  %11 = lshr i32 %10, 12
  %12 = getelementptr %struct.page, ptr %8, i32 %11
  %13 = lshr i32 %6, 12
  %14 = getelementptr %struct.page, ptr %12, i32 %13
  %15 = icmp ugt ptr %14, %12
  br i1 %15, label %16, label %20

16:                                               ; preds = %16, %5
  %17 = phi ptr [ %18, %16 ], [ %12, %5 ]
  tail call void @__free_pages(ptr noundef %17, i32 noundef 0) #14
  %18 = getelementptr %struct.page, ptr %17, i32 1
  %19 = icmp ult ptr %18, %14
  br i1 %19, label %16, label %20

20:                                               ; preds = %16, %5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @arm_coherent_iommu_mmap_attrs(ptr nocapture noundef readnone %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5) #0 {
  %7 = tail call fastcc i32 @__arm_iommu_mmap_attrs(ptr noundef %1, ptr noundef %2, i32 noundef %4, i32 noundef %5)
  ret i32 %7
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @arm_coherent_iommu_unmap_page(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) #0 {
  %6 = and i32 %1, -4096
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %49, label %8

8:                                                ; preds = %5
  %9 = and i32 %1, 4095
  %10 = add i32 %2, 4095
  %11 = add i32 %10, %9
  %12 = and i32 %11, -4096
  %13 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 24
  %14 = load ptr, ptr %13, align 8
  %15 = load ptr, ptr %14, align 4
  %16 = tail call i32 @iommu_unmap(ptr noundef %15, i32 noundef %6, i32 noundef %12) #14
  %17 = getelementptr inbounds %struct.dma_iommu_mapping, ptr %14, i32 0, i32 5
  %18 = load i32, ptr %17, align 4
  %19 = shl i32 %18, 12
  %20 = icmp eq i32 %12, 0
  br i1 %20, label %49, label %21

21:                                               ; preds = %8
  %22 = getelementptr inbounds %struct.dma_iommu_mapping, ptr %14, i32 0, i32 6
  %23 = load i32, ptr %22, align 4
  %24 = sub i32 %6, %23
  %25 = udiv i32 %24, %19
  %26 = icmp ult i32 %6, %23
  br i1 %26, label %31, label %27, !prof !14

27:                                               ; preds = %21
  %28 = getelementptr inbounds %struct.dma_iommu_mapping, ptr %14, i32 0, i32 3
  %29 = load i32, ptr %28, align 4
  %30 = icmp ugt i32 %25, %29
  br i1 %30, label %31, label %32, !prof !14

31:                                               ; preds = %27, %21
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22arch/arm/mm/dma-mapping.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1174, 0\0A.popsection", ""() #14, !srcloc !28
  unreachable

32:                                               ; preds = %27
  %33 = mul i32 %25, %19
  %34 = add i32 %33, %23
  %35 = add i32 %12, %6
  %36 = add i32 %34, %19
  %37 = icmp ugt i32 %35, %36
  br i1 %37, label %38, label %39

38:                                               ; preds = %32
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22arch/arm/mm/dma-mapping.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1187, 0\0A.popsection", ""() #14, !srcloc !29
  unreachable

39:                                               ; preds = %32
  %40 = sub i32 %6, %34
  %41 = lshr i32 %40, 12
  %42 = lshr i32 %11, 12
  %43 = getelementptr inbounds %struct.dma_iommu_mapping, ptr %14, i32 0, i32 7
  %44 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %43) #14
  %45 = getelementptr inbounds %struct.dma_iommu_mapping, ptr %14, i32 0, i32 1
  %46 = load ptr, ptr %45, align 4
  %47 = getelementptr ptr, ptr %46, i32 %25
  %48 = load ptr, ptr %47, align 4
  tail call void @__bitmap_clear(ptr noundef %48, i32 noundef %41, i32 noundef %42) #14
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %43, i32 noundef %44) #14
  br label %49

49:                                               ; preds = %39, %8, %5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @arm_coherent_iommu_map_sg(ptr nocapture noundef readonly %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) #0 {
  %6 = tail call fastcc i32 @__iommu_map_sg(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i1 noundef zeroext true)
  ret i32 %6
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @arm_coherent_iommu_unmap_sg(ptr nocapture noundef readonly %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) #0 {
  %6 = icmp sgt i32 %2, 0
  br i1 %6, label %7, label %20

7:                                                ; preds = %16, %5
  %8 = phi i32 [ %17, %16 ], [ 0, %5 ]
  %9 = phi ptr [ %18, %16 ], [ %1, %5 ]
  %10 = getelementptr inbounds %struct.scatterlist, ptr %9, i32 0, i32 4
  %11 = load i32, ptr %10, align 4
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %16, label %13

13:                                               ; preds = %7
  %14 = getelementptr inbounds %struct.scatterlist, ptr %9, i32 0, i32 3
  %15 = load i32, ptr %14, align 4
  tail call fastcc void @__iommu_remove_mapping(ptr noundef %0, i32 noundef %15, i32 noundef %11) #14
  br label %16

16:                                               ; preds = %13, %7
  %17 = add nuw nsw i32 %8, 1
  %18 = tail call ptr @sg_next(ptr noundef %9) #14
  %19 = icmp eq i32 %17, %2
  br i1 %19, label %20, label %7

20:                                               ; preds = %16, %5
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #10

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.umin.i64(i64, i64) #10

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #10

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nofree nosync nounwind null_pointer_is_valid readonly sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { cold mustprogress nofree norecurse nosync nounwind null_pointer_is_valid optsize sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #7 = { argmemonly nofree nounwind willreturn writeonly }
attributes #8 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #9 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #11 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #12 = { null_pointer_is_valid allocsize(0) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #13 = { inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #14 = { nounwind }
attributes #15 = { cold nounwind }
attributes #16 = { nounwind readnone }
attributes #17 = { nounwind allocsize(2) }
attributes #18 = { nounwind allocsize(0) }

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
!8 = !{!"branch_weights", i32 2000, i32 1}
!9 = !{i64 2152583434, i64 2152583926, i64 2152583471, i64 2152583527, i64 2152583561, i64 2152583585, i64 2152583626, i64 2152583647, i64 2152583675, i64 2152583709}
!10 = !{!"auto-init"}
!11 = !{i64 2148844169, i64 2148844192, i64 2148844224, i64 2148844256, i64 2148844294, i64 2148844324}
!12 = !{i64 2151325338, i64 2151325351}
!13 = !{i8 0, i8 2}
!14 = !{!"branch_weights", i32 1, i32 2000}
!15 = !{i64 2148205854}
!16 = !{i64 602788, i64 2148092759, i64 2148092785, i64 2148092832, i64 2148092854, i64 2148092882, i64 2148092902}
!17 = !{i64 2148107989, i64 2148108021, i64 2148108050, i64 2148108084, i64 2148108115, i64 2148108138}
!18 = !{i64 2149055301}
!19 = !{i64 2148105632, i64 2148105664, i64 2148105693, i64 2148105727, i64 2148105758, i64 2148105781}
!20 = !{i64 2152905421}
!21 = !{i64 2151807218}
!22 = !{i64 2151807425}
!23 = !{i64 2152908046}
!24 = distinct !{!24, !25}
!25 = !{!"llvm.loop.peeled.count", i32 1}
!26 = !{i32 0, i32 33}
!27 = !{i64 2148843383, i64 2148843406, i64 2148843438, i64 2148843470, i64 2148843508, i64 2148843538}
!28 = !{i64 2153148973, i64 2153149464, i64 2153149010, i64 2153149066, i64 2153149100, i64 2153149124, i64 2153149165, i64 2153149186, i64 2153149214, i64 2153149248}
!29 = !{i64 2153149911, i64 2153150402, i64 2153149948, i64 2153150004, i64 2153150038, i64 2153150062, i64 2153150103, i64 2153150124, i64 2153150152, i64 2153150186}
