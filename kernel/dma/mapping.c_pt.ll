; ModuleID = '/llk/IR/kernel/dma/mapping.c_pt.bc'
source_filename = "../kernel/dma/mapping.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_dmam_free_coherent:\09\09\09\09\09"
module asm "\09.asciz \09\22dmam_free_coherent\22\09\09\09\09\09"
module asm "__kstrtabns_dmam_free_coherent:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_dmam_alloc_attrs:\09\09\09\09\09"
module asm "\09.asciz \09\22dmam_alloc_attrs\22\09\09\09\09\09"
module asm "__kstrtabns_dmam_alloc_attrs:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_dma_map_page_attrs:\09\09\09\09\09"
module asm "\09.asciz \09\22dma_map_page_attrs\22\09\09\09\09\09"
module asm "__kstrtabns_dma_map_page_attrs:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_dma_unmap_page_attrs:\09\09\09\09\09"
module asm "\09.asciz \09\22dma_unmap_page_attrs\22\09\09\09\09\09"
module asm "__kstrtabns_dma_unmap_page_attrs:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_dma_map_sg_attrs:\09\09\09\09\09"
module asm "\09.asciz \09\22dma_map_sg_attrs\22\09\09\09\09\09"
module asm "__kstrtabns_dma_map_sg_attrs:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_dma_map_sgtable:\09\09\09\09\09"
module asm "\09.asciz \09\22dma_map_sgtable\22\09\09\09\09\09"
module asm "__kstrtabns_dma_map_sgtable:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_dma_unmap_sg_attrs:\09\09\09\09\09"
module asm "\09.asciz \09\22dma_unmap_sg_attrs\22\09\09\09\09\09"
module asm "__kstrtabns_dma_unmap_sg_attrs:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_dma_map_resource:\09\09\09\09\09"
module asm "\09.asciz \09\22dma_map_resource\22\09\09\09\09\09"
module asm "__kstrtabns_dma_map_resource:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_dma_unmap_resource:\09\09\09\09\09"
module asm "\09.asciz \09\22dma_unmap_resource\22\09\09\09\09\09"
module asm "__kstrtabns_dma_unmap_resource:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_dma_sync_single_for_cpu:\09\09\09\09\09"
module asm "\09.asciz \09\22dma_sync_single_for_cpu\22\09\09\09\09\09"
module asm "__kstrtabns_dma_sync_single_for_cpu:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_dma_sync_single_for_device:\09\09\09\09\09"
module asm "\09.asciz \09\22dma_sync_single_for_device\22\09\09\09\09\09"
module asm "__kstrtabns_dma_sync_single_for_device:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_dma_sync_sg_for_cpu:\09\09\09\09\09"
module asm "\09.asciz \09\22dma_sync_sg_for_cpu\22\09\09\09\09\09"
module asm "__kstrtabns_dma_sync_sg_for_cpu:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_dma_sync_sg_for_device:\09\09\09\09\09"
module asm "\09.asciz \09\22dma_sync_sg_for_device\22\09\09\09\09\09"
module asm "__kstrtabns_dma_sync_sg_for_device:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_dma_get_sgtable_attrs:\09\09\09\09\09"
module asm "\09.asciz \09\22dma_get_sgtable_attrs\22\09\09\09\09\09"
module asm "__kstrtabns_dma_get_sgtable_attrs:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_dma_can_mmap:\09\09\09\09\09"
module asm "\09.asciz \09\22dma_can_mmap\22\09\09\09\09\09"
module asm "__kstrtabns_dma_can_mmap:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_dma_mmap_attrs:\09\09\09\09\09"
module asm "\09.asciz \09\22dma_mmap_attrs\22\09\09\09\09\09"
module asm "__kstrtabns_dma_mmap_attrs:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_dma_get_required_mask:\09\09\09\09\09"
module asm "\09.asciz \09\22dma_get_required_mask\22\09\09\09\09\09"
module asm "__kstrtabns_dma_get_required_mask:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_dma_alloc_attrs:\09\09\09\09\09"
module asm "\09.asciz \09\22dma_alloc_attrs\22\09\09\09\09\09"
module asm "__kstrtabns_dma_alloc_attrs:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_dma_free_attrs:\09\09\09\09\09"
module asm "\09.asciz \09\22dma_free_attrs\22\09\09\09\09\09"
module asm "__kstrtabns_dma_free_attrs:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_dma_alloc_pages:\09\09\09\09\09"
module asm "\09.asciz \09\22dma_alloc_pages\22\09\09\09\09\09"
module asm "__kstrtabns_dma_alloc_pages:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_dma_free_pages:\09\09\09\09\09"
module asm "\09.asciz \09\22dma_free_pages\22\09\09\09\09\09"
module asm "__kstrtabns_dma_free_pages:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_dma_mmap_pages:\09\09\09\09\09"
module asm "\09.asciz \09\22dma_mmap_pages\22\09\09\09\09\09"
module asm "__kstrtabns_dma_mmap_pages:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_dma_alloc_noncontiguous:\09\09\09\09\09"
module asm "\09.asciz \09\22dma_alloc_noncontiguous\22\09\09\09\09\09"
module asm "__kstrtabns_dma_alloc_noncontiguous:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_dma_free_noncontiguous:\09\09\09\09\09"
module asm "\09.asciz \09\22dma_free_noncontiguous\22\09\09\09\09\09"
module asm "__kstrtabns_dma_free_noncontiguous:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_dma_vmap_noncontiguous:\09\09\09\09\09"
module asm "\09.asciz \09\22dma_vmap_noncontiguous\22\09\09\09\09\09"
module asm "__kstrtabns_dma_vmap_noncontiguous:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_dma_vunmap_noncontiguous:\09\09\09\09\09"
module asm "\09.asciz \09\22dma_vunmap_noncontiguous\22\09\09\09\09\09"
module asm "__kstrtabns_dma_vunmap_noncontiguous:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_dma_mmap_noncontiguous:\09\09\09\09\09"
module asm "\09.asciz \09\22dma_mmap_noncontiguous\22\09\09\09\09\09"
module asm "__kstrtabns_dma_mmap_noncontiguous:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_dma_supported:\09\09\09\09\09"
module asm "\09.asciz \09\22dma_supported\22\09\09\09\09\09"
module asm "__kstrtabns_dma_supported:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_dma_set_mask:\09\09\09\09\09"
module asm "\09.asciz \09\22dma_set_mask\22\09\09\09\09\09"
module asm "__kstrtabns_dma_set_mask:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_dma_set_coherent_mask:\09\09\09\09\09"
module asm "\09.asciz \09\22dma_set_coherent_mask\22\09\09\09\09\09"
module asm "__kstrtabns_dma_set_coherent_mask:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_dma_max_mapping_size:\09\09\09\09\09"
module asm "\09.asciz \09\22dma_max_mapping_size\22\09\09\09\09\09"
module asm "__kstrtabns_dma_max_mapping_size:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_dma_need_sync:\09\09\09\09\09"
module asm "\09.asciz \09\22dma_need_sync\22\09\09\09\09\09"
module asm "__kstrtabns_dma_need_sync:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_dma_get_merge_boundary:\09\09\09\09\09"
module asm "\09.asciz \09\22dma_get_merge_boundary\22\09\09\09\09\09"
module asm "__kstrtabns_dma_get_merge_boundary:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.dma_map_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dma_devres = type { i32, ptr, i32, i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.list_head = type { ptr, ptr }
%struct.sg_table = type { ptr, i32, i32 }
%struct.vm_area_struct = type { i32, i32, ptr, ptr, %struct.rb_node, i32, ptr, i32, i32, %union.anon.9, %struct.list_head, ptr, ptr, i32, ptr, ptr, %struct.atomic_t, %struct.vm_userfaultfd_ctx }
%union.anon.9 = type { %struct.anon.10 }
%struct.anon.10 = type { %struct.rb_node, i32 }
%struct.vm_userfaultfd_ctx = type {}
%struct.scatterlist = type { i32, i32, i32, i32, i32 }
%struct.dma_sgt_handle = type { %struct.sg_table, ptr }

