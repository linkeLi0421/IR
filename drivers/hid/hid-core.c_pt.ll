; ModuleID = '/llk/IR/drivers/hid/hid-core.c_pt.bc'
source_filename = "../drivers/hid/hid-core.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_hid_debug:\09\09\09\09\09"
module asm "\09.asciz \09\22hid_debug\22\09\09\09\09\09"
module asm "__kstrtabns_hid_debug:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_hid_register_report:\09\09\09\09\09"
module asm "\09.asciz \09\22hid_register_report\22\09\09\09\09\09"
module asm "__kstrtabns_hid_register_report:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_hid_parse_report:\09\09\09\09\09"
module asm "\09.asciz \09\22hid_parse_report\22\09\09\09\09\09"
module asm "__kstrtabns_hid_parse_report:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_hid_validate_values:\09\09\09\09\09"
module asm "\09.asciz \09\22hid_validate_values\22\09\09\09\09\09"
module asm "__kstrtabns_hid_validate_values:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_hid_setup_resolution_multiplier:\09\09\09\09\09"
module asm "\09.asciz \09\22hid_setup_resolution_multiplier\22\09\09\09\09\09"
module asm "__kstrtabns_hid_setup_resolution_multiplier:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_hid_open_report:\09\09\09\09\09"
module asm "\09.asciz \09\22hid_open_report\22\09\09\09\09\09"
module asm "__kstrtabns_hid_open_report:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_hid_snto32:\09\09\09\09\09"
module asm "\09.asciz \09\22hid_snto32\22\09\09\09\09\09"
module asm "__kstrtabns_hid_snto32:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_hid_field_extract:\09\09\09\09\09"
module asm "\09.asciz \09\22hid_field_extract\22\09\09\09\09\09"
module asm "__kstrtabns_hid_field_extract:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_hid_output_report:\09\09\09\09\09"
module asm "\09.asciz \09\22hid_output_report\22\09\09\09\09\09"
module asm "__kstrtabns_hid_output_report:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_hid_alloc_report_buf:\09\09\09\09\09"
module asm "\09.asciz \09\22hid_alloc_report_buf\22\09\09\09\09\09"
module asm "__kstrtabns_hid_alloc_report_buf:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_hid_set_field:\09\09\09\09\09"
module asm "\09.asciz \09\22hid_set_field\22\09\09\09\09\09"
module asm "__kstrtabns_hid_set_field:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___hid_request:\09\09\09\09\09"
module asm "\09.asciz \09\22__hid_request\22\09\09\09\09\09"
module asm "__kstrtabns___hid_request:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_hid_report_raw_event:\09\09\09\09\09"
module asm "\09.asciz \09\22hid_report_raw_event\22\09\09\09\09\09"
module asm "__kstrtabns_hid_report_raw_event:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_hid_input_report:\09\09\09\09\09"
module asm "\09.asciz \09\22hid_input_report\22\09\09\09\09\09"
module asm "__kstrtabns_hid_input_report:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_hid_connect:\09\09\09\09\09"
module asm "\09.asciz \09\22hid_connect\22\09\09\09\09\09"
module asm "__kstrtabns_hid_connect:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_hid_disconnect:\09\09\09\09\09"
module asm "\09.asciz \09\22hid_disconnect\22\09\09\09\09\09"
module asm "__kstrtabns_hid_disconnect:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_hid_hw_start:\09\09\09\09\09"
module asm "\09.asciz \09\22hid_hw_start\22\09\09\09\09\09"
module asm "__kstrtabns_hid_hw_start:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_hid_hw_stop:\09\09\09\09\09"
module asm "\09.asciz \09\22hid_hw_stop\22\09\09\09\09\09"
module asm "__kstrtabns_hid_hw_stop:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_hid_hw_open:\09\09\09\09\09"
module asm "\09.asciz \09\22hid_hw_open\22\09\09\09\09\09"
module asm "__kstrtabns_hid_hw_open:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_hid_hw_close:\09\09\09\09\09"
module asm "\09.asciz \09\22hid_hw_close\22\09\09\09\09\09"
module asm "__kstrtabns_hid_hw_close:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_hid_hw_request:\09\09\09\09\09"
module asm "\09.asciz \09\22hid_hw_request\22\09\09\09\09\09"
module asm "__kstrtabns_hid_hw_request:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_hid_hw_raw_request:\09\09\09\09\09"
module asm "\09.asciz \09\22hid_hw_raw_request\22\09\09\09\09\09"
module asm "__kstrtabns_hid_hw_raw_request:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_hid_hw_output_report:\09\09\09\09\09"
module asm "\09.asciz \09\22hid_hw_output_report\22\09\09\09\09\09"
module asm "__kstrtabns_hid_hw_output_report:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_hid_driver_suspend:\09\09\09\09\09"
module asm "\09.asciz \09\22hid_driver_suspend\22\09\09\09\09\09"
module asm "__kstrtabns_hid_driver_suspend:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_hid_driver_reset_resume:\09\09\09\09\09"
module asm "\09.asciz \09\22hid_driver_reset_resume\22\09\09\09\09\09"
module asm "__kstrtabns_hid_driver_reset_resume:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_hid_driver_resume:\09\09\09\09\09"
module asm "\09.asciz \09\22hid_driver_resume\22\09\09\09\09\09"
module asm "__kstrtabns_hid_driver_resume:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_hid_match_device:\09\09\09\09\09"
module asm "\09.asciz \09\22hid_match_device\22\09\09\09\09\09"
module asm "__kstrtabns_hid_match_device:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_hid_compare_device_paths:\09\09\09\09\09"
module asm "\09.asciz \09\22hid_compare_device_paths\22\09\09\09\09\09"
module asm "__kstrtabns_hid_compare_device_paths:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_hid_bus_type:\09\09\09\09\09"
module asm "\09.asciz \09\22hid_bus_type\22\09\09\09\09\09"
module asm "__kstrtabns_hid_bus_type:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_hid_add_device:\09\09\09\09\09"
module asm "\09.asciz \09\22hid_add_device\22\09\09\09\09\09"
module asm "__kstrtabns_hid_add_device:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_hid_allocate_device:\09\09\09\09\09"
module asm "\09.asciz \09\22hid_allocate_device\22\09\09\09\09\09"
module asm "__kstrtabns_hid_allocate_device:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_hid_destroy_device:\09\09\09\09\09"
module asm "\09.asciz \09\22hid_destroy_device\22\09\09\09\09\09"
module asm "__kstrtabns_hid_destroy_device:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___hid_register_driver:\09\09\09\09\09"
module asm "\09.asciz \09\22__hid_register_driver\22\09\09\09\09\09"
module asm "__kstrtabns___hid_register_driver:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_hid_unregister_driver:\09\09\09\09\09"
module asm "\09.asciz \09\22hid_unregister_driver\22\09\09\09\09\09"
module asm "__kstrtabns_hid_unregister_driver:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_hid_check_keys_pressed:\09\09\09\09\09"
module asm "\09.asciz \09\22hid_check_keys_pressed\22\09\09\09\09\09"
module asm "__kstrtabns_hid_check_keys_pressed:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.60 }
%union.anon.60 = type { ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.device_attribute = type { %struct.attribute, ptr, ptr }
%struct.attribute = type { ptr, i16 }
%struct.bus_type = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.lock_class_key, i8 }
%struct.lock_class_key = type {}
%struct.atomic_t = type { i32 }
%struct.hid_device_id = type { i16, i16, i32, i32, i32 }
%struct.attribute_group = type { ptr, ptr, ptr, ptr, ptr }
%struct.bin_attribute = type { %struct.attribute, i32, ptr, ptr, ptr, ptr, ptr }
%struct.driver_attribute = type { %struct.attribute, ptr, ptr }
%struct.hid_device = type { ptr, i32, ptr, i32, ptr, i32, i32, i32, i16, i16, i32, i32, i32, i32, i32, [3 x %struct.hid_report_enum], %struct.work_struct, %struct.semaphore, %struct.device, ptr, ptr, %struct.mutex, i32, i32, i32, i32, i8, %struct.list_head, ptr, ptr, [128 x i8], [64 x i8], [64 x i8], ptr, ptr, ptr, ptr, ptr, ptr, i16, ptr, ptr, ptr, %struct.list_head, %struct.spinlock, %struct.wait_queue_head }
%struct.hid_report_enum = type { i32, %struct.list_head, [256 x ptr] }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.semaphore = type { %struct.raw_spinlock, i32, %struct.list_head }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
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
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.hid_report = type { %struct.list_head, %struct.list_head, i32, i32, i32, [256 x ptr], i32, i32, ptr }
%struct.hid_field = type { i32, i32, i32, ptr, i32, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i32, i32, i32, ptr, i32, ptr, i16 }
%struct.hid_usage = type { i32, i32, i32, i8, i8, i16, i8, i8, i8, i8, i16 }
%struct.hid_collection = type { i32, i32, i32, i32 }
%struct.hid_item = type { i32, i8, i8, i8, %union.anon.66 }
%union.anon.66 = type { i32 }
%struct.hid_driver = type { ptr, ptr, %struct.list_head, %struct.spinlock, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.device_driver }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.hid_parser = type { %struct.hid_global, [4 x %struct.hid_global], i32, %struct.hid_local, ptr, i32, i32, ptr, i32 }
%struct.hid_global = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.hid_local = type { [12288 x i32], [12288 x i8], [12288 x i32], i32, i32, i32, i32 }
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
%struct.rb_root = type { ptr }
%struct.task_io_accounting = type {}
%struct.tlbflush_unmap_batch = type {}
%union.anon.48 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.page_frag = type { ptr, i16, i16 }
%struct.kmap_ctrl = type { i32, [16 x i32] }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
%struct.hid_ll_driver = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.hid_report_id = type { i32 }
%struct.hid_dynid = type { %struct.list_head, %struct.hid_device_id }
%struct.hid_input = type { %struct.list_head, ptr, ptr, ptr, i8, %struct.list_head, i32 }
%struct.input_dev = type { ptr, ptr, ptr, %struct.input_id, [1 x i32], [1 x i32], [24 x i32], [1 x i32], [2 x i32], [1 x i32], [1 x i32], [1 x i32], [4 x i32], [1 x i32], i32, i32, i32, ptr, ptr, ptr, ptr, ptr, i32, %struct.timer_list, [2 x i32], ptr, ptr, [24 x i32], [1 x i32], [1 x i32], [1 x i32], ptr, ptr, ptr, ptr, ptr, %struct.spinlock, %struct.mutex, i32, i8, %struct.device, %struct.list_head, %struct.list_head, i32, i32, ptr, i8, [3 x i64], i8 }
%struct.input_id = type { i16, i16, i16, i16 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32 }
%struct.hid_usage_id = type { i32, i32, i32 }

@hid_debug = dso_local global i32 0, align 4
@__param_str_debug = internal constant [10 x i8] c"hid.debug\00", align 1
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 4
@__param_debug = internal constant %struct.kernel_param { ptr @__param_str_debug, ptr null, ptr @param_ops_int, i16 384, i8 -1, i8 0, %union.anon.60 { ptr @hid_debug } }, section "__param", align 4
@__UNIQUE_ID_debugtype220 = internal constant [23 x i8] c"hid.parmtype=debug:int\00", section ".modinfo", align 1
@__UNIQUE_ID_debug221 = internal constant [45 x i8] c"hid.parm=debug:toggle HID debugging messages\00", section ".modinfo", align 1
@__kstrtab_hid_debug = external dso_local constant [0 x i8], align 1
@__kstrtabns_hid_debug = external dso_local constant [0 x i8], align 1
@__ksymtab_hid_debug = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @hid_debug to i32), ptr @__kstrtab_hid_debug, ptr @__kstrtabns_hid_debug }, section "___ksymtab_gpl+hid_debug", align 4
@__param_str_ignore_special_drivers = internal constant [27 x i8] c"hid.ignore_special_drivers\00", align 1
@hid_ignore_special_drivers = internal global i32 0, align 4
@__param_ignore_special_drivers = internal constant %struct.kernel_param { ptr @__param_str_ignore_special_drivers, ptr null, ptr @param_ops_int, i16 384, i8 -1, i8 0, %union.anon.60 { ptr @hid_ignore_special_drivers } }, section "__param", align 4
@__UNIQUE_ID_ignore_special_driverstype222 = internal constant [40 x i8] c"hid.parmtype=ignore_special_drivers:int\00", section ".modinfo", align 1
@__UNIQUE_ID_ignore_special_drivers223 = internal constant [100 x i8] c"hid.parm=ignore_special_drivers:Ignore any special drivers and handle all devices by generic driver\00", section ".modinfo", align 1
@__kstrtab_hid_register_report = external dso_local constant [0 x i8], align 1
@__kstrtabns_hid_register_report = external dso_local constant [0 x i8], align 1
@__ksymtab_hid_register_report = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @hid_register_report to i32), ptr @__kstrtab_hid_register_report, ptr @__kstrtabns_hid_register_report }, section "___ksymtab_gpl+hid_register_report", align 4
@__kstrtab_hid_parse_report = external dso_local constant [0 x i8], align 1
@__kstrtabns_hid_parse_report = external dso_local constant [0 x i8], align 1
@__ksymtab_hid_parse_report = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @hid_parse_report to i32), ptr @__kstrtab_hid_parse_report, ptr @__kstrtabns_hid_parse_report }, section "___ksymtab_gpl+hid_parse_report", align 4
@.str = private unnamed_addr constant [28 x i8] c"invalid HID report type %u\0A\00", align 1
@.str.1 = private unnamed_addr constant [26 x i8] c"invalid HID report id %u\0A\00", align 1
@.str.2 = private unnamed_addr constant [15 x i8] c"missing %s %u\0A\00", align 1
@hid_report_names = internal unnamed_addr constant [3 x ptr] [ptr @.str.45, ptr @.str.46, ptr @.str.47], align 4
@.str.3 = private unnamed_addr constant [28 x i8] c"not enough fields in %s %u\0A\00", align 1
@.str.4 = private unnamed_addr constant [37 x i8] c"not enough values in %s %u field %u\0A\00", align 1
@__kstrtab_hid_validate_values = external dso_local constant [0 x i8], align 1
@__kstrtabns_hid_validate_values = external dso_local constant [0 x i8], align 1
@__ksymtab_hid_validate_values = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @hid_validate_values to i32), ptr @__kstrtab_hid_validate_values, ptr @__kstrtabns_hid_validate_values }, section "___ksymtab_gpl+hid_validate_values", align 4
@__kstrtab_hid_setup_resolution_multiplier = external dso_local constant [0 x i8], align 1
@__kstrtabns_hid_setup_resolution_multiplier = external dso_local constant [0 x i8], align 1
@__ksymtab_hid_setup_resolution_multiplier = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @hid_setup_resolution_multiplier to i32), ptr @__kstrtab_hid_setup_resolution_multiplier, ptr @__kstrtabns_hid_setup_resolution_multiplier }, section "___ksymtab_gpl+hid_setup_resolution_multiplier", align 4
@hid_open_report.dispatch_type = internal unnamed_addr constant [4 x ptr] [ptr @hid_parser_main, ptr @hid_parser_global, ptr @hid_parser_local, ptr @hid_parser_reserved], align 4
@.str.5 = private unnamed_addr constant [23 x i8] c"drivers/hid/hid-core.c\00", align 1
@.str.6 = private unnamed_addr constant [29 x i8] c"unexpected long global item\0A\00", align 1
@.str.7 = private unnamed_addr constant [33 x i8] c"item %u %u %u %u parsing failed\0A\00", align 1
@.str.8 = private unnamed_addr constant [52 x i8] c"unbalanced collection at end of report description\0A\00", align 1
@.str.9 = private unnamed_addr constant [51 x i8] c"unbalanced delimiter at end of report description\0A\00", align 1
@.str.10 = private unnamed_addr constant [38 x i8] c"item fetching failed at offset %u/%u\0A\00", align 1
@__kstrtab_hid_open_report = external dso_local constant [0 x i8], align 1
@__kstrtabns_hid_open_report = external dso_local constant [0 x i8], align 1
@__ksymtab_hid_open_report = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @hid_open_report to i32), ptr @__kstrtab_hid_open_report, ptr @__kstrtabns_hid_open_report }, section "___ksymtab_gpl+hid_open_report", align 4
@__kstrtab_hid_snto32 = external dso_local constant [0 x i8], align 1
@__kstrtabns_hid_snto32 = external dso_local constant [0 x i8], align 1
@__ksymtab_hid_snto32 = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @hid_snto32 to i32), ptr @__kstrtab_hid_snto32, ptr @__kstrtabns_hid_snto32 }, section "___ksymtab_gpl+hid_snto32", align 4
@hid_field_extract.__print_once = internal unnamed_addr global i1 false, section ".data..read_mostly", align 1
@.str.11 = private unnamed_addr constant [36 x i8] c"%s() called with n (%d) > 32! (%s)\0A\00", align 1
@__func__.hid_field_extract = private unnamed_addr constant [18 x i8] c"hid_field_extract\00", align 1
@__kstrtab_hid_field_extract = external dso_local constant [0 x i8], align 1
@__kstrtabns_hid_field_extract = external dso_local constant [0 x i8], align 1
@__ksymtab_hid_field_extract = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @hid_field_extract to i32), ptr @__kstrtab_hid_field_extract, ptr @__kstrtabns_hid_field_extract }, section "___ksymtab_gpl+hid_field_extract", align 4
@__kstrtab_hid_output_report = external dso_local constant [0 x i8], align 1
@__kstrtabns_hid_output_report = external dso_local constant [0 x i8], align 1
@__ksymtab_hid_output_report = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @hid_output_report to i32), ptr @__kstrtab_hid_output_report, ptr @__kstrtabns_hid_output_report }, section "___ksymtab_gpl+hid_output_report", align 4
@__kstrtab_hid_alloc_report_buf = external dso_local constant [0 x i8], align 1
@__kstrtabns_hid_alloc_report_buf = external dso_local constant [0 x i8], align 1
@__ksymtab_hid_alloc_report_buf = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @hid_alloc_report_buf to i32), ptr @__kstrtab_hid_alloc_report_buf, ptr @__kstrtabns_hid_alloc_report_buf }, section "___ksymtab_gpl+hid_alloc_report_buf", align 4
@.str.12 = private unnamed_addr constant [39 x i8] c"offset (%d) exceeds report_count (%d)\0A\00", align 1
@.str.13 = private unnamed_addr constant [26 x i8] c"value %d is out of range\0A\00", align 1
@__kstrtab_hid_set_field = external dso_local constant [0 x i8], align 1
@__kstrtabns_hid_set_field = external dso_local constant [0 x i8], align 1
@__ksymtab_hid_set_field = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @hid_set_field to i32), ptr @__kstrtab_hid_set_field, ptr @__kstrtabns_hid_set_field }, section "___ksymtab_gpl+hid_set_field", align 4
@.str.14 = private unnamed_addr constant [38 x i8] c"\017%s: unable to complete request: %d\0A\00", align 1
@__kstrtab___hid_request = external dso_local constant [0 x i8], align 1
@__kstrtabns___hid_request = external dso_local constant [0 x i8], align 1
@__ksymtab___hid_request = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__hid_request to i32), ptr @__kstrtab___hid_request, ptr @__kstrtabns___hid_request }, section "___ksymtab_gpl+__hid_request", align 4
@.str.15 = private unnamed_addr constant [41 x i8] c"\017%s: report %d is too short, (%d < %d)\0A\00", align 1
@__kstrtab_hid_report_raw_event = external dso_local constant [0 x i8], align 1
@__kstrtabns_hid_report_raw_event = external dso_local constant [0 x i8], align 1
@__ksymtab_hid_report_raw_event = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @hid_report_raw_event to i32), ptr @__kstrtab_hid_report_raw_event, ptr @__kstrtabns_hid_report_raw_event }, section "___ksymtab_gpl+hid_report_raw_event", align 4
@.str.16 = private unnamed_addr constant [20 x i8] c"\017%s: empty report\0A\00", align 1
@__kstrtab_hid_input_report = external dso_local constant [0 x i8], align 1
@__kstrtabns_hid_input_report = external dso_local constant [0 x i8], align 1
@__ksymtab_hid_input_report = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @hid_input_report to i32), ptr @__kstrtab_hid_input_report, ptr @__kstrtabns_hid_input_report }, section "___ksymtab_gpl+hid_input_report", align 4
@hid_connect.types = internal unnamed_addr constant [9 x ptr] [ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.17, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24], align 4
@.str.17 = private unnamed_addr constant [7 x i8] c"Device\00", align 1
@.str.18 = private unnamed_addr constant [8 x i8] c"Pointer\00", align 1
@.str.19 = private unnamed_addr constant [6 x i8] c"Mouse\00", align 1
@.str.20 = private unnamed_addr constant [9 x i8] c"Joystick\00", align 1
@.str.21 = private unnamed_addr constant [8 x i8] c"Gamepad\00", align 1
@.str.22 = private unnamed_addr constant [9 x i8] c"Keyboard\00", align 1
@.str.23 = private unnamed_addr constant [7 x i8] c"Keypad\00", align 1
@.str.24 = private unnamed_addr constant [22 x i8] c"Multi-Axis Controller\00", align 1
@.str.25 = private unnamed_addr constant [35 x i8] c"device has no listeners, quitting\0A\00", align 1
@.str.26 = private unnamed_addr constant [6 x i8] c"input\00", align 1
@.str.27 = private unnamed_addr constant [11 x i8] c"%shiddev%d\00", align 1
@.str.28 = private unnamed_addr constant [2 x i8] c",\00", align 1
@.str.29 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.30 = private unnamed_addr constant [11 x i8] c"%shidraw%d\00", align 1
@.str.31 = private unnamed_addr constant [4 x i8] c"USB\00", align 1
@.str.32 = private unnamed_addr constant [10 x i8] c"BLUETOOTH\00", align 1
@.str.33 = private unnamed_addr constant [4 x i8] c"I2C\00", align 1
@.str.34 = private unnamed_addr constant [8 x i8] c"VIRTUAL\00", align 1
@.str.35 = private unnamed_addr constant [10 x i8] c"<UNKNOWN>\00", align 1
@dev_attr_country = internal constant %struct.device_attribute { %struct.attribute { ptr @.str.75, i16 292 }, ptr @show_country, ptr null }, align 4
@.str.36 = private unnamed_addr constant [51 x i8] c"can't create sysfs country code attribute err: %d\0A\00", align 1
@.str.37 = private unnamed_addr constant [35 x i8] c"%s: %s HID v%x.%02x %s [%s] on %s\0A\00", align 1
@__kstrtab_hid_connect = external dso_local constant [0 x i8], align 1
@__kstrtabns_hid_connect = external dso_local constant [0 x i8], align 1
@__ksymtab_hid_connect = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @hid_connect to i32), ptr @__kstrtab_hid_connect, ptr @__kstrtabns_hid_connect }, section "___ksymtab_gpl+hid_connect", align 4
@__kstrtab_hid_disconnect = external dso_local constant [0 x i8], align 1
@__kstrtabns_hid_disconnect = external dso_local constant [0 x i8], align 1
@__ksymtab_hid_disconnect = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @hid_disconnect to i32), ptr @__kstrtab_hid_disconnect, ptr @__kstrtabns_hid_disconnect }, section "___ksymtab_gpl+hid_disconnect", align 4
@__kstrtab_hid_hw_start = external dso_local constant [0 x i8], align 1
@__kstrtabns_hid_hw_start = external dso_local constant [0 x i8], align 1
@__ksymtab_hid_hw_start = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @hid_hw_start to i32), ptr @__kstrtab_hid_hw_start, ptr @__kstrtabns_hid_hw_start }, section "___ksymtab_gpl+hid_hw_start", align 4
@__kstrtab_hid_hw_stop = external dso_local constant [0 x i8], align 1
@__kstrtabns_hid_hw_stop = external dso_local constant [0 x i8], align 1
@__ksymtab_hid_hw_stop = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @hid_hw_stop to i32), ptr @__kstrtab_hid_hw_stop, ptr @__kstrtabns_hid_hw_stop }, section "___ksymtab_gpl+hid_hw_stop", align 4
@__kstrtab_hid_hw_open = external dso_local constant [0 x i8], align 1
@__kstrtabns_hid_hw_open = external dso_local constant [0 x i8], align 1
@__ksymtab_hid_hw_open = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @hid_hw_open to i32), ptr @__kstrtab_hid_hw_open, ptr @__kstrtabns_hid_hw_open }, section "___ksymtab_gpl+hid_hw_open", align 4
@__kstrtab_hid_hw_close = external dso_local constant [0 x i8], align 1
@__kstrtabns_hid_hw_close = external dso_local constant [0 x i8], align 1
@__ksymtab_hid_hw_close = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @hid_hw_close to i32), ptr @__kstrtab_hid_hw_close, ptr @__kstrtabns_hid_hw_close }, section "___ksymtab_gpl+hid_hw_close", align 4
@__kstrtab_hid_hw_request = external dso_local constant [0 x i8], align 1
@__kstrtabns_hid_hw_request = external dso_local constant [0 x i8], align 1
@__ksymtab_hid_hw_request = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @hid_hw_request to i32), ptr @__kstrtab_hid_hw_request, ptr @__kstrtabns_hid_hw_request }, section "___ksymtab_gpl+hid_hw_request", align 4
@__kstrtab_hid_hw_raw_request = external dso_local constant [0 x i8], align 1
@__kstrtabns_hid_hw_raw_request = external dso_local constant [0 x i8], align 1
@__ksymtab_hid_hw_raw_request = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @hid_hw_raw_request to i32), ptr @__kstrtab_hid_hw_raw_request, ptr @__kstrtabns_hid_hw_raw_request }, section "___ksymtab_gpl+hid_hw_raw_request", align 4
@__kstrtab_hid_hw_output_report = external dso_local constant [0 x i8], align 1
@__kstrtabns_hid_hw_output_report = external dso_local constant [0 x i8], align 1
@__ksymtab_hid_hw_output_report = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @hid_hw_output_report to i32), ptr @__kstrtab_hid_hw_output_report, ptr @__kstrtabns_hid_hw_output_report }, section "___ksymtab_gpl+hid_hw_output_report", align 4
@__kstrtab_hid_driver_suspend = external dso_local constant [0 x i8], align 1
@__kstrtabns_hid_driver_suspend = external dso_local constant [0 x i8], align 1
@__ksymtab_hid_driver_suspend = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @hid_driver_suspend to i32), ptr @__kstrtab_hid_driver_suspend, ptr @__kstrtabns_hid_driver_suspend }, section "___ksymtab_gpl+hid_driver_suspend", align 4
@__kstrtab_hid_driver_reset_resume = external dso_local constant [0 x i8], align 1
@__kstrtabns_hid_driver_reset_resume = external dso_local constant [0 x i8], align 1
@__ksymtab_hid_driver_reset_resume = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @hid_driver_reset_resume to i32), ptr @__kstrtab_hid_driver_reset_resume, ptr @__kstrtabns_hid_driver_reset_resume }, section "___ksymtab_gpl+hid_driver_reset_resume", align 4
@__kstrtab_hid_driver_resume = external dso_local constant [0 x i8], align 1
@__kstrtabns_hid_driver_resume = external dso_local constant [0 x i8], align 1
@__ksymtab_hid_driver_resume = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @hid_driver_resume to i32), ptr @__kstrtab_hid_driver_resume, ptr @__kstrtabns_hid_driver_resume }, section "___ksymtab_gpl+hid_driver_resume", align 4
@__kstrtab_hid_match_device = external dso_local constant [0 x i8], align 1
@__kstrtabns_hid_match_device = external dso_local constant [0 x i8], align 1
@__ksymtab_hid_match_device = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @hid_match_device to i32), ptr @__kstrtab_hid_match_device, ptr @__kstrtabns_hid_match_device }, section "___ksymtab_gpl+hid_match_device", align 4
@__kstrtab_hid_compare_device_paths = external dso_local constant [0 x i8], align 1
@__kstrtabns_hid_compare_device_paths = external dso_local constant [0 x i8], align 1
@__ksymtab_hid_compare_device_paths = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @hid_compare_device_paths to i32), ptr @__kstrtab_hid_compare_device_paths, ptr @__kstrtabns_hid_compare_device_paths }, section "___ksymtab_gpl+hid_compare_device_paths", align 4
@.str.38 = private unnamed_addr constant [4 x i8] c"hid\00", align 1
@hid_dev_groups = internal global [2 x ptr] [ptr @hid_dev_group, ptr null], align 4
@hid_drv_groups = internal global [2 x ptr] [ptr @hid_drv_group, ptr null], align 4
@hid_bus_type = dso_local global %struct.bus_type { ptr @.str.38, ptr null, ptr null, ptr null, ptr @hid_dev_groups, ptr @hid_drv_groups, ptr @hid_bus_match, ptr @hid_uevent, ptr @hid_device_probe, ptr null, ptr @hid_device_remove, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.lock_class_key zeroinitializer, i8 0 }, align 4
@__kstrtab_hid_bus_type = external dso_local constant [0 x i8], align 1
@__kstrtabns_hid_bus_type = external dso_local constant [0 x i8], align 1
@__ksymtab_hid_bus_type = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @hid_bus_type to i32), ptr @__kstrtab_hid_bus_type, ptr @__kstrtabns_hid_bus_type }, section "___ksymtab+hid_bus_type", align 4
@hid_add_device.id = internal global %struct.atomic_t zeroinitializer, align 4
@.str.39 = private unnamed_addr constant [41 x i8] c"transport driver missing .raw_request()\0A\00", align 1
@.str.40 = private unnamed_addr constant [28 x i8] c"bad device descriptor (%d)\0A\00", align 1
@.str.41 = private unnamed_addr constant [20 x i8] c"%04X:%04X:%04X.%04X\00", align 1
@__kstrtab_hid_add_device = external dso_local constant [0 x i8], align 1
@__kstrtabns_hid_add_device = external dso_local constant [0 x i8], align 1
@__ksymtab_hid_add_device = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @hid_add_device to i32), ptr @__kstrtab_hid_add_device, ptr @__kstrtabns_hid_add_device }, section "___ksymtab_gpl+hid_add_device", align 4
@hid_allocate_device.__key = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.42 = private unnamed_addr constant [18 x i8] c"&hdev->debug_wait\00", align 1
@hid_allocate_device.__key.43 = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.44 = private unnamed_addr constant [20 x i8] c"&hdev->ll_open_lock\00", align 1
@__kstrtab_hid_allocate_device = external dso_local constant [0 x i8], align 1
@__kstrtabns_hid_allocate_device = external dso_local constant [0 x i8], align 1
@__ksymtab_hid_allocate_device = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @hid_allocate_device to i32), ptr @__kstrtab_hid_allocate_device, ptr @__kstrtabns_hid_allocate_device }, section "___ksymtab_gpl+hid_allocate_device", align 4
@__kstrtab_hid_destroy_device = external dso_local constant [0 x i8], align 1
@__kstrtabns_hid_destroy_device = external dso_local constant [0 x i8], align 1
@__ksymtab_hid_destroy_device = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @hid_destroy_device to i32), ptr @__kstrtab_hid_destroy_device, ptr @__kstrtabns_hid_destroy_device }, section "___ksymtab_gpl+hid_destroy_device", align 4
@__kstrtab___hid_register_driver = external dso_local constant [0 x i8], align 1
@__kstrtabns___hid_register_driver = external dso_local constant [0 x i8], align 1
@__ksymtab___hid_register_driver = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__hid_register_driver to i32), ptr @__kstrtab___hid_register_driver, ptr @__kstrtabns___hid_register_driver }, section "___ksymtab_gpl+__hid_register_driver", align 4
@__kstrtab_hid_unregister_driver = external dso_local constant [0 x i8], align 1
@__kstrtabns_hid_unregister_driver = external dso_local constant [0 x i8], align 1
@__ksymtab_hid_unregister_driver = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @hid_unregister_driver to i32), ptr @__kstrtab_hid_unregister_driver, ptr @__kstrtabns_hid_unregister_driver }, section "___ksymtab_gpl+hid_unregister_driver", align 4
@__kstrtab_hid_check_keys_pressed = external dso_local constant [0 x i8], align 1
@__kstrtabns_hid_check_keys_pressed = external dso_local constant [0 x i8], align 1
@__ksymtab_hid_check_keys_pressed = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @hid_check_keys_pressed to i32), ptr @__kstrtab_hid_check_keys_pressed, ptr @__kstrtabns_hid_check_keys_pressed }, section "___ksymtab_gpl+hid_check_keys_pressed", align 4
@__initcall__kmod_hid__226_2718_hid_init6 = internal global ptr @hid_init, section ".initcall6.init", align 4
@__exitcall_hid_exit = internal global ptr @hid_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author227 = internal constant [23 x i8] c"hid.author=Andreas Gal\00", section ".modinfo", align 1
@__UNIQUE_ID_author228 = internal constant [26 x i8] c"hid.author=Vojtech Pavlik\00", section ".modinfo", align 1
@__UNIQUE_ID_author229 = internal constant [23 x i8] c"hid.author=Jiri Kosina\00", section ".modinfo", align 1
@__UNIQUE_ID_file230 = internal constant [25 x i8] c"hid.file=drivers/hid/hid\00", section ".modinfo", align 1
@__UNIQUE_ID_license231 = internal constant [16 x i8] c"hid.license=GPL\00", section ".modinfo", align 1
@.str.45 = private unnamed_addr constant [17 x i8] c"HID_INPUT_REPORT\00", align 1
@.str.46 = private unnamed_addr constant [18 x i8] c"HID_OUTPUT_REPORT\00", align 1
@.str.47 = private unnamed_addr constant [19 x i8] c"HID_FEATURE_REPORT\00", align 1
@.str.48 = private unnamed_addr constant [52 x i8] c"unsupported Resolution Multiplier unit exponent %d\0A\00", align 1
@.str.49 = private unnamed_addr constant [38 x i8] c"unsupported Resolution Multiplier %d\0A\00", align 1
@.str.50 = private unnamed_addr constant [28 x i8] c"unknown main item tag 0x%x\0A\00", align 1
@.str.51 = private unnamed_addr constant [39 x i8] c"failed to reallocate collection array\0A\00", align 1
@.str.52 = private unnamed_addr constant [28 x i8] c"collection stack underflow\0A\00", align 1
@.str.53 = private unnamed_addr constant [28 x i8] c"hid_register_report failed\0A\00", align 1
@.str.54 = private unnamed_addr constant [39 x i8] c"\017%s: logical range invalid 0x%x 0x%x\0A\00", align 1
@.str.55 = private unnamed_addr constant [20 x i8] c"report is too long\0A\00", align 1
@.str.56 = private unnamed_addr constant [27 x i8] c"too many fields in report\0A\00", align 1
@.str.57 = private unnamed_addr constant [35 x i8] c"global environment stack overflow\0A\00", align 1
@.str.58 = private unnamed_addr constant [36 x i8] c"global environment stack underflow\0A\00", align 1
@.str.59 = private unnamed_addr constant [24 x i8] c"invalid report_size %d\0A\00", align 1
@.str.60 = private unnamed_addr constant [25 x i8] c"invalid report_count %d\0A\00", align 1
@.str.61 = private unnamed_addr constant [25 x i8] c"report_id %u is invalid\0A\00", align 1
@.str.62 = private unnamed_addr constant [25 x i8] c"unknown global tag 0x%x\0A\00", align 1
@.str.63 = private unnamed_addr constant [19 x i8] c"nested delimiters\0A\00", align 1
@.str.64 = private unnamed_addr constant [23 x i8] c"bogus close delimiter\0A\00", align 1
@.str.65 = private unnamed_addr constant [33 x i8] c"\017%s: alternative usage ignored\0A\00", align 1
@.str.66 = private unnamed_addr constant [30 x i8] c"ignoring exceeding usage max\0A\00", align 1
@.str.67 = private unnamed_addr constant [31 x i8] c"no more usage index available\0A\00", align 1
@.str.68 = private unnamed_addr constant [28 x i8] c"\017%s: hid_add_usage failed\0A\00", align 1
@.str.69 = private unnamed_addr constant [35 x i8] c"\017%s: unknown local item tag 0x%x\0A\00", align 1
@.str.70 = private unnamed_addr constant [22 x i8] c"usage index exceeded\0A\00", align 1
@.str.71 = private unnamed_addr constant [36 x i8] c"\017%s: reserved item type, tag 0x%x\0A\00", align 1
@__func__.implement = private unnamed_addr constant [10 x i8] c"implement\00", align 1
@.str.72 = private unnamed_addr constant [51 x i8] c"%s() called with too large value %d (n: %d)! (%s)\0A\00", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@.str.73 = private unnamed_addr constant [39 x i8] c"\017%s: undefined report_id %u received\0A\00", align 1
@.str.74 = private unnamed_addr constant [27 x i8] c"%s's event failed with %d\0A\00", align 1
@hid_hiddev_list = internal constant [3 x %struct.hid_device_id] [%struct.hid_device_id { i16 3, i16 0, i32 1123, i32 65535, i32 0 }, %struct.hid_device_id { i16 3, i16 0, i32 1123, i32 1, i32 0 }, %struct.hid_device_id zeroinitializer], align 4
@.str.75 = private unnamed_addr constant [8 x i8] c"country\00", align 1
@.str.76 = private unnamed_addr constant [6 x i8] c"%02x\0A\00", align 1
@hid_dev_group = internal constant %struct.attribute_group { ptr null, ptr null, ptr null, ptr @hid_dev_attrs, ptr @hid_dev_bin_attrs }, align 4
@hid_dev_attrs = internal global [2 x ptr] [ptr @dev_attr_modalias, ptr null], align 4
@hid_dev_bin_attrs = internal global [2 x ptr] [ptr @dev_bin_attr_report_desc, ptr null], align 4
@dev_attr_modalias = internal global %struct.device_attribute { %struct.attribute { ptr @.str.77, i16 292 }, ptr @modalias_show, ptr null }, align 4
@.str.77 = private unnamed_addr constant [9 x i8] c"modalias\00", align 1
@.str.78 = private unnamed_addr constant [26 x i8] c"hid:b%04Xg%04Xv%08Xp%08X\0A\00", align 1
@dev_bin_attr_report_desc = internal global %struct.bin_attribute { %struct.attribute { ptr @.str.79, i16 292 }, i32 4096, ptr null, ptr null, ptr @read_report_descriptor, ptr null, ptr null }, align 4
@.str.79 = private unnamed_addr constant [18 x i8] c"report_descriptor\00", align 1
@hid_drv_group = internal constant %struct.attribute_group { ptr null, ptr null, ptr null, ptr @hid_drv_attrs, ptr null }, align 4
@hid_drv_attrs = internal global [2 x ptr] [ptr @driver_attr_new_id, ptr null], align 4
@driver_attr_new_id = internal global %struct.driver_attribute { %struct.attribute { ptr @.str.80, i16 128 }, ptr null, ptr @new_id_store }, align 4
@.str.80 = private unnamed_addr constant [7 x i8] c"new_id\00", align 1
@.str.81 = private unnamed_addr constant [13 x i8] c"%x %x %x %lx\00", align 1
@.str.82 = private unnamed_addr constant [22 x i8] c"HID_ID=%04X:%08X:%08X\00", align 1
@.str.83 = private unnamed_addr constant [12 x i8] c"HID_NAME=%s\00", align 1
@.str.84 = private unnamed_addr constant [12 x i8] c"HID_PHYS=%s\00", align 1
@.str.85 = private unnamed_addr constant [12 x i8] c"HID_UNIQ=%s\00", align 1
@.str.86 = private unnamed_addr constant [34 x i8] c"MODALIAS=hid:b%04Xg%04Xv%08Xp%08X\00", align 1
@hid_scan_report.dispatch_type = internal unnamed_addr constant [4 x ptr] [ptr @hid_scan_main, ptr @hid_parser_global, ptr @hid_parser_local, ptr @hid_parser_reserved], align 4
@.str.88 = private unnamed_addr constant [145 x i8] c"\014hid: hid_debug is now used solely for parser and driver debugging.\0Adebugfs is now used for inspecting the device (report descriptor, reports)\0A\00", align 1
@.str.89 = private unnamed_addr constant [31 x i8] c"\013hid: can't register hid bus\0A\00", align 1
@llvm.compiler.used = appending global [49 x ptr] [ptr @__UNIQUE_ID_author227, ptr @__UNIQUE_ID_author228, ptr @__UNIQUE_ID_author229, ptr @__UNIQUE_ID_debug221, ptr @__UNIQUE_ID_debugtype220, ptr @__UNIQUE_ID_file230, ptr @__UNIQUE_ID_ignore_special_drivers223, ptr @__UNIQUE_ID_ignore_special_driverstype222, ptr @__UNIQUE_ID_license231, ptr @__exitcall_hid_exit, ptr @__initcall__kmod_hid__226_2718_hid_init6, ptr @__ksymtab___hid_register_driver, ptr @__ksymtab___hid_request, ptr @__ksymtab_hid_add_device, ptr @__ksymtab_hid_alloc_report_buf, ptr @__ksymtab_hid_allocate_device, ptr @__ksymtab_hid_bus_type, ptr @__ksymtab_hid_check_keys_pressed, ptr @__ksymtab_hid_compare_device_paths, ptr @__ksymtab_hid_connect, ptr @__ksymtab_hid_debug, ptr @__ksymtab_hid_destroy_device, ptr @__ksymtab_hid_disconnect, ptr @__ksymtab_hid_driver_reset_resume, ptr @__ksymtab_hid_driver_resume, ptr @__ksymtab_hid_driver_suspend, ptr @__ksymtab_hid_field_extract, ptr @__ksymtab_hid_hw_close, ptr @__ksymtab_hid_hw_open, ptr @__ksymtab_hid_hw_output_report, ptr @__ksymtab_hid_hw_raw_request, ptr @__ksymtab_hid_hw_request, ptr @__ksymtab_hid_hw_start, ptr @__ksymtab_hid_hw_stop, ptr @__ksymtab_hid_input_report, ptr @__ksymtab_hid_match_device, ptr @__ksymtab_hid_open_report, ptr @__ksymtab_hid_output_report, ptr @__ksymtab_hid_parse_report, ptr @__ksymtab_hid_register_report, ptr @__ksymtab_hid_report_raw_event, ptr @__ksymtab_hid_set_field, ptr @__ksymtab_hid_setup_resolution_multiplier, ptr @__ksymtab_hid_snto32, ptr @__ksymtab_hid_unregister_driver, ptr @__ksymtab_hid_validate_values, ptr @__param_debug, ptr @__param_ignore_special_drivers, ptr @hid_exit], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @hid_register_report(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) #0 {
  %5 = getelementptr inbounds %struct.hid_device, ptr %0, i32 0, i32 15
  %6 = getelementptr %struct.hid_report_enum, ptr %5, i32 %1
  %7 = icmp ugt i32 %2, 255
  br i1 %7, label %29, label %8

