; ModuleID = '/llk/IR/drivers/dma/dmaengine.c_pt.bc'
source_filename = "../drivers/dma/dmaengine.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_dma_sync_wait:\09\09\09\09\09"
module asm "\09.asciz \09\22dma_sync_wait\22\09\09\09\09\09"
module asm "__kstrtabns_dma_sync_wait:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_dma_find_channel:\09\09\09\09\09"
module asm "\09.asciz \09\22dma_find_channel\22\09\09\09\09\09"
module asm "__kstrtabns_dma_find_channel:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_dma_issue_pending_all:\09\09\09\09\09"
module asm "\09.asciz \09\22dma_issue_pending_all\22\09\09\09\09\09"
module asm "__kstrtabns_dma_issue_pending_all:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_dma_get_slave_caps:\09\09\09\09\09"
module asm "\09.asciz \09\22dma_get_slave_caps\22\09\09\09\09\09"
module asm "__kstrtabns_dma_get_slave_caps:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_dma_get_slave_channel:\09\09\09\09\09"
module asm "\09.asciz \09\22dma_get_slave_channel\22\09\09\09\09\09"
module asm "__kstrtabns_dma_get_slave_channel:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_dma_get_any_slave_channel:\09\09\09\09\09"
module asm "\09.asciz \09\22dma_get_any_slave_channel\22\09\09\09\09\09"
module asm "__kstrtabns_dma_get_any_slave_channel:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___dma_request_channel:\09\09\09\09\09"
module asm "\09.asciz \09\22__dma_request_channel\22\09\09\09\09\09"
module asm "__kstrtabns___dma_request_channel:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_dma_request_chan:\09\09\09\09\09"
module asm "\09.asciz \09\22dma_request_chan\22\09\09\09\09\09"
module asm "__kstrtabns_dma_request_chan:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_dma_request_chan_by_mask:\09\09\09\09\09"
module asm "\09.asciz \09\22dma_request_chan_by_mask\22\09\09\09\09\09"
module asm "__kstrtabns_dma_request_chan_by_mask:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_dma_release_channel:\09\09\09\09\09"
module asm "\09.asciz \09\22dma_release_channel\22\09\09\09\09\09"
module asm "__kstrtabns_dma_release_channel:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_dmaengine_get:\09\09\09\09\09"
module asm "\09.asciz \09\22dmaengine_get\22\09\09\09\09\09"
module asm "__kstrtabns_dmaengine_get:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_dmaengine_put:\09\09\09\09\09"
module asm "\09.asciz \09\22dmaengine_put\22\09\09\09\09\09"
module asm "__kstrtabns_dmaengine_put:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_dma_async_device_channel_register:\09\09\09\09\09"
module asm "\09.asciz \09\22dma_async_device_channel_register\22\09\09\09\09\09"
module asm "__kstrtabns_dma_async_device_channel_register:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_dma_async_device_channel_unregister:\09\09\09\09\09"
module asm "\09.asciz \09\22dma_async_device_channel_unregister\22\09\09\09\09\09"
module asm "__kstrtabns_dma_async_device_channel_unregister:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_dma_async_device_register:\09\09\09\09\09"
module asm "\09.asciz \09\22dma_async_device_register\22\09\09\09\09\09"
module asm "__kstrtabns_dma_async_device_register:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_dma_async_device_unregister:\09\09\09\09\09"
module asm "\09.asciz \09\22dma_async_device_unregister\22\09\09\09\09\09"
module asm "__kstrtabns_dma_async_device_unregister:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_dmaenginem_async_device_register:\09\09\09\09\09"
module asm "\09.asciz \09\22dmaenginem_async_device_register\22\09\09\09\09\09"
module asm "__kstrtabns_dmaenginem_async_device_register:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_dmaengine_unmap_put:\09\09\09\09\09"
module asm "\09.asciz \09\22dmaengine_unmap_put\22\09\09\09\09\09"
module asm "__kstrtabns_dmaengine_unmap_put:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_dmaengine_get_unmap_data:\09\09\09\09\09"
module asm "\09.asciz \09\22dmaengine_get_unmap_data\22\09\09\09\09\09"
module asm "__kstrtabns_dmaengine_get_unmap_data:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_dma_async_tx_descriptor_init:\09\09\09\09\09"
module asm "\09.asciz \09\22dma_async_tx_descriptor_init\22\09\09\09\09\09"
module asm "__kstrtabns_dma_async_tx_descriptor_init:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_dmaengine_desc_attach_metadata:\09\09\09\09\09"
module asm "\09.asciz \09\22dmaengine_desc_attach_metadata\22\09\09\09\09\09"
module asm "__kstrtabns_dmaengine_desc_attach_metadata:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_dmaengine_desc_get_metadata_ptr:\09\09\09\09\09"
module asm "\09.asciz \09\22dmaengine_desc_get_metadata_ptr\22\09\09\09\09\09"
module asm "__kstrtabns_dmaengine_desc_get_metadata_ptr:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_dmaengine_desc_set_metadata_len:\09\09\09\09\09"
module asm "\09.asciz \09\22dmaengine_desc_set_metadata_len\22\09\09\09\09\09"
module asm "__kstrtabns_dmaengine_desc_set_metadata_len:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_dma_wait_for_async_tx:\09\09\09\09\09"
module asm "\09.asciz \09\22dma_wait_for_async_tx\22\09\09\09\09\09"
module asm "__kstrtabns_dma_wait_for_async_tx:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_dma_run_dependencies:\09\09\09\09\09"
module asm "\09.asciz \09\22dma_run_dependencies\22\09\09\09\09\09"
module asm "__kstrtabns_dma_run_dependencies:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.lock_class_key = type {}
%struct.ida = type { %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.dma_cap_mask_t = type { [1 x i32] }
%struct.cpumask = type { [1 x i32] }
%struct.class = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.attribute_group = type { ptr, ptr, ptr, ptr, ptr }
%struct.device_attribute = type { %struct.attribute, ptr, ptr }
%struct.attribute = type { ptr, i16 }
%struct.dmaengine_unmap_pool = type { ptr, ptr, ptr, i32 }
%struct.file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dma_tx_state = type { i32, i32, i32, i32 }
%struct.dma_device = type { %struct.kref, i32, i32, %struct.list_head, %struct.list_head, %struct.dma_filter, %struct.dma_cap_mask_t, i32, i16, i16, i32, i32, i32, i32, i32, ptr, ptr, %struct.ida, %struct.mutex, i32, i32, i32, i32, i32, i32, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.dma_filter = type { ptr, i32, ptr }
%struct.dma_slave_caps = type { i32, i32, i32, i32, i32, i32, i8, i8, i8, i32, i8 }
%struct.dma_chan = type { ptr, ptr, i32, i32, i32, ptr, ptr, ptr, %struct.list_head, ptr, i32, i32, ptr, ptr, ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
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
%struct.dma_slave_map = type { ptr, ptr, ptr }
%struct.dma_chan_dev = type { ptr, %struct.device, i32, i8 }
%struct.dma_router = type { ptr, ptr }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dmaengine_unmap_data = type { i16, i8, i8, i8, ptr, %struct.kref, i32, [0 x i32] }
%struct.dma_async_tx_descriptor = type { i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, %struct.spinlock }
%struct.dma_descriptor_metadata_ops = type { ptr, ptr, ptr }
%struct.dma_chan_percpu = type { i32, i32 }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.64, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.65, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.66, ptr, %struct.address_space, %struct.list_head, %union.anon.67, i32, i32, ptr, ptr }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%union.anon.64 = type { i32 }
%struct.timespec64 = type { i64, i32 }
%struct.seqcount = type { i32 }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head }
%struct.hlist_node = type { ptr, ptr }
%union.anon.65 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.atomic64_t = type { i64 }
%union.anon.66 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%union.anon.67 = type { ptr }

@__initcall__kmod_dmaengine__224_293_dma_channel_table_init3 = internal global ptr @dma_channel_table_init, section ".initcall3.init", align 4
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 64
@.str = private unnamed_addr constant [14 x i8] c"%s: timeout!\0A\00", align 1
@__func__.dma_sync_wait = private unnamed_addr constant [14 x i8] c"dma_sync_wait\00", align 1
@__kstrtab_dma_sync_wait = external dso_local constant [0 x i8], align 1
@__kstrtabns_dma_sync_wait = external dso_local constant [0 x i8], align 1
@__ksymtab_dma_sync_wait = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @dma_sync_wait to i32), ptr @__kstrtab_dma_sync_wait, ptr @__kstrtabns_dma_sync_wait }, section "___ksymtab+dma_sync_wait", align 4
@channel_table = internal unnamed_addr global [17 x ptr] zeroinitializer, align 4
@__kstrtab_dma_find_channel = external dso_local constant [0 x i8], align 1
@__kstrtabns_dma_find_channel = external dso_local constant [0 x i8], align 1
@__ksymtab_dma_find_channel = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @dma_find_channel to i32), ptr @__kstrtab_dma_find_channel, ptr @__kstrtabns_dma_find_channel }, section "___ksymtab+dma_find_channel", align 4
@dma_device_list = internal global %struct.list_head { ptr @dma_device_list, ptr @dma_device_list }, align 4
@__kstrtab_dma_issue_pending_all = external dso_local constant [0 x i8], align 1
@__kstrtabns_dma_issue_pending_all = external dso_local constant [0 x i8], align 1
@__ksymtab_dma_issue_pending_all = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @dma_issue_pending_all to i32), ptr @__kstrtab_dma_issue_pending_all, ptr @__kstrtabns_dma_issue_pending_all }, section "___ksymtab+dma_issue_pending_all", align 4
@__kstrtab_dma_get_slave_caps = external dso_local constant [0 x i8], align 1
@__kstrtabns_dma_get_slave_caps = external dso_local constant [0 x i8], align 1
@__ksymtab_dma_get_slave_caps = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @dma_get_slave_caps to i32), ptr @__kstrtab_dma_get_slave_caps, ptr @__kstrtabns_dma_get_slave_caps }, section "___ksymtab_gpl+dma_get_slave_caps", align 4
@dma_list_mutex = internal global %struct.mutex { %struct.atomic_t zeroinitializer, %struct.raw_spinlock zeroinitializer, %struct.optimistic_spin_queue zeroinitializer, %struct.list_head { ptr getelementptr (i8, ptr @dma_list_mutex, i64 12), ptr getelementptr (i8, ptr @dma_list_mutex, i64 12) } }, align 4
@__kstrtab_dma_get_slave_channel = external dso_local constant [0 x i8], align 1
@__kstrtabns_dma_get_slave_channel = external dso_local constant [0 x i8], align 1
@__ksymtab_dma_get_slave_channel = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @dma_get_slave_channel to i32), ptr @__kstrtab_dma_get_slave_channel, ptr @__kstrtabns_dma_get_slave_channel }, section "___ksymtab_gpl+dma_get_slave_channel", align 4
@__kstrtab_dma_get_any_slave_channel = external dso_local constant [0 x i8], align 1
@__kstrtabns_dma_get_any_slave_channel = external dso_local constant [0 x i8], align 1
@__ksymtab_dma_get_any_slave_channel = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @dma_get_any_slave_channel to i32), ptr @__kstrtab_dma_get_any_slave_channel, ptr @__kstrtabns_dma_get_any_slave_channel }, section "___ksymtab_gpl+dma_get_any_slave_channel", align 4
@__kstrtab___dma_request_channel = external dso_local constant [0 x i8], align 1
@__kstrtabns___dma_request_channel = external dso_local constant [0 x i8], align 1
@__ksymtab___dma_request_channel = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__dma_request_channel to i32), ptr @__kstrtab___dma_request_channel, ptr @__kstrtabns___dma_request_channel }, section "___ksymtab_gpl+__dma_request_channel", align 4
@.str.1 = private unnamed_addr constant [6 x i8] c"%s:%s\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"dma:%s\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"slave\00", align 1
@.str.4 = private unnamed_addr constant [30 x i8] c"Cannot create DMA %s symlink\0A\00", align 1
@__kstrtab_dma_request_chan = external dso_local constant [0 x i8], align 1
@__kstrtabns_dma_request_chan = external dso_local constant [0 x i8], align 1
@__ksymtab_dma_request_chan = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @dma_request_chan to i32), ptr @__kstrtab_dma_request_chan, ptr @__kstrtabns_dma_request_chan }, section "___ksymtab_gpl+dma_request_chan", align 4
@__kstrtab_dma_request_chan_by_mask = external dso_local constant [0 x i8], align 1
@__kstrtabns_dma_request_chan_by_mask = external dso_local constant [0 x i8], align 1
@__ksymtab_dma_request_chan_by_mask = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @dma_request_chan_by_mask to i32), ptr @__kstrtab_dma_request_chan_by_mask, ptr @__kstrtabns_dma_request_chan_by_mask }, section "___ksymtab_gpl+dma_request_chan_by_mask", align 4
@dma_release_channel.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.5 = private unnamed_addr constant [24 x i8] c"drivers/dma/dmaengine.c\00", align 1
@.str.6 = private unnamed_addr constant [30 x i8] c"chan reference count %d != 1\0A\00", align 1
@__kstrtab_dma_release_channel = external dso_local constant [0 x i8], align 1
@__kstrtabns_dma_release_channel = external dso_local constant [0 x i8], align 1
@__ksymtab_dma_release_channel = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @dma_release_channel to i32), ptr @__kstrtab_dma_release_channel, ptr @__kstrtabns_dma_release_channel }, section "___ksymtab_gpl+dma_release_channel", align 4
@dmaengine_ref_count = internal unnamed_addr global i32 0, align 4
@__kstrtab_dmaengine_get = external dso_local constant [0 x i8], align 1
@__kstrtabns_dmaengine_get = external dso_local constant [0 x i8], align 1
@__ksymtab_dmaengine_get = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @dmaengine_get to i32), ptr @__kstrtab_dmaengine_get, ptr @__kstrtabns_dmaengine_get }, section "___ksymtab+dmaengine_get", align 4
@__kstrtab_dmaengine_put = external dso_local constant [0 x i8], align 1
@__kstrtabns_dmaengine_put = external dso_local constant [0 x i8], align 1
@__ksymtab_dmaengine_put = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @dmaengine_put to i32), ptr @__kstrtab_dmaengine_put, ptr @__kstrtabns_dmaengine_put }, section "___ksymtab+dmaengine_put", align 4
@__kstrtab_dma_async_device_channel_register = external dso_local constant [0 x i8], align 1
@__kstrtabns_dma_async_device_channel_register = external dso_local constant [0 x i8], align 1
@__ksymtab_dma_async_device_channel_register = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @dma_async_device_channel_register to i32), ptr @__kstrtab_dma_async_device_channel_register, ptr @__kstrtabns_dma_async_device_channel_register }, section "___ksymtab_gpl+dma_async_device_channel_register", align 4
@__kstrtab_dma_async_device_channel_unregister = external dso_local constant [0 x i8], align 1
@__kstrtabns_dma_async_device_channel_unregister = external dso_local constant [0 x i8], align 1
@__ksymtab_dma_async_device_channel_unregister = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @dma_async_device_channel_unregister to i32), ptr @__kstrtab_dma_async_device_channel_unregister, ptr @__kstrtabns_dma_async_device_channel_unregister }, section "___ksymtab_gpl+dma_async_device_channel_unregister", align 4
@.str.7 = private unnamed_addr constant [38 x i8] c"\013dmaengine: DMAdevice must have dev\0A\00", align 1
@.str.8 = private unnamed_addr constant [52 x i8] c"Device claims capability %s, but op is not defined\0A\00", align 1
@.str.9 = private unnamed_addr constant [11 x i8] c"DMA_MEMCPY\00", align 1
@.str.10 = private unnamed_addr constant [14 x i8] c"DMA_MEMCPY_SG\00", align 1
@.str.11 = private unnamed_addr constant [8 x i8] c"DMA_XOR\00", align 1
@.str.12 = private unnamed_addr constant [12 x i8] c"DMA_XOR_VAL\00", align 1
@.str.13 = private unnamed_addr constant [7 x i8] c"DMA_PQ\00", align 1
@.str.14 = private unnamed_addr constant [11 x i8] c"DMA_PQ_VAL\00", align 1
@.str.15 = private unnamed_addr constant [11 x i8] c"DMA_MEMSET\00", align 1
@.str.16 = private unnamed_addr constant [14 x i8] c"DMA_INTERRUPT\00", align 1
@.str.17 = private unnamed_addr constant [11 x i8] c"DMA_CYCLIC\00", align 1
@.str.18 = private unnamed_addr constant [15 x i8] c"DMA_INTERLEAVE\00", align 1
@.str.19 = private unnamed_addr constant [33 x i8] c"Device tx_status is not defined\0A\00", align 1
@.str.20 = private unnamed_addr constant [37 x i8] c"Device issue_pending is not defined\0A\00", align 1
@dma_async_device_register.__key = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.21 = private unnamed_addr constant [20 x i8] c"&device->chan_mutex\00", align 1
@dma_ida = internal global %struct.ida { %struct.xarray { %struct.spinlock zeroinitializer, i32 33554437, ptr null } }, align 4
@__kstrtab_dma_async_device_register = external dso_local constant [0 x i8], align 1
@__kstrtabns_dma_async_device_register = external dso_local constant [0 x i8], align 1
@__ksymtab_dma_async_device_register = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @dma_async_device_register to i32), ptr @__kstrtab_dma_async_device_register, ptr @__kstrtabns_dma_async_device_register }, section "___ksymtab+dma_async_device_register", align 4
@__kstrtab_dma_async_device_unregister = external dso_local constant [0 x i8], align 1
@__kstrtabns_dma_async_device_unregister = external dso_local constant [0 x i8], align 1
@__ksymtab_dma_async_device_unregister = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @dma_async_device_unregister to i32), ptr @__kstrtab_dma_async_device_unregister, ptr @__kstrtabns_dma_async_device_unregister }, section "___ksymtab+dma_async_device_unregister", align 4
@.str.22 = private unnamed_addr constant [20 x i8] c"dmam_device_release\00", align 1
@__kstrtab_dmaenginem_async_device_register = external dso_local constant [0 x i8], align 1
@__kstrtabns_dmaenginem_async_device_register = external dso_local constant [0 x i8], align 1
@__ksymtab_dmaenginem_async_device_register = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @dmaenginem_async_device_register to i32), ptr @__kstrtab_dmaenginem_async_device_register, ptr @__kstrtabns_dmaenginem_async_device_register }, section "___ksymtab+dmaenginem_async_device_register", align 4
@__kstrtab_dmaengine_unmap_put = external dso_local constant [0 x i8], align 1
@__kstrtabns_dmaengine_unmap_put = external dso_local constant [0 x i8], align 1
@__ksymtab_dmaengine_unmap_put = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @dmaengine_unmap_put to i32), ptr @__kstrtab_dmaengine_unmap_put, ptr @__kstrtabns_dmaengine_unmap_put }, section "___ksymtab_gpl+dmaengine_unmap_put", align 4
@__kstrtab_dmaengine_get_unmap_data = external dso_local constant [0 x i8], align 1
@__kstrtabns_dmaengine_get_unmap_data = external dso_local constant [0 x i8], align 1
@__ksymtab_dmaengine_get_unmap_data = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @dmaengine_get_unmap_data to i32), ptr @__kstrtab_dmaengine_get_unmap_data, ptr @__kstrtabns_dmaengine_get_unmap_data }, section "___ksymtab+dmaengine_get_unmap_data", align 4
@__kstrtab_dma_async_tx_descriptor_init = external dso_local constant [0 x i8], align 1
@__kstrtabns_dma_async_tx_descriptor_init = external dso_local constant [0 x i8], align 1
@__ksymtab_dma_async_tx_descriptor_init = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @dma_async_tx_descriptor_init to i32), ptr @__kstrtab_dma_async_tx_descriptor_init, ptr @__kstrtabns_dma_async_tx_descriptor_init }, section "___ksymtab+dma_async_tx_descriptor_init", align 4
@__kstrtab_dmaengine_desc_attach_metadata = external dso_local constant [0 x i8], align 1
@__kstrtabns_dmaengine_desc_attach_metadata = external dso_local constant [0 x i8], align 1
@__ksymtab_dmaengine_desc_attach_metadata = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @dmaengine_desc_attach_metadata to i32), ptr @__kstrtab_dmaengine_desc_attach_metadata, ptr @__kstrtabns_dmaengine_desc_attach_metadata }, section "___ksymtab_gpl+dmaengine_desc_attach_metadata", align 4
@__kstrtab_dmaengine_desc_get_metadata_ptr = external dso_local constant [0 x i8], align 1
@__kstrtabns_dmaengine_desc_get_metadata_ptr = external dso_local constant [0 x i8], align 1
@__ksymtab_dmaengine_desc_get_metadata_ptr = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @dmaengine_desc_get_metadata_ptr to i32), ptr @__kstrtab_dmaengine_desc_get_metadata_ptr, ptr @__kstrtabns_dmaengine_desc_get_metadata_ptr }, section "___ksymtab_gpl+dmaengine_desc_get_metadata_ptr", align 4
@__kstrtab_dmaengine_desc_set_metadata_len = external dso_local constant [0 x i8], align 1
@__kstrtabns_dmaengine_desc_set_metadata_len = external dso_local constant [0 x i8], align 1
@__ksymtab_dmaengine_desc_set_metadata_len = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @dmaengine_desc_set_metadata_len to i32), ptr @__kstrtab_dmaengine_desc_set_metadata_len, ptr @__kstrtabns_dmaengine_desc_set_metadata_len }, section "___ksymtab_gpl+dmaengine_desc_set_metadata_len", align 4
@.str.23 = private unnamed_addr constant [46 x i8] c"%s timeout waiting for descriptor submission\0A\00", align 1
@__func__.dma_wait_for_async_tx = private unnamed_addr constant [22 x i8] c"dma_wait_for_async_tx\00", align 1
@__kstrtab_dma_wait_for_async_tx = external dso_local constant [0 x i8], align 1
@__kstrtabns_dma_wait_for_async_tx = external dso_local constant [0 x i8], align 1
@__ksymtab_dma_wait_for_async_tx = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @dma_wait_for_async_tx to i32), ptr @__kstrtab_dma_wait_for_async_tx, ptr @__kstrtabns_dma_wait_for_async_tx }, section "___ksymtab_gpl+dma_wait_for_async_tx", align 4
@__kstrtab_dma_run_dependencies = external dso_local constant [0 x i8], align 1
@__kstrtabns_dma_run_dependencies = external dso_local constant [0 x i8], align 1
@__ksymtab_dma_run_dependencies = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @dma_run_dependencies to i32), ptr @__kstrtab_dma_run_dependencies, ptr @__kstrtabns_dma_run_dependencies }, section "___ksymtab_gpl+dma_run_dependencies", align 4
@__initcall__kmod_dmaengine__231_1665_dma_bus_init3 = internal global ptr @dma_bus_init, section ".initcall3.init", align 4
@dma_cap_mask_all = internal global %struct.dma_cap_mask_t zeroinitializer, align 4
@.str.24 = private unnamed_addr constant [59 x i8] c"\013dmaengine: dmaengine dma_channel_table_init failure: %d\0A\00", align 1
@__cpu_possible_mask = external dso_local global %struct.cpumask, align 4
@nr_cpu_ids = external dso_local local_unnamed_addr global i32, align 4
@__per_cpu_offset = external dso_local local_unnamed_addr global [16 x i32], align 4
@__cpu_online_mask = external dso_local global %struct.cpumask, align 4
@.str.25 = private unnamed_addr constant [51 x i8] c"\013dmaengine: %s: unable to alloc ida for chan: %d\0A\00", align 1
@__func__.__dma_async_device_channel_register = private unnamed_addr constant [36 x i8] c"__dma_async_device_channel_register\00", align 1
@dma_devclass = internal global %struct.class { ptr @.str.27, ptr null, ptr null, ptr @dma_dev_groups, ptr null, ptr null, ptr null, ptr null, ptr @chan_dev_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@.str.26 = private unnamed_addr constant [12 x i8] c"dma%dchan%d\00", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@.str.27 = private unnamed_addr constant [4 x i8] c"dma\00", align 1
@dma_dev_groups = internal global [2 x ptr] [ptr @dma_dev_group, ptr null], align 4
@dma_dev_group = internal constant %struct.attribute_group { ptr null, ptr null, ptr null, ptr @dma_dev_attrs, ptr null }, align 4
@dma_dev_attrs = internal global [4 x ptr] [ptr @dev_attr_memcpy_count, ptr @dev_attr_bytes_transferred, ptr @dev_attr_in_use, ptr null], align 4
@dev_attr_memcpy_count = internal global %struct.device_attribute { %struct.attribute { ptr @.str.28, i16 292 }, ptr @memcpy_count_show, ptr null }, align 4
@dev_attr_bytes_transferred = internal global %struct.device_attribute { %struct.attribute { ptr @.str.30, i16 292 }, ptr @bytes_transferred_show, ptr null }, align 4
@dev_attr_in_use = internal global %struct.device_attribute { %struct.attribute { ptr @.str.31, i16 292 }, ptr @in_use_show, ptr null }, align 4
@.str.28 = private unnamed_addr constant [13 x i8] c"memcpy_count\00", align 1
@.str.29 = private unnamed_addr constant [5 x i8] c"%lu\0A\00", align 1
@.str.30 = private unnamed_addr constant [18 x i8] c"bytes_transferred\00", align 1
@.str.31 = private unnamed_addr constant [7 x i8] c"in_use\00", align 1
@.str.32 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@__dma_async_device_channel_unregister.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.33 = private unnamed_addr constant [45 x i8] c"%s called while %d clients hold a reference\0A\00", align 1
@__func__.__dma_async_device_channel_unregister = private unnamed_addr constant [38 x i8] c"__dma_async_device_channel_unregister\00", align 1
@rootdir = internal unnamed_addr global ptr null, align 4
@unmap_pool = internal unnamed_addr global [4 x %struct.dmaengine_unmap_pool] [%struct.dmaengine_unmap_pool { ptr null, ptr @.str.34, ptr null, i32 2 }, %struct.dmaengine_unmap_pool { ptr null, ptr @.str.35, ptr null, i32 16 }, %struct.dmaengine_unmap_pool { ptr null, ptr @.str.36, ptr null, i32 128 }, %struct.dmaengine_unmap_pool { ptr null, ptr @.str.37, ptr null, i32 256 }], align 4
@.str.34 = private unnamed_addr constant [18 x i8] c"dmaengine-unmap-2\00", align 1
@.str.35 = private unnamed_addr constant [19 x i8] c"dmaengine-unmap-16\00", align 1
@.str.36 = private unnamed_addr constant [20 x i8] c"dmaengine-unmap-128\00", align 1
@.str.37 = private unnamed_addr constant [20 x i8] c"dmaengine-unmap-256\00", align 1
@dma_bus_init.__key = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.38 = private unnamed_addr constant [10 x i8] c"dmaengine\00", align 1
@.str.39 = private unnamed_addr constant [8 x i8] c"summary\00", align 1
@dmaengine_summary_fops = internal constant %struct.file_operations { ptr null, ptr @seq_lseek, ptr @seq_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @dmaengine_summary_open, ptr null, ptr @single_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@.str.40 = private unnamed_addr constant [36 x i8] c"dma%d (%s): number of channels: %u\0A\00", align 1
@.str.41 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.42 = private unnamed_addr constant [11 x i8] c" %-13s| %s\00", align 1
@.str.43 = private unnamed_addr constant [7 x i8] c"in-use\00", align 1
@.str.44 = private unnamed_addr constant [19 x i8] c" (via router: %s)\0A\00", align 1
@llvm.compiler.used = appending global [27 x ptr] [ptr @__initcall__kmod_dmaengine__224_293_dma_channel_table_init3, ptr @__initcall__kmod_dmaengine__231_1665_dma_bus_init3, ptr @__ksymtab___dma_request_channel, ptr @__ksymtab_dma_async_device_channel_register, ptr @__ksymtab_dma_async_device_channel_unregister, ptr @__ksymtab_dma_async_device_register, ptr @__ksymtab_dma_async_device_unregister, ptr @__ksymtab_dma_async_tx_descriptor_init, ptr @__ksymtab_dma_find_channel, ptr @__ksymtab_dma_get_any_slave_channel, ptr @__ksymtab_dma_get_slave_caps, ptr @__ksymtab_dma_get_slave_channel, ptr @__ksymtab_dma_issue_pending_all, ptr @__ksymtab_dma_release_channel, ptr @__ksymtab_dma_request_chan, ptr @__ksymtab_dma_request_chan_by_mask, ptr @__ksymtab_dma_run_dependencies, ptr @__ksymtab_dma_sync_wait, ptr @__ksymtab_dma_wait_for_async_tx, ptr @__ksymtab_dmaengine_desc_attach_metadata, ptr @__ksymtab_dmaengine_desc_get_metadata_ptr, ptr @__ksymtab_dmaengine_desc_set_metadata_len, ptr @__ksymtab_dmaengine_get, ptr @__ksymtab_dmaengine_get_unmap_data, ptr @__ksymtab_dmaengine_put, ptr @__ksymtab_dmaengine_unmap_put, ptr @__ksymtab_dmaenginem_async_device_register], section "llvm.metadata"
@switch.table.dmaengine_get_unmap_data = private unnamed_addr constant [9 x ptr] [ptr @unmap_pool, ptr @unmap_pool, ptr getelementptr inbounds ([4 x %struct.dmaengine_unmap_pool], ptr @unmap_pool, i32 0, i32 1), ptr getelementptr inbounds ([4 x %struct.dmaengine_unmap_pool], ptr @unmap_pool, i32 0, i32 1), ptr getelementptr inbounds ([4 x %struct.dmaengine_unmap_pool], ptr @unmap_pool, i32 0, i32 1), ptr getelementptr inbounds ([4 x %struct.dmaengine_unmap_pool], ptr @unmap_pool, i32 0, i32 2), ptr getelementptr inbounds ([4 x %struct.dmaengine_unmap_pool], ptr @unmap_pool, i32 0, i32 2), ptr getelementptr inbounds ([4 x %struct.dmaengine_unmap_pool], ptr @unmap_pool, i32 0, i32 2), ptr getelementptr inbounds ([4 x %struct.dmaengine_unmap_pool], ptr @unmap_pool, i32 0, i32 3)], align 4

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @dma_channel_table_init() #0 section ".init.text" {
  store i32 -1, ptr @dma_cap_mask_all, align 4
  tail call void @_clear_bit(i32 noundef 8, ptr noundef nonnull @dma_cap_mask_all) #14
  tail call void @_clear_bit(i32 noundef 9, ptr noundef nonnull @dma_cap_mask_all) #14
  tail call void @_clear_bit(i32 noundef 11, ptr noundef nonnull @dma_cap_mask_all) #14
  %1 = tail call i32 @_find_next_bit_le(ptr noundef nonnull @dma_cap_mask_all, i32 noundef 17, i32 noundef 0) #14
  %2 = icmp ult i32 %1, 17
  br i1 %2, label %3, label %23

3:                                                ; preds = %8, %0
  %4 = phi i32 [ %10, %8 ], [ %1, %0 ]
  %5 = tail call noalias ptr @__alloc_percpu(i32 noundef 4, i32 noundef 4) #15
  %6 = getelementptr [17 x ptr], ptr @channel_table, i32 0, i32 %4
  store ptr %5, ptr %6, align 4
  %7 = icmp eq ptr %5, null
  br i1 %7, label %12, label %8

8:                                                ; preds = %3
  %9 = add nuw nsw i32 %4, 1
  %10 = tail call i32 @_find_next_bit_le(ptr noundef nonnull @dma_cap_mask_all, i32 noundef 17, i32 noundef %9) #14
  %11 = icmp ult i32 %10, 17
  br i1 %11, label %3, label %23

12:                                               ; preds = %3
  %13 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.24, i32 noundef -12) #16
  %14 = tail call i32 @_find_next_bit_le(ptr noundef nonnull @dma_cap_mask_all, i32 noundef 17, i32 noundef 0) #14
  %15 = icmp ult i32 %14, 17
  br i1 %15, label %16, label %23

16:                                               ; preds = %16, %12
  %17 = phi i32 [ %21, %16 ], [ %14, %12 ]
  %18 = getelementptr [17 x ptr], ptr @channel_table, i32 0, i32 %17
  %19 = load ptr, ptr %18, align 4
  tail call void @free_percpu(ptr noundef %19) #14
  %20 = add nuw nsw i32 %17, 1
  %21 = tail call i32 @_find_next_bit_le(ptr noundef nonnull @dma_cap_mask_all, i32 noundef 17, i32 noundef %20) #14
  %22 = icmp ult i32 %21, 17
  br i1 %22, label %16, label %23

23:                                               ; preds = %16, %12, %8, %0
  %24 = phi i32 [ -12, %12 ], [ 0, %0 ], [ -12, %16 ], [ 0, %8 ]
  ret i32 %24
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @dma_sync_wait(ptr noundef %0, i32 noundef %1) #1 {
  %3 = alloca %struct.dma_tx_state, align 4
  %4 = load volatile i32, ptr @jiffies, align 64
  %5 = load ptr, ptr %0, align 4
  %6 = getelementptr inbounds %struct.dma_device, ptr %5, i32 0, i32 50
  %7 = load ptr, ptr %6, align 4
  tail call void %7(ptr noundef %0) #14
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #14
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(16) %3, i8 0, i32 16, i1 false) #14, !annotation !9
  %8 = load ptr, ptr %0, align 4
  %9 = getelementptr inbounds %struct.dma_device, ptr %8, i32 0, i32 49
  %10 = load ptr, ptr %9, align 4
  %11 = call i32 %10(ptr noundef %0, i32 noundef %1, ptr noundef nonnull %3) #14
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #14
  %12 = load volatile i32, ptr @jiffies, align 64
  %13 = sub i32 -500, %4
  %14 = add i32 %13, %12
  %15 = icmp sgt i32 %14, -1
  br i1 %15, label %16, label %20

