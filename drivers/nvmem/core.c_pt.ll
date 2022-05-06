; ModuleID = '/llk/IR/drivers/nvmem/core.c_pt.bc'
source_filename = "../drivers/nvmem/core.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_nvmem_register_notifier:\09\09\09\09\09"
module asm "\09.asciz \09\22nvmem_register_notifier\22\09\09\09\09\09"
module asm "__kstrtabns_nvmem_register_notifier:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_nvmem_unregister_notifier:\09\09\09\09\09"
module asm "\09.asciz \09\22nvmem_unregister_notifier\22\09\09\09\09\09"
module asm "__kstrtabns_nvmem_unregister_notifier:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_nvmem_register:\09\09\09\09\09"
module asm "\09.asciz \09\22nvmem_register\22\09\09\09\09\09"
module asm "__kstrtabns_nvmem_register:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_nvmem_unregister:\09\09\09\09\09"
module asm "\09.asciz \09\22nvmem_unregister\22\09\09\09\09\09"
module asm "__kstrtabns_nvmem_unregister:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_devm_nvmem_register:\09\09\09\09\09"
module asm "\09.asciz \09\22devm_nvmem_register\22\09\09\09\09\09"
module asm "__kstrtabns_devm_nvmem_register:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_devm_nvmem_unregister:\09\09\09\09\09"
module asm "\09.asciz \09\22devm_nvmem_unregister\22\09\09\09\09\09"
module asm "__kstrtabns_devm_nvmem_unregister:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_of_nvmem_device_get:\09\09\09\09\09"
module asm "\09.asciz \09\22of_nvmem_device_get\22\09\09\09\09\09"
module asm "__kstrtabns_of_nvmem_device_get:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_nvmem_device_get:\09\09\09\09\09"
module asm "\09.asciz \09\22nvmem_device_get\22\09\09\09\09\09"
module asm "__kstrtabns_nvmem_device_get:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_nvmem_device_find:\09\09\09\09\09"
module asm "\09.asciz \09\22nvmem_device_find\22\09\09\09\09\09"
module asm "__kstrtabns_nvmem_device_find:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_devm_nvmem_device_put:\09\09\09\09\09"
module asm "\09.asciz \09\22devm_nvmem_device_put\22\09\09\09\09\09"
module asm "__kstrtabns_devm_nvmem_device_put:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_nvmem_device_put:\09\09\09\09\09"
module asm "\09.asciz \09\22nvmem_device_put\22\09\09\09\09\09"
module asm "__kstrtabns_nvmem_device_put:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_devm_nvmem_device_get:\09\09\09\09\09"
module asm "\09.asciz \09\22devm_nvmem_device_get\22\09\09\09\09\09"
module asm "__kstrtabns_devm_nvmem_device_get:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_of_nvmem_cell_get:\09\09\09\09\09"
module asm "\09.asciz \09\22of_nvmem_cell_get\22\09\09\09\09\09"
module asm "__kstrtabns_of_nvmem_cell_get:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_nvmem_cell_get:\09\09\09\09\09"
module asm "\09.asciz \09\22nvmem_cell_get\22\09\09\09\09\09"
module asm "__kstrtabns_nvmem_cell_get:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_devm_nvmem_cell_get:\09\09\09\09\09"
module asm "\09.asciz \09\22devm_nvmem_cell_get\22\09\09\09\09\09"
module asm "__kstrtabns_devm_nvmem_cell_get:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_devm_nvmem_cell_put:\09\09\09\09\09"
module asm "\09.asciz \09\22devm_nvmem_cell_put\22\09\09\09\09\09"
module asm "__kstrtabns_devm_nvmem_cell_put:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_nvmem_cell_put:\09\09\09\09\09"
module asm "\09.asciz \09\22nvmem_cell_put\22\09\09\09\09\09"
module asm "__kstrtabns_nvmem_cell_put:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_nvmem_cell_read:\09\09\09\09\09"
module asm "\09.asciz \09\22nvmem_cell_read\22\09\09\09\09\09"
module asm "__kstrtabns_nvmem_cell_read:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_nvmem_cell_write:\09\09\09\09\09"
module asm "\09.asciz \09\22nvmem_cell_write\22\09\09\09\09\09"
module asm "__kstrtabns_nvmem_cell_write:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_nvmem_cell_read_u8:\09\09\09\09\09"
module asm "\09.asciz \09\22nvmem_cell_read_u8\22\09\09\09\09\09"
module asm "__kstrtabns_nvmem_cell_read_u8:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_nvmem_cell_read_u16:\09\09\09\09\09"
module asm "\09.asciz \09\22nvmem_cell_read_u16\22\09\09\09\09\09"
module asm "__kstrtabns_nvmem_cell_read_u16:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_nvmem_cell_read_u32:\09\09\09\09\09"
module asm "\09.asciz \09\22nvmem_cell_read_u32\22\09\09\09\09\09"
module asm "__kstrtabns_nvmem_cell_read_u32:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_nvmem_cell_read_u64:\09\09\09\09\09"
module asm "\09.asciz \09\22nvmem_cell_read_u64\22\09\09\09\09\09"
module asm "__kstrtabns_nvmem_cell_read_u64:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_nvmem_cell_read_variable_le_u32:\09\09\09\09\09"
module asm "\09.asciz \09\22nvmem_cell_read_variable_le_u32\22\09\09\09\09\09"
module asm "__kstrtabns_nvmem_cell_read_variable_le_u32:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_nvmem_cell_read_variable_le_u64:\09\09\09\09\09"
module asm "\09.asciz \09\22nvmem_cell_read_variable_le_u64\22\09\09\09\09\09"
module asm "__kstrtabns_nvmem_cell_read_variable_le_u64:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_nvmem_device_cell_read:\09\09\09\09\09"
module asm "\09.asciz \09\22nvmem_device_cell_read\22\09\09\09\09\09"
module asm "__kstrtabns_nvmem_device_cell_read:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_nvmem_device_cell_write:\09\09\09\09\09"
module asm "\09.asciz \09\22nvmem_device_cell_write\22\09\09\09\09\09"
module asm "__kstrtabns_nvmem_device_cell_write:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_nvmem_device_read:\09\09\09\09\09"
module asm "\09.asciz \09\22nvmem_device_read\22\09\09\09\09\09"
module asm "__kstrtabns_nvmem_device_read:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_nvmem_device_write:\09\09\09\09\09"
module asm "\09.asciz \09\22nvmem_device_write\22\09\09\09\09\09"
module asm "__kstrtabns_nvmem_device_write:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_nvmem_add_cell_table:\09\09\09\09\09"
module asm "\09.asciz \09\22nvmem_add_cell_table\22\09\09\09\09\09"
module asm "__kstrtabns_nvmem_add_cell_table:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_nvmem_del_cell_table:\09\09\09\09\09"
module asm "\09.asciz \09\22nvmem_del_cell_table\22\09\09\09\09\09"
module asm "__kstrtabns_nvmem_del_cell_table:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_nvmem_add_cell_lookups:\09\09\09\09\09"
module asm "\09.asciz \09\22nvmem_add_cell_lookups\22\09\09\09\09\09"
module asm "__kstrtabns_nvmem_add_cell_lookups:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_nvmem_del_cell_lookups:\09\09\09\09\09"
module asm "\09.asciz \09\22nvmem_del_cell_lookups\22\09\09\09\09\09"
module asm "__kstrtabns_nvmem_del_cell_lookups:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_nvmem_dev_name:\09\09\09\09\09"
module asm "\09.asciz \09\22nvmem_dev_name\22\09\09\09\09\09"
module asm "__kstrtabns_nvmem_dev_name:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.blocking_notifier_head = type { %struct.rw_semaphore, ptr }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head }
%struct.atomic_t = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon }
%union.anon = type { i32 }
%struct.list_head = type { ptr, ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.ida = type { %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.device_type = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.bus_type = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.lock_class_key, i8 }
%struct.lock_class_key = type {}
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.attribute_group = type { ptr, ptr, ptr, ptr, ptr }
%struct.device_attribute = type { %struct.attribute, ptr, ptr }
%struct.attribute = type { ptr, i16 }
%struct.bin_attribute = type { %struct.attribute, i32, ptr, ptr, ptr, ptr, ptr }
%struct.nvmem_config = type { ptr, ptr, i32, ptr, ptr, ptr, i32, ptr, i32, i32, i8, i8, i8, ptr, i8, ptr, ptr, ptr, i32, i32, i32, ptr, i8, ptr }
%struct.nvmem_device = type { ptr, %struct.device, i32, i32, i32, %struct.kref, i32, i8, i8, i32, i32, %struct.bin_attribute, ptr, %struct.list_head, ptr, i32, ptr, ptr, ptr, ptr, ptr }
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
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.nvmem_keepout = type { i32, i32, i8 }
%struct.nvmem_cell_info = type { ptr, i32, i32, i32, i32 }
%struct.nvmem_cell_entry = type { ptr, i32, i32, i32, i32, ptr, ptr, %struct.list_head }
%struct.of_phandle_args = type { ptr, i32, [16 x i32] }
%struct.nvmem_cell = type { ptr, ptr }
%struct.nvmem_cell_table = type { ptr, ptr, i32, %struct.list_head }
%struct.nvmem_cell_lookup = type { ptr, ptr, ptr, ptr, %struct.list_head }

@nvmem_notifier = internal global %struct.blocking_notifier_head { %struct.rw_semaphore { %struct.atomic_t zeroinitializer, %struct.atomic_t zeroinitializer, %struct.optimistic_spin_queue zeroinitializer, %struct.raw_spinlock zeroinitializer, %struct.list_head { ptr getelementptr (i8, ptr @nvmem_notifier, i64 16), ptr getelementptr (i8, ptr @nvmem_notifier, i64 16) } }, ptr null }, align 4
@__kstrtab_nvmem_register_notifier = external dso_local constant [0 x i8], align 1
@__kstrtabns_nvmem_register_notifier = external dso_local constant [0 x i8], align 1
@__ksymtab_nvmem_register_notifier = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @nvmem_register_notifier to i32), ptr @__kstrtab_nvmem_register_notifier, ptr @__kstrtabns_nvmem_register_notifier }, section "___ksymtab_gpl+nvmem_register_notifier", align 4
@__kstrtab_nvmem_unregister_notifier = external dso_local constant [0 x i8], align 1
@__kstrtabns_nvmem_unregister_notifier = external dso_local constant [0 x i8], align 1
@__ksymtab_nvmem_unregister_notifier = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @nvmem_unregister_notifier to i32), ptr @__kstrtab_nvmem_unregister_notifier, ptr @__kstrtabns_nvmem_unregister_notifier }, section "___ksymtab_gpl+nvmem_unregister_notifier", align 4
@nvmem_ida = internal global %struct.ida { %struct.xarray { %struct.spinlock zeroinitializer, i32 33554437, ptr null } }, align 4
@.str = private unnamed_addr constant [3 x i8] c"wp\00", align 1
@nvmem_provider_type = internal constant %struct.device_type { ptr null, ptr null, ptr null, ptr null, ptr @nvmem_release, ptr null }, align 4
@nvmem_bus_type = internal global %struct.bus_type { ptr @.str.3, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.lock_class_key zeroinitializer, i8 0 }, align 4
@.str.1 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"%s%d\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"nvmem\00", align 1
@.str.4 = private unnamed_addr constant [10 x i8] c"read-only\00", align 1
@nvmem_dev_groups = internal global [2 x ptr] [ptr @nvmem_bin_group, ptr null], align 4
@__kstrtab_nvmem_register = external dso_local constant [0 x i8], align 1
@__kstrtabns_nvmem_register = external dso_local constant [0 x i8], align 1
@__ksymtab_nvmem_register = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @nvmem_register to i32), ptr @__kstrtab_nvmem_register, ptr @__kstrtabns_nvmem_register }, section "___ksymtab_gpl+nvmem_register", align 4
@__kstrtab_nvmem_unregister = external dso_local constant [0 x i8], align 1
@__kstrtabns_nvmem_unregister = external dso_local constant [0 x i8], align 1
@__ksymtab_nvmem_unregister = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @nvmem_unregister to i32), ptr @__kstrtab_nvmem_unregister, ptr @__kstrtabns_nvmem_unregister }, section "___ksymtab_gpl+nvmem_unregister", align 4
@.str.5 = private unnamed_addr constant [19 x i8] c"devm_nvmem_release\00", align 1
@__kstrtab_devm_nvmem_register = external dso_local constant [0 x i8], align 1
@__kstrtabns_devm_nvmem_register = external dso_local constant [0 x i8], align 1
@__ksymtab_devm_nvmem_register = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @devm_nvmem_register to i32), ptr @__kstrtab_devm_nvmem_register, ptr @__kstrtabns_devm_nvmem_register }, section "___ksymtab_gpl+devm_nvmem_register", align 4
@__kstrtab_devm_nvmem_unregister = external dso_local constant [0 x i8], align 1
@__kstrtabns_devm_nvmem_unregister = external dso_local constant [0 x i8], align 1
@__ksymtab_devm_nvmem_unregister = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @devm_nvmem_unregister to i32), ptr @__kstrtab_devm_nvmem_unregister, ptr @__kstrtabns_devm_nvmem_unregister }, section "___ksymtab+devm_nvmem_unregister", align 4
@.str.6 = private unnamed_addr constant [12 x i8] c"nvmem-names\00", align 1
@__kstrtab_of_nvmem_device_get = external dso_local constant [0 x i8], align 1
@__kstrtabns_of_nvmem_device_get = external dso_local constant [0 x i8], align 1
@__ksymtab_of_nvmem_device_get = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @of_nvmem_device_get to i32), ptr @__kstrtab_of_nvmem_device_get, ptr @__kstrtabns_of_nvmem_device_get }, section "___ksymtab_gpl+of_nvmem_device_get", align 4
@__kstrtab_nvmem_device_get = external dso_local constant [0 x i8], align 1
@__kstrtabns_nvmem_device_get = external dso_local constant [0 x i8], align 1
@__ksymtab_nvmem_device_get = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @nvmem_device_get to i32), ptr @__kstrtab_nvmem_device_get, ptr @__kstrtabns_nvmem_device_get }, section "___ksymtab_gpl+nvmem_device_get", align 4
@__kstrtab_nvmem_device_find = external dso_local constant [0 x i8], align 1
@__kstrtabns_nvmem_device_find = external dso_local constant [0 x i8], align 1
@__ksymtab_nvmem_device_find = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @nvmem_device_find to i32), ptr @__kstrtab_nvmem_device_find, ptr @__kstrtabns_nvmem_device_find }, section "___ksymtab_gpl+nvmem_device_find", align 4
@.str.7 = private unnamed_addr constant [21 x i8] c"drivers/nvmem/core.c\00", align 1
@__kstrtab_devm_nvmem_device_put = external dso_local constant [0 x i8], align 1
@__kstrtabns_devm_nvmem_device_put = external dso_local constant [0 x i8], align 1
@__ksymtab_devm_nvmem_device_put = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @devm_nvmem_device_put to i32), ptr @__kstrtab_devm_nvmem_device_put, ptr @__kstrtabns_devm_nvmem_device_put }, section "___ksymtab_gpl+devm_nvmem_device_put", align 4
@__kstrtab_nvmem_device_put = external dso_local constant [0 x i8], align 1
@__kstrtabns_nvmem_device_put = external dso_local constant [0 x i8], align 1
@__ksymtab_nvmem_device_put = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @nvmem_device_put to i32), ptr @__kstrtab_nvmem_device_put, ptr @__kstrtabns_nvmem_device_put }, section "___ksymtab_gpl+nvmem_device_put", align 4
@.str.8 = private unnamed_addr constant [26 x i8] c"devm_nvmem_device_release\00", align 1
@__kstrtab_devm_nvmem_device_get = external dso_local constant [0 x i8], align 1
@__kstrtabns_devm_nvmem_device_get = external dso_local constant [0 x i8], align 1
@__ksymtab_devm_nvmem_device_get = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @devm_nvmem_device_get to i32), ptr @__kstrtab_devm_nvmem_device_get, ptr @__kstrtabns_devm_nvmem_device_get }, section "___ksymtab_gpl+devm_nvmem_device_get", align 4
@.str.9 = private unnamed_addr constant [17 x i8] c"nvmem-cell-names\00", align 1
@.str.10 = private unnamed_addr constant [12 x i8] c"nvmem-cells\00", align 1
@__kstrtab_of_nvmem_cell_get = external dso_local constant [0 x i8], align 1
@__kstrtabns_of_nvmem_cell_get = external dso_local constant [0 x i8], align 1
@__ksymtab_of_nvmem_cell_get = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @of_nvmem_cell_get to i32), ptr @__kstrtab_of_nvmem_cell_get, ptr @__kstrtabns_of_nvmem_cell_get }, section "___ksymtab_gpl+of_nvmem_cell_get", align 4
@__kstrtab_nvmem_cell_get = external dso_local constant [0 x i8], align 1
@__kstrtabns_nvmem_cell_get = external dso_local constant [0 x i8], align 1
@__ksymtab_nvmem_cell_get = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @nvmem_cell_get to i32), ptr @__kstrtab_nvmem_cell_get, ptr @__kstrtabns_nvmem_cell_get }, section "___ksymtab_gpl+nvmem_cell_get", align 4
@.str.11 = private unnamed_addr constant [24 x i8] c"devm_nvmem_cell_release\00", align 1
@__kstrtab_devm_nvmem_cell_get = external dso_local constant [0 x i8], align 1
@__kstrtabns_devm_nvmem_cell_get = external dso_local constant [0 x i8], align 1
@__ksymtab_devm_nvmem_cell_get = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @devm_nvmem_cell_get to i32), ptr @__kstrtab_devm_nvmem_cell_get, ptr @__kstrtabns_devm_nvmem_cell_get }, section "___ksymtab_gpl+devm_nvmem_cell_get", align 4
@__kstrtab_devm_nvmem_cell_put = external dso_local constant [0 x i8], align 1
@__kstrtabns_devm_nvmem_cell_put = external dso_local constant [0 x i8], align 1
@__ksymtab_devm_nvmem_cell_put = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @devm_nvmem_cell_put to i32), ptr @__kstrtab_devm_nvmem_cell_put, ptr @__kstrtabns_devm_nvmem_cell_put }, section "___ksymtab+devm_nvmem_cell_put", align 4
@__kstrtab_nvmem_cell_put = external dso_local constant [0 x i8], align 1
@__kstrtabns_nvmem_cell_put = external dso_local constant [0 x i8], align 1
@__ksymtab_nvmem_cell_put = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @nvmem_cell_put to i32), ptr @__kstrtab_nvmem_cell_put, ptr @__kstrtabns_nvmem_cell_put }, section "___ksymtab_gpl+nvmem_cell_put", align 4
@__kstrtab_nvmem_cell_read = external dso_local constant [0 x i8], align 1
@__kstrtabns_nvmem_cell_read = external dso_local constant [0 x i8], align 1
@__ksymtab_nvmem_cell_read = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @nvmem_cell_read to i32), ptr @__kstrtab_nvmem_cell_read, ptr @__kstrtabns_nvmem_cell_read }, section "___ksymtab_gpl+nvmem_cell_read", align 4
@__kstrtab_nvmem_cell_write = external dso_local constant [0 x i8], align 1
@__kstrtabns_nvmem_cell_write = external dso_local constant [0 x i8], align 1
@__ksymtab_nvmem_cell_write = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @nvmem_cell_write to i32), ptr @__kstrtab_nvmem_cell_write, ptr @__kstrtabns_nvmem_cell_write }, section "___ksymtab_gpl+nvmem_cell_write", align 4
@__kstrtab_nvmem_cell_read_u8 = external dso_local constant [0 x i8], align 1
@__kstrtabns_nvmem_cell_read_u8 = external dso_local constant [0 x i8], align 1
@__ksymtab_nvmem_cell_read_u8 = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @nvmem_cell_read_u8 to i32), ptr @__kstrtab_nvmem_cell_read_u8, ptr @__kstrtabns_nvmem_cell_read_u8 }, section "___ksymtab_gpl+nvmem_cell_read_u8", align 4
@__kstrtab_nvmem_cell_read_u16 = external dso_local constant [0 x i8], align 1
@__kstrtabns_nvmem_cell_read_u16 = external dso_local constant [0 x i8], align 1
@__ksymtab_nvmem_cell_read_u16 = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @nvmem_cell_read_u16 to i32), ptr @__kstrtab_nvmem_cell_read_u16, ptr @__kstrtabns_nvmem_cell_read_u16 }, section "___ksymtab_gpl+nvmem_cell_read_u16", align 4
@__kstrtab_nvmem_cell_read_u32 = external dso_local constant [0 x i8], align 1
@__kstrtabns_nvmem_cell_read_u32 = external dso_local constant [0 x i8], align 1
@__ksymtab_nvmem_cell_read_u32 = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @nvmem_cell_read_u32 to i32), ptr @__kstrtab_nvmem_cell_read_u32, ptr @__kstrtabns_nvmem_cell_read_u32 }, section "___ksymtab_gpl+nvmem_cell_read_u32", align 4
@__kstrtab_nvmem_cell_read_u64 = external dso_local constant [0 x i8], align 1
@__kstrtabns_nvmem_cell_read_u64 = external dso_local constant [0 x i8], align 1
@__ksymtab_nvmem_cell_read_u64 = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @nvmem_cell_read_u64 to i32), ptr @__kstrtab_nvmem_cell_read_u64, ptr @__kstrtabns_nvmem_cell_read_u64 }, section "___ksymtab_gpl+nvmem_cell_read_u64", align 4
@__kstrtab_nvmem_cell_read_variable_le_u32 = external dso_local constant [0 x i8], align 1
@__kstrtabns_nvmem_cell_read_variable_le_u32 = external dso_local constant [0 x i8], align 1
@__ksymtab_nvmem_cell_read_variable_le_u32 = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @nvmem_cell_read_variable_le_u32 to i32), ptr @__kstrtab_nvmem_cell_read_variable_le_u32, ptr @__kstrtabns_nvmem_cell_read_variable_le_u32 }, section "___ksymtab_gpl+nvmem_cell_read_variable_le_u32", align 4
@__kstrtab_nvmem_cell_read_variable_le_u64 = external dso_local constant [0 x i8], align 1
@__kstrtabns_nvmem_cell_read_variable_le_u64 = external dso_local constant [0 x i8], align 1
@__ksymtab_nvmem_cell_read_variable_le_u64 = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @nvmem_cell_read_variable_le_u64 to i32), ptr @__kstrtab_nvmem_cell_read_variable_le_u64, ptr @__kstrtabns_nvmem_cell_read_variable_le_u64 }, section "___ksymtab_gpl+nvmem_cell_read_variable_le_u64", align 4
@__kstrtab_nvmem_device_cell_read = external dso_local constant [0 x i8], align 1
@__kstrtabns_nvmem_device_cell_read = external dso_local constant [0 x i8], align 1
@__ksymtab_nvmem_device_cell_read = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @nvmem_device_cell_read to i32), ptr @__kstrtab_nvmem_device_cell_read, ptr @__kstrtabns_nvmem_device_cell_read }, section "___ksymtab_gpl+nvmem_device_cell_read", align 4
@__kstrtab_nvmem_device_cell_write = external dso_local constant [0 x i8], align 1
@__kstrtabns_nvmem_device_cell_write = external dso_local constant [0 x i8], align 1
@__ksymtab_nvmem_device_cell_write = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @nvmem_device_cell_write to i32), ptr @__kstrtab_nvmem_device_cell_write, ptr @__kstrtabns_nvmem_device_cell_write }, section "___ksymtab_gpl+nvmem_device_cell_write", align 4
@__kstrtab_nvmem_device_read = external dso_local constant [0 x i8], align 1
@__kstrtabns_nvmem_device_read = external dso_local constant [0 x i8], align 1
@__ksymtab_nvmem_device_read = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @nvmem_device_read to i32), ptr @__kstrtab_nvmem_device_read, ptr @__kstrtabns_nvmem_device_read }, section "___ksymtab_gpl+nvmem_device_read", align 4
@__kstrtab_nvmem_device_write = external dso_local constant [0 x i8], align 1
@__kstrtabns_nvmem_device_write = external dso_local constant [0 x i8], align 1
@__ksymtab_nvmem_device_write = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @nvmem_device_write to i32), ptr @__kstrtab_nvmem_device_write, ptr @__kstrtabns_nvmem_device_write }, section "___ksymtab_gpl+nvmem_device_write", align 4
@nvmem_cell_mutex = internal global %struct.mutex { %struct.atomic_t zeroinitializer, %struct.raw_spinlock zeroinitializer, %struct.optimistic_spin_queue zeroinitializer, %struct.list_head { ptr getelementptr (i8, ptr @nvmem_cell_mutex, i64 12), ptr getelementptr (i8, ptr @nvmem_cell_mutex, i64 12) } }, align 4
@nvmem_cell_tables = internal global %struct.list_head { ptr @nvmem_cell_tables, ptr @nvmem_cell_tables }, align 4
@__kstrtab_nvmem_add_cell_table = external dso_local constant [0 x i8], align 1
@__kstrtabns_nvmem_add_cell_table = external dso_local constant [0 x i8], align 1
@__ksymtab_nvmem_add_cell_table = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @nvmem_add_cell_table to i32), ptr @__kstrtab_nvmem_add_cell_table, ptr @__kstrtabns_nvmem_add_cell_table }, section "___ksymtab_gpl+nvmem_add_cell_table", align 4
@__kstrtab_nvmem_del_cell_table = external dso_local constant [0 x i8], align 1
@__kstrtabns_nvmem_del_cell_table = external dso_local constant [0 x i8], align 1
@__ksymtab_nvmem_del_cell_table = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @nvmem_del_cell_table to i32), ptr @__kstrtab_nvmem_del_cell_table, ptr @__kstrtabns_nvmem_del_cell_table }, section "___ksymtab_gpl+nvmem_del_cell_table", align 4
@nvmem_lookup_mutex = internal global %struct.mutex { %struct.atomic_t zeroinitializer, %struct.raw_spinlock zeroinitializer, %struct.optimistic_spin_queue zeroinitializer, %struct.list_head { ptr getelementptr (i8, ptr @nvmem_lookup_mutex, i64 12), ptr getelementptr (i8, ptr @nvmem_lookup_mutex, i64 12) } }, align 4
@nvmem_lookup_list = internal global %struct.list_head { ptr @nvmem_lookup_list, ptr @nvmem_lookup_list }, align 4
@__kstrtab_nvmem_add_cell_lookups = external dso_local constant [0 x i8], align 1
@__kstrtabns_nvmem_add_cell_lookups = external dso_local constant [0 x i8], align 1
@__ksymtab_nvmem_add_cell_lookups = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @nvmem_add_cell_lookups to i32), ptr @__kstrtab_nvmem_add_cell_lookups, ptr @__kstrtabns_nvmem_add_cell_lookups }, section "___ksymtab_gpl+nvmem_add_cell_lookups", align 4
@__kstrtab_nvmem_del_cell_lookups = external dso_local constant [0 x i8], align 1
@__kstrtabns_nvmem_del_cell_lookups = external dso_local constant [0 x i8], align 1
@__ksymtab_nvmem_del_cell_lookups = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @nvmem_del_cell_lookups to i32), ptr @__kstrtab_nvmem_del_cell_lookups, ptr @__kstrtabns_nvmem_del_cell_lookups }, section "___ksymtab_gpl+nvmem_del_cell_lookups", align 4
@__kstrtab_nvmem_dev_name = external dso_local constant [0 x i8], align 1
@__kstrtabns_nvmem_dev_name = external dso_local constant [0 x i8], align 1
@__ksymtab_nvmem_dev_name = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @nvmem_dev_name to i32), ptr @__kstrtab_nvmem_dev_name, ptr @__kstrtabns_nvmem_dev_name }, section "___ksymtab_gpl+nvmem_dev_name", align 4
@__initcall__kmod_nvmem_core__210_1973_nvmem_init4 = internal global ptr @nvmem_init, section ".initcall4.init", align 4
@__exitcall_nvmem_exit = internal global ptr @nvmem_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author211 = internal constant [70 x i8] c"nvmem_core.author=Srinivas Kandagatla <srinivas.kandagatla@linaro.org\00", section ".modinfo", align 1
@__UNIQUE_ID_author212 = internal constant [66 x i8] c"nvmem_core.author=Maxime Ripard <maxime.ripard@free-electrons.com\00", section ".modinfo", align 1
@__UNIQUE_ID_description213 = internal constant [41 x i8] c"nvmem_core.description=nvmem Driver Core\00", section ".modinfo", align 1
@__UNIQUE_ID_file214 = internal constant [41 x i8] c"nvmem_core.file=drivers/nvmem/nvmem_core\00", section ".modinfo", align 1
@__UNIQUE_ID_license215 = internal constant [26 x i8] c"nvmem_core.license=GPL v2\00", section ".modinfo", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@nvmem_bin_group = internal constant %struct.attribute_group { ptr null, ptr null, ptr @nvmem_bin_attr_is_visible, ptr @nvmem_attrs, ptr @nvmem_bin_attributes }, align 4
@nvmem_attrs = internal global [2 x ptr] [ptr @dev_attr_type, ptr null], align 4
@nvmem_bin_attributes = internal global [2 x ptr] [ptr @bin_attr_rw_nvmem, ptr null], align 4
@dev_attr_type = internal global %struct.device_attribute { %struct.attribute { ptr @.str.12, i16 292 }, ptr @type_show, ptr null }, align 4
@.str.12 = private unnamed_addr constant [5 x i8] c"type\00", align 1
@.str.13 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@nvmem_type_str = internal unnamed_addr constant [5 x ptr] [ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18], align 4
@.str.14 = private unnamed_addr constant [8 x i8] c"Unknown\00", align 1
@.str.15 = private unnamed_addr constant [7 x i8] c"EEPROM\00", align 1
@.str.16 = private unnamed_addr constant [4 x i8] c"OTP\00", align 1
@.str.17 = private unnamed_addr constant [15 x i8] c"Battery backed\00", align 1
@.str.18 = private unnamed_addr constant [5 x i8] c"FRAM\00", align 1
@bin_attr_rw_nvmem = internal global %struct.bin_attribute { %struct.attribute { ptr @.str.3, i16 420 }, i32 0, ptr null, ptr null, ptr @bin_attr_nvmem_read, ptr @bin_attr_nvmem_write, ptr null }, align 4
@.str.19 = private unnamed_addr constant [43 x i8] c"Keepout regions aren't sorted or overlap.\0A\00", align 1
@.str.20 = private unnamed_addr constant [25 x i8] c"Invalid keepout region.\0A\00", align 1
@.str.21 = private unnamed_addr constant [48 x i8] c"Keepout regions violate word_size constraints.\0A\00", align 1
@.str.22 = private unnamed_addr constant [33 x i8] c"Keepout regions violate stride.\0A\00", align 1
@.str.23 = private unnamed_addr constant [5 x i8] c"fram\00", align 1
@bin_attr_nvmem_eeprom_compat = internal unnamed_addr global %struct.bin_attribute { %struct.attribute { ptr @.str.25, i16 0 }, i32 0, ptr null, ptr null, ptr @bin_attr_nvmem_read, ptr @bin_attr_nvmem_write, ptr null }, align 4
@.str.24 = private unnamed_addr constant [40 x i8] c"Failed to create eeprom binary file %d\0A\00", align 1
@.str.25 = private unnamed_addr constant [7 x i8] c"eeprom\00", align 1
@nvmem_mutex = internal global %struct.mutex { %struct.atomic_t zeroinitializer, %struct.raw_spinlock zeroinitializer, %struct.optimistic_spin_queue zeroinitializer, %struct.list_head { ptr getelementptr (i8, ptr @nvmem_mutex, i64 12), ptr getelementptr (i8, ptr @nvmem_mutex, i64 12) } }, align 4
@.str.26 = private unnamed_addr constant [4 x i8] c"reg\00", align 1
@.str.27 = private unnamed_addr constant [28 x i8] c"nvmem: invalid reg on %pOF\0A\00", align 1
@.str.28 = private unnamed_addr constant [6 x i8] c"%pOFn\00", align 1
@.str.29 = private unnamed_addr constant [5 x i8] c"bits\00", align 1
@.str.30 = private unnamed_addr constant [38 x i8] c"cell %s unaligned to nvmem stride %d\0A\00", align 1
@.str.31 = private unnamed_addr constant [48 x i8] c"could not increase module refcount for cell %s\0A\00", align 1
@.str.32 = private unnamed_addr constant [10 x i8] c"<unknown>\00", align 1
@llvm.compiler.used = appending global [42 x ptr] [ptr @__UNIQUE_ID_author211, ptr @__UNIQUE_ID_author212, ptr @__UNIQUE_ID_description213, ptr @__UNIQUE_ID_file214, ptr @__UNIQUE_ID_license215, ptr @__exitcall_nvmem_exit, ptr @__initcall__kmod_nvmem_core__210_1973_nvmem_init4, ptr @__ksymtab_devm_nvmem_cell_get, ptr @__ksymtab_devm_nvmem_cell_put, ptr @__ksymtab_devm_nvmem_device_get, ptr @__ksymtab_devm_nvmem_device_put, ptr @__ksymtab_devm_nvmem_register, ptr @__ksymtab_devm_nvmem_unregister, ptr @__ksymtab_nvmem_add_cell_lookups, ptr @__ksymtab_nvmem_add_cell_table, ptr @__ksymtab_nvmem_cell_get, ptr @__ksymtab_nvmem_cell_put, ptr @__ksymtab_nvmem_cell_read, ptr @__ksymtab_nvmem_cell_read_u16, ptr @__ksymtab_nvmem_cell_read_u32, ptr @__ksymtab_nvmem_cell_read_u64, ptr @__ksymtab_nvmem_cell_read_u8, ptr @__ksymtab_nvmem_cell_read_variable_le_u32, ptr @__ksymtab_nvmem_cell_read_variable_le_u64, ptr @__ksymtab_nvmem_cell_write, ptr @__ksymtab_nvmem_del_cell_lookups, ptr @__ksymtab_nvmem_del_cell_table, ptr @__ksymtab_nvmem_dev_name, ptr @__ksymtab_nvmem_device_cell_read, ptr @__ksymtab_nvmem_device_cell_write, ptr @__ksymtab_nvmem_device_find, ptr @__ksymtab_nvmem_device_get, ptr @__ksymtab_nvmem_device_put, ptr @__ksymtab_nvmem_device_read, ptr @__ksymtab_nvmem_device_write, ptr @__ksymtab_nvmem_register, ptr @__ksymtab_nvmem_register_notifier, ptr @__ksymtab_nvmem_unregister, ptr @__ksymtab_nvmem_unregister_notifier, ptr @__ksymtab_of_nvmem_cell_get, ptr @__ksymtab_of_nvmem_device_get, ptr @nvmem_exit], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @nvmem_register_notifier(ptr noundef %0) #0 {
  %2 = tail call i32 @blocking_notifier_chain_register(ptr noundef nonnull @nvmem_notifier, ptr noundef %0) #15
  ret i32 %2
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @blocking_notifier_chain_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @nvmem_unregister_notifier(ptr noundef %0) #0 {
  %2 = tail call i32 @blocking_notifier_chain_unregister(ptr noundef nonnull @nvmem_notifier, ptr noundef %0) #15
  ret i32 %2
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @blocking_notifier_chain_unregister(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @nvmem_register(ptr noundef readonly %0) #0 {
  %2 = load ptr, ptr %0, align 4
  %3 = icmp eq ptr %2, null
  br i1 %3, label %230, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.nvmem_config, ptr %0, i32 0, i32 15
  %6 = load ptr, ptr %5, align 4
  %7 = icmp eq ptr %6, null
  br i1 %7, label %8, label %12

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.nvmem_config, ptr %0, i32 0, i32 16
  %10 = load ptr, ptr %9, align 4
  %11 = icmp eq ptr %10, null
  br i1 %11, label %230, label %12

12:                                               ; preds = %8, %4
  %13 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10), align 4
  %14 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %13, i32 noundef 3520, i32 noundef 584) #16
  %15 = icmp eq ptr %14, null
  br i1 %15, label %230, label %16

