; ModuleID = '/llk/IR/drivers/scsi/scsi_lib.c_pt.bc'
source_filename = "../drivers/scsi/scsi_lib.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___scsi_execute:\09\09\09\09\09"
module asm "\09.asciz \09\22__scsi_execute\22\09\09\09\09\09"
module asm "__kstrtabns___scsi_execute:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_scsi_free_sgtables:\09\09\09\09\09"
module asm "\09.asciz \09\22scsi_free_sgtables\22\09\09\09\09\09"
module asm "__kstrtabns_scsi_free_sgtables:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_scsi_alloc_sgtables:\09\09\09\09\09"
module asm "\09.asciz \09\22scsi_alloc_sgtables\22\09\09\09\09\09"
module asm "__kstrtabns_scsi_alloc_sgtables:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_scsi_alloc_request:\09\09\09\09\09"
module asm "\09.asciz \09\22scsi_alloc_request\22\09\09\09\09\09"
module asm "__kstrtabns_scsi_alloc_request:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_scsi_done:\09\09\09\09\09"
module asm "\09.asciz \09\22scsi_done\22\09\09\09\09\09"
module asm "__kstrtabns_scsi_done:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___scsi_init_queue:\09\09\09\09\09"
module asm "\09.asciz \09\22__scsi_init_queue\22\09\09\09\09\09"
module asm "__kstrtabns___scsi_init_queue:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_scsi_block_requests:\09\09\09\09\09"
module asm "\09.asciz \09\22scsi_block_requests\22\09\09\09\09\09"
module asm "__kstrtabns_scsi_block_requests:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_scsi_unblock_requests:\09\09\09\09\09"
module asm "\09.asciz \09\22scsi_unblock_requests\22\09\09\09\09\09"
module asm "__kstrtabns_scsi_unblock_requests:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_scsi_mode_select:\09\09\09\09\09"
module asm "\09.asciz \09\22scsi_mode_select\22\09\09\09\09\09"
module asm "__kstrtabns_scsi_mode_select:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_scsi_mode_sense:\09\09\09\09\09"
module asm "\09.asciz \09\22scsi_mode_sense\22\09\09\09\09\09"
module asm "__kstrtabns_scsi_mode_sense:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_scsi_test_unit_ready:\09\09\09\09\09"
module asm "\09.asciz \09\22scsi_test_unit_ready\22\09\09\09\09\09"
module asm "__kstrtabns_scsi_test_unit_ready:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_scsi_device_set_state:\09\09\09\09\09"
module asm "\09.asciz \09\22scsi_device_set_state\22\09\09\09\09\09"
module asm "__kstrtabns_scsi_device_set_state:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_sdev_evt_send:\09\09\09\09\09"
module asm "\09.asciz \09\22sdev_evt_send\22\09\09\09\09\09"
module asm "__kstrtabns_sdev_evt_send:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_sdev_evt_alloc:\09\09\09\09\09"
module asm "\09.asciz \09\22sdev_evt_alloc\22\09\09\09\09\09"
module asm "__kstrtabns_sdev_evt_alloc:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_sdev_evt_send_simple:\09\09\09\09\09"
module asm "\09.asciz \09\22sdev_evt_send_simple\22\09\09\09\09\09"
module asm "__kstrtabns_sdev_evt_send_simple:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_scsi_device_quiesce:\09\09\09\09\09"
module asm "\09.asciz \09\22scsi_device_quiesce\22\09\09\09\09\09"
module asm "__kstrtabns_scsi_device_quiesce:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_scsi_device_resume:\09\09\09\09\09"
module asm "\09.asciz \09\22scsi_device_resume\22\09\09\09\09\09"
module asm "__kstrtabns_scsi_device_resume:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_scsi_target_quiesce:\09\09\09\09\09"
module asm "\09.asciz \09\22scsi_target_quiesce\22\09\09\09\09\09"
module asm "__kstrtabns_scsi_target_quiesce:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_scsi_target_resume:\09\09\09\09\09"
module asm "\09.asciz \09\22scsi_target_resume\22\09\09\09\09\09"
module asm "__kstrtabns_scsi_target_resume:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_scsi_internal_device_block_nowait:\09\09\09\09\09"
module asm "\09.asciz \09\22scsi_internal_device_block_nowait\22\09\09\09\09\09"
module asm "__kstrtabns_scsi_internal_device_block_nowait:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_scsi_internal_device_unblock_nowait:\09\09\09\09\09"
module asm "\09.asciz \09\22scsi_internal_device_unblock_nowait\22\09\09\09\09\09"
module asm "__kstrtabns_scsi_internal_device_unblock_nowait:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_scsi_target_block:\09\09\09\09\09"
module asm "\09.asciz \09\22scsi_target_block\22\09\09\09\09\09"
module asm "__kstrtabns_scsi_target_block:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_scsi_target_unblock:\09\09\09\09\09"
module asm "\09.asciz \09\22scsi_target_unblock\22\09\09\09\09\09"
module asm "__kstrtabns_scsi_target_unblock:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_scsi_host_block:\09\09\09\09\09"
module asm "\09.asciz \09\22scsi_host_block\22\09\09\09\09\09"
module asm "__kstrtabns_scsi_host_block:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_scsi_host_unblock:\09\09\09\09\09"
module asm "\09.asciz \09\22scsi_host_unblock\22\09\09\09\09\09"
module asm "__kstrtabns_scsi_host_unblock:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_scsi_kmap_atomic_sg:\09\09\09\09\09"
module asm "\09.asciz \09\22scsi_kmap_atomic_sg\22\09\09\09\09\09"
module asm "__kstrtabns_scsi_kmap_atomic_sg:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_scsi_kunmap_atomic_sg:\09\09\09\09\09"
module asm "\09.asciz \09\22scsi_kunmap_atomic_sg\22\09\09\09\09\09"
module asm "__kstrtabns_scsi_kunmap_atomic_sg:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_sdev_disable_disk_events:\09\09\09\09\09"
module asm "\09.asciz \09\22sdev_disable_disk_events\22\09\09\09\09\09"
module asm "__kstrtabns_sdev_disable_disk_events:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_sdev_enable_disk_events:\09\09\09\09\09"
module asm "\09.asciz \09\22sdev_enable_disk_events\22\09\09\09\09\09"
module asm "__kstrtabns_sdev_enable_disk_events:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_scsi_vpd_lun_id:\09\09\09\09\09"
module asm "\09.asciz \09\22scsi_vpd_lun_id\22\09\09\09\09\09"
module asm "__kstrtabns_scsi_vpd_lun_id:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_scsi_vpd_tpg_id:\09\09\09\09\09"
module asm "\09.asciz \09\22scsi_vpd_tpg_id\22\09\09\09\09\09"
module asm "__kstrtabns_scsi_vpd_tpg_id:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_scsi_build_sense:\09\09\09\09\09"
module asm "\09.asciz \09\22scsi_build_sense\22\09\09\09\09\09"
module asm "__kstrtabns_scsi_build_sense:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.blk_mq_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i32, i32 }
%struct.tracepoint = type { ptr, %struct.static_key, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.static_key = type { %struct.atomic_t }
%struct.cpumask = type { [1 x i32] }
%struct.scsi_cmnd = type { %struct.scsi_request, ptr, %struct.list_head, %struct.delayed_work, %struct.callback_head, i32, i32, i32, i32, i32, i8, i8, i8, i8, i16, i32, ptr, %struct.scsi_data_buffer, ptr, i32, i32, ptr, %struct.scsi_pointer, ptr, i32, i32, i32, i32 }
%struct.scsi_request = type { [16 x i8], ptr, i16, i32, i32, i32, i32, ptr }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32 }
%struct.hlist_node = type { ptr, ptr }
%struct.callback_head = type { ptr, ptr }
%struct.scsi_data_buffer = type { %struct.sg_table, i32 }
%struct.sg_table = type { ptr, i32, i32 }
%struct.scsi_pointer = type { ptr, i32, ptr, i32, i32, i32, i32, i32, i32, i32 }
%struct.Scsi_Host = type { %struct.list_head, %struct.list_head, %struct.list_head, %struct.spinlock, ptr, %struct.mutex, %struct.list_head, %struct.list_head, ptr, ptr, %struct.wait_queue_head, ptr, ptr, %struct.blk_mq_tag_set, %struct.atomic_t, i32, i32, i32, i32, i32, i32, i32, i64, i32, i16, i32, i32, i16, i16, i16, i32, i32, i32, i32, i32, i32, i16, [20 x i8], ptr, ptr, i32, i32, i8, i32, i32, i8, i8, i32, i32, %struct.device, %struct.device, ptr, ptr, [0 x i32] }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.blk_mq_tag_set = type { [3 x %struct.blk_mq_queue_map], i32, ptr, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, %struct.mutex, %struct.list_head }
%struct.blk_mq_queue_map = type { ptr, i32, i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.scsi_device = type <{ ptr, ptr, %struct.list_head, %struct.list_head, %struct.sbitmap, %struct.atomic_t, %struct.atomic_t, %struct.spinlock, %struct.list_head, i16, i16, i16, i16, i32, i32, i32, i32, i32, i64, i32, i32, ptr, i8, i8, i8, i8, %struct.mutex, i8, [3 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [4 x i8], i64, i32, i48, i32, i8, [3 x i8], %struct.atomic_t, [1 x i32], [1 x i32], %struct.list_head, %struct.work_struct, i32, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.device, %struct.device, %struct.execute_work, %struct.work_struct, ptr, ptr, i32, ptr, i32, i32, ptr, i8, [3 x i8], %struct.mutex, i32, ptr, [0 x i32], [4 x i8] }>
%struct.sbitmap = type { i32, i32, i32, i8, ptr, ptr }
%struct.execute_work = type { %struct.work_struct }
%struct.request = type { ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i64, ptr, ptr, %union.anon.18, ptr, i64, i64, i16, i16, i16, i16, i32, %struct.atomic_t, i32, %union.anon.19, %union.anon.20, %union.anon.21, %union.anon.26, ptr, ptr }
%union.anon.18 = type { %struct.list_head }
%union.anon.19 = type { %struct.hlist_node }
%union.anon.20 = type { %struct.rb_node }
%union.anon.21 = type { %struct.anon.25 }
%struct.anon.25 = type { i32, %struct.list_head, ptr }
%union.anon.26 = type { i64, [8 x i8] }
%struct.sbitmap_word = type { i32, [60 x i8], i32, [60 x i8], i32, [60 x i8] }
%struct.request_queue = type { ptr, ptr, %struct.percpu_ref, ptr, ptr, ptr, ptr, i32, ptr, i32, ptr, i32, %struct.atomic_t, i32, %struct.spinlock, ptr, %struct.kobject, ptr, ptr, i32, i32, i32, i32, i32, i32, ptr, ptr, %struct.timer_list, %struct.work_struct, %struct.atomic_t, ptr, %struct.list_head, %struct.queue_limits, i32, i32, %struct.mutex, ptr, %struct.list_head, %struct.spinlock, %struct.delayed_work, %struct.mutex, %struct.mutex, %struct.list_head, %struct.spinlock, i32, %struct.callback_head, %struct.wait_queue_head, %struct.mutex, i32, ptr, %struct.list_head, %struct.bio_set, ptr, ptr, ptr, i8, [5 x i64], ptr, [0 x %struct.srcu_struct] }
%struct.percpu_ref = type { i32, ptr }
%struct.queue_limits = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i16, i8, i8, i8, i32 }
%struct.bio_set = type { ptr, i32, ptr, %struct.mempool_s, %struct.mempool_s, i32, %struct.spinlock, %struct.bio_list, %struct.work_struct, ptr, %struct.hlist_node }
%struct.mempool_s = type { %struct.spinlock, i32, i32, ptr, ptr, ptr, ptr, %struct.wait_queue_head }
%struct.bio_list = type { ptr, ptr }
%struct.srcu_struct = type { [1 x %struct.srcu_node], [2 x ptr], %struct.mutex, %struct.spinlock, %struct.mutex, i32, i32, i32, i32, i32, ptr, i32, %struct.mutex, %struct.completion, %struct.atomic_t, %struct.delayed_work, %struct.lockdep_map }
%struct.srcu_node = type { %struct.spinlock, [4 x i32], [4 x i32], i32, ptr, i32, i32 }
%struct.lockdep_map = type {}
%struct.scsi_sense_hdr = type { i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.gendisk = type { i32, i32, i32, [32 x i8], i16, i16, %struct.xarray, ptr, ptr, ptr, ptr, i32, i32, %struct.mutex, i32, ptr, ptr, ptr, %struct.atomic_t, ptr, ptr, i32, ptr, %struct.lockdep_map, i64 }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.scsi_driver = type { %struct.device_driver, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.percpu_ref_data = type { %struct.atomic_t, ptr, ptr, i8, %struct.callback_head, ptr }
%struct.bio = type { ptr, ptr, i32, i16, i16, i16, i8, %struct.atomic_t, %struct.bvec_iter, i32, ptr, ptr, %union.anon.16, i16, i16, %struct.atomic_t, ptr, ptr, [0 x %struct.bio_vec] }
%struct.bvec_iter = type <{ i64, i32, i32, i32 }>
%union.anon.16 = type {}
%struct.bio_vec = type { ptr, i32, i32 }
%struct.scsi_host_template = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i16, i16, i32, i32, i32, i32, i16, i8, i32, i8, i32, ptr, ptr, i64, ptr, i32 }
%struct.scatterlist = type { i32, i32, i32, i32, i32 }
%struct.page = type { i32, %union.anon.6, %union.anon.51, %struct.atomic_t }
%union.anon.6 = type { %struct.anon.7 }
%struct.anon.7 = type { %struct.list_head, ptr, i32, i32 }
%union.anon.51 = type { %struct.atomic_t }
%struct.thread_info = type { i32, i32, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], [4 x i8], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.scsi_mode_data = type { i32, i16, i8, i8, i8, i8 }
%struct.scsi_event = type { i32, %struct.list_head }
%struct.task_struct = type { %struct.thread_info, i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [32 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, [36 x i8], %struct.sched_statistics, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i8, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.71, ptr, %struct.page_frag, i32, i32, i32, i64, i64, i32, i32, ptr, %struct.kmap_ctrl, i32, ptr, %struct.refcount_struct, %struct.thread_struct, [16 x i8] }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.1 }
%struct.llist_node = type { ptr }
%union.anon.1 = type { i32 }
%struct.sched_entity = type { %struct.load_weight, %struct.rb_node, %struct.list_head, i32, i64, i64, i64, i64, i64, [56 x i8], %struct.sched_avg }
%struct.load_weight = type { i32, i32 }
%struct.sched_avg = type { i64, i64, i64, i32, i32, i32, i32, i32, [4 x i8], %struct.util_est, [8 x i8] }
%struct.util_est = type { i32, i32 }
%struct.sched_rt_entity = type { %struct.list_head, i32, i32, i32, i16, i16, ptr }
%struct.sched_dl_entity = type { %struct.rb_node, i64, i64, i64, i64, i64, i64, i64, i32, i8, %struct.hrtimer, %struct.hrtimer, ptr }
%struct.sched_statistics = type {}
%struct.sched_info = type {}
%struct.plist_node = type { i32, %struct.list_head, %struct.list_head }
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
%struct.page_frag = type { ptr, i16, i16 }
%struct.kmap_ctrl = type { i32, [16 x i32] }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
%struct.scsi_vpd = type { %struct.callback_head, i32, [0 x i8] }
%struct.scsi_device_handler = type { %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.blk_mq_queue_data = type { ptr, i8 }
%struct.blk_mq_hw_ctx = type { %struct.anon.17, %struct.delayed_work, [1 x %struct.cpumask], i32, i32, i32, ptr, ptr, ptr, ptr, %struct.sbitmap, ptr, i32, i16, i16, ptr, %struct.spinlock, %struct.wait_queue_entry, %struct.atomic_t, ptr, ptr, i32, i32, i32, i32, %struct.atomic_t, %struct.hlist_node, %struct.hlist_node, %struct.kobject, ptr, ptr, %struct.list_head, [16 x i8] }
%struct.anon.17 = type { %struct.spinlock, %struct.list_head, i32, [48 x i8] }
%struct.wait_queue_entry = type { i32, ptr, ptr, %struct.list_head }

@scsi_sense_cache_mutex = internal global %struct.mutex { %struct.atomic_t zeroinitializer, %struct.raw_spinlock zeroinitializer, %struct.optimistic_spin_queue zeroinitializer, %struct.list_head { ptr getelementptr (i8, ptr @scsi_sense_cache_mutex, i64 12), ptr getelementptr (i8, ptr @scsi_sense_cache_mutex, i64 12) } }, align 4
@scsi_sense_cache = internal unnamed_addr global ptr null, align 4
@.str = private unnamed_addr constant [17 x i8] c"scsi_sense_cache\00", align 1
@scsi_command_size_tbl = external dso_local local_unnamed_addr constant [8 x i8], align 1
@__kstrtab___scsi_execute = external dso_local constant [0 x i8], align 1
@__kstrtabns___scsi_execute = external dso_local constant [0 x i8], align 1
@__ksymtab___scsi_execute = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__scsi_execute to i32), ptr @__kstrtab___scsi_execute, ptr @__kstrtabns___scsi_execute }, section "___ksymtab+__scsi_execute", align 4
@__kstrtab_scsi_free_sgtables = external dso_local constant [0 x i8], align 1
@__kstrtabns_scsi_free_sgtables = external dso_local constant [0 x i8], align 1
@__ksymtab_scsi_free_sgtables = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @scsi_free_sgtables to i32), ptr @__kstrtab_scsi_free_sgtables, ptr @__kstrtabns_scsi_free_sgtables }, section "___ksymtab_gpl+scsi_free_sgtables", align 4
@scsi_io_completion.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.1 = private unnamed_addr constant [24 x i8] c"drivers/scsi/scsi_lib.c\00", align 1
@.str.2 = private unnamed_addr constant [47 x i8] c"Bytes remaining after failed, no-retry command\00", align 1
@scsi_alloc_sgtables.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@__kstrtab_scsi_alloc_sgtables = external dso_local constant [0 x i8], align 1
@__kstrtabns_scsi_alloc_sgtables = external dso_local constant [0 x i8], align 1
@__ksymtab_scsi_alloc_sgtables = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @scsi_alloc_sgtables to i32), ptr @__kstrtab_scsi_alloc_sgtables, ptr @__kstrtabns_scsi_alloc_sgtables }, section "___ksymtab+scsi_alloc_sgtables", align 4
@__kstrtab_scsi_alloc_request = external dso_local constant [0 x i8], align 1
@__kstrtabns_scsi_alloc_request = external dso_local constant [0 x i8], align 1
@__ksymtab_scsi_alloc_request = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @scsi_alloc_request to i32), ptr @__kstrtab_scsi_alloc_request, ptr @__kstrtabns_scsi_alloc_request }, section "___ksymtab_gpl+scsi_alloc_request", align 4
@__kstrtab_scsi_done = external dso_local constant [0 x i8], align 1
@__kstrtabns_scsi_done = external dso_local constant [0 x i8], align 1
@__ksymtab_scsi_done = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @scsi_done to i32), ptr @__kstrtab_scsi_done, ptr @__kstrtabns_scsi_done }, section "___ksymtab+scsi_done", align 4
@__kstrtab___scsi_init_queue = external dso_local constant [0 x i8], align 1
@__kstrtabns___scsi_init_queue = external dso_local constant [0 x i8], align 1
@__ksymtab___scsi_init_queue = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__scsi_init_queue to i32), ptr @__kstrtab___scsi_init_queue, ptr @__kstrtabns___scsi_init_queue }, section "___ksymtab_gpl+__scsi_init_queue", align 4
@scsi_mq_ops = internal constant %struct.blk_mq_ops { ptr @scsi_queue_rq, ptr @scsi_commit_rqs, ptr null, ptr @scsi_mq_get_budget, ptr @scsi_mq_put_budget, ptr @scsi_mq_set_rq_budget_token, ptr @scsi_mq_get_rq_budget_token, ptr @scsi_timeout, ptr @scsi_mq_poll, ptr @scsi_complete, ptr @scsi_init_hctx, ptr null, ptr @scsi_mq_init_request, ptr @scsi_mq_exit_request, ptr @scsi_cleanup_rq, ptr @scsi_mq_lld_busy, ptr @scsi_map_queues, ptr @scsi_show_rq }, align 4
@scsi_mq_ops_no_commit = internal constant %struct.blk_mq_ops { ptr @scsi_queue_rq, ptr null, ptr null, ptr @scsi_mq_get_budget, ptr @scsi_mq_put_budget, ptr @scsi_mq_set_rq_budget_token, ptr @scsi_mq_get_rq_budget_token, ptr @scsi_timeout, ptr @scsi_mq_poll, ptr @scsi_complete, ptr @scsi_init_hctx, ptr null, ptr @scsi_mq_init_request, ptr @scsi_mq_exit_request, ptr @scsi_cleanup_rq, ptr @scsi_mq_lld_busy, ptr @scsi_map_queues, ptr @scsi_show_rq }, align 4
@__kstrtab_scsi_block_requests = external dso_local constant [0 x i8], align 1
@__kstrtabns_scsi_block_requests = external dso_local constant [0 x i8], align 1
@__ksymtab_scsi_block_requests = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @scsi_block_requests to i32), ptr @__kstrtab_scsi_block_requests, ptr @__kstrtabns_scsi_block_requests }, section "___ksymtab+scsi_block_requests", align 4
@__kstrtab_scsi_unblock_requests = external dso_local constant [0 x i8], align 1
@__kstrtabns_scsi_unblock_requests = external dso_local constant [0 x i8], align 1
@__ksymtab_scsi_unblock_requests = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @scsi_unblock_requests to i32), ptr @__kstrtab_scsi_unblock_requests, ptr @__kstrtabns_scsi_unblock_requests }, section "___ksymtab+scsi_unblock_requests", align 4
@__kstrtab_scsi_mode_select = external dso_local constant [0 x i8], align 1
@__kstrtabns_scsi_mode_select = external dso_local constant [0 x i8], align 1
@__ksymtab_scsi_mode_select = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @scsi_mode_select to i32), ptr @__kstrtab_scsi_mode_select, ptr @__kstrtabns_scsi_mode_select }, section "___ksymtab_gpl+scsi_mode_select", align 4
@__kstrtab_scsi_mode_sense = external dso_local constant [0 x i8], align 1
@__kstrtabns_scsi_mode_sense = external dso_local constant [0 x i8], align 1
@__ksymtab_scsi_mode_sense = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @scsi_mode_sense to i32), ptr @__kstrtab_scsi_mode_sense, ptr @__kstrtabns_scsi_mode_sense }, section "___ksymtab+scsi_mode_sense", align 4
@__kstrtab_scsi_test_unit_ready = external dso_local constant [0 x i8], align 1
@__kstrtabns_scsi_test_unit_ready = external dso_local constant [0 x i8], align 1
@__ksymtab_scsi_test_unit_ready = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @scsi_test_unit_ready to i32), ptr @__kstrtab_scsi_test_unit_ready, ptr @__kstrtabns_scsi_test_unit_ready }, section "___ksymtab+scsi_test_unit_ready", align 4
@__kstrtab_scsi_device_set_state = external dso_local constant [0 x i8], align 1
@__kstrtabns_scsi_device_set_state = external dso_local constant [0 x i8], align 1
@__ksymtab_scsi_device_set_state = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @scsi_device_set_state to i32), ptr @__kstrtab_scsi_device_set_state, ptr @__kstrtabns_scsi_device_set_state }, section "___ksymtab+scsi_device_set_state", align 4
@__kstrtab_sdev_evt_send = external dso_local constant [0 x i8], align 1
@__kstrtabns_sdev_evt_send = external dso_local constant [0 x i8], align 1
@__ksymtab_sdev_evt_send = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @sdev_evt_send to i32), ptr @__kstrtab_sdev_evt_send, ptr @__kstrtabns_sdev_evt_send }, section "___ksymtab_gpl+sdev_evt_send", align 4
@__kstrtab_sdev_evt_alloc = external dso_local constant [0 x i8], align 1
@__kstrtabns_sdev_evt_alloc = external dso_local constant [0 x i8], align 1
@__ksymtab_sdev_evt_alloc = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @sdev_evt_alloc to i32), ptr @__kstrtab_sdev_evt_alloc, ptr @__kstrtabns_sdev_evt_alloc }, section "___ksymtab_gpl+sdev_evt_alloc", align 4
@.str.4 = private unnamed_addr constant [3 x i8] c"\013\00", align 1
@.str.5 = private unnamed_addr constant [27 x i8] c"event %d eaten due to OOM\0A\00", align 1
@__kstrtab_sdev_evt_send_simple = external dso_local constant [0 x i8], align 1
@__kstrtabns_sdev_evt_send_simple = external dso_local constant [0 x i8], align 1
@__ksymtab_sdev_evt_send_simple = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @sdev_evt_send_simple to i32), ptr @__kstrtab_sdev_evt_send_simple, ptr @__kstrtabns_sdev_evt_send_simple }, section "___ksymtab_gpl+sdev_evt_send_simple", align 4
@scsi_device_quiesce.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@__kstrtab_scsi_device_quiesce = external dso_local constant [0 x i8], align 1
@__kstrtabns_scsi_device_quiesce = external dso_local constant [0 x i8], align 1
@__ksymtab_scsi_device_quiesce = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @scsi_device_quiesce to i32), ptr @__kstrtab_scsi_device_quiesce, ptr @__kstrtabns_scsi_device_quiesce }, section "___ksymtab+scsi_device_quiesce", align 4
@__kstrtab_scsi_device_resume = external dso_local constant [0 x i8], align 1
@__kstrtabns_scsi_device_resume = external dso_local constant [0 x i8], align 1
@__ksymtab_scsi_device_resume = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @scsi_device_resume to i32), ptr @__kstrtab_scsi_device_resume, ptr @__kstrtabns_scsi_device_resume }, section "___ksymtab+scsi_device_resume", align 4
@__kstrtab_scsi_target_quiesce = external dso_local constant [0 x i8], align 1
@__kstrtabns_scsi_target_quiesce = external dso_local constant [0 x i8], align 1
@__ksymtab_scsi_target_quiesce = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @scsi_target_quiesce to i32), ptr @__kstrtab_scsi_target_quiesce, ptr @__kstrtabns_scsi_target_quiesce }, section "___ksymtab+scsi_target_quiesce", align 4
@__kstrtab_scsi_target_resume = external dso_local constant [0 x i8], align 1
@__kstrtabns_scsi_target_resume = external dso_local constant [0 x i8], align 1
@__ksymtab_scsi_target_resume = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @scsi_target_resume to i32), ptr @__kstrtab_scsi_target_resume, ptr @__kstrtabns_scsi_target_resume }, section "___ksymtab+scsi_target_resume", align 4
@__kstrtab_scsi_internal_device_block_nowait = external dso_local constant [0 x i8], align 1
@__kstrtabns_scsi_internal_device_block_nowait = external dso_local constant [0 x i8], align 1
@__ksymtab_scsi_internal_device_block_nowait = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @scsi_internal_device_block_nowait to i32), ptr @__kstrtab_scsi_internal_device_block_nowait, ptr @__kstrtabns_scsi_internal_device_block_nowait }, section "___ksymtab_gpl+scsi_internal_device_block_nowait", align 4
@__kstrtab_scsi_internal_device_unblock_nowait = external dso_local constant [0 x i8], align 1
@__kstrtabns_scsi_internal_device_unblock_nowait = external dso_local constant [0 x i8], align 1
@__ksymtab_scsi_internal_device_unblock_nowait = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @scsi_internal_device_unblock_nowait to i32), ptr @__kstrtab_scsi_internal_device_unblock_nowait, ptr @__kstrtabns_scsi_internal_device_unblock_nowait }, section "___ksymtab_gpl+scsi_internal_device_unblock_nowait", align 4
@__kstrtab_scsi_target_block = external dso_local constant [0 x i8], align 1
@__kstrtabns_scsi_target_block = external dso_local constant [0 x i8], align 1
@__ksymtab_scsi_target_block = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @scsi_target_block to i32), ptr @__kstrtab_scsi_target_block, ptr @__kstrtabns_scsi_target_block }, section "___ksymtab_gpl+scsi_target_block", align 4
@__kstrtab_scsi_target_unblock = external dso_local constant [0 x i8], align 1
@__kstrtabns_scsi_target_unblock = external dso_local constant [0 x i8], align 1
@__ksymtab_scsi_target_unblock = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @scsi_target_unblock to i32), ptr @__kstrtab_scsi_target_unblock, ptr @__kstrtabns_scsi_target_unblock }, section "___ksymtab_gpl+scsi_target_unblock", align 4
@scsi_host_block.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@__kstrtab_scsi_host_block = external dso_local constant [0 x i8], align 1
@__kstrtabns_scsi_host_block = external dso_local constant [0 x i8], align 1
@__ksymtab_scsi_host_block = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @scsi_host_block to i32), ptr @__kstrtab_scsi_host_block, ptr @__kstrtabns_scsi_host_block }, section "___ksymtab_gpl+scsi_host_block", align 4
@__kstrtab_scsi_host_unblock = external dso_local constant [0 x i8], align 1
@__kstrtabns_scsi_host_unblock = external dso_local constant [0 x i8], align 1
@__ksymtab_scsi_host_unblock = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @scsi_host_unblock to i32), ptr @__kstrtab_scsi_host_unblock, ptr @__kstrtabns_scsi_host_unblock }, section "___ksymtab_gpl+scsi_host_unblock", align 4
@.str.6 = private unnamed_addr constant [59 x i8] c"\013%s: Bytes in sg: %zu, requested offset %zu, elements %d\0A\00", align 1
@__func__.scsi_kmap_atomic_sg = private unnamed_addr constant [20 x i8] c"scsi_kmap_atomic_sg\00", align 1
@__kstrtab_scsi_kmap_atomic_sg = external dso_local constant [0 x i8], align 1
@__kstrtabns_scsi_kmap_atomic_sg = external dso_local constant [0 x i8], align 1
@__ksymtab_scsi_kmap_atomic_sg = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @scsi_kmap_atomic_sg to i32), ptr @__kstrtab_scsi_kmap_atomic_sg, ptr @__kstrtabns_scsi_kmap_atomic_sg }, section "___ksymtab+scsi_kmap_atomic_sg", align 4
@__kstrtab_scsi_kunmap_atomic_sg = external dso_local constant [0 x i8], align 1
@__kstrtabns_scsi_kunmap_atomic_sg = external dso_local constant [0 x i8], align 1
@__ksymtab_scsi_kunmap_atomic_sg = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @scsi_kunmap_atomic_sg to i32), ptr @__kstrtab_scsi_kunmap_atomic_sg, ptr @__kstrtabns_scsi_kunmap_atomic_sg }, section "___ksymtab+scsi_kunmap_atomic_sg", align 4
@__kstrtab_sdev_disable_disk_events = external dso_local constant [0 x i8], align 1
@__kstrtabns_sdev_disable_disk_events = external dso_local constant [0 x i8], align 1
@__ksymtab_sdev_disable_disk_events = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @sdev_disable_disk_events to i32), ptr @__kstrtab_sdev_disable_disk_events, ptr @__kstrtabns_sdev_disable_disk_events }, section "___ksymtab+sdev_disable_disk_events", align 4
@sdev_enable_disk_events.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@__kstrtab_sdev_enable_disk_events = external dso_local constant [0 x i8], align 1
@__kstrtabns_sdev_enable_disk_events = external dso_local constant [0 x i8], align 1
@__ksymtab_sdev_enable_disk_events = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @sdev_enable_disk_events to i32), ptr @__kstrtab_sdev_enable_disk_events, ptr @__kstrtabns_sdev_enable_disk_events }, section "___ksymtab+sdev_enable_disk_events", align 4
@.str.7 = private unnamed_addr constant [9 x i8] c"t10.%*pE\00", align 1
@.str.8 = private unnamed_addr constant [10 x i8] c"eui.%8phN\00", align 1
@.str.9 = private unnamed_addr constant [11 x i8] c"eui.%12phN\00", align 1
@.str.10 = private unnamed_addr constant [11 x i8] c"eui.%16phN\00", align 1
@.str.11 = private unnamed_addr constant [10 x i8] c"naa.%8phN\00", align 1
@.str.12 = private unnamed_addr constant [11 x i8] c"naa.%16phN\00", align 1
@__kstrtab_scsi_vpd_lun_id = external dso_local constant [0 x i8], align 1
@__kstrtabns_scsi_vpd_lun_id = external dso_local constant [0 x i8], align 1
@__ksymtab_scsi_vpd_lun_id = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @scsi_vpd_lun_id to i32), ptr @__kstrtab_scsi_vpd_lun_id, ptr @__kstrtabns_scsi_vpd_lun_id }, section "___ksymtab+scsi_vpd_lun_id", align 4
@__kstrtab_scsi_vpd_tpg_id = external dso_local constant [0 x i8], align 1
@__kstrtabns_scsi_vpd_tpg_id = external dso_local constant [0 x i8], align 1
@__ksymtab_scsi_vpd_tpg_id = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @scsi_vpd_tpg_id to i32), ptr @__kstrtab_scsi_vpd_tpg_id, ptr @__kstrtabns_scsi_vpd_tpg_id }, section "___ksymtab+scsi_vpd_tpg_id", align 4
@__kstrtab_scsi_build_sense = external dso_local constant [0 x i8], align 1
@__kstrtabns_scsi_build_sense = external dso_local constant [0 x i8], align 1
@__ksymtab_scsi_build_sense = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @scsi_build_sense to i32), ptr @__kstrtab_scsi_build_sense, ptr @__kstrtabns_scsi_build_sense }, section "___ksymtab_gpl+scsi_build_sense", align 4
@scsi_end_request.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@scsi_mq_requeue_cmd.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@scsi_io_completion_action._rs = internal global %struct.ratelimit_state { %struct.raw_spinlock zeroinitializer, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, align 4
@__func__.scsi_io_completion_action = private unnamed_addr constant [26 x i8] c"scsi_io_completion_action\00", align 1
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 64
@.str.13 = private unnamed_addr constant [33 x i8] c"timing out command, waited %lus\0A\00", align 1
@mem_map = external dso_local local_unnamed_addr global ptr, align 4
@__tracepoint_scsi_dispatch_cmd_done = external dso_local global %struct.tracepoint, align 4
@__cpu_online_mask = external dso_local global %struct.cpumask, align 4
@scsi_queue_rq.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.15 = private unnamed_addr constant [33 x i8] c"rejecting I/O to offline device\0A\00", align 1
@.str.16 = private unnamed_addr constant [30 x i8] c"rejecting I/O to dead device\0A\00", align 1
@scsi_device_state_check.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@__tracepoint_scsi_dispatch_cmd_start = external dso_local global %struct.tracepoint, align 4
@__tracepoint_scsi_dispatch_cmd_error = external dso_local global %struct.tracepoint, align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@.str.17 = private unnamed_addr constant [20 x i8] c"SDEV_MEDIA_CHANGE=1\00", align 1
@.str.18 = private unnamed_addr constant [33 x i8] c"SDEV_UA=INQUIRY_DATA_HAS_CHANGED\00", align 1
@.str.19 = private unnamed_addr constant [34 x i8] c"SDEV_UA=CAPACITY_DATA_HAS_CHANGED\00", align 1
@.str.20 = private unnamed_addr constant [49 x i8] c"SDEV_UA=THIN_PROVISIONING_SOFT_THRESHOLD_REACHED\00", align 1
@.str.21 = private unnamed_addr constant [32 x i8] c"SDEV_UA=MODE_PARAMETERS_CHANGED\00", align 1
@.str.22 = private unnamed_addr constant [39 x i8] c"SDEV_UA=REPORTED_LUNS_DATA_HAS_CHANGED\00", align 1
@.str.23 = private unnamed_addr constant [40 x i8] c"SDEV_UA=ASYMMETRIC_ACCESS_STATE_CHANGED\00", align 1
@.str.24 = private unnamed_addr constant [32 x i8] c"SDEV_UA=POWER_ON_RESET_OCCURRED\00", align 1
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@device_block.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.25 = private unnamed_addr constant [49 x i8] c"scsi_internal_device_block(%s) failed: ret = %d\0A\00", align 1
@pgprot_kernel = external dso_local local_unnamed_addr global i32, align 4
@llvm.compiler.used = appending global [32 x ptr] [ptr @__ksymtab___scsi_execute, ptr @__ksymtab___scsi_init_queue, ptr @__ksymtab_scsi_alloc_request, ptr @__ksymtab_scsi_alloc_sgtables, ptr @__ksymtab_scsi_block_requests, ptr @__ksymtab_scsi_build_sense, ptr @__ksymtab_scsi_device_quiesce, ptr @__ksymtab_scsi_device_resume, ptr @__ksymtab_scsi_device_set_state, ptr @__ksymtab_scsi_done, ptr @__ksymtab_scsi_free_sgtables, ptr @__ksymtab_scsi_host_block, ptr @__ksymtab_scsi_host_unblock, ptr @__ksymtab_scsi_internal_device_block_nowait, ptr @__ksymtab_scsi_internal_device_unblock_nowait, ptr @__ksymtab_scsi_kmap_atomic_sg, ptr @__ksymtab_scsi_kunmap_atomic_sg, ptr @__ksymtab_scsi_mode_select, ptr @__ksymtab_scsi_mode_sense, ptr @__ksymtab_scsi_target_block, ptr @__ksymtab_scsi_target_quiesce, ptr @__ksymtab_scsi_target_resume, ptr @__ksymtab_scsi_target_unblock, ptr @__ksymtab_scsi_test_unit_ready, ptr @__ksymtab_scsi_unblock_requests, ptr @__ksymtab_scsi_vpd_lun_id, ptr @__ksymtab_scsi_vpd_tpg_id, ptr @__ksymtab_sdev_disable_disk_events, ptr @__ksymtab_sdev_enable_disk_events, ptr @__ksymtab_sdev_evt_alloc, ptr @__ksymtab_sdev_evt_send, ptr @__ksymtab_sdev_evt_send_simple], section "llvm.metadata"
@switch.table.scsi_queue_rq = private unnamed_addr constant [4 x i32] [i32 65536, i32 458752, i32 65536, i32 65536], align 4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @scsi_init_sense_cache(ptr nocapture noundef readnone %0) local_unnamed_addr #0 {
  tail call void @mutex_lock(ptr noundef nonnull @scsi_sense_cache_mutex) #15
  %2 = load ptr, ptr @scsi_sense_cache, align 4
  %3 = icmp eq ptr %2, null
  br i1 %3, label %4, label %8

4:                                                ; preds = %1
  %5 = tail call ptr @kmem_cache_create_usercopy(ptr noundef nonnull @.str, i32 noundef 96, i32 noundef 0, i32 noundef 8192, i32 noundef 0, i32 noundef 96, ptr noundef null) #15
  store ptr %5, ptr @scsi_sense_cache, align 4
  %6 = icmp eq ptr %5, null
  %7 = select i1 %6, i32 -12, i32 0
  br label %8

8:                                                ; preds = %4, %1
  %9 = phi i32 [ 0, %1 ], [ %7, %4 ]
  tail call void @mutex_unlock(ptr noundef nonnull @scsi_sense_cache_mutex) #15
  ret i32 %9
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kmem_cache_create_usercopy(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @scsi_queue_insert(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.scsi_cmnd, ptr %0, i32 0, i32 1
  %4 = load ptr, ptr %3, align 4
  switch i32 %1, label %20 [
    i32 4181, label %5
    i32 4182, label %10
    i32 4183, label %10
    i32 4184, label %14
  ]

5:                                                ; preds = %2
  %6 = load ptr, ptr %4, align 8
  %7 = getelementptr inbounds %struct.Scsi_Host, ptr %6, i32 0, i32 14
  %8 = getelementptr inbounds %struct.Scsi_Host, ptr %6, i32 0, i32 40
  %9 = load i32, ptr %8, align 8
  store volatile i32 %9, ptr %7, align 4
  br label %20

10:                                               ; preds = %2, %2
  %11 = getelementptr inbounds %struct.scsi_device, ptr %4, i32 0, i32 5
  %12 = getelementptr inbounds %struct.scsi_device, ptr %4, i32 0, i32 50
  %13 = load i32, ptr %12, align 8
  store volatile i32 %13, ptr %11, align 4
  br label %20

14:                                               ; preds = %2
  %15 = getelementptr inbounds %struct.scsi_device, ptr %4, i32 0, i32 54, i32 1
  %16 = load ptr, ptr %15, align 4
  %17 = getelementptr i8, ptr %16, i32 492
  %18 = getelementptr i8, ptr %16, i32 500
  %19 = load i32, ptr %18, align 4
  store volatile i32 %19, ptr %17, align 4
  br label %20

20:                                               ; preds = %14, %10, %5, %2
  tail call void @scsi_device_unbusy(ptr noundef %4, ptr noundef %0) #15
  %21 = getelementptr inbounds %struct.scsi_cmnd, ptr %0, i32 0, i32 24
  store i32 0, ptr %21, align 4
  %22 = getelementptr i8, ptr %0, i32 -168
  tail call void @blk_mq_requeue_request(ptr noundef %22, i1 noundef zeroext true) #15
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__scsi_execute(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, i32 noundef %2, ptr noundef %3, i32 noundef %4, ptr noundef writeonly %5, ptr noundef %6, i32 noundef %7, i32 noundef %8, i64 noundef %9, i32 noundef %10, ptr noundef writeonly %11) #0 {
  %13 = getelementptr inbounds %struct.scsi_device, ptr %0, i32 0, i32 1
  %14 = load ptr, ptr %13, align 4
  %15 = icmp eq i32 %2, 1
  %16 = select i1 %15, i32 35, i32 34
  %17 = lshr i32 %10, 13
  %18 = and i32 %17, 4
  %19 = tail call ptr @blk_mq_alloc_request(ptr noundef %14, i32 noundef %16, i32 noundef %18) #15
  %20 = icmp ugt ptr %19, inttoptr (i32 -4096 to ptr)
  br i1 %20, label %21, label %23

21:                                               ; preds = %12
  %22 = ptrtoint ptr %19 to i32
  br label %89

23:                                               ; preds = %12
  %24 = getelementptr %struct.request, ptr %19, i32 1
  tail call void @llvm.memset.p0.i32(ptr noundef align 4 dereferenceable(16) %24, i8 0, i32 16, i1 false) #15
  %25 = getelementptr %struct.request, ptr %19, i32 1, i32 4
  store ptr %24, ptr %25, align 4
  %26 = getelementptr %struct.request, ptr %19, i32 1, i32 5
  store i16 16, ptr %26, align 4
  %27 = getelementptr %struct.request, ptr %19, i32 1, i32 7
  store i32 0, ptr %27, align 4
  %28 = load volatile i32, ptr @jiffies, align 64
  %29 = getelementptr %struct.request, ptr %19, i32 1, i32 24
  store i32 %28, ptr %29, align 4
  %30 = getelementptr %struct.request, ptr %19, i32 1, i32 24, i32 0, i32 1
  store i32 0, ptr %30, align 4
  %31 = icmp eq i32 %4, 0
  br i1 %31, label %38, label %32

32:                                               ; preds = %23
  %33 = load ptr, ptr %13, align 4
  %34 = tail call i32 @blk_rq_map_kern(ptr noundef %33, ptr noundef %19, ptr noundef %3, i32 noundef %4, i32 noundef 3072) #15
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %36, label %87

36:                                               ; preds = %32
  %37 = load ptr, ptr %25, align 4
  br label %38

38:                                               ; preds = %36, %23
  %39 = phi ptr [ %37, %36 ], [ %24, %23 ]
  %40 = load i8, ptr %1, align 1
  %41 = lshr i8 %40, 5
  %42 = zext i8 %41 to i32
  %43 = getelementptr [8 x i8], ptr @scsi_command_size_tbl, i32 0, i32 %42
  %44 = load i8, ptr %43, align 1
  %45 = zext i8 %44 to i16
  store i16 %45, ptr %26, align 4
  %46 = zext i8 %44 to i32
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 1 %39, ptr align 1 %1, i32 %46, i1 false)
  %47 = getelementptr inbounds %struct.scsi_request, ptr %24, i32 0, i32 6
  store i32 %8, ptr %47, align 4
  %48 = getelementptr inbounds %struct.request, ptr %19, i32 0, i32 7
  store i32 %7, ptr %48, align 4
  %49 = getelementptr inbounds %struct.request, ptr %19, i32 0, i32 3
  %50 = load i32, ptr %49, align 4
  %51 = trunc i64 %9 to i32
  %52 = or i32 %50, %51
  store i32 %52, ptr %49, align 4
  %53 = getelementptr inbounds %struct.request, ptr %19, i32 0, i32 4
  %54 = load i32, ptr %53, align 8
  %55 = or i32 %54, %10
  %56 = or i32 %55, 2048
  store i32 %56, ptr %53, align 8
  %57 = tail call zeroext i8 @blk_execute_rq(ptr noundef %19, i1 noundef zeroext true) #15
  %58 = getelementptr %struct.request, ptr %19, i32 1, i32 8
  %59 = load i32, ptr %58, align 4
  %60 = add i32 %59, -1
  %61 = icmp ult i32 %60, %4
  br i1 %61, label %62, label %65, !prof !9

62:                                               ; preds = %38
  %63 = sub i32 %4, %59
  %64 = getelementptr i8, ptr %3, i32 %63
  tail call void @llvm.memset.p0.i32(ptr align 1 %64, i8 0, i32 %59, i1 false)
  br label %65

65:                                               ; preds = %62, %38
  %66 = icmp eq ptr %11, null
  br i1 %66, label %69, label %67

67:                                               ; preds = %65
  %68 = load i32, ptr %58, align 4
  store i32 %68, ptr %11, align 4
  br label %69

69:                                               ; preds = %67, %65
  %70 = icmp eq ptr %5, null
  br i1 %70, label %77, label %71

71:                                               ; preds = %69
  %72 = load i32, ptr %27, align 4
  %73 = icmp eq i32 %72, 0
  br i1 %73, label %77, label %74

74:                                               ; preds = %71
  %75 = getelementptr %struct.request, ptr %19, i32 1, i32 9
  %76 = load ptr, ptr %75, align 4
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 1 dereferenceable(96) %5, ptr noundef align 1 dereferenceable(96) %76, i32 96, i1 false)
  br label %77

77:                                               ; preds = %74, %71, %69
  %78 = icmp eq ptr %6, null
  br i1 %78, label %84, label %79

79:                                               ; preds = %77
  %80 = getelementptr %struct.request, ptr %19, i32 1, i32 9
  %81 = load ptr, ptr %80, align 4
  %82 = load i32, ptr %27, align 4
  %83 = tail call zeroext i1 @scsi_normalize_sense(ptr noundef %81, i32 noundef %82, ptr noundef nonnull %6) #15
  br label %84

84:                                               ; preds = %79, %77
  %85 = getelementptr %struct.request, ptr %19, i32 1, i32 6
  %86 = load i32, ptr %85, align 4
  br label %87

87:                                               ; preds = %84, %32
  %88 = phi i32 [ %34, %32 ], [ %86, %84 ]
  tail call void @blk_mq_free_request(ptr noundef %19) #15
  br label %89

89:                                               ; preds = %87, %21
  %90 = phi i32 [ %22, %21 ], [ %88, %87 ]
  ret i32 %90
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @scsi_alloc_request(ptr noundef %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = tail call ptr @blk_mq_alloc_request(ptr noundef %0, i32 noundef %1, i32 noundef %2) #15
  %5 = icmp ugt ptr %4, inttoptr (i32 -4096 to ptr)
  br i1 %5, label %14, label %6

6:                                                ; preds = %3
  %7 = getelementptr %struct.request, ptr %4, i32 1
  tail call void @llvm.memset.p0.i32(ptr noundef align 4 dereferenceable(16) %7, i8 0, i32 16, i1 false) #15
  %8 = getelementptr %struct.request, ptr %4, i32 1, i32 4
  store ptr %7, ptr %8, align 4
  %9 = getelementptr %struct.request, ptr %4, i32 1, i32 5
  store i16 16, ptr %9, align 4
  %10 = getelementptr %struct.request, ptr %4, i32 1, i32 7
  store i32 0, ptr %10, align 4
  %11 = load volatile i32, ptr @jiffies, align 64
  %12 = getelementptr %struct.request, ptr %4, i32 1, i32 24
  store i32 %11, ptr %12, align 4
  %13 = getelementptr %struct.request, ptr %4, i32 1, i32 24, i32 0, i32 1
  store i32 0, ptr %13, align 4
  br label %14

14:                                               ; preds = %6, %3
  ret ptr %4
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @blk_rq_map_kern(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @blk_execute_rq(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @scsi_normalize_sense(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @blk_mq_free_request(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @scsi_device_unbusy(ptr nocapture noundef readonly %0, ptr nocapture noundef %1) local_unnamed_addr #0 {
  %3 = load ptr, ptr %0, align 8
  %4 = getelementptr inbounds %struct.scsi_device, ptr %0, i32 0, i32 54, i32 1
  %5 = load ptr, ptr %4, align 4
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !10
  %6 = getelementptr inbounds %struct.scsi_cmnd, ptr %1, i32 0, i32 26
  %7 = load i32, ptr %6, align 4
  %8 = and i32 %7, -3
  store i32 %8, ptr %6, align 4
  %9 = getelementptr inbounds %struct.Scsi_Host, ptr %3, i32 0, i32 48
  %10 = load i32, ptr %9, align 4
  %11 = add i32 %10, -5
  %12 = icmp ult i32 %11, 3
  br i1 %12, label %18, label %13

13:                                               ; preds = %2
  %14 = getelementptr inbounds %struct.Scsi_Host, ptr %3, i32 0, i32 36
  %15 = load i16, ptr %14, align 8
  %16 = and i16 %15, 16
  %17 = icmp eq i16 %16, 0
  br i1 %17, label %32, label %18, !prof !11

18:                                               ; preds = %13, %2
  %19 = getelementptr inbounds %struct.Scsi_Host, ptr %3, i32 0, i32 4
  %20 = load ptr, ptr %19, align 4
  %21 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %20) #15
  %22 = getelementptr inbounds %struct.Scsi_Host, ptr %3, i32 0, i32 15
  %23 = load i32, ptr %22, align 4
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %29

25:                                               ; preds = %18
  %26 = getelementptr inbounds %struct.Scsi_Host, ptr %3, i32 0, i32 16
  %27 = load i32, ptr %26, align 8
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %30, label %29

29:                                               ; preds = %25, %18
  tail call void @scsi_eh_wakeup(ptr noundef %3) #15
  br label %30

30:                                               ; preds = %29, %25
  %31 = load ptr, ptr %19, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %31, i32 noundef %21) #15
  br label %32

32:                                               ; preds = %30, %13
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !12
  %33 = getelementptr i8, ptr %5, i32 496
  %34 = load i32, ptr %33, align 8
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %39, label %36

36:                                               ; preds = %32
  %37 = getelementptr i8, ptr %5, i32 488
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %37) #15, !srcloc !13
  %38 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %37, ptr %37, i32 1, ptr elementtype(i32) %37) #15, !srcloc !14
  br label %39

39:                                               ; preds = %36, %32
  %40 = getelementptr inbounds %struct.scsi_device, ptr %0, i32 0, i32 4
  %41 = getelementptr inbounds %struct.scsi_cmnd, ptr %1, i32 0, i32 6
  %42 = load i32, ptr %41, align 4
  %43 = getelementptr inbounds %struct.scsi_device, ptr %0, i32 0, i32 4, i32 4
  %44 = load ptr, ptr %43, align 4
  %45 = getelementptr inbounds %struct.scsi_device, ptr %0, i32 0, i32 4, i32 1
  %46 = load i32, ptr %45, align 4
  %47 = lshr i32 %42, %46
  %48 = getelementptr %struct.sbitmap_word, ptr %44, i32 %47, i32 4
  %49 = shl nsw i32 -1, %46
  %50 = xor i32 %49, -1
  %51 = and i32 %42, %50
  tail call void @_set_bit(i32 noundef %51, ptr noundef %48) #15
  %52 = getelementptr inbounds %struct.scsi_device, ptr %0, i32 0, i32 4, i32 5
  %53 = load ptr, ptr %52, align 4
  %54 = icmp eq ptr %53, null
  br i1 %54, label %69, label %55, !prof !9

55:                                               ; preds = %39
  %56 = getelementptr inbounds %struct.scsi_device, ptr %0, i32 0, i32 4, i32 3
  %57 = load i8, ptr %56, align 4, !range !15
  %58 = icmp eq i8 %57, 0
  br i1 %58, label %59, label %69, !prof !11

59:                                               ; preds = %55
  %60 = load i32, ptr %40, align 4
  %61 = icmp ugt i32 %60, %42
  br i1 %61, label %62, label %69, !prof !11

62:                                               ; preds = %59
  %63 = ptrtoint ptr %53 to i32
  %64 = tail call i32 @llvm.read_register.i32(metadata !0) #15
  %65 = inttoptr i32 %64 to ptr
  %66 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %65) #8, !srcloc !16
  %67 = add i32 %66, %63
  %68 = inttoptr i32 %67 to ptr
  store i32 %42, ptr %68, align 4
  br label %69

69:                                               ; preds = %62, %59, %55, %39
  store i32 -1, ptr %41, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @scsi_requeue_run_queue(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = getelementptr i8, ptr %0, i32 -1220
  %3 = load ptr, ptr %2, align 4
  tail call fastcc void @scsi_run_queue(ptr noundef %3)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @scsi_run_queue(ptr noundef %0) unnamed_addr #0 {
  %2 = alloca %struct.list_head, align 8
  %3 = getelementptr inbounds %struct.request_queue, ptr %0, i32 0, i32 10
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.scsi_device, ptr %4, i32 0, i32 54, i32 1
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr i8, ptr %6, i32 484
  %8 = load i8, ptr %7, align 4
  %9 = and i8 %8, 2
  %10 = icmp eq i8 %9, 0
  br i1 %10, label %49, label %11

11:                                               ; preds = %1
  %12 = getelementptr i8, ptr %6, i32 -24
  %13 = load ptr, ptr %4, align 8
  %14 = getelementptr inbounds %struct.Scsi_Host, ptr %13, i32 0, i32 4
  %15 = load ptr, ptr %14, align 4
  %16 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %15) #15
  store ptr null, ptr %12, align 8
  %17 = load ptr, ptr %14, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %17, i32 noundef %16) #15
  %18 = getelementptr inbounds %struct.scsi_device, ptr %4, i32 0, i32 1
  %19 = load ptr, ptr %18, align 4
  tail call void @blk_mq_run_hw_queues(ptr noundef %19, i1 noundef zeroext false) #15
  %20 = load ptr, ptr %14, align 4
  %21 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %20) #15
  %22 = load ptr, ptr %12, align 8
  %23 = icmp eq ptr %22, null
  br i1 %23, label %24, label %46