@.str = private unnamed_addr constant [21 x i8] c"kernel/dma/mapping.c\00", align 1
@__kstrtab_dmam_free_coherent = external dso_local constant [0 x i8], align 1
@__kstrtabns_dmam_free_coherent = external dso_local constant [0 x i8], align 1
@__ksymtab_dmam_free_coherent = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @dmam_free_coherent to i32), ptr @__kstrtab_dmam_free_coherent, ptr @__kstrtabns_dmam_free_coherent }, section "___ksymtab+dmam_free_coherent", align 4
@.str.1 = private unnamed_addr constant [13 x i8] c"dmam_release\00", align 1
@__kstrtab_dmam_alloc_attrs = external dso_local constant [0 x i8], align 1
@__kstrtabns_dmam_alloc_attrs = external dso_local constant [0 x i8], align 1
@__ksymtab_dmam_alloc_attrs = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @dmam_alloc_attrs to i32), ptr @__kstrtab_dmam_alloc_attrs, ptr @__kstrtabns_dmam_alloc_attrs }, section "___ksymtab+dmam_alloc_attrs", align 4
@dma_map_page_attrs.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@__kstrtab_dma_map_page_attrs = external dso_local constant [0 x i8], align 1
@__kstrtabns_dma_map_page_attrs = external dso_local constant [0 x i8], align 1
@__ksymtab_dma_map_page_attrs = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @dma_map_page_attrs to i32), ptr @__kstrtab_dma_map_page_attrs, ptr @__kstrtabns_dma_map_page_attrs }, section "___ksymtab+dma_map_page_attrs", align 4
@__kstrtab_dma_unmap_page_attrs = external dso_local constant [0 x i8], align 1
@__kstrtabns_dma_unmap_page_attrs = external dso_local constant [0 x i8], align 1
@__ksymtab_dma_unmap_page_attrs = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @dma_unmap_page_attrs to i32), ptr @__kstrtab_dma_unmap_page_attrs, ptr @__kstrtabns_dma_unmap_page_attrs }, section "___ksymtab+dma_unmap_page_attrs", align 4
@__kstrtab_dma_map_sg_attrs = external dso_local constant [0 x i8], align 1
@__kstrtabns_dma_map_sg_attrs = external dso_local constant [0 x i8], align 1
@__ksymtab_dma_map_sg_attrs = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @dma_map_sg_attrs to i32), ptr @__kstrtab_dma_map_sg_attrs, ptr @__kstrtabns_dma_map_sg_attrs }, section "___ksymtab+dma_map_sg_attrs", align 4
@__kstrtab_dma_map_sgtable = external dso_local constant [0 x i8], align 1
@__kstrtabns_dma_map_sgtable = external dso_local constant [0 x i8], align 1
@__ksymtab_dma_map_sgtable = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @dma_map_sgtable to i32), ptr @__kstrtab_dma_map_sgtable, ptr @__kstrtabns_dma_map_sgtable }, section "___ksymtab_gpl+dma_map_sgtable", align 4
@__kstrtab_dma_unmap_sg_attrs = external dso_local constant [0 x i8], align 1
@__kstrtabns_dma_unmap_sg_attrs = external dso_local constant [0 x i8], align 1
@__ksymtab_dma_unmap_sg_attrs = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @dma_unmap_sg_attrs to i32), ptr @__kstrtab_dma_unmap_sg_attrs, ptr @__kstrtabns_dma_unmap_sg_attrs }, section "___ksymtab+dma_unmap_sg_attrs", align 4
@dma_map_resource.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@__kstrtab_dma_map_resource = external dso_local constant [0 x i8], align 1
@__kstrtabns_dma_map_resource = external dso_local constant [0 x i8], align 1
@__ksymtab_dma_map_resource = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @dma_map_resource to i32), ptr @__kstrtab_dma_map_resource, ptr @__kstrtabns_dma_map_resource }, section "___ksymtab+dma_map_resource", align 4
@__kstrtab_dma_unmap_resource = external dso_local constant [0 x i8], align 1
@__kstrtabns_dma_unmap_resource = external dso_local constant [0 x i8], align 1
@__ksymtab_dma_unmap_resource = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @dma_unmap_resource to i32), ptr @__kstrtab_dma_unmap_resource, ptr @__kstrtabns_dma_unmap_resource }, section "___ksymtab+dma_unmap_resource", align 4
@__kstrtab_dma_sync_single_for_cpu = external dso_local constant [0 x i8], align 1
@__kstrtabns_dma_sync_single_for_cpu = external dso_local constant [0 x i8], align 1
@__ksymtab_dma_sync_single_for_cpu = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @dma_sync_single_for_cpu to i32), ptr @__kstrtab_dma_sync_single_for_cpu, ptr @__kstrtabns_dma_sync_single_for_cpu }, section "___ksymtab+dma_sync_single_for_cpu", align 4
@__kstrtab_dma_sync_single_for_device = external dso_local constant [0 x i8], align 1
@__kstrtabns_dma_sync_single_for_device = external dso_local constant [0 x i8], align 1
@__ksymtab_dma_sync_single_for_device = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @dma_sync_single_for_device to i32), ptr @__kstrtab_dma_sync_single_for_device, ptr @__kstrtabns_dma_sync_single_for_device }, section "___ksymtab+dma_sync_single_for_device", align 4
@__kstrtab_dma_sync_sg_for_cpu = external dso_local constant [0 x i8], align 1
@__kstrtabns_dma_sync_sg_for_cpu = external dso_local constant [0 x i8], align 1
@__ksymtab_dma_sync_sg_for_cpu = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @dma_sync_sg_for_cpu to i32), ptr @__kstrtab_dma_sync_sg_for_cpu, ptr @__kstrtabns_dma_sync_sg_for_cpu }, section "___ksymtab+dma_sync_sg_for_cpu", align 4
@__kstrtab_dma_sync_sg_for_device = external dso_local constant [0 x i8], align 1
@__kstrtabns_dma_sync_sg_for_device = external dso_local constant [0 x i8], align 1
@__ksymtab_dma_sync_sg_for_device = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @dma_sync_sg_for_device to i32), ptr @__kstrtab_dma_sync_sg_for_device, ptr @__kstrtabns_dma_sync_sg_for_device }, section "___ksymtab+dma_sync_sg_for_device", align 4
@__kstrtab_dma_get_sgtable_attrs = external dso_local constant [0 x i8], align 1
@__kstrtabns_dma_get_sgtable_attrs = external dso_local constant [0 x i8], align 1
@__ksymtab_dma_get_sgtable_attrs = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @dma_get_sgtable_attrs to i32), ptr @__kstrtab_dma_get_sgtable_attrs, ptr @__kstrtabns_dma_get_sgtable_attrs }, section "___ksymtab+dma_get_sgtable_attrs", align 4
@__kstrtab_dma_can_mmap = external dso_local constant [0 x i8], align 1
@__kstrtabns_dma_can_mmap = external dso_local constant [0 x i8], align 1
@__ksymtab_dma_can_mmap = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @dma_can_mmap to i32), ptr @__kstrtab_dma_can_mmap, ptr @__kstrtabns_dma_can_mmap }, section "___ksymtab_gpl+dma_can_mmap", align 4
@__kstrtab_dma_mmap_attrs = external dso_local constant [0 x i8], align 1
@__kstrtabns_dma_mmap_attrs = external dso_local constant [0 x i8], align 1
@__ksymtab_dma_mmap_attrs = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @dma_mmap_attrs to i32), ptr @__kstrtab_dma_mmap_attrs, ptr @__kstrtabns_dma_mmap_attrs }, section "___ksymtab+dma_mmap_attrs", align 4
@__kstrtab_dma_get_required_mask = external dso_local constant [0 x i8], align 1
@__kstrtabns_dma_get_required_mask = external dso_local constant [0 x i8], align 1
@__ksymtab_dma_get_required_mask = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @dma_get_required_mask to i32), ptr @__kstrtab_dma_get_required_mask, ptr @__kstrtabns_dma_get_required_mask }, section "___ksymtab_gpl+dma_get_required_mask", align 4
@dma_alloc_attrs.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@__kstrtab_dma_alloc_attrs = external dso_local constant [0 x i8], align 1
@__kstrtabns_dma_alloc_attrs = external dso_local constant [0 x i8], align 1
@__ksymtab_dma_alloc_attrs = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @dma_alloc_attrs to i32), ptr @__kstrtab_dma_alloc_attrs, ptr @__kstrtabns_dma_alloc_attrs }, section "___ksymtab+dma_alloc_attrs", align 4
@__kstrtab_dma_free_attrs = external dso_local constant [0 x i8], align 1
@__kstrtabns_dma_free_attrs = external dso_local constant [0 x i8], align 1
@__ksymtab_dma_free_attrs = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @dma_free_attrs to i32), ptr @__kstrtab_dma_free_attrs, ptr @__kstrtabns_dma_free_attrs }, section "___ksymtab+dma_free_attrs", align 4
@__kstrtab_dma_alloc_pages = external dso_local constant [0 x i8], align 1
@__kstrtabns_dma_alloc_pages = external dso_local constant [0 x i8], align 1
@__ksymtab_dma_alloc_pages = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @dma_alloc_pages to i32), ptr @__kstrtab_dma_alloc_pages, ptr @__kstrtabns_dma_alloc_pages }, section "___ksymtab_gpl+dma_alloc_pages", align 4
@__kstrtab_dma_free_pages = external dso_local constant [0 x i8], align 1
@__kstrtabns_dma_free_pages = external dso_local constant [0 x i8], align 1
@__ksymtab_dma_free_pages = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @dma_free_pages to i32), ptr @__kstrtab_dma_free_pages, ptr @__kstrtabns_dma_free_pages }, section "___ksymtab_gpl+dma_free_pages", align 4
@mem_map = external dso_local local_unnamed_addr global ptr, align 4
@__pv_phys_pfn_offset = external dso_local local_unnamed_addr global i32, align 4
@__kstrtab_dma_mmap_pages = external dso_local constant [0 x i8], align 1
@__kstrtabns_dma_mmap_pages = external dso_local constant [0 x i8], align 1
@__ksymtab_dma_mmap_pages = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @dma_mmap_pages to i32), ptr @__kstrtab_dma_mmap_pages, ptr @__kstrtabns_dma_mmap_pages }, section "___ksymtab_gpl+dma_mmap_pages", align 4
@dma_alloc_noncontiguous.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@__kstrtab_dma_alloc_noncontiguous = external dso_local constant [0 x i8], align 1
@__kstrtabns_dma_alloc_noncontiguous = external dso_local constant [0 x i8], align 1
@__ksymtab_dma_alloc_noncontiguous = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @dma_alloc_noncontiguous to i32), ptr @__kstrtab_dma_alloc_noncontiguous, ptr @__kstrtabns_dma_alloc_noncontiguous }, section "___ksymtab_gpl+dma_alloc_noncontiguous", align 4
@__kstrtab_dma_free_noncontiguous = external dso_local constant [0 x i8], align 1
@__kstrtabns_dma_free_noncontiguous = external dso_local constant [0 x i8], align 1
@__ksymtab_dma_free_noncontiguous = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @dma_free_noncontiguous to i32), ptr @__kstrtab_dma_free_noncontiguous, ptr @__kstrtabns_dma_free_noncontiguous }, section "___ksymtab_gpl+dma_free_noncontiguous", align 4
@pgprot_kernel = external dso_local local_unnamed_addr global i32, align 4
@__kstrtab_dma_vmap_noncontiguous = external dso_local constant [0 x i8], align 1
@__kstrtabns_dma_vmap_noncontiguous = external dso_local constant [0 x i8], align 1
@__ksymtab_dma_vmap_noncontiguous = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @dma_vmap_noncontiguous to i32), ptr @__kstrtab_dma_vmap_noncontiguous, ptr @__kstrtabns_dma_vmap_noncontiguous }, section "___ksymtab_gpl+dma_vmap_noncontiguous", align 4
@__kstrtab_dma_vunmap_noncontiguous = external dso_local constant [0 x i8], align 1
@__kstrtabns_dma_vunmap_noncontiguous = external dso_local constant [0 x i8], align 1
@__ksymtab_dma_vunmap_noncontiguous = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @dma_vunmap_noncontiguous to i32), ptr @__kstrtab_dma_vunmap_noncontiguous, ptr @__kstrtabns_dma_vunmap_noncontiguous }, section "___ksymtab_gpl+dma_vunmap_noncontiguous", align 4
@__kstrtab_dma_mmap_noncontiguous = external dso_local constant [0 x i8], align 1
@__kstrtabns_dma_mmap_noncontiguous = external dso_local constant [0 x i8], align 1
@__ksymtab_dma_mmap_noncontiguous = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @dma_mmap_noncontiguous to i32), ptr @__kstrtab_dma_mmap_noncontiguous, ptr @__kstrtabns_dma_mmap_noncontiguous }, section "___ksymtab_gpl+dma_mmap_noncontiguous", align 4
@__kstrtab_dma_supported = external dso_local constant [0 x i8], align 1
@__kstrtabns_dma_supported = external dso_local constant [0 x i8], align 1
@__ksymtab_dma_supported = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @dma_supported to i32), ptr @__kstrtab_dma_supported, ptr @__kstrtabns_dma_supported }, section "___ksymtab+dma_supported", align 4
@__kstrtab_dma_set_mask = external dso_local constant [0 x i8], align 1
@__kstrtabns_dma_set_mask = external dso_local constant [0 x i8], align 1
@__ksymtab_dma_set_mask = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @dma_set_mask to i32), ptr @__kstrtab_dma_set_mask, ptr @__kstrtabns_dma_set_mask }, section "___ksymtab+dma_set_mask", align 4
@__kstrtab_dma_set_coherent_mask = external dso_local constant [0 x i8], align 1
@__kstrtabns_dma_set_coherent_mask = external dso_local constant [0 x i8], align 1
@__ksymtab_dma_set_coherent_mask = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @dma_set_coherent_mask to i32), ptr @__kstrtab_dma_set_coherent_mask, ptr @__kstrtabns_dma_set_coherent_mask }, section "___ksymtab+dma_set_coherent_mask", align 4
@__kstrtab_dma_max_mapping_size = external dso_local constant [0 x i8], align 1
@__kstrtabns_dma_max_mapping_size = external dso_local constant [0 x i8], align 1
@__ksymtab_dma_max_mapping_size = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @dma_max_mapping_size to i32), ptr @__kstrtab_dma_max_mapping_size, ptr @__kstrtabns_dma_max_mapping_size }, section "___ksymtab_gpl+dma_max_mapping_size", align 4
@__kstrtab_dma_need_sync = external dso_local constant [0 x i8], align 1
@__kstrtabns_dma_need_sync = external dso_local constant [0 x i8], align 1
@__ksymtab_dma_need_sync = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @dma_need_sync to i32), ptr @__kstrtab_dma_need_sync, ptr @__kstrtabns_dma_need_sync }, section "___ksymtab_gpl+dma_need_sync", align 4
@__kstrtab_dma_get_merge_boundary = external dso_local constant [0 x i8], align 1
@__kstrtabns_dma_get_merge_boundary = external dso_local constant [0 x i8], align 1
@__ksymtab_dma_get_merge_boundary = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @dma_get_merge_boundary to i32), ptr @__kstrtab_dma_get_merge_boundary, ptr @__kstrtabns_dma_get_merge_boundary }, section "___ksymtab_gpl+dma_get_merge_boundary", align 4
@dma_default_coherent = dso_local local_unnamed_addr global i8 0, align 1
@arm_dma_ops = external dso_local local_unnamed_addr constant %struct.dma_map_ops, align 4
@__dma_map_sg_attrs.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@__dma_map_sg_attrs.__already_done.4 = internal unnamed_addr global i1 false, section ".data.once", align 1
@__dma_alloc_pages.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@__dma_alloc_pages.__already_done.5 = internal unnamed_addr global i1 false, section ".data.once", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@llvm.compiler.used = appending global [33 x ptr] [ptr @__ksymtab_dma_alloc_attrs, ptr @__ksymtab_dma_alloc_noncontiguous, ptr @__ksymtab_dma_alloc_pages, ptr @__ksymtab_dma_can_mmap, ptr @__ksymtab_dma_free_attrs, ptr @__ksymtab_dma_free_noncontiguous, ptr @__ksymtab_dma_free_pages, ptr @__ksymtab_dma_get_merge_boundary, ptr @__ksymtab_dma_get_required_mask, ptr @__ksymtab_dma_get_sgtable_attrs, ptr @__ksymtab_dma_map_page_attrs, ptr @__ksymtab_dma_map_resource, ptr @__ksymtab_dma_map_sg_attrs, ptr @__ksymtab_dma_map_sgtable, ptr @__ksymtab_dma_max_mapping_size, ptr @__ksymtab_dma_mmap_attrs, ptr @__ksymtab_dma_mmap_noncontiguous, ptr @__ksymtab_dma_mmap_pages, ptr @__ksymtab_dma_need_sync, ptr @__ksymtab_dma_set_coherent_mask, ptr @__ksymtab_dma_set_mask, ptr @__ksymtab_dma_supported, ptr @__ksymtab_dma_sync_sg_for_cpu, ptr @__ksymtab_dma_sync_sg_for_device, ptr @__ksymtab_dma_sync_single_for_cpu, ptr @__ksymtab_dma_sync_single_for_device, ptr @__ksymtab_dma_unmap_page_attrs, ptr @__ksymtab_dma_unmap_resource, ptr @__ksymtab_dma_unmap_sg_attrs, ptr @__ksymtab_dma_vmap_noncontiguous, ptr @__ksymtab_dma_vunmap_noncontiguous, ptr @__ksymtab_dmam_alloc_attrs, ptr @__ksymtab_dmam_free_coherent], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @dmam_free_coherent(ptr noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3) #0 {
  %5 = alloca %struct.dma_devres, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #6
  store i32 %1, ptr %5, align 4
  %6 = getelementptr inbounds %struct.dma_devres, ptr %5, i32 0, i32 1
  store ptr %2, ptr %6, align 4
  %7 = getelementptr inbounds %struct.dma_devres, ptr %5, i32 0, i32 2
  store i32 %3, ptr %7, align 4
  %8 = getelementptr inbounds %struct.dma_devres, ptr %5, i32 0, i32 3
  store i32 0, ptr %8, align 4
  %9 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 15
  %10 = load ptr, ptr %9, align 8
  %11 = icmp eq ptr %10, null
  %12 = select i1 %11, ptr @arm_dma_ops, ptr %10
  %13 = add i32 %1, -1
  %14 = icmp ult i32 %13, 4096
  %15 = lshr i32 %13, 12
  %16 = tail call i32 @llvm.ctlz.i32(i32 %15, i1 false) #6, !range !8
  %17 = sub nuw nsw i32 32, %16
  %18 = select i1 %14, i32 0, i32 %17
  %19 = tail call i32 @dma_release_from_dev_coherent(ptr noundef %0, i32 noundef %18, ptr noundef %2) #6
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %33