16:                                               ; preds = %12
  %17 = tail call i32 @ida_alloc_range(ptr noundef nonnull @nvmem_ida, i32 noundef 0, i32 noundef -1, i32 noundef 3264) #15
  %18 = icmp slt i32 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %16
  tail call void @kfree(ptr noundef nonnull %14) #15
  %20 = inttoptr i32 %17 to ptr
  br label %230

21:                                               ; preds = %16
  %22 = getelementptr inbounds %struct.nvmem_config, ptr %0, i32 0, i32 4
  %23 = load ptr, ptr %22, align 4
  %24 = icmp eq ptr %23, null
  br i1 %24, label %27, label %25

25:                                               ; preds = %21
  %26 = getelementptr inbounds %struct.nvmem_device, ptr %14, i32 0, i32 19
  store ptr %23, ptr %26, align 8
  br label %38

27:                                               ; preds = %21
  %28 = getelementptr inbounds %struct.nvmem_config, ptr %0, i32 0, i32 12
  %29 = load i8, ptr %28, align 2, !range !8
  %30 = icmp eq i8 %29, 0
  br i1 %30, label %34, label %31

31:                                               ; preds = %27
  %32 = getelementptr inbounds %struct.nvmem_device, ptr %14, i32 0, i32 19
  %33 = load ptr, ptr %32, align 8
  br label %38

34:                                               ; preds = %27
  %35 = load ptr, ptr %0, align 4
  %36 = tail call ptr @gpiod_get_optional(ptr noundef %35, ptr noundef nonnull @.str, i32 noundef 7) #15
  %37 = getelementptr inbounds %struct.nvmem_device, ptr %14, i32 0, i32 19
  store ptr %36, ptr %37, align 8
  br label %38

38:                                               ; preds = %34, %31, %25
  %39 = phi ptr [ %33, %31 ], [ %36, %34 ], [ %23, %25 ]
  %40 = icmp ugt ptr %39, inttoptr (i32 -4096 to ptr)
  br i1 %40, label %41, label %46

41:                                               ; preds = %38
  %42 = getelementptr inbounds %struct.nvmem_device, ptr %14, i32 0, i32 19
  %43 = getelementptr inbounds %struct.nvmem_device, ptr %14, i32 0, i32 4
  %44 = load i32, ptr %43, align 8
  tail call void @ida_free(ptr noundef nonnull @nvmem_ida, i32 noundef %44) #15
  %45 = load ptr, ptr %42, align 8
  tail call void @kfree(ptr noundef nonnull %14) #15
  br label %230

46:                                               ; preds = %38
  %47 = getelementptr inbounds %struct.nvmem_device, ptr %14, i32 0, i32 5
  store volatile i32 1, ptr %47, align 4
  %48 = getelementptr inbounds %struct.nvmem_device, ptr %14, i32 0, i32 13
  store volatile ptr %48, ptr %48, align 4
  %49 = getelementptr inbounds %struct.nvmem_device, ptr %14, i32 0, i32 13, i32 1
  store ptr %48, ptr %49, align 8
  %50 = getelementptr inbounds %struct.nvmem_device, ptr %14, i32 0, i32 4
  store i32 %17, ptr %50, align 8
  %51 = getelementptr inbounds %struct.nvmem_config, ptr %0, i32 0, i32 3
  %52 = load ptr, ptr %51, align 4
  store ptr %52, ptr %14, align 8
  %53 = icmp eq ptr %52, null
  %54 = load ptr, ptr %0, align 4
  br i1 %53, label %55, label %62

55:                                               ; preds = %46
  %56 = getelementptr inbounds %struct.device, ptr %54, i32 0, i32 6
  %57 = load ptr, ptr %56, align 8
  %58 = icmp eq ptr %57, null
  br i1 %58, label %62, label %59

59:                                               ; preds = %55
  %60 = getelementptr inbounds %struct.device_driver, ptr %57, i32 0, i32 2
  %61 = load ptr, ptr %60, align 4
  store ptr %61, ptr %14, align 8
  br label %62

62:                                               ; preds = %59, %55, %46
  %63 = getelementptr inbounds %struct.nvmem_config, ptr %0, i32 0, i32 20
  %64 = load i32, ptr %63, align 4
  %65 = icmp eq i32 %64, 0
  %66 = select i1 %65, i32 1, i32 %64
  %67 = getelementptr inbounds %struct.nvmem_device, ptr %14, i32 0, i32 2
  store i32 %66, ptr %67, align 8
  %68 = getelementptr inbounds %struct.nvmem_config, ptr %0, i32 0, i32 19
  %69 = load i32, ptr %68, align 4
  %70 = icmp eq i32 %69, 0
  %71 = select i1 %70, i32 1, i32 %69
  %72 = getelementptr inbounds %struct.nvmem_device, ptr %14, i32 0, i32 3
  store i32 %71, ptr %72, align 4
  %73 = getelementptr inbounds %struct.nvmem_config, ptr %0, i32 0, i32 18
  %74 = load i32, ptr %73, align 4
  %75 = getelementptr inbounds %struct.nvmem_device, ptr %14, i32 0, i32 6
  store i32 %74, ptr %75, align 8
  %76 = getelementptr inbounds %struct.nvmem_device, ptr %14, i32 0, i32 1
  %77 = getelementptr inbounds %struct.nvmem_device, ptr %14, i32 0, i32 1, i32 4
  store ptr @nvmem_provider_type, ptr %77, align 8
  %78 = getelementptr inbounds %struct.nvmem_device, ptr %14, i32 0, i32 1, i32 5
  store ptr @nvmem_bus_type, ptr %78, align 4
  %79 = getelementptr inbounds %struct.nvmem_device, ptr %14, i32 0, i32 1, i32 1
  store ptr %54, ptr %79, align 4
  %80 = getelementptr inbounds %struct.nvmem_config, ptr %0, i32 0, i32 11
  %81 = load i8, ptr %80, align 1, !range !8
  %82 = getelementptr inbounds %struct.nvmem_device, ptr %14, i32 0, i32 8
  store i8 %81, ptr %82, align 1
  %83 = getelementptr inbounds %struct.nvmem_config, ptr %0, i32 0, i32 21
  %84 = load ptr, ptr %83, align 4
  %85 = getelementptr inbounds %struct.nvmem_device, ptr %14, i32 0, i32 20
  store ptr %84, ptr %85, align 4
  %86 = getelementptr inbounds %struct.nvmem_config, ptr %0, i32 0, i32 9
  %87 = load i32, ptr %86, align 4
  %88 = getelementptr inbounds %struct.nvmem_device, ptr %14, i32 0, i32 10
  store i32 %87, ptr %88, align 4
  %89 = load ptr, ptr %5, align 4
  %90 = getelementptr inbounds %struct.nvmem_device, ptr %14, i32 0, i32 16
  store ptr %89, ptr %90, align 4
  %91 = getelementptr inbounds %struct.nvmem_config, ptr %0, i32 0, i32 16
  %92 = load ptr, ptr %91, align 4
  %93 = getelementptr inbounds %struct.nvmem_device, ptr %14, i32 0, i32 17
  store ptr %92, ptr %93, align 8
  %94 = getelementptr inbounds %struct.nvmem_config, ptr %0, i32 0, i32 17
  %95 = load ptr, ptr %94, align 4
  %96 = getelementptr inbounds %struct.nvmem_device, ptr %14, i32 0, i32 18
  store ptr %95, ptr %96, align 4
  %97 = getelementptr inbounds %struct.nvmem_config, ptr %0, i32 0, i32 7
  %98 = load ptr, ptr %97, align 4
  %99 = getelementptr inbounds %struct.nvmem_device, ptr %14, i32 0, i32 14
  store ptr %98, ptr %99, align 4
  %100 = getelementptr inbounds %struct.nvmem_config, ptr %0, i32 0, i32 8
  %101 = load i32, ptr %100, align 4
  %102 = getelementptr inbounds %struct.nvmem_device, ptr %14, i32 0, i32 15
  store i32 %101, ptr %102, align 8
  %103 = getelementptr inbounds %struct.nvmem_config, ptr %0, i32 0, i32 13
  %104 = load ptr, ptr %103, align 4
  %105 = icmp eq ptr %104, null
  br i1 %105, label %106, label %113