16:                                               ; preds = %23, %2
  %17 = load ptr, ptr %0, align 4
  %18 = getelementptr inbounds %struct.dma_device, ptr %17, i32 0, i32 15
  %19 = load ptr, ptr %18, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %19, ptr noundef nonnull @.str, ptr noundef nonnull @__func__.dma_sync_wait) #16
  br label %31

20:                                               ; preds = %23, %2
  %21 = phi i32 [ %27, %23 ], [ %11, %2 ]
  %22 = icmp eq i32 %21, 1
  br i1 %22, label %23, label %31

23:                                               ; preds = %20
  call void asm sideeffect "dmb ish", "~{memory}"() #14, !srcloc !10
  call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #14, !srcloc !11
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #14
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(16) %3, i8 0, i32 16, i1 false) #14, !annotation !9
  %24 = load ptr, ptr %0, align 4
  %25 = getelementptr inbounds %struct.dma_device, ptr %24, i32 0, i32 49
  %26 = load ptr, ptr %25, align 4
  %27 = call i32 %26(ptr noundef %0, i32 noundef %1, ptr noundef nonnull %3) #14
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #14
  %28 = load volatile i32, ptr @jiffies, align 64
  %29 = add i32 %13, %28
  %30 = icmp sgt i32 %29, -1
  br i1 %30, label %16, label %20

31:                                               ; preds = %20, %16
  %32 = phi i32 [ 3, %16 ], [ %21, %20 ]
  ret i32 %32
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @dma_find_channel(i32 noundef %0) #1 {
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !12
  %2 = getelementptr [17 x ptr], ptr @channel_table, i32 0, i32 %0
  %3 = load ptr, ptr %2, align 4
  %4 = ptrtoint ptr %3 to i32
  %5 = tail call i32 @llvm.read_register.i32(metadata !0) #14
  %6 = inttoptr i32 %5 to ptr
  %7 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %6) #8, !srcloc !13
  %8 = add i32 %7, %4
  %9 = inttoptr i32 %8 to ptr
  %10 = load volatile ptr, ptr %9, align 4
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !14
  ret ptr %10
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @dma_issue_pending_all() #1 {
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !15
  %1 = load volatile ptr, ptr @dma_device_list, align 4
  %2 = icmp eq ptr %1, @dma_device_list
  br i1 %2, label %29, label %3

3:                                                ; preds = %26, %0
  %4 = phi ptr [ %27, %26 ], [ %1, %0 ]
  %5 = getelementptr i8, ptr %4, i32 20
  %6 = load volatile i32, ptr %5, align 4
  %7 = and i32 %6, 512
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %26

9:                                                ; preds = %3
  %10 = getelementptr i8, ptr %4, i32 -8
  %11 = load ptr, ptr %10, align 4
  %12 = icmp eq ptr %11, %10
  br i1 %12, label %26, label %13

13:                                               ; preds = %9
  %14 = getelementptr i8, ptr %4, i32 216
  br label %15

15:                                               ; preds = %23, %13
  %16 = phi ptr [ %11, %13 ], [ %24, %23 ]
  %17 = getelementptr i8, ptr %16, i32 12
  %18 = load i32, ptr %17, align 4
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %23, label %20

20:                                               ; preds = %15
  %21 = getelementptr i8, ptr %16, i32 -32
  %22 = load ptr, ptr %14, align 4
  tail call void %22(ptr noundef %21) #14
  br label %23

23:                                               ; preds = %20, %15
  %24 = load ptr, ptr %16, align 4
  %25 = icmp eq ptr %24, %10
  br i1 %25, label %26, label %15

26:                                               ; preds = %23, %9, %3
  %27 = load volatile ptr, ptr %4, align 4
  %28 = icmp eq ptr %27, @dma_device_list
  br i1 %28, label %29, label %3

29:                                               ; preds = %26, %0
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !16
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @dma_get_slave_caps(ptr noundef %0, ptr noundef %1) #1 {
  %3 = icmp ne ptr %0, null
  %4 = icmp ne ptr %1, null
  %5 = and i1 %3, %4
  br i1 %5, label %6, label %62

6:                                                ; preds = %2
  %7 = load ptr, ptr %0, align 4
  %8 = getelementptr inbounds %struct.dma_device, ptr %7, i32 0, i32 6
  %9 = load volatile i32, ptr %8, align 4
  %10 = and i32 %9, 2048
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %16

12:                                               ; preds = %6
  %13 = load volatile i32, ptr %8, align 4
  %14 = and i32 %13, 4096
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %62, label %16

16:                                               ; preds = %12, %6
  %17 = getelementptr inbounds %struct.dma_device, ptr %7, i32 0, i32 21
  %18 = load i32, ptr %17, align 4
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %62, label %20

