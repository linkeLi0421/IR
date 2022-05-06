; ModuleID = '/llk/IR/drivers/i2c/i2c-core-base.c_pt.bc'
source_filename = "../drivers/i2c/i2c-core-base.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_i2c_freq_mode_string:\09\09\09\09\09"
module asm "\09.asciz \09\22i2c_freq_mode_string\22\09\09\09\09\09"
module asm "__kstrtabns_i2c_freq_mode_string:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_i2c_match_id:\09\09\09\09\09"
module asm "\09.asciz \09\22i2c_match_id\22\09\09\09\09\09"
module asm "__kstrtabns_i2c_match_id:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_i2c_generic_scl_recovery:\09\09\09\09\09"
module asm "\09.asciz \09\22i2c_generic_scl_recovery\22\09\09\09\09\09"
module asm "__kstrtabns_i2c_generic_scl_recovery:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_i2c_recover_bus:\09\09\09\09\09"
module asm "\09.asciz \09\22i2c_recover_bus\22\09\09\09\09\09"
module asm "__kstrtabns_i2c_recover_bus:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_i2c_bus_type:\09\09\09\09\09"
module asm "\09.asciz \09\22i2c_bus_type\22\09\09\09\09\09"
module asm "__kstrtabns_i2c_bus_type:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_i2c_client_type:\09\09\09\09\09"
module asm "\09.asciz \09\22i2c_client_type\22\09\09\09\09\09"
module asm "__kstrtabns_i2c_client_type:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_i2c_verify_client:\09\09\09\09\09"
module asm "\09.asciz \09\22i2c_verify_client\22\09\09\09\09\09"
module asm "__kstrtabns_i2c_verify_client:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_i2c_new_client_device:\09\09\09\09\09"
module asm "\09.asciz \09\22i2c_new_client_device\22\09\09\09\09\09"
module asm "__kstrtabns_i2c_new_client_device:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_i2c_unregister_device:\09\09\09\09\09"
module asm "\09.asciz \09\22i2c_unregister_device\22\09\09\09\09\09"
module asm "__kstrtabns_i2c_unregister_device:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_i2c_new_dummy_device:\09\09\09\09\09"
module asm "\09.asciz \09\22i2c_new_dummy_device\22\09\09\09\09\09"
module asm "__kstrtabns_i2c_new_dummy_device:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_devm_i2c_new_dummy_device:\09\09\09\09\09"
module asm "\09.asciz \09\22devm_i2c_new_dummy_device\22\09\09\09\09\09"
module asm "__kstrtabns_devm_i2c_new_dummy_device:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_i2c_new_ancillary_device:\09\09\09\09\09"
module asm "\09.asciz \09\22i2c_new_ancillary_device\22\09\09\09\09\09"
module asm "__kstrtabns_i2c_new_ancillary_device:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_i2c_adapter_depth:\09\09\09\09\09"
module asm "\09.asciz \09\22i2c_adapter_depth\22\09\09\09\09\09"
module asm "__kstrtabns_i2c_adapter_depth:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_i2c_adapter_type:\09\09\09\09\09"
module asm "\09.asciz \09\22i2c_adapter_type\22\09\09\09\09\09"
module asm "__kstrtabns_i2c_adapter_type:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_i2c_verify_adapter:\09\09\09\09\09"
module asm "\09.asciz \09\22i2c_verify_adapter\22\09\09\09\09\09"
module asm "__kstrtabns_i2c_verify_adapter:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_i2c_handle_smbus_host_notify:\09\09\09\09\09"
module asm "\09.asciz \09\22i2c_handle_smbus_host_notify\22\09\09\09\09\09"
module asm "__kstrtabns_i2c_handle_smbus_host_notify:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_i2c_add_adapter:\09\09\09\09\09"
module asm "\09.asciz \09\22i2c_add_adapter\22\09\09\09\09\09"
module asm "__kstrtabns_i2c_add_adapter:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_i2c_add_numbered_adapter:\09\09\09\09\09"
module asm "\09.asciz \09\22i2c_add_numbered_adapter\22\09\09\09\09\09"
module asm "__kstrtabns_i2c_add_numbered_adapter:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_i2c_del_adapter:\09\09\09\09\09"
module asm "\09.asciz \09\22i2c_del_adapter\22\09\09\09\09\09"
module asm "__kstrtabns_i2c_del_adapter:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_devm_i2c_add_adapter:\09\09\09\09\09"
module asm "\09.asciz \09\22devm_i2c_add_adapter\22\09\09\09\09\09"
module asm "__kstrtabns_devm_i2c_add_adapter:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_i2c_parse_fw_timings:\09\09\09\09\09"
module asm "\09.asciz \09\22i2c_parse_fw_timings\22\09\09\09\09\09"
module asm "__kstrtabns_i2c_parse_fw_timings:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_i2c_for_each_dev:\09\09\09\09\09"
module asm "\09.asciz \09\22i2c_for_each_dev\22\09\09\09\09\09"
module asm "__kstrtabns_i2c_for_each_dev:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_i2c_register_driver:\09\09\09\09\09"
module asm "\09.asciz \09\22i2c_register_driver\22\09\09\09\09\09"
module asm "__kstrtabns_i2c_register_driver:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_i2c_del_driver:\09\09\09\09\09"
module asm "\09.asciz \09\22i2c_del_driver\22\09\09\09\09\09"
module asm "__kstrtabns_i2c_del_driver:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_i2c_clients_command:\09\09\09\09\09"
module asm "\09.asciz \09\22i2c_clients_command\22\09\09\09\09\09"
module asm "__kstrtabns_i2c_clients_command:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___i2c_transfer:\09\09\09\09\09"
module asm "\09.asciz \09\22__i2c_transfer\22\09\09\09\09\09"
module asm "__kstrtabns___i2c_transfer:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_i2c_transfer:\09\09\09\09\09"
module asm "\09.asciz \09\22i2c_transfer\22\09\09\09\09\09"
module asm "__kstrtabns_i2c_transfer:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_i2c_transfer_buffer_flags:\09\09\09\09\09"
module asm "\09.asciz \09\22i2c_transfer_buffer_flags\22\09\09\09\09\09"
module asm "__kstrtabns_i2c_transfer_buffer_flags:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_i2c_get_device_id:\09\09\09\09\09"
module asm "\09.asciz \09\22i2c_get_device_id\22\09\09\09\09\09"
module asm "__kstrtabns_i2c_get_device_id:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_i2c_probe_func_quick_read:\09\09\09\09\09"
module asm "\09.asciz \09\22i2c_probe_func_quick_read\22\09\09\09\09\09"
module asm "__kstrtabns_i2c_probe_func_quick_read:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_i2c_new_scanned_device:\09\09\09\09\09"
module asm "\09.asciz \09\22i2c_new_scanned_device\22\09\09\09\09\09"
module asm "__kstrtabns_i2c_new_scanned_device:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_i2c_get_adapter:\09\09\09\09\09"
module asm "\09.asciz \09\22i2c_get_adapter\22\09\09\09\09\09"
module asm "__kstrtabns_i2c_get_adapter:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_i2c_put_adapter:\09\09\09\09\09"
module asm "\09.asciz \09\22i2c_put_adapter\22\09\09\09\09\09"
module asm "__kstrtabns_i2c_put_adapter:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_i2c_get_dma_safe_msg_buf:\09\09\09\09\09"
module asm "\09.asciz \09\22i2c_get_dma_safe_msg_buf\22\09\09\09\09\09"
module asm "__kstrtabns_i2c_get_dma_safe_msg_buf:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_i2c_put_dma_safe_msg_buf:\09\09\09\09\09"
module asm "\09.asciz \09\22i2c_put_dma_safe_msg_buf\22\09\09\09\09\09"
module asm "__kstrtabns_i2c_put_dma_safe_msg_buf:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.static_call_key = type { ptr }
%struct.tracepoint = type { ptr, %struct.static_key, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.static_key = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.trace_event_fields = type { ptr, %union.anon.91 }
%union.anon.91 = type { %struct.anon.92 }
%struct.anon.92 = type { ptr, i32, i32, i32, i32 }
%struct.trace_event_class = type { ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr }
%struct.list_head = type { ptr, ptr }
%struct.trace_event_functions = type { ptr, ptr, ptr, ptr }
%struct.trace_event_call = type { %struct.list_head, ptr, %union.anon.93, %struct.trace_event, ptr, ptr, %union.anon.94, ptr, i32, i32, ptr, ptr, ptr }
%union.anon.93 = type { ptr }
%struct.trace_event = type { %struct.hlist_node, %struct.list_head, i32, ptr }
%struct.hlist_node = type { ptr, ptr }
%union.anon.94 = type { ptr }
%struct.static_key_false = type { %struct.static_key }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.bus_type = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.lock_class_key, i8 }
%struct.lock_class_key = type {}
%struct.device_type = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.i2c_driver = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, ptr, ptr, %struct.list_head, i32 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.attribute_group = type { ptr, ptr, ptr, ptr, ptr }
%struct.device_attribute = type { %struct.attribute, ptr, ptr }
%struct.attribute = type { ptr, i16 }
%struct.i2c_lock_operations = type { ptr, ptr, ptr }
%struct.irq_domain_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.irq_chip = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32 }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head }
%struct.i2c_device_id = type { [20 x i8], i32 }
%struct.srcu_struct = type { [1 x %struct.srcu_node], [2 x ptr], %struct.mutex, %struct.spinlock, %struct.mutex, i32, i32, i32, i32, i32, ptr, i32, %struct.mutex, %struct.completion, %struct.atomic_t, %struct.delayed_work, %struct.lockdep_map }
%struct.srcu_node = type { %struct.spinlock, [4 x i32], [4 x i32], i32, ptr, i32, i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32 }
%struct.lockdep_map = type {}
%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i32, i32 }
%struct.cpumask = type { [1 x i32] }
%struct.tracepoint_func = type { ptr, ptr, i32 }
%struct.trace_event_buffer = type { ptr, ptr, ptr, ptr, i32, ptr }
%struct.trace_event_file = type { %struct.list_head, ptr, ptr, ptr, ptr, ptr, %struct.list_head, i32, %struct.atomic_t, %struct.atomic_t }
%struct.i2c_msg = type { i16, i16, i16, ptr }
%struct.trace_event_raw_i2c_write = type { %struct.trace_entry, i32, i16, i16, i16, i16, i32, [0 x i8] }
%struct.trace_entry = type { i16, i8, i8, i32 }
%struct.i2c_adapter = type { ptr, i32, ptr, ptr, ptr, %struct.rt_mutex, %struct.rt_mutex, i32, i32, %struct.device, i32, i32, [48 x i8], %struct.completion, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.rt_mutex = type { %struct.rt_mutex_base }
%struct.rt_mutex_base = type { %struct.raw_spinlock, %struct.rb_root_cached, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
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
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.trace_event_raw_i2c_read = type { %struct.trace_entry, i32, i16, i16, i16, i16, [0 x i8] }
%struct.trace_event_raw_i2c_reply = type { %struct.trace_entry, i32, i16, i16, i16, i16, i32, [0 x i8] }
%struct.trace_event_raw_i2c_result = type { %struct.trace_entry, i32, i16, i16, [0 x i8] }
%struct.i2c_client = type { i16, i16, [20 x i8], ptr, %struct.device, i32, i32, %struct.list_head, ptr, ptr }
%struct.i2c_bus_recovery_info = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.irq_data = type { i32, i32, i32, ptr, ptr, ptr, ptr, ptr }
%struct.i2c_board_info = type { [20 x i8], i16, i16, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32 }
%struct.device_node = type { ptr, i32, ptr, %struct.fwnode_handle, ptr, ptr, ptr, ptr, ptr, %struct.kobject, i32, ptr }
%struct.fwnode_handle = type { ptr, ptr, ptr, %struct.list_head, %struct.list_head, i8 }
%struct.i2c_algorithm = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.i2c_devinfo = type { %struct.list_head, i32, %struct.i2c_board_info }
%struct.i2c_timings = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.i2c_cmd_arg = type { i32, ptr }
%struct.i2c_adapter_quirks = type { i64, i32, i16, i16, i16, i16 }
%struct.thread_info = type { i32, i32, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], [4 x i8], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%union.i2c_smbus_data = type { i16, [32 x i8] }
%struct.i2c_device_identity = type { i16, i16, i8 }
%struct.trace_iterator = type { ptr, ptr, ptr, ptr, i32, %struct.mutex, ptr, i32, ptr, i32, ptr, i32, %struct.trace_seq, [1 x %struct.cpumask], i8, %struct.trace_seq, ptr, i32, i32, i32, i32, i64, i64, i32 }
%struct.trace_seq = type { [4096 x i8], %struct.seq_buf, i32 }
%struct.seq_buf = type { ptr, i32, i32, i64 }

@__tpstrtab_i2c_write = internal constant [10 x i8] c"i2c_write\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_i2c_write = dso_local global %struct.static_call_key { ptr @__traceiter_i2c_write }, align 4
@__tracepoint_i2c_write = dso_local global %struct.tracepoint { ptr @__tpstrtab_i2c_write, %struct.static_key zeroinitializer, ptr @__SCK__tp_func_i2c_write, ptr null, ptr @__traceiter_i2c_write, ptr @i2c_transfer_trace_reg, ptr @i2c_transfer_trace_unreg, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_i2c_write = internal constant ptr @__tracepoint_i2c_write, section "__tracepoints_ptrs", align 4
@__tpstrtab_i2c_read = internal constant [9 x i8] c"i2c_read\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_i2c_read = dso_local global %struct.static_call_key { ptr @__traceiter_i2c_read }, align 4
@__tracepoint_i2c_read = dso_local global %struct.tracepoint { ptr @__tpstrtab_i2c_read, %struct.static_key zeroinitializer, ptr @__SCK__tp_func_i2c_read, ptr null, ptr @__traceiter_i2c_read, ptr @i2c_transfer_trace_reg, ptr @i2c_transfer_trace_unreg, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_i2c_read = internal constant ptr @__tracepoint_i2c_read, section "__tracepoints_ptrs", align 4
@__tpstrtab_i2c_reply = internal constant [10 x i8] c"i2c_reply\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_i2c_reply = dso_local global %struct.static_call_key { ptr @__traceiter_i2c_reply }, align 4
@__tracepoint_i2c_reply = dso_local global %struct.tracepoint { ptr @__tpstrtab_i2c_reply, %struct.static_key zeroinitializer, ptr @__SCK__tp_func_i2c_reply, ptr null, ptr @__traceiter_i2c_reply, ptr @i2c_transfer_trace_reg, ptr @i2c_transfer_trace_unreg, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_i2c_reply = internal constant ptr @__tracepoint_i2c_reply, section "__tracepoints_ptrs", align 4
@__tpstrtab_i2c_result = internal constant [11 x i8] c"i2c_result\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_i2c_result = dso_local global %struct.static_call_key { ptr @__traceiter_i2c_result }, align 4
@__tracepoint_i2c_result = dso_local global %struct.tracepoint { ptr @__tpstrtab_i2c_result, %struct.static_key zeroinitializer, ptr @__SCK__tp_func_i2c_result, ptr null, ptr @__traceiter_i2c_result, ptr @i2c_transfer_trace_reg, ptr @i2c_transfer_trace_unreg, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_i2c_result = internal constant ptr @__tracepoint_i2c_result, section "__tracepoints_ptrs", align 4
@trace_event_fields_i2c_write = internal global [7 x %struct.trace_event_fields] [%struct.trace_event_fields { ptr @.str.27, %union.anon.91 { %struct.anon.92 { ptr @.str.28, i32 4, i32 4, i32 1, i32 0 } } }, %struct.trace_event_fields { ptr @.str.29, %union.anon.91 { %struct.anon.92 { ptr @.str.30, i32 2, i32 2, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.29, %union.anon.91 { %struct.anon.92 { ptr @.str.31, i32 2, i32 2, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.29, %union.anon.91 { %struct.anon.92 { ptr @.str.32, i32 2, i32 2, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.29, %union.anon.91 { %struct.anon.92 { ptr @.str.33, i32 2, i32 2, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.34, %union.anon.91 { %struct.anon.92 { ptr @.str.35, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields zeroinitializer], align 4
@event_class_i2c_write = internal global %struct.trace_event_class { ptr @.str.8, ptr @trace_event_raw_event_i2c_write, ptr @perf_trace_i2c_write, ptr @trace_event_reg, ptr @trace_event_fields_i2c_write, ptr null, %struct.list_head { ptr getelementptr (i8, ptr @event_class_i2c_write, i64 24), ptr getelementptr (i8, ptr @event_class_i2c_write, i64 24) }, ptr @trace_event_raw_init }, section ".ref.data", align 4
@trace_event_type_funcs_i2c_write = internal global %struct.trace_event_functions { ptr @trace_raw_output_i2c_write, ptr null, ptr null, ptr null }, align 4
@print_fmt_i2c_write = internal global [139 x i8] c"\22i2c-%d #%u a=%03x f=%04x l=%u [%*phD]\22, REC->adapter_nr, REC->msg_nr, REC->addr, REC->flags, REC->len, REC->len, __get_dynamic_array(buf)\00", align 1
@event_i2c_write = internal global %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_i2c_write, %union.anon.93 { ptr @__tracepoint_i2c_write }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_i2c_write }, ptr @print_fmt_i2c_write, ptr null, %union.anon.94 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, align 4
@__event_i2c_write = internal global ptr @event_i2c_write, section "_ftrace_events", align 4
@trace_event_fields_i2c_read = internal global [6 x %struct.trace_event_fields] [%struct.trace_event_fields { ptr @.str.27, %union.anon.91 { %struct.anon.92 { ptr @.str.28, i32 4, i32 4, i32 1, i32 0 } } }, %struct.trace_event_fields { ptr @.str.29, %union.anon.91 { %struct.anon.92 { ptr @.str.30, i32 2, i32 2, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.29, %union.anon.91 { %struct.anon.92 { ptr @.str.31, i32 2, i32 2, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.29, %union.anon.91 { %struct.anon.92 { ptr @.str.32, i32 2, i32 2, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.29, %union.anon.91 { %struct.anon.92 { ptr @.str.33, i32 2, i32 2, i32 0, i32 0 } } }, %struct.trace_event_fields zeroinitializer], align 4
@event_class_i2c_read = internal global %struct.trace_event_class { ptr @.str.8, ptr @trace_event_raw_event_i2c_read, ptr @perf_trace_i2c_read, ptr @trace_event_reg, ptr @trace_event_fields_i2c_read, ptr null, %struct.list_head { ptr getelementptr (i8, ptr @event_class_i2c_read, i64 24), ptr getelementptr (i8, ptr @event_class_i2c_read, i64 24) }, ptr @trace_event_raw_init }, section ".ref.data", align 4
@trace_event_type_funcs_i2c_read = internal global %struct.trace_event_functions { ptr @trace_raw_output_i2c_read, ptr null, ptr null, ptr null }, align 4
@print_fmt_i2c_read = internal global [95 x i8] c"\22i2c-%d #%u a=%03x f=%04x l=%u\22, REC->adapter_nr, REC->msg_nr, REC->addr, REC->flags, REC->len\00", align 1
@event_i2c_read = internal global %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_i2c_read, %union.anon.93 { ptr @__tracepoint_i2c_read }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_i2c_read }, ptr @print_fmt_i2c_read, ptr null, %union.anon.94 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, align 4
@__event_i2c_read = internal global ptr @event_i2c_read, section "_ftrace_events", align 4
@trace_event_fields_i2c_reply = internal global [7 x %struct.trace_event_fields] [%struct.trace_event_fields { ptr @.str.27, %union.anon.91 { %struct.anon.92 { ptr @.str.28, i32 4, i32 4, i32 1, i32 0 } } }, %struct.trace_event_fields { ptr @.str.29, %union.anon.91 { %struct.anon.92 { ptr @.str.30, i32 2, i32 2, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.29, %union.anon.91 { %struct.anon.92 { ptr @.str.31, i32 2, i32 2, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.29, %union.anon.91 { %struct.anon.92 { ptr @.str.32, i32 2, i32 2, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.29, %union.anon.91 { %struct.anon.92 { ptr @.str.33, i32 2, i32 2, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.34, %union.anon.91 { %struct.anon.92 { ptr @.str.35, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields zeroinitializer], align 4
@event_class_i2c_reply = internal global %struct.trace_event_class { ptr @.str.8, ptr @trace_event_raw_event_i2c_reply, ptr @perf_trace_i2c_reply, ptr @trace_event_reg, ptr @trace_event_fields_i2c_reply, ptr null, %struct.list_head { ptr getelementptr (i8, ptr @event_class_i2c_reply, i64 24), ptr getelementptr (i8, ptr @event_class_i2c_reply, i64 24) }, ptr @trace_event_raw_init }, section ".ref.data", align 4
@trace_event_type_funcs_i2c_reply = internal global %struct.trace_event_functions { ptr @trace_raw_output_i2c_reply, ptr null, ptr null, ptr null }, align 4
@print_fmt_i2c_reply = internal global [139 x i8] c"\22i2c-%d #%u a=%03x f=%04x l=%u [%*phD]\22, REC->adapter_nr, REC->msg_nr, REC->addr, REC->flags, REC->len, REC->len, __get_dynamic_array(buf)\00", align 1
@event_i2c_reply = internal global %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_i2c_reply, %union.anon.93 { ptr @__tracepoint_i2c_reply }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_i2c_reply }, ptr @print_fmt_i2c_reply, ptr null, %union.anon.94 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, align 4
@__event_i2c_reply = internal global ptr @event_i2c_reply, section "_ftrace_events", align 4
@trace_event_fields_i2c_result = internal global [4 x %struct.trace_event_fields] [%struct.trace_event_fields { ptr @.str.27, %union.anon.91 { %struct.anon.92 { ptr @.str.28, i32 4, i32 4, i32 1, i32 0 } } }, %struct.trace_event_fields { ptr @.str.29, %union.anon.91 { %struct.anon.92 { ptr @.str.38, i32 2, i32 2, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.39, %union.anon.91 { %struct.anon.92 { ptr @.str.40, i32 2, i32 2, i32 1, i32 0 } } }, %struct.trace_event_fields zeroinitializer], align 4
@event_class_i2c_result = internal global %struct.trace_event_class { ptr @.str.8, ptr @trace_event_raw_event_i2c_result, ptr @perf_trace_i2c_result, ptr @trace_event_reg, ptr @trace_event_fields_i2c_result, ptr null, %struct.list_head { ptr getelementptr (i8, ptr @event_class_i2c_result, i64 24), ptr getelementptr (i8, ptr @event_class_i2c_result, i64 24) }, ptr @trace_event_raw_init }, section ".ref.data", align 4
@trace_event_type_funcs_i2c_result = internal global %struct.trace_event_functions { ptr @trace_raw_output_i2c_result, ptr null, ptr null, ptr null }, align 4
@print_fmt_i2c_result = internal global [62 x i8] c"\22i2c-%d n=%u ret=%d\22, REC->adapter_nr, REC->nr_msgs, REC->ret\00", align 1
@event_i2c_result = internal global %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_i2c_result, %union.anon.93 { ptr @__tracepoint_i2c_result }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_i2c_result }, ptr @print_fmt_i2c_result, ptr null, %union.anon.94 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, align 4
@__event_i2c_result = internal global ptr @event_i2c_result, section "_ftrace_events", align 4
@i2c_trace_msg_key = internal global %struct.static_key_false zeroinitializer, align 4
@.str = private unnamed_addr constant [24 x i8] c"Standard Mode (100 kHz)\00", align 1
@.str.1 = private unnamed_addr constant [20 x i8] c"Fast Mode (400 kHz)\00", align 1
@.str.2 = private unnamed_addr constant [25 x i8] c"Fast Mode Plus (1.0 MHz)\00", align 1
@.str.3 = private unnamed_addr constant [21 x i8] c"Turbo Mode (1.4 MHz)\00", align 1
@.str.4 = private unnamed_addr constant [26 x i8] c"High Speed Mode (3.4 MHz)\00", align 1
@.str.5 = private unnamed_addr constant [26 x i8] c"Ultra Fast Mode (5.0 MHz)\00", align 1
@.str.6 = private unnamed_addr constant [13 x i8] c"Unknown Mode\00", align 1
@__kstrtab_i2c_freq_mode_string = external dso_local constant [0 x i8], align 1
@__kstrtabns_i2c_freq_mode_string = external dso_local constant [0 x i8], align 1
@__ksymtab_i2c_freq_mode_string = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @i2c_freq_mode_string to i32), ptr @__kstrtab_i2c_freq_mode_string, ptr @__kstrtabns_i2c_freq_mode_string }, section "___ksymtab_gpl+i2c_freq_mode_string", align 4
@__kstrtab_i2c_match_id = external dso_local constant [0 x i8], align 1
@__kstrtabns_i2c_match_id = external dso_local constant [0 x i8], align 1
@__ksymtab_i2c_match_id = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @i2c_match_id to i32), ptr @__kstrtab_i2c_match_id, ptr @__kstrtabns_i2c_match_id }, section "___ksymtab_gpl+i2c_match_id", align 4
@.str.7 = private unnamed_addr constant [33 x i8] c"SCL is stuck low, exit recovery\0A\00", align 1
@__kstrtab_i2c_generic_scl_recovery = external dso_local constant [0 x i8], align 1
@__kstrtabns_i2c_generic_scl_recovery = external dso_local constant [0 x i8], align 1
@__ksymtab_i2c_generic_scl_recovery = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @i2c_generic_scl_recovery to i32), ptr @__kstrtab_i2c_generic_scl_recovery, ptr @__kstrtabns_i2c_generic_scl_recovery }, section "___ksymtab_gpl+i2c_generic_scl_recovery", align 4
@__kstrtab_i2c_recover_bus = external dso_local constant [0 x i8], align 1
@__kstrtabns_i2c_recover_bus = external dso_local constant [0 x i8], align 1
@__ksymtab_i2c_recover_bus = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @i2c_recover_bus to i32), ptr @__kstrtab_i2c_recover_bus, ptr @__kstrtabns_i2c_recover_bus }, section "___ksymtab_gpl+i2c_recover_bus", align 4
@.str.8 = private constant [4 x i8] c"i2c\00", align 1
@i2c_bus_type = dso_local global %struct.bus_type { ptr @.str.8, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @i2c_device_match, ptr null, ptr @i2c_device_probe, ptr null, ptr @i2c_device_remove, ptr @i2c_device_shutdown, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.lock_class_key zeroinitializer, i8 0 }, align 4
@__kstrtab_i2c_bus_type = external dso_local constant [0 x i8], align 1
@__kstrtabns_i2c_bus_type = external dso_local constant [0 x i8], align 1
@__ksymtab_i2c_bus_type = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @i2c_bus_type to i32), ptr @__kstrtab_i2c_bus_type, ptr @__kstrtabns_i2c_bus_type }, section "___ksymtab_gpl+i2c_bus_type", align 4
@i2c_dev_groups = internal global [2 x ptr] [ptr @i2c_dev_group, ptr null], align 4
@i2c_client_type = dso_local global %struct.device_type { ptr null, ptr @i2c_dev_groups, ptr @i2c_device_uevent, ptr null, ptr @i2c_client_dev_release, ptr null }, align 4
@__kstrtab_i2c_client_type = external dso_local constant [0 x i8], align 1
@__kstrtabns_i2c_client_type = external dso_local constant [0 x i8], align 1
@__ksymtab_i2c_client_type = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @i2c_client_type to i32), ptr @__kstrtab_i2c_client_type, ptr @__kstrtabns_i2c_client_type }, section "___ksymtab_gpl+i2c_client_type", align 4
@__kstrtab_i2c_verify_client = external dso_local constant [0 x i8], align 1
@__kstrtabns_i2c_verify_client = external dso_local constant [0 x i8], align 1
@__ksymtab_i2c_verify_client = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @i2c_verify_client to i32), ptr @__kstrtab_i2c_verify_client, ptr @__kstrtabns_i2c_verify_client }, section "___ksymtab+i2c_verify_client", align 4
@.str.9 = private unnamed_addr constant [36 x i8] c"Invalid %d-bit I2C address 0x%02hx\0A\00", align 1
@.str.10 = private unnamed_addr constant [46 x i8] c"Failed to add software node to client %s: %d\0A\00", align 1
@.str.11 = private unnamed_addr constant [49 x i8] c"Failed to register i2c client %s at 0x%02x (%d)\0A\00", align 1
@__kstrtab_i2c_new_client_device = external dso_local constant [0 x i8], align 1
@__kstrtabns_i2c_new_client_device = external dso_local constant [0 x i8], align 1
@__ksymtab_i2c_new_client_device = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @i2c_new_client_device to i32), ptr @__kstrtab_i2c_new_client_device, ptr @__kstrtabns_i2c_new_client_device }, section "___ksymtab_gpl+i2c_new_client_device", align 4
@__kstrtab_i2c_unregister_device = external dso_local constant [0 x i8], align 1
@__kstrtabns_i2c_unregister_device = external dso_local constant [0 x i8], align 1
@__ksymtab_i2c_unregister_device = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @i2c_unregister_device to i32), ptr @__kstrtab_i2c_unregister_device, ptr @__kstrtabns_i2c_unregister_device }, section "___ksymtab_gpl+i2c_unregister_device", align 4
@.str.12 = private unnamed_addr constant [20 x i8] c"dummy\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", align 1
@__kstrtab_i2c_new_dummy_device = external dso_local constant [0 x i8], align 1
@__kstrtabns_i2c_new_dummy_device = external dso_local constant [0 x i8], align 1
@__ksymtab_i2c_new_dummy_device = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @i2c_new_dummy_device to i32), ptr @__kstrtab_i2c_new_dummy_device, ptr @__kstrtabns_i2c_new_dummy_device }, section "___ksymtab_gpl+i2c_new_dummy_device", align 4
@__kstrtab_devm_i2c_new_dummy_device = external dso_local constant [0 x i8], align 1
@__kstrtabns_devm_i2c_new_dummy_device = external dso_local constant [0 x i8], align 1
@__ksymtab_devm_i2c_new_dummy_device = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @devm_i2c_new_dummy_device to i32), ptr @__kstrtab_devm_i2c_new_dummy_device, ptr @__kstrtabns_devm_i2c_new_dummy_device }, section "___ksymtab_gpl+devm_i2c_new_dummy_device", align 4
@.str.13 = private unnamed_addr constant [10 x i8] c"reg-names\00", align 1
@.str.14 = private unnamed_addr constant [4 x i8] c"reg\00", align 1
@__kstrtab_i2c_new_ancillary_device = external dso_local constant [0 x i8], align 1
@__kstrtabns_i2c_new_ancillary_device = external dso_local constant [0 x i8], align 1
@__ksymtab_i2c_new_ancillary_device = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @i2c_new_ancillary_device to i32), ptr @__kstrtab_i2c_new_ancillary_device, ptr @__kstrtabns_i2c_new_ancillary_device }, section "___ksymtab_gpl+i2c_new_ancillary_device", align 4
@i2c_adapter_depth.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.15 = private unnamed_addr constant [28 x i8] c"drivers/i2c/i2c-core-base.c\00", align 1
@.str.16 = private unnamed_addr constant [46 x i8] c"adapter depth exceeds lockdep subclass limit\0A\00", align 1
@__kstrtab_i2c_adapter_depth = external dso_local constant [0 x i8], align 1
@__kstrtabns_i2c_adapter_depth = external dso_local constant [0 x i8], align 1
@__ksymtab_i2c_adapter_depth = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @i2c_adapter_depth to i32), ptr @__kstrtab_i2c_adapter_depth, ptr @__kstrtabns_i2c_adapter_depth }, section "___ksymtab_gpl+i2c_adapter_depth", align 4
@i2c_adapter_groups = internal global [2 x ptr] [ptr @i2c_adapter_group, ptr null], align 4
@i2c_adapter_type = dso_local global %struct.device_type { ptr null, ptr @i2c_adapter_groups, ptr null, ptr null, ptr @i2c_adapter_dev_release, ptr null }, align 4
@__kstrtab_i2c_adapter_type = external dso_local constant [0 x i8], align 1
@__kstrtabns_i2c_adapter_type = external dso_local constant [0 x i8], align 1
@__ksymtab_i2c_adapter_type = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @i2c_adapter_type to i32), ptr @__kstrtab_i2c_adapter_type, ptr @__kstrtabns_i2c_adapter_type }, section "___ksymtab_gpl+i2c_adapter_type", align 4
@__kstrtab_i2c_verify_adapter = external dso_local constant [0 x i8], align 1
@__kstrtabns_i2c_verify_adapter = external dso_local constant [0 x i8], align 1
@__ksymtab_i2c_verify_adapter = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @i2c_verify_adapter to i32), ptr @__kstrtab_i2c_verify_adapter, ptr @__kstrtabns_i2c_verify_adapter }, section "___ksymtab+i2c_verify_adapter", align 4
@__kstrtab_i2c_handle_smbus_host_notify = external dso_local constant [0 x i8], align 1
@__kstrtabns_i2c_handle_smbus_host_notify = external dso_local constant [0 x i8], align 1
@__ksymtab_i2c_handle_smbus_host_notify = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @i2c_handle_smbus_host_notify to i32), ptr @__kstrtab_i2c_handle_smbus_host_notify, ptr @__kstrtabns_i2c_handle_smbus_host_notify }, section "___ksymtab_gpl+i2c_handle_smbus_host_notify", align 4
@core_lock = internal global %struct.mutex { %struct.atomic_t zeroinitializer, %struct.raw_spinlock zeroinitializer, %struct.optimistic_spin_queue zeroinitializer, %struct.list_head { ptr getelementptr (i8, ptr @core_lock, i64 12), ptr getelementptr (i8, ptr @core_lock, i64 12) } }, align 4
@i2c_adapter_idr = internal global %struct.idr { %struct.xarray { %struct.spinlock zeroinitializer, i32 33554436, ptr null }, i32 0, i32 0 }, align 4
@__i2c_first_dynamic_bus_num = external dso_local local_unnamed_addr global i32, align 4
@.str.17 = private unnamed_addr constant [17 x i8] c"couldn't get idr\00", align 1
@__kstrtab_i2c_add_adapter = external dso_local constant [0 x i8], align 1
@__kstrtabns_i2c_add_adapter = external dso_local constant [0 x i8], align 1
@__ksymtab_i2c_add_adapter = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @i2c_add_adapter to i32), ptr @__kstrtab_i2c_add_adapter, ptr @__kstrtabns_i2c_add_adapter }, section "___ksymtab+i2c_add_adapter", align 4
@__kstrtab_i2c_add_numbered_adapter = external dso_local constant [0 x i8], align 1
@__kstrtabns_i2c_add_numbered_adapter = external dso_local constant [0 x i8], align 1
@__ksymtab_i2c_add_numbered_adapter = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @i2c_add_numbered_adapter to i32), ptr @__kstrtab_i2c_add_numbered_adapter, ptr @__kstrtabns_i2c_add_numbered_adapter }, section "___ksymtab_gpl+i2c_add_numbered_adapter", align 4
@i2c_adapter_compat_class = internal unnamed_addr global ptr null, align 4
@__kstrtab_i2c_del_adapter = external dso_local constant [0 x i8], align 1
@__kstrtabns_i2c_del_adapter = external dso_local constant [0 x i8], align 1
@__ksymtab_i2c_del_adapter = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @i2c_del_adapter to i32), ptr @__kstrtab_i2c_del_adapter, ptr @__kstrtabns_i2c_del_adapter }, section "___ksymtab+i2c_del_adapter", align 4
@__kstrtab_devm_i2c_add_adapter = external dso_local constant [0 x i8], align 1
@__kstrtabns_devm_i2c_add_adapter = external dso_local constant [0 x i8], align 1
@__ksymtab_devm_i2c_add_adapter = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @devm_i2c_add_adapter to i32), ptr @__kstrtab_devm_i2c_add_adapter, ptr @__kstrtabns_devm_i2c_add_adapter }, section "___ksymtab_gpl+devm_i2c_add_adapter", align 4
@.str.18 = private unnamed_addr constant [16 x i8] c"clock-frequency\00", align 1
@.str.19 = private unnamed_addr constant [23 x i8] c"i2c-scl-rising-time-ns\00", align 1
@.str.20 = private unnamed_addr constant [24 x i8] c"i2c-scl-falling-time-ns\00", align 1
@.str.21 = private unnamed_addr constant [26 x i8] c"i2c-scl-internal-delay-ns\00", align 1
@.str.22 = private unnamed_addr constant [24 x i8] c"i2c-sda-falling-time-ns\00", align 1
@.str.23 = private unnamed_addr constant [21 x i8] c"i2c-sda-hold-time-ns\00", align 1
@.str.24 = private unnamed_addr constant [28 x i8] c"i2c-digital-filter-width-ns\00", align 1
@.str.25 = private unnamed_addr constant [35 x i8] c"i2c-analog-filter-cutoff-frequency\00", align 1
@__kstrtab_i2c_parse_fw_timings = external dso_local constant [0 x i8], align 1
@__kstrtabns_i2c_parse_fw_timings = external dso_local constant [0 x i8], align 1
@__ksymtab_i2c_parse_fw_timings = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @i2c_parse_fw_timings to i32), ptr @__kstrtab_i2c_parse_fw_timings, ptr @__kstrtabns_i2c_parse_fw_timings }, section "___ksymtab_gpl+i2c_parse_fw_timings", align 4
@__kstrtab_i2c_for_each_dev = external dso_local constant [0 x i8], align 1
@__kstrtabns_i2c_for_each_dev = external dso_local constant [0 x i8], align 1
@__ksymtab_i2c_for_each_dev = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @i2c_for_each_dev to i32), ptr @__kstrtab_i2c_for_each_dev, ptr @__kstrtabns_i2c_for_each_dev }, section "___ksymtab_gpl+i2c_for_each_dev", align 4
@is_registered = internal unnamed_addr global i1 false, align 1
@__kstrtab_i2c_register_driver = external dso_local constant [0 x i8], align 1
@__kstrtabns_i2c_register_driver = external dso_local constant [0 x i8], align 1
@__ksymtab_i2c_register_driver = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @i2c_register_driver to i32), ptr @__kstrtab_i2c_register_driver, ptr @__kstrtabns_i2c_register_driver }, section "___ksymtab+i2c_register_driver", align 4
@__kstrtab_i2c_del_driver = external dso_local constant [0 x i8], align 1
@__kstrtabns_i2c_del_driver = external dso_local constant [0 x i8], align 1
@__ksymtab_i2c_del_driver = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @i2c_del_driver to i32), ptr @__kstrtab_i2c_del_driver, ptr @__kstrtabns_i2c_del_driver }, section "___ksymtab+i2c_del_driver", align 4
@__kstrtab_i2c_clients_command = external dso_local constant [0 x i8], align 1
@__kstrtabns_i2c_clients_command = external dso_local constant [0 x i8], align 1
@__ksymtab_i2c_clients_command = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @i2c_clients_command to i32), ptr @__kstrtab_i2c_clients_command, ptr @__kstrtabns_i2c_clients_command }, section "___ksymtab+i2c_clients_command", align 4
@i2c_of_notifier = external dso_local global %struct.notifier_block, align 4
@dummy_driver = internal global %struct.i2c_driver { i32 0, ptr @dummy_probe, ptr @dummy_remove, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str.91, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr @dummy_id, ptr null, ptr null, %struct.list_head zeroinitializer, i32 0 }, align 4
@__initcall__kmod_i2c_core__277_1995_i2c_init2 = internal global ptr @i2c_init, section ".initcall2.init", align 4
@__exitcall_i2c_exit = internal global ptr @i2c_exit, section ".exitcall.exit", align 4
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 64
@__kstrtab___i2c_transfer = external dso_local constant [0 x i8], align 1
@__kstrtabns___i2c_transfer = external dso_local constant [0 x i8], align 1
@__ksymtab___i2c_transfer = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__i2c_transfer to i32), ptr @__kstrtab___i2c_transfer, ptr @__kstrtabns___i2c_transfer }, section "___ksymtab+__i2c_transfer", align 4
@__kstrtab_i2c_transfer = external dso_local constant [0 x i8], align 1
@__kstrtabns_i2c_transfer = external dso_local constant [0 x i8], align 1
@__ksymtab_i2c_transfer = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @i2c_transfer to i32), ptr @__kstrtab_i2c_transfer, ptr @__kstrtabns_i2c_transfer }, section "___ksymtab+i2c_transfer", align 4
@__kstrtab_i2c_transfer_buffer_flags = external dso_local constant [0 x i8], align 1
@__kstrtabns_i2c_transfer_buffer_flags = external dso_local constant [0 x i8], align 1
@__ksymtab_i2c_transfer_buffer_flags = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @i2c_transfer_buffer_flags to i32), ptr @__kstrtab_i2c_transfer_buffer_flags, ptr @__kstrtabns_i2c_transfer_buffer_flags }, section "___ksymtab+i2c_transfer_buffer_flags", align 4
@__kstrtab_i2c_get_device_id = external dso_local constant [0 x i8], align 1
@__kstrtabns_i2c_get_device_id = external dso_local constant [0 x i8], align 1
@__ksymtab_i2c_get_device_id = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @i2c_get_device_id to i32), ptr @__kstrtab_i2c_get_device_id, ptr @__kstrtabns_i2c_get_device_id }, section "___ksymtab_gpl+i2c_get_device_id", align 4
@__kstrtab_i2c_probe_func_quick_read = external dso_local constant [0 x i8], align 1
@__kstrtabns_i2c_probe_func_quick_read = external dso_local constant [0 x i8], align 1
@__ksymtab_i2c_probe_func_quick_read = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @i2c_probe_func_quick_read to i32), ptr @__kstrtab_i2c_probe_func_quick_read, ptr @__kstrtabns_i2c_probe_func_quick_read }, section "___ksymtab_gpl+i2c_probe_func_quick_read", align 4
@.str.26 = private unnamed_addr constant [30 x i8] c"Invalid 7-bit address 0x%02x\0A\00", align 1
@__kstrtab_i2c_new_scanned_device = external dso_local constant [0 x i8], align 1
@__kstrtabns_i2c_new_scanned_device = external dso_local constant [0 x i8], align 1
@__ksymtab_i2c_new_scanned_device = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @i2c_new_scanned_device to i32), ptr @__kstrtab_i2c_new_scanned_device, ptr @__kstrtabns_i2c_new_scanned_device }, section "___ksymtab_gpl+i2c_new_scanned_device", align 4
@__kstrtab_i2c_get_adapter = external dso_local constant [0 x i8], align 1
@__kstrtabns_i2c_get_adapter = external dso_local constant [0 x i8], align 1
@__ksymtab_i2c_get_adapter = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @i2c_get_adapter to i32), ptr @__kstrtab_i2c_get_adapter, ptr @__kstrtabns_i2c_get_adapter }, section "___ksymtab+i2c_get_adapter", align 4
@__kstrtab_i2c_put_adapter = external dso_local constant [0 x i8], align 1
@__kstrtabns_i2c_put_adapter = external dso_local constant [0 x i8], align 1
@__ksymtab_i2c_put_adapter = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @i2c_put_adapter to i32), ptr @__kstrtab_i2c_put_adapter, ptr @__kstrtabns_i2c_put_adapter }, section "___ksymtab+i2c_put_adapter", align 4
@__kstrtab_i2c_get_dma_safe_msg_buf = external dso_local constant [0 x i8], align 1
@__kstrtabns_i2c_get_dma_safe_msg_buf = external dso_local constant [0 x i8], align 1
@__ksymtab_i2c_get_dma_safe_msg_buf = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @i2c_get_dma_safe_msg_buf to i32), ptr @__kstrtab_i2c_get_dma_safe_msg_buf, ptr @__kstrtabns_i2c_get_dma_safe_msg_buf }, section "___ksymtab_gpl+i2c_get_dma_safe_msg_buf", align 4
@__kstrtab_i2c_put_dma_safe_msg_buf = external dso_local constant [0 x i8], align 1
@__kstrtabns_i2c_put_dma_safe_msg_buf = external dso_local constant [0 x i8], align 1
@__ksymtab_i2c_put_dma_safe_msg_buf = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @i2c_put_dma_safe_msg_buf to i32), ptr @__kstrtab_i2c_put_dma_safe_msg_buf, ptr @__kstrtabns_i2c_put_dma_safe_msg_buf }, section "___ksymtab_gpl+i2c_put_dma_safe_msg_buf", align 4
@__UNIQUE_ID_author278 = internal constant [56 x i8] c"i2c_core.author=Simon G. Vogl <simon@tk.uni-linz.ac.at>\00", section ".modinfo", align 1
@__UNIQUE_ID_description279 = internal constant [41 x i8] c"i2c_core.description=I2C-Bus main module\00", section ".modinfo", align 1
@__UNIQUE_ID_file280 = internal constant [35 x i8] c"i2c_core.file=drivers/i2c/i2c-core\00", section ".modinfo", align 1
@__UNIQUE_ID_license281 = internal constant [21 x i8] c"i2c_core.license=GPL\00", section ".modinfo", align 1
@.str.27 = private unnamed_addr constant [4 x i8] c"int\00", align 1
@.str.28 = private unnamed_addr constant [11 x i8] c"adapter_nr\00", align 1
@.str.29 = private unnamed_addr constant [6 x i8] c"__u16\00", align 1
@.str.30 = private unnamed_addr constant [7 x i8] c"msg_nr\00", align 1
@.str.31 = private unnamed_addr constant [5 x i8] c"addr\00", align 1
@.str.32 = private unnamed_addr constant [6 x i8] c"flags\00", align 1
@.str.33 = private unnamed_addr constant [4 x i8] c"len\00", align 1
@.str.34 = private unnamed_addr constant [18 x i8] c"__data_loc __u8[]\00", align 1
@.str.35 = private unnamed_addr constant [4 x i8] c"buf\00", align 1
@.str.36 = private unnamed_addr constant [39 x i8] c"i2c-%d #%u a=%03x f=%04x l=%u [%*phD]\0A\00", align 1
@.str.37 = private unnamed_addr constant [31 x i8] c"i2c-%d #%u a=%03x f=%04x l=%u\0A\00", align 1
@.str.38 = private unnamed_addr constant [8 x i8] c"nr_msgs\00", align 1
@.str.39 = private unnamed_addr constant [6 x i8] c"__s16\00", align 1
@.str.40 = private unnamed_addr constant [4 x i8] c"ret\00", align 1
@.str.41 = private unnamed_addr constant [20 x i8] c"i2c-%d n=%u ret=%d\0A\00", align 1
@static_key_initialized = external dso_local local_unnamed_addr global i8, align 1
@.str.42 = private unnamed_addr constant [27 x i8] c"include/linux/jump_label.h\00", align 1
@.str.43 = private unnamed_addr constant [61 x i8] c"%s(): static key '%pS' used before call to jump_label_init()\00", align 1
@__func__.static_key_slow_inc = private unnamed_addr constant [20 x i8] c"static_key_slow_inc\00", align 1
@__func__.static_key_slow_dec = private unnamed_addr constant [20 x i8] c"static_key_slow_dec\00", align 1
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@.str.44 = private unnamed_addr constant [4 x i8] c"irq\00", align 1
@.str.45 = private unnamed_addr constant [7 x i8] c"wakeup\00", align 1
@.str.46 = private unnamed_addr constant [29 x i8] c"failed to set up wakeup irq\0A\00", align 1
@.str.47 = private unnamed_addr constant [38 x i8] c"remove failed (%pe), will be ignored\0A\00", align 1
@i2c_dev_group = internal constant %struct.attribute_group { ptr null, ptr null, ptr null, ptr @i2c_dev_attrs, ptr null }, align 4
@i2c_dev_attrs = internal global [3 x ptr] [ptr @dev_attr_name, ptr @dev_attr_modalias, ptr null], align 4
@dev_attr_name = internal global %struct.device_attribute { %struct.attribute { ptr @.str.48, i16 292 }, ptr @name_show, ptr null }, align 4
@dev_attr_modalias = internal global %struct.device_attribute { %struct.attribute { ptr @.str.50, i16 292 }, ptr @modalias_show, ptr null }, align 4
@.str.48 = private unnamed_addr constant [5 x i8] c"name\00", align 1
@.str.49 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@.str.50 = private unnamed_addr constant [9 x i8] c"modalias\00", align 1
@.str.51 = private unnamed_addr constant [6 x i8] c"%s%s\0A\00", align 1
@.str.52 = private unnamed_addr constant [5 x i8] c"i2c:\00", align 1
@.str.53 = private unnamed_addr constant [14 x i8] c"MODALIAS=%s%s\00", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@.str.54 = private unnamed_addr constant [7 x i8] c"i2c-%s\00", align 1
@.str.55 = private unnamed_addr constant [8 x i8] c"%d-%04x\00", align 1
@i2c_adapter_group = internal constant %struct.attribute_group { ptr null, ptr null, ptr null, ptr @i2c_adapter_attrs, ptr null }, align 4
@i2c_adapter_attrs = internal global [4 x ptr] [ptr @dev_attr_name, ptr @dev_attr_new_device, ptr @dev_attr_delete_device, ptr null], align 4
@dev_attr_new_device = internal global %struct.device_attribute { %struct.attribute { ptr @.str.56, i16 128 }, ptr null, ptr @new_device_store }, align 4
@dev_attr_delete_device = internal global %struct.device_attribute { %struct.attribute { ptr @.str.63, i16 128 }, ptr null, ptr @delete_device_store }, align 4
@.str.56 = private unnamed_addr constant [11 x i8] c"new_device\00", align 1
@.str.57 = private unnamed_addr constant [24 x i8] c"%s: Missing parameters\0A\00", align 1
@.str.58 = private unnamed_addr constant [25 x i8] c"%s: Invalid device name\0A\00", align 1
@.str.59 = private unnamed_addr constant [6 x i8] c"%hi%c\00", align 1
@.str.60 = private unnamed_addr constant [29 x i8] c"%s: Can't parse I2C address\0A\00", align 1
@.str.61 = private unnamed_addr constant [22 x i8] c"%s: Extra parameters\0A\00", align 1
@.str.62 = private unnamed_addr constant [39 x i8] c"%s: Instantiated device %s at 0x%02hx\0A\00", align 1
@.str.63 = private unnamed_addr constant [14 x i8] c"delete_device\00", align 1
@.str.64 = private unnamed_addr constant [35 x i8] c"%s: Deleting device %s at 0x%02hx\0A\00", align 1
@.str.65 = private unnamed_addr constant [31 x i8] c"%s: Can't find device in list\0A\00", align 1
@.str.66 = private unnamed_addr constant [24 x i8] c"i2c adapter has no name\00", align 1
@.str.67 = private unnamed_addr constant [45 x i8] c"\013i2c-core: adapter '%s': no algo supplied!\0A\00", align 1
@i2c_adapter_lock_ops = internal constant %struct.i2c_lock_operations { ptr @i2c_adapter_lock_bus, ptr @i2c_adapter_trylock_bus, ptr @i2c_adapter_unlock_bus }, align 4
@i2c_register_adapter.__key = internal global %struct.lock_class_key zeroinitializer, align 1
@__func__.i2c_register_adapter = private unnamed_addr constant [21 x i8] c"i2c_register_adapter\00", align 1
@i2c_register_adapter.__key.68 = internal global %struct.lock_class_key zeroinitializer, align 1
@i2c_register_adapter.__key.69 = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.70 = private unnamed_addr constant [30 x i8] c"&adap->userspace_clients_lock\00", align 1
@.str.71 = private unnamed_addr constant [62 x i8] c"\013i2c-core: adapter '%s': can't create Host Notify IRQs (%d)\0A\00", align 1
@.str.72 = private unnamed_addr constant [7 x i8] c"i2c-%d\00", align 1
@.str.73 = private unnamed_addr constant [54 x i8] c"\013i2c-core: adapter '%s': can't register device (%d)\0A\00", align 1
@.str.74 = private unnamed_addr constant [43 x i8] c"Failed to create compatibility class link\0A\00", align 1
@i2c_host_notify_irq_ops = internal constant %struct.irq_domain_ops { ptr null, ptr null, ptr @i2c_host_notify_irq_map, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@dummy_irq_chip = external dso_local global %struct.irq_chip, align 4
@.str.76 = private unnamed_addr constant [25 x i8] c"no {get|set}_scl() found\00", align 1
@.str.77 = private unnamed_addr constant [37 x i8] c"either get_sda() or set_sda() needed\00", align 1
@.str.78 = private unnamed_addr constant [24 x i8] c"Not using recovery: %s\0A\00", align 1
@.str.79 = private unnamed_addr constant [8 x i8] c"default\00", align 1
@.str.80 = private unnamed_addr constant [5 x i8] c"gpio\00", align 1
@.str.81 = private unnamed_addr constant [9 x i8] c"recovery\00", align 1
@.str.82 = private unnamed_addr constant [39 x i8] c"using pinctrl states for GPIO recovery\00", align 1
@.str.83 = private unnamed_addr constant [4 x i8] c"scl\00", align 1
@.str.84 = private unnamed_addr constant [34 x i8] c"using generic GPIOs for recovery\0A\00", align 1
@.str.85 = private unnamed_addr constant [4 x i8] c"sda\00", align 1
@__i2c_board_lock = external dso_local global %struct.rw_semaphore, align 4
@__i2c_board_list = external dso_local global %struct.list_head, align 4
@.str.86 = private unnamed_addr constant [31 x i8] c"Can't create device at 0x%02x\0A\00", align 1
@.str.87 = private unnamed_addr constant [30 x i8] c"Invalid probe address 0x%02x\0A\00", align 1
@.str.88 = private unnamed_addr constant [49 x i8] c"%s detection function provided no name for 0x%x\0A\00", align 1
@.str.89 = private unnamed_addr constant [197 x i8] c"This adapter will soon drop class based instantiation of devices. Please make sure client 0x%02x gets instantiated by other means. Check 'Documentation/i2c/instantiating-devices.rst' for details.\0A\00", align 1
@.str.90 = private unnamed_addr constant [30 x i8] c"Failed creating %s at 0x%02x\0A\00", align 1
@.str.91 = private unnamed_addr constant [6 x i8] c"dummy\00", align 1
@init_completion.__key = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.92 = private unnamed_addr constant [9 x i8] c"&x->wait\00", align 1
@dummy_id = internal constant [2 x %struct.i2c_device_id] [%struct.i2c_device_id { [20 x i8] c"dummy\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.i2c_device_id zeroinitializer], align 4
@tracepoint_srcu = external dso_local global %struct.srcu_struct, align 4
@.str.93 = private unnamed_addr constant [12 x i8] c"i2c-adapter\00", align 1
@.str.94 = private unnamed_addr constant [23 x i8] c"drivers/i2c/i2c-core.h\00", align 1
@.str.95 = private unnamed_addr constant [33 x i8] c"%s %s: Transfer while suspended\0A\00", align 1
@.str.96 = private unnamed_addr constant [27 x i8] c"1st comb msg must be write\00", align 1
@.str.97 = private unnamed_addr constant [26 x i8] c"2nd comb msg must be read\00", align 1
@.str.98 = private unnamed_addr constant [27 x i8] c"comb msg only to same addr\00", align 1
@.str.99 = private unnamed_addr constant [13 x i8] c"msg too long\00", align 1
@.str.100 = private unnamed_addr constant [18 x i8] c"too many messages\00", align 1
@.str.101 = private unnamed_addr constant [15 x i8] c"no zero length\00", align 1
@i2c_quirk_error._rs = internal global %struct.ratelimit_state { %struct.raw_spinlock zeroinitializer, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, align 4
@__func__.i2c_quirk_error = private unnamed_addr constant [16 x i8] c"i2c_quirk_error\00", align 1
@.str.102 = private unnamed_addr constant [46 x i8] c"adapter quirk: %s (addr 0x%04x, size %u, %s)\0A\00", align 1
@.str.103 = private unnamed_addr constant [5 x i8] c"read\00", align 1
@.str.104 = private unnamed_addr constant [6 x i8] c"write\00", align 1
@__cpu_online_mask = external dso_local global %struct.cpumask, align 4
@system_state = external dso_local local_unnamed_addr global i32, align 4
@.str.106 = private unnamed_addr constant [41 x i8] c"No atomic I2C transfer handler for '%s'\0A\00", align 1
@.str.107 = private unnamed_addr constant [57 x i8] c"No suitable probing method supported for address 0x%02X\0A\00", align 1
@llvm.compiler.used = appending global [62 x ptr] [ptr @__UNIQUE_ID_author278, ptr @__UNIQUE_ID_description279, ptr @__UNIQUE_ID_file280, ptr @__UNIQUE_ID_license281, ptr @__event_i2c_read, ptr @__event_i2c_reply, ptr @__event_i2c_result, ptr @__event_i2c_write, ptr @__exitcall_i2c_exit, ptr @__initcall__kmod_i2c_core__277_1995_i2c_init2, ptr @__ksymtab___i2c_transfer, ptr @__ksymtab_devm_i2c_add_adapter, ptr @__ksymtab_devm_i2c_new_dummy_device, ptr @__ksymtab_i2c_adapter_depth, ptr @__ksymtab_i2c_adapter_type, ptr @__ksymtab_i2c_add_adapter, ptr @__ksymtab_i2c_add_numbered_adapter, ptr @__ksymtab_i2c_bus_type, ptr @__ksymtab_i2c_client_type, ptr @__ksymtab_i2c_clients_command, ptr @__ksymtab_i2c_del_adapter, ptr @__ksymtab_i2c_del_driver, ptr @__ksymtab_i2c_for_each_dev, ptr @__ksymtab_i2c_freq_mode_string, ptr @__ksymtab_i2c_generic_scl_recovery, ptr @__ksymtab_i2c_get_adapter, ptr @__ksymtab_i2c_get_device_id, ptr @__ksymtab_i2c_get_dma_safe_msg_buf, ptr @__ksymtab_i2c_handle_smbus_host_notify, ptr @__ksymtab_i2c_match_id, ptr @__ksymtab_i2c_new_ancillary_device, ptr @__ksymtab_i2c_new_client_device, ptr @__ksymtab_i2c_new_dummy_device, ptr @__ksymtab_i2c_new_scanned_device, ptr @__ksymtab_i2c_parse_fw_timings, ptr @__ksymtab_i2c_probe_func_quick_read, ptr @__ksymtab_i2c_put_adapter, ptr @__ksymtab_i2c_put_dma_safe_msg_buf, ptr @__ksymtab_i2c_recover_bus, ptr @__ksymtab_i2c_register_driver, ptr @__ksymtab_i2c_transfer, ptr @__ksymtab_i2c_transfer_buffer_flags, ptr @__ksymtab_i2c_unregister_device, ptr @__ksymtab_i2c_verify_adapter, ptr @__ksymtab_i2c_verify_client, ptr @__tracepoint_i2c_read, ptr @__tracepoint_i2c_reply, ptr @__tracepoint_i2c_result, ptr @__tracepoint_i2c_write, ptr @__tracepoint_ptr_i2c_read, ptr @__tracepoint_ptr_i2c_reply, ptr @__tracepoint_ptr_i2c_result, ptr @__tracepoint_ptr_i2c_write, ptr @event_class_i2c_read, ptr @event_class_i2c_reply, ptr @event_class_i2c_result, ptr @event_class_i2c_write, ptr @event_i2c_read, ptr @event_i2c_reply, ptr @event_i2c_result, ptr @event_i2c_write, ptr @i2c_exit], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__traceiter_i2c_write(ptr nocapture readnone %0, ptr noundef %1, ptr noundef %2, i32 noundef %3) #0 {
  %5 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_i2c_write, i32 0, i32 7), align 4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %15, label %7

7:                                                ; preds = %7, %4
  %8 = phi ptr [ %12, %7 ], [ %5, %4 ]
  %9 = load volatile ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.tracepoint_func, ptr %8, i32 0, i32 1
  %11 = load ptr, ptr %10, align 4
  tail call void %9(ptr noundef %11, ptr noundef %1, ptr noundef %2, i32 noundef %3) #21
  %12 = getelementptr %struct.tracepoint_func, ptr %8, i32 1
  %13 = load ptr, ptr %12, align 4
  %14 = icmp eq ptr %13, null
  br i1 %14, label %15, label %7

15:                                               ; preds = %7, %4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @i2c_transfer_trace_reg() #0 {
  %1 = load i8, ptr @static_key_initialized, align 1, !range !9
  %2 = icmp eq i8 %1, 0
  br i1 %2, label %3, label %4, !prof !10

3:                                                ; preds = %0
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.42, i32 noundef 290, i32 noundef 9, ptr noundef nonnull @.str.43, ptr noundef nonnull @__func__.static_key_slow_inc, ptr noundef nonnull @i2c_trace_msg_key) #21
  br label %4

4:                                                ; preds = %3, %0
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr nonnull @i2c_trace_msg_key) #21, !srcloc !11
  %5 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) @i2c_trace_msg_key, ptr nonnull @i2c_trace_msg_key, i32 1, ptr nonnull elementtype(i32) @i2c_trace_msg_key) #21, !srcloc !12
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @i2c_transfer_trace_unreg() #0 {
  %1 = load i8, ptr @static_key_initialized, align 1, !range !9
  %2 = icmp eq i8 %1, 0
  br i1 %2, label %3, label %4, !prof !10

