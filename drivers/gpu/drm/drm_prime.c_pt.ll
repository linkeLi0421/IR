; ModuleID = '/llk/IR/drivers/gpu/drm/drm_prime.c_pt.bc'
source_filename = "../drivers/gpu/drm/drm_prime.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_drm_gem_dmabuf_export:\09\09\09\09\09"
module asm "\09.asciz \09\22drm_gem_dmabuf_export\22\09\09\09\09\09"
module asm "__kstrtabns_drm_gem_dmabuf_export:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_drm_gem_dmabuf_release:\09\09\09\09\09"
module asm "\09.asciz \09\22drm_gem_dmabuf_release\22\09\09\09\09\09"
module asm "__kstrtabns_drm_gem_dmabuf_release:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_drm_gem_prime_fd_to_handle:\09\09\09\09\09"
module asm "\09.asciz \09\22drm_gem_prime_fd_to_handle\22\09\09\09\09\09"
module asm "__kstrtabns_drm_gem_prime_fd_to_handle:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_drm_gem_prime_handle_to_fd:\09\09\09\09\09"
module asm "\09.asciz \09\22drm_gem_prime_handle_to_fd\22\09\09\09\09\09"
module asm "__kstrtabns_drm_gem_prime_handle_to_fd:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_drm_gem_map_attach:\09\09\09\09\09"
module asm "\09.asciz \09\22drm_gem_map_attach\22\09\09\09\09\09"
module asm "__kstrtabns_drm_gem_map_attach:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_drm_gem_map_detach:\09\09\09\09\09"
module asm "\09.asciz \09\22drm_gem_map_detach\22\09\09\09\09\09"
module asm "__kstrtabns_drm_gem_map_detach:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_drm_gem_map_dma_buf:\09\09\09\09\09"
module asm "\09.asciz \09\22drm_gem_map_dma_buf\22\09\09\09\09\09"
module asm "__kstrtabns_drm_gem_map_dma_buf:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_drm_gem_unmap_dma_buf:\09\09\09\09\09"
module asm "\09.asciz \09\22drm_gem_unmap_dma_buf\22\09\09\09\09\09"
module asm "__kstrtabns_drm_gem_unmap_dma_buf:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_drm_gem_dmabuf_vmap:\09\09\09\09\09"
module asm "\09.asciz \09\22drm_gem_dmabuf_vmap\22\09\09\09\09\09"
module asm "__kstrtabns_drm_gem_dmabuf_vmap:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_drm_gem_dmabuf_vunmap:\09\09\09\09\09"
module asm "\09.asciz \09\22drm_gem_dmabuf_vunmap\22\09\09\09\09\09"
module asm "__kstrtabns_drm_gem_dmabuf_vunmap:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_drm_gem_prime_mmap:\09\09\09\09\09"
module asm "\09.asciz \09\22drm_gem_prime_mmap\22\09\09\09\09\09"
module asm "__kstrtabns_drm_gem_prime_mmap:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_drm_gem_dmabuf_mmap:\09\09\09\09\09"
module asm "\09.asciz \09\22drm_gem_dmabuf_mmap\22\09\09\09\09\09"
module asm "__kstrtabns_drm_gem_dmabuf_mmap:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_drm_prime_pages_to_sg:\09\09\09\09\09"
module asm "\09.asciz \09\22drm_prime_pages_to_sg\22\09\09\09\09\09"
module asm "__kstrtabns_drm_prime_pages_to_sg:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_drm_prime_get_contiguous_size:\09\09\09\09\09"
module asm "\09.asciz \09\22drm_prime_get_contiguous_size\22\09\09\09\09\09"
module asm "__kstrtabns_drm_prime_get_contiguous_size:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_drm_gem_prime_export:\09\09\09\09\09"
module asm "\09.asciz \09\22drm_gem_prime_export\22\09\09\09\09\09"
module asm "__kstrtabns_drm_gem_prime_export:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_drm_gem_prime_import_dev:\09\09\09\09\09"
module asm "\09.asciz \09\22drm_gem_prime_import_dev\22\09\09\09\09\09"
module asm "__kstrtabns_drm_gem_prime_import_dev:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_drm_gem_prime_import:\09\09\09\09\09"
module asm "\09.asciz \09\22drm_gem_prime_import\22\09\09\09\09\09"
module asm "__kstrtabns_drm_gem_prime_import:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_drm_prime_sg_to_page_array:\09\09\09\09\09"
module asm "\09.asciz \09\22drm_prime_sg_to_page_array\22\09\09\09\09\09"
module asm "__kstrtabns_drm_prime_sg_to_page_array:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_drm_prime_sg_to_dma_addr_array:\09\09\09\09\09"
module asm "\09.asciz \09\22drm_prime_sg_to_dma_addr_array\22\09\09\09\09\09"
module asm "__kstrtabns_drm_prime_sg_to_dma_addr_array:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_drm_prime_gem_destroy:\09\09\09\09\09"
module asm "\09.asciz \09\22drm_prime_gem_destroy\22\09\09\09\09\09"
module asm "__kstrtabns_drm_prime_gem_destroy:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.lock_class_key = type {}
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.dma_buf_ops = type { i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.drm_prime_file_private = type { %struct.mutex, %struct.rb_root, %struct.rb_root }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon }
%union.anon = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.rb_root = type { ptr }
%struct.rb_node = type { i32, ptr, ptr }
%struct.dma_buf_export_info = type { ptr, ptr, ptr, i32, i32, ptr, ptr }
%struct.drm_gem_object = type { %struct.kref, i32, ptr, ptr, %struct.drm_vma_offset_node, i32, i32, ptr, ptr, ptr, %struct.dma_resv, ptr }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.drm_vma_offset_node = type { %struct.rwlock_t, %struct.drm_mm_node, %struct.rb_root, ptr }
%struct.rwlock_t = type { %struct.arch_rwlock_t }
%struct.arch_rwlock_t = type { i32 }
%struct.drm_mm_node = type { i32, i64, i64, ptr, %struct.list_head, %struct.list_head, %struct.rb_node, %struct.rb_node, %struct.rb_node, i64, i64, i64, i32 }
%struct.dma_resv = type { %struct.ww_mutex, %struct.seqcount_ww_mutex, ptr, ptr }
%struct.ww_mutex = type { %struct.mutex, ptr }
%struct.seqcount_ww_mutex = type { %struct.seqcount }
%struct.seqcount = type { i32 }
%struct.drm_device = type { i32, %struct.kref, ptr, %struct.anon.67, ptr, ptr, ptr, ptr, i8, ptr, i32, i8, ptr, ptr, %struct.mutex, %struct.mutex, %struct.atomic_t, %struct.mutex, %struct.list_head, %struct.list_head, %struct.mutex, %struct.list_head, i8, ptr, %struct.spinlock, %struct.spinlock, i32, %struct.list_head, %struct.spinlock, i32, %struct.drm_mode_config, %struct.mutex, %struct.idr, ptr, ptr, i32, ptr, %struct.list_head, ptr, %struct.list_head, %struct.mutex, %struct.idr, %struct.list_head, %struct.drm_open_hash, %struct.list_head, ptr, i32, i32, %struct.spinlock, i32, %struct.atomic_t, %struct.anon.69, ptr, i32, ptr, i8, i32 }
%struct.anon.67 = type { %struct.list_head, ptr, %struct.spinlock }
%struct.drm_mode_config = type { %struct.mutex, %struct.drm_modeset_lock, ptr, %struct.mutex, %struct.idr, %struct.idr, %struct.mutex, i32, %struct.list_head, %struct.spinlock, i32, %struct.ida, %struct.list_head, %struct.llist_head, %struct.work_struct, i32, %struct.list_head, i32, %struct.list_head, i32, %struct.list_head, %struct.list_head, %struct.list_head, i32, i32, i32, i32, ptr, i32, i8, i8, i8, %struct.delayed_work, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i8, i8, i8, i8, i8, i8, ptr, i32, i32, ptr, ptr }
%struct.drm_modeset_lock = type { %struct.ww_mutex, %struct.list_head }
%struct.ida = type { %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.llist_head = type { ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32 }
%struct.hlist_node = type { ptr, ptr }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.drm_open_hash = type { ptr, i8 }
%struct.spinlock = type { %union.anon.2 }
%union.anon.2 = type { %struct.raw_spinlock }
%struct.anon.69 = type { i32, ptr }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.55, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.56, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.57, ptr, %struct.address_space, %struct.list_head, %union.anon.60, i32, i32, ptr, ptr }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%union.anon.55 = type { i32 }
%struct.timespec64 = type { i64, i32 }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head }
%union.anon.56 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.atomic64_t = type { i64 }
%union.anon.57 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%union.anon.60 = type { ptr }
%struct.dma_buf = type { i32, ptr, %struct.list_head, ptr, %struct.mutex, i32, %struct.dma_buf_map, ptr, ptr, %struct.spinlock, ptr, %struct.list_head, ptr, ptr, %struct.wait_queue_head, %struct.dma_buf_poll_cb_t, %struct.dma_buf_poll_cb_t }
%struct.dma_buf_map = type { %union.anon.65, i8 }
%union.anon.65 = type { ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dma_buf_poll_cb_t = type { %struct.dma_fence_cb, ptr, i32 }
%struct.dma_fence_cb = type { %struct.list_head, ptr }
%struct.file = type { %union.anon.0, %struct.path, ptr, ptr, %struct.spinlock, i32, %struct.atomic_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, ptr, %struct.file_ra_state, i64, ptr, ptr, ptr, i32, i32 }
%union.anon.0 = type { %struct.callback_head }
%struct.path = type { ptr, ptr }
%struct.fown_struct = type { %struct.rwlock_t, ptr, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.file_ra_state = type { i32, i32, i32, i32, i32, i64 }
%struct.drm_file = type { i8, i8, i8, i8, i8, i8, i8, i8, ptr, %struct.spinlock, ptr, i32, %struct.list_head, ptr, %struct.idr, %struct.spinlock, %struct.idr, %struct.spinlock, ptr, ptr, %struct.list_head, %struct.mutex, %struct.list_head, %struct.wait_queue_head, %struct.list_head, %struct.list_head, i32, %struct.mutex, %struct.drm_prime_file_private, i32 }
%struct.drm_driver = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, ptr, ptr, ptr, i32, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32 }
%struct.drm_prime_member = type { ptr, i32, %struct.rb_node, %struct.rb_node }
%struct.drm_prime_handle = type { i32, i32, i32 }
%struct.drm_gem_object_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dma_buf_attachment = type { ptr, ptr, %struct.list_head, ptr, i32, i8, ptr, ptr, ptr }
%struct.sg_table = type { ptr, i32, i32 }
%struct.vm_area_struct = type { i32, i32, ptr, ptr, %struct.rb_node, i32, ptr, i32, i32, %union.anon.12, %struct.list_head, ptr, ptr, i32, ptr, ptr, %struct.atomic_t, %struct.vm_userfaultfd_ctx }
%union.anon.12 = type { %struct.anon.13 }
%struct.anon.13 = type { %struct.rb_node, i32 }
%struct.vm_userfaultfd_ctx = type {}
%struct.file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.scatterlist = type { i32, i32, i32, i32, i32 }
%struct.sg_page_iter = type { ptr, i32, i32, i32 }
%struct.page = type { i32, %union.anon.3, %union.anon.18, %struct.atomic_t }
%union.anon.3 = type { %struct.anon.4 }
%struct.anon.4 = type { %struct.list_head, ptr, i32, i32 }
%union.anon.18 = type { %struct.atomic_t }
%struct.sg_dma_page_iter = type { %struct.sg_page_iter }

@__UNIQUE_ID_import_ns249 = internal constant [22 x i8] c"drm.import_ns=DMA_BUF\00", section ".modinfo", align 1
@drm_prime_init_file_private.__key = internal global %struct.lock_class_key zeroinitializer, align 1
@.str = private unnamed_addr constant [19 x i8] c"&prime_fpriv->lock\00", align 1
@.str.1 = private unnamed_addr constant [28 x i8] c"drivers/gpu/drm/drm_prime.c\00", align 1
@__kstrtab_drm_gem_dmabuf_export = external dso_local constant [0 x i8], align 1
@__kstrtabns_drm_gem_dmabuf_export = external dso_local constant [0 x i8], align 1
@__ksymtab_drm_gem_dmabuf_export = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @drm_gem_dmabuf_export to i32), ptr @__kstrtab_drm_gem_dmabuf_export, ptr @__kstrtabns_drm_gem_dmabuf_export }, section "___ksymtab+drm_gem_dmabuf_export", align 4
@__kstrtab_drm_gem_dmabuf_release = external dso_local constant [0 x i8], align 1
@__kstrtabns_drm_gem_dmabuf_release = external dso_local constant [0 x i8], align 1
@__ksymtab_drm_gem_dmabuf_release = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @drm_gem_dmabuf_release to i32), ptr @__kstrtab_drm_gem_dmabuf_release, ptr @__kstrtabns_drm_gem_dmabuf_release }, section "___ksymtab+drm_gem_dmabuf_release", align 4
@__kstrtab_drm_gem_prime_fd_to_handle = external dso_local constant [0 x i8], align 1
@__kstrtabns_drm_gem_prime_fd_to_handle = external dso_local constant [0 x i8], align 1
@__ksymtab_drm_gem_prime_fd_to_handle = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @drm_gem_prime_fd_to_handle to i32), ptr @__kstrtab_drm_gem_prime_fd_to_handle, ptr @__kstrtabns_drm_gem_prime_fd_to_handle }, section "___ksymtab+drm_gem_prime_fd_to_handle", align 4
@__kstrtab_drm_gem_prime_handle_to_fd = external dso_local constant [0 x i8], align 1
@__kstrtabns_drm_gem_prime_handle_to_fd = external dso_local constant [0 x i8], align 1
@__ksymtab_drm_gem_prime_handle_to_fd = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @drm_gem_prime_handle_to_fd to i32), ptr @__kstrtab_drm_gem_prime_handle_to_fd, ptr @__kstrtabns_drm_gem_prime_handle_to_fd }, section "___ksymtab+drm_gem_prime_handle_to_fd", align 4
@__kstrtab_drm_gem_map_attach = external dso_local constant [0 x i8], align 1
@__kstrtabns_drm_gem_map_attach = external dso_local constant [0 x i8], align 1
@__ksymtab_drm_gem_map_attach = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @drm_gem_map_attach to i32), ptr @__kstrtab_drm_gem_map_attach, ptr @__kstrtabns_drm_gem_map_attach }, section "___ksymtab+drm_gem_map_attach", align 4
@__kstrtab_drm_gem_map_detach = external dso_local constant [0 x i8], align 1
@__kstrtabns_drm_gem_map_detach = external dso_local constant [0 x i8], align 1
@__ksymtab_drm_gem_map_detach = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @drm_gem_map_detach to i32), ptr @__kstrtab_drm_gem_map_detach, ptr @__kstrtabns_drm_gem_map_detach }, section "___ksymtab+drm_gem_map_detach", align 4
@__kstrtab_drm_gem_map_dma_buf = external dso_local constant [0 x i8], align 1
@__kstrtabns_drm_gem_map_dma_buf = external dso_local constant [0 x i8], align 1
@__ksymtab_drm_gem_map_dma_buf = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @drm_gem_map_dma_buf to i32), ptr @__kstrtab_drm_gem_map_dma_buf, ptr @__kstrtabns_drm_gem_map_dma_buf }, section "___ksymtab+drm_gem_map_dma_buf", align 4
@__kstrtab_drm_gem_unmap_dma_buf = external dso_local constant [0 x i8], align 1
@__kstrtabns_drm_gem_unmap_dma_buf = external dso_local constant [0 x i8], align 1
@__ksymtab_drm_gem_unmap_dma_buf = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @drm_gem_unmap_dma_buf to i32), ptr @__kstrtab_drm_gem_unmap_dma_buf, ptr @__kstrtabns_drm_gem_unmap_dma_buf }, section "___ksymtab+drm_gem_unmap_dma_buf", align 4
@__kstrtab_drm_gem_dmabuf_vmap = external dso_local constant [0 x i8], align 1
@__kstrtabns_drm_gem_dmabuf_vmap = external dso_local constant [0 x i8], align 1
@__ksymtab_drm_gem_dmabuf_vmap = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @drm_gem_dmabuf_vmap to i32), ptr @__kstrtab_drm_gem_dmabuf_vmap, ptr @__kstrtabns_drm_gem_dmabuf_vmap }, section "___ksymtab+drm_gem_dmabuf_vmap", align 4
@__kstrtab_drm_gem_dmabuf_vunmap = external dso_local constant [0 x i8], align 1
@__kstrtabns_drm_gem_dmabuf_vunmap = external dso_local constant [0 x i8], align 1
@__ksymtab_drm_gem_dmabuf_vunmap = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @drm_gem_dmabuf_vunmap to i32), ptr @__kstrtab_drm_gem_dmabuf_vunmap, ptr @__kstrtabns_drm_gem_dmabuf_vunmap }, section "___ksymtab+drm_gem_dmabuf_vunmap", align 4
@__kstrtab_drm_gem_prime_mmap = external dso_local constant [0 x i8], align 1
@__kstrtabns_drm_gem_prime_mmap = external dso_local constant [0 x i8], align 1
@__ksymtab_drm_gem_prime_mmap = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @drm_gem_prime_mmap to i32), ptr @__kstrtab_drm_gem_prime_mmap, ptr @__kstrtabns_drm_gem_prime_mmap }, section "___ksymtab+drm_gem_prime_mmap", align 4
@__kstrtab_drm_gem_dmabuf_mmap = external dso_local constant [0 x i8], align 1
@__kstrtabns_drm_gem_dmabuf_mmap = external dso_local constant [0 x i8], align 1
@__ksymtab_drm_gem_dmabuf_mmap = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @drm_gem_dmabuf_mmap to i32), ptr @__kstrtab_drm_gem_dmabuf_mmap, ptr @__kstrtabns_drm_gem_dmabuf_mmap }, section "___ksymtab+drm_gem_dmabuf_mmap", align 4
@__kstrtab_drm_prime_pages_to_sg = external dso_local constant [0 x i8], align 1
@__kstrtabns_drm_prime_pages_to_sg = external dso_local constant [0 x i8], align 1
@__ksymtab_drm_prime_pages_to_sg = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @drm_prime_pages_to_sg to i32), ptr @__kstrtab_drm_prime_pages_to_sg, ptr @__kstrtabns_drm_prime_pages_to_sg }, section "___ksymtab+drm_prime_pages_to_sg", align 4
@__kstrtab_drm_prime_get_contiguous_size = external dso_local constant [0 x i8], align 1
@__kstrtabns_drm_prime_get_contiguous_size = external dso_local constant [0 x i8], align 1
@__ksymtab_drm_prime_get_contiguous_size = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @drm_prime_get_contiguous_size to i32), ptr @__kstrtab_drm_prime_get_contiguous_size, ptr @__kstrtabns_drm_prime_get_contiguous_size }, section "___ksymtab+drm_prime_get_contiguous_size", align 4
@.str.2 = private unnamed_addr constant [4 x i8] c"drm\00", align 1
@drm_gem_prime_dmabuf_ops = internal constant %struct.dma_buf_ops { i8 1, ptr @drm_gem_map_attach, ptr @drm_gem_map_detach, ptr null, ptr null, ptr @drm_gem_map_dma_buf, ptr @drm_gem_unmap_dma_buf, ptr @drm_gem_dmabuf_release, ptr null, ptr null, ptr @drm_gem_dmabuf_mmap, ptr @drm_gem_dmabuf_vmap, ptr @drm_gem_dmabuf_vunmap }, align 4
@__kstrtab_drm_gem_prime_export = external dso_local constant [0 x i8], align 1
@__kstrtabns_drm_gem_prime_export = external dso_local constant [0 x i8], align 1
@__ksymtab_drm_gem_prime_export = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @drm_gem_prime_export to i32), ptr @__kstrtab_drm_gem_prime_export, ptr @__kstrtabns_drm_gem_prime_export }, section "___ksymtab+drm_gem_prime_export", align 4
@__kstrtab_drm_gem_prime_import_dev = external dso_local constant [0 x i8], align 1
@__kstrtabns_drm_gem_prime_import_dev = external dso_local constant [0 x i8], align 1
@__ksymtab_drm_gem_prime_import_dev = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @drm_gem_prime_import_dev to i32), ptr @__kstrtab_drm_gem_prime_import_dev, ptr @__kstrtabns_drm_gem_prime_import_dev }, section "___ksymtab+drm_gem_prime_import_dev", align 4
@__kstrtab_drm_gem_prime_import = external dso_local constant [0 x i8], align 1
@__kstrtabns_drm_gem_prime_import = external dso_local constant [0 x i8], align 1
@__ksymtab_drm_gem_prime_import = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @drm_gem_prime_import to i32), ptr @__kstrtab_drm_gem_prime_import, ptr @__kstrtabns_drm_gem_prime_import }, section "___ksymtab+drm_gem_prime_import", align 4
@__kstrtab_drm_prime_sg_to_page_array = external dso_local constant [0 x i8], align 1
@__kstrtabns_drm_prime_sg_to_page_array = external dso_local constant [0 x i8], align 1
@__ksymtab_drm_prime_sg_to_page_array = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @drm_prime_sg_to_page_array to i32), ptr @__kstrtab_drm_prime_sg_to_page_array, ptr @__kstrtabns_drm_prime_sg_to_page_array }, section "___ksymtab+drm_prime_sg_to_page_array", align 4
@__kstrtab_drm_prime_sg_to_dma_addr_array = external dso_local constant [0 x i8], align 1
@__kstrtabns_drm_prime_sg_to_dma_addr_array = external dso_local constant [0 x i8], align 1
@__ksymtab_drm_prime_sg_to_dma_addr_array = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @drm_prime_sg_to_dma_addr_array to i32), ptr @__kstrtab_drm_prime_sg_to_dma_addr_array, ptr @__kstrtabns_drm_prime_sg_to_dma_addr_array }, section "___ksymtab+drm_prime_sg_to_dma_addr_array", align 4
@__kstrtab_drm_prime_gem_destroy = external dso_local constant [0 x i8], align 1
@__kstrtabns_drm_prime_gem_destroy = external dso_local constant [0 x i8], align 1
@__ksymtab_drm_prime_gem_destroy = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @drm_prime_gem_destroy to i32), ptr @__kstrtab_drm_prime_gem_destroy, ptr @__kstrtabns_drm_prime_gem_destroy }, section "___ksymtab+drm_prime_gem_destroy", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@llvm.compiler.used = appending global [21 x ptr] [ptr @__UNIQUE_ID_import_ns249, ptr @__ksymtab_drm_gem_dmabuf_export, ptr @__ksymtab_drm_gem_dmabuf_mmap, ptr @__ksymtab_drm_gem_dmabuf_release, ptr @__ksymtab_drm_gem_dmabuf_vmap, ptr @__ksymtab_drm_gem_dmabuf_vunmap, ptr @__ksymtab_drm_gem_map_attach, ptr @__ksymtab_drm_gem_map_detach, ptr @__ksymtab_drm_gem_map_dma_buf, ptr @__ksymtab_drm_gem_prime_export, ptr @__ksymtab_drm_gem_prime_fd_to_handle, ptr @__ksymtab_drm_gem_prime_handle_to_fd, ptr @__ksymtab_drm_gem_prime_import, ptr @__ksymtab_drm_gem_prime_import_dev, ptr @__ksymtab_drm_gem_prime_mmap, ptr @__ksymtab_drm_gem_unmap_dma_buf, ptr @__ksymtab_drm_prime_gem_destroy, ptr @__ksymtab_drm_prime_get_contiguous_size, ptr @__ksymtab_drm_prime_pages_to_sg, ptr @__ksymtab_drm_prime_sg_to_dma_addr_array, ptr @__ksymtab_drm_prime_sg_to_page_array], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @drm_prime_remove_buf_handle_locked(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.drm_prime_file_private, ptr %0, i32 0, i32 1
  %4 = load ptr, ptr %3, align 4
  %5 = icmp eq ptr %4, null
  br i1 %5, label %22, label %6

6:                                                ; preds = %15, %2
  %7 = phi ptr [ %20, %15 ], [ %4, %2 ]
  %8 = getelementptr i8, ptr %7, i32 -8
  %9 = load ptr, ptr %8, align 4
  %10 = icmp eq ptr %9, %1
  br i1 %10, label %11, label %15

11:                                               ; preds = %6
  %12 = getelementptr i8, ptr %7, i32 -8
  %13 = getelementptr i8, ptr %7, i32 12
  %14 = getelementptr inbounds %struct.drm_prime_file_private, ptr %0, i32 0, i32 2
  tail call void @rb_erase(ptr noundef %13, ptr noundef %14) #5
  tail call void @rb_erase(ptr noundef nonnull %7, ptr noundef %3) #5
  tail call void @dma_buf_put(ptr noundef %1) #5
  tail call void @kfree(ptr noundef %12) #5
  br label %22

15:                                               ; preds = %6
  %16 = icmp ult ptr %9, %1
  %17 = getelementptr inbounds %struct.rb_node, ptr %7, i32 0, i32 1
  %18 = getelementptr inbounds %struct.rb_node, ptr %7, i32 0, i32 2
  %19 = select i1 %16, ptr %17, ptr %18
  %20 = load ptr, ptr %19, align 4
  %21 = icmp eq ptr %20, null
  br i1 %21, label %22, label %6

22:                                               ; preds = %15, %11, %2
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @rb_erase(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_buf_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @drm_prime_init_file_private(ptr noundef %0) local_unnamed_addr #0 {
  tail call void @__mutex_init(ptr noundef %0, ptr noundef nonnull @.str, ptr noundef nonnull @drm_prime_init_file_private.__key) #5
  %2 = getelementptr inbounds %struct.drm_prime_file_private, ptr %0, i32 0, i32 1
  store ptr null, ptr %2, align 4
  %3 = getelementptr inbounds %struct.drm_prime_file_private, ptr %0, i32 0, i32 2
  store ptr null, ptr %3, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @drm_prime_destroy_file_private(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.drm_prime_file_private, ptr %0, i32 0, i32 1
  %3 = load volatile ptr, ptr %2, align 4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %6, label %5, !prof !8

5:                                                ; preds = %1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 228, i32 noundef 9, ptr noundef null) #5
  br label %6

6:                                                ; preds = %5, %1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @drm_gem_dmabuf_export(ptr noundef %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.dma_buf_export_info, ptr %1, i32 0, i32 6
  %4 = load ptr, ptr %3, align 4
  %5 = tail call ptr @dma_buf_export(ptr noundef %1) #5
  %6 = icmp ugt ptr %5, inttoptr (i32 -4096 to ptr)
  br i1 %6, label %27, label %7

7:                                                ; preds = %2
  tail call void @drm_dev_get(ptr noundef %0) #5
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %4) #5, !srcloc !9
  %8 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %4, ptr %4, i32 1, ptr elementtype(i32) %4) #5, !srcloc !10
  %9 = extractvalue { i32, i32, i32 } %8, 0
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %15, label %11, !prof !11

11:                                               ; preds = %7
  %12 = add i32 %9, 1
  %13 = or i32 %12, %9
  %14 = icmp sgt i32 %13, -1
  br i1 %14, label %17, label %15, !prof !8

15:                                               ; preds = %11, %7
  %16 = phi i32 [ 2, %7 ], [ 1, %11 ]
  tail call void @refcount_warn_saturate(ptr noundef %4, i32 noundef %16) #5
  br label %17

17:                                               ; preds = %15, %11
  %18 = getelementptr inbounds %struct.drm_gem_object, ptr %4, i32 0, i32 2
  %19 = load ptr, ptr %18, align 8
  %20 = getelementptr inbounds %struct.drm_device, ptr %19, i32 0, i32 12
  %21 = load ptr, ptr %20, align 4
  %22 = getelementptr inbounds %struct.inode, ptr %21, i32 0, i32 9
  %23 = load ptr, ptr %22, align 8
  %24 = getelementptr inbounds %struct.dma_buf, ptr %5, i32 0, i32 1
  %25 = load ptr, ptr %24, align 4
  %26 = getelementptr inbounds %struct.file, ptr %25, i32 0, i32 17
  store ptr %23, ptr %26, align 8
  br label %27

27:                                               ; preds = %17, %2
  ret ptr %5
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dma_buf_export(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_dev_get(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @drm_gem_dmabuf_release(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.dma_buf, ptr %0, i32 0, i32 12
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.drm_gem_object, ptr %3, i32 0, i32 2
  %5 = load ptr, ptr %4, align 8
  %6 = icmp eq ptr %3, null
  br i1 %6, label %15, label %7

7:                                                ; preds = %1
  tail call void asm sideeffect "dmb ish", "~{memory}"() #5, !srcloc !12
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr nonnull %3) #5, !srcloc !9
  %8 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %3, ptr nonnull %3, i32 1, ptr nonnull elementtype(i32) %3) #5, !srcloc !13
  %9 = extractvalue { i32, i32, i32 } %8, 0
  %10 = icmp eq i32 %9, 1
  br i1 %10, label %14, label %11

11:                                               ; preds = %7
  %12 = icmp sgt i32 %9, 0
  br i1 %12, label %15, label %13, !prof !8

13:                                               ; preds = %11
  tail call void @refcount_warn_saturate(ptr noundef nonnull %3, i32 noundef 3) #5
  br label %15

14:                                               ; preds = %7
  tail call void asm sideeffect "dmb ish", "~{memory}"() #5, !srcloc !14
  tail call void @drm_gem_object_free(ptr noundef nonnull %3) #5
  br label %15

15:                                               ; preds = %14, %13, %11, %1
  tail call void @drm_dev_put(ptr noundef %5) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_dev_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @drm_gem_prime_fd_to_handle(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3) #0 {
  %5 = tail call ptr @dma_buf_get(i32 noundef %2) #5
  %6 = icmp ugt ptr %5, inttoptr (i32 -4096 to ptr)
  br i1 %6, label %7, label %9

7:                                                ; preds = %4
  %8 = ptrtoint ptr %5 to i32
  br label %82

9:                                                ; preds = %4
  %10 = getelementptr inbounds %struct.drm_file, ptr %1, i32 0, i32 28
  tail call void @mutex_lock(ptr noundef %10) #5
  %11 = getelementptr inbounds %struct.drm_file, ptr %1, i32 0, i32 28, i32 1
  %12 = load ptr, ptr %11, align 4
  %13 = icmp eq ptr %12, null
  br i1 %13, label %29, label %14

14:                                               ; preds = %19, %9
  %15 = phi ptr [ %24, %19 ], [ %12, %9 ]
  %16 = getelementptr i8, ptr %15, i32 -8
  %17 = load ptr, ptr %16, align 4
  %18 = icmp eq ptr %17, %5
  br i1 %18, label %26, label %19

19:                                               ; preds = %14
  %20 = icmp ult ptr %17, %5
  %21 = getelementptr inbounds %struct.rb_node, ptr %15, i32 0, i32 1
  %22 = getelementptr inbounds %struct.rb_node, ptr %15, i32 0, i32 2
  %23 = select i1 %20, ptr %21, ptr %22
  %24 = load ptr, ptr %23, align 4
  %25 = icmp eq ptr %24, null
  br i1 %25, label %29, label %14

26:                                               ; preds = %14
  %27 = getelementptr i8, ptr %15, i32 -4
  %28 = load i32, ptr %27, align 4
  store i32 %28, ptr %3, align 4
  br label %80

29:                                               ; preds = %19, %9
  %30 = getelementptr inbounds %struct.drm_device, ptr %0, i32 0, i32 31
  tail call void @mutex_lock(ptr noundef %30) #5
  %31 = getelementptr inbounds %struct.drm_device, ptr %0, i32 0, i32 4
  %32 = load ptr, ptr %31, align 4
  %33 = getelementptr inbounds %struct.drm_driver, ptr %32, i32 0, i32 12
  %34 = load ptr, ptr %33, align 4
  %35 = icmp eq ptr %34, null
  br i1 %35, label %38, label %36

36:                                               ; preds = %29
  %37 = tail call ptr %34(ptr noundef %0, ptr noundef %5) #5
  br label %42

38:                                               ; preds = %29
  %39 = getelementptr inbounds %struct.drm_device, ptr %0, i32 0, i32 2
  %40 = load ptr, ptr %39, align 4
  %41 = tail call ptr @drm_gem_prime_import_dev(ptr noundef %0, ptr noundef %5, ptr noundef %40) #5
  br label %42

42:                                               ; preds = %38, %36
  %43 = phi ptr [ %37, %36 ], [ %41, %38 ]
  %44 = icmp ugt ptr %43, inttoptr (i32 -4096 to ptr)
  br i1 %44, label %45, label %47

45:                                               ; preds = %42
  %46 = ptrtoint ptr %43 to i32
  tail call void @mutex_unlock(ptr noundef %30) #5
  br label %80

47:                                               ; preds = %42
  %48 = getelementptr inbounds %struct.drm_gem_object, ptr %43, i32 0, i32 7
  %49 = load ptr, ptr %48, align 8
  %50 = icmp eq ptr %49, null
  br i1 %50, label %54, label %51

51:                                               ; preds = %47
  %52 = icmp eq ptr %49, %5
  br i1 %52, label %59, label %53, !prof !8

53:                                               ; preds = %51
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 327, i32 noundef 9, ptr noundef null) #5
  br label %59

54:                                               ; preds = %47
  store ptr %5, ptr %48, align 8
  %55 = getelementptr inbounds %struct.dma_buf, ptr %5, i32 0, i32 1
  %56 = load ptr, ptr %55, align 4
  %57 = getelementptr inbounds %struct.file, ptr %56, i32 0, i32 6
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %57) #5, !srcloc !9
  %58 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %57, ptr %57, i32 1, ptr elementtype(i32) %57) #5, !srcloc !15
  br label %59

