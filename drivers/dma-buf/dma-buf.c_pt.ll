; ModuleID = '/llk/IR/drivers/dma-buf/dma-buf.c_pt.bc'
source_filename = "../drivers/dma-buf/dma-buf.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_dma_buf_export:\09\09\09\09\09"
module asm "\09.asciz \09\22dma_buf_export\22\09\09\09\09\09"
module asm "__kstrtabns_dma_buf_export:\09\09\09\09\09"
module asm "\09.asciz \09\22DMA_BUF\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_dma_buf_fd:\09\09\09\09\09"
module asm "\09.asciz \09\22dma_buf_fd\22\09\09\09\09\09"
module asm "__kstrtabns_dma_buf_fd:\09\09\09\09\09"
module asm "\09.asciz \09\22DMA_BUF\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_dma_buf_get:\09\09\09\09\09"
module asm "\09.asciz \09\22dma_buf_get\22\09\09\09\09\09"
module asm "__kstrtabns_dma_buf_get:\09\09\09\09\09"
module asm "\09.asciz \09\22DMA_BUF\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_dma_buf_put:\09\09\09\09\09"
module asm "\09.asciz \09\22dma_buf_put\22\09\09\09\09\09"
module asm "__kstrtabns_dma_buf_put:\09\09\09\09\09"
module asm "\09.asciz \09\22DMA_BUF\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_dma_buf_dynamic_attach:\09\09\09\09\09"
module asm "\09.asciz \09\22dma_buf_dynamic_attach\22\09\09\09\09\09"
module asm "__kstrtabns_dma_buf_dynamic_attach:\09\09\09\09\09"
module asm "\09.asciz \09\22DMA_BUF\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_dma_buf_attach:\09\09\09\09\09"
module asm "\09.asciz \09\22dma_buf_attach\22\09\09\09\09\09"
module asm "__kstrtabns_dma_buf_attach:\09\09\09\09\09"
module asm "\09.asciz \09\22DMA_BUF\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_dma_buf_detach:\09\09\09\09\09"
module asm "\09.asciz \09\22dma_buf_detach\22\09\09\09\09\09"
module asm "__kstrtabns_dma_buf_detach:\09\09\09\09\09"
module asm "\09.asciz \09\22DMA_BUF\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_dma_buf_pin:\09\09\09\09\09"
module asm "\09.asciz \09\22dma_buf_pin\22\09\09\09\09\09"
module asm "__kstrtabns_dma_buf_pin:\09\09\09\09\09"
module asm "\09.asciz \09\22DMA_BUF\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_dma_buf_unpin:\09\09\09\09\09"
module asm "\09.asciz \09\22dma_buf_unpin\22\09\09\09\09\09"
module asm "__kstrtabns_dma_buf_unpin:\09\09\09\09\09"
module asm "\09.asciz \09\22DMA_BUF\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_dma_buf_map_attachment:\09\09\09\09\09"
module asm "\09.asciz \09\22dma_buf_map_attachment\22\09\09\09\09\09"
module asm "__kstrtabns_dma_buf_map_attachment:\09\09\09\09\09"
module asm "\09.asciz \09\22DMA_BUF\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_dma_buf_unmap_attachment:\09\09\09\09\09"
module asm "\09.asciz \09\22dma_buf_unmap_attachment\22\09\09\09\09\09"
module asm "__kstrtabns_dma_buf_unmap_attachment:\09\09\09\09\09"
module asm "\09.asciz \09\22DMA_BUF\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_dma_buf_move_notify:\09\09\09\09\09"
module asm "\09.asciz \09\22dma_buf_move_notify\22\09\09\09\09\09"
module asm "__kstrtabns_dma_buf_move_notify:\09\09\09\09\09"
module asm "\09.asciz \09\22DMA_BUF\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_dma_buf_begin_cpu_access:\09\09\09\09\09"
module asm "\09.asciz \09\22dma_buf_begin_cpu_access\22\09\09\09\09\09"
module asm "__kstrtabns_dma_buf_begin_cpu_access:\09\09\09\09\09"
module asm "\09.asciz \09\22DMA_BUF\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_dma_buf_end_cpu_access:\09\09\09\09\09"
module asm "\09.asciz \09\22dma_buf_end_cpu_access\22\09\09\09\09\09"
module asm "__kstrtabns_dma_buf_end_cpu_access:\09\09\09\09\09"
module asm "\09.asciz \09\22DMA_BUF\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_dma_buf_mmap:\09\09\09\09\09"
module asm "\09.asciz \09\22dma_buf_mmap\22\09\09\09\09\09"
module asm "__kstrtabns_dma_buf_mmap:\09\09\09\09\09"
module asm "\09.asciz \09\22DMA_BUF\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_dma_buf_vmap:\09\09\09\09\09"
module asm "\09.asciz \09\22dma_buf_vmap\22\09\09\09\09\09"
module asm "__kstrtabns_dma_buf_vmap:\09\09\09\09\09"
module asm "\09.asciz \09\22DMA_BUF\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_dma_buf_vunmap:\09\09\09\09\09"
module asm "\09.asciz \09\22dma_buf_vunmap\22\09\09\09\09\09"
module asm "__kstrtabns_dma_buf_vunmap:\09\09\09\09\09"
module asm "\09.asciz \09\22DMA_BUF\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.lock_class_key = type {}
%struct.dma_buf_list = type { %struct.list_head, %struct.mutex }
%struct.list_head = type { ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.2 }
%union.anon.2 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.file_system_type = type { ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.hlist_head, %struct.lock_class_key, %struct.lock_class_key, %struct.lock_class_key, [3 x %struct.lock_class_key], %struct.lock_class_key, %struct.lock_class_key, %struct.lock_class_key, %struct.lock_class_key }
%struct.hlist_head = type { ptr }
%struct.dentry_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [12 x i8] }
%struct.dma_buf_export_info = type { ptr, ptr, ptr, i32, i32, ptr, ptr }
%struct.dma_buf_ops = type { i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dma_buf = type { i32, ptr, %struct.list_head, ptr, %struct.mutex, i32, %struct.dma_buf_map, ptr, ptr, %struct.spinlock, ptr, %struct.list_head, ptr, ptr, %struct.wait_queue_head, %struct.dma_buf_poll_cb_t, %struct.dma_buf_poll_cb_t }
%struct.dma_buf_map = type { %union.anon.66, i8 }
%union.anon.66 = type { ptr }
%struct.spinlock = type { %union.anon.12 }
%union.anon.12 = type { %struct.raw_spinlock }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dma_buf_poll_cb_t = type { %struct.dma_fence_cb, ptr, i32 }
%struct.dma_fence_cb = type { %struct.list_head, ptr }
%struct.vfsmount = type { ptr, ptr, i32, ptr }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.56, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.57, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.58, ptr, %struct.address_space, %struct.list_head, %union.anon.61, i32, i32, ptr, ptr }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%union.anon.56 = type { i32 }
%struct.timespec64 = type { i64, i32 }
%struct.seqcount = type { i32 }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head }
%struct.hlist_node = type { ptr, ptr }
%union.anon.57 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.atomic64_t = type { i64 }
%union.anon.58 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%union.anon.61 = type { ptr }
%struct.file = type { %union.anon, %struct.path, ptr, ptr, %struct.spinlock, i32, %struct.atomic_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, ptr, %struct.file_ra_state, i64, ptr, ptr, ptr, i32, i32 }
%union.anon = type { %struct.callback_head }
%struct.path = type { ptr, ptr }
%struct.fown_struct = type { %struct.rwlock_t, ptr, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.rwlock_t = type { %struct.arch_rwlock_t }
%struct.arch_rwlock_t = type { i32 }
%struct.file_ra_state = type { i32, i32, i32, i32, i32, i64 }
%struct.dentry = type { i32, %struct.seqcount_spinlock, %struct.hlist_bl_node, ptr, %struct.qstr, ptr, [36 x i8], %struct.lockref, ptr, ptr, i32, ptr, %union.anon.64, %struct.list_head, %struct.list_head, %union.anon.65 }
%struct.seqcount_spinlock = type { %struct.seqcount }
%struct.hlist_bl_node = type { ptr, ptr }
%struct.qstr = type { %union.anon.0, ptr }
%union.anon.0 = type { i64 }
%struct.lockref = type { %union.anon.62 }
%union.anon.62 = type { i64 }
%union.anon.64 = type { %struct.list_head }
%union.anon.65 = type { %struct.hlist_node }
%struct.dma_buf_attach_ops = type { i8, ptr }
%struct.dma_buf_attachment = type { ptr, ptr, %struct.list_head, ptr, i32, i8, ptr, ptr, ptr }
%struct.vm_area_struct = type { i32, i32, ptr, ptr, %struct.rb_node, i32, ptr, i32, i32, %union.anon.22, %struct.list_head, ptr, ptr, i32, ptr, ptr, %struct.atomic_t, %struct.vm_userfaultfd_ctx }
%struct.rb_node = type { i32, ptr, ptr }
%union.anon.22 = type { %struct.anon.23 }
%struct.anon.23 = type { %struct.rb_node, i32 }
%struct.vm_userfaultfd_ctx = type {}
%struct.poll_table_struct = type { ptr, i32 }
%struct.dma_buf_sync = type { i64 }
%struct.thread_info = type { i32, i32, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], [4 x i8], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.dma_resv_iter = type { ptr, i8, ptr, i32, i32, ptr, i32, i8 }
%struct.dma_fence = type { ptr, ptr, %union.anon.67, i64, i64, i32, %struct.kref, i32 }
%union.anon.67 = type { i64 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.pseudo_fs_context = type { ptr, ptr, ptr, i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }

@.str = private unnamed_addr constant [26 x i8] c"drivers/dma-buf/dma-buf.c\00", align 1
@dma_buf_export.__key = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.1 = private unnamed_addr constant [14 x i8] c"&dmabuf->poll\00", align 1
@dma_buf_export.__key.2 = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.3 = private unnamed_addr constant [14 x i8] c"&dmabuf->lock\00", align 1
@db_list = internal global %struct.dma_buf_list zeroinitializer, align 4
@__kstrtab_dma_buf_export = external dso_local constant [0 x i8], align 1
@__kstrtabns_dma_buf_export = external dso_local constant [0 x i8], align 1
@__ksymtab_dma_buf_export = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @dma_buf_export to i32), ptr @__kstrtab_dma_buf_export, ptr @__kstrtabns_dma_buf_export }, section "___ksymtab_gpl+dma_buf_export", align 4
@__kstrtab_dma_buf_fd = external dso_local constant [0 x i8], align 1
@__kstrtabns_dma_buf_fd = external dso_local constant [0 x i8], align 1
@__ksymtab_dma_buf_fd = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @dma_buf_fd to i32), ptr @__kstrtab_dma_buf_fd, ptr @__kstrtabns_dma_buf_fd }, section "___ksymtab_gpl+dma_buf_fd", align 4
@__kstrtab_dma_buf_get = external dso_local constant [0 x i8], align 1
@__kstrtabns_dma_buf_get = external dso_local constant [0 x i8], align 1
@__ksymtab_dma_buf_get = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @dma_buf_get to i32), ptr @__kstrtab_dma_buf_get, ptr @__kstrtabns_dma_buf_get }, section "___ksymtab_gpl+dma_buf_get", align 4
@__kstrtab_dma_buf_put = external dso_local constant [0 x i8], align 1
@__kstrtabns_dma_buf_put = external dso_local constant [0 x i8], align 1
@__ksymtab_dma_buf_put = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @dma_buf_put to i32), ptr @__kstrtab_dma_buf_put, ptr @__kstrtabns_dma_buf_put }, section "___ksymtab_gpl+dma_buf_put", align 4
@__kstrtab_dma_buf_dynamic_attach = external dso_local constant [0 x i8], align 1
@__kstrtabns_dma_buf_dynamic_attach = external dso_local constant [0 x i8], align 1
@__ksymtab_dma_buf_dynamic_attach = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @dma_buf_dynamic_attach to i32), ptr @__kstrtab_dma_buf_dynamic_attach, ptr @__kstrtabns_dma_buf_dynamic_attach }, section "___ksymtab_gpl+dma_buf_dynamic_attach", align 4
@__kstrtab_dma_buf_attach = external dso_local constant [0 x i8], align 1
@__kstrtabns_dma_buf_attach = external dso_local constant [0 x i8], align 1
@__ksymtab_dma_buf_attach = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @dma_buf_attach to i32), ptr @__kstrtab_dma_buf_attach, ptr @__kstrtabns_dma_buf_attach }, section "___ksymtab_gpl+dma_buf_attach", align 4
@__kstrtab_dma_buf_detach = external dso_local constant [0 x i8], align 1
@__kstrtabns_dma_buf_detach = external dso_local constant [0 x i8], align 1
@__ksymtab_dma_buf_detach = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @dma_buf_detach to i32), ptr @__kstrtab_dma_buf_detach, ptr @__kstrtabns_dma_buf_detach }, section "___ksymtab_gpl+dma_buf_detach", align 4
@__kstrtab_dma_buf_pin = external dso_local constant [0 x i8], align 1
@__kstrtabns_dma_buf_pin = external dso_local constant [0 x i8], align 1
@__ksymtab_dma_buf_pin = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @dma_buf_pin to i32), ptr @__kstrtab_dma_buf_pin, ptr @__kstrtabns_dma_buf_pin }, section "___ksymtab_gpl+dma_buf_pin", align 4
@__kstrtab_dma_buf_unpin = external dso_local constant [0 x i8], align 1
@__kstrtabns_dma_buf_unpin = external dso_local constant [0 x i8], align 1
@__ksymtab_dma_buf_unpin = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @dma_buf_unpin to i32), ptr @__kstrtab_dma_buf_unpin, ptr @__kstrtabns_dma_buf_unpin }, section "___ksymtab_gpl+dma_buf_unpin", align 4
@__kstrtab_dma_buf_map_attachment = external dso_local constant [0 x i8], align 1
@__kstrtabns_dma_buf_map_attachment = external dso_local constant [0 x i8], align 1
@__ksymtab_dma_buf_map_attachment = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @dma_buf_map_attachment to i32), ptr @__kstrtab_dma_buf_map_attachment, ptr @__kstrtabns_dma_buf_map_attachment }, section "___ksymtab_gpl+dma_buf_map_attachment", align 4
@__kstrtab_dma_buf_unmap_attachment = external dso_local constant [0 x i8], align 1
@__kstrtabns_dma_buf_unmap_attachment = external dso_local constant [0 x i8], align 1
@__ksymtab_dma_buf_unmap_attachment = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @dma_buf_unmap_attachment to i32), ptr @__kstrtab_dma_buf_unmap_attachment, ptr @__kstrtabns_dma_buf_unmap_attachment }, section "___ksymtab_gpl+dma_buf_unmap_attachment", align 4
@__kstrtab_dma_buf_move_notify = external dso_local constant [0 x i8], align 1
@__kstrtabns_dma_buf_move_notify = external dso_local constant [0 x i8], align 1
@__ksymtab_dma_buf_move_notify = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @dma_buf_move_notify to i32), ptr @__kstrtab_dma_buf_move_notify, ptr @__kstrtabns_dma_buf_move_notify }, section "___ksymtab_gpl+dma_buf_move_notify", align 4
@__kstrtab_dma_buf_begin_cpu_access = external dso_local constant [0 x i8], align 1
@__kstrtabns_dma_buf_begin_cpu_access = external dso_local constant [0 x i8], align 1
@__ksymtab_dma_buf_begin_cpu_access = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @dma_buf_begin_cpu_access to i32), ptr @__kstrtab_dma_buf_begin_cpu_access, ptr @__kstrtabns_dma_buf_begin_cpu_access }, section "___ksymtab_gpl+dma_buf_begin_cpu_access", align 4
@__kstrtab_dma_buf_end_cpu_access = external dso_local constant [0 x i8], align 1
@__kstrtabns_dma_buf_end_cpu_access = external dso_local constant [0 x i8], align 1
@__ksymtab_dma_buf_end_cpu_access = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @dma_buf_end_cpu_access to i32), ptr @__kstrtab_dma_buf_end_cpu_access, ptr @__kstrtabns_dma_buf_end_cpu_access }, section "___ksymtab_gpl+dma_buf_end_cpu_access", align 4
@__kstrtab_dma_buf_mmap = external dso_local constant [0 x i8], align 1
@__kstrtabns_dma_buf_mmap = external dso_local constant [0 x i8], align 1
@__ksymtab_dma_buf_mmap = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @dma_buf_mmap to i32), ptr @__kstrtab_dma_buf_mmap, ptr @__kstrtabns_dma_buf_mmap }, section "___ksymtab_gpl+dma_buf_mmap", align 4
@dma_buf_vmap.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@__kstrtab_dma_buf_vmap = external dso_local constant [0 x i8], align 1
@__kstrtabns_dma_buf_vmap = external dso_local constant [0 x i8], align 1
@__ksymtab_dma_buf_vmap = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @dma_buf_vmap to i32), ptr @__kstrtab_dma_buf_vmap, ptr @__kstrtabns_dma_buf_vmap }, section "___ksymtab_gpl+dma_buf_vmap", align 4
@__kstrtab_dma_buf_vunmap = external dso_local constant [0 x i8], align 1
@__kstrtabns_dma_buf_vunmap = external dso_local constant [0 x i8], align 1
@__ksymtab_dma_buf_vunmap = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @dma_buf_vunmap to i32), ptr @__kstrtab_dma_buf_vunmap, ptr @__kstrtabns_dma_buf_vunmap }, section "___ksymtab_gpl+dma_buf_vunmap", align 4
@__initcall__kmod_dma_buf__231_1446_dma_buf_init4 = internal global ptr @dma_buf_init, section ".initcall4.init", align 4
@dma_buf_mnt = internal unnamed_addr global ptr null, align 4
@__exitcall_dma_buf_deinit = internal global ptr @dma_buf_deinit, section ".exitcall.exit", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@.str.4 = private unnamed_addr constant [7 x i8] c"dmabuf\00", align 1
@dma_buf_fops = internal constant %struct.file_operations { ptr null, ptr @dma_buf_llseek, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @dma_buf_poll, ptr @dma_buf_ioctl, ptr null, ptr @dma_buf_mmap_internal, i32 0, ptr null, ptr null, ptr @dma_buf_file_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @dma_buf_show_fdinfo, ptr null, ptr null, ptr null }, align 4
@.str.7 = private unnamed_addr constant [11 x i8] c"size:\09%zu\0A\00", align 1
@.str.8 = private unnamed_addr constant [12 x i8] c"count:\09%ld\0A\00", align 1
@.str.9 = private unnamed_addr constant [14 x i8] c"exp_name:\09%s\0A\00", align 1
@.str.10 = private unnamed_addr constant [10 x i8] c"name:\09%s\0A\00", align 1
@dma_buf_fs_type = internal global %struct.file_system_type { ptr @.str.4, i32 0, ptr @dma_buf_fs_init_context, ptr null, ptr null, ptr @kill_anon_super, ptr null, ptr null, %struct.hlist_head zeroinitializer, %struct.lock_class_key zeroinitializer, %struct.lock_class_key zeroinitializer, %struct.lock_class_key zeroinitializer, [3 x %struct.lock_class_key] zeroinitializer, %struct.lock_class_key zeroinitializer, %struct.lock_class_key zeroinitializer, %struct.lock_class_key zeroinitializer, %struct.lock_class_key zeroinitializer }, align 4
@dma_buf_init.__key = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.11 = private unnamed_addr constant [14 x i8] c"&db_list.lock\00", align 1
@dma_buf_dentry_ops = internal constant %struct.dentry_operations { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @dma_buf_release, ptr null, ptr null, ptr @dmabuffs_dname, ptr null, ptr null, ptr null, [12 x i8] undef }, align 64
@.str.12 = private unnamed_addr constant [7 x i8] c"/%s:%s\00", align 1
@.str.13 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.14 = private unnamed_addr constant [8 x i8] c"dma_buf\00", align 1
@dma_buf_debugfs_dir = internal unnamed_addr global ptr null, align 4
@.str.15 = private unnamed_addr constant [8 x i8] c"bufinfo\00", align 1
@dma_buf_debug_fops = internal constant %struct.file_operations { ptr null, ptr @seq_lseek, ptr @seq_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @dma_buf_debug_open, ptr null, ptr @single_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@.str.16 = private unnamed_addr constant [19 x i8] c"\0ADma-buf Objects:\0A\00", align 1
@.str.17 = private unnamed_addr constant [35 x i8] c"%-8s\09%-8s\09%-8s\09%-8s\09exp_name\09%-8s\0A\00", align 1
@.str.18 = private unnamed_addr constant [5 x i8] c"size\00", align 1
@.str.19 = private unnamed_addr constant [6 x i8] c"flags\00", align 1
@.str.20 = private unnamed_addr constant [5 x i8] c"mode\00", align 1
@.str.21 = private unnamed_addr constant [6 x i8] c"count\00", align 1
@.str.22 = private unnamed_addr constant [4 x i8] c"ino\00", align 1
@.str.23 = private unnamed_addr constant [35 x i8] c"%08zu\09%08x\09%08x\09%08ld\09%s\09%08lu\09%s\0A\00", align 1
@.str.24 = private unnamed_addr constant [20 x i8] c"\09Attached Devices:\0A\00", align 1
@.str.25 = private unnamed_addr constant [5 x i8] c"\09%s\0A\00", align 1
@.str.26 = private unnamed_addr constant [28 x i8] c"Total %d devices attached\0A\0A\00", align 1
@.str.27 = private unnamed_addr constant [30 x i8] c"\0ATotal %d objects, %zu bytes\0A\00", align 1
@llvm.compiler.used = appending global [20 x ptr] [ptr @__exitcall_dma_buf_deinit, ptr @__initcall__kmod_dma_buf__231_1446_dma_buf_init4, ptr @__ksymtab_dma_buf_attach, ptr @__ksymtab_dma_buf_begin_cpu_access, ptr @__ksymtab_dma_buf_detach, ptr @__ksymtab_dma_buf_dynamic_attach, ptr @__ksymtab_dma_buf_end_cpu_access, ptr @__ksymtab_dma_buf_export, ptr @__ksymtab_dma_buf_fd, ptr @__ksymtab_dma_buf_get, ptr @__ksymtab_dma_buf_map_attachment, ptr @__ksymtab_dma_buf_mmap, ptr @__ksymtab_dma_buf_move_notify, ptr @__ksymtab_dma_buf_pin, ptr @__ksymtab_dma_buf_put, ptr @__ksymtab_dma_buf_unmap_attachment, ptr @__ksymtab_dma_buf_unpin, ptr @__ksymtab_dma_buf_vmap, ptr @__ksymtab_dma_buf_vunmap, ptr @dma_buf_deinit], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @dma_buf_export(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.dma_buf_export_info, ptr %0, i32 0, i32 5
  %3 = load ptr, ptr %2, align 4
  %4 = icmp eq ptr %3, null
  %5 = select i1 %4, i32 172, i32 137
  %6 = getelementptr inbounds %struct.dma_buf_export_info, ptr %0, i32 0, i32 6
  %7 = load ptr, ptr %6, align 4
  %8 = icmp eq ptr %7, null
  br i1 %8, label %25, label %9

9:                                                ; preds = %1
  %10 = getelementptr inbounds %struct.dma_buf_export_info, ptr %0, i32 0, i32 2
  %11 = load ptr, ptr %10, align 4
  %12 = icmp eq ptr %11, null
  br i1 %12, label %25, label %13

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct.dma_buf_ops, ptr %11, i32 0, i32 5
  %15 = load ptr, ptr %14, align 4
  %16 = icmp eq ptr %15, null
  br i1 %16, label %25, label %17

17:                                               ; preds = %13
  %18 = getelementptr inbounds %struct.dma_buf_ops, ptr %11, i32 0, i32 6
  %19 = load ptr, ptr %18, align 4
  %20 = icmp eq ptr %19, null
  br i1 %20, label %25, label %21

21:                                               ; preds = %17
  %22 = getelementptr inbounds %struct.dma_buf_ops, ptr %11, i32 0, i32 7
  %23 = load ptr, ptr %22, align 4
  %24 = icmp eq ptr %23, null
  br i1 %24, label %25, label %26, !prof !8

25:                                               ; preds = %21, %17, %13, %9, %1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 501, i32 noundef 9, ptr noundef null) #11
  br label %117

26:                                               ; preds = %21
  %27 = load i8, ptr %11, align 4, !range !9
  %28 = icmp eq i8 %27, 0
  %29 = getelementptr inbounds %struct.dma_buf_ops, ptr %11, i32 0, i32 3
  %30 = load ptr, ptr %29, align 4
  br i1 %28, label %38, label %31

31:                                               ; preds = %26
  %32 = icmp eq ptr %30, null
  br i1 %32, label %33, label %37

33:                                               ; preds = %31
  %34 = getelementptr inbounds %struct.dma_buf_ops, ptr %11, i32 0, i32 4
  %35 = load ptr, ptr %34, align 4
  %36 = icmp eq ptr %35, null
  br i1 %36, label %45, label %37, !prof !10

37:                                               ; preds = %33, %31
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 506, i32 noundef 9, ptr noundef null) #11
  br label %117