3:                                                ; preds = %0
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.42, i32 noundef 296, i32 noundef 9, ptr noundef nonnull @.str.43, ptr noundef nonnull @__func__.static_key_slow_dec, ptr noundef nonnull @i2c_trace_msg_key) #21
  br label %4

4:                                                ; preds = %3, %0
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr nonnull @i2c_trace_msg_key) #21, !srcloc !11
  %5 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) @i2c_trace_msg_key, ptr nonnull @i2c_trace_msg_key, i32 1, ptr nonnull elementtype(i32) @i2c_trace_msg_key) #21, !srcloc !13
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__traceiter_i2c_read(ptr nocapture readnone %0, ptr noundef %1, ptr noundef %2, i32 noundef %3) #0 {
  %5 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_i2c_read, i32 0, i32 7), align 4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %15, label %7

7:                                                ; preds = %7, %4
  %8 = phi ptr [ %12, %7 ], [ %5, %4 ]
  %9 = load volatile ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.tracepoint_func, ptr %8, i32 0, i32 1
  %11 = load ptr, ptr %10, align 4
  tail call void %9(ptr noundef %11, ptr noundef %1, ptr noundef %2, i32 noundef %3) #21
  %12 = getelementptr %struct.tracepoint_func, ptr %8, i32 1
  %13 = load ptr, ptr %12, align 4
  %14 = icmp eq ptr %13, null
  br i1 %14, label %15, label %7

15:                                               ; preds = %7, %4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__traceiter_i2c_reply(ptr nocapture readnone %0, ptr noundef %1, ptr noundef %2, i32 noundef %3) #0 {
  %5 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_i2c_reply, i32 0, i32 7), align 4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %15, label %7

7:                                                ; preds = %7, %4
  %8 = phi ptr [ %12, %7 ], [ %5, %4 ]
  %9 = load volatile ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.tracepoint_func, ptr %8, i32 0, i32 1
  %11 = load ptr, ptr %10, align 4
  tail call void %9(ptr noundef %11, ptr noundef %1, ptr noundef %2, i32 noundef %3) #21
  %12 = getelementptr %struct.tracepoint_func, ptr %8, i32 1
  %13 = load ptr, ptr %12, align 4
  %14 = icmp eq ptr %13, null
  br i1 %14, label %15, label %7

15:                                               ; preds = %7, %4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__traceiter_i2c_result(ptr nocapture readnone %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) #0 {
  %5 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_i2c_result, i32 0, i32 7), align 4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %15, label %7

7:                                                ; preds = %7, %4
  %8 = phi ptr [ %12, %7 ], [ %5, %4 ]
  %9 = load volatile ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.tracepoint_func, ptr %8, i32 0, i32 1
  %11 = load ptr, ptr %10, align 4
  tail call void %9(ptr noundef %11, ptr noundef %1, i32 noundef %2, i32 noundef %3) #21
  %12 = getelementptr %struct.tracepoint_func, ptr %8, i32 1
  %13 = load ptr, ptr %12, align 4
  %14 = icmp eq ptr %13, null
  br i1 %14, label %15, label %7

15:                                               ; preds = %7, %4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @trace_event_raw_event_i2c_write(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, i32 noundef %3) #0 {
  %5 = alloca %struct.trace_event_buffer, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #21
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %5, i8 0, i32 24, i1 false), !annotation !14
  %6 = getelementptr inbounds %struct.trace_event_file, ptr %0, i32 0, i32 7
  %7 = load i32, ptr %6, align 4
  %8 = and i32 %7, 704
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %15, label %10, !prof !15

10:                                               ; preds = %4
  %11 = and i32 %7, 256
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %15, !prof !10

13:                                               ; preds = %10
  %14 = tail call zeroext i1 @__trace_trigger_soft_disabled(ptr noundef %0) #21
  br i1 %14, label %43, label %15

15:                                               ; preds = %13, %10, %4
  %16 = getelementptr inbounds %struct.i2c_msg, ptr %2, i32 0, i32 2
  %17 = load i16, ptr %16, align 4
  %18 = zext i16 %17 to i32
  %19 = add nuw nsw i32 %18, 24
  %20 = call ptr @trace_event_buffer_reserve(ptr noundef nonnull %5, ptr noundef %0, i32 noundef %19) #21
  %21 = icmp eq ptr %20, null
  br i1 %21, label %43, label %22

22:                                               ; preds = %15
  %23 = shl nuw i32 %18, 16
  %24 = or i32 %23, 24
  %25 = getelementptr inbounds %struct.trace_event_raw_i2c_write, ptr %20, i32 0, i32 6
  store i32 %24, ptr %25, align 4
  %26 = getelementptr inbounds %struct.i2c_adapter, ptr %1, i32 0, i32 11
  %27 = load i32, ptr %26, align 4
  %28 = getelementptr inbounds %struct.trace_event_raw_i2c_write, ptr %20, i32 0, i32 1
  store i32 %27, ptr %28, align 4
  %29 = trunc i32 %3 to i16
  %30 = getelementptr inbounds %struct.trace_event_raw_i2c_write, ptr %20, i32 0, i32 2
  store i16 %29, ptr %30, align 4
  %31 = load i16, ptr %2, align 4
  %32 = getelementptr inbounds %struct.trace_event_raw_i2c_write, ptr %20, i32 0, i32 3
  store i16 %31, ptr %32, align 2
  %33 = getelementptr inbounds %struct.i2c_msg, ptr %2, i32 0, i32 1
  %34 = load i16, ptr %33, align 2
  %35 = getelementptr inbounds %struct.trace_event_raw_i2c_write, ptr %20, i32 0, i32 4
  store i16 %34, ptr %35, align 4
  %36 = load i16, ptr %16, align 4
  %37 = getelementptr inbounds %struct.trace_event_raw_i2c_write, ptr %20, i32 0, i32 5
  store i16 %36, ptr %37, align 2
  %38 = getelementptr i8, ptr %20, i32 24
  %39 = getelementptr inbounds %struct.i2c_msg, ptr %2, i32 0, i32 3
  %40 = load ptr, ptr %39, align 4
  %41 = load i16, ptr %16, align 4
  %42 = zext i16 %41 to i32
  call void @llvm.memcpy.p0.p0.i32(ptr align 1 %38, ptr align 1 %40, i32 %42, i1 false)
  call void @trace_event_buffer_commit(ptr noundef nonnull %5) #21
  br label %43

43:                                               ; preds = %22, %15, %13
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #21
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @perf_trace_i2c_write(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, i32 noundef %3) #0 {
  %5 = alloca ptr, align 4
  %6 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #21
  store ptr null, ptr %5, align 4, !annotation !14
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #21
  store i32 0, ptr %6, align 4, !annotation !14
  %7 = getelementptr inbounds %struct.i2c_msg, ptr %2, i32 0, i32 2
  %8 = load i16, ptr %7, align 4
  %9 = zext i16 %8 to i32
  %10 = shl nuw i32 %9, 16
  %11 = or i32 %10, 24
  %12 = getelementptr inbounds %struct.trace_event_call, ptr %0, i32 0, i32 10
  %13 = load ptr, ptr %12, align 4
  %14 = ptrtoint ptr %13 to i32
  %15 = tail call i32 @llvm.read_register.i32(metadata !0) #21
  %16 = inttoptr i32 %15 to ptr
  %17 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %16) #13, !srcloc !16
  %18 = add i32 %17, %14
  %19 = inttoptr i32 %18 to ptr
  %20 = getelementptr inbounds %struct.trace_event_call, ptr %0, i32 0, i32 11
  %21 = load volatile ptr, ptr %20, align 4
  %22 = icmp eq ptr %21, null
  br i1 %22, label %23, label %26

23:                                               ; preds = %4
  %24 = load volatile ptr, ptr %19, align 4
  %25 = icmp eq ptr %24, null
  br i1 %25, label %63, label %26

26:                                               ; preds = %23, %4
  %27 = add nuw nsw i32 %9, 35
  %28 = and i32 %27, 131064
  %29 = add nsw i32 %28, -4
  %30 = call ptr @perf_trace_buf_alloc(i32 noundef %29, ptr noundef nonnull %5, ptr noundef nonnull %6) #21
  %31 = icmp eq ptr %30, null
  br i1 %31, label %63, label %32

32:                                               ; preds = %26
  %33 = load ptr, ptr %5, align 4
  %34 = call ptr @llvm.returnaddress(i32 0) #21
  %35 = ptrtoint ptr %34 to i32
  %36 = getelementptr [18 x i32], ptr %33, i32 0, i32 15
  store i32 %35, ptr %36, align 4
  %37 = call ptr @llvm.frameaddress.p0(i32 0) #21
  %38 = ptrtoint ptr %37 to i32
  %39 = getelementptr [18 x i32], ptr %33, i32 0, i32 11
  store i32 %38, ptr %39, align 4
  %40 = call i32 @llvm.read_register.i32(metadata !0) #21
  %41 = getelementptr [18 x i32], ptr %33, i32 0, i32 13
  store i32 %40, ptr %41, align 4
  %42 = getelementptr [18 x i32], ptr %33, i32 0, i32 16
  store i32 19, ptr %42, align 4
  %43 = getelementptr inbounds %struct.trace_event_raw_i2c_write, ptr %30, i32 0, i32 6
  store i32 %11, ptr %43, align 4
  %44 = getelementptr inbounds %struct.i2c_adapter, ptr %1, i32 0, i32 11
  %45 = load i32, ptr %44, align 4
  %46 = getelementptr inbounds %struct.trace_event_raw_i2c_write, ptr %30, i32 0, i32 1
  store i32 %45, ptr %46, align 4
  %47 = trunc i32 %3 to i16
  %48 = getelementptr inbounds %struct.trace_event_raw_i2c_write, ptr %30, i32 0, i32 2
  store i16 %47, ptr %48, align 4
  %49 = load i16, ptr %2, align 4
  %50 = getelementptr inbounds %struct.trace_event_raw_i2c_write, ptr %30, i32 0, i32 3
  store i16 %49, ptr %50, align 2
  %51 = getelementptr inbounds %struct.i2c_msg, ptr %2, i32 0, i32 1
  %52 = load i16, ptr %51, align 2
  %53 = getelementptr inbounds %struct.trace_event_raw_i2c_write, ptr %30, i32 0, i32 4
  store i16 %52, ptr %53, align 4
  %54 = load i16, ptr %7, align 4
  %55 = getelementptr inbounds %struct.trace_event_raw_i2c_write, ptr %30, i32 0, i32 5
  store i16 %54, ptr %55, align 2
  %56 = getelementptr i8, ptr %30, i32 24
  %57 = getelementptr inbounds %struct.i2c_msg, ptr %2, i32 0, i32 3
  %58 = load ptr, ptr %57, align 4
  %59 = load i16, ptr %7, align 4
  %60 = zext i16 %59 to i32
  call void @llvm.memcpy.p0.p0.i32(ptr align 1 %56, ptr align 1 %58, i32 %60, i1 false)
  %61 = load i32, ptr %6, align 4
  %62 = load ptr, ptr %5, align 4
  call void @perf_trace_run_bpf_submit(ptr noundef nonnull %30, i32 noundef %29, i32 noundef %61, ptr noundef %0, i64 noundef 1, ptr noundef %62, ptr noundef %19, ptr noundef null) #21
  br label %63

