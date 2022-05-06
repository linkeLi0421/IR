; ModuleID = '/llk/IR/drivers/gpu/drm/drm_gem_shmem_helper.c_pt.bc'
source_filename = "../drivers/gpu/drm/drm_gem_shmem_helper.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_drm_gem_shmem_create:\09\09\09\09\09"
module asm "\09.asciz \09\22drm_gem_shmem_create\22\09\09\09\09\09"
module asm "__kstrtabns_drm_gem_shmem_create:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_drm_gem_shmem_free:\09\09\09\09\09"
module asm "\09.asciz \09\22drm_gem_shmem_free\22\09\09\09\09\09"
module asm "__kstrtabns_drm_gem_shmem_free:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_drm_gem_shmem_get_pages:\09\09\09\09\09"
module asm "\09.asciz \09\22drm_gem_shmem_get_pages\22\09\09\09\09\09"
module asm "__kstrtabns_drm_gem_shmem_get_pages:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_drm_gem_shmem_put_pages:\09\09\09\09\09"
module asm "\09.asciz \09\22drm_gem_shmem_put_pages\22\09\09\09\09\09"
module asm "__kstrtabns_drm_gem_shmem_put_pages:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_drm_gem_shmem_pin:\09\09\09\09\09"
module asm "\09.asciz \09\22drm_gem_shmem_pin\22\09\09\09\09\09"
module asm "__kstrtabns_drm_gem_shmem_pin:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_drm_gem_shmem_unpin:\09\09\09\09\09"
module asm "\09.asciz \09\22drm_gem_shmem_unpin\22\09\09\09\09\09"
module asm "__kstrtabns_drm_gem_shmem_unpin:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_drm_gem_shmem_vmap:\09\09\09\09\09"
module asm "\09.asciz \09\22drm_gem_shmem_vmap\22\09\09\09\09\09"
module asm "__kstrtabns_drm_gem_shmem_vmap:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_drm_gem_shmem_vunmap:\09\09\09\09\09"
module asm "\09.asciz \09\22drm_gem_shmem_vunmap\22\09\09\09\09\09"
module asm "__kstrtabns_drm_gem_shmem_vunmap:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_drm_gem_shmem_madvise:\09\09\09\09\09"
module asm "\09.asciz \09\22drm_gem_shmem_madvise\22\09\09\09\09\09"
module asm "__kstrtabns_drm_gem_shmem_madvise:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_drm_gem_shmem_purge_locked:\09\09\09\09\09"
module asm "\09.asciz \09\22drm_gem_shmem_purge_locked\22\09\09\09\09\09"
module asm "__kstrtabns_drm_gem_shmem_purge_locked:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_drm_gem_shmem_purge:\09\09\09\09\09"
module asm "\09.asciz \09\22drm_gem_shmem_purge\22\09\09\09\09\09"
module asm "__kstrtabns_drm_gem_shmem_purge:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_drm_gem_shmem_dumb_create:\09\09\09\09\09"
module asm "\09.asciz \09\22drm_gem_shmem_dumb_create\22\09\09\09\09\09"
module asm "__kstrtabns_drm_gem_shmem_dumb_create:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_drm_gem_shmem_mmap:\09\09\09\09\09"
module asm "\09.asciz \09\22drm_gem_shmem_mmap\22\09\09\09\09\09"
module asm "__kstrtabns_drm_gem_shmem_mmap:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_drm_gem_shmem_print_info:\09\09\09\09\09"
module asm "\09.asciz \09\22drm_gem_shmem_print_info\22\09\09\09\09\09"
module asm "__kstrtabns_drm_gem_shmem_print_info:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_drm_gem_shmem_get_sg_table:\09\09\09\09\09"
module asm "\09.asciz \09\22drm_gem_shmem_get_sg_table\22\09\09\09\09\09"
module asm "__kstrtabns_drm_gem_shmem_get_sg_table:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_drm_gem_shmem_get_pages_sgt:\09\09\09\09\09"
module asm "\09.asciz \09\22drm_gem_shmem_get_pages_sgt\22\09\09\09\09\09"
module asm "__kstrtabns_drm_gem_shmem_get_pages_sgt:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_drm_gem_shmem_prime_import_sg_table:\09\09\09\09\09"
module asm "\09.asciz \09\22drm_gem_shmem_prime_import_sg_table\22\09\09\09\09\09"
module asm "__kstrtabns_drm_gem_shmem_prime_import_sg_table:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.vm_operations_struct = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.drm_gem_object_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.lock_class_key = type {}
%struct.drm_device = type { i32, %struct.kref, ptr, %struct.anon.67, ptr, ptr, ptr, ptr, i8, ptr, i32, i8, ptr, ptr, %struct.mutex, %struct.mutex, %struct.atomic_t, %struct.mutex, %struct.list_head, %struct.list_head, %struct.mutex, %struct.list_head, i8, ptr, %struct.spinlock, %struct.spinlock, i32, %struct.list_head, %struct.spinlock, i32, %struct.drm_mode_config, %struct.mutex, %struct.idr, ptr, ptr, i32, ptr, %struct.list_head, ptr, %struct.list_head, %struct.mutex, %struct.idr, %struct.list_head, %struct.drm_open_hash, %struct.list_head, ptr, i32, i32, %struct.spinlock, i32, %struct.atomic_t, %struct.anon.74, ptr, i32, ptr, i8, i32 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.anon.67 = type { %struct.list_head, ptr, %struct.spinlock }
%struct.drm_mode_config = type { %struct.mutex, %struct.drm_modeset_lock, ptr, %struct.mutex, %struct.idr, %struct.idr, %struct.mutex, i32, %struct.list_head, %struct.spinlock, i32, %struct.ida, %struct.list_head, %struct.llist_head, %struct.work_struct, i32, %struct.list_head, i32, %struct.list_head, i32, %struct.list_head, %struct.list_head, %struct.list_head, i32, i32, i32, i32, ptr, i32, i8, i8, i8, %struct.delayed_work, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i8, i8, i8, i8, i8, i8, ptr, i32, i32, ptr, ptr }
%struct.drm_modeset_lock = type { %struct.ww_mutex, %struct.list_head }
%struct.ww_mutex = type { %struct.mutex, ptr }
%struct.ida = type { %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.llist_head = type { ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32 }
%struct.hlist_node = type { ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.drm_open_hash = type { ptr, i8 }
%struct.list_head = type { ptr, ptr }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.atomic_t = type { i32 }
%struct.anon.74 = type { i32, ptr }
%struct.drm_driver = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, ptr, ptr, ptr, i32, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32 }
%struct.drm_gem_object = type { %struct.kref, i32, ptr, ptr, %struct.drm_vma_offset_node, i32, i32, ptr, ptr, ptr, %struct.dma_resv, ptr }
%struct.drm_vma_offset_node = type { %struct.rwlock_t, %struct.drm_mm_node, %struct.rb_root, ptr }
%struct.rwlock_t = type { %struct.arch_rwlock_t }
%struct.arch_rwlock_t = type { i32 }
%struct.drm_mm_node = type { i32, i64, i64, ptr, %struct.list_head, %struct.list_head, %struct.rb_node, %struct.rb_node, %struct.rb_node, i64, i64, i64, i32 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.rb_root = type { ptr }
%struct.dma_resv = type { %struct.ww_mutex, %struct.seqcount_ww_mutex, ptr, ptr }
%struct.seqcount_ww_mutex = type { %struct.seqcount }
%struct.seqcount = type { i32 }
%struct.drm_gem_shmem_object = type { %struct.drm_gem_object, %struct.mutex, ptr, i32, i32, %struct.list_head, i8, ptr, %struct.mutex, ptr, i32, i8 }
%struct.file = type { %union.anon.13, %struct.path, ptr, ptr, %struct.spinlock, i32, %struct.atomic_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, ptr, %struct.file_ra_state, i64, ptr, ptr, ptr, i32, i32 }
%union.anon.13 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.path = type { ptr, ptr }
%struct.fown_struct = type { %struct.rwlock_t, ptr, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.kuid_t = type { i32 }
%struct.file_ra_state = type { i32, i32, i32, i32, i32, i64 }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head }
%struct.sg_table = type { ptr, i32, i32 }
%struct.dma_buf_map = type { %union.anon.68, i8 }
%union.anon.68 = type { ptr }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.70, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.71, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.72, ptr, %struct.address_space, %struct.list_head, %union.anon.73, i32, i32, ptr, ptr }
%struct.kgid_t = type { i32 }
%union.anon.70 = type { i32 }
%struct.timespec64 = type { i64, i32 }
%union.anon.71 = type { %struct.callback_head }
%struct.atomic64_t = type { i64 }
%union.anon.72 = type { ptr }
%union.anon.73 = type { ptr }
%struct.drm_mode_create_dumb = type { i32, i32, i32, i32, i32, i32, i64 }
%struct.vm_area_struct = type { i32, i32, ptr, ptr, %struct.rb_node, i32, ptr, i32, i32, %union.anon.9, %struct.list_head, ptr, ptr, i32, ptr, ptr, %struct.atomic_t, %struct.vm_userfaultfd_ctx }
%union.anon.9 = type { %struct.anon.10 }
%struct.anon.10 = type { %struct.rb_node, i32 }
%struct.vm_userfaultfd_ctx = type {}
%struct.anon.11 = type { ptr, i32, i32, i32 }

@__UNIQUE_ID_import_ns261 = internal constant [18 x i8] c"import_ns=DMA_BUF\00", section ".modinfo", align 1
@__kstrtab_drm_gem_shmem_create = external dso_local constant [0 x i8], align 1
@__kstrtabns_drm_gem_shmem_create = external dso_local constant [0 x i8], align 1
@__ksymtab_drm_gem_shmem_create = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @drm_gem_shmem_create to i32), ptr @__kstrtab_drm_gem_shmem_create, ptr @__kstrtabns_drm_gem_shmem_create }, section "___ksymtab_gpl+drm_gem_shmem_create", align 4
@.str = private unnamed_addr constant [39 x i8] c"drivers/gpu/drm/drm_gem_shmem_helper.c\00", align 1
@__kstrtab_drm_gem_shmem_free = external dso_local constant [0 x i8], align 1
@__kstrtabns_drm_gem_shmem_free = external dso_local constant [0 x i8], align 1
@__ksymtab_drm_gem_shmem_free = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @drm_gem_shmem_free to i32), ptr @__kstrtab_drm_gem_shmem_free, ptr @__kstrtabns_drm_gem_shmem_free }, section "___ksymtab_gpl+drm_gem_shmem_free", align 4
@__kstrtab_drm_gem_shmem_get_pages = external dso_local constant [0 x i8], align 1
@__kstrtabns_drm_gem_shmem_get_pages = external dso_local constant [0 x i8], align 1
@__ksymtab_drm_gem_shmem_get_pages = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @drm_gem_shmem_get_pages to i32), ptr @__kstrtab_drm_gem_shmem_get_pages, ptr @__kstrtabns_drm_gem_shmem_get_pages }, section "___ksymtab+drm_gem_shmem_get_pages", align 4
@__kstrtab_drm_gem_shmem_put_pages = external dso_local constant [0 x i8], align 1
@__kstrtabns_drm_gem_shmem_put_pages = external dso_local constant [0 x i8], align 1
@__ksymtab_drm_gem_shmem_put_pages = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @drm_gem_shmem_put_pages to i32), ptr @__kstrtab_drm_gem_shmem_put_pages, ptr @__kstrtabns_drm_gem_shmem_put_pages }, section "___ksymtab+drm_gem_shmem_put_pages", align 4
@__kstrtab_drm_gem_shmem_pin = external dso_local constant [0 x i8], align 1
@__kstrtabns_drm_gem_shmem_pin = external dso_local constant [0 x i8], align 1
@__ksymtab_drm_gem_shmem_pin = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @drm_gem_shmem_pin to i32), ptr @__kstrtab_drm_gem_shmem_pin, ptr @__kstrtabns_drm_gem_shmem_pin }, section "___ksymtab+drm_gem_shmem_pin", align 4
@__kstrtab_drm_gem_shmem_unpin = external dso_local constant [0 x i8], align 1
@__kstrtabns_drm_gem_shmem_unpin = external dso_local constant [0 x i8], align 1
@__ksymtab_drm_gem_shmem_unpin = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @drm_gem_shmem_unpin to i32), ptr @__kstrtab_drm_gem_shmem_unpin, ptr @__kstrtabns_drm_gem_shmem_unpin }, section "___ksymtab+drm_gem_shmem_unpin", align 4
@__kstrtab_drm_gem_shmem_vmap = external dso_local constant [0 x i8], align 1
@__kstrtabns_drm_gem_shmem_vmap = external dso_local constant [0 x i8], align 1
@__ksymtab_drm_gem_shmem_vmap = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @drm_gem_shmem_vmap to i32), ptr @__kstrtab_drm_gem_shmem_vmap, ptr @__kstrtabns_drm_gem_shmem_vmap }, section "___ksymtab+drm_gem_shmem_vmap", align 4
@__kstrtab_drm_gem_shmem_vunmap = external dso_local constant [0 x i8], align 1
@__kstrtabns_drm_gem_shmem_vunmap = external dso_local constant [0 x i8], align 1
@__ksymtab_drm_gem_shmem_vunmap = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @drm_gem_shmem_vunmap to i32), ptr @__kstrtab_drm_gem_shmem_vunmap, ptr @__kstrtabns_drm_gem_shmem_vunmap }, section "___ksymtab+drm_gem_shmem_vunmap", align 4
@__kstrtab_drm_gem_shmem_madvise = external dso_local constant [0 x i8], align 1
@__kstrtabns_drm_gem_shmem_madvise = external dso_local constant [0 x i8], align 1
@__ksymtab_drm_gem_shmem_madvise = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @drm_gem_shmem_madvise to i32), ptr @__kstrtab_drm_gem_shmem_madvise, ptr @__kstrtabns_drm_gem_shmem_madvise }, section "___ksymtab+drm_gem_shmem_madvise", align 4
@__kstrtab_drm_gem_shmem_purge_locked = external dso_local constant [0 x i8], align 1
@__kstrtabns_drm_gem_shmem_purge_locked = external dso_local constant [0 x i8], align 1
@__ksymtab_drm_gem_shmem_purge_locked = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @drm_gem_shmem_purge_locked to i32), ptr @__kstrtab_drm_gem_shmem_purge_locked, ptr @__kstrtabns_drm_gem_shmem_purge_locked }, section "___ksymtab+drm_gem_shmem_purge_locked", align 4
@__kstrtab_drm_gem_shmem_purge = external dso_local constant [0 x i8], align 1
@__kstrtabns_drm_gem_shmem_purge = external dso_local constant [0 x i8], align 1
@__ksymtab_drm_gem_shmem_purge = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @drm_gem_shmem_purge to i32), ptr @__kstrtab_drm_gem_shmem_purge, ptr @__kstrtabns_drm_gem_shmem_purge }, section "___ksymtab+drm_gem_shmem_purge", align 4
@__kstrtab_drm_gem_shmem_dumb_create = external dso_local constant [0 x i8], align 1
@__kstrtabns_drm_gem_shmem_dumb_create = external dso_local constant [0 x i8], align 1
@__ksymtab_drm_gem_shmem_dumb_create = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @drm_gem_shmem_dumb_create to i32), ptr @__kstrtab_drm_gem_shmem_dumb_create, ptr @__kstrtabns_drm_gem_shmem_dumb_create }, section "___ksymtab_gpl+drm_gem_shmem_dumb_create", align 4
@drm_gem_shmem_vm_ops = internal constant %struct.vm_operations_struct { ptr @drm_gem_shmem_vm_open, ptr @drm_gem_shmem_vm_close, ptr null, ptr null, ptr null, ptr @drm_gem_shmem_fault, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@__kstrtab_drm_gem_shmem_mmap = external dso_local constant [0 x i8], align 1
@__kstrtabns_drm_gem_shmem_mmap = external dso_local constant [0 x i8], align 1
@__ksymtab_drm_gem_shmem_mmap = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @drm_gem_shmem_mmap to i32), ptr @__kstrtab_drm_gem_shmem_mmap, ptr @__kstrtabns_drm_gem_shmem_mmap }, section "___ksymtab_gpl+drm_gem_shmem_mmap", align 4
@.str.1 = private unnamed_addr constant [24 x i8] c"%.*spages_use_count=%u\0A\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"\09\09\09\09\09X\00", align 1
@.str.3 = private unnamed_addr constant [23 x i8] c"%.*svmap_use_count=%u\0A\00", align 1
@.str.4 = private unnamed_addr constant [14 x i8] c"%.*svaddr=%p\0A\00", align 1
@__kstrtab_drm_gem_shmem_print_info = external dso_local constant [0 x i8], align 1
@__kstrtabns_drm_gem_shmem_print_info = external dso_local constant [0 x i8], align 1
@__ksymtab_drm_gem_shmem_print_info = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @drm_gem_shmem_print_info to i32), ptr @__kstrtab_drm_gem_shmem_print_info, ptr @__kstrtabns_drm_gem_shmem_print_info }, section "___ksymtab+drm_gem_shmem_print_info", align 4
@__kstrtab_drm_gem_shmem_get_sg_table = external dso_local constant [0 x i8], align 1
@__kstrtabns_drm_gem_shmem_get_sg_table = external dso_local constant [0 x i8], align 1
@__ksymtab_drm_gem_shmem_get_sg_table = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @drm_gem_shmem_get_sg_table to i32), ptr @__kstrtab_drm_gem_shmem_get_sg_table, ptr @__kstrtabns_drm_gem_shmem_get_sg_table }, section "___ksymtab_gpl+drm_gem_shmem_get_sg_table", align 4
@__kstrtab_drm_gem_shmem_get_pages_sgt = external dso_local constant [0 x i8], align 1
@__kstrtabns_drm_gem_shmem_get_pages_sgt = external dso_local constant [0 x i8], align 1
@__ksymtab_drm_gem_shmem_get_pages_sgt = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @drm_gem_shmem_get_pages_sgt to i32), ptr @__kstrtab_drm_gem_shmem_get_pages_sgt, ptr @__kstrtabns_drm_gem_shmem_get_pages_sgt }, section "___ksymtab_gpl+drm_gem_shmem_get_pages_sgt", align 4
@.str.5 = private unnamed_addr constant [12 x i8] c"size = %zu\0A\00", align 1
@__kstrtab_drm_gem_shmem_prime_import_sg_table = external dso_local constant [0 x i8], align 1
@__kstrtabns_drm_gem_shmem_prime_import_sg_table = external dso_local constant [0 x i8], align 1
@__ksymtab_drm_gem_shmem_prime_import_sg_table = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @drm_gem_shmem_prime_import_sg_table to i32), ptr @__kstrtab_drm_gem_shmem_prime_import_sg_table, ptr @__kstrtabns_drm_gem_shmem_prime_import_sg_table }, section "___ksymtab_gpl+drm_gem_shmem_prime_import_sg_table", align 4
@__UNIQUE_ID_description262 = internal constant [48 x i8] c"description=DRM SHMEM memory-management helpers\00", section ".modinfo", align 1
@__UNIQUE_ID_import_ns263 = internal constant [18 x i8] c"import_ns=DMA_BUF\00", section ".modinfo", align 1
@__UNIQUE_ID_license264 = internal constant [15 x i8] c"license=GPL v2\00", section ".modinfo", align 1
@drm_gem_shmem_funcs = internal constant %struct.drm_gem_object_funcs { ptr @drm_gem_shmem_object_free, ptr null, ptr null, ptr @drm_gem_shmem_object_print_info, ptr null, ptr @drm_gem_shmem_object_pin, ptr @drm_gem_shmem_object_unpin, ptr @drm_gem_shmem_object_get_sg_table, ptr @drm_gem_shmem_object_vmap, ptr @drm_gem_shmem_object_vunmap, ptr @drm_gem_shmem_object_mmap, ptr null }, align 4
@__drm_gem_shmem_create.__key = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.6 = private unnamed_addr constant [19 x i8] c"&shmem->pages_lock\00", align 1
@__drm_gem_shmem_create.__key.7 = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.8 = private unnamed_addr constant [18 x i8] c"&shmem->vmap_lock\00", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@.str.9 = private unnamed_addr constant [27 x i8] c"Failed to get pages (%ld)\0A\00", align 1
@drm_gem_shmem_put_pages_locked.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@pgprot_kernel = external dso_local local_unnamed_addr global i32, align 4
@.str.10 = private unnamed_addr constant [32 x i8] c"Failed to vmap pages, error %d\0A\00", align 1
@drm_gem_shmem_vunmap_locked.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@drm_gem_shmem_vm_open.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@drm_gem_shmem_fault.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@mem_map = external dso_local local_unnamed_addr global ptr, align 4
@__pv_phys_pfn_offset = external dso_local local_unnamed_addr global i32, align 4
@llvm.compiler.used = appending global [21 x ptr] [ptr @__UNIQUE_ID_description262, ptr @__UNIQUE_ID_import_ns261, ptr @__UNIQUE_ID_import_ns263, ptr @__UNIQUE_ID_license264, ptr @__ksymtab_drm_gem_shmem_create, ptr @__ksymtab_drm_gem_shmem_dumb_create, ptr @__ksymtab_drm_gem_shmem_free, ptr @__ksymtab_drm_gem_shmem_get_pages, ptr @__ksymtab_drm_gem_shmem_get_pages_sgt, ptr @__ksymtab_drm_gem_shmem_get_sg_table, ptr @__ksymtab_drm_gem_shmem_madvise, ptr @__ksymtab_drm_gem_shmem_mmap, ptr @__ksymtab_drm_gem_shmem_pin, ptr @__ksymtab_drm_gem_shmem_prime_import_sg_table, ptr @__ksymtab_drm_gem_shmem_print_info, ptr @__ksymtab_drm_gem_shmem_purge, ptr @__ksymtab_drm_gem_shmem_purge_locked, ptr @__ksymtab_drm_gem_shmem_put_pages, ptr @__ksymtab_drm_gem_shmem_unpin, ptr @__ksymtab_drm_gem_shmem_vmap, ptr @__ksymtab_drm_gem_shmem_vunmap], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @drm_gem_shmem_create(ptr noundef %0, i32 noundef %1) #0 {
  %3 = tail call fastcc ptr @__drm_gem_shmem_create(ptr noundef %0, i32 noundef %1, i1 noundef zeroext false)
  ret ptr %3
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc ptr @__drm_gem_shmem_create(ptr noundef %0, i32 noundef %1, i1 noundef zeroext %2) unnamed_addr #0 {
  %4 = add i32 %1, 4095
  %5 = and i32 %4, -4096
  %6 = getelementptr inbounds %struct.drm_device, ptr %0, i32 0, i32 4
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.drm_driver, ptr %7, i32 0, i32 9
  %9 = load ptr, ptr %8, align 4
  %10 = icmp eq ptr %9, null
  br i1 %10, label %14, label %11