21:                                               ; preds = %4
  %22 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #6, !srcloc !9
  %23 = and i32 %22, 128
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %26, label %25, !prof !10

25:                                               ; preds = %21
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 528, i32 noundef 9, ptr noundef null) #6
  br label %26

26:                                               ; preds = %25, %21
  %27 = icmp eq ptr %2, null
  br i1 %27, label %33, label %28

28:                                               ; preds = %26
  %29 = getelementptr inbounds %struct.dma_map_ops, ptr %12, i32 0, i32 1
  %30 = load ptr, ptr %29, align 4
  %31 = icmp eq ptr %30, null
  br i1 %31, label %33, label %32

32:                                               ; preds = %28
  tail call void %30(ptr noundef %0, i32 noundef %1, ptr noundef nonnull %2, i32 noundef %3, i32 noundef 0) #6
  br label %33

33:                                               ; preds = %32, %28, %26, %4
  %34 = call i32 @devres_destroy(ptr noundef %0, ptr noundef nonnull @dmam_release, ptr noundef nonnull @dmam_match, ptr noundef nonnull %5) #6
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %37, label %36, !prof !10

36:                                               ; preds = %33
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 66, i32 noundef 9, ptr noundef null) #6
  br label %37

37:                                               ; preds = %36, %33
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #6
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devres_destroy(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @dmam_release(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = load i32, ptr %1, align 4
  %4 = getelementptr inbounds %struct.dma_devres, ptr %1, i32 0, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.dma_devres, ptr %1, i32 0, i32 2
  %7 = load i32, ptr %6, align 4
  %8 = getelementptr inbounds %struct.dma_devres, ptr %1, i32 0, i32 3
  %9 = load i32, ptr %8, align 4
  %10 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 15
  %11 = load ptr, ptr %10, align 8
  %12 = icmp eq ptr %11, null
  %13 = select i1 %12, ptr @arm_dma_ops, ptr %11
  %14 = add i32 %3, -1
  %15 = icmp ult i32 %14, 4096
  %16 = lshr i32 %14, 12
  %17 = tail call i32 @llvm.ctlz.i32(i32 %16, i1 false) #6, !range !8
  %18 = sub nuw nsw i32 32, %17
  %19 = select i1 %15, i32 0, i32 %18
  %20 = tail call i32 @dma_release_from_dev_coherent(ptr noundef %0, i32 noundef %19, ptr noundef %5) #6
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %34

22:                                               ; preds = %2
  %23 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #6, !srcloc !9
  %24 = and i32 %23, 128
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %27, label %26, !prof !10

26:                                               ; preds = %22
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 528, i32 noundef 9, ptr noundef null) #6
  br label %27

27:                                               ; preds = %26, %22
  %28 = icmp eq ptr %5, null
  br i1 %28, label %34, label %29

29:                                               ; preds = %27
  %30 = getelementptr inbounds %struct.dma_map_ops, ptr %13, i32 0, i32 1
  %31 = load ptr, ptr %30, align 4
  %32 = icmp eq ptr %31, null
  br i1 %32, label %34, label %33

33:                                               ; preds = %29
  tail call void %31(ptr noundef %0, i32 noundef %3, ptr noundef nonnull %5, i32 noundef %7, i32 noundef %9) #6
  br label %34

34:                                               ; preds = %33, %29, %27, %2
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @dmam_match(ptr nocapture noundef readnone %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) #0 {
  %4 = getelementptr inbounds %struct.dma_devres, ptr %1, i32 0, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.dma_devres, ptr %2, i32 0, i32 1
  %7 = load ptr, ptr %6, align 4
  %8 = icmp eq ptr %5, %7
  br i1 %8, label %9, label %20

9:                                                ; preds = %3
  %10 = load i32, ptr %1, align 4
  %11 = load i32, ptr %2, align 4
  %12 = icmp eq i32 %10, %11
  br i1 %12, label %13, label %19

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct.dma_devres, ptr %1, i32 0, i32 2
  %15 = load i32, ptr %14, align 4
  %16 = getelementptr inbounds %struct.dma_devres, ptr %2, i32 0, i32 2
  %17 = load i32, ptr %16, align 4
  %18 = icmp eq i32 %15, %17
  br i1 %18, label %20, label %19, !prof !10

19:                                               ; preds = %13, %9
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 45, i32 noundef 9, ptr noundef null) #6
  br label %20