8:                                                ; preds = %4
  %9 = getelementptr %struct.hid_report_enum, ptr %5, i32 %1, i32 2, i32 %2
  %10 = load ptr, ptr %9, align 4
  %11 = icmp eq ptr %10, null
  br i1 %11, label %12, label %29

12:                                               ; preds = %8
  %13 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11), align 4
  %14 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %13, i32 noundef 3520, i32 noundef 1064) #21
  %15 = icmp eq ptr %14, null
  br i1 %15, label %29, label %16

16:                                               ; preds = %12
  %17 = icmp eq i32 %2, 0
  br i1 %17, label %19, label %18

18:                                               ; preds = %16
  store i32 1, ptr %6, align 4
  br label %19

19:                                               ; preds = %18, %16
  %20 = getelementptr inbounds %struct.hid_report, ptr %14, i32 0, i32 2
  store i32 %2, ptr %20, align 8
  %21 = getelementptr inbounds %struct.hid_report, ptr %14, i32 0, i32 3
  store i32 %1, ptr %21, align 4
  %22 = getelementptr inbounds %struct.hid_report, ptr %14, i32 0, i32 7
  store i32 0, ptr %22, align 8
  %23 = getelementptr inbounds %struct.hid_report, ptr %14, i32 0, i32 8
  store ptr %0, ptr %23, align 4
  %24 = getelementptr inbounds %struct.hid_report, ptr %14, i32 0, i32 4
  store i32 %3, ptr %24, align 8
  store ptr %14, ptr %9, align 4
  %25 = getelementptr %struct.hid_report_enum, ptr %5, i32 %1, i32 1
  %26 = getelementptr %struct.hid_report_enum, ptr %5, i32 %1, i32 1, i32 1
  %27 = load ptr, ptr %26, align 4
  store ptr %14, ptr %26, align 4
  store ptr %25, ptr %14, align 8
  %28 = getelementptr inbounds %struct.list_head, ptr %14, i32 0, i32 1
  store ptr %27, ptr %28, align 4
  store volatile ptr %14, ptr %27, align 4
  br label %29

29:                                               ; preds = %19, %12, %8, %4
  %30 = phi ptr [ %14, %19 ], [ null, %4 ], [ %10, %8 ], [ null, %12 ]
  ret ptr %30
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @hid_parse_report(ptr nocapture noundef writeonly %0, ptr noundef %1, i32 noundef %2) #0 {
  %4 = tail call ptr @kmemdup(ptr noundef %1, i32 noundef %2, i32 noundef 3264) #22
  store ptr %4, ptr %0, align 8
  %5 = icmp eq ptr %4, null
  br i1 %5, label %8, label %6

6:                                                ; preds = %3
  %7 = getelementptr inbounds %struct.hid_device, ptr %0, i32 0, i32 1
  store i32 %2, ptr %7, align 4
  br label %8

8:                                                ; preds = %6, %3
  %9 = phi i32 [ 0, %6 ], [ -12, %3 ]
  ret i32 %9
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kmemdup(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @hid_validate_values(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) #0 {
  %6 = icmp ugt i32 %1, 2
  br i1 %6, label %7, label %9

7:                                                ; preds = %5
  %8 = getelementptr inbounds %struct.hid_device, ptr %0, i32 0, i32 18
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %8, ptr noundef nonnull @.str, i32 noundef %1) #23
  br label %42

9:                                                ; preds = %5
  %10 = icmp ugt i32 %2, 255
  br i1 %10, label %11, label %13

11:                                               ; preds = %9
  %12 = getelementptr inbounds %struct.hid_device, ptr %0, i32 0, i32 18
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %12, ptr noundef nonnull @.str.1, i32 noundef %2) #23
  br label %42

13:                                               ; preds = %9
  %14 = icmp eq i32 %2, 0
  %15 = getelementptr %struct.hid_device, ptr %0, i32 0, i32 15, i32 %1, i32 1
  %16 = getelementptr %struct.hid_device, ptr %0, i32 0, i32 15, i32 %1, i32 2, i32 %2
  %17 = select i1 %14, ptr %15, ptr %16
  %18 = load ptr, ptr %17, align 4
  %19 = icmp eq ptr %18, null
  br i1 %19, label %20, label %24

20:                                               ; preds = %13
  %21 = getelementptr inbounds %struct.hid_device, ptr %0, i32 0, i32 18
  %22 = getelementptr [3 x ptr], ptr @hid_report_names, i32 0, i32 %1
  %23 = load ptr, ptr %22, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %21, ptr noundef nonnull @.str.2, ptr noundef %23, i32 noundef %2) #23
  br label %42

24:                                               ; preds = %13
  %25 = getelementptr inbounds %struct.hid_report, ptr %18, i32 0, i32 6
  %26 = load i32, ptr %25, align 4
  %27 = icmp ugt i32 %26, %3
  br i1 %27, label %32, label %28

28:                                               ; preds = %24
  %29 = getelementptr inbounds %struct.hid_device, ptr %0, i32 0, i32 18
  %30 = getelementptr [3 x ptr], ptr @hid_report_names, i32 0, i32 %1
  %31 = load ptr, ptr %30, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %29, ptr noundef nonnull @.str.3, ptr noundef %31, i32 noundef %2) #23
  br label %42

32:                                               ; preds = %24
  %33 = getelementptr %struct.hid_report, ptr %18, i32 0, i32 5, i32 %3
  %34 = load ptr, ptr %33, align 4
  %35 = getelementptr inbounds %struct.hid_field, ptr %34, i32 0, i32 8
  %36 = load i32, ptr %35, align 4
  %37 = icmp ult i32 %36, %4
  br i1 %37, label %38, label %42

38:                                               ; preds = %32
  %39 = getelementptr inbounds %struct.hid_device, ptr %0, i32 0, i32 18
  %40 = getelementptr [3 x ptr], ptr @hid_report_names, i32 0, i32 %1
  %41 = load ptr, ptr %40, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %39, ptr noundef nonnull @.str.4, ptr noundef %41, i32 noundef %2, i32 noundef %3) #23
  br label %42

42:                                               ; preds = %38, %32, %28, %20, %11, %7
  %43 = phi ptr [ null, %7 ], [ null, %11 ], [ null, %28 ], [ null, %38 ], [ null, %20 ], [ %18, %32 ]
  ret ptr %43
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @hid_setup_resolution_multiplier(ptr noundef %0) #0 {
  %2 = getelementptr %struct.hid_device, ptr %0, i32 0, i32 15, i32 2, i32 1
  %3 = load ptr, ptr %2, align 4
  %4 = icmp eq ptr %3, %2
  br i1 %4, label %146, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.hid_device, ptr %0, i32 0, i32 4
  %7 = getelementptr inbounds %struct.hid_device, ptr %0, i32 0, i32 18
  %8 = getelementptr inbounds %struct.hid_device, ptr %0, i32 0, i32 15, i32 0, i32 1
  br label %12

9:                                                ; preds = %142, %12
  %10 = load ptr, ptr %13, align 4
  %11 = icmp eq ptr %10, %2
  br i1 %11, label %146, label %12

12:                                               ; preds = %9, %5
  %13 = phi ptr [ %3, %5 ], [ %10, %9 ]
  %14 = getelementptr inbounds %struct.hid_report, ptr %13, i32 0, i32 6
  %15 = load i32, ptr %14, align 4
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %9, label %17

17:                                               ; preds = %142, %12
  %18 = phi i32 [ %143, %142 ], [ %15, %12 ]
  %19 = phi i32 [ %144, %142 ], [ 0, %12 ]
  %20 = getelementptr %struct.hid_report, ptr %13, i32 0, i32 5, i32 %19
  %21 = load ptr, ptr %20, align 4
  %22 = getelementptr inbounds %struct.hid_field, ptr %21, i32 0, i32 8
  %23 = load i32, ptr %22, align 4
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %142, label %25

25:                                               ; preds = %17
  %26 = getelementptr inbounds %struct.hid_field, ptr %21, i32 0, i32 4
  %27 = load i32, ptr %26, align 4
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %142, label %29

29:                                               ; preds = %134, %25
  %30 = phi ptr [ %136, %134 ], [ %21, %25 ]
  %31 = phi i32 [ %135, %134 ], [ 0, %25 ]
  %32 = getelementptr inbounds %struct.hid_field, ptr %30, i32 0, i32 3
  %33 = load ptr, ptr %32, align 4
  %34 = getelementptr %struct.hid_usage, ptr %33, i32 %31
  %35 = load i32, ptr %34, align 4
  %36 = icmp eq i32 %35, 65608
  br i1 %36, label %37, label %134

37:                                               ; preds = %29
  %38 = load ptr, ptr %6, align 8
  %39 = getelementptr inbounds %struct.hid_usage, ptr %33, i32 0, i32 1
  %40 = load i32, ptr %39, align 4
  br label %41

41:                                               ; preds = %46, %37
  %42 = phi i32 [ %40, %37 ], [ %44, %46 ]
  %43 = getelementptr %struct.hid_collection, ptr %38, i32 %42
  %44 = load i32, ptr %43, align 4
  %45 = icmp eq i32 %44, -1
  br i1 %45, label %50, label %46

46:                                               ; preds = %41
  %47 = getelementptr %struct.hid_collection, ptr %38, i32 %42, i32 1
  %48 = load i32, ptr %47, align 4
  %49 = icmp eq i32 %48, 2
  br i1 %49, label %50, label %41

50:                                               ; preds = %46, %41
  %51 = getelementptr inbounds %struct.hid_field, ptr %30, i32 0, i32 11
  %52 = load i32, ptr %51, align 4
  %53 = getelementptr inbounds %struct.hid_field, ptr %30, i32 0, i32 12
  %54 = load i32, ptr %53, align 4
  %55 = icmp eq i32 %54, %52
  br i1 %55, label %80, label %56

56:                                               ; preds = %50
  %57 = sub i32 %54, %52
  %58 = getelementptr inbounds %struct.hid_field, ptr %30, i32 0, i32 14
  %59 = load i32, ptr %58, align 4
  %60 = getelementptr inbounds %struct.hid_field, ptr %30, i32 0, i32 13
  %61 = load i32, ptr %60, align 4
  %62 = getelementptr inbounds %struct.hid_field, ptr %30, i32 0, i32 10
  %63 = load ptr, ptr %62, align 4
  %64 = load i32, ptr %63, align 4
  %65 = sub i32 %64, %52
  %66 = sdiv i32 %65, %57
  %67 = sub i32 %59, %61
  %68 = mul i32 %66, %67
  %69 = add i32 %68, %61
  %70 = getelementptr inbounds %struct.hid_field, ptr %30, i32 0, i32 15
  %71 = load i32, ptr %70, align 4
  %72 = icmp eq i32 %71, 0
  br i1 %72, label %74, label %73, !prof !8

73:                                               ; preds = %56
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %7, ptr noundef nonnull @.str.48, i32 noundef %71) #23
  br label %74

74:                                               ; preds = %73, %56
  %75 = icmp eq i32 %69, 0
  %76 = add i32 %69, -256
  %77 = icmp ult i32 %76, -511
  %78 = or i1 %75, %77
  br i1 %78, label %79, label %80, !prof !9

79:                                               ; preds = %74
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %7, ptr noundef nonnull @.str.49, i32 noundef %69) #23
  br label %80

80:                                               ; preds = %79, %74, %50
  %81 = phi i32 [ 1, %50 ], [ 1, %79 ], [ %69, %74 ]
  %82 = load ptr, ptr %8, align 4
  %83 = icmp eq ptr %82, %8
  br i1 %83, label %134, label %84

84:                                               ; preds = %80
  %85 = icmp eq ptr %43, null
  %86 = trunc i32 %81 to i8
  br label %90

87:                                               ; preds = %130, %90
  %88 = load ptr, ptr %91, align 4
  %89 = icmp eq ptr %88, %8
  br i1 %89, label %134, label %90

90:                                               ; preds = %87, %84
  %91 = phi ptr [ %82, %84 ], [ %88, %87 ]
  %92 = getelementptr inbounds %struct.hid_report, ptr %91, i32 0, i32 6
  %93 = load i32, ptr %92, align 4
  %94 = icmp eq i32 %93, 0
  br i1 %94, label %87, label %95

95:                                               ; preds = %130, %90
  %96 = phi i32 [ %131, %130 ], [ %93, %90 ]
  %97 = phi i32 [ %132, %130 ], [ 0, %90 ]
  %98 = getelementptr %struct.hid_report, ptr %91, i32 0, i32 5, i32 %97
  %99 = load ptr, ptr %98, align 4
  %100 = getelementptr inbounds %struct.hid_field, ptr %99, i32 0, i32 4
  %101 = load i32, ptr %100, align 4
  %102 = icmp eq i32 %101, 0
  br i1 %102, label %130, label %103

103:                                              ; preds = %95
  %104 = getelementptr inbounds %struct.hid_field, ptr %99, i32 0, i32 3
  br label %105

105:                                              ; preds = %124, %103
  %106 = phi i32 [ %101, %103 ], [ %125, %124 ]
  %107 = phi i32 [ 0, %103 ], [ %126, %124 ]
  %108 = load ptr, ptr %104, align 4
  %109 = load ptr, ptr %6, align 8
  %110 = getelementptr %struct.hid_usage, ptr %108, i32 %107, i32 1
  %111 = load i32, ptr %110, align 4
  br label %112

112:                                              ; preds = %112, %105
  %113 = phi i32 [ %111, %105 ], [ %115, %112 ]
  %114 = getelementptr %struct.hid_collection, ptr %109, i32 %113
  %115 = load i32, ptr %114, align 4
  %116 = icmp ne i32 %115, -1
  %117 = icmp ne ptr %114, %43
  %118 = and i1 %116, %117
  br i1 %118, label %112, label %119

119:                                              ; preds = %112
  %120 = or i1 %85, %116
  br i1 %120, label %121, label %124

121:                                              ; preds = %119
  %122 = getelementptr %struct.hid_usage, ptr %108, i32 %107, i32 3
  store i8 %86, ptr %122, align 4
  %123 = load i32, ptr %100, align 4
  br label %124

124:                                              ; preds = %121, %119
  %125 = phi i32 [ %123, %121 ], [ %106, %119 ]
  %126 = add nuw i32 %107, 1
  %127 = icmp ult i32 %126, %125
  br i1 %127, label %105, label %128

128:                                              ; preds = %124
  %129 = load i32, ptr %92, align 4
  br label %130

130:                                              ; preds = %128, %95
  %131 = phi i32 [ %129, %128 ], [ %96, %95 ]
  %132 = add nuw i32 %97, 1
  %133 = icmp ult i32 %132, %131
  br i1 %133, label %95, label %87

134:                                              ; preds = %87, %80, %29
  %135 = add nuw i32 %31, 1
  %136 = load ptr, ptr %20, align 4
  %137 = getelementptr inbounds %struct.hid_field, ptr %136, i32 0, i32 4
  %138 = load i32, ptr %137, align 4
  %139 = icmp ult i32 %135, %138
  br i1 %139, label %29, label %140

140:                                              ; preds = %134
  %141 = load i32, ptr %14, align 4
  br label %142

142:                                              ; preds = %140, %25, %17
  %143 = phi i32 [ %141, %140 ], [ %18, %25 ], [ %18, %17 ]
  %144 = add nuw i32 %19, 1
  %145 = icmp ult i32 %144, %143
  br i1 %145, label %17, label %9

146:                                              ; preds = %9, %1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @hid_open_report(ptr noundef %0) #0 {
  %2 = alloca %struct.hid_item, align 4
  %3 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %2) #22
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(12) %2, i8 0, i32 12, i1 false), !annotation !10
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #22
  %4 = getelementptr inbounds %struct.hid_device, ptr %0, i32 0, i32 23
  %5 = load i32, ptr %4, align 8
  %6 = and i32 %5, 2
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %9, label %8, !prof !8

8:                                                ; preds = %1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.5, i32 noundef 1208, i32 noundef 9, ptr noundef null) #22
  br label %159

9:                                                ; preds = %1
  %10 = load ptr, ptr %0, align 8
  %11 = icmp eq ptr %10, null
  br i1 %11, label %12, label %13, !prof !9

12:                                               ; preds = %9
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.5, i32 noundef 1212, i32 noundef 9, ptr noundef null) #22
  br label %159

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct.hid_device, ptr %0, i32 0, i32 1
  %15 = load i32, ptr %14, align 4
  store i32 %15, ptr %3, align 4
  %16 = tail call ptr @kmemdup(ptr noundef nonnull %10, i32 noundef %15, i32 noundef 3264) #22
  %17 = icmp eq ptr %16, null
  br i1 %17, label %159, label %18

18:                                               ; preds = %13
  %19 = getelementptr inbounds %struct.hid_device, ptr %0, i32 0, i32 19
  %20 = load ptr, ptr %19, align 8
  %21 = getelementptr inbounds %struct.hid_driver, ptr %20, i32 0, i32 12
  %22 = load ptr, ptr %21, align 4
  %23 = icmp eq ptr %22, null
  br i1 %23, label %27, label %24

24:                                               ; preds = %18
  %25 = call ptr %22(ptr noundef %0, ptr noundef nonnull %16, ptr noundef nonnull %3) #22
  %26 = load i32, ptr %3, align 4
  br label %27

27:                                               ; preds = %24, %18
  %28 = phi i32 [ %26, %24 ], [ %15, %18 ]
  %29 = phi ptr [ %25, %24 ], [ %16, %18 ]
  %30 = call ptr @kmemdup(ptr noundef %29, i32 noundef %28, i32 noundef 3264) #22
  call void @kfree(ptr noundef nonnull %16) #22
  %31 = icmp eq ptr %30, null
  br i1 %31, label %159, label %32

32:                                               ; preds = %27
  %33 = getelementptr inbounds %struct.hid_device, ptr %0, i32 0, i32 2
  store ptr %30, ptr %33, align 8
  %34 = load i32, ptr %3, align 4
  %35 = getelementptr inbounds %struct.hid_device, ptr %0, i32 0, i32 3
  store i32 %34, ptr %35, align 4
  %36 = call noalias ptr @vzalloc(i32 noundef 110832) #24
  %37 = icmp eq ptr %36, null
  br i1 %37, label %157, label %38

38:                                               ; preds = %32
  %39 = getelementptr inbounds %struct.hid_parser, ptr %36, i32 0, i32 7
  store ptr %0, ptr %39, align 4
  %40 = load i32, ptr %3, align 4
  %41 = getelementptr i8, ptr %30, i32 %40
  %42 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %43 = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %42, i32 noundef 3520, i32 noundef 256) #21
  %44 = getelementptr inbounds %struct.hid_device, ptr %0, i32 0, i32 4
  store ptr %43, ptr %44, align 8
  %45 = icmp eq ptr %43, null
  br i1 %45, label %153, label %46

46:                                               ; preds = %38
  %47 = getelementptr inbounds %struct.hid_device, ptr %0, i32 0, i32 5
  store i32 16, ptr %47, align 4
  %48 = ptrtoint ptr %41 to i32
  %49 = getelementptr inbounds %struct.hid_item, ptr %2, i32 0, i32 2
  %50 = getelementptr inbounds %struct.hid_item, ptr %2, i32 0, i32 3
  %51 = getelementptr inbounds %struct.hid_item, ptr %2, i32 0, i32 1
  %52 = getelementptr inbounds %struct.hid_item, ptr %2, i32 0, i32 4
  br label %53

53:                                               ; preds = %128, %46
  %54 = phi ptr [ %30, %46 ], [ %105, %128 ]
  %55 = ptrtoint ptr %54 to i32
  %56 = sub i32 %48, %55
  %57 = icmp slt i32 %56, 1
  br i1 %57, label %147, label %58

58:                                               ; preds = %53
  %59 = getelementptr i8, ptr %54, i32 1
  %60 = load i8, ptr %54, align 1
  %61 = lshr i8 %60, 2
  %62 = and i8 %61, 3
  store i8 %62, ptr %49, align 1
  %63 = lshr i8 %60, 4
  store i8 %63, ptr %50, align 2
  %64 = icmp eq i8 %63, 15
  br i1 %64, label %65, label %78

65:                                               ; preds = %58
  store i32 1, ptr %2, align 4
  %66 = ptrtoint ptr %59 to i32
  %67 = sub i32 %48, %66
  %68 = icmp slt i32 %67, 2
  br i1 %68, label %147, label %69

69:                                               ; preds = %65
  %70 = getelementptr i8, ptr %54, i32 2
  %71 = load i8, ptr %59, align 1
  store i8 %71, ptr %51, align 4
  %72 = getelementptr i8, ptr %54, i32 3
  %73 = load i8, ptr %70, align 1
  store i8 %73, ptr %50, align 2
  %74 = ptrtoint ptr %72 to i32
  %75 = sub i32 %48, %74
  %76 = zext i8 %71 to i32
  %77 = icmp slt i32 %75, %76
  br i1 %77, label %147, label %107

78:                                               ; preds = %58
  store i32 0, ptr %2, align 4
  %79 = and i8 %60, 3
  store i8 %79, ptr %51, align 4
  %80 = zext i8 %79 to i32
  switch i32 %80, label %103 [
    i32 0, label %104
    i32 1, label %81
    i32 2, label %88
    i32 3, label %95
  ]

81:                                               ; preds = %78
  %82 = ptrtoint ptr %59 to i32
  %83 = sub i32 %48, %82
  %84 = icmp slt i32 %83, 1
  br i1 %84, label %147, label %85

85:                                               ; preds = %81
  %86 = getelementptr i8, ptr %54, i32 2
  %87 = load i8, ptr %59, align 1
  store i8 %87, ptr %52, align 4
  br label %104

88:                                               ; preds = %78
  %89 = ptrtoint ptr %59 to i32
  %90 = sub i32 %48, %89
  %91 = icmp slt i32 %90, 2
  br i1 %91, label %147, label %92

92:                                               ; preds = %88
  %93 = load i16, ptr %59, align 1
  store i16 %93, ptr %52, align 4
  %94 = getelementptr i8, ptr %54, i32 3
  br label %104

95:                                               ; preds = %78
  %96 = add nuw nsw i8 %79, 1
  store i8 %96, ptr %51, align 4
  %97 = ptrtoint ptr %59 to i32
  %98 = sub i32 %48, %97
  %99 = icmp slt i32 %98, 4
  br i1 %99, label %147, label %100

100:                                              ; preds = %95
  %101 = load i32, ptr %59, align 1
  store i32 %101, ptr %52, align 4
  %102 = getelementptr i8, ptr %54, i32 5
  br label %104

103:                                              ; preds = %78
  unreachable

104:                                              ; preds = %100, %92, %85, %78
  %105 = phi ptr [ %102, %100 ], [ %94, %92 ], [ %86, %85 ], [ %59, %78 ]
  %106 = icmp eq ptr %105, null
  br i1 %106, label %147, label %110

107:                                              ; preds = %69
  store ptr %72, ptr %52, align 4
  %108 = getelementptr i8, ptr %72, i32 %76
  %109 = icmp eq ptr %108, null
  br i1 %109, label %147, label %111

110:                                              ; preds = %104
  br i1 %64, label %111, label %113

111:                                              ; preds = %110, %107
  %112 = getelementptr inbounds %struct.hid_device, ptr %0, i32 0, i32 18
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %112, ptr noundef nonnull @.str.6) #23
  br label %153

113:                                              ; preds = %110
  %114 = zext i8 %62 to i32
  %115 = getelementptr [4 x ptr], ptr @hid_open_report.dispatch_type, i32 0, i32 %114
  %116 = load ptr, ptr %115, align 4
  %117 = call i32 %116(ptr noundef nonnull %36, ptr noundef nonnull %2) #22
  %118 = icmp eq i32 %117, 0
  br i1 %118, label %128, label %119

119:                                              ; preds = %113
  %120 = getelementptr inbounds %struct.hid_device, ptr %0, i32 0, i32 18
  %121 = load i32, ptr %2, align 4
  %122 = load i8, ptr %51, align 4
  %123 = zext i8 %122 to i32
  %124 = load i8, ptr %49, align 1
  %125 = zext i8 %124 to i32
  %126 = load i8, ptr %50, align 2
  %127 = zext i8 %126 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %120, ptr noundef nonnull @.str.7, i32 noundef %121, i32 noundef %123, i32 noundef %125, i32 noundef %127) #23
  br label %153

128:                                              ; preds = %113
  %129 = icmp eq ptr %105, %41
  br i1 %129, label %130, label %53

130:                                              ; preds = %128
  %131 = getelementptr inbounds %struct.hid_parser, ptr %36, i32 0, i32 5
  %132 = load i32, ptr %131, align 4
  %133 = icmp eq i32 %132, 0
  br i1 %133, label %136, label %134

134:                                              ; preds = %130
  %135 = getelementptr inbounds %struct.hid_device, ptr %0, i32 0, i32 18
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %135, ptr noundef nonnull @.str.8) #23
  br label %153

136:                                              ; preds = %130
  %137 = getelementptr inbounds %struct.hid_parser, ptr %36, i32 0, i32 3, i32 5
  %138 = load i32, ptr %137, align 4
  %139 = icmp eq i32 %138, 0
  br i1 %139, label %142, label %140

140:                                              ; preds = %136
  %141 = getelementptr inbounds %struct.hid_device, ptr %0, i32 0, i32 18
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %141, ptr noundef nonnull @.str.9) #23
  br label %153

142:                                              ; preds = %136
  call void @hid_setup_resolution_multiplier(ptr noundef %0)
  %143 = getelementptr inbounds %struct.hid_parser, ptr %36, i32 0, i32 4
  %144 = load ptr, ptr %143, align 4
  call void @kfree(ptr noundef %144) #22
  call void @vfree(ptr noundef nonnull %36) #22
  %145 = load i32, ptr %4, align 8
  %146 = or i32 %145, 2
  store i32 %146, ptr %4, align 8
  br label %159

147:                                              ; preds = %107, %104, %95, %88, %81, %69, %65, %53
  %148 = ptrtoint ptr %54 to i32
  %149 = getelementptr inbounds %struct.hid_device, ptr %0, i32 0, i32 18
  %150 = load i32, ptr %3, align 4
  %151 = sub i32 %148, %48
  %152 = add i32 %151, %150
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %149, ptr noundef nonnull @.str.10, i32 noundef %152, i32 noundef %150) #23
  br label %153

153:                                              ; preds = %147, %140, %134, %119, %111, %38
  %154 = phi i32 [ -22, %111 ], [ -22, %119 ], [ -22, %134 ], [ -22, %140 ], [ -22, %147 ], [ -12, %38 ]
  %155 = getelementptr inbounds %struct.hid_parser, ptr %36, i32 0, i32 4
  %156 = load ptr, ptr %155, align 4
  call void @kfree(ptr noundef %156) #22
  br label %157

157:                                              ; preds = %153, %32
  %158 = phi i32 [ %154, %153 ], [ -12, %32 ]
  call void @vfree(ptr noundef %36) #22
  call fastcc void @hid_close_report(ptr noundef %0)
  br label %159