38:                                               ; preds = %26
  %39 = getelementptr inbounds %struct.dma_buf_ops, ptr %11, i32 0, i32 4
  %40 = load ptr, ptr %39, align 4
  %41 = icmp ne ptr %30, null
  %42 = icmp eq ptr %40, null
  %43 = xor i1 %41, %42
  br i1 %43, label %45, label %44, !prof !10

44:                                               ; preds = %38
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 509, i32 noundef 9, ptr noundef null) #11
  br label %117

45:                                               ; preds = %38, %33
  %46 = getelementptr inbounds %struct.dma_buf_export_info, ptr %0, i32 0, i32 1
  %47 = load ptr, ptr %46, align 4
  %48 = tail call zeroext i1 @try_module_get(ptr noundef %47) #11
  br i1 %48, label %49, label %117

49:                                               ; preds = %45
  %50 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %5, i32 noundef 3520) #12
  %51 = icmp eq ptr %50, null
  br i1 %51, label %114, label %52

52:                                               ; preds = %49
  %53 = load ptr, ptr %6, align 4
  %54 = getelementptr inbounds %struct.dma_buf, ptr %50, i32 0, i32 12
  store ptr %53, ptr %54, align 4
  %55 = load ptr, ptr %10, align 4
  %56 = getelementptr inbounds %struct.dma_buf, ptr %50, i32 0, i32 3
  store ptr %55, ptr %56, align 16
  %57 = getelementptr inbounds %struct.dma_buf_export_info, ptr %0, i32 0, i32 3
  %58 = load i32, ptr %57, align 4
  store i32 %58, ptr %50, align 64
  %59 = load ptr, ptr %0, align 4
  %60 = getelementptr inbounds %struct.dma_buf, ptr %50, i32 0, i32 7
  store ptr %59, ptr %60, align 4
  %61 = load ptr, ptr %46, align 4
  %62 = getelementptr inbounds %struct.dma_buf, ptr %50, i32 0, i32 10
  store ptr %61, ptr %62, align 64
  %63 = getelementptr inbounds %struct.dma_buf, ptr %50, i32 0, i32 9
  store i32 0, ptr %63, align 4
  %64 = getelementptr inbounds %struct.dma_buf, ptr %50, i32 0, i32 14
  tail call void @__init_waitqueue_head(ptr noundef %64, ptr noundef nonnull @.str.1, ptr noundef nonnull @dma_buf_export.__key) #11
  %65 = getelementptr inbounds %struct.dma_buf, ptr %50, i32 0, i32 16, i32 1
  store ptr %64, ptr %65, align 64
  %66 = getelementptr inbounds %struct.dma_buf, ptr %50, i32 0, i32 15, i32 1
  store ptr %64, ptr %66, align 4
  %67 = getelementptr inbounds %struct.dma_buf, ptr %50, i32 0, i32 16, i32 2
  store i32 0, ptr %67, align 4
  %68 = getelementptr inbounds %struct.dma_buf, ptr %50, i32 0, i32 15, i32 2
  store i32 0, ptr %68, align 16
  br i1 %4, label %69, label %71