20:                                               ; preds = %16
  %21 = getelementptr inbounds %struct.dma_device, ptr %7, i32 0, i32 19
  %22 = load i32, ptr %21, align 4
  store i32 %22, ptr %1, align 4
  %23 = getelementptr inbounds %struct.dma_device, ptr %7, i32 0, i32 20
  %24 = load i32, ptr %23, align 4
  %25 = getelementptr inbounds %struct.dma_slave_caps, ptr %1, i32 0, i32 1
  store i32 %24, ptr %25, align 4
  %26 = load i32, ptr %17, align 4
  %27 = getelementptr inbounds %struct.dma_slave_caps, ptr %1, i32 0, i32 2
  store i32 %26, ptr %27, align 4
  %28 = getelementptr inbounds %struct.dma_device, ptr %7, i32 0, i32 22
  %29 = load i32, ptr %28, align 4
  %30 = getelementptr inbounds %struct.dma_slave_caps, ptr %1, i32 0, i32 3
  store i32 %29, ptr %30, align 4
  %31 = getelementptr inbounds %struct.dma_device, ptr %7, i32 0, i32 23
  %32 = load i32, ptr %31, align 4
  %33 = getelementptr inbounds %struct.dma_slave_caps, ptr %1, i32 0, i32 4
  store i32 %32, ptr %33, align 4
  %34 = getelementptr inbounds %struct.dma_device, ptr %7, i32 0, i32 24
  %35 = load i32, ptr %34, align 4
  %36 = getelementptr inbounds %struct.dma_slave_caps, ptr %1, i32 0, i32 5
  store i32 %35, ptr %36, align 4
  %37 = getelementptr inbounds %struct.dma_device, ptr %7, i32 0, i32 26
  %38 = load i32, ptr %37, align 4
  %39 = getelementptr inbounds %struct.dma_slave_caps, ptr %1, i32 0, i32 9
  store i32 %38, ptr %39, align 4
  %40 = getelementptr inbounds %struct.dma_device, ptr %7, i32 0, i32 25
  %41 = load i8, ptr %40, align 4, !range !17
  %42 = getelementptr inbounds %struct.dma_slave_caps, ptr %1, i32 0, i32 10
  store i8 %41, ptr %42, align 4
  %43 = getelementptr inbounds %struct.dma_device, ptr %7, i32 0, i32 45
  %44 = load ptr, ptr %43, align 4
  %45 = icmp ne ptr %44, null
  %46 = getelementptr inbounds %struct.dma_slave_caps, ptr %1, i32 0, i32 6
  %47 = zext i1 %45 to i8
  store i8 %47, ptr %46, align 4
  %48 = getelementptr inbounds %struct.dma_device, ptr %7, i32 0, i32 46
  %49 = load ptr, ptr %48, align 4
  %50 = icmp ne ptr %49, null
  %51 = getelementptr inbounds %struct.dma_slave_caps, ptr %1, i32 0, i32 7
  %52 = zext i1 %50 to i8
  store i8 %52, ptr %51, align 1
  %53 = getelementptr inbounds %struct.dma_device, ptr %7, i32 0, i32 47
  %54 = load ptr, ptr %53, align 4
  %55 = icmp ne ptr %54, null
  %56 = getelementptr inbounds %struct.dma_slave_caps, ptr %1, i32 0, i32 8
  %57 = zext i1 %55 to i8
  store i8 %57, ptr %56, align 2
  %58 = getelementptr inbounds %struct.dma_device, ptr %7, i32 0, i32 43
  %59 = load ptr, ptr %58, align 4
  %60 = icmp eq ptr %59, null
  br i1 %60, label %62, label %61

61:                                               ; preds = %20
  tail call void %59(ptr noundef nonnull %0, ptr noundef nonnull %1) #14
  br label %62

62:                                               ; preds = %61, %20, %16, %12, %2
  %63 = phi i32 [ -22, %2 ], [ -6, %12 ], [ -6, %16 ], [ 0, %61 ], [ 0, %20 ]
  ret i32 %63
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @dma_get_slave_channel(ptr noundef %0) #1 {
  tail call void @mutex_lock(ptr noundef nonnull @dma_list_mutex) #14
  %2 = getelementptr inbounds %struct.dma_chan, ptr %0, i32 0, i32 10
  %3 = load i32, ptr %2, align 4
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %18

5:                                                ; preds = %1
  %6 = load ptr, ptr %0, align 4
  %7 = getelementptr inbounds %struct.dma_device, ptr %6, i32 0, i32 6
  tail call void @_set_bit(i32 noundef 9, ptr noundef %7) #14
  %8 = getelementptr inbounds %struct.dma_device, ptr %6, i32 0, i32 2
  %9 = load i32, ptr %8, align 4
  %10 = add i32 %9, 1
  store i32 %10, ptr %8, align 4
  %11 = tail call fastcc i32 @dma_chan_get(ptr noundef %0)
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %18, label %13

13:                                               ; preds = %5
  %14 = load i32, ptr %8, align 4
  %15 = add i32 %14, -1
  store i32 %15, ptr %8, align 4
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %13
  tail call void @_clear_bit(i32 noundef 9, ptr noundef %7) #14
  br label %18

18:                                               ; preds = %17, %13, %5, %1
  %19 = phi ptr [ null, %17 ], [ null, %13 ], [ %0, %5 ], [ null, %1 ]
  tail call void @mutex_unlock(ptr noundef nonnull @dma_list_mutex) #14
  ret ptr %19
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @dma_chan_get(ptr noundef %0) unnamed_addr #1 {
  %2 = load ptr, ptr %0, align 4
  %3 = getelementptr inbounds %struct.dma_device, ptr %2, i32 0, i32 16
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.dma_chan, ptr %0, i32 0, i32 10
  %6 = load i32, ptr %5, align 4
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %9, label %8

8:                                                ; preds = %1
  tail call void @__module_get(ptr noundef %4) #14
  br label %61

9:                                                ; preds = %1
  %10 = tail call zeroext i1 @try_module_get(ptr noundef %4) #14
  br i1 %10, label %11, label %83

11:                                               ; preds = %9
  %12 = load ptr, ptr %0, align 4
  %13 = load volatile i32, ptr %12, align 4
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %27, label %15

15:                                               ; preds = %25, %11
  %16 = phi i32 [ %23, %25 ], [ %13, %11 ]
  %17 = add i32 %16, 1
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %12) #14, !srcloc !18
  br label %18

18:                                               ; preds = %18, %15
  %19 = tail call { i32, i32 } asm sideeffect "@ atomic_cmpxchg\0Aldrex\09$1, [$3]\0Amov\09$0, #0\0Ateq\09$1, $4\0Astrexeq $0, $5, [$3]\0A", "=&r,=&r,=*Qo,r,Ir,r,*Qo,~{cc}"(ptr elementtype(i32) %12, ptr %12, i32 %16, i32 %17, ptr elementtype(i32) %12) #14, !srcloc !19
  %20 = extractvalue { i32, i32 } %19, 0
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %18

22:                                               ; preds = %18
  %23 = extractvalue { i32, i32 } %19, 1
  %24 = icmp eq i32 %23, %16
  br i1 %24, label %27, label %25, !prof !20

25:                                               ; preds = %22
  %26 = icmp eq i32 %23, 0
  br i1 %26, label %27, label %15

27:                                               ; preds = %25, %22, %11
  %28 = phi i32 [ 0, %11 ], [ %16, %22 ], [ 0, %25 ]
  %29 = add i32 %28, 1
  %30 = or i32 %29, %28
  %31 = icmp sgt i32 %30, -1
  br i1 %31, label %33, label %32, !prof !20

32:                                               ; preds = %27
  tail call void @refcount_warn_saturate(ptr noundef %12, i32 noundef 0) #14
  br label %33

33:                                               ; preds = %32, %27
  %34 = icmp eq i32 %28, 0
  br i1 %34, label %81, label %35

35:                                               ; preds = %33
  %36 = load ptr, ptr %0, align 4
  %37 = getelementptr inbounds %struct.dma_device, ptr %36, i32 0, i32 27
  %38 = load ptr, ptr %37, align 4
  %39 = icmp eq ptr %38, null
  br i1 %39, label %44, label %40

40:                                               ; preds = %35
  %41 = tail call i32 %38(ptr noundef %0) #14
  %42 = icmp slt i32 %41, 0
  %43 = load ptr, ptr %0, align 4
  br i1 %42, label %64, label %44

44:                                               ; preds = %40, %35
  %45 = phi ptr [ %36, %35 ], [ %43, %40 ]
  %46 = getelementptr inbounds %struct.dma_device, ptr %45, i32 0, i32 6
  %47 = load volatile i32, ptr %46, align 4
  %48 = and i32 %47, 512
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %50, label %61

50:                                               ; preds = %44
  %51 = getelementptr inbounds %struct.dma_device, ptr %45, i32 0, i32 16
  %52 = load ptr, ptr %51, align 4
  %53 = load i32, ptr %5, align 4
  %54 = load i32, ptr @dmaengine_ref_count, align 4
  %55 = icmp slt i32 %53, %54
  br i1 %55, label %56, label %61

56:                                               ; preds = %56, %50
  tail call void @__module_get(ptr noundef %52) #14
  %57 = load i32, ptr %5, align 4
  %58 = add i32 %57, 1
  store i32 %58, ptr %5, align 4
  %59 = load i32, ptr @dmaengine_ref_count, align 4
  %60 = icmp slt i32 %58, %59
  br i1 %60, label %56, label %61

61:                                               ; preds = %56, %50, %44, %8
  %62 = load i32, ptr %5, align 4
  %63 = add i32 %62, 1
  store i32 %63, ptr %5, align 4
  br label %83

64:                                               ; preds = %40
  tail call void asm sideeffect "dmb ish", "~{memory}"() #14, !srcloc !21
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %43) #14, !srcloc !18
  %65 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %43, ptr %43, i32 1, ptr elementtype(i32) %43) #14, !srcloc !22
  %66 = extractvalue { i32, i32, i32 } %65, 0
  %67 = icmp eq i32 %66, 1
  br i1 %67, label %71, label %68

68:                                               ; preds = %64
  %69 = icmp sgt i32 %66, 0
  br i1 %69, label %81, label %70, !prof !20

70:                                               ; preds = %68
  tail call void @refcount_warn_saturate(ptr noundef %43, i32 noundef 3) #14
  br label %81

71:                                               ; preds = %64
  tail call void asm sideeffect "dmb ish", "~{memory}"() #14, !srcloc !23
  %72 = getelementptr inbounds %struct.dma_device, ptr %43, i32 0, i32 4
  %73 = getelementptr inbounds %struct.dma_device, ptr %43, i32 0, i32 4, i32 1
  %74 = load ptr, ptr %73, align 4
  %75 = load ptr, ptr %72, align 4
  %76 = getelementptr inbounds %struct.list_head, ptr %75, i32 0, i32 1
  store ptr %74, ptr %76, align 4
  store volatile ptr %75, ptr %74, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %73, align 4
  tail call fastcc void @dma_channel_rebalance() #14
  %77 = getelementptr inbounds %struct.dma_device, ptr %43, i32 0, i32 51
  %78 = load ptr, ptr %77, align 4
  %79 = icmp eq ptr %78, null
  br i1 %79, label %81, label %80

80:                                               ; preds = %71
  tail call void %78(ptr noundef %43) #14
  br label %81

81:                                               ; preds = %80, %71, %70, %68, %33
  %82 = phi i32 [ -19, %33 ], [ %41, %68 ], [ %41, %70 ], [ %41, %71 ], [ %41, %80 ]
  tail call void @module_put(ptr noundef %4) #14
  br label %83

83:                                               ; preds = %81, %61, %9
  %84 = phi i32 [ 0, %61 ], [ %82, %81 ], [ -19, %9 ]
  ret i32 %84
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @dma_get_any_slave_channel(ptr noundef %0) #1 {
  %2 = alloca %struct.dma_cap_mask_t, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #14
  store i32 0, ptr %2, align 4
  call void @_set_bit(i32 noundef 11, ptr noundef nonnull %2) #14
  call void @mutex_lock(ptr noundef nonnull @dma_list_mutex) #14
  %3 = call fastcc ptr @find_candidate(ptr noundef %0, ptr noundef nonnull %2, ptr noundef null, ptr noundef null)
  call void @mutex_unlock(ptr noundef nonnull @dma_list_mutex) #14
  %4 = icmp ugt ptr %3, inttoptr (i32 -4096 to ptr)
  %5 = select i1 %4, ptr null, ptr %3
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #14
  ret ptr %5
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #5

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc ptr @find_candidate(ptr noundef %0, ptr noundef readonly %1, ptr noundef readonly %2, ptr noundef %3) unnamed_addr #1 {
  %5 = icmp eq ptr %1, null
  br i1 %5, label %14, label %6

6:                                                ; preds = %4
  %7 = getelementptr inbounds %struct.dma_device, ptr %0, i32 0, i32 6
  %8 = load i32, ptr %1, align 4
  %9 = load i32, ptr %7, align 4
  %10 = xor i32 %9, -1
  %11 = and i32 %8, 131071
  %12 = and i32 %11, %10
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %73

14:                                               ; preds = %6, %4
  %15 = getelementptr inbounds %struct.dma_device, ptr %0, i32 0, i32 1
  %16 = load i32, ptr %15, align 4
  %17 = icmp ugt i32 %16, 1
  br i1 %17, label %18, label %33

18:                                               ; preds = %14
  %19 = getelementptr inbounds %struct.dma_device, ptr %0, i32 0, i32 6
  %20 = load volatile i32, ptr %19, align 4
  %21 = and i32 %20, 512
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %33

23:                                               ; preds = %18
  %24 = getelementptr inbounds %struct.dma_device, ptr %0, i32 0, i32 3
  br label %25

25:                                               ; preds = %29, %23
  %26 = phi ptr [ %24, %23 ], [ %27, %29 ]
  %27 = load ptr, ptr %26, align 4
  %28 = icmp eq ptr %27, %24
  br i1 %28, label %33, label %29

29:                                               ; preds = %25
  %30 = getelementptr i8, ptr %27, i32 12
  %31 = load i32, ptr %30, align 4
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %25, label %73

33:                                               ; preds = %25, %18, %14
  %34 = getelementptr inbounds %struct.dma_device, ptr %0, i32 0, i32 3
  %35 = load ptr, ptr %34, align 4
  %36 = icmp eq ptr %35, %34
  br i1 %36, label %73, label %37

37:                                               ; preds = %33
  %38 = icmp eq ptr %2, null
  br label %39

39:                                               ; preds = %48, %37
  %40 = phi ptr [ %35, %37 ], [ %49, %48 ]
  %41 = getelementptr i8, ptr %40, i32 -32
  %42 = getelementptr i8, ptr %40, i32 12
  %43 = load i32, ptr %42, align 4
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %45, label %48

45:                                               ; preds = %39
  br i1 %38, label %51, label %46

46:                                               ; preds = %45
  %47 = tail call zeroext i1 %2(ptr noundef %41, ptr noundef %3) #14
  br i1 %47, label %51, label %48

48:                                               ; preds = %46, %39
  %49 = load ptr, ptr %40, align 4
  %50 = icmp eq ptr %49, %34
  br i1 %50, label %73, label %39

51:                                               ; preds = %46, %45
  %52 = icmp eq ptr %41, null
  br i1 %52, label %73, label %53

53:                                               ; preds = %51
  %54 = getelementptr inbounds %struct.dma_device, ptr %0, i32 0, i32 6
  tail call void @_set_bit(i32 noundef 9, ptr noundef %54) #14
  %55 = getelementptr inbounds %struct.dma_device, ptr %0, i32 0, i32 2
  %56 = load i32, ptr %55, align 4
  %57 = add i32 %56, 1
  store i32 %57, ptr %55, align 4
  %58 = tail call fastcc i32 @dma_chan_get(ptr noundef nonnull %41)
  switch i32 %58, label %65 [
    i32 0, label %74
    i32 -19, label %59
  ]

59:                                               ; preds = %53
  %60 = getelementptr inbounds %struct.dma_device, ptr %0, i32 0, i32 4
  %61 = getelementptr inbounds %struct.dma_device, ptr %0, i32 0, i32 4, i32 1
  %62 = load ptr, ptr %61, align 4
  %63 = load ptr, ptr %60, align 4
  %64 = getelementptr inbounds %struct.list_head, ptr %63, i32 0, i32 1
  store ptr %62, ptr %64, align 4
  store volatile ptr %63, ptr %62, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %61, align 4
  br label %65

65:                                               ; preds = %59, %53
  %66 = load i32, ptr %55, align 4
  %67 = add i32 %66, -1
  store i32 %67, ptr %55, align 4
  %68 = icmp eq i32 %67, 0
  br i1 %68, label %69, label %70

69:                                               ; preds = %65
  tail call void @_clear_bit(i32 noundef 9, ptr noundef %54) #14
  br label %70

70:                                               ; preds = %69, %65
  %71 = inttoptr i32 %58 to ptr
  %72 = icmp eq i32 %58, 0
  br i1 %72, label %73, label %74

73:                                               ; preds = %70, %51, %48, %33, %29, %6
  br label %74

74:                                               ; preds = %73, %70, %53
  %75 = phi ptr [ inttoptr (i32 -517 to ptr), %73 ], [ %71, %70 ], [ %41, %53 ]
  ret ptr %75
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @__dma_request_channel(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef readnone %3) #1 {
  tail call void @mutex_lock(ptr noundef nonnull @dma_list_mutex) #14
  %5 = load ptr, ptr @dma_device_list, align 4
  %6 = icmp eq ptr %5, @dma_device_list
  br i1 %6, label %26, label %7

7:                                                ; preds = %4
  %8 = icmp eq ptr %3, null
  br label %9

9:                                                ; preds = %24, %7
  %10 = phi ptr [ %5, %7 ], [ %12, %24 ]
  %11 = getelementptr i8, ptr %10, i32 -20
  %12 = load ptr, ptr %10, align 4
  br i1 %8, label %21, label %13

13:                                               ; preds = %9
  %14 = getelementptr i8, ptr %10, i32 52
  %15 = load ptr, ptr %14, align 4
  %16 = getelementptr inbounds %struct.device, ptr %15, i32 0, i32 25
  %17 = load ptr, ptr %16, align 8
  %18 = icmp eq ptr %17, null
  %19 = icmp eq ptr %17, %3
  %20 = or i1 %18, %19
  br i1 %20, label %21, label %24

21:                                               ; preds = %13, %9
  %22 = tail call fastcc ptr @find_candidate(ptr noundef %11, ptr noundef %0, ptr noundef %1, ptr noundef %2)
  %23 = icmp ugt ptr %22, inttoptr (i32 -4096 to ptr)
  br i1 %23, label %24, label %26

24:                                               ; preds = %21, %13
  %25 = icmp eq ptr %12, @dma_device_list
  br i1 %25, label %26, label %9

26:                                               ; preds = %24, %21, %4
  %27 = phi ptr [ null, %4 ], [ %22, %21 ], [ null, %24 ]
  tail call void @mutex_unlock(ptr noundef nonnull @dma_list_mutex) #14
  ret ptr %27
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @dma_request_chan(ptr noundef %0, ptr noundef %1) #1 {
  %3 = alloca %struct.dma_cap_mask_t, align 4
  %4 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 25
  %5 = load ptr, ptr %4, align 8
  %6 = icmp eq ptr %5, null
  br i1 %6, label %14, label %7

7:                                                ; preds = %2
  %8 = tail call ptr @of_dma_request_slave_channel(ptr noundef nonnull %5, ptr noundef %1) #14
  %9 = icmp eq ptr %8, inttoptr (i32 -517 to ptr)
  br i1 %9, label %98, label %10

10:                                               ; preds = %7
  %11 = icmp eq ptr %8, null
  %12 = icmp ugt ptr %8, inttoptr (i32 -4096 to ptr)
  %13 = or i1 %11, %12
  br i1 %13, label %14, label %68