11:                                               ; preds = %3
  %12 = tail call ptr %9(ptr noundef %0, i32 noundef %5) #4
  %13 = icmp ugt ptr %12, inttoptr (i32 -4096 to ptr)
  br i1 %13, label %48, label %18

14:                                               ; preds = %3
  %15 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %16 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %15, i32 noundef 3520, i32 noundef 288) #5
  %17 = icmp eq ptr %16, null
  br i1 %17, label %48, label %18

18:                                               ; preds = %14, %11
  %19 = phi ptr [ %12, %11 ], [ %16, %14 ]
  %20 = getelementptr inbounds %struct.drm_gem_object, ptr %19, i32 0, i32 11
  %21 = load ptr, ptr %20, align 8
  %22 = icmp eq ptr %21, null
  br i1 %22, label %23, label %24

23:                                               ; preds = %18
  store ptr @drm_gem_shmem_funcs, ptr %20, align 8
  br label %24

24:                                               ; preds = %23, %18
  br i1 %2, label %25, label %27

25:                                               ; preds = %24
  tail call void @drm_gem_private_object_init(ptr noundef %0, ptr noundef %19, i32 noundef %5) #4
  %26 = getelementptr inbounds %struct.drm_gem_shmem_object, ptr %19, i32 0, i32 11
  store i8 0, ptr %26, align 4
  br label %30