24:                                               ; preds = %11
  %25 = getelementptr i8, ptr %6, i32 -12
  %26 = load ptr, ptr %25, align 4
  %27 = icmp eq ptr %26, %25
  br i1 %27, label %46, label %28

28:                                               ; preds = %43, %24
  %29 = phi ptr [ %32, %43 ], [ %26, %24 ]
  %30 = phi i32 [ %44, %43 ], [ %21, %24 ]
  %31 = getelementptr i8, ptr %29, i32 -16
  %32 = load ptr, ptr %29, align 8
  %33 = icmp eq ptr %31, %4
  br i1 %33, label %43, label %34

34:                                               ; preds = %28
  %35 = tail call i32 @scsi_device_get(ptr noundef %31) #15
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %37, label %43

37:                                               ; preds = %34
  %38 = load ptr, ptr %14, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %38, i32 noundef %30) #15
  %39 = getelementptr i8, ptr %29, i32 -12
  %40 = load ptr, ptr %39, align 4
  tail call void @blk_mq_run_hw_queues(ptr noundef %40, i1 noundef zeroext false) #15
  %41 = load ptr, ptr %14, align 4
  %42 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %41) #15
  tail call void @scsi_device_put(ptr noundef %31) #15
  br label %43

43:                                               ; preds = %37, %34, %28
  %44 = phi i32 [ %30, %28 ], [ %30, %34 ], [ %42, %37 ]
  %45 = icmp eq ptr %32, %25
  br i1 %45, label %46, label %28

46:                                               ; preds = %43, %24, %11
  %47 = phi i32 [ %21, %11 ], [ %21, %24 ], [ %44, %43 ]
  %48 = load ptr, ptr %14, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %48, i32 noundef %47) #15
  br label %49

49:                                               ; preds = %46, %1
  %50 = load ptr, ptr %4, align 8
  %51 = getelementptr inbounds %struct.Scsi_Host, ptr %50, i32 0, i32 2
  %52 = load volatile ptr, ptr %51, align 4
  %53 = icmp eq ptr %52, %51
  br i1 %53, label %126, label %54

54:                                               ; preds = %49
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #15
  store ptr %2, ptr %2, align 8
  %55 = getelementptr inbounds %struct.list_head, ptr %2, i32 0, i32 1
  store ptr %2, ptr %55, align 4
  %56 = getelementptr inbounds %struct.Scsi_Host, ptr %50, i32 0, i32 4
  %57 = load ptr, ptr %56, align 4
  %58 = call i32 @_raw_spin_lock_irqsave(ptr noundef %57) #15
  %59 = load volatile ptr, ptr %51, align 4
  %60 = icmp eq ptr %59, %51
  br i1 %60, label %67, label %61

61:                                               ; preds = %54
  %62 = load ptr, ptr %2, align 8
  %63 = getelementptr inbounds %struct.Scsi_Host, ptr %50, i32 0, i32 2, i32 1
  %64 = load ptr, ptr %63, align 4
  %65 = getelementptr inbounds %struct.list_head, ptr %59, i32 0, i32 1
  store ptr %2, ptr %65, align 4
  store ptr %59, ptr %2, align 8
  store ptr %62, ptr %64, align 4
  %66 = getelementptr inbounds %struct.list_head, ptr %62, i32 0, i32 1
  store ptr %64, ptr %66, align 4
  store volatile ptr %51, ptr %51, align 4
  store ptr %51, ptr %63, align 4
  br label %67

67:                                               ; preds = %61, %54
  %68 = getelementptr inbounds %struct.Scsi_Host, ptr %50, i32 0, i32 14
  %69 = getelementptr inbounds %struct.Scsi_Host, ptr %50, i32 0, i32 36
  %70 = load volatile ptr, ptr %2, align 8
  %71 = icmp eq ptr %70, %2
  br i1 %71, label %115, label %72

72:                                               ; preds = %67
  %73 = getelementptr inbounds %struct.Scsi_Host, ptr %50, i32 0, i32 2, i32 1
  br label %74

74:                                               ; preds = %111, %72
  %75 = phi ptr [ %70, %72 ], [ %113, %111 ]
  %76 = phi i32 [ %58, %72 ], [ %112, %111 ]
  %77 = load volatile i32, ptr %68, align 4
  %78 = icmp sgt i32 %77, 0
  br i1 %78, label %115, label %79

79:                                               ; preds = %74
  %80 = load i16, ptr %69, align 8
  %81 = and i16 %80, 4
  %82 = icmp eq i16 %81, 0
  br i1 %82, label %83, label %115

83:                                               ; preds = %79
  %84 = getelementptr inbounds %struct.list_head, ptr %75, i32 0, i32 1
  %85 = load ptr, ptr %84, align 4
  %86 = load ptr, ptr %75, align 4
  %87 = getelementptr inbounds %struct.list_head, ptr %86, i32 0, i32 1
  store ptr %85, ptr %87, align 4
  store volatile ptr %86, ptr %85, align 4
  store volatile ptr %75, ptr %75, align 4
  store ptr %75, ptr %84, align 4
  %88 = getelementptr i8, ptr %75, i32 240
  %89 = load ptr, ptr %88, align 4
  %90 = getelementptr i8, ptr %89, i32 496
  %91 = load i32, ptr %90, align 8
  %92 = icmp eq i32 %91, 0
  br i1 %92, label %103, label %93

93:                                               ; preds = %83
  %94 = getelementptr i8, ptr %89, i32 488
  %95 = load volatile i32, ptr %94, align 4
  %96 = icmp ult i32 %95, %91
  br i1 %96, label %97, label %101

97:                                               ; preds = %93
  %98 = getelementptr i8, ptr %89, i32 492
  %99 = load volatile i32, ptr %98, align 4
  %100 = icmp sgt i32 %99, 0
  br i1 %100, label %101, label %103

101:                                              ; preds = %97, %93
  store ptr %75, ptr %84, align 4
  store volatile ptr %75, ptr %75, align 4
  %102 = load ptr, ptr %73, align 4
  store ptr %75, ptr %73, align 4
  store ptr %51, ptr %75, align 4
  store ptr %102, ptr %84, align 4
  store volatile ptr %75, ptr %102, align 4
  br label %111

103:                                              ; preds = %97, %83
  %104 = getelementptr i8, ptr %75, i32 -56
  %105 = load ptr, ptr %104, align 4
  %106 = call zeroext i1 @blk_get_queue(ptr noundef %105) #15
  br i1 %106, label %107, label %111

107:                                              ; preds = %103
  %108 = load ptr, ptr %56, align 4
  call void @_raw_spin_unlock_irqrestore(ptr noundef %108, i32 noundef %76) #15
  call void @blk_mq_run_hw_queues(ptr noundef %105, i1 noundef zeroext false) #15
  call void @blk_put_queue(ptr noundef %105) #15
  %109 = load ptr, ptr %56, align 4
  %110 = call i32 @_raw_spin_lock_irqsave(ptr noundef %109) #15
  br label %111

111:                                              ; preds = %107, %103, %101
  %112 = phi i32 [ %76, %101 ], [ %110, %107 ], [ %76, %103 ]
  %113 = load volatile ptr, ptr %2, align 8
  %114 = icmp eq ptr %113, %2
  br i1 %114, label %115, label %74

115:                                              ; preds = %111, %79, %74, %67
  %116 = phi i32 [ %58, %67 ], [ %112, %111 ], [ %76, %79 ], [ %76, %74 ]
  %117 = load volatile ptr, ptr %2, align 8
  %118 = icmp eq ptr %117, %2
  br i1 %118, label %124, label %119

119:                                              ; preds = %115
  %120 = load ptr, ptr %51, align 4
  %121 = load ptr, ptr %55, align 4
  %122 = getelementptr inbounds %struct.list_head, ptr %117, i32 0, i32 1
  store ptr %51, ptr %122, align 4
  store ptr %117, ptr %51, align 4
  store ptr %120, ptr %121, align 4
  %123 = getelementptr inbounds %struct.list_head, ptr %120, i32 0, i32 1
  store ptr %121, ptr %123, align 4
  br label %124

124:                                              ; preds = %119, %115
  %125 = load ptr, ptr %56, align 4
  call void @_raw_spin_unlock_irqrestore(ptr noundef %125, i32 noundef %116) #15
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #15
  br label %126

126:                                              ; preds = %124, %49
  call void @blk_mq_run_hw_queues(ptr noundef %0, i1 noundef zeroext false) #15
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @scsi_run_host_queues(ptr noundef %0) local_unnamed_addr #0 {
  %2 = tail call ptr @__scsi_iterate_devices(ptr noundef %0, ptr noundef null) #15
  %3 = icmp eq ptr %2, null
  br i1 %3, label %10, label %4

4:                                                ; preds = %4, %1
  %5 = phi ptr [ %8, %4 ], [ %2, %1 ]
  %6 = getelementptr inbounds %struct.scsi_device, ptr %5, i32 0, i32 1
  %7 = load ptr, ptr %6, align 4
  tail call fastcc void @scsi_run_queue(ptr noundef %7)
  %8 = tail call ptr @__scsi_iterate_devices(ptr noundef %0, ptr noundef nonnull %5) #15
  %9 = icmp eq ptr %8, null
  br i1 %9, label %10, label %4