63:                                               ; preds = %32, %26, %23
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #21
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #21
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @trace_event_reg(ptr noundef, i32 noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @trace_event_raw_init(ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @trace_event_raw_event_i2c_read(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, i32 noundef %3) #0 {
  %5 = alloca %struct.trace_event_buffer, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #21
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %5, i8 0, i32 24, i1 false), !annotation !14
  %6 = getelementptr inbounds %struct.trace_event_file, ptr %0, i32 0, i32 7
  %7 = load i32, ptr %6, align 4
  %8 = and i32 %7, 704
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %15, label %10, !prof !15

10:                                               ; preds = %4
  %11 = and i32 %7, 256
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %15, !prof !10

13:                                               ; preds = %10
  %14 = tail call zeroext i1 @__trace_trigger_soft_disabled(ptr noundef %0) #21
  br i1 %14, label %32, label %15

15:                                               ; preds = %13, %10, %4
  %16 = call ptr @trace_event_buffer_reserve(ptr noundef nonnull %5, ptr noundef %0, i32 noundef 20) #21
  %17 = icmp eq ptr %16, null
  br i1 %17, label %32, label %18

18:                                               ; preds = %15
  %19 = getelementptr inbounds %struct.i2c_adapter, ptr %1, i32 0, i32 11
  %20 = load i32, ptr %19, align 4
  %21 = getelementptr inbounds %struct.trace_event_raw_i2c_read, ptr %16, i32 0, i32 1
  store i32 %20, ptr %21, align 4
  %22 = trunc i32 %3 to i16
  %23 = getelementptr inbounds %struct.trace_event_raw_i2c_read, ptr %16, i32 0, i32 2
  store i16 %22, ptr %23, align 4
  %24 = load i16, ptr %2, align 4
  %25 = getelementptr inbounds %struct.trace_event_raw_i2c_read, ptr %16, i32 0, i32 3
  store i16 %24, ptr %25, align 2
  %26 = getelementptr inbounds %struct.i2c_msg, ptr %2, i32 0, i32 1
  %27 = load i16, ptr %26, align 2
  %28 = getelementptr inbounds %struct.trace_event_raw_i2c_read, ptr %16, i32 0, i32 4
  store i16 %27, ptr %28, align 4
  %29 = getelementptr inbounds %struct.i2c_msg, ptr %2, i32 0, i32 2
  %30 = load i16, ptr %29, align 4
  %31 = getelementptr inbounds %struct.trace_event_raw_i2c_read, ptr %16, i32 0, i32 5
  store i16 %30, ptr %31, align 2
  call void @trace_event_buffer_commit(ptr noundef nonnull %5) #21
  br label %32

32:                                               ; preds = %18, %15, %13
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #21
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @perf_trace_i2c_read(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, i32 noundef %3) #0 {
  %5 = alloca ptr, align 4
  %6 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #21
  store ptr null, ptr %5, align 4, !annotation !14
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #21
  store i32 0, ptr %6, align 4, !annotation !14
  %7 = getelementptr inbounds %struct.trace_event_call, ptr %0, i32 0, i32 10
  %8 = load ptr, ptr %7, align 4
  %9 = ptrtoint ptr %8 to i32
  %10 = tail call i32 @llvm.read_register.i32(metadata !0) #21
  %11 = inttoptr i32 %10 to ptr
  %12 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %11) #13, !srcloc !16
  %13 = add i32 %12, %9
  %14 = inttoptr i32 %13 to ptr
  %15 = getelementptr inbounds %struct.trace_event_call, ptr %0, i32 0, i32 11
  %16 = load volatile ptr, ptr %15, align 4
  %17 = icmp eq ptr %16, null
  br i1 %17, label %18, label %21

18:                                               ; preds = %4
  %19 = load volatile ptr, ptr %14, align 4
  %20 = icmp eq ptr %19, null
  br i1 %20, label %50, label %21

21:                                               ; preds = %18, %4
  %22 = call ptr @perf_trace_buf_alloc(i32 noundef 20, ptr noundef nonnull %5, ptr noundef nonnull %6) #21
  %23 = icmp eq ptr %22, null
  br i1 %23, label %50, label %24

24:                                               ; preds = %21
  %25 = load ptr, ptr %5, align 4
  %26 = call ptr @llvm.returnaddress(i32 0) #21
  %27 = ptrtoint ptr %26 to i32
  %28 = getelementptr [18 x i32], ptr %25, i32 0, i32 15
  store i32 %27, ptr %28, align 4
  %29 = call ptr @llvm.frameaddress.p0(i32 0) #21
  %30 = ptrtoint ptr %29 to i32
  %31 = getelementptr [18 x i32], ptr %25, i32 0, i32 11
  store i32 %30, ptr %31, align 4
  %32 = call i32 @llvm.read_register.i32(metadata !0) #21
  %33 = getelementptr [18 x i32], ptr %25, i32 0, i32 13
  store i32 %32, ptr %33, align 4
  %34 = getelementptr [18 x i32], ptr %25, i32 0, i32 16
  store i32 19, ptr %34, align 4
  %35 = getelementptr inbounds %struct.i2c_adapter, ptr %1, i32 0, i32 11
  %36 = load i32, ptr %35, align 4
  %37 = getelementptr inbounds %struct.trace_event_raw_i2c_read, ptr %22, i32 0, i32 1
  store i32 %36, ptr %37, align 4
  %38 = trunc i32 %3 to i16
  %39 = getelementptr inbounds %struct.trace_event_raw_i2c_read, ptr %22, i32 0, i32 2
  store i16 %38, ptr %39, align 4
  %40 = load i16, ptr %2, align 4
  %41 = getelementptr inbounds %struct.trace_event_raw_i2c_read, ptr %22, i32 0, i32 3
  store i16 %40, ptr %41, align 2
  %42 = getelementptr inbounds %struct.i2c_msg, ptr %2, i32 0, i32 1
  %43 = load i16, ptr %42, align 2
  %44 = getelementptr inbounds %struct.trace_event_raw_i2c_read, ptr %22, i32 0, i32 4
  store i16 %43, ptr %44, align 4
  %45 = getelementptr inbounds %struct.i2c_msg, ptr %2, i32 0, i32 2
  %46 = load i16, ptr %45, align 4
  %47 = getelementptr inbounds %struct.trace_event_raw_i2c_read, ptr %22, i32 0, i32 5
  store i16 %46, ptr %47, align 2
  %48 = load i32, ptr %6, align 4
  %49 = load ptr, ptr %5, align 4
  call void @perf_trace_run_bpf_submit(ptr noundef nonnull %22, i32 noundef 20, i32 noundef %48, ptr noundef %0, i64 noundef 1, ptr noundef %49, ptr noundef %14, ptr noundef null) #21
  br label %50

50:                                               ; preds = %24, %21, %18
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #21
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #21
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @trace_event_raw_event_i2c_reply(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, i32 noundef %3) #0 {
  %5 = alloca %struct.trace_event_buffer, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #21
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %5, i8 0, i32 24, i1 false), !annotation !14
  %6 = getelementptr inbounds %struct.trace_event_file, ptr %0, i32 0, i32 7
  %7 = load i32, ptr %6, align 4
  %8 = and i32 %7, 704
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %15, label %10, !prof !15

10:                                               ; preds = %4
  %11 = and i32 %7, 256
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %15, !prof !10

13:                                               ; preds = %10
  %14 = tail call zeroext i1 @__trace_trigger_soft_disabled(ptr noundef %0) #21
  br i1 %14, label %43, label %15

15:                                               ; preds = %13, %10, %4
  %16 = getelementptr inbounds %struct.i2c_msg, ptr %2, i32 0, i32 2
  %17 = load i16, ptr %16, align 4
  %18 = zext i16 %17 to i32
  %19 = add nuw nsw i32 %18, 24
  %20 = call ptr @trace_event_buffer_reserve(ptr noundef nonnull %5, ptr noundef %0, i32 noundef %19) #21
  %21 = icmp eq ptr %20, null
  br i1 %21, label %43, label %22

22:                                               ; preds = %15
  %23 = shl nuw i32 %18, 16
  %24 = or i32 %23, 24
  %25 = getelementptr inbounds %struct.trace_event_raw_i2c_reply, ptr %20, i32 0, i32 6
  store i32 %24, ptr %25, align 4
  %26 = getelementptr inbounds %struct.i2c_adapter, ptr %1, i32 0, i32 11
  %27 = load i32, ptr %26, align 4
  %28 = getelementptr inbounds %struct.trace_event_raw_i2c_reply, ptr %20, i32 0, i32 1
  store i32 %27, ptr %28, align 4
  %29 = trunc i32 %3 to i16
  %30 = getelementptr inbounds %struct.trace_event_raw_i2c_reply, ptr %20, i32 0, i32 2
  store i16 %29, ptr %30, align 4
  %31 = load i16, ptr %2, align 4
  %32 = getelementptr inbounds %struct.trace_event_raw_i2c_reply, ptr %20, i32 0, i32 3
  store i16 %31, ptr %32, align 2
  %33 = getelementptr inbounds %struct.i2c_msg, ptr %2, i32 0, i32 1
  %34 = load i16, ptr %33, align 2
  %35 = getelementptr inbounds %struct.trace_event_raw_i2c_reply, ptr %20, i32 0, i32 4
  store i16 %34, ptr %35, align 4
  %36 = load i16, ptr %16, align 4
  %37 = getelementptr inbounds %struct.trace_event_raw_i2c_reply, ptr %20, i32 0, i32 5
  store i16 %36, ptr %37, align 2
  %38 = getelementptr i8, ptr %20, i32 24
  %39 = getelementptr inbounds %struct.i2c_msg, ptr %2, i32 0, i32 3
  %40 = load ptr, ptr %39, align 4
  %41 = load i16, ptr %16, align 4
  %42 = zext i16 %41 to i32
  call void @llvm.memcpy.p0.p0.i32(ptr align 1 %38, ptr align 1 %40, i32 %42, i1 false)
  call void @trace_event_buffer_commit(ptr noundef nonnull %5) #21
  br label %43

43:                                               ; preds = %22, %15, %13
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #21
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @perf_trace_i2c_reply(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, i32 noundef %3) #0 {
  %5 = alloca ptr, align 4
  %6 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #21
  store ptr null, ptr %5, align 4, !annotation !14
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #21
  store i32 0, ptr %6, align 4, !annotation !14
  %7 = getelementptr inbounds %struct.i2c_msg, ptr %2, i32 0, i32 2
  %8 = load i16, ptr %7, align 4
  %9 = zext i16 %8 to i32
  %10 = shl nuw i32 %9, 16
  %11 = or i32 %10, 24
  %12 = getelementptr inbounds %struct.trace_event_call, ptr %0, i32 0, i32 10
  %13 = load ptr, ptr %12, align 4
  %14 = ptrtoint ptr %13 to i32
  %15 = tail call i32 @llvm.read_register.i32(metadata !0) #21
  %16 = inttoptr i32 %15 to ptr
  %17 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %16) #13, !srcloc !16
  %18 = add i32 %17, %14
  %19 = inttoptr i32 %18 to ptr
  %20 = getelementptr inbounds %struct.trace_event_call, ptr %0, i32 0, i32 11
  %21 = load volatile ptr, ptr %20, align 4
  %22 = icmp eq ptr %21, null
  br i1 %22, label %23, label %26

23:                                               ; preds = %4
  %24 = load volatile ptr, ptr %19, align 4
  %25 = icmp eq ptr %24, null
  br i1 %25, label %63, label %26

26:                                               ; preds = %23, %4
  %27 = add nuw nsw i32 %9, 35
  %28 = and i32 %27, 131064
  %29 = add nsw i32 %28, -4
  %30 = call ptr @perf_trace_buf_alloc(i32 noundef %29, ptr noundef nonnull %5, ptr noundef nonnull %6) #21
  %31 = icmp eq ptr %30, null
  br i1 %31, label %63, label %32

32:                                               ; preds = %26
  %33 = load ptr, ptr %5, align 4
  %34 = call ptr @llvm.returnaddress(i32 0) #21
  %35 = ptrtoint ptr %34 to i32
  %36 = getelementptr [18 x i32], ptr %33, i32 0, i32 15
  store i32 %35, ptr %36, align 4
  %37 = call ptr @llvm.frameaddress.p0(i32 0) #21
  %38 = ptrtoint ptr %37 to i32
  %39 = getelementptr [18 x i32], ptr %33, i32 0, i32 11
  store i32 %38, ptr %39, align 4
  %40 = call i32 @llvm.read_register.i32(metadata !0) #21
  %41 = getelementptr [18 x i32], ptr %33, i32 0, i32 13
  store i32 %40, ptr %41, align 4
  %42 = getelementptr [18 x i32], ptr %33, i32 0, i32 16
  store i32 19, ptr %42, align 4
  %43 = getelementptr inbounds %struct.trace_event_raw_i2c_reply, ptr %30, i32 0, i32 6
  store i32 %11, ptr %43, align 4
  %44 = getelementptr inbounds %struct.i2c_adapter, ptr %1, i32 0, i32 11
  %45 = load i32, ptr %44, align 4
  %46 = getelementptr inbounds %struct.trace_event_raw_i2c_reply, ptr %30, i32 0, i32 1
  store i32 %45, ptr %46, align 4
  %47 = trunc i32 %3 to i16
  %48 = getelementptr inbounds %struct.trace_event_raw_i2c_reply, ptr %30, i32 0, i32 2
  store i16 %47, ptr %48, align 4
  %49 = load i16, ptr %2, align 4
  %50 = getelementptr inbounds %struct.trace_event_raw_i2c_reply, ptr %30, i32 0, i32 3
  store i16 %49, ptr %50, align 2
  %51 = getelementptr inbounds %struct.i2c_msg, ptr %2, i32 0, i32 1
  %52 = load i16, ptr %51, align 2
  %53 = getelementptr inbounds %struct.trace_event_raw_i2c_reply, ptr %30, i32 0, i32 4
  store i16 %52, ptr %53, align 4
  %54 = load i16, ptr %7, align 4
  %55 = getelementptr inbounds %struct.trace_event_raw_i2c_reply, ptr %30, i32 0, i32 5
  store i16 %54, ptr %55, align 2
  %56 = getelementptr i8, ptr %30, i32 24
  %57 = getelementptr inbounds %struct.i2c_msg, ptr %2, i32 0, i32 3
  %58 = load ptr, ptr %57, align 4
  %59 = load i16, ptr %7, align 4
  %60 = zext i16 %59 to i32
  call void @llvm.memcpy.p0.p0.i32(ptr align 1 %56, ptr align 1 %58, i32 %60, i1 false)
  %61 = load i32, ptr %6, align 4
  %62 = load ptr, ptr %5, align 4
  call void @perf_trace_run_bpf_submit(ptr noundef nonnull %30, i32 noundef %29, i32 noundef %61, ptr noundef %0, i64 noundef 1, ptr noundef %62, ptr noundef %19, ptr noundef null) #21
  br label %63

63:                                               ; preds = %32, %26, %23
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #21
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #21
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @trace_event_raw_event_i2c_result(ptr noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2, i32 noundef %3) #0 {
  %5 = alloca %struct.trace_event_buffer, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #21
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %5, i8 0, i32 24, i1 false), !annotation !14
  %6 = getelementptr inbounds %struct.trace_event_file, ptr %0, i32 0, i32 7
  %7 = load i32, ptr %6, align 4
  %8 = and i32 %7, 704
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %15, label %10, !prof !15

10:                                               ; preds = %4
  %11 = and i32 %7, 256
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %15, !prof !10

13:                                               ; preds = %10
  %14 = tail call zeroext i1 @__trace_trigger_soft_disabled(ptr noundef %0) #21
  br i1 %14, label %26, label %15

15:                                               ; preds = %13, %10, %4
  %16 = call ptr @trace_event_buffer_reserve(ptr noundef nonnull %5, ptr noundef %0, i32 noundef 16) #21
  %17 = icmp eq ptr %16, null
  br i1 %17, label %26, label %18

18:                                               ; preds = %15
  %19 = getelementptr inbounds %struct.i2c_adapter, ptr %1, i32 0, i32 11
  %20 = load i32, ptr %19, align 4
  %21 = getelementptr inbounds %struct.trace_event_raw_i2c_result, ptr %16, i32 0, i32 1
  store i32 %20, ptr %21, align 4
  %22 = trunc i32 %2 to i16
  %23 = getelementptr inbounds %struct.trace_event_raw_i2c_result, ptr %16, i32 0, i32 2
  store i16 %22, ptr %23, align 4
  %24 = trunc i32 %3 to i16
  %25 = getelementptr inbounds %struct.trace_event_raw_i2c_result, ptr %16, i32 0, i32 3
  store i16 %24, ptr %25, align 2
  call void @trace_event_buffer_commit(ptr noundef nonnull %5) #21
  br label %26

26:                                               ; preds = %18, %15, %13
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #21
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @perf_trace_i2c_result(ptr noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2, i32 noundef %3) #0 {
  %5 = alloca ptr, align 4
  %6 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #21
  store ptr null, ptr %5, align 4, !annotation !14
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #21
  store i32 0, ptr %6, align 4, !annotation !14
  %7 = getelementptr inbounds %struct.trace_event_call, ptr %0, i32 0, i32 10
  %8 = load ptr, ptr %7, align 4
  %9 = ptrtoint ptr %8 to i32
  %10 = tail call i32 @llvm.read_register.i32(metadata !0) #21
  %11 = inttoptr i32 %10 to ptr
  %12 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %11) #13, !srcloc !16
  %13 = add i32 %12, %9
  %14 = inttoptr i32 %13 to ptr
  %15 = getelementptr inbounds %struct.trace_event_call, ptr %0, i32 0, i32 11
  %16 = load volatile ptr, ptr %15, align 4
  %17 = icmp eq ptr %16, null
  br i1 %17, label %18, label %21

18:                                               ; preds = %4
  %19 = load volatile ptr, ptr %14, align 4
  %20 = icmp eq ptr %19, null
  br i1 %20, label %44, label %21

21:                                               ; preds = %18, %4
  %22 = call ptr @perf_trace_buf_alloc(i32 noundef 20, ptr noundef nonnull %5, ptr noundef nonnull %6) #21
  %23 = icmp eq ptr %22, null
  br i1 %23, label %44, label %24

24:                                               ; preds = %21
  %25 = load ptr, ptr %5, align 4
  %26 = call ptr @llvm.returnaddress(i32 0) #21
  %27 = ptrtoint ptr %26 to i32
  %28 = getelementptr [18 x i32], ptr %25, i32 0, i32 15
  store i32 %27, ptr %28, align 4
  %29 = call ptr @llvm.frameaddress.p0(i32 0) #21
  %30 = ptrtoint ptr %29 to i32
  %31 = getelementptr [18 x i32], ptr %25, i32 0, i32 11
  store i32 %30, ptr %31, align 4
  %32 = call i32 @llvm.read_register.i32(metadata !0) #21
  %33 = getelementptr [18 x i32], ptr %25, i32 0, i32 13
  store i32 %32, ptr %33, align 4
  %34 = getelementptr [18 x i32], ptr %25, i32 0, i32 16
  store i32 19, ptr %34, align 4
  %35 = getelementptr inbounds %struct.i2c_adapter, ptr %1, i32 0, i32 11
  %36 = load i32, ptr %35, align 4
  %37 = getelementptr inbounds %struct.trace_event_raw_i2c_result, ptr %22, i32 0, i32 1
  store i32 %36, ptr %37, align 4
  %38 = trunc i32 %2 to i16
  %39 = getelementptr inbounds %struct.trace_event_raw_i2c_result, ptr %22, i32 0, i32 2
  store i16 %38, ptr %39, align 4
  %40 = trunc i32 %3 to i16
  %41 = getelementptr inbounds %struct.trace_event_raw_i2c_result, ptr %22, i32 0, i32 3
  store i16 %40, ptr %41, align 2
  %42 = load i32, ptr %6, align 4
  %43 = load ptr, ptr %5, align 4
  call void @perf_trace_run_bpf_submit(ptr noundef nonnull %22, i32 noundef 20, i32 noundef %42, ptr noundef %0, i64 noundef 1, ptr noundef %43, ptr noundef %14, ptr noundef null) #21
  br label %44

44:                                               ; preds = %24, %21, %18
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #21
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #21
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define dso_local nonnull ptr @i2c_freq_mode_string(i32 noundef %0) #3 {
  switch i32 %0, label %7 [
    i32 100000, label %8
    i32 400000, label %2
    i32 1000000, label %3
    i32 1400000, label %4
    i32 3400000, label %5
    i32 5000000, label %6
  ]

2:                                                ; preds = %1
  br label %8

3:                                                ; preds = %1
  br label %8

4:                                                ; preds = %1
  br label %8

5:                                                ; preds = %1
  br label %8

6:                                                ; preds = %1
  br label %8

7:                                                ; preds = %1
  br label %8

8:                                                ; preds = %7, %6, %5, %4, %3, %2, %1
  %9 = phi ptr [ @.str.6, %7 ], [ @.str.5, %6 ], [ @.str.4, %5 ], [ @.str.3, %4 ], [ @.str.2, %3 ], [ @.str.1, %2 ], [ @.str, %1 ]
  ret ptr %9
}

; Function Attrs: nofree nounwind null_pointer_is_valid readonly sspstrong uwtable(sync)
define dso_local ptr @i2c_match_id(ptr noundef readonly %0, ptr noundef readonly %1) #4 {
  %3 = icmp ne ptr %0, null
  %4 = icmp ne ptr %1, null
  %5 = and i1 %3, %4
  br i1 %5, label %6, label %18

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 2
  %8 = load i8, ptr %0, align 4
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %18, label %10

10:                                               ; preds = %14, %6
  %11 = phi ptr [ %15, %14 ], [ %0, %6 ]
  %12 = tail call i32 @strcmp(ptr noundef %7, ptr noundef %11)
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %18, label %14

14:                                               ; preds = %10
  %15 = getelementptr %struct.i2c_device_id, ptr %11, i32 1
  %16 = load i8, ptr %15, align 4
  %17 = icmp eq i8 %16, 0
  br i1 %17, label %18, label %10

18:                                               ; preds = %14, %10, %6, %2
  %19 = phi ptr [ null, %2 ], [ null, %6 ], [ %11, %10 ], [ null, %14 ]
  ret ptr %19
}

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @i2c_generic_scl_recovery(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.i2c_adapter, ptr %0, i32 0, i32 16
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.i2c_bus_recovery_info, ptr %3, i32 0, i32 6
  %5 = load ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %8, label %7

7:                                                ; preds = %1
  tail call void %5(ptr noundef %0) #21
  br label %8

8:                                                ; preds = %7, %1
  %9 = getelementptr inbounds %struct.i2c_bus_recovery_info, ptr %3, i32 0, i32 10
  %10 = load ptr, ptr %9, align 4
  %11 = icmp eq ptr %10, null
  br i1 %11, label %16, label %12

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct.i2c_bus_recovery_info, ptr %3, i32 0, i32 12
  %14 = load ptr, ptr %13, align 4
  %15 = tail call i32 @pinctrl_select_state(ptr noundef nonnull %10, ptr noundef %14) #21
  br label %16

16:                                               ; preds = %12, %8
  %17 = getelementptr inbounds %struct.i2c_bus_recovery_info, ptr %3, i32 0, i32 2
  %18 = load ptr, ptr %17, align 4
  tail call void %18(ptr noundef %0, i32 noundef 1) #21
  %19 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %19(i32 noundef 1073740) #21
  %20 = getelementptr inbounds %struct.i2c_bus_recovery_info, ptr %3, i32 0, i32 4
  %21 = load ptr, ptr %20, align 4
  %22 = icmp eq ptr %21, null
  br i1 %22, label %24, label %23

23:                                               ; preds = %16
  tail call void %21(ptr noundef %0, i32 noundef 1) #21
  br label %24

24:                                               ; preds = %23, %16
  %25 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %25(i32 noundef 644244) #21
  %26 = getelementptr inbounds %struct.i2c_bus_recovery_info, ptr %3, i32 0, i32 1
  br label %27

27:                                               ; preds = %65, %24
  %28 = phi i32 [ 1, %24 ], [ %67, %65 ]
  %29 = phi i32 [ 0, %24 ], [ %66, %65 ]
  %30 = phi i32 [ 1, %24 ], [ %41, %65 ]
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %40, label %32

32:                                               ; preds = %27
  %33 = load ptr, ptr %26, align 4
  %34 = tail call i32 %33(ptr noundef %0) #21
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %32
  %37 = getelementptr inbounds %struct.i2c_adapter, ptr %0, i32 0, i32 9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %37, ptr noundef nonnull @.str.7) #22
  br label %69

38:                                               ; preds = %32
  %39 = xor i32 %30, 1
  br label %40

40:                                               ; preds = %38, %27
  %41 = phi i32 [ %39, %38 ], [ 1, %27 ]
  %42 = phi i32 [ 644244, %38 ], [ 1073740, %27 ]
  %43 = load ptr, ptr %17, align 4
  tail call void %43(ptr noundef %0, i32 noundef %41) #21
  %44 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %44(i32 noundef %42) #21
  %45 = load ptr, ptr %20, align 4
  %46 = icmp eq ptr %45, null
  br i1 %46, label %48, label %47

47:                                               ; preds = %40
  tail call void %45(ptr noundef %0, i32 noundef %41) #21
  br label %48

48:                                               ; preds = %47, %40
  %49 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %49(i32 noundef 644244) #21
  br i1 %31, label %50, label %65

50:                                               ; preds = %48
  %51 = load ptr, ptr %2, align 4
  %52 = getelementptr inbounds %struct.i2c_bus_recovery_info, ptr %51, i32 0, i32 5
  %53 = load ptr, ptr %52, align 4
  %54 = icmp eq ptr %53, null
  br i1 %54, label %55, label %59

55:                                               ; preds = %50
  %56 = getelementptr inbounds %struct.i2c_bus_recovery_info, ptr %51, i32 0, i32 3
  %57 = load ptr, ptr %56, align 4
  %58 = icmp eq ptr %57, null
  br i1 %58, label %65, label %59

59:                                               ; preds = %55, %50
  %60 = phi ptr [ %53, %50 ], [ %57, %55 ]
  %61 = tail call i32 %60(ptr noundef %0) #21
  %62 = icmp sgt i32 %61, -1
  br i1 %62, label %63, label %65

63:                                               ; preds = %59
  %64 = icmp eq i32 %61, 0
  br i1 %64, label %65, label %69

65:                                               ; preds = %63, %59, %55, %48
  %66 = phi i32 [ -16, %63 ], [ %29, %48 ], [ -95, %55 ], [ %61, %59 ]
  %67 = add nuw nsw i32 %28, 1
  %68 = icmp eq i32 %67, 19
  br i1 %68, label %69, label %27

69:                                               ; preds = %65, %63, %36
  %70 = phi i32 [ -16, %36 ], [ %66, %65 ], [ 0, %63 ]
  %71 = getelementptr inbounds %struct.i2c_bus_recovery_info, ptr %3, i32 0, i32 7
  %72 = load ptr, ptr %71, align 4
  %73 = icmp eq ptr %72, null
  br i1 %73, label %75, label %74

74:                                               ; preds = %69
  tail call void %72(ptr noundef %0) #21
  br label %75

75:                                               ; preds = %74, %69
  %76 = load ptr, ptr %9, align 4
  %77 = icmp eq ptr %76, null
  br i1 %77, label %82, label %78

78:                                               ; preds = %75
  %79 = getelementptr inbounds %struct.i2c_bus_recovery_info, ptr %3, i32 0, i32 11
  %80 = load ptr, ptr %79, align 4
  %81 = tail call i32 @pinctrl_select_state(ptr noundef nonnull %76, ptr noundef %80) #21
  br label %82

