; ModuleID = '/llk/IR/drivers/virtio/virtio_ring.c_pt.bc'
source_filename = "../drivers/virtio/virtio_ring.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_virtio_max_dma_size:\09\09\09\09\09"
module asm "\09.asciz \09\22virtio_max_dma_size\22\09\09\09\09\09"
module asm "__kstrtabns_virtio_max_dma_size:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_virtqueue_add_sgs:\09\09\09\09\09"
module asm "\09.asciz \09\22virtqueue_add_sgs\22\09\09\09\09\09"
module asm "__kstrtabns_virtqueue_add_sgs:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_virtqueue_add_outbuf:\09\09\09\09\09"
module asm "\09.asciz \09\22virtqueue_add_outbuf\22\09\09\09\09\09"
module asm "__kstrtabns_virtqueue_add_outbuf:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_virtqueue_add_inbuf:\09\09\09\09\09"
module asm "\09.asciz \09\22virtqueue_add_inbuf\22\09\09\09\09\09"
module asm "__kstrtabns_virtqueue_add_inbuf:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_virtqueue_add_inbuf_ctx:\09\09\09\09\09"
module asm "\09.asciz \09\22virtqueue_add_inbuf_ctx\22\09\09\09\09\09"
module asm "__kstrtabns_virtqueue_add_inbuf_ctx:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_virtqueue_kick_prepare:\09\09\09\09\09"
module asm "\09.asciz \09\22virtqueue_kick_prepare\22\09\09\09\09\09"
module asm "__kstrtabns_virtqueue_kick_prepare:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_virtqueue_notify:\09\09\09\09\09"
module asm "\09.asciz \09\22virtqueue_notify\22\09\09\09\09\09"
module asm "__kstrtabns_virtqueue_notify:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_virtqueue_kick:\09\09\09\09\09"
module asm "\09.asciz \09\22virtqueue_kick\22\09\09\09\09\09"
module asm "__kstrtabns_virtqueue_kick:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_virtqueue_get_buf_ctx:\09\09\09\09\09"
module asm "\09.asciz \09\22virtqueue_get_buf_ctx\22\09\09\09\09\09"
module asm "__kstrtabns_virtqueue_get_buf_ctx:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_virtqueue_get_buf:\09\09\09\09\09"
module asm "\09.asciz \09\22virtqueue_get_buf\22\09\09\09\09\09"
module asm "__kstrtabns_virtqueue_get_buf:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_virtqueue_disable_cb:\09\09\09\09\09"
module asm "\09.asciz \09\22virtqueue_disable_cb\22\09\09\09\09\09"
module asm "__kstrtabns_virtqueue_disable_cb:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_virtqueue_enable_cb_prepare:\09\09\09\09\09"
module asm "\09.asciz \09\22virtqueue_enable_cb_prepare\22\09\09\09\09\09"
module asm "__kstrtabns_virtqueue_enable_cb_prepare:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_virtqueue_poll:\09\09\09\09\09"
module asm "\09.asciz \09\22virtqueue_poll\22\09\09\09\09\09"
module asm "__kstrtabns_virtqueue_poll:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_virtqueue_enable_cb:\09\09\09\09\09"
module asm "\09.asciz \09\22virtqueue_enable_cb\22\09\09\09\09\09"
module asm "__kstrtabns_virtqueue_enable_cb:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_virtqueue_enable_cb_delayed:\09\09\09\09\09"
module asm "\09.asciz \09\22virtqueue_enable_cb_delayed\22\09\09\09\09\09"
module asm "__kstrtabns_virtqueue_enable_cb_delayed:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_virtqueue_detach_unused_buf:\09\09\09\09\09"
module asm "\09.asciz \09\22virtqueue_detach_unused_buf\22\09\09\09\09\09"
module asm "__kstrtabns_virtqueue_detach_unused_buf:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_vring_interrupt:\09\09\09\09\09"
module asm "\09.asciz \09\22vring_interrupt\22\09\09\09\09\09"
module asm "__kstrtabns_vring_interrupt:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___vring_new_virtqueue:\09\09\09\09\09"
module asm "\09.asciz \09\22__vring_new_virtqueue\22\09\09\09\09\09"
module asm "__kstrtabns___vring_new_virtqueue:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_vring_create_virtqueue:\09\09\09\09\09"
module asm "\09.asciz \09\22vring_create_virtqueue\22\09\09\09\09\09"
module asm "__kstrtabns_vring_create_virtqueue:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_vring_new_virtqueue:\09\09\09\09\09"
module asm "\09.asciz \09\22vring_new_virtqueue\22\09\09\09\09\09"
module asm "__kstrtabns_vring_new_virtqueue:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_vring_del_virtqueue:\09\09\09\09\09"
module asm "\09.asciz \09\22vring_del_virtqueue\22\09\09\09\09\09"
module asm "__kstrtabns_vring_del_virtqueue:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_vring_transport_features:\09\09\09\09\09"
module asm "\09.asciz \09\22vring_transport_features\22\09\09\09\09\09"
module asm "__kstrtabns_vring_transport_features:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_virtqueue_get_vring_size:\09\09\09\09\09"
module asm "\09.asciz \09\22virtqueue_get_vring_size\22\09\09\09\09\09"
module asm "__kstrtabns_virtqueue_get_vring_size:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_virtqueue_is_broken:\09\09\09\09\09"
module asm "\09.asciz \09\22virtqueue_is_broken\22\09\09\09\09\09"
module asm "__kstrtabns_virtqueue_is_broken:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_virtio_break_device:\09\09\09\09\09"
module asm "\09.asciz \09\22virtio_break_device\22\09\09\09\09\09"
module asm "__kstrtabns_virtio_break_device:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_virtqueue_get_desc_addr:\09\09\09\09\09"
module asm "\09.asciz \09\22virtqueue_get_desc_addr\22\09\09\09\09\09"
module asm "__kstrtabns_virtqueue_get_desc_addr:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_virtqueue_get_avail_addr:\09\09\09\09\09"
module asm "\09.asciz \09\22virtqueue_get_avail_addr\22\09\09\09\09\09"
module asm "__kstrtabns_virtqueue_get_avail_addr:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_virtqueue_get_used_addr:\09\09\09\09\09"
module asm "\09.asciz \09\22virtqueue_get_used_addr\22\09\09\09\09\09"
module asm "__kstrtabns_virtqueue_get_used_addr:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_virtqueue_get_vring:\09\09\09\09\09"
module asm "\09.asciz \09\22virtqueue_get_vring\22\09\09\09\09\09"
module asm "__kstrtabns_virtqueue_get_vring:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.virtio_device = type { i32, i8, i8, i8, %struct.spinlock, %struct.spinlock, %struct.device, %struct.virtio_device_id, ptr, ptr, %struct.list_head, i64, ptr }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
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
%struct.virtio_device_id = type { i32, i32 }
%struct.list_head = type { ptr, ptr }
%struct.vring_virtqueue = type { %struct.virtqueue, i8, i8, i8, i8, i8, i8, i32, i32, i16, i8, %union.anon.65, ptr, i8 }
%struct.virtqueue = type { %struct.list_head, ptr, ptr, ptr, i32, i32, ptr }
%union.anon.65 = type { %struct.anon.67 }
%struct.anon.67 = type { %struct.anon.68, i8, i8, i16, i16, i16, ptr, ptr, i32, i32, i32, i32, i32 }
%struct.anon.68 = type { i32, ptr, ptr, ptr }
%struct.scatterlist = type { i32, i32, i32, i32, i32 }
%struct.vring_packed_desc = type { i64, i32, i16, i16 }
%struct.vring_desc_extra = type { i32, i32, i16, i16 }
%struct.vring_desc_state_packed = type { ptr, ptr, i16, i16 }
%struct.vring_desc = type { i64, i32, i16, i16 }
%struct.vring_desc_state_split = type { ptr, ptr }
%struct.vring_avail = type { i16, i16, [0 x i16] }
%struct.vring_used = type { i16, i16, [0 x %struct.vring_used_elem] }
%struct.vring_used_elem = type { i32, i32 }
%struct.vring_packed_desc_event = type { i16, i16 }
%struct.page = type { i32, %union.anon.1, %union.anon.58, %struct.atomic_t }
%union.anon.1 = type { %struct.anon }
%struct.anon = type { %struct.list_head, ptr, i32, i32 }
%union.anon.58 = type { %struct.atomic_t }

@__kstrtab_virtio_max_dma_size = external dso_local constant [0 x i8], align 1
@__kstrtabns_virtio_max_dma_size = external dso_local constant [0 x i8], align 1
@__ksymtab_virtio_max_dma_size = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @virtio_max_dma_size to i32), ptr @__kstrtab_virtio_max_dma_size, ptr @__kstrtabns_virtio_max_dma_size }, section "___ksymtab_gpl+virtio_max_dma_size", align 4
@__kstrtab_virtqueue_add_sgs = external dso_local constant [0 x i8], align 1
@__kstrtabns_virtqueue_add_sgs = external dso_local constant [0 x i8], align 1
@__ksymtab_virtqueue_add_sgs = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @virtqueue_add_sgs to i32), ptr @__kstrtab_virtqueue_add_sgs, ptr @__kstrtabns_virtqueue_add_sgs }, section "___ksymtab_gpl+virtqueue_add_sgs", align 4
@__kstrtab_virtqueue_add_outbuf = external dso_local constant [0 x i8], align 1
@__kstrtabns_virtqueue_add_outbuf = external dso_local constant [0 x i8], align 1
@__ksymtab_virtqueue_add_outbuf = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @virtqueue_add_outbuf to i32), ptr @__kstrtab_virtqueue_add_outbuf, ptr @__kstrtabns_virtqueue_add_outbuf }, section "___ksymtab_gpl+virtqueue_add_outbuf", align 4
@__kstrtab_virtqueue_add_inbuf = external dso_local constant [0 x i8], align 1
@__kstrtabns_virtqueue_add_inbuf = external dso_local constant [0 x i8], align 1
@__ksymtab_virtqueue_add_inbuf = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @virtqueue_add_inbuf to i32), ptr @__kstrtab_virtqueue_add_inbuf, ptr @__kstrtabns_virtqueue_add_inbuf }, section "___ksymtab_gpl+virtqueue_add_inbuf", align 4
@__kstrtab_virtqueue_add_inbuf_ctx = external dso_local constant [0 x i8], align 1
@__kstrtabns_virtqueue_add_inbuf_ctx = external dso_local constant [0 x i8], align 1
@__ksymtab_virtqueue_add_inbuf_ctx = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @virtqueue_add_inbuf_ctx to i32), ptr @__kstrtab_virtqueue_add_inbuf_ctx, ptr @__kstrtabns_virtqueue_add_inbuf_ctx }, section "___ksymtab_gpl+virtqueue_add_inbuf_ctx", align 4
@__kstrtab_virtqueue_kick_prepare = external dso_local constant [0 x i8], align 1
@__kstrtabns_virtqueue_kick_prepare = external dso_local constant [0 x i8], align 1
@__ksymtab_virtqueue_kick_prepare = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @virtqueue_kick_prepare to i32), ptr @__kstrtab_virtqueue_kick_prepare, ptr @__kstrtabns_virtqueue_kick_prepare }, section "___ksymtab_gpl+virtqueue_kick_prepare", align 4
@__kstrtab_virtqueue_notify = external dso_local constant [0 x i8], align 1
@__kstrtabns_virtqueue_notify = external dso_local constant [0 x i8], align 1
@__ksymtab_virtqueue_notify = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @virtqueue_notify to i32), ptr @__kstrtab_virtqueue_notify, ptr @__kstrtabns_virtqueue_notify }, section "___ksymtab_gpl+virtqueue_notify", align 4
@__kstrtab_virtqueue_kick = external dso_local constant [0 x i8], align 1
@__kstrtabns_virtqueue_kick = external dso_local constant [0 x i8], align 1
@__ksymtab_virtqueue_kick = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @virtqueue_kick to i32), ptr @__kstrtab_virtqueue_kick, ptr @__kstrtabns_virtqueue_kick }, section "___ksymtab_gpl+virtqueue_kick", align 4
@__kstrtab_virtqueue_get_buf_ctx = external dso_local constant [0 x i8], align 1
@__kstrtabns_virtqueue_get_buf_ctx = external dso_local constant [0 x i8], align 1
@__ksymtab_virtqueue_get_buf_ctx = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @virtqueue_get_buf_ctx to i32), ptr @__kstrtab_virtqueue_get_buf_ctx, ptr @__kstrtabns_virtqueue_get_buf_ctx }, section "___ksymtab_gpl+virtqueue_get_buf_ctx", align 4
@__kstrtab_virtqueue_get_buf = external dso_local constant [0 x i8], align 1
@__kstrtabns_virtqueue_get_buf = external dso_local constant [0 x i8], align 1
@__ksymtab_virtqueue_get_buf = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @virtqueue_get_buf to i32), ptr @__kstrtab_virtqueue_get_buf, ptr @__kstrtabns_virtqueue_get_buf }, section "___ksymtab_gpl+virtqueue_get_buf", align 4
@__kstrtab_virtqueue_disable_cb = external dso_local constant [0 x i8], align 1
@__kstrtabns_virtqueue_disable_cb = external dso_local constant [0 x i8], align 1
@__ksymtab_virtqueue_disable_cb = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @virtqueue_disable_cb to i32), ptr @__kstrtab_virtqueue_disable_cb, ptr @__kstrtabns_virtqueue_disable_cb }, section "___ksymtab_gpl+virtqueue_disable_cb", align 4
@__kstrtab_virtqueue_enable_cb_prepare = external dso_local constant [0 x i8], align 1
@__kstrtabns_virtqueue_enable_cb_prepare = external dso_local constant [0 x i8], align 1
@__ksymtab_virtqueue_enable_cb_prepare = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @virtqueue_enable_cb_prepare to i32), ptr @__kstrtab_virtqueue_enable_cb_prepare, ptr @__kstrtabns_virtqueue_enable_cb_prepare }, section "___ksymtab_gpl+virtqueue_enable_cb_prepare", align 4
@__kstrtab_virtqueue_poll = external dso_local constant [0 x i8], align 1
@__kstrtabns_virtqueue_poll = external dso_local constant [0 x i8], align 1
@__ksymtab_virtqueue_poll = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @virtqueue_poll to i32), ptr @__kstrtab_virtqueue_poll, ptr @__kstrtabns_virtqueue_poll }, section "___ksymtab_gpl+virtqueue_poll", align 4
@__kstrtab_virtqueue_enable_cb = external dso_local constant [0 x i8], align 1
@__kstrtabns_virtqueue_enable_cb = external dso_local constant [0 x i8], align 1
@__ksymtab_virtqueue_enable_cb = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @virtqueue_enable_cb to i32), ptr @__kstrtab_virtqueue_enable_cb, ptr @__kstrtabns_virtqueue_enable_cb }, section "___ksymtab_gpl+virtqueue_enable_cb", align 4
@__kstrtab_virtqueue_enable_cb_delayed = external dso_local constant [0 x i8], align 1
@__kstrtabns_virtqueue_enable_cb_delayed = external dso_local constant [0 x i8], align 1
@__ksymtab_virtqueue_enable_cb_delayed = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @virtqueue_enable_cb_delayed to i32), ptr @__kstrtab_virtqueue_enable_cb_delayed, ptr @__kstrtabns_virtqueue_enable_cb_delayed }, section "___ksymtab_gpl+virtqueue_enable_cb_delayed", align 4
@__kstrtab_virtqueue_detach_unused_buf = external dso_local constant [0 x i8], align 1
@__kstrtabns_virtqueue_detach_unused_buf = external dso_local constant [0 x i8], align 1
@__ksymtab_virtqueue_detach_unused_buf = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @virtqueue_detach_unused_buf to i32), ptr @__kstrtab_virtqueue_detach_unused_buf, ptr @__kstrtabns_virtqueue_detach_unused_buf }, section "___ksymtab_gpl+virtqueue_detach_unused_buf", align 4
@__kstrtab_vring_interrupt = external dso_local constant [0 x i8], align 1
@__kstrtabns_vring_interrupt = external dso_local constant [0 x i8], align 1
@__ksymtab_vring_interrupt = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @vring_interrupt to i32), ptr @__kstrtab_vring_interrupt, ptr @__kstrtabns_vring_interrupt }, section "___ksymtab_gpl+vring_interrupt", align 4
@__kstrtab___vring_new_virtqueue = external dso_local constant [0 x i8], align 1
@__kstrtabns___vring_new_virtqueue = external dso_local constant [0 x i8], align 1
@__ksymtab___vring_new_virtqueue = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__vring_new_virtqueue to i32), ptr @__kstrtab___vring_new_virtqueue, ptr @__kstrtabns___vring_new_virtqueue }, section "___ksymtab_gpl+__vring_new_virtqueue", align 4
@__kstrtab_vring_create_virtqueue = external dso_local constant [0 x i8], align 1
@__kstrtabns_vring_create_virtqueue = external dso_local constant [0 x i8], align 1
@__ksymtab_vring_create_virtqueue = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @vring_create_virtqueue to i32), ptr @__kstrtab_vring_create_virtqueue, ptr @__kstrtabns_vring_create_virtqueue }, section "___ksymtab_gpl+vring_create_virtqueue", align 4
@__kstrtab_vring_new_virtqueue = external dso_local constant [0 x i8], align 1
@__kstrtabns_vring_new_virtqueue = external dso_local constant [0 x i8], align 1
@__ksymtab_vring_new_virtqueue = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @vring_new_virtqueue to i32), ptr @__kstrtab_vring_new_virtqueue, ptr @__kstrtabns_vring_new_virtqueue }, section "___ksymtab_gpl+vring_new_virtqueue", align 4
@__kstrtab_vring_del_virtqueue = external dso_local constant [0 x i8], align 1
@__kstrtabns_vring_del_virtqueue = external dso_local constant [0 x i8], align 1
@__ksymtab_vring_del_virtqueue = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @vring_del_virtqueue to i32), ptr @__kstrtab_vring_del_virtqueue, ptr @__kstrtabns_vring_del_virtqueue }, section "___ksymtab_gpl+vring_del_virtqueue", align 4
@__kstrtab_vring_transport_features = external dso_local constant [0 x i8], align 1
@__kstrtabns_vring_transport_features = external dso_local constant [0 x i8], align 1
@__ksymtab_vring_transport_features = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @vring_transport_features to i32), ptr @__kstrtab_vring_transport_features, ptr @__kstrtabns_vring_transport_features }, section "___ksymtab_gpl+vring_transport_features", align 4
@__kstrtab_virtqueue_get_vring_size = external dso_local constant [0 x i8], align 1
@__kstrtabns_virtqueue_get_vring_size = external dso_local constant [0 x i8], align 1
@__ksymtab_virtqueue_get_vring_size = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @virtqueue_get_vring_size to i32), ptr @__kstrtab_virtqueue_get_vring_size, ptr @__kstrtabns_virtqueue_get_vring_size }, section "___ksymtab_gpl+virtqueue_get_vring_size", align 4
@__kstrtab_virtqueue_is_broken = external dso_local constant [0 x i8], align 1
@__kstrtabns_virtqueue_is_broken = external dso_local constant [0 x i8], align 1
@__ksymtab_virtqueue_is_broken = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @virtqueue_is_broken to i32), ptr @__kstrtab_virtqueue_is_broken, ptr @__kstrtabns_virtqueue_is_broken }, section "___ksymtab_gpl+virtqueue_is_broken", align 4
@__kstrtab_virtio_break_device = external dso_local constant [0 x i8], align 1
@__kstrtabns_virtio_break_device = external dso_local constant [0 x i8], align 1
@__ksymtab_virtio_break_device = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @virtio_break_device to i32), ptr @__kstrtab_virtio_break_device, ptr @__kstrtabns_virtio_break_device }, section "___ksymtab_gpl+virtio_break_device", align 4
@__kstrtab_virtqueue_get_desc_addr = external dso_local constant [0 x i8], align 1
@__kstrtabns_virtqueue_get_desc_addr = external dso_local constant [0 x i8], align 1
@__ksymtab_virtqueue_get_desc_addr = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @virtqueue_get_desc_addr to i32), ptr @__kstrtab_virtqueue_get_desc_addr, ptr @__kstrtabns_virtqueue_get_desc_addr }, section "___ksymtab_gpl+virtqueue_get_desc_addr", align 4
@__kstrtab_virtqueue_get_avail_addr = external dso_local constant [0 x i8], align 1
@__kstrtabns_virtqueue_get_avail_addr = external dso_local constant [0 x i8], align 1
@__ksymtab_virtqueue_get_avail_addr = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @virtqueue_get_avail_addr to i32), ptr @__kstrtab_virtqueue_get_avail_addr, ptr @__kstrtabns_virtqueue_get_avail_addr }, section "___ksymtab_gpl+virtqueue_get_avail_addr", align 4
@__kstrtab_virtqueue_get_used_addr = external dso_local constant [0 x i8], align 1
@__kstrtabns_virtqueue_get_used_addr = external dso_local constant [0 x i8], align 1
@__ksymtab_virtqueue_get_used_addr = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @virtqueue_get_used_addr to i32), ptr @__kstrtab_virtqueue_get_used_addr, ptr @__kstrtabns_virtqueue_get_used_addr }, section "___ksymtab_gpl+virtqueue_get_used_addr", align 4
@__kstrtab_virtqueue_get_vring = external dso_local constant [0 x i8], align 1
@__kstrtabns_virtqueue_get_vring = external dso_local constant [0 x i8], align 1
@__ksymtab_virtqueue_get_vring = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @virtqueue_get_vring to i32), ptr @__kstrtab_virtqueue_get_vring, ptr @__kstrtabns_virtqueue_get_vring }, section "___ksymtab_gpl+virtqueue_get_vring", align 4
@__UNIQUE_ID_file233 = internal constant [44 x i8] c"virtio_ring.file=drivers/virtio/virtio_ring\00", section ".modinfo", align 1
@__UNIQUE_ID_license234 = internal constant [24 x i8] c"virtio_ring.license=GPL\00", section ".modinfo", align 1
@virtqueue_add_packed.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str = private unnamed_addr constant [29 x i8] c"drivers/virtio/virtio_ring.c\00", align 1
@dma_map_single_attrs.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.1 = private unnamed_addr constant [28 x i8] c"include/linux/dma-mapping.h\00", align 1
@.str.2 = private unnamed_addr constant [44 x i8] c"%s %s: rejecting DMA map of vmalloc memory\0A\00", align 1
@mem_map = external dso_local local_unnamed_addr global ptr, align 4
@__pv_phys_pfn_offset = external dso_local local_unnamed_addr global i32, align 4
@virtqueue_add_split.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.3 = private unnamed_addr constant [23 x i8] c"%s:id %u out of range\0A\00", align 1
@.str.4 = private unnamed_addr constant [25 x i8] c"%s:id %u is not a head!\0A\00", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@.str.5 = private unnamed_addr constant [25 x i8] c"Bad virtqueue length %u\0A\00", align 1
@llvm.compiler.used = appending global [31 x ptr] [ptr @__UNIQUE_ID_file233, ptr @__UNIQUE_ID_license234, ptr @__ksymtab___vring_new_virtqueue, ptr @__ksymtab_virtio_break_device, ptr @__ksymtab_virtio_max_dma_size, ptr @__ksymtab_virtqueue_add_inbuf, ptr @__ksymtab_virtqueue_add_inbuf_ctx, ptr @__ksymtab_virtqueue_add_outbuf, ptr @__ksymtab_virtqueue_add_sgs, ptr @__ksymtab_virtqueue_detach_unused_buf, ptr @__ksymtab_virtqueue_disable_cb, ptr @__ksymtab_virtqueue_enable_cb, ptr @__ksymtab_virtqueue_enable_cb_delayed, ptr @__ksymtab_virtqueue_enable_cb_prepare, ptr @__ksymtab_virtqueue_get_avail_addr, ptr @__ksymtab_virtqueue_get_buf, ptr @__ksymtab_virtqueue_get_buf_ctx, ptr @__ksymtab_virtqueue_get_desc_addr, ptr @__ksymtab_virtqueue_get_used_addr, ptr @__ksymtab_virtqueue_get_vring, ptr @__ksymtab_virtqueue_get_vring_size, ptr @__ksymtab_virtqueue_is_broken, ptr @__ksymtab_virtqueue_kick, ptr @__ksymtab_virtqueue_kick_prepare, ptr @__ksymtab_virtqueue_notify, ptr @__ksymtab_virtqueue_poll, ptr @__ksymtab_vring_create_virtqueue, ptr @__ksymtab_vring_del_virtqueue, ptr @__ksymtab_vring_interrupt, ptr @__ksymtab_vring_new_virtqueue, ptr @__ksymtab_vring_transport_features], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @virtio_max_dma_size(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.virtio_device, ptr %0, i32 0, i32 11
  %3 = load i64, ptr %2, align 8
  %4 = and i64 %3, 8589934592
  %5 = icmp eq i64 %4, 0
  br i1 %5, label %10, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.virtio_device, ptr %0, i32 0, i32 6, i32 1
  %8 = load ptr, ptr %7, align 4
  %9 = tail call i32 @dma_max_mapping_size(ptr noundef %8) #14
  br label %10

10:                                               ; preds = %6, %1
  %11 = phi i32 [ %9, %6 ], [ -1, %1 ]
  ret i32 %11
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_max_mapping_size(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @virtqueue_add_sgs(ptr noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2, i32 noundef %3, ptr noundef %4, i32 noundef %5) #0 {
  %7 = add i32 %3, %2
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %25, label %9

9:                                                ; preds = %21, %6
  %10 = phi i32 [ %22, %21 ], [ 0, %6 ]
  %11 = phi i32 [ %23, %21 ], [ 0, %6 ]
  %12 = getelementptr ptr, ptr %1, i32 %11
  %13 = load ptr, ptr %12, align 4
  %14 = icmp eq ptr %13, null
  br i1 %14, label %21, label %15

15:                                               ; preds = %15, %9
  %16 = phi ptr [ %19, %15 ], [ %13, %9 ]
  %17 = phi i32 [ %18, %15 ], [ %10, %9 ]
  %18 = add i32 %17, 1
  %19 = tail call ptr @sg_next(ptr noundef nonnull %16) #14
  %20 = icmp eq ptr %19, null
  br i1 %20, label %21, label %15

21:                                               ; preds = %15, %9
  %22 = phi i32 [ %10, %9 ], [ %18, %15 ]
  %23 = add nuw i32 %11, 1
  %24 = icmp eq i32 %23, %7
  br i1 %24, label %25, label %9

25:                                               ; preds = %21, %6
  %26 = phi i32 [ 0, %6 ], [ %22, %21 ]
  %27 = tail call fastcc i32 @virtqueue_add(ptr noundef %0, ptr noundef %1, i32 noundef %26, i32 noundef %2, i32 noundef %3, ptr noundef %4, ptr noundef null, i32 noundef %5)
  ret i32 %27
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @sg_next(ptr noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @virtqueue_add(ptr noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, ptr noundef %5, ptr noundef %6, i32 noundef %7) unnamed_addr #3 {
  %9 = getelementptr inbounds %struct.vring_virtqueue, ptr %0, i32 0, i32 1
  %10 = load i8, ptr %9, align 4, !range !8
  %11 = icmp eq i8 %10, 0
  %12 = icmp eq ptr %5, null
  br i1 %11, label %451, label %13

13:                                               ; preds = %8
  br i1 %12, label %14, label %15, !prof !9

14:                                               ; preds = %13
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/virtio/virtio_ring.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1185, 0\0A.popsection", ""() #14, !srcloc !10
  unreachable

15:                                               ; preds = %13
  %16 = icmp eq ptr %6, null
  br i1 %16, label %22, label %17

17:                                               ; preds = %15
  %18 = getelementptr inbounds %struct.vring_virtqueue, ptr %0, i32 0, i32 5
  %19 = load i8, ptr %18, align 4, !range !8
  %20 = icmp eq i8 %19, 0
  br i1 %20, label %22, label %21, !prof !11

21:                                               ; preds = %17
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/virtio/virtio_ring.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1186, 0\0A.popsection", ""() #14, !srcloc !12
  unreachable

22:                                               ; preds = %17, %15
  %23 = getelementptr inbounds %struct.vring_virtqueue, ptr %0, i32 0, i32 4
  %24 = load i8, ptr %23, align 1, !range !8
  %25 = icmp eq i8 %24, 0
  br i1 %25, label %26, label %830, !prof !11

26:                                               ; preds = %22
  %27 = icmp eq i32 %2, 0
  br i1 %27, label %28, label %29, !prof !9

28:                                               ; preds = %26
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/virtio/virtio_ring.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1195, 0\0A.popsection", ""() #14, !srcloc !13
  unreachable

29:                                               ; preds = %26
  %30 = getelementptr inbounds %struct.vring_virtqueue, ptr %0, i32 0, i32 5
  %31 = load i8, ptr %30, align 4, !range !8
  %32 = icmp ne i8 %31, 0
  %33 = icmp ne i32 %2, 1
  %34 = and i1 %33, %32
  br i1 %34, label %35, label %232

35:                                               ; preds = %29
  %36 = getelementptr inbounds %struct.virtqueue, ptr %0, i32 0, i32 5
  %37 = load i32, ptr %36, align 4
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %232, label %39

39:                                               ; preds = %35
  %40 = getelementptr inbounds %struct.vring_virtqueue, ptr %0, i32 0, i32 11
  %41 = getelementptr inbounds %struct.vring_virtqueue, ptr %0, i32 0, i32 11, i32 0, i32 4
  %42 = load i16, ptr %41, align 4
  %43 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %2, i32 16) #14
  %44 = extractvalue { i32, i1 } %43, 1
  br i1 %44, label %232, label %45, !prof !9

45:                                               ; preds = %39
  %46 = extractvalue { i32, i1 } %43, 0
  %47 = and i32 %7, -3
  %48 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %46, i32 noundef %47) #15
  %49 = icmp eq ptr %48, null
  br i1 %49, label %232, label %50

50:                                               ; preds = %45
  %51 = load i32, ptr %36, align 4
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %53, label %54, !prof !9

53:                                               ; preds = %50
  tail call void @kfree(ptr noundef nonnull %48) #14
  br label %830

54:                                               ; preds = %50
  %55 = getelementptr inbounds %struct.vring_virtqueue, ptr %0, i32 0, i32 7
  %56 = load i32, ptr %55, align 4
  %57 = trunc i32 %56 to i16
  %58 = and i32 %56, 65535
  %59 = load i32, ptr %40, align 4
  %60 = icmp eq i32 %58, %59
  br i1 %60, label %67, label %61, !prof !9

61:                                               ; preds = %54
  %62 = add i32 %4, %3
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %127, label %64

64:                                               ; preds = %61
  %65 = getelementptr inbounds %struct.vring_virtqueue, ptr %0, i32 0, i32 2
  %66 = getelementptr inbounds %struct.virtqueue, ptr %0, i32 0, i32 3
  br label %68

67:                                               ; preds = %54
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/virtio/virtio_ring.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1080, 0\0A.popsection", ""() #14, !srcloc !14
  unreachable

68:                                               ; preds = %123, %64
  %69 = phi i32 [ 0, %64 ], [ %125, %123 ]
  %70 = phi i32 [ 0, %64 ], [ %124, %123 ]
  %71 = getelementptr ptr, ptr %1, i32 %69
  %72 = load ptr, ptr %71, align 4
  %73 = icmp eq ptr %72, null
  br i1 %73, label %123, label %74

74:                                               ; preds = %68
  %75 = icmp ult i32 %69, %3
  %76 = select i1 %75, i32 1, i32 2
  %77 = select i1 %75, i16 0, i16 2
  br label %78

78:                                               ; preds = %112, %74
  %79 = phi i32 [ %70, %74 ], [ %120, %112 ]
  %80 = phi ptr [ %72, %74 ], [ %121, %112 ]
  %81 = load i8, ptr %65, align 1, !range !8
  %82 = icmp eq i8 %81, 0
  br i1 %82, label %83, label %96

83:                                               ; preds = %78
  %84 = load i32, ptr %80, align 4
  %85 = and i32 %84, 33554428
  %86 = load ptr, ptr @mem_map, align 4
  %87 = ptrtoint ptr %86 to i32
  %88 = sub i32 %85, %87
  %89 = lshr exact i32 %88, 5
  %90 = load i32, ptr @__pv_phys_pfn_offset, align 4
  %91 = add i32 %89, %90
  %92 = shl i32 %91, 12
  %93 = getelementptr inbounds %struct.scatterlist, ptr %80, i32 0, i32 1
  %94 = load i32, ptr %93, align 4
  %95 = add i32 %92, %94
  br label %112

96:                                               ; preds = %78
  %97 = load ptr, ptr %66, align 4
  %98 = getelementptr inbounds %struct.virtio_device, ptr %97, i32 0, i32 6, i32 1
  %99 = load ptr, ptr %98, align 4
  %100 = load i32, ptr %80, align 4
  %101 = and i32 %100, -4
  %102 = inttoptr i32 %101 to ptr
  %103 = getelementptr inbounds %struct.scatterlist, ptr %80, i32 0, i32 1
  %104 = load i32, ptr %103, align 4
  %105 = getelementptr inbounds %struct.scatterlist, ptr %80, i32 0, i32 2
  %106 = load i32, ptr %105, align 4
  %107 = tail call i32 @dma_map_page_attrs(ptr noundef %99, ptr noundef %102, i32 noundef %104, i32 noundef %106, i32 noundef %76, i32 noundef 0) #14
  %108 = load i8, ptr %65, align 1, !range !8
  %109 = icmp eq i8 %108, 0
  %110 = icmp ne i32 %107, -1
  %111 = select i1 %109, i1 true, i1 %110
  br i1 %111, label %112, label %202

112:                                              ; preds = %96, %83
  %113 = phi i32 [ %95, %83 ], [ %107, %96 ]
  %114 = getelementptr %struct.vring_packed_desc, ptr %48, i32 %79
  %115 = getelementptr %struct.vring_packed_desc, ptr %48, i32 %79, i32 3
  store i16 %77, ptr %115, align 2
  %116 = zext i32 %113 to i64
  store i64 %116, ptr %114, align 16
  %117 = getelementptr inbounds %struct.scatterlist, ptr %80, i32 0, i32 2
  %118 = load i32, ptr %117, align 4
  %119 = getelementptr %struct.vring_packed_desc, ptr %48, i32 %79, i32 1
  store i32 %118, ptr %119, align 8
  %120 = add i32 %79, 1
  %121 = tail call ptr @sg_next(ptr noundef nonnull %80) #14
  %122 = icmp eq ptr %121, null
  br i1 %122, label %123, label %78

123:                                              ; preds = %112, %68
  %124 = phi i32 [ %70, %68 ], [ %120, %112 ]
  %125 = add nuw i32 %69, 1
  %126 = icmp eq i32 %125, %62
  br i1 %126, label %127, label %68

127:                                              ; preds = %123, %61
  %128 = phi i32 [ 0, %61 ], [ %124, %123 ]
  %129 = shl i32 %2, 4
  %130 = tail call fastcc i32 @vring_map_single(ptr noundef %0, ptr noundef nonnull %48, i32 noundef %129) #14
  %131 = getelementptr inbounds %struct.vring_virtqueue, ptr %0, i32 0, i32 2
  %132 = load i8, ptr %131, align 1, !range !8
  %133 = icmp eq i8 %132, 0
  %134 = icmp ne i32 %130, -1
  %135 = select i1 %133, i1 true, i1 %134
  br i1 %135, label %136, label %202

136:                                              ; preds = %127
  %137 = zext i32 %130 to i64
  %138 = getelementptr inbounds %struct.vring_virtqueue, ptr %0, i32 0, i32 11, i32 0, i32 0, i32 1
  %139 = load ptr, ptr %138, align 4
  %140 = zext i16 %42 to i32
  %141 = getelementptr %struct.vring_packed_desc, ptr %139, i32 %140
  store i64 %137, ptr %141, align 8
  %142 = load ptr, ptr %138, align 4
  %143 = getelementptr %struct.vring_packed_desc, ptr %142, i32 %140, i32 1
  store i32 %129, ptr %143, align 8
  %144 = load ptr, ptr %138, align 4
  %145 = getelementptr %struct.vring_packed_desc, ptr %144, i32 %140, i32 2
  store i16 %57, ptr %145, align 4
  %146 = load i8, ptr %131, align 1, !range !8
  %147 = icmp eq i8 %146, 0
  br i1 %147, label %159, label %148

148:                                              ; preds = %136
  %149 = getelementptr inbounds %struct.vring_virtqueue, ptr %0, i32 0, i32 11, i32 0, i32 7
  %150 = load ptr, ptr %149, align 4
  %151 = getelementptr %struct.vring_desc_extra, ptr %150, i32 %58
  store i32 %130, ptr %151, align 4
  %152 = load ptr, ptr %149, align 4
  %153 = getelementptr %struct.vring_desc_extra, ptr %152, i32 %58, i32 1
  store i32 %129, ptr %153, align 4
  %154 = getelementptr inbounds %struct.vring_virtqueue, ptr %0, i32 0, i32 11, i32 0, i32 3
  %155 = load i16, ptr %154, align 2
  %156 = or i16 %155, 4
  %157 = load ptr, ptr %149, align 4
  %158 = getelementptr %struct.vring_desc_extra, ptr %157, i32 %58, i32 2
  store i16 %156, ptr %158, align 4
  br label %159

159:                                              ; preds = %148, %136
  %160 = getelementptr inbounds %struct.vring_virtqueue, ptr %0, i32 0, i32 3
  %161 = load i8, ptr %160, align 2, !range !8
  %162 = icmp eq i8 %161, 0
  br i1 %162, label %164, label %163

163:                                              ; preds = %159
  tail call void asm sideeffect "dmb ishst", "~{memory}"() #14, !srcloc !15
  br label %165

164:                                              ; preds = %159
  tail call void asm sideeffect "dmb oshst", "~{memory}"() #14, !srcloc !16
  br label %165

165:                                              ; preds = %164, %163
  %166 = getelementptr inbounds %struct.vring_virtqueue, ptr %0, i32 0, i32 11, i32 0, i32 3
  %167 = load i16, ptr %166, align 2
  %168 = or i16 %167, 4
  %169 = load ptr, ptr %138, align 4
  %170 = getelementptr %struct.vring_packed_desc, ptr %169, i32 %140, i32 3
  store i16 %168, ptr %170, align 2
  %171 = load i32, ptr %36, align 4
  %172 = add i32 %171, -1
  store i32 %172, ptr %36, align 4
  %173 = add nuw nsw i32 %140, 1
  %174 = load i32, ptr %40, align 4
  %175 = icmp ult i32 %173, %174
  br i1 %175, label %182, label %176

176:                                              ; preds = %165
  %177 = getelementptr inbounds %struct.vring_virtqueue, ptr %0, i32 0, i32 11, i32 0, i32 1
  %178 = load i8, ptr %177, align 4, !range !8
  %179 = xor i8 %178, 1
  store i8 %179, ptr %177, align 4
  %180 = load i16, ptr %166, align 2
  %181 = xor i16 %180, -32640
  store i16 %181, ptr %166, align 2
  br label %182

182:                                              ; preds = %176, %165
  %183 = phi i32 [ 0, %176 ], [ %173, %165 ]
  %184 = trunc i32 %183 to i16
  store i16 %184, ptr %41, align 4
  %185 = getelementptr inbounds %struct.vring_virtqueue, ptr %0, i32 0, i32 11, i32 0, i32 7
  %186 = load ptr, ptr %185, align 4
  %187 = getelementptr %struct.vring_desc_extra, ptr %186, i32 %58, i32 3
  %188 = load i16, ptr %187, align 2
  %189 = zext i16 %188 to i32
  store i32 %189, ptr %55, align 4
  %190 = getelementptr inbounds %struct.vring_virtqueue, ptr %0, i32 0, i32 11, i32 0, i32 6
  %191 = load ptr, ptr %190, align 4
  %192 = getelementptr %struct.vring_desc_state_packed, ptr %191, i32 %58, i32 2
  store i16 1, ptr %192, align 4
  %193 = load ptr, ptr %190, align 4
  %194 = getelementptr %struct.vring_desc_state_packed, ptr %193, i32 %58
  store ptr %5, ptr %194, align 4
  %195 = load ptr, ptr %190, align 4
  %196 = getelementptr %struct.vring_desc_state_packed, ptr %195, i32 %58, i32 1
  store ptr %48, ptr %196, align 4
  %197 = load ptr, ptr %190, align 4
  %198 = getelementptr %struct.vring_desc_state_packed, ptr %197, i32 %58, i32 3
  store i16 %57, ptr %198, align 2
  %199 = getelementptr inbounds %struct.vring_virtqueue, ptr %0, i32 0, i32 8
  %200 = load i32, ptr %199, align 4
  %201 = add i32 %200, 1
  store i32 %201, ptr %199, align 4
  br label %830

202:                                              ; preds = %127, %96
  %203 = phi i32 [ %128, %127 ], [ %79, %96 ]
  %204 = icmp eq i32 %203, 0
  br i1 %204, label %231, label %205

205:                                              ; preds = %202
  %206 = getelementptr inbounds %struct.vring_virtqueue, ptr %0, i32 0, i32 2
  %207 = getelementptr inbounds %struct.virtqueue, ptr %0, i32 0, i32 3
  br label %208

208:                                              ; preds = %229, %205
  %209 = phi i8 [ 1, %205 ], [ %230, %229 ]
  %210 = phi i32 [ 0, %205 ], [ %227, %229 ]
  %211 = icmp eq i8 %209, 0
  br i1 %211, label %226, label %212

212:                                              ; preds = %208
  %213 = getelementptr %struct.vring_packed_desc, ptr %48, i32 %210
  %214 = getelementptr %struct.vring_packed_desc, ptr %48, i32 %210, i32 3
  %215 = load i16, ptr %214, align 2
  %216 = load ptr, ptr %207, align 4
  %217 = getelementptr inbounds %struct.virtio_device, ptr %216, i32 0, i32 6, i32 1
  %218 = load ptr, ptr %217, align 4
  %219 = load i64, ptr %213, align 16
  %220 = trunc i64 %219 to i32
  %221 = getelementptr %struct.vring_packed_desc, ptr %48, i32 %210, i32 1
  %222 = load i32, ptr %221, align 8
  %223 = and i16 %215, 2
  %224 = icmp eq i16 %223, 0
  %225 = select i1 %224, i32 1, i32 2
  tail call void @dma_unmap_page_attrs(ptr noundef %218, i32 noundef %220, i32 noundef %222, i32 noundef %225, i32 noundef 0) #14
  br label %226

226:                                              ; preds = %212, %208
  %227 = add nuw i32 %210, 1
  %228 = icmp eq i32 %227, %203
  br i1 %228, label %231, label %229

229:                                              ; preds = %226
  %230 = load i8, ptr %206, align 1, !range !8
  br label %208

231:                                              ; preds = %226, %202
  tail call void @kfree(ptr noundef nonnull %48) #14
  br label %232

232:                                              ; preds = %231, %45, %39, %35, %29
  %233 = getelementptr inbounds %struct.vring_virtqueue, ptr %0, i32 0, i32 11
  %234 = getelementptr inbounds %struct.vring_virtqueue, ptr %0, i32 0, i32 11, i32 0, i32 4
  %235 = load i16, ptr %234, align 4
  %236 = getelementptr inbounds %struct.vring_virtqueue, ptr %0, i32 0, i32 11, i32 0, i32 3
  %237 = load i16, ptr %236, align 2
  %238 = load i32, ptr %233, align 4
  %239 = icmp ult i32 %238, %2
  br i1 %239, label %240, label %247

240:                                              ; preds = %232
  %241 = load i8, ptr %30, align 4, !range !8
  %242 = icmp eq i8 %241, 0
  %243 = load i1, ptr @virtqueue_add_packed.__already_done, align 1
  %244 = xor i1 %243, true
  %245 = select i1 %242, i1 %244, i1 false
  br i1 %245, label %246, label %247, !prof !9

246:                                              ; preds = %240
  store i1 true, ptr @virtqueue_add_packed.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1211, i32 noundef 9, ptr noundef null) #14
  br label %247