27:                                               ; preds = %24
  %28 = tail call i32 @drm_gem_object_init(ptr noundef %0, ptr noundef %19, i32 noundef %5) #4
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %30, label %45

30:                                               ; preds = %27, %25
  %31 = tail call i32 @drm_gem_create_mmap_offset(ptr noundef %19) #4
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %33, label %44

33:                                               ; preds = %30
  %34 = getelementptr inbounds %struct.drm_gem_shmem_object, ptr %19, i32 0, i32 1
  tail call void @__mutex_init(ptr noundef %34, ptr noundef nonnull @.str.6, ptr noundef nonnull @__drm_gem_shmem_create.__key) #4
  %35 = getelementptr inbounds %struct.drm_gem_shmem_object, ptr %19, i32 0, i32 8
  tail call void @__mutex_init(ptr noundef %35, ptr noundef nonnull @.str.8, ptr noundef nonnull @__drm_gem_shmem_create.__key.7) #4
  %36 = getelementptr inbounds %struct.drm_gem_shmem_object, ptr %19, i32 0, i32 5
  store volatile ptr %36, ptr %36, align 4
  %37 = getelementptr inbounds %struct.drm_gem_shmem_object, ptr %19, i32 0, i32 5, i32 1
  store ptr %36, ptr %37, align 4
  br i1 %2, label %48, label %38

38:                                               ; preds = %33
  %39 = getelementptr inbounds %struct.drm_gem_object, ptr %19, i32 0, i32 3
  %40 = load ptr, ptr %39, align 4
  %41 = getelementptr inbounds %struct.file, ptr %40, i32 0, i32 17
  %42 = load ptr, ptr %41, align 8
  %43 = getelementptr inbounds %struct.address_space, ptr %42, i32 0, i32 3
  store i32 1076418, ptr %43, align 4
  br label %48

44:                                               ; preds = %30
  tail call void @drm_gem_object_release(ptr noundef %19) #4
  br label %45

45:                                               ; preds = %44, %27
  %46 = phi i32 [ %28, %27 ], [ %31, %44 ]
  tail call void @kfree(ptr noundef %19) #4
  %47 = inttoptr i32 %46 to ptr
  br label %48

48:                                               ; preds = %45, %38, %33, %14, %11
  %49 = phi ptr [ %47, %45 ], [ %19, %38 ], [ %19, %33 ], [ %12, %11 ], [ inttoptr (i32 -12 to ptr), %14 ]
  ret ptr %49
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @drm_gem_shmem_free(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.drm_gem_shmem_object, ptr %0, i32 0, i32 10
  %3 = load i32, ptr %2, align 8
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %6, label %5, !prof !8

5:                                                ; preds = %1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 141, i32 noundef 9, ptr noundef null) #4
  br label %6

