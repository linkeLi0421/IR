; ModuleID = '/llk/IR/drivers/fsi/fsi-core.c_pt.bc'
source_filename = "../drivers/fsi/fsi-core.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_fsi_device_read:\09\09\09\09\09"
module asm "\09.asciz \09\22fsi_device_read\22\09\09\09\09\09"
module asm "__kstrtabns_fsi_device_read:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_fsi_device_write:\09\09\09\09\09"
module asm "\09.asciz \09\22fsi_device_write\22\09\09\09\09\09"
module asm "__kstrtabns_fsi_device_write:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_fsi_slave_read:\09\09\09\09\09"
module asm "\09.asciz \09\22fsi_slave_read\22\09\09\09\09\09"
module asm "__kstrtabns_fsi_slave_read:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_fsi_slave_write:\09\09\09\09\09"
module asm "\09.asciz \09\22fsi_slave_write\22\09\09\09\09\09"
module asm "__kstrtabns_fsi_slave_write:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_fsi_slave_claim_range:\09\09\09\09\09"
module asm "\09.asciz \09\22fsi_slave_claim_range\22\09\09\09\09\09"
module asm "__kstrtabns_fsi_slave_claim_range:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_fsi_slave_release_range:\09\09\09\09\09"
module asm "\09.asciz \09\22fsi_slave_release_range\22\09\09\09\09\09"
module asm "__kstrtabns_fsi_slave_release_range:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_fsi_cdev_type:\09\09\09\09\09"
module asm "\09.asciz \09\22fsi_cdev_type\22\09\09\09\09\09"
module asm "__kstrtabns_fsi_cdev_type:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_fsi_get_new_minor:\09\09\09\09\09"
module asm "\09.asciz \09\22fsi_get_new_minor\22\09\09\09\09\09"
module asm "__kstrtabns_fsi_get_new_minor:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_fsi_free_minor:\09\09\09\09\09"
module asm "\09.asciz \09\22fsi_free_minor\22\09\09\09\09\09"
module asm "__kstrtabns_fsi_free_minor:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_fsi_master_rescan:\09\09\09\09\09"
module asm "\09.asciz \09\22fsi_master_rescan\22\09\09\09\09\09"
module asm "__kstrtabns_fsi_master_rescan:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_fsi_master_register:\09\09\09\09\09"
module asm "\09.asciz \09\22fsi_master_register\22\09\09\09\09\09"
module asm "__kstrtabns_fsi_master_register:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_fsi_master_unregister:\09\09\09\09\09"
module asm "\09.asciz \09\22fsi_master_unregister\22\09\09\09\09\09"
module asm "__kstrtabns_fsi_master_unregister:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_fsi_driver_register:\09\09\09\09\09"
module asm "\09.asciz \09\22fsi_driver_register\22\09\09\09\09\09"
module asm "__kstrtabns_fsi_driver_register:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_fsi_driver_unregister:\09\09\09\09\09"
module asm "\09.asciz \09\22fsi_driver_unregister\22\09\09\09\09\09"
module asm "__kstrtabns_fsi_driver_unregister:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_fsi_bus_type:\09\09\09\09\09"
module asm "\09.asciz \09\22fsi_bus_type\22\09\09\09\09\09"
module asm "__kstrtabns_fsi_bus_type:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.static_call_key = type { ptr }
%struct.tracepoint = type { ptr, %struct.static_key, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.static_key = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.trace_event_fields = type { ptr, %union.anon.89 }
%union.anon.89 = type { %struct.anon.90 }
%struct.anon.90 = type { ptr, i32, i32, i32, i32 }
%struct.trace_event_class = type { ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr }
%struct.list_head = type { ptr, ptr }
%struct.trace_event_functions = type { ptr, ptr, ptr, ptr }
%struct.trace_event_call = type { %struct.list_head, ptr, %union.anon.91, %struct.trace_event, ptr, ptr, %union.anon.92, ptr, i32, i32, ptr, ptr, ptr }
%union.anon.91 = type { ptr }
%struct.trace_event = type { %struct.hlist_node, %struct.list_head, i32, ptr }
%struct.hlist_node = type { ptr, ptr }
%union.anon.92 = type { ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.device_type = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.ida = type { %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.lock_class_key = type {}
%struct.class = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.bus_type = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.lock_class_key, i8 }
%struct.module = type { i32, %struct.list_head, [60 x i8], %struct.module_kobject, ptr, ptr, ptr, ptr, ptr, ptr, i32, %struct.mutex, ptr, i32, i32, ptr, ptr, i8, i8, i32, ptr, ptr, [48 x i8], %struct.module_layout, %struct.module_layout, %struct.mod_arch_specific, i32, i32, %struct.list_head, ptr, ptr, %struct.mod_kallsyms, ptr, ptr, ptr, ptr, i32, ptr, i32, i32, ptr, i32, ptr, i32, ptr, ptr, i32, ptr, i32, %struct.list_head, %struct.list_head, ptr, %struct.atomic_t, [40 x i8] }
%struct.module_kobject = type { %struct.kobject, ptr, ptr, ptr, ptr }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.module_layout = type { ptr, i32, i32, i32, i32, %struct.mod_tree_node }
%struct.mod_tree_node = type { ptr, %struct.latch_tree_node }
%struct.latch_tree_node = type { [2 x %struct.rb_node] }
%struct.rb_node = type { i32, ptr, ptr }
%struct.mod_arch_specific = type { [7 x ptr], %struct.mod_plt_sec, %struct.mod_plt_sec }
%struct.mod_plt_sec = type { ptr, ptr, i32 }
%struct.mod_kallsyms = type { ptr, i32, ptr, ptr }
%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.57 }
%union.anon.57 = type { ptr }
%struct.cpumask = type { [1 x i32] }
%struct.file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.bin_attribute = type { %struct.attribute, i32, ptr, ptr, ptr, ptr, ptr }
%struct.attribute = type { ptr, i16 }
%struct.attribute_group = type { ptr, ptr, ptr, ptr, ptr }
%struct.device_attribute = type { %struct.attribute, ptr, ptr }
%struct.tracepoint_func = type { ptr, ptr, i32 }
%struct.trace_event_buffer = type { ptr, ptr, ptr, ptr, i32, ptr }
%struct.trace_event_file = type { %struct.list_head, ptr, ptr, ptr, ptr, ptr, %struct.list_head, i32, %struct.atomic_t, %struct.atomic_t }
%struct.fsi_master = type { %struct.device, i32, i32, i32, %struct.mutex, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.trace_event_raw_fsi_master_read = type { %struct.trace_entry, i32, i32, i32, i32, i32, [0 x i8] }
%struct.trace_entry = type { i16, i8, i8, i32 }
%struct.trace_event_raw_fsi_master_write = type { %struct.trace_entry, i32, i32, i32, i32, i32, i32, [0 x i8] }
%struct.trace_event_raw_fsi_master_rw_result = type { %struct.trace_entry, i32, i32, i32, i32, i32, i8, i32, i32, [0 x i8] }
%struct.trace_event_raw_fsi_master_break = type { %struct.trace_entry, i32, i32, [0 x i8] }
%struct.fsi_device = type { %struct.device, i8, i8, i8, ptr, i32, i32 }
%struct.fsi_slave = type { %struct.device, ptr, %struct.cdev, i32, i32, i32, i32, i32, i32, i8, i8 }
%struct.cdev = type { %struct.kobject, ptr, ptr, %struct.list_head, i32, i32 }
%struct.thread_info = type { i32, i32, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], [4 x i8], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.device_node = type { ptr, i32, ptr, %struct.fwnode_handle, ptr, ptr, ptr, ptr, ptr, %struct.kobject, i32, ptr }
%struct.fwnode_handle = type { ptr, ptr, ptr, %struct.list_head, %struct.list_head, i8 }
%struct.fsi_driver = type { %struct.device_driver, ptr }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.fsi_device_id = type { i8, i8 }
%struct.trace_iterator = type { ptr, ptr, ptr, ptr, i32, %struct.mutex, ptr, i32, ptr, i32, ptr, i32, %struct.trace_seq, [1 x %struct.cpumask], i8, %struct.trace_seq, ptr, i32, i32, i32, i32, i64, i64, i32 }
%struct.trace_seq = type { [4096 x i8], %struct.seq_buf, i32 }
%struct.seq_buf = type { ptr, i32, i32, i64 }
%struct.file = type { %union.anon.11, %struct.path, ptr, ptr, %struct.spinlock, i32, %struct.atomic_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, ptr, %struct.file_ra_state, i64, ptr, ptr, ptr, i32, i32 }
%union.anon.11 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.path = type { ptr, ptr }
%struct.fown_struct = type { %struct.rwlock_t, ptr, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.rwlock_t = type { %struct.arch_rwlock_t }
%struct.arch_rwlock_t = type { i32 }
%struct.kuid_t = type { i32 }
%struct.file_ra_state = type { i32, i32, i32, i32, i32, i64 }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.58, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.59, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.60, ptr, %struct.address_space, %struct.list_head, %union.anon.61, i32, i32, ptr, ptr }
%struct.kgid_t = type { i32 }
%union.anon.58 = type { i32 }
%struct.timespec64 = type { i64, i32 }
%struct.seqcount = type { i32 }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head }
%union.anon.59 = type { %struct.callback_head }
%struct.atomic64_t = type { i64 }
%union.anon.60 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%union.anon.61 = type { ptr }

@__tpstrtab_fsi_master_read = internal constant [16 x i8] c"fsi_master_read\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_fsi_master_read = dso_local global %struct.static_call_key { ptr @__traceiter_fsi_master_read }, align 4
@__tracepoint_fsi_master_read = dso_local global %struct.tracepoint { ptr @__tpstrtab_fsi_master_read, %struct.static_key zeroinitializer, ptr @__SCK__tp_func_fsi_master_read, ptr null, ptr @__traceiter_fsi_master_read, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_fsi_master_read = internal constant ptr @__tracepoint_fsi_master_read, section "__tracepoints_ptrs", align 4
@__tpstrtab_fsi_master_write = internal constant [17 x i8] c"fsi_master_write\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_fsi_master_write = dso_local global %struct.static_call_key { ptr @__traceiter_fsi_master_write }, align 4
@__tracepoint_fsi_master_write = dso_local global %struct.tracepoint { ptr @__tpstrtab_fsi_master_write, %struct.static_key zeroinitializer, ptr @__SCK__tp_func_fsi_master_write, ptr null, ptr @__traceiter_fsi_master_write, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_fsi_master_write = internal constant ptr @__tracepoint_fsi_master_write, section "__tracepoints_ptrs", align 4
@__tpstrtab_fsi_master_rw_result = internal constant [21 x i8] c"fsi_master_rw_result\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_fsi_master_rw_result = dso_local global %struct.static_call_key { ptr @__traceiter_fsi_master_rw_result }, align 4
@__tracepoint_fsi_master_rw_result = dso_local global %struct.tracepoint { ptr @__tpstrtab_fsi_master_rw_result, %struct.static_key zeroinitializer, ptr @__SCK__tp_func_fsi_master_rw_result, ptr null, ptr @__traceiter_fsi_master_rw_result, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_fsi_master_rw_result = internal constant ptr @__tracepoint_fsi_master_rw_result, section "__tracepoints_ptrs", align 4
@__tpstrtab_fsi_master_break = internal constant [17 x i8] c"fsi_master_break\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_fsi_master_break = dso_local global %struct.static_call_key { ptr @__traceiter_fsi_master_break }, align 4
@__tracepoint_fsi_master_break = dso_local global %struct.tracepoint { ptr @__tpstrtab_fsi_master_break, %struct.static_key zeroinitializer, ptr @__SCK__tp_func_fsi_master_break, ptr null, ptr @__traceiter_fsi_master_break, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_fsi_master_break = internal constant ptr @__tracepoint_fsi_master_break, section "__tracepoints_ptrs", align 4
@trace_event_fields_fsi_master_read = internal global [6 x %struct.trace_event_fields] [%struct.trace_event_fields { ptr @.str.5, %union.anon.89 { %struct.anon.90 { ptr @.str.6, i32 4, i32 4, i32 1, i32 0 } } }, %struct.trace_event_fields { ptr @.str.5, %union.anon.89 { %struct.anon.90 { ptr @.str.7, i32 4, i32 4, i32 1, i32 0 } } }, %struct.trace_event_fields { ptr @.str.5, %union.anon.89 { %struct.anon.90 { ptr @.str.8, i32 4, i32 4, i32 1, i32 0 } } }, %struct.trace_event_fields { ptr @.str.9, %union.anon.89 { %struct.anon.90 { ptr @.str.10, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.11, %union.anon.89 { %struct.anon.90 { ptr @.str.12, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields zeroinitializer], align 4
@event_class_fsi_master_read = internal global %struct.trace_event_class { ptr @.str.4, ptr @trace_event_raw_event_fsi_master_read, ptr @perf_trace_fsi_master_read, ptr @trace_event_reg, ptr @trace_event_fields_fsi_master_read, ptr null, %struct.list_head { ptr getelementptr (i8, ptr @event_class_fsi_master_read, i64 24), ptr getelementptr (i8, ptr @event_class_fsi_master_read, i64 24) }, ptr @trace_event_raw_init }, section ".ref.data", align 4
@trace_event_type_funcs_fsi_master_read = internal global %struct.trace_event_functions { ptr @trace_raw_output_fsi_master_read, ptr null, ptr null, ptr null }, align 4
@print_fmt_fsi_master_read = internal global [87 x i8] c"\22fsi%d:%02d:%02d %08x[%zu]\22, REC->master_idx, REC->link, REC->id, REC->addr, REC->size\00", align 1
@event_fsi_master_read = internal global %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_fsi_master_read, %union.anon.91 { ptr @__tracepoint_fsi_master_read }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_fsi_master_read }, ptr @print_fmt_fsi_master_read, ptr null, %union.anon.92 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, align 4
@__event_fsi_master_read = internal global ptr @event_fsi_master_read, section "_ftrace_events", align 4
@trace_event_fields_fsi_master_write = internal global [7 x %struct.trace_event_fields] [%struct.trace_event_fields { ptr @.str.5, %union.anon.89 { %struct.anon.90 { ptr @.str.6, i32 4, i32 4, i32 1, i32 0 } } }, %struct.trace_event_fields { ptr @.str.5, %union.anon.89 { %struct.anon.90 { ptr @.str.7, i32 4, i32 4, i32 1, i32 0 } } }, %struct.trace_event_fields { ptr @.str.5, %union.anon.89 { %struct.anon.90 { ptr @.str.8, i32 4, i32 4, i32 1, i32 0 } } }, %struct.trace_event_fields { ptr @.str.9, %union.anon.89 { %struct.anon.90 { ptr @.str.10, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.11, %union.anon.89 { %struct.anon.90 { ptr @.str.12, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.9, %union.anon.89 { %struct.anon.90 { ptr @.str.14, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields zeroinitializer], align 4
@event_class_fsi_master_write = internal global %struct.trace_event_class { ptr @.str.4, ptr @trace_event_raw_event_fsi_master_write, ptr @perf_trace_fsi_master_write, ptr @trace_event_reg, ptr @trace_event_fields_fsi_master_write, ptr null, %struct.list_head { ptr getelementptr (i8, ptr @event_class_fsi_master_write, i64 24), ptr getelementptr (i8, ptr @event_class_fsi_master_write, i64 24) }, ptr @trace_event_raw_init }, section ".ref.data", align 4
@trace_event_type_funcs_fsi_master_write = internal global %struct.trace_event_functions { ptr @trace_raw_output_fsi_master_write, ptr null, ptr null, ptr null }, align 4
@print_fmt_fsi_master_write = internal global [125 x i8] c"\22fsi%d:%02d:%02d %08x[%zu] <= {%*ph}\22, REC->master_idx, REC->link, REC->id, REC->addr, REC->size, (int)REC->size, &REC->data\00", align 1
@event_fsi_master_write = internal global %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_fsi_master_write, %union.anon.91 { ptr @__tracepoint_fsi_master_write }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_fsi_master_write }, ptr @print_fmt_fsi_master_write, ptr null, %union.anon.92 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, align 4
@__event_fsi_master_write = internal global ptr @event_fsi_master_write, section "_ftrace_events", align 4
@trace_event_fields_fsi_master_rw_result = internal global [9 x %struct.trace_event_fields] [%struct.trace_event_fields { ptr @.str.5, %union.anon.89 { %struct.anon.90 { ptr @.str.6, i32 4, i32 4, i32 1, i32 0 } } }, %struct.trace_event_fields { ptr @.str.5, %union.anon.89 { %struct.anon.90 { ptr @.str.7, i32 4, i32 4, i32 1, i32 0 } } }, %struct.trace_event_fields { ptr @.str.5, %union.anon.89 { %struct.anon.90 { ptr @.str.8, i32 4, i32 4, i32 1, i32 0 } } }, %struct.trace_event_fields { ptr @.str.9, %union.anon.89 { %struct.anon.90 { ptr @.str.10, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.11, %union.anon.89 { %struct.anon.90 { ptr @.str.12, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.16, %union.anon.89 { %struct.anon.90 { ptr @.str.17, i32 1, i32 1, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.9, %union.anon.89 { %struct.anon.90 { ptr @.str.14, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.5, %union.anon.89 { %struct.anon.90 { ptr @.str.18, i32 4, i32 4, i32 1, i32 0 } } }, %struct.trace_event_fields zeroinitializer], align 4
@event_class_fsi_master_rw_result = internal global %struct.trace_event_class { ptr @.str.4, ptr @trace_event_raw_event_fsi_master_rw_result, ptr @perf_trace_fsi_master_rw_result, ptr @trace_event_reg, ptr @trace_event_fields_fsi_master_rw_result, ptr null, %struct.list_head { ptr getelementptr (i8, ptr @event_class_fsi_master_rw_result, i64 24), ptr getelementptr (i8, ptr @event_class_fsi_master_rw_result, i64 24) }, ptr @trace_event_raw_init }, section ".ref.data", align 4
@trace_event_type_funcs_fsi_master_rw_result = internal global %struct.trace_event_functions { ptr @trace_raw_output_fsi_master_rw_result, ptr null, ptr null, ptr null }, align 4
@print_fmt_fsi_master_rw_result = internal global [168 x i8] c"\22fsi%d:%02d:%02d %08x[%zu] %s {%*ph} ret %d\22, REC->master_idx, REC->link, REC->id, REC->addr, REC->size, REC->write ? \22<=\22 : \22=>\22, (int)REC->size, &REC->data, REC->ret\00", align 1
@event_fsi_master_rw_result = internal global %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_fsi_master_rw_result, %union.anon.91 { ptr @__tracepoint_fsi_master_rw_result }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_fsi_master_rw_result }, ptr @print_fmt_fsi_master_rw_result, ptr null, %union.anon.92 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, align 4
@__event_fsi_master_rw_result = internal global ptr @event_fsi_master_rw_result, section "_ftrace_events", align 4
@trace_event_fields_fsi_master_break = internal global [3 x %struct.trace_event_fields] [%struct.trace_event_fields { ptr @.str.5, %union.anon.89 { %struct.anon.90 { ptr @.str.6, i32 4, i32 4, i32 1, i32 0 } } }, %struct.trace_event_fields { ptr @.str.5, %union.anon.89 { %struct.anon.90 { ptr @.str.7, i32 4, i32 4, i32 1, i32 0 } } }, %struct.trace_event_fields zeroinitializer], align 4
@event_class_fsi_master_break = internal global %struct.trace_event_class { ptr @.str.4, ptr @trace_event_raw_event_fsi_master_break, ptr @perf_trace_fsi_master_break, ptr @trace_event_reg, ptr @trace_event_fields_fsi_master_break, ptr null, %struct.list_head { ptr getelementptr (i8, ptr @event_class_fsi_master_break, i64 24), ptr getelementptr (i8, ptr @event_class_fsi_master_break, i64 24) }, ptr @trace_event_raw_init }, section ".ref.data", align 4
@trace_event_type_funcs_fsi_master_break = internal global %struct.trace_event_functions { ptr @trace_raw_output_fsi_master_break, ptr null, ptr null, ptr null }, align 4
@print_fmt_fsi_master_break = internal global [39 x i8] c"\22fsi%d:%d\22, REC->master_idx, REC->link\00", align 1
@event_fsi_master_break = internal global %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_fsi_master_break, %union.anon.91 { ptr @__tracepoint_fsi_master_break }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_fsi_master_break }, ptr @print_fmt_fsi_master_break, ptr null, %union.anon.92 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, align 4
@__event_fsi_master_break = internal global ptr @event_fsi_master_break, section "_ftrace_events", align 4
@__kstrtab_fsi_device_read = external dso_local constant [0 x i8], align 1
@__kstrtabns_fsi_device_read = external dso_local constant [0 x i8], align 1
@__ksymtab_fsi_device_read = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @fsi_device_read to i32), ptr @__kstrtab_fsi_device_read, ptr @__kstrtabns_fsi_device_read }, section "___ksymtab_gpl+fsi_device_read", align 4
@__kstrtab_fsi_device_write = external dso_local constant [0 x i8], align 1
@__kstrtabns_fsi_device_write = external dso_local constant [0 x i8], align 1
@__ksymtab_fsi_device_write = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @fsi_device_write to i32), ptr @__kstrtab_fsi_device_write, ptr @__kstrtabns_fsi_device_write }, section "___ksymtab_gpl+fsi_device_write", align 4
@__kstrtab_fsi_slave_read = external dso_local constant [0 x i8], align 1
@__kstrtabns_fsi_slave_read = external dso_local constant [0 x i8], align 1
@__ksymtab_fsi_slave_read = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @fsi_slave_read to i32), ptr @__kstrtab_fsi_slave_read, ptr @__kstrtabns_fsi_slave_read }, section "___ksymtab_gpl+fsi_slave_read", align 4
@__kstrtab_fsi_slave_write = external dso_local constant [0 x i8], align 1
@__kstrtabns_fsi_slave_write = external dso_local constant [0 x i8], align 1
@__ksymtab_fsi_slave_write = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @fsi_slave_write to i32), ptr @__kstrtab_fsi_slave_write, ptr @__kstrtabns_fsi_slave_write }, section "___ksymtab_gpl+fsi_slave_write", align 4
@__kstrtab_fsi_slave_claim_range = external dso_local constant [0 x i8], align 1
@__kstrtabns_fsi_slave_claim_range = external dso_local constant [0 x i8], align 1
@__ksymtab_fsi_slave_claim_range = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @fsi_slave_claim_range to i32), ptr @__kstrtab_fsi_slave_claim_range, ptr @__kstrtabns_fsi_slave_claim_range }, section "___ksymtab_gpl+fsi_slave_claim_range", align 4
@__kstrtab_fsi_slave_release_range = external dso_local constant [0 x i8], align 1
@__kstrtabns_fsi_slave_release_range = external dso_local constant [0 x i8], align 1
@__ksymtab_fsi_slave_release_range = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @fsi_slave_release_range to i32), ptr @__kstrtab_fsi_slave_release_range, ptr @__kstrtabns_fsi_slave_release_range }, section "___ksymtab_gpl+fsi_slave_release_range", align 4
@.str = private unnamed_addr constant [9 x i8] c"fsi-cdev\00", align 1
@fsi_cdev_type = dso_local constant %struct.device_type { ptr @.str, ptr null, ptr null, ptr @fsi_cdev_devnode, ptr null, ptr null }, align 4
@__kstrtab_fsi_cdev_type = external dso_local constant [0 x i8], align 1
@__kstrtabns_fsi_cdev_type = external dso_local constant [0 x i8], align 1
@__ksymtab_fsi_cdev_type = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @fsi_cdev_type to i32), ptr @__kstrtab_fsi_cdev_type, ptr @__kstrtabns_fsi_cdev_type }, section "___ksymtab_gpl+fsi_cdev_type", align 4
@__kstrtab_fsi_get_new_minor = external dso_local constant [0 x i8], align 1
@__kstrtabns_fsi_get_new_minor = external dso_local constant [0 x i8], align 1
@__ksymtab_fsi_get_new_minor = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @fsi_get_new_minor to i32), ptr @__kstrtab_fsi_get_new_minor, ptr @__kstrtabns_fsi_get_new_minor }, section "___ksymtab_gpl+fsi_get_new_minor", align 4
@fsi_minor_ida = internal global %struct.ida { %struct.xarray { %struct.spinlock zeroinitializer, i32 33554437, ptr null } }, align 4
@__kstrtab_fsi_free_minor = external dso_local constant [0 x i8], align 1
@__kstrtabns_fsi_free_minor = external dso_local constant [0 x i8], align 1
@__ksymtab_fsi_free_minor = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @fsi_free_minor to i32), ptr @__kstrtab_fsi_free_minor, ptr @__kstrtabns_fsi_free_minor }, section "___ksymtab_gpl+fsi_free_minor", align 4
@__kstrtab_fsi_master_rescan = external dso_local constant [0 x i8], align 1
@__kstrtabns_fsi_master_rescan = external dso_local constant [0 x i8], align 1
@__ksymtab_fsi_master_rescan = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @fsi_master_rescan to i32), ptr @__kstrtab_fsi_master_rescan, ptr @__kstrtabns_fsi_master_rescan }, section "___ksymtab_gpl+fsi_master_rescan", align 4
@fsi_master_register.__key = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.1 = private unnamed_addr constant [19 x i8] c"&master->scan_lock\00", align 1
@master_ida = internal global %struct.ida { %struct.xarray { %struct.spinlock zeroinitializer, i32 33554437, ptr null } }, align 4
@.str.2 = private unnamed_addr constant [6 x i8] c"fsi%d\00", align 1
@fsi_master_class = internal global %struct.class { ptr @.str.52, ptr null, ptr null, ptr @master_groups, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@.str.3 = private unnamed_addr constant [16 x i8] c"no-scan-on-init\00", align 1
@__kstrtab_fsi_master_register = external dso_local constant [0 x i8], align 1
@__kstrtabns_fsi_master_register = external dso_local constant [0 x i8], align 1
@__ksymtab_fsi_master_register = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @fsi_master_register to i32), ptr @__kstrtab_fsi_master_register, ptr @__kstrtabns_fsi_master_register }, section "___ksymtab_gpl+fsi_master_register", align 4
@__kstrtab_fsi_master_unregister = external dso_local constant [0 x i8], align 1
@__kstrtabns_fsi_master_unregister = external dso_local constant [0 x i8], align 1
@__ksymtab_fsi_master_unregister = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @fsi_master_unregister to i32), ptr @__kstrtab_fsi_master_unregister, ptr @__kstrtabns_fsi_master_unregister }, section "___ksymtab_gpl+fsi_master_unregister", align 4
@__kstrtab_fsi_driver_register = external dso_local constant [0 x i8], align 1
@__kstrtabns_fsi_driver_register = external dso_local constant [0 x i8], align 1
@__ksymtab_fsi_driver_register = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @fsi_driver_register to i32), ptr @__kstrtab_fsi_driver_register, ptr @__kstrtabns_fsi_driver_register }, section "___ksymtab_gpl+fsi_driver_register", align 4
@__kstrtab_fsi_driver_unregister = external dso_local constant [0 x i8], align 1
@__kstrtabns_fsi_driver_unregister = external dso_local constant [0 x i8], align 1
@__ksymtab_fsi_driver_unregister = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @fsi_driver_unregister to i32), ptr @__kstrtab_fsi_driver_unregister, ptr @__kstrtabns_fsi_driver_unregister }, section "___ksymtab_gpl+fsi_driver_unregister", align 4
@.str.4 = private constant [4 x i8] c"fsi\00", align 1
@fsi_bus_type = dso_local global %struct.bus_type { ptr @.str.4, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @fsi_bus_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.lock_class_key zeroinitializer, i8 0 }, align 4
@__kstrtab_fsi_bus_type = external dso_local constant [0 x i8], align 1
@__kstrtabns_fsi_bus_type = external dso_local constant [0 x i8], align 1
@__ksymtab_fsi_bus_type = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @fsi_bus_type to i32), ptr @__kstrtab_fsi_bus_type, ptr @__kstrtabns_fsi_bus_type }, section "___ksymtab_gpl+fsi_bus_type", align 4
@__param_str_discard_errors = internal constant [15 x i8] c"discard_errors\00", align 1
@__this_module = external dso_local global %struct.module, align 64
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 4
@discard_errors = internal global i32 0, align 4
@__param_discard_errors = internal constant %struct.kernel_param { ptr @__param_str_discard_errors, ptr @__this_module, ptr @param_ops_int, i16 436, i8 -1, i8 0, %union.anon.57 { ptr @discard_errors } }, section "__param", align 4
@__UNIQUE_ID_discard_errorstype263 = internal constant [28 x i8] c"parmtype=discard_errors:int\00", section ".modinfo", align 1
@__UNIQUE_ID_license264 = internal constant [12 x i8] c"license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_discard_errors265 = internal constant [64 x i8] c"parm=discard_errors:Don't invoke error handling on bus accesses\00", section ".modinfo", align 1
@.str.5 = private unnamed_addr constant [4 x i8] c"int\00", align 1
@.str.6 = private unnamed_addr constant [11 x i8] c"master_idx\00", align 1
@.str.7 = private unnamed_addr constant [5 x i8] c"link\00", align 1
@.str.8 = private unnamed_addr constant [3 x i8] c"id\00", align 1
@.str.9 = private unnamed_addr constant [6 x i8] c"__u32\00", align 1
@.str.10 = private unnamed_addr constant [5 x i8] c"addr\00", align 1
@.str.11 = private unnamed_addr constant [7 x i8] c"size_t\00", align 1
@.str.12 = private unnamed_addr constant [5 x i8] c"size\00", align 1
@.str.13 = private unnamed_addr constant [27 x i8] c"fsi%d:%02d:%02d %08x[%zu]\0A\00", align 1
@.str.14 = private unnamed_addr constant [5 x i8] c"data\00", align 1
@.str.15 = private unnamed_addr constant [37 x i8] c"fsi%d:%02d:%02d %08x[%zu] <= {%*ph}\0A\00", align 1
@.str.16 = private unnamed_addr constant [5 x i8] c"bool\00", align 1
@.str.17 = private unnamed_addr constant [6 x i8] c"write\00", align 1
@.str.18 = private unnamed_addr constant [4 x i8] c"ret\00", align 1
@.str.19 = private unnamed_addr constant [44 x i8] c"fsi%d:%02d:%02d %08x[%zu] %s {%*ph} ret %d\0A\00", align 1
@.str.20 = private unnamed_addr constant [3 x i8] c"<=\00", align 1
@.str.21 = private unnamed_addr constant [3 x i8] c"=>\00", align 1
@.str.22 = private unnamed_addr constant [10 x i8] c"fsi%d:%d\0A\00", align 1
@__cpu_online_mask = external dso_local global %struct.cpumask, align 4
@.str.24 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@fsi_base_dev = internal global i32 0, align 4
@.str.25 = private unnamed_addr constant [38 x i8] c"slave %02x:%02x invalid cfam id CRC!\0A\00", align 1
@.str.26 = private unnamed_addr constant [40 x i8] c"can't set llmode on slave:%02x:%02x %d\0A\00", align 1
@.str.27 = private unnamed_addr constant [16 x i8] c"slave@%02x:%02x\00", align 1
@cfam_type = internal constant %struct.device_type { ptr @.str.33, ptr @cfam_attr_groups, ptr null, ptr @cfam_devnode, ptr null, ptr null }, align 4
@.str.28 = private unnamed_addr constant [8 x i8] c"chip-id\00", align 1
@.str.29 = private unnamed_addr constant [39 x i8] c"can't set slbus on slave:%02x:%02x %d\0A\00", align 1
@.str.30 = private unnamed_addr constant [39 x i8] c"can't set smode on slave:%02x:%02x %d\0A\00", align 1
@cfam_fops = internal constant %struct.file_operations { ptr @__this_module, ptr @cfam_llseek, ptr @cfam_read, ptr @cfam_write, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @cfam_open, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@.str.31 = private unnamed_addr constant [32 x i8] c"Error %d creating slave device\0A\00", align 1
@fsi_slave_raw_attr = internal constant %struct.bin_attribute { %struct.attribute { ptr @.str.45, i16 384 }, i32 0, ptr null, ptr null, ptr @fsi_slave_sysfs_raw_read, ptr @fsi_slave_sysfs_raw_write, ptr null }, align 4
@.str.32 = private unnamed_addr constant [31 x i8] c"failed to create raw attr: %d\0A\00", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@.str.33 = private unnamed_addr constant [5 x i8] c"cfam\00", align 1
@cfam_attr_groups = internal global [2 x ptr] [ptr @cfam_attr_group, ptr null], align 4
@cfam_attr_group = internal constant %struct.attribute_group { ptr null, ptr null, ptr null, ptr @cfam_attr, ptr null }, align 4
@cfam_attr = internal global [5 x ptr] [ptr @dev_attr_send_echo_delays, ptr @dev_attr_chip_id, ptr @dev_attr_cfam_id, ptr @dev_attr_send_term, ptr null], align 4
@dev_attr_send_echo_delays = internal global %struct.device_attribute { %struct.attribute { ptr @.str.34, i16 384 }, ptr @slave_send_echo_show, ptr @slave_send_echo_store }, align 4
@dev_attr_chip_id = internal global %struct.device_attribute { %struct.attribute { ptr @.str.36, i16 292 }, ptr @chip_id_show, ptr null }, align 4
@dev_attr_cfam_id = internal global %struct.device_attribute { %struct.attribute { ptr @.str.38, i16 292 }, ptr @cfam_id_show, ptr null }, align 4
@dev_attr_send_term = internal global %struct.device_attribute { %struct.attribute { ptr @.str.40, i16 128 }, ptr null, ptr @send_term_store }, align 4
@.str.34 = private unnamed_addr constant [17 x i8] c"send_echo_delays\00", align 1
@.str.35 = private unnamed_addr constant [4 x i8] c"%u\0A\00", align 1
@.str.36 = private unnamed_addr constant [8 x i8] c"chip_id\00", align 1
@.str.37 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@.str.38 = private unnamed_addr constant [8 x i8] c"cfam_id\00", align 1
@.str.39 = private unnamed_addr constant [6 x i8] c"0x%x\0A\00", align 1
@.str.40 = private unnamed_addr constant [10 x i8] c"send_term\00", align 1
@.str.41 = private unnamed_addr constant [7 x i8] c"cfam%d\00", align 1
@.str.42 = private unnamed_addr constant [4 x i8] c"reg\00", align 1
@.str.43 = private unnamed_addr constant [28 x i8] c"include/linux/thread_info.h\00", align 1
@.str.44 = private unnamed_addr constant [38 x i8] c"Buffer overflow detected (%d < %lu)!\0A\00", align 1
@.str.45 = private unnamed_addr constant [4 x i8] c"raw\00", align 1
@.str.46 = private unnamed_addr constant [31 x i8] c"error reading slave registers\0A\00", align 1
@.str.47 = private unnamed_addr constant [39 x i8] c"crc error in slave register at 0x%04x\0A\00", align 1
@.str.48 = private unnamed_addr constant [20 x i8] c"%02x:%02x:%02x:%02x\00", align 1
@.str.49 = private unnamed_addr constant [16 x i8] c"add failed: %d\0A\00", align 1
@.str.50 = private unnamed_addr constant [71 x i8] c"node %s matches probed address, but not size (got 0x%x, expected 0x%x)\00", align 1
@.str.52 = private unnamed_addr constant [11 x i8] c"fsi-master\00", align 1
@master_groups = internal global [2 x ptr] [ptr @master_group, ptr null], align 4
@master_group = internal constant %struct.attribute_group { ptr null, ptr null, ptr null, ptr @master_attrs, ptr null }, align 4
@master_attrs = internal global [3 x ptr] [ptr @dev_attr_break, ptr @dev_attr_rescan, ptr null], align 4
@dev_attr_break = internal global %struct.device_attribute { %struct.attribute { ptr @.str.53, i16 128 }, ptr null, ptr @master_break_store }, align 4
@dev_attr_rescan = internal global %struct.device_attribute { %struct.attribute { ptr @.str.54, i16 128 }, ptr null, ptr @master_rescan_store }, align 4
@.str.53 = private unnamed_addr constant [6 x i8] c"break\00", align 1
@.str.54 = private unnamed_addr constant [7 x i8] c"rescan\00", align 1
@fsi_init.__key = internal global %struct.lock_class_key zeroinitializer, align 1
@llvm.compiler.used = appending global [39 x ptr] [ptr @__UNIQUE_ID_discard_errors265, ptr @__UNIQUE_ID_discard_errorstype263, ptr @__UNIQUE_ID_license264, ptr @__event_fsi_master_break, ptr @__event_fsi_master_read, ptr @__event_fsi_master_rw_result, ptr @__event_fsi_master_write, ptr @__ksymtab_fsi_bus_type, ptr @__ksymtab_fsi_cdev_type, ptr @__ksymtab_fsi_device_read, ptr @__ksymtab_fsi_device_write, ptr @__ksymtab_fsi_driver_register, ptr @__ksymtab_fsi_driver_unregister, ptr @__ksymtab_fsi_free_minor, ptr @__ksymtab_fsi_get_new_minor, ptr @__ksymtab_fsi_master_register, ptr @__ksymtab_fsi_master_rescan, ptr @__ksymtab_fsi_master_unregister, ptr @__ksymtab_fsi_slave_claim_range, ptr @__ksymtab_fsi_slave_read, ptr @__ksymtab_fsi_slave_release_range, ptr @__ksymtab_fsi_slave_write, ptr @__param_discard_errors, ptr @__tracepoint_fsi_master_break, ptr @__tracepoint_fsi_master_read, ptr @__tracepoint_fsi_master_rw_result, ptr @__tracepoint_fsi_master_write, ptr @__tracepoint_ptr_fsi_master_break, ptr @__tracepoint_ptr_fsi_master_read, ptr @__tracepoint_ptr_fsi_master_rw_result, ptr @__tracepoint_ptr_fsi_master_write, ptr @event_class_fsi_master_break, ptr @event_class_fsi_master_read, ptr @event_class_fsi_master_rw_result, ptr @event_class_fsi_master_write, ptr @event_fsi_master_break, ptr @event_fsi_master_read, ptr @event_fsi_master_rw_result, ptr @event_fsi_master_write], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__traceiter_fsi_master_read(ptr nocapture readnone %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5) #0 {
  %7 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_fsi_master_read, i32 0, i32 7), align 4
  %8 = icmp eq ptr %7, null
  br i1 %8, label %17, label %9