14:                                               ; preds = %10, %2
  %15 = phi ptr [ %8, %10 ], [ null, %2 ]
  tail call void @mutex_lock(ptr noundef nonnull @dma_list_mutex) #14
  %16 = load ptr, ptr @dma_device_list, align 4
  %17 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 3
  %18 = icmp eq ptr %16, @dma_device_list
  br i1 %18, label %63, label %19

19:                                               ; preds = %60, %14
  %20 = phi ptr [ %23, %60 ], [ %16, %14 ]
  %21 = phi ptr [ %61, %60 ], [ %15, %14 ]
  %22 = getelementptr i8, ptr %20, i32 -20
  %23 = load ptr, ptr %20, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #14
  store i32 0, ptr %3, align 4, !annotation !9
  %24 = getelementptr i8, ptr %20, i32 12
  %25 = load i32, ptr %24, align 4
  %26 = icmp sgt i32 %25, 0
  br i1 %26, label %27, label %60

27:                                               ; preds = %19
  %28 = getelementptr i8, ptr %20, i32 16
  %29 = load ptr, ptr %28, align 4
  %30 = load ptr, ptr %17, align 4
  %31 = icmp eq ptr %30, null
  br label %32

32:                                               ; preds = %47, %27
  %33 = phi i32 [ 0, %27 ], [ %48, %47 ]
  %34 = getelementptr %struct.dma_slave_map, ptr %29, i32 %33
  %35 = load ptr, ptr %34, align 4
  br i1 %31, label %36, label %38

36:                                               ; preds = %32
  %37 = load ptr, ptr %0, align 4
  br label %38

38:                                               ; preds = %36, %32
  %39 = phi ptr [ %37, %36 ], [ %30, %32 ]
  %40 = call i32 @strcmp(ptr noundef %35, ptr noundef %39) #14
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %42, label %47

42:                                               ; preds = %38
  %43 = getelementptr %struct.dma_slave_map, ptr %29, i32 %33, i32 1
  %44 = load ptr, ptr %43, align 4
  %45 = call i32 @strcmp(ptr noundef %44, ptr noundef %1) #14
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %50, label %47

47:                                               ; preds = %42, %38
  %48 = add nuw nsw i32 %33, 1
  %49 = icmp eq i32 %48, %25
  br i1 %49, label %60, label %32

50:                                               ; preds = %42
  %51 = icmp eq ptr %34, null
  br i1 %51, label %60, label %52

52:                                               ; preds = %50
  call void @_set_bit(i32 noundef 11, ptr noundef nonnull %3) #14
  %53 = getelementptr i8, ptr %20, i32 8
  %54 = load ptr, ptr %53, align 4
  %55 = getelementptr %struct.dma_slave_map, ptr %29, i32 %33, i32 2
  %56 = load ptr, ptr %55, align 4
  %57 = call fastcc ptr @find_candidate(ptr noundef %22, ptr noundef nonnull %3, ptr noundef %54, ptr noundef %56)
  %58 = icmp ugt ptr %57, inttoptr (i32 -4096 to ptr)
  br i1 %58, label %60, label %59

59:                                               ; preds = %52
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #14
  br label %63

60:                                               ; preds = %52, %50, %47, %19
  %61 = phi ptr [ %21, %50 ], [ %21, %19 ], [ %57, %52 ], [ %21, %47 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #14
  %62 = icmp eq ptr %23, @dma_device_list
  br i1 %62, label %63, label %19

63:                                               ; preds = %60, %59, %14
  %64 = phi ptr [ %57, %59 ], [ %15, %14 ], [ %61, %60 ]
  call void @mutex_unlock(ptr noundef nonnull @dma_list_mutex) #14
  %65 = icmp ugt ptr %64, inttoptr (i32 -4096 to ptr)
  br i1 %65, label %98, label %66

66:                                               ; preds = %63
  %67 = icmp eq ptr %64, null
  br i1 %67, label %98, label %68

68:                                               ; preds = %66, %10
  %69 = phi ptr [ %64, %66 ], [ %8, %10 ]
  %70 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 3
  %71 = load ptr, ptr %70, align 4
  %72 = icmp eq ptr %71, null
  br i1 %72, label %73, label %75

73:                                               ; preds = %68
  %74 = load ptr, ptr %0, align 4
  br label %75

75:                                               ; preds = %73, %68
  %76 = phi ptr [ %74, %73 ], [ %71, %68 ]
  %77 = call noalias ptr (i32, ptr, ...) @kasprintf(i32 noundef 3264, ptr noundef nonnull @.str.1, ptr noundef %76, ptr noundef %1) #14
  %78 = getelementptr inbounds %struct.dma_chan, ptr %69, i32 0, i32 7
  store ptr %77, ptr %78, align 4
  %79 = call noalias ptr (i32, ptr, ...) @kasprintf(i32 noundef 3264, ptr noundef nonnull @.str.2, ptr noundef %1) #14
  %80 = getelementptr inbounds %struct.dma_chan, ptr %69, i32 0, i32 6
  store ptr %79, ptr %80, align 4
  %81 = icmp eq ptr %79, null
  br i1 %81, label %98, label %82

82:                                               ; preds = %75
  %83 = getelementptr inbounds %struct.dma_chan, ptr %69, i32 0, i32 1
  store ptr %0, ptr %83, align 4
  %84 = getelementptr inbounds %struct.dma_chan, ptr %69, i32 0, i32 5
  %85 = load ptr, ptr %84, align 4
  %86 = getelementptr inbounds %struct.dma_chan_dev, ptr %85, i32 0, i32 1
  %87 = call i32 @sysfs_create_link(ptr noundef %86, ptr noundef %0, ptr noundef nonnull @.str.3) #14
  %88 = icmp eq i32 %87, 0
  br i1 %88, label %90, label %89

89:                                               ; preds = %82
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %0, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.3) #16
  br label %90

90:                                               ; preds = %89, %82
  %91 = load ptr, ptr %84, align 4
  %92 = getelementptr inbounds %struct.dma_chan_dev, ptr %91, i32 0, i32 1
  %93 = load ptr, ptr %80, align 4
  %94 = call i32 @sysfs_create_link(ptr noundef %0, ptr noundef %92, ptr noundef %93) #14
  %95 = icmp eq i32 %94, 0
  br i1 %95, label %98, label %96

96:                                               ; preds = %90
  %97 = load ptr, ptr %80, align 4
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %0, ptr noundef nonnull @.str.4, ptr noundef %97) #16
  br label %98

98:                                               ; preds = %96, %90, %75, %66, %63, %7
  %99 = phi ptr [ inttoptr (i32 -517 to ptr), %7 ], [ %64, %63 ], [ %69, %75 ], [ %69, %96 ], [ %69, %90 ], [ inttoptr (i32 -517 to ptr), %66 ]
  ret ptr %99
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_dma_request_slave_channel(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @kasprintf(i32 noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sysfs_create_link(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @dma_request_chan_by_mask(ptr noundef %0) #1 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %21, label %3

3:                                                ; preds = %1
  tail call void @mutex_lock(ptr noundef nonnull @dma_list_mutex) #14
  %4 = load ptr, ptr @dma_device_list, align 4
  %5 = icmp eq ptr %4, @dma_device_list
  br i1 %5, label %14, label %6

6:                                                ; preds = %12, %3
  %7 = phi ptr [ %9, %12 ], [ %4, %3 ]
  %8 = getelementptr i8, ptr %7, i32 -20
  %9 = load ptr, ptr %7, align 4
  %10 = tail call fastcc ptr @find_candidate(ptr noundef %8, ptr noundef nonnull %0, ptr noundef null, ptr noundef null) #14
  %11 = icmp ugt ptr %10, inttoptr (i32 -4096 to ptr)
  br i1 %11, label %12, label %15

12:                                               ; preds = %6
  %13 = icmp eq ptr %9, @dma_device_list
  br i1 %13, label %14, label %6

14:                                               ; preds = %12, %3
  tail call void @mutex_unlock(ptr noundef nonnull @dma_list_mutex) #14
  br label %17

15:                                               ; preds = %6
  tail call void @mutex_unlock(ptr noundef nonnull @dma_list_mutex) #14
  %16 = icmp eq ptr %10, null
  br i1 %16, label %17, label %21

17:                                               ; preds = %15, %14
  tail call void @mutex_lock(ptr noundef nonnull @dma_list_mutex) #14
  %18 = load volatile ptr, ptr @dma_device_list, align 4
  %19 = icmp eq ptr %18, @dma_device_list
  %20 = select i1 %19, ptr inttoptr (i32 -517 to ptr), ptr inttoptr (i32 -19 to ptr)
  tail call void @mutex_unlock(ptr noundef nonnull @dma_list_mutex) #14
  br label %21

21:                                               ; preds = %17, %15, %1
  %22 = phi ptr [ %10, %15 ], [ %20, %17 ], [ inttoptr (i32 -19 to ptr), %1 ]
  ret ptr %22
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @dma_release_channel(ptr noundef %0) #1 {
  tail call void @mutex_lock(ptr noundef nonnull @dma_list_mutex) #14
  %2 = getelementptr inbounds %struct.dma_chan, ptr %0, i32 0, i32 10
  %3 = load i32, ptr %2, align 4
  %4 = icmp ne i32 %3, 1
  %5 = load i1, ptr @dma_release_channel.__already_done, align 1
  %6 = xor i1 %5, true
  %7 = select i1 %4, i1 %6, i1 false
  br i1 %7, label %8, label %9, !prof !24

8:                                                ; preds = %1
  store i1 true, ptr @dma_release_channel.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.5, i32 noundef 906, i32 noundef 9, ptr noundef nonnull @.str.6, i32 noundef %3) #14
  br label %9

9:                                                ; preds = %8, %1
  tail call fastcc void @dma_chan_put(ptr noundef %0)
  %10 = load ptr, ptr %0, align 4
  %11 = getelementptr inbounds %struct.dma_device, ptr %10, i32 0, i32 2
  %12 = load i32, ptr %11, align 4
  %13 = add i32 %12, -1
  store i32 %13, ptr %11, align 4
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %18

15:                                               ; preds = %9
  %16 = load ptr, ptr %0, align 4
  %17 = getelementptr inbounds %struct.dma_device, ptr %16, i32 0, i32 6
  tail call void @_clear_bit(i32 noundef 9, ptr noundef %17) #14
  br label %18

18:                                               ; preds = %15, %9
  %19 = getelementptr inbounds %struct.dma_chan, ptr %0, i32 0, i32 1
  %20 = load ptr, ptr %19, align 4
  %21 = icmp eq ptr %20, null
  br i1 %21, label %30, label %22

22:                                               ; preds = %18
  %23 = getelementptr inbounds %struct.dma_chan, ptr %0, i32 0, i32 5
  %24 = load ptr, ptr %23, align 4
  %25 = getelementptr inbounds %struct.dma_chan_dev, ptr %24, i32 0, i32 1
  tail call void @sysfs_remove_link(ptr noundef %25, ptr noundef nonnull @.str.3) #14
  %26 = load ptr, ptr %19, align 4
  %27 = getelementptr inbounds %struct.dma_chan, ptr %0, i32 0, i32 6
  %28 = load ptr, ptr %27, align 4
  tail call void @sysfs_remove_link(ptr noundef %26, ptr noundef %28) #14
  %29 = load ptr, ptr %27, align 4
  tail call void @kfree(ptr noundef %29) #14
  store ptr null, ptr %27, align 4
  store ptr null, ptr %19, align 4
  br label %30

30:                                               ; preds = %22, %18
  %31 = getelementptr inbounds %struct.dma_chan, ptr %0, i32 0, i32 7
  %32 = load ptr, ptr %31, align 4
  tail call void @kfree(ptr noundef %32) #14
  store ptr null, ptr %31, align 4
  tail call void @mutex_unlock(ptr noundef nonnull @dma_list_mutex) #14
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @dma_chan_put(ptr noundef %0) unnamed_addr #1 {
  %2 = getelementptr inbounds %struct.dma_chan, ptr %0, i32 0, i32 10
  %3 = load i32, ptr %2, align 4
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %57, label %5

5:                                                ; preds = %1
  %6 = add i32 %3, -1
  store i32 %6, ptr %2, align 4
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %23

8:                                                ; preds = %5
  %9 = load ptr, ptr %0, align 4
  %10 = getelementptr inbounds %struct.dma_device, ptr %9, i32 0, i32 29
  %11 = load ptr, ptr %10, align 4
  %12 = icmp eq ptr %11, null
  br i1 %12, label %23, label %13

13:                                               ; preds = %8
  %14 = getelementptr inbounds %struct.dma_device, ptr %9, i32 0, i32 48
  %15 = load ptr, ptr %14, align 4
  %16 = icmp eq ptr %15, null
  br i1 %16, label %21, label %17

17:                                               ; preds = %13
  tail call void %15(ptr noundef %0) #14
  %18 = load ptr, ptr %0, align 4
  %19 = getelementptr inbounds %struct.dma_device, ptr %18, i32 0, i32 29
  %20 = load ptr, ptr %19, align 4
  br label %21

21:                                               ; preds = %17, %13
  %22 = phi ptr [ %11, %13 ], [ %20, %17 ]
  tail call void %22(ptr noundef %0) #14
  br label %23

23:                                               ; preds = %21, %8, %5
  %24 = getelementptr inbounds %struct.dma_chan, ptr %0, i32 0, i32 12
  %25 = load ptr, ptr %24, align 4
  %26 = icmp eq ptr %25, null
  br i1 %26, label %35, label %27

27:                                               ; preds = %23
  %28 = getelementptr inbounds %struct.dma_router, ptr %25, i32 0, i32 1
  %29 = load ptr, ptr %28, align 4
  %30 = icmp eq ptr %29, null
  br i1 %30, label %35, label %31

31:                                               ; preds = %27
  %32 = load ptr, ptr %25, align 4
  %33 = getelementptr inbounds %struct.dma_chan, ptr %0, i32 0, i32 13
  %34 = load ptr, ptr %33, align 4
  tail call void %29(ptr noundef %32, ptr noundef %34) #14
  store ptr null, ptr %24, align 4
  store ptr null, ptr %33, align 4
  br label %35

35:                                               ; preds = %31, %27, %23
  %36 = load ptr, ptr %0, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #14, !srcloc !21
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %36) #14, !srcloc !18
  %37 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %36, ptr %36, i32 1, ptr elementtype(i32) %36) #14, !srcloc !22
  %38 = extractvalue { i32, i32, i32 } %37, 0
  %39 = icmp eq i32 %38, 1
  br i1 %39, label %43, label %40

40:                                               ; preds = %35
  %41 = icmp sgt i32 %38, 0
  br i1 %41, label %53, label %42, !prof !20

42:                                               ; preds = %40
  tail call void @refcount_warn_saturate(ptr noundef %36, i32 noundef 3) #14
  br label %53

43:                                               ; preds = %35
  tail call void asm sideeffect "dmb ish", "~{memory}"() #14, !srcloc !23
  %44 = getelementptr inbounds %struct.dma_device, ptr %36, i32 0, i32 4
  %45 = getelementptr inbounds %struct.dma_device, ptr %36, i32 0, i32 4, i32 1
  %46 = load ptr, ptr %45, align 4
  %47 = load ptr, ptr %44, align 4
  %48 = getelementptr inbounds %struct.list_head, ptr %47, i32 0, i32 1
  store ptr %46, ptr %48, align 4
  store volatile ptr %47, ptr %46, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %45, align 4
  tail call fastcc void @dma_channel_rebalance() #14
  %49 = getelementptr inbounds %struct.dma_device, ptr %36, i32 0, i32 51
  %50 = load ptr, ptr %49, align 4
  %51 = icmp eq ptr %50, null
  br i1 %51, label %53, label %52

52:                                               ; preds = %43
  tail call void %50(ptr noundef %36) #14
  br label %53

53:                                               ; preds = %52, %43, %42, %40
  %54 = load ptr, ptr %0, align 4
  %55 = getelementptr inbounds %struct.dma_device, ptr %54, i32 0, i32 16
  %56 = load ptr, ptr %55, align 4
  tail call void @module_put(ptr noundef %56) #14
  br label %57