20:                                               ; preds = %19, %13, %3
  %21 = phi i32 [ 1, %19 ], [ 1, %13 ], [ 0, %3 ]
  ret i32 %21
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @dmam_alloc_attrs(ptr noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef %4) #0 {
  %6 = alloca ptr, align 4
  %7 = tail call noalias ptr @__devres_alloc_node(ptr noundef nonnull @dmam_release, i32 noundef 16, i32 noundef %3, i32 noundef -1, ptr noundef nonnull @.str.1) #6
  %8 = icmp eq ptr %7, null
  br i1 %8, label %42, label %9

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 15
  %11 = load ptr, ptr %10, align 8
  %12 = icmp eq ptr %11, null
  %13 = select i1 %12, ptr @arm_dma_ops, ptr %11
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #6
  store ptr null, ptr %6, align 4, !annotation !11
  %14 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 17
  %15 = load i64, ptr %14, align 8
  %16 = icmp eq i64 %15, 0
  %17 = load i1, ptr @dma_alloc_attrs.__already_done, align 1
  %18 = xor i1 %17, true
  %19 = select i1 %16, i1 %18, i1 false
  br i1 %19, label %20, label %21, !prof !12

20:                                               ; preds = %9
  store i1 true, ptr @dma_alloc_attrs.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 494, i32 noundef 9, ptr noundef null) #6
  br label %21

21:                                               ; preds = %20, %9
  %22 = call i32 @dma_alloc_from_dev_coherent(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef nonnull %6) #6
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %26, label %24

24:                                               ; preds = %21
  %25 = load ptr, ptr %6, align 4
  br label %33

26:                                               ; preds = %21
  %27 = load ptr, ptr %13, align 4
  %28 = icmp eq ptr %27, null
  br i1 %28, label %29, label %30

29:                                               ; preds = %26
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #6
  br label %36

30:                                               ; preds = %26
  %31 = and i32 %3, -8
  %32 = call ptr %27(ptr noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %31, i32 noundef %4) #6
  br label %33

33:                                               ; preds = %30, %24
  %34 = phi ptr [ %25, %24 ], [ %32, %30 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #6
  %35 = icmp eq ptr %34, null
  br i1 %35, label %36, label %37

36:                                               ; preds = %33, %29
  call void @devres_free(ptr noundef nonnull %7) #6
  br label %42

37:                                               ; preds = %33
  %38 = getelementptr inbounds %struct.dma_devres, ptr %7, i32 0, i32 1
  store ptr %34, ptr %38, align 4
  %39 = load i32, ptr %2, align 4
  %40 = getelementptr inbounds %struct.dma_devres, ptr %7, i32 0, i32 2
  store i32 %39, ptr %40, align 4
  store i32 %1, ptr %7, align 4
  %41 = getelementptr inbounds %struct.dma_devres, ptr %7, i32 0, i32 3
  store i32 %4, ptr %41, align 4
  call void @devres_add(ptr noundef %0, ptr noundef nonnull %7) #6
  br label %42

42:                                               ; preds = %37, %36, %5
  %43 = phi ptr [ %34, %37 ], [ null, %36 ], [ null, %5 ]
  ret ptr %43
}

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @__devres_alloc_node(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @dma_alloc_attrs(ptr noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef %4) #0 {
  %6 = alloca ptr, align 4
  %7 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 15
  %8 = load ptr, ptr %7, align 8
  %9 = icmp eq ptr %8, null
  %10 = select i1 %9, ptr @arm_dma_ops, ptr %8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #6
  store ptr null, ptr %6, align 4, !annotation !11
  %11 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 17
  %12 = load i64, ptr %11, align 8
  %13 = icmp eq i64 %12, 0
  %14 = load i1, ptr @dma_alloc_attrs.__already_done, align 1
  %15 = xor i1 %14, true
  %16 = select i1 %13, i1 %15, i1 false
  br i1 %16, label %17, label %18, !prof !12

17:                                               ; preds = %5
  store i1 true, ptr @dma_alloc_attrs.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 494, i32 noundef 9, ptr noundef null) #6
  br label %18

18:                                               ; preds = %17, %5
  %19 = call i32 @dma_alloc_from_dev_coherent(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef nonnull %6) #6
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %23, label %21

21:                                               ; preds = %18
  %22 = load ptr, ptr %6, align 4
  br label %29

23:                                               ; preds = %18
  %24 = load ptr, ptr %10, align 4
  %25 = icmp eq ptr %24, null
  br i1 %25, label %29, label %26

26:                                               ; preds = %23
  %27 = and i32 %3, -8
  %28 = call ptr %24(ptr noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %27, i32 noundef %4) #6
  br label %29

29:                                               ; preds = %26, %23, %21
  %30 = phi ptr [ %22, %21 ], [ %28, %26 ], [ null, %23 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #6
  ret ptr %30
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @devres_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @devres_add(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @dma_map_page_attrs(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5) #0 {
  %7 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 15
  %8 = load ptr, ptr %7, align 8
  %9 = icmp eq ptr %8, null
  %10 = select i1 %9, ptr @arm_dma_ops, ptr %8
  %11 = icmp ugt i32 %4, 2
  br i1 %11, label %12, label %13, !prof !12

12:                                               ; preds = %6
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22kernel/dma/mapping.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 149, 0\0A.popsection", ""() #6, !srcloc !13
  unreachable

13:                                               ; preds = %6
  %14 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 16
  %15 = load ptr, ptr %14, align 4
  %16 = icmp eq ptr %15, null
  %17 = load i1, ptr @dma_map_page_attrs.__already_done, align 1
  %18 = xor i1 %17, true
  %19 = select i1 %16, i1 %18, i1 false
  br i1 %19, label %20, label %21, !prof !12

20:                                               ; preds = %13
  store i1 true, ptr @dma_map_page_attrs.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 151, i32 noundef 9, ptr noundef null) #6
  br label %21

21:                                               ; preds = %20, %13
  br i1 %16, label %26, label %22

22:                                               ; preds = %21
  %23 = getelementptr inbounds %struct.dma_map_ops, ptr %10, i32 0, i32 8
  %24 = load ptr, ptr %23, align 4
  %25 = tail call i32 %24(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5) #6
  br label %26

26:                                               ; preds = %22, %21
  %27 = phi i32 [ -1, %21 ], [ %25, %22 ]
  ret i32 %27
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @dma_unmap_page_attrs(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) #0 {
  %6 = icmp ugt i32 %3, 2
  br i1 %6, label %7, label %8, !prof !12

7:                                                ; preds = %5
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22kernel/dma/mapping.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 170, 0\0A.popsection", ""() #6, !srcloc !14
  unreachable

8:                                                ; preds = %5
  %9 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 15
  %10 = load ptr, ptr %9, align 8
  %11 = icmp eq ptr %10, null
  %12 = select i1 %11, ptr @arm_dma_ops, ptr %10
  %13 = getelementptr inbounds %struct.dma_map_ops, ptr %12, i32 0, i32 9
  %14 = load ptr, ptr %13, align 4
  %15 = icmp eq ptr %14, null
  br i1 %15, label %17, label %16

16:                                               ; preds = %8
  tail call void %14(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) #6
  br label %17

17:                                               ; preds = %16, %8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @dma_map_sg_attrs(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) #0 {
  %6 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 15
  %7 = load ptr, ptr %6, align 8
  %8 = icmp eq ptr %7, null
  %9 = select i1 %8, ptr @arm_dma_ops, ptr %7
  %10 = icmp ugt i32 %3, 2
  br i1 %10, label %11, label %12, !prof !12

11:                                               ; preds = %5
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22kernel/dma/mapping.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 186, 0\0A.popsection", ""() #6, !srcloc !15
  unreachable

12:                                               ; preds = %5
  %13 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 16
  %14 = load ptr, ptr %13, align 4
  %15 = icmp eq ptr %14, null
  %16 = load i1, ptr @__dma_map_sg_attrs.__already_done, align 1
  %17 = xor i1 %16, true
  %18 = select i1 %15, i1 %17, i1 false
  br i1 %18, label %19, label %20, !prof !12

19:                                               ; preds = %12
  store i1 true, ptr @__dma_map_sg_attrs.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 188, i32 noundef 9, ptr noundef null) #6
  br label %20

20:                                               ; preds = %19, %12
  br i1 %15, label %30, label %21

21:                                               ; preds = %20
  %22 = getelementptr inbounds %struct.dma_map_ops, ptr %9, i32 0, i32 10
  %23 = load ptr, ptr %22, align 4
  %24 = tail call i32 %23(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) #6
  %25 = icmp sgt i32 %24, 0
  br i1 %25, label %30, label %26

26:                                               ; preds = %21
  switch i32 %24, label %27 [
    i32 -12, label %30
    i32 -22, label %30
    i32 -5, label %30
  ]

27:                                               ; preds = %26
  %28 = load i1, ptr @__dma_map_sg_attrs.__already_done.4, align 1
  br i1 %28, label %30, label %29, !prof !10

29:                                               ; preds = %27
  store i1 true, ptr @__dma_map_sg_attrs.__already_done.4, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 200, i32 noundef 9, ptr noundef null) #6
  br label %30