159:                                              ; preds = %157, %142, %27, %13, %12, %8
  %160 = phi i32 [ -16, %8 ], [ -19, %12 ], [ %158, %157 ], [ 0, %142 ], [ -12, %13 ], [ -12, %27 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #22
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %2) #22
  ret i32 %160
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @hid_parser_main(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = getelementptr inbounds %struct.hid_parser, ptr %0, i32 0, i32 3
  %4 = getelementptr inbounds %struct.hid_parser, ptr %0, i32 0, i32 3, i32 3
  %5 = load i32, ptr %4, align 4
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %29, label %7

7:                                                ; preds = %2
  %8 = load i32, ptr %0, align 4
  %9 = add i32 %5, -1
  %10 = icmp sgt i32 %9, -1
  br i1 %10, label %11, label %29

11:                                               ; preds = %26, %7
  %12 = phi i32 [ %27, %26 ], [ %9, %7 ]
  %13 = getelementptr %struct.hid_parser, ptr %0, i32 0, i32 3, i32 1, i32 %12
  %14 = load i8, ptr %13, align 1
  %15 = icmp ugt i8 %14, 2
  br i1 %15, label %26, label %16

16:                                               ; preds = %11
  %17 = getelementptr [12288 x i32], ptr %3, i32 0, i32 %12
  %18 = load i32, ptr %17, align 4
  %19 = lshr i32 %18, 16
  %20 = icmp eq i32 %19, %8
  br i1 %20, label %29, label %21

21:                                               ; preds = %16
  %22 = and i32 %18, 65535
  store i32 %22, ptr %17, align 4
  %23 = load i32, ptr %0, align 4
  %24 = shl i32 %23, 16
  %25 = or i32 %24, %22
  store i32 %25, ptr %17, align 4
  br label %26

26:                                               ; preds = %21, %11
  %27 = add i32 %12, -1
  %28 = icmp sgt i32 %27, -1
  br i1 %28, label %11, label %29

29:                                               ; preds = %26, %16, %7, %2
  %30 = getelementptr inbounds %struct.hid_item, ptr %1, i32 0, i32 1
  %31 = load i8, ptr %30, align 4
  switch i8 %31, label %43 [
    i8 1, label %32
    i8 2, label %36
    i8 4, label %40
  ]

32:                                               ; preds = %29
  %33 = getelementptr inbounds %struct.hid_item, ptr %1, i32 0, i32 4
  %34 = load i8, ptr %33, align 4
  %35 = zext i8 %34 to i32
  br label %43

36:                                               ; preds = %29
  %37 = getelementptr inbounds %struct.hid_item, ptr %1, i32 0, i32 4
  %38 = load i16, ptr %37, align 4
  %39 = zext i16 %38 to i32
  br label %43

40:                                               ; preds = %29
  %41 = getelementptr inbounds %struct.hid_item, ptr %1, i32 0, i32 4
  %42 = load i32, ptr %41, align 4
  br label %43

43:                                               ; preds = %40, %36, %32, %29
  %44 = phi i32 [ %42, %40 ], [ %39, %36 ], [ %35, %32 ], [ 0, %29 ]
  %45 = getelementptr inbounds %struct.hid_item, ptr %1, i32 0, i32 3
  %46 = load i8, ptr %45, align 2
  switch i8 %46, label %159 [
    i8 10, label %47
    i8 12, label %143
    i8 8, label %153
    i8 9, label %155
    i8 11, label %157
  ]

47:                                               ; preds = %43
  %48 = and i32 %44, 255
  %49 = load i32, ptr %3, align 4
  %50 = getelementptr inbounds %struct.hid_parser, ptr %0, i32 0, i32 5
  %51 = load i32, ptr %50, align 4
  %52 = getelementptr inbounds %struct.hid_parser, ptr %0, i32 0, i32 6
  %53 = load i32, ptr %52, align 4
  %54 = icmp eq i32 %51, %53
  br i1 %54, label %55, label %63

55:                                               ; preds = %47
  %56 = add i32 %51, 4
  %57 = getelementptr inbounds %struct.hid_parser, ptr %0, i32 0, i32 4
  %58 = load ptr, ptr %57, align 4
  %59 = shl i32 %56, 2
  %60 = tail call noalias ptr @krealloc(ptr noundef %58, i32 noundef %59, i32 noundef 3264) #25
  %61 = icmp eq ptr %60, null
  br i1 %61, label %164, label %62

62:                                               ; preds = %55
  store ptr %60, ptr %57, align 4
  store i32 %56, ptr %52, align 4
  br label %63

63:                                               ; preds = %62, %47
  %64 = getelementptr inbounds %struct.hid_parser, ptr %0, i32 0, i32 7
  %65 = load ptr, ptr %64, align 4
  %66 = getelementptr inbounds %struct.hid_device, ptr %65, i32 0, i32 6
  %67 = load i32, ptr %66, align 8
  %68 = getelementptr inbounds %struct.hid_device, ptr %65, i32 0, i32 5
  %69 = load i32, ptr %68, align 4
  %70 = icmp eq i32 %67, %69
  br i1 %70, label %71, label %109

71:                                               ; preds = %63
  %72 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %67, i32 16) #22
  %73 = extractvalue { i32, i1 } %72, 1
  br i1 %73, label %80, label %74

74:                                               ; preds = %71
  %75 = extractvalue { i32, i1 } %72, 0
  %76 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %75, i32 2) #22
  %77 = extractvalue { i32, i1 } %76, 1
  %78 = extractvalue { i32, i1 } %76, 0
  %79 = select i1 %77, i32 -1, i32 %78
  br label %80

80:                                               ; preds = %74, %71
  %81 = phi i32 [ -1, %71 ], [ %79, %74 ]
  %82 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %81, i32 noundef 3264) #24
  %83 = icmp eq ptr %82, null
  %84 = load ptr, ptr %64, align 4
  br i1 %83, label %85, label %87

85:                                               ; preds = %80
  %86 = getelementptr inbounds %struct.hid_device, ptr %84, i32 0, i32 18
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %86, ptr noundef nonnull @.str.51) #23
  br label %164

87:                                               ; preds = %80
  %88 = getelementptr inbounds %struct.hid_device, ptr %84, i32 0, i32 5
  %89 = load i32, ptr %88, align 4
  %90 = getelementptr inbounds %struct.hid_device, ptr %84, i32 0, i32 4
  %91 = load ptr, ptr %90, align 8
  %92 = shl i32 %89, 4
  tail call void @llvm.memcpy.p0.p0.i32(ptr nonnull align 64 %82, ptr align 4 %91, i32 %92, i1 false) #22
  %93 = load ptr, ptr %64, align 4
  %94 = getelementptr inbounds %struct.hid_device, ptr %93, i32 0, i32 5
  %95 = load i32, ptr %94, align 4
  %96 = getelementptr %struct.hid_collection, ptr %82, i32 %95
  %97 = shl i32 %95, 4
  tail call void @llvm.memset.p0.i32(ptr align 16 %96, i8 0, i32 %97, i1 false) #22
  %98 = getelementptr inbounds %struct.hid_device, ptr %93, i32 0, i32 4
  %99 = load ptr, ptr %98, align 8
  tail call void @kfree(ptr noundef %99) #22
  %100 = load ptr, ptr %64, align 4
  %101 = getelementptr inbounds %struct.hid_device, ptr %100, i32 0, i32 4
  store ptr %82, ptr %101, align 8
  %102 = load ptr, ptr %64, align 4
  %103 = getelementptr inbounds %struct.hid_device, ptr %102, i32 0, i32 5
  %104 = load i32, ptr %103, align 4
  %105 = shl i32 %104, 1
  store i32 %105, ptr %103, align 4
  %106 = load ptr, ptr %64, align 4
  %107 = getelementptr inbounds %struct.hid_device, ptr %106, i32 0, i32 6
  %108 = load i32, ptr %107, align 8
  br label %109

109:                                              ; preds = %87, %63
  %110 = phi i32 [ %108, %87 ], [ %67, %63 ]
  %111 = getelementptr inbounds %struct.hid_parser, ptr %0, i32 0, i32 4
  %112 = load ptr, ptr %111, align 4
  %113 = load i32, ptr %50, align 4
  %114 = add i32 %113, 1
  store i32 %114, ptr %50, align 4
  %115 = getelementptr i32, ptr %112, i32 %113
  store i32 %110, ptr %115, align 4
  %116 = load ptr, ptr %64, align 4
  %117 = getelementptr inbounds %struct.hid_device, ptr %116, i32 0, i32 6
  %118 = load i32, ptr %117, align 8
  %119 = add i32 %118, 1
  store i32 %119, ptr %117, align 8
  %120 = load ptr, ptr %64, align 4
  %121 = getelementptr inbounds %struct.hid_device, ptr %120, i32 0, i32 4
  %122 = load ptr, ptr %121, align 8
  %123 = getelementptr %struct.hid_collection, ptr %122, i32 %118
  %124 = getelementptr %struct.hid_collection, ptr %122, i32 %118, i32 1
  store i32 %48, ptr %124, align 4
  %125 = getelementptr %struct.hid_collection, ptr %122, i32 %118, i32 2
  store i32 %49, ptr %125, align 4
  %126 = load i32, ptr %50, align 4
  %127 = add i32 %126, -1
  %128 = getelementptr %struct.hid_collection, ptr %122, i32 %118, i32 3
  store i32 %127, ptr %128, align 4
  %129 = icmp eq i32 %127, 0
  br i1 %129, label %135, label %130

130:                                              ; preds = %109
  %131 = load ptr, ptr %111, align 4
  %132 = add i32 %126, -2
  %133 = getelementptr i32, ptr %131, i32 %132
  %134 = load i32, ptr %133, align 4
  br label %135

135:                                              ; preds = %130, %109
  %136 = phi i32 [ %134, %130 ], [ -1, %109 ]
  store i32 %136, ptr %123, align 4
  %137 = icmp eq i32 %48, 1
  br i1 %137, label %138, label %164

138:                                              ; preds = %135
  %139 = load ptr, ptr %64, align 4
  %140 = getelementptr inbounds %struct.hid_device, ptr %139, i32 0, i32 7
  %141 = load i32, ptr %140, align 4
  %142 = add i32 %141, 1
  store i32 %142, ptr %140, align 4
  br label %164

143:                                              ; preds = %43
  %144 = getelementptr inbounds %struct.hid_parser, ptr %0, i32 0, i32 5
  %145 = load i32, ptr %144, align 4
  %146 = icmp eq i32 %145, 0
  br i1 %146, label %147, label %151

147:                                              ; preds = %143
  %148 = getelementptr inbounds %struct.hid_parser, ptr %0, i32 0, i32 7
  %149 = load ptr, ptr %148, align 4
  %150 = getelementptr inbounds %struct.hid_device, ptr %149, i32 0, i32 18
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %150, ptr noundef nonnull @.str.52) #23
  br label %164

151:                                              ; preds = %143
  %152 = add i32 %145, -1
  store i32 %152, ptr %144, align 4
  br label %164

153:                                              ; preds = %43
  %154 = tail call fastcc i32 @hid_add_field(ptr noundef %0, i32 noundef 0, i32 noundef %44)
  br label %164

155:                                              ; preds = %43
  %156 = tail call fastcc i32 @hid_add_field(ptr noundef %0, i32 noundef 1, i32 noundef %44)
  br label %164

157:                                              ; preds = %43
  %158 = tail call fastcc i32 @hid_add_field(ptr noundef %0, i32 noundef 2, i32 noundef %44)
  br label %164

159:                                              ; preds = %43
  %160 = zext i8 %46 to i32
  %161 = getelementptr inbounds %struct.hid_parser, ptr %0, i32 0, i32 7
  %162 = load ptr, ptr %161, align 4
  %163 = getelementptr inbounds %struct.hid_device, ptr %162, i32 0, i32 18
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %163, ptr noundef nonnull @.str.50, i32 noundef %160) #23
  br label %164

164:                                              ; preds = %159, %157, %155, %153, %151, %147, %138, %135, %85, %55
  %165 = phi i32 [ 0, %159 ], [ %158, %157 ], [ %156, %155 ], [ %154, %153 ], [ -12, %85 ], [ 0, %138 ], [ 0, %135 ], [ -12, %55 ], [ 0, %151 ], [ -22, %147 ]
  tail call void @llvm.memset.p0.i32(ptr noundef align 4 dereferenceable(110608) %3, i8 0, i32 110608, i1 false)
  ret i32 %165
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @hid_parser_global(ptr noundef %0, ptr noundef readonly %1) #0 {
  %3 = getelementptr inbounds %struct.hid_item, ptr %1, i32 0, i32 3
  %4 = load i8, ptr %3, align 2
  switch i8 %4, label %273 [
    i8 10, label %5
    i8 11, label %17
    i8 0, label %29
    i8 1, label %45
    i8 2, label %62
    i8 3, label %98
    i8 4, label %115
    i8 5, label %151
    i8 6, label %180
    i8 7, label %197
    i8 9, label %222
    i8 8, label %247
  ]

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.hid_parser, ptr %0, i32 0, i32 2
  %7 = load i32, ptr %6, align 4
  %8 = icmp eq i32 %7, 4
  br i1 %8, label %9, label %13

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.hid_parser, ptr %0, i32 0, i32 7
  %11 = load ptr, ptr %10, align 4
  %12 = getelementptr inbounds %struct.hid_device, ptr %11, i32 0, i32 18
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %12, ptr noundef nonnull @.str.57) #23
  br label %278

13:                                               ; preds = %5
  %14 = getelementptr inbounds %struct.hid_parser, ptr %0, i32 0, i32 1
  %15 = add i32 %7, 1
  store i32 %15, ptr %6, align 4
  %16 = getelementptr %struct.hid_global, ptr %14, i32 %7
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(40) %16, ptr noundef align 4 dereferenceable(40) %0, i32 40, i1 false)
  br label %278

17:                                               ; preds = %2
  %18 = getelementptr inbounds %struct.hid_parser, ptr %0, i32 0, i32 2
  %19 = load i32, ptr %18, align 4
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %25

21:                                               ; preds = %17
  %22 = getelementptr inbounds %struct.hid_parser, ptr %0, i32 0, i32 7
  %23 = load ptr, ptr %22, align 4
  %24 = getelementptr inbounds %struct.hid_device, ptr %23, i32 0, i32 18
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %24, ptr noundef nonnull @.str.58) #23
  br label %278

25:                                               ; preds = %17
  %26 = getelementptr inbounds %struct.hid_parser, ptr %0, i32 0, i32 1
  %27 = add i32 %19, -1
  store i32 %27, ptr %18, align 4
  %28 = getelementptr %struct.hid_global, ptr %26, i32 %27
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(40) %0, ptr noundef align 4 dereferenceable(40) %28, i32 40, i1 false)
  br label %278

29:                                               ; preds = %2
  %30 = getelementptr inbounds %struct.hid_item, ptr %1, i32 0, i32 1
  %31 = load i8, ptr %30, align 4
  switch i8 %31, label %43 [
    i8 1, label %32
    i8 2, label %36
    i8 4, label %40
  ]

32:                                               ; preds = %29
  %33 = getelementptr inbounds %struct.hid_item, ptr %1, i32 0, i32 4
  %34 = load i8, ptr %33, align 4
  %35 = zext i8 %34 to i32
  br label %43

36:                                               ; preds = %29
  %37 = getelementptr inbounds %struct.hid_item, ptr %1, i32 0, i32 4
  %38 = load i16, ptr %37, align 4
  %39 = zext i16 %38 to i32
  br label %43

40:                                               ; preds = %29
  %41 = getelementptr inbounds %struct.hid_item, ptr %1, i32 0, i32 4
  %42 = load i32, ptr %41, align 4
  br label %43

43:                                               ; preds = %40, %36, %32, %29
  %44 = phi i32 [ %42, %40 ], [ %39, %36 ], [ %35, %32 ], [ 0, %29 ]
  store i32 %44, ptr %0, align 4
  br label %278

45:                                               ; preds = %2
  %46 = getelementptr inbounds %struct.hid_item, ptr %1, i32 0, i32 1
  %47 = load i8, ptr %46, align 4
  switch i8 %47, label %59 [
    i8 1, label %48
    i8 2, label %52
    i8 4, label %56
  ]

48:                                               ; preds = %45
  %49 = getelementptr inbounds %struct.hid_item, ptr %1, i32 0, i32 4
  %50 = load i8, ptr %49, align 4
  %51 = sext i8 %50 to i32
  br label %59

52:                                               ; preds = %45
  %53 = getelementptr inbounds %struct.hid_item, ptr %1, i32 0, i32 4
  %54 = load i16, ptr %53, align 4
  %55 = sext i16 %54 to i32
  br label %59

56:                                               ; preds = %45
  %57 = getelementptr inbounds %struct.hid_item, ptr %1, i32 0, i32 4
  %58 = load i32, ptr %57, align 4
  br label %59

59:                                               ; preds = %56, %52, %48, %45
  %60 = phi i32 [ %58, %56 ], [ %55, %52 ], [ %51, %48 ], [ 0, %45 ]
  %61 = getelementptr inbounds %struct.hid_global, ptr %0, i32 0, i32 1
  store i32 %60, ptr %61, align 4
  br label %278

62:                                               ; preds = %2
  %63 = getelementptr inbounds %struct.hid_global, ptr %0, i32 0, i32 1
  %64 = load i32, ptr %63, align 4
  %65 = icmp slt i32 %64, 0
  %66 = getelementptr inbounds %struct.hid_item, ptr %1, i32 0, i32 1
  %67 = load i8, ptr %66, align 4
  br i1 %65, label %68, label %83

68:                                               ; preds = %62
  switch i8 %67, label %80 [
    i8 1, label %69
    i8 2, label %73
    i8 4, label %77
  ]

69:                                               ; preds = %68
  %70 = getelementptr inbounds %struct.hid_item, ptr %1, i32 0, i32 4
  %71 = load i8, ptr %70, align 4
  %72 = sext i8 %71 to i32
  br label %80

73:                                               ; preds = %68
  %74 = getelementptr inbounds %struct.hid_item, ptr %1, i32 0, i32 4
  %75 = load i16, ptr %74, align 4
  %76 = sext i16 %75 to i32
  br label %80

77:                                               ; preds = %68
  %78 = getelementptr inbounds %struct.hid_item, ptr %1, i32 0, i32 4
  %79 = load i32, ptr %78, align 4
  br label %80

80:                                               ; preds = %77, %73, %69, %68
  %81 = phi i32 [ %79, %77 ], [ %76, %73 ], [ %72, %69 ], [ 0, %68 ]
  %82 = getelementptr inbounds %struct.hid_global, ptr %0, i32 0, i32 2
  store i32 %81, ptr %82, align 4
  br label %278

83:                                               ; preds = %62
  switch i8 %67, label %95 [
    i8 1, label %84
    i8 2, label %88
    i8 4, label %92
  ]

84:                                               ; preds = %83
  %85 = getelementptr inbounds %struct.hid_item, ptr %1, i32 0, i32 4
  %86 = load i8, ptr %85, align 4
  %87 = zext i8 %86 to i32
  br label %95

88:                                               ; preds = %83
  %89 = getelementptr inbounds %struct.hid_item, ptr %1, i32 0, i32 4
  %90 = load i16, ptr %89, align 4
  %91 = zext i16 %90 to i32
  br label %95

92:                                               ; preds = %83
  %93 = getelementptr inbounds %struct.hid_item, ptr %1, i32 0, i32 4
  %94 = load i32, ptr %93, align 4
  br label %95

95:                                               ; preds = %92, %88, %84, %83
  %96 = phi i32 [ %94, %92 ], [ %91, %88 ], [ %87, %84 ], [ 0, %83 ]
  %97 = getelementptr inbounds %struct.hid_global, ptr %0, i32 0, i32 2
  store i32 %96, ptr %97, align 4
  br label %278

98:                                               ; preds = %2
  %99 = getelementptr inbounds %struct.hid_item, ptr %1, i32 0, i32 1
  %100 = load i8, ptr %99, align 4
  switch i8 %100, label %112 [
    i8 1, label %101
    i8 2, label %105
    i8 4, label %109
  ]

101:                                              ; preds = %98
  %102 = getelementptr inbounds %struct.hid_item, ptr %1, i32 0, i32 4
  %103 = load i8, ptr %102, align 4
  %104 = sext i8 %103 to i32
  br label %112

105:                                              ; preds = %98
  %106 = getelementptr inbounds %struct.hid_item, ptr %1, i32 0, i32 4
  %107 = load i16, ptr %106, align 4
  %108 = sext i16 %107 to i32
  br label %112

109:                                              ; preds = %98
  %110 = getelementptr inbounds %struct.hid_item, ptr %1, i32 0, i32 4
  %111 = load i32, ptr %110, align 4
  br label %112

112:                                              ; preds = %109, %105, %101, %98
  %113 = phi i32 [ %111, %109 ], [ %108, %105 ], [ %104, %101 ], [ 0, %98 ]
  %114 = getelementptr inbounds %struct.hid_global, ptr %0, i32 0, i32 3
  store i32 %113, ptr %114, align 4
  br label %278

115:                                              ; preds = %2
  %116 = getelementptr inbounds %struct.hid_global, ptr %0, i32 0, i32 3
  %117 = load i32, ptr %116, align 4
  %118 = icmp slt i32 %117, 0
  %119 = getelementptr inbounds %struct.hid_item, ptr %1, i32 0, i32 1
  %120 = load i8, ptr %119, align 4
  br i1 %118, label %121, label %136

121:                                              ; preds = %115
  switch i8 %120, label %133 [
    i8 1, label %122
    i8 2, label %126
    i8 4, label %130
  ]

122:                                              ; preds = %121
  %123 = getelementptr inbounds %struct.hid_item, ptr %1, i32 0, i32 4
  %124 = load i8, ptr %123, align 4
  %125 = sext i8 %124 to i32
  br label %133

126:                                              ; preds = %121
  %127 = getelementptr inbounds %struct.hid_item, ptr %1, i32 0, i32 4
  %128 = load i16, ptr %127, align 4
  %129 = sext i16 %128 to i32
  br label %133

130:                                              ; preds = %121
  %131 = getelementptr inbounds %struct.hid_item, ptr %1, i32 0, i32 4
  %132 = load i32, ptr %131, align 4
  br label %133

133:                                              ; preds = %130, %126, %122, %121
  %134 = phi i32 [ %132, %130 ], [ %129, %126 ], [ %125, %122 ], [ 0, %121 ]
  %135 = getelementptr inbounds %struct.hid_global, ptr %0, i32 0, i32 4
  store i32 %134, ptr %135, align 4
  br label %278

136:                                              ; preds = %115
  switch i8 %120, label %148 [
    i8 1, label %137
    i8 2, label %141
    i8 4, label %145
  ]

137:                                              ; preds = %136
  %138 = getelementptr inbounds %struct.hid_item, ptr %1, i32 0, i32 4
  %139 = load i8, ptr %138, align 4
  %140 = zext i8 %139 to i32
  br label %148

141:                                              ; preds = %136
  %142 = getelementptr inbounds %struct.hid_item, ptr %1, i32 0, i32 4
  %143 = load i16, ptr %142, align 4
  %144 = zext i16 %143 to i32
  br label %148

145:                                              ; preds = %136
  %146 = getelementptr inbounds %struct.hid_item, ptr %1, i32 0, i32 4
  %147 = load i32, ptr %146, align 4
  br label %148

148:                                              ; preds = %145, %141, %137, %136
  %149 = phi i32 [ %147, %145 ], [ %144, %141 ], [ %140, %137 ], [ 0, %136 ]
  %150 = getelementptr inbounds %struct.hid_global, ptr %0, i32 0, i32 4
  store i32 %149, ptr %150, align 4
  br label %278

151:                                              ; preds = %2
  %152 = getelementptr inbounds %struct.hid_item, ptr %1, i32 0, i32 1
  %153 = load i8, ptr %152, align 4
  switch i8 %153, label %175 [
    i8 1, label %154
    i8 2, label %158
    i8 4, label %162
  ]

154:                                              ; preds = %151
  %155 = getelementptr inbounds %struct.hid_item, ptr %1, i32 0, i32 4
  %156 = load i8, ptr %155, align 4
  %157 = sext i8 %156 to i32
  br label %165

158:                                              ; preds = %151
  %159 = getelementptr inbounds %struct.hid_item, ptr %1, i32 0, i32 4
  %160 = load i16, ptr %159, align 4
  %161 = sext i16 %160 to i32
  br label %165

162:                                              ; preds = %151
  %163 = getelementptr inbounds %struct.hid_item, ptr %1, i32 0, i32 4
  %164 = load i32, ptr %163, align 4
  br label %165

165:                                              ; preds = %162, %158, %154
  %166 = phi i32 [ %164, %162 ], [ %161, %158 ], [ %157, %154 ]
  %167 = icmp ult i32 %166, 16
  br i1 %167, label %168, label %178

168:                                              ; preds = %165
  %169 = icmp eq i32 %166, 0
  br i1 %169, label %175, label %170

170:                                              ; preds = %168
  %171 = and i32 %166, 8
  %172 = icmp eq i32 %171, 0
  %173 = select i1 %172, i32 0, i32 -16
  %174 = or i32 %173, %166
  br label %175

175:                                              ; preds = %170, %168, %151
  %176 = phi i32 [ %174, %170 ], [ 0, %168 ], [ 0, %151 ]
  %177 = getelementptr inbounds %struct.hid_global, ptr %0, i32 0, i32 5
  store i32 %176, ptr %177, align 4
  br label %278

178:                                              ; preds = %165
  %179 = getelementptr inbounds %struct.hid_global, ptr %0, i32 0, i32 5
  store i32 %166, ptr %179, align 4
  br label %278

180:                                              ; preds = %2
  %181 = getelementptr inbounds %struct.hid_item, ptr %1, i32 0, i32 1
  %182 = load i8, ptr %181, align 4
  switch i8 %182, label %194 [
    i8 1, label %183
    i8 2, label %187
    i8 4, label %191
  ]

183:                                              ; preds = %180
  %184 = getelementptr inbounds %struct.hid_item, ptr %1, i32 0, i32 4
  %185 = load i8, ptr %184, align 4
  %186 = zext i8 %185 to i32
  br label %194

187:                                              ; preds = %180
  %188 = getelementptr inbounds %struct.hid_item, ptr %1, i32 0, i32 4
  %189 = load i16, ptr %188, align 4
  %190 = zext i16 %189 to i32
  br label %194

191:                                              ; preds = %180
  %192 = getelementptr inbounds %struct.hid_item, ptr %1, i32 0, i32 4
  %193 = load i32, ptr %192, align 4
  br label %194

194:                                              ; preds = %191, %187, %183, %180
  %195 = phi i32 [ %193, %191 ], [ %190, %187 ], [ %186, %183 ], [ 0, %180 ]
  %196 = getelementptr inbounds %struct.hid_global, ptr %0, i32 0, i32 6
  store i32 %195, ptr %196, align 4
  br label %278

197:                                              ; preds = %2
  %198 = getelementptr inbounds %struct.hid_item, ptr %1, i32 0, i32 1
  %199 = load i8, ptr %198, align 4
  switch i8 %199, label %211 [
    i8 1, label %200
    i8 2, label %204
    i8 4, label %208
  ]

200:                                              ; preds = %197
  %201 = getelementptr inbounds %struct.hid_item, ptr %1, i32 0, i32 4
  %202 = load i8, ptr %201, align 4
  %203 = zext i8 %202 to i32
  br label %211

204:                                              ; preds = %197
  %205 = getelementptr inbounds %struct.hid_item, ptr %1, i32 0, i32 4
  %206 = load i16, ptr %205, align 4
  %207 = zext i16 %206 to i32
  br label %214

208:                                              ; preds = %197
  %209 = getelementptr inbounds %struct.hid_item, ptr %1, i32 0, i32 4
  %210 = load i32, ptr %209, align 4
  br label %214

211:                                              ; preds = %200, %197
  %212 = phi i32 [ 0, %197 ], [ %203, %200 ]
  %213 = getelementptr inbounds %struct.hid_global, ptr %0, i32 0, i32 8
  store i32 %212, ptr %213, align 4
  br label %278

214:                                              ; preds = %208, %204
  %215 = phi i32 [ %210, %208 ], [ %207, %204 ]
  %216 = getelementptr inbounds %struct.hid_global, ptr %0, i32 0, i32 8
  store i32 %215, ptr %216, align 4
  %217 = icmp ugt i32 %215, 256
  br i1 %217, label %218, label %278

218:                                              ; preds = %214
  %219 = getelementptr inbounds %struct.hid_parser, ptr %0, i32 0, i32 7
  %220 = load ptr, ptr %219, align 4
  %221 = getelementptr inbounds %struct.hid_device, ptr %220, i32 0, i32 18
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %221, ptr noundef nonnull @.str.59, i32 noundef %215) #23
  br label %278

222:                                              ; preds = %2
  %223 = getelementptr inbounds %struct.hid_item, ptr %1, i32 0, i32 1
  %224 = load i8, ptr %223, align 4
  switch i8 %224, label %236 [
    i8 1, label %225
    i8 2, label %229
    i8 4, label %233
  ]

225:                                              ; preds = %222
  %226 = getelementptr inbounds %struct.hid_item, ptr %1, i32 0, i32 4
  %227 = load i8, ptr %226, align 4
  %228 = zext i8 %227 to i32
  br label %236

229:                                              ; preds = %222
  %230 = getelementptr inbounds %struct.hid_item, ptr %1, i32 0, i32 4
  %231 = load i16, ptr %230, align 4
  %232 = zext i16 %231 to i32
  br label %239

233:                                              ; preds = %222
  %234 = getelementptr inbounds %struct.hid_item, ptr %1, i32 0, i32 4
  %235 = load i32, ptr %234, align 4
  br label %239

236:                                              ; preds = %225, %222
  %237 = phi i32 [ 0, %222 ], [ %228, %225 ]
  %238 = getelementptr inbounds %struct.hid_global, ptr %0, i32 0, i32 9
  store i32 %237, ptr %238, align 4
  br label %278

239:                                              ; preds = %233, %229
  %240 = phi i32 [ %235, %233 ], [ %232, %229 ]
  %241 = getelementptr inbounds %struct.hid_global, ptr %0, i32 0, i32 9
  store i32 %240, ptr %241, align 4
  %242 = icmp ugt i32 %240, 12288
  br i1 %242, label %243, label %278

243:                                              ; preds = %239
  %244 = getelementptr inbounds %struct.hid_parser, ptr %0, i32 0, i32 7
  %245 = load ptr, ptr %244, align 4
  %246 = getelementptr inbounds %struct.hid_device, ptr %245, i32 0, i32 18
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %246, ptr noundef nonnull @.str.60, i32 noundef %240) #23
  br label %278

247:                                              ; preds = %2
  %248 = getelementptr inbounds %struct.hid_item, ptr %1, i32 0, i32 1
  %249 = load i8, ptr %248, align 4
  switch i8 %249, label %250 [
    i8 1, label %252
    i8 2, label %256
    i8 4, label %260
  ]

250:                                              ; preds = %247
  %251 = getelementptr inbounds %struct.hid_global, ptr %0, i32 0, i32 7
  store i32 0, ptr %251, align 4
  br label %268

252:                                              ; preds = %247
  %253 = getelementptr inbounds %struct.hid_item, ptr %1, i32 0, i32 4
  %254 = load i8, ptr %253, align 4
  %255 = zext i8 %254 to i32
  br label %263

256:                                              ; preds = %247
  %257 = getelementptr inbounds %struct.hid_item, ptr %1, i32 0, i32 4
  %258 = load i16, ptr %257, align 4
  %259 = zext i16 %258 to i32
  br label %263

260:                                              ; preds = %247
  %261 = getelementptr inbounds %struct.hid_item, ptr %1, i32 0, i32 4
  %262 = load i32, ptr %261, align 4
  br label %263

263:                                              ; preds = %260, %256, %252
  %264 = phi i32 [ %262, %260 ], [ %259, %256 ], [ %255, %252 ]
  %265 = getelementptr inbounds %struct.hid_global, ptr %0, i32 0, i32 7
  store i32 %264, ptr %265, align 4
  %266 = add i32 %264, -256
  %267 = icmp ult i32 %266, -255
  br i1 %267, label %268, label %278

268:                                              ; preds = %263, %250
  %269 = phi i32 [ 0, %250 ], [ %264, %263 ]
  %270 = getelementptr inbounds %struct.hid_parser, ptr %0, i32 0, i32 7
  %271 = load ptr, ptr %270, align 4
  %272 = getelementptr inbounds %struct.hid_device, ptr %271, i32 0, i32 18
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %272, ptr noundef nonnull @.str.61, i32 noundef %269) #23
  br label %278

273:                                              ; preds = %2
  %274 = zext i8 %4 to i32
  %275 = getelementptr inbounds %struct.hid_parser, ptr %0, i32 0, i32 7
  %276 = load ptr, ptr %275, align 4
  %277 = getelementptr inbounds %struct.hid_device, ptr %276, i32 0, i32 18
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %277, ptr noundef nonnull @.str.62, i32 noundef %274) #23
  br label %278

278:                                              ; preds = %273, %268, %263, %243, %239, %236, %218, %214, %211, %194, %178, %175, %148, %133, %112, %95, %80, %59, %43, %25, %21, %13, %9
  %279 = phi i32 [ -1, %273 ], [ -1, %268 ], [ -1, %243 ], [ -1, %218 ], [ 0, %194 ], [ 0, %112 ], [ 0, %59 ], [ 0, %43 ], [ 0, %25 ], [ -1, %21 ], [ -1, %9 ], [ 0, %13 ], [ 0, %95 ], [ 0, %80 ], [ 0, %148 ], [ 0, %133 ], [ 0, %178 ], [ 0, %175 ], [ 0, %214 ], [ 0, %239 ], [ 0, %263 ], [ 0, %211 ], [ 0, %236 ]
  ret i32 %279
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @hid_parser_local(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = getelementptr inbounds %struct.hid_item, ptr %1, i32 0, i32 1
  %4 = load i8, ptr %3, align 4
  switch i8 %4, label %16 [
    i8 1, label %5
    i8 2, label %9
    i8 4, label %13
  ]

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.hid_item, ptr %1, i32 0, i32 4
  %7 = load i8, ptr %6, align 4
  %8 = zext i8 %7 to i32
  br label %16

9:                                                ; preds = %2
  %10 = getelementptr inbounds %struct.hid_item, ptr %1, i32 0, i32 4
  %11 = load i16, ptr %10, align 4
  %12 = zext i16 %11 to i32
  br label %16

13:                                               ; preds = %2
  %14 = getelementptr inbounds %struct.hid_item, ptr %1, i32 0, i32 4
  %15 = load i32, ptr %14, align 4
  br label %16

16:                                               ; preds = %13, %9, %5, %2
  %17 = phi i32 [ %15, %13 ], [ %12, %9 ], [ %8, %5 ], [ 0, %2 ]
  %18 = getelementptr inbounds %struct.hid_item, ptr %1, i32 0, i32 3
  %19 = load i8, ptr %18, align 2
  %20 = zext i8 %19 to i32
  switch i8 %19, label %190 [
    i8 10, label %21
    i8 0, label %42
    i8 1, label %89
    i8 2, label %100
  ]

21:                                               ; preds = %16
  %22 = icmp eq i32 %17, 0
  %23 = getelementptr inbounds %struct.hid_parser, ptr %0, i32 0, i32 3, i32 5
  %24 = load i32, ptr %23, align 4
  %25 = icmp eq i32 %24, 0
  br i1 %22, label %35, label %26

26:                                               ; preds = %21
  br i1 %25, label %31, label %27

27:                                               ; preds = %26
  %28 = getelementptr inbounds %struct.hid_parser, ptr %0, i32 0, i32 7
  %29 = load ptr, ptr %28, align 4
  %30 = getelementptr inbounds %struct.hid_device, ptr %29, i32 0, i32 18
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %30, ptr noundef nonnull @.str.63) #23
  br label %195

31:                                               ; preds = %26
  store i32 1, ptr %23, align 4
  %32 = getelementptr inbounds %struct.hid_parser, ptr %0, i32 0, i32 3, i32 6
  %33 = load i32, ptr %32, align 4
  %34 = add i32 %33, 1
  store i32 %34, ptr %32, align 4
  br label %195

35:                                               ; preds = %21
  br i1 %25, label %36, label %40

36:                                               ; preds = %35
  %37 = getelementptr inbounds %struct.hid_parser, ptr %0, i32 0, i32 7
  %38 = load ptr, ptr %37, align 4
  %39 = getelementptr inbounds %struct.hid_device, ptr %38, i32 0, i32 18
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %39, ptr noundef nonnull @.str.64) #23
  br label %195

40:                                               ; preds = %35
  %41 = add i32 %24, -1
  store i32 %41, ptr %23, align 4
  br label %195

42:                                               ; preds = %16
  %43 = getelementptr inbounds %struct.hid_parser, ptr %0, i32 0, i32 3, i32 6
  %44 = load i32, ptr %43, align 4
  %45 = icmp ugt i32 %44, 1
  br i1 %45, label %46, label %51

46:                                               ; preds = %42
  %47 = load i32, ptr @hid_debug, align 4
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %195, label %49