59:                                               ; preds = %54, %53, %51
  %60 = tail call i32 @drm_gem_handle_create_tail(ptr noundef %1, ptr noundef %43, ptr noundef %3) #5
  %61 = icmp eq ptr %43, null
  br i1 %61, label %70, label %62

62:                                               ; preds = %59
  tail call void asm sideeffect "dmb ish", "~{memory}"() #5, !srcloc !12
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr nonnull %43) #5, !srcloc !9
  %63 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %43, ptr nonnull %43, i32 1, ptr nonnull elementtype(i32) %43) #5, !srcloc !13
  %64 = extractvalue { i32, i32, i32 } %63, 0
  %65 = icmp eq i32 %64, 1
  br i1 %65, label %69, label %66

66:                                               ; preds = %62
  %67 = icmp sgt i32 %64, 0
  br i1 %67, label %70, label %68, !prof !8

68:                                               ; preds = %66
  tail call void @refcount_warn_saturate(ptr noundef nonnull %43, i32 noundef 3) #5
  br label %70

69:                                               ; preds = %62
  tail call void asm sideeffect "dmb ish", "~{memory}"() #5, !srcloc !14
  tail call void @drm_gem_object_free(ptr noundef nonnull %43) #5
  br label %70

70:                                               ; preds = %69, %68, %66, %59
  %71 = icmp eq i32 %60, 0
  br i1 %71, label %72, label %80