30:                                               ; preds = %29, %27, %26, %26, %26, %21, %20
  %31 = phi i32 [ 0, %20 ], [ %24, %21 ], [ 0, %26 ], [ 0, %26 ], [ 0, %26 ], [ 0, %29 ], [ 0, %27 ]
  ret i32 %31
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @dma_map_sgtable(ptr noundef %0, ptr nocapture noundef %1, i32 noundef %2, i32 noundef %3) #0 {
  %5 = load ptr, ptr %1, align 4
  %6 = getelementptr inbounds %struct.sg_table, ptr %1, i32 0, i32 2
  %7 = load i32, ptr %6, align 4
  %8 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 15
  %9 = load ptr, ptr %8, align 8
  %10 = icmp eq ptr %9, null
  %11 = select i1 %10, ptr @arm_dma_ops, ptr %9
  %12 = icmp ugt i32 %2, 2
  br i1 %12, label %13, label %14, !prof !12

13:                                               ; preds = %4
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22kernel/dma/mapping.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 186, 0\0A.popsection", ""() #6, !srcloc !15
  unreachable

14:                                               ; preds = %4
  %15 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 16
  %16 = load ptr, ptr %15, align 4
  %17 = icmp eq ptr %16, null
  %18 = load i1, ptr @__dma_map_sg_attrs.__already_done, align 1
  %19 = xor i1 %18, true
  %20 = select i1 %17, i1 %19, i1 false
  br i1 %20, label %21, label %22, !prof !12

21:                                               ; preds = %14
  store i1 true, ptr @__dma_map_sg_attrs.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 188, i32 noundef 9, ptr noundef null) #6
  br label %22

22:                                               ; preds = %21, %14
  br i1 %17, label %32, label %23

23:                                               ; preds = %22
  %24 = getelementptr inbounds %struct.dma_map_ops, ptr %11, i32 0, i32 10
  %25 = load ptr, ptr %24, align 4
  %26 = tail call i32 %25(ptr noundef %0, ptr noundef %5, i32 noundef %7, i32 noundef %2, i32 noundef %3) #6
  %27 = icmp sgt i32 %26, 0
  br i1 %27, label %32, label %28

28:                                               ; preds = %23
  switch i32 %26, label %29 [
    i32 -12, label %35
    i32 -22, label %35
    i32 -5, label %35
  ]

29:                                               ; preds = %28
  %30 = load i1, ptr @__dma_map_sg_attrs.__already_done.4, align 1
  br i1 %30, label %35, label %31, !prof !10

31:                                               ; preds = %29
  store i1 true, ptr @__dma_map_sg_attrs.__already_done.4, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 200, i32 noundef 9, ptr noundef null) #6
  br label %35

32:                                               ; preds = %23, %22
  %33 = phi i32 [ 0, %22 ], [ %26, %23 ]
  %34 = getelementptr inbounds %struct.sg_table, ptr %1, i32 0, i32 1
  store i32 %33, ptr %34, align 4
  br label %35

35:                                               ; preds = %32, %31, %29, %28, %28, %28
  %36 = phi i32 [ 0, %32 ], [ -5, %29 ], [ -5, %31 ], [ %26, %28 ], [ %26, %28 ], [ %26, %28 ]
  ret i32 %36
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @dma_unmap_sg_attrs(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) #0 {
  %6 = icmp ugt i32 %3, 2
  br i1 %6, label %7, label %8, !prof !12

7:                                                ; preds = %5
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22kernel/dma/mapping.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 278, 0\0A.popsection", ""() #6, !srcloc !16
  unreachable

8:                                                ; preds = %5
  %9 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 15
  %10 = load ptr, ptr %9, align 8
  %11 = icmp eq ptr %10, null
  %12 = select i1 %11, ptr @arm_dma_ops, ptr %10
  %13 = getelementptr inbounds %struct.dma_map_ops, ptr %12, i32 0, i32 11
  %14 = load ptr, ptr %13, align 4
  %15 = icmp eq ptr %14, null
  br i1 %15, label %17, label %16

16:                                               ; preds = %8
  tail call void %14(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) #6
  br label %17

17:                                               ; preds = %16, %8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @dma_map_resource(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) #0 {
  %6 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 15
  %7 = load ptr, ptr %6, align 8
  %8 = icmp eq ptr %7, null
  %9 = select i1 %8, ptr @arm_dma_ops, ptr %7
  %10 = icmp ugt i32 %3, 2
  br i1 %10, label %11, label %12, !prof !12

11:                                               ; preds = %5
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22kernel/dma/mapping.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 294, 0\0A.popsection", ""() #6, !srcloc !17
  unreachable

12:                                               ; preds = %5
  %13 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 16
  %14 = load ptr, ptr %13, align 4
  %15 = icmp eq ptr %14, null
  %16 = load i1, ptr @dma_map_resource.__already_done, align 1
  %17 = xor i1 %16, true
  %18 = select i1 %15, i1 %17, i1 false
  br i1 %18, label %19, label %20, !prof !12

19:                                               ; preds = %12
  store i1 true, ptr @dma_map_resource.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 296, i32 noundef 9, ptr noundef null) #6
  br label %20

20:                                               ; preds = %19, %12
  br i1 %15, label %27, label %21

21:                                               ; preds = %20
  %22 = getelementptr inbounds %struct.dma_map_ops, ptr %9, i32 0, i32 12
  %23 = load ptr, ptr %22, align 4
  %24 = icmp eq ptr %23, null
  br i1 %24, label %27, label %25

25:                                               ; preds = %21
  %26 = tail call i32 %23(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) #6
  br label %27

27:                                               ; preds = %25, %21, %20
  %28 = phi i32 [ -1, %20 ], [ %26, %25 ], [ -1, %21 ]
  ret i32 %28
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @dma_unmap_resource(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) #0 {
  %6 = icmp ugt i32 %3, 2
  br i1 %6, label %7, label %8, !prof !12

7:                                                ; preds = %5
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22kernel/dma/mapping.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 314, 0\0A.popsection", ""() #6, !srcloc !18
  unreachable

8:                                                ; preds = %5
  %9 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 15
  %10 = load ptr, ptr %9, align 8
  %11 = icmp eq ptr %10, null
  %12 = select i1 %11, ptr @arm_dma_ops, ptr %10
  %13 = getelementptr inbounds %struct.dma_map_ops, ptr %12, i32 0, i32 13
  %14 = load ptr, ptr %13, align 4
  %15 = icmp eq ptr %14, null
  br i1 %15, label %17, label %16

16:                                               ; preds = %8
  tail call void %14(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) #6
  br label %17

17:                                               ; preds = %16, %8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @dma_sync_single_for_cpu(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) #0 {
  %5 = icmp ugt i32 %3, 2
  br i1 %5, label %6, label %7, !prof !12

6:                                                ; preds = %4
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22kernel/dma/mapping.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 326, 0\0A.popsection", ""() #6, !srcloc !19
  unreachable

7:                                                ; preds = %4
  %8 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 15
  %9 = load ptr, ptr %8, align 8
  %10 = icmp eq ptr %9, null
  %11 = select i1 %10, ptr @arm_dma_ops, ptr %9
  %12 = getelementptr inbounds %struct.dma_map_ops, ptr %11, i32 0, i32 14
  %13 = load ptr, ptr %12, align 4
  %14 = icmp eq ptr %13, null
  br i1 %14, label %16, label %15

15:                                               ; preds = %7
  tail call void %13(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) #6
  br label %16

16:                                               ; preds = %15, %7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @dma_sync_single_for_device(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) #0 {
  %5 = icmp ugt i32 %3, 2
  br i1 %5, label %6, label %7, !prof !12

6:                                                ; preds = %4
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22kernel/dma/mapping.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 340, 0\0A.popsection", ""() #6, !srcloc !20
  unreachable

7:                                                ; preds = %4
  %8 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 15
  %9 = load ptr, ptr %8, align 8
  %10 = icmp eq ptr %9, null
  %11 = select i1 %10, ptr @arm_dma_ops, ptr %9
  %12 = getelementptr inbounds %struct.dma_map_ops, ptr %11, i32 0, i32 15
  %13 = load ptr, ptr %12, align 4
  %14 = icmp eq ptr %13, null
  br i1 %14, label %16, label %15

15:                                               ; preds = %7
  tail call void %13(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) #6
  br label %16

16:                                               ; preds = %15, %7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @dma_sync_sg_for_cpu(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) #0 {
  %5 = icmp ugt i32 %3, 2
  br i1 %5, label %6, label %7, !prof !12

6:                                                ; preds = %4
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22kernel/dma/mapping.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 354, 0\0A.popsection", ""() #6, !srcloc !21
  unreachable

7:                                                ; preds = %4
  %8 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 15
  %9 = load ptr, ptr %8, align 8
  %10 = icmp eq ptr %9, null
  %11 = select i1 %10, ptr @arm_dma_ops, ptr %9
  %12 = getelementptr inbounds %struct.dma_map_ops, ptr %11, i32 0, i32 16
  %13 = load ptr, ptr %12, align 4
  %14 = icmp eq ptr %13, null
  br i1 %14, label %16, label %15

15:                                               ; preds = %7
  tail call void %13(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) #6
  br label %16

16:                                               ; preds = %15, %7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @dma_sync_sg_for_device(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) #0 {
  %5 = icmp ugt i32 %3, 2
  br i1 %5, label %6, label %7, !prof !12

6:                                                ; preds = %4
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22kernel/dma/mapping.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 368, 0\0A.popsection", ""() #6, !srcloc !22
  unreachable

7:                                                ; preds = %4
  %8 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 15
  %9 = load ptr, ptr %8, align 8
  %10 = icmp eq ptr %9, null
  %11 = select i1 %10, ptr @arm_dma_ops, ptr %9
  %12 = getelementptr inbounds %struct.dma_map_ops, ptr %11, i32 0, i32 17
  %13 = load ptr, ptr %12, align 4
  %14 = icmp eq ptr %13, null
  br i1 %14, label %16, label %15

15:                                               ; preds = %7
  tail call void %13(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) #6
  br label %16

16:                                               ; preds = %15, %7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @dma_get_sgtable_attrs(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5) #0 {
  %7 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 15
  %8 = load ptr, ptr %7, align 8
  %9 = icmp eq ptr %8, null
  %10 = select i1 %9, ptr @arm_dma_ops, ptr %8
  %11 = getelementptr inbounds %struct.dma_map_ops, ptr %10, i32 0, i32 7
  %12 = load ptr, ptr %11, align 4
  %13 = icmp eq ptr %12, null
  br i1 %13, label %16, label %14