57:                                               ; preds = %53, %1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @sysfs_remove_link(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @dmaengine_get() #1 {
  tail call void @mutex_lock(ptr noundef nonnull @dma_list_mutex) #14
  %1 = load i32, ptr @dmaengine_ref_count, align 4
  %2 = add i32 %1, 1
  store i32 %2, ptr @dmaengine_ref_count, align 4
  %3 = load ptr, ptr @dma_device_list, align 4
  %4 = icmp eq ptr %3, @dma_device_list
  br i1 %4, label %31, label %5

5:                                                ; preds = %27, %0
  %6 = phi ptr [ %7, %27 ], [ %3, %0 ]
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr i8, ptr %6, i32 20
  %9 = load volatile i32, ptr %8, align 4
  %10 = and i32 %9, 512
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %27

12:                                               ; preds = %5
  %13 = getelementptr i8, ptr %6, i32 -8
  br label %14

14:                                               ; preds = %18, %12
  %15 = phi ptr [ %13, %12 ], [ %16, %18 ]
  %16 = load ptr, ptr %15, align 4
  %17 = icmp eq ptr %16, %13
  br i1 %17, label %27, label %18

18:                                               ; preds = %14
  %19 = getelementptr i8, ptr %16, i32 -32
  %20 = tail call fastcc i32 @dma_chan_get(ptr noundef %19)
  %21 = icmp eq i32 %20, -19
  br i1 %21, label %22, label %14

22:                                               ; preds = %18
  %23 = getelementptr inbounds %struct.list_head, ptr %6, i32 0, i32 1
  %24 = load ptr, ptr %23, align 4
  %25 = load ptr, ptr %6, align 4
  %26 = getelementptr inbounds %struct.list_head, ptr %25, i32 0, i32 1
  store ptr %24, ptr %26, align 4
  store volatile ptr %25, ptr %24, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %23, align 4
  br label %27

27:                                               ; preds = %22, %14, %5
  %28 = icmp eq ptr %7, @dma_device_list
  br i1 %28, label %29, label %5

29:                                               ; preds = %27
  %30 = load i32, ptr @dmaengine_ref_count, align 4
  br label %31

31:                                               ; preds = %29, %0
  %32 = phi i32 [ %30, %29 ], [ %2, %0 ]
  %33 = icmp eq i32 %32, 1
  br i1 %33, label %34, label %35

34:                                               ; preds = %31
  tail call fastcc void @dma_channel_rebalance()
  br label %35

35:                                               ; preds = %34, %31
  tail call void @mutex_unlock(ptr noundef nonnull @dma_list_mutex) #14
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @dma_channel_rebalance() unnamed_addr #1 {
  %1 = tail call i32 @_find_next_bit_le(ptr noundef nonnull @dma_cap_mask_all, i32 noundef 17, i32 noundef 0) #14
  %2 = icmp slt i32 %1, 17
  br i1 %2, label %3, label %10

3:                                                ; preds = %24, %0
  %4 = phi i32 [ %26, %24 ], [ %1, %0 ]
  %5 = tail call i32 @cpumask_next(i32 noundef -1, ptr noundef nonnull @__cpu_possible_mask) #17
  %6 = load i32, ptr @nr_cpu_ids, align 4
  %7 = icmp ult i32 %5, %6
  br i1 %7, label %8, label %24

8:                                                ; preds = %3
  %9 = getelementptr [17 x ptr], ptr @channel_table, i32 0, i32 %4
  br label %13

10:                                               ; preds = %24, %0
  %11 = load ptr, ptr @dma_device_list, align 4
  %12 = icmp eq ptr %11, @dma_device_list
  br i1 %12, label %46, label %28

13:                                               ; preds = %13, %8
  %14 = phi i32 [ %5, %8 ], [ %21, %13 ]
  %15 = load ptr, ptr %9, align 4
  %16 = ptrtoint ptr %15 to i32
  %17 = getelementptr [16 x i32], ptr @__per_cpu_offset, i32 0, i32 %14
  %18 = load i32, ptr %17, align 4
  %19 = add i32 %18, %16
  %20 = inttoptr i32 %19 to ptr
  store ptr null, ptr %20, align 4
  %21 = tail call i32 @cpumask_next(i32 noundef %14, ptr noundef nonnull @__cpu_possible_mask) #17
  %22 = load i32, ptr @nr_cpu_ids, align 4
  %23 = icmp ult i32 %21, %22
  br i1 %23, label %13, label %24

24:                                               ; preds = %13, %3
  %25 = add i32 %4, 1
  %26 = tail call i32 @_find_next_bit_le(ptr noundef nonnull @dma_cap_mask_all, i32 noundef 17, i32 noundef %25) #14
  %27 = icmp slt i32 %26, 17
  br i1 %27, label %3, label %10

28:                                               ; preds = %43, %10
  %29 = phi ptr [ %44, %43 ], [ %11, %10 ]
  %30 = getelementptr i8, ptr %29, i32 20
  %31 = load volatile i32, ptr %30, align 4
  %32 = and i32 %31, 512
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %34, label %43

34:                                               ; preds = %28
  %35 = getelementptr i8, ptr %29, i32 -8
  %36 = load ptr, ptr %35, align 4
  %37 = icmp eq ptr %36, %35
  br i1 %37, label %43, label %38

38:                                               ; preds = %38, %34
  %39 = phi ptr [ %41, %38 ], [ %36, %34 ]
  %40 = getelementptr i8, ptr %39, i32 16
  store i32 0, ptr %40, align 4
  %41 = load ptr, ptr %39, align 4
  %42 = icmp eq ptr %41, %35
  br i1 %42, label %43, label %38

43:                                               ; preds = %38, %34, %28
  %44 = load ptr, ptr %29, align 4
  %45 = icmp eq ptr %44, @dma_device_list
  br i1 %45, label %46, label %28

46:                                               ; preds = %43, %10
  %47 = load i32, ptr @dmaengine_ref_count, align 4
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %144, label %49

49:                                               ; preds = %46
  %50 = tail call i32 @_find_next_bit_le(ptr noundef nonnull @dma_cap_mask_all, i32 noundef 17, i32 noundef 0) #14
  %51 = icmp slt i32 %50, 17
  br i1 %51, label %52, label %144

52:                                               ; preds = %140, %49
  %53 = phi i32 [ %142, %140 ], [ %50, %49 ]
  %54 = tail call i32 @cpumask_next(i32 noundef -1, ptr noundef nonnull @__cpu_online_mask) #17
  %55 = load i32, ptr @nr_cpu_ids, align 4
  %56 = icmp ult i32 %54, %55
  br i1 %56, label %57, label %140

57:                                               ; preds = %52
  %58 = lshr i32 %53, 5
  %59 = and i32 %53, 31
  %60 = shl nuw i32 1, %59
  %61 = getelementptr [17 x ptr], ptr @channel_table, i32 0, i32 %53
  br label %62

62:                                               ; preds = %130, %57
  %63 = phi i32 [ %54, %57 ], [ %137, %130 ]
  %64 = load ptr, ptr @dma_device_list, align 4
  %65 = icmp eq ptr %64, @dma_device_list
  br i1 %65, label %120, label %66

66:                                               ; preds = %115, %62
  %67 = phi ptr [ %118, %115 ], [ %64, %62 ]
  %68 = phi ptr [ %117, %115 ], [ null, %62 ]
  %69 = phi ptr [ %116, %115 ], [ null, %62 ]
  %70 = getelementptr i8, ptr %67, i32 20
  %71 = getelementptr i32, ptr %70, i32 %58
  %72 = load volatile i32, ptr %71, align 4
  %73 = and i32 %72, %60
  %74 = icmp eq i32 %73, 0
  br i1 %74, label %115, label %75

75:                                               ; preds = %66
  %76 = load volatile i32, ptr %70, align 4
  %77 = and i32 %76, 512
  %78 = icmp eq i32 %77, 0
  br i1 %78, label %79, label %115

79:                                               ; preds = %75
  %80 = getelementptr i8, ptr %67, i32 -8
  %81 = load ptr, ptr %80, align 4
  %82 = icmp eq ptr %81, %80
  br i1 %82, label %115, label %83

83:                                               ; preds = %110, %79
  %84 = phi ptr [ %113, %110 ], [ %81, %79 ]
  %85 = phi ptr [ %112, %110 ], [ %68, %79 ]
  %86 = phi ptr [ %111, %110 ], [ %69, %79 ]
  %87 = getelementptr i8, ptr %84, i32 -32
  %88 = getelementptr i8, ptr %84, i32 12
  %89 = load i32, ptr %88, align 4
  %90 = icmp eq i32 %89, 0
  br i1 %90, label %110, label %91

91:                                               ; preds = %83
  %92 = icmp eq ptr %85, null
  br i1 %92, label %99, label %93

93:                                               ; preds = %91
  %94 = getelementptr i8, ptr %84, i32 16
  %95 = load i32, ptr %94, align 4
  %96 = getelementptr inbounds %struct.dma_chan, ptr %85, i32 0, i32 11
  %97 = load i32, ptr %96, align 4
  %98 = icmp slt i32 %95, %97
  br i1 %98, label %99, label %100

99:                                               ; preds = %93, %91
  br label %100

100:                                              ; preds = %99, %93
  %101 = phi ptr [ %87, %99 ], [ %85, %93 ]
  %102 = icmp eq ptr %86, null
  br i1 %102, label %109, label %103

103:                                              ; preds = %100
  %104 = getelementptr i8, ptr %84, i32 16
  %105 = load i32, ptr %104, align 4
  %106 = getelementptr inbounds %struct.dma_chan, ptr %86, i32 0, i32 11
  %107 = load i32, ptr %106, align 4
  %108 = icmp slt i32 %105, %107
  br i1 %108, label %109, label %110

109:                                              ; preds = %103, %100
  br label %110

110:                                              ; preds = %109, %103, %83
  %111 = phi ptr [ %87, %109 ], [ %86, %103 ], [ %86, %83 ]
  %112 = phi ptr [ %101, %109 ], [ %101, %103 ], [ %85, %83 ]
  %113 = load ptr, ptr %84, align 4
  %114 = icmp eq ptr %113, %80
  br i1 %114, label %115, label %83

115:                                              ; preds = %110, %79, %75, %66
  %116 = phi ptr [ %69, %75 ], [ %69, %66 ], [ %69, %79 ], [ %111, %110 ]
  %117 = phi ptr [ %68, %75 ], [ %68, %66 ], [ %68, %79 ], [ %112, %110 ]
  %118 = load ptr, ptr %67, align 4
  %119 = icmp eq ptr %118, @dma_device_list
  br i1 %119, label %120, label %66

120:                                              ; preds = %115, %62
  %121 = phi ptr [ null, %62 ], [ %116, %115 ]
  %122 = phi ptr [ null, %62 ], [ %117, %115 ]
  %123 = icmp eq ptr %121, null
  %124 = select i1 %123, ptr %122, ptr %121
  %125 = icmp eq ptr %124, null
  br i1 %125, label %130, label %126

126:                                              ; preds = %120
  %127 = getelementptr inbounds %struct.dma_chan, ptr %124, i32 0, i32 11
  %128 = load i32, ptr %127, align 4
  %129 = add i32 %128, 1
  store i32 %129, ptr %127, align 4
  br label %130

130:                                              ; preds = %126, %120
  %131 = load ptr, ptr %61, align 4
  %132 = ptrtoint ptr %131 to i32
  %133 = getelementptr [16 x i32], ptr @__per_cpu_offset, i32 0, i32 %63
  %134 = load i32, ptr %133, align 4
  %135 = add i32 %134, %132
  %136 = inttoptr i32 %135 to ptr
  store ptr %124, ptr %136, align 4
  %137 = tail call i32 @cpumask_next(i32 noundef %63, ptr noundef nonnull @__cpu_online_mask) #17
  %138 = load i32, ptr @nr_cpu_ids, align 4
  %139 = icmp ult i32 %137, %138
  br i1 %139, label %62, label %140

140:                                              ; preds = %130, %52
  %141 = add i32 %53, 1
  %142 = tail call i32 @_find_next_bit_le(ptr noundef nonnull @dma_cap_mask_all, i32 noundef 17, i32 noundef %141) #14
  %143 = icmp slt i32 %142, 17
  br i1 %143, label %52, label %144

144:                                              ; preds = %140, %49, %46
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @dmaengine_put() #1 {
  tail call void @mutex_lock(ptr noundef nonnull @dma_list_mutex) #14
  %1 = load i32, ptr @dmaengine_ref_count, align 4
  %2 = add i32 %1, -1
  store i32 %2, ptr @dmaengine_ref_count, align 4
  %3 = icmp slt i32 %2, 0
  br i1 %3, label %4, label %5, !prof !24

4:                                                ; preds = %0
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/dma/dmaengine.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 977, 0\0A.popsection", ""() #14, !srcloc !25
  unreachable

5:                                                ; preds = %0
  %6 = load ptr, ptr @dma_device_list, align 4
  %7 = icmp eq ptr %6, @dma_device_list
  br i1 %7, label %26, label %8

8:                                                ; preds = %24, %5
  %9 = phi ptr [ %10, %24 ], [ %6, %5 ]
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr i8, ptr %9, i32 20
  %12 = load volatile i32, ptr %11, align 4
  %13 = and i32 %12, 512
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %24

15:                                               ; preds = %8
  %16 = getelementptr i8, ptr %9, i32 -8
  %17 = load ptr, ptr %16, align 4
  %18 = icmp eq ptr %17, %16
  br i1 %18, label %24, label %19

19:                                               ; preds = %19, %15
  %20 = phi ptr [ %22, %19 ], [ %17, %15 ]
  %21 = getelementptr i8, ptr %20, i32 -32
  tail call fastcc void @dma_chan_put(ptr noundef %21)
  %22 = load ptr, ptr %20, align 4
  %23 = icmp eq ptr %22, %16
  br i1 %23, label %24, label %19

24:                                               ; preds = %19, %15, %8
  %25 = icmp eq ptr %10, @dma_device_list
  br i1 %25, label %26, label %8

26:                                               ; preds = %24, %5
  tail call void @mutex_unlock(ptr noundef nonnull @dma_list_mutex) #14
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @dma_async_device_channel_register(ptr noundef %0, ptr noundef %1) #1 {
  %3 = tail call fastcc i32 @__dma_async_device_channel_register(ptr noundef %0, ptr noundef %1)
  %4 = icmp slt i32 %3, 0
  br i1 %4, label %6, label %5

5:                                                ; preds = %2
  tail call fastcc void @dma_channel_rebalance()
  br label %6

6:                                                ; preds = %5, %2
  %7 = phi i32 [ 0, %5 ], [ %3, %2 ]
  ret i32 %7
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @__dma_async_device_channel_register(ptr noundef %0, ptr noundef %1) unnamed_addr #1 {
  %3 = tail call noalias ptr @__alloc_percpu(i32 noundef 8, i32 noundef 4) #15
  %4 = getelementptr inbounds %struct.dma_chan, ptr %1, i32 0, i32 9
  store ptr %3, ptr %4, align 4
  %5 = icmp eq ptr %3, null
  br i1 %5, label %55, label %6

6:                                                ; preds = %2
  %7 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %8 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %7, i32 noundef 3520, i32 noundef 488) #18
  %9 = getelementptr inbounds %struct.dma_chan, ptr %1, i32 0, i32 5
  store ptr %8, ptr %9, align 4
  %10 = icmp eq ptr %8, null
  br i1 %10, label %52, label %11

11:                                               ; preds = %6
  %12 = getelementptr inbounds %struct.dma_device, ptr %0, i32 0, i32 18
  tail call void @mutex_lock(ptr noundef %12) #14
  %13 = getelementptr inbounds %struct.dma_device, ptr %0, i32 0, i32 17
  %14 = tail call i32 @ida_alloc_range(ptr noundef %13, i32 noundef 0, i32 noundef -1, i32 noundef 3264) #14
  %15 = getelementptr inbounds %struct.dma_chan, ptr %1, i32 0, i32 4
  store i32 %14, ptr %15, align 4
  tail call void @mutex_unlock(ptr noundef %12) #14
  %16 = load i32, ptr %15, align 4
  %17 = icmp slt i32 %16, 0
  br i1 %17, label %18, label %21

18:                                               ; preds = %11
  %19 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.25, ptr noundef nonnull @__func__.__dma_async_device_channel_register, i32 noundef %16) #16
  %20 = load i32, ptr %15, align 4
  br label %49

21:                                               ; preds = %11
  %22 = load ptr, ptr %9, align 4
  %23 = getelementptr inbounds %struct.dma_chan_dev, ptr %22, i32 0, i32 1, i32 31
  store ptr @dma_devclass, ptr %23, align 4
  %24 = getelementptr inbounds %struct.dma_device, ptr %0, i32 0, i32 15
  %25 = load ptr, ptr %24, align 4
  %26 = load ptr, ptr %9, align 4
  %27 = getelementptr inbounds %struct.dma_chan_dev, ptr %26, i32 0, i32 1, i32 1
  store ptr %25, ptr %27, align 4
  %28 = load ptr, ptr %9, align 4
  store ptr %1, ptr %28, align 8
  %29 = getelementptr inbounds %struct.dma_device, ptr %0, i32 0, i32 14
  %30 = load i32, ptr %29, align 4
  %31 = load ptr, ptr %9, align 4
  %32 = getelementptr inbounds %struct.dma_chan_dev, ptr %31, i32 0, i32 2
  store i32 %30, ptr %32, align 8
  %33 = load ptr, ptr %9, align 4
  %34 = getelementptr inbounds %struct.dma_chan_dev, ptr %33, i32 0, i32 1
  %35 = load i32, ptr %29, align 4
  %36 = load i32, ptr %15, align 4
  %37 = tail call i32 (ptr, ptr, ...) @dev_set_name(ptr noundef %34, ptr noundef nonnull @.str.26, i32 noundef %35, i32 noundef %36) #14
  %38 = load ptr, ptr %9, align 4
  %39 = getelementptr inbounds %struct.dma_chan_dev, ptr %38, i32 0, i32 1
  %40 = tail call i32 @device_register(ptr noundef %39) #14
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %42, label %47

42:                                               ; preds = %21
  %43 = getelementptr inbounds %struct.dma_chan, ptr %1, i32 0, i32 10
  store i32 0, ptr %43, align 4
  %44 = getelementptr inbounds %struct.dma_device, ptr %0, i32 0, i32 1
  %45 = load i32, ptr %44, align 4
  %46 = add i32 %45, 1
  store i32 %46, ptr %44, align 4
  br label %55

47:                                               ; preds = %21
  tail call void @mutex_lock(ptr noundef %12) #14
  %48 = load i32, ptr %15, align 4
  tail call void @ida_free(ptr noundef %13, i32 noundef %48) #14
  tail call void @mutex_unlock(ptr noundef %12) #14
  br label %49

49:                                               ; preds = %47, %18
  %50 = phi i32 [ %20, %18 ], [ %40, %47 ]
  %51 = load ptr, ptr %9, align 4
  tail call void @kfree(ptr noundef %51) #14
  br label %52

52:                                               ; preds = %49, %6
  %53 = phi i32 [ %50, %49 ], [ -12, %6 ]
  %54 = load ptr, ptr %4, align 4
  tail call void @free_percpu(ptr noundef %54) #14
  store ptr null, ptr %4, align 4
  br label %55

55:                                               ; preds = %52, %42, %2
  %56 = phi i32 [ %53, %52 ], [ 0, %42 ], [ -12, %2 ]
  ret i32 %56
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @dma_async_device_channel_unregister(ptr noundef %0, ptr nocapture noundef readonly %1) #1 {
  tail call fastcc void @__dma_async_device_channel_unregister(ptr noundef %0, ptr noundef %1)
  tail call fastcc void @dma_channel_rebalance()
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @__dma_async_device_channel_unregister(ptr noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #1 {
  %3 = getelementptr inbounds %struct.dma_device, ptr %0, i32 0, i32 51
  %4 = load ptr, ptr %3, align 4
  %5 = icmp eq ptr %4, null
  br i1 %5, label %6, label %14

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.dma_chan, ptr %1, i32 0, i32 10
  %8 = load i32, ptr %7, align 4
  %9 = icmp ne i32 %8, 0
  %10 = load i1, ptr @__dma_async_device_channel_unregister.__already_done, align 1
  %11 = xor i1 %10, true
  %12 = select i1 %9, i1 %11, i1 false
  br i1 %12, label %13, label %14, !prof !24

13:                                               ; preds = %6
  store i1 true, ptr @__dma_async_device_channel_unregister.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.5, i32 noundef 1111, i32 noundef 9, ptr noundef nonnull @.str.33, ptr noundef nonnull @__func__.__dma_async_device_channel_unregister, i32 noundef %8) #14
  br label %14

14:                                               ; preds = %13, %6, %2
  tail call void @mutex_lock(ptr noundef nonnull @dma_list_mutex) #14
  %15 = getelementptr inbounds %struct.dma_device, ptr %0, i32 0, i32 1
  %16 = load i32, ptr %15, align 4
  %17 = add i32 %16, -1
  store i32 %17, ptr %15, align 4
  %18 = getelementptr inbounds %struct.dma_chan, ptr %1, i32 0, i32 5
  %19 = load ptr, ptr %18, align 4
  store ptr null, ptr %19, align 8
  tail call void @mutex_unlock(ptr noundef nonnull @dma_list_mutex) #14
  %20 = getelementptr inbounds %struct.dma_device, ptr %0, i32 0, i32 18
  tail call void @mutex_lock(ptr noundef %20) #14
  %21 = getelementptr inbounds %struct.dma_device, ptr %0, i32 0, i32 17
  %22 = getelementptr inbounds %struct.dma_chan, ptr %1, i32 0, i32 4
  %23 = load i32, ptr %22, align 4
  tail call void @ida_free(ptr noundef %21, i32 noundef %23) #14
  tail call void @mutex_unlock(ptr noundef %20) #14
  %24 = load ptr, ptr %18, align 4
  %25 = getelementptr inbounds %struct.dma_chan_dev, ptr %24, i32 0, i32 1
  tail call void @device_unregister(ptr noundef %25) #14
  %26 = getelementptr inbounds %struct.dma_chan, ptr %1, i32 0, i32 9
  %27 = load ptr, ptr %26, align 4
  tail call void @free_percpu(ptr noundef %27) #14
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @dma_async_device_register(ptr noundef %0) #1 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %198, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.dma_device, ptr %0, i32 0, i32 15
  %5 = load ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %7, label %9

7:                                                ; preds = %3
  %8 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7) #16
  br label %198

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.device, ptr %5, i32 0, i32 6
  %11 = load ptr, ptr %10, align 8
  %12 = getelementptr inbounds %struct.device_driver, ptr %11, i32 0, i32 2
  %13 = load ptr, ptr %12, align 4
  %14 = getelementptr inbounds %struct.dma_device, ptr %0, i32 0, i32 16
  store ptr %13, ptr %14, align 4
  %15 = getelementptr inbounds %struct.dma_device, ptr %0, i32 0, i32 6
  %16 = load volatile i32, ptr %15, align 4
  %17 = and i32 %16, 1
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %24, label %19