6:                                                ; preds = %5, %1
  %7 = getelementptr inbounds %struct.drm_gem_object, ptr %0, i32 0, i32 8
  %8 = load ptr, ptr %7, align 4
  %9 = icmp eq ptr %8, null
  %10 = getelementptr inbounds %struct.drm_gem_shmem_object, ptr %0, i32 0, i32 7
  %11 = load ptr, ptr %10, align 4
  br i1 %9, label %13, label %12

12:                                               ; preds = %6
  tail call void @drm_prime_gem_destroy(ptr noundef %0, ptr noundef %11) #4
  br label %30

13:                                               ; preds = %6
  %14 = icmp eq ptr %11, null
  br i1 %14, label %25, label %15

15:                                               ; preds = %13
  %16 = getelementptr inbounds %struct.drm_gem_object, ptr %0, i32 0, i32 2
  %17 = load ptr, ptr %16, align 8
  %18 = getelementptr inbounds %struct.drm_device, ptr %17, i32 0, i32 2
  %19 = load ptr, ptr %18, align 4
  %20 = load ptr, ptr %11, align 4
  %21 = getelementptr inbounds %struct.sg_table, ptr %11, i32 0, i32 2
  %22 = load i32, ptr %21, align 4
  tail call void @dma_unmap_sg_attrs(ptr noundef %19, ptr noundef %20, i32 noundef %22, i32 noundef 0, i32 noundef 0) #4
  %23 = load ptr, ptr %10, align 4
  tail call void @sg_free_table(ptr noundef %23) #4
  %24 = load ptr, ptr %10, align 4
  tail call void @kfree(ptr noundef %24) #4
  br label %25

25:                                               ; preds = %15, %13
  %26 = getelementptr inbounds %struct.drm_gem_shmem_object, ptr %0, i32 0, i32 2
  %27 = load ptr, ptr %26, align 4
  %28 = icmp eq ptr %27, null
  br i1 %28, label %30, label %29

29:                                               ; preds = %25
  tail call void @drm_gem_shmem_put_pages(ptr noundef %0)
  br label %30

30:                                               ; preds = %29, %25, %12
  %31 = getelementptr inbounds %struct.drm_gem_shmem_object, ptr %0, i32 0, i32 3
  %32 = load i32, ptr %31, align 8
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %35, label %34, !prof !8

34:                                               ; preds = %30
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 156, i32 noundef 9, ptr noundef null) #4
  br label %35

35:                                               ; preds = %34, %30
  tail call void @drm_gem_object_release(ptr noundef %0) #4
  tail call void @kfree(ptr noundef %0) #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_prime_gem_destroy(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @sg_free_table(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @drm_gem_shmem_put_pages(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.drm_gem_shmem_object, ptr %0, i32 0, i32 1
  tail call void @mutex_lock(ptr noundef %2) #4
  %3 = getelementptr inbounds %struct.drm_gem_shmem_object, ptr %0, i32 0, i32 3
  %4 = load i32, ptr %3, align 8
  %5 = icmp eq i32 %4, 0
  %6 = load i1, ptr @drm_gem_shmem_put_pages_locked.__already_done, align 1
  %7 = xor i1 %6, true
  %8 = select i1 %5, i1 %7, i1 false
  br i1 %8, label %9, label %10, !prof !9

9:                                                ; preds = %1
  store i1 true, ptr @drm_gem_shmem_put_pages_locked.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 225, i32 noundef 9, ptr noundef null) #4
  br label %10

10:                                               ; preds = %9, %1
  br i1 %5, label %24, label %11

11:                                               ; preds = %10
  %12 = load i32, ptr %3, align 8
  %13 = add i32 %12, -1
  store i32 %13, ptr %3, align 8
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %24

15:                                               ; preds = %11
  %16 = getelementptr inbounds %struct.drm_gem_shmem_object, ptr %0, i32 0, i32 2
  %17 = load ptr, ptr %16, align 4
  %18 = getelementptr inbounds %struct.drm_gem_shmem_object, ptr %0, i32 0, i32 6
  %19 = load i8, ptr %18, align 8
  %20 = and i8 %19, 1
  %21 = icmp ne i8 %20, 0
  %22 = and i8 %19, 2
  %23 = icmp ne i8 %22, 0
  tail call void @drm_gem_put_pages(ptr noundef %0, ptr noundef %17, i1 noundef zeroext %21, i1 noundef zeroext %23) #4
  store ptr null, ptr %16, align 4
  br label %24

24:                                               ; preds = %15, %11, %10
  tail call void @mutex_unlock(ptr noundef %2) #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_gem_object_release(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @drm_gem_shmem_get_pages(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.drm_gem_object, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %6, label %5, !prof !8

5:                                                ; preds = %1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 209, i32 noundef 9, ptr noundef null) #4
  br label %6

6:                                                ; preds = %5, %1
  %7 = getelementptr inbounds %struct.drm_gem_shmem_object, ptr %0, i32 0, i32 1
  %8 = tail call i32 @mutex_lock_interruptible(ptr noundef %7) #4
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %24

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.drm_gem_shmem_object, ptr %0, i32 0, i32 3
  %12 = load i32, ptr %11, align 8
  %13 = add i32 %12, 1
  store i32 %13, ptr %11, align 8
  %14 = icmp eq i32 %12, 0
  br i1 %14, label %15, label %22

15:                                               ; preds = %10
  %16 = tail call ptr @drm_gem_get_pages(ptr noundef %0) #4
  %17 = icmp ugt ptr %16, inttoptr (i32 -4096 to ptr)
  br i1 %17, label %18, label %20

18:                                               ; preds = %15
  %19 = ptrtoint ptr %16 to i32
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 4, ptr noundef nonnull @.str.9, i32 noundef %19) #4
  store i32 0, ptr %11, align 8
  br label %22

20:                                               ; preds = %15
  %21 = getelementptr inbounds %struct.drm_gem_shmem_object, ptr %0, i32 0, i32 2
  store ptr %16, ptr %21, align 4
  br label %22

22:                                               ; preds = %20, %18, %10
  %23 = phi i32 [ %19, %18 ], [ 0, %20 ], [ 0, %10 ]
  tail call void @mutex_unlock(ptr noundef %7) #4
  br label %24

24:                                               ; preds = %22, %6
  %25 = phi i32 [ %23, %22 ], [ %8, %6 ]
  ret i32 %25
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mutex_lock_interruptible(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @drm_gem_shmem_pin(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.drm_gem_object, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %6, label %5, !prof !8

5:                                                ; preds = %1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 268, i32 noundef 9, ptr noundef null) #4
  br label %6

6:                                                ; preds = %5, %1
  %7 = tail call i32 @drm_gem_shmem_get_pages(ptr noundef %0)
  ret i32 %7
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @drm_gem_shmem_unpin(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.drm_gem_object, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %6, label %5, !prof !8

5:                                                ; preds = %1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 283, i32 noundef 9, ptr noundef null) #4
  br label %6

6:                                                ; preds = %5, %1
  tail call void @drm_gem_shmem_put_pages(ptr noundef %0)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @drm_gem_shmem_vmap(ptr noundef %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.drm_gem_shmem_object, ptr %0, i32 0, i32 8
  %4 = tail call i32 @mutex_lock_interruptible(ptr noundef %3) #4
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %64

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.drm_gem_shmem_object, ptr %0, i32 0, i32 10
  %8 = load i32, ptr %7, align 8
  %9 = add i32 %8, 1
  store i32 %9, ptr %7, align 8
  %10 = icmp eq i32 %8, 0
  br i1 %10, label %15, label %11

11:                                               ; preds = %6
  %12 = getelementptr inbounds %struct.drm_gem_shmem_object, ptr %0, i32 0, i32 9
  %13 = load ptr, ptr %12, align 4
  store ptr %13, ptr %1, align 4
  %14 = getelementptr inbounds %struct.dma_buf_map, ptr %1, i32 0, i32 1
  store i8 0, ptr %14, align 4
  br label %62

15:                                               ; preds = %6
  %16 = getelementptr inbounds %struct.drm_gem_object, ptr %0, i32 0, i32 8
  %17 = load ptr, ptr %16, align 4
  %18 = icmp eq ptr %17, null
  br i1 %18, label %31, label %19

19:                                               ; preds = %15
  %20 = load ptr, ptr %17, align 4
  %21 = tail call i32 @dma_buf_vmap(ptr noundef %20, ptr noundef %1) #4
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %53

23:                                               ; preds = %19
  %24 = getelementptr inbounds %struct.dma_buf_map, ptr %1, i32 0, i32 1
  %25 = load i8, ptr %24, align 4, !range !10
  %26 = icmp eq i8 %25, 0
  br i1 %26, label %28, label %27, !prof !8

27:                                               ; preds = %23
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 302, i32 noundef 9, ptr noundef null) #4
  br label %55

28:                                               ; preds = %23
  %29 = load ptr, ptr %1, align 4
  %30 = getelementptr inbounds %struct.drm_gem_shmem_object, ptr %0, i32 0, i32 9
  store ptr %29, ptr %30, align 4
  br label %62

31:                                               ; preds = %15
  %32 = load i32, ptr @pgprot_kernel, align 4
  %33 = tail call i32 @drm_gem_shmem_get_pages(ptr noundef %0) #4
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %35, label %60

35:                                               ; preds = %31
  %36 = or i32 %32, 512
  %37 = getelementptr inbounds %struct.drm_gem_shmem_object, ptr %0, i32 0, i32 11
  %38 = load i8, ptr %37, align 4, !range !10
  %39 = icmp eq i8 %38, 0
  %40 = and i32 %36, -61
  %41 = or i32 %40, 4
  %42 = select i1 %39, i32 %36, i32 %41
  %43 = getelementptr inbounds %struct.drm_gem_shmem_object, ptr %0, i32 0, i32 2
  %44 = load ptr, ptr %43, align 4
  %45 = getelementptr inbounds %struct.drm_gem_object, ptr %0, i32 0, i32 5
  %46 = load i32, ptr %45, align 8
  %47 = lshr i32 %46, 12
  %48 = tail call ptr @vmap(ptr noundef %44, i32 noundef %47, i32 noundef 4, i32 noundef %42) #4
  %49 = getelementptr inbounds %struct.drm_gem_shmem_object, ptr %0, i32 0, i32 9
  store ptr %48, ptr %49, align 4
  %50 = icmp eq ptr %48, null
  br i1 %50, label %53, label %51

51:                                               ; preds = %35
  store ptr %48, ptr %1, align 4
  %52 = getelementptr inbounds %struct.dma_buf_map, ptr %1, i32 0, i32 1
  store i8 0, ptr %52, align 4
  br label %62

53:                                               ; preds = %35, %19
  %54 = phi i32 [ -12, %35 ], [ %21, %19 ]
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 4, ptr noundef nonnull @.str.10, i32 noundef %54) #4
  br label %55