14:                                               ; preds = %6
  %15 = tail call i32 %12(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5) #6
  br label %16

16:                                               ; preds = %14, %6
  %17 = phi i32 [ %15, %14 ], [ -6, %6 ]
  ret i32 %17
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define dso_local i32 @dma_pgprot(ptr nocapture noundef readnone %0, i32 noundef returned %1, i32 noundef %2) local_unnamed_addr #3 {
  ret i32 %1
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local zeroext i1 @dma_can_mmap(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 15
  %3 = load ptr, ptr %2, align 8
  %4 = icmp eq ptr %3, null
  %5 = select i1 %4, ptr @arm_dma_ops, ptr %3
  %6 = getelementptr inbounds %struct.dma_map_ops, ptr %5, i32 0, i32 6
  %7 = load ptr, ptr %6, align 4
  %8 = icmp ne ptr %7, null
  ret i1 %8
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @dma_mmap_attrs(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5) #0 {
  %7 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 15
  %8 = load ptr, ptr %7, align 8
  %9 = icmp eq ptr %8, null
  %10 = select i1 %9, ptr @arm_dma_ops, ptr %8
  %11 = getelementptr inbounds %struct.dma_map_ops, ptr %10, i32 0, i32 6
  %12 = load ptr, ptr %11, align 4
  %13 = icmp eq ptr %12, null
  br i1 %13, label %16, label %14

14:                                               ; preds = %6
  %15 = tail call i32 %12(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5) #6
  br label %16

16:                                               ; preds = %14, %6
  %17 = phi i32 [ %15, %14 ], [ -6, %6 ]
  ret i32 %17
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i64 @dma_get_required_mask(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 15
  %3 = load ptr, ptr %2, align 8
  %4 = icmp eq ptr %3, null
  %5 = select i1 %4, ptr @arm_dma_ops, ptr %3
  %6 = getelementptr inbounds %struct.dma_map_ops, ptr %5, i32 0, i32 20
  %7 = load ptr, ptr %6, align 4
  %8 = icmp eq ptr %7, null
  br i1 %8, label %11, label %9

9:                                                ; preds = %1
  %10 = tail call i64 %7(ptr noundef %0) #6
  br label %11

11:                                               ; preds = %9, %1
  %12 = phi i64 [ %10, %9 ], [ 4294967295, %1 ]
  ret i64 %12
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_alloc_from_dev_coherent(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @dma_free_attrs(ptr noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef %4) #0 {
  %6 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 15
  %7 = load ptr, ptr %6, align 8
  %8 = icmp eq ptr %7, null
  %9 = select i1 %8, ptr @arm_dma_ops, ptr %7
  %10 = add i32 %1, -1
  %11 = icmp ult i32 %10, 4096
  %12 = lshr i32 %10, 12
  %13 = tail call i32 @llvm.ctlz.i32(i32 %12, i1 false) #6, !range !8
  %14 = sub nuw nsw i32 32, %13
  %15 = select i1 %11, i32 0, i32 %14
  %16 = tail call i32 @dma_release_from_dev_coherent(ptr noundef %0, i32 noundef %15, ptr noundef %2) #6
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %30

18:                                               ; preds = %5
  %19 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #6, !srcloc !9
  %20 = and i32 %19, 128
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %23, label %22, !prof !10

22:                                               ; preds = %18
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 528, i32 noundef 9, ptr noundef null) #6
  br label %23

23:                                               ; preds = %22, %18
  %24 = icmp eq ptr %2, null
  br i1 %24, label %30, label %25

25:                                               ; preds = %23
  %26 = getelementptr inbounds %struct.dma_map_ops, ptr %9, i32 0, i32 1
  %27 = load ptr, ptr %26, align 4
  %28 = icmp eq ptr %27, null
  br i1 %28, label %30, label %29

29:                                               ; preds = %25
  tail call void %27(ptr noundef %0, i32 noundef %1, ptr noundef nonnull %2, i32 noundef %3, i32 noundef %4) #6
  br label %30

30:                                               ; preds = %29, %25, %23, %5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_release_from_dev_coherent(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @dma_alloc_pages(ptr noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef %4) #0 {
  %6 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 15
  %7 = load ptr, ptr %6, align 8
  %8 = icmp eq ptr %7, null
  %9 = select i1 %8, ptr @arm_dma_ops, ptr %7
  %10 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 17
  %11 = load i64, ptr %10, align 8
  %12 = icmp eq i64 %11, 0
  %13 = load i1, ptr @__dma_alloc_pages.__already_done, align 1
  %14 = xor i1 %13, true
  %15 = select i1 %12, i1 %14, i1 false
  br i1 %15, label %16, label %17, !prof !12

16:                                               ; preds = %5
  store i1 true, ptr @__dma_alloc_pages.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 546, i32 noundef 9, ptr noundef null) #6
  br label %17

17:                                               ; preds = %16, %5
  br i1 %12, label %34, label %18

18:                                               ; preds = %17
  %19 = and i32 %4, 7
  %20 = icmp ne i32 %19, 0
  %21 = load i1, ptr @__dma_alloc_pages.__already_done.5, align 1
  %22 = xor i1 %21, true
  %23 = select i1 %20, i1 %22, i1 false
  br i1 %23, label %24, label %25, !prof !12

24:                                               ; preds = %18
  store i1 true, ptr @__dma_alloc_pages.__already_done.5, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 548, i32 noundef 9, ptr noundef null) #6
  br label %25

25:                                               ; preds = %24, %18
  br i1 %20, label %34, label %26

26:                                               ; preds = %25
  %27 = getelementptr inbounds %struct.dma_map_ops, ptr %9, i32 0, i32 2
  %28 = load ptr, ptr %27, align 4
  %29 = icmp eq ptr %28, null
  br i1 %29, label %34, label %30

30:                                               ; preds = %26
  %31 = add i32 %1, 4095
  %32 = and i32 %31, -4096
  %33 = tail call ptr %28(ptr noundef %0, i32 noundef %32, ptr noundef %2, i32 noundef %3, i32 noundef %4) #6
  br label %34

34:                                               ; preds = %30, %26, %25, %17
  %35 = phi ptr [ %33, %30 ], [ null, %17 ], [ null, %25 ], [ null, %26 ]
  ret ptr %35
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @dma_free_pages(ptr noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef %4) #0 {
  %6 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 15
  %7 = load ptr, ptr %6, align 8
  %8 = icmp eq ptr %7, null
  %9 = select i1 %8, ptr @arm_dma_ops, ptr %7
  %10 = getelementptr inbounds %struct.dma_map_ops, ptr %9, i32 0, i32 3
  %11 = load ptr, ptr %10, align 4
  %12 = icmp eq ptr %11, null
  br i1 %12, label %16, label %13

13:                                               ; preds = %5
  %14 = add i32 %1, 4095
  %15 = and i32 %14, -4096
  tail call void %11(ptr noundef %0, i32 noundef %15, ptr noundef %2, i32 noundef %3, i32 noundef %4) #6
  br label %16

16:                                               ; preds = %13, %5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @dma_mmap_pages(ptr nocapture readnone %0, ptr noundef %1, i32 noundef %2, ptr noundef %3) #0 {
  %5 = add i32 %2, 4095
  %6 = lshr i32 %5, 12
  %7 = getelementptr inbounds %struct.vm_area_struct, ptr %1, i32 0, i32 13
  %8 = load i32, ptr %7, align 4
  %9 = icmp ugt i32 %6, %8
  br i1 %9, label %10, label %31

10:                                               ; preds = %4
  %11 = getelementptr inbounds %struct.vm_area_struct, ptr %1, i32 0, i32 1
  %12 = load i32, ptr %11, align 4
  %13 = load i32, ptr %1, align 4
  %14 = sub i32 %12, %13
  %15 = lshr i32 %14, 12
  %16 = sub i32 %6, %8
  %17 = icmp ugt i32 %15, %16
  br i1 %17, label %31, label %18

18:                                               ; preds = %10
  %19 = load ptr, ptr @mem_map, align 4
  %20 = ptrtoint ptr %3 to i32
  %21 = ptrtoint ptr %19 to i32
  %22 = sub i32 %20, %21
  %23 = ashr exact i32 %22, 5
  %24 = load i32, ptr @__pv_phys_pfn_offset, align 4
  %25 = add i32 %24, %8
  %26 = add i32 %25, %23
  %27 = and i32 %14, -4096
  %28 = getelementptr inbounds %struct.vm_area_struct, ptr %1, i32 0, i32 7
  %29 = load i32, ptr %28, align 4
  %30 = tail call i32 @remap_pfn_range(ptr noundef %1, i32 noundef %13, i32 noundef %26, i32 noundef %27, i32 noundef %29) #6
  br label %31

31:                                               ; preds = %18, %10, %4
  %32 = phi i32 [ %30, %18 ], [ -6, %10 ], [ -6, %4 ]
  ret i32 %32
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @remap_pfn_range(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @dma_alloc_noncontiguous(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) #0 {
  %6 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 15
  %7 = load ptr, ptr %6, align 8
  %8 = icmp eq ptr %7, null
  %9 = select i1 %8, ptr @arm_dma_ops, ptr %7
  %10 = and i32 %4, -129
  %11 = icmp ne i32 %10, 0
  %12 = load i1, ptr @dma_alloc_noncontiguous.__already_done, align 1
  %13 = xor i1 %12, true
  %14 = select i1 %11, i1 %13, i1 false
  br i1 %14, label %15, label %16, !prof !12

15:                                               ; preds = %5
  store i1 true, ptr @dma_alloc_noncontiguous.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 633, i32 noundef 9, ptr noundef null) #6
  br label %16

16:                                               ; preds = %15, %5
  br i1 %11, label %92, label %17

17:                                               ; preds = %16
  %18 = getelementptr inbounds %struct.dma_map_ops, ptr %9, i32 0, i32 4
  %19 = load ptr, ptr %18, align 4
  %20 = icmp eq ptr %19, null
  br i1 %20, label %21, label %86

21:                                               ; preds = %17
  %22 = and i32 %3, 17
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %28, label %24, !prof !10

24:                                               ; preds = %21
  %25 = and i32 %3, 1
  %26 = icmp eq i32 %25, 0
  %27 = select i1 %26, i32 1, i32 2
  br label %28

28:                                               ; preds = %24, %21
  %29 = phi i32 [ 0, %21 ], [ %27, %24 ]
  %30 = getelementptr [3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 %29, i32 6
  %31 = load ptr, ptr %30, align 4
  %32 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %31, i32 noundef %3, i32 noundef 12) #7
  %33 = icmp eq ptr %32, null
  br i1 %33, label %92, label %34

34:                                               ; preds = %28
  %35 = tail call i32 @sg_alloc_table(ptr noundef nonnull %32, i32 noundef 1, i32 noundef %3) #6
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %37, label %85

37:                                               ; preds = %34
  %38 = load ptr, ptr %32, align 8
  %39 = getelementptr inbounds %struct.scatterlist, ptr %38, i32 0, i32 3
  %40 = load ptr, ptr %6, align 8
  %41 = icmp eq ptr %40, null
  %42 = select i1 %41, ptr @arm_dma_ops, ptr %40
  %43 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 17
  %44 = load i64, ptr %43, align 8
  %45 = icmp eq i64 %44, 0
  %46 = load i1, ptr @__dma_alloc_pages.__already_done, align 1
  %47 = xor i1 %46, true
  %48 = select i1 %45, i1 %47, i1 false
  br i1 %48, label %49, label %50, !prof !12

49:                                               ; preds = %37
  store i1 true, ptr @__dma_alloc_pages.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 546, i32 noundef 9, ptr noundef null) #6
  br label %50