82:                                               ; preds = %78, %75
  %83 = icmp eq i32 %70, -95
  %84 = select i1 %83, i32 0, i32 %70
  ret i32 %84
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pinctrl_select_state(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @i2c_recover_bus(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.i2c_adapter, ptr %0, i32 0, i32 16
  %3 = load ptr, ptr %2, align 4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %8, label %5

5:                                                ; preds = %1
  %6 = load ptr, ptr %3, align 4
  %7 = tail call i32 %6(ptr noundef %0) #21
  br label %8

8:                                                ; preds = %5, %1
  %9 = phi i32 [ %7, %5 ], [ -16, %1 ]
  ret i32 %9
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @i2c_device_match(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 4
  %4 = load ptr, ptr %3, align 8
  %5 = icmp eq ptr %4, @i2c_client_type
  %6 = getelementptr i8, ptr %0, i32 -32
  %7 = select i1 %5, ptr %6, ptr null
  %8 = getelementptr inbounds %struct.device_driver, ptr %1, i32 0, i32 6
  %9 = load ptr, ptr %8, align 4
  %10 = tail call ptr @i2c_of_match_device(ptr noundef %9, ptr noundef %7) #21
  %11 = icmp eq ptr %10, null
  br i1 %11, label %12, label %34

12:                                               ; preds = %2
  %13 = getelementptr i8, ptr %1, i32 76
  %14 = load ptr, ptr %13, align 4
  %15 = icmp ne ptr %14, null
  %16 = icmp ne ptr %7, null
  %17 = and i1 %16, %15
  br i1 %17, label %18, label %30

18:                                               ; preds = %12
  %19 = getelementptr inbounds %struct.i2c_client, ptr %7, i32 0, i32 2
  %20 = load i8, ptr %14, align 4
  %21 = icmp eq i8 %20, 0
  br i1 %21, label %30, label %22

22:                                               ; preds = %26, %18
  %23 = phi ptr [ %27, %26 ], [ %14, %18 ]
  %24 = tail call i32 @strcmp(ptr noundef %19, ptr noundef %23) #21
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %30, label %26

26:                                               ; preds = %22
  %27 = getelementptr %struct.i2c_device_id, ptr %23, i32 1
  %28 = load i8, ptr %27, align 4
  %29 = icmp eq i8 %28, 0
  br i1 %29, label %30, label %22

30:                                               ; preds = %26, %22, %18, %12
  %31 = phi ptr [ null, %12 ], [ null, %18 ], [ null, %26 ], [ %23, %22 ]
  %32 = icmp ne ptr %31, null
  %33 = zext i1 %32 to i32
  br label %34

34:                                               ; preds = %30, %2
  %35 = phi i32 [ 1, %2 ], [ %33, %30 ]
  ret i32 %35
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @i2c_device_probe(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 4
  %3 = load ptr, ptr %2, align 8
  %4 = icmp ne ptr %3, @i2c_client_type
  %5 = getelementptr i8, ptr %0, i32 -32
  %6 = icmp eq ptr %5, null
  %7 = or i1 %6, %4
  br i1 %7, label %138, label %8

8:                                                ; preds = %1
  %9 = getelementptr i8, ptr %0, i32 472
  %10 = load i32, ptr %9, align 8
  %11 = getelementptr i8, ptr %0, i32 476
  store i32 %10, ptr %11, align 4
  %12 = icmp eq i32 %10, 0
  br i1 %12, label %13, label %51

13:                                               ; preds = %8
  %14 = load i16, ptr %5, align 8
  %15 = and i16 %14, 64
  %16 = icmp eq i16 %15, 0
  br i1 %16, label %36, label %17

17:                                               ; preds = %13
  %18 = getelementptr i8, ptr %0, i32 -8
  %19 = load ptr, ptr %18, align 8
  %20 = getelementptr inbounds %struct.i2c_adapter, ptr %19, i32 0, i32 9
  %21 = tail call i32 @__pm_runtime_resume(ptr noundef %20, i32 noundef 4) #21
  %22 = load ptr, ptr %18, align 8
  %23 = getelementptr inbounds %struct.i2c_adapter, ptr %22, i32 0, i32 18
  %24 = load ptr, ptr %23, align 4
  %25 = icmp eq ptr %24, null
  br i1 %25, label %48, label %26

26:                                               ; preds = %17
  %27 = load i16, ptr %5, align 8
  %28 = and i16 %27, 16
  %29 = icmp eq i16 %28, 0
  br i1 %29, label %30, label %48

30:                                               ; preds = %26
  %31 = getelementptr i8, ptr %0, i32 -30
  %32 = load i16, ptr %31, align 2
  %33 = zext i16 %32 to i32
  %34 = tail call i32 @irq_create_mapping_affinity(ptr noundef nonnull %24, i32 noundef %33, ptr noundef null) #21
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %48, label %45

36:                                               ; preds = %13
  %37 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 25
  %38 = load ptr, ptr %37, align 8
  %39 = icmp eq ptr %38, null
  br i1 %39, label %48, label %40

40:                                               ; preds = %36
  %41 = tail call i32 @of_irq_get_byname(ptr noundef nonnull %38, ptr noundef nonnull @.str.44) #21
  switch i32 %41, label %45 [
    i32 -22, label %42
    i32 -61, label %42
  ]

42:                                               ; preds = %40, %40
  %43 = load ptr, ptr %37, align 8
  %44 = tail call i32 @of_irq_get(ptr noundef %43, i32 noundef 0) #21
  br label %45

45:                                               ; preds = %42, %40, %30
  %46 = phi i32 [ %44, %42 ], [ %41, %40 ], [ %34, %30 ]
  %47 = icmp eq i32 %46, -517
  br i1 %47, label %128, label %48

48:                                               ; preds = %45, %36, %30, %26, %17
  %49 = phi i32 [ %46, %45 ], [ -22, %26 ], [ -6, %17 ], [ -2, %36 ], [ -6, %30 ]
  %50 = tail call i32 @llvm.smax.i32(i32 %49, i32 0)
  store i32 %50, ptr %11, align 4
  br label %51

51:                                               ; preds = %48, %8
  %52 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 6
  %53 = load ptr, ptr %52, align 8
  %54 = getelementptr i8, ptr %53, i32 76
  %55 = load ptr, ptr %54, align 4
  %56 = icmp eq ptr %55, null
  br i1 %56, label %57, label %62

57:                                               ; preds = %51
  %58 = getelementptr inbounds %struct.device_driver, ptr %53, i32 0, i32 6
  %59 = load ptr, ptr %58, align 4
  %60 = tail call ptr @i2c_of_match_device(ptr noundef %59, ptr noundef nonnull %5) #21
  %61 = icmp eq ptr %60, null
  br i1 %61, label %128, label %62

62:                                               ; preds = %57, %51
  %63 = load i16, ptr %5, align 8
  %64 = and i16 %63, 128
  %65 = icmp eq i16 %64, 0
  br i1 %65, label %88, label %66

66:                                               ; preds = %62
  %67 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 25
  %68 = load ptr, ptr %67, align 8
  %69 = tail call i32 @of_irq_get_byname(ptr noundef %68, ptr noundef nonnull @.str.45) #21
  %70 = icmp eq i32 %69, -517
  br i1 %70, label %128, label %71

71:                                               ; preds = %66
  %72 = tail call i32 @device_init_wakeup(ptr noundef %0, i1 noundef zeroext true) #21
  %73 = icmp sgt i32 %69, 0
  %74 = load i32, ptr %11, align 4
  br i1 %73, label %75, label %79

75:                                               ; preds = %71
  %76 = icmp eq i32 %69, %74
  br i1 %76, label %81, label %77

77:                                               ; preds = %75
  %78 = tail call i32 @dev_pm_set_dedicated_wake_irq(ptr noundef %0, i32 noundef %69) #21
  br label %84

79:                                               ; preds = %71
  %80 = icmp sgt i32 %74, 0
  br i1 %80, label %81, label %88

81:                                               ; preds = %79, %75
  %82 = phi i32 [ %74, %79 ], [ %69, %75 ]
  %83 = tail call i32 @dev_pm_set_wake_irq(ptr noundef %0, i32 noundef %82) #21
  br label %84

84:                                               ; preds = %81, %77
  %85 = phi i32 [ %78, %77 ], [ %83, %81 ]
  %86 = icmp eq i32 %85, 0
  br i1 %86, label %88, label %87

87:                                               ; preds = %84
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %0, ptr noundef nonnull @.str.46) #22
  br label %88

88:                                               ; preds = %87, %84, %79, %62
  %89 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 25
  %90 = load ptr, ptr %89, align 8
  %91 = tail call i32 @of_clk_set_defaults(ptr noundef %90, i1 noundef zeroext false) #21
  %92 = icmp slt i32 %91, 0
  br i1 %92, label %125, label %93

93:                                               ; preds = %88
  %94 = tail call i32 @dev_pm_domain_attach(ptr noundef %0, i1 noundef zeroext true) #21
  %95 = icmp eq i32 %94, 0
  br i1 %95, label %96, label %125

96:                                               ; preds = %93
  %97 = tail call ptr @devres_open_group(ptr noundef %0, ptr noundef null, i32 noundef 3264) #21
  %98 = getelementptr i8, ptr %0, i32 492
  store ptr %97, ptr %98, align 4
  %99 = icmp eq ptr %97, null
  br i1 %99, label %123, label %100

100:                                              ; preds = %96
  %101 = getelementptr i8, ptr %53, i32 -16
  %102 = load ptr, ptr %101, align 4
  %103 = icmp eq ptr %102, null
  br i1 %103, label %106, label %104

104:                                              ; preds = %100
  %105 = tail call i32 %102(ptr noundef nonnull %5) #21
  br label %114

106:                                              ; preds = %100
  %107 = getelementptr i8, ptr %53, i32 -24
  %108 = load ptr, ptr %107, align 4
  %109 = icmp eq ptr %108, null
  br i1 %109, label %119, label %110

110:                                              ; preds = %106
  %111 = load ptr, ptr %54, align 4
  %112 = tail call ptr @i2c_match_id(ptr noundef %111, ptr noundef nonnull %5)
  %113 = tail call i32 %108(ptr noundef nonnull %5, ptr noundef %112) #21
  br label %114

114:                                              ; preds = %110, %104
  %115 = phi i32 [ %105, %104 ], [ %113, %110 ]
  %116 = icmp eq i32 %115, 0
  br i1 %116, label %138, label %117

117:                                              ; preds = %114
  %118 = load ptr, ptr %98, align 4
  br label %119

119:                                              ; preds = %117, %106
  %120 = phi ptr [ %118, %117 ], [ %97, %106 ]
  %121 = phi i32 [ %115, %117 ], [ -22, %106 ]
  %122 = tail call i32 @devres_release_group(ptr noundef %0, ptr noundef %120) #21
  br label %123

123:                                              ; preds = %119, %96
  %124 = phi i32 [ %121, %119 ], [ -12, %96 ]
  tail call void @dev_pm_domain_detach(ptr noundef %0, i1 noundef zeroext true) #21
  br label %125

125:                                              ; preds = %123, %93, %88
  %126 = phi i32 [ %91, %88 ], [ %94, %93 ], [ %124, %123 ]
  tail call void @dev_pm_clear_wake_irq(ptr noundef %0) #21
  %127 = tail call i32 @device_init_wakeup(ptr noundef %0, i1 noundef zeroext false) #21
  br label %128

128:                                              ; preds = %125, %66, %57, %45
  %129 = phi i32 [ %126, %125 ], [ -19, %57 ], [ -517, %45 ], [ -517, %66 ]
  %130 = load i16, ptr %5, align 8
  %131 = and i16 %130, 64
  %132 = icmp eq i16 %131, 0
  br i1 %132, label %138, label %133

133:                                              ; preds = %128
  %134 = getelementptr i8, ptr %0, i32 -8
  %135 = load ptr, ptr %134, align 8
  %136 = getelementptr inbounds %struct.i2c_adapter, ptr %135, i32 0, i32 9
  %137 = tail call i32 @__pm_runtime_idle(ptr noundef %136, i32 noundef 4) #21
  br label %138

138:                                              ; preds = %133, %128, %114, %1
  %139 = phi i32 [ 0, %1 ], [ 0, %114 ], [ %129, %133 ], [ %129, %128 ]
  ret i32 %139
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @i2c_device_remove(ptr noundef %0) #0 {
  %2 = getelementptr i8, ptr %0, i32 -32
  %3 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 6
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr i8, ptr %4, i32 -20
  %6 = load ptr, ptr %5, align 4
  %7 = icmp eq ptr %6, null
  br i1 %7, label %13, label %8

8:                                                ; preds = %1
  %9 = tail call i32 %6(ptr noundef %2) #21
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %13, label %11

11:                                               ; preds = %8
  %12 = inttoptr i32 %9 to ptr
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %0, ptr noundef nonnull @.str.47, ptr noundef nonnull %12) #22
  br label %13

13:                                               ; preds = %11, %8, %1
  %14 = getelementptr i8, ptr %0, i32 492
  %15 = load ptr, ptr %14, align 4
  %16 = tail call i32 @devres_release_group(ptr noundef %0, ptr noundef %15) #21
  tail call void @dev_pm_domain_detach(ptr noundef %0, i1 noundef zeroext true) #21
  tail call void @dev_pm_clear_wake_irq(ptr noundef %0) #21
  %17 = tail call i32 @device_init_wakeup(ptr noundef %0, i1 noundef zeroext false) #21
  %18 = getelementptr i8, ptr %0, i32 476
  store i32 0, ptr %18, align 4
  %19 = load i16, ptr %2, align 8
  %20 = and i16 %19, 64
  %21 = icmp eq i16 %20, 0
  br i1 %21, label %27, label %22

22:                                               ; preds = %13
  %23 = getelementptr i8, ptr %0, i32 -8
  %24 = load ptr, ptr %23, align 8
  %25 = getelementptr inbounds %struct.i2c_adapter, ptr %24, i32 0, i32 9
  %26 = tail call i32 @__pm_runtime_idle(ptr noundef %25, i32 noundef 5) #21
  br label %27

27:                                               ; preds = %22, %13
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @i2c_device_shutdown(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 4
  %3 = load ptr, ptr %2, align 8
  %4 = icmp ne ptr %3, @i2c_client_type
  %5 = getelementptr i8, ptr %0, i32 -32
  %6 = icmp eq ptr %5, null
  %7 = or i1 %6, %4
  br i1 %7, label %22, label %8

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 6
  %10 = load ptr, ptr %9, align 8
  %11 = icmp eq ptr %10, null
  br i1 %11, label %22, label %12

12:                                               ; preds = %8
  %13 = getelementptr i8, ptr %10, i32 -12
  %14 = load ptr, ptr %13, align 4
  %15 = icmp eq ptr %14, null
  br i1 %15, label %17, label %16

16:                                               ; preds = %12
  tail call void %14(ptr noundef nonnull %5) #21
  br label %22

17:                                               ; preds = %12
  %18 = getelementptr i8, ptr %0, i32 476
  %19 = load i32, ptr %18, align 4
  %20 = icmp sgt i32 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %17
  tail call void @disable_irq(i32 noundef %19) #21
  br label %22

22:                                               ; preds = %21, %17, %16, %8, %1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @i2c_device_uevent(ptr noundef %0, ptr noundef %1) #0 {
  %3 = tail call i32 @of_device_uevent_modalias(ptr noundef %0, ptr noundef %1) #21
  %4 = icmp eq i32 %3, -19
  br i1 %4, label %5, label %8

5:                                                ; preds = %2
  %6 = getelementptr i8, ptr %0, i32 -28
  %7 = tail call i32 (ptr, ptr, ...) @add_uevent_var(ptr noundef %1, ptr noundef nonnull @.str.53, ptr noundef nonnull @.str.52, ptr noundef %6) #21
  br label %8

8:                                                ; preds = %5, %2
  %9 = phi i32 [ %7, %5 ], [ %3, %2 ]
  ret i32 %9
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @i2c_client_dev_release(ptr noundef %0) #0 {
  %2 = getelementptr i8, ptr %0, i32 -32
  tail call void @kfree(ptr noundef %2) #21
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define dso_local ptr @i2c_verify_client(ptr noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 4
  %3 = load ptr, ptr %2, align 8
  %4 = icmp eq ptr %3, @i2c_client_type
  %5 = getelementptr i8, ptr %0, i32 -32
  %6 = select i1 %4, ptr %5, ptr null
  ret ptr %6
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define dso_local i32 @i2c_check_7bit_addr_validity_strict(i16 noundef zeroext %0) local_unnamed_addr #3 {
  %2 = add i16 %0, -120
  %3 = icmp ult i16 %2, -112
  %4 = select i1 %3, i32 -22, i32 0
  ret i32 %4
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @i2c_dev_irq_from_resources(ptr nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = icmp eq i32 %1, 0
  br i1 %3, label %36, label %4

4:                                                ; preds = %33, %2
  %5 = phi i32 [ %34, %33 ], [ 0, %2 ]
  %6 = getelementptr %struct.resource, ptr %0, i32 %5, i32 3
  %7 = load i32, ptr %6, align 4
  %8 = and i32 %7, 7936
  %9 = icmp eq i32 %8, 1024
  br i1 %9, label %10, label %33

10:                                               ; preds = %4
  %11 = getelementptr %struct.resource, ptr %0, i32 %5
  %12 = and i32 %7, 255
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %31, label %14

14:                                               ; preds = %10
  %15 = load i32, ptr %11, align 4
  %16 = tail call ptr @irq_get_irq_data(i32 noundef %15) #21
  %17 = icmp eq ptr %16, null
  br i1 %17, label %36, label %18

18:                                               ; preds = %14
  %19 = load i32, ptr %6, align 4
  %20 = getelementptr inbounds %struct.irq_data, ptr %16, i32 0, i32 3
  %21 = load ptr, ptr %20, align 4
  %22 = load i32, ptr %21, align 4
  %23 = and i32 %22, -16
  store i32 %23, ptr %21, align 4
  %24 = and i32 %19, 15
  %25 = load ptr, ptr %20, align 4
  %26 = load i32, ptr %25, align 4
  %27 = or i32 %26, %24
  store i32 %27, ptr %25, align 4
  %28 = load ptr, ptr %20, align 4
  %29 = load i32, ptr %28, align 4
  %30 = or i32 %29, 33554432
  store i32 %30, ptr %28, align 4
  br label %31

31:                                               ; preds = %18, %10
  %32 = load i32, ptr %11, align 4
  br label %36

33:                                               ; preds = %4
  %34 = add nuw i32 %5, 1
  %35 = icmp eq i32 %34, %1
  br i1 %35, label %36, label %4

36:                                               ; preds = %33, %31, %14, %2
  %37 = phi i32 [ %32, %31 ], [ 0, %14 ], [ 0, %2 ], [ 0, %33 ]
  ret i32 %37
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @irq_get_irq_data(i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @i2c_new_client_device(ptr noundef %0, ptr noundef %1) #0 {
  %3 = alloca i32, align 4
  %4 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10), align 4
  %5 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %4, i32 noundef 3520, i32 noundef 528) #23
  %6 = icmp eq ptr %5, null
  br i1 %6, label %167, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.i2c_client, ptr %5, i32 0, i32 3
  store ptr %0, ptr %8, align 8
  %9 = getelementptr inbounds %struct.i2c_board_info, ptr %1, i32 0, i32 4
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr inbounds %struct.i2c_client, ptr %5, i32 0, i32 4
  %12 = getelementptr inbounds %struct.i2c_client, ptr %5, i32 0, i32 4, i32 7
  store ptr %10, ptr %12, align 4
  %13 = getelementptr inbounds %struct.i2c_board_info, ptr %1, i32 0, i32 1
  %14 = load i16, ptr %13, align 4
  store i16 %14, ptr %5, align 8
  %15 = getelementptr inbounds %struct.i2c_board_info, ptr %1, i32 0, i32 2
  %16 = load i16, ptr %15, align 2
  %17 = getelementptr inbounds %struct.i2c_client, ptr %5, i32 0, i32 1
  store i16 %16, ptr %17, align 2
  %18 = getelementptr inbounds %struct.i2c_board_info, ptr %1, i32 0, i32 10
  %19 = load i32, ptr %18, align 4
  %20 = getelementptr inbounds %struct.i2c_client, ptr %5, i32 0, i32 5
  store i32 %19, ptr %20, align 8
  %21 = icmp eq i32 %19, 0
  br i1 %21, label %22, label %62

22:                                               ; preds = %7
  %23 = getelementptr inbounds %struct.i2c_board_info, ptr %1, i32 0, i32 8
  %24 = load ptr, ptr %23, align 4
  %25 = getelementptr inbounds %struct.i2c_board_info, ptr %1, i32 0, i32 9
  %26 = load i32, ptr %25, align 4
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %60, label %28

28:                                               ; preds = %57, %22
  %29 = phi i32 [ %58, %57 ], [ 0, %22 ]
  %30 = getelementptr %struct.resource, ptr %24, i32 %29, i32 3
  %31 = load i32, ptr %30, align 4
  %32 = and i32 %31, 7936
  %33 = icmp eq i32 %32, 1024
  br i1 %33, label %34, label %57

34:                                               ; preds = %28
  %35 = getelementptr %struct.resource, ptr %24, i32 %29
  %36 = and i32 %31, 255
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %55, label %38

38:                                               ; preds = %34
  %39 = load i32, ptr %35, align 4
  %40 = tail call ptr @irq_get_irq_data(i32 noundef %39) #21
  %41 = icmp eq ptr %40, null
  br i1 %41, label %60, label %42

42:                                               ; preds = %38
  %43 = load i32, ptr %30, align 4
  %44 = getelementptr inbounds %struct.irq_data, ptr %40, i32 0, i32 3
  %45 = load ptr, ptr %44, align 4
  %46 = load i32, ptr %45, align 4
  %47 = and i32 %46, -16
  store i32 %47, ptr %45, align 4
  %48 = and i32 %43, 15
  %49 = load ptr, ptr %44, align 4
  %50 = load i32, ptr %49, align 4
  %51 = or i32 %50, %48
  store i32 %51, ptr %49, align 4
  %52 = load ptr, ptr %44, align 4
  %53 = load i32, ptr %52, align 4
  %54 = or i32 %53, 33554432
  store i32 %54, ptr %52, align 4
  br label %55

55:                                               ; preds = %42, %34
  %56 = load i32, ptr %35, align 4
  br label %60

57:                                               ; preds = %28
  %58 = add nuw i32 %29, 1
  %59 = icmp eq i32 %58, %26
  br i1 %59, label %60, label %28

60:                                               ; preds = %57, %55, %38, %22
  %61 = phi i32 [ %56, %55 ], [ 0, %38 ], [ 0, %22 ], [ 0, %57 ]
  store i32 %61, ptr %20, align 8
  br label %62

62:                                               ; preds = %60, %7
  %63 = getelementptr inbounds %struct.i2c_client, ptr %5, i32 0, i32 2
  %64 = tail call i32 @strlcpy(ptr noundef %63, ptr noundef %1, i32 noundef 20) #21
  %65 = load i16, ptr %17, align 2
  %66 = zext i16 %65 to i32
  %67 = load i16, ptr %5, align 8
  %68 = and i16 %67, 16
  %69 = icmp eq i16 %68, 0
  br i1 %69, label %72, label %70

70:                                               ; preds = %62
  %71 = icmp ugt i16 %65, 1023
  br i1 %71, label %75, label %78

72:                                               ; preds = %62
  %73 = add nsw i32 %66, -128
  %74 = icmp ult i32 %73, -127
  br i1 %74, label %75, label %78

75:                                               ; preds = %72, %70
  %76 = phi i32 [ 10, %70 ], [ 7, %72 ]
  %77 = getelementptr inbounds %struct.i2c_adapter, ptr %0, i32 0, i32 9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %77, ptr noundef nonnull @.str.9, i32 noundef %76, i32 noundef %66) #22
  br label %164

78:                                               ; preds = %72, %70
  %79 = or i16 %65, -24576
  %80 = select i1 %69, i16 %65, i16 %79
  %81 = shl i16 %67, 7
  %82 = and i16 %81, 4096
  %83 = or i16 %80, %82
  %84 = zext i16 %83 to i32
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3)
  store i32 %84, ptr %3, align 4
  %85 = getelementptr inbounds %struct.i2c_adapter, ptr %0, i32 0, i32 9, i32 1
  %86 = load ptr, ptr %85, align 4
  %87 = icmp eq ptr %86, null
  br i1 %87, label %99, label %88

88:                                               ; preds = %78
  %89 = getelementptr inbounds %struct.device, ptr %86, i32 0, i32 4
  %90 = load ptr, ptr %89, align 8
  %91 = icmp ne ptr %90, @i2c_adapter_type
  %92 = getelementptr i8, ptr %86, i32 -64
  %93 = icmp eq ptr %92, null
  %94 = select i1 %91, i1 true, i1 %93
  br i1 %94, label %99, label %95

95:                                               ; preds = %88
  %96 = tail call fastcc i32 @i2c_check_mux_parents(ptr noundef nonnull %92, i32 noundef %84) #21
  %97 = icmp eq i32 %96, 0
  br i1 %97, label %99, label %98

98:                                               ; preds = %95
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3)
  br label %159

99:                                               ; preds = %95, %88, %78
  %100 = getelementptr inbounds %struct.i2c_adapter, ptr %0, i32 0, i32 9
  %101 = call i32 @device_for_each_child(ptr noundef %100, ptr noundef nonnull %3, ptr noundef nonnull @i2c_check_mux_children) #21
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3)
  %102 = icmp eq i32 %101, 0
  br i1 %102, label %103, label %159

103:                                              ; preds = %99
  %104 = load ptr, ptr %8, align 8
  %105 = getelementptr inbounds %struct.i2c_adapter, ptr %104, i32 0, i32 9
  %106 = getelementptr inbounds %struct.i2c_client, ptr %5, i32 0, i32 4, i32 1
  store ptr %105, ptr %106, align 4
  %107 = getelementptr inbounds %struct.i2c_client, ptr %5, i32 0, i32 4, i32 5
  store ptr @i2c_bus_type, ptr %107, align 4
  %108 = getelementptr inbounds %struct.i2c_client, ptr %5, i32 0, i32 4, i32 4
  store ptr @i2c_client_type, ptr %108, align 8
  %109 = getelementptr inbounds %struct.i2c_board_info, ptr %1, i32 0, i32 5
  %110 = load ptr, ptr %109, align 4
  %111 = call ptr @of_node_get(ptr noundef %110) #21
  %112 = getelementptr inbounds %struct.i2c_client, ptr %5, i32 0, i32 4, i32 25
  store ptr %111, ptr %112, align 8
  %113 = getelementptr inbounds %struct.i2c_board_info, ptr %1, i32 0, i32 6
  %114 = load ptr, ptr %113, align 4
  %115 = getelementptr inbounds %struct.i2c_client, ptr %5, i32 0, i32 4, i32 26
  store ptr %114, ptr %115, align 4
  %116 = getelementptr inbounds %struct.i2c_client, ptr %5, i32 0, i32 4, i32 11, i32 1
  %117 = load i16, ptr %116, align 4
  %118 = and i16 %117, 8
  %119 = icmp eq i16 %118, 0
  br i1 %119, label %120, label %122

120:                                              ; preds = %103
  %121 = or i16 %117, 2
  store i16 %121, ptr %116, align 4
  br label %122

122:                                              ; preds = %120, %103
  %123 = icmp eq ptr %1, null
  br i1 %123, label %130, label %124

124:                                              ; preds = %122
  %125 = getelementptr inbounds %struct.i2c_board_info, ptr %1, i32 0, i32 3
  %126 = load ptr, ptr %125, align 4
  %127 = icmp eq ptr %126, null
  br i1 %127, label %130, label %128

128:                                              ; preds = %124
  %129 = call i32 (ptr, ptr, ...) @dev_set_name(ptr noundef %11, ptr noundef nonnull @.str.54, ptr noundef nonnull %126) #21
  br label %144

130:                                              ; preds = %124, %122
  %131 = getelementptr inbounds %struct.i2c_adapter, ptr %0, i32 0, i32 11
  %132 = load i32, ptr %131, align 4
  %133 = load i16, ptr %17, align 2
  %134 = load i16, ptr %5, align 8
  %135 = and i16 %134, 16
  %136 = icmp eq i16 %135, 0
  %137 = or i16 %133, -24576
  %138 = select i1 %136, i16 %133, i16 %137
  %139 = shl i16 %134, 7
  %140 = and i16 %139, 4096
  %141 = or i16 %138, %140
  %142 = zext i16 %141 to i32
  %143 = call i32 (ptr, ptr, ...) @dev_set_name(ptr noundef %11, ptr noundef nonnull @.str.55, i32 noundef %132, i32 noundef %142) #21
  br label %144

144:                                              ; preds = %130, %128
  %145 = getelementptr inbounds %struct.i2c_board_info, ptr %1, i32 0, i32 7
  %146 = load ptr, ptr %145, align 4
  %147 = icmp eq ptr %146, null
  br i1 %147, label %152, label %148

148:                                              ; preds = %144
  %149 = call i32 @device_add_software_node(ptr noundef %11, ptr noundef nonnull %146) #21
  %150 = icmp eq i32 %149, 0
  br i1 %150, label %152, label %151

151:                                              ; preds = %148
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %100, ptr noundef nonnull @.str.10, ptr noundef %63, i32 noundef %149) #22
  br label %156

152:                                              ; preds = %148, %144
  %153 = call i32 @device_register(ptr noundef %11) #21
  %154 = icmp eq i32 %153, 0
  br i1 %154, label %167, label %155

155:                                              ; preds = %152
  call void @device_remove_software_node(ptr noundef %11) #21
  br label %156

156:                                              ; preds = %155, %151
  %157 = phi i32 [ %149, %151 ], [ %153, %155 ]
  %158 = load ptr, ptr %109, align 4
  call void @of_node_put(ptr noundef %158) #21
  br label %159

159:                                              ; preds = %156, %99, %98
  %160 = phi i32 [ %101, %99 ], [ %157, %156 ], [ %96, %98 ]
  %161 = getelementptr inbounds %struct.i2c_adapter, ptr %0, i32 0, i32 9
  %162 = load i16, ptr %17, align 2
  %163 = zext i16 %162 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %161, ptr noundef nonnull @.str.11, ptr noundef %63, i32 noundef %163, i32 noundef %160) #22
  br label %164

164:                                              ; preds = %159, %75
  %165 = phi i32 [ -22, %75 ], [ %160, %159 ]
  call void @kfree(ptr noundef nonnull %5) #21
  %166 = inttoptr i32 %165 to ptr
  br label %167

167:                                              ; preds = %164, %152, %2
  %168 = phi ptr [ %166, %164 ], [ %5, %152 ], [ inttoptr (i32 -12 to ptr), %2 ]
  ret ptr %168
}

; Function Attrs: nofree null_pointer_is_valid
declare dso_local i32 @strlcpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_node_get(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_add_software_node(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_register(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @device_remove_software_node(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_node_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @i2c_unregister_device(ptr noundef %0) #0 {
  %2 = icmp eq ptr %0, null
  %3 = icmp ugt ptr %0, inttoptr (i32 -4096 to ptr)
  %4 = or i1 %2, %3
  br i1 %4, label %14, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.i2c_client, ptr %0, i32 0, i32 4
  %7 = getelementptr inbounds %struct.i2c_client, ptr %0, i32 0, i32 4, i32 25
  %8 = load ptr, ptr %7, align 8
  %9 = icmp eq ptr %8, null
  br i1 %9, label %13, label %10

10:                                               ; preds = %5
  %11 = getelementptr inbounds %struct.device_node, ptr %8, i32 0, i32 10
  tail call void @_clear_bit(i32 noundef 3, ptr noundef %11) #21
  %12 = load ptr, ptr %7, align 8
  tail call void @of_node_put(ptr noundef %12) #21
  br label %13

13:                                               ; preds = %10, %5
  tail call void @device_remove_software_node(ptr noundef %6) #21
  tail call void @device_unregister(ptr noundef %6) #21
  br label %14

14:                                               ; preds = %13, %1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @device_unregister(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @i2c_new_dummy_device(ptr noundef %0, i16 noundef zeroext %1) #0 {
  %3 = alloca %struct.i2c_board_info, align 4
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %3) #21
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 4 dereferenceable(20) %3, ptr noundef nonnull align 1 dereferenceable(20) @.str.12, i32 20, i1 false)
  %4 = getelementptr inbounds %struct.i2c_board_info, ptr %3, i32 0, i32 1
  store i16 0, ptr %4, align 4
  %5 = getelementptr inbounds %struct.i2c_board_info, ptr %3, i32 0, i32 2
  store i16 %1, ptr %5, align 2
  %6 = getelementptr inbounds %struct.i2c_board_info, ptr %3, i32 0, i32 3
  call void @llvm.memset.p0.i64(ptr noundef align 4 dereferenceable(32) %6, i8 0, i64 32, i1 false)
  %7 = call ptr @i2c_new_client_device(ptr noundef %0, ptr noundef nonnull %3)
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %3) #21
  ret ptr %7
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #9

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #10

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @devm_i2c_new_dummy_device(ptr noundef %0, ptr noundef %1, i16 noundef zeroext %2) #0 {
  %4 = alloca %struct.i2c_board_info, align 4
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #21
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 4 dereferenceable(20) %4, ptr noundef nonnull align 1 dereferenceable(20) @.str.12, i32 20, i1 false) #21
  %5 = getelementptr inbounds %struct.i2c_board_info, ptr %4, i32 0, i32 1
  store i16 0, ptr %5, align 4
  %6 = getelementptr inbounds %struct.i2c_board_info, ptr %4, i32 0, i32 2
  store i16 %2, ptr %6, align 2
  %7 = getelementptr inbounds %struct.i2c_board_info, ptr %4, i32 0, i32 3
  call void @llvm.memset.p0.i64(ptr noundef align 4 dereferenceable(32) %7, i8 0, i64 32, i1 false) #21
  %8 = call ptr @i2c_new_client_device(ptr noundef %1, ptr noundef nonnull %4) #21
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #21
  %9 = icmp ugt ptr %8, inttoptr (i32 -4096 to ptr)
  br i1 %9, label %26, label %10

10:                                               ; preds = %3
  %11 = call i32 @devm_add_action(ptr noundef %0, ptr noundef nonnull @devm_i2c_release_dummy, ptr noundef %8) #21
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %26, label %13

13:                                               ; preds = %10
  %14 = icmp eq ptr %8, null
  br i1 %14, label %24, label %15

15:                                               ; preds = %13
  %16 = getelementptr inbounds %struct.i2c_client, ptr %8, i32 0, i32 4
  %17 = getelementptr inbounds %struct.i2c_client, ptr %8, i32 0, i32 4, i32 25
  %18 = load ptr, ptr %17, align 8
  %19 = icmp eq ptr %18, null
  br i1 %19, label %23, label %20

20:                                               ; preds = %15
  %21 = getelementptr inbounds %struct.device_node, ptr %18, i32 0, i32 10
  call void @_clear_bit(i32 noundef 3, ptr noundef %21) #21
  %22 = load ptr, ptr %17, align 8
  call void @of_node_put(ptr noundef %22) #21
  br label %23

23:                                               ; preds = %20, %15
  call void @device_remove_software_node(ptr noundef %16) #21
  call void @device_unregister(ptr noundef %16) #21
  br label %24

24:                                               ; preds = %23, %13
  %25 = inttoptr i32 %11 to ptr
  br label %26

26:                                               ; preds = %24, %10, %3
  %27 = phi ptr [ %25, %24 ], [ %8, %3 ], [ %8, %10 ]
  ret ptr %27
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @devm_i2c_release_dummy(ptr noundef %0) #0 {
  %2 = icmp eq ptr %0, null
  %3 = icmp ugt ptr %0, inttoptr (i32 -4096 to ptr)
  %4 = or i1 %2, %3
  br i1 %4, label %14, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.i2c_client, ptr %0, i32 0, i32 4
  %7 = getelementptr inbounds %struct.i2c_client, ptr %0, i32 0, i32 4, i32 25
  %8 = load ptr, ptr %7, align 8
  %9 = icmp eq ptr %8, null
  br i1 %9, label %13, label %10

10:                                               ; preds = %5
  %11 = getelementptr inbounds %struct.device_node, ptr %8, i32 0, i32 10
  tail call void @_clear_bit(i32 noundef 3, ptr noundef %11) #21
  %12 = load ptr, ptr %7, align 8
  tail call void @of_node_put(ptr noundef %12) #21
  br label %13

13:                                               ; preds = %10, %5
  tail call void @device_remove_software_node(ptr noundef %6) #21
  tail call void @device_unregister(ptr noundef %6) #21
  br label %14

14:                                               ; preds = %13, %1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @i2c_new_ancillary_device(ptr nocapture noundef readonly %0, ptr noundef %1, i16 noundef zeroext %2) #0 {
  %4 = alloca %struct.i2c_board_info, align 4
  %5 = alloca i32, align 4
  %6 = getelementptr inbounds %struct.i2c_client, ptr %0, i32 0, i32 4, i32 25
  %7 = load ptr, ptr %6, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #21
  %8 = zext i16 %2 to i32
  store i32 %8, ptr %5, align 4
  %9 = icmp eq ptr %7, null
  br i1 %9, label %16, label %10

10:                                               ; preds = %3
  %11 = tail call i32 @of_property_match_string(ptr noundef nonnull %7, ptr noundef nonnull @.str.13, ptr noundef %1) #21
  %12 = icmp sgt i32 %11, -1
  br i1 %12, label %13, label %16

13:                                               ; preds = %10
  %14 = call i32 @of_property_read_u32_index(ptr noundef nonnull %7, ptr noundef nonnull @.str.14, i32 noundef %11, ptr noundef nonnull %5) #21
  %15 = load i32, ptr %5, align 4
  br label %16

16:                                               ; preds = %13, %10, %3
  %17 = phi i32 [ %8, %10 ], [ %15, %13 ], [ %8, %3 ]
  %18 = getelementptr inbounds %struct.i2c_client, ptr %0, i32 0, i32 3
  %19 = load ptr, ptr %18, align 8
  %20 = trunc i32 %17 to i16
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #21
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 4 dereferenceable(20) %4, ptr noundef nonnull align 1 dereferenceable(20) @.str.12, i32 20, i1 false) #21
  %21 = getelementptr inbounds %struct.i2c_board_info, ptr %4, i32 0, i32 1
  store i16 0, ptr %21, align 4
  %22 = getelementptr inbounds %struct.i2c_board_info, ptr %4, i32 0, i32 2
  store i16 %20, ptr %22, align 2
  %23 = getelementptr inbounds %struct.i2c_board_info, ptr %4, i32 0, i32 3
  call void @llvm.memset.p0.i64(ptr noundef align 4 dereferenceable(32) %23, i8 0, i64 32, i1 false) #21
  %24 = call ptr @i2c_new_client_device(ptr noundef %19, ptr noundef nonnull %4) #21
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #21
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #21
  ret ptr %24
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_match_string(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_u32_index(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @i2c_adapter_depth(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.i2c_adapter, ptr %0, i32 0, i32 9, i32 1
  %3 = load ptr, ptr %2, align 4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %26, label %5

5:                                                ; preds = %14, %1
  %6 = phi ptr [ %17, %14 ], [ %3, %1 ]
  %7 = phi i32 [ %15, %14 ], [ 0, %1 ]
  %8 = getelementptr inbounds %struct.device, ptr %6, i32 0, i32 4
  %9 = load ptr, ptr %8, align 8
  %10 = icmp ne ptr %9, @i2c_adapter_type
  %11 = getelementptr i8, ptr %6, i32 -64
  %12 = icmp eq ptr %11, null
  %13 = select i1 %10, i1 true, i1 %12
  br i1 %13, label %19, label %14

14:                                               ; preds = %5
  %15 = add i32 %7, 1
  %16 = getelementptr i8, ptr %6, i32 36
  %17 = load ptr, ptr %16, align 4
  %18 = icmp eq ptr %17, null
  br i1 %18, label %19, label %5

19:                                               ; preds = %14, %5
  %20 = phi i32 [ %15, %14 ], [ %7, %5 ]
  %21 = icmp ugt i32 %20, 7
  %22 = load i1, ptr @i2c_adapter_depth.__already_done, align 1
  %23 = xor i1 %22, true
  %24 = select i1 %21, i1 %23, i1 false
  br i1 %24, label %25, label %26, !prof !10

25:                                               ; preds = %19
  store i1 true, ptr @i2c_adapter_depth.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.15, i32 noundef 1159, i32 noundef 9, ptr noundef nonnull @.str.16) #21
  br label %26

26:                                               ; preds = %25, %19, %1
  %27 = phi i32 [ %20, %25 ], [ %20, %19 ], [ 0, %1 ]
  ret i32 %27
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @i2c_adapter_dev_release(ptr noundef %0) #0 {
  %2 = getelementptr i8, ptr %0, i32 528
  tail call void @complete(ptr noundef %2) #21
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define dso_local ptr @i2c_verify_adapter(ptr noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 4
  %3 = load ptr, ptr %2, align 8
  %4 = icmp eq ptr %3, @i2c_adapter_type
  %5 = getelementptr i8, ptr %0, i32 -64
  %6 = select i1 %4, ptr %5, ptr null
  ret ptr %6
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @i2c_handle_smbus_host_notify(ptr noundef readonly %0, i16 noundef zeroext %1) #0 {
  %3 = alloca i32, align 4
  %4 = icmp eq ptr %0, null
  br i1 %4, label %16, label %5

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.i2c_adapter, ptr %0, i32 0, i32 18
  %7 = load ptr, ptr %6, align 4
  %8 = zext i16 %1 to i32
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #21
  store i32 0, ptr %3, align 4, !annotation !14
  %9 = call ptr @__irq_resolve_mapping(ptr noundef %7, i32 noundef %8, ptr noundef nonnull %3) #21
  %10 = icmp eq ptr %9, null
  %11 = load i32, ptr %3, align 4
  %12 = select i1 %10, i32 0, i32 %11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #21
  %13 = icmp slt i32 %12, 1
  br i1 %13, label %16, label %14

14:                                               ; preds = %5
  %15 = call i32 @generic_handle_irq(i32 noundef %12) #21
  br label %16

16:                                               ; preds = %14, %5, %2
  %17 = phi i32 [ 0, %14 ], [ -22, %2 ], [ -6, %5 ]
  ret i32 %17
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @generic_handle_irq(i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @i2c_add_adapter(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.i2c_adapter, ptr %0, i32 0, i32 9, i32 25
  %3 = load ptr, ptr %2, align 8
  %4 = icmp eq ptr %3, null
  br i1 %4, label %19, label %5

5:                                                ; preds = %1
  %6 = tail call i32 @of_alias_get_id(ptr noundef nonnull %3, ptr noundef nonnull @.str.8) #21
  %7 = icmp sgt i32 %6, -1
  br i1 %7, label %8, label %19

8:                                                ; preds = %5
  %9 = getelementptr inbounds %struct.i2c_adapter, ptr %0, i32 0, i32 11
  store i32 %6, ptr %9, align 4
  tail call void @mutex_lock(ptr noundef nonnull @core_lock) #21
  %10 = load i32, ptr %9, align 4
  %11 = add i32 %10, 1
  %12 = tail call i32 @idr_alloc(ptr noundef nonnull @i2c_adapter_idr, ptr noundef %0, i32 noundef %10, i32 noundef %11, i32 noundef 3264) #21
  tail call void @mutex_unlock(ptr noundef nonnull @core_lock) #21
  %13 = icmp slt i32 %12, 0
  br i1 %13, label %14, label %17, !prof !10

14:                                               ; preds = %8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.15, i32 noundef 1545, i32 noundef 9, ptr noundef nonnull @.str.17) #21
  %15 = icmp eq i32 %12, -28
  %16 = select i1 %15, i32 -16, i32 %12
  br label %27

17:                                               ; preds = %8
  %18 = tail call fastcc i32 @i2c_register_adapter(ptr noundef %0) #21
  br label %27

19:                                               ; preds = %5, %1
  tail call void @mutex_lock(ptr noundef nonnull @core_lock) #21
  %20 = load i32, ptr @__i2c_first_dynamic_bus_num, align 4
  %21 = tail call i32 @idr_alloc(ptr noundef nonnull @i2c_adapter_idr, ptr noundef %0, i32 noundef %20, i32 noundef 0, i32 noundef 3264) #21
  tail call void @mutex_unlock(ptr noundef nonnull @core_lock) #21
  %22 = icmp slt i32 %21, 0
  br i1 %22, label %23, label %24, !prof !10

23:                                               ; preds = %19
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.15, i32 noundef 1582, i32 noundef 9, ptr noundef nonnull @.str.17) #21
  br label %27

24:                                               ; preds = %19
  %25 = getelementptr inbounds %struct.i2c_adapter, ptr %0, i32 0, i32 11
  store i32 %21, ptr %25, align 4
  %26 = tail call fastcc i32 @i2c_register_adapter(ptr noundef %0)
  br label %27

27:                                               ; preds = %24, %23, %17, %14
  %28 = phi i32 [ %21, %23 ], [ %26, %24 ], [ %16, %14 ], [ %18, %17 ]
  ret i32 %28
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_alias_get_id(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @idr_alloc(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @i2c_register_adapter(ptr noundef %0) unnamed_addr #0 {
  %2 = load i1, ptr @is_registered, align 1
  br i1 %2, label %4, label %3, !prof !15

3:                                                ; preds = %1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.15, i32 noundef 1438, i32 noundef 9, ptr noundef null) #21
  br label %242

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.i2c_adapter, ptr %0, i32 0, i32 12
  %6 = load i8, ptr %5, align 8
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %8, label %9, !prof !10

8:                                                ; preds = %4
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.15, i32 noundef 1444, i32 noundef 9, ptr noundef nonnull @.str.66) #21
  br label %242

9:                                                ; preds = %4
  %10 = getelementptr inbounds %struct.i2c_adapter, ptr %0, i32 0, i32 2
  %11 = load ptr, ptr %10, align 8
  %12 = icmp eq ptr %11, null
  br i1 %12, label %13, label %15

13:                                               ; preds = %9
  %14 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.67, ptr noundef %5) #22
  br label %242

15:                                               ; preds = %9
  %16 = getelementptr inbounds %struct.i2c_adapter, ptr %0, i32 0, i32 4
  %17 = load ptr, ptr %16, align 8
  %18 = icmp eq ptr %17, null
  br i1 %18, label %19, label %20

19:                                               ; preds = %15
  store ptr @i2c_adapter_lock_ops, ptr %16, align 8
  br label %20

20:                                               ; preds = %19, %15
  %21 = getelementptr inbounds %struct.i2c_adapter, ptr %0, i32 0, i32 10
  store i32 0, ptr %21, align 8
  %22 = getelementptr inbounds %struct.i2c_adapter, ptr %0, i32 0, i32 5
  tail call void @__rt_mutex_init(ptr noundef %22, ptr noundef nonnull @__func__.i2c_register_adapter, ptr noundef nonnull @i2c_register_adapter.__key) #21
  %23 = getelementptr inbounds %struct.i2c_adapter, ptr %0, i32 0, i32 6
  tail call void @__rt_mutex_init(ptr noundef %23, ptr noundef nonnull @__func__.i2c_register_adapter, ptr noundef nonnull @i2c_register_adapter.__key.68) #21
  %24 = getelementptr inbounds %struct.i2c_adapter, ptr %0, i32 0, i32 14
  tail call void @__mutex_init(ptr noundef %24, ptr noundef nonnull @.str.70, ptr noundef nonnull @i2c_register_adapter.__key.69) #21
  %25 = getelementptr inbounds %struct.i2c_adapter, ptr %0, i32 0, i32 15
  store volatile ptr %25, ptr %25, align 4
  %26 = getelementptr inbounds %struct.i2c_adapter, ptr %0, i32 0, i32 15, i32 1
  store ptr %25, ptr %26, align 4
  %27 = getelementptr inbounds %struct.i2c_adapter, ptr %0, i32 0, i32 7
  %28 = load i32, ptr %27, align 4
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %20
  store i32 100, ptr %27, align 4
  br label %31

31:                                               ; preds = %30, %20
  %32 = load ptr, ptr %10, align 8
  %33 = getelementptr inbounds %struct.i2c_algorithm, ptr %32, i32 0, i32 4
  %34 = load ptr, ptr %33, align 4
  %35 = tail call i32 %34(ptr noundef %0) #21
  %36 = and i32 %35, 268435456
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %49, label %38

38:                                               ; preds = %31
  %39 = getelementptr inbounds %struct.i2c_adapter, ptr %0, i32 0, i32 9, i32 1
  %40 = load ptr, ptr %39, align 4
  %41 = getelementptr inbounds %struct.device, ptr %40, i32 0, i32 26
  %42 = load ptr, ptr %41, align 4
  %43 = tail call ptr @__irq_domain_add(ptr noundef %42, i32 noundef 120, i32 noundef 120, i32 noundef 0, ptr noundef nonnull @i2c_host_notify_irq_ops, ptr noundef %0) #21
  %44 = icmp eq ptr %43, null
  br i1 %44, label %47, label %45

45:                                               ; preds = %38
  %46 = getelementptr inbounds %struct.i2c_adapter, ptr %0, i32 0, i32 18
  store ptr %43, ptr %46, align 4
  br label %49

47:                                               ; preds = %38
  %48 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.71, ptr noundef %5, i32 noundef -12) #22
  br label %242

49:                                               ; preds = %45, %31
  %50 = getelementptr inbounds %struct.i2c_adapter, ptr %0, i32 0, i32 9
  %51 = getelementptr inbounds %struct.i2c_adapter, ptr %0, i32 0, i32 11
  %52 = load i32, ptr %51, align 4
  %53 = tail call i32 (ptr, ptr, ...) @dev_set_name(ptr noundef %50, ptr noundef nonnull @.str.72, i32 noundef %52) #21
  %54 = getelementptr inbounds %struct.i2c_adapter, ptr %0, i32 0, i32 9, i32 5
  store ptr @i2c_bus_type, ptr %54, align 4
  %55 = getelementptr inbounds %struct.i2c_adapter, ptr %0, i32 0, i32 9, i32 4
  store ptr @i2c_adapter_type, ptr %55, align 8
  %56 = tail call i32 @device_register(ptr noundef %50) #21
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %60, label %58

58:                                               ; preds = %49
  %59 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.73, ptr noundef %5, i32 noundef %56) #22
  br label %242