49:                                               ; preds = %46
  %50 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.65, ptr noundef nonnull @.str.5) #23
  br label %195

51:                                               ; preds = %42
  %52 = getelementptr inbounds %struct.hid_parser, ptr %0, i32 0, i32 3, i32 3
  %53 = load i32, ptr %52, align 4
  %54 = icmp ugt i32 %53, 12287
  br i1 %54, label %55, label %59

55:                                               ; preds = %51
  %56 = getelementptr inbounds %struct.hid_parser, ptr %0, i32 0, i32 7
  %57 = load ptr, ptr %56, align 4
  %58 = getelementptr inbounds %struct.hid_device, ptr %57, i32 0, i32 18
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %58, ptr noundef nonnull @.str.70) #23
  br label %195

59:                                               ; preds = %51
  %60 = getelementptr inbounds %struct.hid_parser, ptr %0, i32 0, i32 3
  %61 = getelementptr [12288 x i32], ptr %60, i32 0, i32 %53
  store i32 %17, ptr %61, align 4
  %62 = icmp ult i8 %4, 3
  br i1 %62, label %63, label %71

63:                                               ; preds = %59
  %64 = load i32, ptr %52, align 4
  %65 = getelementptr [12288 x i32], ptr %60, i32 0, i32 %64
  %66 = load i32, ptr %65, align 4
  %67 = and i32 %66, 65535
  store i32 %67, ptr %65, align 4
  %68 = load i32, ptr %0, align 4
  %69 = shl i32 %68, 16
  %70 = or i32 %69, %67
  store i32 %70, ptr %65, align 4
  br label %71

71:                                               ; preds = %63, %59
  %72 = load i32, ptr %52, align 4
  %73 = getelementptr %struct.hid_parser, ptr %0, i32 0, i32 3, i32 1, i32 %72
  store i8 %4, ptr %73, align 1
  %74 = getelementptr inbounds %struct.hid_parser, ptr %0, i32 0, i32 5
  %75 = load i32, ptr %74, align 4
  %76 = icmp eq i32 %75, 0
  br i1 %76, label %83, label %77

77:                                               ; preds = %71
  %78 = getelementptr inbounds %struct.hid_parser, ptr %0, i32 0, i32 4
  %79 = load ptr, ptr %78, align 4
  %80 = add i32 %75, -1
  %81 = getelementptr i32, ptr %79, i32 %80
  %82 = load i32, ptr %81, align 4
  br label %83

83:                                               ; preds = %77, %71
  %84 = phi i32 [ %82, %77 ], [ 0, %71 ]
  %85 = load i32, ptr %52, align 4
  %86 = getelementptr %struct.hid_parser, ptr %0, i32 0, i32 3, i32 2, i32 %85
  store i32 %84, ptr %86, align 4
  %87 = load i32, ptr %52, align 4
  %88 = add i32 %87, 1
  store i32 %88, ptr %52, align 4
  br label %195

89:                                               ; preds = %16
  %90 = getelementptr inbounds %struct.hid_parser, ptr %0, i32 0, i32 3, i32 6
  %91 = load i32, ptr %90, align 4
  %92 = icmp ugt i32 %91, 1
  br i1 %92, label %93, label %98

93:                                               ; preds = %89
  %94 = load i32, ptr @hid_debug, align 4
  %95 = icmp eq i32 %94, 0
  br i1 %95, label %195, label %96

96:                                               ; preds = %93
  %97 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.65, ptr noundef nonnull @.str.5) #23
  br label %195

98:                                               ; preds = %89
  %99 = getelementptr inbounds %struct.hid_parser, ptr %0, i32 0, i32 3, i32 4
  store i32 %17, ptr %99, align 4
  br label %195

100:                                              ; preds = %16
  %101 = getelementptr inbounds %struct.hid_parser, ptr %0, i32 0, i32 3, i32 6
  %102 = load i32, ptr %101, align 4
  %103 = icmp ugt i32 %102, 1
  br i1 %103, label %104, label %109

104:                                              ; preds = %100
  %105 = load i32, ptr @hid_debug, align 4
  %106 = icmp eq i32 %105, 0
  br i1 %106, label %195, label %107

107:                                              ; preds = %104
  %108 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.65, ptr noundef nonnull @.str.5) #23
  br label %195

109:                                              ; preds = %100
  %110 = getelementptr inbounds %struct.hid_parser, ptr %0, i32 0, i32 3, i32 4
  %111 = load i32, ptr %110, align 4
  %112 = sub i32 %17, %111
  %113 = getelementptr inbounds %struct.hid_parser, ptr %0, i32 0, i32 3, i32 3
  %114 = load i32, ptr %113, align 4
  %115 = add i32 %112, %114
  %116 = icmp ugt i32 %115, 12287
  br i1 %116, label %117, label %139

117:                                              ; preds = %109
  %118 = getelementptr inbounds %struct.hid_parser, ptr %0, i32 0, i32 7
  %119 = load ptr, ptr %118, align 4
  %120 = getelementptr inbounds %struct.hid_device, ptr %119, i32 0, i32 18
  %121 = getelementptr inbounds %struct.hid_device, ptr %119, i32 0, i32 18, i32 3
  %122 = load ptr, ptr %121, align 4
  %123 = icmp eq ptr %122, null
  br i1 %123, label %124, label %127

124:                                              ; preds = %117
  %125 = load ptr, ptr %120, align 4
  %126 = icmp eq ptr %125, null
  br i1 %126, label %130, label %127

127:                                              ; preds = %124, %117
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %120, ptr noundef nonnull @.str.66) #23
  %128 = load i32, ptr %113, align 4
  %129 = load i32, ptr %110, align 4
  br label %130

130:                                              ; preds = %127, %124
  %131 = phi i32 [ %129, %127 ], [ %111, %124 ]
  %132 = phi i32 [ %128, %127 ], [ %114, %124 ]
  %133 = sub i32 12287, %132
  %134 = add i32 %133, %131
  %135 = icmp eq i32 %134, 0
  br i1 %135, label %136, label %139

136:                                              ; preds = %130
  %137 = load ptr, ptr %118, align 4
  %138 = getelementptr inbounds %struct.hid_device, ptr %137, i32 0, i32 18
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %138, ptr noundef nonnull @.str.67) #23
  br label %195

139:                                              ; preds = %130, %109
  %140 = phi i32 [ %132, %130 ], [ %114, %109 ]
  %141 = phi i32 [ %131, %130 ], [ %111, %109 ]
  %142 = phi i32 [ %134, %130 ], [ %17, %109 ]
  %143 = icmp ugt i32 %141, %142
  br i1 %143, label %195, label %144

144:                                              ; preds = %139
  %145 = getelementptr inbounds %struct.hid_parser, ptr %0, i32 0, i32 3
  %146 = getelementptr inbounds %struct.hid_parser, ptr %0, i32 0, i32 5
  %147 = getelementptr inbounds %struct.hid_parser, ptr %0, i32 0, i32 4
  br label %148

148:                                              ; preds = %182, %144
  %149 = phi i32 [ %140, %144 ], [ %187, %182 ]
  %150 = phi i32 [ %141, %144 ], [ %188, %182 ]
  %151 = load i8, ptr %3, align 4
  %152 = icmp ugt i32 %149, 12287
  br i1 %152, label %174, label %153

153:                                              ; preds = %148
  %154 = getelementptr [12288 x i32], ptr %145, i32 0, i32 %149
  store i32 %150, ptr %154, align 4
  %155 = icmp ult i8 %151, 3
  br i1 %155, label %156, label %164

156:                                              ; preds = %153
  %157 = load i32, ptr %113, align 4
  %158 = getelementptr [12288 x i32], ptr %145, i32 0, i32 %157
  %159 = load i32, ptr %158, align 4
  %160 = and i32 %159, 65535
  store i32 %160, ptr %158, align 4
  %161 = load i32, ptr %0, align 4
  %162 = shl i32 %161, 16
  %163 = or i32 %162, %160
  store i32 %163, ptr %158, align 4
  br label %164

164:                                              ; preds = %156, %153
  %165 = load i32, ptr %113, align 4
  %166 = getelementptr %struct.hid_parser, ptr %0, i32 0, i32 3, i32 1, i32 %165
  store i8 %151, ptr %166, align 1
  %167 = load i32, ptr %146, align 4
  %168 = icmp eq i32 %167, 0
  br i1 %168, label %182, label %169

169:                                              ; preds = %164
  %170 = load ptr, ptr %147, align 4
  %171 = add i32 %167, -1
  %172 = getelementptr i32, ptr %170, i32 %171
  %173 = load i32, ptr %172, align 4
  br label %182

174:                                              ; preds = %148
  %175 = getelementptr inbounds %struct.hid_parser, ptr %0, i32 0, i32 7
  %176 = load ptr, ptr %175, align 4
  %177 = getelementptr inbounds %struct.hid_device, ptr %176, i32 0, i32 18
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %177, ptr noundef nonnull @.str.70) #23
  %178 = load i32, ptr @hid_debug, align 4
  %179 = icmp eq i32 %178, 0
  br i1 %179, label %195, label %180

180:                                              ; preds = %174
  %181 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.68, ptr noundef nonnull @.str.5) #23
  br label %195

182:                                              ; preds = %169, %164
  %183 = phi i32 [ %173, %169 ], [ 0, %164 ]
  %184 = load i32, ptr %113, align 4
  %185 = getelementptr %struct.hid_parser, ptr %0, i32 0, i32 3, i32 2, i32 %184
  store i32 %183, ptr %185, align 4
  %186 = load i32, ptr %113, align 4
  %187 = add i32 %186, 1
  store i32 %187, ptr %113, align 4
  %188 = add i32 %150, 1
  %189 = icmp ugt i32 %188, %142
  br i1 %189, label %195, label %148

190:                                              ; preds = %16
  %191 = load i32, ptr @hid_debug, align 4
  %192 = icmp eq i32 %191, 0
  br i1 %192, label %195, label %193

193:                                              ; preds = %190
  %194 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.69, ptr noundef nonnull @.str.5, i32 noundef %20) #23
  br label %195

195:                                              ; preds = %193, %190, %182, %180, %174, %139, %136, %107, %104, %98, %96, %93, %83, %55, %49, %46, %40, %36, %31, %27
  %196 = phi i32 [ -1, %136 ], [ 0, %98 ], [ -1, %27 ], [ -1, %36 ], [ 0, %40 ], [ 0, %31 ], [ 0, %49 ], [ 0, %46 ], [ 0, %96 ], [ 0, %93 ], [ 0, %107 ], [ 0, %104 ], [ -1, %180 ], [ -1, %174 ], [ 0, %193 ], [ 0, %190 ], [ -1, %55 ], [ 0, %83 ], [ 0, %139 ], [ 0, %182 ]
  ret i32 %196
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @hid_parser_reserved(ptr nocapture noundef readnone %0, ptr nocapture noundef readonly %1) #0 {
  %3 = load i32, ptr @hid_debug, align 4
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %10, label %5

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.hid_item, ptr %1, i32 0, i32 3
  %7 = load i8, ptr %6, align 2
  %8 = zext i8 %7 to i32
  %9 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.71, ptr noundef nonnull @.str.5, i32 noundef %8) #23
  br label %10

10:                                               ; preds = %5, %2
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @vzalloc(i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @vfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @hid_close_report(ptr noundef %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.hid_device, ptr %0, i32 0, i32 15
  br label %3

3:                                                ; preds = %20, %1
  %4 = phi i32 [ 0, %1 ], [ %21, %20 ]
  %5 = getelementptr %struct.hid_report_enum, ptr %2, i32 0, i32 2, i32 %4
  %6 = load ptr, ptr %5, align 4
  %7 = icmp eq ptr %6, null
  br i1 %7, label %20, label %8

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.hid_report, ptr %6, i32 0, i32 6
  %10 = load i32, ptr %9, align 4
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %19, label %12

12:                                               ; preds = %12, %8
  %13 = phi i32 [ %16, %12 ], [ 0, %8 ]
  %14 = getelementptr %struct.hid_report, ptr %6, i32 0, i32 5, i32 %13
  %15 = load ptr, ptr %14, align 4
  tail call void @kfree(ptr noundef %15) #22
  %16 = add nuw i32 %13, 1
  %17 = load i32, ptr %9, align 4
  %18 = icmp ult i32 %16, %17
  br i1 %18, label %12, label %19

19:                                               ; preds = %12, %8
  tail call void @kfree(ptr noundef nonnull %6) #22
  br label %20

20:                                               ; preds = %19, %3
  %21 = add nuw nsw i32 %4, 1
  %22 = icmp eq i32 %21, 256
  br i1 %22, label %23, label %3

23:                                               ; preds = %20
  tail call void @llvm.memset.p0.i32(ptr noundef align 4 dereferenceable(1036) %2, i8 0, i32 1036, i1 false)
  %24 = getelementptr %struct.hid_device, ptr %0, i32 0, i32 15, i32 0, i32 1
  store volatile ptr %24, ptr %24, align 4
  %25 = getelementptr %struct.hid_device, ptr %0, i32 0, i32 15, i32 0, i32 1, i32 1
  store ptr %24, ptr %25, align 4
  br label %26

26:                                               ; preds = %43, %23
  %27 = phi i32 [ 0, %23 ], [ %44, %43 ]
  %28 = getelementptr %struct.hid_report_enum, ptr %2, i32 1, i32 2, i32 %27
  %29 = load ptr, ptr %28, align 4
  %30 = icmp eq ptr %29, null
  br i1 %30, label %43, label %31

31:                                               ; preds = %26
  %32 = getelementptr inbounds %struct.hid_report, ptr %29, i32 0, i32 6
  %33 = load i32, ptr %32, align 4
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %42, label %35

35:                                               ; preds = %35, %31
  %36 = phi i32 [ %39, %35 ], [ 0, %31 ]
  %37 = getelementptr %struct.hid_report, ptr %29, i32 0, i32 5, i32 %36
  %38 = load ptr, ptr %37, align 4
  tail call void @kfree(ptr noundef %38) #22
  %39 = add nuw i32 %36, 1
  %40 = load i32, ptr %32, align 4
  %41 = icmp ult i32 %39, %40
  br i1 %41, label %35, label %42

42:                                               ; preds = %35, %31
  tail call void @kfree(ptr noundef nonnull %29) #22
  br label %43

43:                                               ; preds = %42, %26
  %44 = add nuw nsw i32 %27, 1
  %45 = icmp eq i32 %44, 256
  br i1 %45, label %46, label %26

46:                                               ; preds = %43
  %47 = getelementptr %struct.hid_device, ptr %0, i32 0, i32 15, i32 1
  tail call void @llvm.memset.p0.i32(ptr noundef align 4 dereferenceable(1036) %47, i8 0, i32 1036, i1 false)
  %48 = getelementptr %struct.hid_device, ptr %0, i32 0, i32 15, i32 1, i32 1
  store volatile ptr %48, ptr %48, align 4
  %49 = getelementptr %struct.hid_device, ptr %0, i32 0, i32 15, i32 1, i32 1, i32 1
  store ptr %48, ptr %49, align 4
  br label %50

50:                                               ; preds = %67, %46
  %51 = phi i32 [ 0, %46 ], [ %68, %67 ]
  %52 = getelementptr %struct.hid_report_enum, ptr %2, i32 2, i32 2, i32 %51
  %53 = load ptr, ptr %52, align 4
  %54 = icmp eq ptr %53, null
  br i1 %54, label %67, label %55

55:                                               ; preds = %50
  %56 = getelementptr inbounds %struct.hid_report, ptr %53, i32 0, i32 6
  %57 = load i32, ptr %56, align 4
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %66, label %59

59:                                               ; preds = %59, %55
  %60 = phi i32 [ %63, %59 ], [ 0, %55 ]
  %61 = getelementptr %struct.hid_report, ptr %53, i32 0, i32 5, i32 %60
  %62 = load ptr, ptr %61, align 4
  tail call void @kfree(ptr noundef %62) #22
  %63 = add nuw i32 %60, 1
  %64 = load i32, ptr %56, align 4
  %65 = icmp ult i32 %63, %64
  br i1 %65, label %59, label %66

66:                                               ; preds = %59, %55
  tail call void @kfree(ptr noundef nonnull %53) #22
  br label %67

67:                                               ; preds = %66, %50
  %68 = add nuw nsw i32 %51, 1
  %69 = icmp eq i32 %68, 256
  br i1 %69, label %70, label %50

70:                                               ; preds = %67
  %71 = getelementptr %struct.hid_device, ptr %0, i32 0, i32 15, i32 2
  tail call void @llvm.memset.p0.i32(ptr noundef align 4 dereferenceable(1036) %71, i8 0, i32 1036, i1 false)
  %72 = getelementptr %struct.hid_device, ptr %0, i32 0, i32 15, i32 2, i32 1
  store volatile ptr %72, ptr %72, align 4
  %73 = getelementptr %struct.hid_device, ptr %0, i32 0, i32 15, i32 2, i32 1, i32 1
  store ptr %72, ptr %73, align 4
  %74 = getelementptr inbounds %struct.hid_device, ptr %0, i32 0, i32 2
  %75 = load ptr, ptr %74, align 8
  tail call void @kfree(ptr noundef %75) #22
  store ptr null, ptr %74, align 8
  %76 = getelementptr inbounds %struct.hid_device, ptr %0, i32 0, i32 3
  store i32 0, ptr %76, align 4
  %77 = getelementptr inbounds %struct.hid_device, ptr %0, i32 0, i32 4
  %78 = load ptr, ptr %77, align 8
  tail call void @kfree(ptr noundef %78) #22
  %79 = getelementptr inbounds %struct.hid_device, ptr %0, i32 0, i32 23
  call void @llvm.memset.p0.i64(ptr noundef align 8 dereferenceable(16) %77, i8 0, i64 16, i1 false)
  %80 = load i32, ptr %79, align 8
  %81 = and i32 %80, -3
  store i32 %81, ptr %79, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define dso_local i32 @hid_snto32(i32 noundef %0, i32 noundef %1) #6 {
  %3 = icmp ne i32 %0, 0
  %4 = icmp ne i32 %1, 0
  %5 = and i1 %3, %4
  br i1 %5, label %6, label %21

6:                                                ; preds = %2
  switch i32 %1, label %13 [
    i32 8, label %7
    i32 16, label %10
    i32 32, label %21
  ]

7:                                                ; preds = %6
  %8 = shl i32 %0, 24
  %9 = ashr exact i32 %8, 24
  br label %21

10:                                               ; preds = %6
  %11 = shl i32 %0, 16
  %12 = ashr exact i32 %11, 16
  br label %21

13:                                               ; preds = %6
  %14 = add i32 %1, -1
  %15 = shl nuw i32 1, %14
  %16 = and i32 %15, %0
  %17 = icmp eq i32 %16, 0
  %18 = shl nsw i32 -1, %1
  %19 = select i1 %17, i32 0, i32 %18
  %20 = or i32 %19, %0
  br label %21

21:                                               ; preds = %13, %10, %7, %6, %2
  %22 = phi i32 [ %20, %13 ], [ %12, %10 ], [ %9, %7 ], [ 0, %2 ], [ %0, %6 ]
  ret i32 %22
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @hid_field_extract(ptr noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2, i32 noundef %3) #0 {
  %5 = icmp ugt i32 %3, 32
  br i1 %5, label %6, label %12

6:                                                ; preds = %4
  %7 = load i1, ptr @hid_field_extract.__print_once, align 1
  br i1 %7, label %14, label %8

8:                                                ; preds = %6
  store i1 true, ptr @hid_field_extract.__print_once, align 1
  %9 = getelementptr inbounds %struct.hid_device, ptr %0, i32 0, i32 18
  %10 = tail call ptr @llvm.thread.pointer() #22
  %11 = getelementptr inbounds %struct.task_struct, ptr %10, i32 0, i32 85
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %9, ptr noundef nonnull @.str.11, ptr noundef nonnull @__func__.hid_field_extract, i32 noundef %3, ptr noundef %11) #23
  br label %14

12:                                               ; preds = %4
  %13 = icmp eq i32 %3, 0
  br i1 %13, label %44, label %14

14:                                               ; preds = %12, %8, %6
  %15 = phi i32 [ %3, %12 ], [ 32, %6 ], [ 32, %8 ]
  %16 = and i32 %2, 7
  %17 = sub nuw nsw i32 8, %16
  %18 = lshr i32 %2, 3
  %19 = getelementptr i8, ptr %1, i32 %18
  %20 = load i8, ptr %19, align 1
  %21 = zext i8 %20 to i32
  %22 = lshr i32 %21, %16
  %23 = sub nsw i32 %15, %17
  %24 = icmp sgt i32 %23, 0
  br i1 %24, label %25, label %39

25:                                               ; preds = %25, %14
  %26 = phi i32 [ %35, %25 ], [ %22, %14 ]
  %27 = phi i32 [ %37, %25 ], [ %17, %14 ]
  %28 = phi i32 [ %30, %25 ], [ %18, %14 ]
  %29 = phi i32 [ %36, %25 ], [ %23, %14 ]
  %30 = add nuw nsw i32 %28, 1
  %31 = getelementptr i8, ptr %1, i32 %30
  %32 = load i8, ptr %31, align 1
  %33 = zext i8 %32 to i32
  %34 = shl i32 %33, %27
  %35 = or i32 %34, %26
  %36 = add nsw i32 %29, -8
  %37 = add i32 %27, 8
  %38 = icmp ugt i32 %29, 8
  br i1 %38, label %25, label %39, !llvm.loop !11

39:                                               ; preds = %25, %14
  %40 = phi i32 [ %22, %14 ], [ %35, %25 ]
  %41 = icmp slt i32 %15, 32
  %42 = shl nsw i32 -1, %15
  %43 = xor i32 %42, -1
  br i1 %41, label %44, label %47

44:                                               ; preds = %39, %12
  %45 = phi i32 [ %43, %39 ], [ 0, %12 ]
  %46 = phi i32 [ %40, %39 ], [ 0, %12 ]
  br label %47

47:                                               ; preds = %44, %39
  %48 = phi i32 [ %46, %44 ], [ %40, %39 ]
  %49 = phi i32 [ %45, %44 ], [ -1, %39 ]
  %50 = and i32 %49, %48
  ret i32 %50
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @hid_output_report(ptr nocapture noundef readonly %0, ptr nocapture noundef %1) #0 {
  %3 = getelementptr inbounds %struct.hid_report, ptr %0, i32 0, i32 2
  %4 = load i32, ptr %3, align 4
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %9, label %6

6:                                                ; preds = %2
  %7 = trunc i32 %4 to i8
  %8 = getelementptr i8, ptr %1, i32 1
  store i8 %7, ptr %1, align 1
  br label %9

9:                                                ; preds = %6, %2
  %10 = phi ptr [ %8, %6 ], [ %1, %2 ]
  %11 = getelementptr inbounds %struct.hid_report, ptr %0, i32 0, i32 7
  %12 = load i32, ptr %11, align 4
  %13 = icmp eq i32 %12, 0
  %14 = add i32 %12, -1
  %15 = lshr i32 %14, 3
  %16 = add nuw nsw i32 %15, 1
  %17 = select i1 %13, i32 0, i32 %16
  tail call void @llvm.memset.p0.i32(ptr align 1 %10, i8 0, i32 %17, i1 false)
  %18 = getelementptr inbounds %struct.hid_report, ptr %0, i32 0, i32 6
  %19 = load i32, ptr %18, align 4
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %135, label %21

21:                                               ; preds = %9
  %22 = getelementptr inbounds %struct.hid_report, ptr %0, i32 0, i32 8
  br label %23

23:                                               ; preds = %131, %21
  %24 = phi i32 [ %19, %21 ], [ %132, %131 ]
  %25 = phi i32 [ 0, %21 ], [ %133, %131 ]
  %26 = getelementptr %struct.hid_report, ptr %0, i32 0, i32 5, i32 %25
  %27 = load ptr, ptr %26, align 4
  %28 = getelementptr inbounds %struct.hid_field, ptr %27, i32 0, i32 8
  %29 = load i32, ptr %28, align 4
  %30 = getelementptr inbounds %struct.hid_field, ptr %27, i32 0, i32 6
  %31 = load i32, ptr %30, align 4
  %32 = getelementptr inbounds %struct.hid_field, ptr %27, i32 0, i32 7
  %33 = load i32, ptr %32, align 4
  %34 = icmp eq i32 %29, 0
  br i1 %34, label %131, label %35

35:                                               ; preds = %23
  %36 = load ptr, ptr %22, align 4
  %37 = getelementptr inbounds %struct.hid_field, ptr %27, i32 0, i32 11
  %38 = getelementptr inbounds %struct.hid_field, ptr %27, i32 0, i32 10
  %39 = add i32 %33, -1
  %40 = shl nsw i32 -1, %33
  %41 = xor i32 %40, -1
  %42 = shl nuw i32 1, %39
  %43 = shl nsw i32 -1, %39
  %44 = xor i32 %43, -1
  %45 = icmp ugt i32 %33, 32
  %46 = icmp eq i32 %33, 32
  %47 = getelementptr inbounds %struct.hid_device, ptr %36, i32 0, i32 18
  br label %48

48:                                               ; preds = %126, %35
  %49 = phi i32 [ 0, %35 ], [ %127, %126 ]
  %50 = load i32, ptr %37, align 4
  %51 = icmp slt i32 %50, 0
  %52 = mul i32 %49, %33
  %53 = add i32 %52, %31
  %54 = load ptr, ptr %38, align 4
  %55 = getelementptr i32, ptr %54, i32 %49
  %56 = load i32, ptr %55, align 4
  br i1 %51, label %57, label %65

57:                                               ; preds = %48
  %58 = ashr i32 %56, %39
  %59 = add i32 %58, -1
  %60 = icmp ult i32 %59, -2
  %61 = icmp slt i32 %56, 0
  %62 = select i1 %61, i32 %42, i32 %44
  %63 = and i32 %56, %41
  %64 = select i1 %60, i32 %62, i32 %63
  br label %65

65:                                               ; preds = %57, %48
  %66 = phi i32 [ %64, %57 ], [ %56, %48 ]
  br i1 %45, label %67, label %70, !prof !9

67:                                               ; preds = %65
  %68 = tail call ptr @llvm.thread.pointer() #22
  %69 = getelementptr inbounds %struct.task_struct, ptr %68, i32 0, i32 85
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %47, ptr noundef nonnull @.str.11, ptr noundef nonnull @__func__.implement, i32 noundef %33, ptr noundef %69) #23
  br label %77

70:                                               ; preds = %65
  br i1 %46, label %77, label %71

71:                                               ; preds = %70
  %72 = icmp ugt i32 %66, %41
  br i1 %72, label %73, label %77, !prof !9

73:                                               ; preds = %71
  %74 = tail call ptr @llvm.thread.pointer() #22
  %75 = getelementptr inbounds %struct.task_struct, ptr %74, i32 0, i32 85
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %47, ptr noundef nonnull @.str.72, ptr noundef nonnull @__func__.implement, i32 noundef %66, i32 noundef %33, ptr noundef %75) #23
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.5, i32 noundef 1432, i32 noundef 9, ptr noundef null) #22
  %76 = and i32 %66, %41
  br label %77

77:                                               ; preds = %73, %71, %70, %67
  %78 = phi i32 [ %66, %67 ], [ %66, %70 ], [ %76, %73 ], [ %66, %71 ]
  %79 = phi i32 [ 32, %67 ], [ 32, %70 ], [ %33, %73 ], [ %33, %71 ]
  %80 = lshr i32 %53, 3
  %81 = and i32 %53, 7
  %82 = sub nuw nsw i32 8, %81
  %83 = sub nsw i32 %79, %82
  %84 = icmp sgt i32 %83, -1
  br i1 %84, label %85, label %108

85:                                               ; preds = %77
  %86 = shl nuw nsw i32 255, %81
  %87 = getelementptr i8, ptr %10, i32 %80
  %88 = load i8, ptr %87, align 1
  %89 = trunc i32 %86 to i8
  %90 = xor i8 %89, -1
  %91 = and i8 %88, %90
  %92 = shl i32 %78, %81
  %93 = trunc i32 %92 to i8
  %94 = or i8 %91, %93
  store i8 %94, ptr %87, align 1
  %95 = lshr i32 %78, %82
  %96 = add nuw nsw i32 %80, 1
  %97 = icmp ugt i32 %83, 7
  br i1 %97, label %98, label %108

98:                                               ; preds = %98, %85
  %99 = phi i32 [ %102, %98 ], [ %83, %85 ]
  %100 = phi i32 [ %106, %98 ], [ %96, %85 ]
  %101 = phi i32 [ %105, %98 ], [ %95, %85 ]
  %102 = add nsw i32 %99, -8
  %103 = getelementptr i8, ptr %10, i32 %100
  %104 = trunc i32 %101 to i8
  store i8 %104, ptr %103, align 1
  %105 = lshr i32 %101, 8
  %106 = add nuw nsw i32 %100, 1
  %107 = icmp ugt i32 %99, 15
  br i1 %107, label %98, label %108, !llvm.loop !13

108:                                              ; preds = %98, %85, %77
  %109 = phi i32 [ %78, %77 ], [ %95, %85 ], [ %105, %98 ]
  %110 = phi i32 [ %80, %77 ], [ %96, %85 ], [ %106, %98 ]
  %111 = phi i32 [ %81, %77 ], [ 0, %85 ], [ 0, %98 ]
  %112 = phi i32 [ %79, %77 ], [ %83, %85 ], [ %102, %98 ]
  %113 = icmp eq i32 %112, 0
  br i1 %113, label %126, label %114

114:                                              ; preds = %108
  %115 = shl nsw i32 -1, %112
  %116 = xor i32 %115, -1
  %117 = shl i32 %116, %111
  %118 = getelementptr i8, ptr %10, i32 %110
  %119 = load i8, ptr %118, align 1
  %120 = trunc i32 %117 to i8
  %121 = xor i8 %120, -1
  %122 = and i8 %119, %121
  %123 = shl i32 %109, %111
  %124 = trunc i32 %123 to i8
  %125 = or i8 %122, %124
  store i8 %125, ptr %118, align 1
  br label %126

126:                                              ; preds = %114, %108
  %127 = add nuw i32 %49, 1
  %128 = icmp eq i32 %127, %29
  br i1 %128, label %129, label %48

129:                                              ; preds = %126
  %130 = load i32, ptr %18, align 4
  br label %131

131:                                              ; preds = %129, %23
  %132 = phi i32 [ %130, %129 ], [ %24, %23 ]
  %133 = add nuw i32 %25, 1
  %134 = icmp ult i32 %133, %132
  br i1 %134, label %23, label %135

135:                                              ; preds = %131, %9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @hid_alloc_report_buf(ptr nocapture noundef readonly %0, i32 noundef %1) #0 {
  %3 = getelementptr inbounds %struct.hid_report, ptr %0, i32 0, i32 7
  %4 = load i32, ptr %3, align 4
  %5 = add i32 %4, 7
  %6 = lshr i32 %5, 3
  %7 = getelementptr inbounds %struct.hid_report, ptr %0, i32 0, i32 2
  %8 = load i32, ptr %7, align 4
  %9 = icmp ne i32 %8, 0
  %10 = zext i1 %9 to i32
  %11 = add nuw nsw i32 %6, %10
  %12 = add nuw nsw i32 %11, 7
  %13 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %12, i32 noundef %1) #24
  ret ptr %13
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @hid_set_field(ptr noundef readonly %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = icmp eq ptr %0, null
  br i1 %4, label %73, label %5

5:                                                ; preds = %3
  %6 = getelementptr inbounds %struct.hid_field, ptr %0, i32 0, i32 7
  %7 = load i32, ptr %6, align 4
  %8 = getelementptr inbounds %struct.hid_field, ptr %0, i32 0, i32 17
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.hid_report, ptr %9, i32 0, i32 8
  %11 = load ptr, ptr %10, align 4
  %12 = getelementptr inbounds %struct.hid_field, ptr %0, i32 0, i32 3
  %13 = load ptr, ptr %12, align 4
  %14 = getelementptr %struct.hid_usage, ptr %13, i32 %1
  tail call void @hid_dump_input(ptr noundef %11, ptr noundef %14, i32 noundef %2) #22
  %15 = getelementptr inbounds %struct.hid_field, ptr %0, i32 0, i32 8
  %16 = load i32, ptr %15, align 4
  %17 = icmp ugt i32 %16, %1
  br i1 %17, label %23, label %18

18:                                               ; preds = %5
  %19 = load ptr, ptr %8, align 4
  %20 = getelementptr inbounds %struct.hid_report, ptr %19, i32 0, i32 8
  %21 = load ptr, ptr %20, align 4
  %22 = getelementptr inbounds %struct.hid_device, ptr %21, i32 0, i32 18
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %22, ptr noundef nonnull @.str.12, i32 noundef %1, i32 noundef %16) #23
  br label %73

23:                                               ; preds = %5
  %24 = getelementptr inbounds %struct.hid_field, ptr %0, i32 0, i32 11
  %25 = load i32, ptr %24, align 4
  %26 = icmp slt i32 %25, 0
  br i1 %26, label %27, label %69

27:                                               ; preds = %23
  %28 = add i32 %7, -1
  %29 = ashr i32 %2, %28
  %30 = add i32 %29, -1
  %31 = icmp ult i32 %30, -2
  br i1 %31, label %32, label %38

32:                                               ; preds = %27
  %33 = icmp slt i32 %2, 0
  %34 = shl nuw i32 1, %28
  %35 = shl nsw i32 -1, %28
  %36 = xor i32 %35, -1
  %37 = select i1 %33, i32 %34, i32 %36
  br label %42

38:                                               ; preds = %27
  %39 = shl nsw i32 -1, %7
  %40 = xor i32 %39, -1
  %41 = and i32 %40, %2
  br label %42

42:                                               ; preds = %38, %32
  %43 = phi i32 [ %37, %32 ], [ %41, %38 ]
  %44 = icmp ne i32 %43, 0
  %45 = icmp ne i32 %7, 0
  %46 = and i1 %45, %44
  br i1 %46, label %47, label %61

47:                                               ; preds = %42
  switch i32 %7, label %54 [
    i32 8, label %48
    i32 16, label %51
    i32 32, label %61
  ]

48:                                               ; preds = %47
  %49 = shl i32 %43, 24
  %50 = ashr exact i32 %49, 24
  br label %61

51:                                               ; preds = %47
  %52 = shl i32 %43, 16
  %53 = ashr exact i32 %52, 16
  br label %61

54:                                               ; preds = %47
  %55 = shl nuw i32 1, %28
  %56 = and i32 %43, %55
  %57 = icmp eq i32 %56, 0
  %58 = shl nsw i32 -1, %7
  %59 = select i1 %57, i32 0, i32 %58
  %60 = or i32 %59, %43
  br label %61

61:                                               ; preds = %54, %51, %48, %47, %42
  %62 = phi i32 [ %60, %54 ], [ %53, %51 ], [ %50, %48 ], [ 0, %42 ], [ %43, %47 ]
  %63 = icmp eq i32 %62, %2
  br i1 %63, label %69, label %64

64:                                               ; preds = %61
  %65 = load ptr, ptr %8, align 4
  %66 = getelementptr inbounds %struct.hid_report, ptr %65, i32 0, i32 8
  %67 = load ptr, ptr %66, align 4
  %68 = getelementptr inbounds %struct.hid_device, ptr %67, i32 0, i32 18
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %68, ptr noundef nonnull @.str.13, i32 noundef %2) #23
  br label %73

69:                                               ; preds = %61, %23
  %70 = getelementptr inbounds %struct.hid_field, ptr %0, i32 0, i32 10
  %71 = load ptr, ptr %70, align 4
  %72 = getelementptr i32, ptr %71, i32 %1
  store i32 %2, ptr %72, align 4
  br label %73