72:                                               ; preds = %70
  %73 = load i32, ptr %3, align 4
  %74 = tail call fastcc i32 @drm_prime_add_buf_handle(ptr noundef %10, ptr noundef %5, i32 noundef %73)
  tail call void @mutex_unlock(ptr noundef %10) #5
  %75 = icmp eq i32 %74, 0
  br i1 %75, label %76, label %77

76:                                               ; preds = %72
  tail call void @dma_buf_put(ptr noundef %5) #5
  br label %82

77:                                               ; preds = %72
  %78 = load i32, ptr %3, align 4
  %79 = tail call i32 @drm_gem_handle_delete(ptr noundef %1, i32 noundef %78) #5
  tail call void @dma_buf_put(ptr noundef %5) #5
  br label %82

80:                                               ; preds = %70, %45, %26
  %81 = phi i32 [ 0, %26 ], [ %46, %45 ], [ %60, %70 ]
  tail call void @mutex_unlock(ptr noundef %10) #5
  tail call void @dma_buf_put(ptr noundef %5) #5
  br label %82

82:                                               ; preds = %80, %77, %76, %7
  %83 = phi i32 [ %8, %7 ], [ %81, %80 ], [ %74, %77 ], [ 0, %76 ]
  ret i32 %83
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dma_buf_get(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @drm_gem_prime_import(ptr noundef %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.drm_device, ptr %0, i32 0, i32 2
  %4 = load ptr, ptr %3, align 4
  %5 = tail call ptr @drm_gem_prime_import_dev(ptr noundef %0, ptr noundef %1, ptr noundef %4)
  ret ptr %5
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_gem_handle_create_tail(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @drm_prime_add_buf_handle(ptr noundef %0, ptr noundef %1, i32 noundef %2) unnamed_addr #0 {
  %4 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %5 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %4, i32 noundef 3264, i32 noundef 32) #6
  %6 = icmp eq ptr %5, null
  br i1 %6, label %55, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.dma_buf, ptr %1, i32 0, i32 1
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.file, ptr %9, i32 0, i32 6
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %10) #5, !srcloc !9
  %11 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %10, ptr %10, i32 1, ptr elementtype(i32) %10) #5, !srcloc !15
  store ptr %1, ptr %5, align 8
  %12 = getelementptr inbounds %struct.drm_prime_member, ptr %5, i32 0, i32 1
  store i32 %2, ptr %12, align 4
  %13 = getelementptr inbounds %struct.drm_prime_file_private, ptr %0, i32 0, i32 1
  %14 = load ptr, ptr %13, align 4
  %15 = icmp eq ptr %14, null
  br i1 %15, label %28, label %16