10:                                               ; preds = %4, %1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__scsi_iterate_devices(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @scsi_free_sgtables(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.scsi_cmnd, ptr %0, i32 0, i32 17, i32 0, i32 1
  %3 = load i32, ptr %2, align 4
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %7, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.scsi_cmnd, ptr %0, i32 0, i32 17
  tail call void @sg_free_table_chained(ptr noundef %6, i32 noundef 2) #15
  br label %7

7:                                                ; preds = %5, %1
  %8 = getelementptr inbounds %struct.scsi_cmnd, ptr %0, i32 0, i32 18
  %9 = load ptr, ptr %8, align 4
  %10 = icmp eq ptr %9, null
  br i1 %10, label %16, label %11

11:                                               ; preds = %7
  %12 = getelementptr inbounds %struct.sg_table, ptr %9, i32 0, i32 1
  %13 = load i32, ptr %12, align 4
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %16, label %15

15:                                               ; preds = %11
  tail call void @sg_free_table_chained(ptr noundef nonnull %9, i32 noundef 1) #15
  br label %16

16:                                               ; preds = %15, %11, %7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @sg_free_table_chained(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @scsi_io_completion(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = alloca i8, align 1
  %4 = getelementptr inbounds %struct.scsi_cmnd, ptr %0, i32 0, i32 24
  %5 = load i32, ptr %4, align 4
  %6 = getelementptr i8, ptr %0, i32 -168
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %3) #15
  store i8 0, ptr %3, align 1
  %7 = icmp eq i32 %5, 0
  br i1 %7, label %10, label %8, !prof !11

8:                                                ; preds = %2
  %9 = call fastcc i32 @scsi_io_completion_nz_result(ptr noundef %0, i32 noundef %5, ptr noundef nonnull %3)
  br label %10

10:                                               ; preds = %8, %2
  %11 = phi i32 [ %9, %8 ], [ 0, %2 ]
  %12 = getelementptr i8, ptr %0, i32 -156
  %13 = load i32, ptr %12, align 4
  %14 = and i32 %13, 254
  %15 = icmp eq i32 %14, 34
  br i1 %15, label %16, label %19, !prof !9

16:                                               ; preds = %10
  %17 = load i32, ptr %4, align 4
  %18 = getelementptr inbounds %struct.scsi_request, ptr %0, i32 0, i32 3
  store i32 %17, ptr %18, align 4
  br label %19

19:                                               ; preds = %16, %10
  %20 = getelementptr i8, ptr %0, i32 -136
  %21 = load i32, ptr %20, align 8
  %22 = icmp ne i32 %21, 0
  %23 = load i8, ptr %3, align 1
  %24 = icmp eq i8 %23, 0
  %25 = select i1 %22, i1 true, i1 %24
  br i1 %25, label %26, label %28, !prof !11

26:                                               ; preds = %19
  %27 = tail call fastcc zeroext i1 @scsi_end_request(ptr noundef %6, i8 noundef zeroext %23, i32 noundef %1)
  br i1 %27, label %28, label %42, !prof !9

28:                                               ; preds = %26, %19
  br i1 %24, label %38, label %29

29:                                               ; preds = %28
  %30 = tail call i32 @scsi_noretry_cmd(ptr noundef %0) #15
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %38, label %32, !prof !11

32:                                               ; preds = %29
  %33 = load i32, ptr %20, align 8
  %34 = tail call fastcc zeroext i1 @scsi_end_request(ptr noundef %6, i8 noundef zeroext %23, i32 noundef %33)
  br i1 %34, label %35, label %42

35:                                               ; preds = %32
  %36 = load i1, ptr @scsi_io_completion.__already_done, align 1
  br i1 %36, label %42, label %37, !prof !11

37:                                               ; preds = %35
  store i1 true, ptr @scsi_io_completion.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 988, i32 noundef 9, ptr noundef nonnull @.str.2) #15
  br label %42

38:                                               ; preds = %29, %28
  %39 = icmp eq i32 %11, 0
  br i1 %39, label %40, label %41, !prof !11

40:                                               ; preds = %38
  tail call fastcc void @scsi_io_completion_reprep(ptr noundef %0)
  br label %42

41:                                               ; preds = %38
  tail call fastcc void @scsi_io_completion_action(ptr noundef %0, i32 noundef %11)
  br label %42

42:                                               ; preds = %41, %40, %37, %35, %32, %26
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %3) #15
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @scsi_io_completion_nz_result(ptr noundef %0, i32 noundef %1, ptr nocapture noundef writeonly %2) unnamed_addr #0 {
  %4 = alloca %struct.scsi_sense_hdr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #15
  store i64 0, ptr %4, align 8, !annotation !17
  %5 = call zeroext i1 @scsi_command_normalize_sense(ptr noundef %0, ptr noundef nonnull %4) #15
  br i1 %5, label %6, label %16

6:                                                ; preds = %3
  %7 = load i8, ptr %4, align 8
  %8 = icmp ult i8 %7, 112
  %9 = and i8 %7, 1
  %10 = icmp eq i8 %9, 0
  %11 = or i1 %8, %10
  %12 = getelementptr i8, ptr %0, i32 -156
  %13 = load i32, ptr %12, align 4
  %14 = and i32 %13, 254
  %15 = icmp eq i32 %14, 34
  br i1 %15, label %21, label %30

16:                                               ; preds = %3
  %17 = getelementptr i8, ptr %0, i32 -156
  %18 = load i32, ptr %17, align 4
  %19 = and i32 %18, 254
  %20 = icmp eq i32 %19, 34
  br i1 %20, label %37, label %30

21:                                               ; preds = %6
  %22 = getelementptr inbounds %struct.scsi_cmnd, ptr %0, i32 0, i32 21
  %23 = load ptr, ptr %22, align 4
  %24 = getelementptr i8, ptr %23, i32 7
  %25 = load i8, ptr %24, align 1
  %26 = call i8 @llvm.umin.i8(i8 %25, i8 88)
  %27 = add nuw nsw i8 %26, 8
  %28 = zext i8 %27 to i32
  %29 = getelementptr inbounds %struct.scsi_request, ptr %0, i32 0, i32 4
  store i32 %28, ptr %29, align 4
  br i1 %11, label %37, label %39

30:                                               ; preds = %16, %6
  %31 = phi i1 [ true, %16 ], [ %11, %6 ]
  %32 = getelementptr i8, ptr %0, i32 -136
  %33 = load i32, ptr %32, align 8
  %34 = icmp ne i32 %33, 0
  %35 = xor i1 %31, true
  %36 = select i1 %34, i1 true, i1 %35
  br i1 %36, label %39, label %37

37:                                               ; preds = %30, %21, %16
  %38 = call fastcc zeroext i8 @scsi_result_to_blk_status(ptr noundef %0, i32 noundef %1)
  store i8 %38, ptr %2, align 1
  br label %39

39:                                               ; preds = %37, %30, %21
  %40 = getelementptr inbounds %struct.scsi_sense_hdr, ptr %4, i32 0, i32 1
  %41 = load i8, ptr %40, align 1
  %42 = icmp eq i8 %41, 1
  %43 = select i1 %5, i1 %42, i1 false
  br i1 %43, label %44, label %58

44:                                               ; preds = %39
  %45 = getelementptr inbounds %struct.scsi_sense_hdr, ptr %4, i32 0, i32 2
  %46 = load i8, ptr %45, align 2
  %47 = icmp eq i8 %46, 0
  %48 = getelementptr inbounds %struct.scsi_sense_hdr, ptr %4, i32 0, i32 3
  %49 = load i8, ptr %48, align 1
  %50 = icmp eq i8 %49, 29
  %51 = select i1 %47, i1 %50, i1 false
  br i1 %51, label %72, label %52

52:                                               ; preds = %44
  %53 = getelementptr i8, ptr %0, i32 -152
  %54 = load i32, ptr %53, align 8
  %55 = and i32 %54, 2048
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %57, label %72

57:                                               ; preds = %52
  call void @scsi_print_sense(ptr noundef %0) #15
  br label %72

58:                                               ; preds = %39
  %59 = and i32 %1, 255
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %73, label %61

61:                                               ; preds = %58
  %62 = icmp slt i32 %1, 0
  %63 = and i32 %1, 16711680
  %64 = icmp eq i32 %63, 65536
  %65 = or i1 %62, %64
  br i1 %65, label %73, label %66

66:                                               ; preds = %61
  %67 = trunc i32 %1 to i8
  %68 = and i8 %67, -6
  switch i8 %68, label %69 [
    i8 16, label %72
    i8 0, label %72
  ]

69:                                               ; preds = %66
  %70 = and i32 %1, 254
  %71 = icmp eq i32 %70, 34
  br i1 %71, label %72, label %73

72:                                               ; preds = %69, %66, %66, %57, %52, %44
  store i8 0, ptr %2, align 1
  br label %73

73:                                               ; preds = %72, %69, %61, %58
  %74 = phi i32 [ %1, %69 ], [ %1, %58 ], [ %1, %61 ], [ 0, %72 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #15
  ret i32 %74
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc zeroext i1 @scsi_end_request(ptr noundef %0, i8 noundef zeroext %1, i32 noundef %2) unnamed_addr #0 {
  %4 = getelementptr %struct.request, ptr %0, i32 1
  %5 = getelementptr inbounds %struct.scsi_cmnd, ptr %4, i32 0, i32 1
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.scsi_device, ptr %6, i32 0, i32 1
  %8 = load ptr, ptr %7, align 4
  %9 = tail call zeroext i1 @blk_update_request(ptr noundef %0, i8 noundef zeroext %1, i32 noundef %2) #15
  br i1 %9, label %138, label %10

10:                                               ; preds = %3
  %11 = getelementptr inbounds %struct.request_queue, ptr %8, i32 0, i32 11
  %12 = load volatile i32, ptr %11, align 4
  %13 = and i32 %12, 1024
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %19, label %15

15:                                               ; preds = %10
  %16 = load ptr, ptr %0, align 8
  %17 = getelementptr inbounds %struct.request_queue, ptr %16, i32 0, i32 15
  %18 = load ptr, ptr %17, align 8
  tail call void @add_disk_randomness(ptr noundef %18) #15
  br label %19

19:                                               ; preds = %15, %10
  %20 = getelementptr %struct.request, ptr %0, i32 0, i32 3
  %21 = load i32, ptr %20, align 4
  %22 = and i32 %21, 254
  %23 = icmp eq i32 %22, 34
  br i1 %23, label %37, label %24

24:                                               ; preds = %19
  %25 = getelementptr %struct.request, ptr %0, i32 2, i32 12
  %26 = load i32, ptr %25, align 4
  %27 = and i32 %26, 2
  %28 = icmp eq i32 %27, 0
  %29 = load i1, ptr @scsi_end_request.__already_done, align 1
  %30 = xor i1 %29, true
  %31 = select i1 %28, i1 %30, i1 false
  br i1 %31, label %32, label %34, !prof !9

32:                                               ; preds = %24
  store i1 true, ptr @scsi_end_request.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 551, i32 noundef 9, ptr noundef null) #15
  %33 = load i32, ptr %25, align 4
  br label %34

34:                                               ; preds = %32, %24
  %35 = phi i32 [ %33, %32 ], [ %26, %24 ]
  %36 = and i32 %35, -3
  store i32 %36, ptr %25, align 4
  br label %37

37:                                               ; preds = %34, %19
  %38 = getelementptr inbounds %struct.scsi_cmnd, ptr %4, i32 0, i32 17, i32 0, i32 1
  %39 = load i32, ptr %38, align 4
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %43, label %41

41:                                               ; preds = %37
  %42 = getelementptr %struct.request, ptr %0, i32 1, i32 26
  tail call void @sg_free_table_chained(ptr noundef %42, i32 noundef 2) #15
  br label %43

43:                                               ; preds = %41, %37
  %44 = getelementptr %struct.request, ptr %0, i32 1, i32 27
  %45 = load ptr, ptr %44, align 4
  %46 = icmp eq ptr %45, null
  br i1 %46, label %52, label %47

47:                                               ; preds = %43
  %48 = getelementptr inbounds %struct.sg_table, ptr %45, i32 0, i32 1
  %49 = load i32, ptr %48, align 4
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %52, label %51

51:                                               ; preds = %47
  tail call void @sg_free_table_chained(ptr noundef nonnull %45, i32 noundef 1) #15
  br label %52

52:                                               ; preds = %51, %47, %43
  %53 = load i32, ptr %20, align 4
  %54 = and i32 %53, 254
  %55 = icmp eq i32 %54, 34
  br i1 %55, label %67, label %56

56:                                               ; preds = %52
  %57 = load ptr, ptr %0, align 8
  %58 = getelementptr inbounds %struct.request_queue, ptr %57, i32 0, i32 15
  %59 = load ptr, ptr %58, align 8
  %60 = getelementptr inbounds %struct.gendisk, ptr %59, i32 0, i32 10
  %61 = load ptr, ptr %60, align 8
  %62 = load ptr, ptr %61, align 4
  %63 = getelementptr inbounds %struct.scsi_driver, ptr %62, i32 0, i32 3
  %64 = load ptr, ptr %63, align 4
  %65 = icmp eq ptr %64, null
  br i1 %65, label %67, label %66

66:                                               ; preds = %56
  tail call void %64(ptr noundef %4) #15
  br label %67

67:                                               ; preds = %66, %56, %52
  %68 = getelementptr inbounds %struct.request_queue, ptr %8, i32 0, i32 2
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !10
  %69 = load volatile i32, ptr %68, align 4
  %70 = and i32 %69, 3
  %71 = icmp eq i32 %70, 0
  br i1 %71, label %72, label %81, !prof !11

72:                                               ; preds = %67
  %73 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #15, !srcloc !18
  %74 = tail call i32 @llvm.read_register.i32(metadata !0) #15
  %75 = inttoptr i32 %74 to ptr
  %76 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %75) #8, !srcloc !16
  %77 = add i32 %76, %69
  %78 = inttoptr i32 %77 to ptr
  %79 = load i32, ptr %78, align 4
  %80 = add i32 %79, 1
  store i32 %80, ptr %78, align 4
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %73) #15, !srcloc !19
  br label %85

81:                                               ; preds = %67
  %82 = getelementptr inbounds %struct.request_queue, ptr %8, i32 0, i32 2, i32 1
  %83 = load ptr, ptr %82, align 4
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %83) #15, !srcloc !13
  %84 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %83, ptr %83, i32 1, ptr elementtype(i32) %83) #15, !srcloc !20
  br label %85

85:                                               ; preds = %81, %72
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !12
  tail call void @__blk_mq_end_request(ptr noundef %0, i8 noundef zeroext %1) #15
  %86 = getelementptr inbounds %struct.scsi_device, ptr %6, i32 0, i32 54, i32 1
  %87 = load ptr, ptr %86, align 4
  %88 = getelementptr i8, ptr %87, i32 484
  %89 = load i8, ptr %88, align 4
  %90 = and i8 %89, 2
  %91 = icmp eq i8 %90, 0
  br i1 %91, label %92, label %97

92:                                               ; preds = %85
  %93 = load ptr, ptr %6, align 8
  %94 = getelementptr inbounds %struct.Scsi_Host, ptr %93, i32 0, i32 2
  %95 = load volatile ptr, ptr %94, align 4
  %96 = icmp eq ptr %95, %94
  br i1 %96, label %100, label %97

97:                                               ; preds = %92, %85
  %98 = getelementptr inbounds %struct.scsi_device, ptr %6, i32 0, i32 57
  %99 = tail call i32 @kblockd_schedule_work(ptr noundef %98) #15
  br label %114

100:                                              ; preds = %92
  %101 = getelementptr inbounds %struct.scsi_device, ptr %6, i32 0, i32 6
  %102 = load volatile i32, ptr %101, align 4
  %103 = icmp eq i32 %102, 0
  br i1 %103, label %114, label %104

104:                                              ; preds = %100
  tail call void asm sideeffect "dmb ish", "~{memory}"() #15, !srcloc !21
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %101) #15, !srcloc !13
  br label %105

105:                                              ; preds = %105, %104
  %106 = tail call { i32, i32 } asm sideeffect "@ atomic_cmpxchg\0Aldrex\09$1, [$3]\0Amov\09$0, #0\0Ateq\09$1, $4\0Astrexeq $0, $5, [$3]\0A", "=&r,=&r,=*Qo,r,Ir,r,*Qo,~{cc}"(ptr elementtype(i32) %101, ptr %101, i32 %102, i32 0, ptr elementtype(i32) %101) #15, !srcloc !22
  %107 = extractvalue { i32, i32 } %106, 0
  %108 = icmp eq i32 %107, 0
  br i1 %108, label %109, label %105

109:                                              ; preds = %105
  %110 = extractvalue { i32, i32 } %106, 1
  tail call void asm sideeffect "dmb ish", "~{memory}"() #15, !srcloc !23
  %111 = icmp eq i32 %110, %102
  br i1 %111, label %112, label %114

112:                                              ; preds = %109
  %113 = load ptr, ptr %7, align 4
  tail call void @blk_mq_run_hw_queues(ptr noundef %113, i1 noundef zeroext true) #15
  br label %114

114:                                              ; preds = %112, %109, %100, %97
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !10
  %115 = load volatile i32, ptr %68, align 4
  %116 = and i32 %115, 3
  %117 = icmp eq i32 %116, 0
  br i1 %117, label %118, label %127, !prof !11

118:                                              ; preds = %114
  %119 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #15, !srcloc !18
  %120 = tail call i32 @llvm.read_register.i32(metadata !0) #15
  %121 = inttoptr i32 %120 to ptr
  %122 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %121) #8, !srcloc !16
  %123 = add i32 %122, %115
  %124 = inttoptr i32 %123 to ptr
  %125 = load i32, ptr %124, align 4
  %126 = add i32 %125, -1
  store i32 %126, ptr %124, align 4
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %119) #15, !srcloc !19
  br label %137

127:                                              ; preds = %114
  %128 = getelementptr inbounds %struct.request_queue, ptr %8, i32 0, i32 2, i32 1
  %129 = load ptr, ptr %128, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #15, !srcloc !24
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %129) #15, !srcloc !13
  %130 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %129, ptr %129, i32 1, ptr elementtype(i32) %129) #15, !srcloc !25
  %131 = extractvalue { i32, i32 } %130, 0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #15, !srcloc !26
  %132 = icmp eq i32 %131, 0
  br i1 %132, label %133, label %137, !prof !9

133:                                              ; preds = %127
  %134 = load ptr, ptr %128, align 4
  %135 = getelementptr inbounds %struct.percpu_ref_data, ptr %134, i32 0, i32 1
  %136 = load ptr, ptr %135, align 4
  tail call void %136(ptr noundef %68) #15
  br label %137

137:                                              ; preds = %133, %127, %118
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !12
  br label %138

138:                                              ; preds = %137, %3
  ret i1 %9
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @scsi_noretry_cmd(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @scsi_io_completion_reprep(ptr noundef %0) unnamed_addr #0 {
  %2 = getelementptr i8, ptr %0, i32 -168
  %3 = getelementptr i8, ptr %0, i32 -152
  %4 = load i32, ptr %3, align 8
  %5 = and i32 %4, 128
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %39, label %7

7:                                                ; preds = %1
  %8 = and i32 %4, -129
  store i32 %8, ptr %3, align 8
  %9 = getelementptr inbounds %struct.scsi_cmnd, ptr %0, i32 0, i32 17, i32 0, i32 1
  %10 = load i32, ptr %9, align 4
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %14, label %12

12:                                               ; preds = %7
  %13 = getelementptr inbounds %struct.scsi_cmnd, ptr %0, i32 0, i32 17
  tail call void @sg_free_table_chained(ptr noundef %13, i32 noundef 2) #15
  br label %14

14:                                               ; preds = %12, %7
  %15 = getelementptr inbounds %struct.scsi_cmnd, ptr %0, i32 0, i32 18
  %16 = load ptr, ptr %15, align 4
  %17 = icmp eq ptr %16, null
  br i1 %17, label %23, label %18

18:                                               ; preds = %14
  %19 = getelementptr inbounds %struct.sg_table, ptr %16, i32 0, i32 1
  %20 = load i32, ptr %19, align 4
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %23, label %22

22:                                               ; preds = %18
  tail call void @sg_free_table_chained(ptr noundef nonnull %16, i32 noundef 1) #15
  br label %23

23:                                               ; preds = %22, %18, %14
  %24 = getelementptr i8, ptr %0, i32 -156
  %25 = load i32, ptr %24, align 4
  %26 = and i32 %25, 254
  %27 = icmp eq i32 %26, 34
  br i1 %27, label %42, label %28

28:                                               ; preds = %23
  %29 = load ptr, ptr %2, align 8
  %30 = getelementptr inbounds %struct.request_queue, ptr %29, i32 0, i32 15
  %31 = load ptr, ptr %30, align 8
  %32 = getelementptr inbounds %struct.gendisk, ptr %31, i32 0, i32 10
  %33 = load ptr, ptr %32, align 8
  %34 = load ptr, ptr %33, align 4
  %35 = getelementptr inbounds %struct.scsi_driver, ptr %34, i32 0, i32 3
  %36 = load ptr, ptr %35, align 4
  %37 = icmp eq ptr %36, null
  br i1 %37, label %42, label %38

38:                                               ; preds = %28
  tail call void %36(ptr noundef %0) #15
  br label %42

39:                                               ; preds = %1
  %40 = load i1, ptr @scsi_mq_requeue_cmd.__already_done, align 1
  br i1 %40, label %42, label %41, !prof !11

41:                                               ; preds = %39
  store i1 true, ptr @scsi_mq_requeue_cmd.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 129, i32 noundef 9, ptr noundef null) #15
  br label %42

42:                                               ; preds = %41, %39, %38, %28, %23
  tail call void @blk_mq_requeue_request(ptr noundef %2, i1 noundef zeroext true) #15
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @scsi_io_completion_action(ptr noundef %0, i32 noundef %1) unnamed_addr #0 {
  %3 = alloca %struct.scsi_sense_hdr, align 8
  %4 = getelementptr inbounds %struct.scsi_cmnd, ptr %0, i32 0, i32 1
  %5 = getelementptr i8, ptr %0, i32 -168
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #15
  store i64 0, ptr %3, align 8, !annotation !17
  %6 = call zeroext i1 @scsi_command_normalize_sense(ptr noundef %0, ptr noundef nonnull %3) #15
  br i1 %6, label %7, label %12

7:                                                ; preds = %2
  %8 = load i8, ptr %3, align 8
  %9 = call fastcc zeroext i8 @scsi_result_to_blk_status(ptr noundef %0, i32 noundef %1)
  %10 = and i32 %1, 16711680
  %11 = icmp eq i32 %10, 524288
  br i1 %11, label %85, label %16

12:                                               ; preds = %2
  %13 = call fastcc zeroext i8 @scsi_result_to_blk_status(ptr noundef %0, i32 noundef %1)
  %14 = and i32 %1, 16711680
  %15 = icmp eq i32 %14, 524288
  br i1 %15, label %85, label %105

16:                                               ; preds = %7
  %17 = icmp ult i8 %8, 112
  %18 = and i8 %8, 1
  %19 = icmp eq i8 %18, 0
  %20 = or i1 %17, %19
  br i1 %20, label %21, label %105

21:                                               ; preds = %16
  %22 = getelementptr inbounds %struct.scsi_sense_hdr, ptr %3, i32 0, i32 1
  %23 = load i8, ptr %22, align 1
  switch i8 %23, label %105 [
    i8 6, label %24
    i8 5, label %32
    i8 11, label %58
    i8 2, label %63
    i8 7, label %71
  ]

24:                                               ; preds = %21
  %25 = load ptr, ptr %4, align 4
  %26 = getelementptr inbounds %struct.scsi_device, ptr %25, i32 0, i32 41
  %27 = load i64, ptr %26, align 4
  %28 = and i64 %27, 1
  %29 = icmp eq i64 %28, 0
  br i1 %29, label %85, label %30

30:                                               ; preds = %24
  %31 = or i64 %27, 2
  store i64 %31, ptr %26, align 4
  br label %105

32:                                               ; preds = %21
  %33 = load ptr, ptr %4, align 4
  %34 = getelementptr inbounds %struct.scsi_device, ptr %33, i32 0, i32 41
  %35 = load i64, ptr %34, align 4
  %36 = and i64 %35, 32768
  %37 = icmp ne i64 %36, 0
  %38 = getelementptr inbounds %struct.scsi_sense_hdr, ptr %3, i32 0, i32 2
  %39 = load i8, ptr %38, align 2
  %40 = icmp eq i8 %39, 32
  %41 = select i1 %37, i1 %40, i1 false
  %42 = getelementptr inbounds %struct.scsi_sense_hdr, ptr %3, i32 0, i32 3
  %43 = load i8, ptr %42, align 1
  %44 = icmp eq i8 %43, 0
  %45 = select i1 %41, i1 %44, i1 false
  br i1 %45, label %46, label %52

46:                                               ; preds = %32
  %47 = getelementptr inbounds %struct.scsi_cmnd, ptr %0, i32 0, i32 16
  %48 = load ptr, ptr %47, align 4
  %49 = load i8, ptr %48, align 1
  switch i8 %49, label %54 [
    i8 40, label %50
    i8 42, label %50
  ]

50:                                               ; preds = %46, %46
  %51 = and i64 %35, -32769
  store i64 %51, ptr %34, align 4
  br label %85

52:                                               ; preds = %32
  %53 = icmp eq i8 %39, 16
  br i1 %53, label %105, label %54

54:                                               ; preds = %52, %46
  %55 = and i8 %39, -5
  %56 = icmp eq i8 %55, 32
  %57 = select i1 %56, i8 5, i8 %9
  br label %105

58:                                               ; preds = %21
  %59 = getelementptr inbounds %struct.scsi_sense_hdr, ptr %3, i32 0, i32 2
  %60 = load i8, ptr %59, align 2
  %61 = icmp eq i8 %60, 16
  %62 = select i1 %61, i8 8, i8 %9
  br label %105

63:                                               ; preds = %21
  %64 = getelementptr inbounds %struct.scsi_sense_hdr, ptr %3, i32 0, i32 2
  %65 = load i8, ptr %64, align 2
  %66 = icmp eq i8 %65, 4
  br i1 %66, label %67, label %105

67:                                               ; preds = %63
  %68 = getelementptr inbounds %struct.scsi_sense_hdr, ptr %3, i32 0, i32 3
  %69 = load i8, ptr %68, align 1
  switch i8 %69, label %105 [
    i8 1, label %85
    i8 4, label %85
    i8 5, label %85
    i8 6, label %85
    i8 7, label %85
    i8 8, label %85
    i8 9, label %85
    i8 17, label %85
    i8 20, label %85
    i8 26, label %85
    i8 27, label %85
    i8 29, label %85
    i8 36, label %85
    i8 10, label %70
  ]

70:                                               ; preds = %67
  br label %105

71:                                               ; preds = %21
  %72 = getelementptr inbounds %struct.scsi_sense_hdr, ptr %3, i32 0, i32 2
  %73 = load i8, ptr %72, align 2
  %74 = icmp eq i8 %73, 12
  %75 = getelementptr inbounds %struct.scsi_sense_hdr, ptr %3, i32 0, i32 3
  %76 = load i8, ptr %75, align 1
  %77 = icmp eq i8 %76, 18
  %78 = select i1 %74, i1 %77, i1 false
  br i1 %78, label %84, label %79

79:                                               ; preds = %71
  %80 = icmp eq i8 %73, 85
  %81 = and i8 %76, -2
  %82 = icmp eq i8 %81, 14
  %83 = select i1 %80, i1 %82, i1 false
  br i1 %83, label %84, label %105

84:                                               ; preds = %79, %71
  br label %105

85:                                               ; preds = %67, %67, %67, %67, %67, %67, %67, %67, %67, %67, %67, %67, %67, %50, %24, %12, %7
  %86 = phi i8 [ %9, %50 ], [ %9, %7 ], [ %9, %24 ], [ %9, %67 ], [ %9, %67 ], [ %9, %67 ], [ %9, %67 ], [ %9, %67 ], [ %9, %67 ], [ %9, %67 ], [ %9, %67 ], [ %9, %67 ], [ %9, %67 ], [ %9, %67 ], [ %9, %67 ], [ %9, %67 ], [ %13, %12 ]
  %87 = phi i32 [ 1, %50 ], [ 2, %7 ], [ 2, %24 ], [ 3, %67 ], [ 3, %67 ], [ 3, %67 ], [ 3, %67 ], [ 3, %67 ], [ 3, %67 ], [ 3, %67 ], [ 3, %67 ], [ 3, %67 ], [ 3, %67 ], [ 3, %67 ], [ 3, %67 ], [ 3, %67 ], [ 2, %12 ]
  %88 = getelementptr inbounds %struct.scsi_cmnd, ptr %0, i32 0, i32 9
  %89 = load i32, ptr %88, align 4
  %90 = icmp eq i32 %89, -1
  br i1 %90, label %104, label %91

91:                                               ; preds = %85
  %92 = add nuw i32 %89, 1
  %93 = getelementptr i8, ptr %0, i32 -140
  %94 = load i32, ptr %93, align 4
  %95 = mul i32 %94, %92
  %96 = getelementptr inbounds %struct.scsi_cmnd, ptr %0, i32 0, i32 7
  %97 = load i32, ptr %96, align 4
  %98 = add i32 %97, %95
  %99 = load volatile i32, ptr @jiffies, align 64
  %100 = sub i32 %98, %99
  %101 = icmp slt i32 %100, 0
  br i1 %101, label %102, label %104

102:                                              ; preds = %91
  %103 = udiv i32 %95, 100
  call void (ptr, ptr, ptr, ...) @scmd_printk(ptr noundef nonnull @.str.4, ptr noundef %0, ptr noundef nonnull @.str.13, i32 noundef %103) #15
  br label %105

104:                                              ; preds = %91, %85
  switch i32 %87, label %168 [
    i32 3, label %162
    i32 1, label %155
    i32 2, label %156
  ]

105:                                              ; preds = %102, %84, %79, %70, %67, %63, %58, %54, %52, %30, %21, %16, %12
  %106 = phi i8 [ %86, %102 ], [ %9, %16 ], [ %9, %21 ], [ %9, %63 ], [ %62, %58 ], [ %57, %54 ], [ 8, %52 ], [ %9, %30 ], [ 15, %84 ], [ %9, %79 ], [ %9, %67 ], [ 12, %70 ], [ %13, %12 ]
  %107 = getelementptr i8, ptr %0, i32 -152
  %108 = load i32, ptr %107, align 8
  %109 = and i32 %108, 2048
  %110 = icmp eq i32 %109, 0
  br i1 %110, label %111, label %117

111:                                              ; preds = %105
  %112 = call i32 @___ratelimit(ptr noundef nonnull @scsi_io_completion_action._rs, ptr noundef nonnull @__func__.scsi_io_completion_action) #15
  %113 = icmp eq i32 %112, 0
  br i1 %113, label %117, label %114

114:                                              ; preds = %111
  call void @scsi_print_result(ptr noundef %0, ptr noundef null, i32 noundef 8195) #15
  br i1 %6, label %115, label %116

115:                                              ; preds = %114
  call void @scsi_print_sense(ptr noundef %0) #15
  br label %116

116:                                              ; preds = %115, %114
  call void @scsi_print_command(ptr noundef %0) #15
  br label %117

117:                                              ; preds = %116, %111, %105
  %118 = getelementptr i8, ptr %0, i32 -156
  %119 = load i32, ptr %118, align 4
  %120 = and i32 %119, 1792
  %121 = load i32, ptr %107, align 8
  %122 = and i32 %121, 32
  %123 = icmp eq i32 %122, 0
  br i1 %123, label %124, label %127

124:                                              ; preds = %117
  %125 = getelementptr i8, ptr %0, i32 -136
  %126 = load i32, ptr %125, align 8
  br label %152

127:                                              ; preds = %117
  %128 = getelementptr i8, ptr %0, i32 -120
  %129 = load ptr, ptr %128, align 4
  %130 = icmp eq ptr %129, null
  br i1 %130, label %144, label %131

131:                                              ; preds = %138, %127
  %132 = phi ptr [ %142, %138 ], [ %129, %127 ]
  %133 = phi i32 [ %141, %138 ], [ 0, %127 ]
  %134 = getelementptr inbounds %struct.bio, ptr %132, i32 0, i32 2
  %135 = load i32, ptr %134, align 4
  %136 = and i32 %135, %120
  %137 = icmp eq i32 %136, %120
  br i1 %137, label %138, label %144

138:                                              ; preds = %131
  %139 = getelementptr inbounds %struct.bio, ptr %132, i32 0, i32 8, i32 1
  %140 = load i32, ptr %139, align 4
  %141 = add i32 %140, %133
  %142 = load ptr, ptr %132, align 4
  %143 = icmp eq ptr %142, null
  br i1 %143, label %144, label %131

144:                                              ; preds = %138, %131, %127
  %145 = phi i32 [ 0, %127 ], [ %133, %131 ], [ %141, %138 ]
  %146 = getelementptr i8, ptr %0, i32 -136
  %147 = load i32, ptr %146, align 8
  %148 = icmp ne i32 %147, 0
  %149 = icmp eq i32 %145, 0
  %150 = select i1 %148, i1 %149, i1 false
  br i1 %150, label %151, label %152, !prof !9

151:                                              ; preds = %144
  call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/scsi/scsi_lib.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 657, 0\0A.popsection", ""() #15, !srcloc !27
  unreachable

152:                                              ; preds = %144, %124
  %153 = phi i32 [ %126, %124 ], [ %145, %144 ]
  %154 = call fastcc zeroext i1 @scsi_end_request(ptr noundef %5, i8 noundef zeroext %106, i32 noundef %153)
  br i1 %154, label %155, label %168

155:                                              ; preds = %152, %104
  call fastcc void @scsi_io_completion_reprep(ptr noundef %0)
  br label %168

156:                                              ; preds = %104
  %157 = load ptr, ptr %4, align 4
  %158 = getelementptr inbounds %struct.scsi_device, ptr %157, i32 0, i32 5
  %159 = getelementptr inbounds %struct.scsi_device, ptr %157, i32 0, i32 50
  %160 = load i32, ptr %159, align 8
  store volatile i32 %160, ptr %158, align 4
  %161 = getelementptr inbounds %struct.scsi_cmnd, ptr %0, i32 0, i32 24
  store i32 0, ptr %161, align 4
  call void @blk_mq_requeue_request(ptr noundef %5, i1 noundef zeroext true) #15
  br label %168

162:                                              ; preds = %104
  %163 = load ptr, ptr %4, align 4
  %164 = getelementptr inbounds %struct.scsi_device, ptr %163, i32 0, i32 5
  %165 = getelementptr inbounds %struct.scsi_device, ptr %163, i32 0, i32 50
  %166 = load i32, ptr %165, align 8
  store volatile i32 %166, ptr %164, align 4
  %167 = getelementptr inbounds %struct.scsi_cmnd, ptr %0, i32 0, i32 24
  store i32 0, ptr %167, align 4
  call void @blk_mq_requeue_request(ptr noundef %5, i1 noundef zeroext true) #15
  br label %168

168:                                              ; preds = %162, %156, %155, %152, %104
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #15
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local zeroext i8 @scsi_alloc_sgtables(ptr noundef %0) #0 {
  %2 = alloca ptr, align 4
  %3 = getelementptr inbounds %struct.scsi_cmnd, ptr %0, i32 0, i32 1
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr i8, ptr %0, i32 -168
  %6 = getelementptr i8, ptr %0, i32 -152
  %7 = load i32, ptr %6, align 8
  %8 = and i32 %7, 262144
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %13

10:                                               ; preds = %1
  %11 = getelementptr i8, ptr %0, i32 -78
  %12 = load i16, ptr %11, align 2
  br label %13

13:                                               ; preds = %10, %1
  %14 = phi i16 [ %12, %10 ], [ 1, %1 ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #15
  store ptr null, ptr %2, align 4
  %15 = getelementptr inbounds %struct.scsi_device, ptr %4, i32 0, i32 60
  %16 = load i32, ptr %15, align 8
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %30, label %18

18:                                               ; preds = %13
  %19 = getelementptr i8, ptr %0, i32 -156
  %20 = load i32, ptr %19, align 4
  %21 = and i32 %20, 255
  %22 = icmp eq i32 %21, 34
  br i1 %22, label %23, label %30

23:                                               ; preds = %18
  %24 = load ptr, ptr %4, align 8
  %25 = getelementptr inbounds %struct.Scsi_Host, ptr %24, i32 0, i32 11
  %26 = load ptr, ptr %25, align 8
  %27 = getelementptr inbounds %struct.scsi_host_template, ptr %26, i32 0, i32 24
  %28 = load ptr, ptr %27, align 8
  %29 = tail call zeroext i1 %28(ptr noundef %5) #15
  br label %30

30:                                               ; preds = %23, %18, %13
  %31 = phi i1 [ false, %18 ], [ false, %13 ], [ %29, %23 ]
  %32 = icmp eq i16 %14, 0
  %33 = load i1, ptr @scsi_alloc_sgtables.__already_done, align 1
  %34 = xor i1 %33, true
  %35 = select i1 %32, i1 %34, i1 false
  br i1 %35, label %36, label %37, !prof !9

36:                                               ; preds = %30
  store i1 true, ptr @scsi_alloc_sgtables.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 1032, i32 noundef 9, ptr noundef null) #15
  br label %37

37:                                               ; preds = %36, %30
  br i1 %32, label %117, label %38

38:                                               ; preds = %37
  %39 = zext i1 %31 to i16
  %40 = add i16 %14, %39
  %41 = getelementptr inbounds %struct.scsi_cmnd, ptr %0, i32 0, i32 17
  %42 = zext i16 %40 to i32
  %43 = load ptr, ptr %41, align 4
  %44 = tail call i32 @sg_alloc_table_chained(ptr noundef %41, i32 noundef %42, ptr noundef %43, i32 noundef 2) #15
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %46, label %117, !prof !11

46:                                               ; preds = %38
  %47 = load ptr, ptr %5, align 8
  %48 = load ptr, ptr %41, align 4
  %49 = call i32 @__blk_rq_map_sg(ptr noundef %47, ptr noundef %5, ptr noundef %48, ptr noundef nonnull %2) #15
  %50 = getelementptr i8, ptr %0, i32 -136
  %51 = load i32, ptr %50, align 8
  %52 = load ptr, ptr %5, align 8
  %53 = getelementptr inbounds %struct.request_queue, ptr %52, i32 0, i32 21
  %54 = load i32, ptr %53, align 8
  %55 = and i32 %54, %51
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %68, label %57

57:                                               ; preds = %46
  %58 = xor i32 %51, -1
  %59 = and i32 %54, %58
  %60 = add i32 %59, 1
  %61 = load ptr, ptr %2, align 4
  %62 = getelementptr inbounds %struct.scatterlist, ptr %61, i32 0, i32 2
  %63 = load i32, ptr %62, align 4
  %64 = add i32 %63, %60
  store i32 %64, ptr %62, align 4
  %65 = getelementptr inbounds %struct.scsi_cmnd, ptr %0, i32 0, i32 27
  %66 = load i32, ptr %65, align 4
  %67 = add i32 %66, %60
  store i32 %67, ptr %65, align 4
  br label %68

68:                                               ; preds = %57, %46
  br i1 %31, label %69, label %103

69:                                               ; preds = %68
  %70 = load ptr, ptr %2, align 4
  %71 = load i32, ptr %70, align 4
  %72 = and i32 %71, -3
  store i32 %72, ptr %70, align 4
  %73 = load ptr, ptr %2, align 4
  %74 = call ptr @sg_next(ptr noundef %73) #15
  store ptr %74, ptr %2, align 4
  %75 = getelementptr inbounds %struct.scsi_device, ptr %4, i32 0, i32 61
  %76 = load ptr, ptr %75, align 4
  %77 = load ptr, ptr @mem_map, align 4
  %78 = ptrtoint ptr %76 to i32
  %79 = add i32 %78, 1073741824
  %80 = lshr i32 %79, 12
  %81 = getelementptr %struct.page, ptr %77, i32 %80
  %82 = ptrtoint ptr %81 to i32
  %83 = and i32 %82, 3
  %84 = icmp eq i32 %83, 0
  br i1 %84, label %86, label %85, !prof !11

85:                                               ; preds = %69
  call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 112, 0\0A.popsection", ""() #15, !srcloc !28
  unreachable