247:                                              ; preds = %246, %240, %232
  %248 = getelementptr inbounds %struct.vring_virtqueue, ptr %0, i32 0, i32 11, i32 0, i32 0, i32 1
  %249 = load ptr, ptr %248, align 4
  %250 = zext i16 %235 to i32
  %251 = getelementptr inbounds %struct.virtqueue, ptr %0, i32 0, i32 5
  %252 = load i32, ptr %251, align 4
  %253 = icmp ult i32 %252, %2
  br i1 %253, label %830, label %254, !prof !9

254:                                              ; preds = %247
  %255 = getelementptr inbounds %struct.vring_virtqueue, ptr %0, i32 0, i32 7
  %256 = load i32, ptr %255, align 4
  %257 = trunc i32 %256 to i16
  %258 = and i32 %256, 65535
  %259 = load i32, ptr %233, align 4
  %260 = icmp eq i32 %258, %259
  br i1 %260, label %268, label %261, !prof !9

261:                                              ; preds = %254
  %262 = add i32 %4, %3
  %263 = icmp eq i32 %262, 0
  br i1 %263, label %381, label %264

264:                                              ; preds = %261
  %265 = getelementptr inbounds %struct.vring_virtqueue, ptr %0, i32 0, i32 2
  %266 = getelementptr inbounds %struct.virtqueue, ptr %0, i32 0, i32 3
  %267 = getelementptr inbounds %struct.vring_virtqueue, ptr %0, i32 0, i32 11, i32 0, i32 7
  br label %269

268:                                              ; preds = %254
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/virtio/virtio_ring.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1225, 0\0A.popsection", ""() #14, !srcloc !17
  unreachable

269:                                              ; preds = %367, %264
  %270 = phi i16 [ %257, %264 ], [ %372, %367 ]
  %271 = phi i16 [ 0, %264 ], [ %371, %367 ]
  %272 = phi i16 [ 0, %264 ], [ %370, %367 ]
  %273 = phi i32 [ 0, %264 ], [ %369, %367 ]
  %274 = phi i32 [ 0, %264 ], [ %373, %367 ]
  %275 = phi i32 [ %250, %264 ], [ %368, %367 ]
  %276 = getelementptr ptr, ptr %1, i32 %274
  %277 = load ptr, ptr %276, align 4
  %278 = icmp eq ptr %277, null
  br i1 %278, label %367, label %279

279:                                              ; preds = %269
  %280 = icmp ult i32 %274, %3
  %281 = select i1 %280, i32 1, i32 2
  %282 = select i1 %280, i16 0, i16 2
  br label %283

283:                                              ; preds = %363, %279
  %284 = phi ptr [ %277, %279 ], [ %365, %363 ]
  %285 = phi i16 [ %270, %279 ], [ %356, %363 ]
  %286 = phi i16 [ %272, %279 ], [ %332, %363 ]
  %287 = phi i32 [ %273, %279 ], [ %323, %363 ]
  %288 = phi i32 [ %275, %279 ], [ %364, %363 ]
  %289 = load i8, ptr %265, align 1, !range !8
  %290 = icmp eq i8 %289, 0
  br i1 %290, label %291, label %304

291:                                              ; preds = %283
  %292 = load i32, ptr %284, align 4
  %293 = and i32 %292, 33554428
  %294 = load ptr, ptr @mem_map, align 4
  %295 = ptrtoint ptr %294 to i32
  %296 = sub i32 %293, %295
  %297 = lshr exact i32 %296, 5
  %298 = load i32, ptr @__pv_phys_pfn_offset, align 4
  %299 = add i32 %297, %298
  %300 = shl i32 %299, 12
  %301 = getelementptr inbounds %struct.scatterlist, ptr %284, i32 0, i32 1
  %302 = load i32, ptr %301, align 4
  %303 = add i32 %300, %302
  br label %320

304:                                              ; preds = %283
  %305 = load ptr, ptr %266, align 4
  %306 = getelementptr inbounds %struct.virtio_device, ptr %305, i32 0, i32 6, i32 1
  %307 = load ptr, ptr %306, align 4
  %308 = load i32, ptr %284, align 4
  %309 = and i32 %308, -4
  %310 = inttoptr i32 %309 to ptr
  %311 = getelementptr inbounds %struct.scatterlist, ptr %284, i32 0, i32 1
  %312 = load i32, ptr %311, align 4
  %313 = getelementptr inbounds %struct.scatterlist, ptr %284, i32 0, i32 2
  %314 = load i32, ptr %313, align 4
  %315 = tail call i32 @dma_map_page_attrs(ptr noundef %307, ptr noundef %310, i32 noundef %312, i32 noundef %314, i32 noundef %281, i32 noundef 0) #14
  %316 = load i8, ptr %265, align 1, !range !8
  %317 = icmp eq i8 %316, 0
  %318 = icmp ne i32 %315, -1
  %319 = select i1 %317, i1 true, i1 %318
  br i1 %319, label %320, label %411

320:                                              ; preds = %304, %291
  %321 = phi i32 [ %303, %291 ], [ %315, %304 ]
  %322 = load i16, ptr %236, align 2
  %323 = add i32 %287, 1
  %324 = icmp ne i32 %323, %2
  %325 = zext i1 %324 to i16
  %326 = or i16 %282, %325
  %327 = or i16 %326, %322
  %328 = icmp eq i32 %288, %250
  br i1 %328, label %331, label %329

329:                                              ; preds = %320
  %330 = getelementptr %struct.vring_packed_desc, ptr %249, i32 %288, i32 3
  store i16 %327, ptr %330, align 2
  br label %331

331:                                              ; preds = %329, %320
  %332 = phi i16 [ %286, %329 ], [ %327, %320 ]
  %333 = zext i32 %321 to i64
  %334 = getelementptr %struct.vring_packed_desc, ptr %249, i32 %288
  store i64 %333, ptr %334, align 8
  %335 = getelementptr inbounds %struct.scatterlist, ptr %284, i32 0, i32 2
  %336 = load i32, ptr %335, align 4
  %337 = getelementptr %struct.vring_packed_desc, ptr %249, i32 %288, i32 1
  store i32 %336, ptr %337, align 8
  %338 = getelementptr %struct.vring_packed_desc, ptr %249, i32 %288, i32 2
  store i16 %257, ptr %338, align 4
  %339 = load i8, ptr %265, align 1, !range !8
  %340 = icmp eq i8 %339, 0
  br i1 %340, label %341, label %343, !prof !11

341:                                              ; preds = %331
  %342 = zext i16 %285 to i32
  br label %352

343:                                              ; preds = %331
  %344 = load ptr, ptr %267, align 4
  %345 = zext i16 %285 to i32
  %346 = getelementptr %struct.vring_desc_extra, ptr %344, i32 %345
  store i32 %321, ptr %346, align 4
  %347 = load i32, ptr %335, align 4
  %348 = load ptr, ptr %267, align 4
  %349 = getelementptr %struct.vring_desc_extra, ptr %348, i32 %345, i32 1
  store i32 %347, ptr %349, align 4
  %350 = load ptr, ptr %267, align 4
  %351 = getelementptr %struct.vring_desc_extra, ptr %350, i32 %345, i32 2
  store i16 %327, ptr %351, align 4
  br label %352

352:                                              ; preds = %343, %341
  %353 = phi i32 [ %342, %341 ], [ %345, %343 ]
  %354 = load ptr, ptr %267, align 4
  %355 = getelementptr %struct.vring_desc_extra, ptr %354, i32 %353, i32 3
  %356 = load i16, ptr %355, align 2
  %357 = add i32 %288, 1
  %358 = load i32, ptr %233, align 4
  %359 = icmp ult i32 %357, %358
  br i1 %359, label %363, label %360, !prof !11

360:                                              ; preds = %352
  %361 = load i16, ptr %236, align 2
  %362 = xor i16 %361, -32640
  store i16 %362, ptr %236, align 2
  br label %363

363:                                              ; preds = %360, %352
  %364 = phi i32 [ %357, %352 ], [ 0, %360 ]
  %365 = tail call ptr @sg_next(ptr noundef nonnull %284) #14
  %366 = icmp eq ptr %365, null
  br i1 %366, label %367, label %283

367:                                              ; preds = %363, %269
  %368 = phi i32 [ %275, %269 ], [ %364, %363 ]
  %369 = phi i32 [ %273, %269 ], [ %323, %363 ]
  %370 = phi i16 [ %272, %269 ], [ %332, %363 ]
  %371 = phi i16 [ %271, %269 ], [ %285, %363 ]
  %372 = phi i16 [ %270, %269 ], [ %356, %363 ]
  %373 = add nuw i32 %274, 1
  %374 = icmp eq i32 %373, %262
  br i1 %374, label %375, label %269

375:                                              ; preds = %367
  %376 = icmp ult i32 %368, %250
  br i1 %376, label %377, label %381

377:                                              ; preds = %375
  %378 = getelementptr inbounds %struct.vring_virtqueue, ptr %0, i32 0, i32 11, i32 0, i32 1
  %379 = load i8, ptr %378, align 4, !range !8
  %380 = xor i8 %379, 1
  store i8 %380, ptr %378, align 4
  br label %381

381:                                              ; preds = %377, %375, %261
  %382 = phi i16 [ %372, %377 ], [ %372, %375 ], [ %257, %261 ]
  %383 = phi i16 [ %371, %377 ], [ %371, %375 ], [ 0, %261 ]
  %384 = phi i16 [ %370, %377 ], [ %370, %375 ], [ 0, %261 ]
  %385 = phi i32 [ %368, %377 ], [ %368, %375 ], [ %250, %261 ]
  %386 = load i32, ptr %251, align 4
  %387 = sub i32 %386, %2
  store i32 %387, ptr %251, align 4
  %388 = trunc i32 %385 to i16
  store i16 %388, ptr %234, align 4
  %389 = zext i16 %382 to i32
  store i32 %389, ptr %255, align 4
  %390 = trunc i32 %2 to i16
  %391 = getelementptr inbounds %struct.vring_virtqueue, ptr %0, i32 0, i32 11, i32 0, i32 6
  %392 = load ptr, ptr %391, align 4
  %393 = getelementptr %struct.vring_desc_state_packed, ptr %392, i32 %258, i32 2
  store i16 %390, ptr %393, align 4
  %394 = load ptr, ptr %391, align 4
  %395 = getelementptr %struct.vring_desc_state_packed, ptr %394, i32 %258
  store ptr %5, ptr %395, align 4
  %396 = load ptr, ptr %391, align 4
  %397 = getelementptr %struct.vring_desc_state_packed, ptr %396, i32 %258, i32 1
  store ptr %6, ptr %397, align 4
  %398 = load ptr, ptr %391, align 4
  %399 = getelementptr %struct.vring_desc_state_packed, ptr %398, i32 %258, i32 3
  store i16 %383, ptr %399, align 2
  %400 = getelementptr inbounds %struct.vring_virtqueue, ptr %0, i32 0, i32 3
  %401 = load i8, ptr %400, align 2, !range !8
  %402 = icmp eq i8 %401, 0
  br i1 %402, label %404, label %403