16:                                               ; preds = %16, %7
  %17 = phi ptr [ %24, %16 ], [ %14, %7 ]
  %18 = getelementptr i8, ptr %17, i32 -8
  %19 = load ptr, ptr %18, align 4
  %20 = icmp ult ptr %19, %1
  %21 = getelementptr inbounds %struct.rb_node, ptr %17, i32 0, i32 1
  %22 = getelementptr inbounds %struct.rb_node, ptr %17, i32 0, i32 2
  %23 = select i1 %20, ptr %21, ptr %22
  %24 = load ptr, ptr %23, align 4
  %25 = icmp eq ptr %24, null
  br i1 %25, label %26, label %16

26:                                               ; preds = %16
  %27 = ptrtoint ptr %17 to i32
  br label %28

28:                                               ; preds = %26, %7
  %29 = phi i32 [ %27, %26 ], [ 0, %7 ]
  %30 = phi ptr [ %23, %26 ], [ %13, %7 ]
  %31 = getelementptr inbounds %struct.drm_prime_member, ptr %5, i32 0, i32 2
  store i32 %29, ptr %31, align 8
  %32 = getelementptr inbounds %struct.drm_prime_member, ptr %5, i32 0, i32 2, i32 1
  store ptr null, ptr %32, align 4
  %33 = getelementptr inbounds %struct.drm_prime_member, ptr %5, i32 0, i32 2, i32 2
  store ptr null, ptr %33, align 8
  store ptr %31, ptr %30, align 4
  tail call void @rb_insert_color(ptr noundef %31, ptr noundef %13) #5
  %34 = getelementptr inbounds %struct.drm_prime_file_private, ptr %0, i32 0, i32 2
  %35 = load ptr, ptr %34, align 4
  %36 = icmp eq ptr %35, null
  br i1 %36, label %49, label %37