9:                                                ; preds = %9, %6
  %10 = phi ptr [ %14, %9 ], [ %7, %6 ]
  %11 = load volatile ptr, ptr %10, align 4
  %12 = getelementptr inbounds %struct.tracepoint_func, ptr %10, i32 0, i32 1
  %13 = load ptr, ptr %12, align 4
  tail call void %11(ptr noundef %13, ptr noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5) #18
  %14 = getelementptr %struct.tracepoint_func, ptr %10, i32 1
  %15 = load ptr, ptr %14, align 4
  %16 = icmp eq ptr %15, null
  br i1 %16, label %17, label %9

17:                                               ; preds = %9, %6
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__traceiter_fsi_master_write(ptr nocapture readnone %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, ptr noundef %6) #0 {
  %8 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_fsi_master_write, i32 0, i32 7), align 4
  %9 = icmp eq ptr %8, null
  br i1 %9, label %18, label %10

10:                                               ; preds = %10, %7
  %11 = phi ptr [ %15, %10 ], [ %8, %7 ]
  %12 = load volatile ptr, ptr %11, align 4
  %13 = getelementptr inbounds %struct.tracepoint_func, ptr %11, i32 0, i32 1
  %14 = load ptr, ptr %13, align 4
  tail call void %12(ptr noundef %14, ptr noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, ptr noundef %6) #18
  %15 = getelementptr %struct.tracepoint_func, ptr %11, i32 1
  %16 = load ptr, ptr %15, align 4
  %17 = icmp eq ptr %16, null
  br i1 %17, label %18, label %10

18:                                               ; preds = %10, %7
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__traceiter_fsi_master_rw_result(ptr nocapture readnone %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i1 noundef zeroext %6, ptr noundef %7, i32 noundef %8) #0 {
  %10 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_fsi_master_rw_result, i32 0, i32 7), align 4
  %11 = icmp eq ptr %10, null
  br i1 %11, label %20, label %12

12:                                               ; preds = %12, %9
  %13 = phi ptr [ %17, %12 ], [ %10, %9 ]
  %14 = load volatile ptr, ptr %13, align 4
  %15 = getelementptr inbounds %struct.tracepoint_func, ptr %13, i32 0, i32 1
  %16 = load ptr, ptr %15, align 4
  tail call void %14(ptr noundef %16, ptr noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i1 noundef zeroext %6, ptr noundef %7, i32 noundef %8) #18
  %17 = getelementptr %struct.tracepoint_func, ptr %13, i32 1
  %18 = load ptr, ptr %17, align 4
  %19 = icmp eq ptr %18, null
  br i1 %19, label %20, label %12