60:                                               ; preds = %49
  %61 = tail call i32 @of_i2c_setup_smbus_alert(ptr noundef %0) #21
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %63, label %238

63:                                               ; preds = %60
  %64 = getelementptr inbounds %struct.i2c_adapter, ptr %0, i32 0, i32 9, i32 11, i32 1
  %65 = load i16, ptr %64, align 4
  %66 = and i16 %65, 8
  %67 = icmp eq i16 %66, 0
  br i1 %67, label %68, label %70

68:                                               ; preds = %63
  %69 = or i16 %65, 2
  store i16 %69, ptr %64, align 4
  br label %70

70:                                               ; preds = %68, %63
  tail call void @pm_runtime_no_callbacks(ptr noundef %50) #21
  %71 = getelementptr inbounds %struct.i2c_adapter, ptr %0, i32 0, i32 9, i32 11, i32 15
  %72 = load i16, ptr %71, align 8
  %73 = or i16 %72, 256
  store i16 %73, ptr %71, align 8
  tail call void @pm_runtime_enable(ptr noundef %50) #21
  %74 = getelementptr inbounds %struct.i2c_adapter, ptr %0, i32 0, i32 16
  %75 = load ptr, ptr %74, align 4
  %76 = icmp eq ptr %75, null
  br i1 %76, label %204, label %77

77:                                               ; preds = %70
  %78 = getelementptr inbounds %struct.i2c_bus_recovery_info, ptr %75, i32 0, i32 10
  %79 = load ptr, ptr %78, align 4
  %80 = icmp eq ptr %79, null
  %81 = getelementptr inbounds %struct.i2c_bus_recovery_info, ptr %75, i32 0, i32 11
  br i1 %80, label %82, label %84

82:                                               ; preds = %77
  store ptr null, ptr %81, align 4
  %83 = getelementptr inbounds %struct.i2c_bus_recovery_info, ptr %75, i32 0, i32 12
  store ptr null, ptr %83, align 4
  br label %114

84:                                               ; preds = %77
  %85 = load ptr, ptr %81, align 4
  %86 = icmp eq ptr %85, null
  br i1 %86, label %87, label %91

87:                                               ; preds = %84
  %88 = tail call ptr @pinctrl_lookup_state(ptr noundef nonnull %79, ptr noundef nonnull @.str.79) #21
  %89 = icmp ugt ptr %88, inttoptr (i32 -4096 to ptr)
  %90 = select i1 %89, ptr null, ptr %88
  store ptr %90, ptr %81, align 4
  br label %91

91:                                               ; preds = %87, %84
  %92 = phi ptr [ %90, %87 ], [ %85, %84 ]
  %93 = getelementptr inbounds %struct.i2c_bus_recovery_info, ptr %75, i32 0, i32 12
  %94 = load ptr, ptr %93, align 4
  %95 = icmp eq ptr %94, null
  br i1 %95, label %96, label %106

96:                                               ; preds = %91
  %97 = tail call ptr @pinctrl_lookup_state(ptr noundef nonnull %79, ptr noundef nonnull @.str.80) #21
  store ptr %97, ptr %93, align 4
  %98 = icmp ugt ptr %97, inttoptr (i32 -4096 to ptr)
  br i1 %98, label %99, label %101

99:                                               ; preds = %96
  %100 = tail call ptr @pinctrl_lookup_state(ptr noundef nonnull %79, ptr noundef nonnull @.str.81) #21
  store ptr %100, ptr %93, align 4
  br label %101

101:                                              ; preds = %99, %96
  %102 = phi ptr [ %100, %99 ], [ %97, %96 ]
  %103 = icmp ugt ptr %102, inttoptr (i32 -4096 to ptr)
  br i1 %103, label %113, label %104

104:                                              ; preds = %101
  %105 = load ptr, ptr %81, align 4
  br label %106

106:                                              ; preds = %104, %91
  %107 = phi ptr [ %105, %104 ], [ %92, %91 ]
  %108 = phi ptr [ %102, %104 ], [ %94, %91 ]
  %109 = icmp eq ptr %107, null
  %110 = icmp eq ptr %108, null
  %111 = select i1 %109, i1 true, i1 %110
  br i1 %111, label %113, label %112

112:                                              ; preds = %106
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %50, ptr noundef nonnull @.str.82) #22
  br label %114

113:                                              ; preds = %106, %101
  store ptr null, ptr %78, align 4
  store ptr null, ptr %81, align 4
  store ptr null, ptr %93, align 4
  br label %114

114:                                              ; preds = %113, %112, %82
  %115 = load ptr, ptr %74, align 4
  %116 = load ptr, ptr %115, align 4
  %117 = icmp eq ptr %116, null
  %118 = icmp eq ptr %116, @i2c_generic_scl_recovery
  %119 = or i1 %117, %118
  br i1 %119, label %120, label %163

120:                                              ; preds = %114
  %121 = getelementptr inbounds %struct.i2c_bus_recovery_info, ptr %115, i32 0, i32 10
  %122 = load ptr, ptr %121, align 4
  %123 = icmp eq ptr %122, null
  br i1 %123, label %128, label %124

124:                                              ; preds = %120
  %125 = getelementptr inbounds %struct.i2c_bus_recovery_info, ptr %115, i32 0, i32 12
  %126 = load ptr, ptr %125, align 4
  %127 = tail call i32 @pinctrl_select_state(ptr noundef nonnull %122, ptr noundef %126) #21
  br label %128

128:                                              ; preds = %124, %120
  %129 = getelementptr inbounds %struct.i2c_bus_recovery_info, ptr %115, i32 0, i32 8
  %130 = load ptr, ptr %129, align 4
  %131 = icmp eq ptr %130, null
  br i1 %131, label %132, label %138

132:                                              ; preds = %128
  %133 = tail call ptr @devm_gpiod_get(ptr noundef %50, ptr noundef nonnull @.str.83, i32 noundef 15) #21
  %134 = icmp eq ptr %133, inttoptr (i32 -517 to ptr)
  br i1 %134, label %154, label %135

135:                                              ; preds = %132
  %136 = icmp ugt ptr %133, inttoptr (i32 -4096 to ptr)
  br i1 %136, label %138, label %137

137:                                              ; preds = %135
  store ptr %133, ptr %129, align 4
  store ptr @i2c_generic_scl_recovery, ptr %115, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %50, ptr noundef nonnull @.str.84) #22
  br label %138

138:                                              ; preds = %137, %135, %128
  %139 = getelementptr inbounds %struct.i2c_bus_recovery_info, ptr %115, i32 0, i32 9
  %140 = load ptr, ptr %139, align 4
  %141 = icmp eq ptr %140, null
  br i1 %141, label %142, label %154

142:                                              ; preds = %138
  %143 = load ptr, ptr %129, align 4
  %144 = tail call i32 @gpiod_direction_output(ptr noundef %143, i32 noundef 0) #21
  %145 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %145(i32 noundef 2147480) #21
  %146 = tail call ptr @devm_gpiod_get(ptr noundef %50, ptr noundef nonnull @.str.85, i32 noundef 1) #21
  %147 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %147(i32 noundef 2147480) #21
  %148 = load ptr, ptr %129, align 4
  %149 = tail call i32 @gpiod_direction_output(ptr noundef %148, i32 noundef 1) #21
  %150 = icmp eq ptr %146, inttoptr (i32 -517 to ptr)
  br i1 %150, label %154, label %151

151:                                              ; preds = %142
  %152 = icmp ugt ptr %146, inttoptr (i32 -4096 to ptr)
  br i1 %152, label %154, label %153

153:                                              ; preds = %151
  store ptr %146, ptr %139, align 4
  br label %154

154:                                              ; preds = %153, %151, %142, %138, %132
  %155 = phi i1 [ false, %153 ], [ false, %151 ], [ true, %142 ], [ false, %138 ], [ true, %132 ]
  %156 = load ptr, ptr %121, align 4
  %157 = icmp eq ptr %156, null
  br i1 %157, label %162, label %158

158:                                              ; preds = %154
  %159 = getelementptr inbounds %struct.i2c_bus_recovery_info, ptr %115, i32 0, i32 11
  %160 = load ptr, ptr %159, align 4
  %161 = tail call i32 @pinctrl_select_state(ptr noundef nonnull %156, ptr noundef %160) #21
  br label %162

162:                                              ; preds = %158, %154
  br i1 %155, label %238, label %163

163:                                              ; preds = %162, %114
  %164 = load ptr, ptr %75, align 4
  %165 = icmp eq ptr %164, null
  br i1 %165, label %203, label %166

166:                                              ; preds = %163
  %167 = getelementptr inbounds %struct.i2c_bus_recovery_info, ptr %75, i32 0, i32 8
  %168 = load ptr, ptr %167, align 4
  %169 = icmp ne ptr %168, null
  %170 = icmp eq ptr %164, @i2c_generic_scl_recovery
  %171 = select i1 %169, i1 %170, i1 false
  br i1 %171, label %172, label %184

172:                                              ; preds = %166
  %173 = getelementptr inbounds %struct.i2c_bus_recovery_info, ptr %75, i32 0, i32 1
  store ptr @get_scl_gpio_value, ptr %173, align 4
  %174 = getelementptr inbounds %struct.i2c_bus_recovery_info, ptr %75, i32 0, i32 2
  store ptr @set_scl_gpio_value, ptr %174, align 4
  %175 = getelementptr inbounds %struct.i2c_bus_recovery_info, ptr %75, i32 0, i32 9
  %176 = load ptr, ptr %175, align 4
  %177 = icmp eq ptr %176, null
  br i1 %177, label %204, label %178

178:                                              ; preds = %172
  %179 = getelementptr inbounds %struct.i2c_bus_recovery_info, ptr %75, i32 0, i32 3
  store ptr @get_sda_gpio_value, ptr %179, align 4
  %180 = tail call i32 @gpiod_get_direction(ptr noundef nonnull %176) #21
  %181 = icmp eq i32 %180, 0
  br i1 %181, label %182, label %204

182:                                              ; preds = %178
  %183 = getelementptr inbounds %struct.i2c_bus_recovery_info, ptr %75, i32 0, i32 4
  store ptr @set_sda_gpio_value, ptr %183, align 4
  br label %204

184:                                              ; preds = %166
  br i1 %170, label %185, label %204

185:                                              ; preds = %184
  %186 = getelementptr inbounds %struct.i2c_bus_recovery_info, ptr %75, i32 0, i32 2
  %187 = load ptr, ptr %186, align 4
  %188 = icmp eq ptr %187, null
  br i1 %188, label %201, label %189

189:                                              ; preds = %185
  %190 = getelementptr inbounds %struct.i2c_bus_recovery_info, ptr %75, i32 0, i32 1
  %191 = load ptr, ptr %190, align 4
  %192 = icmp eq ptr %191, null
  br i1 %192, label %201, label %193

193:                                              ; preds = %189
  %194 = getelementptr inbounds %struct.i2c_bus_recovery_info, ptr %75, i32 0, i32 4
  %195 = load ptr, ptr %194, align 4
  %196 = icmp eq ptr %195, null
  br i1 %196, label %197, label %204

197:                                              ; preds = %193
  %198 = getelementptr inbounds %struct.i2c_bus_recovery_info, ptr %75, i32 0, i32 3
  %199 = load ptr, ptr %198, align 4
  %200 = icmp eq ptr %199, null
  br i1 %200, label %201, label %204

201:                                              ; preds = %197, %189, %185
  %202 = phi ptr [ @.str.77, %197 ], [ @.str.76, %185 ], [ @.str.76, %189 ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %50, ptr noundef nonnull @.str.78, ptr noundef nonnull %202) #22
  br label %203

203:                                              ; preds = %201, %163
  store ptr null, ptr %74, align 4
  br label %204

204:                                              ; preds = %203, %197, %193, %184, %182, %178, %172, %70
  %205 = load ptr, ptr @i2c_adapter_compat_class, align 4
  %206 = getelementptr inbounds %struct.i2c_adapter, ptr %0, i32 0, i32 9, i32 1
  %207 = load ptr, ptr %206, align 4
  %208 = tail call i32 @class_compat_create_link(ptr noundef %205, ptr noundef %50, ptr noundef %207) #21
  %209 = icmp eq i32 %208, 0
  br i1 %209, label %211, label %210

210:                                              ; preds = %204
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %50, ptr noundef nonnull @.str.74) #22
  br label %211

211:                                              ; preds = %210, %204
  tail call void @of_i2c_register_devices(ptr noundef %0) #21
  %212 = load i32, ptr %51, align 4
  %213 = load i32, ptr @__i2c_first_dynamic_bus_num, align 4
  %214 = icmp slt i32 %212, %213
  br i1 %214, label %215, label %236

215:                                              ; preds = %211
  tail call void @down_read(ptr noundef nonnull @__i2c_board_lock) #21
  %216 = load ptr, ptr @__i2c_board_list, align 4
  %217 = icmp eq ptr %216, @__i2c_board_list
  br i1 %217, label %235, label %218

218:                                              ; preds = %232, %215
  %219 = phi ptr [ %233, %232 ], [ %216, %215 ]
  %220 = getelementptr inbounds %struct.i2c_devinfo, ptr %219, i32 0, i32 1
  %221 = load i32, ptr %220, align 4
  %222 = load i32, ptr %51, align 4
  %223 = icmp eq i32 %221, %222
  br i1 %223, label %224, label %232

224:                                              ; preds = %218
  %225 = getelementptr inbounds %struct.i2c_devinfo, ptr %219, i32 0, i32 2
  %226 = tail call ptr @i2c_new_client_device(ptr noundef %0, ptr noundef %225) #21
  %227 = icmp ugt ptr %226, inttoptr (i32 -4096 to ptr)
  br i1 %227, label %228, label %232

228:                                              ; preds = %224
  %229 = getelementptr inbounds %struct.i2c_devinfo, ptr %219, i32 0, i32 2, i32 2
  %230 = load i16, ptr %229, align 2
  %231 = zext i16 %230 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %50, ptr noundef nonnull @.str.86, i32 noundef %231) #22
  br label %232

232:                                              ; preds = %228, %224, %218
  %233 = load ptr, ptr %219, align 4
  %234 = icmp eq ptr %233, @__i2c_board_list
  br i1 %234, label %235, label %218

235:                                              ; preds = %232, %215
  tail call void @up_read(ptr noundef nonnull @__i2c_board_lock) #21
  br label %236

236:                                              ; preds = %235, %211
  tail call void @mutex_lock(ptr noundef nonnull @core_lock) #21
  %237 = tail call i32 @bus_for_each_drv(ptr noundef nonnull @i2c_bus_type, ptr noundef null, ptr noundef %0, ptr noundef nonnull @__process_new_adapter) #21
  br label %247

238:                                              ; preds = %162, %60
  %239 = phi i32 [ %61, %60 ], [ -517, %162 ]
  %240 = getelementptr inbounds %struct.i2c_adapter, ptr %0, i32 0, i32 13
  store i32 0, ptr %240, align 4
  %241 = getelementptr inbounds %struct.i2c_adapter, ptr %0, i32 0, i32 13, i32 1
  tail call void @__init_swait_queue_head(ptr noundef %241, ptr noundef nonnull @.str.92, ptr noundef nonnull @init_completion.__key) #21
  tail call void @device_unregister(ptr noundef %50) #21
  tail call void @wait_for_completion(ptr noundef %240) #21
  br label %242

242:                                              ; preds = %238, %58, %47, %13, %8, %3
  %243 = phi i32 [ -11, %3 ], [ -12, %47 ], [ %56, %58 ], [ %239, %238 ], [ -22, %13 ], [ -22, %8 ]
  tail call void @mutex_lock(ptr noundef nonnull @core_lock) #21
  %244 = getelementptr inbounds %struct.i2c_adapter, ptr %0, i32 0, i32 11
  %245 = load i32, ptr %244, align 4
  %246 = tail call ptr @idr_remove(ptr noundef nonnull @i2c_adapter_idr, i32 noundef %245) #21
  br label %247

247:                                              ; preds = %242, %236
  %248 = phi i32 [ %243, %242 ], [ 0, %236 ]
  tail call void @mutex_unlock(ptr noundef nonnull @core_lock) #21
  ret i32 %248
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @i2c_add_numbered_adapter(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.i2c_adapter, ptr %0, i32 0, i32 11
  %3 = load i32, ptr %2, align 4
  %4 = icmp eq i32 %3, -1
  br i1 %4, label %5, label %7

5:                                                ; preds = %1
  %6 = tail call i32 @i2c_add_adapter(ptr noundef %0)
  br label %17

7:                                                ; preds = %1
  tail call void @mutex_lock(ptr noundef nonnull @core_lock) #21
  %8 = load i32, ptr %2, align 4
  %9 = add i32 %8, 1
  %10 = tail call i32 @idr_alloc(ptr noundef nonnull @i2c_adapter_idr, ptr noundef %0, i32 noundef %8, i32 noundef %9, i32 noundef 3264) #21
  tail call void @mutex_unlock(ptr noundef nonnull @core_lock) #21
  %11 = icmp slt i32 %10, 0
  br i1 %11, label %12, label %15, !prof !10

12:                                               ; preds = %7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.15, i32 noundef 1545, i32 noundef 9, ptr noundef nonnull @.str.17) #21
  %13 = icmp eq i32 %10, -28
  %14 = select i1 %13, i32 -16, i32 %10
  br label %17

15:                                               ; preds = %7
  %16 = tail call fastcc i32 @i2c_register_adapter(ptr noundef %0) #21
  br label %17

17:                                               ; preds = %15, %12, %5
  %18 = phi i32 [ %6, %5 ], [ %14, %12 ], [ %16, %15 ]
  ret i32 %18
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @i2c_del_adapter(ptr noundef %0) #0 {
  %2 = alloca i32, align 4
  tail call void @mutex_lock(ptr noundef nonnull @core_lock) #21
  %3 = getelementptr inbounds %struct.i2c_adapter, ptr %0, i32 0, i32 11
  %4 = load i32, ptr %3, align 4
  %5 = tail call ptr @idr_find(ptr noundef nonnull @i2c_adapter_idr, i32 noundef %4) #21
  tail call void @mutex_unlock(ptr noundef nonnull @core_lock) #21
  %6 = icmp eq ptr %5, %0
  br i1 %6, label %7, label %58

7:                                                ; preds = %1
  tail call void @mutex_lock(ptr noundef nonnull @core_lock) #21
  %8 = tail call i32 @bus_for_each_drv(ptr noundef nonnull @i2c_bus_type, ptr noundef null, ptr noundef %0, ptr noundef nonnull @__process_removed_adapter) #21
  tail call void @mutex_unlock(ptr noundef nonnull @core_lock) #21
  %9 = getelementptr inbounds %struct.i2c_adapter, ptr %0, i32 0, i32 14
  tail call void @mutex_lock(ptr noundef %9) #21
  %10 = getelementptr inbounds %struct.i2c_adapter, ptr %0, i32 0, i32 15
  %11 = load ptr, ptr %10, align 4
  %12 = icmp eq ptr %11, %10
  br i1 %12, label %34, label %13

13:                                               ; preds = %32, %7
  %14 = phi ptr [ %16, %32 ], [ %11, %7 ]
  %15 = getelementptr i8, ptr %14, i32 -512
  %16 = load ptr, ptr %14, align 8
  %17 = getelementptr inbounds %struct.list_head, ptr %14, i32 0, i32 1
  %18 = load ptr, ptr %17, align 4
  %19 = getelementptr inbounds %struct.list_head, ptr %16, i32 0, i32 1
  store ptr %18, ptr %19, align 4
  store volatile ptr %16, ptr %18, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %14, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %17, align 4
  %20 = icmp eq ptr %15, null
  %21 = icmp ugt ptr %15, inttoptr (i32 -4096 to ptr)
  %22 = or i1 %20, %21
  br i1 %22, label %32, label %23

23:                                               ; preds = %13
  %24 = getelementptr i8, ptr %14, i32 -480
  %25 = getelementptr i8, ptr %14, i32 -64
  %26 = load ptr, ptr %25, align 8
  %27 = icmp eq ptr %26, null
  br i1 %27, label %31, label %28

28:                                               ; preds = %23
  %29 = getelementptr inbounds %struct.device_node, ptr %26, i32 0, i32 10
  tail call void @_clear_bit(i32 noundef 3, ptr noundef %29) #21
  %30 = load ptr, ptr %25, align 8
  tail call void @of_node_put(ptr noundef %30) #21
  br label %31

31:                                               ; preds = %28, %23
  tail call void @device_remove_software_node(ptr noundef %24) #21
  tail call void @device_unregister(ptr noundef %24) #21
  br label %32

32:                                               ; preds = %31, %13
  %33 = icmp eq ptr %16, %10
  br i1 %33, label %34, label %13

34:                                               ; preds = %32, %7
  tail call void @mutex_unlock(ptr noundef %9) #21
  %35 = getelementptr inbounds %struct.i2c_adapter, ptr %0, i32 0, i32 9
  %36 = tail call i32 @device_for_each_child(ptr noundef %35, ptr noundef null, ptr noundef nonnull @__unregister_client) #21
  %37 = tail call i32 @device_for_each_child(ptr noundef %35, ptr noundef null, ptr noundef nonnull @__unregister_dummy) #21
  %38 = load ptr, ptr @i2c_adapter_compat_class, align 4
  %39 = getelementptr inbounds %struct.i2c_adapter, ptr %0, i32 0, i32 9, i32 1
  %40 = load ptr, ptr %39, align 4
  tail call void @class_compat_remove_link(ptr noundef %38, ptr noundef %35, ptr noundef %40) #21
  tail call void @__pm_runtime_disable(ptr noundef %35, i1 noundef zeroext true) #21
  %41 = getelementptr inbounds %struct.i2c_adapter, ptr %0, i32 0, i32 18
  %42 = load ptr, ptr %41, align 4
  %43 = icmp eq ptr %42, null
  br i1 %43, label %53, label %44