50:                                               ; preds = %49, %37
  br i1 %45, label %84, label %51

51:                                               ; preds = %50
  %52 = and i32 %3, 7
  %53 = icmp ne i32 %52, 0
  %54 = load i1, ptr @__dma_alloc_pages.__already_done.5, align 1
  %55 = xor i1 %54, true
  %56 = select i1 %53, i1 %55, i1 false
  br i1 %56, label %57, label %58, !prof !12

57:                                               ; preds = %51
  store i1 true, ptr @__dma_alloc_pages.__already_done.5, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 548, i32 noundef 9, ptr noundef null) #6
  br label %58

58:                                               ; preds = %57, %51
  br i1 %53, label %84, label %59

59:                                               ; preds = %58
  %60 = getelementptr inbounds %struct.dma_map_ops, ptr %42, i32 0, i32 2
  %61 = load ptr, ptr %60, align 4
  %62 = icmp eq ptr %61, null
  br i1 %62, label %84, label %63

63:                                               ; preds = %59
  %64 = add i32 %1, 4095
  %65 = and i32 %64, -4096
  %66 = tail call ptr %61(ptr noundef %0, i32 noundef %65, ptr noundef %39, i32 noundef %2, i32 noundef %3) #6
  %67 = icmp eq ptr %66, null
  br i1 %67, label %84, label %68

68:                                               ; preds = %63
  %69 = ptrtoint ptr %66 to i32
  %70 = and i32 %69, 3
  %71 = icmp eq i32 %70, 0
  br i1 %71, label %73, label %72, !prof !10

72:                                               ; preds = %68
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 112, 0\0A.popsection", ""() #6, !srcloc !23
  unreachable

73:                                               ; preds = %68
  %74 = load ptr, ptr %32, align 8
  %75 = load i32, ptr %74, align 4
  %76 = and i32 %75, 3
  %77 = or i32 %76, %69
  store i32 %77, ptr %74, align 4
  %78 = getelementptr inbounds %struct.scatterlist, ptr %74, i32 0, i32 1
  store i32 0, ptr %78, align 4
  %79 = getelementptr inbounds %struct.scatterlist, ptr %74, i32 0, i32 2
  store i32 %65, ptr %79, align 4
  %80 = load ptr, ptr %32, align 8
  %81 = getelementptr inbounds %struct.scatterlist, ptr %80, i32 0, i32 2
  %82 = load i32, ptr %81, align 4
  %83 = getelementptr inbounds %struct.scatterlist, ptr %80, i32 0, i32 4
  store i32 %82, ptr %83, align 4
  br label %89

84:                                               ; preds = %63, %59, %58, %50
  tail call void @sg_free_table(ptr noundef nonnull %32) #6
  br label %85

85:                                               ; preds = %84, %34
  tail call void @kfree(ptr noundef nonnull %32) #6
  br label %92

86:                                               ; preds = %17
  %87 = tail call ptr %19(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) #6
  %88 = icmp eq ptr %87, null
  br i1 %88, label %92, label %89

89:                                               ; preds = %86, %73
  %90 = phi ptr [ %32, %73 ], [ %87, %86 ]
  %91 = getelementptr inbounds %struct.sg_table, ptr %90, i32 0, i32 1
  store i32 1, ptr %91, align 4
  br label %92

92:                                               ; preds = %89, %86, %85, %28, %16
  %93 = phi ptr [ null, %16 ], [ %90, %89 ], [ null, %86 ], [ null, %85 ], [ null, %28 ]
  ret ptr %93
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @dma_free_noncontiguous(ptr noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3) #0 {
  %5 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 15
  %6 = load ptr, ptr %5, align 8
  %7 = icmp eq ptr %6, null
  %8 = select i1 %7, ptr @arm_dma_ops, ptr %6
  %9 = getelementptr inbounds %struct.dma_map_ops, ptr %8, i32 0, i32 5
  %10 = load ptr, ptr %9, align 4
  %11 = icmp eq ptr %10, null
  br i1 %11, label %13, label %12

12:                                               ; preds = %4
  tail call void %10(ptr noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3) #6
  br label %27

13:                                               ; preds = %4
  %14 = getelementptr inbounds %struct.dma_map_ops, ptr %8, i32 0, i32 3
  %15 = load ptr, ptr %14, align 4
  %16 = icmp eq ptr %15, null
  br i1 %16, label %26, label %17

17:                                               ; preds = %13
  %18 = load ptr, ptr %2, align 4
  %19 = getelementptr inbounds %struct.scatterlist, ptr %18, i32 0, i32 3
  %20 = load i32, ptr %19, align 4
  %21 = load i32, ptr %18, align 4
  %22 = and i32 %21, -4
  %23 = inttoptr i32 %22 to ptr
  %24 = add i32 %1, 4095
  %25 = and i32 %24, -4096
  tail call void %15(ptr noundef %0, i32 noundef %25, ptr noundef %23, i32 noundef %20, i32 noundef %3) #6
  br label %26

26:                                               ; preds = %17, %13
  tail call void @sg_free_table(ptr noundef %2) #6
  tail call void @kfree(ptr noundef %2) #6
  br label %27

27:                                               ; preds = %26, %12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @dma_vmap_noncontiguous(ptr nocapture noundef readonly %0, i32 noundef %1, ptr nocapture noundef readonly %2) #0 {
  %4 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 15
  %5 = load ptr, ptr %4, align 8
  %6 = icmp eq ptr %5, null
  %7 = select i1 %6, ptr @arm_dma_ops, ptr %5
  %8 = getelementptr inbounds %struct.dma_map_ops, ptr %7, i32 0, i32 4
  %9 = load ptr, ptr %8, align 4
  %10 = icmp eq ptr %9, null
  br i1 %10, label %19, label %11

11:                                               ; preds = %3
  %12 = add i32 %1, 4095
  %13 = lshr i32 %12, 12
  %14 = getelementptr inbounds %struct.dma_sgt_handle, ptr %2, i32 0, i32 1
  %15 = load ptr, ptr %14, align 4
  %16 = load i32, ptr @pgprot_kernel, align 4
  %17 = or i32 %16, 512
  %18 = tail call ptr @vmap(ptr noundef %15, i32 noundef %13, i32 noundef 4, i32 noundef %17) #6
  br label %25

19:                                               ; preds = %3
  %20 = load ptr, ptr %2, align 4
  %21 = load i32, ptr %20, align 4
  %22 = and i32 %21, -4
  %23 = inttoptr i32 %22 to ptr
  %24 = tail call ptr @page_address(ptr noundef %23) #6
  br label %25