403:                                              ; preds = %381
  tail call void asm sideeffect "dmb ishst", "~{memory}"() #14, !srcloc !15
  br label %405

404:                                              ; preds = %381
  tail call void asm sideeffect "dmb oshst", "~{memory}"() #14, !srcloc !16
  br label %405

405:                                              ; preds = %404, %403
  %406 = load ptr, ptr %248, align 4
  %407 = getelementptr %struct.vring_packed_desc, ptr %406, i32 %250, i32 3
  store i16 %384, ptr %407, align 2
  %408 = getelementptr inbounds %struct.vring_virtqueue, ptr %0, i32 0, i32 8
  %409 = load i32, ptr %408, align 4
  %410 = add i32 %409, %2
  store i32 %410, ptr %408, align 4
  br label %830

411:                                              ; preds = %304
  %412 = load i32, ptr %255, align 4
  store i16 %237, ptr %236, align 2
  %413 = icmp eq i32 %288, %250
  br i1 %413, label %830, label %414

414:                                              ; preds = %411
  %415 = trunc i32 %412 to i16
  br label %416

416:                                              ; preds = %446, %414
  %417 = phi i8 [ 1, %414 ], [ %450, %446 ]
  %418 = phi i16 [ %415, %414 ], [ %449, %446 ]
  %419 = phi i32 [ 0, %414 ], [ %442, %446 ]
  %420 = phi i32 [ %250, %414 ], [ %441, %446 ]
  %421 = zext i16 %418 to i32
  %422 = icmp eq i8 %417, 0
  br i1 %422, label %437, label %423

423:                                              ; preds = %416
  %424 = load ptr, ptr %267, align 4
  %425 = getelementptr %struct.vring_desc_extra, ptr %424, i32 %421
  %426 = getelementptr %struct.vring_desc_extra, ptr %424, i32 %421, i32 2
  %427 = load i16, ptr %426, align 4
  %428 = load ptr, ptr %266, align 4
  %429 = getelementptr inbounds %struct.virtio_device, ptr %428, i32 0, i32 6, i32 1
  %430 = load ptr, ptr %429, align 4
  %431 = load i32, ptr %425, align 4
  %432 = getelementptr %struct.vring_desc_extra, ptr %424, i32 %421, i32 1
  %433 = load i32, ptr %432, align 4
  %434 = and i16 %427, 2
  %435 = icmp eq i16 %434, 0
  %436 = select i1 %435, i32 1, i32 2
  tail call void @dma_unmap_page_attrs(ptr noundef %430, i32 noundef %431, i32 noundef %433, i32 noundef %436, i32 noundef 0) #14
  br label %437

437:                                              ; preds = %423, %416
  %438 = add i32 %420, 1
  %439 = load i32, ptr %233, align 4
  %440 = icmp ult i32 %438, %439
  %441 = select i1 %440, i32 %438, i32 0
  %442 = add nuw i32 %419, 1
  %443 = icmp uge i32 %442, %2
  %444 = icmp eq i32 %441, %288
  %445 = select i1 %443, i1 true, i1 %444
  br i1 %445, label %830, label %446

446:                                              ; preds = %437
  %447 = load ptr, ptr %267, align 4
  %448 = getelementptr %struct.vring_desc_extra, ptr %447, i32 %421, i32 3
  %449 = load i16, ptr %448, align 2
  %450 = load i8, ptr %265, align 1, !range !8
  br label %416

451:                                              ; preds = %8
  br i1 %12, label %452, label %453, !prof !9

452:                                              ; preds = %451
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/virtio/virtio_ring.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 496, 0\0A.popsection", ""() #14, !srcloc !18
  unreachable

453:                                              ; preds = %451
  %454 = icmp eq ptr %6, null
  br i1 %454, label %460, label %455

455:                                              ; preds = %453
  %456 = getelementptr inbounds %struct.vring_virtqueue, ptr %0, i32 0, i32 5
  %457 = load i8, ptr %456, align 4, !range !8
  %458 = icmp eq i8 %457, 0
  br i1 %458, label %460, label %459, !prof !11

459:                                              ; preds = %455
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/virtio/virtio_ring.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 497, 0\0A.popsection", ""() #14, !srcloc !19
  unreachable

460:                                              ; preds = %455, %453
  %461 = getelementptr inbounds %struct.vring_virtqueue, ptr %0, i32 0, i32 4
  %462 = load i8, ptr %461, align 1, !range !8
  %463 = icmp eq i8 %462, 0
  br i1 %463, label %464, label %830, !prof !11

464:                                              ; preds = %460
  %465 = icmp eq i32 %2, 0
  br i1 %465, label %466, label %467, !prof !9

466:                                              ; preds = %464
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/virtio/virtio_ring.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 506, 0\0A.popsection", ""() #14, !srcloc !20
  unreachable

467:                                              ; preds = %464
  %468 = getelementptr inbounds %struct.vring_virtqueue, ptr %0, i32 0, i32 7
  %469 = load i32, ptr %468, align 4
  %470 = getelementptr inbounds %struct.vring_virtqueue, ptr %0, i32 0, i32 5
  %471 = load i8, ptr %470, align 4, !range !8
  %472 = icmp ne i8 %471, 0
  %473 = icmp ne i32 %2, 1
  %474 = and i1 %473, %472
  br i1 %474, label %475, label %493

475:                                              ; preds = %467
  %476 = getelementptr inbounds %struct.virtqueue, ptr %0, i32 0, i32 5
  %477 = load i32, ptr %476, align 4
  %478 = icmp eq i32 %477, 0
  br i1 %478, label %493, label %479

479:                                              ; preds = %475
  %480 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %2, i32 16) #14
  %481 = extractvalue { i32, i1 } %480, 1
  br i1 %481, label %503, label %482, !prof !9

482:                                              ; preds = %479
  %483 = extractvalue { i32, i1 } %480, 0
  %484 = and i32 %7, -3
  %485 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %483, i32 noundef %484) #15
  %486 = icmp eq ptr %485, null
  br i1 %486, label %503, label %487

487:                                              ; preds = %487, %482
  %488 = phi i32 [ %489, %487 ], [ 0, %482 ]
  %489 = add nuw i32 %488, 1
  %490 = trunc i32 %489 to i16
  %491 = getelementptr %struct.vring_desc, ptr %485, i32 %488, i32 3
  store i16 %490, ptr %491, align 2
  %492 = icmp eq i32 %489, %2
  br i1 %492, label %506, label %487

493:                                              ; preds = %475, %467
  %494 = getelementptr inbounds %struct.vring_virtqueue, ptr %0, i32 0, i32 11
  %495 = load i32, ptr %494, align 4
  %496 = icmp ult i32 %495, %2
  br i1 %496, label %497, label %503

497:                                              ; preds = %493
  %498 = icmp eq i8 %471, 0
  %499 = load i1, ptr @virtqueue_add_split.__already_done, align 1
  %500 = xor i1 %499, true
  %501 = select i1 %498, i1 %500, i1 false
  br i1 %501, label %502, label %503, !prof !9

502:                                              ; preds = %497
  store i1 true, ptr @virtqueue_add_split.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 514, i32 noundef 9, ptr noundef null) #14
  br label %503

503:                                              ; preds = %502, %497, %493, %482, %479
  %504 = getelementptr inbounds %struct.vring_virtqueue, ptr %0, i32 0, i32 11, i32 0, i32 0, i32 1
  %505 = load ptr, ptr %504, align 4
  br label %506

506:                                              ; preds = %503, %487
  %507 = phi i1 [ true, %503 ], [ false, %487 ]
  %508 = phi i32 [ %469, %503 ], [ 0, %487 ]
  %509 = phi i32 [ %2, %503 ], [ 1, %487 ]
  %510 = phi ptr [ %505, %503 ], [ %485, %487 ]
  %511 = getelementptr inbounds %struct.virtqueue, ptr %0, i32 0, i32 5
  %512 = load i32, ptr %511, align 4
  %513 = icmp ult i32 %512, %509
  %514 = icmp eq i32 %3, 0
  br i1 %513, label %520, label %515

515:                                              ; preds = %506
  br i1 %514, label %527, label %516

516:                                              ; preds = %515
  %517 = getelementptr inbounds %struct.vring_virtqueue, ptr %0, i32 0, i32 2
  %518 = getelementptr inbounds %struct.virtqueue, ptr %0, i32 0, i32 3
  %519 = getelementptr inbounds %struct.vring_virtqueue, ptr %0, i32 0, i32 11, i32 0, i32 6
  br label %536

520:                                              ; preds = %506
  br i1 %514, label %525, label %521

521:                                              ; preds = %520
  %522 = getelementptr inbounds %struct.vring_virtqueue, ptr %0, i32 0, i32 12
  %523 = load ptr, ptr %522, align 4
  %524 = tail call zeroext i1 %523(ptr noundef %0) #14
  br label %525

525:                                              ; preds = %521, %520
  br i1 %507, label %830, label %526

526:                                              ; preds = %525
  tail call void @kfree(ptr noundef %510) #14
  br label %830

527:                                              ; preds = %601, %515
  %528 = phi i32 [ %508, %515 ], [ %602, %601 ]
  %529 = phi i32 [ 0, %515 ], [ %603, %601 ]
  %530 = add i32 %4, %3
  %531 = icmp ugt i32 %530, %3
  br i1 %531, label %532, label %676

532:                                              ; preds = %527
  %533 = getelementptr inbounds %struct.vring_virtqueue, ptr %0, i32 0, i32 2
  %534 = getelementptr inbounds %struct.virtqueue, ptr %0, i32 0, i32 3
  %535 = getelementptr inbounds %struct.vring_virtqueue, ptr %0, i32 0, i32 11, i32 0, i32 6
  br label %606

536:                                              ; preds = %601, %516
  %537 = phi i32 [ 0, %516 ], [ %603, %601 ]
  %538 = phi i32 [ 0, %516 ], [ %604, %601 ]
  %539 = phi i32 [ %508, %516 ], [ %602, %601 ]
  %540 = getelementptr ptr, ptr %1, i32 %538
  %541 = load ptr, ptr %540, align 4
  %542 = icmp eq ptr %541, null
  br i1 %542, label %601, label %543

543:                                              ; preds = %596, %536
  %544 = phi ptr [ %599, %596 ], [ %541, %536 ]
  %545 = phi i32 [ %598, %596 ], [ %539, %536 ]
  %546 = load i8, ptr %517, align 1, !range !8
  %547 = icmp eq i8 %546, 0
  br i1 %547, label %548, label %561

548:                                              ; preds = %543
  %549 = load i32, ptr %544, align 4
  %550 = and i32 %549, 33554428
  %551 = load ptr, ptr @mem_map, align 4
  %552 = ptrtoint ptr %551 to i32
  %553 = sub i32 %550, %552
  %554 = lshr exact i32 %553, 5
  %555 = load i32, ptr @__pv_phys_pfn_offset, align 4
  %556 = add i32 %554, %555
  %557 = shl i32 %556, 12
  %558 = getelementptr inbounds %struct.scatterlist, ptr %544, i32 0, i32 1
  %559 = load i32, ptr %558, align 4
  %560 = add i32 %557, %559
  br label %577

561:                                              ; preds = %543
  %562 = load ptr, ptr %518, align 4
  %563 = getelementptr inbounds %struct.virtio_device, ptr %562, i32 0, i32 6, i32 1
  %564 = load ptr, ptr %563, align 4
  %565 = load i32, ptr %544, align 4
  %566 = and i32 %565, -4
  %567 = inttoptr i32 %566 to ptr
  %568 = getelementptr inbounds %struct.scatterlist, ptr %544, i32 0, i32 1
  %569 = load i32, ptr %568, align 4
  %570 = getelementptr inbounds %struct.scatterlist, ptr %544, i32 0, i32 2
  %571 = load i32, ptr %570, align 4
  %572 = tail call i32 @dma_map_page_attrs(ptr noundef %564, ptr noundef %567, i32 noundef %569, i32 noundef %571, i32 noundef 1, i32 noundef 0) #14
  %573 = load i8, ptr %517, align 1, !range !8
  %574 = icmp eq i8 %573, 0
  %575 = icmp ne i32 %572, -1
  %576 = select i1 %574, i1 true, i1 %575
  br i1 %576, label %577, label %771

577:                                              ; preds = %561, %548
  %578 = phi i32 [ %560, %548 ], [ %572, %561 ]
  %579 = getelementptr inbounds %struct.scatterlist, ptr %544, i32 0, i32 2
  %580 = load i32, ptr %579, align 4
  %581 = load ptr, ptr %519, align 4
  %582 = getelementptr %struct.vring_desc, ptr %510, i32 %545
  %583 = getelementptr %struct.vring_desc, ptr %510, i32 %545, i32 2
  store i16 1, ptr %583, align 4
  %584 = zext i32 %578 to i64
  store i64 %584, ptr %582, align 8
  %585 = getelementptr %struct.vring_desc, ptr %510, i32 %545, i32 1
  store i32 %580, ptr %585, align 8
  br i1 %507, label %586, label %593

586:                                              ; preds = %577
  %587 = getelementptr %struct.vring_desc_extra, ptr %581, i32 %545
  %588 = getelementptr %struct.vring_desc_extra, ptr %581, i32 %545, i32 3
  %589 = load i16, ptr %588, align 2
  %590 = getelementptr %struct.vring_desc, ptr %510, i32 %545, i32 3
  store i16 %589, ptr %590, align 2
  store i32 %578, ptr %587, align 4
  %591 = getelementptr %struct.vring_desc_extra, ptr %581, i32 %545, i32 1
  store i32 %580, ptr %591, align 4
  %592 = getelementptr %struct.vring_desc_extra, ptr %581, i32 %545, i32 2
  store i16 1, ptr %592, align 4
  br label %596

593:                                              ; preds = %577
  %594 = getelementptr %struct.vring_desc, ptr %510, i32 %545, i32 3
  %595 = load i16, ptr %594, align 2
  br label %596

596:                                              ; preds = %593, %586
  %597 = phi i16 [ %595, %593 ], [ %589, %586 ]
  %598 = zext i16 %597 to i32
  %599 = tail call ptr @sg_next(ptr noundef nonnull %544) #14
  %600 = icmp eq ptr %599, null
  br i1 %600, label %601, label %543

601:                                              ; preds = %596, %536
  %602 = phi i32 [ %539, %536 ], [ %598, %596 ]
  %603 = phi i32 [ %537, %536 ], [ %545, %596 ]
  %604 = add nuw i32 %538, 1
  %605 = icmp eq i32 %604, %3
  br i1 %605, label %527, label %536

606:                                              ; preds = %671, %532
  %607 = phi i32 [ %529, %532 ], [ %673, %671 ]
  %608 = phi i32 [ %3, %532 ], [ %674, %671 ]
  %609 = phi i32 [ %528, %532 ], [ %672, %671 ]
  %610 = getelementptr ptr, ptr %1, i32 %608
  %611 = load ptr, ptr %610, align 4
  %612 = icmp eq ptr %611, null
  br i1 %612, label %671, label %613

613:                                              ; preds = %666, %606
  %614 = phi ptr [ %669, %666 ], [ %611, %606 ]
  %615 = phi i32 [ %668, %666 ], [ %609, %606 ]
  %616 = load i8, ptr %533, align 1, !range !8
  %617 = icmp eq i8 %616, 0
  br i1 %617, label %618, label %631

618:                                              ; preds = %613
  %619 = load i32, ptr %614, align 4
  %620 = and i32 %619, 33554428
  %621 = load ptr, ptr @mem_map, align 4
  %622 = ptrtoint ptr %621 to i32
  %623 = sub i32 %620, %622
  %624 = lshr exact i32 %623, 5
  %625 = load i32, ptr @__pv_phys_pfn_offset, align 4
  %626 = add i32 %624, %625
  %627 = shl i32 %626, 12
  %628 = getelementptr inbounds %struct.scatterlist, ptr %614, i32 0, i32 1
  %629 = load i32, ptr %628, align 4
  %630 = add i32 %627, %629
  br label %647

631:                                              ; preds = %613
  %632 = load ptr, ptr %534, align 4
  %633 = getelementptr inbounds %struct.virtio_device, ptr %632, i32 0, i32 6, i32 1
  %634 = load ptr, ptr %633, align 4
  %635 = load i32, ptr %614, align 4
  %636 = and i32 %635, -4
  %637 = inttoptr i32 %636 to ptr
  %638 = getelementptr inbounds %struct.scatterlist, ptr %614, i32 0, i32 1
  %639 = load i32, ptr %638, align 4
  %640 = getelementptr inbounds %struct.scatterlist, ptr %614, i32 0, i32 2
  %641 = load i32, ptr %640, align 4
  %642 = tail call i32 @dma_map_page_attrs(ptr noundef %634, ptr noundef %637, i32 noundef %639, i32 noundef %641, i32 noundef 2, i32 noundef 0) #14
  %643 = load i8, ptr %533, align 1, !range !8
  %644 = icmp eq i8 %643, 0
  %645 = icmp ne i32 %642, -1
  %646 = select i1 %644, i1 true, i1 %645
  br i1 %646, label %647, label %771

647:                                              ; preds = %631, %618
  %648 = phi i32 [ %630, %618 ], [ %642, %631 ]
  %649 = getelementptr inbounds %struct.scatterlist, ptr %614, i32 0, i32 2
  %650 = load i32, ptr %649, align 4
  %651 = load ptr, ptr %535, align 4
  %652 = getelementptr %struct.vring_desc, ptr %510, i32 %615
  %653 = getelementptr %struct.vring_desc, ptr %510, i32 %615, i32 2
  store i16 3, ptr %653, align 4
  %654 = zext i32 %648 to i64
  store i64 %654, ptr %652, align 8
  %655 = getelementptr %struct.vring_desc, ptr %510, i32 %615, i32 1
  store i32 %650, ptr %655, align 8
  br i1 %507, label %656, label %663

656:                                              ; preds = %647
  %657 = getelementptr %struct.vring_desc_extra, ptr %651, i32 %615
  %658 = getelementptr %struct.vring_desc_extra, ptr %651, i32 %615, i32 3
  %659 = load i16, ptr %658, align 2
  %660 = getelementptr %struct.vring_desc, ptr %510, i32 %615, i32 3
  store i16 %659, ptr %660, align 2
  store i32 %648, ptr %657, align 4
  %661 = getelementptr %struct.vring_desc_extra, ptr %651, i32 %615, i32 1
  store i32 %650, ptr %661, align 4
  %662 = getelementptr %struct.vring_desc_extra, ptr %651, i32 %615, i32 2
  store i16 3, ptr %662, align 4
  br label %666

663:                                              ; preds = %647
  %664 = getelementptr %struct.vring_desc, ptr %510, i32 %615, i32 3
  %665 = load i16, ptr %664, align 2
  br label %666

666:                                              ; preds = %663, %656
  %667 = phi i16 [ %665, %663 ], [ %659, %656 ]
  %668 = zext i16 %667 to i32
  %669 = tail call ptr @sg_next(ptr noundef nonnull %614) #14
  %670 = icmp eq ptr %669, null
  br i1 %670, label %671, label %613

671:                                              ; preds = %666, %606
  %672 = phi i32 [ %609, %606 ], [ %668, %666 ]
  %673 = phi i32 [ %607, %606 ], [ %615, %666 ]
  %674 = add nuw i32 %608, 1
  %675 = icmp eq i32 %674, %530
  br i1 %675, label %676, label %606

676:                                              ; preds = %671, %527
  %677 = phi i32 [ %528, %527 ], [ %672, %671 ]
  %678 = phi i32 [ %529, %527 ], [ %673, %671 ]
  %679 = getelementptr %struct.vring_desc, ptr %510, i32 %678, i32 2
  %680 = load i16, ptr %679, align 4
  %681 = and i16 %680, -2
  store i16 %681, ptr %679, align 4
  br i1 %507, label %682, label %696

682:                                              ; preds = %676
  %683 = getelementptr inbounds %struct.vring_virtqueue, ptr %0, i32 0, i32 2
  %684 = load i8, ptr %683, align 1, !range !8
  %685 = icmp eq i8 %684, 0
  br i1 %685, label %725, label %686

686:                                              ; preds = %682
  %687 = getelementptr inbounds %struct.vring_virtqueue, ptr %0, i32 0, i32 11
  %688 = getelementptr inbounds %struct.vring_virtqueue, ptr %0, i32 0, i32 11, i32 0, i32 6
  %689 = load ptr, ptr %688, align 4
  %690 = load i32, ptr %687, align 4
  %691 = add i32 %690, -1
  %692 = and i32 %691, %678
  %693 = getelementptr %struct.vring_desc_extra, ptr %689, i32 %692, i32 2
  %694 = load i16, ptr %693, align 4
  %695 = and i16 %694, -2
  store i16 %695, ptr %693, align 4
  br label %725

696:                                              ; preds = %676
  %697 = shl i32 %2, 4
  %698 = tail call fastcc i32 @vring_map_single(ptr noundef %0, ptr noundef %510, i32 noundef %697) #14
  %699 = getelementptr inbounds %struct.vring_virtqueue, ptr %0, i32 0, i32 2
  %700 = load i8, ptr %699, align 1, !range !8
  %701 = icmp eq i8 %700, 0
  %702 = icmp ne i32 %698, -1
  %703 = select i1 %701, i1 true, i1 %702
  br i1 %703, label %704, label %771

704:                                              ; preds = %696
  %705 = getelementptr inbounds %struct.vring_virtqueue, ptr %0, i32 0, i32 11, i32 0, i32 0, i32 1
  %706 = load ptr, ptr %705, align 4
  %707 = getelementptr inbounds %struct.vring_virtqueue, ptr %0, i32 0, i32 11, i32 0, i32 6
  %708 = load ptr, ptr %707, align 4
  %709 = getelementptr %struct.vring_desc, ptr %706, i32 %469
  %710 = getelementptr %struct.vring_desc, ptr %706, i32 %469, i32 2
  store i16 4, ptr %710, align 4
  %711 = zext i32 %698 to i64
  store i64 %711, ptr %709, align 8
  %712 = getelementptr %struct.vring_desc, ptr %706, i32 %469, i32 1
  store i32 %697, ptr %712, align 8
  %713 = getelementptr %struct.vring_desc_extra, ptr %708, i32 %469
  %714 = getelementptr %struct.vring_desc_extra, ptr %708, i32 %469, i32 3
  %715 = load i16, ptr %714, align 2
  %716 = getelementptr %struct.vring_desc, ptr %706, i32 %469, i32 3
  store i16 %715, ptr %716, align 2
  store i32 %698, ptr %713, align 4
  %717 = getelementptr %struct.vring_desc_extra, ptr %708, i32 %469, i32 1
  store i32 %697, ptr %717, align 4
  %718 = getelementptr %struct.vring_desc_extra, ptr %708, i32 %469, i32 2
  store i16 4, ptr %718, align 4
  %719 = load i32, ptr %511, align 4
  %720 = sub i32 %719, %509
  store i32 %720, ptr %511, align 4
  %721 = load ptr, ptr %707, align 4
  %722 = getelementptr %struct.vring_desc_extra, ptr %721, i32 %469, i32 3
  %723 = load i16, ptr %722, align 2
  %724 = zext i16 %723 to i32
  br label %728

725:                                              ; preds = %686, %682
  %726 = load i32, ptr %511, align 4
  %727 = sub i32 %726, %509
  store i32 %727, ptr %511, align 4
  br label %728

728:                                              ; preds = %725, %704
  %729 = phi i32 [ %677, %725 ], [ %724, %704 ]
  %730 = phi ptr [ %6, %725 ], [ %510, %704 ]
  store i32 %729, ptr %468, align 4
  %731 = getelementptr inbounds %struct.vring_virtqueue, ptr %0, i32 0, i32 11, i32 0, i32 4
  %732 = load ptr, ptr %731, align 4
  %733 = getelementptr %struct.vring_desc_state_split, ptr %732, i32 %469
  store ptr %5, ptr %733, align 4
  %734 = load ptr, ptr %731, align 4
  %735 = getelementptr %struct.vring_desc_state_split, ptr %734, i32 %469, i32 1
  store ptr %730, ptr %735, align 4
  %736 = getelementptr inbounds %struct.vring_virtqueue, ptr %0, i32 0, i32 11
  %737 = getelementptr inbounds %struct.vring_virtqueue, ptr %0, i32 0, i32 11, i32 0, i32 3
  %738 = load i16, ptr %737, align 2
  %739 = zext i16 %738 to i32
  %740 = load i32, ptr %736, align 4
  %741 = add i32 %740, 65535
  %742 = and i32 %741, %739
  %743 = trunc i32 %469 to i16
  %744 = getelementptr inbounds %struct.vring_virtqueue, ptr %0, i32 0, i32 11, i32 0, i32 0, i32 2
  %745 = load ptr, ptr %744, align 4
  %746 = getelementptr %struct.vring_avail, ptr %745, i32 0, i32 2, i32 %742
  store i16 %743, ptr %746, align 2
  %747 = getelementptr inbounds %struct.vring_virtqueue, ptr %0, i32 0, i32 3
  %748 = load i8, ptr %747, align 2, !range !8
  %749 = icmp eq i8 %748, 0
  br i1 %749, label %751, label %750

750:                                              ; preds = %728
  tail call void asm sideeffect "dmb ishst", "~{memory}"() #14, !srcloc !15
  br label %752

751:                                              ; preds = %728
  tail call void asm sideeffect "dmb oshst", "~{memory}"() #14, !srcloc !16
  br label %752

752:                                              ; preds = %751, %750
  %753 = load i16, ptr %737, align 2
  %754 = add i16 %753, 1
  store i16 %754, ptr %737, align 2
  %755 = load ptr, ptr %744, align 4
  %756 = getelementptr inbounds %struct.vring_avail, ptr %755, i32 0, i32 1
  store i16 %754, ptr %756, align 2
  %757 = getelementptr inbounds %struct.vring_virtqueue, ptr %0, i32 0, i32 8
  %758 = load i32, ptr %757, align 4
  %759 = add i32 %758, 1
  store i32 %759, ptr %757, align 4
  %760 = icmp eq i32 %759, 65535
  br i1 %760, label %761, label %830, !prof !9

761:                                              ; preds = %752
  %762 = tail call zeroext i1 @virtqueue_kick_prepare(ptr noundef %0) #14
  br i1 %762, label %763, label %830

763:                                              ; preds = %761
  %764 = load i8, ptr %461, align 1, !range !8
  %765 = icmp eq i8 %764, 0
  br i1 %765, label %766, label %830, !prof !11

766:                                              ; preds = %763
  %767 = getelementptr inbounds %struct.vring_virtqueue, ptr %0, i32 0, i32 12
  %768 = load ptr, ptr %767, align 4
  %769 = tail call zeroext i1 %768(ptr noundef %0) #14
  br i1 %769, label %830, label %770