86:                                               ; preds = %69
  %87 = load i32, ptr %15, align 8
  %88 = and i32 %78, 4095
  %89 = load i32, ptr %74, align 4
  %90 = and i32 %89, 3
  %91 = or i32 %90, %82
  store i32 %91, ptr %74, align 4
  %92 = getelementptr inbounds %struct.scatterlist, ptr %74, i32 0, i32 1
  store i32 %88, ptr %92, align 4
  %93 = getelementptr inbounds %struct.scatterlist, ptr %74, i32 0, i32 2
  store i32 %87, ptr %93, align 4
  %94 = load ptr, ptr %2, align 4
  %95 = load i32, ptr %94, align 4
  %96 = and i32 %95, -4
  %97 = or i32 %96, 2
  store i32 %97, ptr %94, align 4
  %98 = load i32, ptr %15, align 8
  %99 = getelementptr inbounds %struct.scsi_cmnd, ptr %0, i32 0, i32 27
  %100 = load i32, ptr %99, align 4
  %101 = add i32 %100, %98
  store i32 %101, ptr %99, align 4
  %102 = add i32 %49, 1
  br label %103

103:                                              ; preds = %86, %68
  %104 = phi i32 [ %102, %86 ], [ %49, %68 ]
  %105 = getelementptr inbounds %struct.scsi_cmnd, ptr %0, i32 0, i32 17, i32 0, i32 1
  %106 = load i32, ptr %105, align 4
  %107 = icmp ugt i32 %104, %106
  br i1 %107, label %108, label %109, !prof !9

108:                                              ; preds = %103
  call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/scsi/scsi_lib.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1073, 0\0A.popsection", ""() #15, !srcloc !29
  unreachable

109:                                              ; preds = %103
  store i32 %104, ptr %105, align 4
  %110 = load i32, ptr %6, align 8
  %111 = and i32 %110, 262144
  %112 = icmp eq i32 %111, 0
  %113 = getelementptr i8, ptr %0, i32 -48
  %114 = select i1 %112, ptr %50, ptr %113
  %115 = load i32, ptr %114, align 4
  %116 = getelementptr inbounds %struct.scsi_cmnd, ptr %0, i32 0, i32 17, i32 1
  store i32 %115, ptr %116, align 4
  br label %117