106:                                              ; preds = %62
  %107 = getelementptr inbounds %struct.nvmem_config, ptr %0, i32 0, i32 14
  %108 = load i8, ptr %107, align 4, !range !8
  %109 = icmp eq i8 %108, 0
  br i1 %109, label %110, label %116

110:                                              ; preds = %106
  %111 = getelementptr inbounds %struct.device, ptr %54, i32 0, i32 25
  %112 = load ptr, ptr %111, align 8
  br label %113

113:                                              ; preds = %110, %62
  %114 = phi ptr [ %112, %110 ], [ %104, %62 ]
  %115 = getelementptr inbounds %struct.nvmem_device, ptr %14, i32 0, i32 1, i32 25
  store ptr %114, ptr %115, align 8
  br label %116

116:                                              ; preds = %113, %106
  %117 = getelementptr inbounds %struct.nvmem_config, ptr %0, i32 0, i32 2
  %118 = load i32, ptr %117, align 4
  switch i32 %118, label %127 [
    i32 -1, label %119
    i32 -2, label %123
  ]

119:                                              ; preds = %116
  %120 = getelementptr inbounds %struct.nvmem_config, ptr %0, i32 0, i32 1
  %121 = load ptr, ptr %120, align 4
  %122 = tail call i32 (ptr, ptr, ...) @dev_set_name(ptr noundef %76, ptr noundef nonnull @.str.1, ptr noundef %121) #15
  br label %134

123:                                              ; preds = %116
  %124 = getelementptr inbounds %struct.nvmem_config, ptr %0, i32 0, i32 1
  %125 = load ptr, ptr %124, align 4
  %126 = tail call i32 (ptr, ptr, ...) @dev_set_name(ptr noundef %76, ptr noundef nonnull @.str.2, ptr noundef %125, i32 noundef %17) #15
  br label %134

127:                                              ; preds = %116
  %128 = getelementptr inbounds %struct.nvmem_config, ptr %0, i32 0, i32 1
  %129 = load ptr, ptr %128, align 4
  %130 = icmp eq ptr %129, null
  %131 = select i1 %130, ptr @.str.3, ptr %129
  %132 = select i1 %130, i32 %17, i32 %118
  %133 = tail call i32 (ptr, ptr, ...) @dev_set_name(ptr noundef %76, ptr noundef nonnull @.str.2, ptr noundef %131, i32 noundef %132) #15
  br label %134

134:                                              ; preds = %127, %123, %119
  %135 = load ptr, ptr %0, align 4
  %136 = tail call zeroext i1 @device_property_present(ptr noundef %135, ptr noundef nonnull @.str.4) #15
  br i1 %136, label %144, label %137

137:                                              ; preds = %134
  %138 = getelementptr inbounds %struct.nvmem_config, ptr %0, i32 0, i32 10
  %139 = load i8, ptr %138, align 4, !range !8
  %140 = icmp eq i8 %139, 0
  br i1 %140, label %141, label %144

141:                                              ; preds = %137
  %142 = load ptr, ptr %93, align 8
  %143 = icmp eq ptr %142, null
  br label %144

144:                                              ; preds = %141, %137, %134
  %145 = phi i1 [ true, %137 ], [ true, %134 ], [ %143, %141 ]
  %146 = getelementptr inbounds %struct.nvmem_device, ptr %14, i32 0, i32 7
  %147 = zext i1 %145 to i8
  store i8 %147, ptr %146, align 4
  %148 = getelementptr inbounds %struct.nvmem_device, ptr %14, i32 0, i32 1, i32 32
  store ptr @nvmem_dev_groups, ptr %148, align 8
  %149 = load i32, ptr %102, align 8
  %150 = icmp eq i32 %149, 0
  br i1 %150, label %188, label %151

151:                                              ; preds = %144
  %152 = load ptr, ptr %99, align 4
  %153 = getelementptr %struct.nvmem_keepout, ptr %152, i32 %149
  %154 = icmp ult ptr %152, %153
  br i1 %154, label %158, label %188

155:                                              ; preds = %176
  %156 = getelementptr %struct.nvmem_keepout, ptr %159, i32 1
  %157 = icmp ult ptr %156, %153
  br i1 %157, label %158, label %188

158:                                              ; preds = %155, %151
  %159 = phi ptr [ %156, %155 ], [ %152, %151 ]
  %160 = phi i32 [ %165, %155 ], [ 0, %151 ]
  %161 = load i32, ptr %159, align 4
  %162 = icmp ult i32 %161, %160
  br i1 %162, label %184, label %163

163:                                              ; preds = %158
  %164 = getelementptr inbounds %struct.nvmem_keepout, ptr %159, i32 0, i32 1
  %165 = load i32, ptr %164, align 4
  %166 = icmp ult i32 %165, %161
  br i1 %166, label %184, label %167

167:                                              ; preds = %163
  %168 = sub i32 %165, %161
  %169 = load i32, ptr %72, align 4
  %170 = icmp ult i32 %168, %169
  br i1 %170, label %184, label %171

171:                                              ; preds = %167
  %172 = icmp ne i32 %161, %160
  %173 = sub i32 %161, %160
  %174 = icmp ult i32 %173, %169
  %175 = select i1 %172, i1 %174, i1 false
  br i1 %175, label %184, label %176

176:                                              ; preds = %171
  %177 = load i32, ptr %67, align 8
  %178 = add i32 %177, -1
  %179 = and i32 %178, %161
  %180 = icmp eq i32 %179, 0
  %181 = and i32 %178, %165
  %182 = icmp eq i32 %181, 0
  %183 = select i1 %180, i1 %182, i1 false
  br i1 %183, label %155, label %184

184:                                              ; preds = %176, %171, %167, %163, %158
  %185 = phi ptr [ @.str.19, %158 ], [ @.str.20, %163 ], [ @.str.21, %171 ], [ @.str.21, %167 ], [ @.str.22, %176 ]
  %186 = phi ptr [ inttoptr (i32 -34 to ptr), %158 ], [ inttoptr (i32 -22 to ptr), %163 ], [ inttoptr (i32 -34 to ptr), %171 ], [ inttoptr (i32 -34 to ptr), %167 ], [ inttoptr (i32 -22 to ptr), %176 ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %76, ptr noundef nonnull %185) #17
  %187 = load i32, ptr %50, align 8
  tail call void @ida_free(ptr noundef nonnull @nvmem_ida, i32 noundef %187) #15
  tail call void @kfree(ptr noundef nonnull %14) #15
  br label %230

188:                                              ; preds = %155, %151, %144
  %189 = tail call i32 @device_register(ptr noundef %76) #15
  %190 = icmp eq i32 %189, 0
  br i1 %190, label %191, label %227

191:                                              ; preds = %188
  %192 = getelementptr inbounds %struct.nvmem_config, ptr %0, i32 0, i32 22
  %193 = load i8, ptr %192, align 4, !range !8
  %194 = icmp eq i8 %193, 0
  br i1 %194, label %198, label %195

195:                                              ; preds = %191
  %196 = tail call fastcc i32 @nvmem_sysfs_setup_compat(ptr noundef nonnull %14, ptr noundef %0)
  %197 = icmp eq i32 %196, 0
  br i1 %197, label %198, label %225

198:                                              ; preds = %195, %191
  %199 = getelementptr inbounds %struct.nvmem_config, ptr %0, i32 0, i32 5
  %200 = load ptr, ptr %199, align 4
  %201 = icmp eq ptr %200, null
  br i1 %201, label %207, label %202

202:                                              ; preds = %198
  %203 = getelementptr inbounds %struct.nvmem_config, ptr %0, i32 0, i32 6
  %204 = load i32, ptr %203, align 4
  %205 = tail call fastcc i32 @nvmem_add_cells(ptr noundef nonnull %14, ptr noundef nonnull %200, i32 noundef %204)
  %206 = icmp eq i32 %205, 0
  br i1 %206, label %207, label %217

207:                                              ; preds = %202, %198
  %208 = tail call fastcc i32 @nvmem_add_cells_from_table(ptr noundef nonnull %14)
  %209 = icmp eq i32 %208, 0
  br i1 %209, label %210, label %215

210:                                              ; preds = %207
  %211 = tail call fastcc i32 @nvmem_add_cells_from_of(ptr noundef nonnull %14)
  %212 = icmp eq i32 %211, 0
  br i1 %212, label %213, label %215

213:                                              ; preds = %210
  %214 = tail call i32 @blocking_notifier_call_chain(ptr noundef nonnull @nvmem_notifier, i32 noundef 1, ptr noundef nonnull %14) #15
  br label %230

215:                                              ; preds = %210, %207
  %216 = phi i32 [ %208, %207 ], [ %211, %210 ]
  tail call fastcc void @nvmem_device_remove_all_cells(ptr noundef nonnull %14)
  br label %217

217:                                              ; preds = %215, %202
  %218 = phi i32 [ %205, %202 ], [ %216, %215 ]
  %219 = load i8, ptr %192, align 4, !range !8
  %220 = icmp eq i8 %219, 0
  br i1 %220, label %225, label %221

221:                                              ; preds = %217
  %222 = getelementptr inbounds %struct.nvmem_device, ptr %14, i32 0, i32 12
  %223 = load ptr, ptr %222, align 8
  %224 = getelementptr inbounds %struct.nvmem_device, ptr %14, i32 0, i32 11
  tail call void @device_remove_bin_file(ptr noundef %223, ptr noundef %224) #15
  br label %225

225:                                              ; preds = %221, %217, %195
  %226 = phi i32 [ %196, %195 ], [ %218, %221 ], [ %218, %217 ]
  tail call void @device_del(ptr noundef %76) #15
  br label %227

227:                                              ; preds = %225, %188
  %228 = phi i32 [ %189, %188 ], [ %226, %225 ]
  tail call void @put_device(ptr noundef %76) #15
  %229 = inttoptr i32 %228 to ptr
  br label %230

230:                                              ; preds = %227, %213, %184, %41, %19, %12, %8, %1
  %231 = phi ptr [ %20, %19 ], [ %45, %41 ], [ %186, %184 ], [ %229, %227 ], [ %14, %213 ], [ inttoptr (i32 -22 to ptr), %1 ], [ inttoptr (i32 -22 to ptr), %8 ], [ inttoptr (i32 -12 to ptr), %12 ]
  ret ptr %231
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @gpiod_get_optional(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ida_free(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_set_name(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @device_property_present(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_register(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @nvmem_sysfs_setup_compat(ptr noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.nvmem_config, ptr %1, i32 0, i32 22
  %4 = load i8, ptr %3, align 4, !range !8
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %50, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.nvmem_config, ptr %1, i32 0, i32 23
  %8 = load ptr, ptr %7, align 4
  %9 = icmp eq ptr %8, null
  br i1 %9, label %50, label %10

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.nvmem_config, ptr %1, i32 0, i32 9
  %12 = load i32, ptr %11, align 4
  %13 = icmp eq i32 %12, 4
  br i1 %13, label %14, label %15

14:                                               ; preds = %10
  store ptr @.str.23, ptr @bin_attr_nvmem_eeprom_compat, align 4
  br label %15

15:                                               ; preds = %14, %10
  %16 = getelementptr inbounds %struct.nvmem_device, ptr %0, i32 0, i32 11
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 8 dereferenceable(32) %16, ptr noundef nonnull align 4 dereferenceable(32) @bin_attr_nvmem_eeprom_compat, i32 32, i1 false)
  %17 = getelementptr inbounds %struct.nvmem_device, ptr %0, i32 0, i32 8
  %18 = load i8, ptr %17, align 1, !range !8
  %19 = icmp eq i8 %18, 0
  %20 = select i1 %19, i16 292, i16 256
  %21 = getelementptr inbounds %struct.nvmem_device, ptr %0, i32 0, i32 7
  %22 = load i8, ptr %21, align 4, !range !8
  %23 = icmp eq i8 %22, 0
  %24 = or i16 %20, 128
  %25 = select i1 %23, i16 %24, i16 %20
  %26 = getelementptr inbounds %struct.nvmem_device, ptr %0, i32 0, i32 17
  %27 = load ptr, ptr %26, align 8
  %28 = icmp eq ptr %27, null
  %29 = select i1 %28, i16 %20, i16 %25
  %30 = getelementptr inbounds %struct.nvmem_device, ptr %0, i32 0, i32 16
  %31 = load ptr, ptr %30, align 4
  %32 = icmp eq ptr %31, null
  %33 = and i16 %29, 128
  %34 = select i1 %32, i16 %33, i16 %29
  %35 = getelementptr inbounds %struct.nvmem_device, ptr %0, i32 0, i32 11, i32 0, i32 1
  store i16 %34, ptr %35, align 4
  %36 = getelementptr inbounds %struct.nvmem_device, ptr %0, i32 0, i32 6
  %37 = load i32, ptr %36, align 8
  %38 = getelementptr inbounds %struct.nvmem_device, ptr %0, i32 0, i32 11, i32 1
  store i32 %37, ptr %38, align 8
  %39 = getelementptr inbounds %struct.nvmem_device, ptr %0, i32 0, i32 1
  %40 = getelementptr inbounds %struct.nvmem_device, ptr %0, i32 0, i32 11, i32 2
  store ptr %39, ptr %40, align 4
  %41 = load ptr, ptr %7, align 4
  %42 = getelementptr inbounds %struct.nvmem_device, ptr %0, i32 0, i32 12
  store ptr %41, ptr %42, align 8
  %43 = tail call i32 @device_create_bin_file(ptr noundef %41, ptr noundef %16) #15
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %46, label %45

45:                                               ; preds = %15
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %39, ptr noundef nonnull @.str.24, i32 noundef %43) #17
  br label %50

46:                                               ; preds = %15
  %47 = getelementptr inbounds %struct.nvmem_device, ptr %0, i32 0, i32 9
  %48 = load i32, ptr %47, align 8
  %49 = or i32 %48, 1
  store i32 %49, ptr %47, align 8
  br label %50

50:                                               ; preds = %46, %45, %6, %2
  %51 = phi i32 [ %43, %45 ], [ 0, %46 ], [ 0, %2 ], [ -22, %6 ]
  ret i32 %51
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @nvmem_add_cells(ptr noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2) unnamed_addr #0 {
  %4 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %2, i32 4) #15
  %5 = extractvalue { i32, i1 } %4, 1
  br i1 %5, label %88, label %6, !prof !9

6:                                                ; preds = %3
  %7 = extractvalue { i32, i1 } %4, 0
  %8 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %7, i32 noundef 3520) #18
  %9 = icmp eq ptr %8, null
  br i1 %9, label %88, label %10

10:                                               ; preds = %6
  %11 = icmp eq i32 %2, 0
  br i1 %11, label %86, label %12

12:                                               ; preds = %10
  %13 = getelementptr inbounds %struct.nvmem_device, ptr %0, i32 0, i32 2
  br label %14

14:                                               ; preds = %56, %12
  %15 = phi i32 [ 0, %12 ], [ %66, %56 ]
  %16 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %17 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %16, i32 noundef 3520, i32 noundef 36) #16
  %18 = getelementptr ptr, ptr %8, i32 %15
  store ptr %17, ptr %18, align 4
  %19 = icmp eq ptr %17, null
  br i1 %19, label %68, label %20

20:                                               ; preds = %14
  %21 = getelementptr %struct.nvmem_cell_info, ptr %1, i32 %15
  %22 = getelementptr inbounds %struct.nvmem_cell_entry, ptr %17, i32 0, i32 6
  store ptr %0, ptr %22, align 8
  %23 = getelementptr %struct.nvmem_cell_info, ptr %1, i32 %15, i32 1
  %24 = load i32, ptr %23, align 4
  %25 = getelementptr inbounds %struct.nvmem_cell_entry, ptr %17, i32 0, i32 1
  store i32 %24, ptr %25, align 4
  %26 = getelementptr %struct.nvmem_cell_info, ptr %1, i32 %15, i32 2
  %27 = load i32, ptr %26, align 4
  %28 = getelementptr inbounds %struct.nvmem_cell_entry, ptr %17, i32 0, i32 2
  store i32 %27, ptr %28, align 8
  %29 = load ptr, ptr %21, align 4
  store ptr %29, ptr %17, align 8
  %30 = getelementptr %struct.nvmem_cell_info, ptr %1, i32 %15, i32 3
  %31 = load i32, ptr %30, align 4
  %32 = getelementptr inbounds %struct.nvmem_cell_entry, ptr %17, i32 0, i32 3
  store i32 %31, ptr %32, align 4
  %33 = getelementptr %struct.nvmem_cell_info, ptr %1, i32 %15, i32 4
  %34 = load i32, ptr %33, align 4
  %35 = getelementptr inbounds %struct.nvmem_cell_entry, ptr %17, i32 0, i32 4
  store i32 %34, ptr %35, align 8
  %36 = icmp eq i32 %34, 0
  br i1 %36, label %41, label %37

37:                                               ; preds = %20
  %38 = add i32 %31, 7
  %39 = add i32 %38, %34
  %40 = sdiv i32 %39, 8
  store i32 %40, ptr %28, align 8
  br label %41

41:                                               ; preds = %37, %20
  %42 = load i32, ptr %13, align 8
  %43 = add i32 %42, -1
  %44 = and i32 %43, %24
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %50, label %46

46:                                               ; preds = %41
  %47 = getelementptr inbounds %struct.nvmem_device, ptr %0, i32 0, i32 1
  %48 = icmp eq ptr %29, null
  %49 = select i1 %48, ptr @.str.32, ptr %29
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %47, ptr noundef nonnull @.str.30, ptr noundef %49, i32 noundef %42) #17
  br label %53

50:                                               ; preds = %41
  %51 = tail call ptr @kstrdup_const(ptr noundef %29, i32 noundef 3264) #15
  store ptr %51, ptr %17, align 8
  %52 = icmp eq ptr %51, null
  br i1 %52, label %53, label %56

53:                                               ; preds = %50, %46
  %54 = phi i32 [ -22, %46 ], [ -12, %50 ]
  %55 = load ptr, ptr %18, align 4
  tail call void @kfree(ptr noundef %55) #15
  br label %68

56:                                               ; preds = %50
  %57 = load ptr, ptr %18, align 4
  tail call void @mutex_lock(ptr noundef nonnull @nvmem_mutex) #15
  %58 = getelementptr inbounds %struct.nvmem_cell_entry, ptr %57, i32 0, i32 7
  %59 = getelementptr inbounds %struct.nvmem_cell_entry, ptr %57, i32 0, i32 6
  %60 = load ptr, ptr %59, align 4
  %61 = getelementptr inbounds %struct.nvmem_device, ptr %60, i32 0, i32 13
  %62 = getelementptr inbounds %struct.nvmem_device, ptr %60, i32 0, i32 13, i32 1
  %63 = load ptr, ptr %62, align 4
  store ptr %58, ptr %62, align 4
  store ptr %61, ptr %58, align 4
  %64 = getelementptr inbounds %struct.nvmem_cell_entry, ptr %57, i32 0, i32 7, i32 1
  store ptr %63, ptr %64, align 4
  store volatile ptr %58, ptr %63, align 4
  tail call void @mutex_unlock(ptr noundef nonnull @nvmem_mutex) #15
  %65 = tail call i32 @blocking_notifier_call_chain(ptr noundef nonnull @nvmem_notifier, i32 noundef 3, ptr noundef %57) #15
  %66 = add nuw nsw i32 %15, 1
  %67 = icmp eq i32 %66, %2
  br i1 %67, label %86, label %14

68:                                               ; preds = %53, %14
  %69 = phi i32 [ %54, %53 ], [ -12, %14 ]
  %70 = icmp eq i32 %15, 0
  br i1 %70, label %86, label %71

71:                                               ; preds = %71, %68
  %72 = phi i32 [ %73, %71 ], [ %15, %68 ]
  %73 = add nsw i32 %72, -1
  %74 = getelementptr ptr, ptr %8, i32 %73
  %75 = load ptr, ptr %74, align 4
  %76 = tail call i32 @blocking_notifier_call_chain(ptr noundef nonnull @nvmem_notifier, i32 noundef 4, ptr noundef %75) #15
  tail call void @mutex_lock(ptr noundef nonnull @nvmem_mutex) #15
  %77 = getelementptr inbounds %struct.nvmem_cell_entry, ptr %75, i32 0, i32 7
  %78 = getelementptr inbounds %struct.nvmem_cell_entry, ptr %75, i32 0, i32 7, i32 1
  %79 = load ptr, ptr %78, align 4
  %80 = load ptr, ptr %77, align 4
  %81 = getelementptr inbounds %struct.list_head, ptr %80, i32 0, i32 1
  store ptr %79, ptr %81, align 4
  store volatile ptr %80, ptr %79, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %77, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %78, align 4
  tail call void @mutex_unlock(ptr noundef nonnull @nvmem_mutex) #15
  %82 = getelementptr inbounds %struct.nvmem_cell_entry, ptr %75, i32 0, i32 5
  %83 = load ptr, ptr %82, align 4
  tail call void @of_node_put(ptr noundef %83) #15
  %84 = load ptr, ptr %75, align 4
  tail call void @kfree_const(ptr noundef %84) #15
  tail call void @kfree(ptr noundef %75) #15
  %85 = icmp eq i32 %73, 0
  br i1 %85, label %86, label %71

86:                                               ; preds = %71, %68, %56, %10
  %87 = phi i32 [ 0, %10 ], [ %69, %68 ], [ %69, %71 ], [ 0, %56 ]
  tail call void @kfree(ptr noundef nonnull %8) #15
  br label %88

88:                                               ; preds = %86, %6, %3
  %89 = phi i32 [ -12, %6 ], [ -12, %3 ], [ %87, %86 ]
  ret i32 %89
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @nvmem_add_cells_from_table(ptr noundef %0) unnamed_addr #0 {
  tail call void @mutex_lock(ptr noundef nonnull @nvmem_cell_mutex) #15
  %2 = load ptr, ptr @nvmem_cell_tables, align 4
  %3 = icmp eq ptr %2, @nvmem_cell_tables
  br i1 %3, label %81, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.nvmem_device, ptr %0, i32 0, i32 1, i32 3
  %6 = getelementptr inbounds %struct.nvmem_device, ptr %0, i32 0, i32 1
  %7 = getelementptr inbounds %struct.nvmem_device, ptr %0, i32 0, i32 2
  br label %8