73:                                               ; preds = %69, %64, %18, %3
  %74 = phi i32 [ -1, %18 ], [ -1, %64 ], [ 0, %69 ], [ -1, %3 ]
  ret i32 %74
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @hid_dump_input(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__hid_request(ptr noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2) #0 {
  %4 = getelementptr inbounds %struct.hid_report, ptr %1, i32 0, i32 7
  %5 = getelementptr inbounds %struct.hid_report, ptr %1, i32 0, i32 2
  %6 = load i32, ptr %4, align 4
  %7 = add i32 %6, 7
  %8 = lshr i32 %7, 3
  %9 = load i32, ptr %5, align 4
  %10 = icmp ne i32 %9, 0
  %11 = zext i1 %10 to i32
  %12 = add nuw nsw i32 %8, %11
  %13 = add nuw nsw i32 %12, 7
  %14 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %13, i32 noundef 3264) #24
  %15 = icmp eq ptr %14, null
  br i1 %15, label %51, label %16

16:                                               ; preds = %3
  %17 = load i32, ptr %4, align 4
  %18 = add i32 %17, 7
  %19 = lshr i32 %18, 3
  %20 = load i32, ptr %5, align 4
  %21 = icmp ne i32 %20, 0
  %22 = zext i1 %21 to i32
  %23 = add nuw nsw i32 %19, %22
  %24 = icmp eq i32 %2, 9
  br i1 %24, label %25, label %27

25:                                               ; preds = %16
  tail call void @hid_output_report(ptr noundef %1, ptr noundef nonnull %14)
  %26 = load i32, ptr %5, align 4
  br label %27

27:                                               ; preds = %25, %16
  %28 = phi i32 [ %26, %25 ], [ %20, %16 ]
  %29 = getelementptr inbounds %struct.hid_device, ptr %0, i32 0, i32 20
  %30 = load ptr, ptr %29, align 4
  %31 = getelementptr inbounds %struct.hid_ll_driver, ptr %30, i32 0, i32 8
  %32 = load ptr, ptr %31, align 4
  %33 = trunc i32 %28 to i8
  %34 = getelementptr inbounds %struct.hid_report, ptr %1, i32 0, i32 3
  %35 = load i32, ptr %34, align 4
  %36 = trunc i32 %35 to i8
  %37 = tail call i32 %32(ptr noundef %0, i8 noundef zeroext %33, ptr noundef nonnull %14, i32 noundef %23, i8 noundef zeroext %36, i32 noundef %2) #22
  %38 = icmp slt i32 %37, 0
  br i1 %38, label %39, label %44

39:                                               ; preds = %27
  %40 = load i32, ptr @hid_debug, align 4
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %49, label %42

42:                                               ; preds = %39
  %43 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.5, i32 noundef %37) #23
  br label %49

44:                                               ; preds = %27
  %45 = icmp eq i32 %2, 1
  br i1 %45, label %46, label %49

46:                                               ; preds = %44
  %47 = load i32, ptr %34, align 4
  %48 = tail call i32 @hid_input_report(ptr noundef %0, i32 noundef %47, ptr noundef nonnull %14, i32 noundef %37, i32 noundef 0)
  br label %49

49:                                               ; preds = %46, %44, %42, %39
  %50 = phi i32 [ %37, %42 ], [ %37, %39 ], [ 0, %46 ], [ 0, %44 ]
  tail call void @kfree(ptr noundef nonnull %14) #22
  br label %51

51:                                               ; preds = %49, %3
  %52 = phi i32 [ %50, %49 ], [ -12, %3 ]
  ret i32 %52
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @hid_input_report(ptr noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef %4) #0 {
  %6 = icmp eq ptr %0, null
  br i1 %6, label %71, label %7

7:                                                ; preds = %5
  %8 = getelementptr inbounds %struct.hid_device, ptr %0, i32 0, i32 17
  %9 = tail call i32 @down_trylock(ptr noundef %8) #22
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %71

11:                                               ; preds = %7
  %12 = getelementptr inbounds %struct.hid_device, ptr %0, i32 0, i32 19
  %13 = load ptr, ptr %12, align 8
  %14 = icmp eq ptr %13, null
  br i1 %14, label %69, label %15

15:                                               ; preds = %11
  %16 = getelementptr inbounds %struct.hid_device, ptr %0, i32 0, i32 15
  %17 = getelementptr %struct.hid_report_enum, ptr %16, i32 %1
  %18 = icmp eq i32 %3, 0
  br i1 %18, label %19, label %24

19:                                               ; preds = %15
  %20 = load i32, ptr @hid_debug, align 4
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %69, label %22

22:                                               ; preds = %19
  %23 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.5) #23
  br label %69

24:                                               ; preds = %15
  %25 = getelementptr inbounds %struct.hid_device, ptr %0, i32 0, i32 43
  %26 = load volatile ptr, ptr %25, align 4
  %27 = icmp eq ptr %26, %25
  br i1 %27, label %29, label %28

28:                                               ; preds = %24
  tail call void @hid_dump_report(ptr noundef nonnull %0, i32 noundef %1, ptr noundef %2, i32 noundef %3) #22
  br label %29

29:                                               ; preds = %28, %24
  %30 = load i32, ptr %17, align 4
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %35, label %32

32:                                               ; preds = %29
  %33 = load i8, ptr %2, align 1
  %34 = zext i8 %33 to i32
  br label %35

35:                                               ; preds = %32, %29
  %36 = phi i32 [ %34, %32 ], [ 0, %29 ]
  %37 = getelementptr %struct.hid_report_enum, ptr %16, i32 %1, i32 2, i32 %36
  %38 = load ptr, ptr %37, align 4
  %39 = icmp eq ptr %38, null
  %40 = load i32, ptr @hid_debug, align 4
  %41 = icmp ne i32 %40, 0
  %42 = select i1 %39, i1 %41, i1 false
  br i1 %42, label %43, label %45

43:                                               ; preds = %35
  %44 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.73, ptr noundef nonnull @.str.5, i32 noundef %36) #23
  br label %45

45:                                               ; preds = %43, %35
  br i1 %39, label %69, label %46

46:                                               ; preds = %45
  %47 = getelementptr inbounds %struct.hid_driver, ptr %13, i32 0, i32 8
  %48 = load ptr, ptr %47, align 4
  %49 = icmp eq ptr %48, null
  br i1 %49, label %67, label %50

50:                                               ; preds = %46
  %51 = load ptr, ptr %12, align 8
  %52 = getelementptr inbounds %struct.hid_driver, ptr %51, i32 0, i32 7
  %53 = load ptr, ptr %52, align 4
  %54 = icmp eq ptr %53, null
  br i1 %54, label %64, label %55

55:                                               ; preds = %50
  %56 = getelementptr inbounds %struct.hid_report, ptr %38, i32 0, i32 3
  br label %57

57:                                               ; preds = %60, %55
  %58 = phi ptr [ %63, %60 ], [ %53, %55 ]
  %59 = load i32, ptr %58, align 4
  switch i32 %59, label %60 [
    i32 -2, label %67
    i32 -1, label %64
  ]

60:                                               ; preds = %57
  %61 = load i32, ptr %56, align 4
  %62 = icmp eq i32 %59, %61
  %63 = getelementptr %struct.hid_report_id, ptr %58, i32 1
  br i1 %62, label %64, label %57

64:                                               ; preds = %60, %57, %50
  %65 = tail call i32 %48(ptr noundef nonnull %0, ptr noundef nonnull %38, ptr noundef %2, i32 noundef %3) #22
  %66 = icmp slt i32 %65, 0
  br i1 %66, label %69, label %67

67:                                               ; preds = %64, %57, %46
  %68 = tail call i32 @hid_report_raw_event(ptr noundef nonnull %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef %4)
  br label %69

69:                                               ; preds = %67, %64, %45, %22, %19, %11
  %70 = phi i32 [ %65, %64 ], [ 0, %67 ], [ -19, %11 ], [ -1, %22 ], [ -1, %19 ], [ -1, %45 ]
  tail call void @up(ptr noundef %8) #22
  br label %71

71:                                               ; preds = %69, %7, %5
  %72 = phi i32 [ %70, %69 ], [ -19, %5 ], [ -16, %7 ]
  ret i32 %72
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @hid_report_raw_event(ptr noundef %0, i32 noundef %1, ptr nocapture noundef %2, i32 noundef %3, i32 noundef %4) #0 {
  %6 = getelementptr inbounds %struct.hid_device, ptr %0, i32 0, i32 15
  %7 = getelementptr %struct.hid_report_enum, ptr %6, i32 %1
  %8 = load i32, ptr %7, align 4
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %13, label %10

10:                                               ; preds = %5
  %11 = load i8, ptr %2, align 1
  %12 = zext i8 %11 to i32
  br label %13

13:                                               ; preds = %10, %5
  %14 = phi i32 [ %12, %10 ], [ 0, %5 ]
  %15 = getelementptr %struct.hid_report_enum, ptr %6, i32 %1, i32 2, i32 %14
  %16 = load ptr, ptr %15, align 4
  %17 = icmp eq ptr %16, null
  %18 = load i32, ptr @hid_debug, align 4
  %19 = icmp ne i32 %18, 0
  %20 = select i1 %17, i1 %19, i1 false
  br i1 %20, label %21, label %23

21:                                               ; preds = %13
  %22 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.73, ptr noundef nonnull @.str.5, i32 noundef %14) #23
  br label %23

23:                                               ; preds = %21, %13
  br i1 %17, label %328, label %24

24:                                               ; preds = %23
  %25 = load i32, ptr %7, align 4
  %26 = icmp ne i32 %25, 0
  %27 = sext i1 %26 to i32
  %28 = add i32 %27, %3
  %29 = zext i1 %26 to i32
  %30 = getelementptr i8, ptr %2, i32 %29
  %31 = getelementptr inbounds %struct.hid_report, ptr %16, i32 0, i32 7
  %32 = load i32, ptr %31, align 4
  %33 = icmp eq i32 %32, 0
  %34 = add i32 %32, -1
  %35 = lshr i32 %34, 3
  %36 = add nuw nsw i32 %35, 1
  %37 = select i1 %33, i32 0, i32 %36
  %38 = icmp ne i32 %25, 0
  %39 = icmp ugt i32 %37, 16383
  %40 = select i1 %38, i1 %39, i1 false
  %41 = tail call i32 @llvm.umin.i32(i32 %37, i32 16384)
  %42 = select i1 %40, i32 16383, i32 %41
  %43 = icmp ugt i32 %42, %28
  br i1 %43, label %44, label %54

44:                                               ; preds = %24
  %45 = load i32, ptr @hid_debug, align 4
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %51, label %47

47:                                               ; preds = %44
  %48 = getelementptr inbounds %struct.hid_report, ptr %16, i32 0, i32 2
  %49 = load i32, ptr %48, align 4
  %50 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.15, ptr noundef nonnull @.str.5, i32 noundef %49, i32 noundef %28, i32 noundef %42) #23
  br label %51

51:                                               ; preds = %47, %44
  %52 = getelementptr i8, ptr %30, i32 %28
  %53 = sub i32 %42, %28
  tail call void @llvm.memset.p0.i32(ptr align 1 %52, i8 0, i32 %53, i1 false)
  br label %54

54:                                               ; preds = %51, %24
  %55 = getelementptr inbounds %struct.hid_device, ptr %0, i32 0, i32 24
  %56 = load i32, ptr %55, align 4
  %57 = and i32 %56, 2
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %65, label %59

59:                                               ; preds = %54
  %60 = getelementptr inbounds %struct.hid_device, ptr %0, i32 0, i32 38
  %61 = load ptr, ptr %60, align 4
  %62 = icmp eq ptr %61, null
  br i1 %62, label %65, label %63

63:                                               ; preds = %59
  tail call void %61(ptr noundef %0, ptr noundef nonnull %16) #22
  %64 = load i32, ptr %55, align 4
  br label %65

65:                                               ; preds = %63, %59, %54
  %66 = phi i32 [ %56, %54 ], [ %56, %59 ], [ %64, %63 ]
  %67 = icmp eq i32 %66, 4
  br i1 %67, label %323, label %68

68:                                               ; preds = %65
  %69 = getelementptr inbounds %struct.hid_report, ptr %16, i32 0, i32 6
  %70 = load i32, ptr %69, align 4
  %71 = icmp eq i32 %70, 0
  br i1 %71, label %323, label %72

72:                                               ; preds = %68
  %73 = getelementptr inbounds %struct.hid_device, ptr %0, i32 0, i32 18
  br label %74

74:                                               ; preds = %310, %72
  %75 = phi i32 [ 0, %72 ], [ %311, %310 ]
  %76 = getelementptr %struct.hid_report, ptr %16, i32 0, i32 5, i32 %75
  %77 = load ptr, ptr %76, align 4
  %78 = getelementptr inbounds %struct.hid_field, ptr %77, i32 0, i32 8
  %79 = load i32, ptr %78, align 4
  %80 = getelementptr inbounds %struct.hid_field, ptr %77, i32 0, i32 6
  %81 = load i32, ptr %80, align 4
  %82 = getelementptr inbounds %struct.hid_field, ptr %77, i32 0, i32 7
  %83 = load i32, ptr %82, align 4
  %84 = getelementptr inbounds %struct.hid_field, ptr %77, i32 0, i32 11
  %85 = load i32, ptr %84, align 4
  %86 = getelementptr inbounds %struct.hid_field, ptr %77, i32 0, i32 12
  %87 = load i32, ptr %86, align 4
  %88 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %79, i32 4) #22
  %89 = extractvalue { i32, i1 } %88, 1
  br i1 %89, label %310, label %90, !prof !9

90:                                               ; preds = %74
  %91 = extractvalue { i32, i1 } %88, 0
  %92 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %91, i32 noundef 2592) #24
  %93 = icmp eq ptr %92, null
  br i1 %93, label %310, label %94

94:                                               ; preds = %90
  %95 = icmp eq i32 %79, 0
  br i1 %95, label %305, label %96

96:                                               ; preds = %94
  %97 = icmp slt i32 %85, 0
  %98 = icmp ugt i32 %83, 32
  %99 = icmp eq i32 %83, 0
  %100 = icmp ne i32 %83, 0
  %101 = add i32 %83, -1
  %102 = shl nuw i32 1, %101
  %103 = shl nsw i32 -1, %83
  %104 = getelementptr inbounds %struct.hid_field, ptr %77, i32 0, i32 5
  %105 = getelementptr inbounds %struct.hid_field, ptr %77, i32 0, i32 4
  %106 = getelementptr inbounds %struct.hid_field, ptr %77, i32 0, i32 3
  br label %109

107:                                              ; preds = %234
  %108 = getelementptr inbounds %struct.hid_field, ptr %77, i32 0, i32 10
  br label %237

109:                                              ; preds = %234, %96
  %110 = phi i32 [ 0, %96 ], [ %235, %234 ]
  %111 = mul i32 %110, %83
  %112 = add i32 %111, %81
  br i1 %97, label %113, label %171

113:                                              ; preds = %109
  br i1 %98, label %114, label %119

114:                                              ; preds = %113
  %115 = load i1, ptr @hid_field_extract.__print_once, align 1
  br i1 %115, label %120, label %116

116:                                              ; preds = %114
  store i1 true, ptr @hid_field_extract.__print_once, align 1
  %117 = tail call ptr @llvm.thread.pointer() #22
  %118 = getelementptr inbounds %struct.task_struct, ptr %117, i32 0, i32 85
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %73, ptr noundef nonnull @.str.11, ptr noundef nonnull @__func__.hid_field_extract, i32 noundef %83, ptr noundef %118) #23
  br label %120

119:                                              ; preds = %113
  br i1 %99, label %150, label %120

120:                                              ; preds = %119, %116, %114
  %121 = phi i32 [ %83, %119 ], [ 32, %114 ], [ 32, %116 ]
  %122 = and i32 %112, 7
  %123 = sub nuw nsw i32 8, %122
  %124 = lshr i32 %112, 3
  %125 = getelementptr i8, ptr %30, i32 %124
  %126 = load i8, ptr %125, align 1
  %127 = zext i8 %126 to i32
  %128 = lshr i32 %127, %122
  %129 = sub nsw i32 %121, %123
  %130 = icmp sgt i32 %129, 0
  br i1 %130, label %131, label %145

131:                                              ; preds = %131, %120
  %132 = phi i32 [ %141, %131 ], [ %128, %120 ]
  %133 = phi i32 [ %143, %131 ], [ %123, %120 ]
  %134 = phi i32 [ %136, %131 ], [ %124, %120 ]
  %135 = phi i32 [ %142, %131 ], [ %129, %120 ]
  %136 = add nuw nsw i32 %134, 1
  %137 = getelementptr i8, ptr %30, i32 %136
  %138 = load i8, ptr %137, align 1
  %139 = zext i8 %138 to i32
  %140 = shl i32 %139, %133
  %141 = or i32 %140, %132
  %142 = add nsw i32 %135, -8
  %143 = add i32 %133, 8
  %144 = icmp ugt i32 %135, 8
  br i1 %144, label %131, label %145, !llvm.loop !11

145:                                              ; preds = %131, %120
  %146 = phi i32 [ %128, %120 ], [ %141, %131 ]
  %147 = icmp slt i32 %121, 32
  %148 = shl nsw i32 -1, %121
  %149 = xor i32 %148, -1
  br i1 %147, label %150, label %153

150:                                              ; preds = %145, %119
  %151 = phi i32 [ %149, %145 ], [ 0, %119 ]
  %152 = phi i32 [ %146, %145 ], [ 0, %119 ]
  br label %153

153:                                              ; preds = %150, %145
  %154 = phi i32 [ %152, %150 ], [ %146, %145 ]
  %155 = phi i32 [ %151, %150 ], [ -1, %145 ]
  %156 = and i32 %155, %154
  %157 = icmp ne i32 %156, 0
  %158 = and i1 %100, %157
  br i1 %158, label %159, label %215

159:                                              ; preds = %153
  switch i32 %83, label %166 [
    i32 8, label %160
    i32 16, label %163
    i32 32, label %215
  ]

160:                                              ; preds = %159
  %161 = shl i32 %156, 24
  %162 = ashr exact i32 %161, 24
  br label %215

163:                                              ; preds = %159
  %164 = shl i32 %156, 16
  %165 = ashr exact i32 %164, 16
  br label %215

166:                                              ; preds = %159
  %167 = and i32 %156, %102
  %168 = icmp eq i32 %167, 0
  %169 = select i1 %168, i32 0, i32 %103
  %170 = or i32 %169, %156
  br label %215

171:                                              ; preds = %109
  br i1 %98, label %172, label %177

172:                                              ; preds = %171
  %173 = load i1, ptr @hid_field_extract.__print_once, align 1
  br i1 %173, label %178, label %174

174:                                              ; preds = %172
  store i1 true, ptr @hid_field_extract.__print_once, align 1
  %175 = tail call ptr @llvm.thread.pointer() #22
  %176 = getelementptr inbounds %struct.task_struct, ptr %175, i32 0, i32 85
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %73, ptr noundef nonnull @.str.11, ptr noundef nonnull @__func__.hid_field_extract, i32 noundef %83, ptr noundef %176) #23
  br label %178

177:                                              ; preds = %171
  br i1 %99, label %208, label %178

178:                                              ; preds = %177, %174, %172
  %179 = phi i32 [ %83, %177 ], [ 32, %172 ], [ 32, %174 ]
  %180 = and i32 %112, 7
  %181 = sub nuw nsw i32 8, %180
  %182 = lshr i32 %112, 3
  %183 = getelementptr i8, ptr %30, i32 %182
  %184 = load i8, ptr %183, align 1
  %185 = zext i8 %184 to i32
  %186 = lshr i32 %185, %180
  %187 = sub nsw i32 %179, %181
  %188 = icmp sgt i32 %187, 0
  br i1 %188, label %189, label %203

189:                                              ; preds = %189, %178
  %190 = phi i32 [ %199, %189 ], [ %186, %178 ]
  %191 = phi i32 [ %201, %189 ], [ %181, %178 ]
  %192 = phi i32 [ %194, %189 ], [ %182, %178 ]
  %193 = phi i32 [ %200, %189 ], [ %187, %178 ]
  %194 = add nuw nsw i32 %192, 1
  %195 = getelementptr i8, ptr %30, i32 %194
  %196 = load i8, ptr %195, align 1
  %197 = zext i8 %196 to i32
  %198 = shl i32 %197, %191
  %199 = or i32 %198, %190
  %200 = add nsw i32 %193, -8
  %201 = add i32 %191, 8
  %202 = icmp ugt i32 %193, 8
  br i1 %202, label %189, label %203, !llvm.loop !11

203:                                              ; preds = %189, %178
  %204 = phi i32 [ %186, %178 ], [ %199, %189 ]
  %205 = icmp slt i32 %179, 32
  %206 = shl nsw i32 -1, %179
  %207 = xor i32 %206, -1
  br i1 %205, label %208, label %211

208:                                              ; preds = %203, %177
  %209 = phi i32 [ %207, %203 ], [ 0, %177 ]
  %210 = phi i32 [ %204, %203 ], [ 0, %177 ]
  br label %211

211:                                              ; preds = %208, %203
  %212 = phi i32 [ %210, %208 ], [ %204, %203 ]
  %213 = phi i32 [ %209, %208 ], [ -1, %203 ]
  %214 = and i32 %213, %212
  br label %215

215:                                              ; preds = %211, %166, %163, %160, %159, %153
  %216 = phi i32 [ %214, %211 ], [ %170, %166 ], [ %165, %163 ], [ %162, %160 ], [ 0, %153 ], [ %156, %159 ]
  %217 = getelementptr i32, ptr %92, i32 %110
  store i32 %216, ptr %217, align 4
  %218 = load i32, ptr %104, align 4
  %219 = and i32 %218, 2
  %220 = icmp ne i32 %219, 0
  %221 = icmp slt i32 %216, %85
  %222 = select i1 %220, i1 true, i1 %221
  %223 = icmp sgt i32 %216, %87
  %224 = select i1 %222, i1 true, i1 %223
  br i1 %224, label %234, label %225

225:                                              ; preds = %215
  %226 = sub i32 %216, %85
  %227 = load i32, ptr %105, align 4
  %228 = icmp ult i32 %226, %227
  br i1 %228, label %229, label %234

229:                                              ; preds = %225
  %230 = load ptr, ptr %106, align 4
  %231 = getelementptr %struct.hid_usage, ptr %230, i32 %226
  %232 = load i32, ptr %231, align 4
  %233 = icmp eq i32 %232, 458753
  br i1 %233, label %309, label %234

234:                                              ; preds = %229, %225, %215
  %235 = add nuw i32 %110, 1
  %236 = icmp eq i32 %235, %79
  br i1 %236, label %107, label %109

237:                                              ; preds = %303, %107
  %238 = phi i32 [ %218, %107 ], [ %304, %303 ]
  %239 = phi i32 [ 0, %107 ], [ %301, %303 ]
  %240 = and i32 %238, 2
  %241 = icmp eq i32 %240, 0
  br i1 %241, label %247, label %242

242:                                              ; preds = %237
  %243 = load ptr, ptr %106, align 4
  %244 = getelementptr %struct.hid_usage, ptr %243, i32 %239
  %245 = getelementptr i32, ptr %92, i32 %239
  %246 = load i32, ptr %245, align 4
  tail call fastcc void @hid_process_event(ptr noundef %0, ptr noundef %77, ptr noundef %244, i32 noundef %246, i32 noundef %4) #22
  br label %300

247:                                              ; preds = %237
  %248 = load ptr, ptr %108, align 4
  %249 = getelementptr i32, ptr %248, i32 %239
  %250 = load i32, ptr %249, align 4
  %251 = icmp slt i32 %250, %85
  %252 = icmp sgt i32 %250, %87
  %253 = select i1 %251, i1 true, i1 %252
  br i1 %253, label %273, label %254

254:                                              ; preds = %247
  %255 = sub i32 %250, %85
  %256 = load i32, ptr %105, align 4
  %257 = icmp ult i32 %255, %256
  br i1 %257, label %258, label %273

258:                                              ; preds = %254
  %259 = load ptr, ptr %106, align 4
  %260 = getelementptr %struct.hid_usage, ptr %259, i32 %255
  %261 = load i32, ptr %260, align 4
  %262 = icmp eq i32 %261, 0
  br i1 %262, label %273, label %263

263:                                              ; preds = %267, %258
  %264 = phi ptr [ %269, %267 ], [ %92, %258 ]
  %265 = phi i32 [ %268, %267 ], [ %79, %258 ]
  %266 = icmp eq i32 %265, 0
  br i1 %266, label %272, label %267

267:                                              ; preds = %263
  %268 = add i32 %265, -1
  %269 = getelementptr i32, ptr %264, i32 1
  %270 = load i32, ptr %264, align 4
  %271 = icmp eq i32 %270, %250
  br i1 %271, label %273, label %263

272:                                              ; preds = %263
  tail call fastcc void @hid_process_event(ptr noundef %0, ptr noundef %77, ptr noundef %260, i32 noundef 0, i32 noundef %4) #22
  br label %273

273:                                              ; preds = %272, %267, %258, %254, %247
  %274 = getelementptr i32, ptr %92, i32 %239
  %275 = load i32, ptr %274, align 4
  %276 = icmp slt i32 %275, %85
  %277 = icmp sgt i32 %275, %87
  %278 = select i1 %276, i1 true, i1 %277
  br i1 %278, label %300, label %279

279:                                              ; preds = %273
  %280 = sub i32 %275, %85
  %281 = load i32, ptr %105, align 4
  %282 = icmp ult i32 %280, %281
  br i1 %282, label %283, label %300

283:                                              ; preds = %279
  %284 = load ptr, ptr %106, align 4
  %285 = getelementptr %struct.hid_usage, ptr %284, i32 %280
  %286 = load i32, ptr %285, align 4
  %287 = icmp eq i32 %286, 0
  br i1 %287, label %300, label %288

288:                                              ; preds = %283
  %289 = load ptr, ptr %108, align 4
  br label %290

290:                                              ; preds = %294, %288
  %291 = phi ptr [ %289, %288 ], [ %296, %294 ]
  %292 = phi i32 [ %79, %288 ], [ %295, %294 ]
  %293 = icmp eq i32 %292, 0
  br i1 %293, label %299, label %294

294:                                              ; preds = %290
  %295 = add i32 %292, -1
  %296 = getelementptr i32, ptr %291, i32 1
  %297 = load i32, ptr %291, align 4
  %298 = icmp eq i32 %297, %275
  br i1 %298, label %300, label %290

299:                                              ; preds = %290
  tail call fastcc void @hid_process_event(ptr noundef %0, ptr noundef %77, ptr noundef %285, i32 noundef 1, i32 noundef %4) #22
  br label %300

300:                                              ; preds = %299, %294, %283, %279, %273, %242
  %301 = add nuw i32 %239, 1
  %302 = icmp eq i32 %301, %79
  br i1 %302, label %305, label %303

303:                                              ; preds = %300
  %304 = load i32, ptr %104, align 4
  br label %237

305:                                              ; preds = %300, %94
  %306 = getelementptr inbounds %struct.hid_field, ptr %77, i32 0, i32 10
  %307 = load ptr, ptr %306, align 4
  %308 = shl i32 %79, 2
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 4 %307, ptr nonnull align 64 %92, i32 %308, i1 false) #22
  br label %309

309:                                              ; preds = %305, %229
  tail call void @kfree(ptr noundef nonnull %92) #22
  br label %310

310:                                              ; preds = %309, %90, %74
  %311 = add nuw i32 %75, 1
  %312 = load i32, ptr %69, align 4
  %313 = icmp ult i32 %311, %312
  br i1 %313, label %74, label %314

314:                                              ; preds = %310
  %315 = getelementptr inbounds %struct.hid_device, ptr %0, i32 0, i32 19
  %316 = load ptr, ptr %315, align 8
  %317 = icmp eq ptr %316, null
  br i1 %317, label %323, label %318

318:                                              ; preds = %314
  %319 = getelementptr inbounds %struct.hid_driver, ptr %316, i32 0, i32 11
  %320 = load ptr, ptr %319, align 4
  %321 = icmp eq ptr %320, null
  br i1 %321, label %323, label %322

322:                                              ; preds = %318
  tail call void %320(ptr noundef %0, ptr noundef nonnull %16) #22
  br label %323

323:                                              ; preds = %322, %318, %314, %68, %65
  %324 = load i32, ptr %55, align 4
  %325 = and i32 %324, 1
  %326 = icmp eq i32 %325, 0
  br i1 %326, label %328, label %327

327:                                              ; preds = %323
  tail call void @hidinput_report_event(ptr noundef %0, ptr noundef nonnull %16) #22
  br label %328

328:                                              ; preds = %327, %323, %23
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @hidinput_report_event(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @down_trylock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @hid_dump_report(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @up(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define dso_local zeroext i1 @hid_match_one_id(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) local_unnamed_addr #7 {
  %3 = load i16, ptr %1, align 4
  %4 = icmp eq i16 %3, -1
  br i1 %4, label %9, label %5

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.hid_device, ptr %0, i32 0, i32 8
  %7 = load i16, ptr %6, align 8
  %8 = icmp eq i16 %3, %7
  br i1 %8, label %9, label %33

9:                                                ; preds = %5, %2
  %10 = getelementptr inbounds %struct.hid_device_id, ptr %1, i32 0, i32 1
  %11 = load i16, ptr %10, align 2
  %12 = icmp eq i16 %11, 0
  br i1 %12, label %17, label %13

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct.hid_device, ptr %0, i32 0, i32 9
  %15 = load i16, ptr %14, align 2
  %16 = icmp eq i16 %11, %15
  br i1 %16, label %17, label %33

17:                                               ; preds = %13, %9
  %18 = getelementptr inbounds %struct.hid_device_id, ptr %1, i32 0, i32 2
  %19 = load i32, ptr %18, align 4
  %20 = icmp eq i32 %19, -1
  br i1 %20, label %25, label %21

21:                                               ; preds = %17
  %22 = getelementptr inbounds %struct.hid_device, ptr %0, i32 0, i32 10
  %23 = load i32, ptr %22, align 4
  %24 = icmp eq i32 %19, %23
  br i1 %24, label %25, label %33

25:                                               ; preds = %21, %17
  %26 = getelementptr inbounds %struct.hid_device_id, ptr %1, i32 0, i32 3
  %27 = load i32, ptr %26, align 4
  %28 = icmp eq i32 %27, -1
  br i1 %28, label %33, label %29

29:                                               ; preds = %25
  %30 = getelementptr inbounds %struct.hid_device, ptr %0, i32 0, i32 11
  %31 = load i32, ptr %30, align 8
  %32 = icmp eq i32 %27, %31
  br label %33

33:                                               ; preds = %29, %25, %21, %13, %5
  %34 = phi i1 [ false, %21 ], [ false, %13 ], [ false, %5 ], [ true, %25 ], [ %32, %29 ]
  ret i1 %34
}

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong uwtable(sync)
define dso_local ptr @hid_match_id(ptr nocapture noundef readonly %0, ptr noundef readonly %1) local_unnamed_addr #8 {
  %3 = getelementptr inbounds %struct.hid_device, ptr %0, i32 0, i32 11
  %4 = getelementptr inbounds %struct.hid_device, ptr %0, i32 0, i32 8
  %5 = getelementptr inbounds %struct.hid_device, ptr %0, i32 0, i32 9
  %6 = getelementptr inbounds %struct.hid_device, ptr %0, i32 0, i32 10
  br label %7

7:                                                ; preds = %34, %2
  %8 = phi ptr [ %1, %2 ], [ %35, %34 ]
  %9 = load i16, ptr %8, align 4
  switch i16 %9, label %10 [
    i16 0, label %36
    i16 -1, label %13
  ]

10:                                               ; preds = %7
  %11 = load i16, ptr %4, align 8
  %12 = icmp eq i16 %9, %11
  br i1 %12, label %13, label %34

13:                                               ; preds = %10, %7
  %14 = getelementptr inbounds %struct.hid_device_id, ptr %8, i32 0, i32 1
  %15 = load i16, ptr %14, align 2
  %16 = icmp eq i16 %15, 0
  br i1 %16, label %20, label %17

17:                                               ; preds = %13
  %18 = load i16, ptr %5, align 2
  %19 = icmp eq i16 %15, %18
  br i1 %19, label %20, label %34

20:                                               ; preds = %17, %13
  %21 = getelementptr inbounds %struct.hid_device_id, ptr %8, i32 0, i32 2
  %22 = load i32, ptr %21, align 4
  %23 = icmp eq i32 %22, -1
  br i1 %23, label %27, label %24

24:                                               ; preds = %20
  %25 = load i32, ptr %6, align 4
  %26 = icmp eq i32 %22, %25
  br i1 %26, label %27, label %34

27:                                               ; preds = %24, %20
  %28 = getelementptr inbounds %struct.hid_device_id, ptr %8, i32 0, i32 3
  %29 = load i32, ptr %28, align 4
  %30 = icmp eq i32 %29, -1
  br i1 %30, label %36, label %31

31:                                               ; preds = %27
  %32 = load i32, ptr %3, align 8
  %33 = icmp eq i32 %29, %32
  br i1 %33, label %36, label %34

34:                                               ; preds = %31, %24, %17, %10
  %35 = getelementptr %struct.hid_device_id, ptr %8, i32 1
  br label %7

36:                                               ; preds = %31, %27, %7
  %37 = phi ptr [ %8, %31 ], [ null, %7 ], [ %8, %27 ]
  ret ptr %37
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @hid_connect(ptr noundef %0, i32 noundef %1) #0 {
  %3 = alloca [64 x i8], align 1
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %3) #22
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(64) %3, i8 0, i32 64, i1 false)
  %4 = getelementptr inbounds %struct.hid_device, ptr %0, i32 0, i32 25
  %5 = load i32, ptr %4, align 8
  %6 = and i32 %5, 16
  %7 = icmp eq i32 %6, 0
  %8 = or i32 %1, 24
  %9 = select i1 %7, i32 %1, i32 %8
  %10 = lshr i32 %5, 6
  %11 = and i32 %10, 2
  %12 = or i32 %9, %11
  %13 = getelementptr inbounds %struct.hid_device, ptr %0, i32 0, i32 8
  %14 = load i16, ptr %13, align 8
  %15 = icmp eq i16 %14, 3
  %16 = and i32 %12, -9
  %17 = select i1 %15, i32 %12, i32 %16
  %18 = getelementptr inbounds %struct.hid_device, ptr %0, i32 0, i32 11
  %19 = getelementptr inbounds %struct.hid_device, ptr %0, i32 0, i32 9
  %20 = getelementptr inbounds %struct.hid_device, ptr %0, i32 0, i32 10
  br label %21

21:                                               ; preds = %47, %2
  %22 = phi ptr [ @hid_hiddev_list, %2 ], [ %48, %47 ]
  %23 = load i16, ptr %22, align 4
  switch i16 %23, label %24 [
    i16 0, label %49
    i16 -1, label %26
  ]

24:                                               ; preds = %21
  %25 = icmp eq i16 %23, %14
  br i1 %25, label %26, label %47

26:                                               ; preds = %24, %21
  %27 = getelementptr inbounds %struct.hid_device_id, ptr %22, i32 0, i32 1
  %28 = load i16, ptr %27, align 2
  %29 = icmp eq i16 %28, 0
  br i1 %29, label %33, label %30

30:                                               ; preds = %26
  %31 = load i16, ptr %19, align 2
  %32 = icmp eq i16 %28, %31
  br i1 %32, label %33, label %47