117:                                              ; preds = %109, %38, %37
  %118 = phi i8 [ 0, %109 ], [ 10, %37 ], [ 9, %38 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #15
  ret i8 %118
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sg_alloc_table_chained(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__blk_rq_map_sg(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @sg_next(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @blk_mq_alloc_request(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @scsi_init_command(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.scsi_cmnd, ptr %1, i32 0, i32 21
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.scsi_cmnd, ptr %1, i32 0, i32 18
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.scsi_cmnd, ptr %1, i32 0, i32 25
  %8 = load i32, ptr %7, align 4
  %9 = and i32 %8, 2
  %10 = getelementptr inbounds %struct.scsi_cmnd, ptr %1, i32 0, i32 6
  %11 = load i32, ptr %10, align 4
  %12 = getelementptr i8, ptr %1, i32 -156
  %13 = load i32, ptr %12, align 4
  %14 = and i32 %13, 254
  %15 = icmp ne i32 %14, 34
  %16 = icmp eq i32 %9, 0
  %17 = select i1 %15, i1 %16, i1 false
  br i1 %17, label %23, label %18

18:                                               ; preds = %2
  %19 = getelementptr inbounds %struct.scsi_cmnd, ptr %1, i32 0, i32 7
  %20 = load i32, ptr %19, align 4
  %21 = getelementptr inbounds %struct.scsi_cmnd, ptr %1, i32 0, i32 8
  %22 = load i32, ptr %21, align 4
  br label %30

23:                                               ; preds = %2
  tail call void @llvm.memset.p0.i32(ptr noundef align 4 dereferenceable(16) %1, i8 0, i32 16, i1 false) #15
  %24 = getelementptr i8, ptr %1, i32 16
  store ptr %1, ptr %24, align 4
  %25 = getelementptr i8, ptr %1, i32 20
  store i16 16, ptr %25, align 4
  %26 = getelementptr i8, ptr %1, i32 28
  store i32 0, ptr %26, align 4
  %27 = load volatile i32, ptr @jiffies, align 64
  %28 = getelementptr i8, ptr %1, i32 116
  store i32 %27, ptr %28, align 4
  %29 = getelementptr i8, ptr %1, i32 120
  store i32 0, ptr %29, align 4
  br label %30

30:                                               ; preds = %23, %18
  %31 = phi i32 [ %22, %18 ], [ 0, %23 ]
  %32 = phi i32 [ %20, %18 ], [ %27, %23 ]
  %33 = phi i32 [ %9, %18 ], [ 2, %23 ]
  %34 = getelementptr inbounds %struct.scsi_cmnd, ptr %1, i32 0, i32 7
  %35 = getelementptr inbounds %struct.scsi_cmnd, ptr %1, i32 0, i32 8
  %36 = getelementptr inbounds %struct.scsi_cmnd, ptr %1, i32 0, i32 26
  %37 = load volatile i32, ptr %36, align 4
  %38 = and i32 %37, 2
  %39 = icmp eq i32 %38, 0
  %40 = load ptr, ptr %0, align 8
  %41 = getelementptr inbounds %struct.Scsi_Host, ptr %40, i32 0, i32 11
  %42 = load ptr, ptr %41, align 8
  %43 = getelementptr inbounds %struct.scsi_host_template, ptr %42, i32 0, i32 7
  %44 = load ptr, ptr %43, align 4
  %45 = icmp eq ptr %44, null
  br i1 %45, label %46, label %49

46:                                               ; preds = %30
  %47 = load i32, ptr %42, align 8
  %48 = add i32 %47, 192
  br label %49

49:                                               ; preds = %46, %30
  %50 = phi i32 [ 192, %30 ], [ %48, %46 ]
  %51 = getelementptr i8, ptr %1, i32 44
  tail call void @llvm.memset.p0.i32(ptr align 1 %51, i8 0, i32 %50, i1 false)
  store ptr %0, ptr %51, align 4
  store ptr %4, ptr %3, align 4
  store ptr %6, ptr %5, align 4
  store i32 %33, ptr %7, align 4
  %52 = getelementptr inbounds %struct.scsi_cmnd, ptr %1, i32 0, i32 2
  store volatile ptr %52, ptr %52, align 4
  %53 = getelementptr inbounds %struct.scsi_cmnd, ptr %1, i32 0, i32 2, i32 1
  store ptr %52, ptr %53, align 4
  %54 = getelementptr inbounds %struct.scsi_cmnd, ptr %1, i32 0, i32 3
  store i32 -32, ptr %54, align 4
  %55 = getelementptr inbounds %struct.scsi_cmnd, ptr %1, i32 0, i32 3, i32 0, i32 1
  store volatile ptr %55, ptr %55, align 4
  %56 = getelementptr inbounds %struct.scsi_cmnd, ptr %1, i32 0, i32 3, i32 0, i32 1, i32 1
  store ptr %55, ptr %56, align 4
  %57 = getelementptr inbounds %struct.scsi_cmnd, ptr %1, i32 0, i32 3, i32 0, i32 2
  store ptr @scmd_eh_abort_handler, ptr %57, align 4
  %58 = getelementptr inbounds %struct.scsi_cmnd, ptr %1, i32 0, i32 3, i32 1
  tail call void @init_timer_key(ptr noundef %58, ptr noundef nonnull @delayed_work_timer_fn, i32 noundef 2097152, ptr noundef null, ptr noundef null) #15
  store i32 %32, ptr %34, align 4
  store i32 %31, ptr %35, align 4
  br i1 %39, label %62, label %59

59:                                               ; preds = %49
  %60 = load i32, ptr %36, align 4
  %61 = or i32 %60, 2
  store i32 %61, ptr %36, align 4
  br label %62

62:                                               ; preds = %59, %49
  store i32 %11, ptr %10, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @scmd_eh_abort_handler(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @delayed_work_timer_fn(ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @scsi_done(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.scsi_cmnd, ptr %0, i32 0, i32 13
  %3 = load i8, ptr %2, align 1
  switch i8 %3, label %5 [
    i8 2, label %27
    i8 1, label %4
  ]

4:                                                ; preds = %1
  tail call void @scsi_eh_done(ptr noundef %0) #15
  br label %27

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.scsi_cmnd, ptr %0, i32 0, i32 26
  %7 = tail call i32 @_test_and_set_bit(i32 noundef 0, ptr noundef %6) #15
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %27, !prof !11

9:                                                ; preds = %5
  %10 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_scsi_dispatch_cmd_done, i32 0, i32 1), align 4
  %11 = icmp sgt i32 %10, 0
  br i1 %11, label %12, label %25

12:                                               ; preds = %9
  %13 = tail call ptr @llvm.thread.pointer() #15
  %14 = getelementptr inbounds %struct.thread_info, ptr %13, i32 0, i32 2
  %15 = load i32, ptr %14, align 8
  %16 = lshr i32 %15, 5
  %17 = getelementptr i32, ptr @__cpu_online_mask, i32 %16
  %18 = load volatile i32, ptr %17, align 4
  %19 = and i32 %15, 31
  %20 = shl nuw i32 1, %19
  %21 = and i32 %20, %18
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %25, label %23

23:                                               ; preds = %12
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !30
  %24 = tail call i32 @__traceiter_scsi_dispatch_cmd_done(ptr noundef null, ptr noundef %0) #15
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !31
  br label %25

25:                                               ; preds = %23, %12, %9
  %26 = getelementptr i8, ptr %0, i32 -168
  tail call void @blk_mq_complete_request(ptr noundef %26) #15
  br label %27

27:                                               ; preds = %25, %5, %4, %1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @scsi_eh_done(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @blk_mq_complete_request(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @__scsi_init_queue(ptr nocapture noundef %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.Scsi_Host, ptr %0, i32 0, i32 52
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.Scsi_Host, ptr %0, i32 0, i32 28
  %6 = load i16, ptr %5, align 2
  %7 = tail call i16 @llvm.umin.i16(i16 %6, i16 2048)
  tail call void @blk_queue_max_segments(ptr noundef %1, i16 noundef zeroext %7) #15
  %8 = getelementptr inbounds %struct.Scsi_Host, ptr %0, i32 0, i32 41
  %9 = load i32, ptr %8, align 4
  %10 = icmp ult i32 %9, 8
  br i1 %10, label %19, label %11

11:                                               ; preds = %2
  %12 = getelementptr inbounds %struct.Scsi_Host, ptr %0, i32 0, i32 29
  %13 = load i16, ptr %12, align 4
  %14 = icmp eq i16 %13, 0
  %15 = select i1 %14, i16 -1, i16 %13
  store i16 %15, ptr %12, align 4
  %16 = load i16, ptr %5, align 2
  %17 = icmp ult i16 %15, %16
  br i1 %17, label %18, label %19, !prof !9

18:                                               ; preds = %11
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/scsi/scsi_lib.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1888, 0\0A.popsection", ""() #15, !srcloc !32
  unreachable

19:                                               ; preds = %11, %2
  %20 = getelementptr inbounds %struct.device, ptr %4, i32 0, i32 16
  %21 = load ptr, ptr %20, align 4
  %22 = icmp eq ptr %21, null
  %23 = getelementptr inbounds %struct.Scsi_Host, ptr %0, i32 0, i32 30
  %24 = load i32, ptr %23, align 8
  br i1 %22, label %29, label %25

25:                                               ; preds = %19
  %26 = tail call i32 @dma_max_mapping_size(ptr noundef %4) #15
  %27 = lshr i32 %26, 9
  %28 = tail call i32 @llvm.umin.i32(i32 %24, i32 %27)
  store i32 %28, ptr %23, align 8
  br label %29

29:                                               ; preds = %25, %19
  %30 = phi i32 [ %28, %25 ], [ %24, %19 ]
  tail call void @blk_queue_max_hw_sectors(ptr noundef %1, i32 noundef %30) #15
  %31 = getelementptr inbounds %struct.Scsi_Host, ptr %0, i32 0, i32 32
  %32 = load i32, ptr %31, align 8
  tail call void @blk_queue_segment_boundary(ptr noundef %1, i32 noundef %32) #15
  %33 = getelementptr inbounds %struct.device, ptr %4, i32 0, i32 20
  %34 = load ptr, ptr %33, align 4
  %35 = icmp eq ptr %34, null
  br i1 %35, label %39, label %36

36:                                               ; preds = %29
  %37 = load i32, ptr %31, align 8
  %38 = getelementptr inbounds %struct.device_dma_parameters, ptr %34, i32 0, i32 2
  store i32 %37, ptr %38, align 4
  br label %39

39:                                               ; preds = %36, %29
  %40 = getelementptr inbounds %struct.Scsi_Host, ptr %0, i32 0, i32 31
  %41 = load i32, ptr %40, align 4
  tail call void @blk_queue_max_segment_size(ptr noundef %1, i32 noundef %41) #15
  %42 = getelementptr inbounds %struct.Scsi_Host, ptr %0, i32 0, i32 33
  %43 = load i32, ptr %42, align 4
  tail call void @blk_queue_virt_boundary(ptr noundef %1, i32 noundef %43) #15
  %44 = load ptr, ptr %33, align 4
  %45 = icmp eq ptr %44, null
  br i1 %45, label %49, label %46

46:                                               ; preds = %39
  %47 = getelementptr inbounds %struct.request_queue, ptr %1, i32 0, i32 32, i32 7
  %48 = load i32, ptr %47, align 4
  store i32 %48, ptr %44, align 4
  br label %49

49:                                               ; preds = %46, %39
  tail call void @blk_queue_dma_alignment(ptr noundef %1, i32 noundef 63) #15
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @blk_queue_max_segments(ptr noundef, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_max_mapping_size(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @blk_queue_max_hw_sectors(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @blk_queue_segment_boundary(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @blk_queue_max_segment_size(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @blk_queue_virt_boundary(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @blk_queue_dma_alignment(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @scsi_mq_setup_tags(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.Scsi_Host, ptr %0, i32 0, i32 13
  %3 = getelementptr inbounds %struct.Scsi_Host, ptr %0, i32 0, i32 28
  %4 = load i16, ptr %3, align 2
  %5 = tail call i16 @llvm.umin.i16(i16 %4, i16 2) #15
  %6 = mul nuw nsw i16 %5, 20
  %7 = tail call i16 @llvm.umax.i16(i16 %6, i16 20)
  %8 = zext i16 %7 to i32
  %9 = getelementptr inbounds %struct.Scsi_Host, ptr %0, i32 0, i32 11
  %10 = load ptr, ptr %9, align 8
  %11 = load i32, ptr %10, align 8
  %12 = add i32 %11, 236
  %13 = add i32 %12, %8
  %14 = getelementptr inbounds %struct.Scsi_Host, ptr %0, i32 0, i32 41
  %15 = load i32, ptr %14, align 4
  %16 = icmp eq i32 %15, 0
  %17 = add i32 %13, 36
  %18 = select i1 %16, i32 %13, i32 %17
  tail call void @llvm.memset.p0.i32(ptr noundef align 4 dereferenceable(112) %2, i8 0, i32 112, i1 false)
  %19 = getelementptr inbounds %struct.scsi_host_template, ptr %10, i32 0, i32 2
  %20 = load ptr, ptr %19, align 8
  %21 = icmp eq ptr %20, null
  %22 = select i1 %21, ptr @scsi_mq_ops_no_commit, ptr @scsi_mq_ops
  %23 = getelementptr inbounds %struct.Scsi_Host, ptr %0, i32 0, i32 13, i32 2
  store ptr %22, ptr %23, align 4
  %24 = getelementptr inbounds %struct.Scsi_Host, ptr %0, i32 0, i32 34
  %25 = load i32, ptr %24, align 8
  %26 = icmp eq i32 %25, 0
  %27 = select i1 %26, i32 1, i32 %25
  %28 = getelementptr inbounds %struct.Scsi_Host, ptr %0, i32 0, i32 13, i32 3
  store i32 %27, ptr %28, align 4
  %29 = getelementptr inbounds %struct.Scsi_Host, ptr %0, i32 0, i32 35
  %30 = load i32, ptr %29, align 4
  %31 = icmp eq i32 %30, 0
  %32 = select i1 %31, i32 1, i32 %30
  %33 = getelementptr inbounds %struct.Scsi_Host, ptr %0, i32 0, i32 13, i32 1
  store i32 %32, ptr %33, align 4
  %34 = getelementptr inbounds %struct.Scsi_Host, ptr %0, i32 0, i32 26
  %35 = load i32, ptr %34, align 4
  %36 = getelementptr inbounds %struct.Scsi_Host, ptr %0, i32 0, i32 13, i32 4
  store i32 %35, ptr %36, align 4
  %37 = getelementptr inbounds %struct.Scsi_Host, ptr %0, i32 0, i32 13, i32 6
  store i32 %18, ptr %37, align 4
  %38 = getelementptr inbounds %struct.Scsi_Host, ptr %0, i32 0, i32 13, i32 7
  store i32 -1, ptr %38, align 4
  %39 = getelementptr inbounds %struct.Scsi_Host, ptr %0, i32 0, i32 13, i32 9
  store i32 1, ptr %39, align 4
  %40 = getelementptr inbounds %struct.scsi_host_template, ptr %10, i32 0, i32 44
  %41 = load i32, ptr %40, align 8
  %42 = shl i32 %41, 8
  %43 = and i32 %42, 256
  %44 = or i32 %43, 1
  store i32 %44, ptr %39, align 4
  %45 = getelementptr inbounds %struct.Scsi_Host, ptr %0, i32 0, i32 13, i32 10
  store ptr %0, ptr %45, align 4
  %46 = getelementptr inbounds %struct.Scsi_Host, ptr %0, i32 0, i32 36
  %47 = load i16, ptr %46, align 8
  %48 = and i16 %47, 256
  %49 = icmp eq i16 %48, 0
  br i1 %49, label %52, label %50

50:                                               ; preds = %1
  %51 = or i32 %43, 9
  store i32 %51, ptr %39, align 4
  br label %52

52:                                               ; preds = %50, %1
  %53 = tail call i32 @blk_mq_alloc_tag_set(ptr noundef %2) #15
  ret i32 %53
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @blk_mq_alloc_tag_set(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @scsi_mq_destroy_tags(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.Scsi_Host, ptr %0, i32 0, i32 13
  tail call void @blk_mq_free_tag_set(ptr noundef %2) #15
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @blk_mq_free_tag_set(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @scsi_device_from_queue(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.request_queue, ptr %0, i32 0, i32 5
  %3 = load ptr, ptr %2, align 8
  %4 = icmp eq ptr %3, @scsi_mq_ops_no_commit
  %5 = icmp eq ptr %3, @scsi_mq_ops
  %6 = or i1 %4, %5
  br i1 %6, label %7, label %15

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.request_queue, ptr %0, i32 0, i32 10
  %9 = load ptr, ptr %8, align 4
  %10 = icmp eq ptr %9, null
  br i1 %10, label %15, label %11

11:                                               ; preds = %7
  %12 = getelementptr inbounds %struct.scsi_device, ptr %9, i32 0, i32 54
  %13 = tail call ptr @get_device(ptr noundef %12) #15
  %14 = icmp eq ptr %13, null
  br i1 %14, label %15, label %16

15:                                               ; preds = %11, %7, %1
  br label %16

16:                                               ; preds = %15, %11
  %17 = phi ptr [ %9, %11 ], [ null, %15 ]
  ret ptr %17
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @get_device(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define dso_local void @scsi_block_requests(ptr nocapture noundef %0) #5 {
  %2 = getelementptr inbounds %struct.Scsi_Host, ptr %0, i32 0, i32 36
  %3 = load i16, ptr %2, align 8
  %4 = or i16 %3, 4
  store i16 %4, ptr %2, align 8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @scsi_unblock_requests(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.Scsi_Host, ptr %0, i32 0, i32 36
  %3 = load i16, ptr %2, align 8
  %4 = and i16 %3, -5
  store i16 %4, ptr %2, align 8
  %5 = tail call ptr @__scsi_iterate_devices(ptr noundef %0, ptr noundef null) #15
  %6 = icmp eq ptr %5, null
  br i1 %6, label %13, label %7

7:                                                ; preds = %7, %1
  %8 = phi ptr [ %11, %7 ], [ %5, %1 ]
  %9 = getelementptr inbounds %struct.scsi_device, ptr %8, i32 0, i32 1
  %10 = load ptr, ptr %9, align 4
  tail call fastcc void @scsi_run_queue(ptr noundef %10) #15
  %11 = tail call ptr @__scsi_iterate_devices(ptr noundef %0, ptr noundef nonnull %8) #15
  %12 = icmp eq ptr %11, null
  br i1 %12, label %13, label %7

13:                                               ; preds = %7, %1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @scsi_exit_queue() local_unnamed_addr #0 {
  %1 = load ptr, ptr @scsi_sense_cache, align 4
  tail call void @kmem_cache_destroy(ptr noundef %1) #15
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kmem_cache_destroy(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @scsi_mode_select(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2, ptr nocapture noundef readonly %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, ptr nocapture noundef readonly %7, ptr noundef %8) #0 {
  %10 = alloca [10 x i8], align 1
  call void @llvm.lifetime.start.p0(i64 10, ptr nonnull %10) #15
  %11 = icmp eq i32 %1, 0
  %12 = select i1 %11, i8 0, i8 16
  %13 = icmp ne i32 %2, 0
  %14 = zext i1 %13 to i8
  %15 = or i8 %12, %14
  %16 = getelementptr inbounds [10 x i8], ptr %10, i32 0, i32 1
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(10) %10, i8 0, i64 10, i1 false)
  store i8 %15, ptr %16, align 1
  %17 = getelementptr inbounds %struct.scsi_device, ptr %0, i32 0, i32 41
  %18 = load i64, ptr %17, align 4
  %19 = and i64 %18, 65536
  %20 = icmp eq i64 %19, 0
  br i1 %20, label %21, label %28

21:                                               ; preds = %9
  %22 = add i32 %4, 4
  %23 = icmp sgt i32 %22, 255
  br i1 %23, label %28, label %24

24:                                               ; preds = %21
  %25 = getelementptr inbounds %struct.scsi_mode_data, ptr %7, i32 0, i32 1
  %26 = load i16, ptr %25, align 4
  %27 = icmp ugt i16 %26, 255
  br i1 %27, label %28, label %55

28:                                               ; preds = %24, %21, %9
  %29 = icmp sgt i32 %4, 65527
  br i1 %29, label %80, label %30

30:                                               ; preds = %28
  %31 = add nsw i32 %4, 8
  %32 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %31, i32 noundef 3264) #16
  %33 = icmp eq ptr %32, null
  br i1 %33, label %80, label %34

34:                                               ; preds = %30
  %35 = getelementptr i8, ptr %32, i32 8
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 8 %35, ptr align 1 %3, i32 %4, i1 false)
  store i8 0, ptr %32, align 64
  %36 = getelementptr i8, ptr %32, i32 1
  store i8 0, ptr %36, align 1
  %37 = getelementptr inbounds %struct.scsi_mode_data, ptr %7, i32 0, i32 2
  %38 = load i8, ptr %37, align 2
  %39 = getelementptr i8, ptr %32, i32 2
  store i8 %38, ptr %39, align 2
  %40 = getelementptr inbounds %struct.scsi_mode_data, ptr %7, i32 0, i32 3
  %41 = load i8, ptr %40, align 1
  %42 = getelementptr i8, ptr %32, i32 3
  store i8 %41, ptr %42, align 1
  %43 = getelementptr inbounds %struct.scsi_mode_data, ptr %7, i32 0, i32 5
  %44 = load i8, ptr %43, align 1
  %45 = and i8 %44, 1
  %46 = getelementptr i8, ptr %32, i32 4
  store i8 %45, ptr %46, align 4
  %47 = getelementptr i8, ptr %32, i32 5
  store i8 0, ptr %47, align 1
  %48 = getelementptr inbounds %struct.scsi_mode_data, ptr %7, i32 0, i32 1
  %49 = load i16, ptr %48, align 4
  %50 = getelementptr i8, ptr %32, i32 6
  %51 = tail call i16 @llvm.bswap.i16(i16 %49) #15
  store i16 %51, ptr %50, align 2
  store i8 85, ptr %10, align 1
  %52 = trunc i32 %31 to i16
  %53 = getelementptr inbounds [10 x i8], ptr %10, i32 0, i32 7
  %54 = tail call i16 @llvm.bswap.i16(i16 %52) #15
  store i16 %54, ptr %53, align 1
  br label %76

55:                                               ; preds = %24
  %56 = getelementptr inbounds %struct.scsi_mode_data, ptr %7, i32 0, i32 5
  %57 = load i8, ptr %56, align 1
  %58 = and i8 %57, 1
  %59 = icmp eq i8 %58, 0
  br i1 %59, label %60, label %80

60:                                               ; preds = %55
  %61 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %22, i32 noundef 3264) #16
  %62 = icmp eq ptr %61, null
  br i1 %62, label %80, label %63

63:                                               ; preds = %60
  %64 = getelementptr i8, ptr %61, i32 4
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 4 %64, ptr align 1 %3, i32 %4, i1 false)
  store i8 0, ptr %61, align 64
  %65 = getelementptr inbounds %struct.scsi_mode_data, ptr %7, i32 0, i32 2
  %66 = load i8, ptr %65, align 2
  %67 = getelementptr i8, ptr %61, i32 1
  store i8 %66, ptr %67, align 1
  %68 = getelementptr inbounds %struct.scsi_mode_data, ptr %7, i32 0, i32 3
  %69 = load i8, ptr %68, align 1
  %70 = getelementptr i8, ptr %61, i32 2
  store i8 %69, ptr %70, align 2
  %71 = load i16, ptr %25, align 4
  %72 = trunc i16 %71 to i8
  %73 = getelementptr i8, ptr %61, i32 3
  store i8 %72, ptr %73, align 1
  store i8 21, ptr %10, align 1
  %74 = trunc i32 %22 to i8
  %75 = getelementptr inbounds [10 x i8], ptr %10, i32 0, i32 4
  store i8 %74, ptr %75, align 1
  br label %76

76:                                               ; preds = %63, %34
  %77 = phi i32 [ %31, %34 ], [ %22, %63 ]
  %78 = phi ptr [ %32, %34 ], [ %61, %63 ]
  %79 = call i32 @__scsi_execute(ptr noundef %0, ptr noundef nonnull %10, i32 noundef 1, ptr noundef nonnull %78, i32 noundef %77, ptr noundef null, ptr noundef %8, i32 noundef %5, i32 noundef %6, i64 noundef 0, i32 noundef 0, ptr noundef null) #15
  tail call void @kfree(ptr noundef nonnull %78) #15
  br label %80

80:                                               ; preds = %76, %60, %55, %30, %28
  %81 = phi i32 [ %79, %76 ], [ -22, %28 ], [ -12, %30 ], [ -22, %55 ], [ -12, %60 ]
  call void @llvm.lifetime.end.p0(i64 10, ptr nonnull %10) #15
  ret i32 %81
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @scsi_mode_sense(ptr nocapture noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, ptr nocapture noundef %7, ptr noundef %8) #0 {
  %10 = alloca [12 x i8], align 1
  %11 = alloca %struct.scsi_sense_hdr, align 8
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %10) #15
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %11) #15
  store i64 0, ptr %11, align 8, !annotation !17
  tail call void @llvm.memset.p0.i32(ptr noundef align 4 dereferenceable(12) %7, i8 0, i32 12, i1 false)
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(12) %10, i8 0, i32 12, i1 false)
  %12 = getelementptr inbounds %struct.scsi_device, ptr %0, i32 0, i32 41
  %13 = load i64, ptr %12, align 4
  %14 = and i64 %13, 131072
  %15 = icmp eq i64 %14, 0
  %16 = trunc i32 %1 to i8
  %17 = and i8 %16, 24
  %18 = select i1 %15, i8 %17, i8 8
  %19 = getelementptr inbounds [12 x i8], ptr %10, i32 0, i32 1
  store i8 %18, ptr %19, align 1
  %20 = trunc i32 %2 to i8
  %21 = getelementptr inbounds [12 x i8], ptr %10, i32 0, i32 2
  store i8 %20, ptr %21, align 1
  %22 = icmp eq ptr %8, null
  %23 = select i1 %22, ptr %11, ptr %8
  %24 = icmp sgt i32 %4, 255
  %25 = icmp slt i32 %4, 4
  %26 = trunc i32 %4 to i8
  %27 = getelementptr inbounds [12 x i8], ptr %10, i32 0, i32 4
  %28 = add i32 %4, -65536
  %29 = icmp ult i32 %28, -65528
  %30 = trunc i32 %4 to i16
  %31 = getelementptr inbounds [12 x i8], ptr %10, i32 0, i32 7
  %32 = call i16 @llvm.bswap.i16(i16 %30) #15
  %33 = getelementptr inbounds %struct.scsi_sense_hdr, ptr %11, i32 0, i32 1
  %34 = getelementptr inbounds %struct.scsi_sense_hdr, ptr %8, i32 0, i32 1
  %35 = select i1 %22, ptr %33, ptr %34
  %36 = getelementptr inbounds %struct.scsi_sense_hdr, ptr %11, i32 0, i32 2
  %37 = getelementptr inbounds %struct.scsi_sense_hdr, ptr %8, i32 0, i32 2
  %38 = select i1 %22, ptr %36, ptr %37
  %39 = getelementptr inbounds %struct.scsi_sense_hdr, ptr %11, i32 0, i32 3
  %40 = getelementptr inbounds %struct.scsi_sense_hdr, ptr %8, i32 0, i32 3
  %41 = select i1 %22, ptr %39, ptr %40
  br label %42

42:                                               ; preds = %92, %9
  %43 = phi i64 [ %94, %92 ], [ %13, %9 ]
  %44 = phi i32 [ %93, %92 ], [ %6, %9 ]
  br label %45

45:                                               ; preds = %82, %42
  %46 = phi i64 [ %43, %42 ], [ %84, %82 ]
  %47 = and i64 %46, 65536
  %48 = icmp ne i64 %47, 0
  %49 = or i1 %24, %48
  br i1 %49, label %50, label %52

50:                                               ; preds = %45
  br i1 %29, label %149, label %51

51:                                               ; preds = %50
  store i8 90, ptr %10, align 1
  store i16 %32, ptr %31, align 1
  br label %54

52:                                               ; preds = %45
  br i1 %25, label %149, label %53

53:                                               ; preds = %52
  store i8 26, ptr %10, align 1
  store i8 %26, ptr %27, align 1
  br label %54

54:                                               ; preds = %53, %51
  %55 = phi i32 [ 8, %51 ], [ 4, %53 ]
  call void @llvm.memset.p0.i32(ptr align 1 %3, i8 0, i32 %4, i1 false)
  %56 = call i32 @__scsi_execute(ptr noundef %0, ptr noundef nonnull %10, i32 noundef 2, ptr noundef %3, i32 noundef %4, ptr noundef null, ptr noundef %23, i32 noundef %5, i32 noundef %6, i64 noundef 0, i32 noundef 0, ptr noundef null) #15
  %57 = icmp slt i32 %56, 0
  br i1 %57, label %149, label %58

58:                                               ; preds = %54
  %59 = and i32 %56, 16711680
  %60 = icmp eq i32 %59, 65536
  br i1 %60, label %67, label %61

61:                                               ; preds = %58
  %62 = trunc i32 %56 to i8
  %63 = and i8 %62, -6
  switch i8 %63, label %64 [
    i8 16, label %95
    i8 0, label %95
  ]

64:                                               ; preds = %61
  %65 = and i32 %56, 254
  %66 = icmp eq i32 %65, 34
  br i1 %66, label %95, label %67

67:                                               ; preds = %64, %58
  %68 = load i8, ptr %23, align 1
  %69 = and i8 %68, 112
  %70 = icmp eq i8 %69, 112
  br i1 %70, label %71, label %149

71:                                               ; preds = %67
  %72 = load i8, ptr %35, align 1
  %73 = icmp eq i8 %72, 5
  br i1 %73, label %74, label %85

74:                                               ; preds = %71
  %75 = load i8, ptr %38, align 1
  %76 = icmp eq i8 %75, 32
  br i1 %76, label %77, label %85

77:                                               ; preds = %74
  %78 = load i8, ptr %41, align 1
  %79 = icmp eq i8 %78, 0
  %80 = select i1 %79, i1 %49, i1 false
  br i1 %80, label %81, label %85

81:                                               ; preds = %77
  br i1 %24, label %149, label %82

82:                                               ; preds = %81
  %83 = load i64, ptr %12, align 4
  %84 = and i64 %83, -65537
  store i64 %84, ptr %12, align 4
  br label %45

85:                                               ; preds = %77, %74, %71
  %86 = and i32 %56, 254
  %87 = icmp eq i32 %86, 2
  br i1 %87, label %88, label %149

88:                                               ; preds = %85
  %89 = icmp eq i8 %72, 6
  %90 = icmp ne i32 %44, 0
  %91 = select i1 %89, i1 %90, i1 false
  br i1 %91, label %92, label %149

92:                                               ; preds = %88
  %93 = add i32 %44, -1
  %94 = load i64, ptr %12, align 4
  br label %42

95:                                               ; preds = %64, %61, %61
  %96 = load i8, ptr %3, align 1
  %97 = icmp eq i8 %96, -122
  br i1 %97, label %98, label %109

98:                                               ; preds = %95
  %99 = getelementptr i8, ptr %3, i32 1
  %100 = load i8, ptr %99, align 1
  %101 = icmp eq i8 %100, 11
  br i1 %101, label %102, label %109

102:                                              ; preds = %98
  switch i32 %2, label %109 [
    i32 8, label %103
    i32 6, label %103
  ]

103:                                              ; preds = %102, %102
  store i32 13, ptr %7, align 4
  %104 = getelementptr inbounds %struct.scsi_mode_data, ptr %7, i32 0, i32 2
  store i8 0, ptr %104, align 2
  %105 = getelementptr inbounds %struct.scsi_mode_data, ptr %7, i32 0, i32 3
  store i8 0, ptr %105, align 1
  %106 = getelementptr inbounds %struct.scsi_mode_data, ptr %7, i32 0, i32 5
  %107 = load i8, ptr %106, align 1
  %108 = and i8 %107, -2
  store i8 %108, ptr %106, align 1
  br label %143

109:                                              ; preds = %102, %98, %95
  br i1 %49, label %110, label %131

110:                                              ; preds = %109
  %111 = load i16, ptr %3, align 1
  %112 = call i16 @llvm.bswap.i16(i16 %111) #15
  %113 = zext i16 %112 to i32
  %114 = add nuw nsw i32 %113, 2
  store i32 %114, ptr %7, align 4
  %115 = getelementptr i8, ptr %3, i32 2
  %116 = load i8, ptr %115, align 1
  %117 = getelementptr inbounds %struct.scsi_mode_data, ptr %7, i32 0, i32 2
  store i8 %116, ptr %117, align 2
  %118 = getelementptr i8, ptr %3, i32 3
  %119 = load i8, ptr %118, align 1
  %120 = getelementptr inbounds %struct.scsi_mode_data, ptr %7, i32 0, i32 3
  store i8 %119, ptr %120, align 1
  %121 = getelementptr i8, ptr %3, i32 4
  %122 = load i8, ptr %121, align 1
  %123 = and i8 %122, 1
  %124 = getelementptr inbounds %struct.scsi_mode_data, ptr %7, i32 0, i32 5
  %125 = load i8, ptr %124, align 1
  %126 = and i8 %125, -2
  %127 = or i8 %126, %123
  store i8 %127, ptr %124, align 1
  %128 = getelementptr i8, ptr %3, i32 6
  %129 = load i16, ptr %128, align 1
  %130 = call i16 @llvm.bswap.i16(i16 %129) #15
  br label %143

131:                                              ; preds = %109
  %132 = zext i8 %96 to i32
  %133 = add nuw nsw i32 %132, 1
  store i32 %133, ptr %7, align 4
  %134 = getelementptr i8, ptr %3, i32 1
  %135 = load i8, ptr %134, align 1
  %136 = getelementptr inbounds %struct.scsi_mode_data, ptr %7, i32 0, i32 2
  store i8 %135, ptr %136, align 2
  %137 = getelementptr i8, ptr %3, i32 2
  %138 = load i8, ptr %137, align 1
  %139 = getelementptr inbounds %struct.scsi_mode_data, ptr %7, i32 0, i32 3
  store i8 %138, ptr %139, align 1
  %140 = getelementptr i8, ptr %3, i32 3
  %141 = load i8, ptr %140, align 1
  %142 = zext i8 %141 to i16
  br label %143

143:                                              ; preds = %131, %110, %103
  %144 = phi i16 [ %130, %110 ], [ %142, %131 ], [ 0, %103 ]
  %145 = phi i32 [ %55, %110 ], [ %55, %131 ], [ 0, %103 ]
  %146 = getelementptr inbounds %struct.scsi_mode_data, ptr %7, i32 0, i32 1
  store i16 %144, ptr %146, align 4
  %147 = trunc i32 %145 to i8
  %148 = getelementptr inbounds %struct.scsi_mode_data, ptr %7, i32 0, i32 4
  store i8 %147, ptr %148, align 4
  br label %149

149:                                              ; preds = %143, %88, %85, %81, %67, %54, %52, %50
  %150 = phi i32 [ 0, %143 ], [ -22, %50 ], [ -22, %52 ], [ %56, %54 ], [ -5, %81 ], [ -5, %67 ], [ -5, %85 ], [ -5, %88 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %11) #15
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %10) #15
  ret i32 %150
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @scsi_test_unit_ready(ptr nocapture noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef %3) #0 {
  %5 = alloca [6 x i8], align 1
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %5) #15
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(6) %5, i8 0, i32 6, i1 false)
  %6 = getelementptr inbounds %struct.scsi_device, ptr %0, i32 0, i32 41
  %7 = icmp eq ptr %3, null
  %8 = getelementptr inbounds %struct.scsi_sense_hdr, ptr %3, i32 0, i32 1
  br label %9

9:                                                ; preds = %30, %4
  %10 = phi i32 [ %2, %4 ], [ %33, %30 ]
  %11 = call i32 @__scsi_execute(ptr noundef %0, ptr noundef nonnull %5, i32 noundef 3, ptr noundef null, i32 noundef 0, ptr noundef null, ptr noundef %3, i32 noundef %1, i32 noundef 1, i64 noundef 0, i32 noundef 0, ptr noundef null) #15
  %12 = load i64, ptr %6, align 4
  %13 = and i64 %12, 1
  %14 = icmp eq i64 %13, 0
  br i1 %14, label %25, label %15

15:                                               ; preds = %9
  br i1 %7, label %36, label %16

16:                                               ; preds = %15
  %17 = load i8, ptr %3, align 1
  %18 = and i8 %17, 112
  %19 = icmp eq i8 %18, 112
  br i1 %19, label %20, label %26

20:                                               ; preds = %16
  %21 = load i8, ptr %8, align 1
  %22 = icmp eq i8 %21, 6
  br i1 %22, label %23, label %26

23:                                               ; preds = %20
  %24 = or i64 %12, 2
  store i64 %24, ptr %6, align 4
  br label %26

25:                                               ; preds = %9
  br i1 %7, label %36, label %26

26:                                               ; preds = %25, %23, %20, %16
  %27 = load i8, ptr %3, align 1
  %28 = and i8 %27, 112
  %29 = icmp eq i8 %28, 112
  br i1 %29, label %30, label %36

30:                                               ; preds = %26
  %31 = load i8, ptr %8, align 1
  %32 = icmp ne i8 %31, 6
  %33 = add i32 %10, -1
  %34 = icmp eq i32 %33, 0
  %35 = select i1 %32, i1 true, i1 %34
  br i1 %35, label %36, label %9

36:                                               ; preds = %30, %26, %25, %15
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %5) #15
  ret i32 %11
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define dso_local i32 @scsi_device_set_state(ptr nocapture noundef %0, i32 noundef %1) #5 {
  %3 = getelementptr inbounds %struct.scsi_device, ptr %0, i32 0, i32 68
  %4 = load i32, ptr %3, align 4
  %5 = icmp eq i32 %4, %1
  br i1 %5, label %19, label %6

6:                                                ; preds = %2
  switch i32 %1, label %17 [
    i32 1, label %7
    i32 2, label %9
    i32 5, label %10
    i32 6, label %11
    i32 7, label %11
    i32 8, label %12
    i32 9, label %13
    i32 3, label %15
    i32 4, label %16
  ]

7:                                                ; preds = %6
  %8 = icmp eq i32 %4, 9
  br i1 %8, label %17, label %19

9:                                                ; preds = %6
  switch i32 %4, label %19 [
    i32 1, label %17
    i32 6, label %17
    i32 7, label %17
    i32 5, label %17
    i32 8, label %17
  ]

10:                                               ; preds = %6
  switch i32 %4, label %19 [
    i32 2, label %17
    i32 6, label %17
    i32 7, label %17
  ]

11:                                               ; preds = %6, %6
  switch i32 %4, label %19 [
    i32 1, label %17
    i32 2, label %17
    i32 5, label %17
    i32 8, label %17
  ]

12:                                               ; preds = %6
  switch i32 %4, label %19 [
    i32 2, label %17
    i32 9, label %17
    i32 5, label %17
    i32 6, label %17
  ]

13:                                               ; preds = %6
  %14 = icmp eq i32 %4, 1
  br i1 %14, label %17, label %19

15:                                               ; preds = %6
  switch i32 %4, label %19 [
    i32 1, label %17
    i32 2, label %17
    i32 5, label %17
    i32 6, label %17
    i32 7, label %17
  ]

16:                                               ; preds = %6
  switch i32 %4, label %19 [
    i32 1, label %17
    i32 2, label %17
    i32 6, label %17
    i32 7, label %17
    i32 3, label %17
    i32 8, label %17
    i32 9, label %17
  ]

17:                                               ; preds = %16, %16, %16, %16, %16, %16, %16, %15, %15, %15, %15, %15, %13, %12, %12, %12, %12, %11, %11, %11, %11, %10, %10, %10, %9, %9, %9, %9, %9, %7, %6
  %18 = getelementptr inbounds %struct.scsi_device, ptr %0, i32 0, i32 43
  store i8 0, ptr %18, align 8
  store i32 %1, ptr %3, align 4
  br label %19

19:                                               ; preds = %17, %16, %15, %13, %12, %11, %10, %9, %7, %2
  %20 = phi i32 [ 0, %17 ], [ 0, %2 ], [ -22, %7 ], [ -22, %9 ], [ -22, %10 ], [ -22, %11 ], [ -22, %12 ], [ -22, %13 ], [ -22, %15 ], [ -22, %16 ]
  ret i32 %20
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @scsi_evt_thread(ptr noundef %0) local_unnamed_addr #0 {
  %2 = alloca [3 x ptr], align 4
  %3 = alloca %struct.list_head, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #15
  store ptr %3, ptr %3, align 8
  %4 = getelementptr inbounds %struct.list_head, ptr %3, i32 0, i32 1
  store ptr %3, ptr %4, align 4
  %5 = getelementptr i8, ptr %0, i32 -232
  %6 = getelementptr i8, ptr %0, i32 -12
  %7 = call i32 @_test_and_clear_bit(i32 noundef 1, ptr noundef %6) #15
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %10, label %9

9:                                                ; preds = %1
  call void @sdev_evt_send_simple(ptr noundef %5, i32 noundef 1, i32 noundef 3264)
  br label %10

10:                                               ; preds = %9, %1
  %11 = call i32 @_test_and_clear_bit(i32 noundef 2, ptr noundef %6) #15
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %14, label %13

13:                                               ; preds = %10
  call void @sdev_evt_send_simple(ptr noundef %5, i32 noundef 2, i32 noundef 3264)
  br label %14

14:                                               ; preds = %13, %10
  %15 = call i32 @_test_and_clear_bit(i32 noundef 3, ptr noundef %6) #15
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %18, label %17

17:                                               ; preds = %14
  call void @sdev_evt_send_simple(ptr noundef %5, i32 noundef 3, i32 noundef 3264)
  br label %18

18:                                               ; preds = %17, %14
  %19 = call i32 @_test_and_clear_bit(i32 noundef 4, ptr noundef %6) #15
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %22, label %21

21:                                               ; preds = %18
  call void @sdev_evt_send_simple(ptr noundef %5, i32 noundef 4, i32 noundef 3264)
  br label %22

22:                                               ; preds = %21, %18
  %23 = call i32 @_test_and_clear_bit(i32 noundef 5, ptr noundef %6) #15
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %26, label %25

25:                                               ; preds = %22
  call void @sdev_evt_send_simple(ptr noundef %5, i32 noundef 5, i32 noundef 3264)
  br label %26

26:                                               ; preds = %25, %22
  %27 = call i32 @_test_and_clear_bit(i32 noundef 6, ptr noundef %6) #15
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %30, label %29

29:                                               ; preds = %26
  call void @sdev_evt_send_simple(ptr noundef %5, i32 noundef 6, i32 noundef 3264)
  br label %30

30:                                               ; preds = %29, %26
  %31 = call i32 @_test_and_clear_bit(i32 noundef 7, ptr noundef %6) #15
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %34, label %33

33:                                               ; preds = %30
  call void @sdev_evt_send_simple(ptr noundef %5, i32 noundef 7, i32 noundef 3264)
  br label %34

34:                                               ; preds = %33, %30
  %35 = call i32 @_test_and_clear_bit(i32 noundef 8, ptr noundef %6) #15
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %38, label %37

37:                                               ; preds = %34
  call void @sdev_evt_send_simple(ptr noundef %5, i32 noundef 8, i32 noundef 3264)
  br label %38

38:                                               ; preds = %37, %34
  %39 = getelementptr i8, ptr %0, i32 -176
  %40 = getelementptr i8, ptr %0, i32 -8
  %41 = getelementptr i8, ptr %0, i32 -4
  %42 = getelementptr i8, ptr %0, i32 32
  br label %43

43:                                               ; preds = %71, %38
  %44 = call i32 @_raw_spin_lock_irqsave(ptr noundef %39) #15
  %45 = load volatile ptr, ptr %40, align 4
  %46 = icmp eq ptr %45, %40
  br i1 %46, label %52, label %47

47:                                               ; preds = %43
  %48 = load ptr, ptr %3, align 8
  %49 = load ptr, ptr %41, align 4
  %50 = getelementptr inbounds %struct.list_head, ptr %45, i32 0, i32 1
  store ptr %3, ptr %50, align 4
  store ptr %45, ptr %3, align 8
  store ptr %48, ptr %49, align 4
  %51 = getelementptr inbounds %struct.list_head, ptr %48, i32 0, i32 1
  store ptr %49, ptr %51, align 4
  store volatile ptr %40, ptr %40, align 4
  store ptr %40, ptr %41, align 4
  br label %52

52:                                               ; preds = %47, %43
  call void @_raw_spin_unlock_irqrestore(ptr noundef %39, i32 noundef %44) #15
  %53 = load volatile ptr, ptr %3, align 8
  %54 = icmp eq ptr %53, %3
  br i1 %54, label %76, label %55

55:                                               ; preds = %71, %52
  %56 = phi ptr [ %57, %71 ], [ %53, %52 ]
  %57 = load ptr, ptr %56, align 4
  %58 = getelementptr i8, ptr %56, i32 -4
  %59 = getelementptr inbounds %struct.list_head, ptr %56, i32 0, i32 1
  %60 = load ptr, ptr %59, align 4
  %61 = getelementptr inbounds %struct.list_head, ptr %57, i32 0, i32 1
  store ptr %60, ptr %61, align 4
  store volatile ptr %57, ptr %60, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %56, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %59, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %2) #15
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(12) %2, i8 0, i32 12, i1 false) #15, !annotation !17
  %62 = load i32, ptr %58, align 4
  switch i32 %62, label %71 [
    i32 1, label %63
    i32 2, label %64
    i32 3, label %65
    i32 4, label %66
    i32 5, label %67
    i32 6, label %68
    i32 7, label %69
    i32 8, label %70
  ]

63:                                               ; preds = %55
  store ptr @.str.17, ptr %2, align 4
  br label %71

64:                                               ; preds = %55
  call void @scsi_rescan_device(ptr noundef %42) #15
  store ptr @.str.18, ptr %2, align 4
  br label %71

65:                                               ; preds = %55
  store ptr @.str.19, ptr %2, align 4
  br label %71

66:                                               ; preds = %55
  store ptr @.str.20, ptr %2, align 4
  br label %71

67:                                               ; preds = %55
  store ptr @.str.21, ptr %2, align 4
  br label %71

68:                                               ; preds = %55
  store ptr @.str.22, ptr %2, align 4
  br label %71

69:                                               ; preds = %55
  store ptr @.str.23, ptr %2, align 4
  br label %71

70:                                               ; preds = %55
  store ptr @.str.24, ptr %2, align 4
  br label %71

71:                                               ; preds = %70, %69, %68, %67, %66, %65, %64, %63, %55
  %72 = phi i32 [ 0, %55 ], [ 1, %70 ], [ 1, %69 ], [ 1, %68 ], [ 1, %67 ], [ 1, %66 ], [ 1, %65 ], [ 1, %64 ], [ 1, %63 ]
  %73 = getelementptr [3 x ptr], ptr %2, i32 0, i32 %72
  store ptr null, ptr %73, align 4
  %74 = call i32 @kobject_uevent_env(ptr noundef %42, i32 noundef 2, ptr noundef nonnull %2) #15
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %2) #15
  call void @kfree(ptr noundef %58) #15
  %75 = icmp eq ptr %57, %3
  br i1 %75, label %43, label %55

76:                                               ; preds = %52
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #15
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @sdev_evt_send_simple(ptr noundef %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = and i32 %2, 17
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %10, label %6, !prof !11

6:                                                ; preds = %3
  %7 = and i32 %2, 1
  %8 = icmp eq i32 %7, 0
  %9 = select i1 %8, i32 1, i32 2
  br label %10

10:                                               ; preds = %6, %3
  %11 = phi i32 [ 0, %3 ], [ %9, %6 ]
  %12 = or i32 %2, 256
  %13 = getelementptr [3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 %11, i32 6
  %14 = load ptr, ptr %13, align 4
  %15 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %14, i32 noundef %12, i32 noundef 12) #17
  %16 = icmp eq ptr %15, null
  br i1 %16, label %17, label %18

17:                                               ; preds = %10
  tail call void (ptr, ptr, ptr, ptr, ...) @sdev_prefix_printk(ptr noundef nonnull @.str.4, ptr noundef %0, ptr noundef null, ptr noundef nonnull @.str.5, i32 noundef %1) #15
  br label %29

18:                                               ; preds = %10
  store i32 %1, ptr %15, align 8
  %19 = getelementptr inbounds %struct.scsi_event, ptr %15, i32 0, i32 1
  store volatile ptr %19, ptr %19, align 4
  %20 = getelementptr inbounds %struct.scsi_event, ptr %15, i32 0, i32 1, i32 1
  store ptr %19, ptr %20, align 8
  %21 = getelementptr inbounds %struct.scsi_device, ptr %0, i32 0, i32 7
  %22 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %21) #15
  %23 = getelementptr inbounds %struct.scsi_device, ptr %0, i32 0, i32 48
  %24 = getelementptr inbounds %struct.scsi_device, ptr %0, i32 0, i32 48, i32 1
  %25 = load ptr, ptr %24, align 4
  store ptr %19, ptr %24, align 4
  store ptr %23, ptr %19, align 4
  store ptr %25, ptr %20, align 8
  store volatile ptr %19, ptr %25, align 4
  %26 = getelementptr inbounds %struct.scsi_device, ptr %0, i32 0, i32 49
  %27 = load ptr, ptr @system_wq, align 4
  %28 = tail call zeroext i1 @queue_work_on(i32 noundef 16, ptr noundef %27, ptr noundef %26) #15
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %21, i32 noundef %22) #15
  br label %29

29:                                               ; preds = %18, %17
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @sdev_evt_send(ptr noundef %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.scsi_device, ptr %0, i32 0, i32 7
  %4 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %3) #15
  %5 = getelementptr inbounds %struct.scsi_event, ptr %1, i32 0, i32 1
  %6 = getelementptr inbounds %struct.scsi_device, ptr %0, i32 0, i32 48
  %7 = getelementptr inbounds %struct.scsi_device, ptr %0, i32 0, i32 48, i32 1
  %8 = load ptr, ptr %7, align 4
  store ptr %5, ptr %7, align 4
  store ptr %6, ptr %5, align 4
  %9 = getelementptr inbounds %struct.scsi_event, ptr %1, i32 0, i32 1, i32 1
  store ptr %8, ptr %9, align 4
  store volatile ptr %5, ptr %8, align 4
  %10 = getelementptr inbounds %struct.scsi_device, ptr %0, i32 0, i32 49
  %11 = load ptr, ptr @system_wq, align 4
  %12 = tail call zeroext i1 @queue_work_on(i32 noundef 16, ptr noundef %11, ptr noundef %10) #15
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %3, i32 noundef %4) #15
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @sdev_evt_alloc(i32 noundef %0, i32 noundef %1) #0 {
  %3 = and i32 %1, 17
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %9, label %5, !prof !11

5:                                                ; preds = %2
  %6 = and i32 %1, 1
  %7 = icmp eq i32 %6, 0
  %8 = select i1 %7, i32 1, i32 2
  br label %9

9:                                                ; preds = %5, %2
  %10 = phi i32 [ 0, %2 ], [ %8, %5 ]
  %11 = or i32 %1, 256
  %12 = getelementptr [3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 %10, i32 6
  %13 = load ptr, ptr %12, align 4
  %14 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %13, i32 noundef %11, i32 noundef 12) #17
  %15 = icmp eq ptr %14, null
  br i1 %15, label %19, label %16

16:                                               ; preds = %9
  store i32 %0, ptr %14, align 8
  %17 = getelementptr inbounds %struct.scsi_event, ptr %14, i32 0, i32 1
  store volatile ptr %17, ptr %17, align 4
  %18 = getelementptr inbounds %struct.scsi_event, ptr %14, i32 0, i32 1, i32 1
  store ptr %17, ptr %18, align 8
  br label %19

19:                                               ; preds = %16, %9
  ret ptr %14
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @sdev_prefix_printk(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @scsi_device_quiesce(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.scsi_device, ptr %0, i32 0, i32 1
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.scsi_device, ptr %0, i32 0, i32 69
  %5 = load ptr, ptr %4, align 8
  %6 = icmp eq ptr %5, null
  %7 = tail call ptr @llvm.thread.pointer() #15
  br i1 %6, label %15, label %8

8:                                                ; preds = %1
  %9 = icmp ne ptr %5, %7
  %10 = load i1, ptr @scsi_device_quiesce.__already_done, align 1
  %11 = xor i1 %10, true
  %12 = select i1 %9, i1 %11, i1 false
  br i1 %12, label %13, label %15, !prof !9

13:                                               ; preds = %8
  store i1 true, ptr @scsi_device_quiesce.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 2625, i32 noundef 9, ptr noundef null) #15
  %14 = load ptr, ptr %4, align 8
  br label %15

15:                                               ; preds = %13, %8, %1
  %16 = phi ptr [ %14, %13 ], [ %5, %8 ], [ null, %1 ]
  %17 = icmp eq ptr %16, %7
  br i1 %17, label %28, label %18

18:                                               ; preds = %15
  tail call void @blk_set_pm_only(ptr noundef %3) #15
  tail call void @blk_mq_freeze_queue(ptr noundef %3) #15
  tail call void @synchronize_rcu() #15
  tail call void @blk_mq_unfreeze_queue(ptr noundef %3) #15
  %19 = getelementptr inbounds %struct.scsi_device, ptr %0, i32 0, i32 67
  tail call void @mutex_lock(ptr noundef %19) #15
  %20 = getelementptr inbounds %struct.scsi_device, ptr %0, i32 0, i32 68
  %21 = load i32, ptr %20, align 4
  switch i32 %21, label %25 [
    i32 5, label %24
    i32 2, label %22
    i32 6, label %22
    i32 7, label %22
  ]

22:                                               ; preds = %18, %18, %18
  %23 = getelementptr inbounds %struct.scsi_device, ptr %0, i32 0, i32 43
  store i8 0, ptr %23, align 8
  store i32 5, ptr %20, align 4
  br label %24

24:                                               ; preds = %22, %18
  store ptr %7, ptr %4, align 8
  br label %26

25:                                               ; preds = %18
  tail call void @blk_clear_pm_only(ptr noundef %3) #15
  br label %26

26:                                               ; preds = %25, %24
  %27 = phi i32 [ -22, %25 ], [ 0, %24 ]
  tail call void @mutex_unlock(ptr noundef %19) #15
  br label %28

28:                                               ; preds = %26, %15
  %29 = phi i32 [ %27, %26 ], [ 0, %15 ]
  ret i32 %29
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @blk_set_pm_only(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @blk_mq_freeze_queue(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @synchronize_rcu() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @blk_mq_unfreeze_queue(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @blk_clear_pm_only(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @scsi_device_resume(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.scsi_device, ptr %0, i32 0, i32 67
  tail call void @mutex_lock(ptr noundef %2) #15
  %3 = getelementptr inbounds %struct.scsi_device, ptr %0, i32 0, i32 68
  %4 = load i32, ptr %3, align 4
  %5 = icmp eq i32 %4, 5
  br i1 %5, label %6, label %8

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.scsi_device, ptr %0, i32 0, i32 43
  store i8 0, ptr %7, align 8
  store i32 2, ptr %3, align 4
  br label %8

8:                                                ; preds = %6, %1
  %9 = getelementptr inbounds %struct.scsi_device, ptr %0, i32 0, i32 69
  %10 = load ptr, ptr %9, align 8
  %11 = icmp eq ptr %10, null
  br i1 %11, label %15, label %12

12:                                               ; preds = %8
  store ptr null, ptr %9, align 8
  %13 = getelementptr inbounds %struct.scsi_device, ptr %0, i32 0, i32 1
  %14 = load ptr, ptr %13, align 4
  tail call void @blk_clear_pm_only(ptr noundef %14) #15
  br label %15

15:                                               ; preds = %12, %8
  tail call void @mutex_unlock(ptr noundef %2) #15
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @scsi_target_quiesce(ptr noundef %0) #0 {
  tail call void @starget_for_each_device(ptr noundef %0, ptr noundef null, ptr noundef nonnull @device_quiesce_fn) #15
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @starget_for_each_device(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @device_quiesce_fn(ptr noundef %0, ptr nocapture noundef readnone %1) #0 {
  %3 = tail call i32 @scsi_device_quiesce(ptr noundef %0)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @scsi_target_resume(ptr noundef %0) #0 {
  tail call void @starget_for_each_device(ptr noundef %0, ptr noundef null, ptr noundef nonnull @device_resume_fn) #15
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @device_resume_fn(ptr noundef %0, ptr nocapture noundef readnone %1) #0 {
  %3 = getelementptr inbounds %struct.scsi_device, ptr %0, i32 0, i32 67
  tail call void @mutex_lock(ptr noundef %3) #15
  %4 = getelementptr inbounds %struct.scsi_device, ptr %0, i32 0, i32 68
  %5 = load i32, ptr %4, align 4
  %6 = icmp eq i32 %5, 5
  br i1 %6, label %7, label %9

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.scsi_device, ptr %0, i32 0, i32 43
  store i8 0, ptr %8, align 8
  store i32 2, ptr %4, align 4
  br label %9

9:                                                ; preds = %7, %2
  %10 = getelementptr inbounds %struct.scsi_device, ptr %0, i32 0, i32 69
  %11 = load ptr, ptr %10, align 8
  %12 = icmp eq ptr %11, null
  br i1 %12, label %16, label %13

13:                                               ; preds = %9
  store ptr null, ptr %10, align 8
  %14 = getelementptr inbounds %struct.scsi_device, ptr %0, i32 0, i32 1
  %15 = load ptr, ptr %14, align 4
  tail call void @blk_clear_pm_only(ptr noundef %15) #15
  br label %16

16:                                               ; preds = %13, %9
  tail call void @mutex_unlock(ptr noundef %3) #15
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @scsi_start_queue(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.scsi_device, ptr %0, i32 0, i32 42
  tail call void asm sideeffect "dmb ish", "~{memory}"() #15, !srcloc !33
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %2) #15, !srcloc !13
  br label %3

3:                                                ; preds = %3, %1
  %4 = tail call { i32, i32 } asm sideeffect "@ __cmpxchg4\0A\09ldrex\09$1, [$2]\0A\09mov\09$0, #0\0A\09teq\09$1, $3\0A\09strexeq $0, $4, [$2]\0A", "=&r,=&r,r,Ir,r,~{memory},~{cc}"(ptr %2, i32 1, i32 0) #15, !srcloc !34
  %5 = extractvalue { i32, i32 } %4, 0
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %3

7:                                                ; preds = %3
  %8 = extractvalue { i32, i32 } %4, 1
  tail call void asm sideeffect "dmb ish", "~{memory}"() #15, !srcloc !35
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %13, label %10

10:                                               ; preds = %7
  %11 = getelementptr inbounds %struct.scsi_device, ptr %0, i32 0, i32 1
  %12 = load ptr, ptr %11, align 4
  tail call void @blk_mq_unquiesce_queue(ptr noundef %12) #15
  br label %13

13:                                               ; preds = %10, %7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @blk_mq_unquiesce_queue(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @scsi_internal_device_block_nowait(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.scsi_device, ptr %0, i32 0, i32 68
  %3 = load i32, ptr %2, align 4
  switch i32 %3, label %20 [
    i32 8, label %8
    i32 2, label %5
    i32 9, label %5
    i32 5, label %5
    i32 6, label %5
    i32 1, label %4
  ]

4:                                                ; preds = %1
  br label %5

5:                                                ; preds = %4, %1, %1, %1, %1
  %6 = phi i32 [ 9, %4 ], [ 8, %1 ], [ 8, %1 ], [ 8, %1 ], [ 8, %1 ]
  %7 = getelementptr inbounds %struct.scsi_device, ptr %0, i32 0, i32 43
  store i8 0, ptr %7, align 8
  store i32 %6, ptr %2, align 4
  br label %8

8:                                                ; preds = %5, %1
  %9 = getelementptr inbounds %struct.scsi_device, ptr %0, i32 0, i32 42
  tail call void asm sideeffect "dmb ish", "~{memory}"() #15, !srcloc !36
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %9) #15, !srcloc !13
  br label %10

10:                                               ; preds = %10, %8
  %11 = tail call { i32, i32 } asm sideeffect "@ __cmpxchg4\0A\09ldrex\09$1, [$2]\0A\09mov\09$0, #0\0A\09teq\09$1, $3\0A\09strexeq $0, $4, [$2]\0A", "=&r,=&r,r,Ir,r,~{memory},~{cc}"(ptr %9, i32 0, i32 1) #15, !srcloc !34
  %12 = extractvalue { i32, i32 } %11, 0
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %10

14:                                               ; preds = %10
  %15 = extractvalue { i32, i32 } %11, 1
  tail call void asm sideeffect "dmb ish", "~{memory}"() #15, !srcloc !37
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %14
  %18 = getelementptr inbounds %struct.scsi_device, ptr %0, i32 0, i32 1
  %19 = load ptr, ptr %18, align 4
  tail call void @blk_mq_quiesce_queue_nowait(ptr noundef %19) #15
  br label %20

20:                                               ; preds = %17, %14, %1
  %21 = phi i32 [ -22, %1 ], [ 0, %14 ], [ 0, %17 ]
  ret i32 %21
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @scsi_internal_device_unblock_nowait(ptr noundef %0, i32 noundef %1) #0 {
  switch i32 %1, label %24 [
    i32 2, label %3
    i32 7, label %3
  ]

3:                                                ; preds = %2, %2
  %4 = getelementptr inbounds %struct.scsi_device, ptr %0, i32 0, i32 68
  %5 = load i32, ptr %4, align 4
  switch i32 %5, label %24 [
    i32 8, label %10
    i32 7, label %10
    i32 9, label %6
    i32 3, label %12
    i32 6, label %12
  ]

6:                                                ; preds = %3
  %7 = and i32 %1, -2
  %8 = icmp eq i32 %7, 6
  %9 = select i1 %8, i32 %1, i32 1
  br label %10

10:                                               ; preds = %6, %3, %3
  %11 = phi i32 [ %1, %3 ], [ %1, %3 ], [ %9, %6 ]
  store i32 %11, ptr %4, align 4
  br label %12

12:                                               ; preds = %10, %3, %3
  %13 = getelementptr inbounds %struct.scsi_device, ptr %0, i32 0, i32 42
  tail call void asm sideeffect "dmb ish", "~{memory}"() #15, !srcloc !33
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %13) #15, !srcloc !13
  br label %14

14:                                               ; preds = %14, %12
  %15 = tail call { i32, i32 } asm sideeffect "@ __cmpxchg4\0A\09ldrex\09$1, [$2]\0A\09mov\09$0, #0\0A\09teq\09$1, $3\0A\09strexeq $0, $4, [$2]\0A", "=&r,=&r,r,Ir,r,~{memory},~{cc}"(ptr %13, i32 1, i32 0) #15, !srcloc !34
  %16 = extractvalue { i32, i32 } %15, 0
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %14

18:                                               ; preds = %14
  %19 = extractvalue { i32, i32 } %15, 1
  tail call void asm sideeffect "dmb ish", "~{memory}"() #15, !srcloc !35
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %24, label %21

21:                                               ; preds = %18
  %22 = getelementptr inbounds %struct.scsi_device, ptr %0, i32 0, i32 1
  %23 = load ptr, ptr %22, align 4
  tail call void @blk_mq_unquiesce_queue(ptr noundef %23) #15
  br label %24

24:                                               ; preds = %21, %18, %3, %2
  %25 = phi i32 [ -22, %2 ], [ -22, %3 ], [ 0, %18 ], [ 0, %21 ]
  ret i32 %25
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @scsi_target_block(ptr noundef %0) #0 {
  %2 = tail call i32 @scsi_is_target_device(ptr noundef %0) #15
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %6, label %4

4:                                                ; preds = %1
  %5 = getelementptr i8, ptr %0, i32 -24
  tail call void @starget_for_each_device(ptr noundef %5, ptr noundef null, ptr noundef nonnull @device_block) #15
  br label %8

6:                                                ; preds = %1
  %7 = tail call i32 @device_for_each_child(ptr noundef %0, ptr noundef null, ptr noundef nonnull @target_block) #15
  br label %8

8:                                                ; preds = %6, %4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @scsi_is_target_device(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @device_block(ptr noundef %0, ptr nocapture noundef readnone %1) #0 {
  %3 = getelementptr inbounds %struct.scsi_device, ptr %0, i32 0, i32 67
  tail call void @mutex_lock(ptr noundef %3) #15
  %4 = getelementptr inbounds %struct.scsi_device, ptr %0, i32 0, i32 68
  %5 = load i32, ptr %4, align 4
  switch i32 %5, label %23 [
    i32 8, label %10
    i32 2, label %7
    i32 9, label %7
    i32 5, label %7
    i32 6, label %7
    i32 1, label %6
  ]

6:                                                ; preds = %2
  br label %7

7:                                                ; preds = %6, %2, %2, %2, %2
  %8 = phi i32 [ 9, %6 ], [ 8, %2 ], [ 8, %2 ], [ 8, %2 ], [ 8, %2 ]
  %9 = getelementptr inbounds %struct.scsi_device, ptr %0, i32 0, i32 43
  store i8 0, ptr %9, align 8
  store i32 %8, ptr %4, align 4
  br label %10

10:                                               ; preds = %7, %2
  %11 = getelementptr inbounds %struct.scsi_device, ptr %0, i32 0, i32 42
  tail call void asm sideeffect "dmb ish", "~{memory}"() #15, !srcloc !36
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %11) #15, !srcloc !13
  br label %12

12:                                               ; preds = %12, %10
  %13 = tail call { i32, i32 } asm sideeffect "@ __cmpxchg4\0A\09ldrex\09$1, [$2]\0A\09mov\09$0, #0\0A\09teq\09$1, $3\0A\09strexeq $0, $4, [$2]\0A", "=&r,=&r,r,Ir,r,~{memory},~{cc}"(ptr %11, i32 0, i32 1) #15, !srcloc !34
  %14 = extractvalue { i32, i32 } %13, 0
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %12

16:                                               ; preds = %12
  %17 = extractvalue { i32, i32 } %13, 1
  tail call void asm sideeffect "dmb ish", "~{memory}"() #15, !srcloc !37
  %18 = icmp eq i32 %17, 0
  %19 = getelementptr inbounds %struct.scsi_device, ptr %0, i32 0, i32 1
  %20 = load ptr, ptr %19, align 4
  br i1 %18, label %21, label %22

21:                                               ; preds = %16
  tail call void @blk_mq_quiesce_queue(ptr noundef %20) #15
  br label %23

22:                                               ; preds = %16
  tail call void @blk_mq_wait_quiesce_done(ptr noundef %20) #15
  br label %23

23:                                               ; preds = %22, %21, %2
  %24 = phi i1 [ true, %2 ], [ false, %21 ], [ false, %22 ]
  %25 = phi i32 [ -22, %2 ], [ 0, %21 ], [ 0, %22 ]
  tail call void @mutex_unlock(ptr noundef %3) #15
  %26 = load i1, ptr @device_block.__already_done, align 1
  %27 = xor i1 %26, true
  %28 = select i1 %24, i1 %27, i1 false
  br i1 %28, label %29, label %38, !prof !9

29:                                               ; preds = %23
  store i1 true, ptr @device_block.__already_done, align 1
  %30 = getelementptr inbounds %struct.scsi_device, ptr %0, i32 0, i32 54, i32 3
  %31 = load ptr, ptr %30, align 4
  %32 = icmp eq ptr %31, null
  br i1 %32, label %33, label %36

33:                                               ; preds = %29
  %34 = getelementptr inbounds %struct.scsi_device, ptr %0, i32 0, i32 54
  %35 = load ptr, ptr %34, align 4
  br label %36

36:                                               ; preds = %33, %29
  %37 = phi ptr [ %35, %33 ], [ %31, %29 ]
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 2885, i32 noundef 9, ptr noundef nonnull @.str.25, ptr noundef %37, i32 noundef %25) #15
  br label %38

38:                                               ; preds = %36, %23
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_for_each_child(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @target_block(ptr noundef %0, ptr nocapture noundef readnone %1) #0 {
  %3 = tail call i32 @scsi_is_target_device(ptr noundef %0) #15
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %7, label %5

5:                                                ; preds = %2
  %6 = getelementptr i8, ptr %0, i32 -24
  tail call void @starget_for_each_device(ptr noundef %6, ptr noundef null, ptr noundef nonnull @device_block) #15
  br label %7

7:                                                ; preds = %5, %2
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @scsi_target_unblock(ptr noundef %0, i32 noundef %1) #0 {
  %3 = alloca i32, align 4
  store i32 %1, ptr %3, align 4
  %4 = tail call i32 @scsi_is_target_device(ptr noundef %0) #15
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %8, label %6

6:                                                ; preds = %2
  %7 = getelementptr i8, ptr %0, i32 -24
  call void @starget_for_each_device(ptr noundef %7, ptr noundef nonnull %3, ptr noundef nonnull @device_unblock) #15
  br label %10

8:                                                ; preds = %2
  %9 = call i32 @device_for_each_child(ptr noundef %0, ptr noundef nonnull %3, ptr noundef nonnull @target_unblock) #15
  br label %10

10:                                               ; preds = %8, %6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @device_unblock(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = load i32, ptr %1, align 4
  %4 = tail call fastcc i32 @scsi_internal_device_unblock(ptr noundef %0, i32 noundef %3)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @target_unblock(ptr noundef %0, ptr noundef %1) #0 {
  %3 = tail call i32 @scsi_is_target_device(ptr noundef %0) #15
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %7, label %5

5:                                                ; preds = %2
  %6 = getelementptr i8, ptr %0, i32 -24
  tail call void @starget_for_each_device(ptr noundef %6, ptr noundef %1, ptr noundef nonnull @device_unblock) #15
  br label %7

7:                                                ; preds = %5, %2
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @scsi_host_block(ptr noundef %0) #0 {
  %2 = tail call ptr @__scsi_iterate_devices(ptr noundef %0, ptr noundef null) #15
  %3 = icmp eq ptr %2, null
  br i1 %3, label %29, label %4

4:                                                ; preds = %26, %1
  %5 = phi ptr [ %27, %26 ], [ %2, %1 ]
  %6 = getelementptr inbounds %struct.scsi_device, ptr %5, i32 0, i32 67
  tail call void @mutex_lock(ptr noundef %6) #15
  %7 = getelementptr inbounds %struct.scsi_device, ptr %5, i32 0, i32 68
  %8 = load i32, ptr %7, align 4
  switch i32 %8, label %25 [
    i32 8, label %13
    i32 2, label %10
    i32 9, label %10
    i32 5, label %10
    i32 6, label %10
    i32 1, label %9
  ]

9:                                                ; preds = %4
  br label %10

10:                                               ; preds = %9, %4, %4, %4, %4
  %11 = phi i32 [ 9, %9 ], [ 8, %4 ], [ 8, %4 ], [ 8, %4 ], [ 8, %4 ]
  %12 = getelementptr inbounds %struct.scsi_device, ptr %5, i32 0, i32 43
  store i8 0, ptr %12, align 8
  store i32 %11, ptr %7, align 4
  br label %13

13:                                               ; preds = %10, %4
  %14 = getelementptr inbounds %struct.scsi_device, ptr %5, i32 0, i32 42
  tail call void asm sideeffect "dmb ish", "~{memory}"() #15, !srcloc !36
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %14) #15, !srcloc !13
  br label %15

15:                                               ; preds = %15, %13
  %16 = tail call { i32, i32 } asm sideeffect "@ __cmpxchg4\0A\09ldrex\09$1, [$2]\0A\09mov\09$0, #0\0A\09teq\09$1, $3\0A\09strexeq $0, $4, [$2]\0A", "=&r,=&r,r,Ir,r,~{memory},~{cc}"(ptr %14, i32 0, i32 1) #15, !srcloc !34
  %17 = extractvalue { i32, i32 } %16, 0
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %15

19:                                               ; preds = %15
  %20 = extractvalue { i32, i32 } %16, 1
  tail call void asm sideeffect "dmb ish", "~{memory}"() #15, !srcloc !37
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %26

22:                                               ; preds = %19
  %23 = getelementptr inbounds %struct.scsi_device, ptr %5, i32 0, i32 1
  %24 = load ptr, ptr %23, align 4
  tail call void @blk_mq_quiesce_queue_nowait(ptr noundef %24) #15
  br label %26

25:                                               ; preds = %4
  tail call void @mutex_unlock(ptr noundef %6) #15
  tail call void @scsi_device_put(ptr noundef nonnull %5) #15
  br label %29

26:                                               ; preds = %22, %19
  tail call void @mutex_unlock(ptr noundef %6) #15
  %27 = tail call ptr @__scsi_iterate_devices(ptr noundef %0, ptr noundef nonnull %5) #15
  %28 = icmp eq ptr %27, null
  br i1 %28, label %29, label %4

29:                                               ; preds = %26, %25, %1
  %30 = phi i1 [ false, %25 ], [ true, %1 ], [ true, %26 ]
  %31 = phi i32 [ -22, %25 ], [ 0, %1 ], [ 0, %26 ]
  %32 = getelementptr inbounds %struct.Scsi_Host, ptr %0, i32 0, i32 13, i32 9
  %33 = load i32, ptr %32, align 4
  %34 = and i32 %33, 32
  %35 = icmp ne i32 %34, 0
  %36 = load i1, ptr @scsi_host_block.__already_done, align 1
  %37 = xor i1 %36, true
  %38 = select i1 %35, i1 %37, i1 false
  br i1 %38, label %39, label %40, !prof !9

39:                                               ; preds = %29
  store i1 true, ptr @scsi_host_block.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 2958, i32 noundef 9, ptr noundef null) #15
  br label %40

40:                                               ; preds = %39, %29
  br i1 %30, label %41, label %42

41:                                               ; preds = %40
  tail call void @synchronize_rcu() #15
  br label %42

42:                                               ; preds = %41, %40
  ret i32 %31
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @scsi_device_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @scsi_host_unblock(ptr noundef %0, i32 noundef %1) #0 {
  %3 = tail call ptr @__scsi_iterate_devices(ptr noundef %0, ptr noundef null) #15
  %4 = icmp eq ptr %3, null
  br i1 %4, label %13, label %5

5:                                                ; preds = %10, %2
  %6 = phi ptr [ %11, %10 ], [ %3, %2 ]
  %7 = tail call fastcc i32 @scsi_internal_device_unblock(ptr noundef nonnull %6, i32 noundef %1)
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %10, label %9

9:                                                ; preds = %5
  tail call void @scsi_device_put(ptr noundef nonnull %6) #15
  br label %13

10:                                               ; preds = %5
  %11 = tail call ptr @__scsi_iterate_devices(ptr noundef %0, ptr noundef nonnull %6) #15
  %12 = icmp eq ptr %11, null
  br i1 %12, label %13, label %5

13:                                               ; preds = %10, %9, %2
  %14 = phi i32 [ %7, %9 ], [ 0, %2 ], [ 0, %10 ]
  ret i32 %14
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @scsi_internal_device_unblock(ptr noundef %0, i32 noundef %1) unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.scsi_device, ptr %0, i32 0, i32 67
  tail call void @mutex_lock(ptr noundef %3) #15
  switch i32 %1, label %25 [
    i32 2, label %4
    i32 7, label %4
  ]

4:                                                ; preds = %2, %2
  %5 = getelementptr inbounds %struct.scsi_device, ptr %0, i32 0, i32 68
  %6 = load i32, ptr %5, align 4
  switch i32 %6, label %25 [
    i32 8, label %11
    i32 7, label %11
    i32 9, label %7
    i32 3, label %13
    i32 6, label %13
  ]

7:                                                ; preds = %4
  %8 = and i32 %1, -2
  %9 = icmp eq i32 %8, 6
  %10 = select i1 %9, i32 %1, i32 1
  br label %11

11:                                               ; preds = %7, %4, %4
  %12 = phi i32 [ %1, %4 ], [ %1, %4 ], [ %10, %7 ]
  store i32 %12, ptr %5, align 4
  br label %13

13:                                               ; preds = %11, %4, %4
  %14 = getelementptr inbounds %struct.scsi_device, ptr %0, i32 0, i32 42
  tail call void asm sideeffect "dmb ish", "~{memory}"() #15, !srcloc !33
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %14) #15, !srcloc !13
  br label %15

15:                                               ; preds = %15, %13
  %16 = tail call { i32, i32 } asm sideeffect "@ __cmpxchg4\0A\09ldrex\09$1, [$2]\0A\09mov\09$0, #0\0A\09teq\09$1, $3\0A\09strexeq $0, $4, [$2]\0A", "=&r,=&r,r,Ir,r,~{memory},~{cc}"(ptr %14, i32 1, i32 0) #15, !srcloc !34
  %17 = extractvalue { i32, i32 } %16, 0
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %15

19:                                               ; preds = %15
  %20 = extractvalue { i32, i32 } %16, 1
  tail call void asm sideeffect "dmb ish", "~{memory}"() #15, !srcloc !35
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %25, label %22

22:                                               ; preds = %19
  %23 = getelementptr inbounds %struct.scsi_device, ptr %0, i32 0, i32 1
  %24 = load ptr, ptr %23, align 4
  tail call void @blk_mq_unquiesce_queue(ptr noundef %24) #15
  br label %25

25:                                               ; preds = %22, %19, %4, %2
  %26 = phi i32 [ -22, %2 ], [ -22, %4 ], [ 0, %19 ], [ 0, %22 ]
  tail call void @mutex_unlock(ptr noundef %3) #15
  ret i32 %26
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @scsi_kmap_atomic_sg(ptr noundef %0, i32 noundef %1, ptr nocapture noundef %2, ptr nocapture noundef %3) #0 {
  %5 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #15, !srcloc !38
  %6 = and i32 %5, 128
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %9, !prof !9

8:                                                ; preds = %4
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 3001, i32 noundef 9, ptr noundef null) #15
  br label %9

9:                                                ; preds = %8, %4
  %10 = icmp sgt i32 %1, 0
  br i1 %10, label %11, label %24

11:                                               ; preds = %20, %9
  %12 = phi i32 [ %21, %20 ], [ 0, %9 ]
  %13 = phi i32 [ %17, %20 ], [ 0, %9 ]
  %14 = phi ptr [ %22, %20 ], [ %0, %9 ]
  %15 = getelementptr inbounds %struct.scatterlist, ptr %14, i32 0, i32 2
  %16 = load i32, ptr %15, align 4
  %17 = add i32 %16, %13
  %18 = load i32, ptr %2, align 4
  %19 = icmp ugt i32 %17, %18
  br i1 %19, label %24, label %20

20:                                               ; preds = %11
  %21 = add nuw nsw i32 %12, 1
  %22 = tail call ptr @sg_next(ptr noundef %14) #15
  %23 = icmp eq i32 %21, %1
  br i1 %23, label %30, label %11

24:                                               ; preds = %11, %9
  %25 = phi ptr [ %0, %9 ], [ %14, %11 ]
  %26 = phi i32 [ 0, %9 ], [ %12, %11 ]
  %27 = phi i32 [ 0, %9 ], [ %13, %11 ]
  %28 = phi i32 [ 0, %9 ], [ %17, %11 ]
  %29 = icmp eq i32 %26, %1
  br i1 %29, label %30, label %34, !prof !9

30:                                               ; preds = %24, %20
  %31 = phi i32 [ %28, %24 ], [ %17, %20 ]
  %32 = load i32, ptr %2, align 4
  %33 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef nonnull @__func__.scsi_kmap_atomic_sg, i32 noundef %31, i32 noundef %32, i32 noundef %1) #18
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 3014, i32 noundef 9, ptr noundef null) #15
  br label %58

34:                                               ; preds = %24
  %35 = load i32, ptr %2, align 4
  %36 = sub i32 %35, %27
  %37 = getelementptr inbounds %struct.scatterlist, ptr %25, i32 0, i32 1
  %38 = load i32, ptr %37, align 4
  %39 = add i32 %36, %38
  store i32 %39, ptr %2, align 4
  %40 = load i32, ptr %25, align 4
  %41 = and i32 %40, -4
  %42 = inttoptr i32 %41 to ptr
  %43 = lshr i32 %39, 12
  %44 = getelementptr %struct.page, ptr %42, i32 %43
  %45 = and i32 %39, 4095
  store i32 %45, ptr %2, align 4
  %46 = sub nuw nsw i32 4096, %45
  %47 = load i32, ptr %3, align 4
  %48 = icmp ugt i32 %47, %46
  br i1 %48, label %49, label %50

49:                                               ; preds = %34
  store i32 %46, ptr %3, align 4
  br label %50

50:                                               ; preds = %49, %34
  %51 = load i32, ptr @pgprot_kernel, align 4
  %52 = or i32 %51, 512
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !39
  %53 = tail call ptr @llvm.thread.pointer() #15
  %54 = getelementptr inbounds %struct.task_struct, ptr %53, i32 0, i32 149
  %55 = load i32, ptr %54, align 8
  %56 = add i32 %55, 1
  store i32 %56, ptr %54, align 8
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !40
  %57 = tail call ptr @__kmap_local_page_prot(ptr noundef %44, i32 noundef %52) #15
  br label %58

58:                                               ; preds = %50, %30
  %59 = phi ptr [ null, %30 ], [ %57, %50 ]
  ret ptr %59
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @scsi_kunmap_atomic_sg(ptr noundef %0) #0 {
  tail call void @kunmap_local_indexed(ptr noundef %0) #15
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !41
  %2 = tail call ptr @llvm.thread.pointer() #15
  %3 = getelementptr inbounds %struct.task_struct, ptr %2, i32 0, i32 149
  %4 = load i32, ptr %3, align 8
  %5 = add i32 %4, -1
  store i32 %5, ptr %3, align 8
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !42
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @sdev_disable_disk_events(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.scsi_device, ptr %0, i32 0, i32 45
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %2) #15, !srcloc !13
  %3 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %2, ptr %2, i32 1, ptr elementtype(i32) %2) #15, !srcloc !20
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @sdev_enable_disk_events(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.scsi_device, ptr %0, i32 0, i32 45
  %3 = load volatile i32, ptr %2, align 4
  %4 = icmp slt i32 %3, 1
  %5 = load i1, ptr @sdev_enable_disk_events.__already_done, align 1
  %6 = xor i1 %5, true
  %7 = select i1 %4, i1 %6, i1 false
  br i1 %7, label %8, label %9, !prof !9

8:                                                ; preds = %1
  store i1 true, ptr @sdev_enable_disk_events.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 3052, i32 noundef 9, ptr noundef null) #15
  br label %9

9:                                                ; preds = %8, %1
  br i1 %4, label %12, label %10

10:                                               ; preds = %9
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %2) #15, !srcloc !13
  %11 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %2, ptr %2, i32 1, ptr elementtype(i32) %2) #15, !srcloc !14
  br label %12

12:                                               ; preds = %10, %9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @scsi_vpd_lun_id(ptr noundef %0, ptr nocapture noundef writeonly %1, i32 noundef %2) #0 {
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !10
  %4 = getelementptr inbounds %struct.scsi_device, ptr %0, i32 0, i32 34
  %5 = load volatile ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %7, label %8

7:                                                ; preds = %3
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !12
  br label %110

8:                                                ; preds = %3
  %9 = icmp ult i32 %2, 21
  br i1 %9, label %10, label %11

10:                                               ; preds = %8
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !12
  br label %110

11:                                               ; preds = %8
  tail call void @llvm.memset.p0.i32(ptr align 1 %1, i8 0, i32 %2, i1 false)
  %12 = getelementptr inbounds %struct.scsi_vpd, ptr %5, i32 0, i32 2
  %13 = getelementptr %struct.scsi_vpd, ptr %5, i32 1, i32 0, i32 1
  %14 = getelementptr inbounds %struct.scsi_vpd, ptr %5, i32 0, i32 1
  %15 = load i32, ptr %14, align 4
  %16 = getelementptr i8, ptr %12, i32 %15
  %17 = icmp ult ptr %13, %16
  br i1 %17, label %18, label %108

18:                                               ; preds = %11
  %19 = trunc i32 %2 to i8
  %20 = add i8 %19, -1
  %21 = add i8 %19, -4
  br label %22

22:                                               ; preds = %96, %18
  %23 = phi i8 [ 0, %18 ], [ %99, %96 ]
  %24 = phi i8 [ 0, %18 ], [ %98, %96 ]
  %25 = phi i32 [ -22, %18 ], [ %97, %96 ]
  %26 = phi ptr [ %13, %18 ], [ %104, %96 ]
  %27 = getelementptr i8, ptr %26, i32 1
  %28 = load i8, ptr %27, align 1
  %29 = zext i8 %28 to i32
  %30 = and i32 %29, 48
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %32, label %96

32:                                               ; preds = %22
  %33 = getelementptr i8, ptr %26, i32 3
  %34 = load i8, ptr %33, align 1
  %35 = icmp eq i8 %34, 0
  br i1 %35, label %96, label %36

36:                                               ; preds = %32
  %37 = and i32 %29, 15
  switch i32 %37, label %96 [
    i32 8, label %53
    i32 3, label %38
    i32 2, label %45
    i32 1, label %48
  ]

38:                                               ; preds = %36
  %39 = getelementptr i8, ptr %26, i32 4
  %40 = load i8, ptr %39, align 1
  %41 = lshr i8 %40, 4
  %42 = zext i8 %41 to i32
  %43 = add nsw i32 %42, -3
  %44 = icmp ult i32 %43, 4
  br i1 %44, label %49, label %96

45:                                               ; preds = %36
  switch i8 %34, label %96 [
    i8 16, label %53
    i8 12, label %46
    i8 8, label %47
  ]

46:                                               ; preds = %45
  br label %53

47:                                               ; preds = %45
  br label %53

48:                                               ; preds = %36
  br label %53

49:                                               ; preds = %38
  %50 = shl nsw i32 %43, 3
  %51 = lshr i32 134546433, %50
  %52 = trunc i32 %51 to i8
  br label %53

53:                                               ; preds = %49, %48, %47, %46, %45, %36
  %54 = phi i8 [ 1, %48 ], [ 3, %47 ], [ 6, %46 ], [ 9, %36 ], [ 7, %45 ], [ %52, %49 ]
  %55 = icmp ugt i8 %23, %54
  br i1 %55, label %96, label %56

56:                                               ; preds = %53
  %57 = and i8 %28, 15
  %58 = zext i8 %57 to i32
  switch i32 %58, label %96 [
    i32 1, label %59
    i32 2, label %69
    i32 3, label %77
    i32 8, label %83
  ]

59:                                               ; preds = %56
  %60 = icmp ugt i8 %24, %34
  br i1 %60, label %96, label %61

61:                                               ; preds = %59
  %62 = zext i8 %34 to i32
  %63 = add nuw nsw i32 %62, 4
  %64 = icmp ugt i32 %63, %2
  %65 = select i1 %64, i8 %21, i8 %34
  %66 = getelementptr i8, ptr %26, i32 4
  %67 = zext i8 %65 to i32
  %68 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %1, i32 noundef %2, ptr noundef nonnull @.str.7, i32 noundef %67, ptr noundef %66)
  br label %96

69:                                               ; preds = %56
  %70 = getelementptr i8, ptr %26, i32 4
  switch i8 %34, label %96 [
    i8 8, label %71
    i8 12, label %73
    i8 16, label %75
  ]

71:                                               ; preds = %69
  %72 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %1, i32 noundef %2, ptr noundef nonnull @.str.8, ptr noundef %70)
  br label %96

73:                                               ; preds = %69
  %74 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %1, i32 noundef %2, ptr noundef nonnull @.str.9, ptr noundef %70)
  br label %96

75:                                               ; preds = %69
  %76 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %1, i32 noundef %2, ptr noundef nonnull @.str.10, ptr noundef %70)
  br label %96

77:                                               ; preds = %56
  %78 = getelementptr i8, ptr %26, i32 4
  switch i8 %34, label %96 [
    i8 8, label %79
    i8 16, label %81
  ]

79:                                               ; preds = %77
  %80 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %1, i32 noundef %2, ptr noundef nonnull @.str.11, ptr noundef %78)
  br label %96

81:                                               ; preds = %77
  %82 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %1, i32 noundef %2, ptr noundef nonnull @.str.12, ptr noundef %78)
  br label %96

83:                                               ; preds = %56
  %84 = icmp ugt i8 %24, %34
  br i1 %84, label %96, label %85

85:                                               ; preds = %83
  %86 = zext i8 %34 to i32
  %87 = icmp ugt i32 %86, %2
  br i1 %87, label %88, label %90

88:                                               ; preds = %85
  %89 = icmp ugt i8 %23, 2
  br i1 %89, label %96, label %90

90:                                               ; preds = %88, %85
  %91 = phi i8 [ 2, %88 ], [ %54, %85 ]
  %92 = getelementptr i8, ptr %26, i32 4
  %93 = icmp ult i32 %86, %2
  %94 = select i1 %93, i8 %34, i8 %20
  %95 = zext i8 %94 to i32
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 1 %1, ptr align 1 %92, i32 %95, i1 false)
  br label %96

96:                                               ; preds = %90, %88, %83, %81, %79, %77, %75, %73, %71, %69, %61, %59, %56, %53, %45, %38, %36, %32, %22
  %97 = phi i32 [ %25, %53 ], [ %25, %56 ], [ %25, %83 ], [ %25, %88 ], [ %86, %90 ], [ %25, %77 ], [ %82, %81 ], [ %80, %79 ], [ %25, %69 ], [ %76, %75 ], [ %74, %73 ], [ %72, %71 ], [ %25, %59 ], [ %68, %61 ], [ %25, %22 ], [ %25, %32 ], [ %25, %45 ], [ %25, %38 ], [ %25, %36 ]
  %98 = phi i8 [ %24, %53 ], [ %24, %56 ], [ %24, %83 ], [ %24, %88 ], [ %94, %90 ], [ %34, %77 ], [ 16, %81 ], [ 8, %79 ], [ %34, %69 ], [ 16, %75 ], [ 12, %73 ], [ 8, %71 ], [ %24, %59 ], [ %65, %61 ], [ %24, %22 ], [ %24, %32 ], [ %24, %45 ], [ %24, %38 ], [ %24, %36 ]
  %99 = phi i8 [ %23, %53 ], [ %23, %56 ], [ %23, %83 ], [ %23, %88 ], [ %91, %90 ], [ %54, %77 ], [ %54, %81 ], [ %54, %79 ], [ %54, %69 ], [ %54, %75 ], [ %54, %73 ], [ %54, %71 ], [ %23, %59 ], [ %54, %61 ], [ %23, %22 ], [ %23, %32 ], [ %23, %45 ], [ %23, %38 ], [ %23, %36 ]
  %100 = getelementptr i8, ptr %26, i32 3
  %101 = load i8, ptr %100, align 1
  %102 = zext i8 %101 to i32
  %103 = add nuw nsw i32 %102, 4
  %104 = getelementptr i8, ptr %26, i32 %103
  %105 = load i32, ptr %14, align 4
  %106 = getelementptr i8, ptr %12, i32 %105
  %107 = icmp ult ptr %104, %106
  br i1 %107, label %22, label %108

108:                                              ; preds = %96, %11
  %109 = phi i32 [ -22, %11 ], [ %97, %96 ]
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !12
  br label %110

110:                                              ; preds = %108, %10, %7
  %111 = phi i32 [ -22, %10 ], [ %109, %108 ], [ -6, %7 ]
  ret i32 %111
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #7

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @scsi_vpd_tpg_id(ptr noundef %0, ptr noundef writeonly %1) #0 {
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !10
  %3 = getelementptr inbounds %struct.scsi_device, ptr %0, i32 0, i32 34
  %4 = load volatile ptr, ptr %3, align 4
  %5 = icmp eq ptr %4, null
  br i1 %5, label %6, label %7

6:                                                ; preds = %2
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !12
  br label %50

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.scsi_vpd, ptr %4, i32 0, i32 2
  %9 = getelementptr %struct.scsi_vpd, ptr %4, i32 1, i32 0, i32 1
  %10 = getelementptr inbounds %struct.scsi_vpd, ptr %4, i32 0, i32 1
  %11 = load i32, ptr %10, align 4
  %12 = getelementptr i8, ptr %8, i32 %11
  %13 = icmp ult ptr %9, %12
  br i1 %13, label %14, label %41

14:                                               ; preds = %32, %7
  %15 = phi ptr [ %39, %32 ], [ %9, %7 ]
  %16 = phi i32 [ %34, %32 ], [ -1, %7 ]
  %17 = phi i32 [ %33, %32 ], [ -11, %7 ]
  %18 = getelementptr i8, ptr %15, i32 1
  %19 = load i8, ptr %18, align 1
  %20 = and i8 %19, 15
  %21 = zext i8 %20 to i32
  switch i32 %21, label %32 [
    i32 4, label %22
    i32 5, label %27
  ]

22:                                               ; preds = %14
  %23 = getelementptr i8, ptr %15, i32 6
  %24 = load i16, ptr %23, align 1
  %25 = tail call i16 @llvm.bswap.i16(i16 %24) #15
  %26 = zext i16 %25 to i32
  br label %32

27:                                               ; preds = %14
  %28 = getelementptr i8, ptr %15, i32 6
  %29 = load i16, ptr %28, align 1
  %30 = tail call i16 @llvm.bswap.i16(i16 %29) #15
  %31 = zext i16 %30 to i32
  br label %32

32:                                               ; preds = %27, %22, %14
  %33 = phi i32 [ %17, %14 ], [ %31, %27 ], [ %17, %22 ]
  %34 = phi i32 [ %16, %14 ], [ %16, %27 ], [ %26, %22 ]
  %35 = getelementptr i8, ptr %15, i32 3
  %36 = load i8, ptr %35, align 1
  %37 = zext i8 %36 to i32
  %38 = add nuw nsw i32 %37, 4
  %39 = getelementptr i8, ptr %15, i32 %38
  %40 = icmp ult ptr %39, %12
  br i1 %40, label %14, label %41

41:                                               ; preds = %32, %7
  %42 = phi i32 [ -11, %7 ], [ %33, %32 ]
  %43 = phi i32 [ -1, %7 ], [ %34, %32 ]
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !12
  %44 = icmp sgt i32 %42, -1
  %45 = icmp ne ptr %1, null
  %46 = and i1 %45, %44
  %47 = icmp ne i32 %43, -1
  %48 = select i1 %46, i1 %47, i1 false
  br i1 %48, label %49, label %50

49:                                               ; preds = %41
  store i32 %43, ptr %1, align 4
  br label %50

50:                                               ; preds = %49, %41, %6
  %51 = phi i32 [ -6, %6 ], [ %42, %49 ], [ %42, %41 ]
  ret i32 %51
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @scsi_build_sense(ptr nocapture noundef %0, i32 noundef %1, i8 noundef zeroext %2, i8 noundef zeroext %3, i8 noundef zeroext %4) #0 {
  %6 = getelementptr inbounds %struct.scsi_cmnd, ptr %0, i32 0, i32 21
  %7 = load ptr, ptr %6, align 4
  tail call void @scsi_build_sense_buffer(i32 noundef %1, ptr noundef %7, i8 noundef zeroext %2, i8 noundef zeroext %3, i8 noundef zeroext %4) #15
  %8 = getelementptr inbounds %struct.scsi_cmnd, ptr %0, i32 0, i32 24
  store i32 2, ptr %8, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @scsi_build_sense_buffer(i32 noundef, ptr noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @blk_mq_requeue_request(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @scsi_eh_wakeup(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @blk_mq_run_hw_queues(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @scsi_device_get(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @blk_get_queue(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @blk_put_queue(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @scsi_command_normalize_sense(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal fastcc zeroext i8 @scsi_result_to_blk_status(ptr nocapture noundef %0, i32 noundef %1) unnamed_addr #5 {
  %3 = lshr i32 %1, 16
  %4 = trunc i32 %3 to i8
  switch i8 %4, label %33 [
    i8 0, label %5
    i8 15, label %34
    i8 20, label %34
    i8 16, label %17
    i8 17, label %21
    i8 18, label %25
    i8 19, label %29
  ]

5:                                                ; preds = %2
  %6 = icmp slt i32 %1, 0
  %7 = and i32 %1, 16711680
  %8 = icmp eq i32 %7, 65536
  %9 = or i1 %6, %8
  br i1 %9, label %34, label %10

10:                                               ; preds = %5
  %11 = trunc i32 %1 to i8
  %12 = and i8 %11, -6
  switch i8 %12, label %13 [
    i8 16, label %16
    i8 0, label %16
  ]

13:                                               ; preds = %10
  %14 = and i32 %1, 254
  %15 = icmp eq i32 %14, 34
  br i1 %15, label %16, label %34

16:                                               ; preds = %13, %10, %10
  br label %34

17:                                               ; preds = %2
  %18 = getelementptr inbounds %struct.scsi_cmnd, ptr %0, i32 0, i32 24
  %19 = load i32, ptr %18, align 4
  %20 = and i32 %19, -16711681
  store i32 %20, ptr %18, align 4
  br label %34

21:                                               ; preds = %2
  %22 = getelementptr inbounds %struct.scsi_cmnd, ptr %0, i32 0, i32 24
  %23 = load i32, ptr %22, align 4
  %24 = and i32 %23, -16711681
  store i32 %24, ptr %22, align 4
  br label %34

25:                                               ; preds = %2
  %26 = getelementptr inbounds %struct.scsi_cmnd, ptr %0, i32 0, i32 24
  %27 = load i32, ptr %26, align 4
  %28 = and i32 %27, -16711681
  store i32 %28, ptr %26, align 4
  br label %34

29:                                               ; preds = %2
  %30 = getelementptr inbounds %struct.scsi_cmnd, ptr %0, i32 0, i32 24
  %31 = load i32, ptr %30, align 4
  %32 = and i32 %31, -16711681
  store i32 %32, ptr %30, align 4
  br label %34

33:                                               ; preds = %2
  br label %34

34:                                               ; preds = %33, %29, %25, %21, %17, %16, %13, %5, %2, %2
  %35 = phi i8 [ 10, %33 ], [ 7, %29 ], [ 3, %25 ], [ 6, %21 ], [ 5, %17 ], [ 4, %2 ], [ 4, %2 ], [ 0, %16 ], [ 10, %13 ], [ 10, %5 ]
  ret i8 %35
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @scsi_print_sense(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @blk_update_request(ptr noundef, i8 noundef zeroext, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @add_disk_randomness(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__blk_mq_end_request(ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kblockd_schedule_work(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @___ratelimit(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @scsi_print_result(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @scsi_print_command(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @scmd_printk(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_scsi_dispatch_cmd_done(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal zeroext i8 @scsi_queue_rq(ptr nocapture noundef readnone %0, ptr nocapture noundef readonly %1) #0 {
  %3 = load ptr, ptr %1, align 4
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.request_queue, ptr %4, i32 0, i32 10
  %6 = load ptr, ptr %5, align 4
  %7 = load ptr, ptr %6, align 8
  %8 = getelementptr %struct.request, ptr %3, i32 1
  %9 = getelementptr %struct.request, ptr %3, i32 1, i32 23, i32 0, i32 1
  %10 = load i32, ptr %9, align 4
  %11 = icmp slt i32 %10, 0
  %12 = load i1, ptr @scsi_queue_rq.__already_done, align 1
  %13 = xor i1 %12, true
  %14 = select i1 %11, i1 %13, i1 false
  br i1 %14, label %15, label %16, !prof !9

15:                                               ; preds = %2
  store i1 true, ptr @scsi_queue_rq.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 1711, i32 noundef 9, ptr noundef null) #15
  br label %16

16:                                               ; preds = %15, %2
  %17 = getelementptr inbounds %struct.scsi_device, ptr %6, i32 0, i32 68
  %18 = load i32, ptr %17, align 4
  %19 = icmp eq i32 %18, 2
  br i1 %19, label %23, label %20, !prof !11

20:                                               ; preds = %16
  %21 = tail call fastcc zeroext i8 @scsi_device_state_check(ptr noundef %6, ptr noundef %3)
  %22 = icmp eq i8 %21, 0
  br i1 %22, label %23, label %430

23:                                               ; preds = %20, %16
  %24 = getelementptr inbounds %struct.scsi_device, ptr %6, i32 0, i32 54, i32 1
  %25 = load ptr, ptr %24, align 4
  %26 = getelementptr i8, ptr %25, i32 -24
  %27 = getelementptr i8, ptr %25, i32 484
  %28 = load i8, ptr %27, align 4
  %29 = and i8 %28, 2
  %30 = icmp eq i8 %29, 0
  br i1 %30, label %46, label %31

31:                                               ; preds = %23
  %32 = getelementptr inbounds %struct.Scsi_Host, ptr %7, i32 0, i32 4
  %33 = load ptr, ptr %32, align 4
  tail call void @_raw_spin_lock_irq(ptr noundef %33) #15
  %34 = load ptr, ptr %26, align 8
  %35 = icmp eq ptr %34, null
  %36 = icmp eq ptr %34, %6
  %37 = or i1 %35, %36
  br i1 %37, label %42, label %38

38:                                               ; preds = %31
  %39 = load ptr, ptr %32, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #15, !srcloc !43
  %40 = load i16, ptr %39, align 4
  %41 = add i16 %40, 1
  store i16 %41, ptr %39, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #15, !srcloc !44
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #15, !srcloc !45
  tail call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #15, !srcloc !46
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !47
  br label %430

42:                                               ; preds = %31
  store ptr %6, ptr %26, align 8
  %43 = load ptr, ptr %32, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #15, !srcloc !43
  %44 = load i16, ptr %43, align 4
  %45 = add i16 %44, 1
  store i16 %45, ptr %43, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #15, !srcloc !44
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #15, !srcloc !45
  tail call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #15, !srcloc !46
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !47
  br label %46

46:                                               ; preds = %42, %23
  %47 = getelementptr i8, ptr %25, i32 496
  %48 = load i32, ptr %47, align 8
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %86, label %50

50:                                               ; preds = %46
  %51 = getelementptr i8, ptr %25, i32 488
  tail call void asm sideeffect "dmb ish", "~{memory}"() #15, !srcloc !48
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %51) #15, !srcloc !13
  %52 = tail call { i32, i32 } asm sideeffect "@ atomic_add_return\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %51, ptr %51, i32 1, ptr elementtype(i32) %51) #15, !srcloc !49
  %53 = extractvalue { i32, i32 } %52, 0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #15, !srcloc !50
  %54 = add i32 %53, -1
  %55 = getelementptr i8, ptr %25, i32 492
  %56 = load volatile i32, ptr %55, align 4
  %57 = icmp sgt i32 %56, 0
  br i1 %57, label %58, label %64

58:                                               ; preds = %50
  %59 = icmp eq i32 %54, 0
  br i1 %59, label %60, label %67

60:                                               ; preds = %58
  tail call void asm sideeffect "dmb ish", "~{memory}"() #15, !srcloc !24
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %55) #15, !srcloc !13
  %61 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %55, ptr %55, i32 1, ptr elementtype(i32) %55) #15, !srcloc !25
  %62 = extractvalue { i32, i32 } %61, 0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #15, !srcloc !26
  %63 = icmp sgt i32 %62, 0
  br i1 %63, label %81, label %64

64:                                               ; preds = %60, %50
  %65 = load i32, ptr %47, align 8
  %66 = icmp ult i32 %54, %65
  br i1 %66, label %86, label %67

67:                                               ; preds = %64, %58
  %68 = getelementptr inbounds %struct.Scsi_Host, ptr %7, i32 0, i32 4
  %69 = load ptr, ptr %68, align 4
  tail call void @_raw_spin_lock_irq(ptr noundef %69) #15
  %70 = getelementptr inbounds %struct.scsi_device, ptr %6, i32 0, i32 8
  %71 = getelementptr inbounds %struct.Scsi_Host, ptr %7, i32 0, i32 2
  %72 = getelementptr inbounds %struct.scsi_device, ptr %6, i32 0, i32 8, i32 1
  %73 = load ptr, ptr %72, align 4
  %74 = load ptr, ptr %70, align 4
  %75 = getelementptr inbounds %struct.list_head, ptr %74, i32 0, i32 1
  store ptr %73, ptr %75, align 4
  store volatile ptr %74, ptr %73, align 4
  %76 = getelementptr inbounds %struct.Scsi_Host, ptr %7, i32 0, i32 2, i32 1
  %77 = load ptr, ptr %76, align 4
  store ptr %70, ptr %76, align 4
  store ptr %71, ptr %70, align 4
  store ptr %77, ptr %72, align 4
  store volatile ptr %70, ptr %77, align 4
  %78 = load ptr, ptr %68, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #15, !srcloc !43
  %79 = load i16, ptr %78, align 4
  %80 = add i16 %79, 1
  store i16 %80, ptr %78, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #15, !srcloc !44
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #15, !srcloc !45
  tail call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #15, !srcloc !46
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !47
  br label %81

81:                                               ; preds = %67, %60
  %82 = load i32, ptr %47, align 8
  %83 = icmp eq i32 %82, 0
  br i1 %83, label %430, label %84

84:                                               ; preds = %81
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %51) #15, !srcloc !13
  %85 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %51, ptr %51, i32 1, ptr elementtype(i32) %51) #15, !srcloc !14
  br label %430

86:                                               ; preds = %64, %46
  %87 = getelementptr inbounds %struct.Scsi_Host, ptr %7, i32 0, i32 48
  %88 = load i32, ptr %87, align 4
  %89 = add i32 %88, -5
  %90 = icmp ult i32 %89, 3
  br i1 %90, label %421, label %91

91:                                               ; preds = %86
  %92 = getelementptr inbounds %struct.Scsi_Host, ptr %7, i32 0, i32 36
  %93 = load i16, ptr %92, align 8
  %94 = and i16 %93, 16
  %95 = icmp eq i16 %94, 0
  br i1 %95, label %96, label %421

96:                                               ; preds = %91
  %97 = getelementptr inbounds %struct.Scsi_Host, ptr %7, i32 0, i32 14
  %98 = load volatile i32, ptr %97, align 4
  %99 = icmp sgt i32 %98, 0
  br i1 %99, label %100, label %109

100:                                              ; preds = %96
  %101 = tail call i32 @scsi_host_busy(ptr noundef %7) #15
  %102 = icmp sgt i32 %101, 0
  br i1 %102, label %130, label %103

103:                                              ; preds = %100
  tail call void asm sideeffect "dmb ish", "~{memory}"() #15, !srcloc !24
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %97) #15, !srcloc !13
  %104 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %97, ptr %97, i32 1, ptr elementtype(i32) %97) #15, !srcloc !25
  %105 = extractvalue { i32, i32 } %104, 0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #15, !srcloc !26
  %106 = icmp sgt i32 %105, 0
  br i1 %106, label %145, label %107

107:                                              ; preds = %103
  %108 = load i16, ptr %92, align 8
  br label %109

109:                                              ; preds = %107, %96
  %110 = phi i16 [ %108, %107 ], [ %93, %96 ]
  %111 = and i16 %110, 4
  %112 = icmp eq i16 %111, 0
  br i1 %112, label %113, label %130

113:                                              ; preds = %109
  %114 = getelementptr inbounds %struct.scsi_device, ptr %6, i32 0, i32 8
  %115 = load volatile ptr, ptr %114, align 4
  %116 = icmp eq ptr %115, %114
  br i1 %116, label %171, label %117

117:                                              ; preds = %113
  %118 = getelementptr inbounds %struct.Scsi_Host, ptr %7, i32 0, i32 4
  %119 = load ptr, ptr %118, align 4
  tail call void @_raw_spin_lock_irq(ptr noundef %119) #15
  %120 = load volatile ptr, ptr %114, align 4
  %121 = icmp eq ptr %120, %114
  br i1 %121, label %126, label %122

122:                                              ; preds = %117
  %123 = getelementptr inbounds %struct.scsi_device, ptr %6, i32 0, i32 8, i32 1
  %124 = load ptr, ptr %123, align 4
  %125 = getelementptr inbounds %struct.list_head, ptr %120, i32 0, i32 1
  store ptr %124, ptr %125, align 4
  store volatile ptr %120, ptr %124, align 4
  store volatile ptr %114, ptr %114, align 4
  store ptr %114, ptr %123, align 4
  br label %126

126:                                              ; preds = %122, %117
  %127 = load ptr, ptr %118, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #15, !srcloc !43
  %128 = load i16, ptr %127, align 4
  %129 = add i16 %128, 1
  store i16 %129, ptr %127, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #15, !srcloc !44
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #15, !srcloc !45
  tail call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #15, !srcloc !46
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !47
  br label %171

130:                                              ; preds = %109, %100
  %131 = getelementptr inbounds %struct.Scsi_Host, ptr %7, i32 0, i32 4
  %132 = load ptr, ptr %131, align 4
  tail call void @_raw_spin_lock_irq(ptr noundef %132) #15
  %133 = getelementptr inbounds %struct.scsi_device, ptr %6, i32 0, i32 8
  %134 = load volatile ptr, ptr %133, align 4
  %135 = icmp eq ptr %134, %133
  br i1 %135, label %136, label %141

136:                                              ; preds = %130
  %137 = getelementptr inbounds %struct.Scsi_Host, ptr %7, i32 0, i32 2
  %138 = getelementptr inbounds %struct.Scsi_Host, ptr %7, i32 0, i32 2, i32 1
  %139 = load ptr, ptr %138, align 4
  store ptr %133, ptr %138, align 4
  store ptr %137, ptr %133, align 4
  %140 = getelementptr inbounds %struct.scsi_device, ptr %6, i32 0, i32 8, i32 1
  store ptr %139, ptr %140, align 4
  store volatile ptr %133, ptr %139, align 4
  br label %141

141:                                              ; preds = %136, %130
  %142 = load ptr, ptr %131, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #15, !srcloc !43
  %143 = load i16, ptr %142, align 4
  %144 = add i16 %143, 1
  store i16 %144, ptr %142, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #15, !srcloc !44
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #15, !srcloc !45
  tail call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #15, !srcloc !46
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !47
  br label %145

145:                                              ; preds = %141, %103
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !10
  %146 = getelementptr %struct.request, ptr %3, i32 2, i32 12, i32 0, i32 1
  %147 = load i32, ptr %146, align 4
  %148 = and i32 %147, -3
  store i32 %148, ptr %146, align 4
  %149 = load i32, ptr %87, align 4
  %150 = add i32 %149, -5
  %151 = icmp ult i32 %150, 3
  br i1 %151, label %156, label %152

152:                                              ; preds = %145
  %153 = load i16, ptr %92, align 8
  %154 = and i16 %153, 16
  %155 = icmp eq i16 %154, 0
  br i1 %155, label %170, label %156, !prof !11

156:                                              ; preds = %152, %145
  %157 = getelementptr inbounds %struct.Scsi_Host, ptr %7, i32 0, i32 4
  %158 = load ptr, ptr %157, align 4
  %159 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %158) #15
  %160 = getelementptr inbounds %struct.Scsi_Host, ptr %7, i32 0, i32 15
  %161 = load i32, ptr %160, align 4
  %162 = icmp eq i32 %161, 0
  br i1 %162, label %163, label %167

163:                                              ; preds = %156
  %164 = getelementptr inbounds %struct.Scsi_Host, ptr %7, i32 0, i32 16
  %165 = load i32, ptr %164, align 8
  %166 = icmp eq i32 %165, 0
  br i1 %166, label %168, label %167

167:                                              ; preds = %163, %156
  tail call void @scsi_eh_wakeup(ptr noundef %7) #15
  br label %168

168:                                              ; preds = %167, %163
  %169 = load ptr, ptr %157, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %169, i32 noundef %159) #15
  br label %170

170:                                              ; preds = %168, %152
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !12
  br label %421

171:                                              ; preds = %126, %113
  %172 = getelementptr %struct.request, ptr %3, i32 2, i32 12, i32 0, i32 1
  %173 = load i32, ptr %172, align 4
  %174 = or i32 %173, 2
  store i32 %174, ptr %172, align 4
  %175 = getelementptr inbounds %struct.request, ptr %3, i32 0, i32 4
  %176 = load i32, ptr %175, align 8
  %177 = and i32 %176, 128
  %178 = icmp eq i32 %177, 0
  br i1 %178, label %179, label %269

179:                                              ; preds = %171
  %180 = load ptr, ptr %3, align 8
  %181 = getelementptr inbounds %struct.request_queue, ptr %180, i32 0, i32 10
  %182 = load ptr, ptr %181, align 4
  %183 = load ptr, ptr %182, align 8
  tail call void @scsi_init_command(ptr noundef %182, ptr noundef %8) #15
  %184 = getelementptr %struct.request, ptr %3, i32 1, i32 25
  store i8 0, ptr %184, align 4
  %185 = getelementptr inbounds %struct.request, ptr %3, i32 0, i32 8
  %186 = load i32, ptr %185, align 8
  %187 = icmp eq i32 %186, 0
  br i1 %187, label %194, label %188

188:                                              ; preds = %179
  %189 = getelementptr inbounds %struct.request, ptr %3, i32 0, i32 3
  %190 = load i32, ptr %189, align 4
  %191 = and i32 %190, 1
  %192 = icmp eq i32 %191, 0
  %193 = select i1 %192, i32 2, i32 1
  br label %194

194:                                              ; preds = %188, %179
  %195 = phi i32 [ %193, %188 ], [ 3, %179 ]
  %196 = getelementptr %struct.request, ptr %3, i32 1, i32 25, i32 0, i32 1, i32 1
  store i32 %195, ptr %196, align 4
  %197 = getelementptr i8, ptr %8, i32 236
  %198 = getelementptr inbounds %struct.Scsi_Host, ptr %183, i32 0, i32 11
  %199 = load ptr, ptr %198, align 8
  %200 = load i32, ptr %199, align 8
  %201 = getelementptr i8, ptr %197, i32 %200
  %202 = getelementptr %struct.request, ptr %3, i32 1, i32 26
  store ptr %201, ptr %202, align 4
  %203 = getelementptr inbounds %struct.Scsi_Host, ptr %183, i32 0, i32 41
  %204 = load i32, ptr %203, align 4
  %205 = icmp eq i32 %204, 0
  br i1 %205, label %211, label %206

206:                                              ; preds = %194
  %207 = getelementptr %struct.request, ptr %3, i32 1, i32 27
  %208 = load ptr, ptr %207, align 4
  tail call void @llvm.memset.p0.i32(ptr noundef align 4 dereferenceable(16) %208, i8 0, i32 16, i1 false) #15
  %209 = load ptr, ptr %207, align 4
  %210 = getelementptr %struct.scsi_data_buffer, ptr %209, i32 1
  store ptr %210, ptr %209, align 4
  br label %211

211:                                              ; preds = %206, %194
  %212 = getelementptr inbounds %struct.request, ptr %3, i32 0, i32 3
  %213 = load i32, ptr %212, align 4
  %214 = and i32 %213, 254
  %215 = icmp eq i32 %214, 34
  br i1 %215, label %216, label %242

216:                                              ; preds = %211
  %217 = getelementptr inbounds %struct.request, ptr %3, i32 0, i32 10
  %218 = load ptr, ptr %217, align 8
  %219 = icmp eq ptr %218, null
  br i1 %219, label %225, label %220

220:                                              ; preds = %216
  %221 = tail call zeroext i8 @scsi_alloc_sgtables(ptr noundef %8) #15
  %222 = icmp eq i8 %221, 0
  br i1 %222, label %223, label %395

223:                                              ; preds = %220
  %224 = load i32, ptr %185, align 8
  br label %230

225:                                              ; preds = %216
  %226 = load i32, ptr %185, align 8
  %227 = icmp eq i32 %226, 0
  br i1 %227, label %229, label %228, !prof !11

228:                                              ; preds = %225
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/scsi/scsi_lib.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1223, 0\0A.popsection", ""() #15, !srcloc !51
  unreachable

229:                                              ; preds = %225
  tail call void @llvm.memset.p0.i32(ptr noundef align 4 dereferenceable(16) %202, i8 0, i32 16, i1 false) #15
  br label %230

230:                                              ; preds = %229, %223
  %231 = phi i32 [ %224, %223 ], [ 0, %229 ]
  %232 = getelementptr %struct.request, ptr %3, i32 1, i32 5
  %233 = load i16, ptr %232, align 4
  %234 = getelementptr %struct.request, ptr %3, i32 1, i32 25, i32 0, i32 1
  store i16 %233, ptr %234, align 4
  %235 = getelementptr %struct.request, ptr %3, i32 1, i32 4
  %236 = load ptr, ptr %235, align 4
  %237 = getelementptr %struct.request, ptr %3, i32 1, i32 25, i32 0, i32 2
  store ptr %236, ptr %237, align 4
  %238 = getelementptr %struct.request, ptr %3, i32 2
  store i32 %231, ptr %238, align 4
  %239 = getelementptr inbounds %struct.scsi_request, ptr %8, i32 0, i32 6
  %240 = load i32, ptr %239, align 4
  %241 = getelementptr %struct.request, ptr %3, i32 1, i32 24, i32 0, i32 2
  store i32 %240, ptr %241, align 4
  br label %266

242:                                              ; preds = %211
  %243 = getelementptr inbounds %struct.scsi_device, ptr %182, i32 0, i32 58
  %244 = load ptr, ptr %243, align 8
  %245 = icmp eq ptr %244, null
  br i1 %245, label %253, label %246

246:                                              ; preds = %242
  %247 = getelementptr inbounds %struct.scsi_device_handler, ptr %244, i32 0, i32 7
  %248 = load ptr, ptr %247, align 4
  %249 = icmp eq ptr %248, null
  br i1 %249, label %253, label %250

250:                                              ; preds = %246
  %251 = tail call zeroext i8 %248(ptr noundef %182, ptr noundef %3) #15
  %252 = icmp eq i8 %251, 0
  br i1 %252, label %253, label %395

253:                                              ; preds = %250, %246, %242
  %254 = getelementptr %struct.request, ptr %3, i32 1, i32 4
  store ptr %8, ptr %254, align 4
  %255 = getelementptr %struct.request, ptr %3, i32 1, i32 25, i32 0, i32 2
  store ptr %8, ptr %255, align 4
  tail call void @llvm.memset.p0.i32(ptr noundef align 1 dereferenceable(16) %8, i8 0, i32 16, i1 false) #15
  %256 = load ptr, ptr %3, align 8
  %257 = getelementptr inbounds %struct.request_queue, ptr %256, i32 0, i32 15
  %258 = load ptr, ptr %257, align 8
  %259 = getelementptr inbounds %struct.gendisk, ptr %258, i32 0, i32 10
  %260 = load ptr, ptr %259, align 8
  %261 = load ptr, ptr %260, align 4
  %262 = getelementptr inbounds %struct.scsi_driver, ptr %261, i32 0, i32 2
  %263 = load ptr, ptr %262, align 4
  %264 = tail call zeroext i8 %263(ptr noundef %8) #15
  %265 = icmp eq i8 %264, 0
  br i1 %265, label %266, label %395

266:                                              ; preds = %253, %230
  %267 = load i32, ptr %175, align 8
  %268 = or i32 %267, 128
  store i32 %268, ptr %175, align 8
  br label %270

269:                                              ; preds = %171
  tail call void @_clear_bit(i32 noundef 0, ptr noundef %172) #15
  br label %270

270:                                              ; preds = %269, %266
  %271 = getelementptr %struct.request, ptr %3, i32 2, i32 12
  %272 = load i32, ptr %271, align 4
  %273 = and i32 %272, 2
  store i32 %273, ptr %271, align 4
  %274 = getelementptr inbounds %struct.scsi_device, ptr %6, i32 0, i32 41
  %275 = load i64, ptr %274, align 4
  %276 = and i64 %275, 4096
  %277 = icmp eq i64 %276, 0
  br i1 %277, label %280, label %278

278:                                              ; preds = %270
  %279 = or i32 %273, 1
  store i32 %279, ptr %271, align 4
  br label %280

280:                                              ; preds = %278, %270
  %281 = phi i32 [ %279, %278 ], [ %273, %270 ]
  %282 = getelementptr inbounds %struct.blk_mq_queue_data, ptr %1, i32 0, i32 1
  %283 = load i8, ptr %282, align 4, !range !15
  %284 = icmp eq i8 %283, 0
  br i1 %284, label %287, label %285

285:                                              ; preds = %280
  %286 = or i32 %281, 4
  store i32 %286, ptr %271, align 4
  br label %287

287:                                              ; preds = %285, %280
  %288 = getelementptr %struct.request, ptr %3, i32 1, i32 8
  store i32 0, ptr %288, align 4
  %289 = getelementptr %struct.request, ptr %3, i32 2, i32 1
  %290 = load ptr, ptr %289, align 4
  tail call void @llvm.memset.p0.i32(ptr noundef align 1 dereferenceable(96) %290, i8 0, i32 96, i1 false)
  %291 = getelementptr inbounds %struct.scsi_cmnd, ptr %8, i32 0, i32 13
  store i8 0, ptr %291, align 1
  tail call void @blk_mq_start_request(ptr noundef %3) #15
  %292 = getelementptr inbounds %struct.scsi_cmnd, ptr %8, i32 0, i32 1
  %293 = load ptr, ptr %292, align 4
  %294 = load ptr, ptr %293, align 8
  %295 = getelementptr inbounds %struct.scsi_device, ptr %293, i32 0, i32 51
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %295) #15, !srcloc !13
  %296 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %295, ptr %295, i32 1, ptr elementtype(i32) %295) #15, !srcloc !20
  %297 = load ptr, ptr %292, align 4
  %298 = getelementptr inbounds %struct.scsi_device, ptr %297, i32 0, i32 68
  %299 = load i32, ptr %298, align 4
  %300 = icmp eq i32 %299, 4
  br i1 %300, label %373, label %301, !prof !9

301:                                              ; preds = %287
  %302 = and i32 %299, -2
  %303 = icmp eq i32 %302, 8
  br i1 %303, label %384, label %304, !prof !9

304:                                              ; preds = %301
  %305 = getelementptr inbounds %struct.scsi_device, ptr %297, i32 0, i32 41
  %306 = load i64, ptr %305, align 4
  %307 = and i64 %306, 17592186044416
  %308 = icmp eq i64 %307, 0
  br i1 %308, label %321, label %309

309:                                              ; preds = %304
  %310 = getelementptr %struct.request, ptr %3, i32 1, i32 25, i32 0, i32 2
  %311 = load ptr, ptr %310, align 4
  %312 = getelementptr i8, ptr %311, i32 1
  %313 = load i8, ptr %312, align 1
  %314 = and i8 %313, 31
  %315 = getelementptr inbounds %struct.scsi_device, ptr %297, i32 0, i32 18
  %316 = load i64, ptr %315, align 8
  %317 = trunc i64 %316 to i8
  %318 = shl i8 %317, 5
  %319 = or i8 %318, %314
  store i8 %319, ptr %312, align 1
  %320 = load ptr, ptr %292, align 4
  br label %321

321:                                              ; preds = %309, %304
  %322 = phi ptr [ %320, %309 ], [ %297, %304 ]
  %323 = getelementptr %struct.request, ptr %3, i32 1, i32 25, i32 0, i32 1
  %324 = load i16, ptr %323, align 4
  %325 = load ptr, ptr %322, align 8
  %326 = getelementptr inbounds %struct.Scsi_Host, ptr %325, i32 0, i32 24
  %327 = load i16, ptr %326, align 4
  %328 = icmp ugt i16 %324, %327
  br i1 %328, label %373, label %329

329:                                              ; preds = %321
  %330 = getelementptr inbounds %struct.Scsi_Host, ptr %294, i32 0, i32 48
  %331 = load i32, ptr %330, align 4
  %332 = icmp eq i32 %331, 4
  br i1 %332, label %373, label %333, !prof !9

333:                                              ; preds = %329
  %334 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_scsi_dispatch_cmd_start, i32 0, i32 1), align 4
  %335 = icmp sgt i32 %334, 0
  br i1 %335, label %336, label %349

336:                                              ; preds = %333
  %337 = tail call ptr @llvm.thread.pointer() #15
  %338 = getelementptr inbounds %struct.thread_info, ptr %337, i32 0, i32 2
  %339 = load i32, ptr %338, align 8
  %340 = lshr i32 %339, 5
  %341 = getelementptr i32, ptr @__cpu_online_mask, i32 %340
  %342 = load volatile i32, ptr %341, align 4
  %343 = and i32 %339, 31
  %344 = shl nuw i32 1, %343
  %345 = and i32 %344, %342
  %346 = icmp eq i32 %345, 0
  br i1 %346, label %349, label %347

347:                                              ; preds = %336
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !52
  %348 = tail call i32 @__traceiter_scsi_dispatch_cmd_start(ptr noundef null, ptr noundef %8) #15
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !53
  br label %349

349:                                              ; preds = %347, %336, %333
  %350 = getelementptr inbounds %struct.Scsi_Host, ptr %294, i32 0, i32 11
  %351 = load ptr, ptr %350, align 8
  %352 = getelementptr inbounds %struct.scsi_host_template, ptr %351, i32 0, i32 1
  %353 = load ptr, ptr %352, align 4
  %354 = tail call i32 %353(ptr noundef %294, ptr noundef %8) #15
  %355 = icmp eq i32 %354, 0
  br i1 %355, label %579, label %356

356:                                              ; preds = %349
  %357 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_scsi_dispatch_cmd_error, i32 0, i32 1), align 4
  %358 = icmp sgt i32 %357, 0
  br i1 %358, label %359, label %372

359:                                              ; preds = %356
  %360 = tail call ptr @llvm.thread.pointer() #15
  %361 = getelementptr inbounds %struct.thread_info, ptr %360, i32 0, i32 2
  %362 = load i32, ptr %361, align 8
  %363 = lshr i32 %362, 5
  %364 = getelementptr i32, ptr @__cpu_online_mask, i32 %363
  %365 = load volatile i32, ptr %364, align 4
  %366 = and i32 %362, 31
  %367 = shl nuw i32 1, %366
  %368 = and i32 %367, %365
  %369 = icmp eq i32 %368, 0
  br i1 %369, label %372, label %370

370:                                              ; preds = %359
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !54
  %371 = tail call i32 @__traceiter_scsi_dispatch_cmd_error(ptr noundef null, ptr noundef %8, i32 noundef %354) #15
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !55
  br label %372

372:                                              ; preds = %370, %359, %356
  switch i32 %354, label %376 [
    i32 4184, label %382
    i32 4182, label %382
  ]

373:                                              ; preds = %329, %321, %287
  %374 = phi i32 [ 65536, %287 ], [ 327680, %321 ], [ 65536, %329 ]
  %375 = getelementptr %struct.request, ptr %3, i32 2, i32 11
  store i32 %374, ptr %375, align 4
  tail call void @scsi_done(ptr noundef %8) #15
  br label %579

376:                                              ; preds = %372
  %377 = load ptr, ptr %292, align 4
  %378 = load ptr, ptr %377, align 8
  %379 = getelementptr inbounds %struct.Scsi_Host, ptr %378, i32 0, i32 14
  %380 = getelementptr inbounds %struct.Scsi_Host, ptr %378, i32 0, i32 40
  %381 = load i32, ptr %380, align 8
  store volatile i32 %381, ptr %379, align 4
  br label %395

382:                                              ; preds = %372, %372
  %383 = load ptr, ptr %292, align 4
  switch i32 %354, label %395 [
    i32 4184, label %389
    i32 4182, label %384
    i32 4183, label %384
  ]

384:                                              ; preds = %382, %382, %301
  %385 = phi ptr [ %383, %382 ], [ %383, %382 ], [ %297, %301 ]
  %386 = getelementptr inbounds %struct.scsi_device, ptr %385, i32 0, i32 5
  %387 = getelementptr inbounds %struct.scsi_device, ptr %385, i32 0, i32 50
  %388 = load i32, ptr %387, align 8
  store volatile i32 %388, ptr %386, align 4
  br label %395

389:                                              ; preds = %382
  %390 = getelementptr inbounds %struct.scsi_device, ptr %383, i32 0, i32 54, i32 1
  %391 = load ptr, ptr %390, align 4
  %392 = getelementptr i8, ptr %391, i32 492
  %393 = getelementptr i8, ptr %391, i32 500
  %394 = load i32, ptr %393, align 4
  store volatile i32 %394, ptr %392, align 4
  br label %395

395:                                              ; preds = %389, %384, %382, %376, %253, %250, %220
  %396 = phi i8 [ %264, %253 ], [ 9, %382 ], [ 9, %376 ], [ 9, %384 ], [ 9, %389 ], [ %221, %220 ], [ %251, %250 ]
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !10
  %397 = load i32, ptr %172, align 4
  %398 = and i32 %397, -3
  store i32 %398, ptr %172, align 4
  %399 = load i32, ptr %87, align 4
  %400 = add i32 %399, -5
  %401 = icmp ult i32 %400, 3
  br i1 %401, label %406, label %402

402:                                              ; preds = %395
  %403 = load i16, ptr %92, align 8
  %404 = and i16 %403, 16
  %405 = icmp eq i16 %404, 0
  br i1 %405, label %420, label %406, !prof !11

406:                                              ; preds = %402, %395
  %407 = getelementptr inbounds %struct.Scsi_Host, ptr %7, i32 0, i32 4
  %408 = load ptr, ptr %407, align 4
  %409 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %408) #15
  %410 = getelementptr inbounds %struct.Scsi_Host, ptr %7, i32 0, i32 15
  %411 = load i32, ptr %410, align 4
  %412 = icmp eq i32 %411, 0
  br i1 %412, label %413, label %417

413:                                              ; preds = %406
  %414 = getelementptr inbounds %struct.Scsi_Host, ptr %7, i32 0, i32 16
  %415 = load i32, ptr %414, align 8
  %416 = icmp eq i32 %415, 0
  br i1 %416, label %418, label %417

417:                                              ; preds = %413, %406
  tail call void @scsi_eh_wakeup(ptr noundef %7) #15
  br label %418

418:                                              ; preds = %417, %413
  %419 = load ptr, ptr %407, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %419, i32 noundef %409) #15
  br label %420

420:                                              ; preds = %418, %402
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !12
  br label %421

421:                                              ; preds = %420, %170, %91, %86
  %422 = phi i8 [ %396, %420 ], [ 9, %170 ], [ 9, %91 ], [ 9, %86 ]
  %423 = load ptr, ptr %24, align 4
  %424 = getelementptr i8, ptr %423, i32 496
  %425 = load i32, ptr %424, align 8
  %426 = icmp eq i32 %425, 0
  br i1 %426, label %430, label %427

427:                                              ; preds = %421
  %428 = getelementptr i8, ptr %423, i32 488
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %428) #15, !srcloc !13
  %429 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %428, ptr %428, i32 1, ptr elementtype(i32) %428) #15, !srcloc !14
  br label %430

430:                                              ; preds = %427, %421, %84, %81, %38, %20
  %431 = phi i8 [ %21, %20 ], [ %422, %427 ], [ %422, %421 ], [ 9, %38 ], [ 9, %84 ], [ 9, %81 ]
  %432 = load i32, ptr %9, align 4
  %433 = load ptr, ptr %5, align 4
  %434 = getelementptr inbounds %struct.scsi_device, ptr %433, i32 0, i32 4
  %435 = getelementptr inbounds %struct.scsi_device, ptr %433, i32 0, i32 4, i32 4
  %436 = load ptr, ptr %435, align 4
  %437 = getelementptr inbounds %struct.scsi_device, ptr %433, i32 0, i32 4, i32 1
  %438 = load i32, ptr %437, align 4
  %439 = lshr i32 %432, %438
  %440 = getelementptr %struct.sbitmap_word, ptr %436, i32 %439, i32 4
  %441 = shl nsw i32 -1, %438
  %442 = xor i32 %441, -1
  %443 = and i32 %432, %442
  tail call void @_set_bit(i32 noundef %443, ptr noundef %440) #15
  %444 = getelementptr inbounds %struct.scsi_device, ptr %433, i32 0, i32 4, i32 5
  %445 = load ptr, ptr %444, align 4
  %446 = icmp eq ptr %445, null
  br i1 %446, label %461, label %447, !prof !9

447:                                              ; preds = %430
  %448 = getelementptr inbounds %struct.scsi_device, ptr %433, i32 0, i32 4, i32 3
  %449 = load i8, ptr %448, align 4, !range !15
  %450 = icmp eq i8 %449, 0
  br i1 %450, label %451, label %461, !prof !11

451:                                              ; preds = %447
  %452 = load i32, ptr %434, align 4
  %453 = icmp ugt i32 %452, %432
  br i1 %453, label %454, label %461, !prof !11

454:                                              ; preds = %451
  %455 = ptrtoint ptr %445 to i32
  %456 = tail call i32 @llvm.read_register.i32(metadata !0) #15
  %457 = inttoptr i32 %456 to ptr
  %458 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %457) #8, !srcloc !16
  %459 = add i32 %458, %455
  %460 = inttoptr i32 %459 to ptr
  store i32 %432, ptr %460, align 4
  br label %461