44:                                               ; preds = %44, %34
  %45 = phi i32 [ %50, %44 ], [ 0, %34 ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #21
  store i32 0, ptr %2, align 4, !annotation !14
  %46 = call ptr @__irq_resolve_mapping(ptr noundef nonnull %42, i32 noundef %45, ptr noundef nonnull %2) #21
  %47 = icmp eq ptr %46, null
  %48 = load i32, ptr %2, align 4
  %49 = select i1 %47, i32 0, i32 %48
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #21
  call void @irq_dispose_mapping(i32 noundef %49) #21
  %50 = add nuw nsw i32 %45, 1
  %51 = icmp eq i32 %50, 120
  br i1 %51, label %52, label %44

52:                                               ; preds = %44
  call void @irq_domain_remove(ptr noundef nonnull %42) #21
  store ptr null, ptr %41, align 4
  br label %53

53:                                               ; preds = %52, %34
  %54 = getelementptr inbounds %struct.i2c_adapter, ptr %0, i32 0, i32 13
  store i32 0, ptr %54, align 4
  %55 = getelementptr inbounds %struct.i2c_adapter, ptr %0, i32 0, i32 13, i32 1
  call void @__init_swait_queue_head(ptr noundef %55, ptr noundef nonnull @.str.92, ptr noundef nonnull @init_completion.__key) #21
  call void @device_unregister(ptr noundef %35) #21
  call void @wait_for_completion(ptr noundef %54) #21
  call void @mutex_lock(ptr noundef nonnull @core_lock) #21
  %56 = load i32, ptr %3, align 4
  %57 = call ptr @idr_remove(ptr noundef nonnull @i2c_adapter_idr, i32 noundef %56) #21
  call void @mutex_unlock(ptr noundef nonnull @core_lock) #21
  call void @llvm.memset.p0.i32(ptr noundef align 8 dereferenceable(472) %35, i8 0, i32 472, i1 false)
  br label %58

58:                                               ; preds = %53, %1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @idr_find(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bus_for_each_drv(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @__process_removed_adapter(ptr noundef readonly %0, ptr noundef readnone %1) #0 {
  %3 = getelementptr i8, ptr %0, i32 88
  %4 = load ptr, ptr %3, align 4
  %5 = icmp eq ptr %4, %3
  br i1 %5, label %31, label %6

6:                                                ; preds = %29, %2
  %7 = phi ptr [ %8, %29 ], [ %4, %2 ]
  %8 = load ptr, ptr %7, align 8
  %9 = getelementptr i8, ptr %7, i32 -488
  %10 = load ptr, ptr %9, align 8
  %11 = icmp eq ptr %10, %1
  br i1 %11, label %12, label %29

12:                                               ; preds = %6
  %13 = getelementptr i8, ptr %7, i32 -512
  %14 = getelementptr inbounds %struct.list_head, ptr %7, i32 0, i32 1
  %15 = load ptr, ptr %14, align 4
  %16 = getelementptr inbounds %struct.list_head, ptr %8, i32 0, i32 1
  store ptr %15, ptr %16, align 4
  store volatile ptr %8, ptr %15, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %7, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %14, align 4
  %17 = icmp eq ptr %13, null
  %18 = icmp ugt ptr %13, inttoptr (i32 -4096 to ptr)
  %19 = or i1 %17, %18
  br i1 %19, label %29, label %20

20:                                               ; preds = %12
  %21 = getelementptr i8, ptr %7, i32 -480
  %22 = getelementptr i8, ptr %7, i32 -64
  %23 = load ptr, ptr %22, align 8
  %24 = icmp eq ptr %23, null
  br i1 %24, label %28, label %25

25:                                               ; preds = %20
  %26 = getelementptr inbounds %struct.device_node, ptr %23, i32 0, i32 10
  tail call void @_clear_bit(i32 noundef 3, ptr noundef %26) #21
  %27 = load ptr, ptr %22, align 8
  tail call void @of_node_put(ptr noundef %27) #21
  br label %28

28:                                               ; preds = %25, %20
  tail call void @device_remove_software_node(ptr noundef %21) #21
  tail call void @device_unregister(ptr noundef %21) #21
  br label %29

29:                                               ; preds = %28, %12, %6
  %30 = icmp eq ptr %8, %3
  br i1 %30, label %31, label %6

31:                                               ; preds = %29, %2
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_for_each_child(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @__unregister_client(ptr noundef %0, ptr nocapture noundef readnone %1) #0 {
  %3 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 4
  %4 = load ptr, ptr %3, align 8
  %5 = icmp ne ptr %4, @i2c_client_type
  %6 = getelementptr i8, ptr %0, i32 -32
  %7 = icmp eq ptr %6, null
  %8 = or i1 %7, %5
  br i1 %8, label %23, label %9

9:                                                ; preds = %2
  %10 = getelementptr i8, ptr %0, i32 -28
  %11 = tail call i32 @strcmp(ptr noundef %10, ptr noundef nonnull dereferenceable(6) @.str.91)
  %12 = icmp eq i32 %11, 0
  %13 = icmp ugt ptr %6, inttoptr (i32 -4096 to ptr)
  %14 = or i1 %13, %12
  br i1 %14, label %23, label %15

15:                                               ; preds = %9
  %16 = getelementptr i8, ptr %0, i32 416
  %17 = load ptr, ptr %16, align 8
  %18 = icmp eq ptr %17, null
  br i1 %18, label %22, label %19

19:                                               ; preds = %15
  %20 = getelementptr inbounds %struct.device_node, ptr %17, i32 0, i32 10
  tail call void @_clear_bit(i32 noundef 3, ptr noundef %20) #21
  %21 = load ptr, ptr %16, align 8
  tail call void @of_node_put(ptr noundef %21) #21
  br label %22

22:                                               ; preds = %19, %15
  tail call void @device_remove_software_node(ptr noundef %0) #21
  tail call void @device_unregister(ptr noundef %0) #21
  br label %23

23:                                               ; preds = %22, %9, %2
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @__unregister_dummy(ptr noundef %0, ptr nocapture noundef readnone %1) #0 {
  %3 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 4
  %4 = load ptr, ptr %3, align 8
  %5 = icmp eq ptr %4, @i2c_client_type
  %6 = getelementptr i8, ptr %0, i32 -32
  %7 = select i1 %5, ptr %6, ptr null
  %8 = icmp eq ptr %7, null
  %9 = icmp ugt ptr %7, inttoptr (i32 -4096 to ptr)
  %10 = or i1 %8, %9
  br i1 %10, label %20, label %11

11:                                               ; preds = %2
  %12 = getelementptr inbounds %struct.i2c_client, ptr %7, i32 0, i32 4
  %13 = getelementptr inbounds %struct.i2c_client, ptr %7, i32 0, i32 4, i32 25
  %14 = load ptr, ptr %13, align 8
  %15 = icmp eq ptr %14, null
  br i1 %15, label %19, label %16

16:                                               ; preds = %11
  %17 = getelementptr inbounds %struct.device_node, ptr %14, i32 0, i32 10
  tail call void @_clear_bit(i32 noundef 3, ptr noundef %17) #21
  %18 = load ptr, ptr %13, align 8
  tail call void @of_node_put(ptr noundef %18) #21
  br label %19

19:                                               ; preds = %16, %11
  tail call void @device_remove_software_node(ptr noundef %12) #21
  tail call void @device_unregister(ptr noundef %12) #21
  br label %20

20:                                               ; preds = %19, %2
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @class_compat_remove_link(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @wait_for_completion(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @idr_remove(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @devm_i2c_add_adapter(ptr noundef %0, ptr noundef %1) #0 {
  %3 = tail call i32 @i2c_add_adapter(ptr noundef %1)
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %9

5:                                                ; preds = %2
  %6 = tail call i32 @devm_add_action(ptr noundef %0, ptr noundef nonnull @devm_i2c_del_adapter, ptr noundef %1) #21
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %9, label %8

8:                                                ; preds = %5
  tail call void @i2c_del_adapter(ptr noundef %1) #21
  br label %9

9:                                                ; preds = %8, %5, %2
  %10 = phi i32 [ %3, %2 ], [ 0, %5 ], [ %6, %8 ]
  ret i32 %10
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @devm_i2c_del_adapter(ptr noundef %0) #0 {
  tail call void @i2c_del_adapter(ptr noundef %0)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @i2c_parse_fw_timings(ptr noundef %0, ptr noundef %1, i1 noundef zeroext %2) #0 {
  %4 = tail call i32 @device_property_read_u32_array(ptr noundef %0, ptr noundef nonnull @.str.18, ptr noundef %1, i32 noundef 1) #21
  %5 = icmp ne i32 %4, 0
  %6 = and i1 %5, %2
  br i1 %6, label %9, label %7

7:                                                ; preds = %3
  %8 = load i32, ptr %1, align 4
  br label %10

9:                                                ; preds = %3
  store i32 100000, ptr %1, align 4
  br label %10

10:                                               ; preds = %9, %7
  %11 = phi i32 [ %8, %7 ], [ 100000, %9 ]
  %12 = getelementptr inbounds %struct.i2c_timings, ptr %1, i32 0, i32 1
  %13 = tail call i32 @device_property_read_u32_array(ptr noundef %0, ptr noundef nonnull @.str.19, ptr noundef %12, i32 noundef 1) #21
  %14 = icmp ne i32 %13, 0
  %15 = and i1 %14, %2
  br i1 %15, label %16, label %21

16:                                               ; preds = %10
  %17 = icmp ult i32 %11, 100001
  %18 = icmp ult i32 %11, 400001
  %19 = select i1 %18, i32 300, i32 120
  %20 = select i1 %17, i32 1000, i32 %19
  store i32 %20, ptr %12, align 4
  br label %21

21:                                               ; preds = %16, %10
  %22 = load i32, ptr %1, align 4
  %23 = getelementptr inbounds %struct.i2c_timings, ptr %1, i32 0, i32 2
  %24 = tail call i32 @device_property_read_u32_array(ptr noundef %0, ptr noundef nonnull @.str.20, ptr noundef %23, i32 noundef 1) #21
  %25 = icmp ne i32 %24, 0
  %26 = and i1 %25, %2
  br i1 %26, label %27, label %30

27:                                               ; preds = %21
  %28 = icmp ult i32 %22, 400001
  %29 = select i1 %28, i32 300, i32 120
  store i32 %29, ptr %23, align 4
  br label %30

30:                                               ; preds = %27, %21
  %31 = getelementptr inbounds %struct.i2c_timings, ptr %1, i32 0, i32 3
  %32 = tail call i32 @device_property_read_u32_array(ptr noundef %0, ptr noundef nonnull @.str.21, ptr noundef %31, i32 noundef 1) #21
  %33 = icmp ne i32 %32, 0
  %34 = and i1 %33, %2
  br i1 %34, label %35, label %36

35:                                               ; preds = %30
  store i32 0, ptr %31, align 4
  br label %36

36:                                               ; preds = %35, %30
  %37 = getelementptr inbounds %struct.i2c_timings, ptr %1, i32 0, i32 4
  %38 = load i32, ptr %23, align 4
  %39 = tail call i32 @device_property_read_u32_array(ptr noundef %0, ptr noundef nonnull @.str.22, ptr noundef %37, i32 noundef 1) #21
  %40 = icmp ne i32 %39, 0
  %41 = and i1 %40, %2
  br i1 %41, label %42, label %43

42:                                               ; preds = %36
  store i32 %38, ptr %37, align 4
  br label %43

43:                                               ; preds = %42, %36
  %44 = getelementptr inbounds %struct.i2c_timings, ptr %1, i32 0, i32 5
  %45 = tail call i32 @device_property_read_u32_array(ptr noundef %0, ptr noundef nonnull @.str.23, ptr noundef %44, i32 noundef 1) #21
  %46 = icmp ne i32 %45, 0
  %47 = and i1 %46, %2
  br i1 %47, label %48, label %49

48:                                               ; preds = %43
  store i32 0, ptr %44, align 4
  br label %49

49:                                               ; preds = %48, %43
  %50 = getelementptr inbounds %struct.i2c_timings, ptr %1, i32 0, i32 6
  %51 = tail call i32 @device_property_read_u32_array(ptr noundef %0, ptr noundef nonnull @.str.24, ptr noundef %50, i32 noundef 1) #21
  %52 = icmp ne i32 %51, 0
  %53 = and i1 %52, %2
  br i1 %53, label %54, label %55

54:                                               ; preds = %49
  store i32 0, ptr %50, align 4
  br label %55

55:                                               ; preds = %54, %49
  %56 = getelementptr inbounds %struct.i2c_timings, ptr %1, i32 0, i32 7
  %57 = tail call i32 @device_property_read_u32_array(ptr noundef %0, ptr noundef nonnull @.str.25, ptr noundef %56, i32 noundef 1) #21
  %58 = icmp ne i32 %57, 0
  %59 = and i1 %58, %2
  br i1 %59, label %60, label %61

60:                                               ; preds = %55
  store i32 0, ptr %56, align 4
  br label %61

61:                                               ; preds = %60, %55
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @i2c_for_each_dev(ptr noundef %0, ptr noundef %1) #0 {
  tail call void @mutex_lock(ptr noundef nonnull @core_lock) #21
  %3 = tail call i32 @bus_for_each_dev(ptr noundef nonnull @i2c_bus_type, ptr noundef null, ptr noundef %0, ptr noundef %1) #21
  tail call void @mutex_unlock(ptr noundef nonnull @core_lock) #21
  ret i32 %3
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bus_for_each_dev(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @i2c_register_driver(ptr noundef %0, ptr noundef %1) #0 {
  %3 = load i1, ptr @is_registered, align 1
  br i1 %3, label %5, label %4, !prof !15

4:                                                ; preds = %2
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.15, i32 noundef 1856, i32 noundef 9, ptr noundef null) #21
  br label %15

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.i2c_driver, ptr %1, i32 0, i32 7
  %7 = getelementptr inbounds %struct.i2c_driver, ptr %1, i32 0, i32 7, i32 2
  store ptr %0, ptr %7, align 4
  %8 = getelementptr inbounds %struct.i2c_driver, ptr %1, i32 0, i32 7, i32 1
  store ptr @i2c_bus_type, ptr %8, align 4
  %9 = getelementptr inbounds %struct.i2c_driver, ptr %1, i32 0, i32 11
  store volatile ptr %9, ptr %9, align 4
  %10 = getelementptr inbounds %struct.i2c_driver, ptr %1, i32 0, i32 11, i32 1
  store ptr %9, ptr %10, align 4
  %11 = tail call i32 @driver_register(ptr noundef %6) #21
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %15

13:                                               ; preds = %5
  tail call void @mutex_lock(ptr noundef nonnull @core_lock) #21
  %14 = tail call i32 @bus_for_each_dev(ptr noundef nonnull @i2c_bus_type, ptr noundef null, ptr noundef %1, ptr noundef nonnull @__process_new_driver) #21
  tail call void @mutex_unlock(ptr noundef nonnull @core_lock) #21
  br label %15

15:                                               ; preds = %13, %5, %4
  %16 = phi i32 [ -11, %4 ], [ 0, %13 ], [ %11, %5 ]
  ret i32 %16
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @driver_register(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @__process_new_driver(ptr noundef %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 4
  %4 = load ptr, ptr %3, align 8
  %5 = icmp eq ptr %4, @i2c_adapter_type
  br i1 %5, label %6, label %8

6:                                                ; preds = %2
  %7 = getelementptr i8, ptr %0, i32 -64
  tail call fastcc void @i2c_do_add_adapter(ptr noundef %1, ptr noundef %7)
  br label %8

8:                                                ; preds = %6, %2
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @i2c_del_driver(ptr noundef %0) #0 {
  tail call void @mutex_lock(ptr noundef nonnull @core_lock) #21
  %2 = tail call i32 @bus_for_each_dev(ptr noundef nonnull @i2c_bus_type, ptr noundef null, ptr noundef %0, ptr noundef nonnull @__process_removed_driver) #21
  tail call void @mutex_unlock(ptr noundef nonnull @core_lock) #21
  %3 = getelementptr inbounds %struct.i2c_driver, ptr %0, i32 0, i32 7
  tail call void @driver_unregister(ptr noundef %3) #21
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @__process_removed_driver(ptr noundef readonly %0, ptr noundef readonly %1) #0 {
  %3 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 4
  %4 = load ptr, ptr %3, align 8
  %5 = icmp eq ptr %4, @i2c_adapter_type
  br i1 %5, label %6, label %36

6:                                                ; preds = %2
  %7 = getelementptr i8, ptr %0, i32 -64
  %8 = getelementptr inbounds %struct.i2c_driver, ptr %1, i32 0, i32 11
  %9 = load ptr, ptr %8, align 4
  %10 = icmp eq ptr %9, %8
  br i1 %10, label %36, label %11

11:                                               ; preds = %34, %6
  %12 = phi ptr [ %13, %34 ], [ %9, %6 ]
  %13 = load ptr, ptr %12, align 8
  %14 = getelementptr i8, ptr %12, i32 -488
  %15 = load ptr, ptr %14, align 8
  %16 = icmp eq ptr %15, %7
  br i1 %16, label %17, label %34

17:                                               ; preds = %11
  %18 = getelementptr i8, ptr %12, i32 -512
  %19 = getelementptr inbounds %struct.list_head, ptr %12, i32 0, i32 1
  %20 = load ptr, ptr %19, align 4
  %21 = getelementptr inbounds %struct.list_head, ptr %13, i32 0, i32 1
  store ptr %20, ptr %21, align 4
  store volatile ptr %13, ptr %20, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %12, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %19, align 4
  %22 = icmp eq ptr %18, null
  %23 = icmp ugt ptr %18, inttoptr (i32 -4096 to ptr)
  %24 = or i1 %22, %23
  br i1 %24, label %34, label %25

25:                                               ; preds = %17
  %26 = getelementptr i8, ptr %12, i32 -480
  %27 = getelementptr i8, ptr %12, i32 -64
  %28 = load ptr, ptr %27, align 8
  %29 = icmp eq ptr %28, null
  br i1 %29, label %33, label %30

30:                                               ; preds = %25
  %31 = getelementptr inbounds %struct.device_node, ptr %28, i32 0, i32 10
  tail call void @_clear_bit(i32 noundef 3, ptr noundef %31) #21
  %32 = load ptr, ptr %27, align 8
  tail call void @of_node_put(ptr noundef %32) #21
  br label %33

33:                                               ; preds = %30, %25
  tail call void @device_remove_software_node(ptr noundef %26) #21
  tail call void @device_unregister(ptr noundef %26) #21
  br label %34

34:                                               ; preds = %33, %17, %11
  %35 = icmp eq ptr %13, %8
  br i1 %35, label %36, label %11

36:                                               ; preds = %34, %6, %2
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @driver_unregister(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @i2c_clients_command(ptr noundef %0, i32 noundef %1, ptr noundef %2) #0 {
  %4 = alloca %struct.i2c_cmd_arg, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #21
  store i32 %1, ptr %4, align 8
  %5 = getelementptr inbounds %struct.i2c_cmd_arg, ptr %4, i32 0, i32 1
  store ptr %2, ptr %5, align 4
  %6 = getelementptr inbounds %struct.i2c_adapter, ptr %0, i32 0, i32 9
  %7 = call i32 @device_for_each_child(ptr noundef %6, ptr noundef nonnull %4, ptr noundef nonnull @i2c_cmd) #21
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #21
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @i2c_cmd(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 4
  %4 = load ptr, ptr %3, align 8
  %5 = icmp ne ptr %4, @i2c_client_type
  %6 = getelementptr i8, ptr %0, i32 -32
  %7 = icmp eq ptr %6, null
  %8 = or i1 %7, %5
  br i1 %8, label %22, label %9

9:                                                ; preds = %2
  %10 = getelementptr i8, ptr %0, i32 56
  %11 = load ptr, ptr %10, align 8
  %12 = icmp eq ptr %11, null
  br i1 %12, label %22, label %13

13:                                               ; preds = %9
  %14 = getelementptr i8, ptr %11, i32 -4
  %15 = load ptr, ptr %14, align 4
  %16 = icmp eq ptr %15, null
  br i1 %16, label %22, label %17

17:                                               ; preds = %13
  %18 = load i32, ptr %1, align 4
  %19 = getelementptr inbounds %struct.i2c_cmd_arg, ptr %1, i32 0, i32 1
  %20 = load ptr, ptr %19, align 4
  %21 = tail call i32 %15(ptr noundef nonnull %6, i32 noundef %18, ptr noundef %20) #21
  br label %22

22:                                               ; preds = %17, %13, %9, %2
  ret i32 0
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal void @i2c_exit() #11 section ".exit.text" {
  %1 = tail call i32 @of_reconfig_notifier_unregister(ptr noundef nonnull @i2c_of_notifier) #21
  %2 = icmp eq i32 %1, 0
  br i1 %2, label %4, label %3, !prof !15

3:                                                ; preds = %0
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.15, i32 noundef 1983, i32 noundef 9, ptr noundef null) #21
  br label %4

4:                                                ; preds = %3, %0
  tail call void @i2c_del_driver(ptr noundef nonnull @dummy_driver)
  %5 = load ptr, ptr @i2c_adapter_compat_class, align 4
  tail call void @class_compat_unregister(ptr noundef %5) #21
  tail call void @bus_unregister(ptr noundef nonnull @i2c_bus_type) #21
  tail call void @synchronize_srcu(ptr noundef nonnull @tracepoint_srcu) #21
  tail call void @synchronize_rcu() #21
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_reconfig_notifier_unregister(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @class_compat_unregister(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @bus_unregister(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @i2c_init() #11 section ".init.text" {
  %1 = tail call i32 @of_alias_get_highest_id(ptr noundef nonnull @.str.8) #21
  tail call void @down_write(ptr noundef nonnull @__i2c_board_lock) #21
  %2 = load i32, ptr @__i2c_first_dynamic_bus_num, align 4
  %3 = icmp slt i32 %1, %2
  br i1 %3, label %6, label %4

4:                                                ; preds = %0
  %5 = add i32 %1, 1
  store i32 %5, ptr @__i2c_first_dynamic_bus_num, align 4
  br label %6

6:                                                ; preds = %4, %0
  tail call void @up_write(ptr noundef nonnull @__i2c_board_lock) #21
  %7 = tail call i32 @bus_register(ptr noundef nonnull @i2c_bus_type) #21
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %23

9:                                                ; preds = %6
  store i1 true, ptr @is_registered, align 1
  %10 = tail call ptr @class_compat_register(ptr noundef nonnull @.str.93) #21
  store ptr %10, ptr @i2c_adapter_compat_class, align 4
  %11 = icmp eq ptr %10, null
  br i1 %11, label %21, label %12

12:                                               ; preds = %9
  %13 = tail call i32 @i2c_register_driver(ptr noundef null, ptr noundef nonnull @dummy_driver)
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %19

15:                                               ; preds = %12
  %16 = tail call i32 @of_reconfig_notifier_register(ptr noundef nonnull @i2c_of_notifier) #21
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %23, label %18, !prof !15

18:                                               ; preds = %15
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.15, i32 noundef 1962, i32 noundef 9, ptr noundef null) #21
  br label %23

19:                                               ; preds = %12
  %20 = load ptr, ptr @i2c_adapter_compat_class, align 4
  tail call void @class_compat_unregister(ptr noundef %20) #21
  br label %21

21:                                               ; preds = %19, %9
  %22 = phi i32 [ %13, %19 ], [ -12, %9 ]
  store i1 false, ptr @is_registered, align 1
  tail call void @bus_unregister(ptr noundef nonnull @i2c_bus_type) #21
  br label %23

23:                                               ; preds = %21, %18, %15, %6
  %24 = phi i32 [ %22, %21 ], [ %7, %6 ], [ 0, %18 ], [ 0, %15 ]
  ret i32 %24
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__i2c_transfer(ptr noundef %0, ptr noundef %1, i32 noundef %2) #0 {
  %4 = icmp eq ptr %1, null
  %5 = icmp slt i32 %2, 1
  %6 = or i1 %4, %5
  br i1 %6, label %7, label %8, !prof !10

7:                                                ; preds = %3
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.15, i32 noundef 2085, i32 noundef 9, ptr noundef null) #21
  br label %337

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.i2c_adapter, ptr %0, i32 0, i32 10
  %10 = load volatile i32, ptr %9, align 4
  %11 = and i32 %10, 1
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %26, label %13

13:                                               ; preds = %8
  %14 = tail call i32 @_test_and_set_bit(i32 noundef 1, ptr noundef %9) #21
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %337

16:                                               ; preds = %13
  %17 = getelementptr inbounds %struct.i2c_adapter, ptr %0, i32 0, i32 9
  %18 = tail call ptr @dev_driver_string(ptr noundef %17) #21
  %19 = getelementptr inbounds %struct.i2c_adapter, ptr %0, i32 0, i32 9, i32 3
  %20 = load ptr, ptr %19, align 4
  %21 = icmp eq ptr %20, null
  br i1 %21, label %22, label %24

22:                                               ; preds = %16
  %23 = load ptr, ptr %17, align 4
  br label %24

24:                                               ; preds = %22, %16
  %25 = phi ptr [ %23, %22 ], [ %20, %16 ]
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.94, i32 noundef 54, i32 noundef 9, ptr noundef nonnull @.str.95, ptr noundef %18, ptr noundef %25) #21
  br label %337

26:                                               ; preds = %8
  %27 = getelementptr inbounds %struct.i2c_adapter, ptr %0, i32 0, i32 17
  %28 = load ptr, ptr %27, align 8
  %29 = icmp eq ptr %28, null
  br i1 %29, label %264, label %30

30:                                               ; preds = %26
  %31 = getelementptr inbounds %struct.i2c_adapter_quirks, ptr %28, i32 0, i32 1
  %32 = load i32, ptr %31, align 8
  %33 = load i64, ptr %28, align 8
  %34 = and i64 %33, 1
  %35 = icmp eq i64 %34, 0
  br i1 %35, label %151, label %36

36:                                               ; preds = %30
  %37 = icmp eq i32 %2, 2
  br i1 %37, label %38, label %151

38:                                               ; preds = %36
  %39 = and i64 %33, 2
  %40 = icmp eq i64 %39, 0
  br i1 %40, label %60, label %41

41:                                               ; preds = %38
  %42 = getelementptr inbounds %struct.i2c_msg, ptr %1, i32 0, i32 1
  %43 = load i16, ptr %42, align 2
  %44 = and i16 %43, 1
  %45 = icmp eq i16 %44, 0
  br i1 %45, label %60, label %46

46:                                               ; preds = %41
  %47 = tail call i32 @___ratelimit(ptr noundef nonnull @i2c_quirk_error._rs, ptr noundef nonnull @__func__.i2c_quirk_error) #21
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %337, label %49

49:                                               ; preds = %46
  %50 = getelementptr inbounds %struct.i2c_adapter, ptr %0, i32 0, i32 9
  %51 = load i16, ptr %1, align 4
  %52 = zext i16 %51 to i32
  %53 = getelementptr inbounds %struct.i2c_msg, ptr %1, i32 0, i32 2
  %54 = load i16, ptr %53, align 4
  %55 = zext i16 %54 to i32
  %56 = load i16, ptr %42, align 2
  %57 = and i16 %56, 1
  %58 = icmp eq i16 %57, 0
  %59 = select i1 %58, ptr @.str.104, ptr @.str.103
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %50, ptr noundef nonnull @.str.102, ptr noundef nonnull @.str.96, i32 noundef %52, i32 noundef %55, ptr noundef nonnull %59) #22
  br label %337

60:                                               ; preds = %41, %38
  %61 = and i64 %33, 4
  %62 = icmp eq i64 %61, 0
  br i1 %62, label %83, label %63

63:                                               ; preds = %60
  %64 = getelementptr %struct.i2c_msg, ptr %1, i32 1, i32 1
  %65 = load i16, ptr %64, align 2
  %66 = and i16 %65, 1
  %67 = icmp eq i16 %66, 0
  br i1 %67, label %68, label %83

68:                                               ; preds = %63
  %69 = tail call i32 @___ratelimit(ptr noundef nonnull @i2c_quirk_error._rs, ptr noundef nonnull @__func__.i2c_quirk_error) #21
  %70 = icmp eq i32 %69, 0
  br i1 %70, label %337, label %71

71:                                               ; preds = %68
  %72 = getelementptr %struct.i2c_msg, ptr %1, i32 1
  %73 = getelementptr inbounds %struct.i2c_adapter, ptr %0, i32 0, i32 9
  %74 = load i16, ptr %72, align 4
  %75 = zext i16 %74 to i32
  %76 = getelementptr %struct.i2c_msg, ptr %1, i32 1, i32 2
  %77 = load i16, ptr %76, align 4
  %78 = zext i16 %77 to i32
  %79 = load i16, ptr %64, align 2
  %80 = and i16 %79, 1
  %81 = icmp eq i16 %80, 0
  %82 = select i1 %81, ptr @.str.104, ptr @.str.103
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %73, ptr noundef nonnull @.str.102, ptr noundef nonnull @.str.97, i32 noundef %75, i32 noundef %78, ptr noundef nonnull %82) #22
  br label %337

83:                                               ; preds = %63, %60
  %84 = and i64 %33, 8
  %85 = icmp eq i64 %84, 0
  br i1 %85, label %106, label %86

86:                                               ; preds = %83
  %87 = load i16, ptr %1, align 4
  %88 = getelementptr %struct.i2c_msg, ptr %1, i32 1
  %89 = load i16, ptr %88, align 4
  %90 = icmp eq i16 %87, %89
  br i1 %90, label %106, label %91

91:                                               ; preds = %86
  %92 = tail call i32 @___ratelimit(ptr noundef nonnull @i2c_quirk_error._rs, ptr noundef nonnull @__func__.i2c_quirk_error) #21
  %93 = icmp eq i32 %92, 0
  br i1 %93, label %337, label %94

94:                                               ; preds = %91
  %95 = getelementptr inbounds %struct.i2c_adapter, ptr %0, i32 0, i32 9
  %96 = load i16, ptr %1, align 4
  %97 = zext i16 %96 to i32
  %98 = getelementptr inbounds %struct.i2c_msg, ptr %1, i32 0, i32 2
  %99 = load i16, ptr %98, align 4
  %100 = zext i16 %99 to i32
  %101 = getelementptr inbounds %struct.i2c_msg, ptr %1, i32 0, i32 1
  %102 = load i16, ptr %101, align 2
  %103 = and i16 %102, 1
  %104 = icmp eq i16 %103, 0
  %105 = select i1 %104, ptr @.str.104, ptr @.str.103
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %95, ptr noundef nonnull @.str.102, ptr noundef nonnull @.str.98, i32 noundef %97, i32 noundef %100, ptr noundef nonnull %105) #22
  br label %337

106:                                              ; preds = %86, %83
  %107 = getelementptr inbounds %struct.i2c_adapter_quirks, ptr %28, i32 0, i32 4
  %108 = load i16, ptr %107, align 8
  %109 = icmp eq i16 %108, 0
  br i1 %109, label %128, label %110

110:                                              ; preds = %106
  %111 = getelementptr inbounds %struct.i2c_msg, ptr %1, i32 0, i32 2
  %112 = load i16, ptr %111, align 4
  %113 = icmp ugt i16 %112, %108
  br i1 %113, label %114, label %128

114:                                              ; preds = %110
  %115 = tail call i32 @___ratelimit(ptr noundef nonnull @i2c_quirk_error._rs, ptr noundef nonnull @__func__.i2c_quirk_error) #21
  %116 = icmp eq i32 %115, 0
  br i1 %116, label %337, label %117

117:                                              ; preds = %114
  %118 = getelementptr inbounds %struct.i2c_adapter, ptr %0, i32 0, i32 9
  %119 = load i16, ptr %1, align 4
  %120 = zext i16 %119 to i32
  %121 = load i16, ptr %111, align 4
  %122 = zext i16 %121 to i32
  %123 = getelementptr inbounds %struct.i2c_msg, ptr %1, i32 0, i32 1
  %124 = load i16, ptr %123, align 2
  %125 = and i16 %124, 1
  %126 = icmp eq i16 %125, 0
  %127 = select i1 %126, ptr @.str.104, ptr @.str.103
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %118, ptr noundef nonnull @.str.102, ptr noundef nonnull @.str.99, i32 noundef %120, i32 noundef %122, ptr noundef nonnull %127) #22
  br label %337

128:                                              ; preds = %110, %106
  %129 = getelementptr inbounds %struct.i2c_adapter_quirks, ptr %28, i32 0, i32 5
  %130 = load i16, ptr %129, align 2
  %131 = icmp eq i16 %130, 0
  br i1 %131, label %151, label %132

132:                                              ; preds = %128
  %133 = getelementptr %struct.i2c_msg, ptr %1, i32 1, i32 2
  %134 = load i16, ptr %133, align 4
  %135 = icmp ugt i16 %134, %130
  br i1 %135, label %136, label %151

136:                                              ; preds = %132
  %137 = tail call i32 @___ratelimit(ptr noundef nonnull @i2c_quirk_error._rs, ptr noundef nonnull @__func__.i2c_quirk_error) #21
  %138 = icmp eq i32 %137, 0
  br i1 %138, label %337, label %139

139:                                              ; preds = %136
  %140 = getelementptr %struct.i2c_msg, ptr %1, i32 1
  %141 = getelementptr inbounds %struct.i2c_adapter, ptr %0, i32 0, i32 9
  %142 = load i16, ptr %140, align 4
  %143 = zext i16 %142 to i32
  %144 = load i16, ptr %133, align 4
  %145 = zext i16 %144 to i32
  %146 = getelementptr %struct.i2c_msg, ptr %1, i32 1, i32 1
  %147 = load i16, ptr %146, align 2
  %148 = and i16 %147, 1
  %149 = icmp eq i16 %148, 0
  %150 = select i1 %149, ptr @.str.104, ptr @.str.103
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %141, ptr noundef nonnull @.str.102, ptr noundef nonnull @.str.99, i32 noundef %143, i32 noundef %145, ptr noundef nonnull %150) #22
  br label %337

151:                                              ; preds = %132, %128, %36, %30
  %152 = phi i32 [ 2, %36 ], [ %32, %30 ], [ 2, %132 ], [ 2, %128 ]
  %153 = phi i1 [ true, %36 ], [ true, %30 ], [ false, %132 ], [ false, %128 ]
  %154 = icmp ne i32 %152, 0
  %155 = icmp slt i32 %152, %2
  %156 = and i1 %154, %155
  br i1 %156, label %164, label %157

157:                                              ; preds = %151
  %158 = getelementptr inbounds %struct.i2c_adapter_quirks, ptr %28, i32 0, i32 3
  %159 = and i64 %33, 32
  %160 = icmp ne i64 %159, 0
  %161 = getelementptr inbounds %struct.i2c_adapter_quirks, ptr %28, i32 0, i32 2
  %162 = and i64 %33, 64
  %163 = icmp ne i64 %162, 0
  br label %179

164:                                              ; preds = %151
  %165 = tail call i32 @___ratelimit(ptr noundef nonnull @i2c_quirk_error._rs, ptr noundef nonnull @__func__.i2c_quirk_error) #21
  %166 = icmp eq i32 %165, 0
  br i1 %166, label %337, label %167

167:                                              ; preds = %164
  %168 = getelementptr inbounds %struct.i2c_adapter, ptr %0, i32 0, i32 9
  %169 = load i16, ptr %1, align 4
  %170 = zext i16 %169 to i32
  %171 = getelementptr inbounds %struct.i2c_msg, ptr %1, i32 0, i32 2
  %172 = load i16, ptr %171, align 4
  %173 = zext i16 %172 to i32
  %174 = getelementptr inbounds %struct.i2c_msg, ptr %1, i32 0, i32 1
  %175 = load i16, ptr %174, align 2
  %176 = and i16 %175, 1
  %177 = icmp eq i16 %176, 0
  %178 = select i1 %177, ptr @.str.104, ptr @.str.103
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %168, ptr noundef nonnull @.str.102, ptr noundef nonnull @.str.100, i32 noundef %170, i32 noundef %173, ptr noundef nonnull %178) #22
  br label %337

179:                                              ; preds = %261, %157
  %180 = phi i32 [ 0, %157 ], [ %262, %261 ]
  %181 = getelementptr %struct.i2c_msg, ptr %1, i32 %180, i32 2
  %182 = load i16, ptr %181, align 4
  %183 = getelementptr %struct.i2c_msg, ptr %1, i32 %180, i32 1
  %184 = load i16, ptr %183, align 2
  %185 = and i16 %184, 1
  %186 = icmp eq i16 %185, 0
  br i1 %186, label %224, label %187

187:                                              ; preds = %179
  br i1 %153, label %188, label %207

188:                                              ; preds = %187
  %189 = load i16, ptr %158, align 2
  %190 = icmp ne i16 %189, 0
  %191 = icmp ugt i16 %182, %189
  %192 = select i1 %190, i1 %191, i1 false
  br i1 %192, label %193, label %207

193:                                              ; preds = %188
  %194 = tail call i32 @___ratelimit(ptr noundef nonnull @i2c_quirk_error._rs, ptr noundef nonnull @__func__.i2c_quirk_error) #21
  %195 = icmp eq i32 %194, 0
  br i1 %195, label %337, label %196

196:                                              ; preds = %193
  %197 = getelementptr %struct.i2c_msg, ptr %1, i32 %180
  %198 = getelementptr inbounds %struct.i2c_adapter, ptr %0, i32 0, i32 9
  %199 = load i16, ptr %197, align 4
  %200 = zext i16 %199 to i32
  %201 = load i16, ptr %181, align 4
  %202 = zext i16 %201 to i32
  %203 = load i16, ptr %183, align 2
  %204 = and i16 %203, 1
  %205 = icmp eq i16 %204, 0
  %206 = select i1 %205, ptr @.str.104, ptr @.str.103
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %198, ptr noundef nonnull @.str.102, ptr noundef nonnull @.str.99, i32 noundef %200, i32 noundef %202, ptr noundef nonnull %206) #22
  br label %337

207:                                              ; preds = %188, %187
  %208 = icmp eq i16 %182, 0
  %209 = select i1 %160, i1 %208, i1 false
  br i1 %209, label %210, label %261

210:                                              ; preds = %207
  %211 = tail call i32 @___ratelimit(ptr noundef nonnull @i2c_quirk_error._rs, ptr noundef nonnull @__func__.i2c_quirk_error) #21
  %212 = icmp eq i32 %211, 0
  br i1 %212, label %337, label %213

213:                                              ; preds = %210
  %214 = getelementptr %struct.i2c_msg, ptr %1, i32 %180
  %215 = getelementptr inbounds %struct.i2c_adapter, ptr %0, i32 0, i32 9
  %216 = load i16, ptr %214, align 4
  %217 = zext i16 %216 to i32
  %218 = load i16, ptr %181, align 4
  %219 = zext i16 %218 to i32
  %220 = load i16, ptr %183, align 2
  %221 = and i16 %220, 1
  %222 = icmp eq i16 %221, 0
  %223 = select i1 %222, ptr @.str.104, ptr @.str.103
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %215, ptr noundef nonnull @.str.102, ptr noundef nonnull @.str.101, i32 noundef %217, i32 noundef %219, ptr noundef nonnull %223) #22
  br label %337

224:                                              ; preds = %179
  br i1 %153, label %225, label %244

225:                                              ; preds = %224
  %226 = load i16, ptr %161, align 4
  %227 = icmp ne i16 %226, 0
  %228 = icmp ugt i16 %182, %226
  %229 = select i1 %227, i1 %228, i1 false
  br i1 %229, label %230, label %244

230:                                              ; preds = %225
  %231 = tail call i32 @___ratelimit(ptr noundef nonnull @i2c_quirk_error._rs, ptr noundef nonnull @__func__.i2c_quirk_error) #21
  %232 = icmp eq i32 %231, 0
  br i1 %232, label %337, label %233

233:                                              ; preds = %230
  %234 = getelementptr %struct.i2c_msg, ptr %1, i32 %180
  %235 = getelementptr inbounds %struct.i2c_adapter, ptr %0, i32 0, i32 9
  %236 = load i16, ptr %234, align 4
  %237 = zext i16 %236 to i32
  %238 = load i16, ptr %181, align 4
  %239 = zext i16 %238 to i32
  %240 = load i16, ptr %183, align 2
  %241 = and i16 %240, 1
  %242 = icmp eq i16 %241, 0
  %243 = select i1 %242, ptr @.str.104, ptr @.str.103
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %235, ptr noundef nonnull @.str.102, ptr noundef nonnull @.str.99, i32 noundef %237, i32 noundef %239, ptr noundef nonnull %243) #22
  br label %337

244:                                              ; preds = %225, %224
  %245 = icmp eq i16 %182, 0
  %246 = select i1 %163, i1 %245, i1 false
  br i1 %246, label %247, label %261

247:                                              ; preds = %244
  %248 = tail call i32 @___ratelimit(ptr noundef nonnull @i2c_quirk_error._rs, ptr noundef nonnull @__func__.i2c_quirk_error) #21
  %249 = icmp eq i32 %248, 0
  br i1 %249, label %337, label %250

250:                                              ; preds = %247
  %251 = getelementptr %struct.i2c_msg, ptr %1, i32 %180
  %252 = getelementptr inbounds %struct.i2c_adapter, ptr %0, i32 0, i32 9
  %253 = load i16, ptr %251, align 4
  %254 = zext i16 %253 to i32
  %255 = load i16, ptr %181, align 4
  %256 = zext i16 %255 to i32
  %257 = load i16, ptr %183, align 2
  %258 = and i16 %257, 1
  %259 = icmp eq i16 %258, 0
  %260 = select i1 %259, ptr @.str.104, ptr @.str.103
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %252, ptr noundef nonnull @.str.102, ptr noundef nonnull @.str.101, i32 noundef %254, i32 noundef %256, ptr noundef nonnull %260) #22
  br label %337