20:                                               ; preds = %12, %9
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__traceiter_fsi_master_break(ptr nocapture readnone %0, ptr noundef %1, i32 noundef %2) #0 {
  %4 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_fsi_master_break, i32 0, i32 7), align 4
  %5 = icmp eq ptr %4, null
  br i1 %5, label %14, label %6

6:                                                ; preds = %6, %3
  %7 = phi ptr [ %11, %6 ], [ %4, %3 ]
  %8 = load volatile ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.tracepoint_func, ptr %7, i32 0, i32 1
  %10 = load ptr, ptr %9, align 4
  tail call void %8(ptr noundef %10, ptr noundef %1, i32 noundef %2) #18
  %11 = getelementptr %struct.tracepoint_func, ptr %7, i32 1
  %12 = load ptr, ptr %11, align 4
  %13 = icmp eq ptr %12, null
  br i1 %13, label %14, label %6

14:                                               ; preds = %6, %3
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @trace_event_raw_event_fsi_master_read(ptr noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5) #0 {
  %7 = alloca %struct.trace_event_buffer, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %7) #18
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %7, i8 0, i32 24, i1 false), !annotation !9
  %8 = getelementptr inbounds %struct.trace_event_file, ptr %0, i32 0, i32 7
  %9 = load i32, ptr %8, align 4
  %10 = and i32 %9, 704
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %17, label %12, !prof !10

12:                                               ; preds = %6
  %13 = and i32 %9, 256
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %17, !prof !11

15:                                               ; preds = %12
  %16 = tail call zeroext i1 @__trace_trigger_soft_disabled(ptr noundef %0) #18
  br i1 %16, label %28, label %17

17:                                               ; preds = %15, %12, %6
  %18 = call ptr @trace_event_buffer_reserve(ptr noundef nonnull %7, ptr noundef %0, i32 noundef 28) #18
  %19 = icmp eq ptr %18, null
  br i1 %19, label %28, label %20

20:                                               ; preds = %17
  %21 = getelementptr inbounds %struct.fsi_master, ptr %1, i32 0, i32 1
  %22 = load i32, ptr %21, align 8
  %23 = getelementptr inbounds %struct.trace_event_raw_fsi_master_read, ptr %18, i32 0, i32 1
  store i32 %22, ptr %23, align 4
  %24 = getelementptr inbounds %struct.trace_event_raw_fsi_master_read, ptr %18, i32 0, i32 2
  store i32 %2, ptr %24, align 4
  %25 = getelementptr inbounds %struct.trace_event_raw_fsi_master_read, ptr %18, i32 0, i32 3
  store i32 %3, ptr %25, align 4
  %26 = getelementptr inbounds %struct.trace_event_raw_fsi_master_read, ptr %18, i32 0, i32 4
  store i32 %4, ptr %26, align 4
  %27 = getelementptr inbounds %struct.trace_event_raw_fsi_master_read, ptr %18, i32 0, i32 5
  store i32 %5, ptr %27, align 4
  call void @trace_event_buffer_commit(ptr noundef nonnull %7) #18
  br label %28

28:                                               ; preds = %20, %17, %15
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %7) #18
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @perf_trace_fsi_master_read(ptr noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5) #0 {
  %7 = alloca ptr, align 4
  %8 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #18
  store ptr null, ptr %7, align 4, !annotation !9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %8) #18
  store i32 0, ptr %8, align 4, !annotation !9
  %9 = getelementptr inbounds %struct.trace_event_call, ptr %0, i32 0, i32 10
  %10 = load ptr, ptr %9, align 4
  %11 = ptrtoint ptr %10 to i32
  %12 = tail call i32 @llvm.read_register.i32(metadata !0) #18
  %13 = inttoptr i32 %12 to ptr
  %14 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %13) #9, !srcloc !12
  %15 = add i32 %14, %11
  %16 = inttoptr i32 %15 to ptr
  %17 = getelementptr inbounds %struct.trace_event_call, ptr %0, i32 0, i32 11
  %18 = load volatile ptr, ptr %17, align 4
  %19 = icmp eq ptr %18, null
  br i1 %19, label %20, label %23

20:                                               ; preds = %6
  %21 = load volatile ptr, ptr %16, align 4
  %22 = icmp eq ptr %21, null
  br i1 %22, label %46, label %23

23:                                               ; preds = %20, %6
  %24 = call ptr @perf_trace_buf_alloc(i32 noundef 28, ptr noundef nonnull %7, ptr noundef nonnull %8) #18
  %25 = icmp eq ptr %24, null
  br i1 %25, label %46, label %26

26:                                               ; preds = %23
  %27 = load ptr, ptr %7, align 4
  %28 = call ptr @llvm.returnaddress(i32 0) #18
  %29 = ptrtoint ptr %28 to i32
  %30 = getelementptr [18 x i32], ptr %27, i32 0, i32 15
  store i32 %29, ptr %30, align 4
  %31 = call ptr @llvm.frameaddress.p0(i32 0) #18
  %32 = ptrtoint ptr %31 to i32
  %33 = getelementptr [18 x i32], ptr %27, i32 0, i32 11
  store i32 %32, ptr %33, align 4
  %34 = call i32 @llvm.read_register.i32(metadata !0) #18
  %35 = getelementptr [18 x i32], ptr %27, i32 0, i32 13
  store i32 %34, ptr %35, align 4
  %36 = getelementptr [18 x i32], ptr %27, i32 0, i32 16
  store i32 19, ptr %36, align 4
  %37 = getelementptr inbounds %struct.fsi_master, ptr %1, i32 0, i32 1
  %38 = load i32, ptr %37, align 8
  %39 = getelementptr inbounds %struct.trace_event_raw_fsi_master_read, ptr %24, i32 0, i32 1
  store i32 %38, ptr %39, align 4
  %40 = getelementptr inbounds %struct.trace_event_raw_fsi_master_read, ptr %24, i32 0, i32 2
  store i32 %2, ptr %40, align 4
  %41 = getelementptr inbounds %struct.trace_event_raw_fsi_master_read, ptr %24, i32 0, i32 3
  store i32 %3, ptr %41, align 4
  %42 = getelementptr inbounds %struct.trace_event_raw_fsi_master_read, ptr %24, i32 0, i32 4
  store i32 %4, ptr %42, align 4
  %43 = getelementptr inbounds %struct.trace_event_raw_fsi_master_read, ptr %24, i32 0, i32 5
  store i32 %5, ptr %43, align 4
  %44 = load i32, ptr %8, align 4
  %45 = load ptr, ptr %7, align 4
  call void @perf_trace_run_bpf_submit(ptr noundef nonnull %24, i32 noundef 28, i32 noundef %44, ptr noundef %0, i64 noundef 1, ptr noundef %45, ptr noundef %16, ptr noundef null) #18
  br label %46

46:                                               ; preds = %26, %23, %20
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #18
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #18
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @trace_event_reg(ptr noundef, i32 noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @trace_event_raw_init(ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @trace_event_raw_event_fsi_master_write(ptr noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, ptr nocapture noundef readonly %6) #0 {
  %8 = alloca %struct.trace_event_buffer, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %8) #18
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %8, i8 0, i32 24, i1 false), !annotation !9
  %9 = getelementptr inbounds %struct.trace_event_file, ptr %0, i32 0, i32 7
  %10 = load i32, ptr %9, align 4
  %11 = and i32 %10, 704
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %18, label %13, !prof !10

13:                                               ; preds = %7
  %14 = and i32 %10, 256
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %18, !prof !11

16:                                               ; preds = %13
  %17 = tail call zeroext i1 @__trace_trigger_soft_disabled(ptr noundef %0) #18
  br i1 %17, label %30, label %18

18:                                               ; preds = %16, %13, %7
  %19 = call ptr @trace_event_buffer_reserve(ptr noundef nonnull %8, ptr noundef %0, i32 noundef 32) #18
  %20 = icmp eq ptr %19, null
  br i1 %20, label %30, label %21

21:                                               ; preds = %18
  %22 = getelementptr inbounds %struct.fsi_master, ptr %1, i32 0, i32 1
  %23 = load i32, ptr %22, align 8
  %24 = getelementptr inbounds %struct.trace_event_raw_fsi_master_write, ptr %19, i32 0, i32 1
  store i32 %23, ptr %24, align 4
  %25 = getelementptr inbounds %struct.trace_event_raw_fsi_master_write, ptr %19, i32 0, i32 2
  store i32 %2, ptr %25, align 4
  %26 = getelementptr inbounds %struct.trace_event_raw_fsi_master_write, ptr %19, i32 0, i32 3
  store i32 %3, ptr %26, align 4
  %27 = getelementptr inbounds %struct.trace_event_raw_fsi_master_write, ptr %19, i32 0, i32 4
  store i32 %4, ptr %27, align 4
  %28 = getelementptr inbounds %struct.trace_event_raw_fsi_master_write, ptr %19, i32 0, i32 5
  store i32 %5, ptr %28, align 4
  %29 = getelementptr inbounds %struct.trace_event_raw_fsi_master_write, ptr %19, i32 0, i32 6
  store i32 0, ptr %29, align 4
  call void @llvm.memcpy.p0.p0.i32(ptr align 4 %29, ptr align 1 %6, i32 %5, i1 false)
  call void @trace_event_buffer_commit(ptr noundef nonnull %8) #18
  br label %30

30:                                               ; preds = %21, %18, %16
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %8) #18
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @perf_trace_fsi_master_write(ptr noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, ptr nocapture noundef readonly %6) #0 {
  %8 = alloca ptr, align 4
  %9 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %8) #18
  store ptr null, ptr %8, align 4, !annotation !9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %9) #18
  store i32 0, ptr %9, align 4, !annotation !9
  %10 = getelementptr inbounds %struct.trace_event_call, ptr %0, i32 0, i32 10
  %11 = load ptr, ptr %10, align 4
  %12 = ptrtoint ptr %11 to i32
  %13 = tail call i32 @llvm.read_register.i32(metadata !0) #18
  %14 = inttoptr i32 %13 to ptr
  %15 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %14) #9, !srcloc !12
  %16 = add i32 %15, %12
  %17 = inttoptr i32 %16 to ptr
  %18 = getelementptr inbounds %struct.trace_event_call, ptr %0, i32 0, i32 11
  %19 = load volatile ptr, ptr %18, align 4
  %20 = icmp eq ptr %19, null
  br i1 %20, label %21, label %24

21:                                               ; preds = %7
  %22 = load volatile ptr, ptr %17, align 4
  %23 = icmp eq ptr %22, null
  br i1 %23, label %48, label %24

24:                                               ; preds = %21, %7
  %25 = call ptr @perf_trace_buf_alloc(i32 noundef 36, ptr noundef nonnull %8, ptr noundef nonnull %9) #18
  %26 = icmp eq ptr %25, null
  br i1 %26, label %48, label %27

27:                                               ; preds = %24
  %28 = load ptr, ptr %8, align 4
  %29 = call ptr @llvm.returnaddress(i32 0) #18
  %30 = ptrtoint ptr %29 to i32
  %31 = getelementptr [18 x i32], ptr %28, i32 0, i32 15
  store i32 %30, ptr %31, align 4
  %32 = call ptr @llvm.frameaddress.p0(i32 0) #18
  %33 = ptrtoint ptr %32 to i32
  %34 = getelementptr [18 x i32], ptr %28, i32 0, i32 11
  store i32 %33, ptr %34, align 4
  %35 = call i32 @llvm.read_register.i32(metadata !0) #18
  %36 = getelementptr [18 x i32], ptr %28, i32 0, i32 13
  store i32 %35, ptr %36, align 4
  %37 = getelementptr [18 x i32], ptr %28, i32 0, i32 16
  store i32 19, ptr %37, align 4
  %38 = getelementptr inbounds %struct.fsi_master, ptr %1, i32 0, i32 1
  %39 = load i32, ptr %38, align 8
  %40 = getelementptr inbounds %struct.trace_event_raw_fsi_master_write, ptr %25, i32 0, i32 1
  store i32 %39, ptr %40, align 4
  %41 = getelementptr inbounds %struct.trace_event_raw_fsi_master_write, ptr %25, i32 0, i32 2
  store i32 %2, ptr %41, align 4
  %42 = getelementptr inbounds %struct.trace_event_raw_fsi_master_write, ptr %25, i32 0, i32 3
  store i32 %3, ptr %42, align 4
  %43 = getelementptr inbounds %struct.trace_event_raw_fsi_master_write, ptr %25, i32 0, i32 4
  store i32 %4, ptr %43, align 4
  %44 = getelementptr inbounds %struct.trace_event_raw_fsi_master_write, ptr %25, i32 0, i32 5
  store i32 %5, ptr %44, align 4
  %45 = getelementptr inbounds %struct.trace_event_raw_fsi_master_write, ptr %25, i32 0, i32 6
  store i32 0, ptr %45, align 4
  call void @llvm.memcpy.p0.p0.i32(ptr align 4 %45, ptr align 1 %6, i32 %5, i1 false)
  %46 = load i32, ptr %9, align 4
  %47 = load ptr, ptr %8, align 4
  call void @perf_trace_run_bpf_submit(ptr noundef nonnull %25, i32 noundef 36, i32 noundef %46, ptr noundef %0, i64 noundef 1, ptr noundef %47, ptr noundef %17, ptr noundef null) #18
  br label %48

48:                                               ; preds = %27, %24, %21
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %9) #18
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #18
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @trace_event_raw_event_fsi_master_rw_result(ptr noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i1 noundef zeroext %6, ptr nocapture noundef readonly %7, i32 noundef %8) #0 {
  %10 = alloca %struct.trace_event_buffer, align 4
  %11 = zext i1 %6 to i8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %10) #18
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %10, i8 0, i32 24, i1 false), !annotation !9
  %12 = getelementptr inbounds %struct.trace_event_file, ptr %0, i32 0, i32 7
  %13 = load i32, ptr %12, align 4
  %14 = and i32 %13, 704
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %21, label %16, !prof !10

16:                                               ; preds = %9
  %17 = and i32 %13, 256
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %21, !prof !11

19:                                               ; preds = %16
  %20 = tail call zeroext i1 @__trace_trigger_soft_disabled(ptr noundef %0) #18
  br i1 %20, label %39, label %21

21:                                               ; preds = %19, %16, %9
  %22 = call ptr @trace_event_buffer_reserve(ptr noundef nonnull %10, ptr noundef %0, i32 noundef 40) #18
  %23 = icmp eq ptr %22, null
  br i1 %23, label %39, label %24

24:                                               ; preds = %21
  %25 = getelementptr inbounds %struct.fsi_master, ptr %1, i32 0, i32 1
  %26 = load i32, ptr %25, align 8
  %27 = getelementptr inbounds %struct.trace_event_raw_fsi_master_rw_result, ptr %22, i32 0, i32 1
  store i32 %26, ptr %27, align 4
  %28 = getelementptr inbounds %struct.trace_event_raw_fsi_master_rw_result, ptr %22, i32 0, i32 2
  store i32 %2, ptr %28, align 4
  %29 = getelementptr inbounds %struct.trace_event_raw_fsi_master_rw_result, ptr %22, i32 0, i32 3
  store i32 %3, ptr %29, align 4
  %30 = getelementptr inbounds %struct.trace_event_raw_fsi_master_rw_result, ptr %22, i32 0, i32 4
  store i32 %4, ptr %30, align 4
  %31 = getelementptr inbounds %struct.trace_event_raw_fsi_master_rw_result, ptr %22, i32 0, i32 5
  store i32 %5, ptr %31, align 4
  %32 = getelementptr inbounds %struct.trace_event_raw_fsi_master_rw_result, ptr %22, i32 0, i32 6
  store i8 %11, ptr %32, align 4
  %33 = getelementptr inbounds %struct.trace_event_raw_fsi_master_rw_result, ptr %22, i32 0, i32 7
  store i32 0, ptr %33, align 4
  %34 = getelementptr inbounds %struct.trace_event_raw_fsi_master_rw_result, ptr %22, i32 0, i32 8
  store i32 %8, ptr %34, align 4
  %35 = icmp eq i32 %8, 0
  %36 = or i1 %35, %6
  br i1 %36, label %37, label %38

37:                                               ; preds = %24
  call void @llvm.memcpy.p0.p0.i32(ptr align 4 %33, ptr align 1 %7, i32 %5, i1 false)
  br label %38

38:                                               ; preds = %37, %24
  call void @trace_event_buffer_commit(ptr noundef nonnull %10) #18
  br label %39

39:                                               ; preds = %38, %21, %19
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %10) #18
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @perf_trace_fsi_master_rw_result(ptr noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i1 noundef zeroext %6, ptr nocapture noundef readonly %7, i32 noundef %8) #0 {
  %10 = alloca ptr, align 4
  %11 = alloca i32, align 4
  %12 = zext i1 %6 to i8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %10) #18
  store ptr null, ptr %10, align 4, !annotation !9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %11) #18
  store i32 0, ptr %11, align 4, !annotation !9
  %13 = getelementptr inbounds %struct.trace_event_call, ptr %0, i32 0, i32 10
  %14 = load ptr, ptr %13, align 4
  %15 = ptrtoint ptr %14 to i32
  %16 = tail call i32 @llvm.read_register.i32(metadata !0) #18
  %17 = inttoptr i32 %16 to ptr
  %18 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %17) #9, !srcloc !12
  %19 = add i32 %18, %15
  %20 = inttoptr i32 %19 to ptr
  %21 = getelementptr inbounds %struct.trace_event_call, ptr %0, i32 0, i32 11
  %22 = load volatile ptr, ptr %21, align 4
  %23 = icmp eq ptr %22, null
  br i1 %23, label %24, label %27

24:                                               ; preds = %9
  %25 = load volatile ptr, ptr %20, align 4
  %26 = icmp eq ptr %25, null
  br i1 %26, label %57, label %27

27:                                               ; preds = %24, %9
  %28 = call ptr @perf_trace_buf_alloc(i32 noundef 44, ptr noundef nonnull %10, ptr noundef nonnull %11) #18
  %29 = icmp eq ptr %28, null
  br i1 %29, label %57, label %30

30:                                               ; preds = %27
  %31 = load ptr, ptr %10, align 4
  %32 = call ptr @llvm.returnaddress(i32 0) #18
  %33 = ptrtoint ptr %32 to i32
  %34 = getelementptr [18 x i32], ptr %31, i32 0, i32 15
  store i32 %33, ptr %34, align 4
  %35 = call ptr @llvm.frameaddress.p0(i32 0) #18
  %36 = ptrtoint ptr %35 to i32
  %37 = getelementptr [18 x i32], ptr %31, i32 0, i32 11
  store i32 %36, ptr %37, align 4
  %38 = call i32 @llvm.read_register.i32(metadata !0) #18
  %39 = getelementptr [18 x i32], ptr %31, i32 0, i32 13
  store i32 %38, ptr %39, align 4
  %40 = getelementptr [18 x i32], ptr %31, i32 0, i32 16
  store i32 19, ptr %40, align 4
  %41 = getelementptr inbounds %struct.fsi_master, ptr %1, i32 0, i32 1
  %42 = load i32, ptr %41, align 8
  %43 = getelementptr inbounds %struct.trace_event_raw_fsi_master_rw_result, ptr %28, i32 0, i32 1
  store i32 %42, ptr %43, align 4
  %44 = getelementptr inbounds %struct.trace_event_raw_fsi_master_rw_result, ptr %28, i32 0, i32 2
  store i32 %2, ptr %44, align 4
  %45 = getelementptr inbounds %struct.trace_event_raw_fsi_master_rw_result, ptr %28, i32 0, i32 3
  store i32 %3, ptr %45, align 4
  %46 = getelementptr inbounds %struct.trace_event_raw_fsi_master_rw_result, ptr %28, i32 0, i32 4
  store i32 %4, ptr %46, align 4
  %47 = getelementptr inbounds %struct.trace_event_raw_fsi_master_rw_result, ptr %28, i32 0, i32 5
  store i32 %5, ptr %47, align 4
  %48 = getelementptr inbounds %struct.trace_event_raw_fsi_master_rw_result, ptr %28, i32 0, i32 6
  store i8 %12, ptr %48, align 4
  %49 = getelementptr inbounds %struct.trace_event_raw_fsi_master_rw_result, ptr %28, i32 0, i32 7
  store i32 0, ptr %49, align 4
  %50 = getelementptr inbounds %struct.trace_event_raw_fsi_master_rw_result, ptr %28, i32 0, i32 8
  store i32 %8, ptr %50, align 4
  %51 = icmp eq i32 %8, 0
  %52 = or i1 %51, %6
  br i1 %52, label %53, label %54