461:                                              ; preds = %454, %451, %447, %430
  store i32 -1, ptr %9, align 4
  switch i8 %431, label %504 [
    i8 12, label %467
    i8 9, label %462
    i8 14, label %462
  ]

462:                                              ; preds = %461, %461
  %463 = load i32, ptr %17, align 4
  %464 = and i32 %463, -2
  %465 = icmp eq i32 %464, 8
  %466 = select i1 %465, i8 13, i8 %431
  br label %579

467:                                              ; preds = %461
  %468 = getelementptr %struct.request, ptr %3, i32 1, i32 6
  store i32 131072, ptr %468, align 4
  %469 = getelementptr inbounds %struct.request, ptr %3, i32 0, i32 4
  %470 = load i32, ptr %469, align 8
  %471 = and i32 %470, 128
  %472 = icmp eq i32 %471, 0
  br i1 %472, label %579, label %473

473:                                              ; preds = %467
  %474 = getelementptr inbounds %struct.scsi_cmnd, ptr %8, i32 0, i32 17, i32 0, i32 1
  %475 = load i32, ptr %474, align 4
  %476 = icmp eq i32 %475, 0
  br i1 %476, label %479, label %477

477:                                              ; preds = %473
  %478 = getelementptr %struct.request, ptr %3, i32 1, i32 26
  tail call void @sg_free_table_chained(ptr noundef %478, i32 noundef 2) #15
  br label %479

