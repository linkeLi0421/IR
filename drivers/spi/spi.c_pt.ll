; ModuleID = '/llk/IR/drivers/spi/spi.c_pt.bc'
source_filename = "../drivers/spi/spi.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___tracepoint_spi_transfer_start:\09\09\09\09\09"
module asm "\09.asciz \09\22__tracepoint_spi_transfer_start\22\09\09\09\09\09"
module asm "__kstrtabns___tracepoint_spi_transfer_start:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___traceiter_spi_transfer_start:\09\09\09\09\09"
module asm "\09.asciz \09\22__traceiter_spi_transfer_start\22\09\09\09\09\09"
module asm "__kstrtabns___traceiter_spi_transfer_start:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___SCK__tp_func_spi_transfer_start:\09\09\09\09\09"
module asm "\09.asciz \09\22__SCK__tp_func_spi_transfer_start\22\09\09\09\09\09"
module asm "__kstrtabns___SCK__tp_func_spi_transfer_start:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___tracepoint_spi_transfer_stop:\09\09\09\09\09"
module asm "\09.asciz \09\22__tracepoint_spi_transfer_stop\22\09\09\09\09\09"
module asm "__kstrtabns___tracepoint_spi_transfer_stop:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___traceiter_spi_transfer_stop:\09\09\09\09\09"
module asm "\09.asciz \09\22__traceiter_spi_transfer_stop\22\09\09\09\09\09"
module asm "__kstrtabns___traceiter_spi_transfer_stop:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___SCK__tp_func_spi_transfer_stop:\09\09\09\09\09"
module asm "\09.asciz \09\22__SCK__tp_func_spi_transfer_stop\22\09\09\09\09\09"
module asm "__kstrtabns___SCK__tp_func_spi_transfer_stop:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_spi_get_device_id:\09\09\09\09\09"
module asm "\09.asciz \09\22spi_get_device_id\22\09\09\09\09\09"
module asm "__kstrtabns_spi_get_device_id:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_spi_bus_type:\09\09\09\09\09"
module asm "\09.asciz \09\22spi_bus_type\22\09\09\09\09\09"
module asm "__kstrtabns_spi_bus_type:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___spi_register_driver:\09\09\09\09\09"
module asm "\09.asciz \09\22__spi_register_driver\22\09\09\09\09\09"
module asm "__kstrtabns___spi_register_driver:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_spi_new_device:\09\09\09\09\09"
module asm "\09.asciz \09\22spi_new_device\22\09\09\09\09\09"
module asm "__kstrtabns_spi_new_device:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_spi_unregister_device:\09\09\09\09\09"
module asm "\09.asciz \09\22spi_unregister_device\22\09\09\09\09\09"
module asm "__kstrtabns_spi_unregister_device:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_spi_delay_to_ns:\09\09\09\09\09"
module asm "\09.asciz \09\22spi_delay_to_ns\22\09\09\09\09\09"
module asm "__kstrtabns_spi_delay_to_ns:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_spi_delay_exec:\09\09\09\09\09"
module asm "\09.asciz \09\22spi_delay_exec\22\09\09\09\09\09"
module asm "__kstrtabns_spi_delay_exec:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_spi_finalize_current_transfer:\09\09\09\09\09"
module asm "\09.asciz \09\22spi_finalize_current_transfer\22\09\09\09\09\09"
module asm "__kstrtabns_spi_finalize_current_transfer:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_spi_take_timestamp_pre:\09\09\09\09\09"
module asm "\09.asciz \09\22spi_take_timestamp_pre\22\09\09\09\09\09"
module asm "__kstrtabns_spi_take_timestamp_pre:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_spi_take_timestamp_post:\09\09\09\09\09"
module asm "\09.asciz \09\22spi_take_timestamp_post\22\09\09\09\09\09"
module asm "__kstrtabns_spi_take_timestamp_post:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_spi_get_next_queued_message:\09\09\09\09\09"
module asm "\09.asciz \09\22spi_get_next_queued_message\22\09\09\09\09\09"
module asm "__kstrtabns_spi_get_next_queued_message:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_spi_finalize_current_message:\09\09\09\09\09"
module asm "\09.asciz \09\22spi_finalize_current_message\22\09\09\09\09\09"
module asm "__kstrtabns_spi_finalize_current_message:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_spi_new_ancillary_device:\09\09\09\09\09"
module asm "\09.asciz \09\22spi_new_ancillary_device\22\09\09\09\09\09"
module asm "__kstrtabns_spi_new_ancillary_device:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___spi_alloc_controller:\09\09\09\09\09"
module asm "\09.asciz \09\22__spi_alloc_controller\22\09\09\09\09\09"
module asm "__kstrtabns___spi_alloc_controller:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___devm_spi_alloc_controller:\09\09\09\09\09"
module asm "\09.asciz \09\22__devm_spi_alloc_controller\22\09\09\09\09\09"
module asm "__kstrtabns___devm_spi_alloc_controller:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_spi_register_controller:\09\09\09\09\09"
module asm "\09.asciz \09\22spi_register_controller\22\09\09\09\09\09"
module asm "__kstrtabns_spi_register_controller:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_devm_spi_register_controller:\09\09\09\09\09"
module asm "\09.asciz \09\22devm_spi_register_controller\22\09\09\09\09\09"
module asm "__kstrtabns_devm_spi_register_controller:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_spi_unregister_controller:\09\09\09\09\09"
module asm "\09.asciz \09\22spi_unregister_controller\22\09\09\09\09\09"
module asm "__kstrtabns_spi_unregister_controller:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_spi_controller_suspend:\09\09\09\09\09"
module asm "\09.asciz \09\22spi_controller_suspend\22\09\09\09\09\09"
module asm "__kstrtabns_spi_controller_suspend:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_spi_controller_resume:\09\09\09\09\09"
module asm "\09.asciz \09\22spi_controller_resume\22\09\09\09\09\09"
module asm "__kstrtabns_spi_controller_resume:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_spi_split_transfers_maxsize:\09\09\09\09\09"
module asm "\09.asciz \09\22spi_split_transfers_maxsize\22\09\09\09\09\09"
module asm "__kstrtabns_spi_split_transfers_maxsize:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_spi_setup:\09\09\09\09\09"
module asm "\09.asciz \09\22spi_setup\22\09\09\09\09\09"
module asm "__kstrtabns_spi_setup:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_spi_async:\09\09\09\09\09"
module asm "\09.asciz \09\22spi_async\22\09\09\09\09\09"
module asm "__kstrtabns_spi_async:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_spi_sync:\09\09\09\09\09"
module asm "\09.asciz \09\22spi_sync\22\09\09\09\09\09"
module asm "__kstrtabns_spi_sync:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_spi_sync_locked:\09\09\09\09\09"
module asm "\09.asciz \09\22spi_sync_locked\22\09\09\09\09\09"
module asm "__kstrtabns_spi_sync_locked:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_spi_bus_lock:\09\09\09\09\09"
module asm "\09.asciz \09\22spi_bus_lock\22\09\09\09\09\09"
module asm "__kstrtabns_spi_bus_lock:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_spi_bus_unlock:\09\09\09\09\09"
module asm "\09.asciz \09\22spi_bus_unlock\22\09\09\09\09\09"
module asm "__kstrtabns_spi_bus_unlock:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_spi_write_then_read:\09\09\09\09\09"
module asm "\09.asciz \09\22spi_write_then_read\22\09\09\09\09\09"
module asm "__kstrtabns_spi_write_then_read:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.static_call_key = type { ptr }
%struct.tracepoint = type { ptr, %struct.static_key, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.static_key = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.trace_event_fields = type { ptr, %union.anon.97 }
%union.anon.97 = type { %struct.anon.98 }
%struct.anon.98 = type { ptr, i32, i32, i32, i32 }
%struct.trace_event_class = type { ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr }
%struct.list_head = type { ptr, ptr }
%struct.trace_event_functions = type { ptr, ptr, ptr, ptr }
%struct.trace_event_call = type { %struct.list_head, ptr, %union.anon.99, %struct.trace_event, ptr, ptr, %union.anon.100, ptr, i32, i32, ptr, ptr, ptr }
%union.anon.99 = type { ptr }
%struct.trace_event = type { %struct.hlist_node, %struct.list_head, i32, ptr }
%struct.hlist_node = type { ptr, ptr }
%union.anon.100 = type { ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.bus_type = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.lock_class_key, i8 }
%struct.lock_class_key = type {}
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.class = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.attribute_group = type { ptr, ptr, ptr, ptr, ptr }
%struct.device_attribute = type { %struct.attribute, ptr, ptr }
%struct.attribute = type { ptr, i16 }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.cpumask = type { [1 x i32] }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.tracepoint_func = type { ptr, ptr, i32 }
%struct.trace_event_buffer = type { ptr, ptr, ptr, ptr, i32, ptr }
%struct.trace_event_file = type { %struct.list_head, ptr, ptr, ptr, ptr, ptr, %struct.list_head, i32, %struct.atomic_t, %struct.atomic_t }
%struct.spi_controller = type { %struct.device, %struct.list_head, i16, i16, i16, i32, i32, i32, i32, i32, i16, i8, i8, ptr, ptr, %struct.mutex, %struct.mutex, %struct.spinlock, %struct.mutex, i8, ptr, ptr, ptr, ptr, ptr, ptr, i8, ptr, %struct.kthread_work, %struct.spinlock, %struct.list_head, ptr, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, %struct.completion, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, %struct.spi_statistics, ptr, ptr, ptr, ptr, ptr, i8, i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.kthread_work = type { %struct.list_head, ptr, ptr, i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.spi_statistics = type { %struct.spinlock, i32, i32, i32, i32, i32, i32, i32, i64, i64, i64, [17 x i32], i32 }
%struct.trace_event_raw_spi_controller = type { %struct.trace_entry, i32, [0 x i8] }
%struct.trace_entry = type { i16, i8, i8, i32 }
%struct.spi_device = type { %struct.device, ptr, ptr, i32, i8, i8, i8, i32, i32, ptr, ptr, [32 x i8], ptr, i32, ptr, %struct.spi_delay, %struct.spi_delay, %struct.spi_delay, %struct.spi_delay, %struct.spi_statistics }
%struct.spi_delay = type { i16, i8 }
%struct.trace_event_raw_spi_setup = type { %struct.trace_entry, i32, i32, i32, i32, i32, i32, [0 x i8] }
%struct.trace_event_raw_spi_set_cs = type { %struct.trace_entry, i32, i32, i32, i8, [0 x i8] }
%struct.spi_message = type { %struct.list_head, ptr, i8, ptr, ptr, i32, i32, i32, %struct.list_head, ptr, %struct.list_head }
%struct.trace_event_raw_spi_message = type { %struct.trace_entry, i32, i32, ptr, [0 x i8] }
%struct.trace_event_raw_spi_message_done = type { %struct.trace_entry, i32, i32, ptr, i32, i32, [0 x i8] }
%struct.spi_transfer = type { ptr, ptr, i32, i32, i32, %struct.sg_table, %struct.sg_table, i8, i8, %struct.spi_delay, %struct.spi_delay, %struct.spi_delay, i32, i32, i32, i32, ptr, i8, %struct.list_head, i16 }
%struct.sg_table = type { ptr, i32, i32 }
%struct.trace_event_raw_spi_transfer = type { %struct.trace_entry, i32, i32, ptr, i32, i32, i32, [0 x i8] }
%struct.spi_device_id = type { [32 x i8], i32 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.spi_driver = type { ptr, ptr, ptr, ptr, %struct.device_driver }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.spi_board_info = type { [32 x i8], ptr, ptr, ptr, i32, i32, i16, i16, i32 }
%struct.device_node = type { ptr, i32, ptr, %struct.fwnode_handle, ptr, ptr, ptr, ptr, ptr, %struct.kobject, i32, ptr }
%struct.fwnode_handle = type { ptr, ptr, ptr, %struct.list_head, %struct.list_head, i8 }
%struct.boardinfo = type { %struct.list_head, %struct.spi_board_info }
%struct.page = type { i32, %union.anon.1, %union.anon.61, %struct.atomic_t }
%union.anon.1 = type { %struct.anon }
%struct.anon = type { %struct.list_head, ptr, i32, i32 }
%union.anon.61 = type { %struct.atomic_t }
%struct.scatterlist = type { i32, i32, i32, i32, i32 }
%struct.ptp_system_timestamp = type { %struct.timespec64, %struct.timespec64 }
%struct.timespec64 = type { i64, i32 }
%struct.spi_res = type { %struct.list_head, ptr, [0 x i64] }
%struct.thread_info = type { i32, i32, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], [4 x i8], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.dma_device = type { %struct.kref, i32, i32, %struct.list_head, %struct.list_head, %struct.dma_filter, %struct.dma_cap_mask_t, i32, i16, i16, i32, i32, i32, i32, i32, ptr, ptr, %struct.ida, %struct.mutex, i32, i32, i32, i32, i32, i32, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dma_filter = type { ptr, i32, ptr }
%struct.dma_cap_mask_t = type { [1 x i32] }
%struct.ida = type { %struct.xarray }
%struct.spi_controller_mem_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.kthread_worker = type { i32, %struct.raw_spinlock, %struct.list_head, %struct.list_head, ptr, ptr }
%struct.spi_replaced_transfers = type { ptr, ptr, %struct.list_head, ptr, i32, [0 x %struct.spi_transfer] }
%struct.trace_iterator = type { ptr, ptr, ptr, ptr, i32, %struct.mutex, ptr, i32, ptr, i32, ptr, i32, %struct.trace_seq, [1 x %struct.cpumask], i8, %struct.trace_seq, ptr, i32, i32, i32, i32, i64, i64, i32 }
%struct.trace_seq = type { [4096 x i8], %struct.seq_buf, i32 }
%struct.seq_buf = type { ptr, i32, i32, i64 }

@__tpstrtab_spi_controller_idle = internal constant [20 x i8] c"spi_controller_idle\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_spi_controller_idle = dso_local global %struct.static_call_key { ptr @__traceiter_spi_controller_idle }, align 4
@__tracepoint_spi_controller_idle = dso_local global %struct.tracepoint { ptr @__tpstrtab_spi_controller_idle, %struct.static_key zeroinitializer, ptr @__SCK__tp_func_spi_controller_idle, ptr null, ptr @__traceiter_spi_controller_idle, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_spi_controller_idle = internal constant ptr @__tracepoint_spi_controller_idle, section "__tracepoints_ptrs", align 4
@__tpstrtab_spi_controller_busy = internal constant [20 x i8] c"spi_controller_busy\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_spi_controller_busy = dso_local global %struct.static_call_key { ptr @__traceiter_spi_controller_busy }, align 4
@__tracepoint_spi_controller_busy = dso_local global %struct.tracepoint { ptr @__tpstrtab_spi_controller_busy, %struct.static_key zeroinitializer, ptr @__SCK__tp_func_spi_controller_busy, ptr null, ptr @__traceiter_spi_controller_busy, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_spi_controller_busy = internal constant ptr @__tracepoint_spi_controller_busy, section "__tracepoints_ptrs", align 4
@__tpstrtab_spi_setup = internal constant [10 x i8] c"spi_setup\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_spi_setup = dso_local global %struct.static_call_key { ptr @__traceiter_spi_setup }, align 4
@__tracepoint_spi_setup = dso_local global %struct.tracepoint { ptr @__tpstrtab_spi_setup, %struct.static_key zeroinitializer, ptr @__SCK__tp_func_spi_setup, ptr null, ptr @__traceiter_spi_setup, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_spi_setup = internal constant ptr @__tracepoint_spi_setup, section "__tracepoints_ptrs", align 4
@__tpstrtab_spi_set_cs = internal constant [11 x i8] c"spi_set_cs\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_spi_set_cs = dso_local global %struct.static_call_key { ptr @__traceiter_spi_set_cs }, align 4
@__tracepoint_spi_set_cs = dso_local global %struct.tracepoint { ptr @__tpstrtab_spi_set_cs, %struct.static_key zeroinitializer, ptr @__SCK__tp_func_spi_set_cs, ptr null, ptr @__traceiter_spi_set_cs, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_spi_set_cs = internal constant ptr @__tracepoint_spi_set_cs, section "__tracepoints_ptrs", align 4
@__tpstrtab_spi_message_submit = internal constant [19 x i8] c"spi_message_submit\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_spi_message_submit = dso_local global %struct.static_call_key { ptr @__traceiter_spi_message_submit }, align 4
@__tracepoint_spi_message_submit = dso_local global %struct.tracepoint { ptr @__tpstrtab_spi_message_submit, %struct.static_key zeroinitializer, ptr @__SCK__tp_func_spi_message_submit, ptr null, ptr @__traceiter_spi_message_submit, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_spi_message_submit = internal constant ptr @__tracepoint_spi_message_submit, section "__tracepoints_ptrs", align 4
@__tpstrtab_spi_message_start = internal constant [18 x i8] c"spi_message_start\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_spi_message_start = dso_local global %struct.static_call_key { ptr @__traceiter_spi_message_start }, align 4
@__tracepoint_spi_message_start = dso_local global %struct.tracepoint { ptr @__tpstrtab_spi_message_start, %struct.static_key zeroinitializer, ptr @__SCK__tp_func_spi_message_start, ptr null, ptr @__traceiter_spi_message_start, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_spi_message_start = internal constant ptr @__tracepoint_spi_message_start, section "__tracepoints_ptrs", align 4
@__tpstrtab_spi_message_done = internal constant [17 x i8] c"spi_message_done\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_spi_message_done = dso_local global %struct.static_call_key { ptr @__traceiter_spi_message_done }, align 4
@__tracepoint_spi_message_done = dso_local global %struct.tracepoint { ptr @__tpstrtab_spi_message_done, %struct.static_key zeroinitializer, ptr @__SCK__tp_func_spi_message_done, ptr null, ptr @__traceiter_spi_message_done, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_spi_message_done = internal constant ptr @__tracepoint_spi_message_done, section "__tracepoints_ptrs", align 4
@__tpstrtab_spi_transfer_start = internal constant [19 x i8] c"spi_transfer_start\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_spi_transfer_start = dso_local global %struct.static_call_key { ptr @__traceiter_spi_transfer_start }, align 4
@__tracepoint_spi_transfer_start = dso_local global %struct.tracepoint { ptr @__tpstrtab_spi_transfer_start, %struct.static_key zeroinitializer, ptr @__SCK__tp_func_spi_transfer_start, ptr null, ptr @__traceiter_spi_transfer_start, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_spi_transfer_start = internal constant ptr @__tracepoint_spi_transfer_start, section "__tracepoints_ptrs", align 4
@__tpstrtab_spi_transfer_stop = internal constant [18 x i8] c"spi_transfer_stop\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_spi_transfer_stop = dso_local global %struct.static_call_key { ptr @__traceiter_spi_transfer_stop }, align 4
@__tracepoint_spi_transfer_stop = dso_local global %struct.tracepoint { ptr @__tpstrtab_spi_transfer_stop, %struct.static_key zeroinitializer, ptr @__SCK__tp_func_spi_transfer_stop, ptr null, ptr @__traceiter_spi_transfer_stop, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_spi_transfer_stop = internal constant ptr @__tracepoint_spi_transfer_stop, section "__tracepoints_ptrs", align 4
@trace_event_fields_spi_controller = internal global [2 x %struct.trace_event_fields] [%struct.trace_event_fields { ptr @.str.24, %union.anon.97 { %struct.anon.98 { ptr @.str.25, i32 4, i32 4, i32 1, i32 0 } } }, %struct.trace_event_fields zeroinitializer], align 4
@event_class_spi_controller = internal global %struct.trace_event_class { ptr @.str, ptr @trace_event_raw_event_spi_controller, ptr @perf_trace_spi_controller, ptr @trace_event_reg, ptr @trace_event_fields_spi_controller, ptr null, %struct.list_head { ptr getelementptr (i8, ptr @event_class_spi_controller, i64 24), ptr getelementptr (i8, ptr @event_class_spi_controller, i64 24) }, ptr @trace_event_raw_init }, section ".ref.data", align 4
@trace_event_type_funcs_spi_controller = internal global %struct.trace_event_functions { ptr @trace_raw_output_spi_controller, ptr null, ptr null, ptr null }, align 4
@print_fmt_spi_controller = internal global [27 x i8] c"\22spi%d\22, (int)REC->bus_num\00", align 1
@event_spi_controller_idle = internal global %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_spi_controller, %union.anon.99 { ptr @__tracepoint_spi_controller_idle }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_spi_controller }, ptr @print_fmt_spi_controller, ptr null, %union.anon.100 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, align 4
@__event_spi_controller_idle = internal global ptr @event_spi_controller_idle, section "_ftrace_events", align 4
@event_spi_controller_busy = internal global %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_spi_controller, %union.anon.99 { ptr @__tracepoint_spi_controller_busy }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_spi_controller }, ptr @print_fmt_spi_controller, ptr null, %union.anon.100 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, align 4
@__event_spi_controller_busy = internal global ptr @event_spi_controller_busy, section "_ftrace_events", align 4
@trace_event_fields_spi_setup = internal global [7 x %struct.trace_event_fields] [%struct.trace_event_fields { ptr @.str.24, %union.anon.97 { %struct.anon.98 { ptr @.str.25, i32 4, i32 4, i32 1, i32 0 } } }, %struct.trace_event_fields { ptr @.str.24, %union.anon.97 { %struct.anon.98 { ptr @.str.27, i32 4, i32 4, i32 1, i32 0 } } }, %struct.trace_event_fields { ptr @.str.28, %union.anon.97 { %struct.anon.98 { ptr @.str.29, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.30, %union.anon.97 { %struct.anon.98 { ptr @.str.31, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.30, %union.anon.97 { %struct.anon.98 { ptr @.str.32, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.24, %union.anon.97 { %struct.anon.98 { ptr @.str.33, i32 4, i32 4, i32 1, i32 0 } } }, %struct.trace_event_fields zeroinitializer], align 4
@event_class_spi_setup = internal global %struct.trace_event_class { ptr @.str, ptr @trace_event_raw_event_spi_setup, ptr @perf_trace_spi_setup, ptr @trace_event_reg, ptr @trace_event_fields_spi_setup, ptr null, %struct.list_head { ptr getelementptr (i8, ptr @event_class_spi_setup, i64 24), ptr getelementptr (i8, ptr @event_class_spi_setup, i64 24) }, ptr @trace_event_raw_init }, section ".ref.data", align 4
@trace_event_type_funcs_spi_setup = internal global %struct.trace_event_functions { ptr @trace_raw_output_spi_setup, ptr null, ptr null, ptr null }, align 4
@print_fmt_spi_setup = internal global [397 x i8] c"\22spi%d.%d setup mode %lu, %s%s%s%s%u bits/w, %u Hz max --> %d\22, REC->bus_num, REC->chip_select, (REC->mode & ((((1UL)) << (1))|(((1UL)) << (0)))), (REC->mode & (((1UL)) << (2))) ? \22cs_high, \22 : \22\22, (REC->mode & (((1UL)) << (3))) ? \22lsb, \22 : \22\22, (REC->mode & (((1UL)) << (4))) ? \223wire, \22 : \22\22, (REC->mode & (((1UL)) << (5))) ? \22loopback, \22 : \22\22, REC->bits_per_word, REC->max_speed_hz, REC->status\00", align 1
@event_spi_setup = internal global %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_spi_setup, %union.anon.99 { ptr @__tracepoint_spi_setup }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_spi_setup }, ptr @print_fmt_spi_setup, ptr null, %union.anon.100 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, align 4
@__event_spi_setup = internal global ptr @event_spi_setup, section "_ftrace_events", align 4
@trace_event_fields_spi_set_cs = internal global [5 x %struct.trace_event_fields] [%struct.trace_event_fields { ptr @.str.24, %union.anon.97 { %struct.anon.98 { ptr @.str.25, i32 4, i32 4, i32 1, i32 0 } } }, %struct.trace_event_fields { ptr @.str.24, %union.anon.97 { %struct.anon.98 { ptr @.str.27, i32 4, i32 4, i32 1, i32 0 } } }, %struct.trace_event_fields { ptr @.str.28, %union.anon.97 { %struct.anon.98 { ptr @.str.29, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.40, %union.anon.97 { %struct.anon.98 { ptr @.str.41, i32 1, i32 1, i32 0, i32 0 } } }, %struct.trace_event_fields zeroinitializer], align 4
@event_class_spi_set_cs = internal global %struct.trace_event_class { ptr @.str, ptr @trace_event_raw_event_spi_set_cs, ptr @perf_trace_spi_set_cs, ptr @trace_event_reg, ptr @trace_event_fields_spi_set_cs, ptr null, %struct.list_head { ptr getelementptr (i8, ptr @event_class_spi_set_cs, i64 24), ptr getelementptr (i8, ptr @event_class_spi_set_cs, i64 24) }, ptr @trace_event_raw_init }, section ".ref.data", align 4
@trace_event_type_funcs_spi_set_cs = internal global %struct.trace_event_functions { ptr @trace_raw_output_spi_set_cs, ptr null, ptr null, ptr null }, align 4
@print_fmt_spi_set_cs = internal global [140 x i8] c"\22spi%d.%d %s%s\22, REC->bus_num, REC->chip_select, REC->enable ? \22activate\22 : \22deactivate\22, (REC->mode & (((1UL)) << (2))) ? \22, cs_high\22 : \22\22\00", align 1
@event_spi_set_cs = internal global %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_spi_set_cs, %union.anon.99 { ptr @__tracepoint_spi_set_cs }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_spi_set_cs }, ptr @print_fmt_spi_set_cs, ptr null, %union.anon.100 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, align 4
@__event_spi_set_cs = internal global ptr @event_spi_set_cs, section "_ftrace_events", align 4
@trace_event_fields_spi_message = internal global [4 x %struct.trace_event_fields] [%struct.trace_event_fields { ptr @.str.24, %union.anon.97 { %struct.anon.98 { ptr @.str.25, i32 4, i32 4, i32 1, i32 0 } } }, %struct.trace_event_fields { ptr @.str.24, %union.anon.97 { %struct.anon.98 { ptr @.str.27, i32 4, i32 4, i32 1, i32 0 } } }, %struct.trace_event_fields { ptr @.str.46, %union.anon.97 { %struct.anon.98 { ptr @.str.47, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields zeroinitializer], align 4
@event_class_spi_message = internal global %struct.trace_event_class { ptr @.str, ptr @trace_event_raw_event_spi_message, ptr @perf_trace_spi_message, ptr @trace_event_reg, ptr @trace_event_fields_spi_message, ptr null, %struct.list_head { ptr getelementptr (i8, ptr @event_class_spi_message, i64 24), ptr getelementptr (i8, ptr @event_class_spi_message, i64 24) }, ptr @trace_event_raw_init }, section ".ref.data", align 4
@trace_event_type_funcs_spi_message = internal global %struct.trace_event_functions { ptr @trace_raw_output_spi_message, ptr null, ptr null, ptr null }, align 4
@print_fmt_spi_message = internal global [88 x i8] c"\22spi%d.%d %p\22, (int)REC->bus_num, (int)REC->chip_select, (struct spi_message *)REC->msg\00", align 1
@event_spi_message_submit = internal global %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_spi_message, %union.anon.99 { ptr @__tracepoint_spi_message_submit }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_spi_message }, ptr @print_fmt_spi_message, ptr null, %union.anon.100 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, align 4
@__event_spi_message_submit = internal global ptr @event_spi_message_submit, section "_ftrace_events", align 4
@event_spi_message_start = internal global %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_spi_message, %union.anon.99 { ptr @__tracepoint_spi_message_start }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_spi_message }, ptr @print_fmt_spi_message, ptr null, %union.anon.100 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, align 4
@__event_spi_message_start = internal global ptr @event_spi_message_start, section "_ftrace_events", align 4
@trace_event_fields_spi_message_done = internal global [6 x %struct.trace_event_fields] [%struct.trace_event_fields { ptr @.str.24, %union.anon.97 { %struct.anon.98 { ptr @.str.25, i32 4, i32 4, i32 1, i32 0 } } }, %struct.trace_event_fields { ptr @.str.24, %union.anon.97 { %struct.anon.98 { ptr @.str.27, i32 4, i32 4, i32 1, i32 0 } } }, %struct.trace_event_fields { ptr @.str.46, %union.anon.97 { %struct.anon.98 { ptr @.str.47, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.49, %union.anon.97 { %struct.anon.98 { ptr @.str.50, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.49, %union.anon.97 { %struct.anon.98 { ptr @.str.51, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields zeroinitializer], align 4
@event_class_spi_message_done = internal global %struct.trace_event_class { ptr @.str, ptr @trace_event_raw_event_spi_message_done, ptr @perf_trace_spi_message_done, ptr @trace_event_reg, ptr @trace_event_fields_spi_message_done, ptr null, %struct.list_head { ptr getelementptr (i8, ptr @event_class_spi_message_done, i64 24), ptr getelementptr (i8, ptr @event_class_spi_message_done, i64 24) }, ptr @trace_event_raw_init }, section ".ref.data", align 4
@trace_event_type_funcs_spi_message_done = internal global %struct.trace_event_functions { ptr @trace_raw_output_spi_message_done, ptr null, ptr null, ptr null }, align 4
@print_fmt_spi_message_done = internal global [143 x i8] c"\22spi%d.%d %p len=%u/%u\22, (int)REC->bus_num, (int)REC->chip_select, (struct spi_message *)REC->msg, (unsigned)REC->actual, (unsigned)REC->frame\00", align 1
@event_spi_message_done = internal global %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_spi_message_done, %union.anon.99 { ptr @__tracepoint_spi_message_done }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_spi_message_done }, ptr @print_fmt_spi_message_done, ptr null, %union.anon.100 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, align 4
@__event_spi_message_done = internal global ptr @event_spi_message_done, section "_ftrace_events", align 4
@trace_event_fields_spi_transfer = internal global [7 x %struct.trace_event_fields] [%struct.trace_event_fields { ptr @.str.24, %union.anon.97 { %struct.anon.98 { ptr @.str.25, i32 4, i32 4, i32 1, i32 0 } } }, %struct.trace_event_fields { ptr @.str.24, %union.anon.97 { %struct.anon.98 { ptr @.str.27, i32 4, i32 4, i32 1, i32 0 } } }, %struct.trace_event_fields { ptr @.str.53, %union.anon.97 { %struct.anon.98 { ptr @.str.54, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.24, %union.anon.97 { %struct.anon.98 { ptr @.str.55, i32 4, i32 4, i32 1, i32 0 } } }, %struct.trace_event_fields { ptr @.str.56, %union.anon.97 { %struct.anon.98 { ptr @.str.57, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.56, %union.anon.97 { %struct.anon.98 { ptr @.str.58, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields zeroinitializer], align 4
@event_class_spi_transfer = internal global %struct.trace_event_class { ptr @.str, ptr @trace_event_raw_event_spi_transfer, ptr @perf_trace_spi_transfer, ptr @trace_event_reg, ptr @trace_event_fields_spi_transfer, ptr null, %struct.list_head { ptr getelementptr (i8, ptr @event_class_spi_transfer, i64 24), ptr getelementptr (i8, ptr @event_class_spi_transfer, i64 24) }, ptr @trace_event_raw_init }, section ".ref.data", align 4
@trace_event_type_funcs_spi_transfer = internal global %struct.trace_event_functions { ptr @trace_raw_output_spi_transfer, ptr null, ptr null, ptr null }, align 4
@print_fmt_spi_transfer = internal global [220 x i8] c"\22spi%d.%d %p len=%d tx=[%*phD] rx=[%*phD]\22, REC->bus_num, REC->chip_select, REC->xfer, REC->len, __get_dynamic_array_len(tx_buf), __get_dynamic_array(tx_buf), __get_dynamic_array_len(rx_buf), __get_dynamic_array(rx_buf)\00", align 1
@event_spi_transfer_start = internal global %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_spi_transfer, %union.anon.99 { ptr @__tracepoint_spi_transfer_start }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_spi_transfer }, ptr @print_fmt_spi_transfer, ptr null, %union.anon.100 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, align 4
@__event_spi_transfer_start = internal global ptr @event_spi_transfer_start, section "_ftrace_events", align 4
@event_spi_transfer_stop = internal global %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_spi_transfer, %union.anon.99 { ptr @__tracepoint_spi_transfer_stop }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_spi_transfer }, ptr @print_fmt_spi_transfer, ptr null, %union.anon.100 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, align 4
@__event_spi_transfer_stop = internal global ptr @event_spi_transfer_stop, section "_ftrace_events", align 4
@__kstrtab___tracepoint_spi_transfer_start = external dso_local constant [0 x i8], align 1
@__kstrtabns___tracepoint_spi_transfer_start = external dso_local constant [0 x i8], align 1
@__ksymtab___tracepoint_spi_transfer_start = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__tracepoint_spi_transfer_start to i32), ptr @__kstrtab___tracepoint_spi_transfer_start, ptr @__kstrtabns___tracepoint_spi_transfer_start }, section "___ksymtab+__tracepoint_spi_transfer_start", align 4
@__kstrtab___traceiter_spi_transfer_start = external dso_local constant [0 x i8], align 1
@__kstrtabns___traceiter_spi_transfer_start = external dso_local constant [0 x i8], align 1
@__ksymtab___traceiter_spi_transfer_start = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__traceiter_spi_transfer_start to i32), ptr @__kstrtab___traceiter_spi_transfer_start, ptr @__kstrtabns___traceiter_spi_transfer_start }, section "___ksymtab+__traceiter_spi_transfer_start", align 4
@__kstrtab___SCK__tp_func_spi_transfer_start = external dso_local constant [0 x i8], align 1
@__kstrtabns___SCK__tp_func_spi_transfer_start = external dso_local constant [0 x i8], align 1
@__ksymtab___SCK__tp_func_spi_transfer_start = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__SCK__tp_func_spi_transfer_start to i32), ptr @__kstrtab___SCK__tp_func_spi_transfer_start, ptr @__kstrtabns___SCK__tp_func_spi_transfer_start }, section "___ksymtab+__SCK__tp_func_spi_transfer_start", align 4
@__kstrtab___tracepoint_spi_transfer_stop = external dso_local constant [0 x i8], align 1
@__kstrtabns___tracepoint_spi_transfer_stop = external dso_local constant [0 x i8], align 1
@__ksymtab___tracepoint_spi_transfer_stop = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__tracepoint_spi_transfer_stop to i32), ptr @__kstrtab___tracepoint_spi_transfer_stop, ptr @__kstrtabns___tracepoint_spi_transfer_stop }, section "___ksymtab+__tracepoint_spi_transfer_stop", align 4
@__kstrtab___traceiter_spi_transfer_stop = external dso_local constant [0 x i8], align 1
@__kstrtabns___traceiter_spi_transfer_stop = external dso_local constant [0 x i8], align 1
@__ksymtab___traceiter_spi_transfer_stop = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__traceiter_spi_transfer_stop to i32), ptr @__kstrtab___traceiter_spi_transfer_stop, ptr @__kstrtabns___traceiter_spi_transfer_stop }, section "___ksymtab+__traceiter_spi_transfer_stop", align 4
@__kstrtab___SCK__tp_func_spi_transfer_stop = external dso_local constant [0 x i8], align 1
@__kstrtabns___SCK__tp_func_spi_transfer_stop = external dso_local constant [0 x i8], align 1
@__ksymtab___SCK__tp_func_spi_transfer_stop = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__SCK__tp_func_spi_transfer_stop to i32), ptr @__kstrtab___SCK__tp_func_spi_transfer_stop, ptr @__kstrtabns___SCK__tp_func_spi_transfer_stop }, section "___ksymtab+__SCK__tp_func_spi_transfer_stop", align 4
@__kstrtab_spi_get_device_id = external dso_local constant [0 x i8], align 1
@__kstrtabns_spi_get_device_id = external dso_local constant [0 x i8], align 1
@__ksymtab_spi_get_device_id = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @spi_get_device_id to i32), ptr @__kstrtab_spi_get_device_id, ptr @__kstrtabns_spi_get_device_id }, section "___ksymtab_gpl+spi_get_device_id", align 4
@.str = private constant [4 x i8] c"spi\00", align 1
@spi_dev_groups = internal global [3 x ptr] [ptr @spi_dev_group, ptr @spi_device_statistics_group, ptr null], align 4
@spi_bus_type = dso_local global %struct.bus_type { ptr @.str, ptr null, ptr null, ptr null, ptr @spi_dev_groups, ptr null, ptr @spi_match_device, ptr @spi_uevent, ptr @spi_probe, ptr null, ptr @spi_remove, ptr @spi_shutdown, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.lock_class_key zeroinitializer, i8 0 }, align 4
@__kstrtab_spi_bus_type = external dso_local constant [0 x i8], align 1
@__kstrtabns_spi_bus_type = external dso_local constant [0 x i8], align 1
@__ksymtab_spi_bus_type = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @spi_bus_type to i32), ptr @__kstrtab_spi_bus_type, ptr @__kstrtabns_spi_bus_type }, section "___ksymtab_gpl+spi_bus_type", align 4
@.str.1 = private unnamed_addr constant [45 x i8] c"\014SPI driver %s has no spi_device_id for %s\0A\00", align 1
@__kstrtab___spi_register_driver = external dso_local constant [0 x i8], align 1
@__kstrtabns___spi_register_driver = external dso_local constant [0 x i8], align 1
@__ksymtab___spi_register_driver = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__spi_register_driver to i32), ptr @__kstrtab___spi_register_driver, ptr @__kstrtabns___spi_register_driver }, section "___ksymtab_gpl+__spi_register_driver", align 4
@.str.2 = private unnamed_addr constant [18 x i8] c"drivers/spi/spi.c\00", align 1
@.str.3 = private unnamed_addr constant [41 x i8] c"failed to add software node to '%s': %d\0A\00", align 1
@__kstrtab_spi_new_device = external dso_local constant [0 x i8], align 1
@__kstrtabns_spi_new_device = external dso_local constant [0 x i8], align 1
@__ksymtab_spi_new_device = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @spi_new_device to i32), ptr @__kstrtab_spi_new_device, ptr @__kstrtabns_spi_new_device }, section "___ksymtab_gpl+spi_new_device", align 4
@__kstrtab_spi_unregister_device = external dso_local constant [0 x i8], align 1
@__kstrtabns_spi_unregister_device = external dso_local constant [0 x i8], align 1
@__ksymtab_spi_unregister_device = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @spi_unregister_device to i32), ptr @__kstrtab_spi_unregister_device, ptr @__kstrtabns_spi_unregister_device }, section "___ksymtab_gpl+spi_unregister_device", align 4
@board_lock = internal global %struct.mutex { %struct.atomic_t zeroinitializer, %struct.raw_spinlock zeroinitializer, %struct.optimistic_spin_queue zeroinitializer, %struct.list_head { ptr getelementptr (i8, ptr @board_lock, i64 12), ptr getelementptr (i8, ptr @board_lock, i64 12) } }, align 4
@board_list = internal global %struct.list_head { ptr @board_list, ptr @board_list }, align 4
@spi_controller_list = internal global %struct.list_head { ptr @spi_controller_list, ptr @spi_controller_list }, align 4
@high_memory = external dso_local local_unnamed_addr global ptr, align 4
@__pv_phys_pfn_offset = external dso_local local_unnamed_addr global i32, align 4
@__kstrtab_spi_delay_to_ns = external dso_local constant [0 x i8], align 1
@__kstrtabns_spi_delay_to_ns = external dso_local constant [0 x i8], align 1
@__ksymtab_spi_delay_to_ns = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @spi_delay_to_ns to i32), ptr @__kstrtab_spi_delay_to_ns, ptr @__kstrtabns_spi_delay_to_ns }, section "___ksymtab_gpl+spi_delay_to_ns", align 4
@__kstrtab_spi_delay_exec = external dso_local constant [0 x i8], align 1
@__kstrtabns_spi_delay_exec = external dso_local constant [0 x i8], align 1
@__ksymtab_spi_delay_exec = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @spi_delay_exec to i32), ptr @__kstrtab_spi_delay_exec, ptr @__kstrtabns_spi_delay_exec }, section "___ksymtab_gpl+spi_delay_exec", align 4
@__kstrtab_spi_finalize_current_transfer = external dso_local constant [0 x i8], align 1
@__kstrtabns_spi_finalize_current_transfer = external dso_local constant [0 x i8], align 1
@__ksymtab_spi_finalize_current_transfer = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @spi_finalize_current_transfer to i32), ptr @__kstrtab_spi_finalize_current_transfer, ptr @__kstrtabns_spi_finalize_current_transfer }, section "___ksymtab_gpl+spi_finalize_current_transfer", align 4
@__kstrtab_spi_take_timestamp_pre = external dso_local constant [0 x i8], align 1
@__kstrtabns_spi_take_timestamp_pre = external dso_local constant [0 x i8], align 1
@__ksymtab_spi_take_timestamp_pre = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @spi_take_timestamp_pre to i32), ptr @__kstrtab_spi_take_timestamp_pre, ptr @__kstrtabns_spi_take_timestamp_pre }, section "___ksymtab_gpl+spi_take_timestamp_pre", align 4
@__kstrtab_spi_take_timestamp_post = external dso_local constant [0 x i8], align 1
@__kstrtabns_spi_take_timestamp_post = external dso_local constant [0 x i8], align 1
@__ksymtab_spi_take_timestamp_post = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @spi_take_timestamp_post to i32), ptr @__kstrtab_spi_take_timestamp_post, ptr @__kstrtabns_spi_take_timestamp_post }, section "___ksymtab_gpl+spi_take_timestamp_post", align 4
@__kstrtab_spi_get_next_queued_message = external dso_local constant [0 x i8], align 1
@__kstrtabns_spi_get_next_queued_message = external dso_local constant [0 x i8], align 1
@__ksymtab_spi_get_next_queued_message = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @spi_get_next_queued_message to i32), ptr @__kstrtab_spi_get_next_queued_message, ptr @__kstrtabns_spi_get_next_queued_message }, section "___ksymtab_gpl+spi_get_next_queued_message", align 4
@spi_finalize_current_message.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.4 = private unnamed_addr constant [33 x i8] c"failed to unprepare message: %d\0A\00", align 1
@__kstrtab_spi_finalize_current_message = external dso_local constant [0 x i8], align 1
@__kstrtabns_spi_finalize_current_message = external dso_local constant [0 x i8], align 1
@__ksymtab_spi_finalize_current_message = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @spi_finalize_current_message to i32), ptr @__kstrtab_spi_finalize_current_message, ptr @__kstrtabns_spi_finalize_current_message }, section "___ksymtab_gpl+spi_finalize_current_message", align 4
@.str.5 = private unnamed_addr constant [6 x i8] c"dummy\00", align 1
@.str.6 = private unnamed_addr constant [37 x i8] c"failed to register ancillary device\0A\00", align 1
@__kstrtab_spi_new_ancillary_device = external dso_local constant [0 x i8], align 1
@__kstrtabns_spi_new_ancillary_device = external dso_local constant [0 x i8], align 1
@__ksymtab_spi_new_ancillary_device = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @spi_new_ancillary_device to i32), ptr @__kstrtab_spi_new_ancillary_device, ptr @__kstrtabns_spi_new_ancillary_device }, section "___ksymtab_gpl+spi_new_ancillary_device", align 4
@__spi_alloc_controller.__key = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.7 = private unnamed_addr constant [22 x i8] c"&ctlr->bus_lock_mutex\00", align 1
@__spi_alloc_controller.__key.8 = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.9 = private unnamed_addr constant [16 x i8] c"&ctlr->io_mutex\00", align 1
@__spi_alloc_controller.__key.10 = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.11 = private unnamed_addr constant [16 x i8] c"&ctlr->add_lock\00", align 1
@spi_master_class = internal global %struct.class { ptr @.str.110, ptr null, ptr null, ptr @spi_master_groups, ptr null, ptr null, ptr null, ptr null, ptr @spi_controller_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@__kstrtab___spi_alloc_controller = external dso_local constant [0 x i8], align 1
@__kstrtabns___spi_alloc_controller = external dso_local constant [0 x i8], align 1
@__ksymtab___spi_alloc_controller = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__spi_alloc_controller to i32), ptr @__kstrtab___spi_alloc_controller, ptr @__kstrtabns___spi_alloc_controller }, section "___ksymtab_gpl+__spi_alloc_controller", align 4
@.str.12 = private unnamed_addr constant [28 x i8] c"devm_spi_release_controller\00", align 1
@__kstrtab___devm_spi_alloc_controller = external dso_local constant [0 x i8], align 1
@__kstrtabns___devm_spi_alloc_controller = external dso_local constant [0 x i8], align 1
@__ksymtab___devm_spi_alloc_controller = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__devm_spi_alloc_controller to i32), ptr @__kstrtab___devm_spi_alloc_controller, ptr @__kstrtabns___devm_spi_alloc_controller }, section "___ksymtab_gpl+__devm_spi_alloc_controller", align 4
@spi_master_idr = internal global %struct.idr { %struct.xarray { %struct.spinlock zeroinitializer, i32 33554436, ptr null }, i32 0, i32 0 }, align 4
@.str.13 = private unnamed_addr constant [17 x i8] c"couldn't get idr\00", align 1
@.str.14 = private unnamed_addr constant [6 x i8] c"spi%u\00", align 1
@.str.15 = private unnamed_addr constant [44 x i8] c"controller is unqueued, this is deprecated\0A\00", align 1
@__kstrtab_spi_register_controller = external dso_local constant [0 x i8], align 1
@__kstrtabns_spi_register_controller = external dso_local constant [0 x i8], align 1
@__ksymtab_spi_register_controller = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @spi_register_controller to i32), ptr @__kstrtab_spi_register_controller, ptr @__kstrtabns_spi_register_controller }, section "___ksymtab_gpl+spi_register_controller", align 4
@__kstrtab_devm_spi_register_controller = external dso_local constant [0 x i8], align 1
@__kstrtabns_devm_spi_register_controller = external dso_local constant [0 x i8], align 1
@__ksymtab_devm_spi_register_controller = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @devm_spi_register_controller to i32), ptr @__kstrtab_devm_spi_register_controller, ptr @__kstrtabns_devm_spi_register_controller }, section "___ksymtab_gpl+devm_spi_register_controller", align 4
@.str.16 = private unnamed_addr constant [21 x i8] c"queue remove failed\0A\00", align 1
@__kstrtab_spi_unregister_controller = external dso_local constant [0 x i8], align 1
@__kstrtabns_spi_unregister_controller = external dso_local constant [0 x i8], align 1
@__ksymtab_spi_unregister_controller = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @spi_unregister_controller to i32), ptr @__kstrtab_spi_unregister_controller, ptr @__kstrtabns_spi_unregister_controller }, section "___ksymtab_gpl+spi_unregister_controller", align 4
@.str.17 = private unnamed_addr constant [19 x i8] c"queue stop failed\0A\00", align 1
@__kstrtab_spi_controller_suspend = external dso_local constant [0 x i8], align 1
@__kstrtabns_spi_controller_suspend = external dso_local constant [0 x i8], align 1
@__ksymtab_spi_controller_suspend = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @spi_controller_suspend to i32), ptr @__kstrtab_spi_controller_suspend, ptr @__kstrtabns_spi_controller_suspend }, section "___ksymtab_gpl+spi_controller_suspend", align 4
@.str.18 = private unnamed_addr constant [22 x i8] c"queue restart failed\0A\00", align 1
@__kstrtab_spi_controller_resume = external dso_local constant [0 x i8], align 1
@__kstrtabns_spi_controller_resume = external dso_local constant [0 x i8], align 1
@__ksymtab_spi_controller_resume = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @spi_controller_resume to i32), ptr @__kstrtab_spi_controller_resume, ptr @__kstrtabns_spi_controller_resume }, section "___ksymtab_gpl+spi_controller_resume", align 4
@__kstrtab_spi_split_transfers_maxsize = external dso_local constant [0 x i8], align 1
@__kstrtabns_spi_split_transfers_maxsize = external dso_local constant [0 x i8], align 1
@__ksymtab_spi_split_transfers_maxsize = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @spi_split_transfers_maxsize to i32), ptr @__kstrtab_spi_split_transfers_maxsize, ptr @__kstrtabns_spi_split_transfers_maxsize }, section "___ksymtab_gpl+spi_split_transfers_maxsize", align 4
@.str.19 = private unnamed_addr constant [75 x i8] c"setup: can not select any two of dual, quad and no-rx/tx at the same time\0A\00", align 1
@.str.20 = private unnamed_addr constant [42 x i8] c"setup: ignoring unsupported mode bits %x\0A\00", align 1
@.str.21 = private unnamed_addr constant [33 x i8] c"setup: unsupported mode bits %x\0A\00", align 1
@.str.22 = private unnamed_addr constant [28 x i8] c"Failed to setup device: %d\0A\00", align 1
@.str.23 = private unnamed_addr constant [28 x i8] c"Failed to power device: %d\0A\00", align 1
@__kstrtab_spi_setup = external dso_local constant [0 x i8], align 1
@__kstrtabns_spi_setup = external dso_local constant [0 x i8], align 1
@__ksymtab_spi_setup = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @spi_setup to i32), ptr @__kstrtab_spi_setup, ptr @__kstrtabns_spi_setup }, section "___ksymtab_gpl+spi_setup", align 4
@__kstrtab_spi_async = external dso_local constant [0 x i8], align 1
@__kstrtabns_spi_async = external dso_local constant [0 x i8], align 1
@__ksymtab_spi_async = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @spi_async to i32), ptr @__kstrtab_spi_async, ptr @__kstrtabns_spi_async }, section "___ksymtab_gpl+spi_async", align 4
@__kstrtab_spi_sync = external dso_local constant [0 x i8], align 1
@__kstrtabns_spi_sync = external dso_local constant [0 x i8], align 1
@__ksymtab_spi_sync = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @spi_sync to i32), ptr @__kstrtab_spi_sync, ptr @__kstrtabns_spi_sync }, section "___ksymtab_gpl+spi_sync", align 4
@__kstrtab_spi_sync_locked = external dso_local constant [0 x i8], align 1
@__kstrtabns_spi_sync_locked = external dso_local constant [0 x i8], align 1
@__ksymtab_spi_sync_locked = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @spi_sync_locked to i32), ptr @__kstrtab_spi_sync_locked, ptr @__kstrtabns_spi_sync_locked }, section "___ksymtab_gpl+spi_sync_locked", align 4
@__kstrtab_spi_bus_lock = external dso_local constant [0 x i8], align 1
@__kstrtabns_spi_bus_lock = external dso_local constant [0 x i8], align 1
@__ksymtab_spi_bus_lock = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @spi_bus_lock to i32), ptr @__kstrtab_spi_bus_lock, ptr @__kstrtabns_spi_bus_lock }, section "___ksymtab_gpl+spi_bus_lock", align 4
@__kstrtab_spi_bus_unlock = external dso_local constant [0 x i8], align 1
@__kstrtabns_spi_bus_unlock = external dso_local constant [0 x i8], align 1
@__ksymtab_spi_bus_unlock = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @spi_bus_unlock to i32), ptr @__kstrtab_spi_bus_unlock, ptr @__kstrtabns_spi_bus_unlock }, section "___ksymtab_gpl+spi_bus_unlock", align 4
@spi_write_then_read.lock = internal global %struct.mutex { %struct.atomic_t zeroinitializer, %struct.raw_spinlock zeroinitializer, %struct.optimistic_spin_queue zeroinitializer, %struct.list_head { ptr getelementptr (i8, ptr @spi_write_then_read.lock, i64 12), ptr getelementptr (i8, ptr @spi_write_then_read.lock, i64 12) } }, align 4
@buf = internal unnamed_addr global ptr null, align 4
@__kstrtab_spi_write_then_read = external dso_local constant [0 x i8], align 1
@__kstrtabns_spi_write_then_read = external dso_local constant [0 x i8], align 1
@__ksymtab_spi_write_then_read = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @spi_write_then_read to i32), ptr @__kstrtab_spi_write_then_read, ptr @__kstrtabns_spi_write_then_read }, section "___ksymtab_gpl+spi_write_then_read", align 4
@__initcall__kmod_spi__363_4315_spi_init2 = internal global ptr @spi_init, section ".initcall2.init", align 4
@.str.24 = private unnamed_addr constant [4 x i8] c"int\00", align 1
@.str.25 = private unnamed_addr constant [8 x i8] c"bus_num\00", align 1
@.str.26 = private unnamed_addr constant [7 x i8] c"spi%d\0A\00", align 1
@.str.27 = private unnamed_addr constant [12 x i8] c"chip_select\00", align 1
@.str.28 = private unnamed_addr constant [14 x i8] c"unsigned long\00", align 1
@.str.29 = private unnamed_addr constant [5 x i8] c"mode\00", align 1
@.str.30 = private unnamed_addr constant [13 x i8] c"unsigned int\00", align 1
@.str.31 = private unnamed_addr constant [14 x i8] c"bits_per_word\00", align 1
@.str.32 = private unnamed_addr constant [13 x i8] c"max_speed_hz\00", align 1
@.str.33 = private unnamed_addr constant [7 x i8] c"status\00", align 1
@.str.34 = private unnamed_addr constant [62 x i8] c"spi%d.%d setup mode %lu, %s%s%s%s%u bits/w, %u Hz max --> %d\0A\00", align 1
@.str.35 = private unnamed_addr constant [10 x i8] c"cs_high, \00", align 1
@.str.36 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.37 = private unnamed_addr constant [6 x i8] c"lsb, \00", align 1
@.str.38 = private unnamed_addr constant [8 x i8] c"3wire, \00", align 1
@.str.39 = private unnamed_addr constant [11 x i8] c"loopback, \00", align 1
@.str.40 = private unnamed_addr constant [5 x i8] c"bool\00", align 1
@.str.41 = private unnamed_addr constant [7 x i8] c"enable\00", align 1
@.str.42 = private unnamed_addr constant [15 x i8] c"spi%d.%d %s%s\0A\00", align 1
@.str.43 = private unnamed_addr constant [9 x i8] c"activate\00", align 1
@.str.44 = private unnamed_addr constant [11 x i8] c"deactivate\00", align 1
@.str.45 = private unnamed_addr constant [10 x i8] c", cs_high\00", align 1
@.str.46 = private unnamed_addr constant [21 x i8] c"struct spi_message *\00", align 1
@.str.47 = private unnamed_addr constant [4 x i8] c"msg\00", align 1
@.str.48 = private unnamed_addr constant [13 x i8] c"spi%d.%d %p\0A\00", align 1
@.str.49 = private unnamed_addr constant [9 x i8] c"unsigned\00", align 1
@.str.50 = private unnamed_addr constant [6 x i8] c"frame\00", align 1
@.str.51 = private unnamed_addr constant [7 x i8] c"actual\00", align 1
@.str.52 = private unnamed_addr constant [23 x i8] c"spi%d.%d %p len=%u/%u\0A\00", align 1
@.str.53 = private unnamed_addr constant [22 x i8] c"struct spi_transfer *\00", align 1
@.str.54 = private unnamed_addr constant [5 x i8] c"xfer\00", align 1
@.str.55 = private unnamed_addr constant [4 x i8] c"len\00", align 1
@.str.56 = private unnamed_addr constant [16 x i8] c"__data_loc u8[]\00", align 1
@.str.57 = private unnamed_addr constant [7 x i8] c"rx_buf\00", align 1
@.str.58 = private unnamed_addr constant [7 x i8] c"tx_buf\00", align 1
@.str.59 = private unnamed_addr constant [42 x i8] c"spi%d.%d %p len=%d tx=[%*phD] rx=[%*phD]\0A\00", align 1
@spi_dev_group = internal constant %struct.attribute_group { ptr null, ptr null, ptr null, ptr @spi_dev_attrs, ptr null }, align 4
@spi_device_statistics_group = internal constant %struct.attribute_group { ptr @.str.65, ptr null, ptr null, ptr @spi_device_statistics_attrs, ptr null }, align 4
@spi_dev_attrs = internal global [3 x ptr] [ptr @dev_attr_modalias, ptr @dev_attr_driver_override, ptr null], align 4
@dev_attr_modalias = internal global %struct.device_attribute { %struct.attribute { ptr @.str.60, i16 292 }, ptr @modalias_show, ptr null }, align 4
@dev_attr_driver_override = internal global %struct.device_attribute { %struct.attribute { ptr @.str.63, i16 420 }, ptr @driver_override_show, ptr @driver_override_store }, align 4
@.str.60 = private unnamed_addr constant [9 x i8] c"modalias\00", align 1
@.str.61 = private unnamed_addr constant [6 x i8] c"%s%s\0A\00", align 1
@.str.62 = private unnamed_addr constant [5 x i8] c"spi:\00", align 1
@.str.63 = private unnamed_addr constant [16 x i8] c"driver_override\00", align 1
@.str.64 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@.str.65 = private unnamed_addr constant [11 x i8] c"statistics\00", align 1
@spi_device_statistics_attrs = internal global [29 x ptr] [ptr @dev_attr_spi_device_messages, ptr @dev_attr_spi_device_transfers, ptr @dev_attr_spi_device_errors, ptr @dev_attr_spi_device_timedout, ptr @dev_attr_spi_device_spi_sync, ptr @dev_attr_spi_device_spi_sync_immediate, ptr @dev_attr_spi_device_spi_async, ptr @dev_attr_spi_device_bytes, ptr @dev_attr_spi_device_bytes_rx, ptr @dev_attr_spi_device_bytes_tx, ptr @dev_attr_spi_device_transfer_bytes_histo0, ptr @dev_attr_spi_device_transfer_bytes_histo1, ptr @dev_attr_spi_device_transfer_bytes_histo2, ptr @dev_attr_spi_device_transfer_bytes_histo3, ptr @dev_attr_spi_device_transfer_bytes_histo4, ptr @dev_attr_spi_device_transfer_bytes_histo5, ptr @dev_attr_spi_device_transfer_bytes_histo6, ptr @dev_attr_spi_device_transfer_bytes_histo7, ptr @dev_attr_spi_device_transfer_bytes_histo8, ptr @dev_attr_spi_device_transfer_bytes_histo9, ptr @dev_attr_spi_device_transfer_bytes_histo10, ptr @dev_attr_spi_device_transfer_bytes_histo11, ptr @dev_attr_spi_device_transfer_bytes_histo12, ptr @dev_attr_spi_device_transfer_bytes_histo13, ptr @dev_attr_spi_device_transfer_bytes_histo14, ptr @dev_attr_spi_device_transfer_bytes_histo15, ptr @dev_attr_spi_device_transfer_bytes_histo16, ptr @dev_attr_spi_device_transfers_split_maxsize, ptr null], align 4
@dev_attr_spi_device_messages = internal global %struct.device_attribute { %struct.attribute { ptr @.str.66, i16 292 }, ptr @spi_device_messages_show, ptr null }, align 4
@dev_attr_spi_device_transfers = internal global %struct.device_attribute { %struct.attribute { ptr @.str.68, i16 292 }, ptr @spi_device_transfers_show, ptr null }, align 4
@dev_attr_spi_device_errors = internal global %struct.device_attribute { %struct.attribute { ptr @.str.69, i16 292 }, ptr @spi_device_errors_show, ptr null }, align 4
@dev_attr_spi_device_timedout = internal global %struct.device_attribute { %struct.attribute { ptr @.str.70, i16 292 }, ptr @spi_device_timedout_show, ptr null }, align 4
@dev_attr_spi_device_spi_sync = internal global %struct.device_attribute { %struct.attribute { ptr @.str.71, i16 292 }, ptr @spi_device_spi_sync_show, ptr null }, align 4
@dev_attr_spi_device_spi_sync_immediate = internal global %struct.device_attribute { %struct.attribute { ptr @.str.72, i16 292 }, ptr @spi_device_spi_sync_immediate_show, ptr null }, align 4
@dev_attr_spi_device_spi_async = internal global %struct.device_attribute { %struct.attribute { ptr @.str.73, i16 292 }, ptr @spi_device_spi_async_show, ptr null }, align 4
@dev_attr_spi_device_bytes = internal global %struct.device_attribute { %struct.attribute { ptr @.str.74, i16 292 }, ptr @spi_device_bytes_show, ptr null }, align 4
@dev_attr_spi_device_bytes_rx = internal global %struct.device_attribute { %struct.attribute { ptr @.str.76, i16 292 }, ptr @spi_device_bytes_rx_show, ptr null }, align 4
@dev_attr_spi_device_bytes_tx = internal global %struct.device_attribute { %struct.attribute { ptr @.str.77, i16 292 }, ptr @spi_device_bytes_tx_show, ptr null }, align 4
@dev_attr_spi_device_transfer_bytes_histo0 = internal global %struct.device_attribute { %struct.attribute { ptr @.str.78, i16 292 }, ptr @spi_device_transfer_bytes_histo0_show, ptr null }, align 4
@dev_attr_spi_device_transfer_bytes_histo1 = internal global %struct.device_attribute { %struct.attribute { ptr @.str.79, i16 292 }, ptr @spi_device_transfer_bytes_histo1_show, ptr null }, align 4
@dev_attr_spi_device_transfer_bytes_histo2 = internal global %struct.device_attribute { %struct.attribute { ptr @.str.80, i16 292 }, ptr @spi_device_transfer_bytes_histo2_show, ptr null }, align 4
@dev_attr_spi_device_transfer_bytes_histo3 = internal global %struct.device_attribute { %struct.attribute { ptr @.str.81, i16 292 }, ptr @spi_device_transfer_bytes_histo3_show, ptr null }, align 4
@dev_attr_spi_device_transfer_bytes_histo4 = internal global %struct.device_attribute { %struct.attribute { ptr @.str.82, i16 292 }, ptr @spi_device_transfer_bytes_histo4_show, ptr null }, align 4
@dev_attr_spi_device_transfer_bytes_histo5 = internal global %struct.device_attribute { %struct.attribute { ptr @.str.83, i16 292 }, ptr @spi_device_transfer_bytes_histo5_show, ptr null }, align 4
@dev_attr_spi_device_transfer_bytes_histo6 = internal global %struct.device_attribute { %struct.attribute { ptr @.str.84, i16 292 }, ptr @spi_device_transfer_bytes_histo6_show, ptr null }, align 4
@dev_attr_spi_device_transfer_bytes_histo7 = internal global %struct.device_attribute { %struct.attribute { ptr @.str.85, i16 292 }, ptr @spi_device_transfer_bytes_histo7_show, ptr null }, align 4
@dev_attr_spi_device_transfer_bytes_histo8 = internal global %struct.device_attribute { %struct.attribute { ptr @.str.86, i16 292 }, ptr @spi_device_transfer_bytes_histo8_show, ptr null }, align 4
@dev_attr_spi_device_transfer_bytes_histo9 = internal global %struct.device_attribute { %struct.attribute { ptr @.str.87, i16 292 }, ptr @spi_device_transfer_bytes_histo9_show, ptr null }, align 4
@dev_attr_spi_device_transfer_bytes_histo10 = internal global %struct.device_attribute { %struct.attribute { ptr @.str.88, i16 292 }, ptr @spi_device_transfer_bytes_histo10_show, ptr null }, align 4
@dev_attr_spi_device_transfer_bytes_histo11 = internal global %struct.device_attribute { %struct.attribute { ptr @.str.89, i16 292 }, ptr @spi_device_transfer_bytes_histo11_show, ptr null }, align 4
@dev_attr_spi_device_transfer_bytes_histo12 = internal global %struct.device_attribute { %struct.attribute { ptr @.str.90, i16 292 }, ptr @spi_device_transfer_bytes_histo12_show, ptr null }, align 4
@dev_attr_spi_device_transfer_bytes_histo13 = internal global %struct.device_attribute { %struct.attribute { ptr @.str.91, i16 292 }, ptr @spi_device_transfer_bytes_histo13_show, ptr null }, align 4
@dev_attr_spi_device_transfer_bytes_histo14 = internal global %struct.device_attribute { %struct.attribute { ptr @.str.92, i16 292 }, ptr @spi_device_transfer_bytes_histo14_show, ptr null }, align 4
@dev_attr_spi_device_transfer_bytes_histo15 = internal global %struct.device_attribute { %struct.attribute { ptr @.str.93, i16 292 }, ptr @spi_device_transfer_bytes_histo15_show, ptr null }, align 4
@dev_attr_spi_device_transfer_bytes_histo16 = internal global %struct.device_attribute { %struct.attribute { ptr @.str.94, i16 292 }, ptr @spi_device_transfer_bytes_histo16_show, ptr null }, align 4
@dev_attr_spi_device_transfers_split_maxsize = internal global %struct.device_attribute { %struct.attribute { ptr @.str.95, i16 292 }, ptr @spi_device_transfers_split_maxsize_show, ptr null }, align 4
@.str.66 = private unnamed_addr constant [9 x i8] c"messages\00", align 1
@.str.67 = private unnamed_addr constant [4 x i8] c"%lu\00", align 1
@.str.68 = private unnamed_addr constant [10 x i8] c"transfers\00", align 1
@.str.69 = private unnamed_addr constant [7 x i8] c"errors\00", align 1
@.str.70 = private unnamed_addr constant [9 x i8] c"timedout\00", align 1
@.str.71 = private unnamed_addr constant [9 x i8] c"spi_sync\00", align 1
@.str.72 = private unnamed_addr constant [19 x i8] c"spi_sync_immediate\00", align 1
@.str.73 = private unnamed_addr constant [10 x i8] c"spi_async\00", align 1
@.str.74 = private unnamed_addr constant [6 x i8] c"bytes\00", align 1
@.str.75 = private unnamed_addr constant [5 x i8] c"%llu\00", align 1
@.str.76 = private unnamed_addr constant [9 x i8] c"bytes_rx\00", align 1
@.str.77 = private unnamed_addr constant [9 x i8] c"bytes_tx\00", align 1
@.str.78 = private unnamed_addr constant [25 x i8] c"transfer_bytes_histo_0-1\00", align 1
@.str.79 = private unnamed_addr constant [25 x i8] c"transfer_bytes_histo_2-3\00", align 1
@.str.80 = private unnamed_addr constant [25 x i8] c"transfer_bytes_histo_4-7\00", align 1
@.str.81 = private unnamed_addr constant [26 x i8] c"transfer_bytes_histo_8-15\00", align 1
@.str.82 = private unnamed_addr constant [27 x i8] c"transfer_bytes_histo_16-31\00", align 1
@.str.83 = private unnamed_addr constant [27 x i8] c"transfer_bytes_histo_32-63\00", align 1
@.str.84 = private unnamed_addr constant [28 x i8] c"transfer_bytes_histo_64-127\00", align 1
@.str.85 = private unnamed_addr constant [29 x i8] c"transfer_bytes_histo_128-255\00", align 1
@.str.86 = private unnamed_addr constant [29 x i8] c"transfer_bytes_histo_256-511\00", align 1
@.str.87 = private unnamed_addr constant [30 x i8] c"transfer_bytes_histo_512-1023\00", align 1
@.str.88 = private unnamed_addr constant [31 x i8] c"transfer_bytes_histo_1024-2047\00", align 1
@.str.89 = private unnamed_addr constant [31 x i8] c"transfer_bytes_histo_2048-4095\00", align 1
@.str.90 = private unnamed_addr constant [31 x i8] c"transfer_bytes_histo_4096-8191\00", align 1
@.str.91 = private unnamed_addr constant [32 x i8] c"transfer_bytes_histo_8192-16383\00", align 1
@.str.92 = private unnamed_addr constant [33 x i8] c"transfer_bytes_histo_16384-32767\00", align 1
@.str.93 = private unnamed_addr constant [33 x i8] c"transfer_bytes_histo_32768-65535\00", align 1
@.str.94 = private unnamed_addr constant [28 x i8] c"transfer_bytes_histo_65536+\00", align 1
@.str.95 = private unnamed_addr constant [24 x i8] c"transfers_split_maxsize\00", align 1
@.str.96 = private unnamed_addr constant [14 x i8] c"MODALIAS=%s%s\00", align 1
@.str.97 = private unnamed_addr constant [41 x i8] c"Failed to unbind driver (%pe), ignoring\0A\00", align 1
@.str.98 = private unnamed_addr constant [16 x i8] c"cs%d >= max %d\0A\00", align 1
@.str.100 = private unnamed_addr constant [6 x i8] c"%s.%u\00", align 1
@.str.101 = private unnamed_addr constant [30 x i8] c"chipselect %d already in use\0A\00", align 1
@.str.102 = private unnamed_addr constant [27 x i8] c"can't setup %s, status %d\0A\00", align 1
@.str.103 = private unnamed_addr constant [25 x i8] c"can't add %s, status %d\0A\00", align 1
@.str.104 = private unnamed_addr constant [32 x i8] c"can't create new device for %s\0A\00", align 1
@mem_map = external dso_local local_unnamed_addr global ptr, align 4
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@__cpu_online_mask = external dso_local global %struct.cpumask, align 4
@.str.106 = private unnamed_addr constant [39 x i8] c"failed to unprepare transfer hardware\0A\00", align 1
@.str.107 = private unnamed_addr constant [41 x i8] c"failed to prepare transfer hardware: %d\0A\00", align 1
@.str.108 = private unnamed_addr constant [31 x i8] c"failed to prepare message: %d\0A\00", align 1
@.str.109 = private unnamed_addr constant [43 x i8] c"failed to transfer one message from queue\0A\00", align 1
@.str.110 = private unnamed_addr constant [11 x i8] c"spi_master\00", align 1
@spi_master_groups = internal global [2 x ptr] [ptr @spi_controller_statistics_group, ptr null], align 4
@spi_controller_statistics_group = internal constant %struct.attribute_group { ptr @.str.65, ptr null, ptr null, ptr @spi_controller_statistics_attrs, ptr null }, align 4
@spi_controller_statistics_attrs = internal global [29 x ptr] [ptr @dev_attr_spi_controller_messages, ptr @dev_attr_spi_controller_transfers, ptr @dev_attr_spi_controller_errors, ptr @dev_attr_spi_controller_timedout, ptr @dev_attr_spi_controller_spi_sync, ptr @dev_attr_spi_controller_spi_sync_immediate, ptr @dev_attr_spi_controller_spi_async, ptr @dev_attr_spi_controller_bytes, ptr @dev_attr_spi_controller_bytes_rx, ptr @dev_attr_spi_controller_bytes_tx, ptr @dev_attr_spi_controller_transfer_bytes_histo0, ptr @dev_attr_spi_controller_transfer_bytes_histo1, ptr @dev_attr_spi_controller_transfer_bytes_histo2, ptr @dev_attr_spi_controller_transfer_bytes_histo3, ptr @dev_attr_spi_controller_transfer_bytes_histo4, ptr @dev_attr_spi_controller_transfer_bytes_histo5, ptr @dev_attr_spi_controller_transfer_bytes_histo6, ptr @dev_attr_spi_controller_transfer_bytes_histo7, ptr @dev_attr_spi_controller_transfer_bytes_histo8, ptr @dev_attr_spi_controller_transfer_bytes_histo9, ptr @dev_attr_spi_controller_transfer_bytes_histo10, ptr @dev_attr_spi_controller_transfer_bytes_histo11, ptr @dev_attr_spi_controller_transfer_bytes_histo12, ptr @dev_attr_spi_controller_transfer_bytes_histo13, ptr @dev_attr_spi_controller_transfer_bytes_histo14, ptr @dev_attr_spi_controller_transfer_bytes_histo15, ptr @dev_attr_spi_controller_transfer_bytes_histo16, ptr @dev_attr_spi_controller_transfers_split_maxsize, ptr null], align 4
@dev_attr_spi_controller_messages = internal global %struct.device_attribute { %struct.attribute { ptr @.str.66, i16 292 }, ptr @spi_controller_messages_show, ptr null }, align 4
@dev_attr_spi_controller_transfers = internal global %struct.device_attribute { %struct.attribute { ptr @.str.68, i16 292 }, ptr @spi_controller_transfers_show, ptr null }, align 4
@dev_attr_spi_controller_errors = internal global %struct.device_attribute { %struct.attribute { ptr @.str.69, i16 292 }, ptr @spi_controller_errors_show, ptr null }, align 4
@dev_attr_spi_controller_timedout = internal global %struct.device_attribute { %struct.attribute { ptr @.str.70, i16 292 }, ptr @spi_controller_timedout_show, ptr null }, align 4
@dev_attr_spi_controller_spi_sync = internal global %struct.device_attribute { %struct.attribute { ptr @.str.71, i16 292 }, ptr @spi_controller_spi_sync_show, ptr null }, align 4
@dev_attr_spi_controller_spi_sync_immediate = internal global %struct.device_attribute { %struct.attribute { ptr @.str.72, i16 292 }, ptr @spi_controller_spi_sync_immediate_show, ptr null }, align 4
@dev_attr_spi_controller_spi_async = internal global %struct.device_attribute { %struct.attribute { ptr @.str.73, i16 292 }, ptr @spi_controller_spi_async_show, ptr null }, align 4
@dev_attr_spi_controller_bytes = internal global %struct.device_attribute { %struct.attribute { ptr @.str.74, i16 292 }, ptr @spi_controller_bytes_show, ptr null }, align 4
@dev_attr_spi_controller_bytes_rx = internal global %struct.device_attribute { %struct.attribute { ptr @.str.76, i16 292 }, ptr @spi_controller_bytes_rx_show, ptr null }, align 4
@dev_attr_spi_controller_bytes_tx = internal global %struct.device_attribute { %struct.attribute { ptr @.str.77, i16 292 }, ptr @spi_controller_bytes_tx_show, ptr null }, align 4
@dev_attr_spi_controller_transfer_bytes_histo0 = internal global %struct.device_attribute { %struct.attribute { ptr @.str.78, i16 292 }, ptr @spi_controller_transfer_bytes_histo0_show, ptr null }, align 4
@dev_attr_spi_controller_transfer_bytes_histo1 = internal global %struct.device_attribute { %struct.attribute { ptr @.str.79, i16 292 }, ptr @spi_controller_transfer_bytes_histo1_show, ptr null }, align 4
@dev_attr_spi_controller_transfer_bytes_histo2 = internal global %struct.device_attribute { %struct.attribute { ptr @.str.80, i16 292 }, ptr @spi_controller_transfer_bytes_histo2_show, ptr null }, align 4
@dev_attr_spi_controller_transfer_bytes_histo3 = internal global %struct.device_attribute { %struct.attribute { ptr @.str.81, i16 292 }, ptr @spi_controller_transfer_bytes_histo3_show, ptr null }, align 4
@dev_attr_spi_controller_transfer_bytes_histo4 = internal global %struct.device_attribute { %struct.attribute { ptr @.str.82, i16 292 }, ptr @spi_controller_transfer_bytes_histo4_show, ptr null }, align 4
@dev_attr_spi_controller_transfer_bytes_histo5 = internal global %struct.device_attribute { %struct.attribute { ptr @.str.83, i16 292 }, ptr @spi_controller_transfer_bytes_histo5_show, ptr null }, align 4
@dev_attr_spi_controller_transfer_bytes_histo6 = internal global %struct.device_attribute { %struct.attribute { ptr @.str.84, i16 292 }, ptr @spi_controller_transfer_bytes_histo6_show, ptr null }, align 4
@dev_attr_spi_controller_transfer_bytes_histo7 = internal global %struct.device_attribute { %struct.attribute { ptr @.str.85, i16 292 }, ptr @spi_controller_transfer_bytes_histo7_show, ptr null }, align 4
@dev_attr_spi_controller_transfer_bytes_histo8 = internal global %struct.device_attribute { %struct.attribute { ptr @.str.86, i16 292 }, ptr @spi_controller_transfer_bytes_histo8_show, ptr null }, align 4
@dev_attr_spi_controller_transfer_bytes_histo9 = internal global %struct.device_attribute { %struct.attribute { ptr @.str.87, i16 292 }, ptr @spi_controller_transfer_bytes_histo9_show, ptr null }, align 4
@dev_attr_spi_controller_transfer_bytes_histo10 = internal global %struct.device_attribute { %struct.attribute { ptr @.str.88, i16 292 }, ptr @spi_controller_transfer_bytes_histo10_show, ptr null }, align 4
@dev_attr_spi_controller_transfer_bytes_histo11 = internal global %struct.device_attribute { %struct.attribute { ptr @.str.89, i16 292 }, ptr @spi_controller_transfer_bytes_histo11_show, ptr null }, align 4
@dev_attr_spi_controller_transfer_bytes_histo12 = internal global %struct.device_attribute { %struct.attribute { ptr @.str.90, i16 292 }, ptr @spi_controller_transfer_bytes_histo12_show, ptr null }, align 4
@dev_attr_spi_controller_transfer_bytes_histo13 = internal global %struct.device_attribute { %struct.attribute { ptr @.str.91, i16 292 }, ptr @spi_controller_transfer_bytes_histo13_show, ptr null }, align 4
@dev_attr_spi_controller_transfer_bytes_histo14 = internal global %struct.device_attribute { %struct.attribute { ptr @.str.92, i16 292 }, ptr @spi_controller_transfer_bytes_histo14_show, ptr null }, align 4
@dev_attr_spi_controller_transfer_bytes_histo15 = internal global %struct.device_attribute { %struct.attribute { ptr @.str.93, i16 292 }, ptr @spi_controller_transfer_bytes_histo15_show, ptr null }, align 4
@dev_attr_spi_controller_transfer_bytes_histo16 = internal global %struct.device_attribute { %struct.attribute { ptr @.str.94, i16 292 }, ptr @spi_controller_transfer_bytes_histo16_show, ptr null }, align 4
@dev_attr_spi_controller_transfers_split_maxsize = internal global %struct.device_attribute { %struct.attribute { ptr @.str.95, i16 292 }, ptr @spi_controller_transfers_split_maxsize_show, ptr null }, align 4
@init_completion.__key = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.111 = private unnamed_addr constant [9 x i8] c"&x->wait\00", align 1
@.str.112 = private unnamed_addr constant [3 x i8] c"cs\00", align 1
@.str.113 = private unnamed_addr constant [8 x i8] c"%s CS%d\00", align 1
@.str.114 = private unnamed_addr constant [31 x i8] c"Invalid native chip select %d\0A\00", align 1
@.str.115 = private unnamed_addr constant [40 x i8] c"No unused native chip select available\0A\00", align 1
@.str.116 = private unnamed_addr constant [9 x i8] c"cs-gpios\00", align 1
@.str.117 = private unnamed_addr constant [12 x i8] c"#gpio-cells\00", align 1
@.str.118 = private unnamed_addr constant [28 x i8] c"problem initializing queue\0A\00", align 1
@.str.119 = private unnamed_addr constant [24 x i8] c"problem starting queue\0A\00", align 1
@.str.120 = private unnamed_addr constant [25 x i8] c"SPI transfer failed: %d\0A\00", align 1
@.str.121 = private unnamed_addr constant [35 x i8] c"Bufferless transfer has length %u\0A\00", align 1
@.str.122 = private unnamed_addr constant [24 x i8] c"SPI transfer timed out\0A\00", align 1
@_spi_transfer_cs_change_delay.__print_once = internal unnamed_addr global i1 false, section ".data..read_mostly", align 1
@.str.123 = private unnamed_addr constant [58 x i8] c"Use of unsupported delay unit %i, using default of %luus\0A\00", align 1
@.str.124 = private unnamed_addr constant [39 x i8] c"failed to create message pump kworker\0A\00", align 1
@.str.125 = private unnamed_addr constant [38 x i8] c"Failed to create SPI device for %pOF\0A\00", align 1
@.str.126 = private unnamed_addr constant [33 x i8] c"spi_device alloc error for %pOF\0A\00", align 1
@.str.127 = private unnamed_addr constant [31 x i8] c"cannot find modalias for %pOF\0A\00", align 1
@.str.128 = private unnamed_addr constant [32 x i8] c"spi_device register error %pOF\0A\00", align 1
@.str.129 = private unnamed_addr constant [9 x i8] c"spi-cpha\00", align 1
@.str.130 = private unnamed_addr constant [9 x i8] c"spi-cpol\00", align 1
@.str.131 = private unnamed_addr constant [10 x i8] c"spi-3wire\00", align 1
@.str.132 = private unnamed_addr constant [14 x i8] c"spi-lsb-first\00", align 1
@.str.133 = private unnamed_addr constant [12 x i8] c"spi-cs-high\00", align 1
@.str.134 = private unnamed_addr constant [17 x i8] c"spi-tx-bus-width\00", align 1
@.str.135 = private unnamed_addr constant [35 x i8] c"spi-tx-bus-width %d not supported\0A\00", align 1
@.str.136 = private unnamed_addr constant [17 x i8] c"spi-rx-bus-width\00", align 1
@.str.137 = private unnamed_addr constant [35 x i8] c"spi-rx-bus-width %d not supported\0A\00", align 1
@.str.140 = private unnamed_addr constant [4 x i8] c"reg\00", align 1
@.str.141 = private unnamed_addr constant [39 x i8] c"%pOF has no valid 'reg' property (%d)\0A\00", align 1
@.str.142 = private unnamed_addr constant [18 x i8] c"spi-max-frequency\00", align 1
@.str.143 = private unnamed_addr constant [26 x i8] c"problem destroying queue\0A\00", align 1
@.str.144 = private unnamed_addr constant [30 x i8] c"could not stop message queue\0A\00", align 1
@.str.145 = private unnamed_addr constant [59 x i8] c"requested to remove more spi_transfers than are available\0A\00", align 1
@.str.146 = private unnamed_addr constant [46 x i8] c"will run message pump with realtime priority\0A\00", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@spi_init.__key = internal global %struct.lock_class_key zeroinitializer, align 1
@spi_of_notifier = internal global %struct.notifier_block { ptr @of_spi_notify, ptr null, i32 0 }, align 4
@.str.147 = private unnamed_addr constant [35 x i8] c"\013%s: failed to create for '%pOF'\0A\00", align 1
@__func__.of_spi_notify = private unnamed_addr constant [14 x i8] c"of_spi_notify\00", align 1
@llvm.compiler.used = appending global [77 x ptr] [ptr @__event_spi_controller_busy, ptr @__event_spi_controller_idle, ptr @__event_spi_message_done, ptr @__event_spi_message_start, ptr @__event_spi_message_submit, ptr @__event_spi_set_cs, ptr @__event_spi_setup, ptr @__event_spi_transfer_start, ptr @__event_spi_transfer_stop, ptr @__initcall__kmod_spi__363_4315_spi_init2, ptr @__ksymtab___SCK__tp_func_spi_transfer_start, ptr @__ksymtab___SCK__tp_func_spi_transfer_stop, ptr @__ksymtab___devm_spi_alloc_controller, ptr @__ksymtab___spi_alloc_controller, ptr @__ksymtab___spi_register_driver, ptr @__ksymtab___traceiter_spi_transfer_start, ptr @__ksymtab___traceiter_spi_transfer_stop, ptr @__ksymtab___tracepoint_spi_transfer_start, ptr @__ksymtab___tracepoint_spi_transfer_stop, ptr @__ksymtab_devm_spi_register_controller, ptr @__ksymtab_spi_async, ptr @__ksymtab_spi_bus_lock, ptr @__ksymtab_spi_bus_type, ptr @__ksymtab_spi_bus_unlock, ptr @__ksymtab_spi_controller_resume, ptr @__ksymtab_spi_controller_suspend, ptr @__ksymtab_spi_delay_exec, ptr @__ksymtab_spi_delay_to_ns, ptr @__ksymtab_spi_finalize_current_message, ptr @__ksymtab_spi_finalize_current_transfer, ptr @__ksymtab_spi_get_device_id, ptr @__ksymtab_spi_get_next_queued_message, ptr @__ksymtab_spi_new_ancillary_device, ptr @__ksymtab_spi_new_device, ptr @__ksymtab_spi_register_controller, ptr @__ksymtab_spi_setup, ptr @__ksymtab_spi_split_transfers_maxsize, ptr @__ksymtab_spi_sync, ptr @__ksymtab_spi_sync_locked, ptr @__ksymtab_spi_take_timestamp_post, ptr @__ksymtab_spi_take_timestamp_pre, ptr @__ksymtab_spi_unregister_controller, ptr @__ksymtab_spi_unregister_device, ptr @__ksymtab_spi_write_then_read, ptr @__tracepoint_ptr_spi_controller_busy, ptr @__tracepoint_ptr_spi_controller_idle, ptr @__tracepoint_ptr_spi_message_done, ptr @__tracepoint_ptr_spi_message_start, ptr @__tracepoint_ptr_spi_message_submit, ptr @__tracepoint_ptr_spi_set_cs, ptr @__tracepoint_ptr_spi_setup, ptr @__tracepoint_ptr_spi_transfer_start, ptr @__tracepoint_ptr_spi_transfer_stop, ptr @__tracepoint_spi_controller_busy, ptr @__tracepoint_spi_controller_idle, ptr @__tracepoint_spi_message_done, ptr @__tracepoint_spi_message_start, ptr @__tracepoint_spi_message_submit, ptr @__tracepoint_spi_set_cs, ptr @__tracepoint_spi_setup, ptr @__tracepoint_spi_transfer_start, ptr @__tracepoint_spi_transfer_stop, ptr @event_class_spi_controller, ptr @event_class_spi_message, ptr @event_class_spi_message_done, ptr @event_class_spi_set_cs, ptr @event_class_spi_setup, ptr @event_class_spi_transfer, ptr @event_spi_controller_busy, ptr @event_spi_controller_idle, ptr @event_spi_message_done, ptr @event_spi_message_start, ptr @event_spi_message_submit, ptr @event_spi_set_cs, ptr @event_spi_setup, ptr @event_spi_transfer_start, ptr @event_spi_transfer_stop], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__traceiter_spi_controller_idle(ptr nocapture readnone %0, ptr noundef %1) #0 {
  %3 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_spi_controller_idle, i32 0, i32 7), align 4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %13, label %5

5:                                                ; preds = %5, %2
  %6 = phi ptr [ %10, %5 ], [ %3, %2 ]
  %7 = load volatile ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.tracepoint_func, ptr %6, i32 0, i32 1
  %9 = load ptr, ptr %8, align 4
  tail call void %7(ptr noundef %9, ptr noundef %1) #20
  %10 = getelementptr %struct.tracepoint_func, ptr %6, i32 1
  %11 = load ptr, ptr %10, align 4
  %12 = icmp eq ptr %11, null
  br i1 %12, label %13, label %5

13:                                               ; preds = %5, %2
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__traceiter_spi_controller_busy(ptr nocapture readnone %0, ptr noundef %1) #0 {
  %3 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_spi_controller_busy, i32 0, i32 7), align 4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %13, label %5

5:                                                ; preds = %5, %2
  %6 = phi ptr [ %10, %5 ], [ %3, %2 ]
  %7 = load volatile ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.tracepoint_func, ptr %6, i32 0, i32 1
  %9 = load ptr, ptr %8, align 4
  tail call void %7(ptr noundef %9, ptr noundef %1) #20
  %10 = getelementptr %struct.tracepoint_func, ptr %6, i32 1
  %11 = load ptr, ptr %10, align 4
  %12 = icmp eq ptr %11, null
  br i1 %12, label %13, label %5

13:                                               ; preds = %5, %2
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__traceiter_spi_setup(ptr nocapture readnone %0, ptr noundef %1, i32 noundef %2) #0 {
  %4 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_spi_setup, i32 0, i32 7), align 4
  %5 = icmp eq ptr %4, null
  br i1 %5, label %14, label %6

6:                                                ; preds = %6, %3
  %7 = phi ptr [ %11, %6 ], [ %4, %3 ]
  %8 = load volatile ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.tracepoint_func, ptr %7, i32 0, i32 1
  %10 = load ptr, ptr %9, align 4
  tail call void %8(ptr noundef %10, ptr noundef %1, i32 noundef %2) #20
  %11 = getelementptr %struct.tracepoint_func, ptr %7, i32 1
  %12 = load ptr, ptr %11, align 4
  %13 = icmp eq ptr %12, null
  br i1 %13, label %14, label %6

14:                                               ; preds = %6, %3
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__traceiter_spi_set_cs(ptr nocapture readnone %0, ptr noundef %1, i1 noundef zeroext %2) #0 {
  %4 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_spi_set_cs, i32 0, i32 7), align 4
  %5 = icmp eq ptr %4, null
  br i1 %5, label %14, label %6

6:                                                ; preds = %6, %3
  %7 = phi ptr [ %11, %6 ], [ %4, %3 ]
  %8 = load volatile ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.tracepoint_func, ptr %7, i32 0, i32 1
  %10 = load ptr, ptr %9, align 4
  tail call void %8(ptr noundef %10, ptr noundef %1, i1 noundef zeroext %2) #20
  %11 = getelementptr %struct.tracepoint_func, ptr %7, i32 1
  %12 = load ptr, ptr %11, align 4
  %13 = icmp eq ptr %12, null
  br i1 %13, label %14, label %6

14:                                               ; preds = %6, %3
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__traceiter_spi_message_submit(ptr nocapture readnone %0, ptr noundef %1) #0 {
  %3 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_spi_message_submit, i32 0, i32 7), align 4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %13, label %5

5:                                                ; preds = %5, %2
  %6 = phi ptr [ %10, %5 ], [ %3, %2 ]
  %7 = load volatile ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.tracepoint_func, ptr %6, i32 0, i32 1
  %9 = load ptr, ptr %8, align 4
  tail call void %7(ptr noundef %9, ptr noundef %1) #20
  %10 = getelementptr %struct.tracepoint_func, ptr %6, i32 1
  %11 = load ptr, ptr %10, align 4
  %12 = icmp eq ptr %11, null
  br i1 %12, label %13, label %5

13:                                               ; preds = %5, %2
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__traceiter_spi_message_start(ptr nocapture readnone %0, ptr noundef %1) #0 {
  %3 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_spi_message_start, i32 0, i32 7), align 4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %13, label %5

5:                                                ; preds = %5, %2
  %6 = phi ptr [ %10, %5 ], [ %3, %2 ]
  %7 = load volatile ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.tracepoint_func, ptr %6, i32 0, i32 1
  %9 = load ptr, ptr %8, align 4
  tail call void %7(ptr noundef %9, ptr noundef %1) #20
  %10 = getelementptr %struct.tracepoint_func, ptr %6, i32 1
  %11 = load ptr, ptr %10, align 4
  %12 = icmp eq ptr %11, null
  br i1 %12, label %13, label %5

13:                                               ; preds = %5, %2
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__traceiter_spi_message_done(ptr nocapture readnone %0, ptr noundef %1) #0 {
  %3 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_spi_message_done, i32 0, i32 7), align 4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %13, label %5

5:                                                ; preds = %5, %2
  %6 = phi ptr [ %10, %5 ], [ %3, %2 ]
  %7 = load volatile ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.tracepoint_func, ptr %6, i32 0, i32 1
  %9 = load ptr, ptr %8, align 4
  tail call void %7(ptr noundef %9, ptr noundef %1) #20
  %10 = getelementptr %struct.tracepoint_func, ptr %6, i32 1
  %11 = load ptr, ptr %10, align 4
  %12 = icmp eq ptr %11, null
  br i1 %12, label %13, label %5

13:                                               ; preds = %5, %2
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__traceiter_spi_transfer_start(ptr nocapture readnone %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_spi_transfer_start, i32 0, i32 7), align 4
  %5 = icmp eq ptr %4, null
  br i1 %5, label %14, label %6

6:                                                ; preds = %6, %3
  %7 = phi ptr [ %11, %6 ], [ %4, %3 ]
  %8 = load volatile ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.tracepoint_func, ptr %7, i32 0, i32 1
  %10 = load ptr, ptr %9, align 4
  tail call void %8(ptr noundef %10, ptr noundef %1, ptr noundef %2) #20
  %11 = getelementptr %struct.tracepoint_func, ptr %7, i32 1
  %12 = load ptr, ptr %11, align 4
  %13 = icmp eq ptr %12, null
  br i1 %13, label %14, label %6

14:                                               ; preds = %6, %3
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__traceiter_spi_transfer_stop(ptr nocapture readnone %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_spi_transfer_stop, i32 0, i32 7), align 4
  %5 = icmp eq ptr %4, null
  br i1 %5, label %14, label %6

6:                                                ; preds = %6, %3
  %7 = phi ptr [ %11, %6 ], [ %4, %3 ]
  %8 = load volatile ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.tracepoint_func, ptr %7, i32 0, i32 1
  %10 = load ptr, ptr %9, align 4
  tail call void %8(ptr noundef %10, ptr noundef %1, ptr noundef %2) #20
  %11 = getelementptr %struct.tracepoint_func, ptr %7, i32 1
  %12 = load ptr, ptr %11, align 4
  %13 = icmp eq ptr %12, null
  br i1 %13, label %14, label %6

14:                                               ; preds = %6, %3
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @trace_event_raw_event_spi_controller(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = alloca %struct.trace_event_buffer, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #20
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %3, i8 0, i32 24, i1 false), !annotation !9
  %4 = getelementptr inbounds %struct.trace_event_file, ptr %0, i32 0, i32 7
  %5 = load i32, ptr %4, align 4
  %6 = and i32 %5, 704
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %13, label %8, !prof !10

8:                                                ; preds = %2
  %9 = and i32 %5, 256
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %13, !prof !11

11:                                               ; preds = %8
  %12 = tail call zeroext i1 @__trace_trigger_soft_disabled(ptr noundef %0) #20
  br i1 %12, label %21, label %13

13:                                               ; preds = %11, %8, %2
  %14 = call ptr @trace_event_buffer_reserve(ptr noundef nonnull %3, ptr noundef %0, i32 noundef 12) #20
  %15 = icmp eq ptr %14, null
  br i1 %15, label %21, label %16

16:                                               ; preds = %13
  %17 = getelementptr inbounds %struct.spi_controller, ptr %1, i32 0, i32 2
  %18 = load i16, ptr %17, align 8
  %19 = sext i16 %18 to i32
  %20 = getelementptr inbounds %struct.trace_event_raw_spi_controller, ptr %14, i32 0, i32 1
  store i32 %19, ptr %20, align 4
  call void @trace_event_buffer_commit(ptr noundef nonnull %3) #20
  br label %21

21:                                               ; preds = %16, %13, %11
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #20
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @perf_trace_spi_controller(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = alloca ptr, align 4
  %4 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #20
  store ptr null, ptr %3, align 4, !annotation !9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #20
  store i32 0, ptr %4, align 4, !annotation !9
  %5 = getelementptr inbounds %struct.trace_event_call, ptr %0, i32 0, i32 10
  %6 = load ptr, ptr %5, align 4
  %7 = ptrtoint ptr %6 to i32
  %8 = tail call i32 @llvm.read_register.i32(metadata !0) #20
  %9 = inttoptr i32 %8 to ptr
  %10 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %9) #11, !srcloc !12
  %11 = add i32 %10, %7
  %12 = inttoptr i32 %11 to ptr
  %13 = getelementptr inbounds %struct.trace_event_call, ptr %0, i32 0, i32 11
  %14 = load volatile ptr, ptr %13, align 4
  %15 = icmp eq ptr %14, null
  br i1 %15, label %16, label %19

16:                                               ; preds = %2
  %17 = load volatile ptr, ptr %12, align 4
  %18 = icmp eq ptr %17, null
  br i1 %18, label %39, label %19

19:                                               ; preds = %16, %2
  %20 = call ptr @perf_trace_buf_alloc(i32 noundef 12, ptr noundef nonnull %3, ptr noundef nonnull %4) #20
  %21 = icmp eq ptr %20, null
  br i1 %21, label %39, label %22

22:                                               ; preds = %19
  %23 = load ptr, ptr %3, align 4
  %24 = call ptr @llvm.returnaddress(i32 0) #20
  %25 = ptrtoint ptr %24 to i32
  %26 = getelementptr [18 x i32], ptr %23, i32 0, i32 15
  store i32 %25, ptr %26, align 4
  %27 = call ptr @llvm.frameaddress.p0(i32 0) #20
  %28 = ptrtoint ptr %27 to i32
  %29 = getelementptr [18 x i32], ptr %23, i32 0, i32 11
  store i32 %28, ptr %29, align 4
  %30 = call i32 @llvm.read_register.i32(metadata !0) #20
  %31 = getelementptr [18 x i32], ptr %23, i32 0, i32 13
  store i32 %30, ptr %31, align 4
  %32 = getelementptr [18 x i32], ptr %23, i32 0, i32 16
  store i32 19, ptr %32, align 4
  %33 = getelementptr inbounds %struct.spi_controller, ptr %1, i32 0, i32 2
  %34 = load i16, ptr %33, align 8
  %35 = sext i16 %34 to i32
  %36 = getelementptr inbounds %struct.trace_event_raw_spi_controller, ptr %20, i32 0, i32 1
  store i32 %35, ptr %36, align 4
  %37 = load i32, ptr %4, align 4
  %38 = load ptr, ptr %3, align 4
  call void @perf_trace_run_bpf_submit(ptr noundef nonnull %20, i32 noundef 12, i32 noundef %37, ptr noundef %0, i64 noundef 1, ptr noundef %38, ptr noundef %12, ptr noundef null) #20
  br label %39

39:                                               ; preds = %22, %19, %16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #20
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #20
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @trace_event_reg(ptr noundef, i32 noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @trace_event_raw_init(ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @trace_event_raw_event_spi_setup(ptr noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2) #0 {
  %4 = alloca %struct.trace_event_buffer, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #20
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %4, i8 0, i32 24, i1 false), !annotation !9
  %5 = getelementptr inbounds %struct.trace_event_file, ptr %0, i32 0, i32 7
  %6 = load i32, ptr %5, align 4
  %7 = and i32 %6, 704
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %14, label %9, !prof !10

9:                                                ; preds = %3
  %10 = and i32 %6, 256
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %14, !prof !11

12:                                               ; preds = %9
  %13 = tail call zeroext i1 @__trace_trigger_soft_disabled(ptr noundef %0) #20
  br i1 %13, label %39, label %14

14:                                               ; preds = %12, %9, %3
  %15 = call ptr @trace_event_buffer_reserve(ptr noundef nonnull %4, ptr noundef %0, i32 noundef 32) #20
  %16 = icmp eq ptr %15, null
  br i1 %16, label %39, label %17

17:                                               ; preds = %14
  %18 = getelementptr inbounds %struct.spi_device, ptr %1, i32 0, i32 1
  %19 = load ptr, ptr %18, align 8
  %20 = getelementptr inbounds %struct.spi_controller, ptr %19, i32 0, i32 2
  %21 = load i16, ptr %20, align 8
  %22 = sext i16 %21 to i32
  %23 = getelementptr inbounds %struct.trace_event_raw_spi_setup, ptr %15, i32 0, i32 1
  store i32 %22, ptr %23, align 4
  %24 = getelementptr inbounds %struct.spi_device, ptr %1, i32 0, i32 4
  %25 = load i8, ptr %24, align 4
  %26 = zext i8 %25 to i32
  %27 = getelementptr inbounds %struct.trace_event_raw_spi_setup, ptr %15, i32 0, i32 2
  store i32 %26, ptr %27, align 4
  %28 = getelementptr inbounds %struct.spi_device, ptr %1, i32 0, i32 7
  %29 = load i32, ptr %28, align 8
  %30 = getelementptr inbounds %struct.trace_event_raw_spi_setup, ptr %15, i32 0, i32 3
  store i32 %29, ptr %30, align 4
  %31 = getelementptr inbounds %struct.spi_device, ptr %1, i32 0, i32 5
  %32 = load i8, ptr %31, align 1
  %33 = zext i8 %32 to i32
  %34 = getelementptr inbounds %struct.trace_event_raw_spi_setup, ptr %15, i32 0, i32 4
  store i32 %33, ptr %34, align 4
  %35 = getelementptr inbounds %struct.spi_device, ptr %1, i32 0, i32 3
  %36 = load i32, ptr %35, align 8
  %37 = getelementptr inbounds %struct.trace_event_raw_spi_setup, ptr %15, i32 0, i32 5
  store i32 %36, ptr %37, align 4
  %38 = getelementptr inbounds %struct.trace_event_raw_spi_setup, ptr %15, i32 0, i32 6
  store i32 %2, ptr %38, align 4
  call void @trace_event_buffer_commit(ptr noundef nonnull %4) #20
  br label %39

39:                                               ; preds = %17, %14, %12
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #20
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @perf_trace_spi_setup(ptr noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2) #0 {
  %4 = alloca ptr, align 4
  %5 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #20
  store ptr null, ptr %4, align 4, !annotation !9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #20
  store i32 0, ptr %5, align 4, !annotation !9
  %6 = getelementptr inbounds %struct.trace_event_call, ptr %0, i32 0, i32 10
  %7 = load ptr, ptr %6, align 4
  %8 = ptrtoint ptr %7 to i32
  %9 = tail call i32 @llvm.read_register.i32(metadata !0) #20
  %10 = inttoptr i32 %9 to ptr
  %11 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %10) #11, !srcloc !12
  %12 = add i32 %11, %8
  %13 = inttoptr i32 %12 to ptr
  %14 = getelementptr inbounds %struct.trace_event_call, ptr %0, i32 0, i32 11
  %15 = load volatile ptr, ptr %14, align 4
  %16 = icmp eq ptr %15, null
  br i1 %16, label %17, label %20

17:                                               ; preds = %3
  %18 = load volatile ptr, ptr %13, align 4
  %19 = icmp eq ptr %18, null
  br i1 %19, label %57, label %20

20:                                               ; preds = %17, %3
  %21 = call ptr @perf_trace_buf_alloc(i32 noundef 36, ptr noundef nonnull %4, ptr noundef nonnull %5) #20
  %22 = icmp eq ptr %21, null
  br i1 %22, label %57, label %23

23:                                               ; preds = %20
  %24 = load ptr, ptr %4, align 4
  %25 = call ptr @llvm.returnaddress(i32 0) #20
  %26 = ptrtoint ptr %25 to i32
  %27 = getelementptr [18 x i32], ptr %24, i32 0, i32 15
  store i32 %26, ptr %27, align 4
  %28 = call ptr @llvm.frameaddress.p0(i32 0) #20
  %29 = ptrtoint ptr %28 to i32
  %30 = getelementptr [18 x i32], ptr %24, i32 0, i32 11
  store i32 %29, ptr %30, align 4
  %31 = call i32 @llvm.read_register.i32(metadata !0) #20
  %32 = getelementptr [18 x i32], ptr %24, i32 0, i32 13
  store i32 %31, ptr %32, align 4
  %33 = getelementptr [18 x i32], ptr %24, i32 0, i32 16
  store i32 19, ptr %33, align 4
  %34 = getelementptr inbounds %struct.spi_device, ptr %1, i32 0, i32 1
  %35 = load ptr, ptr %34, align 8
  %36 = getelementptr inbounds %struct.spi_controller, ptr %35, i32 0, i32 2
  %37 = load i16, ptr %36, align 8
  %38 = sext i16 %37 to i32
  %39 = getelementptr inbounds %struct.trace_event_raw_spi_setup, ptr %21, i32 0, i32 1
  store i32 %38, ptr %39, align 4
  %40 = getelementptr inbounds %struct.spi_device, ptr %1, i32 0, i32 4
  %41 = load i8, ptr %40, align 4
  %42 = zext i8 %41 to i32
  %43 = getelementptr inbounds %struct.trace_event_raw_spi_setup, ptr %21, i32 0, i32 2
  store i32 %42, ptr %43, align 4
  %44 = getelementptr inbounds %struct.spi_device, ptr %1, i32 0, i32 7
  %45 = load i32, ptr %44, align 8
  %46 = getelementptr inbounds %struct.trace_event_raw_spi_setup, ptr %21, i32 0, i32 3
  store i32 %45, ptr %46, align 4
  %47 = getelementptr inbounds %struct.spi_device, ptr %1, i32 0, i32 5
  %48 = load i8, ptr %47, align 1
  %49 = zext i8 %48 to i32
  %50 = getelementptr inbounds %struct.trace_event_raw_spi_setup, ptr %21, i32 0, i32 4
  store i32 %49, ptr %50, align 4
  %51 = getelementptr inbounds %struct.spi_device, ptr %1, i32 0, i32 3
  %52 = load i32, ptr %51, align 8
  %53 = getelementptr inbounds %struct.trace_event_raw_spi_setup, ptr %21, i32 0, i32 5
  store i32 %52, ptr %53, align 4
  %54 = getelementptr inbounds %struct.trace_event_raw_spi_setup, ptr %21, i32 0, i32 6
  store i32 %2, ptr %54, align 4
  %55 = load i32, ptr %5, align 4
  %56 = load ptr, ptr %4, align 4
  call void @perf_trace_run_bpf_submit(ptr noundef nonnull %21, i32 noundef 36, i32 noundef %55, ptr noundef %0, i64 noundef 1, ptr noundef %56, ptr noundef %13, ptr noundef null) #20
  br label %57

57:                                               ; preds = %23, %20, %17
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #20
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #20
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @trace_event_raw_event_spi_set_cs(ptr noundef %0, ptr nocapture noundef readonly %1, i1 noundef zeroext %2) #0 {
  %4 = alloca %struct.trace_event_buffer, align 4
  %5 = zext i1 %2 to i8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #20
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %4, i8 0, i32 24, i1 false), !annotation !9
  %6 = getelementptr inbounds %struct.trace_event_file, ptr %0, i32 0, i32 7
  %7 = load i32, ptr %6, align 4
  %8 = and i32 %7, 704
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %15, label %10, !prof !10

10:                                               ; preds = %3
  %11 = and i32 %7, 256
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %15, !prof !11

13:                                               ; preds = %10
  %14 = tail call zeroext i1 @__trace_trigger_soft_disabled(ptr noundef %0) #20
  br i1 %14, label %33, label %15

15:                                               ; preds = %13, %10, %3
  %16 = call ptr @trace_event_buffer_reserve(ptr noundef nonnull %4, ptr noundef %0, i32 noundef 24) #20
  %17 = icmp eq ptr %16, null
  br i1 %17, label %33, label %18

18:                                               ; preds = %15
  %19 = getelementptr inbounds %struct.spi_device, ptr %1, i32 0, i32 1
  %20 = load ptr, ptr %19, align 8
  %21 = getelementptr inbounds %struct.spi_controller, ptr %20, i32 0, i32 2
  %22 = load i16, ptr %21, align 8
  %23 = sext i16 %22 to i32
  %24 = getelementptr inbounds %struct.trace_event_raw_spi_set_cs, ptr %16, i32 0, i32 1
  store i32 %23, ptr %24, align 4
  %25 = getelementptr inbounds %struct.spi_device, ptr %1, i32 0, i32 4
  %26 = load i8, ptr %25, align 4
  %27 = zext i8 %26 to i32
  %28 = getelementptr inbounds %struct.trace_event_raw_spi_set_cs, ptr %16, i32 0, i32 2
  store i32 %27, ptr %28, align 4
  %29 = getelementptr inbounds %struct.spi_device, ptr %1, i32 0, i32 7
  %30 = load i32, ptr %29, align 8
  %31 = getelementptr inbounds %struct.trace_event_raw_spi_set_cs, ptr %16, i32 0, i32 3
  store i32 %30, ptr %31, align 4
  %32 = getelementptr inbounds %struct.trace_event_raw_spi_set_cs, ptr %16, i32 0, i32 4
  store i8 %5, ptr %32, align 4
  call void @trace_event_buffer_commit(ptr noundef nonnull %4) #20
  br label %33

33:                                               ; preds = %18, %15, %13
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #20
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @perf_trace_spi_set_cs(ptr noundef %0, ptr nocapture noundef readonly %1, i1 noundef zeroext %2) #0 {
  %4 = alloca ptr, align 4
  %5 = alloca i32, align 4
  %6 = zext i1 %2 to i8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #20
  store ptr null, ptr %4, align 4, !annotation !9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #20
  store i32 0, ptr %5, align 4, !annotation !9
  %7 = getelementptr inbounds %struct.trace_event_call, ptr %0, i32 0, i32 10
  %8 = load ptr, ptr %7, align 4
  %9 = ptrtoint ptr %8 to i32
  %10 = tail call i32 @llvm.read_register.i32(metadata !0) #20
  %11 = inttoptr i32 %10 to ptr
  %12 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %11) #11, !srcloc !12
  %13 = add i32 %12, %9
  %14 = inttoptr i32 %13 to ptr
  %15 = getelementptr inbounds %struct.trace_event_call, ptr %0, i32 0, i32 11
  %16 = load volatile ptr, ptr %15, align 4
  %17 = icmp eq ptr %16, null
  br i1 %17, label %18, label %21

18:                                               ; preds = %3
  %19 = load volatile ptr, ptr %14, align 4
  %20 = icmp eq ptr %19, null
  br i1 %20, label %51, label %21

21:                                               ; preds = %18, %3
  %22 = call ptr @perf_trace_buf_alloc(i32 noundef 28, ptr noundef nonnull %4, ptr noundef nonnull %5) #20
  %23 = icmp eq ptr %22, null
  br i1 %23, label %51, label %24

24:                                               ; preds = %21
  %25 = load ptr, ptr %4, align 4
  %26 = call ptr @llvm.returnaddress(i32 0) #20
  %27 = ptrtoint ptr %26 to i32
  %28 = getelementptr [18 x i32], ptr %25, i32 0, i32 15
  store i32 %27, ptr %28, align 4
  %29 = call ptr @llvm.frameaddress.p0(i32 0) #20
  %30 = ptrtoint ptr %29 to i32
  %31 = getelementptr [18 x i32], ptr %25, i32 0, i32 11
  store i32 %30, ptr %31, align 4
  %32 = call i32 @llvm.read_register.i32(metadata !0) #20
  %33 = getelementptr [18 x i32], ptr %25, i32 0, i32 13
  store i32 %32, ptr %33, align 4
  %34 = getelementptr [18 x i32], ptr %25, i32 0, i32 16
  store i32 19, ptr %34, align 4
  %35 = getelementptr inbounds %struct.spi_device, ptr %1, i32 0, i32 1
  %36 = load ptr, ptr %35, align 8
  %37 = getelementptr inbounds %struct.spi_controller, ptr %36, i32 0, i32 2
  %38 = load i16, ptr %37, align 8
  %39 = sext i16 %38 to i32
  %40 = getelementptr inbounds %struct.trace_event_raw_spi_set_cs, ptr %22, i32 0, i32 1
  store i32 %39, ptr %40, align 4
  %41 = getelementptr inbounds %struct.spi_device, ptr %1, i32 0, i32 4
  %42 = load i8, ptr %41, align 4
  %43 = zext i8 %42 to i32
  %44 = getelementptr inbounds %struct.trace_event_raw_spi_set_cs, ptr %22, i32 0, i32 2
  store i32 %43, ptr %44, align 4
  %45 = getelementptr inbounds %struct.spi_device, ptr %1, i32 0, i32 7
  %46 = load i32, ptr %45, align 8
  %47 = getelementptr inbounds %struct.trace_event_raw_spi_set_cs, ptr %22, i32 0, i32 3
  store i32 %46, ptr %47, align 4
  %48 = getelementptr inbounds %struct.trace_event_raw_spi_set_cs, ptr %22, i32 0, i32 4
  store i8 %6, ptr %48, align 4
  %49 = load i32, ptr %5, align 4
  %50 = load ptr, ptr %4, align 4
  call void @perf_trace_run_bpf_submit(ptr noundef nonnull %22, i32 noundef 28, i32 noundef %49, ptr noundef %0, i64 noundef 1, ptr noundef %50, ptr noundef %14, ptr noundef null) #20
  br label %51

51:                                               ; preds = %24, %21, %18
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #20
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #20
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @trace_event_raw_event_spi_message(ptr noundef %0, ptr noundef %1) #0 {
  %3 = alloca %struct.trace_event_buffer, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #20
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %3, i8 0, i32 24, i1 false), !annotation !9
  %4 = getelementptr inbounds %struct.trace_event_file, ptr %0, i32 0, i32 7
  %5 = load i32, ptr %4, align 4
  %6 = and i32 %5, 704
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %13, label %8, !prof !10

8:                                                ; preds = %2
  %9 = and i32 %5, 256
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %13, !prof !11

11:                                               ; preds = %8
  %12 = tail call zeroext i1 @__trace_trigger_soft_disabled(ptr noundef %0) #20
  br i1 %12, label %31, label %13

13:                                               ; preds = %11, %8, %2
  %14 = call ptr @trace_event_buffer_reserve(ptr noundef nonnull %3, ptr noundef %0, i32 noundef 20) #20
  %15 = icmp eq ptr %14, null
  br i1 %15, label %31, label %16

16:                                               ; preds = %13
  %17 = getelementptr inbounds %struct.spi_message, ptr %1, i32 0, i32 1
  %18 = load ptr, ptr %17, align 4
  %19 = getelementptr inbounds %struct.spi_device, ptr %18, i32 0, i32 1
  %20 = load ptr, ptr %19, align 8
  %21 = getelementptr inbounds %struct.spi_controller, ptr %20, i32 0, i32 2
  %22 = load i16, ptr %21, align 8
  %23 = sext i16 %22 to i32
  %24 = getelementptr inbounds %struct.trace_event_raw_spi_message, ptr %14, i32 0, i32 1
  store i32 %23, ptr %24, align 4
  %25 = load ptr, ptr %17, align 4
  %26 = getelementptr inbounds %struct.spi_device, ptr %25, i32 0, i32 4
  %27 = load i8, ptr %26, align 4
  %28 = zext i8 %27 to i32
  %29 = getelementptr inbounds %struct.trace_event_raw_spi_message, ptr %14, i32 0, i32 2
  store i32 %28, ptr %29, align 4
  %30 = getelementptr inbounds %struct.trace_event_raw_spi_message, ptr %14, i32 0, i32 3
  store ptr %1, ptr %30, align 4
  call void @trace_event_buffer_commit(ptr noundef nonnull %3) #20
  br label %31

31:                                               ; preds = %16, %13, %11
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #20
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @perf_trace_spi_message(ptr noundef %0, ptr noundef %1) #0 {
  %3 = alloca ptr, align 4
  %4 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #20
  store ptr null, ptr %3, align 4, !annotation !9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #20
  store i32 0, ptr %4, align 4, !annotation !9
  %5 = getelementptr inbounds %struct.trace_event_call, ptr %0, i32 0, i32 10
  %6 = load ptr, ptr %5, align 4
  %7 = ptrtoint ptr %6 to i32
  %8 = tail call i32 @llvm.read_register.i32(metadata !0) #20
  %9 = inttoptr i32 %8 to ptr
  %10 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %9) #11, !srcloc !12
  %11 = add i32 %10, %7
  %12 = inttoptr i32 %11 to ptr
  %13 = getelementptr inbounds %struct.trace_event_call, ptr %0, i32 0, i32 11
  %14 = load volatile ptr, ptr %13, align 4
  %15 = icmp eq ptr %14, null
  br i1 %15, label %16, label %19

16:                                               ; preds = %2
  %17 = load volatile ptr, ptr %12, align 4
  %18 = icmp eq ptr %17, null
  br i1 %18, label %49, label %19

19:                                               ; preds = %16, %2
  %20 = call ptr @perf_trace_buf_alloc(i32 noundef 20, ptr noundef nonnull %3, ptr noundef nonnull %4) #20
  %21 = icmp eq ptr %20, null
  br i1 %21, label %49, label %22

22:                                               ; preds = %19
  %23 = load ptr, ptr %3, align 4
  %24 = call ptr @llvm.returnaddress(i32 0) #20
  %25 = ptrtoint ptr %24 to i32
  %26 = getelementptr [18 x i32], ptr %23, i32 0, i32 15
  store i32 %25, ptr %26, align 4
  %27 = call ptr @llvm.frameaddress.p0(i32 0) #20
  %28 = ptrtoint ptr %27 to i32
  %29 = getelementptr [18 x i32], ptr %23, i32 0, i32 11
  store i32 %28, ptr %29, align 4
  %30 = call i32 @llvm.read_register.i32(metadata !0) #20
  %31 = getelementptr [18 x i32], ptr %23, i32 0, i32 13
  store i32 %30, ptr %31, align 4
  %32 = getelementptr [18 x i32], ptr %23, i32 0, i32 16
  store i32 19, ptr %32, align 4
  %33 = getelementptr inbounds %struct.spi_message, ptr %1, i32 0, i32 1
  %34 = load ptr, ptr %33, align 4
  %35 = getelementptr inbounds %struct.spi_device, ptr %34, i32 0, i32 1
  %36 = load ptr, ptr %35, align 8
  %37 = getelementptr inbounds %struct.spi_controller, ptr %36, i32 0, i32 2
  %38 = load i16, ptr %37, align 8
  %39 = sext i16 %38 to i32
  %40 = getelementptr inbounds %struct.trace_event_raw_spi_message, ptr %20, i32 0, i32 1
  store i32 %39, ptr %40, align 4
  %41 = load ptr, ptr %33, align 4
  %42 = getelementptr inbounds %struct.spi_device, ptr %41, i32 0, i32 4
  %43 = load i8, ptr %42, align 4
  %44 = zext i8 %43 to i32
  %45 = getelementptr inbounds %struct.trace_event_raw_spi_message, ptr %20, i32 0, i32 2
  store i32 %44, ptr %45, align 4
  %46 = getelementptr inbounds %struct.trace_event_raw_spi_message, ptr %20, i32 0, i32 3
  store ptr %1, ptr %46, align 4
  %47 = load i32, ptr %4, align 4
  %48 = load ptr, ptr %3, align 4
  call void @perf_trace_run_bpf_submit(ptr noundef nonnull %20, i32 noundef 20, i32 noundef %47, ptr noundef %0, i64 noundef 1, ptr noundef %48, ptr noundef %12, ptr noundef null) #20
  br label %49

49:                                               ; preds = %22, %19, %16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #20
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #20
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @trace_event_raw_event_spi_message_done(ptr noundef %0, ptr noundef %1) #0 {
  %3 = alloca %struct.trace_event_buffer, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #20
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %3, i8 0, i32 24, i1 false), !annotation !9
  %4 = getelementptr inbounds %struct.trace_event_file, ptr %0, i32 0, i32 7
  %5 = load i32, ptr %4, align 4
  %6 = and i32 %5, 704
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %13, label %8, !prof !10

8:                                                ; preds = %2
  %9 = and i32 %5, 256
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %13, !prof !11

11:                                               ; preds = %8
  %12 = tail call zeroext i1 @__trace_trigger_soft_disabled(ptr noundef %0) #20
  br i1 %12, label %37, label %13

13:                                               ; preds = %11, %8, %2
  %14 = call ptr @trace_event_buffer_reserve(ptr noundef nonnull %3, ptr noundef %0, i32 noundef 28) #20
  %15 = icmp eq ptr %14, null
  br i1 %15, label %37, label %16

16:                                               ; preds = %13
  %17 = getelementptr inbounds %struct.spi_message, ptr %1, i32 0, i32 1
  %18 = load ptr, ptr %17, align 4
  %19 = getelementptr inbounds %struct.spi_device, ptr %18, i32 0, i32 1
  %20 = load ptr, ptr %19, align 8
  %21 = getelementptr inbounds %struct.spi_controller, ptr %20, i32 0, i32 2
  %22 = load i16, ptr %21, align 8
  %23 = sext i16 %22 to i32
  %24 = getelementptr inbounds %struct.trace_event_raw_spi_message_done, ptr %14, i32 0, i32 1
  store i32 %23, ptr %24, align 4
  %25 = load ptr, ptr %17, align 4
  %26 = getelementptr inbounds %struct.spi_device, ptr %25, i32 0, i32 4
  %27 = load i8, ptr %26, align 4
  %28 = zext i8 %27 to i32
  %29 = getelementptr inbounds %struct.trace_event_raw_spi_message_done, ptr %14, i32 0, i32 2
  store i32 %28, ptr %29, align 4
  %30 = getelementptr inbounds %struct.trace_event_raw_spi_message_done, ptr %14, i32 0, i32 3
  store ptr %1, ptr %30, align 4
  %31 = getelementptr inbounds %struct.spi_message, ptr %1, i32 0, i32 5
  %32 = load i32, ptr %31, align 4
  %33 = getelementptr inbounds %struct.trace_event_raw_spi_message_done, ptr %14, i32 0, i32 4
  store i32 %32, ptr %33, align 4
  %34 = getelementptr inbounds %struct.spi_message, ptr %1, i32 0, i32 6
  %35 = load i32, ptr %34, align 4
  %36 = getelementptr inbounds %struct.trace_event_raw_spi_message_done, ptr %14, i32 0, i32 5
  store i32 %35, ptr %36, align 4
  call void @trace_event_buffer_commit(ptr noundef nonnull %3) #20
  br label %37

37:                                               ; preds = %16, %13, %11
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #20
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @perf_trace_spi_message_done(ptr noundef %0, ptr noundef %1) #0 {
  %3 = alloca ptr, align 4
  %4 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #20
  store ptr null, ptr %3, align 4, !annotation !9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #20
  store i32 0, ptr %4, align 4, !annotation !9
  %5 = getelementptr inbounds %struct.trace_event_call, ptr %0, i32 0, i32 10
  %6 = load ptr, ptr %5, align 4
  %7 = ptrtoint ptr %6 to i32
  %8 = tail call i32 @llvm.read_register.i32(metadata !0) #20
  %9 = inttoptr i32 %8 to ptr
  %10 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %9) #11, !srcloc !12
  %11 = add i32 %10, %7
  %12 = inttoptr i32 %11 to ptr
  %13 = getelementptr inbounds %struct.trace_event_call, ptr %0, i32 0, i32 11
  %14 = load volatile ptr, ptr %13, align 4
  %15 = icmp eq ptr %14, null
  br i1 %15, label %16, label %19

16:                                               ; preds = %2
  %17 = load volatile ptr, ptr %12, align 4
  %18 = icmp eq ptr %17, null
  br i1 %18, label %55, label %19

19:                                               ; preds = %16, %2
  %20 = call ptr @perf_trace_buf_alloc(i32 noundef 28, ptr noundef nonnull %3, ptr noundef nonnull %4) #20
  %21 = icmp eq ptr %20, null
  br i1 %21, label %55, label %22

22:                                               ; preds = %19
  %23 = load ptr, ptr %3, align 4
  %24 = call ptr @llvm.returnaddress(i32 0) #20
  %25 = ptrtoint ptr %24 to i32
  %26 = getelementptr [18 x i32], ptr %23, i32 0, i32 15
  store i32 %25, ptr %26, align 4
  %27 = call ptr @llvm.frameaddress.p0(i32 0) #20
  %28 = ptrtoint ptr %27 to i32
  %29 = getelementptr [18 x i32], ptr %23, i32 0, i32 11
  store i32 %28, ptr %29, align 4
  %30 = call i32 @llvm.read_register.i32(metadata !0) #20
  %31 = getelementptr [18 x i32], ptr %23, i32 0, i32 13
  store i32 %30, ptr %31, align 4
  %32 = getelementptr [18 x i32], ptr %23, i32 0, i32 16
  store i32 19, ptr %32, align 4
  %33 = getelementptr inbounds %struct.spi_message, ptr %1, i32 0, i32 1
  %34 = load ptr, ptr %33, align 4
  %35 = getelementptr inbounds %struct.spi_device, ptr %34, i32 0, i32 1
  %36 = load ptr, ptr %35, align 8
  %37 = getelementptr inbounds %struct.spi_controller, ptr %36, i32 0, i32 2
  %38 = load i16, ptr %37, align 8
  %39 = sext i16 %38 to i32
  %40 = getelementptr inbounds %struct.trace_event_raw_spi_message_done, ptr %20, i32 0, i32 1
  store i32 %39, ptr %40, align 4
  %41 = load ptr, ptr %33, align 4
  %42 = getelementptr inbounds %struct.spi_device, ptr %41, i32 0, i32 4
  %43 = load i8, ptr %42, align 4
  %44 = zext i8 %43 to i32
  %45 = getelementptr inbounds %struct.trace_event_raw_spi_message_done, ptr %20, i32 0, i32 2
  store i32 %44, ptr %45, align 4
  %46 = getelementptr inbounds %struct.trace_event_raw_spi_message_done, ptr %20, i32 0, i32 3
  store ptr %1, ptr %46, align 4
  %47 = getelementptr inbounds %struct.spi_message, ptr %1, i32 0, i32 5
  %48 = load i32, ptr %47, align 4
  %49 = getelementptr inbounds %struct.trace_event_raw_spi_message_done, ptr %20, i32 0, i32 4
  store i32 %48, ptr %49, align 4
  %50 = getelementptr inbounds %struct.spi_message, ptr %1, i32 0, i32 6
  %51 = load i32, ptr %50, align 4
  %52 = getelementptr inbounds %struct.trace_event_raw_spi_message_done, ptr %20, i32 0, i32 5
  store i32 %51, ptr %52, align 4
  %53 = load i32, ptr %4, align 4
  %54 = load ptr, ptr %3, align 4
  call void @perf_trace_run_bpf_submit(ptr noundef nonnull %20, i32 noundef 28, i32 noundef %53, ptr noundef %0, i64 noundef 1, ptr noundef %54, ptr noundef %12, ptr noundef null) #20
  br label %55

55:                                               ; preds = %22, %19, %16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #20
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #20
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @trace_event_raw_event_spi_transfer(ptr noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2) #0 {
  %4 = alloca %struct.trace_event_buffer, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #20
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %4, i8 0, i32 24, i1 false), !annotation !9
  %5 = getelementptr inbounds %struct.trace_event_file, ptr %0, i32 0, i32 7
  %6 = load i32, ptr %5, align 4
  %7 = and i32 %6, 704
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %14, label %9, !prof !10

9:                                                ; preds = %3
  %10 = and i32 %6, 256
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %14, !prof !11

12:                                               ; preds = %9
  %13 = tail call zeroext i1 @__trace_trigger_soft_disabled(ptr noundef %0) #20
  br i1 %13, label %103, label %14

14:                                               ; preds = %12, %9, %3
  %15 = getelementptr inbounds %struct.spi_transfer, ptr %2, i32 0, i32 1
  %16 = load ptr, ptr %15, align 4
  %17 = icmp eq ptr %16, null
  br i1 %17, label %30, label %18

18:                                               ; preds = %14
  %19 = getelementptr inbounds %struct.spi_message, ptr %1, i32 0, i32 1
  %20 = load ptr, ptr %19, align 4
  %21 = getelementptr inbounds %struct.spi_device, ptr %20, i32 0, i32 1
  %22 = load ptr, ptr %21, align 8
  %23 = getelementptr inbounds %struct.spi_controller, ptr %22, i32 0, i32 62
  %24 = load ptr, ptr %23, align 8
  %25 = icmp eq ptr %16, %24
  br i1 %25, label %30, label %26

26:                                               ; preds = %18
  %27 = getelementptr inbounds %struct.spi_transfer, ptr %2, i32 0, i32 2
  %28 = load i32, ptr %27, align 4
  %29 = tail call i32 @llvm.umin.i32(i32 %28, i32 64) #20
  br label %30

30:                                               ; preds = %26, %18, %14
  %31 = phi i32 [ 0, %18 ], [ 0, %14 ], [ %29, %26 ]
  %32 = shl nuw nsw i32 %31, 16
  %33 = or i32 %32, 32
  %34 = load ptr, ptr %2, align 4
  %35 = icmp eq ptr %34, null
  br i1 %35, label %48, label %36

36:                                               ; preds = %30
  %37 = getelementptr inbounds %struct.spi_message, ptr %1, i32 0, i32 1
  %38 = load ptr, ptr %37, align 4
  %39 = getelementptr inbounds %struct.spi_device, ptr %38, i32 0, i32 1
  %40 = load ptr, ptr %39, align 8
  %41 = getelementptr inbounds %struct.spi_controller, ptr %40, i32 0, i32 63
  %42 = load ptr, ptr %41, align 4
  %43 = icmp eq ptr %34, %42
  br i1 %43, label %48, label %44

44:                                               ; preds = %36
  %45 = getelementptr inbounds %struct.spi_transfer, ptr %2, i32 0, i32 2
  %46 = load i32, ptr %45, align 4
  %47 = tail call i32 @llvm.umin.i32(i32 %46, i32 64) #20
  br label %48

48:                                               ; preds = %44, %36, %30
  %49 = phi i32 [ 0, %36 ], [ 0, %30 ], [ %47, %44 ]
  %50 = add nuw nsw i32 %31, 32
  %51 = add nuw nsw i32 %50, %49
  %52 = call ptr @trace_event_buffer_reserve(ptr noundef nonnull %4, ptr noundef %0, i32 noundef %51) #20
  %53 = icmp eq ptr %52, null
  br i1 %53, label %103, label %54

54:                                               ; preds = %48
  %55 = shl nuw nsw i32 %49, 16
  %56 = or i32 %55, %50
  %57 = getelementptr inbounds %struct.trace_event_raw_spi_transfer, ptr %52, i32 0, i32 5
  store i32 %33, ptr %57, align 4
  %58 = getelementptr inbounds %struct.trace_event_raw_spi_transfer, ptr %52, i32 0, i32 6
  store i32 %56, ptr %58, align 4
  %59 = getelementptr inbounds %struct.spi_message, ptr %1, i32 0, i32 1
  %60 = load ptr, ptr %59, align 4
  %61 = getelementptr inbounds %struct.spi_device, ptr %60, i32 0, i32 1
  %62 = load ptr, ptr %61, align 8
  %63 = getelementptr inbounds %struct.spi_controller, ptr %62, i32 0, i32 2
  %64 = load i16, ptr %63, align 8
  %65 = sext i16 %64 to i32
  %66 = getelementptr inbounds %struct.trace_event_raw_spi_transfer, ptr %52, i32 0, i32 1
  store i32 %65, ptr %66, align 4
  %67 = load ptr, ptr %59, align 4
  %68 = getelementptr inbounds %struct.spi_device, ptr %67, i32 0, i32 4
  %69 = load i8, ptr %68, align 4
  %70 = zext i8 %69 to i32
  %71 = getelementptr inbounds %struct.trace_event_raw_spi_transfer, ptr %52, i32 0, i32 2
  store i32 %70, ptr %71, align 4
  %72 = getelementptr inbounds %struct.trace_event_raw_spi_transfer, ptr %52, i32 0, i32 3
  store ptr %2, ptr %72, align 4
  %73 = getelementptr inbounds %struct.spi_transfer, ptr %2, i32 0, i32 2
  %74 = load i32, ptr %73, align 4
  %75 = getelementptr inbounds %struct.trace_event_raw_spi_transfer, ptr %52, i32 0, i32 4
  store i32 %74, ptr %75, align 4
  %76 = load ptr, ptr %2, align 4
  %77 = icmp eq ptr %76, null
  br i1 %77, label %87, label %78

78:                                               ; preds = %54
  %79 = load ptr, ptr %59, align 4
  %80 = getelementptr inbounds %struct.spi_device, ptr %79, i32 0, i32 1
  %81 = load ptr, ptr %80, align 8
  %82 = getelementptr inbounds %struct.spi_controller, ptr %81, i32 0, i32 63
  %83 = load ptr, ptr %82, align 4
  %84 = icmp eq ptr %76, %83
  br i1 %84, label %87, label %85

85:                                               ; preds = %78
  %86 = getelementptr i8, ptr %52, i32 %50
  call void @llvm.memcpy.p0.p0.i32(ptr align 1 %86, ptr nonnull align 1 %76, i32 %49, i1 false)
  br label %87

87:                                               ; preds = %85, %78, %54
  %88 = load ptr, ptr %15, align 4
  %89 = icmp eq ptr %88, null
  br i1 %89, label %102, label %90

90:                                               ; preds = %87
  %91 = load ptr, ptr %59, align 4
  %92 = getelementptr inbounds %struct.spi_device, ptr %91, i32 0, i32 1
  %93 = load ptr, ptr %92, align 8
  %94 = getelementptr inbounds %struct.spi_controller, ptr %93, i32 0, i32 62
  %95 = load ptr, ptr %94, align 8
  %96 = icmp eq ptr %88, %95
  br i1 %96, label %102, label %97

97:                                               ; preds = %90
  %98 = load i32, ptr %57, align 4
  %99 = and i32 %98, 65535
  %100 = getelementptr i8, ptr %52, i32 %99
  %101 = lshr i32 %98, 16
  call void @llvm.memcpy.p0.p0.i32(ptr align 1 %100, ptr nonnull align 1 %88, i32 %101, i1 false)
  br label %102

102:                                              ; preds = %97, %90, %87
  call void @trace_event_buffer_commit(ptr noundef nonnull %4) #20
  br label %103

103:                                              ; preds = %102, %48, %12
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #20
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @perf_trace_spi_transfer(ptr noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2) #0 {
  %4 = alloca ptr, align 4
  %5 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #20
  store ptr null, ptr %4, align 4, !annotation !9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #20
  store i32 0, ptr %5, align 4, !annotation !9
  %6 = getelementptr inbounds %struct.spi_transfer, ptr %2, i32 0, i32 1
  %7 = load ptr, ptr %6, align 4
  %8 = icmp eq ptr %7, null
  br i1 %8, label %21, label %9

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.spi_message, ptr %1, i32 0, i32 1
  %11 = load ptr, ptr %10, align 4
  %12 = getelementptr inbounds %struct.spi_device, ptr %11, i32 0, i32 1
  %13 = load ptr, ptr %12, align 8
  %14 = getelementptr inbounds %struct.spi_controller, ptr %13, i32 0, i32 62
  %15 = load ptr, ptr %14, align 8
  %16 = icmp eq ptr %7, %15
  br i1 %16, label %21, label %17

17:                                               ; preds = %9
  %18 = getelementptr inbounds %struct.spi_transfer, ptr %2, i32 0, i32 2
  %19 = load i32, ptr %18, align 4
  %20 = tail call i32 @llvm.umin.i32(i32 %19, i32 64) #20
  br label %21

21:                                               ; preds = %17, %9, %3
  %22 = phi i32 [ 0, %9 ], [ 0, %3 ], [ %20, %17 ]
  %23 = shl nuw nsw i32 %22, 16
  %24 = or i32 %23, 32
  %25 = load ptr, ptr %2, align 4
  %26 = icmp eq ptr %25, null
  br i1 %26, label %39, label %27

27:                                               ; preds = %21
  %28 = getelementptr inbounds %struct.spi_message, ptr %1, i32 0, i32 1
  %29 = load ptr, ptr %28, align 4
  %30 = getelementptr inbounds %struct.spi_device, ptr %29, i32 0, i32 1
  %31 = load ptr, ptr %30, align 8
  %32 = getelementptr inbounds %struct.spi_controller, ptr %31, i32 0, i32 63
  %33 = load ptr, ptr %32, align 4
  %34 = icmp eq ptr %25, %33
  br i1 %34, label %39, label %35

35:                                               ; preds = %27
  %36 = getelementptr inbounds %struct.spi_transfer, ptr %2, i32 0, i32 2
  %37 = load i32, ptr %36, align 4
  %38 = tail call i32 @llvm.umin.i32(i32 %37, i32 64) #20
  br label %39

39:                                               ; preds = %35, %27, %21
  %40 = phi i32 [ 0, %27 ], [ 0, %21 ], [ %38, %35 ]
  %41 = add nuw nsw i32 %22, 32
  %42 = shl nuw nsw i32 %40, 16
  %43 = or i32 %42, %41
  %44 = getelementptr inbounds %struct.trace_event_call, ptr %0, i32 0, i32 10
  %45 = load ptr, ptr %44, align 4
  %46 = ptrtoint ptr %45 to i32
  %47 = tail call i32 @llvm.read_register.i32(metadata !0) #20
  %48 = inttoptr i32 %47 to ptr
  %49 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %48) #11, !srcloc !12
  %50 = add i32 %49, %46
  %51 = inttoptr i32 %50 to ptr
  %52 = getelementptr inbounds %struct.trace_event_call, ptr %0, i32 0, i32 11
  %53 = load volatile ptr, ptr %52, align 4
  %54 = icmp eq ptr %53, null
  br i1 %54, label %55, label %58

55:                                               ; preds = %39
  %56 = load volatile ptr, ptr %51, align 4
  %57 = icmp eq ptr %56, null
  br i1 %57, label %124, label %58

58:                                               ; preds = %55, %39
  %59 = add nuw nsw i32 %22, 43
  %60 = add nuw nsw i32 %59, %40
  %61 = and i32 %60, 504
  %62 = add nsw i32 %61, -4
  %63 = call ptr @perf_trace_buf_alloc(i32 noundef %62, ptr noundef nonnull %4, ptr noundef nonnull %5) #20
  %64 = icmp eq ptr %63, null
  br i1 %64, label %124, label %65

65:                                               ; preds = %58
  %66 = load ptr, ptr %4, align 4
  %67 = call ptr @llvm.returnaddress(i32 0) #20
  %68 = ptrtoint ptr %67 to i32
  %69 = getelementptr [18 x i32], ptr %66, i32 0, i32 15
  store i32 %68, ptr %69, align 4
  %70 = call ptr @llvm.frameaddress.p0(i32 0) #20
  %71 = ptrtoint ptr %70 to i32
  %72 = getelementptr [18 x i32], ptr %66, i32 0, i32 11
  store i32 %71, ptr %72, align 4
  %73 = call i32 @llvm.read_register.i32(metadata !0) #20
  %74 = getelementptr [18 x i32], ptr %66, i32 0, i32 13
  store i32 %73, ptr %74, align 4
  %75 = getelementptr [18 x i32], ptr %66, i32 0, i32 16
  store i32 19, ptr %75, align 4
  %76 = getelementptr inbounds %struct.trace_event_raw_spi_transfer, ptr %63, i32 0, i32 5
  store i32 %24, ptr %76, align 4
  %77 = getelementptr inbounds %struct.trace_event_raw_spi_transfer, ptr %63, i32 0, i32 6
  store i32 %43, ptr %77, align 4
  %78 = getelementptr inbounds %struct.spi_message, ptr %1, i32 0, i32 1
  %79 = load ptr, ptr %78, align 4
  %80 = getelementptr inbounds %struct.spi_device, ptr %79, i32 0, i32 1
  %81 = load ptr, ptr %80, align 8
  %82 = getelementptr inbounds %struct.spi_controller, ptr %81, i32 0, i32 2
  %83 = load i16, ptr %82, align 8
  %84 = sext i16 %83 to i32
  %85 = getelementptr inbounds %struct.trace_event_raw_spi_transfer, ptr %63, i32 0, i32 1
  store i32 %84, ptr %85, align 4
  %86 = load ptr, ptr %78, align 4
  %87 = getelementptr inbounds %struct.spi_device, ptr %86, i32 0, i32 4
  %88 = load i8, ptr %87, align 4
  %89 = zext i8 %88 to i32
  %90 = getelementptr inbounds %struct.trace_event_raw_spi_transfer, ptr %63, i32 0, i32 2
  store i32 %89, ptr %90, align 4
  %91 = getelementptr inbounds %struct.trace_event_raw_spi_transfer, ptr %63, i32 0, i32 3
  store ptr %2, ptr %91, align 4
  %92 = getelementptr inbounds %struct.spi_transfer, ptr %2, i32 0, i32 2
  %93 = load i32, ptr %92, align 4
  %94 = getelementptr inbounds %struct.trace_event_raw_spi_transfer, ptr %63, i32 0, i32 4
  store i32 %93, ptr %94, align 4
  %95 = load ptr, ptr %2, align 4
  %96 = icmp eq ptr %95, null
  br i1 %96, label %106, label %97

97:                                               ; preds = %65
  %98 = load ptr, ptr %78, align 4
  %99 = getelementptr inbounds %struct.spi_device, ptr %98, i32 0, i32 1
  %100 = load ptr, ptr %99, align 8
  %101 = getelementptr inbounds %struct.spi_controller, ptr %100, i32 0, i32 63
  %102 = load ptr, ptr %101, align 4
  %103 = icmp eq ptr %95, %102
  br i1 %103, label %106, label %104

104:                                              ; preds = %97
  %105 = getelementptr i8, ptr %63, i32 %41
  call void @llvm.memcpy.p0.p0.i32(ptr align 1 %105, ptr nonnull align 1 %95, i32 %40, i1 false)
  br label %106

106:                                              ; preds = %104, %97, %65
  %107 = load ptr, ptr %6, align 4
  %108 = icmp eq ptr %107, null
  br i1 %108, label %121, label %109

109:                                              ; preds = %106
  %110 = load ptr, ptr %78, align 4
  %111 = getelementptr inbounds %struct.spi_device, ptr %110, i32 0, i32 1
  %112 = load ptr, ptr %111, align 8
  %113 = getelementptr inbounds %struct.spi_controller, ptr %112, i32 0, i32 62
  %114 = load ptr, ptr %113, align 8
  %115 = icmp eq ptr %107, %114
  br i1 %115, label %121, label %116

116:                                              ; preds = %109
  %117 = load i32, ptr %76, align 4
  %118 = and i32 %117, 65535
  %119 = getelementptr i8, ptr %63, i32 %118
  %120 = lshr i32 %117, 16
  call void @llvm.memcpy.p0.p0.i32(ptr align 1 %119, ptr nonnull align 1 %107, i32 %120, i1 false)
  br label %121

121:                                              ; preds = %116, %109, %106
  %122 = load i32, ptr %5, align 4
  %123 = load ptr, ptr %4, align 4
  call void @perf_trace_run_bpf_submit(ptr noundef nonnull %63, i32 noundef %62, i32 noundef %122, ptr noundef %0, i64 noundef 1, ptr noundef %123, ptr noundef %51, ptr noundef null) #20
  br label %124

124:                                              ; preds = %121, %58, %55
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #20
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #20
  ret void
}

; Function Attrs: nofree nounwind null_pointer_is_valid readonly sspstrong uwtable(sync)
define dso_local ptr @spi_get_device_id(ptr nocapture noundef readonly %0) #3 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 6
  %3 = load ptr, ptr %2, align 8
  %4 = icmp eq ptr %3, null
  %5 = getelementptr i8, ptr %3, i32 -16
  %6 = select i1 %4, ptr null, ptr %5
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.spi_device, ptr %0, i32 0, i32 11
  %9 = load i8, ptr %7, align 4
  %10 = icmp eq i8 %9, 0
  br i1 %10, label %19, label %11

11:                                               ; preds = %15, %1
  %12 = phi ptr [ %16, %15 ], [ %7, %1 ]
  %13 = tail call i32 @strcmp(ptr noundef %8, ptr noundef %12) #20
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %19, label %15

15:                                               ; preds = %11
  %16 = getelementptr %struct.spi_device_id, ptr %12, i32 1
  %17 = load i8, ptr %16, align 4
  %18 = icmp eq i8 %17, 0
  br i1 %18, label %19, label %11

19:                                               ; preds = %15, %11, %1
  %20 = phi ptr [ null, %1 ], [ %12, %11 ], [ null, %15 ]
  ret ptr %20
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @spi_match_device(ptr noundef %0, ptr noundef readonly %1) #0 {
  %3 = icmp eq ptr %1, null
  %4 = getelementptr i8, ptr %1, i32 -16
  %5 = select i1 %3, ptr null, ptr %4
  %6 = getelementptr inbounds %struct.spi_device, ptr %0, i32 0, i32 12
  %7 = load ptr, ptr %6, align 8
  %8 = icmp eq ptr %7, null
  br i1 %8, label %13, label %9

9:                                                ; preds = %2
  %10 = load ptr, ptr %1, align 4
  %11 = tail call i32 @strcmp(ptr noundef nonnull %7, ptr noundef %10)
  %12 = icmp eq i32 %11, 0
  br label %40

13:                                               ; preds = %2
  %14 = getelementptr inbounds %struct.device_driver, ptr %1, i32 0, i32 6
  %15 = load ptr, ptr %14, align 4
  %16 = tail call ptr @of_match_device(ptr noundef %15, ptr noundef %0) #20
  %17 = icmp eq ptr %16, null
  br i1 %17, label %18, label %40

18:                                               ; preds = %13
  %19 = load ptr, ptr %5, align 4
  %20 = icmp eq ptr %19, null
  %21 = getelementptr inbounds %struct.spi_device, ptr %0, i32 0, i32 11
  br i1 %20, label %36, label %22

22:                                               ; preds = %18
  %23 = load i8, ptr %19, align 4
  %24 = icmp eq i8 %23, 0
  br i1 %24, label %33, label %25

25:                                               ; preds = %29, %22
  %26 = phi ptr [ %30, %29 ], [ %19, %22 ]
  %27 = tail call i32 @strcmp(ptr noundef %21, ptr noundef %26) #20
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %33, label %29

29:                                               ; preds = %25
  %30 = getelementptr %struct.spi_device_id, ptr %26, i32 1
  %31 = load i8, ptr %30, align 4
  %32 = icmp eq i8 %31, 0
  br i1 %32, label %33, label %25

33:                                               ; preds = %29, %25, %22
  %34 = phi ptr [ null, %22 ], [ %26, %25 ], [ null, %29 ]
  %35 = icmp ne ptr %34, null
  br label %40

36:                                               ; preds = %18
  %37 = load ptr, ptr %1, align 4
  %38 = tail call i32 @strcmp(ptr noundef %21, ptr noundef %37)
  %39 = icmp eq i32 %38, 0
  br label %40

40:                                               ; preds = %36, %33, %13, %9
  %41 = phi i1 [ %12, %9 ], [ %35, %33 ], [ %39, %36 ], [ true, %13 ]
  %42 = zext i1 %41 to i32
  ret i32 %42
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @spi_uevent(ptr noundef %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.spi_device, ptr %0, i32 0, i32 11
  %4 = tail call i32 (ptr, ptr, ...) @add_uevent_var(ptr noundef %1, ptr noundef nonnull @.str.96, ptr noundef nonnull @.str.62, ptr noundef %3) #20
  ret i32 %4
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @spi_probe(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 6
  %3 = load ptr, ptr %2, align 8
  %4 = icmp eq ptr %3, null
  %5 = getelementptr i8, ptr %3, i32 -16
  %6 = select i1 %4, ptr null, ptr %5
  %7 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 25
  %8 = load ptr, ptr %7, align 8
  %9 = tail call i32 @of_clk_set_defaults(ptr noundef %8, i1 noundef zeroext false) #20
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %32

11:                                               ; preds = %1
  %12 = load ptr, ptr %7, align 8
  %13 = icmp eq ptr %12, null
  br i1 %13, label %21, label %14

14:                                               ; preds = %11
  %15 = tail call i32 @of_irq_get(ptr noundef nonnull %12, i32 noundef 0) #20
  %16 = getelementptr inbounds %struct.spi_device, ptr %0, i32 0, i32 8
  store i32 %15, ptr %16, align 4
  %17 = icmp eq i32 %15, -517
  br i1 %17, label %32, label %18

18:                                               ; preds = %14
  %19 = icmp slt i32 %15, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %18
  store i32 0, ptr %16, align 4
  br label %21

21:                                               ; preds = %20, %18, %11
  %22 = tail call i32 @dev_pm_domain_attach(ptr noundef %0, i1 noundef zeroext true) #20
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %32

24:                                               ; preds = %21
  %25 = getelementptr inbounds %struct.spi_driver, ptr %6, i32 0, i32 1
  %26 = load ptr, ptr %25, align 4
  %27 = icmp eq ptr %26, null
  br i1 %27, label %32, label %28

28:                                               ; preds = %24
  %29 = tail call i32 %26(ptr noundef %0) #20
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %32, label %31

31:                                               ; preds = %28
  tail call void @dev_pm_domain_detach(ptr noundef %0, i1 noundef zeroext true) #20
  br label %32

32:                                               ; preds = %31, %28, %24, %21, %14, %1
  %33 = phi i32 [ %9, %1 ], [ -517, %14 ], [ %22, %21 ], [ %29, %31 ], [ 0, %28 ], [ 0, %24 ]
  ret i32 %33
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @spi_remove(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 6
  %3 = load ptr, ptr %2, align 8
  %4 = icmp eq ptr %3, null
  %5 = getelementptr i8, ptr %3, i32 -16
  %6 = select i1 %4, ptr null, ptr %5
  %7 = getelementptr inbounds %struct.spi_driver, ptr %6, i32 0, i32 2
  %8 = load ptr, ptr %7, align 4
  %9 = icmp eq ptr %8, null
  br i1 %9, label %15, label %10

10:                                               ; preds = %1
  %11 = tail call i32 %8(ptr noundef %0) #20
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %15, label %13

13:                                               ; preds = %10
  %14 = inttoptr i32 %11 to ptr
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %0, ptr noundef nonnull @.str.97, ptr noundef nonnull %14) #21
  br label %15

15:                                               ; preds = %13, %10, %1
  tail call void @dev_pm_domain_detach(ptr noundef %0, i1 noundef zeroext true) #20
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @spi_shutdown(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 6
  %3 = load ptr, ptr %2, align 8
  %4 = icmp eq ptr %3, null
  br i1 %4, label %10, label %5

5:                                                ; preds = %1
  %6 = getelementptr i8, ptr %3, i32 -4
  %7 = load ptr, ptr %6, align 4
  %8 = icmp eq ptr %7, null
  br i1 %8, label %10, label %9

9:                                                ; preds = %5
  tail call void %7(ptr noundef %0) #20
  br label %10

10:                                               ; preds = %9, %5, %1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__spi_register_driver(ptr noundef %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.spi_driver, ptr %1, i32 0, i32 4
  %4 = getelementptr inbounds %struct.spi_driver, ptr %1, i32 0, i32 4, i32 2
  store ptr %0, ptr %4, align 4
  %5 = getelementptr inbounds %struct.spi_driver, ptr %1, i32 0, i32 4, i32 1
  store ptr @spi_bus_type, ptr %5, align 4
  %6 = getelementptr inbounds %struct.spi_driver, ptr %1, i32 0, i32 4, i32 6
  %7 = load ptr, ptr %6, align 4
  %8 = icmp eq ptr %7, null
  br i1 %8, label %47, label %9

9:                                                ; preds = %2
  %10 = getelementptr inbounds %struct.of_device_id, ptr %7, i32 0, i32 2
  %11 = load i8, ptr %10, align 4
  %12 = icmp eq i8 %11, 0
  br i1 %12, label %47, label %13

13:                                               ; preds = %42, %9
  %14 = phi ptr [ %44, %42 ], [ %10, %9 ]
  %15 = phi ptr [ %43, %42 ], [ %7, %9 ]
  %16 = tail call ptr @strnchr(ptr noundef %14, i32 noundef 128, i32 noundef 44) #20
  %17 = icmp eq ptr %16, null
  %18 = getelementptr i8, ptr %16, i32 1
  %19 = select i1 %17, ptr %14, ptr %18
  %20 = load ptr, ptr %1, align 4
  %21 = icmp eq ptr %20, null
  br i1 %21, label %35, label %22

22:                                               ; preds = %13
  %23 = load i8, ptr %20, align 4
  %24 = icmp eq i8 %23, 0
  br i1 %24, label %39, label %25

25:                                               ; preds = %29, %22
  %26 = phi ptr [ %30, %29 ], [ %20, %22 ]
  %27 = tail call i32 @strcmp(ptr noundef %19, ptr noundef %26) #20
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %33, label %29

29:                                               ; preds = %25
  %30 = getelementptr %struct.spi_device_id, ptr %26, i32 1
  %31 = load i8, ptr %30, align 4
  %32 = icmp eq i8 %31, 0
  br i1 %32, label %39, label %25

33:                                               ; preds = %25
  %34 = icmp eq ptr %26, null
  br i1 %34, label %39, label %42

35:                                               ; preds = %13
  %36 = load ptr, ptr %3, align 4
  %37 = tail call i32 @strcmp(ptr noundef %36, ptr noundef %19)
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %42, label %39

39:                                               ; preds = %35, %33, %29, %22
  %40 = load ptr, ptr %3, align 4
  %41 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef %40, ptr noundef %14) #21
  br label %42

42:                                               ; preds = %39, %35, %33
  %43 = getelementptr %struct.of_device_id, ptr %15, i32 1
  %44 = getelementptr %struct.of_device_id, ptr %15, i32 1, i32 2
  %45 = load i8, ptr %44, align 4
  %46 = icmp eq i8 %45, 0
  br i1 %46, label %47, label %13

47:                                               ; preds = %42, %9, %2
  %48 = tail call i32 @driver_register(ptr noundef %3) #20
  ret i32 %48
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @strnchr(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @driver_register(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @spi_new_device(ptr noundef %0, ptr noundef %1) #0 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %80, label %4

4:                                                ; preds = %2
  %5 = tail call ptr @get_device(ptr noundef nonnull %0) #20
  %6 = icmp eq ptr %5, null
  br i1 %6, label %80, label %7

7:                                                ; preds = %4
  %8 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10), align 4
  %9 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %8, i32 noundef 3520, i32 noundef 696) #22
  %10 = icmp eq ptr %9, null
  br i1 %10, label %78, label %11

11:                                               ; preds = %7
  %12 = getelementptr inbounds %struct.spi_device, ptr %9, i32 0, i32 1
  store ptr %0, ptr %12, align 8
  %13 = getelementptr inbounds %struct.spi_device, ptr %9, i32 0, i32 2
  store ptr %0, ptr %13, align 4
  %14 = getelementptr inbounds %struct.device, ptr %9, i32 0, i32 1
  store ptr %0, ptr %14, align 4
  %15 = getelementptr inbounds %struct.device, ptr %9, i32 0, i32 5
  store ptr @spi_bus_type, ptr %15, align 4
  %16 = getelementptr inbounds %struct.device, ptr %9, i32 0, i32 33
  store ptr @spidev_release, ptr %16, align 4
  %17 = getelementptr inbounds %struct.spi_device, ptr %9, i32 0, i32 13
  store i32 -2, ptr %17, align 4
  %18 = getelementptr inbounds %struct.spi_controller, ptr %0, i32 0, i32 6
  %19 = load i32, ptr %18, align 4
  %20 = getelementptr inbounds %struct.spi_device, ptr %9, i32 0, i32 7
  store i32 %19, ptr %20, align 8
  %21 = getelementptr inbounds %struct.spi_device, ptr %9, i32 0, i32 19
  store i32 0, ptr %21, align 8
  tail call void @device_initialize(ptr noundef nonnull %9) #20
  %22 = tail call i32 @strlen(ptr noundef %1)
  %23 = icmp ugt i32 %22, 31
  br i1 %23, label %24, label %25, !prof !11

24:                                               ; preds = %11
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 728, i32 noundef 9, ptr noundef null) #20
  br label %25

25:                                               ; preds = %24, %11
  %26 = getelementptr inbounds %struct.spi_board_info, ptr %1, i32 0, i32 7
  %27 = load i16, ptr %26, align 2
  %28 = trunc i16 %27 to i8
  %29 = getelementptr inbounds %struct.spi_device, ptr %9, i32 0, i32 4
  store i8 %28, ptr %29, align 4
  %30 = getelementptr inbounds %struct.spi_board_info, ptr %1, i32 0, i32 5
  %31 = load i32, ptr %30, align 4
  %32 = getelementptr inbounds %struct.spi_device, ptr %9, i32 0, i32 3
  store i32 %31, ptr %32, align 8
  %33 = getelementptr inbounds %struct.spi_board_info, ptr %1, i32 0, i32 8
  %34 = load i32, ptr %33, align 4
  store i32 %34, ptr %20, align 8
  %35 = getelementptr inbounds %struct.spi_board_info, ptr %1, i32 0, i32 4
  %36 = load i32, ptr %35, align 4
  %37 = getelementptr inbounds %struct.spi_device, ptr %9, i32 0, i32 8
  store i32 %36, ptr %37, align 4
  %38 = getelementptr inbounds %struct.spi_device, ptr %9, i32 0, i32 11
  %39 = tail call i32 @strlcpy(ptr noundef %38, ptr noundef %1, i32 noundef 32) #20
  %40 = getelementptr inbounds %struct.spi_board_info, ptr %1, i32 0, i32 1
  %41 = load ptr, ptr %40, align 4
  %42 = getelementptr inbounds %struct.device, ptr %9, i32 0, i32 7
  store ptr %41, ptr %42, align 4
  %43 = getelementptr inbounds %struct.spi_board_info, ptr %1, i32 0, i32 3
  %44 = load ptr, ptr %43, align 4
  %45 = getelementptr inbounds %struct.spi_device, ptr %9, i32 0, i32 10
  store ptr %44, ptr %45, align 4
  %46 = getelementptr inbounds %struct.spi_device, ptr %9, i32 0, i32 9
  store ptr null, ptr %46, align 8
  %47 = getelementptr inbounds %struct.spi_board_info, ptr %1, i32 0, i32 2
  %48 = load ptr, ptr %47, align 4
  %49 = icmp eq ptr %48, null
  br i1 %49, label %54, label %50

50:                                               ; preds = %25
  %51 = tail call i32 @device_add_software_node(ptr noundef nonnull %9, ptr noundef nonnull %48) #20
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %54, label %53

53:                                               ; preds = %50
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef nonnull %0, ptr noundef nonnull @.str.3, ptr noundef %1, i32 noundef %51) #21
  br label %77

54:                                               ; preds = %50, %25
  %55 = load ptr, ptr %12, align 8
  %56 = load i8, ptr %29, align 4
  %57 = zext i8 %56 to i32
  %58 = getelementptr inbounds %struct.spi_controller, ptr %55, i32 0, i32 3
  %59 = load i16, ptr %58, align 2
  %60 = zext i16 %59 to i32
  %61 = icmp ult i32 %57, %60
  br i1 %61, label %65, label %62

62:                                               ; preds = %54
  %63 = getelementptr inbounds %struct.device, ptr %55, i32 0, i32 1
  %64 = load ptr, ptr %63, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %64, ptr noundef nonnull @.str.98, i32 noundef %57, i32 noundef %60) #21
  br label %77

65:                                               ; preds = %54
  %66 = getelementptr inbounds %struct.device, ptr %55, i32 0, i32 3
  %67 = load ptr, ptr %66, align 4
  %68 = icmp eq ptr %67, null
  br i1 %68, label %69, label %71

69:                                               ; preds = %65
  %70 = load ptr, ptr %55, align 4
  br label %71

71:                                               ; preds = %69, %65
  %72 = phi ptr [ %70, %69 ], [ %67, %65 ]
  %73 = tail call i32 (ptr, ptr, ...) @dev_set_name(ptr noundef nonnull %9, ptr noundef nonnull @.str.100, ptr noundef %72, i32 noundef %57) #20
  %74 = getelementptr inbounds %struct.spi_controller, ptr %55, i32 0, i32 16
  tail call void @mutex_lock(ptr noundef %74) #20
  %75 = tail call fastcc i32 @__spi_add_device(ptr noundef nonnull %9) #20
  tail call void @mutex_unlock(ptr noundef %74) #20
  %76 = icmp slt i32 %75, 0
  br i1 %76, label %77, label %80

77:                                               ; preds = %71, %62, %53
  tail call void @device_remove_software_node(ptr noundef nonnull %9) #20
  br label %78

78:                                               ; preds = %77, %7
  %79 = phi ptr [ %9, %77 ], [ %0, %7 ]
  tail call void @put_device(ptr noundef nonnull %79) #20
  br label %80

80:                                               ; preds = %78, %71, %4, %2
  %81 = phi ptr [ %9, %71 ], [ null, %2 ], [ null, %4 ], [ null, %78 ]
  ret ptr %81
}

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strlen(ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nofree null_pointer_is_valid
declare dso_local i32 @strlcpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_add_software_node(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @device_remove_software_node(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @spi_unregister_device(ptr noundef %0) #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %18, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 25
  %5 = load ptr, ptr %4, align 8
  %6 = icmp eq ptr %5, null
  br i1 %6, label %10, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.device_node, ptr %5, i32 0, i32 10
  tail call void @_clear_bit(i32 noundef 3, ptr noundef %8) #20
  %9 = load ptr, ptr %4, align 8
  tail call void @of_node_put(ptr noundef %9) #20
  br label %10

10:                                               ; preds = %7, %3
  tail call void @device_remove_software_node(ptr noundef nonnull %0) #20
  tail call void @device_del(ptr noundef nonnull %0) #20
  %11 = getelementptr inbounds %struct.spi_device, ptr %0, i32 0, i32 1
  %12 = load ptr, ptr %11, align 8
  %13 = getelementptr inbounds %struct.spi_controller, ptr %12, i32 0, i32 23
  %14 = load ptr, ptr %13, align 8
  %15 = icmp eq ptr %14, null
  br i1 %15, label %17, label %16

16:                                               ; preds = %10
  tail call void %14(ptr noundef nonnull %0) #20
  br label %17

17:                                               ; preds = %16, %10
  tail call void @put_device(ptr noundef nonnull %0) #20
  br label %18

18:                                               ; preds = %17, %1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_node_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @device_del(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @put_device(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @spi_register_board_info(ptr nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = icmp eq i32 %1, 0
  br i1 %3, label %45, label %4

4:                                                ; preds = %2
  %5 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %1, i32 68) #20
  %6 = extractvalue { i32, i1 } %5, 1
  br i1 %6, label %45, label %7, !prof !11

7:                                                ; preds = %4
  %8 = extractvalue { i32, i1 } %5, 0
  %9 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %8, i32 noundef 3520) #23
  %10 = icmp eq ptr %9, null
  br i1 %10, label %45, label %11

11:                                               ; preds = %40, %7
  %12 = phi ptr [ %43, %40 ], [ %0, %7 ]
  %13 = phi ptr [ %42, %40 ], [ %9, %7 ]
  %14 = phi i32 [ %41, %40 ], [ 0, %7 ]
  %15 = getelementptr inbounds %struct.boardinfo, ptr %13, i32 0, i32 1
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(60) %15, ptr noundef align 4 dereferenceable(60) %12, i32 60, i1 false)
  tail call void @mutex_lock(ptr noundef nonnull @board_lock) #20
  %16 = load ptr, ptr getelementptr inbounds (%struct.list_head, ptr @board_list, i32 0, i32 1), align 4
  store ptr %13, ptr getelementptr inbounds (%struct.list_head, ptr @board_list, i32 0, i32 1), align 4
  store ptr @board_list, ptr %13, align 4
  %17 = getelementptr inbounds %struct.list_head, ptr %13, i32 0, i32 1
  store ptr %16, ptr %17, align 4
  store volatile ptr %13, ptr %16, align 4
  %18 = load ptr, ptr @spi_controller_list, align 4
  %19 = icmp eq ptr %18, @spi_controller_list
  br i1 %19, label %40, label %20

20:                                               ; preds = %11
  %21 = getelementptr inbounds %struct.boardinfo, ptr %13, i32 0, i32 1, i32 6
  br label %22

22:                                               ; preds = %37, %20
  %23 = phi ptr [ %18, %20 ], [ %38, %37 ]
  %24 = getelementptr i8, ptr %23, i32 8
  %25 = load i16, ptr %24, align 8
  %26 = sext i16 %25 to i32
  %27 = load i16, ptr %21, align 4
  %28 = zext i16 %27 to i32
  %29 = icmp eq i32 %26, %28
  br i1 %29, label %30, label %37

30:                                               ; preds = %22
  %31 = getelementptr i8, ptr %23, i32 -472
  %32 = tail call ptr @spi_new_device(ptr noundef %31, ptr noundef %15) #20
  %33 = icmp eq ptr %32, null
  br i1 %33, label %34, label %37

34:                                               ; preds = %30
  %35 = getelementptr i8, ptr %23, i32 -436
  %36 = load ptr, ptr %35, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %36, ptr noundef nonnull @.str.104, ptr noundef %15) #21
  br label %37

37:                                               ; preds = %34, %30, %22
  %38 = load ptr, ptr %23, align 4
  %39 = icmp eq ptr %38, @spi_controller_list
  br i1 %39, label %40, label %22

40:                                               ; preds = %37, %11
  tail call void @mutex_unlock(ptr noundef nonnull @board_lock) #20
  %41 = add nuw i32 %14, 1
  %42 = getelementptr %struct.boardinfo, ptr %13, i32 1
  %43 = getelementptr %struct.spi_board_info, ptr %12, i32 1
  %44 = icmp eq i32 %41, %1
  br i1 %44, label %45, label %11

45:                                               ; preds = %40, %7, %4, %2
  %46 = phi i32 [ 0, %2 ], [ -12, %7 ], [ -12, %4 ], [ 0, %40 ]
  ret i32 %46
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @spi_map_buf(ptr nocapture noundef readonly %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4, i32 noundef %5) local_unnamed_addr #0 {
  %7 = tail call zeroext i1 @is_vmalloc_addr(ptr noundef %3) #20
  %8 = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 20
  %9 = load ptr, ptr %8, align 4
  %10 = icmp eq ptr %9, null
  br i1 %10, label %14, label %11

11:                                               ; preds = %6
  %12 = load i32, ptr %9, align 4
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %11, %6
  br label %15

15:                                               ; preds = %14, %11
  %16 = phi i32 [ 65536, %14 ], [ %12, %11 ]
  %17 = ptrtoint ptr %3 to i32
  %18 = icmp ugt ptr %3, inttoptr (i32 -1075838977 to ptr)
  %19 = icmp ult ptr %3, inttoptr (i32 -1073741824 to ptr)
  %20 = and i1 %18, %19
  %21 = or i1 %20, %7
  br i1 %21, label %22, label %29

22:                                               ; preds = %15
  %23 = tail call i32 @llvm.umin.i32(i32 %16, i32 4096)
  %24 = and i32 %17, 4095
  %25 = add i32 %4, -1
  %26 = add i32 %25, %24
  %27 = add i32 %26, %23
  %28 = udiv i32 %27, %23
  br label %48

29:                                               ; preds = %15
  %30 = icmp ugt ptr %3, inttoptr (i32 -1073741825 to ptr)
  %31 = load ptr, ptr @high_memory, align 4
  %32 = icmp ugt ptr %31, %3
  %33 = select i1 %30, i1 %32, i1 false
  br i1 %33, label %34, label %119

34:                                               ; preds = %29
  %35 = add i32 %17, 1073741824
  %36 = lshr i32 %35, 12
  %37 = load i32, ptr @__pv_phys_pfn_offset, align 4
  %38 = add i32 %37, %36
  %39 = tail call i32 @pfn_valid(i32 noundef %38) #20
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %119, label %41

41:                                               ; preds = %34
  %42 = getelementptr inbounds %struct.spi_controller, ptr %0, i32 0, i32 43
  %43 = load i32, ptr %42, align 4
  %44 = tail call i32 @llvm.umin.i32(i32 %16, i32 %43)
  %45 = add i32 %4, -1
  %46 = add i32 %45, %44
  %47 = udiv i32 %46, %44
  br label %48

48:                                               ; preds = %41, %22
  %49 = phi i32 [ %28, %22 ], [ %47, %41 ]
  %50 = phi i32 [ %23, %22 ], [ %44, %41 ]
  %51 = tail call i32 @sg_alloc_table(ptr noundef %2, i32 noundef %49, i32 noundef 3264) #20
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %53, label %119

53:                                               ; preds = %48
  %54 = load ptr, ptr %2, align 4
  %55 = icmp sgt i32 %49, 0
  br i1 %55, label %56, label %109

56:                                               ; preds = %93, %53
  %57 = phi ptr [ %102, %93 ], [ %3, %53 ]
  %58 = phi i32 [ %103, %93 ], [ %4, %53 ]
  %59 = phi ptr [ %104, %93 ], [ %54, %53 ]
  %60 = phi i32 [ %105, %93 ], [ 0, %53 ]
  br i1 %21, label %61, label %80

61:                                               ; preds = %56
  %62 = ptrtoint ptr %57 to i32
  %63 = and i32 %62, 4095
  %64 = sub nuw nsw i32 4096, %63
  %65 = tail call i32 @llvm.umin.i32(i32 %58, i32 %64)
  %66 = tail call i32 @llvm.umin.i32(i32 %50, i32 %65)
  br i1 %7, label %67, label %69

67:                                               ; preds = %61
  %68 = tail call ptr @vmalloc_to_page(ptr noundef %57) #20
  br label %71

69:                                               ; preds = %61
  %70 = tail call ptr @__kmap_to_page(ptr noundef %57) #20
  br label %71

71:                                               ; preds = %69, %67
  %72 = phi ptr [ %68, %67 ], [ %70, %69 ]
  %73 = icmp eq ptr %72, null
  br i1 %73, label %74, label %75

74:                                               ; preds = %71
  tail call void @sg_free_table(ptr noundef %2) #20
  br label %119

75:                                               ; preds = %71
  %76 = ptrtoint ptr %72 to i32
  %77 = and i32 %76, 3
  %78 = icmp eq i32 %77, 0
  br i1 %78, label %93, label %79, !prof !10

79:                                               ; preds = %75
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 112, 0\0A.popsection", ""() #20, !srcloc !13
  unreachable

80:                                               ; preds = %56
  %81 = load ptr, ptr @mem_map, align 4
  %82 = ptrtoint ptr %57 to i32
  %83 = add i32 %82, 1073741824
  %84 = lshr i32 %83, 12
  %85 = getelementptr %struct.page, ptr %81, i32 %84
  %86 = ptrtoint ptr %85 to i32
  %87 = and i32 %86, 3
  %88 = icmp eq i32 %87, 0
  br i1 %88, label %90, label %89, !prof !10

89:                                               ; preds = %80
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 112, 0\0A.popsection", ""() #20, !srcloc !13
  unreachable

90:                                               ; preds = %80
  %91 = tail call i32 @llvm.umin.i32(i32 %58, i32 %50)
  %92 = and i32 %82, 4095
  br label %93

93:                                               ; preds = %90, %75
  %94 = phi i32 [ %86, %90 ], [ %76, %75 ]
  %95 = phi i32 [ %92, %90 ], [ %63, %75 ]
  %96 = phi i32 [ %91, %90 ], [ %66, %75 ]
  %97 = load i32, ptr %59, align 4
  %98 = and i32 %97, 3
  %99 = or i32 %98, %94
  store i32 %99, ptr %59, align 4
  %100 = getelementptr inbounds %struct.scatterlist, ptr %59, i32 0, i32 1
  store i32 %95, ptr %100, align 4
  %101 = getelementptr inbounds %struct.scatterlist, ptr %59, i32 0, i32 2
  store i32 %96, ptr %101, align 4
  %102 = getelementptr i8, ptr %57, i32 %96
  %103 = sub i32 %58, %96
  %104 = tail call ptr @sg_next(ptr noundef %59) #20
  %105 = add nuw nsw i32 %60, 1
  %106 = icmp eq i32 %105, %49
  br i1 %106, label %107, label %56

107:                                              ; preds = %93
  %108 = load ptr, ptr %2, align 4
  br label %109

109:                                              ; preds = %107, %53
  %110 = phi ptr [ %108, %107 ], [ %54, %53 ]
  %111 = getelementptr inbounds %struct.sg_table, ptr %2, i32 0, i32 1
  %112 = load i32, ptr %111, align 4
  %113 = tail call i32 @dma_map_sg_attrs(ptr noundef %1, ptr noundef %110, i32 noundef %112, i32 noundef %5, i32 noundef 0) #20
  %114 = icmp eq i32 %113, 0
  %115 = select i1 %114, i32 -12, i32 %113
  %116 = icmp slt i32 %115, 0
  br i1 %116, label %117, label %118

117:                                              ; preds = %109
  tail call void @sg_free_table(ptr noundef %2) #20
  br label %119

118:                                              ; preds = %109
  store i32 %115, ptr %111, align 4
  br label %119

119:                                              ; preds = %118, %117, %74, %48, %34, %29
  %120 = phi i32 [ -12, %74 ], [ %115, %117 ], [ 0, %118 ], [ -22, %34 ], [ -22, %29 ], [ %51, %48 ]
  ret i32 %120
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @is_vmalloc_addr(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pfn_valid(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sg_alloc_table(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @vmalloc_to_page(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @sg_free_table(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @sg_next(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_map_sg_attrs(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @spi_unmap_buf(ptr nocapture readnone %0, ptr noundef %1, ptr noundef %2, i32 noundef %3) local_unnamed_addr #0 {
  %5 = getelementptr inbounds %struct.sg_table, ptr %2, i32 0, i32 2
  %6 = load i32, ptr %5, align 4
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %10, label %8

8:                                                ; preds = %4
  %9 = load ptr, ptr %2, align 4
  tail call void @dma_unmap_sg_attrs(ptr noundef %1, ptr noundef %9, i32 noundef %6, i32 noundef %3, i32 noundef 0) #20
  tail call void @sg_free_table(ptr noundef %2) #20
  br label %10

10:                                               ; preds = %8, %4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_unmap_sg_attrs(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define dso_local i32 @spi_delay_to_ns(ptr nocapture noundef readonly %0, ptr noundef readonly %1) #8 {
  %3 = load i16, ptr %0, align 2
  %4 = zext i16 %3 to i32
  %5 = icmp eq i16 %3, 0
  br i1 %5, label %29, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.spi_delay, ptr %0, i32 0, i32 1
  %8 = load i8, ptr %7, align 2
  switch i8 %8, label %29 [
    i8 0, label %9
    i8 1, label %27
    i8 2, label %11
  ]

9:                                                ; preds = %6
  %10 = mul nuw nsw i32 %4, 1000
  br label %27

11:                                               ; preds = %6
  %12 = icmp eq ptr %1, null
  br i1 %12, label %29, label %13

13:                                               ; preds = %11
  %14 = getelementptr inbounds %struct.spi_transfer, ptr %1, i32 0, i32 13
  %15 = load i32, ptr %14, align 4
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %22

17:                                               ; preds = %13
  %18 = getelementptr inbounds %struct.spi_transfer, ptr %1, i32 0, i32 12
  %19 = load i32, ptr %18, align 4
  %20 = lshr i32 %19, 1
  %21 = icmp ult i32 %19, 2
  br i1 %21, label %29, label %22

22:                                               ; preds = %17, %13
  %23 = phi i32 [ %20, %17 ], [ %15, %13 ]
  %24 = add i32 %23, 999999999
  %25 = udiv i32 %24, %23
  %26 = mul i32 %25, %4
  br label %27

27:                                               ; preds = %22, %9, %6
  %28 = phi i32 [ %26, %22 ], [ %4, %6 ], [ %10, %9 ]
  br label %29

29:                                               ; preds = %27, %17, %11, %6, %2
  %30 = phi i32 [ %28, %27 ], [ 0, %2 ], [ -22, %11 ], [ -22, %17 ], [ -22, %6 ]
  ret i32 %30
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @spi_delay_exec(ptr noundef readonly %0, ptr noundef readonly %1) #0 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %47, label %4

4:                                                ; preds = %2
  %5 = load i16, ptr %0, align 2
  %6 = zext i16 %5 to i32
  %7 = icmp eq i16 %5, 0
  br i1 %7, label %47, label %8

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.spi_delay, ptr %0, i32 0, i32 1
  %10 = load i8, ptr %9, align 2
  switch i8 %10, label %47 [
    i8 0, label %11
    i8 1, label %30
    i8 2, label %13
  ]

11:                                               ; preds = %8
  %12 = mul nuw nsw i32 %6, 1000
  br label %30

13:                                               ; preds = %8
  %14 = icmp eq ptr %1, null
  br i1 %14, label %47, label %15

15:                                               ; preds = %13
  %16 = getelementptr inbounds %struct.spi_transfer, ptr %1, i32 0, i32 13
  %17 = load i32, ptr %16, align 4
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %24

19:                                               ; preds = %15
  %20 = getelementptr inbounds %struct.spi_transfer, ptr %1, i32 0, i32 12
  %21 = load i32, ptr %20, align 4
  %22 = lshr i32 %21, 1
  %23 = icmp ult i32 %21, 2
  br i1 %23, label %47, label %24

24:                                               ; preds = %19, %15
  %25 = phi i32 [ %22, %19 ], [ %17, %15 ]
  %26 = add i32 %25, 999999999
  %27 = udiv i32 %26, %25
  %28 = mul i32 %27, %6
  %29 = icmp slt i32 %28, 0
  br i1 %29, label %47, label %30

30:                                               ; preds = %24, %11, %8
  %31 = phi i32 [ %28, %24 ], [ %12, %11 ], [ %6, %8 ]
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %47, label %33

33:                                               ; preds = %30
  %34 = icmp ult i32 %31, 1001
  br i1 %34, label %35, label %37

35:                                               ; preds = %33
  %36 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %36(i32 noundef 214748) #20
  br label %47

37:                                               ; preds = %33
  %38 = add nuw i32 %31, 999
  %39 = udiv i32 %38, 1000
  %40 = icmp ult i32 %31, 10001
  br i1 %40, label %41, label %43

41:                                               ; preds = %37
  %42 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %42(i32 noundef %39) #20
  br label %47

43:                                               ; preds = %37
  %44 = add nuw nsw i32 %39, 9
  %45 = udiv i32 %44, 10
  %46 = add nuw nsw i32 %45, %39
  tail call void @usleep_range_state(i32 noundef %39, i32 noundef %46, i32 noundef 2) #20
  br label %47

47:                                               ; preds = %43, %41, %35, %30, %24, %19, %13, %8, %4, %2
  %48 = phi i32 [ -22, %2 ], [ %28, %24 ], [ 0, %30 ], [ 0, %35 ], [ 0, %41 ], [ 0, %43 ], [ 0, %4 ], [ -22, %13 ], [ -22, %19 ], [ -22, %8 ]
  ret i32 %48
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @spi_finalize_current_transfer(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.spi_controller, ptr %0, i32 0, i32 42
  tail call void @complete(ptr noundef %2) #20
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @complete(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @spi_take_timestamp_pre(ptr nocapture noundef writeonly %0, ptr nocapture noundef %1, i32 noundef %2, i1 noundef zeroext %3) #0 {
  %5 = getelementptr inbounds %struct.spi_transfer, ptr %1, i32 0, i32 16
  %6 = load ptr, ptr %5, align 4
  %7 = icmp eq ptr %6, null
  br i1 %7, label %24, label %8

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.spi_transfer, ptr %1, i32 0, i32 17
  %10 = load i8, ptr %9, align 4, !range !14
  %11 = icmp eq i8 %10, 0
  br i1 %11, label %12, label %24

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct.spi_transfer, ptr %1, i32 0, i32 14
  %14 = load i32, ptr %13, align 4
  %15 = icmp ult i32 %14, %2
  br i1 %15, label %24, label %16

16:                                               ; preds = %12
  store i32 %2, ptr %13, align 4
  br i1 %3, label %17, label %22

17:                                               ; preds = %16
  %18 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #20, !srcloc !15
  %19 = getelementptr inbounds %struct.spi_controller, ptr %0, i32 0, i32 66
  store i32 %18, ptr %19, align 8
  tail call void asm sideeffect "", "~{memory}"() #20, !srcloc !16
  %20 = load ptr, ptr %5, align 4
  %21 = icmp eq ptr %20, null
  br i1 %21, label %24, label %22

22:                                               ; preds = %17, %16
  %23 = phi ptr [ %20, %17 ], [ %6, %16 ]
  tail call void @ktime_get_real_ts64(ptr noundef nonnull %23) #20
  br label %24

24:                                               ; preds = %22, %17, %12, %8, %4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @spi_take_timestamp_post(ptr nocapture noundef readonly %0, ptr nocapture noundef %1, i32 noundef %2, i1 noundef zeroext %3) #0 {
  %5 = getelementptr inbounds %struct.spi_transfer, ptr %1, i32 0, i32 16
  %6 = load ptr, ptr %5, align 4
  %7 = icmp eq ptr %6, null
  br i1 %7, label %22, label %8

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.spi_transfer, ptr %1, i32 0, i32 17
  %10 = load i8, ptr %9, align 4, !range !14
  %11 = icmp eq i8 %10, 0
  br i1 %11, label %12, label %22

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct.spi_transfer, ptr %1, i32 0, i32 15
  %14 = load i32, ptr %13, align 4
  %15 = icmp ugt i32 %14, %2
  br i1 %15, label %22, label %16

16:                                               ; preds = %12
  %17 = getelementptr inbounds %struct.ptp_system_timestamp, ptr %6, i32 0, i32 1
  tail call void @ktime_get_real_ts64(ptr noundef %17) #20
  br i1 %3, label %18, label %21

18:                                               ; preds = %16
  %19 = getelementptr inbounds %struct.spi_controller, ptr %0, i32 0, i32 66
  %20 = load i32, ptr %19, align 8
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %20) #20, !srcloc !17
  tail call void asm sideeffect "", "~{memory}"() #20, !srcloc !18
  br label %21

21:                                               ; preds = %18, %16
  store i32 %2, ptr %13, align 4
  store i8 1, ptr %9, align 4
  br label %22

22:                                               ; preds = %21, %12, %8, %4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @spi_get_next_queued_message(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.spi_controller, ptr %0, i32 0, i32 29
  %3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %2) #20
  %4 = getelementptr inbounds %struct.spi_controller, ptr %0, i32 0, i32 30
  %5 = load volatile ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, %4
  %7 = getelementptr i8, ptr %5, i32 -36
  %8 = select i1 %6, ptr null, ptr %7
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %2, i32 noundef %3) #20
  ret ptr %8
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @spi_finalize_current_message(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.spi_controller, ptr %0, i32 0, i32 29
  %3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %2) #20
  %4 = getelementptr inbounds %struct.spi_controller, ptr %0, i32 0, i32 31
  %5 = load ptr, ptr %4, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %2, i32 noundef %3) #20
  %6 = getelementptr inbounds %struct.spi_controller, ptr %0, i32 0, i32 65
  %7 = load i8, ptr %6, align 4, !range !14
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %9, label %32

9:                                                ; preds = %1
  %10 = getelementptr inbounds %struct.spi_controller, ptr %0, i32 0, i32 51
  %11 = load ptr, ptr %10, align 4
  %12 = icmp eq ptr %11, null
  br i1 %12, label %13, label %51

13:                                               ; preds = %9
  %14 = load ptr, ptr %5, align 4
  %15 = icmp eq ptr %14, %5
  br i1 %15, label %51, label %16

16:                                               ; preds = %23, %13
  %17 = phi ptr [ %27, %23 ], [ %14, %13 ]
  %18 = getelementptr i8, ptr %17, i32 -8
  %19 = load ptr, ptr %18, align 4
  %20 = icmp eq ptr %19, null
  br i1 %20, label %23, label %21

21:                                               ; preds = %16
  %22 = getelementptr inbounds %struct.ptp_system_timestamp, ptr %19, i32 0, i32 1
  tail call void @ktime_get_real_ts64(ptr noundef %22) #20
  br label %23

23:                                               ; preds = %21, %16
  %24 = getelementptr i8, ptr %17, i32 -76
  %25 = load i32, ptr %24, align 4
  %26 = getelementptr i8, ptr %17, i32 -12
  store i32 %25, ptr %26, align 4
  %27 = load ptr, ptr %17, align 4
  %28 = icmp eq ptr %27, %5
  br i1 %28, label %29, label %16

29:                                               ; preds = %23
  %30 = load i8, ptr %6, align 4
  %31 = icmp eq i8 %30, 0
  br i1 %31, label %51, label %32, !prof !10

32:                                               ; preds = %29, %1
  %33 = load ptr, ptr %5, align 4
  %34 = icmp eq ptr %33, %5
  br i1 %34, label %51, label %35

35:                                               ; preds = %48, %32
  %36 = phi ptr [ %49, %48 ], [ %33, %32 ]
  %37 = getelementptr i8, ptr %36, i32 -8
  %38 = load ptr, ptr %37, align 4
  %39 = icmp eq ptr %38, null
  br i1 %39, label %48, label %40

40:                                               ; preds = %35
  %41 = getelementptr i8, ptr %36, i32 -4
  %42 = load i8, ptr %41, align 4, !range !14
  %43 = icmp eq i8 %42, 0
  %44 = load i1, ptr @spi_finalize_current_message.__already_done, align 1
  %45 = xor i1 %44, true
  %46 = select i1 %43, i1 %45, i1 false
  br i1 %46, label %47, label %48, !prof !11

47:                                               ; preds = %40
  store i1 true, ptr @spi_finalize_current_message.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 1899, i32 noundef 9, ptr noundef null) #20
  br label %48

48:                                               ; preds = %47, %40, %35
  %49 = load ptr, ptr %36, align 4
  %50 = icmp eq ptr %49, %5
  br i1 %50, label %51, label %35

51:                                               ; preds = %48, %32, %29, %13, %9
  %52 = load ptr, ptr %5, align 4
  %53 = icmp eq ptr %52, %5
  br i1 %53, label %73, label %54

54:                                               ; preds = %51
  %55 = getelementptr inbounds %struct.spi_controller, ptr %0, i32 0, i32 63
  %56 = getelementptr inbounds %struct.spi_controller, ptr %0, i32 0, i32 62
  br label %57

57:                                               ; preds = %70, %54
  %58 = phi ptr [ %52, %54 ], [ %71, %70 ]
  %59 = getelementptr i8, ptr %58, i32 -84
  %60 = load ptr, ptr %59, align 4
  %61 = load ptr, ptr %55, align 4
  %62 = icmp eq ptr %60, %61
  br i1 %62, label %63, label %64

63:                                               ; preds = %57
  store ptr null, ptr %59, align 4
  br label %64

64:                                               ; preds = %63, %57
  %65 = getelementptr i8, ptr %58, i32 -80
  %66 = load ptr, ptr %65, align 4
  %67 = load ptr, ptr %56, align 8
  %68 = icmp eq ptr %66, %67
  br i1 %68, label %69, label %70

69:                                               ; preds = %64
  store ptr null, ptr %65, align 4
  br label %70

70:                                               ; preds = %69, %64
  %71 = load ptr, ptr %58, align 4
  %72 = icmp eq ptr %71, %5
  br i1 %72, label %73, label %57

73:                                               ; preds = %70, %51
  tail call fastcc void @__spi_unmap_msg(ptr noundef %0, ptr noundef %5) #20
  %74 = getelementptr inbounds %struct.spi_message, ptr %5, i32 0, i32 10
  %75 = getelementptr inbounds %struct.spi_message, ptr %5, i32 0, i32 10, i32 1
  %76 = load ptr, ptr %75, align 4
  %77 = icmp eq ptr %76, %74
  br i1 %77, label %93, label %78

78:                                               ; preds = %88, %73
  %79 = phi ptr [ %81, %88 ], [ %76, %73 ]
  %80 = getelementptr inbounds %struct.list_head, ptr %79, i32 0, i32 1
  %81 = load ptr, ptr %80, align 4
  %82 = getelementptr inbounds %struct.spi_res, ptr %79, i32 0, i32 1
  %83 = load ptr, ptr %82, align 8
  %84 = icmp eq ptr %83, null
  br i1 %84, label %88, label %85

85:                                               ; preds = %78
  %86 = getelementptr inbounds %struct.spi_res, ptr %79, i32 0, i32 2
  tail call void %83(ptr noundef %0, ptr noundef %5, ptr noundef %86) #20
  %87 = load ptr, ptr %80, align 4
  br label %88

88:                                               ; preds = %85, %78
  %89 = phi ptr [ %87, %85 ], [ %81, %78 ]
  %90 = load ptr, ptr %79, align 4
  %91 = getelementptr inbounds %struct.list_head, ptr %90, i32 0, i32 1
  store ptr %89, ptr %91, align 4
  store volatile ptr %90, ptr %89, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %79, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %80, align 4
  tail call void @kfree(ptr noundef %79) #20
  %92 = icmp eq ptr %81, %74
  br i1 %92, label %93, label %78

93:                                               ; preds = %88, %73
  %94 = getelementptr inbounds %struct.spi_controller, ptr %0, i32 0, i32 37
  %95 = load i8, ptr %94, align 1, !range !14
  %96 = icmp eq i8 %95, 0
  br i1 %96, label %105, label %97

97:                                               ; preds = %93
  %98 = getelementptr inbounds %struct.spi_controller, ptr %0, i32 0, i32 48
  %99 = load ptr, ptr %98, align 8
  %100 = icmp eq ptr %99, null
  br i1 %100, label %105, label %101

101:                                              ; preds = %97
  %102 = tail call i32 %99(ptr noundef %0, ptr noundef %5) #20
  %103 = icmp eq i32 %102, 0
  br i1 %103, label %105, label %104

104:                                              ; preds = %101
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %0, ptr noundef nonnull @.str.4, i32 noundef %102) #21
  br label %105

105:                                              ; preds = %104, %101, %97, %93
  %106 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %2) #20
  store ptr null, ptr %4, align 4
  store i8 0, ptr %94, align 1
  %107 = getelementptr inbounds %struct.spi_controller, ptr %0, i32 0, i32 41
  store i8 0, ptr %107, align 1
  %108 = getelementptr inbounds %struct.spi_controller, ptr %0, i32 0, i32 27
  %109 = load ptr, ptr %108, align 8
  %110 = getelementptr inbounds %struct.spi_controller, ptr %0, i32 0, i32 28
  %111 = tail call zeroext i1 @kthread_queue_work(ptr noundef %109, ptr noundef %110) #20
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %2, i32 noundef %106) #20
  %112 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_spi_message_done, i32 0, i32 1), align 4
  %113 = icmp sgt i32 %112, 0
  br i1 %113, label %114, label %137

114:                                              ; preds = %105
  %115 = tail call ptr @llvm.thread.pointer() #20
  %116 = getelementptr inbounds %struct.thread_info, ptr %115, i32 0, i32 2
  %117 = load i32, ptr %116, align 8
  %118 = lshr i32 %117, 5
  %119 = getelementptr i32, ptr @__cpu_online_mask, i32 %118
  %120 = load volatile i32, ptr %119, align 4
  %121 = and i32 %117, 31
  %122 = shl nuw i32 1, %121
  %123 = and i32 %122, %120
  %124 = icmp eq i32 %123, 0
  br i1 %124, label %137, label %125

125:                                              ; preds = %114
  tail call void asm sideeffect "", "~{memory}"() #20, !srcloc !19
  %126 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_spi_message_done, i32 0, i32 7), align 4
  %127 = icmp eq ptr %126, null
  br i1 %127, label %136, label %128

128:                                              ; preds = %128, %125
  %129 = phi ptr [ %133, %128 ], [ %126, %125 ]
  %130 = load volatile ptr, ptr %129, align 4
  %131 = getelementptr inbounds %struct.tracepoint_func, ptr %129, i32 0, i32 1
  %132 = load ptr, ptr %131, align 4
  tail call void %130(ptr noundef %132, ptr noundef %5) #20
  %133 = getelementptr %struct.tracepoint_func, ptr %129, i32 1
  %134 = load ptr, ptr %133, align 4
  %135 = icmp eq ptr %134, null
  br i1 %135, label %136, label %128

136:                                              ; preds = %128, %125
  tail call void asm sideeffect "", "~{memory}"() #20, !srcloc !20
  br label %137

137:                                              ; preds = %136, %114, %105
  %138 = getelementptr inbounds %struct.spi_message, ptr %5, i32 0, i32 9
  store ptr null, ptr %138, align 4
  %139 = getelementptr inbounds %struct.spi_message, ptr %5, i32 0, i32 3
  %140 = load ptr, ptr %139, align 4
  %141 = icmp eq ptr %140, null
  br i1 %141, label %145, label %142

142:                                              ; preds = %137
  %143 = getelementptr inbounds %struct.spi_message, ptr %5, i32 0, i32 4
  %144 = load ptr, ptr %143, align 4
  tail call void %140(ptr noundef %144) #20
  br label %145

145:                                              ; preds = %142, %137
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @kthread_queue_work(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @spi_flush_queue(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.spi_controller, ptr %0, i32 0, i32 22
  %3 = load ptr, ptr %2, align 4
  %4 = icmp eq ptr %3, @spi_queued_transfer
  br i1 %4, label %5, label %6

5:                                                ; preds = %1
  tail call fastcc void @__spi_pump_messages(ptr noundef %0, i1 noundef zeroext false)
  br label %6

6:                                                ; preds = %5, %1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @spi_queued_transfer(ptr nocapture noundef readonly %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.spi_device, ptr %0, i32 0, i32 1
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.spi_controller, ptr %4, i32 0, i32 29
  %6 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %5) #20
  %7 = getelementptr inbounds %struct.spi_controller, ptr %4, i32 0, i32 34
  %8 = load i8, ptr %7, align 2, !range !14
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %26, label %10

10:                                               ; preds = %2
  %11 = getelementptr inbounds %struct.spi_message, ptr %1, i32 0, i32 6
  store i32 0, ptr %11, align 4
  %12 = getelementptr inbounds %struct.spi_message, ptr %1, i32 0, i32 7
  store i32 -115, ptr %12, align 4
  %13 = getelementptr inbounds %struct.spi_message, ptr %1, i32 0, i32 8
  %14 = getelementptr inbounds %struct.spi_controller, ptr %4, i32 0, i32 30
  %15 = getelementptr inbounds %struct.spi_controller, ptr %4, i32 0, i32 30, i32 1
  %16 = load ptr, ptr %15, align 4
  store ptr %13, ptr %15, align 4
  store ptr %14, ptr %13, align 4
  %17 = getelementptr inbounds %struct.spi_message, ptr %1, i32 0, i32 8, i32 1
  store ptr %16, ptr %17, align 4
  store volatile ptr %13, ptr %16, align 4
  %18 = getelementptr inbounds %struct.spi_controller, ptr %4, i32 0, i32 33
  %19 = load i8, ptr %18, align 1, !range !14
  %20 = icmp eq i8 %19, 0
  br i1 %20, label %21, label %26

21:                                               ; preds = %10
  %22 = getelementptr inbounds %struct.spi_controller, ptr %4, i32 0, i32 27
  %23 = load ptr, ptr %22, align 8
  %24 = getelementptr inbounds %struct.spi_controller, ptr %4, i32 0, i32 28
  %25 = tail call zeroext i1 @kthread_queue_work(ptr noundef %23, ptr noundef %24) #20
  br label %26

26:                                               ; preds = %21, %10, %2
  %27 = phi i32 [ -108, %2 ], [ 0, %10 ], [ 0, %21 ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %5, i32 noundef %6) #20
  ret i32 %27
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @__spi_pump_messages(ptr noundef %0, i1 noundef zeroext %1) unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.spi_controller, ptr %0, i32 0, i32 29
  %4 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %3) #20
  %5 = getelementptr inbounds %struct.spi_controller, ptr %0, i32 0, i32 31
  %6 = load ptr, ptr %5, align 4
  %7 = icmp eq ptr %6, null
  br i1 %7, label %9, label %8

8:                                                ; preds = %2
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %3, i32 noundef %4) #20
  br label %388

9:                                                ; preds = %2
  %10 = getelementptr inbounds %struct.spi_controller, ptr %0, i32 0, i32 32
  %11 = load i8, ptr %10, align 8, !range !14
  %12 = icmp eq i8 %11, 0
  br i1 %12, label %18, label %13

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct.spi_controller, ptr %0, i32 0, i32 27
  %15 = load ptr, ptr %14, align 8
  %16 = getelementptr inbounds %struct.spi_controller, ptr %0, i32 0, i32 28
  %17 = tail call zeroext i1 @kthread_queue_work(ptr noundef %15, ptr noundef %16) #20
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %3, i32 noundef %4) #20
  br label %388

18:                                               ; preds = %9
  %19 = getelementptr inbounds %struct.spi_controller, ptr %0, i32 0, i32 30
  %20 = load volatile ptr, ptr %19, align 4
  %21 = icmp eq ptr %20, %19
  br i1 %21, label %26, label %22

22:                                               ; preds = %18
  %23 = getelementptr inbounds %struct.spi_controller, ptr %0, i32 0, i32 34
  %24 = load i8, ptr %23, align 2, !range !14
  %25 = icmp eq i8 %24, 0
  br i1 %25, label %26, label %102

26:                                               ; preds = %22, %18
  %27 = getelementptr inbounds %struct.spi_controller, ptr %0, i32 0, i32 33
  %28 = load i8, ptr %27, align 1, !range !14
  %29 = icmp eq i8 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %26
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %3, i32 noundef %4) #20
  br label %388

31:                                               ; preds = %26
  br i1 %1, label %51, label %32

32:                                               ; preds = %31
  %33 = getelementptr inbounds %struct.spi_controller, ptr %0, i32 0, i32 62
  %34 = load ptr, ptr %33, align 8
  %35 = icmp eq ptr %34, null
  br i1 %35, label %36, label %45

36:                                               ; preds = %32
  %37 = getelementptr inbounds %struct.spi_controller, ptr %0, i32 0, i32 63
  %38 = load ptr, ptr %37, align 4
  %39 = icmp eq ptr %38, null
  br i1 %39, label %40, label %45

40:                                               ; preds = %36
  %41 = getelementptr inbounds %struct.spi_controller, ptr %0, i32 0, i32 46
  %42 = load ptr, ptr %41, align 8
  %43 = icmp eq ptr %42, null
  br i1 %43, label %44, label %45

44:                                               ; preds = %40
  tail call fastcc void @spi_idle_runtime_pm(ptr noundef %0)
  store i8 0, ptr %27, align 1
  tail call fastcc void @trace_spi_controller_idle(ptr noundef %0)
  br label %50

45:                                               ; preds = %40, %36, %32
  %46 = getelementptr inbounds %struct.spi_controller, ptr %0, i32 0, i32 27
  %47 = load ptr, ptr %46, align 8
  %48 = getelementptr inbounds %struct.spi_controller, ptr %0, i32 0, i32 28
  %49 = tail call zeroext i1 @kthread_queue_work(ptr noundef %47, ptr noundef %48) #20
  br label %50

50:                                               ; preds = %45, %44
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %3, i32 noundef %4) #20
  br label %388

51:                                               ; preds = %31
  store i8 0, ptr %27, align 1
  store i8 1, ptr %10, align 8
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %3, i32 noundef %4) #20
  %52 = getelementptr inbounds %struct.spi_controller, ptr %0, i32 0, i32 62
  %53 = load ptr, ptr %52, align 8
  tail call void @kfree(ptr noundef %53) #20
  store ptr null, ptr %52, align 8
  %54 = getelementptr inbounds %struct.spi_controller, ptr %0, i32 0, i32 63
  %55 = load ptr, ptr %54, align 4
  tail call void @kfree(ptr noundef %55) #20
  store ptr null, ptr %54, align 4
  %56 = getelementptr inbounds %struct.spi_controller, ptr %0, i32 0, i32 46
  %57 = load ptr, ptr %56, align 8
  %58 = icmp eq ptr %57, null
  br i1 %58, label %63, label %59

59:                                               ; preds = %51
  %60 = tail call i32 %57(ptr noundef %0) #20
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %63, label %62

62:                                               ; preds = %59
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %0, ptr noundef nonnull @.str.106) #21
  br label %63

63:                                               ; preds = %62, %59, %51
  %64 = getelementptr inbounds %struct.spi_controller, ptr %0, i32 0, i32 36
  %65 = load i8, ptr %64, align 4, !range !14
  %66 = icmp eq i8 %65, 0
  br i1 %66, label %74, label %67

67:                                               ; preds = %63
  %68 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 1
  %69 = load ptr, ptr %68, align 4
  %70 = tail call i64 @ktime_get_mono_fast_ns() #20
  %71 = getelementptr inbounds %struct.device, ptr %69, i32 0, i32 11, i32 22
  store volatile i64 %70, ptr %71, align 8
  %72 = load ptr, ptr %68, align 4
  %73 = tail call i32 @__pm_runtime_suspend(ptr noundef %72, i32 noundef 13) #20
  br label %74

74:                                               ; preds = %67, %63
  %75 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_spi_controller_idle, i32 0, i32 1), align 4
  %76 = icmp sgt i32 %75, 0
  br i1 %76, label %77, label %100

77:                                               ; preds = %74
  %78 = tail call ptr @llvm.thread.pointer() #20
  %79 = getelementptr inbounds %struct.thread_info, ptr %78, i32 0, i32 2
  %80 = load i32, ptr %79, align 8
  %81 = lshr i32 %80, 5
  %82 = getelementptr i32, ptr @__cpu_online_mask, i32 %81
  %83 = load volatile i32, ptr %82, align 4
  %84 = and i32 %80, 31
  %85 = shl nuw i32 1, %84
  %86 = and i32 %85, %83
  %87 = icmp eq i32 %86, 0
  br i1 %87, label %100, label %88

88:                                               ; preds = %77
  tail call void asm sideeffect "", "~{memory}"() #20, !srcloc !21
  %89 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_spi_controller_idle, i32 0, i32 7), align 4
  %90 = icmp eq ptr %89, null
  br i1 %90, label %99, label %91

91:                                               ; preds = %91, %88
  %92 = phi ptr [ %96, %91 ], [ %89, %88 ]
  %93 = load volatile ptr, ptr %92, align 4
  %94 = getelementptr inbounds %struct.tracepoint_func, ptr %92, i32 0, i32 1
  %95 = load ptr, ptr %94, align 4
  tail call void %93(ptr noundef %95, ptr noundef %0) #20
  %96 = getelementptr %struct.tracepoint_func, ptr %92, i32 1
  %97 = load ptr, ptr %96, align 4
  %98 = icmp eq ptr %97, null
  br i1 %98, label %99, label %91

99:                                               ; preds = %91, %88
  tail call void asm sideeffect "", "~{memory}"() #20, !srcloc !22
  br label %100

100:                                              ; preds = %99, %77, %74
  %101 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %3) #20
  store i8 0, ptr %10, align 8
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %3, i32 noundef %101) #20
  br label %388

102:                                              ; preds = %22
  %103 = getelementptr i8, ptr %20, i32 -36
  store ptr %103, ptr %5, align 4
  %104 = getelementptr inbounds %struct.list_head, ptr %20, i32 0, i32 1
  %105 = load ptr, ptr %104, align 4
  %106 = load ptr, ptr %20, align 4
  %107 = getelementptr inbounds %struct.list_head, ptr %106, i32 0, i32 1
  store ptr %105, ptr %107, align 4
  store volatile ptr %106, ptr %105, align 4
  store volatile ptr %20, ptr %20, align 4
  store ptr %20, ptr %104, align 4
  %108 = getelementptr inbounds %struct.spi_controller, ptr %0, i32 0, i32 33
  %109 = load i8, ptr %108, align 1, !range !14
  %110 = icmp eq i8 %109, 0
  br i1 %110, label %111, label %112

111:                                              ; preds = %102
  store i8 1, ptr %108, align 1
  br label %112

112:                                              ; preds = %111, %102
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %3, i32 noundef %4) #20
  %113 = getelementptr inbounds %struct.spi_controller, ptr %0, i32 0, i32 15
  tail call void @mutex_lock(ptr noundef %113) #20
  br i1 %110, label %114, label %147

114:                                              ; preds = %112
  %115 = getelementptr inbounds %struct.spi_controller, ptr %0, i32 0, i32 36
  %116 = load i8, ptr %115, align 4, !range !14
  %117 = icmp eq i8 %116, 0
  br i1 %117, label %131, label %118

118:                                              ; preds = %114
  %119 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 1
  %120 = load ptr, ptr %119, align 4
  %121 = tail call i32 @__pm_runtime_resume(ptr noundef %120, i32 noundef 4) #20
  %122 = icmp slt i32 %121, 0
  br i1 %122, label %123, label %131

123:                                              ; preds = %118
  %124 = load ptr, ptr %119, align 4
  %125 = getelementptr inbounds %struct.device, ptr %124, i32 0, i32 11, i32 13
  tail call void asm sideeffect "dmb ish", "~{memory}"() #20, !srcloc !23
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %125) #20, !srcloc !24
  %126 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %125, ptr %125, i32 0, i32 -1, ptr elementtype(i32) %125) #20, !srcloc !25
  %127 = extractvalue { i32, i32, i32 } %126, 0
  %128 = icmp eq i32 %127, 0
  br i1 %128, label %130, label %129

129:                                              ; preds = %123
  tail call void asm sideeffect "dmb ish", "~{memory}"() #20, !srcloc !26
  br label %130

130:                                              ; preds = %129, %123
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %0, ptr noundef nonnull @.str.23, i32 noundef %121) #21
  tail call void @mutex_unlock(ptr noundef %113) #20
  br label %388

131:                                              ; preds = %118, %114
  tail call fastcc void @trace_spi_controller_busy(ptr noundef %0)
  %132 = getelementptr inbounds %struct.spi_controller, ptr %0, i32 0, i32 44
  %133 = load ptr, ptr %132, align 8
  %134 = icmp eq ptr %133, null
  br i1 %134, label %147, label %135

135:                                              ; preds = %131
  %136 = tail call i32 %133(ptr noundef %0) #20
  %137 = icmp eq i32 %136, 0
  br i1 %137, label %147, label %138

138:                                              ; preds = %135
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %0, ptr noundef nonnull @.str.107, i32 noundef %136) #21
  %139 = load i8, ptr %115, align 4, !range !14
  %140 = icmp eq i8 %139, 0
  br i1 %140, label %145, label %141

141:                                              ; preds = %138
  %142 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 1
  %143 = load ptr, ptr %142, align 4
  %144 = tail call i32 @__pm_runtime_idle(ptr noundef %143, i32 noundef 5) #20
  br label %145

145:                                              ; preds = %141, %138
  %146 = getelementptr i8, ptr %20, i32 -4
  store i32 %136, ptr %146, align 4
  tail call void @spi_finalize_current_message(ptr noundef %0)
  tail call void @mutex_unlock(ptr noundef %113) #20
  br label %388

147:                                              ; preds = %135, %131, %112
  %148 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_spi_message_start, i32 0, i32 1), align 4
  %149 = icmp sgt i32 %148, 0
  br i1 %149, label %150, label %173

150:                                              ; preds = %147
  %151 = tail call ptr @llvm.thread.pointer() #20
  %152 = getelementptr inbounds %struct.thread_info, ptr %151, i32 0, i32 2
  %153 = load i32, ptr %152, align 8
  %154 = lshr i32 %153, 5
  %155 = getelementptr i32, ptr @__cpu_online_mask, i32 %154
  %156 = load volatile i32, ptr %155, align 4
  %157 = and i32 %153, 31
  %158 = shl nuw i32 1, %157
  %159 = and i32 %158, %156
  %160 = icmp eq i32 %159, 0
  br i1 %160, label %173, label %161

161:                                              ; preds = %150
  tail call void asm sideeffect "", "~{memory}"() #20, !srcloc !27
  %162 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_spi_message_start, i32 0, i32 7), align 4
  %163 = icmp eq ptr %162, null
  br i1 %163, label %172, label %164

164:                                              ; preds = %164, %161
  %165 = phi ptr [ %169, %164 ], [ %162, %161 ]
  %166 = load volatile ptr, ptr %165, align 4
  %167 = getelementptr inbounds %struct.tracepoint_func, ptr %165, i32 0, i32 1
  %168 = load ptr, ptr %167, align 4
  tail call void %166(ptr noundef %168, ptr noundef %103) #20
  %169 = getelementptr %struct.tracepoint_func, ptr %165, i32 1
  %170 = load ptr, ptr %169, align 4
  %171 = icmp eq ptr %170, null
  br i1 %171, label %172, label %164

172:                                              ; preds = %164, %161
  tail call void asm sideeffect "", "~{memory}"() #20, !srcloc !28
  br label %173

173:                                              ; preds = %172, %150, %147
  %174 = getelementptr inbounds %struct.spi_controller, ptr %0, i32 0, i32 47
  %175 = load ptr, ptr %174, align 4
  %176 = icmp eq ptr %175, null
  br i1 %176, label %184, label %177

177:                                              ; preds = %173
  %178 = tail call i32 %175(ptr noundef %0, ptr noundef %103) #20
  %179 = icmp eq i32 %178, 0
  br i1 %179, label %182, label %180

180:                                              ; preds = %177
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %0, ptr noundef nonnull @.str.108, i32 noundef %178) #21
  %181 = getelementptr i8, ptr %20, i32 -4
  store i32 %178, ptr %181, align 4
  tail call void @spi_finalize_current_message(ptr noundef %0)
  br label %385

182:                                              ; preds = %177
  %183 = getelementptr inbounds %struct.spi_controller, ptr %0, i32 0, i32 37
  store i8 1, ptr %183, align 1
  br label %184

184:                                              ; preds = %182, %173
  %185 = getelementptr inbounds %struct.spi_controller, ptr %0, i32 0, i32 10
  %186 = load i16, ptr %185, align 4
  %187 = and i16 %186, 24
  %188 = icmp eq i16 %187, 0
  br i1 %188, label %273, label %189

189:                                              ; preds = %184
  %190 = getelementptr i8, ptr %20, i32 -28
  %191 = load ptr, ptr %190, align 4
  %192 = getelementptr inbounds %struct.spi_device, ptr %191, i32 0, i32 7
  %193 = load i32, ptr %192, align 8
  %194 = and i32 %193, 16
  %195 = icmp eq i32 %194, 0
  br i1 %195, label %196, label %273

196:                                              ; preds = %189
  %197 = load ptr, ptr %103, align 4
  %198 = icmp eq ptr %197, %103
  br i1 %198, label %273, label %199

199:                                              ; preds = %196
  %200 = and i16 %186, 16
  %201 = icmp eq i16 %200, 0
  %202 = and i16 %186, 8
  %203 = icmp eq i16 %202, 0
  br label %204

204:                                              ; preds = %226, %199
  %205 = phi ptr [ %197, %199 ], [ %228, %226 ]
  %206 = phi i32 [ 0, %199 ], [ %217, %226 ]
  %207 = phi i32 [ 0, %199 ], [ %227, %226 ]
  br i1 %201, label %216, label %208

208:                                              ; preds = %204
  %209 = getelementptr i8, ptr %205, i32 -84
  %210 = load ptr, ptr %209, align 4
  %211 = icmp eq ptr %210, null
  br i1 %211, label %212, label %216

212:                                              ; preds = %208
  %213 = getelementptr i8, ptr %205, i32 -76
  %214 = load i32, ptr %213, align 4
  %215 = tail call i32 @llvm.umax.i32(i32 %214, i32 %206) #20
  br label %216

216:                                              ; preds = %212, %208, %204
  %217 = phi i32 [ %206, %208 ], [ %215, %212 ], [ %206, %204 ]
  br i1 %203, label %226, label %218

218:                                              ; preds = %216
  %219 = getelementptr i8, ptr %205, i32 -80
  %220 = load ptr, ptr %219, align 4
  %221 = icmp eq ptr %220, null
  br i1 %221, label %222, label %226

222:                                              ; preds = %218
  %223 = getelementptr i8, ptr %205, i32 -76
  %224 = load i32, ptr %223, align 4
  %225 = tail call i32 @llvm.umax.i32(i32 %224, i32 %207) #20
  br label %226

226:                                              ; preds = %222, %218, %216
  %227 = phi i32 [ %207, %218 ], [ %225, %222 ], [ %207, %216 ]
  %228 = load ptr, ptr %205, align 4
  %229 = icmp eq ptr %228, %103
  br i1 %229, label %230, label %204

230:                                              ; preds = %226
  %231 = icmp eq i32 %217, 0
  br i1 %231, label %237, label %232

232:                                              ; preds = %230
  %233 = getelementptr inbounds %struct.spi_controller, ptr %0, i32 0, i32 63
  %234 = load ptr, ptr %233, align 4
  %235 = tail call noalias ptr @krealloc(ptr noundef %234, i32 noundef %217, i32 noundef 3521) #24
  %236 = icmp eq ptr %235, null
  br i1 %236, label %355, label %239

237:                                              ; preds = %230
  %238 = icmp eq i32 %227, 0
  br i1 %238, label %273, label %241

239:                                              ; preds = %232
  store ptr %235, ptr %233, align 4
  %240 = icmp eq i32 %227, 0
  br i1 %240, label %247, label %241

241:                                              ; preds = %239, %237
  %242 = getelementptr inbounds %struct.spi_controller, ptr %0, i32 0, i32 62
  %243 = load ptr, ptr %242, align 8
  %244 = tail call noalias ptr @krealloc(ptr noundef %243, i32 noundef %227, i32 noundef 3265) #24
  %245 = icmp eq ptr %244, null
  br i1 %245, label %355, label %246

246:                                              ; preds = %241
  store ptr %244, ptr %242, align 8
  br label %247

247:                                              ; preds = %246, %239
  %248 = load ptr, ptr %103, align 4
  %249 = icmp eq ptr %248, %103
  br i1 %249, label %273, label %250

250:                                              ; preds = %247
  %251 = getelementptr inbounds %struct.spi_controller, ptr %0, i32 0, i32 63
  %252 = getelementptr inbounds %struct.spi_controller, ptr %0, i32 0, i32 62
  br label %253

253:                                              ; preds = %270, %250
  %254 = phi ptr [ %248, %250 ], [ %271, %270 ]
  %255 = getelementptr i8, ptr %254, i32 -84
  %256 = getelementptr i8, ptr %254, i32 -76
  %257 = load i32, ptr %256, align 4
  %258 = icmp eq i32 %257, 0
  br i1 %258, label %270, label %259

259:                                              ; preds = %253
  %260 = load ptr, ptr %255, align 4
  %261 = icmp eq ptr %260, null
  br i1 %261, label %262, label %264

262:                                              ; preds = %259
  %263 = load ptr, ptr %251, align 4
  store ptr %263, ptr %255, align 4
  br label %264

264:                                              ; preds = %262, %259
  %265 = getelementptr i8, ptr %254, i32 -80
  %266 = load ptr, ptr %265, align 4
  %267 = icmp eq ptr %266, null
  br i1 %267, label %268, label %270

268:                                              ; preds = %264
  %269 = load ptr, ptr %252, align 8
  store ptr %269, ptr %265, align 4
  br label %270

270:                                              ; preds = %268, %264, %253
  %271 = load ptr, ptr %254, align 4
  %272 = icmp eq ptr %271, %103
  br i1 %272, label %273, label %253

273:                                              ; preds = %270, %247, %237, %196, %189, %184
  %274 = getelementptr inbounds %struct.spi_controller, ptr %0, i32 0, i32 24
  %275 = load ptr, ptr %274, align 4
  %276 = icmp eq ptr %275, null
  br i1 %276, label %358, label %277

277:                                              ; preds = %273
  %278 = getelementptr inbounds %struct.spi_controller, ptr %0, i32 0, i32 60
  %279 = load ptr, ptr %278, align 8
  %280 = icmp eq ptr %279, null
  br i1 %280, label %284, label %281

281:                                              ; preds = %277
  %282 = load ptr, ptr %279, align 4
  %283 = getelementptr inbounds %struct.dma_device, ptr %282, i32 0, i32 15
  br label %290

284:                                              ; preds = %277
  %285 = getelementptr inbounds %struct.spi_controller, ptr %0, i32 0, i32 25
  %286 = load ptr, ptr %285, align 8
  %287 = icmp eq ptr %286, null
  br i1 %287, label %288, label %293

288:                                              ; preds = %284
  %289 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 1
  br label %290

290:                                              ; preds = %288, %281
  %291 = phi ptr [ %289, %288 ], [ %283, %281 ]
  %292 = load ptr, ptr %291, align 4
  br label %293

293:                                              ; preds = %290, %284
  %294 = phi ptr [ %286, %284 ], [ %292, %290 ]
  %295 = getelementptr inbounds %struct.spi_controller, ptr %0, i32 0, i32 61
  %296 = load ptr, ptr %295, align 4
  %297 = icmp eq ptr %296, null
  br i1 %297, label %301, label %298

298:                                              ; preds = %293
  %299 = load ptr, ptr %296, align 4
  %300 = getelementptr inbounds %struct.dma_device, ptr %299, i32 0, i32 15
  br label %307

301:                                              ; preds = %293
  %302 = getelementptr inbounds %struct.spi_controller, ptr %0, i32 0, i32 25
  %303 = load ptr, ptr %302, align 8
  %304 = icmp eq ptr %303, null
  br i1 %304, label %305, label %310

305:                                              ; preds = %301
  %306 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 1
  br label %307

307:                                              ; preds = %305, %298
  %308 = phi ptr [ %306, %305 ], [ %300, %298 ]
  %309 = load ptr, ptr %308, align 4
  br label %310

310:                                              ; preds = %307, %301
  %311 = phi ptr [ %303, %301 ], [ %309, %307 ]
  %312 = load ptr, ptr %103, align 4
  %313 = icmp eq ptr %312, %103
  br i1 %313, label %353, label %314

314:                                              ; preds = %310
  %315 = getelementptr i8, ptr %20, i32 -28
  br label %316

316:                                              ; preds = %351, %314
  %317 = phi ptr [ %275, %314 ], [ %352, %351 ]
  %318 = phi ptr [ %312, %314 ], [ %349, %351 ]
  %319 = getelementptr i8, ptr %318, i32 -84
  %320 = load ptr, ptr %315, align 4
  %321 = tail call zeroext i1 %317(ptr noundef %0, ptr noundef %320, ptr noundef %319) #20
  br i1 %321, label %322, label %348

322:                                              ; preds = %316
  %323 = load ptr, ptr %319, align 4
  %324 = icmp eq ptr %323, null
  br i1 %324, label %331, label %325

325:                                              ; preds = %322
  %326 = getelementptr i8, ptr %318, i32 -64
  %327 = getelementptr i8, ptr %318, i32 -76
  %328 = load i32, ptr %327, align 4
  %329 = tail call i32 @spi_map_buf(ptr noundef %0, ptr noundef %294, ptr noundef %326, ptr noundef nonnull %323, i32 noundef %328, i32 noundef 1) #20
  %330 = icmp eq i32 %329, 0
  br i1 %330, label %331, label %355

331:                                              ; preds = %325, %322
  %332 = getelementptr i8, ptr %318, i32 -80
  %333 = load ptr, ptr %332, align 4
  %334 = icmp eq ptr %333, null
  br i1 %334, label %348, label %335

335:                                              ; preds = %331
  %336 = getelementptr i8, ptr %318, i32 -52
  %337 = getelementptr i8, ptr %318, i32 -76
  %338 = load i32, ptr %337, align 4
  %339 = tail call i32 @spi_map_buf(ptr noundef %0, ptr noundef %311, ptr noundef %336, ptr noundef nonnull %333, i32 noundef %338, i32 noundef 2) #20
  %340 = icmp eq i32 %339, 0
  br i1 %340, label %348, label %341

341:                                              ; preds = %335
  %342 = getelementptr i8, ptr %318, i32 -56
  %343 = load i32, ptr %342, align 4
  %344 = icmp eq i32 %343, 0
  br i1 %344, label %355, label %345

345:                                              ; preds = %341
  %346 = getelementptr i8, ptr %318, i32 -64
  %347 = load ptr, ptr %346, align 4
  tail call void @dma_unmap_sg_attrs(ptr noundef %294, ptr noundef %347, i32 noundef %343, i32 noundef 1, i32 noundef 0) #20
  tail call void @sg_free_table(ptr noundef %346) #20
  br label %355

348:                                              ; preds = %335, %331, %316
  %349 = load ptr, ptr %318, align 4
  %350 = icmp eq ptr %349, %103
  br i1 %350, label %353, label %351

351:                                              ; preds = %348
  %352 = load ptr, ptr %274, align 4
  br label %316

353:                                              ; preds = %348, %310
  %354 = getelementptr inbounds %struct.spi_controller, ptr %0, i32 0, i32 38
  store i8 1, ptr %354, align 2
  br label %358

355:                                              ; preds = %345, %341, %325, %241, %232
  %356 = phi i32 [ %339, %345 ], [ %339, %341 ], [ -12, %241 ], [ -12, %232 ], [ %329, %325 ]
  %357 = getelementptr i8, ptr %20, i32 -4
  store i32 %356, ptr %357, align 4
  tail call void @spi_finalize_current_message(ptr noundef %0)
  br label %385

358:                                              ; preds = %353, %273
  %359 = getelementptr inbounds %struct.spi_controller, ptr %0, i32 0, i32 65
  %360 = load i8, ptr %359, align 4, !range !14
  %361 = icmp eq i8 %360, 0
  br i1 %361, label %362, label %379

362:                                              ; preds = %358
  %363 = getelementptr inbounds %struct.spi_controller, ptr %0, i32 0, i32 51
  %364 = load ptr, ptr %363, align 4
  %365 = icmp eq ptr %364, null
  br i1 %365, label %366, label %379

366:                                              ; preds = %362
  %367 = load ptr, ptr %103, align 4
  %368 = icmp eq ptr %367, %103
  br i1 %368, label %379, label %369

369:                                              ; preds = %376, %366
  %370 = phi ptr [ %377, %376 ], [ %367, %366 ]
  %371 = getelementptr i8, ptr %370, i32 -16
  store i32 0, ptr %371, align 4
  %372 = getelementptr i8, ptr %370, i32 -8
  %373 = load ptr, ptr %372, align 4
  %374 = icmp eq ptr %373, null
  br i1 %374, label %376, label %375

375:                                              ; preds = %369
  tail call void @ktime_get_real_ts64(ptr noundef nonnull %373) #20
  br label %376

376:                                              ; preds = %375, %369
  %377 = load ptr, ptr %370, align 4
  %378 = icmp eq ptr %377, %103
  br i1 %378, label %379, label %369

379:                                              ; preds = %376, %366, %362, %358
  %380 = getelementptr inbounds %struct.spi_controller, ptr %0, i32 0, i32 45
  %381 = load ptr, ptr %380, align 4
  %382 = tail call i32 %381(ptr noundef %0, ptr noundef %103) #20
  %383 = icmp eq i32 %382, 0
  br i1 %383, label %386, label %384

384:                                              ; preds = %379
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %0, ptr noundef nonnull @.str.109) #21
  br label %385

385:                                              ; preds = %384, %355, %180
  tail call void @mutex_unlock(ptr noundef %113) #20
  br label %388

386:                                              ; preds = %379
  tail call void @mutex_unlock(ptr noundef %113) #20
  %387 = tail call i32 @__cond_resched() #20
  br label %388

388:                                              ; preds = %386, %385, %145, %130, %100, %50, %30, %13, %8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @spi_new_ancillary_device(ptr noundef %0, i8 noundef zeroext %1) #0 {
  %3 = getelementptr inbounds %struct.spi_device, ptr %0, i32 0, i32 1
  %4 = load ptr, ptr %3, align 8
  %5 = icmp eq ptr %4, null
  br i1 %5, label %61, label %6

6:                                                ; preds = %2
  %7 = tail call ptr @get_device(ptr noundef nonnull %4) #20
  %8 = icmp eq ptr %7, null
  br i1 %8, label %61, label %9

9:                                                ; preds = %6
  %10 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10), align 4
  %11 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %10, i32 noundef 3520, i32 noundef 696) #22
  %12 = icmp eq ptr %11, null
  br i1 %12, label %58, label %13

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct.spi_device, ptr %11, i32 0, i32 1
  store ptr %4, ptr %14, align 8
  %15 = getelementptr inbounds %struct.spi_device, ptr %11, i32 0, i32 2
  store ptr %4, ptr %15, align 4
  %16 = getelementptr inbounds %struct.device, ptr %11, i32 0, i32 1
  store ptr %4, ptr %16, align 4
  %17 = getelementptr inbounds %struct.device, ptr %11, i32 0, i32 5
  store ptr @spi_bus_type, ptr %17, align 4
  %18 = getelementptr inbounds %struct.device, ptr %11, i32 0, i32 33
  store ptr @spidev_release, ptr %18, align 4
  %19 = getelementptr inbounds %struct.spi_device, ptr %11, i32 0, i32 13
  store i32 -2, ptr %19, align 4
  %20 = getelementptr inbounds %struct.spi_controller, ptr %4, i32 0, i32 6
  %21 = load i32, ptr %20, align 4
  %22 = getelementptr inbounds %struct.spi_device, ptr %11, i32 0, i32 7
  store i32 %21, ptr %22, align 8
  %23 = getelementptr inbounds %struct.spi_device, ptr %11, i32 0, i32 19
  store i32 0, ptr %23, align 8
  tail call void @device_initialize(ptr noundef nonnull %11) #20
  %24 = getelementptr inbounds %struct.spi_device, ptr %11, i32 0, i32 11
  %25 = tail call i32 @strlcpy(ptr noundef %24, ptr noundef nonnull @.str.5, i32 noundef 32) #20
  %26 = getelementptr inbounds %struct.spi_device, ptr %11, i32 0, i32 4
  store i8 %1, ptr %26, align 4
  %27 = getelementptr inbounds %struct.spi_device, ptr %0, i32 0, i32 3
  %28 = load i32, ptr %27, align 8
  %29 = getelementptr inbounds %struct.spi_device, ptr %11, i32 0, i32 3
  store i32 %28, ptr %29, align 8
  %30 = getelementptr inbounds %struct.spi_device, ptr %0, i32 0, i32 7
  %31 = load i32, ptr %30, align 8
  store i32 %31, ptr %22, align 8
  %32 = load ptr, ptr %14, align 8
  %33 = zext i8 %1 to i32
  %34 = getelementptr inbounds %struct.spi_controller, ptr %32, i32 0, i32 3
  %35 = load i16, ptr %34, align 2
  %36 = zext i16 %35 to i32
  %37 = icmp ult i32 %33, %36
  br i1 %37, label %41, label %38

38:                                               ; preds = %13
  %39 = getelementptr inbounds %struct.device, ptr %32, i32 0, i32 1
  %40 = load ptr, ptr %39, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %40, ptr noundef nonnull @.str.98, i32 noundef %33, i32 noundef %36) #21
  br label %56

41:                                               ; preds = %13
  %42 = getelementptr inbounds %struct.device, ptr %32, i32 0, i32 3
  %43 = load ptr, ptr %42, align 4
  %44 = icmp eq ptr %43, null
  br i1 %44, label %45, label %47

45:                                               ; preds = %41
  %46 = load ptr, ptr %32, align 4
  br label %47

47:                                               ; preds = %45, %41
  %48 = phi ptr [ %46, %45 ], [ %43, %41 ]
  %49 = tail call i32 (ptr, ptr, ...) @dev_set_name(ptr noundef nonnull %11, ptr noundef nonnull @.str.100, ptr noundef %48, i32 noundef %33) #20
  %50 = getelementptr inbounds %struct.spi_controller, ptr %32, i32 0, i32 16
  %51 = tail call zeroext i1 @mutex_is_locked(ptr noundef %50) #20
  br i1 %51, label %53, label %52, !prof !10

52:                                               ; preds = %47
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 692, i32 noundef 9, ptr noundef null) #20
  br label %53

53:                                               ; preds = %52, %47
  %54 = tail call fastcc i32 @__spi_add_device(ptr noundef nonnull %11) #20
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %64, label %56

56:                                               ; preds = %53, %38
  %57 = phi i32 [ -22, %38 ], [ %54, %53 ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %0, ptr noundef nonnull @.str.6) #21
  br label %58

58:                                               ; preds = %56, %9
  %59 = phi ptr [ %11, %56 ], [ %4, %9 ]
  %60 = phi i32 [ %57, %56 ], [ -12, %9 ]
  tail call void @put_device(ptr noundef nonnull %59) #20
  br label %61

61:                                               ; preds = %58, %6, %2
  %62 = phi i32 [ -12, %6 ], [ -12, %2 ], [ %60, %58 ]
  %63 = inttoptr i32 %62 to ptr
  br label %64

64:                                               ; preds = %61, %53
  %65 = phi ptr [ %63, %61 ], [ %11, %53 ]
  ret ptr %65
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @__spi_alloc_controller(ptr noundef %0, i32 noundef %1, i1 noundef zeroext %2) #0 {
  %4 = zext i1 %2 to i8
  %5 = icmp eq ptr %0, null
  br i1 %5, label %28, label %6

6:                                                ; preds = %3
  %7 = add i32 %1, 960
  %8 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %7, i32 noundef 3520) #23
  %9 = icmp eq ptr %8, null
  br i1 %9, label %28, label %10

10:                                               ; preds = %6
  tail call void @device_initialize(ptr noundef nonnull %8) #20
  %11 = getelementptr inbounds %struct.spi_controller, ptr %8, i32 0, i32 30
  store volatile ptr %11, ptr %11, align 4
  %12 = getelementptr inbounds %struct.spi_controller, ptr %8, i32 0, i32 30, i32 1
  store ptr %11, ptr %12, align 8
  %13 = getelementptr inbounds %struct.spi_controller, ptr %8, i32 0, i32 29
  store i32 0, ptr %13, align 64
  %14 = getelementptr inbounds %struct.spi_controller, ptr %8, i32 0, i32 17
  store i32 0, ptr %14, align 16
  %15 = getelementptr inbounds %struct.spi_controller, ptr %8, i32 0, i32 18
  tail call void @__mutex_init(ptr noundef %15, ptr noundef nonnull @.str.7, ptr noundef nonnull @__spi_alloc_controller.__key) #20
  %16 = getelementptr inbounds %struct.spi_controller, ptr %8, i32 0, i32 15
  tail call void @__mutex_init(ptr noundef %16, ptr noundef nonnull @.str.9, ptr noundef nonnull @__spi_alloc_controller.__key.8) #20
  %17 = getelementptr inbounds %struct.spi_controller, ptr %8, i32 0, i32 16
  tail call void @__mutex_init(ptr noundef %17, ptr noundef nonnull @.str.11, ptr noundef nonnull @__spi_alloc_controller.__key.10) #20
  %18 = getelementptr inbounds %struct.spi_controller, ptr %8, i32 0, i32 2
  store i16 -1, ptr %18, align 32
  %19 = getelementptr inbounds %struct.spi_controller, ptr %8, i32 0, i32 3
  store i16 1, ptr %19, align 2
  %20 = getelementptr inbounds %struct.spi_controller, ptr %8, i32 0, i32 12
  store i8 %4, ptr %20, align 1
  %21 = getelementptr inbounds %struct.device, ptr %8, i32 0, i32 31
  store ptr @spi_master_class, ptr %21, align 4
  %22 = getelementptr inbounds %struct.device, ptr %8, i32 0, i32 1
  store ptr %0, ptr %22, align 4
  %23 = getelementptr inbounds %struct.device, ptr %8, i32 0, i32 11, i32 15
  %24 = load i16, ptr %23, align 8
  %25 = or i16 %24, 256
  store i16 %25, ptr %23, align 8
  %26 = getelementptr i8, ptr %8, i32 960
  %27 = getelementptr inbounds %struct.device, ptr %8, i32 0, i32 8
  store ptr %26, ptr %27, align 64
  br label %28

28:                                               ; preds = %10, %6, %3
  %29 = phi ptr [ %8, %10 ], [ null, %3 ], [ null, %6 ]
  ret ptr %29
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @device_initialize(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @__devm_spi_alloc_controller(ptr noundef %0, i32 noundef %1, i1 noundef zeroext %2) #0 {
  %4 = tail call noalias ptr @__devres_alloc_node(ptr noundef nonnull @devm_spi_release_controller, i32 noundef 4, i32 noundef 3264, i32 noundef -1, ptr noundef nonnull @.str.12) #20
  %5 = icmp eq ptr %4, null
  br i1 %5, label %12, label %6

6:                                                ; preds = %3
  %7 = tail call ptr @__spi_alloc_controller(ptr noundef %0, i32 noundef %1, i1 noundef zeroext %2)
  %8 = icmp eq ptr %7, null
  br i1 %8, label %11, label %9

9:                                                ; preds = %6
  %10 = getelementptr inbounds %struct.spi_controller, ptr %7, i32 0, i32 11
  store i8 1, ptr %10, align 2
  store ptr %7, ptr %4, align 4
  tail call void @devres_add(ptr noundef %0, ptr noundef nonnull %4) #20
  br label %12

11:                                               ; preds = %6
  tail call void @devres_free(ptr noundef nonnull %4) #20
  br label %12

12:                                               ; preds = %11, %9, %3
  %13 = phi ptr [ null, %3 ], [ null, %11 ], [ %7, %9 ]
  ret ptr %13
}

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @__devres_alloc_node(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @devm_spi_release_controller(ptr nocapture noundef readnone %0, ptr nocapture noundef readonly %1) #0 {
  %3 = load ptr, ptr %1, align 4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %6, label %5

5:                                                ; preds = %2
  tail call void @put_device(ptr noundef nonnull %3) #20
  br label %6

6:                                                ; preds = %5, %2
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @devres_add(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @devres_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @spi_register_controller(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 1
  %3 = load ptr, ptr %2, align 4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %319, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.spi_controller, ptr %0, i32 0, i32 53
  %7 = load ptr, ptr %6, align 4
  %8 = icmp eq ptr %7, null
  br i1 %8, label %13, label %9

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.spi_controller_mem_ops, ptr %7, i32 0, i32 2
  %11 = load ptr, ptr %10, align 4
  %12 = icmp eq ptr %11, null
  br i1 %12, label %319, label %25

13:                                               ; preds = %5
  %14 = getelementptr inbounds %struct.spi_controller, ptr %0, i32 0, i32 22
  %15 = load ptr, ptr %14, align 4
  %16 = icmp eq ptr %15, null
  br i1 %16, label %17, label %25

17:                                               ; preds = %13
  %18 = getelementptr inbounds %struct.spi_controller, ptr %0, i32 0, i32 51
  %19 = load ptr, ptr %18, align 4
  %20 = icmp eq ptr %19, null
  br i1 %20, label %21, label %25

21:                                               ; preds = %17
  %22 = getelementptr inbounds %struct.spi_controller, ptr %0, i32 0, i32 45
  %23 = load ptr, ptr %22, align 4
  %24 = icmp eq ptr %23, null
  br i1 %24, label %319, label %25

25:                                               ; preds = %21, %17, %13, %9
  %26 = getelementptr inbounds %struct.spi_controller, ptr %0, i32 0, i32 2
  %27 = load i16, ptr %26, align 8
  %28 = icmp sgt i16 %27, -1
  br i1 %28, label %29, label %40

29:                                               ; preds = %25
  tail call void @mutex_lock(ptr noundef nonnull @board_lock) #20
  %30 = load i16, ptr %26, align 8
  %31 = sext i16 %30 to i32
  %32 = add nsw i32 %31, 1
  %33 = tail call i32 @idr_alloc(ptr noundef nonnull @spi_master_idr, ptr noundef %0, i32 noundef %31, i32 noundef %32, i32 noundef 3264) #20
  tail call void @mutex_unlock(ptr noundef nonnull @board_lock) #20
  %34 = icmp slt i32 %33, 0
  br i1 %34, label %35, label %38, !prof !11

35:                                               ; preds = %29
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 2914, i32 noundef 9, ptr noundef nonnull @.str.13) #20
  %36 = icmp eq i32 %33, -28
  %37 = select i1 %36, i32 -16, i32 %33
  br label %319

38:                                               ; preds = %29
  %39 = trunc i32 %33 to i16
  store i16 %39, ptr %26, align 8
  br label %59

40:                                               ; preds = %25
  %41 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 25
  %42 = load ptr, ptr %41, align 8
  %43 = icmp eq ptr %42, null
  br i1 %43, label %57, label %44

44:                                               ; preds = %40
  %45 = tail call i32 @of_alias_get_id(ptr noundef nonnull %42, ptr noundef nonnull @.str) #20
  %46 = icmp sgt i32 %45, -1
  br i1 %46, label %47, label %57

47:                                               ; preds = %44
  %48 = trunc i32 %45 to i16
  store i16 %48, ptr %26, align 8
  tail call void @mutex_lock(ptr noundef nonnull @board_lock) #20
  %49 = load i16, ptr %26, align 8
  %50 = sext i16 %49 to i32
  %51 = add nsw i32 %50, 1
  %52 = tail call i32 @idr_alloc(ptr noundef nonnull @spi_master_idr, ptr noundef %0, i32 noundef %50, i32 noundef %51, i32 noundef 3264) #20
  tail call void @mutex_unlock(ptr noundef nonnull @board_lock) #20
  %53 = icmp slt i32 %52, 0
  br i1 %53, label %54, label %57, !prof !11

54:                                               ; preds = %47
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 2926, i32 noundef 9, ptr noundef nonnull @.str.13) #20
  %55 = icmp eq i32 %52, -28
  %56 = select i1 %55, i32 -16, i32 %52
  br label %319

57:                                               ; preds = %47, %44, %40
  %58 = load i16, ptr %26, align 8
  br label %59

59:                                               ; preds = %57, %38
  %60 = phi i16 [ %58, %57 ], [ %39, %38 ]
  %61 = icmp slt i16 %60, 0
  br i1 %61, label %62, label %72

62:                                               ; preds = %59
  %63 = tail call i32 @of_alias_get_highest_id(ptr noundef nonnull @.str) #20
  %64 = icmp slt i32 %63, 0
  %65 = add i32 %63, 1
  %66 = select i1 %64, i32 0, i32 %65
  tail call void @mutex_lock(ptr noundef nonnull @board_lock) #20
  %67 = tail call i32 @idr_alloc(ptr noundef nonnull @spi_master_idr, ptr noundef %0, i32 noundef %66, i32 noundef 0, i32 noundef 3264) #20
  tail call void @mutex_unlock(ptr noundef nonnull @board_lock) #20
  %68 = icmp slt i32 %67, 0
  br i1 %68, label %69, label %70, !prof !11

69:                                               ; preds = %62
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 2941, i32 noundef 9, ptr noundef nonnull @.str.13) #20
  br label %319

70:                                               ; preds = %62
  %71 = trunc i32 %67 to i16
  store i16 %71, ptr %26, align 8
  br label %72

72:                                               ; preds = %70, %59
  %73 = getelementptr inbounds %struct.spi_controller, ptr %0, i32 0, i32 19
  store i8 0, ptr %73, align 8
  %74 = getelementptr inbounds %struct.spi_controller, ptr %0, i32 0, i32 42
  store i32 0, ptr %74, align 4
  %75 = getelementptr inbounds %struct.spi_controller, ptr %0, i32 0, i32 42, i32 1
  tail call void @__init_swait_queue_head(ptr noundef %75, ptr noundef nonnull @.str.111, ptr noundef nonnull @init_completion.__key) #20
  %76 = getelementptr inbounds %struct.spi_controller, ptr %0, i32 0, i32 43
  %77 = load i32, ptr %76, align 4
  %78 = icmp eq i32 %77, 0
  br i1 %78, label %79, label %80

79:                                               ; preds = %72
  store i32 2147483647, ptr %76, align 4
  br label %80

80:                                               ; preds = %79, %72
  %81 = load i16, ptr %26, align 8
  %82 = sext i16 %81 to i32
  %83 = tail call i32 (ptr, ptr, ...) @dev_set_name(ptr noundef %0, ptr noundef nonnull @.str.14, i32 noundef %82) #20
  %84 = getelementptr inbounds %struct.spi_controller, ptr %0, i32 0, i32 56
  %85 = load i8, ptr %84, align 8, !range !14
  %86 = icmp eq i8 %85, 0
  br i1 %86, label %174, label %87

87:                                               ; preds = %80
  %88 = tail call i32 @gpiod_count(ptr noundef %0, ptr noundef nonnull @.str.112) #20
  %89 = icmp slt i32 %88, 0
  br i1 %89, label %90, label %92

90:                                               ; preds = %87
  %91 = icmp eq i32 %88, -2
  br i1 %91, label %170, label %314

92:                                               ; preds = %87
  %93 = getelementptr inbounds %struct.spi_controller, ptr %0, i32 0, i32 3
  %94 = load i16, ptr %93, align 2
  %95 = zext i16 %94 to i32
  %96 = tail call i32 @llvm.smax.i32(i32 %88, i32 %95) #20
  %97 = trunc i32 %96 to i16
  store i16 %97, ptr %93, align 2
  %98 = shl i32 %96, 2
  %99 = and i32 %98, 262140
  %100 = tail call noalias ptr @devm_kmalloc(ptr noundef %0, i32 noundef %99, i32 noundef 3520) #20
  %101 = icmp eq ptr %100, null
  br i1 %101, label %314, label %102

102:                                              ; preds = %92
  %103 = getelementptr inbounds %struct.spi_controller, ptr %0, i32 0, i32 55
  store ptr %100, ptr %103, align 4
  %104 = icmp eq i32 %88, 0
  br i1 %104, label %151, label %105

105:                                              ; preds = %102
  %106 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 3
  %107 = getelementptr inbounds %struct.spi_controller, ptr %0, i32 0, i32 58
  br label %108

108:                                              ; preds = %140, %105
  %109 = phi i32 [ 0, %105 ], [ %143, %140 ]
  %110 = phi i32 [ 0, %105 ], [ %142, %140 ]
  %111 = phi i32 [ 0, %105 ], [ %141, %140 ]
  %112 = tail call ptr @devm_gpiod_get_index_optional(ptr noundef %0, ptr noundef nonnull @.str.112, i32 noundef %109, i32 noundef 3) #20
  %113 = getelementptr ptr, ptr %100, i32 %109
  store ptr %112, ptr %113, align 4
  %114 = icmp ugt ptr %112, inttoptr (i32 -4096 to ptr)
  br i1 %114, label %168, label %115

115:                                              ; preds = %108
  %116 = icmp eq ptr %112, null
  br i1 %116, label %130, label %117

117:                                              ; preds = %115
  %118 = load ptr, ptr %106, align 4
  %119 = icmp eq ptr %118, null
  br i1 %119, label %120, label %122

120:                                              ; preds = %117
  %121 = load ptr, ptr %0, align 4
  br label %122

122:                                              ; preds = %120, %117
  %123 = phi ptr [ %121, %120 ], [ %118, %117 ]
  %124 = tail call noalias ptr (ptr, i32, ptr, ...) @devm_kasprintf(ptr noundef %0, i32 noundef 3264, ptr noundef nonnull @.str.113, ptr noundef %123, i32 noundef %109) #20
  %125 = icmp eq ptr %124, null
  br i1 %125, label %314, label %126

126:                                              ; preds = %122
  %127 = load ptr, ptr %113, align 4
  %128 = tail call i32 @gpiod_set_consumer_name(ptr noundef %127, ptr noundef nonnull %124) #20
  %129 = add i32 %110, 1
  br label %140

130:                                              ; preds = %115
  %131 = load i8, ptr %107, align 2
  %132 = icmp eq i8 %131, 0
  %133 = sext i8 %131 to i32
  %134 = icmp slt i32 %109, %133
  %135 = or i1 %132, %134
  br i1 %135, label %137, label %136

136:                                              ; preds = %130
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %0, ptr noundef nonnull @.str.114, i32 noundef %109) #21
  br label %314

137:                                              ; preds = %130
  %138 = shl nuw i32 1, %109
  %139 = or i32 %111, %138
  br label %140

140:                                              ; preds = %137, %126
  %141 = phi i32 [ %111, %126 ], [ %139, %137 ]
  %142 = phi i32 [ %129, %126 ], [ %110, %137 ]
  %143 = add nuw nsw i32 %109, 1
  %144 = icmp eq i32 %143, %88
  br i1 %144, label %145, label %108

145:                                              ; preds = %140
  %146 = xor i32 %141, -1
  %147 = tail call i32 @llvm.cttz.i32(i32 %146, i1 true) #20, !range !29
  %148 = icmp eq i32 %141, -1
  %149 = trunc i32 %147 to i8
  %150 = select i1 %148, i8 -1, i8 %149
  br label %151

151:                                              ; preds = %145, %102
  %152 = phi i32 [ 0, %102 ], [ %142, %145 ]
  %153 = phi i8 [ 0, %102 ], [ %150, %145 ]
  %154 = getelementptr inbounds %struct.spi_controller, ptr %0, i32 0, i32 57
  store i8 %153, ptr %154, align 1
  %155 = getelementptr inbounds %struct.spi_controller, ptr %0, i32 0, i32 10
  %156 = load i16, ptr %155, align 4
  %157 = and i16 %156, 32
  %158 = icmp ne i16 %157, 0
  %159 = icmp ne i32 %152, 0
  %160 = select i1 %158, i1 %159, i1 false
  br i1 %160, label %161, label %170

161:                                              ; preds = %151
  %162 = getelementptr inbounds %struct.spi_controller, ptr %0, i32 0, i32 58
  %163 = load i8, ptr %162, align 2
  %164 = icmp eq i8 %163, 0
  %165 = icmp slt i8 %153, %163
  %166 = select i1 %164, i1 true, i1 %165
  br i1 %166, label %170, label %167

167:                                              ; preds = %161
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %0, ptr noundef nonnull @.str.115) #21
  br label %314

168:                                              ; preds = %108
  %169 = ptrtoint ptr %112 to i32
  br label %314

170:                                              ; preds = %161, %151, %90
  %171 = getelementptr inbounds %struct.spi_controller, ptr %0, i32 0, i32 5
  %172 = load i32, ptr %171, align 8
  %173 = or i32 %172, 4
  store i32 %173, ptr %171, align 8
  br label %211

174:                                              ; preds = %80
  %175 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 25
  %176 = load ptr, ptr %175, align 8
  %177 = icmp eq ptr %176, null
  br i1 %177, label %211, label %178

178:                                              ; preds = %174
  %179 = tail call i32 @of_count_phandle_with_args(ptr noundef nonnull %176, ptr noundef nonnull @.str.116, ptr noundef nonnull @.str.117) #20
  %180 = getelementptr inbounds %struct.spi_controller, ptr %0, i32 0, i32 3
  %181 = load i16, ptr %180, align 2
  %182 = zext i16 %181 to i32
  %183 = tail call i32 @llvm.smax.i32(i32 %179, i32 %182) #20
  %184 = trunc i32 %183 to i16
  store i16 %184, ptr %180, align 2
  switch i32 %179, label %185 [
    i32 -2, label %211
    i32 0, label %211
  ]

185:                                              ; preds = %178
  %186 = icmp slt i32 %179, 0
  br i1 %186, label %314, label %187

187:                                              ; preds = %185
  %188 = shl i32 %183, 2
  %189 = and i32 %188, 262140
  %190 = tail call noalias ptr @devm_kmalloc(ptr noundef %0, i32 noundef %189, i32 noundef 3520) #20
  %191 = getelementptr inbounds %struct.spi_controller, ptr %0, i32 0, i32 54
  store ptr %190, ptr %191, align 8
  %192 = icmp eq ptr %190, null
  br i1 %192, label %314, label %193

193:                                              ; preds = %187
  %194 = load i16, ptr %180, align 2
  %195 = zext i16 %194 to i32
  %196 = icmp eq i16 %194, 0
  br i1 %196, label %197, label %200

197:                                              ; preds = %198, %193
  br label %205

198:                                              ; preds = %200
  %199 = icmp sgt i32 %179, 0
  br i1 %199, label %197, label %211

200:                                              ; preds = %200, %193
  %201 = phi i32 [ %203, %200 ], [ 0, %193 ]
  %202 = getelementptr i32, ptr %190, i32 %201
  store i32 -2, ptr %202, align 4
  %203 = add nuw nsw i32 %201, 1
  %204 = icmp eq i32 %203, %195
  br i1 %204, label %198, label %200

205:                                              ; preds = %205, %197
  %206 = phi i32 [ %209, %205 ], [ 0, %197 ]
  %207 = tail call i32 @of_get_named_gpio_flags(ptr noundef nonnull %176, ptr noundef nonnull @.str.116, i32 noundef %206, ptr noundef null) #20
  %208 = getelementptr i32, ptr %190, i32 %206
  store i32 %207, ptr %208, align 4
  %209 = add nuw nsw i32 %206, 1
  %210 = icmp eq i32 %209, %179
  br i1 %210, label %211, label %205

211:                                              ; preds = %205, %198, %178, %178, %174, %170
  %212 = getelementptr inbounds %struct.spi_controller, ptr %0, i32 0, i32 3
  %213 = load i16, ptr %212, align 2
  %214 = icmp eq i16 %213, 0
  br i1 %214, label %314, label %215

215:                                              ; preds = %211
  %216 = tail call i32 @device_add(ptr noundef %0) #20
  %217 = icmp slt i32 %216, 0
  br i1 %217, label %314, label %218

218:                                              ; preds = %215
  %219 = getelementptr inbounds %struct.spi_controller, ptr %0, i32 0, i32 22
  %220 = load ptr, ptr %219, align 4
  %221 = icmp eq ptr %220, null
  br i1 %221, label %223, label %222

222:                                              ; preds = %218
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef nonnull %3, ptr noundef nonnull @.str.15) #21
  br label %288

223:                                              ; preds = %218
  %224 = getelementptr inbounds %struct.spi_controller, ptr %0, i32 0, i32 51
  %225 = load ptr, ptr %224, align 4
  %226 = icmp eq ptr %225, null
  %227 = getelementptr inbounds %struct.spi_controller, ptr %0, i32 0, i32 45
  %228 = load ptr, ptr %227, align 4
  br i1 %226, label %229, label %232

229:                                              ; preds = %223
  %230 = icmp eq ptr %228, null
  br i1 %230, label %288, label %231

231:                                              ; preds = %229
  store ptr @spi_queued_transfer, ptr %219, align 4
  br label %236

232:                                              ; preds = %223
  store ptr @spi_queued_transfer, ptr %219, align 4
  %233 = icmp eq ptr %228, null
  br i1 %233, label %234, label %236

234:                                              ; preds = %232
  %235 = getelementptr inbounds %struct.spi_controller, ptr %0, i32 0, i32 45
  store ptr @spi_transfer_one_message, ptr %235, align 4
  br label %236

236:                                              ; preds = %234, %232, %231
  %237 = getelementptr inbounds %struct.spi_controller, ptr %0, i32 0, i32 34
  store i8 0, ptr %237, align 2
  %238 = getelementptr inbounds %struct.spi_controller, ptr %0, i32 0, i32 33
  store i8 0, ptr %238, align 1
  %239 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 3
  %240 = load ptr, ptr %239, align 4
  %241 = icmp eq ptr %240, null
  br i1 %241, label %242, label %244

242:                                              ; preds = %236
  %243 = load ptr, ptr %0, align 4
  br label %244

244:                                              ; preds = %242, %236
  %245 = phi ptr [ %243, %242 ], [ %240, %236 ]
  %246 = tail call ptr (i32, ptr, ...) @kthread_create_worker(i32 noundef 0, ptr noundef %245) #20
  %247 = getelementptr inbounds %struct.spi_controller, ptr %0, i32 0, i32 27
  store ptr %246, ptr %247, align 8
  %248 = icmp ugt ptr %246, inttoptr (i32 -4096 to ptr)
  br i1 %248, label %261, label %249

249:                                              ; preds = %244
  %250 = getelementptr inbounds %struct.spi_controller, ptr %0, i32 0, i32 28
  %251 = getelementptr inbounds %struct.spi_controller, ptr %0, i32 0, i32 28, i32 2
  store i64 0, ptr %251, align 4
  store volatile ptr %250, ptr %250, align 4
  %252 = getelementptr inbounds %struct.spi_controller, ptr %0, i32 0, i32 28, i32 0, i32 1
  store ptr %250, ptr %252, align 4
  %253 = getelementptr inbounds %struct.spi_controller, ptr %0, i32 0, i32 28, i32 1
  store ptr @spi_pump_messages, ptr %253, align 4
  %254 = getelementptr inbounds %struct.spi_controller, ptr %0, i32 0, i32 35
  %255 = load i8, ptr %254, align 1, !range !14
  %256 = icmp eq i8 %255, 0
  br i1 %256, label %264, label %257

257:                                              ; preds = %249
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %0, ptr noundef nonnull @.str.146) #21
  %258 = load ptr, ptr %247, align 8
  %259 = getelementptr inbounds %struct.kthread_worker, ptr %258, i32 0, i32 4
  %260 = load ptr, ptr %259, align 4
  tail call void @sched_set_fifo(ptr noundef %260) #20
  br label %264

261:                                              ; preds = %244
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %0, ptr noundef nonnull @.str.124) #21
  %262 = load ptr, ptr %247, align 8
  %263 = icmp eq ptr %262, null
  br i1 %263, label %264, label %284

264:                                              ; preds = %261, %257, %249
  %265 = getelementptr inbounds %struct.spi_controller, ptr %0, i32 0, i32 26
  store i8 1, ptr %265, align 4
  %266 = getelementptr inbounds %struct.spi_controller, ptr %0, i32 0, i32 29
  %267 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %266) #20
  %268 = load i8, ptr %237, align 2, !range !14
  %269 = icmp eq i8 %268, 0
  br i1 %269, label %270, label %278

270:                                              ; preds = %264
  %271 = load i8, ptr %238, align 1, !range !14
  %272 = icmp eq i8 %271, 0
  br i1 %272, label %273, label %278

273:                                              ; preds = %270
  store i8 1, ptr %237, align 2
  %274 = getelementptr inbounds %struct.spi_controller, ptr %0, i32 0, i32 31
  store ptr null, ptr %274, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %266, i32 noundef %267) #20
  %275 = load ptr, ptr %247, align 8
  %276 = getelementptr inbounds %struct.spi_controller, ptr %0, i32 0, i32 28
  %277 = tail call zeroext i1 @kthread_queue_work(ptr noundef %275, ptr noundef %276) #20
  br label %288

278:                                              ; preds = %270, %264
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %266, i32 noundef %267) #20
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %0, ptr noundef nonnull @.str.119) #21
  %279 = tail call fastcc i32 @spi_stop_queue(ptr noundef %0) #20
  %280 = icmp eq i32 %279, 0
  br i1 %280, label %282, label %281

281:                                              ; preds = %278
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %0, ptr noundef nonnull @.str.143) #21
  br label %286

282:                                              ; preds = %278
  %283 = load ptr, ptr %247, align 8
  tail call void @kthread_destroy_worker(ptr noundef %283) #20
  br label %286

284:                                              ; preds = %261
  %285 = ptrtoint ptr %262 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %0, ptr noundef nonnull @.str.118) #21
  br label %286

286:                                              ; preds = %284, %282, %281
  %287 = phi i32 [ %285, %284 ], [ -16, %281 ], [ -16, %282 ]
  tail call void @device_del(ptr noundef %0) #20
  br label %314

288:                                              ; preds = %273, %229, %222
  %289 = phi i32 [ %216, %222 ], [ %216, %229 ], [ 0, %273 ]
  %290 = getelementptr inbounds %struct.spi_controller, ptr %0, i32 0, i32 59
  store i32 0, ptr %290, align 8
  tail call void @mutex_lock(ptr noundef nonnull @board_lock) #20
  %291 = getelementptr inbounds %struct.spi_controller, ptr %0, i32 0, i32 1
  %292 = load ptr, ptr getelementptr inbounds (%struct.list_head, ptr @spi_controller_list, i32 0, i32 1), align 4
  store ptr %291, ptr getelementptr inbounds (%struct.list_head, ptr @spi_controller_list, i32 0, i32 1), align 4
  store ptr @spi_controller_list, ptr %291, align 4
  %293 = getelementptr inbounds %struct.spi_controller, ptr %0, i32 0, i32 1, i32 1
  store ptr %292, ptr %293, align 4
  store volatile ptr %291, ptr %292, align 4
  %294 = load ptr, ptr @board_list, align 4
  %295 = icmp eq ptr %294, @board_list
  br i1 %295, label %313, label %296

296:                                              ; preds = %310, %288
  %297 = phi ptr [ %311, %310 ], [ %294, %288 ]
  %298 = getelementptr inbounds %struct.boardinfo, ptr %297, i32 0, i32 1
  %299 = load i16, ptr %26, align 8
  %300 = sext i16 %299 to i32
  %301 = getelementptr inbounds %struct.boardinfo, ptr %297, i32 0, i32 1, i32 6
  %302 = load i16, ptr %301, align 4
  %303 = zext i16 %302 to i32
  %304 = icmp eq i32 %300, %303
  br i1 %304, label %305, label %310

305:                                              ; preds = %296
  %306 = tail call ptr @spi_new_device(ptr noundef %0, ptr noundef %298) #20
  %307 = icmp eq ptr %306, null
  br i1 %307, label %308, label %310

308:                                              ; preds = %305
  %309 = load ptr, ptr %2, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %309, ptr noundef nonnull @.str.104, ptr noundef %298) #21
  br label %310

310:                                              ; preds = %308, %305, %296
  %311 = load ptr, ptr %297, align 4
  %312 = icmp eq ptr %311, @board_list
  br i1 %312, label %313, label %296

313:                                              ; preds = %310, %288
  tail call void @mutex_unlock(ptr noundef nonnull @board_lock) #20
  tail call fastcc void @of_register_spi_devices(ptr noundef %0)
  br label %319

314:                                              ; preds = %286, %215, %211, %187, %185, %168, %167, %136, %122, %92, %90
  %315 = phi i32 [ %216, %215 ], [ %287, %286 ], [ %169, %168 ], [ -22, %211 ], [ %179, %185 ], [ -12, %187 ], [ -12, %92 ], [ %88, %90 ], [ -22, %167 ], [ -22, %136 ], [ -12, %122 ]
  tail call void @mutex_lock(ptr noundef nonnull @board_lock) #20
  %316 = load i16, ptr %26, align 8
  %317 = sext i16 %316 to i32
  %318 = tail call ptr @idr_remove(ptr noundef nonnull @spi_master_idr, i32 noundef %317) #20
  tail call void @mutex_unlock(ptr noundef nonnull @board_lock) #20
  br label %319

319:                                              ; preds = %314, %313, %69, %54, %35, %21, %9, %1
  %320 = phi i32 [ %37, %35 ], [ %67, %69 ], [ %315, %314 ], [ %289, %313 ], [ %56, %54 ], [ -19, %1 ], [ -22, %9 ], [ -22, %21 ]
  ret i32 %320
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @idr_alloc(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_alias_get_id(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_alias_get_highest_id(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_set_name(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_add(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @of_register_spi_devices(ptr noundef %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 25
  %3 = load ptr, ptr %2, align 8
  %4 = icmp eq ptr %3, null
  br i1 %4, label %21, label %5

5:                                                ; preds = %1
  %6 = tail call ptr @of_get_next_available_child(ptr noundef nonnull %3, ptr noundef null) #20
  %7 = icmp eq ptr %6, null
  br i1 %7, label %21, label %8

8:                                                ; preds = %17, %5
  %9 = phi ptr [ %19, %17 ], [ %6, %5 ]
  %10 = getelementptr inbounds %struct.device_node, ptr %9, i32 0, i32 10
  %11 = tail call i32 @_test_and_set_bit(i32 noundef 3, ptr noundef %10) #20
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %17

13:                                               ; preds = %8
  %14 = tail call fastcc ptr @of_register_spi_device(ptr noundef %0, ptr noundef nonnull %9)
  %15 = icmp ugt ptr %14, inttoptr (i32 -4096 to ptr)
  br i1 %15, label %16, label %17

16:                                               ; preds = %13
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %0, ptr noundef nonnull @.str.125, ptr noundef nonnull %9) #21
  tail call void @_clear_bit(i32 noundef 3, ptr noundef %10) #20
  br label %17

17:                                               ; preds = %16, %13, %8
  %18 = load ptr, ptr %2, align 8
  %19 = tail call ptr @of_get_next_available_child(ptr noundef %18, ptr noundef nonnull %9) #20
  %20 = icmp eq ptr %19, null
  br i1 %20, label %21, label %8

21:                                               ; preds = %17, %5, %1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @idr_remove(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @devm_spi_register_controller(ptr noundef %0, ptr noundef %1) #0 {
  %3 = tail call i32 @spi_register_controller(ptr noundef %1)
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %9

5:                                                ; preds = %2
  %6 = tail call i32 @devm_add_action(ptr noundef %0, ptr noundef nonnull @devm_spi_unregister, ptr noundef %1) #20
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %9, label %8

8:                                                ; preds = %5
  tail call void @spi_unregister_controller(ptr noundef %1) #20
  br label %9

9:                                                ; preds = %8, %5, %2
  %10 = phi i32 [ %3, %2 ], [ 0, %5 ], [ %6, %8 ]
  ret i32 %10
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @devm_spi_unregister(ptr noundef %0) #0 {
  tail call void @spi_unregister_controller(ptr noundef %0)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @spi_unregister_controller(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.spi_controller, ptr %0, i32 0, i32 2
  %3 = load i16, ptr %2, align 8
  %4 = sext i16 %3 to i32
  %5 = getelementptr inbounds %struct.spi_controller, ptr %0, i32 0, i32 16
  tail call void @mutex_lock(ptr noundef %5) #20
  %6 = tail call i32 @device_for_each_child(ptr noundef %0, ptr noundef null, ptr noundef nonnull @__unregister) #20
  tail call void @mutex_lock(ptr noundef nonnull @board_lock) #20
  %7 = tail call ptr @idr_find(ptr noundef nonnull @spi_master_idr, i32 noundef %4) #20
  tail call void @mutex_unlock(ptr noundef nonnull @board_lock) #20
  %8 = getelementptr inbounds %struct.spi_controller, ptr %0, i32 0, i32 26
  %9 = load i8, ptr %8, align 4, !range !14
  %10 = icmp eq i8 %9, 0
  br i1 %10, label %18, label %11

11:                                               ; preds = %1
  %12 = tail call fastcc i32 @spi_stop_queue(ptr noundef %0) #20
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %17

14:                                               ; preds = %11
  %15 = getelementptr inbounds %struct.spi_controller, ptr %0, i32 0, i32 27
  %16 = load ptr, ptr %15, align 8
  tail call void @kthread_destroy_worker(ptr noundef %16) #20
  br label %18

17:                                               ; preds = %11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %0, ptr noundef nonnull @.str.143) #21
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %0, ptr noundef nonnull @.str.16) #21
  br label %18

18:                                               ; preds = %17, %14, %1
  tail call void @mutex_lock(ptr noundef nonnull @board_lock) #20
  %19 = getelementptr inbounds %struct.spi_controller, ptr %0, i32 0, i32 1
  %20 = getelementptr inbounds %struct.spi_controller, ptr %0, i32 0, i32 1, i32 1
  %21 = load ptr, ptr %20, align 4
  %22 = load ptr, ptr %19, align 4
  %23 = getelementptr inbounds %struct.list_head, ptr %22, i32 0, i32 1
  store ptr %21, ptr %23, align 4
  store volatile ptr %22, ptr %21, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %19, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %20, align 4
  tail call void @mutex_unlock(ptr noundef nonnull @board_lock) #20
  tail call void @device_del(ptr noundef %0) #20
  tail call void @mutex_lock(ptr noundef nonnull @board_lock) #20
  %24 = icmp eq ptr %7, %0
  br i1 %24, label %25, label %27

25:                                               ; preds = %18
  %26 = tail call ptr @idr_remove(ptr noundef nonnull @spi_master_idr, i32 noundef %4) #20
  br label %27

27:                                               ; preds = %25, %18
  tail call void @mutex_unlock(ptr noundef nonnull @board_lock) #20
  tail call void @mutex_unlock(ptr noundef %5) #20
  %28 = getelementptr inbounds %struct.spi_controller, ptr %0, i32 0, i32 11
  %29 = load i8, ptr %28, align 2, !range !14
  %30 = icmp eq i8 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %27
  tail call void @put_device(ptr noundef %0) #20
  br label %32

32:                                               ; preds = %31, %27
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_for_each_child(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @__unregister(ptr noundef %0, ptr nocapture noundef readnone %1) #0 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %19, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 25
  %6 = load ptr, ptr %5, align 8
  %7 = icmp eq ptr %6, null
  br i1 %7, label %11, label %8

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.device_node, ptr %6, i32 0, i32 10
  tail call void @_clear_bit(i32 noundef 3, ptr noundef %9) #20
  %10 = load ptr, ptr %5, align 8
  tail call void @of_node_put(ptr noundef %10) #20
  br label %11

11:                                               ; preds = %8, %4
  tail call void @device_remove_software_node(ptr noundef nonnull %0) #20
  tail call void @device_del(ptr noundef nonnull %0) #20
  %12 = getelementptr inbounds %struct.spi_device, ptr %0, i32 0, i32 1
  %13 = load ptr, ptr %12, align 8
  %14 = getelementptr inbounds %struct.spi_controller, ptr %13, i32 0, i32 23
  %15 = load ptr, ptr %14, align 8
  %16 = icmp eq ptr %15, null
  br i1 %16, label %18, label %17

17:                                               ; preds = %11
  tail call void %15(ptr noundef nonnull %0) #20
  br label %18

18:                                               ; preds = %17, %11
  tail call void @put_device(ptr noundef nonnull %0) #20
  br label %19

19:                                               ; preds = %18, %2
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @idr_find(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @spi_controller_suspend(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.spi_controller, ptr %0, i32 0, i32 26
  %3 = load i8, ptr %2, align 4, !range !14
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %9, label %5

5:                                                ; preds = %1
  %6 = tail call fastcc i32 @spi_stop_queue(ptr noundef %0)
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %9, label %8

8:                                                ; preds = %5
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %0, ptr noundef nonnull @.str.17) #21
  br label %9

9:                                                ; preds = %8, %5, %1
  %10 = phi i32 [ 0, %1 ], [ %6, %8 ], [ 0, %5 ]
  ret i32 %10
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @spi_stop_queue(ptr noundef %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.spi_controller, ptr %0, i32 0, i32 29
  %3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %2) #20
  %4 = getelementptr inbounds %struct.spi_controller, ptr %0, i32 0, i32 30
  %5 = getelementptr inbounds %struct.spi_controller, ptr %0, i32 0, i32 33
  br label %6

6:                                                ; preds = %18, %1
  %7 = phi i32 [ 500, %1 ], [ %19, %18 ]
  %8 = phi i32 [ %3, %1 ], [ %20, %18 ]
  %9 = load volatile ptr, ptr %4, align 4
  %10 = icmp eq ptr %9, %4
  br i1 %10, label %11, label %16

11:                                               ; preds = %6
  %12 = load i8, ptr %5, align 1, !range !14
  %13 = icmp eq i8 %12, 0
  %14 = icmp eq i32 %7, 0
  %15 = select i1 %13, i1 true, i1 %14
  br i1 %15, label %21, label %18

16:                                               ; preds = %6
  %17 = icmp eq i32 %7, 0
  br i1 %17, label %21, label %18

18:                                               ; preds = %16, %11
  %19 = add i32 %7, -1
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %2, i32 noundef %8) #20
  tail call void @usleep_range_state(i32 noundef 10000, i32 noundef 11000, i32 noundef 2) #20
  %20 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %2) #20
  br label %6

21:                                               ; preds = %16, %11
  %22 = load volatile ptr, ptr %4, align 4
  %23 = icmp eq ptr %22, %4
  br i1 %23, label %24, label %29

24:                                               ; preds = %21
  %25 = load i8, ptr %5, align 1, !range !14
  %26 = icmp eq i8 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %24
  %28 = getelementptr inbounds %struct.spi_controller, ptr %0, i32 0, i32 34
  store i8 0, ptr %28, align 2
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %2, i32 noundef %8) #20
  br label %30

29:                                               ; preds = %24, %21
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %2, i32 noundef %8) #20
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %0, ptr noundef nonnull @.str.144) #21
  br label %30

30:                                               ; preds = %29, %27
  %31 = phi i32 [ 0, %27 ], [ -16, %29 ]
  ret i32 %31
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @spi_controller_resume(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.spi_controller, ptr %0, i32 0, i32 26
  %3 = load i8, ptr %2, align 4, !range !14
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %22, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.spi_controller, ptr %0, i32 0, i32 29
  %7 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %6) #20
  %8 = getelementptr inbounds %struct.spi_controller, ptr %0, i32 0, i32 34
  %9 = load i8, ptr %8, align 2, !range !14
  %10 = icmp eq i8 %9, 0
  br i1 %10, label %11, label %21

11:                                               ; preds = %5
  %12 = getelementptr inbounds %struct.spi_controller, ptr %0, i32 0, i32 33
  %13 = load i8, ptr %12, align 1, !range !14
  %14 = icmp eq i8 %13, 0
  br i1 %14, label %15, label %21

15:                                               ; preds = %11
  store i8 1, ptr %8, align 2
  %16 = getelementptr inbounds %struct.spi_controller, ptr %0, i32 0, i32 31
  store ptr null, ptr %16, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %6, i32 noundef %7) #20
  %17 = getelementptr inbounds %struct.spi_controller, ptr %0, i32 0, i32 27
  %18 = load ptr, ptr %17, align 8
  %19 = getelementptr inbounds %struct.spi_controller, ptr %0, i32 0, i32 28
  %20 = tail call zeroext i1 @kthread_queue_work(ptr noundef %18, ptr noundef %19) #20
  br label %22

21:                                               ; preds = %11, %5
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %6, i32 noundef %7) #20
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %0, ptr noundef nonnull @.str.18) #21
  br label %22

22:                                               ; preds = %21, %15, %1
  %23 = phi i32 [ 0, %1 ], [ -16, %21 ], [ 0, %15 ]
  ret i32 %23
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @spi_split_transfers_maxsize(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) #0 {
  %5 = load ptr, ptr %1, align 4
  %6 = icmp eq ptr %5, %1
  br i1 %6, label %160, label %7

7:                                                ; preds = %4
  %8 = add i32 %2, -1
  %9 = getelementptr inbounds %struct.spi_message, ptr %1, i32 0, i32 1
  %10 = or i32 %3, 256
  %11 = getelementptr inbounds %struct.spi_message, ptr %1, i32 0, i32 10
  %12 = getelementptr inbounds %struct.spi_message, ptr %1, i32 0, i32 10, i32 1
  %13 = getelementptr inbounds %struct.spi_controller, ptr %0, i32 0, i32 59
  %14 = getelementptr inbounds %struct.spi_controller, ptr %0, i32 0, i32 59, i32 12
  br label %15

15:                                               ; preds = %152, %7
  %16 = phi ptr [ %5, %7 ], [ %155, %152 ]
  %17 = getelementptr i8, ptr %16, i32 -84
  %18 = getelementptr i8, ptr %16, i32 -76
  %19 = load i32, ptr %18, align 4
  %20 = icmp ugt i32 %19, %2
  br i1 %20, label %21, label %152

21:                                               ; preds = %15
  %22 = add i32 %8, %19
  %23 = udiv i32 %22, %2
  %24 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %23, i32 96) #20
  %25 = extractvalue { i32, i1 } %24, 1
  %26 = extractvalue { i32, i1 } %24, 0
  %27 = add i32 %26, 40
  %28 = select i1 %25, i32 15, i32 %27
  %29 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %28, i32 noundef %10) #23
  %30 = icmp eq ptr %29, null
  br i1 %30, label %157, label %31

31:                                               ; preds = %21
  store volatile ptr %29, ptr %29, align 64
  %32 = getelementptr %struct.list_head, ptr %29, i32 0, i32 1
  store ptr %29, ptr %32, align 4
  %33 = getelementptr inbounds %struct.spi_res, ptr %29, i32 0, i32 1
  store ptr @__spi_replace_transfers_release, ptr %33, align 8
  %34 = getelementptr inbounds %struct.spi_res, ptr %29, i32 0, i32 2
  store ptr null, ptr %34, align 16
  %35 = getelementptr inbounds %struct.spi_res, ptr %29, i32 1, i32 1
  store volatile ptr %35, ptr %35, align 8
  %36 = getelementptr inbounds %struct.list_head, ptr %35, i32 0, i32 1
  store ptr %35, ptr %36, align 4
  %37 = getelementptr i8, ptr %16, i32 4
  %38 = load ptr, ptr %37, align 4
  %39 = getelementptr inbounds %struct.spi_res, ptr %29, i32 2
  store ptr %38, ptr %39, align 32
  %40 = load ptr, ptr %38, align 4
  %41 = icmp eq ptr %40, %1
  br i1 %41, label %42, label %57

42:                                               ; preds = %31
  %43 = load ptr, ptr %9, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %43, ptr noundef nonnull @.str.145) #21
  %44 = load ptr, ptr %39, align 32
  %45 = load volatile ptr, ptr %35, align 8
  %46 = icmp eq ptr %45, %35
  br i1 %46, label %52, label %47

47:                                               ; preds = %42
  %48 = load ptr, ptr %44, align 4
  %49 = load ptr, ptr %36, align 4
  %50 = getelementptr inbounds %struct.list_head, ptr %45, i32 0, i32 1
  store ptr %44, ptr %50, align 4
  store ptr %45, ptr %44, align 4
  store ptr %48, ptr %49, align 4
  %51 = getelementptr inbounds %struct.list_head, ptr %48, i32 0, i32 1
  store ptr %49, ptr %51, align 4
  br label %52

52:                                               ; preds = %47, %42
  %53 = load volatile ptr, ptr %29, align 64
  %54 = icmp eq ptr %53, %29
  br i1 %54, label %56, label %55, !prof !10

55:                                               ; preds = %52
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 893, i32 noundef 9, ptr noundef null) #20
  br label %56

56:                                               ; preds = %55, %52
  tail call void @kfree(ptr noundef nonnull %29) #20
  br label %157

57:                                               ; preds = %31
  %58 = getelementptr inbounds %struct.list_head, ptr %40, i32 0, i32 1
  %59 = load ptr, ptr %58, align 4
  %60 = load ptr, ptr %40, align 4
  %61 = getelementptr inbounds %struct.list_head, ptr %60, i32 0, i32 1
  store ptr %59, ptr %61, align 4
  store volatile ptr %60, ptr %59, align 4
  %62 = load ptr, ptr %36, align 4
  store ptr %40, ptr %36, align 4
  store ptr %35, ptr %40, align 4
  store ptr %62, ptr %58, align 4
  store volatile ptr %40, ptr %62, align 4
  %63 = icmp ult i32 %22, %2
  br i1 %63, label %89, label %64

64:                                               ; preds = %57
  %65 = add i32 %23, -1
  %66 = getelementptr %struct.spi_replaced_transfers, ptr %34, i32 0, i32 5, i32 %65
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 8 dereferenceable(96) %66, ptr noundef align 4 dereferenceable(96) %17, i32 96, i1 false) #20
  %67 = getelementptr %struct.spi_replaced_transfers, ptr %34, i32 0, i32 5, i32 %65, i32 18
  %68 = load ptr, ptr %39, align 32
  %69 = load ptr, ptr %68, align 4
  %70 = getelementptr inbounds %struct.list_head, ptr %69, i32 0, i32 1
  store ptr %67, ptr %70, align 4
  store ptr %69, ptr %67, align 4
  %71 = getelementptr %struct.spi_replaced_transfers, ptr %34, i32 0, i32 5, i32 %65, i32 18, i32 1
  store ptr %68, ptr %71, align 32
  store volatile ptr %67, ptr %68, align 4
  %72 = icmp eq i32 %23, 1
  br i1 %72, label %89, label %73

73:                                               ; preds = %73, %64
  %74 = phi i32 [ %87, %73 ], [ 1, %64 ]
  %75 = xor i32 %74, -1
  %76 = add i32 %23, %75
  %77 = getelementptr %struct.spi_replaced_transfers, ptr %34, i32 0, i32 5, i32 %76
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 8 dereferenceable(96) %77, ptr noundef align 4 dereferenceable(96) %17, i32 96, i1 false) #20
  %78 = getelementptr %struct.spi_replaced_transfers, ptr %34, i32 0, i32 5, i32 %76, i32 18
  %79 = load ptr, ptr %39, align 32
  %80 = load ptr, ptr %79, align 4
  %81 = getelementptr inbounds %struct.list_head, ptr %80, i32 0, i32 1
  store ptr %78, ptr %81, align 4
  store ptr %80, ptr %78, align 4
  %82 = getelementptr %struct.spi_replaced_transfers, ptr %34, i32 0, i32 5, i32 %76, i32 18, i32 1
  store ptr %79, ptr %82, align 32
  store volatile ptr %78, ptr %79, align 4
  %83 = getelementptr %struct.spi_replaced_transfers, ptr %34, i32 0, i32 5, i32 %76, i32 7
  %84 = load i8, ptr %83, align 4
  %85 = and i8 %84, -3
  store i8 %85, ptr %83, align 4
  %86 = getelementptr %struct.spi_replaced_transfers, ptr %34, i32 0, i32 5, i32 %76, i32 9
  store i16 0, ptr %86, align 2
  %87 = add nuw i32 %74, 1
  %88 = icmp eq i32 %87, %23
  br i1 %88, label %89, label %73, !llvm.loop !30

89:                                               ; preds = %73, %64, %57
  %90 = getelementptr inbounds %struct.spi_res, ptr %29, i32 2, i32 0, i32 1
  store i32 %23, ptr %90, align 4
  %91 = load volatile ptr, ptr %29, align 64
  %92 = icmp eq ptr %91, %29
  br i1 %92, label %94, label %93, !prof !10

93:                                               ; preds = %89
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 906, i32 noundef 9, ptr noundef null) #20
  br label %94

94:                                               ; preds = %93, %89
  %95 = load ptr, ptr %12, align 4
  store ptr %29, ptr %12, align 4
  store ptr %11, ptr %29, align 64
  store ptr %95, ptr %32, align 4
  store volatile ptr %29, ptr %95, align 4
  %96 = icmp ugt ptr %34, inttoptr (i32 -4096 to ptr)
  br i1 %96, label %157, label %97

97:                                               ; preds = %94
  %98 = getelementptr inbounds %struct.spi_res, ptr %29, i32 2, i32 1
  %99 = load i32, ptr %18, align 4
  %100 = tail call i32 @llvm.umin.i32(i32 %99, i32 %2) #20
  %101 = getelementptr inbounds %struct.spi_res, ptr %29, i32 3
  store i32 %100, ptr %101, align 16
  %102 = icmp ugt i32 %23, 1
  br i1 %102, label %103, label %137

103:                                              ; preds = %129, %97
  %104 = phi i32 [ %134, %129 ], [ %2, %97 ]
  %105 = phi i32 [ %135, %129 ], [ 1, %97 ]
  %106 = getelementptr %struct.spi_transfer, ptr %98, i32 %105
  %107 = getelementptr %struct.spi_transfer, ptr %98, i32 %105, i32 1
  %108 = load ptr, ptr %107, align 4
  %109 = icmp eq ptr %108, null
  br i1 %109, label %112, label %110

110:                                              ; preds = %103
  %111 = getelementptr i8, ptr %108, i32 %104
  store ptr %111, ptr %107, align 4
  br label %112

112:                                              ; preds = %110, %103
  %113 = getelementptr %struct.spi_transfer, ptr %98, i32 %105, i32 4
  %114 = load i32, ptr %113, align 8
  %115 = icmp eq i32 %114, 0
  br i1 %115, label %118, label %116

116:                                              ; preds = %112
  %117 = add i32 %114, %104
  store i32 %117, ptr %113, align 8
  br label %118

118:                                              ; preds = %116, %112
  %119 = load ptr, ptr %106, align 8
  %120 = icmp eq ptr %119, null
  br i1 %120, label %123, label %121

121:                                              ; preds = %118
  %122 = getelementptr i8, ptr %119, i32 %104
  store ptr %122, ptr %106, align 8
  br label %123

123:                                              ; preds = %121, %118
  %124 = getelementptr %struct.spi_transfer, ptr %98, i32 %105, i32 3
  %125 = load i32, ptr %124, align 4
  %126 = icmp eq i32 %125, 0
  br i1 %126, label %129, label %127

127:                                              ; preds = %123
  %128 = add i32 %125, %104
  store i32 %128, ptr %124, align 4
  br label %129

129:                                              ; preds = %127, %123
  %130 = getelementptr %struct.spi_transfer, ptr %98, i32 %105, i32 2
  %131 = load i32, ptr %130, align 16
  %132 = sub i32 %131, %104
  %133 = tail call i32 @llvm.umin.i32(i32 %132, i32 %2) #20
  store i32 %133, ptr %130, align 16
  %134 = add i32 %104, %2
  %135 = add nuw i32 %105, 1
  %136 = icmp eq i32 %135, %23
  br i1 %136, label %137, label %103

137:                                              ; preds = %129, %97
  %138 = add i32 %23, -1
  %139 = getelementptr %struct.spi_transfer, ptr %98, i32 %138
  %140 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %13) #20
  %141 = load i32, ptr %14, align 4
  %142 = add i32 %141, 1
  store i32 %142, ptr %14, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %13, i32 noundef %140) #20
  %143 = load ptr, ptr %9, align 4
  %144 = getelementptr inbounds %struct.spi_device, ptr %143, i32 0, i32 19
  %145 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %144) #20
  %146 = load ptr, ptr %9, align 4
  %147 = getelementptr inbounds %struct.spi_device, ptr %146, i32 0, i32 19, i32 12
  %148 = load i32, ptr %147, align 4
  %149 = add i32 %148, 1
  store i32 %149, ptr %147, align 4
  %150 = load ptr, ptr %9, align 4
  %151 = getelementptr inbounds %struct.spi_device, ptr %150, i32 0, i32 19
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %151, i32 noundef %145) #20
  br label %152

152:                                              ; preds = %137, %15
  %153 = phi ptr [ %17, %15 ], [ %139, %137 ]
  %154 = getelementptr inbounds %struct.spi_transfer, ptr %153, i32 0, i32 18
  %155 = load ptr, ptr %154, align 4
  %156 = icmp eq ptr %155, %1
  br i1 %156, label %160, label %15

157:                                              ; preds = %94, %56, %21
  %158 = phi ptr [ inttoptr (i32 -22 to ptr), %56 ], [ inttoptr (i32 -12 to ptr), %21 ], [ %34, %94 ]
  %159 = ptrtoint ptr %158 to i32
  br label %160

160:                                              ; preds = %157, %152, %4
  %161 = phi i32 [ %159, %157 ], [ 0, %4 ], [ 0, %152 ]
  ret i32 %161
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @spi_setup(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.spi_device, ptr %0, i32 0, i32 7
  %3 = load i32, ptr %2, align 8
  %4 = and i32 %3, -2147482880
  %5 = tail call i32 @__sw_hweight32(i32 noundef %4) #20
  %6 = icmp ugt i32 %5, 1
  br i1 %6, label %12, label %7

7:                                                ; preds = %1
  %8 = load i32, ptr %2, align 8
  %9 = and i32 %8, 1073744896
  %10 = tail call i32 @__sw_hweight32(i32 noundef %9) #20
  %11 = icmp ugt i32 %10, 1
  br i1 %11, label %12, label %13

12:                                               ; preds = %7, %1
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %0, ptr noundef nonnull @.str.19) #21
  br label %175

13:                                               ; preds = %7
  %14 = load i32, ptr %2, align 8
  %15 = and i32 %14, 16
  %16 = icmp eq i32 %15, 0
  %17 = and i32 %14, 28416
  %18 = icmp eq i32 %17, 0
  %19 = or i1 %16, %18
  br i1 %19, label %20, label %175

20:                                               ; preds = %13
  %21 = getelementptr inbounds %struct.spi_device, ptr %0, i32 0, i32 1
  %22 = load ptr, ptr %21, align 8
  %23 = getelementptr inbounds %struct.spi_controller, ptr %22, i32 0, i32 5
  %24 = load i32, ptr %23, align 8
  %25 = and i32 %24, 1073737727
  %26 = xor i32 %25, 1073737727
  %27 = and i32 %26, %14
  %28 = getelementptr inbounds %struct.spi_device, ptr %0, i32 0, i32 13
  %29 = load i32, ptr %28, align 4
  %30 = icmp ult i32 %29, 2048
  %31 = and i32 %27, 1073737723
  %32 = select i1 %30, i32 %31, i32 %27
  %33 = and i32 %32, 28416
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %40, label %35

35:                                               ; preds = %20
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %0, ptr noundef nonnull @.str.20, i32 noundef %33) #21
  %36 = xor i32 %33, -1
  %37 = load i32, ptr %2, align 8
  %38 = and i32 %37, %36
  store i32 %38, ptr %2, align 8
  %39 = and i32 %32, 1073709311
  br label %40

40:                                               ; preds = %35, %20
  %41 = phi i32 [ %39, %35 ], [ %32, %20 ]
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %44, label %43

43:                                               ; preds = %40
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %0, ptr noundef nonnull @.str.21, i32 noundef %41) #21
  br label %175

44:                                               ; preds = %40
  %45 = getelementptr inbounds %struct.spi_device, ptr %0, i32 0, i32 5
  %46 = load i8, ptr %45, align 1
  %47 = icmp eq i8 %46, 0
  br i1 %47, label %53, label %48

48:                                               ; preds = %44
  %49 = load ptr, ptr %21, align 8
  %50 = getelementptr inbounds %struct.spi_controller, ptr %49, i32 0, i32 7
  %51 = load i32, ptr %50, align 8
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %69, label %58

53:                                               ; preds = %44
  store i8 8, ptr %45, align 1
  %54 = load ptr, ptr %21, align 8
  %55 = getelementptr inbounds %struct.spi_controller, ptr %54, i32 0, i32 7
  %56 = load i32, ptr %55, align 8
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %69, label %60

58:                                               ; preds = %48
  %59 = icmp ugt i8 %46, 32
  br i1 %59, label %175, label %60

60:                                               ; preds = %58, %53
  %61 = phi i8 [ %46, %58 ], [ 8, %53 ]
  %62 = phi ptr [ %49, %58 ], [ %54, %53 ]
  %63 = phi i32 [ %51, %58 ], [ %56, %53 ]
  %64 = zext i8 %61 to i32
  %65 = add nsw i32 %64, -1
  %66 = shl nuw i32 1, %65
  %67 = and i32 %66, %63
  %68 = icmp eq i32 %67, 0
  br i1 %68, label %175, label %69

69:                                               ; preds = %60, %53, %48
  %70 = phi ptr [ %54, %53 ], [ %62, %60 ], [ %49, %48 ]
  %71 = getelementptr inbounds %struct.spi_controller, ptr %70, i32 0, i32 9
  %72 = load i32, ptr %71, align 8
  %73 = icmp eq i32 %72, 0
  br i1 %73, label %81, label %74

74:                                               ; preds = %69
  %75 = getelementptr inbounds %struct.spi_device, ptr %0, i32 0, i32 3
  %76 = load i32, ptr %75, align 8
  %77 = icmp eq i32 %76, 0
  %78 = icmp ugt i32 %76, %72
  %79 = select i1 %77, i1 true, i1 %78
  br i1 %79, label %80, label %81

80:                                               ; preds = %74
  store i32 %72, ptr %75, align 8
  br label %81

81:                                               ; preds = %80, %74, %69
  %82 = getelementptr inbounds %struct.spi_controller, ptr %70, i32 0, i32 15
  tail call void @mutex_lock(ptr noundef %82) #20
  %83 = load ptr, ptr %21, align 8
  %84 = getelementptr inbounds %struct.spi_controller, ptr %83, i32 0, i32 20
  %85 = load ptr, ptr %84, align 4
  %86 = icmp eq ptr %85, null
  br i1 %86, label %94, label %87

87:                                               ; preds = %81
  %88 = tail call i32 %85(ptr noundef %0) #20
  %89 = icmp eq i32 %88, 0
  %90 = load ptr, ptr %21, align 8
  br i1 %89, label %94, label %91

91:                                               ; preds = %87
  %92 = getelementptr inbounds %struct.spi_controller, ptr %90, i32 0, i32 15
  tail call void @mutex_unlock(ptr noundef %92) #20
  %93 = load ptr, ptr %21, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %93, ptr noundef nonnull @.str.22, i32 noundef %88) #21
  br label %175

94:                                               ; preds = %87, %81
  %95 = phi ptr [ %83, %81 ], [ %90, %87 ]
  %96 = getelementptr inbounds %struct.spi_controller, ptr %95, i32 0, i32 36
  %97 = load i8, ptr %96, align 4, !range !14
  %98 = icmp eq i8 %97, 0
  br i1 %98, label %131, label %99

99:                                               ; preds = %94
  %100 = getelementptr inbounds %struct.spi_controller, ptr %95, i32 0, i32 50
  %101 = load ptr, ptr %100, align 8
  %102 = icmp eq ptr %101, null
  br i1 %102, label %131, label %103

103:                                              ; preds = %99
  %104 = getelementptr inbounds %struct.device, ptr %95, i32 0, i32 1
  %105 = load ptr, ptr %104, align 4
  %106 = tail call i32 @__pm_runtime_resume(ptr noundef %105, i32 noundef 4) #20
  %107 = icmp slt i32 %106, 0
  br i1 %107, label %108, label %121

108:                                              ; preds = %103
  %109 = load ptr, ptr %21, align 8
  %110 = getelementptr inbounds %struct.spi_controller, ptr %109, i32 0, i32 15
  tail call void @mutex_unlock(ptr noundef %110) #20
  %111 = load ptr, ptr %21, align 8
  %112 = getelementptr inbounds %struct.device, ptr %111, i32 0, i32 1
  %113 = load ptr, ptr %112, align 4
  %114 = getelementptr inbounds %struct.device, ptr %113, i32 0, i32 11, i32 13
  tail call void asm sideeffect "dmb ish", "~{memory}"() #20, !srcloc !23
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %114) #20, !srcloc !24
  %115 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %114, ptr %114, i32 0, i32 -1, ptr elementtype(i32) %114) #20, !srcloc !25
  %116 = extractvalue { i32, i32, i32 } %115, 0
  %117 = icmp eq i32 %116, 0
  br i1 %117, label %119, label %118

118:                                              ; preds = %108
  tail call void asm sideeffect "dmb ish", "~{memory}"() #20, !srcloc !26
  br label %119

119:                                              ; preds = %118, %108
  %120 = load ptr, ptr %21, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %120, ptr noundef nonnull @.str.23, i32 noundef %106) #21
  br label %175

121:                                              ; preds = %103
  tail call fastcc void @spi_set_cs(ptr noundef %0, i1 noundef zeroext false, i1 noundef zeroext true)
  %122 = load ptr, ptr %21, align 8
  %123 = getelementptr inbounds %struct.device, ptr %122, i32 0, i32 1
  %124 = load ptr, ptr %123, align 4
  %125 = tail call i64 @ktime_get_mono_fast_ns() #20
  %126 = getelementptr inbounds %struct.device, ptr %124, i32 0, i32 11, i32 22
  store volatile i64 %125, ptr %126, align 8
  %127 = load ptr, ptr %21, align 8
  %128 = getelementptr inbounds %struct.device, ptr %127, i32 0, i32 1
  %129 = load ptr, ptr %128, align 4
  %130 = tail call i32 @__pm_runtime_suspend(ptr noundef %129, i32 noundef 13) #20
  br label %132

131:                                              ; preds = %99, %94
  tail call fastcc void @spi_set_cs(ptr noundef %0, i1 noundef zeroext false, i1 noundef zeroext true)
  br label %132

132:                                              ; preds = %131, %121
  %133 = load ptr, ptr %21, align 8
  %134 = getelementptr inbounds %struct.spi_controller, ptr %133, i32 0, i32 15
  tail call void @mutex_unlock(ptr noundef %134) #20
  %135 = getelementptr inbounds %struct.spi_device, ptr %0, i32 0, i32 6
  %136 = load i8, ptr %135, align 2, !range !14
  %137 = icmp eq i8 %136, 0
  br i1 %137, label %149, label %138

138:                                              ; preds = %132
  %139 = load ptr, ptr %21, align 8
  %140 = getelementptr inbounds %struct.spi_controller, ptr %139, i32 0, i32 35
  %141 = load i8, ptr %140, align 1, !range !14
  %142 = icmp eq i8 %141, 0
  br i1 %142, label %143, label %149

143:                                              ; preds = %138
  store i8 1, ptr %140, align 1
  %144 = load ptr, ptr %21, align 8
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %144, ptr noundef nonnull @.str.146) #21
  %145 = getelementptr inbounds %struct.spi_controller, ptr %144, i32 0, i32 27
  %146 = load ptr, ptr %145, align 8
  %147 = getelementptr inbounds %struct.kthread_worker, ptr %146, i32 0, i32 4
  %148 = load ptr, ptr %147, align 4
  tail call void @sched_set_fifo(ptr noundef %148) #20
  br label %149

149:                                              ; preds = %143, %138, %132
  %150 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_spi_setup, i32 0, i32 1), align 4
  %151 = icmp sgt i32 %150, 0
  br i1 %151, label %152, label %175

152:                                              ; preds = %149
  %153 = tail call ptr @llvm.thread.pointer() #20
  %154 = getelementptr inbounds %struct.thread_info, ptr %153, i32 0, i32 2
  %155 = load i32, ptr %154, align 8
  %156 = lshr i32 %155, 5
  %157 = getelementptr i32, ptr @__cpu_online_mask, i32 %156
  %158 = load volatile i32, ptr %157, align 4
  %159 = and i32 %155, 31
  %160 = shl nuw i32 1, %159
  %161 = and i32 %160, %158
  %162 = icmp eq i32 %161, 0
  br i1 %162, label %175, label %163

163:                                              ; preds = %152
  tail call void asm sideeffect "", "~{memory}"() #20, !srcloc !32
  %164 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_spi_setup, i32 0, i32 7), align 4
  %165 = icmp eq ptr %164, null
  br i1 %165, label %174, label %166

166:                                              ; preds = %166, %163
  %167 = phi ptr [ %171, %166 ], [ %164, %163 ]
  %168 = load volatile ptr, ptr %167, align 4
  %169 = getelementptr inbounds %struct.tracepoint_func, ptr %167, i32 0, i32 1
  %170 = load ptr, ptr %169, align 4
  tail call void %168(ptr noundef %170, ptr noundef %0, i32 noundef 0) #20
  %171 = getelementptr %struct.tracepoint_func, ptr %167, i32 1
  %172 = load ptr, ptr %171, align 4
  %173 = icmp eq ptr %172, null
  br i1 %173, label %174, label %166

174:                                              ; preds = %166, %163
  tail call void asm sideeffect "", "~{memory}"() #20, !srcloc !33
  br label %175

175:                                              ; preds = %174, %152, %149, %119, %91, %60, %58, %43, %13, %12
  %176 = phi i32 [ -22, %12 ], [ -22, %43 ], [ %88, %91 ], [ %106, %119 ], [ -22, %13 ], [ 0, %149 ], [ 0, %152 ], [ 0, %174 ], [ -22, %58 ], [ -22, %60 ]
  ret i32 %176
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @spi_set_cs(ptr noundef %0, i1 noundef zeroext %1, i1 noundef zeroext %2) unnamed_addr #0 {
  %4 = zext i1 %1 to i8
  br i1 %2, label %19, label %5

5:                                                ; preds = %3
  %6 = getelementptr inbounds %struct.spi_device, ptr %0, i32 0, i32 1
  %7 = load ptr, ptr %6, align 8
  %8 = getelementptr inbounds %struct.spi_controller, ptr %7, i32 0, i32 39
  %9 = load i8, ptr %8, align 1, !range !14
  %10 = icmp eq i8 %9, %4
  br i1 %10, label %11, label %19

11:                                               ; preds = %5
  %12 = getelementptr inbounds %struct.spi_controller, ptr %7, i32 0, i32 40
  %13 = load i8, ptr %12, align 8, !range !14
  %14 = zext i8 %13 to i32
  %15 = getelementptr inbounds %struct.spi_device, ptr %0, i32 0, i32 7
  %16 = load i32, ptr %15, align 8
  %17 = and i32 %16, 4
  %18 = icmp eq i32 %17, %14
  br i1 %18, label %205, label %19

19:                                               ; preds = %11, %5, %3
  %20 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_spi_set_cs, i32 0, i32 1), align 4
  %21 = icmp sgt i32 %20, 0
  br i1 %21, label %22, label %45

22:                                               ; preds = %19
  %23 = tail call ptr @llvm.thread.pointer() #20
  %24 = getelementptr inbounds %struct.thread_info, ptr %23, i32 0, i32 2
  %25 = load i32, ptr %24, align 8
  %26 = lshr i32 %25, 5
  %27 = getelementptr i32, ptr @__cpu_online_mask, i32 %26
  %28 = load volatile i32, ptr %27, align 4
  %29 = and i32 %25, 31
  %30 = shl nuw i32 1, %29
  %31 = and i32 %30, %28
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %45, label %33

33:                                               ; preds = %22
  tail call void asm sideeffect "", "~{memory}"() #20, !srcloc !34
  %34 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_spi_set_cs, i32 0, i32 7), align 4
  %35 = icmp eq ptr %34, null
  br i1 %35, label %44, label %36

36:                                               ; preds = %36, %33
  %37 = phi ptr [ %41, %36 ], [ %34, %33 ]
  %38 = load volatile ptr, ptr %37, align 4
  %39 = getelementptr inbounds %struct.tracepoint_func, ptr %37, i32 0, i32 1
  %40 = load ptr, ptr %39, align 4
  tail call void %38(ptr noundef %40, ptr noundef %0, i1 noundef zeroext %1) #20
  %41 = getelementptr %struct.tracepoint_func, ptr %37, i32 1
  %42 = load ptr, ptr %41, align 4
  %43 = icmp eq ptr %42, null
  br i1 %43, label %44, label %36

44:                                               ; preds = %36, %33
  tail call void asm sideeffect "", "~{memory}"() #20, !srcloc !35
  br label %45

45:                                               ; preds = %44, %22, %19
  %46 = getelementptr inbounds %struct.spi_device, ptr %0, i32 0, i32 1
  %47 = load ptr, ptr %46, align 8
  %48 = getelementptr inbounds %struct.spi_controller, ptr %47, i32 0, i32 39
  store i8 %4, ptr %48, align 1
  %49 = getelementptr inbounds %struct.spi_device, ptr %0, i32 0, i32 7
  %50 = load i32, ptr %49, align 8
  %51 = load ptr, ptr %46, align 8
  %52 = getelementptr inbounds %struct.spi_controller, ptr %51, i32 0, i32 40
  %53 = trunc i32 %50 to i8
  %54 = lshr i8 %53, 2
  %55 = and i8 %54, 1
  store i8 %55, ptr %52, align 8
  %56 = getelementptr inbounds %struct.spi_device, ptr %0, i32 0, i32 14
  %57 = load ptr, ptr %56, align 8
  %58 = icmp eq ptr %57, null
  br i1 %58, label %59, label %69

59:                                               ; preds = %45
  %60 = getelementptr inbounds %struct.spi_device, ptr %0, i32 0, i32 13
  %61 = load i32, ptr %60, align 4
  %62 = icmp ult i32 %61, 2048
  br i1 %62, label %69, label %63

63:                                               ; preds = %59
  %64 = load ptr, ptr %46, align 8
  %65 = getelementptr inbounds %struct.spi_controller, ptr %64, i32 0, i32 21
  %66 = load ptr, ptr %65, align 8
  %67 = icmp ne ptr %66, null
  %68 = or i1 %67, %1
  br i1 %68, label %97, label %70

69:                                               ; preds = %59, %45
  br i1 %1, label %97, label %70

70:                                               ; preds = %69, %63
  %71 = getelementptr inbounds %struct.spi_device, ptr %0, i32 0, i32 17
  %72 = icmp eq ptr %71, null
  br i1 %72, label %97, label %73

73:                                               ; preds = %70
  %74 = load i16, ptr %71, align 2
  %75 = zext i16 %74 to i32
  %76 = icmp eq i16 %74, 0
  br i1 %76, label %97, label %77

77:                                               ; preds = %73
  %78 = getelementptr inbounds %struct.spi_device, ptr %0, i32 0, i32 17, i32 1
  %79 = load i8, ptr %78, align 2
  switch i8 %79, label %97 [
    i8 0, label %80
    i8 1, label %82
  ]

80:                                               ; preds = %77
  %81 = mul nuw nsw i32 %75, 1000
  br label %82

82:                                               ; preds = %80, %77
  %83 = phi i32 [ %81, %80 ], [ %75, %77 ]
  %84 = icmp ult i32 %83, 1001
  br i1 %84, label %85, label %87

85:                                               ; preds = %82
  %86 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %86(i32 noundef 214748) #20
  br label %97

87:                                               ; preds = %82
  %88 = add nuw nsw i32 %83, 999
  %89 = udiv i32 %88, 1000
  %90 = icmp ult i32 %83, 10001
  br i1 %90, label %91, label %93

91:                                               ; preds = %87
  %92 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %92(i32 noundef %89) #20
  br label %97

93:                                               ; preds = %87
  %94 = add nuw nsw i32 %89, 9
  %95 = udiv i32 %94, 10
  %96 = add nuw nsw i32 %95, %89
  tail call void @usleep_range_state(i32 noundef %89, i32 noundef %96, i32 noundef 2) #20
  br label %97

97:                                               ; preds = %93, %91, %85, %77, %73, %70, %69, %63
  %98 = load i32, ptr %49, align 8
  %99 = and i32 %98, 4
  %100 = icmp ne i32 %99, 0
  %101 = xor i1 %100, %1
  %102 = load ptr, ptr %56, align 8
  %103 = icmp eq ptr %102, null
  br i1 %103, label %104, label %111

104:                                              ; preds = %97
  %105 = getelementptr inbounds %struct.spi_device, ptr %0, i32 0, i32 13
  %106 = load i32, ptr %105, align 4
  %107 = icmp ult i32 %106, 2048
  br i1 %107, label %108, label %130

108:                                              ; preds = %104
  %109 = and i32 %98, 64
  %110 = icmp eq i32 %109, 0
  br i1 %110, label %116, label %120

111:                                              ; preds = %97
  %112 = and i32 %98, 64
  %113 = icmp eq i32 %112, 0
  br i1 %113, label %114, label %120

114:                                              ; preds = %111
  %115 = zext i1 %1 to i32
  tail call void @gpiod_set_value_cansleep(ptr noundef nonnull %102, i32 noundef %115) #20
  br label %120

116:                                              ; preds = %108
  %117 = xor i1 %101, true
  %118 = zext i1 %117 to i32
  %119 = tail call ptr @gpio_to_desc(i32 noundef %106) #20
  tail call void @gpiod_set_raw_value_cansleep(ptr noundef %119, i32 noundef %118) #20
  br label %120

120:                                              ; preds = %116, %114, %111, %108
  %121 = load ptr, ptr %46, align 8
  %122 = getelementptr inbounds %struct.spi_controller, ptr %121, i32 0, i32 10
  %123 = load i16, ptr %122, align 4
  %124 = and i16 %123, 32
  %125 = icmp eq i16 %124, 0
  br i1 %125, label %138, label %126

126:                                              ; preds = %120
  %127 = getelementptr inbounds %struct.spi_controller, ptr %121, i32 0, i32 50
  %128 = load ptr, ptr %127, align 8
  %129 = icmp eq ptr %128, null
  br i1 %129, label %138, label %135

130:                                              ; preds = %104
  %131 = load ptr, ptr %46, align 8
  %132 = getelementptr inbounds %struct.spi_controller, ptr %131, i32 0, i32 50
  %133 = load ptr, ptr %132, align 8
  %134 = icmp eq ptr %133, null
  br i1 %134, label %138, label %135

135:                                              ; preds = %130, %126
  %136 = phi ptr [ %128, %126 ], [ %133, %130 ]
  %137 = xor i1 %101, true
  tail call void %136(ptr noundef %0, i1 noundef zeroext %137) #20
  br label %138

138:                                              ; preds = %135, %130, %126, %120
  %139 = load ptr, ptr %56, align 8
  %140 = icmp eq ptr %139, null
  br i1 %140, label %141, label %150

141:                                              ; preds = %138
  %142 = getelementptr inbounds %struct.spi_device, ptr %0, i32 0, i32 13
  %143 = load i32, ptr %142, align 4
  %144 = icmp ult i32 %143, 2048
  br i1 %144, label %150, label %145

145:                                              ; preds = %141
  %146 = load ptr, ptr %46, align 8
  %147 = getelementptr inbounds %struct.spi_controller, ptr %146, i32 0, i32 21
  %148 = load ptr, ptr %147, align 8
  %149 = icmp eq ptr %148, null
  br i1 %149, label %150, label %205

150:                                              ; preds = %145, %141, %138
  br i1 %1, label %151, label %178

151:                                              ; preds = %150
  %152 = getelementptr inbounds %struct.spi_device, ptr %0, i32 0, i32 16
  %153 = icmp eq ptr %152, null
  br i1 %153, label %205, label %154

154:                                              ; preds = %151
  %155 = load i16, ptr %152, align 2
  %156 = zext i16 %155 to i32
  %157 = icmp eq i16 %155, 0
  br i1 %157, label %205, label %158

158:                                              ; preds = %154
  %159 = getelementptr inbounds %struct.spi_device, ptr %0, i32 0, i32 16, i32 1
  %160 = load i8, ptr %159, align 2
  switch i8 %160, label %205 [
    i8 0, label %161
    i8 1, label %163
  ]

161:                                              ; preds = %158
  %162 = mul nuw nsw i32 %156, 1000
  br label %163

163:                                              ; preds = %161, %158
  %164 = phi i32 [ %162, %161 ], [ %156, %158 ]
  %165 = icmp ult i32 %164, 1001
  br i1 %165, label %166, label %168

166:                                              ; preds = %163
  %167 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %167(i32 noundef 214748) #20
  br label %205

168:                                              ; preds = %163
  %169 = add nuw nsw i32 %164, 999
  %170 = udiv i32 %169, 1000
  %171 = icmp ult i32 %164, 10001
  br i1 %171, label %172, label %174

172:                                              ; preds = %168
  %173 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %173(i32 noundef %170) #20
  br label %205

174:                                              ; preds = %168
  %175 = add nuw nsw i32 %170, 9
  %176 = udiv i32 %175, 10
  %177 = add nuw nsw i32 %176, %170
  tail call void @usleep_range_state(i32 noundef %170, i32 noundef %177, i32 noundef 2) #20
  br label %205

178:                                              ; preds = %150
  %179 = getelementptr inbounds %struct.spi_device, ptr %0, i32 0, i32 18
  %180 = icmp eq ptr %179, null
  br i1 %180, label %205, label %181

181:                                              ; preds = %178
  %182 = load i16, ptr %179, align 2
  %183 = zext i16 %182 to i32
  %184 = icmp eq i16 %182, 0
  br i1 %184, label %205, label %185

185:                                              ; preds = %181
  %186 = getelementptr inbounds %struct.spi_device, ptr %0, i32 0, i32 18, i32 1
  %187 = load i8, ptr %186, align 2
  switch i8 %187, label %205 [
    i8 0, label %188
    i8 1, label %190
  ]

188:                                              ; preds = %185
  %189 = mul nuw nsw i32 %183, 1000
  br label %190

190:                                              ; preds = %188, %185
  %191 = phi i32 [ %189, %188 ], [ %183, %185 ]
  %192 = icmp ult i32 %191, 1001
  br i1 %192, label %193, label %195

193:                                              ; preds = %190
  %194 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %194(i32 noundef 214748) #20
  br label %205

195:                                              ; preds = %190
  %196 = add nuw nsw i32 %191, 999
  %197 = udiv i32 %196, 1000
  %198 = icmp ult i32 %191, 10001
  br i1 %198, label %199, label %201

199:                                              ; preds = %195
  %200 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %200(i32 noundef %197) #20
  br label %205

201:                                              ; preds = %195
  %202 = add nuw nsw i32 %197, 9
  %203 = udiv i32 %202, 10
  %204 = add nuw nsw i32 %203, %197
  tail call void @usleep_range_state(i32 noundef %197, i32 noundef %204, i32 noundef 2) #20
  br label %205

205:                                              ; preds = %201, %199, %193, %185, %181, %178, %174, %172, %166, %158, %154, %151, %145, %11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @spi_async(ptr noundef %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.spi_device, ptr %0, i32 0, i32 1
  %4 = load ptr, ptr %3, align 8
  %5 = tail call fastcc i32 @__spi_validate(ptr noundef %0, ptr noundef %1)
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %17

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.spi_controller, ptr %4, i32 0, i32 17
  %9 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %8) #20
  %10 = getelementptr inbounds %struct.spi_controller, ptr %4, i32 0, i32 19
  %11 = load i8, ptr %10, align 8, !range !14
  %12 = icmp eq i8 %11, 0
  br i1 %12, label %13, label %15

13:                                               ; preds = %7
  %14 = tail call fastcc i32 @__spi_async(ptr noundef %0, ptr noundef %1)
  br label %15

15:                                               ; preds = %13, %7
  %16 = phi i32 [ %14, %13 ], [ -16, %7 ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %8, i32 noundef %9) #20
  br label %17

17:                                               ; preds = %15, %2
  %18 = phi i32 [ %16, %15 ], [ %5, %2 ]
  ret i32 %18
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @__spi_validate(ptr noundef %0, ptr noundef %1) unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.spi_device, ptr %0, i32 0, i32 1
  %4 = load ptr, ptr %3, align 8
  %5 = load volatile ptr, ptr %1, align 4
  %6 = icmp eq ptr %5, %1
  br i1 %6, label %265, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.spi_device, ptr %0, i32 0, i32 7
  %9 = load i32, ptr %8, align 8
  %10 = and i32 %9, 4096
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %48, label %12

12:                                               ; preds = %7
  %13 = getelementptr inbounds %struct.spi_controller, ptr %4, i32 0, i32 5
  %14 = load i32, ptr %13, align 8
  %15 = and i32 %14, 4096
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %25, label %17

17:                                               ; preds = %12
  %18 = getelementptr inbounds %struct.spi_device, ptr %0, i32 0, i32 14
  %19 = load ptr, ptr %18, align 8
  %20 = icmp eq ptr %19, null
  br i1 %20, label %21, label %25

21:                                               ; preds = %17
  %22 = getelementptr inbounds %struct.spi_device, ptr %0, i32 0, i32 13
  %23 = load i32, ptr %22, align 4
  %24 = icmp ult i32 %23, 2048
  br i1 %24, label %25, label %48

25:                                               ; preds = %21, %17, %12
  %26 = getelementptr inbounds %struct.spi_device, ptr %0, i32 0, i32 5
  %27 = load i8, ptr %26, align 1
  %28 = zext i8 %27 to i32
  %29 = add nuw nsw i32 %28, 7
  %30 = lshr i32 %29, 3
  %31 = getelementptr inbounds %struct.spi_message, ptr %1, i32 0, i32 1
  store ptr %0, ptr %31, align 4
  %32 = tail call i32 @spi_split_transfers_maxsize(ptr noundef %4, ptr noundef %1, i32 noundef %30, i32 noundef 3264)
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %34, label %265

34:                                               ; preds = %25
  %35 = load ptr, ptr %1, align 4
  %36 = icmp eq ptr %35, %1
  br i1 %36, label %48, label %37

37:                                               ; preds = %34
  %38 = load ptr, ptr %35, align 4
  %39 = icmp eq ptr %38, %1
  br i1 %39, label %48, label %40

40:                                               ; preds = %40, %37
  %41 = phi ptr [ %46, %40 ], [ %38, %37 ]
  %42 = phi ptr [ %41, %40 ], [ %35, %37 ]
  %43 = getelementptr i8, ptr %42, i32 -40
  %44 = load i8, ptr %43, align 4
  %45 = or i8 %44, 2
  store i8 %45, ptr %43, align 4
  %46 = load ptr, ptr %41, align 4
  %47 = icmp eq ptr %46, %1
  br i1 %47, label %48, label %40

48:                                               ; preds = %40, %37, %34, %21, %7
  %49 = getelementptr inbounds %struct.spi_controller, ptr %4, i32 0, i32 10
  %50 = load i16, ptr %49, align 4
  %51 = and i16 %50, 1
  %52 = icmp eq i16 %51, 0
  br i1 %52, label %53, label %57

53:                                               ; preds = %48
  %54 = load i32, ptr %8, align 8
  %55 = and i32 %54, 16
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %85, label %57

57:                                               ; preds = %53, %48
  %58 = zext i16 %50 to i32
  %59 = and i32 %58, 4
  %60 = icmp eq i32 %59, 0
  %61 = and i32 %58, 2
  %62 = icmp eq i32 %61, 0
  %63 = load ptr, ptr %1, align 4
  %64 = icmp eq ptr %63, %1
  br i1 %64, label %85, label %65

65:                                               ; preds = %82, %57
  %66 = phi ptr [ %83, %82 ], [ %63, %57 ]
  %67 = getelementptr i8, ptr %66, i32 -84
  %68 = getelementptr i8, ptr %66, i32 -80
  %69 = load ptr, ptr %68, align 4
  %70 = icmp eq ptr %69, null
  br i1 %70, label %74, label %71

71:                                               ; preds = %65
  %72 = load ptr, ptr %67, align 4
  %73 = icmp eq ptr %72, null
  br i1 %73, label %74, label %265

74:                                               ; preds = %71, %65
  br i1 %60, label %80, label %75

75:                                               ; preds = %74
  %76 = load ptr, ptr %67, align 4
  %77 = icmp eq ptr %76, null
  %78 = select i1 %62, i1 true, i1 %70
  %79 = select i1 %77, i1 %78, i1 false
  br i1 %79, label %82, label %265

80:                                               ; preds = %74
  %81 = select i1 %62, i1 true, i1 %70
  br i1 %81, label %82, label %265

82:                                               ; preds = %80, %75
  %83 = load ptr, ptr %66, align 4
  %84 = icmp eq ptr %83, %1
  br i1 %84, label %85, label %65

85:                                               ; preds = %82, %57, %53
  %86 = getelementptr inbounds %struct.spi_message, ptr %1, i32 0, i32 5
  store i32 0, ptr %86, align 4
  %87 = load ptr, ptr %1, align 4
  %88 = icmp eq ptr %87, %1
  br i1 %88, label %263, label %89

89:                                               ; preds = %85
  %90 = getelementptr inbounds %struct.spi_device, ptr %0, i32 0, i32 5
  %91 = getelementptr inbounds %struct.spi_device, ptr %0, i32 0, i32 3
  %92 = getelementptr inbounds %struct.spi_controller, ptr %4, i32 0, i32 9
  %93 = getelementptr inbounds %struct.spi_controller, ptr %4, i32 0, i32 7
  %94 = getelementptr inbounds %struct.spi_controller, ptr %4, i32 0, i32 8
  %95 = getelementptr inbounds %struct.spi_device, ptr %0, i32 0, i32 15
  %96 = getelementptr inbounds %struct.spi_device, ptr %0, i32 0, i32 15, i32 1
  br label %97

97:                                               ; preds = %260, %89
  %98 = phi ptr [ %87, %89 ], [ %261, %260 ]
  %99 = getelementptr i8, ptr %98, i32 -84
  %100 = getelementptr i8, ptr %98, i32 -20
  store i32 0, ptr %100, align 4
  %101 = getelementptr i8, ptr %98, i32 -76
  %102 = load i32, ptr %101, align 4
  %103 = load i32, ptr %86, align 4
  %104 = add i32 %103, %102
  store i32 %104, ptr %86, align 4
  %105 = getelementptr i8, ptr %98, i32 -39
  %106 = load i8, ptr %105, align 1
  %107 = icmp eq i8 %106, 0
  br i1 %107, label %108, label %110

108:                                              ; preds = %97
  %109 = load i8, ptr %90, align 1
  store i8 %109, ptr %105, align 1
  br label %110

110:                                              ; preds = %108, %97
  %111 = phi i8 [ %109, %108 ], [ %106, %97 ]
  %112 = getelementptr i8, ptr %98, i32 -24
  %113 = load i32, ptr %112, align 4
  %114 = icmp eq i32 %113, 0
  br i1 %114, label %115, label %117

115:                                              ; preds = %110
  %116 = load i32, ptr %91, align 8
  store i32 %116, ptr %112, align 4
  br label %117

117:                                              ; preds = %115, %110
  %118 = phi i32 [ %116, %115 ], [ %113, %110 ]
  %119 = load i32, ptr %92, align 8
  %120 = icmp ne i32 %119, 0
  %121 = icmp ugt i32 %118, %119
  %122 = select i1 %120, i1 %121, i1 false
  br i1 %122, label %123, label %124

123:                                              ; preds = %117
  store i32 %119, ptr %112, align 4
  br label %124

124:                                              ; preds = %123, %117
  %125 = phi i32 [ %119, %123 ], [ %118, %117 ]
  %126 = load i32, ptr %93, align 8
  %127 = icmp eq i32 %126, 0
  br i1 %127, label %136, label %128

128:                                              ; preds = %124
  %129 = icmp ugt i8 %111, 32
  br i1 %129, label %265, label %130

130:                                              ; preds = %128
  %131 = zext i8 %111 to i32
  %132 = add nsw i32 %131, -1
  %133 = shl nuw i32 1, %132
  %134 = and i32 %133, %126
  %135 = icmp eq i32 %134, 0
  br i1 %135, label %265, label %136

136:                                              ; preds = %130, %124
  %137 = icmp ult i8 %111, 9
  %138 = icmp ult i8 %111, 17
  %139 = load i32, ptr %101, align 4
  %140 = select i1 %138, i32 1, i32 3
  %141 = select i1 %137, i32 0, i32 %140
  %142 = and i32 %139, %141
  %143 = icmp eq i32 %142, 0
  br i1 %143, label %144, label %265

144:                                              ; preds = %136
  %145 = icmp eq i32 %125, 0
  br i1 %145, label %151, label %146

146:                                              ; preds = %144
  %147 = load i32, ptr %94, align 4
  %148 = icmp ne i32 %147, 0
  %149 = icmp ult i32 %125, %147
  %150 = select i1 %148, i1 %149, i1 false
  br i1 %150, label %265, label %151

151:                                              ; preds = %146, %144
  %152 = load ptr, ptr %99, align 4
  %153 = icmp eq ptr %152, null
  br i1 %153, label %162, label %154

154:                                              ; preds = %151
  %155 = getelementptr i8, ptr %98, i32 -40
  %156 = load i8, ptr %155, align 4
  %157 = and i8 %156, 28
  %158 = icmp eq i8 %157, 0
  br i1 %158, label %159, label %162

159:                                              ; preds = %154
  %160 = and i8 %156, -29
  %161 = or i8 %160, 4
  store i8 %161, ptr %155, align 4
  br label %162

162:                                              ; preds = %159, %154, %151
  %163 = getelementptr i8, ptr %98, i32 -80
  %164 = load ptr, ptr %163, align 4
  %165 = icmp eq ptr %164, null
  br i1 %165, label %172, label %166

166:                                              ; preds = %162
  %167 = getelementptr i8, ptr %98, i32 -40
  %168 = load i8, ptr %167, align 4
  %169 = icmp ult i8 %168, 32
  br i1 %169, label %170, label %172

170:                                              ; preds = %166
  %171 = or i8 %168, 32
  store i8 %171, ptr %167, align 4
  br label %172

172:                                              ; preds = %170, %166, %162
  br i1 %153, label %190, label %173

173:                                              ; preds = %172
  %174 = load i32, ptr %8, align 8
  %175 = icmp sgt i32 %174, -1
  br i1 %175, label %176, label %265

176:                                              ; preds = %173
  %177 = getelementptr i8, ptr %98, i32 -40
  %178 = load i8, ptr %177, align 4
  %179 = lshr i8 %178, 2
  %180 = trunc i8 %179 to i3
  switch i3 %180, label %265 [
    i3 1, label %181
    i3 2, label %181
    i3 -4, label %181
  ]

181:                                              ; preds = %176, %176, %176
  %182 = trunc i8 %178 to i5
  %183 = and i5 %182, -4
  switch i5 %183, label %190 [
    i5 8, label %184
    i5 -16, label %187
  ]

184:                                              ; preds = %181
  %185 = and i32 %174, 768
  %186 = icmp eq i32 %185, 0
  br i1 %186, label %265, label %190

187:                                              ; preds = %181
  %188 = and i32 %174, 512
  %189 = icmp eq i32 %188, 0
  br i1 %189, label %265, label %190

190:                                              ; preds = %187, %184, %181, %172
  br i1 %165, label %208, label %191

191:                                              ; preds = %190
  %192 = load i32, ptr %8, align 8
  %193 = and i32 %192, 1073741824
  %194 = icmp eq i32 %193, 0
  br i1 %194, label %195, label %265

195:                                              ; preds = %191
  %196 = getelementptr i8, ptr %98, i32 -40
  %197 = load i8, ptr %196, align 4
  %198 = lshr i8 %197, 5
  %199 = trunc i8 %198 to i3
  switch i3 %199, label %265 [
    i3 1, label %200
    i3 2, label %200
    i3 -4, label %200
  ]

200:                                              ; preds = %195, %195, %195
  %201 = and i8 %197, -32
  switch i8 %201, label %208 [
    i8 64, label %202
    i8 -128, label %205
  ]

202:                                              ; preds = %200
  %203 = and i32 %192, 3072
  %204 = icmp eq i32 %203, 0
  br i1 %204, label %265, label %208

205:                                              ; preds = %200
  %206 = and i32 %192, 2048
  %207 = icmp eq i32 %206, 0
  br i1 %207, label %265, label %208

208:                                              ; preds = %205, %202, %200, %190
  %209 = getelementptr i8, ptr %98, i32 -30
  %210 = load i16, ptr %209, align 2
  %211 = zext i16 %210 to i32
  %212 = icmp eq i16 %210, 0
  br i1 %212, label %232, label %213

213:                                              ; preds = %208
  %214 = getelementptr i8, ptr %98, i32 -28
  %215 = load i8, ptr %214, align 2
  switch i8 %215, label %265 [
    i8 0, label %216
    i8 1, label %232
    i8 2, label %218
  ]

216:                                              ; preds = %213
  %217 = mul nuw nsw i32 %211, 1000
  br label %232

218:                                              ; preds = %213
  %219 = icmp eq ptr %99, null
  br i1 %219, label %265, label %220

220:                                              ; preds = %218
  %221 = load i32, ptr %100, align 4
  %222 = icmp eq i32 %221, 0
  br i1 %222, label %223, label %226

223:                                              ; preds = %220
  %224 = lshr i32 %125, 1
  %225 = icmp ult i32 %125, 2
  br i1 %225, label %265, label %226

226:                                              ; preds = %223, %220
  %227 = phi i32 [ %224, %223 ], [ %221, %220 ]
  %228 = add i32 %227, 999999999
  %229 = udiv i32 %228, %227
  %230 = mul i32 %229, %211
  %231 = icmp slt i32 %230, 0
  br i1 %231, label %265, label %232

232:                                              ; preds = %226, %216, %213, %208
  %233 = phi i32 [ %230, %226 ], [ 0, %208 ], [ %217, %216 ], [ %211, %213 ]
  %234 = load i16, ptr %95, align 2
  %235 = zext i16 %234 to i32
  %236 = icmp eq i16 %234, 0
  br i1 %236, label %255, label %237

237:                                              ; preds = %232
  %238 = load i8, ptr %96, align 2
  switch i8 %238, label %265 [
    i8 0, label %239
    i8 1, label %255
    i8 2, label %241
  ]

239:                                              ; preds = %237
  %240 = mul nuw nsw i32 %235, 1000
  br label %255

241:                                              ; preds = %237
  %242 = icmp eq ptr %99, null
  br i1 %242, label %265, label %243

243:                                              ; preds = %241
  %244 = load i32, ptr %100, align 4
  %245 = icmp eq i32 %244, 0
  br i1 %245, label %246, label %249

246:                                              ; preds = %243
  %247 = lshr i32 %125, 1
  %248 = icmp ult i32 %125, 2
  br i1 %248, label %265, label %249

249:                                              ; preds = %246, %243
  %250 = phi i32 [ %247, %246 ], [ %244, %243 ]
  %251 = add i32 %250, 999999999
  %252 = udiv i32 %251, %250
  %253 = mul i32 %252, %235
  %254 = icmp slt i32 %253, 0
  br i1 %254, label %265, label %255

255:                                              ; preds = %249, %239, %237, %232
  %256 = phi i32 [ %253, %249 ], [ 0, %232 ], [ %240, %239 ], [ %235, %237 ]
  %257 = icmp ult i32 %233, %256
  br i1 %257, label %258, label %260

258:                                              ; preds = %255
  %259 = load i32, ptr %95, align 4
  store i32 %259, ptr %209, align 2
  br label %260

260:                                              ; preds = %258, %255
  %261 = load ptr, ptr %98, align 4
  %262 = icmp eq ptr %261, %1
  br i1 %262, label %263, label %97

263:                                              ; preds = %260, %85
  %264 = getelementptr inbounds %struct.spi_message, ptr %1, i32 0, i32 7
  store i32 -115, ptr %264, align 4
  br label %265

265:                                              ; preds = %263, %249, %246, %241, %237, %226, %223, %218, %213, %205, %202, %195, %191, %187, %184, %176, %173, %146, %136, %130, %128, %80, %75, %71, %25, %2
  %266 = phi i32 [ 0, %263 ], [ -22, %2 ], [ %32, %25 ], [ -22, %136 ], [ -22, %146 ], [ -22, %173 ], [ -22, %176 ], [ -22, %184 ], [ -22, %187 ], [ -22, %191 ], [ -22, %195 ], [ -22, %202 ], [ -22, %205 ], [ -22, %128 ], [ -22, %130 ], [ -22, %226 ], [ -22, %249 ], [ -22, %218 ], [ -22, %223 ], [ -22, %213 ], [ -22, %241 ], [ -22, %246 ], [ -22, %237 ], [ -22, %75 ], [ -22, %71 ], [ -22, %80 ]
  ret i32 %266
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @__spi_async(ptr noundef %0, ptr noundef %1) unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.spi_device, ptr %0, i32 0, i32 1
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.spi_controller, ptr %4, i32 0, i32 22
  %6 = load ptr, ptr %5, align 4
  %7 = icmp eq ptr %6, null
  br i1 %7, label %65, label %8

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.spi_message, ptr %1, i32 0, i32 1
  store ptr %0, ptr %9, align 4
  %10 = getelementptr inbounds %struct.spi_controller, ptr %4, i32 0, i32 59
  %11 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %10) #20
  %12 = getelementptr inbounds %struct.spi_controller, ptr %4, i32 0, i32 59, i32 7
  %13 = load i32, ptr %12, align 4
  %14 = add i32 %13, 1
  store i32 %14, ptr %12, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %10, i32 noundef %11) #20
  %15 = getelementptr inbounds %struct.spi_device, ptr %0, i32 0, i32 19
  %16 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %15) #20
  %17 = getelementptr inbounds %struct.spi_device, ptr %0, i32 0, i32 19, i32 7
  %18 = load i32, ptr %17, align 4
  %19 = add i32 %18, 1
  store i32 %19, ptr %17, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %15, i32 noundef %16) #20
  %20 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_spi_message_submit, i32 0, i32 1), align 4
  %21 = icmp sgt i32 %20, 0
  br i1 %21, label %22, label %45

22:                                               ; preds = %8
  %23 = tail call ptr @llvm.thread.pointer() #20
  %24 = getelementptr inbounds %struct.thread_info, ptr %23, i32 0, i32 2
  %25 = load i32, ptr %24, align 8
  %26 = lshr i32 %25, 5
  %27 = getelementptr i32, ptr @__cpu_online_mask, i32 %26
  %28 = load volatile i32, ptr %27, align 4
  %29 = and i32 %25, 31
  %30 = shl nuw i32 1, %29
  %31 = and i32 %30, %28
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %45, label %33

33:                                               ; preds = %22
  tail call void asm sideeffect "", "~{memory}"() #20, !srcloc !36
  %34 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_spi_message_submit, i32 0, i32 7), align 4
  %35 = icmp eq ptr %34, null
  br i1 %35, label %44, label %36

36:                                               ; preds = %36, %33
  %37 = phi ptr [ %41, %36 ], [ %34, %33 ]
  %38 = load volatile ptr, ptr %37, align 4
  %39 = getelementptr inbounds %struct.tracepoint_func, ptr %37, i32 0, i32 1
  %40 = load ptr, ptr %39, align 4
  tail call void %38(ptr noundef %40, ptr noundef %1) #20
  %41 = getelementptr %struct.tracepoint_func, ptr %37, i32 1
  %42 = load ptr, ptr %41, align 4
  %43 = icmp eq ptr %42, null
  br i1 %43, label %44, label %36

44:                                               ; preds = %36, %33
  tail call void asm sideeffect "", "~{memory}"() #20, !srcloc !37
  br label %45

45:                                               ; preds = %44, %22, %8
  %46 = getelementptr inbounds %struct.spi_controller, ptr %4, i32 0, i32 65
  %47 = load i8, ptr %46, align 4, !range !14
  %48 = icmp eq i8 %47, 0
  br i1 %48, label %49, label %62

49:                                               ; preds = %45
  %50 = load ptr, ptr %1, align 4
  %51 = icmp eq ptr %50, %1
  br i1 %51, label %62, label %52

52:                                               ; preds = %59, %49
  %53 = phi ptr [ %60, %59 ], [ %50, %49 ]
  %54 = getelementptr i8, ptr %53, i32 -16
  store i32 0, ptr %54, align 4
  %55 = getelementptr i8, ptr %53, i32 -8
  %56 = load ptr, ptr %55, align 4
  %57 = icmp eq ptr %56, null
  br i1 %57, label %59, label %58

58:                                               ; preds = %52
  tail call void @ktime_get_real_ts64(ptr noundef nonnull %56) #20
  br label %59

59:                                               ; preds = %58, %52
  %60 = load ptr, ptr %53, align 4
  %61 = icmp eq ptr %60, %1
  br i1 %61, label %62, label %52

62:                                               ; preds = %59, %49, %45
  %63 = load ptr, ptr %5, align 4
  %64 = tail call i32 %63(ptr noundef %0, ptr noundef %1) #20
  br label %65

65:                                               ; preds = %62, %2
  %66 = phi i32 [ %64, %62 ], [ -524, %2 ]
  ret i32 %66
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @spi_sync(ptr noundef %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.spi_device, ptr %0, i32 0, i32 1
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.spi_controller, ptr %4, i32 0, i32 18
  tail call void @mutex_lock(ptr noundef %5) #20
  %6 = tail call fastcc i32 @__spi_sync(ptr noundef %0, ptr noundef %1)
  %7 = load ptr, ptr %3, align 8
  %8 = getelementptr inbounds %struct.spi_controller, ptr %7, i32 0, i32 18
  tail call void @mutex_unlock(ptr noundef %8) #20
  ret i32 %6
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @__spi_sync(ptr noundef %0, ptr noundef %1) unnamed_addr #0 {
  %3 = alloca %struct.completion, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #20
  %4 = getelementptr inbounds %struct.completion, ptr %3, i32 0, i32 1, i32 1
  store i64 0, ptr %3, align 8
  store ptr %4, ptr %4, align 8
  %5 = getelementptr inbounds %struct.completion, ptr %3, i32 0, i32 1, i32 1, i32 1
  store ptr %4, ptr %5, align 4
  %6 = getelementptr inbounds %struct.spi_device, ptr %0, i32 0, i32 1
  %7 = load ptr, ptr %6, align 8
  %8 = call fastcc i32 @__spi_validate(ptr noundef %0, ptr noundef %1)
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %100

10:                                               ; preds = %2
  %11 = getelementptr inbounds %struct.spi_message, ptr %1, i32 0, i32 3
  store ptr @spi_complete, ptr %11, align 4
  %12 = getelementptr inbounds %struct.spi_message, ptr %1, i32 0, i32 4
  store ptr %3, ptr %12, align 4
  %13 = getelementptr inbounds %struct.spi_message, ptr %1, i32 0, i32 1
  store ptr %0, ptr %13, align 4
  %14 = getelementptr inbounds %struct.spi_controller, ptr %7, i32 0, i32 59
  %15 = call i32 @_raw_spin_lock_irqsave(ptr noundef %14) #20
  %16 = getelementptr inbounds %struct.spi_controller, ptr %7, i32 0, i32 59, i32 5
  %17 = load i32, ptr %16, align 4
  %18 = add i32 %17, 1
  store i32 %18, ptr %16, align 4
  call void @_raw_spin_unlock_irqrestore(ptr noundef %14, i32 noundef %15) #20
  %19 = getelementptr inbounds %struct.spi_device, ptr %0, i32 0, i32 19
  %20 = call i32 @_raw_spin_lock_irqsave(ptr noundef %19) #20
  %21 = getelementptr inbounds %struct.spi_device, ptr %0, i32 0, i32 19, i32 5
  %22 = load i32, ptr %21, align 4
  %23 = add i32 %22, 1
  store i32 %23, ptr %21, align 4
  call void @_raw_spin_unlock_irqrestore(ptr noundef %19, i32 noundef %20) #20
  %24 = getelementptr inbounds %struct.spi_controller, ptr %7, i32 0, i32 22
  %25 = load ptr, ptr %24, align 4
  %26 = icmp eq ptr %25, @spi_queued_transfer
  br i1 %26, label %27, label %72

27:                                               ; preds = %10
  %28 = getelementptr inbounds %struct.spi_controller, ptr %7, i32 0, i32 17
  %29 = call i32 @_raw_spin_lock_irqsave(ptr noundef %28) #20
  %30 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_spi_message_submit, i32 0, i32 1), align 4
  %31 = icmp sgt i32 %30, 0
  br i1 %31, label %32, label %55

32:                                               ; preds = %27
  %33 = tail call ptr @llvm.thread.pointer() #20
  %34 = getelementptr inbounds %struct.thread_info, ptr %33, i32 0, i32 2
  %35 = load i32, ptr %34, align 8
  %36 = lshr i32 %35, 5
  %37 = getelementptr i32, ptr @__cpu_online_mask, i32 %36
  %38 = load volatile i32, ptr %37, align 4
  %39 = and i32 %35, 31
  %40 = shl nuw i32 1, %39
  %41 = and i32 %40, %38
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %55, label %43

43:                                               ; preds = %32
  call void asm sideeffect "", "~{memory}"() #20, !srcloc !36
  %44 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_spi_message_submit, i32 0, i32 7), align 4
  %45 = icmp eq ptr %44, null
  br i1 %45, label %54, label %46

46:                                               ; preds = %46, %43
  %47 = phi ptr [ %51, %46 ], [ %44, %43 ]
  %48 = load volatile ptr, ptr %47, align 4
  %49 = getelementptr inbounds %struct.tracepoint_func, ptr %47, i32 0, i32 1
  %50 = load ptr, ptr %49, align 4
  call void %48(ptr noundef %50, ptr noundef %1) #20
  %51 = getelementptr %struct.tracepoint_func, ptr %47, i32 1
  %52 = load ptr, ptr %51, align 4
  %53 = icmp eq ptr %52, null
  br i1 %53, label %54, label %46

54:                                               ; preds = %46, %43
  call void asm sideeffect "", "~{memory}"() #20, !srcloc !37
  br label %55

55:                                               ; preds = %54, %32, %27
  %56 = load ptr, ptr %6, align 8
  %57 = getelementptr inbounds %struct.spi_controller, ptr %56, i32 0, i32 29
  %58 = call i32 @_raw_spin_lock_irqsave(ptr noundef %57) #20
  %59 = getelementptr inbounds %struct.spi_controller, ptr %56, i32 0, i32 34
  %60 = load i8, ptr %59, align 2, !range !14
  %61 = icmp eq i8 %60, 0
  br i1 %61, label %70, label %62

62:                                               ; preds = %55
  %63 = getelementptr inbounds %struct.spi_message, ptr %1, i32 0, i32 6
  store i32 0, ptr %63, align 4
  %64 = getelementptr inbounds %struct.spi_message, ptr %1, i32 0, i32 7
  store i32 -115, ptr %64, align 4
  %65 = getelementptr inbounds %struct.spi_message, ptr %1, i32 0, i32 8
  %66 = getelementptr inbounds %struct.spi_controller, ptr %56, i32 0, i32 30
  %67 = getelementptr inbounds %struct.spi_controller, ptr %56, i32 0, i32 30, i32 1
  %68 = load ptr, ptr %67, align 4
  store ptr %65, ptr %67, align 4
  store ptr %66, ptr %65, align 4
  %69 = getelementptr inbounds %struct.spi_message, ptr %1, i32 0, i32 8, i32 1
  store ptr %68, ptr %69, align 4
  store volatile ptr %65, ptr %68, align 4
  br label %70

70:                                               ; preds = %62, %55
  %71 = phi i32 [ -108, %55 ], [ 0, %62 ]
  call void @_raw_spin_unlock_irqrestore(ptr noundef %57, i32 noundef %58) #20
  call void @_raw_spin_unlock_irqrestore(ptr noundef %28, i32 noundef %29) #20
  br label %80

72:                                               ; preds = %10
  %73 = load ptr, ptr %6, align 8
  %74 = call fastcc i32 @__spi_validate(ptr noundef %0, ptr noundef %1) #20
  %75 = icmp eq i32 %74, 0
  br i1 %75, label %76, label %98

76:                                               ; preds = %72
  %77 = getelementptr inbounds %struct.spi_controller, ptr %73, i32 0, i32 17
  %78 = call i32 @_raw_spin_lock_irqsave(ptr noundef %77) #20
  %79 = call fastcc i32 @__spi_async(ptr noundef %0, ptr noundef %1) #20
  call void @_raw_spin_unlock_irqrestore(ptr noundef %77, i32 noundef %78) #20
  br label %80

80:                                               ; preds = %76, %70
  %81 = phi i32 [ %71, %70 ], [ %79, %76 ]
  %82 = icmp eq i32 %81, 0
  br i1 %82, label %83, label %98

83:                                               ; preds = %80
  %84 = load ptr, ptr %24, align 4
  %85 = icmp eq ptr %84, @spi_queued_transfer
  br i1 %85, label %86, label %95

86:                                               ; preds = %83
  %87 = call i32 @_raw_spin_lock_irqsave(ptr noundef %14) #20
  %88 = getelementptr inbounds %struct.spi_controller, ptr %7, i32 0, i32 59, i32 6
  %89 = load i32, ptr %88, align 8
  %90 = add i32 %89, 1
  store i32 %90, ptr %88, align 8
  call void @_raw_spin_unlock_irqrestore(ptr noundef %14, i32 noundef %87) #20
  %91 = call i32 @_raw_spin_lock_irqsave(ptr noundef %19) #20
  %92 = getelementptr inbounds %struct.spi_device, ptr %0, i32 0, i32 19, i32 6
  %93 = load i32, ptr %92, align 8
  %94 = add i32 %93, 1
  store i32 %94, ptr %92, align 8
  call void @_raw_spin_unlock_irqrestore(ptr noundef %19, i32 noundef %91) #20
  call fastcc void @__spi_pump_messages(ptr noundef %7, i1 noundef zeroext false)
  br label %95

95:                                               ; preds = %86, %83
  call void @wait_for_completion(ptr noundef nonnull %3) #20
  %96 = getelementptr inbounds %struct.spi_message, ptr %1, i32 0, i32 7
  %97 = load i32, ptr %96, align 4
  br label %98

98:                                               ; preds = %95, %80, %72
  %99 = phi i32 [ %97, %95 ], [ %81, %80 ], [ %74, %72 ]
  store ptr null, ptr %12, align 4
  br label %100

100:                                              ; preds = %98, %2
  %101 = phi i32 [ %99, %98 ], [ %8, %2 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #20
  ret i32 %101
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @spi_sync_locked(ptr noundef %0, ptr noundef %1) #0 {
  %3 = tail call fastcc i32 @__spi_sync(ptr noundef %0, ptr noundef %1)
  ret i32 %3
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @spi_bus_lock(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.spi_controller, ptr %0, i32 0, i32 18
  tail call void @mutex_lock(ptr noundef %2) #20
  %3 = getelementptr inbounds %struct.spi_controller, ptr %0, i32 0, i32 17
  %4 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %3) #20
  %5 = getelementptr inbounds %struct.spi_controller, ptr %0, i32 0, i32 19
  store i8 1, ptr %5, align 8
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %3, i32 noundef %4) #20
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @spi_bus_unlock(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.spi_controller, ptr %0, i32 0, i32 19
  store i8 0, ptr %2, align 8
  %3 = getelementptr inbounds %struct.spi_controller, ptr %0, i32 0, i32 18
  tail call void @mutex_unlock(ptr noundef %3) #20
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @spi_write_then_read(ptr noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2, ptr nocapture noundef writeonly %3, i32 noundef %4) #0 {
  %6 = alloca %struct.spi_message, align 4
  %7 = alloca [2 x %struct.spi_transfer], align 4
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %6) #20
  call void @llvm.lifetime.start.p0(i64 192, ptr nonnull %7) #20
  %8 = add i32 %4, %2
  %9 = icmp ugt i32 %8, 64
  br i1 %9, label %13, label %10

10:                                               ; preds = %5
  %11 = tail call i32 @mutex_trylock(ptr noundef nonnull @spi_write_then_read.lock) #20
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %17

13:                                               ; preds = %10, %5
  %14 = tail call i32 @llvm.umax.i32(i32 %8, i32 64)
  %15 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %14, i32 noundef 3265) #23
  %16 = icmp eq ptr %15, null
  br i1 %16, label %56, label %19

17:                                               ; preds = %10
  %18 = load ptr, ptr @buf, align 4
  br label %19

19:                                               ; preds = %17, %13
  %20 = phi ptr [ %15, %13 ], [ %18, %17 ]
  %21 = getelementptr inbounds i8, ptr %6, i32 8
  call void @llvm.memset.p0.i32(ptr noundef align 4 dereferenceable(56) %21, i8 0, i32 40, i1 false) #20
  store volatile ptr %6, ptr %6, align 4
  %22 = getelementptr inbounds %struct.list_head, ptr %6, i32 0, i32 1
  store ptr %6, ptr %22, align 4
  %23 = getelementptr inbounds %struct.spi_message, ptr %6, i32 0, i32 10
  store volatile ptr %23, ptr %23, align 4
  %24 = getelementptr inbounds %struct.spi_message, ptr %6, i32 0, i32 10, i32 1
  store ptr %23, ptr %24, align 4
  %25 = getelementptr inbounds i8, ptr %7, i32 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(192) %25, i8 0, i32 188, i1 false)
  %26 = icmp eq i32 %2, 0
  br i1 %26, label %31, label %27

27:                                               ; preds = %19
  %28 = getelementptr inbounds %struct.spi_transfer, ptr %7, i32 0, i32 2
  store i32 %2, ptr %28, align 4
  %29 = getelementptr inbounds %struct.spi_transfer, ptr %7, i32 0, i32 18
  store ptr %29, ptr %22, align 4
  store ptr %6, ptr %29, align 4
  %30 = getelementptr inbounds %struct.spi_transfer, ptr %7, i32 0, i32 18, i32 1
  store ptr %6, ptr %30, align 4
  store volatile ptr %29, ptr %6, align 4
  br label %31

31:                                               ; preds = %27, %19
  %32 = phi ptr [ %29, %27 ], [ %6, %19 ]
  %33 = icmp eq i32 %4, 0
  br i1 %33, label %38, label %34

34:                                               ; preds = %31
  %35 = getelementptr inbounds [2 x %struct.spi_transfer], ptr %7, i32 0, i32 1, i32 2
  store i32 %4, ptr %35, align 4
  %36 = getelementptr inbounds [2 x %struct.spi_transfer], ptr %7, i32 0, i32 1, i32 18
  store ptr %36, ptr %22, align 4
  store ptr %6, ptr %36, align 4
  %37 = getelementptr inbounds [2 x %struct.spi_transfer], ptr %7, i32 0, i32 1, i32 18, i32 1
  store ptr %32, ptr %37, align 4
  store volatile ptr %36, ptr %32, align 4
  br label %38

38:                                               ; preds = %34, %31
  call void @llvm.memcpy.p0.p0.i32(ptr align 1 %20, ptr align 1 %1, i32 %2, i1 false)
  store ptr %20, ptr %7, align 4
  %39 = getelementptr i8, ptr %20, i32 %2
  %40 = getelementptr inbounds [2 x %struct.spi_transfer], ptr %7, i32 0, i32 1, i32 1
  store ptr %39, ptr %40, align 4
  %41 = getelementptr inbounds %struct.spi_device, ptr %0, i32 0, i32 1
  %42 = load ptr, ptr %41, align 8
  %43 = getelementptr inbounds %struct.spi_controller, ptr %42, i32 0, i32 18
  call void @mutex_lock(ptr noundef %43) #20
  %44 = call fastcc i32 @__spi_sync(ptr noundef %0, ptr noundef nonnull %6) #20
  %45 = load ptr, ptr %41, align 8
  %46 = getelementptr inbounds %struct.spi_controller, ptr %45, i32 0, i32 18
  call void @mutex_unlock(ptr noundef %46) #20
  %47 = icmp eq i32 %44, 0
  br i1 %47, label %48, label %50

48:                                               ; preds = %38
  %49 = load ptr, ptr %40, align 4
  call void @llvm.memcpy.p0.p0.i32(ptr align 1 %3, ptr align 1 %49, i32 %4, i1 false)
  br label %50

50:                                               ; preds = %48, %38
  %51 = load ptr, ptr %7, align 4
  %52 = load ptr, ptr @buf, align 4
  %53 = icmp eq ptr %51, %52
  br i1 %53, label %54, label %55

54:                                               ; preds = %50
  call void @mutex_unlock(ptr noundef nonnull @spi_write_then_read.lock) #20
  br label %56

55:                                               ; preds = %50
  call void @kfree(ptr noundef %20) #20
  br label %56

56:                                               ; preds = %55, %54, %13
  %57 = phi i32 [ -12, %13 ], [ %44, %55 ], [ %44, %54 ]
  call void @llvm.lifetime.end.p0(i64 192, ptr nonnull %7) #20
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %6) #20
  ret i32 %57
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #9

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mutex_trylock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @spi_init() #10 section ".init.text" {
  %1 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %2 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %1, i32 noundef 3264, i32 noundef 64) #22
  store ptr %2, ptr @buf, align 4
  %3 = icmp eq ptr %2, null
  br i1 %3, label %18, label %4

4:                                                ; preds = %0
  %5 = tail call i32 @bus_register(ptr noundef nonnull @spi_bus_type) #20
  %6 = icmp slt i32 %5, 0
  br i1 %6, label %15, label %7

7:                                                ; preds = %4
  %8 = tail call i32 @__class_register(ptr noundef nonnull @spi_master_class, ptr noundef nonnull @spi_init.__key) #20
  %9 = icmp slt i32 %8, 0
  br i1 %9, label %14, label %10

10:                                               ; preds = %7
  %11 = tail call i32 @of_reconfig_notifier_register(ptr noundef nonnull @spi_of_notifier) #20
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %18, label %13, !prof !10

13:                                               ; preds = %10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 4290, i32 noundef 9, ptr noundef null) #20
  br label %18

14:                                               ; preds = %7
  tail call void @bus_unregister(ptr noundef nonnull @spi_bus_type) #20
  br label %15

15:                                               ; preds = %14, %4
  %16 = phi i32 [ %5, %4 ], [ %8, %14 ]
  %17 = load ptr, ptr @buf, align 4
  tail call void @kfree(ptr noundef %17) #20
  store ptr null, ptr @buf, align 4
  br label %18

18:                                               ; preds = %15, %13, %10, %0
  %19 = phi i32 [ 0, %13 ], [ 0, %10 ], [ %16, %15 ], [ -12, %0 ]
  ret i32 %19
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @trace_event_buffer_reserve(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_event_buffer_commit(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__trace_trigger_soft_disabled(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @trace_raw_output_spi_controller(ptr noundef %0, i32 noundef %1, ptr noundef %2) #0 {
  %4 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 16
  %5 = load ptr, ptr %4, align 8
  %6 = tail call i32 @trace_raw_output_prep(ptr noundef %0, ptr noundef %2) #20
  %7 = icmp eq i32 %6, 1
  br i1 %7, label %8, label %13

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 15
  %10 = getelementptr inbounds %struct.trace_event_raw_spi_controller, ptr %5, i32 0, i32 1
  %11 = load i32, ptr %10, align 4
  tail call void (ptr, ptr, ...) @trace_event_printf(ptr noundef %0, ptr noundef nonnull @.str.26, i32 noundef %11) #20
  %12 = tail call i32 @trace_handle_return(ptr noundef %9) #20
  br label %13

13:                                               ; preds = %8, %3
  %14 = phi i32 [ %12, %8 ], [ %6, %3 ]
  ret i32 %14
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @trace_raw_output_prep(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_event_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @trace_handle_return(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @trace_raw_output_spi_setup(ptr noundef %0, i32 noundef %1, ptr noundef %2) #0 {
  %4 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 16
  %5 = load ptr, ptr %4, align 8
  %6 = tail call i32 @trace_raw_output_prep(ptr noundef %0, ptr noundef %2) #20
  %7 = icmp eq i32 %6, 1
  br i1 %7, label %8, label %36

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 15
  %10 = getelementptr inbounds %struct.trace_event_raw_spi_setup, ptr %5, i32 0, i32 1
  %11 = load i32, ptr %10, align 4
  %12 = getelementptr inbounds %struct.trace_event_raw_spi_setup, ptr %5, i32 0, i32 2
  %13 = load i32, ptr %12, align 4
  %14 = getelementptr inbounds %struct.trace_event_raw_spi_setup, ptr %5, i32 0, i32 3
  %15 = load i32, ptr %14, align 4
  %16 = and i32 %15, 3
  %17 = and i32 %15, 4
  %18 = icmp eq i32 %17, 0
  %19 = select i1 %18, ptr @.str.36, ptr @.str.35
  %20 = and i32 %15, 8
  %21 = icmp eq i32 %20, 0
  %22 = select i1 %21, ptr @.str.36, ptr @.str.37
  %23 = and i32 %15, 16
  %24 = icmp eq i32 %23, 0
  %25 = select i1 %24, ptr @.str.36, ptr @.str.38
  %26 = and i32 %15, 32
  %27 = icmp eq i32 %26, 0
  %28 = select i1 %27, ptr @.str.36, ptr @.str.39
  %29 = getelementptr inbounds %struct.trace_event_raw_spi_setup, ptr %5, i32 0, i32 4
  %30 = load i32, ptr %29, align 4
  %31 = getelementptr inbounds %struct.trace_event_raw_spi_setup, ptr %5, i32 0, i32 5
  %32 = load i32, ptr %31, align 4
  %33 = getelementptr inbounds %struct.trace_event_raw_spi_setup, ptr %5, i32 0, i32 6
  %34 = load i32, ptr %33, align 4
  tail call void (ptr, ptr, ...) @trace_event_printf(ptr noundef %0, ptr noundef nonnull @.str.34, i32 noundef %11, i32 noundef %13, i32 noundef %16, ptr noundef nonnull %19, ptr noundef nonnull %22, ptr noundef nonnull %25, ptr noundef nonnull %28, i32 noundef %30, i32 noundef %32, i32 noundef %34) #20
  %35 = tail call i32 @trace_handle_return(ptr noundef %9) #20
  br label %36

36:                                               ; preds = %8, %3
  %37 = phi i32 [ %35, %8 ], [ %6, %3 ]
  ret i32 %37
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @trace_raw_output_spi_set_cs(ptr noundef %0, i32 noundef %1, ptr noundef %2) #0 {
  %4 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 16
  %5 = load ptr, ptr %4, align 8
  %6 = tail call i32 @trace_raw_output_prep(ptr noundef %0, ptr noundef %2) #20
  %7 = icmp eq i32 %6, 1
  br i1 %7, label %8, label %24

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 15
  %10 = getelementptr inbounds %struct.trace_event_raw_spi_set_cs, ptr %5, i32 0, i32 1
  %11 = load i32, ptr %10, align 4
  %12 = getelementptr inbounds %struct.trace_event_raw_spi_set_cs, ptr %5, i32 0, i32 2
  %13 = load i32, ptr %12, align 4
  %14 = getelementptr inbounds %struct.trace_event_raw_spi_set_cs, ptr %5, i32 0, i32 4
  %15 = load i8, ptr %14, align 4, !range !14
  %16 = icmp eq i8 %15, 0
  %17 = select i1 %16, ptr @.str.44, ptr @.str.43
  %18 = getelementptr inbounds %struct.trace_event_raw_spi_set_cs, ptr %5, i32 0, i32 3
  %19 = load i32, ptr %18, align 4
  %20 = and i32 %19, 4
  %21 = icmp eq i32 %20, 0
  %22 = select i1 %21, ptr @.str.36, ptr @.str.45
  tail call void (ptr, ptr, ...) @trace_event_printf(ptr noundef %0, ptr noundef nonnull @.str.42, i32 noundef %11, i32 noundef %13, ptr noundef nonnull %17, ptr noundef nonnull %22) #20
  %23 = tail call i32 @trace_handle_return(ptr noundef %9) #20
  br label %24

24:                                               ; preds = %8, %3
  %25 = phi i32 [ %23, %8 ], [ %6, %3 ]
  ret i32 %25
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @trace_raw_output_spi_message(ptr noundef %0, i32 noundef %1, ptr noundef %2) #0 {
  %4 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 16
  %5 = load ptr, ptr %4, align 8
  %6 = tail call i32 @trace_raw_output_prep(ptr noundef %0, ptr noundef %2) #20
  %7 = icmp eq i32 %6, 1
  br i1 %7, label %8, label %17

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 15
  %10 = getelementptr inbounds %struct.trace_event_raw_spi_message, ptr %5, i32 0, i32 1
  %11 = load i32, ptr %10, align 4
  %12 = getelementptr inbounds %struct.trace_event_raw_spi_message, ptr %5, i32 0, i32 2
  %13 = load i32, ptr %12, align 4
  %14 = getelementptr inbounds %struct.trace_event_raw_spi_message, ptr %5, i32 0, i32 3
  %15 = load ptr, ptr %14, align 4
  tail call void (ptr, ptr, ...) @trace_event_printf(ptr noundef %0, ptr noundef nonnull @.str.48, i32 noundef %11, i32 noundef %13, ptr noundef %15) #20
  %16 = tail call i32 @trace_handle_return(ptr noundef %9) #20
  br label %17

17:                                               ; preds = %8, %3
  %18 = phi i32 [ %16, %8 ], [ %6, %3 ]
  ret i32 %18
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @trace_raw_output_spi_message_done(ptr noundef %0, i32 noundef %1, ptr noundef %2) #0 {
  %4 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 16
  %5 = load ptr, ptr %4, align 8
  %6 = tail call i32 @trace_raw_output_prep(ptr noundef %0, ptr noundef %2) #20
  %7 = icmp eq i32 %6, 1
  br i1 %7, label %8, label %21

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 15
  %10 = getelementptr inbounds %struct.trace_event_raw_spi_message_done, ptr %5, i32 0, i32 1
  %11 = load i32, ptr %10, align 4
  %12 = getelementptr inbounds %struct.trace_event_raw_spi_message_done, ptr %5, i32 0, i32 2
  %13 = load i32, ptr %12, align 4
  %14 = getelementptr inbounds %struct.trace_event_raw_spi_message_done, ptr %5, i32 0, i32 3
  %15 = load ptr, ptr %14, align 4
  %16 = getelementptr inbounds %struct.trace_event_raw_spi_message_done, ptr %5, i32 0, i32 5
  %17 = load i32, ptr %16, align 4
  %18 = getelementptr inbounds %struct.trace_event_raw_spi_message_done, ptr %5, i32 0, i32 4
  %19 = load i32, ptr %18, align 4
  tail call void (ptr, ptr, ...) @trace_event_printf(ptr noundef %0, ptr noundef nonnull @.str.52, i32 noundef %11, i32 noundef %13, ptr noundef %15, i32 noundef %17, i32 noundef %19) #20
  %20 = tail call i32 @trace_handle_return(ptr noundef %9) #20
  br label %21

21:                                               ; preds = %8, %3
  %22 = phi i32 [ %20, %8 ], [ %6, %3 ]
  ret i32 %22
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @trace_raw_output_spi_transfer(ptr noundef %0, i32 noundef %1, ptr noundef %2) #0 {
  %4 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 16
  %5 = load ptr, ptr %4, align 8
  %6 = tail call i32 @trace_raw_output_prep(ptr noundef %0, ptr noundef %2) #20
  %7 = icmp eq i32 %6, 1
  br i1 %7, label %8, label %29

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 15
  %10 = getelementptr inbounds %struct.trace_event_raw_spi_transfer, ptr %5, i32 0, i32 1
  %11 = load i32, ptr %10, align 4
  %12 = getelementptr inbounds %struct.trace_event_raw_spi_transfer, ptr %5, i32 0, i32 2
  %13 = load i32, ptr %12, align 4
  %14 = getelementptr inbounds %struct.trace_event_raw_spi_transfer, ptr %5, i32 0, i32 3
  %15 = load ptr, ptr %14, align 4
  %16 = getelementptr inbounds %struct.trace_event_raw_spi_transfer, ptr %5, i32 0, i32 4
  %17 = load i32, ptr %16, align 4
  %18 = getelementptr inbounds %struct.trace_event_raw_spi_transfer, ptr %5, i32 0, i32 6
  %19 = load i32, ptr %18, align 4
  %20 = lshr i32 %19, 16
  %21 = and i32 %19, 65535
  %22 = getelementptr i8, ptr %5, i32 %21
  %23 = getelementptr inbounds %struct.trace_event_raw_spi_transfer, ptr %5, i32 0, i32 5
  %24 = load i32, ptr %23, align 4
  %25 = lshr i32 %24, 16
  %26 = and i32 %24, 65535
  %27 = getelementptr i8, ptr %5, i32 %26
  tail call void (ptr, ptr, ...) @trace_event_printf(ptr noundef %0, ptr noundef nonnull @.str.59, i32 noundef %11, i32 noundef %13, ptr noundef %15, i32 noundef %17, i32 noundef %20, ptr noundef %22, i32 noundef %25, ptr noundef %27) #20
  %28 = tail call i32 @trace_handle_return(ptr noundef %9) #20
  br label %29

29:                                               ; preds = %8, %3
  %30 = phi i32 [ %28, %8 ], [ %6, %3 ]
  ret i32 %30
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @perf_trace_buf_alloc(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @perf_trace_run_bpf_submit(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i64 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #11

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.returnaddress(i32 immarg) #12

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.frameaddress.p0(i32 immarg) #12

; Function Attrs: nofree nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @modalias_show(ptr noundef %0, ptr nocapture noundef readnone %1, ptr nocapture noundef writeonly %2) #13 {
  %4 = getelementptr inbounds %struct.spi_device, ptr %0, i32 0, i32 11
  %5 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %2, ptr noundef nonnull @.str.61, ptr noundef nonnull @.str.62, ptr noundef %4)
  ret i32 %5
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #14

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @driver_override_show(ptr noundef %0, ptr nocapture noundef readnone %1, ptr nocapture noundef writeonly %2) #0 {
  %4 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 9
  tail call void @mutex_lock(ptr noundef %4) #20
  %5 = getelementptr inbounds %struct.spi_device, ptr %0, i32 0, i32 12
  %6 = load ptr, ptr %5, align 8
  %7 = icmp eq ptr %6, null
  %8 = select i1 %7, ptr @.str.36, ptr %6
  %9 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %2, i32 noundef 4096, ptr noundef nonnull @.str.64, ptr noundef %8)
  tail call void @mutex_unlock(ptr noundef %4) #20
  ret i32 %9
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @driver_override_store(ptr noundef %0, ptr nocapture noundef readnone %1, ptr noundef %2, i32 noundef %3) #0 {
  %5 = tail call ptr @memchr(ptr noundef %2, i32 noundef 10, i32 noundef %3)
  %6 = icmp eq ptr %5, null
  %7 = ptrtoint ptr %5 to i32
  %8 = ptrtoint ptr %2 to i32
  %9 = sub i32 %7, %8
  %10 = select i1 %6, i32 %3, i32 %9
  %11 = icmp ugt i32 %10, 4094
  br i1 %11, label %23, label %12

12:                                               ; preds = %4
  %13 = tail call ptr @kstrndup(ptr noundef %2, i32 noundef %10, i32 noundef 3264) #20
  %14 = icmp eq ptr %13, null
  br i1 %14, label %23, label %15

15:                                               ; preds = %12
  %16 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 9
  tail call void @mutex_lock(ptr noundef %16) #20
  %17 = getelementptr inbounds %struct.spi_device, ptr %0, i32 0, i32 12
  %18 = load ptr, ptr %17, align 8
  %19 = icmp eq i32 %10, 0
  br i1 %19, label %21, label %20

20:                                               ; preds = %15
  store ptr %13, ptr %17, align 8
  br label %22

21:                                               ; preds = %15
  store ptr null, ptr %17, align 8
  tail call void @kfree(ptr noundef nonnull %13) #20
  br label %22

22:                                               ; preds = %21, %20
  tail call void @mutex_unlock(ptr noundef %16) #20
  tail call void @kfree(ptr noundef %18) #20
  br label %23

23:                                               ; preds = %22, %12, %4
  %24 = phi i32 [ %3, %22 ], [ -22, %4 ], [ -12, %12 ]
  ret i32 %24
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #14

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local ptr @memchr(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kstrndup(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @spi_device_messages_show(ptr noundef %0, ptr nocapture noundef readnone %1, ptr nocapture noundef writeonly %2) #0 {
  %4 = getelementptr inbounds %struct.spi_device, ptr %0, i32 0, i32 19
  %5 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %4) #20
  %6 = getelementptr inbounds %struct.spi_device, ptr %0, i32 0, i32 19, i32 1
  %7 = load i32, ptr %6, align 4
  %8 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %2, ptr noundef nonnull @.str.67, i32 noundef %7) #20
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %4, i32 noundef %5) #20
  ret i32 %8
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @spi_device_transfers_show(ptr noundef %0, ptr nocapture noundef readnone %1, ptr nocapture noundef writeonly %2) #0 {
  %4 = getelementptr inbounds %struct.spi_device, ptr %0, i32 0, i32 19
  %5 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %4) #20
  %6 = getelementptr inbounds %struct.spi_device, ptr %0, i32 0, i32 19, i32 2
  %7 = load i32, ptr %6, align 8
  %8 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %2, ptr noundef nonnull @.str.67, i32 noundef %7) #20
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %4, i32 noundef %5) #20
  ret i32 %8
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @spi_device_errors_show(ptr noundef %0, ptr nocapture noundef readnone %1, ptr nocapture noundef writeonly %2) #0 {
  %4 = getelementptr inbounds %struct.spi_device, ptr %0, i32 0, i32 19
  %5 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %4) #20
  %6 = getelementptr inbounds %struct.spi_device, ptr %0, i32 0, i32 19, i32 3
  %7 = load i32, ptr %6, align 4
  %8 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %2, ptr noundef nonnull @.str.67, i32 noundef %7) #20
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %4, i32 noundef %5) #20
  ret i32 %8
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @spi_device_timedout_show(ptr noundef %0, ptr nocapture noundef readnone %1, ptr nocapture noundef writeonly %2) #0 {
  %4 = getelementptr inbounds %struct.spi_device, ptr %0, i32 0, i32 19
  %5 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %4) #20
  %6 = getelementptr inbounds %struct.spi_device, ptr %0, i32 0, i32 19, i32 4
  %7 = load i32, ptr %6, align 8
  %8 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %2, ptr noundef nonnull @.str.67, i32 noundef %7) #20
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %4, i32 noundef %5) #20
  ret i32 %8
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @spi_device_spi_sync_show(ptr noundef %0, ptr nocapture noundef readnone %1, ptr nocapture noundef writeonly %2) #0 {
  %4 = getelementptr inbounds %struct.spi_device, ptr %0, i32 0, i32 19
  %5 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %4) #20
  %6 = getelementptr inbounds %struct.spi_device, ptr %0, i32 0, i32 19, i32 5
  %7 = load i32, ptr %6, align 4
  %8 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %2, ptr noundef nonnull @.str.67, i32 noundef %7) #20
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %4, i32 noundef %5) #20
  ret i32 %8
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @spi_device_spi_sync_immediate_show(ptr noundef %0, ptr nocapture noundef readnone %1, ptr nocapture noundef writeonly %2) #0 {
  %4 = getelementptr inbounds %struct.spi_device, ptr %0, i32 0, i32 19
  %5 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %4) #20
  %6 = getelementptr inbounds %struct.spi_device, ptr %0, i32 0, i32 19, i32 6
  %7 = load i32, ptr %6, align 8
  %8 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %2, ptr noundef nonnull @.str.67, i32 noundef %7) #20
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %4, i32 noundef %5) #20
  ret i32 %8
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @spi_device_spi_async_show(ptr noundef %0, ptr nocapture noundef readnone %1, ptr nocapture noundef writeonly %2) #0 {
  %4 = getelementptr inbounds %struct.spi_device, ptr %0, i32 0, i32 19
  %5 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %4) #20
  %6 = getelementptr inbounds %struct.spi_device, ptr %0, i32 0, i32 19, i32 7
  %7 = load i32, ptr %6, align 4
  %8 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %2, ptr noundef nonnull @.str.67, i32 noundef %7) #20
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %4, i32 noundef %5) #20
  ret i32 %8
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @spi_device_bytes_show(ptr noundef %0, ptr nocapture noundef readnone %1, ptr nocapture noundef writeonly %2) #0 {
  %4 = getelementptr inbounds %struct.spi_device, ptr %0, i32 0, i32 19
  %5 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %4) #20
  %6 = getelementptr inbounds %struct.spi_device, ptr %0, i32 0, i32 19, i32 8
  %7 = load i64, ptr %6, align 8
  %8 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %2, ptr noundef nonnull @.str.75, i64 noundef %7) #20
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %4, i32 noundef %5) #20
  ret i32 %8
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @spi_device_bytes_rx_show(ptr noundef %0, ptr nocapture noundef readnone %1, ptr nocapture noundef writeonly %2) #0 {
  %4 = getelementptr inbounds %struct.spi_device, ptr %0, i32 0, i32 19
  %5 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %4) #20
  %6 = getelementptr inbounds %struct.spi_device, ptr %0, i32 0, i32 19, i32 9
  %7 = load i64, ptr %6, align 8
  %8 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %2, ptr noundef nonnull @.str.75, i64 noundef %7) #20
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %4, i32 noundef %5) #20
  ret i32 %8
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @spi_device_bytes_tx_show(ptr noundef %0, ptr nocapture noundef readnone %1, ptr nocapture noundef writeonly %2) #0 {
  %4 = getelementptr inbounds %struct.spi_device, ptr %0, i32 0, i32 19
  %5 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %4) #20
  %6 = getelementptr inbounds %struct.spi_device, ptr %0, i32 0, i32 19, i32 10
  %7 = load i64, ptr %6, align 8
  %8 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %2, ptr noundef nonnull @.str.75, i64 noundef %7) #20
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %4, i32 noundef %5) #20
  ret i32 %8
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @spi_device_transfer_bytes_histo0_show(ptr noundef %0, ptr nocapture noundef readnone %1, ptr nocapture noundef writeonly %2) #0 {
  %4 = getelementptr inbounds %struct.spi_device, ptr %0, i32 0, i32 19
  %5 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %4) #20
  %6 = getelementptr inbounds %struct.spi_device, ptr %0, i32 0, i32 19, i32 11
  %7 = load i32, ptr %6, align 8
  %8 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %2, ptr noundef nonnull @.str.67, i32 noundef %7) #20
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %4, i32 noundef %5) #20
  ret i32 %8
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @spi_device_transfer_bytes_histo1_show(ptr noundef %0, ptr nocapture noundef readnone %1, ptr nocapture noundef writeonly %2) #0 {
  %4 = getelementptr inbounds %struct.spi_device, ptr %0, i32 0, i32 19
  %5 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %4) #20
  %6 = getelementptr %struct.spi_device, ptr %0, i32 0, i32 19, i32 11, i32 1
  %7 = load i32, ptr %6, align 4
  %8 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %2, ptr noundef nonnull @.str.67, i32 noundef %7) #20
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %4, i32 noundef %5) #20
  ret i32 %8
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @spi_device_transfer_bytes_histo2_show(ptr noundef %0, ptr nocapture noundef readnone %1, ptr nocapture noundef writeonly %2) #0 {
  %4 = getelementptr inbounds %struct.spi_device, ptr %0, i32 0, i32 19
  %5 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %4) #20
  %6 = getelementptr %struct.spi_device, ptr %0, i32 0, i32 19, i32 11, i32 2
  %7 = load i32, ptr %6, align 8
  %8 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %2, ptr noundef nonnull @.str.67, i32 noundef %7) #20
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %4, i32 noundef %5) #20
  ret i32 %8
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @spi_device_transfer_bytes_histo3_show(ptr noundef %0, ptr nocapture noundef readnone %1, ptr nocapture noundef writeonly %2) #0 {
  %4 = getelementptr inbounds %struct.spi_device, ptr %0, i32 0, i32 19
  %5 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %4) #20
  %6 = getelementptr %struct.spi_device, ptr %0, i32 0, i32 19, i32 11, i32 3
  %7 = load i32, ptr %6, align 4
  %8 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %2, ptr noundef nonnull @.str.67, i32 noundef %7) #20
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %4, i32 noundef %5) #20
  ret i32 %8
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @spi_device_transfer_bytes_histo4_show(ptr noundef %0, ptr nocapture noundef readnone %1, ptr nocapture noundef writeonly %2) #0 {
  %4 = getelementptr inbounds %struct.spi_device, ptr %0, i32 0, i32 19
  %5 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %4) #20
  %6 = getelementptr %struct.spi_device, ptr %0, i32 0, i32 19, i32 11, i32 4
  %7 = load i32, ptr %6, align 8
  %8 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %2, ptr noundef nonnull @.str.67, i32 noundef %7) #20
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %4, i32 noundef %5) #20
  ret i32 %8
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @spi_device_transfer_bytes_histo5_show(ptr noundef %0, ptr nocapture noundef readnone %1, ptr nocapture noundef writeonly %2) #0 {
  %4 = getelementptr inbounds %struct.spi_device, ptr %0, i32 0, i32 19
  %5 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %4) #20
  %6 = getelementptr %struct.spi_device, ptr %0, i32 0, i32 19, i32 11, i32 5
  %7 = load i32, ptr %6, align 4
  %8 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %2, ptr noundef nonnull @.str.67, i32 noundef %7) #20
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %4, i32 noundef %5) #20
  ret i32 %8
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @spi_device_transfer_bytes_histo6_show(ptr noundef %0, ptr nocapture noundef readnone %1, ptr nocapture noundef writeonly %2) #0 {
  %4 = getelementptr inbounds %struct.spi_device, ptr %0, i32 0, i32 19
  %5 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %4) #20
  %6 = getelementptr %struct.spi_device, ptr %0, i32 0, i32 19, i32 11, i32 6
  %7 = load i32, ptr %6, align 8
  %8 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %2, ptr noundef nonnull @.str.67, i32 noundef %7) #20
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %4, i32 noundef %5) #20
  ret i32 %8
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @spi_device_transfer_bytes_histo7_show(ptr noundef %0, ptr nocapture noundef readnone %1, ptr nocapture noundef writeonly %2) #0 {
  %4 = getelementptr inbounds %struct.spi_device, ptr %0, i32 0, i32 19
  %5 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %4) #20
  %6 = getelementptr %struct.spi_device, ptr %0, i32 0, i32 19, i32 11, i32 7
  %7 = load i32, ptr %6, align 4
  %8 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %2, ptr noundef nonnull @.str.67, i32 noundef %7) #20
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %4, i32 noundef %5) #20
  ret i32 %8
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @spi_device_transfer_bytes_histo8_show(ptr noundef %0, ptr nocapture noundef readnone %1, ptr nocapture noundef writeonly %2) #0 {
  %4 = getelementptr inbounds %struct.spi_device, ptr %0, i32 0, i32 19
  %5 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %4) #20
  %6 = getelementptr %struct.spi_device, ptr %0, i32 0, i32 19, i32 11, i32 8
  %7 = load i32, ptr %6, align 8
  %8 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %2, ptr noundef nonnull @.str.67, i32 noundef %7) #20
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %4, i32 noundef %5) #20
  ret i32 %8
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @spi_device_transfer_bytes_histo9_show(ptr noundef %0, ptr nocapture noundef readnone %1, ptr nocapture noundef writeonly %2) #0 {
  %4 = getelementptr inbounds %struct.spi_device, ptr %0, i32 0, i32 19
  %5 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %4) #20
  %6 = getelementptr %struct.spi_device, ptr %0, i32 0, i32 19, i32 11, i32 9
  %7 = load i32, ptr %6, align 4
  %8 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %2, ptr noundef nonnull @.str.67, i32 noundef %7) #20
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %4, i32 noundef %5) #20
  ret i32 %8
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @spi_device_transfer_bytes_histo10_show(ptr noundef %0, ptr nocapture noundef readnone %1, ptr nocapture noundef writeonly %2) #0 {
  %4 = getelementptr inbounds %struct.spi_device, ptr %0, i32 0, i32 19
  %5 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %4) #20
  %6 = getelementptr %struct.spi_device, ptr %0, i32 0, i32 19, i32 11, i32 10
  %7 = load i32, ptr %6, align 8
  %8 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %2, ptr noundef nonnull @.str.67, i32 noundef %7) #20
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %4, i32 noundef %5) #20
  ret i32 %8
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @spi_device_transfer_bytes_histo11_show(ptr noundef %0, ptr nocapture noundef readnone %1, ptr nocapture noundef writeonly %2) #0 {
  %4 = getelementptr inbounds %struct.spi_device, ptr %0, i32 0, i32 19
  %5 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %4) #20
  %6 = getelementptr %struct.spi_device, ptr %0, i32 0, i32 19, i32 11, i32 11
  %7 = load i32, ptr %6, align 4
  %8 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %2, ptr noundef nonnull @.str.67, i32 noundef %7) #20
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %4, i32 noundef %5) #20
  ret i32 %8
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @spi_device_transfer_bytes_histo12_show(ptr noundef %0, ptr nocapture noundef readnone %1, ptr nocapture noundef writeonly %2) #0 {
  %4 = getelementptr inbounds %struct.spi_device, ptr %0, i32 0, i32 19
  %5 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %4) #20
  %6 = getelementptr %struct.spi_device, ptr %0, i32 0, i32 19, i32 11, i32 12
  %7 = load i32, ptr %6, align 8
  %8 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %2, ptr noundef nonnull @.str.67, i32 noundef %7) #20
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %4, i32 noundef %5) #20
  ret i32 %8
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @spi_device_transfer_bytes_histo13_show(ptr noundef %0, ptr nocapture noundef readnone %1, ptr nocapture noundef writeonly %2) #0 {
  %4 = getelementptr inbounds %struct.spi_device, ptr %0, i32 0, i32 19
  %5 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %4) #20
  %6 = getelementptr %struct.spi_device, ptr %0, i32 0, i32 19, i32 11, i32 13
  %7 = load i32, ptr %6, align 4
  %8 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %2, ptr noundef nonnull @.str.67, i32 noundef %7) #20
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %4, i32 noundef %5) #20
  ret i32 %8
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @spi_device_transfer_bytes_histo14_show(ptr noundef %0, ptr nocapture noundef readnone %1, ptr nocapture noundef writeonly %2) #0 {
  %4 = getelementptr inbounds %struct.spi_device, ptr %0, i32 0, i32 19
  %5 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %4) #20
  %6 = getelementptr %struct.spi_device, ptr %0, i32 0, i32 19, i32 11, i32 14
  %7 = load i32, ptr %6, align 8
  %8 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %2, ptr noundef nonnull @.str.67, i32 noundef %7) #20
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %4, i32 noundef %5) #20
  ret i32 %8
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @spi_device_transfer_bytes_histo15_show(ptr noundef %0, ptr nocapture noundef readnone %1, ptr nocapture noundef writeonly %2) #0 {
  %4 = getelementptr inbounds %struct.spi_device, ptr %0, i32 0, i32 19
  %5 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %4) #20
  %6 = getelementptr %struct.spi_device, ptr %0, i32 0, i32 19, i32 11, i32 15
  %7 = load i32, ptr %6, align 4
  %8 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %2, ptr noundef nonnull @.str.67, i32 noundef %7) #20
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %4, i32 noundef %5) #20
  ret i32 %8
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @spi_device_transfer_bytes_histo16_show(ptr noundef %0, ptr nocapture noundef readnone %1, ptr nocapture noundef writeonly %2) #0 {
  %4 = getelementptr inbounds %struct.spi_device, ptr %0, i32 0, i32 19
  %5 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %4) #20
  %6 = getelementptr %struct.spi_device, ptr %0, i32 0, i32 19, i32 11, i32 16
  %7 = load i32, ptr %6, align 8
  %8 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %2, ptr noundef nonnull @.str.67, i32 noundef %7) #20
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %4, i32 noundef %5) #20
  ret i32 %8
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @spi_device_transfers_split_maxsize_show(ptr noundef %0, ptr nocapture noundef readnone %1, ptr nocapture noundef writeonly %2) #0 {
  %4 = getelementptr inbounds %struct.spi_device, ptr %0, i32 0, i32 19
  %5 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %4) #20
  %6 = getelementptr inbounds %struct.spi_device, ptr %0, i32 0, i32 19, i32 12
  %7 = load i32, ptr %6, align 4
  %8 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %2, ptr noundef nonnull @.str.67, i32 noundef %7) #20
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %4, i32 noundef %5) #20
  ret i32 %8
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_match_device(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @add_uevent_var(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_clk_set_defaults(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_irq_get(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_pm_domain_attach(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dev_pm_domain_detach(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @spidev_release(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.spi_device, ptr %0, i32 0, i32 1
  %3 = load ptr, ptr %2, align 8
  %4 = icmp eq ptr %3, null
  br i1 %4, label %6, label %5

5:                                                ; preds = %1
  tail call void @put_device(ptr noundef nonnull %3) #20
  br label %6

6:                                                ; preds = %5, %1
  %7 = getelementptr inbounds %struct.spi_device, ptr %0, i32 0, i32 12
  %8 = load ptr, ptr %7, align 8
  tail call void @kfree(ptr noundef %8) #20
  tail call void @kfree(ptr noundef %0) #20
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @get_device(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @__spi_add_device(ptr noundef %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.spi_device, ptr %0, i32 0, i32 1
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = tail call i32 @bus_for_each_dev(ptr noundef nonnull @spi_bus_type, ptr noundef null, ptr noundef %0, ptr noundef nonnull @spi_dev_check) #20
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %12, label %8

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.spi_device, ptr %0, i32 0, i32 4
  %10 = load i8, ptr %9, align 4
  %11 = zext i8 %10 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %5, ptr noundef nonnull @.str.101, i32 noundef %11) #21
  br label %66

12:                                               ; preds = %1
  %13 = getelementptr inbounds %struct.kobject, ptr %3, i32 0, i32 7
  %14 = load i8, ptr %13, align 8
  %15 = and i8 %14, 2
  %16 = icmp eq i8 %15, 0
  br i1 %16, label %66, label %17

17:                                               ; preds = %12
  %18 = getelementptr inbounds %struct.spi_controller, ptr %3, i32 0, i32 55
  %19 = load ptr, ptr %18, align 4
  %20 = icmp eq ptr %19, null
  br i1 %20, label %28, label %21

21:                                               ; preds = %17
  %22 = getelementptr inbounds %struct.spi_device, ptr %0, i32 0, i32 4
  %23 = load i8, ptr %22, align 4
  %24 = zext i8 %23 to i32
  %25 = getelementptr ptr, ptr %19, i32 %24
  %26 = load ptr, ptr %25, align 4
  %27 = getelementptr inbounds %struct.spi_device, ptr %0, i32 0, i32 14
  store ptr %26, ptr %27, align 8
  br label %39

28:                                               ; preds = %17
  %29 = getelementptr inbounds %struct.spi_controller, ptr %3, i32 0, i32 54
  %30 = load ptr, ptr %29, align 8
  %31 = icmp eq ptr %30, null
  br i1 %31, label %39, label %32

32:                                               ; preds = %28
  %33 = getelementptr inbounds %struct.spi_device, ptr %0, i32 0, i32 4
  %34 = load i8, ptr %33, align 4
  %35 = zext i8 %34 to i32
  %36 = getelementptr i32, ptr %30, i32 %35
  %37 = load i32, ptr %36, align 4
  %38 = getelementptr inbounds %struct.spi_device, ptr %0, i32 0, i32 13
  store i32 %37, ptr %38, align 4
  br label %39

39:                                               ; preds = %32, %28, %21
  %40 = tail call i32 @spi_setup(ptr noundef %0)
  %41 = icmp slt i32 %40, 0
  br i1 %41, label %42, label %50

42:                                               ; preds = %39
  %43 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 3
  %44 = load ptr, ptr %43, align 4
  %45 = icmp eq ptr %44, null
  br i1 %45, label %46, label %48

46:                                               ; preds = %42
  %47 = load ptr, ptr %0, align 4
  br label %48

48:                                               ; preds = %46, %42
  %49 = phi ptr [ %47, %46 ], [ %44, %42 ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %5, ptr noundef nonnull @.str.102, ptr noundef %49, i32 noundef %40) #21
  br label %66

50:                                               ; preds = %39
  %51 = tail call i32 @device_add(ptr noundef %0) #20
  %52 = icmp slt i32 %51, 0
  br i1 %52, label %53, label %66

53:                                               ; preds = %50
  %54 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 3
  %55 = load ptr, ptr %54, align 4
  %56 = icmp eq ptr %55, null
  br i1 %56, label %57, label %59

57:                                               ; preds = %53
  %58 = load ptr, ptr %0, align 4
  br label %59

59:                                               ; preds = %57, %53
  %60 = phi ptr [ %58, %57 ], [ %55, %53 ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %5, ptr noundef nonnull @.str.103, ptr noundef %60, i32 noundef %51) #21
  %61 = load ptr, ptr %2, align 8
  %62 = getelementptr inbounds %struct.spi_controller, ptr %61, i32 0, i32 23
  %63 = load ptr, ptr %62, align 8
  %64 = icmp eq ptr %63, null
  br i1 %64, label %66, label %65

65:                                               ; preds = %59
  tail call void %63(ptr noundef %0) #20
  br label %66

66:                                               ; preds = %65, %59, %50, %48, %12, %8
  %67 = phi i32 [ %6, %8 ], [ %40, %48 ], [ -19, %12 ], [ %51, %50 ], [ %51, %59 ], [ %51, %65 ]
  ret i32 %67
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bus_for_each_dev(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define internal i32 @spi_dev_check(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #8 {
  %3 = getelementptr inbounds %struct.spi_device, ptr %0, i32 0, i32 1
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.spi_device, ptr %1, i32 0, i32 1
  %6 = load ptr, ptr %5, align 8
  %7 = icmp eq ptr %4, %6
  br i1 %7, label %8, label %14

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.spi_device, ptr %0, i32 0, i32 4
  %10 = load i8, ptr %9, align 4
  %11 = getelementptr inbounds %struct.spi_device, ptr %1, i32 0, i32 4
  %12 = load i8, ptr %11, align 4
  %13 = icmp eq i8 %10, %12
  br i1 %13, label %15, label %14

14:                                               ; preds = %8, %2
  br label %15

15:                                               ; preds = %14, %8
  %16 = phi i32 [ 0, %14 ], [ -16, %8 ]
  ret i32 %16
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #15

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #16

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__kmap_to_page(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ktime_get_real_ts64(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @__spi_unmap_msg(ptr noundef %0, ptr noundef readonly %1) unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.spi_controller, ptr %0, i32 0, i32 38
  %4 = load i8, ptr %3, align 2, !range !14
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %63, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.spi_controller, ptr %0, i32 0, i32 24
  %8 = load ptr, ptr %7, align 4
  %9 = icmp eq ptr %8, null
  br i1 %9, label %63, label %10

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.spi_controller, ptr %0, i32 0, i32 60
  %12 = load ptr, ptr %11, align 8
  %13 = icmp eq ptr %12, null
  br i1 %13, label %17, label %14

14:                                               ; preds = %10
  %15 = load ptr, ptr %12, align 4
  %16 = getelementptr inbounds %struct.dma_device, ptr %15, i32 0, i32 15
  br label %19

17:                                               ; preds = %10
  %18 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 1
  br label %19

19:                                               ; preds = %17, %14
  %20 = phi ptr [ %16, %14 ], [ %18, %17 ]
  %21 = load ptr, ptr %20, align 4
  %22 = getelementptr inbounds %struct.spi_controller, ptr %0, i32 0, i32 61
  %23 = load ptr, ptr %22, align 4
  %24 = icmp eq ptr %23, null
  br i1 %24, label %28, label %25

25:                                               ; preds = %19
  %26 = load ptr, ptr %23, align 4
  %27 = getelementptr inbounds %struct.dma_device, ptr %26, i32 0, i32 15
  br label %30

28:                                               ; preds = %19
  %29 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 1
  br label %30

30:                                               ; preds = %28, %25
  %31 = phi ptr [ %27, %25 ], [ %29, %28 ]
  %32 = load ptr, ptr %31, align 4
  %33 = load ptr, ptr %1, align 4
  %34 = icmp eq ptr %33, %1
  br i1 %34, label %62, label %35

35:                                               ; preds = %30
  %36 = getelementptr inbounds %struct.spi_message, ptr %1, i32 0, i32 1
  br label %37

37:                                               ; preds = %60, %35
  %38 = phi ptr [ %8, %35 ], [ %61, %60 ]
  %39 = phi ptr [ %33, %35 ], [ %58, %60 ]
  %40 = getelementptr i8, ptr %39, i32 -84
  %41 = load ptr, ptr %36, align 4
  %42 = tail call zeroext i1 %38(ptr noundef %0, ptr noundef %41, ptr noundef %40) #20
  br i1 %42, label %43, label %57

43:                                               ; preds = %37
  %44 = getelementptr i8, ptr %39, i32 -44
  %45 = load i32, ptr %44, align 4
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %50, label %47

47:                                               ; preds = %43
  %48 = getelementptr i8, ptr %39, i32 -52
  %49 = load ptr, ptr %48, align 4
  tail call void @dma_unmap_sg_attrs(ptr noundef %32, ptr noundef %49, i32 noundef %45, i32 noundef 2, i32 noundef 0) #20
  tail call void @sg_free_table(ptr noundef %48) #20
  br label %50

50:                                               ; preds = %47, %43
  %51 = getelementptr i8, ptr %39, i32 -56
  %52 = load i32, ptr %51, align 4
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %57, label %54

54:                                               ; preds = %50
  %55 = getelementptr i8, ptr %39, i32 -64
  %56 = load ptr, ptr %55, align 4
  tail call void @dma_unmap_sg_attrs(ptr noundef %21, ptr noundef %56, i32 noundef %52, i32 noundef 1, i32 noundef 0) #20
  tail call void @sg_free_table(ptr noundef %55) #20
  br label %57

57:                                               ; preds = %54, %50, %37
  %58 = load ptr, ptr %39, align 4
  %59 = icmp eq ptr %58, %1
  br i1 %59, label %62, label %60

60:                                               ; preds = %57
  %61 = load ptr, ptr %7, align 4
  br label %37

62:                                               ; preds = %57, %30
  store i8 0, ptr %3, align 2
  br label %63

63:                                               ; preds = %62, %6, %2
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.thread.pointer() #12

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @spi_idle_runtime_pm(ptr nocapture noundef readonly %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.spi_controller, ptr %0, i32 0, i32 36
  %3 = load i8, ptr %2, align 4, !range !14
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %12, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 1
  %7 = load ptr, ptr %6, align 4
  %8 = tail call i64 @ktime_get_mono_fast_ns() #20
  %9 = getelementptr inbounds %struct.device, ptr %7, i32 0, i32 11, i32 22
  store volatile i64 %8, ptr %9, align 8
  %10 = load ptr, ptr %6, align 4
  %11 = tail call i32 @__pm_runtime_suspend(ptr noundef %10, i32 noundef 13) #20
  br label %12

12:                                               ; preds = %5, %1
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @trace_spi_controller_idle(ptr noundef %0) unnamed_addr #17 {
  %2 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_spi_controller_idle, i32 0, i32 1), align 4
  %3 = icmp sgt i32 %2, 0
  br i1 %3, label %4, label %27

4:                                                ; preds = %1
  %5 = tail call ptr @llvm.thread.pointer() #20
  %6 = getelementptr inbounds %struct.thread_info, ptr %5, i32 0, i32 2
  %7 = load i32, ptr %6, align 8
  %8 = lshr i32 %7, 5
  %9 = getelementptr i32, ptr @__cpu_online_mask, i32 %8
  %10 = load volatile i32, ptr %9, align 4
  %11 = and i32 %7, 31
  %12 = shl nuw i32 1, %11
  %13 = and i32 %12, %10
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %27, label %15

15:                                               ; preds = %4
  tail call void asm sideeffect "", "~{memory}"() #20, !srcloc !21
  %16 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_spi_controller_idle, i32 0, i32 7), align 4
  %17 = icmp eq ptr %16, null
  br i1 %17, label %26, label %18

18:                                               ; preds = %18, %15
  %19 = phi ptr [ %23, %18 ], [ %16, %15 ]
  %20 = load volatile ptr, ptr %19, align 4
  %21 = getelementptr inbounds %struct.tracepoint_func, ptr %19, i32 0, i32 1
  %22 = load ptr, ptr %21, align 4
  tail call void %20(ptr noundef %22, ptr noundef %0) #20
  %23 = getelementptr %struct.tracepoint_func, ptr %19, i32 1
  %24 = load ptr, ptr %23, align 4
  %25 = icmp eq ptr %24, null
  br i1 %25, label %26, label %18

26:                                               ; preds = %18, %15
  tail call void asm sideeffect "", "~{memory}"() #20, !srcloc !22
  br label %27

27:                                               ; preds = %26, %4, %1
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @trace_spi_controller_busy(ptr noundef %0) unnamed_addr #17 {
  %2 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_spi_controller_busy, i32 0, i32 1), align 4
  %3 = icmp sgt i32 %2, 0
  br i1 %3, label %4, label %27

4:                                                ; preds = %1
  %5 = tail call ptr @llvm.thread.pointer() #20
  %6 = getelementptr inbounds %struct.thread_info, ptr %5, i32 0, i32 2
  %7 = load i32, ptr %6, align 8
  %8 = lshr i32 %7, 5
  %9 = getelementptr i32, ptr @__cpu_online_mask, i32 %8
  %10 = load volatile i32, ptr %9, align 4
  %11 = and i32 %7, 31
  %12 = shl nuw i32 1, %11
  %13 = and i32 %12, %10
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %27, label %15

15:                                               ; preds = %4
  tail call void asm sideeffect "", "~{memory}"() #20, !srcloc !38
  %16 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_spi_controller_busy, i32 0, i32 7), align 4
  %17 = icmp eq ptr %16, null
  br i1 %17, label %26, label %18

18:                                               ; preds = %18, %15
  %19 = phi ptr [ %23, %18 ], [ %16, %15 ]
  %20 = load volatile ptr, ptr %19, align 4
  %21 = getelementptr inbounds %struct.tracepoint_func, ptr %19, i32 0, i32 1
  %22 = load ptr, ptr %21, align 4
  tail call void %20(ptr noundef %22, ptr noundef %0) #20
  %23 = getelementptr %struct.tracepoint_func, ptr %19, i32 1
  %24 = load ptr, ptr %23, align 4
  %25 = icmp eq ptr %24, null
  br i1 %25, label %26, label %18

26:                                               ; preds = %18, %15
  tail call void asm sideeffect "", "~{memory}"() #20, !srcloc !39
  br label %27

27:                                               ; preds = %26, %4, %1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_idle(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(1)
declare dso_local noalias ptr @krealloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #18

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__cond_resched() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @mutex_is_locked(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @spi_controller_release(ptr noundef %0) #0 {
  tail call void @kfree(ptr noundef %0) #20
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @spi_controller_messages_show(ptr noundef %0, ptr nocapture noundef readnone %1, ptr nocapture noundef writeonly %2) #0 {
  %4 = getelementptr inbounds %struct.spi_controller, ptr %0, i32 0, i32 59
  %5 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %4) #20
  %6 = getelementptr inbounds %struct.spi_controller, ptr %0, i32 0, i32 59, i32 1
  %7 = load i32, ptr %6, align 4
  %8 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %2, ptr noundef nonnull @.str.67, i32 noundef %7) #20
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %4, i32 noundef %5) #20
  ret i32 %8
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @spi_controller_transfers_show(ptr noundef %0, ptr nocapture noundef readnone %1, ptr nocapture noundef writeonly %2) #0 {
  %4 = getelementptr inbounds %struct.spi_controller, ptr %0, i32 0, i32 59
  %5 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %4) #20
  %6 = getelementptr inbounds %struct.spi_controller, ptr %0, i32 0, i32 59, i32 2
  %7 = load i32, ptr %6, align 8
  %8 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %2, ptr noundef nonnull @.str.67, i32 noundef %7) #20
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %4, i32 noundef %5) #20
  ret i32 %8
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @spi_controller_errors_show(ptr noundef %0, ptr nocapture noundef readnone %1, ptr nocapture noundef writeonly %2) #0 {
  %4 = getelementptr inbounds %struct.spi_controller, ptr %0, i32 0, i32 59
  %5 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %4) #20
  %6 = getelementptr inbounds %struct.spi_controller, ptr %0, i32 0, i32 59, i32 3
  %7 = load i32, ptr %6, align 4
  %8 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %2, ptr noundef nonnull @.str.67, i32 noundef %7) #20
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %4, i32 noundef %5) #20
  ret i32 %8
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @spi_controller_timedout_show(ptr noundef %0, ptr nocapture noundef readnone %1, ptr nocapture noundef writeonly %2) #0 {
  %4 = getelementptr inbounds %struct.spi_controller, ptr %0, i32 0, i32 59
  %5 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %4) #20
  %6 = getelementptr inbounds %struct.spi_controller, ptr %0, i32 0, i32 59, i32 4
  %7 = load i32, ptr %6, align 8
  %8 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %2, ptr noundef nonnull @.str.67, i32 noundef %7) #20
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %4, i32 noundef %5) #20
  ret i32 %8
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @spi_controller_spi_sync_show(ptr noundef %0, ptr nocapture noundef readnone %1, ptr nocapture noundef writeonly %2) #0 {
  %4 = getelementptr inbounds %struct.spi_controller, ptr %0, i32 0, i32 59
  %5 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %4) #20
  %6 = getelementptr inbounds %struct.spi_controller, ptr %0, i32 0, i32 59, i32 5
  %7 = load i32, ptr %6, align 4
  %8 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %2, ptr noundef nonnull @.str.67, i32 noundef %7) #20
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %4, i32 noundef %5) #20
  ret i32 %8
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @spi_controller_spi_sync_immediate_show(ptr noundef %0, ptr nocapture noundef readnone %1, ptr nocapture noundef writeonly %2) #0 {
  %4 = getelementptr inbounds %struct.spi_controller, ptr %0, i32 0, i32 59
  %5 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %4) #20
  %6 = getelementptr inbounds %struct.spi_controller, ptr %0, i32 0, i32 59, i32 6
  %7 = load i32, ptr %6, align 8
  %8 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %2, ptr noundef nonnull @.str.67, i32 noundef %7) #20
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %4, i32 noundef %5) #20
  ret i32 %8
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @spi_controller_spi_async_show(ptr noundef %0, ptr nocapture noundef readnone %1, ptr nocapture noundef writeonly %2) #0 {
  %4 = getelementptr inbounds %struct.spi_controller, ptr %0, i32 0, i32 59
  %5 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %4) #20
  %6 = getelementptr inbounds %struct.spi_controller, ptr %0, i32 0, i32 59, i32 7
  %7 = load i32, ptr %6, align 4
  %8 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %2, ptr noundef nonnull @.str.67, i32 noundef %7) #20
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %4, i32 noundef %5) #20
  ret i32 %8
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @spi_controller_bytes_show(ptr noundef %0, ptr nocapture noundef readnone %1, ptr nocapture noundef writeonly %2) #0 {
  %4 = getelementptr inbounds %struct.spi_controller, ptr %0, i32 0, i32 59
  %5 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %4) #20
  %6 = getelementptr inbounds %struct.spi_controller, ptr %0, i32 0, i32 59, i32 8
  %7 = load i64, ptr %6, align 8
  %8 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %2, ptr noundef nonnull @.str.75, i64 noundef %7) #20
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %4, i32 noundef %5) #20
  ret i32 %8
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @spi_controller_bytes_rx_show(ptr noundef %0, ptr nocapture noundef readnone %1, ptr nocapture noundef writeonly %2) #0 {
  %4 = getelementptr inbounds %struct.spi_controller, ptr %0, i32 0, i32 59
  %5 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %4) #20
  %6 = getelementptr inbounds %struct.spi_controller, ptr %0, i32 0, i32 59, i32 9
  %7 = load i64, ptr %6, align 8
  %8 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %2, ptr noundef nonnull @.str.75, i64 noundef %7) #20
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %4, i32 noundef %5) #20
  ret i32 %8
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @spi_controller_bytes_tx_show(ptr noundef %0, ptr nocapture noundef readnone %1, ptr nocapture noundef writeonly %2) #0 {
  %4 = getelementptr inbounds %struct.spi_controller, ptr %0, i32 0, i32 59
  %5 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %4) #20
  %6 = getelementptr inbounds %struct.spi_controller, ptr %0, i32 0, i32 59, i32 10
  %7 = load i64, ptr %6, align 8
  %8 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %2, ptr noundef nonnull @.str.75, i64 noundef %7) #20
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %4, i32 noundef %5) #20
  ret i32 %8
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @spi_controller_transfer_bytes_histo0_show(ptr noundef %0, ptr nocapture noundef readnone %1, ptr nocapture noundef writeonly %2) #0 {
  %4 = getelementptr inbounds %struct.spi_controller, ptr %0, i32 0, i32 59
  %5 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %4) #20
  %6 = getelementptr inbounds %struct.spi_controller, ptr %0, i32 0, i32 59, i32 11
  %7 = load i32, ptr %6, align 8
  %8 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %2, ptr noundef nonnull @.str.67, i32 noundef %7) #20
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %4, i32 noundef %5) #20
  ret i32 %8
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @spi_controller_transfer_bytes_histo1_show(ptr noundef %0, ptr nocapture noundef readnone %1, ptr nocapture noundef writeonly %2) #0 {
  %4 = getelementptr inbounds %struct.spi_controller, ptr %0, i32 0, i32 59
  %5 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %4) #20
  %6 = getelementptr %struct.spi_controller, ptr %0, i32 0, i32 59, i32 11, i32 1
  %7 = load i32, ptr %6, align 4
  %8 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %2, ptr noundef nonnull @.str.67, i32 noundef %7) #20
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %4, i32 noundef %5) #20
  ret i32 %8
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @spi_controller_transfer_bytes_histo2_show(ptr noundef %0, ptr nocapture noundef readnone %1, ptr nocapture noundef writeonly %2) #0 {
  %4 = getelementptr inbounds %struct.spi_controller, ptr %0, i32 0, i32 59
  %5 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %4) #20
  %6 = getelementptr %struct.spi_controller, ptr %0, i32 0, i32 59, i32 11, i32 2
  %7 = load i32, ptr %6, align 8
  %8 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %2, ptr noundef nonnull @.str.67, i32 noundef %7) #20
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %4, i32 noundef %5) #20
  ret i32 %8
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @spi_controller_transfer_bytes_histo3_show(ptr noundef %0, ptr nocapture noundef readnone %1, ptr nocapture noundef writeonly %2) #0 {
  %4 = getelementptr inbounds %struct.spi_controller, ptr %0, i32 0, i32 59
  %5 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %4) #20
  %6 = getelementptr %struct.spi_controller, ptr %0, i32 0, i32 59, i32 11, i32 3
  %7 = load i32, ptr %6, align 4
  %8 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %2, ptr noundef nonnull @.str.67, i32 noundef %7) #20
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %4, i32 noundef %5) #20
  ret i32 %8
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @spi_controller_transfer_bytes_histo4_show(ptr noundef %0, ptr nocapture noundef readnone %1, ptr nocapture noundef writeonly %2) #0 {
  %4 = getelementptr inbounds %struct.spi_controller, ptr %0, i32 0, i32 59
  %5 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %4) #20
  %6 = getelementptr %struct.spi_controller, ptr %0, i32 0, i32 59, i32 11, i32 4
  %7 = load i32, ptr %6, align 8
  %8 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %2, ptr noundef nonnull @.str.67, i32 noundef %7) #20
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %4, i32 noundef %5) #20
  ret i32 %8
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @spi_controller_transfer_bytes_histo5_show(ptr noundef %0, ptr nocapture noundef readnone %1, ptr nocapture noundef writeonly %2) #0 {
  %4 = getelementptr inbounds %struct.spi_controller, ptr %0, i32 0, i32 59
  %5 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %4) #20
  %6 = getelementptr %struct.spi_controller, ptr %0, i32 0, i32 59, i32 11, i32 5
  %7 = load i32, ptr %6, align 4
  %8 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %2, ptr noundef nonnull @.str.67, i32 noundef %7) #20
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %4, i32 noundef %5) #20
  ret i32 %8
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @spi_controller_transfer_bytes_histo6_show(ptr noundef %0, ptr nocapture noundef readnone %1, ptr nocapture noundef writeonly %2) #0 {
  %4 = getelementptr inbounds %struct.spi_controller, ptr %0, i32 0, i32 59
  %5 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %4) #20
  %6 = getelementptr %struct.spi_controller, ptr %0, i32 0, i32 59, i32 11, i32 6
  %7 = load i32, ptr %6, align 8
  %8 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %2, ptr noundef nonnull @.str.67, i32 noundef %7) #20
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %4, i32 noundef %5) #20
  ret i32 %8
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @spi_controller_transfer_bytes_histo7_show(ptr noundef %0, ptr nocapture noundef readnone %1, ptr nocapture noundef writeonly %2) #0 {
  %4 = getelementptr inbounds %struct.spi_controller, ptr %0, i32 0, i32 59
  %5 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %4) #20
  %6 = getelementptr %struct.spi_controller, ptr %0, i32 0, i32 59, i32 11, i32 7
  %7 = load i32, ptr %6, align 4
  %8 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %2, ptr noundef nonnull @.str.67, i32 noundef %7) #20
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %4, i32 noundef %5) #20
  ret i32 %8
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @spi_controller_transfer_bytes_histo8_show(ptr noundef %0, ptr nocapture noundef readnone %1, ptr nocapture noundef writeonly %2) #0 {
  %4 = getelementptr inbounds %struct.spi_controller, ptr %0, i32 0, i32 59
  %5 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %4) #20
  %6 = getelementptr %struct.spi_controller, ptr %0, i32 0, i32 59, i32 11, i32 8
  %7 = load i32, ptr %6, align 8
  %8 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %2, ptr noundef nonnull @.str.67, i32 noundef %7) #20
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %4, i32 noundef %5) #20
  ret i32 %8
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @spi_controller_transfer_bytes_histo9_show(ptr noundef %0, ptr nocapture noundef readnone %1, ptr nocapture noundef writeonly %2) #0 {
  %4 = getelementptr inbounds %struct.spi_controller, ptr %0, i32 0, i32 59
  %5 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %4) #20
  %6 = getelementptr %struct.spi_controller, ptr %0, i32 0, i32 59, i32 11, i32 9
  %7 = load i32, ptr %6, align 4
  %8 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %2, ptr noundef nonnull @.str.67, i32 noundef %7) #20
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %4, i32 noundef %5) #20
  ret i32 %8
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @spi_controller_transfer_bytes_histo10_show(ptr noundef %0, ptr nocapture noundef readnone %1, ptr nocapture noundef writeonly %2) #0 {
  %4 = getelementptr inbounds %struct.spi_controller, ptr %0, i32 0, i32 59
  %5 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %4) #20
  %6 = getelementptr %struct.spi_controller, ptr %0, i32 0, i32 59, i32 11, i32 10
  %7 = load i32, ptr %6, align 8
  %8 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %2, ptr noundef nonnull @.str.67, i32 noundef %7) #20
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %4, i32 noundef %5) #20
  ret i32 %8
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @spi_controller_transfer_bytes_histo11_show(ptr noundef %0, ptr nocapture noundef readnone %1, ptr nocapture noundef writeonly %2) #0 {
  %4 = getelementptr inbounds %struct.spi_controller, ptr %0, i32 0, i32 59
  %5 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %4) #20
  %6 = getelementptr %struct.spi_controller, ptr %0, i32 0, i32 59, i32 11, i32 11
  %7 = load i32, ptr %6, align 4
  %8 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %2, ptr noundef nonnull @.str.67, i32 noundef %7) #20
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %4, i32 noundef %5) #20
  ret i32 %8
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @spi_controller_transfer_bytes_histo12_show(ptr noundef %0, ptr nocapture noundef readnone %1, ptr nocapture noundef writeonly %2) #0 {
  %4 = getelementptr inbounds %struct.spi_controller, ptr %0, i32 0, i32 59
  %5 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %4) #20
  %6 = getelementptr %struct.spi_controller, ptr %0, i32 0, i32 59, i32 11, i32 12
  %7 = load i32, ptr %6, align 8
  %8 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %2, ptr noundef nonnull @.str.67, i32 noundef %7) #20
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %4, i32 noundef %5) #20
  ret i32 %8
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @spi_controller_transfer_bytes_histo13_show(ptr noundef %0, ptr nocapture noundef readnone %1, ptr nocapture noundef writeonly %2) #0 {
  %4 = getelementptr inbounds %struct.spi_controller, ptr %0, i32 0, i32 59
  %5 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %4) #20
  %6 = getelementptr %struct.spi_controller, ptr %0, i32 0, i32 59, i32 11, i32 13
  %7 = load i32, ptr %6, align 4
  %8 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %2, ptr noundef nonnull @.str.67, i32 noundef %7) #20
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %4, i32 noundef %5) #20
  ret i32 %8
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @spi_controller_transfer_bytes_histo14_show(ptr noundef %0, ptr nocapture noundef readnone %1, ptr nocapture noundef writeonly %2) #0 {
  %4 = getelementptr inbounds %struct.spi_controller, ptr %0, i32 0, i32 59
  %5 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %4) #20
  %6 = getelementptr %struct.spi_controller, ptr %0, i32 0, i32 59, i32 11, i32 14
  %7 = load i32, ptr %6, align 8
  %8 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %2, ptr noundef nonnull @.str.67, i32 noundef %7) #20
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %4, i32 noundef %5) #20
  ret i32 %8
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @spi_controller_transfer_bytes_histo15_show(ptr noundef %0, ptr nocapture noundef readnone %1, ptr nocapture noundef writeonly %2) #0 {
  %4 = getelementptr inbounds %struct.spi_controller, ptr %0, i32 0, i32 59
  %5 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %4) #20
  %6 = getelementptr %struct.spi_controller, ptr %0, i32 0, i32 59, i32 11, i32 15
  %7 = load i32, ptr %6, align 4
  %8 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %2, ptr noundef nonnull @.str.67, i32 noundef %7) #20
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %4, i32 noundef %5) #20
  ret i32 %8
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @spi_controller_transfer_bytes_histo16_show(ptr noundef %0, ptr nocapture noundef readnone %1, ptr nocapture noundef writeonly %2) #0 {
  %4 = getelementptr inbounds %struct.spi_controller, ptr %0, i32 0, i32 59
  %5 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %4) #20
  %6 = getelementptr %struct.spi_controller, ptr %0, i32 0, i32 59, i32 11, i32 16
  %7 = load i32, ptr %6, align 8
  %8 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %2, ptr noundef nonnull @.str.67, i32 noundef %7) #20
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %4, i32 noundef %5) #20
  ret i32 %8
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @spi_controller_transfers_split_maxsize_show(ptr noundef %0, ptr nocapture noundef readnone %1, ptr nocapture noundef writeonly %2) #0 {
  %4 = getelementptr inbounds %struct.spi_controller, ptr %0, i32 0, i32 59
  %5 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %4) #20
  %6 = getelementptr inbounds %struct.spi_controller, ptr %0, i32 0, i32 59, i32 12
  %7 = load i32, ptr %6, align 4
  %8 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %2, ptr noundef nonnull @.str.67, i32 noundef %7) #20
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %4, i32 noundef %5) #20
  ret i32 %8
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_swait_queue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gpiod_count(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_gpiod_get_index_optional(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kasprintf(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gpiod_set_consumer_name(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.cttz.i32(i32, i1 immarg) #15

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_count_phandle_with_args(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_get_named_gpio_flags(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @spi_transfer_one_message(ptr noundef %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.spi_controller, ptr %0, i32 0, i32 59
  %4 = getelementptr inbounds %struct.spi_message, ptr %1, i32 0, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.spi_device, ptr %5, i32 0, i32 19
  tail call fastcc void @spi_set_cs(ptr noundef %5, i1 noundef zeroext true, i1 noundef zeroext false)
  %7 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %3) #20
  %8 = getelementptr inbounds %struct.spi_controller, ptr %0, i32 0, i32 59, i32 1
  %9 = load i32, ptr %8, align 4
  %10 = add i32 %9, 1
  store i32 %10, ptr %8, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %3, i32 noundef %7) #20
  %11 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %6) #20
  %12 = getelementptr inbounds %struct.spi_device, ptr %5, i32 0, i32 19, i32 1
  %13 = load i32, ptr %12, align 4
  %14 = add i32 %13, 1
  store i32 %14, ptr %12, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %6, i32 noundef %11) #20
  %15 = load ptr, ptr %1, align 4
  %16 = icmp eq ptr %15, %1
  br i1 %16, label %243, label %17

17:                                               ; preds = %2
  %18 = getelementptr inbounds %struct.spi_controller, ptr %0, i32 0, i32 65
  %19 = getelementptr inbounds %struct.spi_controller, ptr %0, i32 0, i32 42
  %20 = getelementptr inbounds %struct.spi_controller, ptr %0, i32 0, i32 51
  %21 = getelementptr inbounds %struct.spi_controller, ptr %0, i32 0, i32 38
  %22 = getelementptr inbounds %struct.spi_controller, ptr %0, i32 0, i32 41
  %23 = getelementptr inbounds %struct.spi_controller, ptr %0, i32 0, i32 59, i32 4
  %24 = getelementptr inbounds %struct.spi_message, ptr %1, i32 0, i32 7
  %25 = getelementptr inbounds %struct.spi_message, ptr %1, i32 0, i32 6
  br label %26

26:                                               ; preds = %230, %17
  %27 = phi ptr [ %15, %17 ], [ %236, %230 ]
  %28 = phi i1 [ false, %17 ], [ %231, %230 ]
  %29 = phi i32 [ 0, %17 ], [ %157, %230 ]
  %30 = getelementptr i8, ptr %27, i32 -84
  %31 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_spi_transfer_start, i32 0, i32 1), align 4
  %32 = icmp sgt i32 %31, 0
  br i1 %32, label %33, label %56

33:                                               ; preds = %26
  %34 = tail call ptr @llvm.thread.pointer() #20
  %35 = getelementptr inbounds %struct.thread_info, ptr %34, i32 0, i32 2
  %36 = load i32, ptr %35, align 8
  %37 = lshr i32 %36, 5
  %38 = getelementptr i32, ptr @__cpu_online_mask, i32 %37
  %39 = load volatile i32, ptr %38, align 4
  %40 = and i32 %36, 31
  %41 = shl nuw i32 1, %40
  %42 = and i32 %41, %39
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %56, label %44

44:                                               ; preds = %33
  tail call void asm sideeffect "", "~{memory}"() #20, !srcloc !40
  %45 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_spi_transfer_start, i32 0, i32 7), align 4
  %46 = icmp eq ptr %45, null
  br i1 %46, label %55, label %47

47:                                               ; preds = %47, %44
  %48 = phi ptr [ %52, %47 ], [ %45, %44 ]
  %49 = load volatile ptr, ptr %48, align 4
  %50 = getelementptr inbounds %struct.tracepoint_func, ptr %48, i32 0, i32 1
  %51 = load ptr, ptr %50, align 4
  tail call void %49(ptr noundef %51, ptr noundef %1, ptr noundef %30) #20
  %52 = getelementptr %struct.tracepoint_func, ptr %48, i32 1
  %53 = load ptr, ptr %52, align 4
  %54 = icmp eq ptr %53, null
  br i1 %54, label %55, label %47

55:                                               ; preds = %47, %44
  tail call void asm sideeffect "", "~{memory}"() #20, !srcloc !41
  br label %56

56:                                               ; preds = %55, %33, %26
  tail call fastcc void @spi_statistics_add_transfer_stats(ptr noundef %3, ptr noundef %30, ptr noundef %0)
  tail call fastcc void @spi_statistics_add_transfer_stats(ptr noundef %6, ptr noundef %30, ptr noundef %0)
  %57 = load i8, ptr %18, align 4, !range !14
  %58 = icmp eq i8 %57, 0
  br i1 %58, label %59, label %65

59:                                               ; preds = %56
  %60 = getelementptr i8, ptr %27, i32 -16
  store i32 0, ptr %60, align 4
  %61 = getelementptr i8, ptr %27, i32 -8
  %62 = load ptr, ptr %61, align 4
  %63 = icmp eq ptr %62, null
  br i1 %63, label %65, label %64

64:                                               ; preds = %59
  tail call void @ktime_get_real_ts64(ptr noundef nonnull %62) #20
  br label %65

65:                                               ; preds = %64, %59, %56
  %66 = load ptr, ptr %30, align 4
  %67 = icmp eq ptr %66, null
  br i1 %67, label %68, label %72

68:                                               ; preds = %65
  %69 = getelementptr i8, ptr %27, i32 -80
  %70 = load ptr, ptr %69, align 4
  %71 = icmp eq ptr %70, null
  br i1 %71, label %150, label %72

72:                                               ; preds = %68, %65
  %73 = getelementptr i8, ptr %27, i32 -76
  %74 = load i32, ptr %73, align 4
  %75 = icmp eq i32 %74, 0
  br i1 %75, label %156, label %76

76:                                               ; preds = %72
  store i32 0, ptr %19, align 4
  %77 = load ptr, ptr %20, align 4
  %78 = load ptr, ptr %4, align 4
  %79 = tail call i32 %77(ptr noundef %0, ptr noundef %78, ptr noundef %30) #20
  %80 = icmp slt i32 %79, 0
  br i1 %80, label %81, label %111

81:                                               ; preds = %76
  %82 = getelementptr i8, ptr %27, i32 8
  %83 = load i8, ptr %21, align 2, !range !14
  %84 = icmp eq i8 %83, 0
  br i1 %84, label %100, label %88

85:                                               ; preds = %93
  %86 = load i8, ptr %21, align 2, !range !14
  %87 = icmp eq i8 %86, 0
  br i1 %87, label %100, label %88

88:                                               ; preds = %85, %81
  %89 = phi i32 [ %98, %85 ], [ %79, %81 ]
  %90 = load i16, ptr %82, align 4
  %91 = and i16 %90, 1
  %92 = icmp eq i16 %91, 0
  br i1 %92, label %100, label %93

93:                                               ; preds = %88
  tail call fastcc void @__spi_unmap_msg(ptr noundef %0, ptr noundef %1)
  store i8 1, ptr %22, align 1
  %94 = load i16, ptr %82, align 4
  %95 = and i16 %94, -2
  store i16 %95, ptr %82, align 4
  %96 = load ptr, ptr %20, align 4
  %97 = load ptr, ptr %4, align 4
  %98 = tail call i32 %96(ptr noundef %0, ptr noundef %97, ptr noundef %30) #20
  %99 = icmp slt i32 %98, 0
  br i1 %99, label %85, label %111

100:                                              ; preds = %88, %85, %81
  %101 = phi i32 [ %98, %85 ], [ %89, %88 ], [ %79, %81 ]
  %102 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %3) #20
  %103 = getelementptr inbounds %struct.spi_controller, ptr %0, i32 0, i32 59, i32 3
  %104 = load i32, ptr %103, align 4
  %105 = add i32 %104, 1
  store i32 %105, ptr %103, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %3, i32 noundef %102) #20
  %106 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %6) #20
  %107 = getelementptr inbounds %struct.spi_device, ptr %5, i32 0, i32 19, i32 3
  %108 = load i32, ptr %107, align 4
  %109 = add i32 %108, 1
  store i32 %109, ptr %107, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %6, i32 noundef %106) #20
  %110 = load ptr, ptr %4, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %110, ptr noundef nonnull @.str.120, i32 noundef %101) #21
  br label %243

111:                                              ; preds = %93, %76
  %112 = phi i32 [ %79, %76 ], [ %98, %93 ]
  %113 = icmp eq i32 %112, 0
  br i1 %113, label %156, label %114

114:                                              ; preds = %111
  %115 = load ptr, ptr %4, align 4
  %116 = getelementptr inbounds %struct.spi_device, ptr %115, i32 0, i32 19
  %117 = getelementptr i8, ptr %27, i32 -24
  %118 = load i32, ptr %117, align 4
  %119 = icmp eq i32 %118, 0
  %120 = select i1 %119, i32 100000, i32 %118
  %121 = load i32, ptr %73, align 4
  %122 = zext i32 %121 to i64
  %123 = mul nuw nsw i64 %122, 8000
  %124 = icmp ult i64 %123, 4294967296
  br i1 %124, label %125, label %129, !prof !10

125:                                              ; preds = %114
  %126 = trunc i64 %123 to i32
  %127 = udiv i32 %126, %120
  %128 = zext i32 %127 to i64
  br label %132

129:                                              ; preds = %114
  %130 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %120, i64 %123) #25, !srcloc !42
  %131 = extractvalue { i64, i64 } %130, 1
  br label %132

132:                                              ; preds = %129, %125
  %133 = phi i64 [ %128, %125 ], [ %131, %129 ]
  %134 = shl i64 %133, 1
  %135 = add i64 %134, 200
  %136 = tail call i64 @llvm.umin.i64(i64 %135, i64 4294967295) #20
  %137 = trunc i64 %136 to i32
  %138 = tail call i32 @__msecs_to_jiffies(i32 noundef %137) #20
  %139 = tail call i32 @wait_for_completion_timeout(ptr noundef %19, i32 noundef %138) #20
  %140 = icmp eq i32 %139, 0
  br i1 %140, label %141, label %156

141:                                              ; preds = %132
  %142 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %3) #20
  %143 = load i32, ptr %23, align 8
  %144 = add i32 %143, 1
  store i32 %144, ptr %23, align 8
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %3, i32 noundef %142) #20
  %145 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %116) #20
  %146 = getelementptr inbounds %struct.spi_device, ptr %115, i32 0, i32 19, i32 4
  %147 = load i32, ptr %146, align 8
  %148 = add i32 %147, 1
  store i32 %148, ptr %146, align 8
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %116, i32 noundef %145) #20
  %149 = load ptr, ptr %4, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %149, ptr noundef nonnull @.str.122) #21
  store i32 -110, ptr %24, align 4
  br label %156

150:                                              ; preds = %68
  %151 = getelementptr i8, ptr %27, i32 -76
  %152 = load i32, ptr %151, align 4
  %153 = icmp eq i32 %152, 0
  br i1 %153, label %156, label %154

154:                                              ; preds = %150
  %155 = load ptr, ptr %4, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %155, ptr noundef nonnull @.str.121, i32 noundef %152) #21
  br label %156

156:                                              ; preds = %154, %150, %141, %132, %111, %72
  %157 = phi i32 [ -110, %141 ], [ 0, %111 ], [ %29, %154 ], [ %29, %150 ], [ 0, %132 ], [ %29, %72 ]
  %158 = load i8, ptr %18, align 4, !range !14
  %159 = icmp eq i8 %158, 0
  br i1 %159, label %160, label %170

160:                                              ; preds = %156
  %161 = getelementptr i8, ptr %27, i32 -8
  %162 = load ptr, ptr %161, align 4
  %163 = icmp eq ptr %162, null
  br i1 %163, label %166, label %164

164:                                              ; preds = %160
  %165 = getelementptr inbounds %struct.ptp_system_timestamp, ptr %162, i32 0, i32 1
  tail call void @ktime_get_real_ts64(ptr noundef %165) #20
  br label %166

166:                                              ; preds = %164, %160
  %167 = getelementptr i8, ptr %27, i32 -76
  %168 = load i32, ptr %167, align 4
  %169 = getelementptr i8, ptr %27, i32 -12
  store i32 %168, ptr %169, align 4
  br label %170

170:                                              ; preds = %166, %156
  %171 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_spi_transfer_stop, i32 0, i32 1), align 4
  %172 = icmp sgt i32 %171, 0
  br i1 %172, label %173, label %196

173:                                              ; preds = %170
  %174 = tail call ptr @llvm.thread.pointer() #20
  %175 = getelementptr inbounds %struct.thread_info, ptr %174, i32 0, i32 2
  %176 = load i32, ptr %175, align 8
  %177 = lshr i32 %176, 5
  %178 = getelementptr i32, ptr @__cpu_online_mask, i32 %177
  %179 = load volatile i32, ptr %178, align 4
  %180 = and i32 %176, 31
  %181 = shl nuw i32 1, %180
  %182 = and i32 %181, %179
  %183 = icmp eq i32 %182, 0
  br i1 %183, label %196, label %184

184:                                              ; preds = %173
  tail call void asm sideeffect "", "~{memory}"() #20, !srcloc !43
  %185 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_spi_transfer_stop, i32 0, i32 7), align 4
  %186 = icmp eq ptr %185, null
  br i1 %186, label %195, label %187

187:                                              ; preds = %187, %184
  %188 = phi ptr [ %192, %187 ], [ %185, %184 ]
  %189 = load volatile ptr, ptr %188, align 4
  %190 = getelementptr inbounds %struct.tracepoint_func, ptr %188, i32 0, i32 1
  %191 = load ptr, ptr %190, align 4
  tail call void %189(ptr noundef %191, ptr noundef %1, ptr noundef %30) #20
  %192 = getelementptr %struct.tracepoint_func, ptr %188, i32 1
  %193 = load ptr, ptr %192, align 4
  %194 = icmp eq ptr %193, null
  br i1 %194, label %195, label %187

195:                                              ; preds = %187, %184
  tail call void asm sideeffect "", "~{memory}"() #20, !srcloc !44
  br label %196

196:                                              ; preds = %195, %173, %170
  %197 = load i32, ptr %24, align 4
  %198 = icmp eq i32 %197, -115
  br i1 %198, label %199, label %238

199:                                              ; preds = %196
  %200 = getelementptr i8, ptr %27, i32 -38
  %201 = tail call i32 @spi_delay_exec(ptr noundef %200, ptr noundef %30) #20
  %202 = getelementptr i8, ptr %27, i32 -40
  %203 = load i8, ptr %202, align 4
  %204 = and i8 %203, 2
  %205 = icmp eq i8 %204, 0
  br i1 %205, label %230, label %206

206:                                              ; preds = %199
  %207 = load ptr, ptr %27, align 4
  %208 = icmp eq ptr %207, %1
  br i1 %208, label %230, label %209

209:                                              ; preds = %206
  %210 = load ptr, ptr %4, align 4
  tail call fastcc void @spi_set_cs(ptr noundef %210, i1 noundef zeroext false, i1 noundef zeroext false)
  %211 = getelementptr i8, ptr %27, i32 -34
  %212 = load i16, ptr %211, align 2
  %213 = getelementptr i8, ptr %27, i32 -32
  %214 = load i8, ptr %213, align 2
  %215 = zext i8 %214 to i32
  %216 = icmp eq i16 %212, 0
  br i1 %216, label %217, label %219

217:                                              ; preds = %209
  %218 = icmp eq i8 %214, 0
  br i1 %218, label %226, label %228

219:                                              ; preds = %209
  %220 = tail call i32 @spi_delay_exec(ptr noundef %211, ptr noundef %30) #20
  %221 = icmp eq i32 %220, 0
  br i1 %221, label %228, label %222

222:                                              ; preds = %219
  %223 = load i1, ptr @_spi_transfer_cs_change_delay.__print_once, align 1
  br i1 %223, label %226, label %224

224:                                              ; preds = %222
  store i1 true, ptr @_spi_transfer_cs_change_delay.__print_once, align 1
  %225 = load ptr, ptr %4, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %225, ptr noundef nonnull @.str.123, i32 noundef %215, i32 noundef 10) #21
  br label %226

226:                                              ; preds = %224, %222, %217
  %227 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %227(i32 noundef 2147480) #20
  br label %228

228:                                              ; preds = %226, %219, %217
  %229 = load ptr, ptr %4, align 4
  tail call fastcc void @spi_set_cs(ptr noundef %229, i1 noundef zeroext true, i1 noundef zeroext false)
  br label %230

230:                                              ; preds = %228, %206, %199
  %231 = phi i1 [ %28, %228 ], [ %28, %199 ], [ true, %206 ]
  %232 = getelementptr i8, ptr %27, i32 -76
  %233 = load i32, ptr %232, align 4
  %234 = load i32, ptr %25, align 4
  %235 = add i32 %234, %233
  store i32 %235, ptr %25, align 4
  %236 = load ptr, ptr %27, align 4
  %237 = icmp eq ptr %236, %1
  br i1 %237, label %238, label %26

238:                                              ; preds = %230, %196
  %239 = phi i1 [ %28, %196 ], [ %231, %230 ]
  %240 = icmp ne i32 %157, 0
  %241 = xor i1 %239, true
  %242 = select i1 %240, i1 true, i1 %241
  br i1 %242, label %243, label %246

243:                                              ; preds = %238, %100, %2
  %244 = phi i32 [ %101, %100 ], [ %157, %238 ], [ 0, %2 ]
  %245 = load ptr, ptr %4, align 4
  tail call fastcc void @spi_set_cs(ptr noundef %245, i1 noundef zeroext false, i1 noundef zeroext false)
  br label %246

246:                                              ; preds = %243, %238
  %247 = phi i32 [ 0, %238 ], [ %244, %243 ]
  %248 = getelementptr inbounds %struct.spi_message, ptr %1, i32 0, i32 7
  %249 = load i32, ptr %248, align 4
  %250 = icmp eq i32 %249, -115
  br i1 %250, label %251, label %252

251:                                              ; preds = %246
  store i32 %247, ptr %248, align 4
  br label %252

252:                                              ; preds = %251, %246
  %253 = phi i32 [ %247, %251 ], [ %249, %246 ]
  %254 = icmp eq i32 %253, 0
  br i1 %254, label %260, label %255

255:                                              ; preds = %252
  %256 = getelementptr inbounds %struct.spi_controller, ptr %0, i32 0, i32 52
  %257 = load ptr, ptr %256, align 8
  %258 = icmp eq ptr %257, null
  br i1 %258, label %260, label %259

259:                                              ; preds = %255
  tail call void %257(ptr noundef %0, ptr noundef %1) #20
  br label %260

260:                                              ; preds = %259, %255, %252
  tail call void @spi_finalize_current_message(ptr noundef %0)
  ret i32 %247
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @spi_statistics_add_transfer_stats(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.spi_transfer, ptr %1, i32 0, i32 2
  %5 = load i32, ptr %4, align 4
  %6 = icmp eq i32 %5, 0
  %7 = tail call i32 @llvm.ctlz.i32(i32 %5, i1 false) #20, !range !29
  %8 = sub nuw nsw i32 32, %7
  %9 = tail call i32 @llvm.smin.i32(i32 %8, i32 17)
  %10 = tail call i32 @llvm.smax.i32(i32 %9, i32 1)
  %11 = add nsw i32 %10, -1
  %12 = select i1 %6, i32 0, i32 %11
  %13 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %0) #20
  %14 = getelementptr inbounds %struct.spi_statistics, ptr %0, i32 0, i32 2
  %15 = load i32, ptr %14, align 8
  %16 = add i32 %15, 1
  store i32 %16, ptr %14, align 8
  %17 = getelementptr %struct.spi_statistics, ptr %0, i32 0, i32 11, i32 %12
  %18 = load i32, ptr %17, align 4
  %19 = add i32 %18, 1
  store i32 %19, ptr %17, align 4
  %20 = load i32, ptr %4, align 4
  %21 = zext i32 %20 to i64
  %22 = getelementptr inbounds %struct.spi_statistics, ptr %0, i32 0, i32 8
  %23 = load i64, ptr %22, align 8
  %24 = add i64 %23, %21
  store i64 %24, ptr %22, align 8
  %25 = load ptr, ptr %1, align 4
  %26 = icmp eq ptr %25, null
  br i1 %26, label %37, label %27

27:                                               ; preds = %3
  %28 = getelementptr inbounds %struct.spi_controller, ptr %2, i32 0, i32 63
  %29 = load ptr, ptr %28, align 4
  %30 = icmp eq ptr %25, %29
  br i1 %30, label %37, label %31

31:                                               ; preds = %27
  %32 = load i32, ptr %4, align 4
  %33 = zext i32 %32 to i64
  %34 = getelementptr inbounds %struct.spi_statistics, ptr %0, i32 0, i32 10
  %35 = load i64, ptr %34, align 8
  %36 = add i64 %35, %33
  store i64 %36, ptr %34, align 8
  br label %37

37:                                               ; preds = %31, %27, %3
  %38 = getelementptr inbounds %struct.spi_transfer, ptr %1, i32 0, i32 1
  %39 = load ptr, ptr %38, align 4
  %40 = icmp eq ptr %39, null
  br i1 %40, label %51, label %41

41:                                               ; preds = %37
  %42 = getelementptr inbounds %struct.spi_controller, ptr %2, i32 0, i32 62
  %43 = load ptr, ptr %42, align 8
  %44 = icmp eq ptr %39, %43
  br i1 %44, label %51, label %45

45:                                               ; preds = %41
  %46 = load i32, ptr %4, align 4
  %47 = zext i32 %46 to i64
  %48 = getelementptr inbounds %struct.spi_statistics, ptr %0, i32 0, i32 9
  %49 = load i64, ptr %48, align 8
  %50 = add i64 %49, %47
  store i64 %50, ptr %48, align 8
  br label %51

51:                                               ; preds = %45, %41, %37
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %0, i32 noundef %13) #20
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #15

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wait_for_completion_timeout(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__msecs_to_jiffies(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kthread_create_worker(i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @spi_pump_messages(ptr noundef %0) #0 {
  %2 = getelementptr i8, ptr %0, i32 -620
  tail call fastcc void @__spi_pump_messages(ptr noundef %2, i1 noundef zeroext true)
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_next_available_child(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc ptr @of_register_spi_device(ptr noundef %0, ptr noundef %1) unnamed_addr #0 {
  %3 = alloca i32, align 4
  %4 = icmp eq ptr %0, null
  br i1 %4, label %139, label %5

5:                                                ; preds = %2
  %6 = tail call ptr @get_device(ptr noundef nonnull %0) #20
  %7 = icmp eq ptr %6, null
  br i1 %7, label %139, label %8

8:                                                ; preds = %5
  %9 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10), align 4
  %10 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %9, i32 noundef 3520, i32 noundef 696) #22
  %11 = icmp eq ptr %10, null
  br i1 %11, label %12, label %13

12:                                               ; preds = %8
  tail call void @put_device(ptr noundef nonnull %0) #20
  br label %139

13:                                               ; preds = %8
  %14 = getelementptr inbounds %struct.spi_device, ptr %10, i32 0, i32 1
  store ptr %0, ptr %14, align 8
  %15 = getelementptr inbounds %struct.spi_device, ptr %10, i32 0, i32 2
  store ptr %0, ptr %15, align 4
  %16 = getelementptr inbounds %struct.device, ptr %10, i32 0, i32 1
  store ptr %0, ptr %16, align 4
  %17 = getelementptr inbounds %struct.device, ptr %10, i32 0, i32 5
  store ptr @spi_bus_type, ptr %17, align 4
  %18 = getelementptr inbounds %struct.device, ptr %10, i32 0, i32 33
  store ptr @spidev_release, ptr %18, align 4
  %19 = getelementptr inbounds %struct.spi_device, ptr %10, i32 0, i32 13
  store i32 -2, ptr %19, align 4
  %20 = getelementptr inbounds %struct.spi_controller, ptr %0, i32 0, i32 6
  %21 = load i32, ptr %20, align 4
  %22 = getelementptr inbounds %struct.spi_device, ptr %10, i32 0, i32 7
  store i32 %21, ptr %22, align 8
  %23 = getelementptr inbounds %struct.spi_device, ptr %10, i32 0, i32 19
  store i32 0, ptr %23, align 8
  tail call void @device_initialize(ptr noundef nonnull %10) #20
  %24 = getelementptr inbounds %struct.spi_device, ptr %10, i32 0, i32 11
  %25 = tail call i32 @of_modalias_node(ptr noundef %1, ptr noundef %24, i32 noundef 32) #20
  %26 = icmp slt i32 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %13
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef nonnull %0, ptr noundef nonnull @.str.127, ptr noundef %1) #21
  br label %140

28:                                               ; preds = %13
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #20
  store i32 0, ptr %3, align 4, !annotation !9
  %29 = tail call ptr @of_find_property(ptr noundef %1, ptr noundef nonnull @.str.129, ptr noundef null) #20
  %30 = icmp eq ptr %29, null
  br i1 %30, label %34, label %31

31:                                               ; preds = %28
  %32 = load i32, ptr %22, align 8
  %33 = or i32 %32, 1
  store i32 %33, ptr %22, align 8
  br label %34

34:                                               ; preds = %31, %28
  %35 = tail call ptr @of_find_property(ptr noundef %1, ptr noundef nonnull @.str.130, ptr noundef null) #20
  %36 = icmp eq ptr %35, null
  br i1 %36, label %40, label %37

37:                                               ; preds = %34
  %38 = load i32, ptr %22, align 8
  %39 = or i32 %38, 2
  store i32 %39, ptr %22, align 8
  br label %40

40:                                               ; preds = %37, %34
  %41 = tail call ptr @of_find_property(ptr noundef %1, ptr noundef nonnull @.str.131, ptr noundef null) #20
  %42 = icmp eq ptr %41, null
  br i1 %42, label %46, label %43

43:                                               ; preds = %40
  %44 = load i32, ptr %22, align 8
  %45 = or i32 %44, 16
  store i32 %45, ptr %22, align 8
  br label %46

46:                                               ; preds = %43, %40
  %47 = tail call ptr @of_find_property(ptr noundef %1, ptr noundef nonnull @.str.132, ptr noundef null) #20
  %48 = icmp eq ptr %47, null
  br i1 %48, label %52, label %49

49:                                               ; preds = %46
  %50 = load i32, ptr %22, align 8
  %51 = or i32 %50, 8
  store i32 %51, ptr %22, align 8
  br label %52

52:                                               ; preds = %49, %46
  %53 = tail call ptr @of_find_property(ptr noundef %1, ptr noundef nonnull @.str.133, ptr noundef null) #20
  %54 = icmp eq ptr %53, null
  br i1 %54, label %58, label %55

55:                                               ; preds = %52
  %56 = load i32, ptr %22, align 8
  %57 = or i32 %56, 4
  store i32 %57, ptr %22, align 8
  br label %58

58:                                               ; preds = %55, %52
  %59 = call i32 @of_property_read_variable_u32_array(ptr noundef %1, ptr noundef nonnull @.str.134, ptr noundef nonnull %3, i32 noundef 1, i32 noundef 0) #20
  %60 = icmp sgt i32 %59, -1
  br i1 %60, label %61, label %76

61:                                               ; preds = %58
  %62 = load i32, ptr %3, align 4
  switch i32 %62, label %75 [
    i32 0, label %63
    i32 1, label %76
    i32 2, label %66
    i32 4, label %69
    i32 8, label %72
  ]

63:                                               ; preds = %61
  %64 = load i32, ptr %22, align 8
  %65 = or i32 %64, -2147483648
  store i32 %65, ptr %22, align 8
  br label %76

66:                                               ; preds = %61
  %67 = load i32, ptr %22, align 8
  %68 = or i32 %67, 256
  store i32 %68, ptr %22, align 8
  br label %76

69:                                               ; preds = %61
  %70 = load i32, ptr %22, align 8
  %71 = or i32 %70, 512
  store i32 %71, ptr %22, align 8
  br label %76

72:                                               ; preds = %61
  %73 = load i32, ptr %22, align 8
  %74 = or i32 %73, 8192
  store i32 %74, ptr %22, align 8
  br label %76

75:                                               ; preds = %61
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef nonnull %0, ptr noundef nonnull @.str.135, i32 noundef %62) #21
  br label %76

76:                                               ; preds = %75, %72, %69, %66, %63, %61, %58
  %77 = call i32 @of_property_read_variable_u32_array(ptr noundef %1, ptr noundef nonnull @.str.136, ptr noundef nonnull %3, i32 noundef 1, i32 noundef 0) #20
  %78 = icmp sgt i32 %77, -1
  br i1 %78, label %79, label %94

79:                                               ; preds = %76
  %80 = load i32, ptr %3, align 4
  switch i32 %80, label %93 [
    i32 0, label %81
    i32 1, label %94
    i32 2, label %84
    i32 4, label %87
    i32 8, label %90
  ]

81:                                               ; preds = %79
  %82 = load i32, ptr %22, align 8
  %83 = or i32 %82, 1073741824
  store i32 %83, ptr %22, align 8
  br label %94

84:                                               ; preds = %79
  %85 = load i32, ptr %22, align 8
  %86 = or i32 %85, 1024
  store i32 %86, ptr %22, align 8
  br label %94

87:                                               ; preds = %79
  %88 = load i32, ptr %22, align 8
  %89 = or i32 %88, 2048
  store i32 %89, ptr %22, align 8
  br label %94

90:                                               ; preds = %79
  %91 = load i32, ptr %22, align 8
  %92 = or i32 %91, 16384
  store i32 %92, ptr %22, align 8
  br label %94

93:                                               ; preds = %79
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef nonnull %0, ptr noundef nonnull @.str.137, i32 noundef %80) #21
  br label %94

94:                                               ; preds = %93, %90, %87, %84, %81, %79, %76
  %95 = call i32 @of_property_read_variable_u32_array(ptr noundef %1, ptr noundef nonnull @.str.140, ptr noundef nonnull %3, i32 noundef 1, i32 noundef 0) #20
  %96 = icmp sgt i32 %95, -1
  br i1 %96, label %97, label %106

97:                                               ; preds = %94
  %98 = load i32, ptr %3, align 4
  %99 = trunc i32 %98 to i8
  %100 = getelementptr inbounds %struct.spi_device, ptr %10, i32 0, i32 4
  store i8 %99, ptr %100, align 4
  %101 = call i32 @of_property_read_variable_u32_array(ptr noundef %1, ptr noundef nonnull @.str.142, ptr noundef nonnull %3, i32 noundef 1, i32 noundef 0) #20
  %102 = icmp sgt i32 %101, -1
  br i1 %102, label %103, label %107

103:                                              ; preds = %97
  %104 = load i32, ptr %3, align 4
  %105 = getelementptr inbounds %struct.spi_device, ptr %10, i32 0, i32 3
  store i32 %104, ptr %105, align 8
  br label %107

106:                                              ; preds = %94
  call void (ptr, ptr, ...) @_dev_err(ptr noundef nonnull %0, ptr noundef nonnull @.str.141, ptr noundef %1, i32 noundef %95) #21
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #20
  br label %140

107:                                              ; preds = %103, %97
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #20
  %108 = call ptr @of_node_get(ptr noundef %1) #20
  %109 = getelementptr inbounds %struct.device, ptr %10, i32 0, i32 25
  store ptr %1, ptr %109, align 8
  %110 = icmp eq ptr %1, null
  %111 = getelementptr inbounds %struct.device_node, ptr %1, i32 0, i32 3
  %112 = select i1 %110, ptr null, ptr %111
  %113 = getelementptr inbounds %struct.device, ptr %10, i32 0, i32 26
  store ptr %112, ptr %113, align 4
  %114 = load ptr, ptr %14, align 8
  %115 = getelementptr inbounds %struct.spi_device, ptr %10, i32 0, i32 4
  %116 = load i8, ptr %115, align 4
  %117 = zext i8 %116 to i32
  %118 = getelementptr inbounds %struct.spi_controller, ptr %114, i32 0, i32 3
  %119 = load i16, ptr %118, align 2
  %120 = zext i16 %119 to i32
  %121 = icmp ult i32 %117, %120
  br i1 %121, label %125, label %122

122:                                              ; preds = %107
  %123 = getelementptr inbounds %struct.device, ptr %114, i32 0, i32 1
  %124 = load ptr, ptr %123, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %124, ptr noundef nonnull @.str.98, i32 noundef %117, i32 noundef %120) #21
  br label %137

125:                                              ; preds = %107
  %126 = getelementptr inbounds %struct.device, ptr %114, i32 0, i32 3
  %127 = load ptr, ptr %126, align 4
  %128 = icmp eq ptr %127, null
  br i1 %128, label %129, label %131

129:                                              ; preds = %125
  %130 = load ptr, ptr %114, align 4
  br label %131

131:                                              ; preds = %129, %125
  %132 = phi ptr [ %130, %129 ], [ %127, %125 ]
  %133 = call i32 (ptr, ptr, ...) @dev_set_name(ptr noundef nonnull %10, ptr noundef nonnull @.str.100, ptr noundef %132, i32 noundef %117) #20
  %134 = getelementptr inbounds %struct.spi_controller, ptr %114, i32 0, i32 16
  call void @mutex_lock(ptr noundef %134) #20
  %135 = call fastcc i32 @__spi_add_device(ptr noundef nonnull %10) #20
  call void @mutex_unlock(ptr noundef %134) #20
  %136 = icmp eq i32 %135, 0
  br i1 %136, label %145, label %137

137:                                              ; preds = %131, %122
  %138 = phi i32 [ -22, %122 ], [ %135, %131 ]
  call void (ptr, ptr, ...) @_dev_err(ptr noundef nonnull %0, ptr noundef nonnull @.str.128, ptr noundef %1) #21
  call void @of_node_put(ptr noundef %1) #20
  br label %140

139:                                              ; preds = %12, %5, %2
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %0, ptr noundef nonnull @.str.126, ptr noundef %1) #21
  br label %142

140:                                              ; preds = %137, %106, %27
  %141 = phi i32 [ %138, %137 ], [ %95, %106 ], [ %25, %27 ]
  call void @put_device(ptr noundef nonnull %10) #20
  br label %142

142:                                              ; preds = %140, %139
  %143 = phi i32 [ -12, %139 ], [ %141, %140 ]
  %144 = inttoptr i32 %143 to ptr
  br label %145

145:                                              ; preds = %142, %131
  %146 = phi ptr [ %144, %142 ], [ %10, %131 ]
  ret ptr %146
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_modalias_node(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_node_get(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_add_action(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kthread_destroy_worker(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @__spi_replace_transfers_release(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = load ptr, ptr %2, align 4
  %5 = icmp eq ptr %4, null
  br i1 %5, label %7, label %6

6:                                                ; preds = %3
  tail call void %4(ptr noundef %0, ptr noundef %1, ptr noundef %2) #20
  br label %7

7:                                                ; preds = %6, %3
  %8 = getelementptr inbounds %struct.spi_replaced_transfers, ptr %2, i32 0, i32 2
  %9 = getelementptr inbounds %struct.spi_replaced_transfers, ptr %2, i32 0, i32 3
  %10 = load ptr, ptr %9, align 4
  %11 = load volatile ptr, ptr %8, align 4
  %12 = icmp eq ptr %11, %8
  br i1 %12, label %19, label %13

13:                                               ; preds = %7
  %14 = load ptr, ptr %10, align 4
  %15 = getelementptr inbounds %struct.spi_replaced_transfers, ptr %2, i32 0, i32 2, i32 1
  %16 = load ptr, ptr %15, align 4
  %17 = getelementptr inbounds %struct.list_head, ptr %11, i32 0, i32 1
  store ptr %10, ptr %17, align 4
  store ptr %11, ptr %10, align 4
  store ptr %14, ptr %16, align 4
  %18 = getelementptr inbounds %struct.list_head, ptr %14, i32 0, i32 1
  store ptr %16, ptr %18, align 4
  br label %19

19:                                               ; preds = %13, %7
  %20 = getelementptr inbounds %struct.spi_replaced_transfers, ptr %2, i32 0, i32 4
  %21 = load i32, ptr %20, align 4
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %33, label %23

23:                                               ; preds = %23, %19
  %24 = phi i32 [ %30, %23 ], [ 0, %19 ]
  %25 = getelementptr %struct.spi_replaced_transfers, ptr %2, i32 0, i32 5, i32 %24, i32 18
  %26 = getelementptr %struct.spi_replaced_transfers, ptr %2, i32 0, i32 5, i32 %24, i32 18, i32 1
  %27 = load ptr, ptr %26, align 4
  %28 = load ptr, ptr %25, align 4
  %29 = getelementptr inbounds %struct.list_head, ptr %28, i32 0, i32 1
  store ptr %27, ptr %29, align 4
  store volatile ptr %28, ptr %27, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %25, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %26, align 4
  %30 = add nuw i32 %24, 1
  %31 = load i32, ptr %20, align 4
  %32 = icmp ult i32 %30, %31
  br i1 %32, label %23, label %33

33:                                               ; preds = %23, %19
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__sw_hweight32(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_resume(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @gpiod_set_value_cansleep(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @gpiod_set_raw_value_cansleep(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @gpio_to_desc(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get_mono_fast_ns() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_suspend(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @sched_set_fifo(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @spi_complete(ptr noundef %0) #0 {
  tail call void @complete(ptr noundef %0) #20
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @wait_for_completion(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #19

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bus_register(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__class_register(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_reconfig_notifier_register(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @bus_unregister(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @of_spi_notify(ptr nocapture noundef readnone %0, i32 noundef %1, ptr noundef %2) #0 {
  %4 = tail call i32 @of_reconfig_get_state_change(i32 noundef %1, ptr noundef %2) #20
  switch i32 %4, label %53 [
    i32 1, label %5
    i32 2, label %29
  ]

5:                                                ; preds = %3
  %6 = load ptr, ptr %2, align 4
  %7 = getelementptr inbounds %struct.device_node, ptr %6, i32 0, i32 6
  %8 = load ptr, ptr %7, align 4
  %9 = tail call ptr @class_find_device(ptr noundef nonnull @spi_master_class, ptr noundef null, ptr noundef %8, ptr noundef nonnull @device_match_of_node) #20
  %10 = icmp eq ptr %9, null
  br i1 %10, label %53, label %11

11:                                               ; preds = %5
  %12 = load ptr, ptr %2, align 4
  %13 = getelementptr inbounds %struct.device_node, ptr %12, i32 0, i32 10
  %14 = tail call i32 @_test_and_set_bit(i32 noundef 3, ptr noundef %13) #20
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %17, label %16

16:                                               ; preds = %11
  tail call void @put_device(ptr noundef nonnull %9) #20
  br label %53

17:                                               ; preds = %11
  %18 = load ptr, ptr %2, align 4
  %19 = tail call fastcc ptr @of_register_spi_device(ptr noundef nonnull %9, ptr noundef %18)
  tail call void @put_device(ptr noundef nonnull %9) #20
  %20 = icmp ugt ptr %19, inttoptr (i32 -4096 to ptr)
  br i1 %20, label %21, label %53

21:                                               ; preds = %17
  %22 = load ptr, ptr %2, align 4
  %23 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.147, ptr noundef nonnull @__func__.of_spi_notify, ptr noundef %22) #21
  %24 = load ptr, ptr %2, align 4
  %25 = getelementptr inbounds %struct.device_node, ptr %24, i32 0, i32 10
  tail call void @_clear_bit(i32 noundef 3, ptr noundef %25) #20
  %26 = ptrtoint ptr %19 to i32
  %27 = sub i32 1, %26
  %28 = or i32 %27, 32768
  br label %53

29:                                               ; preds = %3
  %30 = load ptr, ptr %2, align 4
  %31 = getelementptr inbounds %struct.device_node, ptr %30, i32 0, i32 10
  %32 = load volatile i32, ptr %31, align 4
  %33 = and i32 %32, 8
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %53, label %35

35:                                               ; preds = %29
  %36 = tail call ptr @bus_find_device(ptr noundef nonnull @spi_bus_type, ptr noundef null, ptr noundef %30, ptr noundef nonnull @device_match_of_node) #20
  %37 = icmp eq ptr %36, null
  br i1 %37, label %53, label %38

38:                                               ; preds = %35
  %39 = getelementptr inbounds %struct.device, ptr %36, i32 0, i32 25
  %40 = load ptr, ptr %39, align 8
  %41 = icmp eq ptr %40, null
  br i1 %41, label %45, label %42

42:                                               ; preds = %38
  %43 = getelementptr inbounds %struct.device_node, ptr %40, i32 0, i32 10
  tail call void @_clear_bit(i32 noundef 3, ptr noundef %43) #20
  %44 = load ptr, ptr %39, align 8
  tail call void @of_node_put(ptr noundef %44) #20
  br label %45

45:                                               ; preds = %42, %38
  tail call void @device_remove_software_node(ptr noundef nonnull %36) #20
  tail call void @device_del(ptr noundef nonnull %36) #20
  %46 = getelementptr inbounds %struct.spi_device, ptr %36, i32 0, i32 1
  %47 = load ptr, ptr %46, align 8
  %48 = getelementptr inbounds %struct.spi_controller, ptr %47, i32 0, i32 23
  %49 = load ptr, ptr %48, align 8
  %50 = icmp eq ptr %49, null
  br i1 %50, label %52, label %51

51:                                               ; preds = %45
  tail call void %49(ptr noundef nonnull %36) #20
  br label %52

52:                                               ; preds = %51, %45
  tail call void @put_device(ptr noundef nonnull %36) #20
  tail call void @put_device(ptr noundef nonnull %36) #20
  br label %53

53:                                               ; preds = %52, %35, %29, %21, %17, %16, %5, %3
  %54 = phi i32 [ 1, %16 ], [ %28, %21 ], [ 1, %5 ], [ 1, %29 ], [ 1, %35 ], [ 1, %17 ], [ 1, %3 ], [ 1, %52 ]
  ret i32 %54
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_reconfig_get_state_change(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @class_find_device(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_match_of_node(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @bus_find_device(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #15

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #15

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #15

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #15

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.umin.i64(i64, i64) #15

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nofree nounwind null_pointer_is_valid readonly sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nofree null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { argmemonly nofree nounwind willreturn }
attributes #8 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { argmemonly nofree nounwind willreturn writeonly }
attributes #10 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #11 = { nounwind readonly }
attributes #12 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #13 = { nofree nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #14 = { nofree nounwind null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #15 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #16 = { null_pointer_is_valid allocsize(0) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #17 = { inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #18 = { null_pointer_is_valid allocsize(1) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #19 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #20 = { nounwind }
attributes #21 = { cold nounwind }
attributes #22 = { nounwind allocsize(2) }
attributes #23 = { nounwind allocsize(0) }
attributes #24 = { nounwind allocsize(1) }
attributes #25 = { nounwind readnone }

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
!10 = !{!"branch_weights", i32 2000, i32 1}
!11 = !{!"branch_weights", i32 1, i32 2000}
!12 = !{i64 439614}
!13 = !{i64 2152625133, i64 2152625625, i64 2152625170, i64 2152625226, i64 2152625260, i64 2152625284, i64 2152625325, i64 2152625346, i64 2152625374, i64 2152625408}
!14 = !{i8 0, i8 2}
!15 = !{i64 420914, i64 420975}
!16 = !{i64 2156271122}
!17 = !{i64 423931}
!18 = !{i64 2156276996}
!19 = !{i64 2154649394}
!20 = !{i64 2154649544}
!21 = !{i64 2154545208}
!22 = !{i64 2154549439}
!23 = !{i64 2148027365}
!24 = !{i64 525675, i64 2148015646, i64 2148015672, i64 2148015719, i64 2148015741, i64 2148015769, i64 2148015789}
!25 = !{i64 512244, i64 512269, i64 512291, i64 512307, i64 512319, i64 512339, i64 512363, i64 512379, i64 512391}
!26 = !{i64 2148027491}
!27 = !{i64 2154633414}
!28 = !{i64 2154633566}
!29 = !{i32 0, i32 33}
!30 = distinct !{!30, !31}
!31 = !{!"llvm.loop.peeled.count", i32 1}
!32 = !{i64 2154581870}
!33 = !{i64 2154582022}
!34 = !{i64 2154597515}
!35 = !{i64 2154597669}
!36 = !{i64 2154613281}
!37 = !{i64 2154613435}
!38 = !{i64 2154565748}
!39 = !{i64 2154565918}
!40 = !{i64 2154665828}
!41 = !{i64 2154665994}
!42 = !{i64 2148441038, i64 2148441318, i64 2148441652, i64 2148441986}
!43 = !{i64 2154686495}
!44 = !{i64 2154686659}