261:                                              ; preds = %244, %207
  %262 = add nuw nsw i32 %180, 1
  %263 = icmp eq i32 %262, %2
  br i1 %263, label %264, label %179

264:                                              ; preds = %261, %26
  %265 = load volatile i32, ptr @i2c_trace_msg_key, align 4
  %266 = icmp sgt i32 %265, 0
  br i1 %266, label %267, label %281, !prof !10

267:                                              ; preds = %264
  %268 = icmp sgt i32 %2, 0
  br i1 %268, label %269, label %281

269:                                              ; preds = %278, %267
  %270 = phi i32 [ %279, %278 ], [ 0, %267 ]
  %271 = getelementptr %struct.i2c_msg, ptr %1, i32 %270
  %272 = getelementptr %struct.i2c_msg, ptr %1, i32 %270, i32 1
  %273 = load i16, ptr %272, align 2
  %274 = and i16 %273, 1
  %275 = icmp eq i16 %274, 0
  br i1 %275, label %277, label %276

276:                                              ; preds = %269
  tail call fastcc void @trace_i2c_read(ptr noundef %0, ptr noundef %271, i32 noundef %270)
  br label %278

277:                                              ; preds = %269
  tail call fastcc void @trace_i2c_write(ptr noundef %0, ptr noundef %271, i32 noundef %270)
  br label %278

278:                                              ; preds = %277, %276
  %279 = add nuw nsw i32 %270, 1
  %280 = icmp eq i32 %279, %2
  br i1 %280, label %281, label %269

281:                                              ; preds = %278, %267, %264
  %282 = load volatile i32, ptr @jiffies, align 64
  %283 = getelementptr inbounds %struct.i2c_adapter, ptr %0, i32 0, i32 7
  %284 = getelementptr inbounds %struct.i2c_adapter, ptr %0, i32 0, i32 8
  %285 = load i32, ptr %284, align 8
  %286 = icmp slt i32 %285, 0
  br i1 %286, label %319, label %287

287:                                              ; preds = %281
  %288 = getelementptr inbounds %struct.i2c_adapter, ptr %0, i32 0, i32 2
  br label %293

289:                                              ; preds = %313
  %290 = add i32 %294, 1
  %291 = load i32, ptr %284, align 8
  %292 = icmp sgt i32 %290, %291
  br i1 %292, label %319, label %293

293:                                              ; preds = %289, %287
  %294 = phi i32 [ 0, %287 ], [ %290, %289 ]
  %295 = load i32, ptr @system_state, align 4
  %296 = icmp ugt i32 %295, 3
  br i1 %296, label %297, label %306

297:                                              ; preds = %293
  %298 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #21, !srcloc !17
  %299 = and i32 %298, 128
  %300 = icmp eq i32 %299, 0
  br i1 %300, label %306, label %301

301:                                              ; preds = %297
  %302 = load ptr, ptr %288, align 8
  %303 = getelementptr inbounds %struct.i2c_algorithm, ptr %302, i32 0, i32 1
  %304 = load ptr, ptr %303, align 4
  %305 = icmp eq ptr %304, null
  br i1 %305, label %306, label %309

306:                                              ; preds = %301, %297, %293
  %307 = load ptr, ptr %288, align 8
  %308 = load ptr, ptr %307, align 4
  br label %309

309:                                              ; preds = %306, %301
  %310 = phi ptr [ %308, %306 ], [ %304, %301 ]
  %311 = tail call i32 %310(ptr noundef %0, ptr noundef %1, i32 noundef %2) #21
  %312 = icmp eq i32 %311, -11
  br i1 %312, label %313, label %319

313:                                              ; preds = %309
  %314 = load i32, ptr %283, align 4
  %315 = add i32 %314, %282
  %316 = load volatile i32, ptr @jiffies, align 64
  %317 = sub i32 %315, %316
  %318 = icmp slt i32 %317, 0
  br i1 %318, label %319, label %289

319:                                              ; preds = %313, %309, %289, %281
  %320 = phi i32 [ 0, %281 ], [ -11, %313 ], [ %311, %309 ], [ -11, %289 ]
  %321 = load volatile i32, ptr @i2c_trace_msg_key, align 4
  %322 = icmp sgt i32 %321, 0
  br i1 %322, label %323, label %337, !prof !10

323:                                              ; preds = %319
  %324 = icmp sgt i32 %320, 0
  br i1 %324, label %325, label %336

325:                                              ; preds = %333, %323
  %326 = phi i32 [ %334, %333 ], [ 0, %323 ]
  %327 = getelementptr %struct.i2c_msg, ptr %1, i32 %326, i32 1
  %328 = load i16, ptr %327, align 2
  %329 = and i16 %328, 1
  %330 = icmp eq i16 %329, 0
  br i1 %330, label %333, label %331

331:                                              ; preds = %325
  %332 = getelementptr %struct.i2c_msg, ptr %1, i32 %326
  tail call fastcc void @trace_i2c_reply(ptr noundef %0, ptr noundef %332, i32 noundef %326)
  br label %333

333:                                              ; preds = %331, %325
  %334 = add nuw nsw i32 %326, 1
  %335 = icmp eq i32 %334, %320
  br i1 %335, label %336, label %325

336:                                              ; preds = %333, %323
  tail call fastcc void @trace_i2c_result(ptr noundef %0, i32 noundef %2, i32 noundef %320)
  br label %337

337:                                              ; preds = %336, %319, %250, %247, %233, %230, %213, %210, %196, %193, %167, %164, %139, %136, %117, %114, %94, %91, %71, %68, %49, %46, %24, %13, %7
  %338 = phi i32 [ -22, %7 ], [ %320, %336 ], [ %320, %319 ], [ -108, %24 ], [ -108, %13 ], [ -95, %46 ], [ -95, %49 ], [ -95, %68 ], [ -95, %71 ], [ -95, %91 ], [ -95, %94 ], [ -95, %114 ], [ -95, %117 ], [ -95, %136 ], [ -95, %139 ], [ -95, %164 ], [ -95, %167 ], [ -95, %193 ], [ -95, %196 ], [ -95, %210 ], [ -95, %213 ], [ -95, %230 ], [ -95, %233 ], [ -95, %247 ], [ -95, %250 ]
  ret i32 %338
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @trace_i2c_read(ptr noundef %0, ptr noundef %1, i32 noundef %2) unnamed_addr #12 {
  %4 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_i2c_read, i32 0, i32 1), align 4
  %5 = icmp sgt i32 %4, 0
  br i1 %5, label %6, label %29

6:                                                ; preds = %3
  %7 = tail call ptr @llvm.thread.pointer() #21
  %8 = getelementptr inbounds %struct.thread_info, ptr %7, i32 0, i32 2
  %9 = load i32, ptr %8, align 8
  %10 = lshr i32 %9, 5
  %11 = getelementptr i32, ptr @__cpu_online_mask, i32 %10
  %12 = load volatile i32, ptr %11, align 4
  %13 = and i32 %9, 31
  %14 = shl nuw i32 1, %13
  %15 = and i32 %14, %12
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %29, label %17

17:                                               ; preds = %6
  tail call void asm sideeffect "", "~{memory}"() #21, !srcloc !18
  %18 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_i2c_read, i32 0, i32 7), align 4
  %19 = icmp eq ptr %18, null
  br i1 %19, label %28, label %20

20:                                               ; preds = %20, %17
  %21 = phi ptr [ %25, %20 ], [ %18, %17 ]
  %22 = load volatile ptr, ptr %21, align 4
  %23 = getelementptr inbounds %struct.tracepoint_func, ptr %21, i32 0, i32 1
  %24 = load ptr, ptr %23, align 4
  tail call void %22(ptr noundef %24, ptr noundef %0, ptr noundef %1, i32 noundef %2) #21
  %25 = getelementptr %struct.tracepoint_func, ptr %21, i32 1
  %26 = load ptr, ptr %25, align 4
  %27 = icmp eq ptr %26, null
  br i1 %27, label %28, label %20

28:                                               ; preds = %20, %17
  tail call void asm sideeffect "", "~{memory}"() #21, !srcloc !19
  br label %29

29:                                               ; preds = %28, %6, %3
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @trace_i2c_write(ptr noundef %0, ptr noundef %1, i32 noundef %2) unnamed_addr #12 {
  %4 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_i2c_write, i32 0, i32 1), align 4
  %5 = icmp sgt i32 %4, 0
  br i1 %5, label %6, label %29

6:                                                ; preds = %3
  %7 = tail call ptr @llvm.thread.pointer() #21
  %8 = getelementptr inbounds %struct.thread_info, ptr %7, i32 0, i32 2
  %9 = load i32, ptr %8, align 8
  %10 = lshr i32 %9, 5
  %11 = getelementptr i32, ptr @__cpu_online_mask, i32 %10
  %12 = load volatile i32, ptr %11, align 4
  %13 = and i32 %9, 31
  %14 = shl nuw i32 1, %13
  %15 = and i32 %14, %12
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %29, label %17

17:                                               ; preds = %6
  tail call void asm sideeffect "", "~{memory}"() #21, !srcloc !20
  %18 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_i2c_write, i32 0, i32 7), align 4
  %19 = icmp eq ptr %18, null
  br i1 %19, label %28, label %20

20:                                               ; preds = %20, %17
  %21 = phi ptr [ %25, %20 ], [ %18, %17 ]
  %22 = load volatile ptr, ptr %21, align 4
  %23 = getelementptr inbounds %struct.tracepoint_func, ptr %21, i32 0, i32 1
  %24 = load ptr, ptr %23, align 4
  tail call void %22(ptr noundef %24, ptr noundef %0, ptr noundef %1, i32 noundef %2) #21
  %25 = getelementptr %struct.tracepoint_func, ptr %21, i32 1
  %26 = load ptr, ptr %25, align 4
  %27 = icmp eq ptr %26, null
  br i1 %27, label %28, label %20

28:                                               ; preds = %20, %17
  tail call void asm sideeffect "", "~{memory}"() #21, !srcloc !21
  br label %29

29:                                               ; preds = %28, %6, %3
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @trace_i2c_reply(ptr noundef %0, ptr noundef %1, i32 noundef %2) unnamed_addr #12 {
  %4 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_i2c_reply, i32 0, i32 1), align 4
  %5 = icmp sgt i32 %4, 0
  br i1 %5, label %6, label %29

6:                                                ; preds = %3
  %7 = tail call ptr @llvm.thread.pointer() #21
  %8 = getelementptr inbounds %struct.thread_info, ptr %7, i32 0, i32 2
  %9 = load i32, ptr %8, align 8
  %10 = lshr i32 %9, 5
  %11 = getelementptr i32, ptr @__cpu_online_mask, i32 %10
  %12 = load volatile i32, ptr %11, align 4
  %13 = and i32 %9, 31
  %14 = shl nuw i32 1, %13
  %15 = and i32 %14, %12
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %29, label %17

17:                                               ; preds = %6
  tail call void asm sideeffect "", "~{memory}"() #21, !srcloc !22
  %18 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_i2c_reply, i32 0, i32 7), align 4
  %19 = icmp eq ptr %18, null
  br i1 %19, label %28, label %20

20:                                               ; preds = %20, %17
  %21 = phi ptr [ %25, %20 ], [ %18, %17 ]
  %22 = load volatile ptr, ptr %21, align 4
  %23 = getelementptr inbounds %struct.tracepoint_func, ptr %21, i32 0, i32 1
  %24 = load ptr, ptr %23, align 4
  tail call void %22(ptr noundef %24, ptr noundef %0, ptr noundef %1, i32 noundef %2) #21
  %25 = getelementptr %struct.tracepoint_func, ptr %21, i32 1
  %26 = load ptr, ptr %25, align 4
  %27 = icmp eq ptr %26, null
  br i1 %27, label %28, label %20

28:                                               ; preds = %20, %17
  tail call void asm sideeffect "", "~{memory}"() #21, !srcloc !23
  br label %29

29:                                               ; preds = %28, %6, %3
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @trace_i2c_result(ptr noundef %0, i32 noundef %1, i32 noundef %2) unnamed_addr #12 {
  %4 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_i2c_result, i32 0, i32 1), align 4
  %5 = icmp sgt i32 %4, 0
  br i1 %5, label %6, label %29

6:                                                ; preds = %3
  %7 = tail call ptr @llvm.thread.pointer() #21
  %8 = getelementptr inbounds %struct.thread_info, ptr %7, i32 0, i32 2
  %9 = load i32, ptr %8, align 8
  %10 = lshr i32 %9, 5
  %11 = getelementptr i32, ptr @__cpu_online_mask, i32 %10
  %12 = load volatile i32, ptr %11, align 4
  %13 = and i32 %9, 31
  %14 = shl nuw i32 1, %13
  %15 = and i32 %14, %12
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %29, label %17

17:                                               ; preds = %6
  tail call void asm sideeffect "", "~{memory}"() #21, !srcloc !24
  %18 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_i2c_result, i32 0, i32 7), align 4
  %19 = icmp eq ptr %18, null
  br i1 %19, label %28, label %20

20:                                               ; preds = %20, %17
  %21 = phi ptr [ %25, %20 ], [ %18, %17 ]
  %22 = load volatile ptr, ptr %21, align 4
  %23 = getelementptr inbounds %struct.tracepoint_func, ptr %21, i32 0, i32 1
  %24 = load ptr, ptr %23, align 4
  tail call void %22(ptr noundef %24, ptr noundef %0, i32 noundef %1, i32 noundef %2) #21
  %25 = getelementptr %struct.tracepoint_func, ptr %21, i32 1
  %26 = load ptr, ptr %25, align 4
  %27 = icmp eq ptr %26, null
  br i1 %27, label %28, label %20

28:                                               ; preds = %20, %17
  tail call void asm sideeffect "", "~{memory}"() #21, !srcloc !25
  br label %29

29:                                               ; preds = %28, %6, %3
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @i2c_transfer(ptr noundef %0, ptr noundef %1, i32 noundef %2) #0 {
  %4 = getelementptr inbounds %struct.i2c_adapter, ptr %0, i32 0, i32 2
  %5 = load ptr, ptr %4, align 8
  %6 = load ptr, ptr %5, align 4
  %7 = icmp eq ptr %6, null
  br i1 %7, label %50, label %8

8:                                                ; preds = %3
  %9 = load i32, ptr @system_state, align 4
  %10 = icmp ugt i32 %9, 3
  br i1 %10, label %11, label %40

11:                                               ; preds = %8
  %12 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #21, !srcloc !17
  %13 = and i32 %12, 128
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %40, label %15

15:                                               ; preds = %11
  %16 = load ptr, ptr %4, align 8
  %17 = getelementptr inbounds %struct.i2c_algorithm, ptr %16, i32 0, i32 1
  %18 = load ptr, ptr %17, align 4
  %19 = icmp eq ptr %18, null
  br i1 %19, label %20, label %33

20:                                               ; preds = %15
  %21 = getelementptr inbounds %struct.i2c_algorithm, ptr %16, i32 0, i32 3
  %22 = load ptr, ptr %21, align 4
  %23 = icmp eq ptr %22, null
  br i1 %23, label %24, label %33, !prof !10

24:                                               ; preds = %20
  %25 = getelementptr inbounds %struct.i2c_adapter, ptr %0, i32 0, i32 9, i32 3
  %26 = load ptr, ptr %25, align 4
  %27 = icmp eq ptr %26, null
  br i1 %27, label %28, label %31

28:                                               ; preds = %24
  %29 = getelementptr inbounds %struct.i2c_adapter, ptr %0, i32 0, i32 9
  %30 = load ptr, ptr %29, align 4
  br label %31

31:                                               ; preds = %28, %24
  %32 = phi ptr [ %30, %28 ], [ %26, %24 ]
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.94, i32 noundef 41, i32 noundef 9, ptr noundef nonnull @.str.106, ptr noundef %32) #21
  br label %33

33:                                               ; preds = %31, %20, %15
  %34 = getelementptr inbounds %struct.i2c_adapter, ptr %0, i32 0, i32 4
  %35 = load ptr, ptr %34, align 8
  %36 = getelementptr inbounds %struct.i2c_lock_operations, ptr %35, i32 0, i32 1
  %37 = load ptr, ptr %36, align 4
  %38 = tail call i32 %37(ptr noundef %0, i32 noundef 2) #21
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %50, label %44

40:                                               ; preds = %11, %8
  %41 = getelementptr inbounds %struct.i2c_adapter, ptr %0, i32 0, i32 4
  %42 = load ptr, ptr %41, align 8
  %43 = load ptr, ptr %42, align 4
  tail call void %43(ptr noundef %0, i32 noundef 2) #21
  br label %44

44:                                               ; preds = %40, %33
  %45 = tail call i32 @__i2c_transfer(ptr noundef %0, ptr noundef %1, i32 noundef %2)
  %46 = getelementptr inbounds %struct.i2c_adapter, ptr %0, i32 0, i32 4
  %47 = load ptr, ptr %46, align 8
  %48 = getelementptr inbounds %struct.i2c_lock_operations, ptr %47, i32 0, i32 2
  %49 = load ptr, ptr %48, align 4
  tail call void %49(ptr noundef %0, i32 noundef 2) #21
  br label %50

50:                                               ; preds = %44, %33, %3
  %51 = phi i32 [ %45, %44 ], [ -95, %3 ], [ -11, %33 ]
  ret i32 %51
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @i2c_transfer_buffer_flags(ptr nocapture noundef readonly %0, ptr noundef %1, i32 noundef %2, i16 noundef zeroext %3) #0 {
  %5 = alloca %struct.i2c_msg, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %5) #21
  %6 = getelementptr inbounds i8, ptr %5, i32 4
  store i32 0, ptr %6, align 4, !annotation !14
  %7 = getelementptr inbounds %struct.i2c_client, ptr %0, i32 0, i32 1
  %8 = load i16, ptr %7, align 2
  store i16 %8, ptr %5, align 4
  %9 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 0, i32 1
  %10 = load i16, ptr %0, align 8
  %11 = and i16 %10, 16
  %12 = or i16 %11, %3
  store i16 %12, ptr %9, align 2
  %13 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 0, i32 2
  %14 = trunc i32 %2 to i16
  store i16 %14, ptr %13, align 4
  %15 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 0, i32 3
  store ptr %1, ptr %15, align 4
  %16 = getelementptr inbounds %struct.i2c_client, ptr %0, i32 0, i32 3
  %17 = load ptr, ptr %16, align 8
  %18 = call i32 @i2c_transfer(ptr noundef %17, ptr noundef nonnull %5, i32 noundef 1)
  %19 = icmp eq i32 %18, 1
  %20 = select i1 %19, i32 %2, i32 %18
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %5) #21
  ret i32 %20
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @i2c_get_device_id(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #0 {
  %3 = alloca %union.i2c_smbus_data, align 2
  %4 = getelementptr inbounds %struct.i2c_client, ptr %0, i32 0, i32 3
  %5 = load ptr, ptr %4, align 8
  call void @llvm.lifetime.start.p0(i64 34, ptr nonnull %3) #21
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 2 dereferenceable(34) %3, i8 0, i32 34, i1 false), !annotation !14
  %6 = getelementptr inbounds %struct.i2c_adapter, ptr %5, i32 0, i32 2
  %7 = load ptr, ptr %6, align 8
  %8 = getelementptr inbounds %struct.i2c_algorithm, ptr %7, i32 0, i32 4
  %9 = load ptr, ptr %8, align 4
  %10 = tail call i32 %9(ptr noundef %5) #21
  %11 = and i32 %10, 67108864
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %41, label %13

13:                                               ; preds = %2
  store i8 3, ptr %3, align 2
  %14 = getelementptr inbounds %struct.i2c_client, ptr %0, i32 0, i32 1
  %15 = load i16, ptr %14, align 2
  %16 = trunc i16 %15 to i8
  %17 = shl i8 %16, 1
  %18 = call i32 @i2c_smbus_xfer(ptr noundef %5, i16 noundef zeroext 124, i16 noundef zeroext 0, i8 noundef zeroext 1, i8 noundef zeroext %17, i32 noundef 8, ptr noundef nonnull %3) #21
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %41

20:                                               ; preds = %13
  %21 = getelementptr inbounds [34 x i8], ptr %3, i32 0, i32 1
  %22 = load i8, ptr %21, align 1
  %23 = zext i8 %22 to i16
  %24 = shl nuw nsw i16 %23, 4
  %25 = getelementptr inbounds [34 x i8], ptr %3, i32 0, i32 2
  %26 = load i8, ptr %25, align 2
  %27 = lshr i8 %26, 4
  %28 = zext i8 %27 to i16
  %29 = or i16 %24, %28
  store i16 %29, ptr %1, align 2
  %30 = and i8 %26, 15
  %31 = zext i8 %30 to i16
  %32 = shl nuw nsw i16 %31, 5
  %33 = getelementptr inbounds [34 x i8], ptr %3, i32 0, i32 3
  %34 = load i8, ptr %33, align 1
  %35 = lshr i8 %34, 3
  %36 = zext i8 %35 to i16
  %37 = or i16 %32, %36
  %38 = getelementptr inbounds %struct.i2c_device_identity, ptr %1, i32 0, i32 1
  store i16 %37, ptr %38, align 2
  %39 = and i8 %34, 7
  %40 = getelementptr inbounds %struct.i2c_device_identity, ptr %1, i32 0, i32 2
  store i8 %39, ptr %40, align 2
  br label %41

41:                                               ; preds = %20, %13, %2
  %42 = phi i32 [ 0, %20 ], [ -95, %2 ], [ %18, %13 ]
  call void @llvm.lifetime.end.p0(i64 34, ptr nonnull %3) #21
  ret i32 %42
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_smbus_xfer(ptr noundef, i16 noundef zeroext, i16 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @i2c_probe_func_quick_read(ptr noundef %0, i16 noundef zeroext %1) #0 {
  %3 = tail call i32 @i2c_smbus_xfer(ptr noundef %0, i16 noundef zeroext %1, i16 noundef zeroext 0, i8 noundef zeroext 1, i8 noundef zeroext 0, i32 noundef 0, ptr noundef null) #21
  %4 = xor i32 %3, -1
  %5 = lshr i32 %4, 31
  ret i32 %5
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @i2c_new_scanned_device(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2, ptr noundef readonly %3) #0 {
  %5 = alloca i32, align 4
  %6 = icmp eq ptr %3, null
  %7 = select i1 %6, ptr @i2c_default_probe, ptr %3
  %8 = load i16, ptr %2, align 2
  %9 = icmp eq i16 %8, -2
  br i1 %9, label %53, label %10

10:                                               ; preds = %4
  %11 = getelementptr inbounds %struct.i2c_adapter, ptr %0, i32 0, i32 9, i32 1
  %12 = getelementptr inbounds %struct.i2c_adapter, ptr %0, i32 0, i32 9
  br label %13

13:                                               ; preds = %42, %10
  %14 = phi i16 [ %8, %10 ], [ %45, %42 ]
  %15 = phi ptr [ %2, %10 ], [ %44, %42 ]
  %16 = phi i32 [ 0, %10 ], [ %43, %42 ]
  %17 = add i16 %14, -120
  %18 = icmp ult i16 %17, -112
  %19 = zext i16 %14 to i32
  br i1 %18, label %20, label %21

20:                                               ; preds = %13
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %12, ptr noundef nonnull @.str.26, i32 noundef %19) #22
  br label %42

21:                                               ; preds = %13
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5)
  store i32 %19, ptr %5, align 4
  %22 = load ptr, ptr %11, align 4
  %23 = icmp eq ptr %22, null
  br i1 %23, label %35, label %24

24:                                               ; preds = %21
  %25 = getelementptr inbounds %struct.device, ptr %22, i32 0, i32 4
  %26 = load ptr, ptr %25, align 8
  %27 = icmp ne ptr %26, @i2c_adapter_type
  %28 = getelementptr i8, ptr %22, i32 -64
  %29 = icmp eq ptr %28, null
  %30 = select i1 %27, i1 true, i1 %29
  br i1 %30, label %35, label %31

31:                                               ; preds = %24
  %32 = call fastcc i32 @i2c_check_mux_parents(ptr noundef nonnull %28, i32 noundef %19) #21
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %35, label %34

34:                                               ; preds = %31
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5)
  br label %42

35:                                               ; preds = %31, %24, %21
  %36 = call i32 @device_for_each_child(ptr noundef %12, ptr noundef nonnull %5, ptr noundef nonnull @i2c_check_mux_children) #21
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5)
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %38, label %42

38:                                               ; preds = %35
  %39 = load i16, ptr %15, align 2
  %40 = call i32 %7(ptr noundef %0, i16 noundef zeroext %39) #21
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %42, label %47

42:                                               ; preds = %38, %35, %34, %20
  %43 = add i32 %16, 1
  %44 = getelementptr i16, ptr %2, i32 %43
  %45 = load i16, ptr %44, align 2
  %46 = icmp eq i16 %45, -2
  br i1 %46, label %53, label %13

47:                                               ; preds = %38
  %48 = load i16, ptr %15, align 2
  %49 = icmp eq i16 %48, -2
  br i1 %49, label %53, label %50

50:                                               ; preds = %47
  %51 = getelementptr inbounds %struct.i2c_board_info, ptr %1, i32 0, i32 2
  store i16 %48, ptr %51, align 2
  %52 = call ptr @i2c_new_client_device(ptr noundef %0, ptr noundef %1)
  br label %53

53:                                               ; preds = %50, %47, %42, %4
  %54 = phi ptr [ %52, %50 ], [ inttoptr (i32 -19 to ptr), %47 ], [ inttoptr (i32 -19 to ptr), %4 ], [ inttoptr (i32 -19 to ptr), %42 ]
  ret ptr %54
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @i2c_default_probe(ptr noundef %0, i16 noundef zeroext %1) unnamed_addr #0 {
  %3 = alloca %union.i2c_smbus_data, align 2
  call void @llvm.lifetime.start.p0(i64 34, ptr nonnull %3) #21
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 2 dereferenceable(34) %3, i8 0, i32 34, i1 false), !annotation !14
  %4 = zext i16 %1 to i32
  %5 = and i32 %4, 65528
  %6 = icmp eq i32 %5, 48
  %7 = and i32 %4, 65520
  %8 = icmp eq i32 %7, 80
  %9 = or i1 %6, %8
  br i1 %9, label %20, label %10

10:                                               ; preds = %2
  %11 = getelementptr inbounds %struct.i2c_adapter, ptr %0, i32 0, i32 2
  %12 = load ptr, ptr %11, align 8
  %13 = getelementptr inbounds %struct.i2c_algorithm, ptr %12, i32 0, i32 4
  %14 = load ptr, ptr %13, align 4
  %15 = tail call i32 %14(ptr noundef %0) #21
  %16 = and i32 %15, 65536
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %20, label %18

18:                                               ; preds = %10
  %19 = tail call i32 @i2c_smbus_xfer(ptr noundef %0, i16 noundef zeroext %1, i16 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i32 noundef 0, ptr noundef null) #21
  br label %32

20:                                               ; preds = %10, %2
  %21 = getelementptr inbounds %struct.i2c_adapter, ptr %0, i32 0, i32 2
  %22 = load ptr, ptr %21, align 8
  %23 = getelementptr inbounds %struct.i2c_algorithm, ptr %22, i32 0, i32 4
  %24 = load ptr, ptr %23, align 4
  %25 = tail call i32 %24(ptr noundef %0) #21
  %26 = and i32 %25, 131072
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %30, label %28

28:                                               ; preds = %20
  %29 = call i32 @i2c_smbus_xfer(ptr noundef %0, i16 noundef zeroext %1, i16 noundef zeroext 0, i8 noundef zeroext 1, i8 noundef zeroext 0, i32 noundef 1, ptr noundef nonnull %3) #21
  br label %32

30:                                               ; preds = %20
  %31 = getelementptr inbounds %struct.i2c_adapter, ptr %0, i32 0, i32 9
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %31, ptr noundef nonnull @.str.107, i32 noundef %4) #22
  br label %32

32:                                               ; preds = %30, %28, %18
  %33 = phi i32 [ %29, %28 ], [ -95, %30 ], [ %19, %18 ]
  %34 = xor i32 %33, -1
  %35 = lshr i32 %34, 31
  call void @llvm.lifetime.end.p0(i64 34, ptr nonnull %3) #21
  ret i32 %35
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @i2c_get_adapter(i32 noundef %0) #0 {
  tail call void @mutex_lock(ptr noundef nonnull @core_lock) #21
  %2 = tail call ptr @idr_find(ptr noundef nonnull @i2c_adapter_idr, i32 noundef %0) #21
  %3 = icmp eq ptr %2, null
  br i1 %3, label %10, label %4

4:                                                ; preds = %1
  %5 = load ptr, ptr %2, align 8
  %6 = tail call zeroext i1 @try_module_get(ptr noundef %5) #21
  br i1 %6, label %7, label %10

7:                                                ; preds = %4
  %8 = getelementptr inbounds %struct.i2c_adapter, ptr %2, i32 0, i32 9
  %9 = tail call ptr @get_device(ptr noundef %8) #21
  br label %10