8:                                                ; preds = %78, %4
  %9 = phi ptr [ %2, %4 ], [ %79, %78 ]
  %10 = getelementptr i8, ptr %9, i32 -12
  %11 = load ptr, ptr %5, align 4
  %12 = icmp eq ptr %11, null
  br i1 %12, label %13, label %15

13:                                               ; preds = %8
  %14 = load ptr, ptr %6, align 4
  br label %15

15:                                               ; preds = %13, %8
  %16 = phi ptr [ %14, %13 ], [ %11, %8 ]
  %17 = load ptr, ptr %10, align 4
  %18 = tail call i32 @strcmp(ptr noundef %16, ptr noundef %17)
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %78

20:                                               ; preds = %15
  %21 = getelementptr i8, ptr %9, i32 -4
  %22 = load i32, ptr %21, align 4
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %78, label %24

24:                                               ; preds = %20
  %25 = getelementptr i8, ptr %9, i32 -8
  br label %26

26:                                               ; preds = %67, %24
  %27 = phi i32 [ 0, %24 ], [ %75, %67 ]
  %28 = load ptr, ptr %25, align 4
  %29 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %30 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %29, i32 noundef 3520, i32 noundef 36) #16
  %31 = icmp eq ptr %30, null
  br i1 %31, label %81, label %32

32:                                               ; preds = %26
  %33 = getelementptr %struct.nvmem_cell_info, ptr %28, i32 %27
  %34 = getelementptr inbounds %struct.nvmem_cell_entry, ptr %30, i32 0, i32 6
  store ptr %0, ptr %34, align 8
  %35 = getelementptr %struct.nvmem_cell_info, ptr %28, i32 %27, i32 1
  %36 = load i32, ptr %35, align 4
  %37 = getelementptr inbounds %struct.nvmem_cell_entry, ptr %30, i32 0, i32 1
  store i32 %36, ptr %37, align 4
  %38 = getelementptr %struct.nvmem_cell_info, ptr %28, i32 %27, i32 2
  %39 = load i32, ptr %38, align 4
  %40 = getelementptr inbounds %struct.nvmem_cell_entry, ptr %30, i32 0, i32 2
  store i32 %39, ptr %40, align 8
  %41 = load ptr, ptr %33, align 4
  store ptr %41, ptr %30, align 8
  %42 = getelementptr %struct.nvmem_cell_info, ptr %28, i32 %27, i32 3
  %43 = load i32, ptr %42, align 4
  %44 = getelementptr inbounds %struct.nvmem_cell_entry, ptr %30, i32 0, i32 3
  store i32 %43, ptr %44, align 4
  %45 = getelementptr %struct.nvmem_cell_info, ptr %28, i32 %27, i32 4
  %46 = load i32, ptr %45, align 4
  %47 = getelementptr inbounds %struct.nvmem_cell_entry, ptr %30, i32 0, i32 4
  store i32 %46, ptr %47, align 8
  %48 = icmp eq i32 %46, 0
  br i1 %48, label %53, label %49

49:                                               ; preds = %32
  %50 = add i32 %43, 7
  %51 = add i32 %50, %46
  %52 = sdiv i32 %51, 8
  store i32 %52, ptr %40, align 8
  br label %53

53:                                               ; preds = %49, %32
  %54 = load i32, ptr %7, align 8
  %55 = add i32 %54, -1
  %56 = and i32 %55, %36
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %61, label %58

58:                                               ; preds = %53
  %59 = icmp eq ptr %41, null
  %60 = select i1 %59, ptr @.str.32, ptr %41
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %6, ptr noundef nonnull @.str.30, ptr noundef %60, i32 noundef %54) #17
  br label %65

61:                                               ; preds = %53
  %62 = load ptr, ptr %33, align 4
  %63 = tail call ptr @kstrdup_const(ptr noundef %62, i32 noundef 3264) #15
  store ptr %63, ptr %30, align 8
  %64 = icmp eq ptr %63, null
  br i1 %64, label %65, label %67

65:                                               ; preds = %61, %58
  %66 = phi i32 [ -22, %58 ], [ -12, %61 ]
  tail call void @kfree(ptr noundef nonnull %30) #15
  br label %81

67:                                               ; preds = %61
  tail call void @mutex_lock(ptr noundef nonnull @nvmem_mutex) #15
  %68 = getelementptr inbounds %struct.nvmem_cell_entry, ptr %30, i32 0, i32 7
  %69 = load ptr, ptr %34, align 8
  %70 = getelementptr inbounds %struct.nvmem_device, ptr %69, i32 0, i32 13
  %71 = getelementptr inbounds %struct.nvmem_device, ptr %69, i32 0, i32 13, i32 1
  %72 = load ptr, ptr %71, align 4
  store ptr %68, ptr %71, align 4
  store ptr %70, ptr %68, align 4
  %73 = getelementptr inbounds %struct.nvmem_cell_entry, ptr %30, i32 0, i32 7, i32 1
  store ptr %72, ptr %73, align 8
  store volatile ptr %68, ptr %72, align 4
  tail call void @mutex_unlock(ptr noundef nonnull @nvmem_mutex) #15
  %74 = tail call i32 @blocking_notifier_call_chain(ptr noundef nonnull @nvmem_notifier, i32 noundef 3, ptr noundef nonnull %30) #15
  %75 = add nuw i32 %27, 1
  %76 = load i32, ptr %21, align 4
  %77 = icmp ult i32 %75, %76
  br i1 %77, label %26, label %78

78:                                               ; preds = %67, %20, %15
  %79 = load ptr, ptr %9, align 4
  %80 = icmp eq ptr %79, @nvmem_cell_tables
  br i1 %80, label %81, label %8

81:                                               ; preds = %78, %65, %26, %1
  %82 = phi i32 [ %66, %65 ], [ 0, %1 ], [ -12, %26 ], [ 0, %78 ]
  tail call void @mutex_unlock(ptr noundef nonnull @nvmem_cell_mutex) #15
  ret i32 %82
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @nvmem_add_cells_from_of(ptr noundef %0) unnamed_addr #0 {
  %2 = alloca i32, align 4
  %3 = getelementptr inbounds %struct.nvmem_device, ptr %0, i32 0, i32 1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #15
  store i32 0, ptr %2, align 4, !annotation !10
  %4 = getelementptr inbounds %struct.nvmem_device, ptr %0, i32 0, i32 1, i32 25
  %5 = load ptr, ptr %4, align 8
  %6 = tail call ptr @of_get_next_child(ptr noundef %5, ptr noundef null) #15
  %7 = icmp eq ptr %6, null
  br i1 %7, label %81, label %8

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.nvmem_device, ptr %0, i32 0, i32 2
  br label %10

10:                                               ; preds = %76, %8
  %11 = phi ptr [ %6, %8 ], [ %77, %76 ]
  %12 = call ptr @of_get_property(ptr noundef nonnull %11, ptr noundef nonnull @.str.26, ptr noundef nonnull %2) #15
  %13 = icmp eq ptr %12, null
  br i1 %13, label %76, label %14

14:                                               ; preds = %10
  %15 = load i32, ptr %2, align 4
  %16 = icmp ult i32 %15, 8
  br i1 %16, label %17, label %18

17:                                               ; preds = %14
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.27, ptr noundef nonnull %11) #17
  br label %79

18:                                               ; preds = %14
  %19 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %20 = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %19, i32 noundef 3520, i32 noundef 36) #16
  %21 = icmp eq ptr %20, null
  br i1 %21, label %79, label %22

22:                                               ; preds = %18
  %23 = getelementptr inbounds %struct.nvmem_cell_entry, ptr %20, i32 0, i32 6
  store ptr %0, ptr %23, align 8
  %24 = getelementptr i32, ptr %12, i32 1
  %25 = load i32, ptr %12, align 4
  %26 = call i32 @llvm.bswap.i32(i32 %25) #15
  %27 = getelementptr inbounds %struct.nvmem_cell_entry, ptr %20, i32 0, i32 1
  store i32 %26, ptr %27, align 4
  %28 = load i32, ptr %24, align 4
  %29 = call i32 @llvm.bswap.i32(i32 %28) #15
  %30 = getelementptr inbounds %struct.nvmem_cell_entry, ptr %20, i32 0, i32 2
  store i32 %29, ptr %30, align 8
  %31 = call noalias ptr (i32, ptr, ...) @kasprintf(i32 noundef 3264, ptr noundef nonnull @.str.28, ptr noundef nonnull %11) #15
  store ptr %31, ptr %20, align 8
  %32 = call ptr @of_get_property(ptr noundef nonnull %11, ptr noundef nonnull @.str.29, ptr noundef nonnull %2) #15
  %33 = icmp ne ptr %32, null
  %34 = load i32, ptr %2, align 4
  %35 = icmp eq i32 %34, 8
  %36 = select i1 %33, i1 %35, i1 false
  br i1 %36, label %40, label %37

37:                                               ; preds = %22
  %38 = getelementptr inbounds %struct.nvmem_cell_entry, ptr %20, i32 0, i32 4
  %39 = load i32, ptr %38, align 8
  br label %48

40:                                               ; preds = %22
  %41 = getelementptr i32, ptr %32, i32 1
  %42 = load i32, ptr %32, align 4
  %43 = call i32 @llvm.bswap.i32(i32 %42) #15
  %44 = getelementptr inbounds %struct.nvmem_cell_entry, ptr %20, i32 0, i32 3
  store i32 %43, ptr %44, align 4
  %45 = load i32, ptr %41, align 4
  %46 = call i32 @llvm.bswap.i32(i32 %45) #15
  %47 = getelementptr inbounds %struct.nvmem_cell_entry, ptr %20, i32 0, i32 4
  store i32 %46, ptr %47, align 8
  br label %48

48:                                               ; preds = %40, %37
  %49 = phi i32 [ %39, %37 ], [ %46, %40 ]
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %57, label %51

51:                                               ; preds = %48
  %52 = getelementptr inbounds %struct.nvmem_cell_entry, ptr %20, i32 0, i32 3
  %53 = load i32, ptr %52, align 4
  %54 = add i32 %49, 7
  %55 = add i32 %54, %53
  %56 = sdiv i32 %55, 8
  store i32 %56, ptr %30, align 8
  br label %57

57:                                               ; preds = %51, %48
  %58 = load i32, ptr %27, align 4
  %59 = load i32, ptr %9, align 8
  %60 = add i32 %59, -1
  %61 = and i32 %60, %58
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %66, label %63

63:                                               ; preds = %57
  %64 = load ptr, ptr %20, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.30, ptr noundef %64, i32 noundef %59) #17
  %65 = load ptr, ptr %20, align 8
  call void @kfree_const(ptr noundef %65) #15
  call void @kfree(ptr noundef nonnull %20) #15
  br label %79

66:                                               ; preds = %57
  %67 = call ptr @of_node_get(ptr noundef nonnull %11) #15
  %68 = getelementptr inbounds %struct.nvmem_cell_entry, ptr %20, i32 0, i32 5
  store ptr %67, ptr %68, align 4
  call void @mutex_lock(ptr noundef nonnull @nvmem_mutex) #15
  %69 = getelementptr inbounds %struct.nvmem_cell_entry, ptr %20, i32 0, i32 7
  %70 = load ptr, ptr %23, align 8
  %71 = getelementptr inbounds %struct.nvmem_device, ptr %70, i32 0, i32 13
  %72 = getelementptr inbounds %struct.nvmem_device, ptr %70, i32 0, i32 13, i32 1
  %73 = load ptr, ptr %72, align 4
  store ptr %69, ptr %72, align 4
  store ptr %71, ptr %69, align 4
  %74 = getelementptr inbounds %struct.nvmem_cell_entry, ptr %20, i32 0, i32 7, i32 1
  store ptr %73, ptr %74, align 8
  store volatile ptr %69, ptr %73, align 4
  call void @mutex_unlock(ptr noundef nonnull @nvmem_mutex) #15
  %75 = call i32 @blocking_notifier_call_chain(ptr noundef nonnull @nvmem_notifier, i32 noundef 3, ptr noundef nonnull %20) #15
  br label %76

76:                                               ; preds = %66, %10
  %77 = call ptr @of_get_next_child(ptr noundef %5, ptr noundef nonnull %11) #15
  %78 = icmp eq ptr %77, null
  br i1 %78, label %81, label %10

79:                                               ; preds = %63, %18, %17
  %80 = phi i32 [ -22, %63 ], [ -22, %17 ], [ -12, %18 ]
  call void @of_node_put(ptr noundef nonnull %11) #15
  br label %81

81:                                               ; preds = %79, %76, %1
  %82 = phi i32 [ 0, %1 ], [ %80, %79 ], [ 0, %76 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #15
  ret i32 %82
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @blocking_notifier_call_chain(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @nvmem_device_remove_all_cells(ptr noundef readonly %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.nvmem_device, ptr %0, i32 0, i32 13
  %3 = load ptr, ptr %2, align 4
  %4 = icmp eq ptr %3, %2
  br i1 %4, label %18, label %5

5:                                                ; preds = %5, %1
  %6 = phi ptr [ %8, %5 ], [ %3, %1 ]
  %7 = getelementptr i8, ptr %6, i32 -28
  %8 = load ptr, ptr %6, align 4
  %9 = tail call i32 @blocking_notifier_call_chain(ptr noundef nonnull @nvmem_notifier, i32 noundef 4, ptr noundef %7) #15
  tail call void @mutex_lock(ptr noundef nonnull @nvmem_mutex) #15
  %10 = getelementptr i8, ptr %6, i32 4
  %11 = load ptr, ptr %10, align 4
  %12 = load ptr, ptr %6, align 4
  %13 = getelementptr inbounds %struct.list_head, ptr %12, i32 0, i32 1
  store ptr %11, ptr %13, align 4
  store volatile ptr %12, ptr %11, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %6, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %10, align 4
  tail call void @mutex_unlock(ptr noundef nonnull @nvmem_mutex) #15
  %14 = getelementptr i8, ptr %6, i32 -8
  %15 = load ptr, ptr %14, align 4
  tail call void @of_node_put(ptr noundef %15) #15
  %16 = load ptr, ptr %7, align 4
  tail call void @kfree_const(ptr noundef %16) #15
  tail call void @kfree(ptr noundef %7) #15
  %17 = icmp eq ptr %8, %2
  br i1 %17, label %18, label %5

18:                                               ; preds = %5, %1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @device_del(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @put_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @nvmem_unregister(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.nvmem_device, ptr %0, i32 0, i32 5
  tail call void asm sideeffect "dmb ish", "~{memory}"() #15, !srcloc !11
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %2) #15, !srcloc !12
  %3 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %2, ptr %2, i32 1, ptr elementtype(i32) %2) #15, !srcloc !13
  %4 = extractvalue { i32, i32, i32 } %3, 0
  %5 = icmp eq i32 %4, 1
  br i1 %5, label %9, label %6

6:                                                ; preds = %1
  %7 = icmp sgt i32 %4, 0
  br i1 %7, label %21, label %8, !prof !14

8:                                                ; preds = %6
  tail call void @refcount_warn_saturate(ptr noundef %2, i32 noundef 3) #15
  br label %21

9:                                                ; preds = %1
  tail call void asm sideeffect "dmb ish", "~{memory}"() #15, !srcloc !15
  %10 = tail call i32 @blocking_notifier_call_chain(ptr noundef nonnull @nvmem_notifier, i32 noundef 2, ptr noundef %0) #15
  %11 = getelementptr %struct.nvmem_device, ptr %0, i32 0, i32 9
  %12 = load i32, ptr %11, align 8
  %13 = and i32 %12, 1
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %19, label %15

15:                                               ; preds = %9
  %16 = getelementptr %struct.nvmem_device, ptr %0, i32 0, i32 12
  %17 = load ptr, ptr %16, align 8
  %18 = getelementptr %struct.nvmem_device, ptr %0, i32 0, i32 11
  tail call void @device_remove_bin_file(ptr noundef %17, ptr noundef %18) #15
  br label %19

19:                                               ; preds = %15, %9
  tail call fastcc void @nvmem_device_remove_all_cells(ptr noundef %0) #15
  %20 = getelementptr %struct.nvmem_device, ptr %0, i32 0, i32 1
  tail call void @device_unregister(ptr noundef %20) #15
  br label %21

21:                                               ; preds = %19, %8, %6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @devm_nvmem_register(ptr noundef %0, ptr noundef %1) #0 {
  %3 = tail call noalias ptr @__devres_alloc_node(ptr noundef nonnull @devm_nvmem_release, i32 noundef 4, i32 noundef 3264, i32 noundef -1, ptr noundef nonnull @.str.5) #15
  %4 = icmp eq ptr %3, null
  br i1 %4, label %10, label %5

5:                                                ; preds = %2
  %6 = tail call ptr @nvmem_register(ptr noundef %1)
  %7 = icmp ugt ptr %6, inttoptr (i32 -4096 to ptr)
  br i1 %7, label %9, label %8

8:                                                ; preds = %5
  store ptr %6, ptr %3, align 4
  tail call void @devres_add(ptr noundef %0, ptr noundef nonnull %3) #15
  br label %10

9:                                                ; preds = %5
  tail call void @devres_free(ptr noundef nonnull %3) #15
  br label %10

10:                                               ; preds = %9, %8, %2
  %11 = phi ptr [ %6, %9 ], [ %6, %8 ], [ inttoptr (i32 -12 to ptr), %2 ]
  ret ptr %11
}

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @__devres_alloc_node(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @devm_nvmem_release(ptr nocapture noundef readnone %0, ptr nocapture noundef readonly %1) #0 {
  %3 = load ptr, ptr %1, align 4
  tail call void @nvmem_unregister(ptr noundef %3)
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @devres_add(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @devres_free(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @devm_nvmem_unregister(ptr noundef %0, ptr noundef %1) #0 {
  %3 = tail call i32 @devres_release(ptr noundef %0, ptr noundef nonnull @devm_nvmem_release, ptr noundef nonnull @devm_nvmem_match, ptr noundef %1) #15
  ret i32 %3
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devres_release(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define internal i32 @devm_nvmem_match(ptr nocapture noundef readnone %0, ptr nocapture noundef readonly %1, ptr noundef readnone %2) #3 {
  %4 = load ptr, ptr %1, align 4
  %5 = icmp eq ptr %4, %2
  %6 = zext i1 %5 to i32
  ret i32 %6
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @of_nvmem_device_get(ptr noundef %0, ptr noundef %1) #0 {
  %3 = alloca %struct.of_phandle_args, align 4
  %4 = icmp eq ptr %1, null
  br i1 %4, label %7, label %5

5:                                                ; preds = %2
  %6 = tail call i32 @of_property_match_string(ptr noundef %0, ptr noundef nonnull @.str.6, ptr noundef nonnull %1) #15
  br label %7

7:                                                ; preds = %5, %2
  %8 = phi i32 [ %6, %5 ], [ 0, %2 ]
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %3) #15
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(72) %3, i8 0, i32 72, i1 false) #15, !annotation !10
  %9 = call i32 @__of_parse_phandle_with_args(ptr noundef %0, ptr noundef nonnull @.str.3, ptr noundef null, i32 noundef 0, i32 noundef %8, ptr noundef nonnull %3) #15
  %10 = icmp ne i32 %9, 0
  %11 = load ptr, ptr %3, align 4
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %3) #15
  %12 = icmp eq ptr %11, null
  %13 = select i1 %10, i1 true, i1 %12
  br i1 %13, label %16, label %14

14:                                               ; preds = %7
  %15 = call fastcc ptr @__nvmem_device_get(ptr noundef nonnull %11, ptr noundef nonnull @device_match_of_node)
  call void @of_node_put(ptr noundef nonnull %11) #15
  br label %16

16:                                               ; preds = %14, %7
  %17 = phi ptr [ %15, %14 ], [ inttoptr (i32 -2 to ptr), %7 ]
  ret ptr %17
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_match_string(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc ptr @__nvmem_device_get(ptr noundef %0, ptr noundef %1) unnamed_addr #0 {
  tail call void @mutex_lock(ptr noundef nonnull @nvmem_mutex) #15
  %3 = tail call ptr @bus_find_device(ptr noundef nonnull @nvmem_bus_type, ptr noundef null, ptr noundef %0, ptr noundef %1) #15
  %4 = icmp eq ptr %3, null
  %5 = getelementptr i8, ptr %3, i32 -8
  tail call void @mutex_unlock(ptr noundef nonnull @nvmem_mutex) #15
  %6 = icmp eq ptr %5, null
  %7 = or i1 %4, %6
  br i1 %7, label %30, label %8

8:                                                ; preds = %2
  %9 = load ptr, ptr %5, align 8
  %10 = tail call zeroext i1 @try_module_get(ptr noundef %9) #15
  br i1 %10, label %19, label %11

11:                                               ; preds = %8
  %12 = getelementptr i8, ptr %3, i32 44
  %13 = load ptr, ptr %12, align 4
  %14 = icmp eq ptr %13, null
  br i1 %14, label %15, label %17

15:                                               ; preds = %11
  %16 = load ptr, ptr %3, align 4
  br label %17

17:                                               ; preds = %15, %11
  %18 = phi ptr [ %16, %15 ], [ %13, %11 ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef nonnull %3, ptr noundef nonnull @.str.31, ptr noundef %18) #17
  tail call void @put_device(ptr noundef nonnull %3) #15
  br label %30

19:                                               ; preds = %8
  %20 = getelementptr i8, ptr %3, i32 484
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %20) #15, !srcloc !12
  %21 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %20, ptr %20, i32 1, ptr elementtype(i32) %20) #15, !srcloc !16
  %22 = extractvalue { i32, i32, i32 } %21, 0
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %28, label %24, !prof !9

24:                                               ; preds = %19
  %25 = add i32 %22, 1
  %26 = or i32 %25, %22
  %27 = icmp sgt i32 %26, -1
  br i1 %27, label %30, label %28, !prof !14

28:                                               ; preds = %24, %19
  %29 = phi i32 [ 2, %19 ], [ 1, %24 ]
  tail call void @refcount_warn_saturate(ptr noundef %20, i32 noundef %29) #15
  br label %30

30:                                               ; preds = %28, %24, %17, %2
  %31 = phi ptr [ inttoptr (i32 -22 to ptr), %17 ], [ inttoptr (i32 -517 to ptr), %2 ], [ %5, %24 ], [ %5, %28 ]
  ret ptr %31
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_match_of_node(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_node_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @nvmem_device_get(ptr nocapture noundef readonly %0, ptr noundef %1) #0 {
  %3 = alloca %struct.of_phandle_args, align 4
  %4 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 25
  %5 = load ptr, ptr %4, align 8
  %6 = icmp eq ptr %5, null
  br i1 %6, label %23, label %7

7:                                                ; preds = %2
  %8 = icmp eq ptr %1, null
  br i1 %8, label %11, label %9

9:                                                ; preds = %7
  %10 = tail call i32 @of_property_match_string(ptr noundef nonnull %5, ptr noundef nonnull @.str.6, ptr noundef nonnull %1) #15
  br label %11

11:                                               ; preds = %9, %7
  %12 = phi i32 [ %10, %9 ], [ 0, %7 ]
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %3) #15
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(72) %3, i8 0, i32 72, i1 false) #15, !annotation !10
  %13 = call i32 @__of_parse_phandle_with_args(ptr noundef nonnull %5, ptr noundef nonnull @.str.3, ptr noundef null, i32 noundef 0, i32 noundef %12, ptr noundef nonnull %3) #15
  %14 = icmp ne i32 %13, 0
  %15 = load ptr, ptr %3, align 4
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %3) #15
  %16 = icmp eq ptr %15, null
  %17 = select i1 %14, i1 true, i1 %16
  br i1 %17, label %23, label %18