55:                                               ; preds = %53, %27
  %56 = phi i32 [ %54, %53 ], [ -5, %27 ]
  %57 = load ptr, ptr %16, align 4
  %58 = icmp eq ptr %57, null
  br i1 %58, label %59, label %60

59:                                               ; preds = %55
  tail call void @drm_gem_shmem_put_pages(ptr noundef %0) #4
  br label %60

60:                                               ; preds = %59, %55, %31
  %61 = phi i32 [ %56, %55 ], [ %56, %59 ], [ %33, %31 ]
  store i32 0, ptr %7, align 8
  br label %62

62:                                               ; preds = %60, %51, %28, %11
  %63 = phi i32 [ 0, %11 ], [ %61, %60 ], [ 0, %28 ], [ 0, %51 ]
  tail call void @mutex_unlock(ptr noundef %3) #4
  br label %64

64:                                               ; preds = %62, %2
  %65 = phi i32 [ %63, %62 ], [ %4, %2 ]
  ret i32 %65
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @drm_gem_shmem_vunmap(ptr noundef %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.drm_gem_shmem_object, ptr %0, i32 0, i32 8
  tail call void @mutex_lock(ptr noundef %3) #4
  %4 = getelementptr inbounds %struct.drm_gem_shmem_object, ptr %0, i32 0, i32 10
  %5 = load i32, ptr %4, align 8
  %6 = icmp eq i32 %5, 0
  %7 = load i1, ptr @drm_gem_shmem_vunmap_locked.__already_done, align 1
  %8 = xor i1 %7, true
  %9 = select i1 %6, i1 %8, i1 false
  br i1 %9, label %10, label %11, !prof !9

10:                                               ; preds = %2
  store i1 true, ptr @drm_gem_shmem_vunmap_locked.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 375, i32 noundef 9, ptr noundef null) #4
  br label %11

11:                                               ; preds = %10, %2
  br i1 %6, label %27, label %12

12:                                               ; preds = %11
  %13 = load i32, ptr %4, align 8
  %14 = add i32 %13, -1
  store i32 %14, ptr %4, align 8
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %27

16:                                               ; preds = %12
  %17 = getelementptr inbounds %struct.drm_gem_object, ptr %0, i32 0, i32 8
  %18 = load ptr, ptr %17, align 4
  %19 = icmp eq ptr %18, null
  br i1 %19, label %22, label %20

20:                                               ; preds = %16
  %21 = load ptr, ptr %18, align 4
  tail call void @dma_buf_vunmap(ptr noundef %21, ptr noundef %1) #4
  br label %25

22:                                               ; preds = %16
  %23 = getelementptr inbounds %struct.drm_gem_shmem_object, ptr %0, i32 0, i32 9
  %24 = load ptr, ptr %23, align 4
  tail call void @vunmap(ptr noundef %24) #4
  tail call void @drm_gem_shmem_put_pages(ptr noundef %0) #4
  br label %25

25:                                               ; preds = %22, %20
  %26 = getelementptr inbounds %struct.drm_gem_shmem_object, ptr %0, i32 0, i32 9
  store ptr null, ptr %26, align 4
  br label %27

27:                                               ; preds = %25, %12, %11
  tail call void @mutex_unlock(ptr noundef %3) #4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @drm_gem_shmem_madvise(ptr noundef %0, i32 noundef %1) #0 {
  %3 = getelementptr inbounds %struct.drm_gem_shmem_object, ptr %0, i32 0, i32 1
  tail call void @mutex_lock(ptr noundef %3) #4
  %4 = getelementptr inbounds %struct.drm_gem_shmem_object, ptr %0, i32 0, i32 4
  %5 = load i32, ptr %4, align 4
  %6 = icmp sgt i32 %5, -1
  br i1 %6, label %7, label %8

7:                                                ; preds = %2
  store i32 %1, ptr %4, align 4
  br label %8

8:                                                ; preds = %7, %2
  %9 = phi i32 [ %1, %7 ], [ %5, %2 ]
  tail call void @mutex_unlock(ptr noundef %3) #4
  %10 = xor i32 %9, -1
  %11 = lshr i32 %10, 31
  ret i32 %11
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @drm_gem_shmem_purge_locked(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.drm_gem_object, ptr %0, i32 0, i32 2
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.drm_gem_shmem_object, ptr %0, i32 0, i32 4
  %5 = load i32, ptr %4, align 4
  %6 = icmp sgt i32 %5, 0
  br i1 %6, label %7, label %23, !prof !11

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.drm_gem_shmem_object, ptr %0, i32 0, i32 10
  %9 = load i32, ptr %8, align 8
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %23, !prof !11

11:                                               ; preds = %7
  %12 = getelementptr inbounds %struct.drm_gem_shmem_object, ptr %0, i32 0, i32 7
  %13 = load ptr, ptr %12, align 4
  %14 = icmp eq ptr %13, null
  br i1 %14, label %23, label %15, !prof !12

15:                                               ; preds = %11
  %16 = getelementptr inbounds %struct.drm_gem_object, ptr %0, i32 0, i32 7
  %17 = load ptr, ptr %16, align 8
  %18 = icmp eq ptr %17, null
  br i1 %18, label %19, label %23, !prof !11

19:                                               ; preds = %15
  %20 = getelementptr inbounds %struct.drm_gem_object, ptr %0, i32 0, i32 8
  %21 = load ptr, ptr %20, align 4
  %22 = icmp eq ptr %21, null
  br i1 %22, label %26, label %23, !prof !8

23:                                               ; preds = %19, %15, %11, %7, %1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 459, i32 noundef 9, ptr noundef null) #4
  %24 = getelementptr inbounds %struct.drm_gem_shmem_object, ptr %0, i32 0, i32 7
  %25 = load ptr, ptr %24, align 4
  br label %26

26:                                               ; preds = %23, %19
  %27 = phi ptr [ %25, %23 ], [ %13, %19 ]
  %28 = getelementptr inbounds %struct.drm_device, ptr %3, i32 0, i32 2
  %29 = load ptr, ptr %28, align 4
  %30 = getelementptr inbounds %struct.drm_gem_shmem_object, ptr %0, i32 0, i32 7
  %31 = load ptr, ptr %27, align 4
  %32 = getelementptr inbounds %struct.sg_table, ptr %27, i32 0, i32 2
  %33 = load i32, ptr %32, align 4
  tail call void @dma_unmap_sg_attrs(ptr noundef %29, ptr noundef %31, i32 noundef %33, i32 noundef 0, i32 noundef 0) #4
  %34 = load ptr, ptr %30, align 4
  tail call void @sg_free_table(ptr noundef %34) #4
  %35 = load ptr, ptr %30, align 4
  tail call void @kfree(ptr noundef %35) #4
  store ptr null, ptr %30, align 4
  %36 = getelementptr inbounds %struct.drm_gem_shmem_object, ptr %0, i32 0, i32 3
  %37 = load i32, ptr %36, align 8
  %38 = icmp eq i32 %37, 0
  %39 = load i1, ptr @drm_gem_shmem_put_pages_locked.__already_done, align 1
  %40 = xor i1 %39, true
  %41 = select i1 %38, i1 %40, i1 false
  br i1 %41, label %42, label %43, !prof !9

42:                                               ; preds = %26
  store i1 true, ptr @drm_gem_shmem_put_pages_locked.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 225, i32 noundef 9, ptr noundef null) #4
  br label %43

43:                                               ; preds = %42, %26
  br i1 %38, label %57, label %44