69:                                               ; preds = %52
  %70 = getelementptr %struct.dma_buf, ptr %50, i32 1
  tail call void @dma_resv_init(ptr noundef %70) #11
  br label %71

71:                                               ; preds = %69, %52
  %72 = phi ptr [ %3, %52 ], [ %70, %69 ]
  %73 = getelementptr inbounds %struct.dma_buf, ptr %50, i32 0, i32 13
  store ptr %72, ptr %73, align 16
  %74 = getelementptr inbounds %struct.dma_buf_export_info, ptr %0, i32 0, i32 4
  %75 = load i32, ptr %74, align 4
  %76 = load ptr, ptr @dma_buf_mnt, align 4
  %77 = getelementptr inbounds %struct.vfsmount, ptr %76, i32 0, i32 1
  %78 = load ptr, ptr %77, align 4
  %79 = tail call ptr @alloc_anon_inode(ptr noundef %78) #11
  %80 = icmp ugt ptr %79, inttoptr (i32 -4096 to ptr)
  br i1 %80, label %98, label %81

81:                                               ; preds = %71
  %82 = load i32, ptr %50, align 64
  %83 = zext i32 %82 to i64
  %84 = getelementptr inbounds %struct.inode, ptr %79, i32 0, i32 13
  store i64 %83, ptr %84, align 8
  %85 = load i32, ptr %50, align 64
  %86 = zext i32 %85 to i64
  tail call void @inode_set_bytes(ptr noundef %79, i64 noundef %86) #11
  %87 = load ptr, ptr @dma_buf_mnt, align 4
  %88 = tail call ptr @alloc_file_pseudo(ptr noundef %79, ptr noundef %87, ptr noundef nonnull @.str.4, i32 noundef %75, ptr noundef nonnull @dma_buf_fops) #11
  %89 = icmp ugt ptr %88, inttoptr (i32 -4096 to ptr)
  br i1 %89, label %97, label %90

90:                                               ; preds = %81
  %91 = and i32 %75, 2051
  %92 = getelementptr inbounds %struct.file, ptr %88, i32 0, i32 7
  store i32 %91, ptr %92, align 4
  %93 = getelementptr inbounds %struct.file, ptr %88, i32 0, i32 15
  store ptr %50, ptr %93, align 8
  %94 = getelementptr inbounds %struct.file, ptr %88, i32 0, i32 1, i32 1
  %95 = load ptr, ptr %94, align 4
  %96 = getelementptr inbounds %struct.dentry, ptr %95, i32 0, i32 11
  store ptr %50, ptr %96, align 4
  br label %98

97:                                               ; preds = %81
  tail call void @iput(ptr noundef %79) #11
  br label %98

98:                                               ; preds = %97, %90, %71
  %99 = phi ptr [ %88, %97 ], [ %88, %90 ], [ %79, %71 ]
  %100 = icmp ugt ptr %99, inttoptr (i32 -4096 to ptr)
  br i1 %100, label %101, label %102

101:                                              ; preds = %98
  tail call void @kfree(ptr noundef nonnull %50) #11
  br label %114

102:                                              ; preds = %98
  %103 = getelementptr inbounds %struct.file, ptr %99, i32 0, i32 8
  %104 = load i32, ptr %103, align 8
  %105 = or i32 %104, 4
  store i32 %105, ptr %103, align 8
  %106 = getelementptr inbounds %struct.dma_buf, ptr %50, i32 0, i32 1
  store ptr %99, ptr %106, align 4
  %107 = getelementptr inbounds %struct.dma_buf, ptr %50, i32 0, i32 4
  tail call void @__mutex_init(ptr noundef %107, ptr noundef nonnull @.str.3, ptr noundef nonnull @dma_buf_export.__key.2) #11
  %108 = getelementptr inbounds %struct.dma_buf, ptr %50, i32 0, i32 2
  store volatile ptr %108, ptr %108, align 8
  %109 = getelementptr inbounds %struct.dma_buf, ptr %50, i32 0, i32 2, i32 1
  store ptr %108, ptr %109, align 4
  tail call void @mutex_lock(ptr noundef getelementptr inbounds (%struct.dma_buf_list, ptr @db_list, i32 0, i32 1)) #11
  %110 = getelementptr inbounds %struct.dma_buf, ptr %50, i32 0, i32 11
  %111 = load ptr, ptr @db_list, align 4
  %112 = getelementptr inbounds %struct.list_head, ptr %111, i32 0, i32 1
  store ptr %110, ptr %112, align 4
  store ptr %111, ptr %110, align 4
  %113 = getelementptr inbounds %struct.dma_buf, ptr %50, i32 0, i32 11, i32 1
  store ptr @db_list, ptr %113, align 8
  store volatile ptr %110, ptr @db_list, align 4
  tail call void @mutex_unlock(ptr noundef getelementptr inbounds (%struct.dma_buf_list, ptr @db_list, i32 0, i32 1)) #11
  br label %117

114:                                              ; preds = %101, %49
  %115 = phi ptr [ %99, %101 ], [ inttoptr (i32 -12 to ptr), %49 ]
  %116 = load ptr, ptr %46, align 4
  tail call void @module_put(ptr noundef %116) #11
  br label %117