18:                                               ; preds = %11
  %19 = call fastcc ptr @__nvmem_device_get(ptr noundef nonnull %15, ptr noundef nonnull @device_match_of_node) #15
  call void @of_node_put(ptr noundef nonnull %15) #15
  %20 = icmp ugt ptr %19, inttoptr (i32 -4096 to ptr)
  br i1 %20, label %21, label %25

21:                                               ; preds = %18
  %22 = icmp eq ptr %19, inttoptr (i32 -517 to ptr)
  br i1 %22, label %25, label %23

23:                                               ; preds = %21, %11, %2
  %24 = call fastcc ptr @__nvmem_device_get(ptr noundef %1, ptr noundef nonnull @device_match_name)
  br label %25

25:                                               ; preds = %23, %21, %18
  %26 = phi ptr [ inttoptr (i32 -517 to ptr), %21 ], [ %24, %23 ], [ %19, %18 ]
  ret ptr %26
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_match_name(ptr noundef, ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @nvmem_device_find(ptr noundef %0, ptr noundef %1) #0 {
  %3 = tail call fastcc ptr @__nvmem_device_get(ptr noundef %0, ptr noundef %1)
  ret ptr %3
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @devm_nvmem_device_put(ptr noundef %0, ptr noundef %1) #0 {
  %3 = tail call i32 @devres_release(ptr noundef %0, ptr noundef nonnull @devm_nvmem_device_release, ptr noundef nonnull @devm_nvmem_device_match, ptr noundef %1) #15
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %6, label %5, !prof !14

5:                                                ; preds = %2
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.7, i32 noundef 1106, i32 noundef 9, ptr noundef null) #15
  br label %6

6:                                                ; preds = %5, %2
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @devm_nvmem_device_release(ptr nocapture noundef readnone %0, ptr nocapture noundef readonly %1) #0 {
  %3 = load ptr, ptr %1, align 4
  tail call fastcc void @__nvmem_device_put(ptr noundef %3) #15
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @devm_nvmem_device_match(ptr nocapture noundef readnone %0, ptr noundef readonly %1, ptr noundef readnone %2) #0 {
  %4 = icmp eq ptr %1, null
  br i1 %4, label %8, label %5

5:                                                ; preds = %3
  %6 = load ptr, ptr %1, align 4
  %7 = icmp eq ptr %6, null
  br i1 %7, label %8, label %9, !prof !9

8:                                                ; preds = %5, %3
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.7, i32 noundef 1081, i32 noundef 9, ptr noundef null) #15
  br label %12

9:                                                ; preds = %5
  %10 = icmp eq ptr %6, %2
  %11 = zext i1 %10 to i32
  br label %12

12:                                               ; preds = %9, %8
  %13 = phi i32 [ 0, %8 ], [ %11, %9 ]
  ret i32 %13
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @nvmem_device_put(ptr noundef %0) #0 {
  tail call fastcc void @__nvmem_device_put(ptr noundef %0)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @__nvmem_device_put(ptr noundef %0) unnamed_addr #0 {
  %2 = getelementptr %struct.nvmem_device, ptr %0, i32 0, i32 1
  tail call void @put_device(ptr noundef %2) #15
  %3 = load ptr, ptr %0, align 8
  tail call void @module_put(ptr noundef %3) #15
  %4 = getelementptr inbounds %struct.nvmem_device, ptr %0, i32 0, i32 5
  tail call void asm sideeffect "dmb ish", "~{memory}"() #15, !srcloc !11
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %4) #15, !srcloc !12
  %5 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %4, ptr %4, i32 1, ptr elementtype(i32) %4) #15, !srcloc !13
  %6 = extractvalue { i32, i32, i32 } %5, 0
  %7 = icmp eq i32 %6, 1
  br i1 %7, label %11, label %8

8:                                                ; preds = %1
  %9 = icmp sgt i32 %6, 0
  br i1 %9, label %22, label %10, !prof !14

10:                                               ; preds = %8
  tail call void @refcount_warn_saturate(ptr noundef %4, i32 noundef 3) #15
  br label %22

11:                                               ; preds = %1
  tail call void asm sideeffect "dmb ish", "~{memory}"() #15, !srcloc !15
  %12 = tail call i32 @blocking_notifier_call_chain(ptr noundef nonnull @nvmem_notifier, i32 noundef 2, ptr noundef %0) #15
  %13 = getelementptr %struct.nvmem_device, ptr %0, i32 0, i32 9
  %14 = load i32, ptr %13, align 8
  %15 = and i32 %14, 1
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %21, label %17

17:                                               ; preds = %11
  %18 = getelementptr %struct.nvmem_device, ptr %0, i32 0, i32 12
  %19 = load ptr, ptr %18, align 8
  %20 = getelementptr %struct.nvmem_device, ptr %0, i32 0, i32 11
  tail call void @device_remove_bin_file(ptr noundef %19, ptr noundef %20) #15
  br label %21

21:                                               ; preds = %17, %11
  tail call fastcc void @nvmem_device_remove_all_cells(ptr noundef %0) #15
  tail call void @device_unregister(ptr noundef %2) #15
  br label %22

22:                                               ; preds = %21, %10, %8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @devm_nvmem_device_get(ptr noundef %0, ptr noundef %1) #0 {
  %3 = tail call noalias ptr @__devres_alloc_node(ptr noundef nonnull @devm_nvmem_device_release, i32 noundef 4, i32 noundef 3264, i32 noundef -1, ptr noundef nonnull @.str.8) #15
  %4 = icmp eq ptr %3, null
  br i1 %4, label %10, label %5

5:                                                ; preds = %2
  %6 = tail call ptr @nvmem_device_get(ptr noundef %0, ptr noundef %1)
  %7 = icmp ugt ptr %6, inttoptr (i32 -4096 to ptr)
  br i1 %7, label %9, label %8

8:                                                ; preds = %5
  store ptr %6, ptr %3, align 4
  tail call void @devres_add(ptr noundef %0, ptr noundef nonnull %3) #15
  br label %10

9:                                                ; preds = %5
  tail call void @devres_free(ptr noundef nonnull %3) #15
  br label %10

10:                                               ; preds = %9, %8, %2
  %11 = phi ptr [ %6, %9 ], [ %6, %8 ], [ inttoptr (i32 -12 to ptr), %2 ]
  ret ptr %11
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @of_nvmem_cell_get(ptr noundef %0, ptr noundef %1) #0 {
  %3 = alloca %struct.of_phandle_args, align 4
  %4 = icmp eq ptr %1, null
  br i1 %4, label %7, label %5

5:                                                ; preds = %2
  %6 = tail call i32 @of_property_match_string(ptr noundef %0, ptr noundef nonnull @.str.9, ptr noundef nonnull %1) #15
  br label %7

7:                                                ; preds = %5, %2
  %8 = phi i32 [ %6, %5 ], [ 0, %2 ]
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %3) #15
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(72) %3, i8 0, i32 72, i1 false) #15, !annotation !10
  %9 = call i32 @__of_parse_phandle_with_args(ptr noundef %0, ptr noundef nonnull @.str.10, ptr noundef null, i32 noundef 0, i32 noundef %8, ptr noundef nonnull %3) #15
  %10 = icmp ne i32 %9, 0
  %11 = load ptr, ptr %3, align 4
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %3) #15
  %12 = icmp eq ptr %11, null
  %13 = select i1 %10, i1 true, i1 %12
  br i1 %13, label %49, label %14

14:                                               ; preds = %7
  %15 = call ptr @of_get_next_parent(ptr noundef nonnull %11) #15
  %16 = icmp eq ptr %15, null
  br i1 %16, label %49, label %17

17:                                               ; preds = %14
  %18 = call fastcc ptr @__nvmem_device_get(ptr noundef nonnull %15, ptr noundef nonnull @device_match_of_node)
  call void @of_node_put(ptr noundef nonnull %15) #15
  %19 = icmp ugt ptr %18, inttoptr (i32 -4096 to ptr)
  br i1 %19, label %49, label %20

20:                                               ; preds = %17
  call void @mutex_lock(ptr noundef nonnull @nvmem_mutex) #15
  %21 = getelementptr inbounds %struct.nvmem_device, ptr %18, i32 0, i32 13
  br label %22

22:                                               ; preds = %27, %20
  %23 = phi ptr [ %21, %20 ], [ %24, %27 ]
  %24 = load ptr, ptr %23, align 4
  %25 = icmp eq ptr %24, %21
  br i1 %25, label %26, label %27

26:                                               ; preds = %22
  call void @mutex_unlock(ptr noundef nonnull @nvmem_mutex) #15
  br label %47

27:                                               ; preds = %22
  %28 = getelementptr i8, ptr %24, i32 -8
  %29 = load ptr, ptr %28, align 4
  %30 = icmp eq ptr %29, %11
  br i1 %30, label %31, label %22

31:                                               ; preds = %27
  %32 = getelementptr i8, ptr %24, i32 -28
  call void @mutex_unlock(ptr noundef nonnull @nvmem_mutex) #15
  %33 = icmp eq ptr %32, null
  br i1 %33, label %47, label %34

34:                                               ; preds = %31
  %35 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %36 = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %35, i32 noundef 3520, i32 noundef 8) #16
  %37 = icmp eq ptr %36, null
  br i1 %37, label %47, label %38

38:                                               ; preds = %34
  br i1 %4, label %43, label %39

39:                                               ; preds = %38
  %40 = call ptr @kstrdup_const(ptr noundef nonnull %1, i32 noundef 3264) #15
  %41 = icmp eq ptr %40, null
  br i1 %41, label %42, label %43

42:                                               ; preds = %39
  call void @kfree(ptr noundef nonnull %36) #15
  br label %47

43:                                               ; preds = %39, %38
  %44 = phi ptr [ %40, %39 ], [ null, %38 ]
  %45 = getelementptr inbounds %struct.nvmem_cell, ptr %36, i32 0, i32 1
  store ptr %44, ptr %45, align 4
  store ptr %32, ptr %36, align 8
  %46 = icmp ugt ptr %36, inttoptr (i32 -4096 to ptr)
  br i1 %46, label %47, label %49

47:                                               ; preds = %43, %42, %34, %31, %26
  %48 = phi ptr [ inttoptr (i32 -2 to ptr), %26 ], [ inttoptr (i32 -2 to ptr), %31 ], [ %36, %43 ], [ inttoptr (i32 -12 to ptr), %42 ], [ inttoptr (i32 -12 to ptr), %34 ]
  call fastcc void @__nvmem_device_put(ptr noundef %18)
  br label %49

49:                                               ; preds = %47, %43, %17, %14, %7
  %50 = phi ptr [ %36, %43 ], [ inttoptr (i32 -2 to ptr), %7 ], [ inttoptr (i32 -22 to ptr), %14 ], [ %18, %17 ], [ %48, %47 ]
  ret ptr %50
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_next_parent(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @nvmem_cell_get(ptr noundef readonly %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 25
  %4 = load ptr, ptr %3, align 8
  %5 = icmp eq ptr %4, null
  br i1 %5, label %11, label %6

6:                                                ; preds = %2
  %7 = tail call ptr @of_nvmem_cell_get(ptr noundef nonnull %4, ptr noundef %1)
  %8 = icmp ule ptr %7, inttoptr (i32 -4096 to ptr)
  %9 = icmp eq ptr %7, inttoptr (i32 -517 to ptr)
  %10 = or i1 %8, %9
  br i1 %10, label %76, label %11

11:                                               ; preds = %6, %2
  %12 = icmp eq ptr %1, null
  %13 = icmp eq ptr %0, null
  %14 = or i1 %13, %12
  br i1 %14, label %76, label %15

15:                                               ; preds = %11
  %16 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 3
  %17 = load ptr, ptr %16, align 4
  %18 = icmp eq ptr %17, null
  br i1 %18, label %19, label %21

19:                                               ; preds = %15
  %20 = load ptr, ptr %0, align 4
  br label %21

21:                                               ; preds = %19, %15
  %22 = phi ptr [ %20, %19 ], [ %17, %15 ]
  tail call void @mutex_lock(ptr noundef nonnull @nvmem_lookup_mutex) #15
  %23 = load ptr, ptr @nvmem_lookup_list, align 4
  %24 = icmp eq ptr %23, @nvmem_lookup_list
  br i1 %24, label %74, label %25

25:                                               ; preds = %69, %21
  %26 = phi ptr [ %70, %69 ], [ %23, %21 ]
  %27 = getelementptr i8, ptr %26, i32 -8
  %28 = load ptr, ptr %27, align 4
  %29 = tail call i32 @strcmp(ptr noundef %28, ptr noundef %22) #15
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %31, label %69

31:                                               ; preds = %25
  %32 = getelementptr i8, ptr %26, i32 -4
  %33 = load ptr, ptr %32, align 4
  %34 = tail call i32 @strcmp(ptr noundef %33, ptr noundef %1) #15
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %36, label %69

36:                                               ; preds = %31
  %37 = getelementptr i8, ptr %26, i32 -16
  %38 = load ptr, ptr %37, align 4
  %39 = tail call fastcc ptr @__nvmem_device_get(ptr noundef %38, ptr noundef nonnull @device_match_name) #15
  %40 = icmp ugt ptr %39, inttoptr (i32 -4096 to ptr)
  br i1 %40, label %74, label %41

41:                                               ; preds = %36
  %42 = getelementptr i8, ptr %26, i32 -12
  %43 = load ptr, ptr %42, align 4
  tail call void @mutex_lock(ptr noundef nonnull @nvmem_mutex) #15
  %44 = getelementptr inbounds %struct.nvmem_device, ptr %39, i32 0, i32 13
  br label %45

45:                                               ; preds = %50, %41
  %46 = phi ptr [ %44, %41 ], [ %47, %50 ]
  %47 = load ptr, ptr %46, align 4
  %48 = icmp eq ptr %47, %44
  br i1 %48, label %49, label %50

49:                                               ; preds = %45
  tail call void @mutex_unlock(ptr noundef nonnull @nvmem_mutex) #15
  br label %72

50:                                               ; preds = %45
  %51 = getelementptr i8, ptr %47, i32 -28
  %52 = load ptr, ptr %51, align 4
  %53 = tail call i32 @strcmp(ptr noundef %43, ptr noundef %52) #15
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %55, label %45

55:                                               ; preds = %50
  %56 = getelementptr i8, ptr %47, i32 -28
  tail call void @mutex_unlock(ptr noundef nonnull @nvmem_mutex) #15
  %57 = icmp eq ptr %56, null
  br i1 %57, label %72, label %58

58:                                               ; preds = %55
  %59 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %60 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %59, i32 noundef 3520, i32 noundef 8) #16
  %61 = icmp eq ptr %60, null
  br i1 %61, label %72, label %62

62:                                               ; preds = %58
  %63 = tail call ptr @kstrdup_const(ptr noundef nonnull %1, i32 noundef 3264) #15
  %64 = icmp eq ptr %63, null
  br i1 %64, label %65, label %66

65:                                               ; preds = %62
  tail call void @kfree(ptr noundef nonnull %60) #15
  br label %72

66:                                               ; preds = %62
  %67 = getelementptr inbounds %struct.nvmem_cell, ptr %60, i32 0, i32 1
  store ptr %63, ptr %67, align 4
  store ptr %56, ptr %60, align 8
  %68 = icmp ugt ptr %60, inttoptr (i32 -4096 to ptr)
  br i1 %68, label %72, label %74

69:                                               ; preds = %31, %25
  %70 = load ptr, ptr %26, align 4
  %71 = icmp eq ptr %70, @nvmem_lookup_list
  br i1 %71, label %74, label %25

72:                                               ; preds = %66, %65, %58, %55, %49
  %73 = phi ptr [ inttoptr (i32 -2 to ptr), %49 ], [ inttoptr (i32 -2 to ptr), %55 ], [ %60, %66 ], [ inttoptr (i32 -12 to ptr), %65 ], [ inttoptr (i32 -12 to ptr), %58 ]
  tail call fastcc void @__nvmem_device_put(ptr noundef %39) #15
  br label %74

74:                                               ; preds = %72, %69, %66, %36, %21
  %75 = phi ptr [ %60, %66 ], [ %39, %36 ], [ inttoptr (i32 -2 to ptr), %21 ], [ %73, %72 ], [ inttoptr (i32 -2 to ptr), %69 ]
  tail call void @mutex_unlock(ptr noundef nonnull @nvmem_lookup_mutex) #15
  br label %76

76:                                               ; preds = %74, %11, %6
  %77 = phi ptr [ %7, %6 ], [ inttoptr (i32 -22 to ptr), %11 ], [ %75, %74 ]
  ret ptr %77
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @devm_nvmem_cell_get(ptr noundef %0, ptr noundef %1) #0 {
  %3 = tail call noalias ptr @__devres_alloc_node(ptr noundef nonnull @devm_nvmem_cell_release, i32 noundef 4, i32 noundef 3264, i32 noundef -1, ptr noundef nonnull @.str.11) #15
  %4 = icmp eq ptr %3, null
  br i1 %4, label %10, label %5

5:                                                ; preds = %2
  %6 = tail call ptr @nvmem_cell_get(ptr noundef %0, ptr noundef %1)
  %7 = icmp ugt ptr %6, inttoptr (i32 -4096 to ptr)
  br i1 %7, label %9, label %8

8:                                                ; preds = %5
  store ptr %6, ptr %3, align 4
  tail call void @devres_add(ptr noundef %0, ptr noundef nonnull %3) #15
  br label %10

9:                                                ; preds = %5
  tail call void @devres_free(ptr noundef nonnull %3) #15
  br label %10

10:                                               ; preds = %9, %8, %2
  %11 = phi ptr [ %6, %9 ], [ %6, %8 ], [ inttoptr (i32 -12 to ptr), %2 ]
  ret ptr %11
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @devm_nvmem_cell_release(ptr nocapture noundef readnone %0, ptr nocapture noundef readonly %1) #0 {
  %3 = load ptr, ptr %1, align 4
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.nvmem_cell_entry, ptr %4, i32 0, i32 6
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.nvmem_cell, ptr %3, i32 0, i32 1
  %8 = load ptr, ptr %7, align 4
  %9 = icmp eq ptr %8, null
  br i1 %9, label %11, label %10

10:                                               ; preds = %2
  tail call void @kfree_const(ptr noundef nonnull %8) #15
  br label %11

11:                                               ; preds = %10, %2
  tail call void @kfree(ptr noundef %3) #15
  tail call fastcc void @__nvmem_device_put(ptr noundef %6) #15
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @devm_nvmem_cell_put(ptr noundef %0, ptr noundef %1) #0 {
  %3 = tail call i32 @devres_release(ptr noundef %0, ptr noundef nonnull @devm_nvmem_cell_release, ptr noundef nonnull @devm_nvmem_cell_match, ptr noundef %1) #15
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %6, label %5, !prof !14

5:                                                ; preds = %2
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.7, i32 noundef 1379, i32 noundef 9, ptr noundef null) #15
  br label %6

6:                                                ; preds = %5, %2
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @devm_nvmem_cell_match(ptr nocapture noundef readnone %0, ptr noundef readonly %1, ptr noundef readnone %2) #0 {
  %4 = icmp eq ptr %1, null
  br i1 %4, label %8, label %5

5:                                                ; preds = %3
  %6 = load ptr, ptr %1, align 4
  %7 = icmp eq ptr %6, null
  br i1 %7, label %8, label %9, !prof !9

8:                                                ; preds = %5, %3
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.7, i32 noundef 1359, i32 noundef 9, ptr noundef null) #15
  br label %12

9:                                                ; preds = %5
  %10 = icmp eq ptr %6, %2
  %11 = zext i1 %10 to i32
  br label %12

12:                                               ; preds = %9, %8
  %13 = phi i32 [ 0, %8 ], [ %11, %9 ]
  ret i32 %13
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @nvmem_cell_put(ptr noundef %0) #0 {
  %2 = load ptr, ptr %0, align 4
  %3 = getelementptr inbounds %struct.nvmem_cell_entry, ptr %2, i32 0, i32 6
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.nvmem_cell, ptr %0, i32 0, i32 1
  %6 = load ptr, ptr %5, align 4
  %7 = icmp eq ptr %6, null
  br i1 %7, label %9, label %8

8:                                                ; preds = %1
  tail call void @kfree_const(ptr noundef nonnull %6) #15
  br label %9