53:                                               ; preds = %30
  call void @llvm.memcpy.p0.p0.i32(ptr align 4 %49, ptr align 1 %7, i32 %5, i1 false)
  br label %54

54:                                               ; preds = %53, %30
  %55 = load i32, ptr %11, align 4
  %56 = load ptr, ptr %10, align 4
  call void @perf_trace_run_bpf_submit(ptr noundef nonnull %28, i32 noundef 44, i32 noundef %55, ptr noundef %0, i64 noundef 1, ptr noundef %56, ptr noundef %20, ptr noundef null) #18
  br label %57

57:                                               ; preds = %54, %27, %24
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %11) #18
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %10) #18
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @trace_event_raw_event_fsi_master_break(ptr noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2) #0 {
  %4 = alloca %struct.trace_event_buffer, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #18
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
  %13 = tail call zeroext i1 @__trace_trigger_soft_disabled(ptr noundef %0) #18
  br i1 %13, label %22, label %14

14:                                               ; preds = %12, %9, %3
  %15 = call ptr @trace_event_buffer_reserve(ptr noundef nonnull %4, ptr noundef %0, i32 noundef 16) #18
  %16 = icmp eq ptr %15, null
  br i1 %16, label %22, label %17

17:                                               ; preds = %14
  %18 = getelementptr inbounds %struct.fsi_master, ptr %1, i32 0, i32 1
  %19 = load i32, ptr %18, align 8
  %20 = getelementptr inbounds %struct.trace_event_raw_fsi_master_break, ptr %15, i32 0, i32 1
  store i32 %19, ptr %20, align 4
  %21 = getelementptr inbounds %struct.trace_event_raw_fsi_master_break, ptr %15, i32 0, i32 2
  store i32 %2, ptr %21, align 4
  call void @trace_event_buffer_commit(ptr noundef nonnull %4) #18
  br label %22

22:                                               ; preds = %17, %14, %12
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #18
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @perf_trace_fsi_master_break(ptr noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2) #0 {
  %4 = alloca ptr, align 4
  %5 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #18
  store ptr null, ptr %4, align 4, !annotation !9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #18
  store i32 0, ptr %5, align 4, !annotation !9
  %6 = getelementptr inbounds %struct.trace_event_call, ptr %0, i32 0, i32 10
  %7 = load ptr, ptr %6, align 4
  %8 = ptrtoint ptr %7 to i32
  %9 = tail call i32 @llvm.read_register.i32(metadata !0) #18
  %10 = inttoptr i32 %9 to ptr
  %11 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %10) #9, !srcloc !12
  %12 = add i32 %11, %8
  %13 = inttoptr i32 %12 to ptr
  %14 = getelementptr inbounds %struct.trace_event_call, ptr %0, i32 0, i32 11
  %15 = load volatile ptr, ptr %14, align 4
  %16 = icmp eq ptr %15, null
  br i1 %16, label %17, label %20

17:                                               ; preds = %3
  %18 = load volatile ptr, ptr %13, align 4
  %19 = icmp eq ptr %18, null
  br i1 %19, label %40, label %20

20:                                               ; preds = %17, %3
  %21 = call ptr @perf_trace_buf_alloc(i32 noundef 20, ptr noundef nonnull %4, ptr noundef nonnull %5) #18
  %22 = icmp eq ptr %21, null
  br i1 %22, label %40, label %23

23:                                               ; preds = %20
  %24 = load ptr, ptr %4, align 4
  %25 = call ptr @llvm.returnaddress(i32 0) #18
  %26 = ptrtoint ptr %25 to i32
  %27 = getelementptr [18 x i32], ptr %24, i32 0, i32 15
  store i32 %26, ptr %27, align 4
  %28 = call ptr @llvm.frameaddress.p0(i32 0) #18
  %29 = ptrtoint ptr %28 to i32
  %30 = getelementptr [18 x i32], ptr %24, i32 0, i32 11
  store i32 %29, ptr %30, align 4
  %31 = call i32 @llvm.read_register.i32(metadata !0) #18
  %32 = getelementptr [18 x i32], ptr %24, i32 0, i32 13
  store i32 %31, ptr %32, align 4
  %33 = getelementptr [18 x i32], ptr %24, i32 0, i32 16
  store i32 19, ptr %33, align 4
  %34 = getelementptr inbounds %struct.fsi_master, ptr %1, i32 0, i32 1
  %35 = load i32, ptr %34, align 8
  %36 = getelementptr inbounds %struct.trace_event_raw_fsi_master_break, ptr %21, i32 0, i32 1
  store i32 %35, ptr %36, align 4
  %37 = getelementptr inbounds %struct.trace_event_raw_fsi_master_break, ptr %21, i32 0, i32 2
  store i32 %2, ptr %37, align 4
  %38 = load i32, ptr %5, align 4
  %39 = load ptr, ptr %4, align 4
  call void @perf_trace_run_bpf_submit(ptr noundef nonnull %21, i32 noundef 20, i32 noundef %38, ptr noundef %0, i64 noundef 1, ptr noundef %39, ptr noundef %13, ptr noundef null) #18
  br label %40

40:                                               ; preds = %23, %20, %17
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #18
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #18
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @fsi_device_read(ptr nocapture noundef readonly %0, i32 noundef %1, ptr noundef %2, i32 noundef %3) #0 {
  %5 = getelementptr inbounds %struct.fsi_device, ptr %0, i32 0, i32 6
  %6 = load i32, ptr %5, align 4
  %7 = icmp ult i32 %6, %1
  %8 = icmp ult i32 %6, %3
  %9 = or i1 %7, %8
  %10 = sub i32 %6, %3
  %11 = icmp ult i32 %10, %1
  %12 = or i1 %9, %11
  br i1 %12, label %20, label %13

13:                                               ; preds = %4
  %14 = getelementptr inbounds %struct.fsi_device, ptr %0, i32 0, i32 4
  %15 = load ptr, ptr %14, align 4
  %16 = getelementptr inbounds %struct.fsi_device, ptr %0, i32 0, i32 5
  %17 = load i32, ptr %16, align 8
  %18 = add i32 %17, %1
  %19 = tail call i32 @fsi_slave_read(ptr noundef %15, i32 noundef %18, ptr noundef %2, i32 noundef %3)
  br label %20

20:                                               ; preds = %13, %4
  %21 = phi i32 [ %19, %13 ], [ -22, %4 ]
  ret i32 %21
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @fsi_slave_read(ptr nocapture noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3) #0 {
  %5 = getelementptr inbounds %struct.fsi_slave, ptr %0, i32 0, i32 4
  %6 = load i32, ptr %5, align 4
  %7 = getelementptr inbounds %struct.fsi_slave, ptr %0, i32 0, i32 8
  %8 = load i32, ptr %7, align 4
  %9 = icmp ult i32 %8, %1
  br i1 %9, label %39, label %10

10:                                               ; preds = %4
  %11 = trunc i32 %6 to i8
  %12 = icmp ugt i32 %1, 2097151
  br i1 %12, label %13, label %20

13:                                               ; preds = %10
  %14 = icmp eq i32 %6, 0
  br i1 %14, label %15, label %39

15:                                               ; preds = %13
  %16 = lshr i32 %1, 21
  %17 = trunc i32 %16 to i8
  %18 = and i8 %17, 3
  %19 = and i32 %1, 2097151
  br label %20

20:                                               ; preds = %15, %10
  %21 = phi i32 [ %19, %15 ], [ %1, %10 ]
  %22 = phi i8 [ %18, %15 ], [ %11, %10 ]
  %23 = getelementptr inbounds %struct.fsi_slave, ptr %0, i32 0, i32 1
  %24 = getelementptr inbounds %struct.fsi_slave, ptr %0, i32 0, i32 5
  %25 = load ptr, ptr %23, align 8
  %26 = load i32, ptr %24, align 8
  %27 = tail call fastcc i32 @fsi_master_read(ptr noundef %25, i32 noundef %26, i8 noundef zeroext %22, i32 noundef %21, ptr noundef %2, i32 noundef %3)
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %39, label %36

29:                                               ; preds = %36
  %30 = load ptr, ptr %23, align 8
  %31 = load i32, ptr %24, align 8
  %32 = tail call fastcc i32 @fsi_master_read(ptr noundef %30, i32 noundef %31, i8 noundef zeroext %22, i32 noundef %21, ptr noundef %2, i32 noundef %3)
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %39, label %34

34:                                               ; preds = %29
  %35 = tail call fastcc i32 @fsi_slave_handle_error(ptr noundef %0)
  br label %39

36:                                               ; preds = %20
  %37 = tail call fastcc i32 @fsi_slave_handle_error(ptr noundef %0)
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %29, label %39

39:                                               ; preds = %36, %34, %29, %20, %13, %4
  %40 = phi i32 [ -22, %4 ], [ -22, %13 ], [ %27, %36 ], [ 0, %20 ], [ 0, %29 ], [ %32, %34 ]
  ret i32 %40
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @fsi_device_write(ptr nocapture noundef readonly %0, i32 noundef %1, ptr noundef %2, i32 noundef %3) #0 {
  %5 = getelementptr inbounds %struct.fsi_device, ptr %0, i32 0, i32 6
  %6 = load i32, ptr %5, align 4
  %7 = icmp ult i32 %6, %1
  %8 = icmp ult i32 %6, %3
  %9 = or i1 %7, %8
  %10 = sub i32 %6, %3
  %11 = icmp ult i32 %10, %1
  %12 = or i1 %9, %11
  br i1 %12, label %20, label %13

13:                                               ; preds = %4
  %14 = getelementptr inbounds %struct.fsi_device, ptr %0, i32 0, i32 4
  %15 = load ptr, ptr %14, align 4
  %16 = getelementptr inbounds %struct.fsi_device, ptr %0, i32 0, i32 5
  %17 = load i32, ptr %16, align 8
  %18 = add i32 %17, %1
  %19 = tail call i32 @fsi_slave_write(ptr noundef %15, i32 noundef %18, ptr noundef %2, i32 noundef %3)
  br label %20

20:                                               ; preds = %13, %4
  %21 = phi i32 [ %19, %13 ], [ -22, %4 ]
  ret i32 %21
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @fsi_slave_write(ptr nocapture noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3) #0 {
  %5 = getelementptr inbounds %struct.fsi_slave, ptr %0, i32 0, i32 4
  %6 = load i32, ptr %5, align 4
  %7 = getelementptr inbounds %struct.fsi_slave, ptr %0, i32 0, i32 8
  %8 = load i32, ptr %7, align 4
  %9 = icmp ult i32 %8, %1
  br i1 %9, label %39, label %10

10:                                               ; preds = %4
  %11 = trunc i32 %6 to i8
  %12 = icmp ugt i32 %1, 2097151
  br i1 %12, label %13, label %20

13:                                               ; preds = %10
  %14 = icmp eq i32 %6, 0
  br i1 %14, label %15, label %39

15:                                               ; preds = %13
  %16 = lshr i32 %1, 21
  %17 = trunc i32 %16 to i8
  %18 = and i8 %17, 3
  %19 = and i32 %1, 2097151
  br label %20

20:                                               ; preds = %15, %10
  %21 = phi i32 [ %19, %15 ], [ %1, %10 ]
  %22 = phi i8 [ %18, %15 ], [ %11, %10 ]
  %23 = getelementptr inbounds %struct.fsi_slave, ptr %0, i32 0, i32 1
  %24 = getelementptr inbounds %struct.fsi_slave, ptr %0, i32 0, i32 5
  %25 = load ptr, ptr %23, align 8
  %26 = load i32, ptr %24, align 8
  %27 = tail call fastcc i32 @fsi_master_write(ptr noundef %25, i32 noundef %26, i8 noundef zeroext %22, i32 noundef %21, ptr noundef %2, i32 noundef %3)
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %39, label %36

29:                                               ; preds = %36
  %30 = load ptr, ptr %23, align 8
  %31 = load i32, ptr %24, align 8
  %32 = tail call fastcc i32 @fsi_master_write(ptr noundef %30, i32 noundef %31, i8 noundef zeroext %22, i32 noundef %21, ptr noundef %2, i32 noundef %3)
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %39, label %34

34:                                               ; preds = %29
  %35 = tail call fastcc i32 @fsi_slave_handle_error(ptr noundef %0)
  br label %39

36:                                               ; preds = %20
  %37 = tail call fastcc i32 @fsi_slave_handle_error(ptr noundef %0)
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %29, label %39

39:                                               ; preds = %36, %34, %29, %20, %13, %4
  %40 = phi i32 [ -22, %4 ], [ -22, %13 ], [ %27, %36 ], [ 0, %20 ], [ 0, %29 ], [ %32, %34 ]
  ret i32 %40
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @fsi_device_peek(ptr nocapture noundef readonly %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.fsi_device, ptr %0, i32 0, i32 3
  %4 = load i8, ptr %3, align 2
  %5 = zext i8 %4 to i32
  %6 = shl nuw nsw i32 %5, 2
  %7 = add nuw nsw i32 %6, 1032
  %8 = getelementptr inbounds %struct.fsi_device, ptr %0, i32 0, i32 4
  %9 = load ptr, ptr %8, align 4
  %10 = tail call i32 @fsi_slave_read(ptr noundef %9, i32 noundef %7, ptr noundef %1, i32 noundef 4)
  ret i32 %10
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @fsi_master_read(ptr noundef %0, i32 noundef %1, i8 noundef zeroext %2, i32 noundef %3, ptr noundef %4, i32 noundef %5) unnamed_addr #0 {
  %7 = zext i8 %2 to i32
  %8 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_fsi_master_read, i32 0, i32 1), align 4
  %9 = icmp sgt i32 %8, 0
  br i1 %9, label %10, label %33

10:                                               ; preds = %6
  %11 = tail call ptr @llvm.thread.pointer() #18
  %12 = getelementptr inbounds %struct.thread_info, ptr %11, i32 0, i32 2
  %13 = load i32, ptr %12, align 8
  %14 = lshr i32 %13, 5
  %15 = getelementptr i32, ptr @__cpu_online_mask, i32 %14
  %16 = load volatile i32, ptr %15, align 4
  %17 = and i32 %13, 31
  %18 = shl nuw i32 1, %17
  %19 = and i32 %18, %16
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %33, label %21

21:                                               ; preds = %10
  tail call void asm sideeffect "", "~{memory}"() #18, !srcloc !13
  %22 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_fsi_master_read, i32 0, i32 7), align 4
  %23 = icmp eq ptr %22, null
  br i1 %23, label %32, label %24

24:                                               ; preds = %24, %21
  %25 = phi ptr [ %29, %24 ], [ %22, %21 ]
  %26 = load volatile ptr, ptr %25, align 4
  %27 = getelementptr inbounds %struct.tracepoint_func, ptr %25, i32 0, i32 1
  %28 = load ptr, ptr %27, align 4
  tail call void %26(ptr noundef %28, ptr noundef %0, i32 noundef %1, i32 noundef %7, i32 noundef %3, i32 noundef %5) #18
  %29 = getelementptr %struct.tracepoint_func, ptr %25, i32 1
  %30 = load ptr, ptr %29, align 4
  %31 = icmp eq ptr %30, null
  br i1 %31, label %32, label %24

32:                                               ; preds = %24, %21
  tail call void asm sideeffect "", "~{memory}"() #18, !srcloc !14
  br label %33

33:                                               ; preds = %32, %10, %6
  switch i32 %5, label %44 [
    i32 4, label %34
    i32 2, label %37
    i32 1, label %40
  ]

34:                                               ; preds = %33
  %35 = and i32 %3, 3
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %40, label %44

37:                                               ; preds = %33
  %38 = and i32 %3, 1
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %40, label %44

40:                                               ; preds = %37, %34, %33
  %41 = getelementptr inbounds %struct.fsi_master, ptr %0, i32 0, i32 5
  %42 = load ptr, ptr %41, align 8
  %43 = tail call i32 %42(ptr noundef %0, i32 noundef %1, i8 noundef zeroext %2, i32 noundef %3, ptr noundef %4, i32 noundef %5) #18
  br label %44

44:                                               ; preds = %40, %37, %34, %33
  %45 = phi i32 [ %43, %40 ], [ -22, %34 ], [ -22, %37 ], [ -22, %33 ]
  %46 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_fsi_master_rw_result, i32 0, i32 1), align 4
  %47 = icmp sgt i32 %46, 0
  br i1 %47, label %48, label %71

48:                                               ; preds = %44
  %49 = tail call ptr @llvm.thread.pointer() #18
  %50 = getelementptr inbounds %struct.thread_info, ptr %49, i32 0, i32 2
  %51 = load i32, ptr %50, align 8
  %52 = lshr i32 %51, 5
  %53 = getelementptr i32, ptr @__cpu_online_mask, i32 %52
  %54 = load volatile i32, ptr %53, align 4
  %55 = and i32 %51, 31
  %56 = shl nuw i32 1, %55
  %57 = and i32 %56, %54
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %71, label %59

59:                                               ; preds = %48
  tail call void asm sideeffect "", "~{memory}"() #18, !srcloc !15
  %60 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_fsi_master_rw_result, i32 0, i32 7), align 4
  %61 = icmp eq ptr %60, null
  br i1 %61, label %70, label %62

62:                                               ; preds = %62, %59
  %63 = phi ptr [ %67, %62 ], [ %60, %59 ]
  %64 = load volatile ptr, ptr %63, align 4
  %65 = getelementptr inbounds %struct.tracepoint_func, ptr %63, i32 0, i32 1
  %66 = load ptr, ptr %65, align 4
  tail call void %64(ptr noundef %66, ptr noundef %0, i32 noundef %1, i32 noundef %7, i32 noundef %3, i32 noundef %5, i1 noundef zeroext false, ptr noundef %4, i32 noundef %45) #18
  %67 = getelementptr %struct.tracepoint_func, ptr %63, i32 1
  %68 = load ptr, ptr %67, align 4
  %69 = icmp eq ptr %68, null
  br i1 %69, label %70, label %62

70:                                               ; preds = %62, %59
  tail call void asm sideeffect "", "~{memory}"() #18, !srcloc !16
  br label %71

71:                                               ; preds = %70, %48, %44
  ret i32 %45
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @fsi_slave_handle_error(ptr nocapture noundef %0) unnamed_addr #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = getelementptr inbounds %struct.fsi_slave, ptr %0, i32 0, i32 1
  %11 = load ptr, ptr %10, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %9) #18
  store i32 0, ptr %9, align 4, !annotation !9
  %12 = load i32, ptr @discard_errors, align 4
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %140

14:                                               ; preds = %1
  %15 = getelementptr inbounds %struct.fsi_slave, ptr %0, i32 0, i32 5
  %16 = load i32, ptr %15, align 8
  %17 = getelementptr inbounds %struct.fsi_slave, ptr %0, i32 0, i32 4
  %18 = load i32, ptr %17, align 4
  %19 = trunc i32 %18 to i8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #18
  store i32 0, ptr %7, align 4, !annotation !9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %8) #18
  store i32 0, ptr %8, align 4, !annotation !9
  %20 = call fastcc i32 @fsi_master_read(ptr noundef %11, i32 noundef %16, i8 noundef zeroext %19, i32 noundef 2056, ptr noundef nonnull %7, i32 noundef 4) #18
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %14
  %23 = call fastcc i32 @fsi_master_read(ptr noundef %11, i32 noundef %16, i8 noundef zeroext %19, i32 noundef 2068, ptr noundef nonnull %8, i32 noundef 4) #18
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %26, label %25

25:                                               ; preds = %22, %14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #18
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #18
  br label %29

26:                                               ; preds = %22
  %27 = call fastcc i32 @fsi_master_write(ptr noundef %11, i32 noundef %16, i8 noundef zeroext %19, i32 noundef 2056, ptr noundef nonnull %7, i32 noundef 4) #18
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #18
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #18
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %140, label %29

29:                                               ; preds = %26, %25
  %30 = getelementptr inbounds %struct.fsi_master, ptr %11, i32 0, i32 7
  %31 = load ptr, ptr %30, align 8
  %32 = icmp eq ptr %31, null
  br i1 %32, label %53, label %33

33:                                               ; preds = %29
  %34 = call i32 %31(ptr noundef %11, i32 noundef %16, i8 noundef zeroext %19) #18
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %36, label %53

36:                                               ; preds = %33
  %37 = call fastcc i32 @fsi_master_read(ptr noundef %11, i32 noundef %16, i8 noundef zeroext %19, i32 noundef 0, ptr noundef nonnull %9, i32 noundef 4)
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %39, label %53