19:                                               ; preds = %9
  %20 = getelementptr inbounds %struct.dma_device, ptr %0, i32 0, i32 30
  %21 = load ptr, ptr %20, align 4
  %22 = icmp eq ptr %21, null
  br i1 %22, label %23, label %24

23:                                               ; preds = %19
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef nonnull %5, ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.9) #16
  br label %198

24:                                               ; preds = %19, %9
  %25 = load volatile i32, ptr %15, align 4
  %26 = and i32 %25, 2
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %33, label %28

28:                                               ; preds = %24
  %29 = getelementptr inbounds %struct.dma_device, ptr %0, i32 0, i32 31
  %30 = load ptr, ptr %29, align 4
  %31 = icmp eq ptr %30, null
  br i1 %31, label %32, label %33

32:                                               ; preds = %28
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef nonnull %5, ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.10) #16
  br label %198

33:                                               ; preds = %28, %24
  %34 = load volatile i32, ptr %15, align 4
  %35 = and i32 %34, 4
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %42, label %37

37:                                               ; preds = %33
  %38 = getelementptr inbounds %struct.dma_device, ptr %0, i32 0, i32 32
  %39 = load ptr, ptr %38, align 4
  %40 = icmp eq ptr %39, null
  br i1 %40, label %41, label %42

41:                                               ; preds = %37
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef nonnull %5, ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.11) #16
  br label %198

42:                                               ; preds = %37, %33
  %43 = load volatile i32, ptr %15, align 4
  %44 = and i32 %43, 16
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %51, label %46

46:                                               ; preds = %42
  %47 = getelementptr inbounds %struct.dma_device, ptr %0, i32 0, i32 33
  %48 = load ptr, ptr %47, align 4
  %49 = icmp eq ptr %48, null
  br i1 %49, label %50, label %51

50:                                               ; preds = %46
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef nonnull %5, ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.12) #16
  br label %198

51:                                               ; preds = %46, %42
  %52 = load volatile i32, ptr %15, align 4
  %53 = and i32 %52, 8
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %60, label %55

55:                                               ; preds = %51
  %56 = getelementptr inbounds %struct.dma_device, ptr %0, i32 0, i32 34
  %57 = load ptr, ptr %56, align 4
  %58 = icmp eq ptr %57, null
  br i1 %58, label %59, label %60

59:                                               ; preds = %55
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef nonnull %5, ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.13) #16
  br label %198

60:                                               ; preds = %55, %51
  %61 = load volatile i32, ptr %15, align 4
  %62 = and i32 %61, 32
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %69, label %64

64:                                               ; preds = %60
  %65 = getelementptr inbounds %struct.dma_device, ptr %0, i32 0, i32 35
  %66 = load ptr, ptr %65, align 4
  %67 = icmp eq ptr %66, null
  br i1 %67, label %68, label %69

68:                                               ; preds = %64
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef nonnull %5, ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.14) #16
  br label %198

69:                                               ; preds = %64, %60
  %70 = load volatile i32, ptr %15, align 4
  %71 = and i32 %70, 64
  %72 = icmp eq i32 %71, 0
  br i1 %72, label %78, label %73

73:                                               ; preds = %69
  %74 = getelementptr inbounds %struct.dma_device, ptr %0, i32 0, i32 36
  %75 = load ptr, ptr %74, align 4
  %76 = icmp eq ptr %75, null
  br i1 %76, label %77, label %78

77:                                               ; preds = %73
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef nonnull %5, ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.15) #16
  br label %198

78:                                               ; preds = %73, %69
  %79 = load volatile i32, ptr %15, align 4
  %80 = and i32 %79, 256
  %81 = icmp eq i32 %80, 0
  br i1 %81, label %87, label %82

82:                                               ; preds = %78
  %83 = getelementptr inbounds %struct.dma_device, ptr %0, i32 0, i32 38
  %84 = load ptr, ptr %83, align 4
  %85 = icmp eq ptr %84, null
  br i1 %85, label %86, label %87

86:                                               ; preds = %82
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef nonnull %5, ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.16) #16
  br label %198

87:                                               ; preds = %82, %78
  %88 = load volatile i32, ptr %15, align 4
  %89 = and i32 %88, 4096
  %90 = icmp eq i32 %89, 0
  br i1 %90, label %96, label %91

91:                                               ; preds = %87
  %92 = getelementptr inbounds %struct.dma_device, ptr %0, i32 0, i32 40
  %93 = load ptr, ptr %92, align 4
  %94 = icmp eq ptr %93, null
  br i1 %94, label %95, label %96

95:                                               ; preds = %91
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef nonnull %5, ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.17) #16
  br label %198

96:                                               ; preds = %91, %87
  %97 = load volatile i32, ptr %15, align 4
  %98 = and i32 %97, 8192
  %99 = icmp eq i32 %98, 0
  br i1 %99, label %105, label %100

100:                                              ; preds = %96
  %101 = getelementptr inbounds %struct.dma_device, ptr %0, i32 0, i32 41
  %102 = load ptr, ptr %101, align 4
  %103 = icmp eq ptr %102, null
  br i1 %103, label %104, label %105

104:                                              ; preds = %100
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef nonnull %5, ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.18) #16
  br label %198

105:                                              ; preds = %100, %96
  %106 = getelementptr inbounds %struct.dma_device, ptr %0, i32 0, i32 49
  %107 = load ptr, ptr %106, align 4
  %108 = icmp eq ptr %107, null
  br i1 %108, label %109, label %110

109:                                              ; preds = %105
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef nonnull %5, ptr noundef nonnull @.str.19) #16
  br label %198

110:                                              ; preds = %105
  %111 = getelementptr inbounds %struct.dma_device, ptr %0, i32 0, i32 50
  %112 = load ptr, ptr %111, align 4
  %113 = icmp eq ptr %112, null
  br i1 %113, label %114, label %115

114:                                              ; preds = %110
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef nonnull %5, ptr noundef nonnull @.str.20) #16
  br label %198

115:                                              ; preds = %110
  store volatile i32 1, ptr %0, align 4
  tail call void @_set_bit(i32 noundef 10, ptr noundef %15) #14
  %116 = tail call i32 @ida_alloc_range(ptr noundef nonnull @dma_ida, i32 noundef 0, i32 noundef -1, i32 noundef 3264) #14
  %117 = icmp slt i32 %116, 0
  br i1 %117, label %198, label %118

118:                                              ; preds = %115
  %119 = getelementptr inbounds %struct.dma_device, ptr %0, i32 0, i32 14
  store i32 %116, ptr %119, align 4
  %120 = getelementptr inbounds %struct.dma_device, ptr %0, i32 0, i32 18
  tail call void @__mutex_init(ptr noundef %120, ptr noundef nonnull @.str.21, ptr noundef nonnull @dma_async_device_register.__key) #14
  %121 = getelementptr inbounds %struct.dma_device, ptr %0, i32 0, i32 17
  store i32 0, ptr %121, align 4
  %122 = getelementptr inbounds %struct.dma_device, ptr %0, i32 0, i32 17, i32 0, i32 1
  store i32 33554437, ptr %122, align 4
  %123 = getelementptr inbounds %struct.dma_device, ptr %0, i32 0, i32 17, i32 0, i32 2
  store ptr null, ptr %123, align 4
  %124 = getelementptr inbounds %struct.dma_device, ptr %0, i32 0, i32 3
  br label %125

125:                                              ; preds = %129, %118
  %126 = phi ptr [ %124, %118 ], [ %127, %129 ]
  %127 = load ptr, ptr %126, align 4
  %128 = icmp eq ptr %127, %124
  br i1 %128, label %133, label %129

129:                                              ; preds = %125
  %130 = getelementptr i8, ptr %127, i32 -32
  %131 = tail call fastcc i32 @__dma_async_device_channel_register(ptr noundef %0, ptr noundef %130)
  %132 = icmp slt i32 %131, 0
  br i1 %132, label %174, label %125

133:                                              ; preds = %125
  tail call void @mutex_lock(ptr noundef nonnull @dma_list_mutex) #14
  %134 = load i32, ptr @dmaengine_ref_count, align 4
  %135 = icmp eq i32 %134, 0
  br i1 %135, label %149, label %136

136:                                              ; preds = %133
  %137 = load volatile i32, ptr %15, align 4
  %138 = and i32 %137, 512
  %139 = icmp eq i32 %138, 0
  br i1 %139, label %140, label %149

140:                                              ; preds = %144, %136
  %141 = phi ptr [ %142, %144 ], [ %124, %136 ]
  %142 = load ptr, ptr %141, align 4
  %143 = icmp eq ptr %142, %124
  br i1 %143, label %149, label %144

144:                                              ; preds = %140
  %145 = getelementptr i8, ptr %142, i32 -32
  %146 = tail call fastcc i32 @dma_chan_get(ptr noundef %145)
  %147 = icmp eq i32 %146, -19
  br i1 %147, label %148, label %140

148:                                              ; preds = %144
  tail call void @mutex_unlock(ptr noundef nonnull @dma_list_mutex) #14
  br label %174

149:                                              ; preds = %140, %136, %133
  %150 = getelementptr inbounds %struct.dma_device, ptr %0, i32 0, i32 4
  %151 = load ptr, ptr getelementptr inbounds (%struct.list_head, ptr @dma_device_list, i32 0, i32 1), align 4
  store ptr @dma_device_list, ptr %150, align 4
  %152 = getelementptr inbounds %struct.dma_device, ptr %0, i32 0, i32 4, i32 1
  store ptr %151, ptr %152, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #14, !srcloc !26
  store volatile ptr %150, ptr %151, align 4
  store ptr %150, ptr getelementptr inbounds (%struct.list_head, ptr @dma_device_list, i32 0, i32 1), align 4
  %153 = load volatile i32, ptr %15, align 4
  %154 = and i32 %153, 512
  %155 = icmp eq i32 %154, 0
  br i1 %155, label %160, label %156

156:                                              ; preds = %149
  %157 = getelementptr inbounds %struct.dma_device, ptr %0, i32 0, i32 2
  %158 = load i32, ptr %157, align 4
  %159 = add i32 %158, 1
  store i32 %159, ptr %157, align 4
  br label %160

160:                                              ; preds = %156, %149
  tail call fastcc void @dma_channel_rebalance()
  tail call void @mutex_unlock(ptr noundef nonnull @dma_list_mutex) #14
  %161 = load ptr, ptr %4, align 4
  %162 = getelementptr inbounds %struct.device, ptr %161, i32 0, i32 3
  %163 = load ptr, ptr %162, align 4
  %164 = icmp eq ptr %163, null
  br i1 %164, label %165, label %167

165:                                              ; preds = %160
  %166 = load ptr, ptr %161, align 4
  br label %167

167:                                              ; preds = %165, %160
  %168 = phi ptr [ %166, %165 ], [ %163, %160 ]
  %169 = load ptr, ptr @rootdir, align 4
  %170 = tail call ptr @debugfs_create_dir(ptr noundef %168, ptr noundef %169) #14
  %171 = getelementptr inbounds %struct.dma_device, ptr %0, i32 0, i32 53
  %172 = icmp ugt ptr %170, inttoptr (i32 -4096 to ptr)
  %173 = select i1 %172, ptr null, ptr %170
  store ptr %173, ptr %171, align 4
  br label %198

174:                                              ; preds = %148, %129
  %175 = phi i32 [ -19, %148 ], [ %131, %129 ]
  %176 = getelementptr inbounds %struct.dma_device, ptr %0, i32 0, i32 1
  %177 = load i32, ptr %176, align 4
  %178 = icmp eq i32 %177, 0
  br i1 %178, label %182, label %179

179:                                              ; preds = %174
  %180 = load ptr, ptr %124, align 4
  %181 = icmp eq ptr %180, %124
  br i1 %181, label %198, label %184

182:                                              ; preds = %174
  %183 = load i32, ptr %119, align 4
  tail call void @ida_free(ptr noundef nonnull @dma_ida, i32 noundef %183) #14
  br label %198

184:                                              ; preds = %195, %179
  %185 = phi ptr [ %196, %195 ], [ %180, %179 ]
  %186 = getelementptr i8, ptr %185, i32 8
  %187 = load ptr, ptr %186, align 4
  %188 = icmp eq ptr %187, null
  br i1 %188, label %195, label %189

189:                                              ; preds = %184
  tail call void @mutex_lock(ptr noundef nonnull @dma_list_mutex) #14
  %190 = getelementptr i8, ptr %185, i32 -12
  %191 = load ptr, ptr %190, align 4
  store ptr null, ptr %191, align 8
  tail call void @mutex_unlock(ptr noundef nonnull @dma_list_mutex) #14
  %192 = load ptr, ptr %190, align 4
  %193 = getelementptr inbounds %struct.dma_chan_dev, ptr %192, i32 0, i32 1
  tail call void @device_unregister(ptr noundef %193) #14
  %194 = load ptr, ptr %186, align 4
  tail call void @free_percpu(ptr noundef %194) #14
  br label %195

195:                                              ; preds = %189, %184
  %196 = load ptr, ptr %185, align 4
  %197 = icmp eq ptr %196, %124
  br i1 %197, label %198, label %184