479:                                              ; preds = %477, %473
  %480 = getelementptr %struct.request, ptr %3, i32 1, i32 27
  %481 = load ptr, ptr %480, align 4
  %482 = icmp eq ptr %481, null
  br i1 %482, label %488, label %483

483:                                              ; preds = %479
  %484 = getelementptr inbounds %struct.sg_table, ptr %481, i32 0, i32 1
  %485 = load i32, ptr %484, align 4
  %486 = icmp eq i32 %485, 0
  br i1 %486, label %488, label %487

487:                                              ; preds = %483
  tail call void @sg_free_table_chained(ptr noundef nonnull %481, i32 noundef 1) #15
  br label %488

488:                                              ; preds = %487, %483, %479
  %489 = getelementptr %struct.request, ptr %3, i32 0, i32 3
  %490 = load i32, ptr %489, align 4
  %491 = and i32 %490, 254
  %492 = icmp eq i32 %491, 34
  br i1 %492, label %579, label %493

493:                                              ; preds = %488
  %494 = load ptr, ptr %3, align 8
  %495 = getelementptr inbounds %struct.request_queue, ptr %494, i32 0, i32 15
  %496 = load ptr, ptr %495, align 8
  %497 = getelementptr inbounds %struct.gendisk, ptr %496, i32 0, i32 10
  %498 = load ptr, ptr %497, align 8
  %499 = load ptr, ptr %498, align 4
  %500 = getelementptr inbounds %struct.scsi_driver, ptr %499, i32 0, i32 3
  %501 = load ptr, ptr %500, align 4
  %502 = icmp eq ptr %501, null
  br i1 %502, label %579, label %503

503:                                              ; preds = %493
  tail call void %501(ptr noundef %8) #15
  br label %579

504:                                              ; preds = %461
  %505 = load i32, ptr %17, align 4
  %506 = add i32 %505, -4
  %507 = icmp ult i32 %506, 4
  br i1 %507, label %508, label %511

508:                                              ; preds = %504
  %509 = getelementptr inbounds [4 x i32], ptr @switch.table.scsi_queue_rq, i32 0, i32 %506
  %510 = load i32, ptr %509, align 4
  br label %511

511:                                              ; preds = %508, %504
  %512 = phi i32 [ %510, %508 ], [ 458752, %504 ]
  %513 = getelementptr %struct.request, ptr %3, i32 1, i32 6
  store i32 %512, ptr %513, align 4
  %514 = getelementptr inbounds %struct.request, ptr %3, i32 0, i32 4
  %515 = load i32, ptr %514, align 8
  %516 = and i32 %515, 128
  %517 = icmp eq i32 %516, 0
  br i1 %517, label %549, label %518

518:                                              ; preds = %511
  %519 = getelementptr inbounds %struct.scsi_cmnd, ptr %8, i32 0, i32 17, i32 0, i32 1
  %520 = load i32, ptr %519, align 4
  %521 = icmp eq i32 %520, 0
  br i1 %521, label %524, label %522

522:                                              ; preds = %518
  %523 = getelementptr %struct.request, ptr %3, i32 1, i32 26
  tail call void @sg_free_table_chained(ptr noundef %523, i32 noundef 2) #15
  br label %524