9:                                                ; preds = %8, %1
  tail call void @kfree(ptr noundef %0) #15
  tail call fastcc void @__nvmem_device_put(ptr noundef %4)
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree_const(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @nvmem_cell_read(ptr nocapture noundef readonly %0, ptr noundef %1) #0 {
  %3 = load ptr, ptr %0, align 4
  %4 = getelementptr inbounds %struct.nvmem_cell_entry, ptr %3, i32 0, i32 6
  %5 = load ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %20, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.nvmem_cell_entry, ptr %3, i32 0, i32 2
  %9 = load i32, ptr %8, align 4
  %10 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %9, i32 noundef 3520) #18
  %11 = icmp eq ptr %10, null
  br i1 %11, label %20, label %12

12:                                               ; preds = %7
  %13 = load ptr, ptr %0, align 4
  %14 = getelementptr inbounds %struct.nvmem_cell, ptr %0, i32 0, i32 1
  %15 = load ptr, ptr %14, align 4
  %16 = tail call fastcc i32 @__nvmem_cell_read(ptr noundef nonnull %5, ptr noundef %13, ptr noundef nonnull %10, ptr noundef %1, ptr noundef %15)
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %20, label %18

18:                                               ; preds = %12
  tail call void @kfree(ptr noundef nonnull %10) #15
  %19 = inttoptr i32 %16 to ptr
  br label %20

20:                                               ; preds = %18, %12, %7, %2
  %21 = phi ptr [ %19, %18 ], [ %10, %12 ], [ inttoptr (i32 -22 to ptr), %2 ], [ inttoptr (i32 -12 to ptr), %7 ]
  ret ptr %21
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @__nvmem_cell_read(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr noundef %2, ptr noundef writeonly %3, ptr noundef %4) unnamed_addr #0 {
  %6 = getelementptr inbounds %struct.nvmem_cell_entry, ptr %1, i32 0, i32 1
  %7 = load i32, ptr %6, align 4
  %8 = getelementptr inbounds %struct.nvmem_cell_entry, ptr %1, i32 0, i32 2
  %9 = load i32, ptr %8, align 4
  %10 = tail call fastcc i32 @nvmem_reg_read(ptr noundef %0, i32 noundef %7, ptr noundef %2, i32 noundef %9)
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %90

12:                                               ; preds = %5
  %13 = getelementptr inbounds %struct.nvmem_cell_entry, ptr %1, i32 0, i32 3
  %14 = load i32, ptr %13, align 4
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %20

16:                                               ; preds = %12
  %17 = getelementptr inbounds %struct.nvmem_cell_entry, ptr %1, i32 0, i32 4
  %18 = load i32, ptr %17, align 4
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %75, label %44

20:                                               ; preds = %12
  %21 = load i8, ptr %2, align 1
  %22 = zext i8 %21 to i32
  %23 = lshr i32 %22, %14
  %24 = trunc i32 %23 to i8
  store i8 %24, ptr %2, align 1
  %25 = load i32, ptr %8, align 4
  %26 = icmp sgt i32 %25, 1
  br i1 %26, label %27, label %48

27:                                               ; preds = %20
  %28 = sub i32 8, %14
  br label %29

29:                                               ; preds = %29, %27
  %30 = phi i8 [ %24, %27 ], [ %40, %29 ]
  %31 = phi i32 [ 1, %27 ], [ %41, %29 ]
  %32 = phi ptr [ %2, %27 ], [ %33, %29 ]
  %33 = getelementptr i8, ptr %32, i32 1
  %34 = load i8, ptr %33, align 1
  %35 = zext i8 %34 to i32
  %36 = shl i32 %35, %28
  %37 = trunc i32 %36 to i8
  %38 = or i8 %30, %37
  store i8 %38, ptr %32, align 1
  %39 = lshr i32 %35, %14
  %40 = trunc i32 %39 to i8
  store i8 %40, ptr %33, align 1
  %41 = add nuw nsw i32 %31, 1
  %42 = load i32, ptr %8, align 4
  %43 = icmp slt i32 %41, %42
  br i1 %43, label %29, label %48

44:                                               ; preds = %16
  %45 = load i32, ptr %8, align 4
  %46 = add i32 %45, -1
  %47 = getelementptr i8, ptr %2, i32 %46
  br label %48

48:                                               ; preds = %44, %29, %20
  %49 = phi i32 [ %45, %44 ], [ %25, %20 ], [ %42, %29 ]
  %50 = phi ptr [ %47, %44 ], [ %2, %20 ], [ %33, %29 ]
  %51 = getelementptr inbounds %struct.nvmem_cell_entry, ptr %1, i32 0, i32 4
  %52 = load i32, ptr %51, align 4
  %53 = add i32 %52, 7
  %54 = sdiv i32 %53, -8
  %55 = add i32 %54, %49
  %56 = add i32 %55, -1
  %57 = icmp sgt i32 %56, -1
  br i1 %57, label %58, label %64

58:                                               ; preds = %48
  %59 = sub i32 1, %55
  %60 = getelementptr i8, ptr %50, i32 %59
  tail call void @llvm.memset.p0.i32(ptr align 1 %60, i8 0, i32 %55, i1 false) #15
  %61 = sub i32 0, %55
  %62 = getelementptr i8, ptr %50, i32 %61
  %63 = load i32, ptr %51, align 4
  br label %64

64:                                               ; preds = %58, %48
  %65 = phi i32 [ %52, %48 ], [ %63, %58 ]
  %66 = phi ptr [ %50, %48 ], [ %62, %58 ]
  %67 = srem i32 %65, 8
  %68 = icmp eq i32 %67, 0
  br i1 %68, label %75, label %69

69:                                               ; preds = %64
  %70 = sub nsw i32 32, %67
  %71 = lshr i32 -1, %70
  %72 = load i8, ptr %66, align 1
  %73 = trunc i32 %71 to i8
  %74 = and i8 %72, %73
  store i8 %74, ptr %66, align 1
  br label %75

75:                                               ; preds = %69, %64, %16
  %76 = getelementptr inbounds %struct.nvmem_device, ptr %0, i32 0, i32 18
  %77 = load ptr, ptr %76, align 4
  %78 = icmp eq ptr %77, null
  br i1 %78, label %86, label %79

79:                                               ; preds = %75
  %80 = getelementptr inbounds %struct.nvmem_device, ptr %0, i32 0, i32 20
  %81 = load ptr, ptr %80, align 4
  %82 = load i32, ptr %6, align 4
  %83 = load i32, ptr %8, align 4
  %84 = tail call i32 %77(ptr noundef %81, ptr noundef %4, i32 noundef %82, ptr noundef %2, i32 noundef %83) #15
  %85 = icmp eq i32 %84, 0
  br i1 %85, label %86, label %90

86:                                               ; preds = %79, %75
  %87 = icmp eq ptr %3, null
  br i1 %87, label %90, label %88

88:                                               ; preds = %86
  %89 = load i32, ptr %8, align 4
  store i32 %89, ptr %3, align 4
  br label %90

90:                                               ; preds = %88, %86, %79, %5
  %91 = phi i32 [ %10, %5 ], [ %84, %79 ], [ 0, %88 ], [ 0, %86 ]
  ret i32 %91
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @nvmem_cell_write(ptr nocapture noundef readonly %0, ptr noundef %1, i32 noundef %2) #0 {
  %4 = load ptr, ptr %0, align 4
  %5 = tail call fastcc i32 @__nvmem_cell_entry_write(ptr noundef %4, ptr noundef %1, i32 noundef %2)
  ret i32 %5
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @__nvmem_cell_entry_write(ptr nocapture noundef readonly %0, ptr noundef %1, i32 noundef %2) unnamed_addr #0 {
  %4 = alloca i8, align 1
  %5 = getelementptr inbounds %struct.nvmem_cell_entry, ptr %0, i32 0, i32 6
  %6 = load ptr, ptr %5, align 4
  %7 = icmp eq ptr %6, null
  br i1 %7, label %138, label %8

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.nvmem_device, ptr %6, i32 0, i32 7
  %10 = load i8, ptr %9, align 4, !range !8
  %11 = icmp eq i8 %10, 0
  br i1 %11, label %12, label %138

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct.nvmem_cell_entry, ptr %0, i32 0, i32 3
  %14 = load i32, ptr %13, align 4
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %21, label %16

16:                                               ; preds = %12
  %17 = getelementptr inbounds %struct.nvmem_cell_entry, ptr %0, i32 0, i32 4
  %18 = load i32, ptr %17, align 4
  %19 = getelementptr inbounds %struct.nvmem_cell_entry, ptr %0, i32 0, i32 2
  %20 = load i32, ptr %19, align 4
  br label %29

21:                                               ; preds = %12
  %22 = getelementptr inbounds %struct.nvmem_cell_entry, ptr %0, i32 0, i32 2
  %23 = load i32, ptr %22, align 4
  %24 = icmp eq i32 %23, %2
  br i1 %24, label %25, label %138

25:                                               ; preds = %21
  %26 = getelementptr inbounds %struct.nvmem_cell_entry, ptr %0, i32 0, i32 4
  %27 = load i32, ptr %26, align 4
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %104, label %29

29:                                               ; preds = %25, %16
  %30 = phi i32 [ %20, %16 ], [ %2, %25 ]
  %31 = phi i32 [ %18, %16 ], [ %27, %25 ]
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %4) #15
  store i8 0, ptr %4, align 1, !annotation !10
  %32 = getelementptr inbounds %struct.nvmem_cell_entry, ptr %0, i32 0, i32 2
  %33 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %30, i32 noundef 3520) #18
  %34 = icmp eq ptr %33, null
  br i1 %34, label %35, label %36

35:                                               ; preds = %29
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %4) #15
  br label %101

36:                                               ; preds = %29
  tail call void @llvm.memcpy.p0.p0.i32(ptr nonnull align 64 %33, ptr align 1 %1, i32 %2, i1 false) #15
  br i1 %15, label %73, label %37

37:                                               ; preds = %36
  %38 = load i8, ptr %33, align 64
  %39 = zext i8 %38 to i32
  %40 = shl i32 %39, %14
  %41 = trunc i32 %40 to i8
  store i8 %41, ptr %33, align 64
  %42 = getelementptr inbounds %struct.nvmem_cell_entry, ptr %0, i32 0, i32 1
  %43 = load i32, ptr %42, align 4
  %44 = call fastcc i32 @nvmem_reg_read(ptr noundef nonnull %6, i32 noundef %43, ptr noundef nonnull %4, i32 noundef 1) #15
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %46, label %93

46:                                               ; preds = %37
  %47 = sub i32 32, %14
  %48 = lshr i32 -1, %47
  %49 = load i8, ptr %4, align 1
  %50 = load i8, ptr %33, align 64
  %51 = trunc i32 %48 to i8
  %52 = and i8 %49, %51
  %53 = or i8 %52, %50
  store i8 %53, ptr %33, align 64
  %54 = load i32, ptr %32, align 4
  %55 = icmp sgt i32 %54, 1
  br i1 %55, label %56, label %73

56:                                               ; preds = %46
  %57 = sub i32 7, %14
  %58 = load i32, ptr %32, align 4
  br label %59

59:                                               ; preds = %59, %56
  %60 = phi i8 [ %38, %56 ], [ %66, %59 ]
  %61 = phi ptr [ %33, %56 ], [ %63, %59 ]
  %62 = phi i32 [ 1, %56 ], [ %71, %59 ]
  %63 = getelementptr i8, ptr %61, i32 1
  %64 = zext i8 %60 to i32
  %65 = lshr i32 %64, %57
  %66 = load i8, ptr %63, align 1
  %67 = zext i8 %66 to i32
  %68 = shl i32 %67, %14
  %69 = or i32 %68, %65
  %70 = trunc i32 %69 to i8
  store i8 %70, ptr %63, align 1
  %71 = add nuw nsw i32 %62, 1
  %72 = icmp slt i32 %71, %58
  br i1 %72, label %59, label %73

73:                                               ; preds = %59, %46, %36
  %74 = phi ptr [ %33, %36 ], [ %33, %46 ], [ %63, %59 ]
  %75 = add i32 %31, %14
  %76 = srem i32 %75, 8
  %77 = icmp eq i32 %76, 0
  br i1 %77, label %96, label %78

78:                                               ; preds = %73
  %79 = getelementptr inbounds %struct.nvmem_cell_entry, ptr %0, i32 0, i32 1
  %80 = load i32, ptr %79, align 4
  %81 = load i32, ptr %32, align 4
  %82 = add i32 %80, -1
  %83 = add i32 %82, %81
  %84 = call fastcc i32 @nvmem_reg_read(ptr noundef nonnull %6, i32 noundef %83, ptr noundef nonnull %4, i32 noundef 1) #15
  %85 = icmp eq i32 %84, 0
  br i1 %85, label %86, label %93

86:                                               ; preds = %78
  %87 = shl nsw i32 -1, %76
  %88 = load i8, ptr %4, align 1
  %89 = load i8, ptr %74, align 1
  %90 = trunc i32 %87 to i8
  %91 = and i8 %88, %90
  %92 = or i8 %91, %89
  store i8 %92, ptr %74, align 1
  br label %96

93:                                               ; preds = %78, %37
  %94 = phi i32 [ %44, %37 ], [ %84, %78 ]
  call void @kfree(ptr noundef nonnull %33) #15
  %95 = inttoptr i32 %94 to ptr
  br label %96

96:                                               ; preds = %93, %86, %73
  %97 = phi ptr [ %95, %93 ], [ %33, %86 ], [ %33, %73 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %4) #15
  %98 = icmp ugt ptr %97, inttoptr (i32 -4096 to ptr)
  br i1 %98, label %101, label %99

99:                                               ; preds = %96
  %100 = load i32, ptr %32, align 4
  br label %104

101:                                              ; preds = %96, %35
  %102 = phi ptr [ inttoptr (i32 -12 to ptr), %35 ], [ %97, %96 ]
  %103 = ptrtoint ptr %102 to i32
  br label %138

104:                                              ; preds = %99, %25
  %105 = phi i32 [ %100, %99 ], [ %2, %25 ]
  %106 = phi ptr [ %97, %99 ], [ %1, %25 ]
  %107 = getelementptr inbounds %struct.nvmem_cell_entry, ptr %0, i32 0, i32 1
  %108 = load i32, ptr %107, align 4
  %109 = getelementptr inbounds %struct.nvmem_device, ptr %6, i32 0, i32 15
  %110 = load i32, ptr %109, align 8
  %111 = icmp eq i32 %110, 0
  br i1 %111, label %112, label %124

112:                                              ; preds = %104
  %113 = getelementptr inbounds %struct.nvmem_device, ptr %6, i32 0, i32 17
  %114 = load ptr, ptr %113, align 8
  %115 = icmp eq ptr %114, null
  br i1 %115, label %126, label %116

116:                                              ; preds = %112
  %117 = getelementptr inbounds %struct.nvmem_device, ptr %6, i32 0, i32 19
  %118 = load ptr, ptr %117, align 8
  call void @gpiod_set_value_cansleep(ptr noundef %118, i32 noundef 0) #15
  %119 = load ptr, ptr %113, align 8
  %120 = getelementptr inbounds %struct.nvmem_device, ptr %6, i32 0, i32 20
  %121 = load ptr, ptr %120, align 4
  %122 = call i32 %119(ptr noundef %121, i32 noundef %108, ptr noundef %106, i32 noundef %105) #15
  %123 = load ptr, ptr %117, align 8
  call void @gpiod_set_value_cansleep(ptr noundef %123, i32 noundef 1) #15
  br label %126

124:                                              ; preds = %104
  %125 = call fastcc i32 @nvmem_access_with_keepouts(ptr noundef nonnull %6, i32 noundef %108, ptr noundef %106, i32 noundef %105, i32 noundef 1) #15
  br label %126

126:                                              ; preds = %124, %116, %112
  %127 = phi i32 [ %125, %124 ], [ %122, %116 ], [ -22, %112 ]
  %128 = load i32, ptr %13, align 4
  %129 = icmp eq i32 %128, 0
  br i1 %129, label %130, label %134

130:                                              ; preds = %126
  %131 = getelementptr inbounds %struct.nvmem_cell_entry, ptr %0, i32 0, i32 4
  %132 = load i32, ptr %131, align 4
  %133 = icmp eq i32 %132, 0
  br i1 %133, label %135, label %134

134:                                              ; preds = %130, %126
  call void @kfree(ptr noundef %106) #15
  br label %135

135:                                              ; preds = %134, %130
  %136 = icmp eq i32 %127, 0
  %137 = select i1 %136, i32 %2, i32 %127
  br label %138

138:                                              ; preds = %135, %101, %21, %8, %3
  %139 = phi i32 [ %103, %101 ], [ -22, %21 ], [ -22, %8 ], [ -22, %3 ], [ %137, %135 ]
  ret i32 %139
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @nvmem_cell_read_u8(ptr noundef %0, ptr noundef %1, ptr nocapture noundef writeonly %2) #0 {
  %4 = tail call fastcc i32 @nvmem_cell_read_common(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef 1)
  ret i32 %4
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @nvmem_cell_read_common(ptr noundef %0, ptr noundef %1, ptr nocapture noundef writeonly %2, i32 noundef %3) unnamed_addr #0 {
  %5 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #15
  store i32 0, ptr %5, align 4, !annotation !10
  %6 = tail call ptr @nvmem_cell_get(ptr noundef %0, ptr noundef %1)
  %7 = icmp ugt ptr %6, inttoptr (i32 -4096 to ptr)
  br i1 %7, label %8, label %10

8:                                                ; preds = %4
  %9 = ptrtoint ptr %6 to i32
  br label %61

10:                                               ; preds = %4
  %11 = load ptr, ptr %6, align 4
  %12 = getelementptr inbounds %struct.nvmem_cell_entry, ptr %11, i32 0, i32 6
  %13 = load ptr, ptr %12, align 4
  %14 = icmp eq ptr %13, null
  br i1 %14, label %31, label %15

15:                                               ; preds = %10
  %16 = getelementptr inbounds %struct.nvmem_cell_entry, ptr %11, i32 0, i32 2
  %17 = load i32, ptr %16, align 4
  %18 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %17, i32 noundef 3520) #18
  %19 = icmp eq ptr %18, null
  br i1 %19, label %31, label %20

20:                                               ; preds = %15
  %21 = load ptr, ptr %6, align 4
  %22 = getelementptr inbounds %struct.nvmem_cell, ptr %6, i32 0, i32 1
  %23 = load ptr, ptr %22, align 4
  %24 = call fastcc i32 @__nvmem_cell_read(ptr noundef nonnull %13, ptr noundef %21, ptr noundef nonnull %18, ptr noundef nonnull %5, ptr noundef %23) #15
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %28, label %26

26:                                               ; preds = %20
  call void @kfree(ptr noundef nonnull %18) #15
  %27 = inttoptr i32 %24 to ptr
  br label %28

28:                                               ; preds = %26, %20
  %29 = phi ptr [ %27, %26 ], [ %18, %20 ]
  %30 = icmp ugt ptr %29, inttoptr (i32 -4096 to ptr)
  br i1 %30, label %31, label %42

31:                                               ; preds = %28, %15, %10
  %32 = phi ptr [ %29, %28 ], [ inttoptr (i32 -12 to ptr), %15 ], [ inttoptr (i32 -22 to ptr), %10 ]
  %33 = load ptr, ptr %6, align 4
  %34 = getelementptr inbounds %struct.nvmem_cell_entry, ptr %33, i32 0, i32 6
  %35 = load ptr, ptr %34, align 4
  %36 = getelementptr inbounds %struct.nvmem_cell, ptr %6, i32 0, i32 1
  %37 = load ptr, ptr %36, align 4
  %38 = icmp eq ptr %37, null
  br i1 %38, label %40, label %39

39:                                               ; preds = %31
  call void @kfree_const(ptr noundef nonnull %37) #15
  br label %40

40:                                               ; preds = %39, %31
  call void @kfree(ptr noundef %6) #15
  call fastcc void @__nvmem_device_put(ptr noundef %35) #15
  %41 = ptrtoint ptr %32 to i32
  br label %61

42:                                               ; preds = %28
  %43 = load i32, ptr %5, align 4
  %44 = icmp eq i32 %43, %3
  br i1 %44, label %53, label %45

45:                                               ; preds = %42
  call void @kfree(ptr noundef %29) #15
  %46 = load ptr, ptr %6, align 4
  %47 = getelementptr inbounds %struct.nvmem_cell_entry, ptr %46, i32 0, i32 6
  %48 = load ptr, ptr %47, align 4
  %49 = load ptr, ptr %22, align 4
  %50 = icmp eq ptr %49, null
  br i1 %50, label %52, label %51

51:                                               ; preds = %45
  call void @kfree_const(ptr noundef nonnull %49) #15
  br label %52

52:                                               ; preds = %51, %45
  call void @kfree(ptr noundef %6) #15
  call fastcc void @__nvmem_device_put(ptr noundef %48) #15
  br label %61

53:                                               ; preds = %42
  call void @llvm.memcpy.p0.p0.i32(ptr align 1 %2, ptr align 1 %29, i32 %3, i1 false)
  call void @kfree(ptr noundef %29) #15
  %54 = load ptr, ptr %6, align 4
  %55 = getelementptr inbounds %struct.nvmem_cell_entry, ptr %54, i32 0, i32 6
  %56 = load ptr, ptr %55, align 4
  %57 = load ptr, ptr %22, align 4
  %58 = icmp eq ptr %57, null
  br i1 %58, label %60, label %59

59:                                               ; preds = %53
  call void @kfree_const(ptr noundef nonnull %57) #15
  br label %60

60:                                               ; preds = %59, %53
  call void @kfree(ptr noundef %6) #15
  call fastcc void @__nvmem_device_put(ptr noundef %56) #15
  br label %61