33:                                               ; preds = %30, %26
  %34 = getelementptr inbounds %struct.hid_device_id, ptr %22, i32 0, i32 2
  %35 = load i32, ptr %34, align 4
  %36 = icmp eq i32 %35, -1
  br i1 %36, label %40, label %37

37:                                               ; preds = %33
  %38 = load i32, ptr %20, align 4
  %39 = icmp eq i32 %35, %38
  br i1 %39, label %40, label %47

40:                                               ; preds = %37, %33
  %41 = getelementptr inbounds %struct.hid_device_id, ptr %22, i32 0, i32 3
  %42 = load i32, ptr %41, align 4
  %43 = icmp eq i32 %42, -1
  br i1 %43, label %49, label %44

44:                                               ; preds = %40
  %45 = load i32, ptr %18, align 8
  %46 = icmp eq i32 %42, %45
  br i1 %46, label %49, label %47

47:                                               ; preds = %44, %37, %30, %24
  %48 = getelementptr %struct.hid_device_id, ptr %22, i32 1
  br label %21

49:                                               ; preds = %44, %40, %21
  %50 = phi ptr [ %22, %44 ], [ null, %21 ], [ %22, %40 ]
  %51 = icmp eq ptr %50, null
  %52 = or i32 %17, 16
  %53 = select i1 %51, i32 %17, i32 %52
  %54 = and i32 %53, 1
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %64, label %56

56:                                               ; preds = %49
  %57 = and i32 %53, 2
  %58 = tail call i32 @hidinput_connect(ptr noundef %0, i32 noundef %57) #22
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %60, label %64

60:                                               ; preds = %56
  %61 = getelementptr inbounds %struct.hid_device, ptr %0, i32 0, i32 24
  %62 = load i32, ptr %61, align 4
  %63 = or i32 %62, 1
  store i32 %63, ptr %61, align 4
  br label %64

64:                                               ; preds = %60, %56, %49
  %65 = and i32 %53, 8
  %66 = icmp eq i32 %65, 0
  br i1 %66, label %79, label %67

67:                                               ; preds = %64
  %68 = getelementptr inbounds %struct.hid_device, ptr %0, i32 0, i32 35
  %69 = load ptr, ptr %68, align 8
  %70 = icmp eq ptr %69, null
  br i1 %70, label %79, label %71

71:                                               ; preds = %67
  %72 = and i32 %53, 16
  %73 = tail call i32 %69(ptr noundef %0, i32 noundef %72) #22
  %74 = icmp eq i32 %73, 0
  br i1 %74, label %75, label %79

75:                                               ; preds = %71
  %76 = getelementptr inbounds %struct.hid_device, ptr %0, i32 0, i32 24
  %77 = load i32, ptr %76, align 4
  %78 = or i32 %77, 2
  store i32 %78, ptr %76, align 4
  br label %79

79:                                               ; preds = %75, %71, %67, %64
  %80 = and i32 %53, 64
  %81 = icmp eq i32 %80, 0
  %82 = getelementptr inbounds %struct.hid_device, ptr %0, i32 0, i32 24
  %83 = load i32, ptr %82, align 4
  br i1 %81, label %86, label %84

84:                                               ; preds = %79
  %85 = or i32 %83, 8
  store i32 %85, ptr %82, align 4
  br label %96

86:                                               ; preds = %79
  %87 = icmp eq i32 %83, 0
  br i1 %87, label %88, label %96

88:                                               ; preds = %86
  %89 = getelementptr inbounds %struct.hid_device, ptr %0, i32 0, i32 19
  %90 = load ptr, ptr %89, align 8
  %91 = getelementptr inbounds %struct.hid_driver, ptr %90, i32 0, i32 8
  %92 = load ptr, ptr %91, align 4
  %93 = icmp eq ptr %92, null
  br i1 %93, label %94, label %142

94:                                               ; preds = %88
  %95 = getelementptr inbounds %struct.hid_device, ptr %0, i32 0, i32 18
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %95, ptr noundef nonnull @.str.25) #23
  br label %188

96:                                               ; preds = %86, %84
  %97 = phi i32 [ %85, %84 ], [ %83, %86 ]
  %98 = getelementptr inbounds %struct.hid_device, ptr %0, i32 0, i32 24
  %99 = and i32 %97, 1
  %100 = icmp eq i32 %99, 0
  %101 = and i32 %53, 32
  %102 = icmp eq i32 %101, 0
  %103 = select i1 %100, i1 true, i1 %102
  br i1 %103, label %111, label %104

104:                                              ; preds = %96
  %105 = getelementptr inbounds %struct.hid_device, ptr %0, i32 0, i32 34
  %106 = load ptr, ptr %105, align 4
  %107 = icmp eq ptr %106, null
  br i1 %107, label %111, label %108

108:                                              ; preds = %104
  %109 = tail call i32 %106(ptr noundef %0) #22
  %110 = load i32, ptr %98, align 4
  br label %111

111:                                              ; preds = %108, %104, %96
  %112 = phi i32 [ %110, %108 ], [ %97, %104 ], [ %97, %96 ]
  %113 = and i32 %112, 1
  %114 = icmp eq i32 %113, 0
  br i1 %114, label %116, label %115

115:                                              ; preds = %111
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 1 dereferenceable(6) %3, ptr noundef nonnull align 1 dereferenceable(6) @.str.26, i32 6, i1 false)
  br label %116

116:                                              ; preds = %115, %111
  %117 = phi i32 [ 5, %115 ], [ 0, %111 ]
  %118 = and i32 %112, 2
  %119 = icmp eq i32 %118, 0
  br i1 %119, label %129, label %120

120:                                              ; preds = %116
  %121 = getelementptr i8, ptr %3, i32 %117
  %122 = select i1 %114, ptr @.str.29, ptr @.str.28
  %123 = getelementptr inbounds %struct.hid_device, ptr %0, i32 0, i32 28
  %124 = load ptr, ptr %123, align 8
  %125 = load i32, ptr %124, align 4
  %126 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %121, ptr noundef nonnull @.str.27, ptr noundef nonnull %122, i32 noundef %125)
  %127 = add i32 %126, %117
  %128 = load i32, ptr %98, align 4
  br label %129

129:                                              ; preds = %120, %116
  %130 = phi i32 [ %128, %120 ], [ %112, %116 ]
  %131 = phi i32 [ %127, %120 ], [ %117, %116 ]
  %132 = and i32 %130, 4
  %133 = icmp eq i32 %132, 0
  br i1 %133, label %142, label %134

134:                                              ; preds = %129
  %135 = getelementptr i8, ptr %3, i32 %131
  %136 = icmp eq i32 %131, 0
  %137 = select i1 %136, ptr @.str.29, ptr @.str.28
  %138 = getelementptr inbounds %struct.hid_device, ptr %0, i32 0, i32 29
  %139 = load ptr, ptr %138, align 4
  %140 = load i32, ptr %139, align 4
  %141 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %135, ptr noundef nonnull @.str.30, ptr noundef nonnull %137, i32 noundef %140)
  br label %142

142:                                              ; preds = %134, %129, %88
  %143 = getelementptr inbounds %struct.hid_device, ptr %0, i32 0, i32 6
  %144 = load i32, ptr %143, align 8
  %145 = icmp eq i32 %144, 0
  br i1 %145, label %168, label %146

146:                                              ; preds = %142
  %147 = getelementptr inbounds %struct.hid_device, ptr %0, i32 0, i32 4
  %148 = load ptr, ptr %147, align 8
  br label %149

149:                                              ; preds = %165, %146
  %150 = phi i32 [ 0, %146 ], [ %166, %165 ]
  %151 = getelementptr %struct.hid_collection, ptr %148, i32 %150, i32 1
  %152 = load i32, ptr %151, align 4
  %153 = icmp eq i32 %152, 1
  br i1 %153, label %154, label %165

154:                                              ; preds = %149
  %155 = getelementptr %struct.hid_collection, ptr %148, i32 %150, i32 2
  %156 = load i32, ptr %155, align 4
  %157 = and i32 %156, -65536
  %158 = icmp eq i32 %157, 65536
  %159 = and i32 %156, 65535
  %160 = icmp ult i32 %159, 9
  %161 = and i1 %158, %160
  br i1 %161, label %162, label %165

162:                                              ; preds = %154
  %163 = getelementptr [9 x ptr], ptr @hid_connect.types, i32 0, i32 %159
  %164 = load ptr, ptr %163, align 4
  br label %168

165:                                              ; preds = %154, %149
  %166 = add nuw i32 %150, 1
  %167 = icmp eq i32 %166, %144
  br i1 %167, label %168, label %149

168:                                              ; preds = %165, %162, %142
  %169 = phi ptr [ %164, %162 ], [ @.str.17, %142 ], [ @.str.17, %165 ]
  %170 = load i16, ptr %13, align 8
  switch i16 %170, label %174 [
    i16 3, label %175
    i16 5, label %171
    i16 24, label %172
    i16 6, label %173
  ]

171:                                              ; preds = %168
  br label %175

172:                                              ; preds = %168
  br label %175

173:                                              ; preds = %168
  br label %175

174:                                              ; preds = %168
  br label %175

175:                                              ; preds = %174, %173, %172, %171, %168
  %176 = phi ptr [ @.str.35, %174 ], [ @.str.34, %173 ], [ @.str.33, %172 ], [ @.str.32, %171 ], [ @.str.31, %168 ]
  %177 = getelementptr inbounds %struct.hid_device, ptr %0, i32 0, i32 18
  %178 = tail call i32 @device_create_file(ptr noundef %177, ptr noundef nonnull @dev_attr_country) #22
  %179 = icmp eq i32 %178, 0
  br i1 %179, label %181, label %180

180:                                              ; preds = %175
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %177, ptr noundef nonnull @.str.36, i32 noundef %178) #23
  br label %181

181:                                              ; preds = %180, %175
  %182 = getelementptr inbounds %struct.hid_device, ptr %0, i32 0, i32 12
  %183 = load i32, ptr %182, align 4
  %184 = lshr i32 %183, 8
  %185 = and i32 %183, 255
  %186 = getelementptr inbounds %struct.hid_device, ptr %0, i32 0, i32 30
  %187 = getelementptr inbounds %struct.hid_device, ptr %0, i32 0, i32 31
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %177, ptr noundef nonnull @.str.37, ptr noundef nonnull %3, ptr noundef nonnull %176, i32 noundef %184, i32 noundef %185, ptr noundef %169, ptr noundef %186, ptr noundef %187) #23
  br label %188