198:                                              ; preds = %195, %182, %179, %167, %115, %114, %109, %104, %95, %86, %77, %68, %59, %50, %41, %32, %23, %7, %1
  %199 = phi i32 [ %175, %182 ], [ 0, %167 ], [ -5, %114 ], [ -5, %109 ], [ -5, %104 ], [ -5, %95 ], [ -5, %86 ], [ -5, %77 ], [ -5, %68 ], [ -5, %59 ], [ -5, %50 ], [ -5, %41 ], [ -5, %32 ], [ -5, %23 ], [ -5, %7 ], [ -19, %1 ], [ %116, %115 ], [ %175, %179 ], [ %175, %195 ]
  ret i32 %199
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @ida_free(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @device_unregister(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @free_percpu(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @dma_async_device_unregister(ptr noundef %0) #1 {
  %2 = getelementptr inbounds %struct.dma_device, ptr %0, i32 0, i32 53
  %3 = load ptr, ptr %2, align 4
  tail call void @debugfs_remove(ptr noundef %3) #14
  store ptr null, ptr %2, align 4
  %4 = getelementptr inbounds %struct.dma_device, ptr %0, i32 0, i32 3
  %5 = load ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, %4
  br i1 %6, label %12, label %7

7:                                                ; preds = %7, %1
  %8 = phi ptr [ %10, %7 ], [ %5, %1 ]
  %9 = getelementptr i8, ptr %8, i32 -32
  %10 = load ptr, ptr %8, align 4
  tail call fastcc void @__dma_async_device_channel_unregister(ptr noundef %0, ptr noundef %9)
  %11 = icmp eq ptr %10, %4
  br i1 %11, label %12, label %7

12:                                               ; preds = %7, %1
  tail call void @mutex_lock(ptr noundef nonnull @dma_list_mutex) #14
  %13 = getelementptr inbounds %struct.dma_device, ptr %0, i32 0, i32 6
  tail call void @_set_bit(i32 noundef 9, ptr noundef %13) #14
  tail call fastcc void @dma_channel_rebalance()
  %14 = getelementptr inbounds %struct.dma_device, ptr %0, i32 0, i32 14
  %15 = load i32, ptr %14, align 4
  tail call void @ida_free(ptr noundef nonnull @dma_ida, i32 noundef %15) #14
  tail call void asm sideeffect "dmb ish", "~{memory}"() #14, !srcloc !21
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %0) #14, !srcloc !18
  %16 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %0, ptr %0, i32 1, ptr elementtype(i32) %0) #14, !srcloc !22
  %17 = extractvalue { i32, i32, i32 } %16, 0
  %18 = icmp eq i32 %17, 1
  br i1 %18, label %22, label %19

19:                                               ; preds = %12
  %20 = icmp sgt i32 %17, 0
  br i1 %20, label %32, label %21, !prof !20

21:                                               ; preds = %19
  tail call void @refcount_warn_saturate(ptr noundef %0, i32 noundef 3) #14
  br label %32

22:                                               ; preds = %12
  tail call void asm sideeffect "dmb ish", "~{memory}"() #14, !srcloc !23
  %23 = getelementptr inbounds %struct.dma_device, ptr %0, i32 0, i32 4
  %24 = getelementptr inbounds %struct.dma_device, ptr %0, i32 0, i32 4, i32 1
  %25 = load ptr, ptr %24, align 4
  %26 = load ptr, ptr %23, align 4
  %27 = getelementptr inbounds %struct.list_head, ptr %26, i32 0, i32 1
  store ptr %25, ptr %27, align 4
  store volatile ptr %26, ptr %25, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %24, align 4
  tail call fastcc void @dma_channel_rebalance() #14
  %28 = getelementptr inbounds %struct.dma_device, ptr %0, i32 0, i32 51
  %29 = load ptr, ptr %28, align 4
  %30 = icmp eq ptr %29, null
  br i1 %30, label %32, label %31

31:                                               ; preds = %22
  tail call void %29(ptr noundef %0) #14
  br label %32

32:                                               ; preds = %31, %22, %21, %19
  tail call void @mutex_unlock(ptr noundef nonnull @dma_list_mutex) #14
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @dmaenginem_async_device_register(ptr noundef %0) #1 {
  %2 = tail call noalias ptr @__devres_alloc_node(ptr noundef nonnull @dmam_device_release, i32 noundef 4, i32 noundef 3264, i32 noundef -1, ptr noundef nonnull @.str.22) #14
  %3 = icmp eq ptr %2, null
  br i1 %3, label %11, label %4

4:                                                ; preds = %1
  %5 = tail call i32 @dma_async_device_register(ptr noundef %0)
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %10

7:                                                ; preds = %4
  store ptr %0, ptr %2, align 4
  %8 = getelementptr inbounds %struct.dma_device, ptr %0, i32 0, i32 15
  %9 = load ptr, ptr %8, align 4
  tail call void @devres_add(ptr noundef %9, ptr noundef nonnull %2) #14
  br label %11

10:                                               ; preds = %4
  tail call void @devres_free(ptr noundef nonnull %2) #14
  br label %11

11:                                               ; preds = %10, %7, %1
  %12 = phi i32 [ -12, %1 ], [ %5, %10 ], [ 0, %7 ]
  ret i32 %12
}

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @__devres_alloc_node(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @dmam_device_release(ptr nocapture noundef readnone %0, ptr nocapture noundef readonly %1) #1 {
  %3 = load ptr, ptr %1, align 4
  tail call void @dma_async_device_unregister(ptr noundef %3)
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @devres_add(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @devres_free(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @dmaengine_unmap_put(ptr noundef %0) #1 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %83, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.dmaengine_unmap_data, ptr %0, i32 0, i32 5
  tail call void asm sideeffect "dmb ish", "~{memory}"() #14, !srcloc !21
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %4) #14, !srcloc !18
  %5 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %4, ptr %4, i32 1, ptr elementtype(i32) %4) #14, !srcloc !22
  %6 = extractvalue { i32, i32, i32 } %5, 0
  %7 = icmp eq i32 %6, 1
  br i1 %7, label %11, label %8

8:                                                ; preds = %3
  %9 = icmp sgt i32 %6, 0
  br i1 %9, label %83, label %10, !prof !20

10:                                               ; preds = %8
  tail call void @refcount_warn_saturate(ptr noundef %4, i32 noundef 3) #14
  br label %83

11:                                               ; preds = %3
  tail call void asm sideeffect "dmb ish", "~{memory}"() #14, !srcloc !23
  %12 = getelementptr %struct.dmaengine_unmap_data, ptr %0, i32 0, i32 4
  %13 = load ptr, ptr %12, align 4
  %14 = getelementptr %struct.dmaengine_unmap_data, ptr %0, i32 0, i32 1
  %15 = load i8, ptr %14, align 2
  %16 = zext i8 %15 to i32
  %17 = icmp eq i8 %15, 0
  br i1 %17, label %28, label %18

18:                                               ; preds = %11
  %19 = getelementptr %struct.dmaengine_unmap_data, ptr %0, i32 1
  %20 = getelementptr %struct.dmaengine_unmap_data, ptr %0, i32 0, i32 6
  br label %21

21:                                               ; preds = %21, %18
  %22 = phi i32 [ 0, %18 ], [ %26, %21 ]
  %23 = getelementptr [0 x i32], ptr %19, i32 0, i32 %22
  %24 = load i32, ptr %23, align 4
  %25 = load i32, ptr %20, align 4
  tail call void @dma_unmap_page_attrs(ptr noundef %13, i32 noundef %24, i32 noundef %25, i32 noundef 1, i32 noundef 0) #14
  %26 = add nuw nsw i32 %22, 1
  %27 = icmp eq i32 %26, %16
  br i1 %27, label %28, label %21

28:                                               ; preds = %21, %11
  %29 = getelementptr %struct.dmaengine_unmap_data, ptr %0, i32 0, i32 2
  %30 = load i8, ptr %29, align 1
  %31 = zext i8 %30 to i32
  %32 = add nuw nsw i32 %31, %16
  %33 = icmp eq i8 %30, 0
  br i1 %33, label %44, label %34

34:                                               ; preds = %28
  %35 = getelementptr %struct.dmaengine_unmap_data, ptr %0, i32 1
  %36 = getelementptr %struct.dmaengine_unmap_data, ptr %0, i32 0, i32 6
  br label %37

37:                                               ; preds = %37, %34
  %38 = phi i32 [ %16, %34 ], [ %42, %37 ]
  %39 = getelementptr [0 x i32], ptr %35, i32 0, i32 %38
  %40 = load i32, ptr %39, align 4
  %41 = load i32, ptr %36, align 4
  tail call void @dma_unmap_page_attrs(ptr noundef %13, i32 noundef %40, i32 noundef %41, i32 noundef 2, i32 noundef 0) #14
  %42 = add nuw nsw i32 %38, 1
  %43 = icmp eq i32 %42, %32
  br i1 %43, label %44, label %37

44:                                               ; preds = %37, %28
  %45 = phi i32 [ %16, %28 ], [ %32, %37 ]
  %46 = getelementptr %struct.dmaengine_unmap_data, ptr %0, i32 0, i32 3
  %47 = load i8, ptr %46, align 4
  %48 = zext i8 %47 to i32
  %49 = add nuw nsw i32 %32, %48
  %50 = icmp ult i32 %45, %49
  br i1 %50, label %51, label %64

51:                                               ; preds = %44
  %52 = getelementptr %struct.dmaengine_unmap_data, ptr %0, i32 1
  %53 = getelementptr %struct.dmaengine_unmap_data, ptr %0, i32 0, i32 6
  br label %54

54:                                               ; preds = %61, %51
  %55 = phi i32 [ %45, %51 ], [ %62, %61 ]
  %56 = getelementptr [0 x i32], ptr %52, i32 0, i32 %55
  %57 = load i32, ptr %56, align 4
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %61, label %59

59:                                               ; preds = %54
  %60 = load i32, ptr %53, align 4
  tail call void @dma_unmap_page_attrs(ptr noundef %13, i32 noundef %57, i32 noundef %60, i32 noundef 0, i32 noundef 0) #14
  br label %61

61:                                               ; preds = %59, %54
  %62 = add nuw nsw i32 %55, 1
  %63 = icmp eq i32 %62, %49
  br i1 %63, label %64, label %54

64:                                               ; preds = %61, %44
  %65 = load i16, ptr %0, align 4
  %66 = icmp eq i16 %65, 0
  br i1 %66, label %73, label %67

67:                                               ; preds = %64
  %68 = zext i16 %65 to i32
  %69 = add nsw i32 %68, -1
  %70 = icmp eq i32 %69, 0
  br i1 %70, label %79, label %71

71:                                               ; preds = %67
  %72 = icmp ult i32 %69, 256
  br i1 %72, label %74, label %73

73:                                               ; preds = %71, %64
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/dma/dmaengine.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1407, 0\0A.popsection", ""() #14, !srcloc !27
  unreachable

74:                                               ; preds = %71
  %75 = tail call i32 @llvm.ctlz.i32(i32 %69, i1 true) #14, !range !28
  %76 = sub nuw nsw i32 32, %75
  %77 = getelementptr inbounds [9 x ptr], ptr @switch.table.dmaengine_get_unmap_data, i32 0, i32 %76
  %78 = load ptr, ptr %77, align 4
  br label %79

79:                                               ; preds = %74, %67
  %80 = phi ptr [ @unmap_pool, %67 ], [ %78, %74 ]
  %81 = getelementptr inbounds %struct.dmaengine_unmap_pool, ptr %80, i32 0, i32 2
  %82 = load ptr, ptr %81, align 4
  tail call void @mempool_free(ptr noundef nonnull %0, ptr noundef %82) #14
  br label %83

83:                                               ; preds = %79, %10, %8, %1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @dmaengine_get_unmap_data(ptr noundef %0, i32 noundef %1, i32 noundef %2) #1 {
  %4 = icmp eq i32 %1, 0
  br i1 %4, label %10, label %5

5:                                                ; preds = %3
  %6 = add i32 %1, -1
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %16, label %8

8:                                                ; preds = %5
  %9 = icmp ult i32 %6, 256
  br i1 %9, label %11, label %10

10:                                               ; preds = %8, %3
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/dma/dmaengine.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1407, 0\0A.popsection", ""() #14, !srcloc !27
  unreachable

11:                                               ; preds = %8
  %12 = tail call i32 @llvm.ctlz.i32(i32 %6, i1 true) #14, !range !28
  %13 = sub nuw nsw i32 32, %12
  %14 = getelementptr inbounds [9 x ptr], ptr @switch.table.dmaengine_get_unmap_data, i32 0, i32 %13
  %15 = load ptr, ptr %14, align 4
  br label %16

16:                                               ; preds = %11, %5
  %17 = phi ptr [ @unmap_pool, %5 ], [ %15, %11 ]
  %18 = getelementptr inbounds %struct.dmaengine_unmap_pool, ptr %17, i32 0, i32 2
  %19 = load ptr, ptr %18, align 4
  %20 = tail call noalias ptr @mempool_alloc(ptr noundef %19, i32 noundef %2) #14
  %21 = icmp eq ptr %20, null
  br i1 %21, label %26, label %22

22:                                               ; preds = %16
  tail call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(20) %20, i8 0, i32 20, i1 false)
  %23 = getelementptr inbounds %struct.dmaengine_unmap_data, ptr %20, i32 0, i32 5
  store volatile i32 1, ptr %23, align 4
  %24 = getelementptr inbounds %struct.dmaengine_unmap_data, ptr %20, i32 0, i32 4
  store ptr %0, ptr %24, align 4
  %25 = trunc i32 %1 to i16
  store i16 %25, ptr %20, align 4
  br label %26

26:                                               ; preds = %22, %16
  ret ptr %20
}

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @mempool_alloc(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn writeonly uwtable(sync)
define dso_local void @dma_async_tx_descriptor_init(ptr nocapture noundef writeonly %0, ptr noundef %1) #6 {
  %3 = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %0, i32 0, i32 3
  store ptr %1, ptr %3, align 4
  %4 = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %0, i32 0, i32 14
  store i32 0, ptr %4, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @dmaengine_desc_attach_metadata(ptr noundef %0, ptr noundef %1, i32 noundef %2) #1 {
  %4 = icmp eq ptr %0, null
  br i1 %4, label %28, label %5

5:                                                ; preds = %3
  %6 = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %0, i32 0, i32 10
  %7 = load i32, ptr %6, align 4
  switch i32 %7, label %28 [
    i32 0, label %8
    i32 1, label %19
  ]

8:                                                ; preds = %5
  %9 = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %0, i32 0, i32 3
  %10 = load ptr, ptr %9, align 4
  %11 = icmp eq ptr %10, null
  br i1 %11, label %28, label %12

12:                                               ; preds = %8
  %13 = load ptr, ptr %10, align 4
  %14 = getelementptr inbounds %struct.dma_device, ptr %13, i32 0, i32 7
  %15 = load i32, ptr %14, align 4
  %16 = and i32 %15, 1
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %28, label %18

18:                                               ; preds = %12
  store i32 1, ptr %6, align 4
  br label %19

19:                                               ; preds = %18, %5
  %20 = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %0, i32 0, i32 11
  %21 = load ptr, ptr %20, align 4
  %22 = icmp eq ptr %21, null
  br i1 %22, label %28, label %23

23:                                               ; preds = %19
  %24 = load ptr, ptr %21, align 4
  %25 = icmp eq ptr %24, null
  br i1 %25, label %28, label %26

26:                                               ; preds = %23
  %27 = tail call i32 %24(ptr noundef nonnull %0, ptr noundef %1, i32 noundef %2) #14
  br label %28

28:                                               ; preds = %26, %23, %19, %12, %8, %5, %3
  %29 = phi i32 [ %27, %26 ], [ -22, %3 ], [ -524, %23 ], [ -524, %19 ], [ -524, %8 ], [ -524, %12 ], [ -22, %5 ]
  ret i32 %29
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @dmaengine_desc_get_metadata_ptr(ptr noundef %0, ptr noundef %1, ptr noundef %2) #1 {
  %4 = icmp eq ptr %0, null
  br i1 %4, label %29, label %5

5:                                                ; preds = %3
  %6 = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %0, i32 0, i32 10
  %7 = load i32, ptr %6, align 4
  switch i32 %7, label %29 [
    i32 0, label %8
    i32 2, label %19
  ]

8:                                                ; preds = %5
  %9 = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %0, i32 0, i32 3
  %10 = load ptr, ptr %9, align 4
  %11 = icmp eq ptr %10, null
  br i1 %11, label %29, label %12

12:                                               ; preds = %8
  %13 = load ptr, ptr %10, align 4
  %14 = getelementptr inbounds %struct.dma_device, ptr %13, i32 0, i32 7
  %15 = load i32, ptr %14, align 4
  %16 = and i32 %15, 2
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %29, label %18

18:                                               ; preds = %12
  store i32 2, ptr %6, align 4
  br label %19

19:                                               ; preds = %18, %5
  %20 = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %0, i32 0, i32 11
  %21 = load ptr, ptr %20, align 4
  %22 = icmp eq ptr %21, null
  br i1 %22, label %29, label %23

23:                                               ; preds = %19
  %24 = getelementptr inbounds %struct.dma_descriptor_metadata_ops, ptr %21, i32 0, i32 1
  %25 = load ptr, ptr %24, align 4
  %26 = icmp eq ptr %25, null
  br i1 %26, label %29, label %27

27:                                               ; preds = %23
  %28 = tail call ptr %25(ptr noundef nonnull %0, ptr noundef %1, ptr noundef %2) #14
  br label %29

29:                                               ; preds = %27, %23, %19, %12, %8, %5, %3
  %30 = phi ptr [ %28, %27 ], [ inttoptr (i32 -22 to ptr), %3 ], [ inttoptr (i32 -524 to ptr), %23 ], [ inttoptr (i32 -524 to ptr), %19 ], [ inttoptr (i32 -524 to ptr), %8 ], [ inttoptr (i32 -524 to ptr), %12 ], [ inttoptr (i32 -22 to ptr), %5 ]
  ret ptr %30
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @dmaengine_desc_set_metadata_len(ptr noundef %0, i32 noundef %1) #1 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %28, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %0, i32 0, i32 10
  %6 = load i32, ptr %5, align 4
  switch i32 %6, label %28 [
    i32 0, label %7
    i32 2, label %18
  ]

7:                                                ; preds = %4
  %8 = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %0, i32 0, i32 3
  %9 = load ptr, ptr %8, align 4
  %10 = icmp eq ptr %9, null
  br i1 %10, label %28, label %11

11:                                               ; preds = %7
  %12 = load ptr, ptr %9, align 4
  %13 = getelementptr inbounds %struct.dma_device, ptr %12, i32 0, i32 7
  %14 = load i32, ptr %13, align 4
  %15 = and i32 %14, 2
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %28, label %17

17:                                               ; preds = %11
  store i32 2, ptr %5, align 4
  br label %18

18:                                               ; preds = %17, %4
  %19 = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %0, i32 0, i32 11
  %20 = load ptr, ptr %19, align 4
  %21 = icmp eq ptr %20, null
  br i1 %21, label %28, label %22

22:                                               ; preds = %18
  %23 = getelementptr inbounds %struct.dma_descriptor_metadata_ops, ptr %20, i32 0, i32 2
  %24 = load ptr, ptr %23, align 4
  %25 = icmp eq ptr %24, null
  br i1 %25, label %28, label %26

26:                                               ; preds = %22
  %27 = tail call i32 %24(ptr noundef nonnull %0, i32 noundef %1) #14
  br label %28

28:                                               ; preds = %26, %22, %18, %11, %7, %4, %2
  %29 = phi i32 [ %27, %26 ], [ -22, %2 ], [ -524, %22 ], [ -524, %18 ], [ -524, %7 ], [ -524, %11 ], [ -22, %4 ]
  ret i32 %29
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @dma_wait_for_async_tx(ptr noundef readonly %0) #1 {
  %2 = alloca %struct.dma_tx_state, align 4
  %3 = load volatile i32, ptr @jiffies, align 64
  %4 = icmp eq ptr %0, null
  br i1 %4, label %54, label %5

5:                                                ; preds = %1
  %6 = load i32, ptr %0, align 4
  %7 = icmp eq i32 %6, -16
  br i1 %7, label %8, label %23

8:                                                ; preds = %5
  %9 = sub i32 -500, %3
  br label %10

10:                                               ; preds = %20, %8
  %11 = load volatile i32, ptr @jiffies, align 64
  %12 = add i32 %9, %11
  %13 = icmp sgt i32 %12, -1
  br i1 %13, label %14, label %20

14:                                               ; preds = %10
  %15 = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %0, i32 0, i32 3
  %16 = load ptr, ptr %15, align 4
  %17 = load ptr, ptr %16, align 4
  %18 = getelementptr inbounds %struct.dma_device, ptr %17, i32 0, i32 15
  %19 = load ptr, ptr %18, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %19, ptr noundef nonnull @.str.23, ptr noundef nonnull @__func__.dma_wait_for_async_tx) #16
  br label %54

20:                                               ; preds = %10
  tail call void asm sideeffect "dmb ish", "~{memory}"() #14, !srcloc !29
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #14, !srcloc !30
  %21 = load i32, ptr %0, align 4
  %22 = icmp eq i32 %21, -16
  br i1 %22, label %10, label %23

23:                                               ; preds = %20, %5
  %24 = phi i32 [ %6, %5 ], [ %21, %20 ]
  %25 = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %0, i32 0, i32 3
  %26 = load ptr, ptr %25, align 4
  %27 = load volatile i32, ptr @jiffies, align 64
  %28 = load ptr, ptr %26, align 4
  %29 = getelementptr inbounds %struct.dma_device, ptr %28, i32 0, i32 50
  %30 = load ptr, ptr %29, align 4
  tail call void %30(ptr noundef %26) #14
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %2) #14
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(16) %2, i8 0, i32 16, i1 false) #14, !annotation !9
  %31 = load ptr, ptr %26, align 4
  %32 = getelementptr inbounds %struct.dma_device, ptr %31, i32 0, i32 49
  %33 = load ptr, ptr %32, align 4
  %34 = call i32 %33(ptr noundef %26, i32 noundef %24, ptr noundef nonnull %2) #14
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %2) #14
  %35 = load volatile i32, ptr @jiffies, align 64
  %36 = sub i32 -500, %27
  %37 = add i32 %35, %36
  %38 = icmp sgt i32 %37, -1
  br i1 %38, label %39, label %43

39:                                               ; preds = %46, %23
  %40 = load ptr, ptr %26, align 4
  %41 = getelementptr inbounds %struct.dma_device, ptr %40, i32 0, i32 15
  %42 = load ptr, ptr %41, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %42, ptr noundef nonnull @.str, ptr noundef nonnull @__func__.dma_sync_wait) #16
  br label %54

43:                                               ; preds = %46, %23
  %44 = phi i32 [ %50, %46 ], [ %34, %23 ]
  %45 = icmp eq i32 %44, 1
  br i1 %45, label %46, label %54

46:                                               ; preds = %43
  call void asm sideeffect "dmb ish", "~{memory}"() #14, !srcloc !10
  call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #14, !srcloc !11
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %2) #14
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(16) %2, i8 0, i32 16, i1 false) #14, !annotation !9
  %47 = load ptr, ptr %26, align 4
  %48 = getelementptr inbounds %struct.dma_device, ptr %47, i32 0, i32 49
  %49 = load ptr, ptr %48, align 4
  %50 = call i32 %49(ptr noundef %26, i32 noundef %24, ptr noundef nonnull %2) #14
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %2) #14
  %51 = load volatile i32, ptr @jiffies, align 64
  %52 = add i32 %51, %36
  %53 = icmp sgt i32 %52, -1
  br i1 %53, label %39, label %43

54:                                               ; preds = %43, %39, %14, %1
  %55 = phi i32 [ 3, %14 ], [ 0, %1 ], [ 3, %39 ], [ %44, %43 ]
  ret i32 %55
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @dma_run_dependencies(ptr nocapture noundef %0) #1 {
  %2 = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %0, i32 0, i32 12
  %3 = load ptr, ptr %2, align 4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %30, label %5

5:                                                ; preds = %1
  store ptr null, ptr %2, align 4
  %6 = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %3, i32 0, i32 3
  %7 = load ptr, ptr %6, align 4
  br label %8

8:                                                ; preds = %20, %5
  %9 = phi ptr [ %3, %5 ], [ %21, %20 ]
  %10 = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %9, i32 0, i32 14
  tail call void @_raw_spin_lock_bh(ptr noundef %10) #14
  %11 = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %9, i32 0, i32 13
  store ptr null, ptr %11, align 4
  %12 = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %9, i32 0, i32 12
  %13 = load ptr, ptr %12, align 4
  %14 = icmp eq ptr %13, null
  br i1 %14, label %20, label %15

15:                                               ; preds = %8
  %16 = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %13, i32 0, i32 3
  %17 = load ptr, ptr %16, align 4
  %18 = icmp eq ptr %17, %7
  br i1 %18, label %19, label %20

19:                                               ; preds = %15
  store ptr null, ptr %12, align 4
  br label %20

20:                                               ; preds = %19, %15, %8
  %21 = phi ptr [ %13, %19 ], [ null, %15 ], [ null, %8 ]
  tail call void @_raw_spin_unlock_bh(ptr noundef %10) #14
  %22 = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %9, i32 0, i32 4
  %23 = load ptr, ptr %22, align 4
  %24 = tail call i32 %23(ptr noundef nonnull %9) #14
  %25 = icmp eq ptr %21, null
  br i1 %25, label %26, label %8

26:                                               ; preds = %20
  %27 = load ptr, ptr %7, align 4
  %28 = getelementptr inbounds %struct.dma_device, ptr %27, i32 0, i32 50
  %29 = load ptr, ptr %28, align 4
  tail call void %29(ptr noundef %7) #14
  br label %30