770:                                              ; preds = %766
  store i8 1, ptr %461, align 1
  br label %830

771:                                              ; preds = %696, %631, %561
  %772 = phi i32 [ %677, %696 ], [ %615, %631 ], [ %545, %561 ]
  %773 = select i1 %507, i32 %469, i32 0
  %774 = icmp eq i32 %773, %772
  br i1 %774, label %828, label %775

775:                                              ; preds = %771
  %776 = getelementptr inbounds %struct.vring_virtqueue, ptr %0, i32 0, i32 2
  %777 = getelementptr inbounds %struct.virtqueue, ptr %0, i32 0, i32 3
  %778 = getelementptr inbounds %struct.vring_virtqueue, ptr %0, i32 0, i32 11, i32 0, i32 6
  br label %779

779:                                              ; preds = %820, %775
  %780 = phi i32 [ 0, %775 ], [ %824, %820 ]
  %781 = phi i32 [ %773, %775 ], [ %823, %820 ]
  br i1 %507, label %801, label %782

782:                                              ; preds = %779
  %783 = load i8, ptr %776, align 1, !range !8
  %784 = icmp eq i8 %783, 0
  br i1 %784, label %799, label %785

785:                                              ; preds = %782
  %786 = getelementptr %struct.vring_desc, ptr %510, i32 %781
  %787 = getelementptr %struct.vring_desc, ptr %510, i32 %781, i32 2
  %788 = load i16, ptr %787, align 4
  %789 = load ptr, ptr %777, align 4
  %790 = getelementptr inbounds %struct.virtio_device, ptr %789, i32 0, i32 6, i32 1
  %791 = load ptr, ptr %790, align 4
  %792 = load i64, ptr %786, align 8
  %793 = trunc i64 %792 to i32
  %794 = getelementptr %struct.vring_desc, ptr %510, i32 %781, i32 1
  %795 = load i32, ptr %794, align 8
  %796 = and i16 %788, 2
  %797 = icmp eq i16 %796, 0
  %798 = select i1 %797, i32 1, i32 2
  tail call void @dma_unmap_page_attrs(ptr noundef %791, i32 noundef %793, i32 noundef %795, i32 noundef %798, i32 noundef 0) #14
  br label %799

799:                                              ; preds = %785, %782
  %800 = getelementptr %struct.vring_desc, ptr %510, i32 %781, i32 3
  br label %820

801:                                              ; preds = %779
  %802 = load ptr, ptr %778, align 4
  %803 = load i8, ptr %776, align 1, !range !8
  %804 = icmp eq i8 %803, 0
  br i1 %804, label %818, label %805

805:                                              ; preds = %801
  %806 = getelementptr %struct.vring_desc_extra, ptr %802, i32 %781
  %807 = getelementptr %struct.vring_desc_extra, ptr %802, i32 %781, i32 2
  %808 = load i16, ptr %807, align 4
  %809 = load ptr, ptr %777, align 4
  %810 = getelementptr inbounds %struct.virtio_device, ptr %809, i32 0, i32 6, i32 1
  %811 = load ptr, ptr %810, align 4
  %812 = load i32, ptr %806, align 4
  %813 = getelementptr %struct.vring_desc_extra, ptr %802, i32 %781, i32 1
  %814 = load i32, ptr %813, align 4
  %815 = and i16 %808, 2
  %816 = icmp eq i16 %815, 0
  %817 = select i1 %816, i32 1, i32 2
  tail call void @dma_unmap_page_attrs(ptr noundef %811, i32 noundef %812, i32 noundef %814, i32 noundef %817, i32 noundef 0) #14
  br label %818

818:                                              ; preds = %805, %801
  %819 = getelementptr %struct.vring_desc_extra, ptr %802, i32 %781, i32 3
  br label %820

820:                                              ; preds = %818, %799
  %821 = phi ptr [ %800, %799 ], [ %819, %818 ]
  %822 = load i16, ptr %821, align 2
  %823 = zext i16 %822 to i32
  %824 = add nuw i32 %780, 1
  %825 = icmp uge i32 %824, %2
  %826 = icmp eq i32 %772, %823
  %827 = select i1 %825, i1 true, i1 %826
  br i1 %827, label %828, label %779

828:                                              ; preds = %820, %771
  br i1 %507, label %830, label %829

829:                                              ; preds = %828
  tail call void @kfree(ptr noundef %510) #14
  br label %830

830:                                              ; preds = %829, %828, %770, %766, %763, %761, %752, %526, %525, %460, %437, %411, %405, %247, %182, %53, %22
  %831 = phi i32 [ 0, %405 ], [ -5, %22 ], [ -28, %247 ], [ -28, %53 ], [ 0, %182 ], [ -5, %411 ], [ -5, %460 ], [ -28, %526 ], [ -28, %525 ], [ 0, %752 ], [ -12, %829 ], [ -12, %828 ], [ 0, %761 ], [ 0, %763 ], [ 0, %766 ], [ 0, %770 ], [ -5, %437 ]
  ret i32 %831
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @virtqueue_add_outbuf(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3, i32 noundef %4) #0 {
  %6 = alloca ptr, align 4
  store ptr %1, ptr %6, align 4
  %7 = call fastcc i32 @virtqueue_add(ptr noundef %0, ptr noundef nonnull %6, i32 noundef %2, i32 noundef 1, i32 noundef 0, ptr noundef %3, ptr noundef null, i32 noundef %4)
  ret i32 %7
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @virtqueue_add_inbuf(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3, i32 noundef %4) #0 {
  %6 = alloca ptr, align 4
  store ptr %1, ptr %6, align 4
  %7 = call fastcc i32 @virtqueue_add(ptr noundef %0, ptr noundef nonnull %6, i32 noundef %2, i32 noundef 0, i32 noundef 1, ptr noundef %3, ptr noundef null, i32 noundef %4)
  ret i32 %7
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @virtqueue_add_inbuf_ctx(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3, ptr noundef %4, i32 noundef %5) #0 {
  %7 = alloca ptr, align 4
  store ptr %1, ptr %7, align 4
  %8 = call fastcc i32 @virtqueue_add(ptr noundef %0, ptr noundef nonnull %7, i32 noundef %2, i32 noundef 0, i32 noundef 1, ptr noundef %3, ptr noundef %4, i32 noundef %5)
  ret i32 %8
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local zeroext i1 @virtqueue_kick_prepare(ptr nocapture noundef %0) #0 {
  %2 = getelementptr inbounds %struct.vring_virtqueue, ptr %0, i32 0, i32 1
  %3 = load i8, ptr %2, align 4, !range !8
  %4 = icmp eq i8 %3, 0
  %5 = getelementptr inbounds %struct.vring_virtqueue, ptr %0, i32 0, i32 3
  %6 = load i8, ptr %5, align 2, !range !8
  %7 = icmp eq i8 %6, 0
  br i1 %4, label %43, label %8

8:                                                ; preds = %1
  br i1 %7, label %10, label %9

9:                                                ; preds = %8
  tail call void asm sideeffect "dmb ish", "~{memory}"() #14, !srcloc !21
  br label %11

10:                                               ; preds = %8
  tail call void asm sideeffect "dsb ", "~{memory}"() #14, !srcloc !22
  tail call void @arm_heavy_mb() #14
  br label %11

11:                                               ; preds = %10, %9
  %12 = getelementptr inbounds %struct.vring_virtqueue, ptr %0, i32 0, i32 11
  %13 = getelementptr inbounds %struct.vring_virtqueue, ptr %0, i32 0, i32 11, i32 0, i32 4
  %14 = load i16, ptr %13, align 4
  %15 = getelementptr inbounds %struct.vring_virtqueue, ptr %0, i32 0, i32 8
  %16 = load i32, ptr %15, align 4
  %17 = trunc i32 %16 to i16
  store i32 0, ptr %15, align 4
  %18 = getelementptr inbounds %struct.vring_virtqueue, ptr %0, i32 0, i32 11, i32 0, i32 0, i32 3
  %19 = load ptr, ptr %18, align 4
  %20 = load i32, ptr %19, align 4
  %21 = lshr i32 %20, 16
  %22 = icmp eq i32 %21, 2
  br i1 %22, label %25, label %23

23:                                               ; preds = %11
  %24 = icmp ne i32 %21, 1
  br label %71

25:                                               ; preds = %11
  %26 = lshr i32 %20, 15
  %27 = and i32 %26, 1
  %28 = trunc i32 %20 to i16
  %29 = and i16 %28, 32767
  %30 = getelementptr inbounds %struct.vring_virtqueue, ptr %0, i32 0, i32 11, i32 0, i32 1
  %31 = load i8, ptr %30, align 4, !range !8
  %32 = zext i8 %31 to i32
  %33 = icmp eq i32 %27, %32
  br i1 %33, label %38, label %34

34:                                               ; preds = %25
  %35 = load i32, ptr %12, align 4
  %36 = trunc i32 %35 to i16
  %37 = sub i16 %29, %36
  br label %38

38:                                               ; preds = %34, %25
  %39 = phi i16 [ %37, %34 ], [ %29, %25 ]
  %40 = xor i16 %39, -1
  %41 = add i16 %14, %40
  %42 = icmp ult i16 %41, %17
  br label %71

43:                                               ; preds = %1
  br i1 %7, label %45, label %44

44:                                               ; preds = %43
  tail call void asm sideeffect "dmb ish", "~{memory}"() #14, !srcloc !21
  br label %46

45:                                               ; preds = %43
  tail call void asm sideeffect "dsb ", "~{memory}"() #14, !srcloc !22
  tail call void @arm_heavy_mb() #14
  br label %46

46:                                               ; preds = %45, %44
  %47 = getelementptr inbounds %struct.vring_virtqueue, ptr %0, i32 0, i32 11, i32 0, i32 3
  %48 = load i16, ptr %47, align 2
  %49 = getelementptr inbounds %struct.vring_virtqueue, ptr %0, i32 0, i32 8
  %50 = load i32, ptr %49, align 4
  store i32 0, ptr %49, align 4
  %51 = getelementptr inbounds %struct.vring_virtqueue, ptr %0, i32 0, i32 6
  %52 = load i8, ptr %51, align 1, !range !8
  %53 = icmp eq i8 %52, 0
  br i1 %53, label %65, label %54

54:                                               ; preds = %46
  %55 = getelementptr inbounds %struct.vring_virtqueue, ptr %0, i32 0, i32 11
  %56 = trunc i32 %50 to i16
  %57 = getelementptr inbounds %struct.vring_virtqueue, ptr %0, i32 0, i32 11, i32 0, i32 0, i32 3
  %58 = load ptr, ptr %57, align 4
  %59 = load i32, ptr %55, align 4
  %60 = getelementptr %struct.vring_used, ptr %58, i32 0, i32 2, i32 %59
  %61 = load i16, ptr %60, align 4
  %62 = xor i16 %61, -1
  %63 = add i16 %48, %62
  %64 = icmp ult i16 %63, %56
  br label %71

65:                                               ; preds = %46
  %66 = getelementptr inbounds %struct.vring_virtqueue, ptr %0, i32 0, i32 11, i32 0, i32 0, i32 3
  %67 = load ptr, ptr %66, align 4
  %68 = load i16, ptr %67, align 4
  %69 = and i16 %68, 1
  %70 = icmp eq i16 %69, 0
  br label %71

71:                                               ; preds = %65, %54, %38, %23
  %72 = phi i1 [ %24, %23 ], [ %42, %38 ], [ %64, %54 ], [ %70, %65 ]
  ret i1 %72
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local zeroext i1 @virtqueue_notify(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.vring_virtqueue, ptr %0, i32 0, i32 4
  %3 = load i8, ptr %2, align 1, !range !8
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %5, label %10, !prof !11

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.vring_virtqueue, ptr %0, i32 0, i32 12
  %7 = load ptr, ptr %6, align 4
  %8 = tail call zeroext i1 %7(ptr noundef %0) #14
  br i1 %8, label %10, label %9

9:                                                ; preds = %5
  store i8 1, ptr %2, align 1
  br label %10

10:                                               ; preds = %9, %5, %1
  %11 = phi i1 [ false, %9 ], [ false, %1 ], [ true, %5 ]
  ret i1 %11
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local zeroext i1 @virtqueue_kick(ptr noundef %0) #0 {
  %2 = tail call zeroext i1 @virtqueue_kick_prepare(ptr noundef %0)
  br i1 %2, label %3, label %12

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.vring_virtqueue, ptr %0, i32 0, i32 4
  %5 = load i8, ptr %4, align 1, !range !8
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %7, label %12, !prof !11

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.vring_virtqueue, ptr %0, i32 0, i32 12
  %9 = load ptr, ptr %8, align 4
  %10 = tail call zeroext i1 %9(ptr noundef %0) #14
  br i1 %10, label %12, label %11

11:                                               ; preds = %7
  store i8 1, ptr %4, align 1
  br label %12

12:                                               ; preds = %11, %7, %3, %1
  %13 = phi i1 [ true, %1 ], [ false, %11 ], [ false, %3 ], [ true, %7 ]
  ret i1 %13
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @virtqueue_get_buf_ctx(ptr noundef %0, ptr nocapture noundef writeonly %1, ptr noundef %2) #0 {
  %4 = getelementptr inbounds %struct.vring_virtqueue, ptr %0, i32 0, i32 1
  %5 = load i8, ptr %4, align 4, !range !8
  %6 = icmp eq i8 %5, 0
  %7 = getelementptr inbounds %struct.vring_virtqueue, ptr %0, i32 0, i32 4
  %8 = load i8, ptr %7, align 1, !range !8
  %9 = icmp eq i8 %8, 0
  br i1 %6, label %95, label %10

10:                                               ; preds = %3
  br i1 %9, label %11, label %158, !prof !11

11:                                               ; preds = %10
  %12 = getelementptr inbounds %struct.vring_virtqueue, ptr %0, i32 0, i32 9
  %13 = load i16, ptr %12, align 4
  %14 = getelementptr inbounds %struct.vring_virtqueue, ptr %0, i32 0, i32 11, i32 0, i32 2
  %15 = load i8, ptr %14, align 1, !range !8
  %16 = getelementptr inbounds %struct.vring_virtqueue, ptr %0, i32 0, i32 11, i32 0, i32 0, i32 1
  %17 = load ptr, ptr %16, align 4
  %18 = zext i16 %13 to i32
  %19 = getelementptr %struct.vring_packed_desc, ptr %17, i32 %18, i32 3
  %20 = load i16, ptr %19, align 2
  %21 = zext i16 %20 to i32
  %22 = lshr i32 %21, 7
  %23 = and i32 %22, 1
  %24 = lshr i32 %21, 15
  %25 = icmp eq i32 %23, %24
  %26 = zext i8 %15 to i32
  %27 = icmp eq i32 %24, %26
  %28 = and i1 %27, %25
  br i1 %28, label %29, label %158

29:                                               ; preds = %11
  %30 = getelementptr inbounds %struct.vring_virtqueue, ptr %0, i32 0, i32 3
  %31 = load i8, ptr %30, align 2, !range !8
  %32 = icmp eq i8 %31, 0
  br i1 %32, label %34, label %33

33:                                               ; preds = %29
  tail call void asm sideeffect "dmb ish", "~{memory}"() #14, !srcloc !23
  br label %35

34:                                               ; preds = %29
  tail call void asm sideeffect "dmb osh", "~{memory}"() #14, !srcloc !24
  br label %35

35:                                               ; preds = %34, %33
  %36 = load i16, ptr %12, align 4
  %37 = getelementptr inbounds %struct.vring_virtqueue, ptr %0, i32 0, i32 11
  %38 = load ptr, ptr %16, align 4
  %39 = zext i16 %36 to i32
  %40 = getelementptr %struct.vring_packed_desc, ptr %38, i32 %39, i32 2
  %41 = load i16, ptr %40, align 4
  %42 = getelementptr %struct.vring_packed_desc, ptr %38, i32 %39, i32 1
  %43 = load i32, ptr %42, align 8
  store i32 %43, ptr %1, align 4
  %44 = zext i16 %41 to i32
  %45 = load i32, ptr %37, align 4
  %46 = icmp ugt i32 %45, %44
  br i1 %46, label %53, label %47, !prof !11

47:                                               ; preds = %35
  %48 = getelementptr inbounds %struct.virtqueue, ptr %0, i32 0, i32 3
  %49 = load ptr, ptr %48, align 4
  %50 = getelementptr inbounds %struct.virtio_device, ptr %49, i32 0, i32 6
  %51 = getelementptr inbounds %struct.virtqueue, ptr %0, i32 0, i32 2
  %52 = load ptr, ptr %51, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %50, ptr noundef nonnull @.str.3, ptr noundef %52, i32 noundef %44) #16
  store i8 1, ptr %7, align 1
  br label %158

53:                                               ; preds = %35
  %54 = getelementptr inbounds %struct.vring_virtqueue, ptr %0, i32 0, i32 11, i32 0, i32 6
  %55 = load ptr, ptr %54, align 4
  %56 = getelementptr %struct.vring_desc_state_packed, ptr %55, i32 %44
  %57 = load ptr, ptr %56, align 4
  %58 = icmp eq ptr %57, null
  br i1 %58, label %59, label %65, !prof !9

59:                                               ; preds = %53
  %60 = getelementptr inbounds %struct.virtqueue, ptr %0, i32 0, i32 3
  %61 = load ptr, ptr %60, align 4
  %62 = getelementptr inbounds %struct.virtio_device, ptr %61, i32 0, i32 6
  %63 = getelementptr inbounds %struct.virtqueue, ptr %0, i32 0, i32 2
  %64 = load ptr, ptr %63, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %62, ptr noundef nonnull @.str.4, ptr noundef %64, i32 noundef %44) #16
  store i8 1, ptr %7, align 1
  br label %158

65:                                               ; preds = %53
  tail call fastcc void @detach_buf_packed(ptr noundef %0, i32 noundef %44, ptr noundef %2) #14
  %66 = load ptr, ptr %54, align 4
  %67 = getelementptr %struct.vring_desc_state_packed, ptr %66, i32 %44, i32 2
  %68 = load i16, ptr %67, align 4
  %69 = load i16, ptr %12, align 4
  %70 = add i16 %69, %68
  store i16 %70, ptr %12, align 4
  %71 = zext i16 %70 to i32
  %72 = load i32, ptr %37, align 4
  %73 = icmp ugt i32 %72, %71
  br i1 %73, label %79, label %74, !prof !11

74:                                               ; preds = %65
  %75 = trunc i32 %72 to i16
  %76 = sub i16 %70, %75
  store i16 %76, ptr %12, align 4
  %77 = load i8, ptr %14, align 1, !range !8
  %78 = xor i8 %77, 1
  store i8 %78, ptr %14, align 1
  br label %79

79:                                               ; preds = %74, %65
  %80 = phi i16 [ %76, %74 ], [ %70, %65 ]
  %81 = getelementptr inbounds %struct.vring_virtqueue, ptr %0, i32 0, i32 11, i32 0, i32 5
  %82 = load i16, ptr %81, align 2
  %83 = icmp eq i16 %82, 2
  br i1 %83, label %84, label %158

84:                                               ; preds = %79
  %85 = load i8, ptr %30, align 2, !range !8
  %86 = icmp eq i8 %85, 0
  %87 = load i8, ptr %14, align 1, !range !8
  %88 = zext i8 %87 to i16
  %89 = shl nuw i16 %88, 15
  %90 = or i16 %89, %80
  %91 = getelementptr inbounds %struct.vring_virtqueue, ptr %0, i32 0, i32 11, i32 0, i32 0, i32 2
  %92 = load ptr, ptr %91, align 4
  store volatile i16 %90, ptr %92, align 2
  br i1 %86, label %94, label %93

93:                                               ; preds = %84
  tail call void asm sideeffect "dmb ish", "~{memory}"() #14, !srcloc !25
  br label %158

94:                                               ; preds = %84
  tail call void asm sideeffect "dsb ", "~{memory}"() #14, !srcloc !26
  tail call void @arm_heavy_mb() #14
  br label %158

95:                                               ; preds = %3
  br i1 %9, label %96, label %158, !prof !11

96:                                               ; preds = %95
  %97 = getelementptr inbounds %struct.vring_virtqueue, ptr %0, i32 0, i32 9
  %98 = load i16, ptr %97, align 4
  %99 = getelementptr inbounds %struct.vring_virtqueue, ptr %0, i32 0, i32 11, i32 0, i32 0, i32 3
  %100 = load ptr, ptr %99, align 4
  %101 = getelementptr inbounds %struct.vring_used, ptr %100, i32 0, i32 1
  %102 = load i16, ptr %101, align 2
  %103 = icmp eq i16 %98, %102
  br i1 %103, label %158, label %104

104:                                              ; preds = %96
  %105 = getelementptr inbounds %struct.vring_virtqueue, ptr %0, i32 0, i32 3
  %106 = load i8, ptr %105, align 2, !range !8
  %107 = icmp eq i8 %106, 0
  br i1 %107, label %109, label %108

108:                                              ; preds = %104
  tail call void asm sideeffect "dmb ish", "~{memory}"() #14, !srcloc !23
  br label %110

109:                                              ; preds = %104
  tail call void asm sideeffect "dmb osh", "~{memory}"() #14, !srcloc !24
  br label %110

110:                                              ; preds = %109, %108
  %111 = load i16, ptr %97, align 4
  %112 = getelementptr inbounds %struct.vring_virtqueue, ptr %0, i32 0, i32 11
  %113 = load i32, ptr %112, align 4
  %114 = trunc i32 %113 to i16
  %115 = add i16 %114, -1
  %116 = and i16 %115, %111
  %117 = getelementptr inbounds %struct.virtqueue, ptr %0, i32 0, i32 3
  %118 = load ptr, ptr %99, align 4
  %119 = zext i16 %116 to i32
  %120 = getelementptr %struct.vring_used, ptr %118, i32 0, i32 2, i32 %119
  %121 = load i32, ptr %120, align 4
  %122 = getelementptr %struct.vring_used, ptr %118, i32 0, i32 2, i32 %119, i32 1
  %123 = load i32, ptr %122, align 4
  store i32 %123, ptr %1, align 4
  %124 = load i32, ptr %112, align 4
  %125 = icmp ult i32 %121, %124
  br i1 %125, label %131, label %126, !prof !11

126:                                              ; preds = %110
  %127 = load ptr, ptr %117, align 4
  %128 = getelementptr inbounds %struct.virtio_device, ptr %127, i32 0, i32 6
  %129 = getelementptr inbounds %struct.virtqueue, ptr %0, i32 0, i32 2
  %130 = load ptr, ptr %129, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %128, ptr noundef nonnull @.str.3, ptr noundef %130, i32 noundef %121) #16
  store i8 1, ptr %7, align 1
  br label %158

131:                                              ; preds = %110
  %132 = getelementptr inbounds %struct.vring_virtqueue, ptr %0, i32 0, i32 11, i32 0, i32 4
  %133 = load ptr, ptr %132, align 4
  %134 = getelementptr %struct.vring_desc_state_split, ptr %133, i32 %121
  %135 = load ptr, ptr %134, align 4
  %136 = icmp eq ptr %135, null
  br i1 %136, label %137, label %142, !prof !9

137:                                              ; preds = %131
  %138 = load ptr, ptr %117, align 4
  %139 = getelementptr inbounds %struct.virtio_device, ptr %138, i32 0, i32 6
  %140 = getelementptr inbounds %struct.virtqueue, ptr %0, i32 0, i32 2
  %141 = load ptr, ptr %140, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %139, ptr noundef nonnull @.str.4, ptr noundef %141, i32 noundef %121) #16
  store i8 1, ptr %7, align 1
  br label %158

142:                                              ; preds = %131
  tail call fastcc void @detach_buf_split(ptr noundef %0, i32 noundef %121, ptr noundef %2) #14
  %143 = load i16, ptr %97, align 4
  %144 = add i16 %143, 1
  store i16 %144, ptr %97, align 4
  %145 = getelementptr inbounds %struct.vring_virtqueue, ptr %0, i32 0, i32 11, i32 0, i32 1
  %146 = load i16, ptr %145, align 4
  %147 = and i16 %146, 1
  %148 = icmp eq i16 %147, 0
  br i1 %148, label %149, label %158

149:                                              ; preds = %142
  %150 = load i8, ptr %105, align 2, !range !8
  %151 = icmp eq i8 %150, 0
  %152 = getelementptr inbounds %struct.vring_virtqueue, ptr %0, i32 0, i32 11, i32 0, i32 0, i32 2
  %153 = load ptr, ptr %152, align 4
  %154 = load i32, ptr %112, align 4
  %155 = getelementptr %struct.vring_avail, ptr %153, i32 0, i32 2, i32 %154
  store volatile i16 %144, ptr %155, align 2
  br i1 %151, label %157, label %156

156:                                              ; preds = %149
  tail call void asm sideeffect "dmb ish", "~{memory}"() #14, !srcloc !27
  br label %158

157:                                              ; preds = %149
  tail call void asm sideeffect "dsb ", "~{memory}"() #14, !srcloc !28
  tail call void @arm_heavy_mb() #14
  br label %158

158:                                              ; preds = %157, %156, %142, %137, %126, %96, %95, %94, %93, %79, %59, %47, %11, %10
  %159 = phi ptr [ null, %47 ], [ null, %59 ], [ null, %10 ], [ null, %11 ], [ %57, %93 ], [ %57, %94 ], [ %57, %79 ], [ null, %126 ], [ null, %137 ], [ null, %95 ], [ null, %96 ], [ %135, %156 ], [ %135, %157 ], [ %135, %142 ]
  ret ptr %159
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @virtqueue_get_buf(ptr noundef %0, ptr nocapture noundef writeonly %1) #0 {
  %3 = tail call ptr @virtqueue_get_buf_ctx(ptr noundef %0, ptr noundef %1, ptr noundef null)
  ret ptr %3
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define dso_local void @virtqueue_disable_cb(ptr nocapture noundef %0) #4 {
  %2 = getelementptr inbounds %struct.vring_virtqueue, ptr %0, i32 0, i32 10
  %3 = load i8, ptr %2, align 2, !range !8
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %5, label %34

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.vring_virtqueue, ptr %0, i32 0, i32 1
  %7 = load i8, ptr %6, align 4, !range !8
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %17, label %9

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.vring_virtqueue, ptr %0, i32 0, i32 11, i32 0, i32 5
  %11 = load i16, ptr %10, align 2
  %12 = icmp eq i16 %11, 1
  br i1 %12, label %34, label %13

13:                                               ; preds = %9
  store i16 1, ptr %10, align 2
  %14 = getelementptr inbounds %struct.vring_virtqueue, ptr %0, i32 0, i32 11, i32 0, i32 0, i32 2
  %15 = load ptr, ptr %14, align 4
  %16 = getelementptr inbounds %struct.vring_packed_desc_event, ptr %15, i32 0, i32 1
  store i16 1, ptr %16, align 2
  br label %34

17:                                               ; preds = %5
  %18 = getelementptr inbounds %struct.vring_virtqueue, ptr %0, i32 0, i32 11
  %19 = getelementptr inbounds %struct.vring_virtqueue, ptr %0, i32 0, i32 11, i32 0, i32 1
  %20 = load i16, ptr %19, align 4
  %21 = and i16 %20, 1
  %22 = icmp eq i16 %21, 0
  br i1 %22, label %23, label %34