524:                                              ; preds = %522, %518
  %525 = getelementptr %struct.request, ptr %3, i32 1, i32 27
  %526 = load ptr, ptr %525, align 4
  %527 = icmp eq ptr %526, null
  br i1 %527, label %533, label %528

528:                                              ; preds = %524
  %529 = getelementptr inbounds %struct.sg_table, ptr %526, i32 0, i32 1
  %530 = load i32, ptr %529, align 4
  %531 = icmp eq i32 %530, 0
  br i1 %531, label %533, label %532

532:                                              ; preds = %528
  tail call void @sg_free_table_chained(ptr noundef nonnull %526, i32 noundef 1) #15
  br label %533

533:                                              ; preds = %532, %528, %524
  %534 = getelementptr %struct.request, ptr %3, i32 0, i32 3
  %535 = load i32, ptr %534, align 4
  %536 = and i32 %535, 254
  %537 = icmp eq i32 %536, 34
  br i1 %537, label %549, label %538

538:                                              ; preds = %533
  %539 = load ptr, ptr %3, align 8
  %540 = getelementptr inbounds %struct.request_queue, ptr %539, i32 0, i32 15
  %541 = load ptr, ptr %540, align 8
  %542 = getelementptr inbounds %struct.gendisk, ptr %541, i32 0, i32 10
  %543 = load ptr, ptr %542, align 8
  %544 = load ptr, ptr %543, align 4
  %545 = getelementptr inbounds %struct.scsi_driver, ptr %544, i32 0, i32 3
  %546 = load ptr, ptr %545, align 4
  %547 = icmp eq ptr %546, null
  br i1 %547, label %549, label %548

548:                                              ; preds = %538
  tail call void %546(ptr noundef %8) #15
  br label %549

549:                                              ; preds = %548, %538, %533, %511
  %550 = getelementptr inbounds %struct.scsi_device, ptr %6, i32 0, i32 54, i32 1
  %551 = load ptr, ptr %550, align 4
  %552 = getelementptr i8, ptr %551, i32 484
  %553 = load i8, ptr %552, align 4
  %554 = and i8 %553, 2
  %555 = icmp eq i8 %554, 0
  br i1 %555, label %556, label %561

556:                                              ; preds = %549
  %557 = load ptr, ptr %6, align 8
  %558 = getelementptr inbounds %struct.Scsi_Host, ptr %557, i32 0, i32 2
  %559 = load volatile ptr, ptr %558, align 4
  %560 = icmp eq ptr %559, %558
  br i1 %560, label %564, label %561

561:                                              ; preds = %556, %549
  %562 = getelementptr inbounds %struct.scsi_device, ptr %6, i32 0, i32 57
  %563 = tail call i32 @kblockd_schedule_work(ptr noundef %562) #15
  br label %579

564:                                              ; preds = %556
  %565 = getelementptr inbounds %struct.scsi_device, ptr %6, i32 0, i32 6
  %566 = load volatile i32, ptr %565, align 4
  %567 = icmp eq i32 %566, 0
  br i1 %567, label %579, label %568

568:                                              ; preds = %564
  tail call void asm sideeffect "dmb ish", "~{memory}"() #15, !srcloc !21
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %565) #15, !srcloc !13
  br label %569

569:                                              ; preds = %569, %568
  %570 = tail call { i32, i32 } asm sideeffect "@ atomic_cmpxchg\0Aldrex\09$1, [$3]\0Amov\09$0, #0\0Ateq\09$1, $4\0Astrexeq $0, $5, [$3]\0A", "=&r,=&r,=*Qo,r,Ir,r,*Qo,~{cc}"(ptr elementtype(i32) %565, ptr %565, i32 %566, i32 0, ptr elementtype(i32) %565) #15, !srcloc !22
  %571 = extractvalue { i32, i32 } %570, 0
  %572 = icmp eq i32 %571, 0
  br i1 %572, label %573, label %569

573:                                              ; preds = %569
  %574 = extractvalue { i32, i32 } %570, 1
  tail call void asm sideeffect "dmb ish", "~{memory}"() #15, !srcloc !23
  %575 = icmp eq i32 %574, %566
  br i1 %575, label %576, label %579

576:                                              ; preds = %573
  %577 = getelementptr inbounds %struct.scsi_device, ptr %6, i32 0, i32 1
  %578 = load ptr, ptr %577, align 4
  tail call void @blk_mq_run_hw_queues(ptr noundef %578, i1 noundef zeroext true) #15
  br label %579

579:                                              ; preds = %576, %573, %564, %561, %503, %493, %488, %467, %462, %373, %349
  %580 = phi i8 [ 12, %467 ], [ %466, %462 ], [ 12, %488 ], [ 12, %493 ], [ 12, %503 ], [ %431, %561 ], [ %431, %564 ], [ %431, %573 ], [ %431, %576 ], [ 0, %373 ], [ 0, %349 ]
  ret i8 %580
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @scsi_commit_rqs(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.blk_mq_hw_ctx, ptr %0, i32 0, i32 9
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.Scsi_Host, ptr %3, i32 0, i32 11
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.scsi_host_template, ptr %5, i32 0, i32 2
  %7 = load ptr, ptr %6, align 8
  %8 = getelementptr inbounds %struct.blk_mq_hw_ctx, ptr %0, i32 0, i32 24
  %9 = load i32, ptr %8, align 4
  %10 = trunc i32 %9 to i16
  tail call void %7(ptr noundef %3, i16 noundef zeroext %10) #15
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @scsi_mq_get_budget(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.request_queue, ptr %0, i32 0, i32 10
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.scsi_device, ptr %3, i32 0, i32 4
  %5 = tail call i32 @sbitmap_get(ptr noundef %4) #15
  %6 = getelementptr inbounds %struct.scsi_device, ptr %3, i32 0, i32 5
  %7 = load volatile i32, ptr %6, align 4
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %45, label %9

9:                                                ; preds = %1
  %10 = icmp slt i32 %5, 0
  br i1 %10, label %47, label %11

11:                                               ; preds = %9
  %12 = tail call i32 @sbitmap_weight(ptr noundef %4) #15
  %13 = icmp sgt i32 %12, 1
  br i1 %13, label %18, label %14

14:                                               ; preds = %11
  tail call void asm sideeffect "dmb ish", "~{memory}"() #15, !srcloc !24
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %6) #15, !srcloc !13
  %15 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %6, ptr %6, i32 1, ptr elementtype(i32) %6) #15, !srcloc !25
  %16 = extractvalue { i32, i32 } %15, 0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #15, !srcloc !26
  %17 = icmp sgt i32 %16, 0
  br i1 %17, label %18, label %60

18:                                               ; preds = %14, %11
  %19 = getelementptr inbounds %struct.scsi_device, ptr %3, i32 0, i32 4, i32 4
  %20 = load ptr, ptr %19, align 4
  %21 = getelementptr inbounds %struct.scsi_device, ptr %3, i32 0, i32 4, i32 1
  %22 = load i32, ptr %21, align 4
  %23 = lshr i32 %5, %22
  %24 = getelementptr %struct.sbitmap_word, ptr %20, i32 %23, i32 4
  %25 = shl nsw i32 -1, %22
  %26 = xor i32 %25, -1
  %27 = and i32 %5, %26
  tail call void @_set_bit(i32 noundef %27, ptr noundef %24) #15
  %28 = getelementptr inbounds %struct.scsi_device, ptr %3, i32 0, i32 4, i32 5
  %29 = load ptr, ptr %28, align 4
  %30 = icmp eq ptr %29, null
  br i1 %30, label %47, label %31, !prof !9

31:                                               ; preds = %18
  %32 = getelementptr inbounds %struct.scsi_device, ptr %3, i32 0, i32 4, i32 3
  %33 = load i8, ptr %32, align 4, !range !15
  %34 = icmp eq i8 %33, 0
  br i1 %34, label %35, label %47, !prof !11

35:                                               ; preds = %31
  %36 = load i32, ptr %4, align 4
  %37 = icmp ugt i32 %36, %5
  br i1 %37, label %38, label %47, !prof !11

38:                                               ; preds = %35
  %39 = ptrtoint ptr %29 to i32
  %40 = tail call i32 @llvm.read_register.i32(metadata !0) #15
  %41 = inttoptr i32 %40 to ptr
  %42 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %41) #8, !srcloc !16
  %43 = add i32 %42, %39
  %44 = inttoptr i32 %43 to ptr
  store i32 %5, ptr %44, align 4
  br label %47

45:                                               ; preds = %1
  %46 = icmp sgt i32 %5, -1
  br i1 %46, label %60, label %47

47:                                               ; preds = %45, %38, %35, %31, %18, %9
  %48 = getelementptr inbounds %struct.scsi_device, ptr %3, i32 0, i32 6
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %48) #15, !srcloc !13
  %49 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %48, ptr %48, i32 1, ptr elementtype(i32) %48) #15, !srcloc !20
  tail call void asm sideeffect "dmb ish", "~{memory}"() #15, !srcloc !56
  %50 = tail call i32 @sbitmap_weight(ptr noundef %4) #15
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %52, label %60

52:                                               ; preds = %47
  %53 = getelementptr inbounds %struct.scsi_device, ptr %3, i32 0, i32 68
  %54 = load i32, ptr %53, align 4
  %55 = and i32 %54, -2
  %56 = icmp eq i32 %55, 8
  br i1 %56, label %60, label %57, !prof !11

57:                                               ; preds = %52
  %58 = getelementptr inbounds %struct.scsi_device, ptr %3, i32 0, i32 1
  %59 = load ptr, ptr %58, align 4
  tail call void @blk_mq_delay_run_hw_queues(ptr noundef %59, i32 noundef 3) #15
  br label %60

60:                                               ; preds = %57, %52, %47, %45, %14
  %61 = phi i32 [ %5, %45 ], [ -1, %47 ], [ -1, %57 ], [ -1, %52 ], [ %5, %14 ]
  ret i32 %61
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @scsi_mq_put_budget(ptr nocapture noundef readonly %0, i32 noundef %1) #0 {
  %3 = getelementptr inbounds %struct.request_queue, ptr %0, i32 0, i32 10
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.scsi_device, ptr %4, i32 0, i32 4
  %6 = getelementptr inbounds %struct.scsi_device, ptr %4, i32 0, i32 4, i32 4
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.scsi_device, ptr %4, i32 0, i32 4, i32 1
  %9 = load i32, ptr %8, align 4
  %10 = lshr i32 %1, %9
  %11 = getelementptr %struct.sbitmap_word, ptr %7, i32 %10, i32 4
  %12 = shl nsw i32 -1, %9
  %13 = xor i32 %12, -1
  %14 = and i32 %13, %1
  tail call void @_set_bit(i32 noundef %14, ptr noundef %11) #15
  %15 = getelementptr inbounds %struct.scsi_device, ptr %4, i32 0, i32 4, i32 5
  %16 = load ptr, ptr %15, align 4
  %17 = icmp eq ptr %16, null
  br i1 %17, label %32, label %18, !prof !9

18:                                               ; preds = %2
  %19 = getelementptr inbounds %struct.scsi_device, ptr %4, i32 0, i32 4, i32 3
  %20 = load i8, ptr %19, align 4, !range !15
  %21 = icmp eq i8 %20, 0
  br i1 %21, label %22, label %32, !prof !11

22:                                               ; preds = %18
  %23 = load i32, ptr %5, align 4
  %24 = icmp ugt i32 %23, %1
  br i1 %24, label %25, label %32, !prof !11

25:                                               ; preds = %22
  %26 = ptrtoint ptr %16 to i32
  %27 = tail call i32 @llvm.read_register.i32(metadata !0) #15
  %28 = inttoptr i32 %27 to ptr
  %29 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %28) #8, !srcloc !16
  %30 = add i32 %29, %26
  %31 = inttoptr i32 %30 to ptr
  store i32 %1, ptr %31, align 4
  br label %32

32:                                               ; preds = %25, %22, %18, %2
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn writeonly uwtable(sync)
define internal void @scsi_mq_set_rq_budget_token(ptr nocapture noundef writeonly %0, i32 noundef %1) #9 {
  %3 = getelementptr %struct.request, ptr %0, i32 1, i32 23, i32 0, i32 1
  store i32 %1, ptr %3, align 4
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define internal i32 @scsi_mq_get_rq_budget_token(ptr nocapture noundef readonly %0) #10 {
  %2 = getelementptr %struct.request, ptr %0, i32 1, i32 23, i32 0, i32 1
  %3 = load i32, ptr %2, align 4
  ret i32 %3
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @scsi_timeout(ptr noundef %0, i1 noundef zeroext %1) #0 {
  br i1 %1, label %5, label %3

3:                                                ; preds = %2
  %4 = tail call i32 @scsi_times_out(ptr noundef %0) #15
  br label %5

5:                                                ; preds = %3, %2
  %6 = phi i32 [ %4, %3 ], [ 1, %2 ]
  ret i32 %6
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @scsi_mq_poll(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1) #0 {
  %3 = getelementptr inbounds %struct.blk_mq_hw_ctx, ptr %0, i32 0, i32 9
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.Scsi_Host, ptr %4, i32 0, i32 11
  %6 = load ptr, ptr %5, align 8
  %7 = getelementptr inbounds %struct.scsi_host_template, ptr %6, i32 0, i32 23
  %8 = load ptr, ptr %7, align 4
  %9 = icmp eq ptr %8, null
  br i1 %9, label %14, label %10

10:                                               ; preds = %2
  %11 = getelementptr inbounds %struct.blk_mq_hw_ctx, ptr %0, i32 0, i32 24
  %12 = load i32, ptr %11, align 4
  %13 = tail call i32 %8(ptr noundef %4, i32 noundef %12) #15
  br label %14

14:                                               ; preds = %10, %2
  %15 = phi i32 [ %13, %10 ], [ 0, %2 ]
  ret i32 %15
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @scsi_complete(ptr noundef %0) #0 {
  %2 = getelementptr %struct.request, ptr %0, i32 1
  %3 = getelementptr %struct.request, ptr %0, i32 1, i32 10
  store volatile ptr %3, ptr %3, align 4
  %4 = getelementptr %struct.request, ptr %0, i32 1, i32 11
  store ptr %3, ptr %4, align 4
  %5 = getelementptr inbounds %struct.scsi_cmnd, ptr %2, i32 0, i32 1
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.scsi_device, ptr %6, i32 0, i32 52
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %7) #15, !srcloc !13
  %8 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %7, ptr %7, i32 1, ptr elementtype(i32) %7) #15, !srcloc !20
  %9 = getelementptr %struct.request, ptr %0, i32 2, i32 11
  %10 = load i32, ptr %9, align 4
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %16, label %12

12:                                               ; preds = %1
  %13 = load ptr, ptr %5, align 4
  %14 = getelementptr inbounds %struct.scsi_device, ptr %13, i32 0, i32 53
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %14) #15, !srcloc !13
  %15 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %14, ptr %14, i32 1, ptr elementtype(i32) %14) #15, !srcloc !20
  br label %16

16:                                               ; preds = %12, %1
  %17 = tail call i32 @scsi_decide_disposition(ptr noundef %2) #15
  %18 = icmp eq i32 %17, 8194
  br i1 %18, label %37, label %19

19:                                               ; preds = %16
  %20 = getelementptr %struct.request, ptr %0, i32 1, i32 24, i32 0, i32 2
  %21 = load i32, ptr %20, align 4
  %22 = icmp eq i32 %21, -1
  br i1 %22, label %36, label %23

23:                                               ; preds = %19
  %24 = add nuw i32 %21, 1
  %25 = getelementptr %struct.request, ptr %0, i32 0, i32 7
  %26 = load i32, ptr %25, align 4
  %27 = mul i32 %26, %24
  %28 = getelementptr %struct.request, ptr %0, i32 1, i32 24
  %29 = load i32, ptr %28, align 4
  %30 = add i32 %29, %27
  %31 = load volatile i32, ptr @jiffies, align 64
  %32 = sub i32 %30, %31
  %33 = icmp slt i32 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %23
  %35 = udiv i32 %27, 100
  tail call void (ptr, ptr, ptr, ...) @scmd_printk(ptr noundef nonnull @.str.4, ptr noundef %2, ptr noundef nonnull @.str.13, i32 noundef %35) #15
  br label %37

36:                                               ; preds = %23, %19
  switch i32 %17, label %48 [
    i32 8198, label %43
    i32 8193, label %38
  ]

37:                                               ; preds = %34, %16
  tail call void @scsi_finish_command(ptr noundef %2) #15
  br label %49

38:                                               ; preds = %36
  %39 = load ptr, ptr %5, align 4
  %40 = getelementptr inbounds %struct.scsi_device, ptr %39, i32 0, i32 5
  %41 = getelementptr inbounds %struct.scsi_device, ptr %39, i32 0, i32 50
  %42 = load i32, ptr %41, align 8
  store volatile i32 %42, ptr %40, align 4
  tail call void @scsi_device_unbusy(ptr noundef %39, ptr noundef %2) #15
  store i32 0, ptr %9, align 4
  tail call void @blk_mq_requeue_request(ptr noundef %0, i1 noundef zeroext true) #15
  br label %49

43:                                               ; preds = %36
  %44 = load ptr, ptr %5, align 4
  %45 = getelementptr inbounds %struct.scsi_device, ptr %44, i32 0, i32 5
  %46 = getelementptr inbounds %struct.scsi_device, ptr %44, i32 0, i32 50
  %47 = load i32, ptr %46, align 8
  store volatile i32 %47, ptr %45, align 4
  tail call void @scsi_device_unbusy(ptr noundef %44, ptr noundef %2) #15
  store i32 0, ptr %9, align 4
  tail call void @blk_mq_requeue_request(ptr noundef %0, i1 noundef zeroext true) #15
  br label %49

48:                                               ; preds = %36
  tail call void @scsi_eh_scmd_add(ptr noundef %2) #15
  br label %49

49:                                               ; preds = %48, %43, %38, %37
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn writeonly uwtable(sync)
define internal i32 @scsi_init_hctx(ptr nocapture noundef writeonly %0, ptr noundef %1, i32 noundef %2) #9 {
  %4 = getelementptr inbounds %struct.blk_mq_hw_ctx, ptr %0, i32 0, i32 9
  store ptr %1, ptr %4, align 8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @scsi_mq_init_request(ptr nocapture noundef readonly %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) #0 {
  %5 = getelementptr inbounds %struct.blk_mq_tag_set, ptr %0, i32 0, i32 10
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr %struct.request, ptr %1, i32 1
  %8 = load ptr, ptr @scsi_sense_cache, align 4
  %9 = tail call noalias align 8 ptr @kmem_cache_alloc(ptr noundef %8, i32 noundef 3264) #15
  %10 = getelementptr %struct.request, ptr %1, i32 2, i32 1
  store ptr %9, ptr %10, align 4
  %11 = icmp eq ptr %9, null
  br i1 %11, label %42, label %12

12:                                               ; preds = %4
  %13 = getelementptr %struct.request, ptr %1, i32 1, i32 9
  store ptr %9, ptr %13, align 4
  %14 = getelementptr inbounds %struct.Scsi_Host, ptr %6, i32 0, i32 41
  %15 = load i32, ptr %14, align 4
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %30, label %17

17:                                               ; preds = %12
  %18 = getelementptr i8, ptr %7, i32 236
  %19 = getelementptr inbounds %struct.Scsi_Host, ptr %6, i32 0, i32 11
  %20 = load ptr, ptr %19, align 8
  %21 = load i32, ptr %20, align 8
  %22 = getelementptr i8, ptr %18, i32 %21
  %23 = getelementptr inbounds %struct.Scsi_Host, ptr %6, i32 0, i32 28
  %24 = load i16, ptr %23, align 2
  %25 = tail call i16 @llvm.umin.i16(i16 %24, i16 2) #15
  %26 = mul nuw nsw i16 %25, 20
  %27 = zext i16 %26 to i32
  %28 = getelementptr i8, ptr %22, i32 %27
  %29 = getelementptr %struct.request, ptr %1, i32 1, i32 27
  store ptr %28, ptr %29, align 4
  br label %30

30:                                               ; preds = %17, %12
  %31 = getelementptr inbounds %struct.Scsi_Host, ptr %6, i32 0, i32 11
  %32 = load ptr, ptr %31, align 8
  %33 = getelementptr inbounds %struct.scsi_host_template, ptr %32, i32 0, i32 7
  %34 = load ptr, ptr %33, align 4
  %35 = icmp eq ptr %34, null
  br i1 %35, label %42, label %36

36:                                               ; preds = %30
  %37 = tail call i32 %34(ptr noundef %6, ptr noundef %7) #15
  %38 = icmp slt i32 %37, 0
  br i1 %38, label %39, label %42

39:                                               ; preds = %36
  %40 = load ptr, ptr @scsi_sense_cache, align 4
  %41 = load ptr, ptr %10, align 4
  tail call void @kmem_cache_free(ptr noundef %40, ptr noundef %41) #15
  br label %42

42:                                               ; preds = %39, %36, %30, %4
  %43 = phi i32 [ -12, %4 ], [ %37, %39 ], [ %37, %36 ], [ 0, %30 ]
  ret i32 %43
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @scsi_mq_exit_request(ptr nocapture noundef readonly %0, ptr noundef %1, i32 noundef %2) #0 {
  %4 = getelementptr inbounds %struct.blk_mq_tag_set, ptr %0, i32 0, i32 10
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.Scsi_Host, ptr %5, i32 0, i32 11
  %7 = load ptr, ptr %6, align 8
  %8 = getelementptr inbounds %struct.scsi_host_template, ptr %7, i32 0, i32 8
  %9 = load ptr, ptr %8, align 8
  %10 = icmp eq ptr %9, null
  br i1 %10, label %14, label %11

11:                                               ; preds = %3
  %12 = getelementptr %struct.request, ptr %1, i32 1
  %13 = tail call i32 %9(ptr noundef %5, ptr noundef %12) #15
  br label %14

14:                                               ; preds = %11, %3
  %15 = load ptr, ptr @scsi_sense_cache, align 4
  %16 = getelementptr %struct.request, ptr %1, i32 2, i32 1
  %17 = load ptr, ptr %16, align 4
  tail call void @kmem_cache_free(ptr noundef %15, ptr noundef %17) #15
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @scsi_cleanup_rq(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.request, ptr %0, i32 0, i32 4
  %3 = load i32, ptr %2, align 8
  %4 = and i32 %3, 128
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %41, label %6

6:                                                ; preds = %1
  %7 = getelementptr %struct.request, ptr %0, i32 1
  %8 = getelementptr inbounds %struct.scsi_cmnd, ptr %7, i32 0, i32 17, i32 0, i32 1
  %9 = load i32, ptr %8, align 4
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %13, label %11

11:                                               ; preds = %6
  %12 = getelementptr %struct.request, ptr %0, i32 1, i32 26
  tail call void @sg_free_table_chained(ptr noundef %12, i32 noundef 2) #15
  br label %13

13:                                               ; preds = %11, %6
  %14 = getelementptr %struct.request, ptr %0, i32 1, i32 27
  %15 = load ptr, ptr %14, align 4
  %16 = icmp eq ptr %15, null
  br i1 %16, label %22, label %17

17:                                               ; preds = %13
  %18 = getelementptr inbounds %struct.sg_table, ptr %15, i32 0, i32 1
  %19 = load i32, ptr %18, align 4
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %22, label %21

21:                                               ; preds = %17
  tail call void @sg_free_table_chained(ptr noundef nonnull %15, i32 noundef 1) #15
  br label %22

22:                                               ; preds = %21, %17, %13
  %23 = getelementptr %struct.request, ptr %0, i32 0, i32 3
  %24 = load i32, ptr %23, align 4
  %25 = and i32 %24, 254
  %26 = icmp eq i32 %25, 34
  br i1 %26, label %38, label %27

27:                                               ; preds = %22
  %28 = load ptr, ptr %0, align 8
  %29 = getelementptr inbounds %struct.request_queue, ptr %28, i32 0, i32 15
  %30 = load ptr, ptr %29, align 8
  %31 = getelementptr inbounds %struct.gendisk, ptr %30, i32 0, i32 10
  %32 = load ptr, ptr %31, align 8
  %33 = load ptr, ptr %32, align 4
  %34 = getelementptr inbounds %struct.scsi_driver, ptr %33, i32 0, i32 3
  %35 = load ptr, ptr %34, align 4
  %36 = icmp eq ptr %35, null
  br i1 %36, label %38, label %37

37:                                               ; preds = %27
  tail call void %35(ptr noundef %7) #15
  br label %38

38:                                               ; preds = %37, %27, %22
  %39 = load i32, ptr %2, align 8
  %40 = and i32 %39, -129
  store i32 %40, ptr %2, align 8
  br label %41

41:                                               ; preds = %38, %1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal zeroext i1 @scsi_mq_lld_busy(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.request_queue, ptr %0, i32 0, i32 10
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.request_queue, ptr %0, i32 0, i32 11
  %5 = load volatile i32, ptr %4, align 4
  %6 = and i32 %5, 2
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %30

8:                                                ; preds = %1
  %9 = load ptr, ptr %3, align 8
  %10 = getelementptr inbounds %struct.Scsi_Host, ptr %9, i32 0, i32 48
  %11 = load i32, ptr %10, align 4
  %12 = add i32 %11, -5
  %13 = icmp ult i32 %12, 3
  br i1 %13, label %30, label %14

14:                                               ; preds = %8
  %15 = getelementptr inbounds %struct.Scsi_Host, ptr %9, i32 0, i32 36
  %16 = load i16, ptr %15, align 8
  %17 = and i16 %16, 16
  %18 = icmp eq i16 %17, 0
  br i1 %18, label %19, label %30

19:                                               ; preds = %14
  %20 = getelementptr inbounds %struct.scsi_device, ptr %3, i32 0, i32 4
  %21 = tail call i32 @sbitmap_weight(ptr noundef %20) #15
  %22 = getelementptr inbounds %struct.scsi_device, ptr %3, i32 0, i32 9
  %23 = load i16, ptr %22, align 4
  %24 = zext i16 %23 to i32
  %25 = icmp slt i32 %21, %24
  br i1 %25, label %26, label %30

26:                                               ; preds = %19
  %27 = getelementptr inbounds %struct.scsi_device, ptr %3, i32 0, i32 5
  %28 = load volatile i32, ptr %27, align 4
  %29 = icmp sgt i32 %28, 0
  br label %30

30:                                               ; preds = %26, %19, %14, %8, %1
  %31 = phi i1 [ false, %1 ], [ true, %14 ], [ true, %19 ], [ %29, %26 ], [ true, %8 ]
  ret i1 %31
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @scsi_map_queues(ptr noundef %0) #0 {
  %2 = getelementptr i8, ptr %0, i32 -8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.scsi_host_template, ptr %3, i32 0, i32 22
  %5 = load ptr, ptr %4, align 8
  %6 = icmp eq ptr %5, null
  br i1 %6, label %10, label %7

7:                                                ; preds = %1
  %8 = getelementptr i8, ptr %0, i32 -96
  %9 = tail call i32 %5(ptr noundef %8) #15
  br label %12

10:                                               ; preds = %1
  %11 = tail call i32 @blk_mq_map_queues(ptr noundef %0) #15
  br label %12

12:                                               ; preds = %10, %7
  %13 = phi i32 [ %9, %7 ], [ %11, %10 ]
  ret i32 %13
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @scsi_show_rq(ptr noundef, ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc zeroext i8 @scsi_device_state_check(ptr noundef %0, ptr noundef readonly %1) unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.scsi_device, ptr %0, i32 0, i32 68
  %4 = load i32, ptr %3, align 4
  switch i32 %4, label %25 [
    i32 1, label %33
    i32 6, label %5
    i32 7, label %5
    i32 4, label %10
    i32 8, label %11
    i32 9, label %11
    i32 5, label %12
  ]

5:                                                ; preds = %2, %2
  %6 = getelementptr inbounds %struct.scsi_device, ptr %0, i32 0, i32 43
  %7 = load i8, ptr %6, align 8, !range !15
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %9, label %33

9:                                                ; preds = %5
  store i8 1, ptr %6, align 8
  tail call void (ptr, ptr, ptr, ptr, ...) @sdev_prefix_printk(ptr noundef nonnull @.str.4, ptr noundef %0, ptr noundef null, ptr noundef nonnull @.str.15) #15
  br label %33

10:                                               ; preds = %2
  tail call void (ptr, ptr, ptr, ptr, ...) @sdev_prefix_printk(ptr noundef nonnull @.str.4, ptr noundef %0, ptr noundef null, ptr noundef nonnull @.str.16) #15
  br label %33

11:                                               ; preds = %2, %2
  br label %33

12:                                               ; preds = %2
  %13 = icmp eq ptr %1, null
  br i1 %13, label %24, label %14

14:                                               ; preds = %12
  %15 = getelementptr inbounds %struct.request, ptr %1, i32 0, i32 4
  %16 = load i32, ptr %15, align 8
  %17 = and i32 %16, 32768
  %18 = icmp eq i32 %17, 0
  %19 = load i1, ptr @scsi_device_state_check.__already_done, align 1
  %20 = xor i1 %19, true
  %21 = select i1 %18, i1 %20, i1 false
  br i1 %21, label %22, label %23, !prof !9

22:                                               ; preds = %14
  store i1 true, ptr @scsi_device_state_check.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 1270, i32 noundef 9, ptr noundef null) #15
  br label %23

23:                                               ; preds = %22, %14
  br i1 %18, label %33, label %24

24:                                               ; preds = %23, %12
  br label %33

25:                                               ; preds = %2
  %26 = icmp eq ptr %1, null
  br i1 %26, label %32, label %27

27:                                               ; preds = %25
  %28 = getelementptr inbounds %struct.request, ptr %1, i32 0, i32 4
  %29 = load i32, ptr %28, align 8
  %30 = and i32 %29, 32768
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %33, label %32

32:                                               ; preds = %27, %25
  br label %33

33:                                               ; preds = %32, %27, %24, %23, %11, %10, %9, %5, %2
  %34 = phi i8 [ 0, %32 ], [ 0, %24 ], [ 9, %11 ], [ 10, %10 ], [ 0, %2 ], [ 10, %9 ], [ 10, %5 ], [ 9, %23 ], [ 10, %27 ]
  ret i8 %34
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @blk_mq_start_request(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_irq(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @scsi_host_busy(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_scsi_dispatch_cmd_start(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_scsi_dispatch_cmd_error(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @blk_mq_delay_run_hw_queues(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sbitmap_get(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sbitmap_weight(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @scsi_times_out(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @scsi_decide_disposition(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @scsi_finish_command(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @scsi_eh_scmd_add(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kmem_cache_free(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @kmem_cache_alloc(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @blk_mq_map_queues(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #11

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #12

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #13

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @scsi_rescan_device(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kobject_uevent_env(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.thread.pointer() #14

; Function Attrs: null_pointer_is_valid
declare dso_local void @blk_mq_quiesce_queue_nowait(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @blk_mq_quiesce_queue(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @blk_mq_wait_quiesce_done(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__kmap_local_page_prot(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kunmap_local_indexed(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #13

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i8 @llvm.umin.i8(i8, i8) #13

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.umin.i16(i16, i16) #13

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.umax.i16(i16, i16) #13

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #4

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { argmemonly nofree nounwind willreturn }
attributes #4 = { argmemonly nofree nounwind willreturn writeonly }
attributes #5 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nofree nounwind null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nounwind readonly }
attributes #9 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #10 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #11 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #12 = { null_pointer_is_valid allocsize(0) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #13 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #14 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #15 = { nounwind }
attributes #16 = { nounwind allocsize(0) }
attributes #17 = { nounwind allocsize(2) }
attributes #18 = { cold nounwind }

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
!9 = !{!"branch_weights", i32 1, i32 2000}
!10 = !{i64 2149294698}
!11 = !{!"branch_weights", i32 2000, i32 1}
!12 = !{i64 2149294915}
!13 = !{i64 806306, i64 2148296277, i64 2148296303, i64 2148296350, i64 2148296372, i64 2148296400, i64 2148296420}
!14 = !{i64 2148310049, i64 2148310075, i64 2148310104, i64 2148310138, i64 2148310169, i64 2148310192}
!15 = !{i8 0, i8 2}
!16 = !{i64 730684}
!17 = !{!"auto-init"}
!18 = !{i64 711984, i64 712045}
!19 = !{i64 715001}
!20 = !{i64 2148307692, i64 2148307718, i64 2148307747, i64 2148307781, i64 2148307812, i64 2148307835}
!21 = !{i64 2148421118}
!22 = !{i64 792369, i64 792393, i64 792414, i64 792431, i64 792448}
!23 = !{i64 2148421318}
!24 = !{i64 2148408371}
!25 = !{i64 2148310733, i64 2148310765, i64 2148310794, i64 2148310828, i64 2148310859, i64 2148310882}
!26 = !{i64 2148408574}
!27 = !{i64 2154031791, i64 2154032279, i64 2154031828, i64 2154031884, i64 2154031918, i64 2154031942, i64 2154031983, i64 2154032004, i64 2154032032, i64 2154032066}
!28 = !{i64 2153509818, i64 2153510310, i64 2153509855, i64 2153509911, i64 2153509945, i64 2153509969, i64 2153510010, i64 2153510031, i64 2153510059, i64 2153510093}
!29 = !{i64 2154038925, i64 2154039414, i64 2154038962, i64 2154039018, i64 2154039052, i64 2154039076, i64 2154039117, i64 2154039138, i64 2154039166, i64 2154039200}
!30 = !{i64 2153951187}
!31 = !{i64 2153951349}
!32 = !{i64 2154067114, i64 2154067603, i64 2154067151, i64 2154067207, i64 2154067241, i64 2154067265, i64 2154067306, i64 2154067327, i64 2154067355, i64 2154067389}
!33 = !{i64 2154103141}
!34 = !{i64 817680, i64 817701, i64 817724, i64 817743, i64 817762}
!35 = !{i64 2154103516}
!36 = !{i64 2154104407}
!37 = !{i64 2154104782}
!38 = !{i64 714716}
!39 = !{i64 2152502406}
!40 = !{i64 2151109555}
!41 = !{i64 2151109762}
!42 = !{i64 2152505031}
!43 = !{i64 2148974910}
!44 = !{i64 2148970734}
!45 = !{i64 2148970809, i64 2148970836, i64 2148970883, i64 2148970905, i64 2148970933, i64 2148970953}
!46 = !{i64 712229}
!47 = !{i64 2148999054}
!48 = !{i64 2148405538}
!49 = !{i64 2148308376, i64 2148308408, i64 2148308437, i64 2148308471, i64 2148308502, i64 2148308525}
!50 = !{i64 2148405741}
!51 = !{i64 2154046961, i64 2154047450, i64 2154046998, i64 2154047054, i64 2154047088, i64 2154047112, i64 2154047153, i64 2154047174, i64 2154047202, i64 2154047236}
!52 = !{i64 2153913855}
!53 = !{i64 2153914019}
!54 = !{i64 2153934627}
!55 = !{i64 2153934801}
!56 = !{i64 2154056134}