188:                                              ; preds = %181, %94
  %189 = phi i32 [ 0, %181 ], [ -19, %94 ]
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %3) #22
  ret i32 %189
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hidinput_connect(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #9

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_create_file(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @hid_disconnect(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.hid_device, ptr %0, i32 0, i32 18
  tail call void @device_remove_file(ptr noundef %2, ptr noundef nonnull @dev_attr_country) #22
  %3 = getelementptr inbounds %struct.hid_device, ptr %0, i32 0, i32 24
  %4 = load i32, ptr %3, align 4
  %5 = and i32 %4, 1
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %9, label %7

7:                                                ; preds = %1
  tail call void @hidinput_disconnect(ptr noundef %0) #22
  %8 = load i32, ptr %3, align 4
  br label %9

9:                                                ; preds = %7, %1
  %10 = phi i32 [ %8, %7 ], [ %4, %1 ]
  %11 = and i32 %10, 2
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %16, label %13

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct.hid_device, ptr %0, i32 0, i32 36
  %15 = load ptr, ptr %14, align 4
  tail call void %15(ptr noundef %0) #22
  br label %16

16:                                               ; preds = %13, %9
  store i32 0, ptr %3, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @device_remove_file(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @hidinput_disconnect(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @hid_hw_start(ptr noundef %0, i32 noundef %1) #0 {
  %3 = getelementptr inbounds %struct.hid_device, ptr %0, i32 0, i32 20
  %4 = load ptr, ptr %3, align 4
  %5 = load ptr, ptr %4, align 4
  %6 = tail call i32 %5(ptr noundef %0) #22
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %17

8:                                                ; preds = %2
  %9 = icmp eq i32 %1, 0
  br i1 %9, label %17, label %10

10:                                               ; preds = %8
  %11 = tail call i32 @hid_connect(ptr noundef %0, i32 noundef %1)
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %17, label %13

13:                                               ; preds = %10
  %14 = load ptr, ptr %3, align 4
  %15 = getelementptr inbounds %struct.hid_ll_driver, ptr %14, i32 0, i32 1
  %16 = load ptr, ptr %15, align 4
  tail call void %16(ptr noundef %0) #22
  br label %17

17:                                               ; preds = %13, %10, %8, %2
  %18 = phi i32 [ %11, %13 ], [ %6, %2 ], [ 0, %10 ], [ 0, %8 ]
  ret i32 %18
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @hid_hw_stop(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.hid_device, ptr %0, i32 0, i32 18
  tail call void @device_remove_file(ptr noundef %2, ptr noundef nonnull @dev_attr_country) #22
  %3 = getelementptr inbounds %struct.hid_device, ptr %0, i32 0, i32 24
  %4 = load i32, ptr %3, align 4
  %5 = and i32 %4, 1
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %9, label %7

7:                                                ; preds = %1
  tail call void @hidinput_disconnect(ptr noundef %0) #22
  %8 = load i32, ptr %3, align 4
  br label %9

9:                                                ; preds = %7, %1
  %10 = phi i32 [ %8, %7 ], [ %4, %1 ]
  %11 = and i32 %10, 2
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %16, label %13

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct.hid_device, ptr %0, i32 0, i32 36
  %15 = load ptr, ptr %14, align 4
  tail call void %15(ptr noundef %0) #22
  br label %16

16:                                               ; preds = %13, %9
  store i32 0, ptr %3, align 4
  %17 = getelementptr inbounds %struct.hid_device, ptr %0, i32 0, i32 20
  %18 = load ptr, ptr %17, align 4
  %19 = getelementptr inbounds %struct.hid_ll_driver, ptr %18, i32 0, i32 1
  %20 = load ptr, ptr %19, align 4
  tail call void %20(ptr noundef %0) #22
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @hid_hw_open(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.hid_device, ptr %0, i32 0, i32 21
  %3 = tail call i32 @mutex_lock_killable(ptr noundef %2) #22
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %22

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.hid_device, ptr %0, i32 0, i32 22
  %7 = load i32, ptr %6, align 4
  %8 = add i32 %7, 1
  store i32 %8, ptr %6, align 4
  %9 = icmp eq i32 %7, 0
  br i1 %9, label %10, label %20

10:                                               ; preds = %5
  %11 = getelementptr inbounds %struct.hid_device, ptr %0, i32 0, i32 20
  %12 = load ptr, ptr %11, align 4
  %13 = getelementptr inbounds %struct.hid_ll_driver, ptr %12, i32 0, i32 2
  %14 = load ptr, ptr %13, align 4
  %15 = tail call i32 %14(ptr noundef %0) #22
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %20, label %17

17:                                               ; preds = %10
  %18 = load i32, ptr %6, align 4
  %19 = add i32 %18, -1
  store i32 %19, ptr %6, align 4
  br label %20

20:                                               ; preds = %17, %10, %5
  %21 = phi i32 [ 0, %5 ], [ %15, %17 ], [ 0, %10 ]
  tail call void @mutex_unlock(ptr noundef %2) #22
  br label %22

22:                                               ; preds = %20, %1
  %23 = phi i32 [ %21, %20 ], [ %3, %1 ]
  ret i32 %23
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mutex_lock_killable(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @hid_hw_close(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.hid_device, ptr %0, i32 0, i32 21
  tail call void @mutex_lock(ptr noundef %2) #22
  %3 = getelementptr inbounds %struct.hid_device, ptr %0, i32 0, i32 22
  %4 = load i32, ptr %3, align 4
  %5 = add i32 %4, -1
  store i32 %5, ptr %3, align 4
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %12

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.hid_device, ptr %0, i32 0, i32 20
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.hid_ll_driver, ptr %9, i32 0, i32 3
  %11 = load ptr, ptr %10, align 4
  tail call void %11(ptr noundef %0) #22
  br label %12

12:                                               ; preds = %7, %1
  tail call void @mutex_unlock(ptr noundef %2) #22
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @hid_hw_request(ptr noundef %0, ptr noundef %1, i32 noundef %2) #0 {
  %4 = getelementptr inbounds %struct.hid_device, ptr %0, i32 0, i32 20
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.hid_ll_driver, ptr %5, i32 0, i32 6
  %7 = load ptr, ptr %6, align 4
  %8 = icmp eq ptr %7, null
  br i1 %8, label %10, label %9

9:                                                ; preds = %3
  tail call void %7(ptr noundef %0, ptr noundef %1, i32 noundef %2) #22
  br label %12

10:                                               ; preds = %3
  %11 = tail call i32 @__hid_request(ptr noundef %0, ptr noundef %1, i32 noundef %2)
  br label %12

12:                                               ; preds = %10, %9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @hid_hw_raw_request(ptr noundef %0, i8 noundef zeroext %1, ptr noundef %2, i32 noundef %3, i8 noundef zeroext %4, i32 noundef %5) #0 {
  %7 = add i32 %3, -1
  %8 = icmp ult i32 %7, 16384
  %9 = icmp ne ptr %2, null
  %10 = and i1 %9, %8
  br i1 %10, label %11, label %17

11:                                               ; preds = %6
  %12 = getelementptr inbounds %struct.hid_device, ptr %0, i32 0, i32 20
  %13 = load ptr, ptr %12, align 4
  %14 = getelementptr inbounds %struct.hid_ll_driver, ptr %13, i32 0, i32 8
  %15 = load ptr, ptr %14, align 4
  %16 = tail call i32 %15(ptr noundef %0, i8 noundef zeroext %1, ptr noundef nonnull %2, i32 noundef %3, i8 noundef zeroext %4, i32 noundef %5) #22
  br label %17

17:                                               ; preds = %11, %6
  %18 = phi i32 [ %16, %11 ], [ -22, %6 ]
  ret i32 %18
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @hid_hw_output_report(ptr noundef %0, ptr noundef %1, i32 noundef %2) #0 {
  %4 = add i32 %2, -1
  %5 = icmp ult i32 %4, 16384
  %6 = icmp ne ptr %1, null
  %7 = and i1 %6, %5
  br i1 %7, label %8, label %16

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.hid_device, ptr %0, i32 0, i32 20
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr inbounds %struct.hid_ll_driver, ptr %10, i32 0, i32 9
  %12 = load ptr, ptr %11, align 4
  %13 = icmp eq ptr %12, null
  br i1 %13, label %16, label %14

14:                                               ; preds = %8
  %15 = tail call i32 %12(ptr noundef %0, ptr noundef nonnull %1, i32 noundef %2) #22
  br label %16

16:                                               ; preds = %14, %8, %3
  %17 = phi i32 [ %15, %14 ], [ -22, %3 ], [ -38, %8 ]
  ret i32 %17
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @hid_driver_suspend(ptr noundef %0, [1 x i32] %1) #0 {
  %3 = getelementptr inbounds %struct.hid_device, ptr %0, i32 0, i32 19
  %4 = load ptr, ptr %3, align 8
  %5 = icmp eq ptr %4, null
  br i1 %5, label %12, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.hid_driver, ptr %4, i32 0, i32 17
  %8 = load ptr, ptr %7, align 4
  %9 = icmp eq ptr %8, null
  br i1 %9, label %12, label %10

10:                                               ; preds = %6
  %11 = tail call i32 %8(ptr noundef %0, [1 x i32] %1) #22
  br label %12

12:                                               ; preds = %10, %6, %2
  %13 = phi i32 [ %11, %10 ], [ 0, %6 ], [ 0, %2 ]
  ret i32 %13
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @hid_driver_reset_resume(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.hid_device, ptr %0, i32 0, i32 19
  %3 = load ptr, ptr %2, align 8
  %4 = icmp eq ptr %3, null
  br i1 %4, label %11, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.hid_driver, ptr %3, i32 0, i32 19
  %7 = load ptr, ptr %6, align 4
  %8 = icmp eq ptr %7, null
  br i1 %8, label %11, label %9

9:                                                ; preds = %5
  %10 = tail call i32 %7(ptr noundef %0) #22
  br label %11

11:                                               ; preds = %9, %5, %1
  %12 = phi i32 [ %10, %9 ], [ 0, %5 ], [ 0, %1 ]
  ret i32 %12
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @hid_driver_resume(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.hid_device, ptr %0, i32 0, i32 19
  %3 = load ptr, ptr %2, align 8
  %4 = icmp eq ptr %3, null
  br i1 %4, label %11, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.hid_driver, ptr %3, i32 0, i32 18
  %7 = load ptr, ptr %6, align 4
  %8 = icmp eq ptr %7, null
  br i1 %8, label %11, label %9

9:                                                ; preds = %5
  %10 = tail call i32 %7(ptr noundef %0) #22
  br label %11

11:                                               ; preds = %9, %5, %1
  %12 = phi i32 [ %10, %9 ], [ 0, %5 ], [ 0, %1 ]
  ret i32 %12
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @hid_match_device(ptr nocapture noundef readonly %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.hid_driver, ptr %1, i32 0, i32 3
  tail call void @_raw_spin_lock(ptr noundef %3) #22
  %4 = getelementptr inbounds %struct.hid_driver, ptr %1, i32 0, i32 2
  %5 = load ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, %4
  br i1 %6, label %47, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.hid_device, ptr %0, i32 0, i32 8
  %9 = getelementptr inbounds %struct.hid_device, ptr %0, i32 0, i32 9
  %10 = getelementptr inbounds %struct.hid_device, ptr %0, i32 0, i32 10
  %11 = getelementptr inbounds %struct.hid_device, ptr %0, i32 0, i32 11
  br label %12

12:                                               ; preds = %41, %7
  %13 = phi ptr [ %5, %7 ], [ %42, %41 ]
  %14 = getelementptr inbounds %struct.hid_dynid, ptr %13, i32 0, i32 1
  %15 = load i16, ptr %14, align 4
  %16 = icmp eq i16 %15, -1
  br i1 %16, label %20, label %17

17:                                               ; preds = %12
  %18 = load i16, ptr %8, align 8
  %19 = icmp eq i16 %15, %18
  br i1 %19, label %20, label %41

20:                                               ; preds = %17, %12
  %21 = getelementptr inbounds %struct.hid_dynid, ptr %13, i32 0, i32 1, i32 1
  %22 = load i16, ptr %21, align 2
  %23 = icmp eq i16 %22, 0
  br i1 %23, label %27, label %24

24:                                               ; preds = %20
  %25 = load i16, ptr %9, align 2
  %26 = icmp eq i16 %22, %25
  br i1 %26, label %27, label %41

27:                                               ; preds = %24, %20
  %28 = getelementptr inbounds %struct.hid_dynid, ptr %13, i32 0, i32 1, i32 2
  %29 = load i32, ptr %28, align 4
  %30 = icmp eq i32 %29, -1
  br i1 %30, label %34, label %31

31:                                               ; preds = %27
  %32 = load i32, ptr %10, align 4
  %33 = icmp eq i32 %29, %32
  br i1 %33, label %34, label %41

34:                                               ; preds = %31, %27
  %35 = getelementptr inbounds %struct.hid_dynid, ptr %13, i32 0, i32 1, i32 3
  %36 = load i32, ptr %35, align 4
  %37 = icmp eq i32 %36, -1
  br i1 %37, label %44, label %38

38:                                               ; preds = %34
  %39 = load i32, ptr %11, align 8
  %40 = icmp eq i32 %36, %39
  br i1 %40, label %44, label %41

41:                                               ; preds = %38, %31, %24, %17
  %42 = load ptr, ptr %13, align 4
  %43 = icmp eq ptr %42, %4
  br i1 %43, label %47, label %12

44:                                               ; preds = %38, %34
  tail call void asm sideeffect "dmb ish", "~{memory}"() #22, !srcloc !14
  %45 = load i16, ptr %3, align 4
  %46 = add i16 %45, 1
  store i16 %46, ptr %3, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #22, !srcloc !15
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #22, !srcloc !16
  tail call void asm sideeffect "", "~{memory}"() #22, !srcloc !17
  br label %85

47:                                               ; preds = %41, %2
  tail call void asm sideeffect "dmb ish", "~{memory}"() #22, !srcloc !14
  %48 = load i16, ptr %3, align 4
  %49 = add i16 %48, 1
  store i16 %49, ptr %3, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #22, !srcloc !15
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #22, !srcloc !16
  tail call void asm sideeffect "", "~{memory}"() #22, !srcloc !17
  %50 = getelementptr inbounds %struct.hid_driver, ptr %1, i32 0, i32 1
  %51 = load ptr, ptr %50, align 4
  %52 = getelementptr inbounds %struct.hid_device, ptr %0, i32 0, i32 11
  %53 = getelementptr inbounds %struct.hid_device, ptr %0, i32 0, i32 8
  %54 = getelementptr inbounds %struct.hid_device, ptr %0, i32 0, i32 9
  %55 = getelementptr inbounds %struct.hid_device, ptr %0, i32 0, i32 10
  br label %56

56:                                               ; preds = %83, %47
  %57 = phi ptr [ %51, %47 ], [ %84, %83 ]
  %58 = load i16, ptr %57, align 4
  switch i16 %58, label %59 [
    i16 0, label %85
    i16 -1, label %62
  ]

59:                                               ; preds = %56
  %60 = load i16, ptr %53, align 8
  %61 = icmp eq i16 %58, %60
  br i1 %61, label %62, label %83

62:                                               ; preds = %59, %56
  %63 = getelementptr inbounds %struct.hid_device_id, ptr %57, i32 0, i32 1
  %64 = load i16, ptr %63, align 2
  %65 = icmp eq i16 %64, 0
  br i1 %65, label %69, label %66

66:                                               ; preds = %62
  %67 = load i16, ptr %54, align 2
  %68 = icmp eq i16 %64, %67
  br i1 %68, label %69, label %83

69:                                               ; preds = %66, %62
  %70 = getelementptr inbounds %struct.hid_device_id, ptr %57, i32 0, i32 2
  %71 = load i32, ptr %70, align 4
  %72 = icmp eq i32 %71, -1
  br i1 %72, label %76, label %73

73:                                               ; preds = %69
  %74 = load i32, ptr %55, align 4
  %75 = icmp eq i32 %71, %74
  br i1 %75, label %76, label %83

76:                                               ; preds = %73, %69
  %77 = getelementptr inbounds %struct.hid_device_id, ptr %57, i32 0, i32 3
  %78 = load i32, ptr %77, align 4
  %79 = icmp eq i32 %78, -1
  br i1 %79, label %85, label %80

80:                                               ; preds = %76
  %81 = load i32, ptr %52, align 8
  %82 = icmp eq i32 %78, %81
  br i1 %82, label %85, label %83

83:                                               ; preds = %80, %73, %66, %59
  %84 = getelementptr %struct.hid_device_id, ptr %57, i32 1
  br label %56

85:                                               ; preds = %80, %76, %56, %44
  %86 = phi ptr [ %14, %44 ], [ %57, %76 ], [ null, %56 ], [ %57, %80 ]
  ret ptr %86
}

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define dso_local zeroext i1 @hid_compare_device_paths(ptr noundef %0, ptr noundef %1, i8 noundef zeroext %2) #10 {
  %4 = getelementptr inbounds %struct.hid_device, ptr %0, i32 0, i32 31
  %5 = zext i8 %2 to i32
  %6 = tail call ptr @strrchr(ptr noundef %4, i32 noundef %5)
  %7 = ptrtoint ptr %6 to i32
  %8 = ptrtoint ptr %4 to i32
  %9 = sub i32 %7, %8
  %10 = getelementptr inbounds %struct.hid_device, ptr %1, i32 0, i32 31
  %11 = tail call ptr @strrchr(ptr noundef %10, i32 noundef %5)
  %12 = ptrtoint ptr %11 to i32
  %13 = ptrtoint ptr %10 to i32
  %14 = sub i32 %12, %13
  %15 = icmp ne i32 %9, %14
  %16 = icmp slt i32 %9, 1
  %17 = or i1 %16, %15
  %18 = icmp slt i32 %14, 1
  %19 = or i1 %18, %17
  br i1 %19, label %23, label %20

20:                                               ; preds = %3
  %21 = tail call i32 @strncmp(ptr noundef %4, ptr noundef %10, i32 noundef %9)
  %22 = icmp eq i32 %21, 0
  br label %23

23:                                               ; preds = %20, %3
  %24 = phi i1 [ %22, %20 ], [ false, %3 ]
  ret i1 %24
}

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local ptr @strrchr(ptr noundef, i32 noundef) local_unnamed_addr #11

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strncmp(ptr nocapture noundef, ptr nocapture noundef, i32 noundef) local_unnamed_addr #11

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @hid_bus_match(ptr nocapture noundef readonly %0, ptr noundef %1) #0 {
  %3 = getelementptr i8, ptr %1, i32 -84
  %4 = getelementptr i8, ptr %0, i32 -3200
  %5 = tail call ptr @hid_match_device(ptr noundef %4, ptr noundef %3)
  %6 = icmp ne ptr %5, null
  %7 = zext i1 %6 to i32
  ret i32 %7
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @hid_uevent(ptr noundef %0, ptr noundef %1) #0 {
  %3 = getelementptr i8, ptr %0, i32 -3168
  %4 = load i16, ptr %3, align 8
  %5 = zext i16 %4 to i32
  %6 = getelementptr i8, ptr %0, i32 -3164
  %7 = load i32, ptr %6, align 4
  %8 = getelementptr i8, ptr %0, i32 -3160
  %9 = load i32, ptr %8, align 8
  %10 = tail call i32 (ptr, ptr, ...) @add_uevent_var(ptr noundef %1, ptr noundef nonnull @.str.82, i32 noundef %5, i32 noundef %7, i32 noundef %9) #22
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %35

12:                                               ; preds = %2
  %13 = getelementptr i8, ptr %0, i32 536
  %14 = tail call i32 (ptr, ptr, ...) @add_uevent_var(ptr noundef %1, ptr noundef nonnull @.str.83, ptr noundef %13) #22
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %35

16:                                               ; preds = %12
  %17 = getelementptr i8, ptr %0, i32 664
  %18 = tail call i32 (ptr, ptr, ...) @add_uevent_var(ptr noundef %1, ptr noundef nonnull @.str.84, ptr noundef %17) #22
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %35

20:                                               ; preds = %16
  %21 = getelementptr i8, ptr %0, i32 728
  %22 = tail call i32 (ptr, ptr, ...) @add_uevent_var(ptr noundef %1, ptr noundef nonnull @.str.85, ptr noundef %21) #22
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %35

24:                                               ; preds = %20
  %25 = load i16, ptr %3, align 8
  %26 = zext i16 %25 to i32
  %27 = getelementptr i8, ptr %0, i32 -3166
  %28 = load i16, ptr %27, align 2
  %29 = zext i16 %28 to i32
  %30 = load i32, ptr %6, align 4
  %31 = load i32, ptr %8, align 8
  %32 = tail call i32 (ptr, ptr, ...) @add_uevent_var(ptr noundef %1, ptr noundef nonnull @.str.86, i32 noundef %26, i32 noundef %29, i32 noundef %30, i32 noundef %31) #22
  %33 = icmp eq i32 %32, 0
  %34 = select i1 %33, i32 0, i32 -12
  br label %35

35:                                               ; preds = %24, %20, %16, %12, %2
  %36 = phi i32 [ -12, %2 ], [ -12, %12 ], [ -12, %16 ], [ -12, %20 ], [ %34, %24 ]
  ret i32 %36
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @hid_device_probe(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 6
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr i8, ptr %3, i32 -84
  %5 = getelementptr i8, ptr %0, i32 -3200
  %6 = getelementptr i8, ptr %0, i32 -20
  %7 = tail call i32 @down_interruptible(ptr noundef %6) #22
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %51

9:                                                ; preds = %1
  %10 = getelementptr i8, ptr %0, i32 516
  store i8 0, ptr %10, align 4
  %11 = getelementptr i8, ptr %0, i32 504
  tail call void @_clear_bit(i32 noundef 4, ptr noundef %11) #22
  %12 = getelementptr i8, ptr %0, i32 472
  %13 = load ptr, ptr %12, align 8
  %14 = icmp eq ptr %13, null
  br i1 %14, label %15, label %46

15:                                               ; preds = %9
  %16 = tail call ptr @hid_match_device(ptr noundef %5, ptr noundef %4)
  %17 = icmp eq ptr %16, null
  br i1 %17, label %46, label %18

18:                                               ; preds = %15
  %19 = getelementptr i8, ptr %3, i32 -64
  %20 = load ptr, ptr %19, align 4
  %21 = icmp eq ptr %20, null
  %22 = load i32, ptr @hid_ignore_special_drivers, align 4
  br i1 %21, label %26, label %23

23:                                               ; preds = %18
  %24 = icmp ne i32 %22, 0
  %25 = tail call zeroext i1 %20(ptr noundef %5, i1 noundef zeroext %24) #22
  br i1 %25, label %28, label %46

26:                                               ; preds = %18
  %27 = icmp eq i32 %22, 0
  br i1 %27, label %28, label %46

28:                                               ; preds = %26, %23
  %29 = tail call i32 @hid_lookup_quirk(ptr noundef %5) #22
  %30 = getelementptr i8, ptr %0, i32 512
  store i32 %29, ptr %30, align 8
  store ptr %4, ptr %12, align 8
  %31 = getelementptr i8, ptr %3, i32 -60
  %32 = load ptr, ptr %31, align 4
  %33 = icmp eq ptr %32, null
  br i1 %33, label %36, label %34

34:                                               ; preds = %28
  %35 = tail call i32 %32(ptr noundef %5, ptr noundef nonnull %16) #22
  br label %41

36:                                               ; preds = %28
  %37 = tail call i32 @hid_open_report(ptr noundef %5)
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %39, label %44

39:                                               ; preds = %36
  %40 = tail call i32 @hid_hw_start(ptr noundef %5, i32 noundef 45)
  br label %41

41:                                               ; preds = %39, %34
  %42 = phi i32 [ %35, %34 ], [ %40, %39 ]
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %46, label %44

44:                                               ; preds = %41, %36
  %45 = phi i32 [ %42, %41 ], [ %37, %36 ]
  tail call fastcc void @hid_close_report(ptr noundef %5)
  store ptr null, ptr %12, align 8
  br label %46

46:                                               ; preds = %44, %41, %26, %23, %15, %9
  %47 = phi i32 [ 0, %9 ], [ %45, %44 ], [ 0, %41 ], [ -19, %15 ], [ -19, %23 ], [ -19, %26 ]
  %48 = load i8, ptr %10, align 4, !range !18
  %49 = icmp eq i8 %48, 0
  br i1 %49, label %50, label %51

50:                                               ; preds = %46
  tail call void @up(ptr noundef %6) #22
  br label %51

51:                                               ; preds = %50, %46, %1
  %52 = phi i32 [ %47, %46 ], [ %47, %50 ], [ -4, %1 ]
  ret i32 %52
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @hid_device_remove(ptr noundef %0) #0 {
  %2 = getelementptr i8, ptr %0, i32 -3200
  %3 = getelementptr i8, ptr %0, i32 -20
  tail call void @down(ptr noundef %3) #22
  %4 = getelementptr i8, ptr %0, i32 516
  store i8 0, ptr %4, align 4
  %5 = getelementptr i8, ptr %0, i32 472
  %6 = load ptr, ptr %5, align 8
  %7 = icmp eq ptr %6, null
  br i1 %7, label %35, label %8

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.hid_driver, ptr %6, i32 0, i32 6
  %10 = load ptr, ptr %9, align 4
  %11 = icmp eq ptr %10, null
  br i1 %11, label %12, label %31

12:                                               ; preds = %8
  tail call void @device_remove_file(ptr noundef %0, ptr noundef nonnull @dev_attr_country) #22
  %13 = getelementptr i8, ptr %0, i32 508
  %14 = load i32, ptr %13, align 4
  %15 = and i32 %14, 1
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %19, label %17

17:                                               ; preds = %12
  tail call void @hidinput_disconnect(ptr noundef %2) #22
  %18 = load i32, ptr %13, align 4
  br label %19

19:                                               ; preds = %17, %12
  %20 = phi i32 [ %18, %17 ], [ %14, %12 ]
  %21 = and i32 %20, 2
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %26, label %23

23:                                               ; preds = %19
  %24 = getelementptr i8, ptr %0, i32 804
  %25 = load ptr, ptr %24, align 4
  tail call void %25(ptr noundef %2) #22
  br label %26

26:                                               ; preds = %23, %19
  store i32 0, ptr %13, align 4
  %27 = getelementptr i8, ptr %0, i32 476
  %28 = load ptr, ptr %27, align 4
  %29 = getelementptr inbounds %struct.hid_ll_driver, ptr %28, i32 0, i32 1
  %30 = load ptr, ptr %29, align 4
  br label %31

31:                                               ; preds = %26, %8
  %32 = phi ptr [ %30, %26 ], [ %10, %8 ]
  tail call void %32(ptr noundef %2) #22
  tail call fastcc void @hid_close_report(ptr noundef %2)
  store ptr null, ptr %5, align 8
  %33 = load i8, ptr %4, align 4
  %34 = icmp eq i8 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %31, %1
  tail call void @up(ptr noundef %3) #22
  br label %36

36:                                               ; preds = %35, %31
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @hid_add_device(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.hid_device, ptr %0, i32 0, i32 23
  %3 = load i32, ptr %2, align 8
  %4 = and i32 %3, 1
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %7, label %6, !prof !8

6:                                                ; preds = %1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.5, i32 noundef 2484, i32 noundef 9, ptr noundef null) #22
  br label %69

7:                                                ; preds = %1
  %8 = tail call i32 @hid_lookup_quirk(ptr noundef %0) #22
  %9 = getelementptr inbounds %struct.hid_device, ptr %0, i32 0, i32 25
  store i32 %8, ptr %9, align 8
  %10 = tail call zeroext i1 @hid_ignore(ptr noundef %0) #22
  br i1 %10, label %69, label %11

11:                                               ; preds = %7
  %12 = getelementptr inbounds %struct.hid_device, ptr %0, i32 0, i32 20
  %13 = load ptr, ptr %12, align 4
  %14 = getelementptr inbounds %struct.hid_ll_driver, ptr %13, i32 0, i32 8
  %15 = load ptr, ptr %14, align 4
  %16 = icmp eq ptr %15, null
  br i1 %16, label %17, label %19

17:                                               ; preds = %11
  %18 = getelementptr inbounds %struct.hid_device, ptr %0, i32 0, i32 18
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %18, ptr noundef nonnull @.str.39) #23
  br label %69

19:                                               ; preds = %11
  %20 = getelementptr inbounds %struct.hid_ll_driver, ptr %13, i32 0, i32 5
  %21 = load ptr, ptr %20, align 4
  %22 = tail call i32 %21(ptr noundef %0) #22
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %69

24:                                               ; preds = %19
  %25 = load ptr, ptr %0, align 8
  %26 = icmp eq ptr %25, null
  br i1 %26, label %69, label %27

27:                                               ; preds = %24
  %28 = load i32, ptr @hid_ignore_special_drivers, align 4
  %29 = icmp eq i32 %28, 0
  %30 = getelementptr inbounds %struct.hid_device, ptr %0, i32 0, i32 9
  br i1 %29, label %32, label %31

31:                                               ; preds = %27
  store i16 1, ptr %30, align 2
  br label %44

32:                                               ; preds = %27
  %33 = load i16, ptr %30, align 2
  %34 = icmp eq i16 %33, 0
  br i1 %34, label %35, label %44

35:                                               ; preds = %32
  %36 = load i32, ptr %9, align 8
  %37 = and i32 %36, 524288
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %39, label %44

39:                                               ; preds = %35
  %40 = tail call fastcc i32 @hid_scan_report(ptr noundef %0)
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %44, label %42

42:                                               ; preds = %39
  %43 = getelementptr inbounds %struct.hid_device, ptr %0, i32 0, i32 18
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %43, ptr noundef nonnull @.str.40, i32 noundef %40) #23
  br label %44

44:                                               ; preds = %42, %39, %35, %32, %31
  %45 = getelementptr inbounds %struct.hid_device, ptr %0, i32 0, i32 18
  %46 = getelementptr inbounds %struct.hid_device, ptr %0, i32 0, i32 8
  %47 = load i16, ptr %46, align 8
  %48 = zext i16 %47 to i32
  %49 = getelementptr inbounds %struct.hid_device, ptr %0, i32 0, i32 10
  %50 = load i32, ptr %49, align 4
  %51 = getelementptr inbounds %struct.hid_device, ptr %0, i32 0, i32 11
  %52 = load i32, ptr %51, align 8
  tail call void asm sideeffect "dmb ish", "~{memory}"() #22, !srcloc !19
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr nonnull @hid_add_device.id) #22, !srcloc !20
  %53 = tail call { i32, i32 } asm sideeffect "@ atomic_add_return\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) @hid_add_device.id, ptr nonnull @hid_add_device.id, i32 1, ptr nonnull elementtype(i32) @hid_add_device.id) #22, !srcloc !21
  %54 = extractvalue { i32, i32 } %53, 0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #22, !srcloc !22
  %55 = tail call i32 (ptr, ptr, ...) @dev_set_name(ptr noundef %45, ptr noundef nonnull @.str.41, i32 noundef %48, i32 noundef %50, i32 noundef %52, i32 noundef %54) #22
  %56 = getelementptr inbounds %struct.hid_device, ptr %0, i32 0, i32 18, i32 3
  %57 = load ptr, ptr %56, align 4
  %58 = icmp eq ptr %57, null
  br i1 %58, label %59, label %61

59:                                               ; preds = %44
  %60 = load ptr, ptr %45, align 4
  br label %61

61:                                               ; preds = %59, %44
  %62 = phi ptr [ %60, %59 ], [ %57, %44 ]
  tail call void @hid_debug_register(ptr noundef %0, ptr noundef %62) #22
  %63 = tail call i32 @device_add(ptr noundef %45) #22
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %65, label %68

65:                                               ; preds = %61
  %66 = load i32, ptr %2, align 8
  %67 = or i32 %66, 1
  store i32 %67, ptr %2, align 8
  br label %69

68:                                               ; preds = %61
  tail call void @hid_debug_unregister(ptr noundef %0) #22
  br label %69

69:                                               ; preds = %68, %65, %24, %19, %17, %7, %6
  %70 = phi i32 [ -16, %6 ], [ -22, %17 ], [ -19, %7 ], [ %22, %19 ], [ -19, %24 ], [ %63, %68 ], [ 0, %65 ]
  ret i32 %70
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hid_lookup_quirk(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @hid_ignore(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @hid_scan_report(ptr noundef %0) unnamed_addr #0 {
  %2 = alloca %struct.hid_item, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %2) #22
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(12) %2, i8 0, i32 12, i1 false), !annotation !10
  %3 = load ptr, ptr %0, align 8
  %4 = getelementptr inbounds %struct.hid_device, ptr %0, i32 0, i32 1
  %5 = load i32, ptr %4, align 4
  %6 = tail call noalias ptr @vzalloc(i32 noundef 110832) #24
  %7 = icmp eq ptr %6, null
  br i1 %7, label %102, label %8

8:                                                ; preds = %1
  %9 = getelementptr i8, ptr %3, i32 %5
  %10 = getelementptr inbounds %struct.hid_parser, ptr %6, i32 0, i32 7
  store ptr %0, ptr %10, align 4
  %11 = getelementptr inbounds %struct.hid_device, ptr %0, i32 0, i32 9
  store i16 1, ptr %11, align 2
  %12 = ptrtoint ptr %9 to i32
  %13 = icmp slt i32 %5, 1
  br i1 %13, label %79, label %14

14:                                               ; preds = %8
  %15 = getelementptr inbounds %struct.hid_item, ptr %2, i32 0, i32 2
  %16 = getelementptr inbounds %struct.hid_item, ptr %2, i32 0, i32 3
  %17 = getelementptr inbounds %struct.hid_item, ptr %2, i32 0, i32 1
  %18 = getelementptr inbounds %struct.hid_item, ptr %2, i32 0, i32 4
  br label %19

19:                                               ; preds = %71, %14
  %20 = phi ptr [ %3, %14 ], [ %69, %71 ]
  %21 = getelementptr i8, ptr %20, i32 1
  %22 = load i8, ptr %20, align 1
  %23 = lshr i8 %22, 2
  %24 = and i8 %23, 3
  store i8 %24, ptr %15, align 1
  %25 = lshr i8 %22, 4
  store i8 %25, ptr %16, align 2
  %26 = icmp eq i8 %25, 15
  br i1 %26, label %27, label %42

27:                                               ; preds = %19
  store i32 1, ptr %2, align 4
  %28 = ptrtoint ptr %21 to i32
  %29 = sub i32 %12, %28
  %30 = icmp slt i32 %29, 2
  br i1 %30, label %79, label %31

31:                                               ; preds = %27
  %32 = getelementptr i8, ptr %20, i32 2
  %33 = load i8, ptr %21, align 1
  store i8 %33, ptr %17, align 4
  %34 = getelementptr i8, ptr %20, i32 3
  %35 = load i8, ptr %32, align 1
  store i8 %35, ptr %16, align 2
  %36 = ptrtoint ptr %34 to i32
  %37 = sub i32 %12, %36
  %38 = zext i8 %33 to i32
  %39 = icmp slt i32 %37, %38
  br i1 %39, label %79, label %40

40:                                               ; preds = %31
  store ptr %34, ptr %18, align 4
  %41 = getelementptr i8, ptr %34, i32 %38
  br label %68

42:                                               ; preds = %19
  store i32 0, ptr %2, align 4
  %43 = and i8 %22, 3
  store i8 %43, ptr %17, align 4
  %44 = zext i8 %43 to i32
  switch i32 %44, label %67 [
    i32 0, label %68
    i32 1, label %45
    i32 2, label %52
    i32 3, label %59
  ]

45:                                               ; preds = %42
  %46 = ptrtoint ptr %21 to i32
  %47 = sub i32 %12, %46
  %48 = icmp slt i32 %47, 1
  br i1 %48, label %79, label %49

49:                                               ; preds = %45
  %50 = getelementptr i8, ptr %20, i32 2
  %51 = load i8, ptr %21, align 1
  store i8 %51, ptr %18, align 4
  br label %68

52:                                               ; preds = %42
  %53 = ptrtoint ptr %21 to i32
  %54 = sub i32 %12, %53
  %55 = icmp slt i32 %54, 2
  br i1 %55, label %79, label %56

56:                                               ; preds = %52
  %57 = load i16, ptr %21, align 1
  store i16 %57, ptr %18, align 4
  %58 = getelementptr i8, ptr %20, i32 3
  br label %68

59:                                               ; preds = %42
  %60 = add nuw nsw i8 %43, 1
  store i8 %60, ptr %17, align 4
  %61 = ptrtoint ptr %21 to i32
  %62 = sub i32 %12, %61
  %63 = icmp slt i32 %62, 4
  br i1 %63, label %79, label %64

64:                                               ; preds = %59
  %65 = load i32, ptr %21, align 1
  store i32 %65, ptr %18, align 4
  %66 = getelementptr i8, ptr %20, i32 5
  br label %68

67:                                               ; preds = %42
  unreachable

68:                                               ; preds = %64, %56, %49, %42, %40
  %69 = phi ptr [ %41, %40 ], [ %66, %64 ], [ %58, %56 ], [ %50, %49 ], [ %21, %42 ]
  %70 = icmp eq ptr %69, null
  br i1 %70, label %79, label %71

71:                                               ; preds = %68
  %72 = zext i8 %24 to i32
  %73 = getelementptr [4 x ptr], ptr @hid_scan_report.dispatch_type, i32 0, i32 %72
  %74 = load ptr, ptr %73, align 4
  %75 = call i32 %74(ptr noundef nonnull %6, ptr noundef nonnull %2) #22
  %76 = ptrtoint ptr %69 to i32
  %77 = sub i32 %12, %76
  %78 = icmp slt i32 %77, 1
  br i1 %78, label %79, label %19

79:                                               ; preds = %71, %68, %59, %52, %45, %31, %27, %8
  %80 = getelementptr inbounds %struct.hid_parser, ptr %6, i32 0, i32 8
  %81 = load i32, ptr %80, align 4
  %82 = and i32 %81, 1
  %83 = icmp eq i32 %82, 0
  br i1 %83, label %88, label %84

84:                                               ; preds = %79
  %85 = load i16, ptr %11, align 2
  %86 = icmp eq i16 %85, 2
  br i1 %86, label %87, label %88

87:                                               ; preds = %84
  store i16 4, ptr %11, align 2
  br label %88

88:                                               ; preds = %87, %84, %79
  %89 = getelementptr inbounds %struct.hid_device, ptr %0, i32 0, i32 10
  %90 = load i32, ptr %89, align 4
  switch i32 %90, label %99 [
    i32 1386, label %97
    i32 1739, label %91
  ]

91:                                               ; preds = %88
  %92 = load i16, ptr %11, align 2
  %93 = icmp eq i16 %92, 1
  %94 = and i32 %81, 6
  %95 = icmp eq i32 %94, 6
  %96 = select i1 %93, i1 %95, i1 false
  br i1 %96, label %97, label %99

97:                                               ; preds = %91, %88
  %98 = phi i16 [ 257, %88 ], [ 256, %91 ]
  store i16 %98, ptr %11, align 2
  br label %99

99:                                               ; preds = %97, %91, %88
  %100 = getelementptr inbounds %struct.hid_parser, ptr %6, i32 0, i32 4
  %101 = load ptr, ptr %100, align 4
  call void @kfree(ptr noundef %101) #22
  call void @vfree(ptr noundef nonnull %6) #22
  br label %102

102:                                              ; preds = %99, %1
  %103 = phi i32 [ 0, %99 ], [ -12, %1 ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %2) #22
  ret i32 %103
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_set_name(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @hid_debug_register(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_add(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @hid_debug_unregister(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @hid_allocate_device() #0 {
  %1 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 12), align 4
  %2 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %1, i32 noundef 3520, i32 noundef 4056) #21
  %3 = icmp eq ptr %2, null
  br i1 %3, label %24, label %4

4:                                                ; preds = %0
  %5 = getelementptr inbounds %struct.hid_device, ptr %2, i32 0, i32 18
  tail call void @device_initialize(ptr noundef %5) #22
  %6 = getelementptr inbounds %struct.hid_device, ptr %2, i32 0, i32 18, i32 33
  store ptr @hid_device_release, ptr %6, align 4
  %7 = getelementptr inbounds %struct.hid_device, ptr %2, i32 0, i32 18, i32 5
  store ptr @hid_bus_type, ptr %7, align 4
  %8 = getelementptr inbounds %struct.hid_device, ptr %2, i32 0, i32 18, i32 11, i32 1
  %9 = load i16, ptr %8, align 4
  %10 = and i16 %9, 8
  %11 = icmp eq i16 %10, 0
  br i1 %11, label %12, label %14

12:                                               ; preds = %4
  %13 = or i16 %9, 2
  store i16 %13, ptr %8, align 4
  br label %14

14:                                               ; preds = %12, %4
  tail call fastcc void @hid_close_report(ptr noundef nonnull %2)
  %15 = getelementptr inbounds %struct.hid_device, ptr %2, i32 0, i32 45
  tail call void @__init_waitqueue_head(ptr noundef %15, ptr noundef nonnull @.str.42, ptr noundef nonnull @hid_allocate_device.__key) #22
  %16 = getelementptr inbounds %struct.hid_device, ptr %2, i32 0, i32 43
  store volatile ptr %16, ptr %16, align 8
  %17 = getelementptr inbounds %struct.hid_device, ptr %2, i32 0, i32 43, i32 1
  store ptr %16, ptr %17, align 4
  %18 = getelementptr inbounds %struct.hid_device, ptr %2, i32 0, i32 44
  store i32 0, ptr %18, align 8
  %19 = getelementptr inbounds %struct.hid_device, ptr %2, i32 0, i32 17
  %20 = getelementptr inbounds %struct.hid_device, ptr %2, i32 0, i32 17, i32 2
  store i32 0, ptr %19, align 4
  %21 = getelementptr inbounds %struct.hid_device, ptr %2, i32 0, i32 17, i32 1
  store i32 1, ptr %21, align 8
  store ptr %20, ptr %20, align 4
  %22 = getelementptr inbounds %struct.hid_device, ptr %2, i32 0, i32 17, i32 2, i32 1
  store ptr %20, ptr %22, align 8
  %23 = getelementptr inbounds %struct.hid_device, ptr %2, i32 0, i32 21
  tail call void @__mutex_init(ptr noundef %23, ptr noundef nonnull @.str.44, ptr noundef nonnull @hid_allocate_device.__key.43) #22
  br label %24

24:                                               ; preds = %14, %0
  %25 = phi ptr [ %2, %14 ], [ inttoptr (i32 -12 to ptr), %0 ]
  ret ptr %25
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @device_initialize(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @hid_device_release(ptr noundef %0) #0 {
  %2 = getelementptr i8, ptr %0, i32 -3200
  tail call fastcc void @hid_close_report(ptr noundef %2)
  %3 = load ptr, ptr %2, align 8
  tail call void @kfree(ptr noundef %3) #22
  tail call void @kfree(ptr noundef %2) #22
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_waitqueue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #12

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @hid_destroy_device(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.hid_device, ptr %0, i32 0, i32 23
  %3 = load i32, ptr %2, align 8
  %4 = and i32 %3, 1
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %10, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.hid_device, ptr %0, i32 0, i32 18
  tail call void @device_del(ptr noundef %7) #22
  tail call void @hid_debug_unregister(ptr noundef %0) #22
  %8 = load i32, ptr %2, align 8
  %9 = and i32 %8, -2
  store i32 %9, ptr %2, align 8
  br label %10

10:                                               ; preds = %6, %1
  %11 = load ptr, ptr %0, align 8
  tail call void @kfree(ptr noundef %11) #22
  store ptr null, ptr %0, align 8
  %12 = getelementptr inbounds %struct.hid_device, ptr %0, i32 0, i32 1
  store i32 0, ptr %12, align 4
  %13 = getelementptr inbounds %struct.hid_device, ptr %0, i32 0, i32 18
  tail call void @put_device(ptr noundef %13) #22
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @put_device(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__hid_register_driver(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = load ptr, ptr %0, align 4
  %5 = getelementptr inbounds %struct.hid_driver, ptr %0, i32 0, i32 20
  store ptr %4, ptr %5, align 4
  %6 = getelementptr inbounds %struct.hid_driver, ptr %0, i32 0, i32 20, i32 1
  store ptr @hid_bus_type, ptr %6, align 4
  %7 = getelementptr inbounds %struct.hid_driver, ptr %0, i32 0, i32 20, i32 2
  store ptr %1, ptr %7, align 4
  %8 = getelementptr inbounds %struct.hid_driver, ptr %0, i32 0, i32 20, i32 3
  store ptr %2, ptr %8, align 4
  %9 = getelementptr inbounds %struct.hid_driver, ptr %0, i32 0, i32 2
  store volatile ptr %9, ptr %9, align 4
  %10 = getelementptr inbounds %struct.hid_driver, ptr %0, i32 0, i32 2, i32 1
  store ptr %9, ptr %10, align 4
  %11 = getelementptr inbounds %struct.hid_driver, ptr %0, i32 0, i32 3
  store i32 0, ptr %11, align 4
  %12 = tail call i32 @driver_register(ptr noundef %5) #22
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %3
  %15 = tail call i32 @bus_for_each_drv(ptr noundef nonnull @hid_bus_type, ptr noundef null, ptr noundef null, ptr noundef nonnull @__hid_bus_driver_added) #22
  br label %16

16:                                               ; preds = %14, %3
  ret i32 %12
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @driver_register(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bus_for_each_drv(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @__hid_bus_driver_added(ptr noundef %0, ptr nocapture noundef readnone %1) #0 {
  %3 = getelementptr i8, ptr %0, i32 -64
  %4 = load ptr, ptr %3, align 4
  %5 = icmp eq ptr %4, null
  br i1 %5, label %9, label %6

6:                                                ; preds = %2
  %7 = getelementptr i8, ptr %0, i32 -84
  %8 = tail call i32 @bus_for_each_dev(ptr noundef nonnull @hid_bus_type, ptr noundef null, ptr noundef %7, ptr noundef nonnull @__hid_bus_reprobe_drivers) #22
  br label %9

9:                                                ; preds = %6, %2
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @hid_unregister_driver(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.hid_driver, ptr %0, i32 0, i32 20
  tail call void @driver_unregister(ptr noundef %2) #22
  %3 = getelementptr inbounds %struct.hid_driver, ptr %0, i32 0, i32 3
  tail call void @_raw_spin_lock(ptr noundef %3) #22
  %4 = getelementptr inbounds %struct.hid_driver, ptr %0, i32 0, i32 2
  %5 = load ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, %4
  br i1 %6, label %14, label %7

7:                                                ; preds = %7, %1
  %8 = phi ptr [ %9, %7 ], [ %5, %1 ]
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.list_head, ptr %8, i32 0, i32 1
  %11 = load ptr, ptr %10, align 4
  %12 = getelementptr inbounds %struct.list_head, ptr %9, i32 0, i32 1
  store ptr %11, ptr %12, align 4
  store volatile ptr %9, ptr %11, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %8, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %10, align 4
  tail call void @kfree(ptr noundef %8) #22
  %13 = icmp eq ptr %9, %4
  br i1 %13, label %14, label %7

14:                                               ; preds = %7, %1
  tail call void asm sideeffect "dmb ish", "~{memory}"() #22, !srcloc !14
  %15 = load i16, ptr %3, align 4
  %16 = add i16 %15, 1
  store i16 %16, ptr %3, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #22, !srcloc !15
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #22, !srcloc !16
  tail call void asm sideeffect "", "~{memory}"() #22, !srcloc !17
  %17 = tail call i32 @bus_for_each_drv(ptr noundef nonnull @hid_bus_type, ptr noundef null, ptr noundef %0, ptr noundef nonnull @__bus_removed_driver) #22
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @driver_unregister(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @__bus_removed_driver(ptr nocapture noundef readnone %0, ptr nocapture noundef readnone %1) #0 {
  %3 = tail call i32 @bus_rescan_devices(ptr noundef nonnull @hid_bus_type) #22
  ret i32 %3
}

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong uwtable(sync)
define dso_local i32 @hid_check_keys_pressed(ptr noundef readonly %0) #8 {
  %2 = getelementptr inbounds %struct.hid_device, ptr %0, i32 0, i32 24
  %3 = load i32, ptr %2, align 4
  %4 = and i32 %3, 1
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %112, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.hid_device, ptr %0, i32 0, i32 27
  %8 = load ptr, ptr %7, align 4
  %9 = icmp eq ptr %8, %7
  br i1 %9, label %112, label %10

10:                                               ; preds = %109, %6
  %11 = phi ptr [ %110, %109 ], [ %8, %6 ]
  %12 = getelementptr inbounds %struct.hid_input, ptr %11, i32 0, i32 2
  %13 = load ptr, ptr %12, align 4
  %14 = getelementptr %struct.input_dev, ptr %13, i32 0, i32 27, i32 0
  %15 = load i32, ptr %14, align 4
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %112

17:                                               ; preds = %10
  %18 = getelementptr %struct.input_dev, ptr %13, i32 0, i32 27, i32 1
  %19 = load i32, ptr %18, align 4
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %112

21:                                               ; preds = %17
  %22 = getelementptr %struct.input_dev, ptr %13, i32 0, i32 27, i32 2
  %23 = load i32, ptr %22, align 4
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %112

25:                                               ; preds = %21
  %26 = getelementptr %struct.input_dev, ptr %13, i32 0, i32 27, i32 3
  %27 = load i32, ptr %26, align 4
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %112

29:                                               ; preds = %25
  %30 = getelementptr %struct.input_dev, ptr %13, i32 0, i32 27, i32 4
  %31 = load i32, ptr %30, align 4
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %33, label %112

33:                                               ; preds = %29
  %34 = getelementptr %struct.input_dev, ptr %13, i32 0, i32 27, i32 5
  %35 = load i32, ptr %34, align 4
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %37, label %112

37:                                               ; preds = %33
  %38 = getelementptr %struct.input_dev, ptr %13, i32 0, i32 27, i32 6
  %39 = load i32, ptr %38, align 4
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %41, label %112

41:                                               ; preds = %37
  %42 = getelementptr %struct.input_dev, ptr %13, i32 0, i32 27, i32 7
  %43 = load i32, ptr %42, align 4
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %45, label %112

45:                                               ; preds = %41
  %46 = getelementptr %struct.input_dev, ptr %13, i32 0, i32 27, i32 8
  %47 = load i32, ptr %46, align 4
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %49, label %112

49:                                               ; preds = %45
  %50 = getelementptr %struct.input_dev, ptr %13, i32 0, i32 27, i32 9
  %51 = load i32, ptr %50, align 4
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %53, label %112

53:                                               ; preds = %49
  %54 = getelementptr %struct.input_dev, ptr %13, i32 0, i32 27, i32 10
  %55 = load i32, ptr %54, align 4
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %57, label %112

57:                                               ; preds = %53
  %58 = getelementptr %struct.input_dev, ptr %13, i32 0, i32 27, i32 11
  %59 = load i32, ptr %58, align 4
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %61, label %112

61:                                               ; preds = %57
  %62 = getelementptr %struct.input_dev, ptr %13, i32 0, i32 27, i32 12
  %63 = load i32, ptr %62, align 4
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %65, label %112

65:                                               ; preds = %61
  %66 = getelementptr %struct.input_dev, ptr %13, i32 0, i32 27, i32 13
  %67 = load i32, ptr %66, align 4
  %68 = icmp eq i32 %67, 0
  br i1 %68, label %69, label %112

69:                                               ; preds = %65
  %70 = getelementptr %struct.input_dev, ptr %13, i32 0, i32 27, i32 14
  %71 = load i32, ptr %70, align 4
  %72 = icmp eq i32 %71, 0
  br i1 %72, label %73, label %112

73:                                               ; preds = %69
  %74 = getelementptr %struct.input_dev, ptr %13, i32 0, i32 27, i32 15
  %75 = load i32, ptr %74, align 4
  %76 = icmp eq i32 %75, 0
  br i1 %76, label %77, label %112

77:                                               ; preds = %73
  %78 = getelementptr %struct.input_dev, ptr %13, i32 0, i32 27, i32 16
  %79 = load i32, ptr %78, align 4
  %80 = icmp eq i32 %79, 0
  br i1 %80, label %81, label %112

81:                                               ; preds = %77
  %82 = getelementptr %struct.input_dev, ptr %13, i32 0, i32 27, i32 17
  %83 = load i32, ptr %82, align 4
  %84 = icmp eq i32 %83, 0
  br i1 %84, label %85, label %112

85:                                               ; preds = %81
  %86 = getelementptr %struct.input_dev, ptr %13, i32 0, i32 27, i32 18
  %87 = load i32, ptr %86, align 4
  %88 = icmp eq i32 %87, 0
  br i1 %88, label %89, label %112

89:                                               ; preds = %85
  %90 = getelementptr %struct.input_dev, ptr %13, i32 0, i32 27, i32 19
  %91 = load i32, ptr %90, align 4
  %92 = icmp eq i32 %91, 0
  br i1 %92, label %93, label %112

93:                                               ; preds = %89
  %94 = getelementptr %struct.input_dev, ptr %13, i32 0, i32 27, i32 20
  %95 = load i32, ptr %94, align 4
  %96 = icmp eq i32 %95, 0
  br i1 %96, label %97, label %112

97:                                               ; preds = %93
  %98 = getelementptr %struct.input_dev, ptr %13, i32 0, i32 27, i32 21
  %99 = load i32, ptr %98, align 4
  %100 = icmp eq i32 %99, 0
  br i1 %100, label %101, label %112

101:                                              ; preds = %97
  %102 = getelementptr %struct.input_dev, ptr %13, i32 0, i32 27, i32 22
  %103 = load i32, ptr %102, align 4
  %104 = icmp eq i32 %103, 0
  br i1 %104, label %105, label %112

105:                                              ; preds = %101
  %106 = getelementptr %struct.input_dev, ptr %13, i32 0, i32 27, i32 23
  %107 = load i32, ptr %106, align 4
  %108 = icmp eq i32 %107, 0
  br i1 %108, label %109, label %112

109:                                              ; preds = %105
  %110 = load ptr, ptr %11, align 4
  %111 = icmp eq ptr %110, %7
  br i1 %111, label %112, label %10

112:                                              ; preds = %109, %105, %101, %97, %93, %89, %85, %81, %77, %73, %69, %65, %61, %57, %53, %49, %45, %41, %37, %33, %29, %25, %21, %17, %10, %6, %1
  %113 = phi i32 [ 0, %1 ], [ 0, %6 ], [ 0, %109 ], [ 1, %10 ], [ 1, %17 ], [ 1, %21 ], [ 1, %25 ], [ 1, %29 ], [ 1, %33 ], [ 1, %37 ], [ 1, %41 ], [ 1, %45 ], [ 1, %49 ], [ 1, %53 ], [ 1, %57 ], [ 1, %61 ], [ 1, %65 ], [ 1, %69 ], [ 1, %73 ], [ 1, %77 ], [ 1, %81 ], [ 1, %85 ], [ 1, %89 ], [ 1, %93 ], [ 1, %97 ], [ 1, %101 ], [ 1, %105 ]
  ret i32 %113
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal void @hid_exit() #13 section ".exit.text" {
  tail call void @hid_debug_exit() #22
  tail call void @bus_unregister(ptr noundef nonnull @hid_bus_type) #22
  tail call void @hid_quirks_exit(i16 noundef zeroext -1) #22
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @hid_debug_exit() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @bus_unregister(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @hid_quirks_exit(i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @hid_init() #13 section ".init.text" {
  %1 = load i32, ptr @hid_debug, align 4
  %2 = icmp eq i32 %1, 0
  br i1 %2, label %5, label %3

3:                                                ; preds = %0
  %4 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.88) #23
  br label %5

5:                                                ; preds = %3, %0
  %6 = tail call i32 @bus_register(ptr noundef nonnull @hid_bus_type) #22
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %10, label %8

8:                                                ; preds = %5
  %9 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.89) #23
  br label %11

10:                                               ; preds = %5
  tail call void @hid_debug_init() #22
  br label %11

11:                                               ; preds = %10, %8
  ret i32 %6
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @hid_add_field(ptr noundef readonly %0, i32 noundef %1, i32 noundef %2) unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.hid_parser, ptr %0, i32 0, i32 7
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.hid_device, ptr %5, i32 0, i32 4
  %7 = load ptr, ptr %6, align 8
  %8 = getelementptr inbounds %struct.hid_parser, ptr %0, i32 0, i32 5
  %9 = load i32, ptr %8, align 4
  %10 = getelementptr inbounds %struct.hid_parser, ptr %0, i32 0, i32 4
  br label %11

11:                                               ; preds = %15, %3
  %12 = phi i32 [ %9, %3 ], [ %13, %15 ]
  %13 = add i32 %12, -1
  %14 = icmp sgt i32 %13, -1
  br i1 %14, label %15, label %25

15:                                               ; preds = %11
  %16 = load ptr, ptr %10, align 4
  %17 = getelementptr i32, ptr %16, i32 %13
  %18 = load i32, ptr %17, align 4
  %19 = getelementptr %struct.hid_collection, ptr %7, i32 %18, i32 1
  %20 = load i32, ptr %19, align 4
  %21 = icmp eq i32 %20, 1
  br i1 %21, label %22, label %11

22:                                               ; preds = %15
  %23 = getelementptr %struct.hid_collection, ptr %7, i32 %18, i32 2
  %24 = load i32, ptr %23, align 4
  br label %25

25:                                               ; preds = %22, %11
  %26 = phi i32 [ %24, %22 ], [ 0, %11 ]
  %27 = getelementptr inbounds %struct.hid_global, ptr %0, i32 0, i32 7
  %28 = load i32, ptr %27, align 4
  %29 = getelementptr inbounds %struct.hid_device, ptr %5, i32 0, i32 15
  %30 = getelementptr %struct.hid_report_enum, ptr %29, i32 %1
  %31 = icmp ugt i32 %28, 255
  br i1 %31, label %55, label %32

32:                                               ; preds = %25
  %33 = getelementptr %struct.hid_report_enum, ptr %29, i32 %1, i32 2, i32 %28
  %34 = load ptr, ptr %33, align 4
  %35 = icmp eq ptr %34, null
  br i1 %35, label %36, label %58

36:                                               ; preds = %32
  %37 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11), align 4
  %38 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %37, i32 noundef 3520, i32 noundef 1064) #21
  %39 = icmp eq ptr %38, null
  br i1 %39, label %40, label %42

40:                                               ; preds = %36
  %41 = load ptr, ptr %4, align 4
  br label %55

42:                                               ; preds = %36
  %43 = icmp eq i32 %28, 0
  br i1 %43, label %45, label %44

44:                                               ; preds = %42
  store i32 1, ptr %30, align 4
  br label %45

45:                                               ; preds = %44, %42
  %46 = getelementptr inbounds %struct.hid_report, ptr %38, i32 0, i32 2
  store i32 %28, ptr %46, align 8
  %47 = getelementptr inbounds %struct.hid_report, ptr %38, i32 0, i32 3
  store i32 %1, ptr %47, align 4
  %48 = getelementptr inbounds %struct.hid_report, ptr %38, i32 0, i32 7
  store i32 0, ptr %48, align 8
  %49 = getelementptr inbounds %struct.hid_report, ptr %38, i32 0, i32 8
  store ptr %5, ptr %49, align 4
  %50 = getelementptr inbounds %struct.hid_report, ptr %38, i32 0, i32 4
  store i32 %26, ptr %50, align 8
  store ptr %38, ptr %33, align 4
  %51 = getelementptr %struct.hid_report_enum, ptr %29, i32 %1, i32 1
  %52 = getelementptr %struct.hid_report_enum, ptr %29, i32 %1, i32 1, i32 1
  %53 = load ptr, ptr %52, align 4
  store ptr %38, ptr %52, align 4
  store ptr %51, ptr %38, align 8
  %54 = getelementptr inbounds %struct.list_head, ptr %38, i32 0, i32 1
  store ptr %53, ptr %54, align 4
  store volatile ptr %38, ptr %53, align 4
  br label %58

55:                                               ; preds = %40, %25
  %56 = phi ptr [ %41, %40 ], [ %5, %25 ]
  %57 = getelementptr inbounds %struct.hid_device, ptr %56, i32 0, i32 18
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %57, ptr noundef nonnull @.str.53) #23
  br label %210

58:                                               ; preds = %45, %32
  %59 = phi ptr [ %38, %45 ], [ %34, %32 ]
  %60 = getelementptr inbounds %struct.hid_global, ptr %0, i32 0, i32 1
  %61 = load i32, ptr %60, align 4
  %62 = icmp slt i32 %61, 0
  %63 = getelementptr inbounds %struct.hid_global, ptr %0, i32 0, i32 2
  %64 = load i32, ptr %63, align 4
  br i1 %62, label %65, label %67

65:                                               ; preds = %58
  %66 = icmp slt i32 %64, %61
  br i1 %66, label %69, label %74

67:                                               ; preds = %58
  %68 = icmp ult i32 %64, %61
  br i1 %68, label %69, label %74

69:                                               ; preds = %67, %65
  %70 = load i32, ptr @hid_debug, align 4
  %71 = icmp eq i32 %70, 0
  br i1 %71, label %210, label %72

72:                                               ; preds = %69
  %73 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.54, ptr noundef nonnull @.str.5, i32 noundef %61, i32 noundef %64) #23
  br label %210

74:                                               ; preds = %67, %65
  %75 = getelementptr inbounds %struct.hid_report, ptr %59, i32 0, i32 7
  %76 = load i32, ptr %75, align 4
  %77 = getelementptr inbounds %struct.hid_global, ptr %0, i32 0, i32 8
  %78 = load i32, ptr %77, align 4
  %79 = getelementptr inbounds %struct.hid_global, ptr %0, i32 0, i32 9
  %80 = load i32, ptr %79, align 4
  %81 = mul i32 %80, %78
  %82 = add i32 %81, %76
  store i32 %82, ptr %75, align 4
  %83 = icmp ugt i32 %82, 131064
  br i1 %83, label %84, label %87

84:                                               ; preds = %74
  %85 = load ptr, ptr %4, align 4
  %86 = getelementptr inbounds %struct.hid_device, ptr %85, i32 0, i32 18
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %86, ptr noundef nonnull @.str.55) #23
  br label %210

87:                                               ; preds = %74
  %88 = getelementptr inbounds %struct.hid_parser, ptr %0, i32 0, i32 3
  %89 = getelementptr inbounds %struct.hid_parser, ptr %0, i32 0, i32 3, i32 3
  %90 = load i32, ptr %89, align 4
  %91 = icmp eq i32 %90, 0
  br i1 %91, label %210, label %92

92:                                               ; preds = %87
  %93 = load i32, ptr %79, align 4
  %94 = tail call i32 @llvm.umax.i32(i32 %90, i32 %93)
  %95 = getelementptr inbounds %struct.hid_report, ptr %59, i32 0, i32 6
  %96 = load i32, ptr %95, align 4
  %97 = icmp eq i32 %96, 256
  br i1 %97, label %98, label %102

98:                                               ; preds = %92
  %99 = getelementptr inbounds %struct.hid_report, ptr %59, i32 0, i32 8
  %100 = load ptr, ptr %99, align 4
  %101 = getelementptr inbounds %struct.hid_device, ptr %100, i32 0, i32 18
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %101, ptr noundef nonnull @.str.56) #23
  br label %210

102:                                              ; preds = %92
  %103 = mul i32 %94, 24
  %104 = add i32 %103, 84
  %105 = shl i32 %94, 2
  %106 = add i32 %104, %105
  %107 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %106, i32 noundef 3520) #24
  %108 = icmp eq ptr %107, null
  br i1 %108, label %210, label %109

109:                                              ; preds = %102
  %110 = load i32, ptr %95, align 4
  %111 = add i32 %110, 1
  store i32 %111, ptr %95, align 4
  %112 = getelementptr inbounds %struct.hid_field, ptr %107, i32 0, i32 18
  store i32 %110, ptr %112, align 8
  %113 = getelementptr %struct.hid_report, ptr %59, i32 0, i32 5, i32 %110
  store ptr %107, ptr %113, align 4
  %114 = getelementptr %struct.hid_field, ptr %107, i32 1
  %115 = getelementptr inbounds %struct.hid_field, ptr %107, i32 0, i32 3
  store ptr %114, ptr %115, align 4
  %116 = getelementptr %struct.hid_usage, ptr %114, i32 %94
  %117 = getelementptr inbounds %struct.hid_field, ptr %107, i32 0, i32 10
  store ptr %116, ptr %117, align 8
  %118 = getelementptr inbounds %struct.hid_field, ptr %107, i32 0, i32 17
  store ptr %59, ptr %118, align 4
  %119 = load ptr, ptr %4, align 4
  %120 = getelementptr inbounds %struct.hid_device, ptr %119, i32 0, i32 4
  %121 = load ptr, ptr %120, align 8
  %122 = load i32, ptr %8, align 4
  br label %123

123:                                              ; preds = %127, %109
  %124 = phi i32 [ %122, %109 ], [ %125, %127 ]
  %125 = add i32 %124, -1
  %126 = icmp sgt i32 %125, -1
  br i1 %126, label %127, label %137

127:                                              ; preds = %123
  %128 = load ptr, ptr %10, align 4
  %129 = getelementptr i32, ptr %128, i32 %125
  %130 = load i32, ptr %129, align 4
  %131 = getelementptr %struct.hid_collection, ptr %121, i32 %130, i32 1
  %132 = load i32, ptr %131, align 4
  %133 = icmp eq i32 %132, 0
  br i1 %133, label %134, label %123

134:                                              ; preds = %127
  %135 = getelementptr %struct.hid_collection, ptr %121, i32 %130, i32 2
  %136 = load i32, ptr %135, align 4
  br label %137

137:                                              ; preds = %134, %123
  %138 = phi i32 [ %136, %134 ], [ 0, %123 ]
  store i32 %138, ptr %107, align 64
  %139 = load ptr, ptr %4, align 4
  %140 = getelementptr inbounds %struct.hid_device, ptr %139, i32 0, i32 4
  %141 = load ptr, ptr %140, align 8
  %142 = load i32, ptr %8, align 4
  br label %143

143:                                              ; preds = %147, %137
  %144 = phi i32 [ %142, %137 ], [ %145, %147 ]
  %145 = add i32 %144, -1
  %146 = icmp sgt i32 %145, -1
  br i1 %146, label %147, label %157

147:                                              ; preds = %143
  %148 = load ptr, ptr %10, align 4
  %149 = getelementptr i32, ptr %148, i32 %145
  %150 = load i32, ptr %149, align 4
  %151 = getelementptr %struct.hid_collection, ptr %141, i32 %150, i32 1
  %152 = load i32, ptr %151, align 4
  %153 = icmp eq i32 %152, 2
  br i1 %153, label %154, label %143

154:                                              ; preds = %147
  %155 = getelementptr %struct.hid_collection, ptr %141, i32 %150, i32 2
  %156 = load i32, ptr %155, align 4
  br label %157

157:                                              ; preds = %154, %143
  %158 = phi i32 [ %156, %154 ], [ 0, %143 ]
  %159 = getelementptr inbounds %struct.hid_field, ptr %107, i32 0, i32 1
  store i32 %158, ptr %159, align 4
  %160 = getelementptr inbounds %struct.hid_field, ptr %107, i32 0, i32 2
  store i32 %26, ptr %160, align 8
  %161 = icmp eq i32 %94, 0
  br i1 %161, label %184, label %162

162:                                              ; preds = %182, %157
  %163 = phi ptr [ %183, %182 ], [ %114, %157 ]
  %164 = phi i32 [ %180, %182 ], [ 0, %157 ]
  %165 = load i32, ptr %89, align 4
  %166 = icmp ult i32 %164, %165
  %167 = add i32 %165, -1
  %168 = select i1 %166, i32 %164, i32 %167
  %169 = getelementptr [12288 x i32], ptr %88, i32 0, i32 %168
  %170 = load i32, ptr %169, align 4
  %171 = getelementptr %struct.hid_usage, ptr %163, i32 %164
  store i32 %170, ptr %171, align 4
  %172 = getelementptr %struct.hid_parser, ptr %0, i32 0, i32 3, i32 2, i32 %168
  %173 = load i32, ptr %172, align 4
  %174 = load ptr, ptr %115, align 4
  %175 = getelementptr %struct.hid_usage, ptr %174, i32 %164, i32 1
  store i32 %173, ptr %175, align 4
  %176 = load ptr, ptr %115, align 4
  %177 = getelementptr %struct.hid_usage, ptr %176, i32 %164, i32 2
  store i32 %164, ptr %177, align 4
  %178 = load ptr, ptr %115, align 4
  %179 = getelementptr %struct.hid_usage, ptr %178, i32 %164, i32 3
  store i8 1, ptr %179, align 4
  %180 = add nuw i32 %164, 1
  %181 = icmp eq i32 %180, %94
  br i1 %181, label %184, label %182

182:                                              ; preds = %162
  %183 = load ptr, ptr %115, align 4
  br label %162

184:                                              ; preds = %162, %157
  %185 = getelementptr inbounds %struct.hid_field, ptr %107, i32 0, i32 4
  store i32 %94, ptr %185, align 16
  %186 = getelementptr inbounds %struct.hid_field, ptr %107, i32 0, i32 5
  store i32 %2, ptr %186, align 4
  %187 = getelementptr inbounds %struct.hid_field, ptr %107, i32 0, i32 6
  store i32 %76, ptr %187, align 8
  %188 = getelementptr inbounds %struct.hid_field, ptr %107, i32 0, i32 9
  store i32 %1, ptr %188, align 4
  %189 = load i32, ptr %77, align 4
  %190 = getelementptr inbounds %struct.hid_field, ptr %107, i32 0, i32 7
  store i32 %189, ptr %190, align 4
  %191 = load i32, ptr %79, align 4
  %192 = getelementptr inbounds %struct.hid_field, ptr %107, i32 0, i32 8
  store i32 %191, ptr %192, align 32
  %193 = load i32, ptr %60, align 4
  %194 = getelementptr inbounds %struct.hid_field, ptr %107, i32 0, i32 11
  store i32 %193, ptr %194, align 4
  %195 = getelementptr inbounds %struct.hid_global, ptr %0, i32 0, i32 2
  %196 = load i32, ptr %195, align 4
  %197 = getelementptr inbounds %struct.hid_field, ptr %107, i32 0, i32 12
  store i32 %196, ptr %197, align 16
  %198 = getelementptr inbounds %struct.hid_global, ptr %0, i32 0, i32 3
  %199 = load i32, ptr %198, align 4
  %200 = getelementptr inbounds %struct.hid_field, ptr %107, i32 0, i32 13
  store i32 %199, ptr %200, align 4
  %201 = getelementptr inbounds %struct.hid_global, ptr %0, i32 0, i32 4
  %202 = load i32, ptr %201, align 4
  %203 = getelementptr inbounds %struct.hid_field, ptr %107, i32 0, i32 14
  store i32 %202, ptr %203, align 8
  %204 = getelementptr inbounds %struct.hid_global, ptr %0, i32 0, i32 5
  %205 = load i32, ptr %204, align 4
  %206 = getelementptr inbounds %struct.hid_field, ptr %107, i32 0, i32 15
  store i32 %205, ptr %206, align 4
  %207 = getelementptr inbounds %struct.hid_global, ptr %0, i32 0, i32 6
  %208 = load i32, ptr %207, align 4
  %209 = getelementptr inbounds %struct.hid_field, ptr %107, i32 0, i32 16
  store i32 %208, ptr %209, align 64
  br label %210

210:                                              ; preds = %184, %102, %98, %87, %84, %72, %69, %55
  %211 = phi i32 [ -1, %84 ], [ 0, %184 ], [ -1, %55 ], [ -1, %72 ], [ -1, %69 ], [ 0, %87 ], [ 0, %98 ], [ 0, %102 ]
  ret i32 %211
}

; Function Attrs: null_pointer_is_valid allocsize(1)
declare dso_local noalias ptr @krealloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #14

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #15

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.thread.pointer() #16

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #17

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @hid_process_event(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef %4) unnamed_addr #0 {
  %6 = getelementptr inbounds %struct.hid_device, ptr %0, i32 0, i32 19
  %7 = load ptr, ptr %6, align 8
  %8 = getelementptr inbounds %struct.hid_device, ptr %0, i32 0, i32 43
  %9 = load volatile ptr, ptr %8, align 4
  %10 = icmp eq ptr %9, %8
  br i1 %10, label %12, label %11

11:                                               ; preds = %5
  tail call void @hid_dump_input(ptr noundef %0, ptr noundef %2, i32 noundef %3) #22
  br label %12

12:                                               ; preds = %11, %5
  %13 = icmp eq ptr %7, null
  br i1 %13, label %65, label %14

14:                                               ; preds = %12
  %15 = getelementptr inbounds %struct.hid_driver, ptr %7, i32 0, i32 10
  %16 = load ptr, ptr %15, align 4
  %17 = icmp eq ptr %16, null
  br i1 %17, label %65, label %18

18:                                               ; preds = %14
  %19 = load ptr, ptr %6, align 8
  %20 = getelementptr inbounds %struct.hid_driver, ptr %19, i32 0, i32 9
  %21 = load ptr, ptr %20, align 4
  %22 = icmp eq ptr %21, null
  br i1 %22, label %57, label %23

23:                                               ; preds = %18
  %24 = getelementptr inbounds %struct.hid_usage, ptr %2, i32 0, i32 5
  %25 = getelementptr inbounds %struct.hid_usage_id, ptr %21, i32 0, i32 1
  %26 = load i32, ptr %25, align 4
  %27 = icmp eq i32 %26, -2
  br i1 %27, label %65, label %28

28:                                               ; preds = %23
  %29 = getelementptr inbounds %struct.hid_usage, ptr %2, i32 0, i32 6
  br label %30

30:                                               ; preds = %52, %28
  %31 = phi i32 [ %26, %28 ], [ %55, %52 ]
  %32 = phi ptr [ %21, %28 ], [ %53, %52 ]
  %33 = load i32, ptr %32, align 4
  %34 = icmp eq i32 %33, -1
  br i1 %34, label %38, label %35

35:                                               ; preds = %30
  %36 = load i32, ptr %2, align 4
  %37 = icmp eq i32 %33, %36
  br i1 %37, label %38, label %52

38:                                               ; preds = %35, %30
  %39 = icmp eq i32 %31, -1
  br i1 %39, label %44, label %40

40:                                               ; preds = %38
  %41 = load i8, ptr %29, align 4
  %42 = zext i8 %41 to i32
  %43 = icmp eq i32 %31, %42
  br i1 %43, label %44, label %52

44:                                               ; preds = %40, %38
  %45 = getelementptr inbounds %struct.hid_usage_id, ptr %32, i32 0, i32 2
  %46 = load i32, ptr %45, align 4
  %47 = icmp eq i32 %46, -1
  br i1 %47, label %57, label %48

48:                                               ; preds = %44
  %49 = load i16, ptr %24, align 2
  %50 = zext i16 %49 to i32
  %51 = icmp eq i32 %46, %50
  br i1 %51, label %57, label %52

52:                                               ; preds = %48, %40, %35
  %53 = getelementptr %struct.hid_usage_id, ptr %32, i32 1
  %54 = getelementptr %struct.hid_usage_id, ptr %32, i32 1, i32 1
  %55 = load i32, ptr %54, align 4
  %56 = icmp eq i32 %55, -2
  br i1 %56, label %65, label %30

57:                                               ; preds = %48, %44, %18
  %58 = tail call i32 %16(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3) #22
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %65, label %60

60:                                               ; preds = %57
  %61 = icmp slt i32 %58, 0
  br i1 %61, label %62, label %83

62:                                               ; preds = %60
  %63 = getelementptr inbounds %struct.hid_device, ptr %0, i32 0, i32 18
  %64 = load ptr, ptr %7, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %63, ptr noundef nonnull @.str.74, ptr noundef %64, i32 noundef %58) #23
  br label %83

65:                                               ; preds = %57, %52, %23, %14, %12
  %66 = getelementptr inbounds %struct.hid_device, ptr %0, i32 0, i32 24
  %67 = load i32, ptr %66, align 4
  %68 = and i32 %67, 1
  %69 = icmp eq i32 %68, 0
  br i1 %69, label %72, label %70

70:                                               ; preds = %65
  tail call void @hidinput_hid_event(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3) #22
  %71 = load i32, ptr %66, align 4
  br label %72

72:                                               ; preds = %70, %65
  %73 = phi i32 [ %71, %70 ], [ %67, %65 ]
  %74 = and i32 %73, 2
  %75 = icmp ne i32 %74, 0
  %76 = icmp ne i32 %4, 0
  %77 = and i1 %76, %75
  br i1 %77, label %78, label %83

78:                                               ; preds = %72
  %79 = getelementptr inbounds %struct.hid_device, ptr %0, i32 0, i32 37
  %80 = load ptr, ptr %79, align 8
  %81 = icmp eq ptr %80, null
  br i1 %81, label %83, label %82

82:                                               ; preds = %78
  tail call void %80(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3) #22
  br label %83

83:                                               ; preds = %82, %78, %72, %62, %60
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @hidinput_hid_event(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @show_country(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr nocapture noundef writeonly %2) #18 {
  %4 = getelementptr i8, ptr %0, i32 -3148
  %5 = load i32, ptr %4, align 4
  %6 = and i32 %5, 255
  %7 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %2, ptr noundef nonnull @.str.76, i32 noundef %6)
  ret i32 %7
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @modalias_show(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr noundef %2) #0 {
  %4 = getelementptr i8, ptr %0, i32 -3168
  %5 = load i16, ptr %4, align 8
  %6 = zext i16 %5 to i32
  %7 = getelementptr i8, ptr %0, i32 -3166
  %8 = load i16, ptr %7, align 2
  %9 = zext i16 %8 to i32
  %10 = getelementptr i8, ptr %0, i32 -3164
  %11 = load i32, ptr %10, align 4
  %12 = getelementptr i8, ptr %0, i32 -3160
  %13 = load i32, ptr %12, align 8
  %14 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %2, i32 noundef 4096, ptr noundef nonnull @.str.78, i32 noundef %6, i32 noundef %9, i32 noundef %11, i32 noundef %13) #22
  ret i32 %14
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @scnprintf(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal i32 @read_report_descriptor(ptr nocapture noundef readnone %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readnone %2, ptr nocapture noundef writeonly %3, i64 noundef %4, i32 noundef %5) #19 {
  %7 = getelementptr i8, ptr %1, i32 -3188
  %8 = load i32, ptr %7, align 4
  %9 = zext i32 %8 to i64
  %10 = icmp sgt i64 %9, %4
  br i1 %10, label %11, label %21

11:                                               ; preds = %6
  %12 = zext i32 %5 to i64
  %13 = add i64 %12, %4
  %14 = icmp sgt i64 %13, %9
  %15 = trunc i64 %4 to i32
  %16 = sub i32 %8, %15
  %17 = select i1 %14, i32 %16, i32 %5
  %18 = getelementptr i8, ptr %1, i32 -3192
  %19 = load ptr, ptr %18, align 8
  %20 = getelementptr i8, ptr %19, i32 %15
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 1 %3, ptr align 1 %20, i32 %17, i1 false)
  br label %21

21:                                               ; preds = %11, %6
  %22 = phi i32 [ %17, %11 ], [ 0, %6 ]
  ret i32 %22
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @new_id_store(ptr noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #22
  store i32 0, ptr %4, align 4, !annotation !10
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #22
  store i32 0, ptr %5, align 4, !annotation !10
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #22
  store i32 0, ptr %6, align 4, !annotation !10
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #22
  store i32 0, ptr %7, align 4
  %8 = call i32 (ptr, ptr, ...) @sscanf(ptr noundef %1, ptr noundef nonnull @.str.81, ptr noundef nonnull %4, ptr noundef nonnull %5, ptr noundef nonnull %6, ptr noundef nonnull %7)
  %9 = icmp slt i32 %8, 3
  br i1 %9, label %35, label %10

10:                                               ; preds = %3
  %11 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %12 = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %11, i32 noundef 3520, i32 noundef 24) #21
  %13 = icmp eq ptr %12, null
  br i1 %13, label %35, label %14

14:                                               ; preds = %10
  %15 = load i32, ptr %4, align 4
  %16 = trunc i32 %15 to i16
  %17 = getelementptr inbounds %struct.hid_dynid, ptr %12, i32 0, i32 1
  store i16 %16, ptr %17, align 8
  %18 = getelementptr inbounds %struct.hid_dynid, ptr %12, i32 0, i32 1, i32 1
  store i16 0, ptr %18, align 2
  %19 = load i32, ptr %5, align 4
  %20 = getelementptr inbounds %struct.hid_dynid, ptr %12, i32 0, i32 1, i32 2
  store i32 %19, ptr %20, align 4
  %21 = load i32, ptr %6, align 4
  %22 = getelementptr inbounds %struct.hid_dynid, ptr %12, i32 0, i32 1, i32 3
  store i32 %21, ptr %22, align 8
  %23 = load i32, ptr %7, align 4
  %24 = getelementptr inbounds %struct.hid_dynid, ptr %12, i32 0, i32 1, i32 4
  store i32 %23, ptr %24, align 4
  %25 = getelementptr i8, ptr %0, i32 -68
  call void @_raw_spin_lock(ptr noundef %25) #22
  %26 = getelementptr i8, ptr %0, i32 -76
  %27 = getelementptr i8, ptr %0, i32 -72
  %28 = load ptr, ptr %27, align 4
  store ptr %12, ptr %27, align 4
  store ptr %26, ptr %12, align 8
  %29 = getelementptr inbounds %struct.list_head, ptr %12, i32 0, i32 1
  store ptr %28, ptr %29, align 4
  store volatile ptr %12, ptr %28, align 4
  call void asm sideeffect "dmb ish", "~{memory}"() #22, !srcloc !14
  %30 = load i16, ptr %25, align 4
  %31 = add i16 %30, 1
  store i16 %31, ptr %25, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #22, !srcloc !15
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #22, !srcloc !16
  call void asm sideeffect "", "~{memory}"() #22, !srcloc !17
  %32 = call i32 @driver_attach(ptr noundef %0) #22
  %33 = icmp eq i32 %32, 0
  %34 = select i1 %33, i32 %2, i32 %32
  br label %35

35:                                               ; preds = %14, %10, %3
  %36 = phi i32 [ %34, %14 ], [ -22, %3 ], [ -12, %10 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #22
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #22
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #22
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #22
  ret i32 %36
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sscanf(ptr nocapture noundef readonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #9

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @driver_attach(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @add_uevent_var(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @down_interruptible(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @down(ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree nosync nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @hid_scan_main(ptr noundef %0, ptr nocapture noundef readonly %1) #20 {
  %3 = getelementptr inbounds %struct.hid_parser, ptr %0, i32 0, i32 3
  %4 = getelementptr inbounds %struct.hid_parser, ptr %0, i32 0, i32 3, i32 3
  %5 = load i32, ptr %4, align 4
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %29, label %7

7:                                                ; preds = %2
  %8 = load i32, ptr %0, align 4
  %9 = add i32 %5, -1
  %10 = icmp sgt i32 %9, -1
  br i1 %10, label %11, label %29

11:                                               ; preds = %26, %7
  %12 = phi i32 [ %27, %26 ], [ %9, %7 ]
  %13 = getelementptr %struct.hid_parser, ptr %0, i32 0, i32 3, i32 1, i32 %12
  %14 = load i8, ptr %13, align 1
  %15 = icmp ugt i8 %14, 2
  br i1 %15, label %26, label %16

16:                                               ; preds = %11
  %17 = getelementptr [12288 x i32], ptr %3, i32 0, i32 %12
  %18 = load i32, ptr %17, align 4
  %19 = lshr i32 %18, 16
  %20 = icmp eq i32 %19, %8
  br i1 %20, label %29, label %21

21:                                               ; preds = %16
  %22 = and i32 %18, 65535
  store i32 %22, ptr %17, align 4
  %23 = load i32, ptr %0, align 4
  %24 = shl i32 %23, 16
  %25 = or i32 %24, %22
  store i32 %25, ptr %17, align 4
  br label %26

26:                                               ; preds = %21, %11
  %27 = add i32 %12, -1
  %28 = icmp sgt i32 %27, -1
  br i1 %28, label %11, label %29

29:                                               ; preds = %26, %16, %7, %2
  %30 = getelementptr inbounds %struct.hid_item, ptr %1, i32 0, i32 1
  %31 = load i8, ptr %30, align 4
  switch i8 %31, label %43 [
    i8 1, label %32
    i8 2, label %36
    i8 4, label %40
  ]

32:                                               ; preds = %29
  %33 = getelementptr inbounds %struct.hid_item, ptr %1, i32 0, i32 4
  %34 = load i8, ptr %33, align 4
  %35 = zext i8 %34 to i32
  br label %43

36:                                               ; preds = %29
  %37 = getelementptr inbounds %struct.hid_item, ptr %1, i32 0, i32 4
  %38 = load i16, ptr %37, align 4
  %39 = zext i16 %38 to i32
  br label %43

40:                                               ; preds = %29
  %41 = getelementptr inbounds %struct.hid_item, ptr %1, i32 0, i32 4
  %42 = load i32, ptr %41, align 4
  br label %43

43:                                               ; preds = %40, %36, %32, %29
  %44 = phi i32 [ %42, %40 ], [ %39, %36 ], [ %35, %32 ], [ 0, %29 ]
  %45 = getelementptr inbounds %struct.hid_item, ptr %1, i32 0, i32 3
  %46 = load i8, ptr %45, align 2
  switch i8 %46, label %168 [
    i8 10, label %54
    i8 11, label %47
    i8 8, label %124
  ]

47:                                               ; preds = %43
  %48 = load i32, ptr %4, align 4
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %168, label %50

50:                                               ; preds = %47
  %51 = getelementptr inbounds %struct.hid_global, ptr %0, i32 0, i32 9
  %52 = getelementptr inbounds %struct.hid_global, ptr %0, i32 0, i32 8
  %53 = getelementptr inbounds %struct.hid_parser, ptr %0, i32 0, i32 8
  br label %146

54:                                               ; preds = %43
  %55 = and i32 %44, 255
  %56 = getelementptr inbounds %struct.hid_parser, ptr %0, i32 0, i32 7
  %57 = load ptr, ptr %56, align 4
  %58 = load i32, ptr %0, align 4
  %59 = and i32 %58, 65535
  %60 = icmp eq i32 %59, 32
  %61 = icmp eq i32 %55, 0
  %62 = and i1 %61, %60
  br i1 %62, label %63, label %65

63:                                               ; preds = %54
  %64 = getelementptr inbounds %struct.hid_device, ptr %57, i32 0, i32 9
  store i16 3, ptr %64, align 2
  br label %65

65:                                               ; preds = %63, %54
  %66 = getelementptr inbounds %struct.hid_device, ptr %57, i32 0, i32 10
  %67 = load i32, ptr %66, align 4
  %68 = icmp eq i32 %67, 1118
  br i1 %68, label %69, label %78

69:                                               ; preds = %65
  %70 = getelementptr inbounds %struct.hid_device, ptr %57, i32 0, i32 11
  %71 = load i32, ptr %70, align 8
  %72 = icmp eq i32 %71, 2010
  br i1 %72, label %73, label %78

73:                                               ; preds = %69
  %74 = getelementptr inbounds %struct.hid_device, ptr %57, i32 0, i32 9
  %75 = load i16, ptr %74, align 2
  %76 = icmp eq i16 %75, 2
  br i1 %76, label %77, label %78

77:                                               ; preds = %73
  store i16 1, ptr %74, align 2
  br label %78

78:                                               ; preds = %77, %73, %69, %65
  %79 = load i32, ptr %0, align 4
  %80 = and i32 %79, 65535
  %81 = icmp eq i32 %80, 1
  br i1 %81, label %82, label %98

82:                                               ; preds = %78
  %83 = load i32, ptr %4, align 4
  %84 = icmp eq i32 %83, 0
  br i1 %84, label %98, label %85

85:                                               ; preds = %82
  %86 = getelementptr inbounds %struct.hid_parser, ptr %0, i32 0, i32 8
  br label %87

87:                                               ; preds = %95, %85
  %88 = phi i32 [ 0, %85 ], [ %96, %95 ]
  %89 = getelementptr [12288 x i32], ptr %3, i32 0, i32 %88
  %90 = load i32, ptr %89, align 4
  %91 = icmp eq i32 %90, 65537
  br i1 %91, label %92, label %95

92:                                               ; preds = %87
  %93 = load i32, ptr %86, align 4
  %94 = or i32 %93, 4
  store i32 %94, ptr %86, align 4
  br label %95

95:                                               ; preds = %92, %87
  %96 = add nuw i32 %88, 1
  %97 = icmp eq i32 %96, %83
  br i1 %97, label %98, label %87

98:                                               ; preds = %95, %82, %78
  %99 = shl i32 %79, 16
  %100 = icmp ugt i32 %99, -16777217
  br i1 %100, label %101, label %105

101:                                              ; preds = %98
  %102 = getelementptr inbounds %struct.hid_parser, ptr %0, i32 0, i32 8
  %103 = load i32, ptr %102, align 4
  %104 = or i32 %103, 2
  store i32 %104, ptr %102, align 4
  br label %105

105:                                              ; preds = %101, %98
  %106 = icmp eq i32 %80, 65489
  br i1 %106, label %107, label %168

107:                                              ; preds = %105
  %108 = load i32, ptr %4, align 4
  %109 = icmp eq i32 %108, 0
  br i1 %109, label %168, label %110

110:                                              ; preds = %120, %107
  %111 = phi i32 [ %121, %120 ], [ %108, %107 ]
  %112 = phi i32 [ %122, %120 ], [ 0, %107 ]
  %113 = getelementptr [12288 x i32], ptr %3, i32 0, i32 %112
  %114 = load i32, ptr %113, align 4
  %115 = icmp eq i32 %114, -3080191
  br i1 %115, label %116, label %120

116:                                              ; preds = %110
  %117 = load ptr, ptr %56, align 4
  %118 = getelementptr inbounds %struct.hid_device, ptr %117, i32 0, i32 9
  store i16 261, ptr %118, align 2
  %119 = load i32, ptr %4, align 4
  br label %120

120:                                              ; preds = %116, %110
  %121 = phi i32 [ %111, %110 ], [ %119, %116 ]
  %122 = add nuw i32 %112, 1
  %123 = icmp ult i32 %122, %121
  br i1 %123, label %110, label %168

124:                                              ; preds = %43
  %125 = and i32 %44, 1
  %126 = icmp eq i32 %125, 0
  br i1 %126, label %127, label %168

127:                                              ; preds = %124
  %128 = load i32, ptr %4, align 4
  %129 = icmp eq i32 %128, 0
  br i1 %129, label %168, label %130

130:                                              ; preds = %127
  %131 = getelementptr inbounds %struct.hid_parser, ptr %0, i32 0, i32 7
  br label %132

132:                                              ; preds = %142, %130
  %133 = phi i32 [ %128, %130 ], [ %143, %142 ]
  %134 = phi i32 [ 0, %130 ], [ %144, %142 ]
  %135 = getelementptr [12288 x i32], ptr %3, i32 0, i32 %134
  %136 = load i32, ptr %135, align 4
  %137 = icmp eq i32 %136, 852049
  br i1 %137, label %138, label %142

138:                                              ; preds = %132
  %139 = load ptr, ptr %131, align 4
  %140 = getelementptr inbounds %struct.hid_device, ptr %139, i32 0, i32 9
  store i16 2, ptr %140, align 2
  %141 = load i32, ptr %4, align 4
  br label %142

142:                                              ; preds = %138, %132
  %143 = phi i32 [ %133, %132 ], [ %141, %138 ]
  %144 = add nuw i32 %134, 1
  %145 = icmp ult i32 %144, %143
  br i1 %145, label %132, label %168

146:                                              ; preds = %165, %50
  %147 = phi i32 [ 0, %50 ], [ %166, %165 ]
  %148 = getelementptr [12288 x i32], ptr %3, i32 0, i32 %147
  %149 = load i32, ptr %148, align 4
  switch i32 %149, label %165 [
    i32 -16777019, label %150
    i32 -16777018, label %156
  ]

150:                                              ; preds = %146
  %151 = load i32, ptr %51, align 4
  %152 = icmp eq i32 %151, 256
  br i1 %152, label %153, label %165

153:                                              ; preds = %150
  %154 = load i32, ptr %52, align 4
  %155 = icmp eq i32 %154, 8
  br i1 %155, label %162, label %165

156:                                              ; preds = %146
  %157 = load i32, ptr %51, align 4
  %158 = icmp eq i32 %157, 1
  br i1 %158, label %159, label %165

159:                                              ; preds = %156
  %160 = load i32, ptr %52, align 4
  %161 = icmp eq i32 %160, 8
  br i1 %161, label %162, label %165

162:                                              ; preds = %159, %153
  %163 = load i32, ptr %53, align 4
  %164 = or i32 %163, 1
  store i32 %164, ptr %53, align 4
  br label %165

165:                                              ; preds = %162, %159, %156, %153, %150, %146
  %166 = add nuw i32 %147, 1
  %167 = icmp eq i32 %166, %48
  br i1 %167, label %168, label %146

168:                                              ; preds = %165, %142, %127, %124, %120, %107, %105, %47, %43
  tail call void @llvm.memset.p0.i32(ptr noundef align 4 dereferenceable(110608) %3, i8 0, i32 110608, i1 false)
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @device_del(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bus_for_each_dev(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @__hid_bus_reprobe_drivers(ptr noundef %0, ptr noundef readonly %1) #0 {
  %3 = getelementptr i8, ptr %0, i32 472
  %4 = load ptr, ptr %3, align 8
  %5 = icmp eq ptr %4, %1
  br i1 %5, label %6, label %19

6:                                                ; preds = %2
  %7 = getelementptr i8, ptr %0, i32 -3200
  %8 = getelementptr inbounds %struct.hid_driver, ptr %1, i32 0, i32 4
  %9 = load ptr, ptr %8, align 4
  %10 = load i32, ptr @hid_ignore_special_drivers, align 4
  %11 = icmp ne i32 %10, 0
  %12 = tail call zeroext i1 %9(ptr noundef %7, i1 noundef zeroext %11) #22
  br i1 %12, label %19, label %13

13:                                               ; preds = %6
  %14 = getelementptr i8, ptr %0, i32 504
  %15 = tail call i32 @_test_and_set_bit(i32 noundef 4, ptr noundef %14) #22
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %13
  %18 = tail call i32 @device_reprobe(ptr noundef %0) #22
  br label %19

19:                                               ; preds = %17, %13, %6, %2
  %20 = phi i32 [ %18, %17 ], [ 0, %13 ], [ 0, %6 ], [ 0, %2 ]
  ret i32 %20
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_reprobe(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bus_rescan_devices(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bus_register(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @hid_debug_init() local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #15

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #15

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #4

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { argmemonly nofree nounwind willreturn writeonly }
attributes #5 = { null_pointer_is_valid allocsize(0) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { nofree nounwind null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #11 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #12 = { argmemonly nofree nounwind willreturn }
attributes #13 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #14 = { null_pointer_is_valid allocsize(1) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #15 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #16 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #17 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #18 = { nofree nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #19 = { mustprogress nofree nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #20 = { nofree nosync nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #21 = { nounwind allocsize(2) }
attributes #22 = { nounwind }
attributes #23 = { cold nounwind }
attributes #24 = { nounwind allocsize(0) }
attributes #25 = { nounwind allocsize(1) }

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
!10 = !{!"auto-init"}
!11 = distinct !{!11, !12}
!12 = !{!"llvm.loop.peeled.count", i32 1}
!13 = distinct !{!13, !12}
!14 = !{i64 2148992645}
!15 = !{i64 2148988469}
!16 = !{i64 2148988544, i64 2148988571, i64 2148988618, i64 2148988640, i64 2148988668, i64 2148988688}
!17 = !{i64 2149015648}
!18 = !{i8 0, i8 2}
!19 = !{i64 2148207352}
!20 = !{i64 608120, i64 2148098091, i64 2148098117, i64 2148098164, i64 2148098186, i64 2148098214, i64 2148098234}
!21 = !{i64 2148110190, i64 2148110222, i64 2148110251, i64 2148110285, i64 2148110316, i64 2148110339}
!22 = !{i64 2148207555}