23:                                               ; preds = %17
  %24 = or i16 %20, 1
  store i16 %24, ptr %19, align 4
  %25 = getelementptr inbounds %struct.vring_virtqueue, ptr %0, i32 0, i32 6
  %26 = load i8, ptr %25, align 1, !range !8
  %27 = icmp eq i8 %26, 0
  %28 = getelementptr inbounds %struct.vring_virtqueue, ptr %0, i32 0, i32 11, i32 0, i32 0, i32 2
  %29 = load ptr, ptr %28, align 4
  br i1 %27, label %33, label %30

30:                                               ; preds = %23
  %31 = load i32, ptr %18, align 4
  %32 = getelementptr %struct.vring_avail, ptr %29, i32 0, i32 2, i32 %31
  store i16 0, ptr %32, align 2
  br label %34

33:                                               ; preds = %23
  store i16 %24, ptr %29, align 2
  br label %34

34:                                               ; preds = %33, %30, %17, %13, %9, %1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @virtqueue_enable_cb_prepare(ptr nocapture noundef %0) #0 {
  %2 = getelementptr inbounds %struct.vring_virtqueue, ptr %0, i32 0, i32 10
  %3 = load i8, ptr %2, align 2, !range !8
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %6, label %5

5:                                                ; preds = %1
  store i8 0, ptr %2, align 2
  br label %6

6:                                                ; preds = %5, %1
  %7 = getelementptr inbounds %struct.vring_virtqueue, ptr %0, i32 0, i32 1
  %8 = load i8, ptr %7, align 4, !range !8
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %49, label %10

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.vring_virtqueue, ptr %0, i32 0, i32 6
  %12 = load i8, ptr %11, align 1, !range !8
  %13 = icmp eq i8 %12, 0
  br i1 %13, label %29, label %14

14:                                               ; preds = %10
  %15 = getelementptr inbounds %struct.vring_virtqueue, ptr %0, i32 0, i32 9
  %16 = load i16, ptr %15, align 4
  %17 = getelementptr inbounds %struct.vring_virtqueue, ptr %0, i32 0, i32 11, i32 0, i32 2
  %18 = load i8, ptr %17, align 1, !range !8
  %19 = zext i8 %18 to i16
  %20 = shl nuw i16 %19, 15
  %21 = or i16 %20, %16
  %22 = getelementptr inbounds %struct.vring_virtqueue, ptr %0, i32 0, i32 11, i32 0, i32 0, i32 2
  %23 = load ptr, ptr %22, align 4
  store i16 %21, ptr %23, align 2
  %24 = getelementptr inbounds %struct.vring_virtqueue, ptr %0, i32 0, i32 3
  %25 = load i8, ptr %24, align 2, !range !8
  %26 = icmp eq i8 %25, 0
  br i1 %26, label %28, label %27

27:                                               ; preds = %14
  tail call void asm sideeffect "dmb ishst", "~{memory}"() #14, !srcloc !15
  br label %29

28:                                               ; preds = %14
  tail call void asm sideeffect "dmb oshst", "~{memory}"() #14, !srcloc !16
  br label %29

29:                                               ; preds = %28, %27, %10
  %30 = getelementptr inbounds %struct.vring_virtqueue, ptr %0, i32 0, i32 11, i32 0, i32 5
  %31 = load i16, ptr %30, align 2
  %32 = icmp eq i16 %31, 1
  br i1 %32, label %33, label %40

33:                                               ; preds = %29
  %34 = load i8, ptr %11, align 1, !range !8
  %35 = icmp eq i8 %34, 0
  %36 = select i1 %35, i16 0, i16 2
  store i16 %36, ptr %30, align 2
  %37 = getelementptr inbounds %struct.vring_virtqueue, ptr %0, i32 0, i32 11, i32 0, i32 0, i32 2
  %38 = load ptr, ptr %37, align 4
  %39 = getelementptr inbounds %struct.vring_packed_desc_event, ptr %38, i32 0, i32 1
  store i16 %36, ptr %39, align 2
  br label %40

40:                                               ; preds = %33, %29
  %41 = getelementptr inbounds %struct.vring_virtqueue, ptr %0, i32 0, i32 9
  %42 = load i16, ptr %41, align 4
  %43 = zext i16 %42 to i32
  %44 = getelementptr inbounds %struct.vring_virtqueue, ptr %0, i32 0, i32 11, i32 0, i32 2
  %45 = load i8, ptr %44, align 1, !range !8
  %46 = zext i8 %45 to i32
  %47 = shl nuw nsw i32 %46, 15
  %48 = or i32 %47, %43
  br label %71

49:                                               ; preds = %6
  %50 = getelementptr inbounds %struct.vring_virtqueue, ptr %0, i32 0, i32 11, i32 0, i32 1
  %51 = load i16, ptr %50, align 4
  %52 = and i16 %51, 1
  %53 = icmp eq i16 %52, 0
  br i1 %53, label %62, label %54

54:                                               ; preds = %49
  %55 = and i16 %51, -2
  store i16 %55, ptr %50, align 4
  %56 = getelementptr inbounds %struct.vring_virtqueue, ptr %0, i32 0, i32 6
  %57 = load i8, ptr %56, align 1, !range !8
  %58 = icmp eq i8 %57, 0
  br i1 %58, label %59, label %62

59:                                               ; preds = %54
  %60 = getelementptr inbounds %struct.vring_virtqueue, ptr %0, i32 0, i32 11, i32 0, i32 0, i32 2
  %61 = load ptr, ptr %60, align 4
  store i16 %55, ptr %61, align 2
  br label %62

62:                                               ; preds = %59, %54, %49
  %63 = getelementptr inbounds %struct.vring_virtqueue, ptr %0, i32 0, i32 11
  %64 = getelementptr inbounds %struct.vring_virtqueue, ptr %0, i32 0, i32 9
  %65 = load i16, ptr %64, align 4
  %66 = getelementptr inbounds %struct.vring_virtqueue, ptr %0, i32 0, i32 11, i32 0, i32 0, i32 2
  %67 = load ptr, ptr %66, align 4
  %68 = load i32, ptr %63, align 4
  %69 = getelementptr %struct.vring_avail, ptr %67, i32 0, i32 2, i32 %68
  store i16 %65, ptr %69, align 2
  %70 = zext i16 %65 to i32
  br label %71

71:                                               ; preds = %62, %40
  %72 = phi i32 [ %48, %40 ], [ %70, %62 ]
  ret i32 %72
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local zeroext i1 @virtqueue_poll(ptr nocapture noundef readonly %0, i32 noundef %1) #0 {
  %3 = getelementptr inbounds %struct.vring_virtqueue, ptr %0, i32 0, i32 4
  %4 = load i8, ptr %3, align 1, !range !8
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %6, label %38, !prof !11

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.vring_virtqueue, ptr %0, i32 0, i32 3
  %8 = load i8, ptr %7, align 2, !range !8
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %11, label %10

10:                                               ; preds = %6
  tail call void asm sideeffect "dmb ish", "~{memory}"() #14, !srcloc !21
  br label %12

11:                                               ; preds = %6
  tail call void asm sideeffect "dsb ", "~{memory}"() #14, !srcloc !22
  tail call void @arm_heavy_mb() #14
  br label %12

12:                                               ; preds = %11, %10
  %13 = getelementptr inbounds %struct.vring_virtqueue, ptr %0, i32 0, i32 1
  %14 = load i8, ptr %13, align 4, !range !8
  %15 = icmp eq i8 %14, 0
  br i1 %15, label %31, label %16

16:                                               ; preds = %12
  %17 = and i32 %1, 32767
  %18 = getelementptr inbounds %struct.vring_virtqueue, ptr %0, i32 0, i32 11, i32 0, i32 0, i32 1
  %19 = load ptr, ptr %18, align 4
  %20 = getelementptr %struct.vring_packed_desc, ptr %19, i32 %17, i32 3
  %21 = load i16, ptr %20, align 2
  %22 = zext i16 %21 to i32
  %23 = lshr i32 %22, 7
  %24 = and i32 %23, 1
  %25 = lshr i32 %22, 15
  %26 = icmp eq i32 %24, %25
  %27 = lshr i32 %1, 15
  %28 = and i32 %27, 1
  %29 = icmp eq i32 %25, %28
  %30 = and i1 %29, %26
  br label %38

31:                                               ; preds = %12
  %32 = getelementptr inbounds %struct.vring_virtqueue, ptr %0, i32 0, i32 11, i32 0, i32 0, i32 3
  %33 = load ptr, ptr %32, align 4
  %34 = getelementptr inbounds %struct.vring_used, ptr %33, i32 0, i32 1
  %35 = load i16, ptr %34, align 2
  %36 = trunc i32 %1 to i16
  %37 = icmp ne i16 %35, %36
  br label %38

38:                                               ; preds = %31, %16, %2
  %39 = phi i1 [ false, %2 ], [ %30, %16 ], [ %37, %31 ]
  ret i1 %39
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local zeroext i1 @virtqueue_enable_cb(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.vring_virtqueue, ptr %0, i32 0, i32 10
  %3 = load i8, ptr %2, align 2, !range !8
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %6, label %5

5:                                                ; preds = %1
  store i8 0, ptr %2, align 2
  br label %6

6:                                                ; preds = %5, %1
  %7 = getelementptr inbounds %struct.vring_virtqueue, ptr %0, i32 0, i32 1
  %8 = load i8, ptr %7, align 4, !range !8
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %49, label %10

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.vring_virtqueue, ptr %0, i32 0, i32 6
  %12 = load i8, ptr %11, align 1, !range !8
  %13 = icmp eq i8 %12, 0
  br i1 %13, label %29, label %14

14:                                               ; preds = %10
  %15 = getelementptr inbounds %struct.vring_virtqueue, ptr %0, i32 0, i32 9
  %16 = load i16, ptr %15, align 4
  %17 = getelementptr inbounds %struct.vring_virtqueue, ptr %0, i32 0, i32 11, i32 0, i32 2
  %18 = load i8, ptr %17, align 1, !range !8
  %19 = zext i8 %18 to i16
  %20 = shl nuw i16 %19, 15
  %21 = or i16 %20, %16
  %22 = getelementptr inbounds %struct.vring_virtqueue, ptr %0, i32 0, i32 11, i32 0, i32 0, i32 2
  %23 = load ptr, ptr %22, align 4
  store i16 %21, ptr %23, align 2
  %24 = getelementptr inbounds %struct.vring_virtqueue, ptr %0, i32 0, i32 3
  %25 = load i8, ptr %24, align 2, !range !8
  %26 = icmp eq i8 %25, 0
  br i1 %26, label %28, label %27

27:                                               ; preds = %14
  tail call void asm sideeffect "dmb ishst", "~{memory}"() #14, !srcloc !15
  br label %29

28:                                               ; preds = %14
  tail call void asm sideeffect "dmb oshst", "~{memory}"() #14, !srcloc !16
  br label %29

29:                                               ; preds = %28, %27, %10
  %30 = getelementptr inbounds %struct.vring_virtqueue, ptr %0, i32 0, i32 11, i32 0, i32 5
  %31 = load i16, ptr %30, align 2
  %32 = icmp eq i16 %31, 1
  br i1 %32, label %33, label %40

33:                                               ; preds = %29
  %34 = load i8, ptr %11, align 1, !range !8
  %35 = icmp eq i8 %34, 0
  %36 = select i1 %35, i16 0, i16 2
  store i16 %36, ptr %30, align 2
  %37 = getelementptr inbounds %struct.vring_virtqueue, ptr %0, i32 0, i32 11, i32 0, i32 0, i32 2
  %38 = load ptr, ptr %37, align 4
  %39 = getelementptr inbounds %struct.vring_packed_desc_event, ptr %38, i32 0, i32 1
  store i16 %36, ptr %39, align 2
  br label %40

40:                                               ; preds = %33, %29
  %41 = getelementptr inbounds %struct.vring_virtqueue, ptr %0, i32 0, i32 9
  %42 = load i16, ptr %41, align 4
  %43 = zext i16 %42 to i32
  %44 = getelementptr inbounds %struct.vring_virtqueue, ptr %0, i32 0, i32 11, i32 0, i32 2
  %45 = load i8, ptr %44, align 1, !range !8
  %46 = zext i8 %45 to i32
  %47 = shl nuw nsw i32 %46, 15
  %48 = or i32 %47, %43
  br label %71

49:                                               ; preds = %6
  %50 = getelementptr inbounds %struct.vring_virtqueue, ptr %0, i32 0, i32 11, i32 0, i32 1
  %51 = load i16, ptr %50, align 4
  %52 = and i16 %51, 1
  %53 = icmp eq i16 %52, 0
  br i1 %53, label %62, label %54

54:                                               ; preds = %49
  %55 = and i16 %51, -2
  store i16 %55, ptr %50, align 4
  %56 = getelementptr inbounds %struct.vring_virtqueue, ptr %0, i32 0, i32 6
  %57 = load i8, ptr %56, align 1, !range !8
  %58 = icmp eq i8 %57, 0
  br i1 %58, label %59, label %62

59:                                               ; preds = %54
  %60 = getelementptr inbounds %struct.vring_virtqueue, ptr %0, i32 0, i32 11, i32 0, i32 0, i32 2
  %61 = load ptr, ptr %60, align 4
  store i16 %55, ptr %61, align 2
  br label %62

62:                                               ; preds = %59, %54, %49
  %63 = getelementptr inbounds %struct.vring_virtqueue, ptr %0, i32 0, i32 11
  %64 = getelementptr inbounds %struct.vring_virtqueue, ptr %0, i32 0, i32 9
  %65 = load i16, ptr %64, align 4
  %66 = getelementptr inbounds %struct.vring_virtqueue, ptr %0, i32 0, i32 11, i32 0, i32 0, i32 2
  %67 = load ptr, ptr %66, align 4
  %68 = load i32, ptr %63, align 4
  %69 = getelementptr %struct.vring_avail, ptr %67, i32 0, i32 2, i32 %68
  store i16 %65, ptr %69, align 2
  %70 = zext i16 %65 to i32
  br label %71

71:                                               ; preds = %62, %40
  %72 = phi i32 [ %48, %40 ], [ %70, %62 ]
  %73 = getelementptr inbounds %struct.vring_virtqueue, ptr %0, i32 0, i32 4
  %74 = load i8, ptr %73, align 1, !range !8
  %75 = icmp eq i8 %74, 0
  br i1 %75, label %76, label %107, !prof !11

76:                                               ; preds = %71
  %77 = getelementptr inbounds %struct.vring_virtqueue, ptr %0, i32 0, i32 3
  %78 = load i8, ptr %77, align 2, !range !8
  %79 = icmp eq i8 %78, 0
  br i1 %79, label %81, label %80

80:                                               ; preds = %76
  tail call void asm sideeffect "dmb ish", "~{memory}"() #14, !srcloc !21
  br label %82

81:                                               ; preds = %76
  tail call void asm sideeffect "dsb ", "~{memory}"() #14, !srcloc !22
  tail call void @arm_heavy_mb() #14
  br label %82

82:                                               ; preds = %81, %80
  %83 = load i8, ptr %7, align 4, !range !8
  %84 = icmp eq i8 %83, 0
  br i1 %84, label %100, label %85

85:                                               ; preds = %82
  %86 = and i32 %72, 32767
  %87 = getelementptr inbounds %struct.vring_virtqueue, ptr %0, i32 0, i32 11, i32 0, i32 0, i32 1
  %88 = load ptr, ptr %87, align 4
  %89 = getelementptr %struct.vring_packed_desc, ptr %88, i32 %86, i32 3
  %90 = load i16, ptr %89, align 2
  %91 = zext i16 %90 to i32
  %92 = lshr i32 %91, 7
  %93 = and i32 %92, 1
  %94 = lshr i32 %91, 15
  %95 = icmp eq i32 %93, %94
  %96 = lshr i32 %72, 15
  %97 = and i32 %96, 1
  %98 = icmp eq i32 %94, %97
  %99 = and i1 %98, %95
  br label %107

100:                                              ; preds = %82
  %101 = getelementptr inbounds %struct.vring_virtqueue, ptr %0, i32 0, i32 11, i32 0, i32 0, i32 3
  %102 = load ptr, ptr %101, align 4
  %103 = getelementptr inbounds %struct.vring_used, ptr %102, i32 0, i32 1
  %104 = load i16, ptr %103, align 2
  %105 = trunc i32 %72 to i16
  %106 = icmp ne i16 %104, %105
  br label %107

107:                                              ; preds = %100, %85, %71
  %108 = phi i1 [ false, %71 ], [ %99, %85 ], [ %106, %100 ]
  %109 = xor i1 %108, true
  ret i1 %109
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local zeroext i1 @virtqueue_enable_cb_delayed(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.vring_virtqueue, ptr %0, i32 0, i32 10
  %3 = load i8, ptr %2, align 2, !range !8
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %6, label %5

5:                                                ; preds = %1
  store i8 0, ptr %2, align 2
  br label %6

6:                                                ; preds = %5, %1
  %7 = getelementptr inbounds %struct.vring_virtqueue, ptr %0, i32 0, i32 1
  %8 = load i8, ptr %7, align 4, !range !8
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %81, label %10

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.vring_virtqueue, ptr %0, i32 0, i32 6
  %12 = load i8, ptr %11, align 1, !range !8
  %13 = icmp eq i8 %12, 0
  br i1 %13, label %46, label %14

14:                                               ; preds = %10
  %15 = getelementptr inbounds %struct.vring_virtqueue, ptr %0, i32 0, i32 11
  %16 = load i32, ptr %15, align 4
  %17 = getelementptr inbounds %struct.virtqueue, ptr %0, i32 0, i32 5
  %18 = load i32, ptr %17, align 4
  %19 = sub i32 %16, %18
  %20 = mul i32 %19, 3
  %21 = lshr i32 %20, 2
  %22 = getelementptr inbounds %struct.vring_virtqueue, ptr %0, i32 0, i32 11, i32 0, i32 2
  %23 = load i8, ptr %22, align 1, !range !8
  %24 = getelementptr inbounds %struct.vring_virtqueue, ptr %0, i32 0, i32 9
  %25 = load i16, ptr %24, align 4
  %26 = trunc i32 %21 to i16
  %27 = add i16 %25, %26
  %28 = zext i16 %27 to i32
  %29 = icmp ugt i32 %16, %28
  %30 = trunc i32 %16 to i16
  %31 = select i1 %29, i16 0, i16 %30
  %32 = sub i16 %27, %31
  %33 = xor i1 %29, true
  %34 = zext i1 %33 to i8
  %35 = xor i8 %23, %34
  %36 = zext i8 %35 to i16
  %37 = shl nuw i16 %36, 15
  %38 = or i16 %37, %32
  %39 = getelementptr inbounds %struct.vring_virtqueue, ptr %0, i32 0, i32 11, i32 0, i32 0, i32 2
  %40 = load ptr, ptr %39, align 4
  store i16 %38, ptr %40, align 2
  %41 = getelementptr inbounds %struct.vring_virtqueue, ptr %0, i32 0, i32 3
  %42 = load i8, ptr %41, align 2, !range !8
  %43 = icmp eq i8 %42, 0
  br i1 %43, label %45, label %44

44:                                               ; preds = %14
  tail call void asm sideeffect "dmb ishst", "~{memory}"() #14, !srcloc !15
  br label %46

45:                                               ; preds = %14
  tail call void asm sideeffect "dmb oshst", "~{memory}"() #14, !srcloc !16
  br label %46

46:                                               ; preds = %45, %44, %10
  %47 = getelementptr inbounds %struct.vring_virtqueue, ptr %0, i32 0, i32 11, i32 0, i32 5
  %48 = load i16, ptr %47, align 2
  %49 = icmp eq i16 %48, 1
  br i1 %49, label %50, label %57

50:                                               ; preds = %46
  %51 = load i8, ptr %11, align 1, !range !8
  %52 = icmp eq i8 %51, 0
  %53 = select i1 %52, i16 0, i16 2
  store i16 %53, ptr %47, align 2
  %54 = getelementptr inbounds %struct.vring_virtqueue, ptr %0, i32 0, i32 11, i32 0, i32 0, i32 2
  %55 = load ptr, ptr %54, align 4
  %56 = getelementptr inbounds %struct.vring_packed_desc_event, ptr %55, i32 0, i32 1
  store i16 %53, ptr %56, align 2
  br label %57

57:                                               ; preds = %50, %46
  %58 = getelementptr inbounds %struct.vring_virtqueue, ptr %0, i32 0, i32 3
  %59 = load i8, ptr %58, align 2, !range !8
  %60 = icmp eq i8 %59, 0
  br i1 %60, label %62, label %61

61:                                               ; preds = %57
  tail call void asm sideeffect "dmb ish", "~{memory}"() #14, !srcloc !21
  br label %63

62:                                               ; preds = %57
  tail call void asm sideeffect "dsb ", "~{memory}"() #14, !srcloc !22
  tail call void @arm_heavy_mb() #14
  br label %63

63:                                               ; preds = %62, %61
  %64 = getelementptr inbounds %struct.vring_virtqueue, ptr %0, i32 0, i32 9
  %65 = load i16, ptr %64, align 4
  %66 = getelementptr inbounds %struct.vring_virtqueue, ptr %0, i32 0, i32 11, i32 0, i32 2
  %67 = load i8, ptr %66, align 1, !range !8
  %68 = getelementptr inbounds %struct.vring_virtqueue, ptr %0, i32 0, i32 11, i32 0, i32 0, i32 1
  %69 = load ptr, ptr %68, align 4
  %70 = zext i16 %65 to i32
  %71 = getelementptr %struct.vring_packed_desc, ptr %69, i32 %70, i32 3
  %72 = load i16, ptr %71, align 2
  %73 = zext i16 %72 to i32
  %74 = lshr i32 %73, 7
  %75 = and i32 %74, 1
  %76 = lshr i32 %73, 15
  %77 = icmp ne i32 %75, %76
  %78 = zext i8 %67 to i32
  %79 = icmp ne i32 %76, %78
  %80 = or i1 %79, %77
  br label %124

81:                                               ; preds = %6
  %82 = getelementptr inbounds %struct.vring_virtqueue, ptr %0, i32 0, i32 11
  %83 = getelementptr inbounds %struct.vring_virtqueue, ptr %0, i32 0, i32 11, i32 0, i32 1
  %84 = load i16, ptr %83, align 4
  %85 = and i16 %84, 1
  %86 = icmp eq i16 %85, 0
  br i1 %86, label %95, label %87

87:                                               ; preds = %81
  %88 = and i16 %84, -2
  store i16 %88, ptr %83, align 4
  %89 = getelementptr inbounds %struct.vring_virtqueue, ptr %0, i32 0, i32 6
  %90 = load i8, ptr %89, align 1, !range !8
  %91 = icmp eq i8 %90, 0
  br i1 %91, label %92, label %95

92:                                               ; preds = %87
  %93 = getelementptr inbounds %struct.vring_virtqueue, ptr %0, i32 0, i32 11, i32 0, i32 0, i32 2
  %94 = load ptr, ptr %93, align 4
  store i16 %88, ptr %94, align 2
  br label %95

95:                                               ; preds = %92, %87, %81
  %96 = getelementptr inbounds %struct.vring_virtqueue, ptr %0, i32 0, i32 11, i32 0, i32 3
  %97 = load i16, ptr %96, align 2
  %98 = getelementptr inbounds %struct.vring_virtqueue, ptr %0, i32 0, i32 9
  %99 = load i16, ptr %98, align 4
  %100 = sub i16 %97, %99
  %101 = zext i16 %100 to i32
  %102 = mul nuw nsw i32 %101, 3
  %103 = lshr i32 %102, 2
  %104 = getelementptr inbounds %struct.vring_virtqueue, ptr %0, i32 0, i32 3
  %105 = load i8, ptr %104, align 2, !range !8
  %106 = icmp eq i8 %105, 0
  %107 = trunc i32 %103 to i16
  %108 = add i16 %99, %107
  %109 = getelementptr inbounds %struct.vring_virtqueue, ptr %0, i32 0, i32 11, i32 0, i32 0, i32 2
  %110 = load ptr, ptr %109, align 4
  %111 = load i32, ptr %82, align 4
  %112 = getelementptr %struct.vring_avail, ptr %110, i32 0, i32 2, i32 %111
  store volatile i16 %108, ptr %112, align 2
  br i1 %106, label %114, label %113

113:                                              ; preds = %95
  tail call void asm sideeffect "dmb ish", "~{memory}"() #14, !srcloc !29
  br label %115

114:                                              ; preds = %95
  tail call void asm sideeffect "dsb ", "~{memory}"() #14, !srcloc !30
  tail call void @arm_heavy_mb() #14
  br label %115

115:                                              ; preds = %114, %113
  %116 = getelementptr inbounds %struct.vring_virtqueue, ptr %0, i32 0, i32 11, i32 0, i32 0, i32 3
  %117 = load ptr, ptr %116, align 4
  %118 = getelementptr inbounds %struct.vring_used, ptr %117, i32 0, i32 1
  %119 = load i16, ptr %118, align 2
  %120 = load i16, ptr %98, align 4
  %121 = sub i16 %119, %120
  %122 = zext i16 %121 to i32
  %123 = icmp uge i32 %103, %122
  br label %124

124:                                              ; preds = %115, %63
  %125 = phi i1 [ %80, %63 ], [ %123, %115 ]
  ret i1 %125
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @virtqueue_detach_unused_buf(ptr nocapture noundef %0) #0 {
  %2 = getelementptr inbounds %struct.vring_virtqueue, ptr %0, i32 0, i32 1
  %3 = load i8, ptr %2, align 4, !range !8
  %4 = icmp eq i8 %3, 0
  %5 = getelementptr inbounds %struct.vring_virtqueue, ptr %0, i32 0, i32 11
  %6 = load i32, ptr %5, align 4
  %7 = icmp eq i32 %6, 0
  br i1 %4, label %26, label %8

8:                                                ; preds = %1
  br i1 %7, label %21, label %9

9:                                                ; preds = %8
  %10 = getelementptr inbounds %struct.vring_virtqueue, ptr %0, i32 0, i32 11, i32 0, i32 6
  %11 = load ptr, ptr %10, align 4
  br label %12

12:                                               ; preds = %18, %9
  %13 = phi i32 [ 0, %9 ], [ %19, %18 ]
  %14 = getelementptr %struct.vring_desc_state_packed, ptr %11, i32 %13
  %15 = load ptr, ptr %14, align 4
  %16 = icmp eq ptr %15, null
  br i1 %16, label %18, label %17

17:                                               ; preds = %12
  tail call fastcc void @detach_buf_packed(ptr noundef %0, i32 noundef %13, ptr noundef null) #14
  br label %50

18:                                               ; preds = %12
  %19 = add nuw i32 %13, 1
  %20 = icmp eq i32 %19, %6
  br i1 %20, label %21, label %12

21:                                               ; preds = %18, %8
  %22 = getelementptr inbounds %struct.virtqueue, ptr %0, i32 0, i32 5
  %23 = load i32, ptr %22, align 4
  %24 = icmp eq i32 %23, %6
  br i1 %24, label %50, label %25, !prof !11

25:                                               ; preds = %21
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/virtio/virtio_ring.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1633, 0\0A.popsection", ""() #14, !srcloc !31
  unreachable

26:                                               ; preds = %1
  br i1 %7, label %45, label %27

27:                                               ; preds = %26
  %28 = getelementptr inbounds %struct.vring_virtqueue, ptr %0, i32 0, i32 11, i32 0, i32 4
  %29 = load ptr, ptr %28, align 4
  br label %30

30:                                               ; preds = %42, %27
  %31 = phi i32 [ 0, %27 ], [ %43, %42 ]
  %32 = getelementptr %struct.vring_desc_state_split, ptr %29, i32 %31
  %33 = load ptr, ptr %32, align 4
  %34 = icmp eq ptr %33, null
  br i1 %34, label %42, label %35

35:                                               ; preds = %30
  tail call fastcc void @detach_buf_split(ptr noundef %0, i32 noundef %31, ptr noundef null) #14
  %36 = getelementptr inbounds %struct.vring_virtqueue, ptr %0, i32 0, i32 11, i32 0, i32 3
  %37 = load i16, ptr %36, align 2
  %38 = add i16 %37, -1
  store i16 %38, ptr %36, align 2
  %39 = getelementptr inbounds %struct.vring_virtqueue, ptr %0, i32 0, i32 11, i32 0, i32 0, i32 2
  %40 = load ptr, ptr %39, align 4
  %41 = getelementptr inbounds %struct.vring_avail, ptr %40, i32 0, i32 1
  store i16 %38, ptr %41, align 2
  br label %50

42:                                               ; preds = %30
  %43 = add nuw i32 %31, 1
  %44 = icmp eq i32 %43, %6
  br i1 %44, label %45, label %30

45:                                               ; preds = %42, %26
  %46 = getelementptr inbounds %struct.virtqueue, ptr %0, i32 0, i32 5
  %47 = load i32, ptr %46, align 4
  %48 = icmp eq i32 %47, %6
  br i1 %48, label %50, label %49, !prof !11

49:                                               ; preds = %45
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/virtio/virtio_ring.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 912, 0\0A.popsection", ""() #14, !srcloc !32
  unreachable

50:                                               ; preds = %45, %35, %21, %17
  %51 = phi ptr [ %15, %17 ], [ null, %21 ], [ %33, %35 ], [ null, %45 ]
  ret ptr %51
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @vring_interrupt(i32 %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.vring_virtqueue, ptr %1, i32 0, i32 1
  %4 = load i8, ptr %3, align 4, !range !8
  %5 = icmp eq i8 %4, 0
  %6 = getelementptr inbounds %struct.vring_virtqueue, ptr %1, i32 0, i32 9
  %7 = load i16, ptr %6, align 4
  br i1 %5, label %24, label %8

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.vring_virtqueue, ptr %1, i32 0, i32 11, i32 0, i32 2
  %10 = load i8, ptr %9, align 1, !range !8
  %11 = getelementptr inbounds %struct.vring_virtqueue, ptr %1, i32 0, i32 11, i32 0, i32 0, i32 1
  %12 = load ptr, ptr %11, align 4
  %13 = zext i16 %7 to i32
  %14 = getelementptr %struct.vring_packed_desc, ptr %12, i32 %13, i32 3
  %15 = load i16, ptr %14, align 2
  %16 = zext i16 %15 to i32
  %17 = lshr i32 %16, 7
  %18 = and i32 %17, 1
  %19 = lshr i32 %16, 15
  %20 = icmp eq i32 %18, %19
  %21 = zext i8 %10 to i32
  %22 = icmp eq i32 %19, %21
  %23 = and i1 %22, %20
  br i1 %23, label %30, label %45

24:                                               ; preds = %2
  %25 = getelementptr inbounds %struct.vring_virtqueue, ptr %1, i32 0, i32 11, i32 0, i32 0, i32 3
  %26 = load ptr, ptr %25, align 4
  %27 = getelementptr inbounds %struct.vring_used, ptr %26, i32 0, i32 1
  %28 = load i16, ptr %27, align 2
  %29 = icmp eq i16 %7, %28
  br i1 %29, label %45, label %30

30:                                               ; preds = %24, %8
  %31 = getelementptr inbounds %struct.vring_virtqueue, ptr %1, i32 0, i32 4
  %32 = load i8, ptr %31, align 1, !range !8
  %33 = icmp eq i8 %32, 0
  br i1 %33, label %34, label %45, !prof !11

34:                                               ; preds = %30
  %35 = getelementptr inbounds %struct.vring_virtqueue, ptr %1, i32 0, i32 6
  %36 = load i8, ptr %35, align 1, !range !8
  %37 = icmp eq i8 %36, 0
  br i1 %37, label %40, label %38

38:                                               ; preds = %34
  %39 = getelementptr inbounds %struct.vring_virtqueue, ptr %1, i32 0, i32 10
  store i8 1, ptr %39, align 2
  br label %40

40:                                               ; preds = %38, %34
  %41 = getelementptr inbounds %struct.virtqueue, ptr %1, i32 0, i32 1
  %42 = load ptr, ptr %41, align 4
  %43 = icmp eq ptr %42, null
  br i1 %43, label %45, label %44

44:                                               ; preds = %40
  tail call void %42(ptr noundef %1) #14
  br label %45

45:                                               ; preds = %44, %40, %30, %24, %8
  %46 = phi i32 [ 0, %24 ], [ 1, %30 ], [ 1, %44 ], [ 1, %40 ], [ 0, %8 ]
  ret i32 %46
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @__vring_new_virtqueue(i32 noundef %0, [4 x i32] %1, ptr noundef %2, i1 noundef zeroext %3, i1 noundef zeroext %4, ptr noundef %5, ptr noundef %6, ptr noundef %7) #0 {
  %9 = extractvalue [4 x i32] %1, 0
  %10 = extractvalue [4 x i32] %1, 1
  %11 = extractvalue [4 x i32] %1, 2
  %12 = extractvalue [4 x i32] %1, 3
  %13 = zext i1 %3 to i8
  %14 = getelementptr inbounds %struct.virtio_device, ptr %2, i32 0, i32 11
  %15 = load i64, ptr %14, align 8
  %16 = and i64 %15, 17179869184
  %17 = icmp eq i64 %16, 0
  br i1 %17, label %18, label %110

18:                                               ; preds = %8
  %19 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %20 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %19, i32 noundef 3264, i32 noundef 112) #17
  %21 = icmp eq ptr %20, null
  br i1 %21, label %110, label %22

22:                                               ; preds = %18
  %23 = getelementptr inbounds %struct.vring_virtqueue, ptr %20, i32 0, i32 1
  store i8 0, ptr %23, align 8
  %24 = getelementptr inbounds %struct.virtqueue, ptr %20, i32 0, i32 1
  store ptr %6, ptr %24, align 8
  %25 = getelementptr inbounds %struct.virtqueue, ptr %20, i32 0, i32 3
  store ptr %2, ptr %25, align 8
  %26 = getelementptr inbounds %struct.virtqueue, ptr %20, i32 0, i32 2
  store ptr %7, ptr %26, align 4
  %27 = getelementptr inbounds %struct.virtqueue, ptr %20, i32 0, i32 5
  store i32 %9, ptr %27, align 8
  %28 = getelementptr inbounds %struct.virtqueue, ptr %20, i32 0, i32 4
  store i32 %0, ptr %28, align 4
  %29 = getelementptr inbounds %struct.vring_virtqueue, ptr %20, i32 0, i32 13
  store i8 0, ptr %29, align 4
  %30 = getelementptr inbounds %struct.vring_virtqueue, ptr %20, i32 0, i32 12
  store ptr %5, ptr %30, align 8
  %31 = getelementptr inbounds %struct.vring_virtqueue, ptr %20, i32 0, i32 3
  store i8 %13, ptr %31, align 2
  %32 = getelementptr inbounds %struct.vring_virtqueue, ptr %20, i32 0, i32 4
  store i8 0, ptr %32, align 1
  %33 = getelementptr inbounds %struct.vring_virtqueue, ptr %20, i32 0, i32 9
  store i16 0, ptr %33, align 8
  %34 = getelementptr inbounds %struct.vring_virtqueue, ptr %20, i32 0, i32 10
  store i8 0, ptr %34, align 2
  %35 = getelementptr inbounds %struct.vring_virtqueue, ptr %20, i32 0, i32 8
  store i32 0, ptr %35, align 4
  %36 = load i64, ptr %14, align 8
  %37 = getelementptr inbounds %struct.vring_virtqueue, ptr %20, i32 0, i32 2
  %38 = lshr i64 %36, 33
  %39 = trunc i64 %38 to i8
  %40 = and i8 %39, 1
  store i8 %40, ptr %37, align 1
  %41 = and i64 %36, 268435456
  %42 = icmp ne i64 %41, 0
  %43 = xor i1 %4, true
  %44 = and i1 %42, %43
  %45 = getelementptr inbounds %struct.vring_virtqueue, ptr %20, i32 0, i32 5
  %46 = zext i1 %44 to i8
  store i8 %46, ptr %45, align 4
  %47 = getelementptr inbounds %struct.vring_virtqueue, ptr %20, i32 0, i32 6
  %48 = lshr i64 %36, 29
  %49 = trunc i64 %48 to i8
  %50 = and i8 %49, 1
  store i8 %50, ptr %47, align 1
  %51 = and i64 %36, 68719476736
  %52 = icmp eq i64 %51, 0
  br i1 %52, label %54, label %53

53:                                               ; preds = %22
  store i8 0, ptr %31, align 2
  br label %54

54:                                               ; preds = %53, %22
  %55 = getelementptr inbounds %struct.vring_virtqueue, ptr %20, i32 0, i32 11
  %56 = getelementptr inbounds %struct.vring_virtqueue, ptr %20, i32 0, i32 11, i32 0, i32 7
  store i32 0, ptr %56, align 8
  %57 = getelementptr inbounds %struct.vring_virtqueue, ptr %20, i32 0, i32 11, i32 0, i32 8
  store i32 0, ptr %57, align 4
  store i32 %9, ptr %55, align 4
  %58 = getelementptr inbounds %struct.vring_virtqueue, ptr %20, i32 0, i32 11, i32 0, i32 0, i32 1
  store i32 %10, ptr %58, align 8
  %59 = getelementptr inbounds %struct.vring_virtqueue, ptr %20, i32 0, i32 11, i32 0, i32 0, i32 2
  store i32 %11, ptr %59, align 4
  %60 = getelementptr inbounds %struct.vring_virtqueue, ptr %20, i32 0, i32 11, i32 0, i32 0, i32 3
  store i32 %12, ptr %60, align 8
  %61 = getelementptr inbounds %struct.vring_virtqueue, ptr %20, i32 0, i32 11, i32 0, i32 1
  store i16 0, ptr %61, align 4
  %62 = getelementptr inbounds %struct.vring_virtqueue, ptr %20, i32 0, i32 11, i32 0, i32 3
  store i16 0, ptr %62, align 2
  %63 = icmp eq ptr %6, null
  %64 = inttoptr i32 %11 to ptr
  br i1 %63, label %65, label %68

65:                                               ; preds = %54
  store i16 1, ptr %61, align 4
  %66 = icmp eq i8 %50, 0
  br i1 %66, label %67, label %68

67:                                               ; preds = %65
  store i16 1, ptr %64, align 2
  br label %68

68:                                               ; preds = %67, %65, %54
  %69 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %9, i32 8) #14
  %70 = extractvalue { i32, i1 } %69, 1
  br i1 %70, label %71, label %73, !prof !9

71:                                               ; preds = %68
  %72 = getelementptr inbounds %struct.vring_virtqueue, ptr %20, i32 0, i32 11, i32 0, i32 4
  store ptr null, ptr %72, align 8
  br label %109

73:                                               ; preds = %68
  %74 = extractvalue { i32, i1 } %69, 0
  %75 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %74, i32 noundef 3264) #15
  %76 = getelementptr inbounds %struct.vring_virtqueue, ptr %20, i32 0, i32 11, i32 0, i32 4
  store ptr %75, ptr %76, align 8
  %77 = icmp eq ptr %75, null
  br i1 %77, label %109, label %78