44:                                               ; preds = %43
  %45 = load i32, ptr %36, align 8
  %46 = add i32 %45, -1
  store i32 %46, ptr %36, align 8
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %48, label %57

48:                                               ; preds = %44
  %49 = getelementptr inbounds %struct.drm_gem_shmem_object, ptr %0, i32 0, i32 2
  %50 = load ptr, ptr %49, align 4
  %51 = getelementptr inbounds %struct.drm_gem_shmem_object, ptr %0, i32 0, i32 6
  %52 = load i8, ptr %51, align 8
  %53 = and i8 %52, 1
  %54 = icmp ne i8 %53, 0
  %55 = and i8 %52, 2
  %56 = icmp ne i8 %55, 0
  tail call void @drm_gem_put_pages(ptr noundef %0, ptr noundef %50, i1 noundef zeroext %54, i1 noundef zeroext %56) #4
  store ptr null, ptr %49, align 4
  br label %57

57:                                               ; preds = %48, %44, %43
  store i32 -1, ptr %4, align 4
  %58 = getelementptr inbounds %struct.drm_device, ptr %3, i32 0, i32 12
  %59 = load ptr, ptr %58, align 4
  %60 = getelementptr inbounds %struct.inode, ptr %59, i32 0, i32 9
  %61 = load ptr, ptr %60, align 8
  %62 = getelementptr inbounds %struct.drm_gem_object, ptr %0, i32 0, i32 4, i32 1, i32 12
  %63 = load volatile i32, ptr %62, align 4
  %64 = and i32 %63, 1
  %65 = icmp eq i32 %64, 0
  br i1 %65, label %75, label %66

66:                                               ; preds = %57
  %67 = getelementptr inbounds %struct.drm_gem_object, ptr %0, i32 0, i32 4, i32 1, i32 1
  %68 = load i64, ptr %67, align 8
  %69 = shl i64 %68, 12
  %70 = getelementptr inbounds %struct.drm_gem_object, ptr %0, i32 0, i32 4, i32 1, i32 2
  %71 = load i64, ptr %70, align 8
  %72 = trunc i64 %71 to i32
  %73 = shl i32 %72, 12
  %74 = zext i32 %73 to i64
  tail call void @unmap_mapping_range(ptr noundef %61, i64 noundef %69, i64 noundef %74, i32 noundef 1) #4
  br label %75

75:                                               ; preds = %66, %57
  tail call void @drm_gem_free_mmap_offset(ptr noundef %0) #4
  %76 = getelementptr inbounds %struct.drm_gem_object, ptr %0, i32 0, i32 3
  %77 = load ptr, ptr %76, align 4
  %78 = getelementptr inbounds %struct.file, ptr %77, i32 0, i32 2
  %79 = load ptr, ptr %78, align 8
  tail call void @shmem_truncate_range(ptr noundef %79, i64 noundef 0, i64 noundef -1) #4
  %80 = load ptr, ptr %76, align 4
  %81 = getelementptr inbounds %struct.file, ptr %80, i32 0, i32 2
  %82 = load ptr, ptr %81, align 8
  %83 = getelementptr inbounds %struct.inode, ptr %82, i32 0, i32 9
  %84 = load ptr, ptr %83, align 8
  %85 = tail call i32 @invalidate_mapping_pages(ptr noundef %84, i32 noundef 0, i32 noundef -1) #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_gem_free_mmap_offset(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @shmem_truncate_range(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @invalidate_mapping_pages(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local zeroext i1 @drm_gem_shmem_purge(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.drm_gem_shmem_object, ptr %0, i32 0, i32 1
  %3 = tail call i32 @mutex_trylock(ptr noundef %2) #4
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %6, label %5

5:                                                ; preds = %1
  tail call void @drm_gem_shmem_purge_locked(ptr noundef %0)
  tail call void @mutex_unlock(ptr noundef %2) #4
  br label %6

6:                                                ; preds = %5, %1
  %7 = xor i1 %4, true
  ret i1 %7
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mutex_trylock(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @drm_gem_shmem_dumb_create(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = getelementptr inbounds %struct.drm_mode_create_dumb, ptr %2, i32 0, i32 1
  %5 = load i32, ptr %4, align 4
  %6 = getelementptr inbounds %struct.drm_mode_create_dumb, ptr %2, i32 0, i32 2
  %7 = load i32, ptr %6, align 8
  %8 = mul i32 %7, %5
  %9 = add i32 %8, 7
  %10 = lshr i32 %9, 3
  %11 = getelementptr inbounds %struct.drm_mode_create_dumb, ptr %2, i32 0, i32 5
  %12 = load i32, ptr %11, align 4
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %18, label %14

14:                                               ; preds = %3
  %15 = getelementptr inbounds %struct.drm_mode_create_dumb, ptr %2, i32 0, i32 6
  %16 = load i64, ptr %15, align 8
  %17 = icmp eq i64 %16, 0
  br i1 %17, label %18, label %25

18:                                               ; preds = %14, %3
  store i32 %10, ptr %11, align 4
  %19 = load i32, ptr %2, align 8
  %20 = mul i32 %19, %10
  %21 = add i32 %20, 4095
  %22 = and i32 %21, -4096
  %23 = zext i32 %22 to i64
  %24 = getelementptr inbounds %struct.drm_mode_create_dumb, ptr %2, i32 0, i32 6
  store i64 %23, ptr %24, align 8
  br label %39

25:                                               ; preds = %14
  %26 = icmp ult i32 %12, %10
  br i1 %26, label %27, label %28

27:                                               ; preds = %25
  store i32 %10, ptr %11, align 4
  br label %28

28:                                               ; preds = %27, %25
  %29 = phi i32 [ %10, %27 ], [ %12, %25 ]
  %30 = load i32, ptr %2, align 8
  %31 = mul i32 %30, %29
  %32 = zext i32 %31 to i64
  %33 = icmp ult i64 %16, %32
  %34 = trunc i64 %16 to i32
  br i1 %33, label %35, label %39

35:                                               ; preds = %28
  %36 = add i32 %31, 4095
  %37 = and i32 %36, -4096
  %38 = zext i32 %37 to i64
  store i64 %38, ptr %15, align 8
  br label %39

39:                                               ; preds = %35, %28, %18
  %40 = phi i32 [ %34, %28 ], [ %37, %35 ], [ %22, %18 ]
  %41 = tail call fastcc ptr @__drm_gem_shmem_create(ptr noundef %1, i32 noundef %40, i1 noundef zeroext false) #4
  %42 = icmp ugt ptr %41, inttoptr (i32 -4096 to ptr)
  br i1 %42, label %59, label %43

43:                                               ; preds = %39
  %44 = getelementptr inbounds %struct.drm_mode_create_dumb, ptr %2, i32 0, i32 4
  %45 = tail call i32 @drm_gem_handle_create(ptr noundef %0, ptr noundef %41, ptr noundef %44) #4
  %46 = icmp eq ptr %41, null
  br i1 %46, label %55, label %47

47:                                               ; preds = %43
  tail call void asm sideeffect "dmb ish", "~{memory}"() #4, !srcloc !13
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr nonnull %41) #4, !srcloc !14
  %48 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %41, ptr nonnull %41, i32 1, ptr nonnull elementtype(i32) %41) #4, !srcloc !15
  %49 = extractvalue { i32, i32, i32 } %48, 0
  %50 = icmp eq i32 %49, 1
  br i1 %50, label %54, label %51

51:                                               ; preds = %47
  %52 = icmp sgt i32 %49, 0
  br i1 %52, label %55, label %53, !prof !8

53:                                               ; preds = %51
  tail call void @refcount_warn_saturate(ptr noundef nonnull %41, i32 noundef 3) #4
  br label %55

54:                                               ; preds = %47
  tail call void asm sideeffect "dmb ish", "~{memory}"() #4, !srcloc !16
  tail call void @drm_gem_object_free(ptr noundef nonnull %41) #4
  br label %55

55:                                               ; preds = %54, %53, %51, %43
  %56 = icmp eq i32 %45, 0
  %57 = inttoptr i32 %45 to ptr
  %58 = select i1 %56, ptr %41, ptr %57
  br label %59

59:                                               ; preds = %55, %39
  %60 = phi ptr [ %41, %39 ], [ %58, %55 ]
  %61 = icmp ugt ptr %60, inttoptr (i32 -4096 to ptr)
  %62 = ptrtoint ptr %60 to i32
  %63 = select i1 %61, i32 %62, i32 0
  ret i32 %63
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @drm_gem_shmem_mmap(ptr noundef %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.drm_gem_object, ptr %0, i32 0, i32 8
  %4 = load ptr, ptr %3, align 4
  %5 = icmp eq ptr %4, null
  br i1 %5, label %21, label %6

6:                                                ; preds = %2
  %7 = icmp eq ptr %0, null
  br i1 %7, label %16, label %8

8:                                                ; preds = %6
  tail call void asm sideeffect "dmb ish", "~{memory}"() #4, !srcloc !13
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr nonnull %0) #4, !srcloc !14
  %9 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %0, ptr nonnull %0, i32 1, ptr nonnull elementtype(i32) %0) #4, !srcloc !15
  %10 = extractvalue { i32, i32, i32 } %9, 0
  %11 = icmp eq i32 %10, 1
  br i1 %11, label %15, label %12