10:                                               ; preds = %7, %4, %1
  %11 = phi ptr [ %2, %7 ], [ null, %1 ], [ null, %4 ]
  tail call void @mutex_unlock(ptr noundef nonnull @core_lock) #21
  ret ptr %11
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @try_module_get(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @get_device(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @i2c_put_adapter(ptr noundef %0) #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %6, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.i2c_adapter, ptr %0, i32 0, i32 9
  tail call void @put_device(ptr noundef %4) #21
  %5 = load ptr, ptr %0, align 8
  tail call void @module_put(ptr noundef %5) #21
  br label %6

6:                                                ; preds = %3, %1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @put_device(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @module_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @i2c_get_dma_safe_msg_buf(ptr nocapture noundef readonly %0, i32 noundef %1) #0 {
  %3 = getelementptr inbounds %struct.i2c_msg, ptr %0, i32 0, i32 2
  %4 = load i16, ptr %3, align 4
  %5 = zext i16 %4 to i32
  %6 = icmp ult i32 %5, %1
  %7 = icmp eq i16 %4, 0
  %8 = or i1 %7, %6
  br i1 %8, label %27, label %9

9:                                                ; preds = %2
  %10 = getelementptr inbounds %struct.i2c_msg, ptr %0, i32 0, i32 1
  %11 = load i16, ptr %10, align 2
  %12 = zext i16 %11 to i32
  %13 = and i32 %12, 512
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %18, label %15

15:                                               ; preds = %9
  %16 = getelementptr inbounds %struct.i2c_msg, ptr %0, i32 0, i32 3
  %17 = load ptr, ptr %16, align 4
  br label %27

18:                                               ; preds = %9
  %19 = and i32 %12, 1
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %23, label %21

21:                                               ; preds = %18
  %22 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %5, i32 noundef 3520) #24
  br label %27

23:                                               ; preds = %18
  %24 = getelementptr inbounds %struct.i2c_msg, ptr %0, i32 0, i32 3
  %25 = load ptr, ptr %24, align 4
  %26 = tail call ptr @kmemdup(ptr noundef %25, i32 noundef %5, i32 noundef 3264) #21
  br label %27

27:                                               ; preds = %23, %21, %15, %2
  %28 = phi ptr [ %17, %15 ], [ %26, %23 ], [ null, %2 ], [ %22, %21 ]
  ret ptr %28
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kmemdup(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @i2c_put_dma_safe_msg_buf(ptr noundef %0, ptr nocapture noundef readonly %1, i1 noundef zeroext %2) #0 {
  %4 = icmp eq ptr %0, null
  br i1 %4, label %20, label %5

5:                                                ; preds = %3
  %6 = getelementptr inbounds %struct.i2c_msg, ptr %1, i32 0, i32 3
  %7 = load ptr, ptr %6, align 4
  %8 = icmp eq ptr %7, %0
  br i1 %8, label %20, label %9

9:                                                ; preds = %5
  br i1 %2, label %10, label %19

10:                                               ; preds = %9
  %11 = getelementptr inbounds %struct.i2c_msg, ptr %1, i32 0, i32 1
  %12 = load i16, ptr %11, align 2
  %13 = and i16 %12, 1
  %14 = icmp eq i16 %13, 0
  br i1 %14, label %19, label %15

15:                                               ; preds = %10
  %16 = getelementptr inbounds %struct.i2c_msg, ptr %1, i32 0, i32 2
  %17 = load i16, ptr %16, align 4
  %18 = zext i16 %17 to i32
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 1 %7, ptr nonnull align 1 %0, i32 %18, i1 false)
  br label %19

19:                                               ; preds = %15, %10, %9
  tail call void @kfree(ptr noundef nonnull %0) #21
  br label %20

20:                                               ; preds = %19, %5, %3
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @trace_event_buffer_reserve(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_event_buffer_commit(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__trace_trigger_soft_disabled(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @trace_raw_output_i2c_write(ptr noundef %0, i32 noundef %1, ptr noundef %2) #0 {
  %4 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 16
  %5 = load ptr, ptr %4, align 8
  %6 = tail call i32 @trace_raw_output_prep(ptr noundef %0, ptr noundef %2) #21
  %7 = icmp eq i32 %6, 1
  br i1 %7, label %8, label %29

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 15
  %10 = getelementptr inbounds %struct.trace_event_raw_i2c_write, ptr %5, i32 0, i32 1
  %11 = load i32, ptr %10, align 4
  %12 = getelementptr inbounds %struct.trace_event_raw_i2c_write, ptr %5, i32 0, i32 2
  %13 = load i16, ptr %12, align 4
  %14 = zext i16 %13 to i32
  %15 = getelementptr inbounds %struct.trace_event_raw_i2c_write, ptr %5, i32 0, i32 3
  %16 = load i16, ptr %15, align 2
  %17 = zext i16 %16 to i32
  %18 = getelementptr inbounds %struct.trace_event_raw_i2c_write, ptr %5, i32 0, i32 4
  %19 = load i16, ptr %18, align 4
  %20 = zext i16 %19 to i32
  %21 = getelementptr inbounds %struct.trace_event_raw_i2c_write, ptr %5, i32 0, i32 5
  %22 = load i16, ptr %21, align 2
  %23 = zext i16 %22 to i32
  %24 = getelementptr inbounds %struct.trace_event_raw_i2c_write, ptr %5, i32 0, i32 6
  %25 = load i32, ptr %24, align 4
  %26 = and i32 %25, 65535
  %27 = getelementptr i8, ptr %5, i32 %26
  tail call void (ptr, ptr, ...) @trace_event_printf(ptr noundef %0, ptr noundef nonnull @.str.36, i32 noundef %11, i32 noundef %14, i32 noundef %17, i32 noundef %20, i32 noundef %23, i32 noundef %23, ptr noundef %27) #21
  %28 = tail call i32 @trace_handle_return(ptr noundef %9) #21
  br label %29

29:                                               ; preds = %8, %3
  %30 = phi i32 [ %28, %8 ], [ %6, %3 ]
  ret i32 %30
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @trace_raw_output_prep(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_event_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @trace_handle_return(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @trace_raw_output_i2c_read(ptr noundef %0, i32 noundef %1, ptr noundef %2) #0 {
  %4 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 16
  %5 = load ptr, ptr %4, align 8
  %6 = tail call i32 @trace_raw_output_prep(ptr noundef %0, ptr noundef %2) #21
  %7 = icmp eq i32 %6, 1
  br i1 %7, label %8, label %25

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 15
  %10 = getelementptr inbounds %struct.trace_event_raw_i2c_read, ptr %5, i32 0, i32 1
  %11 = load i32, ptr %10, align 4
  %12 = getelementptr inbounds %struct.trace_event_raw_i2c_read, ptr %5, i32 0, i32 2
  %13 = load i16, ptr %12, align 4
  %14 = zext i16 %13 to i32
  %15 = getelementptr inbounds %struct.trace_event_raw_i2c_read, ptr %5, i32 0, i32 3
  %16 = load i16, ptr %15, align 2
  %17 = zext i16 %16 to i32
  %18 = getelementptr inbounds %struct.trace_event_raw_i2c_read, ptr %5, i32 0, i32 4
  %19 = load i16, ptr %18, align 4
  %20 = zext i16 %19 to i32
  %21 = getelementptr inbounds %struct.trace_event_raw_i2c_read, ptr %5, i32 0, i32 5
  %22 = load i16, ptr %21, align 2
  %23 = zext i16 %22 to i32
  tail call void (ptr, ptr, ...) @trace_event_printf(ptr noundef %0, ptr noundef nonnull @.str.37, i32 noundef %11, i32 noundef %14, i32 noundef %17, i32 noundef %20, i32 noundef %23) #21
  %24 = tail call i32 @trace_handle_return(ptr noundef %9) #21
  br label %25

25:                                               ; preds = %8, %3
  %26 = phi i32 [ %24, %8 ], [ %6, %3 ]
  ret i32 %26
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @trace_raw_output_i2c_reply(ptr noundef %0, i32 noundef %1, ptr noundef %2) #0 {
  %4 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 16
  %5 = load ptr, ptr %4, align 8
  %6 = tail call i32 @trace_raw_output_prep(ptr noundef %0, ptr noundef %2) #21
  %7 = icmp eq i32 %6, 1
  br i1 %7, label %8, label %29

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 15
  %10 = getelementptr inbounds %struct.trace_event_raw_i2c_reply, ptr %5, i32 0, i32 1
  %11 = load i32, ptr %10, align 4
  %12 = getelementptr inbounds %struct.trace_event_raw_i2c_reply, ptr %5, i32 0, i32 2
  %13 = load i16, ptr %12, align 4
  %14 = zext i16 %13 to i32
  %15 = getelementptr inbounds %struct.trace_event_raw_i2c_reply, ptr %5, i32 0, i32 3
  %16 = load i16, ptr %15, align 2
  %17 = zext i16 %16 to i32
  %18 = getelementptr inbounds %struct.trace_event_raw_i2c_reply, ptr %5, i32 0, i32 4
  %19 = load i16, ptr %18, align 4
  %20 = zext i16 %19 to i32
  %21 = getelementptr inbounds %struct.trace_event_raw_i2c_reply, ptr %5, i32 0, i32 5
  %22 = load i16, ptr %21, align 2
  %23 = zext i16 %22 to i32
  %24 = getelementptr inbounds %struct.trace_event_raw_i2c_reply, ptr %5, i32 0, i32 6
  %25 = load i32, ptr %24, align 4
  %26 = and i32 %25, 65535
  %27 = getelementptr i8, ptr %5, i32 %26
  tail call void (ptr, ptr, ...) @trace_event_printf(ptr noundef %0, ptr noundef nonnull @.str.36, i32 noundef %11, i32 noundef %14, i32 noundef %17, i32 noundef %20, i32 noundef %23, i32 noundef %23, ptr noundef %27) #21
  %28 = tail call i32 @trace_handle_return(ptr noundef %9) #21
  br label %29

29:                                               ; preds = %8, %3
  %30 = phi i32 [ %28, %8 ], [ %6, %3 ]
  ret i32 %30
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @trace_raw_output_i2c_result(ptr noundef %0, i32 noundef %1, ptr noundef %2) #0 {
  %4 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 16
  %5 = load ptr, ptr %4, align 8
  %6 = tail call i32 @trace_raw_output_prep(ptr noundef %0, ptr noundef %2) #21
  %7 = icmp eq i32 %6, 1
  br i1 %7, label %8, label %19

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 15
  %10 = getelementptr inbounds %struct.trace_event_raw_i2c_result, ptr %5, i32 0, i32 1
  %11 = load i32, ptr %10, align 4
  %12 = getelementptr inbounds %struct.trace_event_raw_i2c_result, ptr %5, i32 0, i32 2
  %13 = load i16, ptr %12, align 4
  %14 = zext i16 %13 to i32
  %15 = getelementptr inbounds %struct.trace_event_raw_i2c_result, ptr %5, i32 0, i32 3
  %16 = load i16, ptr %15, align 2
  %17 = sext i16 %16 to i32
  tail call void (ptr, ptr, ...) @trace_event_printf(ptr noundef %0, ptr noundef nonnull @.str.41, i32 noundef %11, i32 noundef %14, i32 noundef %17) #21
  %18 = tail call i32 @trace_handle_return(ptr noundef %9) #21
  br label %19

19:                                               ; preds = %8, %3
  %20 = phi i32 [ %18, %8 ], [ %6, %3 ]
  ret i32 %20
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @perf_trace_buf_alloc(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @perf_trace_run_bpf_submit(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i64 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #13

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.returnaddress(i32 immarg) #14

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.frameaddress.p0(i32 immarg) #14

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @i2c_of_match_device(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_irq_get_byname(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_irq_get(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_init_wakeup(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_pm_set_dedicated_wake_irq(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_pm_set_wake_irq(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_clk_set_defaults(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_pm_domain_attach(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devres_open_group(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devres_release_group(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dev_pm_domain_detach(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dev_pm_clear_wake_irq(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_resume(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_create_mapping_affinity(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_idle(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @disable_irq(i32 noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @name_show(ptr noundef %0, ptr nocapture noundef readnone %1, ptr nocapture noundef writeonly %2) #15 {
  %4 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 4
  %5 = load ptr, ptr %4, align 8
  %6 = icmp eq ptr %5, @i2c_client_type
  %7 = select i1 %6, i32 -28, i32 480
  %8 = getelementptr i8, ptr %0, i32 %7
  %9 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %2, ptr noundef nonnull @.str.49, ptr noundef %8)
  ret i32 %9
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #16

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @modalias_show(ptr noundef %0, ptr nocapture noundef readnone %1, ptr noundef %2) #0 {
  %4 = tail call i32 @of_device_modalias(ptr noundef %0, ptr noundef %2, i32 noundef 4096) #21
  %5 = icmp eq i32 %4, -19
  br i1 %5, label %6, label %9

6:                                                ; preds = %3
  %7 = getelementptr i8, ptr %0, i32 -28
  %8 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %2, ptr noundef nonnull @.str.51, ptr noundef nonnull @.str.52, ptr noundef %7)
  br label %9

9:                                                ; preds = %6, %3
  %10 = phi i32 [ %8, %6 ], [ %4, %3 ]
  ret i32 %10
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_device_modalias(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_device_uevent_modalias(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @add_uevent_var(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #17

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #18

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @i2c_check_mux_parents(ptr noundef %0, i32 noundef %1) unnamed_addr #0 {
  %3 = alloca i32, align 4
  store i32 %1, ptr %3, align 4
  %4 = getelementptr inbounds %struct.i2c_adapter, ptr %0, i32 0, i32 9, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %13, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.device, ptr %5, i32 0, i32 4
  %9 = load ptr, ptr %8, align 8
  %10 = icmp eq ptr %9, @i2c_adapter_type
  %11 = getelementptr i8, ptr %5, i32 -64
  %12 = select i1 %10, ptr %11, ptr null
  br label %13

13:                                               ; preds = %7, %2
  %14 = phi ptr [ null, %2 ], [ %12, %7 ]
  %15 = getelementptr inbounds %struct.i2c_adapter, ptr %0, i32 0, i32 9
  %16 = call i32 @device_for_each_child(ptr noundef %15, ptr noundef nonnull %3, ptr noundef nonnull @__i2c_check_addr_busy) #21
  %17 = icmp eq i32 %16, 0
  %18 = icmp ne ptr %14, null
  %19 = select i1 %17, i1 %18, i1 false
  br i1 %19, label %20, label %23

20:                                               ; preds = %13
  %21 = load i32, ptr %3, align 4
  %22 = call fastcc i32 @i2c_check_mux_parents(ptr noundef nonnull %14, i32 noundef %21)
  br label %23

23:                                               ; preds = %20, %13
  %24 = phi i32 [ %22, %20 ], [ %16, %13 ]
  ret i32 %24
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @i2c_check_mux_children(ptr noundef %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 4
  %4 = load ptr, ptr %3, align 8
  %5 = icmp eq ptr %4, @i2c_adapter_type
  br i1 %5, label %6, label %8

6:                                                ; preds = %2
  %7 = tail call i32 @device_for_each_child(ptr noundef %0, ptr noundef %1, ptr noundef nonnull @i2c_check_mux_children) #21
  br label %28

8:                                                ; preds = %2
  %9 = icmp ne ptr %4, @i2c_client_type
  %10 = getelementptr i8, ptr %0, i32 -32
  %11 = icmp eq ptr %10, null
  %12 = or i1 %11, %9
  br i1 %12, label %27, label %13

13:                                               ; preds = %8
  %14 = load i32, ptr %1, align 4
  %15 = getelementptr i8, ptr %0, i32 -30
  %16 = load i16, ptr %15, align 2
  %17 = load i16, ptr %10, align 8
  %18 = and i16 %17, 16
  %19 = icmp eq i16 %18, 0
  %20 = or i16 %16, -24576
  %21 = select i1 %19, i16 %16, i16 %20
  %22 = shl i16 %17, 7
  %23 = and i16 %22, 4096
  %24 = or i16 %21, %23
  %25 = zext i16 %24 to i32
  %26 = icmp eq i32 %14, %25
  br i1 %26, label %28, label %27

27:                                               ; preds = %13, %8
  br label %28

28:                                               ; preds = %27, %13, %6
  %29 = phi i32 [ %7, %6 ], [ 0, %27 ], [ -16, %13 ]
  ret i32 %29
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define internal i32 @__i2c_check_addr_busy(ptr noundef readonly %0, ptr nocapture noundef readonly %1) #19 {
  %3 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 4
  %4 = load ptr, ptr %3, align 8
  %5 = icmp ne ptr %4, @i2c_client_type
  %6 = getelementptr i8, ptr %0, i32 -32
  %7 = icmp eq ptr %6, null
  %8 = or i1 %7, %5
  br i1 %8, label %23, label %9

9:                                                ; preds = %2
  %10 = load i32, ptr %1, align 4
  %11 = getelementptr i8, ptr %0, i32 -30
  %12 = load i16, ptr %11, align 2
  %13 = load i16, ptr %6, align 8
  %14 = and i16 %13, 16
  %15 = icmp eq i16 %14, 0
  %16 = or i16 %12, -24576
  %17 = select i1 %15, i16 %12, i16 %16
  %18 = shl i16 %13, 7
  %19 = and i16 %18, 4096
  %20 = or i16 %17, %19
  %21 = zext i16 %20 to i32
  %22 = icmp eq i32 %10, %21
  br i1 %22, label %24, label %23

23:                                               ; preds = %9, %2
  br label %24

24:                                               ; preds = %23, %9
  %25 = phi i32 [ 0, %23 ], [ -16, %9 ]
  ret i32 %25
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_set_name(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_add_action(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @new_device_store(ptr noundef %0, ptr nocapture noundef readnone %1, ptr noundef %2, i32 noundef %3) #0 {
  %5 = alloca %struct.i2c_board_info, align 4
  %6 = alloca i8, align 1
  %7 = getelementptr i8, ptr %0, i32 -64
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %5) #21
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %6) #21
  store i8 0, ptr %6, align 1, !annotation !14
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(56) %5, i8 0, i32 56, i1 false)
  %8 = tail call ptr @strchr(ptr noundef %2, i32 noundef 32)
  %9 = icmp eq ptr %8, null
  br i1 %9, label %10, label %11

10:                                               ; preds = %4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %0, ptr noundef nonnull @.str.57, ptr noundef nonnull @.str.56) #22
  br label %61

11:                                               ; preds = %4
  %12 = ptrtoint ptr %8 to i32
  %13 = ptrtoint ptr %2 to i32
  %14 = sub i32 %12, %13
  %15 = icmp sgt i32 %14, 19
  br i1 %15, label %16, label %17

16:                                               ; preds = %11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %0, ptr noundef nonnull @.str.58, ptr noundef nonnull @.str.56) #22
  br label %61

17:                                               ; preds = %11
  call void @llvm.memcpy.p0.p0.i32(ptr nonnull align 4 %5, ptr align 1 %2, i32 %14, i1 false)
  %18 = getelementptr i8, ptr %8, i32 1
  %19 = getelementptr inbounds %struct.i2c_board_info, ptr %5, i32 0, i32 2
  %20 = call i32 (ptr, ptr, ...) @sscanf(ptr noundef %18, ptr noundef nonnull @.str.59, ptr noundef %19, ptr noundef nonnull %6)
  %21 = icmp slt i32 %20, 1
  br i1 %21, label %22, label %23

22:                                               ; preds = %17
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %0, ptr noundef nonnull @.str.60, ptr noundef nonnull @.str.56) #22
  br label %61

23:                                               ; preds = %17
  %24 = icmp ne i32 %20, 1
  %25 = load i8, ptr %6, align 1
  %26 = icmp ne i8 %25, 10
  %27 = select i1 %24, i1 %26, i1 false
  br i1 %27, label %28, label %29

28:                                               ; preds = %23
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %0, ptr noundef nonnull @.str.61, ptr noundef nonnull @.str.56) #22
  br label %61

29:                                               ; preds = %23
  %30 = load i16, ptr %19, align 2
  %31 = and i16 %30, -24576
  %32 = icmp eq i16 %31, -24576
  br i1 %32, label %33, label %38

33:                                               ; preds = %29
  %34 = and i16 %30, 24575
  store i16 %34, ptr %19, align 2
  %35 = getelementptr inbounds %struct.i2c_board_info, ptr %5, i32 0, i32 1
  %36 = load i16, ptr %35, align 4
  %37 = or i16 %36, 16
  store i16 %37, ptr %35, align 4
  br label %38

38:                                               ; preds = %33, %29
  %39 = phi i16 [ %34, %33 ], [ %30, %29 ]
  %40 = and i16 %39, 4096
  %41 = icmp eq i16 %40, 0
  br i1 %41, label %47, label %42

42:                                               ; preds = %38
  %43 = and i16 %39, -4097
  store i16 %43, ptr %19, align 2
  %44 = getelementptr inbounds %struct.i2c_board_info, ptr %5, i32 0, i32 1
  %45 = load i16, ptr %44, align 4
  %46 = or i16 %45, 32
  store i16 %46, ptr %44, align 4
  br label %47

47:                                               ; preds = %42, %38
  %48 = call ptr @i2c_new_client_device(ptr noundef %7, ptr noundef nonnull %5)
  %49 = icmp ugt ptr %48, inttoptr (i32 -4096 to ptr)
  br i1 %49, label %50, label %52

50:                                               ; preds = %47
  %51 = ptrtoint ptr %48 to i32
  br label %61

52:                                               ; preds = %47
  %53 = getelementptr i8, ptr %0, i32 544
  call void @mutex_lock(ptr noundef %53) #21
  %54 = getelementptr inbounds %struct.i2c_client, ptr %48, i32 0, i32 7
  %55 = getelementptr i8, ptr %0, i32 564
  %56 = getelementptr i8, ptr %0, i32 568
  %57 = load ptr, ptr %56, align 4
  store ptr %54, ptr %56, align 4
  store ptr %55, ptr %54, align 4
  %58 = getelementptr inbounds %struct.i2c_client, ptr %48, i32 0, i32 7, i32 1
  store ptr %57, ptr %58, align 4
  store volatile ptr %54, ptr %57, align 4
  call void @mutex_unlock(ptr noundef %53) #21
  %59 = load i16, ptr %19, align 2
  %60 = zext i16 %59 to i32
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %0, ptr noundef nonnull @.str.62, ptr noundef nonnull @.str.56, ptr noundef nonnull %5, i32 noundef %60) #22
  br label %61

61:                                               ; preds = %52, %50, %28, %22, %16, %10
  %62 = phi i32 [ -22, %16 ], [ -22, %22 ], [ -22, %28 ], [ %51, %50 ], [ %3, %52 ], [ -22, %10 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %6) #21
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %5) #21
  ret i32 %62
}

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local ptr @strchr(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sscanf(ptr nocapture noundef readonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #16

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @delete_device_store(ptr noundef %0, ptr nocapture noundef readnone %1, ptr nocapture noundef readonly %2, i32 noundef %3) #0 {
  %5 = alloca i16, align 2
  %6 = alloca i8, align 1
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %5) #21
  store i16 0, ptr %5, align 2, !annotation !14
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %6) #21
  store i8 0, ptr %6, align 1, !annotation !14
  %7 = call i32 (ptr, ptr, ...) @sscanf(ptr noundef %2, ptr noundef nonnull @.str.59, ptr noundef nonnull %5, ptr noundef nonnull %6)
  %8 = icmp slt i32 %7, 1
  br i1 %8, label %58, label %9

9:                                                ; preds = %4
  %10 = icmp ne i32 %7, 1
  %11 = load i8, ptr %6, align 1
  %12 = icmp ne i8 %11, 10
  %13 = select i1 %10, i1 %12, i1 false
  br i1 %13, label %58, label %14

14:                                               ; preds = %9
  %15 = getelementptr i8, ptr %0, i32 544
  call void @mutex_lock(ptr noundef %15) #21
  %16 = getelementptr i8, ptr %0, i32 564
  %17 = load i16, ptr %5, align 2
  br label %18

18:                                               ; preds = %23, %14
  %19 = phi ptr [ %16, %14 ], [ %20, %23 ]
  %20 = load ptr, ptr %19, align 4
  %21 = icmp eq ptr %20, %16
  br i1 %21, label %22, label %23

22:                                               ; preds = %18
  call void @mutex_unlock(ptr noundef %15) #21
  br label %58

23:                                               ; preds = %18
  %24 = getelementptr i8, ptr %20, i32 -512
  %25 = getelementptr i8, ptr %20, i32 -510
  %26 = load i16, ptr %25, align 2
  %27 = load i16, ptr %24, align 8
  %28 = and i16 %27, 16
  %29 = icmp eq i16 %28, 0
  %30 = or i16 %26, -24576
  %31 = select i1 %29, i16 %26, i16 %30
  %32 = shl i16 %27, 7
  %33 = and i16 %32, 4096
  %34 = or i16 %31, %33
  %35 = icmp eq i16 %34, %17
  br i1 %35, label %36, label %18

36:                                               ; preds = %23
  %37 = getelementptr i8, ptr %20, i32 -512
  %38 = getelementptr i8, ptr %20, i32 -508
  %39 = zext i16 %26 to i32
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %0, ptr noundef nonnull @.str.64, ptr noundef nonnull @.str.63, ptr noundef %38, i32 noundef %39) #22
  %40 = getelementptr inbounds %struct.list_head, ptr %20, i32 0, i32 1
  %41 = load ptr, ptr %40, align 4
  %42 = load ptr, ptr %20, align 4
  %43 = getelementptr inbounds %struct.list_head, ptr %42, i32 0, i32 1
  store ptr %41, ptr %43, align 4
  store volatile ptr %42, ptr %41, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %20, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %40, align 4
  %44 = icmp eq ptr %37, null
  %45 = icmp ugt ptr %37, inttoptr (i32 -4096 to ptr)
  %46 = or i1 %44, %45
  br i1 %46, label %56, label %47

47:                                               ; preds = %36
  %48 = getelementptr i8, ptr %20, i32 -480
  %49 = getelementptr i8, ptr %20, i32 -64
  %50 = load ptr, ptr %49, align 8
  %51 = icmp eq ptr %50, null
  br i1 %51, label %55, label %52

52:                                               ; preds = %47
  %53 = getelementptr inbounds %struct.device_node, ptr %50, i32 0, i32 10
  call void @_clear_bit(i32 noundef 3, ptr noundef %53) #21
  %54 = load ptr, ptr %49, align 8
  call void @of_node_put(ptr noundef %54) #21
  br label %55

55:                                               ; preds = %52, %47
  call void @device_remove_software_node(ptr noundef %48) #21
  call void @device_unregister(ptr noundef %48) #21
  br label %56

56:                                               ; preds = %55, %36
  call void @mutex_unlock(ptr noundef %15) #21
  %57 = icmp slt i32 %3, 0
  br i1 %57, label %58, label %61

58:                                               ; preds = %56, %22, %9, %4
  %59 = phi ptr [ @.str.60, %4 ], [ @.str.61, %9 ], [ @.str.65, %22 ], [ @.str.65, %56 ]
  %60 = phi i32 [ -22, %4 ], [ -22, %9 ], [ -2, %22 ], [ %3, %56 ]
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %0, ptr noundef nonnull %59, ptr noundef nonnull @.str.63) #22
  br label %61

61:                                               ; preds = %58, %56
  %62 = phi i32 [ %3, %56 ], [ %60, %58 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %6) #21
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %5) #21
  ret i32 %62
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @complete(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__irq_resolve_mapping(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @__rt_mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_i2c_setup_smbus_alert(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_no_callbacks(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_enable(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @class_compat_create_link(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_i2c_register_devices(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @__process_new_adapter(ptr noundef %0, ptr noundef %1) #0 {
  %3 = getelementptr i8, ptr %0, i32 -28
  tail call fastcc void @i2c_do_add_adapter(ptr noundef %3, ptr noundef %1)
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @i2c_adapter_lock_bus(ptr noundef %0, i32 noundef %1) #0 {
  %3 = getelementptr inbounds %struct.i2c_adapter, ptr %0, i32 0, i32 5
  tail call void @rt_mutex_lock(ptr noundef %3) #21
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @i2c_adapter_trylock_bus(ptr noundef %0, i32 noundef %1) #0 {
  %3 = getelementptr inbounds %struct.i2c_adapter, ptr %0, i32 0, i32 5
  %4 = tail call i32 @rt_mutex_trylock(ptr noundef %3) #21
  ret i32 %4
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @i2c_adapter_unlock_bus(ptr noundef %0, i32 noundef %1) #0 {
  %3 = getelementptr inbounds %struct.i2c_adapter, ptr %0, i32 0, i32 5
  tail call void @rt_mutex_unlock(ptr noundef %3) #21
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rt_mutex_lock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rt_mutex_trylock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rt_mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__irq_domain_add(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @i2c_host_notify_irq_map(ptr nocapture noundef readnone %0, i32 noundef %1, i32 noundef %2) #0 {
  tail call void @irq_set_chip_and_handler_name(i32 noundef %1, ptr noundef nonnull @dummy_irq_chip, ptr noundef nonnull @handle_simple_irq, ptr noundef null) #21
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @handle_simple_irq(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_set_chip_and_handler_name(i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @get_scl_gpio_value(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.i2c_adapter, ptr %0, i32 0, i32 16
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.i2c_bus_recovery_info, ptr %3, i32 0, i32 8
  %5 = load ptr, ptr %4, align 4
  %6 = tail call i32 @gpiod_get_value_cansleep(ptr noundef %5) #21
  ret i32 %6
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @set_scl_gpio_value(ptr nocapture noundef readonly %0, i32 noundef %1) #0 {
  %3 = getelementptr inbounds %struct.i2c_adapter, ptr %0, i32 0, i32 16
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.i2c_bus_recovery_info, ptr %4, i32 0, i32 8
  %6 = load ptr, ptr %5, align 4
  tail call void @gpiod_set_value_cansleep(ptr noundef %6, i32 noundef %1) #21
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @get_sda_gpio_value(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.i2c_adapter, ptr %0, i32 0, i32 16
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.i2c_bus_recovery_info, ptr %3, i32 0, i32 9
  %5 = load ptr, ptr %4, align 4
  %6 = tail call i32 @gpiod_get_value_cansleep(ptr noundef %5) #21
  ret i32 %6
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gpiod_get_direction(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @set_sda_gpio_value(ptr nocapture noundef readonly %0, i32 noundef %1) #0 {
  %3 = getelementptr inbounds %struct.i2c_adapter, ptr %0, i32 0, i32 16
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.i2c_bus_recovery_info, ptr %4, i32 0, i32 9
  %6 = load ptr, ptr %5, align 4
  tail call void @gpiod_set_value_cansleep(ptr noundef %6, i32 noundef %1) #21
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @pinctrl_lookup_state(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_gpiod_get(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gpiod_direction_output(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gpiod_get_value_cansleep(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @gpiod_set_value_cansleep(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @down_read(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @up_read(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @i2c_do_add_adapter(ptr noundef %0, ptr noundef %1) unnamed_addr #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.i2c_board_info, align 4
  %5 = getelementptr inbounds %struct.i2c_driver, ptr %0, i32 0, i32 10
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.i2c_driver, ptr %0, i32 0, i32 9
  %8 = load ptr, ptr %7, align 4
  %9 = icmp ne ptr %8, null
  %10 = icmp ne ptr %6, null
  %11 = select i1 %9, i1 %10, i1 false
  br i1 %11, label %12, label %107

12:                                               ; preds = %2
  %13 = getelementptr inbounds %struct.i2c_adapter, ptr %1, i32 0, i32 1
  %14 = load i32, ptr %13, align 4
  %15 = icmp eq i32 %14, 256
  br i1 %15, label %107, label %16

16:                                               ; preds = %12
  %17 = load i32, ptr %0, align 4
  %18 = and i32 %17, %14
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %107, label %20

20:                                               ; preds = %16
  %21 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10), align 4
  %22 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %21, i32 noundef 3520, i32 noundef 528) #23
  %23 = icmp eq ptr %22, null
  br i1 %23, label %107, label %24

24:                                               ; preds = %20
  %25 = getelementptr inbounds %struct.i2c_client, ptr %22, i32 0, i32 3
  store ptr %1, ptr %25, align 8
  %26 = load i16, ptr %6, align 2
  %27 = icmp eq i16 %26, -2
  br i1 %27, label %106, label %28

28:                                               ; preds = %24
  %29 = getelementptr inbounds %struct.i2c_client, ptr %22, i32 0, i32 1
  %30 = getelementptr inbounds %struct.i2c_board_info, ptr %4, i32 0, i32 2
  %31 = getelementptr inbounds %struct.i2c_driver, ptr %0, i32 0, i32 11
  %32 = getelementptr inbounds %struct.i2c_driver, ptr %0, i32 0, i32 11, i32 1
  %33 = getelementptr inbounds %struct.i2c_driver, ptr %0, i32 0, i32 7
  store i16 %26, ptr %29, align 2
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #21
  %34 = zext i16 %26 to i32
  %35 = add i16 %26, -8
  %36 = icmp ult i16 %35, 112
  br i1 %36, label %43, label %39

37:                                               ; preds = %101
  %38 = zext i16 %99 to i32
  br label %39

39:                                               ; preds = %37, %28
  %40 = phi ptr [ %1, %28 ], [ %102, %37 ]
  %41 = phi i32 [ %34, %28 ], [ %38, %37 ]
  %42 = getelementptr inbounds %struct.i2c_adapter, ptr %40, i32 0, i32 9
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %42, ptr noundef nonnull @.str.87, i32 noundef %41) #22
  br label %95

43:                                               ; preds = %101, %28
  %44 = phi i32 [ %103, %101 ], [ %34, %28 ]
  %45 = phi i32 [ %97, %101 ], [ 0, %28 ]
  %46 = phi i16 [ %99, %101 ], [ %26, %28 ]
  %47 = phi ptr [ %102, %101 ], [ %1, %28 ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #21
  store i32 %44, ptr %3, align 4
  %48 = getelementptr inbounds %struct.i2c_adapter, ptr %47, i32 0, i32 9, i32 1
  %49 = load ptr, ptr %48, align 4
  %50 = icmp eq ptr %49, null
  br i1 %50, label %62, label %51

51:                                               ; preds = %43
  %52 = getelementptr inbounds %struct.device, ptr %49, i32 0, i32 4
  %53 = load ptr, ptr %52, align 8
  %54 = icmp ne ptr %53, @i2c_adapter_type
  %55 = getelementptr i8, ptr %49, i32 -64
  %56 = icmp eq ptr %55, null
  %57 = select i1 %54, i1 true, i1 %56
  br i1 %57, label %62, label %58

58:                                               ; preds = %51
  %59 = call fastcc i32 @i2c_check_mux_parents(ptr noundef nonnull %55, i32 noundef %44) #21
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %62, label %61

61:                                               ; preds = %58
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #21
  br label %96

62:                                               ; preds = %58, %51, %43
  %63 = getelementptr inbounds %struct.i2c_adapter, ptr %47, i32 0, i32 9
  %64 = call i32 @device_for_each_child(ptr noundef %63, ptr noundef nonnull %3, ptr noundef nonnull @i2c_check_mux_children) #21
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #21
  %65 = icmp eq i32 %64, 0
  br i1 %65, label %66, label %96

66:                                               ; preds = %62
  %67 = call i32 @i2c_default_probe(ptr noundef %47, i16 noundef zeroext %46) #21
  %68 = icmp eq i32 %67, 0
  br i1 %68, label %96, label %69

69:                                               ; preds = %66
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(56) %4, i8 0, i32 56, i1 false) #21
  store i16 %46, ptr %30, align 2
  %70 = load ptr, ptr %7, align 4
  %71 = call i32 %70(ptr noundef nonnull %22, ptr noundef nonnull %4) #21
  switch i32 %71, label %95 [
    i32 0, label %72
    i32 -19, label %96
  ]

72:                                               ; preds = %69
  %73 = load i8, ptr %4, align 4
  %74 = icmp eq i8 %73, 0
  br i1 %74, label %75, label %77

75:                                               ; preds = %72
  %76 = load ptr, ptr %33, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %63, ptr noundef nonnull @.str.88, ptr noundef %76, i32 noundef %44) #22
  br label %96

77:                                               ; preds = %72
  %78 = getelementptr inbounds %struct.i2c_adapter, ptr %47, i32 0, i32 1
  %79 = load i32, ptr %78, align 4
  %80 = and i32 %79, 256
  %81 = icmp eq i32 %80, 0
  br i1 %81, label %85, label %82

82:                                               ; preds = %77
  %83 = load i16, ptr %30, align 2
  %84 = zext i16 %83 to i32
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %63, ptr noundef nonnull @.str.89, i32 noundef %84) #22
  br label %85

85:                                               ; preds = %82, %77
  %86 = call ptr @i2c_new_client_device(ptr noundef %47, ptr noundef nonnull %4) #21
  %87 = icmp ugt ptr %86, inttoptr (i32 -4096 to ptr)
  br i1 %87, label %92, label %88

88:                                               ; preds = %85
  %89 = getelementptr inbounds %struct.i2c_client, ptr %86, i32 0, i32 7
  %90 = load ptr, ptr %32, align 4
  store ptr %89, ptr %32, align 4
  store ptr %31, ptr %89, align 4
  %91 = getelementptr inbounds %struct.i2c_client, ptr %86, i32 0, i32 7, i32 1
  store ptr %90, ptr %91, align 4
  store volatile ptr %89, ptr %90, align 4
  br label %96

92:                                               ; preds = %85
  %93 = load i16, ptr %30, align 2
  %94 = zext i16 %93 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %63, ptr noundef nonnull @.str.90, ptr noundef nonnull %4, i32 noundef %94) #22
  br label %96

95:                                               ; preds = %69, %39
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #21
  br label %106

96:                                               ; preds = %92, %88, %75, %69, %66, %62, %61
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #21
  %97 = add i32 %45, 1
  %98 = getelementptr i16, ptr %6, i32 %97
  %99 = load i16, ptr %98, align 2
  %100 = icmp eq i16 %99, -2
  br i1 %100, label %106, label %101

101:                                              ; preds = %96
  %102 = load ptr, ptr %25, align 8
  store i16 %99, ptr %29, align 2
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #21
  %103 = zext i16 %99 to i32
  %104 = add i16 %99, -8
  %105 = icmp ult i16 %104, 112
  br i1 %105, label %43, label %37

106:                                              ; preds = %96, %95, %24
  call void @kfree(ptr noundef nonnull %22) #21
  br label %107

107:                                              ; preds = %106, %20, %16, %12, %2
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__pm_runtime_disable(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_dispose_mapping(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_domain_remove(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_swait_queue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_property_read_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal i32 @dummy_probe(ptr nocapture noundef readnone %0, ptr nocapture noundef readnone %1) #3 {
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal i32 @dummy_remove(ptr nocapture noundef readnone %0) #3 {
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @synchronize_srcu(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @synchronize_rcu() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_alias_get_highest_id(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @down_write(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @up_write(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bus_register(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @class_compat_register(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_reconfig_notifier_register(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dev_driver_string(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @___ratelimit(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.thread.pointer() #14

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #20

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #9

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { nofree nounwind null_pointer_is_valid readonly sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { nofree null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { argmemonly nofree nounwind willreturn writeonly }
attributes #10 = { argmemonly nofree nounwind willreturn }
attributes #11 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #12 = { inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #13 = { nounwind readonly }
attributes #14 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #15 = { nofree nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #16 = { nofree nounwind null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #17 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #18 = { null_pointer_is_valid allocsize(0) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #19 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #20 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #21 = { nounwind }
attributes #22 = { cold nounwind }
attributes #23 = { nounwind allocsize(2) }
attributes #24 = { nounwind allocsize(0) }

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
!9 = !{i8 0, i8 2}
!10 = !{!"branch_weights", i32 1, i32 2000}
!11 = !{i64 572804, i64 2148062775, i64 2148062801, i64 2148062848, i64 2148062870, i64 2148062898, i64 2148062918}
!12 = !{i64 2148074987, i64 2148075013, i64 2148075042, i64 2148075076, i64 2148075107, i64 2148075130}
!13 = !{i64 2148077344, i64 2148077370, i64 2148077399, i64 2148077433, i64 2148077464, i64 2148077487}
!14 = !{!"auto-init"}
!15 = !{!"branch_weights", i32 2000, i32 1}
!16 = !{i64 486743}
!17 = !{i64 470775}
!18 = !{i64 2154318370}
!19 = !{i64 2154318526}
!20 = !{i64 2154302205}
!21 = !{i64 2154302363}
!22 = !{i64 2154334520}
!23 = !{i64 2154334678}
!24 = !{i64 2154350469}
!25 = !{i64 2154350629}