37:                                               ; preds = %37, %28
  %38 = phi ptr [ %45, %37 ], [ %35, %28 ]
  %39 = getelementptr i8, ptr %38, i32 -16
  %40 = load i32, ptr %39, align 4
  %41 = icmp ult i32 %40, %2
  %42 = getelementptr inbounds %struct.rb_node, ptr %38, i32 0, i32 1
  %43 = getelementptr inbounds %struct.rb_node, ptr %38, i32 0, i32 2
  %44 = select i1 %41, ptr %42, ptr %43
  %45 = load ptr, ptr %44, align 4
  %46 = icmp eq ptr %45, null
  br i1 %46, label %47, label %37

47:                                               ; preds = %37
  %48 = ptrtoint ptr %38 to i32
  br label %49

49:                                               ; preds = %47, %28
  %50 = phi i32 [ %48, %47 ], [ 0, %28 ]
  %51 = phi ptr [ %44, %47 ], [ %34, %28 ]
  %52 = getelementptr inbounds %struct.drm_prime_member, ptr %5, i32 0, i32 3
  store i32 %50, ptr %52, align 4
  %53 = getelementptr inbounds %struct.drm_prime_member, ptr %5, i32 0, i32 3, i32 1
  store ptr null, ptr %53, align 8
  %54 = getelementptr inbounds %struct.drm_prime_member, ptr %5, i32 0, i32 3, i32 2
  store ptr null, ptr %54, align 4
  store ptr %52, ptr %51, align 4
  tail call void @rb_insert_color(ptr noundef %52, ptr noundef %34) #5
  br label %55

55:                                               ; preds = %49, %3
  %56 = phi i32 [ 0, %49 ], [ -12, %3 ]
  ret i32 %56
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_gem_handle_delete(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @drm_prime_fd_to_handle_ioctl(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.drm_device, ptr %0, i32 0, i32 4
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.drm_driver, ptr %5, i32 0, i32 11
  %7 = load ptr, ptr %6, align 4
  %8 = icmp eq ptr %7, null
  br i1 %8, label %13, label %9

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.drm_prime_handle, ptr %1, i32 0, i32 2
  %11 = load i32, ptr %10, align 4
  %12 = tail call i32 %7(ptr noundef %0, ptr noundef %2, i32 noundef %11, ptr noundef %1) #5
  br label %13

13:                                               ; preds = %9, %3
  %14 = phi i32 [ %12, %9 ], [ -38, %3 ]
  ret i32 %14
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @drm_gem_prime_handle_to_fd(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr nocapture noundef writeonly %4) #0 {
  %6 = getelementptr inbounds %struct.drm_file, ptr %1, i32 0, i32 28
  tail call void @mutex_lock(ptr noundef %6) #5
  %7 = tail call ptr @drm_gem_object_lookup(ptr noundef %1, i32 noundef %2) #5
  %8 = icmp eq ptr %7, null
  br i1 %8, label %103, label %9

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.drm_file, ptr %1, i32 0, i32 28, i32 2
  %11 = load ptr, ptr %10, align 4
  %12 = icmp eq ptr %11, null
  br i1 %12, label %34, label %13

13:                                               ; preds = %18, %9
  %14 = phi ptr [ %23, %18 ], [ %11, %9 ]
  %15 = getelementptr i8, ptr %14, i32 -16
  %16 = load i32, ptr %15, align 4
  %17 = icmp eq i32 %16, %2
  br i1 %17, label %25, label %18

18:                                               ; preds = %13
  %19 = icmp ult i32 %16, %2
  %20 = getelementptr inbounds %struct.rb_node, ptr %14, i32 0, i32 1
  %21 = getelementptr inbounds %struct.rb_node, ptr %14, i32 0, i32 2
  %22 = select i1 %19, ptr %20, ptr %21
  %23 = load ptr, ptr %22, align 4
  %24 = icmp eq ptr %23, null
  br i1 %24, label %34, label %13

25:                                               ; preds = %13
  %26 = getelementptr i8, ptr %14, i32 -20
  %27 = load ptr, ptr %26, align 4
  %28 = icmp eq ptr %27, null
  br i1 %28, label %34, label %29

29:                                               ; preds = %25
  %30 = getelementptr inbounds %struct.dma_buf, ptr %27, i32 0, i32 1
  %31 = load ptr, ptr %30, align 4
  %32 = getelementptr inbounds %struct.file, ptr %31, i32 0, i32 6
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %32) #5, !srcloc !9
  %33 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %32, ptr %32, i32 1, ptr elementtype(i32) %32) #5, !srcloc !15
  br label %86

34:                                               ; preds = %25, %18, %9
  %35 = getelementptr inbounds %struct.drm_device, ptr %0, i32 0, i32 31
  tail call void @mutex_lock(ptr noundef %35) #5
  %36 = getelementptr inbounds %struct.drm_gem_object, ptr %7, i32 0, i32 8
  %37 = load ptr, ptr %36, align 4
  %38 = icmp eq ptr %37, null
  br i1 %38, label %45, label %39

39:                                               ; preds = %34
  %40 = load ptr, ptr %37, align 4
  %41 = getelementptr inbounds %struct.dma_buf, ptr %40, i32 0, i32 1
  %42 = load ptr, ptr %41, align 4
  %43 = getelementptr inbounds %struct.file, ptr %42, i32 0, i32 6
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %43) #5, !srcloc !9
  %44 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %43, ptr %43, i32 1, ptr elementtype(i32) %43) #5, !srcloc !15
  br label %82

45:                                               ; preds = %34
  %46 = getelementptr inbounds %struct.drm_gem_object, ptr %7, i32 0, i32 7
  %47 = load ptr, ptr %46, align 8
  %48 = icmp eq ptr %47, null
  br i1 %48, label %55, label %49

49:                                               ; preds = %45
  %50 = getelementptr inbounds %struct.dma_buf, ptr %47, i32 0, i32 1
  %51 = load ptr, ptr %50, align 4
  %52 = getelementptr inbounds %struct.file, ptr %51, i32 0, i32 6
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %52) #5, !srcloc !9
  %53 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %52, ptr %52, i32 1, ptr elementtype(i32) %52) #5, !srcloc !15
  %54 = load ptr, ptr %46, align 8
  br label %82

55:                                               ; preds = %45
  %56 = getelementptr inbounds %struct.drm_gem_object, ptr %7, i32 0, i32 1
  %57 = load i32, ptr %56, align 4
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %79, label %59

59:                                               ; preds = %55
  %60 = getelementptr inbounds %struct.drm_gem_object, ptr %7, i32 0, i32 11
  %61 = load ptr, ptr %60, align 8
  %62 = icmp eq ptr %61, null
  br i1 %62, label %69, label %63

63:                                               ; preds = %59
  %64 = getelementptr inbounds %struct.drm_gem_object_funcs, ptr %61, i32 0, i32 4
  %65 = load ptr, ptr %64, align 4
  %66 = icmp eq ptr %65, null
  br i1 %66, label %69, label %67

67:                                               ; preds = %63
  %68 = tail call ptr %65(ptr noundef nonnull %7, i32 noundef %3) #5
  br label %71

69:                                               ; preds = %63, %59
  %70 = tail call ptr @drm_gem_prime_export(ptr noundef nonnull %7, i32 noundef %3) #5
  br label %71

71:                                               ; preds = %69, %67
  %72 = phi ptr [ %68, %67 ], [ %70, %69 ]
  %73 = icmp ugt ptr %72, inttoptr (i32 -4096 to ptr)
  br i1 %73, label %79, label %74

74:                                               ; preds = %71
  store ptr %72, ptr %46, align 8
  %75 = getelementptr inbounds %struct.dma_buf, ptr %72, i32 0, i32 1
  %76 = load ptr, ptr %75, align 4
  %77 = getelementptr inbounds %struct.file, ptr %76, i32 0, i32 6
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %77) #5, !srcloc !9
  %78 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %77, ptr %77, i32 1, ptr elementtype(i32) %77) #5, !srcloc !15
  br label %82

79:                                               ; preds = %71, %55
  %80 = phi ptr [ inttoptr (i32 -2 to ptr), %55 ], [ %72, %71 ]
  %81 = ptrtoint ptr %80 to i32
  tail call void @mutex_unlock(ptr noundef %35) #5
  br label %94

82:                                               ; preds = %74, %49, %39
  %83 = phi ptr [ %40, %39 ], [ %54, %49 ], [ %72, %74 ]
  %84 = tail call fastcc i32 @drm_prime_add_buf_handle(ptr noundef %6, ptr noundef %83, i32 noundef %2)
  tail call void @mutex_unlock(ptr noundef %35) #5
  %85 = icmp eq i32 %84, 0
  br i1 %85, label %86, label %91

86:                                               ; preds = %82, %29
  %87 = phi ptr [ %27, %29 ], [ %83, %82 ]
  %88 = tail call i32 @dma_buf_fd(ptr noundef %87, i32 noundef %3) #5
  %89 = icmp slt i32 %88, 0
  br i1 %89, label %91, label %90

90:                                               ; preds = %86
  store i32 %88, ptr %4, align 4
  br label %94

91:                                               ; preds = %86, %82
  %92 = phi i32 [ %88, %86 ], [ %84, %82 ]
  %93 = phi ptr [ %87, %86 ], [ %83, %82 ]
  tail call void @dma_buf_put(ptr noundef %93) #5
  br label %94

94:                                               ; preds = %91, %90, %79
  %95 = phi i32 [ %92, %91 ], [ 0, %90 ], [ %81, %79 ]
  tail call void asm sideeffect "dmb ish", "~{memory}"() #5, !srcloc !12
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr nonnull %7) #5, !srcloc !9
  %96 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %7, ptr nonnull %7, i32 1, ptr nonnull elementtype(i32) %7) #5, !srcloc !13
  %97 = extractvalue { i32, i32, i32 } %96, 0
  %98 = icmp eq i32 %97, 1
  br i1 %98, label %102, label %99

99:                                               ; preds = %94
  %100 = icmp sgt i32 %97, 0
  br i1 %100, label %103, label %101, !prof !8

101:                                              ; preds = %99
  tail call void @refcount_warn_saturate(ptr noundef nonnull %7, i32 noundef 3) #5
  br label %103

102:                                              ; preds = %94
  tail call void asm sideeffect "dmb ish", "~{memory}"() #5, !srcloc !14
  tail call void @drm_gem_object_free(ptr noundef nonnull %7) #5
  br label %103