39:                                               ; preds = %36
  %40 = load ptr, ptr %10, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #18
  store i32 0, ptr %5, align 4, !annotation !9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #18
  store i32 0, ptr %6, align 4, !annotation !9
  %41 = load i32, ptr %15, align 8
  %42 = load i32, ptr %17, align 4
  %43 = trunc i32 %42 to i8
  %44 = call fastcc i32 @fsi_master_read(ptr noundef %40, i32 noundef %41, i8 noundef zeroext %43, i32 noundef 2056, ptr noundef nonnull %5, i32 noundef 4) #18
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %46, label %49

46:                                               ; preds = %39
  %47 = call fastcc i32 @fsi_master_read(ptr noundef %40, i32 noundef %41, i8 noundef zeroext %43, i32 noundef 2068, ptr noundef nonnull %6, i32 noundef 4) #18
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %50, label %49

49:                                               ; preds = %46, %39
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #18
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #18
  br label %53

50:                                               ; preds = %46
  %51 = call fastcc i32 @fsi_master_write(ptr noundef %40, i32 noundef %41, i8 noundef zeroext %43, i32 noundef 2056, ptr noundef nonnull %5, i32 noundef 4) #18
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #18
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #18
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %140, label %53

53:                                               ; preds = %50, %49, %36, %33, %29
  %54 = getelementptr inbounds %struct.fsi_slave, ptr %0, i32 0, i32 9
  %55 = load i8, ptr %54, align 8
  %56 = getelementptr inbounds %struct.fsi_slave, ptr %0, i32 0, i32 10
  %57 = load i8, ptr %56, align 1
  %58 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_fsi_master_break, i32 0, i32 1), align 4
  %59 = icmp sgt i32 %58, 0
  br i1 %59, label %60, label %83

60:                                               ; preds = %53
  %61 = tail call ptr @llvm.thread.pointer() #18
  %62 = getelementptr inbounds %struct.thread_info, ptr %61, i32 0, i32 2
  %63 = load i32, ptr %62, align 8
  %64 = lshr i32 %63, 5
  %65 = getelementptr i32, ptr @__cpu_online_mask, i32 %64
  %66 = load volatile i32, ptr %65, align 4
  %67 = and i32 %63, 31
  %68 = shl nuw i32 1, %67
  %69 = and i32 %68, %66
  %70 = icmp eq i32 %69, 0
  br i1 %70, label %83, label %71

71:                                               ; preds = %60
  call void asm sideeffect "", "~{memory}"() #18, !srcloc !17
  %72 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_fsi_master_break, i32 0, i32 7), align 4
  %73 = icmp eq ptr %72, null
  br i1 %73, label %82, label %74

74:                                               ; preds = %74, %71
  %75 = phi ptr [ %79, %74 ], [ %72, %71 ]
  %76 = load volatile ptr, ptr %75, align 4
  %77 = getelementptr inbounds %struct.tracepoint_func, ptr %75, i32 0, i32 1
  %78 = load ptr, ptr %77, align 4
  call void %76(ptr noundef %78, ptr noundef %11, i32 noundef %16) #18
  %79 = getelementptr %struct.tracepoint_func, ptr %75, i32 1
  %80 = load ptr, ptr %79, align 4
  %81 = icmp eq ptr %80, null
  br i1 %81, label %82, label %74

82:                                               ; preds = %74, %71
  call void asm sideeffect "", "~{memory}"() #18, !srcloc !18
  br label %83

83:                                               ; preds = %82, %60, %53
  %84 = getelementptr inbounds %struct.fsi_master, ptr %11, i32 0, i32 8
  %85 = load ptr, ptr %84, align 4
  %86 = icmp eq ptr %85, null
  br i1 %86, label %89, label %87

87:                                               ; preds = %83
  %88 = call i32 %85(ptr noundef %11, i32 noundef %16) #18
  br label %89

89:                                               ; preds = %87, %83
  %90 = phi i32 [ %88, %87 ], [ 0, %83 ]
  %91 = getelementptr inbounds %struct.fsi_master, ptr %11, i32 0, i32 10
  %92 = load ptr, ptr %91, align 4
  %93 = icmp eq ptr %92, null
  br i1 %93, label %96, label %94

94:                                               ; preds = %89
  %95 = call i32 %92(ptr noundef %11, i32 noundef %16, i8 noundef zeroext 16, i8 noundef zeroext 16) #18
  br label %96

96:                                               ; preds = %94, %89
  %97 = icmp eq i32 %90, 0
  br i1 %97, label %98, label %140

98:                                               ; preds = %96
  store i8 %55, ptr %54, align 8
  store i8 %57, ptr %56, align 1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #18
  %99 = load i32, ptr %17, align 4
  %100 = shl i32 %99, 24
  %101 = and i32 %100, 50331648
  %102 = zext i8 %57 to i32
  %103 = shl nuw nsw i32 %102, 20
  %104 = add nuw nsw i32 %103, 15728640
  %105 = and i32 %104, 15728640
  %106 = zext i8 %55 to i32
  %107 = shl nuw nsw i32 %106, 16
  %108 = add nuw nsw i32 %107, 983040
  %109 = and i32 %108, 983040
  %110 = or i32 %109, %105
  %111 = or i32 %110, %101
  %112 = or i32 %111, -1610610688
  %113 = call i32 @llvm.bswap.i32(i32 %112) #18
  store i32 %113, ptr %4, align 4
  %114 = load ptr, ptr %10, align 8
  %115 = load i32, ptr %15, align 8
  %116 = trunc i32 %99 to i8
  %117 = call fastcc i32 @fsi_master_write(ptr noundef %114, i32 noundef %115, i8 noundef zeroext %116, i32 noundef 2048, ptr noundef nonnull %4, i32 noundef 4) #18
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #18
  %118 = icmp eq i32 %117, 0
  br i1 %118, label %119, label %140

119:                                              ; preds = %98
  %120 = load ptr, ptr %91, align 4
  %121 = icmp eq ptr %120, null
  br i1 %121, label %126, label %122

122:                                              ; preds = %119
  %123 = load i8, ptr %54, align 8
  %124 = load i8, ptr %56, align 1
  %125 = call i32 %120(ptr noundef %11, i32 noundef %16, i8 noundef zeroext %123, i8 noundef zeroext %124) #18
  br label %126

126:                                              ; preds = %122, %119
  %127 = load ptr, ptr %10, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #18
  store i32 0, ptr %2, align 4, !annotation !9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #18
  store i32 0, ptr %3, align 4, !annotation !9
  %128 = load i32, ptr %15, align 8
  %129 = load i32, ptr %17, align 4
  %130 = trunc i32 %129 to i8
  %131 = call fastcc i32 @fsi_master_read(ptr noundef %127, i32 noundef %128, i8 noundef zeroext %130, i32 noundef 2056, ptr noundef nonnull %2, i32 noundef 4) #18
  %132 = icmp eq i32 %131, 0
  br i1 %132, label %133, label %138

133:                                              ; preds = %126
  %134 = call fastcc i32 @fsi_master_read(ptr noundef %127, i32 noundef %128, i8 noundef zeroext %130, i32 noundef 2068, ptr noundef nonnull %3, i32 noundef 4) #18
  %135 = icmp eq i32 %134, 0
  br i1 %135, label %136, label %138

136:                                              ; preds = %133
  %137 = call fastcc i32 @fsi_master_write(ptr noundef %127, i32 noundef %128, i8 noundef zeroext %130, i32 noundef 2056, ptr noundef nonnull %2, i32 noundef 4) #18
  br label %138

138:                                              ; preds = %136, %133, %126
  %139 = phi i32 [ %137, %136 ], [ %131, %126 ], [ %134, %133 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #18
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #18
  br label %140

140:                                              ; preds = %138, %98, %96, %50, %26, %1
  %141 = phi i32 [ %139, %138 ], [ -1, %1 ], [ 0, %26 ], [ 0, %50 ], [ %90, %96 ], [ %117, %98 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %9) #18
  ret i32 %141
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @fsi_master_write(ptr noundef %0, i32 noundef %1, i8 noundef zeroext %2, i32 noundef %3, ptr noundef %4, i32 noundef %5) unnamed_addr #0 {
  %7 = zext i8 %2 to i32
  %8 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_fsi_master_write, i32 0, i32 1), align 4
  %9 = icmp sgt i32 %8, 0
  br i1 %9, label %10, label %33

10:                                               ; preds = %6
  %11 = tail call ptr @llvm.thread.pointer() #18
  %12 = getelementptr inbounds %struct.thread_info, ptr %11, i32 0, i32 2
  %13 = load i32, ptr %12, align 8
  %14 = lshr i32 %13, 5
  %15 = getelementptr i32, ptr @__cpu_online_mask, i32 %14
  %16 = load volatile i32, ptr %15, align 4
  %17 = and i32 %13, 31
  %18 = shl nuw i32 1, %17
  %19 = and i32 %18, %16
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %33, label %21

21:                                               ; preds = %10
  tail call void asm sideeffect "", "~{memory}"() #18, !srcloc !19
  %22 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_fsi_master_write, i32 0, i32 7), align 4
  %23 = icmp eq ptr %22, null
  br i1 %23, label %32, label %24

24:                                               ; preds = %24, %21
  %25 = phi ptr [ %29, %24 ], [ %22, %21 ]
  %26 = load volatile ptr, ptr %25, align 4
  %27 = getelementptr inbounds %struct.tracepoint_func, ptr %25, i32 0, i32 1
  %28 = load ptr, ptr %27, align 4
  tail call void %26(ptr noundef %28, ptr noundef %0, i32 noundef %1, i32 noundef %7, i32 noundef %3, i32 noundef %5, ptr noundef %4) #18
  %29 = getelementptr %struct.tracepoint_func, ptr %25, i32 1
  %30 = load ptr, ptr %29, align 4
  %31 = icmp eq ptr %30, null
  br i1 %31, label %32, label %24

32:                                               ; preds = %24, %21
  tail call void asm sideeffect "", "~{memory}"() #18, !srcloc !20
  br label %33

33:                                               ; preds = %32, %10, %6
  switch i32 %5, label %44 [
    i32 4, label %34
    i32 2, label %37
    i32 1, label %40
  ]

34:                                               ; preds = %33
  %35 = and i32 %3, 3
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %40, label %44

37:                                               ; preds = %33
  %38 = and i32 %3, 1
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %40, label %44

40:                                               ; preds = %37, %34, %33
  %41 = getelementptr inbounds %struct.fsi_master, ptr %0, i32 0, i32 6
  %42 = load ptr, ptr %41, align 4
  %43 = tail call i32 %42(ptr noundef %0, i32 noundef %1, i8 noundef zeroext %2, i32 noundef %3, ptr noundef %4, i32 noundef %5) #18
  br label %44

44:                                               ; preds = %40, %37, %34, %33
  %45 = phi i32 [ %43, %40 ], [ -22, %34 ], [ -22, %37 ], [ -22, %33 ]
  %46 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_fsi_master_rw_result, i32 0, i32 1), align 4
  %47 = icmp sgt i32 %46, 0
  br i1 %47, label %48, label %71

48:                                               ; preds = %44
  %49 = tail call ptr @llvm.thread.pointer() #18
  %50 = getelementptr inbounds %struct.thread_info, ptr %49, i32 0, i32 2
  %51 = load i32, ptr %50, align 8
  %52 = lshr i32 %51, 5
  %53 = getelementptr i32, ptr @__cpu_online_mask, i32 %52
  %54 = load volatile i32, ptr %53, align 4
  %55 = and i32 %51, 31
  %56 = shl nuw i32 1, %55
  %57 = and i32 %56, %54
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %71, label %59

59:                                               ; preds = %48
  tail call void asm sideeffect "", "~{memory}"() #18, !srcloc !15
  %60 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_fsi_master_rw_result, i32 0, i32 7), align 4
  %61 = icmp eq ptr %60, null
  br i1 %61, label %70, label %62

62:                                               ; preds = %62, %59
  %63 = phi ptr [ %67, %62 ], [ %60, %59 ]
  %64 = load volatile ptr, ptr %63, align 4
  %65 = getelementptr inbounds %struct.tracepoint_func, ptr %63, i32 0, i32 1
  %66 = load ptr, ptr %65, align 4
  tail call void %64(ptr noundef %66, ptr noundef %0, i32 noundef %1, i32 noundef %7, i32 noundef %3, i32 noundef %5, i1 noundef zeroext true, ptr noundef %4, i32 noundef %45) #18
  %67 = getelementptr %struct.tracepoint_func, ptr %63, i32 1
  %68 = load ptr, ptr %67, align 4
  %69 = icmp eq ptr %68, null
  br i1 %69, label %70, label %62

70:                                               ; preds = %62, %59
  tail call void asm sideeffect "", "~{memory}"() #18, !srcloc !16
  br label %71

71:                                               ; preds = %70, %48, %44
  ret i32 %45
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define dso_local i32 @fsi_slave_claim_range(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2) #3 {
  %4 = add i32 %2, %1
  %5 = icmp ult i32 %4, %1
  br i1 %5, label %11, label %6

6:                                                ; preds = %3
  %7 = getelementptr inbounds %struct.fsi_slave, ptr %0, i32 0, i32 8
  %8 = load i32, ptr %7, align 4
  %9 = icmp ugt i32 %4, %8
  %10 = select i1 %9, i32 -22, i32 0
  br label %11

11:                                               ; preds = %6, %3
  %12 = phi i32 [ -22, %3 ], [ %10, %6 ]
  ret i32 %12
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define dso_local void @fsi_slave_release_range(ptr nocapture %0, i32 %1, i32 %2) #4 {
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal noalias ptr @fsi_cdev_devnode(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr nocapture noundef readnone %2, ptr nocapture noundef readnone %3) #0 {
  %5 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 3
  %6 = load ptr, ptr %5, align 4
  %7 = icmp eq ptr %6, null
  br i1 %7, label %8, label %10

8:                                                ; preds = %4
  %9 = load ptr, ptr %0, align 4
  br label %10

10:                                               ; preds = %8, %4
  %11 = phi ptr [ %9, %8 ], [ %6, %4 ]
  %12 = tail call noalias ptr (i32, ptr, ...) @kasprintf(i32 noundef 3264, ptr noundef nonnull @.str.24, ptr noundef %11) #18
  ret ptr %12
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @fsi_get_new_minor(ptr nocapture noundef readonly %0, i32 noundef %1, ptr nocapture noundef writeonly %2, ptr nocapture noundef writeonly %3) #0 {
  %5 = getelementptr inbounds %struct.fsi_device, ptr %0, i32 0, i32 4
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.fsi_slave, ptr %6, i32 0, i32 7
  %8 = load i32, ptr %7, align 8
  %9 = icmp ult i32 %8, 16
  %10 = icmp ult i32 %1, 4
  %11 = and i1 %10, %9
  br i1 %11, label %12, label %19

12:                                               ; preds = %4
  %13 = shl nuw nsw i32 %8, 4
  %14 = or i32 %13, %1
  %15 = tail call i32 @ida_alloc_range(ptr noundef nonnull @fsi_minor_ida, i32 noundef %14, i32 noundef %14, i32 noundef 3264) #18
  %16 = icmp sgt i32 %15, -1
  br i1 %16, label %22, label %17

17:                                               ; preds = %12
  %18 = icmp eq i32 %15, -28
  br i1 %18, label %19, label %28

19:                                               ; preds = %17, %4
  %20 = tail call i32 @ida_alloc_range(ptr noundef nonnull @fsi_minor_ida, i32 noundef 64, i32 noundef 4095, i32 noundef 3264) #18
  %21 = icmp slt i32 %20, 0
  br i1 %21, label %28, label %22

22:                                               ; preds = %19, %12
  %23 = phi i32 [ %8, %12 ], [ %20, %19 ]
  %24 = phi i32 [ %15, %12 ], [ %20, %19 ]
  %25 = add nuw i32 %23, 1
  store i32 %25, ptr %3, align 4
  %26 = load i32, ptr @fsi_base_dev, align 4
  %27 = add i32 %26, %24
  store i32 %27, ptr %2, align 4
  br label %28

28:                                               ; preds = %22, %19, %17
  %29 = phi i32 [ %15, %17 ], [ %20, %19 ], [ 0, %22 ]
  ret i32 %29
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @fsi_free_minor(i32 noundef %0) #0 {
  %2 = and i32 %0, 1048575
  tail call void @ida_free(ptr noundef nonnull @fsi_minor_ida, i32 noundef %2) #18
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ida_free(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @fsi_master_rescan(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.fsi_master, ptr %0, i32 0, i32 4
  tail call void @mutex_lock(ptr noundef %2) #18
  %3 = tail call i32 @device_for_each_child(ptr noundef %0, ptr noundef null, ptr noundef nonnull @fsi_master_remove_slave) #18
  tail call fastcc void @fsi_master_scan(ptr noundef %0)
  tail call void @mutex_unlock(ptr noundef %2) #18
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @fsi_master_scan(ptr noundef %0) unnamed_addr #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = getelementptr inbounds %struct.fsi_master, ptr %0, i32 0, i32 2
  %11 = load i32, ptr %10, align 4
  %12 = icmp sgt i32 %11, 0
  br i1 %12, label %13, label %329

13:                                               ; preds = %1
  %14 = getelementptr inbounds %struct.fsi_master, ptr %0, i32 0, i32 9
  %15 = getelementptr inbounds %struct.fsi_master, ptr %0, i32 0, i32 8
  %16 = getelementptr inbounds %struct.fsi_master, ptr %0, i32 0, i32 10
  %17 = getelementptr inbounds %struct.fsi_master, ptr %0, i32 0, i32 3
  %18 = icmp eq ptr %0, null
  %19 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 25
  br label %20

20:                                               ; preds = %325, %13
  %21 = phi i32 [ 0, %13 ], [ %326, %325 ]
  %22 = load ptr, ptr %14, align 8
  %23 = icmp eq ptr %22, null
  br i1 %23, label %27, label %24

24:                                               ; preds = %20
  %25 = call i32 %22(ptr noundef %0, i32 noundef %21, i1 noundef zeroext true) #18
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %325

27:                                               ; preds = %24, %20
  %28 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_fsi_master_break, i32 0, i32 1), align 4
  %29 = icmp sgt i32 %28, 0
  br i1 %29, label %30, label %53

30:                                               ; preds = %27
  %31 = tail call ptr @llvm.thread.pointer() #18
  %32 = getelementptr inbounds %struct.thread_info, ptr %31, i32 0, i32 2
  %33 = load i32, ptr %32, align 8
  %34 = lshr i32 %33, 5
  %35 = getelementptr i32, ptr @__cpu_online_mask, i32 %34
  %36 = load volatile i32, ptr %35, align 4
  %37 = and i32 %33, 31
  %38 = shl nuw i32 1, %37
  %39 = and i32 %38, %36
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %53, label %41

41:                                               ; preds = %30
  call void asm sideeffect "", "~{memory}"() #18, !srcloc !17
  %42 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_fsi_master_break, i32 0, i32 7), align 4
  %43 = icmp eq ptr %42, null
  br i1 %43, label %52, label %44

44:                                               ; preds = %44, %41
  %45 = phi ptr [ %49, %44 ], [ %42, %41 ]
  %46 = load volatile ptr, ptr %45, align 4
  %47 = getelementptr inbounds %struct.tracepoint_func, ptr %45, i32 0, i32 1
  %48 = load ptr, ptr %47, align 4
  call void %46(ptr noundef %48, ptr noundef %0, i32 noundef %21) #18
  %49 = getelementptr %struct.tracepoint_func, ptr %45, i32 1
  %50 = load ptr, ptr %49, align 4
  %51 = icmp eq ptr %50, null
  br i1 %51, label %52, label %44

52:                                               ; preds = %44, %41
  call void asm sideeffect "", "~{memory}"() #18, !srcloc !18
  br label %53

53:                                               ; preds = %52, %30, %27
  %54 = load ptr, ptr %15, align 4
  %55 = icmp eq ptr %54, null
  br i1 %55, label %58, label %56

56:                                               ; preds = %53
  %57 = call i32 %54(ptr noundef %0, i32 noundef %21) #18
  br label %58

58:                                               ; preds = %56, %53
  %59 = phi i32 [ %57, %56 ], [ 0, %53 ]
  %60 = load ptr, ptr %16, align 4
  %61 = icmp eq ptr %60, null
  br i1 %61, label %64, label %62