78:                                               ; preds = %73
  %79 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %9, i32 12) #14
  %80 = extractvalue { i32, i1 } %79, 1
  %81 = extractvalue { i32, i1 } %79, 0
  br i1 %80, label %94, label %82, !prof !9

82:                                               ; preds = %78
  %83 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %81, i32 noundef 3264) #15
  %84 = icmp eq ptr %83, null
  br i1 %84, label %94, label %85

85:                                               ; preds = %82
  tail call void @llvm.memset.p0.i32(ptr nonnull align 64 %83, i8 0, i32 %81, i1 false) #14
  %86 = add nsw i32 %9, -1
  %87 = icmp eq i32 %86, 0
  br i1 %87, label %97, label %88

88:                                               ; preds = %88, %85
  %89 = phi i32 [ %90, %88 ], [ 0, %85 ]
  %90 = add nuw i32 %89, 1
  %91 = trunc i32 %90 to i16
  %92 = getelementptr %struct.vring_desc_extra, ptr %83, i32 %89, i32 3
  store i16 %91, ptr %92, align 2
  %93 = icmp eq i32 %90, %86
  br i1 %93, label %97, label %88

94:                                               ; preds = %82, %78
  %95 = getelementptr inbounds %struct.vring_virtqueue, ptr %20, i32 0, i32 11, i32 0, i32 6
  store ptr null, ptr %95, align 4
  %96 = load ptr, ptr %76, align 8
  tail call void @kfree(ptr noundef %96) #14
  br label %109

97:                                               ; preds = %88, %85
  %98 = getelementptr inbounds %struct.vring_virtqueue, ptr %20, i32 0, i32 11, i32 0, i32 6
  store ptr %83, ptr %98, align 4
  %99 = getelementptr inbounds %struct.vring_virtqueue, ptr %20, i32 0, i32 7
  store i32 0, ptr %99, align 8
  %100 = load ptr, ptr %76, align 8
  %101 = shl i32 %9, 3
  tail call void @llvm.memset.p0.i32(ptr align 4 %100, i8 0, i32 %101, i1 false)
  %102 = getelementptr inbounds %struct.virtio_device, ptr %2, i32 0, i32 5
  tail call void @_raw_spin_lock(ptr noundef %102) #14
  %103 = getelementptr inbounds %struct.virtio_device, ptr %2, i32 0, i32 10
  %104 = getelementptr inbounds %struct.virtio_device, ptr %2, i32 0, i32 10, i32 1
  %105 = load ptr, ptr %104, align 4
  store ptr %20, ptr %104, align 4
  store ptr %103, ptr %20, align 8
  %106 = getelementptr inbounds %struct.list_head, ptr %20, i32 0, i32 1
  store ptr %105, ptr %106, align 4
  store volatile ptr %20, ptr %105, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #14, !srcloc !33
  %107 = load i16, ptr %102, align 4
  %108 = add i16 %107, 1
  store i16 %108, ptr %102, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #14, !srcloc !34
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #14, !srcloc !35
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !36
  br label %110

109:                                              ; preds = %94, %73, %71
  tail call void @kfree(ptr noundef nonnull %20) #14
  br label %110

110:                                              ; preds = %109, %97, %18, %8
  %111 = phi ptr [ %20, %97 ], [ null, %109 ], [ null, %8 ], [ null, %18 ]
  ret ptr %111
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @vring_create_virtqueue(i32 noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef %3, i1 noundef zeroext %4, i1 noundef zeroext %5, i1 noundef zeroext %6, ptr noundef %7, ptr noundef %8, ptr noundef %9) #0 {
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = getelementptr inbounds %struct.virtio_device, ptr %3, i32 0, i32 11
  %16 = load i64, ptr %15, align 8
  %17 = and i64 %16, 17179869184
  %18 = icmp eq i64 %17, 0
  br i1 %18, label %195, label %19

19:                                               ; preds = %10
  %20 = zext i1 %4 to i8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %12) #14
  store i32 0, ptr %12, align 4, !annotation !37
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %13) #14
  store i32 0, ptr %13, align 4, !annotation !37
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %14) #14
  store i32 0, ptr %14, align 4, !annotation !37
  %21 = shl i32 %1, 4
  %22 = and i64 %16, 8589934592
  %23 = icmp eq i64 %22, 0
  br i1 %23, label %24, label %32

24:                                               ; preds = %19
  %25 = add i32 %21, 4095
  %26 = and i32 %25, -4096
  %27 = tail call noalias ptr @alloc_pages_exact(i32 noundef %26, i32 noundef 11712) #15
  %28 = icmp eq ptr %27, null
  br i1 %28, label %193, label %29

29:                                               ; preds = %24
  %30 = ptrtoint ptr %27 to i32
  %31 = tail call i32 asm "@ __pv_stub\0A1:\09add\09$0, $1, $2\0A2:\09add\09$0, $0, $3\0A\09.pushsection .pv_table,\22a\22\0A\09.long\091b - ., 2b - .\0A\09.popsection\0A", "=r,r,I,I"(i32 %30, i32 -2130706432, i32 8454144) #18, !srcloc !38
  store i32 %31, ptr %12, align 4
  br label %37

32:                                               ; preds = %19
  %33 = getelementptr inbounds %struct.virtio_device, ptr %3, i32 0, i32 6, i32 1
  %34 = load ptr, ptr %33, align 4
  %35 = call ptr @dma_alloc_attrs(ptr noundef %34, i32 noundef %21, ptr noundef nonnull %12, i32 noundef 11712, i32 noundef 256) #14
  %36 = icmp eq ptr %35, null
  br i1 %36, label %193, label %37

37:                                               ; preds = %32, %29
  %38 = phi ptr [ %27, %29 ], [ %35, %32 ]
  %39 = load i64, ptr %15, align 8
  %40 = and i64 %39, 8589934592
  %41 = icmp eq i64 %40, 0
  br i1 %41, label %42, label %48

42:                                               ; preds = %37
  %43 = call noalias ptr @alloc_pages_exact(i32 noundef 4096, i32 noundef 11712) #15
  %44 = icmp eq ptr %43, null
  br i1 %44, label %182, label %45

45:                                               ; preds = %42
  %46 = ptrtoint ptr %43 to i32
  %47 = call i32 asm "@ __pv_stub\0A1:\09add\09$0, $1, $2\0A2:\09add\09$0, $0, $3\0A\09.pushsection .pv_table,\22a\22\0A\09.long\091b - ., 2b - .\0A\09.popsection\0A", "=r,r,I,I"(i32 %46, i32 -2130706432, i32 8454144) #18, !srcloc !38
  store i32 %47, ptr %13, align 4
  br label %53

48:                                               ; preds = %37
  %49 = getelementptr inbounds %struct.virtio_device, ptr %3, i32 0, i32 6, i32 1
  %50 = load ptr, ptr %49, align 4
  %51 = call ptr @dma_alloc_attrs(ptr noundef %50, i32 noundef 4, ptr noundef nonnull %13, i32 noundef 11712, i32 noundef 256) #14
  %52 = icmp eq ptr %51, null
  br i1 %52, label %182, label %53

53:                                               ; preds = %48, %45
  %54 = phi ptr [ %43, %45 ], [ %51, %48 ]
  %55 = load i64, ptr %15, align 8
  %56 = and i64 %55, 8589934592
  %57 = icmp eq i64 %56, 0
  br i1 %57, label %58, label %64

58:                                               ; preds = %53
  %59 = call noalias ptr @alloc_pages_exact(i32 noundef 4096, i32 noundef 11712) #15
  %60 = icmp eq ptr %59, null
  br i1 %60, label %173, label %61

61:                                               ; preds = %58
  %62 = ptrtoint ptr %59 to i32
  %63 = call i32 asm "@ __pv_stub\0A1:\09add\09$0, $1, $2\0A2:\09add\09$0, $0, $3\0A\09.pushsection .pv_table,\22a\22\0A\09.long\091b - ., 2b - .\0A\09.popsection\0A", "=r,r,I,I"(i32 %62, i32 -2130706432, i32 8454144) #18, !srcloc !38
  store i32 %63, ptr %14, align 4
  br label %69

64:                                               ; preds = %53
  %65 = getelementptr inbounds %struct.virtio_device, ptr %3, i32 0, i32 6, i32 1
  %66 = load ptr, ptr %65, align 4
  %67 = call ptr @dma_alloc_attrs(ptr noundef %66, i32 noundef 4, ptr noundef nonnull %14, i32 noundef 11712, i32 noundef 256) #14
  %68 = icmp eq ptr %67, null
  br i1 %68, label %173, label %69

69:                                               ; preds = %64, %61
  %70 = phi ptr [ %59, %61 ], [ %67, %64 ]
  %71 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %72 = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %71, i32 noundef 3264, i32 noundef 112) #17
  %73 = icmp eq ptr %72, null
  br i1 %73, label %164, label %74

74:                                               ; preds = %69
  %75 = getelementptr inbounds %struct.virtqueue, ptr %72, i32 0, i32 1
  store ptr %8, ptr %75, align 8
  %76 = getelementptr inbounds %struct.virtqueue, ptr %72, i32 0, i32 3
  store ptr %3, ptr %76, align 8
  %77 = getelementptr inbounds %struct.virtqueue, ptr %72, i32 0, i32 2
  store ptr %9, ptr %77, align 4
  %78 = getelementptr inbounds %struct.virtqueue, ptr %72, i32 0, i32 5
  store i32 %1, ptr %78, align 8
  %79 = getelementptr inbounds %struct.virtqueue, ptr %72, i32 0, i32 4
  store i32 %0, ptr %79, align 4
  %80 = getelementptr inbounds %struct.vring_virtqueue, ptr %72, i32 0, i32 13
  store i8 1, ptr %80, align 4
  %81 = getelementptr inbounds %struct.vring_virtqueue, ptr %72, i32 0, i32 12
  store ptr %7, ptr %81, align 8
  %82 = getelementptr inbounds %struct.vring_virtqueue, ptr %72, i32 0, i32 3
  store i8 %20, ptr %82, align 2
  %83 = getelementptr inbounds %struct.vring_virtqueue, ptr %72, i32 0, i32 4
  store i8 0, ptr %83, align 1
  %84 = getelementptr inbounds %struct.vring_virtqueue, ptr %72, i32 0, i32 9
  store i16 0, ptr %84, align 8
  %85 = getelementptr inbounds %struct.vring_virtqueue, ptr %72, i32 0, i32 10
  store i8 0, ptr %85, align 2
  %86 = getelementptr inbounds %struct.vring_virtqueue, ptr %72, i32 0, i32 8
  store i32 0, ptr %86, align 4
  %87 = getelementptr inbounds %struct.vring_virtqueue, ptr %72, i32 0, i32 1
  store i8 1, ptr %87, align 8
  %88 = load i64, ptr %15, align 8
  %89 = getelementptr inbounds %struct.vring_virtqueue, ptr %72, i32 0, i32 2
  %90 = lshr i64 %88, 33
  %91 = trunc i64 %90 to i8
  %92 = and i8 %91, 1
  store i8 %92, ptr %89, align 1
  %93 = and i64 %88, 268435456
  %94 = icmp ne i64 %93, 0
  %95 = xor i1 %6, true
  %96 = and i1 %94, %95
  %97 = getelementptr inbounds %struct.vring_virtqueue, ptr %72, i32 0, i32 5
  %98 = zext i1 %96 to i8
  store i8 %98, ptr %97, align 4
  %99 = getelementptr inbounds %struct.vring_virtqueue, ptr %72, i32 0, i32 6
  %100 = lshr i64 %88, 29
  %101 = trunc i64 %100 to i8
  %102 = and i8 %101, 1
  store i8 %102, ptr %99, align 1
  %103 = and i64 %88, 68719476736
  %104 = icmp eq i64 %103, 0
  br i1 %104, label %106, label %105

105:                                              ; preds = %74
  store i8 0, ptr %82, align 2
  br label %106

106:                                              ; preds = %105, %74
  %107 = load i32, ptr %12, align 4
  %108 = getelementptr inbounds %struct.vring_virtqueue, ptr %72, i32 0, i32 11
  %109 = getelementptr inbounds %struct.vring_virtqueue, ptr %72, i32 0, i32 11, i32 0, i32 8
  store i32 %107, ptr %109, align 4
  %110 = load i32, ptr %13, align 4
  %111 = getelementptr inbounds %struct.vring_virtqueue, ptr %72, i32 0, i32 11, i32 0, i32 9
  store i32 %110, ptr %111, align 8
  %112 = load i32, ptr %14, align 4
  %113 = getelementptr inbounds %struct.vring_virtqueue, ptr %72, i32 0, i32 11, i32 0, i32 10
  store i32 %112, ptr %113, align 4
  %114 = getelementptr inbounds %struct.vring_virtqueue, ptr %72, i32 0, i32 11, i32 0, i32 11
  store i32 %21, ptr %114, align 8
  %115 = getelementptr inbounds %struct.vring_virtqueue, ptr %72, i32 0, i32 11, i32 0, i32 12
  store i32 4, ptr %115, align 4
  store i32 %1, ptr %108, align 4
  %116 = getelementptr inbounds %struct.vring_virtqueue, ptr %72, i32 0, i32 11, i32 0, i32 0, i32 1
  store ptr %38, ptr %116, align 8
  %117 = getelementptr inbounds %struct.vring_virtqueue, ptr %72, i32 0, i32 11, i32 0, i32 0, i32 2
  store ptr %54, ptr %117, align 4
  %118 = getelementptr inbounds %struct.vring_virtqueue, ptr %72, i32 0, i32 11, i32 0, i32 0, i32 3
  store ptr %70, ptr %118, align 8
  %119 = getelementptr inbounds %struct.vring_virtqueue, ptr %72, i32 0, i32 11, i32 0, i32 4
  store i16 0, ptr %119, align 8
  %120 = getelementptr inbounds %struct.vring_virtqueue, ptr %72, i32 0, i32 11, i32 0, i32 1
  store i8 1, ptr %120, align 4
  %121 = getelementptr inbounds %struct.vring_virtqueue, ptr %72, i32 0, i32 11, i32 0, i32 2
  store i8 1, ptr %121, align 1
  %122 = getelementptr inbounds %struct.vring_virtqueue, ptr %72, i32 0, i32 11, i32 0, i32 5
  store i16 0, ptr %122, align 2
  %123 = getelementptr inbounds %struct.vring_virtqueue, ptr %72, i32 0, i32 11, i32 0, i32 3
  store i16 128, ptr %123, align 2
  %124 = call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %1, i32 12) #14
  %125 = extractvalue { i32, i1 } %124, 1
  %126 = extractvalue { i32, i1 } %124, 0
  br i1 %125, label %127, label %129, !prof !9

127:                                              ; preds = %106
  %128 = getelementptr inbounds %struct.vring_virtqueue, ptr %72, i32 0, i32 11, i32 0, i32 6
  store ptr null, ptr %128, align 4
  br label %163

129:                                              ; preds = %106
  %130 = call noalias align 64 ptr @__kmalloc(i32 noundef %126, i32 noundef 3264) #15
  %131 = getelementptr inbounds %struct.vring_virtqueue, ptr %72, i32 0, i32 11, i32 0, i32 6
  store ptr %130, ptr %131, align 4
  %132 = icmp eq ptr %130, null
  br i1 %132, label %163, label %133