30:                                               ; preds = %26, %1
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @dma_bus_init() #0 section ".init.text" {
  %1 = tail call fastcc i32 @dmaengine_init_unmap_pool() #19
  %2 = icmp eq i32 %1, 0
  br i1 %2, label %3, label %7

3:                                                ; preds = %0
  %4 = tail call i32 @__class_register(ptr noundef nonnull @dma_devclass, ptr noundef nonnull @dma_bus_init.__key) #14
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %7

6:                                                ; preds = %3
  tail call fastcc void @dmaengine_debugfs_init() #19
  br label %7

7:                                                ; preds = %6, %3, %0
  %8 = phi i32 [ %1, %0 ], [ 0, %6 ], [ %4, %3 ]
  ret i32 %8
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_find_next_bit_le(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__alloc_percpu(i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__module_get(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @try_module_get(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @module_put(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #9

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @cpumask_next(i32 noundef, ptr noundef) local_unnamed_addr #10

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_set_name(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_register(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #11

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #12

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ida_alloc_range(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @chan_dev_release(ptr noundef %0) #1 {
  %2 = getelementptr i8, ptr %0, i32 -8
  tail call void @kfree(ptr noundef %2) #14
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @memcpy_count_show(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr nocapture noundef writeonly %2) #1 {
  tail call void @mutex_lock(ptr noundef nonnull @dma_list_mutex) #14
  %4 = getelementptr i8, ptr %0, i32 -8
  %5 = load ptr, ptr %4, align 8
  %6 = icmp eq ptr %5, null
  br i1 %6, label %29, label %7

7:                                                ; preds = %3
  %8 = load i32, ptr @nr_cpu_ids, align 4
  %9 = tail call i32 @cpumask_next(i32 noundef -1, ptr noundef nonnull @__cpu_possible_mask) #17
  %10 = icmp ult i32 %9, %8
  br i1 %10, label %11, label %26

11:                                               ; preds = %7
  %12 = getelementptr inbounds %struct.dma_chan, ptr %5, i32 0, i32 9
  %13 = load ptr, ptr %12, align 4
  %14 = ptrtoint ptr %13 to i32
  br label %15

15:                                               ; preds = %15, %11
  %16 = phi i32 [ %9, %11 ], [ %24, %15 ]
  %17 = phi i32 [ 0, %11 ], [ %23, %15 ]
  %18 = getelementptr [16 x i32], ptr @__per_cpu_offset, i32 0, i32 %16
  %19 = load i32, ptr %18, align 4
  %20 = add i32 %19, %14
  %21 = inttoptr i32 %20 to ptr
  %22 = load i32, ptr %21, align 4
  %23 = add i32 %22, %17
  %24 = tail call i32 @cpumask_next(i32 noundef %16, ptr noundef nonnull @__cpu_possible_mask) #17
  %25 = icmp ult i32 %24, %8
  br i1 %25, label %15, label %26

26:                                               ; preds = %15, %7
  %27 = phi i32 [ 0, %7 ], [ %23, %15 ]
  %28 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %2, ptr noundef nonnull @.str.29, i32 noundef %27)
  br label %29

29:                                               ; preds = %26, %3
  %30 = phi i32 [ %28, %26 ], [ -19, %3 ]
  tail call void @mutex_unlock(ptr noundef nonnull @dma_list_mutex) #14
  ret i32 %30
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #13

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @bytes_transferred_show(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr nocapture noundef writeonly %2) #1 {
  tail call void @mutex_lock(ptr noundef nonnull @dma_list_mutex) #14
  %4 = getelementptr i8, ptr %0, i32 -8
  %5 = load ptr, ptr %4, align 8
  %6 = icmp eq ptr %5, null
  br i1 %6, label %30, label %7

7:                                                ; preds = %3
  %8 = load i32, ptr @nr_cpu_ids, align 4
  %9 = tail call i32 @cpumask_next(i32 noundef -1, ptr noundef nonnull @__cpu_possible_mask) #17
  %10 = icmp ult i32 %9, %8
  br i1 %10, label %11, label %27

11:                                               ; preds = %7
  %12 = getelementptr inbounds %struct.dma_chan, ptr %5, i32 0, i32 9
  %13 = load ptr, ptr %12, align 4
  %14 = ptrtoint ptr %13 to i32
  br label %15

15:                                               ; preds = %15, %11
  %16 = phi i32 [ %9, %11 ], [ %25, %15 ]
  %17 = phi i32 [ 0, %11 ], [ %24, %15 ]
  %18 = getelementptr [16 x i32], ptr @__per_cpu_offset, i32 0, i32 %16
  %19 = load i32, ptr %18, align 4
  %20 = add i32 %19, %14
  %21 = inttoptr i32 %20 to ptr
  %22 = getelementptr inbounds %struct.dma_chan_percpu, ptr %21, i32 0, i32 1
  %23 = load i32, ptr %22, align 4
  %24 = add i32 %23, %17
  %25 = tail call i32 @cpumask_next(i32 noundef %16, ptr noundef nonnull @__cpu_possible_mask) #17
  %26 = icmp ult i32 %25, %8
  br i1 %26, label %15, label %27

27:                                               ; preds = %15, %7
  %28 = phi i32 [ 0, %7 ], [ %24, %15 ]
  %29 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %2, ptr noundef nonnull @.str.29, i32 noundef %28)
  br label %30

30:                                               ; preds = %27, %3
  %31 = phi i32 [ %29, %27 ], [ -19, %3 ]
  tail call void @mutex_unlock(ptr noundef nonnull @dma_list_mutex) #14
  ret i32 %31
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @in_use_show(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr nocapture noundef writeonly %2) #1 {
  tail call void @mutex_lock(ptr noundef nonnull @dma_list_mutex) #14
  %4 = getelementptr i8, ptr %0, i32 -8
  %5 = load ptr, ptr %4, align 8
  %6 = icmp eq ptr %5, null
  br i1 %6, label %11, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.dma_chan, ptr %5, i32 0, i32 10
  %9 = load i32, ptr %8, align 4
  %10 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %2, ptr noundef nonnull @.str.32, i32 noundef %9)
  br label %11

11:                                               ; preds = %7, %3
  %12 = phi i32 [ %10, %7 ], [ -19, %3 ]
  tail call void @mutex_unlock(ptr noundef nonnull @dma_list_mutex) #14
  ret i32 %12
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @debugfs_create_dir(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @debugfs_remove(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_unmap_page_attrs(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @mempool_free(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_bh(ptr noundef) local_unnamed_addr #4 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_bh(ptr noundef) local_unnamed_addr #4 section ".spinlock.text"

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal fastcc i32 @dmaengine_init_unmap_pool() unnamed_addr #0 section ".init.text" {
  br label %1

1:                                                ; preds = %16, %0
  %2 = phi i32 [ 0, %0 ], [ %17, %16 ]
  %3 = getelementptr [4 x %struct.dmaengine_unmap_pool], ptr @unmap_pool, i32 0, i32 %2
  %4 = getelementptr [4 x %struct.dmaengine_unmap_pool], ptr @unmap_pool, i32 0, i32 %2, i32 3
  %5 = load i32, ptr %4, align 4
  %6 = shl i32 %5, 2
  %7 = add i32 %6, 20
  %8 = getelementptr [4 x %struct.dmaengine_unmap_pool], ptr @unmap_pool, i32 0, i32 %2, i32 1
  %9 = load ptr, ptr %8, align 4
  %10 = tail call ptr @kmem_cache_create(ptr noundef %9, i32 noundef %7, i32 noundef 0, i32 noundef 8192, ptr noundef null) #14
  store ptr %10, ptr %3, align 4
  %11 = icmp eq ptr %10, null
  br i1 %11, label %19, label %12

12:                                               ; preds = %1
  %13 = tail call ptr @mempool_create(i32 noundef 1, ptr noundef nonnull @mempool_alloc_slab, ptr noundef nonnull @mempool_free_slab, ptr noundef nonnull %10) #14
  %14 = getelementptr [4 x %struct.dmaengine_unmap_pool], ptr @unmap_pool, i32 0, i32 %2, i32 2
  store ptr %13, ptr %14, align 4
  %15 = icmp eq ptr %13, null
  br i1 %15, label %19, label %16

16:                                               ; preds = %12
  %17 = add nuw nsw i32 %2, 1
  %18 = icmp eq i32 %17, 4
  br i1 %18, label %28, label %1

19:                                               ; preds = %12, %1
  %20 = load ptr, ptr getelementptr inbounds ([4 x %struct.dmaengine_unmap_pool], ptr @unmap_pool, i32 0, i32 0, i32 2), align 4
  tail call void @mempool_destroy(ptr noundef %20) #14
  store ptr null, ptr getelementptr inbounds ([4 x %struct.dmaengine_unmap_pool], ptr @unmap_pool, i32 0, i32 0, i32 2), align 4
  %21 = load ptr, ptr @unmap_pool, align 4
  tail call void @kmem_cache_destroy(ptr noundef %21) #14
  store ptr null, ptr @unmap_pool, align 4
  %22 = load ptr, ptr getelementptr inbounds ([4 x %struct.dmaengine_unmap_pool], ptr @unmap_pool, i32 0, i32 1, i32 2), align 4
  tail call void @mempool_destroy(ptr noundef %22) #14
  store ptr null, ptr getelementptr inbounds ([4 x %struct.dmaengine_unmap_pool], ptr @unmap_pool, i32 0, i32 1, i32 2), align 4
  %23 = load ptr, ptr getelementptr inbounds ([4 x %struct.dmaengine_unmap_pool], ptr @unmap_pool, i32 0, i32 1), align 4
  tail call void @kmem_cache_destroy(ptr noundef %23) #14
  store ptr null, ptr getelementptr inbounds ([4 x %struct.dmaengine_unmap_pool], ptr @unmap_pool, i32 0, i32 1), align 4
  %24 = load ptr, ptr getelementptr inbounds ([4 x %struct.dmaengine_unmap_pool], ptr @unmap_pool, i32 0, i32 2, i32 2), align 4
  tail call void @mempool_destroy(ptr noundef %24) #14
  store ptr null, ptr getelementptr inbounds ([4 x %struct.dmaengine_unmap_pool], ptr @unmap_pool, i32 0, i32 2, i32 2), align 4
  %25 = load ptr, ptr getelementptr inbounds ([4 x %struct.dmaengine_unmap_pool], ptr @unmap_pool, i32 0, i32 2), align 4
  tail call void @kmem_cache_destroy(ptr noundef %25) #14
  store ptr null, ptr getelementptr inbounds ([4 x %struct.dmaengine_unmap_pool], ptr @unmap_pool, i32 0, i32 2), align 4
  %26 = load ptr, ptr getelementptr inbounds ([4 x %struct.dmaengine_unmap_pool], ptr @unmap_pool, i32 0, i32 3, i32 2), align 4
  tail call void @mempool_destroy(ptr noundef %26) #14
  store ptr null, ptr getelementptr inbounds ([4 x %struct.dmaengine_unmap_pool], ptr @unmap_pool, i32 0, i32 3, i32 2), align 4
  %27 = load ptr, ptr getelementptr inbounds ([4 x %struct.dmaengine_unmap_pool], ptr @unmap_pool, i32 0, i32 3), align 4
  tail call void @kmem_cache_destroy(ptr noundef %27) #14
  store ptr null, ptr getelementptr inbounds ([4 x %struct.dmaengine_unmap_pool], ptr @unmap_pool, i32 0, i32 3), align 4
  br label %28

28:                                               ; preds = %19, %16
  %29 = phi i32 [ -12, %19 ], [ 0, %16 ]
  ret i32 %29
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__class_register(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal fastcc void @dmaengine_debugfs_init() unnamed_addr #0 section ".init.text" {
  %1 = tail call ptr @debugfs_create_dir(ptr noundef nonnull @.str.38, ptr noundef null) #14
  store ptr %1, ptr @rootdir, align 4
  %2 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.39, i16 noundef zeroext 292, ptr noundef %1, ptr noundef null, ptr noundef nonnull @dmaengine_summary_fops) #14
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kmem_cache_create(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @mempool_create(i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @mempool_alloc_slab(i32 noundef, ptr noundef) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @mempool_free_slab(ptr noundef, ptr noundef) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @mempool_destroy(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @kmem_cache_destroy(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @debugfs_create_file(ptr noundef, i16 noundef zeroext, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @seq_lseek(ptr noundef, i64 noundef, i32 noundef) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @seq_read(ptr noundef, ptr noundef, i32 noundef, ptr noundef) #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @dmaengine_summary_open(ptr nocapture noundef readonly %0, ptr noundef %1) #1 {
  %3 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 47
  %4 = load ptr, ptr %3, align 4
  %5 = tail call i32 @single_open(ptr noundef %1, ptr noundef nonnull @dmaengine_summary_show, ptr noundef %4) #14
  ret i32 %5
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @single_release(ptr noundef, ptr noundef) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @single_open(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @dmaengine_summary_show(ptr noundef %0, ptr nocapture noundef readnone %1) #1 {
  tail call void @mutex_lock(ptr noundef nonnull @dma_list_mutex) #14
  %3 = load ptr, ptr @dma_device_list, align 4
  %4 = icmp eq ptr %3, @dma_device_list
  br i1 %4, label %71, label %5

5:                                                ; preds = %68, %2
  %6 = phi ptr [ %69, %68 ], [ %3, %2 ]
  %7 = getelementptr i8, ptr %6, i32 -20
  %8 = getelementptr i8, ptr %6, i32 48
  %9 = load i32, ptr %8, align 4
  %10 = getelementptr i8, ptr %6, i32 52
  %11 = load ptr, ptr %10, align 4
  %12 = getelementptr inbounds %struct.device, ptr %11, i32 0, i32 3
  %13 = load ptr, ptr %12, align 4
  %14 = icmp eq ptr %13, null
  br i1 %14, label %15, label %17

15:                                               ; preds = %5
  %16 = load ptr, ptr %11, align 4
  br label %17

17:                                               ; preds = %15, %5
  %18 = phi ptr [ %16, %15 ], [ %13, %5 ]
  %19 = getelementptr i8, ptr %6, i32 -16
  %20 = load i32, ptr %19, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.40, i32 noundef %9, ptr noundef %18, i32 noundef %20) #14
  %21 = getelementptr i8, ptr %6, i32 224
  %22 = load ptr, ptr %21, align 4
  %23 = icmp eq ptr %22, null
  br i1 %23, label %25, label %24

24:                                               ; preds = %17
  tail call void %22(ptr noundef %0, ptr noundef %7) #14
  br label %65

25:                                               ; preds = %17
  %26 = getelementptr i8, ptr %6, i32 -8
  %27 = load ptr, ptr %26, align 4
  %28 = icmp eq ptr %27, %26
  br i1 %28, label %65, label %29

29:                                               ; preds = %62, %25
  %30 = phi ptr [ %63, %62 ], [ %27, %25 ]
  %31 = getelementptr i8, ptr %30, i32 12
  %32 = load i32, ptr %31, align 4
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %62, label %34

34:                                               ; preds = %29
  %35 = getelementptr i8, ptr %30, i32 -12
  %36 = load ptr, ptr %35, align 4
  %37 = getelementptr inbounds %struct.dma_chan_dev, ptr %36, i32 0, i32 1, i32 3
  %38 = load ptr, ptr %37, align 4
  %39 = icmp eq ptr %38, null
  br i1 %39, label %40, label %43

40:                                               ; preds = %34
  %41 = getelementptr inbounds %struct.dma_chan_dev, ptr %36, i32 0, i32 1
  %42 = load ptr, ptr %41, align 4
  br label %43

43:                                               ; preds = %40, %34
  %44 = phi ptr [ %42, %40 ], [ %38, %34 ]
  %45 = getelementptr i8, ptr %30, i32 -4
  %46 = load ptr, ptr %45, align 4
  %47 = icmp eq ptr %46, null
  %48 = select i1 %47, ptr @.str.43, ptr %46
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.42, ptr noundef %44, ptr noundef %48) #14
  %49 = getelementptr i8, ptr %30, i32 20
  %50 = load ptr, ptr %49, align 4
  %51 = icmp eq ptr %50, null
  br i1 %51, label %61, label %52

52:                                               ; preds = %43
  %53 = load ptr, ptr %50, align 4
  %54 = getelementptr inbounds %struct.device, ptr %53, i32 0, i32 3
  %55 = load ptr, ptr %54, align 4
  %56 = icmp eq ptr %55, null
  br i1 %56, label %57, label %59

57:                                               ; preds = %52
  %58 = load ptr, ptr %53, align 4
  br label %59

59:                                               ; preds = %57, %52
  %60 = phi ptr [ %58, %57 ], [ %55, %52 ]
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.44, ptr noundef %60) #14
  br label %62

61:                                               ; preds = %43
  tail call void @seq_puts(ptr noundef %0, ptr noundef nonnull @.str.41) #14
  br label %62

62:                                               ; preds = %61, %59, %29
  %63 = load ptr, ptr %30, align 4
  %64 = icmp eq ptr %63, %26
  br i1 %64, label %65, label %29

65:                                               ; preds = %62, %25, %24
  %66 = load ptr, ptr %6, align 4
  %67 = icmp eq ptr %66, @dma_device_list
  br i1 %67, label %71, label %68

68:                                               ; preds = %65
  tail call void @seq_puts(ptr noundef %0, ptr noundef nonnull @.str.41) #14
  %69 = load ptr, ptr %6, align 4
  %70 = icmp eq ptr %69, @dma_device_list
  br i1 %70, label %71, label %5

71:                                               ; preds = %68, %65, %2
  tail call void @mutex_unlock(ptr noundef nonnull @dma_list_mutex) #14
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_puts(ptr noundef, ptr noundef) local_unnamed_addr #4

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { argmemonly nofree nounwind willreturn writeonly }
attributes #6 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { null_pointer_is_valid allocsize(0) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nounwind readonly }
attributes #9 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #11 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #12 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #13 = { nofree nounwind null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #14 = { nounwind }
attributes #15 = { nounwind allocsize(0) }
attributes #16 = { cold nounwind }
attributes #17 = { nounwind readonly willreturn }
attributes #18 = { nounwind allocsize(2) }
attributes #19 = { cold }

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
!9 = !{!"auto-init"}
!10 = !{i64 2153526366}
!11 = !{i64 2153526208}
!12 = !{i64 2153569629}
!13 = !{i64 661469}
!14 = !{i64 2153587033}
!15 = !{i64 2149036359}
!16 = !{i64 2149036576}
!17 = !{i8 0, i8 2}
!18 = !{i64 625617, i64 2148127183, i64 2148127209, i64 2148127256, i64 2148127278, i64 2148127306, i64 2148127326}
!19 = !{i64 611680, i64 611704, i64 611725, i64 611742, i64 611759}
!20 = !{!"branch_weights", i32 2000, i32 1}
!21 = !{i64 2148292125}
!22 = !{i64 2148194260, i64 2148194292, i64 2148194321, i64 2148194355, i64 2148194386, i64 2148194409}
!23 = !{i64 2149336473}
!24 = !{!"branch_weights", i32 1, i32 2000}
!25 = !{i64 2153702528, i64 2153703016, i64 2153702565, i64 2153702621, i64 2153702655, i64 2153702679, i64 2153702720, i64 2153702741, i64 2153702769, i64 2153702803}
!26 = !{i64 2149061600}
!27 = !{i64 2153759325, i64 2153759814, i64 2153759362, i64 2153759418, i64 2153759452, i64 2153759476, i64 2153759517, i64 2153759538, i64 2153759566, i64 2153759600}
!28 = !{i32 0, i32 33}
!29 = !{i64 2153777721}
!30 = !{i64 2153777563}