62:                                               ; preds = %58
  %63 = call i32 %60(ptr noundef %0, i32 noundef %21, i8 noundef zeroext 16, i8 noundef zeroext 16) #18
  br label %64

64:                                               ; preds = %62, %58
  %65 = icmp eq i32 %59, 0
  br i1 %65, label %71, label %66

66:                                               ; preds = %64
  %67 = load ptr, ptr %14, align 8
  %68 = icmp eq ptr %67, null
  br i1 %68, label %325, label %69

69:                                               ; preds = %66
  %70 = call i32 %67(ptr noundef %0, i32 noundef %21, i1 noundef zeroext false) #18
  br label %325

71:                                               ; preds = %64
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #18
  store i32 0, ptr %6, align 4, !annotation !9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #18
  store i32 0, ptr %7, align 4, !annotation !9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %8) #18
  %72 = call fastcc i32 @fsi_master_read(ptr noundef %0, i32 noundef %21, i8 noundef zeroext 0, i32 noundef 0, ptr noundef nonnull %6, i32 noundef 4) #18
  %73 = icmp eq i32 %72, 0
  br i1 %73, label %74, label %320

74:                                               ; preds = %71
  %75 = load i32, ptr %6, align 4
  %76 = call i32 @llvm.bswap.i32(i32 %75) #18
  %77 = zext i32 %76 to i64
  %78 = call zeroext i8 @crc4(i8 noundef zeroext 0, i64 noundef %77, i32 noundef 32) #18
  %79 = icmp eq i8 %78, 0
  br i1 %79, label %81, label %80

80:                                               ; preds = %74
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %0, ptr noundef nonnull @.str.25, i32 noundef %21, i32 noundef 0) #19
  br label %320

81:                                               ; preds = %74
  %82 = load i32, ptr %17, align 8
  %83 = and i32 %82, 1
  %84 = icmp eq i32 %83, 0
  br i1 %84, label %89, label %85

85:                                               ; preds = %81
  store i32 16777216, ptr %7, align 4
  %86 = call fastcc i32 @fsi_master_write(ptr noundef %0, i32 noundef %21, i8 noundef zeroext 0, i32 noundef 2304, ptr noundef nonnull %7, i32 noundef 4) #18
  %87 = icmp eq i32 %86, 0
  br i1 %87, label %89, label %88

88:                                               ; preds = %85
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %0, ptr noundef nonnull @.str.26, i32 noundef %21, i32 noundef 0, i32 noundef %86) #19
  br label %89

89:                                               ; preds = %88, %85, %81
  %90 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10), align 4
  %91 = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %90, i32 noundef 3520, i32 noundef 568) #20
  %92 = icmp eq ptr %91, null
  br i1 %92, label %320, label %93

93:                                               ; preds = %89
  %94 = call i32 (ptr, ptr, ...) @dev_set_name(ptr noundef nonnull %91, ptr noundef nonnull @.str.27, i32 noundef %21, i32 noundef 0) #18
  %95 = getelementptr inbounds %struct.device, ptr %91, i32 0, i32 4
  store ptr @cfam_type, ptr %95, align 8
  %96 = getelementptr inbounds %struct.device, ptr %91, i32 0, i32 1
  store ptr %0, ptr %96, align 4
  br i1 %18, label %128, label %97

97:                                               ; preds = %93
  %98 = load ptr, ptr %19, align 8
  %99 = icmp eq ptr %98, null
  br i1 %99, label %128, label %100

100:                                              ; preds = %97
  %101 = call ptr @of_get_next_child(ptr noundef nonnull %98, ptr noundef null) #18
  %102 = icmp eq ptr %101, null
  br i1 %102, label %128, label %103

103:                                              ; preds = %125, %100
  %104 = phi ptr [ %126, %125 ], [ %101, %100 ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #18
  store i32 0, ptr %5, align 4, !annotation !9
  %105 = call i32 @of_n_addr_cells(ptr noundef nonnull %104) #18
  %106 = call i32 @of_n_size_cells(ptr noundef nonnull %104) #18
  %107 = icmp ne i32 %105, 2
  %108 = icmp ne i32 %106, 0
  %109 = select i1 %107, i1 true, i1 %108
  br i1 %109, label %120, label %110

110:                                              ; preds = %103
  %111 = call ptr @of_get_property(ptr noundef nonnull %104, ptr noundef nonnull @.str.42, ptr noundef nonnull %5) #18
  %112 = icmp eq ptr %111, null
  %113 = load i32, ptr %5, align 4
  %114 = icmp ne i32 %113, 8
  %115 = select i1 %112, i1 true, i1 %114
  br i1 %115, label %120, label %116

116:                                              ; preds = %110
  %117 = load i32, ptr %111, align 4
  %118 = call i32 @llvm.bswap.i32(i32 %117) #18
  %119 = icmp eq i32 %118, %21
  br i1 %119, label %121, label %120

120:                                              ; preds = %116, %110, %103
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #18
  br label %125

121:                                              ; preds = %116
  %122 = getelementptr i32, ptr %111, i32 1
  %123 = load i32, ptr %122, align 4
  %124 = icmp eq i32 %123, 0
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #18
  br i1 %124, label %128, label %125

125:                                              ; preds = %121, %120
  %126 = call ptr @of_get_next_child(ptr noundef nonnull %98, ptr noundef nonnull %104) #18
  %127 = icmp eq ptr %126, null
  br i1 %127, label %128, label %103

128:                                              ; preds = %125, %121, %100, %97, %93
  %129 = phi ptr [ null, %97 ], [ null, %93 ], [ null, %100 ], [ %104, %121 ], [ null, %125 ]
  %130 = getelementptr inbounds %struct.device, ptr %91, i32 0, i32 25
  store ptr %129, ptr %130, align 8
  %131 = getelementptr inbounds %struct.device, ptr %91, i32 0, i32 33
  store ptr @fsi_slave_release, ptr %131, align 4
  call void @device_initialize(ptr noundef nonnull %91) #18
  %132 = getelementptr inbounds %struct.fsi_slave, ptr %91, i32 0, i32 6
  store i32 %76, ptr %132, align 4
  %133 = getelementptr inbounds %struct.fsi_slave, ptr %91, i32 0, i32 1
  store ptr %0, ptr %133, align 8
  %134 = getelementptr inbounds %struct.fsi_slave, ptr %91, i32 0, i32 5
  store i32 %21, ptr %134, align 8
  %135 = getelementptr inbounds %struct.fsi_slave, ptr %91, i32 0, i32 4
  store i32 0, ptr %135, align 4
  %136 = getelementptr inbounds %struct.fsi_slave, ptr %91, i32 0, i32 8
  store i32 8388608, ptr %136, align 4
  %137 = getelementptr inbounds %struct.fsi_slave, ptr %91, i32 0, i32 9
  store i8 16, ptr %137, align 8
  %138 = getelementptr inbounds %struct.fsi_slave, ptr %91, i32 0, i32 10
  store i8 16, ptr %138, align 1
  %139 = getelementptr inbounds %struct.fsi_slave, ptr %91, i32 0, i32 7
  store i32 -1, ptr %139, align 8
  %140 = load ptr, ptr %130, align 8
  %141 = icmp eq ptr %140, null
  br i1 %141, label %148, label %142

142:                                              ; preds = %128
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %9) #18
  store i32 0, ptr %9, align 4, !annotation !9
  %143 = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %140, ptr noundef nonnull @.str.28, ptr noundef nonnull %9, i32 noundef 1, i32 noundef 0) #18
  %144 = icmp sgt i32 %143, -1
  br i1 %144, label %145, label %147

145:                                              ; preds = %142
  %146 = load i32, ptr %9, align 4
  store i32 %146, ptr %139, align 8
  br label %147

147:                                              ; preds = %145, %142
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %9) #18
  br label %148

148:                                              ; preds = %147, %128
  store i32 128, ptr %8, align 4
  %149 = call fastcc i32 @fsi_master_write(ptr noundef %0, i32 noundef %21, i8 noundef zeroext 0, i32 noundef 2096, ptr noundef nonnull %8, i32 noundef 4) #18
  %150 = icmp eq i32 %149, 0
  br i1 %150, label %152, label %151

151:                                              ; preds = %148
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %0, ptr noundef nonnull @.str.29, i32 noundef %21, i32 noundef 0, i32 noundef %149) #19
  br label %152

152:                                              ; preds = %151, %148
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #18
  %153 = load i32, ptr %135, align 4
  %154 = load i8, ptr %137, align 8
  %155 = load i8, ptr %138, align 1
  %156 = shl i32 %153, 24
  %157 = and i32 %156, 50331648
  %158 = zext i8 %155 to i32
  %159 = shl nuw nsw i32 %158, 20
  %160 = add nuw nsw i32 %159, 15728640
  %161 = and i32 %160, 15728640
  %162 = zext i8 %154 to i32
  %163 = shl nuw nsw i32 %162, 16
  %164 = add nuw nsw i32 %163, 983040
  %165 = and i32 %164, 983040
  %166 = or i32 %157, %165
  %167 = or i32 %166, %161
  %168 = or i32 %167, -1610610688
  %169 = call i32 @llvm.bswap.i32(i32 %168) #18
  store i32 %169, ptr %4, align 4
  %170 = load ptr, ptr %133, align 8
  %171 = load i32, ptr %134, align 8
  %172 = trunc i32 %153 to i8
  %173 = call fastcc i32 @fsi_master_write(ptr noundef %170, i32 noundef %171, i8 noundef zeroext %172, i32 noundef 2048, ptr noundef nonnull %4, i32 noundef 4) #18
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #18
  %174 = icmp eq i32 %173, 0
  br i1 %174, label %176, label %175

175:                                              ; preds = %152
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %0, ptr noundef nonnull @.str.30, i32 noundef %21, i32 noundef 0, i32 noundef %173) #19
  br label %317

176:                                              ; preds = %152
  %177 = getelementptr inbounds %struct.device, ptr %91, i32 0, i32 27
  %178 = getelementptr inbounds %struct.fsi_slave, ptr %91, i32 0, i32 3
  %179 = load i32, ptr %139, align 8
  %180 = icmp ult i32 %179, 16
  br i1 %180, label %181, label %187

181:                                              ; preds = %176
  %182 = shl nuw nsw i32 %179, 4
  %183 = call i32 @ida_alloc_range(ptr noundef nonnull @fsi_minor_ida, i32 noundef %182, i32 noundef %182, i32 noundef 3264) #18
  %184 = icmp sgt i32 %183, -1
  br i1 %184, label %190, label %185

185:                                              ; preds = %181
  %186 = icmp eq i32 %183, -28
  br i1 %186, label %187, label %317

187:                                              ; preds = %185, %176
  %188 = call i32 @ida_alloc_range(ptr noundef nonnull @fsi_minor_ida, i32 noundef 64, i32 noundef 4095, i32 noundef 3264) #18
  %189 = icmp slt i32 %188, 0
  br i1 %189, label %317, label %190

190:                                              ; preds = %187, %181
  %191 = phi i32 [ %179, %181 ], [ %188, %187 ]
  %192 = phi i32 [ %183, %181 ], [ %188, %187 ]
  %193 = add nuw i32 %191, 1
  store i32 %193, ptr %178, align 8
  %194 = load i32, ptr @fsi_base_dev, align 4
  %195 = add i32 %194, %192
  store i32 %195, ptr %177, align 8
  %196 = getelementptr inbounds %struct.fsi_slave, ptr %91, i32 0, i32 2
  call void @cdev_init(ptr noundef %196, ptr noundef nonnull @cfam_fops) #18
  %197 = call i32 @cdev_device_add(ptr noundef %196, ptr noundef nonnull %91) #18
  %198 = icmp eq i32 %197, 0
  br i1 %198, label %202, label %199

199:                                              ; preds = %190
  call void (ptr, ptr, ...) @_dev_err(ptr noundef nonnull %91, ptr noundef nonnull @.str.31, i32 noundef %197) #19
  %200 = load i32, ptr %177, align 8
  %201 = and i32 %200, 1048575
  call void @ida_free(ptr noundef nonnull @fsi_minor_ida, i32 noundef %201) #18
  br label %317

202:                                              ; preds = %190
  %203 = load ptr, ptr %16, align 4
  %204 = icmp eq ptr %203, null
  br i1 %204, label %209, label %205

205:                                              ; preds = %202
  %206 = load i8, ptr %137, align 8
  %207 = load i8, ptr %138, align 1
  %208 = call i32 %203(ptr noundef %0, i32 noundef %21, i8 noundef zeroext %206, i8 noundef zeroext %207) #18
  br label %209

209:                                              ; preds = %205, %202
  %210 = call i32 @device_create_bin_file(ptr noundef nonnull %91, ptr noundef nonnull @fsi_slave_raw_attr) #18
  %211 = icmp eq i32 %210, 0
  br i1 %211, label %213, label %212

212:                                              ; preds = %209
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef nonnull %91, ptr noundef nonnull @.str.32, i32 noundef %210) #19
  br label %213

213:                                              ; preds = %212, %209
  br label %214

214:                                              ; preds = %313, %213
  %215 = phi i32 [ %217, %313 ], [ 2, %213 ]
  %216 = phi i32 [ %315, %313 ], [ 3072, %213 ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #18
  store i32 0, ptr %3, align 4, !annotation !9
  %217 = add nuw nsw i32 %215, 1
  %218 = shl nuw nsw i32 %217, 2
  %219 = call i32 @fsi_slave_read(ptr noundef %91, i32 noundef %218, ptr noundef nonnull %3, i32 noundef 4) #18
  %220 = icmp eq i32 %219, 0
  br i1 %220, label %222, label %221

221:                                              ; preds = %214
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %91, ptr noundef nonnull @.str.46) #19
  br label %312

222:                                              ; preds = %214
  %223 = load i32, ptr %3, align 4
  %224 = call i32 @llvm.bswap.i32(i32 %223) #18
  %225 = zext i32 %224 to i64
  %226 = call zeroext i8 @crc4(i8 noundef zeroext 0, i64 noundef %225, i32 noundef 32) #18
  %227 = icmp eq i8 %226, 0
  br i1 %227, label %229, label %228

228:                                              ; preds = %222
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %91, ptr noundef nonnull @.str.47, i32 noundef %215) #19
  br label %312

229:                                              ; preds = %222
  %230 = lshr i32 %224, 16
  %231 = lshr i32 %224, 12
  %232 = trunc i32 %231 to i8
  %233 = and i8 %232, 15
  %234 = lshr i32 %224, 4
  %235 = trunc i32 %234 to i8
  %236 = and i32 %224, 4080
  %237 = icmp ne i32 %236, 0
  %238 = and i32 %230, 255
  %239 = icmp ne i32 %238, 0
  %240 = select i1 %237, i1 %239, i1 false
  br i1 %240, label %241, label %310

241:                                              ; preds = %229
  %242 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %243 = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %242, i32 noundef 3520, i32 noundef 488) #20
  %244 = icmp eq ptr %243, null
  br i1 %244, label %312, label %245

245:                                              ; preds = %241
  %246 = getelementptr inbounds %struct.device, ptr %243, i32 0, i32 1
  store ptr %91, ptr %246, align 4
  %247 = getelementptr inbounds %struct.device, ptr %243, i32 0, i32 5
  store ptr @fsi_bus_type, ptr %247, align 4
  %248 = getelementptr inbounds %struct.device, ptr %243, i32 0, i32 33
  store ptr @fsi_device_release, ptr %248, align 4
  %249 = getelementptr inbounds %struct.fsi_device, ptr %243, i32 0, i32 4
  store ptr %91, ptr %249, align 4
  %250 = getelementptr inbounds %struct.fsi_device, ptr %243, i32 0, i32 1
  store i8 %235, ptr %250, align 8
  %251 = getelementptr inbounds %struct.fsi_device, ptr %243, i32 0, i32 2
  store i8 %233, ptr %251, align 1
  %252 = trunc i32 %215 to i8
  %253 = getelementptr inbounds %struct.fsi_device, ptr %243, i32 0, i32 3
  store i8 %252, ptr %253, align 2
  %254 = getelementptr inbounds %struct.fsi_device, ptr %243, i32 0, i32 5
  store i32 %216, ptr %254, align 8
  %255 = shl nuw nsw i32 %238, 10
  %256 = getelementptr inbounds %struct.fsi_device, ptr %243, i32 0, i32 6
  store i32 %255, ptr %256, align 4
  %257 = load ptr, ptr %133, align 8
  %258 = getelementptr inbounds %struct.fsi_master, ptr %257, i32 0, i32 1
  %259 = load i32, ptr %258, align 8
  %260 = load i32, ptr %134, align 8
  %261 = load i32, ptr %135, align 4
  %262 = add nsw i32 %215, -2
  %263 = call i32 (ptr, ptr, ...) @dev_set_name(ptr noundef nonnull %243, ptr noundef nonnull @.str.48, i32 noundef %259, i32 noundef %260, i32 noundef %261, i32 noundef %262) #18
  %264 = load ptr, ptr %249, align 4
  %265 = icmp eq ptr %264, null
  br i1 %265, label %304, label %266

266:                                              ; preds = %245
  %267 = getelementptr inbounds %struct.device, ptr %264, i32 0, i32 25
  %268 = load ptr, ptr %267, align 8
  %269 = icmp eq ptr %268, null
  br i1 %269, label %304, label %270

270:                                              ; preds = %266
  %271 = call ptr @of_get_next_child(ptr noundef nonnull %268, ptr noundef null) #18
  %272 = icmp eq ptr %271, null
  br i1 %272, label %304, label %273

273:                                              ; preds = %301, %270
  %274 = phi ptr [ %302, %301 ], [ %271, %270 ]
  %275 = load i32, ptr %254, align 8
  %276 = load i32, ptr %256, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #18
  store i32 0, ptr %2, align 4, !annotation !9
  %277 = call i32 @of_n_addr_cells(ptr noundef nonnull %274) #18
  %278 = call i32 @of_n_size_cells(ptr noundef nonnull %274) #18
  %279 = icmp ne i32 %277, 1
  %280 = icmp ne i32 %278, 1
  %281 = select i1 %279, i1 true, i1 %280
  br i1 %281, label %301, label %282

282:                                              ; preds = %273
  %283 = call ptr @of_get_property(ptr noundef nonnull %274, ptr noundef nonnull @.str.42, ptr noundef nonnull %2) #18
  %284 = icmp eq ptr %283, null
  %285 = load i32, ptr %2, align 4
  %286 = icmp ne i32 %285, 8
  %287 = select i1 %284, i1 true, i1 %286
  br i1 %287, label %301, label %288

288:                                              ; preds = %282
  %289 = load i32, ptr %283, align 4
  %290 = call i32 @llvm.bswap.i32(i32 %289) #18
  %291 = icmp eq i32 %290, %275
  br i1 %291, label %292, label %301

292:                                              ; preds = %288
  %293 = getelementptr i32, ptr %283, i32 1
  %294 = load i32, ptr %293, align 4
  %295 = call i32 @llvm.bswap.i32(i32 %294) #18
  %296 = icmp eq i32 %295, %276
  br i1 %296, label %300, label %297

297:                                              ; preds = %292
  %298 = getelementptr inbounds %struct.device_node, ptr %274, i32 0, i32 2
  %299 = load ptr, ptr %298, align 4
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef nonnull %243, ptr noundef nonnull @.str.50, ptr noundef %299, i32 noundef %295, i32 noundef %276) #19
  br label %300

300:                                              ; preds = %297, %292
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #18
  br label %304

301:                                              ; preds = %288, %282, %273
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #18
  %302 = call ptr @of_get_next_child(ptr noundef nonnull %268, ptr noundef nonnull %274) #18
  %303 = icmp eq ptr %302, null
  br i1 %303, label %304, label %273

304:                                              ; preds = %301, %300, %270, %266, %245
  %305 = phi ptr [ null, %266 ], [ %274, %300 ], [ null, %245 ], [ null, %270 ], [ null, %301 ]
  %306 = getelementptr inbounds %struct.device, ptr %243, i32 0, i32 25
  store ptr %305, ptr %306, align 8
  %307 = call i32 @device_register(ptr noundef nonnull %243) #18
  %308 = icmp eq i32 %307, 0
  br i1 %308, label %310, label %309

309:                                              ; preds = %304
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %91, ptr noundef nonnull @.str.49, i32 noundef %307) #19
  call void @put_device(ptr noundef nonnull %243) #18
  br label %310

310:                                              ; preds = %309, %304, %229
  %311 = icmp sgt i32 %224, -1
  br i1 %311, label %312, label %313

312:                                              ; preds = %310, %241, %228, %221
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #18
  br label %319