103:                                              ; preds = %102, %101, %99, %5
  %104 = phi i32 [ -2, %5 ], [ %95, %99 ], [ %95, %101 ], [ %95, %102 ]
  tail call void @mutex_unlock(ptr noundef %6) #5
  ret i32 %104
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @drm_gem_object_lookup(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_buf_fd(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @drm_prime_handle_to_fd_ioctl(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.drm_device, ptr %0, i32 0, i32 4
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.drm_driver, ptr %5, i32 0, i32 10
  %7 = load ptr, ptr %6, align 4
  %8 = icmp eq ptr %7, null
  br i1 %8, label %18, label %9

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.drm_prime_handle, ptr %1, i32 0, i32 1
  %11 = load i32, ptr %10, align 4
  %12 = and i32 %11, -524291
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %18

14:                                               ; preds = %9
  %15 = load i32, ptr %1, align 4
  %16 = getelementptr inbounds %struct.drm_prime_handle, ptr %1, i32 0, i32 2
  %17 = tail call i32 %7(ptr noundef %0, ptr noundef %2, i32 noundef %15, i32 noundef %11, ptr noundef %16) #5
  br label %18

18:                                               ; preds = %14, %9, %3
  %19 = phi i32 [ %17, %14 ], [ -38, %3 ], [ -22, %9 ]
  ret i32 %19
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @drm_gem_map_attach(ptr nocapture noundef readonly %0, ptr nocapture readnone %1) #0 {
  %3 = getelementptr inbounds %struct.dma_buf, ptr %0, i32 0, i32 12
  %4 = load ptr, ptr %3, align 4
  %5 = tail call i32 @drm_gem_pin(ptr noundef %4) #5
  ret i32 %5
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_gem_pin(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @drm_gem_map_detach(ptr nocapture noundef readonly %0, ptr nocapture readnone %1) #0 {
  %3 = getelementptr inbounds %struct.dma_buf, ptr %0, i32 0, i32 12
  %4 = load ptr, ptr %3, align 4
  tail call void @drm_gem_unpin(ptr noundef %4) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_gem_unpin(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @drm_gem_map_dma_buf(ptr nocapture noundef readonly %0, i32 noundef %1) #0 {
  %3 = load ptr, ptr %0, align 4
  %4 = getelementptr inbounds %struct.dma_buf, ptr %3, i32 0, i32 12
  %5 = load ptr, ptr %4, align 4
  %6 = icmp eq i32 %1, 3
  br i1 %6, label %7, label %8, !prof !11

7:                                                ; preds = %2
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 623, i32 noundef 9, ptr noundef null) #5
  br label %25

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.drm_gem_object, ptr %5, i32 0, i32 11
  %10 = load ptr, ptr %9, align 8
  %11 = getelementptr inbounds %struct.drm_gem_object_funcs, ptr %10, i32 0, i32 7
  %12 = load ptr, ptr %11, align 4
  %13 = icmp eq ptr %12, null
  br i1 %13, label %14, label %15, !prof !11

14:                                               ; preds = %8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 626, i32 noundef 9, ptr noundef null) #5
  br label %25

15:                                               ; preds = %8
  %16 = tail call ptr %12(ptr noundef %5) #5
  %17 = icmp ugt ptr %16, inttoptr (i32 -4096 to ptr)
  br i1 %17, label %25, label %18

18:                                               ; preds = %15
  %19 = getelementptr inbounds %struct.dma_buf_attachment, ptr %0, i32 0, i32 1
  %20 = load ptr, ptr %19, align 4
  %21 = tail call i32 @dma_map_sgtable(ptr noundef %20, ptr noundef %16, i32 noundef %1, i32 noundef 32) #5
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %25, label %23

23:                                               ; preds = %18
  tail call void @sg_free_table(ptr noundef %16) #5
  tail call void @kfree(ptr noundef %16) #5
  %24 = inttoptr i32 %21 to ptr
  br label %25

25:                                               ; preds = %23, %18, %15, %14, %7
  %26 = phi ptr [ inttoptr (i32 -22 to ptr), %7 ], [ inttoptr (i32 -38 to ptr), %14 ], [ %16, %15 ], [ %24, %23 ], [ %16, %18 ]
  ret ptr %26
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_map_sgtable(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @sg_free_table(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @drm_gem_unmap_dma_buf(ptr nocapture noundef readonly %0, ptr noundef %1, i32 noundef %2) #0 {
  %4 = icmp eq ptr %1, null
  br i1 %4, label %11, label %5

5:                                                ; preds = %3
  %6 = getelementptr inbounds %struct.dma_buf_attachment, ptr %0, i32 0, i32 1
  %7 = load ptr, ptr %6, align 4
  %8 = load ptr, ptr %1, align 4
  %9 = getelementptr inbounds %struct.sg_table, ptr %1, i32 0, i32 2
  %10 = load i32, ptr %9, align 4
  tail call void @dma_unmap_sg_attrs(ptr noundef %7, ptr noundef %8, i32 noundef %10, i32 noundef %2, i32 noundef 32) #5
  tail call void @sg_free_table(ptr noundef nonnull %1) #5
  tail call void @kfree(ptr noundef nonnull %1) #5
  br label %11

11:                                               ; preds = %5, %3
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @drm_gem_dmabuf_vmap(ptr nocapture noundef readonly %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.dma_buf, ptr %0, i32 0, i32 12
  %4 = load ptr, ptr %3, align 4
  %5 = tail call i32 @drm_gem_vmap(ptr noundef %4, ptr noundef %1) #5
  ret i32 %5
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_gem_vmap(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @drm_gem_dmabuf_vunmap(ptr nocapture noundef readonly %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.dma_buf, ptr %0, i32 0, i32 12
  %4 = load ptr, ptr %3, align 4
  tail call void @drm_gem_vunmap(ptr noundef %4, ptr noundef %1) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_gem_vunmap(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @drm_gem_prime_mmap(ptr noundef %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.drm_gem_object, ptr %0, i32 0, i32 4
  %4 = getelementptr inbounds %struct.drm_gem_object, ptr %0, i32 0, i32 4, i32 1, i32 1
  %5 = load i64, ptr %4, align 8
  %6 = trunc i64 %5 to i32
  %7 = getelementptr inbounds %struct.vm_area_struct, ptr %1, i32 0, i32 13
  %8 = load i32, ptr %7, align 4
  %9 = add i32 %8, %6
  store i32 %9, ptr %7, align 4
  %10 = getelementptr inbounds %struct.drm_gem_object, ptr %0, i32 0, i32 11
  %11 = load ptr, ptr %10, align 8
  %12 = icmp eq ptr %11, null
  br i1 %12, label %48, label %13

13:                                               ; preds = %2
  %14 = getelementptr inbounds %struct.drm_gem_object_funcs, ptr %11, i32 0, i32 10
  %15 = load ptr, ptr %14, align 4
  %16 = icmp eq ptr %15, null
  br i1 %16, label %48, label %17

17:                                               ; preds = %13
  %18 = getelementptr inbounds %struct.drm_gem_object_funcs, ptr %11, i32 0, i32 11
  %19 = load ptr, ptr %18, align 4
  %20 = getelementptr inbounds %struct.vm_area_struct, ptr %1, i32 0, i32 12
  store ptr %19, ptr %20, align 4
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %0) #5, !srcloc !9
  %21 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %0, ptr %0, i32 1, ptr elementtype(i32) %0) #5, !srcloc !10
  %22 = extractvalue { i32, i32, i32 } %21, 0
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %28, label %24, !prof !11

24:                                               ; preds = %17
  %25 = add i32 %22, 1
  %26 = or i32 %25, %22
  %27 = icmp sgt i32 %26, -1
  br i1 %27, label %30, label %28, !prof !8

28:                                               ; preds = %24, %17
  %29 = phi i32 [ 2, %17 ], [ 1, %24 ]
  tail call void @refcount_warn_saturate(ptr noundef %0, i32 noundef %29) #5
  br label %30

30:                                               ; preds = %28, %24
  %31 = load ptr, ptr %10, align 8
  %32 = getelementptr inbounds %struct.drm_gem_object_funcs, ptr %31, i32 0, i32 10
  %33 = load ptr, ptr %32, align 4
  %34 = tail call i32 %33(ptr noundef %0, ptr noundef %1) #5
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %46, label %36

36:                                               ; preds = %30
  %37 = icmp eq ptr %0, null
  br i1 %37, label %76, label %38

38:                                               ; preds = %36
  tail call void asm sideeffect "dmb ish", "~{memory}"() #5, !srcloc !12
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr nonnull %0) #5, !srcloc !9
  %39 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %0, ptr nonnull %0, i32 1, ptr nonnull elementtype(i32) %0) #5, !srcloc !13
  %40 = extractvalue { i32, i32, i32 } %39, 0
  %41 = icmp eq i32 %40, 1
  br i1 %41, label %45, label %42

42:                                               ; preds = %38
  %43 = icmp sgt i32 %40, 0
  br i1 %43, label %76, label %44, !prof !8

44:                                               ; preds = %42
  tail call void @refcount_warn_saturate(ptr noundef nonnull %0, i32 noundef 3) #5
  br label %76

45:                                               ; preds = %38
  tail call void asm sideeffect "dmb ish", "~{memory}"() #5, !srcloc !14
  tail call void @drm_gem_object_free(ptr noundef nonnull %0) #5
  br label %76

46:                                               ; preds = %30
  %47 = getelementptr inbounds %struct.vm_area_struct, ptr %1, i32 0, i32 15
  store ptr %0, ptr %47, align 4
  br label %76

48:                                               ; preds = %13, %2
  %49 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %50 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %49, i32 noundef 3520, i32 noundef 212) #6
  %51 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 2), align 4
  %52 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %51, i32 noundef 3520, i32 noundef 168) #6
  %53 = icmp ne ptr %50, null
  %54 = icmp ne ptr %52, null
  %55 = select i1 %53, i1 %54, i1 false
  br i1 %55, label %56, label %74

56:                                               ; preds = %48
  %57 = getelementptr inbounds %struct.drm_gem_object, ptr %0, i32 0, i32 2
  %58 = load ptr, ptr %57, align 8
  %59 = getelementptr inbounds %struct.drm_device, ptr %58, i32 0, i32 6
  %60 = load ptr, ptr %59, align 4
  %61 = getelementptr inbounds %struct.drm_file, ptr %50, i32 0, i32 13
  store ptr %60, ptr %61, align 8
  %62 = getelementptr inbounds %struct.file, ptr %52, i32 0, i32 15
  store ptr %50, ptr %62, align 8
  %63 = tail call i32 @drm_vma_node_allow(ptr noundef %3, ptr noundef nonnull %50) #5
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %65, label %74

65:                                               ; preds = %56
  %66 = load ptr, ptr %57, align 8
  %67 = getelementptr inbounds %struct.drm_device, ptr %66, i32 0, i32 4
  %68 = load ptr, ptr %67, align 4
  %69 = getelementptr inbounds %struct.drm_driver, ptr %68, i32 0, i32 27
  %70 = load ptr, ptr %69, align 4
  %71 = getelementptr inbounds %struct.file_operations, ptr %70, i32 0, i32 12
  %72 = load ptr, ptr %71, align 4
  %73 = tail call i32 %72(ptr noundef nonnull %52, ptr noundef %1) #5
  tail call void @drm_vma_node_revoke(ptr noundef %3, ptr noundef nonnull %50) #5
  br label %74

74:                                               ; preds = %65, %56, %48
  %75 = phi i32 [ %63, %56 ], [ %73, %65 ], [ -12, %48 ]
  tail call void @kfree(ptr noundef %50) #5
  tail call void @kfree(ptr noundef %52) #5
  br label %76

76:                                               ; preds = %74, %46, %45, %44, %42, %36
  %77 = phi i32 [ 0, %46 ], [ %75, %74 ], [ %34, %36 ], [ %34, %42 ], [ %34, %44 ], [ %34, %45 ]
  ret i32 %77
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_vma_node_allow(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_vma_node_revoke(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @drm_gem_dmabuf_mmap(ptr nocapture noundef readonly %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.dma_buf, ptr %0, i32 0, i32 12
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.drm_gem_object, ptr %4, i32 0, i32 2
  %6 = load ptr, ptr %5, align 8
  %7 = getelementptr inbounds %struct.drm_device, ptr %6, i32 0, i32 4
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.drm_driver, ptr %8, i32 0, i32 14
  %10 = load ptr, ptr %9, align 4
  %11 = icmp eq ptr %10, null
  br i1 %11, label %14, label %12

12:                                               ; preds = %2
  %13 = tail call i32 %10(ptr noundef %4, ptr noundef %1) #5
  br label %14

14:                                               ; preds = %12, %2
  %15 = phi i32 [ %13, %12 ], [ -38, %2 ]
  ret i32 %15
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @drm_prime_pages_to_sg(ptr noundef readonly %0, ptr noundef %1, i32 noundef %2) #0 {
  %4 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %5 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %4, i32 noundef 3264, i32 noundef 12) #6
  %6 = icmp eq ptr %5, null
  br i1 %6, label %22, label %7

7:                                                ; preds = %3
  %8 = icmp eq ptr %0, null
  br i1 %8, label %14, label %9

9:                                                ; preds = %7
  %10 = getelementptr inbounds %struct.drm_device, ptr %0, i32 0, i32 2
  %11 = load ptr, ptr %10, align 4
  %12 = tail call i32 @dma_max_mapping_size(ptr noundef %11) #5
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %9, %7
  br label %15

15:                                               ; preds = %14, %9
  %16 = phi i32 [ -1, %14 ], [ %12, %9 ]
  %17 = shl i32 %2, 12
  %18 = tail call i32 @sg_alloc_table_from_pages_segment(ptr noundef nonnull %5, ptr noundef %1, i32 noundef %2, i32 noundef 0, i32 noundef %17, i32 noundef %16, i32 noundef 3264) #5
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %22, label %20

20:                                               ; preds = %15
  tail call void @kfree(ptr noundef nonnull %5) #5
  %21 = inttoptr i32 %18 to ptr
  br label %22

22:                                               ; preds = %20, %15, %3
  %23 = phi ptr [ %21, %20 ], [ %5, %15 ], [ inttoptr (i32 -12 to ptr), %3 ]
  ret ptr %23
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_max_mapping_size(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sg_alloc_table_from_pages_segment(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @drm_prime_get_contiguous_size(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.sg_table, ptr %0, i32 0, i32 1
  %3 = load i32, ptr %2, align 4
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %28, label %5

5:                                                ; preds = %1
  %6 = load ptr, ptr %0, align 4
  %7 = getelementptr inbounds %struct.scatterlist, ptr %6, i32 0, i32 3
  %8 = load i32, ptr %7, align 4
  br label %9

9:                                                ; preds = %21, %5
  %10 = phi i32 [ %24, %21 ], [ 0, %5 ]
  %11 = phi i32 [ %23, %21 ], [ 0, %5 ]
  %12 = phi ptr [ %25, %21 ], [ %6, %5 ]
  %13 = phi i32 [ %22, %21 ], [ %8, %5 ]
  %14 = getelementptr inbounds %struct.scatterlist, ptr %12, i32 0, i32 4
  %15 = load i32, ptr %14, align 4
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %28, label %17

17:                                               ; preds = %9
  %18 = getelementptr inbounds %struct.scatterlist, ptr %12, i32 0, i32 3
  %19 = load i32, ptr %18, align 4
  %20 = icmp eq i32 %19, %13
  br i1 %20, label %21, label %28

21:                                               ; preds = %17
  %22 = add i32 %15, %13
  %23 = add i32 %15, %11
  %24 = add nuw i32 %10, 1
  %25 = tail call ptr @sg_next(ptr noundef %12) #5
  %26 = load i32, ptr %2, align 4
  %27 = icmp ult i32 %24, %26
  br i1 %27, label %9, label %28

28:                                               ; preds = %21, %17, %9, %1
  %29 = phi i32 [ 0, %1 ], [ %11, %17 ], [ %11, %9 ], [ %23, %21 ]
  ret i32 %29
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @sg_next(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @drm_gem_prime_export(ptr noundef %0, i32 noundef %1) #0 {
  %3 = alloca %struct.dma_buf_export_info, align 4
  %4 = getelementptr inbounds %struct.drm_gem_object, ptr %0, i32 0, i32 2
  %5 = load ptr, ptr %4, align 8
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %3) #5
  store ptr @.str.2, ptr %3, align 4
  %6 = getelementptr inbounds %struct.dma_buf_export_info, ptr %3, i32 0, i32 1
  %7 = getelementptr inbounds %struct.drm_device, ptr %5, i32 0, i32 4
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.drm_driver, ptr %8, i32 0, i32 27
  %10 = load ptr, ptr %9, align 4
  %11 = load ptr, ptr %10, align 4
  store ptr %11, ptr %6, align 4
  %12 = getelementptr inbounds %struct.dma_buf_export_info, ptr %3, i32 0, i32 2
  store ptr @drm_gem_prime_dmabuf_ops, ptr %12, align 4
  %13 = getelementptr inbounds %struct.dma_buf_export_info, ptr %3, i32 0, i32 3
  %14 = getelementptr inbounds %struct.drm_gem_object, ptr %0, i32 0, i32 5
  %15 = load i32, ptr %14, align 8
  store i32 %15, ptr %13, align 4
  %16 = getelementptr inbounds %struct.dma_buf_export_info, ptr %3, i32 0, i32 4
  store i32 %1, ptr %16, align 4
  %17 = getelementptr inbounds %struct.dma_buf_export_info, ptr %3, i32 0, i32 5
  %18 = getelementptr inbounds %struct.drm_gem_object, ptr %0, i32 0, i32 9
  %19 = load ptr, ptr %18, align 8
  store ptr %19, ptr %17, align 4
  %20 = getelementptr inbounds %struct.dma_buf_export_info, ptr %3, i32 0, i32 6
  store ptr %0, ptr %20, align 4
  %21 = call ptr @dma_buf_export(ptr noundef nonnull %3) #5
  %22 = icmp ugt ptr %21, inttoptr (i32 -4096 to ptr)
  br i1 %22, label %42, label %23

23:                                               ; preds = %2
  call void @drm_dev_get(ptr noundef %5) #5
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %0) #5, !srcloc !9
  %24 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %0, ptr %0, i32 1, ptr elementtype(i32) %0) #5, !srcloc !10
  %25 = extractvalue { i32, i32, i32 } %24, 0
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %31, label %27, !prof !11

27:                                               ; preds = %23
  %28 = add i32 %25, 1
  %29 = or i32 %28, %25
  %30 = icmp sgt i32 %29, -1
  br i1 %30, label %33, label %31, !prof !8

31:                                               ; preds = %27, %23
  %32 = phi i32 [ 2, %23 ], [ 1, %27 ]
  call void @refcount_warn_saturate(ptr noundef %0, i32 noundef %32) #5
  br label %33

33:                                               ; preds = %31, %27
  %34 = load ptr, ptr %4, align 8
  %35 = getelementptr inbounds %struct.drm_device, ptr %34, i32 0, i32 12
  %36 = load ptr, ptr %35, align 4
  %37 = getelementptr inbounds %struct.inode, ptr %36, i32 0, i32 9
  %38 = load ptr, ptr %37, align 8
  %39 = getelementptr inbounds %struct.dma_buf, ptr %21, i32 0, i32 1
  %40 = load ptr, ptr %39, align 4
  %41 = getelementptr inbounds %struct.file, ptr %40, i32 0, i32 17
  store ptr %38, ptr %41, align 8
  br label %42

42:                                               ; preds = %33, %2
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %3) #5
  ret ptr %21
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @drm_gem_prime_import_dev(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = getelementptr inbounds %struct.dma_buf, ptr %1, i32 0, i32 3
  %5 = load ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, @drm_gem_prime_dmabuf_ops
  br i1 %6, label %7, label %23

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.dma_buf, ptr %1, i32 0, i32 12
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.drm_gem_object, ptr %9, i32 0, i32 2
  %11 = load ptr, ptr %10, align 8
  %12 = icmp eq ptr %11, %0
  br i1 %12, label %13, label %23

13:                                               ; preds = %7
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %9) #5, !srcloc !9
  %14 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %9, ptr %9, i32 1, ptr elementtype(i32) %9) #5, !srcloc !10
  %15 = extractvalue { i32, i32, i32 } %14, 0
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %21, label %17, !prof !11

17:                                               ; preds = %13
  %18 = add i32 %15, 1
  %19 = or i32 %18, %15
  %20 = icmp sgt i32 %19, -1
  br i1 %20, label %53, label %21, !prof !8

21:                                               ; preds = %17, %13
  %22 = phi i32 [ 2, %13 ], [ 1, %17 ]
  tail call void @refcount_warn_saturate(ptr noundef %9, i32 noundef %22) #5
  br label %53

23:                                               ; preds = %7, %3
  %24 = getelementptr inbounds %struct.drm_device, ptr %0, i32 0, i32 4
  %25 = load ptr, ptr %24, align 4
  %26 = getelementptr inbounds %struct.drm_driver, ptr %25, i32 0, i32 13
  %27 = load ptr, ptr %26, align 4
  %28 = icmp eq ptr %27, null
  br i1 %28, label %53, label %29

29:                                               ; preds = %23
  %30 = tail call ptr @dma_buf_attach(ptr noundef %1, ptr noundef %2) #5
  %31 = icmp ugt ptr %30, inttoptr (i32 -4096 to ptr)
  br i1 %31, label %53, label %32

32:                                               ; preds = %29
  %33 = getelementptr inbounds %struct.dma_buf, ptr %1, i32 0, i32 1
  %34 = load ptr, ptr %33, align 4
  %35 = getelementptr inbounds %struct.file, ptr %34, i32 0, i32 6
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %35) #5, !srcloc !9
  %36 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %35, ptr %35, i32 1, ptr elementtype(i32) %35) #5, !srcloc !15
  %37 = tail call ptr @dma_buf_map_attachment(ptr noundef %30, i32 noundef 0) #5
  %38 = icmp ugt ptr %37, inttoptr (i32 -4096 to ptr)
  br i1 %38, label %51, label %39

39:                                               ; preds = %32
  %40 = load ptr, ptr %24, align 4
  %41 = getelementptr inbounds %struct.drm_driver, ptr %40, i32 0, i32 13
  %42 = load ptr, ptr %41, align 4
  %43 = tail call ptr %42(ptr noundef %0, ptr noundef %30, ptr noundef %37) #5
  %44 = icmp ugt ptr %43, inttoptr (i32 -4096 to ptr)
  br i1 %44, label %45, label %46

45:                                               ; preds = %39
  tail call void @dma_buf_unmap_attachment(ptr noundef %30, ptr noundef %37, i32 noundef 0) #5
  br label %51

46:                                               ; preds = %39
  %47 = getelementptr inbounds %struct.drm_gem_object, ptr %43, i32 0, i32 8
  store ptr %30, ptr %47, align 4
  %48 = getelementptr inbounds %struct.dma_buf, ptr %1, i32 0, i32 13
  %49 = load ptr, ptr %48, align 4
  %50 = getelementptr inbounds %struct.drm_gem_object, ptr %43, i32 0, i32 9
  store ptr %49, ptr %50, align 8
  br label %53

51:                                               ; preds = %45, %32
  %52 = phi ptr [ %43, %45 ], [ %37, %32 ]
  tail call void @dma_buf_detach(ptr noundef %1, ptr noundef %30) #5
  tail call void @dma_buf_put(ptr noundef %1) #5
  br label %53

53:                                               ; preds = %51, %46, %29, %23, %21, %17
  %54 = phi ptr [ %52, %51 ], [ %43, %46 ], [ %9, %17 ], [ %9, %21 ], [ inttoptr (i32 -22 to ptr), %23 ], [ %30, %29 ]
  ret ptr %54
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dma_buf_attach(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dma_buf_map_attachment(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_buf_unmap_attachment(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_buf_detach(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @drm_prime_sg_to_page_array(ptr nocapture noundef readonly %0, ptr noundef %1, i32 noundef %2) #0 {
  %4 = alloca %struct.sg_page_iter, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #5
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(16) %4, i8 0, i32 16, i1 false), !annotation !16
  %5 = load ptr, ptr %0, align 4
  %6 = getelementptr inbounds %struct.sg_table, ptr %0, i32 0, i32 2
  %7 = load i32, ptr %6, align 4
  call void @__sg_page_iter_start(ptr noundef nonnull %4, ptr noundef %5, i32 noundef %7, i32 noundef 0) #5
  %8 = call zeroext i1 @__sg_page_iter_next(ptr noundef nonnull %4) #5
  br i1 %8, label %9, label %28

9:                                                ; preds = %3
  %10 = ptrtoint ptr %1 to i32
  %11 = getelementptr inbounds %struct.sg_page_iter, ptr %4, i32 0, i32 1
  br label %12

12:                                               ; preds = %19, %9
  %13 = phi ptr [ %1, %9 ], [ %26, %19 ]
  %14 = ptrtoint ptr %13 to i32
  %15 = sub i32 %14, %10
  %16 = ashr exact i32 %15, 2
  %17 = icmp slt i32 %16, %2
  br i1 %17, label %19, label %18, !prof !8

18:                                               ; preds = %12
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 1006, i32 noundef 9, ptr noundef null) #5
  br label %28

19:                                               ; preds = %12
  %20 = load ptr, ptr %4, align 4
  %21 = load i32, ptr %20, align 4
  %22 = and i32 %21, -4
  %23 = inttoptr i32 %22 to ptr
  %24 = load i32, ptr %11, align 4
  %25 = getelementptr %struct.page, ptr %23, i32 %24
  %26 = getelementptr ptr, ptr %13, i32 1
  store ptr %25, ptr %13, align 4
  %27 = call zeroext i1 @__sg_page_iter_next(ptr noundef nonnull %4) #5
  br i1 %27, label %12, label %28

28:                                               ; preds = %19, %18, %3
  %29 = phi i32 [ -1, %18 ], [ 0, %3 ], [ 0, %19 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #5
  ret i32 %29
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__sg_page_iter_start(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__sg_page_iter_next(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @drm_prime_sg_to_dma_addr_array(ptr nocapture noundef readonly %0, ptr noundef %1, i32 noundef %2) #0 {
  %4 = alloca %struct.sg_dma_page_iter, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #5
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(16) %4, i8 0, i32 16, i1 false), !annotation !16
  %5 = load ptr, ptr %0, align 4
  %6 = getelementptr inbounds %struct.sg_table, ptr %0, i32 0, i32 1
  %7 = load i32, ptr %6, align 4
  call void @__sg_page_iter_start(ptr noundef nonnull %4, ptr noundef %5, i32 noundef %7, i32 noundef 0) #5
  %8 = call zeroext i1 @__sg_page_iter_dma_next(ptr noundef nonnull %4) #5
  br i1 %8, label %9, label %28

9:                                                ; preds = %3
  %10 = ptrtoint ptr %1 to i32
  %11 = getelementptr inbounds %struct.sg_page_iter, ptr %4, i32 0, i32 1
  br label %12

12:                                               ; preds = %19, %9
  %13 = phi ptr [ %1, %9 ], [ %26, %19 ]
  %14 = ptrtoint ptr %13 to i32
  %15 = sub i32 %14, %10
  %16 = ashr exact i32 %15, 2
  %17 = icmp slt i32 %16, %2
  br i1 %17, label %19, label %18, !prof !8

18:                                               ; preds = %12
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 1032, i32 noundef 9, ptr noundef null) #5
  br label %28

19:                                               ; preds = %12
  %20 = load ptr, ptr %4, align 4
  %21 = getelementptr inbounds %struct.scatterlist, ptr %20, i32 0, i32 3
  %22 = load i32, ptr %21, align 4
  %23 = load i32, ptr %11, align 4
  %24 = shl i32 %23, 12
  %25 = add i32 %24, %22
  %26 = getelementptr i32, ptr %13, i32 1
  store i32 %25, ptr %13, align 4
  %27 = call zeroext i1 @__sg_page_iter_dma_next(ptr noundef nonnull %4) #5
  br i1 %27, label %12, label %28

28:                                               ; preds = %19, %18, %3
  %29 = phi i32 [ -1, %18 ], [ 0, %3 ], [ 0, %19 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #5
  ret i32 %29
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__sg_page_iter_dma_next(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @drm_prime_gem_destroy(ptr nocapture noundef readonly %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.drm_gem_object, ptr %0, i32 0, i32 8
  %4 = load ptr, ptr %3, align 4
  %5 = icmp eq ptr %1, null
  br i1 %5, label %7, label %6

6:                                                ; preds = %2
  tail call void @dma_buf_unmap_attachment(ptr noundef %4, ptr noundef nonnull %1, i32 noundef 0) #5
  br label %7

7:                                                ; preds = %6, %2
  %8 = load ptr, ptr %4, align 4
  tail call void @dma_buf_detach(ptr noundef %8, ptr noundef %4) #5
  tail call void @dma_buf_put(ptr noundef %8) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_gem_object_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rb_insert_color(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_unmap_sg_attrs(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { argmemonly nofree nounwind willreturn writeonly }
attributes #4 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind }
attributes #6 = { nounwind allocsize(2) }

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
!9 = !{i64 654747, i64 2148144718, i64 2148144744, i64 2148144791, i64 2148144813, i64 2148144841, i64 2148144861}
!10 = !{i64 2148157591, i64 2148157623, i64 2148157652, i64 2148157686, i64 2148157717, i64 2148157740}
!11 = !{!"branch_weights", i32 1, i32 2000}
!12 = !{i64 2148257789}
!13 = !{i64 2148159948, i64 2148159980, i64 2148160009, i64 2148160043, i64 2148160074, i64 2148160097}
!14 = !{i64 2149599664}
!15 = !{i64 2148156133, i64 2148156159, i64 2148156188, i64 2148156222, i64 2148156253, i64 2148156276}
!16 = !{!"auto-init"}