117:                                              ; preds = %114, %102, %45, %44, %37, %25
  %118 = phi ptr [ inttoptr (i32 -22 to ptr), %25 ], [ inttoptr (i32 -22 to ptr), %37 ], [ inttoptr (i32 -22 to ptr), %44 ], [ %115, %114 ], [ %50, %102 ], [ inttoptr (i32 -2 to ptr), %45 ]
  ret ptr %118
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @try_module_get(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_waitqueue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_resv_init(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @fput(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @module_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @dma_buf_fd(ptr noundef readonly %0, i32 noundef %1) #0 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %13, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.dma_buf, ptr %0, i32 0, i32 1
  %6 = load ptr, ptr %5, align 4
  %7 = icmp eq ptr %6, null
  br i1 %7, label %13, label %8

8:                                                ; preds = %4
  %9 = tail call i32 @get_unused_fd_flags(i32 noundef %1) #11
  %10 = icmp slt i32 %9, 0
  br i1 %10, label %13, label %11

11:                                               ; preds = %8
  %12 = load ptr, ptr %5, align 4
  tail call void @fd_install(i32 noundef %9, ptr noundef %12) #11
  br label %13

13:                                               ; preds = %11, %8, %4, %2
  %14 = phi i32 [ %9, %11 ], [ -22, %4 ], [ -22, %2 ], [ %9, %8 ]
  ret i32 %14
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @get_unused_fd_flags(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @fd_install(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @dma_buf_get(i32 noundef %0) #0 {
  %2 = tail call ptr @fget(i32 noundef %0) #11
  %3 = icmp eq ptr %2, null
  br i1 %3, label %12, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.file, ptr %2, i32 0, i32 3
  %6 = load ptr, ptr %5, align 4
  %7 = icmp eq ptr %6, @dma_buf_fops
  br i1 %7, label %9, label %8

8:                                                ; preds = %4
  tail call void @fput(ptr noundef nonnull %2) #11
  br label %12

9:                                                ; preds = %4
  %10 = getelementptr inbounds %struct.file, ptr %2, i32 0, i32 15
  %11 = load ptr, ptr %10, align 8
  br label %12

12:                                               ; preds = %9, %8, %1
  %13 = phi ptr [ %11, %9 ], [ inttoptr (i32 -22 to ptr), %8 ], [ inttoptr (i32 -9 to ptr), %1 ]
  ret ptr %13
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @fget(i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @dma_buf_put(ptr noundef readonly %0) #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %7, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.dma_buf, ptr %0, i32 0, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %7, label %8, !prof !8

7:                                                ; preds = %3, %1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 637, i32 noundef 9, ptr noundef null) #11
  br label %9

8:                                                ; preds = %3
  tail call void @fput(ptr noundef nonnull %5) #11
  br label %9

9:                                                ; preds = %8, %7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @dma_buf_dynamic_attach(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) #0 {
  %5 = icmp eq ptr %0, null
  %6 = icmp eq ptr %1, null
  %7 = or i1 %5, %6
  br i1 %7, label %8, label %9, !prof !8

8:                                                ; preds = %4
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 702, i32 noundef 9, ptr noundef null) #11
  br label %122

9:                                                ; preds = %4
  %10 = icmp eq ptr %2, null
  br i1 %10, label %16, label %11

11:                                               ; preds = %9
  %12 = getelementptr inbounds %struct.dma_buf_attach_ops, ptr %2, i32 0, i32 1
  %13 = load ptr, ptr %12, align 4
  %14 = icmp eq ptr %13, null
  br i1 %14, label %15, label %16, !prof !8

15:                                               ; preds = %11
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 705, i32 noundef 9, ptr noundef null) #11
  br label %122

16:                                               ; preds = %11, %9
  %17 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %18 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %17, i32 noundef 3520, i32 noundef 40) #13
  %19 = icmp eq ptr %18, null
  br i1 %19, label %122, label %20

20:                                               ; preds = %16
  %21 = getelementptr inbounds %struct.dma_buf_attachment, ptr %18, i32 0, i32 1
  store ptr %1, ptr %21, align 4
  store ptr %0, ptr %18, align 8
  br i1 %10, label %25, label %22

22:                                               ; preds = %20
  %23 = load i8, ptr %2, align 4, !range !9
  %24 = getelementptr inbounds %struct.dma_buf_attachment, ptr %18, i32 0, i32 5
  store i8 %23, ptr %24, align 8
  br label %25

25:                                               ; preds = %22, %20
  %26 = getelementptr inbounds %struct.dma_buf_attachment, ptr %18, i32 0, i32 6
  store ptr %2, ptr %26, align 4
  %27 = getelementptr inbounds %struct.dma_buf_attachment, ptr %18, i32 0, i32 7
  store ptr %3, ptr %27, align 8
  %28 = getelementptr inbounds %struct.dma_buf, ptr %0, i32 0, i32 3
  %29 = load ptr, ptr %28, align 4
  %30 = getelementptr inbounds %struct.dma_buf_ops, ptr %29, i32 0, i32 1
  %31 = load ptr, ptr %30, align 4
  %32 = icmp eq ptr %31, null
  br i1 %32, label %36, label %33

33:                                               ; preds = %25
  %34 = tail call i32 %31(ptr noundef nonnull %0, ptr noundef nonnull %18) #11
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %36, label %94

36:                                               ; preds = %33, %25
  %37 = getelementptr inbounds %struct.dma_buf, ptr %0, i32 0, i32 13
  %38 = load ptr, ptr %37, align 4
  %39 = tail call i32 @ww_mutex_lock(ptr noundef %38, ptr noundef null) #11
  %40 = getelementptr inbounds %struct.dma_buf_attachment, ptr %18, i32 0, i32 2
  %41 = getelementptr inbounds %struct.dma_buf, ptr %0, i32 0, i32 2
  %42 = load ptr, ptr %41, align 4
  %43 = getelementptr inbounds %struct.list_head, ptr %42, i32 0, i32 1
  store ptr %40, ptr %43, align 4
  store ptr %42, ptr %40, align 8
  %44 = getelementptr inbounds %struct.dma_buf_attachment, ptr %18, i32 0, i32 2, i32 1
  store ptr %41, ptr %44, align 4
  store volatile ptr %40, ptr %41, align 4
  %45 = load ptr, ptr %37, align 4
  tail call void @ww_mutex_unlock(ptr noundef %45) #11
  %46 = load ptr, ptr %26, align 4
  %47 = icmp ne ptr %46, null
  %48 = load ptr, ptr %28, align 4
  %49 = getelementptr inbounds %struct.dma_buf_ops, ptr %48, i32 0, i32 3
  %50 = load ptr, ptr %49, align 4
  %51 = icmp ne ptr %50, null
  %52 = xor i1 %47, %51
  br i1 %52, label %53, label %122

53:                                               ; preds = %36
  %54 = load ptr, ptr %18, align 8
  %55 = getelementptr inbounds %struct.dma_buf, ptr %54, i32 0, i32 3
  %56 = load ptr, ptr %55, align 4
  %57 = getelementptr inbounds %struct.dma_buf_ops, ptr %56, i32 0, i32 3
  %58 = load ptr, ptr %57, align 4
  %59 = icmp eq ptr %58, null
  br i1 %59, label %73, label %60

60:                                               ; preds = %53
  %61 = getelementptr inbounds %struct.dma_buf, ptr %54, i32 0, i32 13
  %62 = load ptr, ptr %61, align 4
  %63 = tail call i32 @ww_mutex_lock(ptr noundef %62, ptr noundef null) #11
  %64 = load ptr, ptr %28, align 4
  %65 = getelementptr inbounds %struct.dma_buf_ops, ptr %64, i32 0, i32 3
  %66 = load ptr, ptr %65, align 4
  %67 = tail call i32 %66(ptr noundef nonnull %18) #11
  %68 = icmp eq i32 %67, 0
  br i1 %68, label %69, label %109

69:                                               ; preds = %60
  %70 = load ptr, ptr %18, align 8
  %71 = getelementptr inbounds %struct.dma_buf, ptr %70, i32 0, i32 3
  %72 = load ptr, ptr %71, align 4
  br label %73

73:                                               ; preds = %69, %53
  %74 = phi ptr [ %72, %69 ], [ %56, %53 ]
  %75 = getelementptr inbounds %struct.dma_buf_ops, ptr %74, i32 0, i32 5
  %76 = load ptr, ptr %75, align 4
  %77 = tail call ptr %76(ptr noundef nonnull %18, i32 noundef 0) #11
  %78 = icmp eq ptr %77, null
  br i1 %78, label %96, label %79

79:                                               ; preds = %73
  %80 = icmp ugt ptr %77, inttoptr (i32 -4096 to ptr)
  br i1 %80, label %96, label %81

81:                                               ; preds = %79
  %82 = load ptr, ptr %18, align 8
  %83 = getelementptr inbounds %struct.dma_buf, ptr %82, i32 0, i32 3
  %84 = load ptr, ptr %83, align 4
  %85 = getelementptr inbounds %struct.dma_buf_ops, ptr %84, i32 0, i32 3
  %86 = load ptr, ptr %85, align 4
  %87 = icmp eq ptr %86, null
  br i1 %87, label %91, label %88

88:                                               ; preds = %81
  %89 = getelementptr inbounds %struct.dma_buf, ptr %82, i32 0, i32 13
  %90 = load ptr, ptr %89, align 4
  tail call void @ww_mutex_unlock(ptr noundef %90) #11
  br label %91

91:                                               ; preds = %88, %81
  %92 = getelementptr inbounds %struct.dma_buf_attachment, ptr %18, i32 0, i32 3
  store ptr %77, ptr %92, align 8
  %93 = getelementptr inbounds %struct.dma_buf_attachment, ptr %18, i32 0, i32 4
  store i32 0, ptr %93, align 4
  br label %122

94:                                               ; preds = %33
  tail call void @kfree(ptr noundef nonnull %18) #11
  %95 = inttoptr i32 %34 to ptr
  br label %122

96:                                               ; preds = %79, %73
  %97 = phi ptr [ %77, %79 ], [ inttoptr (i32 -12 to ptr), %73 ]
  %98 = ptrtoint ptr %97 to i32
  %99 = load ptr, ptr %18, align 8
  %100 = getelementptr inbounds %struct.dma_buf, ptr %99, i32 0, i32 3
  %101 = load ptr, ptr %100, align 4
  %102 = getelementptr inbounds %struct.dma_buf_ops, ptr %101, i32 0, i32 3
  %103 = load ptr, ptr %102, align 4
  %104 = icmp eq ptr %103, null
  br i1 %104, label %109, label %105

105:                                              ; preds = %96
  %106 = load ptr, ptr %28, align 4
  %107 = getelementptr inbounds %struct.dma_buf_ops, ptr %106, i32 0, i32 4
  %108 = load ptr, ptr %107, align 4
  tail call void %108(ptr noundef nonnull %18) #11
  br label %109

109:                                              ; preds = %105, %96, %60
  %110 = phi i32 [ %98, %96 ], [ %98, %105 ], [ %67, %60 ]
  %111 = load ptr, ptr %18, align 8
  %112 = getelementptr inbounds %struct.dma_buf, ptr %111, i32 0, i32 3
  %113 = load ptr, ptr %112, align 4
  %114 = getelementptr inbounds %struct.dma_buf_ops, ptr %113, i32 0, i32 3
  %115 = load ptr, ptr %114, align 4
  %116 = icmp eq ptr %115, null
  br i1 %116, label %120, label %117

117:                                              ; preds = %109
  %118 = getelementptr inbounds %struct.dma_buf, ptr %111, i32 0, i32 13
  %119 = load ptr, ptr %118, align 4
  tail call void @ww_mutex_unlock(ptr noundef %119) #11
  br label %120

120:                                              ; preds = %117, %109
  tail call void @dma_buf_detach(ptr noundef nonnull %0, ptr noundef nonnull %18)
  %121 = inttoptr i32 %110 to ptr
  br label %122

122:                                              ; preds = %120, %94, %91, %36, %16, %15, %8
  %123 = phi ptr [ inttoptr (i32 -22 to ptr), %8 ], [ inttoptr (i32 -22 to ptr), %15 ], [ %95, %94 ], [ %121, %120 ], [ %18, %36 ], [ inttoptr (i32 -12 to ptr), %16 ], [ %18, %91 ]
  ret ptr %123
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @dma_buf_detach(ptr noundef %0, ptr noundef %1) #0 {
  %3 = icmp eq ptr %0, null
  %4 = icmp eq ptr %1, null
  %5 = or i1 %3, %4
  br i1 %5, label %6, label %7, !prof !8

6:                                                ; preds = %2
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 811, i32 noundef 9, ptr noundef null) #11
  br label %64

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.dma_buf_attachment, ptr %1, i32 0, i32 3
  %9 = load ptr, ptr %8, align 4
  %10 = icmp eq ptr %9, null
  br i1 %10, label %47, label %11

11:                                               ; preds = %7
  %12 = load ptr, ptr %1, align 4
  %13 = getelementptr inbounds %struct.dma_buf, ptr %12, i32 0, i32 3
  %14 = load ptr, ptr %13, align 4
  %15 = getelementptr inbounds %struct.dma_buf_ops, ptr %14, i32 0, i32 3
  %16 = load ptr, ptr %15, align 4
  %17 = icmp eq ptr %16, null
  br i1 %17, label %26, label %18

18:                                               ; preds = %11
  %19 = getelementptr inbounds %struct.dma_buf, ptr %12, i32 0, i32 13
  %20 = load ptr, ptr %19, align 4
  %21 = tail call i32 @ww_mutex_lock(ptr noundef %20, ptr noundef null) #11
  %22 = load ptr, ptr %8, align 4
  %23 = load ptr, ptr %1, align 4
  %24 = getelementptr inbounds %struct.dma_buf, ptr %23, i32 0, i32 3
  %25 = load ptr, ptr %24, align 4
  br label %26

26:                                               ; preds = %18, %11
  %27 = phi ptr [ %25, %18 ], [ %14, %11 ]
  %28 = phi ptr [ %22, %18 ], [ %9, %11 ]
  %29 = getelementptr inbounds %struct.dma_buf_attachment, ptr %1, i32 0, i32 4
  %30 = load i32, ptr %29, align 4
  %31 = getelementptr inbounds %struct.dma_buf_ops, ptr %27, i32 0, i32 6
  %32 = load ptr, ptr %31, align 4
  tail call void %32(ptr noundef nonnull %1, ptr noundef %28, i32 noundef %30) #11
  %33 = load ptr, ptr %1, align 4
  %34 = getelementptr inbounds %struct.dma_buf, ptr %33, i32 0, i32 3
  %35 = load ptr, ptr %34, align 4
  %36 = getelementptr inbounds %struct.dma_buf_ops, ptr %35, i32 0, i32 3
  %37 = load ptr, ptr %36, align 4
  %38 = icmp eq ptr %37, null
  br i1 %38, label %47, label %39

39:                                               ; preds = %26
  %40 = getelementptr inbounds %struct.dma_buf, ptr %0, i32 0, i32 3
  %41 = load ptr, ptr %40, align 4
  %42 = getelementptr inbounds %struct.dma_buf_ops, ptr %41, i32 0, i32 4
  %43 = load ptr, ptr %42, align 4
  tail call void %43(ptr noundef nonnull %1) #11
  %44 = load ptr, ptr %1, align 4
  %45 = getelementptr inbounds %struct.dma_buf, ptr %44, i32 0, i32 13
  %46 = load ptr, ptr %45, align 4
  tail call void @ww_mutex_unlock(ptr noundef %46) #11
  br label %47

47:                                               ; preds = %39, %26, %7
  %48 = getelementptr inbounds %struct.dma_buf, ptr %0, i32 0, i32 13
  %49 = load ptr, ptr %48, align 4
  %50 = tail call i32 @ww_mutex_lock(ptr noundef %49, ptr noundef null) #11
  %51 = getelementptr inbounds %struct.dma_buf_attachment, ptr %1, i32 0, i32 2
  %52 = getelementptr inbounds %struct.dma_buf_attachment, ptr %1, i32 0, i32 2, i32 1
  %53 = load ptr, ptr %52, align 4
  %54 = load ptr, ptr %51, align 4
  %55 = getelementptr inbounds %struct.list_head, ptr %54, i32 0, i32 1
  store ptr %53, ptr %55, align 4
  store volatile ptr %54, ptr %53, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %51, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %52, align 4
  %56 = load ptr, ptr %48, align 4
  tail call void @ww_mutex_unlock(ptr noundef %56) #11
  %57 = getelementptr inbounds %struct.dma_buf, ptr %0, i32 0, i32 3
  %58 = load ptr, ptr %57, align 4
  %59 = getelementptr inbounds %struct.dma_buf_ops, ptr %58, i32 0, i32 2
  %60 = load ptr, ptr %59, align 4
  %61 = icmp eq ptr %60, null
  br i1 %61, label %63, label %62

62:                                               ; preds = %47
  tail call void %60(ptr noundef nonnull %0, ptr noundef nonnull %1) #11
  br label %63

63:                                               ; preds = %62, %47
  tail call void @kfree(ptr noundef nonnull %1) #11
  br label %64

64:                                               ; preds = %63, %6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @dma_buf_attach(ptr noundef %0, ptr noundef %1) #0 {
  %3 = tail call ptr @dma_buf_dynamic_attach(ptr noundef %0, ptr noundef %1, ptr noundef null, ptr noundef null)
  ret ptr %3
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @dma_buf_pin(ptr noundef %0) #0 {
  %2 = load ptr, ptr %0, align 4
  %3 = getelementptr inbounds %struct.dma_buf_attachment, ptr %0, i32 0, i32 6
  %4 = load ptr, ptr %3, align 4
  %5 = icmp eq ptr %4, null
  br i1 %5, label %6, label %7, !prof !8

6:                                                ; preds = %1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 855, i32 noundef 9, ptr noundef null) #11
  br label %7

7:                                                ; preds = %6, %1
  %8 = getelementptr inbounds %struct.dma_buf, ptr %2, i32 0, i32 3
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.dma_buf_ops, ptr %9, i32 0, i32 3
  %11 = load ptr, ptr %10, align 4
  %12 = icmp eq ptr %11, null
  br i1 %12, label %15, label %13

13:                                               ; preds = %7
  %14 = tail call i32 %11(ptr noundef %0) #11
  br label %15

15:                                               ; preds = %13, %7
  %16 = phi i32 [ %14, %13 ], [ 0, %7 ]
  ret i32 %16
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @dma_buf_unpin(ptr noundef %0) #0 {
  %2 = load ptr, ptr %0, align 4
  %3 = getelementptr inbounds %struct.dma_buf_attachment, ptr %0, i32 0, i32 6
  %4 = load ptr, ptr %3, align 4
  %5 = icmp eq ptr %4, null
  br i1 %5, label %6, label %7, !prof !8

6:                                                ; preds = %1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 878, i32 noundef 9, ptr noundef null) #11
  br label %7

7:                                                ; preds = %6, %1
  %8 = getelementptr inbounds %struct.dma_buf, ptr %2, i32 0, i32 3
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.dma_buf_ops, ptr %9, i32 0, i32 4
  %11 = load ptr, ptr %10, align 4
  %12 = icmp eq ptr %11, null
  br i1 %12, label %14, label %13

13:                                               ; preds = %7
  tail call void %11(ptr noundef %0) #11
  br label %14

14:                                               ; preds = %13, %7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @dma_buf_map_attachment(ptr noundef %0, i32 noundef %1) #0 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %7, label %4

4:                                                ; preds = %2
  %5 = load ptr, ptr %0, align 4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %7, label %8, !prof !8

7:                                                ; preds = %4, %2
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 916, i32 noundef 9, ptr noundef null) #11
  br label %61

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.dma_buf_attachment, ptr %0, i32 0, i32 3
  %10 = load ptr, ptr %9, align 4
  %11 = icmp eq ptr %10, null
  br i1 %11, label %19, label %12

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct.dma_buf_attachment, ptr %0, i32 0, i32 4
  %14 = load i32, ptr %13, align 4
  %15 = icmp eq i32 %14, %1
  %16 = icmp eq i32 %14, 0
  %17 = or i1 %15, %16
  %18 = select i1 %17, ptr %10, ptr inttoptr (i32 -16 to ptr)
  br label %61

19:                                               ; preds = %8
  %20 = getelementptr inbounds %struct.dma_buf, ptr %5, i32 0, i32 3
  %21 = load ptr, ptr %20, align 4
  %22 = getelementptr inbounds %struct.dma_buf_ops, ptr %21, i32 0, i32 3
  %23 = load ptr, ptr %22, align 4
  %24 = icmp eq ptr %23, null
  br i1 %24, label %34, label %25

25:                                               ; preds = %19
  %26 = tail call i32 %23(ptr noundef nonnull %0) #11
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %32

28:                                               ; preds = %25
  %29 = load ptr, ptr %0, align 4
  %30 = getelementptr inbounds %struct.dma_buf, ptr %29, i32 0, i32 3
  %31 = load ptr, ptr %30, align 4
  br label %34

32:                                               ; preds = %25
  %33 = inttoptr i32 %26 to ptr
  br label %61

34:                                               ; preds = %28, %19
  %35 = phi ptr [ %31, %28 ], [ %21, %19 ]
  %36 = getelementptr inbounds %struct.dma_buf_ops, ptr %35, i32 0, i32 5
  %37 = load ptr, ptr %36, align 4
  %38 = tail call ptr %37(ptr noundef nonnull %0, i32 noundef %1) #11
  %39 = icmp eq ptr %38, null
  br i1 %39, label %42, label %40

40:                                               ; preds = %34
  %41 = icmp ugt ptr %38, inttoptr (i32 -4096 to ptr)
  br i1 %41, label %42, label %53

42:                                               ; preds = %40, %34
  %43 = phi ptr [ %38, %40 ], [ inttoptr (i32 -12 to ptr), %34 ]
  %44 = load ptr, ptr %0, align 4
  %45 = getelementptr inbounds %struct.dma_buf, ptr %44, i32 0, i32 3
  %46 = load ptr, ptr %45, align 4
  %47 = getelementptr inbounds %struct.dma_buf_ops, ptr %46, i32 0, i32 3
  %48 = load ptr, ptr %47, align 4
  %49 = icmp eq ptr %48, null
  br i1 %49, label %61, label %50

50:                                               ; preds = %42
  %51 = getelementptr inbounds %struct.dma_buf_ops, ptr %46, i32 0, i32 4
  %52 = load ptr, ptr %51, align 4
  tail call void %52(ptr noundef nonnull %0) #11
  br label %61

53:                                               ; preds = %40
  %54 = load ptr, ptr %0, align 4
  %55 = getelementptr inbounds %struct.dma_buf, ptr %54, i32 0, i32 3
  %56 = load ptr, ptr %55, align 4
  %57 = load i8, ptr %56, align 4, !range !9
  %58 = icmp eq i8 %57, 0
  br i1 %58, label %61, label %59