133:                                              ; preds = %129
  call void @llvm.memset.p0.i32(ptr nonnull align 64 %130, i8 0, i32 %126, i1 false) #14
  %134 = getelementptr inbounds %struct.vring_virtqueue, ptr %72, i32 0, i32 7
  store i32 0, ptr %134, align 8
  %135 = call noalias align 64 ptr @__kmalloc(i32 noundef %126, i32 noundef 3264) #15
  %136 = icmp eq ptr %135, null
  br i1 %136, label %137, label %140

137:                                              ; preds = %133
  %138 = getelementptr inbounds %struct.vring_virtqueue, ptr %72, i32 0, i32 11, i32 0, i32 7
  store ptr null, ptr %138, align 8
  %139 = load ptr, ptr %131, align 4
  call void @kfree(ptr noundef %139) #14
  br label %163

140:                                              ; preds = %133
  call void @llvm.memset.p0.i32(ptr nonnull align 64 %135, i8 0, i32 %126, i1 false) #14
  %141 = add nsw i32 %1, -1
  %142 = icmp eq i32 %141, 0
  br i1 %142, label %149, label %143

143:                                              ; preds = %143, %140
  %144 = phi i32 [ %145, %143 ], [ 0, %140 ]
  %145 = add nuw i32 %144, 1
  %146 = trunc i32 %145 to i16
  %147 = getelementptr %struct.vring_desc_extra, ptr %135, i32 %144, i32 3
  store i16 %146, ptr %147, align 2
  %148 = icmp eq i32 %145, %141
  br i1 %148, label %149, label %143

149:                                              ; preds = %143, %140
  %150 = getelementptr inbounds %struct.vring_virtqueue, ptr %72, i32 0, i32 11, i32 0, i32 7
  store ptr %135, ptr %150, align 8
  %151 = icmp eq ptr %8, null
  br i1 %151, label %152, label %155

152:                                              ; preds = %149
  store i16 1, ptr %122, align 2
  %153 = load ptr, ptr %117, align 4
  %154 = getelementptr inbounds %struct.vring_packed_desc_event, ptr %153, i32 0, i32 1
  store i16 1, ptr %154, align 2
  br label %155

155:                                              ; preds = %152, %149
  %156 = getelementptr inbounds %struct.virtio_device, ptr %3, i32 0, i32 5
  call void @_raw_spin_lock(ptr noundef %156) #14
  %157 = getelementptr inbounds %struct.virtio_device, ptr %3, i32 0, i32 10
  %158 = getelementptr inbounds %struct.virtio_device, ptr %3, i32 0, i32 10, i32 1
  %159 = load ptr, ptr %158, align 4
  store ptr %72, ptr %158, align 4
  store ptr %157, ptr %72, align 8
  %160 = getelementptr inbounds %struct.list_head, ptr %72, i32 0, i32 1
  store ptr %159, ptr %160, align 4
  store volatile ptr %72, ptr %159, align 4
  call void asm sideeffect "dmb ish", "~{memory}"() #14, !srcloc !33
  %161 = load i16, ptr %156, align 4
  %162 = add i16 %161, 1
  store i16 %162, ptr %156, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #14, !srcloc !34
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #14, !srcloc !35
  call void asm sideeffect "", "~{memory}"() #14, !srcloc !36
  br label %193

163:                                              ; preds = %137, %129, %127
  call void @kfree(ptr noundef nonnull %72) #14
  br label %164

164:                                              ; preds = %163, %69
  %165 = load i64, ptr %15, align 8
  %166 = and i64 %165, 8589934592
  %167 = icmp eq i64 %166, 0
  br i1 %167, label %172, label %168

168:                                              ; preds = %164
  %169 = load i32, ptr %14, align 4
  %170 = getelementptr inbounds %struct.virtio_device, ptr %3, i32 0, i32 6, i32 1
  %171 = load ptr, ptr %170, align 4
  call void @dma_free_attrs(ptr noundef %171, i32 noundef 4, ptr noundef %70, i32 noundef %169, i32 noundef 0) #14
  br label %173

172:                                              ; preds = %164
  call void @free_pages_exact(ptr noundef %70, i32 noundef 4096) #14
  br label %173

173:                                              ; preds = %172, %168, %64, %58
  %174 = load i64, ptr %15, align 8
  %175 = and i64 %174, 8589934592
  %176 = icmp eq i64 %175, 0
  br i1 %176, label %181, label %177

177:                                              ; preds = %173
  %178 = load i32, ptr %13, align 4
  %179 = getelementptr inbounds %struct.virtio_device, ptr %3, i32 0, i32 6, i32 1
  %180 = load ptr, ptr %179, align 4
  call void @dma_free_attrs(ptr noundef %180, i32 noundef 4, ptr noundef %54, i32 noundef %178, i32 noundef 0) #14
  br label %182

181:                                              ; preds = %173
  call void @free_pages_exact(ptr noundef %54, i32 noundef 4096) #14
  br label %182

182:                                              ; preds = %181, %177, %48, %42
  %183 = load i64, ptr %15, align 8
  %184 = and i64 %183, 8589934592
  %185 = icmp eq i64 %184, 0
  br i1 %185, label %190, label %186

186:                                              ; preds = %182
  %187 = load i32, ptr %12, align 4
  %188 = getelementptr inbounds %struct.virtio_device, ptr %3, i32 0, i32 6, i32 1
  %189 = load ptr, ptr %188, align 4
  call void @dma_free_attrs(ptr noundef %189, i32 noundef %21, ptr noundef %38, i32 noundef %187, i32 noundef 0) #14
  br label %193

190:                                              ; preds = %182
  %191 = add i32 %21, 4095
  %192 = and i32 %191, -4096
  call void @free_pages_exact(ptr noundef %38, i32 noundef %192) #14
  br label %193

193:                                              ; preds = %190, %186, %155, %32, %24
  %194 = phi ptr [ %72, %155 ], [ null, %32 ], [ null, %186 ], [ null, %190 ], [ null, %24 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %14) #14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %13) #14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %12) #14
  br label %284

195:                                              ; preds = %10
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %11) #14
  store i32 0, ptr %11, align 4, !annotation !37
  %196 = tail call i32 @llvm.ctpop.i32(i32 %1) #14, !range !39
  %197 = icmp ult i32 %196, 2
  br i1 %197, label %198, label %205

198:                                              ; preds = %195
  %199 = icmp eq i32 %1, 0
  br i1 %199, label %282, label %200

200:                                              ; preds = %198
  %201 = add i32 %2, 5
  %202 = sub i32 0, %2
  %203 = getelementptr inbounds %struct.virtio_device, ptr %3, i32 0, i32 6, i32 1
  %204 = xor i1 %5, true
  br label %207

205:                                              ; preds = %195
  %206 = getelementptr inbounds %struct.virtio_device, ptr %3, i32 0, i32 6
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %206, ptr noundef nonnull @.str.5, i32 noundef %1) #16
  br label %282

207:                                              ; preds = %232, %200
  %208 = phi i32 [ %1, %200 ], [ %233, %232 ]
  %209 = mul i32 %208, 18
  %210 = add i32 %201, %209
  %211 = and i32 %210, %202
  %212 = shl i32 %208, 3
  %213 = or i32 %212, 6
  %214 = add i32 %213, %211
  %215 = icmp ugt i32 %214, 4096
  %216 = load i64, ptr %15, align 8
  %217 = and i64 %216, 8589934592
  %218 = icmp eq i64 %217, 0
  br i1 %215, label %219, label %236

219:                                              ; preds = %207
  br i1 %218, label %220, label %228

220:                                              ; preds = %219
  %221 = add i32 %214, 4095
  %222 = and i32 %221, -4096
  %223 = call noalias ptr @alloc_pages_exact(i32 noundef %222, i32 noundef 11712) #15
  %224 = icmp eq ptr %223, null
  br i1 %224, label %232, label %225

225:                                              ; preds = %220
  %226 = ptrtoint ptr %223 to i32
  %227 = call i32 asm "@ __pv_stub\0A1:\09add\09$0, $1, $2\0A2:\09add\09$0, $0, $3\0A\09.pushsection .pv_table,\22a\22\0A\09.long\091b - ., 2b - .\0A\09.popsection\0A", "=r,r,I,I"(i32 %226, i32 -2130706432, i32 8454144) #18, !srcloc !38
  store i32 %227, ptr %11, align 4
  br label %249

228:                                              ; preds = %219
  %229 = load ptr, ptr %203, align 4
  %230 = call ptr @dma_alloc_attrs(ptr noundef %229, i32 noundef %214, ptr noundef nonnull %11, i32 noundef 11712, i32 noundef 256) #14
  %231 = icmp eq ptr %230, null
  br i1 %231, label %232, label %249

232:                                              ; preds = %228, %220
  %233 = lshr i32 %208, 1
  %234 = icmp ult i32 %208, 2
  %235 = select i1 %204, i1 true, i1 %234
  br i1 %235, label %282, label %207

236:                                              ; preds = %207
  br i1 %218, label %237, label %245

237:                                              ; preds = %236
  %238 = add nuw nsw i32 %214, 4095
  %239 = and i32 %238, -4096
  %240 = call noalias ptr @alloc_pages_exact(i32 noundef %239, i32 noundef 3520) #15
  %241 = icmp eq ptr %240, null
  br i1 %241, label %282, label %242

242:                                              ; preds = %237
  %243 = ptrtoint ptr %240 to i32
  %244 = call i32 asm "@ __pv_stub\0A1:\09add\09$0, $1, $2\0A2:\09add\09$0, $0, $3\0A\09.pushsection .pv_table,\22a\22\0A\09.long\091b - ., 2b - .\0A\09.popsection\0A", "=r,r,I,I"(i32 %243, i32 -2130706432, i32 8454144) #18, !srcloc !38
  store i32 %244, ptr %11, align 4
  br label %249

245:                                              ; preds = %236
  %246 = load ptr, ptr %203, align 4
  %247 = call ptr @dma_alloc_attrs(ptr noundef %246, i32 noundef %214, ptr noundef nonnull %11, i32 noundef 3520, i32 noundef 0) #14
  %248 = icmp eq ptr %247, null
  br i1 %248, label %282, label %249

249:                                              ; preds = %245, %242, %228, %225
  %250 = phi ptr [ %247, %245 ], [ %240, %242 ], [ %223, %225 ], [ %230, %228 ]
  %251 = shl i32 %208, 4
  %252 = getelementptr i8, ptr %250, i32 %251
  %253 = getelementptr inbounds %struct.vring_avail, ptr %252, i32 0, i32 2
  %254 = getelementptr [0 x i16], ptr %253, i32 0, i32 %208
  %255 = ptrtoint ptr %254 to i32
  %256 = add i32 %2, 1
  %257 = add i32 %256, %255
  %258 = and i32 %257, %202
  %259 = insertvalue [4 x i32] poison, i32 %208, 0
  %260 = ptrtoint ptr %250 to i32
  %261 = insertvalue [4 x i32] %259, i32 %260, 1
  %262 = ptrtoint ptr %252 to i32
  %263 = insertvalue [4 x i32] %261, i32 %262, 2
  %264 = insertvalue [4 x i32] %263, i32 %258, 3
  %265 = call ptr @__vring_new_virtqueue(i32 noundef %0, [4 x i32] %264, ptr noundef %3, i1 noundef zeroext %4, i1 noundef zeroext %6, ptr noundef %7, ptr noundef %8, ptr noundef %9) #14
  %266 = icmp eq ptr %265, null
  br i1 %266, label %267, label %277

267:                                              ; preds = %249
  %268 = load i64, ptr %15, align 8
  %269 = and i64 %268, 8589934592
  %270 = icmp eq i64 %269, 0
  br i1 %270, label %274, label %271

271:                                              ; preds = %267
  %272 = load i32, ptr %11, align 4
  %273 = load ptr, ptr %203, align 4
  call void @dma_free_attrs(ptr noundef %273, i32 noundef %214, ptr noundef nonnull %250, i32 noundef %272, i32 noundef 0) #14
  br label %282

274:                                              ; preds = %267
  %275 = add i32 %214, 4095
  %276 = and i32 %275, -4096
  call void @free_pages_exact(ptr noundef nonnull %250, i32 noundef %276) #14
  br label %282

277:                                              ; preds = %249
  %278 = load i32, ptr %11, align 4
  %279 = getelementptr inbounds %struct.vring_virtqueue, ptr %265, i32 0, i32 11, i32 0, i32 7
  store i32 %278, ptr %279, align 4
  %280 = getelementptr inbounds %struct.vring_virtqueue, ptr %265, i32 0, i32 11, i32 0, i32 8
  store i32 %214, ptr %280, align 4
  %281 = getelementptr inbounds %struct.vring_virtqueue, ptr %265, i32 0, i32 13
  store i8 1, ptr %281, align 4
  br label %282

282:                                              ; preds = %277, %274, %271, %245, %237, %232, %205, %198
  %283 = phi ptr [ null, %205 ], [ %265, %277 ], [ null, %245 ], [ null, %271 ], [ null, %274 ], [ null, %237 ], [ null, %198 ], [ null, %232 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %11) #14
  br label %284

284:                                              ; preds = %282, %193
  %285 = phi ptr [ %194, %193 ], [ %283, %282 ]
  ret ptr %285
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @vring_new_virtqueue(i32 noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef %3, i1 noundef zeroext %4, i1 noundef zeroext %5, ptr noundef %6, ptr noundef %7, ptr noundef %8, ptr noundef %9) #0 {
  %11 = getelementptr inbounds %struct.virtio_device, ptr %3, i32 0, i32 11
  %12 = load i64, ptr %11, align 8
  %13 = and i64 %12, 17179869184
  %14 = icmp eq i64 %13, 0
  br i1 %14, label %15, label %32

15:                                               ; preds = %10
  %16 = shl i32 %1, 4
  %17 = getelementptr i8, ptr %6, i32 %16
  %18 = getelementptr inbounds %struct.vring_avail, ptr %17, i32 0, i32 2
  %19 = getelementptr [0 x i16], ptr %18, i32 0, i32 %1
  %20 = ptrtoint ptr %19 to i32
  %21 = add i32 %2, 1
  %22 = add i32 %21, %20
  %23 = sub i32 0, %2
  %24 = and i32 %22, %23
  %25 = insertvalue [4 x i32] poison, i32 %1, 0
  %26 = ptrtoint ptr %6 to i32
  %27 = insertvalue [4 x i32] %25, i32 %26, 1
  %28 = ptrtoint ptr %17 to i32
  %29 = insertvalue [4 x i32] %27, i32 %28, 2
  %30 = insertvalue [4 x i32] %29, i32 %24, 3
  %31 = tail call ptr @__vring_new_virtqueue(i32 noundef %0, [4 x i32] %30, ptr noundef %3, i1 noundef zeroext %4, i1 noundef zeroext %5, ptr noundef %7, ptr noundef %8, ptr noundef %9)
  br label %32

32:                                               ; preds = %15, %10
  %33 = phi ptr [ %31, %15 ], [ null, %10 ]
  ret ptr %33
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @vring_del_virtqueue(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.virtqueue, ptr %0, i32 0, i32 3
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.virtio_device, ptr %3, i32 0, i32 5
  tail call void @_raw_spin_lock(ptr noundef %4) #14
  %5 = getelementptr inbounds %struct.list_head, ptr %0, i32 0, i32 1
  %6 = load ptr, ptr %5, align 4
  %7 = load ptr, ptr %0, align 4
  %8 = getelementptr inbounds %struct.list_head, ptr %7, i32 0, i32 1
  store ptr %6, ptr %8, align 4
  store volatile ptr %7, ptr %6, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %0, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %5, align 4
  %9 = load ptr, ptr %2, align 4
  %10 = getelementptr inbounds %struct.virtio_device, ptr %9, i32 0, i32 5
  tail call void asm sideeffect "dmb ish", "~{memory}"() #14, !srcloc !33
  %11 = load i16, ptr %10, align 4
  %12 = add i16 %11, 1
  store i16 %12, ptr %10, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #14, !srcloc !34
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #14, !srcloc !35
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !36
  %13 = getelementptr inbounds %struct.vring_virtqueue, ptr %0, i32 0, i32 13
  %14 = load i8, ptr %13, align 4, !range !8
  %15 = icmp eq i8 %14, 0
  br i1 %15, label %95, label %16

16:                                               ; preds = %1
  %17 = getelementptr inbounds %struct.vring_virtqueue, ptr %0, i32 0, i32 1
  %18 = load i8, ptr %17, align 4, !range !8
  %19 = icmp eq i8 %18, 0
  %20 = load ptr, ptr %2, align 4
  br i1 %19, label %78, label %21

21:                                               ; preds = %16
  %22 = getelementptr inbounds %struct.vring_virtqueue, ptr %0, i32 0, i32 11, i32 0, i32 11
  %23 = load i32, ptr %22, align 4
  %24 = getelementptr inbounds %struct.vring_virtqueue, ptr %0, i32 0, i32 11, i32 0, i32 0, i32 1
  %25 = load ptr, ptr %24, align 4
  %26 = getelementptr inbounds %struct.virtio_device, ptr %20, i32 0, i32 11
  %27 = load i64, ptr %26, align 8
  %28 = and i64 %27, 8589934592
  %29 = icmp eq i64 %28, 0
  br i1 %29, label %35, label %30

30:                                               ; preds = %21
  %31 = getelementptr inbounds %struct.vring_virtqueue, ptr %0, i32 0, i32 11, i32 0, i32 8
  %32 = load i32, ptr %31, align 4
  %33 = getelementptr inbounds %struct.virtio_device, ptr %20, i32 0, i32 6, i32 1
  %34 = load ptr, ptr %33, align 4
  tail call void @dma_free_attrs(ptr noundef %34, i32 noundef %23, ptr noundef %25, i32 noundef %32, i32 noundef 0) #14
  br label %38

35:                                               ; preds = %21
  %36 = add i32 %23, 4095
  %37 = and i32 %36, -4096
  tail call void @free_pages_exact(ptr noundef %25, i32 noundef %37) #14
  br label %38

38:                                               ; preds = %35, %30
  %39 = load ptr, ptr %2, align 4
  %40 = getelementptr inbounds %struct.vring_virtqueue, ptr %0, i32 0, i32 11, i32 0, i32 12
  %41 = load i32, ptr %40, align 4
  %42 = getelementptr inbounds %struct.vring_virtqueue, ptr %0, i32 0, i32 11, i32 0, i32 0, i32 2
  %43 = load ptr, ptr %42, align 4
  %44 = getelementptr inbounds %struct.virtio_device, ptr %39, i32 0, i32 11
  %45 = load i64, ptr %44, align 8
  %46 = and i64 %45, 8589934592
  %47 = icmp eq i64 %46, 0
  br i1 %47, label %53, label %48

48:                                               ; preds = %38
  %49 = getelementptr inbounds %struct.vring_virtqueue, ptr %0, i32 0, i32 11, i32 0, i32 9
  %50 = load i32, ptr %49, align 4
  %51 = getelementptr inbounds %struct.virtio_device, ptr %39, i32 0, i32 6, i32 1
  %52 = load ptr, ptr %51, align 4
  tail call void @dma_free_attrs(ptr noundef %52, i32 noundef %41, ptr noundef %43, i32 noundef %50, i32 noundef 0) #14
  br label %56

53:                                               ; preds = %38
  %54 = add i32 %41, 4095
  %55 = and i32 %54, -4096
  tail call void @free_pages_exact(ptr noundef %43, i32 noundef %55) #14
  br label %56

56:                                               ; preds = %53, %48
  %57 = load ptr, ptr %2, align 4
  %58 = load i32, ptr %40, align 4
  %59 = getelementptr inbounds %struct.vring_virtqueue, ptr %0, i32 0, i32 11, i32 0, i32 0, i32 3
  %60 = load ptr, ptr %59, align 4
  %61 = getelementptr inbounds %struct.virtio_device, ptr %57, i32 0, i32 11
  %62 = load i64, ptr %61, align 8
  %63 = and i64 %62, 8589934592
  %64 = icmp eq i64 %63, 0
  br i1 %64, label %70, label %65

65:                                               ; preds = %56
  %66 = getelementptr inbounds %struct.vring_virtqueue, ptr %0, i32 0, i32 11, i32 0, i32 10
  %67 = load i32, ptr %66, align 4
  %68 = getelementptr inbounds %struct.virtio_device, ptr %57, i32 0, i32 6, i32 1
  %69 = load ptr, ptr %68, align 4
  tail call void @dma_free_attrs(ptr noundef %69, i32 noundef %58, ptr noundef %60, i32 noundef %67, i32 noundef 0) #14
  br label %73

70:                                               ; preds = %56
  %71 = add i32 %58, 4095
  %72 = and i32 %71, -4096
  tail call void @free_pages_exact(ptr noundef %60, i32 noundef %72) #14
  br label %73

73:                                               ; preds = %70, %65
  %74 = getelementptr inbounds %struct.vring_virtqueue, ptr %0, i32 0, i32 11, i32 0, i32 6
  %75 = load ptr, ptr %74, align 4
  tail call void @kfree(ptr noundef %75) #14
  %76 = getelementptr inbounds %struct.vring_virtqueue, ptr %0, i32 0, i32 11, i32 0, i32 7
  %77 = load ptr, ptr %76, align 4
  tail call void @kfree(ptr noundef %77) #14
  br label %95

78:                                               ; preds = %16
  %79 = getelementptr inbounds %struct.vring_virtqueue, ptr %0, i32 0, i32 11, i32 0, i32 8
  %80 = load i32, ptr %79, align 4
  %81 = getelementptr inbounds %struct.vring_virtqueue, ptr %0, i32 0, i32 11, i32 0, i32 0, i32 1
  %82 = load ptr, ptr %81, align 4
  %83 = getelementptr inbounds %struct.virtio_device, ptr %20, i32 0, i32 11
  %84 = load i64, ptr %83, align 8
  %85 = and i64 %84, 8589934592
  %86 = icmp eq i64 %85, 0
  br i1 %86, label %92, label %87

87:                                               ; preds = %78
  %88 = getelementptr inbounds %struct.vring_virtqueue, ptr %0, i32 0, i32 11, i32 0, i32 7
  %89 = load i32, ptr %88, align 4
  %90 = getelementptr inbounds %struct.virtio_device, ptr %20, i32 0, i32 6, i32 1
  %91 = load ptr, ptr %90, align 4
  tail call void @dma_free_attrs(ptr noundef %91, i32 noundef %80, ptr noundef %82, i32 noundef %89, i32 noundef 0) #14
  br label %95

92:                                               ; preds = %78
  %93 = add i32 %80, 4095
  %94 = and i32 %93, -4096
  tail call void @free_pages_exact(ptr noundef %82, i32 noundef %94) #14
  br label %95

95:                                               ; preds = %92, %87, %73, %1
  %96 = getelementptr inbounds %struct.vring_virtqueue, ptr %0, i32 0, i32 1
  %97 = load i8, ptr %96, align 4, !range !8
  %98 = icmp eq i8 %97, 0
  br i1 %98, label %99, label %104

99:                                               ; preds = %95
  %100 = getelementptr inbounds %struct.vring_virtqueue, ptr %0, i32 0, i32 11, i32 0, i32 4
  %101 = load ptr, ptr %100, align 4
  tail call void @kfree(ptr noundef %101) #14
  %102 = getelementptr inbounds %struct.vring_virtqueue, ptr %0, i32 0, i32 11, i32 0, i32 6
  %103 = load ptr, ptr %102, align 4
  tail call void @kfree(ptr noundef %103) #14
  br label %104

104:                                              ; preds = %99, %95
  tail call void @kfree(ptr noundef %0) #14
  ret void
}

; Function Attrs: argmemonly nofree norecurse nosync nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @vring_transport_features(ptr nocapture noundef %0) #6 {
  %2 = getelementptr inbounds %struct.virtio_device, ptr %0, i32 0, i32 11
  %3 = load i64, ptr %2, align 8
  %4 = and i64 %3, -175019917313
  store i64 %4, ptr %2, align 8
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define dso_local i32 @virtqueue_get_vring_size(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.vring_virtqueue, ptr %0, i32 0, i32 11
  %3 = load i32, ptr %2, align 4
  ret i32 %3
}