61:                                               ; preds = %60, %52, %40, %8
  %62 = phi i32 [ %9, %8 ], [ %41, %40 ], [ -22, %52 ], [ 0, %60 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #15
  ret i32 %62
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @nvmem_cell_read_u16(ptr noundef %0, ptr noundef %1, ptr nocapture noundef writeonly %2) #0 {
  %4 = tail call fastcc i32 @nvmem_cell_read_common(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef 2)
  ret i32 %4
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @nvmem_cell_read_u32(ptr noundef %0, ptr noundef %1, ptr nocapture noundef writeonly %2) #0 {
  %4 = tail call fastcc i32 @nvmem_cell_read_common(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef 4)
  ret i32 %4
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @nvmem_cell_read_u64(ptr noundef %0, ptr noundef %1, ptr nocapture noundef writeonly %2) #0 {
  %4 = tail call fastcc i32 @nvmem_cell_read_common(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef 8)
  ret i32 %4
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @nvmem_cell_read_variable_le_u32(ptr noundef %0, ptr noundef %1, ptr nocapture noundef %2) #0 {
  %4 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #15
  store i32 0, ptr %4, align 4, !annotation !10
  %5 = call fastcc ptr @nvmem_cell_read_variable_common(ptr noundef %0, ptr noundef %1, i32 noundef 4, ptr noundef nonnull %4)
  %6 = icmp ugt ptr %5, inttoptr (i32 -4096 to ptr)
  br i1 %6, label %7, label %9

7:                                                ; preds = %3
  %8 = ptrtoint ptr %5 to i32
  br label %24

9:                                                ; preds = %3
  store i32 0, ptr %2, align 4
  %10 = load i32, ptr %4, align 4
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %23, label %12

12:                                               ; preds = %12, %9
  %13 = phi i32 [ %20, %12 ], [ 0, %9 ]
  %14 = phi i32 [ %21, %12 ], [ 0, %9 ]
  %15 = getelementptr i8, ptr %5, i32 %14
  %16 = load i8, ptr %15, align 1
  %17 = zext i8 %16 to i32
  %18 = shl i32 %14, 3
  %19 = shl i32 %17, %18
  %20 = or i32 %19, %13
  store i32 %20, ptr %2, align 4
  %21 = add nuw i32 %14, 1
  %22 = icmp eq i32 %21, %10
  br i1 %22, label %23, label %12

23:                                               ; preds = %12, %9
  call void @kfree(ptr noundef %5) #15
  br label %24

24:                                               ; preds = %23, %7
  %25 = phi i32 [ %8, %7 ], [ 0, %23 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #15
  ret i32 %25
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc ptr @nvmem_cell_read_variable_common(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3) unnamed_addr #0 {
  %5 = tail call ptr @nvmem_cell_get(ptr noundef %0, ptr noundef %1)
  %6 = icmp ugt ptr %5, inttoptr (i32 -4096 to ptr)
  br i1 %6, label %49, label %7

7:                                                ; preds = %4
  %8 = load ptr, ptr %5, align 4
  %9 = getelementptr inbounds %struct.nvmem_cell_entry, ptr %8, i32 0, i32 4
  %10 = load i32, ptr %9, align 4
  %11 = getelementptr inbounds %struct.nvmem_cell_entry, ptr %8, i32 0, i32 6
  %12 = load ptr, ptr %11, align 4
  %13 = icmp eq ptr %12, null
  br i1 %13, label %27, label %14

14:                                               ; preds = %7
  %15 = getelementptr inbounds %struct.nvmem_cell_entry, ptr %8, i32 0, i32 2
  %16 = load i32, ptr %15, align 4
  %17 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %16, i32 noundef 3520) #18
  %18 = icmp eq ptr %17, null
  br i1 %18, label %27, label %19

19:                                               ; preds = %14
  %20 = load ptr, ptr %5, align 4
  %21 = getelementptr inbounds %struct.nvmem_cell, ptr %5, i32 0, i32 1
  %22 = load ptr, ptr %21, align 4
  %23 = tail call fastcc i32 @__nvmem_cell_read(ptr noundef nonnull %12, ptr noundef %20, ptr noundef nonnull %17, ptr noundef %3, ptr noundef %22) #15
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %27, label %25

25:                                               ; preds = %19
  tail call void @kfree(ptr noundef nonnull %17) #15
  %26 = inttoptr i32 %23 to ptr
  br label %27

27:                                               ; preds = %25, %19, %14, %7
  %28 = phi ptr [ %26, %25 ], [ %17, %19 ], [ inttoptr (i32 -22 to ptr), %7 ], [ inttoptr (i32 -12 to ptr), %14 ]
  %29 = load ptr, ptr %5, align 4
  %30 = getelementptr inbounds %struct.nvmem_cell_entry, ptr %29, i32 0, i32 6
  %31 = load ptr, ptr %30, align 4
  %32 = getelementptr inbounds %struct.nvmem_cell, ptr %5, i32 0, i32 1
  %33 = load ptr, ptr %32, align 4
  %34 = icmp eq ptr %33, null
  br i1 %34, label %36, label %35

35:                                               ; preds = %27
  tail call void @kfree_const(ptr noundef nonnull %33) #15
  br label %36

36:                                               ; preds = %35, %27
  tail call void @kfree(ptr noundef %5) #15
  tail call fastcc void @__nvmem_device_put(ptr noundef %31) #15
  %37 = icmp ugt ptr %28, inttoptr (i32 -4096 to ptr)
  br i1 %37, label %49, label %38

38:                                               ; preds = %36
  %39 = icmp eq i32 %10, 0
  br i1 %39, label %40, label %42

40:                                               ; preds = %38
  %41 = load i32, ptr %3, align 4
  br label %45

42:                                               ; preds = %38
  %43 = add i32 %10, 7
  %44 = sdiv i32 %43, 8
  store i32 %44, ptr %3, align 4
  br label %45

45:                                               ; preds = %42, %40
  %46 = phi i32 [ %41, %40 ], [ %44, %42 ]
  %47 = icmp ugt i32 %46, %2
  br i1 %47, label %48, label %49

48:                                               ; preds = %45
  tail call void @kfree(ptr noundef %28) #15
  br label %49

49:                                               ; preds = %48, %45, %36, %4
  %50 = phi ptr [ inttoptr (i32 -34 to ptr), %48 ], [ %5, %4 ], [ %28, %36 ], [ %28, %45 ]
  ret ptr %50
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @nvmem_cell_read_variable_le_u64(ptr noundef %0, ptr noundef %1, ptr nocapture noundef %2) #0 {
  %4 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #15
  store i32 0, ptr %4, align 4, !annotation !10
  %5 = call fastcc ptr @nvmem_cell_read_variable_common(ptr noundef %0, ptr noundef %1, i32 noundef 8, ptr noundef nonnull %4)
  %6 = icmp ugt ptr %5, inttoptr (i32 -4096 to ptr)
  br i1 %6, label %7, label %9

7:                                                ; preds = %3
  %8 = ptrtoint ptr %5 to i32
  br label %25

9:                                                ; preds = %3
  store i64 0, ptr %2, align 8
  %10 = load i32, ptr %4, align 4
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %24, label %12

12:                                               ; preds = %12, %9
  %13 = phi i64 [ %21, %12 ], [ 0, %9 ]
  %14 = phi i32 [ %22, %12 ], [ 0, %9 ]
  %15 = getelementptr i8, ptr %5, i32 %14
  %16 = load i8, ptr %15, align 1
  %17 = zext i8 %16 to i64
  %18 = shl i32 %14, 3
  %19 = zext i32 %18 to i64
  %20 = shl i64 %17, %19
  %21 = or i64 %20, %13
  store i64 %21, ptr %2, align 8
  %22 = add nuw i32 %14, 1
  %23 = icmp eq i32 %22, %10
  br i1 %23, label %24, label %12

24:                                               ; preds = %12, %9
  call void @kfree(ptr noundef %5) #15
  br label %25

25:                                               ; preds = %24, %7
  %26 = phi i32 [ %8, %7 ], [ 0, %24 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #15
  ret i32 %26
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @nvmem_device_cell_read(ptr noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2) #0 {
  %4 = alloca %struct.nvmem_cell_entry, align 4
  %5 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %4) #15
  %6 = getelementptr inbounds i8, ptr %4, i32 20
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(36) %6, i8 0, i32 16, i1 false), !annotation !10
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #15
  store i32 0, ptr %5, align 4, !annotation !10
  %7 = icmp eq ptr %0, null
  br i1 %7, label %43, label %8

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.nvmem_cell_entry, ptr %4, i32 0, i32 6
  store ptr %0, ptr %9, align 4
  %10 = getelementptr inbounds %struct.nvmem_cell_info, ptr %1, i32 0, i32 1
  %11 = load i32, ptr %10, align 4
  %12 = getelementptr inbounds %struct.nvmem_cell_entry, ptr %4, i32 0, i32 1
  store i32 %11, ptr %12, align 4
  %13 = getelementptr inbounds %struct.nvmem_cell_info, ptr %1, i32 0, i32 2
  %14 = load i32, ptr %13, align 4
  %15 = getelementptr inbounds %struct.nvmem_cell_entry, ptr %4, i32 0, i32 2
  store i32 %14, ptr %15, align 4
  %16 = load ptr, ptr %1, align 4
  store ptr %16, ptr %4, align 4
  %17 = getelementptr inbounds %struct.nvmem_cell_info, ptr %1, i32 0, i32 3
  %18 = load i32, ptr %17, align 4
  %19 = getelementptr inbounds %struct.nvmem_cell_entry, ptr %4, i32 0, i32 3
  store i32 %18, ptr %19, align 4
  %20 = getelementptr inbounds %struct.nvmem_cell_info, ptr %1, i32 0, i32 4
  %21 = load i32, ptr %20, align 4
  %22 = getelementptr inbounds %struct.nvmem_cell_entry, ptr %4, i32 0, i32 4
  store i32 %21, ptr %22, align 4
  %23 = icmp eq i32 %21, 0
  br i1 %23, label %28, label %24

24:                                               ; preds = %8
  %25 = add i32 %18, 7
  %26 = add i32 %25, %21
  %27 = sdiv i32 %26, 8
  store i32 %27, ptr %15, align 4
  br label %28

28:                                               ; preds = %24, %8
  %29 = getelementptr inbounds %struct.nvmem_device, ptr %0, i32 0, i32 2
  %30 = load i32, ptr %29, align 8
  %31 = add i32 %30, -1
  %32 = and i32 %31, %11
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %38, label %34

34:                                               ; preds = %28
  %35 = getelementptr inbounds %struct.nvmem_device, ptr %0, i32 0, i32 1
  %36 = icmp eq ptr %16, null
  %37 = select i1 %36, ptr @.str.32, ptr %16
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %35, ptr noundef nonnull @.str.30, ptr noundef %37, i32 noundef %30) #17
  br label %43

38:                                               ; preds = %28
  %39 = call fastcc i32 @__nvmem_cell_read(ptr noundef nonnull %0, ptr noundef nonnull %4, ptr noundef %2, ptr noundef nonnull %5, ptr noundef null)
  %40 = icmp eq i32 %39, 0
  %41 = load i32, ptr %5, align 4
  %42 = select i1 %40, i32 %41, i32 %39
  br label %43

43:                                               ; preds = %38, %34, %3
  %44 = phi i32 [ -22, %3 ], [ -22, %34 ], [ %42, %38 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #15
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %4) #15
  ret i32 %44
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @nvmem_device_cell_write(ptr noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2) #0 {
  %4 = alloca %struct.nvmem_cell_entry, align 4
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %4) #15
  %5 = getelementptr inbounds i8, ptr %4, i32 20
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(36) %5, i8 0, i32 16, i1 false), !annotation !10
  %6 = icmp eq ptr %0, null
  br i1 %6, label %40, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.nvmem_cell_entry, ptr %4, i32 0, i32 6
  store ptr %0, ptr %8, align 4
  %9 = getelementptr inbounds %struct.nvmem_cell_info, ptr %1, i32 0, i32 1
  %10 = load i32, ptr %9, align 4
  %11 = getelementptr inbounds %struct.nvmem_cell_entry, ptr %4, i32 0, i32 1
  store i32 %10, ptr %11, align 4
  %12 = getelementptr inbounds %struct.nvmem_cell_info, ptr %1, i32 0, i32 2
  %13 = load i32, ptr %12, align 4
  %14 = getelementptr inbounds %struct.nvmem_cell_entry, ptr %4, i32 0, i32 2
  store i32 %13, ptr %14, align 4
  %15 = load ptr, ptr %1, align 4
  store ptr %15, ptr %4, align 4
  %16 = getelementptr inbounds %struct.nvmem_cell_info, ptr %1, i32 0, i32 3
  %17 = load i32, ptr %16, align 4
  %18 = getelementptr inbounds %struct.nvmem_cell_entry, ptr %4, i32 0, i32 3
  store i32 %17, ptr %18, align 4
  %19 = getelementptr inbounds %struct.nvmem_cell_info, ptr %1, i32 0, i32 4
  %20 = load i32, ptr %19, align 4
  %21 = getelementptr inbounds %struct.nvmem_cell_entry, ptr %4, i32 0, i32 4
  store i32 %20, ptr %21, align 4
  %22 = icmp eq i32 %20, 0
  br i1 %22, label %27, label %23

23:                                               ; preds = %7
  %24 = add i32 %17, 7
  %25 = add i32 %24, %20
  %26 = sdiv i32 %25, 8
  store i32 %26, ptr %14, align 4
  br label %27

27:                                               ; preds = %23, %7
  %28 = phi i32 [ %26, %23 ], [ %13, %7 ]
  %29 = getelementptr inbounds %struct.nvmem_device, ptr %0, i32 0, i32 2
  %30 = load i32, ptr %29, align 8
  %31 = add i32 %30, -1
  %32 = and i32 %31, %10
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %38, label %34

34:                                               ; preds = %27
  %35 = getelementptr inbounds %struct.nvmem_device, ptr %0, i32 0, i32 1
  %36 = icmp eq ptr %15, null
  %37 = select i1 %36, ptr @.str.32, ptr %15
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %35, ptr noundef nonnull @.str.30, ptr noundef %37, i32 noundef %30) #17
  br label %40

38:                                               ; preds = %27
  %39 = call fastcc i32 @__nvmem_cell_entry_write(ptr noundef nonnull %4, ptr noundef %2, i32 noundef %28)
  br label %40

40:                                               ; preds = %38, %34, %3
  %41 = phi i32 [ %39, %38 ], [ -22, %3 ], [ -22, %34 ]
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %4) #15
  ret i32 %41
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @nvmem_device_read(ptr noundef readonly %0, i32 noundef %1, i32 noundef %2, ptr noundef %3) #0 {
  %5 = icmp eq ptr %0, null
  br i1 %5, label %10, label %6

6:                                                ; preds = %4
  %7 = tail call fastcc i32 @nvmem_reg_read(ptr noundef nonnull %0, i32 noundef %1, ptr noundef %3, i32 noundef %2)
  %8 = icmp eq i32 %7, 0
  %9 = select i1 %8, i32 %2, i32 %7
  br label %10

10:                                               ; preds = %6, %4
  %11 = phi i32 [ -22, %4 ], [ %9, %6 ]
  ret i32 %11
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @nvmem_reg_read(ptr nocapture noundef readonly %0, i32 noundef %1, ptr noundef %2, i32 noundef %3) unnamed_addr #0 {
  %5 = getelementptr inbounds %struct.nvmem_device, ptr %0, i32 0, i32 15
  %6 = load i32, ptr %5, align 8
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %16

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.nvmem_device, ptr %0, i32 0, i32 16
  %10 = load ptr, ptr %9, align 4
  %11 = icmp eq ptr %10, null
  br i1 %11, label %82, label %12

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct.nvmem_device, ptr %0, i32 0, i32 20
  %14 = load ptr, ptr %13, align 4
  %15 = tail call i32 %10(ptr noundef %14, i32 noundef %1, ptr noundef %2, i32 noundef %3) #15
  br label %82

16:                                               ; preds = %4
  %17 = add i32 %3, %1
  %18 = getelementptr inbounds %struct.nvmem_device, ptr %0, i32 0, i32 14
  %19 = load ptr, ptr %18, align 4
  %20 = getelementptr %struct.nvmem_keepout, ptr %19, i32 %6
  %21 = icmp ult ptr %19, %20
  br i1 %21, label %22, label %30

22:                                               ; preds = %27, %16
  %23 = phi ptr [ %28, %27 ], [ %19, %16 ]
  %24 = getelementptr inbounds %struct.nvmem_keepout, ptr %23, i32 0, i32 1
  %25 = load i32, ptr %24, align 4
  %26 = icmp ugt i32 %25, %1
  br i1 %26, label %30, label %27

27:                                               ; preds = %22
  %28 = getelementptr %struct.nvmem_keepout, ptr %23, i32 1
  %29 = icmp ult ptr %28, %20
  br i1 %29, label %22, label %30

30:                                               ; preds = %27, %22, %16
  %31 = phi ptr [ %19, %16 ], [ %23, %22 ], [ %28, %27 ]
  %32 = icmp ugt i32 %17, %1
  %33 = icmp ult ptr %31, %20
  %34 = select i1 %32, i1 %33, i1 false
  br i1 %34, label %35, label %69

35:                                               ; preds = %30
  %36 = getelementptr inbounds %struct.nvmem_device, ptr %0, i32 0, i32 20
  %37 = getelementptr inbounds %struct.nvmem_device, ptr %0, i32 0, i32 16
  br label %38

38:                                               ; preds = %55, %35
  %39 = phi i32 [ %1, %35 ], [ %60, %55 ]
  %40 = phi ptr [ %2, %35 ], [ %64, %55 ]
  %41 = phi ptr [ %31, %35 ], [ %65, %55 ]
  %42 = load i32, ptr %41, align 4
  %43 = icmp ult i32 %39, %42
  br i1 %43, label %44, label %55

44:                                               ; preds = %38
  %45 = tail call i32 @llvm.umin.i32(i32 %17, i32 %42) #15
  %46 = sub i32 %45, %39
  %47 = load ptr, ptr %37, align 4
  %48 = icmp eq ptr %47, null
  br i1 %48, label %82, label %49

49:                                               ; preds = %44
  %50 = load ptr, ptr %36, align 4
  %51 = tail call i32 %47(ptr noundef %50, i32 noundef %39, ptr noundef %40, i32 noundef %46) #15
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %53, label %82

53:                                               ; preds = %49
  %54 = getelementptr i8, ptr %40, i32 %46
  br label %55

55:                                               ; preds = %53, %38
  %56 = phi ptr [ %54, %53 ], [ %40, %38 ]
  %57 = phi i32 [ %45, %53 ], [ %39, %38 ]
  %58 = getelementptr inbounds %struct.nvmem_keepout, ptr %41, i32 0, i32 1
  %59 = load i32, ptr %58, align 4
  %60 = tail call i32 @llvm.umin.i32(i32 %17, i32 %59) #15
  %61 = sub i32 %60, %57
  %62 = getelementptr inbounds %struct.nvmem_keepout, ptr %41, i32 0, i32 2
  %63 = load i8, ptr %62, align 4
  tail call void @llvm.memset.p0.i32(ptr align 1 %56, i8 %63, i32 %61, i1 false) #15
  %64 = getelementptr i8, ptr %56, i32 %61
  %65 = getelementptr %struct.nvmem_keepout, ptr %41, i32 1
  %66 = icmp ugt i32 %17, %59
  %67 = icmp ult ptr %65, %20
  %68 = select i1 %66, i1 %67, i1 false
  br i1 %68, label %38, label %69

69:                                               ; preds = %55, %30
  %70 = phi ptr [ %2, %30 ], [ %64, %55 ]
  %71 = phi i32 [ %1, %30 ], [ %60, %55 ]
  %72 = phi i1 [ %32, %30 ], [ %66, %55 ]
  br i1 %72, label %73, label %82

73:                                               ; preds = %69
  %74 = getelementptr inbounds %struct.nvmem_device, ptr %0, i32 0, i32 16
  %75 = load ptr, ptr %74, align 4
  %76 = icmp eq ptr %75, null
  br i1 %76, label %82, label %77

77:                                               ; preds = %73
  %78 = sub i32 %17, %71
  %79 = getelementptr inbounds %struct.nvmem_device, ptr %0, i32 0, i32 20
  %80 = load ptr, ptr %79, align 4
  %81 = tail call i32 %75(ptr noundef %80, i32 noundef %71, ptr noundef %70, i32 noundef %78) #15
  br label %82

82:                                               ; preds = %77, %73, %69, %49, %44, %12, %8
  %83 = phi i32 [ %15, %12 ], [ -22, %8 ], [ 0, %69 ], [ %81, %77 ], [ -22, %73 ], [ %51, %49 ], [ -22, %44 ]
  ret i32 %83
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @nvmem_device_write(ptr noundef readonly %0, i32 noundef %1, i32 noundef %2, ptr noundef %3) #0 {
  %5 = icmp eq ptr %0, null
  br i1 %5, label %28, label %6

6:                                                ; preds = %4
  %7 = getelementptr inbounds %struct.nvmem_device, ptr %0, i32 0, i32 15
  %8 = load i32, ptr %7, align 8
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %22

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.nvmem_device, ptr %0, i32 0, i32 17
  %12 = load ptr, ptr %11, align 8
  %13 = icmp eq ptr %12, null
  br i1 %13, label %28, label %14

14:                                               ; preds = %10
  %15 = getelementptr inbounds %struct.nvmem_device, ptr %0, i32 0, i32 19
  %16 = load ptr, ptr %15, align 8
  tail call void @gpiod_set_value_cansleep(ptr noundef %16, i32 noundef 0) #15
  %17 = load ptr, ptr %11, align 8
  %18 = getelementptr inbounds %struct.nvmem_device, ptr %0, i32 0, i32 20
  %19 = load ptr, ptr %18, align 4
  %20 = tail call i32 %17(ptr noundef %19, i32 noundef %1, ptr noundef %3, i32 noundef %2) #15
  %21 = load ptr, ptr %15, align 8
  tail call void @gpiod_set_value_cansleep(ptr noundef %21, i32 noundef 1) #15
  br label %24

22:                                               ; preds = %6
  %23 = tail call fastcc i32 @nvmem_access_with_keepouts(ptr noundef nonnull %0, i32 noundef %1, ptr noundef %3, i32 noundef %2, i32 noundef 1) #15
  br label %24

24:                                               ; preds = %22, %14
  %25 = phi i32 [ %23, %22 ], [ %20, %14 ]
  %26 = icmp eq i32 %25, 0
  %27 = select i1 %26, i32 %2, i32 %25
  br label %28