59:                                               ; preds = %53
  store ptr %38, ptr %9, align 4
  %60 = getelementptr inbounds %struct.dma_buf_attachment, ptr %0, i32 0, i32 4
  store i32 %1, ptr %60, align 4
  br label %61

61:                                               ; preds = %59, %53, %50, %42, %32, %12, %7
  %62 = phi ptr [ inttoptr (i32 -22 to ptr), %7 ], [ %33, %32 ], [ %38, %59 ], [ %38, %53 ], [ %43, %50 ], [ %43, %42 ], [ %18, %12 ]
  ret ptr %62
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @dma_buf_unmap_attachment(ptr noundef %0, ptr noundef %1, i32 noundef %2) #0 {
  %4 = icmp eq ptr %0, null
  br i1 %4, label %10, label %5

5:                                                ; preds = %3
  %6 = load ptr, ptr %0, align 4
  %7 = icmp eq ptr %6, null
  %8 = icmp eq ptr %1, null
  %9 = or i1 %8, %7
  br i1 %9, label %10, label %11, !prof !8

10:                                               ; preds = %5, %3
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 993, i32 noundef 9, ptr noundef null) #11
  br label %38

11:                                               ; preds = %5
  %12 = getelementptr inbounds %struct.dma_buf_attachment, ptr %0, i32 0, i32 6
  %13 = getelementptr inbounds %struct.dma_buf_attachment, ptr %0, i32 0, i32 3
  %14 = load ptr, ptr %13, align 4
  %15 = icmp eq ptr %14, %1
  br i1 %15, label %38, label %16

16:                                               ; preds = %11
  %17 = getelementptr inbounds %struct.dma_buf, ptr %6, i32 0, i32 3
  %18 = load ptr, ptr %17, align 4
  %19 = getelementptr inbounds %struct.dma_buf_ops, ptr %18, i32 0, i32 6
  %20 = load ptr, ptr %19, align 4
  tail call void %20(ptr noundef nonnull %0, ptr noundef nonnull %1, i32 noundef %2) #11
  %21 = load ptr, ptr %0, align 4
  %22 = getelementptr inbounds %struct.dma_buf, ptr %21, i32 0, i32 3
  %23 = load ptr, ptr %22, align 4
  %24 = getelementptr inbounds %struct.dma_buf_ops, ptr %23, i32 0, i32 3
  %25 = load ptr, ptr %24, align 4
  %26 = icmp eq ptr %25, null
  br i1 %26, label %38, label %27

27:                                               ; preds = %16
  %28 = load ptr, ptr %12, align 4
  %29 = icmp eq ptr %28, null
  br i1 %29, label %30, label %32, !prof !8

30:                                               ; preds = %27
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 878, i32 noundef 9, ptr noundef null) #11
  %31 = load ptr, ptr %22, align 4
  br label %32

32:                                               ; preds = %30, %27
  %33 = phi ptr [ %31, %30 ], [ %23, %27 ]
  %34 = getelementptr inbounds %struct.dma_buf_ops, ptr %33, i32 0, i32 4
  %35 = load ptr, ptr %34, align 4
  %36 = icmp eq ptr %35, null
  br i1 %36, label %38, label %37

37:                                               ; preds = %32
  tail call void %35(ptr noundef nonnull %0) #11
  br label %38

38:                                               ; preds = %37, %32, %16, %11, %10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @dma_buf_move_notify(ptr noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.dma_buf, ptr %0, i32 0, i32 2
  %3 = load ptr, ptr %2, align 4
  %4 = icmp eq ptr %3, %2
  br i1 %4, label %17, label %5

5:                                                ; preds = %14, %1
  %6 = phi ptr [ %15, %14 ], [ %3, %1 ]
  %7 = getelementptr i8, ptr %6, i32 20
  %8 = load ptr, ptr %7, align 4
  %9 = icmp eq ptr %8, null
  br i1 %9, label %14, label %10

10:                                               ; preds = %5
  %11 = getelementptr i8, ptr %6, i32 -8
  %12 = getelementptr inbounds %struct.dma_buf_attach_ops, ptr %8, i32 0, i32 1
  %13 = load ptr, ptr %12, align 4
  tail call void %13(ptr noundef %11) #11
  br label %14

14:                                               ; preds = %10, %5
  %15 = load ptr, ptr %6, align 4
  %16 = icmp eq ptr %15, %2
  br i1 %16, label %17, label %5

17:                                               ; preds = %14, %1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @dma_buf_begin_cpu_access(ptr noundef %0, i32 noundef %1) #0 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %4, label %5, !prof !8

4:                                                ; preds = %2
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1158, i32 noundef 9, ptr noundef null) #11
  br label %20

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.dma_buf, ptr %0, i32 0, i32 3
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.dma_buf_ops, ptr %7, i32 0, i32 8
  %9 = load ptr, ptr %8, align 4
  %10 = icmp eq ptr %9, null
  br i1 %10, label %14, label %11

11:                                               ; preds = %5
  %12 = tail call i32 %9(ptr noundef nonnull %0, i32 noundef %1) #11
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %20

14:                                               ; preds = %11, %5
  %15 = icmp ult i32 %1, 2
  %16 = getelementptr inbounds %struct.dma_buf, ptr %0, i32 0, i32 13
  %17 = load ptr, ptr %16, align 4
  %18 = tail call i32 @dma_resv_wait_timeout(ptr noundef %17, i1 noundef zeroext %15, i1 noundef zeroext true, i32 noundef 2147483647) #11
  %19 = tail call i32 @llvm.smin.i32(i32 %18, i32 0) #11
  br label %20

20:                                               ; preds = %14, %11, %4
  %21 = phi i32 [ -22, %4 ], [ %19, %14 ], [ %12, %11 ]
  ret i32 %21
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @dma_buf_end_cpu_access(ptr noundef %0, i32 noundef %1) #0 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %4, label %5, !prof !8

4:                                                ; preds = %2
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1194, i32 noundef 9, ptr noundef null) #11
  br label %5

5:                                                ; preds = %4, %2
  %6 = getelementptr inbounds %struct.dma_buf, ptr %0, i32 0, i32 3
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.dma_buf_ops, ptr %7, i32 0, i32 9
  %9 = load ptr, ptr %8, align 4
  %10 = icmp eq ptr %9, null
  br i1 %10, label %13, label %11

11:                                               ; preds = %5
  %12 = tail call i32 %9(ptr noundef %0, i32 noundef %1) #11
  br label %13

13:                                               ; preds = %11, %5
  %14 = phi i32 [ %12, %11 ], [ 0, %5 ]
  ret i32 %14
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @dma_buf_mmap(ptr noundef %0, ptr noundef %1, i32 noundef %2) #0 {
  %4 = icmp eq ptr %0, null
  %5 = icmp eq ptr %1, null
  %6 = or i1 %4, %5
  br i1 %6, label %7, label %8, !prof !8

7:                                                ; preds = %3
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1223, i32 noundef 9, ptr noundef null) #11
  br label %35

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.dma_buf, ptr %0, i32 0, i32 3
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr inbounds %struct.dma_buf_ops, ptr %10, i32 0, i32 10
  %12 = load ptr, ptr %11, align 4
  %13 = icmp eq ptr %12, null
  br i1 %13, label %35, label %14

14:                                               ; preds = %8
  %15 = getelementptr inbounds %struct.vm_area_struct, ptr %1, i32 0, i32 1
  %16 = load i32, ptr %15, align 4
  %17 = load i32, ptr %1, align 4
  %18 = sub i32 %16, %17
  %19 = lshr i32 %18, 12
  %20 = xor i32 %2, -1
  %21 = icmp ugt i32 %19, %20
  br i1 %21, label %35, label %22

22:                                               ; preds = %14
  %23 = add i32 %19, %2
  %24 = load i32, ptr %0, align 4
  %25 = lshr i32 %24, 12
  %26 = icmp ugt i32 %23, %25
  br i1 %26, label %35, label %27

27:                                               ; preds = %22
  %28 = getelementptr inbounds %struct.dma_buf, ptr %0, i32 0, i32 1
  %29 = load ptr, ptr %28, align 4
  tail call void @vma_set_file(ptr noundef nonnull %1, ptr noundef %29) #11
  %30 = getelementptr inbounds %struct.vm_area_struct, ptr %1, i32 0, i32 13
  store i32 %2, ptr %30, align 4
  %31 = load ptr, ptr %9, align 4
  %32 = getelementptr inbounds %struct.dma_buf_ops, ptr %31, i32 0, i32 10
  %33 = load ptr, ptr %32, align 4
  %34 = tail call i32 %33(ptr noundef nonnull %0, ptr noundef nonnull %1) #11
  br label %35

35:                                               ; preds = %27, %22, %14, %8, %7
  %36 = phi i32 [ -22, %7 ], [ %34, %27 ], [ -22, %8 ], [ -75, %14 ], [ -22, %22 ]
  ret i32 %36
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @vma_set_file(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @dma_buf_vmap(ptr noundef %0, ptr nocapture noundef %1) #0 {
  %3 = alloca %struct.dma_buf_map, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #11
  store i64 0, ptr %3, align 8, !annotation !11
  %4 = getelementptr inbounds %struct.dma_buf_map, ptr %1, i32 0, i32 1
  %5 = load i8, ptr %4, align 4, !range !9
  %6 = icmp eq i8 %5, 0
  store ptr null, ptr %1, align 4
  br i1 %6, label %8, label %7

7:                                                ; preds = %2
  store i8 0, ptr %4, align 4
  br label %8

8:                                                ; preds = %7, %2
  %9 = icmp eq ptr %0, null
  br i1 %9, label %10, label %11, !prof !8

10:                                               ; preds = %8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1270, i32 noundef 9, ptr noundef null) #11
  br label %52

11:                                               ; preds = %8
  %12 = getelementptr inbounds %struct.dma_buf, ptr %0, i32 0, i32 3
  %13 = load ptr, ptr %12, align 4
  %14 = getelementptr inbounds %struct.dma_buf_ops, ptr %13, i32 0, i32 11
  %15 = load ptr, ptr %14, align 4
  %16 = icmp eq ptr %15, null
  br i1 %16, label %52, label %17

17:                                               ; preds = %11
  %18 = getelementptr inbounds %struct.dma_buf, ptr %0, i32 0, i32 4
  tail call void @mutex_lock(ptr noundef %18) #11
  %19 = getelementptr inbounds %struct.dma_buf, ptr %0, i32 0, i32 5
  %20 = load i32, ptr %19, align 4
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %30, label %22

22:                                               ; preds = %17
  %23 = add i32 %20, 1
  store i32 %23, ptr %19, align 4
  %24 = getelementptr inbounds %struct.dma_buf, ptr %0, i32 0, i32 6
  %25 = load ptr, ptr %24, align 4
  %26 = icmp eq ptr %25, null
  br i1 %26, label %27, label %28, !prof !8

27:                                               ; preds = %22
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/dma-buf/dma-buf.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1279, 0\0A.popsection", ""() #11, !srcloc !12
  unreachable

28:                                               ; preds = %22
  %29 = load i64, ptr %24, align 4
  br label %48

30:                                               ; preds = %17
  %31 = getelementptr inbounds %struct.dma_buf, ptr %0, i32 0, i32 6
  %32 = load ptr, ptr %31, align 4
  %33 = icmp eq ptr %32, null
  br i1 %33, label %35, label %34, !prof !10

34:                                               ; preds = %30
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/dma-buf/dma-buf.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1284, 0\0A.popsection", ""() #11, !srcloc !13
  unreachable

35:                                               ; preds = %30
  %36 = load ptr, ptr %12, align 4
  %37 = getelementptr inbounds %struct.dma_buf_ops, ptr %36, i32 0, i32 11
  %38 = load ptr, ptr %37, align 4
  %39 = call i32 %38(ptr noundef nonnull %0, ptr noundef nonnull %3) #11
  %40 = icmp ne i32 %39, 0
  %41 = load i1, ptr @dma_buf_vmap.__already_done, align 1
  %42 = xor i1 %41, true
  %43 = select i1 %40, i1 %42, i1 false
  br i1 %43, label %44, label %45, !prof !8

44:                                               ; preds = %35
  store i1 true, ptr @dma_buf_vmap.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1287, i32 noundef 9, ptr noundef null) #11
  br label %45

45:                                               ; preds = %44, %35
  br i1 %40, label %50, label %46

46:                                               ; preds = %45
  %47 = load i64, ptr %3, align 8
  store i64 %47, ptr %31, align 4
  store i32 1, ptr %19, align 4
  br label %48

48:                                               ; preds = %46, %28
  %49 = phi i64 [ %47, %46 ], [ %29, %28 ]
  store i64 %49, ptr %1, align 4
  br label %50

50:                                               ; preds = %48, %45
  %51 = phi i32 [ %39, %45 ], [ 0, %48 ]
  call void @mutex_unlock(ptr noundef %18) #11
  br label %52

52:                                               ; preds = %50, %11, %10
  %53 = phi i32 [ -22, %10 ], [ %51, %50 ], [ -22, %11 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #11
  ret i32 %53
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @dma_buf_vunmap(ptr noundef %0, ptr noundef %1) #0 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %4, label %5, !prof !8

4:                                                ; preds = %2
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1308, i32 noundef 9, ptr noundef null) #11
  br label %42

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.dma_buf, ptr %0, i32 0, i32 6
  %7 = load ptr, ptr %6, align 4
  %8 = icmp eq ptr %7, null
  br i1 %8, label %9, label %10, !prof !8

9:                                                ; preds = %5
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/dma-buf/dma-buf.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1311, 0\0A.popsection", ""() #11, !srcloc !14
  unreachable

10:                                               ; preds = %5
  %11 = getelementptr inbounds %struct.dma_buf, ptr %0, i32 0, i32 5
  %12 = load i32, ptr %11, align 4
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %15, !prof !8

14:                                               ; preds = %10
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/dma-buf/dma-buf.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1312, 0\0A.popsection", ""() #11, !srcloc !15
  unreachable