12:                                               ; preds = %8
  %13 = icmp sgt i32 %10, 0
  br i1 %13, label %16, label %14, !prof !8

14:                                               ; preds = %12
  tail call void @refcount_warn_saturate(ptr noundef nonnull %0, i32 noundef 3) #4
  br label %16

15:                                               ; preds = %8
  tail call void asm sideeffect "dmb ish", "~{memory}"() #4, !srcloc !16
  tail call void @drm_gem_object_free(ptr noundef nonnull %0) #4
  br label %16

16:                                               ; preds = %15, %14, %12, %6
  %17 = getelementptr inbounds %struct.vm_area_struct, ptr %1, i32 0, i32 15
  store ptr null, ptr %17, align 4
  %18 = getelementptr inbounds %struct.drm_gem_object, ptr %0, i32 0, i32 7
  %19 = load ptr, ptr %18, align 8
  %20 = tail call i32 @dma_buf_mmap(ptr noundef %19, ptr noundef %1, i32 noundef 0) #4
  br label %39

21:                                               ; preds = %2
  %22 = tail call i32 @drm_gem_shmem_get_pages(ptr noundef %0)
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %25, label %24

24:                                               ; preds = %21
  tail call void @drm_gem_vm_close(ptr noundef %1) #4
  br label %39

25:                                               ; preds = %21
  %26 = getelementptr inbounds %struct.vm_area_struct, ptr %1, i32 0, i32 8
  %27 = load i32, ptr %26, align 4
  %28 = or i32 %27, 263168
  store i32 %28, ptr %26, align 4
  %29 = tail call i32 @vm_get_page_prot(i32 noundef %28) #4
  %30 = getelementptr inbounds %struct.vm_area_struct, ptr %1, i32 0, i32 7
  store i32 %29, ptr %30, align 4
  %31 = getelementptr inbounds %struct.drm_gem_shmem_object, ptr %0, i32 0, i32 11
  %32 = load i8, ptr %31, align 4, !range !10
  %33 = icmp eq i8 %32, 0
  br i1 %33, label %37, label %34

34:                                               ; preds = %25
  %35 = and i32 %29, -61
  %36 = or i32 %35, 4
  store i32 %36, ptr %30, align 4
  br label %37

37:                                               ; preds = %34, %25
  %38 = getelementptr inbounds %struct.vm_area_struct, ptr %1, i32 0, i32 12
  store ptr @drm_gem_shmem_vm_ops, ptr %38, align 4
  br label %39