28:                                               ; preds = %24, %10, %4
  %29 = phi i32 [ -22, %4 ], [ -22, %10 ], [ %27, %24 ]
  ret i32 %29
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @nvmem_add_cell_table(ptr noundef %0) #0 {
  tail call void @mutex_lock(ptr noundef nonnull @nvmem_cell_mutex) #15
  %2 = getelementptr inbounds %struct.nvmem_cell_table, ptr %0, i32 0, i32 3
  %3 = load ptr, ptr getelementptr inbounds (%struct.list_head, ptr @nvmem_cell_tables, i32 0, i32 1), align 4
  store ptr %2, ptr getelementptr inbounds (%struct.list_head, ptr @nvmem_cell_tables, i32 0, i32 1), align 4
  store ptr @nvmem_cell_tables, ptr %2, align 4
  %4 = getelementptr inbounds %struct.nvmem_cell_table, ptr %0, i32 0, i32 3, i32 1
  store ptr %3, ptr %4, align 4
  store volatile ptr %2, ptr %3, align 4
  tail call void @mutex_unlock(ptr noundef nonnull @nvmem_cell_mutex) #15
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @nvmem_del_cell_table(ptr nocapture noundef %0) #0 {
  tail call void @mutex_lock(ptr noundef nonnull @nvmem_cell_mutex) #15
  %2 = getelementptr inbounds %struct.nvmem_cell_table, ptr %0, i32 0, i32 3
  %3 = getelementptr inbounds %struct.nvmem_cell_table, ptr %0, i32 0, i32 3, i32 1
  %4 = load ptr, ptr %3, align 4
  %5 = load ptr, ptr %2, align 4
  %6 = getelementptr inbounds %struct.list_head, ptr %5, i32 0, i32 1
  store ptr %4, ptr %6, align 4
  store volatile ptr %5, ptr %4, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %2, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %3, align 4
  tail call void @mutex_unlock(ptr noundef nonnull @nvmem_cell_mutex) #15
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @nvmem_add_cell_lookups(ptr noundef %0, i32 noundef %1) #0 {
  tail call void @mutex_lock(ptr noundef nonnull @nvmem_lookup_mutex) #15
  %3 = icmp eq i32 %1, 0
  br i1 %3, label %11, label %4

4:                                                ; preds = %4, %2
  %5 = phi i32 [ %9, %4 ], [ 0, %2 ]
  %6 = getelementptr %struct.nvmem_cell_lookup, ptr %0, i32 %5, i32 4
  %7 = load ptr, ptr getelementptr inbounds (%struct.list_head, ptr @nvmem_lookup_list, i32 0, i32 1), align 4
  store ptr %6, ptr getelementptr inbounds (%struct.list_head, ptr @nvmem_lookup_list, i32 0, i32 1), align 4
  store ptr @nvmem_lookup_list, ptr %6, align 4
  %8 = getelementptr %struct.nvmem_cell_lookup, ptr %0, i32 %5, i32 4, i32 1
  store ptr %7, ptr %8, align 4
  store volatile ptr %6, ptr %7, align 4
  %9 = add nuw i32 %5, 1
  %10 = icmp eq i32 %9, %1
  br i1 %10, label %11, label %4

11:                                               ; preds = %4, %2
  tail call void @mutex_unlock(ptr noundef nonnull @nvmem_lookup_mutex) #15
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @nvmem_del_cell_lookups(ptr nocapture noundef %0, i32 noundef %1) #0 {
  tail call void @mutex_lock(ptr noundef nonnull @nvmem_lookup_mutex) #15
  %3 = icmp eq i32 %1, 0
  br i1 %3, label %13, label %4

4:                                                ; preds = %4, %2
  %5 = phi i32 [ %11, %4 ], [ 0, %2 ]
  %6 = getelementptr %struct.nvmem_cell_lookup, ptr %0, i32 %5, i32 4
  %7 = getelementptr %struct.nvmem_cell_lookup, ptr %0, i32 %5, i32 4, i32 1
  %8 = load ptr, ptr %7, align 4
  %9 = load ptr, ptr %6, align 4
  %10 = getelementptr inbounds %struct.list_head, ptr %9, i32 0, i32 1
  store ptr %8, ptr %10, align 4
  store volatile ptr %9, ptr %8, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %6, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %7, align 4
  %11 = add nuw i32 %5, 1
  %12 = icmp eq i32 %11, %1
  br i1 %12, label %13, label %4

13:                                               ; preds = %4, %2
  tail call void @mutex_unlock(ptr noundef nonnull @nvmem_lookup_mutex) #15
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define dso_local ptr @nvmem_dev_name(ptr nocapture noundef readonly %0) #3 {
  %2 = getelementptr inbounds %struct.nvmem_device, ptr %0, i32 0, i32 1, i32 3
  %3 = load ptr, ptr %2, align 4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %5, label %8

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.nvmem_device, ptr %0, i32 0, i32 1
  %7 = load ptr, ptr %6, align 4
  br label %8

8:                                                ; preds = %5, %1
  %9 = phi ptr [ %7, %5 ], [ %3, %1 ]
  ret ptr %9
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal void @nvmem_exit() #5 section ".exit.text" {
  tail call void @bus_unregister(ptr noundef nonnull @nvmem_bus_type) #15
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @bus_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @nvmem_init() #5 section ".init.text" {
  %1 = tail call i32 @bus_register(ptr noundef nonnull @nvmem_bus_type) #15
  ret i32 %1
}

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ida_alloc_range(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @nvmem_release(ptr noundef %0) #0 {
  %2 = getelementptr i8, ptr %0, i32 -8
  %3 = getelementptr i8, ptr %0, i32 480
  %4 = load i32, ptr %3, align 8
  tail call void @ida_free(ptr noundef nonnull @nvmem_ida, i32 noundef %4) #15
  %5 = getelementptr i8, ptr %0, i32 568
  %6 = load ptr, ptr %5, align 8
  tail call void @gpiod_put(ptr noundef %6) #15
  tail call void @kfree(ptr noundef %2) #15
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @gpiod_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal zeroext i16 @nvmem_bin_attr_is_visible(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1, i32 noundef %2) #8 {
  %4 = getelementptr i8, ptr %0, i32 488
  %5 = load i32, ptr %4, align 8
  %6 = getelementptr inbounds %struct.bin_attribute, ptr %1, i32 0, i32 1
  store i32 %5, ptr %6, align 4
  %7 = getelementptr i8, ptr %0, i32 493
  %8 = load i8, ptr %7, align 1, !range !8
  %9 = icmp eq i8 %8, 0
  %10 = select i1 %9, i16 292, i16 256
  %11 = getelementptr i8, ptr %0, i32 492
  %12 = load i8, ptr %11, align 4, !range !8
  %13 = icmp eq i8 %12, 0
  %14 = or i16 %10, 128
  %15 = select i1 %13, i16 %14, i16 %10
  %16 = getelementptr i8, ptr %0, i32 560
  %17 = load ptr, ptr %16, align 8
  %18 = icmp eq ptr %17, null
  %19 = select i1 %18, i16 %10, i16 %15
  %20 = getelementptr i8, ptr %0, i32 556
  %21 = load ptr, ptr %20, align 4
  %22 = icmp eq ptr %21, null
  %23 = and i16 %19, 128
  %24 = select i1 %22, i16 %23, i16 %19
  ret i16 %24
}

; Function Attrs: nofree nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @type_show(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr nocapture noundef writeonly %2) #9 {
  %4 = getelementptr i8, ptr %0, i32 500
  %5 = load i32, ptr %4, align 4
  %6 = getelementptr [5 x ptr], ptr @nvmem_type_str, i32 0, i32 %5
  %7 = load ptr, ptr %6, align 4
  %8 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %2, ptr noundef nonnull @.str.13, ptr noundef %7)
  ret i32 %8
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #10

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @bin_attr_nvmem_read(ptr nocapture noundef readnone %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, ptr noundef %3, i64 noundef %4, i32 noundef %5) #0 {
  %7 = getelementptr inbounds %struct.bin_attribute, ptr %2, i32 0, i32 2
  %8 = load ptr, ptr %7, align 4
  %9 = icmp eq ptr %8, null
  %10 = select i1 %9, ptr %1, ptr %8
  %11 = getelementptr i8, ptr %10, i32 -8
  %12 = getelementptr i8, ptr %10, i32 488
  %13 = load i32, ptr %12, align 8
  %14 = zext i32 %13 to i64
  %15 = icmp sgt i64 %14, %4
  br i1 %15, label %16, label %43

16:                                               ; preds = %6
  %17 = getelementptr i8, ptr %10, i32 472
  %18 = load i32, ptr %17, align 8
  %19 = sext i32 %18 to i64
  %20 = add nsw i64 %19, -1
  %21 = and i64 %20, %4
  %22 = icmp eq i64 %21, 0
  br i1 %22, label %23, label %43

23:                                               ; preds = %16
  %24 = getelementptr i8, ptr %10, i32 476
  %25 = load i32, ptr %24, align 4
  %26 = icmp ugt i32 %25, %5
  br i1 %26, label %43, label %27

27:                                               ; preds = %23
  %28 = getelementptr i8, ptr %10, i32 556
  %29 = load ptr, ptr %28, align 4
  %30 = icmp eq ptr %29, null
  br i1 %30, label %43, label %31

31:                                               ; preds = %27
  %32 = zext i32 %5 to i64
  %33 = add i64 %32, %4
  %34 = icmp sgt i64 %33, %14
  %35 = trunc i64 %4 to i32
  %36 = sub i32 %13, %35
  %37 = select i1 %34, i32 %36, i32 %5
  %38 = sub i32 0, %25
  %39 = and i32 %37, %38
  %40 = tail call fastcc i32 @nvmem_reg_read(ptr noundef %11, i32 noundef %35, ptr noundef %3, i32 noundef %39)
  %41 = icmp eq i32 %40, 0
  %42 = select i1 %41, i32 %39, i32 %40
  br label %43

43:                                               ; preds = %31, %27, %23, %16, %6
  %44 = phi i32 [ 0, %6 ], [ -22, %16 ], [ -22, %23 ], [ -1, %27 ], [ %42, %31 ]
  ret i32 %44
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @bin_attr_nvmem_write(ptr nocapture noundef readnone %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, ptr noundef %3, i64 noundef %4, i32 noundef %5) #0 {
  %7 = getelementptr inbounds %struct.bin_attribute, ptr %2, i32 0, i32 2
  %8 = load ptr, ptr %7, align 4
  %9 = icmp eq ptr %8, null
  %10 = select i1 %9, ptr %1, ptr %8
  %11 = getelementptr i8, ptr %10, i32 -8
  %12 = getelementptr i8, ptr %10, i32 488
  %13 = load i32, ptr %12, align 8
  %14 = zext i32 %13 to i64
  %15 = icmp sgt i64 %14, %4
  br i1 %15, label %16, label %57

16:                                               ; preds = %6
  %17 = getelementptr i8, ptr %10, i32 472
  %18 = load i32, ptr %17, align 8
  %19 = sext i32 %18 to i64
  %20 = add nsw i64 %19, -1
  %21 = and i64 %20, %4
  %22 = icmp eq i64 %21, 0
  br i1 %22, label %23, label %57

23:                                               ; preds = %16
  %24 = getelementptr i8, ptr %10, i32 476
  %25 = load i32, ptr %24, align 4
  %26 = icmp ugt i32 %25, %5
  br i1 %26, label %57, label %27

27:                                               ; preds = %23
  %28 = zext i32 %5 to i64
  %29 = add i64 %28, %4
  %30 = icmp sgt i64 %29, %14
  %31 = trunc i64 %4 to i32
  %32 = sub i32 %13, %31
  %33 = select i1 %30, i32 %32, i32 %5
  %34 = sub i32 0, %25
  %35 = and i32 %33, %34
  %36 = getelementptr i8, ptr %10, i32 560
  %37 = load ptr, ptr %36, align 8
  %38 = icmp eq ptr %37, null
  br i1 %38, label %57, label %39

39:                                               ; preds = %27
  %40 = getelementptr i8, ptr %10, i32 552
  %41 = load i32, ptr %40, align 8
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %43, label %51

43:                                               ; preds = %39
  %44 = getelementptr i8, ptr %10, i32 568
  %45 = load ptr, ptr %44, align 8
  tail call void @gpiod_set_value_cansleep(ptr noundef %45, i32 noundef 0) #15
  %46 = load ptr, ptr %36, align 8
  %47 = getelementptr i8, ptr %10, i32 572
  %48 = load ptr, ptr %47, align 4
  %49 = tail call i32 %46(ptr noundef %48, i32 noundef %31, ptr noundef %3, i32 noundef %35) #15
  %50 = load ptr, ptr %44, align 8
  tail call void @gpiod_set_value_cansleep(ptr noundef %50, i32 noundef 1) #15
  br label %53

51:                                               ; preds = %39
  %52 = tail call fastcc i32 @nvmem_access_with_keepouts(ptr noundef %11, i32 noundef %31, ptr noundef %3, i32 noundef %35, i32 noundef 1) #15
  br label %53

53:                                               ; preds = %51, %43
  %54 = phi i32 [ %52, %51 ], [ %49, %43 ]
  %55 = icmp eq i32 %54, 0
  %56 = select i1 %55, i32 %35, i32 %54
  br label %57

57:                                               ; preds = %53, %27, %23, %16, %6
  %58 = phi i32 [ -27, %6 ], [ -22, %16 ], [ -22, %23 ], [ -1, %27 ], [ %56, %53 ]
  ret i32 %58
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #11

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #12

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_create_bin_file(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #13

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kstrdup_const(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #14

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_next_child(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @kasprintf(i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_node_get(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #13

; Function Attrs: null_pointer_is_valid
declare dso_local void @device_remove_bin_file(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @device_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__of_parse_phandle_with_args(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @bus_find_device(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @try_module_get(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @module_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @nvmem_access_with_keepouts(ptr nocapture noundef readonly %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef %4) unnamed_addr #0 {
  %6 = add i32 %3, %1
  %7 = getelementptr inbounds %struct.nvmem_device, ptr %0, i32 0, i32 14
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.nvmem_device, ptr %0, i32 0, i32 15
  %10 = load i32, ptr %9, align 8
  %11 = getelementptr %struct.nvmem_keepout, ptr %8, i32 %10
  %12 = icmp ult ptr %8, %11
  br i1 %12, label %13, label %21

13:                                               ; preds = %18, %5
  %14 = phi ptr [ %19, %18 ], [ %8, %5 ]
  %15 = getelementptr inbounds %struct.nvmem_keepout, ptr %14, i32 0, i32 1
  %16 = load i32, ptr %15, align 4
  %17 = icmp ugt i32 %16, %1
  br i1 %17, label %21, label %18

18:                                               ; preds = %13
  %19 = getelementptr %struct.nvmem_keepout, ptr %14, i32 1
  %20 = icmp ult ptr %19, %11
  br i1 %20, label %13, label %21

21:                                               ; preds = %18, %13, %5
  %22 = phi ptr [ %8, %5 ], [ %19, %18 ], [ %14, %13 ]
  %23 = icmp ugt i32 %6, %1
  %24 = icmp ult ptr %22, %11
  %25 = select i1 %23, i1 %24, i1 false
  br i1 %25, label %26, label %77

26:                                               ; preds = %21
  %27 = icmp eq i32 %4, 0
  %28 = getelementptr inbounds %struct.nvmem_device, ptr %0, i32 0, i32 17
  %29 = getelementptr inbounds %struct.nvmem_device, ptr %0, i32 0, i32 19
  %30 = getelementptr inbounds %struct.nvmem_device, ptr %0, i32 0, i32 20
  %31 = getelementptr inbounds %struct.nvmem_device, ptr %0, i32 0, i32 16
  br label %32

32:                                               ; preds = %71, %26
  %33 = phi i32 [ %1, %26 ], [ %66, %71 ]
  %34 = phi ptr [ %2, %26 ], [ %72, %71 ]
  %35 = phi ptr [ %22, %26 ], [ %73, %71 ]
  %36 = load i32, ptr %35, align 4
  %37 = icmp ult i32 %33, %36
  br i1 %37, label %38, label %61

38:                                               ; preds = %32
  %39 = tail call i32 @llvm.umin.i32(i32 %6, i32 %36)
  %40 = sub i32 %39, %33
  br i1 %27, label %50, label %41

41:                                               ; preds = %38
  %42 = load ptr, ptr %28, align 8
  %43 = icmp eq ptr %42, null
  br i1 %43, label %104, label %44

44:                                               ; preds = %41
  %45 = load ptr, ptr %29, align 8
  tail call void @gpiod_set_value_cansleep(ptr noundef %45, i32 noundef 0) #15
  %46 = load ptr, ptr %28, align 8
  %47 = load ptr, ptr %30, align 4
  %48 = tail call i32 %46(ptr noundef %47, i32 noundef %33, ptr noundef %34, i32 noundef %40) #15
  %49 = load ptr, ptr %29, align 8
  tail call void @gpiod_set_value_cansleep(ptr noundef %49, i32 noundef 1) #15
  br label %56

50:                                               ; preds = %38
  %51 = load ptr, ptr %31, align 4
  %52 = icmp eq ptr %51, null
  br i1 %52, label %104, label %53

53:                                               ; preds = %50
  %54 = load ptr, ptr %30, align 4
  %55 = tail call i32 %51(ptr noundef %54, i32 noundef %33, ptr noundef %34, i32 noundef %40) #15
  br label %56

56:                                               ; preds = %53, %44
  %57 = phi i32 [ %48, %44 ], [ %55, %53 ]
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %59, label %104

59:                                               ; preds = %56
  %60 = getelementptr i8, ptr %34, i32 %40
  br label %61

61:                                               ; preds = %59, %32
  %62 = phi ptr [ %60, %59 ], [ %34, %32 ]
  %63 = phi i32 [ %39, %59 ], [ %33, %32 ]
  %64 = getelementptr inbounds %struct.nvmem_keepout, ptr %35, i32 0, i32 1
  %65 = load i32, ptr %64, align 4
  %66 = tail call i32 @llvm.umin.i32(i32 %6, i32 %65)
  %67 = sub i32 %66, %63
  br i1 %27, label %68, label %71

68:                                               ; preds = %61
  %69 = getelementptr inbounds %struct.nvmem_keepout, ptr %35, i32 0, i32 2
  %70 = load i8, ptr %69, align 4
  tail call void @llvm.memset.p0.i32(ptr align 1 %62, i8 %70, i32 %67, i1 false)
  br label %71

71:                                               ; preds = %68, %61
  %72 = getelementptr i8, ptr %62, i32 %67
  %73 = getelementptr %struct.nvmem_keepout, ptr %35, i32 1
  %74 = icmp ugt i32 %6, %65
  %75 = icmp ult ptr %73, %11
  %76 = select i1 %74, i1 %75, i1 false
  br i1 %76, label %32, label %77

77:                                               ; preds = %71, %21
  %78 = phi ptr [ %2, %21 ], [ %72, %71 ]
  %79 = phi i32 [ %1, %21 ], [ %66, %71 ]
  %80 = phi i1 [ %23, %21 ], [ %74, %71 ]
  br i1 %80, label %81, label %104

81:                                               ; preds = %77
  %82 = sub i32 %6, %79
  %83 = icmp eq i32 %4, 0
  br i1 %83, label %96, label %84

84:                                               ; preds = %81
  %85 = getelementptr inbounds %struct.nvmem_device, ptr %0, i32 0, i32 17
  %86 = load ptr, ptr %85, align 8
  %87 = icmp eq ptr %86, null
  br i1 %87, label %104, label %88

88:                                               ; preds = %84
  %89 = getelementptr inbounds %struct.nvmem_device, ptr %0, i32 0, i32 19
  %90 = load ptr, ptr %89, align 8
  tail call void @gpiod_set_value_cansleep(ptr noundef %90, i32 noundef 0) #15
  %91 = load ptr, ptr %85, align 8
  %92 = getelementptr inbounds %struct.nvmem_device, ptr %0, i32 0, i32 20
  %93 = load ptr, ptr %92, align 4
  %94 = tail call i32 %91(ptr noundef %93, i32 noundef %79, ptr noundef %78, i32 noundef %82) #15
  %95 = load ptr, ptr %89, align 8
  tail call void @gpiod_set_value_cansleep(ptr noundef %95, i32 noundef 1) #15
  br label %104

96:                                               ; preds = %81
  %97 = getelementptr inbounds %struct.nvmem_device, ptr %0, i32 0, i32 16
  %98 = load ptr, ptr %97, align 4
  %99 = icmp eq ptr %98, null
  br i1 %99, label %104, label %100

100:                                              ; preds = %96
  %101 = getelementptr inbounds %struct.nvmem_device, ptr %0, i32 0, i32 20
  %102 = load ptr, ptr %101, align 4
  %103 = tail call i32 %98(ptr noundef %102, i32 noundef %79, ptr noundef %78, i32 noundef %82) #15
  br label %104

104:                                              ; preds = %100, %96, %88, %84, %77, %56, %50, %41
  %105 = phi i32 [ 0, %77 ], [ %94, %88 ], [ -22, %84 ], [ %103, %100 ], [ -22, %96 ], [ -22, %50 ], [ -22, %41 ], [ %57, %56 ]
  ret i32 %105
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @gpiod_set_value_cansleep(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bus_register(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #13

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { argmemonly nofree nounwind willreturn writeonly }
attributes #5 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { null_pointer_is_valid allocsize(0) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { nofree nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #10 = { nofree nounwind null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #11 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #12 = { argmemonly nofree nounwind willreturn }
attributes #13 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #14 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #15 = { nounwind }
attributes #16 = { nounwind allocsize(2) }
attributes #17 = { cold nounwind }
attributes #18 = { nounwind allocsize(0) }

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
!10 = !{!"auto-init"}
!11 = !{i64 2148283573}
!12 = !{i64 617065, i64 2148118631, i64 2148118657, i64 2148118704, i64 2148118726, i64 2148118754, i64 2148118774}
!13 = !{i64 2148185708, i64 2148185740, i64 2148185769, i64 2148185803, i64 2148185834, i64 2148185857}
!14 = !{!"branch_weights", i32 2000, i32 1}
!15 = !{i64 2149327921}
!16 = !{i64 2148183351, i64 2148183383, i64 2148183412, i64 2148183446, i64 2148183477, i64 2148183500}