15:                                               ; preds = %10
  %16 = getelementptr inbounds %struct.dma_buf, ptr %0, i32 0, i32 6, i32 1
  %17 = load i8, ptr %16, align 4, !range !9
  %18 = getelementptr inbounds %struct.dma_buf_map, ptr %1, i32 0, i32 1
  %19 = load i8, ptr %18, align 4, !range !9
  %20 = icmp eq i8 %17, %19
  br i1 %20, label %21, label %24, !prof !16

21:                                               ; preds = %15
  %22 = load ptr, ptr %1, align 4
  %23 = icmp eq ptr %7, %22
  br i1 %23, label %25, label %24, !prof !10

24:                                               ; preds = %21, %15
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/dma-buf/dma-buf.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1313, 0\0A.popsection", ""() #11, !srcloc !17
  unreachable

25:                                               ; preds = %21
  %26 = getelementptr inbounds %struct.dma_buf, ptr %0, i32 0, i32 4
  tail call void @mutex_lock(ptr noundef %26) #11
  %27 = load i32, ptr %11, align 4
  %28 = add i32 %27, -1
  store i32 %28, ptr %11, align 4
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %30, label %41

30:                                               ; preds = %25
  %31 = getelementptr inbounds %struct.dma_buf, ptr %0, i32 0, i32 3
  %32 = load ptr, ptr %31, align 4
  %33 = getelementptr inbounds %struct.dma_buf_ops, ptr %32, i32 0, i32 12
  %34 = load ptr, ptr %33, align 4
  %35 = icmp eq ptr %34, null
  br i1 %35, label %37, label %36

36:                                               ; preds = %30
  tail call void %34(ptr noundef nonnull %0, ptr noundef %1) #11
  br label %37

37:                                               ; preds = %36, %30
  %38 = load i8, ptr %16, align 4, !range !9
  %39 = icmp eq i8 %38, 0
  store ptr null, ptr %6, align 4
  br i1 %39, label %41, label %40

40:                                               ; preds = %37
  store i8 0, ptr %16, align 4
  br label %41

41:                                               ; preds = %40, %37, %25
  tail call void @mutex_unlock(ptr noundef %26) #11
  br label %42

42:                                               ; preds = %41, %4
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @dma_buf_init() #4 section ".init.text" {
  %1 = tail call ptr @kern_mount(ptr noundef nonnull @dma_buf_fs_type) #11
  store ptr %1, ptr @dma_buf_mnt, align 4
  %2 = icmp ugt ptr %1, inttoptr (i32 -4096 to ptr)
  br i1 %2, label %3, label %5

3:                                                ; preds = %0
  %4 = ptrtoint ptr %1 to i32
  br label %13

5:                                                ; preds = %0
  tail call void @__mutex_init(ptr noundef getelementptr inbounds (%struct.dma_buf_list, ptr @db_list, i32 0, i32 1), ptr noundef nonnull @.str.11, ptr noundef nonnull @dma_buf_init.__key) #11
  store volatile ptr @db_list, ptr @db_list, align 4
  store ptr @db_list, ptr getelementptr inbounds (%struct.dma_buf_list, ptr @db_list, i32 0, i32 0, i32 1), align 4
  %6 = tail call ptr @debugfs_create_dir(ptr noundef nonnull @.str.14, ptr noundef null) #11
  %7 = icmp ugt ptr %6, inttoptr (i32 -4096 to ptr)
  br i1 %7, label %13, label %8

8:                                                ; preds = %5
  store ptr %6, ptr @dma_buf_debugfs_dir, align 4
  %9 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.15, i16 noundef zeroext 292, ptr noundef %6, ptr noundef null, ptr noundef nonnull @dma_buf_debug_fops) #11
  %10 = icmp ugt ptr %9, inttoptr (i32 -4096 to ptr)
  br i1 %10, label %11, label %13

11:                                               ; preds = %8
  %12 = load ptr, ptr @dma_buf_debugfs_dir, align 4
  tail call void @debugfs_remove(ptr noundef %12) #11
  store ptr null, ptr @dma_buf_debugfs_dir, align 4
  br label %13

13:                                               ; preds = %11, %8, %5, %3
  %14 = phi i32 [ %4, %3 ], [ 0, %5 ], [ 0, %8 ], [ 0, %11 ]
  ret i32 %14
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal void @dma_buf_deinit() #4 section ".exit.text" {
  %1 = load ptr, ptr @dma_buf_debugfs_dir, align 4
  tail call void @debugfs_remove(ptr noundef %1) #11
  %2 = load ptr, ptr @dma_buf_mnt, align 4
  tail call void @kern_unmount(ptr noundef %2) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kern_unmount(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @alloc_anon_inode(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @inode_set_bytes(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @alloc_file_pseudo(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @iput(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define internal i64 @dma_buf_llseek(ptr nocapture noundef readonly %0, i64 noundef %1, i32 noundef %2) #7 {
  %4 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 3
  %5 = load ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, @dma_buf_fops
  br i1 %6, label %7, label %17

7:                                                ; preds = %3
  switch i32 %2, label %17 [
    i32 2, label %8
    i32 0, label %13
  ]

8:                                                ; preds = %7
  %9 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 15
  %10 = load ptr, ptr %9, align 8
  %11 = load i32, ptr %10, align 4
  %12 = zext i32 %11 to i64
  br label %13

13:                                               ; preds = %8, %7
  %14 = phi i64 [ %12, %8 ], [ 0, %7 ]
  %15 = icmp eq i64 %1, 0
  %16 = select i1 %15, i64 %14, i64 -22
  br label %17

17:                                               ; preds = %13, %7, %3
  %18 = phi i64 [ -9, %3 ], [ -22, %7 ], [ %16, %13 ]
  ret i64 %18
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @dma_buf_poll(ptr noundef %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 15
  %4 = load ptr, ptr %3, align 8
  %5 = icmp eq ptr %4, null
  br i1 %5, label %100, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.dma_buf, ptr %4, i32 0, i32 13
  %8 = load ptr, ptr %7, align 4
  %9 = icmp eq ptr %8, null
  br i1 %9, label %100, label %10

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.dma_buf, ptr %4, i32 0, i32 14
  %12 = icmp eq ptr %1, null
  br i1 %12, label %13, label %15

13:                                               ; preds = %10
  %14 = tail call i32 @ww_mutex_lock(ptr noundef nonnull %8, ptr noundef null) #11
  br label %30

15:                                               ; preds = %10
  %16 = load ptr, ptr %1, align 4
  %17 = icmp ne ptr %16, null
  %18 = icmp ne ptr %11, null
  %19 = and i1 %18, %17
  br i1 %19, label %20, label %21

20:                                               ; preds = %15
  tail call void %16(ptr noundef %0, ptr noundef nonnull %11, ptr noundef nonnull %1) #11
  br label %21

21:                                               ; preds = %20, %15
  %22 = getelementptr inbounds %struct.poll_table_struct, ptr %1, i32 0, i32 1
  %23 = load i32, ptr %22, align 4
  %24 = and i32 %23, 5
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %100, label %26

26:                                               ; preds = %21
  %27 = tail call i32 @ww_mutex_lock(ptr noundef nonnull %8, ptr noundef null) #11
  %28 = and i32 %23, 4
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %64, label %30

30:                                               ; preds = %26, %13
  %31 = phi i32 [ -1, %13 ], [ %23, %26 ]
  %32 = phi i32 [ 5, %13 ], [ %24, %26 ]
  %33 = getelementptr inbounds %struct.dma_buf, ptr %4, i32 0, i32 16
  tail call void @_raw_spin_lock_irq(ptr noundef %11) #11
  %34 = getelementptr inbounds %struct.dma_buf, ptr %4, i32 0, i32 16, i32 2
  %35 = load i32, ptr %34, align 4
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %39, label %37

37:                                               ; preds = %30
  %38 = and i32 %31, 1
  br label %40

39:                                               ; preds = %30
  store i32 4, ptr %34, align 4
  br label %40

40:                                               ; preds = %39, %37
  %41 = phi i32 [ %38, %37 ], [ %32, %39 ]
  tail call void asm sideeffect "dmb ish", "~{memory}"() #11, !srcloc !18
  %42 = load i16, ptr %11, align 4
  %43 = add i16 %42, 1
  store i16 %43, ptr %11, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #11, !srcloc !19
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #11, !srcloc !20
  tail call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #11, !srcloc !21
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !22
  %44 = and i32 %41, 4
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %64, label %46

46:                                               ; preds = %40
  %47 = getelementptr inbounds %struct.dma_buf, ptr %4, i32 0, i32 1
  %48 = load ptr, ptr %47, align 4
  %49 = getelementptr inbounds %struct.file, ptr %48, i32 0, i32 6
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %49) #11, !srcloc !23
  %50 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %49, ptr %49, i32 1, ptr elementtype(i32) %49) #11, !srcloc !24
  %51 = tail call fastcc zeroext i1 @dma_buf_poll_add_cb(ptr noundef nonnull %8, i1 noundef zeroext true, ptr noundef %33)
  br i1 %51, label %62, label %52

52:                                               ; preds = %46
  %53 = getelementptr inbounds %struct.dma_buf, ptr %4, i32 0, i32 16, i32 1
  %54 = load ptr, ptr %53, align 4
  %55 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %54) #11
  %56 = load ptr, ptr %53, align 4
  %57 = load i32, ptr %34, align 4
  %58 = inttoptr i32 %57 to ptr
  tail call void @__wake_up_locked_key(ptr noundef %56, i32 noundef 3, ptr noundef %58) #11
  store i32 0, ptr %34, align 4
  %59 = load ptr, ptr %53, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %59, i32 noundef %55) #11
  %60 = getelementptr i8, ptr %54, i32 -80
  %61 = load ptr, ptr %60, align 4
  tail call void @fput(ptr noundef %61) #11
  br label %64

62:                                               ; preds = %46
  %63 = and i32 %41, 1
  br label %64

64:                                               ; preds = %62, %52, %40, %26
  %65 = phi i32 [ %24, %26 ], [ %63, %62 ], [ %41, %52 ], [ %41, %40 ]
  %66 = and i32 %65, 1
  %67 = icmp eq i32 %66, 0
  br i1 %67, label %98, label %68

68:                                               ; preds = %64
  %69 = getelementptr inbounds %struct.dma_buf, ptr %4, i32 0, i32 15
  tail call void @_raw_spin_lock_irq(ptr noundef %11) #11
  %70 = getelementptr inbounds %struct.dma_buf, ptr %4, i32 0, i32 15, i32 2
  %71 = load i32, ptr %70, align 4
  %72 = icmp eq i32 %71, 0
  br i1 %72, label %75, label %73

73:                                               ; preds = %68
  %74 = and i32 %65, -2
  br label %76

75:                                               ; preds = %68
  store i32 1, ptr %70, align 4
  br label %76

76:                                               ; preds = %75, %73
  %77 = phi i32 [ %65, %75 ], [ %74, %73 ]
  tail call void asm sideeffect "dmb ish", "~{memory}"() #11, !srcloc !18
  %78 = load i16, ptr %11, align 4
  %79 = add i16 %78, 1
  store i16 %79, ptr %11, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #11, !srcloc !19
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #11, !srcloc !20
  tail call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #11, !srcloc !21
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !22
  br i1 %72, label %80, label %98

80:                                               ; preds = %76
  %81 = getelementptr inbounds %struct.dma_buf, ptr %4, i32 0, i32 1
  %82 = load ptr, ptr %81, align 4
  %83 = getelementptr inbounds %struct.file, ptr %82, i32 0, i32 6
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %83) #11, !srcloc !23
  %84 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %83, ptr %83, i32 1, ptr elementtype(i32) %83) #11, !srcloc !24
  %85 = tail call fastcc zeroext i1 @dma_buf_poll_add_cb(ptr noundef nonnull %8, i1 noundef zeroext false, ptr noundef %69)
  br i1 %85, label %96, label %86

86:                                               ; preds = %80
  %87 = getelementptr inbounds %struct.dma_buf, ptr %4, i32 0, i32 15, i32 1
  %88 = load ptr, ptr %87, align 4
  %89 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %88) #11
  %90 = load ptr, ptr %87, align 4
  %91 = load i32, ptr %70, align 4
  %92 = inttoptr i32 %91 to ptr
  tail call void @__wake_up_locked_key(ptr noundef %90, i32 noundef 3, ptr noundef %92) #11
  store i32 0, ptr %70, align 4
  %93 = load ptr, ptr %87, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %93, i32 noundef %89) #11
  %94 = getelementptr i8, ptr %88, i32 -80
  %95 = load ptr, ptr %94, align 4
  tail call void @fput(ptr noundef %95) #11
  br label %98

96:                                               ; preds = %80
  %97 = and i32 %77, -2
  br label %98

98:                                               ; preds = %96, %86, %76, %64
  %99 = phi i32 [ %65, %64 ], [ %97, %96 ], [ %77, %86 ], [ %77, %76 ]
  tail call void @ww_mutex_unlock(ptr noundef nonnull %8) #11
  br label %100

100:                                              ; preds = %98, %21, %6, %2
  %101 = phi i32 [ %99, %98 ], [ 8, %6 ], [ 8, %2 ], [ 0, %21 ]
  ret i32 %101
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @dma_buf_ioctl(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = alloca %struct.dma_buf_sync, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #11
  store i64 0, ptr %4, align 8, !annotation !11
  %5 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 15
  %6 = load ptr, ptr %5, align 8
  switch i32 %1, label %51 [
    i32 1074291200, label %7
    i32 1074029057, label %39
    i32 1074291201, label %39
  ]

7:                                                ; preds = %3
  %8 = inttoptr i32 %2 to ptr
  %9 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %8, i32 8, i32 -1090519040) #14, !srcloc !25
  %10 = extractvalue { i32, i32 } %9, 0
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %20, !prof !10

12:                                               ; preds = %7
  %13 = tail call ptr @llvm.thread.pointer() #11
  %14 = getelementptr inbounds %struct.thread_info, ptr %13, i32 0, i32 3
  %15 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %14) #15, !srcloc !26
  %16 = and i32 %15, -13
  %17 = or i32 %16, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %17) #11, !srcloc !27
  tail call void asm sideeffect "isb ", "~{memory}"() #11, !srcloc !28
  %18 = call i32 @arm_copy_from_user(ptr noundef nonnull %4, ptr noundef %8, i32 noundef 8) #11
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %15) #11, !srcloc !27
  call void asm sideeffect "isb ", "~{memory}"() #11, !srcloc !28
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %24, label %20, !prof !10