313:                                              ; preds = %310
  %314 = shl nuw nsw i32 %238, 10
  %315 = add i32 %314, %216
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #18
  %316 = icmp eq i32 %217, 256
  br i1 %316, label %319, label %214

317:                                              ; preds = %199, %187, %185, %175
  %318 = load ptr, ptr %130, align 8
  call void @of_node_put(ptr noundef %318) #18
  call void @kfree(ptr noundef nonnull %91) #18
  br label %320

319:                                              ; preds = %313, %312
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #18
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #18
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #18
  br label %325

320:                                              ; preds = %317, %89, %80, %71
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #18
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #18
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #18
  %321 = load ptr, ptr %14, align 8
  %322 = icmp eq ptr %321, null
  br i1 %322, label %325, label %323

323:                                              ; preds = %320
  %324 = call i32 %321(ptr noundef %0, i32 noundef %21, i1 noundef zeroext false) #18
  br label %325

325:                                              ; preds = %323, %320, %319, %69, %66, %24
  %326 = add nuw nsw i32 %21, 1
  %327 = load i32, ptr %10, align 4
  %328 = icmp slt i32 %326, %327
  br i1 %328, label %20, label %329

329:                                              ; preds = %325, %1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @fsi_master_register(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.fsi_master, ptr %0, i32 0, i32 4
  tail call void @__mutex_init(ptr noundef %2, ptr noundef nonnull @.str.1, ptr noundef nonnull @fsi_master_register.__key) #18
  %3 = tail call i32 @ida_alloc_range(ptr noundef nonnull @master_ida, i32 noundef 0, i32 noundef 2147483646, i32 noundef 3264) #18
  %4 = getelementptr inbounds %struct.fsi_master, ptr %0, i32 0, i32 1
  store i32 %3, ptr %4, align 8
  %5 = tail call i32 (ptr, ptr, ...) @dev_set_name(ptr noundef %0, ptr noundef nonnull @.str.2, i32 noundef %3) #18
  %6 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 31
  store ptr @fsi_master_class, ptr %6, align 4
  %7 = tail call i32 @device_register(ptr noundef %0) #18
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %11, label %9

9:                                                ; preds = %1
  %10 = load i32, ptr %4, align 8
  tail call void @ida_free(ptr noundef nonnull @master_ida, i32 noundef %10) #18
  br label %21

11:                                               ; preds = %1
  %12 = icmp eq ptr %0, null
  br i1 %12, label %16, label %13

13:                                               ; preds = %11
  %14 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 25
  %15 = load ptr, ptr %14, align 8
  br label %16

16:                                               ; preds = %13, %11
  %17 = phi ptr [ %15, %13 ], [ null, %11 ]
  %18 = tail call ptr @of_find_property(ptr noundef %17, ptr noundef nonnull @.str.3, ptr noundef null) #18
  %19 = icmp eq ptr %18, null
  br i1 %19, label %20, label %21

20:                                               ; preds = %16
  tail call void @mutex_lock(ptr noundef %2) #18
  tail call fastcc void @fsi_master_scan(ptr noundef %0)
  tail call void @mutex_unlock(ptr noundef %2) #18
  br label %21

21:                                               ; preds = %20, %16, %9
  ret i32 %7
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ida_alloc_range(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_set_name(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_register(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @fsi_master_unregister(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.fsi_master, ptr %0, i32 0, i32 1
  %3 = load i32, ptr %2, align 8
  %4 = icmp sgt i32 %3, -1
  br i1 %4, label %5, label %6

5:                                                ; preds = %1
  tail call void @ida_free(ptr noundef nonnull @master_ida, i32 noundef %3) #18
  store i32 -1, ptr %2, align 8
  br label %6

6:                                                ; preds = %5, %1
  %7 = getelementptr inbounds %struct.fsi_master, ptr %0, i32 0, i32 4
  tail call void @mutex_lock(ptr noundef %7) #18
  %8 = tail call i32 @device_for_each_child(ptr noundef %0, ptr noundef null, ptr noundef nonnull @fsi_master_remove_slave) #18
  tail call void @mutex_unlock(ptr noundef %7) #18
  tail call void @device_unregister(ptr noundef %0) #18
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @device_unregister(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @fsi_driver_register(ptr noundef %0) #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %9, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.fsi_driver, ptr %0, i32 0, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %9, label %7

7:                                                ; preds = %3
  %8 = tail call i32 @driver_register(ptr noundef nonnull %0) #18
  br label %9

9:                                                ; preds = %7, %3, %1
  %10 = phi i32 [ %8, %7 ], [ -22, %1 ], [ -22, %3 ]
  ret i32 %10
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @driver_register(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @fsi_driver_unregister(ptr noundef %0) #0 {
  tail call void @driver_unregister(ptr noundef %0) #18
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @driver_unregister(ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong uwtable(sync)
define internal i32 @fsi_bus_match(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #5 {
  %3 = getelementptr inbounds %struct.fsi_driver, ptr %1, i32 0, i32 1
  %4 = load ptr, ptr %3, align 4
  %5 = icmp eq ptr %4, null
  br i1 %5, label %28, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.fsi_device, ptr %0, i32 0, i32 2
  %8 = load i8, ptr %4, align 1
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %28, label %10

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.fsi_device, ptr %0, i32 0, i32 1
  %12 = load i8, ptr %11, align 8
  br label %13

13:                                               ; preds = %24, %10
  %14 = phi i8 [ %8, %10 ], [ %26, %24 ]
  %15 = phi ptr [ %4, %10 ], [ %25, %24 ]
  %16 = icmp eq i8 %14, %12
  br i1 %16, label %17, label %24

17:                                               ; preds = %13
  %18 = getelementptr inbounds %struct.fsi_device_id, ptr %15, i32 0, i32 1
  %19 = load i8, ptr %18, align 1
  %20 = icmp eq i8 %19, 0
  br i1 %20, label %28, label %21

21:                                               ; preds = %17
  %22 = load i8, ptr %7, align 1
  %23 = icmp eq i8 %19, %22
  br i1 %23, label %28, label %24

24:                                               ; preds = %21, %13
  %25 = getelementptr %struct.fsi_device_id, ptr %15, i32 1
  %26 = load i8, ptr %25, align 1
  %27 = icmp eq i8 %26, 0
  br i1 %27, label %28, label %13

28:                                               ; preds = %24, %21, %17, %6, %2
  %29 = phi i32 [ 0, %2 ], [ 0, %6 ], [ 1, %21 ], [ 1, %17 ], [ 0, %24 ]
  ret i32 %29
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local i32 @init_module() local_unnamed_addr #6 section ".init.text" {
  %1 = tail call i32 @alloc_chrdev_region(ptr noundef nonnull @fsi_base_dev, i32 noundef 0, i32 noundef 4096, ptr noundef nonnull @.str.4) #18
  %2 = icmp eq i32 %1, 0
  br i1 %2, label %3, label %13

3:                                                ; preds = %0
  %4 = tail call i32 @bus_register(ptr noundef nonnull @fsi_bus_type) #18
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %10

6:                                                ; preds = %3
  %7 = tail call i32 @__class_register(ptr noundef nonnull @fsi_master_class, ptr noundef nonnull @fsi_init.__key) #18
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %13, label %9

9:                                                ; preds = %6
  tail call void @bus_unregister(ptr noundef nonnull @fsi_bus_type) #18
  br label %10

10:                                               ; preds = %9, %3
  %11 = phi i32 [ %4, %3 ], [ %7, %9 ]
  %12 = load i32, ptr @fsi_base_dev, align 4
  tail call void @unregister_chrdev_region(i32 noundef %12, i32 noundef 4096) #18
  br label %13

13:                                               ; preds = %10, %6, %0
  %14 = phi i32 [ %11, %10 ], [ %1, %0 ], [ 0, %6 ]
  ret i32 %14
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @cleanup_module() local_unnamed_addr #0 {
  tail call void @class_unregister(ptr noundef nonnull @fsi_master_class) #18
  tail call void @bus_unregister(ptr noundef nonnull @fsi_bus_type) #18
  %1 = load i32, ptr @fsi_base_dev, align 4
  tail call void @unregister_chrdev_region(i32 noundef %1, i32 noundef 4096) #18
  tail call void @ida_destroy(ptr noundef nonnull @fsi_minor_ida) #18
  ret void
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #7

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @trace_event_buffer_reserve(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_event_buffer_commit(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__trace_trigger_soft_disabled(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @trace_raw_output_fsi_master_read(ptr noundef %0, i32 noundef %1, ptr noundef %2) #0 {
  %4 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 16
  %5 = load ptr, ptr %4, align 8
  %6 = tail call i32 @trace_raw_output_prep(ptr noundef %0, ptr noundef %2) #18
  %7 = icmp eq i32 %6, 1
  br i1 %7, label %8, label %21

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 15
  %10 = getelementptr inbounds %struct.trace_event_raw_fsi_master_read, ptr %5, i32 0, i32 1
  %11 = load i32, ptr %10, align 4
  %12 = getelementptr inbounds %struct.trace_event_raw_fsi_master_read, ptr %5, i32 0, i32 2
  %13 = load i32, ptr %12, align 4
  %14 = getelementptr inbounds %struct.trace_event_raw_fsi_master_read, ptr %5, i32 0, i32 3
  %15 = load i32, ptr %14, align 4
  %16 = getelementptr inbounds %struct.trace_event_raw_fsi_master_read, ptr %5, i32 0, i32 4
  %17 = load i32, ptr %16, align 4
  %18 = getelementptr inbounds %struct.trace_event_raw_fsi_master_read, ptr %5, i32 0, i32 5
  %19 = load i32, ptr %18, align 4
  tail call void (ptr, ptr, ...) @trace_event_printf(ptr noundef %0, ptr noundef nonnull @.str.13, i32 noundef %11, i32 noundef %13, i32 noundef %15, i32 noundef %17, i32 noundef %19) #18
  %20 = tail call i32 @trace_handle_return(ptr noundef %9) #18
  br label %21

21:                                               ; preds = %8, %3
  %22 = phi i32 [ %20, %8 ], [ %6, %3 ]
  ret i32 %22
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @trace_raw_output_prep(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_event_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @trace_handle_return(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #8

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @trace_raw_output_fsi_master_write(ptr noundef %0, i32 noundef %1, ptr noundef %2) #0 {
  %4 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 16
  %5 = load ptr, ptr %4, align 8
  %6 = tail call i32 @trace_raw_output_prep(ptr noundef %0, ptr noundef %2) #18
  %7 = icmp eq i32 %6, 1
  br i1 %7, label %8, label %22

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 15
  %10 = getelementptr inbounds %struct.trace_event_raw_fsi_master_write, ptr %5, i32 0, i32 1
  %11 = load i32, ptr %10, align 4
  %12 = getelementptr inbounds %struct.trace_event_raw_fsi_master_write, ptr %5, i32 0, i32 2
  %13 = load i32, ptr %12, align 4
  %14 = getelementptr inbounds %struct.trace_event_raw_fsi_master_write, ptr %5, i32 0, i32 3
  %15 = load i32, ptr %14, align 4
  %16 = getelementptr inbounds %struct.trace_event_raw_fsi_master_write, ptr %5, i32 0, i32 4
  %17 = load i32, ptr %16, align 4
  %18 = getelementptr inbounds %struct.trace_event_raw_fsi_master_write, ptr %5, i32 0, i32 5
  %19 = load i32, ptr %18, align 4
  %20 = getelementptr inbounds %struct.trace_event_raw_fsi_master_write, ptr %5, i32 0, i32 6
  tail call void (ptr, ptr, ...) @trace_event_printf(ptr noundef %0, ptr noundef nonnull @.str.15, i32 noundef %11, i32 noundef %13, i32 noundef %15, i32 noundef %17, i32 noundef %19, i32 noundef %19, ptr noundef %20) #18
  %21 = tail call i32 @trace_handle_return(ptr noundef %9) #18
  br label %22

22:                                               ; preds = %8, %3
  %23 = phi i32 [ %21, %8 ], [ %6, %3 ]
  ret i32 %23
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @trace_raw_output_fsi_master_rw_result(ptr noundef %0, i32 noundef %1, ptr noundef %2) #0 {
  %4 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 16
  %5 = load ptr, ptr %4, align 8
  %6 = tail call i32 @trace_raw_output_prep(ptr noundef %0, ptr noundef %2) #18
  %7 = icmp eq i32 %6, 1
  br i1 %7, label %8, label %28

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 15
  %10 = getelementptr inbounds %struct.trace_event_raw_fsi_master_rw_result, ptr %5, i32 0, i32 1
  %11 = load i32, ptr %10, align 4
  %12 = getelementptr inbounds %struct.trace_event_raw_fsi_master_rw_result, ptr %5, i32 0, i32 2
  %13 = load i32, ptr %12, align 4
  %14 = getelementptr inbounds %struct.trace_event_raw_fsi_master_rw_result, ptr %5, i32 0, i32 3
  %15 = load i32, ptr %14, align 4
  %16 = getelementptr inbounds %struct.trace_event_raw_fsi_master_rw_result, ptr %5, i32 0, i32 4
  %17 = load i32, ptr %16, align 4
  %18 = getelementptr inbounds %struct.trace_event_raw_fsi_master_rw_result, ptr %5, i32 0, i32 5
  %19 = load i32, ptr %18, align 4
  %20 = getelementptr inbounds %struct.trace_event_raw_fsi_master_rw_result, ptr %5, i32 0, i32 6
  %21 = load i8, ptr %20, align 4, !range !21
  %22 = icmp eq i8 %21, 0
  %23 = select i1 %22, ptr @.str.21, ptr @.str.20
  %24 = getelementptr inbounds %struct.trace_event_raw_fsi_master_rw_result, ptr %5, i32 0, i32 7
  %25 = getelementptr inbounds %struct.trace_event_raw_fsi_master_rw_result, ptr %5, i32 0, i32 8
  %26 = load i32, ptr %25, align 4
  tail call void (ptr, ptr, ...) @trace_event_printf(ptr noundef %0, ptr noundef nonnull @.str.19, i32 noundef %11, i32 noundef %13, i32 noundef %15, i32 noundef %17, i32 noundef %19, ptr noundef nonnull %23, i32 noundef %19, ptr noundef %24, i32 noundef %26) #18
  %27 = tail call i32 @trace_handle_return(ptr noundef %9) #18
  br label %28

28:                                               ; preds = %8, %3
  %29 = phi i32 [ %27, %8 ], [ %6, %3 ]
  ret i32 %29
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @trace_raw_output_fsi_master_break(ptr noundef %0, i32 noundef %1, ptr noundef %2) #0 {
  %4 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 16
  %5 = load ptr, ptr %4, align 8
  %6 = tail call i32 @trace_raw_output_prep(ptr noundef %0, ptr noundef %2) #18
  %7 = icmp eq i32 %6, 1
  br i1 %7, label %8, label %15

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 15
  %10 = getelementptr inbounds %struct.trace_event_raw_fsi_master_break, ptr %5, i32 0, i32 1
  %11 = load i32, ptr %10, align 4
  %12 = getelementptr inbounds %struct.trace_event_raw_fsi_master_break, ptr %5, i32 0, i32 2
  %13 = load i32, ptr %12, align 4
  tail call void (ptr, ptr, ...) @trace_event_printf(ptr noundef %0, ptr noundef nonnull @.str.22, i32 noundef %11, i32 noundef %13) #18
  %14 = tail call i32 @trace_handle_return(ptr noundef %9) #18
  br label %15

15:                                               ; preds = %8, %3
  %16 = phi i32 [ %14, %8 ], [ %6, %3 ]
  ret i32 %16
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @perf_trace_buf_alloc(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @perf_trace_run_bpf_submit(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i64 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #9

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.returnaddress(i32 immarg) #10

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.frameaddress.p0(i32 immarg) #10

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.thread.pointer() #10

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #11

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @kasprintf(i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_for_each_child(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @fsi_master_remove_slave(ptr noundef %0, ptr nocapture noundef readnone %1) #0 {
  %3 = tail call i32 @device_for_each_child(ptr noundef %0, ptr noundef null, ptr noundef nonnull @fsi_slave_remove_device) #18
  %4 = getelementptr inbounds %struct.fsi_slave, ptr %0, i32 0, i32 2
  tail call void @cdev_device_del(ptr noundef %4, ptr noundef %0) #18
  tail call void @put_device(ptr noundef %0) #18
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @fsi_slave_remove_device(ptr noundef %0, ptr nocapture noundef readnone %1) #0 {
  tail call void @device_unregister(ptr noundef %0) #18
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @cdev_device_del(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @put_device(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @crc4(i8 noundef zeroext, i64 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #12

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @fsi_slave_release(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 27
  %3 = load i32, ptr %2, align 8
  %4 = and i32 %3, 1048575
  tail call void @ida_free(ptr noundef nonnull @fsi_minor_ida, i32 noundef %4) #18
  %5 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 25
  %6 = load ptr, ptr %5, align 8
  tail call void @of_node_put(ptr noundef %6) #18
  tail call void @kfree(ptr noundef %0) #18
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @device_initialize(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @cdev_init(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cdev_device_add(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #12

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_create_bin_file(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_node_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #13

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #11

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal noalias ptr @cfam_devnode(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr nocapture noundef readnone %2, ptr nocapture noundef readnone %3) #0 {
  %5 = getelementptr inbounds %struct.fsi_slave, ptr %0, i32 0, i32 3
  %6 = load i32, ptr %5, align 8
  %7 = tail call noalias ptr (i32, ptr, ...) @kasprintf(i32 noundef 3264, ptr noundef nonnull @.str.41, i32 noundef %6) #18
  ret ptr %7
}

; Function Attrs: nofree nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @slave_send_echo_show(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr nocapture noundef writeonly %2) #14 {
  %4 = getelementptr inbounds %struct.fsi_slave, ptr %0, i32 0, i32 9
  %5 = load i8, ptr %4, align 8
  %6 = zext i8 %5 to i32
  %7 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %2, ptr noundef nonnull @.str.35, i32 noundef %6)
  ret i32 %7
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @slave_send_echo_store(ptr nocapture noundef %0, ptr nocapture noundef readnone %1, ptr noundef %2, i32 noundef %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = getelementptr inbounds %struct.fsi_slave, ptr %0, i32 0, i32 1
  %8 = load ptr, ptr %7, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #18
  store i32 0, ptr %6, align 4, !annotation !9
  %9 = call i32 @_kstrtoul(ptr noundef %2, i32 noundef 0, ptr noundef nonnull %6) #18
  %10 = icmp slt i32 %9, 0
  br i1 %10, label %51, label %11

11:                                               ; preds = %4
  %12 = load i32, ptr %6, align 4
  %13 = add i32 %12, -17
  %14 = icmp ult i32 %13, -16
  br i1 %14, label %51, label %15

15:                                               ; preds = %11
  %16 = getelementptr inbounds %struct.fsi_master, ptr %8, i32 0, i32 10
  %17 = load ptr, ptr %16, align 4
  %18 = icmp eq ptr %17, null
  br i1 %18, label %51, label %19

19:                                               ; preds = %15
  %20 = trunc i32 %12 to i8
  %21 = getelementptr inbounds %struct.fsi_slave, ptr %0, i32 0, i32 9
  store i8 %20, ptr %21, align 8
  %22 = getelementptr inbounds %struct.fsi_slave, ptr %0, i32 0, i32 10
  store i8 %20, ptr %22, align 1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #18
  %23 = getelementptr inbounds %struct.fsi_slave, ptr %0, i32 0, i32 4
  %24 = load i32, ptr %23, align 4
  %25 = shl i32 %24, 24
  %26 = and i32 %25, 50331648
  %27 = shl nuw nsw i32 %12, 20
  %28 = add nuw nsw i32 %27, 15728640
  %29 = and i32 %28, 15728640
  %30 = shl nuw nsw i32 %12, 16
  %31 = add nuw nsw i32 %30, 983040
  %32 = and i32 %31, 983040
  %33 = or i32 %32, %29
  %34 = or i32 %33, %26
  %35 = or i32 %34, -1610610688
  %36 = call i32 @llvm.bswap.i32(i32 %35) #18
  store i32 %36, ptr %5, align 4
  %37 = load ptr, ptr %7, align 8
  %38 = getelementptr inbounds %struct.fsi_slave, ptr %0, i32 0, i32 5
  %39 = load i32, ptr %38, align 8
  %40 = trunc i32 %24 to i8
  %41 = call fastcc i32 @fsi_master_write(ptr noundef %37, i32 noundef %39, i8 noundef zeroext %40, i32 noundef 2048, ptr noundef nonnull %5, i32 noundef 4) #18
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #18
  %42 = icmp slt i32 %41, 0
  br i1 %42, label %51, label %43

43:                                               ; preds = %19
  %44 = load ptr, ptr %16, align 4
  %45 = icmp eq ptr %44, null
  br i1 %45, label %51, label %46

46:                                               ; preds = %43
  %47 = load i32, ptr %38, align 8
  %48 = load i8, ptr %21, align 8
  %49 = load i8, ptr %22, align 1
  %50 = call i32 %44(ptr noundef %8, i32 noundef %47, i8 noundef zeroext %48, i8 noundef zeroext %49) #18
  br label %51

51:                                               ; preds = %46, %43, %19, %15, %11, %4
  %52 = phi i32 [ -22, %4 ], [ -22, %11 ], [ -6, %15 ], [ %41, %19 ], [ %3, %46 ], [ %3, %43 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #18
  ret i32 %52
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #15

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_kstrtoul(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @chip_id_show(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr nocapture noundef writeonly %2) #14 {
  %4 = getelementptr inbounds %struct.fsi_slave, ptr %0, i32 0, i32 7
  %5 = load i32, ptr %4, align 8
  %6 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %2, ptr noundef nonnull @.str.37, i32 noundef %5)
  ret i32 %6
}

; Function Attrs: nofree nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @cfam_id_show(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr nocapture noundef writeonly %2) #14 {
  %4 = getelementptr inbounds %struct.fsi_slave, ptr %0, i32 0, i32 6
  %5 = load i32, ptr %4, align 4
  %6 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %2, ptr noundef nonnull @.str.39, i32 noundef %5)
  ret i32 %6
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @send_term_store(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr nocapture noundef readnone %2, i32 noundef %3) #0 {
  %5 = getelementptr inbounds %struct.fsi_slave, ptr %0, i32 0, i32 1
  %6 = load ptr, ptr %5, align 8
  %7 = getelementptr inbounds %struct.fsi_master, ptr %6, i32 0, i32 7
  %8 = load ptr, ptr %7, align 8
  %9 = icmp eq ptr %8, null
  br i1 %9, label %17, label %10

10:                                               ; preds = %4
  %11 = getelementptr inbounds %struct.fsi_slave, ptr %0, i32 0, i32 5
  %12 = load i32, ptr %11, align 8
  %13 = getelementptr inbounds %struct.fsi_slave, ptr %0, i32 0, i32 4
  %14 = load i32, ptr %13, align 4
  %15 = trunc i32 %14 to i8
  %16 = tail call i32 %8(ptr noundef %6, i32 noundef %12, i8 noundef zeroext %15) #18
  br label %17

17:                                               ; preds = %10, %4
  %18 = phi i32 [ %3, %10 ], [ -19, %4 ]
  ret i32 %18
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_next_child(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_n_addr_cells(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_n_size_cells(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn writeonly uwtable(sync)
define internal i64 @cfam_llseek(ptr nocapture noundef writeonly %0, i64 noundef %1, i32 noundef %2) #16 {
  switch i32 %2, label %7 [
    i32 1, label %6
    i32 0, label %4
  ]

4:                                                ; preds = %3
  %5 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 10
  store i64 %1, ptr %5, align 8
  br label %6

6:                                                ; preds = %4, %3
  br label %7

7:                                                ; preds = %6, %3
  %8 = phi i64 [ %1, %6 ], [ -22, %3 ]
  ret i64 %8
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @cfam_read(ptr nocapture noundef readonly %0, ptr noundef %1, i32 noundef %2, ptr nocapture noundef %3) #0 {
  %5 = alloca i32, align 4
  %6 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 15
  %7 = load ptr, ptr %6, align 8
  %8 = load i64, ptr %3, align 8
  %9 = icmp ugt i64 %8, 4294967295
  br i1 %9, label %54, label %10

10:                                               ; preds = %4
  %11 = zext i32 %2 to i64
  %12 = add nuw nsw i64 %8, %11
  %13 = icmp ugt i64 %12, 4294967295
  br i1 %13, label %54, label %14

14:                                               ; preds = %10
  %15 = icmp eq i32 %2, 0
  br i1 %15, label %51, label %16

16:                                               ; preds = %14
  %17 = call i32 @llvm.umin.i32(i32 %2, i32 4)
  br label %18

18:                                               ; preds = %46, %16
  %19 = phi i32 [ 0, %16 ], [ %49, %46 ]
  %20 = phi i64 [ %8, %16 ], [ %48, %46 ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #18
  store i32 0, ptr %5, align 4, !annotation !9
  %21 = trunc i64 %20 to i32
  %22 = and i32 %21, 3
  %23 = sub nsw i32 %17, %22
  %24 = call i32 @fsi_slave_read(ptr noundef %7, i32 noundef %21, ptr noundef nonnull %5, i32 noundef %23)
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %44

26:                                               ; preds = %18
  %27 = getelementptr i8, ptr %1, i32 %19
  %28 = icmp ugt i32 %23, 4
  br i1 %28, label %29, label %30, !prof !11

29:                                               ; preds = %26
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.43, i32 noundef 214, i32 noundef 9, ptr noundef nonnull @.str.44, i32 noundef 4, i32 noundef %23) #18
  br label %44

30:                                               ; preds = %26
  %31 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %27, i32 %23, i32 -1090519040) #21, !srcloc !22
  %32 = extractvalue { i32, i32 } %31, 0
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %34, label %41

34:                                               ; preds = %30
  %35 = tail call ptr @llvm.thread.pointer() #18
  %36 = getelementptr inbounds %struct.thread_info, ptr %35, i32 0, i32 3
  %37 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %36) #9, !srcloc !23
  %38 = and i32 %37, -13
  %39 = or i32 %38, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %39) #18, !srcloc !24
  call void asm sideeffect "isb ", "~{memory}"() #18, !srcloc !25
  %40 = call i32 @arm_copy_to_user(ptr noundef %27, ptr noundef nonnull %5, i32 noundef %23) #18
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %37) #18, !srcloc !24
  call void asm sideeffect "isb ", "~{memory}"() #18, !srcloc !25
  br label %41

41:                                               ; preds = %34, %30
  %42 = phi i32 [ %40, %34 ], [ %23, %30 ]
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %46, label %44

44:                                               ; preds = %41, %29, %18
  %45 = phi i32 [ -14, %29 ], [ -14, %41 ], [ %24, %18 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #18
  br label %51

46:                                               ; preds = %41
  %47 = zext i32 %23 to i64
  %48 = add i64 %20, %47
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #18
  %49 = add i32 %23, %19
  %50 = icmp ult i32 %49, %2
  br i1 %50, label %18, label %51

51:                                               ; preds = %46, %44, %14
  %52 = phi i64 [ %20, %44 ], [ %8, %14 ], [ %48, %46 ]
  %53 = phi i32 [ %45, %44 ], [ 0, %14 ], [ %2, %46 ]
  store i64 %52, ptr %3, align 8
  br label %54

54:                                               ; preds = %51, %10, %4
  %55 = phi i32 [ %53, %51 ], [ -22, %4 ], [ -22, %10 ]
  ret i32 %55
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @cfam_write(ptr nocapture noundef readonly %0, ptr noundef %1, i32 noundef %2, ptr nocapture noundef %3) #0 {
  %5 = alloca i32, align 4
  %6 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 15
  %7 = load ptr, ptr %6, align 8
  %8 = load i64, ptr %3, align 8
  %9 = icmp ugt i64 %8, 4294967295
  br i1 %9, label %57, label %10

10:                                               ; preds = %4
  %11 = zext i32 %2 to i64
  %12 = add nuw nsw i64 %8, %11
  %13 = icmp ugt i64 %12, 4294967295
  br i1 %13, label %57, label %14

14:                                               ; preds = %10
  %15 = icmp eq i32 %2, 0
  br i1 %15, label %54, label %16

16:                                               ; preds = %14
  %17 = call i32 @llvm.umin.i32(i32 %2, i32 4)
  br label %18

18:                                               ; preds = %49, %16
  %19 = phi i32 [ 0, %16 ], [ %52, %49 ]
  %20 = phi i64 [ %8, %16 ], [ %51, %49 ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #18
  store i32 0, ptr %5, align 4, !annotation !9
  %21 = trunc i64 %20 to i32
  %22 = and i32 %21, 3
  %23 = sub nsw i32 %17, %22
  %24 = getelementptr i8, ptr %1, i32 %19
  %25 = icmp ugt i32 %23, 4
  br i1 %25, label %26, label %27, !prof !11

26:                                               ; preds = %18
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.43, i32 noundef 214, i32 noundef 9, ptr noundef nonnull @.str.44, i32 noundef 4, i32 noundef %23) #18
  br label %47

27:                                               ; preds = %18
  %28 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %24, i32 %23, i32 -1090519040) #21, !srcloc !26
  %29 = extractvalue { i32, i32 } %28, 0
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %31, label %38, !prof !10

31:                                               ; preds = %27
  %32 = tail call ptr @llvm.thread.pointer() #18
  %33 = getelementptr inbounds %struct.thread_info, ptr %32, i32 0, i32 3
  %34 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %33) #9, !srcloc !23
  %35 = and i32 %34, -13
  %36 = or i32 %35, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %36) #18, !srcloc !24
  call void asm sideeffect "isb ", "~{memory}"() #18, !srcloc !25
  %37 = call i32 @arm_copy_from_user(ptr noundef nonnull %5, ptr noundef %24, i32 noundef %23) #18
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %34) #18, !srcloc !24
  call void asm sideeffect "isb ", "~{memory}"() #18, !srcloc !25
  br label %38

38:                                               ; preds = %31, %27
  %39 = phi i32 [ %37, %31 ], [ %23, %27 ]
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %44, label %41, !prof !10

41:                                               ; preds = %38
  %42 = sub i32 %23, %39
  %43 = getelementptr i8, ptr %5, i32 %42
  call void @llvm.memset.p0.i32(ptr align 1 %43, i8 0, i32 %39, i1 false) #18
  br label %47

44:                                               ; preds = %38
  %45 = call i32 @fsi_slave_write(ptr noundef %7, i32 noundef %21, ptr noundef nonnull %5, i32 noundef %23)
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %49, label %47

47:                                               ; preds = %44, %41, %26
  %48 = phi i32 [ -14, %41 ], [ -14, %26 ], [ %45, %44 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #18
  br label %54

49:                                               ; preds = %44
  %50 = zext i32 %23 to i64
  %51 = add i64 %20, %50
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #18
  %52 = add i32 %23, %19
  %53 = icmp ult i32 %52, %2
  br i1 %53, label %18, label %54

54:                                               ; preds = %49, %47, %14
  %55 = phi i64 [ %20, %47 ], [ %8, %14 ], [ %51, %49 ]
  %56 = phi i32 [ %48, %47 ], [ 0, %14 ], [ %2, %49 ]
  store i64 %55, ptr %3, align 8
  br label %57

57:                                               ; preds = %54, %10, %4
  %58 = phi i32 [ %56, %54 ], [ -22, %4 ], [ -22, %10 ]
  ret i32 %58
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal i32 @cfam_open(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #17 {
  %3 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 43
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr i8, ptr %4, i32 -476
  %6 = getelementptr inbounds %struct.file, ptr %1, i32 0, i32 15
  store ptr %5, ptr %6, align 8
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_to_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_from_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @fsi_slave_sysfs_raw_read(ptr nocapture noundef readnone %0, ptr nocapture noundef %1, ptr nocapture noundef readnone %2, ptr noundef %3, i64 noundef %4, i32 noundef %5) #0 {
  %7 = icmp ugt i64 %4, 4294967295
  br i1 %7, label %35, label %8

8:                                                ; preds = %6
  %9 = zext i32 %5 to i64
  %10 = add nuw nsw i64 %9, %4
  %11 = icmp ugt i64 %10, 4294967295
  br i1 %11, label %35, label %12

12:                                               ; preds = %8
  %13 = icmp eq i32 %5, 0
  br i1 %13, label %35, label %14

14:                                               ; preds = %30, %12
  %15 = phi i32 [ %33, %30 ], [ 0, %12 ]
  %16 = phi i64 [ %32, %30 ], [ %4, %12 ]
  %17 = trunc i64 %16 to i32
  %18 = sub i32 %5, %15
  %19 = or i32 %17, 4
  %20 = tail call i32 @llvm.cttz.i32(i32 %19, i1 true) #18, !range !27
  %21 = shl nuw nsw i32 1, %20
  %22 = tail call i32 @llvm.ctlz.i32(i32 %18, i1 false) #18, !range !28
  %23 = lshr i32 -2147483648, %22
  %24 = or i32 %21, %23
  %25 = tail call i32 @llvm.cttz.i32(i32 %24, i1 true) #18, !range !28
  %26 = shl nuw i32 1, %25
  %27 = getelementptr i8, ptr %3, i32 %15
  %28 = tail call i32 @fsi_slave_read(ptr noundef %1, i32 noundef %17, ptr noundef %27, i32 noundef %26)
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %30, label %35

30:                                               ; preds = %14
  %31 = zext i32 %26 to i64
  %32 = add i64 %16, %31
  %33 = add i32 %26, %15
  %34 = icmp ult i32 %33, %5
  br i1 %34, label %14, label %35

35:                                               ; preds = %30, %14, %12, %8, %6
  %36 = phi i32 [ -22, %6 ], [ -22, %8 ], [ 0, %12 ], [ %28, %14 ], [ %5, %30 ]
  ret i32 %36
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @fsi_slave_sysfs_raw_write(ptr nocapture noundef readnone %0, ptr nocapture noundef %1, ptr nocapture noundef readnone %2, ptr noundef %3, i64 noundef %4, i32 noundef %5) #0 {
  %7 = icmp ugt i64 %4, 4294967295
  br i1 %7, label %35, label %8

8:                                                ; preds = %6
  %9 = zext i32 %5 to i64
  %10 = add nuw nsw i64 %9, %4
  %11 = icmp ugt i64 %10, 4294967295
  br i1 %11, label %35, label %12

12:                                               ; preds = %8
  %13 = icmp eq i32 %5, 0
  br i1 %13, label %35, label %14

14:                                               ; preds = %30, %12
  %15 = phi i32 [ %33, %30 ], [ 0, %12 ]
  %16 = phi i64 [ %32, %30 ], [ %4, %12 ]
  %17 = trunc i64 %16 to i32
  %18 = sub i32 %5, %15
  %19 = or i32 %17, 4
  %20 = tail call i32 @llvm.cttz.i32(i32 %19, i1 true) #18, !range !27
  %21 = shl nuw nsw i32 1, %20
  %22 = tail call i32 @llvm.ctlz.i32(i32 %18, i1 false) #18, !range !28
  %23 = lshr i32 -2147483648, %22
  %24 = or i32 %21, %23
  %25 = tail call i32 @llvm.cttz.i32(i32 %24, i1 true) #18, !range !28
  %26 = shl nuw i32 1, %25
  %27 = getelementptr i8, ptr %3, i32 %15
  %28 = tail call i32 @fsi_slave_write(ptr noundef %1, i32 noundef %17, ptr noundef %27, i32 noundef %26)
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %30, label %35

30:                                               ; preds = %14
  %31 = zext i32 %26 to i64
  %32 = add i64 %16, %31
  %33 = add i32 %26, %15
  %34 = icmp ult i32 %33, %5
  br i1 %34, label %14, label %35

35:                                               ; preds = %30, %14, %12, %8, %6
  %36 = phi i32 [ -22, %6 ], [ -22, %8 ], [ 0, %12 ], [ %28, %14 ], [ %5, %30 ]
  ret i32 %36
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.cttz.i32(i32, i1 immarg) #11

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @fsi_device_release(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 25
  %3 = load ptr, ptr %2, align 8
  tail call void @of_node_put(ptr noundef %3) #18
  tail call void @kfree(ptr noundef %0) #18
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @master_break_store(ptr noundef %0, ptr nocapture noundef readnone %1, ptr nocapture noundef readnone %2, i32 noundef returned %3) #0 {
  %5 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_fsi_master_break, i32 0, i32 1), align 4
  %6 = icmp sgt i32 %5, 0
  br i1 %6, label %7, label %30

7:                                                ; preds = %4
  %8 = tail call ptr @llvm.thread.pointer() #18
  %9 = getelementptr inbounds %struct.thread_info, ptr %8, i32 0, i32 2
  %10 = load i32, ptr %9, align 8
  %11 = lshr i32 %10, 5
  %12 = getelementptr i32, ptr @__cpu_online_mask, i32 %11
  %13 = load volatile i32, ptr %12, align 4
  %14 = and i32 %10, 31
  %15 = shl nuw i32 1, %14
  %16 = and i32 %15, %13
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %30, label %18

18:                                               ; preds = %7
  tail call void asm sideeffect "", "~{memory}"() #18, !srcloc !17
  %19 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_fsi_master_break, i32 0, i32 7), align 4
  %20 = icmp eq ptr %19, null
  br i1 %20, label %29, label %21

21:                                               ; preds = %21, %18
  %22 = phi ptr [ %26, %21 ], [ %19, %18 ]
  %23 = load volatile ptr, ptr %22, align 4
  %24 = getelementptr inbounds %struct.tracepoint_func, ptr %22, i32 0, i32 1
  %25 = load ptr, ptr %24, align 4
  tail call void %23(ptr noundef %25, ptr noundef %0, i32 noundef 0) #18
  %26 = getelementptr %struct.tracepoint_func, ptr %22, i32 1
  %27 = load ptr, ptr %26, align 4
  %28 = icmp eq ptr %27, null
  br i1 %28, label %29, label %21

29:                                               ; preds = %21, %18
  tail call void asm sideeffect "", "~{memory}"() #18, !srcloc !18
  br label %30

30:                                               ; preds = %29, %7, %4
  %31 = getelementptr inbounds %struct.fsi_master, ptr %0, i32 0, i32 8
  %32 = load ptr, ptr %31, align 4
  %33 = icmp eq ptr %32, null
  br i1 %33, label %36, label %34

34:                                               ; preds = %30
  %35 = tail call i32 %32(ptr noundef %0, i32 noundef 0) #18
  br label %36

36:                                               ; preds = %34, %30
  %37 = getelementptr inbounds %struct.fsi_master, ptr %0, i32 0, i32 10
  %38 = load ptr, ptr %37, align 4
  %39 = icmp eq ptr %38, null
  br i1 %39, label %42, label %40

40:                                               ; preds = %36
  %41 = tail call i32 %38(ptr noundef %0, i32 noundef 0, i8 noundef zeroext 16, i8 noundef zeroext 16) #18
  br label %42

42:                                               ; preds = %40, %36
  ret i32 %3
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @master_rescan_store(ptr noundef %0, ptr nocapture noundef readnone %1, ptr nocapture noundef readnone %2, i32 noundef returned %3) #0 {
  %5 = getelementptr inbounds %struct.fsi_master, ptr %0, i32 0, i32 4
  tail call void @mutex_lock(ptr noundef %5) #18
  %6 = tail call i32 @device_for_each_child(ptr noundef %0, ptr noundef null, ptr noundef nonnull @fsi_master_remove_slave) #18
  tail call fastcc void @fsi_master_scan(ptr noundef %0) #18
  tail call void @mutex_unlock(ptr noundef %5) #18
  ret i32 %3
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @alloc_chrdev_region(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bus_register(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__class_register(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @bus_unregister(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @unregister_chrdev_region(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @class_unregister(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ida_destroy(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #11

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { argmemonly nofree nounwind willreturn writeonly }
attributes #8 = { argmemonly nofree nounwind willreturn }
attributes #9 = { nounwind readonly }
attributes #10 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #11 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #12 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #13 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #14 = { nofree nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #15 = { nofree nounwind null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #16 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #17 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #18 = { nounwind }
attributes #19 = { cold nounwind }
attributes #20 = { nounwind allocsize(2) }
attributes #21 = { nounwind readnone }

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
!12 = !{i64 640203}
!13 = !{i64 2152127619}
!14 = !{i64 2152127817}
!15 = !{i64 2152156380}
!16 = !{i64 2152156624}
!17 = !{i64 2152169704}
!18 = !{i64 2152169872}
!19 = !{i64 2152141672}
!20 = !{i64 2152141884}
!21 = !{i8 0, i8 2}
!22 = !{i64 2151727521, i64 2151727546}
!23 = !{i64 4223055}
!24 = !{i64 4223252}
!25 = !{i64 2151708531}
!26 = !{i64 2151726943, i64 2151726968}
!27 = !{i32 0, i32 3}
!28 = !{i32 0, i32 33}