25:                                               ; preds = %19, %11
  %26 = phi ptr [ %18, %11 ], [ %24, %19 ]
  ret ptr %26
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @vmap(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @page_address(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @dma_vunmap_noncontiguous(ptr nocapture noundef readonly %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 15
  %4 = load ptr, ptr %3, align 8
  %5 = icmp eq ptr %4, null
  %6 = select i1 %5, ptr @arm_dma_ops, ptr %4
  %7 = getelementptr inbounds %struct.dma_map_ops, ptr %6, i32 0, i32 4
  %8 = load ptr, ptr %7, align 4
  %9 = icmp eq ptr %8, null
  br i1 %9, label %11, label %10

10:                                               ; preds = %2
  tail call void @vunmap(ptr noundef %1) #6
  br label %11

11:                                               ; preds = %10, %2
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @vunmap(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @dma_mmap_noncontiguous(ptr nocapture noundef readonly %0, ptr noundef %1, i32 noundef %2, ptr nocapture noundef readonly %3) #0 {
  %5 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 15
  %6 = load ptr, ptr %5, align 8
  %7 = icmp eq ptr %6, null
  %8 = select i1 %7, ptr @arm_dma_ops, ptr %6
  %9 = getelementptr inbounds %struct.dma_map_ops, ptr %8, i32 0, i32 4
  %10 = load ptr, ptr %9, align 4
  %11 = icmp eq ptr %10, null
  br i1 %11, label %30, label %12

12:                                               ; preds = %4
  %13 = add i32 %2, 4095
  %14 = lshr i32 %13, 12
  %15 = getelementptr inbounds %struct.vm_area_struct, ptr %1, i32 0, i32 13
  %16 = load i32, ptr %15, align 4
  %17 = icmp ugt i32 %14, %16
  br i1 %17, label %18, label %59

18:                                               ; preds = %12
  %19 = getelementptr inbounds %struct.vm_area_struct, ptr %1, i32 0, i32 1
  %20 = load i32, ptr %19, align 4
  %21 = load i32, ptr %1, align 4
  %22 = sub i32 %20, %21
  %23 = lshr i32 %22, 12
  %24 = sub i32 %14, %16
  %25 = icmp ugt i32 %23, %24
  br i1 %25, label %59, label %26

26:                                               ; preds = %18
  %27 = getelementptr inbounds %struct.dma_sgt_handle, ptr %3, i32 0, i32 1
  %28 = load ptr, ptr %27, align 4
  %29 = tail call i32 @vm_map_pages(ptr noundef %1, ptr noundef %28, i32 noundef %14) #6
  br label %59

30:                                               ; preds = %4
  %31 = load ptr, ptr %3, align 4
  %32 = load i32, ptr %31, align 4
  %33 = and i32 %32, -4
  %34 = add i32 %2, 4095
  %35 = lshr i32 %34, 12
  %36 = getelementptr inbounds %struct.vm_area_struct, ptr %1, i32 0, i32 13
  %37 = load i32, ptr %36, align 4
  %38 = icmp ugt i32 %35, %37
  br i1 %38, label %39, label %59

39:                                               ; preds = %30
  %40 = getelementptr inbounds %struct.vm_area_struct, ptr %1, i32 0, i32 1
  %41 = load i32, ptr %40, align 4
  %42 = load i32, ptr %1, align 4
  %43 = sub i32 %41, %42
  %44 = lshr i32 %43, 12
  %45 = sub i32 %35, %37
  %46 = icmp ugt i32 %44, %45
  br i1 %46, label %59, label %47

47:                                               ; preds = %39
  %48 = load ptr, ptr @mem_map, align 4
  %49 = ptrtoint ptr %48 to i32
  %50 = sub i32 %33, %49
  %51 = ashr exact i32 %50, 5
  %52 = load i32, ptr @__pv_phys_pfn_offset, align 4
  %53 = add i32 %52, %37
  %54 = add i32 %53, %51
  %55 = and i32 %43, -4096
  %56 = getelementptr inbounds %struct.vm_area_struct, ptr %1, i32 0, i32 7
  %57 = load i32, ptr %56, align 4
  %58 = tail call i32 @remap_pfn_range(ptr noundef %1, i32 noundef %42, i32 noundef %54, i32 noundef %55, i32 noundef %57) #6
  br label %59

59:                                               ; preds = %47, %39, %30, %26, %18, %12
  %60 = phi i32 [ %29, %26 ], [ -6, %18 ], [ -6, %12 ], [ %58, %47 ], [ -6, %39 ], [ -6, %30 ]
  ret i32 %60
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vm_map_pages(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @dma_supported(ptr noundef %0, i64 noundef %1) #0 {
  %3 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 15
  %4 = load ptr, ptr %3, align 8
  %5 = icmp eq ptr %4, null
  %6 = select i1 %5, ptr @arm_dma_ops, ptr %4
  %7 = getelementptr inbounds %struct.dma_map_ops, ptr %6, i32 0, i32 19
  %8 = load ptr, ptr %7, align 4
  %9 = icmp eq ptr %8, null
  br i1 %9, label %12, label %10

10:                                               ; preds = %2
  %11 = tail call i32 %8(ptr noundef %0, i64 noundef %1) #6
  br label %12

12:                                               ; preds = %10, %2
  %13 = phi i32 [ %11, %10 ], [ 1, %2 ]
  ret i32 %13
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @dma_set_mask(ptr noundef %0, i64 noundef %1) #0 {
  %3 = and i64 %1, 4294967295
  %4 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 16
  %5 = load ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %22, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 15
  %9 = load ptr, ptr %8, align 8
  %10 = icmp eq ptr %9, null
  %11 = select i1 %10, ptr @arm_dma_ops, ptr %9
  %12 = getelementptr inbounds %struct.dma_map_ops, ptr %11, i32 0, i32 19
  %13 = load ptr, ptr %12, align 4
  %14 = icmp eq ptr %13, null
  br i1 %14, label %20, label %15

15:                                               ; preds = %7
  %16 = tail call i32 %13(ptr noundef %0, i64 noundef %3) #6
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %22, label %18

18:                                               ; preds = %15
  %19 = load ptr, ptr %4, align 4
  br label %20

20:                                               ; preds = %18, %7
  %21 = phi ptr [ %19, %18 ], [ %5, %7 ]
  store i64 %3, ptr %21, align 8
  br label %22

22:                                               ; preds = %20, %15, %2
  %23 = phi i32 [ 0, %20 ], [ -5, %15 ], [ -5, %2 ]
  ret i32 %23
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @dma_set_coherent_mask(ptr noundef %0, i64 noundef %1) #0 {
  %3 = and i64 %1, 4294967295
  %4 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 15
  %5 = load ptr, ptr %4, align 8
  %6 = icmp eq ptr %5, null
  %7 = select i1 %6, ptr @arm_dma_ops, ptr %5
  %8 = getelementptr inbounds %struct.dma_map_ops, ptr %7, i32 0, i32 19
  %9 = load ptr, ptr %8, align 4
  %10 = icmp eq ptr %9, null
  br i1 %10, label %14, label %11

11:                                               ; preds = %2
  %12 = tail call i32 %9(ptr noundef %0, i64 noundef %3) #6
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %16, label %14

14:                                               ; preds = %11, %2
  %15 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 17
  store i64 %3, ptr %15, align 8
  br label %16

16:                                               ; preds = %14, %11
  %17 = phi i32 [ 0, %14 ], [ -5, %11 ]
  ret i32 %17
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @dma_max_mapping_size(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 15
  %3 = load ptr, ptr %2, align 8
  %4 = icmp eq ptr %3, null
  %5 = select i1 %4, ptr @arm_dma_ops, ptr %3
  %6 = getelementptr inbounds %struct.dma_map_ops, ptr %5, i32 0, i32 21
  %7 = load ptr, ptr %6, align 4
  %8 = icmp eq ptr %7, null
  br i1 %8, label %11, label %9

9:                                                ; preds = %1
  %10 = tail call i32 %7(ptr noundef %0) #6
  br label %11

11:                                               ; preds = %9, %1
  %12 = phi i32 [ %10, %9 ], [ -1, %1 ]
  ret i32 %12
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local zeroext i1 @dma_need_sync(ptr noundef %0, i32 noundef %1) #0 {
  %3 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 15
  %4 = load ptr, ptr %3, align 8
  %5 = icmp eq ptr %4, null
  %6 = select i1 %5, ptr @arm_dma_ops, ptr %4
  %7 = getelementptr inbounds %struct.dma_map_ops, ptr %6, i32 0, i32 14
  %8 = load ptr, ptr %7, align 4
  %9 = icmp eq ptr %8, null
  br i1 %9, label %10, label %14

10:                                               ; preds = %2
  %11 = getelementptr inbounds %struct.dma_map_ops, ptr %6, i32 0, i32 15
  %12 = load ptr, ptr %11, align 4
  %13 = icmp ne ptr %12, null
  br label %14

14:                                               ; preds = %10, %2
  %15 = phi i1 [ true, %2 ], [ %13, %10 ]
  ret i1 %15
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @dma_get_merge_boundary(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 15
  %3 = load ptr, ptr %2, align 8
  %4 = icmp eq ptr %3, null
  %5 = select i1 %4, ptr @arm_dma_ops, ptr %3
  %6 = getelementptr inbounds %struct.dma_map_ops, ptr %5, i32 0, i32 22
  %7 = load ptr, ptr %6, align 4
  %8 = icmp eq ptr %7, null
  br i1 %8, label %11, label %9

9:                                                ; preds = %1
  %10 = tail call i32 %7(ptr noundef %0) #6
  br label %11

11:                                               ; preds = %9, %1
  %12 = phi i32 [ %10, %9 ], [ 0, %1 ]
  ret i32 %12
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sg_alloc_table(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @sg_free_table(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nounwind }
attributes #7 = { nounwind allocsize(2) }

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
!8 = !{i32 0, i32 33}
!9 = !{i64 791612}
!10 = !{!"branch_weights", i32 2000, i32 1}
!11 = !{!"auto-init"}
!12 = !{!"branch_weights", i32 1, i32 2000}
!13 = !{i64 2153356555, i64 2153357040, i64 2153356592, i64 2153356648, i64 2153356682, i64 2153356706, i64 2153356747, i64 2153356768, i64 2153356796, i64 2153356830}
!14 = !{i64 2153359889, i64 2153360374, i64 2153359926, i64 2153359982, i64 2153360016, i64 2153360040, i64 2153360081, i64 2153360102, i64 2153360130, i64 2153360164}
!15 = !{i64 2153366314, i64 2153366799, i64 2153366351, i64 2153366407, i64 2153366441, i64 2153366465, i64 2153366506, i64 2153366527, i64 2153366555, i64 2153366589}
!16 = !{i64 2153371895, i64 2153372380, i64 2153371932, i64 2153371988, i64 2153372022, i64 2153372046, i64 2153372087, i64 2153372108, i64 2153372136, i64 2153372170}
!17 = !{i64 2153374232, i64 2153374717, i64 2153374269, i64 2153374325, i64 2153374359, i64 2153374383, i64 2153374424, i64 2153374445, i64 2153374473, i64 2153374507}
!18 = !{i64 2153377514, i64 2153377999, i64 2153377551, i64 2153377607, i64 2153377641, i64 2153377665, i64 2153377706, i64 2153377727, i64 2153377755, i64 2153377789}
!19 = !{i64 2153379826, i64 2153380311, i64 2153379863, i64 2153379919, i64 2153379953, i64 2153379977, i64 2153380018, i64 2153380039, i64 2153380067, i64 2153380101}
!20 = !{i64 2153382248, i64 2153382733, i64 2153382285, i64 2153382341, i64 2153382375, i64 2153382399, i64 2153382440, i64 2153382461, i64 2153382489, i64 2153382523}
!21 = !{i64 2153384736, i64 2153385221, i64 2153384773, i64 2153384829, i64 2153384863, i64 2153384887, i64 2153384928, i64 2153384949, i64 2153384977, i64 2153385011}
!22 = !{i64 2153387070, i64 2153387555, i64 2153387107, i64 2153387163, i64 2153387197, i64 2153387221, i64 2153387262, i64 2153387283, i64 2153387311, i64 2153387345}
!23 = !{i64 2153224701, i64 2153225193, i64 2153224738, i64 2153224794, i64 2153224828, i64 2153224852, i64 2153224893, i64 2153224914, i64 2153224942, i64 2153224976}