20:                                               ; preds = %12, %7
  %21 = phi i32 [ %18, %12 ], [ 8, %7 ]
  %22 = sub i32 8, %21
  %23 = getelementptr i8, ptr %4, i32 %22
  call void @llvm.memset.p0.i32(ptr align 1 %23, i8 0, i32 %21, i1 false) #11
  br label %51

24:                                               ; preds = %12
  %25 = load i64, ptr %4, align 8
  %26 = icmp ult i64 %25, 8
  br i1 %26, label %27, label %51

27:                                               ; preds = %24
  %28 = trunc i64 %25 to i2
  switch i2 %28, label %51 [
    i2 1, label %31
    i2 -2, label %29
    i2 -1, label %30
  ]

29:                                               ; preds = %27
  br label %31

30:                                               ; preds = %27
  br label %31

31:                                               ; preds = %30, %29, %27
  %32 = phi i32 [ 0, %30 ], [ 1, %29 ], [ 2, %27 ]
  %33 = and i64 %25, 4
  %34 = icmp eq i64 %33, 0
  br i1 %34, label %37, label %35

35:                                               ; preds = %31
  %36 = call i32 @dma_buf_end_cpu_access(ptr noundef %6, i32 noundef %32)
  br label %51

37:                                               ; preds = %31
  %38 = call i32 @dma_buf_begin_cpu_access(ptr noundef %6, i32 noundef %32)
  br label %51

39:                                               ; preds = %3, %3
  %40 = inttoptr i32 %2 to ptr
  %41 = tail call ptr @strndup_user(ptr noundef %40, i32 noundef 32) #11
  %42 = icmp ugt ptr %41, inttoptr (i32 -4096 to ptr)
  br i1 %42, label %43, label %45

43:                                               ; preds = %39
  %44 = ptrtoint ptr %41 to i32
  br label %51

45:                                               ; preds = %39
  %46 = getelementptr inbounds %struct.dma_buf, ptr %6, i32 0, i32 9
  tail call void @_raw_spin_lock(ptr noundef %46) #11
  %47 = getelementptr inbounds %struct.dma_buf, ptr %6, i32 0, i32 8
  %48 = load ptr, ptr %47, align 4
  tail call void @kfree(ptr noundef %48) #11
  store ptr %41, ptr %47, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #11, !srcloc !18
  %49 = load i16, ptr %46, align 4
  %50 = add i16 %49, 1
  store i16 %50, ptr %46, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #11, !srcloc !19
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #11, !srcloc !20
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !29
  br label %51

51:                                               ; preds = %45, %43, %37, %35, %27, %24, %20, %3
  %52 = phi i32 [ -22, %24 ], [ -22, %27 ], [ %36, %35 ], [ %38, %37 ], [ -25, %3 ], [ %44, %43 ], [ 0, %45 ], [ -14, %20 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #11
  ret i32 %52
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @dma_buf_mmap_internal(ptr nocapture noundef readonly %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 3
  %4 = load ptr, ptr %3, align 4
  %5 = icmp eq ptr %4, @dma_buf_fops
  br i1 %5, label %6, label %28

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 15
  %8 = load ptr, ptr %7, align 8
  %9 = getelementptr inbounds %struct.dma_buf, ptr %8, i32 0, i32 3
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr inbounds %struct.dma_buf_ops, ptr %10, i32 0, i32 10
  %12 = load ptr, ptr %11, align 4
  %13 = icmp eq ptr %12, null
  br i1 %13, label %28, label %14

14:                                               ; preds = %6
  %15 = getelementptr inbounds %struct.vm_area_struct, ptr %1, i32 0, i32 13
  %16 = load i32, ptr %15, align 4
  %17 = getelementptr inbounds %struct.vm_area_struct, ptr %1, i32 0, i32 1
  %18 = load i32, ptr %17, align 4
  %19 = load i32, ptr %1, align 4
  %20 = sub i32 %18, %19
  %21 = lshr i32 %20, 12
  %22 = add i32 %21, %16
  %23 = load i32, ptr %8, align 4
  %24 = lshr i32 %23, 12
  %25 = icmp ugt i32 %22, %24
  br i1 %25, label %28, label %26

26:                                               ; preds = %14
  %27 = tail call i32 %12(ptr noundef %8, ptr noundef %1) #11
  br label %28

28:                                               ; preds = %26, %14, %6, %2
  %29 = phi i32 [ %27, %26 ], [ -22, %2 ], [ -22, %6 ], [ -22, %14 ]
  ret i32 %29
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @dma_buf_file_release(ptr nocapture noundef readnone %0, ptr nocapture noundef readonly %1) #0 {
  %3 = getelementptr inbounds %struct.file, ptr %1, i32 0, i32 3
  %4 = load ptr, ptr %3, align 4
  %5 = icmp eq ptr %4, @dma_buf_fops
  br i1 %5, label %6, label %14

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.file, ptr %1, i32 0, i32 15
  %8 = load ptr, ptr %7, align 8
  tail call void @mutex_lock(ptr noundef getelementptr inbounds (%struct.dma_buf_list, ptr @db_list, i32 0, i32 1)) #11
  %9 = getelementptr inbounds %struct.dma_buf, ptr %8, i32 0, i32 11
  %10 = getelementptr inbounds %struct.dma_buf, ptr %8, i32 0, i32 11, i32 1
  %11 = load ptr, ptr %10, align 4
  %12 = load ptr, ptr %9, align 4
  %13 = getelementptr inbounds %struct.list_head, ptr %12, i32 0, i32 1
  store ptr %11, ptr %13, align 4
  store volatile ptr %12, ptr %11, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %9, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %10, align 4
  tail call void @mutex_unlock(ptr noundef getelementptr inbounds (%struct.dma_buf_list, ptr @db_list, i32 0, i32 1)) #11
  br label %14

14:                                               ; preds = %6, %2
  %15 = phi i32 [ 0, %6 ], [ -22, %2 ]
  ret i32 %15
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @dma_buf_show_fdinfo(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = getelementptr inbounds %struct.file, ptr %1, i32 0, i32 15
  %4 = load ptr, ptr %3, align 8
  %5 = load i32, ptr %4, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.7, i32 noundef %5) #11
  %6 = getelementptr inbounds %struct.dma_buf, ptr %4, i32 0, i32 1
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.file, ptr %7, i32 0, i32 6
  %9 = load volatile i32, ptr %8, align 4
  %10 = add i32 %9, -1
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.8, i32 noundef %10) #11
  %11 = getelementptr inbounds %struct.dma_buf, ptr %4, i32 0, i32 7
  %12 = load ptr, ptr %11, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.9, ptr noundef %12) #11
  %13 = getelementptr inbounds %struct.dma_buf, ptr %4, i32 0, i32 9
  tail call void @_raw_spin_lock(ptr noundef %13) #11
  %14 = getelementptr inbounds %struct.dma_buf, ptr %4, i32 0, i32 8
  %15 = load ptr, ptr %14, align 4
  %16 = icmp eq ptr %15, null
  br i1 %16, label %18, label %17

17:                                               ; preds = %2
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.10, ptr noundef nonnull %15) #11
  br label %18

18:                                               ; preds = %17, %2
  tail call void asm sideeffect "dmb ish", "~{memory}"() #11, !srcloc !18
  %19 = load i16, ptr %13, align 4
  %20 = add i16 %19, 1
  store i16 %20, ptr %13, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #11, !srcloc !19
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #11, !srcloc !20
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !29
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc zeroext i1 @dma_buf_poll_add_cb(ptr noundef %0, i1 noundef zeroext %1, ptr noundef %2) unnamed_addr #0 {
  %4 = alloca %struct.dma_resv_iter, align 4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %4) #11
  %5 = getelementptr inbounds i8, ptr %4, i32 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(32) %5, i8 0, i32 28, i1 false), !annotation !11
  %6 = zext i1 %1 to i8
  store ptr %0, ptr %4, align 4
  %7 = getelementptr inbounds %struct.dma_resv_iter, ptr %4, i32 0, i32 1
  store i8 %6, ptr %7, align 4
  %8 = call ptr @dma_resv_iter_first(ptr noundef nonnull %4) #11
  %9 = icmp eq ptr %8, null
  br i1 %9, label %36, label %10

10:                                               ; preds = %33, %3
  %11 = phi ptr [ %34, %33 ], [ %8, %3 ]
  %12 = getelementptr inbounds %struct.dma_fence, ptr %11, i32 0, i32 6
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %12) #11, !srcloc !23
  %13 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %12, ptr %12, i32 1, ptr elementtype(i32) %12) #11, !srcloc !30
  %14 = extractvalue { i32, i32, i32 } %13, 0
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %20, label %16, !prof !8

16:                                               ; preds = %10
  %17 = add i32 %14, 1
  %18 = or i32 %17, %14
  %19 = icmp sgt i32 %18, -1
  br i1 %19, label %22, label %20, !prof !10

20:                                               ; preds = %16, %10
  %21 = phi i32 [ 2, %10 ], [ 1, %16 ]
  call void @refcount_warn_saturate(ptr noundef %12, i32 noundef %21) #11
  br label %22

22:                                               ; preds = %20, %16
  %23 = call i32 @dma_fence_add_callback(ptr noundef nonnull %11, ptr noundef %2, ptr noundef nonnull @dma_buf_poll_cb) #11
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %36, label %25

25:                                               ; preds = %22
  call void asm sideeffect "dmb ish", "~{memory}"() #11, !srcloc !31
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %12) #11, !srcloc !23
  %26 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %12, ptr %12, i32 1, ptr elementtype(i32) %12) #11, !srcloc !32
  %27 = extractvalue { i32, i32, i32 } %26, 0
  %28 = icmp eq i32 %27, 1
  br i1 %28, label %32, label %29

29:                                               ; preds = %25
  %30 = icmp sgt i32 %27, 0
  br i1 %30, label %33, label %31, !prof !10

31:                                               ; preds = %29
  call void @refcount_warn_saturate(ptr noundef %12, i32 noundef 3) #11
  br label %33

32:                                               ; preds = %25
  call void asm sideeffect "dmb ish", "~{memory}"() #11, !srcloc !33
  call void @dma_fence_release(ptr noundef %12) #11
  br label %33

33:                                               ; preds = %32, %31, %29
  %34 = call ptr @dma_resv_iter_next(ptr noundef nonnull %4) #11
  %35 = icmp eq ptr %34, null
  br i1 %35, label %36, label %10

36:                                               ; preds = %33, %22, %3
  %37 = phi i1 [ false, %3 ], [ %24, %33 ], [ %24, %22 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %4) #11
  ret i1 %37
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @dma_buf_poll_cb(ptr noundef %0, ptr nocapture noundef %1) #0 {
  %3 = getelementptr inbounds %struct.dma_buf_poll_cb_t, ptr %1, i32 0, i32 1
  %4 = load ptr, ptr %3, align 4
  %5 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %4) #11
  %6 = load ptr, ptr %3, align 4
  %7 = getelementptr inbounds %struct.dma_buf_poll_cb_t, ptr %1, i32 0, i32 2
  %8 = load i32, ptr %7, align 4
  %9 = inttoptr i32 %8 to ptr
  tail call void @__wake_up_locked_key(ptr noundef %6, i32 noundef 3, ptr noundef %9) #11
  store i32 0, ptr %7, align 4
  %10 = load ptr, ptr %3, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %10, i32 noundef %5) #11
  %11 = icmp eq ptr %0, null
  br i1 %11, label %21, label %12

12:                                               ; preds = %2
  %13 = getelementptr inbounds %struct.dma_fence, ptr %0, i32 0, i32 6
  tail call void asm sideeffect "dmb ish", "~{memory}"() #11, !srcloc !31
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %13) #11, !srcloc !23
  %14 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %13, ptr %13, i32 1, ptr elementtype(i32) %13) #11, !srcloc !32
  %15 = extractvalue { i32, i32, i32 } %14, 0
  %16 = icmp eq i32 %15, 1
  br i1 %16, label %20, label %17

17:                                               ; preds = %12
  %18 = icmp sgt i32 %15, 0
  br i1 %18, label %21, label %19, !prof !10

19:                                               ; preds = %17
  tail call void @refcount_warn_saturate(ptr noundef %13, i32 noundef 3) #11
  br label %21

20:                                               ; preds = %12
  tail call void asm sideeffect "dmb ish", "~{memory}"() #11, !srcloc !33
  tail call void @dma_fence_release(ptr noundef %13) #11
  br label %21