39:                                               ; preds = %37, %24, %16
  %40 = phi i32 [ %20, %16 ], [ %22, %24 ], [ 0, %37 ]
  ret i32 %40
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_buf_mmap(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_gem_vm_close(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vm_get_page_prot(i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @drm_gem_shmem_print_info(ptr nocapture noundef readonly %0, ptr noundef %1, i32 noundef %2) #0 {
  %4 = getelementptr inbounds %struct.drm_gem_shmem_object, ptr %0, i32 0, i32 3
  %5 = load i32, ptr %4, align 8
  tail call void (ptr, ptr, ...) @drm_printf(ptr noundef %1, ptr noundef nonnull @.str.1, i32 noundef %2, ptr noundef nonnull @.str.2, i32 noundef %5) #4
  %6 = getelementptr inbounds %struct.drm_gem_shmem_object, ptr %0, i32 0, i32 10
  %7 = load i32, ptr %6, align 8
  tail call void (ptr, ptr, ...) @drm_printf(ptr noundef %1, ptr noundef nonnull @.str.3, i32 noundef %2, ptr noundef nonnull @.str.2, i32 noundef %7) #4
  %8 = getelementptr inbounds %struct.drm_gem_shmem_object, ptr %0, i32 0, i32 9
  %9 = load ptr, ptr %8, align 4
  tail call void (ptr, ptr, ...) @drm_printf(ptr noundef %1, ptr noundef nonnull @.str.4, i32 noundef %2, ptr noundef nonnull @.str.2, ptr noundef %9) #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @drm_gem_shmem_get_sg_table(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.drm_gem_object, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %6, label %5, !prof !8

5:                                                ; preds = %1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 667, i32 noundef 9, ptr noundef null) #4
  br label %6

6:                                                ; preds = %5, %1
  %7 = getelementptr inbounds %struct.drm_gem_object, ptr %0, i32 0, i32 2
  %8 = load ptr, ptr %7, align 8
  %9 = getelementptr inbounds %struct.drm_gem_shmem_object, ptr %0, i32 0, i32 2
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr inbounds %struct.drm_gem_object, ptr %0, i32 0, i32 5
  %12 = load i32, ptr %11, align 8
  %13 = lshr i32 %12, 12
  %14 = tail call ptr @drm_prime_pages_to_sg(ptr noundef %8, ptr noundef %10, i32 noundef %13) #4
  ret ptr %14
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @drm_prime_pages_to_sg(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @drm_gem_shmem_get_pages_sgt(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.drm_gem_shmem_object, ptr %0, i32 0, i32 7
  %3 = load ptr, ptr %2, align 4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %5, label %42

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.drm_gem_object, ptr %0, i32 0, i32 8
  %7 = load ptr, ptr %6, align 4
  %8 = icmp eq ptr %7, null
  br i1 %8, label %10, label %9, !prof !8

9:                                                ; preds = %5
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 698, i32 noundef 9, ptr noundef null) #4
  br label %10

10:                                               ; preds = %9, %5
  %11 = tail call i32 @drm_gem_shmem_get_pages(ptr noundef %0)
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %15, label %13

13:                                               ; preds = %10
  %14 = inttoptr i32 %11 to ptr
  br label %42

15:                                               ; preds = %10
  %16 = load ptr, ptr %6, align 4
  %17 = icmp eq ptr %16, null
  br i1 %17, label %19, label %18, !prof !8

18:                                               ; preds = %15
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 667, i32 noundef 9, ptr noundef null) #4
  br label %19

19:                                               ; preds = %18, %15
  %20 = getelementptr inbounds %struct.drm_gem_object, ptr %0, i32 0, i32 2
  %21 = load ptr, ptr %20, align 8
  %22 = getelementptr inbounds %struct.drm_gem_shmem_object, ptr %0, i32 0, i32 2
  %23 = load ptr, ptr %22, align 4
  %24 = getelementptr inbounds %struct.drm_gem_object, ptr %0, i32 0, i32 5
  %25 = load i32, ptr %24, align 8
  %26 = lshr i32 %25, 12
  %27 = tail call ptr @drm_prime_pages_to_sg(ptr noundef %21, ptr noundef %23, i32 noundef %26) #4
  %28 = icmp ugt ptr %27, inttoptr (i32 -4096 to ptr)
  br i1 %28, label %29, label %31

29:                                               ; preds = %19
  %30 = ptrtoint ptr %27 to i32
  br label %39

31:                                               ; preds = %19
  %32 = load ptr, ptr %20, align 8
  %33 = getelementptr inbounds %struct.drm_device, ptr %32, i32 0, i32 2
  %34 = load ptr, ptr %33, align 4
  %35 = tail call i32 @dma_map_sgtable(ptr noundef %34, ptr noundef %27, i32 noundef 0, i32 noundef 0) #4
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %31
  store ptr %27, ptr %2, align 4
  br label %42

38:                                               ; preds = %31
  tail call void @sg_free_table(ptr noundef %27) #4
  tail call void @kfree(ptr noundef %27) #4
  br label %39

39:                                               ; preds = %38, %29
  %40 = phi i32 [ %30, %29 ], [ %35, %38 ]
  tail call void @drm_gem_shmem_put_pages(ptr noundef %0)
  %41 = inttoptr i32 %40 to ptr
  br label %42

42:                                               ; preds = %39, %37, %13, %1
  %43 = phi ptr [ %14, %13 ], [ %41, %39 ], [ %27, %37 ], [ %3, %1 ]
  ret ptr %43
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_map_sgtable(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @drm_gem_shmem_prime_import_sg_table(ptr noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2) #0 {
  %4 = load ptr, ptr %1, align 4
  %5 = load i32, ptr %4, align 4
  %6 = add i32 %5, 4095
  %7 = and i32 %6, -4096
  %8 = tail call fastcc ptr @__drm_gem_shmem_create(ptr noundef %0, i32 noundef %7, i1 noundef zeroext true)
  %9 = icmp ugt ptr %8, inttoptr (i32 -4096 to ptr)
  br i1 %9, label %12, label %10

10:                                               ; preds = %3
  %11 = getelementptr inbounds %struct.drm_gem_shmem_object, ptr %8, i32 0, i32 7
  store ptr %2, ptr %11, align 4
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 8, ptr noundef nonnull @.str.5, i32 noundef %7) #4
  br label %12

12:                                               ; preds = %10, %3
  ret ptr %8
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_dbg(i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_gem_private_object_init(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_gem_object_init(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_gem_create_mmap_offset(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @drm_gem_shmem_object_free(ptr noundef %0) #3 {
  tail call void @drm_gem_shmem_free(ptr noundef %0)
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @drm_gem_shmem_object_print_info(ptr noundef %0, i32 noundef %1, ptr nocapture noundef readonly %2) #3 {
  %4 = getelementptr inbounds %struct.drm_gem_shmem_object, ptr %2, i32 0, i32 3
  %5 = load i32, ptr %4, align 8
  tail call void (ptr, ptr, ...) @drm_printf(ptr noundef %0, ptr noundef nonnull @.str.1, i32 noundef %1, ptr noundef nonnull @.str.2, i32 noundef %5) #4
  %6 = getelementptr inbounds %struct.drm_gem_shmem_object, ptr %2, i32 0, i32 10
  %7 = load i32, ptr %6, align 8
  tail call void (ptr, ptr, ...) @drm_printf(ptr noundef %0, ptr noundef nonnull @.str.3, i32 noundef %1, ptr noundef nonnull @.str.2, i32 noundef %7) #4
  %8 = getelementptr inbounds %struct.drm_gem_shmem_object, ptr %2, i32 0, i32 9
  %9 = load ptr, ptr %8, align 4
  tail call void (ptr, ptr, ...) @drm_printf(ptr noundef %0, ptr noundef nonnull @.str.4, i32 noundef %1, ptr noundef nonnull @.str.2, ptr noundef %9) #4
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @drm_gem_shmem_object_pin(ptr noundef %0) #3 {
  %2 = getelementptr inbounds %struct.drm_gem_object, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %6, label %5, !prof !8

5:                                                ; preds = %1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 268, i32 noundef 9, ptr noundef null) #4
  br label %6

6:                                                ; preds = %5, %1
  %7 = tail call i32 @drm_gem_shmem_get_pages(ptr noundef %0) #4
  ret i32 %7
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @drm_gem_shmem_object_unpin(ptr noundef %0) #3 {
  %2 = getelementptr inbounds %struct.drm_gem_object, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %6, label %5, !prof !8

5:                                                ; preds = %1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 283, i32 noundef 9, ptr noundef null) #4
  br label %6

6:                                                ; preds = %5, %1
  tail call void @drm_gem_shmem_put_pages(ptr noundef %0) #4
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal ptr @drm_gem_shmem_object_get_sg_table(ptr nocapture noundef readonly %0) #3 {
  %2 = getelementptr inbounds %struct.drm_gem_object, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %6, label %5, !prof !8

5:                                                ; preds = %1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 667, i32 noundef 9, ptr noundef null) #4
  br label %6

6:                                                ; preds = %5, %1
  %7 = getelementptr inbounds %struct.drm_gem_object, ptr %0, i32 0, i32 2
  %8 = load ptr, ptr %7, align 8
  %9 = getelementptr inbounds %struct.drm_gem_shmem_object, ptr %0, i32 0, i32 2
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr inbounds %struct.drm_gem_object, ptr %0, i32 0, i32 5
  %12 = load i32, ptr %11, align 8
  %13 = lshr i32 %12, 12
  %14 = tail call ptr @drm_prime_pages_to_sg(ptr noundef %8, ptr noundef %10, i32 noundef %13) #4
  ret ptr %14
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @drm_gem_shmem_object_vmap(ptr noundef %0, ptr noundef %1) #3 {
  %3 = tail call i32 @drm_gem_shmem_vmap(ptr noundef %0, ptr noundef %1)
  ret i32 %3
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @drm_gem_shmem_object_vunmap(ptr noundef %0, ptr noundef %1) #3 {
  tail call void @drm_gem_shmem_vunmap(ptr noundef %0, ptr noundef %1)
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @drm_gem_shmem_object_mmap(ptr noundef %0, ptr noundef %1) #3 {
  %3 = tail call i32 @drm_gem_shmem_mmap(ptr noundef %0, ptr noundef %1)
  ret i32 %3
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_unmap_sg_attrs(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @drm_gem_get_pages(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_gem_put_pages(ptr noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_buf_vmap(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @vmap(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_buf_vunmap(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @vunmap(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @unmap_mapping_range(ptr noundef, i64 noundef, i64 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_gem_handle_create(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_gem_object_free(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @drm_gem_shmem_vm_open(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.vm_area_struct, ptr %0, i32 0, i32 15
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.drm_gem_object, ptr %3, i32 0, i32 8
  %5 = load ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %8, label %7, !prof !8

7:                                                ; preds = %1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 571, i32 noundef 9, ptr noundef null) #4
  br label %8

8:                                                ; preds = %7, %1
  %9 = tail call i32 @drm_gem_shmem_get_pages(ptr noundef %3)
  %10 = icmp ne i32 %9, 0
  %11 = load i1, ptr @drm_gem_shmem_vm_open.__already_done, align 1
  %12 = xor i1 %11, true
  %13 = select i1 %10, i1 %12, i1 false
  br i1 %13, label %14, label %15, !prof !9

14:                                               ; preds = %8
  store i1 true, ptr @drm_gem_shmem_vm_open.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 574, i32 noundef 9, ptr noundef null) #4
  br label %15

15:                                               ; preds = %14, %8
  tail call void @drm_gem_vm_open(ptr noundef %0) #4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @drm_gem_shmem_vm_close(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.vm_area_struct, ptr %0, i32 0, i32 15
  %3 = load ptr, ptr %2, align 4
  tail call void @drm_gem_shmem_put_pages(ptr noundef %3)
  tail call void @drm_gem_vm_close(ptr noundef %0) #4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @drm_gem_shmem_fault(ptr nocapture noundef readonly %0) #0 {
  %2 = load ptr, ptr %0, align 4
  %3 = getelementptr inbounds %struct.vm_area_struct, ptr %2, i32 0, i32 15
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.drm_gem_object, ptr %4, i32 0, i32 5
  %6 = load i32, ptr %5, align 8
  %7 = lshr i32 %6, 12
  %8 = getelementptr inbounds %struct.anon.11, ptr %0, i32 0, i32 3
  %9 = load i32, ptr %8, align 4
  %10 = load i32, ptr %2, align 4
  %11 = sub i32 %9, %10
  %12 = lshr i32 %11, 12
  %13 = getelementptr inbounds %struct.drm_gem_shmem_object, ptr %4, i32 0, i32 1
  tail call void @mutex_lock(ptr noundef %13) #4
  %14 = icmp ult i32 %12, %7
  br i1 %14, label %15, label %41

15:                                               ; preds = %1
  %16 = getelementptr inbounds %struct.drm_gem_shmem_object, ptr %4, i32 0, i32 2
  %17 = load ptr, ptr %16, align 4
  %18 = icmp eq ptr %17, null
  %19 = load i1, ptr @drm_gem_shmem_fault.__already_done, align 1
  %20 = xor i1 %19, true
  %21 = select i1 %18, i1 %20, i1 false
  br i1 %21, label %22, label %23, !prof !9

22:                                               ; preds = %15
  store i1 true, ptr @drm_gem_shmem_fault.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 551, i32 noundef 9, ptr noundef null) #4
  br label %23

23:                                               ; preds = %22, %15
  br i1 %18, label %41, label %24

24:                                               ; preds = %23
  %25 = getelementptr inbounds %struct.drm_gem_shmem_object, ptr %4, i32 0, i32 4
  %26 = load i32, ptr %25, align 4
  %27 = icmp slt i32 %26, 0
  br i1 %27, label %41, label %28

28:                                               ; preds = %24
  %29 = load ptr, ptr %16, align 4
  %30 = getelementptr ptr, ptr %29, i32 %12
  %31 = load ptr, ptr %30, align 4
  %32 = load i32, ptr %8, align 4
  %33 = load ptr, ptr @mem_map, align 4
  %34 = ptrtoint ptr %31 to i32
  %35 = ptrtoint ptr %33 to i32
  %36 = sub i32 %34, %35
  %37 = ashr exact i32 %36, 5
  %38 = load i32, ptr @__pv_phys_pfn_offset, align 4
  %39 = add i32 %37, %38
  %40 = tail call i32 @vmf_insert_pfn(ptr noundef %2, i32 noundef %32, i32 noundef %39) #4
  br label %41

41:                                               ; preds = %28, %24, %23, %1
  %42 = phi i32 [ %40, %28 ], [ 2, %24 ], [ 2, %23 ], [ 2, %1 ]
  tail call void @mutex_unlock(ptr noundef %13) #4
  ret i32 %42
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_gem_vm_open(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vmf_insert_pfn(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { nounwind }
attributes #5 = { nounwind allocsize(2) }

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
!9 = !{!"branch_weights", i32 1, i32 2000}
!10 = !{i8 0, i8 2}
!11 = !{!"branch_weights", i32 2146410443, i32 1073205}
!12 = !{!"branch_weights", i32 1073205, i32 2146410443}
!13 = !{i64 2148246655}
!14 = !{i64 643613, i64 2148133584, i64 2148133610, i64 2148133657, i64 2148133679, i64 2148133707, i64 2148133727}
!15 = !{i64 2148148814, i64 2148148846, i64 2148148875, i64 2148148909, i64 2148148940, i64 2148148963}
!16 = !{i64 2149588530}