; Function Attrs: argmemonly mustprogress nofree norecurse nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define dso_local zeroext i1 @virtqueue_is_broken(ptr noundef %0) #8 {
  %2 = getelementptr inbounds %struct.vring_virtqueue, ptr %0, i32 0, i32 4
  %3 = load volatile i8, ptr %2, align 1, !range !8
  %4 = icmp ne i8 %3, 0
  ret i1 %4
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @virtio_break_device(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.virtio_device, ptr %0, i32 0, i32 5
  tail call void @_raw_spin_lock(ptr noundef %2) #14
  %3 = getelementptr inbounds %struct.virtio_device, ptr %0, i32 0, i32 10
  %4 = load ptr, ptr %3, align 4
  %5 = icmp eq ptr %4, %3
  br i1 %5, label %11, label %6

6:                                                ; preds = %6, %1
  %7 = phi ptr [ %9, %6 ], [ %4, %1 ]
  %8 = getelementptr inbounds %struct.vring_virtqueue, ptr %7, i32 0, i32 4
  store volatile i8 1, ptr %8, align 1
  %9 = load ptr, ptr %7, align 4
  %10 = icmp eq ptr %9, %3
  br i1 %10, label %11, label %6

11:                                               ; preds = %6, %1
  tail call void asm sideeffect "dmb ish", "~{memory}"() #14, !srcloc !33
  %12 = load i16, ptr %2, align 4
  %13 = add i16 %12, 1
  store i16 %13, ptr %2, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #14, !srcloc !34
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #14, !srcloc !35
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !36
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @virtqueue_get_desc_addr(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.vring_virtqueue, ptr %0, i32 0, i32 13
  %3 = load i8, ptr %2, align 4, !range !8
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %5, label %6, !prof !9

5:                                                ; preds = %1
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/virtio/virtio_ring.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2421, 0\0A.popsection", ""() #14, !srcloc !40
  unreachable

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.vring_virtqueue, ptr %0, i32 0, i32 1
  %8 = load i8, ptr %7, align 4, !range !8
  %9 = icmp eq i8 %8, 0
  %10 = getelementptr inbounds %struct.vring_virtqueue, ptr %0, i32 0, i32 11, i32 0, i32 8
  %11 = getelementptr inbounds %struct.vring_virtqueue, ptr %0, i32 0, i32 11, i32 0, i32 7
  %12 = select i1 %9, ptr %11, ptr %10
  %13 = load i32, ptr %12, align 4
  ret i32 %13
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @virtqueue_get_avail_addr(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.vring_virtqueue, ptr %0, i32 0, i32 13
  %3 = load i8, ptr %2, align 4, !range !8
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %5, label %6, !prof !9

5:                                                ; preds = %1
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/virtio/virtio_ring.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2434, 0\0A.popsection", ""() #14, !srcloc !41
  unreachable

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.vring_virtqueue, ptr %0, i32 0, i32 1
  %8 = load i8, ptr %7, align 4, !range !8
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %13, label %10

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.vring_virtqueue, ptr %0, i32 0, i32 11, i32 0, i32 9
  %12 = load i32, ptr %11, align 4
  br label %24

13:                                               ; preds = %6
  %14 = getelementptr inbounds %struct.vring_virtqueue, ptr %0, i32 0, i32 11, i32 0, i32 7
  %15 = load i32, ptr %14, align 4
  %16 = getelementptr inbounds %struct.vring_virtqueue, ptr %0, i32 0, i32 11, i32 0, i32 0, i32 2
  %17 = load ptr, ptr %16, align 4
  %18 = getelementptr inbounds %struct.vring_virtqueue, ptr %0, i32 0, i32 11, i32 0, i32 0, i32 1
  %19 = load ptr, ptr %18, align 4
  %20 = ptrtoint ptr %17 to i32
  %21 = ptrtoint ptr %19 to i32
  %22 = add i32 %15, %20
  %23 = sub i32 %22, %21
  br label %24

24:                                               ; preds = %13, %10
  %25 = phi i32 [ %12, %10 ], [ %23, %13 ]
  ret i32 %25
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @virtqueue_get_used_addr(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.vring_virtqueue, ptr %0, i32 0, i32 13
  %3 = load i8, ptr %2, align 4, !range !8
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %5, label %6, !prof !9

5:                                                ; preds = %1
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/virtio/virtio_ring.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2448, 0\0A.popsection", ""() #14, !srcloc !42
  unreachable

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.vring_virtqueue, ptr %0, i32 0, i32 1
  %8 = load i8, ptr %7, align 4, !range !8
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %13, label %10

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.vring_virtqueue, ptr %0, i32 0, i32 11, i32 0, i32 10
  %12 = load i32, ptr %11, align 4
  br label %24

13:                                               ; preds = %6
  %14 = getelementptr inbounds %struct.vring_virtqueue, ptr %0, i32 0, i32 11, i32 0, i32 7
  %15 = load i32, ptr %14, align 4
  %16 = getelementptr inbounds %struct.vring_virtqueue, ptr %0, i32 0, i32 11, i32 0, i32 0, i32 3
  %17 = load ptr, ptr %16, align 4
  %18 = getelementptr inbounds %struct.vring_virtqueue, ptr %0, i32 0, i32 11, i32 0, i32 0, i32 1
  %19 = load ptr, ptr %18, align 4
  %20 = ptrtoint ptr %17 to i32
  %21 = ptrtoint ptr %19 to i32
  %22 = add i32 %15, %20
  %23 = sub i32 %22, %21
  br label %24

24:                                               ; preds = %13, %10
  %25 = phi i32 [ %12, %10 ], [ %23, %13 ]
  ret i32 %25
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define dso_local ptr @virtqueue_get_vring(ptr noundef readnone %0) #9 {
  %2 = getelementptr inbounds %struct.vring_virtqueue, ptr %0, i32 0, i32 11
  ret ptr %2
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @vring_unmap_state_packed(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.vring_virtqueue, ptr %0, i32 0, i32 2
  %4 = load i8, ptr %3, align 1, !range !8
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %19, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.vring_desc_extra, ptr %1, i32 0, i32 2
  %8 = load i16, ptr %7, align 4
  %9 = getelementptr inbounds %struct.virtqueue, ptr %0, i32 0, i32 3
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr inbounds %struct.virtio_device, ptr %10, i32 0, i32 6, i32 1
  %12 = load ptr, ptr %11, align 4
  %13 = load i32, ptr %1, align 4
  %14 = getelementptr inbounds %struct.vring_desc_extra, ptr %1, i32 0, i32 1
  %15 = load i32, ptr %14, align 4
  %16 = and i16 %8, 2
  %17 = icmp eq i16 %16, 0
  %18 = select i1 %17, i32 1, i32 2
  tail call void @dma_unmap_page_attrs(ptr noundef %12, i32 noundef %13, i32 noundef %15, i32 noundef %18, i32 noundef 0) #14
  br label %19

19:                                               ; preds = %6, %2
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @vring_map_single(ptr nocapture noundef readonly %0, ptr noundef %1, i32 noundef %2) unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.vring_virtqueue, ptr %0, i32 0, i32 2
  %5 = load i8, ptr %4, align 1, !range !8
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %7, label %10

7:                                                ; preds = %3
  %8 = ptrtoint ptr %1 to i32
  %9 = tail call i32 asm "@ __pv_stub\0A1:\09add\09$0, $1, $2\0A2:\09add\09$0, $0, $3\0A\09.pushsection .pv_table,\22a\22\0A\09.long\091b - ., 2b - .\0A\09.popsection\0A", "=r,r,I,I"(i32 %8, i32 -2130706432, i32 8454144) #18, !srcloc !38
  br label %37

10:                                               ; preds = %3
  %11 = getelementptr inbounds %struct.virtqueue, ptr %0, i32 0, i32 3
  %12 = load ptr, ptr %11, align 4
  %13 = getelementptr inbounds %struct.virtio_device, ptr %12, i32 0, i32 6, i32 1
  %14 = load ptr, ptr %13, align 4
  %15 = tail call zeroext i1 @is_vmalloc_addr(ptr noundef %1) #14
  %16 = load i1, ptr @dma_map_single_attrs.__already_done, align 1
  %17 = xor i1 %16, true
  %18 = select i1 %15, i1 %17, i1 false
  br i1 %18, label %19, label %28, !prof !9

19:                                               ; preds = %10
  store i1 true, ptr @dma_map_single_attrs.__already_done, align 1
  %20 = tail call ptr @dev_driver_string(ptr noundef %14) #14
  %21 = getelementptr inbounds %struct.device, ptr %14, i32 0, i32 3
  %22 = load ptr, ptr %21, align 4
  %23 = icmp eq ptr %22, null
  br i1 %23, label %24, label %26

24:                                               ; preds = %19
  %25 = load ptr, ptr %14, align 4
  br label %26

26:                                               ; preds = %24, %19
  %27 = phi ptr [ %25, %24 ], [ %22, %19 ]
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 327, i32 noundef 9, ptr noundef nonnull @.str.2, ptr noundef %20, ptr noundef %27) #14
  br label %28

28:                                               ; preds = %26, %10
  br i1 %15, label %37, label %29

29:                                               ; preds = %28
  %30 = load ptr, ptr @mem_map, align 4
  %31 = ptrtoint ptr %1 to i32
  %32 = add i32 %31, 1073741824
  %33 = lshr i32 %32, 12
  %34 = getelementptr %struct.page, ptr %30, i32 %33
  %35 = and i32 %31, 4095
  %36 = tail call i32 @dma_map_page_attrs(ptr noundef %14, ptr noundef %34, i32 noundef %35, i32 noundef %2, i32 noundef 1, i32 noundef 0) #14
  br label %37

37:                                               ; preds = %29, %28, %7
  %38 = phi i32 [ %9, %7 ], [ %36, %29 ], [ -1, %28 ]
  ret i32 %38
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @is_vmalloc_addr(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dev_driver_string(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_map_page_attrs(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_unmap_page_attrs(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #10

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @detach_buf_packed(ptr nocapture noundef %0, i32 noundef %1, ptr noundef writeonly %2) unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.vring_virtqueue, ptr %0, i32 0, i32 11, i32 0, i32 6
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr %struct.vring_desc_state_packed, ptr %5, i32 %1
  store ptr null, ptr %6, align 4
  %7 = getelementptr inbounds %struct.vring_virtqueue, ptr %0, i32 0, i32 7
  %8 = load i32, ptr %7, align 4
  %9 = trunc i32 %8 to i16
  %10 = getelementptr inbounds %struct.vring_virtqueue, ptr %0, i32 0, i32 11, i32 0, i32 7
  %11 = load ptr, ptr %10, align 4
  %12 = getelementptr %struct.vring_desc_state_packed, ptr %5, i32 %1, i32 3
  %13 = load i16, ptr %12, align 2
  %14 = zext i16 %13 to i32
  %15 = getelementptr %struct.vring_desc_extra, ptr %11, i32 %14, i32 3
  store i16 %9, ptr %15, align 2
  store i32 %1, ptr %7, align 4
  %16 = getelementptr %struct.vring_desc_state_packed, ptr %5, i32 %1, i32 2
  %17 = load i16, ptr %16, align 4
  %18 = zext i16 %17 to i32
  %19 = getelementptr inbounds %struct.virtqueue, ptr %0, i32 0, i32 5
  %20 = load i32, ptr %19, align 4
  %21 = add i32 %20, %18
  store i32 %21, ptr %19, align 4
  %22 = getelementptr inbounds %struct.vring_virtqueue, ptr %0, i32 0, i32 2
  %23 = load i8, ptr %22, align 1, !range !8
  %24 = icmp eq i8 %23, 0
  br i1 %24, label %43, label %25, !prof !11

25:                                               ; preds = %3
  %26 = load i16, ptr %16, align 4
  %27 = icmp eq i16 %26, 0
  br i1 %27, label %43, label %28

28:                                               ; preds = %25
  %29 = load ptr, ptr %10, align 4
  br label %30

30:                                               ; preds = %30, %28
  %31 = phi ptr [ %35, %30 ], [ %29, %28 ]
  %32 = phi i32 [ %38, %30 ], [ %1, %28 ]
  %33 = phi i32 [ %39, %30 ], [ 0, %28 ]
  %34 = getelementptr %struct.vring_desc_extra, ptr %31, i32 %32
  tail call fastcc void @vring_unmap_state_packed(ptr noundef %0, ptr noundef %34)
  %35 = load ptr, ptr %10, align 4
  %36 = getelementptr %struct.vring_desc_extra, ptr %35, i32 %32, i32 3
  %37 = load i16, ptr %36, align 2
  %38 = zext i16 %37 to i32
  %39 = add nuw nsw i32 %33, 1
  %40 = load i16, ptr %16, align 4
  %41 = zext i16 %40 to i32
  %42 = icmp ult i32 %39, %41
  br i1 %42, label %30, label %43

43:                                               ; preds = %30, %25, %3
  %44 = getelementptr inbounds %struct.vring_virtqueue, ptr %0, i32 0, i32 5
  %45 = load i8, ptr %44, align 4, !range !8
  %46 = icmp eq i8 %45, 0
  br i1 %46, label %86, label %47

47:                                               ; preds = %43
  %48 = getelementptr %struct.vring_desc_state_packed, ptr %5, i32 %1, i32 1
  %49 = load ptr, ptr %48, align 4
  %50 = icmp eq ptr %49, null
  br i1 %50, label %91, label %51

51:                                               ; preds = %47
  %52 = load i8, ptr %22, align 1, !range !8
  %53 = icmp eq i8 %52, 0
  br i1 %53, label %85, label %54

54:                                               ; preds = %51
  %55 = load ptr, ptr %10, align 4
  %56 = getelementptr %struct.vring_desc_extra, ptr %55, i32 %1, i32 1
  %57 = load i32, ptr %56, align 4
  %58 = icmp ult i32 %57, 16
  br i1 %58, label %85, label %59

59:                                               ; preds = %54
  %60 = lshr i32 %57, 4
  %61 = getelementptr inbounds %struct.virtqueue, ptr %0, i32 0, i32 3
  br label %62

62:                                               ; preds = %83, %59
  %63 = phi i8 [ 1, %59 ], [ %84, %83 ]
  %64 = phi i32 [ 0, %59 ], [ %81, %83 ]
  %65 = icmp eq i8 %63, 0
  br i1 %65, label %80, label %66

66:                                               ; preds = %62
  %67 = getelementptr %struct.vring_packed_desc, ptr %49, i32 %64
  %68 = getelementptr %struct.vring_packed_desc, ptr %49, i32 %64, i32 3
  %69 = load i16, ptr %68, align 2
  %70 = load ptr, ptr %61, align 4
  %71 = getelementptr inbounds %struct.virtio_device, ptr %70, i32 0, i32 6, i32 1
  %72 = load ptr, ptr %71, align 4
  %73 = load i64, ptr %67, align 8
  %74 = trunc i64 %73 to i32
  %75 = getelementptr %struct.vring_packed_desc, ptr %49, i32 %64, i32 1
  %76 = load i32, ptr %75, align 8
  %77 = and i16 %69, 2
  %78 = icmp eq i16 %77, 0
  %79 = select i1 %78, i32 1, i32 2
  tail call void @dma_unmap_page_attrs(ptr noundef %72, i32 noundef %74, i32 noundef %76, i32 noundef %79, i32 noundef 0) #14
  br label %80

80:                                               ; preds = %66, %62
  %81 = add nuw nsw i32 %64, 1
  %82 = icmp eq i32 %81, %60
  br i1 %82, label %85, label %83

83:                                               ; preds = %80
  %84 = load i8, ptr %22, align 1, !range !8
  br label %62

85:                                               ; preds = %80, %54, %51
  tail call void @kfree(ptr noundef nonnull %49) #14
  store ptr null, ptr %48, align 4
  br label %91

86:                                               ; preds = %43
  %87 = icmp eq ptr %2, null
  br i1 %87, label %91, label %88

88:                                               ; preds = %86
  %89 = getelementptr %struct.vring_desc_state_packed, ptr %5, i32 %1, i32 1
  %90 = load ptr, ptr %89, align 4
  store ptr %90, ptr %2, align 4
  br label %91

91:                                               ; preds = %88, %86, %85, %47
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @detach_buf_split(ptr nocapture noundef %0, i32 noundef %1, ptr noundef writeonly %2) unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.virtqueue, ptr %0, i32 0, i32 3
  %5 = getelementptr inbounds %struct.vring_virtqueue, ptr %0, i32 0, i32 11, i32 0, i32 4
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr %struct.vring_desc_state_split, ptr %6, i32 %1
  store ptr null, ptr %7, align 4
  %8 = getelementptr inbounds %struct.vring_virtqueue, ptr %0, i32 0, i32 11, i32 0, i32 0, i32 1
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr %struct.vring_desc, ptr %9, i32 %1, i32 2
  %11 = load i16, ptr %10, align 4
  %12 = and i16 %11, 1
  %13 = icmp eq i16 %12, 0
  br i1 %13, label %52, label %14

14:                                               ; preds = %3
  %15 = getelementptr inbounds %struct.vring_virtqueue, ptr %0, i32 0, i32 11, i32 0, i32 6
  %16 = getelementptr inbounds %struct.vring_virtqueue, ptr %0, i32 0, i32 2
  %17 = getelementptr inbounds %struct.virtqueue, ptr %0, i32 0, i32 5
  br label %18

18:                                               ; preds = %38, %14
  %19 = phi ptr [ %9, %14 ], [ %39, %38 ]
  %20 = phi i32 [ %1, %14 ], [ %43, %38 ]
  %21 = load i8, ptr %16, align 1, !range !8
  %22 = icmp eq i8 %21, 0
  br i1 %22, label %38, label %23

23:                                               ; preds = %18
  %24 = load ptr, ptr %15, align 4
  %25 = getelementptr %struct.vring_desc_extra, ptr %24, i32 %20
  %26 = getelementptr %struct.vring_desc_extra, ptr %24, i32 %20, i32 2
  %27 = load i16, ptr %26, align 4
  %28 = load ptr, ptr %4, align 4
  %29 = getelementptr inbounds %struct.virtio_device, ptr %28, i32 0, i32 6, i32 1
  %30 = load ptr, ptr %29, align 4
  %31 = load i32, ptr %25, align 4
  %32 = getelementptr %struct.vring_desc_extra, ptr %24, i32 %20, i32 1
  %33 = load i32, ptr %32, align 4
  %34 = and i16 %27, 2
  %35 = icmp eq i16 %34, 0
  %36 = select i1 %35, i32 1, i32 2
  tail call void @dma_unmap_page_attrs(ptr noundef %30, i32 noundef %31, i32 noundef %33, i32 noundef %36, i32 noundef 0) #14
  %37 = load ptr, ptr %8, align 4
  br label %38

38:                                               ; preds = %23, %18
  %39 = phi ptr [ %19, %18 ], [ %37, %23 ]
  %40 = load ptr, ptr %15, align 4
  %41 = getelementptr %struct.vring_desc_extra, ptr %40, i32 %20, i32 3
  %42 = load i16, ptr %41, align 2
  %43 = zext i16 %42 to i32
  %44 = load i32, ptr %17, align 4
  %45 = add i32 %44, 1
  store i32 %45, ptr %17, align 4
  %46 = getelementptr %struct.vring_desc, ptr %39, i32 %43, i32 2
  %47 = load i16, ptr %46, align 4
  %48 = and i16 %47, 1
  %49 = icmp eq i16 %48, 0
  br i1 %49, label %50, label %18

50:                                               ; preds = %38
  %51 = zext i16 %42 to i32
  br label %52

52:                                               ; preds = %50, %3
  %53 = phi i32 [ %1, %3 ], [ %51, %50 ]
  %54 = getelementptr inbounds %struct.vring_virtqueue, ptr %0, i32 0, i32 11, i32 0, i32 6
  %55 = getelementptr inbounds %struct.vring_virtqueue, ptr %0, i32 0, i32 2
  %56 = load i8, ptr %55, align 1, !range !8
  %57 = icmp eq i8 %56, 0
  br i1 %57, label %72, label %58

58:                                               ; preds = %52
  %59 = load ptr, ptr %54, align 4
  %60 = getelementptr %struct.vring_desc_extra, ptr %59, i32 %53
  %61 = getelementptr %struct.vring_desc_extra, ptr %59, i32 %53, i32 2
  %62 = load i16, ptr %61, align 4
  %63 = load ptr, ptr %4, align 4
  %64 = getelementptr inbounds %struct.virtio_device, ptr %63, i32 0, i32 6, i32 1
  %65 = load ptr, ptr %64, align 4
  %66 = load i32, ptr %60, align 4
  %67 = getelementptr %struct.vring_desc_extra, ptr %59, i32 %53, i32 1
  %68 = load i32, ptr %67, align 4
  %69 = and i16 %62, 2
  %70 = icmp eq i16 %69, 0
  %71 = select i1 %70, i32 1, i32 2
  tail call void @dma_unmap_page_attrs(ptr noundef %65, i32 noundef %66, i32 noundef %68, i32 noundef %71, i32 noundef 0) #14
  br label %72

72:                                               ; preds = %58, %52
  %73 = getelementptr inbounds %struct.vring_virtqueue, ptr %0, i32 0, i32 7
  %74 = load i32, ptr %73, align 4
  %75 = trunc i32 %74 to i16
  %76 = load ptr, ptr %54, align 4
  %77 = getelementptr %struct.vring_desc_extra, ptr %76, i32 %53, i32 3
  store i16 %75, ptr %77, align 2
  store i32 %1, ptr %73, align 4
  %78 = getelementptr inbounds %struct.virtqueue, ptr %0, i32 0, i32 5
  %79 = load i32, ptr %78, align 4
  %80 = add i32 %79, 1
  store i32 %80, ptr %78, align 4
  %81 = getelementptr inbounds %struct.vring_virtqueue, ptr %0, i32 0, i32 5
  %82 = load i8, ptr %81, align 4, !range !8
  %83 = icmp eq i8 %82, 0
  br i1 %83, label %132, label %84

84:                                               ; preds = %72
  %85 = load ptr, ptr %5, align 4
  %86 = getelementptr %struct.vring_desc_state_split, ptr %85, i32 %1, i32 1
  %87 = load ptr, ptr %86, align 4
  %88 = icmp eq ptr %87, null
  br i1 %88, label %138, label %89

89:                                               ; preds = %84
  %90 = load ptr, ptr %54, align 4
  %91 = getelementptr %struct.vring_desc_extra, ptr %90, i32 %1, i32 1
  %92 = load i32, ptr %91, align 4
  %93 = getelementptr %struct.vring_desc_extra, ptr %90, i32 %1, i32 2
  %94 = load i16, ptr %93, align 4
  %95 = and i16 %94, 4
  %96 = icmp eq i16 %95, 0
  br i1 %96, label %97, label %98, !prof !9

97:                                               ; preds = %89
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/virtio/virtio_ring.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 729, 0\0A.popsection", ""() #14, !srcloc !43
  unreachable

98:                                               ; preds = %89
  %99 = icmp eq i32 %92, 0
  %100 = and i32 %92, 15
  %101 = icmp ne i32 %100, 0
  %102 = or i1 %99, %101
  br i1 %102, label %107, label %103, !prof !9

103:                                              ; preds = %98
  %104 = icmp ult i32 %92, 16
  br i1 %104, label %129, label %105

105:                                              ; preds = %103
  %106 = lshr i32 %92, 4
  br label %108

107:                                              ; preds = %98
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/virtio/virtio_ring.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 730, 0\0A.popsection", ""() #14, !srcloc !44
  unreachable

108:                                              ; preds = %126, %105
  %109 = phi i32 [ %127, %126 ], [ 0, %105 ]
  %110 = load i8, ptr %55, align 1, !range !8
  %111 = icmp eq i8 %110, 0
  br i1 %111, label %126, label %112

112:                                              ; preds = %108
  %113 = getelementptr %struct.vring_desc, ptr %87, i32 %109
  %114 = getelementptr %struct.vring_desc, ptr %87, i32 %109, i32 2
  %115 = load i16, ptr %114, align 4
  %116 = load ptr, ptr %4, align 4
  %117 = getelementptr inbounds %struct.virtio_device, ptr %116, i32 0, i32 6, i32 1
  %118 = load ptr, ptr %117, align 4
  %119 = load i64, ptr %113, align 8
  %120 = trunc i64 %119 to i32
  %121 = getelementptr %struct.vring_desc, ptr %87, i32 %109, i32 1
  %122 = load i32, ptr %121, align 8
  %123 = and i16 %115, 2
  %124 = icmp eq i16 %123, 0
  %125 = select i1 %124, i32 1, i32 2
  tail call void @dma_unmap_page_attrs(ptr noundef %118, i32 noundef %120, i32 noundef %122, i32 noundef %125, i32 noundef 0) #14
  br label %126

126:                                              ; preds = %112, %108
  %127 = add nuw nsw i32 %109, 1
  %128 = icmp eq i32 %127, %106
  br i1 %128, label %129, label %108

129:                                              ; preds = %126, %103
  tail call void @kfree(ptr noundef nonnull %87) #14
  %130 = load ptr, ptr %5, align 4
  %131 = getelementptr %struct.vring_desc_state_split, ptr %130, i32 %1, i32 1
  store ptr null, ptr %131, align 4
  br label %138

132:                                              ; preds = %72
  %133 = icmp eq ptr %2, null
  br i1 %133, label %138, label %134

134:                                              ; preds = %132
  %135 = load ptr, ptr %5, align 4
  %136 = getelementptr %struct.vring_desc_state_split, ptr %135, i32 %1, i32 1
  %137 = load ptr, ptr %136, align 4
  store ptr %137, ptr %2, align 4
  br label %138

138:                                              ; preds = %134, %132, %129, %84
  ret void
}

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #11

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #12

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #13

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @alloc_pages_exact(i32 noundef, i32 noundef) local_unnamed_addr #12

; Function Attrs: null_pointer_is_valid
declare dso_local void @free_pages_exact(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dma_alloc_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #10

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_free_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctpop.i32(i32) #13

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { argmemonly nofree nounwind willreturn writeonly }
attributes #6 = { argmemonly nofree norecurse nosync nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { argmemonly mustprogress nofree norecurse nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #10 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #11 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #12 = { null_pointer_is_valid allocsize(0) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #13 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #14 = { nounwind }
attributes #15 = { nounwind allocsize(0) }
attributes #16 = { cold nounwind }
attributes #17 = { nounwind allocsize(2) }
attributes #18 = { nounwind readnone }

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
!8 = !{i8 0, i8 2}
!9 = !{!"branch_weights", i32 1, i32 2000}
!10 = !{i64 2152790410, i64 2152790904, i64 2152790447, i64 2152790503, i64 2152790537, i64 2152790561, i64 2152790602, i64 2152790623, i64 2152790651, i64 2152790685}
!11 = !{!"branch_weights", i32 2000, i32 1}
!12 = !{i64 2152791470, i64 2152791964, i64 2152791507, i64 2152791563, i64 2152791597, i64 2152791621, i64 2152791662, i64 2152791683, i64 2152791711, i64 2152791745}
!13 = !{i64 2152792558, i64 2152793052, i64 2152792595, i64 2152792651, i64 2152792685, i64 2152792709, i64 2152792750, i64 2152792771, i64 2152792799, i64 2152792833}
!14 = !{i64 2152786910, i64 2152787404, i64 2152786947, i64 2152787003, i64 2152787037, i64 2152787061, i64 2152787102, i64 2152787123, i64 2152787151, i64 2152787185}
!15 = !{i64 2152609657}
!16 = !{i64 2152609729}
!17 = !{i64 2152795469, i64 2152795963, i64 2152795506, i64 2152795562, i64 2152795596, i64 2152795620, i64 2152795661, i64 2152795682, i64 2152795710, i64 2152795744}
!18 = !{i64 2152739963, i64 2152740456, i64 2152740000, i64 2152740056, i64 2152740090, i64 2152740114, i64 2152740155, i64 2152740176, i64 2152740204, i64 2152740238}
!19 = !{i64 2152741020, i64 2152741513, i64 2152741057, i64 2152741113, i64 2152741147, i64 2152741171, i64 2152741212, i64 2152741233, i64 2152741261, i64 2152741295}
!20 = !{i64 2152742105, i64 2152742598, i64 2152742142, i64 2152742198, i64 2152742232, i64 2152742256, i64 2152742297, i64 2152742318, i64 2152742346, i64 2152742380}
!21 = !{i64 2152608868}
!22 = !{i64 2152608985}
!23 = !{i64 2152609290}
!24 = !{i64 2152609358}
!25 = !{i64 2152806663}
!26 = !{i64 2152809648}
!27 = !{i64 2152756873}
!28 = !{i64 2152760516}
!29 = !{i64 2152774031}
!30 = !{i64 2152777688}
!31 = !{i64 2152816616, i64 2152817110, i64 2152816653, i64 2152816709, i64 2152816743, i64 2152816767, i64 2152816808, i64 2152816829, i64 2152816857, i64 2152816891}
!32 = !{i64 2152779422, i64 2152779915, i64 2152779459, i64 2152779515, i64 2152779549, i64 2152779573, i64 2152779614, i64 2152779635, i64 2152779663, i64 2152779697}
!33 = !{i64 2149095396}
!34 = !{i64 2149091220}
!35 = !{i64 2149091295, i64 2149091322, i64 2149091369, i64 2149091391, i64 2149091419, i64 2149091439}
!36 = !{i64 2149118399}
!37 = !{!"auto-init"}
!38 = !{i64 2148878703, i64 2148878726, i64 2148878758, i64 2148878790, i64 2148878828, i64 2148878858}
!39 = !{i32 0, i32 33}
!40 = !{i64 2152887947, i64 2152888441, i64 2152887984, i64 2152888040, i64 2152888074, i64 2152888098, i64 2152888139, i64 2152888160, i64 2152888188, i64 2152888222}
!41 = !{i64 2152891627, i64 2152892121, i64 2152891664, i64 2152891720, i64 2152891754, i64 2152891778, i64 2152891819, i64 2152891840, i64 2152891868, i64 2152891902}
!42 = !{i64 2152895329, i64 2152895823, i64 2152895366, i64 2152895422, i64 2152895456, i64 2152895480, i64 2152895521, i64 2152895542, i64 2152895570, i64 2152895604}
!43 = !{i64 2152746970, i64 2152747463, i64 2152747007, i64 2152747063, i64 2152747097, i64 2152747121, i64 2152747162, i64 2152747183, i64 2152747211, i64 2152747245}
!44 = !{i64 2152748075, i64 2152748568, i64 2152748112, i64 2152748168, i64 2152748202, i64 2152748226, i64 2152748267, i64 2152748288, i64 2152748316, i64 2152748350}