21:                                               ; preds = %20, %19, %17, %2
  %22 = getelementptr i8, ptr %4, i32 -80
  %23 = load ptr, ptr %22, align 4
  tail call void @fput(ptr noundef %23) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_irq(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dma_resv_iter_first(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_fence_add_callback(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dma_resv_iter_next(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_fence_release(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up_locked_key(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_from_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.thread.pointer() #8

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @strndup_user(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ww_mutex_lock(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ww_mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_resv_wait_timeout(ptr noundef, i1 noundef zeroext, i1 noundef zeroext, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kern_mount(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @dma_buf_fs_init_context(ptr noundef %0) #0 {
  %2 = tail call ptr @init_pseudo(ptr noundef %0, i32 noundef 1145913666) #11
  %3 = icmp eq ptr %2, null
  br i1 %3, label %6, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.pseudo_fs_context, ptr %2, i32 0, i32 2
  store ptr @dma_buf_dentry_ops, ptr %5, align 4
  br label %6

6:                                                ; preds = %4, %1
  %7 = phi i32 [ 0, %4 ], [ -12, %1 ]
  ret i32 %7
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kill_anon_super(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @init_pseudo(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @dma_buf_release(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.dentry, ptr %0, i32 0, i32 11
  %3 = load ptr, ptr %2, align 4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %39, label %5, !prof !8

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.dma_buf, ptr %3, i32 0, i32 5
  %7 = load i32, ptr %6, align 4
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %10, label %9, !prof !10

9:                                                ; preds = %5
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/dma-buf/dma-buf.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 67, 0\0A.popsection", ""() #11, !srcloc !34
  unreachable

10:                                               ; preds = %5
  %11 = getelementptr inbounds %struct.dma_buf, ptr %3, i32 0, i32 15, i32 2
  %12 = load i32, ptr %11, align 4
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %18, !prof !10

14:                                               ; preds = %10
  %15 = getelementptr inbounds %struct.dma_buf, ptr %3, i32 0, i32 16, i32 2
  %16 = load i32, ptr %15, align 4
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %19, label %18, !prof !10

18:                                               ; preds = %14, %10
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/dma-buf/dma-buf.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 74, 0\0A.popsection", ""() #11, !srcloc !35
  unreachable

19:                                               ; preds = %14
  %20 = getelementptr inbounds %struct.dma_buf, ptr %3, i32 0, i32 3
  %21 = load ptr, ptr %20, align 4
  %22 = getelementptr inbounds %struct.dma_buf_ops, ptr %21, i32 0, i32 7
  %23 = load ptr, ptr %22, align 4
  tail call void %23(ptr noundef nonnull %3) #11
  %24 = getelementptr inbounds %struct.dma_buf, ptr %3, i32 0, i32 13
  %25 = load ptr, ptr %24, align 4
  %26 = getelementptr %struct.dma_buf, ptr %3, i32 1
  %27 = icmp eq ptr %25, %26
  br i1 %27, label %28, label %29

28:                                               ; preds = %19
  tail call void @dma_resv_fini(ptr noundef %25) #11
  br label %29

29:                                               ; preds = %28, %19
  %30 = getelementptr inbounds %struct.dma_buf, ptr %3, i32 0, i32 2
  %31 = load volatile ptr, ptr %30, align 4
  %32 = icmp eq ptr %31, %30
  br i1 %32, label %34, label %33, !prof !10

33:                                               ; preds = %29
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 82, i32 noundef 9, ptr noundef null) #11
  br label %34

34:                                               ; preds = %33, %29
  %35 = getelementptr inbounds %struct.dma_buf, ptr %3, i32 0, i32 10
  %36 = load ptr, ptr %35, align 4
  tail call void @module_put(ptr noundef %36) #11
  %37 = getelementptr inbounds %struct.dma_buf, ptr %3, i32 0, i32 8
  %38 = load ptr, ptr %37, align 4
  tail call void @kfree(ptr noundef %38) #11
  tail call void @kfree(ptr noundef nonnull %3) #11
  br label %39

39:                                               ; preds = %34, %1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal ptr @dmabuffs_dname(ptr noundef %0, ptr noundef %1, i32 noundef %2) #0 {
  %4 = alloca [32 x i8], align 1
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %4) #11
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(32) %4, i8 0, i32 32, i1 false), !annotation !11
  %5 = getelementptr inbounds %struct.dentry, ptr %0, i32 0, i32 11
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.dma_buf, ptr %6, i32 0, i32 9
  tail call void @_raw_spin_lock(ptr noundef %7) #11
  %8 = getelementptr inbounds %struct.dma_buf, ptr %6, i32 0, i32 8
  %9 = load ptr, ptr %8, align 4
  %10 = icmp eq ptr %9, null
  br i1 %10, label %15, label %11

11:                                               ; preds = %3
  %12 = call i32 @strlcpy(ptr noundef nonnull %4, ptr noundef nonnull %9, i32 noundef 32) #11
  %13 = icmp eq i32 %12, 0
  %14 = select i1 %13, ptr @.str.13, ptr %4
  br label %15

15:                                               ; preds = %11, %3
  %16 = phi ptr [ %14, %11 ], [ @.str.13, %3 ]
  call void asm sideeffect "dmb ish", "~{memory}"() #11, !srcloc !18
  %17 = load i16, ptr %7, align 4
  %18 = add i16 %17, 1
  store i16 %18, ptr %7, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #11, !srcloc !19
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #11, !srcloc !20
  call void asm sideeffect "", "~{memory}"() #11, !srcloc !29
  %19 = getelementptr inbounds %struct.dentry, ptr %0, i32 0, i32 4, i32 1
  %20 = load ptr, ptr %19, align 8
  %21 = call ptr (ptr, ptr, i32, ptr, ...) @dynamic_dname(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef nonnull @.str.12, ptr noundef %20, ptr noundef %16) #11
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %4) #11
  ret ptr %21
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_resv_fini(ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree null_pointer_is_valid
declare dso_local i32 @strlcpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #9

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dynamic_dname(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @debugfs_create_dir(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @debugfs_create_file(ptr noundef, i16 noundef zeroext, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @debugfs_remove(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @seq_lseek(ptr noundef, i64 noundef, i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @seq_read(ptr noundef, ptr noundef, i32 noundef, ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @dma_buf_debug_open(ptr nocapture noundef readonly %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 47
  %4 = load ptr, ptr %3, align 4
  %5 = tail call i32 @single_open(ptr noundef %1, ptr noundef nonnull @dma_buf_debug_show, ptr noundef %4) #11
  ret i32 %5
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @single_release(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @single_open(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @dma_buf_debug_show(ptr noundef %0, ptr nocapture noundef readnone %1) #0 {
  %3 = tail call i32 @mutex_lock_interruptible(ptr noundef getelementptr inbounds (%struct.dma_buf_list, ptr @db_list, i32 0, i32 1)) #11
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %72

5:                                                ; preds = %2
  tail call void @seq_puts(ptr noundef %0, ptr noundef nonnull @.str.16) #11
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.18, ptr noundef nonnull @.str.19, ptr noundef nonnull @.str.20, ptr noundef nonnull @.str.21, ptr noundef nonnull @.str.22) #11
  %6 = load ptr, ptr @db_list, align 4
  %7 = icmp eq ptr %6, @db_list
  br i1 %7, label %67, label %8

8:                                                ; preds = %59, %5
  %9 = phi ptr [ %65, %59 ], [ %6, %5 ]
  %10 = phi i32 [ %62, %59 ], [ 0, %5 ]
  %11 = phi i32 [ %64, %59 ], [ 0, %5 ]
  %12 = getelementptr i8, ptr %9, i32 -68
  %13 = getelementptr i8, ptr %9, i32 12
  %14 = load ptr, ptr %13, align 4
  %15 = tail call i32 @ww_mutex_lock_interruptible(ptr noundef %14, ptr noundef null) #11
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %70

17:                                               ; preds = %8
  %18 = getelementptr i8, ptr %9, i32 -8
  tail call void @_raw_spin_lock(ptr noundef %18) #11
  %19 = load i32, ptr %12, align 4
  %20 = getelementptr i8, ptr %9, i32 -64
  %21 = load ptr, ptr %20, align 4
  %22 = getelementptr inbounds %struct.file, ptr %21, i32 0, i32 7
  %23 = load i32, ptr %22, align 4
  %24 = getelementptr inbounds %struct.file, ptr %21, i32 0, i32 8
  %25 = load i32, ptr %24, align 8
  %26 = getelementptr inbounds %struct.file, ptr %21, i32 0, i32 6
  %27 = load volatile i32, ptr %26, align 4
  %28 = getelementptr i8, ptr %9, i32 -16
  %29 = load ptr, ptr %28, align 4
  %30 = getelementptr inbounds %struct.file, ptr %21, i32 0, i32 2
  %31 = load ptr, ptr %30, align 8
  %32 = getelementptr inbounds %struct.inode, ptr %31, i32 0, i32 10
  %33 = load i32, ptr %32, align 4
  %34 = getelementptr i8, ptr %9, i32 -12
  %35 = load ptr, ptr %34, align 4
  %36 = icmp eq ptr %35, null
  %37 = select i1 %36, ptr @.str.13, ptr %35
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.23, i32 noundef %19, i32 noundef %23, i32 noundef %25, i32 noundef %27, ptr noundef %29, i32 noundef %33, ptr noundef %37) #11
  tail call void asm sideeffect "dmb ish", "~{memory}"() #11, !srcloc !18
  %38 = load i16, ptr %18, align 4
  %39 = add i16 %38, 1
  store i16 %39, ptr %18, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #11, !srcloc !19
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #11, !srcloc !20
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !29
  %40 = load ptr, ptr %13, align 4
  tail call void @dma_resv_describe(ptr noundef %40, ptr noundef %0) #11
  tail call void @seq_puts(ptr noundef %0, ptr noundef nonnull @.str.24) #11
  %41 = getelementptr i8, ptr %9, i32 -60
  %42 = load ptr, ptr %41, align 4
  %43 = icmp eq ptr %42, %41
  br i1 %43, label %59, label %44

44:                                               ; preds = %54, %17
  %45 = phi ptr [ %57, %54 ], [ %42, %17 ]
  %46 = phi i32 [ %56, %54 ], [ 0, %17 ]
  %47 = getelementptr i8, ptr %45, i32 -4
  %48 = load ptr, ptr %47, align 4
  %49 = getelementptr inbounds %struct.device, ptr %48, i32 0, i32 3
  %50 = load ptr, ptr %49, align 4
  %51 = icmp eq ptr %50, null
  br i1 %51, label %52, label %54

52:                                               ; preds = %44
  %53 = load ptr, ptr %48, align 4
  br label %54

54:                                               ; preds = %52, %44
  %55 = phi ptr [ %53, %52 ], [ %50, %44 ]
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.25, ptr noundef %55) #11
  %56 = add i32 %46, 1
  %57 = load ptr, ptr %45, align 4
  %58 = icmp eq ptr %57, %41
  br i1 %58, label %59, label %44

59:                                               ; preds = %54, %17
  %60 = phi i32 [ 0, %17 ], [ %56, %54 ]
  %61 = load ptr, ptr %13, align 4
  tail call void @ww_mutex_unlock(ptr noundef %61) #11
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.26, i32 noundef %60) #11
  %62 = add i32 %10, 1
  %63 = load i32, ptr %12, align 4
  %64 = add i32 %63, %11
  %65 = load ptr, ptr %9, align 4
  %66 = icmp eq ptr %65, @db_list
  br i1 %66, label %67, label %8

67:                                               ; preds = %59, %5
  %68 = phi i32 [ 0, %5 ], [ %64, %59 ]
  %69 = phi i32 [ 0, %5 ], [ %62, %59 ]
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.27, i32 noundef %69, i32 noundef %68) #11
  br label %70

70:                                               ; preds = %67, %8
  %71 = phi i32 [ 0, %67 ], [ %15, %8 ]
  tail call void @mutex_unlock(ptr noundef getelementptr inbounds (%struct.dma_buf_list, ptr @db_list, i32 0, i32 1)) #11
  br label %72

72:                                               ; preds = %70, %2
  %73 = phi i32 [ %3, %2 ], [ %71, %70 ]
  ret i32 %73
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mutex_lock_interruptible(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_puts(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_resv_describe(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ww_mutex_lock_interruptible(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #10

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { argmemonly nofree nounwind willreturn writeonly }
attributes #4 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { null_pointer_is_valid allocsize(0) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #9 = { nofree null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #11 = { nounwind }
attributes #12 = { nounwind allocsize(0) }
attributes #13 = { nounwind allocsize(2) }
attributes #14 = { nounwind readnone }
attributes #15 = { nounwind readonly }

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
!9 = !{i8 0, i8 2}
!10 = !{!"branch_weights", i32 2000, i32 1}
!11 = !{!"auto-init"}
!12 = !{i64 2152932970, i64 2152933461, i64 2152933007, i64 2152933063, i64 2152933097, i64 2152933121, i64 2152933162, i64 2152933183, i64 2152933211, i64 2152933245}
!13 = !{i64 2152934057, i64 2152934548, i64 2152934094, i64 2152934150, i64 2152934184, i64 2152934208, i64 2152934249, i64 2152934270, i64 2152934298, i64 2152934332}
!14 = !{i64 2152937763, i64 2152938254, i64 2152937800, i64 2152937856, i64 2152937890, i64 2152937914, i64 2152937955, i64 2152937976, i64 2152938004, i64 2152938038}
!15 = !{i64 2152942895, i64 2152943386, i64 2152942932, i64 2152942988, i64 2152943022, i64 2152943046, i64 2152943087, i64 2152943108, i64 2152943136, i64 2152943170}
!16 = !{!"branch_weights", i32 2146410443, i32 1073205}
!17 = !{i64 2152943998, i64 2152944489, i64 2152944035, i64 2152944091, i64 2152944125, i64 2152944149, i64 2152944190, i64 2152944211, i64 2152944239, i64 2152944273}
!18 = !{i64 2149034707}
!19 = !{i64 2149030531}
!20 = !{i64 2149030606, i64 2149030633, i64 2149030680, i64 2149030702, i64 2149030730, i64 2149030750}
!21 = !{i64 772026}
!22 = !{i64 2149058851}
!23 = !{i64 866103, i64 2148356074, i64 2148356100, i64 2148356147, i64 2148356169, i64 2148356197, i64 2148356217}
!24 = !{i64 2148367489, i64 2148367515, i64 2148367544, i64 2148367578, i64 2148367609, i64 2148367632}
!25 = !{i64 2150999762, i64 2150999787}
!26 = !{i64 3495874}
!27 = !{i64 3496071}
!28 = !{i64 2150981350}
!29 = !{i64 2149057710}
!30 = !{i64 2148368947, i64 2148368979, i64 2148369008, i64 2148369042, i64 2148369073, i64 2148369096}
!31 = !{i64 2148469169}
!32 = !{i64 2148371304, i64 2148371336, i64 2148371365, i64 2148371399, i64 2148371430, i64 2148371453}
!33 = !{i64 2149794683}
!34 = !{i64 2152886343, i64 2152886832, i64 2152886380, i64 2152886436, i64 2152886470, i64 2152886494, i64 2152886535, i64 2152886556, i64 2152886584, i64 2152886618}
!35 = !{i64 2152887440, i64 2152887929, i64 2152887477, i64 2152887533, i64 2152887567, i64 2152887591, i64 2152887632, i64 2152887653, i64 2152887681, i64 2152887715}
